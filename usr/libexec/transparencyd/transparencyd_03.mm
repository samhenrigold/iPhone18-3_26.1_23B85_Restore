uint64_t sub_1000937D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100093844(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000938E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100096590(&qword_100382D00, type metadata accessor for IDSFailingDevice, &unk_1002D5838);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100093988(uint64_t a1)
{
  v2 = sub_100096590(&qword_100382618, type metadata accessor for IDSFailingDevice, &unk_1002D57C0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000939F4(uint64_t a1, uint64_t a2)
{
  sub_100096590(&qword_100382618, type metadata accessor for IDSFailingDevice, &unk_1002D57C0);

  return Message.hash(into:)();
}

uint64_t sub_100093A90()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D058);
  sub_10009597C(v0, qword_10039D058);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "unique";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "relatedRadar";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "radar";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "idsFailingDevices";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100093D7C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for _NameMap();

  return sub_10009597C(v4, a2);
}

uint64_t sub_100093DF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = sub_10009597C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100093E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
          dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
        }

        else if (result == 6)
        {
          type metadata accessor for IDSFailingDevice(0);
          sub_100096590(&qword_100382618, type metadata accessor for IDSFailingDevice, &unk_1002D57C0);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100093FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v10 = v3[5];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        if (!v3[6] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
        {
          if (!v3[7] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
          {
            if (!*(v3[8] + 16) || (type metadata accessor for IDSFailingDevice(0), sub_100096590(&qword_100382618, type metadata accessor for IDSFailingDevice, &unk_1002D57C0), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
            {
              type metadata accessor for SASTTR(0);
              return UnknownStorage.traverse<A>(visitor:)();
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::Int sub_1000941E0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  sub_100096590(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100094268@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = _swiftEmptyArrayStorage;
  return UnknownStorage.init()();
}

uint64_t sub_1000942A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10009431C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000943E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100096590(&qword_100382CF8, type metadata accessor for SASTTR, &unk_1002D59A0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100094484@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = sub_10009597C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100094520(uint64_t a1)
{
  v2 = sub_100096590(&unk_100384C30, type metadata accessor for SASTTR, &unk_1002D5928);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_10009458C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000945E4(uint64_t a1, uint64_t a2)
{
  sub_100096590(&unk_100384C30, type metadata accessor for SASTTR, &unk_1002D5928);

  return Message.hash(into:)();
}

Swift::Int sub_100094660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000946B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000948E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100095A08(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000956CC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1000946B4(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000956CC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100094A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDomainCode(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v70 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100095820(&qword_1003825A8, &qword_1002D4888);
  __chkstk_darwin(v7 - 8);
  v72 = (&v60 - v8);
  v71 = sub_100095820(&qword_100382D50, &qword_1002D5B48);
  __chkstk_darwin(v71);
  v10 = &v60 - v9;
  v73 = type metadata accessor for IDSFailingDevice(0);
  v11 = __chkstk_darwin(v73);
  v13 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v16 = (&v60 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_75;
  }

  if (!v17 || a1 == a2)
  {
    v58 = 1;
    return v58 & 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(v14 + 72);
  v67 = 0;
  v68 = v21;
  v63 = v4;
  v69 = (v5 + 48);
  v65 = v13;
  v66 = (&v60 - v15);
  while (1)
  {
    sub_100098068(v19, v16, type metadata accessor for IDSFailingDevice);
    sub_100098068(v20, v13, type metadata accessor for IDSFailingDevice);
    v22 = *v16;
    v23 = v16[1];
    v24 = *v13;
    v25 = v13[1];
    v26 = v23 >> 62;
    v27 = v25 >> 62;
    if (v23 >> 62 == 3)
    {
      v28 = 0;
      if (!v22 && v23 == 0xC000000000000000 && v25 >> 62 == 3)
      {
        v28 = 0;
        if (!v24 && v25 == 0xC000000000000000)
        {
          goto LABEL_55;
        }
      }

LABEL_21:
      if (v27 <= 1)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v34 = *(v22 + 16);
        v33 = *(v22 + 24);
        v31 = __OFSUB__(v33, v34);
        v28 = v33 - v34;
        if (v31)
        {
          goto LABEL_80;
        }

        goto LABEL_21;
      }

      v28 = 0;
      if (v27 <= 1)
      {
        goto LABEL_22;
      }
    }

    else if (v26)
    {
      LODWORD(v28) = HIDWORD(v22) - v22;
      if (__OFSUB__(HIDWORD(v22), v22))
      {
        goto LABEL_79;
      }

      v28 = v28;
      if (v27 <= 1)
      {
LABEL_22:
        if (v27)
        {
          LODWORD(v32) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
          }

          v32 = v32;
        }

        else
        {
          v32 = BYTE6(v25);
        }

        goto LABEL_28;
      }
    }

    else
    {
      v28 = BYTE6(v23);
      if (v27 <= 1)
      {
        goto LABEL_22;
      }
    }

LABEL_15:
    if (v27 != 2)
    {
      if (v28)
      {
        goto LABEL_74;
      }

      goto LABEL_55;
    }

    v30 = *(v24 + 16);
    v29 = *(v24 + 24);
    v31 = __OFSUB__(v29, v30);
    v32 = v29 - v30;
    if (v31)
    {
      goto LABEL_78;
    }

LABEL_28:
    if (v28 != v32)
    {
      goto LABEL_74;
    }

    if (v28 < 1)
    {
      goto LABEL_55;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        memset(v75, 0, 14);
LABEL_47:
        v45 = v67;
        sub_1000946B4(v75, v24, v25, &v74);
        v67 = v45;
        if (!v74)
        {
          goto LABEL_74;
        }

        goto LABEL_55;
      }

      v64 = *v13;
      v35 = *(v22 + 16);
      v61 = *(v22 + 24);
      v62 = v35;
      v36 = __DataStorage._bytes.getter();
      if (v36)
      {
        v37 = v36;
        v38 = __DataStorage._offset.getter();
        v39 = v62;
        if (__OFSUB__(v62, v38))
        {
          goto LABEL_83;
        }

        v60 = v62 - v38 + v37;
      }

      else
      {
        v60 = 0;
        v39 = v62;
      }

      if (__OFSUB__(v61, v39))
      {
        goto LABEL_82;
      }

      __DataStorage._length.getter();
      v46 = v60;
    }

    else
    {
      if (!v26)
      {
        v75[0] = *v16;
        LOWORD(v75[1]) = v23;
        BYTE2(v75[1]) = BYTE2(v23);
        BYTE3(v75[1]) = BYTE3(v23);
        BYTE4(v75[1]) = BYTE4(v23);
        BYTE5(v75[1]) = BYTE5(v23);
        goto LABEL_47;
      }

      v64 = *v13;
      v40 = v22;
      v41 = v22 >> 32;
      v62 = v41 - v40;
      if (v41 < v40)
      {
        goto LABEL_81;
      }

      v42 = __DataStorage._bytes.getter();
      if (v42)
      {
        v61 = v42;
        v43 = __DataStorage._offset.getter();
        if (__OFSUB__(v40, v43))
        {
          goto LABEL_84;
        }

        v44 = v40 - v43 + v61;
      }

      else
      {
        v44 = 0;
      }

      __DataStorage._length.getter();
      v46 = v44;
    }

    v47 = v67;
    sub_1000946B4(v46, v64, v25, v75);
    v67 = v47;
    v4 = v63;
    if ((v75[0] & 1) == 0)
    {
      goto LABEL_74;
    }

LABEL_55:
    v48 = *(v73 + 24);
    v49 = *(v71 + 48);
    sub_100095888(v16 + v48, v10);
    sub_100095888(v13 + v48, &v10[v49]);
    v50 = *v69;
    if ((*v69)(v10, 1, v4) != 1)
    {
      break;
    }

    if (v50(&v10[v49], 1, v4) != 1)
    {
      goto LABEL_73;
    }

LABEL_66:
    sub_1000057C4(v10, &qword_1003825A8, &qword_1002D4888);
    type metadata accessor for UnknownStorage();
    sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_1000980D0(v13, type metadata accessor for IDSFailingDevice);
    sub_1000980D0(v16, type metadata accessor for IDSFailingDevice);
    if (v58)
    {
      v20 += v68;
      v19 += v68;
      if (--v17)
      {
        continue;
      }
    }

    return v58 & 1;
  }

  v51 = v72;
  sub_100095888(v10, v72);
  if (v50(&v10[v49], 1, v4) == 1)
  {
    sub_1000980D0(v51, type metadata accessor for ErrorDomainCode);
    v13 = v65;
    v16 = v66;
LABEL_73:
    sub_1000057C4(v10, &qword_100382D50, &qword_1002D5B48);
    goto LABEL_74;
  }

  v52 = &v10[v49];
  v53 = v70;
  sub_1000958F8(v52, v70);
  v54 = v51;
  if (*v51 == *v53 && v51[1] == v53[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v51[2] == v53[2] && (sub_100095368(v51[3], v53[3]))
  {
    v55 = v53;
    type metadata accessor for UnknownStorage();
    sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v54 = v72;
    v57 = v56;
    sub_1000980D0(v55, type metadata accessor for ErrorDomainCode);
    v13 = v65;
    if ((v57 & 1) == 0)
    {
      goto LABEL_71;
    }

    sub_1000980D0(v54, type metadata accessor for ErrorDomainCode);
    v16 = v66;
    goto LABEL_66;
  }

  sub_1000980D0(v53, type metadata accessor for ErrorDomainCode);
  v13 = v65;
LABEL_71:
  sub_1000980D0(v54, type metadata accessor for ErrorDomainCode);
  sub_1000057C4(v10, &qword_1003825A8, &qword_1002D4888);
  v16 = v66;
LABEL_74:
  sub_1000980D0(v13, type metadata accessor for IDSFailingDevice);
  sub_1000980D0(v16, type metadata accessor for IDSFailingDevice);
LABEL_75:
  v58 = 0;
  return v58 & 1;
}

uint64_t sub_100095368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDomainCode(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_17:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_100098068(v13, v10, type metadata accessor for ErrorDomainCode);
      sub_100098068(v14, v7, type metadata accessor for ErrorDomainCode);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v10[2] != v7[2] || (sub_100095368(v10[3], v7[3]) & 1) == 0)
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000980D0(v7, type metadata accessor for ErrorDomainCode);
      sub_1000980D0(v10, type metadata accessor for ErrorDomainCode);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1000980D0(v7, type metadata accessor for ErrorDomainCode);
    sub_1000980D0(v10, type metadata accessor for ErrorDomainCode);
    goto LABEL_17;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1000955EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  v4 = a2 + 32;
  result = sub_100096A68();
  while (v2)
  {
    v3 += 8;
    v4 += 8;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    result = v8 == v7;
    if (v8 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000956CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100095820(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100095888(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095820(&qword_1003825A8, &qword_1002D4888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000958F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDomainCode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009597C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000959B4()
{
  result = qword_1003825B0;
  if (!qword_1003825B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003825B0);
  }

  return result;
}

uint64_t sub_100095A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1000946B4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_100095AC0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100002D78(a3, a4);
          return sub_1000948E4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100095C28(uint64_t a1, uint64_t a2)
{
  if (!sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_100095AC0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) || !sub_100095AC0(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) || !sub_100095AC0(*(a1 + 48), *(a1 + 56), *(a2 + 48), *(a2 + 56)))
  {
    return 0;
  }

  type metadata accessor for SASSetupB(0);
  type metadata accessor for UnknownStorage();
  sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100095D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_100095AC0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) || !sub_100095AC0(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)))
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100095DE0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] != a2[6] || a1[7] != a2[7] || (sub_100094A74(a1[8], a2[8]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SASTTR(0);
  type metadata accessor for UnknownStorage();
  sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100095F14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDomainCode(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100095820(&qword_1003825A8, &qword_1002D4888);
  __chkstk_darwin(v8 - 8);
  v10 = (&v23 - v9);
  v11 = sub_100095820(&qword_100382D50, &qword_1002D5B48);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  if (!sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_20;
  }

  v14 = *(type metadata accessor for IDSFailingDevice(0) + 24);
  v15 = *(v11 + 48);
  sub_100095888(a1 + v14, v13);
  sub_100095888(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_100095888(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1000958F8(&v13[v15], v7);
      v20 = *v10 == *v7 && v10[1] == v7[1];
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v10[2] == v7[2] && (sub_100095368(v10[3], v7[3]))
      {
        type metadata accessor for UnknownStorage();
        sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_1000980D0(v7, type metadata accessor for ErrorDomainCode);
        sub_1000980D0(v10, type metadata accessor for ErrorDomainCode);
        sub_1000057C4(v13, &qword_1003825A8, &qword_1002D4888);
        if (v21)
        {
          goto LABEL_5;
        }

LABEL_20:
        v17 = 0;
        return v17 & 1;
      }

      sub_1000980D0(v7, type metadata accessor for ErrorDomainCode);
      sub_1000980D0(v10, type metadata accessor for ErrorDomainCode);
      v18 = &qword_1003825A8;
      v19 = &qword_1002D4888;
LABEL_19:
      sub_1000057C4(v13, v18, v19);
      goto LABEL_20;
    }

    sub_1000980D0(v10, type metadata accessor for ErrorDomainCode);
LABEL_8:
    v18 = &qword_100382D50;
    v19 = &qword_1002D5B48;
    goto LABEL_19;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1000057C4(v13, &qword_1003825A8, &qword_1002D4888);
LABEL_5:
  type metadata accessor for UnknownStorage();
  sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t sub_100096304(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[2] != a2[2] || (sub_100095368(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ErrorDomainCode(0);
  type metadata accessor for UnknownStorage();
  sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000963E4(uint64_t a1, uint64_t a2)
{
  if (!sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      v4 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    if ((*(a2 + 24) & 1) == 0)
    {
LABEL_8:
      if (v4 == *(a2 + 16))
      {
        goto LABEL_9;
      }

      return 0;
    }

    if (v4)
    {
      return 0;
    }
  }

LABEL_9:
  type metadata accessor for SASTeardown(0);
  type metadata accessor for UnknownStorage();
  sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000964C4(uint64_t a1, uint64_t a2)
{
  if ((sub_1000955EC(*a1, *a2) & 1) == 0 || !sub_100095AC0(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) || !sub_100095AC0(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
  {
    return 0;
  }

  type metadata accessor for SASAnnounce(0);
  type metadata accessor for UnknownStorage();
  sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100096590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000965D8()
{
  result = qword_1003825D8;
  if (!qword_1003825D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003825D8);
  }

  return result;
}

uint64_t sub_10009662C(_BOOL8 *a1, uint64_t *a2)
{
  if (!sub_100095AC0(*a1, a1[1], *a2, a2[1]) || a1[2] != a2[2] || !sub_100095AC0(a1[3], a1[4], a2[3], a2[4]))
  {
    return 0;
  }

  type metadata accessor for SASConfirm(0);
  type metadata accessor for UnknownStorage();
  sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_100096700()
{
  result = qword_100382628;
  if (!qword_100382628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100382628);
  }

  return result;
}

unint64_t sub_100096758()
{
  result = qword_100382630;
  if (!qword_100382630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100382630);
  }

  return result;
}

uint64_t sub_1000967DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100096828()
{
  result = qword_100382648;
  if (!qword_100382648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100382648);
  }

  return result;
}

unint64_t sub_100096880()
{
  result = qword_100382650;
  if (!qword_100382650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100382650);
  }

  return result;
}

unint64_t sub_1000968D8()
{
  result = qword_100382658;
  if (!qword_100382658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100382658);
  }

  return result;
}

unint64_t sub_100096960()
{
  result = qword_100382670;
  if (!qword_100382670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100382670);
  }

  return result;
}

unint64_t sub_1000969B8()
{
  result = qword_100382678;
  if (!qword_100382678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100382678);
  }

  return result;
}

unint64_t sub_100096A10()
{
  result = qword_100382680;
  if (!qword_100382680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100382680);
  }

  return result;
}

unint64_t sub_100096A68()
{
  result = qword_100382688;
  if (!qword_100382688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100382688);
  }

  return result;
}

uint64_t sub_100096AEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000967DC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SASIDSProtocolNumbers(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SASTeardownReason(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SASTeardownReason(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000976F8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100097714(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_10009777C(uint64_t a1)
{
  sub_100097810();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100097810()
{
  if (!qword_1003827D0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1003827D0);
    }
  }
}

uint64_t sub_1000978BC(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100097960(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100097A0C(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100097AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100097B94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100097C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100097CF8(uint64_t a1)
{
  sub_100097EB0(319, &unk_100382B90, type metadata accessor for ErrorDomainCode, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100097DEC(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100097EB0(319, &unk_100382C20, type metadata accessor for ErrorDomainCode, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100097EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100097F3C(uint64_t a1)
{
  sub_100097EB0(319, &unk_100382CB0, type metadata accessor for IDSFailingDevice, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100098014()
{
  result = qword_100382D48;
  if (!qword_100382D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100382D48);
  }

  return result;
}

uint64_t sub_100098068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000980D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_100098130(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100098238@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13transparencyd16KTNetworkRequest_log;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1000982B0(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  *&v7[OBJC_IVAR____TtC13transparencyd16KTNetworkRequest_logClient] = a1;
  v8 = a1;
  Logger.init(subsystem:category:)();
  (*(v4 + 32))(&v7[OBJC_IVAR____TtC13transparencyd16KTNetworkRequest_log], v6, v3);
  v11.receiver = v7;
  v11.super_class = v1;
  v9 = objc_msgSendSuper2(&v11, "init");

  return v9;
}

id sub_100098408(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC13transparencyd16KTNetworkRequest_logClient] = a1;
  v7 = a1;
  Logger.init(subsystem:category:)();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC13transparencyd16KTNetworkRequest_log], v6, v3);
  v8 = type metadata accessor for KTNetworkRequest(0);
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, "init");

  return v9;
}

uint64_t type metadata accessor for KTNetworkRequest(uint64_t a1)
{
  result = qword_10038E620;
  if (!qword_10038E620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000986F4(double a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a8;
  v45 = a7;
  v46 = a6;
  v44 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  UUID.init()();
  v18 = objc_allocWithZone(TransparencyNetworkRequest);
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v49 = a3;
  v50 = a4;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v23 = UUID._bridgeToObjectiveC()().super.isa;
  v24 = [v18 initPOSTWithURL:v21 data:isa uuid:v23];

  [v24 setUseReversePush:1];
  [v24 setAllowEmptyData:1];
  v25 = UUID._bridgeToObjectiveC()().super.isa;
  [v24 setUuid:v25];

  sub_100099F8C(&off_10031ECC0);
  sub_100095820(&qword_100382D70, qword_1002D5B88);
  swift_arrayDestroy();
  v26 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v24 setAdditionalHeaders:v26];

  [v24 setAuthenticated:1];
  if (a1 != 0.0)
  {
    [v24 setTimeout:a1];
  }

  v27 = v48;
  v43 = *&v48[OBJC_IVAR____TtC13transparencyd16KTNetworkRequest_logClient];
  (*(v12 + 16))(v15, v17, v11);
  v28 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = v27;
  *(v29 + 3) = v24;
  v31 = v44;
  v30 = v45;
  v44 = v17;
  v32 = v12;
  v33 = v46;
  *(v29 + 4) = v31;
  *(v29 + 5) = v33;
  v34 = v11;
  v35 = v47;
  *(v29 + 6) = v30;
  *(v29 + 7) = v35;
  (*(v32 + 32))(&v29[v28], v15, v34);
  v36 = &v29[(v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8];
  v38 = v49;
  v37 = v50;
  *v36 = v49;
  v36[1] = v37;
  aBlock[4] = sub_10009A0A0;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100098DBC;
  aBlock[3] = &unk_10031ED70;
  v39 = _Block_copy(aBlock);

  v40 = v27;
  v41 = v24;
  sub_100002D78(v38, v37);

  [v43 fetchRequest:v41 completionHandler:v39];
  _Block_release(v39);

  return (*(v32 + 8))(v44, v34);
}

unint64_t sub_100098ADC(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100095820(&qword_100382DA8, &qword_1002D5BB0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_10009AA94(*(v1 + 48) + 40 * v15, v28);
    sub_10009AA34(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_10009AA94(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_1000057C4(v25, &unk_100382DB0, &qword_1002D5BB8);

      goto LABEL_22;
    }

    sub_10009AA34(v26 + 8, v24);
    sub_1000057C4(v25, &unk_100382DB0, &qword_1002D5BB8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_10000574C(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

void sub_100098DBC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100098E48()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13transparencyd16KTNetworkRequest_logClient) configBag];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 urlForKey:v2];

  if (v3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = objc_opt_self();
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    [v4 errorWithDomain:v5 code:-114 underlyingError:0 userinfo:0 description:v6];

    swift_willThrow();
  }
}

void sub_100098F98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(void, unint64_t, void, unint64_t, id), uint64_t a8, double a9)
{
  type metadata accessor for KTPBQueryRequest(0);
  v17 = swift_allocBox();
  v19 = v18;
  sub_1001241C8(v18);
  *v19 = 3;
  *(v19 + 8) = 1;
  *(v19 + 48) = a1;
  *(v19 + 56) = a2;

  v20 = objc_opt_self();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 applicationValueForIdentifier:v21];

  if (v22)
  {
    v23 = sub_10010C338([v22 integerValue]);
    if ((v24 & 0x100) == 0)
    {
      *(v19 + 16) = v23;
      *(v19 + 24) = v24 & 1;
      v25 = *&v9[OBJC_IVAR____TtC13transparencyd16KTNetworkRequest_logClient];
      v26 = swift_allocObject();
      *(v26 + 16) = a7;
      *(v26 + 24) = a8;
      *(v26 + 32) = v9;
      *(v26 + 40) = v17;
      *(v26 + 48) = a5;
      *(v26 + 56) = a6;
      *(v26 + 64) = a9;
      v40 = sub_10009A3E8;
      v41 = v26;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_100099654;
      v39 = &unk_10031EDC0;
      v27 = _Block_copy(&aBlock);

      v28 = v9;

      [v25 configure:v27];
      _Block_release(v27);

      return;
    }
  }

  v29 = objc_opt_self();
  v30 = String._bridgeToObjectiveC()();
  _StringGuts.grow(_:)(22);

  aBlock = 0xD000000000000014;
  v37 = 0x8000000100299520;
  v31._countAndFlagsBits = a3;
  v31._object = a4;
  String.append(_:)(v31);
  v32 = String._bridgeToObjectiveC()();

  v35 = [v29 errorWithDomain:v30 code:-42 underlyingError:0 userinfo:0 description:v32];

  a7(0, 0xF000000000000000, 0, 0xF000000000000000, v35);
}

uint64_t sub_1000992C4(uint64_t a1, uint64_t (*a2)(void, unint64_t, void, unint64_t, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v41 = a6;
  v42 = a7;
  v43 = a3;
  v12 = type metadata accessor for KTPBQueryRequest(0);
  __chkstk_darwin(v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v37 - v20;
  v22 = swift_projectBox();
  if (a1)
  {
    return a2(0, 0xF000000000000000, 0, 0xF000000000000000, a1);
  }

  v37[0] = v22;
  v37[1] = v12;
  v38 = v14;
  v39 = v21;
  v40 = v16;
  (*((swift_isaMask & *a4) + 0x70))();
  v24 = a4;
  v26 = v39;
  v25 = v40;
  (*(v40 + 32))(v39, v19, v15);
  v27 = v37[0];
  swift_beginAccess();
  v28 = v27;
  v29 = v38;
  sub_10009A880(v28, v38);
  sub_10009A8E4();
  v30 = Message.serializedData(partial:)();
  v32 = v31;
  sub_10009A93C(v29);
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = v43;
  v34 = swift_isaMask & *v24;
  v35 = v25;
  v36 = *(v34 + 104);

  v36(v26, v30, v32, v41, v42, sub_10009A998, v33, a8);

  sub_1000956CC(v30, v32);
  return (*(v35 + 8))(v26, v15);
}

void sub_100099654(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1000997C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  if (a4 >> 60 == 15)
  {
    v10 = 0;
    if (a5)
    {
LABEL_6:
      v11 = _convertErrorToNSError(_:)();
      goto LABEL_9;
    }
  }

  else
  {
    v10 = Data._bridgeToObjectiveC()().super.isa;
    if (a5)
    {
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_9:
  v12 = v11;
  (*(a6 + 16))(a6, isa, v10);
}

id KTUpdateCloudStorageOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100099930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KTNetworkRequest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000999E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100099AB0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10009AA34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10009A9E8(v11);
  return v7;
}

unint64_t sub_100099AB0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100099BBC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100099BBC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100099C08(a1, a2);
  sub_100099D38(&off_10031ED20);
  return v3;
}

void *sub_100099C08(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100099E24(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100099E24(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100099D38(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100099E98(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100099E24(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100095820(&qword_100383330, &unk_1002D6B20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100099E98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095820(&qword_100383330, &unk_1002D6B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100099F8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100382DA8, &qword_1002D5BB0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000574C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10009A0A0(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = *(v2 + 5);
  v35 = *(v2 + 6);
  v10 = &v2[(*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8];
  v33 = v10[1];
  v34 = *v10;

  v11 = v7;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = a2;
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    if (!v9)
    {
      v8 = 45;
    }

    v16 = v6;
    if (v9)
    {
      v17 = v9;
    }

    else
    {
      v17 = 0xE100000000000000;
    }

    v18 = v11;

    v19 = sub_1000999E4(v8, v17, &v36);
    v6 = v16;

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "sending request to %@ trace: %s", v14, 0x16u);
    sub_1000057C4(v15, &unk_100383290, &unk_1002D5BA0);
    a2 = v31;

    sub_10009A9E8(v30);
  }

  if (a1)
  {
    v20 = [a1 data];
    if (v20)
    {
      v21 = v20;
      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xF000000000000000;
    }

    v26 = [a1 metadata];
    if (v26)
    {
      v27 = v26;
      v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = sub_100098ADC(v28);
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    v22 = 0;
    v24 = 0xF000000000000000;
  }

  v35(&v3[v6], v34, v33, v22, v24, v25, a2);

  return sub_10009A9D4(v22, v24);
}

uint64_t sub_10009A3D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009A3F4(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void sub_10009A494(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char *a7, void (**a8)(void, void, void, void), double a9)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a8;
  type metadata accessor for KTPBQueryRequest(0);
  v36 = swift_allocBox();
  v19 = v18;
  _Block_copy(a8);
  sub_1001241C8(v19);
  *v19 = 3;
  *(v19 + 8) = 1;
  *(v19 + 48) = a1;
  *(v19 + 56) = a2;

  v20 = objc_opt_self();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 applicationValueForIdentifier:v21];

  if (v22)
  {
    v23 = sub_10010C338([v22 integerValue]);
    if ((v24 & 0x100) == 0)
    {
      *(v19 + 16) = v23;
      *(v19 + 24) = v24 & 1;
      v25 = *&a7[OBJC_IVAR____TtC13transparencyd16KTNetworkRequest_logClient];
      v26 = swift_allocObject();
      *(v26 + 16) = sub_10009A814;
      *(v26 + 24) = v17;
      *(v26 + 32) = a7;
      *(v26 + 40) = v36;
      *(v26 + 48) = a5;
      *(v26 + 56) = a6;
      *(v26 + 64) = a9;
      v41 = sub_10009AB00;
      v42 = v26;
      aBlock = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_100099654;
      v40 = &unk_10031EE38;
      v27 = _Block_copy(&aBlock);

      v28 = a7;

      [v25 configure:v27];
      _Block_release(v27);

      return;
    }
  }

  v29 = objc_opt_self();
  v30 = String._bridgeToObjectiveC()();
  _StringGuts.grow(_:)(22);

  aBlock = 0xD000000000000014;
  v38 = 0x8000000100299520;
  v31._countAndFlagsBits = a3;
  v31._object = a4;
  String.append(_:)(v31);
  v32 = String._bridgeToObjectiveC()();

  v33 = [v29 errorWithDomain:v30 code:-42 underlyingError:0 userinfo:0 description:v32];

  v35 = _convertErrorToNSError(_:)();
  (a8)[2](a8, 0, 0, v35);
}

uint64_t sub_10009A81C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10009A880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTPBQueryRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009A8E4()
{
  result = qword_100382DA0;
  if (!qword_100382DA0)
  {
    type metadata accessor for KTPBQueryRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100382DA0);
  }

  return result;
}

uint64_t sub_10009A93C(uint64_t a1)
{
  v2 = type metadata accessor for KTPBQueryRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009A9D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000956CC(result, a2);
  }

  return result;
}

uint64_t sub_10009A9E8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10009AA34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Int sub_10009AB78()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10009ABBC(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10009ABFC(uint64_t a1)
{
  v2 = sub_10009C658();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10009AC38(uint64_t a1)
{
  v2 = sub_10009C658();

  return Error<>._code.getter(a1, v2);
}

id static KTSwiftDB.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 && (swift_beginAccess(), *(a2 + 16)))
  {
    return [v4 isEqual:?];
  }

  else
  {
    return 0;
  }
}

void *sub_10009AD08()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_10009AD4C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void sub_10009ADE8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 close];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

void sub_10009AE38()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    [v2 executeSQLStmt:v3];
  }
}

void sub_10009AEC4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    v7 = 0;
    v4 = [v2 prepareStatement:v3 error:&v7];

    if (v4)
    {
      v5 = v7;

      type metadata accessor for KTSwiftDB.SQLStatement();
      *(swift_allocObject() + 16) = v4;
    }

    else
    {
      v6 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    sub_10009B004();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_10009B004()
{
  result = qword_100382DC8;
  if (!qword_100382DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100382DC8);
  }

  return result;
}

uint64_t sub_10009B058(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_10009B124(uint64_t a1)
{
  v3 = *(v1 + 16);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v3 bindDate:isa column:a1];
}

void sub_10009B1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), SEL *a5)
{
  v8 = *(v5 + 16);
  v9 = a4(a2, a3);
  [v8 *a5];
}

id sub_10009B238(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  aBlock[4] = sub_10009B38C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009B3F4;
  aBlock[3] = &unk_10031EEC0;
  v7 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LODWORD(a2) = [v5 steps:v7 error:aBlock];
  _Block_release(v7);
  if (a2)
  {
    return aBlock[0];
  }

  v9 = aBlock[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_10009B38C(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for KTSwiftDB.SQLRow();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  swift_unknownObjectRetain();
  LOBYTE(a1) = v3(v4);

  return a1 & 1;
}

uint64_t sub_10009B3F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_10009B450(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009B468()
{
  v1 = *(v0 + 16);
  v13 = 0;
  v2 = [v1 stepWithError:&v13];
  v3 = v13;
  if (v2)
  {
    v4 = v2;
    type metadata accessor for KTSwiftDB.SQLRow();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v3;
  }

  else
  {
    v7 = v13;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v13 = v8;
    swift_errorRetain();
    sub_100095820(&qword_100382DD0, &unk_1002D7500);
    type metadata accessor for KTSDBObjcError(0);
    v5 = v9;
    if (swift_dynamicCast() && (sub_10009C318(&qword_100382DD8, type metadata accessor for KTSDBObjcError, &unk_1002D5F1C), _BridgedStoredNSError.code.getter(), v12, v11 == 2))
    {

      return 0;
    }

    else
    {

      swift_willThrow();
    }
  }

  return v5;
}

uint64_t KTSwiftDB.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10009B684(uint64_t a1)
{
  v2 = [*(v1 + 16) textAtColumn:a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10009B74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(v2 + 16) dateAtColumn:a1];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_10009B7E4(uint64_t a1)
{
  v2 = [*(v1 + 16) blobAtColumn:a1];
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10009B870()
{
  v1 = [*(v0 + 16) allObjectsByColumnName];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_10009B8E8(v2);

  return v3;
}

unint64_t sub_10009B8E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100095820(&qword_1003830A0, &qword_1002D6020);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_10009AA34(*(a1 + 56) + 32 * v11, v31);
        *&v30 = v13;
        *(&v30 + 1) = v14;
        v28 = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v15 = v30;
        sub_10009C6AC(v29, v26);

        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        v26[3] = v23;
        v26[4] = v24;
        v27 = v25;
        result = sub_10000574C(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          result = sub_10009C6BC(&v23, v2[7] + 40 * v9);
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          v17 = v2[7] + 40 * result;
          v18 = v23;
          v19 = v24;
          *(v17 + 32) = v25;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_24;
          }

          v2[2] = v22;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      sub_1000057C4(&v23, &qword_1003830A8, &qword_1002D6028);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10009BBBC()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 24, 7);
}

id sub_10009BBF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (v4 && (swift_beginAccess(), *(v3 + 16)))
  {
    return [v4 isEqual:?];
  }

  else
  {
    return 0;
  }
}

void *sub_10009BC80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_10009BCB8()
{
  result = qword_100382DE0;
  if (!qword_100382DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100382DE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KTSwiftDBError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for KTSwiftDBError(_WORD *result, int a2, int a3)
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

uint64_t sub_10009BE04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009BE54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10009BEA8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10009BEC0(void *result, int a2)
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

uint64_t sub_10009BF00(uint64_t a1)
{
  v2 = sub_10009C318(&qword_100382DD8, type metadata accessor for KTSDBObjcError, &unk_1002D5F1C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10009BF6C(uint64_t a1)
{
  v2 = sub_10009C318(&qword_100382DD8, type metadata accessor for KTSDBObjcError, &unk_1002D5F1C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10009BFD8(void *a1, uint64_t a2)
{
  v4 = sub_10009C318(&qword_100382DD8, type metadata accessor for KTSDBObjcError, &unk_1002D5F1C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10009C08C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009C318(&qword_100382DD8, type metadata accessor for KTSDBObjcError, &unk_1002D5F1C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10009C108(uint64_t a1)
{
  v2 = sub_10009C318(&qword_100383060, type metadata accessor for KTSDBObjcError, &unk_1002D5EDC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10009C174(uint64_t a1)
{
  v2 = sub_10009C318(&qword_100383060, type metadata accessor for KTSDBObjcError, &unk_1002D5EDC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10009C1E0(uint64_t a1)
{
  v2 = sub_10009C318(&qword_100382DD8, type metadata accessor for KTSDBObjcError, &unk_1002D5F1C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10009C24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009C318(&qword_100382DD8, type metadata accessor for KTSDBObjcError, &unk_1002D5F1C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10009C318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10009C4DC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_10009C574()
{
  result = qword_100383088;
  if (!qword_100383088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100383088);
  }

  return result;
}

unint64_t sub_10009C658()
{
  result = qword_100383098;
  if (!qword_100383098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100383098);
  }

  return result;
}

_OWORD *sub_10009C6AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10009C740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265746E756F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10009C7D4(uint64_t a1)
{
  v2 = sub_10009C97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009C810(uint64_t a1)
{
  v2 = sub_10009C97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009C84C(void *a1, uint64_t a2)
{
  v3 = sub_100095820(&qword_100383120, &qword_1002D6090);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_1000A0E50(a1, a1[3]);
  sub_10009C97C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10009C97C()
{
  result = qword_10038EDB0[0];
  if (!qword_10038EDB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10038EDB0);
  }

  return result;
}

uint64_t sub_10009C9D0(void *a1)
{
  v3 = sub_100095820(&qword_100383128, &qword_1002D6098);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1000A0E50(a1, a1[3]);
  sub_10009C97C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10009A9E8(a1);
  return v7;
}

uint64_t sub_10009CB24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100095820(&qword_100383128, &qword_1002D6098);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000A0E50(a1, a1[3]);
  sub_10009C97C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10009A9E8(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_10009A9E8(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_10009CC84(void *a1)
{
  v2 = sub_100095820(&qword_100383120, &qword_1002D6090);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000A0E50(a1, a1[3]);
  sub_10009C97C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10009CDE8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13transparencyd18KTFailureReporting_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *sub_10009CE90()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd18KTFailureReporting_dewConfig);
  v2 = v1;
  return v1;
}

uint64_t sub_10009CF08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd18KTFailureReporting_peerReportValue;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_10009CFC0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v4);
  Logger.init(subsystem:category:)();
  v11 = OBJC_IVAR____TtC13transparencyd18KTFailureReporting_peerReportValue;
  *&v10[OBJC_IVAR____TtC13transparencyd18KTFailureReporting_peerReportValue] = 0;
  *&v10[OBJC_IVAR____TtC13transparencyd18KTFailureReporting_idsReporting] = a1;
  *&v10[OBJC_IVAR____TtC13transparencyd18KTFailureReporting_container] = a2;
  *&v10[OBJC_IVAR____TtC13transparencyd18KTFailureReporting_configBag] = a4;
  *&v10[OBJC_IVAR____TtC13transparencyd18KTFailureReporting_dewConfig] = a3;
  if (a3)
  {
    sub_100095820(&unk_100383130, &unk_1002D60A0);
    type metadata accessor for DewConfigurationBool();
    v12 = a3;
    swift_unknownObjectRetain();
    v13 = a2;
    swift_unknownObjectRetain();
    v18[0] = sub_1000AB140(1);
    v14 = sub_1000A6AFC(0x706552534449544BLL, 0xEF7265655074726FLL, 1, v18, v12, 0xD000000000000013, 0x80000001002996F0);
    swift_beginAccess();
    *&v10[v11] = v14;
  }

  else
  {
    swift_unknownObjectRetain();
    v15 = a2;
    swift_unknownObjectRetain();
  }

  v19.receiver = v10;
  v19.super_class = v5;
  v16 = objc_msgSendSuper2(&v19, "init");
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v16;
}

id sub_10009D1A8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = sub_10009FB88(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

id sub_10009D2A0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13transparencyd18KTFailureReporting_container) newBackgroundContext];
  v2 = [objc_allocWithZone(NSMergePolicy) initWithMergeType:3];
  [v1 setMergePolicy:v2];

  return v1;
}

Swift::Int sub_10009D34C(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10009D3AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10009D420(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_10009D464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a6;
  v62 = a4;
  v63 = a1;
  v9 = type metadata accessor for Date();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = __chkstk_darwin(v9);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v60 = &v54 - v13;
  __chkstk_darwin(v12);
  v15 = &v54 - v14;
  v16 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1002D47A0;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_10009FD4C();
  *(v17 + 32) = 0x6F70655272656550;
  *(v17 + 40) = 0xEA00000000007472;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v18;
  *(v17 + 64) = v18;
  *(v17 + 72) = a2;
  *(v17 + 80) = a3;
  *(v17 + 136) = &type metadata for String;
  *(v17 + 144) = v18;
  *(v17 + 112) = v62;
  *(v17 + 120) = a5;

  v19 = v63;
  v20 = NSPredicate.init(format:_:)();
  [v16 setPredicate:v20];

  sub_10009FDA0(0, &qword_100383150, off_100315878);
  v61 = v16;
  result = NSManagedObjectContext.fetch<A>(_:)();
  v55 = v15;
  if (result >> 62)
  {
    v54 = result;
    v36 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v55;
    if (v36)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
      result = v54;
      if (!v37)
      {

        return 1;
      }

      goto LABEL_3;
    }

LABEL_13:

    v27 = [objc_allocWithZone(CachedData) initWithContext:v19];
    v38 = String._bridgeToObjectiveC()();
    [v27 setKey:v38];

    v39 = String._bridgeToObjectiveC()();
    [v27 setApplication:v39];

    v40 = String._bridgeToObjectiveC()();
    [v27 setUnique:v40];

    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v35 = v57;
    v34 = v58;
    (*(v57 + 8))(v22, v58);
    [v27 setUpdated:isa];

    v33 = 0;
    v23 = v59;
    v24 = v60;
    v26 = v56;
    goto LABEL_14;
  }

  v22 = v55;
  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_25;
  }

  v23 = v59;
  v24 = v60;
  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v25 = *(result + 32);
  while (1)
  {
    v26 = v56;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v27 = v25;
    JSONDecoder.init()();
    v28 = [v27 data];
    if (v28)
    {
      v29 = v28;
      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      sub_10009FE3C();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_1000956CC(v30, v32);

      v33 = v64;
    }

    else
    {

      v33 = 1;
    }

    v35 = v57;
    v34 = v58;
LABEL_14:
    v42 = [v27 updated];

    if (!v42)
    {
      break;
    }

    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v35 + 32))(v24, v26, v34);
    Date.timeIntervalSinceNow.getter();
    if (fabs(v43) <= 86400.0)
    {
      (*(v35 + 8))(v24, v34);
      break;
    }

    v44 = v55;
    Date.init()();
    v45 = Date._bridgeToObjectiveC()().super.isa;
    v46 = *(v35 + 8);
    v46(v44, v34);
    [v27 setUpdated:v45];

    v46(v24, v34);
    v33 = 0;
    if (v23 <= 0)
    {
      goto LABEL_22;
    }

LABEL_17:
    v47 = 0;
    v48 = __OFADD__(v33, 1);
    v49 = v33 + 1;
    if (!v48)
    {
      goto LABEL_18;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v23 = v59;
    v24 = v60;
  }

  if (v33 < v23)
  {
    goto LABEL_17;
  }

LABEL_22:
  v47 = 1;
  v48 = __OFADD__(v33, 1);
  v49 = v33 + 1;
  if (v48)
  {
    goto LABEL_24;
  }

LABEL_18:
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v64 = v49;
  sub_10009FDE8();
  v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v52 = v51;
  v53 = Data._bridgeToObjectiveC()().super.isa;
  [v27 setData:v53];

  sub_1000956CC(v50, v52);

  return v47;
}

unint64_t sub_10009DB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a1;
  v9 = type metadata accessor for Date();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = __chkstk_darwin(v9);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002D47A0;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_10009FD4C();
  *(v15 + 32) = 0x6F70655272656550;
  *(v15 + 40) = 0xEA00000000007472;
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v16;
  *(v15 + 64) = v16;
  *(v15 + 72) = a2;
  *(v15 + 80) = a3;
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = v16;
  *(v15 + 112) = a4;
  *(v15 + 120) = a5;

  v17 = NSPredicate.init(format:_:)();
  [v14 setPredicate:v17];

  sub_10009FDA0(0, &qword_100383150, off_100315878);
  result = NSManagedObjectContext.fetch<A>(_:)();
  v20 = v32;
  v19 = v33;
  v21 = v34;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_16:

    return 0;
  }

  v29 = result;
  v30 = _CocoaArrayWrapper.endIndex.getter();
  result = v29;
  if (!v30)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v22 = *(result + 32);
  }

  v23 = v22;

  v24 = [v23 updated];
  if (!v24)
  {

    return 0;
  }

  v25 = v24;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v19 + 32))(v13, v20, v21);
  Date.timeIntervalSinceNow.getter();
  v27 = v26;

  result = (*(v19 + 8))(v13, v21);
  v28 = v27 / 3600.0 / 24.0;
  if (v28 < 0.0)
  {
    return 0;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v27 / 3600.0 / 24.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v28 < 9.22337204e18)
  {
    return v28;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_10009DEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Date();
  v13 = __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  if (a2 >= 1)
  {
    v40 = &v39 - v17;
    v41 = v18;
    v42 = v16;
    v43 = a1;
    v44 = a3;
    v45 = a5;
    v46 = [objc_opt_self() fetchRequest];
    sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
    sub_100095820(&unk_100383140, &qword_1002D6BD0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1002D47A0;
    *(v19 + 56) = &type metadata for String;
    v20 = sub_10009FD4C();
    *(v19 + 32) = 0x6F70655272656550;
    *(v19 + 40) = 0xEA00000000007472;
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v20;
    v22 = v44;
    v21 = v45;
    *(v19 + 64) = v20;
    *(v19 + 72) = v22;
    *(v19 + 80) = a4;
    *(v19 + 136) = &type metadata for String;
    *(v19 + 144) = v20;
    *(v19 + 112) = v21;
    *(v19 + 120) = a6;

    v23 = NSPredicate.init(format:_:)();
    [v46 setPredicate:v23];

    sub_10009FDA0(0, &qword_100383150, off_100315878);
    v24 = NSManagedObjectContext.fetch<A>(_:)();
    Date.init()();
    v25 = v40;
    Date.addingTimeInterval(_:)();
    v26 = v42;
    v41 = *(v41 + 8);
    (v41)(v15, v42);
    if (v24 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          (v41)(v25, v26);

          return;
        }

        goto LABEL_4;
      }
    }

    else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v27 = *(v24 + 32);
      }

      v28 = v27;

      v29 = v28;
      goto LABEL_12;
    }

    v30 = objc_allocWithZone(CachedData);
    v29 = [v30 initWithContext:v43];
    v31 = String._bridgeToObjectiveC()();
    [v29 setKey:v31];

    v32 = String._bridgeToObjectiveC()();
    [v29 setApplication:v32];

    v33 = String._bridgeToObjectiveC()();
    [v29 setUnique:v33];

LABEL_12:
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v29 setUpdated:isa];

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v47 = 999999;
    sub_10009FDE8();
    v35 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v37 = v36;
    v38 = Data._bridgeToObjectiveC()().super.isa;
    [v29 setData:v38];

    sub_1000956CC(v35, v37);

    (v41)(v25, v26);
  }
}

uint64_t sub_10009E550(uint64_t a1, uint64_t a2)
{
  v4 = (*((swift_isaMask & *v2) + 0xA0))();
  sub_100095820(&qword_100383168, &unk_1002D60B0);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v5;
}

uint64_t sub_10009E610(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v44 = a5;
  v10 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v41 - v12;
  v46 = 0;
  v47 = 0;
  v14 = (*((swift_isaMask & *v5) + 0x80))(v11);
  if (v14)
  {
    (*(*v14 + 200))(aBlock);

    if ((aBlock[0] & 1) == 0)
    {
      v46 = 0xD000000000000018;
      v47 = 0x8000000100299740;
    }
  }

  v15 = (*((swift_isaMask & *v5) + 0xA0))(v14);
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = v15;
  v42 = a3;
  v43 = a1;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = &v46;
  v16[7] = a1;
  v16[8] = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10009FF1C;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1000A040C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031F0C8;
  v18 = _Block_copy(aBlock);
  v19 = v5;
  v20 = v15;

  [v20 performBlockAndWait:v18];
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v22 = v47;
    if (v47)
    {
      v23 = v46;

      v24 = v44;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v44 = v23;
        v28 = v27;
        aBlock[0] = swift_slowAlloc();
        *v28 = 141558787;
        *(v28 + 4) = 1752392040;
        *(v28 + 12) = 2085;
        *(v28 + 14) = sub_1000999E4(v43, a2, aBlock);
        *(v28 + 22) = 2082;
        v29 = [v24 description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = sub_1000999E4(v30, v32, aBlock);

        *(v28 + 24) = v33;
        *(v28 + 32) = 2082;
        v34 = sub_1000999E4(v44, v22, aBlock);

        *(v28 + 34) = v34;
        _os_log_impl(&_mh_execute_header, v25, v26, "skipping reporting peer %{sensitive,mask.hash}s for %{public}s for reason %{public}s", v28, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    else
    {
      v35 = type metadata accessor for TaskPriority();
      (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v37 = v43;
      v38 = v44;
      v36[4] = v19;
      v36[5] = v37;
      v36[6] = a2;
      v36[7] = v38;
      v36[8] = v42;
      v36[9] = a4;
      v39 = v19;

      v40 = v38;
      sub_10009F3A0(0, 0, v13, &unk_1002D60C8, v36);
    }
  }

  return result;
}

uint64_t sub_10009EB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a8;
  v8[29] = v10;
  v8[26] = a6;
  v8[27] = a7;
  v8[24] = a4;
  v8[25] = a5;
  return (_swift_task_switch)(sub_10009EB98, 0, 0);
}

uint64_t sub_10009EB98()
{
  v21 = v0;
  v1 = v0[27];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[26];
    v5 = v0[27];
    v7 = v0[25];
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2085;
    *(v8 + 14) = sub_1000999E4(v7, v6, &v20);
    *(v8 + 22) = 2080;
    v9 = [v5 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_1000999E4(v10, v12, &v20);

    *(v8 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "reporting peer %{sensitive,mask.hash}s for %s", v8, 0x20u);
    swift_arrayDestroy();
  }

  v14 = v0[27];
  v15 = *(v0[24] + OBJC_IVAR____TtC13transparencyd18KTFailureReporting_idsReporting);
  v16 = String._bridgeToObjectiveC()();
  v0[30] = v16;
  v17 = String._bridgeToObjectiveC()();
  v0[31] = v17;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10009EE64;
  v18 = swift_continuation_init();
  v0[17] = sub_100095820(&unk_1003831B0, &qword_1002D6358);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10009F2A4;
  v0[13] = &unk_10031F2B0;
  v0[14] = v18;
  [v15 reportRemotePeerKTFailureWithPushToken:v16 type:v17 ktError:v14 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10009EE64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_10009F21C;
  }

  else
  {
    v2 = sub_10009EF74;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_10009EF74()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 240);

  if (v1)
  {
    v3 = (v0 + 80);
    *(v0 + 176) = 0xD000000000000010;
    *(v0 + 184) = 0x8000000100299870;
    AnyHashable.init<A>(_:)();
    if (!*(v1 + 16))
    {
      goto LABEL_7;
    }

    v4 = sub_10009FA7C(v0 + 80);
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_10009AA34(*(v1 + 56) + 32 * v4, v0 + 144);
    sub_1000A0C08(v0 + 80);

    if (swift_dynamicCast())
    {
      v7 = *(v0 + 224);
      v6 = *(v0 + 232);
      v8 = *(v0 + 192);
      v9 = *(v0 + 176);
      v10 = (*((swift_isaMask & *v8) + 0xA0))();
      v11 = swift_allocObject();
      v11[2] = v8;
      v11[3] = v10;
      v11[4] = v9;
      v11[5] = v7;
      v11[6] = v6;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1000A0C5C;
      *(v12 + 24) = v11;
      *(v0 + 112) = sub_1000A0E98;
      *(v0 + 120) = v12;
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_10009EB40;
      *(v0 + 104) = &unk_10031F328;
      v3 = _Block_copy(v3);
      v13 = v8;
      v14 = v10;

      [v14 performBlockAndWait:v3];

      _Block_release(v3);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
LABEL_7:

        sub_1000A0C08(v3);
      }
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10009F21C(uint64_t a1)
{
  v2 = v1[31];
  v3 = v1[30];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_10009F2A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000A0E50((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100095820(&qword_100382DD0, &unk_1002D7500);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10009F3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000A09FC(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000057C4(v11, &qword_100383170, &qword_1002D78E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000057C4(a3, &qword_100383170, &qword_1002D78E0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000057C4(a3, &qword_100383170, &qword_1002D78E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_10009F798()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KTFailureReporting(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009F88C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10009F984;

  return v6(a1);
}

uint64_t sub_10009F984()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10009FA7C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10009FAC0(a1, v4);
}

unint64_t sub_10009FAC0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10009AA94(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000A0C08(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_10009FB88(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  Logger.init(subsystem:category:)();
  v10 = OBJC_IVAR____TtC13transparencyd18KTFailureReporting_peerReportValue;
  *&v5[OBJC_IVAR____TtC13transparencyd18KTFailureReporting_peerReportValue] = 0;
  *&v5[OBJC_IVAR____TtC13transparencyd18KTFailureReporting_idsReporting] = a1;
  *&v5[OBJC_IVAR____TtC13transparencyd18KTFailureReporting_container] = a2;
  *&v5[OBJC_IVAR____TtC13transparencyd18KTFailureReporting_configBag] = a4;
  *&v5[OBJC_IVAR____TtC13transparencyd18KTFailureReporting_dewConfig] = a3;
  if (a3)
  {
    sub_100095820(&unk_100383130, &unk_1002D60A0);
    type metadata accessor for DewConfigurationBool();
    v11 = a3;
    swift_unknownObjectRetain();
    v12 = a2;
    swift_unknownObjectRetain();
    v13 = v11;
    v18[0] = sub_1000AB140(1);
    v14 = sub_1000A6AFC(0x706552534449544BLL, 0xEF7265655074726FLL, 1, v18, v13, 0xD000000000000013, 0x80000001002996F0);
    swift_beginAccess();
    *&v5[v10] = v14;
  }

  else
  {
    swift_unknownObjectRetain();
    v15 = a2;
    swift_unknownObjectRetain();
  }

  v16 = type metadata accessor for KTFailureReporting(0);
  v19.receiver = v5;
  v19.super_class = v16;
  return objc_msgSendSuper2(&v19, "init");
}

unint64_t sub_10009FD4C()
{
  result = qword_100384430;
  if (!qword_100384430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384430);
  }

  return result;
}

uint64_t sub_10009FDA0(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_10009FDE8()
{
  result = qword_100383158;
  if (!qword_100383158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100383158);
  }

  return result;
}

unint64_t sub_10009FE3C()
{
  result = qword_100383160;
  if (!qword_100383160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100383160);
  }

  return result;
}

uint64_t sub_10009FE90@<X0>(uint64_t a1@<X8>)
{
  result = (*((swift_isaMask & **(v1 + 16)) + 0xB0))(*(v1 + 24), *(v1 + 32), *(v1 + 40), 0x6C61626F6C67, 0xE600000000000000);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

id sub_10009FF1C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  (*((swift_isaMask & *v1) + 0xB0))(v2, v3, v4, 0x6C61626F6C67, 0xE600000000000000);
  if (v8)
  {
    if (((*((swift_isaMask & *v1) + 0xC8))(v2, v3, v4) & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "skipping reporting, global counter too large", v11, 2u);
    }

    *v6 = 0xD000000000000018;
    v6[1] = 0x80000001002998B0;
  }

  else
  {
    _StringGuts.grow(_:)(39);

    v27[0] = 0xD000000000000020;
    v27[1] = 0x80000001002998D0;
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x7379616420;
    v13._object = 0xE500000000000000;
    String.append(_:)(v13);
    *v6 = 0xD000000000000020;
    v6[1] = 0x80000001002998D0;
  }

LABEL_8:
  if ((*((swift_isaMask & *v1) + 0xC0))(v2, v3, v4, v5, v7))
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[0] = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2085;
      *(v16 + 14) = sub_1000999E4(v5, v7, v27);
      _os_log_impl(&_mh_execute_header, v14, v15, "skipping reporting, peer %{sensitive,mask.hash}s counter too large", v16, 0x16u);
      sub_10009A9E8(v17);
    }

    *v6 = 0xD000000000000016;
    v6[1] = 0x8000000100299890;
  }

  v27[0] = 0;
  v18 = [v2 save:v27];
  v19 = v27[0];
  if (v18)
  {

    return v19;
  }

  else
  {
    v21 = v27[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "database save failed %{public}@", v24, 0xCu);
      sub_1000057C4(v25, &unk_100383290, &unk_1002D5BA0);
    }

    *v6 = xmmword_1002D6060;
  }
}

uint64_t sub_1000A0434(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A044C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A0510;

  return sub_10009EB68(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1000A0510()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for KTFailureReporting(uint64_t a1)
{
  result = qword_10038EFC0;
  if (!qword_10038EFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000A0654()
{
  result = qword_100383178;
  if (!qword_100383178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100383178);
  }

  return result;
}

uint64_t sub_1000A06C0(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t getEnumTagSinglePayload for KTFailureReporting.ReportValue(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for KTFailureReporting.ReportValue(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000A08F8()
{
  result = qword_10038F0D0[0];
  if (!qword_10038F0D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10038F0D0);
  }

  return result;
}

unint64_t sub_1000A0950()
{
  result = qword_10038F1E0;
  if (!qword_10038F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10038F1E0);
  }

  return result;
}

unint64_t sub_1000A09A8()
{
  result = qword_10038F1E8[0];
  if (!qword_10038F1E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10038F1E8);
  }

  return result;
}

uint64_t sub_1000A09FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A0A6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A0E9C;

  return sub_10009F88C(a1, v4);
}

uint64_t sub_1000A0B24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A0510;

  return sub_10009F88C(a1, v4);
}

void sub_1000A0C5C()
{
  v1 = *(v0 + 24);
  (*((swift_isaMask & **(v0 + 16)) + 0xB8))(v1, *(v0 + 32), *(v0 + 40), *(v0 + 48), 0x6C61626F6C67, 0xE600000000000000);
  v11 = 0;
  v2 = [v1 save:&v11];
  v3 = v11;
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "database save failed %{public}@", v8, 0xCu);
      sub_1000057C4(v9, &unk_100383290, &unk_1002D5BA0);
    }

    else
    {
    }
  }
}

void *sub_1000A0E50(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000A0EA4()
{
  v0 = type metadata accessor for Logger();
  sub_100098130(v0, qword_10038F278);
  sub_10009597C(v0, qword_10038F278);
  return Logger.init(transparencyCategory:)(0x656E6F5A4B43544BLL, 0xE800000000000000);
}

uint64_t sub_1000A0F08()
{
  v1 = OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_shouldRetryStorage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000A0F4C(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_shouldRetryStorage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000A1050(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_serverChangeTokens;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1000A1138()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_reason);

  return v1;
}

uint64_t static KTFetchCloudStorageOperation.lastCKFetch(deps:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 smDataStore];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 getSettingsDate:v4];

  swift_unknownObjectRelease();
  if (v5)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

id KTFetchCloudStorageOperation.__allocating_init(deps:initialFetch:userInteractive:reason:zoneHandler:context:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_fetchOperation] = 0;
  *&v15[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_previousServerChangeToken] = 0;
  v15[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_shouldRetryStorage] = 0;
  v16 = OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_serverChangeTokens;
  *&v15[v16] = sub_1000A3E84(_swiftEmptyArrayStorage);
  Date.init()();
  *&v15[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_deps] = a1;
  *&v15[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_context] = a7;
  v15[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_initialFetch] = a2;
  v15[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_userInteractive] = a3;
  *&v15[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_zoneHandler] = a6;
  v17 = &v15[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_reason];
  *v17 = a4;
  v17[1] = a5;
  v19.receiver = v15;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, "init");
}

id KTFetchCloudStorageOperation.init(deps:initialFetch:userInteractive:reason:zoneHandler:context:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_fetchOperation] = 0;
  *&v7[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_previousServerChangeToken] = 0;
  v7[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_shouldRetryStorage] = 0;
  v15 = OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_serverChangeTokens;
  *&v7[v15] = sub_1000A3E84(_swiftEmptyArrayStorage);
  Date.init()();
  *&v7[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_deps] = a1;
  *&v7[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_context] = a7;
  v7[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_initialFetch] = a2;
  v7[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_userInteractive] = a3;
  *&v7[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_zoneHandler] = a6;
  v16 = &v7[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_reason];
  *v16 = a4;
  v16[1] = a5;
  v18.receiver = v7;
  v18.super_class = type metadata accessor for KTFetchCloudStorageOperation(0);
  return objc_msgSendSuper2(&v18, "init");
}

id sub_1000A17F8()
{
  v1 = [objc_allocWithZone(CKOperationGroup) init];
  [v1 setExpectedSendSize:1];
  _StringGuts.grow(_:)(20);

  String.append(_:)(*(v0 + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_reason));
  v2 = String._bridgeToObjectiveC()();

  [v1 setName:{v2, 0xD000000000000012, 0x8000000100299A80}];

  return v1;
}

void *sub_1000A18D8(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v36 = v1 & 0xC000000000000001;
    v34 = OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_zoneHandler;
    v35 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = &_swiftEmptyDictionarySingleton;
    v33 = v1;
    while (1)
    {
      if (v36)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v35 + 16))
        {
          goto LABEL_29;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
      v11 = *(v37 + v34);
      v12 = [v8 zoneName];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = (*((swift_isaMask & *v11) + 0x60))(v13, v15);

      [v10 setPreviousServerChangeToken:v16];

      if ((v4 & 0xC000000000000001) != 0)
      {
        if (v4 < 0)
        {
          v1 = v4;
        }

        else
        {
          v1 = v4 & 0xFFFFFFFFFFFFFF8;
        }

        v17 = v10;
        v18 = __CocoaDictionary.count.getter();
        if (__OFADD__(v18, 1))
        {
          goto LABEL_31;
        }

        v4 = sub_1000A3870(v1, v18 + 1);
      }

      else
      {
        v19 = v10;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v4;
      v1 = v4;
      v21 = sub_1000A3758(v8);
      v23 = *(v4 + 16);
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_30;
      }

      v27 = v22;
      if (*(v4 + 24) < v26)
      {
        sub_1000A3ABC(v26, isUniquelyReferenced_nonNull_native);
        v1 = v38;
        v21 = sub_1000A3758(v8);
        if ((v27 & 1) != (v28 & 1))
        {
          sub_10009FDA0(0, &qword_100383210, CKRecordZoneID_ptr);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_22:
        v4 = v38;
        if (v27)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v1 = &v38;
      v31 = v21;
      sub_1000A3D24();
      v21 = v31;
      v4 = v38;
      if (v27)
      {
LABEL_4:
        v5 = *(v4 + 56);
        v6 = *(v5 + 8 * v21);
        *(v5 + 8 * v21) = v10;

        goto LABEL_5;
      }

LABEL_23:
      *(v4 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      *(*(v4 + 48) + 8 * v21) = v8;
      *(*(v4 + 56) + 8 * v21) = v10;

      v29 = *(v4 + 16);
      v25 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v25)
      {
        goto LABEL_32;
      }

      *(v4 + 16) = v30;
LABEL_5:
      ++v3;
      v1 = v33;
      if (v9 == i)
      {
        return v4;
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
    __break(1u);
LABEL_33:
    ;
  }

  return &_swiftEmptyDictionarySingleton;
}

Swift::Void __swiftcall KTFetchCloudStorageOperation.groupStart()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_deps);
  v2 = [v1 ckdatabase];
  if (v2)
  {
    v26 = v2;
    v3 = [v1 cloudRecords];
    if (v3)
    {
      v4 = v3;
      isa = [v3 cloudKitZones];
      if (!isa)
      {
        sub_10009FDA0(0, &qword_100383210, CKRecordZoneID_ptr);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      sub_10009FDA0(0, &qword_100383210, CKRecordZoneID_ptr);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = [objc_allocWithZone(NSBlockOperation) init];
      [v0 dependOnBeforeGroupFinished:v7];
      v8 = [objc_allocWithZone(CKFetchRecordZoneChangesOperation) init];
      v9 = *(v0 + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_fetchOperation);
      *(v0 + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_fetchOperation) = v8;
      v10 = v8;

      (*((swift_isaMask & *v0) + 0x120))(v6);

      sub_10009FDA0(0, &qword_100383218, CKFetchRecordZoneChangesConfiguration_ptr);
      sub_1000A3FC8();
      v11 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v10 setConfigurationsByRecordZoneID:v11];

      [v10 setRecordZoneIDs:isa];
      if (*(v0 + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_initialFetch) == 1)
      {
        [v4 clearDataStore:1];
      }

      if (*(v0 + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_userInteractive) == 1)
      {
        [v10 setQualityOfService:25];
      }

      v12 = v10;
      v13 = String._bridgeToObjectiveC()();
      [v12 setName:v13];

      v14 = *((swift_isaMask & *v0) + 0x118);
      v15 = v12;
      v16 = v14();
      [v15 setGroup:v16];

      v17 = swift_allocObject();
      *(v17 + 16) = v0;
      aBlock[4] = sub_1000A4030;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000A2154;
      aBlock[3] = &unk_10031F3A0;
      v18 = _Block_copy(aBlock);
      v19 = v0;

      [v15 setRecordZoneChangeTokensUpdatedBlock:v18];
      _Block_release(v18);
      *(swift_allocObject() + 16) = v19;
      v20 = v19;
      CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.setter();
      *(swift_allocObject() + 16) = v4;
      swift_unknownObjectRetain();
      CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = v4;
      v22 = v20;
      swift_unknownObjectRetain();
      CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v7;
      v24 = v22;
      v25 = v7;
      CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.setter();
      [v26 addOperation:v15];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1000A2154(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v7 = *(a1 + 32);
  if (a4)
  {

    v8 = a2;
    v9 = a3;
    v10 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {

    v13 = a2;
    v14 = a3;
    v12 = 0xF000000000000000;
  }

  v7(a2, a3, v4, v12);

  sub_10009A9D4(v4, v12);
}

void sub_1000A2264(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  if ((a5 & 0x100) == 0)
  {
    v9 = [*(v6 + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_deps) logger];
    v10 = String._bridgeToObjectiveC()();
    [v9 logResultForEvent:v10 hardFailure:1 result:0];

    if (qword_10038F270 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10009597C(v11, qword_10038F278);
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = v6;
      v17 = swift_slowAlloc();
      v109 = v17;
      *v15 = 136315138;
      v18 = [v12 zoneName];
      v19 = a2;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = v20;
      a2 = v19;
      v24 = sub_1000999E4(v23, v22, &v109);

      *(v15 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "zone fetch success: %s ", v15, 0xCu);
      sub_10009A9E8(v17);
      v6 = v16;
    }

    v25 = *(v6 + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_zoneHandler);
    v26 = [v12 zoneName];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    (*((swift_isaMask & *v25) + 0x68))(v27, v29, a2);

    return;
  }

  v31 = a4;
  v104 = *(v6 + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_deps);
  v33 = [v104 logger];
  v34 = String._bridgeToObjectiveC()();
  v35 = _convertErrorToNSError(_:)();
  [v33 logResultForEvent:v34 hardFailure:1 result:v35];

  if (qword_10038F270 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10009597C(v36, qword_10038F278);
  v37 = a1;
  sub_1000A4A08(a2, a3, v31, a5, 1);
  v38 = Logger.logObject.getter();
  v39 = a3;
  v40 = static os_log_type_t.error.getter();

  v105 = v39;
  sub_1000A4A70(a2, v39, v31, a5, 1);
  v103 = v37;
  if (os_log_type_enabled(v38, v40))
  {
    v41 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v109 = v102;
    *v41 = 136315394;
    v42 = v6;
    v43 = [v37 zoneName];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v31;
    v46 = a2;
    v48 = v47;

    v6 = v42;
    v49 = sub_1000999E4(v44, v48, &v109);
    a2 = v46;
    v31 = v45;

    *(v41 + 4) = v49;
    *(v41 + 12) = 2112;
    swift_errorRetain();
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 14) = v50;
    *v101 = v50;
    _os_log_impl(&_mh_execute_header, v38, v40, "zone fetch fail: %s %@", v41, 0x16u);
    sub_1000A4AD8(v101);

    sub_10009A9E8(v102);
  }

  v109 = a2;
  swift_errorRetain();
  sub_100095820(&qword_100382DD0, &unk_1002D7500);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    swift_errorRetain();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    sub_1000A4A70(a2, v105, v31, a5, 1);
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      swift_errorRetain();
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 4) = v74;
      *v73 = v74;
      _os_log_impl(&_mh_execute_header, v70, v71, "KTFetchCloudStorageOperation:recordZoneFetchResult: non CKError: %@", v72, 0xCu);
      sub_1000A4AD8(v73);
    }

    goto LABEL_34;
  }

  v51 = v108;
  v109 = v108;
  sub_1000A4B40(&unk_100385750, type metadata accessor for CKError, &unk_1002D6580);
  _BridgedStoredNSError.code.getter();
  if (v108 > 25)
  {
    switch(v108)
    {
      case 26:
        goto LABEL_18;
      case 112:
        v106 = v6;
        v88 = v103;
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v107 = v92;
          *v91 = 136315138;
          v93 = [v88 zoneName];
          v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v95;

          v97 = sub_1000999E4(v94, v96, &v107);

          *(v91 + 4) = v97;
          _os_log_impl(&_mh_execute_header, v89, v90, "manateeIdentityLost %s, will delete zone", v91, 0xCu);
          sub_10009A9E8(v92);
        }

        v98 = v88;
        v6 = v106;
        (*((swift_isaMask & *v106) + 0x130))(v98);
        goto LABEL_33;
      case 28:
LABEL_18:
        v52 = v6;
        v53 = *(v6 + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_zoneHandler);
        v54 = [v103 zoneName];
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        (*((swift_isaMask & *v53) + 0x78))(v55, v57, sub_1000A4FD4, 0);

        v58 = [objc_allocWithZone(KTPendingFlag) initWithFlag:@"CloudKitZoneRecreate" delayInSeconds:0.1];
        v59 = v103;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v109 = v63;
          *v62 = 136315138;
          v64 = [v59 zoneName];
          v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v67 = v66;

          v68 = sub_1000999E4(v65, v67, &v109);

          *(v62 + 4) = v68;
          v69 = "will recreate the zone %s";
LABEL_27:
          _os_log_impl(&_mh_execute_header, v60, v61, v69, v62, 0xCu);
          sub_10009A9E8(v63);

          goto LABEL_28;
        }

        goto LABEL_28;
    }

    goto LABEL_32;
  }

  if (v108 != 5)
  {
    if (v108 == 21)
    {
      v52 = v6;
      v75 = *(v6 + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_zoneHandler);
      v76 = [v103 zoneName];
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      (*((swift_isaMask & *v75) + 0x68))(v77, v79, 0);

      v80 = objc_allocWithZone(KTPendingFlag);
      v81 = String._bridgeToObjectiveC()();
      v58 = [v80 initWithFlag:v81 delayInSeconds:0.1];

      v82 = v103;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v107 = v63;
        *v62 = 136315138;
        v83 = [v82 zoneName];
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;

        v87 = sub_1000999E4(v84, v86, &v107);

        *(v62 + 4) = v87;
        v69 = "will re-fetch the zone %s";
        goto LABEL_27;
      }

LABEL_28:

      v6 = v52;
      goto LABEL_35;
    }

LABEL_32:
    (*((swift_isaMask & *v6) + 0xE0))(1);
  }

LABEL_33:

LABEL_34:
  v58 = 0;
LABEL_35:
  v99 = _convertErrorToNSError(_:)();
  [v6 setError:v99];

  if (v58)
  {
    v100 = [v104 flagHandler];
    if (v100)
    {
      [v100 handlePendingFlag:v58];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1000A2ECC(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_zoneHandler];
  v5 = [a1 zoneName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  (*((swift_isaMask & *v4) + 0x78))(v6, v8, sub_1000A3178, 0);

  sub_10009FDA0(0, &unk_1003832A0, CKModifyRecordZonesOperation_ptr);
  sub_100095820(&qword_100384A50, &qword_1002D7650);
  v9 = swift_allocObject();
  LOBYTE(v5) = v9;
  *(v9 + 16) = xmmword_1002D6360;
  *(v9 + 32) = a1;
  v10 = a1;
  v21.value._rawValue = 0;
  v21.is_nil = v5;
  v11.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v21, v22).super.super.super.super.isa;
  [(objc_class *)v11.super.super.super.super.isa setQualityOfService:25];
  [v2 dependOnBeforeGroupFinished:v11.super.super.super.super.isa];
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  v20[4] = sub_1000A4B88;
  v20[5] = v12;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1000A31E0;
  v20[3] = &unk_10031F490;
  v13 = _Block_copy(v20);
  v14 = objc_opt_self();
  v15 = v2;
  v16 = [v14 blockOperationWithBlock:v13];
  _Block_release(v13);

  [v16 addDependency:v11.super.super.super.super.isa];
  [v15 dependOnBeforeGroupFinished:v16];
  v17 = [v15 operationQueue];
  [v17 addOperation:v16];

  v18 = [*&v15[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_deps] ckdatabase];
  if (v18)
  {
    v19 = v18;
    [v18 addOperation:v11.super.super.super.super.isa];
  }
}

uint64_t sub_1000A317C(void *a1)
{
  if (a1)
  {
    [a1 setZoneCreated:0];
    [a1 setZoneSubscribed:0];
    [a1 setServerChangeToken:0];
  }

  return 1;
}

uint64_t sub_1000A31E0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id KTFetchCloudStorageOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KTFetchCloudStorageOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000A33AC(uint64_t a1)
{
  v2 = sub_1000A4B40(&unk_100385750, type metadata accessor for CKError, &unk_1002D6580);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000A3418(uint64_t a1)
{
  v2 = sub_1000A4B40(&unk_100385750, type metadata accessor for CKError, &unk_1002D6580);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000A3484(void *a1, uint64_t a2)
{
  v4 = sub_1000A4B40(&unk_100385750, type metadata accessor for CKError, &unk_1002D6580);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000A3514(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A4B40(&unk_100385750, type metadata accessor for CKError, &unk_1002D6580);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000A3590(uint64_t a1)
{
  v2 = sub_1000A4B40(&qword_1003832F0, type metadata accessor for CKError, &unk_1002D653C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A35FC(uint64_t a1)
{
  v2 = sub_1000A4B40(&qword_1003832F0, type metadata accessor for CKError, &unk_1002D653C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000A3668(uint64_t a1)
{
  v2 = sub_1000A4B40(&unk_100385750, type metadata accessor for CKError, &unk_1002D6580);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000A36D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A4B40(&unk_100385750, type metadata accessor for CKError, &unk_1002D6580);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_1000A3758(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000A379C(a1, v4);
}

unint64_t sub_1000A379C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10009FDA0(0, &qword_100383210, CKRecordZoneID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

Swift::Int sub_1000A3870(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100095820(&qword_100383338, &qword_1002D66A0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_10009FDA0(0, &qword_100383210, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_10009FDA0(0, &qword_100383218, CKFetchRecordZoneChangesConfiguration_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1000A3ABC(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_1000A3ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100095820(&qword_100383338, &qword_1002D66A0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_1000A3D24()
{
  v1 = v0;
  sub_100095820(&qword_100383338, &qword_1002D66A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

  return result;
}

unint64_t sub_1000A3E84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100383340, qword_1002D66A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1000A3758(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for KTFetchCloudStorageOperation(uint64_t a1)
{
  result = qword_10038F298;
  if (!qword_10038F298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000A3FC8()
{
  result = qword_100383220;
  if (!qword_100383220)
  {
    sub_10009FDA0(255, &qword_100383210, CKRecordZoneID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100383220);
  }

  return result;
}

void *sub_1000A4030(void *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(*(v2 + 16) + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_zoneHandler);
    v6 = a2;
    v7 = [v3 zoneName];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = *((swift_isaMask & *v4) + 0x68);
    v12 = v6;
    v11(v8, v10, a2);
  }

  return result;
}

uint64_t sub_1000A411C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000A41A4(void *a1)
{
  v3 = *(v1 + 16);
  if (qword_10038F270 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10009597C(v4, qword_10038F278);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "delete block: %@", v8, 0xCu);
    sub_1000A4AD8(v9);
  }

  return [v3 deleteRecordIDWithCkrecordID:v5];
}

void sub_1000A42F4(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v6 = *(v3 + 16);
    if (qword_10038F270 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10009597C(v7, qword_10038F278);
    v8 = a1;
    sub_10000F1B0(a2, 1);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    sub_10000F1C8(a2, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412546;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      v13 = v8;
      sub_10000F1B0(a2, 1);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "merge error: %@ %@", v11, 0x16u);
      sub_100095820(&unk_100383290, &unk_1002D5BA0);
      swift_arrayDestroy();
    }

    v27 = _convertErrorToNSError(_:)();
    [v6 setError:v27];
  }

  else
  {
    v15 = *(v3 + 24);
    if (qword_10038F270 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10009597C(v16, qword_10038F278);
    v17 = a1;
    sub_10000F1B0(a2, 0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    sub_10000F1C8(a2, 0);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v21 = v17;
      *(v20 + 12) = 2080;
      v23 = v17;
      v24 = CKRecord.recordType.getter();
      v26 = sub_1000999E4(v24, v25, &v28);

      *(v20 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "merge block: %@[%s]", v20, 0x16u);
      sub_1000A4AD8(v21);

      sub_10009A9E8(v22);
    }

    [v15 updatedRecordWithCkrecord:a2];
  }
}

void sub_1000A4678(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a2)
  {
    if (qword_10038F270 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10009597C(v6, qword_10038F278);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_1000A4FB0(a1, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "fetchRecordZoneChangesResultBlock: %@", v9, 0xCu);
      sub_1000A4AD8(v10);
    }

    v12 = _convertErrorToNSError(_:)();
    [v4 setError:v12];
  }

  else
  {
    v13 = [*&v4[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_deps] smDataStore];
    v14 = String._bridgeToObjectiveC()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v13 setSettingsDate:v14 date:isa];

    swift_unknownObjectRelease();
    if (qword_10038F270 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10009597C(v16, qword_10038F278);
    v12 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v12, v17, "fetchRecordZoneChangesResultBlock", v18, 2u);
    }
  }

  v19 = [*&v4[OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_deps] logger];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v4 error];
  if (v21)
  {
    v22 = v21;
    v23 = _convertErrorToNSError(_:)();
  }

  else
  {
    v23 = 0;
  }

  [v19 logResultForEvent:v20 hardFailure:0 result:v23];

  v24 = [v4 operationQueue];
  [v24 addOperation:v3];
}

void sub_1000A4A08(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    swift_errorRetain();
  }

  else
  {
    v8 = a1;

    sub_1000A4A5C(a2, a3);
  }
}

void sub_1000A4A5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_100002D78(a1, a2);
  }
}

uint64_t sub_1000A4A70(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    return sub_10009A9D4(a2, a3);
  }
}

uint64_t sub_1000A4AD8(uint64_t a1)
{
  v2 = sub_100095820(&unk_100383290, &unk_1002D5BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A4B40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000A4B88()
{
  v1 = *(v0 + 16);
  v3 = [objc_allocWithZone(KTPendingFlag) initWithFlag:@"CloudKitZoneRecreate" delayInSeconds:0.1];
  v2 = [*(v1 + OBJC_IVAR____TtC13transparencyd28KTFetchCloudStorageOperation_deps) flagHandler];
  if (v2)
  {
    [v2 handlePendingFlag:v3];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000A4C40(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t sub_1000A4FB0(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1000A5018(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1000A5144@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 88))();
  *a1 = result;
  return result;
}

uint64_t sub_1000A51D4(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1000A5298(double a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1000A52CC(double a1)
{
  result = v1;
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1000A5334()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000A5380(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1000A5458(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000A5498(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1000A54C4()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000A54FC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 88))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000A558C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1000A5650(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1000A56A0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**v1 + 88))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000A571C(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_1000A5780(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_1000A58AC()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_1000A58E4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 88))();
  *a1 = result;
  return result;
}

uint64_t sub_1000A5940(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  swift_beginAccess();
  v5 = *a3;

  return v5;
}

uint64_t sub_1000A5A60(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1000A5B24(double a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

double sub_1000A5BB4(double a1)
{
  if ((*(*v1 + 136))() <= a1 && (*(*v1 + 160))() >= a1)
  {
    return a1;
  }

  v3 = *(*v1 + 88);

  v3();
  return result;
}

double *sub_1000A5C6C(double a1, double a2, double a3)
{
  result = swift_allocObject();
  result[3] = a2;
  result[4] = a3;
  result[2] = a1;
  return result;
}

double *sub_1000A5CB4(double a1, double a2, double a3)
{
  result = v3;
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return result;
}

uint64_t sub_1000A5D78(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1000A5DB8(uint64_t a1)
{
  if ((*(*v1 + 136))() <= a1 && (*(*v1 + 160))() >= a1)
  {
    return a1;
  }

  v3 = *(*v1 + 88);

  return v3();
}

void *sub_1000A5E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[3] = a2;
  result[4] = a3;
  result[2] = a1;
  return result;
}

void *sub_1000A5EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return v3;
}

uint64_t sub_1000A5F08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 184))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A5F8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 120))(*a1, a1[1]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000A5FE8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**v2 + 120))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000A6044()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1000A6074@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

id sub_1000A608C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_1000A60D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_1000A6118()
{
  v0 = swift_allocObject();
  sub_1000A6150();
  return v0;
}

uint64_t sub_1000A6150()
{
  v7[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v7[0] - 8);
  __chkstk_darwin(v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = sub_1000A9FE0(_swiftEmptyArrayStorage);
  sub_1000AA13C();
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_100004940(&unk_1003878F0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095820(&unk_100385410, &qword_1002D66F8);
  sub_1000AA188();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7[0]);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_1000A6398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*v3 + 120))();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = *(a3 + 16);
  *(v8 + 40) = *a3;
  *(v8 + 56) = v9;
  *(v8 + 72) = *(a3 + 32);
  *(v8 + 88) = *(a3 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000AA1EC;
  *(v10 + 24) = v8;
  aBlock[4] = sub_1000A040C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031F578;
  v11 = _Block_copy(aBlock);

  sub_1000AA2E8(a3, v14);

  dispatch_sync(v7, v11);

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A6558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1000AB038(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1000A9200(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1000057C4(a1, &qword_1003834D0, &qword_1002D6700);
    sub_1000A8834(a2, a3, v9);

    return sub_1000057C4(v9, &qword_1003834D0, &qword_1002D6700);
  }

  return result;
}

uint64_t sub_1000A6628()
{
  v1 = (*(*v0 + 120))();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000AA320;
  *(v2 + 24) = v0;
  v5[4] = sub_1000A0E98;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009EB40;
  v5[3] = &unk_10031F5C8;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);

  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A6784()
{

  return v0;
}

uint64_t sub_1000A67AC()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000A6818(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1000A6860(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1000A68A0()
{
  (*(*v0 + 128))(0);
  v1 = sub_1000031DC(_swiftEmptyArrayStorage);
  v2 = *(*v0 + 104);

  return v2(v1);
}

void (*sub_1000A6918(uint64_t a1, uint64_t a2, uint64_t a3))(_BYTE *, void)
{
  result = (*(*v3 + 136))(v12);
  if (__OFADD__(*v8, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v8;
    result(v12, 0);
    sub_1000AA520(a3, v12);
    v9 = *(*v3 + 112);

    v10 = v9(v11);
    sub_1000A6558(v12, a1, a2);
    return v10(v11, 0);
  }

  return result;
}

uint64_t sub_1000A6A1C()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000A6A54()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1000031DC(_swiftEmptyArrayStorage);
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_1000A6A98()
{
  *(v0 + 16) = sub_1000031DC(_swiftEmptyArrayStorage);
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_1000A6AC0()
{
  type metadata accessor for DewGlobalState();
  v0 = swift_allocObject();
  result = sub_1000A6150();
  qword_10038F738 = v0;
  return result;
}

char *sub_1000A6AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  swift_allocObject();
  v16 = sub_1000AA584(a1, a2, a3, a4, a5, a6, a7);

  (*(*(*(v8 + 80) - 8) + 8))(a4);

  return v16;
}

char *sub_1000A6BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v10 = *v7;
  v11 = sub_1000AA584(a1, a2, a3, a4, a5, a6, a7);

  (*(*(*(v10 + 80) - 8) + 8))(a4);

  return v11;
}

uint64_t sub_1000A6C60(uint64_t a1)
{
  *(v1 + *(*v1 + 120)) = -1;
  v3 = *(*v1 + 112);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(v1 + v3, a1, AssociatedTypeWitness);
  return swift_endAccess();
}

char *sub_1000A6D50()
{

  v1 = *(*v0 + 112);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t sub_1000A6E38()
{
  sub_1000A6D50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_1000A6EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  swift_allocObject();
  v14 = sub_1000AA858(a1, a2, a3, a4, a5, a6, a7);

  return v14;
}

void *sub_1000A6F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_1000AA858(a1, a2, a3, a4, a5, a6, a7);

  return v8;
}

uint64_t sub_1000A6F80(uint64_t a1)
{
  *(v1 + 80) = a1;
  *(v1 + 88) = -1;
}

uint64_t sub_1000A6FC0(uint64_t a1)
{
  (*(*v1 + 208))();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = Set.contains(_:)();

  return v2 & 1;
}

uint64_t sub_1000A707C()
{
  v1 = v0;
  if (v0[11] == -1)
  {
  }

  v2 = v0[12];
  v3 = OBJC_IVAR____TtC13transparencyd16DewConfiguration_dewOverrides;
  v4 = *(**(v2 + OBJC_IVAR____TtC13transparencyd16DewConfiguration_dewOverrides) + 120);

  v6 = v4(v5);

  if (v1[11] >= v6)
  {
  }

  v1[11] = v6;
  v7 = *(v2 + v3);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(*v7 + 160);

  v10(v15, v8, v9);

  v11 = v16;
  if (!v16)
  {
    sub_1000057C4(v15, &qword_1003834D0, &qword_1002D6700);
    v18 = 0u;
    v19 = 0u;
    goto LABEL_8;
  }

  v12 = v17;
  sub_1000A0E50(v15, v16);
  v13 = *(v12 + 16);
  *(&v19 + 1) = swift_getAssociatedTypeWitness();
  sub_1000AA7F4(&v18);
  v13(v11, v12);
  sub_10009A9E8(v15);
  if (!*(&v19 + 1))
  {
LABEL_8:
    sub_1000057C4(&v18, &qword_1003834D8, &qword_1002D6708);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  if (swift_dynamicCast())
  {
    v1[10] = v15[0];
  }
}

uint64_t sub_1000A72D0()
{

  return v0;
}

uint64_t sub_1000A7328()
{
  sub_1000A72D0();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_1000A737C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13transparencyd16DewConfiguration_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DewConfiguration.__allocating_init(settings:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  type metadata accessor for DewGlobalOverrides();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000031DC(_swiftEmptyArrayStorage);
  *(v5 + 24) = 0;
  v6 = (*(ObjectType + 104))(v5, a1);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t DewConfiguration.init(settings:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for DewGlobalOverrides();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000031DC(_swiftEmptyArrayStorage);
  *(v3 + 24) = 0;
  v4 = (*(ObjectType + 104))(v3, a1);
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1000A769C(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "resetCloudConfiguration", v5, 2u);
  }

  return (*(**(v2 + OBJC_IVAR____TtC13transparencyd16DewConfiguration_dewOverrides) + 144))();
}

uint64_t sub_1000A776C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Strings(0);
  __chkstk_darwin(v4 - 8);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v51 - v10;
  v12 = type metadata accessor for ConfigurationValue(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DewValue(0);
  __chkstk_darwin(v15 - 8);
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000AA9CC(a1, v17);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v52 = v11;
    v21 = v20;
    v22 = swift_slowAlloc();
    v51 = v9;
    v23 = a1;
    v24 = a2;
    v25 = v22;
    v54[0] = v22;
    *v21 = 136315138;
    v27 = *v17;
    v26 = v17[1];

    sub_1000AAFA8(v17, type metadata accessor for DewValue);
    v28 = sub_1000999E4(v27, v26, v54);

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "cloud dew configuration: %s", v21, 0xCu);
    sub_10009A9E8(v25);
    a2 = v24;
    a1 = v23;
    v9 = v51;

    v11 = v52;
  }

  else
  {

    sub_1000AAFA8(v17, type metadata accessor for DewValue);
  }

  sub_100153AA0(v14);
  sub_1000AB050(v14, v11, &qword_100383F78, &qword_1002D6B18);
  sub_1000AAFA8(v14, type metadata accessor for ConfigurationValue);
  v29 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  if ((*(*(v29 - 8) + 48))(v11, 1, v29) != 1)
  {
    sub_1000AB050(v11, v9, &qword_100383F78, &qword_1002D6B18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      v38 = *v9;
      if (EnumCaseMultiPayload)
      {
        v49 = v9[1];
        v32 = *(a2 + OBJC_IVAR____TtC13transparencyd16DewConfiguration_dewOverrides);
        v33 = *a1;
        v34 = a1[1];
        v35 = type metadata accessor for DewTypeString();
        v36 = swift_allocObject();
        *(v36 + 16) = v38;
        *(v36 + 24) = v49;
        v37 = &off_100383588;
      }

      else
      {
        v32 = *(a2 + OBJC_IVAR____TtC13transparencyd16DewConfiguration_dewOverrides);
        v33 = *a1;
        v34 = a1[1];
        v35 = type metadata accessor for DewTypeInt64();
        v36 = swift_allocObject();
        *(v36 + 16) = v38;
        v37 = &off_100383548;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v39 = *v9;
      v32 = *(a2 + OBJC_IVAR____TtC13transparencyd16DewConfiguration_dewOverrides);
      v33 = *a1;
      v34 = a1[1];
      v35 = type metadata accessor for DewTypeBool();
      v36 = swift_allocObject();
      *(v36 + 16) = v39;
      v37 = &off_1003835A8;
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v40 = v9;
        v41 = v53;
        sub_1000AAF40(v40, v53, type metadata accessor for Strings);
        v42 = *(a2 + OBJC_IVAR____TtC13transparencyd16DewConfiguration_dewOverrides);
        v43 = *a1;
        v44 = a1[1];

        v46 = sub_1000AAA30(v45);

        v47 = type metadata accessor for DewTypeStrings();
        v48 = swift_allocObject();
        *(v48 + 16) = v46;
        v55 = v47;
        v56 = &off_1003835C8;
        v54[0] = v48;
        (*(*v42 + 152))(v43, v44, v54);
        sub_1000AAFA8(v41, type metadata accessor for Strings);
LABEL_15:
        sub_10009A9E8(v54);
        return sub_1000057C4(v11, &qword_100383F78, &qword_1002D6B18);
      }

      v31 = *v9;
      v32 = *(a2 + OBJC_IVAR____TtC13transparencyd16DewConfiguration_dewOverrides);
      v33 = *a1;
      v34 = a1[1];
      v35 = type metadata accessor for DewTypeTimeInterval();
      v36 = swift_allocObject();
      *(v36 + 16) = v31;
      v37 = &off_100383568;
    }

    v55 = v35;
    v56 = v37;
    v54[0] = v36;
    (*(*v32 + 152))(v33, v34, v54);
    goto LABEL_15;
  }

  return sub_1000057C4(v11, &qword_100383F78, &qword_1002D6B18);
}

id sub_1000A7E18()
{
  v1 = OBJC_IVAR____TtC13transparencyd26DewConfigurationObjectiveC_config;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1000A7E6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd26DewConfigurationObjectiveC_config;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1000A7EC4(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_100003D68(a1);
  swift_unknownObjectRelease();
  return v4;
}

id sub_1000A7F08(uint64_t a1)
{
  v1 = sub_100003D68(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1000A80B4(void *a1)
{
  (*(**(v1 + *a1) + 200))(&v3);
  result = v3;
  if (v3 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A8120(char *a1, uint64_t a2, void *a3)
{
  v3 = *(**&a1[*a3] + 200);
  v4 = a1;
  v3(&v6);

  result = v6;
  if (v6 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A8264(char *a1, uint64_t a2, void *a3)
{
  v3 = *(**&a1[*a3] + 200);
  v4 = a1;
  v3(&v6);

  return v6;
}

uint64_t sub_1000A8340(void *a1, double a2)
{
  v3 = *(v2 + *a1);
  v5 = a2;
  return (*(*v3 + 192))(&v5);
}

void sub_1000A83A4(char *a1, double a2, uint64_t a3, void *a4)
{
  v4 = *&a1[*a4];
  v7 = a2;
  v5 = *(*v4 + 192);
  v6 = a1;
  v5(&v7);
}

uint64_t sub_1000A8410()
{
  if (qword_10038F730 != -1)
  {
    swift_once();
  }

  return (*(*qword_10038F738 + 160))();
}

void sub_1000A8500(uint64_t a1, uint64_t a2)
{
  v5 = (*((swift_isaMask & *v2) + 0xA0))();
  (*((swift_isaMask & *v5) + 0x80))(a1, a2);
}

id sub_1000A8730(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_1000A8834@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000574C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000A9574();
      v10 = v12;
    }

    sub_1000AB038((*(v10 + 56) + 40 * v8), a3);
    sub_1000A8EAC(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

Swift::Int sub_1000A88E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100095820(&unk_100383FA0, &qword_1002D6B48);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v43 = *v22;
      v24 = *(v5 + 56) + 56 * v21;
      v25 = *(v24 + 8);
      v26 = *(v24 + 24);
      v40 = *(v24 + 16);
      v41 = *v24;
      v42 = *(v24 + 32);
      v27 = *(v24 + 48);
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v43;
      v16[1] = v23;
      v17 = *(v7 + 56) + 56 * v15;
      *v17 = v41;
      *(v17 + 8) = v25;
      *(v17 + 16) = v40;
      *(v17 + 24) = v26;
      *(v17 + 32) = v42;
      *(v17 + 48) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
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
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_1000A8BE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100095820(&qword_100383F88, &qword_1002D6B30);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1000AB038(v24, v34);
      }

      else
      {
        sub_1000AA520(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1000AB038(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000A8EAC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000A9068(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000574C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000A88E0(v16, a4 & 1);
      v11 = sub_10000574C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000A93C4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 56 * v11;

    return sub_1000AB0B8(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 56 * v11;
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[2];
  *(v25 + 48) = *(a1 + 6);
  *(v25 + 16) = v27;
  *(v25 + 32) = v28;
  *v25 = v26;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

uint64_t sub_1000A9200(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000574C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000A9574();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000A8BE8(v16, a4 & 1);
    v11 = sub_10000574C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    sub_10009A9E8(v22);

    return sub_1000AB038(a1, v22);
  }

  else
  {
    sub_1000A9354(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1000A9354(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000AB038(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1000A93C4()
{
  v1 = v0;
  sub_100095820(&unk_100383FA0, &qword_1002D6B48);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 *= 56;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 48);
        v28 = (*(v4 + 48) + v18);
        v29 = *(v22 + 32);
        *v28 = v21;
        v28[1] = v20;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 24) = v26;
        *(v30 + 32) = v29;
        *(v30 + 48) = v27;
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

  return result;
}

void *sub_1000A9574()
{
  v1 = v0;
  sub_100095820(&qword_100383F88, &qword_1002D6B30);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v22 = 40 * v17;
        sub_1000AA520(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000AB038(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000A971C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000A9ACC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1000A986C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100095820(&qword_100383F80, &unk_1002D74C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1000A9ACC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000A986C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000A9C4C();
      goto LABEL_16;
    }

    sub_1000A9DA8(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000A9C4C()
{
  v1 = v0;
  sub_100095820(&qword_100383F80, &unk_1002D74C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

Swift::Int sub_1000A9DA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100095820(&qword_100383F80, &unk_1002D74C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1000A9FE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&unk_100383FA0, &qword_1002D6B48);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 9)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v10 = i[2];
      v9 = i[3];
      v11 = i[4];
      v21 = i[5];
      v12 = i[6];

      result = sub_10000574C(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 56 * result);
      *v16 = v8;
      v16[1] = v7;
      v16[2] = v10;
      v16[3] = v9;
      v16[4] = v11;
      v16[5] = v21;
      v16[6] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000AA13C()
{
  result = qword_100385400;
  if (!qword_100385400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100385400);
  }

  return result;
}

unint64_t sub_1000AA188()
{
  result = qword_100387900;
  if (!qword_100387900)
  {
    sub_1000967DC(&unk_100385410, &qword_1002D66F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100387900);
  }

  return result;
}

uint64_t sub_1000AA1EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(**(v0 + 16) + 112);

  sub_1000AA2E8(v0 + 40, v10);
  v4 = v3(v10);
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v6;
  *v6 = 0x8000000000000000;
  sub_1000A9068((v0 + 40), v1, v2, isUniquelyReferenced_nonNull_native);

  *v6 = v9;
  return v4(v10, 0);
}

uint64_t sub_1000AA2D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AA320()
{
  result = (*(*v0 + 96))();
  v2 = 0;
  v4 = result + 64;
  v3 = *(result + 64);
  v22 = result;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;
  if ((v6 & v3) != 0)
  {
    while (1)
    {
      v9 = v2;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = (*(v22 + 56) + 56 * (v10 | (v9 << 6)));
      v13 = *v11;
      v12 = v11[1];
      v14 = v11[3];
      v23 = v11[2];
      v15 = v11[5];
      v16 = v11[6];
      sub_100095820(&qword_100383F98, &qword_1002D6B40);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1002D47B0;

      v18._countAndFlagsBits = 2108704;
      v18._object = 0xE300000000000000;
      String.append(_:)(v18);
      v19._countAndFlagsBits = v15;
      v19._object = v16;
      String.append(_:)(v19);

      v20._countAndFlagsBits = 2108704;
      v20._object = 0xE300000000000000;
      String.append(_:)(v20);
      v21._countAndFlagsBits = v23;
      v21._object = v14;
      String.append(_:)(v21);

      *(v17 + 56) = &type metadata for String;
      *(v17 + 32) = v13;
      *(v17 + 40) = v12;
      print(_:separator:terminator:)();

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1000AA520(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_1000AA584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v32 = a6;
  v33 = a7;
  v34 = a4;
  v35 = a5;
  v30 = a1;
  v31 = a3;
  v10 = *(*v7 + 88);
  v11 = *(*v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v15 = &v30 - v14;
  v16 = *(v10 + 24);

  v17 = v16(v11, v10);
  v18 = a2;
  v19 = v30;
  v7[2] = v30;
  v20 = v7 + 2;
  v21 = v32;
  v22 = v33;
  v7[3] = v18;
  v7[4] = v21;
  v23 = v31;
  v7[5] = v22;
  v7[6] = v23;
  v7[7] = v17;
  v7[8] = v24;
  v7[9] = v23;
  (*(v10 + 16))(v11, v10);
  (*(v13 + 32))(&v8[*(*v8 + 112)], v15, AssociatedTypeWitness);
  *(v7 + *(*v7 + 120)) = 0;
  v25 = v35;
  *(v7 + *(*v7 + 128)) = v35;
  v26 = qword_10038F730;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = *(v8 + 2);
  v36[0] = *v20;
  v36[1] = v28;
  v36[2] = *(v8 + 3);
  v37 = *(v8 + 8);
  (*(*qword_10038F738 + 152))(v19, v18, v36);
  return v8;
}

uint64_t *sub_1000AA7F4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_1000AA858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v14 = *v7;
  v15 = *(*v7 + 80);
  v16 = *(*(v14 + 88) + 8);
  v17 = *(v16 + 24);

  v18 = v17(v15, v16);
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = a3;
  v8[7] = v18;
  v8[8] = v19;
  v8[9] = a3;
  v8[10] = a4;
  v8[11] = 0;
  v8[12] = a5;
  v20 = qword_10038F730;
  v21 = a5;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = *(v8 + 2);
  v28[0] = *(v8 + 1);
  v28[1] = v22;
  v28[2] = *(v8 + 3);
  v29 = v8[8];
  v23 = *(*qword_10038F738 + 152);
  sub_1000AA2E8(v28, v27);
  v23(a1, a2, v28);
  sub_1000AB008(v28);
  return v8;
}

uint64_t sub_1000AA9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DewValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AAA30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000A971C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

__n128 sub_1000AAC3C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000AAC58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000AACA0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000AAD20(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t sub_1000AAE98(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000AAF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000AAFA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000AB038(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000AB050(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100095820(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000AB18C()
{
  v1 = *v0;
  sub_1000A4A5C(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1000AB1C0()
{
  v1 = *(v0 + 16);
  sub_1000A4A5C(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1000AB1F4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CloudDeviceData(0) + 24);

  return sub_1000AB284(v3, a1);
}

uint64_t type metadata accessor for CloudDeviceData(uint64_t a1)
{
  result = qword_10038F980;
  if (!qword_10038F980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AB284(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AB2F4()
{
  v1 = *(v0 + *(type metadata accessor for CloudDeviceData(0) + 28));

  return v1;
}

uint64_t sub_1000AB334()
{
  v1 = *(v0 + *(type metadata accessor for CloudDeviceData(0) + 32));

  return v1;
}

uint64_t sub_1000AB374()
{
  type metadata accessor for CloudDeviceData(0);
}

uint64_t sub_1000AB3E0()
{
  v1 = *v0;
  v2 = 0x656B6F5468737570;
  v3 = 1936748641;
  if (v1 != 5)
  {
    v3 = 0x64657463656A6E69;
  }

  v4 = 0x6F6973726556736FLL;
  if (v1 != 3)
  {
    v4 = 0x754E6C6169726573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1635017060;
  if (v1 != 1)
  {
    v5 = 7107700;
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

uint64_t sub_1000AB4AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000B6910(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000AB4E0(uint64_t a1)
{
  v2 = sub_1000AB898();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000AB51C(uint64_t a1)
{
  v2 = sub_1000AB898();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AB558(void *a1)
{
  v3 = v1;
  v5 = sub_100095820(&qword_100383FB8, &qword_1002D6BB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000A0E50(a1, a1[3]);
  sub_1000AB898();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v15 = *v3;
  v16 = v9;
  v14 = 0;
  sub_1000A4A5C(v15, v9);
  sub_1000AB8EC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    sub_10009A9D4(v15, v16);
  }

  else
  {
    sub_10009A9D4(v15, v16);
    v10 = v3[3];
    v15 = v3[2];
    v16 = v10;
    v14 = 1;
    sub_1000A4A5C(v15, v10);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10009A9D4(v15, v16);
    v12 = type metadata accessor for CloudDeviceData(0);
    LOBYTE(v15) = 2;
    type metadata accessor for Date();
    sub_1000B74A0(&qword_100384690, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v15) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + *(v12 + 36));
    v14 = 5;
    sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
    sub_1000ABFAC(&unk_100385190, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v15) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}