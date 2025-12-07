unint64_t sub_1001F129C()
{
  sub_100035D04(&qword_10034CC80, &qword_10028C788);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100274B30;
  *(inited + 32) = 0x6D72616C61;
  *(inited + 40) = 0xE500000000000000;

  CurrentValueSubject.value.getter();
  v1 = v14;
  if (v14 == 1)
  {
    CurrentValueSubject.value.getter();

    v1 = v13;
  }

  else
  {
  }

  *(inited + 48) = v1;
  strcpy((inited + 56), "announcement");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;

  CurrentValueSubject.value.getter();
  v2 = v14;
  if (v14 == 1)
  {
    CurrentValueSubject.value.getter();

    v2 = v13;
  }

  else
  {
  }

  *(inited + 72) = v2;
  *(inited + 80) = 1819042147;
  *(inited + 88) = 0xE400000000000000;

  CurrentValueSubject.value.getter();
  v3 = v14;
  if (v14 == 1)
  {
    CurrentValueSubject.value.getter();

    v3 = v13;
  }

  else
  {
  }

  *(inited + 96) = v3;
  *(inited + 104) = 0x616964656DLL;
  *(inited + 112) = 0xE500000000000000;

  CurrentValueSubject.value.getter();
  v4 = v14;
  if (v14 == 1)
  {
    CurrentValueSubject.value.getter();

    v4 = v13;
  }

  else
  {
  }

  *(inited + 120) = v4;
  *(inited + 128) = 0x72656D6974;
  *(inited + 136) = 0xE500000000000000;

  CurrentValueSubject.value.getter();
  v5 = v14;
  if (v14 == 1)
  {
    CurrentValueSubject.value.getter();

    v5 = v13;
  }

  else
  {
  }

  *(inited + 144) = v5;
  v6 = sub_10024CD24(inited);
  swift_setDeallocating();
  sub_100035D04(&qword_10034CC88, &qword_10028C790);
  swift_arrayDestroy();
  sub_1001EECDC(v6);

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  _StringGuts.grow(_:)(19);

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0xD000000000000010;
}

uint64_t sub_1001F1618()
{

  return v0;
}

uint64_t sub_1001F1678()
{
  sub_1001F1618();

  return swift_deallocClassInstance();
}

void *sub_1001F16D0()
{
  v0[2] = 0;
  sub_100035D04(&qword_10034CC58, &qword_10028C760);
  swift_allocObject();
  v0[3] = sub_10002F554(0, 0, 0, 0, 0, 0);
  sub_100035D04(&qword_10034CC60, &qword_10028C768);
  swift_allocObject();
  v0[4] = sub_10002F5D4(0, 0, 0, 0, 0, 0);
  sub_100035D04(&qword_10034CC68, &qword_10028C770);
  swift_allocObject();
  v0[5] = sub_10002F654(0, 0, 0, 0, 0, 0);
  sub_100035D04(&qword_10034CC70, &qword_10028C778);
  swift_allocObject();
  v0[6] = sub_10002F6D4(0, 0, 0, 0, 0, 0);
  sub_100035D04(&qword_10034CC78, &qword_10028C780);
  swift_allocObject();
  v0[7] = sub_10002F754(0, 0, 0, 0, 0, 0);
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = 0;
  return v0;
}

uint64_t sub_1001F1888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F18D4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

void sub_1001F1928(uint64_t a1)
{
  sub_100035CB8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClosedRange();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1001F1DC4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1001F19E8(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v7 + ((v7 + v6 + ((v7 + v6) & ~v6) + ((v6 + 8) & ~v6)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v18 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_1001F1B44(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + v8) & ~v8) + v9;
  v11 = ((v9 + ((((v8 + 8) | v8) + v10) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v15 = 0;
    v16 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = a3 - v7;
    if (((v9 + ((((v8 + 8) | v8) + v10) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v15)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if ((v6 & 0x80000000) != 0)
        {
          v21 = ((a1 + v8 + 8) & ~v8);
          if (v6 >= a2)
          {
            v25 = *(v5 + 56);
            v26 = (a1 + v8 + 8) & ~v8;

            v25(v26);
          }

          else
          {
            if (v10 <= 3)
            {
              v22 = ~(-1 << (8 * v10));
            }

            else
            {
              v22 = -1;
            }

            if (v10)
            {
              v23 = v22 & (~v6 + a2);
              if (v10 <= 3)
              {
                v24 = v10;
              }

              else
              {
                v24 = 4;
              }

              bzero(v21, v10);
              if (v24 > 2)
              {
                if (v24 == 3)
                {
                  *v21 = v23;
                  v21[2] = BYTE2(v23);
                }

                else
                {
                  *v21 = v23;
                }
              }

              else if (v24 == 1)
              {
                *v21 = v23;
              }

              else
              {
                *v21 = v23;
              }
            }
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v20 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v20 = a2 - 1;
          }

          *a1 = v20;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  if (v11)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = ~v7 + a2;
    v19 = a1;
    bzero(a1, v11);
    a1 = v19;
    *v19 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *(a1 + v11) = v17;
    }

    else
    {
      *(a1 + v11) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + v11) = v17;
  }
}

void sub_1001F1DC4(uint64_t a1)
{
  if (!qword_10034CDA8)
  {
    sub_100035D4C(&qword_10033EFE8, &unk_100275EA0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10034CDA8);
    }
  }
}

unint64_t sub_1001F1E3C()
{
  result = qword_10034CDB0;
  if (!qword_10034CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CDB0);
  }

  return result;
}

Swift::Int sub_1001F1E90(uint64_t a1)
{
  v2 = _swiftEmptyDictionarySingleton;
  v41 = _swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    sub_100051658(*(a1 + 48) + 40 * v13, v38);
    sub_1001F5060(*(a1 + 56) + 32 * v13, v39 + 8);
    v35 = v39[0];
    v36 = v39[1];
    v37 = v40;
    v33 = v38[0];
    v34 = v38[1];
    sub_1001F5060(&v35 + 8, &v28);
    if (*(&v29 + 1))
    {
      sub_1000516B4(&v28, v32);
      v30[0] = v35;
      v30[1] = v36;
      v31 = v37;
      v28 = v33;
      v29 = v34;
      sub_1000516B4(v32, v27);
      v14 = v2[2];
      if (v2[3] <= v14)
      {
        sub_100087490(v14 + 1, 1);
        v2 = v41;
      }

      result = AnyHashable._rawHashValue(seed:)(v2[5]);
      v15 = v2 + 8;
      v16 = -1 << *(v2 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~v2[(v17 >> 6) + 8]) == 0)
      {
        v20 = 0;
        v21 = (63 - v16) >> 6;
        while (++v18 != v21 || (v20 & 1) == 0)
        {
          v22 = v18 == v21;
          if (v18 == v21)
          {
            v18 = 0;
          }

          v20 |= v22;
          v23 = v15[v18];
          if (v23 != -1)
          {
            v19 = __clz(__rbit64(~v23)) + (v18 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~v2[(v17 >> 6) + 8])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = v2[6] + 40 * v19;
      v25 = v28;
      v26 = v29;
      *(v24 + 32) = *&v30[0];
      *v24 = v25;
      *(v24 + 16) = v26;
      sub_1000516B4(v27, (v2[7] + 32 * v19));
      ++v2[2];
      v10 = v30 + 8;
    }

    else
    {
      sub_1000097E8(&v33, &qword_10034CDC8, &qword_10028C938);
      v10 = &v28;
    }

    result = sub_1000097E8(v10, &unk_100339680, &qword_100278390);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1001F2140()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LaunchAppRequest.Option(0);
  __chkstk_darwin(v9);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001F5394(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v6 + 32))(v8, v11, v5);
      v28 = 0;
      v29 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v21._countAndFlagsBits = 0xD000000000000031;
      v21._object = 0x80000001002A5170;
      String.append(_:)(v21);
    }

    else
    {
      (*(v6 + 32))(v8, v11, v5);
      v28 = 0;
      v29 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);

      v28 = 0xD000000000000021;
      v29 = 0x80000001002A51B0;
    }

    sub_1001F5600(&qword_10033E718, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 41;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v20 = v28;
    (*(v6 + 8))(v8, v5);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v16 = *v11;
    v17 = v11[1];
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v28 = 0xD00000000000002ALL;
    v29 = 0x80000001002A5140;
    v18._countAndFlagsBits = v16;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    return v28;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v13 = *(v11 + *(sub_100035D04(&qword_10034CED8, &qword_10028CAE8) + 48));
    (*(v2 + 32))(v4, v11, v1);
    v28 = 678195829;
    v29 = 0xE400000000000000;
    if (v13)
    {
      v14 = 0xE500000000000000;
      v15 = 0x3E6C72753CLL;
    }

    else
    {
      v15 = URL.absoluteString.getter();
      v14 = v24;
    }

    v25 = v14;
    String.append(_:)(*&v15);

    v26._countAndFlagsBits = 41;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v20 = v28;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    return 0x55794D6563726F66;
  }

  return v20;
}

uint64_t sub_1001F2568(void *a1)
{
  v2 = sub_100035D04(&qword_10034CEA0, &qword_10028CAB8);
  v65 = *(v2 - 8);
  v66 = v2;
  __chkstk_darwin(v2);
  v62 = &v54 - v3;
  v4 = type metadata accessor for URL();
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v67 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_10034CEA8, &qword_10028CAC0);
  v60 = *(v6 - 8);
  v61 = v6;
  __chkstk_darwin(v6);
  v58 = &v54 - v7;
  v59 = sub_100035D04(&qword_10034CEB0, &qword_10028CAC8);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v54 - v8;
  v9 = sub_100035D04(&qword_10034CEB8, &qword_10028CAD0);
  v72 = *(v9 - 8);
  v73 = v9;
  __chkstk_darwin(v9);
  v71 = &v54 - v10;
  v70 = sub_100035D04(&qword_10034CEC0, &qword_10028CAD8);
  v55 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v54 - v11;
  v12 = type metadata accessor for UUID();
  v68 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v18 = type metadata accessor for LaunchAppRequest.Option(0);
  __chkstk_darwin(v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100035D04(&qword_10034CEC8, &qword_10028CAE0);
  v77 = *(v21 - 8);
  v78 = v21;
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  sub_10000EBC0(a1, a1[3]);
  sub_1001F5340();
  v76 = v23;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001F5394(v74, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v33 = v17;
    v34 = v15;
    v36 = v69;
    v35 = v70;
    v37 = v71;
    v38 = v72;
    v39 = v73;
    v40 = v12;
    if (EnumCaseMultiPayload)
    {
      v51 = v68;
      v52 = v34;
      (*(v68 + 32))(v34, v20, v40);
      v80 = 1;
      sub_1001F54F4();
      v53 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1001F5600(&qword_1003437D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v38 + 8))(v37, v39);
      (*(v51 + 8))(v52, v40);
      return (*(v77 + 8))(v53, v78);
    }

    else
    {
      v41 = v68;
      (*(v68 + 32))(v33, v20, v12);
      v79 = 0;
      sub_1001F5548();
      v42 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1001F5600(&qword_1003437D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v55 + 8))(v36, v35);
      (*(v41 + 8))(v33, v40);
      return (*(v77 + 8))(v42, v78);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v81 = 2;
    sub_1001F54A0();
    v44 = v56;
    v45 = v78;
    v46 = v76;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v47 = v59;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v57 + 8))(v44, v47);
    return (*(v77 + 8))(v46, v45);
  }

  else
  {
    v25 = v75;
    if (EnumCaseMultiPayload == 3)
    {
      LODWORD(v74) = v20[*(sub_100035D04(&qword_10034CED8, &qword_10028CAE8) + 48)];
      v27 = v63;
      v26 = v64;
      v28 = v67;
      (*(v63 + 32))(v67, v20, v64);
      v85 = 4;
      sub_1001F53F8();
      v29 = v62;
      v30 = v78;
      v31 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v84 = 0;
      sub_1001F5600(&qword_100348538, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v32 = v66;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v25)
      {
        (*(v65 + 8))(v29, v32);
        (*(v27 + 8))(v28, v26);
      }

      else
      {
        v83 = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
        (*(v65 + 8))(v29, v32);
        (*(v27 + 8))(v67, v26);
      }

      return (*(v77 + 8))(v31, v30);
    }

    else
    {
      v82 = 3;
      sub_1001F544C();
      v48 = v58;
      v49 = v78;
      v50 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v60 + 8))(v48, v61);
      return (*(v77 + 8))(v50, v49);
    }
  }
}

void sub_1001F2F24(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LaunchAppRequest.Option(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F5394(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v9, v12, v6);
      v15 = 1;
    }

    else
    {
      (*(v7 + 32))(v9, v12, v6);
      v15 = 0;
    }

    Hasher._combine(_:)(v15);
    sub_1001F5600(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v9, v6);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    Hasher._combine(_:)(2uLL);
    String.hash(into:)();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v14 = v12[*(sub_100035D04(&qword_10034CED8, &qword_10028CAE8) + 48)];
    (*(v3 + 32))(v5, v12, v2);
    Hasher._combine(_:)(4uLL);
    sub_1001F5600(&qword_10034CF38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    Hasher._combine(_:)(v14);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    Hasher._combine(_:)(3uLL);
  }
}

uint64_t sub_1001F327C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = sub_100035D04(&qword_10034CF08, &qword_10028CAF0);
  v4 = *(v3 - 8);
  v82 = v3;
  v83 = v4;
  __chkstk_darwin(v3);
  v91 = &v70 - v5;
  v6 = sub_100035D04(&qword_10034CF10, &qword_10028CAF8);
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v85 = &v70 - v7;
  v76 = sub_100035D04(&qword_10034CF18, &qword_10028CB00);
  v79 = *(v76 - 8);
  __chkstk_darwin(v76);
  v90 = &v70 - v8;
  v78 = sub_100035D04(&qword_10034CF20, &qword_10028CB08);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v89 = &v70 - v9;
  v75 = sub_100035D04(&qword_10034CF28, &qword_10028CB10);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v84 = &v70 - v10;
  v11 = sub_100035D04(&qword_10034CF30, &unk_10028CB18);
  v87 = *(v11 - 8);
  v88 = v11;
  __chkstk_darwin(v11);
  v13 = &v70 - v12;
  v86 = type metadata accessor for LaunchAppRequest.Option(0);
  v14 = __chkstk_darwin(v86);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = (&v70 - v18);
  v20 = __chkstk_darwin(v17);
  v22 = &v70 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v70 - v24;
  __chkstk_darwin(v23);
  v27 = &v70 - v26;
  v28 = a1[3];
  v93 = a1;
  sub_10000EBC0(a1, v28);
  sub_1001F5340();
  v29 = v94;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    goto LABEL_10;
  }

  v70 = v19;
  v71 = v25;
  v72 = v22;
  v31 = v89;
  v30 = v90;
  v73 = v16;
  v33 = v91;
  v32 = v92;
  v94 = v27;
  v34 = v88;
  v35 = KeyedDecodingContainer.allKeys.getter();
  v36 = (2 * *(v35 + 16)) | 1;
  v95 = v35;
  v96 = v35 + 32;
  v97 = 0;
  v98 = v36;
  v37 = sub_100218020();
  if (v37 == 5 || v97 != v98 >> 1)
  {
    v41 = type metadata accessor for DecodingError();
    swift_allocError();
    v43 = v42;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v43 = v86;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v41 - 8) + 104))(v43, enum case for DecodingError.typeMismatch(_:), v41);
    swift_willThrow();
    (*(v87 + 8))(v13, v34);
    swift_unknownObjectRelease();
