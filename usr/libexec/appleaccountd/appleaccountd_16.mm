uint64_t sub_1001E5D58(id *a1)
{
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v61 - v7;
  [*a1 encryptedValuesByKey];
  ObjectType = swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v9 = v67;
  v65 = v1;
  v10 = UUID.uuidString.getter();
  v62 = v6;
  if (!*(&v9 + 1))
  {

    v12 = v65;
LABEL_6:
    v14 = UUID.uuidString.getter();
    *(&v68 + 1) = &type metadata for String;
    v69 = &protocol witness table for String;
    *&v67 = v14;
    *(&v67 + 1) = v15;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

  if (v9 == __PAIR128__(v11, v10))
  {

    v12 = v65;
    goto LABEL_7;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v12 = v65;
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  CKRecordKeyValueSetting.subscript.getter();
  v16 = v67;
  v66 = type metadata accessor for BeneficiaryInfoRecord(0);
  v17 = (v12 + v66[5]);
  v19 = *v17;
  v18 = v17[1];
  if (*(&v16 + 1))
  {
    if (!v18)
    {

      v69 = 0;
      v67 = 0u;
      v68 = 0u;
LABEL_16:

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_17;
    }

    if (v16 == __PAIR128__(v18, v19))
    {

      goto LABEL_17;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
LABEL_15:
      *(&v68 + 1) = &type metadata for String;
      v69 = &protocol witness table for String;
      *&v67 = v19;
      *(&v67 + 1) = v18;
      goto LABEL_16;
    }
  }

  else if (v18)
  {
    goto LABEL_15;
  }

LABEL_17:
  CKRecordKeyValueSetting.subscript.getter();
  v21 = v67;
  v22 = v12 + v66[7];
  v23 = *v22;
  v24 = *(v22 + 8);
  if (*(&v67 + 1) >> 60 != 15)
  {
    if (v24 >> 60 != 15)
    {
      sub_100015D6C(*v22, *(v22 + 8));
      sub_100015D6C(v23, v24);
      sub_100052704(v21, *(&v21 + 1));
      LODWORD(v63) = sub_10018F69C(v21, *(&v21 + 1), v23, v24);
      sub_100012324(v23, v24);
      sub_100015D58(v21, *(&v21 + 1));
      sub_100015D58(v23, v24);
      sub_100015D58(v21, *(&v21 + 1));
      if (v63)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_21:
    sub_100015D6C(*v22, *(v22 + 8));
    sub_100015D58(v21, *(&v21 + 1));
    sub_100015D58(v23, v24);
LABEL_22:
    v25 = *v22;
    v26 = *(v22 + 8);
    *(&v68 + 1) = &type metadata for Data;
    v69 = &protocol witness table for Data;
    *&v67 = v25;
    *(&v67 + 1) = v26;
    sub_100015D6C(v25, v26);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_23;
  }

  if (v24 >> 60 != 15)
  {
    goto LABEL_21;
  }

  sub_100015D6C(*v22, *(v22 + 8));
  sub_100015D58(v21, *(&v21 + 1));
LABEL_23:
  CKRecordKeyValueSetting.subscript.getter();
  v27 = (v12 + v66[6]);
  v29 = *v27;
  v28 = v27[1];
  if (!*(&v67 + 1))
  {
    goto LABEL_27;
  }

  if (v67 == __PAIR128__(v28, v29))
  {

    goto LABEL_28;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v30 & 1) == 0)
  {
LABEL_27:
    *(&v68 + 1) = &type metadata for String;
    v69 = &protocol witness table for String;
    *&v67 = v29;
    *(&v67 + 1) = v28;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_28:
  v63 = ObjectType;
  CKRecordKeyValueSetting.subscript.getter();
  v31 = v67;
  v32 = v66[11];
  v33 = v64;
  sub_1000F2504(v65 + v32, v64);
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v33, 1, v34) == 1)
  {
    sub_100008D3C(v33, &qword_1003D8B60, &unk_10033F210);
    if (!*(&v31 + 1))
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  v61 = v31;
  v37 = UUID.uuidString.getter();
  v39 = v38;
  (*(v35 + 8))(v33, v34);
  if (!*(&v31 + 1))
  {
    if (!v39)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  if (!v39)
  {
LABEL_40:

LABEL_41:
    v40 = v62;
    sub_1000F2504(v65 + v32, v62);
    if (v36(v40, 1, v34) == 1)
    {
      sub_100008D3C(v40, &qword_1003D8B60, &unk_10033F210);
      v67 = 0u;
      v68 = 0u;
      v69 = 0;
    }

    else
    {
      v41 = UUID.uuidString.getter();
      *(&v68 + 1) = &type metadata for String;
      v69 = &protocol witness table for String;
      *&v67 = v41;
      *(&v67 + 1) = v42;
      (*(v35 + 8))(v40, v34);
    }

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_46;
  }

  if (v61 == v37 && *(&v31 + 1) == v31)
  {

    goto LABEL_46;
  }

  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v60 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_46:
  CKRecordKeyValueSetting.subscript.getter();
  v43 = v65;
  v44 = (v65 + v66[14]);
  v46 = *v44;
  v45 = v44[1];
  if (*(&v67 + 1))
  {
    if (!v45)
    {

      v69 = 0;
      v67 = 0u;
      v68 = 0u;
LABEL_55:

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_56;
    }

    if (v67 == __PAIR128__(v45, v46))
    {

      goto LABEL_56;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {
LABEL_54:
      *(&v68 + 1) = &type metadata for String;
      v69 = &protocol witness table for String;
      *&v67 = v46;
      *(&v67 + 1) = v45;
      goto LABEL_55;
    }
  }

  else if (v45)
  {
    goto LABEL_54;
  }

LABEL_56:
  CKRecordKeyValueSetting.subscript.getter();
  v48 = (v43 + v66[12]);
  v50 = *v48;
  v49 = v48[1];
  if (*(&v67 + 1))
  {
    if (!v49)
    {

      v50 = 0;
      v51 = 0;
      v52 = 0;
      *&v68 = 0;
LABEL_65:
      *&v67 = v50;
      *(&v67 + 1) = v49;
      *(&v68 + 1) = v51;
      v69 = v52;

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_66;
    }

    if (v67 == __PAIR128__(v49, v50))
    {

      goto LABEL_66;
    }

    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v53 & 1) == 0)
    {
LABEL_64:
      v52 = &protocol witness table for String;
      v51 = &type metadata for String;
      goto LABEL_65;
    }
  }

  else if (v49)
  {
    goto LABEL_64;
  }

LABEL_66:
  CKRecordKeyValueSetting.subscript.getter();
  v54 = (v43 + v66[13]);
  v55 = *v54;
  v56 = *(v54 + 8);
  if (BYTE8(v67))
  {
    if (v56)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_72;
  }

  if (v56)
  {
    v55 = 0;
    v57 = 0;
    v58 = 0;
    *(&v67 + 1) = 0;
    *&v68 = 0;
LABEL_73:
    *&v67 = v55;
    *(&v68 + 1) = v57;
    v69 = v58;
    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v67 != v55)
  {
LABEL_72:
    v58 = &protocol witness table for UInt;
    v57 = &type metadata for UInt;
    goto LABEL_73;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1001E6794()
{
  _StringGuts.grow(_:)(36);
  type metadata accessor for BeneficiaryInfoRecord(0);
  sub_100005814(&unk_1003E26E0, &unk_100345C50);
  v0 = String.init<A>(describing:)();

  v1._object = 0x8000000100330C00;
  v1._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_1001E6AE8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x656C646E61680A2CLL;
  v3._object = 0xEB00000000202D20;
  String.append(_:)(v3);

  sub_100005814(&qword_1003E26F0, &qword_10034B4C0);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  return v0;
}

uint64_t sub_1001E6920(uint64_t a1)
{
  *(a1 + 8) = sub_1001E6AE8(&unk_1003E26B0, type metadata accessor for BeneficiaryInfoRecord, &unk_100345BF0);
  result = sub_1001E6AE8(&qword_1003E0E68, type metadata accessor for BeneficiaryInfoRecord, &unk_100345BC8);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for BeneficiaryInfoRecord(uint64_t a1)
{
  result = qword_1003E27D8;
  if (!qword_1003E27D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E69F0(uint64_t a1)
{
  result = sub_1001E6AE8(&unk_1003E26C0, type metadata accessor for BeneficiaryInfoRecord, &unk_100345C18);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001E6A48()
{
  result = qword_1003E26D0;
  if (!qword_1003E26D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E26D0);
  }

  return result;
}

unint64_t sub_1001E6A94()
{
  result = qword_1003E2700;
  if (!qword_1003E2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2700);
  }

  return result;
}

uint64_t sub_1001E6AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001E6B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1001E6C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1001E6DD0(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000EEDD4(319, &qword_1003DB130, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_1000F2A94(319);
      if (v3 <= 0x3F)
      {
        sub_1000EEDD4(319, &qword_1003DD7C8, &type metadata for UInt);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1001E6EE4()
{
  result = qword_1003E2840;
  if (!qword_1003E2840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2840);
  }

  return result;
}

unint64_t sub_1001E6F3C()
{
  result = qword_1003E2848;
  if (!qword_1003E2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2848);
  }

  return result;
}

unint64_t sub_1001E6F94()
{
  result = qword_1003E2850;
  if (!qword_1003E2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2850);
  }

  return result;
}

uint64_t sub_1001E6FE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654B737365636361 && a2 == 0xED00006174614479 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100330AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x444964726F636572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x444972656550746FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6144726961706572 && a2 == 0xEA00000000006574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F43726961706572 && a2 == 0xEB00000000746E75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010032D430 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_1001E7380()
{
  v1 = *v0;
  v2 = 0x69636966656E6562;
  v3 = 0x444964726F636572;
  v4 = 0xD000000000000013;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001E7430@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001E8CD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001E7458(uint64_t a1)
{
  v2 = sub_1001E876C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E7494(uint64_t a1)
{
  v2 = sub_1001E876C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E74D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for UUID();
  v29 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v32 = sub_100005814(&qword_1003E2868, &qword_100345E48);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v23 - v9;
  v11 = type metadata accessor for BeneficiaryManifestRecord(0);
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v34 = a1;
  sub_1000080F8(a1, v14);
  sub_1001E876C();
  v31 = v10;
  v15 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_10000839C(v34);
  }

  v27 = v6;
  v16 = v30;
  v33 = v11;
  sub_100005814(&qword_1003DA1E0, &qword_100345E50);
  v36 = 0;
  sub_1001E8880(&qword_1003E2880, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v17 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v35;
  v19 = v13;
  *&v13[v33[5]] = v35;
  LOBYTE(v35) = 1;
  sub_1001E88EC(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v18;
  v24 = *(v29 + 32);
  v24(v13, v8, v3);
  LOBYTE(v35) = 2;
  v20 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v19;
  v24((v19 + v33[6]), v20, v3);
  v36 = 3;
  sub_1000EE61C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v33;
  *(v19 + v33[7]) = v35;
  LOBYTE(v35) = 4;
  LOBYTE(v18) = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v16 + 8))(v17, v32);
  *(v19 + v21[8]) = v18 & 1;
  sub_1001E87C0(v19, v28);
  sub_10000839C(v34);
  return sub_1001E8824(v19);
}

uint64_t sub_1001E7A24(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E2888, &qword_100345E58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_1001E876C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = type metadata accessor for BeneficiaryManifestRecord(0);
  v13 = *(v3 + *(v9 + 20));
  v15 = 0;
  sub_100005814(&qword_1003DA1E0, &qword_100345E50);
  sub_1001E8880(&qword_1003E2890, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    type metadata accessor for UUID();
    sub_1001E88EC(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 3;
    sub_100015D6C(v13, v11);
    sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v13, v14);
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1001E7CF0(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v61 = a3;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v57 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v57 - v15;
  if (CKRecord.recordType.getter() == 0xD000000000000024 && 0x80000001003303A0 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_7:
      type metadata accessor for InheritanceError(0);
      v66 = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001E88EC(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return;
    }
  }

  v60 = v14;
  v18 = [a1 recordID];
  v19 = [v18 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v10;

  UUID.init(uuidString:)();
  v20 = v64;

  v21 = *(v11 + 48);
  if (v21(v9, 1, v20) == 1)
  {
    sub_100008D3C(v9, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_7;
  }

  v59 = v11;
  v58 = *(v11 + 32);
  v58(v63, v9, v20);
  v22 = [a1 encryptedValuesByKey];
  v23 = String._bridgeToObjectiveC()();
  v24 = v22;
  v25 = [v22 objectForKeyedSubscript:v23];

  if (!v25)
  {
    goto LABEL_12;
  }

  v66 = v25;
  sub_100005814(&unk_1003E2770, &qword_100341F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  UUID.init(uuidString:)();

  v26 = v64;
  if (v21(v7, 1, v64) == 1)
  {
    sub_100008D3C(v7, &qword_1003D8B60, &unk_10033F210);
LABEL_12:
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAA0);
    v28 = a1;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&_mh_execute_header, v29, v30, "Missing Inheritance beneficiaryID - %@", v31, 0xCu);
      sub_100008D3C(v32, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v66 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E88EC(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v59 + 8))(v63, v64);
    return;
  }

  v58(v60, v7, v26);
  v34 = String._bridgeToObjectiveC()();
  v35 = [v24 objectForKeyedSubscript:v34];

  v36 = v59;
  if (v35 && (v65 = v35, sub_100005814(&qword_1003DA1E0, &qword_100345E50), (swift_dynamicCast() & 1) != 0))
  {
    v37 = v66;
    v38 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
    [a1 encodeSystemFieldsWithCoder:v38];
    [v38 finishEncoding];
    v39 = [v38 encodedData];
    v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
    swift_unknownObjectRelease();

    v43 = type metadata accessor for BeneficiaryManifestRecord(0);
    v44 = v61;
    v45 = (v61 + v43[7]);
    *v45 = v40;
    v45[1] = v42;
    v46 = v64;
    v47 = v58;
    v58((v44 + v43[6]), v63, v64);
    v47(v44, v60, v46);
    *(v44 + v43[5]) = v37;
    *(v44 + v43[8]) = v62 & 1;
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100008D04(v48, qword_1003FAAA0);
    v49 = a1;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v49;
      *v53 = v49;
      v54 = v49;
      _os_log_impl(&_mh_execute_header, v50, v51, "Missing Inheritance altDSID - %@", v52, 0xCu);
      sub_100008D3C(v53, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v66 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E88EC(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v55 = *(v36 + 8);
    v56 = v64;
    v55(v60, v64);
    v55(v63, v56);
  }
}

uint64_t sub_1001E8644(uint64_t a1)
{
  *(a1 + 8) = sub_1001E88EC(&unk_1003D9190, type metadata accessor for BeneficiaryManifestRecord, &unk_100345DE8);
  result = sub_1001E88EC(&qword_1003E0E78, type metadata accessor for BeneficiaryManifestRecord, &unk_100345DC0);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for BeneficiaryManifestRecord(uint64_t a1)
{
  result = qword_1003E28F0;
  if (!qword_1003E28F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E8714(uint64_t a1)
{
  result = sub_1001E88EC(&qword_1003E2860, type metadata accessor for BeneficiaryManifestRecord, &unk_100345E10);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001E876C()
{
  result = qword_1003E2870;
  if (!qword_1003E2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2870);
  }

  return result;
}

uint64_t sub_1001E87C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryManifestRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E8824(uint64_t a1)
{
  v2 = type metadata accessor for BeneficiaryManifestRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001E8880(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008CBC(&qword_1003DA1E0, &qword_100345E50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001E88EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001E8958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001E8A28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1001E8AE0(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1001E8B7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001E8B7C()
{
  if (!qword_1003E2900)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1003E2900);
    }
  }
}

unint64_t sub_1001E8BD0()
{
  result = qword_1003E2940;
  if (!qword_1003E2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2940);
  }

  return result;
}

unint64_t sub_1001E8C28()
{
  result = qword_1003E2948;
  if (!qword_1003E2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2948);
  }

  return result;
}

unint64_t sub_1001E8C80()
{
  result = qword_1003E2950;
  if (!qword_1003E2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2950);
  }

  return result;
}

uint64_t sub_1001E8CD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000100330D60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444964726F636572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2)
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

unint64_t sub_1001E8EA0()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E697070617277;
  }
}

uint64_t sub_1001E8F14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001E9728(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001E8F3C(uint64_t a1)
{
  v2 = sub_1001E9AFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E8F78(uint64_t a1)
{
  v2 = sub_1001E9AFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E8FB4(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E2978, &qword_100346030);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000080F8(a1, a1[3]);
  sub_1001E9AFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = v12;
  v11[23] = 0;
  sub_1001E9B50(&v13, v11);
  sub_1000EE774();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100012324(v12, *(&v12 + 1));
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_1001E9170@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1001E9858(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1001E91CC(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (!sub_10018F69C(*a1, a1[1], *a2, a2[1]) || (v2 != v6 || v3 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001E92AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001E95B8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100012324(a1, a2);

  sub_100015D6C(v7, v8);

  sub_100012324(v7, v8);

  *a3 = v7;
  a3[1] = v8;
  a3[2] = v9;
  a3[3] = v10;
  a3[4] = v11;
  a3[5] = v12;
  return result;
}

id sub_1001E9490(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithBeneficiairyIdentifier:isa];

  v5 = v4;
  v6 = Data._bridgeToObjectiveC()().super.isa;
  [v5 setWrappingKeyData:v6];

  v7 = String._bridgeToObjectiveC()();
  [v5 setWrappingKeyString:v7];

  v8 = String._bridgeToObjectiveC()();
  [v5 setClaimTokenString:v8];

  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v5;
}

unint64_t sub_1001E95B8()
{
  result = qword_1003E2960;
  if (!qword_1003E2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2960);
  }

  return result;
}

void sub_1001E960C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 wrappingKeyData];
  if (!v4)
  {

LABEL_8:
    v6 = 0;
    v8 = 0;
    v11 = 0;
    v13 = 0;
    v16 = 0;
    v18 = 0;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a1 wrappingKeyString];
  if (!v9)
  {
LABEL_7:

    sub_100012324(v6, v8);
    goto LABEL_8;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [a1 claimTokenString];
  if (!v14)
  {

    goto LABEL_7;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

LABEL_9:
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v13;
  a2[4] = v16;
  a2[5] = v18;
}

uint64_t sub_1001E9728(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E697070617277 && a2 == 0xEF6174614479654BLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100330D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100330DA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1001E9858@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100005814(&qword_1003E2968, &qword_100346028);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_1001E9AFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000839C(a1);
  }

  v25 = 0;
  sub_1000EE61C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = a2;
  v10 = v23;
  v9 = v24;
  LOBYTE(v23) = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v11;
  LOBYTE(v23) = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v15 = v12;
  (*(v6 + 8))(v8, v5);
  sub_100015D6C(v10, v9);
  v16 = v21;

  sub_10000839C(a1);
  sub_100012324(v10, v9);

  v18 = v22;
  *v22 = v10;
  v18[1] = v9;
  v18[2] = v20;
  v18[3] = v16;
  v18[4] = v15;
  v18[5] = v14;
  return result;
}

unint64_t sub_1001E9AFC()
{
  result = qword_1003E2970;
  if (!qword_1003E2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2970);
  }

  return result;
}

__n128 sub_1001E9BBC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1001E9BD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1001E9C18(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1001E9C78()
{
  result = qword_1003E2980;
  if (!qword_1003E2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2980);
  }

  return result;
}

unint64_t sub_1001E9CD0()
{
  result = qword_1003E2988;
  if (!qword_1003E2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2988);
  }

  return result;
}

unint64_t sub_1001E9D28()
{
  result = qword_1003E2990;
  if (!qword_1003E2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2990);
  }

  return result;
}

uint64_t sub_1001E9D7C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InheritanceHealthRecord(0);
  Date.init(timeIntervalSince1970:)();
  sub_1001EC8FC(&qword_1003DB600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    return -1;
  }

  Date.init()();
  Date.timeIntervalSince(_:)();
  v8 = v7;
  v9 = v7;
  result = (v5)(v3, v0);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 < 9.22337204e18)
  {
    return v8;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1001E9F40()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *(type metadata accessor for InheritanceHealthRecord(0) + 20);
  Date.init(timeIntervalSince1970:)();
  sub_1001EC8FC(&qword_1003DB600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v8, v2);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    sub_10028B98C();
    (*(v3 + 16))(v6, v1 + v9, v2);
    Date.init(timeInterval:since:)();
    Date.init()();
    v12 = static Date.< infix(_:_:)();
    v11(v6, v2);
    v11(v8, v2);
  }

  return v12 & 1;
}

void sub_1001EA130(void *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v105 = a2;
  v5 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  __chkstk_darwin(v5 - 8);
  v107 = &v97 - v6;
  v7 = type metadata accessor for Date();
  v108 = *(v7 - 8);
  v109 = v7;
  v8 = __chkstk_darwin(v7);
  v104 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v106 = &v97 - v10;
  v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v97 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v110 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v111 = &v97 - v21;
  if (CKRecord.recordType.getter() == 0xD000000000000017 && 0x80000001003462B0 == v22)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
LABEL_7:
      type metadata accessor for InheritanceError(0);
      v114 = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001EC8FC(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return;
    }
  }

  v102 = a3;
  v24 = [a1 recordID];
  v25 = [v24 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v26 = v18;
  v27 = *(v18 + 48);
  if (v27(v16, 1, v17) == 1)
  {
    sub_100008D3C(v16, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_7;
  }

  v100 = v26;
  v28 = v17;
  v29 = *(v26 + 32);
  v103 = v28;
  v29(v111, v16);
  v30 = [a1 encryptedValuesByKey];
  v31 = String._bridgeToObjectiveC()();
  v101 = v30;
  v32 = [v30 objectForKeyedSubscript:v31];

  if (!v32)
  {
    goto LABEL_12;
  }

  v114 = v32;
  v33 = sub_100005814(&unk_1003E2770, &qword_100341F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v99 = v33;
  UUID.init(uuidString:)();

  v34 = v103;
  if (v27(v14, 1, v103) == 1)
  {
    sub_100008D3C(v14, &qword_1003D8B60, &unk_10033F210);
LABEL_12:
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAAA0);
    v36 = a1;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v103;
    v41 = v100;
    if (v39)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v36;
      *v43 = v36;
      v44 = v36;
      _os_log_impl(&_mh_execute_header, v37, v38, "Missing beneficiaryID - %@", v42, 0xCu);
      sub_100008D3C(v43, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v114 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001EC8FC(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v41 + 8))(v111, v40);
    return;
  }

  v45 = v110;
  (v29)(v110, v14, v34);
  v46 = type metadata accessor for InheritanceHealthRecord(0);
  v47 = v100;
  v48 = *(v100 + 16);
  v49 = v102;
  v98 = *(v46 + 28);
  v48(&v102[v98], v111, v34);
  v48(v49, v45, v34);
  v50 = String._bridgeToObjectiveC()();
  v51 = [v101 objectForKeyedSubscript:v50];

  if (!v51)
  {
    v52 = v107;
    v55 = v108;
    v53 = v109;
    (*(v108 + 56))(v107, 1, 1, v109);
    v57 = v106;
LABEL_21:
    Date.init(timeIntervalSince1970:)();
    if ((*(v55 + 48))(v52, 1, v53) != 1)
    {
      sub_100008D3C(v52, &qword_1003DA110, &qword_10033F230);
    }

    goto LABEL_23;
  }

  v112 = v51;
  v52 = v107;
  v53 = v109;
  v54 = swift_dynamicCast();
  v55 = v108;
  (*(v108 + 56))(v52, v54 ^ 1u, 1, v53);
  v56 = (*(v55 + 48))(v52, 1, v53);
  v57 = v106;
  if (v56 == 1)
  {
    goto LABEL_21;
  }

  (*(v55 + 32))(v106, v52, v53);
LABEL_23:
  v58 = *(v55 + 32);
  v107 = *(v46 + 20);
  v58(&v49[v107], v57, v53);
  v59 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v59];
  [v59 finishEncoding];
  v60 = [v59 encodedData];
  v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v46;
  v64 = v63;

  v65 = v62;
  v66 = &v49[*(v62 + 32)];
  *v66 = v61;
  *(v66 + 1) = v64;
  v67 = String._bridgeToObjectiveC()();
  v68 = [v101 objectForKeyedSubscript:v67];

  v69 = v103;
  if (v68 && (v114 = v68, (swift_dynamicCast() & 1) != 0))
  {
    v70 = v112;
    v71 = v113;
    sub_100015D6C(v112, v113);
    v72 = sub_1000FA458(v70, v71);
    if (v75 == 1)
    {
      v76 = v102;
      v77 = &v102[*(v62 + 24)];
      *v77 = v70;
      v77[1] = v71;
      v78 = v104;
      Date.init(timeIntervalSince1970:)();

      swift_unknownObjectRelease();
      v79 = *(v47 + 8);
      v80 = v103;
      v79(v110, v103);
      v79(v111, v80);
      (*(v108 + 40))(&v76[v107], v78, v109);
    }

    else
    {
      v90 = v72;
      v91 = v73;
      v92 = v74;
      v93 = v75;
      swift_unknownObjectRelease();
      sub_100012324(v70, v71);

      v94 = *(v47 + 8);
      v95 = v103;
      v94(v110, v103);
      v94(v111, v95);
      sub_100015D6C(v90, v91);
      sub_1000EE730(v90, v91, v92, v93);
      v76 = v102;
      v96 = &v102[*(v65 + 24)];
      *v96 = v90;
      v96[1] = v91;
    }

    v76[*(v65 + 36)] = v105 & 1;
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_100008D04(v81, qword_1003FAAA0);
    v82 = a1;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138412290;
      *(v85 + 4) = v82;
      *v86 = v82;
      v87 = v82;
      _os_log_impl(&_mh_execute_header, v83, v84, "Missing access key hash - %@", v85, 0xCu);
      sub_100008D3C(v86, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v114 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001EC8FC(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v88 = *(v47 + 8);
    v88(v110, v69);
    v88(v111, v69);
    v89 = v102;
    v88(v102, v69);
    (*(v108 + 8))(&v89[v107], v109);
    v88(&v89[v98], v69);
    sub_100012324(*v66, *(v66 + 1));
  }
}

uint64_t sub_1001EAE54(id *a1)
{
  v3 = type metadata accessor for Date();
  v54 = *(v3 - 8);
  __chkstk_darwin(v3);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100005814(&qword_1003E29B0, &qword_100341B40);
  __chkstk_darwin(v52);
  v6 = &v47 - v5;
  v7 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v8 = __chkstk_darwin(v7 - 8);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - v11;
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  v15 = [*a1 encryptedValuesByKey];
  ObjectType = swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v17 = v60;
  v16 = v61;
  v55 = v1;
  v18 = UUID.uuidString.getter();
  if (!v16)
  {

    v20 = v55;
LABEL_7:
    v22 = UUID.uuidString.getter();
    v63 = &type metadata for String;
    v64 = &protocol witness table for String;
    v60 = v22;
    v61 = v23;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_8;
  }

  if (v17 == v18 && v16 == v19)
  {

    v20 = v55;
    goto LABEL_8;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v20 = v55;
  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v51 = "with JSONEncoder";
  v56 = v15;
  CKRecordKeyValueSetting.subscript.getter();
  v53 = type metadata accessor for InheritanceHealthRecord(0);
  v24 = v54;
  v25 = *(v54 + 16);
  v49 = *(v53 + 20);
  v50 = v25;
  v25(v12, v20 + v49, v3);
  (*(v24 + 56))(v12, 0, 1, v3);
  v26 = *(v52 + 48);
  sub_1000EE8E0(v14, v6);
  sub_1000EE8E0(v12, &v6[v26]);
  v27 = *(v24 + 48);
  if (v27(v6, 1, v3) == 1)
  {
    sub_100008D3C(v12, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v14, &qword_1003DA110, &qword_10033F230);
    if (v27(&v6[v26], 1, v3) == 1)
    {
      sub_100008D3C(v6, &qword_1003DA110, &qword_10033F230);
      v28 = v55;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v29 = v48;
  sub_1000EE8E0(v6, v48);
  if (v27(&v6[v26], 1, v3) == 1)
  {
    sub_100008D3C(v12, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v14, &qword_1003DA110, &qword_10033F230);
    (*(v54 + 8))(v29, v3);
LABEL_13:
    sub_100008D3C(v6, &qword_1003E29B0, &qword_100341B40);
    v28 = v55;
LABEL_14:
    v63 = v3;
    v64 = &protocol witness table for Date;
    v30 = sub_10000DBEC(&v60);
    v50(v30, v28 + v49, v3);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_15;
  }

  v43 = v54;
  v44 = v47;
  (*(v54 + 32))(v47, &v6[v26], v3);
  sub_1001EC8FC(&qword_1003DB600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  LODWORD(v52) = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v43 + 8);
  v45(v44, v3);
  sub_100008D3C(v12, &qword_1003DA110, &qword_10033F230);
  sub_100008D3C(v14, &qword_1003DA110, &qword_10033F230);
  v45(v29, v3);
  sub_100008D3C(v6, &qword_1003DA110, &qword_10033F230);
  v28 = v55;
  if ((v52 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v31 = (v28 + *(v53 + 24));
  v33 = *v31;
  v32 = v31[1];
  sub_100015D6C(*v31, v32);
  CKRecordKeyValueSetting.subscript.getter();
  v34 = v58;
  v35 = v59;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v60 = v33;
  v61 = v32;
  sub_1000EE844();
  v62 = 0;
  v63 = 0;
  v36 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v38 = v37;

  if (v35 >> 60 == 15)
  {
    if (v38 >> 60 == 15)
    {
      sub_100012324(v33, v32);
      swift_unknownObjectRelease();

      return sub_100015D58(v34, v35);
    }

    goto LABEL_19;
  }

  if (v38 >> 60 == 15)
  {
LABEL_19:
    sub_100015D58(v34, v35);
    sub_100015D58(v36, v38);
    goto LABEL_20;
  }

  sub_100052704(v34, v35);
  sub_100015D6C(v36, v38);
  v46 = sub_10018F69C(v34, v35, v36, v38);
  sub_100012324(v36, v38);
  sub_100015D58(v34, v35);
  sub_100015D58(v36, v38);
  sub_100015D58(v34, v35);
  if (v46)
  {
    sub_100012324(v33, v32);
    swift_unknownObjectRelease();
  }

LABEL_20:
  swift_allocObject();
  JSONEncoder.init()();
  v60 = v33;
  v61 = v32;
  v62 = 0;
  v63 = 0;
  v40 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v42 = v41;

  v63 = &type metadata for Data;
  v64 = &protocol witness table for Data;
  v60 = v40;
  v61 = v42;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  sub_100012324(v33, v32);
}

unint64_t sub_1001EB754()
{
  v1 = *v0;
  v2 = 0x444964726F636572;
  v3 = 0x654B737365636361;
  if (v1 != 4)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000017;
  if (v1 == 1)
  {
    v4 = 0x69636966656E6562;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1001EB82C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001ECD4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001EB854(uint64_t a1)
{
  v2 = sub_1001EC7E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EB890(uint64_t a1)
{
  v2 = sub_1001EC7E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EB8CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for Date();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = __chkstk_darwin(v3);
  v49 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = v46 - v6;
  v56 = type metadata accessor for UUID();
  v54 = *(v56 - 8);
  v7 = __chkstk_darwin(v56);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = v46 - v10;
  v11 = sub_100005814(&qword_1003E29C0, &qword_1003462F0);
  v57 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v46 - v12;
  v14 = type metadata accessor for InheritanceHealthRecord(0);
  __chkstk_darwin(v14);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000080F8(a1, a1[3]);
  sub_1001EC7E8();
  v17 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_10000839C(a1);
  }

  v47 = v9;
  v48 = v14;
  v58 = v16;
  LOBYTE(v59) = 0;
  sub_1001EC8FC(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v19 = v55;
  v18 = v56;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v13;
  v22 = v48[7];
  v23 = v20;
  v55 = *(v54 + 32);
  (v55)(&v58[v22], v19, v18);
  LOBYTE(v59) = 1;
  v24 = v47;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46[1] = v22;
  (v55)(v58, v24, v18);
  LOBYTE(v59) = 2;
  sub_1001EC8FC(&unk_1003DD5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v25 = v51;
  v26 = v53;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v25;
  v28 = v48;
  v29 = v48[5];
  (*(v52 + 32))(&v58[v29], v27, v26);
  v60 = 3;
  sub_1000EE61C();
  v55 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v58[v28[8]] = v59;
  v60 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v23;
  v31 = v59;
  sub_100015D6C(v59, *(&v59 + 1));
  v32 = sub_1000FA458(v31, *(&v31 + 1));
  v51 = v31;
  if (v35 == 1)
  {
    v36 = v58;
    *&v58[v48[6]] = v31;
    sub_100015D6C(v31, *(&v31 + 1));
    v37 = v49;
    Date.init(timeIntervalSince1970:)();
    (*(v52 + 40))(&v36[v29], v37, v53);
  }

  else
  {
    v38 = v32;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    sub_100015D6C(v32, v33);
    sub_1000EE730(v38, v39, v40, v41);
    v42 = &v58[v48[6]];
    *v42 = v38;
    v42[1] = v39;
  }

  v43 = v50;
  LOBYTE(v59) = 5;
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v57 + 8))(v30, v11);
  sub_100012324(v51, *(&v31 + 1));
  v45 = v58;
  v58[v48[9]] = v44 & 1;
  sub_1001EC83C(v45, v43);
  sub_10000839C(a1);
  return sub_1001EC8A0(v45);
}

uint64_t sub_1001EC0B0(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&unk_1003E29D8, &qword_1003462F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_1001EC7E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = type metadata accessor for InheritanceHealthRecord(0);
  LOBYTE(v23) = 0;
  type metadata accessor for UUID();
  sub_1001EC8FC(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v23) = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v23) = 2;
  type metadata accessor for Date();
  sub_1001EC8FC(&unk_1003DD5F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v10 = (v3 + *(v9 + 32));
  v11 = v10[1];
  v23 = *v10;
  v24 = v11;
  v27 = 3;
  sub_100015D6C(v23, v11);
  v12 = sub_1000EE774();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100012324(v23, v24);
  v20[1] = v12;
  v13 = (v3 + *(v9 + 24));
  v14 = *v13;
  v15 = v13[1];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  sub_100015D6C(v14, v15);
  JSONEncoder.init()();
  v21 = v14;
  v22 = v15;
  v23 = v14;
  v24 = v15;
  sub_1000EE844();
  v25 = 0;
  v26 = 0;
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v18 = v17;

  v23 = v16;
  v24 = v18;
  v27 = 4;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100012324(v23, v24);
  LOBYTE(v23) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  sub_100012324(v21, v22);
}

uint64_t sub_1001EC510()
{
  _StringGuts.grow(_:)(53);
  type metadata accessor for InheritanceHealthRecord(0);
  sub_100005814(&qword_1003E29B8, &qword_1003462E8);
  v0._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v0);

  v1._object = 0x8000000100330C00;
  v1._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_1001EC8FC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x8000000100330DC0;
  String.append(_:)(v3);
  type metadata accessor for Date();
  sub_1001EC8FC(&qword_1003DB608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  return 0;
}

uint64_t sub_1001EC6C0(uint64_t a1)
{
  *(a1 + 8) = sub_1001EC8FC(&qword_1003D91A0, type metadata accessor for InheritanceHealthRecord, &unk_100346270);
  result = sub_1001EC8FC(&qword_1003E0E38, type metadata accessor for InheritanceHealthRecord, &unk_100346248);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for InheritanceHealthRecord(uint64_t a1)
{
  result = qword_1003E2A40;
  if (!qword_1003E2A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001EC790(uint64_t a1)
{
  result = sub_1001EC8FC(&unk_1003E29A0, type metadata accessor for InheritanceHealthRecord, &unk_100346298);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001EC7E8()
{
  result = qword_1003E29C8;
  if (!qword_1003E29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E29C8);
  }

  return result;
}

uint64_t sub_1001EC83C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceHealthRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EC8A0(uint64_t a1)
{
  v2 = type metadata accessor for InheritanceHealthRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001EC8FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001EC968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 36));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1001ECA98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1001ECBA0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1001ECC48()
{
  result = qword_1003E2A88;
  if (!qword_1003E2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2A88);
  }

  return result;
}

unint64_t sub_1001ECCA0()
{
  result = qword_1003E2A90;
  if (!qword_1003E2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2A90);
  }

  return result;
}

unint64_t sub_1001ECCF8()
{
  result = qword_1003E2A98;
  if (!qword_1003E2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2A98);
  }

  return result;
}

uint64_t sub_1001ECD4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010032E7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654B737365636361 && a2 == 0xED00006873614879 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1001ECF7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for UUID();
  v39 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v34 - v8;
  v37 = sub_100005814(&qword_1003E2AB0, &qword_1003464F0);
  v10 = *(v37 - 8);
  __chkstk_darwin(v37);
  v12 = v34 - v11;
  v41 = type metadata accessor for InheritanceInvitationRecord(0);
  __chkstk_darwin(v41);
  v42 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v40 = a1;
  sub_1000080F8(a1, v14);
  sub_1001EF088();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v38 = v4;
  if (v2)
  {
    sub_10000839C(v40);
  }

  else
  {
    v15 = v7;
    v35 = v10;
    LOBYTE(v43) = 1;
    v16 = sub_1001EF140(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = v37;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34[1] = v16;
    v18 = v42;
    v19 = v9;
    v20 = *(v39 + 32);
    v20(v42, v19, v4);
    LOBYTE(v43) = 2;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v34[0] = v20;
    v22 = v41;
    v23 = &v18[v41[5]];
    *v23 = v21;
    v23[1] = v24;
    LOBYTE(v43) = 3;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = &v42[v22[6]];
    *v26 = v25;
    v26[1] = v27;
    LOBYTE(v43) = 4;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = &v42[v22[7]];
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v43) = 5;
    *&v42[v41[8]] = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v43) = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (v34[0])(&v42[v41[9]], v15, v38);
    v44 = 6;
    sub_1000EE61C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v42[v41[10]] = v43;
    LOBYTE(v43) = 7;
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v35 + 8))(v12, v17);
    v32 = v42;
    v42[v41[11]] = v31 & 1;
    sub_1001EF0DC(v32, v36);
    sub_10000839C(v40);
    return sub_1001D3360(v32);
  }
}

uint64_t sub_1001ED64C(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E2AC0, &qword_1003464F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_1001EF088();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 1;
  type metadata accessor for UUID();
  sub_1001EF140(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for InheritanceInvitationRecord(0);
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 0;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 40));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 6;
    sub_100015D6C(v13, v11);
    sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v13, v14);
    LOBYTE(v13) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001ED958()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0xD000000000000013;
    }

    if (v1 != 4)
    {
      v6 = 0x737574617473;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x444964726F636572;
    if (v1 == 2)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (*v0)
    {
      v2 = 0x69636966656E6562;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1001EDA68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001EF640(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001EDA9C(uint64_t a1)
{
  v2 = sub_1001EF088();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EDAD8(uint64_t a1)
{
  v2 = sub_1001EF088();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001EDB14(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v77 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v86 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v87 = &v77 - v16;
  v17 = type metadata accessor for InheritanceInvitationRecord(0);
  v18 = (a3 + *(v17 + 24));
  *v18 = 0;
  v18[1] = 0;
  v84 = v17;
  v85 = a3;
  v19 = (a3 + *(v17 + 28));
  *v19 = 0;
  v19[1] = 0;
  v83 = v19;
  v89 = a1;
  if (CKRecord.recordType.getter() == 0xD00000000000001BLL && 0x80000001003464E0 == v20)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      type metadata accessor for InheritanceError(0);
      v92 = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001EF140(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return;
    }
  }

  v81 = a2;
  v22 = v89;
  v23 = [v89 recordID];
  v24 = [v23 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v12;

  UUID.init(uuidString:)();
  v25 = v88;

  v26 = v13;
  v27 = *(v13 + 48);
  if (v27(v11, 1, v25) == 1)
  {
    sub_100008D3C(v11, &qword_1003D8B60, &unk_10033F210);
    type metadata accessor for InheritanceError(0);
    v92 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001EF140(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    return;
  }

  v79 = *(v26 + 32);
  v80 = v26;
  v79(v87, v11, v25);
  v28 = [v22 encryptedValuesByKey];
  v29 = String._bridgeToObjectiveC()();
  v82 = v28;
  v30 = [v28 objectForKeyedSubscript:v29];

  if (!v30)
  {
    goto LABEL_11;
  }

  v92 = v30;
  sub_100005814(&unk_1003E2770, &qword_100341F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  UUID.init(uuidString:)();

  v31 = v88;
  if (v27(v9, 1, v88) == 1)
  {
    sub_100008D3C(v9, &qword_1003D8B60, &unk_10033F210);
LABEL_11:
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAAA0);
    v33 = v22;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "Missing Inheritance beneficiaryID - %@", v36, 0xCu);
      sub_100008D3C(v37, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v92 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001EF140(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v80 + 8))(v87, v88);
    return;
  }

  v79(v86, v9, v31);
  v39 = String._bridgeToObjectiveC()();
  v40 = v82;
  v41 = [v82 objectForKeyedSubscript:v39];

  if (!v41 || (v92 = v41, (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100008D04(v64, qword_1003FAAA0);
    v65 = v89;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_37;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138412290;
    *(v68 + 4) = v65;
    *v69 = v65;
    v70 = v65;
    v71 = "Missing Inheritance Handle - %@";
    goto LABEL_36;
  }

  v42 = v91;
  v78 = v90;
  v43 = String._bridgeToObjectiveC()();
  v44 = [v40 objectForKeyedSubscript:v43];

  if (!v44 || (v90 = v44, type metadata accessor for Status(0), (swift_dynamicCast() & 1) == 0))
  {

    v72 = v89;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100008D04(v73, qword_1003FAAA0);
    v65 = v72;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_37;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138412290;
    *(v68 + 4) = v65;
    *v69 = v65;
    v74 = v65;
    v71 = "Missing TrustedContactStatus - %@";
LABEL_36:
    _os_log_impl(&_mh_execute_header, v66, v67, v71, v68, 0xCu);
    sub_100008D3C(v69, &unk_1003D9140, &qword_10033E640);

LABEL_37:

    type metadata accessor for InheritanceError(0);
    v92 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001EF140(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v75 = *(v80 + 8);
    v76 = v88;
    v75(v86, v88);
    v75(v87, v76);
    return;
  }

  v80 = v92;
  v45 = String._bridgeToObjectiveC()();
  v46 = [v40 objectForKeyedSubscript:v45];

  if (v46)
  {
    v92 = v46;
    if (swift_dynamicCast())
    {
      v47 = v91;
      *v18 = v90;
      v18[1] = v47;
    }
  }

  v48 = String._bridgeToObjectiveC()();
  v49 = [v40 objectForKeyedSubscript:v48];

  if (v49)
  {
    v92 = v49;
    if (swift_dynamicCast())
    {
      v50 = v91;
      v51 = v83;
      *v83 = v90;
      v51[1] = v50;
    }
  }

  v52 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v53 = v89;
  [v89 encodeSystemFieldsWithCoder:v52];
  [v52 finishEncoding];
  v54 = [v52 encodedData];
  v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;
  swift_unknownObjectRelease();

  v59 = v84;
  v58 = v85;
  v60 = (v85 + v84[10]);
  *v60 = v55;
  v60[1] = v57;
  v61 = v88;
  v62 = v79;
  v79((v58 + v59[9]), v87, v88);
  v62(v58, v86, v61);
  v63 = (v58 + v59[5]);
  *v63 = v78;
  v63[1] = v42;
  *(v58 + v59[8]) = v80;
  *(v58 + v59[11]) = v81 & 1;
}

uint64_t sub_1001EE71C(id *a1)
{
  v2 = v1;
  [*a1 encryptedValuesByKey];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = UUID.uuidString.getter();
  if (!*(&v22 + 1))
  {

LABEL_6:
    *&v22 = UUID.uuidString.getter();
    *(&v22 + 1) = v6;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

  if (v22 == __PAIR128__(v4, v3))
  {

    goto LABEL_7;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  CKRecordKeyValueSetting.subscript.getter();
  v7 = type metadata accessor for InheritanceInvitationRecord(0);
  v8 = (v1 + v7[5]);
  v10 = *v8;
  v9 = v8[1];
  if (!*(&v22 + 1))
  {
LABEL_13:
    *&v22 = v10;
    *(&v22 + 1) = v9;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_15;
  }

  if (v22 != v10 || *(&v22 + 1) != v9)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_15:
  CKRecordKeyValueSetting.subscript.getter();
  v13 = (v1 + v7[6]);
  v15 = *v13;
  v14 = v13[1];
  if (*(&v22 + 1))
  {
    if (!v14)
    {

      v22 = 0u;
LABEL_24:

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_25;
    }

    if (v22 == __PAIR128__(v14, v15))
    {

      goto LABEL_25;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
LABEL_23:
      *&v22 = v15;
      *(&v22 + 1) = v14;
      goto LABEL_24;
    }
  }

  else if (v14)
  {
    goto LABEL_23;
  }

LABEL_25:
  CKRecordKeyValueSetting.subscript.getter();
  v17 = (v2 + v7[7]);
  v19 = *v17;
  v18 = v17[1];
  if (!*(&v22 + 1))
  {
    if (!v18)
    {
      goto LABEL_35;
    }

LABEL_33:
    *&v22 = v19;
    BYTE8(v22) = v18;
    goto LABEL_34;
  }

  if (!v18)
  {

    v22 = 0u;
LABEL_34:

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_35;
  }

  if (v22 != __PAIR128__(v18, v19))
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_35:
  CKRecordKeyValueSetting.subscript.getter();
  if ((BYTE8(v22) & 1) != 0 || v22 != *(v2 + v7[8]))
  {
    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1001EEBA0()
{
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponents();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(143);
  v5 = type metadata accessor for InheritanceInvitationRecord(0);
  v31 = v5;
  sub_100005814(&qword_1003E2AA8, &unk_1003464E0);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._object = 0x8000000100330C00;
  v7._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v7);
  type metadata accessor for UUID();
  sub_1001EF140(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0xD000000000000016;
  v9._object = 0x8000000100330DE0;
  String.append(_:)(v9);
  String.append(_:)(*(v0 + v5[5]));
  v10._countAndFlagsBits = 0xD000000000000019;
  v10._object = 0x8000000100330E00;
  String.append(_:)(v10);
  v11 = (v0 + v5[6]);
  v12 = v11[1];
  v31 = *v11;
  v32 = v12;
  swift_bridgeObjectRetain_n();
  sub_100005814(&qword_1003E26F0, &qword_10034B4C0);
  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD000000000000018;
  v14._object = 0x8000000100330E20;
  String.append(_:)(v14);
  v15 = (v0 + v5[7]);
  v16 = v15[1];
  v31 = *v15;
  v32 = v16;
  swift_bridgeObjectRetain_n();
  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0xD00000000000001BLL;
  v18._object = 0x8000000100330E40;
  String.append(_:)(v18);
  PersonNameComponents.init()();
  PersonNameComponents.givenName.setter();
  PersonNameComponents.familyName.setter();
  v19 = objc_opt_self();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v21 = [v19 localizedStringFromPersonNameComponents:isa style:0 options:0];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  (*(v29 + 8))(v4, v30);
  v31 = v22;
  v32 = v24;
  v25._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x7375746174730A2CLL;
  v26._object = 0xEB00000000202D20;
  String.append(_:)(v26);
  v31 = *(v1 + v5[8]);
  type metadata accessor for Status(0);
  _print_unlocked<A, B>(_:_:)();
  v27._countAndFlagsBits = 44;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  return v33;
}

uint64_t sub_1001EEF60(uint64_t a1)
{
  *(a1 + 8) = sub_1001EF140(&unk_1003D9180, type metadata accessor for InheritanceInvitationRecord, &unk_10034649C);
  result = sub_1001EF140(&qword_1003E0E60, type metadata accessor for InheritanceInvitationRecord, &unk_100346474);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for InheritanceInvitationRecord(uint64_t a1)
{
  result = qword_1003E2B20;
  if (!qword_1003E2B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001EF030(uint64_t a1)
{
  result = sub_1001EF140(&qword_1003E2AA0, type metadata accessor for InheritanceInvitationRecord, &unk_100346458);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001EF088()
{
  result = qword_1003E2AB8;
  if (!qword_1003E2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2AB8);
  }

  return result;
}

uint64_t sub_1001EF0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceInvitationRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EF140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for InheritanceInvitationRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InheritanceInvitationRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001EF2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001EF3C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1001EF47C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10003A288();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Status(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1001EF53C()
{
  result = qword_1003E2B78;
  if (!qword_1003E2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2B78);
  }

  return result;
}

unint64_t sub_1001EF594()
{
  result = qword_1003E2B80;
  if (!qword_1003E2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2B80);
  }

  return result;
}

unint64_t sub_1001EF5EC()
{
  result = qword_1003E2B88;
  if (!qword_1003E2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2B88);
  }

  return result;
}

uint64_t sub_1001EF640(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100330C40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100330E60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100330E80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1001EF8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v34 = a3;
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAA0);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v9;
      v16 = v8;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error removing Beneficiary from IdMS: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);

      v8 = v16;
      v9 = v15;
    }

    (*(v9 + 16))(v11, a2, v8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37[0] = v23;
      *v22 = 136315138;
      sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v9;
      v27 = v26;
      (*(v25 + 8))(v11, v8);
      v28 = sub_10021145C(v24, v27, v37);

      *(v22 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "Continuing with client removal of beneficiary %s following IDMS failure", v22, 0xCu);
      sub_10000839C(v23);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001EFD84(a2, v35, v36);
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAA0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Successfully removed Beneficiary from IdMS", v32, 2u);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001EFD84(a2, v35, v36);
    }
  }

  return result;
}

void sub_1001EFD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a2;
  v41 = a3;
  v39 = type metadata accessor for UUID();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v39);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = a1;
    v16 = v15;
    v35 = v15;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v16 = 136315138;
    v42 = type metadata accessor for InheritanceCleanupController(0);
    sub_100005814(&qword_1003E2D18, qword_1003466C0);
    v17 = String.init<A>(describing:)();
    v19 = v11;
    v20 = v6;
    v21 = v4;
    v22 = sub_10021145C(v17, v18, aBlock);

    v23 = v35;
    *(v35 + 4) = v22;
    v4 = v21;
    v6 = v20;
    v11 = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: Removing Access Key…", v23, 0xCu);
    sub_10000839C(v36);

    a1 = v37;
  }

  (*(v9 + 16))(v11, v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__securityController, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  v24 = aBlock[0];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v38;
  v28 = v39;
  (*(v6 + 16))(v38, a1, v39);
  v29 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v30 = (v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v6 + 32))(v31 + v29, v27, v28);
  *(v31 + v30) = v26;
  v32 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  v33 = v41;
  *v32 = v40;
  v32[1] = v33;
  aBlock[4] = sub_1001F4F70;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E828;
  aBlock[3] = &unk_1003AEA90;
  v34 = _Block_copy(aBlock);

  [v24 removeInheritanceAccessKeyForBeneficiaryID:isa completion:v34];
  _Block_release(v34);
  swift_unknownObjectRelease();
}

uint64_t sub_1001F01EC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAAA0);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error removing benefactor from storage: %@", v7, 0xCu);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  return a2(a1);
}

uint64_t sub_1001F037C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = a3;
    v17 = v16;
    v28[0] = v16;
    *v15 = 136315138;
    v27 = type metadata accessor for InheritanceCleanupController(0);
    sub_100005814(&qword_1003E2D18, qword_1003466C0);
    v18 = String.init<A>(describing:)();
    v20 = sub_10021145C(v18, v19, v28);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: Removing BenefactorInfoRecord...", v15, 0xCu);
    sub_10000839C(v17);
    a3 = v24;

    a1 = v25;
  }

  (*(v8 + 16))(v10, v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  sub_1000080F8(v28, v28[3]);
  v21 = swift_allocObject();
  v21[2] = v26;
  v21[3] = a3;
  v21[4] = v4;

  sub_10021B0E8(a1, sub_1001F57A4, v21);

  return sub_10000839C(v28);
}

uint64_t sub_1001F0658()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__requestController;
  v2 = sub_100005814(&qword_1003E1088, &qword_1003445F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController;
  v4 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__securityController;
  v6 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritanceCleanupController(uint64_t a1)
{
  result = qword_1003E2BD0;
  if (!qword_1003E2BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001F07EC(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003E2BE0, &qword_1003E0F80, &unk_100344570);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &unk_1003E1170, &unk_1003E0210, &qword_100343D90);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1001F0938(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001F0A00(a5);
    }

    return (a2)(0);
  }
}

uint64_t sub_1001F0A00(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = v6;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Removing Inheritance Health Record...", v14, 2u);
    v6 = v21;
  }

  (*(v8 + 16))(v10, v2 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  sub_1000080F8(v23, v23[3]);
  v15 = v22;
  (*(v5 + 16))(v22, a1, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = (v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v16, v15, v4);
  *(v18 + v17) = v2;

  sub_10021CBFC(a1, sub_1001F56C8, v18);

  return sub_10000839C(v23);
}

uint64_t sub_1001F0D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a3;
  v38 = a1;
  v41 = a2;
  v5 = type metadata accessor for UUID();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43[0] = v35;
    *v14 = 136315138;
    v42 = type metadata accessor for InheritanceCleanupController(0);
    sub_100005814(&qword_1003E2D18, qword_1003466C0);
    v15 = String.init<A>(describing:)();
    v17 = sub_10021145C(v15, v16, v43);

    *(v14 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: Removing Invitation Record...", v14, 0xCu);
    sub_10000839C(v35);
  }

  v18 = v4;
  (*(v8 + 16))(v10, v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  sub_1000080F8(v43, v43[3]);
  v19 = v38;
  v20 = v39;
  v21 = v36;
  v22 = v40;
  (*(v39 + 16))(v36, v38, v40);
  v23 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v20 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  v27 = v37;
  *v26 = v41;
  v26[1] = v27;
  *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;

  sub_100214780(v19, sub_1001F555C, v25, v28, v29, v30, v31, v32, v34);

  return sub_10000839C(v43);
}

uint64_t sub_1001F10F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v62 = a4;
  v64 = a2;
  v61 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v61 - 8);
  __chkstk_darwin(v61);
  v63 = &v55 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v13;
  __chkstk_darwin(v12);
  v15 = &v55 - v14;
  p_ivars = &AppleIDAvailabilityHealthCheck.ivars;
  v60 = v11;
  if (a1)
  {
    swift_errorRetain();
    v17 = _convertErrorToNSError(_:)();
    v18 = [v17 code];

    if (v18 == 34)
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100008D04(v19, qword_1003FAAA0);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_16;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Key not found in Octagon Trust. Delete record from CK.", v22, 2u);
    }

    else
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100008D04(v32, qword_1003FAAA0);
      swift_errorRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      v57 = v33;
      if (!os_log_type_enabled(v33, v34))
      {

        goto LABEL_20;
      }

      v35 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v65[0] = v56;
      *v35 = 136315138;
      v65[5] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v36 = String.init<A>(describing:)();
      v38 = v10;
      v39 = v8;
      v40 = sub_10021145C(v36, v37, v65);

      *(v35 + 4) = v40;
      v8 = v39;
      v10 = v38;
      v20 = v57;
      _os_log_impl(&_mh_execute_header, v57, v34, "Error removing access keys for beneficiary: %s", v35, 0xCu);
      sub_10000839C(v56);
    }

LABEL_16:

LABEL_20:
    p_ivars = &AppleIDAvailabilityHealthCheck.ivars;
    goto LABEL_21;
  }

  v57 = a5;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAAA0);
  (*(v11 + 16))(v15, v64, v10);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v65[0] = v27;
    *v26 = 136315138;
    sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v8;
    v30 = v29;
    (*(v11 + 8))(v15, v10);
    v31 = sub_10021145C(v28, v30, v65);
    v8 = v56;

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Success removing access key for beneficiaryID: %s", v26, 0xCu);
    sub_10000839C(v27);

    p_ivars = (&AppleIDAvailabilityHealthCheck + 48);
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  a5 = v57;
LABEL_21:
  if (p_ivars[488] != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100008D04(v41, qword_1003FAAA0);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Deleting beneficiary record from CK.", v44, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v46 = result;
    v47 = v60;
    v48 = v58;
    v49 = v64;
    (*(v60 + 16))(v58, v64, v10);
    v50 = (*(v47 + 80) + 40) & ~*(v47 + 80);
    v51 = swift_allocObject();
    *(v51 + 2) = v62;
    *(v51 + 3) = a5;
    *(v51 + 4) = a3;
    (*(v47 + 32))(&v51[v50], v48, v10);
    v52 = v63;
    v53 = v61;
    (v8[2])(v63, v46 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v61);

    Dependency.wrappedValue.getter();
    (v8[1])(v52, v53);
    sub_1000080F8(v65, v65[3]);
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1001F504C;
    *(v54 + 24) = v51;

    sub_100217018(v49, sub_1001F50C4, v54);

    return sub_10000839C(v65);
  }

  return result;
}

uint64_t sub_1001F18D4(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v60 = a4;
  v61 = a2;
  v62 = a3;
  v6 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = &v51 - v7;
  v8 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v58 = v14;
  v59 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v57 = &v51 - v15;
  v16 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v19);
  v21 = (&v51 - v20);
  sub_100012D04(a1, &v51 - v20, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    swift_errorRetain();
    v61(v22);
  }

  else
  {
    v24 = v62;
    sub_1001F57B0(v21, v18, type metadata accessor for BeneficiaryInfoRecord);
    sub_100012D04(&v18[*(v16 + 44)], v10, &qword_1003D8B60, &unk_10033F210);
    v25 = v11;
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_100008D3C(v10, &qword_1003D8B60, &unk_10033F210);
      v26 = v24;
      v27 = v60;
    }

    else
    {
      v28 = *(v12 + 32);
      v29 = v57;
      v28(v57, v10, v25);
      v27 = v60;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v31 = v53;
        v32 = v54;
        v33 = *(v54 + 16);
        v52 = v18;
        v34 = v55;
        v33(v53, Strong + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__securityController, v55);
        Dependency.wrappedValue.getter();

        (*(v32 + 8))(v31, v34);
        v35 = aBlock[0];
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v37 = v59;
        (*(v12 + 16))(v59, v29, v25);
        v38 = v25;
        v39 = (*(v12 + 80) + 16) & ~*(v12 + 80);
        v40 = swift_allocObject();
        v41 = v40 + v39;
        v25 = v38;
        v29 = v57;
        v28(v41, v37, v25);
        aBlock[4] = sub_1001F52D4;
        aBlock[5] = v40;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v27 = v60;
        aBlock[2] = sub_10020E828;
        aBlock[3] = &unk_1003AEB58;
        v42 = _Block_copy(aBlock);

        [v35 removeInheritanceAccessKeyForBeneficiaryID:isa completion:v42];
        _Block_release(v42);
        swift_unknownObjectRelease();

        v18 = v52;
      }

      (*(v12 + 8))(v29, v25);
      v26 = v24;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v43 = v25;
      v44 = v59;
      (*(v12 + 16))(v59, v56, v43);
      v45 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v46 = (v58 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = v18;
      v48 = swift_allocObject();
      *(v48 + 16) = v27;
      (*(v12 + 32))(v48 + v45, v44, v43);
      v49 = (v48 + v46);
      *v49 = v61;
      v49[1] = v26;

      sub_1001F2710(v47, sub_1001F51A8, v48);

      v50 = v47;
    }

    else
    {
      v50 = v18;
    }

    return sub_1001F583C(v50, type metadata accessor for BeneficiaryInfoRecord);
  }
}

void sub_1001F1F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAA0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = a1;
      v26 = v12;
      *v11 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v13 = String.init<A>(describing:)();
      v15 = sub_10021145C(v13, v14, &v26);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error removing access keys for beneficiary: %s", v11, 0xCu);
      sub_10000839C(v12);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    (*(v5 + 16))(v7, a2, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v5 + 8))(v7, v4);
      v24 = sub_10021145C(v21, v23, &v26);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Success removing access key for otPeerID: %s", v19, 0xCu);
      sub_10000839C(v20);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1001F233C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_ivars = &AppleIDAvailabilityHealthCheck.ivars;
  if (a1)
  {
    v30 = a5;
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAA0);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29 = a3;
      v17 = v16;
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error removing Beneficiary from storage: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
      p_ivars = (&AppleIDAvailabilityHealthCheck + 48);

      a3 = v29;
    }

    else
    {
    }

    a5 = v30;
  }

  if (p_ivars[488] != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAA0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Removing Beneficiary local records.", v23, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
    v26 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v27 = a3;
    v28 = swift_allocObject();
    *(v28 + 2) = v31;
    *(v28 + 3) = a5;
    *(v28 + 4) = v25;
    (*(v9 + 32))(&v28[v26], v11, v8);

    sub_1001F0D2C(v27, sub_1001F5434, v28);
  }

  return result;
}

uint64_t sub_1001F2710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a1;
    v16 = v15;
    v23 = swift_slowAlloc();
    v24 = a2;
    v27[0] = v23;
    *v16 = 136315138;
    v26 = type metadata accessor for InheritanceCleanupController(0);
    sub_100005814(&qword_1003E2D18, qword_1003466C0);
    v17 = String.init<A>(describing:)();
    v19 = sub_10021145C(v17, v18, v27);

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: Removing BeneficiaryInfoRecord...", v16, 0xCu);
    sub_10000839C(v23);
    a2 = v24;

    a1 = v25;
  }

  (*(v9 + 16))(v11, v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  sub_1000080F8(v27, v27[3]);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;

  sub_100218AD8(a1, sub_1001F5344, v20);

  return sub_10000839C(v27);
}

uint64_t sub_1001F29EC(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v8 = __chkstk_darwin(v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v22 - v11);
  sub_100012D04(a1, &v22 - v11, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAA0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v13;
      v25 = v23;
      *v17 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v18 = String.init<A>(describing:)();
      v20 = sub_10021145C(v18, v19, &v25);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error fetching beneficiaries for removal: %s", v17, 0xCu);
      sub_10000839C(v23);
    }

    *v10 = v13;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v10);

    return sub_100008D3C(v10, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    sub_1001F57B0(v12, v6, type metadata accessor for BeneficiaryInfoRecord);
    sub_100168334(v6, v10);
    swift_storeEnumTagMultiPayload();
    a2(v10);
    sub_100008D3C(v10, &unk_1003E10A0, &unk_100344480);
    return sub_1001F583C(v6, type metadata accessor for BeneficiaryInfoRecord);
  }
}

uint64_t sub_1001F2D40(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a3;
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v13);
  v15 = (&v28 - v14);
  sub_100012D04(a1, &v28 - v14, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v28;
    v17 = *v15;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAA0);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v17;
      v31[0] = v22;
      *v21 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v23 = String.init<A>(describing:)();
      v25 = sub_10021145C(v23, v24, v31);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error fetching benefactors for removal: %s", v21, 0xCu);
      sub_10000839C(v22);
    }

    swift_errorRetain();
    v16(v17);
  }

  else
  {
    sub_1001F57B0(v15, v12, type metadata accessor for BenefactorInfoRecord);
    (*(v7 + 16))(v9, a4 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v6);
    Dependency.wrappedValue.getter();
    (*(v7 + 8))(v9, v6);
    sub_1000080F8(v31, v31[3]);
    v27 = swift_allocObject();
    *(v27 + 16) = v28;
    *(v27 + 24) = v29;

    sub_10021C184(v12, sub_1001F5818, v27);

    sub_1001F583C(v12, type metadata accessor for BenefactorInfoRecord);
    return sub_10000839C(v31);
  }
}

