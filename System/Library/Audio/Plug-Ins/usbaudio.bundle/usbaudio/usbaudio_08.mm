uint64_t sub_10008E994@<X0>(_OWORD *a1@<X8>)
{
  v36 = a1;
  v40 = type metadata accessor for Mirror();
  v2 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001AB4(&qword_100177170, &qword_100123350);
  inited = swift_initStackObject();
  v6 = 0;
  *(inited + 16) = xmmword_100120A30;
  *(inited + 32) = 513;
  *(inited + 36) = 80;
  *(inited + 34) = 385;
  *(inited + 39) = 80;
  *(inited + 37) = 384;
  *(inited + 40) = 2052;
  *(inited + 44) = 6;
  *(inited + 42) = 705;
  *(inited + 47) = 6;
  *(inited + 45) = 704;
  *(inited + 48) = 8208;
  *(inited + 52) = 16;
  *(inited + 50) = 769;
  *(inited + 55) = 16;
  *(inited + 53) = 768;
  *(inited + 56) = -32704;
  *(inited + 60) = 16;
  *(inited + 58) = 1089;
  *(inited + 63) = 16;
  v72 = inited;
  *(inited + 61) = 1088;
  v69 = &_swiftEmptySetSingleton;
  v43 = *(v1 + 13);
  v37 = v1;
  v38 = (v2 + 8);
  HIDWORD(v35) = *(v1 + 14);
  v7 = _swiftEmptyArrayStorage;
  v39 = v4;
  do
  {
    v8 = v72 + v6;
    v9 = (*(v72 + v6 + 33) & v43);
    if ((*(v72 + v6 + 32) & v43) != 0)
    {
      v10 = *(v8 + 34) | (*(v8 + 36) << 16);
      v11 = *(v8 + 37) | (*(v8 + 39) << 16);
      if ((*(v72 + v6 + 33) & v43) != 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100024518(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v7 = sub_100024518((v13 > 1), v14 + 1, 1, v7);
      }

      *(v7 + 2) = v14 + 1;
      v15 = &v7[3 * v14];
      v15[34] = BYTE2(v12);
      *(v15 + 16) = v12;
      if (v9)
      {
        v42 = v7;
        *v53 = &type metadata for USBDescriptorControl;
        LOWORD(v50) = v10;
        BYTE2(v50) = BYTE2(v10);
        Mirror.init(reflecting:)();
        Mirror.children.getter();
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v41 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        result = dispatch thunk of _AnyIndexBox._typeID.getter();
        if (v41 != result)
        {
          __break(1u);
          goto LABEL_39;
        }

        v17 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v17)
        {

          v7 = v42;
          (*v38)(v39, v40);
          goto LABEL_23;
        }

        dispatch thunk of _AnyCollectionBox.subscript.getter();

        v19 = v50;
        v18 = v51;
        sub_10000CE78(&v52);
        v20 = *v38;
        v7 = v42;
        if (v18)
        {
          v20(v39, v40);
          if (v19 == 0x656C62616E65 && v18 == 0xE600000000000000)
          {

            goto LABEL_3;
          }
        }

        else
        {
          v20(v39, v40);
LABEL_23:
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          sub_10009B498(&v50, 12);
        }
      }
    }

    else if ((*(v72 + v6 + 33) & v43) != 0)
    {
      sub_10009B498(&v50, 13);
    }

LABEL_3:
    v6 += 8;
  }

  while (v6 != 32);

  v22 = v69;
  v23 = v69[2];
  if (v23)
  {
    v42 = v7;
    v24 = sub_1001193F0(v23, 0);
    v25 = sub_10011B610(&v50, v24 + 32, v23, v22);
    v26 = v50;
    sub_100091D44(v37, &v45);
    result = sub_100022644(v26);
    if (v25 != v23)
    {
LABEL_39:
      __break(1u);
      return result;
    }

    v7 = v42;
    v27 = v37;
  }

  else
  {
    v27 = v37;
    sub_100091D44(v37, &v50);

    v24 = _swiftEmptyArrayStorage;
  }

  v28 = *(v27 + 3);
  v29 = *(v27 + 32);
  v70 = *(v27 + 16);
  v71 = *(v27 + 24);
  if (!*(v7 + 2))
  {

    v7 = 0;
  }

  *(v66 + 5) = v70;
  *(&v66[1] + 5) = v71;
  if (!v24[2])
  {

    v24 = 0;
  }

  v68 = 0;
  if (HIDWORD(v35))
  {
    v30 = HIDWORD(v35);
  }

  else
  {
    v30 = -65536;
  }

  *&v45 = 0;
  BYTE8(v45) = 0;
  *(&v45 + 9) = *v67;
  HIDWORD(v45) = *&v67[3];
  *&v46[0] = v28;
  WORD4(v46[0]) = v30;
  *(v46 + 11) = v66[0];
  *(&v46[1] + 2) = *(v66 + 7);
  HIWORD(v46[1]) = v65;
  *(&v46[1] + 10) = v64;
  HIDWORD(v48) = *&v63[3];
  *(&v48 + 9) = *v63;
  *(&v51 + 1) = *v67;
  HIDWORD(v51) = *&v67[3];
  BYTE10(v46[0]) = BYTE2(v30);
  *&v48 = 0;
  v47 = v29;
  BYTE8(v48) = 0;
  *&v49 = v7;
  *(&v49 + 1) = v24;
  v50 = 0;
  LOBYTE(v51) = 0;
  v52 = v28;
  v53[2] = BYTE2(v30);
  *v53 = v30;
  *&v53[3] = v66[0];
  *&v53[10] = *(v66 + 7);
  v54 = v64;
  v55 = v65;
  v56 = v29;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  *v60 = *v63;
  *&v60[3] = *&v63[3];
  v61 = v7;
  v62 = v24;
  sub_10007651C(&v45, &v44);
  result = sub_100076A28(&v50);
  v31 = v47;
  v32 = v36;
  v36[2] = v46[1];
  v32[3] = v31;
  v33 = v49;
  v32[4] = v48;
  v32[5] = v33;
  v34 = v46[0];
  *v32 = v45;
  v32[1] = v34;
  return result;
}

void sub_10008F008(uint64_t a1)
{
  v3 = sub_1000673AC(*v1 | (*(v1 + 2) << 32) | (*(v1 + 6) << 48));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  v6 = sub_1000634FC(*(v1 + 7));
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 2), *(v1 + 12));
  v9 = *(v1 + 4);
  v10 = *(v9 + 16);
  Hasher._combine(_:)(v10);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      v12 = *v11++;
      Hasher._combine(_:)(v12);
      --v10;
    }

    while (v10);
  }
}

Swift::Int sub_10008F12C()
{
  v1 = v0;
  v2 = *(v0 + 2);
  v3 = *(v1 + 6);
  v4 = *v1;
  Hasher.init(_seed:)();
  v5 = sub_1000673AC(v4 | (v2 << 32) | (v3 << 48));
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v16);
      AnyHashable.hash(into:)();
      sub_10001E070(v16);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  v8 = sub_1000634FC(*(v1 + 7));
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      sub_10001EDEC(v10, v16);
      AnyHashable.hash(into:)();
      sub_10001E070(v16);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  v11 = *(v1 + 4);
  USBDescriptor.hash(into:)(v17, *(v1 + 2), *(v1 + 12));
  v12 = *(v11 + 16);
  Hasher._combine(_:)(v12);
  if (v12)
  {
    v13 = (v11 + 32);
    do
    {
      v14 = *v13++;
      Hasher._combine(_:)(v14);
      --v12;
    }

    while (v12);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10008F268(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 6);
  v4 = *(v1 + 7);
  v5 = v1[2];
  v6 = *(v1 + 12);
  v7 = *(v1 + 13);
  v8 = *(v1 + 14);
  v23 = *(v1 + 2);
  v21 = *(v1 + 25);
  v22 = *(v1 + 24);
  v9 = *(v1 + 4);
  v10 = *v1;
  Hasher.init(_seed:)();
  v11 = sub_1000673AC(v10 | (v2 << 32) | (v3 << 48));
  v12 = *(v11 + 2);
  if (v12)
  {
    v13 = (v11 + 32);
    do
    {
      sub_10001EDEC(v13, v24);
      AnyHashable.hash(into:)();
      sub_10001E070(v24);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  v14 = sub_1000634FC(v4 | (v5 << 8) | (v6 << 40) | (v7 << 48) | (v8 << 56));
  v15 = *(v14 + 2);
  if (v15)
  {
    v16 = (v14 + 32);
    do
    {
      sub_10001EDEC(v16, v24);
      AnyHashable.hash(into:)();
      sub_10001E070(v24);
      v16 += 40;
      --v15;
    }

    while (v15);
  }

  USBDescriptor.hash(into:)(v25, v23, v22 | (v21 << 8));
  Hasher._combine(_:)(*(v9 + 16));
  v17 = *(v9 + 16);
  if (v17)
  {
    v18 = (v9 + 32);
    do
    {
      v19 = *v18++;
      Hasher._combine(_:)(v19);
      --v17;
    }

    while (v17);
  }

  return Hasher._finalize()();
}

uint64_t sub_10008F3DC(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a1 + 7);
  v3 = a1[2];
  v4 = *(a1 + 12);
  v5 = *(a1 + 13);
  v6 = *(a1 + 14);
  v20 = *(a1 + 2);
  v18 = *(a1 + 25);
  v19 = *(a1 + 24);
  v14 = *(a1 + 4);
  v7 = *(a2 + 7);
  v8 = a2[2];
  v9 = *(a2 + 12);
  v10 = *(a2 + 13);
  v11 = *(a2 + 14);
  v17 = *(a2 + 2);
  v15 = *(a2 + 25);
  v16 = *(a2 + 24);
  v13 = *(a2 + 4);
  if ((sub_10006DFC0(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48), *a2 | (*(a2 + 2) << 32) | (*(a2 + 6) << 48)) & 1) == 0 || (sub_10006C628(v2 | (v3 << 8) | (v4 << 40) | (v5 << 48) | (v6 << 56), v7 | (v8 << 8) | (v9 << 40) | (v10 << 48) | (v11 << 56)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v20, v19 | (v18 << 8), v17, v16 | (v15 << 8)))
  {
    return 0;
  }

  return sub_1000E48EC(v14, v13);
}

uint64_t sub_10008F534@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v12 = 57;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  result = sub_1000D5D10(a1, a2, 8);
  if (!v3)
  {
    v7 = sub_1001128D0(a1, 8uLL);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        memset(v24, 0, 14);
        goto LABEL_18;
      }

      v13 = *(v7 + 16);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v15 = v14;
        v16 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v16))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
        }

        v17 = (v13 - v16 + v15);
        __DataStorage._length.getter();
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v11)
      {
        v24[0] = v7;
        LOWORD(v24[1]) = v8;
        BYTE2(v24[1]) = BYTE2(v8);
        BYTE3(v24[1]) = BYTE3(v8);
        BYTE4(v24[1]) = BYTE4(v8);
        BYTE5(v24[1]) = BYTE5(v8);
LABEL_18:
        v21 = v24;
        goto LABEL_19;
      }

      if (v7 > v7 >> 32)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v18 = __DataStorage._bytes.getter();
      if (v18)
      {
        v19 = v18;
        v20 = __DataStorage._offset.getter();
        if (__OFSUB__(v9, v20))
        {
          goto LABEL_25;
        }

        v17 = (v9 - v20 + v19);
        result = __DataStorage._length.getter();
        if (v17)
        {
LABEL_16:
          v21 = v17;
LABEL_19:
          v22 = sub_10010B008(v21, 1);
          sub_10007676C(v9, v10);
          if (v22[2])
          {
            v23 = v22[4];

            *a3 = v23;
            return result;
          }

          __break(1u);
          goto LABEL_23;
        }

LABEL_29:
        __break(1u);
        return result;
      }
    }

    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_10008F77C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  v58 = a4;
  v57 = a3;
  v55 = a1;
  v56 = a2;
  v4 = BYTE5(a1);
  v64 = type metadata accessor for Mirror();
  v5 = *(v64 - 8);
  v6 = __chkstk_darwin(v64);
  v62 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v53[-v8];
  sub_100001AB4(&qword_100177178, &qword_100123358);
  inited = swift_initStackObject();
  v11 = 0;
  v12 = 0;
  *(inited + 16) = xmmword_100121960;
  *(inited + 32) = 513;
  v65 = inited + 32;
  *(inited + 36) = 98;
  *(inited + 34) = 257;
  v54 = 98;
  *(inited + 39) = 98;
  *(inited + 37) = 256;
  *(inited + 40) = 2052;
  *(inited + 44) = 96;
  *(inited + 42) = 577;
  *(inited + 47) = 96;
  v59 = inited;
  *(inited + 45) = 576;
  v88 = &_swiftEmptySetSingleton;
  v63 = (v5 + 8);
  v13 = _swiftEmptyArrayStorage;
  v60 = v9;
  v61 = v4;
  while (1)
  {
    v14 = v11;
    v15 = v65 + 8 * v12;
    v16 = (*(v15 + 1) & v4);
    if ((*v15 & v4) != 0)
    {
      break;
    }

    if ((*(v15 + 1) & v4) != 0)
    {
      v27 = 13;
      goto LABEL_26;
    }

LABEL_3:
    v11 = 1;
    v12 = 1;
    if (v14)
    {

      v61 = v13[2];
      if (!v61)
      {
LABEL_40:
        sub_10009B498(&v72, 15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_41;
      }

      v31 = 0;
      v32 = 32;
      v66 = v13;
      while (1)
      {
        if (v31 >= v13[2])
        {
          goto LABEL_56;
        }

        v89 = v31;
        v65 = v32;
        v33 = *(v13 + v32);
        v34 = *(v13 + v32 + 2);
        v75 = &type metadata for USBDescriptorControl;
        BYTE2(v72) = v34;
        LOWORD(v72) = v33;
        Mirror.init(reflecting:)();
        v13 = *(Mirror.children.getter() + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        if (v35 != dispatch thunk of _AnyIndexBox._typeID.getter())
        {
          goto LABEL_57;
        }

        v36 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v36)
        {
          break;
        }

        dispatch thunk of _AnyCollectionBox.subscript.getter();

        v39 = v72;
        v38 = v73;
        sub_10000CE78(&v74);
        v37 = *v63;
        if (!v38)
        {
          goto LABEL_37;
        }

        v37(v62, v64);
        v13 = v66;
        if (v39 == 0x636E657571657266 && v38 == 0xE900000000000079)
        {

          goto LABEL_44;
        }

LABEL_38:
        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v40)
        {
          goto LABEL_44;
        }

        v31 = v89 + 1;
        v32 = v65 + 3;
        if (v61 == v89 + 1)
        {
          goto LABEL_40;
        }
      }

      v37 = *v63;
LABEL_37:
      v13 = v66;
      v37(v62, v64);

      goto LABEL_38;
    }
  }

  LODWORD(v89) = v14;
  v17 = *(v15 + 2) | (*(v15 + 4) << 16);
  v18 = *(v15 + 5) | (*(v15 + 7) << 16);
  if (v16)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_100024518(0, v13[2] + 1, 1, v13);
  }

  v21 = v13[2];
  v20 = v13[3];
  if (v21 >= v20 >> 1)
  {
    v13 = sub_100024518((v20 > 1), v21 + 1, 1, v13);
  }

  v13[2] = v21 + 1;
  v22 = v13 + 3 * v21;
  v22[34] = BYTE2(v19);
  *(v22 + 16) = v19;
  if (!v16)
  {
    LOBYTE(v14) = v89;
    goto LABEL_3;
  }

  v66 = v13;
  v75 = &type metadata for USBDescriptorControl;
  LOWORD(v72) = v17;
  BYTE2(v72) = BYTE2(v17);
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  if (v23 == dispatch thunk of _AnyIndexBox._typeID.getter())
  {
    v24 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v24)
    {

      v25 = *v63;
      v13 = v66;
      v26 = v60;
      LOBYTE(v4) = v61;
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();

      v29 = v72;
      v28 = v73;
      sub_10000CE78(&v74);
      v25 = *v63;
      v26 = v60;
      LOBYTE(v4) = v61;
      if (v28)
      {
        v25(v60, v64);
        v13 = v66;
        LOBYTE(v14) = v89;
        if (v29 == 0x79746964696C6176 && v28 == 0xE800000000000000)
        {

LABEL_25:
          v27 = 12;
LABEL_26:
          sub_10009B498(&v72, v27);
          goto LABEL_3;
        }

        goto LABEL_24;
      }

      v13 = v66;
    }

    LOBYTE(v14) = v89;
    v25(v26, v64);

LABEL_24:
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_25;
    }

    goto LABEL_3;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  v13 = sub_100024518(0, v13[2] + 1, 1, v13);
LABEL_41:
  v42 = v13[2];
  v41 = v13[3];
  if (v42 >= v41 >> 1)
  {
    v13 = sub_100024518((v41 > 1), v42 + 1, 1, v13);
  }

  v13[2] = v42 + 1;
  v43 = v13 + 3 * v42;
  v43[34] = v54;
  *(v43 + 16) = 256;
LABEL_44:
  v44 = v88;
  v45 = v88[2];
  if (v45)
  {
    v46 = sub_1001193F0(v88[2], 0);
    v47 = sub_10011B610(&v72, v46 + 32, v45, v44);
    result = sub_100022644(v72);
    if (v47 == v45)
    {
      if (v13[2])
      {
        goto LABEL_47;
      }

LABEL_53:

      v13 = 0;
      if (!v46[2])
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }

    __break(1u);
  }

  else
  {

    v46 = _swiftEmptyArrayStorage;
    if (!v13[2])
    {
      goto LABEL_53;
    }

LABEL_47:
    if (!v46[2])
    {
LABEL_54:

      v46 = 0;
    }

LABEL_48:
    if (HIBYTE(v55))
    {
      v49 = HIBYTE(v55);
    }

    else
    {
      v49 = -65536;
    }

    LOWORD(v68) = v49;
    *(&v68 + 3) = v86;
    BYTE7(v68) = v87;
    *(&v69 + 10) = v84;
    HIWORD(v69) = v85;
    *(&v71 + 2) = v82;
    WORD3(v71) = v83;
    BYTE2(v68) = BYTE2(v49);
    *(&v68 + 1) = BYTE3(v55);
    *&v69 = v56;
    WORD4(v69) = v57;
    *&v70 = v46;
    *(&v70 + 1) = v13;
    LOBYTE(v71) = (v55 & 0x300000000) != 0;
    BYTE1(v71) = (v55 & 0x400000000) != 0;
    *(&v71 + 1) = BYTE6(v55);
    BYTE2(v72) = BYTE2(v49);
    LOWORD(v72) = v49;
    *(&v72 + 3) = v86;
    HIBYTE(v72) = v87;
    v73 = BYTE3(v55);
    v74 = v56;
    LOWORD(v75) = v57;
    HIWORD(v75) = v85;
    *(&v75 + 2) = v84;
    v76 = v46;
    v77 = v13;
    v78 = v71;
    v80 = v83;
    v79 = v82;
    v81 = BYTE6(v55);
    sub_10002C080(&v68, &v67);
    result = sub_1000383FC(&v72);
    v50 = v69;
    v51 = v58;
    *v58 = v68;
    v51[1] = v50;
    v52 = v71;
    v51[2] = v70;
    v51[3] = v52;
  }

  return result;
}