LABEL_10:
    v44 = v93;
    return sub_10000903C(v44);
  }

  if (v37 <= 1u)
  {
    if (v37)
    {
      v99 = 1;
      sub_1001F54F4();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v53 = v87;
      type metadata accessor for UUID();
      sub_1001F5600(&qword_1003437F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v58 = v78;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v77 + 8))(v31, v58);
      (*(v53 + 8))(v13, v34);
      swift_unknownObjectRelease();
      v65 = v72;
      swift_storeEnumTagMultiPayload();
      v54 = v94;
      sub_1001F559C(v65, v94);
    }

    else
    {
      v99 = 0;
      sub_1001F5548();
      v46 = v84;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v47 = v87;
      type metadata accessor for UUID();
      sub_1001F5600(&qword_1003437F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v56 = v71;
      v57 = v75;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v74 + 8))(v46, v57);
      (*(v47 + 8))(v13, v34);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v54 = v94;
      sub_1001F559C(v56, v94);
    }

    v55 = v93;
    v38 = v32;
  }

  else
  {
    v38 = v32;
    if (v37 == 2)
    {
      v99 = 2;
      sub_1001F54A0();
      v48 = v30;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v49 = v76;
      v59 = KeyedDecodingContainer.decode(_:forKey:)();
      v61 = v60;
      (*(v79 + 8))(v48, v49);
      (*(v87 + 8))(v13, v34);
      swift_unknownObjectRelease();
      v62 = v70;
      *v70 = v59;
      *(v62 + 8) = v61;
      swift_storeEnumTagMultiPayload();
      v54 = v94;
      sub_1001F559C(v62, v94);
      v55 = v93;
      v38 = v32;
    }

    else
    {
      if (v37 == 3)
      {
        v99 = 3;
        sub_1001F544C();
        v39 = v85;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = v87;
        (*(v80 + 8))(v39, v81);
        (*(v40 + 8))(v13, v34);
        swift_unknownObjectRelease();
        v54 = v94;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v99 = 4;
        sub_1001F53F8();
        v50 = v33;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v51 = v87;
        type metadata accessor for URL();
        v99 = 0;
        sub_1001F5600(&qword_100348498, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v52 = v82;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v99 = 1;
        v63 = KeyedDecodingContainer.decode(_:forKey:)();
        v64 = v83;
        v66 = v63;
        v67 = *(sub_100035D04(&qword_10034CED8, &qword_10028CAE8) + 48);
        (*(v64 + 8))(v50, v52);
        (*(v51 + 8))(v13, v34);
        swift_unknownObjectRelease();
        v68 = v66 & 1;
        v69 = v73;
        v73[v67] = v68;
        swift_storeEnumTagMultiPayload();
        v54 = v94;
        sub_1001F559C(v69, v94);
        v38 = v92;
      }

      v55 = v93;
    }
  }

  sub_1001F559C(v54, v38);
  v44 = v55;
  return sub_10000903C(v44);
}

uint64_t sub_1001F3F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000)
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

uint64_t sub_1001F4004(uint64_t a1)
{
  v2 = sub_1001F5548();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F4040(uint64_t a1)
{
  v2 = sub_1001F5548();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001F407C()
{
  v1 = *v0;
  v2 = 0x55794D6563726F66;
  if (v1 != 3)
  {
    v2 = 7107189;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000024;
  }

  v3 = 0xD000000000000016;
  if (*v0)
  {
    v3 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001F4124@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001F5CDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001F414C(uint64_t a1)
{
  v2 = sub_1001F5340();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F4188(uint64_t a1)
{
  v2 = sub_1001F5340();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F41E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010029AF90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1001F4274(uint64_t a1)
{
  v2 = sub_1001F54F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F42B0(uint64_t a1)
{
  v2 = sub_1001F54F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F42EC(uint64_t a1)
{
  v2 = sub_1001F544C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F4328(uint64_t a1)
{
  v2 = sub_1001F544C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F4378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79654B726F66 && a2 == 0xE600000000000000)
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

uint64_t sub_1001F43FC(uint64_t a1)
{
  v2 = sub_1001F54A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F4438(uint64_t a1)
{
  v2 = sub_1001F54A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F4474()
{
  if (*v0)
  {
    return 0x7469736E65537369;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1001F44AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7469736E65537369 && a2 == 0xEB00000000657669)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1001F4584(uint64_t a1)
{
  v2 = sub_1001F53F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F45C0(uint64_t a1)
{
  v2 = sub_1001F53F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001F4630()
{
  Hasher.init(_seed:)();
  sub_1001F2F24(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001F4674(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1001F2F24(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1001F46B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100035D04(&qword_10034CDB8, &unk_10028C920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002727F0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10019DEDC();
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v8;

  if (v4)
  {
    sub_1000516C4(inited + 32);
    *(inited + 16) = 0;
  }

  else
  {
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v7;
    *(inited + 80) = v9;
    AnyHashable.init<A>(_:)();
    if (a3)
    {
      v10 = sub_100035D04(&qword_10033B7D0, &unk_100272100);
      v11 = a3;
    }

    else
    {
      v11 = 0;
      v10 = 0;
      *(inited + 152) = 0;
      *(inited + 160) = 0;
    }

    *(inited + 144) = v11;
    *(inited + 168) = v10;

    AnyHashable.init<A>(_:)();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100035D04(&qword_100349CB0, &qword_1002855A8);
    sub_1001F49D8();
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v14 = v13;

    *(inited + 240) = &type metadata for Data;
    *(inited + 216) = v12;
    *(inited + 224) = v14;
    v16 = sub_10024DBB0(inited);
    swift_setDeallocating();
    sub_100035D04(&qword_10034CDC0, &qword_10028C930);
    swift_arrayDestroy();
    inited = sub_1001F1E90(v16);
  }

  return inited;
}

unint64_t sub_1001F49D8()
{
  result = qword_100349D10;
  if (!qword_100349D10)
  {
    sub_100035D4C(&qword_100349CB0, &qword_1002855A8);
    sub_1001F5600(&qword_100349D18, type metadata accessor for LaunchAppRequest.Option, &unk_10028CA8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D10);
  }

  return result;
}

uint64_t type metadata accessor for LaunchAppRequest.Option(uint64_t a1)
{
  result = qword_10034CE40;
  if (!qword_10034CE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001F4AD8(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v53 = a2;
  v2 = type metadata accessor for URL();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v48 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v51 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v48 - v8;
  v10 = type metadata accessor for LaunchAppRequest.Option(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = (&v48 - v15);
  v17 = __chkstk_darwin(v14);
  v19 = &v48 - v18;
  __chkstk_darwin(v17);
  v21 = &v48 - v20;
  v22 = sub_100035D04(&qword_10034CF40, &qword_10028CB28);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v48 - v24;
  v26 = (&v48 + *(v23 + 56) - v24);
  sub_1001F5394(v52, &v48 - v24);
  sub_1001F5394(v53, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v38 = v51;
    if (EnumCaseMultiPayload)
    {
      sub_1001F5394(v25, v19);
      v44 = v4;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v38 + 8))(v19, v4);
        goto LABEL_24;
      }

      (*(v38 + 32))(v7, v26, v4);
      v37 = static UUID.== infix(_:_:)();
      v45 = *(v38 + 8);
      v45(v7, v44);
      v45(v19, v44);
    }

    else
    {
      sub_1001F5394(v25, v21);
      v39 = v4;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v38 + 8))(v21, v4);
        goto LABEL_24;
      }

      (*(v38 + 32))(v9, v26, v4);
      v37 = static UUID.== infix(_:_:)();
      v46 = *(v38 + 8);
      v46(v9, v39);
      v46(v21, v39);
    }

    sub_1001F5648(v25);
    return v37 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1001F5394(v25, v16);
    v41 = *v16;
    v40 = v16[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      if (v41 == *v26 && v40 == v26[1])
      {
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v43 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_29:
      sub_1001F5648(v25);
      v37 = 1;
      return v37 & 1;
    }

LABEL_24:
    sub_1000097E8(v25, &qword_10034CF40, &qword_10028CB28);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  sub_1001F5394(v25, v13);
  v28 = *(sub_100035D04(&qword_10034CED8, &qword_10028CAE8) + 48);
  v29 = v13[v28];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v49 + 8))(v13, v50);
    goto LABEL_24;
  }

  v30 = *(v26 + v28);
  v32 = v48;
  v31 = v49;
  v33 = v26;
  v34 = v50;
  (*(v49 + 32))(v48, v33, v50);
  v35 = static URL.== infix(_:_:)();
  v36 = *(v31 + 8);
  v36(v32, v34);
  v36(v13, v34);
  if ((v35 & 1) == 0)
  {
LABEL_16:
    sub_1001F5648(v25);
LABEL_25:
    v37 = 0;
    return v37 & 1;
  }

  sub_1001F5648(v25);
  v37 = v29 ^ v30 ^ 1;
  return v37 & 1;
}

uint64_t sub_1001F5060(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_100339680, &qword_100278390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001F50D0(uint64_t a1)
{
  sub_1001F517C(319, &qword_10034CE50);
  if (v1 <= 0x3F)
  {
    sub_1001F517C(319, &qword_10034CE58);
    if (v2 <= 0x3F)
    {
      sub_1001F51C4();
      if (v3 <= 0x3F)
      {
        sub_1001F51F4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1001F517C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for UUID();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *sub_1001F51C4()
{
  result = qword_10034CE60;
  if (!qword_10034CE60)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10034CE60);
  }

  return result;
}

void sub_1001F51F4(uint64_t a1)
{
  if (!qword_10034CE68)
  {
    type metadata accessor for URL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10034CE68);
    }
  }
}

uint64_t sub_1001F5260(uint64_t a1, int a2)
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

uint64_t sub_1001F52A8(uint64_t result, int a2, int a3)
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

unint64_t sub_1001F5340()
{
  result = qword_10034CED0;
  if (!qword_10034CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CED0);
  }

  return result;
}

uint64_t sub_1001F5394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchAppRequest.Option(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001F53F8()
{
  result = qword_10034CEE0;
  if (!qword_10034CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CEE0);
  }

  return result;
}

unint64_t sub_1001F544C()
{
  result = qword_10034CEE8;
  if (!qword_10034CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CEE8);
  }

  return result;
}

unint64_t sub_1001F54A0()
{
  result = qword_10034CEF0;
  if (!qword_10034CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CEF0);
  }

  return result;
}

unint64_t sub_1001F54F4()
{
  result = qword_10034CEF8;
  if (!qword_10034CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CEF8);
  }

  return result;
}

unint64_t sub_1001F5548()
{
  result = qword_10034CF00;
  if (!qword_10034CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF00);
  }

  return result;
}

uint64_t sub_1001F559C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchAppRequest.Option(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F5600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F5648(uint64_t a1)
{
  v2 = type metadata accessor for LaunchAppRequest.Option(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001F5708()
{
  result = qword_10034CF48;
  if (!qword_10034CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF48);
  }

  return result;
}

unint64_t sub_1001F5760()
{
  result = qword_10034CF50;
  if (!qword_10034CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF50);
  }

  return result;
}

unint64_t sub_1001F57B8()
{
  result = qword_10034CF58;
  if (!qword_10034CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF58);
  }

  return result;
}

unint64_t sub_1001F5810()
{
  result = qword_10034CF60;
  if (!qword_10034CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF60);
  }

  return result;
}

unint64_t sub_1001F5868()
{
  result = qword_10034CF68;
  if (!qword_10034CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF68);
  }

  return result;
}

unint64_t sub_1001F58C0()
{
  result = qword_10034CF70;
  if (!qword_10034CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF70);
  }

  return result;
}

unint64_t sub_1001F5918()
{
  result = qword_10034CF78;
  if (!qword_10034CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF78);
  }

  return result;
}

unint64_t sub_1001F5970()
{
  result = qword_10034CF80;
  if (!qword_10034CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF80);
  }

  return result;
}

unint64_t sub_1001F59C8()
{
  result = qword_10034CF88;
  if (!qword_10034CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF88);
  }

  return result;
}

unint64_t sub_1001F5A20()
{
  result = qword_10034CF90;
  if (!qword_10034CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF90);
  }

  return result;
}

unint64_t sub_1001F5A78()
{
  result = qword_10034CF98;
  if (!qword_10034CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF98);
  }

  return result;
}

unint64_t sub_1001F5AD0()
{
  result = qword_10034CFA0;
  if (!qword_10034CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFA0);
  }

  return result;
}

unint64_t sub_1001F5B28()
{
  result = qword_10034CFA8;
  if (!qword_10034CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFA8);
  }

  return result;
}

unint64_t sub_1001F5B80()
{
  result = qword_10034CFB0;
  if (!qword_10034CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFB0);
  }

  return result;
}

unint64_t sub_1001F5BD8()
{
  result = qword_10034CFB8;
  if (!qword_10034CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFB8);
  }

  return result;
}

unint64_t sub_1001F5C30()
{
  result = qword_10034CFC0;
  if (!qword_10034CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFC0);
  }

  return result;
}

unint64_t sub_1001F5C88()
{
  result = qword_10034CFC8;
  if (!qword_10034CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFC8);
  }

  return result;
}

uint64_t sub_1001F5CDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001002A51E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001002A5200 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001002A5220 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x55794D6563726F66 && a2 == 0xEB00000000726573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1001F5E9C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034CFD0);
  sub_100003078(v0, qword_10034CFD0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001F5F1C()
{
  result = sub_1001F5F40();
  byte_10038B5A8 = result & 1;
  return result;
}

uint64_t sub_1001F5F40()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 1504);
  v1 = sub_1000177F8();

  if (v1 == 2 || (v1 & 1) == 0)
  {
    DeviceClass = GestaltGetDeviceClass();
    v12 = DeviceClass;
    if (DeviceClass == 7 || DeviceClass == 4)
    {
      if (qword_1003391D0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003078(v13, qword_10034CFD0);
      v3 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v3, v14))
      {
        goto LABEL_36;
      }

      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 1) = v12;
      v6 = "Device class (%d) is communal";
LABEL_15:
      v7 = v14;
      v8 = v3;
      v9 = v15;
      v10 = 8;
      goto LABEL_16;
    }

    if ((DeviceClass - 4) >= 0xFFFFFFFD)
    {
      if (qword_1003391D0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100003078(v25, qword_10034CFD0);
      v3 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = v12;
        v24 = "Device class (%d) is handheld";
        goto LABEL_30;
      }
    }

    else
    {
      v17 = sub_1001235F8();
      if (!v17)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = String._bridgeToObjectiveC()();

        v17 = v18;
      }

      v19 = v17;
      v20 = [v19 hasPrefix:@"Watch"];

      if (!v20)
      {
        if (qword_1003391D0 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100003078(v26, qword_10034CFD0);
        v3 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v3, v14))
        {
          goto LABEL_36;
        }

        v15 = swift_slowAlloc();
        *v15 = 67109120;
        *(v15 + 1) = v12;
        v6 = "Device class (%d) is unsupported, defaulting to 'anchor'";
        goto LABEL_15;
      }

      if (qword_1003391D0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100003078(v21, qword_10034CFD0);
      v3 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = v12;
        v24 = "Device class (%d) is watch";
LABEL_30:
        _os_log_impl(&_mh_execute_header, v3, v22, v24, v23, 8u);
        v16 = 0;
        goto LABEL_17;
      }
    }

    v16 = 0;
    goto LABEL_37;
  }

  if (qword_1003391D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034CFD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v3, v4))
  {
LABEL_36:
    v16 = 1;
    goto LABEL_37;
  }

  v5 = swift_slowAlloc();
  *v5 = 0;
  v6 = "Role=anchor via override";
  v7 = v4;
  v8 = v3;
  v9 = v5;
  v10 = 2;
