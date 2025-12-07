void BroadcomDriver<>.transmit(followUp:with:for:to:with:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = 0;
  v33 = 0;
  v27[0] = a5;
  v27[1] = a7;
  v28 = a6;
  v29 = BYTE2(a6);
  v30 = BYTE3(a6);
  v31 = BYTE4(a6);
  v32 = BYTE5(a6);
  KeyPath = swift_getKeyPath();
  sub_10005DC58(&qword_10058CC30, &qword_100482F30);
  inited = swift_initStackObject();
  *(inited + 32) = 780;
  v17 = inited + 32;
  *(inited + 16) = xmmword_100480F40;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  sub_10000AB0C(a1, a2);
  sub_100288EA0(inited);
  if (v11)
  {

    swift_setDeallocating();
    sub_100016290(v17, &qword_10058CC38, &qword_100482F38);
    v19 = 0xC000000000000000;
    v18 = 0;
  }

  else
  {
    v35 = v10;
    swift_setDeallocating();
    sub_100016290(v17, &qword_10058CC38, &qword_100482F38);
    sub_10000AB0C(0, 0xC000000000000000);
    sub_1000124C8(0, 0xC000000000000000);
    v20 = sub_100037FF8();
    sub_10029EC70(v27, KeyPath, 0, 0xC000000000000000, a8, a9, a10, v20);
    v22 = v21;
    v24 = v23;
    sub_1000124C8(0, 0xC000000000000000);

    sub_1002949B4(7233902, 0xE300000000000000, 779, v22, v24, 1, a8, a9, *(a10 + 16));
    sub_1000124C8(v25, v26);
    v18 = v22;
    v19 = v24;
  }

  sub_1000124C8(v18, v19);
}

void BroadcomDriver<>.transmit(followUp:with:for:to:with:nik:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = 0;
  v33 = 0;
  v27[0] = a5;
  v27[1] = a7;
  v28 = a6;
  v29 = BYTE2(a6);
  v30 = BYTE3(a6);
  v31 = BYTE4(a6);
  v32 = BYTE5(a6);
  KeyPath = swift_getKeyPath();
  sub_10005DC58(&qword_10058CC30, &qword_100482F30);
  inited = swift_initStackObject();
  *(inited + 32) = 780;
  v17 = inited + 32;
  *(inited + 16) = xmmword_100480F40;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  sub_10000AB0C(a1, a2);
  sub_100288EA0(inited);
  if (v12)
  {

    swift_setDeallocating();
    sub_100016290(v17, &qword_10058CC38, &qword_100482F38);
    v19 = 0xC000000000000000;
    v18 = 0;
  }

  else
  {
    v35 = v11;
    swift_setDeallocating();
    sub_100016290(v17, &qword_10058CC38, &qword_100482F38);
    sub_10000AB0C(0, 0xC000000000000000);
    sub_1000124C8(0, 0xC000000000000000);
    v20 = sub_100037FF8();
    sub_10029EC70(v27, KeyPath, 0, 0xC000000000000000, a9, a10, a11, v20);
    v22 = v21;
    v24 = v23;
    sub_1000124C8(0, 0xC000000000000000);

    sub_1002949B4(7233902, 0xE300000000000000, 779, v22, v24, 1, a9, a10, *(a11 + 16));
    sub_1000124C8(v25, v26);
    v18 = v22;
    v19 = v24;
  }

  sub_1000124C8(v18, v19);
}

uint64_t sub_10029BE3C(uint64_t a1, __int16 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v39 = v4;
  v6 = *(a2 + 3);
  v7 = *(a2 + 5);
  v8 = *(a2 + 48);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if ((v3 & 2) != 0)
  {
    v4 = 2;
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = 1;
  }

  LOWORD(v48) = v4;
LABEL_6:
  v9 = sub_1000D3CF8(3, 2uLL, v3, v4);
  if (v2)
  {
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v10 = v48 | (16 * (v9 & 0x30u));
  LOWORD(v48) = v48 | (16 * (v9 & 0x30));
  result = sub_1000E5558(8, 4uLL, v3, v10);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  if ((result & 0xF000) != 0)
  {
    goto LABEL_42;
  }

  if (v6 >> 60 == 15)
  {
    HIBYTE(v47) = 0;
    v12 = v48;
    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_10000AB0C(v5, v6);
    sub_10029C370(&v46, v39, v5, v6, v24);
    result = sub_10002F75C(v39, v5, v6);
    v12 = v48;
    if ((v8 & 1) == 0)
    {
LABEL_12:
      LOWORD(v48) = v12 | 0x100;
      v13 = *(v7 + 16);
      if (v13)
      {
        v14 = (v7 + 32);
        do
        {
          v15 = *v14++;
          swift_beginAccess();
          HIDWORD(v46) = v15;
          v44 = &type metadata for UnsafeMutableRawBufferPointer;
          v45 = &protocol witness table for UnsafeMutableRawBufferPointer;
          v42 = &v46;
          v43 = v49;
          v16 = sub_100029B34(&v42, &type metadata for UnsafeMutableRawBufferPointer);
          v17 = *v16;
          if (*v16 && (v18 = v16[1], v19 = v18 - v17, v18 != v17))
          {
            if (v19 <= 14)
            {
              memset(__dst, 0, sizeof(__dst));
              v41 = v18 - v17;
              memcpy(__dst, v17, v18 - v17);
              v20 = *__dst;
              v21 = v38 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v41 << 16)) << 32);
              v38 = v21;
            }

            else
            {
              type metadata accessor for __DataStorage();
              swift_allocObject();
              v22 = __DataStorage.init(bytes:length:)();
              v23 = v22;
              if (v19 >= 0x7FFFFFFF)
              {
                type metadata accessor for Data.RangeReference();
                v20 = swift_allocObject();
                *(v20 + 16) = 0;
                *(v20 + 24) = v19;
                v21 = v23 | 0x8000000000000000;
              }

              else
              {
                v20 = v19 << 32;
                v21 = v22 | 0x4000000000000000;
              }
            }
          }

          else
          {
            v20 = 0;
            v21 = 0xC000000000000000;
          }

          sub_100002A00(&v42);
          Data.append(_:)();
          swift_endAccess();
          result = sub_1000124C8(v20, v21);
          if (v6 >> 60 != 15)
          {
            sub_10000AB0C(v5, v6);
            Data.append(_:)();
            result = sub_10002F75C(v39, v5, v6);
          }

          --v13;
        }

        while (v13);
      }

      return result;
    }
  }

  LOWORD(v48) = v12 | 0x200;
  v25 = *(v7 + 16);
  if (v25)
  {
    v26 = (v7 + 36);
    do
    {
      v27 = *(v26 - 4);
      v28 = *(v26 - 1);
      v29 = *v26;
      swift_beginAccess();
      HIDWORD(v46) = v27 | (v28 << 16) | (v29 << 24);
      v44 = &type metadata for UnsafeMutableRawBufferPointer;
      v45 = &protocol witness table for UnsafeMutableRawBufferPointer;
      v42 = &v46;
      v43 = v49;
      v30 = sub_100029B34(&v42, &type metadata for UnsafeMutableRawBufferPointer);
      v31 = *v30;
      if (*v30 && (v32 = v30[1], v33 = v32 - v31, v32 != v31))
      {
        if (v33 <= 14)
        {
          memset(__dst, 0, sizeof(__dst));
          v41 = v32 - v31;
          memcpy(__dst, v31, v32 - v31);
          v34 = *__dst;
          v35 = v38 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v41 << 16)) << 32);
          v38 = v35;
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          v36 = __DataStorage.init(bytes:length:)();
          v37 = v36;
          if (v33 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            v34 = swift_allocObject();
            *(v34 + 16) = 0;
            *(v34 + 24) = v33;
            v35 = v37 | 0x8000000000000000;
          }

          else
          {
            v34 = v33 << 32;
            v35 = v36 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v34 = 0;
        v35 = 0xC000000000000000;
      }

      sub_100002A00(&v42);
      Data.append(_:)();
      swift_endAccess();
      result = sub_1000124C8(v34, v35);
      if (v6 >> 60 != 15)
      {
        sub_10000AB0C(v5, v6);
        Data.append(_:)();
        result = sub_10002F75C(v39, v5, v6);
      }

      v26 += 10;
      --v25;
    }

    while (v25);
  }

  return result;
}

uint64_t sub_10029C370@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_10002F214(6, 9uLL, a2, a5);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v9 >> 16)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(a1 + 2) = v9;
  v10 = sub_10002F09C(3, 3uLL, a2);
  v11 = a4 >> 62;
  v12 = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v10);
  if (v12 != 8)
  {
    *(a1 + 14) = v12;
    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }

LABEL_11:
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v15 = *(a3 + 16);
    v14 = *(a3 + 24);
    v16 = __OFSUB__(v14, v15);
    v13 = v14 - v15;
    if (v16)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_13:
    if ((v13 & 0x8000000000000000) == 0)
    {
      if (v13 <= 0xFF)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_16:
      LOBYTE(v13) = 0;
      goto LABEL_17;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(a1 + 14) = 0;
  if (v11 > 1)
  {
    goto LABEL_11;
  }

  if (v11)
  {
LABEL_9:
    LODWORD(v13) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v13 = v13;
    goto LABEL_13;
  }

LABEL_6:
  v13 = HIWORD(a4);
LABEL_17:
  *(a1 + 15) = v13;
  v17 = sub_10002F09C(0, 3uLL, a2);
  result = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v17);
  if (v11 <= 1)
  {
    if (!v11)
    {
      LOWORD(v18) = BYTE6(a4);
      goto LABEL_31;
    }
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_30;
    }

    v21 = *(a3 + 16);
    v20 = *(a3 + 24);
    v16 = __OFSUB__(v20, v21);
    v18 = v20 - v21;
    if (!v16)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  LODWORD(v18) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v18 = v18;
LABEL_27:
    if ((v18 & 0x8000000000000000) == 0)
    {
      if (!(v18 >> 16))
      {
        goto LABEL_31;
      }

      __break(1u);
LABEL_30:
      LOWORD(v18) = 0;
LABEL_31:
      v22 = v18 + 18;
      if ((v22 & 0x10000) == 0)
      {
        v23 = v22 + 1;
        if ((v23 & 0x10000) == 0)
        {
          *a1 = v23;
          return result;
        }

        goto LABEL_39;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_42:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10029C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = sub_100170260(a1, a2);
  v10 = v9;
  v20 = v8;
  v21 = v9;
  v19[3] = &type metadata for Data;
  v19[4] = &protocol witness table for Data;
  v19[0] = a4;
  v19[1] = a5;
  v11 = sub_100029B34(v19, &type metadata for Data);
  v12 = *v11;
  v13 = v11[1];
  sub_10000AB0C(v8, v10);
  sub_10000AB0C(a4, a5);
  sub_100178A18(v12, v13, &v20);
  sub_1000124C8(v8, v10);
  sub_100002A00(v19);
  v14 = v20;
  v15 = v21;
  sub_1002940E0(7233902, 0xE300000000000000, 274, v20, v21, 1);
  if (!v5)
  {
    sub_1000124C8(v16, v17);
  }

  return sub_1000124C8(v14, v15);
}

uint64_t sub_10029C664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v28 = a7;
  v13 = sub_100170260(a1, a2);
  v15 = v14;
  v26 = v13;
  v27 = v14;
  v25[3] = &type metadata for Data;
  v25[4] = &protocol witness table for Data;
  v25[0] = a4;
  v25[1] = a5;
  v16 = sub_100029B34(v25, &type metadata for Data);
  v17 = *v16;
  v18 = v16[1];
  sub_10000AB0C(v13, v15);
  sub_10000AB0C(a4, a5);
  sub_100178A18(v17, v18, &v26);
  sub_1000124C8(v13, v15);
  sub_100002A00(v25);
  v19 = v26;
  v20 = v27;
  sub_1002949B4(7233902, 0xE300000000000000, 274, v26, v27, 1, a6, v28, *(a8 + 16));
  if (v9)
  {
    result = sub_1000124C8(v19, v20);
    *a9 = v9;
  }

  else
  {
    sub_1000124C8(v21, v22);
    return sub_1000124C8(v19, v20);
  }

  return result;
}

uint64_t sub_10029C7B0(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v17[0] = a2;
  v18 = a3;
  v19 = a4;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v15, v16);
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (v4)
  {
    return sub_100002A00(v15);
  }

  v6 = v18;
  v7 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v7 != 2)
    {
LABEL_14:
      sub_100031694(v15, v16);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      v11 = v18;
      v12 = v19;
      v13 = v18;
      v14 = v19;
      sub_100031694(v15, v16);
      sub_10000AB0C(v11, v12);
      sub_1000B8088();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_1000124C8(v13, v14);
      return sub_100002A00(v15);
    }

    v8 = *(v18 + 16);
    v9 = *(v18 + 24);
    v10 = __OFSUB__(v9, v8);
    v6 = v9 - v8;
    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v7)
  {
    goto LABEL_14;
  }

  v10 = __OFSUB__(HIDWORD(v6), v6);
  LODWORD(v6) = HIDWORD(v6) - v6;
  if (v10)
  {
    goto LABEL_17;
  }

  v6 = v6;