uint64_t sub_100090040@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t (*a4)(void *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  if (!a1)
  {
    goto LABEL_38;
  }

  result = sub_1000D5D10(a1, a2, 5);
  if (v5)
  {
    return result;
  }

  v12 = v10;
  v13 = v11;
  v14 = sub_1001128D0(a1, 5uLL);
  v16 = v14;
  v17 = v15;
  v18 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v18 != 2)
    {
      memset(v70, 0, 14);
      goto LABEL_17;
    }

    v19 = *(v14 + 16);
    v20 = __DataStorage._bytes.getter();
    if (v20)
    {
      v21 = v20;
      v22 = __DataStorage._offset.getter();
      if (__OFSUB__(v19, v22))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v23 = (v19 - v22 + v21);
      __DataStorage._length.getter();
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_70;
  }

  if (v18)
  {
    if (v14 > v14 >> 32)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v24 = __DataStorage._bytes.getter();
    if (v24)
    {
      v25 = v24;
      v26 = __DataStorage._offset.getter();
      if (__OFSUB__(v16, v26))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v23 = (v16 - v26 + v25);
      __DataStorage._length.getter();
      if (v23)
      {
LABEL_15:
        v27 = v23;
        goto LABEL_18;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_70:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_71;
  }

  v70[0] = v14;
  LOWORD(v70[1]) = v15;
  BYTE2(v70[1]) = BYTE2(v15);
  BYTE3(v70[1]) = BYTE3(v15);
  BYTE4(v70[1]) = BYTE4(v15);
  BYTE5(v70[1]) = BYTE5(v15);
LABEL_17:
  v27 = v70;
LABEL_18:
  v28 = a3(v27, 1);
  sub_10007676C(v16, v17);
  if (!*(v28 + 16))
  {
    __break(1u);
    goto LABEL_58;
  }

  v6.i32[0] = *(v28 + 32);
  v29 = *(v28 + 36);

  if (v12)
  {
    sub_1000D5D10(v12, v13, v29);
    v31 = v30;
    v33 = v32;
    v34 = sub_1001128D0(v12, v29);
    v36 = v34;
    v37 = v35;
    v38 = v35 >> 62;
    if ((v35 >> 62) <= 1)
    {
      if (!v38)
      {
        v70[0] = v34;
        LOWORD(v70[1]) = v35;
        BYTE2(v70[1]) = BYTE2(v35);
        BYTE3(v70[1]) = BYTE3(v35);
        BYTE4(v70[1]) = BYTE4(v35);
        BYTE5(v70[1]) = BYTE5(v35);
LABEL_34:
        v47 = v70;
        goto LABEL_35;
      }

      if (v34 <= v34 >> 32)
      {
        v44 = __DataStorage._bytes.getter();
        if (v44)
        {
          v45 = v44;
          v46 = __DataStorage._offset.getter();
          if (!__OFSUB__(v36, v46))
          {
            v43 = (v36 - v46 + v45);
            __DataStorage._length.getter();
            if (v43)
            {
              goto LABEL_32;
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_74:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    if (v38 != 2)
    {
      memset(v70, 0, 14);
      goto LABEL_34;
    }

    v39 = *(v34 + 16);
    v40 = __DataStorage._bytes.getter();
    if (v40)
    {
      v41 = v40;
      v42 = __DataStorage._offset.getter();
      if (__OFSUB__(v39, v42))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v43 = (v39 - v42 + v41);
      __DataStorage._length.getter();
      if (v43)
      {
LABEL_32:
        v47 = v43;
LABEL_35:
        v48 = sub_10010AC70(v47, v29);
        sub_10007676C(v36, v37);
        if (v31)
        {
          sub_1000D5D10(v31, v33, 2);
          v50 = sub_1001128D0(v31, 2uLL);
          v52 = v50;
          v53 = v51;
          v54 = v51 >> 62;
          if ((v51 >> 62) <= 1)
          {
            v55 = a4;
            if (!v54)
            {
              v70[0] = v50;
              LOWORD(v70[1]) = v51;
              BYTE2(v70[1]) = BYTE2(v51);
              BYTE3(v70[1]) = BYTE3(v51);
              BYTE4(v70[1]) = BYTE4(v51);
              BYTE5(v70[1]) = BYTE5(v51);
              v56 = v70;
              goto LABEL_55;
            }

            if (v50 > v50 >> 32)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v62 = __DataStorage._bytes.getter();
            if (v62)
            {
              v63 = v62;
              v64 = __DataStorage._offset.getter();
              if (__OFSUB__(v52, v64))
              {
                goto LABEL_67;
              }

              v61 = (v52 - v64 + v63);
              result = __DataStorage._length.getter();
              if (v61)
              {
LABEL_52:
                v56 = v61;
LABEL_54:
                v55 = a4;
LABEL_55:
                v65 = v55(v56, 1);
                sub_10007676C(v52, v53);
                if (*(v65 + 16))
                {
                  v69 = vmovl_u8(v6).u64[0];
                  v66 = *(v65 + 32);

                  *a5 = vuzp1_s8(v69, v69).u32[0];
                  *(a5 + 4) = v29;
                  *(a5 + 8) = v48;
                  *(a5 + 16) = v66;
                  return result;
                }

                goto LABEL_64;
              }

              goto LABEL_79;
            }

LABEL_78:
            result = __DataStorage._length.getter();
            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

          if (v54 != 2)
          {
            memset(v70, 0, 14);
            v56 = v70;
            goto LABEL_54;
          }

          v57 = *(v50 + 16);
          v58 = __DataStorage._bytes.getter();
          if (v58)
          {
            v59 = v58;
            v60 = __DataStorage._offset.getter();
            if (__OFSUB__(v57, v60))
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v61 = (v57 - v60 + v59);
            __DataStorage._length.getter();
            if (v61)
            {
              goto LABEL_52;
            }

            goto LABEL_77;
          }

LABEL_76:
          __DataStorage._length.getter();
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        goto LABEL_38;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_72:
    __DataStorage._length.getter();
    goto LABEL_73;
  }

LABEL_38:
  sub_10000CA2C();
  swift_allocError();
  *v49 = 57;
  *(v49 + 8) = 0;
  *(v49 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_100090628@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v30 = &_swiftEmptySetSingleton;
  v8 = BYTE4(a1);
  if (((a1 >> 40) & 1) == 0)
  {
    sub_10009B498(&v25, 14);
    if (v8)
    {
      LOWORD(v9) = 1;
      v10 = *(a4 + 16);
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_1000920FC(&v26, &v25);
      goto LABEL_11;
    }

LABEL_21:

    sub_10000CA2C();
    swift_allocError();
    *v24 = 17;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  if (!BYTE4(a1))
  {
    goto LABEL_21;
  }

  v9 = (BYTE5(a1) >> 1) & 1;
  v10 = *(a4 + 16);
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_4:
  v11 = (a4 + 32);
  sub_1000920FC(&v26, &v25);
  do
  {
    if (!*v11++)
    {
      sub_10009B498(&v25, 50);
    }

    --v10;
  }

  while (v10);
LABEL_11:
  if ((a1 & 0xFF000000000000) != 0)
  {
    v13 = BYTE6(a1);
  }

  else
  {
    v13 = -65536;
  }

  sub_100001AB4(&qword_1001753C8, &unk_100123340);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10011DE90;
  *(v14 + 34) = 80;
  *(v14 + 32) = v9 | 0x140;
  v15 = v30;
  v16 = v30[2];
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = sub_1001193F0(v30[2], 0);
  v18 = sub_10011B610(&v25, v17 + 32, v16, v15);
  result = sub_100022644(v25);
  if (v18 != v16)
  {
    __break(1u);
LABEL_17:

    v17 = _swiftEmptyArrayStorage;
  }

  v20 = BYTE3(a1);
  v21 = v27;
  v22 = v28;
  v23 = HIBYTE(v28);
  if (!v17[2])
  {

    v17 = 0;
  }

  *a5 = v13;
  *(a5 + 2) = BYTE2(v13);
  *(a5 + 8) = v20;
  *(a5 + 16) = v21;
  *(a5 + 24) = v22;
  *(a5 + 25) = v23;
  *(a5 + 32) = v17;
  *(a5 + 40) = a4;
  *(a5 + 48) = v14;
  return result;
}

void sub_10009086C(uint64_t a1, unint64_t a2, Swift::UInt a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(unint64_t))
{
  v9 = a4;
  v13 = a6(a2 & 0xFFFFFFFFFFLL);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + 32;
    do
    {
      sub_10001EDEC(v15, v22);
      AnyHashable.hash(into:)();
      sub_10001E070(v22);
      v15 += 40;
      --v14;
    }

    while (v14);
  }

  v16 = a7(a2 >> 40);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + 32;
    do
    {
      sub_10001EDEC(v18, v22);
      AnyHashable.hash(into:)();
      sub_10001E070(v22);
      v18 += 40;
      --v17;
    }

    while (v17);
  }

  USBDescriptor.hash(into:)(a1, a3, v9);
  v19 = *(a5 + 16);
  Hasher._combine(_:)(v19);
  if (v19)
  {
    v20 = (a5 + 32);
    do
    {
      v21 = *v20++;
      Hasher._combine(_:)(v21);
      --v19;
    }

    while (v19);
  }
}

Swift::Int sub_1000909A4(unint64_t a1, Swift::UInt a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t), uint64_t (*a6)(unint64_t))
{
  v9 = a3;
  Hasher.init(_seed:)();
  v12 = a5(a1 & 0xFFFFFFFFFFLL);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + 32;
    do
    {
      sub_10001EDEC(v14, v22);
      AnyHashable.hash(into:)();
      sub_10001E070(v22);
      v14 += 40;
      --v13;
    }

    while (v13);
  }

  v15 = a6(a1 >> 40);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + 32;
    do
    {
      sub_10001EDEC(v17, v22);
      AnyHashable.hash(into:)();
      sub_10001E070(v22);
      v17 += 40;
      --v16;
    }

    while (v16);
  }

  USBDescriptor.hash(into:)(v23, a2, v9);
  v18 = *(a4 + 16);
  Hasher._combine(_:)(v18);
  if (v18)
  {
    v19 = (a4 + 32);
    do
    {
      v20 = *v19++;
      Hasher._combine(_:)(v20);
      --v18;
    }

    while (v18);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100090C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v8 = *v5;
  v9 = *(v5 + 1);
  v10 = v5[5];
  v11 = v5[6];
  v25 = *(v5 + 1);
  v12 = v5[16];
  v13 = v5[17];
  v14 = *(v5 + 3);
  Hasher.init(_seed:)();
  v15 = a4(v8 | (v9 << 8));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + 32;
    do
    {
      sub_10001EDEC(v17, v26);
      AnyHashable.hash(into:)();
      sub_10001E070(v26);
      v17 += 40;
      --v16;
    }

    while (v16);
  }

  v18 = a5(v10 | (v11 << 8));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + 32;
    do
    {
      sub_10001EDEC(v20, v26);
      AnyHashable.hash(into:)();
      sub_10001E070(v26);
      v20 += 40;
      --v19;
    }

    while (v19);
  }

  USBDescriptor.hash(into:)(v27, v25, v12 | (v13 << 8));
  Hasher._combine(_:)(*(v14 + 16));
  v21 = *(v14 + 16);
  if (v21)
  {
    v22 = (v14 + 32);
    do
    {
      v23 = *v22++;
      Hasher._combine(_:)(v23);
      --v21;
    }

    while (v21);
  }

  return Hasher._finalize()();
}

uint64_t sub_100090D8C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t, unint64_t, uint64_t, uint64_t), uint64_t (*a6)(void, void))
{
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[16];
  v10 = a1[17];
  v18 = *(a1 + 3);
  v19 = *(a1 + 1);
  v11 = a2[5];
  v12 = a2[6];
  v13 = *(a2 + 1);
  v14 = a2[16];
  v15 = a2[17];
  v17 = *(a2 + 3);
  if ((a5(*a1 | (*(a1 + 1) << 8), *a2 | (*(a2 + 1) << 8), a3, a4) & 1) == 0 || (a6(v7 | (v8 << 8), v11 | (v12 << 8)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v19, v9 | (v10 << 8), v13, v14 | (v15 << 8)))
  {
    return 0;
  }

  return sub_1000E48EC(v18, v17);
}

void *sub_100090E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v33 = _swiftEmptyArrayStorage;
    sub_100047060(0, v2, 0);
    v5 = 0;
    result = _swiftEmptyArrayStorage;
    v7 = *(a2 + 16);
    v24 = (a2 + 43);
    v25 = a1 + 32;
    v26 = v7;
    v27 = v2;
    while (1)
    {
      v28 = result;
      v29 = v5;
      if (v7)
      {
        break;
      }

      v9 = _swiftEmptyArrayStorage;
LABEL_27:
      result = v28;
      v33 = v28;
      v23 = v28[2];
      v22 = v28[3];
      if (v23 >= v22 >> 1)
      {
        sub_100047060((v22 > 1), v23 + 1, 1);
        result = v33;
      }

      v5 = v29 + 1;
      result[2] = v23 + 1;
      result[v23 + 4] = v9;
      v7 = v26;
      if (v29 + 1 == v27)
      {
        return result;
      }
    }

    v8 = v24;
    v30 = *(v25 + 4 * v5);
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v12 = *(v8 - 7);
      v13 = v12 & v30;
      if ((*(v8 - 11) & v30) != 0)
      {
        v14 = (v8 - 3);
        if (!v13)
        {
          v14 = v8;
        }

        v15 = *(v14 + 2);
        v16 = *v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100024518(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_100024518((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        v19 = &v9[3 * v18];
        v19[34] = (v16 | (v15 << 16)) >> 16;
        *(v19 + 16) = v16;
        v21 = v12 == 0x8000000 && v13 != 0;
        if (v12 != 0x20000000 && !v21)
        {
          goto LABEL_7;
        }

        v10 = &v32;
        v11 = 12;
      }

      else
      {
        if (!v13)
        {
          goto LABEL_7;
        }

        v10 = &v31;
        v11 = 13;
      }

      sub_10009B498(v10, v11);
LABEL_7:
      v8 += 8;
      if (!--v7)
      {
        goto LABEL_27;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000910B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((sub_10006F590(*a1 | (*(a1 + 1) << 8), *a2 | (*(a2 + 1) << 8)) & 1) == 0 || (sub_10006D618(a1[5] | (*(a1 + 6) << 8) | (a1[10] << 40), a2[5] | (*(a2 + 6) << 8) | (a2[10] << 40)) & 1) == 0 || (sub_10006D600(*(a1 + 11), *(a2 + 11)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(*(a1 + 2), *(a1 + 12), *(a2 + 2), *(a2 + 12)) || (sub_1000E48EC(*(a1 + 4), *(a2 + 4)) & 1) == 0)
  {
    return 0;
  }

  return sub_1000EFF58();
}

uint64_t sub_100091188()
{
  sub_100001AB4(&qword_100175498, &unk_100123320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001215B0;
  *(v0 + 32) = 131073;
  *(v0 + 38) = 0;
  *(v0 + 36) = 257;
  *(v0 + 41) = 0;
  *(v0 + 39) = 256;
  *(v0 + 42) = 524292;
  *(v0 + 48) = 6;
  *(v0 + 46) = 577;
  *(v0 + 51) = 6;
  *(v0 + 49) = 576;
  *(v0 + 52) = 2097168;
  *(v0 + 58) = 0;
  *(v0 + 56) = 897;
  *(v0 + 61) = 0;
  *(v0 + 59) = 896;
  *(v0 + 62) = 8388672;
  *(v0 + 68) = 6;
  *(v0 + 66) = 1217;
  *(v0 + 71) = 6;
  *(v0 + 69) = 1216;
  *(v0 + 72) = 33554688;
  *(v0 + 78) = 16;
  *(v0 + 76) = 1281;
  *(v0 + 81) = 16;
  *(v0 + 79) = 1280;
  *(v0 + 82) = 134218752;
  *(v0 + 88) = 16;
  *(v0 + 86) = 1601;
  *(v0 + 91) = 16;
  *(v0 + 89) = 1600;
  v15 = v0;
  if (qword_100173CF8 != -1)
  {
    v13 = v0;
    swift_once();
    v0 = v13;
  }

  v1 = qword_100179640;
  v2 = *(qword_100179640 + 16);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v0;
  v4 = v2;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {

    memset(v14, 0, sizeof(v14));
    sub_100022ADC(v14);
    goto LABEL_9;
  }

  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_100022ADC(v14);
  v7 = *(v1 + 16);
  if (!v7)
  {
    return v3;
  }

  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 BOOLForKey:v9];

  result = v3;
  if (v10)
  {
LABEL_9:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10011DE90;
    *(inited + 32) = 536875008;
    *(inited + 36) = 2177;
    *(inited + 38) = 16;
    *(inited + 39) = 2176;
    *(inited + 41) = 16;
    sub_10007E094(inited);
    return v15;
  }

  return result;
}

uint64_t sub_100091464@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = a1;
  v7 = sub_1000A60F8(a1, a2);
  if (v8 >> 60 == 15)
  {
LABEL_40:
    __break(1u);
  }

  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v11)
    {
      v48[0] = v7;
      LOWORD(v48[1]) = v8;
      BYTE2(v48[1]) = BYTE2(v8);
      BYTE3(v48[1]) = BYTE3(v8);
      BYTE4(v48[1]) = BYTE4(v8);
      BYTE5(v48[1]) = BYTE5(v8);
      v12 = v48 + BYTE6(v8);
      goto LABEL_26;
    }

    v21 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v46 = v5;
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_17;
      }

      v22 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v22))
      {
        v15 += v9 - v22;
LABEL_17:
        v23 = __DataStorage._length.getter();
        if (v23 >= v21)
        {
          v20 = (v9 >> 32) - v9;
        }

        else
        {
          v20 = v23;
        }

        goto LABEL_20;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (v11 != 2)
  {
    memset(v48, 0, 14);
    v12 = v48;
LABEL_26:
    sub_10008C400(v48, v12, &v49);
    result = sub_100076B24(v9, v10);
    if (v3)
    {
      return result;
    }

    goto LABEL_27;
  }

  v46 = v5;
  v13 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v16 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 += v13 - v16;
  }

  v17 = __OFSUB__(v14, v13);
  v18 = v14 - v13;
  if (v17)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

LABEL_20:
  v24 = &v15[v20];
  if (v15)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_10008C400(v15, v25, &v49);
  result = sub_100076B24(v9, v10);
  if (v3)
  {
    return result;
  }

  v5 = v46;
LABEL_27:
  v27.i32[0] = v49;
  v42 = vmovl_u8(v27).u64[0];
  v28 = BYTE4(v49);
  v29 = v50;
  v44 = v52;
  v45 = v51;
  v43 = v53;
  v30 = v54;
  v40 = v56;
  v41 = v55;
  v31 = *(v50 + 16);
  if (v31)
  {
    v37 = BYTE4(v49);
    v38 = v54;
    v47 = v5;
    v39 = v4;
    v49 = _swiftEmptyArrayStorage;
    sub_100047030(0, v31, 0);
    v32 = v49;
    v33 = v49[2];
    v34 = 32;
    do
    {
      v35 = *(v29 + v34);
      v49 = v32;
      v36 = v32[3];
      if (v33 >= v36 >> 1)
      {
        sub_100047030((v36 > 1), v33 + 1, 1);
        v32 = v49;
      }

      v32[2] = v33 + 1;
      v32[v33 + 4] = v35;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);

    v4 = v39;
    v5 = v47;
    v30 = v38;
    v28 = v37;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  *a3 = vuzp1_s8(v42, v42).u32[0];
  *(a3 + 4) = v28;
  *(a3 + 5) = v45;
  *(a3 + 6) = v44;
  *(a3 + 10) = v43;
  *(a3 + 11) = v41;
  *(a3 + 12) = v40;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  *(a3 + 32) = v32;
  *(a3 + 40) = v30;
  return result;
}

uint64_t sub_100091894()
{
  sub_100001AB4(&qword_1001754A0, &qword_100120F40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001228B0;
  *(v0 + 32) = 0x200000001;
  *(v0 + 42) = 16;
  *(v0 + 40) = 449;
  *(v0 + 45) = 16;
  *(v0 + 43) = 448;
  *(v0 + 48) = 0x800000004;
  *(v0 + 58) = 33;
  *(v0 + 56) = 513;
  *(v0 + 61) = 33;
  *(v0 + 59) = 512;
  *(v0 + 64) = 0x2000000010;
  *(v0 + 74) = 32;
  *(v0 + 72) = 833;
  *(v0 + 77) = 32;
  *(v0 + 75) = 832;
  *(v0 + 80) = 0x8000000040;
  *(v0 + 90) = 32;
  *(v0 + 88) = 1153;
  *(v0 + 93) = 32;
  *(v0 + 91) = 1152;
  *(v0 + 96) = 0x20000000100;
  *(v0 + 106) = 32;
  *(v0 + 104) = 1473;
  *(v0 + 109) = 32;
  *(v0 + 107) = 1472;
  *(v0 + 112) = 0x80000000400;
  *(v0 + 122) = 48;
  *(v0 + 120) = 1537;
  *(v0 + 125) = 48;
  *(v0 + 123) = 1536;
  *(v0 + 128) = 0x200000001000;
  *(v0 + 138) = 48;
  *(v0 + 136) = 1857;
  *(v0 + 141) = 48;
  *(v0 + 139) = 1856;
  *(v0 + 144) = 0x800000004000;
  *(v0 + 154) = 50;
  *(v0 + 152) = 2177;
  *(v0 + 157) = 50;
  *(v0 + 155) = 2176;
  *(v0 + 160) = 0x2000000010000;
  *(v0 + 170) = 48;
  *(v0 + 168) = 2497;
  *(v0 + 173) = 48;
  *(v0 + 171) = 2496;
  *(v0 + 176) = 0x8000000040000;
  *(v0 + 186) = 64;
  *(v0 + 184) = 2561;
  *(v0 + 189) = 64;
  *(v0 + 187) = 2560;
  *(v0 + 192) = 0x20000000100000;
  *(v0 + 202) = 65;
  *(v0 + 200) = 2881;
  *(v0 + 205) = 65;
  *(v0 + 203) = 2880;
  *(v0 + 208) = 0x80000000400000;
  *(v0 + 218) = 65;
  *(v0 + 216) = 3201;
  *(v0 + 221) = 65;
  *(v0 + 219) = 3200;
  *(v0 + 224) = 0x200000001000000;
  *(v0 + 234) = 64;
  *(v0 + 232) = 3521;
  *(v0 + 237) = 64;
  *(v0 + 235) = 3520;
  *(v0 + 240) = 0x800000004000000;
  *(v0 + 250) = 16;
  *(v0 + 248) = 3585;
  *(v0 + 253) = 16;
  *(v0 + 251) = 3584;
  *(v0 + 256) = 0x2000000010000000;
  *(v0 + 266) = 16;
  *(v0 + 264) = 3905;
  *(v0 + 269) = 16;
  *(v0 + 267) = 3904;
  v15 = v0;
  if (qword_100173CF8 != -1)
  {
    v13 = v0;
    swift_once();
    v0 = v13;
  }

  v1 = qword_100179640;
  v2 = *(qword_100179640 + 16);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v0;
  v4 = v2;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {

    memset(v14, 0, sizeof(v14));
    sub_100022ADC(v14);
    goto LABEL_9;
  }

  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_100022ADC(v14);
  v7 = *(v1 + 16);
  if (!v7)
  {
    return v3;
  }

  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 BOOLForKey:v9];

  result = v3;
  if (v10)
  {
LABEL_9:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10011DE90;
    *(inited + 32) = 0x8000000040000000;
    *(inited + 42) = 80;
    *(inited + 40) = 4353;
    *(inited + 45) = 80;
    *(inited + 43) = 4352;
    sub_10007E188(inited);
    return v15;
  }

  return result;
}

uint64_t sub_100091D7C@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = a1;
  v7 = sub_1000A60F8(a1, a2);
  if (v8 >> 60 == 15)
  {
LABEL_40:
    __break(1u);
  }

  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v11)
    {
      v48[0] = v7;
      LOWORD(v48[1]) = v8;
      BYTE2(v48[1]) = BYTE2(v8);
      BYTE3(v48[1]) = BYTE3(v8);
      BYTE4(v48[1]) = BYTE4(v8);
      BYTE5(v48[1]) = BYTE5(v8);
      v12 = v48 + BYTE6(v8);
      goto LABEL_26;
    }

    v21 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v46 = v5;
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_17;
      }

      v22 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v22))
      {
        v15 += v9 - v22;
LABEL_17:
        v23 = __DataStorage._length.getter();
        if (v23 >= v21)
        {
          v20 = (v9 >> 32) - v9;
        }

        else
        {
          v20 = v23;
        }

        goto LABEL_20;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (v11 != 2)
  {
    memset(v48, 0, 14);
    v12 = v48;
LABEL_26:
    sub_10008E3A8(v48, v12, &v49);
    result = sub_100076B24(v9, v10);
    if (v3)
    {
      return result;
    }

    goto LABEL_27;
  }

  v46 = v5;
  v13 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v16 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 += v13 - v16;
  }

  v17 = __OFSUB__(v14, v13);
  v18 = v14 - v13;
  if (v17)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

LABEL_20:
  v24 = &v15[v20];
  if (v15)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_10008E3A8(v15, v25, &v49);
  result = sub_100076B24(v9, v10);
  if (v3)
  {
    return result;
  }

  v5 = v46;
LABEL_27:
  v27.i32[0] = v49;
  v40 = vmovl_u8(v27).u64[0];
  v28 = WORD2(v49);
  v29 = BYTE6(v49);
  v30 = v50;
  v44 = v52;
  v45 = v51;
  v42 = v54;
  v43 = v53;
  v41 = v55;
  v31 = *(v50 + 16);
  if (v31)
  {
    v37 = BYTE6(v49);
    v38 = WORD2(v49);
    v47 = v5;
    v39 = v4;
    v49 = _swiftEmptyArrayStorage;
    sub_100047030(0, v31, 0);
    v32 = v49;
    v33 = v49[2];
    v34 = 32;
    do
    {
      v35 = *(v30 + v34);
      v49 = v32;
      v36 = v32[3];
      if (v33 >= v36 >> 1)
      {
        sub_100047030((v36 > 1), v33 + 1, 1);
        v32 = v49;
      }

      v32[2] = v33 + 1;
      v32[v33 + 4] = v35;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);

    v28 = v38;
    v4 = v39;
    v5 = v47;
    v29 = v37;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  *a3 = vuzp1_s8(v40, v40).u32[0];
  *(a3 + 4) = v28;
  *(a3 + 6) = v29;
  *(a3 + 7) = v45;
  *(a3 + 8) = v44;
  *(a3 + 12) = v43;
  *(a3 + 13) = v42;
  *(a3 + 14) = v41;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  *(a3 + 32) = v32;
  return result;
}

uint64_t sub_1000921A8(unsigned __int16 *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t (*a4)(void *, uint64_t))
{
  v7 = sub_1000A60F8(a1, a2);
  if (v8 >> 60 == 15)
  {
LABEL_45:
    __break(1u);
  }

  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v11)
    {
      v45[0] = v7;
      LOWORD(v45[1]) = v8;
      BYTE2(v45[1]) = BYTE2(v8);
      BYTE3(v45[1]) = BYTE3(v8);
      BYTE4(v45[1]) = BYTE4(v8);
      BYTE5(v45[1]) = BYTE5(v8);
      v12 = v45 + BYTE6(v8);
      goto LABEL_31;
    }

    v24 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v25 = __DataStorage._bytes.getter();
      if (!v25)
      {
        goto LABEL_22;
      }

      v26 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v26))
      {
        v25 += v9 - v26;
LABEL_22:
        v27 = __DataStorage._length.getter();
        if (v27 >= v24)
        {
          v28 = (v9 >> 32) - v9;
        }

        else
        {
          v28 = v27;
        }

        v29 = &v25[v28];
        if (v25)
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        sub_100090040(v25, v30, a3, a4, &v46);
        result = sub_100076B24(v9, v10);
        if (v4)
        {
          return result;
        }

        goto LABEL_33;
      }

      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (v11 == 2)
  {
    v13 = *(v7 + 16);
    v14 = *(v7 + 24);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v16))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (!v17)
    {
      v19 = __DataStorage._length.getter();
      if (v19 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }

      v21 = &v15[v20];
      if (v15)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      sub_100090040(v15, v22, a3, a4, &v46);
      result = sub_100076B24(v9, v10);
      if (v4)
      {
        return result;
      }

      goto LABEL_33;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  memset(v45, 0, 14);
  v12 = v45;
LABEL_31:
  sub_100090040(v45, v12, a3, a4, &v46);
  result = sub_100076B24(v9, v10);
  if (v4)
  {
    return result;
  }

LABEL_33:
  v31 = v46;
  v32 = BYTE4(v46);
  v33 = v47;
  v34 = v48;
  v44 = v49;
  v35 = *(v47 + 16);
  if (v35)
  {
    v41 = v48;
    v42 = BYTE4(v46);
    v43 = v46;
    v46 = _swiftEmptyArrayStorage;
    sub_100047030(0, v35, 0);
    v36 = v46;
    v37 = v46[2];
    v38 = 32;
    do
    {
      v39 = *(v33 + v38);
      v46 = v36;
      v40 = v36[3];
      if (v37 >= v40 >> 1)
      {
        sub_100047030((v40 > 1), v37 + 1, 1);
        v36 = v46;
      }

      v36[2] = v37 + 1;
      v36[v37 + 4] = v39;
      ++v38;
      ++v37;
      --v35;
    }

    while (v35);

    v32 = v42;
    v31 = v43;
    v34 = v41;
  }

  else
  {
  }

  return v31 | (v32 << 32) | (v34 << 40) | (v44 << 48);
}

