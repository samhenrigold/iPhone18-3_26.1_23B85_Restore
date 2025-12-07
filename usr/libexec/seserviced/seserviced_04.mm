uint64_t sub_1000796FC(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v63 = &v4[56 * v11];
    if (v10 >= 56 && v6 > v7)
    {
      v62 = v4;
      v54 = v7;
LABEL_23:
      v42 = v6 - 56;
      v25 = v5 - 56;
      v26 = v63;
      v43 = v6;
      do
      {
        v27 = *(v26 - 6);
        v26 -= 56;
        v60 = v25;
        v29 = *(v26 + 2);
        v28 = *(v26 + 3);
        v52 = (v25 + 56);
        v30 = *(v26 + 5);
        v58 = *(v26 + 4);
        v56 = *(v26 + 6);
        v31 = *(v6 - 6);
        v32 = *(v6 - 5);
        v44 = *(v6 - 3);
        v50 = *(v6 - 2);
        v46 = *(v6 - 4);
        v48 = *(v6 - 1);

        sub_100069E2C(v27, v29);
        sub_100069E2C(v28, v58);
        sub_100069E2C(v30, v56);

        sub_100069E2C(v31, v32);
        sub_100069E2C(v46, v44);
        sub_100069E2C(v50, v48);
        v33 = static UUID.< infix(_:_:)();

        sub_10006A178(v31, v32);
        sub_10006A178(v46, v44);
        sub_10006A178(v50, v48);

        sub_10006A178(v27, v29);
        sub_10006A178(v28, v58);
        sub_10006A178(v30, v56);
        if (v33)
        {
          v5 = v60;
          v4 = v62;
          if (v52 != v43)
          {
            v37 = *v42;
            v38 = *(v42 + 1);
            v39 = *(v42 + 2);
            *(v60 + 48) = *(v42 + 6);
            *(v60 + 16) = v38;
            *(v60 + 32) = v39;
            *v60 = v37;
          }

          if (v63 <= v62 || (v6 = v42, v42 <= v54))
          {
            v6 = v42;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        v4 = v62;
        if (v52 != v63)
        {
          v34 = *v26;
          v35 = *(v26 + 1);
          v36 = *(v26 + 2);
          *(v60 + 48) = *(v26 + 6);
          *(v60 + 16) = v35;
          *(v60 + 32) = v36;
          *v60 = v34;
        }

        v25 = v60 - 56;
        v63 = v26;
        v6 = v43;
      }

      while (v26 > v62);
      v63 = v26;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v63 = &v4[56 * v9];
    if (v8 >= 56 && v6 < v5)
    {
      v59 = v5;
      while (1)
      {
        v12 = *(v6 + 1);
        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        v53 = v7;
        v15 = *(v6 + 5);
        v57 = *(v6 + 4);
        v55 = *(v6 + 6);
        v16 = *(v4 + 1);
        v45 = *(v4 + 2);
        v47 = *(v4 + 4);
        v49 = *(v4 + 3);
        v51 = *(v4 + 5);
        v61 = v4;
        v17 = *(v4 + 6);

        sub_100069E2C(v12, v14);
        sub_100069E2C(v13, v57);
        sub_100069E2C(v15, v55);

        sub_100069E2C(v16, v45);
        sub_100069E2C(v49, v47);
        sub_100069E2C(v51, v17);
        v18 = static UUID.< infix(_:_:)();

        sub_10006A178(v16, v45);
        sub_10006A178(v49, v47);
        sub_10006A178(v51, v17);

        sub_10006A178(v12, v14);
        sub_10006A178(v13, v57);
        sub_10006A178(v15, v55);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v19 = v6;
        v20 = v53;
        v21 = v53 == v6;
        v6 += 56;
        if (!v21)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 = v20 + 56;
        if (v4 >= v63 || v6 >= v59)
        {
          goto LABEL_16;
        }
      }

      v19 = v4;
      v4 += 56;
      v20 = v53;
      if (v53 == v61)
      {
        goto LABEL_14;
      }

LABEL_13:
      v22 = *v19;
      v23 = *(v19 + 1);
      v24 = *(v19 + 2);
      *(v20 + 6) = *(v19 + 6);
      *(v20 + 1) = v23;
      *(v20 + 2) = v24;
      *v20 = v22;
      goto LABEL_14;
    }

LABEL_16:
    v6 = v7;
  }

LABEL_34:
  v40 = (v63 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[56 * v40])
  {
    memmove(v6, v4, 56 * v40);
  }

  return 1;
}

uint64_t sub_100079BEC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100079C78(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100079C8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_1005025F8, &qword_100409A20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_100079DB8()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100079E24()
{
  result = qword_1005025E8;
  if (!qword_1005025E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005025E8);
  }

  return result;
}

uint64_t sub_100079E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_DWORD *sub_100079E98()
{
  if (qword_100501A18 != -1)
  {
    swift_once();
  }

  sub_100074984(0xD000000000000019, 0x80000001004618E0);
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = v0;
  if (v0[2] != 4)
  {

LABEL_10:
    v30 = &type metadata for String;
    *&v29 = 0xD00000000000001DLL;
    *(&v29 + 1) = 0x80000001004619A0;
    goto LABEL_11;
  }

  sub_100068FC4(&unk_100507CD0, &unk_100414C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004099F0;
  *(inited + 32) = 811889762;
  *(inited + 40) = 0xE400000000000000;
  v3 = v1[4];
  v4 = v1[5];
  sub_100069E2C(v3, v4);
  *&v29 = sub_100288788(v3, v4);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v5 = BidirectionalCollection<>.joined(separator:)();
  v7 = v6;
  sub_10006A178(v3, v4);

  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 64) = 812802403;
  *(inited + 72) = 0xE400000000000000;
  if (v1[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v1[6];
  v10 = v1[7];
  sub_100069E2C(v9, v10);
  *&v29 = sub_100288788(v9, v10);
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;
  sub_10006A178(v9, v10);

  *(inited + 80) = v11;
  *(inited + 88) = v13;
  *(inited + 96) = 829579619;
  *(inited + 104) = 0xE400000000000000;
  if (v1[2] < 3uLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v1[8];
  v15 = v1[9];
  sub_100069E2C(v14, v15);
  *&v29 = sub_100288788(v14, v15);
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;
  sub_10006A178(v14, v15);

  *(inited + 112) = v16;
  *(inited + 120) = v18;
  *(inited + 128) = 846356835;
  *(inited + 136) = 0xE400000000000000;
  if (v1[2] >= 4uLL)
  {
    v19 = v1[10];
    v20 = v1[11];
    sub_100069E2C(v19, v20);

    sub_100288788(v19, v20);
    v21 = BidirectionalCollection<>.joined(separator:)();
    v23 = v22;
    sub_10006A178(v19, v20);

    *(inited + 144) = v21;
    *(inited + 152) = v23;
    v24 = sub_1000910F0(inited);
    swift_setDeallocating();
    sub_100068FC4(&unk_100504020, &qword_100409CC0);
    swift_arrayDestroy();
    v30 = sub_100068FC4(&qword_100502600, &unk_100417140);
    *&v29 = v24;
LABEL_11:
    sub_100075D50(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v28, 0xD000000000000012, 0x8000000100461980, isUniquelyReferenced_nonNull_native);
    sub_1001950D4(_swiftEmptyDictionarySingleton);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = sub_100015DA0("alishalpem.state", isa);

    return v27;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_10007A2D0()
{
  result = qword_100504780;
  if (!qword_100504780)
  {
    sub_1000692D8(&unk_100503E60, &qword_10040A3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504780);
  }

  return result;
}

void sub_10007A334(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10006928C();
  if (qword_100501D80 != -1)
  {
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  if ((v10 & 1) != 0 || v9 != 0x534F534543555245)
  {
    v8 = sub_1003AF3D8(a4);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    sub_10007A564(a4, 1, a1, a2, a3);
  }
}

uint64_t sub_10007A564(uint64_t *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v86 = xmmword_1004098D0;
  v9 = *(a5 + 16);
  if (v9)
  {
    v6 = (a5 + 32);
    v8 = &v80;
    v5 = &qword_100502608;
    do
    {
      v12 = *v6++;
      v11 = v12;
      if (v12 > 4)
      {
        if (v11 <= 6)
        {
          if (v11 == 5)
          {
            v7 = 160;
          }

          else
          {
            v7 = 164;
          }
        }

        else if (v11 == 7)
        {
          v7 = 165;
        }

        else if (v11 == 8)
        {
          v7 = 197;
        }

        else
        {
          v7 = 218;
        }
      }

      else if (v11 <= 1)
      {
        if (v11)
        {
          v7 = 132;
        }

        else
        {
          v7 = 79;
        }
      }

      else if (v11 == 2)
      {
        v7 = 196;
      }

      else
      {
        if (v11 != 3)
        {
          LOWORD(v80) = 28831;
          v84 = &type metadata for UnsafeRawBufferPointer;
          v85 = &protocol witness table for UnsafeRawBufferPointer;
          v82 = &v80;
          v83 = &v80 + 2;
          sub_1000752B0(&v82, &type metadata for UnsafeRawBufferPointer);
          Data._Representation.append(contentsOf:)();
          goto LABEL_4;
        }

        v7 = 204;
      }

      v10 = sub_100068FC4(&qword_100502608, &qword_100409A28);
      v84 = v10;
      v85 = sub_10007FBA8();
      LOBYTE(v82) = v7;
      LOBYTE(v80) = *sub_1000752B0(&v82, v10);
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_4:
      sub_1000752F4(&v82);
      --v9;
    }

    while (v9);
  }

  if (a4 >> 60 == 15)
  {
LABEL_25:
    i = 0;
    goto LABEL_26;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_38;
  }

  if (i)
  {
    goto LABEL_60;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_26:
      v14 = __OFADD__(i, 2);
      v15 = i + 2;
      if (v14)
      {
        goto LABEL_128;
      }

      v14 = __OFADD__(v15, 2);
      i = v15 + 2;
      if (v14)
      {
        goto LABEL_129;
      }

      v7 = *(&v86 + 1);
      v6 = v86;
      v5 = (*(&v86 + 1) >> 62);
      if ((*(&v86 + 1) >> 62) <= 1)
      {
        v8 = a1;
        if (!v5)
        {
          v16 = BYTE14(v86);
          break;
        }

        goto LABEL_42;
      }

      v8 = a1;
      if (v5 != 2)
      {
        v16 = 0;
        break;
      }

      v18 = *(v86 + 16);
      v17 = *(v86 + 24);
      v14 = __OFSUB__(v17, v18);
      v16 = v17 - v18;
      if (!v14)
      {
        break;
      }

      __break(1u);
LABEL_38:
      if (i != 2)
      {
        goto LABEL_25;
      }

      v20 = *(a3 + 16);
      v19 = *(a3 + 24);
      v14 = __OFSUB__(v19, v20);
      i = v19 - v20;
      if (v14)
      {
        __break(1u);
LABEL_42:
        LODWORD(v16) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_139;
        }

        v16 = v16;
        break;
      }
    }

    v21 = i + v16;
    if (__OFADD__(i, v16))
    {
      goto LABEL_130;
    }

    if (__OFADD__(v21, 9))
    {
      goto LABEL_131;
    }

    v80 = sub_1001303A8(v21 + 9);
    v81 = v22;
    v77 = -20608;
    if (a2)
    {
      v23 = 64;
    }

    else
    {
      v23 = 16;
    }

    v78 = v23;
    v79 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_132;
    }

    if (v21 >> 16)
    {
      goto LABEL_133;
    }

    v75 = bswap32(v21) >> 16;
    v84 = &type metadata for UnsafeRawBufferPointer;
    v85 = &protocol witness table for UnsafeRawBufferPointer;
    v82 = &v75;
    v83 = v76;
    sub_1000752B0(&v82, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v82);
    v24 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v84 = v24;
    v25 = sub_10007FBA8();
    v85 = v25;
    LOBYTE(v82) = 79;
    LOBYTE(v75) = *sub_1000752B0(&v82, v24);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v82);
    if (a4 >> 60 == 15)
    {
      goto LABEL_67;
    }

    v26 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      break;
    }

    if (v26 != 2)
    {
      LOBYTE(v27) = 0;
      goto LABEL_69;
    }

    v29 = *(a3 + 16);
    v28 = *(a3 + 24);
    v27 = v28 - v29;
    if (!__OFSUB__(v28, v29))
    {
      goto LABEL_64;
    }

    __break(1u);
LABEL_60:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_141;
    }
  }

  if (!v26)
  {
    v27 = HIWORD(a4);
    goto LABEL_69;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_142;
  }

  v27 = HIDWORD(a3) - a3;
LABEL_64:
  sub_100069E2C(a3, a4);
  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v27 <= 0xFF)
  {
LABEL_69:
    v84 = v24;
    v85 = v25;
    LOBYTE(v82) = v27;
    LOBYTE(v75) = *sub_1000752B0(&v82, v24);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v82);
    Data.append(_:)();
    sub_10006A2D0(a3, a4);
    goto LABEL_70;
  }

  __break(1u);
LABEL_67:
  v84 = v24;
  v85 = v25;
  LOBYTE(v82) = 0;
  LOBYTE(v75) = *sub_1000752B0(&v82, v24);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v82);
LABEL_70:
  v84 = v24;
  v85 = v25;
  LOBYTE(v82) = 92;
  LOBYTE(v75) = *sub_1000752B0(&v82, v24);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v82);
  if (v5 <= 1)
  {
    if (!v5)
    {
      v30 = HIWORD(v7);
      goto LABEL_83;
    }

LABEL_77:
    LODWORD(v30) = HIDWORD(v6) - v6;
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      v30 = v30;
      goto LABEL_79;
    }

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
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
  }

  if (v5 != 2)
  {
LABEL_82:
    LOBYTE(v30) = 0;
    goto LABEL_83;
  }

  v32 = *(v6 + 2);
  v31 = *(v6 + 3);
  v14 = __OFSUB__(v31, v32);
  v30 = v31 - v32;
  if (v14)
  {
    __break(1u);
    goto LABEL_77;
  }

LABEL_79:
  if ((v30 & 0x8000000000000000) != 0)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v30 > 0xFF)
  {
    __break(1u);
    goto LABEL_82;
  }

LABEL_83:
  v84 = v24;
  v85 = v25;
  LOBYTE(v82) = v30;
  LOBYTE(v75) = *sub_1000752B0(&v82, v24);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v82);
  Data.append(_:)();
  v75 = 0;
  v84 = &type metadata for UnsafeRawBufferPointer;
  v85 = &protocol witness table for UnsafeRawBufferPointer;
  v82 = &v75;
  v83 = v76;
  sub_1000752B0(&v82, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v82);
  v33 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v34 >> 60 == 15)
  {
    goto LABEL_146;
  }

  v35 = v33;
  v36 = v34;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v35, v36);
  v38 = sub_1003AF1FC(v8, isa);

  if (v38)
  {
    swift_willThrow();
    sub_10006A178(v80, v81);
    return sub_10006A178(v6, v7);
  }

  v71 = v7;
  v73 = v6;
  v39 = [objc_allocWithZone(RAPDU) init];
  v41 = v80;
  v40 = v81;
  while (2)
  {
    v44 = v39;
    v45 = Data._bridgeToObjectiveC()().super.isa;
    v82 = 0;
    v39 = sub_1003AEB5C(v8, v45, &v82);

    v46 = v82;
    if (!v39)
    {
      v67 = v46;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10006A178(v41, v40);
      v7 = v71;
      v6 = v73;
      return sub_10006A178(v6, v7);
    }

    v47 = sub_1003B0934(v39);
    v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    sub_10006A178(v48, v50);
    v51 = v40 >> 62;
    if ((v40 >> 62) > 1)
    {
      if (v51 != 2)
      {
        goto LABEL_143;
      }

      v53 = v40 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10006A178(v41, v40);
      sub_10006A178(0, 0xC000000000000000);
      if (*(v41 + 16) > 3)
      {
        goto LABEL_123;
      }

      if (*(v41 + 24) < 4)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = *(v41 + 16);
        v55 = *(v41 + 24);
        if (__DataStorage._bytes.getter())
        {
          if (__OFSUB__(v54, __DataStorage._offset.getter()))
          {
            goto LABEL_137;
          }

          if (__OFSUB__(v55, v54))
          {
            goto LABEL_135;
          }
        }

        else if (__OFSUB__(v55, v54))
        {
          goto LABEL_135;
        }

        type metadata accessor for __DataStorage();
        swift_allocObject();
        v60 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v53 = v60;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = *(v41 + 16);
        v62 = *(v41 + 24);
        type metadata accessor for Data.RangeReference();
        v63 = swift_allocObject();
        *(v63 + 16) = v61;
        *(v63 + 24) = v62;

        v41 = v63;
      }

      __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
      v64 = __DataStorage._bytes.getter();
      if (!v64)
      {
        goto LABEL_145;
      }

      v65 = v64;
      v66 = __DataStorage._offset.getter();
      if (__OFSUB__(3, v66))
      {
        goto LABEL_127;
      }

      *(v65 + 3 - v66) = 3;
      v40 = v53 | 0x8000000000000000;
      goto LABEL_89;
    }

    if (!v51)
    {
      sub_10006A178(v41, v40);
      v42 = BYTE6(v40);
      if (BYTE6(v40) >= 4uLL)
      {
        v41 = v41 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v43 = v38 & 0xF00000000000000 | v40 & 0xFFFFFFFFFFFFLL;
        v40 = v43 | (BYTE6(v40) << 48);
        v38 = v43 | (v42 << 48);
        goto LABEL_89;
      }

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
      goto LABEL_134;
    }

    v52 = v40 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10006A178(v41, v40);
    sub_10006A178(0, 0xC000000000000000);
    if (v41 >> 32 < 4 || v41 > 3)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(v41, __DataStorage._offset.getter()))
      {
        goto LABEL_136;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v56 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v52 = v56;
    }

    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
    v57 = __DataStorage._bytes.getter();
    if (!v57)
    {
      goto LABEL_144;
    }

    v58 = v57;
    v59 = __DataStorage._offset.getter();
    if (__OFSUB__(3, v59))
    {
      goto LABEL_126;
    }

    *(v58 + 3 - v59) = 3;
    v40 = v52 | 0x4000000000000000;
LABEL_89:
    v8 = a1;
    if (sub_1003B0984(v39) == 25360)
    {
      continue;
    }

    break;
  }

  sub_10006A178(v41, v40);
  return sub_10006A178(v73, v71);
}