uint64_t sub_1001F3138(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, const char *a4)
{
  v7 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v7);
  v9 = (&v20 - v8);
  sub_100012D04(a1, &v20 - v8, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAA0);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v10;
      v21 = v15;
      *v14 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v16 = String.init<A>(describing:)();
      v18 = sub_10021145C(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, a4, v14, 0xCu);
      sub_10000839C(v15);
    }

    swift_errorRetain();
    a2(v10);
  }

  else
  {
    sub_100008D3C(v9, &unk_1003D9220, &unk_10033E8C0);
    return (a2)(0);
  }
}

void sub_1001F33A0(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v58 = a3;
  v59 = a4;
  v54 = a2;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v51[-v9];
  v11 = type metadata accessor for InheritanceInvitationRecord(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for UUID();
  v56 = *(v14 - 8);
  v57 = v14;
  __chkstk_darwin(v14);
  v55 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v16);
  v18 = &v51[-v17];
  sub_100012D04(a1, &v51[-v17], &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001F57B0(v18, v13, type metadata accessor for InheritanceInvitationRecord);
    (*(v8 + 16))(v10, a5 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v7);
    Dependency.wrappedValue.getter();
    (*(v8 + 8))(v10, v7);
    sub_1000080F8(v62, v62[3]);
    v40 = swift_allocObject();
    *(v40 + 16) = v58;
    *(v40 + 24) = v59;

    sub_100215918(v13, sub_1001F5608, v40);

    sub_1001F583C(v13, type metadata accessor for InheritanceInvitationRecord);
    sub_10000839C(v62);
    return;
  }

  v19 = *v18;
  v62[0] = *v18;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for InheritanceError(0);
  if (swift_dynamicCast())
  {
    v20 = v61;
    v62[0] = v61;
    v60 = 3;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = v61;
    v60 = v61;
    v22 = static _BridgedStoredNSError.== infix(_:_:)();

    if (v22)
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100008D04(v23, qword_1003FAAA0);
      v24 = v55;
      v25 = v56;
      v26 = v57;
      (*(v56 + 16))(v55, v54, v57);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v62[0] = v53;
        *v29 = 136315394;
        v61 = type metadata accessor for InheritanceCleanupController(0);
        sub_100005814(&qword_1003E2D18, qword_1003466C0);
        v30 = String.init<A>(describing:)();
        v54 = v20;
        v31 = v24;
        v33 = sub_10021145C(v30, v32, v62);
        v52 = v28;
        v34 = v33;

        *(v29 + 4) = v34;
        *(v29 + 12) = 2080;
        sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        v38 = v31;
        v20 = v54;
        (*(v25 + 8))(v38, v26);
        v39 = sub_10021145C(v35, v37, v62);

        *(v29 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v27, v52, "%s: There is no InheritanceInvitationRecord for beneficiaryID - %s.", v29, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v25 + 8))(v24, v26);
      }

      v61 = 11;
      sub_100212324(_swiftEmptyArrayStorage);
      _BridgedStoredNSError.init(_:userInfo:)();
      v50 = v62[0];
      v58(v62[0]);

      return;
    }
  }

  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100008D04(v41, qword_1003FAAA0);
  swift_errorRetain();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61 = v19;
    v62[0] = v45;
    *v44 = 136315138;
    swift_errorRetain();
    v46 = String.init<A>(describing:)();
    v48 = sub_10021145C(v46, v47, v62);

    *(v44 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v42, v43, "Error fetching invitation for removal: %s", v44, 0xCu);
    sub_10000839C(v45);
  }

  v49 = v58;
  swift_errorRetain();
  v49(v19);
}

