unint64_t sub_10003B764()
{
  result = qword_10058E368;
  if (!qword_10058E368)
  {
    result = swift_getWitnessTable(byte_10048D4A0, &type metadata for AWDLActionFrame.DataPathState.ExtensionFlags, v0, v1);
    atomic_store(result, &qword_10058E368);
  }

  return result;
}

unint64_t sub_10003B818()
{
  result = qword_10058EA98;
  if (!qword_10058EA98)
  {
    result = swift_getWitnessTable(byte_10048C7E8, &type metadata for AWDLActionFrame.DataPathState.ExtensionFlags, v0, v1);
    atomic_store(result, &qword_10058EA98);
  }

  return result;
}

uint64_t sub_10003B86C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003B8D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003B934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10003B994(void *a1)
{
  v3 = sub_10005DC58(&qword_100591FF8, &qword_10049EDA8);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - v5;
  sub_100029B34(a1, a1[3]);
  sub_10003BBB8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  LOBYTE(v11) = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v11) = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v11) = 2;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 3;
  sub_100039F68();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v7 | (v8 << 16) | (v9 << 32);
}

unint64_t sub_10003BBB8()
{
  result = qword_100591C90;
  if (!qword_100591C90)
  {
    result = swift_getWitnessTable("i\a\v", &type metadata for IEEE80211InformationElement.HighThroughputCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591C90);
  }

  return result;
}

uint64_t sub_10003BC0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_10002B154(a1, &v67);
  sub_10005DC58(&qword_10058D3D8, &unk_10049EDB0);
  v7 = type metadata accessor for BinaryDecoder();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v8 = v72[4];
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_53;
  }

  v10 = v72[2];
  v11 = v72[3];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      if (*(v10 + 24) >= v9)
      {
        goto LABEL_9;
      }
    }

    else if (v9 < 1)
    {
      goto LABEL_9;
    }

LABEL_21:
    sub_10000B02C();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 2;
    swift_willThrow();

LABEL_40:
    sub_100002A00(v73);
    return sub_100002A00(a1);
  }

  if (v12)
  {
    v13 = v10 >> 32;
  }

  else
  {
    v13 = BYTE6(v11);
  }

  if (v13 < v9)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (v9 < v8)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v14 = Data._Representation.subscript.getter();
  v16 = v15;

  v17 = sub_10003C7E8(v14, v16);
  sub_1000124C8(v14, v16);
  if ((v17 & 0x100) != 0)
  {
    goto LABEL_38;
  }

  v18 = sub_10003CB60(v17);
  if (v18 <= 4)
  {
    if (v18 <= 1)
    {
      if (v18)
      {
        sub_10022B784(v73, 1, &v67);
        v25 = 0;
        v77 = 0;
        v65 = 0;
        v66 = 0;
        LOBYTE(v16) = BYTE2(v67);
        LOWORD(v22) = WORD4(v67);
        v58 = v68;
        LOWORD(v59) = v69;
        v57 = v70;
        LOBYTE(v60) = v71;
        LOBYTE(v23) = v67;
        LODWORD(v3) = BYTE1(v67);
        v61 = *(&v67 + 1) >> 16;
        LOBYTE(v62) = 0;
        v63 = *(&v67 + 1) & 0xFFFFFFFF00000000;
        LOBYTE(v64) = 0;
      }

      else
      {
        sub_10022BD6C(v73, 0, &v67);
        v77 = 0;
        v65 = 0;
        v66 = 0;
        LOBYTE(v16) = BYTE2(v67);
        LOBYTE(v7) = BYTE4(v67);
        LOBYTE(v23) = v67;
        LODWORD(v3) = BYTE1(v67);
        LOWORD(v22) = WORD4(v67);
        v61 = *(&v67 + 1) >> 16;
        LOBYTE(v62) = 0;
        v63 = *(&v67 + 1) & 0xFFFFFFFF00000000;
        LOBYTE(v64) = BYTE3(v67);
        v25 = 2;
        LOBYTE(v60) = 0;
        v58 = v68;
        LOWORD(v59) = 0;
      }

      goto LABEL_46;
    }

    if (v18 == 2)
    {
      sub_10022C080(v73, 2, &v67);
      v77 = 0;
      LOBYTE(v64) = 0;
      v65 = 0;
      LOBYTE(v23) = v67;
      LOWORD(v22) = WORD4(v67);
      v61 = *(&v67 + 1) >> 16;
      LOBYTE(v62) = 0;
      v57 = v70;
      v58 = v68;
      v63 = *(&v67 + 1) & 0xFFFFFFFF00000000;
      v66 = v69 & 0xFFFFFFFFFFFF0000;
      v25 = 3;
      LOWORD(v59) = v69;
      LOBYTE(v60) = 0;
      goto LABEL_46;
    }

    if (v18 != 3)
    {
      v30 = sub_10003C870(v73, 4uLL);
      v77 = 0;
      LODWORD(v61) = HIWORD(v31);
      v7 = HIDWORD(v30);
      v65 = v30 & 0xFFFF000000000000;
      v66 = 0;
      v3 = v30 >> 8;
      v16 = v30 >> 16;
      v63 = 0;
      v64 = v30 >> 24;
      v25 = 4;
      v60 = v30 >> 24;
      v59 = v30 >> 24;
      v62 = v30 >> 40;
      LOBYTE(v23) = v30;
      LOWORD(v22) = v31;
      goto LABEL_46;
    }

    sub_10022C5B8(v73, 3, &v67);
    v77 = 0;
    LOBYTE(v23) = v67;
    LOWORD(v22) = WORD4(v67);
    v3 = v67 >> 8;
    v16 = v67 >> 16;
    v7 = DWORD1(v67);
    v65 = v67 & 0xFFFF000000000000;
    v66 = 0;
    v61 = *(&v67 + 1) >> 16;
    v62 = v67 >> 40;
    LOWORD(v24) = 0;
    v63 = *(&v67 + 1) & 0xFFFFFFFF00000000;
    v64 = v67 >> 24;
    v25 = 7;
    goto LABEL_29;
  }

  if (v18 > 7)
  {
    if (v18 != 8)
    {
      if (v18 == 9)
      {
        sub_10022C8E0(v73, 9, &v67);
        v77 = 0;
        LOBYTE(v23) = v67;
        LOWORD(v22) = WORD4(v67);
        v3 = v67 >> 8;
        v16 = v67 >> 16;
        v7 = DWORD1(v67);
        v65 = v67 & 0xFFFF000000000000;
        v66 = 0;
        v61 = *(&v67 + 1) >> 16;
        v62 = v67 >> 40;
        LOWORD(v24) = 0;
        v63 = *(&v67 + 1) & 0xFFFFFFFF00000000;
        v64 = v67 >> 24;
        v25 = 10;
LABEL_29:
        LOBYTE(v60) = v24;
        LOWORD(v59) = v24;
        goto LABEL_46;
      }

LABEL_38:
      sub_10000B02C();
      swift_allocError();
      *v20 = xmmword_10047CE70;
      goto LABEL_39;
    }

    sub_100031694(v73, v74);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_100031694(v73, v74);
    v26 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (!v26)
    {
      goto LABEL_38;
    }

    v4 = v26;
    sub_100031694(v73, v74);
    v27 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v27 != 8)
    {
      if (v27 != 100)
      {
        goto LABEL_38;
      }

      v28 = 1;
LABEL_55:
      v43 = v74;
      v44 = v75;
      sub_100031694(v73, v74);
      v23 = UnkeyedDecodingContainer.decodeData(with:)((v4 - 1), v43, v44);
      v46 = v45;
      v47 = sub_100033AA8(_swiftEmptyArrayStorage);
      v48 = swift_allocObject();
      v48[5] = &_swiftEmptyDictionarySingleton;
      v48[2] = v23;
      v48[3] = v46;
      v49 = v46 >> 62;
      v50 = 0;
      if (v28)
      {
        if ((v46 >> 62) > 1)
        {
          if (v49 == 2)
          {
            v50 = *(v23 + 16);
          }
        }

        else if (v49)
        {
          v50 = v23;
        }

        v48[4] = v50;
        swift_beginAccess();
        v48[5] = v47;
        v69 = v7;
        v70 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        *&v67 = v48;
        sub_10000AB0C(v23, v46);

        sub_10022F280(&v67, v76);
        v51 = v76[0];
        v22 = v76[1];
        v58 = v76[2];
        v59 = v76[3];
        v52 = v76[5];
        v56 = v76[6];
        v57 = v76[4];
        sub_1000124C8(v23, v46);

        v16 = v51 >> 16;
        v63 = v22 & 0xFFFFFFFF00000000;
        v64 = v51 >> 24;
        v65 = v51 & 0xFFFF000000000000;
        v66 = v59 & 0xFFFFFFFFFFFF0000;
        v77 = v52 & 0xFFFFFFFFFFFFFF00;
        v62 = v51 >> 40;
        v25 = 6;
        LOBYTE(v60) = v52;
        v61 = v22 >> 16;
        v7 = HIDWORD(v51);
        LOBYTE(v23) = v51;
        v3 = v51 >> 8;
        goto LABEL_46;
      }

      if ((v46 >> 62) > 1)
      {
        if (v49 == 2)
        {
          v50 = *(v23 + 16);
        }
      }

      else if (v49)
      {
        v50 = v23;
      }

      v48[4] = v50;
      swift_beginAccess();
      v48[5] = v47;
      v69 = v7;
      v70 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v67 = v48;
      sub_10000AB0C(v23, v46);

      v53 = sub_10022ECCC(&v67, &qword_100591FA0, &qword_10049ED80, sub_10023037C, &type metadata for IEEE80211InformationElement.WrappedData.CodingKeys);
      v22 = v54;
      sub_1000124C8(v23, v46);

      v77 = 0;
      v23 = v53;
      v3 = v53 >> 8;
      v16 = v53 >> 16;
      v55 = v53 >> 24;
      v65 = v53 & 0xFFFF000000000000;
      v66 = 0;
      v7 = HIDWORD(v53);
      v63 = v22 & 0xFFFFFFFF00000000;
      LOBYTE(v64) = v55;
      v25 = 5;
      v24 = v22 >> 16;
      v61 = v22 >> 16;
      v62 = v23 >> 40;
      goto LABEL_29;
    }

LABEL_54:
    v28 = 0;
    goto LABEL_55;
  }

  if (v18 == 5)
  {
    sub_10022C384(v73, 5);
    v57 = 0;
    v58 = 0;
    v56 = 0;
    LOBYTE(v60) = 0;
    v77 = 0;
    LOWORD(v59) = 0;
    v65 = 0;
    v66 = 0;
    LOWORD(v22) = 0;
    LOWORD(v61) = 0;
    LOBYTE(v62) = 0;
    v63 = 0;
    LOBYTE(v64) = 0;
    LOBYTE(v7) = 0;
    LOBYTE(v16) = 0;
    LOBYTE(v23) = 0;
    LOBYTE(v3) = 0;
    v25 = 11;
  }

  else
  {
    if (v18 == 6)
    {
      sub_100031694(v73, v74);
      dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      sub_100031694(v73, v74);
      v19 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      if (v19 < 3u)
      {
        sub_10000B02C();
        swift_allocError();
        *v20 = 0;
        *(v20 + 8) = 0;
LABEL_39:
        *(v20 + 16) = 2;
        swift_willThrow();
        goto LABEL_40;
      }

      sub_100031694(v73, v74);
      sub_1000317F0();
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v34 = v19;
      LODWORD(v23) = v67;
      LODWORD(v3) = BYTE1(v67);
      LODWORD(v16) = BYTE2(v67);
      v77 = v34 - 3;
      v35 = v74;
      v36 = v75;
      sub_100031694(v73, v74);
      v37 = UnkeyedDecodingContainer.decodeData(with:)(v77, v35, v36);
      v58 = v38;
      v22 = v37;
      if (!sub_1000319F0(v23 | (v3 << 8) | (v16 << 16), 0x9A6F50u) || (sub_10003C7E8(v22, v58) & 0x1FF) != 0x13)
      {
        v77 = 0;
        v65 = 0;
        v66 = 0;
        v61 = v22 >> 16;
        LOBYTE(v62) = 0;
        v63 = v22 & 0xFFFFFFFF00000000;
        LOBYTE(v64) = 0;
        LOBYTE(v60) = 0;
        LOWORD(v59) = 0;
        v25 = 9;
        goto LABEL_46;
      }

      v39 = sub_100033AA8(_swiftEmptyArrayStorage);
      v40 = swift_allocObject();
      v41 = 0;
      v40[5] = &_swiftEmptyDictionarySingleton;
      v40[2] = v22;
      v40[3] = v58;
      v42 = v58 >> 62;
      if ((v58 >> 62) > 1)
      {
        if (v42 == 2)
        {
          v41 = *(v22 + 16);
        }
      }

      else if (v42)
      {
        v41 = v22;
      }

      v40[4] = v41;
      swift_beginAccess();
      v40[5] = v39;
      v69 = v7;
      v70 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      *&v67 = v40;
      v32 = sub_100288240(&v67);
      v77 = 0;
      LOWORD(v22) = 0;
      v3 = v32 >> 8;
      v16 = v32 >> 16;
      v63 = 0;
      v64 = v32 >> 24;
      v7 = HIDWORD(v32);
      LOWORD(v61) = 0;
      v62 = v32 >> 40;
      v65 = v32 & 0xFFFF000000000000;
      v66 = 0;
      v25 = 8;
      LOBYTE(v60) = 0;
      LOWORD(v59) = 0;
    }

    else
    {
      v32 = sub_10022BA84(v73, 7);
      v77 = 0;
      LOWORD(v22) = 0;
      v3 = v32 >> 8;
      v16 = v32 >> 16;
      v63 = 0;
      v64 = v32 >> 24;
      v7 = HIDWORD(v32);
      LOWORD(v61) = 0;
      v62 = v32 >> 40;
      v65 = v32 & 0xFFFF000000000000;
      v66 = 0;
      v25 = 1;
      LOBYTE(v60) = 0;
      LOWORD(v59) = 0;
    }

    LOBYTE(v23) = v32;
  }

LABEL_46:
  sub_100002A00(v73);
  result = sub_100002A00(a1);
  *a2 = v23 | (v3 << 8) | ((v16 | (v64 << 8)) << 16) | v65 | ((v7 | (v62 << 8)) << 32);
  *(a2 + 8) = v63 | v22 | (v61 << 16);
  *(a2 + 16) = v58;
  *(a2 + 24) = v66 | v59;
  v33 = v77 | v60;
  *(a2 + 32) = v57;
  *(a2 + 40) = v33;
  *(a2 + 48) = v56;
  *(a2 + 56) = v25;
  return result;
}

uint64_t sub_10003C7E8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = Data._Representation.subscript.getter();
  v4 = 0;
  return v3 | (v4 << 8);
}

unint64_t sub_10003C870(uint64_t a1, unint64_t a2)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80, protocol conformance descriptor for TypeLengthValue<A, B>);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  swift_endAccess();
  if (v2)
  {
    return a2;
  }

  v5 = v17;
  v6 = v18;
  v7 = sub_10003CB60(v16);
  if (v7 <= 4)
  {
    if (v7 <= 1)
    {
      if (v7)
      {
        v8 = 48;
      }

      else
      {
        v8 = 45;
      }
    }

    else if (v7 == 2)
    {
      v8 = 61;
    }

    else if (v7 == 3)
    {
      v8 = 140;
    }

    else
    {
      v8 = 191;
    }
  }

  else if (v7 > 7)
  {
    if (v7 == 8)
    {
      v8 = 255;
    }

    else
    {
      if (v7 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v14 = xmmword_10047CE70;
        *(v14 + 16) = 2;
        swift_willThrow();
        sub_1000124C8(v5, v6);
        return a2;
      }

      v8 = 76;
    }
  }

  else if (v7 == 5)
  {
    v8 = 192;
  }

  else if (v7 == 6)
  {
    v8 = 221;
  }

  else
  {
    v8 = 244;
  }

  if (v8 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v17, v18);
  v9 = sub_100033AA8(_swiftEmptyArrayStorage);
  v10 = type metadata accessor for BinaryDecoder();
  v11 = swift_allocObject();
  v12 = 0;
  v11[5] = &_swiftEmptyDictionarySingleton;
  v11[2] = v5;
  v11[3] = v6;
  v13 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v12 = *(v5 + 16);
    }
  }

  else if (v13)
  {
    v12 = v5;
  }

  v11[4] = v12;
  swift_beginAccess();
  v11[5] = v9;
  v19 = v10;
  v20 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v16 = v11;
  a2 = sub_10003CC24(&v16);
  sub_1000124C8(v5, v6);
  return a2;
}

uint64_t sub_10003CB60(unsigned __int8 a1)
{
  if (a1 > 0xBEu)
  {
    if (a1 <= 0xDCu)
    {
      if (a1 == 191)
      {
        return 4;
      }

      if (a1 == 192)
      {
        return 5;
      }
    }

    else
    {
      switch(a1)
      {
        case 0xDDu:
          return 6;
        case 0xF4u:
          return 7;
        case 0xFFu:
          return 8;
      }
    }
  }

  else if (a1 <= 0x3Cu)
  {
    if (a1 == 45)
    {
      return 0;
    }

    if (a1 == 48)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x3Du:
        return 2;
      case 0x4Cu:
        return 9;
      case 0x8Cu:
        return 3;
    }
  }

  return 10;
}

unint64_t sub_10003CC24(void *a1)
{
  v3 = sub_10005DC58(&qword_100591FE8, &qword_10049ED98);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v10 - v5;
  sub_100029B34(a1, a1[3]);
  sub_10003CED4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v16 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 2;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 4;
  v10[2] = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v7 | (v11 << 32) | (v8 << 48);
}

uint64_t sub_10003CE48(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003CE90(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for NANAttribute(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003CED4()
{
  result = qword_100591CC0;
  if (!qword_100591CC0)
  {
    result = swift_getWitnessTable("Y\b\v", &type metadata for IEEE80211InformationElement.VeryHighThroughputCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591CC0);
  }

  return result;
}

uint64_t sub_10003CF28(void *a1)
{
  v3 = sub_10005DC58(&qword_10058ECD8, &qword_10048D640);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_100029B34(a1, a1[3]);
  sub_10003D0E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v10[14] = 0;
  sub_100032B20();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v10[15];
  v10[13] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v7 | (v8 << 8);
}

unint64_t sub_10003D0E4()
{
  result = qword_10058E3C8;
  if (!qword_10058E3C8)
  {
    result = swift_getWitnessTable(a9, &type metadata for AWDLActionFrame.Version.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E3C8);
  }

  return result;
}

uint64_t sub_10003D138@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = sub_10005DC58(&qword_10058ECB0, &qword_10048D630);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25.i8[-v10];
  sub_100029B34(a1, a1[3]);
  sub_10003D548();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  LOBYTE(v40) = 0;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = 1;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v3.i32[0] = v40;
  v38 = BYTE4(v40);
  v12 = BYTE5(v40);
  v41 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v4.i32[0] = v40;
  v36 = BYTE4(v40);
  v37 = v12;
  v13 = BYTE5(v40);
  v41 = 3;
  sub_10003D59C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v13;
  v14 = v40;
  v41 = 4;
  sub_10003D8C0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v14;
  LODWORD(v14) = v40;
  v15 = BYTE1(v40);
  v41 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v15;
  v33 = v14;
  v5.i32[0] = v40;
  v16 = BYTE4(v40);
  v17 = BYTE5(v40);
  LOBYTE(v40) = 6;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v17;
  v31 = v18;
  LOBYTE(v40) = 7;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v16;
  v29 = v19;
  LOBYTE(v40) = 8;
  LOWORD(v17) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 9;
  LODWORD(v14) = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v9 + 8))(v11, v8);
  v25 = vmovl_u8(v3);
  v26 = vmovl_u8(v4);
  v27 = vmovl_u8(v5);
  result = sub_100002A00(a1);
  v21 = v38;
  *a2 = v39;
  *(a2 + 2) = vuzp1_s8(*v25.i8, *v25.i8).u32[0];
  *(a2 + 6) = v21;
  v22 = v36;
  *(a2 + 7) = v37;
  *(a2 + 8) = vuzp1_s8(*v26.i8, *v26.i8).u32[0];
  *(a2 + 12) = v22;
  *(a2 + 13) = v35;
  *(a2 + 16) = v34;
  v23 = v32;
  *(a2 + 24) = v33;
  *(a2 + 25) = v23;
  *(a2 + 26) = vuzp1_s8(*v27.i8, *v27.i8).u32[0];
  *(a2 + 30) = v28;
  v24 = v31;
  *(a2 + 31) = v30;
  *(a2 + 32) = v24;
  *(a2 + 33) = v29;
  *(a2 + 34) = v17;
  *(a2 + 36) = v14;
  return result;
}

unint64_t sub_10003D548()
{
  result = qword_10058E3F0;
  if (!qword_10058E3F0)
  {
    result = swift_getWitnessTable(byte_10048D2C0, &type metadata for AWDLActionFrame.NANSynchronization.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E3F0);
  }

  return result;
}

unint64_t sub_10003D59C()
{
  result = qword_10058ECB8;
  if (!qword_10058ECB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANTimeSynchronizationFunction, &type metadata for NANTimeSynchronizationFunction, v0, v1);
    atomic_store(result, &qword_10058ECB8);
  }

  return result;
}

uint64_t sub_10003D5F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_100590C10, &qword_100494E98);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100029B34(a1, a1[3]);
  sub_10003D750();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100002A00(a1);
  *a2 = v9;
  return result;
}

unint64_t sub_10003D750()
{
  result = qword_100590C08;
  if (!qword_100590C08)
  {
    result = swift_getWitnessTable("š\v", &type metadata for NANTimeSynchronizationFunction.CodingKeys, v0, v1);
    atomic_store(result, &qword_100590C08);
  }

  return result;
}

uint64_t sub_10003D7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = a4();
  result = sub_100032E9C(a5, a1, v11, v12, a5, v13, a6, v14);
  if (!v7)
  {
    return v16;
  }

  return result;
}

unint64_t sub_10003D86C()
{
  result = qword_10058E2C8;
  if (!qword_10058E2C8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt64, &type metadata for UInt64, v0, v1);
    atomic_store(result, &qword_10058E2C8);
  }

  return result;
}

unint64_t sub_10003D8C0()
{
  result = qword_10058ECC0;
  if (!qword_10058ECC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.MasterIndication, &type metadata for NANAttribute.MasterIndication, v0, v1);
    atomic_store(result, &qword_10058ECC0);
  }

  return result;
}

uint64_t sub_10003D940@<X0>(uint64_t (*a1)(void)@<X3>, _WORD *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10003D970(void *a1)
{
  v2 = v1;
  v4 = sub_10005DC58(&qword_1005938B0, &qword_1004ABB70);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11[-v6];
  sub_100029B34(a1, a1[3]);
  sub_10003DB18();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    v11[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11[14] = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    sub_100002A00(a1);
    return v8 | (v9 << 8);
  }

  return v2;
}

unint64_t sub_10003DB18()
{
  result = qword_100592090;
  if (!qword_100592090)
  {
    result = swift_getWitnessTable(byte_1004AB99C, &type metadata for NANAttribute.MasterIndication.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592090);
  }

  return result;
}

unint64_t sub_10003DB6C(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v10, v11);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_100031694(v10, v11);
    v3 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_100031694(v10, v11);
    v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v5 = sub_100039824(v3, v4);
    if ((v5 & 0xFF00000000) != 0x300000000)
    {
      v7 = v5;
      sub_100031694(v10, v11);
      v8 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      sub_10003DD34(v8 << 8, v10);
      sub_100002A00(v10);
      sub_100002A00(a1);
      return v7 & 0xFFFFFFFFFFFFLL;
    }

    sub_10000B02C();
    swift_allocError();
    *v6 = xmmword_10047CE70;
    *(v6 + 16) = 2;
    swift_willThrow();
    sub_100002A00(v10);
  }

  return sub_100002A00(a1);
}