LABEL_16:
  _os_log_impl(&_mh_execute_header, v8, v7, v6, v9, v10);
  v16 = 1;
LABEL_17:

LABEL_37:

  return v16;
}

uint64_t sub_1001F638C()
{
  if (*v0)
  {
    return 0x726F68636E61;
  }

  else
  {
    return 0x656C69626F6DLL;
  }
}

uint64_t sub_1001F63B8()
{
  if ([v0 service] == 3)
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = [v1 activeConversationForCall:v0];

    if (v2 && (v3 = [v2 presentationContext], v4 = objc_msgSend(v3, "mode"), v3, v2, v4 <= 2))
    {
      return qword_10028D1C0[v4];
    }

    else
    {
      return 0;
    }
  }

  else if ([v0 isEndpointOnCurrentDevice])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_1001F64AC()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v2 = result;
    v3 = qword_100339180;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = qword_10038B4E8;
    v5 = sub_1001C5784(v2);
    v7 = v6;
    v8 = ~v6;

    if (v8)
    {
      if ((v7 & 1) == 0)
      {
        v11 = sub_1001F63B8();
        swift_unknownObjectRelease();
        sub_100036718(v5, v7);
        return v11;
      }

      v9 = [v5 presentationContext];
      v10 = [v9 mode];
      swift_unknownObjectRelease();
      sub_100036718(v5, v7);

      if (v10 < 3)
      {
        return qword_10028D1C0[v10];
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return [v0 direction];
}

unint64_t sub_1001F6654()
{
  result = qword_10034CFE8;
  if (!qword_10034CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFE8);
  }

  return result;
}

uint64_t sub_1001F66B8(void *a1, int a2)
{
  v13 = a2;
  v3 = sub_100035D04(&qword_10034CFF0, &qword_10028D318);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = sub_100035D04(&qword_10034CFF8, &qword_10028D320);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000EBC0(a1, a1[3]);
  sub_1001F6AA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001F6AF8();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v14 = v13;
  sub_1001F6B4C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1001F68E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657461745364656CLL && a2 == 0xE800000000000000)
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

uint64_t sub_1001F696C(uint64_t a1)
{
  v2 = sub_1001F6AA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F69A8(uint64_t a1)
{
  v2 = sub_1001F6AA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F69E4(uint64_t a1)
{
  v2 = sub_1001F6AF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F6A20(uint64_t a1)
{
  v2 = sub_1001F6AF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001F6A5C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001F6BA0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1001F6AA4()
{
  result = qword_10034D000;
  if (!qword_10034D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D000);
  }

  return result;
}

unint64_t sub_1001F6AF8()
{
  result = qword_10034D008;
  if (!qword_10034D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D008);
  }

  return result;
}

unint64_t sub_1001F6B4C()
{
  result = qword_10034D010;
  if (!qword_10034D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D010);
  }

  return result;
}

unint64_t sub_1001F6BA0(void *a1)
{
  v3 = sub_100035D04(&qword_10034D018, &qword_10028D328);
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = sub_100035D04(&qword_10034D020, &unk_10028D330);
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_10000EBC0(a1, a1[3]);
  sub_1001F6AA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v21 = a1;
  v11 = v22;
  v10 = v23;
  v12 = KeyedDecodingContainer.allKeys.getter();
  v13 = (2 * *(v12 + 16)) | 1;
  v24 = v12;
  v25 = v12 + 32;
  v26 = 0;
  v27 = v13;
  v14 = v8;
  if ((sub_100218014() & 1) != 0 || v26 != v27 >> 1)
  {
    v15 = v6;
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v18 = &type metadata for FollowerOutput;
    v9 = v14;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v11 + 8))(v14, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_6:
    sub_10000903C(a1);
    return v9;
  }

  sub_1001F6AF8();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  sub_1001F6F28();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v5, v3);
  (*(v11 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v9 = v28;
  sub_10000903C(v21);
  return v9;
}

unint64_t sub_1001F6F28()
{
  result = qword_10034D028;
  if (!qword_10034D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D028);
  }

  return result;
}

unint64_t sub_1001F6FA0()
{
  result = qword_10034D030;
  if (!qword_10034D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D030);
  }

  return result;
}

unint64_t sub_1001F6FF8()
{
  result = qword_10034D038;
  if (!qword_10034D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D038);
  }

  return result;
}

unint64_t sub_1001F7050()
{
  result = qword_10034D040;
  if (!qword_10034D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D040);
  }

  return result;
}

unint64_t sub_1001F70A8()
{
  result = qword_10034D048;
  if (!qword_10034D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D048);
  }

  return result;
}

unint64_t sub_1001F7100()
{
  result = qword_10034D050;
  if (!qword_10034D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D050);
  }

  return result;
}

unint64_t sub_1001F7158()
{
  result = qword_10034D058;
  if (!qword_10034D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D058);
  }

  return result;
}

uint64_t sub_1001F71AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v8 - v5;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

uint64_t sub_1001F72D8(uint64_t result, unsigned int a2)
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

uint64_t sub_1001F7300(unint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    strcpy(v9, "didDisappear-");
    HIWORD(v9[1]) = -4864;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = a1;
    v4 = a2;
    _StringGuts.grow(_:)(16);

    strcpy(v9, "willDisappear-");
    HIBYTE(v9[1]) = -18;
    a1 = v3;
    a2 = v4;
LABEL_5:
    String.append(_:)(*&a1);
    return v9[0];
  }

  v6 = 0x6465736F6C63;
  if (a1 ^ 3 | a2)
  {
    v7 = 0x657070416C6C6977;
  }

  else
  {
    v7 = 0x646570706174;
  }

  if (a1 ^ 2 | a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x6465646E61707865;
  }

  if (a1 | a2)
  {
    v6 = 0x6165707041646964;
  }

  if (a1 <= 1)
  {
    return v6;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1001F7480@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001F7510(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return result;
}

unint64_t sub_1001F74BC()
{
  result = qword_10034D060;
  if (!qword_10034D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D060);
  }

  return result;
}

uint64_t sub_1001F7510(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465736F6C63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_6;
  }

  if (a1 == 0x6165707041646964 && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (a1 == 0x6465646E61707865 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  if (a1 == 0x646570706174 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  if (a1 == 0x657070416C6C6977 && a2 == 0xEA00000000007261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  sub_10001369C();
  if (!*(StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)() + 16))
  {

    goto LABEL_6;
  }

  v6 = static String._fromSubstring(_:)();

  if ((StringProtocol.contains<A>(_:)() & 1) == 0)
  {
    v7 = StringProtocol.contains<A>(_:)();

    if (v7)
    {
      return v6;
    }

LABEL_6:

    return 0;
  }

  return v6;
}

uint64_t sub_1001F7854()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for DispatchTimeInterval.seconds(_:))
  {
    v7 = *(v3 + 96);
    v3 += 96;
    v6 = v7(v5, v2);
    v8 = 1000000000 * *v5;
    if ((*v5 * 1000000000) >> 64 == v8 >> 63)
    {
      return v8 / 1000000;
    }

    __break(1u);
  }

  if (v6 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    v9 = *(v3 + 96);
    v3 += 96;
    v6 = v9(v5, v2);
    v8 = 1000000 * *v5;
    if ((*v5 * 1000000) >> 64 == v8 >> 63)
    {
      return v8 / 1000000;
    }

    __break(1u);
  }

  if (v6 != enum case for DispatchTimeInterval.microseconds(_:))
  {
    goto LABEL_10;
  }

  v10 = *(v3 + 96);
  v3 += 96;
  v6 = v10(v5, v2);
  v8 = 1000 * *v5;
  if ((*v5 * 1000) >> 64 == v8 >> 63)
  {
    return v8 / 1000000;
  }

  __break(1u);
LABEL_10:
  if (v6 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    return v8 / 1000000;
  }

  if (v6 == enum case for DispatchTimeInterval.never(_:))
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    return v8 / 1000000;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001F7AD0()
{
  v6[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v6[0] - 8);
  __chkstk_darwin(v6[0]);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  static DispatchQoS.default.getter();
  v6[1] = _swiftEmptyArrayStorage;
  sub_1001F8B20(&qword_100339328, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100035D04(&qword_100339330, &unk_10026F070);
  sub_100179108(&qword_100339338, &qword_100339330, &unk_10026F070);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6[0]);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10038B5B0 = result;
  return result;
}

uint64_t sub_1001F7D30()
{
  v6[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v6[0] - 8);
  __chkstk_darwin(v6[0]);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  sub_100003118(0, &qword_10034D108, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.default.getter();
  v6[1] = _swiftEmptyArrayStorage;
  sub_1001F8B20(&qword_10034D110, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100035D04(&qword_10034D118, &unk_10028D7A0);
  sub_100179108(&unk_10034D120, &qword_10034D118, &unk_10028D7A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6[0]);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10038B5B8 = result;
  return result;
}

uint64_t sub_1001F7F94()
{
  type metadata accessor for WorkActor();
  v0 = swift_allocObject();
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  result = OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  qword_10038B5C0 = v0;
  return result;
}

uint64_t sub_1001F8024()
{
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1001F8080(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_1001F80B8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  LODWORD(result) = (*(v3 + 88))(v5, v2);
  if (result == enum case for DispatchTimeInterval.seconds(_:))
  {
    v7 = *(v3 + 96);
    v3 += 96;
    v7(v5, v2);
    result = 1000000000 * *v5;
    if ((*v5 * 1000000000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    v8 = *(v3 + 96);
    v3 += 96;
    v8(v5, v2);
    result = 1000000 * *v5;
    if ((*v5 * 1000000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.microseconds(_:))
  {
    v9 = *(v3 + 96);
    v3 += 96;
    v9(v5, v2);
    result = 1000 * *v5;
    if ((*v5 * 1000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v5, v2);
    return *v5;
  }

  else if (result == enum case for DispatchTimeInterval.never(_:))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

BOOL static DispatchTimeInterval.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = enum case for DispatchTimeInterval.never(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for DispatchTimeInterval.never(_:), v2);
  v8 = static DispatchTimeInterval.== infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v8)
  {
    return 0;
  }

  v7(v5, v6, v2);
  v11 = static DispatchTimeInterval.== infix(_:_:)();
  v9(v5, v2);
  if (v11)
  {
    return 1;
  }

  v12 = sub_1001F80B8();
  return v12 < sub_1001F80B8();
}

BOOL sub_1001F84E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for DispatchTimeInterval.never(_:);
  v8 = *(v4 + 104);
  (v8)(v6, enum case for DispatchTimeInterval.never(_:));
  v9 = static DispatchTimeInterval.== infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v6, a3);
  if (v9)
  {
    return 0;
  }

  v8(v6, v7, a3);
  v12 = static DispatchTimeInterval.== infix(_:_:)();
  v10(v6, a3);
  if (v12)
  {
    return 1;
  }

  v13 = sub_1001F80B8();
  return v13 < sub_1001F80B8();
}

BOOL sub_1001F8658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for DispatchTimeInterval.never(_:);
  v8 = *(v4 + 104);
  (v8)(v6, enum case for DispatchTimeInterval.never(_:));
  v9 = static DispatchTimeInterval.== infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v6, a3);
  if (v9)
  {
    return 1;
  }

  v8(v6, v7, a3);
  v12 = static DispatchTimeInterval.== infix(_:_:)();
  v10(v6, a3);
  if (v12)
  {
    return 0;
  }

  v13 = sub_1001F80B8();
  return v13 >= sub_1001F80B8();
}

BOOL sub_1001F87CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for DispatchTimeInterval.never(_:);
  v8 = *(v4 + 104);
  (v8)(v6, enum case for DispatchTimeInterval.never(_:));
  v9 = static DispatchTimeInterval.== infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v6, a3);
  if (v9)
  {
    return 1;
  }

  v8(v6, v7, a3);
  v12 = static DispatchTimeInterval.== infix(_:_:)();
  v10(v6, a3);
  if (v12)
  {
    return 0;
  }

  v13 = sub_1001F80B8();
  return v13 >= sub_1001F80B8();
}

BOOL sub_1001F8940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for DispatchTimeInterval.never(_:);
  v8 = *(v4 + 104);
  (v8)(v6, enum case for DispatchTimeInterval.never(_:));
  v9 = static DispatchTimeInterval.== infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v6, a3);
  if (v9)
  {
    return 0;
  }

  v8(v6, v7, a3);
  v12 = static DispatchTimeInterval.== infix(_:_:)();
  v10(v6, a3);
  if (v12)
  {
    return 1;
  }

  v13 = sub_1001F80B8();
  return v13 < sub_1001F80B8();
}

uint64_t sub_1001F8B20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1001F8B68()
{
  v1 = v0;
  if (qword_1003391F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D130);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37 = v6;
    *v5 = 136315138;
    _StringGuts.grow(_:)(24);

    aBlock = 0xD000000000000015;
    v32 = 0x80000001002A5450;
    String.append(_:)(v0[1]);
    v7._countAndFlagsBits = 62;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = sub_100017494(0xD000000000000015, 0x80000001002A5450, &v37);

    *(v5 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting player for %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  object = v0[2]._object;
  aBlock = 0;
  v10 = [object startAndReturnError:&aBlock];
  v11 = aBlock;
  if (v10)
  {
    countAndFlagsBits = v1[3]._countAndFlagsBits;
    aBlock = 0;
    v13 = v11;
    v14 = [countAndFlagsBits startAtTime:&aBlock error:0.0];
    v11 = aBlock;
    if (v14)
    {
      v35 = sub_1001F9C58;
      v36 = 0;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_1001F9E70;
      v34 = &unk_100312420;
      v15 = _Block_copy(&aBlock);
      v16 = v11;
      [object notifyWhenPlayersFinished:v15];
      _Block_release(v15);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v37 = v20;
        *v19 = 136315138;
        aBlock = 0;
        v32 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        aBlock = 0xD000000000000015;
        v32 = 0x80000001002A5450;
        String.append(_:)(v1[1]);
        v21._countAndFlagsBits = 62;
        v21._object = 0xE100000000000000;
        String.append(_:)(v21);
        v22 = sub_100017494(aBlock, v32, &v37);

        *(v19 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v17, v18, "Started player for %s", v19, 0xCu);
        sub_10000903C(v20);
      }

      goto LABEL_11;
    }
  }

  v23 = v11;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v37 = v27;
    *v25 = 136315394;
    aBlock = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    aBlock = 0xD000000000000015;
    v32 = 0x80000001002A5450;
    String.append(_:)(v1[1]);
    v28._countAndFlagsBits = 62;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29 = sub_100017494(aBlock, v32, &v37);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2112;
    swift_errorRetain();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v30;
    *v26 = v30;
    _os_log_impl(&_mh_execute_header, v17, v24, "### Failed to start haptics for %s: %@", v25, 0x16u);
    sub_1000030B0(v26);

    sub_10000903C(v27);

LABEL_11:

    return;
  }
}