uint64_t sub_10007B128(void *a1, char a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v110 = xmmword_1004098D0;
  v9 = *(a5 + 16);
  if (v9)
  {
    v7 = (a5 + 32);
    v6 = &qword_100502608;
    do
    {
      v12 = *v7++;
      v11 = v12;
      if (v12 > 4)
      {
        if (v11 <= 6)
        {
          if (v11 == 5)
          {
            v13 = -96;
          }

          else
          {
            v13 = -92;
          }
        }

        else if (v11 == 7)
        {
          v13 = -91;
        }

        else if (v11 == 8)
        {
          v13 = -59;
        }

        else
        {
          v13 = -38;
        }
      }

      else if (v11 <= 1)
      {
        if (v11)
        {
          v13 = -124;
        }

        else
        {
          v13 = 79;
        }
      }

      else if (v11 == 2)
      {
        v13 = -60;
      }

      else
      {
        if (v11 != 3)
        {
          LOWORD(v104) = 28831;
          v108 = &type metadata for UnsafeRawBufferPointer;
          v109 = &protocol witness table for UnsafeRawBufferPointer;
          v106 = &v104;
          v107 = &v104 + 2;
          sub_1000752B0(&v106, &type metadata for UnsafeRawBufferPointer);
          Data._Representation.append(contentsOf:)();
          goto LABEL_4;
        }

        v13 = -52;
      }

      v10 = sub_100068FC4(&qword_100502608, &qword_100409A28);
      v108 = v10;
      v109 = sub_10007FBA8();
      LOBYTE(v106) = v13;
      LOBYTE(v104) = *sub_1000752B0(&v106, v10);
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_4:
      sub_1000752F4(&v106);
      --v9;
    }

    while (v9);
  }

  v14 = a4 >> 60;
  if (a4 >> 60 == 15)
  {
LABEL_25:
    i = 0;
    goto LABEL_26;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_38;
  }

  if (i)
  {
    goto LABEL_60;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_26:
      v16 = __OFADD__(i, 2);
      v17 = i + 2;
      if (v16)
      {
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      v16 = __OFADD__(v17, 2);
      i = v17 + 2;
      if (v16)
      {
        goto LABEL_142;
      }

      v93 = *(&v110 + 1);
      v7 = v110;
      v6 = (*(&v110 + 1) >> 62);
      if ((*(&v110 + 1) >> 62) <= 1)
      {
        if (!v6)
        {
          v18 = BYTE14(v110);
          break;
        }

        goto LABEL_42;
      }

      if (v6 != 2)
      {
        v18 = 0;
        break;
      }

      v20 = *(v110 + 16);
      v19 = *(v110 + 24);
      v16 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v16)
      {
        break;
      }

      __break(1u);
LABEL_38:
      if (i != 2)
      {
        goto LABEL_25;
      }

      v22 = *(a3 + 16);
      v21 = *(a3 + 24);
      v16 = __OFSUB__(v21, v22);
      i = v21 - v22;
      if (v16)
      {
        __break(1u);
LABEL_42:
        LODWORD(v18) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_156;
        }

        v18 = v18;
        break;
      }
    }

    v23 = i + v18;
    if (__OFADD__(i, v18))
    {
      goto LABEL_143;
    }

    if (__OFADD__(v23, 9))
    {
      goto LABEL_144;
    }

    v104 = sub_1001303A8(v23 + 9);
    v105 = v24;
    v101 = -20608;
    if (a2)
    {
      v25 = 64;
    }

    else
    {
      v25 = 16;
    }

    v102 = v25;
    v103 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_145;
    }

    if (v23 >> 16)
    {
      goto LABEL_146;
    }

    v99 = bswap32(v23) >> 16;
    v108 = &type metadata for UnsafeRawBufferPointer;
    v109 = &protocol witness table for UnsafeRawBufferPointer;
    v106 = &v99;
    v107 = v100;
    sub_1000752B0(&v106, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v106);
    v26 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v108 = v26;
    v27 = sub_10007FBA8();
    v109 = v27;
    LOBYTE(v106) = 79;
    LOBYTE(v99) = *sub_1000752B0(&v106, v26);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v106);
    if (v14 > 0xE)
    {
      goto LABEL_67;
    }

    v28 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      break;
    }

    v14 = a3;
    if (v28 != 2)
    {
      LOBYTE(v29) = 0;
      goto LABEL_69;
    }

    v31 = *(a3 + 16);
    v30 = *(a3 + 24);
    v29 = v30 - v31;
    if (!__OFSUB__(v30, v31))
    {
      goto LABEL_64;
    }

    __break(1u);
LABEL_60:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_160;
    }
  }

  v14 = a3;
  if (!v28)
  {
    v29 = HIWORD(a4);
    goto LABEL_69;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_161;
  }

  v29 = HIDWORD(a3) - a3;
LABEL_64:
  sub_100069E2C(v14, a4);
  if ((v29 & 0x8000000000000000) != 0)
  {
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v29 <= 0xFF)
  {
LABEL_69:
    v108 = v26;
    v109 = v27;
    LOBYTE(v106) = v29;
    LOBYTE(v99) = *sub_1000752B0(&v106, v26);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v106);
    Data.append(_:)();
    sub_10006A2D0(v14, a4);
    goto LABEL_70;
  }

  __break(1u);
LABEL_67:
  v108 = v26;
  v109 = v27;
  LOBYTE(v106) = 0;
  LOBYTE(v99) = *sub_1000752B0(&v106, v26);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v106);
LABEL_70:
  v108 = v26;
  v109 = v27;
  LOBYTE(v106) = 92;
  LOBYTE(v99) = *sub_1000752B0(&v106, v26);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v106);
  if (v6 <= 1)
  {
    if (!v6)
    {
      v32 = HIWORD(v93);
      goto LABEL_83;
    }

LABEL_77:
    LODWORD(v32) = HIDWORD(v7) - v7;
    if (!__OFSUB__(HIDWORD(v7), v7))
    {
      v32 = v32;
      goto LABEL_79;
    }

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
  }

  if (v6 != 2)
  {
LABEL_82:
    LOBYTE(v32) = 0;
    goto LABEL_83;
  }

  v34 = *(v7 + 2);
  v33 = *(v7 + 3);
  v16 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v16)
  {
    __break(1u);
    goto LABEL_77;
  }

LABEL_79:
  if ((v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_147;
  }

  if (v32 > 0xFF)
  {
    __break(1u);
    goto LABEL_82;
  }

LABEL_83:
  v108 = v26;
  v109 = v27;
  LOBYTE(v106) = v32;
  LOBYTE(v99) = *sub_1000752B0(&v106, v26);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v106);
  Data.append(_:)();
  v99 = 0;
  v108 = &type metadata for UnsafeRawBufferPointer;
  v109 = &protocol witness table for UnsafeRawBufferPointer;
  v106 = &v99;
  v107 = v100;
  sub_1000752B0(&v106, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v106);
  v35 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v36 >> 60 == 15)
  {
    goto LABEL_162;
  }

  v37 = v35;
  v38 = v36;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v37, v38);
  v40 = a1;
  v41 = sub_1003AF1FC(a1, isa);

  if (!v41)
  {
    v90 = v7;
    v42 = [objc_allocWithZone(RAPDU) init];
    v43 = v104;
    v97 = v105;
    while (1)
    {
      v45 = Data._bridgeToObjectiveC()().super.isa;
      v106 = 0;
      v46 = sub_1003AEB5C(v40, v45, &v106);

      v47 = v106;
      if (!v46)
      {
        v81 = v47;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10006A178(v43, v97);
        v7 = v90;
        return sub_10006A178(v7, v93);
      }

      v48 = sub_1003B0934(v46);
      v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v106 = v49;
      v107 = v51;
      sub_100069E2C(v49, v51);
      sub_1001AD294(&v106, 0);
      if (v95)
      {
        v104 = v43;
        v105 = v97;
        v82 = v106;
        v83 = v107;
        goto LABEL_139;
      }

      v55 = v52;
      v56 = v53;
      v57 = v54;
      sub_10006A178(v106, v107);
      if (v55 != 227)
      {
        v84 = 0;
        v104 = v43;
        v105 = v97;
        v85 = v51 >> 62;
        if ((v51 >> 62) > 1)
        {
          if (v85 == 2)
          {
            v84 = v49[2];
          }
        }

        else if (v85)
        {
          v84 = v49;
        }

        sub_10007FC0C();
        swift_allocError();
        *v88 = v55;
        *(v88 + 8) = 227;
        *(v88 + 16) = v84;
        *(v88 + 24) = 0;
        swift_willThrow();
LABEL_138:
        v82 = v56;
        v83 = v57;
LABEL_139:
        sub_10006A178(v82, v83);
        sub_10006A178(v49, v51);

        sub_10006A178(v104, v105);
        v93 = *(&v110 + 1);
        v7 = v110;
        return sub_10006A178(v7, v93);
      }

      v106 = v56;
      v107 = v57;
      sub_100069E2C(v56, v57);
      sub_1001AD294(&v106, 0);
      v95 = 0;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      sub_10006A178(v106, v107);
      if (v59 != 218)
      {
        v86 = 0;
        v104 = v43;
        v105 = v97;
        v87 = v57 >> 62;
        if ((v57 >> 62) > 1)
        {
          if (v87 == 2)
          {
            v86 = v56[2];
          }
        }

        else if (v87)
        {
          v86 = v56;
        }

        v98 = v86;
        sub_10007FC0C();
        swift_allocError();
        *v89 = v59;
        *(v89 + 8) = 218;
        *(v89 + 16) = v98;
        *(v89 + 24) = 0;
        swift_willThrow();
        sub_10006A178(v61, v63);
        goto LABEL_138;
      }

      sub_10006A178(v56, v57);
      v64 = *a6;
      v65 = a6[1];
      *a6 = v61;
      a6[1] = v63;
      sub_10006A2D0(v64, v65);
      result = sub_10006A178(v49, v51);
      v67 = v97 >> 62;
      if ((v97 >> 62) > 1)
      {
        if (v67 != 2)
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          return result;
        }

        v42 = v46;
        v68 = v97 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v43, v97);
        sub_10006A178(0, 0xC000000000000000);
        if (*(v43 + 16) > 3)
        {
          goto LABEL_149;
        }

        if (*(v43 + 24) < 4)
        {
          goto LABEL_151;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = *(v43 + 16);
          v70 = *(v43 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v69, __DataStorage._offset.getter()))
            {
              goto LABEL_159;
            }

            if (__OFSUB__(v70, v69))
            {
              goto LABEL_155;
            }
          }

          else if (__OFSUB__(v70, v69))
          {
            goto LABEL_155;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v75 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v68 = v75;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = *(v43 + 16);
          v77 = *(v43 + 24);
          type metadata accessor for Data.RangeReference();
          v78 = swift_allocObject();
          *(v78 + 16) = v76;
          *(v78 + 24) = v77;

          v43 = v78;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        result = __DataStorage._bytes.getter();
        if (!result)
        {
          goto LABEL_165;
        }

        v79 = result;
        v80 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v80))
        {
          goto LABEL_153;
        }

        *(v79 + 3 - v80) = 3;
        v44 = v68 | 0x8000000000000000;
      }

      else
      {
        v42 = v46;
        if (!v67)
        {
          sub_10006A178(v43, v97);
          v40 = a1;
          if (BYTE6(v97) < 4uLL)
          {
            goto LABEL_148;
          }

          v43 = v43 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
          v97 = a3 & 0xF00000000000000 | v97 & 0xFFFFFFFFFFFFLL | (BYTE6(v97) << 48);
          a3 = v97;
          goto LABEL_88;
        }

        v71 = v97 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v43, v97);
        sub_10006A178(0, 0xC000000000000000);
        if (v43 >> 32 < 4 || v43 > 3)
        {
          goto LABEL_150;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v43, __DataStorage._offset.getter()))
          {
            goto LABEL_158;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v72 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v71 = v72;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        result = __DataStorage._bytes.getter();
        if (!result)
        {
          goto LABEL_164;
        }

        v73 = result;
        v74 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v74))
        {
          goto LABEL_152;
        }

        *(v73 + 3 - v74) = 3;
        v44 = v71 | 0x4000000000000000;
      }

      v97 = v44;
      v40 = a1;
LABEL_88:
      if (sub_1003B0984(v42) != 25360)
      {

        sub_10006A178(v43, v97);
        return sub_10006A178(v90, v93);
      }
    }
  }

  swift_willThrow();
  sub_10006A178(v104, v105);
  return sub_10006A178(v7, v93);
}

uint64_t sub_10007BF2C(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v86 = xmmword_1004098D0;
  v8 = *(a5 + 16);
  if (v8)
  {
    v5 = (a5 + 32);
    do
    {
      v11 = *v5++;
      v10 = v11;
      if (v11 > 4)
      {
        if (v10 <= 6)
        {
          if (v10 == 5)
          {
            v6 = 160;
          }

          else
          {
            v6 = 164;
          }
        }

        else if (v10 == 7)
        {
          v6 = 165;
        }

        else if (v10 == 8)
        {
          v6 = 197;
        }

        else
        {
          v6 = 218;
        }
      }

      else if (v10 <= 1)
      {
        if (v10)
        {
          v6 = 132;
        }

        else
        {
          v6 = 79;
        }
      }

      else if (v10 == 2)
      {
        v6 = 196;
      }

      else
      {
        if (v10 != 3)
        {
          LOWORD(v80) = 28831;
          v84 = &type metadata for UnsafeRawBufferPointer;
          v85 = &protocol witness table for UnsafeRawBufferPointer;
          v82 = &v80;
          v83 = &v80 + 2;
          sub_1000752B0(&v82, &type metadata for UnsafeRawBufferPointer);
          Data._Representation.append(contentsOf:)();
          goto LABEL_4;
        }

        v6 = 204;
      }

      v9 = sub_100068FC4(&qword_100502608, &qword_100409A28);
      v84 = v9;
      v85 = sub_10007FBA8();
      LOBYTE(v82) = v6;
      LOBYTE(v80) = *sub_1000752B0(&v82, v9);
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_4:
      sub_1000752F4(&v82);
      --v8;
    }

    while (v8);
  }

  v12 = a4;
  v13 = a4 >> 60;
  if (a4 >> 60 == 15)
  {
LABEL_25:
    i = 0;
    goto LABEL_26;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_38;
  }

  if (i)
  {
    goto LABEL_60;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_26:
      v15 = __OFADD__(i, 2);
      v16 = i + 2;
      if (v15)
      {
        goto LABEL_128;
      }

      v15 = __OFADD__(v16, 2);
      i = v16 + 2;
      if (v15)
      {
        goto LABEL_129;
      }

      a4 = *(&v86 + 1);
      v6 = v86;
      v5 = (*(&v86 + 1) >> 62);
      if ((*(&v86 + 1) >> 62) <= 1)
      {
        if (!v5)
        {
          v17 = BYTE14(v86);
          break;
        }

        goto LABEL_42;
      }

      if (v5 != 2)
      {
        v17 = 0;
        break;
      }

      v19 = *(v86 + 16);
      v18 = *(v86 + 24);
      v15 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (!v15)
      {
        break;
      }

      __break(1u);
LABEL_38:
      if (i != 2)
      {
        goto LABEL_25;
      }

      v21 = *(a3 + 16);
      v20 = *(a3 + 24);
      v15 = __OFSUB__(v20, v21);
      i = v20 - v21;
      if (v15)
      {
        __break(1u);
LABEL_42:
        LODWORD(v17) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_139;
        }

        v17 = v17;
        break;
      }
    }

    v22 = i + v17;
    if (__OFADD__(i, v17))
    {
      goto LABEL_130;
    }

    if (__OFADD__(v22, 9))
    {
      goto LABEL_131;
    }

    v80 = sub_1001303A8(v22 + 9);
    v81 = v23;
    v77 = -20608;
    if (a2)
    {
      v24 = 64;
    }

    else
    {
      v24 = 16;
    }

    v78 = v24;
    v79 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_132;
    }

    if (v22 >> 16)
    {
      goto LABEL_133;
    }

    v75 = bswap32(v22) >> 16;
    v84 = &type metadata for UnsafeRawBufferPointer;
    v85 = &protocol witness table for UnsafeRawBufferPointer;
    v82 = &v75;
    v83 = v76;
    sub_1000752B0(&v82, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v82);
    v25 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v84 = v25;
    v26 = sub_10007FBA8();
    v85 = v26;
    LOBYTE(v82) = 79;
    LOBYTE(v75) = *sub_1000752B0(&v82, v25);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v82);
    if (v13 > 0xE)
    {
      goto LABEL_67;
    }

    v27 = v12 >> 62;
    if ((v12 >> 62) <= 1)
    {
      break;
    }

    if (v27 != 2)
    {
      LOBYTE(v28) = 0;
      goto LABEL_69;
    }

    v30 = *(a3 + 16);
    v29 = *(a3 + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
      goto LABEL_64;
    }

    __break(1u);
LABEL_60:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_141;
    }
  }

  if (!v27)
  {
    v28 = HIWORD(v12);
    goto LABEL_69;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_142;
  }

  v28 = HIDWORD(a3) - a3;
LABEL_64:
  sub_100069E2C(a3, v12);
  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v28 <= 0xFF)
  {
LABEL_69:
    v84 = v25;
    v85 = v26;
    LOBYTE(v82) = v28;
    LOBYTE(v75) = *sub_1000752B0(&v82, v25);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v82);
    Data.append(_:)();
    sub_10006A2D0(a3, v12);
    goto LABEL_70;
  }

  __break(1u);
LABEL_67:
  v84 = v25;
  v85 = v26;
  LOBYTE(v82) = 0;
  LOBYTE(v75) = *sub_1000752B0(&v82, v25);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v82);
LABEL_70:
  v84 = v25;
  v85 = v26;
  LOBYTE(v82) = 92;
  LOBYTE(v75) = *sub_1000752B0(&v82, v25);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v82);
  if (v5 <= 1)
  {
    if (!v5)
    {
      v31 = HIWORD(a4);
      goto LABEL_83;
    }

LABEL_77:
    LODWORD(v31) = HIDWORD(v6) - v6;
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      v31 = v31;
      goto LABEL_79;
    }

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
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
  }

  if (v5 != 2)
  {
LABEL_82:
    LOBYTE(v31) = 0;
    goto LABEL_83;
  }

  v33 = *(v6 + 16);
  v32 = *(v6 + 24);
  v15 = __OFSUB__(v32, v33);
  v31 = v32 - v33;
  if (v15)
  {
    __break(1u);
    goto LABEL_77;
  }

LABEL_79:
  if ((v31 & 0x8000000000000000) != 0)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v31 > 0xFF)
  {
    __break(1u);
    goto LABEL_82;
  }

LABEL_83:
  v84 = v25;
  v85 = v26;
  LOBYTE(v82) = v31;
  LOBYTE(v75) = *sub_1000752B0(&v82, v25);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v82);
  Data.append(_:)();
  v75 = 0;
  v84 = &type metadata for UnsafeRawBufferPointer;
  v85 = &protocol witness table for UnsafeRawBufferPointer;
  v82 = &v75;
  v83 = v76;
  sub_1000752B0(&v82, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v82);
  v34 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v35 >> 60 == 15)
  {
    goto LABEL_146;
  }

  v36 = v34;
  v37 = v35;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v36, v37);
  v39 = a1;
  v40 = sub_1003AF1FC(a1, isa);

  if (v40)
  {
    swift_willThrow();
    sub_10006A178(v80, v81);
    return sub_10006A178(v6, a4);
  }

  v73 = v6;
  v41 = [objc_allocWithZone(RAPDU) init];
  v43 = v80;
  v42 = v81;
  while (2)
  {
    v46 = v41;
    v47 = Data._bridgeToObjectiveC()().super.isa;
    v82 = 0;
    v41 = sub_1003AEB5C(v39, v47, &v82);

    v48 = v82;
    if (!v41)
    {
      v69 = v48;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10006A178(v43, v42);
      v6 = v73;
      return sub_10006A178(v6, a4);
    }

    v49 = sub_1003B0934(v41);
    v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    Data.append(_:)();
    sub_10006A178(v50, v52);
    v53 = v42 >> 62;
    if ((v42 >> 62) > 1)
    {
      if (v53 != 2)
      {
        goto LABEL_143;
      }

      v55 = v42 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10006A178(v43, v42);
      sub_10006A178(0, 0xC000000000000000);
      if (*(v43 + 16) > 3)
      {
        goto LABEL_123;
      }

      if (*(v43 + 24) < 4)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = *(v43 + 16);
        v57 = *(v43 + 24);
        if (__DataStorage._bytes.getter())
        {
          if (__OFSUB__(v56, __DataStorage._offset.getter()))
          {
            goto LABEL_137;
          }

          if (__OFSUB__(v57, v56))
          {
            goto LABEL_135;
          }
        }

        else if (__OFSUB__(v57, v56))
        {
          goto LABEL_135;
        }

        type metadata accessor for __DataStorage();
        swift_allocObject();
        v62 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v55 = v62;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = *(v43 + 16);
        v64 = *(v43 + 24);
        type metadata accessor for Data.RangeReference();
        v65 = swift_allocObject();
        *(v65 + 16) = v63;
        *(v65 + 24) = v64;

        v43 = v65;
      }

      __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
      v66 = __DataStorage._bytes.getter();
      if (!v66)
      {
        goto LABEL_145;
      }

      v67 = v66;
      v68 = __DataStorage._offset.getter();
      if (__OFSUB__(3, v68))
      {
        goto LABEL_127;
      }

      *(v67 + 3 - v68) = 3;
      v42 = v55 | 0x8000000000000000;
      v39 = a1;
      goto LABEL_89;
    }

    if (!v53)
    {
      sub_10006A178(v43, v42);
      v44 = BYTE6(v42);
      if (BYTE6(v42) >= 4uLL)
      {
        v43 = v43 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v45 = v40 & 0xF00000000000000 | v42 & 0xFFFFFFFFFFFFLL;
        v42 = v45 | (BYTE6(v42) << 48);
        v40 = v45 | (v44 << 48);
        goto LABEL_89;
      }

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
      goto LABEL_134;
    }

    v54 = v42 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10006A178(v43, v42);
    sub_10006A178(0, 0xC000000000000000);
    if (v43 >> 32 < 4 || v43 > 3)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(v43, __DataStorage._offset.getter()))
      {
        goto LABEL_136;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v58 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v54 = v58;
    }

    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
    v59 = __DataStorage._bytes.getter();
    if (!v59)
    {
      goto LABEL_144;
    }

    v60 = v59;
    v61 = __DataStorage._offset.getter();
    if (__OFSUB__(3, v61))
    {
      goto LABEL_126;
    }

    *(v60 + 3 - v61) = 3;
    v42 = v54 | 0x4000000000000000;
    v39 = a1;