void sub_1001F3B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v5 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  v9 = type metadata accessor for InheritanceHealthRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  __chkstk_darwin(v14);
  v16 = (&v43 - v15);
  sub_100012D04(a1, &v43 - v15, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001F57B0(v16, v11, type metadata accessor for InheritanceHealthRecord);
    (*(v6 + 16))(v8, a3 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v5);
    Dependency.wrappedValue.getter();
    (*(v6 + 8))(v8, v5);
    sub_1000080F8(v50, v50[3]);
    sub_10021E1D4(v11, sub_1001F4298, 0);
    sub_1001F583C(v11, type metadata accessor for InheritanceHealthRecord);
    sub_10000839C(v50);
    return;
  }

  v17 = *v16;
  v50[0] = *v16;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for InheritanceError(0);
  if (swift_dynamicCast())
  {
    v18 = v49;
    v50[0] = v49;
    v48 = 3;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v19 = v49;
    v48 = v49;
    v20 = static _BridgedStoredNSError.== infix(_:_:)();

    if (v20)
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100008D04(v21, qword_1003FAAA0);
      v22 = v45;
      v23 = v46;
      v24 = v47;
      (*(v46 + 16))(v45, v44, v47);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v50[0] = v44;
        *v27 = 136315394;
        v49 = type metadata accessor for InheritanceCleanupController(0);
        sub_100005814(&qword_1003E2D18, qword_1003466C0);
        v28 = String.init<A>(describing:)();
        v30 = sub_10021145C(v28, v29, v50);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2080;
        sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        (*(v23 + 8))(v22, v24);
        v34 = sub_10021145C(v31, v33, v50);

        *(v27 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v25, v26, "%s: There is no InheritanceHealthRecord for beneficiaryID - %s.", v27, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v23 + 8))(v22, v24);
      }

      return;
    }
  }

  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100008D04(v35, qword_1003FAAA0);
  swift_errorRetain();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v49 = v17;
    v50[0] = v39;
    *v38 = 136315138;
    swift_errorRetain();
    v40 = String.init<A>(describing:)();
    v42 = sub_10021145C(v40, v41, v50);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "Error fetching Health Record for removal: %s", v38, 0xCu);
    sub_10000839C(v39);
  }

  else
  {
  }
}