uint64_t sub_1001F90F0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034D130);
  sub_100003078(v0, qword_10034D130);
  return Logger.init(subsystem:category:)();
}

void *sub_1001F9170(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;

  v8 = a3;
  v9 = [v8 configurationDictionary];
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10011A414(v10);

  v11 = objc_allocWithZone(CHHapticEngine);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock = 0;
  v13 = [v11 initWithAudioSession:0 sessionIsShared:0 options:isa error:&aBlock];

  v14 = aBlock;
  if (v13)
  {
    v4[5] = v13;
    v15 = v13;
    v16 = v4[4];
    aBlock = 0;
    v17 = v14;
    v18 = [v15 createPlayerWithPattern:v16 error:&aBlock];
    v14 = aBlock;
    if (v18)
    {
      v19 = a1;
      v20 = v8;
      v4[6] = v18;
      v21 = v4[5];
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = v19;
      v23[4] = a2;
      v50 = sub_1001F9F40;
      v51 = v23;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_100018AB8;
      v49 = &unk_1003123D0;
      v24 = _Block_copy(&aBlock);
      v25 = v14;
      v26 = v21;

      [v26 setResetHandler:v24];
      _Block_release(v24);

      v27 = v4[5];
      v50 = sub_1001F9B04;
      v51 = 0;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_1001F9C04;
      v49 = &unk_1003123F8;
      v28 = _Block_copy(&aBlock);
      v29 = v27;
      [v29 setStoppedHandler:v28];
      _Block_release(v28);

      if (qword_1003391F8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100003078(v30, qword_10034D130);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Haptic engine setup successfully", v33, 2u);
      }

      return v4;
    }

    v45 = v15;
  }

  else
  {
    v45 = 0;
  }

  v34 = v14;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1003391F8 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100003078(v35, qword_10034D130);

  swift_errorRetain();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v44 = v8;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock = v40;
    *v38 = 136315394;
    v41 = sub_100017494(a1, a2, &aBlock);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2112;
    swift_errorRetain();
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 14) = v42;
    *v39 = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "### Haptics for %s failed to initialize: %@", v38, 0x16u);
    sub_1000030B0(v39);
    v8 = v44;

    sub_10000903C(v40);
  }

  else
  {
  }

  swift_willThrow();

  if (v45)
  {
  }

  swift_deallocPartialClassInstance();
  return v4;
}

void sub_1001F976C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1003391F8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10034D130);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100017494(a2, a3, &v25);
      _os_log_impl(&_mh_execute_header, v8, v9, "Restarting haptic engine %s", v10, 0xCu);
      sub_10000903C(v11);
    }

    v12 = *(v6 + 40);
    v25 = 0;
    v13 = [v12 startAndReturnError:&v25];
    v14 = v25;
    if (v13)
    {

      v15 = v14;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_100017494(a2, a3, &v25);
        _os_log_impl(&_mh_execute_header, v16, v17, "Restarted haptic engine %s", v18, 0xCu);
        sub_10000903C(v19);
      }

      goto LABEL_11;
    }

    v20 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v16, v21, "### Failed restarting haptic engine: %@", v22, 0xCu);
      sub_1000030B0(v23);

LABEL_11:

      return;
    }
  }
}

void sub_1001F9B04(uint64_t a1)
{
  if (qword_1003391F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D130);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Stopped haptic engine for (%ld)", v4, 0xCu);
  }
}

double sub_1001F9C04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_1001F9C58(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003391F8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003078(v1, qword_10034D130);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "### Players finished with error: %@", v4, 0xCu);
      sub_1000030B0(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003391F8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10034D130);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Players finished", v10, 2u);
    }
  }

  return 1;
}

uint64_t sub_1001F9E70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3(a2);

  return v5;
}

uint64_t sub_1001F9ECC()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001F9F5C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034D200);
  sub_100003078(v0, qword_10034D200);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001F9FE0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_1001FA054()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10034D440, &qword_10028DA50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-v4];
  sub_100035D04(&qword_10034D448, &qword_10028DA58);
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  v6 = OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine__state;
  v12[15] = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v6, v5, v2);
  v7 = OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine_log;
  if (qword_100339200 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_100003078(v8, qword_10034D200);
  (*(*(v8 - 8) + 16))(v1 + v7, v9, v8);
  sub_100035D04(&qword_1003425C0, &qword_100278430);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100274B70;
  *(v10 + 32) = _swiftEmptyArrayStorage;
  *(v10 + 40) = 1025;
  *(v10 + 48) = _swiftEmptyArrayStorage;
  *(v10 + 56) = 0;
  *(v10 + 64) = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  *(v10 + 72) = 0;
  *(v10 + 80) = _swiftEmptyArrayStorage;
  *(v10 + 88) = 514;
  *(v10 + 96) = _swiftEmptyArrayStorage;
  *(v10 + 104) = 1;
  *(v10 + 112) = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  *(v10 + 120) = 0;
  *(v10 + 128) = _swiftEmptyArrayStorage;
  *(v10 + 136) = 0;
  *(v10 + 144) = _swiftEmptyArrayStorage;
  *(v10 + 152) = 2;
  *(v10 + 160) = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  *(v10 + 168) = 0;
  *(v10 + 176) = _swiftEmptyArrayStorage;
  *(v10 + 184) = 256;
  *(v10 + 192) = _swiftEmptyArrayStorage;
  *(v10 + 200) = 2;
  *(v10 + 208) = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  *(v10 + 216) = 0;
  *(v10 + 224) = _swiftEmptyArrayStorage;
  *(v10 + 232) = 768;
  *(v10 + 240) = _swiftEmptyArrayStorage;
  *(v10 + 248) = 2;
  *(v10 + 256) = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  *(v10 + 264) = 0;
  *(v10 + 272) = _swiftEmptyArrayStorage;
  *(v10 + 280) = 1025;
  *(v10 + 288) = _swiftEmptyArrayStorage;
  *(v10 + 296) = 2;
  *(v10 + 304) = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  *(v10 + 312) = 0;
  *(v1 + 16) = v10;
  return v1;
}

uint64_t sub_1001FA2D4()
{

  v1 = OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine__state;
  v2 = sub_100035D04(&qword_10034D440, &qword_10028DA50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine_log;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContextDeliveryModeStateMachine(uint64_t a1)
{
  result = qword_10034D248;
  if (!qword_10034D248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001FA420(uint64_t a1)
{
  sub_1001FA508();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001FA508()
{
  if (!qword_10034D258)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10034D258);
    }
  }
}

unint64_t sub_1001FA578(uint64_t a1)
{
  result = sub_1001FA5A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001FA5A0()
{
  result = qword_10034D350;
  if (!qword_10034D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D350);
  }

  return result;
}

uint64_t sub_1001FA5F8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ContextDeliveryModeStateMachine(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_1001FA638(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1001FA6B8(char *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_1001FA72C(uint64_t a1)
{
  result = sub_1001FA754();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001FA754()
{
  result = qword_10034D358;
  if (!qword_10034D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D358);
  }

  return result;
}

unint64_t sub_1001FA7AC(uint64_t a1)
{
  result = sub_1001FA7D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001FA7D4()
{
  result = qword_10034D360;
  if (!qword_10034D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D360);
  }

  return result;
}

unint64_t sub_1001FA82C()
{
  result = qword_10034D368;
  if (!qword_10034D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D368);
  }

  return result;
}

unint64_t sub_1001FA884()
{
  result = qword_10034D370;
  if (!qword_10034D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D370);
  }

  return result;
}

unint64_t sub_1001FA8DC()
{
  result = qword_10034D378;
  if (!qword_10034D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D378);
  }

  return result;
}

unint64_t sub_1001FA93C(uint64_t a1)
{
  result = sub_1001FA964();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001FA964()
{
  result = qword_100348678;
  if (!qword_100348678)
  {
    type metadata accessor for ContextDeliveryModeStateMachine(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348678);
  }

  return result;
}

void sub_1001FA9BC(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a3 = v4;
}

uint64_t sub_1001FAA3C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001FAAB0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034D450);
  sub_100003078(v0, qword_10034D450);
  return Logger.init(subsystem:category:)();
}

void sub_1001FAB30(Swift::UInt a1)
{
  if (qword_100339208 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D450);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A5530, v25);
    *(v5 + 12) = 2080;
    v6 = sub_1000C06B0(a1);
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = sub_100017494(v7, v9, v25);

    *(v5 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: assetType=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v11 = sub_100063E3C(&v26, a1);
  swift_endAccess();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136315138;
      v17 = sub_1000C06B0(a1);
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_100017494(v18, v20, v25);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "Prewarming assetType: %s", v15, 0xCu);
      sub_10000903C(v16);
    }

    v22 = objc_opt_self();
    v23 = [v22 sharedInstance];
    [v23 prewarmBundleForAssetType:a1];

    v12 = [v22 sharedInstance];
    [v12 prewarmAlternateBundleForAssetType:a1];
  }

  else if (v14)
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "AssetType already prewarmed", v24, 2u);
  }
}

uint64_t sub_1001FAEBC()
{

  return swift_deallocClassInstance();
}

void sub_1001FAF20(uint64_t a1)
{
  if (qword_100339210 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034D568);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v10 = sub_1000092A0(v8, v9);
    v12 = sub_100017494(v10, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Executing Handoff with %s", v7, 0xCu);
    sub_10000903C(v8);
  }

  if (*(v1 + 96))
  {
    v14 = 2;
LABEL_7:
    sub_1000F380C();
    swift_allocError();
    *v15 = v14;
    swift_willThrow();
    return;
  }

  sub_1001FB23C(a1, v13);
  if (!v2)
  {
    if (!*(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_mediaRouteIDActive + 8))
    {
      v14 = 0;
      goto LABEL_7;
    }

    v16 = objc_allocWithZone(PCProximityEvent);

    v17 = String._bridgeToObjectiveC()();

    v18 = [v16 initWithType:1 mediaRemoteID:v17 info:0];

    [v18 setExpectsDisplayContext:1];
    sub_10001BD68(v18);
  }
}

uint64_t sub_1001FB174()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034D568);
  v1 = sub_100003078(v0, qword_10034D568);
  if (qword_100338F88 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B118);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001FB23C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = sub_10000DF0C(v2, v3);
  v6 = v5;

  if (!v6)
  {
    goto LABEL_5;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_5:
    sub_1000F380C();
    swift_allocError();
    *v9 = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1001FB334()
{
  result = qword_10034D580;
  if (!qword_10034D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D580);
  }

  return result;
}

uint64_t sub_1001FB388(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return (_swift_task_switch)(sub_1001FB424, v5, v4);
}

uint64_t sub_1001FB424()
{
  v25 = v0;
  if (qword_100339170 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10038B4D0);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v7 = 136315650;
    v9 = sub_100017494(0xD00000000000001ALL, 0x80000001002A5560, v24);
    *(v7 + 4) = v9;
    *(v7 + 12) = 2080;
    v11 = sub_1000092A0(v9, v10);
    v13 = sub_100017494(v11, v12, v24);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2112;
    *(v7 + 24) = v6;
    *v8 = v6;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: device=%s, call=%@", v7, 0x20u);
    sub_1000030B0(v8);

    swift_arrayDestroy();
  }

  if ([*(v0 + 24) service] == 3)
  {
    v15 = [*(*(v0 + 32) + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter) activeConversationForCall:*(v0 + 24)];
    *(v0 + 80) = v15;
    if (v15)
    {
      v16 = v15;
      v17 = swift_task_alloc();
      *(v0 + 88) = v17;
      *v17 = v0;
      v17[1] = sub_1001FB970;
      v18 = *(v0 + 16);

      return sub_1001FC6B8(v18, v16);
    }

    else
    {

      sub_1001FD658();
      swift_allocError();
      *v22 = 6;
      *(v22 + 8) = 2;
      swift_willThrow();
      v23 = *(v0 + 8);

      return v23();
    }
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 64) = v20;
    *v20 = v0;
    v20[1] = sub_1001FB7D0;
    v21 = *(v0 + 16);

    return sub_1001FBBE8(v21);
  }
}

uint64_t sub_1001FB7D0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1001FBB18;
  }

  else
  {
    v5 = sub_1001FB90C;
  }

  return (_swift_task_switch)(v5, v4, v3);
}

uint64_t sub_1001FB90C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FB970()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1001FBB7C;
  }

  else
  {
    v5 = sub_1001FBAAC;
  }

  return (_swift_task_switch)(v5, v4, v3);
}

uint64_t sub_1001FBAAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FBB18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FBB7C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001FBBE8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v5;
  v2[13] = v4;

  return (_swift_task_switch)(sub_1001FBCDC, v5, v4);
}

uint64_t sub_1001FBCDC()
{
  v44 = v0;
  if (qword_100339170 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10038B4D0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v4 = 136315394;
    v5 = sub_100017494(0xD00000000000001ALL, 0x80000001002A5580, v43);
    *(v4 + 4) = v5;
    *(v4 + 12) = 2080;
    v7 = sub_1000092A0(v5, v6);
    v9 = sub_100017494(v7, v8, v43);

    *(v4 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: device=%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  sub_1001C62E0(*(v0 + 48));
  *(v0 + 112) = v10;
  if (!v10)
  {

    sub_1001FD658();
    swift_allocError();
    *v14 = 1;
    *(v14 + 8) = 2;
    swift_willThrow();
LABEL_18:

    v18 = *(v0 + 8);

    return v18();
  }

  v11 = v10;
  if (![v10 isHomePodFamily])
  {

    v15 = [v11 deviceType];
    sub_1001FD658();
    swift_allocError();
    *v16 = v15;
    v17 = 1;
LABEL_16:
    *(v16 + 8) = v17;
    swift_willThrow();
LABEL_17:

    goto LABEL_18;
  }

  CurrentValueSubject.value.getter();
  v12 = *(v0 + 40);
  if (v12 == 254)
  {
    CurrentValueSubject.value.getter();

    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
  }

  else
  {
    v13 = *(v0 + 32);
  }

  *(v0 + 120) = v13;
  *(v0 + 25) = v12;
  if (v12 == 255)
  {
LABEL_15:

    sub_1001FD658();
    swift_allocError();
    *v16 = 0;
    v17 = 2;
    goto LABEL_16;
  }

  if (v12)
  {
    sub_100036718(v13, v12);
    goto LABEL_15;
  }

  v20 = [v13 callStatus];
  if (v20 - 1 >= 2)
  {
    v23 = v20;

    sub_1001FD658();
    swift_allocError();
    *v24 = v23;
    *(v24 + 8) = 0;
    swift_willThrow();
    sub_100036718(v13, v12);
    goto LABEL_17;
  }

  if ([v13 isEndpointOnCurrentDevice])
  {
    v21 = v11;
    v22 = 1;
  }

  else
  {
    v25 = [*(*(v0 + 56) + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter) routeController];
    v26 = [v25 receiverRoute];

    v21 = v26;
    v22 = 2;
    if (!v21)
    {

      sub_1001FD658();
      swift_allocError();
      *v42 = 2;
      *(v42 + 8) = 2;
      swift_willThrow();

      sub_100036718(v13, v12);
      goto LABEL_18;
    }
  }

  *(v0 + 128) = v21;
  v27 = v21;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43[0] = v32;
    *v30 = 136315394;
    v33 = PCInteractionDirection.description.getter(v22);
    v35 = sub_100017494(v33, v34, v43);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2112;
    *(v30 + 14) = v27;
    *v31 = v27;
    v36 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "Handing off call in direction %s to route %@", v30, 0x16u);
    sub_1000030B0(v31);

    sub_10000903C(v32);
  }

  v37 = [*(*(v0 + 56) + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter) routeController];
  [v37 pickRoute:v27];

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    *(v40 + 4) = 2;
    _os_log_impl(&_mh_execute_header, v38, v39, "Scheduling success in %lds", v40, 0xCu);
  }

  static Clock<>.continuous.getter();
  v41 = swift_task_alloc();
  *(v0 + 136) = v41;
  *v41 = v0;
  v41[1] = sub_1001FC3F8;

  return sub_1001FD6AC(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1001FC3F8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  v3 = v2[13];
  v4 = v2[12];
  if (v0)
  {
    v5 = sub_1001FC620;
  }

  else
  {
    v5 = sub_1001FC580;
  }

  return (_swift_task_switch)(v5, v4, v3);
}