LABEL_11:
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 >> 16)
    {
      __break(1u);
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_10029C95C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_10029C9D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100117F20(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100117F20((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100117F20(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100117F20(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100117F20((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void sub_10029CD98(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v17, 0, 15);
      a1(&v15, v17, v17);
      return;
    }

    sub_1000124C8(v7, v6);
    v15 = v7;
    v16 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    sub_10029E180(*(v15 + 16), *(v15 + 24), a1);
    v10 = v16 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v15;
      v4[1] = v10;
      return;
    }

    *v4 = v15;
    goto LABEL_18;
  }

  if (!v8)
  {
    sub_1000124C8(v7, v6);
    v17[0] = v7;
    LOWORD(v17[1]) = v6;
    BYTE2(v17[1]) = BYTE2(v6);
    BYTE3(v17[1]) = BYTE3(v6);
    BYTE4(v17[1]) = BYTE4(v6);
    BYTE5(v17[1]) = BYTE5(v6);
    BYTE6(v17[1]) = BYTE6(v6);
    a1(&v15, v17, v17 + BYTE6(v6));
    v9 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
    *v4 = v17[0];
    v4[1] = v9;
    return;
  }

  v11 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1000124C8(v7, v6);
  *v4 = xmmword_100480A90;
  sub_1000124C8(0, 0xC000000000000000);
  v12 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v12 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
    {
LABEL_22:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v11 = v13;
  }

  if (v12 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_10029E180(v7, v7 >> 32, a1);

  v10 = v11 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v10;
    return;
  }

  *v4 = v7;
  v4[1] = v10;
}

void sub_10029D13C(uint64_t *a1, __int128 *a2, uint64_t **a3, unint64_t a4)
{
  v5 = a3;
  v7 = a1;
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      v47 = *a2;
      v7 = *a3;
      v11 = a3[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) <= 1)
      {
        if (!v12)
        {
          v23 = BYTE6(v11);
LABEL_42:
          if (v23)
          {
            if (v12)
            {
              if (v12 == 2)
              {
                v31 = v7[2];
              }

              else
              {
                v31 = v7;
              }
            }

            else
            {
              v31 = 0;
            }

            if (__OFADD__(v31, v23))
            {
              goto LABEL_105;
            }

            if (v31 + v23 < v31)
            {
LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
              goto LABEL_109;
            }

            Data._copyBytesHelper(to:from:)();
          }

          goto LABEL_82;
        }

        if (__OFSUB__(HIDWORD(v7), v7))
        {
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        v23 = HIDWORD(v7) - v7;
LABEL_41:
        sub_10000AB0C(v7, v11);
        if (v23 < 0)
        {
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        goto LABEL_42;
      }

      goto LABEL_24;
    }

    sub_1000124C8(v9, v8);
    *&v47 = v9;
    *(&v47 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *v7 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v11 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v12 = v9;
    v14 = *(v9 + 16);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = v15;
      v17 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v17))
      {
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v18 = v16 + v14 - v17;
      __DataStorage._length.getter();
      v19 = *(a2 + 2);
      *v18 = *a2;
      *(v18 + 16) = v19;
      v9 = *v5;
      a4 = v5[1];
      v5 = (a4 >> 62);
      if ((a4 >> 62) <= 1)
      {
        if (!v5)
        {
          v20 = BYTE6(a4);
LABEL_49:
          if (v20)
          {
            if (v5)
            {
              if (v5 == 2)
              {
                v32 = *(v9 + 16);
              }

              else
              {
                v32 = v9;
              }
            }

            else
            {
              v32 = 0;
            }

            if (__OFADD__(v32, v20))
            {
              goto LABEL_108;
            }

            if (v32 + v20 < v32)
            {
LABEL_109:
              __break(1u);
LABEL_110:
              __break(1u);
              goto LABEL_111;
            }

            Data._copyBytesHelper(to:from:)();
          }

          goto LABEL_88;
        }

        if (__OFSUB__(HIDWORD(v9), v9))
        {
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
        }

        v20 = HIDWORD(v9) - v9;
LABEL_48:
        sub_10000AB0C(v9, a4);
        if (v20 < 0)
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        goto LABEL_49;
      }

LABEL_28:
      if (v5 != 2)
      {
LABEL_88:
        sub_1000124C8(v9, a4);
        v46 = v11 | 0x8000000000000000;
        *v7 = v12;
LABEL_95:
        v7[1] = v46;
        return;
      }

      v29 = *(v9 + 16);
      v28 = *(v9 + 24);
      v20 = v28 - v29;
      if (__OFSUB__(v28, v29))
      {
        __break(1u);
LABEL_32:
        if (__OFSUB__(HIDWORD(v11), v11))
        {
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        v13 = HIDWORD(v11) - v11;
        goto LABEL_34;
      }

      goto LABEL_48;
    }

    __break(1u);
  }

  else
  {
    if (!v10)
    {
      sub_1000124C8(*a1, v8);
      v47 = *a2;
      v11 = *v5;
      v9 = v5[1];
      v12 = v9 >> 62;
      if ((v9 >> 62) <= 1)
      {
        if (!v12)
        {
          v13 = BYTE6(v9);
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      if (v12 != 2)
      {
        goto LABEL_77;
      }

      v25 = *(v11 + 16);
      v24 = *(v11 + 24);
      v13 = v24 - v25;
      if (!__OFSUB__(v24, v25))
      {
LABEL_34:
        sub_10000AB0C(v11, v9);
        if ((v13 & 0x8000000000000000) == 0)
        {
LABEL_35:
          if (v13)
          {
            if (v12)
            {
              if (v12 == 2)
              {
                v30 = *(v11 + 16);
              }

              else
              {
                v30 = v11;
              }
            }

            else
            {
              v30 = 0;
            }

            if (!__OFADD__(v30, v13))
            {
              if (v30 + v13 >= v30)
              {
                Data._copyBytesHelper(to:from:)();
                goto LABEL_77;
              }

              goto LABEL_106;
            }

            goto LABEL_104;
          }

LABEL_77:
          sub_1000124C8(v11, v9);
          *v7 = v47;
          v7[1] = DWORD2(v47) | ((WORD6(v47) | (BYTE14(v47) << 16)) << 32);
          return;
        }

        goto LABEL_97;
      }

      __break(1u);
LABEL_24:
      if (v12 != 2)
      {
LABEL_82:
        sub_1000124C8(v7, v11);
        return;
      }

      v27 = v7[2];
      v26 = v7[3];
      v23 = v26 - v27;
      if (!__OFSUB__(v26, v27))
      {
        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_28;
    }

    v21 = v8 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000124C8(v9, v8);
    *v7 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
    v22 = v9 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v22 < v9)
      {
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
      {
        goto LABEL_112;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v33 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v21 = v33;
    }

    if (v22 < v9)
    {
      goto LABEL_99;
    }

    v34 = __DataStorage._bytes.getter();
    if (v34)
    {
      v35 = v34;
      v36 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, v36))
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v37 = v35 + v9 - v36;
      __DataStorage._length.getter();
      v38 = *(a2 + 2);
      *v37 = *a2;
      *(v37 + 16) = v38;
      v39 = *v5;
      v40 = v5[1];
      v41 = v40 >> 62;
      if ((v40 >> 62) > 1)
      {
        if (v41 != 2)
        {
LABEL_94:
          sub_1000124C8(v39, v40);

          v46 = v21 | 0x4000000000000000;
          *v7 = v9;
          goto LABEL_95;
        }

        v44 = *(v39 + 16);
        v43 = *(v39 + 24);
        v42 = v43 - v44;
        if (!__OFSUB__(v43, v44))
        {
          goto LABEL_66;
        }

        __break(1u);
      }

      else if (!v41)
      {
        v42 = BYTE6(v40);
LABEL_67:
        if (v42)
        {
          if (v41)
          {
            if (v41 == 2)
            {
              v45 = *(v39 + 16);
            }

            else
            {
              v45 = v39;
            }
          }

          else
          {
            v45 = 0;
          }

          if (__OFADD__(v45, v42))
          {
            goto LABEL_110;
          }

          if (v45 + v42 < v45)
          {
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          Data._copyBytesHelper(to:from:)();
        }

        goto LABEL_94;
      }

      if (__OFSUB__(HIDWORD(v39), v39))
      {
        goto LABEL_116;
      }

      v42 = HIDWORD(v39) - v39;
LABEL_66:
      sub_10000AB0C(v39, v40);
      if (v42 < 0)
      {
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      goto LABEL_67;
    }
  }

  __break(1u);
}

void sub_10029D6F4(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_1000124C8(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_100480A90;
      sub_1000124C8(0, 0xC000000000000000);
      sub_10029E0A4(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1000124C8(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      a1(&v22, &v22 + BYTE6(v5));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v8;
    v3[1] = v9;
    return;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    a1(&v22, &v22);
    return;
  }

  sub_1000124C8(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_100480A90;
  sub_1000124C8(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  v13 = __DataStorage._bytes.getter();
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = __DataStorage._offset.getter();
  v16 = v11 - v15;
  if (__OFSUB__(v11, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v12, v11);
  v18 = v12 - v11;
  if (v17)
  {
    goto LABEL_17;
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

  a1(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v10 | 0x8000000000000000;
}

void sub_10029D9A4(void (*a1)(int *__return_ptr, __int128 *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000124C8(v6, v5);
      *&v15 = v6;
      WORD4(v15) = v5;
      BYTE10(v15) = BYTE2(v5);
      BYTE11(v15) = BYTE3(v5);
      BYTE12(v15) = BYTE4(v5);
      BYTE13(v15) = BYTE5(v5);
      BYTE14(v15) = BYTE6(v5);
      a1(&v14, &v15, &v15 + BYTE6(v5));
      v8 = DWORD2(v15) | ((WORD6(v15) | (BYTE14(v15) << 16)) << 32);
      *v3 = v15;
      v3[1] = v8;
      return;
    }

    v10 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000124C8(v6, v5);
    *v3 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
    v11 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v11 < v6)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_17:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v12 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v10 = v12;
    }

    if (v11 >= v6)
    {

      sub_10029E234(v6, v6 >> 32, a1);

      *v3 = v6;
      v3[1] = v10 | 0x4000000000000000;
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v7 == 2)
  {

    sub_1000124C8(v6, v5);
    *&v15 = v6;
    *(&v15 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v9 = *(&v15 + 1);
    sub_10029E234(*(v15 + 16), *(v15 + 24), a1);
    *v3 = v15;
    v3[1] = v9 | 0x8000000000000000;
  }

  else
  {
    *(&v15 + 7) = 0;
    *&v15 = 0;
    a1(&v14, &v15, &v15);
  }
}

void sub_10029DD18(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v15, 0, 15);
      a1(&v16, v15, v15);
      return;
    }

    sub_1000124C8(v7, v6);
    v16 = v7;
    v17 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    sub_10029E2E4(*(v16 + 16), *(v16 + 24), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v16;
      v4[1] = v10;
      return;
    }

    *v4 = v16;
    goto LABEL_18;
  }

  if (!v8)
  {
    sub_1000124C8(v7, v6);
    v15[0] = v7;
    LOWORD(v15[1]) = v6;
    BYTE2(v15[1]) = BYTE2(v6);
    BYTE3(v15[1]) = BYTE3(v6);
    BYTE4(v15[1]) = BYTE4(v6);
    BYTE5(v15[1]) = BYTE5(v6);
    BYTE6(v15[1]) = BYTE6(v6);
    a1(&v16, v15, v15 + BYTE6(v6));
    v9 = LODWORD(v15[1]) | ((WORD2(v15[1]) | (BYTE6(v15[1]) << 16)) << 32);
    *v4 = v15[0];
    v4[1] = v9;
    return;
  }

  v11 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1000124C8(v7, v6);
  *v4 = xmmword_100480A90;
  sub_1000124C8(0, 0xC000000000000000);
  v12 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v12 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
    {
LABEL_22:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v11 = v13;
  }

  if (v12 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_10029E2E4(v7, v7 >> 32, a1);

  v10 = v11 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v10;
    return;
  }

  *v4 = v7;
  v4[1] = v10;
}

void sub_10029E0A4(void (*a1)(uint64_t, uint64_t))
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;

  v5 = __DataStorage._bytes.getter();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = __DataStorage._offset.getter();
  v8 = v3 - v7;
  if (__OFSUB__(v3, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v4 - v3;
  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v6 + v8, v6 + v8 + v11);
}

char *sub_10029E180(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_10029E234(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_10029E2E4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10029E400(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 == 0x7478655F747665 && a1[1] == 0xE700000000000000;
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 1;
  }

  swift_beginAccess();
  result = 0;
  *(v2 + 80) |= 1uLL;
  return result;
}

uint64_t sub_10029E4E0(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v3 = v15;
  v4 = v16;
  sub_100031694(v14, v15);
  v5 = UnkeyedDecodingContainer.decodeData(with:)(48, v3, v4);
  v7 = v6;
  sub_1002A59C4(v5, v6, v11);
  sub_1000124C8(v5, v7);
  v8 = v13;
  v9 = v12;
  sub_100002A00(v14);
  sub_100002A00(a1);
  return bswap64(v8 | (v9 << 32));
}

void sub_10029E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v52 = a7;
  v53 = a4;
  v48 = a6;
  v49 = a1;
  v55 = a3;
  v50 = a2;
  v58 = a11;
  v46[2] = *(*(*(a11 + 8) + 24) + 16);
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v15 = (v46 - v14);
  v16 = *(a8 - 8);
  __chkstk_darwin();
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = v46 - v19;
  v51 = a5;
  v21 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    v22 = 0;
    if (v21 != 2 || (v24 = *(v53 + 16), v23 = *(v53 + 24), v25 = __OFSUB__(v23, v24), v22 = v23 - v24, !v25))
    {
LABEL_10:
      v54 = v22;
      v47 = a5 >> 62;
      dispatch thunk of static FixedWidthInteger.max.getter();
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          v26 = dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v16 + 8))(v20, a8);
          while (1)
          {
            v27 = v26 < v54;
LABEL_20:
            v34 = v55;
            if (v27)
            {
              goto LABEL_29;
            }

LABEL_28:
            if (*(*(v52 - 8) + 64) < v34)
            {
              goto LABEL_29;
            }

            if (v47 <= 1)
            {
              break;
            }

            if (v47 != 2)
            {
              v38 = 0;
LABEL_41:
              if (__OFADD__(v34, v38))
              {
                goto LABEL_45;
              }

              v56 = sub_10014345C(v34 + v38);
              v57 = v41;
              __chkstk_darwin();
              v42 = v52;
              v46[-12] = v48;
              v46[-11] = v42;
              v46[-10] = a8;
              v46[-9] = a9;
              v43 = v58;
              v46[-8] = a10;
              v46[-7] = v43;
              v44 = v50;
              v46[-6] = v49;
              v46[-5] = v44;
              v45 = v51;
              v46[-4] = v53;
              v46[-3] = v45;
              v46[-2] = v34;
              sub_10029D6F4(sub_10029F280, &v46[-14]);
              return;
            }

            v40 = *(v53 + 16);
            v39 = *(v53 + 24);
            v25 = __OFSUB__(v39, v40);
            v38 = v39 - v40;
            if (!v25)
            {
              goto LABEL_41;
            }

            __break(1u);
LABEL_37:
            v26 = dispatch thunk of BinaryInteger._lowWord.getter();
            v15(v20, a8);
          }

          if (v47)
          {
            LODWORD(v38) = HIDWORD(v53) - v53;
            if (__OFSUB__(HIDWORD(v53), v53))
            {
              goto LABEL_46;
            }

            v38 = v38;
          }

          else
          {
            v38 = BYTE6(v51);
          }

          goto LABEL_41;
        }

        v32 = v54;
      }

      else
      {
        v46[1] = v11;
        v28 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v29 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v28)
        {
          if (v29 <= 64)
          {
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v35 = dispatch thunk of static Comparable.< infix(_:_:)();
            v15 = *(v16 + 8);
            v15(v18, a8);
            if ((v35 & 1) == 0)
            {
              goto LABEL_37;
            }

            v15(v20, a8);
LABEL_29:
            sub_10000B02C();
            swift_allocError();
            *v37 = xmmword_100481860;
            *(v37 + 16) = 0;
            swift_willThrow();
            return;
          }

          v56 = v54;
          sub_100086E78();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v30 = dispatch thunk of static Comparable.< infix(_:_:)();
          v31 = *(v16 + 8);
          v31(v18, a8);
          v31(v20, a8);
LABEL_27:
          v34 = v55;
          if ((v30 & 1) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        if (v29 < 64)
        {
          v33 = dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v16 + 8))(v20, a8);
          v27 = v33 < v54;
          goto LABEL_20;
        }

        v32 = v54;
        if (v54 < 1)
        {
          (*(v16 + 8))(v20, a8);
          v34 = v55;
          goto LABEL_28;
        }
      }

      v56 = v32;
      sub_100086E78();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v30 = dispatch thunk of static Comparable.< infix(_:_:)();
      v36 = *(v16 + 8);
      v36(v18, a8);
      v36(v20, a8);
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v21)
  {
    v22 = BYTE6(v51);
    goto LABEL_10;
  }

  LODWORD(v22) = HIDWORD(v53) - v53;
  if (!__OFSUB__(HIDWORD(v53), v53))
  {
    v22 = v22;
    goto LABEL_10;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

unint64_t sub_10029EBEC()
{
  result = qword_100593920;
  if (!qword_100593920)
  {
    result = swift_getWitnessTable(byte_1004AC788, &type metadata for BroadcomEventMessage, v0, v1);
    atomic_store(result, &qword_100593920);
  }

  return result;
}

uint64_t sub_10029EC40(int a1)
{
  if ((a1 - 1) > 0x10)
  {
    return 15;
  }

  else
  {
    return byte_1004AC838[a1 - 1];
  }
}

void sub_10029EC70(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a2;
  v17 = sub_1002993B0(a2);
  if (v18)
  {
    __break(1u);
  }

  else
  {
    sub_10029E5DC(a1, a2, v17, a3, a4, a5, *(v16 + class metadata base offset for WritableKeyPath), *(v16 + class metadata base offset for WritableKeyPath + 8), a6, a7, a8);
  }
}

unint64_t sub_10029ED4C()
{
  result = qword_100593938;
  if (!qword_100593938)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BroadcomCapabilities, &type metadata for BroadcomCapabilities, v0, v1);
    atomic_store(result, &qword_100593938);
  }

  return result;
}

unint64_t sub_10029EDA4()
{
  result = qword_100593940;
  if (!qword_100593940)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BroadcomCapabilities, &type metadata for BroadcomCapabilities, v0, v1);
    atomic_store(result, &qword_100593940);
  }

  return result;
}

unint64_t sub_10029EDFC()
{
  result = qword_100593948;
  if (!qword_100593948)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BroadcomCapabilities, &type metadata for BroadcomCapabilities, v0, v1);
    atomic_store(result, &qword_100593948);
  }

  return result;
}