LABEL_89:
    if (sub_1003B0984(v41) == 25360)
    {
      continue;
    }

    break;
  }

  sub_10006A178(v43, v42);
  return sub_10006A178(v73, a4);
}

uint64_t sub_10007CB00(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t))
{
  v93 = xmmword_1004098D0;
  v9 = *(a5 + 16);
  if (v9)
  {
    v10 = (a5 + 32);
    v8 = &v87 + 2;
    while (1)
    {
      v13 = *v10++;
      v12 = v13;
      if (v13 > 4)
      {
        break;
      }

      if (v12 <= 1)
      {
        if (v12)
        {
          v14 = -124;
        }

        else
        {
          v14 = 79;
        }

        goto LABEL_27;
      }

      if (v12 == 2)
      {
        v14 = -60;
        goto LABEL_27;
      }

      if (v12 == 3)
      {
        v14 = -52;
        goto LABEL_27;
      }

      LOWORD(v87) = 28831;
      v91 = &type metadata for UnsafeRawBufferPointer;
      v92 = &protocol witness table for UnsafeRawBufferPointer;
      v89 = &v87;
      v90 = &v87 + 2;
      sub_1000752B0(&v89, &type metadata for UnsafeRawBufferPointer);
      Data._Representation.append(contentsOf:)();
LABEL_7:
      sub_1000752F4(&v89);
      if (!--v9)
      {
        goto LABEL_31;
      }
    }

    if (v12 <= 6)
    {
      if (v12 == 5)
      {
        v14 = -96;
      }

      else
      {
        v14 = -92;
      }
    }

    else if (v12 == 7)
    {
      v14 = -91;
    }

    else if (v12 == 8)
    {
      v14 = -59;
    }

    else
    {
      v14 = -38;
    }

LABEL_27:
    v15 = *(&v93 + 1) >> 62;
    if ((*(&v93 + 1) >> 62) <= 1)
    {
      if (v15)
      {
        LODWORD(v7) = DWORD1(v93);
      }

      else
      {
        LODWORD(v7) = BYTE14(v93);
      }
    }

    else if (v15 == 2)
    {
      v7 = *(v93 + 24);
    }

    else
    {
      LODWORD(v7) = 0;
    }

    v11 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v91 = v11;
    v92 = sub_10007FBA8();
    LOBYTE(v89) = v14;
    LOBYTE(v87) = *sub_1000752B0(&v89, v11);
    Data._Representation.replaceSubrange(_:with:count:)();
    goto LABEL_7;
  }

LABEL_31:
  v16 = a4 >> 60;
  if (a4 >> 60 == 15)
  {
LABEL_32:
    i = 0;
    goto LABEL_33;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_45;
  }

  if (i)
  {
    goto LABEL_68;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_33:
      v18 = __OFADD__(i, 2);
      v19 = i + 2;
      if (v18)
      {
        goto LABEL_139;
      }

      v18 = __OFADD__(v19, 2);
      i = v19 + 2;
      if (v18)
      {
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
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v78 = *(&v93 + 1);
      v8 = v93;
      v7 = *(&v93 + 1) >> 62;
      if ((*(&v93 + 1) >> 62) <= 1)
      {
        if (!v7)
        {
          v20 = BYTE14(v93);
          break;
        }

        goto LABEL_49;
      }

      if (v7 != 2)
      {
        v20 = 0;
        break;
      }

      v22 = *(v93 + 16);
      v21 = *(v93 + 24);
      v18 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v18)
      {
        break;
      }

      __break(1u);
LABEL_45:
      if (i != 2)
      {
        goto LABEL_32;
      }

      v24 = *(a3 + 16);
      v23 = *(a3 + 24);
      v18 = __OFSUB__(v23, v24);
      i = v23 - v24;
      if (v18)
      {
        __break(1u);
LABEL_49:
        LODWORD(v20) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_150;
        }

        v20 = v20;
        break;
      }
    }

    v25 = i + v20;
    if (__OFADD__(i, v20))
    {
      goto LABEL_141;
    }

    if (__OFADD__(v25, 9))
    {
      goto LABEL_142;
    }

    v87 = sub_1001303A8(v25 + 9);
    v88 = v26;
    v84 = -20608;
    if (a2)
    {
      v27 = 64;
    }

    else
    {
      v27 = 16;
    }

    v85 = v27;
    v86 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_143;
    }

    if (v25 >> 16)
    {
      goto LABEL_144;
    }

    v82 = bswap32(v25) >> 16;
    v91 = &type metadata for UnsafeRawBufferPointer;
    v92 = &protocol witness table for UnsafeRawBufferPointer;
    v89 = &v82;
    v90 = v83;
    sub_1000752B0(&v89, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v89);
    v28 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v91 = v28;
    v29 = sub_10007FBA8();
    v92 = v29;
    LOBYTE(v89) = 79;
    LOBYTE(v82) = *sub_1000752B0(&v89, v28);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v89);
    if (v16 > 0xE)
    {
      v16 = v78;
      goto LABEL_75;
    }

    v30 = a4 >> 62;
    v16 = v78;
    if ((a4 >> 62) <= 1)
    {
      break;
    }

    if (v30 != 2)
    {
      LOBYTE(v31) = 0;
      goto LABEL_77;
    }

    v33 = *(a3 + 16);
    v32 = *(a3 + 24);
    v31 = v32 - v33;
    if (!__OFSUB__(v32, v33))
    {
      goto LABEL_72;
    }

    __break(1u);
LABEL_68:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_152;
    }
  }

  if (!v30)
  {
    v31 = HIWORD(a4);
    goto LABEL_77;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_153;
  }

  v31 = HIDWORD(a3) - a3;
LABEL_72:
  sub_100069E2C(a3, a4);
  if ((v31 & 0x8000000000000000) != 0)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v31 <= 0xFF)
  {
LABEL_77:
    v91 = v28;
    v92 = v29;
    LOBYTE(v89) = v31;
    LOBYTE(v82) = *sub_1000752B0(&v89, v28);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v89);
    Data.append(_:)();
    sub_10006A2D0(a3, a4);
    goto LABEL_78;
  }

  __break(1u);
LABEL_75:
  v91 = v28;
  v92 = v29;
  LOBYTE(v89) = 0;
  LOBYTE(v82) = *sub_1000752B0(&v89, v28);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v89);
LABEL_78:
  v91 = v28;
  v92 = v29;
  LOBYTE(v89) = 92;
  LOBYTE(v82) = *sub_1000752B0(&v89, v28);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v89);
  if (v7 <= 1)
  {
    if (!v7)
    {
      v34 = HIWORD(v16);
      goto LABEL_91;
    }

LABEL_85:
    LODWORD(v34) = HIDWORD(v8) - v8;
    if (!__OFSUB__(HIDWORD(v8), v8))
    {
      v34 = v34;
      goto LABEL_87;
    }

LABEL_151:
    __break(1u);
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
  }

  if (v7 != 2)
  {
LABEL_90:
    LOBYTE(v34) = 0;
    goto LABEL_91;
  }

  v36 = *(v8 + 2);
  v35 = *(v8 + 3);
  v18 = __OFSUB__(v35, v36);
  v34 = v35 - v36;
  if (v18)
  {
    __break(1u);
    goto LABEL_85;
  }

LABEL_87:
  if ((v34 & 0x8000000000000000) != 0)
  {
    goto LABEL_145;
  }

  if (v34 > 0xFF)
  {
    __break(1u);
    goto LABEL_90;
  }

LABEL_91:
  v91 = v28;
  v92 = v29;
  LOBYTE(v89) = v34;
  LOBYTE(v82) = *sub_1000752B0(&v89, v28);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v89);
  Data.append(_:)();
  v82 = 0;
  v91 = &type metadata for UnsafeRawBufferPointer;
  v92 = &protocol witness table for UnsafeRawBufferPointer;
  v89 = &v82;
  v90 = v83;
  sub_1000752B0(&v89, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v89);
  v37 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v38 >> 60 == 15)
  {
    goto LABEL_157;
  }

  v39 = v37;
  v40 = v38;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v39, v40);
  v42 = a1;
  v43 = sub_1003AF1FC(a1, isa);

  if (!v43)
  {
    v44 = [objc_allocWithZone(RAPDU) init];
    v45 = v87;
    v46 = v88;
    while (1)
    {
      v47 = v44;
      v48 = Data._bridgeToObjectiveC()().super.isa;
      v89 = 0;
      v44 = sub_1003AEB5C(v42, v48, &v89);

      v49 = v89;
      if (!v44)
      {
        break;
      }

      v50 = sub_1003B0934(v44);
      v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      a6(v51, v53);
      sub_10006A178(v51, v53);
      if (v6)
      {

        goto LABEL_129;
      }

      v54 = v46 >> 62;
      if ((v46 >> 62) > 1)
      {
        if (v54 != 2)
        {
          goto LABEL_154;
        }

        v57 = v46 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v45, v46);
        sub_10006A178(0, 0xC000000000000000);
        if (*(v45 + 16) > 3)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (*(v45 + 24) < 4)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = *(v45 + 16);
          v59 = *(v45 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v58, __DataStorage._offset.getter()))
            {
              goto LABEL_149;
            }

            if (__OFSUB__(v59, v58))
            {
              goto LABEL_146;
            }
          }

          else if (__OFSUB__(v59, v58))
          {
            goto LABEL_146;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v65 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v57 = v65;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = *(v45 + 16);
          v67 = *(v45 + 24);
          type metadata accessor for Data.RangeReference();
          v68 = swift_allocObject();
          *(v68 + 16) = v66;
          *(v68 + 24) = v67;

          v45 = v68;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v69 = __DataStorage._bytes.getter();
        if (!v69)
        {
          goto LABEL_156;
        }

        v70 = v69;
        v71 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v71))
        {
          goto LABEL_138;
        }

        *(v70 + 3 - v71) = 3;
        v46 = v57 | 0x8000000000000000;
        v42 = a1;
      }

      else if (v54)
      {
        v60 = v46 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v45, v46);
        sub_10006A178(0, 0xC000000000000000);
        if (v45 >> 32 < 4 || v45 > 3)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v45, __DataStorage._offset.getter()))
          {
            goto LABEL_148;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v61 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v60 = v61;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v62 = __DataStorage._bytes.getter();
        if (!v62)
        {
          goto LABEL_155;
        }

        v63 = v62;
        v64 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v64))
        {
          goto LABEL_137;
        }

        *(v63 + 3 - v64) = 3;
        v46 = v60 | 0x4000000000000000;
        v42 = a1;
      }

      else
      {
        sub_10006A178(v45, v46);
        v55 = BYTE6(v46);
        if (BYTE6(v46) < 4uLL)
        {
          goto LABEL_134;
        }

        v45 = v45 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v56 = a4 & 0xF00000000000000 | v46 & 0xFFFFFFFFFFFFLL;
        v46 = v56 | (BYTE6(v46) << 48);
        a4 = v56 | (v55 << 48);
      }

      if (sub_1003B0984(v44) != 25360)
      {

        sub_10006A178(v45, v46);
        v73 = v8;
        v74 = v78;
        return sub_10006A178(v73, v74);
      }
    }

    v72 = v49;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_129:
    sub_10006A178(v45, v46);
    v16 = v78;
    goto LABEL_130;
  }

  swift_willThrow();
  sub_10006A178(v87, v88);
LABEL_130:
  v73 = v8;
  v74 = v16;
  return sub_10006A178(v73, v74);
}

uint64_t sub_10007D708(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v86 = xmmword_1004098D0;
  v8 = *(a5 + 16);
  if (v8)
  {
    v9 = (a5 + 32);
    v6 = 13403215;
    do
    {
      v12 = *(&v86 + 1) >> 62;
      if ((*(&v86 + 1) >> 62) <= 1)
      {
        if (v12)
        {
          LODWORD(v5) = DWORD1(v86);
        }

        else
        {
          LODWORD(v5) = BYTE14(v86);
        }
      }

      else if (v12 == 2)
      {
        v5 = *(v86 + 24);
      }

      else
      {
        LODWORD(v5) = 0;
      }

      v10 = *v9++;
      v11 = sub_100068FC4(&qword_100502608, &qword_100409A28);
      v84 = v11;
      v85 = sub_10007FBA8();
      LOBYTE(v82) = 0xCC844Fu >> (8 * v10);
      LOBYTE(v80) = *sub_1000752B0(&v82, v11);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v82);
      --v8;
    }

    while (v8);
  }

  v13 = (a4 >> 60);
  if (a4 >> 60 == 15)
  {
LABEL_12:
    i = 0;
    goto LABEL_13;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_25;
  }

  if (i)
  {
    goto LABEL_48;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_13:
      v15 = __OFADD__(i, 2);
      v16 = i + 2;
      if (v15)
      {
        goto LABEL_116;
      }

      v15 = __OFADD__(v16, 2);
      i = v16 + 2;
      if (v15)
      {
        goto LABEL_117;
      }

      v6 = v86;
      v5 = *(&v86 + 1) >> 62;
      v73 = *(&v86 + 1);
      if ((*(&v86 + 1) >> 62) <= 1)
      {
        if (!v5)
        {
          v17 = BYTE14(v86);
          break;
        }

        goto LABEL_29;
      }

      if (v5 != 2)
      {
        v17 = 0;
        break;
      }

      v19 = *(v86 + 16);
      v18 = *(v86 + 24);
      v15 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (!v15)
      {
        break;
      }

      __break(1u);
LABEL_25:
      if (i != 2)
      {
        goto LABEL_12;
      }

      v21 = *(a3 + 16);
      v20 = *(a3 + 24);
      v15 = __OFSUB__(v20, v21);
      i = v20 - v21;
      if (v15)
      {
        __break(1u);
LABEL_29:
        LODWORD(v17) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_127;
        }

        v17 = v17;
        break;
      }
    }

    v22 = i + v17;
    if (__OFADD__(i, v17))
    {
      goto LABEL_118;
    }

    if (__OFADD__(v22, 9))
    {
      goto LABEL_119;
    }

    v80 = sub_1001303A8(v22 + 9);
    v81 = v23;
    v77 = -20608;
    if (a2)
    {
      v24 = 64;
    }

    else
    {
      v24 = 16;
    }

    v78 = v24;
    v79 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_120;
    }

    if (v22 >> 16)
    {
      goto LABEL_121;
    }

    v75 = bswap32(v22) >> 16;
    v84 = &type metadata for UnsafeRawBufferPointer;
    v85 = &protocol witness table for UnsafeRawBufferPointer;
    v82 = &v75;
    v83 = v76;
    sub_1000752B0(&v82, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v82);
    v25 = v73;
    v26 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v84 = v26;
    v27 = sub_10007FBA8();
    v85 = v27;
    LOBYTE(v82) = 79;
    LOBYTE(v75) = *sub_1000752B0(&v82, v26);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v82);
    if (v13 > 0xE)
    {
      v13 = a1;
      goto LABEL_55;
    }

    v28 = a4 >> 62;
    v13 = a1;
    if ((a4 >> 62) <= 1)
    {
      break;
    }

    if (v28 != 2)
    {
      LOBYTE(v29) = 0;
      goto LABEL_57;
    }

    v31 = *(a3 + 16);
    v30 = *(a3 + 24);
    v29 = v30 - v31;
    if (!__OFSUB__(v30, v31))
    {
      goto LABEL_52;
    }

    __break(1u);
LABEL_48:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_129;
    }
  }

  if (!v28)
  {
    v29 = HIWORD(a4);
    goto LABEL_57;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_130;
  }

  v29 = HIDWORD(a3) - a3;
LABEL_52:
  sub_100069E2C(a3, a4);
  if ((v29 & 0x8000000000000000) != 0)
  {
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v29 <= 0xFF)
  {
LABEL_57:
    v84 = v26;
    v85 = v27;
    LOBYTE(v82) = v29;
    LOBYTE(v75) = *sub_1000752B0(&v82, v26);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v82);
    Data.append(_:)();
    sub_10006A2D0(a3, a4);
    goto LABEL_58;
  }

  __break(1u);
LABEL_55:
  v84 = v26;
  v85 = v27;
  LOBYTE(v82) = 0;
  LOBYTE(v75) = *sub_1000752B0(&v82, v26);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v82);
LABEL_58:
  v84 = v26;
  v85 = v27;
  LOBYTE(v82) = 92;
  LOBYTE(v75) = *sub_1000752B0(&v82, v26);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v82);
  if (v5 <= 1)
  {
    if (!v5)
    {
      v32 = HIWORD(v73);
      goto LABEL_71;
    }

LABEL_65:
    LODWORD(v32) = HIDWORD(v6) - v6;
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      v32 = v32;
      goto LABEL_67;
    }

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
  }

  if (v5 != 2)
  {
LABEL_70:
    LOBYTE(v32) = 0;
    goto LABEL_71;
  }

  v34 = *(v6 + 16);
  v33 = *(v6 + 24);
  v15 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v15)
  {
    __break(1u);
    goto LABEL_65;
  }

LABEL_67:
  if ((v32 & 0x8000000000000000) != 0)
  {
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v32 > 0xFF)
  {
    __break(1u);
    goto LABEL_70;
  }