uint64_t sub_1001FC580()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 25);

  sub_100036718(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001FC620()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 25);

  sub_100036718(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001FC6B8(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = type metadata accessor for UUID();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[40] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[41] = v6;
  v3[42] = v5;

  return (_swift_task_switch)(sub_1001FC7B0, v6, v5);
}

uint64_t sub_1001FC7B0()
{
  v41 = v0;
  if (qword_100339170 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10038B4D0);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 280);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v7 = 136315650;
    v9 = sub_100017494(0xD00000000000002ALL, 0x80000001002A55C0, v40);
    *(v7 + 4) = v9;
    *(v7 + 12) = 2080;
    v11 = sub_1000092A0(v9, v10);
    v13 = sub_100017494(v11, v12, v40);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2112;
    *(v7 + 24) = v6;
    *v8 = v6;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: device=%s, conversation=%@", v7, 0x20u);
    sub_1000030B0(v8);

    swift_arrayDestroy();
  }

  v15 = sub_1001CB464(*(v0 + 272));
  *(v0 + 344) = v15;
  if (v15)
  {
    v16 = v15;
    v17 = [*(v0 + 280) presentationContext];
    v18 = [v17 mode];

    if (v18 == 2)
    {
      v19 = v0 + 16;
      v30 = *(v0 + 304);
      v29 = *(v0 + 312);
      v31 = *(v0 + 296);
      v32 = *(v0 + 280);
      v33 = [*(*(v0 + 288) + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter) neighborhoodActivityConduit];
      *(v0 + 376) = v33;
      v34 = [v32 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      *(v0 + 384) = isa;
      (*(v30 + 8))(v29, v31);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 400;
      *(v0 + 24) = sub_1001FCF28;
      v36 = swift_continuation_init();
      *(v0 + 200) = sub_100035D04(&qword_10034D598, &unk_10028DC00);
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1001FD20C;
      *(v0 + 168) = &unk_100312628;
      *(v0 + 176) = v36;
      [v33 pullConversation:isa fromTVDevice:v16 completion:v0 + 144];
      goto LABEL_11;
    }

    if (!v18)
    {
      v19 = v0 + 80;
      v21 = *(v0 + 304);
      v20 = *(v0 + 312);
      v22 = *(v0 + 296);
      v23 = *(v0 + 280);
      v24 = [*(*(v0 + 288) + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter) neighborhoodActivityConduit];
      *(v0 + 352) = v24;
      v25 = [v23 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = UUID._bridgeToObjectiveC()().super.isa;
      *(v0 + 360) = v26;
      (*(v21 + 8))(v20, v22);
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 401;
      *(v0 + 88) = sub_1001FCD70;
      v27 = swift_continuation_init();
      *(v0 + 264) = sub_100035D04(&qword_10034D598, &unk_10028DC00);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1001FD20C;
      *(v0 + 232) = &unk_100312650;
      *(v0 + 240) = v27;
      [v24 handoffConversation:v26 toTVDevice:v16 completion:v0 + 208];
LABEL_11:

      return _swift_continuation_await(v19);
    }

    sub_1001FD658();
    swift_allocError();
    *v37 = 3;
    *(v37 + 8) = 2;
    swift_willThrow();
  }

  else
  {

    sub_1001FD658();
    swift_allocError();
    *v28 = 5;
    *(v28 + 8) = 2;
    swift_willThrow();
  }

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1001FCD70()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 368) = v2;
  v3 = *(v1 + 336);
  v4 = *(v1 + 328);
  if (v2)
  {
    v5 = sub_1001FD0E0;
  }

  else
  {
    v5 = sub_1001FCEA0;
  }

  return (_swift_task_switch)(v5, v4, v3);
}

uint64_t sub_1001FCEA0()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001FCF28()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 392) = v2;
  v3 = *(v1 + 336);
  v4 = *(v1 + 328);
  if (v2)
  {
    v5 = sub_1001FD174;
  }

  else
  {
    v5 = sub_1001FD058;
  }

  return (_swift_task_switch)(v5, v4, v3);
}

uint64_t sub_1001FD058()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[43];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001FD0E0()
{
  v1 = v0[45];
  v3 = v0[43];
  v2 = v0[44];

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001FD174()
{
  v1 = v0[48];
  v2 = v0[47];
  v3 = v0[43];

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001FD20C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000EBC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100035D04(&unk_100346020, &qword_100271A00);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

unint64_t sub_1001FD2D8(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v9 = 0;
      _StringGuts.grow(_:)(22);
      v2._countAndFlagsBits = 0xD000000000000014;
      v2._object = 0x80000001002A5630;
      String.append(_:)(v2);
      type metadata accessor for TURouteDeviceType(0);
      _print_unlocked<A, B>(_:_:)();
      return v9;
    }

    v5 = 0x6C6C6163206F4ELL;
    v6 = 0x7265766E6F436F6ELL;
    if (a1 != 6)
    {
      v6 = 0x66736E6172546F6ELL;
    }

    v7 = 0x6F7220656C617453;
    if (a1 != 4)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 5)
    {
      v6 = v7;
    }

    v8 = 0x6C61636F6C206F4ELL;
    if (a1 != 2)
    {
      v8 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x6574756F72206F4ELL;
    }

    if (a1 > 1)
    {
      v5 = v8;
    }

    if (a1 <= 3)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    if ((a1 & 0x100000000) == 0)
    {
      v3._countAndFlagsBits = TUCallStatus.description.getter(a1);
      v9 = 0xD000000000000010;
      String.append(_:)(v3);

      return v9;
    }

    return 0xD000000000000013;
  }
}

uint64_t TUCallStatus.description.getter(int a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 1701602409;
      case 1:
        return 0x657669746361;
      case 2:
        return 1684825448;
    }

LABEL_13:
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    return 2629695;
  }

  if (a1 > 4)
  {
    if (a1 == 5 || a1 == 6)
    {
      return 0x656E6E6F63736964;
    }

    goto LABEL_13;
  }

  if (a1 == 3)
  {
    v1 = 1684956531;
  }

  else
  {
    v1 = 1735289202;
  }

  return v1 | 0x676E6900000000;
}

unint64_t sub_1001FD658()
{
  result = qword_10034D588;
  if (!qword_10034D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D588);
  }

  return result;
}

uint64_t sub_1001FD6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return (_swift_task_switch)(sub_1001FD7AC, 0, 0);
}

uint64_t sub_1001FD7AC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1001FDB64(&qword_100349618, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1001FDB64(&qword_10034D590, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1001FD93C;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1001FD93C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (!v0)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1001FDAF8, 0, 0);
}

uint64_t sub_1001FDAF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FDB64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001FDBAC(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1001FDBC4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

id sub_1001FDBF4()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = qword_10038B0B8;
  v1 = *(qword_10038B0B8 + 1416);
  sub_10005F4E4();

  v2 = v0[178];
  sub_10005F4E4();

  v3 = v0[179];
  sub_10005F4E4();

  v4 = v0[180];
  sub_10005F4E4();

  nullsub_1();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0[181];
  sub_10005F4E4();
  v15 = v14;

  v16 = objc_allocWithZone(FluidSpring);

  return [v16 initWithParameters:v6 retargetImpuse:{v8, v10, v12, v15}];
}

uint64_t sub_1001FDD90()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001FDDF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 313))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_1001FDE50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_1001FDF08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1001FDF50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001FDFA0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_100035D04(&qword_10034D688, &qword_10028DF70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_10000EBC0(a1, a1[3]);
  sub_1001FE8CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = v12;
    v13 = 1;
    sub_1001FE974();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001FE12C()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 1868983913;
  }
}

uint64_t sub_1001FE150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1868983913 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1001FE22C(uint64_t a1)
{
  v2 = sub_1001FE8CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001FE268(uint64_t a1)
{
  v2 = sub_1001FE8CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001FE2A4(uint64_t a1)
{
  v2 = sub_1001FE414();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001FE2E0(uint64_t a1)
{
  v2 = sub_1001FE414();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001FE330()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3._countAndFlagsBits = sub_1001FE468(*(v0 + 16));
  String.append(_:)(v3);

  v4._countAndFlagsBits = 656423463;
  v4._object = 0xE400000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 39;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 39;
}

uint64_t sub_1001FE3C0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1001FE6DC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_1001FE414()
{
  result = qword_10034D668;
  if (!qword_10034D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D668);
  }

  return result;
}

unint64_t sub_1001FE468(char a1)
{
  result = 0x4979646165726C41;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 5:
      result = 0xD000000000000012;
      break;
    case 3:
      return result;
    case 4:
      result = 0x7075727265746E69;
      break;
    case 6:
      result = 0x6974696E49746F4ELL;
      break;
    case 7:
      result = 0x6F6974617265704FLL;
      break;
    case 8:
      result = 0x74756F656D6954;
      break;
    case 9:
      result = 0x7463657078656E55;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6E776F6E6B6E55;
      break;
    case 12:
      result = 0x726F707075736E55;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_1001FE5F8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001FEB9C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001FE6DC(void *a1)
{
  v3 = sub_100035D04(&qword_10034D670, &qword_10028DF68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001FE8CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[13] = 1;
    sub_1001FE920();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000903C(a1);
  return v7;
}

unint64_t sub_1001FE8CC()
{
  result = qword_10034D678;
  if (!qword_10034D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D678);
  }

  return result;
}

unint64_t sub_1001FE920()
{
  result = qword_10034D680;
  if (!qword_10034D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D680);
  }

  return result;
}

unint64_t sub_1001FE974()
{
  result = qword_10034D690;
  if (!qword_10034D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D690);
  }

  return result;
}

unint64_t sub_1001FE9EC()
{
  result = qword_10034D698;
  if (!qword_10034D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D698);
  }

  return result;
}

unint64_t sub_1001FEA44()
{
  result = qword_10034D6A0;
  if (!qword_10034D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D6A0);
  }

  return result;
}

unint64_t sub_1001FEA9C()
{
  result = qword_10034D6A8;
  if (!qword_10034D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D6A8);
  }

  return result;
}

unint64_t sub_1001FEAF4()
{
  result = qword_10034D6B0;
  if (!qword_10034D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D6B0);
  }

  return result;
}

unint64_t sub_1001FEB48()
{
  result = qword_10034D6B8;
  if (!qword_10034D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D6B8);
  }

  return result;
}

unint64_t sub_1001FEB9C(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

void sub_1001FEBAC(void (*a1)(void ***), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v24 = v9;
  v25 = v10;
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v15 = [Strong dispatchQueue], Strong, (v23 = v15) != 0))
  {
    v16 = swift_allocObject();
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = sub_100202B0C;
    v18[4] = v13;
    v31 = sub_1002028D0;
    v32 = v18;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100018AB8;
    v30 = &unk_100312EE8;
    v19 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_1002027FC(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v23;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v6 + 8))(v8, v5);
    (*(v25 + 8))(v12, v24);
  }

  else
  {

    sub_10001618C();
    v21 = swift_allocError();
    *v22 = 0xD00000000000001CLL;
    *(v22 + 8) = 0x80000001002A57D0;
    *(v22 + 16) = 9;
    aBlock = v21;
    LOBYTE(v28) = 1;
    a1(&aBlock);
  }
}

void sub_1001FEFC4(void (*a1)(void ***), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v23 = v9;
  v24 = v10;
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong && (v15 = [Strong dispatchQueue], , (v22 = v15) != 0))
  {
    v16 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_100202B0C;
    v17[4] = v13;
    v30 = sub_10020288C;
    v31 = v17;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100018AB8;
    v29 = &unk_100312DF8;
    v18 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_1002027FC(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v6 + 8))(v8, v5);
    (*(v24 + 8))(v12, v23);
  }

  else
  {

    sub_10001618C();
    v20 = swift_allocError();
    *v21 = 0xD00000000000001CLL;
    *(v21 + 8) = 0x80000001002A57D0;
    *(v21 + 16) = 9;
    aBlock = v20;
    LOBYTE(v27) = 1;
    a1(&aBlock);
  }
}

void sub_1001FF3E4(void (*a1)(void ***), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v24 = v9;
  v25 = v10;
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v15 = [Strong dispatchQueue], Strong, (v23 = v15) != 0))
  {
    v16 = swift_allocObject();
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = sub_100202B0C;
    v18[4] = v13;
    v31 = sub_100202848;
    v32 = v18;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100018AB8;
    v30 = &unk_100312D08;
    v19 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_1002027FC(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v23;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v6 + 8))(v8, v5);
    (*(v25 + 8))(v12, v24);
  }

  else
  {

    sub_10001618C();
    v21 = swift_allocError();
    *v22 = 0xD00000000000001CLL;
    *(v22 + 8) = 0x80000001002A57D0;
    *(v22 + 16) = 9;
    aBlock = v21;
    LOBYTE(v28) = 1;
    a1(&aBlock);
  }
}

void sub_1001FF7FC(void (*a1)(void ***), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v23 = v9;
  v24 = v10;
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong && (v15 = [Strong dispatchQueue], , (v22 = v15) != 0))
  {
    v16 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_1002027B4;
    v17[4] = v13;
    v30 = sub_1002027B8;
    v31 = v17;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100018AB8;
    v29 = &unk_100312B50;
    v18 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_1002027FC(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v6 + 8))(v8, v5);
    (*(v24 + 8))(v12, v23);
  }

  else
  {

    sub_10001618C();
    v20 = swift_allocError();
    *v21 = 0xD00000000000001CLL;
    *(v21 + 8) = 0x80000001002A57D0;
    *(v21 + 16) = 9;
    aBlock = v20;
    LOBYTE(v27) = 1;
    a1(&aBlock);
  }
}

uint64_t sub_1001FFC1C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_1001FFC5C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &aBlock[-1] - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = type metadata accessor for Logger();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    sub_10007E4B8(v16, v14);
    v20 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a2;
    v21[5] = a3;
    sub_10007E4B8(v14, v21 + v20);
    aBlock[4] = a5;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = a6;
    v22 = _Block_copy(aBlock);

    [v18 activateWithCompletion:v22];
    _Block_release(v22);
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v23 = 0x666C6573206C696ELL;
    *(v23 + 8) = 0xE800000000000000;
    *(v23 + 16) = 9;
    a2();
  }
}