void sub_1001F4298(uint64_t a1)
{
  v2 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v2);
  v4 = (&v14 - v3);
  sub_100012D04(a1, &v14 - v3, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAA0);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v5;
      v15 = v10;
      *v9 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v11 = String.init<A>(describing:)();
      v13 = sub_10021145C(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error removing the Health Record: %s", v9, 0xCu);
      sub_10000839C(v10);
    }

    else
    {
    }
  }

  else
  {
    sub_100008D3C(v4, &unk_1003D9220, &unk_10033E8C0);
  }
}

uint64_t sub_1001F44D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v81 = a4;
  v82 = a2;
  v84 = a3;
  v9 = sub_100005814(&qword_1003E1088, &qword_1003445F8);
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v77 = &v72 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v80 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v72 - v15;
  v17 = swift_allocObject();
  v73 = a5;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1001F4DFC;
  *(v18 + 24) = v17;
  v86 = v18;
  v19 = qword_1003D7F40;
  v74 = a6;

  v87 = v17;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_100008D04(v20, qword_1003FAAA0);
  v22 = v12[2];
  v85 = a1;
  v75 = v22;
  v76 = v12 + 2;
  v22(v16, a1, v11);
  v83 = v21;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v25 = os_log_type_enabled(v23, v24);
  v79 = v12;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    aBlock[0] = v72;
    *v26 = 136315394;
    v89 = type metadata accessor for InheritanceCleanupController(0);
    sub_100005814(&qword_1003E2D18, qword_1003466C0);
    v27 = String.init<A>(describing:)();
    v29 = v13;
    v30 = v9;
    v31 = v11;
    v32 = sub_10021145C(v27, v28, aBlock);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v36 = v12[1];
    v37 = v31;
    v38 = v31;
    v9 = v30;
    v13 = v29;
    v36(v16, v38);
    v39 = sub_10021145C(v33, v35, aBlock);

    *(v26 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s: Starting cleanup for beneficiary with beneficiaryID - %s", v26, 0x16u);
    swift_arrayDestroy();

    v40 = v85;
    if (v84)
    {
LABEL_5:
      v41 = objc_allocWithZone(AKInheritanceContext);

      v42 = String._bridgeToObjectiveC()();

      v43 = [v41 initWithOwnerAltDSID:v42];

      UUID.uuidString.getter();
      v44 = String._bridgeToObjectiveC()();

      [v43 setBeneficiaryIdentifier:v44];

      v45 = objc_allocWithZone(AKInheritanceAccessKey);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v47 = [v45 initWithBeneficiairyIdentifier:isa];

      [v43 setAccessKey:v47];
      [v43 setManifest:0];
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Removing Beneficiary from IDMS...", v50, 2u);
      }

      v51 = v77;
      v52 = v78;
      (*(v78 + 16))(v77, v81 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__requestController, v9);
      Dependency.wrappedValue.getter();
      (*(v52 + 8))(v51, v9);
      v53 = aBlock[0];
      v54 = swift_allocObject();
      swift_weakInit();
      v55 = v80;
      v75(v80, v40, v37);
      v56 = v79;
      v57 = (*(v79 + 80) + 16) & ~*(v79 + 80);
      v58 = (v13 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      (v56[4])(v59 + v57, v55, v37);
      *(v59 + v58) = v54;
      v60 = (v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
      v61 = v86;
      *v60 = sub_1001F4E04;
      v60[1] = v61;
      aBlock[4] = sub_1001F4E48;
      aBlock[5] = v59;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      aBlock[3] = &unk_1003AEA40;
      v62 = _Block_copy(aBlock);

      [v53 removeBeneficiaryWithInheritanceContext:v43 completion:v62];
      _Block_release(v62);

      return swift_unknownObjectRelease();
    }
  }

  else
  {

    v64 = v12[1];
    v37 = v11;
    v64(v16, v11);
    v40 = v85;
    if (v84)
    {
      goto LABEL_5;
    }
  }

  v65 = [objc_allocWithZone(ACAccountStore) init];
  v66 = [v65 aa_primaryAppleAccount];

  if (v66)
  {
    v67 = [v66 aa_altDSID];

    if (v67)
    {
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_5;
    }
  }

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "No altDSID for owner found.", v70, 2u);
  }

  type metadata accessor for InheritanceError(0);
  v89 = 5;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
  _BridgedStoredNSError.init(_:userInfo:)();
  v71 = aBlock[0];

  sub_100208FC0(v71, v73);
}