LABEL_71:
  v84 = v26;
  v85 = v27;
  LOBYTE(v82) = v32;
  LOBYTE(v75) = *sub_1000752B0(&v82, v26);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v82);
  Data.append(_:)();
  v75 = 0;
  v84 = &type metadata for UnsafeRawBufferPointer;
  v85 = &protocol witness table for UnsafeRawBufferPointer;
  v82 = &v75;
  v83 = v76;
  sub_1000752B0(&v82, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v82);
  v35 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v36 >> 60 == 15)
  {
    goto LABEL_134;
  }

  v37 = v35;
  v38 = v36;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v37, v38);
  v40 = sub_1003AF1FC(v13, isa);

  if (v40)
  {
    swift_willThrow();
    sub_10006A178(v80, v81);
    return sub_10006A178(v6, v25);
  }

  v41 = [objc_allocWithZone(RAPDU) init];
  v43 = v80;
  v42 = v81;
  while (2)
  {
    v46 = v41;
    v47 = Data._bridgeToObjectiveC()().super.isa;
    v82 = 0;
    v41 = sub_1003AEB5C(v13, v47, &v82);

    v48 = v82;
    if (!v41)
    {
      v69 = v48;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10006A178(v43, v42);
      v25 = v73;
      return sub_10006A178(v6, v25);
    }

    v49 = sub_1003B0934(v41);
    v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    Data.append(_:)();
    sub_10006A178(v50, v52);
    v53 = v42 >> 62;
    if ((v42 >> 62) > 1)
    {
      if (v53 != 2)
      {
        goto LABEL_131;
      }

      v55 = v42 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10006A178(v43, v42);
      sub_10006A178(0, 0xC000000000000000);
      if (*(v43 + 16) > 3)
      {
        goto LABEL_111;
      }

      if (*(v43 + 24) < 4)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = *(v43 + 16);
        v57 = *(v43 + 24);
        if (__DataStorage._bytes.getter())
        {
          if (__OFSUB__(v56, __DataStorage._offset.getter()))
          {
            goto LABEL_125;
          }

          if (__OFSUB__(v57, v56))
          {
            goto LABEL_123;
          }
        }

        else if (__OFSUB__(v57, v56))
        {
          goto LABEL_123;
        }

        type metadata accessor for __DataStorage();
        swift_allocObject();
        v62 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v55 = v62;
        v13 = a1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = *(v43 + 16);
        v64 = *(v43 + 24);
        type metadata accessor for Data.RangeReference();
        v65 = swift_allocObject();
        *(v65 + 16) = v63;
        *(v65 + 24) = v64;
        v13 = a1;

        v43 = v65;
      }

      __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
      v66 = __DataStorage._bytes.getter();
      if (!v66)
      {
        goto LABEL_133;
      }

      v67 = v66;
      v68 = __DataStorage._offset.getter();
      if (__OFSUB__(3, v68))
      {
        goto LABEL_115;
      }

      *(v67 + 3 - v68) = 3;
      v42 = v55 | 0x8000000000000000;
      goto LABEL_77;
    }

    if (!v53)
    {
      sub_10006A178(v43, v42);
      v44 = BYTE6(v42);
      if (BYTE6(v42) >= 4uLL)
      {
        v43 = v43 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v45 = v25 & 0xF00000000000000 | v42 & 0xFFFFFFFFFFFFLL;
        v42 = v45 | (BYTE6(v42) << 48);
        v25 = v45 | (v44 << 48);
        goto LABEL_77;
      }

      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
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
      goto LABEL_122;
    }

    v54 = v42 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10006A178(v43, v42);
    sub_10006A178(0, 0xC000000000000000);
    if (v43 >> 32 < 4 || v43 > 3)
    {
      goto LABEL_112;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(v43, __DataStorage._offset.getter()))
      {
        goto LABEL_124;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v58 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v54 = v58;
    }

    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
    v59 = __DataStorage._bytes.getter();
    if (!v59)
    {
      goto LABEL_132;
    }

    v60 = v59;
    v61 = __DataStorage._offset.getter();
    v13 = a1;
    if (__OFSUB__(3, v61))
    {
      goto LABEL_114;
    }

    *(v60 + 3 - v61) = 3;
    v42 = v54 | 0x4000000000000000;
LABEL_77:
    if (sub_1003B0984(v41) == 25360)
    {
      continue;
    }

    break;
  }

  sub_10006A178(v43, v42);
  return sub_10006A178(v6, v73);
}

uint64_t sub_10007E228(void *a1, char a2, unint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t))
{
  v89 = xmmword_1004098D0;
  v8 = *(a5 + 16);
  if (v8)
  {
    v7 = (a5 + 32);
    do
    {
      v9 = *v7++;
      v10 = sub_100068FC4(&qword_100502608, &qword_100409A28);
      v87 = v10;
      v88 = sub_10007FBA8();
      LOBYTE(v85) = 0xCC844Fu >> (8 * v9);
      LOBYTE(v83) = *sub_1000752B0(&v85, v10);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v85);
      --v8;
    }

    while (v8);
  }

  v11 = a4 >> 60;
  if (a4 >> 60 == 15)
  {
LABEL_5:
    i = 0;
    goto LABEL_6;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_18;
  }

  if (i)
  {
    goto LABEL_40;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_6:
      v13 = __OFADD__(i, 2);
      v14 = i + 2;
      if (v13)
      {
        goto LABEL_111;
      }

      v13 = __OFADD__(v14, 2);
      i = v14 + 2;
      if (v13)
      {
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v74 = *(&v89 + 1);
      v7 = v89;
      v8 = *(&v89 + 1) >> 62;
      if ((*(&v89 + 1) >> 62) <= 1)
      {
        if (!v8)
        {
          v15 = BYTE14(v89);
          break;
        }

        goto LABEL_22;
      }

      if (v8 != 2)
      {
        v15 = 0;
        break;
      }

      v17 = *(v89 + 16);
      v16 = *(v89 + 24);
      v13 = __OFSUB__(v16, v17);
      v15 = v16 - v17;
      if (!v13)
      {
        break;
      }

      __break(1u);
LABEL_18:
      if (i != 2)
      {
        goto LABEL_5;
      }

      v19 = *(a3 + 16);
      v18 = *(a3 + 24);
      v13 = __OFSUB__(v18, v19);
      i = v18 - v19;
      if (v13)
      {
        __break(1u);
LABEL_22:
        LODWORD(v15) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_122;
        }

        v15 = v15;
        break;
      }
    }

    v20 = i + v15;
    if (__OFADD__(i, v15))
    {
      goto LABEL_113;
    }

    if (__OFADD__(v20, 9))
    {
      goto LABEL_114;
    }

    v83 = sub_1001303A8(v20 + 9);
    v84 = v21;
    v80 = -20608;
    if (a2)
    {
      v22 = 64;
    }

    else
    {
      v22 = 16;
    }

    v81 = v22;
    v82 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_115;
    }

    if (v20 >> 16)
    {
      goto LABEL_116;
    }

    v78 = bswap32(v20) >> 16;
    v87 = &type metadata for UnsafeRawBufferPointer;
    v88 = &protocol witness table for UnsafeRawBufferPointer;
    v85 = &v78;
    v86 = v79;
    sub_1000752B0(&v85, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v85);
    v23 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v87 = v23;
    v24 = sub_10007FBA8();
    v88 = v24;
    LOBYTE(v85) = 79;
    LOBYTE(v78) = *sub_1000752B0(&v85, v23);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v85);
    if (v11 > 0xE)
    {
      goto LABEL_47;
    }

    v25 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      break;
    }

    v11 = a3;
    if (v25 != 2)
    {
      LOBYTE(v26) = 0;
      goto LABEL_49;
    }

    v28 = *(a3 + 16);
    v27 = *(a3 + 24);
    v26 = v27 - v28;
    if (!__OFSUB__(v27, v28))
    {
      goto LABEL_44;
    }

    __break(1u);
LABEL_40:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_124;
    }
  }

  v11 = a3;
  if (!v25)
  {
    v26 = HIWORD(a4);
    goto LABEL_49;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_125;
  }

  v26 = HIDWORD(a3) - a3;
LABEL_44:
  sub_100069E2C(v11, a4);
  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v26 <= 0xFF)
  {
LABEL_49:
    v87 = v23;
    v88 = v24;
    LOBYTE(v85) = v26;
    LOBYTE(v78) = *sub_1000752B0(&v85, v23);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v85);
    Data.append(_:)();
    sub_10006A2D0(v11, a4);
    goto LABEL_50;
  }

  __break(1u);
LABEL_47:
  v87 = v23;
  v88 = v24;
  LOBYTE(v85) = 0;
  LOBYTE(v78) = *sub_1000752B0(&v85, v23);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v85);
LABEL_50:
  v87 = v23;
  v88 = v24;
  LOBYTE(v85) = 92;
  LOBYTE(v78) = *sub_1000752B0(&v85, v23);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v85);
  if (v8 <= 1)
  {
    if (!v8)
    {
      v29 = v74;
      v30 = HIWORD(v74);
      goto LABEL_63;
    }

LABEL_57:
    LODWORD(v30) = HIDWORD(v7) - v7;
    if (!__OFSUB__(HIDWORD(v7), v7))
    {
      v30 = v30;
      v29 = v74;
      goto LABEL_59;
    }

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
  }

  if (v8 != 2)
  {
LABEL_62:
    LOBYTE(v30) = 0;
    v29 = v74;
    goto LABEL_63;
  }

  v32 = *(v7 + 2);
  v31 = *(v7 + 3);
  v13 = __OFSUB__(v31, v32);
  v30 = v31 - v32;
  v29 = v74;
  if (v13)
  {
    __break(1u);
    goto LABEL_57;
  }

LABEL_59:
  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_117;
  }

  if (v30 > 0xFF)
  {
    __break(1u);
    goto LABEL_62;
  }

LABEL_63:
  v87 = v23;
  v88 = v24;
  LOBYTE(v85) = v30;
  LOBYTE(v78) = *sub_1000752B0(&v85, v23);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v85);
  Data.append(_:)();
  v78 = 0;
  v87 = &type metadata for UnsafeRawBufferPointer;
  v88 = &protocol witness table for UnsafeRawBufferPointer;
  v85 = &v78;
  v86 = v79;
  sub_1000752B0(&v85, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v85);
  v33 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v34 >> 60 == 15)
  {
    goto LABEL_129;
  }

  v35 = v33;
  v36 = v34;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v35, v36);
  v38 = sub_1003AF1FC(a1, isa);

  if (!v38)
  {
    v73 = v7;
    v39 = [objc_allocWithZone(RAPDU) init];
    v41 = v83;
    v40 = v84;
    while (1)
    {
      v42 = v39;
      v43 = Data._bridgeToObjectiveC()().super.isa;
      v85 = 0;
      v39 = sub_1003AEB5C(a1, v43, &v85);

      v44 = v85;
      if (!v39)
      {
        break;
      }

      v45 = sub_1003B0934(v39);
      v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      a6(v46, v48);
      sub_10006A178(v46, v48);
      if (v6)
      {

        goto LABEL_101;
      }

      v49 = v40 >> 62;
      if ((v40 >> 62) > 1)
      {
        if (v49 != 2)
        {
          goto LABEL_126;
        }

        v52 = v40 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v41, v40);
        sub_10006A178(0, 0xC000000000000000);
        if (*(v41 + 16) > 3)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        if (*(v41 + 24) < 4)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = *(v41 + 16);
          v54 = *(v41 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v53, __DataStorage._offset.getter()))
            {
              goto LABEL_121;
            }

            if (__OFSUB__(v54, v53))
            {
              goto LABEL_118;
            }
          }

          else if (__OFSUB__(v54, v53))
          {
            goto LABEL_118;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v60 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v52 = v60;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = *(v41 + 16);
          v62 = *(v41 + 24);
          type metadata accessor for Data.RangeReference();
          v63 = swift_allocObject();
          *(v63 + 16) = v61;
          *(v63 + 24) = v62;

          v41 = v63;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v64 = __DataStorage._bytes.getter();
        if (!v64)
        {
          goto LABEL_128;
        }

        v65 = v64;
        v66 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v66))
        {
          goto LABEL_110;
        }

        *(v65 + 3 - v66) = 3;
        v40 = v52 | 0x8000000000000000;
      }

      else if (v49)
      {
        v55 = v40 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v41, v40);
        sub_10006A178(0, 0xC000000000000000);
        if (v41 >> 32 < 4 || v41 > 3)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v41, __DataStorage._offset.getter()))
          {
            goto LABEL_120;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v56 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v55 = v56;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v57 = __DataStorage._bytes.getter();
        if (!v57)
        {
          goto LABEL_127;
        }

        v58 = v57;
        v59 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v59))
        {
          goto LABEL_109;
        }

        *(v58 + 3 - v59) = 3;
        v40 = v55 | 0x4000000000000000;
      }

      else
      {
        sub_10006A178(v41, v40);
        v50 = BYTE6(v40);
        if (BYTE6(v40) < 4uLL)
        {
          goto LABEL_106;
        }

        v41 = v41 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v51 = a4 & 0xF00000000000000 | v40 & 0xFFFFFFFFFFFFLL;
        v40 = v51 | (BYTE6(v40) << 48);
        a4 = v51 | (v50 << 48);
      }

      if (sub_1003B0984(v39) != 25360)
      {

        sub_10006A178(v41, v40);
        v68 = v73;
        v69 = v74;
        return sub_10006A178(v68, v69);
      }
    }

    v67 = v44;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_101:
    sub_10006A178(v41, v40);
    v7 = v73;
    v29 = v74;
    goto LABEL_102;
  }

  swift_willThrow();
  sub_10006A178(v83, v84);
LABEL_102:
  v68 = v7;
  v69 = v29;
  return sub_10006A178(v68, v69);
}

void sub_10007EDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9)
{
  sub_10006928C();
  if (qword_100501D80 != -1)
  {
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  if ((v18 & 1) != 0 || v17 != 0x534F534543555245)
  {
    v16 = sub_1003AF3D8(a4);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    a8(a4, a7, a1, a2, a3, a5);
  }
}

uint64_t sub_10007EF98(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v93 = xmmword_1004098D0;
  v9 = *(a5 + 16);
  if (v9)
  {
    v10 = (a5 + 32);
    v8 = &v87 + 2;
    do
    {
      v13 = *v10++;
      v12 = v13;
      if (v13 > 4)
      {
        if (v12 <= 6)
        {
          if (v12 == 5)
          {
            v14 = -96;
          }

          else
          {
            v14 = -92;
          }
        }

        else if (v12 == 7)
        {
          v14 = -91;
        }

        else if (v12 == 8)
        {
          v14 = -59;
        }

        else
        {
          v14 = -38;
        }
      }

      else if (v12 <= 1)
      {
        if (v12)
        {
          v14 = -124;
        }

        else
        {
          v14 = 79;
        }
      }

      else if (v12 == 2)
      {
        v14 = -60;
      }

      else
      {
        if (v12 != 3)
        {
          LOWORD(v87) = 28831;
          v91 = &type metadata for UnsafeRawBufferPointer;
          v92 = &protocol witness table for UnsafeRawBufferPointer;
          v89 = &v87;
          v90 = &v87 + 2;
          sub_1000752B0(&v89, &type metadata for UnsafeRawBufferPointer);
          Data._Representation.append(contentsOf:)();
          goto LABEL_4;
        }

        v14 = -52;
      }

      v11 = sub_100068FC4(&qword_100502608, &qword_100409A28);
      v91 = v11;
      v92 = sub_10007FBA8();
      LOBYTE(v89) = v14;
      LOBYTE(v87) = *sub_1000752B0(&v89, v11);
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_4:
      sub_1000752F4(&v89);
      --v9;
    }

    while (v9);
  }

  if (a4 >> 60 == 15)
  {
LABEL_25:
    i = 0;
    goto LABEL_26;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_38;
  }

  if (i)
  {
    goto LABEL_60;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_26:
      v16 = __OFADD__(i, 2);
      v17 = i + 2;
      if (v16)
      {
        goto LABEL_131;
      }

      v16 = __OFADD__(v17, 2);
      i = v17 + 2;
      if (v16)
      {
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
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v78 = *(&v93 + 1);
      v8 = v93;
      v9 = *(&v93 + 1) >> 62;
      if ((*(&v93 + 1) >> 62) <= 1)
      {
        if (!v9)
        {
          v18 = BYTE14(v93);
          break;
        }

        goto LABEL_42;
      }

      if (v9 != 2)
      {
        v18 = 0;
        break;
      }

      v20 = *(v93 + 16);
      v19 = *(v93 + 24);
      v16 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v16)
      {
        break;
      }

      __break(1u);
LABEL_38:
      if (i != 2)
      {
        goto LABEL_25;
      }

      v22 = *(a3 + 16);
      v21 = *(a3 + 24);
      v16 = __OFSUB__(v21, v22);
      i = v21 - v22;
      if (v16)
      {
        __break(1u);
LABEL_42:
        LODWORD(v18) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_142;
        }

        v18 = v18;
        break;
      }
    }

    v23 = i + v18;
    if (__OFADD__(i, v18))
    {
      goto LABEL_133;
    }

    if (__OFADD__(v23, 9))
    {
      goto LABEL_134;
    }

    v87 = sub_1001303A8(v23 + 9);
    v88 = v24;
    v84 = -20608;
    if (a2)
    {
      v25 = 64;
    }

    else
    {
      v25 = 16;
    }

    v85 = v25;
    v86 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_135;
    }

    if (v23 >> 16)
    {
      goto LABEL_136;
    }

    v82 = bswap32(v23) >> 16;
    v91 = &type metadata for UnsafeRawBufferPointer;
    v92 = &protocol witness table for UnsafeRawBufferPointer;
    v89 = &v82;
    v90 = v83;
    sub_1000752B0(&v89, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v89);
    v26 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v91 = v26;
    v27 = sub_10007FBA8();
    v92 = v27;
    LOBYTE(v89) = 79;
    LOBYTE(v82) = *sub_1000752B0(&v89, v26);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v89);
    if (a4 >> 60 == 15)
    {
      goto LABEL_67;
    }

    v28 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      break;
    }

    if (v28 != 2)
    {
      LOBYTE(v29) = 0;
      goto LABEL_69;
    }

    v31 = *(a3 + 16);
    v30 = *(a3 + 24);
    v29 = v30 - v31;
    if (!__OFSUB__(v30, v31))
    {
      goto LABEL_64;
    }

    __break(1u);
LABEL_60:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_144;
    }
  }

  if (!v28)
  {
    v29 = HIWORD(a4);
    goto LABEL_69;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_145;
  }

  v29 = HIDWORD(a3) - a3;
LABEL_64:
  sub_100069E2C(a3, a4);
  if ((v29 & 0x8000000000000000) != 0)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v29 <= 0xFF)
  {
LABEL_69:
    v91 = v26;
    v92 = v27;
    LOBYTE(v89) = v29;
    LOBYTE(v82) = *sub_1000752B0(&v89, v26);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v89);
    Data.append(_:)();
    sub_10006A2D0(a3, a4);
    goto LABEL_70;
  }

  __break(1u);
LABEL_67:
  v91 = v26;
  v92 = v27;
  LOBYTE(v89) = 0;
  LOBYTE(v82) = *sub_1000752B0(&v89, v26);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v89);
LABEL_70:
  v91 = v26;
  v92 = v27;
  LOBYTE(v89) = 92;
  LOBYTE(v82) = *sub_1000752B0(&v89, v26);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v89);
  if (v9 <= 1)
  {
    if (!v9)
    {
      v32 = v78;
      v33 = HIWORD(v78);
      goto LABEL_83;
    }

LABEL_77:
    LODWORD(v33) = HIDWORD(v8) - v8;
    if (!__OFSUB__(HIDWORD(v8), v8))
    {
      v33 = v33;
      v32 = v78;
      goto LABEL_79;
    }

LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
  }

  if (v9 != 2)
  {
LABEL_82:
    LOBYTE(v33) = 0;
    v32 = v78;
    goto LABEL_83;
  }

  v35 = *(v8 + 2);
  v34 = *(v8 + 3);
  v16 = __OFSUB__(v34, v35);
  v33 = v34 - v35;
  v32 = v78;
  if (v16)
  {
    __break(1u);
    goto LABEL_77;
  }

LABEL_79:
  if ((v33 & 0x8000000000000000) != 0)
  {
    goto LABEL_137;
  }

  if (v33 > 0xFF)
  {
    __break(1u);
    goto LABEL_82;
  }