void sub_1001FFED0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &aBlock[-1] - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = type metadata accessor for Logger();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    sub_10007E4B8(v16, v14);
    v20 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a2;
    v21[5] = a3;
    sub_10007E4B8(v14, v21 + v20);
    aBlock[4] = a5;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = a6;
    v22 = _Block_copy(aBlock);

    [v18 activateWithCompletion:v22];
    _Block_release(v22);
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v23 = 0x666C6573206C696ELL;
    *(v23 + 8) = 0xE800000000000000;
    *(v23 + 16) = 9;
    a2();
  }
}

Swift::UInt64 sub_100200148(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  result = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a3 && (*(a1 + 16) & 1) == 0)
  {
    v32 = a2;
    v33 = a3;

    v16._countAndFlagsBits = 32;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    if (*(a1 + 16))
    {
      v17 = 0;
      v18 = 0xE000000000000000;
    }

    else
    {
      v19 = UpTicks()();
      *(a1 + 40) = v19;
      *(a1 + 48) = 0;
      *(a1 + 16) = 1;
      if (*(a1 + 32))
      {
        v18 = 0xE700000000000000;
        v17 = 0x646570706F7473;
      }

      else
      {
        v20 = *(a1 + 24);
        v21 = v19 >= v20;
        result = v19 - v20;
        if (!v21)
        {
          __break(1u);
          return result;
        }

        v22 = UpTicksToSecondsF(_:)(result);
        v17 = sub_100110CA8(v22);
        v18 = v23;
      }
    }

    v24 = v18;
    String.append(_:)(*&v17);

    v26 = v32;
    v25 = v33;
    sub_1000EF05C(a4, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      return sub_1000097E8(v10, &unk_10033D8B0, &qword_100275520);
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v32 = v30;
        *v29 = 136315138;
        v31 = sub_100017494(v26, v25, &v32);

        *(v29 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s", v29, 0xCu);
        sub_10000903C(v30);
      }

      else
      {
      }

      return (*(v12 + 8))(v15, v11);
    }
  }

  return result;
}

uint64_t sub_100200498(char a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v30 = a3;
  v31 = a8;
  v14 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  result = __chkstk_darwin(v17);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a2)
    {
      result = (a2)(0);
    }

    goto LABEL_15;
  }

  sub_1000EF05C(a4, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    result = sub_1000097E8(v16, &unk_10033D8B0, &qword_100275520);
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  (*(v18 + 32))(v21, v16, v17);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v24 = 136315394;
    *(v24 + 4) = sub_100017494(a5, a6, &v32);
    *(v24 + 12) = 2112;
    if (!_getErrorEmbeddedNSError<A>(_:)())
    {
      swift_allocError();
    }

    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v25;
    v26 = v28;
    *v28 = v25;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s %@", v24, 0x16u);
    sub_1000097E8(v26, &qword_100339940, &unk_100272C50);

    sub_10000903C(v29);
  }

  result = (*(v18 + 8))(v21, v17);
  if (a2)
  {
LABEL_12:
    if (!_getErrorEmbeddedNSError<A>(_:)())
    {
      swift_allocError();
    }

    a2();
  }

LABEL_15:
  if (a7)
  {
    return a7(result);
  }

  return result;
}

uint64_t sub_100200810(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v35 = a3;
  v36 = a8;
  v14 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  __chkstk_darwin(v14 - 8);
  v16 = &v31 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  result = __chkstk_darwin(v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1000EF05C(a4, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      result = sub_1000097E8(v16, &unk_10033D8B0, &qword_100275520);
      if (!a2)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    (*(v18 + 32))(v21, v16, v17);

    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v34 = v23;
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38 = v33;
      *v24 = 136315394;
      *(v24 + 4) = sub_100017494(a5, a6, &v38);
      *(v24 + 12) = 2112;
      v37 = a1;
      swift_errorRetain();
      sub_100035D04(&unk_100346020, &qword_100271A00);
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
      }

      else
      {
        swift_allocError();
        *v25 = a1;
      }

      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v26;
      v27 = v32;
      *v32 = v26;
      _os_log_impl(&_mh_execute_header, v22, v34, "%s %@", v24, 0x16u);
      sub_1000097E8(v27, &qword_100339940, &unk_100272C50);

      sub_10000903C(v33);
    }

    result = (*(v18 + 8))(v21, v17);
    if (a2)
    {
LABEL_13:
      v38 = a1;
      swift_errorRetain();
      sub_100035D04(&unk_100346020, &qword_100271A00);
      v28 = _getErrorEmbeddedNSError<A>(_:)();
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = swift_allocError();
        *v30 = a1;
      }

      a2(v29);
    }
  }

  else if (a2)
  {
    result = (a2)(0);
  }

LABEL_17:
  if (a7)
  {
    return a7(result);
  }

  return result;
}

uint64_t sub_100200C10()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034D6C0);
  sub_100003078(v0, qword_10034D6C0);
  return Logger.init(subsystem:category:)();
}

id sub_100200E6C(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_invalidationHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_interruptionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_environment] = 0;
  v1[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_isActive] = 0;
  *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_tasks] = &_swiftEmptySetSingleton;
  if (qword_100339218 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034D6C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  *&v2[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_dispatchQueue] = a1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for HandoffFeature();
  return objc_msgSendSuper2(&v11, "init");
}

id sub_100200FCC()
{
  v1 = v0;
  if (qword_100339218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D6C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for HandoffFeature();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100201174(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v72 = a2;
  v78 = a1;
  v4 = sub_100035D04(&qword_10034D730, &qword_10028E258);
  v76 = *(v4 - 8);
  v77 = v4;
  __chkstk_darwin(v4);
  v75 = &v63 - v5;
  v6 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v71 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v80 = v8;
  v81 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v63 - v9;
  v11 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v11 - 8);
  v70 = &v63 - v12;
  v13 = sub_100035D04(&qword_10034D738, &unk_10028E260);
  v73 = *(v13 - 8);
  v74 = v13;
  __chkstk_darwin(v13);
  v79 = &v63 - v14;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100339218 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100003078(v19, qword_10034D6C0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Activate", v23, 2u);
  }

  if ((v3[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_isActive] & 1) == 0)
  {
    v3[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_isActive] = 1;
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v29 = qword_10038B5B8;
    *v18 = qword_10038B5B8;
    (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
    v30 = v29;
    LOBYTE(v29) = _dispatchPreconditionTest(_:)();
    (*(v16 + 8))(v18, v15);
    if ((v29 & 1) == 0)
    {
      __break(1u);
      return;
    }

    type metadata accessor for Stopwatch();
    v31 = swift_allocObject();
    v68 = v10;
    v69 = v31;
    *(v31 + 16) = 1;
    *(v31 + 24) = 0;
    *(v31 + 32) = 1;
    *(v31 + 40) = 0;
    *(v31 + 48) = 1;
    *(v31 + 24) = UpTicks()();
    *(v31 + 32) = 0;
    *(v31 + 16) = 0;
    type metadata accessor for HandoffEnvironment(0);
    swift_allocObject();
    v32 = sub_10014354C();
    *&v3[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_environment] = v32;
    v33 = v32;

    v34 = *(v33 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment__isEnabled);
    v67 = v33;
    *(v34 + 24) = 1;

    sub_10005E50C();
    LOBYTE(v82) = *(v34 + 24);
    CurrentValueSubject.send(_:)();

    swift_allocObject();
    swift_weakInit();
    sub_100035D04(&qword_100345FE0, &qword_1002795C0);
    swift_allocObject();
    v35 = Future.init(_:)();
    v65 = v20;
    v82 = v35;
    v83 = *&v3[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_dispatchQueue];
    v36 = v83;
    v37 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v38 = v70;
    (*(*(v37 - 8) + 56))(v70, 1, 1, v37);
    sub_100035CB8();
    v66 = v3;
    sub_10000E244(&qword_1003436B0, &qword_100345FE0, &qword_1002795C0, &protocol conformance descriptor for Future<A, B>);
    sub_1002027FC(&qword_10034B420, sub_100035CB8, &protocol conformance descriptor for OS_dispatch_queue);
    v39 = v36;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v38, &qword_10034C680, &qword_100270390);

    v40 = *(v19 - 8);
    v70 = *(v40 + 16);
    v41 = v68;
    (v70)(v68, v20, v19);
    v64 = *(v40 + 56);
    v64(v41, 0, 1, v19);
    v42 = v81;
    sub_1000EF05C(v41, v81);
    v43 = *(v71 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v69;
    *(v44 + 24) = xmmword_10027DE30;
    sub_10007E4B8(v42, v44 + ((v43 + 40) & ~v43));
    sub_10000E244(&qword_10034D740, &qword_10034D738, &unk_10028E260, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    swift_retain_n();
    v45 = v74;
    v46 = v75;
    v47 = v79;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10034D748, &qword_10034D730, &qword_10028E258, &protocol conformance descriptor for Publishers.Map<A, B>);
    v48 = v77;
    v49 = Publisher.eraseToAnyPublisher()();
    v71 = v49;

    (*(v76 + 8))(v46, v48);
    v50 = v68;
    sub_1000097E8(v68, &unk_10033D8B0, &qword_100275520);
    (*(v73 + 8))(v47, v45);
    v51 = swift_allocObject();
    v52 = v65;
    v53 = v66;
    *(v51 + 16) = v66;
    (v70)(v50, v52, v19);
    v64(v50, 0, 1, v19);
    v82 = v49;
    v54 = v50;
    v55 = v81;
    sub_1000EF05C(v50, v81);
    v56 = (v43 + 32) & ~v43;
    v57 = (v80 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v59 = v72;
    *(v58 + 16) = v78;
    *(v58 + 24) = v59;
    sub_10007E4B8(v55, v58 + v56);
    v60 = v58 + v57;
    strcpy((v58 + v57), "### Activate");
    *(v60 + 13) = 0;
    *(v60 + 14) = -5120;
    v61 = (v58 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v61 = sub_1002022A4;
    v61[1] = v51;
    v62 = v53;

    sub_100035D04(&qword_10034D750, qword_10028E270);
    sub_10000E244(&qword_10034D758, &qword_10034D750, qword_10028E270, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.sink(receiveCompletion:receiveValue:)();

    sub_1000097E8(v54, &unk_10033D8B0, &qword_100275520);

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    goto LABEL_14;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Environment already initialized - setting isEnabled to true", v26, 2u);
  }

  v27 = *&v3[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_environment];
  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment__isEnabled);
    *(v28 + 24) = 1;

    sub_10005E50C();
    LOBYTE(v82) = *(v28 + 24);
    CurrentValueSubject.send(_:)();

LABEL_14:
  }
}

double sub_100201D80()
{
  v1 = v0;
  if (qword_100339218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D6C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "invalidate()", v5, 2u);
  }

  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_environment);
  if (v7)
  {
    *(*(v7 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment__isEnabled) + 24) = 0;

    sub_10005E50C();
    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100201FCC()
{
  v1 = v0;
  _StringGuts.grow(_:)(44);
  v2._object = 0x80000001002A57B0;
  v2._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v2);
  if (qword_100339240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  CurrentValueSubject.value.getter();
  if (v12 == 3)
  {
    CurrentValueSubject.value.getter();
  }

  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0x203A736B7361540ALL;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);
  v4 = OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_tasks;
  swift_beginAccess();
  if ((*(v1 + v4) & 0xC000000000000001) != 0)
  {

    __CocoaSet.count.getter();
  }

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 2570;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_environment))
  {
    type metadata accessor for HandoffEnvironment(0);

    v7 = String.init<A>(describing:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xEF6C696E3D746E65;
    v7 = 0x6D6E6F7269766E65;
  }

  v10 = v9;
  String.append(_:)(*&v7);

  return 0;
}

Swift::UInt64 sub_100202220()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_100200148(v2, v3, v4, v5);
}

uint64_t sub_1002022A8(uint64_t *a1)
{
  v3 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v6 + 8);
  v14 = *a1;

  return sub_100200810(v14, v7, v8, v1 + v4, v10, v11, v12, v13);
}

Swift::UInt64 sub_100202368(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && a4 && (*(a2 + 16) & 1) == 0)
  {
    v38 = a3;
    v39 = a4;

    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    if (*(a2 + 16))
    {
      v18 = 0;
      v19 = 0xE000000000000000;
    }

    else
    {
      v20 = UpTicks()();
      *(a2 + 40) = v20;
      *(a2 + 48) = 0;
      *(a2 + 16) = 1;
      if (*(a2 + 32))
      {
        v19 = 0xE700000000000000;
        v18 = 0x646570706F7473;
      }

      else
      {
        v21 = *(a2 + 24);
        v22 = v20 >= v21;
        result = v20 - v21;
        if (!v22)
        {
          __break(1u);
          return result;
        }

        v24 = UpTicksToSecondsF(_:)(result);
        v18 = sub_100110CA8(v24);
        v19 = v25;
      }
    }

    v26 = v19;
    String.append(_:)(*&v18);

    v28 = v38;
    v27 = v39;
    sub_1000EF05C(a5, v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      sub_1000097E8(v12, &unk_10033D8B0, &qword_100275520);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      v37 = v29;
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v38 = v32;
        *v31 = 136315138;
        v33 = sub_100017494(v28, v27, &v38);

        *(v31 + 4) = v33;
        v34 = v30;
        v35 = v37;
        _os_log_impl(&_mh_execute_header, v37, v34, "%s", v31, 0xCu);
        sub_10000903C(v32);
      }

      else
      {
      }

      (*(v14 + 8))(v16, v13);
    }
  }

  return a1;
}

void sub_1002026CC()
{
  if (qword_100339218 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034D6C0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "activated()", v2, 2u);
  }
}