unint64_t sub_10029EE54()
{
  result = qword_100593950;
  if (!qword_100593950)
  {
    result = swift_getWitnessTable("92\n", &type metadata for BroadcomCapabilities, v0, v1);
    atomic_store(result, &qword_100593950);
  }

  return result;
}

uint64_t sub_10029EEF0(uint64_t a1)
{
  result = sub_10029EFDC(&qword_100593990, type metadata accessor for AppleBroadcomDriver, protocol conformance descriptor for AppleBroadcomDriver);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for AppleBroadcomDriver(uint64_t a1)
{
  result = qword_100593A28;
  if (!qword_100593A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10029EFDC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10029F080(uint64_t a1)
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

char *sub_10029F164(char *result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = String.count.getter();
    return strncpy(v2, v3, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10029F1DC(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = *(v4 + 16);
  v9[0] = *v4;
  v9[1] = v8;
  v10 = *(v4 + 32);
  sub_10029AECC(a1, a2, v9, v3, v5, v6, v7);
}

uint64_t sub_10029F21C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANAttribute(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10029F330(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1002953E8(a1, a2, **(v3 + 16));
  if (!v4)
  {
    *a3 = v6;
    a3[1] = v7;
  }
}

uint64_t sub_10029F364(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10029F448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = __chkstk_darwin();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16, v16 + *(*(v15 - 8) + 64), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t String.init<A>(cStyleString:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(*(a2 - 8) + 64) >= 2)
  {
    __chkstk_darwin();
    v9[2] = v5;
    v6 = sub_10005DC58(&unk_100599FD0, &qword_100482530);
    sub_10029F448(a1, sub_1002A00E4, v9, a2, &type metadata for Never, v6, &protocol witness table for Never, v7);
    if (v11)
    {
      result = v10;
      v8 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v8 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t String.copy<A, B, C>(to:destinationField:lengthField:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __chkstk_darwin();
  _sSS7CoreP2PE4copy2to16destinationFieldyxz_s15WritableKeyPathCyxq_Gtr0_lF_0(v6, v7, v8, v9);
  sub_100086E78();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  return swift_setAtWritableKeyPath();
}

uint64_t String.hexData.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v5._countAndFlagsBits = 30768;
  v5._object = 0xE200000000000000;
  if (String.hasPrefix(_:)(v5))
  {

    v6 = String.count.getter();
    sub_1002A0598(v6, a1, a2);

    v7 = static String._fromSubstring(_:)();
    v9 = v8;

    v10 = String.hexData.getter(v7, v9);

    return v10;
  }

  sub_10005E2E4();
  if ((StringProtocol.contains<A>(_:)() & 1) == 0)
  {
    result = 0;
    v12 = 0xF000000000000000;
    goto LABEL_11;
  }

  result = String.colonSeparatedHexData.getter();
  if (v12 >> 60 == 15)
  {
LABEL_11:
    v13 = result;
    v14 = v12;
    v15 = String.nonSeparatedHexData.getter();
    sub_100017554(v13, v14);
    return v15;
  }

  return result;
}

uint64_t sub_10029F8F8()
{
  v0 = sub_10008338C(&off_100553068);
  sub_10005DC58(&qword_100593B08, &qword_1004AC858);
  result = swift_arrayDestroy();
  off_100593B00 = v0;
  return result;
}

uint64_t String.colonSeparatedHexData.getter()
{
  String.lowercased()();
  sub_10005E2E4();
  v0 = StringProtocol.components<A>(separatedBy:)();

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (v0 + 40);
    v4 = _swiftEmptyArrayStorage;
    while (v2 < *(v0 + 16))
    {
      v6 = *(v3 - 1);
      v5 = *v3;

      v7 = sub_1002A0218(v6, v5);
      if (v7[2] != 1)
      {

        return 0;
      }

      v8 = *(v4 + 2);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v11 = v4, v10 <= v8))
      {
        v11 = sub_100115F68(isUniquelyReferenced_nonNull_native, v8 + 1, 1, v4);
        v10 = *(v11 + 3) >> 1;
      }

      if (!v7[2])
      {
        goto LABEL_18;
      }

      v12 = *(v11 + 2);
      if (v10 <= v12)
      {
        goto LABEL_17;
      }

      ++v2;
      v11[v12 + 32] = *(v7 + 32);

      ++*(v11 + 2);

      v3 += 2;
      v4 = v11;
      if (v1 == v2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:

    __break(1u);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_13:

    v13 = sub_10002D874(v11);

    return v13;
  }

  return result;
}

uint64_t String.nonSeparatedHexData.getter()
{
  String.lowercased()();
  sub_10005E2E4();
  v0 = StringProtocol.components<A>(separatedBy:)();

  v23 = *(v0 + 16);
  if (v23)
  {
    v2 = 0;
    v3 = (v0 + 40);
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v2 >= *(v0 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      v5 = v4;
      v7 = *(v3 - 1);
      v6 = *v3;

      result = sub_1002A0218(v7, v6);
      v8 = result;
      v9 = v0;
      v10 = *(result + 16);
      v11 = *(v5 + 2);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        goto LABEL_33;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) != 0 && (v13 = *(v5 + 3) >> 1, v4 = v5, v13 >= v12))
      {
        if (*(v8 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        result = sub_100115F68(result, v14, 1, v5);
        v4 = result;
        v13 = *(result + 24) >> 1;
        if (*(v8 + 16))
        {
LABEL_15:
          v15 = *(v4 + 2);
          if (v13 - v15 < v10)
          {
            goto LABEL_35;
          }

          memcpy(&v4[v15 + 32], (v8 + 32), v10);

          if (v10)
          {
            v16 = *(v4 + 2);
            v17 = __OFADD__(v16, v10);
            v18 = v16 + v10;
            if (v17)
            {
              goto LABEL_36;
            }

            *(v4 + 2) = v18;
          }

          goto LABEL_4;
        }
      }

      if (v10)
      {
        goto LABEL_34;
      }

LABEL_4:
      ++v2;

      v3 += 2;
      v0 = v9;
      if (v23 == v2)
      {
        goto LABEL_20;
      }
    }
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_20:

  v19 = sub_10002D874(v4);
  v21 = v20;

  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 == 2)
    {
      result = v19;
      if (*(v19 + 16) != *(v19 + 24))
      {
        return result;
      }
    }

    else
    {
      result = v19;
    }
  }

  else if (v22)
  {
    result = v19;
    if (v19 != v19 >> 32)
    {
      return result;
    }
  }

  else
  {
    result = v19;
    if ((v21 & 0xFF000000000000) != 0)
    {
      return result;
    }
  }

  sub_1000124C8(result, v21);
  return 0;
}

uint64_t String.interfaceIdentifierData.getter()
{
  String.lowercased()();
  sub_10005E2E4();
  v0 = StringProtocol.components<A>(separatedBy:)();

  v19 = *(v0 + 16);
  if (v19)
  {
    v1 = 0;
    v2 = (v0 + 40);
    v3 = _swiftEmptyArrayStorage;
    while (v1 < *(v0 + 16))
    {
      v5 = *(v2 - 1);
      v4 = *v2;

      v6 = sub_1002A0218(v5, v4);
      if (v6[2] != 2)
      {

        return 0;
      }

      v7 = *(v3 + 2);
      v8 = v7 + 2;
      if (__OFADD__(v7, 2))
      {
        goto LABEL_22;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v10 = *(v3 + 3) >> 1, v11 = v3, v10 < v8))
      {
        if (v7 <= v8)
        {
          v12 = v7 + 2;
        }

        else
        {
          v12 = v7;
        }

        v11 = sub_100115F68(isUniquelyReferenced_nonNull_native, v12, 1, v3);
        v10 = *(v11 + 3) >> 1;
      }

      if (!v6[2])
      {
        goto LABEL_25;
      }

      v13 = *(v11 + 2);
      if (v10 - v13 < 2)
      {
        goto LABEL_23;
      }

      *&v11[v13 + 32] = *(v6 + 16);

      v14 = *(v11 + 2);
      v15 = __OFADD__(v14, 2);
      v16 = v14 + 2;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v1;
      *(v11 + 2) = v16;

      v2 += 2;
      v3 = v11;
      if (v19 == v1)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_18:

    v17 = sub_10002D874(v11);

    return v17;
  }

  return result;
}

void *_sSS7CoreP2PE4copy2to16destinationFieldyxz_s15WritableKeyPathCyxq_Gtr0_lF_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(*a2 + class metadata base offset for WritableKeyPath + 8) - 8) + 64);
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  result = sub_1000ED548(sub_1002A0648, v6, a3, a4);
  if (result >= v4)
  {
    result = (v4 - 1);
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1002A00E4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v4 = *(v2 + 16);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (!v5)
    {
      *(result + v6) = 0;
      result = String.init(cString:)();
      *a2 = result;
      a2[1] = v7;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A0130(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v10[2] = a1;
  v10[3] = a4;
  v5 = v4;
  v6 = swift_modifyAtWritableKeyPath();
  sub_10029F448(v7, sub_1002A0668, v10, *(v5 + class metadata base offset for WritableKeyPath + 8), &type metadata for Never, &type metadata for Int, &protocol witness table for Never, v8);
  return v6(v11, 0);
}

void *sub_1002A0218(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = a2;
    v4 = a1;
    v5 = 4 * v2;
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      v7 = String.index(_:offsetBy:limitedBy:)();
      if ((v8 & 1) != 0 || v7 >> 14 == v5)
      {
        break;
      }

      if (qword_10058ABB0 != -1)
      {
        swift_once();
      }

      v9 = off_100593B00;
      v10 = String.subscript.getter();
      if (!v9[2])
      {
        goto LABEL_29;
      }

      v12 = v6;
      v13 = sub_10007D654(v10, v11);
      v6 = v14;

      if ((v6 & 1) == 0)
      {
        goto LABEL_30;
      }

      v15 = v4;
      v16 = *(v9[7] + v13);
      v17 = v15;
      v18 = String.subscript.getter();
      if (!v9[2])
      {
        v6 = v12;
LABEL_29:

LABEL_30:

LABEL_31:
        sub_10000B02C();
        swift_allocError();
        *v34 = xmmword_10047CE70;
        *(v34 + 16) = 2;
        swift_willThrow();
        return v6;
      }

      v20 = sub_10007D654(v18, v19);
      v6 = v21;

      if ((v6 & 1) == 0)
      {
        goto LABEL_30;
      }

      v22 = *(v9[7] + v20);
      v6 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100115F68(0, *(v12 + 16) + 1, 1, v12);
      }

      v24 = *(v6 + 16);
      v23 = *(v6 + 24);
      if (v24 >= v23 >> 1)
      {
        v6 = sub_100115F68((v23 > 1), v24 + 1, 1, v6);
      }

      *(v6 + 16) = v24 + 1;
      *(v6 + v24 + 32) = v22 | (16 * v16);
      v4 = v17;
      v3 = a2;
      if (v5 == String.index(_:offsetBy:)() >> 14)
      {
        return v6;
      }
    }

    if (String.count.getter() != 1)
    {
      goto LABEL_30;
    }

    if (qword_10058ABB0 != -1)
    {
      swift_once();
    }

    v25 = off_100593B00;
    result = sub_100170360(v4, v3);
    if (v27)
    {
      v28 = result;
      v29 = v27;

      if (!v25[2])
      {
        goto LABEL_30;
      }

      v30 = sub_10007D654(v28, v29);
      v32 = v31;

      if (v32)
      {
        v33 = *(v25[7] + v30);
        sub_10005DC58(&qword_10058B3C0, &qword_100481920);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_100480F40;
        *(v6 + 32) = v33;
        return v6;
      }

      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_1002A0598(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

size_t sub_1002A0668@<X0>(char *a1@<X0>, size_t *a2@<X8>)
{
  result = strlcpy(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t Logger.init(subsystem:category:)(char a1, uint64_t a2)
{
  LogCategory.rawValue.getter(a2);

  return Logger.init(subsystem:category:)();
}

uint64_t LogSubsystem.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C7070612E6D6F63;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1002A07B0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE006C6477612E65;
  v3 = *a1;
  v4 = 0xED00006E616E2E65;
  if (v3 == 1)
  {
    v4 = 0xEE006C6477612E65;
  }

  if (*a1)
  {
    v5 = 0x6C7070612E6D6F63;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x80000001004B4EC0;
  }

  if (*a2 != 1)
  {
    v2 = 0xED00006E616E2E65;
  }

  if (*a2)
  {
    v7 = 0x6C7070612E6D6F63;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (*a2)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x80000001004B4EC0;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1002A08A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A0950(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002A09E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002A0A90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P12LogSubsystemO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1002A0AC0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006C6477612E65;
  if (v2 != 1)
  {
    v3 = 0xED00006E616E2E65;
  }

  v4 = v2 == 0;
  if (*v1)
  {
    v5 = 0x6C7070612E6D6F63;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v4)
  {
    v3 = 0x80000001004B4EC0;
  }

  *a1 = v5;
  a1[1] = v3;
}

unint64_t LogCategory.rawValue.getter(char a1)
{
  result = 1953066601;
  switch(a1)
  {
    case 1:
      result = 1886221668;
      break;
    case 2:
      result = 0x65696C4372657375;
      break;
    case 3:
      result = 0x726576697264;
      break;
    case 4:
      result = 0x656369766564;
      break;
    case 5:
      result = 0x7374617473;
      break;
    case 6:
      result = 0x6361667265746E69;
      break;
    case 7:
      result = 1919247728;
      break;
    case 8:
      result = 0x6C6C6F72746E6F63;
      break;
    case 9:
      result = 0x736E617254697073;
      break;
    case 10:
      result = 6516856;
      break;
    case 11:
      result = 0x416B726F7774656ELL;
      break;
    case 12:
      result = 7564900;
      break;
    case 13:
      result = 0x7265766F63736964;
      break;
    case 14:
      result = 0x79786F7250534644;
      break;
    case 15:
      result = 4997968;
      break;
    case 16:
      result = 0x6269726373627573;
      break;
    case 17:
      result = 0x6873696C627570;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 20:
      result = 0x694C656369766564;
      break;
    case 21:
      result = 0x6E6F697463656C65;
      break;
    case 22:
      result = 0x6E614D6172666E69;
      break;
    case 23:
      result = 0x614D656C61636F6CLL;
      break;
    case 24:
      result = 0x7365526F69646172;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    case 26:
      result = 0x74656E7265746E69;
      break;
    case 27:
      result = 0x4D79617765746167;
      break;
    case 28:
      result = 0x676E6974756F72;
      break;
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
      result = 0xD00000000000001BLL;
      break;
    case 31:
      result = 0xD000000000000016;
      break;
    case 32:
      result = 0x6C656E6E616843;
      break;
    case 33:
      result = 0x746E6567414E414ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002A0EE0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = LogCategory.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == LogCategory.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t sub_1002A0F68@<X0>(Swift::String *a1@<X0>, CoreP2P::LogCategory_optional *a2@<X8>)
{
  result = _s7CoreP2P11LogCategoryO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_1002A0F98@<X0>(unint64_t *a1@<X8>)
{
  result = LogCategory.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_1002A0FD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  LogCategory.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A1038(uint64_t a1)
{
  LogCategory.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int sub_1002A108C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  LogCategory.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t _s7CoreP2P11LogCategoryO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x22)
  {
    return 34;
  }

  else
  {
    return v2;
  }
}

unint64_t _s7CoreP2P12LogSubsystemO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1005538C0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002A1240()
{
  result = qword_100593B10;
  if (!qword_100593B10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LogSubsystem, &type metadata for LogSubsystem, v0, v1);
    atomic_store(result, &qword_100593B10);
  }

  return result;
}

unint64_t sub_1002A1298()
{
  result = qword_100593B18;
  if (!qword_100593B18)
  {
    v3 = sub_10005DD04(&qword_100593B20, &qword_1004AC960);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100593B18);
  }

  return result;
}

unint64_t sub_1002A1300()
{
  result = qword_100593B28;
  if (!qword_100593B28)
  {
    result = swift_getWitnessTable("\t)\n", &type metadata for LogCategory, v0, v1);
    atomic_store(result, &qword_100593B28);
  }

  return result;
}

unint64_t sub_1002A1374()
{
  result = qword_100593B30;
  if (!qword_100593B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LogCategory, &type metadata for LogCategory, v0, v1);
    atomic_store(result, &qword_100593B30);
  }

  return result;
}

uint64_t LengthValueHelper.inferredLoad<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v6 = (*(a3 + 32))(a1, a3);
  v8 = v7;
  Data.load<A>(as:)(v6, v7, a2, a4);
  return sub_1000124C8(v6, v8);
}

uint64_t TypeLengthValue.length.getter(uint64_t result)
{
  v2 = (v1 + *(result + 84));
  v3 = *v2;
  v4 = v2[1] >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v7 = v3 + 16;
    v5 = *(v3 + 16);
    v6 = *(v7 + 8);
    v8 = __OFSUB__(v6, v5);
    v3 = v6 - v5;
    if (!v8)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v3), v3))
  {
LABEL_9:
    sub_100086E78();
    return dispatch thunk of BinaryInteger.init<A>(_:)();
  }

  __break(1u);
  return result;
}

uint64_t TypeLengthValue.valueData()(uint64_t a1)
{
  v1 = sub_1002A2FA0(a1);
  sub_10000AB0C(v1, v2);
  return v1;
}

uint64_t LengthValue.valueData()()
{
  NANBitmap.Channel.operatingClass.getter();
  v1 = v0;
  sub_10000AB0C(v0, v2);
  return v1;
}

void LengthValue.init(data:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a1;
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v8 = *(a3 - 8);
  __chkstk_darwin();
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v29 - v10;
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v13 = 0;
    if (v12 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(v33 + 16);
    v14 = *(v33 + 24);
    v16 = __OFSUB__(v14, v15);
    v13 = v14 - v15;
    if (!v16)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v33), v33))
  {
    __break(1u);
    goto LABEL_36;
  }

  v13 = HIDWORD(v33) - v33;
LABEL_10:
  v31 = v13;
  v32 = a2;
  dispatch thunk of static FixedWidthInteger.max.getter();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v34 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    v17 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v18 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v17)
    {
      if (v18 > 64)
      {
LABEL_17:
        sub_100086E78();
        v19 = v30;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v20 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v8 + 8))(v19, a3);
        if ((v20 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_36:
        __break(1u);
        return;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v21 = v30;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v22 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v8 + 8))(v21, a3);
      if (v22)
      {
        goto LABEL_36;
      }

LABEL_22:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_23;
    }

    if (v18 < 64)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    v23 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v24 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v23 & 1) == 0)
    {
      break;
    }

    if (v24 < 65)
    {
      goto LABEL_32;
    }

LABEL_26:
    sub_100086E78();
    v25 = v30;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v26 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v8 + 8))(v25, a3);
    if (v26)
    {
      __break(1u);
LABEL_28:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_33;
  }

  if (v24 >= 64)
  {
    goto LABEL_26;
  }