LABEL_83:
  v91 = v26;
  v92 = v27;
  LOBYTE(v89) = v33;
  LOBYTE(v82) = *sub_1000752B0(&v89, v26);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v89);
  Data.append(_:)();
  v82 = 0;
  v91 = &type metadata for UnsafeRawBufferPointer;
  v92 = &protocol witness table for UnsafeRawBufferPointer;
  v89 = &v82;
  v90 = v83;
  sub_1000752B0(&v89, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v89);
  v36 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v37 >> 60 == 15)
  {
    goto LABEL_149;
  }

  v38 = v36;
  v39 = v37;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v38, v39);
  v41 = a1;
  v42 = sub_1003AF1FC(a1, isa);

  if (!v42)
  {
    v43 = [objc_allocWithZone(RAPDU) init];
    v45 = v87;
    v44 = v88;
    while (1)
    {
      v46 = v43;
      v47 = Data._bridgeToObjectiveC()().super.isa;
      v89 = 0;
      v43 = sub_1003AEB5C(v41, v47, &v89);

      v48 = v89;
      if (!v43)
      {
        break;
      }

      v49 = sub_1003B0934(v43);
      v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      sub_1002D5ECC(v50, v52, a6, a7);
      sub_10006A178(v50, v52);
      if (v7)
      {

        goto LABEL_121;
      }

      v53 = v44 >> 62;
      if ((v44 >> 62) > 1)
      {
        if (v53 != 2)
        {
          goto LABEL_146;
        }

        v56 = v44 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v45, v44);
        sub_10006A178(0, 0xC000000000000000);
        if (*(v45 + 16) > 3)
        {
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
          goto LABEL_132;
        }

        if (*(v45 + 24) < 4)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = *(v45 + 16);
          v57 = *(v45 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v58, __DataStorage._offset.getter()))
            {
              goto LABEL_141;
            }

            if (__OFSUB__(v57, v58))
            {
              goto LABEL_138;
            }
          }

          else if (__OFSUB__(v57, v58))
          {
            goto LABEL_138;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v64 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v56 = v64;
          v41 = a1;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = *(v45 + 16);
          v66 = *(v45 + 24);
          type metadata accessor for Data.RangeReference();
          v67 = swift_allocObject();
          *(v67 + 16) = v65;
          *(v67 + 24) = v66;

          v45 = v67;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v68 = __DataStorage._bytes.getter();
        if (!v68)
        {
          goto LABEL_148;
        }

        v69 = v68;
        v70 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v70))
        {
          goto LABEL_130;
        }

        *(v69 + 3 - v70) = 3;
        v44 = v56 | 0x8000000000000000;
      }

      else if (v53)
      {
        v59 = v44 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v45, v44);
        sub_10006A178(0, 0xC000000000000000);
        if (v45 >> 32 < 4 || v45 > 3)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v45, __DataStorage._offset.getter()))
          {
            goto LABEL_140;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v60 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v59 = v60;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v61 = __DataStorage._bytes.getter();
        if (!v61)
        {
          goto LABEL_147;
        }

        v62 = v61;
        v63 = __DataStorage._offset.getter();
        v41 = a1;
        if (__OFSUB__(3, v63))
        {
          goto LABEL_129;
        }

        *(v62 + 3 - v63) = 3;
        v44 = v59 | 0x4000000000000000;
      }

      else
      {
        sub_10006A178(v45, v44);
        v54 = BYTE6(v44);
        if (BYTE6(v44) < 4uLL)
        {
          goto LABEL_126;
        }

        v45 = v45 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v55 = a4 & 0xF00000000000000 | v44 & 0xFFFFFFFFFFFFLL;
        v44 = v55 | (BYTE6(v44) << 48);
        a4 = v55 | (v54 << 48);
      }

      if (sub_1003B0984(v43) != 25360)
      {

        sub_10006A178(v45, v44);
        v72 = v8;
        v73 = v78;
        return sub_10006A178(v72, v73);
      }
    }

    v71 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_121:
    sub_10006A178(v45, v44);
    v32 = v78;
    goto LABEL_122;
  }

  swift_willThrow();
  sub_10006A178(v87, v88);
LABEL_122:
  v72 = v8;
  v73 = v32;
  return sub_10006A178(v72, v73);
}

unint64_t sub_10007FBA8()
{
  result = qword_100502610;
  if (!qword_100502610)
  {
    sub_1000692D8(&qword_100502608, &qword_100409A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502610);
  }

  return result;
}

unint64_t sub_10007FC0C()
{
  result = qword_100502618;
  if (!qword_100502618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502618);
  }

  return result;
}

uint64_t sub_10007FC60(void *a1, char a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v91 = xmmword_1004098D0;
  v9 = *(a5 + 16);
  if (v9)
  {
    v8 = (a5 + 32);
    do
    {
      v10 = *v8++;
      v11 = sub_100068FC4(&qword_100502608, &qword_100409A28);
      v89 = v11;
      v90 = sub_10007FBA8();
      LOBYTE(v87) = 0xCC844Fu >> (8 * v10);
      LOBYTE(v85) = *sub_1000752B0(&v87, v11);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v87);
      --v9;
    }

    while (v9);
  }

  v12 = a4 >> 60;
  if (a4 >> 60 == 15)
  {
LABEL_5:
    i = 0;
    goto LABEL_6;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_18;
  }

  if (i)
  {
    goto LABEL_40;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_6:
      v14 = __OFADD__(i, 2);
      v15 = i + 2;
      if (v14)
      {
        goto LABEL_111;
      }

      v14 = __OFADD__(v15, 2);
      i = v15 + 2;
      if (v14)
      {
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v75 = *(&v91 + 1);
      v8 = v91;
      v9 = *(&v91 + 1) >> 62;
      if ((*(&v91 + 1) >> 62) <= 1)
      {
        if (!v9)
        {
          v16 = BYTE14(v91);
          break;
        }

        goto LABEL_22;
      }

      if (v9 != 2)
      {
        v16 = 0;
        break;
      }

      v18 = *(v91 + 16);
      v17 = *(v91 + 24);
      v14 = __OFSUB__(v17, v18);
      v16 = v17 - v18;
      if (!v14)
      {
        break;
      }

      __break(1u);
LABEL_18:
      if (i != 2)
      {
        goto LABEL_5;
      }

      v20 = *(a3 + 16);
      v19 = *(a3 + 24);
      v14 = __OFSUB__(v19, v20);
      i = v19 - v20;
      if (v14)
      {
        __break(1u);
LABEL_22:
        LODWORD(v16) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_122;
        }

        v16 = v16;
        break;
      }
    }

    v21 = i + v16;
    if (__OFADD__(i, v16))
    {
      goto LABEL_113;
    }

    if (__OFADD__(v21, 9))
    {
      goto LABEL_114;
    }

    v85 = sub_1001303A8(v21 + 9);
    v86 = v22;
    v82 = -20608;
    if (a2)
    {
      v23 = 64;
    }

    else
    {
      v23 = 16;
    }

    v83 = v23;
    v84 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_115;
    }

    if (v21 >> 16)
    {
      goto LABEL_116;
    }

    v80 = bswap32(v21) >> 16;
    v89 = &type metadata for UnsafeRawBufferPointer;
    v90 = &protocol witness table for UnsafeRawBufferPointer;
    v87 = &v80;
    v88 = v81;
    sub_1000752B0(&v87, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v87);
    v24 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v89 = v24;
    v25 = sub_10007FBA8();
    v90 = v25;
    LOBYTE(v87) = 79;
    LOBYTE(v80) = *sub_1000752B0(&v87, v24);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v87);
    if (v12 > 0xE)
    {
      goto LABEL_47;
    }

    v26 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      break;
    }

    v12 = a3;
    if (v26 != 2)
    {
      LOBYTE(v27) = 0;
      goto LABEL_49;
    }

    v29 = *(a3 + 16);
    v28 = *(a3 + 24);
    v27 = v28 - v29;
    if (!__OFSUB__(v28, v29))
    {
      goto LABEL_44;
    }

    __break(1u);
LABEL_40:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_124;
    }
  }

  v12 = a3;
  if (!v26)
  {
    v27 = HIWORD(a4);
    goto LABEL_49;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_125;
  }

  v27 = HIDWORD(a3) - a3;
LABEL_44:
  sub_100069E2C(v12, a4);
  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v27 <= 0xFF)
  {
LABEL_49:
    v89 = v24;
    v90 = v25;
    LOBYTE(v87) = v27;
    LOBYTE(v80) = *sub_1000752B0(&v87, v24);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v87);
    Data.append(_:)();
    sub_10006A2D0(v12, a4);
    goto LABEL_50;
  }

  __break(1u);
LABEL_47:
  v89 = v24;
  v90 = v25;
  LOBYTE(v87) = 0;
  LOBYTE(v80) = *sub_1000752B0(&v87, v24);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v87);
LABEL_50:
  v89 = v24;
  v90 = v25;
  LOBYTE(v87) = 92;
  LOBYTE(v80) = *sub_1000752B0(&v87, v24);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v87);
  if (v9 <= 1)
  {
    if (!v9)
    {
      v30 = v75;
      v31 = HIWORD(v75);
      goto LABEL_63;
    }

LABEL_57:
    LODWORD(v31) = HIDWORD(v8) - v8;
    if (!__OFSUB__(HIDWORD(v8), v8))
    {
      v31 = v31;
      v30 = v75;
      goto LABEL_59;
    }

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
  }

  if (v9 != 2)
  {
LABEL_62:
    LOBYTE(v31) = 0;
    v30 = v75;
    goto LABEL_63;
  }

  v33 = *(v8 + 2);
  v32 = *(v8 + 3);
  v14 = __OFSUB__(v32, v33);
  v31 = v32 - v33;
  v30 = v75;
  if (v14)
  {
    __break(1u);
    goto LABEL_57;
  }

LABEL_59:
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_117;
  }

  if (v31 > 0xFF)
  {
    __break(1u);
    goto LABEL_62;
  }

LABEL_63:
  v89 = v24;
  v90 = v25;
  LOBYTE(v87) = v31;
  LOBYTE(v80) = *sub_1000752B0(&v87, v24);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v87);
  Data.append(_:)();
  v80 = 0;
  v89 = &type metadata for UnsafeRawBufferPointer;
  v90 = &protocol witness table for UnsafeRawBufferPointer;
  v87 = &v80;
  v88 = v81;
  sub_1000752B0(&v87, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v87);
  v34 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v35 >> 60 == 15)
  {
    goto LABEL_129;
  }

  v36 = v34;
  v37 = v35;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v36, v37);
  v39 = sub_1003AF1FC(a1, isa);

  if (!v39)
  {
    v74 = v8;
    v40 = [objc_allocWithZone(RAPDU) init];
    v42 = v85;
    v41 = v86;
    while (1)
    {
      v43 = v40;
      v44 = Data._bridgeToObjectiveC()().super.isa;
      v87 = 0;
      v40 = sub_1003AEB5C(a1, v44, &v87);

      v45 = v87;
      if (!v40)
      {
        break;
      }

      v46 = sub_1003B0934(v40);
      v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      sub_1002D7C5C(v47, v49, a6, a7);
      sub_10006A178(v47, v49);
      if (v7)
      {

        goto LABEL_101;
      }

      v50 = v41 >> 62;
      if ((v41 >> 62) > 1)
      {
        if (v50 != 2)
        {
          goto LABEL_126;
        }

        v53 = v41 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v42, v41);
        sub_10006A178(0, 0xC000000000000000);
        if (*(v42 + 16) > 3)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        if (*(v42 + 24) < 4)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = *(v42 + 16);
          v55 = *(v42 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v54, __DataStorage._offset.getter()))
            {
              goto LABEL_121;
            }

            if (__OFSUB__(v55, v54))
            {
              goto LABEL_118;
            }
          }

          else if (__OFSUB__(v55, v54))
          {
            goto LABEL_118;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v61 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v53 = v61;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = *(v42 + 16);
          v63 = *(v42 + 24);
          type metadata accessor for Data.RangeReference();
          v64 = swift_allocObject();
          *(v64 + 16) = v62;
          *(v64 + 24) = v63;

          v42 = v64;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v65 = __DataStorage._bytes.getter();
        if (!v65)
        {
          goto LABEL_128;
        }

        v66 = v65;
        v67 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v67))
        {
          goto LABEL_110;
        }

        *(v66 + 3 - v67) = 3;
        v41 = v53 | 0x8000000000000000;
      }

      else if (v50)
      {
        v56 = v41 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v42, v41);
        sub_10006A178(0, 0xC000000000000000);
        if (v42 >> 32 < 4 || v42 > 3)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v42, __DataStorage._offset.getter()))
          {
            goto LABEL_120;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v57 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v56 = v57;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v58 = __DataStorage._bytes.getter();
        if (!v58)
        {
          goto LABEL_127;
        }

        v59 = v58;
        v60 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v60))
        {
          goto LABEL_109;
        }

        *(v59 + 3 - v60) = 3;
        v41 = v56 | 0x4000000000000000;
      }

      else
      {
        sub_10006A178(v42, v41);
        v51 = BYTE6(v41);
        if (BYTE6(v41) < 4uLL)
        {
          goto LABEL_106;
        }

        v42 = v42 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v52 = a4 & 0xF00000000000000 | v41 & 0xFFFFFFFFFFFFLL;
        v41 = v52 | (BYTE6(v41) << 48);
        a4 = v52 | (v51 << 48);
      }

      if (sub_1003B0984(v40) != 25360)
      {

        sub_10006A178(v42, v41);
        v69 = v74;
        v70 = v75;
        return sub_10006A178(v69, v70);
      }
    }

    v68 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_101:
    sub_10006A178(v42, v41);
    v8 = v74;
    v30 = v75;
    goto LABEL_102;
  }

  swift_willThrow();
  sub_10006A178(v85, v86);
LABEL_102:
  v69 = v8;
  v70 = v30;
  return sub_10006A178(v69, v70);
}

uint64_t sub_100080830(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100080874(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_6;
  }

  if (*(v1 + 16) != 1)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
    }

LABEL_28:

    return;
  }

  if (qword_1005018E8 != -1)
  {
    goto LABEL_33;
  }

LABEL_6:
  v10 = *(qword_10051B168 + OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
    if (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) >= 2u)
    {
      v25 = v10;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Initiate access protocol already called for this peer; do nothing", v28, 2u);
      }
    }

    else
    {
      v12 = v10;
      v13 = [v12 asData];
      if (v13)
      {
        v14 = v13;
        v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10006A178(v15, v17);
      }

      else
      {
        v18.super.isa = 0;
      }

      v29 = [objc_opt_self() TLVWithTag:0 value:v18.super.isa];

      if (v29)
      {
        v30 = [v29 asData];

        if (v30)
        {
          v41 = v12;
          v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          if (qword_1005018F8 != -1)
          {
            swift_once();
          }

          v34 = sub_100090A8C(2, 5, v31, v33);
          v36 = v35;
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E71A0(v34, v36, a1);
          if (!v2)
          {
            sub_100081838(0, 0xD000000000000016, 0x8000000100461FD0, a1);

            sub_10006A178(v34, v36);
            sub_10006A178(v31, v33);
            *(a1 + v11) = 2;
            return;
          }

          v19 = v41;
          sub_10006A178(v34, v36);
          sub_10006A178(v31, v33);
          goto LABEL_28;
        }

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Could not generate initiate access data payload", v39, 2u);
        }

        sub_100080E48(a1, 0);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Initiate access protocol data not yet cached", v24, 2u);
    }

    sub_100080E48(a1, 0);
  }
}

void sub_100080E48(uint64_t a1, __int16 a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchTime();
  v40 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v19 = qword_10051B7F0;
  *v18 = qword_10051B7F0;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v38 = v19;
  v20 = _dispatchPreconditionTest(_:)();
  v22 = *(v16 + 8);
  v21 = (v16 + 8);
  v22(v18, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*(v2 + 16) != 1)
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Not running";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v32, v33, v35, v34, 2u);
    }

LABEL_21:

    return;
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError + 1) << 8 != 512)
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Peer already has error; not resending error message";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = a2 & 0x1FF;
  v23 = [objc_opt_self() TLVWithTag:1 unsignedChar:a2];
  if (!v23)
  {
    __break(1u);
    goto LABEL_25;
  }

  v24 = v23;
  v25 = [v23 asData];

  if (!v25)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v26;

  if (qword_1005018F8 != -1)
  {
LABEL_23:
    swift_once();
  }

  sub_100081ED8(2u, 0, v21, v20, a1);
  v36 = v20;
  v37 = v21;
  v27 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
  if (a2 == 3)
  {
    v28 = 12;
  }

  else
  {
    v28 = 11;
  }

  if (a2 == 3 || (*(v27 + 88) & 1) != 0)
  {
    *(v27 + 84) = v28;
    *(v27 + 88) = 0;
  }

  static DispatchTime.now()();
  + infix(_:_:)();
  v40 = *(v40 + 8);
  (v40)(v11, v45);
  aBlock[4] = sub_1000937C8;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C5D58;
  v29 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_10009388C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  v30 = v39;
  v31 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v29);
  sub_10006A178(v37, v36);
  (*(v43 + 8))(v30, v31);
  (*(v41 + 8))(v9, v42);
  (v40)(v14, v45);
}