__n128 sub_100092540(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100092560(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000925AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000925FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100092610(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100092658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000926B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000926C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100092710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100092764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000927AC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_100092808()
{
  result = qword_100177180;
  if (!qword_100177180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177180);
  }

  return result;
}

unint64_t sub_10009285C(uint64_t a1)
{
  result = sub_100092884();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100092884()
{
  result = qword_100177188;
  if (!qword_100177188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177188);
  }

  return result;
}

unint64_t sub_1000928DC()
{
  result = qword_100177190;
  if (!qword_100177190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177190);
  }

  return result;
}

unint64_t sub_100092930(uint64_t a1)
{
  result = sub_100092958();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100092958()
{
  result = qword_100177198;
  if (!qword_100177198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177198);
  }

  return result;
}

unint64_t sub_1000929B0()
{
  result = qword_1001771A0;
  if (!qword_1001771A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771A0);
  }

  return result;
}

unint64_t sub_100092A04(uint64_t a1)
{
  result = sub_100092A2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100092A2C()
{
  result = qword_1001771A8;
  if (!qword_1001771A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771A8);
  }

  return result;
}

unint64_t sub_100092A84()
{
  result = qword_1001771B0;
  if (!qword_1001771B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771B0);
  }

  return result;
}

unint64_t sub_100092AD8(uint64_t a1)
{
  result = sub_100092B00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100092B00()
{
  result = qword_1001771B8;
  if (!qword_1001771B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771B8);
  }

  return result;
}

unint64_t sub_100092B58()
{
  result = qword_1001771C0;
  if (!qword_1001771C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771C0);
  }

  return result;
}

unint64_t sub_100092BAC(uint64_t a1)
{
  result = sub_100092BD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100092BD4()
{
  result = qword_1001771C8;
  if (!qword_1001771C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771C8);
  }

  return result;
}

uint64_t Function.functionDescriptors.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t Function.highestExceptionLevel.getter()
{
  v1 = ControlInterface.highestExceptionLevel.getter();
  v2 = *(v0 + 120);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    while (1)
    {
      v6 = v5 + 40 * v4;
      v7 = *(v6 + 8);
      v8 = *(v6 + 24);
      if (v8)
      {
        break;
      }

      v10 = 0;
      v14 = *(v7 + 16);
      if (v14)
      {
        goto LABEL_22;
      }

LABEL_3:
      ++v4;

      if (v1 <= v10)
      {
        v1 = v10;
      }

      else
      {
        v1 = v1;
      }

      if (v4 == v3)
      {
        return v1;
      }
    }

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (v8 + 32);
      do
      {
        v13 = *v11++;
        v12 = v13;
        if (v13 == 68 || v12 == 67 || v12 == 16)
        {
          if (!v10)
          {
            v10 = 1;
          }
        }

        else if (v10 < 2u)
        {
          v10 = 2;
        }

        --v9;
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v14 = *(v7 + 16);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    for (i = 0; i != v14; ++i)
    {
      v16 = v7 + 32 + 80 * i;
      v17 = *(v16 + 72);
      if (v17 && (v18 = *(v17 + 16)) != 0)
      {
        v19 = 0;
        v20 = (v17 + 32);
        do
        {
          v22 = *v20++;
          v21 = v22;
          if (v22 == 68 || v21 == 67 || v21 == 16)
          {
            if (!v19)
            {
              v19 = 1;
            }
          }

          else if (v19 < 2u)
          {
            v19 = 2;
          }

          --v18;
        }

        while (v18);
      }

      else
      {
        v19 = 0;
      }

      v23 = *(v16 + 56);
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = 0;
        v26 = v23 + 32;
        do
        {
          v27 = *(v26 + 80 * v25 + 72);
          if (v27)
          {
            v28 = *(v27 + 16);
            if (v28)
            {
              v29 = (v27 + 32);
              do
              {
                v31 = *v29++;
                v30 = v31;
                if (v31 == 68 || v30 == 67 || v30 == 16)
                {
                  if (!v19)
                  {
                    v19 = 1;
                  }
                }

                else if (v19 < 2u)
                {
                  v19 = 2;
                }

                --v28;
              }

              while (v28);
            }
          }

          ++v25;
        }

        while (v25 != v24);
      }

      if (v10 <= v19)
      {
        v10 = v19;
      }
    }

    goto LABEL_3;
  }

  return v1;
}

__n128 Function.init(_:_:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>, unint64_t a4@<X2>)
{
  sub_100093EF4(a2, a3, a4, v11);
  if (!v4)
  {
    v7 = v11[9];
    *(a1 + 128) = v11[8];
    *(a1 + 144) = v7;
    *(a1 + 160) = v12;
    v8 = v11[5];
    *(a1 + 64) = v11[4];
    *(a1 + 80) = v8;
    v9 = v11[7];
    *(a1 + 96) = v11[6];
    *(a1 + 112) = v9;
    v10 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v10;
    result = v11[3];
    *(a1 + 32) = v11[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_100092FE0(char *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + 80);
  v78[17] = *(v2 + 64);
  v78[18] = v7;
  v78[19] = *(v2 + 96);
  v79 = *(v2 + 112);
  v8 = *(v2 + 16);
  v78[13] = *v2;
  v78[14] = v8;
  v9 = *(v2 + 48);
  v78[15] = *(v2 + 32);
  v78[16] = v9;
  sub_100021248(v2, v78);
  v10 = sub_100075CCC(a1, a2);
  if (v3)
  {
    sub_1000212F0(v2);
  }

  else
  {
    v58 = a1;
    v60 = v10;
    v59 = *(v2 + 144);
    v12 = *(v2 + 120);
    v13 = *(v12 + 16);
    v14 = _swiftEmptyArrayStorage;
    v57 = v2;
    if (v13)
    {
      *&v63 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v15 = (v12 + 64);
      do
      {
        v16 = *(v15 - 3);
        v17 = *(v15 - 16);
        v18 = *(v15 - 1);
        v19 = *v15;
        v80 = *(v15 - 4);
        v81 = v16;
        v82 = v17;
        v83 = v18;
        v84 = v19;
        if (*(v16 + 16))
        {
          v20 = *(v16 + 48);
          v21 = *(v16 + 80);
          v22 = *(v16 + 96);
          v85[2] = *(v16 + 64);
          v85[3] = v21;
          v85[4] = v22;
          v85[0] = *(v16 + 32);
          v85[1] = v20;

          sub_10001EBF0(v85, v78);
          v23 = StreamingAltInterface.synchronizationType.getter();
          sub_10001EC4C(v85);
        }

        else
        {

          v23 = 0;
        }

        sub_100085C28(v58, v60, v59, a2 & 1, v23);
        v15 += 5;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v13;
      }

      while (v13);
      v14 = v63;
      v4 = v2;
    }

    v24 = *(v4 + 160);
    v25 = *(v24 + 16);
    v26 = _swiftEmptyArrayStorage;
    if (v25)
    {
      v86 = _swiftEmptyArrayStorage;
      sub_100046804(0, v25, 0);
      v26 = v86;
      v27 = (v24 + 32);
      for (i = v25 - 1; ; --i)
      {
        v78[0] = *v27;
        v29 = v27[1];
        v30 = v27[2];
        v31 = v27[4];
        v78[3] = v27[3];
        v78[4] = v31;
        v78[1] = v29;
        v78[2] = v30;
        v32 = v27[5];
        v33 = v27[6];
        v34 = v27[8];
        v78[7] = v27[7];
        v78[8] = v34;
        v78[5] = v32;
        v78[6] = v33;
        v35 = v27[9];
        v36 = v27[10];
        v37 = v27[12];
        v78[11] = v27[11];
        v78[12] = v37;
        v78[9] = v35;
        v78[10] = v36;
        v38 = v27[11];
        v73 = v27[10];
        v74 = v38;
        v75 = v27[12];
        v39 = v27[7];
        v69 = v27[6];
        v70 = v39;
        v40 = v27[9];
        v71 = v27[8];
        v72 = v40;
        v41 = v27[3];
        v65 = v27[2];
        v66 = v41;
        v42 = v27[5];
        v67 = v27[4];
        v68 = v42;
        v43 = v27[1];
        v63 = *v27;
        v64 = v43;
        sub_100095BD4(v78, v61);
        sub_100093560(&v63, v60, &v62, &v76);
        v61[10] = v73;
        v61[11] = v74;
        v61[12] = v75;
        v61[6] = v69;
        v61[7] = v70;
        v61[8] = v71;
        v61[9] = v72;
        v61[2] = v65;
        v61[3] = v66;
        v61[4] = v67;
        v61[5] = v68;
        v61[0] = v63;
        v61[1] = v64;
        sub_100095C0C(v61);
        v44 = v76;
        v45 = v77;
        v86 = v26;
        v47 = v26[2];
        v46 = v26[3];
        if (v47 >= v46 >> 1)
        {
          v56 = v76;
          sub_100046804((v46 > 1), v47 + 1, 1);
          v44 = v56;
          v26 = v86;
        }

        v26[2] = v47 + 1;
        v48 = &v26[3 * v47];
        *(v48 + 2) = v44;
        v48[6] = v45;
        if (!i)
        {
          break;
        }

        v27 += 13;
      }

      v4 = v57;
    }

    if (v59)
    {
      if (v59 == 32)
      {
        type metadata accessor for ADC2Function();
        v49 = &off_100161450;
      }

      else
      {
        if (v59 != 48)
        {

          sub_1000212F0(v4);

          return 0;
        }

        type metadata accessor for ADC3Function();
        v49 = &off_100162308;
      }
    }

    else
    {
      type metadata accessor for ADC1Function();
      v49 = &off_1001652A8;
    }

    a2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(a2 + 232) = 0u;
    *(a2 + 216) = 0u;
    v50 = *(v4 + 144);
    *(a2 + 144) = *(v4 + 128);
    *(a2 + 160) = v50;
    *(a2 + 176) = *(v4 + 160);
    v51 = *(v4 + 80);
    *(a2 + 80) = *(v4 + 64);
    *(a2 + 96) = v51;
    v52 = *(v4 + 112);
    *(a2 + 112) = *(v4 + 96);
    *(a2 + 128) = v52;
    v53 = *(v4 + 16);
    *(a2 + 16) = *v4;
    *(a2 + 32) = v53;
    v54 = *(v4 + 48);
    *(a2 + 48) = *(v4 + 32);
    *(a2 + 64) = v54;
    swift_unknownObjectWeakAssign();
    *(a2 + 192) = v60;
    *(a2 + 200) = v14;
    *(a2 + 208) = v26;
    ObjectType = swift_getObjectType();

    swift_unknownObjectRetain();
    sub_1000570D4(ObjectType, v49);
    swift_unknownObjectRelease();
  }

  return a2;
}

uint64_t sub_100093560@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a1[7];
  v5 = a1[17];
  v45 = a1[25];
  v6 = *(a2 + 168);
  v7 = _swiftEmptyArrayStorage;
  *&v54 = _swiftEmptyArrayStorage;
  v8 = *(v6 + 16);
  v64 = v6;
  if (v8)
  {
    v9 = v6 + 32;
    do
    {
      sub_10001EAFC(v9, &v61);
      v11 = v62;
      v10 = v63;
      sub_10001EAB8(&v61, v62);
      if (*(v10 + 48))(v11, v10) == v5 && (sub_10001EAFC(&v61, v57), sub_100001AB4(&qword_100174F60, &qword_100121090), type metadata accessor for ActiveInputTerminal(), (swift_dynamicCast()))
      {
        sub_10000CE78(&v61);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v54;
      }

      else
      {
        sub_10000CE78(&v61);
      }

      v9 += 40;
      --v8;
    }

    while (v8);
  }

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_50:

    sub_10000CA2C();
    v35 = swift_allocError();
    *v37 = 50;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0xE000000000000000;
    result = swift_willThrow();
LABEL_55:
    *a3 = v35;
    return result;
  }

LABEL_49:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_50;
  }