uint64_t sub_1002027FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100202914()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100202A3C(uint64_t a1)
{
  v3 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_10014B240(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100202B10(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &unk_10034D8B0;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_10000E244(&unk_10034D8C8, v3, &qword_10028E2D0, &protocol conformance descriptor for [A]);
      for (i = 0; i != v14; ++i)
      {
        sub_100035D04(v3, &qword_10028E2D0);
        v18 = v3;
        v19 = sub_100128B4C(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_100003118(0, &qword_10033AE48, NSLayoutConstraint_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100202E08()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034D760);
  sub_100003078(v0, qword_10034D760);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100202E8C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___hintViewControllerEventPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___hintViewControllerEventPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___hintViewControllerEventPublisher);
  }

  else
  {
    sub_100035D04(&unk_10034D890, &unk_10027C0F0);
    sub_10000E244(&unk_1003450A0, &unk_10034D890, &unk_10027C0F0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();
    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_100202F68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v4 - 8);
  v120 = &v93 - v5;
  v6 = sub_100035D04(&qword_10034D8D8, &qword_10028E2D8);
  v118 = *(v6 - 8);
  v119 = v6;
  __chkstk_darwin(v6);
  v117 = &v93 - v7;
  v8 = type metadata accessor for Logger();
  v113 = *(v8 - 8);
  __chkstk_darwin(v8);
  v105 = v9;
  v123 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100035D04(&unk_10034D8E0, &qword_10028E2E0);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v93 - v10;
  v102 = sub_100035D04(&qword_10033D6B0, &unk_100274510);
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v12 = &v93 - v11;
  v100 = sub_100035D04(&qword_10034D8F0, &unk_100273380);
  v13 = *(v100 - 1);
  __chkstk_darwin(v100);
  v15 = &v93 - v14;
  v106 = sub_100035D04(&qword_10034D8F8, &qword_10028E2E8);
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v93 - v16;
  v112 = sub_100035D04(&unk_10034D900, &unk_10028E2F0);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v93 - v17;
  v18 = sub_100035D04(&qword_100345030, &qword_10027C0E0);
  v115 = *(v18 - 8);
  v116 = v18;
  __chkstk_darwin(v18);
  v114 = &v93 - v19;
  *&v1[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView;
  *&v2[v20] = [objc_allocWithZone(UIImageView) init];
  v21 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView;
  *&v2[v21] = [objc_allocWithZone(UIImageView) init];
  v22 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_hintViewControllerEventSubject;
  sub_100035D04(&unk_10034D890, &unk_10027C0F0);
  swift_allocObject();
  *&v2[v22] = PassthroughSubject.init()();
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___hintViewControllerEventPublisher] = 0;
  v23 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_tapGestureRecognizer;
  *&v2[v23] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_tasks] = &_swiftEmptySetSingleton;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activeLayoutMode] = 1;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageViewHeight] = 0x4036000000000000;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageViewHeight] = 0x4036000000000000;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_heightOffsetMin] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_outsidePadding] = 0x4020000000000000;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewHeightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewConstraints] = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___activityImageViewConstraints] = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___deviceImageViewConstraints] = 0;
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v124 = v8;
  v122 = sub_100003078(v8, qword_10034D760);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Init", v26, 2u);
  }

  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_viewModel] = a1;
  v27 = type metadata accessor for HintViewControllerDynamicIsland();
  v129.receiver = v2;
  v129.super_class = v27;

  v28 = objc_msgSendSuper2(&v129, "initWithNibName:bundle:", 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v28;
  static Published.subscript.getter();

  v30 = sub_1000BDC5C();
  v32 = v31;

  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v30;
  }

  v34 = sub_100131BD8(v33);
  v125 = 0x6C6C69662ELL;
  v126 = 0xE500000000000000;
  v127 = v34;
  v128 = v35;
  v127 = String.init<A>(_:)();
  v128 = v36;
  String.append<A>(contentsOf:)();
  v37 = String._bridgeToObjectiveC()();

  v38 = [objc_opt_self() systemImageNamed:v37];

  if (v38)
  {
    v39 = [objc_opt_self() configurationWithPointSize:4 weight:16.0];
    v40 = [v38 imageByApplyingSymbolConfiguration:v39];
  }

  else
  {
    v40 = 0;
  }

  v41 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView;
  v42 = *&v29[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView];
  v99 = v40;
  [v42 setImage:v40];
  [*&v29[v41] setContentMode:1];
  v43 = *&v29[v41];
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 whiteColor];
  [v45 setTintColor:v46];

  v47 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView;
  v48 = [*&v29[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView] layer];
  [v48 setCornerCurve:kCACornerCurveContinuous];

  v49 = [*&v29[v47] layer];
  [v49 setCornerRadius:4.0];

  v50 = [*&v29[v47] layer];
  [v50 setShouldRasterize:1];

  v51 = [*&v29[v47] layer];
  v52 = [objc_opt_self() mainScreen];
  [v52 scale];
  v54 = v53;

  [v51 setRasterizationScale:v54 + v54];
  [*&v29[v47] setClipsToBounds:1];
  v55 = *&v29[v47];
  sub_1001F00B0();
  swift_unknownObjectRelease();
  v56 = sub_1001F00B0();
  v98 = v29;
  if (v56)
  {
    objc_opt_self();
    v57 = swift_dynamicCastObjCClass();
    if (v57)
    {
      v58 = [v57 image];
    }

    else
    {
      v58 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0;
  }

  [v55 setImage:v58];

  v97 = a1;
  v125 = sub_1001EF664();
  sub_100035D04(&unk_10034D910, &unk_100273390);
  v96 = sub_100035D04(&qword_10034B4F0, &unk_10027C100);
  sub_10000E244(&unk_10034D920, &unk_10034D910, &unk_100273390, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  v121 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033D6B8, &qword_10034D8F0, &unk_100273380, &protocol conformance descriptor for Publishers.Map<A, B>);
  v59 = v100;
  Publisher.removeDuplicates(by:)();
  sub_10000E244(&unk_10034D930, &qword_10033D6B0, &unk_100274510, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v60 = v102;
  v61 = Publisher.eraseToAnyPublisher()();
  (*(v101 + 8))(v12, v60);
  (*(v13 + 8))(v15, v59);
  v125 = v61;
  v127 = sub_100070630();
  v62 = sub_100035D04(&qword_10033D6C8, &unk_1002733A0);
  v101 = sub_10000E244(&unk_10034D940, &qword_10033D6C8, &unk_1002733A0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v63 = v103;
  v102 = v62;
  Publishers.CombineLatest.init(_:_:)();
  LOBYTE(v61) = static os_log_type_t.info.getter();
  v64 = v113;
  v100 = v113[2];
  v65 = v123;
  v66 = v124;
  (v100)(v123, v122, v124);
  v95 = *(v64 + 80);
  v67 = &v105[(v95 + 64) & ~v95];
  v68 = (v95 + 64) & ~v95;
  v94 = v68;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1002043E4;
  *(v69 + 24) = 0;
  *(v69 + 32) = 0;
  *(v69 + 40) = 0xE000000000000000;
  *(v69 + 48) = 0;
  *(v69 + 56) = 0xE000000000000000;
  v105 = v64[4];
  (v105)(v69 + v68, v65, v66);
  v67[v69] = v61;
  sub_100035D04(&qword_10034B590, &qword_100289820);
  sub_10000E244(&qword_10034D950, &qword_10034D8F8, &qword_10028E2E8, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v70 = v107;
  v71 = v106;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034D958, &unk_10034D8E0, &qword_10028E2E0, v121);
  v72 = v109;
  v73 = Publisher.eraseToAnyPublisher()();
  (*(v108 + 8))(v70, v72);
  (*(v104 + 8))(v63, v71);
  v125 = v73;
  v74 = swift_allocObject();
  v75 = v98;
  swift_unknownObjectWeakInit();
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1002077E4;
  *(v76 + 24) = v74;
  v113 = v75;
  sub_100035D04(&qword_10034D960, qword_10028E348);
  sub_10000E244(&qword_10034D968, &qword_10034D960, qword_10028E348, &protocol conformance descriptor for AnyPublisher<A, B>);
  v77 = v110;
  Publisher.map<A>(_:)();

  LOBYTE(v75) = static os_log_type_t.info.getter();
  v78 = v123;
  v79 = v124;
  (v100)(v123, v122, v124);
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  *(v80 + 24) = 0;
  *(v80 + 32) = 0xD000000000000011;
  *(v80 + 40) = 0x80000001002A5BB0;
  *(v80 + 48) = 0;
  *(v80 + 56) = 0xE000000000000000;
  (v105)(v80 + v94, v78, v79);
  v67[v80] = v75;
  v81 = v121;
  sub_10000E244(&qword_10034D970, &unk_10034D900, &unk_10028E2F0, v121);
  v82 = v117;
  v83 = v112;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034D978, &qword_10034D8D8, &qword_10028E2D8, v81);
  v84 = v119;
  v85 = Publisher.eraseToAnyPublisher()();
  (*(v118 + 8))(v82, v84);
  (*(v111 + 8))(v77, v83);
  v125 = v85;
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v86 = static OS_dispatch_queue.main.getter();
  v127 = v86;
  v87 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v88 = v120;
  (*(*(v87 - 8) + 56))(v120, 1, 1, v87);
  sub_1000513CC();
  v89 = v114;
  Publisher.receive<A>(on:options:)();
  sub_100056CC4(v88);

  swift_allocObject();
  v90 = v113;
  swift_unknownObjectWeakInit();

  sub_10000E244(&qword_10034D980, &qword_100345030, &qword_10027C0E0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v91 = v116;
  Publisher<>.sink(receiveValue:)();

  (*(v115 + 8))(v89, v91);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v90;
}

unint64_t sub_1002042A0(uint64_t a1, uint64_t a2)
{
  v4 = 7104878;
  _StringGuts.grow(_:)(35);

  if (a1)
  {
    swift_unknownObjectRetain();
    sub_100035D04(&qword_10033D6D0, &unk_10027C120);
    v5 = String.init<A>(describing:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  v8 = v7;
  String.append(_:)(*&v5);

  v9._countAndFlagsBits = 0x3D6C61636F6C202CLL;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_100035D04(&qword_10033D6D0, &unk_10027C120);
    v4 = String.init<A>(describing:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  v12._countAndFlagsBits = v4;
  v12._object = v11;
  String.append(_:)(v12);

  return 0xD000000000000017;
}

void *sub_1002043F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    if (a2)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        v5 = result;
        swift_unknownObjectRetain();
        return v5;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100204478(id *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView);

    if (v2)
    {
      v2 = [v2 image];
    }

    [v5 setImage:v2];
  }
}

id sub_10020454C()
{
  v1 = v0;
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D760);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for HintViewControllerDynamicIsland();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100204898(void *a1)
{
  v2 = v1;
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034D760);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100017494(0xD00000000000001FLL, 0x8000000100298670, v29);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000903C(v8);
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v9 = [a1 requestIdentifier];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == UUID.uuidString.getter() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
LABEL_12:
      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v30 = v19;
        *v18 = 136315138;
        v20 = [a1 requestIdentifier];
        if (v20)
        {
          v21 = v20;
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v29[0] = v22;
        v29[1] = v24;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v25 = String.init<A>(describing:)();
        v27 = sub_100017494(v25, v26, &v30);

        *(v18 + 4) = v27;
        _os_log_impl(&_mh_execute_header, oslog, v17, "### Unrecognized requestID %s", v18, 0xCu);
        sub_10000903C(v19);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v2, 3uLL, 0, 3);

    swift_unknownObjectRelease();
  }
}

void sub_100204C6C(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10034D760);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0xD00000000000002DLL, 0x8000000100298640, v32);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100017494(v5, v7, v32);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s reason=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v12 = [a1 requestIdentifier];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == UUID.uuidString.getter() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
LABEL_15:

      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v33 = v22;
        *v21 = 136315138;
        v23 = [a1 requestIdentifier];
        if (v23)
        {
          v24 = v23;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v32[0] = v25;
        v32[1] = v27;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v28 = String.init<A>(describing:)();
        v30 = sub_100017494(v28, v29, &v33);

        *(v21 + 4) = v30;
        _os_log_impl(&_mh_execute_header, oslog, v20, "### Unrecognized requestID %s", v21, 0xCu);
        sub_10000903C(v22);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v3, v5, v7, 2);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1002050FC(void *a1)
{
  v2 = v1;
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034D760);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100017494(0xD000000000000020, 0x8000000100298610, v29);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000903C(v8);
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v9 = [a1 requestIdentifier];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == UUID.uuidString.getter() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
LABEL_12:
      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v30 = v19;
        *v18 = 136315138;
        v20 = [a1 requestIdentifier];
        if (v20)
        {
          v21 = v20;
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v29[0] = v22;
        v29[1] = v24;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v25 = String.init<A>(describing:)();
        v27 = sub_100017494(v25, v26, &v30);

        *(v18 + 4) = v27;
        _os_log_impl(&_mh_execute_header, oslog, v17, "### Unrecognized requestID %s", v18, 0xCu);
        sub_10000903C(v19);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v2, 2uLL, 0, 3);

    swift_unknownObjectRelease();
  }
}

void sub_1002054D0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_100205548(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10034D760);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0xD00000000000002ELL, 0x80000001002985E0, v32);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100017494(v5, v7, v32);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s reason=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v12 = [a1 requestIdentifier];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == UUID.uuidString.getter() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
LABEL_15:

      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v33 = v22;
        *v21 = 136315138;
        v23 = [a1 requestIdentifier];
        if (v23)
        {
          v24 = v23;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v32[0] = v25;
        v32[1] = v27;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v28 = String.init<A>(describing:)();
        v30 = sub_100017494(v28, v29, &v33);

        *(v21 + 4) = v30;
        _os_log_impl(&_mh_execute_header, oslog, v20, "### Unrecognized requestID %s", v21, 0xCu);
        sub_10000903C(v22);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v3, v5, v7, 1);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1002059D8(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10034D760);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0xD00000000000002ELL, 0x80000001002985B0, v32);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100017494(v5, v7, v32);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s reason=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v12 = [a1 requestIdentifier];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == UUID.uuidString.getter() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
LABEL_15:

      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v33 = v22;
        *v21 = 136315138;
        v23 = [a1 requestIdentifier];
        if (v23)
        {
          v24 = v23;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v32[0] = v25;
        v32[1] = v27;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v28 = String.init<A>(describing:)();
        v30 = sub_100017494(v28, v29, &v33);

        *(v21 + 4) = v30;
        _os_log_impl(&_mh_execute_header, oslog, v20, "### Unrecognized requestID %s", v21, 0xCu);
        sub_10000903C(v22);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v3, v5, v7, 0);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100205E68(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a1;
  a5(a3, a4);
  swift_unknownObjectRelease();
}

uint64_t sub_100205FB4()
{
  _StringGuts.grow(_:)(54);
  v0._object = 0x80000001002A5B20;
  v0._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v0);
  UUID.uuidString.getter();
  v1._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 62;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0;
}

id sub_1002060CC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewHeightConstraint;
  v2 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewHeightConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewHeightConstraint];