unint64_t sub_10003DD34(__int16 a1, uint64_t a2)
{
  v3 = (HIBYTE(a1) - a1);
  v20 = HIBYTE(a1);
  v21 = a1;
  if (HIBYTE(a1) < a1)
  {
    v4 = -(a1 - HIBYTE(a1));
  }

  else
  {
    v4 = (HIBYTE(a1) - a1);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  result = sub_10003DF80(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = _swiftEmptyArrayStorage;
    LODWORD(v8) = v20 - v21;
    if (v20 >= v21)
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = -v8;
    while (v4)
    {
      sub_100031694(a2, *(a2 + 24));
      v10 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      if (v2)
      {
        goto LABEL_23;
      }

      v11 = v10;
      v22 = v4;
      v23 = v3;
      sub_100031694(a2, *(a2 + 24));
      v12 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      sub_100031694(a2, *(a2 + 24));
      v13 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      result = sub_100039824(v11, v12);
      if ((result & 0xFF00000000) == 0x300000000 || BYTE4(result) < 2u)
      {
        sub_10000B02C();
        swift_allocError();
        *v19 = xmmword_10047CE70;
        *(v19 + 16) = 2;
        swift_willThrow();
LABEL_23:

        return v5;
      }

      v24 = v5;
      v16 = v5[2];
      v15 = v5[3];
      if (v16 >= v15 >> 1)
      {
        v18 = result;
        sub_10003DF80((v15 > 1), v16 + 1, 1);
        result = v18;
        v5 = v24;
      }

      v5[2] = v16 + 1;
      v17 = &v5[v16];
      *(v17 + 8) = result;
      *(v17 + 36) = BYTE4(result);
      *(v17 + 37) = BYTE5(result);
      *(v17 + 38) = v13;
      if (v20 < v21)
      {
        goto LABEL_26;
      }

      if (!v9)
      {
        goto LABEL_27;
      }

      ++v9;
      v4 = v22 - 1;
      --v3;
      if (v23 == 1)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10003DF80(char *a1, int64_t a2, char a3)
{
  result = sub_100027BF8(a1, a2, a3, *v3, &qword_10058CCD0, &qword_100482FE8);
  *v3 = result;
  return result;
}

uint64_t sub_10003DFB0(void *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 30;
  }

  else
  {
    return (*a1 & 0x1FF | (BYTE2(*a1) << 9) | (*a1 >> 15) & 0xFFFE0000) + 2;
  }
}

uint64_t sub_10003DFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10003E048(void (*a1)(void, void), int a2, uint64_t a3, unsigned __int16 *a4)
{
  v447 = a3;
  v448 = a4;
  LODWORD(v446) = a2;
  v445 = a1;
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 440);
  v8 = *(v7 + 1);
  v9 = *(*v4 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v421 = swift_getAssociatedTypeWitness();
  v420 = *(v421 - 1);
  __chkstk_darwin();
  v419 = &v387 - v12;
  v438 = type metadata accessor for UUID();
  v437 = *(v438 - 8);
  __chkstk_darwin();
  v430 = &v387 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTimeInterval();
  v435 = *(v14 - 8);
  __chkstk_darwin();
  v397 = &v387 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v403 = &v387 - v16;
  __chkstk_darwin();
  v406 = &v387 - v17;
  __chkstk_darwin();
  v407 = &v387 - v18;
  v428 = AssociatedConformanceWitness;
  v427 = AssociatedTypeWitness;
  v418 = swift_getAssociatedTypeWitness();
  v417 = *(v418 - 8);
  __chkstk_darwin();
  v416 = &v387 - v19;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v422 = &v387 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v432 = &v387 - v21;
  __chkstk_darwin();
  v414 = &v387 - v22;
  v444 = v9;
  v439 = v7;
  v24 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation(255, v9, v7, v23);
  v436 = type metadata accessor for Optional();
  v441 = *(v436 - 8);
  __chkstk_darwin();
  v424 = &v387 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v404 = &v387 - v26;
  __chkstk_darwin();
  v426 = &v387 - v27;
  __chkstk_darwin();
  v425 = &v387 - v28;
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v400 = &v387 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v405 = &v387 - v30;
  __chkstk_darwin();
  v413 = &v387 - v31;
  __chkstk_darwin();
  v409 = &v387 - v32;
  v442 = *(v24 - 8);
  __chkstk_darwin();
  v411 = &v387 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v431 = (&v387 - v34);
  __chkstk_darwin();
  v402 = &v387 - v35;
  __chkstk_darwin();
  v399 = &v387 - v36;
  __chkstk_darwin();
  v412 = &v387 - v37;
  __chkstk_darwin();
  v433 = &v387 - v38;
  __chkstk_darwin();
  v408 = &v387 - v39;
  v434 = type metadata accessor for DispatchTime();
  v429 = *(v434 - 8);
  __chkstk_darwin();
  v401 = &v387 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v423 = &v387 - v41;
  __chkstk_darwin();
  v410 = &v387 - v42;
  sub_10005DC58(&unk_10059B170, &unk_1004B4D70);
  __chkstk_darwin();
  v415 = &v387 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v398 = &v387 - v44;
  __chkstk_darwin();
  v440 = (&v387 - v45);
  sub_10005DC58(&qword_10058D450, &unk_100486D78);
  __chkstk_darwin();
  v443 = &v387 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v396 = &v387 - v47;
  __chkstk_darwin();
  v49 = &v387 - v48;
  __chkstk_darwin();
  v51 = &v387 - v50;
  __chkstk_darwin();
  v53 = &v387 - v52;
  type metadata accessor for AWDLPeer(0);
  __chkstk_darwin();
  v56 = &v387 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + *(v5 + 712)) != 1 || (*(v4 + *(v6 + 664)) & 1) != 0)
  {
    return;
  }

  v393 = v49;
  v394 = v14;
  v390 = v24;
  v57 = v54;
  v58 = swift_allocBox();
  v60 = v59;
  v61 = v448;
  sub_100041B60(*v448 | (*(v448 + 1) << 16), v59);
  v62 = *(v60 + v57[20]);
  v63 = (v60 + v57[11]);
  v388 = *v63;
  v391 = *(v63 + 2);
  v392 = v62;

  AWDLPeer.received(actionFrame:with:)(v445 & 0xFFFFFFFF00FF01FFLL, v446, v447, v61);
  v64 = v57;
  v65 = v57[27];
  v66 = *(v60 + v65);
  v447 = v60;
  v448 = v64;
  v395 = v4;
  if (v66)
  {
    v446 = 0;
    v67 = v64;
    v68 = v394;
    v69 = v58;
  }

  else
  {
    v389 = v58;
    v70 = *(v60 + v64[5]) | (*(v60 + v64[5] + 2) << 16);
    v71 = WiFiAddress.ipv6LinkLocalAddress.getter(v70);
    v445 = v72;
    v446 = v71;
    v387 = v73;
    v75 = v74;
    swift_beginAccess();
    v77 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable(0, v444, v8, v76);
    WiFiInterface.NeighborDiscoveryTable.postPeerPresence(macAddress:ipv6Address:)(v70, v446, v445, v387, v75, v77);
    v446 = 0;
    swift_endAccess();

    *(v60 + v65) = 1;
    v69 = v389;
    v67 = v448;
    v68 = v394;
  }

  v78 = v393;
  v79 = v447;
  swift_beginAccess();
  v80 = (v79 + *(v67 + 5));
  v81 = *(v80 + 1);
  v82 = *v80;
  sub_100027648(v79, v56, type metadata accessor for AWDLPeer);
  v83 = v82 | (v81 << 16);
  sub_100044A04(v56, v83);
  v457 = 0;
  sub_100012400(v79 + *(v67 + 14), v53, &qword_10058D450, &unk_100486D78);
  v84 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  v85 = *(*(v84 - 8) + 48);
  if (v85(v53, 1, v84) == 1)
  {
    sub_100016290(v53, &qword_10058D450, &unk_100486D78);
    goto LABEL_15;
  }

  v86 = v53[64];
  sub_1000473F0(v53, type metadata accessor for AWDLActionFrame.DataPathState);
  if (v86 != 47)
  {
    v87 = sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v88 = AWDLTrafficRegistrationConfiguration.init(peerAddress:umiOptions:isActive:)(v83, v86, &v457);
    if (v88)
    {
      v89 = v88;
      if (v457 != 1)
      {
        v456 = v88;
        v160 = v395;
        swift_beginAccess();
        v161 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
        v162 = v390;
        type metadata accessor for Dictionary();
        v163 = v424;
        Dictionary.removeValue(forKey:)();
        swift_endAccess();
        sub_10004C128();
        v164 = v442;
        if ((*(v442 + 6))(v163, 1, v162) != 1)
        {
          v190 = v412;
          (*(v164 + 4))(v412, v163, v162);
          v191 = v89;
          v192 = Logger.logObject.getter();
          v193 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v192, v193))
          {
            v194 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v194 = 136315394;
            v195 = [v191 uniqueIdentifier];
            v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v198 = v197;

            v199 = sub_100002320(v196, v198, &aBlock);

            *(v194 + 4) = v199;
            *(v194 + 12) = 2080;
            v200 = [v191 peerAddress];
            v201 = WiFiMACAddress.wifiAddress.getter();

            v202 = WiFiAddress.description.getter(v201 & 0xFFFFFFFFFFFFLL);
            v204 = sub_100002320(v202, v203, &aBlock);

            *(v194 + 14) = v204;
            _os_log_impl(&_mh_execute_header, v192, v193, "Successfully cleared traffic registration for %s from %s", v194, 0x16u);
            swift_arrayDestroy();
            v162 = v390;
          }

          v105 = v447;
          v117 = v448;
          v205 = v442;
          v206 = v426;
          (*(v442 + 2))(v426, v190, v162);
          (*(v205 + 7))(v206, 0, 1, v162);
          sub_100456BB0(v191, v206, v207, v208);

          (*(v441 + 8))(v206, v436);
          (*(v205 + 1))(v190, v162);
          goto LABEL_80;
        }

        v443 = v89;
        v389 = v69;
        v165 = *(v441 + 8);
        v441 += 8;
        v165(v163, v436);
        v166 = *(*v160 + 608);
        swift_beginAccess();
        v167 = *(v160 + v166);
        if (*(v167 + 16))
        {

          v168 = v443;
          sub_1003E09E8(v443);
          if (v169)
          {
            v446 = v165;
            v170 = *(v167 + 36);

            v385 = v161;
            v171 = v399;
            v444 = v170;
            Dictionary.subscript.getter();

            v172 = v400;
            sub_100012400(&v171[*(v162 + 36)], v400, &unk_100597330, &unk_100481FA0);
            v173 = v442 + 8;
            v445 = *(v442 + 1);
            (v445)(v171, v162);
            v174 = v429;
            v175 = v434;
            if ((*(v429 + 48))(v172, 1, v434) != 1)
            {
              v440 = v173;
              (*(v174 + 32))(v401, v172, v175);
              type metadata accessor for P2PTimer(0);
              v348 = v423;
              variable initialization expression of AWDLPeer.lastUpdated();
              v349 = v403;
              DispatchTime.distance(to:)();
              v350 = *(v174 + 8);
              v429 = v174 + 8;
              v439 = v350;
              v350(v348, v175);
              swift_beginAccess();
              Dictionary.remove(at:)();
              v351 = v455;
              swift_endAccess();

              sub_10004C128();
              v352 = v435;
              v353 = v397;
              v354 = v349;
              v355 = v394;
              (*(v435 + 16))(v397, v354, v394);
              v356 = v443;
              v357 = Logger.logObject.getter();
              v358 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v357, v358))
              {
                v359 = v353;
                v360 = swift_slowAlloc();
                v444 = swift_slowAlloc();
                v456 = v444;
                *v360 = 136315650;
                v361 = [v356 uniqueIdentifier];
                v362 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v364 = v363;

                v365 = sub_100002320(v362, v364, &v456);

                *(v360 + 4) = v365;
                *(v360 + 12) = 2080;
                v366 = [v356 peerAddress];
                v367 = WiFiMACAddress.wifiAddress.getter();

                v368 = WiFiAddress.description.getter(v367 & 0xFFFFFFFFFFFFLL);
                v370 = sub_100002320(v368, v369, &v456);

                *(v360 + 14) = v370;
                *(v360 + 22) = 2080;
                v371 = DispatchTimeInterval.description.getter();
                v373 = v372;
                v374 = *(v352 + 8);
                v375 = v359;
                v355 = v394;
                v374(v375, v394);
                v376 = sub_100002320(v371, v373, &v456);

                *(v360 + 24) = v376;
                _os_log_impl(&_mh_execute_header, v357, v358, "Successfully cleared traffic registration for %s from %s (in recovery for %s)", v360, 0x20u);
                swift_arrayDestroy();
              }

              else
              {

                v374 = *(v352 + 8);
                v374(v353, v355);
              }

              v105 = v447;
              v117 = v448;
              v377 = v442;
              v378 = v426;
              v379 = v402;
              v380 = v390;
              (*(v442 + 2))(v426, v402, v390);
              (*(v377 + 7))(v378, 0, 1, v380);
              sub_100456BB0(v356, v378, v381, v382);

              v446(v378, v436);
              (v445)(v379, v380);
              v374(v403, v355);
              v439(v401, v434);
              goto LABEL_80;
            }

            sub_100016290(v172, &unk_100597330, &unk_100481FA0);
            goto LABEL_78;
          }
        }

        else
        {
        }

        v105 = v447;
        v117 = v448;
        goto LABEL_38;
      }

      v445 = v87;
      v90 = *(v435 + 56);
      v90(v440, 1, 1, v68);
      v91 = v395;
      v92 = *(*v395 + 608);
      swift_beginAccess();
      v93 = *(v91 + v92);
      v94 = *(v93 + 16);
      v389 = v69;
      if (v94)
      {

        v95 = sub_1003E09E8(v89);
        if (v96)
        {
          v97 = v95;
          v443 = v89;
          v98 = *(v93 + 36);

          v99 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

          v424 = v99;
          v385 = v99;
          v100 = v408;
          v431 = v97;
          v430 = v98;
          v432 = v92;
          v101 = v390;
          Dictionary.subscript.getter();

          v102 = v409;
          sub_100012400(&v100[*(v101 + 36)], v409, &unk_100597330, &unk_100481FA0);
          v422 = *(v442 + 1);
          (v422)(v100, v101);
          v103 = v429;
          v104 = v434;
          if ((*(v429 + 48))(v102, 1, v434) == 1)
          {
            sub_100016290(v102, &unk_100597330, &unk_100481FA0);
            v92 = v432;
          }

          else
          {
            (*(v103 + 32))();
            type metadata accessor for P2PTimer(0);
            v233 = v423;
            variable initialization expression of AWDLPeer.lastUpdated();
            v234 = v398;
            DispatchTime.distance(to:)();
            v235 = *(v103 + 8);
            v235(v233, v104);
            v236 = v440;
            sub_100016290(v440, &unk_10059B170, &unk_1004B4D70);
            v90(v234, 0, 1, v394);
            sub_10001CEA8(v234, v236, &unk_10059B170, &unk_1004B4D70);
            v237 = v432;
            v91 = v395;
            swift_beginAccess();
            v238 = v390;
            type metadata accessor for Dictionary();
            v239 = v433;
            Dictionary.remove(at:)();
            (v422)(v239, v238);
            v240 = v455;
            swift_endAccess();

            sub_10004C128();
            v235(v410, v434);
            v92 = v237;
          }

          v89 = v443;
        }

        else
        {
        }
      }

      v241 = *(*v91 + 592);
      swift_beginAccess();
      v433 = v241;
      v455 = v89;
      v242 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v243 = v89;
      v244 = v425;
      v245 = v390;
      v443 = v242;
      Dictionary.subscript.getter();

      swift_endAccess();
      v246 = v442;
      v247 = *(v442 + 6);
      v430 = v442 + 48;
      v424 = v247;
      LODWORD(v241) = (v247)(v244, 1, v245);
      v248 = v441 + 8;
      v431 = *(v441 + 8);
      v431(v244, v436);
      if (v241 != 1)
      {
        v274 = v243;
        v275 = Logger.logObject.getter();
        v276 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v275, v276))
        {
          v277 = swift_slowAlloc();
          v456 = swift_slowAlloc();
          *v277 = 136315394;
          v278 = [v274 uniqueIdentifier];
          v279 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v281 = v280;

          v282 = sub_100002320(v279, v281, &v456);

          *(v277 + 4) = v282;
          *(v277 + 12) = 2080;
          v283 = WiFiAddress.description.getter(v83);
          v285 = sub_100002320(v283, v284, &v456);

          *(v277 + 14) = v285;
          _os_log_impl(&_mh_execute_header, v275, v276, "Received a duplicate traffic registration indication for %s from %s", v277, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        sub_100016290(v440, &unk_10059B170, &unk_1004B4D70);
        goto LABEL_78;
      }

      v432 = v92;
      v441 = v248;
      type metadata accessor for P2PTimer(0);
      v249 = v243;
      v250 = v423;
      variable initialization expression of AWDLPeer.lastUpdated();
      v251 = *(v429 + 56);
      v252 = v413;
      v422 = (v429 + 56);
      v421 = v251;
      v251(v413, 1, 1, v434);
      v253 = v414;
      (*(v437 + 56))(v414, 1, 1, v438);
      v254 = v426;
      sub_100453F54(v250, v252, v253, v444, v439, v426);
      (*(v246 + 7))(v254, 0, 1, v245);
      v455 = v249;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      swift_endAccess();
      sub_10004C128();
      v255 = [v249 uniqueIdentifier];
      swift_beginAccess();
      sub_100159C80(&v455, v255);
      swift_endAccess();

      v256 = *(v428 + 152);
      swift_checkMetadataState();
      v257 = v416;
      v256();
      v258 = v418;
      v259 = swift_getAssociatedConformanceWitness();
      v260 = *(v259 + 120);

      v260(v261, v258, v259);
      v262 = v435;

      v263 = v258;
      v264 = v249;
      v265 = &unk_100588000;
      (*(v417 + 8))(v257, v263);
      v266 = [v264 uniqueIdentifier];
      LODWORD(v253) = AWDLTrafficRegistrationService.serviceType.getter(v266);

      v267 = v394;
      if (v253 == 2)
      {
        swift_beginAccess();
        v455 = v264;
        v268 = v264;
        v269 = v404;
        v270 = v390;
        Dictionary.subscript.getter();

        if ((v424)(v269, 1, v270))
        {
          v431(v269, v436);
          swift_endAccess();
          v271 = 1;
          v272 = v434;
          v273 = v405;
        }

        else
        {
          v273 = v405;
          v272 = v434;
          (*(v429 + 16))(v405, v269, v434);
          v431(v269, v436);
          swift_endAccess();
          v271 = 0;
        }

        v421(v273, v271, 1, v272);
        v293 = v395;
        v294 = *(*v395 + 544);
        swift_beginAccess();
        sub_1000B1B78(v273, v293 + v294, &unk_100597330, &unk_100481FA0);
        swift_endAccess();
        *(v293 + *(*v293 + 528)) = 0;
        *(v293 + *(*v293 + 536)) = 2;
      }

      v295 = v415;
      sub_100012400(v440, v415, &unk_10059B170, &unk_1004B4D70);
      v296 = (*(v262 + 48))(v295, 1, v267);
      v425 = v264;
      if (v296 == 1)
      {
        sub_100016290(v295, &unk_10059B170, &unk_1004B4D70);
        v297 = v395;
        sub_100455E40(v264);
        v298 = v264;
        v299 = Logger.logObject.getter();
        v300 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v299, v300))
        {
          v301 = swift_slowAlloc();
          v456 = swift_slowAlloc();
          *v301 = 136315394;
          v302 = [v298 uniqueIdentifier];
          v303 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v305 = v304;

          v306 = sub_100002320(v303, v305, &v456);
          v297 = v395;

          *(v301 + 4) = v306;
          *(v301 + 12) = 2080;
          v307 = WiFiAddress.description.getter(v83);
          v309 = sub_100002320(v307, v308, &v456);

          *(v301 + 14) = v309;
          _os_log_impl(&_mh_execute_header, v299, v300, "Successfully set traffic registration for %s from %s", v301, 0x16u);
          swift_arrayDestroy();
        }
      }

      else
      {
        v310 = v407;
        (*(v262 + 32))(v407, v295, v267);
        v311 = [v264 uniqueIdentifier];
        v312 = AWDLTrafficRegistrationService.showsInfraDisconnectUINotifications.getter(v311);

        v313 = v395;
        if (v312)
        {
          sub_100454028(v264, 1, 1);
          v314 = v406;
        }

        else
        {
          v315 = Logger.logObject.getter();
          v316 = static os_log_type_t.default.getter();
          v317 = os_log_type_enabled(v315, v316);
          v314 = v406;
          if (v317)
          {
            v318 = swift_slowAlloc();
            *v318 = 0;
            _os_log_impl(&_mh_execute_header, v315, v316, "Skip Retro Mode evaluation", v318, 2u);
            v262 = v435;
          }
        }

        (*(v262 + 16))(v314, v310, v267);
        v319 = v264;
        v297 = v313;
        v320 = Logger.logObject.getter();
        v321 = v314;
        v322 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v320, v322))
        {

          v341 = *(v262 + 8);
          v342 = v394;
          v341(v321, v394);
          v341(v310, v342);
          v340 = v389;
          v105 = v447;
          v117 = v448;
          v265 = &unk_100588000;
LABEL_106:
          v343 = *(v265 + 379);
          v344 = v425;
          v345 = [v425 v343];
          v346 = AWDLTrafficRegistrationService.serviceType.getter(v345);

          if (v346 == 2)
          {
            __chkstk_darwin();
            *(&v387 - 4) = v344;
            *(&v387 - 3) = v297;
            v385 = v340;

            v347 = Dictionary.filter(_:)();
            sub_10044E1B8(v347);

            sub_100016290(v440, &unk_10059B170, &unk_1004B4D70);
          }

          else
          {
            sub_100016290(v440, &unk_10059B170, &unk_1004B4D70);
          }

          goto LABEL_80;
        }

        v323 = swift_slowAlloc();
        v444 = swift_slowAlloc();
        v456 = v444;
        *v323 = 136315650;
        v324 = [v319 uniqueIdentifier];
        v325 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v327 = v326;

        v328 = sub_100002320(v325, v327, &v456);
        v297 = v395;

        *(v323 + 4) = v328;
        *(v323 + 12) = 2080;
        v329 = WiFiAddress.description.getter(v83);
        v331 = sub_100002320(v329, v330, &v456);

        *(v323 + 14) = v331;
        *(v323 + 22) = 2080;
        v332 = DispatchTimeInterval.description.getter();
        v334 = v333;
        v335 = v310;
        v336 = *(v435 + 8);
        v337 = v321;
        v338 = v394;
        v336(v337, v394);
        v339 = sub_100002320(v332, v334, &v456);

        *(v323 + 24) = v339;
        _os_log_impl(&_mh_execute_header, v320, v322, "Successfully recovered traffic registration for %s from %s (in recovery for %s)", v323, 0x20u);
        swift_arrayDestroy();

        v336(v335, v338);
        v265 = &unk_100588000;
      }

      v340 = v389;
      v105 = v447;
      v117 = v448;
      goto LABEL_106;
    }
  }