LABEL_32:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_33:
  v27 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v8 + 8))(v11, a3);
  if (v31 >= v27)
  {
    sub_10000B02C();
    swift_allocError();
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 2;
    swift_willThrow();
    sub_1000124C8(v33, v32);
  }
}

uint64_t LengthValueHelper.parse<A>()(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for BinaryDecoder();
  v8 = (*(a3 + 32))(a1, a3);
  v10 = v9;
  static BinaryDecoder.decode<A>(_:data:)(a2, v8, v9, a2);
  return sub_1000124C8(v8, v10);
}

uint64_t LengthValueHelper.parseForOptional<A>()@<X0>(void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a2 - 1);
  v10 = __chkstk_darwin();
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(v13 + 32))(v10);
  v16 = v15;
  v17 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryDecoder();
  v18 = swift_allocObject();
  v18[5] = &_swiftEmptyDictionarySingleton;
  v18[2] = v14;
  v18[3] = v16;
  v19 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    v20 = 0;
    if (v19 == 2)
    {
      v20 = *(v14 + 16);
    }
  }

  else
  {
    v20 = v14;
    if (!v19)
    {
      v20 = 0;
    }
  }

  v18[4] = v20;
  v21 = v18;
  swift_beginAccess();
  v21[5] = v17;
  v24[3] = &type metadata for BinaryDecoder.UnkeyedContainer;
  v24[4] = sub_1000325F0();
  v24[0] = v21;
  v22 = *sub_100031694(v24, &type metadata for BinaryDecoder.UnkeyedContainer);

  sub_100032670(a2, v22, a2, a3);

  if (!v5)
  {
    (*(v9 + 32))(a4, v12, a2);
    (*(v9 + 56))(a4, 0, 1, a2);
  }

  return sub_100002A00(v24);
}