uint64_t sub_1001F4DC4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001F4E0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001F4E60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F4E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F4EC0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1001F4F88(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = (v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a2(a1, v2 + v5, v7, v9, v10);
}

uint64_t sub_1001F504C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1001F18D4(a1, v4, v5, v6, v7);
}

uint64_t sub_1001F50CC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1001F51A8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1001F233C(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1001F524C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1001F52D4(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1001F1F3C(a1, v4);
}

uint64_t sub_1001F5368()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1001F5434(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1001F0938(a1, v4, v5, v6, v7);
}

uint64_t sub_1001F54AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

void sub_1001F555C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  sub_1001F33A0(a1, (v1 + v4), v9, v10, v8);
}

uint64_t sub_1001F562C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

void sub_1001F56C8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1001F3B6C(a1, v1 + v4, v5);
}

uint64_t sub_1001F5764()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001F57B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F583C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001F58C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v41 = a1;
  v8 = type metadata accessor for BeneficiaryInfoRecord(0);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  __chkstk_darwin(v8 - 8);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v10 - 8);
  v43 = v39 - v11;
  v12 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - v14;
  v16 = qword_1003D7F40;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAA0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v39[0] = v9;
    v22 = a4;
    v23 = a3;
    v24 = a2;
    v25 = v21;
    v45[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10021145C(v24, v23, v45);
    _os_log_impl(&_mh_execute_header, v18, v19, "Sharing record with beneficiary - %s...", v20, 0xCu);
    sub_10000839C(v25);
    a2 = v24;
    a3 = v23;
    a4 = v22;
    v9 = v39[0];
  }

  (*(v13 + 16))(v15, v39[1] + OBJC_IVAR____TtC13appleaccountd33InheritanceCloudSharingController__sharingController, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v15, v12);
  v26 = sub_1000080F8(v45, v45[3]);
  v27 = swift_allocObject();
  *(v27 + 2) = a2;
  *(v27 + 3) = a3;
  v28 = v44;
  *(v27 + 4) = a4;
  *(v27 + 5) = v28;
  v29 = *v26;
  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
  v31 = v42;
  sub_1001F8A34(v41, v42, type metadata accessor for BeneficiaryInfoRecord);
  v32 = (*(v40 + 80) + 40) & ~*(v40 + 80);
  v33 = (v9 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = a2;
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v29;
  sub_1001F8C3C(v31, v35 + v32, type metadata accessor for BeneficiaryInfoRecord);
  v36 = (v35 + v33);
  *v36 = v34;
  v36[1] = a3;
  v36[2] = 2;
  v37 = (v35 + ((v33 + 31) & 0xFFFFFFFFFFFFFFF8));
  *v37 = sub_1001F776C;
  v37[1] = v27;

  sub_1000BCD5C(0, 0, v43, &unk_100346748, v35);

  return sub_10000839C(v45);
}

uint64_t sub_1001F5D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a2;
  v67 = a3;
  v4 = type metadata accessor for CloudShareInfo(0);
  v63 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v64 = v5;
  v65 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v6 - 8);
  v66 = &v52[-v7];
  v8 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v52[-v9];
  v57 = type metadata accessor for InheritanceAccessKeyMessage(0);
  v59 = *(v57 - 8);
  v11 = *(v59 + 64);
  v12 = __chkstk_darwin(v57);
  v60 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v12);
  v15 = &v52[-v14];
  __chkstk_darwin(v13);
  v17 = &v52[-v16];
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAA0);
  sub_1001F8A34(a1, v17, type metadata accessor for InheritanceAccessKeyMessage);
  sub_1001F8A34(a1, v15, type metadata accessor for InheritanceAccessKeyMessage);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v55 = v8;
    v22 = v21;
    v54 = swift_slowAlloc();
    v68[0] = v54;
    *v22 = 136315394;
    v23 = v57;
    type metadata accessor for URL();
    v53 = v20;
    sub_1001F83D8(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v56 = a1;
    v27 = v17;
    v28 = v23;
    sub_1001F7BFC(v27, type metadata accessor for InheritanceAccessKeyMessage);
    v29 = sub_10021145C(v24, v26, v68);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2080;
    type metadata accessor for UUID();
    sub_1001F83D8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    a1 = v56;
    sub_1001F7BFC(v15, type metadata accessor for InheritanceAccessKeyMessage);
    v33 = sub_10021145C(v30, v32, v68);

    *(v22 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v19, v53, "Attempting to accept share with URL %s from %s", v22, 0x16u);
    swift_arrayDestroy();

    v8 = v55;
  }

  else
  {

    sub_1001F7BFC(v15, type metadata accessor for InheritanceAccessKeyMessage);
    sub_1001F7BFC(v17, type metadata accessor for InheritanceAccessKeyMessage);
    v28 = v57;
  }

  v34 = v58;
  (*(v58 + 16))(v10, v61 + OBJC_IVAR____TtC13appleaccountd33InheritanceCloudSharingController__sharingController, v8);
  Dependency.wrappedValue.getter();
  (*(v34 + 8))(v10, v8);
  v35 = sub_1000080F8(v68, v68[3]);
  v36 = *(v28 + 24);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = v60;
  sub_1001F8A34(a1, v60, type metadata accessor for InheritanceAccessKeyMessage);
  v39 = (*(v59 + 80) + 24) & ~*(v59 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  sub_1001F8C3C(v38, v40 + v39, type metadata accessor for InheritanceAccessKeyMessage);
  v41 = (v40 + ((v11 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  v42 = v67;
  *v41 = v62;
  v41[1] = v42;
  v43 = *v35;
  v44 = type metadata accessor for TaskPriority();
  v45 = v66;
  (*(*(v44 - 8) + 56))(v66, 1, 1, v44);
  v46 = v65;
  sub_1001F8A34(a1 + v36, v65, type metadata accessor for CloudShareInfo);
  v47 = (*(v63 + 80) + 40) & ~*(v63 + 80);
  v48 = (v64 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = 0;
  v49[4] = v43;
  sub_1001F8C3C(v46, v49 + v47, type metadata accessor for CloudShareInfo);
  *(v49 + v48) = 2;
  v50 = (v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v50 = sub_1001F7DFC;
  v50[1] = v40;

  sub_1000BCD5C(0, 0, v45, &unk_100346758, v49);

  return sub_10000839C(v68);
}

uint64_t sub_1001F64B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAA0);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21[0] = v10;
      *v9 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v11 = String.init<A>(describing:)();
      v13 = sub_10021145C(v11, v12, v21);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to accept BeneficiaryInfoRecord share. Error - %s.", v9, 0xCu);
      sub_10000839C(v10);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAA0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully accepted BeneficiaryInfoRecord share.", v18, 2u);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v19 = type metadata accessor for InheritanceAccessKeyMessage(0);
      sub_1001F8518(a3 + *(v19 + 20));
    }
  }

  return a4(a1);
}

uint64_t sub_1001F6770(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v41 = a1;
  v8 = type metadata accessor for InheritanceHealthRecord(0);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  __chkstk_darwin(v8 - 8);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v10 - 8);
  v43 = v39 - v11;
  v12 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - v14;
  v16 = qword_1003D7F40;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAA0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v39[0] = v9;
    v22 = a4;
    v23 = a3;
    v24 = a2;
    v25 = v21;
    v45[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10021145C(v24, v23, v45);
    _os_log_impl(&_mh_execute_header, v18, v19, "Sharing health record with beneficiary - %s...", v20, 0xCu);
    sub_10000839C(v25);
    a2 = v24;
    a3 = v23;
    a4 = v22;
    v9 = v39[0];
  }

  (*(v13 + 16))(v15, v39[1] + OBJC_IVAR____TtC13appleaccountd33InheritanceCloudSharingController__sharingController, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v15, v12);
  v26 = sub_1000080F8(v45, v45[3]);
  v27 = swift_allocObject();
  *(v27 + 2) = a2;
  *(v27 + 3) = a3;
  v28 = v44;
  *(v27 + 4) = a4;
  *(v27 + 5) = v28;
  v29 = *v26;
  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
  v31 = v42;
  sub_1001F8A34(v41, v42, type metadata accessor for InheritanceHealthRecord);
  v32 = (*(v40 + 80) + 40) & ~*(v40 + 80);
  v33 = (v9 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = a2;
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v29;
  sub_1001F8C3C(v31, v35 + v32, type metadata accessor for InheritanceHealthRecord);
  v36 = (v35 + v33);
  *v36 = v34;
  v36[1] = a3;
  v36[2] = 3;
  v37 = (v35 + ((v33 + 31) & 0xFFFFFFFFFFFFFFF8));
  *v37 = sub_1001F8A0C;
  v37[1] = v27;

  sub_1000BCD5C(0, 0, v43, &unk_100346770, v35);

  return sub_10000839C(v45);
}

uint64_t sub_1001F6C00(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void *), uint64_t a5, const char *a6)
{
  v38 = a4;
  v11 = type metadata accessor for CloudShareInfo(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v15 = __chkstk_darwin(v14);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v19 = (&v37 - v18);
  sub_100135DB0(a1, &v37 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);

    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = a2;
      v25 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_10021145C(v24, a3, &v40);
      *(v25 + 12) = 2080;
      v39 = v20;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v26 = String.init<A>(describing:)();
      v28 = sub_10021145C(v26, v27, &v40);

      *(v25 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to share record with %s. Error - %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    *v17 = v20;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v38(v17);

    return sub_100008D3C(v17, &unk_1003E1070, &unk_100344CE0);
  }

  else
  {
    sub_1001F8C3C(v19, v13, type metadata accessor for CloudShareInfo);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAA0);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = a2;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = a5;
      v36 = v35;
      v40 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_10021145C(v33, a3, &v40);
      _os_log_impl(&_mh_execute_header, v31, v32, a6, v34, 0xCu);
      sub_10000839C(v36);
    }

    sub_1001F8A34(v13, v17, type metadata accessor for CloudShareInfo);
    swift_storeEnumTagMultiPayload();
    v38(v17);
    sub_100008D3C(v17, &unk_1003E1070, &unk_100344CE0);
    return sub_1001F7BFC(v13, type metadata accessor for CloudShareInfo);
  }
}