LABEL_12:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_57;
    }

    v12 = *(v7 + 32);
  }

  v14 = _swiftEmptyArrayStorage;
  *&v54 = _swiftEmptyArrayStorage;
  v15 = *(v64 + 16);
  v44 = v12;
  if (v15)
  {
    v16 = v64 + 32;
    do
    {
      sub_10001EAFC(v16, &v61);
      v17 = v62;
      v18 = v63;
      sub_10001EAB8(&v61, v62);
      if (*(v18 + 48))(v17, v18) == v4 && (sub_10001EAFC(&v61, v57), sub_100001AB4(&qword_100174F60, &qword_100121090), type metadata accessor for ActiveOutputTerminal(), (swift_dynamicCast()))
      {
        sub_10000CE78(&v61);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v14 = v54;
      }

      else
      {
        result = sub_10000CE78(&v61);
      }

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  if (!(v14 >> 62))
  {
    v4 = v45;
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = v45;
  if (!result)
  {
LABEL_53:

    sub_10000CA2C();
    v35 = swift_allocError();
    *v38 = 50;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_54:

    goto LABEL_55;
  }

LABEL_26:
  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_58;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v14 + 32);

    while (1)
    {

      v20 = *(v4 + 16);
      v21 = _swiftEmptyArrayStorage;
      if (!v20)
      {
        break;
      }

      v41 = v19;
      v60 = _swiftEmptyArrayStorage;
      sub_100047370(0, v20, 0);
      v22 = 0;
      v21 = v60;
      v23 = v4 + 32;
      v42 = v64 + 32;
      v7 = *(v64 + 16);
      v39 = v4 + 32;
      v40 = v20;
      while (v22 < *(v4 + 16))
      {
        sub_10001EAFC(v23 + 40 * v22, v57);
        v24 = v58;
        v4 = v59;
        sub_10001EAB8(v57, v58);
        v25 = (*(*(v4 + 8) + 16))(v24);
        if (!v7)
        {
LABEL_45:
          v54 = 0u;
          v55 = 0u;
          v56 = 0;
LABEL_46:
          sub_10000D040(&v54, &qword_100174F70, &qword_100120FD0);
          sub_10000CA2C();
          v35 = swift_allocError();
          *v36 = 50;
          *(v36 + 8) = 0;
          *(v36 + 16) = 0xE000000000000000;
          swift_willThrow();

          sub_10000CE78(v57);
          goto LABEL_54;
        }

        v26 = v25;
        v27 = 0;
        ++v22;
        v28 = v42;
        while (1)
        {
          if (v27 >= *(v64 + 16))
          {
            __break(1u);
            goto LABEL_49;
          }

          sub_10001EAFC(v28, &v50);
          v30 = v51;
          v29 = v52;
          sub_10001EAB8(&v50, v51);
          (*(v29 + 8))(v47, v30, v29);
          v31 = v48;
          v32 = v49;
          sub_10001EAB8(v47, v48);
          v4 = (*(v32 + 16))(v31, v32);
          sub_10000CE78(v47);
          if (v4 == v26)
          {
            break;
          }

          v27 = (v27 + 1);
          sub_10000CE78(&v50);
          v28 += 40;
          if (v7 == v27)
          {
            goto LABEL_45;
          }
        }

        sub_10000D0A0(&v50, v53);
        sub_100001AB4(&qword_100174F60, &qword_100121090);
        sub_100001AB4(&qword_100174F68, &unk_100120B90);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v56 = 0;
          v55 = 0u;
          v54 = 0u;
          goto LABEL_46;
        }

        if (!*(&v55 + 1))
        {
          goto LABEL_46;
        }

        sub_10000D0A0(&v54, &v61);
        sub_10000CE78(v57);
        v60 = v21;
        v34 = v21[2];
        v33 = v21[3];
        if (v34 >= v33 >> 1)
        {
          sub_100047370((v33 > 1), v34 + 1, 1);
          v21 = v60;
        }

        v21[2] = v34 + 1;
        result = sub_10000D0A0(&v61, &v21[5 * v34 + 4]);
        v23 = v39;
        v4 = v45;
        if (v22 == v40)
        {
          v19 = v41;
          goto LABEL_44;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

LABEL_44:
    *a4 = v19;
    a4[1] = v44;
    a4[2] = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100093C84()
{
  v1 = *(v0 + 120);
  v23 = *(v1 + 16);
  v2 = 0;
  if (v23)
  {
    v3 = 0;
    v22 = v1 + 32;
    while (1)
    {
      v5 = *(v22 + 40 * v3 + 8);
      if (!*(v5 + 16))
      {
        break;
      }

      v6 = *(v5 + 88);
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = (v6 + 32);

        v9 = v7 - 1;
        for (i = 32; ; i += 80)
        {
          v26[0] = *(v6 + i);
          v11 = *(v6 + i + 16);
          v12 = *(v6 + i + 32);
          v13 = *(v6 + i + 64);
          v26[3] = *(v6 + i + 48);
          v26[4] = v13;
          v26[1] = v11;
          v26[2] = v12;
          v14 = *&v26[0];
          sub_100022594(v26, v25);
          if (IOUSBGetEndpointUsageType(v14))
          {
            sub_1000225F0(v26);
          }

          else
          {
            wMaxPacketSize = v14->wMaxPacketSize;
            sub_1000225F0(v26);
            if ((wMaxPacketSize - 3) >= 6)
            {
              break;
            }
          }

          if (IOUSBGetEndpointUsageType(v14) == 2)
          {
            break;
          }

          if (!v9)
          {
            goto LABEL_3;
          }

          --v9;
        }

        if (IOUSBGetEndpointDirection(v14) != 1)
        {
LABEL_3:

          goto LABEL_4;
        }

        v16 = *(v6 + 16);
        if (v16)
        {
          v4 = 0;
          v17 = 0;
          while (v17 < *(v6 + 16))
          {
            v25[0] = *v8;
            v19 = v8[1];
            v20 = v8[2];
            v21 = v8[4];
            v25[3] = v8[3];
            v25[4] = v21;
            v25[1] = v19;
            v25[2] = v20;
            if (v4)
            {
              v4 = 1;
            }

            else
            {
              v18 = *&v25[0];
              sub_100022594(v25, v24);
              LODWORD(v18) = IOUSBGetEndpointUsageType(v18);
              sub_1000225F0(v25);
              v4 = v18 == 2;
            }

            ++v17;
            v8 += 5;
            if (v16 == v17)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
          break;
        }

        v4 = 0;
LABEL_24:
      }

      else
      {
LABEL_4:
        v4 = 0;
      }

      ++v3;
      v2 |= v4;
      if (v3 == v23)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100093EF4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for LogID(0);
  v11 = a1;
  v12 = __chkstk_darwin(v10);
  *&v235 = a1;
  *(&v235 + 1) = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_196;
  }

  v14 = *(a1 + 41) - 2;
  if (v14 >= 3)
  {

    sub_10000CA2C();
    swift_allocError();
    v16 = 25;
LABEL_6:
    *v15 = v16;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  v186 = v12;
  v187 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = a3;
  LOBYTE(v236) = 0x302000u >> (8 * (v14 & 0x1F));

  sub_1000740B8(v11, v238);
  if (v5)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v184 = v11;
  LODWORD(v195) = *(*&v238[0] + 7);
  v18 = v189 + 27;
  v19 = *(v189 + 16) + 1;
  v197 = a2;
  do
  {
    if (!--v19)
    {
      LODWORD(v183) = 1u >> (v14 & 7);
      v185 = *&v238[0];
      v182 = a4;
      v264 = 0;
      *&v196 = *(a2 + 16);
      goto LABEL_23;
    }

    v20 = (v18 + 8);
    v21 = *(v18 + 7);
    v18 += 8;
  }

  while (v21 != *(*&v238[0] + 2));
  v22 = v21 + *v20;
  if (((v21 + *v20) & 0x100) != 0)
  {
    goto LABEL_202;
  }

  *&v196 = *(a2 + 16);
  if (!v196)
  {
    LODWORD(v183) = 1u >> (v14 & 7);
    v185 = *&v238[0];
    v182 = a4;
    v264 = 0;
    *&v196 = 0;
    goto LABEL_23;
  }

  v23 = v21 + 1;
  if (((v21 + 1) & 0x100) != 0)
  {
    goto LABEL_203;
  }

  v24 = (a2 + 41);
  v25 = v196;
  v26 = (a2 + 41);
  do
  {
    v27 = *v26;
    v26 += 24;
    LOBYTE(v28) = v23;
    if ((v27 - 6) <= 3 && (v28 = *(*(v24 - 9) + 2), v28 < v23) || v22 < v28)
    {

      sub_1000572F0(v238);

      sub_10000CA2C();
      swift_allocError();
      v16 = 84;
      goto LABEL_6;
    }

    v24 = v26;
    --v25;
  }

  while (v25);
  LODWORD(v183) = 1u >> (v14 & 7);
  v185 = *&v238[0];
  v182 = a4;
  v264 = 0;
LABEL_23:
  v29 = 0;
  v194 = _swiftEmptyArrayStorage;
LABEL_24:
  v30 = 3 * v29;
  while (v196 != v29)
  {
    v31 = v264;
    if (v29 >= v197[2])
    {
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    v32 = v197[v30 + 6];
    v33 = v197[v30 + 4];
    v34 = v197[v30 + 5];

    sub_100087A04(v33, v34, v32, v195, v240);
    if (v31)
    {

      sub_1000572F0(v238);
    }

    v264 = 0;
    ++v29;
    v30 += 3;
    v35 = v240[0];
    v5 = v240[1];
    v36 = v241;
    v37 = v242;
    v38 = v243;

    if (v5)
    {
      v39 = v194;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_100025120(0, *(v39 + 2) + 1, 1, v39);
      }

      v40 = v39;
      v41 = *(v39 + 2);
      v194 = v40;
      v42 = *(v40 + 3);
      if (v41 >= v42 >> 1)
      {
        v194 = sub_100025120((v42 > 1), v41 + 1, 1, v194);
      }

      v43 = v194;
      *(v194 + 2) = v41 + 1;
      v44 = &v43[40 * v41];
      *(v44 + 4) = v35;
      *(v44 + 5) = v5;
      v44[48] = v36 & 1;
      *(v44 + 7) = v37;
      *(v44 + 8) = v38;
      goto LABEL_24;
    }
  }

  v45 = v194;
  v46 = *(v194 + 2);

  v188 = v46;
  if (!v46)
  {
    goto LABEL_66;
  }

  if (!*(v45 + 2))
  {
    goto LABEL_193;
  }

  v47 = 0;
  v5 = 0;
  v190 = v45 + 32;
LABEL_40:
  v48 = &v190[40 * v47];
  v49 = *(v48 + 1);
  if (!*(v49 + 16))
  {
    goto LABEL_195;
  }

  v51 = *(v48 + 3);
  v50 = *(v48 + 4);
  v52 = *(v49 + 48);
  v53 = *(v49 + 64);
  v54 = *(v49 + 96);
  v217 = *(v49 + 80);
  v218 = v54;
  ++v47;
  v215 = v52;
  v216 = v53;
  v214 = *(v49 + 32);
  v55 = *(&v217 + 1);
  v56 = *(*(&v217 + 1) + 16);
  if (!v56)
  {
    goto LABEL_59;
  }

  LODWORD(v196) = v5;
  v195 = v47;
  v191 = v50;

  v193 = v49;

  v192 = v51;

  sub_10001EBF0(&v214, &v203);
  if (!*(v55 + 16))
  {
LABEL_182:
    __break(1u);
LABEL_183:

    sub_1000572F0(v238);

    sub_10000D040(&v257, &qword_1001771D0, &unk_100123900);

    sub_10000CA2C();
    swift_allocError();
    *v175 = 102;
    *(v175 + 8) = 0;
    *(v175 + 16) = 0xE000000000000000;
    swift_willThrow();

    v218 = v231;
    v219 = v232;
    v220 = v233;
    *&v221 = v234;
    v214 = v227;
    v215 = v228;
    v216 = v229;
    v217 = v230;
    sub_1000572F0(&v214);
  }

  v57 = 0;
  v58 = (v55 + 32);
  v59 = (v55 + 32);
  while (1)
  {
    v203 = *v59;
    v60 = v59[1];
    v61 = v59[2];
    v62 = v59[4];
    v206 = v59[3];
    v207 = v62;
    v204 = v60;
    v205 = v61;
    v63 = v203;
    sub_100022594(&v203, &v198);
    if (IOUSBGetEndpointUsageType(v63))
    {
      sub_1000225F0(&v203);
    }

    else
    {
      wMaxPacketSize = v63->wMaxPacketSize;
      sub_1000225F0(&v203);
      if ((wMaxPacketSize - 3) >= 6)
      {
        goto LABEL_51;
      }
    }

    if (IOUSBGetEndpointUsageType(v63) == 2)
    {
LABEL_51:
      v65 = IOUSBGetEndpointDirection(v63);
      v5 = v196;
      if (v65 != 1)
      {
        sub_10001EC4C(&v214);

        v45 = v194;
        v47 = v195;
        if ((v5 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_37:
        v5 = 1;
        goto LABEL_38;
      }

      LOBYTE(v66) = 0;
      for (i = 0; i != v56; ++i)
      {
        if (i >= *(v55 + 16))
        {
          __break(1u);
LABEL_190:

          *&v229 = _swiftEmptyArrayStorage;
LABEL_181:
          v211 = v235;
          v212 = v236;
          v207 = v231;
          v208 = v232;
          v209 = v233;
          v210 = v234;
          v203 = v227;
          v204 = v228;
          v205 = v229;
          v206 = v230;
          v222 = v235;
          v223 = v236;
          v218 = v231;
          v219 = v232;
          v220 = v233;
          v221 = v234;
          v214 = v227;
          v215 = v228;
          v213 = v237;
          v224 = v237;
          v216 = v229;
          v217 = v230;
          sub_100021248(&v203, &v198);
          result = sub_1000212F0(&v214);
          v169 = v212;
          v170 = v182;
          *(v182 + 128) = v211;
          *(v170 + 144) = v169;
          *(v170 + 160) = v213;
          v171 = v208;
          *(v170 + 64) = v207;
          *(v170 + 80) = v171;
          v172 = v210;
          *(v170 + 96) = v209;
          *(v170 + 112) = v172;
          v173 = v204;
          *v170 = v203;
          *(v170 + 16) = v173;
          v174 = v206;
          *(v170 + 32) = v205;
          *(v170 + 48) = v174;
          return result;
        }

        v198 = *v58;
        v69 = v58[1];
        v70 = v58[2];
        v71 = v58[4];
        v201 = v58[3];
        v202 = v71;
        v199 = v69;
        v200 = v70;
        if (v66)
        {
          v66 = 1;
        }

        else
        {
          v68 = v198;
          sub_100022594(&v198, v226);
          LODWORD(v68) = IOUSBGetEndpointUsageType(v68);
          sub_1000225F0(&v198);
          v66 = v68 == 2;
        }

        v58 += 5;
      }

      sub_10001EC4C(&v214);

      v5 = v5 | v66;
      v45 = v194;
      v47 = v195;
LABEL_38:
      if (v47 == v188)
      {

        if ((v5 & 1) == 0)
        {
          goto LABEL_67;
        }

        v128 = *(v45 + 2);

        v193 = v128;
        if (!v128)
        {
          v191 = v45;
LABEL_188:

          v45 = v191;
          goto LABEL_67;
        }

        v129 = 0;
        v191 = v45;
        while (2)
        {
          if (v129 >= *(v45 + 2))
          {
            goto LABEL_200;
          }

          v130 = v129;
          v131 = &v190[40 * v129];
          v132 = *(v131 + 1);
          if (!*(v132 + 16))
          {
            goto LABEL_201;
          }

          v134 = *(v131 + 3);
          v133 = *(v131 + 4);
          v135 = *(v132 + 48);
          v136 = *(v132 + 64);
          v137 = *(v132 + 96);
          v217 = *(v132 + 80);
          v218 = v137;
          v215 = v135;
          v216 = v136;
          v214 = *(v132 + 32);
          v138 = *(&v217 + 1);
          v5 = *(*(&v217 + 1) + 16);
          v195 = v134;
          *&v196 = v133;
          if (v5)
          {

            sub_10001EBF0(&v214, &v203);
            if (!*(v138 + 16))
            {
LABEL_191:
              __break(1u);
              goto LABEL_192;
            }

            v139 = 0;
            v140 = (v138 + 32);
            v141 = (v5 - 1);
            while (1)
            {
              v203 = *v140;
              v142 = v140[1];
              v143 = v140[2];
              v144 = v140[4];
              v206 = v140[3];
              v207 = v144;
              v204 = v142;
              v205 = v143;
              v145 = v203;
              sub_100022594(&v203, &v198);
              if (IOUSBGetEndpointUsageType(v145))
              {
                sub_1000225F0(&v203);
              }

              else
              {
                v5 = v145->wMaxPacketSize;
                sub_1000225F0(&v203);
                if ((v5 - 3) >= 6)
                {
                  goto LABEL_131;
                }
              }

              if (IOUSBGetEndpointUsageType(v145) == 2)
              {
LABEL_131:
                v147 = IOUSBGetEndpointDirection(v145);
                sub_10001EC4C(&v214);
                v146 = v147 == 0;
                goto LABEL_133;
              }

              if (v141 == v139)
              {
                break;
              }

              ++v139;
              v140 += 5;
              if (v139 >= *(v138 + 16))
              {
                goto LABEL_191;
              }
            }

            sub_10001EC4C(&v214);
            v146 = 1;
          }

          else
          {

            v146 = 1;
          }

LABEL_133:
          v129 = v130 + 1;
          v45 = v194;
          if (!*(v132 + 16) || (v148 = *(v132 + 48), v149 = *(v132 + 64), v150 = *(v132 + 96), v206 = *(v132 + 80), v207 = v150, v204 = v148, v205 = v149, v203 = *(v132 + 32), v151 = *(&v206 + 1), (v5 = *(*(&v206 + 1) + 16)) == 0))
          {

            goto LABEL_117;
          }

          LODWORD(v192) = v146;
          sub_10001EBF0(&v203, &v198);
          if (!*(v151 + 16))
          {
            goto LABEL_194;
          }

          v152 = 0;
          v153 = (v151 + 32);
          --v5;
          while (1)
          {
            v198 = *v153;
            v154 = v153[1];
            v155 = v153[2];
            v156 = v153[4];
            v201 = v153[3];
            v202 = v156;
            v199 = v154;
            v200 = v155;
            v157 = v198;
            sub_100022594(&v198, v226);
            if (!IOUSBGetEndpointUsageType(v157) && v157->wMaxPacketSize - 3 > 5)
            {
              break;
            }

            if (IOUSBGetEndpointUsageType(v157) == 2)
            {
              break;
            }

            sub_1000225F0(&v198);
            if (v5 == v152)
            {
              sub_10001EC4C(&v203);

              v45 = v194;
              goto LABEL_117;
            }

            ++v152;
            v153 += 5;
            if (v152 >= *(v151 + 16))
            {
              goto LABEL_194;
            }
          }

          v5 = IOUSBGetEndpointSynchronizationType(v157);
          if (IOUSBGetEndpointDirection(v157) == 1)
          {
            v45 = v194;
            if (v5)
            {
              sub_10001EC4C(&v203);

              sub_1000225F0(&v198);
              if ((v192 & 1) == 0)
              {
                goto LABEL_117;
              }

LABEL_149:
              if (v5 == 1)
              {
LABEL_150:
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_1000CCF08(v191);
                  v191 = result;
                }

                if (v130 >= *(v191 + 16))
                {
                  goto LABEL_208;
                }

                *(v191 + 40 * v130 + 48) = 1;
              }
            }

            else if (IOUSBGetEndpointUsageType(v157))
            {
              sub_10001EC4C(&v203);

              sub_1000225F0(&v198);
            }

            else
            {
              v5 = v157->wMaxPacketSize;
              sub_10001EC4C(&v203);

              sub_1000225F0(&v198);
              if (v5 > 8)
              {
                if (v192)
                {
                  goto LABEL_150;
                }
              }

              else
              {
                v5 = v5 < 3;
                if (v192)
                {
                  goto LABEL_149;
                }
              }
            }
          }

          else
          {
            sub_10001EC4C(&v203);

            sub_1000225F0(&v198);
            v45 = v194;
            if (v192)
            {
              goto LABEL_149;
            }
          }

LABEL_117:
          if (v129 == v193)
          {
            goto LABEL_188;
          }

          continue;
        }
      }

LABEL_39:
      if (v47 >= *(v45 + 2))
      {
        goto LABEL_193;
      }

      goto LABEL_40;
    }

    if (v56 - 1 == v57)
    {
      break;
    }

    ++v57;
    v59 += 5;
    if (v57 >= *(v55 + 16))
    {
      goto LABEL_182;
    }
  }

  sub_10001EC4C(&v214);

  v45 = v194;
  v47 = v195;
  v5 = v196;
LABEL_59:
  if (v5)
  {
    goto LABEL_37;
  }

LABEL_60:
  if (v47 != v188)
  {
    v5 = 0;
    goto LABEL_39;
  }

LABEL_66:

LABEL_67:
  if (!v183)
  {
    v115 = v45;
    v116 = v189;
    v117 = *(v189 + 16);
    sub_100057294(v238, &v214);
    if (v117)
    {
      v118 = 0;
      v119 = v116 + 36;
      v5 = _swiftEmptyArrayStorage;
      do
      {
        v120 = (v119 + 8 * v118);
        v121 = v118;
        while (1)
        {
          if (v121 >= v117)
          {
            goto LABEL_197;
          }

          v118 = v121 + 1;
          if (__OFADD__(v121, 1))
          {
            goto LABEL_198;
          }

          v122 = *(v120 - 2);
          if (v122 == *(v185 + 2))
          {
            v123 = *(v120 - 1);
            if (*(v115 + 2) < v123)
            {
              break;
            }
          }

          ++v121;
          v120 += 2;
          if (v118 == v117)
          {
            goto LABEL_168;
          }
        }

        LODWORD(v194) = *(v120 - 2);
        LODWORD(v195) = *v120;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v196 = v119;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = sub_10002501C(0, *(v5 + 16) + 1, 1, v5);
        }

        v126 = *(v5 + 16);
        v125 = *(v5 + 24);
        if (v126 >= v125 >> 1)
        {
          v5 = sub_10002501C((v125 > 1), v126 + 1, 1, v5);
        }

        *(v5 + 16) = v126 + 1;
        v127 = (v5 + 8 * v126);
        *(v127 + 16) = v194;
        v127[34] = v122;
        v127[35] = v123;
        *(v127 + 9) = v195;
        v119 = v196;
      }

      while (v118 != v117);
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

LABEL_168:
    sub_1000572F0(v238);
    if (*(v5 + 16) != 1)
    {

      sub_1000572F0(v238);

      sub_10000CA2C();
      swift_allocError();
      *v168 = 38;
      *(v168 + 8) = 0;
      *(v168 + 16) = 0xE000000000000000;
      swift_willThrow();

      goto LABEL_178;
    }

    *&v162 = *(v5 + 32);
    v196 = v162;

    v73 = v196;
    v163 = BYTE6(v196) != 48 || BYTE5(v196) == 1;
    v45 = v115;
    if (!v163)
    {

      sub_1000572F0(v238);

      v5 = "ADC3 BADD shortcut not supported";
      if (qword_100173CB8 != -1)
      {
        goto LABEL_206;
      }

      goto LABEL_174;
    }

LABEL_70:
    v231 = v238[4];
    v232 = v238[5];
    v233 = v238[6];
    v227 = v238[0];
    v228 = v238[1];
    v229 = v238[2];
    v230 = v238[3];
    v74 = *(&v238[0] + 1);
    *&v234 = v239;
    *(&v234 + 1) = v45;
    *(&v236 + 1) = v73;
    v226[0] = _swiftEmptyArrayStorage;
    v225 = &_swiftEmptySetSingleton;
    v257 = *(&v238[0] + 1);
    v5 = *(*(&v238[0] + 1) + 16);
    if (!v5)
    {
      sub_100057294(v238, &v214);

      v5 = _swiftEmptyArrayStorage;
      v158 = &_swiftEmptySetSingleton;
LABEL_163:
      v237 = v5;
      v159 = v158[2];
      if (v159)
      {
        if (!v229)
        {

          sub_1000572F0(v238);

          v176 = v158[2];
          if (!v176)
          {
            goto LABEL_190;
          }

          v177 = sub_1001193F0(v158[2], 0);
          v178 = sub_10011B610(&v214, v177 + 32, v176, v158);
          result = sub_100022644(v214);
          if (v178 != v176)
          {
            __break(1u);
LABEL_208:
            __break(1u);
            return result;
          }

          *&v229 = v177;
          goto LABEL_181;
        }

        v160 = sub_1001193F0(v158[2], 0);
        v197 = sub_10011B610(&v214, v160 + 32, v159, v158);
        v161 = v214;
        v195 = v216;
        *&v196 = *(&v215 + 1);

        sub_100022644(v161);
        if (v197 != v159)
        {
          goto LABEL_205;
        }

        sub_1000572F0(v238);

        sub_10007E564(v160);
      }

      else
      {

        sub_1000572F0(v238);
      }

      goto LABEL_181;
    }

    v75 = *(&v238[0] + 1) + 32;
    sub_100057294(v238, &v214);
    v194 = v45;

    sub_100095C3C(&v257, &v214);
    v76 = 0;
    v195 = 0x800000010012E680;
    v188 = "with no sourceID";
    v185 = "or output terminal ";
    v180 = "to connect it to";
    v183 = " path from Output Terminal ";
    v181 = xmmword_10011DE90;
    v190 = v74;
    *&v196 = v5;
    while (1)
    {
      if (v76 >= *(v74 + 2))
      {
        goto LABEL_199;
      }

      sub_10001EAFC(v75, &v203);
      sub_100001AB4(&qword_100175488, &unk_100122160);
      if (swift_dynamicCast())
      {
        break;
      }

LABEL_76:
      ++v76;
      v75 += 40;
      if (v5 == v76)
      {
        sub_10000D040(&v257, &qword_1001771D0, &unk_100123900);
        v5 = v226[0];
        v158 = v225;
        goto LABEL_163;
      }
    }

    v260 = v216;
    v261 = v217;
    v262 = v218;
    v263 = v219;
    v258 = v214;
    v259 = v215;
    *(&v204 + 1) = &type metadata for OutputTerminal;
    *&v205 = sub_100095CAC();
    v91 = swift_allocObject();
    *&v203 = v91;
    v92 = v261;
    v91[3] = v260;
    v91[4] = v92;
    v93 = v263;
    v91[5] = v262;
    v91[6] = v93;
    v94 = v259;
    v91[1] = v258;
    v91[2] = v94;
    sub_1000766B0(&v258, &v214);
    v95 = v264;
    v96 = sub_10007135C(&v203, _swiftEmptyArrayStorage, &v258);
    v264 = v95;
    if (v95)
    {
      sub_10000CE78(&v203);
      *&v214 = 0;
      *(&v214 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      *&v214 = 0xD00000000000002BLL;
      *(&v214 + 1) = v195;
      *&v203 = *(&v261 + 1);
      v97._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v97);

      v98 = v214;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v99 = sub_10000A1BC(v186, qword_1001794F0);
      v100 = v187;
      sub_10000A2A4(v99, v187);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v101, qword_100179508);
      sub_100039F58(1, v100, v98, *(&v98 + 1));

      sub_10000C9D0(v100);

      v264 = 0;
      *&v198 = _swiftEmptyArrayStorage;
    }

    else
    {
      v114 = v96;
      sub_10000CE78(&v203);
      *&v198 = v114;
      if (*(v114 + 16))
      {
        sub_100076AD0(&v258);
LABEL_74:
        if (!*(v198 + 16))
        {
          goto LABEL_183;
        }

        sub_10007E37C(v198);
        v5 = v196;
        goto LABEL_76;
      }
    }

    sub_10009B498(&v214, 102);
    if (v261)
    {
      sub_100076AD0(&v258);
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v102 = sub_10000A1BC(v186, qword_1001794F0);
      v103 = v187;
      sub_10000A2A4(v102, v187);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v104, qword_100179508);
      sub_100039F58(1, v103, 0xD000000000000020, (v183 | 0x8000000000000000));
      sub_10000C9D0(v103);
    }

    else
    {
      *&v214 = 0;
      *(&v214 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(101);
      v105._countAndFlagsBits = 0xD000000000000033;
      v105._object = (v188 | 0x8000000000000000);
      String.append(_:)(v105);
      v106 = *(&v261 + 1);
      *&v203 = *(&v261 + 1);
      v107._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v107);

      v108._countAndFlagsBits = 0xD000000000000030;
      v108._object = (v185 | 0x8000000000000000);
      String.append(_:)(v108);
      v109 = v214;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v110 = sub_10000A1BC(v186, qword_1001794F0);
      v111 = v187;
      sub_10000A2A4(v110, v187);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v112 = type metadata accessor for AUALog(0);
      v113 = sub_10000A1BC(v112, qword_100179508);
      sub_100039F58(1, v111, v109, *(&v109 + 1));

      sub_10000C9D0(v111);
      sub_100073638(v258 != 257, v244);
      if (v248)
      {
        v192 = v110;
        v193 = v248;
        v254 = v244[0];
        v255 = v244[1];
        v77 = v246;
        v256 = v245;
        v253 = v247;
        v251 = v249;
        v252 = v250;
        *&v214 = 0;
        *(&v214 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(25);

        strcpy(&v214, "Connecting OT ");
        HIBYTE(v214) = -18;
        *&v203 = v106;
        v191 = v113;
        v78._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v78);

        v79._countAndFlagsBits = 0x205449206F7420;
        v79._object = 0xE700000000000000;
        String.append(_:)(v79);
        *&v203 = v77;
        v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v80);

        v81 = v214;
        sub_10000A2A4(v192, v111);
        sub_100039F58(1, v111, v81, *(&v81 + 1));

        sub_10000C9D0(v111);
        sub_100001AB4(&qword_1001754C8, &unk_100123910);
        v82 = swift_allocObject();
        v205 = v260;
        v206 = v261;
        v207 = v262;
        v208 = v263;
        v203 = v258;
        v204 = v259;
        v209 = v254;
        v210 = v255;
        *&v211 = v256;
        v216 = v260;
        v217 = v261;
        v214 = v258;
        v215 = v259;
        v83 = v256;
        *&v222 = v256;
        v220 = v254;
        v221 = v255;
        v218 = v262;
        v219 = v263;
        v84 = v254;
        v85 = v255;
        v86 = v262;
        *(v82 + 112) = v263;
        *(v82 + 128) = v84;
        *(v82 + 144) = v85;
        v87 = v216;
        v88 = v217;
        v89 = v214;
        *(v82 + 48) = v215;
        *(v82 + 64) = v87;
        *(v82 + 80) = v88;
        *(v82 + 96) = v86;
        *(v82 + 16) = v181;
        *(v82 + 32) = v89;
        *(v82 + 160) = v83;
        *(v82 + 168) = v77;
        *(v82 + 176) = v253;
        *(v82 + 192) = v193;
        v90 = v252;
        *(v82 + 200) = v251;
        *(v82 + 216) = v90;
        *(v82 + 232) = _swiftEmptyArrayStorage;
        sub_10007E37C(v82);
      }

      else
      {
        sub_100076AD0(&v258);
        sub_10000A2A4(v110, v111);
        sub_100039F58(1, v111, 0xD00000000000002ELL, (v180 | 0x8000000000000000));
        sub_10000C9D0(v111);
      }

      v74 = v190;
    }

    goto LABEL_74;
  }

  v72 = *(v45 + 2);
  if (v72 <= 0xFE)
  {
    LOWORD(v73) = 2824;
    BYTE2(v73) = *(v185 + 2);
    BYTE3(v73) = v72 + 1;
    HIDWORD(v73) = 1;
    goto LABEL_70;
  }

LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  swift_once();
LABEL_174:
  v164 = sub_10000A1BC(v186, qword_1001794F0);
  v165 = v187;
  sub_10000A2A4(v164, v187);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v166 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v166, qword_100179508);
  sub_100039F58(1, v165, 0xD000000000000020, ((v5 - 32) | 0x8000000000000000));
  sub_10000C9D0(v165);
  sub_10000CA2C();
  swift_allocError();
  *v167 = 60;
  *(v167 + 8) = 0;
  *(v167 + 16) = 0xE000000000000000;
  swift_willThrow();

LABEL_178:
}

__n128 sub_10009598C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1000959C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_100095A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100095A88(uint64_t a1)
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

uint64_t sub_100095AA4(uint64_t a1)
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

__n128 sub_100095ACC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_100095B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100095B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
      *(result + 208) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100095C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_1001771D0, &unk_100123900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100095CAC()
{
  result = qword_1001771D8;
  if (!qword_1001771D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771D8);
  }

  return result;
}

uint64_t sub_100095D00()
{

  return _swift_deallocObject(v0, 112, 7);
}

void sub_100095D40()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = [objc_allocWithZone(AUAPluginTrampoline) init];
  v8[4] = sub_10009C9F8;
  v8[5] = v0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10009601C;
  v8[3] = &unk_100163BA0;
  v2 = _Block_copy(v8);

  [v1 setFnHALInitializeWithPluginHost:v2];
  _Block_release(v2);
  v3 = objc_allocWithZone(type metadata accessor for DriverPlugin());
  v4 = v1;
  v5 = sub_100096F10(v4);

  swift_beginAccess();
  v6 = *(v0 + 16);
  *(v0 + 16) = v5;
  v7 = v5;

  qword_1001771E0 = v7;
}

void sub_100095EA0()
{
  v0 = [objc_allocWithZone(AUAPluginTrampoline) init];
  v5[4] = AUAError.init(_:message:);
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009601C;
  v5[3] = &unk_1001638F8;
  v1 = _Block_copy(v5);
  [v0 setFnHALInitializeWithPluginHost:v1];
  _Block_release(v1);
  v2 = objc_allocWithZone(type metadata accessor for DriverPlugin());
  v3 = v0;
  v4 = sub_100096F10(v3);

  qword_1001771E8 = v4;
}

void sub_100095FA4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 16);
  if (v7)
  {
    v8 = v7;
    sub_1000979B4(a1, a2);
  }
}