uint64_t sub_100081504(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0xD000000000000015;
    }

    if (v2 == 2)
    {
      v4 = 0x8000000100460D80;
    }

    else
    {
      v4 = 0x8000000100460DA0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x656D614E707061;
    }

    else
    {
      v3 = 0x64496D616461;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v6 = 0x8000000100460D80;
    }

    else
    {
      v6 = 0x8000000100460DA0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x656D614E707061;
    }

    else
    {
      v5 = 0x64496D616461;
    }

    if (a2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

void sub_100081644(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (*(v1 + 16) == 1)
    {
      sub_10025DAF0(a1 & 1, v9);
    }

    else
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Not running", v12, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100081838(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v20 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (*(v4 + 16) == 1)
    {
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      v15 = v20 & 1;
      *(v14 + 24) = v20 & 1;
      *(v14 + 32) = v4;
      *(v14 + 40) = a2;
      *(v14 + 48) = a3;

      sub_10025DF60(v15, a2, a3, sub_1000937B4, v14);
    }

    else
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Not running", v18, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100081B2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_100157168;
  if (a5)
  {
    v6 = sub_10015715C;
  }

  if (__OFADD__(a3, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    v10 = HIDWORD(a1) - a1;
  }

LABEL_14:
  if ((v6)(a3 + 1, v10))
  {
    v13 = 0;
    v14 = a3;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v13 = *(a1 + 16);
        v14 = v13 + a3;
        if (__OFADD__(v13, a3))
        {
          goto LABEL_40;
        }
      }

LABEL_25:
      v17 = __OFADD__(v13, a3);
      v18 = v13 + a3;
      if (!v17)
      {
        v17 = __OFADD__(v18, 1);
        v19 = v18 + 1;
        if (!v17)
        {
          if (v19 >= v14)
          {
            sub_100068FC4(&qword_100502C28, &qword_100409CF8);
            sub_1000937E0();
            sub_100075C60(&qword_100502C38, &qword_100502C28, &qword_100409CF8, &protocol conformance descriptor for Range<A>);
            DataProtocol.copyBytes<A>(to:from:)();
            sub_10006A178(a1, a2);
            return 0;
          }

          goto LABEL_38;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (!v9)
    {
      goto LABEL_25;
    }

    v13 = a1;
    v14 = a1 + a3;
    if (!__OFADD__(a1, a3))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  _StringGuts.grow(_:)(47);

  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x6164206D6F726620;
  v16._object = 0xEF206E656C206174;
  String.append(_:)(v16);
  if (v9 > 1)
  {
    if (v9 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  else if (!v9)
  {
    goto LABEL_34;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_41;
  }

LABEL_34:
  sub_10009393C(0, &qword_10050AA20, NSError_ptr);
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x2074657366666F20;
  v22._object = 0xE800000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  sub_10030990C(0, 1, 0xD000000000000012, 0x8000000100461E90, 0);
  swift_willThrow();
  return sub_10006A178(a1, a2);
}

void sub_100081ED8(unsigned int a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v44 = a3;
  v9 = a2;
  v45 = a1;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  v18 = *(v11 + 8);
  v17 = v11 + 8;
  v18(v13, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (*(v5 + 16) == 1)
  {
    if (*(a5 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) < 5u)
    {
      v10 = 0;
      v16 = 0xF000000000000000;
      goto LABEL_26;
    }

    v22 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      v23 = v45;
      v24 = v44;
      if (v22 != 2)
      {
        goto LABEL_22;
      }

      v27 = v44[2];
      v26 = v44[3];
      v25 = v26 - v27;
      if (!__OFSUB__(v26, v27))
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    else
    {
      v23 = v45;
      v24 = v44;
      if (!v22)
      {
        LODWORD(v25) = BYTE6(a4);
LABEL_23:
        v28 = v9;
        v29 = a5;
        v30 = sub_100090960(v23, v28, v25);
        v32 = v31;
        v33 = sub_1002B2694(v24, a4, v30, v31);
        if (v6)
        {
          v35 = v30;
          v36 = v32;
LABEL_32:
          sub_10006A178(v35, v36);
          return;
        }

        v10 = v33;
        v16 = v34;
        sub_10006A178(v30, v32);
        a5 = v29;
        v9 = v28;
LABEL_26:
        v17 = v9;
        if (qword_1005018F8 == -1)
        {
LABEL_27:
          v37 = a5;
          v38 = v10;
          v39 = v16;
          if (v16 >> 60 == 15)
          {
            v38 = v44;
            sub_100069E2C(v44, a4);
            v39 = a4;
          }

          sub_10006A2BC(v10, v16);
          v40 = sub_100090A8C(v45, v17, v38, v39);
          v42 = v41;
          sub_10006A178(v38, v39);
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E71A0(v40, v42, v37);
          sub_10006A2D0(v10, v16);
          v35 = v40;
          v36 = v42;
          goto LABEL_32;
        }

LABEL_34:
        swift_once();
        goto LABEL_27;
      }
    }

    if (__OFSUB__(HIDWORD(v24), v24))
    {
LABEL_36:
      __break(1u);
      return;
    }

    v25 = HIDWORD(v24) - v24;
LABEL_19:
    if ((v25 & 0x8000000000000000) == 0)
    {
      if (!(v25 >> 16))
      {
        goto LABEL_23;
      }

      __break(1u);
LABEL_22:
      LODWORD(v25) = 0;
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_36;
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
  }
}

void *sub_1000822C0(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v40 = _swiftEmptyArrayStorage;
  sub_10019F464(0, v2 & ~(v2 >> 63), 0);
  v3 = _swiftEmptyArrayStorage;
  if (v34)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v5 = *(v1 + 36);
  }

  v37 = result;
  v38 = v5;
  v39 = v34 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v31 = v1 + 56;
    v30 = v1 + 64;
    v33 = v1;
    v32 = v2;
    while (v6 < v2)
    {
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_40;
      }

      v9 = v37;
      v10 = v39;
      v35 = v38;
      v11 = sub_10008EDB4(v37, v38, v39, v1);
      sub_100068FC4(&unk_100507CD0, &unk_100414C50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100409900;
      *(inited + 32) = 1919247696;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = UUID.uuidString.getter();
      *(inited + 56) = v13;
      *(inited + 64) = 0x656E6F5A49535352;
      *(inited + 72) = 0xE800000000000000;
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      v14 = sub_1000E7974(v11);
      if (v14 == 2)
      {
        v15 = 0xE800000000000000;
        v16 = 0x64656C6261736944;
      }

      else
      {
        v36[0] = v14 & 1;
        v16 = String.init<A>(describing:)();
      }

      *(inited + 80) = v16;
      *(inited + 88) = v15;
      v17 = sub_1000910F0(inited);
      swift_setDeallocating();
      sub_100068FC4(&unk_100504020, &qword_100409CC0);
      swift_arrayDestroy();

      v40 = v3;
      v19 = v3[2];
      v18 = v3[3];
      if (v19 >= v18 >> 1)
      {
        result = sub_10019F464((v18 > 1), v19 + 1, 1);
        v3 = v40;
      }

      v3[2] = v19 + 1;
      v3[v19 + 4] = v17;
      if (v34)
      {
        v1 = v33;
        if (!v10)
        {
          goto LABEL_45;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v32;
        sub_100068FC4(&qword_100502C08, &qword_100409CC8);
        v7 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v7(v36, 0);
        if (v6 == v32)
        {
LABEL_37:
          sub_1000937D4(v37, v38, v39);
          return v3;
        }
      }

      else
      {
        v1 = v33;
        if (v10)
        {
          goto LABEL_46;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        v20 = 1 << *(v33 + 32);
        if (v9 >= v20)
        {
          goto LABEL_41;
        }

        v21 = v9 >> 6;
        v22 = *(v31 + 8 * (v9 >> 6));
        if (((v22 >> v9) & 1) == 0)
        {
          goto LABEL_42;
        }

        if (*(v33 + 36) != v35)
        {
          goto LABEL_43;
        }

        v23 = v22 & (-2 << (v9 & 0x3F));
        if (v23)
        {
          v20 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = v21 << 6;
          v25 = v21 + 1;
          v26 = (v30 + 8 * v21);
          while (v25 < (v20 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              result = sub_1000937D4(v9, v35, 0);
              v20 = __clz(__rbit64(v27)) + v24;
              goto LABEL_36;
            }
          }

          result = sub_1000937D4(v9, v35, 0);
        }

LABEL_36:
        v29 = *(v33 + 36);
        v37 = v20;
        v38 = v29;
        v39 = 0;
        v2 = v32;
        if (v6 == v32)
        {
          goto LABEL_37;
        }
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
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_10008272C()
{
  type metadata accessor for Lyon(0);
  swift_allocObject();
  result = sub_10008276C();
  qword_10051B188 = result;
  return result;
}

uint64_t sub_10008276C()
{
  *(v0 + 16) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced4Lyon_maxMessageLength) = 2013;
  *(v0 + OBJC_IVAR____TtC10seserviced4Lyon_maxMessageTimeoutExtenstions) = 3;
  *(v0 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers) = _swiftEmptyArrayStorage;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_1000937D0;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004C5D80;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_1000828C4()
{
  v1 = *(v0 + 16);
  v13 = &type metadata for Bool;
  LOBYTE(v12) = v1;
  sub_100075D50(&v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v11, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v3 = sub_1000CAAC4();
  v4 = sub_1000822C0(v3);

  v13 = sub_100068FC4(&unk_100504010, &unk_100409CB0);
  *&v12 = v4;
  sub_100075D50(&v12, v11);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v11, 0x657463656E6E6F63, 0xEE00737265655064, v5);
  if (qword_100501BA8 != -1)
  {
    swift_once();
  }

  v13 = &type metadata for Double;
  *&v12 = qword_10051B658;
  sub_100075D50(&v12, v11);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v11, 0xD000000000000015, 0x8000000100461E40, v6);
  if (qword_100501BB0 != -1)
  {
    swift_once();
  }

  v13 = &type metadata for Double;
  *&v12 = qword_10051B660;
  sub_100075D50(&v12, v11);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v11, 0xD000000000000015, 0x8000000100461E60, v7);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = sub_100015DA0("lyon.state", isa);

  return v9;
}

void sub_100082B94()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  inited = (*(v3 + 8))(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    v20 = inited;
    swift_once();
    inited = v20;
    goto LABEL_11;
  }

  v10 = *(v1 + 16);
  v11 = Logger.logObject.getter();
  if (v10)
  {
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Lyon is already running", v13, 2u);
    }

    return;
  }

  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v11, v14, "Starting Lyon", v15, 2u);
  }

  type metadata accessor for LyonStoreDelegate();
  inited = swift_initStaticObject();
  if (qword_1005019E8 != -1)
  {
    goto LABEL_21;
  }

LABEL_11:
  v16 = *(off_100504A68 + 3);
  __chkstk_darwin(inited);
  *&v21[-16] = v17;
  *&v21[-8] = v7;
  os_unfair_lock_lock(v16 + 8);
  sub_100093870(&v16[4]);
  os_unfair_lock_unlock(v16 + 8);
  if (qword_1005018E8 != -1)
  {
    swift_once();
  }

  sub_10006B5F0();
  if (qword_100501B58 != -1)
  {
    swift_once();
  }

  sub_100221D3C();
  if (qword_100501BF0 != -1)
  {
    swift_once();
  }

  sub_1002A0B30();
  if (qword_100501BD8 != -1)
  {
    swift_once();
  }

  sub_10027B91C();
  *(v1 + 16) = 1;
  v18 = type metadata accessor for LyonCoreAnalytics();
  sub_1002F80D4(v18, v19);
}

void sub_100082F6C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
LABEL_8:
    sub_100221F6C();
    if (qword_1005018E8 != -1)
    {
      swift_once();
    }

    sub_10006BDD8();
    if (qword_100501950 != -1)
    {
      swift_once();
    }

    sub_1000C6EAC();
    if (qword_100501CD8 != -1)
    {
      swift_once();
    }

    [qword_10050A248 invalidate];
    *(v1 + 16) = 0;
    return;
  }

  v8 = *(v1 + 16);
  v9 = Logger.logObject.getter();
  if (v8 == 1)
  {
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Stopping Lyon", v11, 2u);
    }

    *(v1 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers) = _swiftEmptyArrayStorage;

    if (qword_100501B58 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v9, v12, "Lyon is not running", v13, 2u);
  }
}

void sub_1000832B0(int64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v126 = a3;
  v125 = type metadata accessor for UUID();
  v7 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_151;
  }

LABEL_2:
  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
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
    goto LABEL_159;
  }

  if (*(v4 + 16) != 1)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not running", v22, 2u);
    }

    return;
  }

  v15 = v126 + OBJC_IVAR____TtC10seserviced4Peer_buffer;
  v17 = *(v126 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
  v133 = *(v126 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v16 = v133;
  v134 = v17;
  *(v126 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
  sub_10006A2BC(v16, v17);
  sub_10006A2D0(v16, v17);
  if (v17 >> 60 == 15 || (Data.append(_:)(), v18 = v134, v134 >> 60 == 15))
  {
    sub_100069E2C(a1, a2);
    v19 = a1;
    v18 = a2;
  }

  else
  {
    v19 = v133;
    sub_100069E2C(v133, v134);
  }

  *&v132 = v19;
  *(&v132 + 1) = v18;
  v23 = OBJC_IVAR____TtC10seserviced4Lyon_logger;
  sub_100069E2C(a1, a2);
  v119 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v116 = v15;
  v118 = a2;
  v117 = a1;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = v27;
    *v27 = 134218240;
    v29 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v29 != 2)
      {
        v30 = 0;
        goto LABEL_23;
      }

      v32 = *(a1 + 16);
      v31 = *(a1 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (!v33)
      {
LABEL_23:
        *(v27 + 4) = v30;
        sub_10006A178(a1, a2);
        *(v28 + 12) = 2048;
        swift_beginAccess();
        v34 = v132;
        v35 = *(&v132 + 1) >> 62;
        if ((*(&v132 + 1) >> 62) > 1)
        {
          v36 = 0;
          if (v35 != 2)
          {
            goto LABEL_32;
          }

          v34 = *(v132 + 16);
          v37 = *(v132 + 24);
          v33 = __OFSUB__(v37, v34);
          v36 = v37 - v34;
          if (!v33)
          {
            goto LABEL_32;
          }

          __break(1u);
        }

        else if (!v35)
        {
          v36 = BYTE14(v132);
LABEL_32:
          *(v28 + 14) = v36;
          _os_log_impl(&_mh_execute_header, v24, v25, "%ld bytes received; %ld bytes including accumulated", v28, 0x16u);

          goto LABEL_33;
        }

        v33 = __OFSUB__(HIDWORD(v34), v34);
        v38 = HIDWORD(v34) - v34;
        if (v33)
        {
          goto LABEL_158;
        }

        v36 = v38;
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (!v29)
    {
      v30 = BYTE6(a2);
      goto LABEL_23;
    }

    LODWORD(v30) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_157;
    }

    v30 = v30;
    goto LABEL_23;
  }

  sub_10006A178(a1, a2);
LABEL_33:

  v39 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
  v122 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
  swift_beginAccess();
  v123 = v39;
  swift_beginAccess();
  v121 = (v7 + 16);
  v120 = (v7 + 8);
  v40 = v125;
  while (1)
  {
    v42 = *(&v132 + 1);
    v41 = v132;
    v43 = *(&v132 + 1) >> 62;
    if ((*(&v132 + 1) >> 62) > 1)
    {
      if (v43 != 2 || *(v132 + 16) == *(v132 + 24))
      {
LABEL_74:
        v66 = *(&v132 + 1);
        v65 = v132;
        goto LABEL_146;
      }
    }

    else
    {
      if (!v43)
      {
        if ((*(&v132 + 1) & 0xFF000000000000) == 0)
        {
          goto LABEL_74;
        }

        if (BYTE14(v132) < 4uLL)
        {
          goto LABEL_79;
        }

        goto LABEL_49;
      }

      if (v132 == v132 >> 32)
      {
        goto LABEL_74;
      }
    }

    if (v43 == 2)
    {
      v45 = *(v132 + 16);
      v44 = *(v132 + 24);
      v33 = __OFSUB__(v44, v45);
      v46 = v44 - v45;
      if (v33)
      {
        goto LABEL_153;
      }

      if (v46 < 4)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (__OFSUB__(DWORD1(v132), v132))
      {
        goto LABEL_154;
      }

      if (DWORD1(v132) - v132 < 4)
      {
LABEL_79:
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v67, v68))
        {
LABEL_116:

          v80 = *(&v132 + 1);
          v81 = v132;
          v130 = &type metadata for Data;
          v131 = &protocol witness table for Data;
          v129 = v132;
          v93 = sub_1000752B0(&v129, &type metadata for Data);
          v83 = *v93;
          v84 = v93[1];
          v94 = v84 >> 62;
          if ((v84 >> 62) <= 1)
          {
            if (!v94)
            {
              goto LABEL_118;
            }

            v104 = v83;
            v105 = v83 >> 32;
            v88 = v105 - v104;
            if (v105 >= v104)
            {
              sub_100069E2C(v81, v80);
              v80 = __DataStorage._bytes.getter();
              if (!v80)
              {
                goto LABEL_137;
              }

              v106 = __DataStorage._offset.getter();
              v83 = v104 - v106;
              if (!__OFSUB__(v104, v106))
              {
                goto LABEL_136;
              }

LABEL_164:
              __break(1u);
              goto LABEL_165;
            }

            goto LABEL_160;
          }

          if (v94 == 2)
          {
            v97 = *(v83 + 16);
            v98 = *(v83 + 24);
            sub_100069E2C(v81, v80);
            v67 = __DataStorage._bytes.getter();
            if (v67)
            {
              v99 = __DataStorage._offset.getter();
              if (__OFSUB__(v97, v99))
              {
LABEL_163:
                __break(1u);
                goto LABEL_164;
              }

              v67 = (v67 + v97 - v99);
            }

            v33 = __OFSUB__(v98, v97);
            v92 = v98 - v97;
            if (!v33)
            {
LABEL_124:
              v100 = __DataStorage._length.getter();
              if (v100 >= v92)
              {
                v101 = v92;
              }

              else
              {
                v101 = v100;
              }

              v102 = v67 + v101;
              if (v67)
              {
                v96 = v102;
              }

              else
              {
                v96 = 0;
              }

              v95 = v67;
              goto LABEL_132;
            }

            goto LABEL_161;
          }

LABEL_131:
          memset(v127, 0, 14);
          sub_100069E2C(v81, v80);
          v95 = v127;
          v96 = v127;
          goto LABEL_132;
        }

        v69 = swift_slowAlloc();
        *v69 = 134217984;
        v70 = v132;
        v71 = *(&v132 + 1) >> 62;
        if ((*(&v132 + 1) >> 62) <= 1)
        {
          if (v71)
          {
LABEL_112:
            v33 = __OFSUB__(HIDWORD(v70), v70);
            LODWORD(v70) = HIDWORD(v70) - v70;
            if (v33)
            {
              goto LABEL_166;
            }

            v70 = v70;
            goto LABEL_115;
          }

          v70 = BYTE14(v132);
LABEL_115:
          *(v69 + 4) = v70;
          _os_log_impl(&_mh_execute_header, v67, v68, "Got partial data of size %ld < header size", v69, 0xCu);

          goto LABEL_116;
        }

LABEL_90:
        if (v71 == 2)
        {
          v79 = v70 + 16;
          v77 = *(v70 + 16);
          v78 = *(v79 + 8);
          v33 = __OFSUB__(v78, v77);
          v70 = v78 - v77;
          if (v33)
          {
            __break(1u);
            goto LABEL_94;
          }
        }

        else
        {
          v70 = 0;
        }

        goto LABEL_115;
      }
    }

LABEL_49:
    sub_100069E2C(v132, *(&v132 + 1));
    v9 = sub_100081B2C(v41, v42, 0, 0, 0);
    v47 = v132;
    sub_100069E2C(v132, *(&v132 + 1));
    v48 = sub_100081B2C(v47, *(&v47 + 1), 1, 0, 0);
    v49 = v132;
    sub_100069E2C(v132, *(&v132 + 1));
    v50 = sub_100090214(v49, *(&v49 + 1), 2, 0, 0);
    sub_10006A178(v49, *(&v49 + 1));
    v51 = v50;
    v7 = v50 + 4;
    if (v50 > 0x7D9u)
    {

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 134218240;
        *(v74 + 4) = v7;
        *(v74 + 12) = 2048;
        *(v74 + 14) = 2013;

        _os_log_impl(&_mh_execute_header, v72, v73, "Discarding message exceeding max size %ld > %ld", v74, 0x16u);
      }

      else
      {
      }

      goto LABEL_145;
    }

    v10 = *(&v132 + 1);
    a2 = v132;
    v52 = *(&v132 + 1) >> 62;
    if ((*(&v132 + 1) >> 62) > 1)
    {
      if (v52 != 2)
      {
        break;
      }

      v55 = *(v132 + 16);
      v54 = *(v132 + 24);
      v33 = __OFSUB__(v54, v55);
      v53 = v54 - v55;
      if (v33)
      {
        goto LABEL_155;
      }
    }

    else if (v52)
    {
      LODWORD(v53) = DWORD1(v132) - v132;
      if (__OFSUB__(DWORD1(v132), v132))
      {
        goto LABEL_156;
      }

      v53 = v53;
    }

    else
    {
      v53 = BYTE14(v132);
    }

    if (v53 < v7)
    {
      break;
    }

    v56 = v52;
    if (v52)
    {
      if (v52 == 2)
      {
        v57 = *(v132 + 16);
      }

      else
      {
        v57 = v132;
      }
    }

    else
    {
      v57 = 0;
    }

    v12 = (v57 + 4);
    if (__OFADD__(v57, 4))
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      swift_once();
      goto LABEL_2;
    }

    if (v52)
    {
      if (v52 == 2)
      {
        v56 = *(v132 + 16);
      }

      else
      {
        v56 = v132;
      }
    }

    v58 = v56 + 4;
    if (__OFADD__(v56, 4))
    {
      goto LABEL_148;
    }

    a1 = v58 + v51;
    if (__OFADD__(v58, v51))
    {
      goto LABEL_149;
    }

    if (a1 < v12)
    {
      goto LABEL_150;
    }

    sub_100069E2C(v132, *(&v132 + 1));
    v59 = Data.subdata(in:)();
    a1 = v60;
    sub_10006A178(a2, v10);
    v61 = v126;
    v62 = v124;
    (*v121)(v124, v126 + v123, v40);
    sub_100084214(v9, v48, v59, a1, v62, *&v61[v122], v61);
    sub_10006A178(v59, a1);
    (*v120)(v62, v40);
    v63 = v132;
    sub_100069E2C(v132, *(&v132 + 1));
    sub_100084D68(v7, v63, *(&v63 + 1), &v129);
    v64 = v132;
    v132 = v129;
    sub_10006A178(v64, *(&v64 + 1));
  }

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v67, v68))
  {
    goto LABEL_98;
  }

  v69 = swift_slowAlloc();
  *v69 = 134218240;
  v70 = v132;
  v71 = *(&v132 + 1) >> 62;
  if ((*(&v132 + 1) >> 62) <= 1)
  {
    if (!v71)
    {
      v70 = BYTE14(v132);
      goto LABEL_97;
    }

LABEL_94:
    v33 = __OFSUB__(HIDWORD(v70), v70);
    LODWORD(v70) = HIDWORD(v70) - v70;
    if (!v33)
    {
      v70 = v70;
      goto LABEL_97;
    }

LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
  }

  if (v71 != 2)
  {
    v70 = 0;
    goto LABEL_97;
  }

  v75 = *(v132 + 16);
  v76 = *(v132 + 24);
  v33 = __OFSUB__(v76, v75);
  v70 = v76 - v75;
  if (v33)
  {
    __break(1u);
    goto LABEL_90;
  }