uint64_t sub_1001F70C4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd33InheritanceCloudSharingController__sharingController;
  v2 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritanceCloudSharingController(uint64_t a1)
{
  result = qword_1003E2D58;
  if (!qword_1003E2D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001F71C0(uint64_t a1)
{
  sub_1001F7250(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001F7250(uint64_t a1)
{
  if (!qword_1003E5660)
  {
    sub_100008CBC(&unk_1003D98D0, &unk_10033F050);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003E5660);
    }
  }
}

void sub_1001F72B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAA0);
    (*(v5 + 16))(v8, a2, v4);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v14 = 136315394;
      sub_1001F83D8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      v19 = sub_10021145C(v16, v18, &v31);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      v20 = _convertErrorToNSError(_:)();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed performing initial health check for %s. Error: %@", v14, 0x16u);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v30);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);
    (*(v5 + 16))(v10, a2, v4);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      sub_1001F83D8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v5 + 8))(v10, v4);
      v29 = sub_10021145C(v26, v28, &v31);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Completed initial health check for %s", v24, 0xCu);
      sub_10000839C(v25);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }
}

uint64_t sub_1001F7794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a4;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1000082A8;

  return sub_10012EB98(a1, a2, a3, v15, a5, a6, a7, a8);
}

uint64_t sub_1001F788C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
}

void sub_1001F7A90()
{
  type metadata accessor for BeneficiaryInfoRecord(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000EF88;

  JUMPOUT(0x1001F7794);
}

uint64_t sub_1001F7BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001F7C5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001F7C94()
{
  v1 = (type metadata accessor for InheritanceAccessKeyMessage(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v4 + v1[8];
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for CloudShareInfo(0);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1001F7DFC(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceAccessKeyMessage(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001F64B0(a1, v5, v1 + v4, v6);
}

uint64_t sub_1001F7EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_1001F7F4C;

  return sub_100250974(a5, a6);
}

uint64_t sub_1001F7F4C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1001F80C8;
  }

  else
  {
    v2 = sub_1001F8060;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F8060()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F80C8()
{
  v1 = v0[5];
  v2 = v0[2];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001F8154()
{
  v1 = (type metadata accessor for CloudShareInfo(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v4, v5);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1001F827C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CloudShareInfo(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000082A8;

  return sub_1001F7EA0(a1, v9, v10, v1 + 32, v1 + v6, v11, v12, v13);
}

uint64_t sub_1001F83D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F8420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a4;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_10000EF88;

  return sub_10012EFBC(a1, a2, a3, v15, a5, a6, a7, a8);
}

uint64_t sub_1001F8518(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v5;
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAA0);
  v26 = *(v3 + 16);
  v26(v8, a1, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24 = v6;
    v15 = v14;
    v28 = v14;
    *v13 = 136315138;
    sub_1001F83D8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v3 + 8))(v8, v2);
    v19 = sub_10021145C(v16, v18, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Starting initial health check for %s", v13, 0xCu);
    sub_10000839C(v15);
    v6 = v24;

    a1 = v25;
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  type metadata accessor for BenefactorHealthCheck(0);
  swift_allocObject();
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  v26(v6, a1, v2);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  (*(v3 + 32))(v21 + v20, v6, v2);
  sub_100171CDC(a1, sub_1001F895C, v21);
}

uint64_t sub_1001F88D4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1001F895C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1001F72B4(a1, v4);
}

uint64_t sub_1001F89CC()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001F8A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F8A9C()
{
  v1 = (type metadata accessor for InheritanceHealthRecord(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1001F8C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1001F8CA4()
{
  type metadata accessor for InheritanceHealthRecord(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000EF88;

  JUMPOUT(0x1001F8420);
}

uint64_t sub_1001F8E14(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  sub_1002DBEF4(sub_1001F9190, v5);
}

uint64_t sub_1001F8EA0(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  if (a2)
  {
    return a4(a1, 1, a3);
  }

  sub_1000080F8((a3 + OBJC_IVAR____TtC13appleaccountd24InheritanceFamilyManager_inheritanceStorage), *(a3 + OBJC_IVAR____TtC13appleaccountd24InheritanceFamilyManager_inheritanceStorage + 24));
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a4;
  v10[5] = a5;

  sub_1000BCBF4(a1, 0);

  sub_100216650(sub_1001F92EC, v10);
}

uint64_t sub_1001F8FAC()
{
  sub_10000839C((v0 + 16));
  v1 = OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__analyticsReporter;
  v2 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd24InheritanceFamilyManager_inheritanceStorage));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritanceFamilyManager(uint64_t a1)
{
  result = qword_1003E2E10;
  if (!qword_1003E2E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001F9150()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001F91A0(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (a2)
  {
    return a5(a1, 1, a3, a4);
  }

  v7 = sub_1001F92FC(a4, a1);
  (a5)(v7, 0);
}

void (*sub_1001F921C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1001F929C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001F92A4()
{

  return _swift_deallocObject(v0, 48);
}

void *sub_1001F92FC(unint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = type metadata accessor for BeneficiaryInfoRecord(0);
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    v31 = a1 & 0xC000000000000001;
    v27 = a1 + 32;
    v28 = i;
    v29 = a1;
    while (1)
    {
      if (v31)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v30 + 16))
        {
          goto LABEL_26;
        }

        v8 = *(v27 + 8 * v7);
      }

      v34 = v8;
      v9 = __OFADD__(v7, 1);
      v10 = v7 + 1;
      if (v9)
      {
        break;
      }

      v33 = v10;
      v11 = *(v32 + 16);
      if (!v11)
      {
LABEL_4:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_5;
      }

      v12 = &v5[*(v26 + 20)];
      v13 = v32 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v14 = *(v25 + 72);
      while (1)
      {
        sub_100168334(v13, v5);
        v16 = *v12;
        v15 = *(v12 + 1);
        v17 = [v34 handle];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (!v15)
        {
          sub_1001BCA80(v5);

          goto LABEL_13;
        }

        if (v16 == v18 && v15 == v20)
        {
          break;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_1001BCA80(v5);
        if (v22)
        {
          goto LABEL_22;
        }

LABEL_13:
        v13 += v14;
        if (!--v11)
        {
          goto LABEL_4;
        }
      }

      sub_1001BCA80(v5);
LABEL_22:

LABEL_5:
      a1 = v29;
      v7 = v33;
      if (v33 == v28)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void sub_1001F95BC(objc_class *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  isa = a1;
  if (a1)
  {
    sub_100016034(0, a4, a5);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a3 + 16))(a3, isa);
}

void sub_1001F9660(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15 && (v16 = [v15 handle]) != 0)
  {
    v40 = v5;
    v42 = a4;
    v17 = v16;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v38 = v12;
    v41 = a2;
    v43 = a5;
    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAA0);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v24;
      *v23 = 136315138;
      v25 = v39;
      *(v23 + 4) = sub_10021145C(v39, v19, &v45);
      _os_log_impl(&_mh_execute_header, v21, v22, "Notifying beneficiary %s to remove via IDS.", v23, 0xCu);
      sub_10000839C(v24);
    }

    else
    {

      v25 = v39;
    }

    v31 = v40;
    v32 = sub_1000080F8(&v40[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_setupMessenger], *&v40[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_setupMessenger + 24]);
    v33 = [a1 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = *v32;
    v35 = v31;
    v36 = a1;

    v37 = v43;

    sub_1001E0CD4(v14, v25, v19, v34, v35, v36, v41, a3, v42, v37);

    (*(v38 + 8))(v14, v11);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAA0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Beneficiary doesn't have a handle. Beneficiary Removal Complete!", v29, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v44 = 15;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v30 = v45;
    a4(v45);
  }
}

char *sub_1001F9AC8()
{
  v0 = sub_100005814(&unk_1003D97E0, &unk_10033EF90);
  v58 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v50 - v1;
  v3 = type metadata accessor for StorageController(0);
  v4 = swift_allocObject();
  sub_100005814(&unk_1003DF610, &unk_1003437A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  v66 = v3;
  v67 = &off_1003B49F0;
  v65[0] = v4;
  v57 = v4;
  v5 = type metadata accessor for InheritanceStorageController(0);
  v6 = swift_allocObject();
  v53 = v6;
  v7 = sub_10003E968(v65, v3);
  __chkstk_darwin(v7);
  v9 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v12 = (v6 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController);
  v12[3] = v3;
  v12[4] = &off_1003B49F0;
  *v12 = v11;

  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_10000839C(v65);
  type metadata accessor for InheritanceSecurityController(0);
  v13 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  v56 = v13;
  Dependency.init(dependencyId:config:)();
  *(v13 + 16) = [objc_allocWithZone(CDPInheritanceTrustController) init];
  sub_100005814(&unk_1003E03A0, &unk_1003436D0);
  Dependency.init(dependencyId:config:)();
  v14 = type metadata accessor for DaemonDestinationBuilder();
  v15 = swift_allocObject();
  v52 = v0;
  Dependency.wrappedValue.getter();
  v16 = v65[0];
  v66 = v14;
  v67 = &off_1003A9008;
  v65[0] = v15;
  v54 = v15;
  v17 = type metadata accessor for DaemonIDSMessenger();
  v18 = swift_allocObject();
  v19 = sub_10003E968(v65, v14);
  __chkstk_darwin(v19);
  v21 = (&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v18[6] = v14;
  v18[7] = &off_1003A9008;
  v18[2] = v16;
  v18[3] = v23;

  sub_10000839C(v65);
  ObjectType = swift_getObjectType();
  v51 = [objc_allocWithZone(AKInheritanceController) init];
  Dependency.wrappedValue.getter();
  v24 = v65[0];
  v66 = v17;
  v67 = &off_1003B2BB0;
  v65[0] = v18;
  v25 = type metadata accessor for InheritanceSetupMessenger();
  v26 = swift_allocObject();
  v27 = sub_10003E968(v65, v17);
  __chkstk_darwin(v27);
  v29 = (&v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v29;
  v26[5] = v17;
  v26[6] = &off_1003B2BB0;
  v26[2] = v31;

  sub_10000839C(v65);
  v66 = v5;
  v67 = &off_1003B0008;
  v64 = &off_1003B2BB0;
  v65[0] = v53;
  v63 = v17;
  v62[0] = v18;
  v60 = v25;
  v61 = &off_1003AE2A0;
  v59[0] = v26;
  v32 = objc_allocWithZone(type metadata accessor for InheritanceRequestManager(0));
  v33 = sub_10003E968(v65, v66);
  __chkstk_darwin(v33);
  v35 = (&v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = sub_10003E968(v62, v63);
  __chkstk_darwin(v37);
  v39 = (&v50 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = sub_10003E968(v59, v60);
  __chkstk_darwin(v41);
  v43 = (&v50 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  v45 = *v35;
  v46 = *v39;
  v47 = *v43;

  v48 = sub_10020A08C(v51, v45, v24, v46, v47, v56, v32);
  swift_unknownObjectRelease();
  sub_10000839C(v59);
  sub_10000839C(v62);
  sub_10000839C(v65);

  (*(v58 + 8))(v2, v52);
  swift_deallocPartialClassInstance();
  return v48;
}

id sub_1001FA348()
{
  v1 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-1] - v3;
  (*(v2 + 16))(&v17[-1] - v3, v0 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__accountStore, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  v5 = [*(*sub_1000080F8(v17 v17[3]) + 16)];
  if (v5 && (v6 = v5, v7 = [v5 aa_altDSID], v6, v7))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000839C(v17);
    v8 = objc_allocWithZone(AKInheritanceContext);
    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 initWithOwnerAltDSID:v9];

    return v10;
  }

  else
  {
    sub_10000839C(v17);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAA0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error creating inheritance context. No altDSID for owner found.", v15, 2u);
    }

    return 0;
  }
}

void sub_1001FA5BC(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v18 = a1;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v18 = v17;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v4 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v4)
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_100008D04(v5, qword_1003FAAA0);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "CleanupBeneficiary completed.", v8, 2u);
        }

        [objc_opt_self() postInheritanceContactChangedNotification];
        a2(0);

        return;
      }
    }
  }

  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAA0);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003E1090, &qword_100344600);
    v14 = String.init<A>(describing:)();
    v16 = sub_10021145C(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "CleanupBeneficiary completed with error : %s", v12, 0xCu);
    sub_10000839C(v13);
  }

  [objc_opt_self() postInheritanceContactChangedNotification];
  a2(a1);
}

uint64_t sub_1001FA940(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&qword_1003E30D8, &qword_1003468D8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAAA0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v20[0] = v8;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Starting cleaning up benefactor...", v16, 2u);
    v8 = v20[0];
  }

  (*(v10 + 16))(v12, v20[1] + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__cleanupController, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v12, v9);
  v17 = [a1 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = swift_allocObject();
  *(v18 + 16) = v21;
  *(v18 + 24) = a3;

  sub_1001F037C(v8, sub_1001DF740, v18);

  return (*(v6 + 8))(v8, v5);
}

id sub_1001FAC54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritanceRequestManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InheritanceRequestManager(uint64_t a1)
{
  result = qword_1003E3010;
  if (!qword_1003E3010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001FB07C(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_1001FB428(319, &qword_1003E3020, type metadata accessor for InheritanceCleanupController);
    if (v2 <= 0x3F)
    {
      sub_1001FB428(319, &qword_1003E3028, type metadata accessor for BeneficiaryDeclinedStatusHandler);
      if (v3 <= 0x3F)
      {
        sub_1001FB428(319, &qword_1003E3030, type metadata accessor for InheritanceInvitationResponseHandler);
        if (v4 <= 0x3F)
        {
          sub_1001FB428(319, &qword_1003E3038, type metadata accessor for InheritanceInvitationHandler);
          if (v5 <= 0x3F)
          {
            sub_1001FB428(319, &qword_1003E3040, type metadata accessor for InheritanceAccessKeyMessageHandler);
            if (v6 <= 0x3F)
            {
              sub_1001FB428(319, &qword_1003E3048, type metadata accessor for BeneficiaryRemovedMessageHandler);
              if (v7 <= 0x3F)
              {
                sub_10000DAB8(319, &unk_1003E3050, &unk_1003E03B0, &qword_100343D98);
                if (v8 <= 0x3F)
                {
                  sub_10000DAB8(319, &unk_1003E3060, &unk_1003E0390, &qword_100346800);
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1001FB428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Dependency();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1001FB4D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005814(&unk_1003E3210, &unk_100346918);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  (*(v5 + 16))(&v17 - v6, v2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__trustedContactInitiator, v4);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  v8 = sub_1000080F8(v20, v20[3]);
  v9 = *v8;
  v10 = *(*v8 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_serialQueue);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = sub_100159244;
  v11[4] = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10015B5B0;
  *(v12 + 24) = v11;
  aBlock[4] = sub_100071DCC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10030F718;
  aBlock[3] = &unk_1003AFA18;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  dispatch_sync(v14, v13);

  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_10000839C(v20);
    v16 = type metadata accessor for InheritanceRequestManager(0);
    v18.receiver = v2;
    v18.super_class = v16;
    return objc_msgSendSuper2(&v18, "shouldAcceptNewConnection:", a1);
  }

  return result;
}

uint64_t sub_1001FB808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAAA0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_10021145C(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error fetching dataclass rules from Inheritance Controller: %s", v8, 0xCu);
      sub_10000839C(v9);
    }

    else
    {
    }
  }

  return a3(0, a2);
}

uint64_t sub_1001FBB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!a2)
  {
    v7 = 0;
    if (AAUnderTest.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = _convertErrorToNSError(_:)();
  if ((AAUnderTest.getter() & 1) == 0)
  {
LABEL_3:
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    strcpy((inited + 32), "numOfRelation");
    *(inited + 46) = -4864;
    *(inited + 48) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &unk_1003E8C10, &unk_100344990);
    dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
  }

LABEL_4:

  return a4(a1, a2);
}

uint64_t sub_1001FBC68(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for InheritanceError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
  _BridgedStoredNSError.init(_:userInfo:)();
  v14 = static _BridgedStoredNSError.== infix(_:_:)();

  if (v14)
  {
    swift_getObjectType();
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = a4;

    sub_100208BDC(a5, a6, a7, a8, sub_10020E464, v15, a4);
  }

  else
  {
    sub_100212324(_swiftEmptyArrayStorage);
    _BridgedStoredNSError.init(_:userInfo:)();
    v17 = static _BridgedStoredNSError.== infix(_:_:)();

    if (v17)
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100008D04(v18, qword_1003FAAA0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Saving an existing beneficiary is not allowed.", v21, 2u);
      }
    }

    return a2(0, a1);
  }
}

void sub_1001FBF00(void *a1, void *a2, void (*a3)(void, void *), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAA0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = _convertErrorToNSError(_:)();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error setting up the new beneficiary: %@", v11, 0xCu);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    a3(0, a2);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Successfully Setup Beneficiary.", v19, 2u);
    }

    if (a1)
    {
      v20 = swift_allocObject();
      v20[2] = a3;
      v20[3] = a4;
      v20[4] = a1;
      sub_1000080F8((a5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController), *(a5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24));
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      v22[2] = sub_10020E598;
      v22[3] = v20;
      v22[4] = a1;
      v22[5] = v21;
      v23 = a1;

      sub_10021E8F0(sub_10020E5EC, v22);
    }

    else
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Created Beneficiary is nil", v26, 2u);
      }

      type metadata accessor for InheritanceError(0);
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      (a3)(0);
    }
  }
}