uint64_t sub_10009601C(uint64_t a1, uint64_t a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v4(a2, sub_10009C718, v6);
}

void sub_1000960C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100001AB4(&qword_1001772D8, &qword_100123978);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - v5;
  (*(v4 + 16))(aBlock - v5, a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v6, v3);
  aBlock[4] = sub_10009C954;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172D4;
  aBlock[3] = &unk_100163B50;
  v9 = _Block_copy(aBlock);

  AudioServerPlugInRegisterRemote();
  _Block_release(v9);
}

void sub_100096268()
{
  v0 = type metadata accessor for LogID(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100173CB8 != -1)
  {
    v6 = v1;
    swift_once();
    v1 = v6;
  }

  v4 = sub_10000A1BC(v1, qword_1001794F0);
  sub_10000A2A4(v4, v3);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v5, qword_100179508);
  sub_100039AA0(0, v3, 0xD000000000000023, 0x800000010012EDE0);
  sub_10000C9D0(v3);
  exit(0);
}

uint64_t sub_1000963B0()
{
  v1 = [*(v0 + 16) driverRef];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = sub_1000965C0;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1000964BC()
{
  v1 = [*(v0 + 16) driverRef];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = sub_1000965C0;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1000965C0()
{

  return _swift_task_switch(sub_1000966D8, 0, 0);
}

uint64_t sub_1000966D8()
{
  if (machServiceExists("com.apple.audio.driver-registrar"))
  {

    return _swift_task_switch(sub_1000964BC, 0, 0);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_1000967B8;

    return static Task<>.sleep(nanoseconds:)(100000000);
  }
}

uint64_t sub_1000967B8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10009CAC8, 0, 0);
  }
}

uint64_t sub_1000968E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100001AB4(&qword_1001771F0, &qword_100123930);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10009C848(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000D040(v10, &qword_1001771F0, &qword_100123930);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000D040(a3, &qword_1001771F0, &qword_100123930);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D040(a3, &qword_1001771F0, &qword_100123930);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t static DriverPlugin.registerActiveDriverInLoop()()
{
  v1 = sub_100001AB4(&qword_1001771F0, &qword_100123930);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  if (qword_100173CC8 != -1)
  {
    swift_once();
  }

  v4 = *(qword_1001771E0 + OBJC_IVAR___AUAPlugin_plugin);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = v4;
  v7 = v4;
  sub_1000968E8(0, 0, v3, &unk_100123940, v6);
}

uint64_t sub_100096CCC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100096D0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100096DCC;

  return sub_100096390(a1, v4, v5, v7, v6);
}

uint64_t sub_100096DCC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_100096F10(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v51 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for LogID(0);
  __chkstk_darwin(v47);
  v46 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___AUAPlugin_usbDeviceList] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___AUAPlugin_pressuredExitHold] = 0;
  v13 = &v1[OBJC_IVAR___AUAPlugin_cancel];
  *v13 = AUAError.init(_:message:);
  v13[1] = 0;
  v44[0] = OBJC_IVAR___AUAPlugin_kextActive;
  v1[OBJC_IVAR___AUAPlugin_kextActive] = 0;
  v62 = 0;
  *&v1[OBJC_IVAR___AUAPlugin_plugin] = a1;
  v44[2] = sub_10001EBA8(0, &qword_1001772B0, OS_dispatch_queue_ptr);
  v44[1] = "tInterface=^?^?^?^?^?}>16";
  v48 = a1;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100085218(&qword_100177010, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001AB4(&unk_1001772C0, &unk_100122650);
  v14 = v12;
  v15 = v1;
  sub_100085260(&qword_100177018, &unk_1001772C0, &unk_100122650);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v45);
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = OBJC_IVAR___AUAPlugin_notificationQueue;
  *&v1[OBJC_IVAR___AUAPlugin_notificationQueue] = v16;
  v18 = String._bridgeToObjectiveC()();
  v19 = AUAGetBootArg(v18, &v62);

  aBlock = 0;
  v55 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v20._countAndFlagsBits = 0xD00000000000002ALL;
  v20._object = 0x800000010012EC90;
  String.append(_:)(v20);
  if (v19)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v19)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v23 = v22;
  String.append(_:)(*&v21);

  v24._countAndFlagsBits = 0x203A65756C617620;
  v24._object = 0xE800000000000000;
  String.append(_:)(v24);
  v61 = v62;
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26 = aBlock;
  v27 = v55;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v28 = sub_10000A1BC(v47, qword_1001794F0);
  v29 = v46;
  sub_10000A2A4(v28, v46);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v30, qword_100179508);
  sub_100039AA0(0, v29, v26, v27);

  v31 = v29;
  sub_10000C9D0(v29);
  if (v62 == 1)
  {
    v32 = v19;
  }

  else
  {
    v32 = 0;
  }

  if (v32 == 1)
  {
    v15[v44[0]] = 1;
  }

  sub_10001EBA8(0, &qword_1001772D0, OS_dispatch_source_ptr);
  v33 = *&v15[v17];
  v34 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  *&v15[OBJC_IVAR___AUAPlugin_signalSource] = v34;
  v35 = type metadata accessor for DriverPlugin();
  v60.receiver = v15;
  v60.super_class = v35;
  v36 = objc_msgSendSuper2(&v60, "init");
  v37 = v28;
  v38 = v31;
  sub_10000A2A4(v37, v31);
  v39 = v36;
  sub_100039AA0(1, v38, 0xD00000000000001ALL, 0x800000010012ECC0);
  sub_10000C9D0(v38);
  swift_getObjectType();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  v58 = sub_10009C6D8;
  v59 = v40;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v56 = sub_1000172D4;
  v57 = &unk_100163948;
  v41 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v42 = v51;
  sub_1000978DC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v41);
  swift_unknownObjectRelease();
  (*(v52 + 8))(v42, v53);
  (*(v49 + 8))(v14, v50);

  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.resume()();

  swift_unknownObjectRelease();
  return v39;
}

void sub_1000976E4(unint64_t a1)
{
  v2 = type metadata accessor for LogID(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = "Handling SIGTERM";
  if (qword_100173CB8 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v7 = sub_10000A1BC(v3, qword_1001794F0);
    sub_10000A2A4(v7, v5);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v8, qword_100179508);
    sub_100039AA0(1, v5, 0xD000000000000010, ((v6 - 32) | 0x8000000000000000));
    sub_10000C9D0(v5);
    v6 = OBJC_IVAR___AUAPlugin_usbDeviceList;
    swift_beginAccess();
    a1 = *&v6[a1];
    if (a1 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v5)
    {
LABEL_7:

      exit(0);
    }

    v9 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v3 = *(a1 + 8 * v9 + 32);
      }

      v6 = v3;
      v10 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      USBDevice.handleSigTerm()();

      ++v9;
      if (v10 == v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v11 = v3;
    swift_once();
    v3 = v11;
  }
}