LABEL_97:
  *(v69 + 4) = v70;
  *(v69 + 12) = 2048;
  *(v69 + 14) = v7;
  _os_log_impl(&_mh_execute_header, v67, v68, "Got partial data of size %ld expected %ld", v69, 0x16u);

LABEL_98:

  v80 = *(&v132 + 1);
  v81 = v132;
  v130 = &type metadata for Data;
  v131 = &protocol witness table for Data;
  v129 = v132;
  v82 = sub_1000752B0(&v129, &type metadata for Data);
  v83 = *v82;
  v84 = v82[1];
  v85 = v84 >> 62;
  if ((v84 >> 62) > 1)
  {
    goto LABEL_105;
  }

  if (!v85)
  {
LABEL_118:
    v127[0] = v83;
    LOWORD(v127[1]) = v84;
    BYTE2(v127[1]) = BYTE2(v84);
    BYTE3(v127[1]) = BYTE3(v84);
    BYTE4(v127[1]) = BYTE4(v84);
    BYTE5(v127[1]) = BYTE5(v84);
    sub_100069E2C(v81, v80);
    v95 = v127;
    v96 = v127 + BYTE6(v84);
LABEL_132:
    sub_10008E434(v95, v96, v128);
    v103 = v116;
    goto LABEL_144;
  }

  v86 = v83;
  v87 = v83 >> 32;
  v88 = v87 - v86;
  if (v87 < v86)
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  sub_100069E2C(v81, v80);
  v80 = __DataStorage._bytes.getter();
  if (!v80)
  {
    goto LABEL_137;
  }

  v81 = v84 & 0x3FFFFFFFFFFFFFFFLL;
  v89 = __DataStorage._offset.getter();
  v83 = v86 - v89;
  if (__OFSUB__(v86, v89))
  {
    __break(1u);
LABEL_105:
    if (v85 != 2)
    {
      goto LABEL_131;
    }

    v90 = *(v83 + 16);
    v91 = *(v83 + 24);
    sub_100069E2C(v81, v80);
    v68 = v84;
    v69 = __DataStorage._bytes.getter();
    v67 = v69;
    if (v69)
    {
      v68 = v84;
      v69 = __DataStorage._offset.getter();
      v70 = v90 - v69;
      if (__OFSUB__(v90, v69))
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      v67 = (v67 + v70);
    }

    v33 = __OFSUB__(v91, v90);
    v92 = v91 - v90;
    if (!v33)
    {
      goto LABEL_124;
    }

    __break(1u);
    goto LABEL_112;
  }

LABEL_136:
  v80 += v83;
LABEL_137:
  v103 = v116;
  v107 = __DataStorage._length.getter();
  if (v107 >= v88)
  {
    v108 = v88;
  }

  else
  {
    v108 = v107;
  }

  v109 = &v80[v108];
  if (v80)
  {
    v110 = v109;
  }

  else
  {
    v110 = 0;
  }

  sub_10008E434(v80, v110, v128);
LABEL_144:
  v111 = v128[0];
  v112 = v128[1];
  sub_1000752F4(&v129);
  v113 = *v103;
  v114 = v103[1];
  *v103 = v111;
  v103[1] = v112;
  sub_10006A2D0(v113, v114);
LABEL_145:
  v66 = *(&v132 + 1);
  v65 = v132;
LABEL_146:
  sub_10006A178(v65, v66);
  sub_10006A2D0(v133, v134);
}

void sub_100084214(uint64_t a1, char **a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, char *a7)
{
  v8 = v7;
  v99 = a5;
  v100 = a3;
  v101 = a4;
  v12 = a1;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_55:
    swift_once();
LABEL_41:
    v103[0] = v8;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {
      v81 = v102;
      if (BYTE1(v102))
      {
        v82 = 256;
      }

      else
      {
        v82 = 0;
      }
    }

    else
    {
      v81 = 0;
      v82 = 0;
    }

    sub_100080E48(a7, v82 | v81);

    return;
  }

  v98 = a6;
  v20 = OBJC_IVAR____TtC10seserviced4Lyon_logger;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v96 = v20;
    v24 = v8;
    v25 = v23;
    v19 = swift_slowAlloc();
    v103[0] = v19;
    *v25 = 136315650;
    v26 = sub_10024F9F4(v12);
    v28 = sub_1002FFA0C(v26, v27, v103);

    *(v25 + 4) = v28;
    *(v25 + 12) = 256;
    *(v25 + 14) = a2;
    *(v25 + 15) = 2080;

    v29 = UUID.uuidString.getter();
    v31 = v30;

    v32 = sub_1002FFA0C(v29, v31, v103);

    *(v25 + 17) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Received type %s id %hhu from peer %s", v25, 0x19u);
    swift_arrayDestroy();

    v8 = v24;
  }

  v33 = v101;
  if (a7[OBJC_IVAR____TtC10seserviced8LyonPeer_hasError + 1] << 8 != 512)
  {

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v38 = 136315394;

      v39 = UUID.uuidString.getter();
      v41 = v40;

      v42 = sub_1002FFA0C(v39, v41, v103);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v43 = sub_10024F9F4(v12);
      v45 = sub_1002FFA0C(v43, v44, v103);

      *(v38 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s already errored out, ignoring %s message", v38, 0x16u);
      swift_arrayDestroy();
    }

    return;
  }

  v34 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  v35 = a7[OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState];
  v97 = v8;
  if (v35 < 5)
  {
    v19 = v100;
    sub_100069E2C(v100, v101);
    v8 = 0;
    v22 = v33;
    goto LABEL_26;
  }

  v46 = v101 >> 62;
  if ((v101 >> 62) <= 1)
  {
    if (!v46)
    {
      v47 = BYTE6(v101);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v46 != 2)
  {
    v47 = 0;
    goto LABEL_22;
  }

  v49 = *(v100 + 16);
  v48 = *(v100 + 24);
  v50 = __OFSUB__(v48, v49);
  v47 = v48 - v49;
  if (v50)
  {
    __break(1u);
LABEL_19:
    LODWORD(v47) = HIDWORD(v100) - v100;
    if (__OFSUB__(HIDWORD(v100), v100))
    {
      __break(1u);
LABEL_61:
      swift_once();
LABEL_50:
      v58 = v8;
      sub_1000E0578(a2, v19, v22, a7);
      if (!v8)
      {
        goto LABEL_31;
      }

LABEL_37:
      v8 = v58;
      v72 = v19;
      goto LABEL_38;
    }

    v47 = v47;
  }

LABEL_22:
  v51 = v47 - 16;
  if (__OFSUB__(v47, 16))
  {
    __break(1u);
    goto LABEL_57;
  }

  if ((v51 & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v51 >> 16)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_30:
    v58 = v8;
    sub_10006D880(a2, v19, v22, a7, v99, v98, 3);
    if (!v8)
    {
LABEL_31:
      sub_10006A178(v19, v22);
      return;
    }

    goto LABEL_37;
  }

  v96 = v34;
  v52 = sub_100090960(v12, a2, v51);
  v54 = v53;
  v8 = 0;
  v55 = sub_1002B1910(v100, v33, v52, v53);
  v56 = v52;
  v22 = v57;
  sub_10006A178(v56, v54);
  v19 = v55;
  v34 = v96;
LABEL_26:
  switch(v12)
  {
    case 2:
      sub_100084EB8(a2, v19, v22, a7);
      goto LABEL_31;
    case 1:
      if (a7[v34] < 5u)
      {
        v59 = v19;

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = v22;
          v63 = swift_slowAlloc();
          v103[0] = swift_slowAlloc();
          *v63 = 136315394;
          LOBYTE(v102) = a7[v34];
          v64 = String.init<A>(describing:)();
          v66 = sub_1002FFA0C(v64, v65, v103);

          *(v63 + 4) = v66;
          *(v63 + 12) = 2080;

          v67 = UUID.uuidString.getter();
          v69 = v68;

          v70 = sub_1002FFA0C(v67, v69, v103);

          *(v63 + 14) = v70;
          _os_log_impl(&_mh_execute_header, v60, v61, "Cannot process UWB message in state %s for %s", v63, 0x16u);
          swift_arrayDestroy();

          v22 = v62;
        }

        sub_1000755A4();
        v8 = swift_allocError();
        *v71 = 0;
        swift_willThrow();
        v72 = v59;
LABEL_38:
        sub_10006A178(v72, v22);

        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v103[0] = v76;
          *v75 = 136315138;

          v77 = UUID.uuidString.getter();
          v79 = v78;

          v80 = sub_1002FFA0C(v77, v79, v103);

          *(v75 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v73, v74, "Could not process message for %s, disconnecting", v75, 0xCu);
          sub_1000752F4(v76);
        }

        if (qword_1005018F8 == -1)
        {
          goto LABEL_41;
        }

        goto LABEL_55;
      }

      if (qword_100501950 == -1)
      {
        goto LABEL_50;
      }

      goto LABEL_61;
    case 0:
      if (qword_1005018E8 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_59;
  }

  v83 = v100;
  sub_100069E2C(v100, v33);
  v84 = v83;
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.info.getter();
  sub_10006A178(v84, v33);
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v101 = v22;
    v88 = v87;
    v99 = swift_slowAlloc();
    v103[0] = v99;
    *v88 = 16777986;
    *(v88 + 4) = v12;
    *(v88 + 5) = 256;
    *(v88 + 7) = a2;
    *(v88 + 8) = 2080;
    v102 = sub_100288788(v84, v33);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v89 = BidirectionalCollection<>.joined(separator:)();
    v91 = v90;

    v92 = sub_1002FFA0C(v89, v91, v103);

    *(v88 + 10) = v92;
    _os_log_impl(&_mh_execute_header, v85, v86, "Ignoring unknown message type %hhu id %hhu payload %s", v88, 0x12u);
    sub_1000752F4(v99);

    v93 = v19;
    v94 = v101;
  }

  else
  {
    v93 = v19;
    v94 = v22;
  }

  sub_10006A178(v93, v94);
}

unint64_t sub_100084D68@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_10008E6F8(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_10008E694(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = Data._Representation.subscript.getter();
    v16 = v15;
    result = sub_10006A178(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

void sub_100084EB8(uint64_t a1, unint64_t a2, unint64_t a3, __objc2_class **a4)
{
  v25 = a3;
  v24 = a4;
  v5 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    v17 = sub_10024FD20(v5);
    v23 = a2;
    v19 = sub_1002FFA0C(v17, v18, &v26);
    a2 = v23;

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "Processing Notification %s", v15, 0xCu);
    sub_1000752F4(v16);
  }

  if (v5 > 1u)
  {
    if (v5 == 2)
    {
      sub_100085224(a2, v25, v24);
      return;
    }

    if (v5 == 3)
    {
      sub_100086414(a2, v25, v24);
      return;
    }
  }

  else
  {
    if (!v5)
    {
      sub_1000872A4(a2, v25, v24);
      return;
    }

    if (v5 == 1)
    {
      if (qword_100501950 == -1)
      {
LABEL_10:
        sub_1000C7390(a2, v25, v24);
        return;
      }

LABEL_20:
      swift_once();
      goto LABEL_10;
    }
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Ignoring unknown notification id", v22, 2u);
  }
}

void sub_100085224(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v170 = v8;
  v171 = v9;
  __chkstk_darwin(v8);
  v169 = v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  v19(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_75;
  }

  v17 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  v21 = a3;
  if (*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) < 5u)
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      *v24 = 136315394;
      LOBYTE(v175) = *(v21 + v17);
      v25 = String.init<A>(describing:)();
      v27 = sub_1002FFA0C(v25, v26, &v173);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;

      v28 = UUID.uuidString.getter();
      v30 = v29;

      v31 = sub_1002FFA0C(v28, v30, &v173);

      *(v24 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "Cannot process status changed message in state %s for %s", v24, 0x16u);
      swift_arrayDestroy();
    }