void TypeLengthValue.init(type:data:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a7;
  v45 = a8;
  v43 = a6;
  v47 = a1;
  v48 = a4;
  v52 = a2;
  v46 = a9;
  v50 = a12;
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v15 = *(a5 - 8);
  __chkstk_darwin();
  v41 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v18 = &v39[-v17];
  v49 = a3;
  v19 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v20 = 0;
    if (v19 != 2)
    {
      goto LABEL_10;
    }

    v22 = *(v52 + 16);
    v21 = *(v52 + 24);
    v20 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v19)
  {
    v20 = BYTE6(v49);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v52), v52))
  {
    __break(1u);
    goto LABEL_37;
  }

  v20 = HIDWORD(v52) - v52;
LABEL_10:
  v42 = v12;
  dispatch thunk of static FixedWidthInteger.max.getter();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v51[0] = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    v40 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v23 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v40)
    {
      if (v23 > 64)
      {
LABEL_17:
        sub_100086E78();
        v24 = v41;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v25 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v15 + 8))(v24, a5);
        if ((v25 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_37:
        __break(1u);
        return;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v26 = v41;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v27 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v15 + 8))(v26, a5);
      if (v27)
      {
        goto LABEL_37;
      }

LABEL_22:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_23;
    }

    if (v23 < 64)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v51[0] = 0x7FFFFFFFFFFFFFFFLL;
    v28 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v29 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v28 & 1) == 0)
    {
      break;
    }

    if (v29 < 65)
    {
      goto LABEL_32;
    }

LABEL_26:
    sub_100086E78();
    v30 = v41;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v31 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v15 + 8))(v30, a5);
    if (v31)
    {
      __break(1u);
LABEL_28:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_33;
  }

  if (v29 >= 64)
  {
    goto LABEL_26;
  }

LABEL_32:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_33:
  v32 = v20;
  v33 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v15 + 8))(v18, a5);
  if (v32 >= v33)
  {
    sub_10000B02C();
    swift_allocError();
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 2;
    swift_willThrow();
    sub_1000124C8(v52, v49);
    (*(*(v48 - 8) + 8))(v47);
  }

  else
  {
    v34 = v48;
    v35 = v46;
    (*(*(v48 - 8) + 32))(v46, v47, v48);
    v51[0] = v34;
    v51[1] = a5;
    v51[2] = v43;
    v51[3] = v44;
    v51[4] = v45;
    v51[5] = a10;
    v51[6] = a11;
    v51[7] = v50;
    v36 = (v35 + *(type metadata accessor for TypeLengthValue(0, v51) + 84));
    v37 = v49;
    *v36 = v52;
    v36[1] = v37;
  }
}

uint64_t LengthValueHelper.load<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X8>)
{
  v6 = (*(a3 + 32))(a1, a3);
  v8 = v7;
  Data.load<A>(as:)(v6, v7, a2, a4);
  return sub_1000124C8(v6, v8);
}

uint64_t TypeLengthValue.encode(to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029B34(v9, v9[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v17, v18);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v3)
  {
    TypeLengthValue.length.getter(a2);
    sub_100031694(v17, v18);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    (*(v6 + 8))(v8, v5);
    v10 = (v2 + *(a2 + 84));
    v12 = v10[1];
    v15 = *v10;
    v11 = v15;
    v16 = v12;
    sub_100031694(v17, v18);
    sub_10000AB0C(v11, v12);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v15, v16);
  }

  return sub_100002A00(v17);
}

uint64_t LengthValue.length.getter(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2 || !__OFSUB__(*(result + 24), *(result + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v6)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
LABEL_9:
    sub_100086E78();
    return dispatch thunk of BinaryInteger.init<A>(_:)();
  }

  __break(1u);
  return result;
}

uint64_t LengthValue.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a3;
  v56 = *(a5 + 8);
  v54[2] = *(*(v56 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v9 = v54 - v8;
  v55 = *(a2 - 8);
  __chkstk_darwin();
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v54 - v12;
  v14 = sub_100029B34(a1, a1[3]);
  v15 = v58;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v15)
  {
    goto LABEL_39;
  }

  v54[0] = v9;
  v54[1] = AssociatedTypeWitness;
  v58 = v11;
  v16 = v55;
  sub_100031694(v60, v61);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v57 = 0;
  v17 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v18 = v16;
  v19 = v58;
  if ((v17 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v59[0] = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v20)
    {
      if (v21 > 64)
      {
LABEL_9:
        sub_100086E78();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v22 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v18 + 8))(v19, a2);
        if ((v22 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v24 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v18 + 8))(v19, a2);
      if (v24)
      {
        goto LABEL_56;
      }

LABEL_14:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_15;
    }

    if (v21 < 64)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v59[0] = 0x7FFFFFFFFFFFFFFFLL;
    v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v26 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v25 & 1) == 0)
    {
      break;
    }

    if (v26 < 65)
    {
      goto LABEL_24;
    }