LABEL_15:
  v105 = v447;
  sub_100012400(v447 + *(v448 + 14), v51, &qword_10058D450, &unk_100486D78);
  if (v85(v51, 1, v84) == 1)
  {
    sub_100016290(v51, &qword_10058D450, &unk_100486D78);
  }

  else
  {
    v106 = v51[64];
    sub_1000473F0(v51, type metadata accessor for AWDLActionFrame.DataPathState);
    if (v106 == 31)
    {
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        aBlock = v110;
        *v109 = 136315138;
        v111 = WiFiAddress.description.getter(v83);
        v113 = sub_100002320(v111, v112, &aBlock);

        *(v109 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v107, v108, "Received a recovery UMI from %s", v109, 0xCu);
        sub_100002A00(v110);
      }

      v114 = v395;
      swift_beginAccess();
      sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      NANBitmap.Channel.operatingClass.getter();
      v456 = v115;
      __chkstk_darwin();
      v116 = type metadata accessor for Dictionary.Keys();

      swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v116);
      v456 = Sequence.filter(_:)();
      __chkstk_darwin();
      v385 = v114;
      v386 = v69;
      sub_10005DC58(&unk_100595240, &qword_1004AF178);
      sub_10000CADC(&unk_10059B180, &unk_100595240, &qword_1004AF178, &protocol conformance descriptor for [A]);
      Sequence.forEach(_:)();

      v105 = v447;
      v117 = v448;
      goto LABEL_80;
    }
  }

  sub_100012400(v105 + *(v448 + 14), v78, &qword_10058D450, &unk_100486D78);
  v118 = v85(v78, 1, v84);
  v445 = v84;
  if (v118 == 1)
  {
    sub_100016290(v78, &qword_10058D450, &unk_100486D78);
LABEL_37:
    v157 = v448;
    v158 = v443;
    sub_100012400(v105 + *(v448 + 14), v443, &qword_10058D450, &unk_100486D78);
    v85(v158, 1, v445);
    v117 = v157;
    sub_100016290(v158, &qword_10058D450, &unk_100486D78);
LABEL_38:
    v159 = v391;
    goto LABEL_81;
  }

  v119 = *(v78 + 64);
  sub_1000473F0(v78, type metadata accessor for AWDLActionFrame.DataPathState);
  if (v119 != 32)
  {
    goto LABEL_37;
  }

  v389 = v69;
  v120 = v395;
  v121 = *(*v395 + 568);
  swift_beginAccess();
  v443 = v121;
  v455 = *&v121[v120];
  __chkstk_darwin();
  v122 = v439;
  *(&v387 - 4) = v444;
  *(&v387 - 3) = v122;
  v385 = v123;
  v124 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v125 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v444 = v124;
  v126 = v390;
  v127 = type metadata accessor for Dictionary();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B], v127);
  Collection.firstIndex(where:)();

  v128 = v451;
  if (v451 == 255)
  {

    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      aBlock = v179;
      *v178 = 136315138;
      v180 = WiFiAddress.description.getter(*(v447 + *(v448 + 5)) | (*(v447 + *(v448 + 5) + 2) << 16));
      v182 = sub_100002320(v180, v181, &aBlock);

      *(v178 + 4) = v182;
      _os_log_impl(&_mh_execute_header, v176, v177, "Peer %s notified about infrastructure disconnect but no active traffic registration was found", v178, 0xCu);
      sub_100002A00(v179);
    }
  }

  else
  {
    v441 = aBlock;
    v446 = v450;

    v385 = v125;
    v129 = v433;
    Dictionary.subscript.getter();

    v130 = v442 + 8;
    v440 = *(v442 + 1);
    (v440)(v129, v126);
    v131 = aBlock;
    v439 = [aBlock uniqueIdentifier];

    v435 = v125;
    v385 = v125;
    LODWORD(v436) = v128;
    v132 = v431;
    Dictionary.subscript.getter();

    v133 = v432;
    sub_100012400(v132 + *(v126 + 40), v432, &qword_10058F4D0, &qword_100491AB0);
    v434 = v130;
    (v440)(v132, v126);
    v134 = v437;
    v135 = v438;
    v136 = (*(v437 + 48))(v133, 1, v438);
    sub_100016290(v133, &qword_10058F4D0, &qword_100491AB0);
    if (v136 == 1)
    {
      v137 = v430;
      UUID.init()();
      v138 = v422;
      (*(v134 + 16))(v422, v137, v135);
      (*(v134 + 56))(v138, 0, 1, v135);
      v139 = v443;
      swift_beginAccess();
      v140 = *&v139[v120];
      *&v139[v120] = 0x8000000000000000;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v455 = v140;
        type metadata accessor for _NativeDictionary();
        _NativeDictionary.copy()();
        v140 = v455;
      }

      if (v441 < 0 || v441 >= 1 << v140[32])
      {
        __break(1u);
      }

      else if ((*&v140[8 * (v441 >> 6) + 64] >> v441))
      {
        if (*(v140 + 9) == v446)
        {
          sub_1000B1B78(v138, *(v140 + 7) + *(v442 + 9) * v441 + *(v390 + 40), &qword_10058F4D0, &qword_100491AB0);
          *&v139[v395] = v140;
          swift_endAccess();
          sub_10004C128();
          v141 = v439;
          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.default.getter();

          v144 = os_log_type_enabled(v142, v143);
          v442 = v141;
          if (v144)
          {
            v145 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v145 = 136315394;
            v146 = WiFiAddress.description.getter(*(v447 + *(v448 + 5)) | (*(v447 + *(v448 + 5) + 2) << 16));
            v148 = sub_100002320(v146, v147, &aBlock);

            *(v145 + 4) = v148;
            *(v145 + 12) = 2080;
            v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v151 = sub_100002320(v149, v150, &aBlock);

            *(v145 + 14) = v151;
            _os_log_impl(&_mh_execute_header, v142, v143, "Peer %s disconnected infrastructure network to avoid retro mode while running %s", v145, 0x16u);
            swift_arrayDestroy();
          }

          v152 = v428;
          v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v155 = v154;
          if (v153 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v155 == v156)
          {
            goto LABEL_36;
          }

          v209 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v209)
          {
            goto LABEL_54;
          }

          v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v226 = v225;
          if (v224 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v226 == v227)
          {
LABEL_36:
          }

          else
          {
            v228 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v228 & 1) == 0)
            {
              v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v231 = v230;
              if (v229 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v231 == v232)
              {
              }

              else
              {
                v383 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v210 = 0;
                if ((v383 & 1) == 0)
                {
                  goto LABEL_55;
                }
              }

              v384 = v396;
              sub_100012400(v447 + *(v448 + 14), v396, &qword_10058D450, &unk_100486D78);
              if (v85(v384, 1, v445) == 1)
              {
                sub_100016290(v384, &qword_10058D450, &unk_100486D78);
                v210 = 0;
              }

              else
              {
                v210 = *(v384 + 84);
                sub_1000473F0(v384, type metadata accessor for AWDLActionFrame.DataPathState);
              }

              goto LABEL_55;
            }
          }

LABEL_54:
          v210 = 1;
LABEL_55:
          v211 = *(v152 + 144);
          swift_checkMetadataState();
          v212 = v419;
          v211();
          v213 = v421;
          v214 = swift_getAssociatedConformanceWitness();
          v215 = (*(v214 + 8))(v213, v214);
          (*(v420 + 8))(v212, v213);
          if (v215)
          {

            v385 = v435;
            v216 = v411;
            v217 = v390;
            Dictionary.subscript.getter();

            (v440)(v216, v217);
            v218 = aBlock;
            v219 = [aBlock localization];

            v117 = v448;
            if (!v219)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v219 = String._bridgeToObjectiveC()();
            }

            v220 = v430;
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v453 = sub_100457ED4;
            v454 = 0;
            aBlock = _NSConcreteStackBlock;
            v450 = 1107296256;
            v451 = sub_1004484C8;
            v452 = &unk_10057BE80;
            v222 = _Block_copy(&aBlock);
            v223 = v442;
            [v215 showInfrastructureDisconnectOnRetroModeNotificationForService:v442 localization:v219 phoneDisconnected:v210 uuid:isa completionHandler:v222];
            _Block_release(v222);

            swift_unknownObjectRelease();
            (*(v437 + 8))(v220, v438);
            goto LABEL_79;
          }

          (*(v437 + 8))(v430, v438);

LABEL_78:
          v117 = v448;
LABEL_79:
          v105 = v447;
LABEL_80:
          v159 = v391;
LABEL_81:
          sub_100047450();
          v286 = AWDLPeer.countryCode.getter();
          sub_1000479A0(v286);

          v291 = (v105 + *(v117 + 11));
          v292 = *(v291 + 2);
          if (v159)
          {
            if (v291[1])
            {
LABEL_87:

              return;
            }
          }

          else
          {
            if (v388 != *v291)
            {
              v292 = 1;
            }

            if ((v292 & 1) == 0)
            {
              goto LABEL_87;
            }
          }

          sub_10004D020(v287, v288, v289, v290);
          sub_10004D7F4(v105, v392);

          goto LABEL_87;
        }

LABEL_119:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_119;
    }

    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      aBlock = v186;
      *v185 = 136315138;
      v187 = WiFiAddress.description.getter(*(v447 + *(v448 + 5)) | (*(v447 + *(v448 + 5) + 2) << 16));
      v189 = sub_100002320(v187, v188, &aBlock);

      *(v185 + 4) = v189;
      _os_log_impl(&_mh_execute_header, v183, v184, "Peer %s notified about infrastructure disconnect but already presented notification for this session", v185, 0xCu);
      sub_100002A00(v186);
    }

    sub_100085170(v441, v446, v436);
  }
}

uint64_t sub_100041B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005DC58(&unk_10059B090, &unk_1004B1830);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v18 - v7;
  v9 = *(*v2 + 448);
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (*(v10 + 16) && (v11 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = type metadata accessor for AWDLPeer(0);
    v16 = *(v15 - 8);
    sub_100027648(v14 + *(v16 + 72) * v13, v8, type metadata accessor for AWDLPeer);
    (*(v16 + 56))(v8, 0, 1, v15);
  }

  else
  {
    v15 = type metadata accessor for AWDLPeer(0);
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  sub_10001CEA8(v8, v6, &unk_10059B090, &unk_1004B1830);
  type metadata accessor for AWDLPeer(0);
  if ((*(*(v15 - 8) + 48))(v6, 1, v15) == 1)
  {
    AWDLPeer.init(macAddress:)(a1 & 0xFFFFFFFFFFFFLL, a2);
    sub_100016290(v6, &unk_10059B090, &unk_1004B1830);
  }

  else
  {
    sub_10003DFE0(v6, a2, type metadata accessor for AWDLPeer);
  }

  return swift_endAccess();
}

unint64_t sub_100041DE8(unint64_t a1)
{
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(BYTE5(a1));
  v6 = Hasher._finalize()();

  return sub_100041EB4(a1 & 0xFFFFFFFFFFFFLL, v6);
}

unint64_t sub_100041EB4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      LOWORD(v7) = a1;
      BYTE2(v7) = BYTE2(a1);
      HIBYTE(v7) = BYTE3(a1);
      LOBYTE(v8) = BYTE4(a1);
      HIBYTE(v8) = BYTE5(a1);
      if (!(*(*(v2 + 48) + 6 * result) ^ v7 | *(*(v2 + 48) + 6 * result + 4) ^ v8))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100041FB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10004200C(uint64_t a1)
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

uint64_t sub_100042028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100042078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000420C0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_100042114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100042164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000421B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10005DC58(&unk_10059B170, &unk_1004B4D70);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 136);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100042294(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 48) = a2;
  }

  else
  {
    v7 = sub_10005DC58(&unk_10059B170, &unk_1004B4D70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 136);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004234C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000423A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for DispatchTime();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_10005DC58(&qword_10058D450, &unk_100486D78);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[19]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[14];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100042518(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DispatchTime();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_10005DC58(&qword_10058D450, &unk_100486D78);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[14];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[19]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t AWDLPeer.received(actionFrame:with:)(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v29 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v28 = type metadata accessor for DispatchTime();
  v9 = *(v28 - 8);
  __chkstk_darwin();
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a4 + 16);
  v13 = type metadata accessor for AWDLActionFrame.Header(0);
  v14 = *(a4 + *(v13 + 48));
  v15 = type metadata accessor for AWDLPeer(0);
  v16 = v15;
  v17 = v5 + *(v15 + 4 * v12 + 92);
  *v17 = v14;
  *(v17 + 8) = 0;
  v18 = v8 - v29;
  v19 = v8 < v29;
  if (v8 < v29)
  {
    v18 = 0;
  }

  v20 = v5 + *(v15 + 84);
  *v20 = v18;
  *(v20 + 4) = v19;
  v21 = v5 + *(v15 + 88);
  *v21 = *(a4 + *(v13 + 52));
  *(v21 + 4) = 0;
  sub_10004285C(v30, (v7 >> 8) & 1);
  v22 = *(v16 + 28);
  v23 = *(v5 + v22);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v5 + v22) = v25;
  if (qword_10058A890 != -1)
  {
LABEL_7:
    swift_once();
  }

  (*(*algn_10059B518 + 8))();
  return (*(v9 + 40))(v5 + *(v16 + 24), v11, v28);
}

uint64_t sub_10004285C(uint64_t a1, int a2)
{
  v279 = 0;
  sub_10005DC58(&qword_10058FA18, &qword_100493068);
  __chkstk_darwin();
  v298 = &v276 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v292 = (&v276 - v6);
  __chkstk_darwin();
  v318 = &v276 - v7;
  v317 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  v322 = *(v317 - 8);
  __chkstk_darwin();
  v297 = &v276 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v296 = &v276 - v9;
  __chkstk_darwin();
  v316 = &v276 - v10;
  sub_10005DC58(&qword_10058FA20, &qword_100493070);
  __chkstk_darwin();
  v327 = (&v276 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v314 = &v276 - v12;
  sub_10005DC58(&unk_10058B750, &unk_100480AB0);
  __chkstk_darwin();
  v311 = &v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v276 - v14;
  v313 = type metadata accessor for DNSRecords.SRV(0);
  v16 = *(v313 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v310 = &v276 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v305 = &v276 - v18;
  __chkstk_darwin();
  v306 = &v276 - v19;
  v312 = sub_10005DC58(&qword_10058F3A0, &qword_100492310);
  v301 = *(v312 - 8);
  __chkstk_darwin();
  v309 = &v276 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v300 = &v276 - v21;
  v307 = type metadata accessor for AWDLActionFrame.ServiceResponse(0);
  __chkstk_darwin();
  v320 = &v276 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v276 - v23;
  v329 = type metadata accessor for AWDLActionFrame.AWDLAttribute(0);
  v25 = *(v329 - 8);
  __chkstk_darwin();
  v27 = &v276 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AWDLPeer(0);
  v29 = v16;
  v319 = v28;
  v30 = *(v28 + 44);
  v324 = v2;
  v31 = (v2 + v30);
  v32 = *(v31 + 2);
  v33 = *(a1 + 16);
  v326 = v29;
  v321 = v31;
  if (!v33)
  {
    if ((a2 & 1) == 0)
    {
      v169 = 0;
      if (v32)
      {
        v167 = &_swiftEmptyDictionarySingleton;
        v280 = 0;
        v281 = 0;
        v284 = 0;
        v285 = 0;
        v282 = 0;
        v283 = 0;
        v290 = 0;
        v291 = 0;
        v288 = 0;
        v289 = 0;
        v286 = 0;
        v287 = 0;
        goto LABEL_130;
      }

      v269 = 0;
      v271 = 0;
      v272 = 0;
      v273 = 0;
      v270 = 0;
LABEL_178:
      sub_100010520(v269, v271);
      sub_100010520(v272, v273);
      return sub_100010520(v270, v169);
    }

    v280 = 0;
    v281 = 0;
    v284 = 0;
    v285 = 0;
    v282 = 0;
    v283 = 0;
    v290 = 0;
    v291 = 0;
    v288 = 0;
    v289 = 0;
    v286 = 0;
    v287 = 0;
    LODWORD(v323) = 0;
    v167 = &_swiftEmptyDictionarySingleton;
    v170 = v327;
    goto LABEL_124;
  }

  v294 = v17;
  v295 = v15;
  LODWORD(v308) = a2;
  v280 = 0;
  v281 = 0;
  v284 = 0;
  v285 = 0;
  v282 = 0;
  v283 = 0;
  v290 = 0;
  v291 = 0;
  v288 = 0;
  v289 = 0;
  v286 = 0;
  v287 = 0;
  LODWORD(v323) = 0;
  LODWORD(v330) = 0;
  v34 = 0;
  LODWORD(v303) = *v31;
  v331 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v293 = (v29 + 56);
  v315 = &_swiftEmptyDictionarySingleton;
  LODWORD(v325) = v32;
  LODWORD(v304) = v32;
  v35 = v25;
  v328 = v25;
  while (1)
  {
    v36 = v34;
    while (1)
    {
      while (1)
      {
        if (v36 >= v33)
        {
          goto LABEL_185;
        }

        v34 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_186;
        }

        v15 = *(v35 + 72);
        sub_100044904(v331 + v15 * v36, v27, type metadata accessor for AWDLActionFrame.AWDLAttribute);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 6)
        {
          break;
        }

        if (EnumCaseMultiPayload <= 11)
        {
          if (EnumCaseMultiPayload == 7)
          {
            ++v36;
LABEL_70:
            v60 = *v27;
            v61 = *(v27 + 1);
            v15 = *(v27 + 2);
            v62 = (v324 + v319[13]);

            *v62 = v60;
            v62[1] = v61;
            v62[2] = v15;
            goto LABEL_9;
          }

          if (EnumCaseMultiPayload != 9)
          {
            if (EnumCaseMultiPayload != 11)
            {
              goto LABEL_73;
            }

            ++v36;
LABEL_50:
            v49 = *(v27 + 4);
            v50 = v324 + v319[15];
            v51 = *(v27 + 1);
            *v50 = *v27;
            *(v50 + 16) = v51;
            *(v50 + 32) = v49;
            *(v50 + 40) = 0;
            goto LABEL_10;
          }

          ++v36;
          goto LABEL_72;
        }

        if (EnumCaseMultiPayload != 17)
        {
          if (EnumCaseMultiPayload != 12)
          {
            if (EnumCaseMultiPayload == 18)
            {
              ++v36;
LABEL_65:
              v55 = *(v27 + 1);
              v56 = *v27 | (v27[4] << 32) | (v27[5] << 40);
              v15 = v324 + v319[18];

              *v15 = v56;
              *(v15 + 8) = v55;
              goto LABEL_9;
            }

LABEL_73:
            ++v36;
            goto LABEL_74;
          }

          ++v36;
LABEL_78:
          v68 = v324 + v319[9];
          v69 = *(v27 + 1);
          *v68 = *v27;
          *(v68 + 16) = v69;
          *(v68 + 32) = *(v27 + 2);
          *(v68 + 48) = 0;
          goto LABEL_10;
        }

        ++v36;
LABEL_17:
        v44 = *(v27 + 4);
        v45 = v324 + v319[17];
        v46 = *(v27 + 1);
        *v45 = *v27;
        *(v45 + 16) = v46;
        *(v45 + 32) = v44;
        LODWORD(v330) = 1;
        if (v36 == v33)
        {
          v170 = v327;
          goto LABEL_128;
        }
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload > 4)
        {
          if (EnumCaseMultiPayload == 5)
          {
            ++v36;
LABEL_5:
            v37 = *v27;
            v38 = *(v27 + 1);
            v39 = *(v27 + 2);
            v40 = *(v27 + 2);
            v15 = *(v27 + 3);
            *&v302 = *(v27 + 2);
            if (v39 == v303)
            {
              v32 = v304;
            }

            else
            {
              v32 = 1;
            }

            v41 = v37 | (v38 << 16) | (v39 << 32);
            v42 = v324 + v319[10];
            sub_1000449CC(*v42, *(v42 + 8), *(v42 + 16), *(v42 + 24));
            *v42 = v41;
            *(v42 + 8) = v40;
            LODWORD(v325) = v32;
            *(v42 + 16) = v302;
            *(v42 + 24) = v15;
          }

          else
          {
            ++v36;
LABEL_68:
            v57 = v319[14];
            v58 = v324;
            sub_100016290(v324 + v57, &qword_10058D450, &unk_100486D78);
            sub_1000390BC(v27, v58 + v57, type metadata accessor for AWDLActionFrame.DataPathState);
            v59 = type metadata accessor for AWDLActionFrame.DataPathState(0);
            (*(*(v59 - 8) + 56))(v58 + v57, 0, 1, v59);
          }

LABEL_9:
          v35 = v328;
          goto LABEL_10;
        }

        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
            goto LABEL_73;
          }

          ++v36;
LABEL_55:
          v52 = *(v27 + 2);
          v53 = v27[24];
          v54 = v324 + v319[8];
          *v54 = *v27;
          *(v54 + 16) = v52;
          *(v54 + 24) = v53;
          goto LABEL_10;
        }

        ++v36;
LABEL_76:
        v15 = *(v27 + 4);
        v64 = *(v27 + 5);
        v65 = v324 + v319[12];
        v66 = *(v27 + 1);
        v302 = *v27;
        v299 = v66;

        v67 = v299;
        *v65 = v302;
        *(v65 + 16) = v67;
        *(v65 + 32) = v15;
        *(v65 + 40) = v64;
        v35 = v328;
        goto LABEL_10;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_73;
      }

      sub_1000390BC(v27, v24, type metadata accessor for AWDLActionFrame.ServiceResponse);
      if (v32)
      {
        break;
      }

      sub_10004496C(v24, type metadata accessor for AWDLActionFrame.ServiceResponse);
      if (v34 == v33)
      {
        goto LABEL_120;
      }

      v47 = v331 + v15 * v34;
      while (1)
      {
        if (v34 >= v33)
        {
          goto LABEL_185;
        }

        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_186:
          __break(1u);
LABEL_187:
          if (v330)
          {
            v170 = v327;
            v167 = v315;
            if ((v325 & 1) == 0)
            {
              goto LABEL_177;
            }

            v29 = v15;
            goto LABEL_139;
          }

          v170 = v327;
          v167 = v315;
          LOBYTE(v32) = v325;
          v29 = v15;
          if ((v308 & 1) == 0)
          {
            if ((v325 & 1) == 0)
            {
              goto LABEL_177;
            }

            goto LABEL_139;
          }

          LODWORD(v323) = 1;
LABEL_124:
          v168 = v324 + v319[17];
          *v168 = xmmword_10047CE60;
          *(v168 + 24) = 0;
          *(v168 + 32) = 0;
          *(v168 + 16) = 0;
          if (v32)
          {
            goto LABEL_129;
          }

          goto LABEL_177;
        }

        sub_100044904(v47, v27, type metadata accessor for AWDLActionFrame.AWDLAttribute);
        v48 = swift_getEnumCaseMultiPayload();
        if (v48 != 1)
        {
          break;
        }

        sub_1000390BC(v27, v24, type metadata accessor for AWDLActionFrame.ServiceResponse);
        sub_10004496C(v24, type metadata accessor for AWDLActionFrame.ServiceResponse);
        ++v34;
        v47 += v15;
        if (v36 == v33)
        {
          goto LABEL_120;
        }
      }

      if (v48 > 8)
      {
        if (v48 > 11)
        {
          if (v48 != 12)
          {
            if (v48 == 17)
            {
              LOBYTE(v32) = 0;
              goto LABEL_17;
            }

            if (v48 != 18)
            {
              goto LABEL_61;
            }

            LOBYTE(v32) = 0;
            goto LABEL_65;
          }

          LOBYTE(v32) = 0;
          goto LABEL_78;
        }

        if (v48 != 9)
        {
          if (v48 != 11)
          {
            goto LABEL_61;
          }

          LOBYTE(v32) = 0;
          goto LABEL_50;
        }

        LOBYTE(v32) = 0;
LABEL_72:
        v63 = v324 + v319[16];
        *v63 = *v27;
        *(v63 + 2) = 0;
        goto LABEL_10;
      }

      if (v48 <= 4)
      {
        if (v48 != 2)
        {
          if (v48 != 3)
          {
            goto LABEL_61;
          }

          LOBYTE(v32) = 0;
          goto LABEL_55;
        }

        LOBYTE(v32) = 0;
        goto LABEL_76;
      }

      switch(v48)
      {
        case 5:
          goto LABEL_5;
        case 6:
          LOBYTE(v32) = 0;
          goto LABEL_68;
        case 7:
          LOBYTE(v32) = 0;
          goto LABEL_70;
      }