LABEL_6:
    v12 = v2;
    return v3;
  }

  result = [v0 view];
  if (result)
  {
    v5 = result;
    v6 = [result heightAnchor];

    result = [v0 view];
    if (result)
    {
      v7 = result;
      v8 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

      v9 = [v8 heightAnchor];
      v10 = [v6 constraintEqualToAnchor:v9 constant:1.0];

      v11 = *&v0[v1];
      *&v0[v1] = v10;
      v3 = v10;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1002061F4()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewConstraints;
  if (*&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewConstraints];
LABEL_6:

    return v2;
  }

  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100271B90;
  result = [v0 view];
  if (result)
  {
    v4 = result;
    v5 = [result centerYAnchor];

    result = [v0 view];
    if (result)
    {
      v6 = result;
      v7 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

      v8 = [v7 centerYAnchor];
      v9 = [v5 constraintEqualToAnchor:v8];

      *(v2 + 32) = v9;
      *(v2 + 40) = sub_1002060CC();
      *&v0[v1] = v2;

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100206360()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___activityImageViewConstraints;
  if (*&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___activityImageViewConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___activityImageViewConstraints];
LABEL_7:

    return v2;
  }

  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100271880;
  v3 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView];
  v4 = [v3 leadingAnchor];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = [result leadingAnchor];

  v8 = [v4 constraintEqualToAnchor:v7 constant:8.0];
  *(v2 + 32) = v8;
  v9 = [v3 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  v11 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

  v12 = [v11 leadingAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];

  *(v2 + 40) = v13;
  v14 = [v3 centerYAnchor];
  result = [v0 view];
  if (result)
  {
    v15 = result;
    v16 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

    v17 = [v16 centerYAnchor];
    v18 = [v14 constraintEqualToAnchor:v17];

    *(v2 + 48) = v18;
    v19 = [v3 widthAnchor];
    v20 = [v3 heightAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v2 + 56) = v21;
    v22 = [v3 heightAnchor];
    v23 = [v22 constraintEqualToConstant:22.0];

    *(v2 + 64) = v23;
    *&v0[v1] = v2;

    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_100206674()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___deviceImageViewConstraints;
  if (*&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___deviceImageViewConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___deviceImageViewConstraints];
LABEL_7:

    return v2;
  }

  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100271880;
  v3 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView];
  v4 = [v3 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = [result trailingAnchor];

  v8 = [v4 constraintEqualToAnchor:v7 constant:-8.0];
  *(v2 + 32) = v8;
  v9 = [v3 leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  v11 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

  v12 = [v11 trailingAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];

  *(v2 + 40) = v13;
  v14 = [v3 centerYAnchor];
  result = [v0 view];
  if (result)
  {
    v15 = result;
    v16 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

    v17 = [v16 centerYAnchor];
    v18 = [v14 constraintEqualToAnchor:v17];

    *(v2 + 48) = v18;
    v19 = [v3 widthAnchor];
    v20 = [v3 heightAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v2 + 56) = v21;
    v22 = [v3 heightAnchor];
    v23 = [v22 constraintEqualToConstant:22.0];

    *(v2 + 64) = v23;
    *&v0[v1] = v2;

    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_100206988(uint64_t a1)
{
  v2 = v1;
  v26.receiver = v1;
  v26.super_class = type metadata accessor for HintViewControllerDynamicIsland();
  objc_msgSendSuper2(&v26, "viewDidLoad");
  if (qword_100339220 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v3 = type metadata accessor for Logger();
    sub_100003078(v3, qword_10034D760);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100017494(0x4C64694477656976, 0xED0000292864616FLL, &v25);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
      sub_10000903C(v7);
    }

    sub_100035D04(&qword_10033AE40, &qword_1002719E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100271B90;
    v9 = *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView];
    *(inited + 32) = v9;
    v10 = *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView];
    *(inited + 40) = v10;
    v11 = v9;
    v12 = v10;
    v13 = [v2 view];
    if (!v13)
    {
      __break(1u);
      goto LABEL_19;
    }

    v14 = v13;
    if ((inited & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v15 = *(inited + 32);
    }

    v16 = v15;
    [v14 addSubview:v15];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v17 = *(inited + 40);
      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
  v18 = v17;
  [v14 addSubview:v17];

  swift_setDeallocating();
  swift_arrayDestroy();

  v19 = *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_tapGestureRecognizer];
  [v19 addTarget:v2 action:"didTap"];
  v20 = [v2 view];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  [v20 addGestureRecognizer:v19];

  v22 = [v2 view];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 layer];

    [v24 setHitTestsAsOpaque:1];
    return;
  }

LABEL_20:
  __break(1u);
}

void sub_100206D28(void *a1, char a2)
{
  v3 = v2;
  v28.receiver = v3;
  v28.super_class = type metadata accessor for HintViewControllerDynamicIsland();
  objc_msgSendSuper2(&v28, "viewDidMoveToWindow:shouldAppearOrDisappear:", a1, a2 & 1);
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034D760);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100017494(0xD000000000000028, 0x80000001002A5AD0, v24);
    *(v10 + 12) = 2080;
    if (a1)
    {
      sub_100003118(0, &qword_10034D8C0, UIWindow_ptr);
      v11 = v7;
      v12 = String.init<A>(describing:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_100017494(v12, v14, v24);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: window=%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v16 = [v3 view];
    v17 = *&v3[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView];
    v25 = v16;
    v26 = v17;
    v27 = *&v3[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView];
    v18 = v27;
    v19 = v17;
    v20 = v18;
    if (v16)
    {
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    if (v19)
    {
      [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    if (v20)
    {
      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    sub_100035D04(&qword_10034D8A0, &qword_10028E2C0);
    swift_arrayDestroy();
    sub_100035D04(&qword_10034D8A8, &qword_10028E2C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002727F0;
    *(inited + 32) = sub_1002061F4();
    *(inited + 40) = sub_100206360();
    *(inited + 48) = sub_100206674();
    sub_100202B10(inited);
    swift_setDeallocating();
    sub_100035D04(&unk_10034D8B0, &qword_10028E2D0);
    swift_arrayDestroy();
    v22 = objc_opt_self();
    sub_100003118(0, &qword_10033AE48, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 activateConstraints:isa];
  }
}

double sub_100207130()
{
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034D760);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0x2928706154646964, 0xE800000000000000, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  PassthroughSubject.send(_:)();

  return result;
}

void sub_100207338()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView;
  *(v1 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_hintViewControllerEventSubject;
  sub_100035D04(&unk_10034D890, &unk_10027C0F0);
  swift_allocObject();
  *(v1 + v4) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___hintViewControllerEventPublisher) = 0;
  v5 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_tapGestureRecognizer;
  *(v1 + v5) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_tasks) = &_swiftEmptySetSingleton;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activeLayoutMode) = 1;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageViewHeight) = 0x4036000000000000;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageViewHeight) = 0x4036000000000000;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_heightOffsetMin) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_outsidePadding) = 0x4020000000000000;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewHeightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___activityImageViewConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___deviceImageViewConstraints) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002074FC(const char *a1)
{
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D760);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_100207734@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  result = sub_1001C01F0(*a1, a1[1], *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64)));
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1002077EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100207824@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X0>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a1 = sub_1001CEDD8(*a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));

  return swift_unknownObjectRetain();
}

uint64_t getEnumTagSinglePayload for DeviceEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 < 2)
  {
    v9 = 0;
  }

  if (v9 >= 6)
  {
    return v9 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeviceEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100207A7C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 4;
  v3 = v1 - 4;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100207AA8(unsigned __int8 a1)
{
  if (a1 <= 6u)
  {
    if (a1 == 5)
    {
      return 0x7265766F63736964;
    }

    if (a1 == 6)
    {
      return 1953722220;
    }
  }

  else
  {
    switch(a1)
    {
      case 7u:
        return 0x7078456C6C657764;
      case 8u:
        return 0x6D69546C6C657764;
      case 9u:
        return 0x456572756C696166;
    }
  }

  v2._countAndFlagsBits = 0x6E6F696765527875;
  v2._object = 0xEA00000000002028;
  String.append(_:)(v2);
  sub_100207C80();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3._countAndFlagsBits = 10528;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  return 0;
}

unint64_t sub_100207C2C()
{
  result = qword_10034D988;
  if (!qword_10034D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D988);
  }

  return result;
}

unint64_t sub_100207C80()
{
  result = qword_10034D990[0];
  if (!qword_10034D990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10034D990);
  }

  return result;
}

BOOL sub_100207CD4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 6u)
  {
    if (a1 == 5)
    {
      return a2 == 5;
    }

    if (a1 == 6)
    {
      return a2 == 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 7u:
        return a2 == 7;
      case 8u:
        return a2 == 8;
      case 9u:
        return a2 == 9;
    }
  }

  if (a2 - 5 < 5)
  {
    return 0;
  }

  if (a1 == 4)
  {
    return a2 == 4;
  }

  else
  {
    return a1 == a2;
  }
}

void *sub_100207DF0()
{

  return v0;
}

uint64_t sub_100207E20()
{
  sub_100207DF0();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SystemEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 9))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 8);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_100207F10(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 <= 2u)
  {
    v11 = a3 ^ a1 ^ 1;
    if (a4)
    {
      v11 = 0;
    }

    v12 = a3 ^ a1 ^ 1;
    if (a4 != 1)
    {
      v12 = 0;
    }

    v13 = a3 ^ a1 ^ 1;
    if (a4 != 2)
    {
      v13 = 0;
    }

    if (a2 == 1)
    {
      v13 = v12;
    }

    if (a2)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    return v14 & 1;
  }

  else
  {
    v4 = a3 ^ a1 ^ 1;
    if (a4 != 5)
    {
      v4 = 0;
    }

    v5 = a3 ^ a1 ^ 1;
    if (a4 != 6)
    {
      v5 = 0;
    }

    if (a2 != 5)
    {
      v4 = v5;
    }

    v7 = a4 == 3 && a1 == a3;
    v8 = a3 ^ a1 ^ 1;
    if (a4 != 4)
    {
      v8 = 0;
    }

    if (a2 == 3)
    {
      v8 = v7;
    }

    if (a2 <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    return v9 & 1;
  }
}

uint64_t sub_100207FC8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034DA18);
  sub_100003078(v0, qword_10034DA18);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100208048()
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = 0;
  for (i = (v3 + 40); ; i += 2)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v2 = *(i - 1);
    v0 = *i;
    v7 = qword_100338F70;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1000E9168(v2, v0);

    if (v8)
    {
      break;
    }

    ++v5;

    if (v4 == v5)
    {
      return 1;
    }
  }

  if (qword_100339228 == -1)
  {
    goto LABEL_10;
  }

LABEL_15:
  swift_once();
LABEL_10:
  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_10034DA18);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    v15 = sub_100017494(v2, v0, &v16);

    *(v13 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "Application blocker rejecting trigger for layout: %s", v13, 0xCu);
    sub_10000903C(v14);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10020828C(unint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  if (a1 < 4)
  {
    return *&aUnspecifuwb[8 * a1];
  }

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 2629695;
}

uint64_t sub_100208340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10020839C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for NearbySharingInteractionViewServiceContext(uint64_t a1)
{
  result = qword_10034DB30;
  if (!qword_10034DB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10020848C(uint64_t a1)
{
  result = type metadata accessor for NearbySharingInteractionDisplayContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002084F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_10034DB78, &qword_10028E798);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for NearbySharingInteractionViewServiceContext(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EBC0(a1, a1[3]);
  sub_100208AC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    sub_100208B80(&qword_10034DB88, type metadata accessor for NearbySharingInteractionDisplayContext, &unk_100279320);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    sub_100208B18(v13, v11, type metadata accessor for NearbySharingInteractionDisplayContext);
    sub_100208B18(v11, v12, type metadata accessor for NearbySharingInteractionViewServiceContext);
  }

  return sub_10000903C(a1);
}

uint64_t sub_100208788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000002DLL && 0x80000001002A5D80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10020881C(uint64_t a1)
{
  v2 = sub_100208AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100208858(uint64_t a1)
{
  v2 = sub_100208AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002088C8(void *a1)
{
  v2 = sub_100035D04(&qword_10034DB90, &qword_10028E7A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000EBC0(a1, a1[3]);
  sub_100208AC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for NearbySharingInteractionDisplayContext(0);
  sub_100208B80(&qword_10034DB98, type metadata accessor for NearbySharingInteractionDisplayContext, &unk_1002792F8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100208A40(uint64_t a1)
{
  *(a1 + 8) = sub_100208B80(&qword_10034DB68, type metadata accessor for NearbySharingInteractionViewServiceContext, &unk_10028E754);
  result = sub_100208B80(&qword_10034DB70, type metadata accessor for NearbySharingInteractionViewServiceContext, "m\a\a");
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100208AC4()
{
  result = qword_10034DB80;
  if (!qword_10034DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034DB80);
  }

  return result;
}

uint64_t sub_100208B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100208B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100208BDC()
{
  result = qword_10034DBA0;
  if (!qword_10034DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034DBA0);
  }

  return result;
}

unint64_t sub_100208C34()
{
  result = qword_10034DBA8;
  if (!qword_10034DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034DBA8);
  }

  return result;
}

unint64_t sub_100208C8C()
{
  result = qword_10034DBB0;
  if (!qword_10034DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034DBB0);
  }

  return result;
}

uint64_t BYSetupState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x74616E696D726574;
      }

      goto LABEL_8;
    }

    return 0x64656873696E6966;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x676E696E6E7572;
      }

LABEL_8:
      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      v3._countAndFlagsBits = 41;
      v3._object = 0xE100000000000000;
      String.append(_:)(v3);
      return 2629695;
    }

    return 0x6E776F6E6B6E75;
  }
}

void sub_100208DEC(uint64_t a1)
{
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10034DBB8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_100017494(0x2866664F6C6F6F63, 0xEB00000000293A5FLL, v20);
    *(v6 + 4) = v7;
    *(v6 + 12) = 2080;
    v9 = sub_1000092A0(v7, v8);
    v11 = sub_100017494(v9, v10, v20);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: device=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  if (*(*(v1 + 40) + 16) && (v12 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, , sub_100019110(a1 + v12), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = (a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_mediaRouteIDActive);
    if (*(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_mediaRouteIDActive + 8))
    {
      *v15 = 0;
      v15[1] = 0;
      swift_beginAccess();
      sub_1002091A0(a1 + v12, sub_100051968, sub_100089CF0);
      swift_endAccess();

      sub_10001BB3C(8uLL);

      sub_10001D304(0);
      return;
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "### No active MRID";
      goto LABEL_11;
    }
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Not already prewarming device.";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);
    }
  }
}

uint64_t sub_1002091A0(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_100019110(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

uint64_t sub_100209280(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100019110(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10008A034();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_10004C13C(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_10020935C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100019110(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10008B130();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
    v20 = *(active - 8);
    sub_1002156FC(v12 + *(v20 + 72) * v7, a2, type metadata accessor for PCUserAlertManager.ActiveAlertContext);
    sub_10004C788(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = active;
  }

  else
  {
    v18 = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_100209538(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v12[2] = a1;

  swift_getAtKeyPath();

  v4 = v12[1];
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0x5F2865766F6D6572, 0xEA0000000000293ALL, v12);
    *(v7 + 12) = 2080;
    v8 = String.init<A>(describing:)();
    v10 = sub_100017494(v8, v9, v12);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: key=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return a3(v4);
}

uint64_t sub_100209708(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v27[-v11];
  __chkstk_darwin(v10);
  v14 = &v27[-v13];
  v32[1] = a1;

  swift_getAtKeyPath();

  v15 = *(v6 + 16);
  v15(v12, v14, v5);
  v31 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = a2;
    v19 = v18;
    v29 = swift_slowAlloc();
    v32[0] = v29;
    *v19 = 136315394;
    *(v19 + 4) = sub_100017494(0x5F2865766F6D6572, 0xEA0000000000293ALL, v32);
    *(v19 + 12) = 2080;
    v15(v9, v12, v5);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    v28 = v17;
    v23 = *(v6 + 8);
    v23(v12, v5);
    v24 = sub_100017494(v20, v22, v32);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v28, "%s: key=%s", v19, 0x16u);
    swift_arrayDestroy();

    a2 = v30;
  }

  else
  {

    v23 = *(v6 + 8);
    v23(v12, v5);
  }

  v25 = a2(v14);
  v23(v14, v5);
  return v25;
}

uint64_t sub_100209A0C(double a1)
{
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 102;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  sub_100035D04(&unk_10034A310, &qword_100272780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10026F050;
  *(v4 + 56) = &type metadata for Double;
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a1;
  v5 = String.init(format:_:)();

  return v5;
}

uint64_t sub_100209B00()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034DBB8);
  sub_100003078(v0, qword_10034DBB8);
  return Logger.init(subsystem:category:)();
}

double sub_100209B80(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100213670(v2);
  }

  return result;
}

double sub_100209BE0(uint64_t *a1)
{
  sub_100094254();

  sub_100035D04(&qword_10034DE08, &qword_10028EA18);
  sub_100035D04(&qword_10034DE10, &unk_10028EA20);
  sub_10000E244(&qword_10034DE18, &qword_10034DE08, &qword_10028EA18, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

uint64_t sub_100209CDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  *a3 = *a1;
  *(a3 + 8) = v4;
  *(a3 + 16) = v6;
  v7 = *(a1 + 24);
  *(a3 + 24) = v7;
  *(a3 + 32) = a2;
  sub_10021341C(v5, v4, v6, v7);
}