uint64_t sub_1001FC388(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v11);
  v13 = (&v36 - v12);
  sub_100012D04(a1, &v36 - v12, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAA0);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40 = v14;
      v41 = v19;
      *v18 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v20 = String.init<A>(describing:)();
      v22 = sub_10021145C(v20, v21, &v41);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error persisting new beneficiary in Inheritance Storage: %s", v18, 0xCu);
      sub_10000839C(v19);
    }

    swift_errorRetain();
    a2(0, v14);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAA0);
    v25 = a4;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v38 = a3;
      v29 = v28;
      v37 = swift_slowAlloc();
      v41 = v37;
      *v29 = 136315138;
      v30 = [v25 beneficiaryID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = a2;
      v34 = v33;
      (*(v39 + 8))(v10, v8);
      v35 = sub_10021145C(v31, v34, &v41);
      a2 = v32;

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Successfully saved beneficiary to storage : beneficiaryID - %s", v29, 0xCu);
      sub_10000839C(v37);
    }

    a2(v25, 0);
    return sub_100008D3C(v13, &unk_1003E10A0, &unk_100344480);
  }
}

void sub_1001FC998(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    v9 = a1;
    [a5 setAccessKey:v9];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = *(Strong + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller);
      v12 = Strong;
      swift_unknownObjectRetain();

      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      *(v13 + 24) = a4;
      aBlock[4] = sub_10020E30C;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      aBlock[3] = &unk_1003AF6F8;
      v14 = _Block_copy(aBlock);

      [v11 updateBeneficiaryWithInheritanceContext:a5 completion:v14];
      swift_unknownObjectRelease();

      _Block_release(v14);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v21 = Error.localizedDescription.getter();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = sub_10021145C(v21, v23, aBlock);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error generating new access code: %s", v19, 0xCu);
      sub_10000839C(v20);
    }

    a3(a2);
  }
}

uint64_t sub_1001FCC68(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t (*)(uint64_t), uint64_t, const char *), uint64_t a3, const char *a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAAA0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_10021145C(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, a4, v10, 0xCu);
      sub_10000839C(v11);
    }

    else
    {
    }
  }

  return a2(a1, a2, a3, a4);
}

uint64_t sub_1001FCE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!a1)
  {
    v5 = 0;
    if (AAUnderTest.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = _convertErrorToNSError(_:)();
  if ((AAUnderTest.getter() & 1) == 0)
  {
LABEL_3:
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    strcpy((inited + 32), "numOfRelation");
    *(inited + 46) = -4864;
    *(inited + 48) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &unk_1003E8C10, &unk_100344990);
    dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
  }

LABEL_4:

  return a3(a1);
}

uint64_t sub_1001FCF74(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v45 = a4;
  v46 = a6;
  v12 = type metadata accessor for InheritanceInvitationRecord(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v15);
  v17 = (&v45 - v16);
  sub_100012D04(a1, &v45 - v16, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    swift_getErrorValue();
    v19 = sub_100256874(v48[2], v48[3]);
    type metadata accessor for InheritanceError(0);
    v47 = 3;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v48[0];
    v47 = v48[0];
    sub_10020E6A0(&qword_1003D8000, type metadata accessor for InheritanceError, &unk_10033BEF4);
    v21 = v20;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v30 = v21;
    }

    v31 = _convertErrorToNSError(_:)();

    v32 = [v31 code];

    if (v19 == v32)
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100008D04(v33, qword_1003FAAA0);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Invitation record doesn't exist. Begin removal without declining status.", v36, 2u);
      }

      sub_1001F9660(a3, v45, a5, v46, a7);
    }

    else
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100008D04(v37, qword_1003FAAA0);
      swift_errorRetain();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v47 = v18;
        v48[0] = v41;
        *v40 = 136315138;
        swift_errorRetain();
        sub_100005814(&unk_1003DBB60, &unk_10033E740);
        v42 = String.init<A>(describing:)();
        v44 = sub_10021145C(v42, v43, v48);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "Cannot proceed to remove beneficiary. Error fetching beneficiary -\n%s", v40, 0xCu);
        sub_10000839C(v41);
      }

      swift_errorRetain();
      v46(v18);
    }
  }

  else
  {
    sub_100209F8C(v17, v14, type metadata accessor for InheritanceInvitationRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAA0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Fetched InheritanceInvitationRecord. Declining record...", v25, 2u);
    }

    v26 = *sub_1000080F8(&a2[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&a2[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24]);

    v27 = a2;
    v28 = a3;

    sub_10023ED60(v14, v26, v46, a7, v27, v28, v45, a5);

    return sub_100209FF4(v14, type metadata accessor for InheritanceInvitationRecord);
  }
}

void sub_1001FD570(uint64_t a1, char a2, void (*a3)(), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAA0);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Aborting deletion flow. Failed to decline fetched record. Error: %@.", v14, 0xCu);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    a3();
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAA0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Successfully declined beneficiary invitation record.", v23, 2u);
    }

    sub_1001F9660(a6, a7, a8, a3, a4);
  }
}

uint64_t sub_1001FD8EC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAAA0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Beneficiary Cleanup Complete!", v7, 2u);
  }

  return a2(a1);
}

uint64_t sub_1001FD9E8(void *a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v5 = type metadata accessor for UUID();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_100008D04(v8, qword_1003FAAA0);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  v13 = os_log_type_enabled(v11, v12);
  v44 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41 = v9;
    v48 = v15;
    *v14 = 136315394;
    v47 = type metadata accessor for InheritanceRequestManager(0);
    sub_100005814(&unk_1003E30E0, qword_1003468E0);
    v16 = String.init<A>(describing:)();
    v18 = sub_10021145C(v16, v17, &v48);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = [v10 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = v46;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v45 + 8))(v7, v20);
    v24 = sub_10021145C(v21, v23, &v48);

    *(v14 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s - Removing Benefactor with beneficiaryID: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v25 = objc_allocWithZone(type metadata accessor for InheritanceInvitationActionAnalyticsEvent(0));
  sub_100005814(&qword_1003E30D0, &unk_100340690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033E5C0;
  strcpy((inited + 32), "isFamilyInvite");
  *(inited + 47) = -18;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x8000000100330290;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  sub_1003093D0(inited);
  swift_setDeallocating();
  sub_100005814(&unk_1003E8C10, &unk_100344990);
  swift_arrayDestroy();
  v27 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
  v28 = swift_allocObject();
  v29 = v43;
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = a3;
  v30 = v27;

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Fetching benefactor to remove...", v33, 2u);
  }

  v34 = v42;
  sub_1000080F8(&v42[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&v42[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24]);
  v35 = v44;
  v36 = [v44 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = swift_allocObject();
  v37[2] = sub_10020DFA0;
  v37[3] = v28;
  v37[4] = v34;
  v37[5] = v35;
  v38 = v35;

  v39 = v34;
  sub_10021B0E8(v7, sub_10020DFF4, v37);

  return (*(v45 + 8))(v7, v46);
}

uint64_t sub_1001FDF38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!a1)
  {
    v5 = 0;
    if (AAUnderTest.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = _convertErrorToNSError(_:)();
  if ((AAUnderTest.getter() & 1) == 0)
  {
LABEL_3:
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033E5C0;
    strcpy((inited + 32), "inviteAction");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    String.init<A>(describing:)();
    v7 = String._bridgeToObjectiveC()();

    *(inited + 48) = v7;
    strcpy((inited + 56), "numOfRelation");
    *(inited + 70) = -4864;
    *(inited + 72) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100005814(&unk_1003E8C10, &unk_100344990);
    swift_arrayDestroy();
    dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
  }

LABEL_4:

  return a3(a1);
}

uint64_t sub_1001FE0D4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, char *a4, void *a5)
{
  v40 = a5;
  v41 = a3;
  v8 = type metadata accessor for BenefactorInfoRecord(0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v11 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v14);
  v16 = (&v38 - v15);
  sub_100012D04(a1, &v38 - v15, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a2;
    v18 = *v16;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAA0);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v42 = v18;
      v43 = v23;
      *v22 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v24 = String.init<A>(describing:)();
      v26 = sub_10021145C(v24, v25, &v43);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to fetch benefactor. Cannot remove benefactor. %s", v22, 0xCu);
      sub_10000839C(v23);
    }

    swift_errorRetain();
    v17(v18);
  }

  else
  {
    sub_100209F8C(v16, v13, type metadata accessor for BenefactorInfoRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAAA0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully fetched BenefactorRecord. Declining....", v31, 2u);
    }

    sub_1000080F8(&a4[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&a4[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24]);
    sub_100209F24(v13, v11, type metadata accessor for BenefactorInfoRecord);
    v32 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v33 = (v9 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = a2;
    *(v34 + 24) = v41;
    sub_100209F8C(v11, v34 + v32, type metadata accessor for BenefactorInfoRecord);
    *(v34 + v33) = a4;
    v35 = v40;
    *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;

    v36 = a4;
    v37 = v35;
    sub_100208014(v13, sub_10020E154, v34);

    return sub_100209FF4(v13, type metadata accessor for BenefactorInfoRecord);
  }
}

void sub_1001FE578(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Aborting deletion flow. Failed to decline fetched record. Error: %@.", v19, 0xCu);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v36 = 2113;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v22 = v37;
    a3(v37);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAA0);
    sub_100209F24(a5, v15, type metadata accessor for BenefactorInfoRecord);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = a4;
      v28 = v27;
      v37 = v27;
      *v26 = 136315138;
      v29 = sub_1001E2E64();
      v34 = a5;
      v30 = a3;
      v32 = v31;
      sub_100209FF4(v15, type metadata accessor for BenefactorInfoRecord);
      v33 = sub_10021145C(v29, v32, &v37);
      a3 = v30;
      a5 = v34;

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Successfully declined benefactor record: %s", v26, 0xCu);
      sub_10000839C(v28);
      a4 = v35;
    }

    else
    {

      sub_100209FF4(v15, type metadata accessor for BenefactorInfoRecord);
    }

    sub_1001FE980(a7, a5, a3, a4);
  }
}

uint64_t sub_1001FE980(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = sub_1000080F8(&v4[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_setupMessenger], *&v4[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_setupMessenger + 24]);
  v17 = (a2 + *(type metadata accessor for BenefactorInfoRecord(0) + 20));
  v18 = *v17;
  v43 = v17[1];
  v44 = v18;
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a1;
  v19[4] = a3;
  v19[5] = a4;
  v20 = *v16;
  v21 = *(v10 + 28);
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 16))(&v15[v21], a2, v22);
  *v15 = 0;
  v15[*(v10 + 32)] = 0;
  v23 = qword_1003D7F40;
  v24 = v4;
  v25 = a1;

  if (v23 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100008D04(v26, qword_1003FAAA0);
  sub_100209F24(v15, v13, type metadata accessor for InheritanceInvitationResponseMessage);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v45 = v30;
    *v29 = 136315138;
    v31 = sub_1001DB654();
    v32 = v20;
    v34 = v33;
    sub_100209FF4(v13, type metadata accessor for InheritanceInvitationResponseMessage);
    v35 = sub_10021145C(v31, v34, &v45);
    v20 = v32;

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "Created invitation response message - %s.\nResponding to invitation...", v29, 0xCu);
    sub_10000839C(v30);
  }

  else
  {

    sub_100209FF4(v13, type metadata accessor for InheritanceInvitationResponseMessage);
  }

  v36 = sub_1000080F8((v20 + 16), *(v20 + 40));
  if (_swiftEmptyArrayStorage >> 62)
  {
    v40 = v36;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10013446C(_swiftEmptyArrayStorage);
      v37 = v41;
    }

    else
    {
      v37 = &_swiftEmptySetSingleton;
    }

    v36 = v40;
  }

  else
  {
    v37 = &_swiftEmptySetSingleton;
  }

  v38 = *v36;

  sub_1002B4B0C(v15, v44, v43, 0, 0, v37, v38, sub_10020E284, v19);

  return sub_100209FF4(v15, type metadata accessor for InheritanceInvitationResponseMessage);
}

uint64_t sub_1001FEDDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAA0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v11 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v12 = String.init<A>(describing:)();
      v14 = a5;
      v15 = sub_10021145C(v12, v13, &v18);

      *(v11 + 4) = v15;
      a5 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error declining invitation: %s", v11, 0xCu);
      sub_10000839C(v17);
    }

    else
    {
    }
  }

  return sub_1001FA940(a3, a4, a5);
}

void sub_1001FEFD8(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

uint64_t sub_1001FF070(uint64_t a1, char a2, uint64_t (*a3)(void, uint64_t))
{
  v6 = type metadata accessor for BeneficiaryInfoRecord(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAA0);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = _convertErrorToNSError(_:)();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error fetching beneficiaries from storage: %@", v16, 0xCu);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);
    }

    return a3(0, a1);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = _swiftEmptyArrayStorage;
    if (v20)
    {
      v24 = a3;
      v25 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      sub_100016034(0, &qword_1003E0C40, AABeneficiaryInfo_ptr);
      v22 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v23 = *(v7 + 72);
      do
      {
        sub_100209F24(v22, v12, type metadata accessor for BeneficiaryInfoRecord);
        sub_100209F24(v12, v10, type metadata accessor for BeneficiaryInfoRecord);
        sub_1001E36E8(v10);
        sub_100209FF4(v12, type metadata accessor for BeneficiaryInfoRecord);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v22 += v23;
        --v20;
      }

      while (v20);
      a3 = v24;
      v21 = v25;
    }

    a3(v21, 0);
  }
}

void *sub_1001FF460(uint64_t a1, char a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAA0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = _convertErrorToNSError(_:)();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error fetching beneficiaries from storage: %@", v11, 0xCu);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
    }

    v14 = 0;
    v15 = a1;
    return a3(v14, v15);
  }

  if (!*(a1 + 16))
  {
    v14 = _swiftEmptyArrayStorage;
    v15 = 0;
    return a3(v14, v15);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a3;
    v18[4] = a4;
    sub_1000BCBF4(a1, 0);

    sub_100205D04(sub_100209F00, v18);
  }

  return result;
}

uint64_t sub_1001FF8B4(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAA0);
  swift_unknownObjectRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25[1] = v3;
    v13 = v12;
    v29 = swift_slowAlloc();
    *v13 = 136315394;
    v28 = type metadata accessor for InheritanceRequestManager(0);
    sub_100005814(&unk_1003E30E0, qword_1003468E0);
    v14 = String.init<A>(describing:)();
    v16 = sub_10021145C(v14, v15, &v29);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = [a1 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v6 + 8))(v8, v5);
    v21 = sub_10021145C(v18, v20, &v29);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s - Sending invitation to beneficiaryID - %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v26;
  v23[3] = v27;
  v23[4] = v22;

  sub_100200440(a1, sub_100209B98, v23);
}

uint64_t sub_1001FFC14(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v5 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v45 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v43 - v6;
  v8 = type metadata accessor for InheritanceInvitationRecord(0);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  v13 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v13);
  v15 = (&v43 - v14);
  sub_100012D04(a1, &v43 - v14, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    swift_errorRetain();
    v46(v16);
  }

  v19 = v46;
  v18 = v47;
  sub_100209F8C(v15, v12, type metadata accessor for InheritanceInvitationRecord);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v21 = v45;
  v22 = Strong;
  (*(v45 + 16))(v7, Strong + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__accountStore, v5);
  Dependency.wrappedValue.getter();

  (*(v21 + 8))(v7, v5);
  v23 = [*(*sub_1000080F8(v49 v50) + 16)];
  if (!v23 || (v24 = v23, v25 = [v23 aa_altDSID], v24, !v25))
  {
    sub_10000839C(v49);
LABEL_9:
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAAA0);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "No altDSID for owner found.", v41, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v48 = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v42 = v49[0];
    v19(v49[0]);

    return sub_100209FF4(v12, type metadata accessor for InheritanceInvitationRecord);
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  sub_10000839C(v49);
  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v45 = v26;
    v30 = v29;
    sub_100040738(v29 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_setupMessenger, v49);

    sub_1000080F8(v49, v50);
    v31 = v44;
    sub_100209F24(v12, v44, type metadata accessor for InheritanceInvitationRecord);
    v32 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v33 = v9 + v32 + 7;
    v34 = v12;
    v35 = v33 & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    sub_100209F8C(v31, v36 + v32, type metadata accessor for InheritanceInvitationRecord);
    v37 = (v36 + v35);
    *v37 = v19;
    v37[1] = v18;

    sub_1001E0068(v34, v45, v28, sub_100209DE0, v36);

    sub_100209FF4(v34, type metadata accessor for InheritanceInvitationRecord);
    return sub_10000839C(v49);
  }

  return sub_100209FF4(v12, type metadata accessor for InheritanceInvitationRecord);
}