LABEL_61:
      LOBYTE(v32) = 0;
LABEL_74:
      sub_10004496C(v27, type metadata accessor for AWDLActionFrame.AWDLAttribute);
LABEL_10:
      if (v36 == v33)
      {
LABEL_120:
        v170 = v327;
        if (!(v330 & 1 | ((v308 & 1) == 0)))
        {
          LOBYTE(v32) = v325;
          v167 = v315;
          v29 = v326;
          goto LABEL_124;
        }

LABEL_128:
        v167 = v315;
        v29 = v326;
        if ((v325 & 1) == 0)
        {
          goto LABEL_177;
        }

LABEL_129:
        if ((v323 & 1) == 0)
        {
LABEL_130:
          v171 = v324 + v319[10];
          v172 = *(v171 + 24);
          if (v172 >> 60 == 15)
          {
            v173 = 0;
            v174 = 0;
            v172 = 0xF000000000000000;
          }

          else
          {
            v173 = *(v171 + 8);
            v174 = *(v171 + 16);
            sub_10000AB0C(v174, *(v171 + 24));
          }

          if (qword_10058A850 != -1)
          {
            swift_once();
          }

          v175 = static AWDLActionFrame.ServiceParameter.SSTH.zero;
          v177 = qword_10059B498;
          v176 = unk_10059B4A0;
          if (v172 >> 60 == 15)
          {
            if (unk_10059B4A0 >> 60 == 15)
            {
              sub_10000AB0C(qword_10059B498, unk_10059B4A0);
              sub_10002F75C(v173, v174, v172);
              goto LABEL_138;
            }

LABEL_142:
            sub_10000AB0C(qword_10059B498, unk_10059B4A0);
            sub_10002F75C(v173, v174, v172);
            v181 = v175;
            v182 = v177;
            v183 = v176;
LABEL_143:
            sub_10002F75C(v181, v182, v183);
            goto LABEL_177;
          }

          if (unk_10059B4A0 >> 60 == 15)
          {
            goto LABEL_142;
          }

          sub_10000AB0C(qword_10059B498, unk_10059B4A0);
          if (v175 != v173)
          {
            sub_10002F75C(v175, v177, v176);
            v181 = v173;
            v182 = v174;
            v183 = v172;
            goto LABEL_143;
          }

          sub_10000AB0C(v177, v176);
          sub_10005D4F4(v173, v174, v172);
          v275 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v174, v172, v177, v176);
          sub_10002F75C(v175, v177, v176);
          sub_1000124C8(v177, v176);
          sub_10002F75C(v173, v174, v172);
          sub_10002F75C(v173, v174, v172);
          if (!v275)
          {
LABEL_177:

            sub_100010520(v281, v280);
            sub_100010520(v285, v283);
            sub_100010520(v284, v282);
            v270 = v290;
            v269 = v291;
            v169 = v288;
            v271 = v289;
            v273 = v286;
            v272 = v287;
            goto LABEL_178;
          }

LABEL_138:
          v29 = v326;
          v170 = v327;
        }

LABEL_139:
        v178 = v324 + v319[10];
        v179 = *(v178 + 24) >> 60;
        if (v179 == 15)
        {
          v180 = 0;
        }

        else
        {
          v180 = *(v178 + 4);
        }

        v184 = v321;
        *v321 = v180;
        *(v184 + 2) = v179 > 0xE;
        v185 = v319[20];
        v332[0] = *(v324 + v185);
        v294 = v185;
        *(v324 + v185) = &_swiftEmptySetSingleton;
        v186 = v167 + 64;
        v187 = 1 << v167[32];
        v188 = -1;
        if (v187 < 64)
        {
          v188 = ~(-1 << v187);
        }

        v15 = v188 & *(v167 + 8);
        v295 = (v187 + 63) >> 6;
        v307 = (v29 + 48);
        *&v299 = v322 + 48;

        v189 = 0;
        v315 = v167;
        v308 = v167 + 64;
        while (2)
        {
          if (!v15)
          {
            if (v295 <= v189 + 1)
            {
              v191 = v189 + 1;
            }

            else
            {
              v191 = v295;
            }

            v192 = v191 - 1;
            while (1)
            {
              v190 = v189 + 1;
              if (__OFADD__(v189, 1))
              {
                break;
              }

              if (v190 >= v295)
              {
                v242 = sub_10005DC58(&qword_10058FA28, &qword_100493078);
                (*(*(v242 - 8) + 56))(v170, 1, 1, v242);
                v15 = 0;
                v189 = v192;
                goto LABEL_162;
              }

              v15 = *&v186[8 * v190];
              ++v189;
              if (v15)
              {
                v189 = v190;
                goto LABEL_161;
              }
            }

            __break(1u);
LABEL_185:
            __break(1u);
            goto LABEL_186;
          }

          v190 = v189;
LABEL_161:
          v193 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
          v194 = v193 | (v190 << 6);
          v195 = *(v167 + 7);
          v196 = *(v167 + 6) + 40 * v194;
          v197 = *(v196 + 8);
          v331 = *v196;
          v198 = *(v196 + 24);
          v330 = *(v196 + 16);
          v199 = *(v196 + 32);
          v200 = *(v196 + 33);
          v201 = v300;
          sub_100012400(v195 + *(v301 + 72) * v194, v300, &qword_10058F3A0, &qword_100492310);
          v202 = sub_10005DC58(&qword_10058FA28, &qword_100493078);
          v203 = *(v202 + 48);
          v204 = v327;
          v205 = v330;
          *v327 = v331;
          v204[1] = v197;
          v204[2] = v205;
          v204[3] = v198;
          *(v204 + 32) = v199;
          v170 = v204;
          *(v204 + 33) = v200;
          sub_10001CEA8(v201, v204 + v203, &qword_10058F3A0, &qword_100492310);
          (*(*(v202 - 8) + 56))(v170, 0, 1, v202);

LABEL_162:
          v206 = v314;
          sub_10001CEA8(v170, v314, &qword_10058FA20, &qword_100493070);
          v207 = sub_10005DC58(&qword_10058FA28, &qword_100493078);
          if ((*(*(v207 - 8) + 48))(v206, 1, v207) == 1)
          {

            sub_1001AD1B4(v332[0], v324);

            goto LABEL_177;
          }

          v208 = v206 + *(v207 + 48);
          v209 = *v208;
          v210 = *(v208 + 8);
          v322 = *(v208 + 16);
          v323 = v209;
          v325 = *(v208 + 24);
          v326 = v210;
          LODWORD(v321) = *(v208 + 32);
          LODWORD(v320) = *(v208 + 33);
          v211 = *(v208 + 88);
          v212 = *(v312 + 64);
          v213 = v309;
          *(v309 + 40) = *(v208 + 40);
          *(v213 + 7) = *(v208 + 56);
          *(v213 + 9) = *(v208 + 72);
          v213[11] = v211;
          sub_10001CEA8(v208 + v212, v213 + v212, &unk_10058B750, &unk_100480AB0);
          v214 = v213[5];
          v215 = v213[6];
          v216 = v213[7];
          v217 = v213[9];
          v218 = v213[10];
          v328 = v213[8];
          v329 = v217;
          v219 = v213[11];
          v330 = v218;
          v331 = v219;
          v220 = v213 + v212;
          v221 = v311;
          sub_10001CEA8(v220, v311, &unk_10058B750, &unk_100480AB0);
          if ((*v307)(v221, 1, v313) == 1)
          {
            sub_1000835CC(v214, v215, v216, v328, v329, v330, v331);

            sub_100016290(v221, &unk_10058B750, &unk_100480AB0);
          }

          else
          {
            v222 = v310;
            sub_1000390BC(v221, v310, type metadata accessor for DNSRecords.SRV);
            v223 = v316;
            sub_100044904(v222, &v316[*(v317 + 28)], type metadata accessor for DNSRecords.SRV);
            *v223 = 0;
            v224 = v326;
            *(v223 + 8) = v323;
            *(v223 + 16) = v224;
            v225 = v325;
            *(v223 + 24) = v322;
            *(v223 + 32) = v225;
            *(v223 + 40) = v321;
            *(v223 + 41) = v320;
            *(v223 + 48) = v214;
            *(v223 + 56) = v215;
            v226 = v328;
            v227 = v329;
            *(v223 + 64) = v216;
            *(v223 + 72) = v226;
            v228 = v330;
            v229 = v331;
            *(v223 + 80) = v227;
            *(v223 + 88) = v228;
            *(v223 + 96) = v229;
            v304 = v214;
            v305 = v215;
            v306 = v216;
            sub_100083900(v214, v215, v216, v226, v227, v228, v229);
            sub_1001D4E10(v223, v318);
            v230 = *(v223 + 48);
            v231 = *(v223 + 56);
            v232 = *(v223 + 64);
            v233 = *(v223 + 72);
            v234 = *(v223 + 80);
            v235 = *(v223 + 88);
            v236 = v230;
            v325 = v232;
            v326 = v231;
            v237 = *(v223 + 96);
            v322 = v234;
            v323 = v233;
            v320 = v237;
            v321 = v235;
            if (!v231)
            {
              *&v302 = v237;
              v303 = v235;
              v238 = v234;
              v293 = v233;
              v239 = v232;
              v240 = v230;
              v241 = v292;
              sub_100012400(v318, v292, &qword_10058FA18, &qword_100493068);
              if ((*v299)(v241, 1, v317) == 1)
              {
                sub_100016290(v241, &qword_10058FA18, &qword_100493068);
                v236 = 0;
                v325 = 0;
                v326 = 0;
                v322 = 0;
                v323 = 0;
                v320 = 0;
                v321 = 0;
              }

              else
              {
                v236 = v241[6];
                v243 = v241[7];
                v244 = v241[9];
                v245 = v241[10];
                v246 = v241[11];
                v247 = v241[12];
                v325 = v241[8];
                v326 = v243;
                v322 = v245;
                v323 = v244;
                v320 = v247;
                v321 = v246;
                sub_100083900(v236, v243, v325, v244, v245, v246, v247);
                sub_10004496C(v241, type metadata accessor for AWDLPeer.AdvertisedService);
              }

              v230 = v240;
              v231 = 0;
              v232 = v239;
              v233 = v293;
              v234 = v238;
              v235 = v303;
              v237 = v302;
              v223 = v316;
            }

            v303 = v236;
            v248 = *(v223 + 48);
            *&v302 = *(v223 + 56);
            v249 = *(v223 + 64);
            v250 = *(v223 + 72);
            v252 = *(v223 + 80);
            v251 = *(v223 + 88);
            v253 = *(v223 + 96);
            sub_100083900(v230, v231, v232, v233, v234, v235, v237);
            sub_1000835CC(v248, v302, v249, v250, v252, v251, v253);
            v255 = v325;
            v254 = v326;
            *(v223 + 48) = v303;
            *(v223 + 56) = v254;
            v257 = v322;
            v256 = v323;
            *(v223 + 64) = v255;
            *(v223 + 72) = v256;
            v258 = v320;
            v259 = v321;
            *(v223 + 80) = v257;
            *(v223 + 88) = v259;
            *(v223 + 96) = v258;
            v260 = v318;
            v261 = v298;
            sub_100012400(v318, v298, &qword_10058FA18, &qword_100493068);
            if ((*v299)(v261, 1, v317) == 1)
            {
              sub_100016290(v261, &qword_10058FA18, &qword_100493068);
              v262 = sub_1001B9528();
              v263 = v262;
              if ((v262 & 0x100) != 0)
              {
                sub_1000835CC(v304, v305, v306, v328, v329, v330, v331);
                sub_100016290(v260, &qword_10058FA18, &qword_100493068);
                sub_10004496C(v310, type metadata accessor for DNSRecords.SRV);
                v264 = v316;
                goto LABEL_175;
              }
            }

            else
            {
              v265 = v261;
              v263 = *v261;
              sub_10004496C(v265, type metadata accessor for AWDLPeer.AdvertisedService);
            }

            v266 = v316;
            *v316 = v263;
            v267 = v297;
            sub_100044904(v266, v297, type metadata accessor for AWDLPeer.AdvertisedService);
            v268 = v296;
            sub_100159E2C(v296, v267);
            sub_1000835CC(v304, v305, v306, v328, v329, v330, v331);
            sub_10004496C(v268, type metadata accessor for AWDLPeer.AdvertisedService);
            sub_100016290(v260, &qword_10058FA18, &qword_100493068);
            sub_10004496C(v310, type metadata accessor for DNSRecords.SRV);
            v264 = v266;
LABEL_175:
            sub_10004496C(v264, type metadata accessor for AWDLPeer.AdvertisedService);
          }

          v170 = v327;
          v167 = v315;
          v186 = v308;
          continue;
        }
      }
    }

    sub_100044904(v24, v320, type metadata accessor for AWDLActionFrame.ServiceResponse);
    v70 = swift_getEnumCaseMultiPayload();
    if (!v70)
    {
      v90 = v320;
      v91 = *(v320 + 16);
      v333 = *v320;
      v334 = v91;
      v335 = *(v320 + 32);
      v92 = *(v320 + 16);
      v350 = v333;
      v351 = v92;
      v352 = *(v320 + 32);
      v93 = swift_allocObject();
      v94 = *(v90 + 16);
      *(v93 + 16) = *v90;
      *(v93 + 32) = v94;
      *(v93 + 48) = *(v90 + 32);
      sub_1000836D4(&v350, v332);
      sub_100083730(&v351, v332);
      sub_100010520(v281, v280);
      v95 = swift_allocObject();
      *(v95 + 16) = sub_1001AF29C;
      *(v95 + 24) = v93;
      v323 = v95;
      sub_100010520(v285, v283);
      v96 = v315;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v332[0] = v96;
      v98 = sub_10007CE78(&v333);
      v100 = *(v96 + 16);
      v101 = (v99 & 1) == 0;
      v102 = __OFADD__(v100, v101);
      v103 = v100 + v101;
      if (v102)
      {
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
        goto LABEL_200;
      }

      if (*(v96 + 24) >= v103)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v129 = v93;
          v164 = v98;
          v165 = v99;
          sub_100197574();
          v99 = v165;
          v98 = v164;
          goto LABEL_100;
        }
      }

      else
      {
        v104 = v99;
        sub_100190A60(v103, isUniquelyReferenced_nonNull_native);
        v98 = sub_10007CE78(&v333);
        if ((v104 & 1) != (v105 & 1))
        {
          goto LABEL_200;
        }

        v99 = v104;
      }

      v129 = v93;
LABEL_100:
      v15 = v326;
      v130 = v332[0];
      if (v99)
      {
        v131 = *(v301 + 72) * v98;
      }

      else
      {
        v146 = v300;
        v147 = v98;
        sub_1001AE578(v323[2], v300);
        v130[(v147 >> 6) + 8] |= 1 << v147;
        v148 = v130[6] + 40 * v147;
        v149 = v334;
        *v148 = v333;
        *(v148 + 16) = v149;
        *(v148 + 32) = v335;
        v131 = *(v301 + 72) * v147;
        sub_10001CEA8(v146, v130[7] + v131, &qword_10058F3A0, &qword_100492310);
        v150 = v130[2];
        v102 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v102)
        {
          goto LABEL_198;
        }

        v130[2] = v151;
        sub_1000836D4(&v350, v332);
        sub_100083730(&v351, v332);
        v35 = v328;
      }

      v315 = v130;
      v152 = v130[7] + v131;
      *(v152 + 32) = v335;
      v153 = v334;
      *v152 = v333;
      *(v152 + 16) = v153;

      v285 = sub_1001AF2A4;
      v280 = v129;
      v281 = sub_1001AF29C;
      v283 = v323;
      goto LABEL_116;
    }

    if (v70 != 1)
    {
      v323 = type metadata accessor for DNSRecords.SRV;
      v106 = v306;
      sub_1000390BC(v320, v306, type metadata accessor for DNSRecords.SRV);
      v107 = *(v106 + 16);
      v341 = *v106;
      v342 = v107;
      v343 = *(v106 + 32);
      v108 = *(v106 + 16);
      v344 = v341;
      v345 = v108;
      v346 = *(v106 + 32);
      *&v302 = type metadata accessor for DNSRecords.SRV;
      v109 = v305;
      sub_100044904(v106, v305, type metadata accessor for DNSRecords.SRV);
      v110 = v326;
      v111 = (*(v326 + 80) + 16) & ~*(v326 + 80);
      v112 = swift_allocObject();
      sub_1000390BC(v109, v112 + v111, v323);
      sub_1000836D4(&v344, v332);
      sub_100083730(&v345, v332);
      sub_100010520(v287, v286);
      v113 = v106;
      v114 = v295;
      sub_100044904(v113, v295, v302);
      (*(v110 + 56))(v114, 0, 1, v313);
      v115 = swift_allocObject();
      *(v115 + 16) = sub_1001AF20C;
      *(v115 + 24) = v112;
      v323 = v112;
      sub_100010520(v290, v288);
      v116 = v315;
      v117 = swift_isUniquelyReferenced_nonNull_native();
      v332[0] = v116;
      v119 = sub_10007CE78(&v341);
      v120 = *(v116 + 16);
      v121 = (v118 & 1) == 0;
      v122 = v120 + v121;
      if (__OFADD__(v120, v121))
      {
        goto LABEL_196;
      }

      if (*(v116 + 24) >= v122)
      {
        if ((v117 & 1) == 0)
        {
          v166 = v118;
          sub_100197574();
          v118 = v166;
        }

        v15 = v326;
        v126 = v119;
      }

      else
      {
        v123 = v118;
        sub_100190A60(v122, v117);
        v124 = sub_10007CE78(&v341);
        if ((v123 & 1) != (v125 & 1))
        {
          goto LABEL_200;
        }

        v126 = v124;
        v118 = v123;
        v15 = v326;
      }

      v154 = v332[0];
      if (v118)
      {
        v155 = v115;
        sub_10008378C(&v344);
        sub_1000837E0(&v345);
        v156 = *(v301 + 72) * v126;
      }

      else
      {
        v157 = *(v115 + 16);
        v155 = v115;
        v158 = v300;
        sub_1001AE578(v157, v300);
        v154[(v126 >> 6) + 8] |= 1 << v126;
        v159 = v154[6] + 40 * v126;
        v160 = v342;
        *v159 = v341;
        *(v159 + 16) = v160;
        *(v159 + 32) = v343;
        v156 = *(v301 + 72) * v126;
        sub_10001CEA8(v158, v154[7] + v156, &qword_10058F3A0, &qword_100492310);
        v161 = v154[2];
        v102 = __OFADD__(v161, 1);
        v162 = v161 + 1;
        if (v102)
        {
          goto LABEL_197;
        }

        v154[2] = v162;
      }

      v35 = v328;
      v315 = v154;
      sub_1000B1B78(v295, v154[7] + *(v312 + 64) + v156, &unk_10058B750, &unk_100480AB0);
      sub_10004496C(v306, type metadata accessor for DNSRecords.SRV);
      v290 = sub_1001AF28C;
      v286 = v323;
      v287 = sub_1001AF20C;
      v288 = v155;
      goto LABEL_116;
    }

    v71 = v320;
    v72 = *(v320 + 16);
    v302 = *v320;
    v339[0] = v302;
    v339[1] = v72;
    v73 = *(v320 + 16);
    v339[2] = *(v320 + 32);
    v74 = *(v320 + 48);
    *&v299 = *(v320 + 40);
    v340 = v74;
    v278 = v73;
    v277 = *(v320 + 32);
    v338 = *(v320 + 32);
    v336 = v302;
    v337 = v72;
    v349 = v302;
    v348 = *(v320 + 32);
    v347 = v72;
    v75 = swift_allocObject();
    v76 = *(v71 + 16);
    *(v75 + 16) = *v71;
    *(v75 + 32) = v76;
    *(v75 + 48) = *(v71 + 32);
    *(v75 + 64) = *(v71 + 48);
    sub_1000836D4(&v349, v332);
    sub_100083730(&v347, v332);
    sub_100083AB8(v339, v332);
    sub_100010520(v284, v282);
    v77 = swift_allocObject();
    *(v77 + 16) = sub_1001AF294;
    *(v77 + 24) = v75;
    v323 = v77;
    sub_100010520(v291, v289);
    v78 = v315;
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v332[0] = v78;
    v291 = sub_10007CE78(&v336);
    v81 = *(v78 + 16);
    v82 = (v80 & 1) == 0;
    v83 = v81 + v82;
    if (__OFADD__(v81, v82))
    {
      goto LABEL_195;
    }

    v84 = *(v78 + 24);
    v276 = v74;
    if (v84 < v83)
    {
      break;
    }

    if (v79)
    {
      v89 = v75;
    }

    else
    {
      v89 = v75;
      v163 = v80;
      sub_100197574();
      v80 = v163;
    }

    v15 = v326;
    v88 = v291;
LABEL_96:
    v127 = v332[0];
    if (v80)
    {
      sub_10008378C(&v349);
      sub_1000837E0(&v347);
      v128 = *(v301 + 72) * v88;
    }

    else
    {
      v132 = v300;
      sub_1001AE578(v323[2], v300);
      v127[(v88 >> 6) + 8] |= 1 << v88;
      v133 = v127[6] + 40 * v88;
      v134 = v337;
      *v133 = v336;
      *(v133 + 16) = v134;
      *(v133 + 32) = v338;
      v128 = *(v301 + 72) * v88;
      sub_10001CEA8(v132, v127[7] + v128, &qword_10058F3A0, &qword_100492310);
      v135 = v127[2];
      v102 = __OFADD__(v135, 1);
      v136 = v135 + 1;
      if (v102)
      {
        goto LABEL_199;
      }

      v127[2] = v136;
      v35 = v328;
    }

    v315 = v127;
    v137 = (v127[7] + v128);
    v138 = v137[5];
    v139 = v137[6];
    v140 = v137[7];
    v141 = v137[8];
    v142 = v137[9];
    v143 = v137[10];
    v144 = v137[11];
    *(v137 + 5) = v302;
    *(v137 + 7) = v278;
    v145 = v299;
    v137[9] = v277;
    v137[10] = v145;
    v137[11] = v276;
    sub_1000835CC(v138, v139, v140, v141, v142, v143, v144);
    v291 = sub_1001AF2A4;
    v284 = sub_1001AF294;
    v282 = v89;
    v289 = v323;
LABEL_116:
    sub_10004496C(v24, type metadata accessor for AWDLActionFrame.ServiceResponse);
    LODWORD(v323) = 1;
    LOBYTE(v32) = 1;
    if (v34 == v33)
    {
      goto LABEL_187;
    }
  }

  v85 = v80;
  sub_100190A60(v83, v79);
  v86 = sub_10007CE78(&v336);
  if ((v85 & 1) == (v87 & 1))
  {
    v88 = v86;
    v80 = v85;
    v89 = v75;
    v15 = v326;
    goto LABEL_96;
  }