uint64_t sub_1000978DC()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
  sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000979B4(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = v2;
  v6 = type metadata accessor for LogID(0);
  __chkstk_darwin(v6);
  a2(a1);
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10009C56C;
  *(v8 + 24) = v7;
  v9 = *&v3[OBJC_IVAR___AUAPlugin_notificationQueue];
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = sub_10009CAD0;
  v10[4] = v8;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = sub_10009C5B4;
  v12[3] = v10;
  v12[4] = v9;
  v12[5] = sub_10009C60C;
  v12[6] = v11;
  v13 = v3;

  swift_retain_n();

  sub_10009B838(v9, sub_10009CACC, v12);
  v15 = v14;
  v17 = v16;

  v18 = &v13[OBJC_IVAR___AUAPlugin_cancel];
  *v18 = v15;
  *(v18 + 1) = v17;
}

uint64_t sub_100097D78(void *a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&a2[OBJC_IVAR___AUAPlugin_notificationQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_10009C6B0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172D4;
  aBlock[3] = &unk_1001638D0;
  v12 = _Block_copy(aBlock);
  v13 = a2;
  v14 = a1;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
  sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v17);
}

uint64_t (*static AUAPluginUtils.usbHostInterestHandler(terminationHandler:)(uint64_t a1, uint64_t a2))(uint64_t a1, int a2, uint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_10009AD6C;
}

char *sub_1000980AC(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v9 = type metadata accessor for LogID(0);
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = String._bridgeToObjectiveC()();
  v13 = [a1 conformsToIOClassName:v12];

  if (!v13)
  {
LABEL_9:
    sub_10000CA2C();
    swift_allocError();
    *v25 = 6;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0xE000000000000000;
    goto LABEL_10;
  }

  aBlock[0] = 0;
  v14 = [a1 parentEntryInServicePlaneWithError:aBlock];
  v15 = aBlock[0];
  if (v14)
  {
    v16 = v14;
    v41 = a2;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v40 = v16;
      if (a3[OBJC_IVAR___AUAPlugin_kextActive])
      {
        v19 = v15;
        v20 = [v18 object];
        v21 = objc_allocWithZone(IOUSBHostDevice);
        aBlock[0] = 0;
        v22 = [v21 initWithIOService:v20 options:0 queue:v41 error:aBlock interestHandler:0];
        v23 = aBlock[0];
        if (v22)
        {
          a3 = v22;
LABEL_42:
          v38 = v23;
          return a3;
        }

LABEL_43:
        a3 = v23;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return a3;
      }

      v27 = v15;
      sub_100022654(a1, 3, aBlock);
      if (v45)
      {
        if (swift_dynamicCast() && (v43 & 1) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_10000D040(aBlock, &unk_100174A20, &unk_100120170);
      }

      sub_100022654(v18, 3, aBlock);
      if (v45)
      {
        if (swift_dynamicCast() & 1) != 0 && (v43)
        {
LABEL_20:
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          a3 = " skipping enumeration";
          v28 = sub_10000A1BC(v9, qword_1001794F0);
          sub_10000A2A4(v28, v11);
          v29 = v40;
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v30 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v30, qword_100179508);
          sub_100039AA0(1, v11, 0xD000000000000035, 0x800000010012EB60);
          sub_10000C9D0(v11);
          sub_10000CA2C();
          swift_allocError();
          v32 = 8;
LABEL_39:
          *v31 = v32;
          *(v31 + 8) = 0;
          *(v31 + 16) = 0xE000000000000000;
          swift_willThrow();

          return a3;
        }
      }

      else
      {
        sub_10000D040(aBlock, &unk_100174A20, &unk_100120170);
      }

      sub_100022654(a1, 4, aBlock);
      if (v45)
      {
        if (swift_dynamicCast() && (v43 & 1) != 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_10000D040(aBlock, &unk_100174A20, &unk_100120170);
      }

      sub_100022654(v18, 4, aBlock);
      if (v45)
      {
        if (swift_dynamicCast() & 1) != 0 && (v43)
        {
LABEL_34:
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          a3 = "tObject8I16^v20";
          v33 = sub_10000A1BC(v9, qword_1001794F0);
          sub_10000A2A4(v33, v11);
          v29 = v40;
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v34, qword_100179508);
          sub_100039AA0(1, v11, 0xD000000000000035, 0x800000010012EB20);
          sub_10000C9D0(v11);
          sub_10000CA2C();
          swift_allocError();
          v32 = 9;
          goto LABEL_39;
        }
      }

      else
      {
        sub_10000D040(aBlock, &unk_100174A20, &unk_100120170);
      }

      v35 = [a1 object];
      v36 = objc_allocWithZone(IOUSBHostInterface);
      v46 = a4;
      v47 = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000FCE8C;
      v45 = &unk_100163880;
      v37 = _Block_copy(aBlock);

      aBlock[0] = 0;
      a3 = [v36 initWithIOService:v35 options:0 queue:v41 error:aBlock interestHandler:v37];
      _Block_release(v37);
      v23 = aBlock[0];
      if (a3)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v24 = v15;

    goto LABEL_9;
  }

  a3 = aBlock[0];
  _convertNSErrorToError(_:)();

LABEL_10:
  swift_willThrow();
  return a3;
}

void sub_100098748(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100098884(a1, a2);
  }
}

uint64_t static AUAPluginUtils.discoverAudioControlInterfaces(queue:options:interestHandler:usbObjectFactory:deviceHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a1;
  v13[5] = a7;
  v13[6] = a8;

  v14 = a1;

  sub_10009B838(v14, sub_10009B494, v13);
  v16 = v15;

  return v16;
}

void sub_100098884(void *a1, void *a2)
{
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = String._bridgeToObjectiveC()();
  v9 = [a2 propertyForKey:v8];

  v122 = v2;
  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v135 = 0u;
    v136 = 0u;
  }

  aBlock = v135;
  v132 = v136;
  if (*(&v136 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v10 = v130;
      v126 = [v130 unsignedIntegerValue];

      LODWORD(v129) = 0;
      goto LABEL_9;
    }
  }

  else
  {
    sub_10000D040(&aBlock, &unk_100174A20, &unk_100120170);
  }

  v126 = 0;
  LODWORD(v129) = 1;
LABEL_9:
  v11 = String._bridgeToObjectiveC()();
  v12 = [a2 propertyForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v135 = 0u;
    v136 = 0u;
  }

  aBlock = v135;
  v132 = v136;
  if (*(&v136 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v13 = v130;
      v120 = [v130 unsignedIntegerValue];

      LODWORD(v128) = 0;
      goto LABEL_17;
    }
  }

  else
  {
    sub_10000D040(&aBlock, &unk_100174A20, &unk_100120170);
  }

  v120 = 0;
  LODWORD(v128) = 1;
LABEL_17:
  v14 = String._bridgeToObjectiveC()();
  v15 = [a2 propertyForKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v135 = 0u;
    v136 = 0u;
  }

  aBlock = v135;
  v132 = v136;
  if (*(&v136 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v16 = v130;
      v119 = [v130 unsignedIntegerValue];

      LODWORD(v127) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    sub_10000D040(&aBlock, &unk_100174A20, &unk_100120170);
  }

  v119 = 0;
  LODWORD(v127) = 1;
LABEL_25:
  v17 = String._bridgeToObjectiveC()();
  v18 = [a2 propertyForKey:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v135 = 0u;
    v136 = 0u;
  }

  aBlock = v135;
  v132 = v136;
  if (*(&v136 + 1))
  {
    sub_10001EBA8(0, &qword_100177278, NSString_ptr);
    v19 = swift_dynamicCast();
    v20 = v130;
    if (!v19)
    {
      v20 = 0;
    }

    v113 = v20;
  }

  else
  {
    sub_10000D040(&aBlock, &unk_100174A20, &unk_100120170);
    v113 = 0;
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = [a2 propertyForKey:v21];

  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v135 = 0u;
    v136 = 0u;
  }

  aBlock = v135;
  v132 = v136;
  if (*(&v136 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v23 = v130;
    }

    else
    {
      v23 = 0;
    }

    [v23 unsignedIntValue];
  }

  else
  {
    sub_10000D040(&aBlock, &unk_100174A20, &unk_100120170);
  }

  v24 = sub_1000FD338(a2);
  v26 = v25;
  v27 = [objc_allocWithZone(IOKService) initWithServiceEntry:{objc_msgSend(a1, "ioService")}];
  v28 = [v27 entryID];

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v29._countAndFlagsBits = 0xD000000000000022;
  v29._object = 0x800000010012E8D0;
  String.append(_:)(v29);
  *&v135 = v28;
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0xD000000000000018;
  v31._object = 0x800000010012E900;
  String.append(_:)(v31);
  v32._countAndFlagsBits = v24;
  v121 = v26;
  v32._object = v26;
  String.append(_:)(v32);
  v33 = aBlock;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v124 = sub_10000A1BC(v5, qword_1001794F0);
  sub_10000A2A4(v124, v7);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for AUALog(0);
  v123 = sub_10000A1BC(v34, qword_100179508);
  sub_100039AA0(1, v7, v33, *(&v33 + 1));

  sub_10000C9D0(v7);
  v35 = String._bridgeToObjectiveC()();
  v36 = swift_allocObject();
  v37 = v121;
  *(v36 + 16) = v24;
  *(v36 + 24) = v37;
  v133 = sub_10009BF08;
  v134 = v36;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v132 = sub_1000F81CC;
  *(&v132 + 1) = &unk_1001636F0;
  v38 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v38);

  v39 = v122;
  v40 = *(v122 + OBJC_IVAR___AUAPlugin_kextActive);
  v41 = sub_1000FDDDC(a1, v40 ^ 1u, v40, a2, *(v122 + OBJC_IVAR___AUAPlugin_plugin));
  v125 = v7;
  if (!v41)
  {
    goto LABEL_51;
  }

  if (((v129 | v128 | v127) & 1) == 0)
  {
    v42 = v41;
    v43 = String._bridgeToObjectiveC()();
    v44 = swift_allocObject();
    v45 = v113;
    v46 = v126;
    v44[2] = v113;
    v44[3] = v46;
    v47 = v119;
    v44[4] = v120;
    v44[5] = v47;
    v133 = sub_10009C4E4;
    v134 = v44;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v132 = sub_1000F81CC;
    *(&v132 + 1) = &unk_100163790;
    v48 = _Block_copy(&aBlock);
    v49 = v45;

    AnalyticsSendEventLazy();
    _Block_release(v48);

    v41 = v42;
  }

  if (v40)
  {

LABEL_51:

    goto LABEL_126;
  }

  v50 = v41;
  v51 = OBJC_IVAR___AUAPlugin_usbDeviceList;
  swift_beginAccess();
  v52 = *(v39 + v51);
  if (!(v52 >> 62))
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v54 = v50;
    if (v53)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v71 = _CocoaArrayWrapper.endIndex.getter();
  v54 = v50;
  if (!v71)
  {
LABEL_54:
    *(v39 + OBJC_IVAR___AUAPlugin_pressuredExitHold) = os_transaction_create();
    swift_unknownObjectRelease();
    v54 = v50;
  }

LABEL_55:
  v110 = v54;
  v55 = [v110 audioDevices];
  if (!v55)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v56 = v55;
  v118 = sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
  v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v57 >> 62))
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v58)
    {
      goto LABEL_58;
    }

LABEL_73:

    v60 = _swiftEmptyArrayStorage;
    goto LABEL_74;
  }

  v58 = _CocoaArrayWrapper.endIndex.getter();
  if (!v58)
  {
    goto LABEL_73;
  }

LABEL_58:
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000473B0(0, v58 & ~(v58 >> 63), 0);
  if (v58 < 0)
  {
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v59 = 0;
  v60 = aBlock;
  do
  {
    if ((v57 & 0xC000000000000001) != 0)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v61 = *(v57 + 8 * v59 + 32);
    }

    v62 = v61;
    v63 = [v61 deviceUID];
    if (v63)
    {
      v64 = v63;
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;
    }

    else
    {

      v65 = 0;
      v67 = 0;
    }

    *&aBlock = v60;
    v69 = v60[2];
    v68 = v60[3];
    if (v69 >= v68 >> 1)
    {
      sub_1000473B0((v68 > 1), v69 + 1, 1);
      v60 = aBlock;
    }

    ++v59;
    v60[2] = v69 + 1;
    v70 = &v60[2 * v69];
    v70[4] = v65;
    v70[5] = v67;
  }

  while (v58 != v59);

LABEL_74:
  v72 = sub_10009B78C(v60);

  v73 = *(v122 + v51);
  v109[1] = v51;
  if (v73 >> 62)
  {
LABEL_131:
    v108 = v73;
    v74 = _CocoaArrayWrapper.endIndex.getter();
    v73 = v108;
  }

  else
  {
    v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v111 = v73;

  if (!v74)
  {
    goto LABEL_124;
  }

  v75 = 0;
  v117 = v111 & 0xC000000000000001;
  v116 = v111 & 0xFFFFFFFFFFFFFF8;
  v115 = v111 + 32;
  v76 = v72 + 56;
  v112 = "o Functions (probably MIDI)";
  v119 = v72;
  v114 = v74;
  while (1)
  {
LABEL_79:
    if (v117)
    {
      v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v75 >= *(v116 + 16))
      {
        goto LABEL_130;
      }

      v73 = *(v115 + 8 * v75);
    }

    v77 = v73;
    v78 = __OFADD__(v75++, 1);
    if (v78)
    {
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v79 = [v73 audioDevices];
    if (!v79)
    {
      goto LABEL_133;
    }

    v80 = v79;
    v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v126 = v77;
    if (v81 >> 62)
    {
      break;
    }

    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82)
    {
      goto LABEL_86;
    }

LABEL_78:

    if (v75 == v114)
    {
      goto LABEL_124;
    }
  }

  v73 = _CocoaArrayWrapper.endIndex.getter();
  v82 = v73;
  if (!v73)
  {
    goto LABEL_78;
  }

LABEL_86:
  v83 = 0;
  v129 = v81 & 0xC000000000000001;
  v128 = v81 & 0xFFFFFFFFFFFFFF8;
  v127 = v81 + 32;
  v120 = v82;
  while (1)
  {
LABEL_87:
    if (v129)
    {
      v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v83 >= *(v128 + 16))
      {
        goto LABEL_128;
      }

      v73 = *(v127 + 8 * v83);
    }

    v84 = v73;
    v78 = __OFADD__(v83++, 1);
    if (v78)
    {
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v85 = [v73 deviceUID];
    if (!v85)
    {
      break;
    }

    v86 = v85;
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    if (*(v72 + 16))
    {
      goto LABEL_95;
    }

LABEL_110:

    if (v83 == v82)
    {
      goto LABEL_78;
    }
  }

  v87 = 0;
  v89 = 0;
  if (!*(v72 + 16))
  {
    goto LABEL_110;
  }