uint64_t sub_1002001D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v5 = (a2 + *(type metadata accessor for InheritanceInvitationRecord(0) + 20));
    v6 = *v5;
    v7 = v5[1];
    swift_errorRetain();
    v8._countAndFlagsBits = v6;
    v8._object = v7;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 58;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);

    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = v11;
    v21[0] = 0xD000000000000020;
    v21[1] = 0x8000000100331230;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAA0);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21[0] = v18;
      *v17 = 136315138;
      v19 = sub_10021145C(0xD000000000000020, 0x8000000100331230, v21);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
      sub_10000839C(v18);
    }

    else
    {
    }
  }

  return a3(a1, a2);
}

uint64_t sub_100200440(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Fetching for existing invitation..", v15, 2u);
  }

  sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24));
  v16 = [a1 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;

  swift_unknownObjectRetain();

  sub_100214780(v11, sub_100209BEC, v18, v19, v20, v21, v22, v23, v25);

  (*(v9 + 8))(v11, v8);
}

uint64_t sub_100200748(uint64_t a1, char a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  v44 = type metadata accessor for PersonNameComponents();
  v8 = *(v44 - 8);
  __chkstk_darwin(v44);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for InheritanceInvitationRecord(0);
  v11 = *(v46 - 8);
  v12 = __chkstk_darwin(v46);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v45 = v38 - v15;
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = _convertErrorToNSError(_:)();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error fetching invitations from storage: %@", v19, 0xCu);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);
    }

    return a3(0, a1);
  }

  else
  {
    v43 = v10;
    v23 = *(a1 + 16);
    v24 = _swiftEmptyArrayStorage;
    if (v23)
    {
      v38[1] = a4;
      v39 = a3;
      v50 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v25 = objc_opt_self();
      v26 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v41 = *(v11 + 72);
      v42 = v25;
      v40 = (v8 + 8);
      v27 = v45;
      v28 = v46;
      do
      {
        sub_100209F24(v26, v27, type metadata accessor for InheritanceInvitationRecord);
        sub_100209F24(v27, v14, type metadata accessor for InheritanceInvitationRecord);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v48 = String._bridgeToObjectiveC()();
        if (*&v14[*(v28 + 24) + 8])
        {
          v33 = String._bridgeToObjectiveC()();
        }

        else
        {
          v33 = 0;
        }

        v47 = v33;
        if (*&v14[*(v28 + 28) + 8])
        {
          v34 = String._bridgeToObjectiveC()();
        }

        else
        {
          v34 = 0;
        }

        v35 = v43;
        PersonNameComponents.init()();

        PersonNameComponents.givenName.setter();

        PersonNameComponents.familyName.setter();
        v36 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v37 = [v42 localizedStringFromPersonNameComponents:v36 style:0 options:0];

        if (!v37)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = String._bridgeToObjectiveC()();
        }

        v29 = objc_allocWithZone(AAInheritanceInvitation);
        (*v40)(v35, v44);
        v28 = v46;
        v30 = v47;
        v32 = v48;
        v31 = isa;
        [v29 initWithBeneficiaryID:isa beneficiaryHandle:v48 beneficiaryFirstName:v47 beneficiaryLastName:v34 beneficiaryDisplayName:v37 status:*&v14[*(v46 + 32)]];

        v27 = v45;
        sub_100209FF4(v45, type metadata accessor for InheritanceInvitationRecord);
        sub_100209FF4(v14, type metadata accessor for InheritanceInvitationRecord);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v26 += v41;
        --v23;
      }

      while (v23);
      v24 = v50;
      a3 = v39;
    }

    a3(v24, 0);
  }
}

uint64_t sub_100200D58(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v49 = a3;
  v50 = a2;
  v47 = type metadata accessor for PersonNameComponents();
  v5 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InheritanceInvitationRecord(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v14);
  v16 = (&v43 - v15);
  sub_100012D04(a1, &v43 - v15, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAA0);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = _convertErrorToNSError(_:)();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error fetching invitation from storage: %@", v21, 0xCu);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v50(0, v17);
  }

  else
  {
    sub_100209F8C(v16, v13, type metadata accessor for InheritanceInvitationRecord);
    v46 = v13;
    sub_100209F24(v13, v11, type metadata accessor for InheritanceInvitationRecord);
    v25.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v45 = String._bridgeToObjectiveC()();
    if (*&v11[v8[6] + 8])
    {
      v44 = String._bridgeToObjectiveC()();
    }

    else
    {
      v44 = 0;
    }

    if (*&v11[v8[7] + 8])
    {
      v26 = String._bridgeToObjectiveC()();
    }

    else
    {
      v26 = 0;
    }

    PersonNameComponents.init()();

    PersonNameComponents.givenName.setter();

    PersonNameComponents.familyName.setter();
    v27 = objc_opt_self();
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v29 = [v27 localizedStringFromPersonNameComponents:isa style:0 options:0];

    if (!v29)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = String._bridgeToObjectiveC()();
    }

    v30 = objc_allocWithZone(AAInheritanceInvitation);
    (*(v5 + 8))(v7, v47);
    v31 = v30;
    v33 = v44;
    v32 = v45;
    v34 = [v31 initWithBeneficiaryID:v25.super.isa beneficiaryHandle:v45 beneficiaryFirstName:v44 beneficiaryLastName:v26 beneficiaryDisplayName:v29 status:*&v11[v8[8]]];
    v35 = v25.super.isa;
    v36 = v34;

    sub_100209FF4(v11, type metadata accessor for InheritanceInvitationRecord);
    v37 = v46;
    if (static UUID.== infix(_:_:)())
    {
      v38 = v36;
      v50(v36, 0);
    }

    else
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100008D04(v39, qword_1003FAAA0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Fetched invitation did not match record.", v42, 2u);
      }

      type metadata accessor for InheritanceError(0);
      v51 = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v38 = v52;
      v50(0, v52);
    }

    return sub_100209FF4(v37, type metadata accessor for InheritanceInvitationRecord);
  }
}

void sub_1002015D4(uint64_t a1, char a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InheritanceInvitationRecord(0) - 8;
  v17 = __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAA0);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = _convertErrorToNSError(_:)();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error removing invitation from storage: %@", v25, 0xCu);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);
    }

    if (a4)
    {
      a4(a1);
    }
  }

  else
  {
    v37 = &v37 - v21;
    v38 = a6;
    v39 = a5;
    v40 = a4;
    v28 = *(a1 + 16);
    if (v28)
    {
      v29 = (v13 + 8);
      v30 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v31 = *(v20 + 72);
      while (1)
      {
        sub_100209F24(v30, v19, type metadata accessor for InheritanceInvitationRecord);
        v32 = [a3 beneficiaryID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v32) = static UUID.== infix(_:_:)();
        (*v29)(v15, v12);
        if (v32)
        {
          break;
        }

        sub_100209FF4(v19, type metadata accessor for InheritanceInvitationRecord);
        v30 += v31;
        if (!--v28)
        {
          goto LABEL_12;
        }
      }

      v33 = v37;
      sub_100209F8C(v19, v37, type metadata accessor for InheritanceInvitationRecord);
      sub_1000080F8((v38 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController), *(v38 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24));
      v34 = swift_allocObject();
      v36 = v39;
      v35 = v40;
      *(v34 + 16) = v40;
      *(v34 + 24) = v36;
      sub_100083AA0(v35, v36);
      sub_100215918(v33, sub_1002099B8, v34);

      sub_100209FF4(v33, type metadata accessor for InheritanceInvitationRecord);
    }

    else
    {
LABEL_12:
      if (v40)
      {
        v40(0);
      }
    }
  }
}

uint64_t sub_100201B38(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v32 = a3;
  v35 = a2;
  v36 = a1;
  v34 = type metadata accessor for UUID();
  v33 = *(v34 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v34);
  v7 = v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_invitationResponder;
  v8 = objc_allocWithZone(type metadata accessor for InheritanceInvitationActionAnalyticsEvent(0));
  sub_100005814(&qword_1003E30D0, &unk_100340690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033E5C0;
  strcpy((inited + 32), "isFamilyInvite");
  *(inited + 47) = -18;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x8000000100330290;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  sub_1003093D0(inited);
  swift_setDeallocating();
  sub_100005814(&unk_1003E8C10, &unk_100344990);
  swift_arrayDestroy();
  v10 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v35;
  v12 = v32;
  *(v11 + 24) = v10;
  *(v11 + 32) = v12;
  *(v11 + 40) = a4;
  v31 = sub_1000080F8((v7 + 40), *(v7 + 64));
  sub_10016FFDC(v7, v37);
  v13 = v33;
  v14 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v34;
  (*(v33 + 16))(v14, v36, v34);
  v16 = (*(v13 + 80) + 136) & ~*(v13 + 80);
  v17 = (v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 39) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v37[5];
  *(v19 + 80) = v37[4];
  *(v19 + 96) = v20;
  *(v19 + 112) = v37[6];
  *(v19 + 128) = v38;
  v21 = v37[1];
  *(v19 + 16) = v37[0];
  *(v19 + 32) = v21;
  v22 = v37[3];
  *(v19 + 48) = v37[2];
  *(v19 + 64) = v22;
  (*(v13 + 32))(v19 + v16, v14, v15);
  *(v19 + v17) = v10;
  v23 = v19 + v29;
  v24 = v30;
  *v23 = v12;
  *(v23 + 8) = v24;
  *(v23 + 16) = v35;
  v25 = (v19 + v18);
  *v25 = sub_10016FFCC;
  v25[1] = v11;
  v26 = v10;
  sub_100083AA0(v12, v24);
  v27 = v26;
  sub_100083AA0(v12, v24);

  sub_10021B0E8(v36, sub_100170158, v19);
}

uint64_t sub_100202054(uint64_t a1, char a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  v8 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  __chkstk_darwin(v8 - 8);
  v10 = v31 - v9;
  v11 = type metadata accessor for InheritanceHealthRecord(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAA0);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = _convertErrorToNSError(_:)();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error fetching health records from storage: %@", v18, 0xCu);
      sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);
    }

    return a3(0, a1);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = _swiftEmptyArrayStorage;
    if (v22)
    {
      v31[1] = a4;
      v32 = a3;
      v33 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v24 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v25 = *(v12 + 72);
      do
      {
        sub_100209F24(v24, v14, type metadata accessor for InheritanceHealthRecord);
        v26 = *(v11 + 20);
        v27 = type metadata accessor for Date();
        v28 = *(v27 - 8);
        (*(v28 + 16))(v10, &v14[v26], v27);
        (*(v28 + 56))(v10, 0, 1, v27);
        v29.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        isa = 0;
        if ((*(v28 + 48))(v10, 1, v27) != 1)
        {
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v28 + 8))(v10, v27);
        }

        [objc_allocWithZone(AATrustedContactHealthInfo) initWithID:v29.super.isa lastValidCheckTimeStamp:isa];

        sub_100209FF4(v14, type metadata accessor for InheritanceHealthRecord);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v24 += v25;
        --v22;
      }

      while (v22);
      a3 = v32;
      v23 = v33;
    }

    a3(v23, 0);
  }
}

uint64_t sub_10020255C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAAA0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    type metadata accessor for InheritanceRequestManager(0);
    sub_100005814(&unk_1003E30E0, qword_1003468E0);
    v13 = String.init<A>(describing:)();
    v15 = sub_10021145C(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s - Displaying Inheritance Invitation UI using Springboard.", v11, 0xCu);
    sub_10000839C(v12);
  }

  sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24));
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = v16;

  sub_10021B0E8(a1, sub_100209724, v17);
}

void sub_100202780(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v10);
  v12 = (&aBlock[-1] - v11);
  sub_100012D04(a1, &aBlock[-1] - v11, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAA0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      aBlock[6] = v13;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v19 = String.init<A>(describing:)();
      v21 = sub_10021145C(v19, v20, aBlock);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error fetching benefactor record: %s", v17, 0xCu);
      sub_10000839C(v18);
    }

    swift_errorRetain();
    a2(v13);
  }

  else
  {
    sub_100209F8C(v12, v9, type metadata accessor for BenefactorInfoRecord);
    v22 = *&v9[*(v7 + 24)];
    v23 = objc_allocWithZone(AACustodianshipInfo);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v25 = String._bridgeToObjectiveC()();
    v26 = [v23 initWithID:isa status:v22 ownerHandle:v25];

    v27 = [objc_allocWithZone(AAOBInheritanceInvitationModel) initWithBenefactorInfo:v26];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = *(Strong + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_flowPresenter);
      v30 = Strong;
      v31 = swift_allocObject();
      *(v31 + 16) = a2;
      *(v31 + 24) = a3;
      aBlock[4] = sub_100209730;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      aBlock[3] = &unk_1003AF068;
      v32 = _Block_copy(aBlock);

      [v29 presentModel:v27 completion:v32];
      _Block_release(v32);

      sub_100209FF4(v9, type metadata accessor for BenefactorInfoRecord);
    }

    else
    {

      sub_100209FF4(v9, type metadata accessor for BenefactorInfoRecord);
    }
  }
}

uint64_t sub_100202D1C(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAAA0);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = _convertErrorToNSError(_:)();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error occurred displaying Inheritance Invitation UI: %@", v7, 0xCu);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    a2(a1);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAA0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Successfully displayed inheritance invite UI", v14, 2u);
    }

    return (a2)(0);
  }
}

void sub_100202F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36 = a5;
  v37 = a7;
  v38 = a4;
  v15 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - v17;
  v19 = *(v16 + 16);
  v39 = v12;
  v19(&v36 - v17, v12 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__accountStore, v15);
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v18, v15);
  v20 = sub_1000080F8(aBlock, v41);
  v21 = [*(*v20 + 16) aa_primaryAppleAccount];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 aa_altDSID];

    if (v23)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  sub_10000839C(aBlock);
  v24 = objc_allocWithZone(AKInheritanceCLIContext);
  v25 = String._bridgeToObjectiveC()();

  v26 = [v24 initWithOwnerAltDSID:v25];

  v27 = String._bridgeToObjectiveC()();
  [v26 setAccessKeyString:v27];

  v28 = String._bridgeToObjectiveC()();
  [v26 setBeneficiaryPassword:v28];

  if (a6)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  [v26 setBeneficiaryFirstName:v29];

  if (a8)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  [v26 setBeneficiaryLastName:v30];

  v31 = v26;
  v32 = String._bridgeToObjectiveC()();
  [v31 setBeneficiarySetupToken:v32];

  v33 = *(v39 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller);
  v34 = swift_allocObject();
  *(v34 + 16) = a11;
  *(v34 + 24) = a12;
  v42 = sub_1002096CC;
  v43 = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E7C0;
  v41 = &unk_1003AEFA0;
  v35 = _Block_copy(aBlock);

  [v33 _setupBeneficiaryAliasWithInheritanceContext:v31 completion:v35];
  _Block_release(v35);
}

void sub_100203330(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAAA0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error occurred while creating beneficiary alias", v8, 2u);
    }

    swift_errorRetain();
    a3(0, 0, 0, 0, a2);

    return;
  }

  if (a1)
  {
    v10 = [a1 beneficiaryAltDSID];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = [a1 beneficiaryAccountName];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100008D04(v20, qword_1003FAAA0);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v23 = 136315394;
          *(v23 + 4) = sub_10021145C(v12, v14, &v28);
          *(v23 + 12) = 2080;
          *(v23 + 14) = sub_10021145C(v17, v19, &v28);
          _os_log_impl(&_mh_execute_header, v21, v22, "Beneficiary Alias setup successfully:\nbeneficiaryAltDSID - %s\nbeneficiaryAccountName - %s", v23, 0x16u);
          swift_arrayDestroy();
        }

        a3(v12, v14, v17, v19, 0);

        return;
      }
    }
  }

  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100008D04(v24, qword_1003FAAA0);
  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v25, "Setup Beneficiary Alias returned with empty result", v26, 2u);
  }
}

__n128 sub_1002038F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10020391C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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