LABEL_200:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004471C()
{
  v1 = (type metadata accessor for DNSRecords.SRV(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for NWEndpoint.Port();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044834()
{

  sub_1000124C8(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004487C()
{

  return _swift_deallocObject(v0, 50, 7);
}

uint64_t sub_100044904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004496C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000449CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 15)
  {
    return sub_1000124C8(a3, a4);
  }

  return result;
}

uint64_t sub_1000449E8(uint64_t a1)
{
  if ((*(a1 + 56) & 0xFu) <= 0xA)
  {
    return *(a1 + 56) & 0xF;
  }

  else
  {
    return (*a1 + 11);
  }
}

void sub_100044A04(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v214 = 0;
  v6 = *v2;
  v209 = type metadata accessor for DispatchTime();
  v208 = *(v209 - 8);
  __chkstk_darwin();
  v198 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v211 = &v175 - v8;
  v201 = type metadata accessor for DispatchTimeInterval();
  v200 = *(v201 - 1);
  __chkstk_darwin();
  v199 = (&v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v197 = &v175 - v10;
  v11 = type metadata accessor for AWDLPeer(0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v178 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v183 = &v175 - v14;
  __chkstk_darwin();
  v180 = &v175 - v15;
  __chkstk_darwin();
  v177 = &v175 - v16;
  __chkstk_darwin();
  v181 = &v175 - v17;
  v18 = *(v6 + 440);
  v196 = *(v6 + 432);
  v195 = v18;
  v20 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation(255, v196, v18, v19);
  v194 = type metadata accessor for Optional();
  v193 = *(v194 - 8);
  __chkstk_darwin();
  v192 = &v175 - v21;
  sub_10005DC58(&unk_10059B090, &unk_1004B1830);
  __chkstk_darwin();
  v182 = &v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v188 = &v175 - v23;
  __chkstk_darwin();
  v187 = &v175 - v24;
  __chkstk_darwin();
  v189 = &v175 - v25;
  __chkstk_darwin();
  v184 = &v175 - v26;
  __chkstk_darwin();
  v190 = &v175 - v27;
  __chkstk_darwin();
  v179 = &v175 - v28;
  __chkstk_darwin();
  v186 = &v175 - v29;
  __chkstk_darwin();
  v185 = &v175 - v30;
  __chkstk_darwin();
  v191 = &v175 - v31;
  __chkstk_darwin();
  v33 = &v175 - v32;
  v34 = sub_100046564(a2 & 0xFFFFFFFFFFFFLL);
  v35 = WiFiAddress.apiAddress.getter(a2 & 0xFFFFFFFFFFFFLL);
  sub_100027648(a1, v33, type metadata accessor for AWDLPeer);
  v204 = v12;
  v36 = *(v12 + 56);
  v206 = v12 + 56;
  v205 = v36;
  v36(v33, 0, 1, v11);
  v37 = *(*v2 + 448);
  swift_beginAccess();
  v215 = a2;
  sub_1000467B4(v33, a2 & 0xFFFFFFFFFFFFLL);
  swift_endAccess();
  v210 = v37;
  v203 = v34;
  v207 = a1;
  v212 = v11;
  v213 = v35;
  v202 = v20;
  if (v34)
  {
    v38 = sub_100046D70();
    v39 = *(a1 + *(v11 + 112));
    v40 = v39 | v38;
    if (v39 != 1)
    {
LABEL_24:
      LODWORD(v196) = v40;
      v83 = v209;
      v84 = v208;
      v41 = v211;
LABEL_46:
      v101 = v201;
      goto LABEL_47;
    }

    v41 = v211;
    v42 = v20;
    if ((v38 & 1) == 0)
    {
      goto LABEL_13;
    }

    LODWORD(v196) = v39 | v38;
LABEL_45:
    v83 = v209;
    v84 = v208;
    goto LABEL_46;
  }

  v43 = [objc_allocWithZone(AWDLTrafficRegistrationConfiguration) initWithUniqueIdentifier:AWDLTrafficRegistrationServiceAssistedDiscovery peerAddress:v35];
  swift_beginAccess();
  v220 = v43;
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v44 = v192;
  Dictionary.subscript.getter();

  swift_endAccess();
  LODWORD(v43) = (*(*(v20 - 8) + 48))(v44, 1, v20);
  v45 = (*(v193 + 8))(v44, v194);
  v42 = v20;
  if (v43 != 1)
  {
    sub_10004D020(v45, v46, v47, v48);
    sub_100377818();
  }

  v49 = sub_100046D70();
  v37 = v210;
  v41 = v211;
  if (v49)
  {
    LOBYTE(v50) = sub_100046D70();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v37;
    v37 = isUniquelyReferenced_nonNull_native;
    v220 = *(v3 + v52);
    v53 = v220;
    *(v3 + v52) = 0x8000000000000000;
    v55 = sub_100041DE8(v215 & 0xFFFFFFFFFFFFLL);
    v56 = *(v53 + 16);
    v57 = (v54 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v41 = v54;
    if (*(v53 + 24) >= v58)
    {
      if ((v37 & 1) == 0)
      {
        goto LABEL_82;
      }

      if ((v54 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_100310628(v58, v37);
      v59 = sub_100041DE8(v215 & 0xFFFFFFFFFFFFLL);
      if ((v41 & 1) != (v60 & 1))
      {
        goto LABEL_90;
      }

      v55 = v59;
      if ((v41 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_27:
    v85 = v220;
    v86 = v204;
    v87 = *(v204 + 72) * v55;
    v88 = v190;
    sub_10003DFE0(*(v220 + 56) + v87, v190, type metadata accessor for AWDLPeer);
    v89 = v212;
    v205(v88, 0, 1, v212);
    *(v88 + *(v89 + 112)) = v50 & 1;
    v90 = v88;
    v91 = v184;
    sub_100012400(v90, v184, &unk_10059B090, &unk_1004B1830);
    if ((*(v86 + 48))(v91, 1, v89) == 1)
    {
      sub_100016290(v91, &unk_10059B090, &unk_1004B1830);
      sub_10004B80C(v55, v85, type metadata accessor for AWDLPeer);
    }

    else
    {
      v99 = v180;
      sub_10003DFE0(v91, v180, type metadata accessor for AWDLPeer);
      sub_10003DFE0(v99, *(v85 + 56) + v87, type metadata accessor for AWDLPeer);
    }

    v83 = v209;
    v100 = v208;
    v41 = v211;
    v101 = v201;
    v102 = v210;
    sub_100016290(v190, &unk_10059B090, &unk_1004B1830);
    *(v3 + v102) = v85;
    swift_endAccess();
    LODWORD(v196) = 1;
    v84 = v100;
LABEL_47:
    v211 = type metadata accessor for P2PTimer(0);
    variable initialization expression of AWDLPeer.lastUpdated();
    v37 = *(*v3 + 600);
    swift_beginAccess();
    v121 = v198;
    (*(v84 + 16))(v198, v3 + v37, v83);
    v122 = v41;
    v123 = v197;
    DispatchTime.distance(to:)();
    v124 = *(v84 + 8);
    v124(v121, v83);
    v124(v122, v83);
    v125 = v199;
    *v199 = 10;
    v126 = v200;
    (*(v200 + 104))(v125, enum case for DispatchTimeInterval.seconds(_:), v101);
    v127 = static DispatchTimeInterval.< infix(_:_:)(v123, v125);
    v128 = *(v126 + 8);
    v128(v125, v101);
    v128(v123, v101);
    if (v127)
    {
      v34 = v202;
      v42 = v207;
      v129 = v212;
    }

    else
    {
      swift_beginAccess();
      v201 = &v175;
      __chkstk_darwin();
      *(&v175 - 2) = v213;
      *(&v175 - 1) = v3;
      v130 = v208;
      sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v131 = v202;
      sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

      v34 = v131;
      v132 = v214;
      v133 = Dictionary.filter(_:)();
      v214 = v132;
      v42 = v207;
      v129 = v212;
      sub_10044E1B8(v133);
      variable initialization expression of AWDLPeer.lastUpdated();
      swift_beginAccess();
      (*(v130 + 40))(v3 + v37, v122, v209);
      swift_endAccess();
    }

    if (v203)
    {
      if (v196 & 1 | ((*(v42 + *(v129 + 116)) & 1) == 0))
      {
        sub_1000473F0(v42, type metadata accessor for AWDLPeer);

        return;
      }

      goto LABEL_59;
    }

    if ((v196 & 1) == 0)
    {
LABEL_59:
      v42 = v215;
      v143 = v215 >> 40;
      v144 = HIDWORD(v215);
      v55 = v215 >> 24;
      v145 = v215 >> 16;
      v146 = v215 >> 8;
      v218 = 0;
      v147 = *(*v3 + 608);
      swift_beginAccess();
      v211 = &v175;
      v217 = *(v3 + v147);
      __chkstk_darwin();
      *(&v175 - 4) = v213;
      *(&v175 - 3) = v3;
      *(&v175 - 16) = v42;
      *(&v175 - 15) = v146;
      *(&v175 - 14) = v145;
      *(&v175 - 13) = v55;
      *(&v175 - 12) = v144;
      *(&v175 - 11) = v143;
      *(&v175 - 1) = &v218;
      sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v148 = type metadata accessor for Dictionary();

      swift_getWitnessTable(&protocol conformance descriptor for [A : B], v148);
      LOBYTE(v50) = v214;
      Sequence.forEach(_:)();

      LOBYTE(v55) = v218;
      v37 = v210;
      swift_beginAccess();
      v149 = swift_isUniquelyReferenced_nonNull_native();
      v216 = *(v3 + v37);
      v150 = v216;
      *(v3 + v37) = 0x8000000000000000;
      v20 = sub_100041DE8(v42 & 0xFFFFFFFFFFFFLL);
      v152 = *(v150 + 16);
      v153 = (v151 & 1) == 0;
      v154 = v152 + v153;
      if (!__OFADD__(v152, v153))
      {
        LOBYTE(v50) = v151;
        if (*(v150 + 24) < v154)
        {
          sub_100310628(v154, v149);
          v155 = sub_100041DE8(v215 & 0xFFFFFFFFFFFFLL);
          v34 = v212;
          v42 = v189;
          if ((v50 & 1) != (v156 & 1))
          {
            goto LABEL_90;
          }

          v20 = v155;
          goto LABEL_64;
        }

        v34 = v212;
        v42 = v189;
        if (v149)
        {
LABEL_64:
          v157 = v207;
          if ((v50 & 1) == 0)
          {
            v205(v42, 1, 1, v34);
            __break(1u);
            goto LABEL_89;
          }

          v158 = v55 ^ 1;
          v159 = v216;
          v160 = v204;
          v161 = *(v204 + 72) * v20;
          sub_10003DFE0(*(v216 + 56) + v161, v42, type metadata accessor for AWDLPeer);
          v205(v42, 0, 1, v34);
          *(v42 + *(v34 + 116)) = v158;
          v162 = v187;
          sub_100012400(v42, v187, &unk_10059B090, &unk_1004B1830);
          if ((*(v160 + 48))(v162, 1, v34) == 1)
          {
            sub_100016290(v162, &unk_10059B090, &unk_1004B1830);
            sub_10004B80C(v20, v159, type metadata accessor for AWDLPeer);
          }

          else
          {
            v163 = v162;
            v164 = v183;
            sub_10003DFE0(v163, v183, type metadata accessor for AWDLPeer);
            sub_10003DFE0(v164, *(v159 + 56) + v161, type metadata accessor for AWDLPeer);
          }

          v165 = v213;
          sub_100016290(v42, &unk_10059B090, &unk_1004B1830);
          *(v3 + v37) = v159;
          swift_endAccess();

          v166 = v157;
          goto LABEL_75;
        }

LABEL_80:
        sub_10046B248();
        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_77;
    }

    v34 = v129;
    v20 = sub_100046D70();
    v134 = v210;
    swift_beginAccess();
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v217 = *(v3 + v134);
    v135 = v217;
    *(v3 + v134) = 0x8000000000000000;
    v50 = sub_100041DE8(v215 & 0xFFFFFFFFFFFFLL);
    v137 = *(v135 + 16);
    v138 = (v136 & 1) == 0;
    v139 = v137 + v138;
    if (__OFADD__(v137, v138))
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v140 = v136;
    if (*(v135 + 24) < v139)
    {
      sub_100310628(v139, v55);
      v141 = sub_100041DE8(v215 & 0xFFFFFFFFFFFFLL);
      if ((v140 & 1) != (v142 & 1))
      {
        goto LABEL_90;
      }

      v50 = v141;
      if ((v140 & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_71:
      v167 = v217;
      v168 = v204;
      v169 = *(v204 + 72) * v50;
      v170 = v188;
      sub_10003DFE0(*(v217 + 56) + v169, v188, type metadata accessor for AWDLPeer);
      v205(v170, 0, 1, v34);
      *(v170 + *(v34 + 116)) = v20 & 1;
      v171 = v170;
      v172 = v182;
      sub_100012400(v171, v182, &unk_10059B090, &unk_1004B1830);
      if ((*(v168 + 48))(v172, 1, v34) == 1)
      {
        sub_100016290(v172, &unk_10059B090, &unk_1004B1830);
        sub_10004B80C(v50, v167, type metadata accessor for AWDLPeer);
      }

      else
      {
        v173 = v178;
        sub_10003DFE0(v172, v178, type metadata accessor for AWDLPeer);
        sub_10003DFE0(v173, *(v167 + 56) + v169, type metadata accessor for AWDLPeer);
      }

      v174 = v213;
      sub_100016290(v188, &unk_10059B090, &unk_1004B1830);
      *(v3 + v134) = v167;
      swift_endAccess();

      v166 = v42;
LABEL_75:
      sub_1000473F0(v166, type metadata accessor for AWDLPeer);
      return;
    }

    if (v55)
    {
      if (v136)
      {
        goto LABEL_71;
      }
    }

    else
    {
      sub_10046B248();
      if (v140)
      {
        goto LABEL_71;
      }
    }

LABEL_58:
    v205(v188, 1, 1, v34);
    __break(1u);
    goto LABEL_59;
  }

  while (1)
  {
LABEL_13:
    swift_beginAccess();
    __chkstk_darwin();
    v61 = v195;
    *(&v175 - 4) = v196;
    *(&v175 - 3) = v61;
    *(&v175 - 2) = v213;
    v62 = sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v63 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

    v50 = v214;
    v196 = Dictionary.filter(_:)();
    v214 = v62;
    v34 = v42;
    if ((Dictionary.isEmpty.getter() & 1) == 0)
    {
      v194 = v63;
      swift_beginAccess();
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v219 = *(v3 + v37);
      v74 = v219;
      *(v3 + v37) = 0x8000000000000000;
      v20 = sub_100041DE8(v215 & 0xFFFFFFFFFFFFLL);
      v76 = *(v74 + 16);
      v77 = (v75 & 1) == 0;
      v78 = v76 + v77;
      if (__OFADD__(v76, v77))
      {
        goto LABEL_78;
      }

      v79 = v75;
      v80 = *(v74 + 24);
      v195 = v50;
      if (v80 < v78)
      {
        sub_100310628(v78, v55);
        v81 = sub_100041DE8(v215 & 0xFFFFFFFFFFFFLL);
        if ((v79 & 1) != (v82 & 1))
        {
          goto LABEL_90;
        }

        v20 = v81;
        if ((v79 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_31:
        v92 = v219;
        v93 = v204;
        v94 = *(v204 + 72) * v20;
        v95 = v191;
        sub_10003DFE0(*(v219 + 56) + v94, v191, type metadata accessor for AWDLPeer);
        v96 = v212;
        v205(v95, 0, 1, v212);
        *(v95 + *(v96 + 112)) = 1;
        v97 = v95;
        v98 = v185;
        sub_100012400(v97, v185, &unk_10059B090, &unk_1004B1830);
        if ((*(v93 + 48))(v98, 1, v96) == 1)
        {
          sub_100016290(v98, &unk_10059B090, &unk_1004B1830);
          sub_10004B80C(v20, v92, type metadata accessor for AWDLPeer);
        }

        else
        {
          v103 = v181;
          sub_10003DFE0(v98, v181, type metadata accessor for AWDLPeer);
          sub_10003DFE0(v103, *(v92 + 56) + v94, type metadata accessor for AWDLPeer);
        }

        v41 = v211;
        sub_100016290(v191, &unk_10059B090, &unk_1004B1830);
        *(v3 + v37) = v92;
        swift_endAccess();
        v50 = v195;
LABEL_44:
        v220 = v196;
        __chkstk_darwin();
        *(&v175 - 2) = v3;
        *(&v175 - 8) = v114;
        *(&v175 - 7) = v115;
        *(&v175 - 6) = v116;
        *(&v175 - 5) = v117;
        *(&v175 - 4) = v118;
        *(&v175 - 3) = v119;
        v120 = type metadata accessor for Dictionary();
        swift_getWitnessTable(&protocol conformance descriptor for [A : B], v120);
        Sequence.forEach(_:)();
        v214 = v50;

        LODWORD(v196) = 0;
        goto LABEL_45;
      }

      if (v55)
      {
        if (v75)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_10046B248();
        if (v79)
        {
          goto LABEL_31;
        }
      }

LABEL_23:
      v205(v191, 1, 1, v212);
      __break(1u);
      goto LABEL_24;
    }

    if ((v203 & 1) == 0)
    {
      goto LABEL_44;
    }

    swift_beginAccess();
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v219 = *(v3 + v37);
    v64 = v219;
    *(v3 + v37) = 0x8000000000000000;
    v66 = sub_100041DE8(v215 & 0xFFFFFFFFFFFFLL);
    v67 = *(v64 + 16);
    v68 = (v65 & 1) == 0;
    v69 = v67 + v68;
    if (!__OFADD__(v67, v68))
    {
      break;
    }

    __break(1u);
LABEL_82:
    sub_10046B248();
    if (v41)
    {
      goto LABEL_27;
    }

LABEL_12:
    v205(v190, 1, 1, v212);
    __break(1u);
  }

  v70 = v65;
  v71 = *(v64 + 24);
  v176 = v3;
  if (v71 >= v69)
  {
    if ((v55 & 1) == 0)
    {
      sub_10046B248();
    }
  }

  else
  {
    sub_100310628(v69, v55);
    v72 = sub_100041DE8(v215 & 0xFFFFFFFFFFFFLL);
    if ((v70 & 1) != (v73 & 1))
    {
      goto LABEL_90;
    }

    v66 = v72;
  }

  v195 = v50;
  if (v70)
  {
    v104 = v41;
    v105 = v219;
    v106 = v204;
    v107 = *(v204 + 72) * v66;
    v108 = v186;
    sub_10003DFE0(*(v219 + 56) + v107, v186, type metadata accessor for AWDLPeer);
    v109 = v212;
    v205(v108, 0, 1, v212);
    *(v108 + *(v109 + 112)) = 0;
    v110 = v108;
    v111 = v179;
    sub_100012400(v110, v179, &unk_10059B090, &unk_1004B1830);
    if ((*(v106 + 48))(v111, 1, v109) == 1)
    {
      sub_100016290(v111, &unk_10059B090, &unk_1004B1830);
      sub_10004B80C(v66, v105, type metadata accessor for AWDLPeer);
    }

    else
    {
      v112 = v111;
      v113 = v177;
      sub_10003DFE0(v112, v177, type metadata accessor for AWDLPeer);
      sub_10003DFE0(v113, *(v105 + 56) + v107, type metadata accessor for AWDLPeer);
    }

    v41 = v104;
    v50 = v195;
    sub_100016290(v186, &unk_10059B090, &unk_1004B1830);
    v3 = v176;
    *(v176 + v37) = v105;
    swift_endAccess();
    goto LABEL_44;
  }

LABEL_89:
  v205(v186, 1, 1, v212);
  __break(1u);
LABEL_90:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

BOOL sub_100046564(uint64_t a1)
{
  sub_10005DC58(&unk_10059B090, &unk_1004B1830);
  __chkstk_darwin();
  v4 = &v15 - v3;
  v5 = *(*v1 + 448);
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16) && (v7 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for AWDLPeer(0);
    v12 = *(v11 - 8);
    sub_100027648(v10 + *(v12 + 72) * v9, v4, type metadata accessor for AWDLPeer);
    (*(v12 + 56))(v4, 0, 1, v11);
  }

  else
  {
    v11 = type metadata accessor for AWDLPeer(0);
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  }

  swift_endAccess();
  type metadata accessor for AWDLPeer(0);
  v13 = (*(*(v11 - 8) + 48))(v4, 1, v11) != 1;
  sub_100016290(v4, &unk_10059B090, &unk_1004B1830);
  return v13;
}

id WiFiAddress.apiAddress.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(WiFiMACAddress);

  return [v2 initWithAddress:a1 & 0xFFFFFFFFFFFFLL];
}

uint64_t sub_1000467B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10005DC58(&unk_10059B090, &unk_1004B1830);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v8 = type metadata accessor for AWDLPeer(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_100016290(a1, &unk_10059B090, &unk_1004B1830);
    v13 = sub_100041DE8(a2 & 0xFFFFFFFFFFFFLL);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10046B248();
        v17 = v21;
      }

      sub_10036D640(*(v17 + 56) + *(v9 + 72) * v15, v7, type metadata accessor for AWDLPeer);
      sub_10004B7F4(v15, v17);
      *v3 = v17;
      (*(v9 + 56))(v7, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8);
    }

    return sub_100016290(v7, &unk_10059B090, &unk_1004B1830);
  }

  else
  {
    sub_10036D640(a1, v12, type metadata accessor for AWDLPeer);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_100046AF0(v12, a2 & 0xFFFFFFFFFFFFLL, v18);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_100046A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100046A70(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(v8, a1 & 0xFFFFFFFFFFFFLL);
  v5 = Hasher._finalize()();

  return a3(a1 & 0xFFFFFFFFFFFFLL, v5);
}

uint64_t sub_100046AF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for AWDLPeer(0);
      return sub_100046D08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for AWDLPeer);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10046B248();
    goto LABEL_7;
  }

  sub_100310628(v13, a3 & 1);
  v20 = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1002DDD5C(v10, a2 & 0xFFFFFFFFFFFFLL, a1, v16);
}

void NANClusterChangeEvent.hash(into:)(int a1, unint64_t a2)
{
  v2 = a2 >> 8;
  v3 = a2 >> 16;
  v4 = a2 >> 24;
  v5 = HIDWORD(a2);
  v6 = a2 >> 40;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
}

uint64_t sub_100046D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100046D70()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v11 - v4;
  sub_100046F00(&v11 - v4);
  *v3 = 10;
  (*(v1 + 104))(v3, enum case for DispatchTimeInterval.seconds(_:), v0);
  v6 = static DispatchTimeInterval.< infix(_:_:)(v5, v3);
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v5, v0);
  if (v6)
  {
    swift_unownedRetainStrong();
    sub_1003EB084();
    v9 = v8;

    if (!v9)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100046F00@<X0>(uint64_t a1@<X8>)
{
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v4 = &v16 - v3;
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v16 - v9;
  v11 = *(*v1 + 696);
  swift_beginAccess();
  sub_100012400(v1 + v11, v4, &unk_100597330, &unk_100481FA0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100016290(v4, &unk_100597330, &unk_100481FA0);
    v12 = enum case for DispatchTimeInterval.never(_:);
    v13 = type metadata accessor for DispatchTimeInterval();
    return (*(*(v13 - 8) + 104))(a1, v12, v13);
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    type metadata accessor for P2PTimer(0);
    variable initialization expression of AWDLPeer.lastUpdated();
    DispatchTime.distance(to:)();
    v15 = *(v6 + 8);
    v15(v8, v5);
    return (v15)(v10, v5);
  }
}

BOOL static DispatchTimeInterval.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for DispatchTimeInterval.never(_:);
  v8 = *(v3 + 104);
  (v8)(v6, enum case for DispatchTimeInterval.never(_:), v2, v4);
  v9 = static DispatchTimeInterval.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    return 0;
  }

  v8(v6, v7, v2);
  v12 = static DispatchTimeInterval.== infix(_:_:)();
  v10(v6, v2);
  if (v12)
  {
    return 1;
  }

  v13 = sub_100028EF8();
  return v13 < sub_100028EF8();
}

uint64_t sub_1000472EC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100047340(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_100018AB4(255, a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100047390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000473F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100047450()
{
  v1 = v0;
  v2 = *v0;
  sub_10005DC58(&unk_10059A6B0, &unk_1004B4D80);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = v2[93];
  if (*(v1 + v5))
  {
    v6 = *(v1 + v5);
  }

  else
  {
    type metadata accessor for LocaleManager(0, v2[54], v2, *(v2[55] + 8));
    swift_unownedRetainStrong();
    sub_1003EB9D8(v4);

    v7 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
    v6 = sub_10042880C(v1, v4, v7);

    *(v1 + v5) = v6;
  }

  return v6;
}

uint64_t AWDLPeer.countryCode.getter()
{
  sub_10005DC58(&qword_10058D450, &unk_100486D78);
  __chkstk_darwin();
  v2 = (&v9 - v1);
  v3 = type metadata accessor for AWDLPeer(0);
  sub_100012400(v0 + *(v3 + 56), v2, &qword_10058D450, &unk_100486D78);
  v4 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
    sub_100016290(v2, &qword_10058D450, &unk_100486D78);
  }

  else
  {
    v5 = *v2;
    v6 = *(v2 + 2);
    sub_10004496C(v2, type metadata accessor for AWDLActionFrame.DataPathState);
    if ((v6 & 1) == 0)
    {
      v7 = v5 >> 8;
      return v5 | (v7 << 8);
    }
  }

  if (qword_10058A898 != -1)
  {
    swift_once();
  }

  LOBYTE(v5) = static CountryCode.unknown;
  v7 = HIBYTE(static CountryCode.unknown);
  return v5 | (v7 << 8);
}

uint64_t sub_100047728()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v16 - v6;
  v8 = *(v0 + qword_10059A828);
  v9 = swift_unownedRetainStrong();
  (*(*v8 + 192))(v9);

  v10 = Preferences.enableUserspaceP2POptions.getter(v4);
  (*(v5 + 8))(v7, v4);
  if ((*PreferenceDefaults.EnableUserspaceP2POptions.localeManager.unsafeMutableAddressor() & ~v10) != 0)
  {
    v14 = 0;
  }

  else
  {
    v11 = swift_unownedRetainStrong();
    v12 = (*(*v8 + 200))(v11);

    v13 = *WiFiDriverCapabilities.peerCountryCodeLearningCapable.unsafeMutableAddressor();
    v16[0] = v12;
    v16[1] = v13;
    sub_1000C2A14();

    v14 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  }

  return v14 & 1;
}

void sub_1000479A0(__int16 a1)
{
  if (sub_100047728())
  {
    *(v1 + qword_10059A810) = a1;
    sub_100427868();
    *(v1 + qword_10059A818) = 3;

    sub_1004279D0();
  }
}

uint64_t WiFiInterface.preferences.getter()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 120);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

uint64_t sub_100047AF0@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2, v7);
}

uint64_t Preferences.enableUserspaceP2POptions.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  v4[0] = *(a1 + 16);
  v4[1] = &type metadata for PreferenceDefaults.EnableUserspaceP2POptions;
  v4[2] = v1;
  v4[3] = sub_100047C68();
  v2 = type metadata accessor for Preferences.EnumPreference(0, v4);
  Preferences.EnumPreference.wrappedValue.getter(v2, v4);
  return v4[0];
}

unint64_t sub_100047C68()
{
  result = qword_10058D6C8;
  if (!qword_10058D6C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreferenceDefaults.EnableUserspaceP2POptions, &type metadata for PreferenceDefaults.EnableUserspaceP2POptions, v0, v1);
    atomic_store(result, &qword_10058D6C8);
  }

  return result;
}

uint64_t Preferences.EnumPreference.wrappedValue.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v18 = a2;
  v5 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - v11;
  v13 = type metadata accessor for Preferences.Preference(0, a1[2], AssociatedTypeWitness, a1[4]);
  Preferences.Preference.wrappedValue.getter(v13, v8);
  dispatch thunk of RawRepresentable.init(rawValue:)();
  v14 = *(v5 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v5) != 1)
  {
    return (*(v14 + 32))(v18, v12, v5);
  }

  (*(v14 + 16))(v18, v3, v5);
  result = (v15)(v12, 1, v5);
  if (result != 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t Preferences.Preference.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = *(type metadata accessor for Optional() - 8);
  v8 = __chkstk_darwin();
  v10 = &v17 - v9;
  if (*(v2 + *(a1 + 52)) == 1)
  {
    v11 = v7;
    (*(*(a1 + 32) + 8))(*(v2 + *(a1 + 44)), v5, *(a1 + 16), v8);
    v12 = *(v5 - 8);
    v13 = *(v12 + 48);
    if (v13(v10, 1, v5) == 1)
    {
      (*(v12 + 16))(a2, v2 + *(a1 + 48), v5);
      result = v13(v10, 1, v5);
      if (result != 1)
      {
        return (*(v6 + 8))(v10, v11);
      }
    }

    else
    {
      return (*(v12 + 32))(a2, v10, v5);
    }
  }

  else
  {
    v15 = *(*(v5 - 8) + 16);
    v16 = v2 + *(a1 + 48);

    return v15(a2, v16, v5, v8);
  }

  return result;
}

void LockedPreferencesStorage.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v16 - v12;
  os_unfair_lock_lock(*(*v5 + 16));
  (*(*(a2 + 24) + 8))(a1, a3, *(a2 + 16));
  v14 = *(a3 - 8);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v15 = 1;
  }

  else
  {
    (*(v14 + 32))(a4, v13, a3);
    v15 = 0;
  }

  (*(v14 + 56))(a4, v15, 1, a3);
  os_unfair_lock_unlock(*(*v5 + 16));
}

uint64_t CachedPreferenceStorage.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v40 = a2;
  v6 = a1;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v32 - v11;
  __chkstk_darwin();
  v13 = &v32 - v12;
  v14 = *(a3 - 8);
  __chkstk_darwin();
  v36 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v32 - v16;
  v39 = v4;
  v18 = *v4;
  v41 = v6;
  InMemoryPreferenceStorage.subscript.getter(a3, v13, v6);
  v19 = *(v14 + 48);
  if (v19(v13, 1, a3) == 1)
  {
    v34 = v8;
    v35 = a4;
    v33 = *(v9 + 8);
    v33(v13, v8);
    v21 = *(v40 + 16);
    v20 = *(v40 + 24);
    v23 = type metadata accessor for CachedPreferenceStorage.EmptyPreference(0, v21, v20, v22);
    InMemoryPreferenceStorage.subscript.getter(v23, &v43, v41);
    if ((v43 & 1) == 0)
    {
      return (*(v14 + 56))(v35, 1, 1, a3);
    }

    v32 = v18;
    v24 = v38;
    (*(v20 + 8))(v41, a3, v21, v20);
    if (v19(v24, 1, a3) == 1)
    {
      v33(v24, v34);
      v42 = 0;
      sub_100124E60(&v42, v41, v23);
      return (*(v14 + 56))(v35, 1, 1, a3);
    }

    v27 = *(v14 + 32);
    v28 = v36;
    v27(v36, v24, a3);
    v29 = v37;
    (*(v14 + 16))(v37, v28, a3);
    v30 = *(v14 + 56);
    v30(v29, 0, 1, a3);
    sub_100124E60(v29, v41, a3);
    v33(v29, v34);
    v31 = v35;
    v27(v35, v28, a3);
    return v30(v31, 0, 1, a3);
  }

  else
  {
    v26 = *(v14 + 32);
    v26(v17, v13, a3);
    v26(a4, v17, a3);
    return (*(v14 + 56))(a4, 0, 1, a3);
  }
}