LABEL_95:
  Hasher.init(_seed:)();
  if (v89)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v90 = Hasher._finalize()();
  v91 = -1 << *(v72 + 32);
  v92 = v90 & ~v91;
  if (((*(v76 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
  {
    goto LABEL_110;
  }

  v93 = ~v91;
  v94 = *(v72 + 48);
  while (2)
  {
    v95 = (v94 + 16 * v92);
    v96 = v95[1];
    if (v96)
    {
      if (v89)
      {
        v97 = *v95 == v87 && v96 == v89;
        if (v97 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_117;
        }
      }

      goto LABEL_101;
    }

    if (v89)
    {
LABEL_101:
      v92 = (v92 + 1) & v93;
      if (((*(v76 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
      {

        v72 = v119;
        v82 = v120;
        if (v83 != v120)
        {
          goto LABEL_87;
        }

        goto LABEL_78;
      }

      continue;
    }

    break;
  }

LABEL_117:
  v98 = v125;
  sub_10000A2A4(v124, v125);
  sub_100039F58(1, v98, 0xD00000000000001DLL, (v112 | 0x8000000000000000));
  sub_10000C9D0(v98);
  v99 = v126;
  v100 = *&v126[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
  v72 = v119;
  v101 = v114;
  if (v100)
  {
    v102 = v100;
    sub_10009A4A0(v102);
  }

  if (v75 != v101)
  {
    goto LABEL_79;
  }

LABEL_124:

  sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100120A20;
  v104 = v110;
  *(inited + 32) = v110;
  swift_beginAccess();
  v105 = v104;
  sub_10007E650(inited);
  swift_endAccess();
  [v105 addDevicesToPlugin];
  v106 = [v105 plugin];
  if (!v106)
  {
LABEL_135:
    __break(1u);
    return;
  }

  v107 = v106;

  [v107 addBox:v105];

LABEL_126:
}

unint64_t sub_100099F34()
{
  sub_100001AB4(&unk_100177280, &unk_100120B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10011DE90;
  strcpy((inited + 32), "HostController");
  *(inited + 47) = -18;
  *(inited + 48) = String._bridgeToObjectiveC()();
  v1 = sub_10000AB64(inited);
  swift_setDeallocating();
  sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
  return v1;
}

unint64_t sub_10009A000(void *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4)
{
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    sub_10001EBA8(0, &qword_100177278, NSString_ptr);
    v8 = NSString.init(stringLiteral:)();
  }

  sub_100001AB4(&unk_100177280, &unk_100120B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100120A30;
  *(inited + 32) = 4475222;
  *(inited + 40) = 0xE300000000000000;
  result = sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;
  result = NSNumber.init(integerLiteral:)(a2).super.super.isa;
  *(inited + 48) = result;
  *(inited + 56) = 4475216;
  *(inited + 64) = 0xE300000000000000;
  if (a3 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = NSNumber.init(integerLiteral:)(a3).super.super.isa;
  *(inited + 72) = result;
  *(inited + 80) = 0x6E6F6973726556;
  *(inited + 88) = 0xE700000000000000;
  if ((a4 & 0x8000000000000000) == 0)
  {
    *(inited + 96) = NSNumber.init(integerLiteral:)(a4);
    strcpy((inited + 104), "productString");
    *(inited + 118) = -4864;
    *(inited + 120) = v8;
    v12 = sub_10000AB64(inited);
    swift_setDeallocating();
    sub_100001AB4(&qword_100174A38, &qword_100120180);
    swift_arrayDestroy();
    return v12;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10009A1B0(void *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    sub_10001EBA8(0, &qword_100177278, NSString_ptr);
    v13 = NSString.init(stringLiteral:)();
  }

  sub_100001AB4(&unk_100177280, &unk_100120B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100123920;
  *(inited + 32) = 4475222;
  *(inited + 40) = 0xE300000000000000;
  result = sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = a1;
  result = NSNumber.init(integerLiteral:)(a2).super.super.isa;
  *(inited + 48) = result;
  *(inited + 56) = 4475216;
  *(inited + 64) = 0xE300000000000000;
  if (a3 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = NSNumber.init(integerLiteral:)(a3).super.super.isa;
  *(inited + 72) = result;
  *(inited + 80) = 0x6E6F6973726556;
  *(inited + 88) = 0xE700000000000000;
  if ((a4 & 0x8000000000000000) == 0)
  {
    *(inited + 96) = NSNumber.init(integerLiteral:)(a4);
    strcpy((inited + 104), "productString");
    *(inited + 118) = -4864;
    *(inited + 120) = v13;
    *(inited + 128) = 0x65446769666E6F63;
    *(inited + 136) = 0xEA00000000006373;
    v17 = objc_allocWithZone(NSString);
    v18 = v13;
    v19 = String._bridgeToObjectiveC()();
    v20 = [v17 initWithString:v19];

    *(inited + 144) = v20;
    *(inited + 152) = 0x6544656369766564;
    *(inited + 160) = 0xEA00000000006373;
    v21 = objc_allocWithZone(NSString);
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 initWithString:v22];

    *(inited + 168) = v23;
    *(inited + 176) = 0x726F727265;
    *(inited + 184) = 0xE500000000000000;
    swift_errorRetain();
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    String.init<A>(describing:)();
    v24 = objc_allocWithZone(NSString);
    v25 = String._bridgeToObjectiveC()();

    v26 = [v24 initWithString:v25];

    *(inited + 192) = v26;
    v27 = sub_10000AB64(inited);
    swift_setDeallocating();
    sub_100001AB4(&qword_100174A38, &qword_100120180);
    swift_arrayDestroy();

    return v27;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_10009A4A0(void *a1)
{
  v2 = v1;
  v37 = a1;
  inited = type metadata accessor for LogID(0);
  __chkstk_darwin(inited);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___AUAPlugin_usbDeviceList;
  swift_beginAccess();
  v7 = *&v6[v2];
  if (v7 >> 62)
  {
LABEL_53:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v34 = inited;
    v35 = v5;
    v31 = v6;
    v32 = v2;
    v38 = v7 & 0xC000000000000001;
    v36 = v7 & 0xFFFFFFFFFFFFFF8;
    v30 = "could not remove usbDevice";

    v9 = 0;
    v5 = 0;
    v10 = _swiftEmptyArrayStorage;
LABEL_5:
    v33 = v9;
    v11 = v5;
    while (1)
    {
      if (v38)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v36 + 16))
        {
          goto LABEL_52;
        }

        v12 = *(v7 + 8 * v11 + 32);
      }

      v6 = v12;
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v13 = *&v12[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
      if (v13)
      {
        sub_10001EBA8(0, &unk_100177260, IOUSBHostObject_ptr);
        v14 = v13;
        v15 = v37;
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v20 = sub_10000A1BC(v34, qword_1001794F0);
          v21 = v35;
          sub_10000A2A4(v20, v35);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v22 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v22, qword_100179508);
          sub_100039AA0(1, v21, 0xD000000000000012, (v30 | 0x8000000000000000));
          sub_10000C9D0(v21);
          v23 = v6;
          [v23 removeDevicesFromPlugin];
          result = [v23 plugin];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v25 = result;
          [result removeBox:v23];

          v2 = OBJC_IVAR____TtC9AUASDCore9USBDevice_activeConfig;
          swift_beginAccess();
          inited = *&v23[v2];
          if (inited)
          {

            sub_100022C14();

            inited = *&v23[v2];
          }

          *&v23[v2] = 0;

          v9 = 1;
          if (v5 == v8)
          {

            v6 = v31;
            v2 = v32;
            *&v31[v32] = v10;

            goto LABEL_45;
          }

          goto LABEL_5;
        }
      }

      sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
      inited = swift_initStackObject();
      *(inited + 32) = v6;
      v2 = v10 >> 62;
      if (v10 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
        v18 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_50;
        }
      }

      v6 = v6;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v2)
      {
        goto LABEL_20;
      }

      v2 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v18 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_21;
      }

LABEL_22:
      if (*(v2 + 16) >= *(v2 + 24) >> 1)
      {
        goto LABEL_51;
      }

      type metadata accessor for USBDevice(0);
      swift_arrayInitWithCopy();

      swift_setDeallocating();
      swift_unknownObjectRelease();
      ++*(v2 + 16);
      ++v11;
      if (v5 == v8)
      {

        v6 = v31;
        v2 = v32;
        *&v31[v32] = v10;

        inited = v34;
        v5 = v35;
        if (v33)
        {
          goto LABEL_45;
        }

        goto LABEL_40;
      }
    }

    if (v2)
    {
LABEL_20:
      _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_21:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = v10 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_22;
  }

  *&v6[v2] = _swiftEmptyArrayStorage;

LABEL_40:
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A1BC(inited, qword_1001794F0);
  sub_10000A2A4(v26, v5);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v27, qword_100179508);
  sub_100039F58(1, v5, 0xD00000000000001ALL, 0x800000010012E870);
  sub_10000C9D0(v5);
LABEL_45:
  v28 = *&v6[v2];
  if (!(v28 >> 62))
  {
    result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }

    goto LABEL_47;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_47:
    *(v2 + OBJC_IVAR___AUAPlugin_pressuredExitHold) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

id DriverPlugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DriverPlugin.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DriverPlugin();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10009ABC4(uint64_t a1, int a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = type metadata accessor for LogID(0);
  result = __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == -536870896)
  {
    if (qword_100173CB8 != -1)
    {
      v13 = result;
      swift_once();
      result = v13;
    }

    v11 = sub_10000A1BC(result, qword_1001794F0);
    sub_10000A2A4(v11, v10);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v12, qword_100179508);
    sub_100039AA0(1, v10, 0xD00000000000001ALL, 0x800000010012ED70);
    sub_10000C9D0(v10);
    return a4(a1);
  }

  return result;
}

uint64_t sub_10009AD34()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10009AD74(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = objc_autoreleasePoolPush();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    swift_beginAccess();
    if ((*(a2 + 16) & 1) == 0)
    {
      v9 = a1;
      a3(v8);
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_10009AE1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10009AE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16) != 1 || (swift_beginAccess(), *(a2 + 16)) || (result = swift_beginAccess(), *(a3 + 16)))
  {
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a3;
    v17[4] = a2;
    aBlock[4] = sub_10009C83C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000172D4;
    aBlock[3] = &unk_100163B00;
    v18 = _Block_copy(aBlock);
    v20 = a4;
    v21 = v12;
    v19 = v18;

    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
    sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v15, v21);
  }

  return result;
}

void sub_10009B1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = 1;
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = 0;

  swift_beginAccess();
  v7 = *(a3 + 16);
  *(a3 + 16) = 0;
}

void sub_10009B248(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v9 = type metadata accessor for LogID(0);
  __chkstk_darwin(v9);
  v10 = a2(a1, a4);
  v12 = v11;
  a5();
}

uint64_t sub_10009B498(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100119D4C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10009B590(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100119E98(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_10009B718(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10009CA00();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10009B498(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10009B78C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100001AB4(&qword_100177290, &qword_100120B80);
  sub_10009C4F0();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10009B590(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_10009B838(void *a1, uint64_t a2, void *a3)
{
  v47 = a2;
  v48 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(IOKNotificationPort) initOnDispatchQueue:a1];
  if (!v12)
  {
    sub_10000CA2C();
    swift_allocError();
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v13 = v12;
  v43 = v9;
  v44 = v8;
  v45 = v5;
  v46 = a1;
  v14 = objc_opt_self();
  isa = UInt8._bridgeToObjectiveC()().super.super.isa;
  v16 = UInt8._bridgeToObjectiveC()().super.super.isa;
  v17 = [v14 createMatchingDictionaryWithVendorID:0 productID:0 bcdDevice:0 interfaceNumber:0 configurationValue:0 interfaceClass:isa interfaceSubclass:v16 interfaceProtocol:0 speed:0 productIDArray:0];

  v18 = v14;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    aBlock = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

    if (aBlock)
    {
      v41 = v4;
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      v42 = objc_opt_self();
      v20 = IOKMatchedNotification;
      v21 = Dictionary._bridgeToObjectiveC()().super.isa;

      v22 = swift_allocObject();
      v23 = v47;
      v24 = v48;
      v22[2] = v19;
      v22[3] = v23;
      v22[4] = v24;
      v54 = sub_10009C77C;
      v55 = v22;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_10009AE1C;
      v53 = &unk_1001639E8;
      v25 = _Block_copy(&aBlock);
      v47 = v19;

      aBlock = 0;
      v26 = [v42 addNotificationOfType:v20 forMatching:v21 usingNotificationPort:v13 error:&aBlock withEnumerationBlock:v25];
      _Block_release(v25);

      v27 = aBlock;
      if (v26)
      {
        v28 = swift_allocObject();
        *(v28 + 16) = v26;
        v54 = sub_10009C788;
        v55 = v28;
        aBlock = _NSConcreteStackBlock;
        v51 = 1107296256;
        v52 = sub_1000172D4;
        v53 = &unk_100163A38;
        v48 = _Block_copy(&aBlock);
        v29 = v27;
        v30 = v26;
        static DispatchQoS.unspecified.getter();
        v49 = _swiftEmptyArrayStorage;
        sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
        sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
        v31 = v41;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v32 = v48;
        v33 = v46;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v32);
        (*(v45 + 8))(v7, v31);
        (*(v43 + 8))(v11, v44);

        v34 = swift_allocObject();
        *(v34 + 16) = v13;
        v35 = swift_allocObject();
        *(v35 + 16) = v26;
        v36 = swift_allocObject();
        v36[2] = v47;
        v36[3] = v34;
        v36[4] = v35;
        v36[5] = v33;
        v37 = v33;
        return;
      }

      v40 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      goto LABEL_9;
    }
  }

  else
  {
  }

  sub_10000CA2C();
  swift_allocError();
  *v39 = 1;
  *(v39 + 8) = 0;
  *(v39 + 16) = 0xE000000000000000;
  swift_willThrow();
LABEL_9:
}

uint64_t sub_10009BED0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009BF10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10009BF28()
{
  v0 = type metadata accessor for LogID(0);
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F7BF4();
  byte_100179528 = (v3 ^ 1) & ((v3 & 0x100) >> 8);
  if (((v3 ^ 1) & ((v3 & 0x100) >> 8)) != 0)
  {
    if (qword_100173CC8 != -1)
    {
      swift_once();
    }

    v4 = &qword_1001771E0;
    v5 = 1;
  }

  else
  {
    if (qword_100173CD0 != -1)
    {
      swift_once();
    }

    v5 = 0;
    v4 = &qword_1001771E8;
  }

  v6 = *(*v4 + OBJC_IVAR___AUAPlugin_plugin);
  v17 = 0;
  v18 = 0xE000000000000000;
  v7 = v6;
  _StringGuts.grow(_:)(24);

  v17 = 0xD000000000000016;
  v18 = 0x800000010012ED00;
  if (v5)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v5)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11 = v17;
  v12 = v18;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A1BC(v0, qword_1001794F0);
  sub_10000A2A4(v13, v2);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v14, qword_100179508);
  sub_100039AA0(0, v2, v11, v12);

  sub_10000C9D0(v2);
  return v7;
}

id sub_10009C1A4()
{
  v0 = type metadata accessor for LogID(0);
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F7BF4();
  v4 = v3 | ((v3 & 0x100) >> 8);
  byte_100179528 = (v4 & 1) == 0;
  if (v4)
  {
    if (qword_100173CD0 != -1)
    {
      swift_once();
    }

    v5 = 0;
    v6 = &qword_1001771E8;
  }

  else
  {
    if (qword_100173CC8 != -1)
    {
      swift_once();
    }

    v6 = &qword_1001771E0;
    v5 = 1;
  }

  v7 = *(*v6 + OBJC_IVAR___AUAPlugin_plugin);
  v18 = 0;
  v19 = 0xE000000000000000;
  v8 = v7;
  _StringGuts.grow(_:)(24);

  v18 = 0xD000000000000016;
  v19 = 0x800000010012EBA0;
  if (v5)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v5)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12 = v18;
  v13 = v19;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A1BC(v0, qword_1001794F0);
  sub_10000A2A4(v14, v2);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v15, qword_100179508);
  sub_100039AA0(0, v2, v12, v13);

  sub_10000C9D0(v2);
  return v8;
}

uint64_t sub_10009C424()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10009C4AC()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10009C4F0()
{
  result = qword_100177298;
  if (!qword_100177298)
  {
    sub_10001E8F0(&qword_100177290, &qword_100120B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177298);
  }

  return result;
}

uint64_t sub_10009C574()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009C5D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009C618()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10009C670()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009C6E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009C73C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009C798()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009C7F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009C848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_1001771F0, &qword_100123930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009C8C0()
{
  v1 = sub_100001AB4(&qword_1001772D8, &qword_100123978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10009C954()
{
  sub_100001AB4(&qword_1001772D8, &qword_100123978);

  sub_100096268();
}

uint64_t sub_10009C9C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10009CA00()
{
  result = qword_1001772E0;
  if (!qword_1001772E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001772E0);
  }

  return result;
}

uint64_t sub_10009CAD4(__int16 a1, id a2)
{
  if ((a1 & 0x1FF) == 8)
  {
    return *[a2 bytes];
  }

  sub_10000CA2C();
  swift_allocError();
  *v3 = 32;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t *ADCControlRequestParameterBlock.getCur()@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, __int16 a3@<W0>)
{
  if ((a3 & 0x100) != 0)
  {
    goto LABEL_12;
  }

  if (a3 <= 1u)
  {
    if (!a3)
    {
      v29 = a2;
      v30 = [a2 bytes];
      a1[3] = &type metadata for UInt8;
      result = sub_10009EFBC();
      a1[4] = result;
      *a1 = *v30;
      return result;
    }

    if (a3 == 1)
    {
      v14 = a2;
      v15 = [a2 bytes];
      a1[3] = &type metadata for UInt16;
      result = sub_10009EF68();
      a1[4] = result;
      *a1 = *v15;
      return result;
    }

    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v20 = a2;
    v21 = [a2 bytes];
    a1[3] = &type metadata for UInt32;
    result = sub_10009EF14();
    a1[4] = result;
    *a1 = *v21;
    return result;
  }

  if (a3 != 3)
  {
    if (a3 == 8)
    {
      v4 = a1;
      v5 = sub_10009E0B8(a2);
      v7 = v5;
      v8 = v6;
      v9 = v6 >> 62;
      if ((v6 >> 62) <= 1)
      {
        if (!v9)
        {
          v50[0] = v5;
          LOWORD(v50[1]) = v6;
          BYTE2(v50[1]) = BYTE2(v6);
          BYTE3(v50[1]) = BYTE3(v6);
          BYTE4(v50[1]) = BYTE4(v6);
          BYTE5(v50[1]) = BYTE5(v6);
          v10 = v50 + BYTE6(v6);
          v11 = v50;
LABEL_59:
          sub_10009E754(v11, v10, v51);
          goto LABEL_60;
        }

        v41 = (v5 >> 32) - v5;
        if (v5 >> 32 >= v5)
        {
          v39 = __DataStorage._bytes.getter();
          if (!v39)
          {
LABEL_51:
            v47 = __DataStorage._length.getter();
            if (v47 >= v41)
            {
              v48 = v41;
            }

            else
            {
              v48 = v47;
            }

            v49 = (v48 + v39);
            if (v39)
            {
              v10 = v49;
            }

            else
            {
              v10 = 0;
            }

            v11 = v39;
            goto LABEL_59;
          }

          v46 = __DataStorage._offset.getter();
          if (!__OFSUB__(v7, v46))
          {
            v39 += v7 - v46;
            goto LABEL_51;
          }

LABEL_69:
          __break(1u);
        }

        goto LABEL_65;
      }

      goto LABEL_26;
    }

LABEL_12:
    sub_10000CA2C();
    swift_allocError();
    *v17 = 32;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v4 = a1;
  v22 = sub_10009E0B8(a2);
  v7 = v22;
  v8 = v23;
  v24 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v24)
    {
      v50[0] = v22;
      LOWORD(v50[1]) = v23;
      BYTE2(v50[1]) = BYTE2(v23);
      BYTE3(v50[1]) = BYTE3(v23);
      BYTE4(v50[1]) = BYTE4(v23);
      BYTE5(v50[1]) = BYTE5(v23);
      v25 = v50 + BYTE6(v23);
      v26 = v50;
      goto LABEL_44;
    }

    goto LABEL_33;
  }

  if (v24 != 2)
  {
    memset(v50, 0, 14);
    sub_10009E4B4(v50, v50, v51);
LABEL_60:
    if (v3)
    {
      return sub_10007676C(v7, v8);
    }

    sub_10007676C(v7, v8);
    return sub_10000D0A0(v51, v4);
  }

  v31 = *(v22 + 16);
  v32 = *(v22 + 24);
  v33 = __DataStorage._bytes.getter();
  if (v33)
  {
    v34 = __DataStorage._offset.getter();
    v9 = v31 - v34;
    if (__OFSUB__(v31, v34))
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v33 += v9;
  }

  v35 = __OFSUB__(v32, v31);
  v36 = v32 - v31;
  if (v35)
  {
    __break(1u);
LABEL_26:
    if (v9 != 2)
    {
      memset(v50, 0, 14);
      v11 = v50;
      v10 = v50;
      goto LABEL_59;
    }

    v37 = *(v7 + 16);
    v38 = *(v7 + 24);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v40))
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v39 += v37 - v40;
    }

    v35 = __OFSUB__(v38, v37);
    v41 = v38 - v37;
    if (!v35)
    {
      goto LABEL_51;
    }

    __break(1u);
LABEL_33:
    v36 = (v7 >> 32) - v7;
    if (v7 >> 32 < v7)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v42 = __DataStorage._offset.getter();
      if (__OFSUB__(v7, v42))
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v33 += v7 - v42;
    }
  }

  v43 = __DataStorage._length.getter();
  if (v43 >= v36)
  {
    v44 = v36;
  }

  else
  {
    v44 = v43;
  }

  v45 = (v44 + v33);
  if (v33)
  {
    v25 = v45;
  }

  else
  {
    v25 = 0;
  }

  v26 = v33;
LABEL_44:
  sub_10009E4B4(v26, v25, v51);
  result = sub_10007676C(v7, v8);
  if (!v3)
  {
    return sub_10000D0A0(v51, v4);
  }

  return result;
}

uint64_t sub_10009D018(__int16 a1, void *a2, uint64_t a3)
{
  if ((a1 & 0x100) == 0)
  {
    sub_10000CA2C();
    swift_allocError();
    *v4 = 32;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v6 = a1;
  v7 = a2;
  v8 = *[v7 bytes];
  v9 = sub_10009E0B8(v7);
  v11 = v9;
  v12 = v10;
  v13 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v33, 0, 14);
      v14 = v33;
LABEL_32:
      sub_10009F2B8(v33, v14, v8, v6, &v32);
      result = sub_10007676C(v11, v12);
      if (!v3)
      {
        return v32;
      }

      return result;
    }

    v15 = *(v9 + 16);
    v31 = *(v9 + 24);
    v16 = __DataStorage._bytes.getter();
    if (v16)
    {
      v17 = __DataStorage._offset.getter();
      if (__OFSUB__(v15, v17))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v16 += v15 - v17;
    }

    if (!__OFSUB__(v31, v15))
    {
      v18 = __DataStorage._length.getter();
      if (v18 >= v31 - v15)
      {
        v19 = v31 - v15;
      }

      else
      {
        v19 = v18;
      }

      v20 = v19 + v16;
      if (v16)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v6;
      v23 = v16;
      v24 = v8;
      goto LABEL_29;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v13)
  {
    v33[0] = v9;
    LOWORD(v33[1]) = v10;
    BYTE2(v33[1]) = BYTE2(v10);
    BYTE3(v33[1]) = BYTE3(v10);
    BYTE4(v33[1]) = BYTE4(v10);
    BYTE5(v33[1]) = BYTE5(v10);
    v14 = v33 + BYTE6(v10);
    goto LABEL_32;
  }

  v25 = (v9 >> 32) - v9;
  if (v9 >> 32 < v9)
  {
    __break(1u);
    goto LABEL_36;
  }

  v26 = __DataStorage._bytes.getter();
  if (v26)
  {
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v27))
    {
      v26 += v11 - v27;
      goto LABEL_22;
    }

LABEL_38:
    __break(1u);
  }

LABEL_22:
  v28 = __DataStorage._length.getter();
  if (v28 >= v25)
  {
    v29 = (v11 >> 32) - v11;
  }

  else
  {
    v29 = v28;
  }

  v30 = v29 + v26;
  if (v26)
  {
    v21 = v30;
  }

  else
  {
    v21 = 0;
  }

  v22 = v6;
  v23 = v26;
  v24 = v8;
LABEL_29:
  sub_10009F2B8(v23, v21, v24, v22, v33);
  result = sub_10007676C(v11, v12);
  if (!v3)
  {
    return v33[0];
  }

  return result;
}

_BYTE *sub_10009D2FC(unint64_t a1, unsigned __int8 a2, id a3)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      result = [a3 bytes];
      if (a1 <= 0xFF)
      {
        *result = a1;
        return result;
      }

      goto LABEL_15;
    }

    if (a2 == 1)
    {
      result = [a3 bytes];
      if (!(a1 >> 16))
      {
        *result = a1;
        return result;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_9:
    sub_10000CA2C();
    swift_allocError();
    *v5 = 32;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      result = [a3 bytes];
      *result = a1;
      result[2] = BYTE2(a1);
      return result;
    }

    goto LABEL_9;
  }

  result = [a3 bytes];
  if (!HIDWORD(a1))
  {
    *result = a1;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10009D42C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 24) = &type metadata for UInt8;
  result = sub_1000A1718();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D468@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 24) = &type metadata for Int8;
  result = sub_1000A16C4();
  *(a1 + 32) = result;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