LABEL_16:
    sub_1000755A4();
    swift_allocError();
    *v48 = 0;
    swift_willThrow();
    return;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v33 = [objc_opt_self() TLVWithData:isa];

  if (!v33)
  {
    sub_100069E2C(a1, a2);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v173 = v172;
      *v40 = 136315394;
      v175 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v41 = BidirectionalCollection<>.joined(separator:)();
      v43 = v42;

      v44 = sub_1002FFA0C(v41, v43, &v173);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10009388C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = sub_1002FFA0C(v45, v46, &v173);

      *(v40 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "Could not process status changed notification %s from peer %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_16;
  }

  a2 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier + 8);
  if (a2 >> 60 != 15)
  {
    v167 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier);
    sub_100069E2C(v167, a2);
    v168 = v33;
    v49 = [v33 value];
    if (v49)
    {
      v50 = v49;
      v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_100081B2C(v51, v53, 0, 0, 0);
      if (v3)
      {
        sub_10006A2D0(v167, a2);

        return;
      }

      v166 = v54;
      v55 = [v168 value];
      if (v55)
      {
        v56 = v55;
        v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        v60 = sub_100081B2C(v57, v59, 1, 0, 0);
        v18 = a3;
        v61 = v60;
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.info.getter();
        v64 = os_log_type_enabled(v62, v63);
        LODWORD(v162) = v61;
        if (v64)
        {
          v65 = swift_slowAlloc();
          LODWORD(v163) = v63;
          v66 = v65;
          v165 = swift_slowAlloc();
          v173 = v165;
          *v66 = 136315394;
          v67 = sub_100250068(v61);
          v69 = sub_1002FFA0C(v67, v68, &v173);

          *(v66 + 4) = v69;
          *(v66 + 12) = 2080;
          v70 = sub_1002501E4(v166);
          v72 = sub_1002FFA0C(v70, v71, &v173);

          *(v66 + 14) = v72;
          _os_log_impl(&_mh_execute_header, v62, v163, "Received status update %s from source %s", v66, 0x16u);
          swift_arrayDestroy();
        }

        a3 = OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus;
        v73 = *(v18 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus);
        if (v73 == 129)
        {
          v74 = v162;
          LODWORD(v165) = v162 != 1;
          v20 = v166;
        }

        else
        {
          v20 = v166;
          v74 = v162;
          v75 = v73 != 128 || v162 != 0;
          LODWORD(v165) = v75;
        }

        *(v18 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus) = v74;
        if (qword_100501950 == -1)
        {
LABEL_31:
          v153 = qword_10051B268;
          sub_1000C8420(v18, v20);
          v76 = *(v18 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
          v77 = *(v18 + v17);
          v78 = *(*(v172 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers) + 16);
          v79 = v18;
          v80 = *(v18 + a3);
          v81 = *(v79 + OBJC_IVAR____TtC10seserviced8LyonPeer_unsolicitedReaderStatusReportingValue);
          v164 = v79;
          LODWORD(v172) = *(v79 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatusAtConnection);
          if (v165 && (v80 | 0x80) == 0x81)
          {
            if (v166 == 4)
            {
              v82 = v76[42];
              v83 = __CFADD__(v82, 1);
              v84 = v82 + 1;
              if (!v83)
              {
                v76[42] = v84;
                v85 = qword_100501CD0;

                if (v85 == -1)
                {
LABEL_36:
                  v86 = *(off_10050A240 + 19);
                  v83 = __CFADD__(v86, 1);
                  v87 = v86 + 1;
                  if (v83)
                  {
                    __break(1u);
                    goto LABEL_80;
                  }

                  *(off_10050A240 + 19) = v87;
LABEL_41:
                  if (v77 < 0xA && ((0x37Fu >> v77) & 1) != 0)
                  {
                    v90 = dword_100409E04[v77];
                  }

                  else if (v76[42])
                  {
                    v90 = 9;
                  }

                  else
                  {
                    v90 = 8;
                  }

                  LODWORD(v154) = v90;
                  v91 = v166;
                  LODWORD(v162) = v81;
                  v163 = a3;
                  if (v78)
                  {
                    v76[23] = 2;
                  }

                  v92 = (v91 - 1);
                  if (v92 < 7)
                  {
                    v93 = v92 + 1;
                  }

                  else
                  {
                    v93 = 0;
                  }

                  LODWORD(v161) = v93;
                  v158 = objc_opt_self();
                  LODWORD(v160) = v76[23];
                  v94 = v76[25];
                  LODWORD(v159) = v76[26];
                  sub_1000C0AC8(2u, v94);
                  LODWORD(v157) = v95;
                  sub_1000C0AC8(2u, v76[19]);
                  LODWORD(v156) = v96;
                  sub_1000C0AC8(2u, v76[6]);
                  LODWORD(v155) = v97;

                  v98 = String._bridgeToObjectiveC()();

                  v99 = String._bridgeToObjectiveC()();

                  v100 = String._bridgeToObjectiveC()();

                  sub_10004F508(v158, v154, v162, v172, v80, v161, v160, v159, v157, v156, v155, v98, v99, v100);

                  sub_1002FA668();

                  if ((v165 & 1) == 0)
                  {
                    v78 = v168;
                    goto LABEL_73;
                  }

                  v103 = v164;
                  v104 = *(v164 + v163);
                  v105 = 0xD000000000000032;
                  v106 = "cwg.event.did.unlock";
                  if (v104 <= 1)
                  {
                    if (*(v164 + v163))
                    {
LABEL_60:
                      v106 = "cwg.event.did.status.update";
                      v105 = 0xD000000000000034;
                    }
                  }

                  else
                  {
                    if (v104 == 2)
                    {
                      v106 = "Illegal read size ";
                      v105 = 0xD000000000000031;
                      goto LABEL_62;
                    }

                    if (v104 != 128)
                    {
                      if (v104 != 129)
                      {
LABEL_63:
                        v78 = v168;
                        if (v104 > 127)
                        {
                          if (v104 == 129)
                          {
                            goto LABEL_70;
                          }

                          if (v104 != 128)
                          {
                            goto LABEL_73;
                          }
                        }

                        else if (v104)
                        {
                          if (v104 != 1)
                          {
                            goto LABEL_73;
                          }

LABEL_70:
                          if (v166 == 4)
                          {
                            if (qword_100501BF0 == -1)
                            {
LABEL_72:
                              sub_1002A716C(v101, v102);
                              goto LABEL_73;
                            }

LABEL_80:
                            v101 = swift_once();
                            goto LABEL_72;
                          }

LABEL_73:
                          sub_10006A2D0(v167, a2);

                          return;
                        }

                        sub_1000C8E3C(v103);
                        goto LABEL_73;
                      }

                      goto LABEL_60;
                    }
                  }

LABEL_62:
                  v156 = v106;
                  v158 = v105;
                  v172 = "Update Aliro Versions";
                  v107 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
                  v154 = v108;
                  v155 = v107;
                  v165 = v103 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier;
                  v109 = *(v103 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
                  v147 = *(v103 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
                  v110 = v147;
                  v148 = v109;
                  v162 = sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_100409A40;
                  v161 = 0x8000000100461D10;
                  *(inited + 32) = 0xD000000000000010;
                  v146[1] = inited + 32;
                  *(inited + 40) = 0x8000000100461D10;
                  sub_10006A2BC(v109, v110);
                  v112 = sub_100288788(v167, a2);
                  v160 = v4;
                  v173 = v112;
                  v152 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                  v151 = sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
                  v113 = BidirectionalCollection<>.joined(separator:)();
                  v115 = v114;

                  *(inited + 48) = v113;
                  *(inited + 56) = v115;
                  *(inited + 72) = &type metadata for String;
                  *(inited + 80) = 0x6D617473656D6974;
                  *(inited + 88) = 0xE900000000000070;
                  v173 = 0;
                  v174 = 0xE000000000000000;
                  v116 = v169;
                  Date.init()();
                  Date.timeIntervalSince1970.getter();
                  v117 = *(v171 + 8);
                  v171 += 8;
                  v149 = v117;
                  v117(v116, v170);
                  Double.write<A>(to:)();
                  v118 = v174;
                  *(inited + 96) = v173;
                  *(inited + 104) = v118;
                  v159 = 0x8000000100461EF0;
                  v157 = 0xD000000000000013;
                  *(inited + 120) = &type metadata for String;
                  *(inited + 128) = 0xD000000000000013;
                  *(inited + 136) = 0x8000000100461EF0;
                  v119 = v166;
                  LOBYTE(v173) = v166;
                  v120 = dispatch thunk of CustomStringConvertible.description.getter();
                  *(inited + 168) = &type metadata for String;
                  *(inited + 144) = v120;
                  *(inited + 152) = v121;
                  v122 = sub_10008FFDC(inited);
                  swift_setDeallocating();
                  v150 = sub_100068FC4(&qword_100507D30, &unk_100409C90);
                  swift_arrayDestroy();
                  v123 = v155;
                  v124 = v154;
                  v126 = v147;
                  v125 = v148;
                  sub_1003375E0(v158, v156 | 0x8000000000000000, v155, v154, v148, v147, v122);

                  sub_10006A2D0(v125, v126);
                  sub_10006A2D0(v123, v124);
                  v158 = "lockOperationSource";
                  v172 = sub_10013044C(0xD000000000000012, v172 | 0x8000000000000000);
                  v128 = *(v165 + 8);
                  v155 = *v165;
                  v127 = v155;
                  v156 = v129;
                  v165 = v128;
                  v130 = swift_initStackObject();
                  *(v130 + 16) = xmmword_1004099F0;
                  *(v130 + 32) = 0xD000000000000010;
                  v162 = v130 + 32;
                  *(v130 + 40) = v161;
                  sub_10006A2BC(v127, v128);
                  v173 = sub_100288788(v167, a2);
                  v131 = BidirectionalCollection<>.joined(separator:)();
                  v133 = v132;

                  *(v130 + 48) = v131;
                  *(v130 + 56) = v133;
                  *(v130 + 72) = &type metadata for String;
                  *(v130 + 80) = 0x6D617473656D6974;
                  *(v130 + 88) = 0xE900000000000070;
                  v173 = 0;
                  v174 = 0xE000000000000000;
                  v134 = v169;
                  Date.init()();
                  Date.timeIntervalSince1970.getter();
                  v149(v134, v170);
                  Double.write<A>(to:)();
                  v135 = v174;
                  *(v130 + 96) = v173;
                  *(v130 + 104) = v135;
                  *(v130 + 120) = &type metadata for String;
                  *(v130 + 128) = 0x746174536B636F6CLL;
                  *(v130 + 136) = 0xEA00000000007375;
                  LOBYTE(v173) = *(v164 + v163);
                  *(v130 + 144) = dispatch thunk of CustomStringConvertible.description.getter();
                  *(v130 + 152) = v136;
                  v137 = v157;
                  *(v130 + 168) = &type metadata for String;
                  *(v130 + 176) = v137;
                  *(v130 + 184) = v159;
                  LOBYTE(v173) = v119;
                  v138 = dispatch thunk of CustomStringConvertible.description.getter();
                  *(v130 + 216) = &type metadata for String;
                  *(v130 + 192) = v138;
                  *(v130 + 200) = v139;
                  v140 = sub_10008FFDC(v130);
                  swift_setDeallocating();
                  swift_arrayDestroy();
                  v141 = v172;
                  v143 = v155;
                  v142 = v156;
                  v144 = v165;
                  sub_1003375E0(0xD00000000000003BLL, v158 | 0x8000000000000000, v172, v156, v155, v165, v140);
                  v103 = v164;

                  sub_10006A2D0(v143, v144);
                  v101 = sub_10006A2D0(v141, v142);
                  v104 = *(v103 + v163);
                  goto LABEL_63;
                }

LABEL_78:
                swift_once();
                goto LABEL_36;
              }

              __break(1u);
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

            v88 = v76[43];
            v83 = __CFADD__(v88, 1);
            v89 = v88 + 1;
            if (v83)
            {
              goto LABEL_77;
            }

            v76[43] = v89;
          }

          goto LABEL_41;
        }

LABEL_75:
        v145 = v20;
        swift_once();
        v20 = v145;
        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Received status changed notification for unknown reader identifier, likely before auth is completed", v36, 2u);
  }

  sub_1000755A4();
  swift_allocError();
  *v37 = 0;
  swift_willThrow();
}

void sub_100086414(unint64_t a1, unint64_t a2, __objc2_class **a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (qword_1005018F8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  sub_100081644(0);
  if (v3)
  {
    return;
  }

  v14 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  if (*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) - 3 > 1)
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v19 = 136315394;
      LOBYTE(v107) = *(a3 + v14);
      v20 = String.init<A>(describing:)();
      v22 = sub_1002FFA0C(v20, v21, &v108);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;

      v23 = UUID.uuidString.getter();
      v25 = v24;

      v26 = sub_1002FFA0C(v23, v25, &v108);

      *(v19 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Cannot process access protocol completed in state %s for %s", v19, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000755A4();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    return;
  }

  v15 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(a2);
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_20;
  }

  v29 = *(a1 + 16);
  v28 = *(a1 + 24);
  v30 = __OFSUB__(v28, v29);
  v16 = v28 - v29;
  if (v30)
  {
    __break(1u);
LABEL_17:
    LODWORD(v16) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_65:
      __break(1u);
LABEL_66:
      swift_once();
      goto LABEL_39;
    }

    v16 = v16;
  }

LABEL_20:
  v31 = v16 - 16;
  if (__OFSUB__(v16, 16))
  {
    __break(1u);
    goto LABEL_63;
  }

  if ((v31 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v31 >> 16)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v32 = sub_100090960(2, 3, v31);
  v34 = v33;
  v35 = sub_1002B1910(a1, a2, v32, v33);
  v37 = v36;
  sub_10006A178(v32, v34);
  v106 = 0;
  v38 = OBJC_IVAR____TtC10seserviced4Lyon_logger;
  sub_100069E2C(v35, v37);
  v103 = v38;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  sub_10006A178(v35, v37);
  v41 = os_log_type_enabled(v39, v40);
  v102 = v14;
  v104 = v35;
  v105 = v37;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v108 = v101;
    *v42 = 136315138;
    v43 = v106;
    v44 = sub_100288788(v35, v37);
    v106 = v43;
    v107 = v44;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v45 = BidirectionalCollection<>.joined(separator:)();
    v47 = v46;
    v37 = v105;

    v48 = sub_1002FFA0C(v45, v47, &v108);
    v35 = v104;

    *(v42 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v39, v40, "Access Protocol Completed payload : %s", v42, 0xCu);
    sub_1000752F4(v101);
  }

  sub_100069E2C(v35, v37);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v35, v37);
  v4 = [objc_opt_self() TLVWithData:isa];

  if (!v4)
  {
    sub_100069E2C(v35, v37);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    sub_10006A178(v35, v37);

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v108 = v103;
      *v59 = 136315394;
      v107 = sub_100288788(v35, v37);
      v60 = v35;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v61 = BidirectionalCollection<>.joined(separator:)();
      v63 = v62;

      v64 = sub_1002FFA0C(v61, v63, &v108);
      v35 = v60;

      *(v59 + 4) = v64;
      *(v59 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10009388C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = v105;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = sub_1002FFA0C(v65, v66, &v108);

      *(v59 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v57, v58, "Could not process access protocol completed notification %s from peer %s", v59, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000755A4();
    swift_allocError();
    *v68 = 0;
    swift_willThrow();
    v69 = v35;
    v70 = v37;
    goto LABEL_32;
  }

  v50 = [v4 value];
  if (!v50)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

  v51 = v50;
  v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v55 = v106;
  v56 = sub_100081B2C(v52, v54, 1, 0, 0);
  if (v55)
  {

    sub_10006A178(v104, v105);
    return;
  }

  v71 = OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus;
  *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus) = v56;
  *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatusAtConnection) = v56;
  v72 = [v4 value];
  if (!v72)
  {
    goto LABEL_68;
  }

  v73 = v72;
  v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;

  v77 = sub_100081B2C(v74, v76, 0, 0, 0);
  v11 = 0;
  v78 = OBJC_IVAR____TtC10seserviced8LyonPeer_unsolicitedReaderStatusReportingValue;
  *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_unsolicitedReaderStatusReportingValue) = v77 >> 5;

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 16777728;
    *(v81 + 4) = *(a3 + v71);
    *(v81 + 5) = 256;
    *(v81 + 7) = *(a3 + v78);

    _os_log_impl(&_mh_execute_header, v79, v80, "Received status update %hhu and reader status reporting value %hhu", v81, 8u);
  }

  else
  {
  }

  a2 = v102;
  if (*(a3 + v78) != 1)
  {

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v108 = v106;
      *v84 = 16777730;
      *(v84 + 4) = *(a3 + v78);

      *(v84 + 5) = 2080;
      type metadata accessor for UUID();
      sub_10009388C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = sub_1002FFA0C(v85, v86, &v108);

      *(v84 + 7) = v87;
      _os_log_impl(&_mh_execute_header, v82, v83, "unsolicitedReaderStatusReporting value %hhu is not 1 as expected for %s", v84, 0xFu);
      sub_1000752F4(v106);

      a2 = v102;
    }

    else
    {
    }

    goto LABEL_43;
  }

  if (qword_100501950 != -1)
  {
    goto LABEL_66;
  }

LABEL_39:
  sub_1000C8420(a3, 0);
LABEL_43:
  v88 = v104;
  *(a3 + a2) = 5;
  if (*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4))
  {

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v108 = v92;
      *v91 = 136315138;
      type metadata accessor for UUID();
      sub_10009388C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = sub_1002FFA0C(v93, v94, &v108);

      *(v91 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v89, v90, "No cached uwb session id for %s", v91, 0xCu);
      sub_1000752F4(v92);
    }

    v96 = v105;
    sub_1000755A4();
    swift_allocError();
    *v97 = 0;
    swift_willThrow();

    v69 = v88;
    v70 = v96;
LABEL_32:
    sub_10006A178(v69, v70);
    return;
  }

  v98 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID);
  if (qword_1005018E8 != -1)
  {
    swift_once();
  }

  v99 = qword_10051B168;
  [*(&(*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_stepUpHelper))->isa + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stsHelper) invalidate];
  if ((*(v99 + OBJC_IVAR____TtC10seserviced6LyonSE_enableI2CLogging) & 1) == 0)
  {
    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    sub_100194774(a3);
  }

  if (qword_100501950 != -1)
  {
    swift_once();
  }

  sub_1000C8608(a3, v98);
  if (v11)
  {
  }

  else
  {
    sub_1000C8B8C(a3);

    sub_1002F846C();
  }

  sub_10006A178(v88, v105);
}

void sub_1000872A4(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  sub_100069E2C(a1, a2);
  v14 = sub_100090214(a1, a2, 0, 0, 1);
  if (v4)
  {
    sub_10006A178(a1, a2);
  }

  else
  {
    v15 = v14;
    sub_10006A178(a1, a2);
    if (!v15)
    {

      v69 = v3;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v71 = v42;
        *v41 = 136315138;

        v43 = UUID.uuidString.getter();
        v45 = v44;

        v46 = sub_1002FFA0C(v43, v45, &v71);

        *(v41 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v39, v40, "Received busy subevent from peer %s", v41, 0xCu);
        sub_1000752F4(v42);
      }

      if (*(*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension) + 64) <= 2u)
      {
        sub_10025D59C(0, v47);
        v48 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
        v49 = *(v48 + 72);
        v50 = __CFADD__(v49, 1);
        v51 = v49 + 1;
        if (!v50)
        {
          *(v48 + 72) = v51;
          return;
        }

        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v71 = v63;
        *v62 = 134218242;
        *(v62 + 4) = 3;

        *(v62 + 12) = 2080;

        v64 = UUID.uuidString.getter();
        v66 = v65;

        v67 = sub_1002FFA0C(v64, v66, &v71);

        *(v62 + 14) = v67;
        _os_log_impl(&_mh_execute_header, v60, v61, "Received more than %ld busy subevent from peer %s, disconnecting", v62, 0x16u);
        sub_1000752F4(v63);
      }

      else
      {
      }

LABEL_15:
      sub_1000755A4();
      swift_allocError();
      *v34 = 0;
      swift_willThrow();
      return;
    }
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [objc_opt_self() TLVWithData:isa];

  if (!v8)
  {
    sub_100069E2C(a1, a2);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v26 = 136315394;
      v70 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v27 = BidirectionalCollection<>.joined(separator:)();
      v29 = v28;

      v30 = sub_1002FFA0C(v27, v29, &v71);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10009388C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = sub_1002FFA0C(v31, v32, &v71);

      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Could not process event notification %s from peer %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_15;
  }

  v17 = [v8 tag];
  if (v17 > 0xFF)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
LABEL_28:
    sub_1000E67E4(a3);

    return;
  }

  if (v17 == 1)
  {
    v18 = [v8 value];
    if (v18)
    {
      v19 = v18;
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_100081B2C(v20, v22, 0, 0, 0);
      LODWORD(v69) = v23;

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v71 = v55;
        *v54 = 136315394;
        type metadata accessor for UUID();
        sub_10009388C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = sub_1002FFA0C(v56, v57, &v71);

        *(v54 + 4) = v58;
        *(v54 + 12) = 256;
        *(v54 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v52, v53, "Received general error from peer %s with value %hhu", v54, 0xFu);
        sub_1000752F4(v55);
      }

      v59 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
      *(v59 + 84) = 10;
      *(v59 + 88) = 0;
      *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = 0;
      if (qword_100501960 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v35 = v8;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 67109120;
    *(v38 + 4) = [v35 tag];

    _os_log_impl(&_mh_execute_header, v36, v37, "Unknown/Unsupported event TLV with tag: %u", v38, 8u);
  }

  else
  {
  }
}

uint64_t sub_100087E84(uint64_t a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    a1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC10seserviced4Peer_isConnected) != 1)
    {
LABEL_22:
      v32 = 0;
LABEL_23:

      return v32;
    }

    if (a2)
    {
      v12 = OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension;
      if (*(*(Strong + OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension) + 64) <= 2u)
      {
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "Timer ended for outgoing message, sending busy subevent", v15, 2u);
        }

        if (qword_1005018F8 != -1)
        {
          swift_once();
        }

        sub_100093260(a1);
        v32 = 1;
        goto LABEL_23;
      }

      swift_retain_n();
      v16 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v16, v24))
      {

LABEL_20:
        if (qword_1005018F8 == -1)
        {
LABEL_21:
          sub_100080E48(a1, 0);
          goto LABEL_22;
        }

LABEL_27:
        swift_once();
        goto LABEL_21;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 67109634;
      *(v25 + 4) = *(*(a1 + v12) + 64);

      *(v25 + 8) = 2080;

      v27 = UUID.uuidString.getter();
      v29 = v28;

      v30 = sub_1002FFA0C(v27, v29, &v34);

      *(v25 + 10) = v30;
      *(v25 + 18) = 2048;

      *(v25 + 20) = 3;

      _os_log_impl(&_mh_execute_header, v16, v24, "Sent %u busy subevent to peer %s, max events %ld disconnecting", v25, 0x1Cu);
      sub_1000752F4(v26);
    }

    else
    {

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v16, v17))
      {
LABEL_19:

        goto LABEL_20;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136315138;

      v20 = UUID.uuidString.getter();
      v22 = v21;

      v23 = sub_1002FFA0C(v20, v22, &v34);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Timer ended for incoming message, disconnecting %s", v18, 0xCu);
      sub_1000752F4(v19);
    }

    goto LABEL_19;
  }

  return 0;
}

void sub_10008843C(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *v9 = qword_10051B7F0;
    (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v11 = v10;
    LOBYTE(v10) = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v9, v6);
    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_48:
      swift_once();
      goto LABEL_5;
    }

    if (*(v3 + 16) != 1)
    {
      break;
    }

    if (qword_100501D78 != -1)
    {
      goto LABEL_48;
    }

LABEL_5:
    v12 = sub_1000CAAC4();
    if ((a1 & 1) == 0)
    {

      *(v3 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers) = _swiftEmptyArrayStorage;

      if (qword_100501B58 != -1)
      {
        swift_once();
      }

      v21 = qword_10051B588;
      if (*(qword_10051B588 + 17) == 1)
      {
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E8C60(843466310, 0xE400000000000000);
        *(v21 + 17) = 0;
        sub_1002263E4(v22);
      }

      return;
    }

    if (qword_100501BD8 != -1)
    {
      swift_once();
    }

    v13 = [a2 publicKeyIdentifier];
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10027BD00(v14, v16);
    v63 = a2;
    v23 = v17;
    sub_10006A178(v14, v16);
    *(v3 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers) = v23;

    v68 = 0;
    if ((v12 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer(0);
      sub_10009388C(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
      Set.Iterator.init(_cocoa:)();
      v12 = v70[3];
      v25 = v70[4];
      v26 = v70[5];
      a2 = v70[6];
      v6 = v70[7];
    }

    else
    {
      a2 = 0;
      v27 = -1 << *(v12 + 32);
      v25 = v12 + 56;
      v26 = ~v27;
      v28 = -v27;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v6 = v29 & *(v12 + 56);
    }

    v64 = v26;
    v7 = (v26 + 64) >> 6;
    v9 = &OBJC_IVAR____TtC10seserviced4Peer_isConnected;
    *&v24 = 136315394;
    v62 = v24;
    v65 = v3;
    v66 = v12;
    while (1)
    {
      a1 = a2;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

      v34 = __CocoaSet.Iterator.next()();
      if (!v34 || (v69 = v34, type metadata accessor for Peer(0), v33 = swift_dynamicCast(), (v32 = v70[0]) == 0))
      {
LABEL_43:
        sub_100093854(v12);
        return;
      }

LABEL_37:
      if (*v32 == _TtC10seserviced8LyonPeer && *(v32 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1)
      {
        v67 = v6;
        v35 = *(v3 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers);
        v37 = *(v32 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier + 8);
        v70[0] = *(v32 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier);
        v36 = v70[0];
        v70[1] = v37;
        __chkstk_darwin(v33);
        *&v58[-16] = v70;

        sub_100069E2C(v36, v37);
        v38 = v68;
        v39 = sub_1002F78F8(sub_100093990, &v58[-32], v35);

        sub_10006A178(v36, v37);
        v68 = v38;
        if (v39)
        {
          v40 = *(v32 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
          *(v40 + 84) = 4;
          *(v40 + 88) = 0;

          v41 = v63;
          v3 = v65;
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v70[0] = v61;
            *v44 = v62;
            v60 = v42;

            v45 = UUID.uuidString.getter();
            v47 = v46;

            v48 = sub_1002FFA0C(v45, v47, v70);

            *(v44 + 4) = v48;
            *(v44 + 12) = 2080;
            v49 = [v41 publicKeyIdentifier];
            v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v52 = v51;

            v53 = Data.description.getter();
            v59 = v43;
            v54 = v3;
            v56 = v55;
            sub_10006A178(v50, v52);
            v57 = sub_1002FFA0C(v53, v56, v70);
            v3 = v54;

            *(v44 + 14) = v57;
            v42 = v60;
            _os_log_impl(&_mh_execute_header, v60, v59, "Disconnecting %s since %s is pre armed", v44, 0x16u);
            swift_arrayDestroy();
          }

          v12 = v66;
          v9 = &OBJC_IVAR____TtC10seserviced4Peer_isConnected;
          sub_100080E48(v32, 0);
        }

        else
        {
          v3 = v65;
          v12 = v66;
          v9 = &OBJC_IVAR____TtC10seserviced4Peer_isConnected;
        }

        v6 = v67;
      }
    }

    v30 = a2;
    v31 = v6;
    if (v6)
    {
LABEL_33:
      v6 = (v31 - 1) & v31;
      v32 = *(*(v12 + 48) + ((a2 << 9) | (8 * __clz(__rbit64(v31)))));

      if (!v32)
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    while (1)
    {
      a2 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (a2 >= v7)
      {
        goto LABEL_43;
      }

      v31 = *(v25 + 8 * a2);
      ++v30;
      if (v31)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Not running", v20, 2u);
  }
}