uint64_t InMemoryPreferenceStorage.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, char a3@<W0>)
{
  v6 = PreferencesName.rawValue.getter(a3);
  v8 = v7;
  swift_beginAccess();
  v9 = *(v3 + 16);
  if (*(v9 + 16) && (, v10 = sub_1000102E8(v6, v8), v12 = v11, , (v12 & 1) != 0))
  {
    sub_100002B30(*(v9 + 56) + 32 * v10, v15);
  }

  else
  {

    memset(v15, 0, sizeof(v15));
  }

  sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
  v13 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v13 ^ 1u, 1, a1);
}

unint64_t PreferencesName.rawValue.getter(char a1)
{
  result = 1818523489;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
    case 28:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
    case 29:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 8:
    case 16:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      return result;
    case 12:
      result = 0x4143414D6C647761;
      break;
    case 13:
      result = 7233902;
      break;
    case 14:
      result = 0x644143414D6E616ELL;
      break;
    case 15:
    case 30:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x5374694B65676465;
      break;
    case 18:
    case 19:
    case 26:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0xD000000000000021;
      break;
    case 21:
      result = 0xD000000000000016;
      break;
    case 22:
    case 23:
      result = 0xD00000000000001BLL;
      break;
    case 24:
      result = 0xD00000000000001FLL;
      break;
    case 25:
      result = 0xD000000000000025;
      break;
    case 27:
      result = 0xD00000000000001ELL;
      break;
    case 31:
      result = 0xD00000000000001CLL;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

void *sub_100048C30@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100048C4C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >> 30 <= 1)
  {
  }

  return result;
}

uint64_t sub_100048C6C(void *a1)
{
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  v3 = a1[3];
  sub_100029B34(a1, v3);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v14, v15);
    sub_100048E7C();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v3 = v17;
    sub_100031694(v14, v15);
    v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v5 = v15;
    v6 = v16;
    sub_100031694(v14, v15);
    v8 = UnkeyedDecodingContainer.decodeData(with:)(v4, v5, v6);
    v10 = v9;
    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    v12 = v11;
    sub_1000124C8(v8, v10);
    if (v12)
    {
      sub_100002A00(v14);
      sub_100002A00(a1);
      return v3;
    }

    sub_10000B02C();
    swift_allocError();
    *v13 = xmmword_10047CE70;
    *(v13 + 16) = 2;
    swift_willThrow();
    sub_100002A00(v14);
  }

  sub_100002A00(a1);
  return v3;
}

unint64_t sub_100048E7C()
{
  result = qword_10058ECF0;
  if (!qword_10058ECF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Arpa.Flags, &type metadata for AWDLActionFrame.Arpa.Flags, v0, v1);
    atomic_store(result, &qword_10058ECF0);
  }

  return result;
}

unint64_t sub_100048F30()
{
  result = qword_10058E578;
  if (!qword_10058E578)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.Arpa.Flags, &type metadata for AWDLActionFrame.Arpa.Flags, v0, v1);
    atomic_store(result, &qword_10058E578);
  }

  return result;
}

uint64_t AWDLActionFrame.ServiceResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a2;
  sub_10005DC58(&qword_10058BA40, &qword_100480D90);
  __chkstk_darwin();
  v4 = &v155 - v3;
  v5 = type metadata accessor for NWEndpoint.Port();
  v174 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  v9 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AWDLActionFrame.ServiceResponse(0);
  __chkstk_darwin();
  v12 = (&v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v176 = a1;
  sub_100029B34(a1, v13);
  v14 = v177;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v14)
  {
    return sub_100002A00(v176);
  }

  v171 = v4;
  v172 = v10;
  v177 = v9;
  v173 = v12;
  v169 = v7;
  v170 = v5;
  sub_100031694(v181, v182);
  v15 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  if ((v15 - 256) <= 0xFF01u)
  {
    sub_10000B02C();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 2;
    swift_willThrow();
LABEL_9:
    sub_100002A00(v181);
    return sub_100002A00(v176);
  }

  v17 = v15 - 1;
  v18 = v182;
  v19 = v183;
  sub_100031694(v181, v182);
  v167 = UnkeyedDecodingContainer.decodeData(with:)(v17, v18, v19);
  v168 = v20;
  sub_100031694(v181, v182);
  v21 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v22 = _s7CoreP2P10DNSRecordsO10RecordTypeO8rawValueAESgs6UInt16V_tcfC_0(v21);
  if (v22 == 65)
  {
    goto LABEL_5;
  }

  v24 = v22;
  sub_100031694(v181, v182);
  v25 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  sub_100031694(v181, v182);
  v26 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  if (v25 <= v26)
  {
    goto LABEL_46;
  }

  v28 = v25 - v26;
  if (v25 - v26 == 0xFFFF)
  {
    goto LABEL_46;
  }

  v29 = 0;
  v30 = v168 >> 62;
  if ((v168 >> 62) > 1)
  {
    v31 = v24;
    if (v30 == 2)
    {
      v29 = *(v167 + 16);
    }
  }

  else
  {
    v31 = v24;
    if (v30)
    {
      v29 = v167;
    }
  }

  v166 = 0;
  if (v31 == 11)
  {
    sub_100031694(v181, v182);
    v32 = v166;
    v33 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v32)
    {
      goto LABEL_8;
    }

    v34 = v33;
    v35 = v182;
    v36 = v183;
    sub_100031694(v181, v182);
    v37 = UnkeyedDecodingContainer.decodeData(with:)(v34, v35, v36);
    v166 = 0;
    v55 = v37;
    v57 = v56;
    static String.Encoding.utf8.getter();
    v158 = String.init(data:encoding:)();
    v59 = v58;
    LOBYTE(v60) = sub_1000124C8(v55, v57);
    v163 = v59;
    if (!v59)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

  v38 = Data._Representation.subscript.getter();
  v39 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    __break(1u);
LABEL_229:
    if (v159)
    {
      goto LABEL_230;
    }

LABEL_236:
    if (v5 == 0x6C61636F6CLL && v162 == 0xE500000000000000)
    {

LABEL_255:
      v102 = v165;
      LOBYTE(v30) = v157;
      goto LABEL_186;
    }

LABEL_254:
    v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v129 & 1) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_255;
  }

  v40 = v38;
  v41 = sub_100033A48(v39, v167, v168);
  v5 = v41;
  v43 = v42;
  v44 = v42 >> 62;
  if ((v42 >> 62) <= 1)
  {
    if (!v44)
    {
      sub_1000124C8(v41, v42);
      v45 = BYTE6(v43);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v44 != 2)
  {
    sub_1000124C8(v41, v42);
    if (!v40)
    {
      goto LABEL_34;
    }

LABEL_46:
    sub_10000B02C();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = 0;
    goto LABEL_6;
  }

  v47 = *(v41 + 16);
  v46 = *(v41 + 24);
  sub_1000124C8(v41, v42);
  v45 = v46 - v47;
  if (!__OFSUB__(v46, v47))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_29:
  sub_1000124C8(v5, v43);
  LODWORD(v45) = HIDWORD(v5) - v5;
  if (__OFSUB__(HIDWORD(v5), v5))
  {
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  v45 = v45;
LABEL_31:
  if (v45 < v40)
  {
    goto LABEL_46;
  }

LABEL_34:
  v48 = sub_10004AF78(v39, v40, v167, v168);
  if (v48 < v39)
  {
    __break(1u);
    goto LABEL_236;
  }

  v29 = v48;
  v49 = Data._Representation.subscript.getter();
  v51 = v50;
  static String.Encoding.utf8.getter();
  v158 = String.init(data:encoding:)();
  v53 = v52;
  LOBYTE(v60) = sub_1000124C8(v49, v51);
  v163 = v53;
  if (!v53)
  {
LABEL_5:
    sub_10000B02C();
    swift_allocError();
    *v23 = xmmword_10047CE70;
LABEL_6:
    *(v23 + 16) = 2;
    swift_willThrow();
LABEL_8:
    sub_1000124C8(v167, v168);
    goto LABEL_9;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      if (!v29)
      {
        goto LABEL_45;
      }

      goto LABEL_48;
    }

    v54 = *(v167 + 24);
  }

  else if (v30)
  {
    v54 = v167 >> 32;
  }

  else
  {
    v54 = BYTE6(v168);
  }

  if (v29 == v54)
  {
LABEL_45:

    goto LABEL_46;
  }

LABEL_48:
  v161 = 0;
  v159 = 0;
  v156 = 0;
  v162 = 0;
  v164 = v167 >> 32;
  v61 = BYTE6(v168);
  v160 = v167;
  LODWORD(v157) = 2;
  v62 = v29;
LABEL_49:
  v63 = v62;
  v64 = v162;
  while (1)
  {
    v165 = v64;
    if (v30 > 1)
    {
      if (v30 != 2)
      {

        if (!v29)
        {
          v165 = 0;
          goto LABEL_174;
        }

LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
        goto LABEL_270;
      }

      v65 = *(v167 + 24);
    }

    else
    {
      v65 = v61;
      if (v30)
      {
        v65 = v164;
      }
    }

    if (v63 == v65)
    {
      goto LABEL_173;
    }

    if (v30 == 2)
    {
      if (v63 >= *(v167 + 16))
      {
        if (v63 >= *(v167 + 24))
        {
          goto LABEL_244;
        }

        result = __DataStorage._bytes.getter();
        if (!result)
        {
          goto LABEL_280;
        }

        v66 = result;
        v60 = __DataStorage._offset.getter();
        v67 = v63 - v60;
        if (__OFSUB__(v63, v60))
        {
          goto LABEL_246;
        }

        goto LABEL_68;
      }

      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
      goto LABEL_247;
    }

    if (v30 == 1)
    {
      break;
    }

    if (v63 >= v61)
    {
      goto LABEL_242;
    }

    v178 = v167;
    v179 = v168;
    v180 = WORD2(v168);
    LODWORD(v62) = *(&v178 + v63);
LABEL_71:
    v68 = v63 + 1;
    if (v62 != 192)
    {
      if (v62 > 0x3F)
      {
        goto LABEL_173;
      }

      v162 = v30;
      if (v30)
      {
        v75 = v164;
        v76 = v160;
        if (v30 == 2)
        {
          v76 = *(v167 + 16);
          v75 = *(v167 + 24);
        }
      }

      else
      {
        v75 = v61;
        v76 = v162;
      }

      if (v75 <= v63 || v75 < v76)
      {
        __break(1u);
        goto LABEL_259;
      }

      v155 = v62;
      v77 = Data._Representation.subscript.getter();
      v79 = v78 >> 62;
      if ((v78 >> 62) > 1)
      {
        if (v79 != 2)
        {
          LOBYTE(v60) = sub_1000124C8(v77, v78);
          if (v62)
          {
            goto LABEL_173;
          }

LABEL_130:
          v62 = v68 + v155;
          if (!__OFADD__(v68, v155))
          {
            if (v30)
            {
              v84 = v164;
              v162 = v160;
              if (v30 == 2)
              {
                v84 = *(v167 + 24);
                v162 = *(v167 + 16);
              }
            }

            else
            {
              v84 = v61;
            }

            if (v84 >= v62 && v62 >= v162)
            {
              if (v62 > v63)
              {
                v162 = Data._Representation.subscript.getter();
                v86 = v85;
                static String.Encoding.utf8.getter();
                v5 = String.init(data:encoding:)();
                v88 = v87;
                sub_1000124C8(v162, v86);
                v162 = v88;
                if (v88)
                {
                  if (!v165)
                  {

                    v63 = v62;
LABEL_151:
                    if (v157 == 2)
                    {
                      LODWORD(v157) = 2;
LABEL_155:
                      v156 = v5;
LABEL_156:
                      v62 = v63;
LABEL_157:

                      goto LABEL_49;
                    }

                    if ((v161 & 1) == 0)
                    {
                      v161 = 0;
                      goto LABEL_155;
                    }

                    LOBYTE(v30) = v157;
                    v156 = v5;
                    v165 = v162;
                    goto LABEL_187;
                  }

                  if (v157 != 2)
                  {
                    goto LABEL_229;
                  }

                  if ((v162 & 0x2000000000000000) != 0)
                  {
                    v89 = HIBYTE(v162) & 0xF;
                  }

                  else
                  {
                    v89 = v5 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v89)
                  {
LABEL_230:

                    goto LABEL_231;
                  }

                  v90 = 7;
                  if (((v162 >> 60) & ((v5 & 0x800000000000000) == 0)) != 0)
                  {
                    v90 = 11;
                  }

                  v157 = v90;
                  if (String.subscript.getter() == 95 && v91 == 0xE100000000000000)
                  {
                  }

                  else
                  {
                    LODWORD(v155) = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v155 & 1) == 0)
                    {
                      v98._countAndFlagsBits = v5;
                      v98._object = v162;
                      v99 = _findStringSwitchCase(cases:string:)(&off_100555F28, v98);
                      if (!v99)
                      {

                        if (v161)
                        {
LABEL_184:
                          LOBYTE(v30) = 0;
                          goto LABEL_185;
                        }

                        v161 = 0;
                        v97 = &v184;
LABEL_166:
                        *(v97 - 64) = 0;
                        v162 = v165;
                        goto LABEL_157;
                      }

                      if (v99 != 1)
                      {
                        goto LABEL_230;
                      }

                      LODWORD(v157) = 1;
                      if (v161)
                      {
                        goto LABEL_178;
                      }

LABEL_165:
                      v97 = &v185 + 4;
                      goto LABEL_166;
                    }
                  }

                  if (4 * v89 >= String.index(after:)() >> 14)
                  {
                    String.subscript.getter();
                    v92 = static String._fromSubstring(_:)();
                    v94 = v93;

                    v95._countAndFlagsBits = v92;
                    v95._object = v94;
                    v96 = _findStringSwitchCase(cases:string:)(&off_100555ED8, v95);

                    if (v96)
                    {
                      if (v96 != 1)
                      {
                        goto LABEL_230;
                      }

                      LODWORD(v157) = 1;
                    }

                    else
                    {
                      LODWORD(v157) = 0;
                    }

                    if (v161)
                    {
                      LOBYTE(v30) = v157;
                      goto LABEL_185;
                    }

                    goto LABEL_165;
                  }

                  __break(1u);
                  goto LABEL_268;
                }

LABEL_173:

LABEL_174:
                sub_10000B02C();
                swift_allocError();
                *v100 = 0;
                *(v100 + 8) = 0;
LABEL_233:
                *(v100 + 16) = 2;
                swift_willThrow();

                goto LABEL_8;
              }

LABEL_261:
              __break(1u);
              goto LABEL_262;
            }

LABEL_260:
            __break(1u);
            goto LABEL_261;
          }

LABEL_259:
          __break(1u);
          goto LABEL_260;
        }

        v62 = *(v77 + 16);
        v82 = *(v77 + 24);
        LOBYTE(v60) = sub_1000124C8(v77, v78);
        v81 = v82 - v62;
        if (__OFSUB__(v82, v62))
        {
          goto LABEL_269;
        }
      }

      else if (v79)
      {
        LODWORD(v62) = v77;
        v83 = HIDWORD(v77);
        LOBYTE(v60) = sub_1000124C8(v77, v78);
        LODWORD(v81) = v83 - v62;
        if (__OFSUB__(v83, v62))
        {
LABEL_270:
          __break(1u);
          goto LABEL_271;
        }

        v81 = v81;
      }

      else
      {
        v80 = BYTE6(v78);
        LOBYTE(v60) = sub_1000124C8(v77, v78);
        v81 = v80;
      }

      if (v81 < v155)
      {
        goto LABEL_173;
      }

      goto LABEL_130;
    }

    v69 = v61;
    if (v30)
    {
      v69 = v164;
      if (v30 == 2)
      {
        v69 = *(v167 + 24);
      }
    }

    if (v68 == v69)
    {
      goto LABEL_173;
    }

    if (v30 == 2)
    {
      if (v68 < *(v167 + 16))
      {
        goto LABEL_248;
      }

      if (v68 >= *(v167 + 24))
      {
        goto LABEL_251;
      }

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        goto LABEL_282;
      }

      v70 = result;
      LOBYTE(v62) = v168;
      v73 = __DataStorage._offset.getter();
      v72 = v68 - v73;
      if (__OFSUB__(v68, v73))
      {
        goto LABEL_253;
      }

      goto LABEL_88;
    }

    if (v30 == 1)
    {
      if (v68 < v160 || v68 >= v164)
      {
        goto LABEL_250;
      }

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        goto LABEL_281;
      }

      v70 = result;
      LOBYTE(v62) = v168;
      v71 = __DataStorage._offset.getter();
      v72 = v68 - v71;
      if (__OFSUB__(v68, v71))
      {
        goto LABEL_252;
      }