LABEL_18:
    sub_100086E78();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v27 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v18 + 8))(v19, a2);
    if (v27)
    {
      __break(1u);
LABEL_20:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  if (v26 >= 64)
  {
    goto LABEL_18;
  }

LABEL_24:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_25:
  v28 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v18 + 8))(v13, a2);
  sub_100029B34(a1, a1[3]);
  v29 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for CodingUserInfoKey();
  v31 = sub_100037644(v30, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v29 + 16) || (v32 = sub_10007CF6C(v31), (v33 & 1) == 0))
  {

    goto LABEL_37;
  }

  sub_100002B30(*(v29 + 56) + 32 * v32, v59);

  result = swift_dynamicCast();
  if ((result & 1) == 0 || v63 != 1)
  {
LABEL_37:
    v42 = v61;
    v43 = v62;
    v44 = sub_100031694(v60, v61);
    v45 = v43;
    v14 = v44;
    v46 = v57;
    v47 = UnkeyedDecodingContainer.decodeData(with:)(v28, v42, v45);
    if (!v46)
    {
      v14 = v47;
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  if (__OFADD__(v28, 3))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  v34 = v61;
  v35 = v62;
  v36 = sub_100031694(v60, v61);
  v37 = v35;
  v14 = v36;
  v38 = v57;
  result = UnkeyedDecodingContainer.decodeData(with:)((v28 + 3) & 0xFFFFFFFFFFFFFFFCLL, v34, v37);
  if (v38)
  {
LABEL_38:
    sub_100002A00(v60);
LABEL_39:
    sub_100002A00(a1);
    return v14;
  }

  v40 = 0;
  v41 = v39 >> 62;
  if ((v39 >> 62) > 1)
  {
    if (v41 == 2)
    {
      v40 = *(result + 16);
    }
  }

  else if (v41)
  {
    v40 = result;
  }

  v48 = __OFADD__(v40, v28);
  v49 = v40 + v28;
  if (v48)
  {
    goto LABEL_58;
  }

  if (v41 > 1)
  {
    if (v41 == 2)
    {
      v50 = *(result + 16);
      v51 = *(result + 24);
    }

    else
    {
      v51 = 0;
      v50 = 0;
    }
  }

  else if (v41)
  {
    v50 = result;
    v51 = result >> 32;
  }

  else
  {
    v50 = 0;
    v51 = BYTE6(v39);
  }

  if (v51 < v50 || v49 < v50)
  {
    goto LABEL_59;
  }

  v52 = v39;
  v53 = result;
  v14 = Data._Representation.subscript.getter();
  sub_1000124C8(v53, v52);
LABEL_42:
  sub_100002A00(v60);
  sub_100002A00(a1);
  return v14;
}

uint64_t LengthValue.encode(to:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a6;
  v11 = *(a4 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029B34(v14, v14[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  LengthValue.length.getter(a2, a3, a4, v15, v16, a7);
  sub_100031694(v22, v23);
  v17 = v24;
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  (*(v11 + 8))(v13, a4);
  if (!v17)
  {
    v20 = a2;
    v21 = a3;
    sub_100031694(v22, v23);
    sub_10000AB0C(a2, a3);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v20, v21);
  }

  return sub_100002A00(v22);
}

uint64_t sub_1002A2EE8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = LengthValue.init(from:)(a1, a2[2], a2[3], a3, a2[5]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t sub_1002A2F5C()
{
  NANBitmap.Channel.operatingClass.getter();
  v1 = v0;
  sub_10000AB0C(v0, v2);
  return v1;
}

uint64_t sub_1002A2FC8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002A3040(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xC)
  {
    v7 = 12;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xC)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
    if (((4 * v17) & 0xC) != 0)
    {
      return 16 - ((4 * v17) & 0xC | (v17 >> 2));
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1002A3188(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xC)
  {
    v7 = 12;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xC)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0xC)
    {
      *v18 = a2 - 13;
      v18[1] = 0;
    }

    else
    {
      *v18 = 0;
      v18[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1002A334C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t RSSI.init<A>(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v5 = *(a2 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v21 - v9;
  (*(v5 + 16))(&v21 - v9, a1, a2, v8);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v22 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v21 = a1;
    v11 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v12 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v11)
    {
      a1 = v21;
      if (v12 > 64)
      {
LABEL_8:
        sub_100086E78();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v13 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v5 + 8))(v7, a2);
        if ((v13 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v15 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v5 + 8))(v7, a2);
      if (v15)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    a1 = v21;
    if (v12 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v17 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v16 & 1) == 0)
    {
      break;
    }

    if (v17 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_100086E78();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v18 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v5 + 8))(v7, a2);
    if (v18)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v17 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v19 = dispatch thunk of BinaryInteger._lowWord.getter();
  v20 = *(v5 + 8);
  v20(a1, a2);
  v20(v10, a2);
  return v19;
}

double RSSI.scaled.getter(uint64_t a1)
{
  v1 = a1 + 77.5;
  v2 = v1;
  v3 = fabsf(sqrtf((v2 * v2) + 450.0));
  return v1 / (v3 + v3) + 0.5;
}

uint64_t RSSI.description.getter()
{
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 1833067552;
  v0._object = 0xE400000000000000;
  String.append(_:)(v0);
  return v2;
}

Swift::Int RSSI.hashValue.getter(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_1002A3940()
{
  result = qword_100593C88;
  if (!qword_100593C88)
  {
    result = swift_getWitnessTable("\t%\n", &type metadata for RSSI, v0, v1);
    atomic_store(result, &qword_100593C88);
  }

  return result;
}

uint64_t sub_1002A39E4()
{
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 1833067552;
  v0._object = 0xE400000000000000;
  String.append(_:)(v0);
  return v2;
}

uint64_t NANBloomFilter.description.getter(uint64_t a1, unint64_t a2, unsigned __int16 a3)
{
  v27 = a3;
  v6 = type metadata accessor for Data.Iterator();
  v26 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  v9._countAndFlagsBits = 0x6946206D6F6F6C42;
  v9._object = 0xEE00283C7265746CLL;
  String.append(_:)(v9);
  if ((a3 & 0x100) != 0)
  {
    v10 = 2125385;
  }

  else
  {
    v10 = 0x206E4920746F4ELL;
  }

  if ((a3 & 0x100) != 0)
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 8250;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10000AB0C(a1, a2);
  Data.Iterator.init(_:at:)();
  sub_100085C04();
  dispatch thunk of IteratorProtocol.next()();
  if (v32)
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    v28 = xmmword_100480F40;
    do
    {
      v16 = v31;
      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v17 = swift_allocObject();
      *(v17 + 16) = v28;
      *(v17 + 56) = &type metadata for UInt8;
      *(v17 + 64) = &protocol witness table for UInt8;
      *(v17 + 32) = v16;
      v18 = String.init(format:_:)();
      v20 = v19;
      v29 = v14;
      v30 = v15;

      v21._countAndFlagsBits = v18;
      v21._object = v20;
      String.append(_:)(v21);

      v14 = v29;
      v15 = v30;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v32 != 1);
  }

  (*(v26 + 8))(v8, v6);
  v22._countAndFlagsBits = v14;
  v22._object = v15;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 0x3A7865646E69202CLL;
  v23._object = 0xE900000000000020;
  String.append(_:)(v23);
  LOBYTE(v29) = v27;
  _print_unlocked<A, B>(_:_:)();
  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  return v33;
}

void NANBloomFilter.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  Data.hash(into:)();
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(HIBYTE(a4) & 1);
}

Swift::Int NANBloomFilter.hashValue.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(HIBYTE(a3) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1002A3F70()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1002A3FEC(uint64_t a1)
{
  v2 = *(v1 + 17);
  v3 = *(v1 + 16);
  Data.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_1002A4038(uint64_t a1)
{
  v2 = *(v1 + 17);
  v3 = *(v1 + 16);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1002A40B0()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return NANBloomFilter.description.getter(*v0, *(v0 + 8), v1 | *(v0 + 16));
}

uint64_t sub_1002A40D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v3 ^ v5 ^ 1) & (v2 == v4);
}

unint64_t sub_1002A4138()
{
  result = qword_100593C90;
  if (!qword_100593C90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBloomFilter.Index, &type metadata for NANBloomFilter.Index, v0, v1);
    atomic_store(result, &qword_100593C90);
  }

  return result;
}

unint64_t sub_1002A4190()
{
  result = qword_100593C98;
  if (!qword_100593C98)
  {
    v3 = sub_10005DD04(&qword_100593CA0, &qword_1004ACE40);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100593C98);
  }

  return result;
}

unint64_t sub_1002A41F8()
{
  result = qword_100593CA8;
  if (!qword_100593CA8)
  {
    result = swift_getWitnessTable("!#\n", &type metadata for NANBloomFilter, v0, v1);
    atomic_store(result, &qword_100593CA8);
  }

  return result;
}

uint64_t sub_1002A424C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002A42A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1002A4304()
{
  result = qword_100593CB0;
  if (!qword_100593CB0)
  {
    result = swift_getWitnessTable("A%\n", &type metadata for NANBloomFilter.Index, v0, v1);
    atomic_store(result, &qword_100593CB0);
  }

  return result;
}

uint64_t WiFiError.init(ioctlReturn:)(uint64_t result)
{
  if (result == -1)
  {
    LODWORD(result) = errno.getter();
  }

  return result;
}

uint64_t static WiFiError.securityErrorMessage(from:)(OSStatus a1)
{
  v1 = SecCopyErrorMessageString(a1, 0);
  if (!v1)
  {
    return 0x6E776F6E6B6E75;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

char *static WiFiError.systemErrorMessage.getter(uint64_t a1)
{
  v1 = errno.getter();
  result = strerror(v1);
  if (result)
  {

    return String.init(cString:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WiFiError.apiError.getter(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    return 7;
  }

  if (!a3)
  {
    if (result > -3902)
    {
      switch(result)
      {
        case 0xFFFFF0C3:
          return 5;
        case 0:
          return 0;
        case 0xFFFFF0C4:
          return 2;
      }
    }

    else
    {
      if ((result + 3924) < 2)
      {
        return 6;
      }

      if (result == -3904)
      {
        return 2;
      }
    }

    return 7;
  }

  return result;
}

char *WiFiError.description.getter(unint64_t __errnum, uint64_t a2, unsigned __int8 a3)
{
  v3 = __errnum;
  if (a3 > 1u)
  {
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    if (a3 == 2)
    {
      _StringGuts.grow(_:)(17);
      v8 = 0x676E69737261503CLL;
    }

    else
    {
      _StringGuts.grow(_:)(17);
      v8 = 0x676E69747365543CLL;
    }

    v9 = 0xEE0020726F727245;
    String.append(_:)(*&v8);
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_16;
  }

  if (a3)
  {
    _StringGuts.grow(_:)(17);

    strcpy(v21, "<WiFiP2PError ");
    HIBYTE(v21[1]) = -18;
    v10 = WiFiP2PError.description.getter(v3);
LABEL_15:
    String.append(_:)(*&v10);

LABEL_16:
    v12._countAndFlagsBits = 62;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    return v21[0];
  }

  if (!__errnum)
  {
    v3 = 0xE700000000000000;
    v7 = 0x73736563637553;
    goto LABEL_14;
  }

  if (__errnum < 1)
  {
    if (__errnum <= -103)
    {
      v3 = 0xE700000000000000;
      v7 = 0x6E776F6E6B6E55;
      switch(__errnum)
      {
        case 0xFFFFF0A3:
          v3 = 0xEF64657472617453;
          v7 = 0x20746F4E204D5446;
          goto LABEL_14;
        case 0xFFFFF0A4:
          v17 = "Peer Not Rangeable";
          goto LABEL_41;
        case 0xFFFFF0A5:
          v3 = 0xED0000726F727245;
          v7 = 0x20636972656E6547;
          goto LABEL_14;
        case 0xFFFFF0A6:
          v13 = "Operation Not Permitted";
          goto LABEL_51;
        case 0xFFFFF0A7:
          v3 = 0xEB00000000657275;
          v7 = 0x6C69614620435049;
          goto LABEL_14;
        case 0xFFFFF0A8:
          v20 = "Reference Not Bound";
          goto LABEL_65;
        case 0xFFFFF0A9:
          v3 = 0x80000001004BDC40;
          v7 = 0xD000000000000027;
          goto LABEL_14;
        case 0xFFFFF0AA:
          v19 = "Station Unsupported 802.11n Features";
          goto LABEL_57;
        case 0xFFFFF0AB:
          v17 = "Supplicant Timeout";
          goto LABEL_41;
        case 0xFFFFF0AC:
          v3 = 0xEB000000004B4D50;
          goto LABEL_59;
        case 0xFFFFF0AD:
          v18 = "Cipher Suite Rejected";
          goto LABEL_54;
        case 0xFFFFF0AE:
          v15 = "Invalid RSN Capabilities";
          goto LABEL_36;
        case 0xFFFFF0AF:
          v13 = "Unsupported RSN Version";
          goto LABEL_51;
        case 0xFFFFF0B0:
          v3 = 0xEC000000504D4B41;
          goto LABEL_59;
        case 0xFFFFF0B1:
          v13 = "Invalid Pairwise Cipher";
          goto LABEL_51;
        case 0xFFFFF0B2:
          v16 = "Invalid Group Cipher";
          goto LABEL_68;
        case 0xFFFFF0B3:
          v3 = 0xEA00000000004549;
          goto LABEL_59;
        case 0xFFFFF0B4:
          v18 = "DSSS/OFDM Unsupported";
LABEL_54:
          v3 = (v18 - 32) | 0x8000000000000000;
          v7 = 0xD000000000000015;
          goto LABEL_14;
        case 0xFFFFF0B5:
          v3 = 0x80000001004BDD80;
          v7 = 0xD000000000000016;
          goto LABEL_14;
        case 0xFFFFF0B6:
          v16 = "Unsupported Rate Set";
          goto LABEL_68;
        case 0xFFFFF0B7:
          v7 = 0x6C6C7546205041;
          goto LABEL_14;
        case 0xFFFFF0B8:
          v3 = 0x80000001004BDDC0;
          v7 = 0xD000000000000011;
          goto LABEL_14;
        case 0xFFFFF0B9:
          v3 = 0x80000001004BDDE0;
          v7 = 0xD000000000000026;
          goto LABEL_14;
        case 0xFFFFF0BA:
          v19 = "Authentication Algorithm Unsupported";
LABEL_57:
          v3 = (v19 - 32) | 0x8000000000000000;
          v7 = 0xD000000000000024;
          goto LABEL_14;
        case 0xFFFFF0BB:
          v17 = "Association Denied";
          goto LABEL_41;
        case 0xFFFFF0BC:
          v16 = "Reassociation Denied";
LABEL_68:
          v3 = (v16 - 32) | 0x8000000000000000;
          v7 = 0xD000000000000014;
          goto LABEL_14;
        case 0xFFFFF0BD:
          goto LABEL_27;
        case 0xFFFFF0BE:
          v20 = "Unspecified failure";
          goto LABEL_65;
        case 0xFFFFF0BF:
          v7 = 0x74756F656D6954;
          goto LABEL_14;
        case 0xFFFFF0C0:
          v3 = 0xEE0074616D726F46;
LABEL_59:
          v7 = 0x2064696C61766E49;
          goto LABEL_14;
        case 0xFFFFF0C1:
          v13 = "Operation Not Supported";
          goto LABEL_51;
        case 0xFFFFF0C2:
          goto LABEL_14;
        case 0xFFFFF0C3:
          v20 = "Insufficient Memory";
LABEL_65:
          v3 = (v20 - 32) | 0x8000000000000000;
          v7 = 0xD000000000000013;
          break;
        case 0xFFFFF0C4:
          v17 = "Invalid Parameters";
LABEL_41:
          v3 = (v17 - 32) | 0x8000000000000000;
          v7 = 0xD000000000000012;
          break;
        default:
          goto LABEL_69;
      }

      goto LABEL_14;
    }

    if (__errnum <= -101)
    {
      if (__errnum == -102)
      {
        v3 = 0x80000001004BDB70;
        v7 = 0xD00000000000001CLL;
      }

      else
      {
        v13 = "Invalid Open Parameters";
LABEL_51:
        v3 = (v13 - 32) | 0x8000000000000000;
        v7 = 0xD000000000000017;
      }

      goto LABEL_14;
    }

    if (__errnum == -100)
    {
      v3 = 0x80000001004BDBB0;
      v7 = 0xD000000000000021;
      goto LABEL_14;
    }

    if (__errnum != -1)
    {
LABEL_69:
      v5 = _s7CoreP2P9WiFiErrorO06kernelE7Message4fromSSs5Int32V_tFZ_0(v3);
      goto LABEL_7;
    }

    v14 = errno.getter();
    if (!strerror(v14))
    {
      __break(1u);
LABEL_27:
      v15 = "Unsupported Capabilities";
LABEL_36:
      v3 = (v15 - 32) | 0x8000000000000000;
      v7 = 0xD000000000000018;
      goto LABEL_14;
    }

LABEL_6:
    v5 = String.init(cString:)();
LABEL_7:
    v7 = v5;
    v3 = v6;
LABEL_14:
    _StringGuts.grow(_:)(20);

    v21[0] = 0xD000000000000011;
    v21[1] = 0x80000001004BDB50;
    v10 = v7;
    v11 = v3;
    goto LABEL_15;
  }

  result = strerror(__errnum);
  if (result)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t Error.apiError.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v6 = v9;
  if (v11 > 1u)
  {
    if (v11 != 2)
    {
      sub_1000B2594(v9, v10, 3);
    }

    goto LABEL_9;
  }

  if (!v11)
  {
    if (v9 > -3902)
    {
      switch(v9)
      {
        case 0xFFFFF0C3:
          v6 = 5;
          goto LABEL_10;
        case 0xFFFFF0C4:
          goto LABEL_16;
        case 0:
          v6 = 0;
          goto LABEL_10;
      }
    }

    else
    {
      if ((v9 + 3924) < 2)
      {
        v6 = 6;
        goto LABEL_10;
      }

      if (v9 == -3904)
      {
LABEL_16:
        v6 = 2;
        goto LABEL_10;
      }
    }

LABEL_9:
    v6 = 7;
  }

LABEL_10:
  (*(v2 + 8))(v5, a1);
  return v6;
}

CoreP2P::ParsingError_optional __swiftcall ParsingError.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1005539F8, v2);

  if (v3 == 1)
  {
    v4.value = CoreP2P_ParsingError_incorrectType;
  }

  else
  {
    v4.value = CoreP2P_ParsingError_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ParsingError.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x636572726F636E69;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1002A4C38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x636572726F636E69;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = 0x80000001004B51B0;
  }

  else
  {
    v4 = 0xED00006570795474;
  }

  if (*a2)
  {
    v5 = 0x636572726F636E69;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a2)
  {
    v6 = 0xED00006570795474;
  }

  else
  {
    v6 = 0x80000001004B51B0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002A4CF0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A4D84(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002A4E04(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A4E94@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1005539F8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1002A4EF4(unint64_t *a1@<X8>)
{
  v2 = 0x80000001004B51B0;
  v3 = 0xD000000000000011;
  if (*v1)
  {
    v3 = 0x636572726F636E69;
    v2 = 0xED00006570795474;
  }

  *a1 = v3;
  a1[1] = v2;
}

char *_s7CoreP2P9WiFiErrorO06kernelE7Message4fromSSs5Int32V_tFZ_0(mach_error_t a1)
{
  result = mach_error_string(a1);
  if (result)
  {
    v2 = String.init(cString:)();
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 93;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);

    v5._countAndFlagsBits = 91;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A5014(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (result <= 4)
    {
      if (result > 1)
      {
        return 0x2064696C61766E49;
      }

      if (!result)
      {
        return 0x73736563637553;
      }

      if (result == 1)
      {
        return 0x2064696C61766E49;
      }
    }

    else
    {
      if (result <= 7)
      {
        if (result != 5 && result != 6)
        {
          return 0x6874754120746F4ELL;
        }

        return 0x2064696C61766E49;
      }

      switch(result)
      {
        case 8:
          return 0x44206E6F6974704FLL;
        case 9:
          return 0xD000000000000010;
        case 0xA:
          return 0x706E49206C6C754ELL;
      }
    }

    return 0x6E776F6E6B6E55;
  }

  return result;
}

unint64_t sub_1002A51B0()
{
  result = qword_100593CB8;
  if (!qword_100593CB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ParsingError, &type metadata for ParsingError, v0, v1);
    atomic_store(result, &qword_100593CB8);
  }

  return result;
}

uint64_t sub_1002A5204(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002A521C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002A5264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1002A52D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002A5324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1002A5380(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t WiFiMACAddress.wifiAddress.getter()
{
  v1 = [v0 data];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v4;
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      sub_1000124C8(v2, v4);
      goto LABEL_13;
    }

    v8 = *(v2 + 16);
    v7 = *(v2 + 24);
    result = sub_1000124C8(v2, v5);
    if (!__OFSUB__(v7, v8))
    {
      if (v7 - v8 != 6)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!v6)
    {
      sub_1000124C8(v2, v4);
      if (BYTE6(v4) != 6)
      {
        goto LABEL_13;
      }

LABEL_11:
      v10 = [v0 data];
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      LOBYTE(v10) = Data._Representation.subscript.getter();
      sub_1000124C8(v11, v13);
      v14 = [v0 data];
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      LOBYTE(v14) = Data._Representation.subscript.getter();
      sub_1000124C8(v15, v17);
      v18 = [v0 data];
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      LOBYTE(v18) = Data._Representation.subscript.getter();
      sub_1000124C8(v19, v21);
      v22 = [v0 data];
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      LOBYTE(v22) = Data._Representation.subscript.getter();
      sub_1000124C8(v23, v25);
      v26 = [v0 data];
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      LOBYTE(v26) = Data._Representation.subscript.getter();
      sub_1000124C8(v27, v29);
      v30 = [v0 data];
      v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      LOBYTE(v30) = Data._Representation.subscript.getter();
      sub_1000124C8(v31, v33);
      v34 = v30 << 40;
      v35 = v26 << 32;
      v36 = v22 << 24;
      v37 = v18 << 16;
      v38 = v14 << 8;
      v39 = v10;
      return v38 | v39 | v37 | v36 | v35 | v34;
    }

    result = sub_1000124C8(v2, v4);
    if (!__OFSUB__(HIDWORD(v2), v2))
    {
      if (HIDWORD(v2) - v2 == 6)
      {
        goto LABEL_11;
      }

LABEL_13:
      v39 = 0;
      v38 = 0;
      v37 = 0;
      v36 = 0;
      v35 = 0;
      v34 = 0;
      return v38 | v39 | v37 | v36 | v35 | v34;
    }
  }

  __break(1u);
  return result;
}

void __swiftcall WiFiAddress.init(_:)(CoreP2P::WiFiAddress_optional *__return_ptr retstr, sockaddr_dl *a2)
{
  v6 = v2;
  v7 = v3;
  v4 = sub_1002AAFAC(&v6 + BYTE5(a2), BYTE6(a2));
  sub_1000172CC(v4, v5);
}

uint64_t WiFiAddress.data.getter(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004817D0;
  *(v7 + 32) = v1;
  *(v7 + 33) = v2;
  *(v7 + 34) = v3;
  *(v7 + 35) = v4;
  *(v7 + 36) = v5;
  *(v7 + 37) = v6;
  v8 = sub_10002D874(v7);

  return v8;
}

uint64_t sub_1002A58C4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      if (BYTE6(a2) >= 0x10uLL)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 16)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_13:
    __break(1u);
  }

  if (v2 != 2)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 < 16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1002AAD98(a1, a2, &v9, 1, 0x10uLL);
  return v9;
}

int64_t sub_1002A59C4@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
      if (v8 >= 48)
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
      if (HIDWORD(result) - result >= 48)
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

  if (BYTE6(a2) < 0x30uLL)
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
      v32 = *(v15 + 46);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v30;
      *(a3 + 30) = v31;
      *(a3 + 46) = v32;
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

int64_t sub_1002A5C4C@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
      if (v8 >= 16)
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
      if (HIDWORD(result) - result >= 16)
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

  if (BYTE6(a2) < 0x10uLL)
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
    v25 = vdupq_n_s64(result);
    v26 = vshlq_u64(v25, xmmword_1004841F0);
    v27 = vmovn_s64(vshlq_u64(v25, xmmword_1004841E0));
    v27.i8[1] = v27.i8[4];
    v28 = vzip1_s16(result, v27);
    *v25.i8 = vmovn_s64(vshlq_u64(v25, xmmword_100484200));
    v29 = vmovn_s64(v26);
    v24 = v29.i16[2];
    v29.i8[1] = v29.i8[4];
    v29.i8[2] = v25.i8[0];
    v29.i8[3] = v25.i8[4];
    v21 = vzip1_s32(v28, v29);
    v30 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v30, xmmword_1004817A0), vshlq_u64(v30, xmmword_100481790)));
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
      v24 = *(v15 + 14);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v24;
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