unint64_t sub_10009D4AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  *(a1 + 24) = &type metadata for UInt8;
  result = sub_1000A1718();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D4E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  *(a1 + 24) = &type metadata for Int8;
  result = sub_1000A16C4();
  *(a1 + 32) = result;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

unint64_t sub_10009D52C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  *(a1 + 24) = &type metadata for UInt8;
  result = sub_1000A1718();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D568@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  *(a1 + 24) = &type metadata for Int8;
  result = sub_1000A16C4();
  *(a1 + 32) = result;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

Swift::Int sub_10009D5AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10009D61C()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10009D668(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

unint64_t sub_10009D70C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 24) = &type metadata for UInt16;
  result = sub_1000A1670();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D748@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 24) = &type metadata for Int16;
  result = sub_1000A161C();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D784@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  *(a1 + 24) = &type metadata for UInt16;
  result = sub_1000A1670();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D7C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  *(a1 + 24) = &type metadata for Int16;
  result = sub_1000A161C();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D7FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  *(a1 + 24) = &type metadata for UInt16;
  result = sub_1000A1670();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D838@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  *(a1 + 24) = &type metadata for Int16;
  result = sub_1000A161C();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

Swift::Int sub_10009D874()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10009D8E4()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10009D930(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

unint64_t sub_10009D9D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 24) = &type metadata for UInt32;
  result = sub_1000A15C8();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009DA10@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = &type metadata for Int;
  result = sub_1000A1574();
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009DA4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  *(a1 + 24) = &type metadata for UInt32;
  result = sub_1000A15C8();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009DA88@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 4);
  a1[3] = &type metadata for Int;
  result = sub_1000A1574();
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009DAC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *(a1 + 24) = &type metadata for UInt32;
  result = sub_1000A15C8();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009DB00@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  a1[3] = &type metadata for Int;
  result = sub_1000A1574();
  a1[4] = result;
  *a1 = v3;
  return result;
}

Swift::Int sub_10009DB3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10009DBA8()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10009DBF0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t ADCControlRequestParameterBlock.init(blockLayout:data:)(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for LogID(0);
  result = __chkstk_darwin(v6);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
        if (a1 == 6)
        {
          v10 = a3 >> 62;
          if ((a3 >> 62) <= 1)
          {
            if (!v10)
            {
              if (BYTE6(a3) != 6)
              {
                goto LABEL_56;
              }

LABEL_52:
              v35 = objc_allocWithZone(NSMutableData);
              isa = Data._bridgeToObjectiveC()().super.isa;
              [v35 initWithData:isa];

              sub_10007676C(a2, a3);
              return a1;
            }

            if (!__OFSUB__(HIDWORD(a2), a2))
            {
              if (HIDWORD(a2) - a2 != 6)
              {
                goto LABEL_56;
              }

              goto LABEL_52;
            }

            goto LABEL_72;
          }

          if (v10 == 2)
          {
            v31 = *(a2 + 16);
            v30 = *(a2 + 24);
            v24 = __OFSUB__(v30, v31);
            v32 = v30 - v31;
            if (!v24)
            {
              if (v32 != 6)
              {
                goto LABEL_56;
              }

              goto LABEL_52;
            }

            goto LABEL_71;
          }

LABEL_56:
          sub_10000CA2C();
          swift_allocError();
          *v37 = 29;
          *(v37 + 8) = 0;
          *(v37 + 16) = 0xE000000000000000;
          swift_willThrow();
          return sub_10007676C(a2, a3);
        }

LABEL_24:
        v16 = result;
        v39 = 0;
        v40 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);
        v17._object = 0x800000010012BF00;
        v17._countAndFlagsBits = 0xD000000000000012;
        String.append(_:)(v17);
        v38[15] = a1;
        _print_unlocked<A, B>(_:_:)();
        v18 = v39;
        v19 = v40;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v20 = sub_10000A1BC(v16, qword_1001794F0);
        sub_10000A2A4(v20, v9);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v21, qword_100179508);
        sub_100039F58(2, v9, v18, v19);

        sub_10000C9D0(v9);
        goto LABEL_56;
      }

      v14 = a3 >> 62;
      if ((a3 >> 62) <= 1)
      {
        if (!v14)
        {
          v15 = BYTE6(a3);
          goto LABEL_55;
        }

        LODWORD(v15) = HIDWORD(a2) - a2;
        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          v15 = v15;
LABEL_55:
          if (v15 == 3)
          {
            goto LABEL_52;
          }

          goto LABEL_56;
        }

        goto LABEL_68;
      }

      goto LABEL_33;
    }

    v13 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_56;
      }

      v23 = *(a2 + 16);
      v22 = *(a2 + 24);
      v24 = __OFSUB__(v22, v23);
      v14 = v22 - v23;
      if (v24)
      {
        __break(1u);
LABEL_33:
        if (v14 != 2)
        {
          goto LABEL_56;
        }

        v26 = *(a2 + 16);
        v25 = *(a2 + 24);
        v24 = __OFSUB__(v25, v26);
        v15 = v25 - v26;
        if (!v24)
        {
          goto LABEL_55;
        }

        __break(1u);
LABEL_37:
        if (v15 != 2)
        {
          goto LABEL_56;
        }

        v28 = *(a2 + 16);
        v27 = *(a2 + 24);
        v24 = __OFSUB__(v27, v28);
        v29 = v27 - v28;
        if (!v24)
        {
          if (v29 != 1)
          {
            goto LABEL_56;
          }

          goto LABEL_52;
        }

        goto LABEL_69;
      }

LABEL_51:
      if (v14 == 4)
      {
        goto LABEL_52;
      }

      goto LABEL_56;
    }

    if (!v13)
    {
      v14 = BYTE6(a3);
      goto LABEL_51;
    }

LABEL_49:
    LODWORD(v14) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v14 = v14;
    goto LABEL_51;
  }

  if (!a1)
  {
    v15 = a3 >> 62;
    if ((a3 >> 62) <= 1)
    {
      if (!v15)
      {
        if (BYTE6(a3) != 1)
        {
          goto LABEL_56;
        }

        goto LABEL_52;
      }

      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        if (HIDWORD(a2) - a2 != 1)
        {
          goto LABEL_56;
        }

        goto LABEL_52;
      }

      goto LABEL_70;
    }

    goto LABEL_37;
  }

  if (a1 != 1)
  {
    goto LABEL_24;
  }

  v11 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_56;
    }

    v34 = *(a2 + 16);
    v33 = *(a2 + 24);
    v24 = __OFSUB__(v33, v34);
    v12 = v33 - v34;
    if (v24)
    {
      __break(1u);
      goto LABEL_49;
    }

LABEL_65:
    if (v12 != 2)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if (!v11)
  {
    v12 = BYTE6(a3);
    goto LABEL_65;
  }

  LODWORD(v12) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v12 = v12;
    goto LABEL_65;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_10009E0B8(void *a1)
{
  v32 = a1;
  *&v33 = a1;
  sub_1000A1244();
  v2 = a1;
  sub_100001AB4(&qword_100177330, &qword_100123B30);
  if (swift_dynamicCast())
  {
    sub_10000D0A0(v34, v36);
    sub_10001EAB8(v36, v36[3]);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v34[0] = v33;
    sub_10000CE78(v36);
    goto LABEL_40;
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_1000A1290(v34);
  v3 = NSData.startIndex.getter();
  v4 = NSData.endIndex.getter();
  v5 = NSData.startIndex.getter();
  v6 = NSData.endIndex.getter();
  if (v3 < v5 || v6 < v3)
  {
    goto LABEL_43;
  }

  v7 = NSData.startIndex.getter();
  v8 = NSData.endIndex.getter();
  if (v4 < v7 || v8 < v4)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v4, v3))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v34[0] = sub_1000A04F8(v4 - v3);
  *(&v34[0] + 1) = v9;
  __chkstk_darwin(*&v34[0]);
  v31[2] = &v32;
  v12 = sub_10009FC64(sub_1000A12F8, v31);
  v13 = v10;
  v14 = *&v34[0];
  v15 = *(&v34[0] + 1) >> 62;
  if ((*(&v34[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v34[0] + 16);
      v16 = *(*&v34[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v11 != v19)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (!v15)
    {
      if (v11 != BYTE14(v34[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (__OFSUB__(DWORD1(v34[0]), v34[0]))
    {
      goto LABEL_48;
    }

    if (v11 != DWORD1(v34[0]) - LODWORD(v34[0]))
    {
LABEL_18:
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          v20 = *&v34[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v34[0]);
        }

LABEL_37:
        if (v20 >= v11)
        {
          Data._Representation.replaceSubrange(_:with:count:)();
          goto LABEL_39;
        }

        goto LABEL_46;
      }

LABEL_35:
      v20 = *(v14 + 24);
      goto LABEL_37;
    }
  }

LABEL_23:
  memset(v36, 0, 15);
  if (v10 == NSData.endIndex.getter())
  {
    goto LABEL_39;
  }

  v21 = NSData.subscript.getter();
  v22 = NSData.startIndex.getter();
  v23 = NSData.endIndex.getter();
  if (v13 < v22 || v13 >= v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v24) = 0;
  v25 = v13 + 1;
  while (1)
  {
    *(v36 + v24) = v21;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v24 == 14)
    {
      *&v33 = v36[0];
      *(&v33 + 6) = *(v36 + 6);
      Data._Representation.append(contentsOf:)();
      if (v25 == NSData.endIndex.getter())
      {
        goto LABEL_39;
      }

      LOBYTE(v24) = 0;
      goto LABEL_32;
    }

    if (v25 == NSData.endIndex.getter())
    {
      break;
    }

LABEL_32:
    v21 = NSData.subscript.getter();
    v26 = NSData.startIndex.getter();
    v27 = NSData.endIndex.getter();
    if (v25 >= v26)
    {
      v14 = v25 + 1;
      if (v25++ < v27)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  *&v33 = v36[0];
  *(&v33 + 6) = *(v36 + 6);
  Data._Representation.append(contentsOf:)();
LABEL_39:

LABEL_40:
  v29 = v34[0];
  sub_1000A1360(*&v34[0], *(&v34[0] + 1));

  sub_10007676C(v29, *(&v29 + 1));
  return v29;
}

uint64_t sub_10009E4B4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    result = sub_1000D5D10(a1, a2, 3);
    if (v3)
    {
      return result;
    }

    v7 = sub_1001128D0(a1, 3uLL);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) <= 1)
    {
      if (!v11)
      {
        v26[0] = v7;
        LOWORD(v26[1]) = v8;
        BYTE2(v26[1]) = BYTE2(v8);
        BYTE3(v26[1]) = BYTE3(v8);
        BYTE4(v26[1]) = BYTE4(v8);
        BYTE5(v26[1]) = BYTE5(v8);
LABEL_18:
        v22 = v26;
        goto LABEL_19;
      }

      if (v7 <= v7 >> 32)
      {
        v19 = __DataStorage._bytes.getter();
        if (v19)
        {
          v20 = v19;
          v21 = __DataStorage._offset.getter();
          if (!__OFSUB__(v9, v21))
          {
            v18 = (v9 - v21 + v20);
            result = __DataStorage._length.getter();
            if (v18)
            {
              goto LABEL_16;
            }

LABEL_30:
            __break(1u);
            return result;
          }

LABEL_26:
          __break(1u);
        }

LABEL_29:
        result = __DataStorage._length.getter();
        __break(1u);
        goto LABEL_30;
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v11 != 2)
    {
      memset(v26, 0, 14);
      goto LABEL_18;
    }

    v14 = *(v7 + 16);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = v15;
      v17 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v17))
      {
        goto LABEL_25;
      }

      v18 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v18)
      {
LABEL_16:
        v22 = v18;
LABEL_19:
        v23 = sub_10010AC70(v22, 3);
        sub_10007676C(v9, v10);
        if (*(v23 + 2) == 3)
        {
          v24 = (v23[34] << 16) | (v23[33] << 8);
          v25 = v23[32];

          *(a3 + 24) = &type metadata for UInt32;
          result = sub_10009EF14();
          *(a3 + 32) = result;
          *a3 = v24 | v25;
          return result;
        }

        sub_10000CA2C();
        swift_allocError();
        v13 = 32;
        goto LABEL_22;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_10000CA2C();
  swift_allocError();
  v13 = 57;
LABEL_22:
  *v12 = v13;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_10009E754@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_34;
  }

  result = sub_1000D5D10(a1, a2, 1);
  if (v3)
  {
    return result;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1001128D0(a1, 1uLL);
  v13 = v11;
  v14 = v12;
  v15 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v77, 0, 14);
      goto LABEL_17;
    }

    v16 = *(v11 + 16);
    v17 = __DataStorage._bytes.getter();
    if (v17)
    {
      v18 = v17;
      v19 = __DataStorage._offset.getter();
      if (__OFSUB__(v16, v19))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v20 = (v16 - v19 + v18);
      __DataStorage._length.getter();
      if (v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_98;
  }

  if (v15)
  {
    if (v11 > v11 >> 32)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v21 = __DataStorage._bytes.getter();
    if (v21)
    {
      v22 = v21;
      v23 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v23))
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v20 = (v13 - v23 + v22);
      __DataStorage._length.getter();
      if (v20)
      {
LABEL_15:
        v24 = v20;
        goto LABEL_18;
      }

LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_98:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_99;
  }

  v77[0] = v11;
  LOWORD(v77[1]) = v12;
  BYTE2(v77[1]) = BYTE2(v12);
  BYTE3(v77[1]) = BYTE3(v12);
  BYTE4(v77[1]) = BYTE4(v12);
  BYTE5(v77[1]) = BYTE5(v12);
LABEL_17:
  v24 = v77;
LABEL_18:
  v25 = sub_10010AC70(v24, 1);
  sub_10007676C(v13, v14);
  if (!*(v25 + 2))
  {
    __break(1u);
    goto LABEL_81;
  }

  v26 = v25[32];

  if (v26 == 4)
  {
    if (!v9)
    {
      goto LABEL_34;
    }

    sub_1000D5D10(v9, v10, 4);
    v37 = sub_1001128D0(v9, 4uLL);
    v39 = v37;
    v40 = v38;
    v41 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v41 != 2)
      {
        memset(v77, 0, 14);
        goto LABEL_68;
      }

      v49 = *(v37 + 16);
      v50 = __DataStorage._bytes.getter();
      if (!v50)
      {
LABEL_102:
        __DataStorage._length.getter();
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v51 = v50;
      v52 = __DataStorage._offset.getter();
      if (__OFSUB__(v49, v52))
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v53 = (v49 - v52 + v51);
      __DataStorage._length.getter();
      if (!v53)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if (!v41)
      {
        v77[0] = v37;
        LOWORD(v77[1]) = v38;
        BYTE2(v77[1]) = BYTE2(v38);
        BYTE3(v77[1]) = BYTE3(v38);
        BYTE4(v77[1]) = BYTE4(v38);
        BYTE5(v77[1]) = BYTE5(v38);
LABEL_68:
        v68 = v77;
LABEL_69:
        v69 = sub_10010ADC4(v68, 1);
        sub_10007676C(v39, v40);
        *(a3 + 24) = &type metadata for UInt32;
        *(a3 + 32) = sub_10009EF14();
        if (*(v69 + 2))
        {
          v70 = v69[8];

          *a3 = v70;
          return result;
        }

        goto LABEL_85;
      }

      if (v37 > v37 >> 32)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v65 = __DataStorage._bytes.getter();
      if (!v65)
      {
        goto LABEL_107;
      }

      v66 = v65;
      v67 = __DataStorage._offset.getter();
      if (__OFSUB__(v39, v67))
      {
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
      }

      v53 = (v39 - v67 + v66);
      result = __DataStorage._length.getter();
      if (!v53)
      {
        goto LABEL_110;
      }
    }

    v68 = v53;
    goto LABEL_69;
  }

  if (v26 == 2)
  {
    if (!v9)
    {
      goto LABEL_34;
    }

    sub_1000D5D10(v9, v10, 2);
    v32 = sub_1001128D0(v9, 2uLL);
    v34 = v32;
    v35 = v33;
    v36 = v33 >> 62;
    if ((v33 >> 62) <= 1)
    {
      if (!v36)
      {
        v77[0] = v32;
        LOWORD(v77[1]) = v33;
        BYTE2(v77[1]) = BYTE2(v33);
        BYTE3(v77[1]) = BYTE3(v33);
        BYTE4(v77[1]) = BYTE4(v33);
        BYTE5(v77[1]) = BYTE5(v33);
LABEL_59:
        v62 = v77;
LABEL_60:
        v63 = sub_10010A954(v62, 1);
        sub_10007676C(v34, v35);
        *(a3 + 24) = &type metadata for UInt16;
        *(a3 + 32) = sub_10009EF68();
        if (*(v63 + 2))
        {
          v64 = v63[16];

          *a3 = v64;
          return result;
        }

        goto LABEL_84;
      }

      if (v32 > v32 >> 32)
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v59 = __DataStorage._bytes.getter();
      if (!v59)
      {
        goto LABEL_106;
      }

      v60 = v59;
      v61 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v61))
      {
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v48 = (v34 - v61 + v60);
      result = __DataStorage._length.getter();
      if (!v48)
      {
        goto LABEL_109;
      }

LABEL_57:
      v62 = v48;
      goto LABEL_60;
    }

    if (v36 != 2)
    {
      memset(v77, 0, 14);
      goto LABEL_59;
    }

    v44 = *(v32 + 16);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v46 = v45;
      v47 = __DataStorage._offset.getter();
      if (__OFSUB__(v44, v47))
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v48 = (v44 - v47 + v46);
      __DataStorage._length.getter();
      if (v48)
      {
        goto LABEL_57;
      }

      goto LABEL_101;
    }

LABEL_100:
    __DataStorage._length.getter();
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v26 != 1)
  {
    sub_10000CA2C();
    swift_allocError();
    v43 = 1;
    goto LABEL_35;
  }

  if (v9)
  {
    sub_1000D5D10(v9, v10, 1);
    v27 = sub_1001128D0(v9, 1uLL);
    v29 = v27;
    v30 = v28;
    v31 = v28 >> 62;
    if ((v28 >> 62) <= 1)
    {
      if (!v31)
      {
        v77[0] = v27;
        LOWORD(v77[1]) = v28;
        BYTE2(v77[1]) = BYTE2(v28);
        BYTE3(v77[1]) = BYTE3(v28);
        BYTE4(v77[1]) = BYTE4(v28);
        BYTE5(v77[1]) = BYTE5(v28);
LABEL_77:
        v74 = v77;
LABEL_78:
        v75 = sub_10010AC70(v74, 1);
        sub_10007676C(v29, v30);
        *(a3 + 24) = &type metadata for UInt8;
        *(a3 + 32) = sub_10009EFBC();
        if (*(v75 + 2))
        {
          v76 = v75[32];

          *a3 = v76;
          return result;
        }

        goto LABEL_86;
      }

      if (v27 > v27 >> 32)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v71 = __DataStorage._bytes.getter();
      if (v71)
      {
        v72 = v71;
        v73 = __DataStorage._offset.getter();
        if (__OFSUB__(v29, v73))
        {
          goto LABEL_95;
        }

        v58 = (v29 - v73 + v72);
        result = __DataStorage._length.getter();
        if (v58)
        {
LABEL_75:
          v74 = v58;
          goto LABEL_78;
        }

        goto LABEL_111;
      }

      goto LABEL_108;
    }

    if (v31 != 2)
    {
      memset(v77, 0, 14);
      goto LABEL_77;
    }

    v54 = *(v27 + 16);
    v55 = __DataStorage._bytes.getter();
    if (v55)
    {
      v56 = v55;
      v57 = __DataStorage._offset.getter();
      if (__OFSUB__(v54, v57))
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v58 = (v54 - v57 + v56);
      __DataStorage._length.getter();
      if (v58)
      {
        goto LABEL_75;
      }

      goto LABEL_105;
    }

LABEL_104:
    __DataStorage._length.getter();
LABEL_105:
    __break(1u);
LABEL_106:
    __DataStorage._length.getter();
    __break(1u);
LABEL_107:
    __DataStorage._length.getter();
    __break(1u);
LABEL_108:
    result = __DataStorage._length.getter();
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    return result;
  }

LABEL_34:
  sub_10000CA2C();
  swift_allocError();
  v43 = 57;
LABEL_35:
  *v42 = v43;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0xE000000000000000;
  return swift_willThrow();
}