LABEL_88:
      v74 = *(v70 + v72);
      goto LABEL_91;
    }

    if (v68 >= v61)
    {
      goto LABEL_249;
    }

    v178 = v167;
    v179 = v168;
    v180 = WORD2(v168);
    v74 = *(&v178 + v63 + 1);
LABEL_91:
    LOBYTE(v60) = sub_10004AEF8(v74);
    if (v60 == 14)
    {
      goto LABEL_173;
    }

    v63 += 2;
    if (v60 != 11)
    {
      if (v60 <= 6u)
      {
        if (v60 > 2u)
        {
          if (v60 <= 4u)
          {
            if (v60 == 3)
            {
              if (!v165)
              {
                LOBYTE(v30) = 0;
                v156 = 0x706F61725FLL;
                v101 = 0xE500000000000000;
LABEL_199:
                v162 = v101;
                if (v157 == 2 && (v159 & 1) == 0)
                {
                  v165 = 0;
                  goto LABEL_205;
                }

                goto LABEL_230;
              }
            }

            else if (!v165)
            {
              v156 = 0x706F61725FLL;
              LOBYTE(v30) = 1;
              v101 = 0xE500000000000000;
              goto LABEL_199;
            }
          }

          else
          {
            if (v60 == 5)
            {
              if (v165)
              {
                goto LABEL_231;
              }

              v162 = 0xE500000000000000;
              v5 = 0x706F61725FLL;
              goto LABEL_151;
            }

            if (!v165)
            {
              LOBYTE(v30) = 0;
              v104 = 0x706F72647269615FLL;
              goto LABEL_197;
            }
          }

          goto LABEL_231;
        }

        if (!v60)
        {
          if (!v165)
          {
            LOBYTE(v30) = 0;
            v104 = 0x79616C707269615FLL;
LABEL_197:
            v156 = v104;
            goto LABEL_198;
          }

LABEL_231:

          goto LABEL_232;
        }

        if (v60 != 1)
        {
          if (v165)
          {
            goto LABEL_231;
          }

          v162 = 0xE800000000000000;
          v5 = 0x79616C707269615FLL;
          goto LABEL_151;
        }

        if (v165)
        {
          goto LABEL_231;
        }

        v103 = 0x79616C707269615FLL;
LABEL_194:
        v156 = v103;
        LOBYTE(v30) = 1;
LABEL_198:
        v101 = 0xE800000000000000;
        goto LABEL_199;
      }

      if (v60 <= 9u)
      {
        if (v60 == 7)
        {
          if (v165)
          {
            goto LABEL_231;
          }

          v103 = 0x706F72647269615FLL;
          goto LABEL_194;
        }

        if (v60 == 8)
        {
          if (v165)
          {
            goto LABEL_231;
          }

          v162 = 0xE800000000000000;
          v5 = 0x706F72647269615FLL;
          goto LABEL_151;
        }

        if (!v165 || v157 != 2)
        {
          goto LABEL_231;
        }

        goto LABEL_184;
      }

      if (v60 - 12 < 2 || !v165 || v157 != 2)
      {
        goto LABEL_231;
      }

LABEL_178:
      LOBYTE(v30) = 1;
LABEL_185:
      v102 = v165;
LABEL_186:
      v162 = v102;
LABEL_187:

LABEL_205:
      if (v24 != 32)
      {
        if (v24 != 15)
        {
          if (v24 == 11)
          {

            sub_1000124C8(v167, v168);
            v105 = v173;
            v106 = v163;
            *v173 = v158;
            v105[1] = v106;
            v107 = v162;
            v105[2] = v156;
            v105[3] = v107;
            *(v105 + 32) = v30 & 1;
            *(v105 + 33) = 1;
LABEL_227:
            swift_storeEnumTagMultiPayload();
            sub_100002A00(v181);
            sub_10004AF10(v173, v175, type metadata accessor for AWDLActionFrame.ServiceResponse);
            return sub_100002A00(v176);
          }

          goto LABEL_230;
        }

        v108 = v182;
        v109 = v183;
        sub_100031694(v181, v182);
        v110 = v166;
        v111 = UnkeyedDecodingContainer.decodeData(with:)(v28, v108, v109);
        v166 = v110;
        if (v110)
        {
          goto LABEL_212;
        }

        v115 = v111;
        v116 = v112;
        v117 = v112 >> 62;
        if ((v112 >> 62) > 1)
        {
          if (v117 != 2)
          {
LABEL_226:
            v119 = Data.subdata(in:)();
            v121 = v120;

            sub_1000124C8(v167, v168);
            sub_1000124C8(v115, v116);
            v122 = v173;
            v123 = v163;
            *v173 = v158;
            v122[1] = v123;
            v124 = v162;
            v122[2] = v156;
            v122[3] = v124;
            *(v122 + 32) = v30 & 1;
            *(v122 + 33) = 1;
            *(v122 + 34) = v178;
            *(v122 + 19) = WORD2(v178);
            v122[5] = v119;
            v122[6] = v121;
            goto LABEL_227;
          }

          v111 = *(v111 + 16);
          v118 = *(v115 + 24);
        }

        else
        {
          if (!v117)
          {
            goto LABEL_226;
          }

          v111 = v111;
          v118 = v115 >> 32;
        }

        if (v118 < v111)
        {
          __break(1u);
        }

        goto LABEL_226;
      }

      sub_100031694(v181, v182);
      v113 = v166;
      LODWORD(v164) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v29 = v113;
      if (v113)
      {
LABEL_212:

        sub_1000124C8(v167, v168);
LABEL_213:

        sub_100002A00(v181);
        return sub_100002A00(v176);
      }

      sub_100031694(v181, v182);
      v161 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      sub_100031694(v181, v182);
      dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v114 = v171;
      NWEndpoint.Port.init(rawValue:)();
      if ((*(v174 + 48))(v114, 1, v170) == 1)
      {

        sub_100016290(v171, &qword_10058BA40, &qword_100480D90);
LABEL_232:
        sub_10000B02C();
        swift_allocError();
        *v100 = xmmword_10047CE70;
        goto LABEL_233;
      }

      v125 = v171;
      v171 = *(v174 + 32);
      v171(v169, v125, v170);
      sub_100031694(v181, v182);
      v126 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v127 = v182;
      v128 = v183;
      sub_100031694(v181, v182);
      v130 = UnkeyedDecodingContainer.decodeData(with:)(v126, v127, v128);
      v132 = v131;
      static String.Encoding.utf8.getter();
      v160 = String.init(data:encoding:)();
      v134 = v133;
      sub_1000124C8(v130, v132);
      v177 = v134;
      if (!v134)
      {
LABEL_278:

        sub_10000B02C();
        swift_allocError();
        *v154 = xmmword_10047CE70;
        *(v154 + 16) = 2;
        swift_willThrow();

        sub_1000124C8(v167, v168);
        (*(v174 + 8))(v169, v170);
        goto LABEL_9;
      }

      sub_100031694(v181, v182);
      LOBYTE(v60) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
LABEL_262:
      v135 = v60;
      sub_100031694(v181, v182);
      v136 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      LOBYTE(v62) = v136;
      v166 = v29;
      if (v135 == 192)
      {
        if (!v166)
        {
          if (v136 == 17 || v136 == 12)
          {
            sub_1000124C8(v167, v168);

LABEL_276:
            v148 = type metadata accessor for DNSRecords.SRV(0);
            v149 = v173;
            v171(v173 + v148[5], v169, v170);
            v150 = v163;
            *v149 = v158;
            v149[1] = v150;
            v151 = v162;
            v149[2] = v156;
            v149[3] = v151;
            *(v149 + 32) = v30 & 1;
            *(v149 + 33) = 1;
            v152 = (v149 + v148[6]);
            v153 = v177;
            *v152 = v160;
            v152[1] = v153;
            *(v149 + v148[7]) = v164;
            *(v149 + v148[8]) = v161;
            goto LABEL_227;
          }

LABEL_277:

          goto LABEL_278;
        }

        goto LABEL_273;
      }

LABEL_271:
      if (!v166)
      {
        v137 = v182;
        v138 = v183;
        sub_100031694(v181, v182);
        v139 = v166;
        v140 = UnkeyedDecodingContainer.decodeData(with:)(v62, v137, v138);
        v166 = v139;
        if (!v139)
        {
          v142 = v140;
          v143 = v141;
          v144 = sub_10016FD40(0x6C61636F6CLL, 0xE500000000000000);
          v146 = v145;
          v147 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v142, v143, v144, v145);
          sub_1000124C8(v144, v146);
          sub_1000124C8(v142, v143);
          if (v147)
          {

            sub_1000124C8(v167, v168);
            goto LABEL_276;
          }

          goto LABEL_277;
        }
      }

LABEL_273:
      (*(v174 + 8))(v169, v170);

      sub_1000124C8(v167, v168);

      goto LABEL_213;
    }

    v64 = 0;
    v161 = 1;
    v159 = 1;
    if (v165)
    {
      if (v157 != 2)
      {
        goto LABEL_255;
      }

      LODWORD(v157) = 2;
      v161 = 1;
      v162 = v165;
      v159 = 1;
      goto LABEL_156;
    }
  }

  if (v63 < v160 || v63 >= v164)
  {
    goto LABEL_243;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v66 = result;
    v60 = __DataStorage._offset.getter();
    v67 = v63 - v60;
    if (__OFSUB__(v63, v60))
    {
      goto LABEL_245;
    }

LABEL_68:
    LODWORD(v62) = *(v66 + v67);
    goto LABEL_71;
  }

  __break(1u);
LABEL_280:
  __break(1u);
LABEL_281:
  __break(1u);
LABEL_282:
  __break(1u);
  return result;
}

uint64_t _s7CoreP2P10DNSRecordsO10RecordTypeO8rawValueAESgs6UInt16V_tcfC_0(unsigned __int16 a1)
{
  v1 = a1 - 1;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 11:
      result = 11;
      break;
    case 12:
      result = 12;
      break;
    case 13:
      result = 13;
      break;
    case 14:
      result = 14;
      break;
    case 15:
      result = 15;
      break;
    case 16:
      result = 16;
      break;
    case 17:
      result = 17;
      break;
    case 18:
      result = 18;
      break;
    case 19:
      result = 19;
      break;
    case 20:
      result = 20;
      break;
    case 21:
      result = 21;
      break;
    case 22:
      result = 22;
      break;
    case 23:
      result = 23;
      break;
    case 24:
      result = 24;
      break;
    case 25:
      result = 25;
      break;
    case 26:
      result = 26;
      break;
    case 27:
      result = 27;
      break;
    case 28:
      result = 28;
      break;
    case 29:
      result = 29;
      break;
    case 30:
      result = 30;
      break;
    case 31:
      result = 31;
      break;
    case 32:
      result = 32;
      break;
    case 33:
      result = 33;
      break;
    case 34:
      result = 34;
      break;
    case 35:
      result = 35;
      break;
    case 36:
      result = 36;
      break;
    case 37:
      result = 37;
      break;
    case 38:
      result = 38;
      break;
    case 39:
      result = 39;
      break;
    case 40:
      result = 40;
      break;
    case 41:
      result = 41;
      break;
    case 42:
      result = 42;
      break;
    case 43:
      result = 43;
      break;
    case 44:
      result = 44;
      break;
    case 45:
      result = 45;
      break;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 54:
      result = 51;
      break;
    case 63:
      result = 52;
      break;
    case 64:
      result = 53;
      break;
    case 98:
      result = 54;
      break;
    case 99:
      result = 55;
      break;
    case 100:
      result = 56;
      break;
    case 101:
      result = 57;
      break;
    case 102:
      result = 58;
      break;
    case 248:
      result = 59;
      break;
    case 249:
      result = 60;
      break;
    case 250:
      result = 61;
      break;
    case 251:
      result = 62;
      break;
    case 252:
      result = 63;
      break;
    case 253:
      result = 64;
      break;
    default:
      result = 65;
      break;
  }

  return result;
}

uint64_t sub_10004AEF8(char a1)
{
  if ((a1 - 1) >= 0xEu)
  {
    return 14;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t sub_10004AF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004AF78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

void *sub_10004AFDC(void *a1)
{
  v3 = sub_10005DC58(&qword_10058ECE0, &qword_10048D648);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v9 - v5;
  v7 = sub_100029B34(a1, a1[3]);
  sub_10004B190();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_10005DC58(&qword_10058E398, &qword_100489498);
    sub_10004B1E4(&qword_10058ECE8, sub_10003804C, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100002A00(a1);
  }

  return v7;
}

unint64_t sub_10004B190()
{
  result = qword_10058E390;
  if (!qword_10058E390)
  {
    result = swift_getWitnessTable(byte_10048D400, &type metadata for AWDLActionFrame.SyncTreePath.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E390);
  }

  return result;
}

uint64_t sub_10004B1E4(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10005DD04(&qword_10058E398, &qword_100489498);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004B25C@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = BinaryDecoder.decode<A>(_:)(a1, a2);
  if (!v3)
  {
    v6 = result;
    result = type metadata accessor for Array();
    a3[3] = result;
    *a3 = v6;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for WiFiAddress(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

int64_t sub_10004B2F0@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 68)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 68)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x44uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v24 = vdupq_n_s64(result);
    v25 = vshlq_u64(v24, xmmword_1004841F0);
    v26 = vmovn_s64(vshlq_u64(v24, xmmword_1004841E0));
    v26.i8[1] = v26.i8[4];
    v27 = vzip1_s16(result, v26);
    *v24.i8 = vmovn_s64(vshlq_u64(v24, xmmword_100484200));
    v28 = vmovn_s64(v25);
    v28.i8[1] = v28.i8[4];
    v28.i8[2] = v24.i8[0];
    v28.i8[3] = v24.i8[4];
    v21 = vzip1_s32(v27, v28);
    v29 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1004817A0), vshlq_u64(v29, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v30 = *(v15 + 14);
      v31 = *(v15 + 30);
      *v32 = *(v15 + 46);
      *&v32[14] = *(v15 + 60);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v30;
      *(a3 + 30) = v31;
      *(a3 + 46) = *v32;
      *(a3 + 60) = *&v32[14];
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_10004B588@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 68)
      {
        goto LABEL_8;
      }

LABEL_11:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0;
      *(a3 + 68) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 68)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_10004B2F0(result, a2, a3);
      *(a3 + 68) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 68)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004B66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100046A70(a1 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046B248();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for AWDLPeer(0);
    v18 = *(v11 - 8);
    sub_100046A08(v10 + *(v18 + 72) * v7, a2, type metadata accessor for AWDLPeer);
    sub_10004B7F4(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for AWDLPeer(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

unint64_t sub_10004B80C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v11 = (*(a2 + 48) + 6 * v7);
      v12 = *(v11 + 1);
      v13 = *v11;
      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(v28, v13 | (v12 << 16));
      result = Hasher._finalize()();
      v14 = result & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v14 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = v15 + 6 * v4;
      v17 = (v15 + 6 * v7);
      if (v4 != v7 || v16 >= v17 + 6)
      {
        v18 = *v17;
        *(v16 + 4) = *(v17 + 2);
        *v16 = v18;
      }

      v19 = *(a2 + 56);
      v20 = *(*(a3(0) - 8) + 72);
      v21 = v20 * v4;
      result = v19 + v20 * v4;
      v22 = v20 * v7;
      v23 = v19 + v20 * v7 + v20;
      if (v21 < v22 || result >= v23)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v21 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10004B9FC(void *a1)
{
  v2 = v1;
  v4 = *v1;
  type metadata accessor for AWDLPeer(0);
  __chkstk_darwin();
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v7;
  v44 = *(a1 + *(v7 + 20)) | (*(a1 + *(v7 + 20) + 2) << 16);
  v8 = WiFiAddress.apiAddress.getter(v44);
  v52 = 0;
  v53 = 0;
  swift_beginAccess();
  v48 = v8;
  v49 = v2;
  v50 = &v53;
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v9 = *(v4 + 440);
  v41 = *(v4 + 432);
  v40 = v9;
  type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation(0, v41, v9, v10);
  sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

  v11 = Dictionary.filter(_:)();
  sub_10004C0C0(v11);
  swift_beginAccess();
  v43 = v8;
  v45 = v8;
  v46 = v2;
  v47 = &v52;

  v12 = Dictionary.filter(_:)();
  v13 = sub_10004CE1C(v12);
  v17 = v53;
  if (v53 > 0 || v52 >= 1)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v51[0] = v39;
      *v20 = 136315650;
      v21 = WiFiAddress.description.getter(v44);
      v23 = a1;
      v24 = sub_100002320(v21, v22, v51);

      *(v20 + 4) = v24;
      a1 = v23;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v17;
      *(v20 + 22) = 2048;
      swift_beginAccess();
      *(v20 + 24) = v52;
      _os_log_impl(&_mh_execute_header, v18, v19, "Aged out %s with total traffic registrations: %ld, total responder traffic registrations: %ld", v20, 0x20u);
      sub_100002A00(v39);
    }
  }

  sub_10004D020(v13, v14, v15, v16);
  sub_10004CE84(a1);

  v25 = v44;
  AWDLPeer.init(macAddress:)(v44, v6);
  v26 = v42;
  sub_10004D7F4(v6, *(a1 + *(v42 + 80)));

  sub_1000473F0(v6, type metadata accessor for AWDLPeer);
  if (*(a1 + *(v26 + 108)) == 1)
  {
    v27 = a1;
    v28 = WiFiAddress.ipv6LinkLocalAddress.getter(v25);
    v30 = v29;
    v32 = v31;
    v34 = v33;
    swift_beginAccess();
    v36 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable(0, v41, *(v40 + 8), v35);
    WiFiInterface.NeighborDiscoveryTable.postPeerAbsence(macAddress:ipv6Address:)(v25, v28, v30, v32, v34, v36);
    swift_endAccess();

    a1 = v27;
  }

  v37 = *(*v2 + 776);
  swift_beginAccess();
  v38 = *(v2 + v37);
  __chkstk_darwin();
  *(&v39 - 2) = a1;

  sub_100448174(sub_100474C88, (&v39 - 4), v38);
}

uint64_t sub_10004C0C0(uint64_t a1)
{
  v3 = *(*v1 + 568);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_10004C128();
}

uint64_t sub_10004C128()
{
  v1 = *v0;
  v31 = *(v1 + 440);
  v2 = v31;
  v3 = *(v1 + 432);
  swift_getAssociatedTypeWitness();
  v30 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27[1] = AssociatedConformanceWitness;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  v33 = v6;
  __chkstk_darwin();
  v29 = v27 - v7;
  v8 = *(AssociatedConformanceWitness + 144);
  v28 = swift_checkMetadataState();
  v8(v28, AssociatedConformanceWitness);
  swift_beginAccess();
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation(0, v3, v2, v9);
  sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  NANBitmap.Channel.operatingClass.getter();
  v36[0] = v10;
  v11 = type metadata accessor for Dictionary.Keys();
  type metadata accessor for AWDLTrafficRegistrationService(0);
  v13 = v12;

  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v11);
  v27[0] = sub_10002B84C(sub_1004770B0, 0, v11, v13, &type metadata for Never, WitnessTable, &protocol witness table for Never, v15);

  swift_beginAccess();
  NANBitmap.Channel.operatingClass.getter();
  v35[0] = v16;

  v18 = sub_10002B84C(sub_1004770B0, 0, v11, v13, &type metadata for Never, WitnessTable, &protocol witness table for Never, v17);

  v35[0] = v27[0];
  sub_10004C6AC(v18);
  v19 = sub_10004C8CC(v35[0]);

  v20 = v32;
  v21 = swift_getAssociatedConformanceWitness();
  v22 = v29;
  (*(v21 + 24))(v19, v20, v21);

  (*(v33 + 8))(v22, v20);
  swift_beginAccess();
  type metadata accessor for AWDLInterface.TrafficRegistrationServiceAvailabilityMonitor(0, v30, v31, v23);
  sub_10004C988(&unk_100594A20, type metadata accessor for AWDLTrafficRegistrationService, aQ_0);
  NANBitmap.Channel.operatingClass.getter();
  v34 = v24;
  v25 = type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v25);
  v34 = Array.init<A>(_:)();
  sub_10005DC58(&qword_10059B0A0, &unk_1004B4CF0);
  sub_10000CADC(&qword_10059B0A8, &qword_10059B0A0, &unk_1004B4CF0, &protocol conformance descriptor for [A]);
  Sequence.forEach(_:)();
}

void *sub_10004C6AC(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10004C7A4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for AWDLTrafficRegistrationService(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10004C7A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&unk_100598760, &qword_1004B0928);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AWDLTrafficRegistrationService(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10004C8CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for AWDLTrafficRegistrationService(0);
  sub_10004C988(&unk_100594A20, type metadata accessor for AWDLTrafficRegistrationService, aQ_0);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100159C80(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10004C988(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004C9F4(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v18 = *(v9 - 8);
  v19 = v9;
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v4[10];
  *(v14 + 24) = v4[11];
  *(v14 + 32) = *(v5 + 6);
  *(v14 + 48) = v4[14];
  *(v14 + 56) = v13;
  *(v14 + 64) = a1;
  aBlock[4] = sub_10004D298;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100574240;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v8, v6);
  (*(v18 + 8))(v11, v19);
}

uint64_t sub_10004CD88()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004CDC0()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004CE1C(uint64_t a1)
{
  v3 = *(*v1 + 592);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_10004C128();
}

uint64_t sub_10004CE84(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator(0, *(v2 + 80), *(v2 + 88), v3);
  sub_10002B68C();

  Dictionary.filter(_:)();
  v4 = type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v4);
  Array.init<A>(_:)();
  sub_10005DC58(&qword_100597CD0, &unk_1004B1E98);
  sub_10000CB24(&qword_100597CD8, &qword_100597CD0, &unk_1004B1E98);
  Sequence.forEach(_:)();
}

uint64_t *sub_10004D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 464);
  if (*(v4 + v5))
  {
    v6 = *(v4 + v5);
  }

  else
  {
    v7 = v4;
    type metadata accessor for AWDLDiscoveryEngine(0, *(*v4 + 432), *(*v4 + 440), a4);

    v6 = sub_10037F7D0(v8);

    *(v7 + v5) = v6;
  }

  return v6;
}

BOOL sub_10004D0F8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*a2 + qword_10059BA58);
  v5 = *(v4 + 1);
  v6 = *v4;
  v7 = type metadata accessor for AWDLPeer(0);
  return static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v6 | (v5 << 16), *(a3 + *(v7 + 20)) | (*(a3 + *(v7 + 20) + 2) << 16));
}

BOOL static NANClusterChangeEvent.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  LOBYTE(v5) = BYTE4(a1);
  HIBYTE(v5) = BYTE5(a1);
  LOBYTE(v4) = BYTE4(a2);
  HIBYTE(v4) = BYTE5(a2);
  return a1 == a2 && v5 == v4;
}

uint64_t sub_10004D218(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + qword_10059B860) = a2;
  }

  return result;
}