uint64_t sub_1002A5EB4(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 3)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 3)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      swift_willThrow();
      return v8;
    }

    goto LABEL_26;
  }

  if (BYTE6(a2) < 3uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (v2 != 1)
  {
    v18 = a1 >> 8;
    v19 = a1 >> 16;
    return (v18 << 8) | (v19 << 16) | a1;
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_29;
    }

    v13 = (v9 - v12 + v11);
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LOBYTE(a1) = *v13;
      LOBYTE(v18) = v13[1];
      LOBYTE(v19) = v13[2];
      return (v18 << 8) | (v19 << 16) | a1;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_32:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

void *sub_1002A6088@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v4 < 768)
  {
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v10 = a3;
    v11 = *(a1 + 16);
    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      __DataStorage._length.getter();
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v14))
    {
      v15 = v11 - v14 + v13;
      __DataStorage._length.getter();
      if (!v15)
      {
        goto LABEL_25;
      }

LABEL_18:
      v20 = *(v15 + 12);
      memcpy(__dst, (v15 + 14), sizeof(__dst));
      *v10 = *v15;
      *(v10 + 8) = *(v15 + 8);
      *(v10 + 12) = v20;
      return memcpy((v10 + 14), __dst, 0x2F2uLL);
    }

    goto LABEL_22;
  }

  v16 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = a3;
  v17 = __DataStorage._bytes.getter();
  if (!v17)
  {
LABEL_26:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = __DataStorage._offset.getter();
  if (__OFSUB__(v16, v19))
  {
LABEL_23:
    __break(1u);
  }

  v15 = v16 - v19 + v18;
  result = __DataStorage._length.getter();
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
  return result;
}

int64_t sub_1002A6260@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
      if (v8 >= 104)
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
      if (HIDWORD(result) - result >= 104)
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

  if (BYTE6(a2) < 0x68uLL)
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
      v32 = *(v15 + 46);
      v33 = *(v15 + 62);
      *v34 = *(v15 + 78);
      *&v34[10] = *(v15 + 88);
      v30 = *(v15 + 14);
      v31 = *(v15 + 30);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 46) = v32;
      *(a3 + 62) = v33;
      *(a3 + 78) = *v34;
      *(a3 + 88) = *&v34[10];
      *(a3 + 14) = v30;
      *(a3 + 30) = v31;
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

int64_t sub_1002A6510@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
      if (v8 >= 24)
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
      if (HIDWORD(result) - result >= 24)
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

  if (BYTE6(a2) < 0x18uLL)
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
      v31 = *(v15 + 22);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v30;
      *(a3 + 22) = v31;
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

void *sub_1002A6790@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v4 < 468)
  {
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v10 = a3;
    v11 = *(a1 + 16);
    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      __DataStorage._length.getter();
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v14))
    {
      v15 = v11 - v14 + v13;
      __DataStorage._length.getter();
      if (!v15)
      {
        goto LABEL_25;
      }

LABEL_18:
      v20 = *(v15 + 12);
      memcpy(__dst, (v15 + 14), sizeof(__dst));
      *v10 = *v15;
      *(v10 + 8) = *(v15 + 8);
      *(v10 + 12) = v20;
      return memcpy((v10 + 14), __dst, 0x1C6uLL);
    }

    goto LABEL_22;
  }

  v16 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = a3;
  v17 = __DataStorage._bytes.getter();
  if (!v17)
  {
LABEL_26:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = __DataStorage._offset.getter();
  if (__OFSUB__(v16, v19))
  {
LABEL_23:
    __break(1u);
  }

  v15 = v16 - v19 + v18;
  result = __DataStorage._length.getter();
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1002A6968(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 12)
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

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 12)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0xCuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v19 = a1 >> 8;
    v20 = a1 >> 16;
    v18 = HIDWORD(a1);
    v21 = a1 >> 40;
    v22 = HIWORD(a1);
    v23 = HIBYTE(a1);
    return a1 | (v19 << 8) | (v20 << 16) | a1 & 0xFF000000 | (((v22 << 16) | (v23 << 24) | (v21 << 8) | v18) << 32);
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = (v9 - v12 + v11);
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LODWORD(a1) = *v13;
      LODWORD(v18) = v13[1];
      LODWORD(v19) = *v13 >> 8;
      LODWORD(v20) = HIWORD(*v13);
      LODWORD(v21) = v18 >> 8;
      LODWORD(v22) = WORD1(v18);
      LODWORD(v23) = BYTE3(v18);
      return a1 | (v19 << 8) | (v20 << 16) | a1 & 0xFF000000 | (((v22 << 16) | (v23 << 24) | (v21 << 8) | v18) << 32);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_1002A6B74@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
      if (v8 >= 248)
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
      if (HIDWORD(result) - result >= 248)
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

  if (BYTE6(a2) < 0xF8uLL)
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
      v42 = *(v15 + 206);
      *v43 = *(v15 + 222);
      *&v43[10] = *(v15 + 232);
      v38 = *(v15 + 142);
      v39 = *(v15 + 158);
      v40 = *(v15 + 174);
      v41 = *(v15 + 190);
      v34 = *(v15 + 78);
      v35 = *(v15 + 94);
      v36 = *(v15 + 110);
      v37 = *(v15 + 126);
      v30 = *(v15 + 14);
      v31 = *(v15 + 30);
      v32 = *(v15 + 46);
      v33 = *(v15 + 62);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 190) = v41;
      *(a3 + 206) = v42;
      *(a3 + 222) = *v43;
      *(a3 + 232) = *&v43[10];
      *(a3 + 126) = v37;
      *(a3 + 142) = v38;
      *(a3 + 158) = v39;
      *(a3 + 174) = v40;
      *(a3 + 62) = v33;
      *(a3 + 78) = v34;
      *(a3 + 94) = v35;
      *(a3 + 110) = v36;
      *(a3 + 14) = v30;
      *(a3 + 8) = v3;
      *(a3 + 13) = v23;
      *(a3 + 30) = v31;
      *(a3 + 46) = v32;
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

int64_t sub_1002A6E98@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
      if (v8 >= 40)
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
      if (HIDWORD(result) - result >= 40)
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

  if (BYTE6(a2) < 0x28uLL)
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
      *v30 = *(v15 + 14);
      *&v30[10] = *(v15 + 24);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = *v30;
      *(a3 + 24) = *&v30[10];
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

uint64_t sub_1002A7118@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v4 < 264)
  {
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v10 = a3;
    v11 = *(a1 + 16);
    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      __DataStorage._length.getter();
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v14))
    {
      v15 = v11 - v14 + v13;
      result = __DataStorage._length.getter();
      if (!v15)
      {
        goto LABEL_25;
      }

LABEL_18:
      v34 = *(v15 + 206);
      v35 = *(v15 + 222);
      *v36 = *(v15 + 238);
      *&v36[10] = *(v15 + 248);
      v30 = *(v15 + 142);
      v31 = *(v15 + 158);
      v32 = *(v15 + 174);
      v33 = *(v15 + 190);
      v26 = *(v15 + 78);
      v27 = *(v15 + 94);
      v28 = *(v15 + 110);
      v29 = *(v15 + 126);
      v22 = *(v15 + 14);
      v23 = *(v15 + 30);
      v24 = *(v15 + 46);
      v25 = *(v15 + 62);
      *v10 = *v15;
      v20 = *(v15 + 8);
      *(v10 + 206) = v34;
      *(v10 + 222) = v35;
      *(v10 + 238) = *v36;
      *(v10 + 248) = *&v36[10];
      *(v10 + 142) = v30;
      *(v10 + 158) = v31;
      *(v10 + 174) = v32;
      *(v10 + 190) = v33;
      *(v10 + 78) = v26;
      *(v10 + 94) = v27;
      *(v10 + 110) = v28;
      *(v10 + 126) = v29;
      *(v10 + 14) = v22;
      *(v10 + 30) = v23;
      *(v10 + 46) = v24;
      v21 = *(v15 + 12);
      *(v10 + 8) = v20;
      *(v10 + 12) = v21;
      *(v10 + 62) = v25;
      return result;
    }

    goto LABEL_22;
  }

  v16 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = a3;
  v17 = __DataStorage._bytes.getter();
  if (!v17)
  {
LABEL_26:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = __DataStorage._offset.getter();
  if (__OFSUB__(v16, v19))
  {
LABEL_23:
    __break(1u);
  }

  v15 = v16 - v19 + v18;
  result = __DataStorage._length.getter();
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1002A739C(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 16)
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

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x10uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v19 = a1 >> 8;
    v20 = a1 >> 16;
    v18 = HIDWORD(a1);
    v21 = a1 >> 40;
    v22 = HIWORD(a1);
    v23 = HIBYTE(a1);
    return a1 | (v19 << 8) | (v20 << 16) | a1 & 0xFF000000 | (((v22 << 16) | (v23 << 24) | (v21 << 8) | v18) << 32);
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = (v9 - v12 + v11);
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LODWORD(a1) = *v13;
      LODWORD(v18) = v13[1];
      LODWORD(v19) = *v13 >> 8;
      LODWORD(v20) = HIWORD(*v13);
      LODWORD(v21) = v18 >> 8;
      LODWORD(v22) = WORD1(v18);
      LODWORD(v23) = BYTE3(v18);
      return a1 | (v19 << 8) | (v20 << 16) | a1 & 0xFF000000 | (((v22 << 16) | (v23 << 24) | (v21 << 8) | v18) << 32);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_1002A75CC@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
      if (v8 >= 74)
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
      if (HIDWORD(result) - result >= 74)
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

  if (BYTE6(a2) < 0x4AuLL)
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
      *&v32[12] = *(v15 + 58);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v30;
      *(a3 + 30) = v31;
      *(a3 + 46) = *v32;
      *(a3 + 58) = *&v32[12];
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

int64_t sub_1002A7864@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
      if (v8 >= 208)
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
      if (HIDWORD(result) - result >= 208)
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

  if (BYTE6(a2) < 0xD0uLL)
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
      v40 = *(v15 + 174);
      v41 = *(v15 + 190);
      v42 = *(v15 + 206);
      v36 = *(v15 + 110);
      v37 = *(v15 + 126);
      v38 = *(v15 + 142);
      v39 = *(v15 + 158);
      v32 = *(v15 + 46);
      v33 = *(v15 + 62);
      v34 = *(v15 + 78);
      v35 = *(v15 + 94);
      v30 = *(v15 + 14);
      v31 = *(v15 + 30);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 158) = v39;
      *(a3 + 174) = v40;
      *(a3 + 190) = v41;
      *(a3 + 94) = v35;
      *(a3 + 110) = v36;
      *(a3 + 126) = v37;
      *(a3 + 142) = v38;
      *(a3 + 30) = v31;
      *(a3 + 46) = v32;
      *(a3 + 62) = v33;
      *(a3 + 8) = v3;
      *(a3 + 13) = v23;
      *(a3 + 206) = v42;
      *(a3 + 78) = v34;
      *(a3 + 14) = v30;
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