uint64_t sub_10004D2AC(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AWDLPeer.init(macAddress:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = type metadata accessor for DispatchTime();
  v4 = *(v37 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v7 = type metadata accessor for AWDLPeer(0);
  v8 = v7[6];
  if (qword_10058A890 != -1)
  {
    swift_once();
  }

  v35 = HIDWORD(a1);
  v36 = a1 >> 40;
  v33 = a1 >> 16;
  v34 = a1 >> 24;
  (*(*algn_10059B518 + 8))();
  *(a2 + v7[7]) = 0;
  v9 = a2 + v7[8];
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 256;
  v10 = a2 + v7[9];
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 1;
  v11 = (a2 + v7[10]);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0xF000000000000000;
  v12 = a2 + v7[11];
  *v12 = 0;
  *(v12 + 2) = 1;
  v13 = (a2 + v7[12]);
  v13[1] = 0u;
  v13[2] = 0u;
  *v13 = 0u;
  v14 = (a2 + v7[13]);
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  v15 = v7[14];
  v16 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
  v17 = a2 + v7[15];
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 40) = 1;
  v18 = a2 + v7[16];
  *v18 = 0;
  *(v18 + 2) = 1;
  v19 = a2 + v7[17];
  *v19 = xmmword_10047CE60;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v19 + 16) = 0;
  v20 = (a2 + v7[18]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a2 + v7[19]);
  v22 = sub_10004D6CC(&off_100556610);
  *v21 = &_swiftEmptySetSingleton;
  v21[1] = v22;
  *(a2 + v7[20]) = &_swiftEmptySetSingleton;
  v23 = a2 + v7[21];
  *v23 = 0;
  *(v23 + 4) = 1;
  v24 = a2 + v7[22];
  *v24 = 0;
  *(v24 + 4) = 1;
  v25 = a2 + v7[23];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = a2 + v7[24];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = a2 + v7[25];
  *v27 = 0;
  *(v27 + 8) = 1;
  *(a2 + v7[26]) = 0;
  *(a2 + v7[27]) = 0;
  *(a2 + v7[28]) = 0;
  *(a2 + v7[29]) = 0;
  v28 = a2 + v7[5];
  *v28 = a1;
  v29 = v34;
  *(v28 + 2) = v33;
  *(v28 + 3) = v29;
  v30 = v36;
  *(v28 + 4) = v35;
  *(v28 + 5) = v30;
  (*(*algn_10059B518 + 8))();
  return (*(v4 + 40))(a2 + v8, v6, v37);
}

uint64_t sub_10004D67C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_10004D6CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&unk_10059B1A0, &qword_10048D5F0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    while (1)
    {
      v9 = *(a1 + 32 + v4);
      result = static Hasher._hash(seed:bytes:count:)();
      v11 = ~(-1 << *(v3 + 32));
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (result & v11);
      v16 = *(v3 + 48);
      if ((v15 & v14) != 0)
      {
        while (*(v16 + v12) != v9)
        {
          v12 = (v12 + 1) & v11;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v13) = v15 | v14;
        *(v16 + v12) = v9;
        v6 = *(v3 + 16);
        v7 = __OFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v8;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10004D7F4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_10005DC58(&qword_10058FA18, &qword_100493068);
  __chkstk_darwin();
  v118 = &v95 - v6;
  v122 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  v117 = *(v122 - 8);
  __chkstk_darwin();
  v121 = (&v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v9 = &v95 - v8;
  __chkstk_darwin();
  v111 = &v95 - v10;
  v114 = *(v5 + 88);
  v120 = v2;
  v11 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  v113 = v11;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v95 - v17;
  v105 = type metadata accessor for AWDLPeer(0);
  v19 = v105[10];
  v110 = a1;
  v20 = (a1 + v19);
  if (*(v20 + 3) >> 60 != 15)
  {
    v21 = *v20;
    if ((*AWDLActionFrame.ServiceParameter.Flags.supportsWiFiAwareMigration.unsafeMutableAddressor() & ~v21) == 0)
    {
      swift_unownedRetainStrong();
      WiFiInterface.preferences.getter();

      v22 = Preferences.enableUserspaceP2POptions.getter(v15);
      (*(v16 + 8))(v18, v15);
      if ((*PreferenceDefaults.EnableUserspaceP2POptions.awdlToWiFiAwareMigration.unsafeMutableAddressor() & ~v22) == 0)
      {
        swift_unownedRetainStrong();
        v23 = WiFiInterface.capabilities.getter();

        v123 = *WiFiDriverCapabilities.supportsNAN.unsafeMutableAddressor();
        v129 = v23;
        sub_1000C2A14();

        v24 = dispatch thunk of SetAlgebra.isSuperset(of:)();

        if (v24)
        {
          return result;
        }
      }
    }
  }

  v134 = a2;
  v26 = v110;
  v27 = *(v110 + v105[20]);
  v28 = v27 + 56;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v27 + 56);
  v106 = qword_100597980;
  v99 = qword_10059BA40;
  v32 = (v29 + 63) >> 6;
  v107 = v117 + 48;

  v116 = v27;

  v33 = 0;
  v34 = v118;
  v35 = v121;
  v109 = v28;
  v108 = v32;
  while (v31)
  {
    v36 = v33;
LABEL_16:
    v37 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v38 = v117;
    v39 = v111;
    sub_1000275E0(*(v116 + 48) + *(v117 + 72) * (v37 | (v36 << 6)), v111, type metadata accessor for AWDLPeer.AdvertisedService);
    sub_10037D4B0(v39, v9);
    sub_1001D4E10(v9, v34);
    if ((*(v38 + 48))(v34, 1, v122) == 1)
    {
      sub_100016290(v34, &qword_10058FA18, &qword_100493068);
      v41 = *(v9 + 3);
      v40 = *(v9 + 4);
      v42 = v9[40];
      v43 = v9[41];
      swift_beginAccess();
      v129 = v41;
      v130 = v40;
      v131 = v42;
      v132 = v43;
      type metadata accessor for AWDLDiscoveryEngine.Browse(0, v113, v114, v44);
      sub_10006153C();

      Dictionary.subscript.getter();

      if (v133)
      {
        swift_endAccess();
        sub_100377EE0(v9, *(v26 + v105[5]) | (*(v26 + v105[5] + 2) << 16));
      }

      else
      {
        swift_endAccess();
      }

      result = sub_100380008(v9, type metadata accessor for AWDLPeer.AdvertisedService);
      v33 = v36;
      v34 = v118;
      v35 = v121;
      goto LABEL_10;
    }

    sub_10037D4B0(v34, v35);
    v46 = v35[6];
    v45 = v35[7];
    v47 = v35[8];
    v48 = v35[9];
    v49 = v35[10];
    v50 = v35[11];
    v51 = v35[12];
    v53 = *(v9 + 6);
    v52 = *(v9 + 7);
    v112 = *(v9 + 8);
    v103 = *(v9 + 9);
    v54 = *(v9 + 11);
    v119 = *(v9 + 10);
    v115 = v54;
    v104 = *(v9 + 12);
    if (v45)
    {
      if (!v52)
      {
        goto LABEL_28;
      }

      v123 = v46;
      v124 = v45;
      v129 = v53;
      v130 = v52;
      v102 = v46;
      v55 = v46;
      v56 = v52;
      v96 = v45;
      v97 = v47;
      v98 = v48;
      v101 = v51;
      sub_100083900(v55, v45, v47, v48, v49, v50, v51);
      v100 = v53;
      v95 = v56;
      v57 = v112;
      v58 = v103;
      v59 = v104;
      sub_100083900(v53, v56, v112, v103, v119, v115, v104);
      sub_10005E2E4();
      if (StringProtocol.caseInsensitiveCompare<A>(_:)() || !static DNSRecords.Identifier.== infix(_:_:)(v97, v98, v49 & 0xFF01, v57, v58, v119 & 0xFF01))
      {
        sub_1000835CC(v100, v95, v57, v58, v119, v115, v59);
        v72 = v102;
        v73 = v96;
        v74 = v97;
        v75 = v98;
        v76 = v49;
        v77 = v50;
        v78 = v101;
        goto LABEL_30;
      }

      v60 = v101;
      v61 = v115;
      v62 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v50, v101, v115, v59);
      sub_1000835CC(v100, v95, v112, v58, v119, v61, v59);
      sub_1000835CC(v102, v96, v97, v98, v49, v50, v60);
      v26 = v110;
      if (!v62)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v52)
      {
LABEL_28:
        v63 = v46;
        v102 = v46;
        v64 = v53;
        v100 = v53;
        v65 = v45;
        v66 = v52;
        v101 = v51;
        sub_100083900(v63, v45, v47, v48, v49, v50, v51);
        v67 = v64;
        v68 = v66;
        v69 = v66;
        v98 = v9;
        v70 = v103;
        v71 = v104;
        sub_100083900(v67, v69, v112, v103, v119, v115, v104);
        sub_1000835CC(v102, v65, v47, v48, v49, v50, v101);
        v72 = v100;
        v73 = v68;
        v74 = v112;
        v75 = v70;
        v9 = v98;
        v76 = v119;
        v77 = v115;
        v78 = v71;
LABEL_30:
        sub_1000835CC(v72, v73, v74, v75, v76, v77, v78);
        v26 = v110;
LABEL_31:
        v80 = *(v9 + 3);
        v79 = *(v9 + 4);
        v81 = v9[40];
        v82 = v9[41];
        swift_beginAccess();
        v129 = v80;
        v130 = v79;
        v131 = v81;
        v132 = v82;
        type metadata accessor for AWDLDiscoveryEngine.Browse(0, v113, v114, v83);
        sub_10006153C();

        Dictionary.subscript.getter();

        if (v133)
        {
          swift_endAccess();
          sub_1003779EC(v9, *(v26 + v105[5]) | (*(v26 + v105[5] + 2) << 16));
        }

        else
        {
          swift_endAccess();
        }

        goto LABEL_35;
      }

      v84 = v53;
      v85 = v49;
      v86 = v49;
      v87 = v51;
      sub_100083900(v46, 0, v47, v48, v86, v50, v51);
      sub_100083900(v84, 0, v112, v103, v119, v115, v104);
      sub_1000835CC(v46, 0, v47, v48, v85, v50, v87);
      v26 = v110;
    }

LABEL_35:
    v35 = v121;
    v88 = *(v122 + 28);
    if (static DNSRecords.SRV.__derived_struct_equals(_:_:)(v121 + v88, &v9[v88]))
    {
      sub_100380008(v35, type metadata accessor for AWDLPeer.AdvertisedService);
      result = sub_100380008(v9, type metadata accessor for AWDLPeer.AdvertisedService);
      v33 = v36;
    }

    else
    {
      v89 = *(v9 + 2);
      v119 = *(v9 + 1);
      v91 = *(v9 + 3);
      v90 = *(v9 + 4);
      v92 = v9[40];
      LODWORD(v115) = v9[41];
      swift_beginAccess();
      v123 = v119;
      v124 = v89;
      v125 = v91;
      v126 = v90;
      v127 = v92;
      v128 = v115;
      type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator(0, v113, v114, v93);
      sub_10002B68C();

      Dictionary.subscript.getter();

      if (v133)
      {
        swift_endAccess();
        sub_100377BC4(&v9[v88]);
      }

      else
      {
        swift_endAccess();
      }

      v35 = v121;
      sub_100380008(v121, type metadata accessor for AWDLPeer.AdvertisedService);
      result = sub_100380008(v9, type metadata accessor for AWDLPeer.AdvertisedService);
      v33 = v36;
      v26 = v110;
    }

    v34 = v118;
LABEL_10:
    v28 = v109;
    v32 = v108;
  }

  while (1)
  {
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v36 >= v32)
    {

      v94 = v134;
      __chkstk_darwin();
      *(&v95 - 2) = v120;
      *(&v95 - 1) = v26;
      sub_10004E460(sub_10037F644, (&v95 - 4), v94);
    }

    v31 = *(v28 + 8 * v36);
    ++v33;
    if (v31)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004E460(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v5 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_100027648(*(a3 + 48) + *(v5 + 72) * (v15 | (v14 << 6)), v7, type metadata accessor for AWDLPeer.AdvertisedService);
    v17(v7);
    result = sub_1000473F0(v7, type metadata accessor for AWDLPeer.AdvertisedService);
    if (v3)
    {
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(a3 + 56 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t WiFiAddress.ipv6LinkLocalAddress.getter(unint64_t a1)
{
  v1 = a1 >> 8;
  v2 = a1 >> 16;
  v3 = a1 >> 24;
  v4 = HIDWORD(a1);
  v5 = a1 >> 40;
  v6 = a1;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v53 = __DataStorage.init(length:)() | 0x4000000000000000;
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004817D0;
  *(v7 + 32) = v6;
  *(v7 + 33) = v1;
  *(v7 + 34) = v2;
  *(v7 + 35) = v3;
  *(v7 + 36) = v4;
  *(v7 + 37) = v5;
  v8 = sub_10002D874(v7);
  v10 = v9;

  Data._Representation.subscript.getter();
  sub_1000124C8(v8, v10);
  Data._Representation.subscript.setter();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004817D0;
  *(v11 + 32) = v6;
  *(v11 + 33) = v1;
  *(v11 + 34) = v2;
  *(v11 + 35) = v3;
  *(v11 + 36) = v4;
  *(v11 + 37) = v5;
  v12 = sub_10002D874(v11);
  v14 = v13;

  Data._Representation.subscript.getter();
  sub_1000124C8(v12, v14);
  Data._Representation.subscript.setter();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1004817D0;
  *(v15 + 32) = v6;
  *(v15 + 33) = v1;
  *(v15 + 34) = v2;
  *(v15 + 35) = v3;
  *(v15 + 36) = v4;
  *(v15 + 37) = v5;
  v16 = sub_10002D874(v15);
  v18 = v17;

  Data._Representation.subscript.getter();
  sub_1000124C8(v16, v18);
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004817D0;
  *(v19 + 32) = v6;
  *(v19 + 33) = v1;
  *(v19 + 34) = v2;
  *(v19 + 35) = v3;
  *(v19 + 36) = v4;
  *(v19 + 37) = v5;
  v20 = sub_10002D874(v19);
  v22 = v21;

  Data._Representation.subscript.getter();
  sub_1000124C8(v20, v22);
  Data._Representation.subscript.setter();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1004817D0;
  *(v23 + 32) = v6;
  *(v23 + 33) = v1;
  *(v23 + 34) = v2;
  *(v23 + 35) = v3;
  *(v23 + 36) = v4;
  *(v23 + 37) = v5;
  v24 = sub_10002D874(v23);
  v26 = v25;

  Data._Representation.subscript.getter();
  sub_1000124C8(v24, v26);
  Data._Representation.subscript.setter();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1004817D0;
  *(v27 + 32) = v6;
  *(v27 + 33) = v1;
  *(v27 + 34) = v2;
  *(v27 + 35) = v3;
  *(v27 + 36) = v4;
  *(v27 + 37) = v5;
  v28 = sub_10002D874(v27);
  v30 = v29;

  Data._Representation.subscript.getter();
  sub_1000124C8(v28, v30);
  Data._Representation.subscript.setter();
  v31 = v53 >> 62;
  if ((v53 >> 62) <= 1)
  {
    if (!v31)
    {
      v32 = BYTE6(v53);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v31 != 2)
  {
    __break(1u);
    goto LABEL_26;
  }

  v32 = MEMORY[0x1000000018] - MEMORY[0x1000000010];
  if (__OFSUB__(MEMORY[0x1000000018], MEMORY[0x1000000010]))
  {
    __break(1u);
LABEL_8:
    v32 = 16;
  }

LABEL_9:
  if (v32 < 16)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_23;
  }

  if (v31 != 2)
  {
    if (v31 != 1)
    {
      v47 = vdupq_n_s64(0x1000000000uLL);
      v52 = vmovn_s32(vuzp1q_s32(vshlq_u64(v47, xmmword_1004817A0), vshlq_u64(v47, xmmword_100481790)));
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v43 = 0;
      goto LABEL_21;
    }

    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v34 = v33;
      v35 = __DataStorage._offset.getter();
      if (!__OFSUB__(0, v35))
      {
        v36 = v34 - v35;
        result = __DataStorage._length.getter();
        if (!v36)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }

LABEL_24:
      __break(1u);
    }

LABEL_27:
    result = __DataStorage._length.getter();
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v39 = MEMORY[0x1000000010];
  v40 = __DataStorage._bytes.getter();
  if (!v40)
  {
LABEL_26:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_27;
  }

  v41 = v40;
  v42 = __DataStorage._offset.getter();
  if (__OFSUB__(v39, v42))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v36 = v39 - v42 + v41;
  result = __DataStorage._length.getter();
  if (v36)
  {
LABEL_19:
    v43 = *v36;
    v38.i32[0] = *(v36 + 1);
    v52 = vmovl_u8(v38).u64[0];
    v44 = *(v36 + 5);
    v45 = *(v36 + 6);
    v46 = *(v36 + 7);
LABEL_21:
    sub_1000124C8(0x1000000000, v53);
    v48 = vmovl_u16((*&v52 & 0xFF00FF00FF00FFLL));
    v49.i64[0] = v48.u32[0];
    v49.i64[1] = v48.u32[1];
    v50 = v49;
    v49.i64[0] = v48.u32[2];
    v49.i64[1] = v48.u32[3];
    v51 = vorrq_s8(vshlq_u64(v50, xmmword_100481850), vshlq_u64(v49, xmmword_1004AD2B0));
    return (*&vorr_s8(*v51.i8, *&vextq_s8(v51, v51, 8uLL)) | (v44 << 40) | v43) + (v45 << 48) + (v46 << 56);
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t WiFiInterface.NeighborDiscoveryTable.postPeerAbsence(macAddress:ipv6Address:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = type metadata accessor for Logger();
  v41 = *(v43 - 8);
  __chkstk_darwin();
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a6 + 16);
  v15 = *(a6 + 24);
  LOWORD(v57) = a1;
  BYTE2(v57) = BYTE2(a1);
  BYTE3(v57) = BYTE3(a1);
  BYTE4(v57) = BYTE4(a1);
  BYTE5(v57) = BYTE5(a1);
  v47 = a3;
  *(&v57 + 1) = a2;
  *&v58 = a3;
  v46 = a2;
  v49 = v6;
  v48 = a4;
  *(&v58 + 1) = a4;
  v59 = a5;
  v52 = v57;
  v53 = v58;
  v54 = a5;

  v45 = v14;
  v44 = v15;
  v17 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable.Entry(0, v14, v15, v16);
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v50, &v57, v17);
  swift_getWitnessTable(byte_1004ADB38, v17);
  Dictionary.subscript.getter();
  v60[0] = v52;
  v60[1] = v53;
  v61 = v54;
  v19 = *(v18 + 8);
  v19(v60, v17);
  if (v56 == 1 || v55 < 1)
  {
    return v19(&v57, v17);
  }

  if (v55 == 1)
  {
    v52 = v57;
    v53 = v58;
    v54 = v59;
    type metadata accessor for Dictionary();
    v21 = v49;
    Dictionary.removeValue(forKey:)();
    v19(&v57, v17);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23 = *(AssociatedConformanceWitness + 144);
    v24 = swift_checkMetadataState();
    v25 = v62;
    result = v23(a1 & 0xFFFFFFFFFFFFLL, v46, v47, v48, a5, v24, AssociatedConformanceWitness);
    if (!v25)
    {
      v62 = 0;
      v26 = (*(AssociatedConformanceWitness + 40))(v24, AssociatedConformanceWitness);
      v28 = v27;
      v29 = v41;
      v30 = v21 + *(a6 + 40);
      v31 = v42;
      v32 = v43;
      (*(v41 + 16))(v42, v30, v43);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *&v52 = swift_slowAlloc();
        *v35 = 136315394;
        v36 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
        v38 = v29;
        v39 = sub_100002320(v36, v37, &v52);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        v40 = sub_100002320(v26, v28, &v52);

        *(v35 + 14) = v40;
        _os_log_impl(&_mh_execute_header, v33, v34, "Posted peer absence for %s on %s", v35, 0x16u);
        swift_arrayDestroy();

        return (*(v38 + 8))(v42, v43);
      }

      else
      {

        return (*(v29 + 8))(v31, v32);
      }
    }
  }

  else
  {
    v50 = v55 - 1;
    v51 = 0;
    v52 = v57;
    v53 = v58;
    v54 = v59;
    type metadata accessor for Dictionary();
    return Dictionary.subscript.setter();
  }

  return result;
}

Swift::Int sub_10004F23C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v3 = v2[1];
  v6 = *v2;
  v7 = v3;
  v8 = *(v2 + 4);
  sub_10004F294(v5);
  return Hasher._finalize()();
}

void sub_10004F294(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  v11 = *(v1 + 8);
  v7 = *(v1 + 32);
  v8 = sub_10004F3B0(&v11, &v12);
  v10 = v9;
  Data.hash(into:)();
  sub_1000124C8(v8, v10);
  if (v7)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

unint64_t sub_10004F3B0(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_100029B34(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_10000AD84(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_100178EFC(v3, v4);
    }

    else
    {
      v6 = sub_10004F46C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_100002A00(v8);
  return v6;
}

uint64_t sub_10004F46C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
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

uint64_t sub_10004F4F0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a1 + 8);

  return _s7CoreP2P11IPv6AddressV2eeoiySbAC_ACtFZ_0(v11, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10004F5AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_10004F4F0(v5, v7) & 1;
}

uint64_t _s7CoreP2P11IPv6AddressV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != a5 || a2 != a6)
  {
    return 0;
  }

  result = (a4 | a8) == 0;
  if (a4 && a8)
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_10004F6D0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = v4[5];
  v10 = v4[2];
  v9 = v4[3];
  v11 = *(v8 + 24);
  v12 = *(v11 + 16);

  os_unfair_lock_lock(v12);
  swift_beginAccess();
  v13 = *(v8 + 32);
  if (*(v13 + 16) && (v14 = sub_1000102E8(v10, v9), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();
    v17 = *(v16 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_interfaceIndex);
  }

  else
  {
    swift_endAccess();
    v17 = sub_100097170(v10, v9, sub_1000B29FC);
  }

  swift_beginAccess();
  sub_10004F87C(a1 & 0xFFFFFFFFFFFFLL, a2, a3, v17, a4);
  swift_endAccess();
  os_unfair_lock_unlock(*(v11 + 16));
}

uint64_t sub_10004F87C(unint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v21 = 7708;
  v27 = a4;
  if (HIWORD(a4))
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v5;
  v8 = a1;
  v22 = a2;
  v23 = bswap32(a4) >> 16;
  v24 = WORD2(a2);
  v25 = HIWORD(a2);
  v26 = a3;
  v9 = a1 >> 40;
  v10 = HIDWORD(a1);
  v11 = a1 >> 24;
  v12 = a1 >> 16;
  v13 = a1 >> 8;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004817D0;
  *(v14 + 32) = v8;
  *(v14 + 33) = v13;
  *(v14 + 34) = v12;
  *(v14 + 35) = v11;
  *(v14 + 36) = v10;
  *(v14 + 37) = v9;
  v15 = sub_10002D874(v14);
  v17 = v16;

  *&v20 = v15;
  *(&v20 + 1) = v17;
  sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(v15, v17);
  v18 = type metadata accessor for RoutingSocket(0);
  ++*(v6 + *(v18 + 20));
  if ((a5 & 0x80000000) != 0)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (a5 > 0xFF)
  {
    goto LABEL_7;
  }

  v20 = xmmword_100480A90;
  Data._Representation.append(contentsOf:)();
  Data._Representation.append(contentsOf:)();
  Data._Representation.append(contentsOf:)();
  sub_1002004E0(&v20, v6, a5);
  return sub_1000124C8(v20, *(&v20 + 1));
}

_DWORD *sub_10004FB14@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10004FB64(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DispatchTimeInterval();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_10004FC10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DispatchTimeInterval();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NonNANBeaconInformation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NonNANBeaconInformation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t _s7CoreP2P12NANAttributeO32FineTimingMeasurementRangeReportV5EntryVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 14))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for IEEE80211InformationElement.VeryHighThroughputCapability(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IEEE80211InformationElement.VeryHighThroughputCapability(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NANWiFiAwareSystemStatistics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for NANAttribute.ExtendedIBSS(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004FDA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 34))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004FDC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 34) = v3;
  return result;
}

uint64_t sub_10004FDF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004FE18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NANAttribute.ClusterDiscovery(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NANAttribute.ClusterDiscovery(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}