void *sub_1002A7B6C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_31;
  }

LABEL_7:
  if (v4 < 1624)
  {
    goto LABEL_8;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    if (v3 == 2)
    {
      v12 = *(a1 + 16);
      v13 = __DataStorage._bytes.getter();
      if (!v13)
      {
        __DataStorage._length.getter();
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v14 = v13;
      v15 = __DataStorage._offset.getter();
      if (!__OFSUB__(v12, v15))
      {
        v16 = v12 - v15 + v14;
        __DataStorage._length.getter();
        if (!v16)
        {
          goto LABEL_39;
        }

LABEL_24:
        v26 = *(v16 + 12);
        memcpy(__dst, (v16 + 14), sizeof(__dst));
        *a3 = *v16;
        a3[2] = *(v16 + 8);
        *(a3 + 6) = v26;
        return memcpy(a3 + 14, __dst, 0x64AuLL);
      }

      goto LABEL_34;
    }

    if (a1 <= a1 >> 32)
    {
      v23 = __DataStorage._bytes.getter();
      if (!v23)
      {
LABEL_42:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_43;
      }

      v24 = v23;
      v25 = __DataStorage._offset.getter();
      if (!__OFSUB__(a1, v25))
      {
        v16 = a1 - v25 + v24;
        result = __DataStorage._length.getter();
        if (!v16)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        goto LABEL_24;
      }

      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v17 = swift_slowAlloc();
  if (v3 == 2)
  {
    v18 = *(a1 + 16);
    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {
LABEL_40:
      __DataStorage._length.getter();
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v20 = v19;
    v21 = __DataStorage._offset.getter();
    if (__OFSUB__(v18, v21))
    {
      goto LABEL_35;
    }

    v22 = (v18 - v21 + v20);
    __DataStorage._length.getter();
    if (!v22)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  v27 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v28 = __DataStorage._bytes.getter();
  if (!v28)
  {
LABEL_43:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_44;
  }

  v29 = v28;
  v30 = __DataStorage._offset.getter();
  if (__OFSUB__(v27, v30))
  {
LABEL_37:
    __break(1u);
  }

  v22 = (v27 - v30 + v29);
  result = __DataStorage._length.getter();
  if (v22)
  {
LABEL_29:
    memcpy(v17, v22, 0x658uLL);
    memcpy(a3, v17, 0x658uLL);
  }

LABEL_45:
  __break(1u);
  return result;
}

void *sub_1002A7E40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_31;
  }

LABEL_7:
  if (v4 < 3872)
  {
    goto LABEL_8;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    if (v3 == 2)
    {
      v12 = *(a1 + 16);
      v13 = __DataStorage._bytes.getter();
      if (!v13)
      {
        __DataStorage._length.getter();
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v14 = v13;
      v15 = __DataStorage._offset.getter();
      if (!__OFSUB__(v12, v15))
      {
        v16 = v12 - v15 + v14;
        __DataStorage._length.getter();
        if (!v16)
        {
          goto LABEL_39;
        }

LABEL_24:
        v26 = *(v16 + 12);
        memcpy(__dst, (v16 + 14), sizeof(__dst));
        *a3 = *v16;
        a3[2] = *(v16 + 8);
        *(a3 + 6) = v26;
        return memcpy(a3 + 14, __dst, 0xF12uLL);
      }

      goto LABEL_34;
    }

    if (a1 <= a1 >> 32)
    {
      v23 = __DataStorage._bytes.getter();
      if (!v23)
      {
LABEL_42:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_43;
      }

      v24 = v23;
      v25 = __DataStorage._offset.getter();
      if (!__OFSUB__(a1, v25))
      {
        v16 = a1 - v25 + v24;
        result = __DataStorage._length.getter();
        if (!v16)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        goto LABEL_24;
      }

      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v17 = swift_slowAlloc();
  if (v3 == 2)
  {
    v18 = *(a1 + 16);
    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {
LABEL_40:
      __DataStorage._length.getter();
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v20 = v19;
    v21 = __DataStorage._offset.getter();
    if (__OFSUB__(v18, v21))
    {
      goto LABEL_35;
    }

    v22 = (v18 - v21 + v20);
    __DataStorage._length.getter();
    if (!v22)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  v27 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v28 = __DataStorage._bytes.getter();
  if (!v28)
  {
LABEL_43:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_44;
  }

  v29 = v28;
  v30 = __DataStorage._offset.getter();
  if (__OFSUB__(v27, v30))
  {
LABEL_37:
    __break(1u);
  }

  v22 = (v27 - v30 + v29);
  result = __DataStorage._length.getter();
  if (v22)
  {
LABEL_29:
    memcpy(v17, v22, 0xF20uLL);
    memcpy(a3, v17, 0xF20uLL);
  }

LABEL_45:
  __break(1u);
  return result;
}

int64_t sub_1002A8114@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
      if (v8 >= 28)
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
      if (HIDWORD(result) - result >= 28)
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

  if (BYTE6(a2) < 0x1CuLL)
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
      *v30 = *(v15 + 14);
      *&v30[6] = *(v15 + 20);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = *v30;
      *(a3 + 20) = *&v30[6];
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

void *sub_1002A8394@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v4 < 997)
  {
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v10 = a3;
    v11 = *(a1 + 16);
    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      __DataStorage._length.getter();
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v14))
    {
      v15 = v11 - v14 + v13;
      __DataStorage._length.getter();
      if (!v15)
      {
        goto LABEL_25;
      }

LABEL_18:
      v20 = *(v15 + 12);
      memcpy(__dst, (v15 + 14), sizeof(__dst));
      *v10 = *v15;
      *(v10 + 8) = *(v15 + 8);
      *(v10 + 12) = v20;
      return memcpy((v10 + 14), __dst, 0x3D7uLL);
    }

    goto LABEL_22;
  }

  v16 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = a3;
  v17 = __DataStorage._bytes.getter();
  if (!v17)
  {
LABEL_26:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = __DataStorage._offset.getter();
  if (__OFSUB__(v16, v19))
  {
LABEL_23:
    __break(1u);
  }

  v15 = v16 - v19 + v18;
  result = __DataStorage._length.getter();
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1002A856C(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 10)
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

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 10)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0xAuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v18 = a1 >> 8;
    v19 = a1 >> 16;
    v20 = a1 >> 24;
    v21 = HIDWORD(a1);
    v22 = BYTE5(a1);
    LOWORD(v23) = HIWORD(a1);
    goto LABEL_23;
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = (v9 - v12 + v11);
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LODWORD(a1) = *v13;
      LODWORD(v18) = a1 >> 8;
      LODWORD(v19) = *(v13 + 1);
      LODWORD(v20) = v19 >> 8;
      LODWORD(v21) = WORD1(v19);
      v22 = BYTE3(v19);
      v23 = *(v13 + 3);
LABEL_23:
      LOWORD(v24) = a1 | (v18 << 8);
      *(&v24 + 2) = (v21 << 16) | (v22 << 24) | (v20 << 8) | v19;
      HIWORD(v24) = v23;
      return v24;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_1002A8778@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
      if (v8 >= 32)
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
      if (HIDWORD(result) - result >= 32)
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

  if (BYTE6(a2) < 0x20uLL)
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
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v30;
      *(a3 + 30) = v31;
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

int64_t sub_1002A89F8@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
      if (v8 >= 20)
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
      if (HIDWORD(result) - result >= 20)
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

  if (BYTE6(a2) < 0x14uLL)
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
      v31 = *(v15 + 18);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v30;
      *(a3 + 18) = v31;
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

void *sub_1002A8C78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_31;
  }

LABEL_7:
  if (v4 < 2080)
  {
    goto LABEL_8;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    if (v3 == 2)
    {
      v12 = *(a1 + 16);
      v13 = __DataStorage._bytes.getter();
      if (!v13)
      {
        __DataStorage._length.getter();
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v14 = v13;
      v15 = __DataStorage._offset.getter();
      if (!__OFSUB__(v12, v15))
      {
        v16 = v12 - v15 + v14;
        __DataStorage._length.getter();
        if (!v16)
        {
          goto LABEL_39;
        }

LABEL_24:
        v26 = *(v16 + 12);
        memcpy(__dst, (v16 + 14), sizeof(__dst));
        *a3 = *v16;
        a3[2] = *(v16 + 8);
        *(a3 + 6) = v26;
        return memcpy(a3 + 14, __dst, 0x812uLL);
      }

      goto LABEL_34;
    }

    if (a1 <= a1 >> 32)
    {
      v23 = __DataStorage._bytes.getter();
      if (!v23)
      {
LABEL_42:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_43;
      }

      v24 = v23;
      v25 = __DataStorage._offset.getter();
      if (!__OFSUB__(a1, v25))
      {
        v16 = a1 - v25 + v24;
        result = __DataStorage._length.getter();
        if (!v16)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        goto LABEL_24;
      }

      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v17 = swift_slowAlloc();
  if (v3 == 2)
  {
    v18 = *(a1 + 16);
    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {
LABEL_40:
      __DataStorage._length.getter();
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v20 = v19;
    v21 = __DataStorage._offset.getter();
    if (__OFSUB__(v18, v21))
    {
      goto LABEL_35;
    }

    v22 = (v18 - v21 + v20);
    __DataStorage._length.getter();
    if (!v22)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  v27 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v28 = __DataStorage._bytes.getter();
  if (!v28)
  {
LABEL_43:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_44;
  }

  v29 = v28;
  v30 = __DataStorage._offset.getter();
  if (__OFSUB__(v27, v30))
  {
LABEL_37:
    __break(1u);
  }

  v22 = (v27 - v30 + v29);
  result = __DataStorage._length.getter();
  if (v22)
  {
LABEL_29:
    memcpy(v17, v22, 0x820uLL);
    memcpy(a3, v17, 0x820uLL);
  }

LABEL_45:
  __break(1u);
  return result;
}

int64_t sub_1002A8F4C@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
      if (v8 >= 22)
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
      if (HIDWORD(result) - result >= 22)
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

  if (BYTE6(a2) < 0x16uLL)
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
    v25 = vdupq_n_s64(result);
    v26 = vshlq_u64(v25, xmmword_1004841F0);
    v27 = vmovn_s64(vshlq_u64(v25, xmmword_1004841E0));
    v27.i8[1] = v27.i8[4];
    v28 = vzip1_s16(result, v27);
    *v25.i8 = vmovn_s64(vshlq_u64(v25, xmmword_100484200));
    v29 = vmovn_s64(v26);
    v24 = v29.u32[1];
    v29.i8[1] = v29.i8[4];
    v29.i8[2] = v25.i8[0];
    v29.i8[3] = v25.i8[4];
    v21 = vzip1_s32(v28, v29);
    v30 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v30, xmmword_1004817A0), vshlq_u64(v30, xmmword_100481790)));
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
      v24 = *(v15 + 14);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v24;
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

int64_t sub_1002A91B4@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
      if (v8 >= 18)
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
      if (HIDWORD(result) - result >= 18)
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

  if (BYTE6(a2) < 0x12uLL)
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
    v25 = vdupq_n_s64(result);
    v26 = vshlq_u64(v25, xmmword_1004841F0);
    v27 = vmovn_s64(vshlq_u64(v25, xmmword_1004841E0));
    v27.i8[1] = v27.i8[4];
    v28 = vzip1_s16(result, v27);
    *v25.i8 = vmovn_s64(vshlq_u64(v25, xmmword_100484200));
    v29 = vmovn_s64(v26);
    v24 = v29.i32[1];
    v29.i8[1] = v29.i8[4];
    v29.i8[2] = v25.i8[0];
    v29.i8[3] = v25.i8[4];
    v21 = vzip1_s32(v28, v29);
    v30 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v30, xmmword_1004817A0), vshlq_u64(v30, xmmword_100481790)));
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
      v24 = *(v15 + 14);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v24;
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