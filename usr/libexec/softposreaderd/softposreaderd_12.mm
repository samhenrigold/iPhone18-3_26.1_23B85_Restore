uint64_t sub_100119CAC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v6 - 8);
  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(347);
  v7._countAndFlagsBits = 0x203A65646F6D7BLL;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = SPRReaderMode.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x716552736176202CLL;
  v9._object = 0xEF203A7374736575;
  String.append(_:)(v9);
  sub_10000411C(0, &qword_1003A3A80, SPRVASRequest_ptr);
  v10._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x746E756F6D61202CLL;
  v11._object = 0xEA0000000000203ALL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = NSDecimal.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0xD000000000000010;
  v13._object = 0x800000010034EAF0;
  String.append(_:)(v13);
  v14 = Data.hexString()();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = 0x800000010034EB10;
  String.append(_:)(v15);
  v16._countAndFlagsBits = SPRTransactionType.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0xD000000000000018;
  v17._object = 0x800000010034EB30;
  String.append(_:)(v17);
  v18 = Data.hexString()();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0xD000000000000019;
  v19._object = 0x800000010034EB50;
  String.append(_:)(v19);
  static String.Encoding.ascii.getter();
  countAndFlagsBits = String.init(data:encoding:)();
  if (!object)
  {
    v22 = Data.hexString()();
    object = v22._object;
    countAndFlagsBits = v22._countAndFlagsBits;
  }

  String.append(_:)(*&countAndFlagsBits);

  v23._object = 0x800000010034EB70;
  v23._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v23);
  v80 = *(v0 + 112);
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25._object = 0x800000010034EB90;
  v25._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v25);
  v80 = *(v0 + 120);
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0xD000000000000013;
  v27._object = 0x800000010034EBB0;
  String.append(_:)(v27);
  (*(v3 + 16))(v5, v0 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v2);
  v28 = UUID.uuidString.getter();
  v30 = v29;
  (*(v3 + 8))(v5, v2);
  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0xD000000000000014;
  v32._object = 0x800000010034EBD0;
  String.append(_:)(v32);
  v33 = *(v0 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_preferredSchemes);
  if (v33)
  {
    v34 = *(v33 + 16);
    v35 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v80 = _swiftEmptyArrayStorage;

      sub_10004E2DC(0, v34, 0);
      v35 = v80;
      v36 = (v33 + 40);
      do
      {
        v37 = *(v36 - 1);
        v38 = *v36;
        sub_1000094F4(v37, *v36);
        v39 = Data.hexString()();
        sub_100009548(v37, v38);
        v80 = v35;
        v41 = v35[2];
        v40 = v35[3];
        if (v41 >= v40 >> 1)
        {
          sub_10004E2DC((v40 > 1), v41 + 1, 1);
          v35 = v80;
        }

        v36 += 2;
        v35[2] = v41 + 1;
        *&v35[2 * v41 + 4] = v39;
        --v34;
      }

      while (v34);
    }

    v80 = v35;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_100064238();
    v42 = BidirectionalCollection<>.joined(separator:)();
    v44 = v43;
  }

  else
  {
    v44 = 0xE300000000000000;
    v42 = 7104878;
  }

  v45._countAndFlagsBits = v42;
  v45._object = v44;
  String.append(_:)(v45);

  v46._countAndFlagsBits = 0xD000000000000015;
  v46._object = 0x800000010034DAE0;
  String.append(_:)(v46);
  v47 = Data.hexString()();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0x6C69666F7270202CLL;
  v48._object = 0xED0000203A444965;
  String.append(_:)(v48);
  v49 = *(v1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_profileID + 8);
  if (v49)
  {
    v50 = *(v1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_profileID);
  }

  else
  {
    v50 = 0;
  }

  if (v49)
  {
    v51 = *(v1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_profileID + 8);
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  v52._countAndFlagsBits = v50;
  v52._object = v51;
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0x3A4641537369202CLL;
  v53._object = 0xE900000000000020;
  String.append(_:)(v53);
  if (*(v1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_isSAF))
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_isSAF))
  {
    v55 = 0xE400000000000000;
  }

  else
  {
    v55 = 0xE500000000000000;
  }

  v56 = v55;
  String.append(_:)(*&v54);

  v57._countAndFlagsBits = 0x203A64697476202CLL;
  v57._object = 0xE800000000000000;
  String.append(_:)(v57);
  v58 = *(v1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_vtid + 8);
  if (v58)
  {
    v59 = *(v1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_vtid);
  }

  else
  {
    v59 = 0;
  }

  if (v58)
  {
    v60 = *(v1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_vtid + 8);
  }

  else
  {
    v60 = 0xE000000000000000;
  }

  v61._countAndFlagsBits = v59;
  v61._object = v60;
  String.append(_:)(v61);

  v62._countAndFlagsBits = 0xD000000000000017;
  v62._object = 0x800000010034EBF0;
  String.append(_:)(v62);

  v63 = Array.description.getter();
  v65 = v64;

  v66._countAndFlagsBits = v63;
  v66._object = v65;
  String.append(_:)(v66);

  v67._countAndFlagsBits = 0xD000000000000020;
  v67._object = 0x800000010034EC10;
  String.append(_:)(v67);

  v68 = Array.description.getter();
  v70 = v69;

  v71._countAndFlagsBits = v68;
  v71._object = v70;
  String.append(_:)(v71);

  v72._countAndFlagsBits = 0x656C646E7562202CLL;
  v72._object = 0xEC000000203A4449;
  String.append(_:)(v72);
  v73 = *(v1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_bundleID + 8);
  if (v73)
  {
    v74 = *(v1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_bundleID);
  }

  else
  {
    v74 = 0;
  }

  if (v73)
  {
    v75 = v73;
  }

  else
  {
    v75 = 0xE000000000000000;
  }

  v76._countAndFlagsBits = v74;
  v76._object = v75;
  String.append(_:)(v76);

  v77._countAndFlagsBits = 32010;
  v77._object = 0xE200000000000000;
  String.append(_:)(v77);
  return v81;
}

char *sub_10011A468()
{

  sub_100009548(*(v0 + 56), *(v0 + 64));
  sub_100009548(*(v0 + 80), *(v0 + 88));
  sub_100009548(*(v0 + 96), *(v0 + 104));
  v1 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_100009548(*(v0 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf), *(v0 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8));
  memcpy(v5, (v0 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_kernelToken), sizeof(v5));
  sub_10006413C(v5);
  v3(v0 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_tpid, v2);
  sub_10000BD44(v0 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID, &qword_1003A0178, &unk_1002C3BB0);

  return v0;
}

uint64_t sub_10011A5E0()
{
  sub_10011A468();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReaderConfiguration(uint64_t a1)
{
  result = qword_1003A3848;
  if (!qword_1003A3848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011A68C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10011A7DC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10011A7DC(uint64_t a1)
{
  if (!qword_1003A04D0)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003A04D0);
    }
  }
}

uint64_t sub_10011A858(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011A8C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    do
    {
      v9 = String.Iterator.next()();
      if (!v9.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v9.value._countAndFlagsBits && object == v9.value._object)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
  }

  v10 = String.Iterator.next()().value._object;

  if (!v10)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_10011AA24(uint64_t a1, unint64_t a2)
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

void sub_10011AAAC(uint64_t a1)
{
  v79 = type metadata accessor for DispatchTime();
  v3 = *(v79 - 8);
  __chkstk_darwin(v79);
  v83 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v6 = __chkstk_darwin(v5 - 8);
  v82 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v81 = &v67 - v8;
  v80 = type metadata accessor for StopWatch(0);
  v84 = *(v80 - 8);
  v9 = __chkstk_darwin(v80);
  v74 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v86 = &v67 - v12;
  __chkstk_darwin(v11);
  v14 = &v67 - v13;
  v78 = *(a1 + 16);
  if (!v78)
  {
    return;
  }

  v15 = 0;
  v16 = *(v1 + 56);
  v17 = (v3 + 56);
  v76 = (v3 + 32);
  v77 = a1 + 32;
  v75 = 0x8000000100345AF0;
  while (1)
  {
    v18 = *(v77 + v15);
    v85 = v15 + 1;
    os_unfair_lock_lock((v16 + 32));
    v19 = *v17;
    v20 = v81;
    v21 = v79;
    (*v17)(v81, 1, 1, v79);
    v22 = v82;
    v19(v82, 1, 1, v21);
    v19(v14, 1, 1, v21);
    v23 = *(v80 + 20);
    v19(&v14[v23], 1, 1, v21);
    sub_10001A178(v20, v14);
    sub_10001A178(v22, &v14[v23]);
    v24 = v83;
    static DispatchTime.now()();
    sub_10000BD44(v14, &qword_10039E290, &unk_1002C37C0);
    (*v76)(v14, v24, v21);
    v19(v14, 0, 1, v21);
    v25 = 0x6D69546C61746F74;
    if (v18 != 2)
    {
      v25 = 0x54676E696C6C6F70;
    }

    v26 = 0xE900000000000065;
    if (v18 != 2)
    {
      v26 = 0xEE00534156656D69;
    }

    v27 = 0x656D695464616572;
    if (!v18)
    {
      v27 = 0xD000000000000012;
    }

    v28 = v75;
    if (v18)
    {
      v28 = 0xEB00000000564D45;
    }

    v29 = v18 <= 1;
    if (v18 <= 1)
    {
      v30 = v27;
    }

    else
    {
      v30 = v25;
    }

    if (v29)
    {
      v31 = v28;
    }

    else
    {
      v31 = v26;
    }

    sub_10001A1E8(v14, v86);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(v16 + 24);
    v33 = v87;
    *(v16 + 24) = 0x8000000000000000;
    v34 = v30;
    v36 = sub_1000F5A28(v30, v31);
    v37 = *(v33 + 16);
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v40 = v35;
    if (*(v33 + 24) >= v39)
    {
      break;
    }

    sub_10017D288(v39, isUniquelyReferenced_nonNull_native);
    v41 = v87;
    v42 = sub_1000F5A28(v34, v31);
    if ((v40 & 1) != (v43 & 1))
    {
      goto LABEL_50;
    }

    v36 = v42;
    if (v40)
    {
LABEL_3:
      sub_100138020(v86, *(v41 + 56) + *(v84 + 72) * v36);

      goto LABEL_4;
    }

LABEL_26:
    *(v41 + 8 * (v36 >> 6) + 64) |= 1 << v36;
    v44 = (*(v41 + 48) + 16 * v36);
    *v44 = v34;
    v44[1] = v31;
    sub_10002F15C(v86, *(v41 + 56) + *(v84 + 72) * v36);
    v45 = *(v41 + 16);
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_48;
    }

    *(v41 + 16) = v47;
LABEL_4:
    *(v16 + 24) = v41;

    sub_10001A24C(v14);
    os_unfair_lock_unlock((v16 + 32));
    v15 = v85;
    if (v85 == v78)
    {
      return;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v41 = v33;
    if (v35)
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  sub_100004074(&unk_1003A3C80, &qword_1002C8310);
  v48 = static _DictionaryStorage.copy(original:)();
  v41 = v48;
  if (!*(v33 + 16))
  {
LABEL_44:

    if (v40)
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  v49 = (v48 + 64);
  v50 = (v33 + 64);
  v51 = ((1 << *(v41 + 32)) + 63) >> 6;
  v67 = v33 + 64;
  if (v41 != v33 || v49 >= &v50[8 * v51])
  {
    memmove(v49, v50, 8 * v51);
  }

  v52 = 0;
  *(v41 + 16) = *(v33 + 16);
  v53 = 1 << *(v33 + 32);
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  else
  {
    v54 = -1;
  }

  v55 = v54 & *(v33 + 64);
  v56 = (v53 + 63) >> 6;
  v68 = v56;
  if (v55)
  {
    do
    {
      v57 = __clz(__rbit64(v55));
      v72 = (v55 - 1) & v55;
LABEL_42:
      v60 = v57 | (v52 << 6);
      v69 = 16 * v60;
      v61 = *(v33 + 56);
      v62 = (*(v33 + 48) + 16 * v60);
      v63 = *v62;
      v73 = v62[1];
      v70 = *(v84 + 72) * v60;
      v71 = v63;
      sub_10001A1E8(v61 + v70, v74);
      v64 = (*(v41 + 48) + v69);
      v66 = v73;
      v65 = v74;
      *v64 = v71;
      v64[1] = v66;
      sub_10002F15C(v65, *(v41 + 56) + v70);

      v56 = v68;
      v55 = v72;
    }

    while (v72);
  }

  v58 = v52;
  while (1)
  {
    v52 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v52 >= v56)
    {
      goto LABEL_44;
    }

    v59 = *(v67 + 8 * v52);
    ++v58;
    if (v59)
    {
      v57 = __clz(__rbit64(v59));
      v72 = (v59 - 1) & v59;
      goto LABEL_42;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10011B164(uint64_t a1)
{
  v49 = type metadata accessor for DispatchTime();
  v3 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v6 = __chkstk_darwin(v5 - 8);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v43 - v8;
  v9 = type metadata accessor for StopWatch(0);
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = __chkstk_darwin(v9);
  v51 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return;
  }

  v15 = (a1 + 32);
  v16 = *(v1 + 56);
  v17 = (v3 + 56);
  v43 = (v3 + 32);
  while (1)
  {
    v50 = v14;
    v18 = *v15++;
    os_unfair_lock_lock((v16 + 32));
    v19 = *v17;
    v20 = v46;
    v21 = v49;
    (*v17)(v46, 1, 1, v49);
    v22 = v47;
    v19(v47, 1, 1, v21);
    v19(v13, 1, 1, v21);
    v23 = *(v45 + 20);
    v19(&v13[v23], 1, 1, v21);
    sub_10001A178(v20, v13);
    sub_10001A178(v22, &v13[v23]);
    v24 = v48;
    static DispatchTime.now()();
    sub_10000BD44(v13, &qword_10039E290, &unk_1002C37C0);
    (*v43)(v13, v24, v21);
    v19(v13, 0, 1, v21);
    v25 = sub_100026AE8(v18);
    v27 = v26;
    sub_10001A1E8(v13, v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v16 + 24);
    v29 = v52;
    *(v16 + 24) = 0x8000000000000000;
    v31 = sub_1000F5A28(v25, v27);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v38 = v52;
        if (v30)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1001816C0();
        v38 = v52;
        if (v35)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_10017D288(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_1000F5A28(v25, v27);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_19;
      }

      v31 = v36;
      v38 = v52;
      if (v35)
      {
LABEL_3:
        sub_100138020(v51, v38[7] + *(v44 + 72) * v31);

        goto LABEL_4;
      }
    }

    v38[(v31 >> 6) + 8] |= 1 << v31;
    v39 = (v38[6] + 16 * v31);
    *v39 = v25;
    v39[1] = v27;
    sub_10002F15C(v51, v38[7] + *(v44 + 72) * v31);
    v40 = v38[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_18;
    }

    v38[2] = v42;
LABEL_4:
    *(v16 + 24) = v38;
    sub_10001A24C(v13);
    os_unfair_lock_unlock((v16 + 32));
    v14 = v50 - 1;
    if (v50 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10011B5DC(uint64_t a1)
{
  v3 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v4 = __chkstk_darwin(v3 - 8);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = &v57 - v6;
  v67 = type metadata accessor for DispatchTime();
  v7 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StopWatch(0);
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = __chkstk_darwin(v9);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v57 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = 0xEE00534156656D69;
    v16 = *(v1 + 56);
    v17 = (a1 + 32);
    v71 = 0x8000000100345AF0;
    v61 = (v7 + 56);
    v62 = (v7 + 32);
    v68 = (v7 + 48);
    v59 = (v7 + 8);
    do
    {
      v19 = *v17++;
      v18 = v19;
      os_unfair_lock_lock((v16 + 32));
      v20 = 0x6D69546C61746F74;
      if (v19 != 2)
      {
        v20 = 0x54676E696C6C6F70;
      }

      v21 = 0xE900000000000065;
      if (v18 != 2)
      {
        v21 = v15;
      }

      v22 = 0xD000000000000012;
      if (v18)
      {
        v22 = 0x656D695464616572;
      }

      v23 = 0xEB00000000564D45;
      if (!v18)
      {
        v23 = v71;
      }

      if (v18 <= 1)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      if (v18 <= 1)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21;
      }

      v26 = *(v16 + 24);
      if (*(v26 + 16))
      {
        v27 = sub_1000F5A28(v24, v25);
        v29 = v28;

        if (v29)
        {
          v30 = *(v26 + 56);
          v31 = v63;
          sub_10001A1E8(v30 + *(v64 + 72) * v27, v63);
          sub_10002F15C(v31, v13);
          v32 = v15;
          v33 = v66;
          static DispatchTime.now()();
          v34 = *(v65 + 20);
          sub_10000BD44(&v13[v34], &qword_10039E290, &unk_1002C37C0);
          v35 = v33;
          v36 = v67;
          (*v62)(&v13[v34], v35, v67);
          (*v61)(&v13[v34], 0, 1, v36);
          v37 = 0x6D69546C61746F74;
          if (v18 != 2)
          {
            v37 = 0x54676E696C6C6F70;
          }

          v38 = 0xE900000000000065;
          if (v18 != 2)
          {
            v38 = v32;
          }

          v39 = 0xD000000000000012;
          if (v18)
          {
            v39 = 0x656D695464616572;
          }

          v40 = 0xEB00000000564D45;
          if (!v18)
          {
            v40 = v71;
          }

          if (v18 <= 1)
          {
            v37 = v39;
          }

          v70 = v37;
          if (v18 <= 1)
          {
            v41 = v40;
          }

          else
          {
            v41 = v38;
          }

          v42 = v32;
          v43 = &v13[v34];
          v44 = v69;
          sub_10002F674(v43, v69);
          v45 = *v68;
          if ((*v68)(v44, 1, v36) == 1 || (v46 = v69, v58 = DispatchTime.uptimeNanoseconds.getter(), v47 = *v59, (*v59)(v46, v36), v44 = v60, sub_10002F674(v13, v60), v45(v44, 1, v36) == 1))
          {
            sub_10000BD44(v44, &qword_10039E290, &unk_1002C37C0);
            v15 = v42;
LABEL_37:
            v48 = sub_1000F5A28(v70, v41);
            v50 = v49;

            if (v50)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v52 = *(v16 + 16);
              v72 = v52;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_100181554();
                v52 = v72;
              }

              sub_10017C5C4();
              *(v16 + 16) = v52;
            }
          }

          else
          {
            v53 = v60;
            v54 = DispatchTime.uptimeNanoseconds.getter();
            v47(v53, v36);
            v15 = v42;
            if (v58 < v54)
            {
              goto LABEL_37;
            }

            isa = UInt64._bridgeToObjectiveC()().super.super.isa;
            v56 = swift_isUniquelyReferenced_nonNull_native();
            v72 = *(v16 + 16);
            sub_10017FC24(isa, v70, v41, v56);

            *(v16 + 16) = v72;
          }

          sub_10001A24C(v13);
        }
      }

      else
      {
      }

      os_unfair_lock_unlock((v16 + 32));
      --v14;
    }

    while (v14);
  }
}

void sub_10011BBA0(uint64_t a1)
{
  v3 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v4 = __chkstk_darwin(v3 - 8);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v45 - v6;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StopWatch(0);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = __chkstk_darwin(v10);
  v52 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (a1 + 32);
    v17 = *(v1 + 56);
    v49 = (v8 + 56);
    v50 = (v8 + 32);
    v56 = (v8 + 48);
    v47 = (v8 + 8);
    v51 = v7;
    do
    {
      v19 = *v16++;
      v18 = v19;
      os_unfair_lock_lock((v17 + 32));
      v20 = sub_100026AE8(v19);
      v22 = *(v17 + 24);
      if (*(v22 + 16))
      {
        v23 = sub_1000F5A28(v20, v21);
        v25 = v24;

        if (v25)
        {
          v26 = v52;
          sub_10001A1E8(*(v22 + 56) + *(v53 + 72) * v23, v52);
          sub_10002F15C(v26, v14);
          v27 = v55;
          static DispatchTime.now()();
          v28 = *(v54 + 20);
          sub_10000BD44(&v14[v28], &qword_10039E290, &unk_1002C37C0);
          (*v50)(&v14[v28], v27, v7);
          (*v49)(&v14[v28], 0, 1, v7);
          v29 = sub_100026AE8(v18);
          v31 = v30;
          v32 = v57;
          sub_10002F674(&v14[v28], v57);
          v33 = *v56;
          if ((*v56)(v32, 1, v7) == 1 || (v34 = v57, v46 = DispatchTime.uptimeNanoseconds.getter(), v35 = *v47, (*v47)(v34, v7), v32 = v48, sub_10002F674(v14, v48), v33(v32, 1, v7) == 1))
          {
            sub_10000BD44(v32, &qword_10039E290, &unk_1002C37C0);
LABEL_10:
            v36 = sub_1000F5A28(v29, v31);
            v38 = v37;

            v7 = v51;
            if (v38)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v40 = *(v17 + 16);
              v58 = v40;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_100181554();
                v40 = v58;
              }

              sub_10017C5C4();
              *(v17 + 16) = v40;
            }
          }

          else
          {
            v41 = v48;
            v42 = DispatchTime.uptimeNanoseconds.getter();
            v35(v41, v7);
            if (v46 < v42)
            {
              goto LABEL_10;
            }

            isa = UInt64._bridgeToObjectiveC()().super.super.isa;
            v44 = swift_isUniquelyReferenced_nonNull_native();
            v58 = *(v17 + 16);
            sub_10017FC24(isa, v29, v31, v44);

            *(v17 + 16) = v58;
            v7 = v51;
          }

          sub_10001A24C(v14);
        }
      }

      else
      {
      }

      os_unfair_lock_unlock((v17 + 32));
      --v15;
    }

    while (v15);
  }
}

uint64_t sub_10011C060(void *a1, char a2, uint64_t a3)
{
  v5 = sub_100030500(a2);
  v7 = *a1;
  if (*(*a1 + 16))
  {
    v8 = sub_1000F5A28(v5, v6);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v8);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v12 = v11;
        static Int._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }
  }

  else
  {
  }

  v13 = sub_100030500(a2);
  v15 = v14;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a1;
  sub_10017FC24(isa, v13, v15, isUniquelyReferenced_nonNull_native);

  *a1 = v19;
  return result;
}

uint64_t sub_10011C1A4(void *a1, char a2, uint64_t a3)
{
  v5 = sub_100026774(a2);
  v7 = *a1;
  if (*(*a1 + 16))
  {
    v8 = sub_1000F5A28(v5, v6);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v8);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v12 = v11;
        static Int._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }
  }

  else
  {
  }

  v13 = sub_100026774(a2);
  v15 = v14;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a1;
  sub_10017FC24(isa, v13, v15, isUniquelyReferenced_nonNull_native);

  *a1 = v19;
  return result;
}

uint64_t sub_10011C2EC(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100026774(a2);
  v8 = *a1;
  if (*(*a1 + 16))
  {
    v9 = sub_1000F5A28(v6, v7);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v8 + 56) + 8 * v9);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v13 = v12;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }
  }

  else
  {
  }

  v14 = sub_100026774(a2);
  v16 = v15;

  v17 = String._bridgeToObjectiveC()();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *a1;
  sub_10017FC24(v17, v14, v16, isUniquelyReferenced_nonNull_native);

  *a1 = v20;
  return result;
}

uint64_t sub_10011C498(uint64_t a1, int a2)
{
  v28 = a2;
  v30 = a1;
  v2 = sub_100004074(&qword_10039E288, &unk_1002C1700);
  __chkstk_darwin(v2 - 8);
  v29 = &v25 - v3;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for StopWatch(0);
  v26 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v5 + 56);
  v17(v13, 1, 1, v4);
  v17(v11, 1, 1, v4);
  v17(v16, 1, 1, v4);
  v27 = v14;
  v18 = *(v14 + 20);
  v17(&v16[v18], 1, 1, v4);
  sub_10001A178(v13, v16);
  sub_10001A178(v11, &v16[v18]);
  static DispatchTime.now()();
  sub_10000BD44(v16, &qword_10039E290, &unk_1002C37C0);
  (*(v5 + 32))(v16, v7, v4);
  v17(v16, 0, 1, v4);
  if (v28 <= 1u)
  {
    if (v28)
    {
      v22 = 0x8000000100344E50;
      v23 = 0xD000000000000011;
    }

    else
    {
      v22 = 0xED0000656D695468;
      v23 = 0x637465464D414C53;
    }

    goto LABEL_10;
  }

  if (v28 == 2)
  {
    v23 = 0x5474736575716552;
    v22 = 0xEB00000000656D69;
LABEL_10:
    v19 = v29;
    v21 = v26;
    v20 = v27;
    goto LABEL_11;
  }

  v19 = v29;
  v21 = v26;
  v20 = v27;
  if (v28 == 3)
  {
    v22 = 0xEC000000656D6954;
    v23 = 0x7265746E45464153;
  }

  else
  {
    v23 = 0x5474697845464153;
    v22 = 0xEB00000000656D69;
  }

LABEL_11:
  sub_10001A1E8(v16, v19);
  (*(v21 + 56))(v19, 0, 1, v20);
  sub_10002D278(v19, v23, v22);
  return sub_10001A24C(v16);
}

uint64_t sub_10011C8AC(uint64_t a1, int a2)
{
  v28 = a2;
  v29 = a1;
  v2 = sub_100004074(&qword_10039E288, &unk_1002C1700);
  __chkstk_darwin(v2 - 8);
  v27 = &v24 - v3;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for StopWatch(0);
  v25 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 56);
  v16(v12, 1, 1, v4);
  v16(v10, 1, 1, v4);
  v16(v15, 1, 1, v4);
  v17 = *(v13 + 20);
  v16(&v15[v17], 1, 1, v4);
  sub_10001A178(v12, v15);
  sub_10001A178(v10, &v15[v17]);
  v18 = v26;
  static DispatchTime.now()();
  sub_10000BD44(v15, &qword_10039E290, &unk_1002C37C0);
  (*(v5 + 32))(v15, v18, v4);
  v16(v15, 0, 1, v4);
  v19 = sub_100026AE8(v28);
  v21 = v20;
  v22 = v27;
  sub_10001A1E8(v15, v27);
  (*(v25 + 56))(v22, 0, 1, v13);
  sub_10002D278(v22, v19, v21);
  return sub_10001A24C(v15);
}

uint64_t sub_10011CC08(uint64_t a1, int a2)
{
  v4 = type metadata accessor for DispatchTime();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StopWatch(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v13 = &v33 - v12;
  v38 = a2;
  v14 = 0x6D69546C61746F74;
  v15 = 0xE900000000000065;
  if (a2 != 2)
  {
    v14 = 0x54676E696C6C6F70;
    v15 = 0xEE00534156656D69;
  }

  v16 = 0xD000000000000012;
  v17 = 0x8000000100345AF0;
  if (a2)
  {
    v16 = 0x656D695464616572;
    v17 = 0xEB00000000564D45;
  }

  if (a2 <= 1u)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  if (a2 <= 1u)
  {
    v19 = v17;
  }

  else
  {
    v19 = v15;
  }

  v20 = *(a1 + 8);
  if (!*(v20 + 16))
  {
  }

  v34 = "transactionStatus";
  v35 = a1;
  v21 = v11;
  v22 = sub_1000F5A28(v18, v19);
  v24 = v23;

  if (v24)
  {
    sub_10001A1E8(*(v20 + 56) + *(v21 + 72) * v22, v10);
    sub_10002F15C(v10, v13);
    static DispatchTime.now()();
    v26 = *(v7 + 20);
    sub_10000BD44(&v13[v26], &qword_10039E290, &unk_1002C37C0);
    v28 = v36;
    v27 = v37;
    (*(v36 + 32))(&v13[v26], v6, v37);
    (*(v28 + 56))(&v13[v26], 0, 1, v27);
    if (v38 > 1u)
    {
      if (v38 == 2)
      {
        v29 = 0x6D69546C61746F74;
        v30 = 0xE900000000000065;
      }

      else
      {
        v29 = 0x54676E696C6C6F70;
        v30 = 0xEE00534156656D69;
      }
    }

    else
    {
      v29 = 0x656D695464616572;
      v30 = 0xEB00000000564D45;
      if (!v38)
      {
        v29 = 0xD000000000000012;
        v30 = v34 | 0x8000000000000000;
      }
    }

    sub_10002F25C();
    if (v31)
    {
      isa = 0;
    }

    else
    {
      isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    }

    sub_10002D180(isa, v29, v30);
    return sub_10001A24C(v13);
  }

  return result;
}

uint64_t sub_10011CF8C(uint64_t a1, int a2)
{
  v4 = type metadata accessor for DispatchTime();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StopWatch(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v13 = &v36 - v12;
  v41 = a2;
  v14 = 0x5474736575716552;
  v15 = 0xEB00000000656D69;
  v16 = 0x7265746E45464153;
  v17 = 0xEC000000656D6954;
  if (a2 != 3)
  {
    v16 = 0x5474697845464153;
    v17 = 0xEB00000000656D69;
  }

  if (a2 != 2)
  {
    v14 = v16;
    v15 = v17;
  }

  v18 = 0xD000000000000011;
  v19 = 0x8000000100344E50;
  if (!a2)
  {
    v18 = 0x637465464D414C53;
    v19 = 0xED0000656D695468;
  }

  if (a2 <= 1u)
  {
    v20 = v18;
  }

  else
  {
    v20 = v14;
  }

  if (a2 <= 1u)
  {
    v21 = v19;
  }

  else
  {
    v21 = v15;
  }

  v22 = *(a1 + 8);
  if (!*(v22 + 16))
  {
  }

  v37 = "";
  v38 = a1;
  v23 = v11;
  v24 = sub_1000F5A28(v20, v21);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    return result;
  }

  sub_10001A1E8(*(v22 + 56) + *(v23 + 72) * v24, v10);
  sub_10002F15C(v10, v13);
  static DispatchTime.now()();
  v28 = *(v7 + 20);
  sub_10000BD44(&v13[v28], &qword_10039E290, &unk_1002C37C0);
  v30 = v39;
  v29 = v40;
  (*(v39 + 32))(&v13[v28], v6, v40);
  (*(v30 + 56))(&v13[v28], 0, 1, v29);
  if (v41 <= 1u)
  {
    v31 = 0x637465464D414C53;
    v32 = 0xED0000656D695468;
    if (v41)
    {
      v31 = 0xD000000000000011;
      v32 = v37 | 0x8000000000000000;
    }

    goto LABEL_25;
  }

  if (v41 == 2)
  {
    v33 = 0x736575716552;
LABEL_24:
    v31 = v33 & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
    v32 = 0xEB00000000656D69;
    goto LABEL_25;
  }

  if (v41 != 3)
  {
    v33 = 0x697845464153;
    goto LABEL_24;
  }

  v31 = 0x7265746E45464153;
  v32 = 0xEC000000656D6954;
LABEL_25:
  sub_10002F25C();
  if (v34)
  {
    isa = 0;
  }

  else
  {
    isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  }

  sub_10002D180(isa, v31, v32);
  return sub_10001A24C(v13);
}

uint64_t sub_10011D358(uint64_t a1, int a2)
{
  v4 = type metadata accessor for DispatchTime();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StopWatch(0);
  v28 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v30 = a2;
  v13 = sub_100026AE8(a2);
  v15 = *(a1 + 8);
  if (!*(v15 + 16))
  {
  }

  v27 = a1;
  v16 = sub_1000F5A28(v13, v14);
  v18 = v17;

  if (v18)
  {
    sub_10001A1E8(*(v15 + 56) + *(v28 + 72) * v16, v10);
    sub_10002F15C(v10, v12);
    static DispatchTime.now()();
    v20 = *(v7 + 20);
    sub_10000BD44(&v12[v20], &qword_10039E290, &unk_1002C37C0);
    v21 = v29;
    (*(v29 + 32))(&v12[v20], v6, v4);
    (*(v21 + 56))(&v12[v20], 0, 1, v4);
    v22 = sub_100026AE8(v30);
    v24 = v23;
    sub_10002F25C();
    if (v25)
    {
      isa = 0;
    }

    else
    {
      isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    }

    sub_10002D180(isa, v22, v24);
    return sub_10001A24C(v12);
  }

  return result;
}

uint64_t sub_10011D610(unint64_t *a1, void *a2, void *(*a3)(void *__return_ptr, void, void, void, void, void))
{
  v6 = type metadata accessor for TLVTag();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TLV();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4A8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A1210);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = a3;
    v34 = v18;
    *v17 = 136315394;
    sub_10000411C(0, a1, a2);
    v19 = _typeName(_:qualified:)();
    v21 = sub_100008F6C(v19, v20, &v34);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034F660, _swiftEmptyArrayStorage);
    v24 = sub_100008F6C(v22, v23, &v34);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s", v17, 0x16u);
    swift_arrayDestroy();
    a3 = v29;

    v6 = v30;
  }

  static TLVTag.globalConfigID.getter();
  v25 = v33;
  sub_10011EC64(v9, a3, v12);
  if (v25)
  {
    v27 = *(v7 + 8);
    v26 = v7 + 8;
    v27(v9, v6);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v26 = TLV.hexStringValue.getter();
    (*(v31 + 8))(v12, v32);
  }

  return v26;
}

uint64_t sub_10011D960(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10011DA0C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v8 = String.Iterator.next()();
  countAndFlagsBits = v8.value._countAndFlagsBits;
  if (v8.value._object)
  {
    object = v8.value._object;
    while (1)
    {
      v13[0] = countAndFlagsBits;
      v13[1] = object;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v11 = String.Iterator.next()();
      countAndFlagsBits = v11.value._countAndFlagsBits;
      object = v11.value._object;
      if (!v11.value._object)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

uint64_t sub_10011DADC(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 64);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v11 = *(v7 - 3);
      v10 = *(v7 - 2);
      v15[0] = *(v7 - 4);
      v15[1] = v11;
      v15[2] = v10;
      v15[3] = v9;
      v15[4] = v8;

      v12 = (a1)(v15);

      if (v3)
      {
        break;
      }

      v7 += 5;
      v13 = v6-- == 0;
    }

    while (((v12 | v13) & 1) == 0);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

unint64_t sub_10011DBE4(unint64_t *a1, void *a2, void *(*a3)(void *__return_ptr, unint64_t, void, void, void, void))
{
  v6 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v6 - 8);
  v81 = (v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = type metadata accessor for TLVTag();
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v10 = __chkstk_darwin(v9 - 8);
  v80 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v77 - v12;
  if (qword_10039D4A8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000403C(v14, qword_1003A1210);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v18 = 136315394;
    sub_10000411C(0, a1, a2);
    v19 = _typeName(_:qualified:)();
    v21 = sub_100008F6C(v19, v20, &v87);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034F680, _swiftEmptyArrayStorage);
    v24 = sub_100008F6C(v22, v23, &v87);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s", v18, 0x16u);
    swift_arrayDestroy();
  }

  LODWORD(v87) = 3488;
  WORD2(v87) = 0;
  v88 = xmmword_1002BDC30;
  v89 = 0;
  sub_10000BC94(&v87, v86);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v87);
  v27 = os_log_type_enabled(v25, v26);
  v79 = v13;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v86[0] = v78;
    *v28 = 136315138;
    v29 = sub_100170CB0(v87 | (WORD2(v87) << 32), v88, *(&v88 + 1), v89);
    v31 = v30;
    v32 = Data.hexString()();
    sub_100009548(v29, v31);
    v33 = sub_100008F6C(v32._countAndFlagsBits, v32._object, v86);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "C-APDU (GET VERSION): %s", v28, 0xCu);
    sub_10000959C(v78);
  }

  a3(v90, v87 | (WORD2(v87) << 32), v88, *(&v88 + 1), v89, 0);
  v34 = v90[1];
  v35 = v91;
  v36 = v92;
  v37 = Logger.logObject.getter();
  if (v34 >> 60 == 15)
  {
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "applet is not responsive, no version", v39, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
    goto LABEL_17;
  }

  v41 = static os_log_type_t.info.getter();
  v42 = os_log_type_enabled(v37, v41);
  v77[1] = v15;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v86[0] = v44;
    *v43 = 136315138;
    v45 = Data.hexString()();
    v36 = sub_100008F6C(v45._countAndFlagsBits, v45._object, v86);

    *(v43 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v37, v41, "R-APDU: %s", v43, 0xCu);
    sub_10000959C(v44);
  }

  if (v35 != 36864)
  {
    sub_10001A3FC();
    swift_allocError();
    *v50 = v35;
    swift_willThrow();
    sub_10000BD44(v90, &qword_10039E2C0, &unk_1002BFEB0);
LABEL_17:
    sub_10000BCF0(&v87);
    return v36;
  }

  v46 = v84;
  v47 = static TLV.decode(from:)();
  if (v46)
  {
    static String.Encoding.ascii.getter();
    v36 = String.init(data:encoding:)();
    v49 = v48;
  }

  else
  {
    v52 = v47;
    v86[0] = v47;
    v53 = v82;
    static TLVTag.payAppletVersionString.getter();
    v54 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
    v55 = sub_10001A570(&qword_10039E230, &qword_1003A2700, &qword_1002C16D0, &protocol conformance descriptor for [A]);
    v56 = v79;
    v93 = v54;
    v84 = v55;
    Collection<>.first(tag:)();
    v57 = *(v85 + 8);
    v85 += 8;
    v81 = v57;
    v57(v53, v83);
    v58 = type metadata accessor for TLV();
    v59 = *(v58 - 8);
    v78 = *(v59 + 48);
    v60 = v78(v56, 1, v58);
    v77[0] = v59;
    if (v60 == 1)
    {
      sub_10000BD44(v56, &unk_10039E210, &unk_1002C65B0);
      v36 = 0;
      v49 = 0;
    }

    else
    {
      v36 = TLV.stringValue.getter();
      v49 = v61;
      (*(v59 + 8))(v56, v58);
    }

    v86[0] = v52;
    v62 = v82;
    static TLVTag.availableKernelsMap.getter();
    v63 = v80;
    Collection<>.first(tag:)();
    v81(v62, v83);

    if (v78(v63, 1, v58) == 1)
    {
      sub_10000BD44(v63, &unk_10039E210, &unk_1002C65B0);
    }

    else
    {
      v64 = v63;
      v65 = TLV.value.getter();
      v67 = v66;
      (*(v77[0] + 8))(v64, v58);
      sub_1000094F4(v65, v67);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      sub_100009548(v65, v67);
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v86[0] = v71;
        *v70 = 136446210;
        v72 = Data.hexString()();
        v93 = v68;
        v73 = sub_100008F6C(v72._countAndFlagsBits, v72._object, v86);
        LODWORD(v85) = v69;
        v74 = v73;

        *(v70 + 4) = v74;
        v75 = v93;
        _os_log_impl(&_mh_execute_header, v93, v85, "Available kernels map: %{public}s", v70, 0xCu);
        sub_10000959C(v71);

        sub_100009548(v65, v67);
      }

      else
      {

        sub_100009548(v65, v67);
      }
    }
  }

  if (!v49)
  {
    sub_10001A3FC();
    swift_allocError();
    *v76 = 1;
    swift_willThrow();
  }

  sub_10000BCF0(&v87);
  sub_10000BD44(v90, &qword_10039E2C0, &unk_1002BFEB0);
  return v36;
}

uint8_t *sub_10011E694(uint64_t a1, void *(*a2)(void *__return_ptr, void, void, void, void, void))
{
  v5 = v2;
  v7 = type metadata accessor for TLVTag();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = TLVTag.rawValue.getter() >> 8;
  v12 = TLVTag.rawValue.getter();
  LOWORD(v51) = -13696;
  BYTE2(v51) = v11;
  HIBYTE(v51) = v12;
  v52 = 0;
  v53 = xmmword_1002BDC30;
  v54 = 0;
  if (qword_10039D4A0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000403C(v13, qword_1003A1128);
  (*(v8 + 16))(v10, a1, v7);
  sub_10000BC94(&v51, v48);
  v55 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  sub_10000BCF0(&v51);
  v17 = os_log_type_enabled(v15, v16);
  v47 = v3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v45 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v46 = a2;
    v48[0] = v20;
    *v19 = 136315394;
    sub_100004074(&qword_10039E268, &unk_1002C16F0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1002C1660;
    v22 = TLVTag.rawValue.getter();
    *(v21 + 56) = &type metadata for UInt;
    *(v21 + 64) = &protocol witness table for UInt;
    *(v21 + 32) = v22;
    v23 = String.init(format:_:)();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v26 = sub_100008F6C(v23, v25, v48);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2080;
    v27 = sub_100170F04(v51 | (v52 << 32), v53, *(&v53 + 1), v54);
    v29 = v28;
    v30 = Data.hexString()();
    sub_100009548(v27, v29);
    v31 = sub_100008F6C(v30._countAndFlagsBits, v30._object, v48);

    *(v19 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v15, v16, "CAPDU (GET DATA for tag %s): %s", v19, 0x16u);
    swift_arrayDestroy();
    a2 = v46;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  a2(v49, v51 | (v52 << 32), v53, *(&v53 + 1), v54, 1);
  v32 = v49[0];
  v33 = v49[1];
  v34 = v50;
  v35 = Logger.logObject.getter();
  if (v33 >> 60 == 15)
  {
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Error from transceive", v32, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  v38 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v48[0] = v40;
    *v39 = 136315138;
    v41 = Data.hexString()();
    v42 = sub_100008F6C(v41._countAndFlagsBits, v41._object, v48);

    *(v39 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v38, "RAPDU: %s", v39, 0xCu);
    sub_10000959C(v40);
  }

  if (v34 != 36864)
  {
    sub_10001A3FC();
    swift_allocError();
    *v43 = v34;
    swift_willThrow();
    sub_10000BD44(v49, &qword_10039E2C0, &unk_1002BFEB0);
LABEL_15:
    sub_10000BCF0(&v51);
    return v32;
  }

  sub_10000BCF0(&v51);
  sub_1000094F4(v32, v33);
  sub_10000BD44(v49, &qword_10039E2C0, &unk_1002BFEB0);
  return v32;
}

uint8_t *sub_10011EC64@<X0>(uint64_t a1@<X0>, void *(*a2)(void *__return_ptr, void, void, void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  result = sub_10011E694(a1, a2);
  if (!v3)
  {
    v12 = result;
    v13 = v11;
    sub_1000094F4(result, v11);
    TLV.init(dataRepresentation:)();
    sub_100009548(v12, v13);
    v14 = type metadata accessor for TLV();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v9, 0, 1, v14);
    return (*(v15 + 32))(a3, v9, v14);
  }

  return result;
}

void sub_10011EFA0()
{
  v0 = sub_10011F10C();
  v2 = v1;
  v3 = sub_1000FAD88(v0, v1);
  if (*(v3 + 16))
  {
    oslog = sub_1000FB10C(v3);

    sub_100009548(v0, v2);
  }

  else
  {

    sub_100009548(v0, v2);
  }
}

uint8_t *sub_10011F10C()
{
  if (qword_10039D4B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A1228);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v4 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v5 = _typeName(_:qualified:)();
    v7 = sub_100008F6C(v5, v6, &v35);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0x6B63617254746567, 0xEF2928726F727245, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, &v35);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  LODWORD(v35) = 132768;
  WORD2(v35) = 0;
  v36 = xmmword_1002BDC30;
  v37 = 0;
  sub_10000BC94(&v35, v34);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v35);
  v13 = os_log_type_enabled(v11, v12);
  v40 = v0;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34[0] = v15;
    *v14 = 136315138;
    v16 = sub_100170F04(v35 | (WORD2(v35) << 32), v36, *(&v36 + 1), v37);
    v18 = v17;
    v19 = Data.hexString()();
    sub_100009548(v16, v18);
    v20 = sub_100008F6C(v19._countAndFlagsBits, v19._object, v34);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "C-APDU (GET ERROR): %s", v14, 0xCu);
    sub_10000959C(v15);
  }

  sub_1000A0770(v35 | (WORD2(v35) << 32), v36, *(&v36 + 1), v37, 1, v38);
  v21 = v38[0];
  v22 = v38[1];
  v23 = v39;
  v24 = Logger.logObject.getter();
  if (v22 >> 60 == 15)
  {
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no response for getTrackError", v21, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    goto LABEL_16;
  }

  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34[0] = v29;
    *v28 = 136315138;
    v30 = Data.hexString()();
    v31 = sub_100008F6C(v30._countAndFlagsBits, v30._object, v34);

    *(v28 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v27, "R-APDU: %s", v28, 0xCu);
    sub_10000959C(v29);
  }

  if (v23 != 36864)
  {
    sub_10001A3FC();
    swift_allocError();
    *v32 = v23;
    swift_willThrow();
    sub_10000BD44(v38, &qword_10039E2C0, &unk_1002BFEB0);
LABEL_16:
    sub_10000BCF0(&v35);
    return v21;
  }

  sub_10000BCF0(&v35);
  sub_1000094F4(v21, v22);
  sub_10000BD44(v38, &qword_10039E2C0, &unk_1002BFEB0);
  return v21;
}

uint64_t sub_10011F680(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, void *(*a5)(uint64_t *__return_ptr, unint64_t, uint64_t, unint64_t, void, void))
{
  if (qword_10039D4A8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A1210);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v12 = 136315394;
    sub_10000411C(0, a3, a4);
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, v57);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1002C1660;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;

    v17 = showFunction(signature:_:)(0xD000000000000014, 0x800000010034F640, v16);
    v19 = v18;

    v20 = sub_100008F6C(v17, v19, v57);

    *(v12 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  result = Data.init(hexString:)();
  if (v22 >> 60 == 15)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "could not convert hex string to profile ID (Data)", v25, 2u);
    }

LABEL_24:

    return 0;
  }

  v26 = result;
  v27 = v22;
  v28 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v28 != 2)
    {
      v29 = 0;
      goto LABEL_18;
    }

    v31 = *(result + 16);
    v30 = *(result + 24);
    v29 = v30 - v31;
    if (!__OFSUB__(v30, v31))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    v29 = WORD2(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

LABEL_16:
    sub_1000094F4(result, v22);
    goto LABEL_18;
  }

  if (v28)
  {
    goto LABEL_15;
  }

  v29 = BYTE6(v22);
LABEL_18:
  v52 = 45440;
  v53 = v29;
  v54 = v26;
  v55 = v27;
  v56 = 0;
  sub_10000BC94(&v52, v57);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v52);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57[0] = v49;
    *v34 = 136315138;
    v35 = sub_100170CB0(v52 | (v53 << 32), v54, v55, v56);
    v37 = v36;
    v38 = Data.hexString()();
    sub_100009548(v35, v37);
    v39 = sub_100008F6C(v38._countAndFlagsBits, v38._object, v57);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "C-APDU (activate profile): %s", v34, 0xCu);
    sub_10000959C(v49);
  }

  a5(v57, v52 | (v53 << 32), v54, v55, v56, 0);
  v40 = v57[1];
  v41 = v58;
  v23 = Logger.logObject.getter();
  if (v40 >> 60 == 15)
  {
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v23, v42, "activate failed", v43, 2u);
    }

    sub_10001A074(v26, v27);
    sub_10000BCF0(&v52);
    goto LABEL_24;
  }

  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    *v45 = 136315138;
    v47 = Data.hexString()();
    v48 = sub_100008F6C(v47._countAndFlagsBits, v47._object, &v51);

    *(v45 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v23, v44, "R-APDU: %s", v45, 0xCu);
    sub_10000959C(v46);
  }

  sub_10000BCF0(&v52);
  sub_10001A074(v26, v27);

  sub_10000BD44(v57, &qword_10039E2C0, &unk_1002BFEB0);
  return v41 == 36864;
}

uint64_t sub_10011FCA8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t (*a13)(char *, char *, uint64_t), void *a14, unsigned __int8 a15, unsigned __int8 a16, void *a17)
{
  v270 = a7;
  v258 = a6;
  LODWORD(v275) = a3;
  v274 = a1;
  v244 = a9;
  v257 = a15;
  v277 = a13;
  v21 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v21 - 8);
  v255 = &v240 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for TLV();
  v273 = *(v266 - 8);
  v23 = __chkstk_darwin(v266);
  v247 = &v240 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v246 = &v240 - v26;
  __chkstk_darwin(v25);
  v245 = &v240 - v27;
  v28 = type metadata accessor for TLVTag();
  v29 = __chkstk_darwin(v28 - 8);
  v248 = &v240 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v267 = &v240 - v31;
  v253 = type metadata accessor for Locale();
  *&v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v251 = &v240 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v33 - 8);
  v268 = &v240 - v34;
  v35 = type metadata accessor for Date();
  v271 = *(v35 - 8);
  v36 = __chkstk_darwin(v35);
  v264 = &v240 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = a16;
  v276 = a14;
  v272 = v36;
  v249 = a8;
  v263 = a12;
  v262 = a11;
  v261 = a10;
  v260 = a5;
  v259 = a4;
  if (a16 == 2)
  {
    if (qword_10039D4B0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000403C(v38, qword_1003A1228);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Sending START TRANSACTION with mode preProcessOnly", v41, 2u);
    }
  }

  else
  {
    v42 = a4;
    v256 = a2;
    if (qword_10039D4B0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000403C(v43, qword_1003A1228);
    v250 = v269;
    sub_1000094F4(a4, a5);
    v44 = v270;
    sub_1000094F4(v270, a8);
    sub_1000094F4(a10, a11);
    sub_1000094F4(a12, v277);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    sub_100009548(v42, a5);
    sub_100009548(v44, a8);
    sub_100009548(a10, a11);
    sub_100009548(a12, v277);

    v243 = v46;
    if (os_log_type_enabled(v45, v46))
    {
      v242 = v45;
      v47 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      *&v278 = v241;
      *v47 = 136317442;
      v48 = NSDecimal.description.getter();
      v50 = sub_100008F6C(v48, v49, &v278);

      *(v47 + 4) = v50;
      *(v47 + 12) = 2080;
      v51 = Data.hexString()();
      v52 = sub_100008F6C(v51._countAndFlagsBits, v51._object, &v278);

      *(v47 + 14) = v52;
      *(v47 + 22) = 2080;
      v53 = SPRTransactionType.description.getter();
      v55 = sub_100008F6C(v53, v54, &v278);

      *(v47 + 24) = v55;
      *(v47 + 32) = 2080;
      v56 = Data.hexString()();
      v57 = sub_100008F6C(v56._countAndFlagsBits, v56._object, &v278);

      *(v47 + 34) = v57;
      *(v47 + 42) = 2080;
      static String.Encoding.ascii.getter();
      countAndFlagsBits = String.init(data:encoding:)();
      if (!object)
      {
        v60 = Data.hexString()();
        object = v60._object;
        countAndFlagsBits = v60._countAndFlagsBits;
      }

      v61 = v276;
      v62 = v250;
      v63 = sub_100008F6C(countAndFlagsBits, object, &v278);

      *(v47 + 44) = v63;
      *(v47 + 52) = 2080;
      v64 = Data.hexString()();
      v65 = sub_100008F6C(v64._countAndFlagsBits, v64._object, &v278);

      *(v47 + 54) = v65;
      *(v47 + 62) = 2080;
      v66 = v265;
      if (v61)
      {
        v67 = v61[2];
        v68 = _swiftEmptyArrayStorage;
        if (v67)
        {
          v282 = _swiftEmptyArrayStorage;
          sub_10004E2DC(0, v67, 0);
          v68 = v282;
          v69 = v61 + 5;
          do
          {
            v70 = *(v69 - 1);
            v71 = *v69;
            sub_1000094F4(v70, *v69);
            v72 = Data.hexString()();
            sub_100009548(v70, v71);
            v282 = v68;
            v74 = v68[2];
            v73 = v68[3];
            if (v74 >= v73 >> 1)
            {
              sub_10004E2DC((v73 > 1), v74 + 1, 1);
              v68 = v282;
            }

            v69 += 2;
            v68[2] = v74 + 1;
            *&v68[2 * v74 + 4] = v72;
            --v67;
          }

          while (v67);
          v66 = v265;
        }

        v282 = v68;
        sub_100004074(&qword_10039E270, &unk_1002C3BE0);
        sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0, &protocol conformance descriptor for [A]);
        v75 = BidirectionalCollection<>.joined(separator:)();
        v77 = v76;

        v62 = v250;
      }

      else
      {
        v77 = 0xE300000000000000;
        v75 = 7104878;
      }

      v78 = sub_100008F6C(v75, v77, &v278);

      *(v47 + 64) = v78;
      *(v47 + 72) = 256;
      *(v47 + 74) = v257 & 1;
      *(v47 + 75) = 256;
      *(v47 + 77) = v66;
      *(v47 + 78) = 2080;
      v79 = [v62 description];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v62;
      v83 = v82;

      v84 = sub_100008F6C(v80, v83, &v278);

      *(v47 + 80) = v84;
      v85 = v242;
      _os_log_impl(&_mh_execute_header, v242, v243, "Sending START TRANSACTION with amount: %s, currencyCode: %s, transactionType: %s, merchantCategoryCode: %s, interfaceDeviceSerial: %s, transactionIdHalf: %s, preferredSchemes: %s, resetTrackError: %hhu, mode: %hhu, using session: %s", v47, 0x58u);
      swift_arrayDestroy();
    }

    else
    {
    }

    a2 = v256;
  }

  v86 = v275;
  v87 = WORD1(v275);
  v88 = v274;
  v89 = HIWORD(v274);
  v90 = HIDWORD(v274);
  v91 = objc_allocWithZone(NSDecimalNumber);
  LODWORD(v278) = v88;
  WORD2(v278) = v90;
  WORD3(v278) = v89;
  *(&v278 + 1) = a2;
  LOWORD(v279) = v86;
  WORD1(v279) = v87;
  v92 = [v91 initWithDecimal:&v278];
  v93 = [v92 integerValue];

  if (v93 >= 0)
  {
    v94 = v93;
  }

  else
  {
    v94 = -v93;
  }

  *&v278 = v94;
  sub_10001A4CC();
  v95 = UnsignedInteger.digitsAsBytes()();
  v97 = v96;
  v98 = Data.toBCD()();
  v100 = v99;
  sub_100009548(v95, v97);
  v101 = v100 >> 62;
  if ((v100 >> 62) > 1)
  {
    if (v101 != 2)
    {
      v95 = 0;
      goto LABEL_37;
    }

    v103 = *(v98 + 16);
    v102 = *(v98 + 24);
    v95 = v102 - v103;
    if (!__OFSUB__(v102, v103))
    {
      goto LABEL_37;
    }

    __break(1u);
  }

  else if (!v101)
  {
    v95 = BYTE6(v100);
    goto LABEL_37;
  }

  if (__OFSUB__(HIDWORD(v98), v98))
  {
    __break(1u);
    goto LABEL_115;
  }

  v95 = HIDWORD(v98) - v98;
LABEL_37:
  if (static TLVTag.TAG_9F02_LENGTH.getter() < v95)
  {
    sub_1000207FC(4000, 0xD00000000000001DLL, 0x800000010034F4E0, 0);
    swift_willThrow();
    v104 = v98;
    v105 = v100;
    return sub_100009548(v104, v105);
  }

  v106 = a17;
  v287 = v98;
  v288 = v100;
  v275 = v98;
  sub_1000094F4(v98, v100);
  v107 = &qword_10039E2E8;
  while (1)
  {
    v108 = v288 >> 62;
    if ((v288 >> 62) > 1)
    {
      if (v108 == 2)
      {
        v110 = *(v287 + 16);
        v111 = *(v287 + 24);
        v109 = v111 - v110;
        if (__OFSUB__(v111, v110))
        {
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }
      }

      else
      {
        v109 = 0;
      }
    }

    else if (v108)
    {
      if (__OFSUB__(HIDWORD(v287), v287))
      {
        goto LABEL_111;
      }

      v109 = HIDWORD(v287) - v287;
    }

    else
    {
      v109 = BYTE6(v288);
    }

    if (v109 >= static TLVTag.TAG_9F02_LENGTH.getter())
    {
      break;
    }

    v112 = sub_100004074(&qword_10039E2E8, &qword_1002C1728);
    v280 = v112;
    v281 = sub_10001A570(&qword_10039E2F0, &qword_10039E2E8, &qword_1002C1728, &protocol conformance descriptor for <A> CollectionOfOne<A>);
    LOBYTE(v278) = 0;
    LOBYTE(v282) = *sub_10000BE18(&v278, v112);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_10000959C(&v278);
  }

  sub_10000BE18(a17, a17[3]);
  v113 = v268;
  sub_100043268(v268);
  v114 = v271;
  v115 = v272;
  if ((*(v271 + 48))(v113, 1, v272) == 1)
  {
    sub_10000BD44(v113, &unk_1003A3BE0, &qword_1002C36F0);
    sub_1000207FC(4054, 0xD00000000000001ELL, 0x80000001003483B0, 0);
    swift_willThrow();
    v116 = v275;
    v117 = v100;
    goto LABEL_54;
  }

  v256 = v100;
  v118 = v264;
  (*(v114 + 32))(v264, v113, v115);
  v119 = [objc_allocWithZone(NSDateFormatter) init];
  v120 = v115;
  v121 = v251;
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v252 + 8))(v121, v253);
  [v119 setLocale:isa];

  v123 = String._bridgeToObjectiveC()();
  [v119 setDateFormat:v123];

  v124 = Date._bridgeToObjectiveC()().super.isa;
  v125 = [v119 stringFromDate:v124];

  v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v128 = v127;

  v285 = sub_100146900(v126, v128);
  v286 = v129;
  v130 = v254;
  sub_100121DBC(&v285);
  if (v130)
  {
    (*(v114 + 8))(v118, v120);
    sub_100009548(v275, v256);
    sub_100009548(v285, v286);

    goto LABEL_58;
  }

  v131 = String._bridgeToObjectiveC()();
  [v119 setDateFormat:v131];

  v132 = Date._bridgeToObjectiveC()().super.isa;
  v133 = [v119 stringFromDate:v132];

  v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v136 = v135;

  v283 = sub_100146900(v134, v136);
  v284 = v137;
  sub_100121DBC(&v283);
  v251 = v119;
  v255 = 0;
  v254 = sub_100004074(&qword_10039E2D8, &qword_1002C3720);
  v139 = *(v273 + 72);
  v274 = (*(v273 + 80) + 32) & ~*(v273 + 80);
  v253 = 8 * v139;
  v250 = 9 * v139;
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_1002C7370;
  v268 = v140;
  static TLVTag.authorizedAmount.getter();
  sub_1000094F4(v287, v288);
  TLV.init(tag:value:)();
  static TLVTag.otherAmount.getter();
  static TLVTag.TAG_9F03_DEFAULT.getter();
  TLV.init(tag:value:)();
  static TLVTag.transactionType.getter();
  sub_100004074(&qword_10039E2E0, &qword_1002C1720);
  v141 = swift_allocObject();
  v252 = xmmword_1002C1660;
  *(v141 + 16) = xmmword_1002C1660;
  *(v141 + 32) = v258;
  sub_10014B8C8(v141);

  TLV.init(tag:value:)();
  static TLVTag.transactionDate.getter();
  v142 = v285;
  v143 = v286;
  sub_1000094F4(v285, v286);
  Data.toBCD()();
  sub_100009548(v142, v143);
  TLV.init(tag:value:)();
  static TLVTag.transactionTime.getter();
  v144 = v283;
  v145 = v284;
  sub_1000094F4(v283, v284);
  Data.toBCD()();
  sub_100009548(v144, v145);
  TLV.init(tag:value:)();
  static TLVTag.transactionCurrencyCode.getter();
  sub_1000094F4(v259, v260);
  TLV.init(tag:value:)();
  static TLVTag.merchantCategoryCode.getter();
  v89 = v249;
  sub_1000094F4(v270, v249);
  TLV.init(tag:value:)();
  static TLVTag.interfaceDeviceSerialNumber.getter();
  sub_1000094F4(v261, v262);
  TLV.init(tag:value:)();
  static TLVTag.readerMetadata.getter();
  v261 = v139;
  *(swift_allocObject() + 16) = v252;
  static TLVTag.readerMetadataTransactionID.getter();
  v86 = v263;
  v95 = v277;
  sub_1000094F4(v263, v277);
  TLV.init(tag:value:)();
  TLV.init(tag:children:)();
  if (qword_10039D4B0 != -1)
  {
LABEL_115:
    swift_once();
  }

  v146 = type metadata accessor for Logger();
  v147 = sub_10000403C(v146, qword_1003A1228);
  v148 = v270;
  sub_1000094F4(v270, v89);
  sub_1000094F4(v86, v95);
  v262 = v147;
  v149 = Logger.logObject.getter();
  v150 = static os_log_type_t.default.getter();
  sub_100009548(v86, v95);
  sub_100009548(v148, v89);
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    v260 = swift_slowAlloc();
    *&v278 = v260;
    *v151 = 136447234;
    swift_beginAccess();
    LODWORD(v259) = v150;
    v152 = v287;
    v153 = v288;
    sub_1000094F4(v287, v288);
    v154 = Data.hexString()();
    sub_100009548(v152, v153);
    v155 = sub_100008F6C(v154._countAndFlagsBits, v154._object, &v278);

    *(v151 + 4) = v155;
    *(v151 + 12) = 2082;
    swift_beginAccess();
    v156 = v285;
    v157 = v286;
    sub_1000094F4(v285, v286);
    v158 = Data.hexString()();
    sub_100009548(v156, v157);
    v159 = sub_100008F6C(v158._countAndFlagsBits, v158._object, &v278);

    *(v151 + 14) = v159;
    *(v151 + 22) = 2082;
    swift_beginAccess();
    v160 = v283;
    v161 = v284;
    sub_1000094F4(v283, v284);
    v162 = Data.hexString()();
    sub_100009548(v160, v161);
    v163 = sub_100008F6C(v162._countAndFlagsBits, v162._object, &v278);

    *(v151 + 24) = v163;
    *(v151 + 32) = 2082;
    v164 = Data.hexString()();
    v165 = sub_100008F6C(v164._countAndFlagsBits, v164._object, &v278);

    *(v151 + 34) = v165;
    *(v151 + 42) = 2082;
    v166 = Data.hexString()();
    v167 = sub_100008F6C(v166._countAndFlagsBits, v166._object, &v278);

    *(v151 + 44) = v167;
    _os_log_impl(&_mh_execute_header, v149, v259, "Start Transaction Tags: amount: %{public}s, date: %{public}s, time: %{public}s, transactionIdHalf: %{public}s, MCC: %{public}s,", v151, 0x34u);
    swift_arrayDestroy();
  }

  v168 = v247;
  v169 = v276;
  if (v276)
  {
    v170 = v276[2];
    if (v170)
    {
      *&v278 = _swiftEmptyArrayStorage;
      sub_10004E380(0, v170, 0);
      v171 = v278;
      v172 = (v273 + 32);
      v173 = v169 + 5;
      v174 = v261;
      do
      {
        sub_1000094F4(*(v173 - 1), *v173);
        static TLVTag.overrideAID.getter();
        TLV.init(tag:value:)();
        *&v278 = v171;
        v176 = *(v171 + 16);
        v175 = *(v171 + 24);
        if (v176 >= v175 >> 1)
        {
          sub_10004E380((v175 > 1), v176 + 1, 1);
          v171 = v278;
        }

        v173 += 2;
        *(v171 + 16) = v176 + 1;
        (*v172)(v171 + v274 + v176 * v174, v168, v266);
        --v170;
      }

      while (v170);
    }

    static TLVTag.preferredSchemes.getter();

    v177 = v245;
    TLV.init(tag:children:)();
    v178 = sub_10004D91C(1, 10, 1, v268);
    *(v178 + 2) = 10;
    (*(v273 + 32))(&v178[v274 + v250], v177, v266);

    v179 = Logger.logObject.getter();
    v180 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v179, v180))
    {
      v181 = v178;
      v182 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      *&v278 = v183;
      *v182 = 136446210;
      v184 = Array.description.getter();
      v186 = v185;

      v187 = sub_100008F6C(v184, v186, &v278);

      *(v182 + 4) = v187;
      _os_log_impl(&_mh_execute_header, v179, v180, "OverrideAID (TLV): %{public}s", v182, 0xCu);
      sub_10000959C(v183);

      v178 = v181;
    }

    else
    {
    }
  }

  else
  {
    v178 = v268;
  }

  v278 = xmmword_1002BDC30;
  v188 = *(v178 + 2);
  if (v188)
  {
    v268 = v178;
    v189 = &v178[v274];
    v190 = *(v273 + 16);
    v273 += 16;
    v277 = v190;
    v191 = (v273 - 8);
    v192 = v246;
    v193 = v266;
    v194 = v261;
    do
    {
      v277(v192, v189, v193);
      v195 = TLV.dataRepresentation.getter();
      v197 = v196;
      Data.append(_:)();
      sub_100009548(v195, v197);
      (*v191)(v192, v193);
      v189 += v194;
      --v188;
    }

    while (v188);

    v88 = *(&v278 + 1);
    v198 = v278;
    v199 = *(&v278 + 1) >> 62;
    if ((*(&v278 + 1) >> 62) <= 1)
    {
      if (!v199)
      {
        LOWORD(v188) = BYTE14(v278);
        goto LABEL_88;
      }

LABEL_85:
      LOWORD(v188) = WORD2(v198) - v198;
      if (!__OFSUB__(HIDWORD(v198), v198))
      {
        goto LABEL_86;
      }

LABEL_117:
      __break(1u);
    }

    if (v199 == 2)
    {
      v201 = *(v278 + 16);
      v200 = *(v278 + 24);
      LOWORD(v188) = v200 - v201;
      if (__OFSUB__(v200, v201))
      {
        __break(1u);
        goto LABEL_85;
      }

LABEL_86:
      sub_1000094F4(v198, v88);
    }

    else
    {
      LOWORD(v188) = 0;
    }
  }

  else
  {

    v198 = 0;
    v88 = 0xC000000000000000;
  }

LABEL_88:
  LOWORD(v278) = 160;
  BYTE2(v278) = v257 & 1;
  BYTE3(v278) = v265;
  WORD2(v278) = v188;
  *(&v278 + 1) = v198;
  v279 = v88;
  LOWORD(v280) = 0;
  sub_10000BC94(&v278, &v282);
  v202 = Logger.logObject.getter();
  v203 = static os_log_type_t.default.getter();
  sub_10000BCF0(&v278);
  if (os_log_type_enabled(v202, v203))
  {
    v204 = swift_slowAlloc();
    v276 = swift_slowAlloc();
    v282 = v276;
    *v204 = 136315138;
    v205 = sub_100170CB0(v278 | (WORD2(v278) << 32), *(&v278 + 1), v279, v280);
    v277 = v88;
    v206 = v198;
    v207 = v205;
    v209 = v208;
    v210 = Data.hexString()();
    v211 = v207;
    v198 = v206;
    sub_100009548(v211, v209);
    v212 = sub_100008F6C(v210._countAndFlagsBits, v210._object, &v282);

    *(v204 + 4) = v212;
    v88 = v277;
    _os_log_impl(&_mh_execute_header, v202, v203, "C-APDU (START TRANSACTION): %s", v204, 0xCu);
    sub_10000959C(v276);
  }

  v213 = v272;
  v214 = v264;
  v215 = sub_100170CB0(v278 | (WORD2(v278) << 32), *(&v278 + 1), v279, v280);
  v217 = v216 >> 62;
  if ((v216 >> 62) <= 1)
  {
    if (!v217)
    {
      v218 = BYTE6(v216);
      sub_100009548(v215, v216);
      v219 = v218;
      goto LABEL_99;
    }

LABEL_97:
    v222 = HIDWORD(v215);
    v223 = v215;
    sub_100009548(v215, v216);
    LODWORD(v219) = v222 - v223;
    if (__OFSUB__(v222, v223))
    {
      __break(1u);
      goto LABEL_117;
    }

    v219 = v219;
    goto LABEL_99;
  }

  if (v217 == 2)
  {
    v221 = *(v215 + 16);
    v220 = *(v215 + 24);
    v215 = sub_100009548(v215, v216);
    v219 = v220 - v221;
    if (__OFSUB__(v220, v221))
    {
      __break(1u);
      goto LABEL_97;
    }

LABEL_99:
    if (v219 >= 129)
    {
      sub_1000207FC(4015, 0xD00000000000001ELL, 0x800000010034F4C0, 0);
      swift_willThrow();

      sub_10000BCF0(&v278);
      sub_100009548(v198, v88);
      sub_100009548(v275, v256);
      (*(v271 + 8))(v214, v213);
      goto LABEL_104;
    }
  }

  else
  {
    sub_100009548(v215, v216);
  }

  sub_1000A0770(v278 | (WORD2(v278) << 32), *(&v278 + 1), v279, v280, 0, &v289);
  v224 = v290;
  if (v290 >> 60 == 15)
  {
    sub_1000207FC(4015, 0xD000000000000010, 0x800000010034F480, 0);
    swift_willThrow();

    sub_10000BCF0(&v278);
    sub_100009548(v198, v88);
    sub_100009548(v275, v256);
    (*(v271 + 8))(v264, v213);
    goto LABEL_104;
  }

  v277 = v198;
  v225 = v289;
  v226 = v291;
  v276 = v292;
  v274 = v293;
  sub_10001A3FC();
  v227 = swift_allocError();
  *v228 = v226;
  v229 = sub_100171840(36864, v227);

  if ((v229 & 1) == 0)
  {
    v232 = swift_allocError();
    *v233 = v226;
    v234 = sub_100171840(25392, v232);

    if (v234)
    {
      sub_10011EFA0();
      sub_1000207FC(4015, 0xD00000000000003BLL, 0x8000000100347070, 0);
      swift_willThrow();

      sub_10000BD44(&v289, &qword_10039E2C0, &unk_1002BFEB0);
      sub_10000BCF0(&v278);
      sub_100009548(v277, v88);
      sub_100009548(v275, v256);
      (*(v271 + 8))(v264, v272);
LABEL_104:
      sub_100009548(v283, v284);
      v116 = v285;
      v117 = v286;
LABEL_54:
      sub_100009548(v116, v117);
LABEL_58:
      v104 = v287;
      v105 = v288;
      return sub_100009548(v104, v105);
    }

    v235 = swift_allocError();
    *v236 = v226;
    v237 = sub_100171840(27648, v235);

    v107 = (v271 + 8);
    v106 = v272;
    v100 = v264;
    if (v237)
    {
      v238 = 0x800000010034F4A0;
      v239 = 0xD00000000000001ELL;
LABEL_113:
      sub_1000207FC(4015, v239, v238, 0);
      swift_willThrow();

      sub_10000BD44(&v289, &qword_10039E2C0, &unk_1002BFEB0);
      sub_10000BCF0(&v278);
      sub_100009548(v277, v88);
      sub_100009548(v275, v256);
      (*v107)(v100, v106);
      goto LABEL_104;
    }

LABEL_112:
    sub_10011EFA0();
    v239 = 0;
    v238 = 0;
    goto LABEL_113;
  }

  sub_100009548(v275, v256);

  sub_100009548(v277, v88);
  sub_10000BCF0(&v278);
  (*(v271 + 8))(v264, v272);
  sub_100009548(v283, v284);
  sub_100009548(v285, v286);
  result = sub_100009548(v287, v288);
  v230 = v244;
  *v244 = v225;
  v230[1] = v224;
  *(v230 + 8) = v226;
  v231 = v274;
  v230[3] = v276;
  v230[4] = v231;
  return result;
}

uint64_t *sub_100121DBC(uint64_t *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      if (!BYTE6(v3))
      {
        return result;
      }

      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (v4 != 2)
  {
    return result;
  }

  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_111;
    }

    v5 = HIDWORD(v2) - v2;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_110;
  }

  if (v5)
  {
LABEL_15:
    v8 = 0;
    v44 = v5;
    v45 = result;
    while (1)
    {
      if (v8 >= v5)
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
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
      }

      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_88;
      }

      v10 = v3 >> 62;
      if ((v3 >> 62) > 1)
      {
        break;
      }

      if (v10)
      {
        if (v8 >= v2 >> 32 || v8 < v2)
        {
          goto LABEL_97;
        }

        v16 = __DataStorage._bytes.getter();
        if (!v16)
        {
          goto LABEL_117;
        }

        v13 = v16;
        v17 = __DataStorage._offset.getter();
        v15 = v8 - v17;
        if (__OFSUB__(v8, v17))
        {
          goto LABEL_99;
        }

LABEL_33:
        v11 = *(v13 + v15);
        goto LABEL_34;
      }

      if (v8 >= BYTE6(v3))
      {
        goto LABEL_95;
      }

      v46 = v2;
      LOWORD(v47) = v3;
      BYTE2(v47) = BYTE2(v3);
      HIBYTE(v47) = BYTE3(v3);
      LOBYTE(v48) = BYTE4(v3);
      HIBYTE(v48) = BYTE5(v3);
      v11 = *(&v46 + v8);
LABEL_34:
      if ((v11 - 58) <= 0xFFFFFFF5)
      {
        sub_1000207FC(4000, 0xD000000000000021, 0x800000010034F500, 0);
        return swift_willThrow();
      }

      v18 = *v1;
      v19 = v1[1];
      v20 = v19 >> 62;
      if ((v19 >> 62) > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_119;
        }

        if (v8 < *(v18 + 16))
        {
          goto LABEL_102;
        }

        if (v8 >= *(v18 + 24))
        {
          goto LABEL_104;
        }

        v22 = __DataStorage._bytes.getter();
        if (!v22)
        {
          goto LABEL_121;
        }

        v23 = v22;
        v24 = __DataStorage._offset.getter();
        v25 = v8 - v24;
        if (__OFSUB__(v8, v24))
        {
          goto LABEL_106;
        }

        goto LABEL_50;
      }

      if (v20)
      {
        if (v8 >= v18 >> 32 || v8 < v18)
        {
          goto LABEL_103;
        }

        v26 = __DataStorage._bytes.getter();
        if (!v26)
        {
          goto LABEL_120;
        }

        v23 = v26;
        v27 = __DataStorage._offset.getter();
        v25 = v8 - v27;
        if (__OFSUB__(v8, v27))
        {
          goto LABEL_105;
        }

LABEL_50:
        v21 = *(v23 + v25);
        goto LABEL_51;
      }

      if (v8 >= BYTE6(v19))
      {
        goto LABEL_101;
      }

      v46 = *v1;
      LOWORD(v47) = v19;
      BYTE2(v47) = BYTE2(v19);
      HIBYTE(v47) = BYTE3(v19);
      LOBYTE(v48) = BYTE4(v19);
      HIBYTE(v48) = BYTE5(v19);
      v21 = *(&v46 + v8);
LABEL_51:
      v28 = v21 - 48;
      if (((v21 - 48) & 0xFFFFFF00) != 0)
      {
        goto LABEL_89;
      }

      v2 = *v1;
      v29 = v1[1];
      if ((v29 >> 62) > 1)
      {
        if (v29 >> 62 != 2)
        {
          goto LABEL_113;
        }

        v30 = v29 & 0x3FFFFFFFFFFFFFFFLL;

        sub_100009548(v2, v29);
        *v1 = xmmword_1002BDC30;
        sub_100009548(0, 0xC000000000000000);
        if (v8 < *(v2 + 16))
        {
          goto LABEL_90;
        }

        if (v8 >= *(v2 + 24))
        {
          goto LABEL_92;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = *(v2 + 16);
          v32 = *(v2 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v31, __DataStorage._offset.getter()))
            {
              goto LABEL_109;
            }

            if (__OFSUB__(v32, v31))
            {
              goto LABEL_107;
            }
          }

          else if (__OFSUB__(v32, v31))
          {
            goto LABEL_107;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v38 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v30 = v38;
          v5 = v44;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = *(v2 + 16);
          v40 = *(v2 + 24);
          type metadata accessor for Data.RangeReference();
          v41 = swift_allocObject();
          *(v41 + 16) = v39;
          *(v41 + 24) = v40;

          v2 = v41;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v42 = __DataStorage._bytes.getter();
        if (!v42)
        {
          goto LABEL_115;
        }

        v35 = v42;
        result = __DataStorage._offset.getter();
        v36 = v8 - result;
        if (__OFSUB__(v8, result))
        {
          goto LABEL_94;
        }

        v37 = 0x8000000000000000;
LABEL_81:
        *(v35 + v36) = v28;
        v3 = v37 | v30;
        v1 = v45;
        *v45 = v2;
        v45[1] = v3;
        ++v8;
        goto LABEL_82;
      }

      if (v29 >> 62 == 1)
      {
        v30 = v29 & 0x3FFFFFFFFFFFFFFFLL;

        sub_100009548(v2, v29);
        *v1 = xmmword_1002BDC30;
        sub_100009548(0, 0xC000000000000000);
        if (v8 >= v2 >> 32 || v8 < v2)
        {
          goto LABEL_91;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v2, __DataStorage._offset.getter()))
          {
            goto LABEL_108;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v33 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v30 = v33;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v34 = __DataStorage._bytes.getter();
        if (!v34)
        {
          goto LABEL_114;
        }

        v35 = v34;
        result = __DataStorage._offset.getter();
        v36 = v8 - result;
        v5 = v44;
        if (__OFSUB__(v8, result))
        {
          goto LABEL_93;
        }

        v37 = 0x4000000000000000;
        goto LABEL_81;
      }

      result = sub_100009548(v2, v29);
      v46 = v2;
      LOWORD(v47) = v29;
      BYTE2(v47) = BYTE2(v29);
      HIBYTE(v47) = BYTE3(v29);
      LOBYTE(v48) = BYTE4(v29);
      HIBYTE(v48) = BYTE5(v29);
      v49 = BYTE6(v29);
      if (v8 >= BYTE6(v29))
      {
        goto LABEL_112;
      }

      *(&v46 + v8) = v28;
      v2 = v46;
      v3 = v43 & 0xF00000000000000 | v47 | ((v48 | (v49 << 16)) << 32);
      v1 = v45;
      *v45 = v46;
      v45[1] = v3;
      ++v8;
      v43 = v3;
      v5 = v44;
LABEL_82:
      if (v9 == v5)
      {
        return result;
      }
    }

    if (v10 != 2)
    {
      goto LABEL_116;
    }

    if (v8 < *(v2 + 16))
    {
      goto LABEL_96;
    }

    if (v8 >= *(v2 + 24))
    {
      goto LABEL_98;
    }

    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      goto LABEL_118;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    v15 = v8 - v14;
    if (__OFSUB__(v8, v14))
    {
      goto LABEL_100;
    }

    goto LABEL_33;
  }

  return result;
}

uint64_t sub_10012253C(uint64_t a1, int a2, int a3)
{
  LODWORD(v107) = a3;
  LODWORD(v106) = a2;
  v118 = type metadata accessor for TLVTag();
  v4 = *(v118 - 8);
  v5 = __chkstk_darwin(v118);
  v7 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v96 - v9;
  __chkstk_darwin(v8);
  v12 = v96 - v11;
  if (qword_10039D4B0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000403C(v13, qword_1003A1228);
  object = v4 + 16;
  v15 = *(v4 + 16);
  v15(v12, a1, v118);
  v17 = Logger.logObject.getter();
  LODWORD(v103) = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v17, v103);
  v101 = v10;
  v100 = v7;
  v104 = v4;
  v99 = v4 + 16;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v102 = v14;
    v96[1] = v20;
    v109 = v20;
    *v19 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v21 = _typeName(_:qualified:)();
    v23 = sub_100008F6C(v21, v22, &v109);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1002C1790;
    v25 = a1;
    v26 = v118;
    *(v24 + 56) = v118;
    v27 = sub_10000BE5C((v24 + 32));
    v15(v27, v12, v26);
    *(v24 + 88) = &type metadata for UInt8;
    *(v24 + 64) = v106;
    *(v24 + 120) = &type metadata for UInt8;
    *(v24 + 96) = v107;
    object = showFunction(signature:_:)(0xD000000000000014, 0x800000010034F2A0, v24);
    v29 = v28;
    v30 = v104;

    v31 = v26;
    a1 = v25;
    v98 = *(v30 + 8);
    v98(v12, v31);
    v32 = sub_100008F6C(object, v29, &v109);

    *(v19 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v17, v103, "%s.%s", v19, 0x16u);
    swift_arrayDestroy();
    v14 = v102;
  }

  else
  {

    v98 = *(v4 + 8);
    v98(v12, v118);
  }

  v33 = TLVTag.dataRepresentation.getter();
  v35 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    if (v35 != 2)
    {
LABEL_16:
      v36 = 0;
      goto LABEL_17;
    }

    v38 = *(v33 + 16);
    v37 = *(v33 + 24);
    v39 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (!v39)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v35)
  {
    v36 = BYTE6(v34);
    goto LABEL_17;
  }

  v36 = WORD2(v33) - v33;
  if (__OFSUB__(HIDWORD(v33), v33))
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  LOWORD(v109) = 16800;
  BYTE2(v109) = v106;
  BYTE3(v109) = v107;
  WORD2(v109) = v36;
  v110 = v33;
  v111 = v34;
  v112 = 0;
  sub_10000BC94(&v109, v108);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v109);
  v42 = os_log_type_enabled(v40, v41);
  v97 = v15;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v108[0] = v107;
    *v43 = 136446210;
    v44 = sub_100170F04(v109 | (WORD2(v109) << 32), v110, v111, v112);
    v46 = v45;
    v47 = Data.hexString()();
    object = v47._object;
    sub_100009548(v44, v46);
    v48 = sub_100008F6C(v47._countAndFlagsBits, v47._object, v108);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v40, v41, "C-APDU (GET TAG LIST): %{public}s", v43, 0xCu);
    sub_10000959C(v107);
  }

  sub_1000A0770(v109 | (WORD2(v109) << 32), v110, v111, v112, 1, &v113);
  v49 = v114;
  if (v114 >> 60 == 15)
  {
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "no response from getTagList", v52, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v53 = 0;
    swift_willThrow();
    goto LABEL_26;
  }

  v54 = v116;
  v55 = v117;
  v56 = v115;
  v107 = v113;
  sub_1000094F4(v113, v114);
  sub_1000094F4(v54, v55);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();
  sub_10000BD44(&v113, &qword_10039E2C0, &unk_1002BFEB0);
  v59 = os_log_type_enabled(v57, v58);
  v105 = v55;
  v106 = v54;
  if (!v59)
  {

    object = v56;
    if (v56 != 36864)
    {
      goto LABEL_25;
    }

LABEL_28:
    v71 = v101;
    v72 = a1;
    v73 = v118;
    v97(v101, v72, v118);
    v74 = v100;
    static TLVTag.transactionResultData.getter();
    sub_100138C60(&qword_10039E260, &type metadata accessor for TLVTag, &protocol conformance descriptor for TLVTag);
    v75 = dispatch thunk of static Equatable.== infix(_:_:)();
    v76 = v98;
    v98(v74, v73);
    if (v75)
    {
      v76(v71, v118);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      v79 = os_log_type_enabled(v77, v78);
      object = v107;
      if (!v79)
      {
LABEL_33:
        sub_10000BCF0(&v109);

LABEL_38:
        sub_1000094F4(object, v49);
        sub_10000BD44(&v113, &qword_10039E2C0, &unk_1002BFEB0);
        return object;
      }

      v80 = swift_slowAlloc();
      *v80 = 0;
      v81 = "Received DF81FE Transaction Result Data aka generalCardData";
    }

    else
    {
      static TLVTag.trxCipherAndKeyBlobs.getter();
      v82 = v118;
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v76(v74, v82);
      if (v83)
      {
        v76(v71, v118);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "Received DF81FF Transaction Cipher and Key Blob", v86, 2u);
        }

        sub_10000BCF0(&v109);

        object = v107;
        goto LABEL_38;
      }

      static TLVTag.analyticsData.getter();
      v88 = v118;
      v89 = dispatch thunk of static Equatable.== infix(_:_:)();
      v76(v74, v88);
      v76(v71, v88);
      if ((v89 & 1) == 0)
      {
        object = v107;
        sub_1000094F4(v107, v49);
        sub_1000094F4(v106, v105);
        v77 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();
        sub_10000BD44(&v113, &qword_10039E2C0, &unk_1002BFEB0);
        if (!os_log_type_enabled(v77, v91))
        {
          goto LABEL_33;
        }

        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v108[0] = v93;
        *v92 = 136315138;
        v94 = Data.hexString()();
        v95 = sub_100008F6C(v94._countAndFlagsBits, v94._object, v108);

        *(v92 + 4) = v95;
        _os_log_impl(&_mh_execute_header, v77, v91, "Received Tag List: %s", v92, 0xCu);
        sub_10000959C(v93);

        goto LABEL_32;
      }

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      v90 = os_log_type_enabled(v77, v78);
      object = v107;
      if (!v90)
      {
        goto LABEL_33;
      }

      v80 = swift_slowAlloc();
      *v80 = 0;
      v81 = "Received DF81FD Analytics Data";
    }

    _os_log_impl(&_mh_execute_header, v77, v78, v81, v80, 2u);
LABEL_32:

    goto LABEL_33;
  }

  v60 = swift_slowAlloc();
  v103 = v49;
  v61 = v60;
  v62 = swift_slowAlloc();
  v102 = v14;
  v108[0] = v62;
  *v61 = 136315394;
  v63 = Data.description.getter();
  v65 = sub_100008F6C(v63, v64, v108);

  *(v61 + 4) = v65;
  *(v61 + 12) = 2082;
  object = v56;
  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1002C1660;
  *(v66 + 56) = &type metadata for UInt16;
  *(v66 + 64) = &protocol witness table for UInt16;
  *(v66 + 32) = v56;
  v67 = String.init(format:_:)();
  v69 = sub_100008F6C(v67, v68, v108);

  *(v61 + 14) = v69;
  _os_log_impl(&_mh_execute_header, v57, v58, "R-APDU: %s, sw: %{public}s", v61, 0x16u);
  swift_arrayDestroy();

  v49 = v103;

  if (v56 == 36864)
  {
    goto LABEL_28;
  }

LABEL_25:
  sub_10001A3FC();
  swift_allocError();
  *v70 = object;
  swift_willThrow();
  sub_10000BD44(&v113, &qword_10039E2C0, &unk_1002BFEB0);
LABEL_26:
  sub_10000BCF0(&v109);
  return object;
}

void sub_10012316C()
{
  if (qword_10039D4B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A1228);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v4 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v5 = _typeName(_:qualified:)();
    v7 = sub_100008F6C(v5, v6, &v41);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0xD000000000000013, 0x800000010034F280, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, &v41);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  LODWORD(v41) = 1952;
  WORD2(v41) = 0;
  v42 = xmmword_1002BDC30;
  v43 = 0;
  sub_10000BC94(&v41, v40);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v41);
  v13 = os_log_type_enabled(v11, v12);
  v46 = v0;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40[0] = v15;
    *v14 = 136315138;
    v16 = sub_100170CB0(v41 | (WORD2(v41) << 32), v42, *(&v42 + 1), v43);
    v18 = v17;
    v19 = Data.hexString()();
    sub_100009548(v16, v18);
    v20 = sub_100008F6C(v19._countAndFlagsBits, v19._object, v40);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "C-APDU (GET PAYMENT APP TYPE): %s", v14, 0xCu);
    sub_10000959C(v15);
  }

  sub_1000A0770(v41 | (WORD2(v41) << 32), v42, *(&v42 + 1), v43, 0, v44);
  v21 = v44[0];
  v22 = v44[1];
  v23 = v45;
  v24 = Logger.logObject.getter();
  if (v22 >> 60 == 15)
  {
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no response for getPaymentAppType", v26, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    goto LABEL_27;
  }

  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40[0] = v30;
    *v29 = 136315138;
    v31 = Data.hexString()();
    v32 = sub_100008F6C(v31._countAndFlagsBits, v31._object, v40);

    *(v29 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v24, v28, "R-APDU: %s", v29, 0xCu);
    sub_10000959C(v30);
  }

  if (v23 != 36864)
  {
    sub_10001A3FC();
    swift_allocError();
    *v34 = v23;
LABEL_26:
    swift_willThrow();
    sub_10000BD44(v44, &qword_10039E2C0, &unk_1002BFEB0);
LABEL_27:
    sub_10000BCF0(&v41);
    return;
  }

  v33 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v33 != 2)
    {
      goto LABEL_25;
    }

    v36 = *(v21 + 16);
    v35 = *(v21 + 24);
    v37 = __OFSUB__(v35, v36);
    v38 = v35 - v36;
    if (!v37)
    {
      if (v38 >= 1)
      {
        goto LABEL_22;
      }

LABEL_25:
      sub_10001A3FC();
      swift_allocError();
      *v39 = 1;
      goto LABEL_26;
    }

    __break(1u);
  }

  else
  {
    if (!v33)
    {
      if (!BYTE6(v22))
      {
        goto LABEL_25;
      }

LABEL_22:
      sub_10000BCF0(&v41);
      sub_1000094F4(v21, v22);
      sub_10000BD44(v44, &qword_10039E2C0, &unk_1002BFEB0);
      return;
    }

    if (!__OFSUB__(HIDWORD(v21), v21))
    {
      if (HIDWORD(v21) - v21 >= 1)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
}

void sub_100123738()
{
  if (qword_10039D4B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A1228);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v3 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v4 = _typeName(_:qualified:)();
    v6 = sub_100008F6C(v4, v5, &v51);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034F590, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, &v51);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v47 = 928;
  v48 = 0;
  v49 = xmmword_1002BDC30;
  v50 = 0;
  sub_10000BC94(&v47, &v51);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v47);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v51 = v13;
    *v12 = 136315138;
    v14 = sub_100170CB0(v47 | (v48 << 32), v49, *(&v49 + 1), v50);
    v16 = v15;
    v17 = Data.hexString()();
    sub_100009548(v14, v16);
    v18 = sub_100008F6C(v17._countAndFlagsBits, v17._object, &v51);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "C-APDU (CLEAR TRX): %s", v12, 0xCu);
    sub_10000959C(v13);
  }

  sub_1000A0770(v47 | (v48 << 32), v49, *(&v49 + 1), v50, 0, &v51);
  v19 = v52;
  if (v52 >> 60 != 15)
  {
    v23 = v54;
    v24 = v55;
    v25 = v51;
    v26 = v53;
    sub_1000094F4(v51, v52);
    sub_1000094F4(v23, v24);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    sub_10000BD44(&v51, &qword_10039E2C0, &unk_1002BFEB0);
    if (os_log_type_enabled(v27, v28))
    {
      v45 = v26;
      v29 = swift_slowAlloc();
      v44 = v25;
      v30 = swift_slowAlloc();
      v46 = v30;
      *v29 = 136315138;
      v31 = Data.hexString()();
      v32 = sub_100008F6C(v31._countAndFlagsBits, v31._object, &v46);

      *(v29 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "R-APDU: %s", v29, 0xCu);
      sub_10000959C(v30);
      v25 = v44;

      v26 = v45;
    }

    sub_10001A3FC();
    v33 = swift_allocError();
    *v34 = v26;
    v35 = sub_100171840(36864, v33);

    if (v35)
    {
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "clear transaction success", v38, 2u);
LABEL_18:
      }
    }

    else
    {
      sub_1000094F4(v25, v19);
      sub_1000094F4(v23, v24);
      v36 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      sub_10000BD44(&v51, &qword_10039E2C0, &unk_1002BFEB0);
      if (os_log_type_enabled(v36, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        swift_allocError();
        *v42 = v26;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v43;
        *v41 = v43;
        _os_log_impl(&_mh_execute_header, v36, v39, "Error (%@) on CLEAR TRANSACTION command", v40, 0xCu);
        sub_10000BD44(v41, &unk_10039E220, &qword_1002C3D60);

        goto LABEL_18;
      }
    }

    sub_10000BCF0(&v47);

    sub_10000BD44(&v51, &qword_10039E2C0, &unk_1002BFEB0);
    return;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Error on CLEAR TRANSACTION command", v22, 2u);
  }

  sub_10000BCF0(&v47);
}

unint64_t sub_100123E34(int a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t *a6)
{
  v12 = type metadata accessor for TLVTag();
  __chkstk_darwin(v12 - 8);
  v141 = &v133[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for TLV();
  v142 = *(v14 - 8);
  v143 = v14;
  __chkstk_darwin(v14);
  v140 = &v133[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10039D4B0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000403C(v16, qword_1003A1228);
  sub_1000094F4(a2, a3);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  sub_100009548(a2, a3);
  v20 = os_log_type_enabled(v18, v19);
  v139 = a6;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v145 = v17;
    v138 = v22;
    v147 = v22;
    *v21 = 136315394;
    sub_10000411C(0, a4, a5);
    v23 = _typeName(_:qualified:)();
    v25 = sub_100008F6C(v23, v24, &v147);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1002C1670;
    *(v26 + 56) = &type metadata for UInt8;
    *(v26 + 32) = a1;
    v27 = Data.hexString()();
    *(v26 + 88) = &type metadata for String;
    *(v26 + 64) = v27;
    v28 = showFunction(signature:_:)(0xD000000000000032, 0x800000010034F240, v26);
    v29 = a3;
    v30 = a2;
    v31 = a1;
    v33 = v32;

    a4 = sub_100008F6C(v28, v33, &v147);
    a1 = v31;
    a2 = v30;
    a3 = v29;

    *(v21 + 14) = a4;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s.%s", v21, 0x16u);
    swift_arrayDestroy();
    v17 = v145;
  }

  v34 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v34 != 2)
    {
      goto LABEL_15;
    }

    v37 = *(a2 + 16);
    v36 = *(a2 + 24);
    v38 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (!v38)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v34)
  {
    v35 = BYTE6(a3);
    goto LABEL_14;
  }

  LODWORD(v35) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
    goto LABEL_93;
  }

  v35 = v35;
LABEL_14:
  if ((v35 - 31) < 0xFFFFFFFFFFFFFFE2)
  {
LABEL_15:
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "wrong length for kernelIdentityKeyIdentifier";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v43 = objc_opt_self();
  if (![v43 isFeatureAppleSSESupported])
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "SSE feature not supported";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v44 = objc_opt_self();
  v147 = 0;
  v45 = [v44 embeddedSecureElementWithError:&v147];
  if (!v45)
  {
    v54 = v147;
    _convertNSErrorToError(_:)();

    goto LABEL_27;
  }

  v46 = v45;
  v47 = v147;
  v48 = [v46 serialNumber];

  if (!v48)
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_26;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "no seid";
    goto LABEL_25;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4 = v49;

  v50 = Data.init(hexString:)();
  if (v51 >> 60 != 15)
  {
    v137 = v50;
    v138 = v51;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v56 = [v43 getSignedDeviceData:isa];

    if (!v56)
    {
LABEL_47:
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v82, v83, "failed to get signed device data or wrong length", v84, 2u);
      }

      sub_10001A3FC();
      swift_allocError();
      *v85 = 0;
      swift_willThrow();
LABEL_50:
      sub_10001A074(v137, v138);
      return a4;
    }

    v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v58;

    v59 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v59 != 2)
      {
LABEL_46:
        sub_100009548(v57, a4);
        goto LABEL_47;
      }

      v62 = *(v57 + 16);
      v61 = *(v57 + 24);
      v38 = __OFSUB__(v61, v62);
      v60 = v61 - v62;
      if (!v38)
      {
LABEL_42:
        if (v60 == 45)
        {
          static TLVTag.kernelIdentityKey.getter();
          sub_1000094F4(a2, a3);
          v136 = a4;
          v63 = v57;
          v64 = v140;
          TLV.init(tag:value:)();
          v65 = TLV.dataRepresentation.getter();
          v135 = v66;
          v67 = v143;
          v68 = *(v142 + 8);
          v68(v64, v143);
          static TLVTag.sepData.getter();
          sub_1000094F4(v63, v136);
          v142 = v63;
          v69 = v65;
          TLV.init(tag:value:)();
          v70 = TLV.dataRepresentation.getter();
          v72 = v71;
          v68(v64, v67);
          v73 = v135;
          v152 = v69;
          v153 = v135;
          v150 = &type metadata for Data;
          v151 = &protocol witness table for Data;
          v147 = v70;
          v148 = v72;
          v74 = sub_10000BE18(&v147, &type metadata for Data);
          v75 = *v74;
          v76 = v74[1];
          sub_1000094F4(v69, v73);
          v141 = v70;
          v143 = v72;
          sub_1000094F4(v70, v72);
          sub_1000A1C34(v75, v76, &v152, v77);
          sub_10000959C(&v147);
          v78 = v152;
          v79 = v153;
          v80 = v153 >> 62;
          if ((v153 >> 62) > 1)
          {
            if (v80 != 2)
            {
LABEL_58:
              v81 = 0;
              goto LABEL_59;
            }

            v87 = *(v152 + 16);
            v86 = *(v152 + 24);
            v38 = __OFSUB__(v86, v87);
            v81 = v86 - v87;
            if (!v38)
            {
              goto LABEL_59;
            }

            __break(1u);
          }

          else if (!v80)
          {
            v81 = BYTE6(v153);
LABEL_59:
            v144 = v69;
            LOWORD(v147) = -12672;
            WORD1(v147) = a1;
            WORD2(v147) = v81;
            v148 = v78;
            v149 = v79;
            LOWORD(v150) = 0;
            sub_10000BC94(&v147, v146);
            v145 = v17;
            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.info.getter();
            sub_10000BCF0(&v147);
            v90 = os_log_type_enabled(v88, v89);
            v134 = a1;
            if (v90)
            {
              v91 = swift_slowAlloc();
              v146[0] = swift_slowAlloc();
              *v91 = 136315394;
              if (a1)
              {
                v92 = 542001488;
              }

              else
              {
                v92 = 0;
              }

              if (a1)
              {
                v93 = 0xE400000000000000;
              }

              else
              {
                v93 = 0xE000000000000000;
              }

              v94 = sub_100008F6C(v92, v93, v146);

              *(v91 + 4) = v94;
              *(v91 + 12) = 2080;
              v95 = sub_100170F04(v147 | (WORD2(v147) << 32), v148, v149, v150);
              v97 = v96;
              v98 = Data.hexString()();
              sub_100009548(v95, v97);
              v99 = sub_100008F6C(v98._countAndFlagsBits, v98._object, v146);

              *(v91 + 14) = v99;
              _os_log_impl(&_mh_execute_header, v88, v89, "C-APDU (GET %sKEY ATTESTATION): %s", v91, 0x16u);
              swift_arrayDestroy();
            }

            (v139)(v154, v147 | (WORD2(v147) << 32), v148, v149, v150, 1);
            a4 = v154[0];
            v100 = v154[1];
            v101 = v155;
            v102 = Logger.logObject.getter();
            if (v100 >> 60 == 15)
            {
              v103 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v102, v103))
              {
                v104 = swift_slowAlloc();
                v105 = swift_slowAlloc();
                v146[0] = v105;
                *v104 = 136315138;
                if (v134)
                {
                  v106 = 542001488;
                }

                else
                {
                  v106 = 0;
                }

                if (v134)
                {
                  v107 = 0xE400000000000000;
                }

                else
                {
                  v107 = 0xE000000000000000;
                }

                v108 = sub_100008F6C(v106, v107, v146);

                *(v104 + 4) = v108;
                _os_log_impl(&_mh_execute_header, v102, v103, "failed to get %skey attestation", v104, 0xCu);
                sub_10000959C(v105);
              }

              v109 = v136;
              v110 = v142;
              a4 = v135;
              v111 = v144;
              sub_10001A3FC();
              swift_allocError();
              *v112 = 0;
              swift_willThrow();
              sub_10000BCF0(&v147);
              sub_100009548(v141, v143);
              sub_100009548(v111, a4);
              v113 = v110;
            }

            else
            {
              v114 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v102, v114))
              {
                v115 = swift_slowAlloc();
                v139 = swift_slowAlloc();
                v140 = swift_slowAlloc();
                v146[0] = v140;
                *v115 = 136315394;
                v116 = Data.description.getter();
                v118 = sub_100008F6C(v116, v117, v146);

                *(v115 + 4) = v118;
                *(v115 + 12) = 2112;
                v119 = v101;
                sub_10001A3FC();
                swift_allocError();
                *v120 = v101;
                v121 = _swift_stdlib_bridgeErrorToNSError();
                *(v115 + 14) = v121;
                v122 = v139;
                *v139 = v121;
                _os_log_impl(&_mh_execute_header, v102, v114, "R-APDU: %s, sw: %@", v115, 0x16u);
                sub_10000BD44(v122, &unk_10039E220, &qword_1002C3D60);

                sub_10000959C(v140);
              }

              else
              {

                v119 = v101;
              }

              v123 = v134;
              v124 = v144;
              if (v119 == 36864)
              {
                sub_10001A074(v137, v138);
                sub_100009548(v142, v136);
                sub_10000BCF0(&v147);
                sub_100009548(v141, v143);
                sub_100009548(v124, v135);
                sub_1000094F4(a4, v100);
                sub_10000BD44(v154, &qword_10039E2C0, &unk_1002BFEB0);
                return a4;
              }

              v125 = Logger.logObject.getter();
              v126 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v125, v126))
              {
                v127 = swift_slowAlloc();
                a4 = swift_slowAlloc();
                v146[0] = a4;
                *v127 = 136315138;
                if (v123)
                {
                  v128 = 542001488;
                }

                else
                {
                  v128 = 0;
                }

                if (v123)
                {
                  v129 = 0xE400000000000000;
                }

                else
                {
                  v129 = 0xE000000000000000;
                }

                v130 = sub_100008F6C(v128, v129, v146);

                *(v127 + 4) = v130;
                _os_log_impl(&_mh_execute_header, v125, v126, "failed to get %skey attestation", v127, 0xCu);
                sub_10000959C(a4);
              }

              v109 = v136;
              v131 = v135;
              sub_10001A3FC();
              swift_allocError();
              *v132 = v119;
              swift_willThrow();
              sub_10000BD44(v154, &qword_10039E2C0, &unk_1002BFEB0);
              sub_10000BCF0(&v147);
              sub_100009548(v141, v143);
              sub_100009548(v124, v131);
              v113 = v142;
            }

            sub_100009548(v113, v109);
            goto LABEL_50;
          }

          v81 = WORD2(v78) - v78;
          if (!__OFSUB__(HIDWORD(v78), v78))
          {
            goto LABEL_59;
          }

          __break(1u);
          goto LABEL_58;
        }

        goto LABEL_46;
      }

      __break(1u);
    }

    else if (!v59)
    {
      v60 = BYTE6(a4);
      goto LABEL_42;
    }

    LODWORD(v60) = HIDWORD(v57) - v57;
    if (!__OFSUB__(HIDWORD(v57), v57))
    {
      v60 = v60;
      goto LABEL_42;
    }

LABEL_93:
    __break(1u);
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "failed to get SEID";
    goto LABEL_25;
  }

LABEL_26:

  sub_10001A3FC();
  swift_allocError();
  *v52 = 0;
LABEL_27:
  swift_willThrow();
  return a4;
}

uint8_t *sub_100124DB4()
{
  v0 = type metadata accessor for TLVTag();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A1228);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = v0;
    v8 = v7;
    v17 = swift_slowAlloc();
    v19 = v17;
    *v8 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v19);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0x61484B454B746567, 0xEE00292873656873, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v19);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();

    v0 = v18;
  }

  static TLVTag.transactionAndPINKEKHashes.getter();
  v15 = sub_10011E694(v3, sub_1000A0770);
  (*(v1 + 8))(v3, v0);
  return v15;
}

uint64_t sub_100125074()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3A90);
  sub_10000403C(v0, qword_1003A3A90);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.reader.getter();
}

uint64_t sub_1001250E0()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_1003A3AA8);
  v1 = sub_10000403C(v0, qword_1003A3AA8);
  if (qword_10039D730 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6EA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10012540C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v10 = v9;
  v164 = a8;
  v155 = a6;
  v166 = a2;
  v165 = a9;
  v161 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v161);
  *&v160 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v159);
  v158 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v18 = *(v157 - 1);
  __chkstk_darwin(v157);
  v156 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v20 - 8);
  v154 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_lockedState;
  sub_100004074(&unk_1003A3C60, &qword_1002C8308);
  v23 = swift_allocObject();
  *(v23 + 20) = 0;
  *(v23 + 16) = 0;
  v144 = v22;
  *&v10[v22] = v23;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation__isFinished] = 0;
  v24 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
  v25 = sub_1000207FC(4998, 0, 0, 0);
  v145 = v24;
  *&v10[v24] = v25;
  v146 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse] = _swiftEmptyArrayStorage;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_skipLoyalty] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming] = 0;
  v26 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readResult;
  v27 = sub_100182BA0(_swiftEmptyArrayStorage);
  v147 = v26;
  *&v10[v26] = v27;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotRemoveCard] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_cardTearSent] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotSeePhone] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerModeForPaymentStarted] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackTransactionStarted] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackFlowEnabled] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readCompleteSuccessSent] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_lastTransactionOutcomeReceived] = 0;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus] = 256;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_pollingTracker] = 0;
  v139 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession] = a1;
  v136 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig] = v166;
  v137 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback] = a3;
  v143 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor;
  v151 = a4;
  sub_10000CCE4(a4, &v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor]);
  v140 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics] = a5;
  v135 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_operationQueue;
  v28 = v155;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_operationQueue] = v155;
  v142 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_managedData;
  v150 = a7;
  sub_10000CCE4(a7, &v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_managedData]);
  v141 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureElement;
  sub_10000CCE4(v164, &v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureElement]);
  v138 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureTimeKeeper;
  sub_10000CCE4(v165, &v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureTimeKeeper]);
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount] = 0;
  v29 = sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  v152 = "begin vas polling";
  v153 = v29;
  v163 = a1;

  v149 = a3;

  v162 = a5;

  v155 = v28;
  static DispatchQoS.userInteractive.getter();
  (*(v18 + 104))(v156, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v157);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100138C60(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  v157 = &protocol conformance descriptor for [A];
  sub_10001A570(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v159 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue] = v30;
  v171 = nullsub_1;
  v172 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  v31 = v166;
  aBlock[2] = sub_100003974;
  v170 = &unk_1003848F8;
  _Block_copy(aBlock);
  v168 = _swiftEmptyArrayStorage;
  sub_100138C60(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, v157);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v32 = DispatchWorkItem.init(flags:block:)();
  v33 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_timeoutWorkItem;
  v161 = v10;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_timeoutWorkItem] = v32;
  if (*(v31 + 16) == 1)
  {
    goto LABEL_2;
  }

  sub_100004074(&qword_1003A5D40, &qword_1002C1740);
  v35 = swift_allocObject();
  v160 = xmmword_1002C1660;
  *(v35 + 16) = xmmword_1002C1660;
  if (qword_10039D3C8 != -1)
  {
    swift_once();
  }

  v36 = *(&xmmword_1003A6AA0 + 1);
  *(v35 + 32) = xmmword_1003A6AA0;
  *(v35 + 40) = v36;

  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[0] = 0;
  v38 = v163;
  v39 = [v163 selectApplets:isa error:aBlock];

  if (!v39)
  {
    v52 = aBlock[0];
    v53 = _convertNSErrorToError(_:)();

    swift_willThrow();
    aBlock[0] = v53;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_23:

      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_10000403C(v69, qword_1003A3A90);
      swift_errorRetain();
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v158 = v33;
        v73 = v72;
        v74 = swift_slowAlloc();
        aBlock[0] = v74;
        *v73 = 136315138;
        v168 = v53;
        swift_errorRetain();
        v75 = String.init<A>(describing:)();
        v77 = sub_100008F6C(v75, v76, aBlock);

        *(v73 + 4) = v77;
        v38 = v163;
        _os_log_impl(&_mh_execute_header, v70, v71, "Error from selectApplets: %s", v73, 0xCu);
        sub_10000959C(v74);
      }

      v68 = v145;
      sub_1000207FC(4037, 0, 0, 0);
      swift_willThrow();

      goto LABEL_37;
    }

    v54 = v33;
    *&v160 = v168;
    v55 = [v168 domain];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    if (v56 == String.init(cString:)() && v58 == v59)
    {

      v33 = v54;
    }

    else
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v33 = v54;
      if ((v60 & 1) == 0)
      {
LABEL_22:

        v38 = v163;
        goto LABEL_23;
      }
    }

    v61 = [v160 code];
    if ((v61 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v61))
    {
      if (v61 == 64)
      {

        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        sub_10000403C(v62, qword_1003A3A90);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();
        v65 = os_log_type_enabled(v63, v64);
        v66 = v163;
        if (v65)
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&_mh_execute_header, v63, v64, "Cannot select pay applet. Reader temporarily unavailable. May be from prohibit timer.", v67, 2u);
        }

        sub_1000207FC(4036, 0, 0, 0);
        swift_willThrow();

        sub_10000959C(v165);
        sub_10000959C(v164);
        sub_10000959C(v150);
        sub_10000959C(v151);

        v68 = v145;
        goto LABEL_38;
      }

      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_59;
  }

  v40 = aBlock[0];
  v41 = v148;
  v42 = sub_10011DBE4(&unk_10039E250, NFSecureElementReaderSession_ptr, sub_1000A0770);
  v44 = v41;
  if (v41)
  {
LABEL_32:
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_10000403C(v82, qword_1003A3A90);
    swift_errorRetain();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *&v160 = swift_slowAlloc();
      aBlock[0] = v160;
      *v85 = 136315138;
      v168 = v44;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v86 = String.init<A>(describing:)();
      v88 = sub_100008F6C(v86, v87, aBlock);

      *(v85 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v83, v84, "Error on getAppletVersion: %s", v85, 0xCu);
      sub_10000959C(v160);
    }

    v68 = v145;
    v89 = v163;
    sub_1000207FC(4041, 0, 0, 0);
    swift_willThrow();

LABEL_37:

    sub_10000959C(v165);
    sub_10000959C(v164);
    sub_10000959C(v150);
    sub_10000959C(v151);
    goto LABEL_38;
  }

  v45 = v42;
  v46 = v43;
  v158 = v33;
  v157 = sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
  inited = swift_initStackObject();
  *(inited + 16) = v160;
  *(inited + 32) = 5;
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v45;
  *(inited + 48) = v46;

  sub_10018399C(inited);
  swift_setDeallocating();
  v48 = sub_10000BD44(inited + 32, &qword_10039EC60, &qword_1002C1F80);
  v49 = *(v162 + 56);
  __chkstk_darwin(v48);
  os_unfair_lock_lock((v49 + 32));
  sub_100117CD8((v49 + 16));
  os_unfair_lock_unlock((v49 + 32));

  v50 = sub_1001380E4(v45, v46);

  v51 = sub_1001385A8(v50);

  if (!v51)
  {
    if (qword_10039D628 == -1)
    {
LABEL_29:
      v78 = type metadata accessor for Logger();
      sub_10000403C(v78, qword_1003A3A90);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v79, v80, "applet version not acceptable", v81, 2u);
      }

      v44 = sub_1000207FC(4041, 0, 0, 0);
      swift_willThrow();
      goto LABEL_32;
    }

LABEL_59:
    swift_once();
    goto LABEL_29;
  }

  v91 = sub_10011D610(&unk_10039E250, NFSecureElementReaderSession_ptr, sub_1000A0770);
  v93 = v92;
  v94 = v166;
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  v96 = sub_10000403C(v95, qword_1003A3A90);

  v156 = v96;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = v91;
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    aBlock[0] = v101;
    *v100 = 136446210;
    *(v100 + 4) = sub_100008F6C(v99, v93, aBlock);
    _os_log_impl(&_mh_execute_header, v97, v98, "GlobalId: %{public}s", v100, 0xCu);
    sub_10000959C(v101);
    v94 = v166;

    v91 = v99;
  }

  v102 = swift_initStackObject();
  *(v102 + 16) = v160;
  *(v102 + 32) = 6;
  v103 = v102 + 32;
  *(v102 + 64) = &type metadata for String;
  *(v102 + 40) = v91;
  *(v102 + 48) = v93;
  sub_10018399C(v102);
  swift_setDeallocating();
  v104 = sub_10000BD44(v103, &qword_10039EC60, &qword_1002C1F80);
  v105 = *(v162 + 56);
  __chkstk_darwin(v104);
  os_unfair_lock_lock((v105 + 32));
  sub_100117CD8((v105 + 16));
  os_unfair_lock_unlock((v105 + 32));

  v106 = *(v94 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_profileID + 8);
  v107 = v165;
  v108 = v163;
  if (!v106)
  {
    goto LABEL_50;
  }

  v109 = *(v94 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_profileID);

  if ((sub_10011F680(v109, v106, &unk_10039E250, NFSecureElementReaderSession_ptr, sub_1000A0770) & 1) == 0)
  {

LABEL_50:
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&_mh_execute_header, v115, v116, "activateProfile Error", v117, 2u);
      v107 = v165;
    }

    sub_1000207FC(4039, 0, 0, 0);
    swift_willThrow();

    sub_10000959C(v107);
    sub_10000959C(v164);
    sub_10000959C(v150);
    sub_10000959C(v151);
    v68 = v145;
    goto LABEL_38;
  }

  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();

  v112 = os_log_type_enabled(v110, v111);
  v154 = 0;
  if (v112)
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    aBlock[0] = v114;
    *v113 = 136446210;
    *(v113 + 4) = sub_100008F6C(v109, v106, aBlock);
    _os_log_impl(&_mh_execute_header, v110, v111, "ProfileId activated: %{public}s", v113, 0xCu);
    sub_10000959C(v114);
  }

  if (*(v94 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_isSAF) == 1)
  {
    sub_100028230(v109, v106, 41);

    v170 = &type metadata for Bool;
    LOBYTE(aBlock[0]) = 1;
    swift_beginAccess();
    sub_10002CFD4(aBlock, 0x4641537369, 0xE500000000000000);
    swift_endAccess();
  }

  else
  {
    sub_100028230(v109, v106, 40);
  }

  LODWORD(v148) = *(v94 + 48);
  v118 = *(v94 + 64);
  *&v160 = *(v94 + 56);
  v157 = v118;
  v119 = *(v94 + 80);
  v120 = *(v94 + 88);
  v122 = *(v94 + 96);
  v121 = *(v94 + 104);
  v124 = *(v94 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf);
  v123 = *(v94 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8);
  v125 = *(v94 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_preferredSchemes);
  v126 = *(v94 + 40);
  v131 = *(v94 + 32);
  v132 = v126;
  v133 = *(v94 + 72);
  sub_1000094F4(v160, v118);
  sub_1000094F4(v119, v120);
  sub_1000094F4(v122, v121);
  sub_1000094F4(v124, v123);

  v134 = v123;
  v129 = v123;
  v152 = v124;
  v153 = v121;
  v156 = v122;
  v127 = v163;
  v128 = v154;
  sub_10011FCA8(v131, v132, v148, v160, v157, v133, v119, v120, v173, v122, v121, v124, v129, v125, 1u, 2u, v165);
  v148 = v128;
  if (!v128)
  {

    sub_100009548(v152, v134);
    sub_100009548(v156, v153);
    sub_100009548(v119, v120);
    sub_100009548(v160, v157);
    sub_1000A1E5C(v173);
    *(v162 + 180) = v174;
LABEL_2:
    Operation = type metadata accessor for ReadOperation();
    v167.receiver = v161;
    v167.super_class = Operation;
    objc_msgSendSuper2(&v167, "init");

    sub_10000959C(v165);
    sub_10000959C(v164);
    sub_10000959C(v150);
    sub_10000959C(v151);
    return;
  }

  sub_100009548(v152, v134);
  sub_100009548(v156, v153);
  sub_100009548(v119, v120);
  sub_100009548(v160, v157);

  sub_10000959C(v165);
  sub_10000959C(v164);
  sub_10000959C(v150);
  sub_10000959C(v151);
  v68 = v145;
LABEL_38:
  v90 = v161;

  sub_10000959C(&v90[v143]);

  sub_10000959C(&v90[v142]);
  sub_10000959C(&v90[v141]);
  sub_10000959C(&v90[v138]);

  type metadata accessor for ReadOperation();
  swift_deallocPartialClassInstance();
}

id sub_100126E70()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A3A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v14);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  dispatch thunk of DispatchWorkItem.cancel()();

  Operation = type metadata accessor for ReadOperation();
  v15.receiver = v1;
  v15.super_class = Operation;
  return objc_msgSendSuper2(&v15, "dealloc");
}

uint64_t sub_100127198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Operation = type metadata accessor for ReadOperation();
  v20.receiver = v3;
  v20.super_class = Operation;
  objc_msgSendSuper2(&v20, "cancel");
  v16[1] = *&v3[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  aBlock[4] = sub_100138C58;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_1003848D0;
  v13 = _Block_copy(aBlock);
  v14 = v3;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100138C60(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v17);
}

uint64_t sub_100127480(uint64_t a1)
{
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A3A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ReadOperation cancel()", v5, 2u);
  }

  sub_100100D88(2, *(*(a1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + 16));
  sub_1001276D4();
  sub_10000CCE4(a1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_managedData, v8);
  sub_10000BE18(v8, v8[3]);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944(1);
  if (v10)
  {
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if (swift_dynamicCast())
    {
      sub_10000959C(v8);
      sub_100100FC0(v7, 0, 1);
    }

    else
    {
      return sub_10000959C(v8);
    }
  }

  else
  {
    sub_10000959C(v8);
    return sub_10000BD44(v9, &qword_10039E248, &qword_1002C23D0);
  }
}

void sub_1001276D4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A3A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100346B20, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v15);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if ([v0 isExecuting])
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "ReadOperation isExecuting", v14, 2u);
    }

    if (v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerModeForPaymentStarted] == 1)
    {

      sub_100127CE8(0);
    }

    else
    {

      sub_100127988();
    }
  }

  else
  {

    sub_100128B38();
  }
}

void sub_100127988()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A3A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v24);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x53415665736F6C63, 0xEA00000000002928, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v24);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *&v0[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession];
  v24 = 0;
  if ([v12 stopVASPolling:&v24])
  {
    v13 = v24;
  }

  else
  {
    v14 = v24;
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v23 = v15;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v20 = String.init<A>(describing:)();
      v22 = sub_100008F6C(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "stopVASPolling error: %s", v18, 0xCu);
      sub_10000959C(v19);
    }

    else
    {
    }
  }

  if ([v1 isCancelled])
  {
    sub_100127CE8(0);
  }
}

void sub_100127CE8(char a1)
{
  swift_getObjectType();
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A3A90);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v25);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1002C1660;
    *(v10 + 56) = &type metadata for Bool;
    *(v10 + 32) = a1 & 1;
    v11 = showFunction(signature:_:)(0xD000000000000024, 0x800000010034F5B0, v10);
    v13 = v12;

    v14 = sub_100008F6C(v11, v13, &v25);

    *(v6 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerModeForPaymentStarted) == 1)
  {
    v15 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
    v25 = 0;
    if ([v15 stop:&v25])
    {
      v16 = v25;
      if ((a1 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_12:
      sub_1001280BC();
      return;
    }

    v17 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v19))
    {

      if (a1)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315138;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v22 = String.init<A>(describing:)();
    v24 = sub_100008F6C(v22, v23, &v25);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Stop Reader Mode Error from NFSecureElementReaderSession stop(): %s", v20, 0xCu);
    sub_10000959C(v21);
  }

  if (a1)
  {
    goto LABEL_12;
  }

LABEL_14:
  sub_100128B38();
}

void sub_1001280BC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A3A90);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100008F6C(v12, v13, aBlock);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = showFunction(signature:_:)(0xD000000000000026, 0x800000010034F530, _swiftEmptyArrayStorage);
    v17 = sub_100008F6C(v15, v16, aBlock);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  aBlock[4] = sub_100138BF8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100384808;
  v19 = _Block_copy(aBlock);
  v1;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100138C60(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v22 + 8))(v4, v2);
  (*(v20 + 8))(v7, v21);

  sub_100128B38();
}

uint64_t sub_10012850C(uint64_t a1)
{
  v43 = type metadata accessor for OSSignpostError();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - v9;
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  if (qword_10039D630 != -1)
  {
    swift_once();
  }

  v44 = v3;
  v13 = type metadata accessor for OSSignposter();
  sub_10000403C(v13, qword_1003A3AA8);
  static OSSignpostID.exclusive.getter();
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v17, "reader-clear_transaction_for_payment", "begin clear transaction for payment", v16, 2u);
  }

  (*(v5 + 16))(v10, v12, v4);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v18 = *(v5 + 8);
  v18(v12, v4);
  v19 = *(a1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
  sub_100004074(&qword_1003A5D40, &qword_1002C1740);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1002C1660;
  if (qword_10039D3C8 != -1)
  {
    swift_once();
  }

  v21 = *(&xmmword_1003A6AA0 + 1);
  *(v20 + 32) = xmmword_1003A6AA0;
  *(v20 + 40) = v21;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v47 = 0;
  v23 = [v19 selectApplets:isa error:&v47];

  if (v23)
  {
    v24 = v47;
    sub_100123738();
  }

  else
  {
    v25 = v47;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000403C(v26, qword_1003A3A90);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to select applet to clear transaction: %@", v29, 0xCu);
      sub_10000BD44(v30, &unk_10039E220, &qword_1002C3D60);
    }

    else
    {
    }
  }

  v32 = v45;
  v33 = v46;
  v34 = v44;
  v35 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v36 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v37 = v43;
    if ((*(v32 + 88))(v34, v43) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v38 = "[Error] Interval already ended";
    }

    else
    {
      (*(v32 + 8))(v34, v37);
      v38 = "end clear transaction for payment";
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, v36, v40, "reader-clear_transaction_for_payment", v38, v39, 2u);
  }

  return (v18)(v33, v4);
}

void sub_100128B38()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A3A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v12);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000013, 0x8000000100346A90, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v12);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  [v1 setExecuting:0];
  [v1 setFinished:1];

  sub_100137C74();
}

void sub_100128D24()
{
  v1 = v0;
  swift_getObjectType();
  v146 = type metadata accessor for OSSignpostError();
  v2 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v152 = &v138 - v10;
  __chkstk_darwin(v9);
  v148 = &v138 - v11;
  v151 = type metadata accessor for UUID();
  v150 = *(v151 - 1);
  __chkstk_darwin(v151);
  v149 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v157 = *(v13 - 8);
  v158 = v13;
  v14 = __chkstk_darwin(v13);
  v155 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v156 = &v138 - v16;
  v153 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v153);
  v154 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10000403C(v18, qword_1003A3A90);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  v22 = os_log_type_enabled(v20, v21);
  v147 = v8;
  v145 = v2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v23 = 136315394;
    v24 = _typeName(_:qualified:)();
    v26 = sub_100008F6C(v24, v25, aBlock);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = showFunction(signature:_:)(0x29287472617473, 0xE700000000000000, _swiftEmptyArrayStorage);
    v29 = sub_100008F6C(v27, v28, aBlock);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s.%s", v23, 0x16u);
    swift_arrayDestroy();
  }

  v30 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession];
  [v30 setDelegate:v1];
  [v30 setSessionDelegate:v1];
  if (([v1 isCancelled] & 1) == 0)
  {
    v141 = v30;
    v139 = v5;
    v140 = v4;
    v142 = v19;
    v34 = sub_1000207FC(4998, 0, 0, 0);
    v35 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError];
    v138 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
    *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError] = v34;

    v36 = swift_allocObject();
    v37 = v36;
    v38 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig];
    v39 = 120;
    if (!*(v38 + 16))
    {
      v39 = 112;
    }

    *(v36 + 16) = *(v38 + v39);
    v40 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_timeoutWorkItem;

    dispatch thunk of DispatchWorkItem.cancel()();

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v37;
    aBlock[4] = sub_100138C50;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_100384880;
    _Block_copy(aBlock);
    v160 = _swiftEmptyArrayStorage;
    sub_100138C60(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

    v143 = v37;

    sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
    sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v43 = DispatchWorkItem.init(flags:block:)();

    *&v1[v40] = v43;

    v44 = v155;
    static DispatchTime.now()();
    swift_beginAccess();
    v45 = v156;
    + infix(_:_:)();
    v46 = *(v157 + 8);
    v47 = v44;
    v48 = v158;
    v46(v47, v158);

    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v46(v45, v48);
    v158 = v38;
    if (!*(v38 + 16))
    {
      sub_10012A4DC(0);
LABEL_19:

      return;
    }

    if ([v1 isCancelled])
    {
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "ReadOperation cancelled before startVASPolling", v51, 2u);
      }

      sub_100128B38();
      goto LABEL_19;
    }

    v52 = sub_1001386A4();
    v54 = v53;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v160 = 0;
    v56 = [v141 startVASPolling:isa error:&v160];

    if (v56)
    {
      v156 = v52;
      v157 = v54;
      v57 = v158;
      v58 = *(v158 + 16);
      v59 = v160;
      sub_100100D88(0, v58);
      [v1 setExecuting:1];
      v60 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 24];
      v61 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 32];
      v155 = sub_10000BE18(&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor], v60);
      sub_100004074(&unk_1003A3C10, &unk_1002C3760);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      strcpy((inited + 32), "transactionId");
      *(inited + 46) = -4864;
      v63 = v150;
      v64 = v149;
      v65 = v151;
      (*(v150 + 16))(v149, v57 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v151);
      v66 = UUID.uuidString.getter();
      v68 = v67;
      (*(v63 + 8))(v64, v65);
      *(inited + 48) = v66;
      *(inited + 56) = v68;
      v69 = sub_100183EFC(inited);
      swift_setDeallocating();
      sub_10000BD44(inited + 32, &qword_10039FE90, &unk_1002C5970);
      (*(v61 + 8))(11, 2, v69, v60, v61);

      if ([v1 isCancelled])
      {
        v70 = v156;
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&_mh_execute_header, v71, v72, "ReadOperation cancelled after startVASPolling before onUpdate ready", v73, 2u);
        }

        sub_1001276D4();
        sub_100009548(v70, v157);
      }

      else
      {
        v82 = v1;
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.default.getter();
        v155 = v82;

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v160 = v86;
          *v85 = 136315138;
          v87 = SPRReaderMode.description.getter();
          v89 = sub_100008F6C(v87, v88, &v160);

          *(v85 + 4) = v89;
          _os_log_impl(&_mh_execute_header, v83, v84, "VAS-type polling started --- --- --->  Tap a %s card", v85, 0xCu);
          sub_10000959C(v86);
        }

        v90 = v139;
        v91 = v148;
        if (qword_10039D630 != -1)
        {
          swift_once();
        }

        v92 = type metadata accessor for OSSignposter();
        sub_10000403C(v92, qword_1003A3AA8);
        OSSignposter.logHandle.getter();
        swift_unknownObjectRetain();
        OSSignpostID.init(log:object:)();
        v93 = v140;
        v158 = *(v90 + 16);
        (v158)(v152, v91, v140);
        type metadata accessor for OSSignpostIntervalState();
        swift_allocObject();
        OSSignpostIntervalState.init(id:isOpen:)();
        v94 = v90;
        v95 = OSSignposter.logHandle.getter();
        v96 = v147;
        OSSignpostIntervalState.signpostID.getter();
        LODWORD(v154) = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v153 = "m vas to payment";

          v97 = v144;
          checkForErrorAndConsumeState(state:)();

          v98 = v145;
          v99 = v146;
          if ((*(v145 + 88))(v97, v146) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v100 = 0;
            v101 = 0;
            v151 = "[Error] Interval already ended";
          }

          else
          {
            (*(v98 + 8))(v97, v99);
            v151 = "%s";
            v101 = 2;
            v100 = 1;
          }

          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v160 = v121;
          *v120 = v101;
          *(v120 + 1) = v100;
          *(v120 + 2) = 2080;
          *(v120 + 4) = sub_100008F6C(0xD000000000000011, v153 | 0x8000000000000000, &v160);
          v122 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v95, v154, v122, "reader-preprocessing", v151, v120, 0xCu);
          sub_10000959C(v121);

          v119 = *(v139 + 8);
          v119(v96, v140);
          v91 = v148;
        }

        else
        {

          v119 = *(v94 + 8);
          v119(v96, v93);
        }

        v123 = OSSignposter.logHandle.getter();
        v124 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v160 = v126;
          *v125 = 136315138;
          *(v125 + 4) = sub_100008F6C(0xD000000000000011, 0x800000010034F600, &v160);
          v127 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v123, v124, v127, "reader-vas_polling", "%s", v125, 0xCu);
          sub_10000959C(v126);
        }

        v128 = v140;
        (v158)(v152, v91, v140);
        swift_allocObject();
        OSSignpostIntervalState.init(id:isOpen:)();

        v119(v91, v128);
        v129 = v155;
        v130 = *(*&v155[OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics] + 56);
        os_unfair_lock_lock(v130 + 8);
        sub_10011C8AC(&v130[4], 1);
        os_unfair_lock_unlock(v130 + 8);
        if ([v129 isCancelled])
        {
          v131 = Logger.logObject.getter();
          v132 = static os_log_type_t.default.getter();
          v133 = os_log_type_enabled(v131, v132);
          v134 = v157;
          if (v133)
          {
            v135 = swift_slowAlloc();
            *v135 = 0;
            _os_log_impl(&_mh_execute_header, v131, v132, "ReadOperation cancelled at end of start()", v135, 2u);
          }

          sub_1001276D4();
          v136 = v156;
          v137 = v134;
        }

        else
        {
          v136 = v156;
          v137 = v157;
        }

        sub_100009548(v136, v137);
      }

      goto LABEL_19;
    }

    v74 = v160;
    v75 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v160 = v75;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    if (!swift_dynamicCast())
    {
LABEL_44:

      swift_errorRetain();
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v160 = v112;
        *v111 = 136315138;
        v159 = v75;
        swift_errorRetain();
        v113 = String.init<A>(describing:)();
        v115 = sub_100008F6C(v113, v114, &v160);

        *(v111 + 4) = v115;
        _os_log_impl(&_mh_execute_header, v109, v110, "Error from startVASPolling: %s", v111, 0xCu);
        sub_10000959C(v112);
      }

      v116 = v138;
      v117 = sub_1000207FC(4015, 0, 0, 0);
      v118 = *&v1[v116];
      *&v1[v116] = v117;

      sub_100128B38();

      sub_100009548(v52, v54);
      goto LABEL_19;
    }

    v76 = v159;
    v77 = [v159 domain];
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    if (v78 == String.init(cString:)() && v80 == v81)
    {
    }

    else
    {
      v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v102 & 1) == 0)
      {
LABEL_43:

        goto LABEL_44;
      }
    }

    v103 = [v76 code];
    if ((v103 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v103))
    {
      if (v103 == 47)
      {

        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&_mh_execute_header, v104, v105, "Reader temporarily unavailable when trying to start VAS-type polling", v106, 2u);
        }

        v107 = sub_1000207FC(4036, 0, 0, 0);
        v108 = *&v1[v138];
        *&v1[v138] = v107;

        sub_100027F94(&off_10037EC08);
        sub_100128B38();
        sub_100009548(v52, v54);

        goto LABEL_19;
      }

      goto LABEL_43;
    }

    __break(1u);
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "ReadOperation cancelled before start", v33, 2u);
  }

  sub_100128B38();
}

void sub_10012A2A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (([Strong isCancelled] & 1) == 0 && (objc_msgSend(v4, "isFinished") & 1) == 0 && objc_msgSend(v4, "isExecuting"))
    {
      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000403C(v5, qword_1003A3A90);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        swift_beginAccess();
        *(v8 + 4) = *(a2 + 16);
        _os_log_impl(&_mh_execute_header, v6, v7, "Polling TIMED OUT after %f elapsed", v8, 0xCu);
      }

      v9 = sub_1000207FC(4005, 0, 0, 0);
      v10 = *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError];
      *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError] = v9;

      v11 = *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics];
      if (*&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount] < 1)
      {
        *(v11 + 126) = 1;
      }

      else
      {
        *(v11 + 125) = 1;
      }

      [v4 cancel];
    }
  }
}

void sub_10012A4DC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount;
  v9 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v108 = v7;
    *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount] = v11;
    if (qword_10039D628 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  v13 = sub_10000403C(v12, qword_1003A3A90);
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = *&v2[v8];

    _os_log_impl(&_mh_execute_header, v15, v16, "startPayment() paymentStartedCount= %ld", v17, 0xCu);
  }

  else
  {

    v15 = v14;
  }

  if (([v14 isCancelled]& 1) != 0)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v18, v19))
    {
LABEL_10:

      sub_100128B38();
      return;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "ReadOperation cancelled before startPayment";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

    goto LABEL_10;
  }

  v22 = *(&v14->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig);
  v24 = *(v22 + 32);
  v23 = *(v22 + 40);
  v25 = *(v22 + 48);
  v99 = v13;
  v98 = v4;
  v97 = v5;
  if (a1)
  {
    v26 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readResult;
    swift_beginAccess();
    *(&v14->isa + v26) = &_swiftEmptyDictionarySingleton;

    v114 = &type metadata for Bool;
    LOBYTE(v112[0]) = 1;
    swift_beginAccess();
    sub_10002CFD4(v112, 0x626C6C6146726F66, 0xEB000000006B6361);
    type metadata accessor for Decimal(0);
    v114 = v27;
    v112[0] = v24;
    v112[1] = v23;
    v113 = v25;
    sub_10002CFD4(v112, 0x6B6361626C6C6166, 0xEE00746E756F6D41);
    swift_endAccess();
    NSDecimal.init(integerLiteral:)(v28, 0);
    v102 = v29;
    v106 = v30;
    LODWORD(v107) = v31;
    LODWORD(v104) = 0;
    (*(&v14->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics))[128] = 1;
  }

  else
  {
    LODWORD(v104) = 1;
    LODWORD(v107) = v25;
    v106 = v23;
    v102 = v24;
  }

  v109 = *(&v14->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
  v32 = *(v22 + 56);
  v33 = *(v22 + 64);
  v35 = *(v22 + 88);
  v100 = *(v22 + 80);
  v34 = v100;
  v37 = *(v22 + 96);
  v36 = *(v22 + 104);
  v38 = v14;
  v39 = *(v22 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf);
  v40 = *(v22 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8);
  v41 = *(v22 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_preferredSchemes);
  v105 = v38;
  v103 = (&v38->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureTimeKeeper);
  v101 = *(v22 + 72);
  sub_1000094F4(v32, v33);
  sub_1000094F4(v34, v35);
  sub_1000094F4(v37, v36);
  sub_1000094F4(v39, v40);

  v96 = v103;
  v95 = v104;
  v103 = v36;
  v94 = v36;
  v104 = v37;
  v42 = v106;
  v43 = v107;
  v107 = v32;
  v106 = v33;
  v44 = v100;
  sub_10011FCA8(v102, v42, v43, v32, v33, v101, v100, v35, v112, v37, v94, v39, v40, v41, 1u, v95, v96);

  sub_100009548(v39, v40);
  sub_100009548(v104, v103);
  sub_100009548(v44, v35);
  sub_100009548(v107, v106);
  v45 = v105;
  v46 = *(&v105->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
  sub_1000A1E5C(v112);
  *(v46 + 180) = v113;
  if (([v45 isCancelled]& 1) != 0)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_10;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "ReadOperation cancelled after Start CAPDU before start polling";
    goto LABEL_9;
  }

  *(&v45->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus) = 256;
  v111[0] = 0;
  v47 = v109;
  if (![v109 start:v111])
  {
    v49 = v111[0];
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v111[0] = v50;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    if (!swift_dynamicCast())
    {
LABEL_51:

      swift_errorRetain();
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v111[0] = v88;
        *v87 = 136315138;
        v110[0] = v50;
        swift_errorRetain();
        v89 = String.init<A>(describing:)();
        v91 = sub_100008F6C(v89, v90, v111);

        *(v87 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v85, v86, "Error from NFSecureElementReaderSession.start(): %s", v87, 0xCu);
        sub_10000959C(v88);
      }

      v92 = sub_1000207FC(4015, 0, 0, 0);
      v93 = *(&v45->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
      *(&v45->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v92;

      sub_100128B38();
      goto LABEL_17;
    }

    v51 = v110[0];
    v52 = [v110[0] domain];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (v53 == String.init(cString:)() && v55 == v56)
    {
    }

    else
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v78 & 1) == 0)
      {
LABEL_50:

        goto LABEL_51;
      }
    }

    v79 = [v51 code];
    if ((v79 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v79))
    {
      if (v79 == 47)
      {

        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "Reader temporarily unavailable when trying to start EMV-type polling", v82, 2u);
        }

        v83 = sub_1000207FC(4036, 0, 0, 0);
        v84 = *(&v45->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
        *(&v45->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v83;

        sub_100027F94(&off_10037EBB8);
        sub_100128B38();

LABEL_17:

        return;
      }

      goto LABEL_50;
    }

    __break(1u);
LABEL_58:
    swift_once();
LABEL_38:
    v74 = type metadata accessor for OSSignposter();
    sub_10000403C(v74, qword_1003A3AA8);
    sub_100186BE8("reader-preprocessing", 20, 2, v55, 0xD000000000000011, 0x800000010034F460);
    goto LABEL_39;
  }

  if (*(v22 + 16))
  {
    v48 = v111[0];
  }

  else
  {
    v57 = v111[0];
    sub_100100D88(0, 0);
  }

  [v45 setExecuting:1, v97, v98];
  *(&v45->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerModeForPaymentStarted) = 1;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "Called start ETSI SE reader mode (for EMV-type polling) for payment.", v60, 2u);
  }

  v61 = *(v22 + 16);
  if ((v61 - 2) < 2)
  {
    if (qword_10039D630 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for OSSignposter();
    sub_10000403C(v62, qword_1003A3AA8);
    sub_100186948("reader-vas_ese_reader_mode_switch", 33, 2, v47, 0xD000000000000020, 0x800000010034F430);
    goto LABEL_39;
  }

  if (v61 != 1)
  {
    if (v61)
    {
      type metadata accessor for SPRReaderMode(0);
      v111[0] = v61;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    v107 = *(&v45[3].isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor);
    v104 = *(&v45[4].isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor);
    v106 = sub_10000BE18((&v45->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor), v107);
    sub_100004074(&unk_1003A3C10, &unk_1002C3760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    strcpy((inited + 32), "transactionId");
    *(inited + 46) = -4864;
    v64 = v97;
    v65 = v108;
    v66 = v98;
    (*(v97 + 16))(v108, v22 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v98);
    v67 = UUID.uuidString.getter();
    v69 = v68;
    (*(v64 + 8))(v65, v66);
    *(inited + 48) = v67;
    *(inited + 56) = v69;
    v70 = sub_100183EFC(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FE90, &unk_1002C5970);
    (*(v104 + 8))(11, 2, v70, v107);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "EMV-type polling started --- --- --->  Tap a payment card", v73, 2u);
    }

    v55 = v109;
    if (qword_10039D630 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_58;
  }

LABEL_39:
  if ([v45 isCancelled])
  {
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "ReadOperation is cancelled after startPayment()", v77, 2u);
    }

    sub_100127CE8(0);
  }
}

uint64_t sub_10012B414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A3A90);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "handleSessionReachedTimeLimit()", v16, 2u);
  }

  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  aBlock[4] = sub_100138BD4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_1003847B8;
  v18 = _Block_copy(aBlock);
  v19 = v4;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_10012B738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    if (qword_10039D628 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_10000403C(v14, qword_1003A3A90);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = v4;
    *v17 = 67109120;
    *(v17 + 4) = v5 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "didReceiveThermalIndication %{BOOL}d", v17, 8u);
    v4 = v23;
  }

  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v5 & 1;
  aBlock[4] = sub_100138BA8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100384768;
  v19 = _Block_copy(aBlock);
  v20 = v4;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

void sub_10012BB08(char a1)
{
  v2 = v1;
  if (a1)
  {
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000403C(v3, qword_1003A3A90);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "reader will stop", v6, 2u);
    }

    v7 = sub_1000207FC(4036, 0, 0, 0);
    v8 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
    *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v7;

    sub_100027F94(&off_10037EC30);

    sub_100128B38();
  }

  else
  {
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000403C(v9, qword_1003A3A90);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "reader can be enabled", v12, 2u);
    }

    sub_100027F94(&off_10037EC58);
    sub_100100D88(0, *(*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + 16));
  }
}

uint64_t sub_10012BD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    if (qword_10039D628 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A3A90);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "secureElementReaderSessionDidEndUnexpectedly()", v16, 2u);
  }

  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  aBlock[4] = sub_100138D20;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100384718;
  v18 = _Block_copy(aBlock);
  v19 = v4;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

void sub_10012C0B0()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000207FC(4024, 0, 0, 0);
  v7 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
  *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v6;

  v8 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 32);
  v16 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 24);
  v15 = sub_10000BE18((v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor), v16);
  sub_100004074(&unk_1003A3C10, &unk_1002C3760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  strcpy((inited + 32), "transactionId");
  *(inited + 46) = -4864;
  v10 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig);
  (*(v3 + 16))(v5, v10 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v2);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  v14 = sub_100183EFC(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039FE90, &unk_1002C5970);
  (*(v8 + 8))(13, 2, v14, v16, v8);

  sub_100100D88(3, *(v10 + 16));
  sub_100128B38();
}

uint64_t sub_10012C2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    if (qword_10039D628 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_10000403C(v14, qword_1003A3A90);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = v9;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "ReadOperation didDetect (NFTag)", v17, 2u);
    v9 = v23;
  }

  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = a2;
  aBlock[4] = sub_100138B48;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_1003846C8;
  v19 = _Block_copy(aBlock);
  v20 = v4;

  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

void sub_10012C6D8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v174 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v170 = v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v171 = *(v8 - 8);
  __chkstk_darwin(v8);
  v168 = v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for DispatchTime();
  v169 = *(v173 - 8);
  v10 = __chkstk_darwin(v173);
  v166 = v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v167 = v155 - v12;
  v13 = type metadata accessor for OSSignpostError();
  v172 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OSSignpostID();
  v175 = *(v16 - 8);
  v176 = v16;
  v17 = __chkstk_darwin(v16);
  v19 = v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v177 = v155 - v21;
  __chkstk_darwin(v20);
  v178 = (v155 - v22);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v4 isCancelled])
  {
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000403C(v27, qword_1003A3A90);
    v178 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v178, v28))
    {
      goto LABEL_12;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "ReadOperation isCancelled ignore didDetect";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v178, v28, v30, v29, 2u);

LABEL_12:
    v32 = v178;

    return;
  }

  if (v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerModeForPaymentStarted])
  {
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000403C(v31, qword_1003A3A90);
    v178 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v178, v28))
    {
      goto LABEL_12;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "readerModeForPaymentStarted ignore didDetect";
    goto LABEL_11;
  }

  v33 = *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig];
  if (*(v33 + 16))
  {
    v156 = v8;
    v157 = v6;
    v158 = v5;
    v34 = v33;
    sub_100100D88(1, 1);
    v163 = *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 24];
    v161 = *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 32];
    v162 = sub_10000BE18(&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor], v163);
    sub_100004074(&unk_1003A3C10, &unk_1002C3760);
    inited = swift_initStackObject();
    v165 = v4;
    v36 = inited;
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 0x746361736E617274;
    v37 = inited + 32;
    *(inited + 40) = 0xED000064496E6F69;
    v38 = *(v24 + 16);
    v164 = v34;
    v38(v26, v34 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v23);
    v39 = UUID.uuidString.getter();
    v41 = v40;
    (*(v24 + 8))(v26, v23);
    *(v36 + 48) = v39;
    *(v36 + 56) = v41;
    v42 = sub_100183EFC(v36);
    swift_setDeallocating();
    sub_10000BD44(v37, &qword_10039FE90, &unk_1002C5970);
    (*(v161 + 8))(12, 2, v42, v163);

    sub_10011BBA0(&off_10037ECA8);
    sub_10011B164(&off_10037EC80);
    if (qword_10039D630 != -1)
    {
      swift_once();
    }

    v160 = type metadata accessor for OSSignposter();
    v43 = sub_10000403C(v160, qword_1003A3AA8);
    OSSignposter.logHandle.getter();
    swift_unknownObjectRetain();
    v44 = v178;
    OSSignpostID.init(log:object:)();
    v45 = v175;
    v46 = *(v175 + 16);
    v47 = v44;
    v48 = v176;
    v163 = v175 + 16;
    v162 = v46;
    v46(v177, v47, v176);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v49 = OSSignpostIntervalState.init(id:isOpen:)();
    v50 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v159 = static os_signpost_type_t.end.getter();
    v51 = OS_os_log.signpostsEnabled.getter();
    v161 = v49;
    if (v51)
    {

      checkForErrorAndConsumeState(state:)();

      v52 = v172;
      v53 = (*(v172 + 88))(v15, v13);
      v155[1] = v43;
      if (v53 == enum case for OSSignpostError.doubleEnd(_:))
      {
        v57 = 0;
        v56 = 0;
        v55 = "[Error] Interval already ended";
      }

      else
      {
        (*(v52 + 8))(v15, v13);
        v55 = "%s";
        v56 = 2;
        v57 = 1;
      }

      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock = v59;
      *v58 = v56;
      *(v58 + 1) = v57;
      *(v58 + 2) = 2080;
      *(v58 + 4) = sub_100008F6C(0x2073617620646E65, 0xEF676E696C6C6F70, &aBlock);
      v60 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, v159, v60, "reader-vas_polling", v55, v58, 0xCu);
      sub_10000959C(v59);

      v48 = v176;
      v54 = *(v175 + 8);
      v54(v19, v176);
    }

    else
    {

      v54 = *(v45 + 8);
      v54(v19, v48);
    }

    v61 = OSSignposter.logHandle.getter();
    v62 = static os_signpost_type_t.begin.getter();
    v63 = OS_os_log.signpostsEnabled.getter();
    v64 = v178;
    if (v63)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      aBlock = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_100008F6C(0x6176206E69676562, 0xEE00646165722073, &aBlock);
      v67 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, v62, v67, "reader-vas_read", "%s", v65, 0xCu);
      sub_10000959C(v66);
    }

    v4 = v165;
    v162(v177, v64, v48);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();

    v54(v64, v48);
    v68 = *(v164 + 16);
    if ((v68 - 2) < 2)
    {
      sub_10012E36C(v174);
      if (qword_10039D630 != -1)
      {
        swift_once();
      }

      sub_10000403C(v160, qword_1003A3AA8);
      v69 = v4;
      v70 = *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession];
      sub_100186BE8("reader-vas_read", 15, 2, v70, 0x2073617620646E65, 0xEC00000064616572);
      if ([v69 isCancelled])
      {
        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_10000403C(v71, qword_1003A3A90);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
LABEL_40:
        v75 = v73;
        if (os_log_type_enabled(v72, v73))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&_mh_execute_header, v72, v75, "ReadOperation isCancelled return from didDetect", v76, 2u);
        }

        return;
      }

      sub_100127988();
      v77 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
      v78 = *&v69[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError];
      _s3__C4CodeOMa_11(0);
      aBlock = 4020;
      sub_100138C60(&qword_10039D9F0, _s3__C4CodeOMa_11, &unk_1002BF298);
      v79 = v78;
      v80 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v80)
      {

LABEL_54:
        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v93 = type metadata accessor for Logger();
        sub_10000403C(v93, qword_1003A3A90);
        v94 = v165;
        v95 = v165;
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *v98 = 136315138;
          v179 = *&v94[v77];
          aBlock = v99;
          type metadata accessor for ReadError(0);
          sub_100138C60(&qword_10039D938, type metadata accessor for ReadError, &unk_1002BEC78);
          v100 = Error.localizedDescription.getter();
          v102 = sub_100008F6C(v100, v101, &aBlock);

          *(v98 + 4) = v102;
          _os_log_impl(&_mh_execute_header, v96, v97, "Restart for %s", v98, 0xCu);
          sub_10000959C(v99);
        }

        v177 = *&v95[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
        v103 = v166;
        static DispatchTime.now()();
        v104 = v167;
        + infix(_:_:)();
        v178 = *(v169 + 8);
        (v178)(v103, v173);
        v105 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v184 = sub_100138B28;
        v185 = v105;
        aBlock = _NSConcreteStackBlock;
        v181 = 1107296256;
        v106 = &unk_100384650;
LABEL_65:
        v182 = sub_100003974;
        v183 = v106;
        v121 = _Block_copy(&aBlock);

        v122 = v168;
        static DispatchQoS.unspecified.getter();
        v179 = _swiftEmptyArrayStorage;
        sub_100138C60(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
        sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
        v123 = v170;
        v124 = v158;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v121);
        (*(v157 + 8))(v123, v124);
        (*(v171 + 8))(v122, v156);
        (v178)(v104, v173);

        return;
      }

      aBlock = 4042;
      v91 = v79;
      v92 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v92)
      {
        goto LABEL_54;
      }

      v125 = v165;
      v126 = *&v165[OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics];
      sub_10011BBA0(&off_10037ECF8);
      sub_10011B164(&off_10037ECD0);
      v177 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound;
      if (v125[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound])
      {
        v127 = 1;
      }

      else
      {
        v127 = v125[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK];
      }

      v178 = v126;
      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v128 = type metadata accessor for Logger();
      v129 = sub_10000403C(v128, qword_1003A3A90);
      v130 = v165;
      v131 = v165;
      v176 = v129;
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v175 = v77;
        v135 = v131;
        v136 = v134;
        *v134 = 67109632;
        *(v134 + 4) = v127;
        *(v134 + 8) = 1024;
        *(v134 + 10) = v177[v130];
        *(v134 + 14) = 1024;
        *(v134 + 16) = v135[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK];

        _os_log_impl(&_mh_execute_header, v132, v133, "vasReadSuccess: %{BOOL}d, vasDataFound: %{BOOL}d, vasURLOK: %{BOOL}d", v136, 0x14u);
        v131 = v135;
        v77 = v175;
      }

      else
      {

        v132 = v131;
      }

      v137 = v178;
      BYTE2(v178[15].isa) = v127;
      if (v131[OBJC_IVAR____TtC14softposreaderd13ReadOperation_skipLoyalty] == 1)
      {
        if (v131[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming])
        {
          *&v131[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse] = _swiftEmptyArrayStorage;

          sub_10012A4DC(0);
          sub_100027F94(&off_10037ED48);
        }

        else
        {
          [*&v131[OBJC_IVAR____TtC14softposreaderd13ReadOperation_operationQueue] cancelAllOperations];
          v138 = sub_1000207FC(4027, 0, 0, 0);
          sub_100186BE8("reader-total_transaction", 24, 2, v70, 0xD000000000000015, 0x800000010034F3F0);
          isa = v137[7].isa;
          os_unfair_lock_lock(isa + 8);
          sub_10011D358(&isa[4], 3);
          os_unfair_lock_unlock(isa + 8);
          BYTE2(v137[15].isa) = 0;
          aBlock = v138;
          type metadata accessor for ReadError(0);
          sub_100138C60(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);
          v137[18].isa = _BridgedStoredNSError.errorCode.getter();
          sub_100027F94(&off_10037ED20);
          v140 = v138;
          sub_100100FC0(v140, 0, 1);
        }

        return;
      }

      if ((v127 & 1) == 0)
      {
        v141 = v137;
        v142 = v165;
        aBlock = *&v165[v77];
        type metadata accessor for ReadError(0);
        sub_100138C60(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);
        v141[18].isa = _BridgedStoredNSError.errorCode.getter();
        sub_100027F94(&off_10037ED70);
        v143 = *&v142[v77];
        aBlock = 4030;
        v144 = v143;
        v145 = static _ErrorCodeProtocol.~= infix(_:_:)();

        if ((v145 & 1) == 0)
        {
          aBlock = 4021;
          v146 = v144;
          v147 = static _ErrorCodeProtocol.~= infix(_:_:)();

          if (v147)
          {
            v148 = v178;
            if (v131[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming])
            {
              goto LABEL_86;
            }

            v149 = Logger.logObject.getter();
            v150 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v149, v150))
            {
              v151 = swift_slowAlloc();
              *v151 = 0;
              _os_log_impl(&_mh_execute_header, v149, v150, "vasDataNotFound and no paymentDataForthcoming", v151, 2u);
            }

            v152 = v148[7].isa;
          }

          else
          {
            v152 = v178[7].isa;
          }

          os_unfair_lock_lock(v152 + 8);
          sub_10011D358(v152 + 16, 3);
          os_unfair_lock_unlock(v152 + 8);
          sub_100186BE8("reader-total_transaction", 24, 2, v70, 0xD000000000000015, 0x800000010034F3F0);
          [*&v131[OBJC_IVAR____TtC14softposreaderd13ReadOperation_operationQueue] cancelAllOperations];
          v153 = *(v164 + 16);
          v154 = *&v165[v77];
          sub_100100FC0(v154, v153, 0);

          return;
        }

LABEL_86:
        sub_10012A4DC(0);
        return;
      }

      sub_100027F94(&off_10037ED98);
      if (*(v164 + 16) == 2)
      {
LABEL_81:
        if ((v131[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming] & 1) == 0)
        {
          goto LABEL_88;
        }

        goto LABEL_86;
      }

      if (v177[v165] != 1)
      {
        if (v131[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK] != 1)
        {
          return;
        }

        goto LABEL_81;
      }

LABEL_88:
      sub_100128B38();
      return;
    }

    if (v68 == 1)
    {
      sub_10012E36C(v174);
      if (qword_10039D630 != -1)
      {
        swift_once();
      }

      sub_10000403C(v160, qword_1003A3AA8);
      sub_100186BE8("reader-vas_read", 15, 2, *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession], 0x2073617620646E65, 0xEC00000064616572);
      if ([v4 isCancelled])
      {
        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        sub_10000403C(v74, qword_1003A3A90);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();
        goto LABEL_40;
      }

      sub_100127988();
      v87 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
      v88 = *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError];
      _s3__C4CodeOMa_11(0);
      aBlock = 4020;
      sub_100138C60(&qword_10039D9F0, _s3__C4CodeOMa_11, &unk_1002BF298);
      v89 = v88;
      v90 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v90)
      {
      }

      else
      {
        aBlock = 4042;
        v107 = v89;
        v108 = static _ErrorCodeProtocol.~= infix(_:_:)();

        if ((v108 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for Logger();
      sub_10000403C(v109, qword_1003A3A90);
      v110 = v4;
      v111 = Logger.logObject.getter();
      v112 = v4;
      v113 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v111, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *v114 = 136315138;
        v179 = *&v112[v87];
        aBlock = v115;
        type metadata accessor for ReadError(0);
        sub_100138C60(&qword_10039D938, type metadata accessor for ReadError, &unk_1002BEC78);
        v116 = Error.localizedDescription.getter();
        v118 = sub_100008F6C(v116, v117, &aBlock);

        *(v114 + 4) = v118;
        _os_log_impl(&_mh_execute_header, v111, v113, "Restart for %s", v114, 0xCu);
        sub_10000959C(v115);
      }

      v177 = *&v110[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
      v119 = v166;
      static DispatchTime.now()();
      v104 = v167;
      + infix(_:_:)();
      v178 = *(v169 + 8);
      (v178)(v119, v173);
      v120 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v184 = sub_100138CFC;
      v185 = v120;
      aBlock = _NSConcreteStackBlock;
      v181 = 1107296256;
      v106 = &unk_100384678;
      goto LABEL_65;
    }

    if (v68)
    {
      type metadata accessor for SPRReaderMode(0);
      aBlock = v68;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }
  }

  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  sub_10000403C(v81, qword_1003A3A90);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v82, v83, "SPRReaderMode is .payment, VAS-type polling for NFTag detection should not be active", v84, 2u);
  }

  v85 = sub_1000207FC(4017, 0, 0, 0);
  v86 = *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError];
  *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError] = v85;
}

void sub_10012E310(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong start];
  }
}

void sub_10012E36C(unint64_t a1)
{
  v2 = v1;
  v146 = a1;
  v3 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_141;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v4)
  {
    if (qword_10039D628 != -1)
    {
      goto LABEL_147;
    }

    goto LABEL_9;
  }

  if (qword_10039D628 != -1)
  {
    goto LABEL_143;
  }

LABEL_5:
  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A3A90);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v3)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v6, v7, "Number of NFTag detected from VAS-type polling: %ld", v8, 0xCu);

    if (!v3)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (!v3)
    {
LABEL_19:
      v14 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_20;
    }
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
LABEL_20:
  v15 = _swiftEmptyArrayStorage;
  if (!v14)
  {
    goto LABEL_35;
  }

  v150 = _swiftEmptyArrayStorage;
  sub_10004E2DC(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    goto LABEL_146;
  }

  v15 = v150;
  v143 = v2;
  if (v3)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v2 = v16 & ~(v16 >> 63);
  do
  {
    if (v2 == v17)
    {
      __break(1u);
      goto LABEL_135;
    }

    if ((v146 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v18 = *(v146 + 8 * v17 + 32);
    }

    v19 = v18;
    v152 = 0x2067617420534156;
    v153 = 0xE900000000000023;
    v149 = v17;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 8250;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    v22 = [v19 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27 = v152;
    v3 = v153;
    v150 = v15;
    v29 = v15[2];
    v28 = v15[3];
    if (v29 >= v28 >> 1)
    {
      sub_10004E2DC((v28 > 1), v29 + 1, 1);
      v15 = v150;
    }

    ++v17;
    v15[2] = v29 + 1;
    v30 = &v15[2 * v29];
    v30[4] = v27;
    v30[5] = v3;
  }

  while (v14 != v17);
  v2 = v143;
LABEL_35:
  v152 = v15;
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0, &protocol conformance descriptor for [A]);
  v31 = BidirectionalCollection<>.joined(separator:)();
  v33 = v32;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v152 = v3;
    *v36 = 136315138;
    *(v36 + 4) = sub_100008F6C(v31, v33, &v152);
    _os_log_impl(&_mh_execute_header, v34, v35, "%s... Attempt connect to tag #0 ...", v36, 0xCu);
    sub_10000959C(v3);
  }

  v17 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
  if ((v146 & 0xC000000000000001) != 0)
  {
    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_40:
    v38 = v37;
    v152 = 0;
    v39 = [v17 connectTag:v37 error:&v152];

    if (!v39)
    {
      v47 = v152;

      v48 = _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v152 = v52;
        *v51 = 136315138;
        v150 = v48;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v53 = String.init<A>(describing:)();
        v55 = sub_100008F6C(v53, v54, &v152);

        *(v51 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v49, v50, "connect(_ tag: NFTag) Error: %s", v51, 0xCu);
        sub_10000959C(v52);
      }

      else
      {
      }

      return;
    }

    v40 = v152;
    v41 = v2;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134217984;
      v45 = (*(&v41->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig))[3];
      if (v45 >> 62)
      {
        v46 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v44 + 4) = v46;

      _os_log_impl(&_mh_execute_header, v42, v43, "Connected to tag #0. Preparing %ld VAS requests.", v44, 0xCu);
    }

    else
    {

      v42 = v41;
    }

    v56 = *(&v41->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig);
    v57 = *(v56 + 16);
    if (v57 > 1)
    {
      if (v57 == 2)
      {
        v63 = 1;
        goto LABEL_64;
      }

      if (v57 == 3)
      {
        v63 = 0;
LABEL_64:
        v64 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v63];
        v2 = *(v56 + 24);
        if (v2 >> 62)
        {
          v135 = v64;
          v65 = _CocoaArrayWrapper.endIndex.getter();
          v64 = v135;
        }

        else
        {
          v65 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v66 = _swiftEmptyArrayStorage;
        v146 = v41;
        v143 = v64;
        v142 = v17;
        if (v65)
        {
          v152 = _swiftEmptyArrayStorage;
          v67 = v64;

          specialized ContiguousArray.reserveCapacity(_:)();
          if (v65 < 0)
          {
            __break(1u);
            goto LABEL_163;
          }

          v68 = 0;
          v3 = 0;
          do
          {
            v69 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              goto LABEL_138;
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
              v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v68 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_140;
              }

              v70 = *(v2 + 8 * v68 + 32);
            }

            v71 = v70;
            v149 = v70;
            sub_10012F958(&v149, v67, &v150);

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++v68;
          }

          while (v69 != v65);

          v66 = v152;
          v17 = v142;
          v41 = v146;
        }

        sub_10000411C(0, &unk_1003A3C20, NFVASRequest_ptr);
        osloga = v66;
        isa = Array._bridgeToObjectiveC()().super.isa;
        v152 = 0;
        v73 = [v17 performVAS:isa error:&v152];

        v74 = v152;
        if (v73)
        {
          sub_10000411C(0, &unk_1003A3C30, NFVASResponse_ptr);
          v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;
          goto LABEL_94;
        }

        v76 = v152;
        v77 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v78 = sub_1000207FC(4029, 0, 0, 0);
        v79 = *(&v41->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
        v141 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
        *(&v41->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v78;

        swift_errorRetain();
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v152 = v83;
          *v82 = 136315138;
          v150 = v77;
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v84 = String.init<A>(describing:)();
          v86 = sub_100008F6C(v84, v85, &v152);

          *(v82 + 4) = v86;
          _os_log_impl(&_mh_execute_header, v80, v81, "performVAS Error: %s", v82, 0xCu);
          sub_10000959C(v83);
          v41 = v146;
        }

        v73 = _convertErrorToNSError(_:)();
        v87 = [v73 domain];
        v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v89;

        if (v88 == String.init(cString:)() && v90 == v91)
        {
        }

        else
        {
          v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v92 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        if ([v73 code] == 29)
        {
          v93 = sub_1000207FC(4042, 0, 0, 0);
          v94 = *(&v41->isa + v141);
          *(&v41->isa + v141) = v93;

          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            *v97 = 0;
            _os_log_impl(&_mh_execute_header, v95, v96, "readError set: vasTagError", v97, 2u);
          }
        }

        if ([v73 code] == 65)
        {
          v98 = sub_1000207FC(4030, 0, 0, 0);
          v99 = *(&v41->isa + v141);
          *(&v41->isa + v141) = v98;

          v100 = Logger.logObject.getter();
          v101 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            *v102 = 0;
            _os_log_impl(&_mh_execute_header, v100, v101, "readError set: vasSelectOSE", v102, 2u);
          }

          goto LABEL_93;
        }

LABEL_92:

LABEL_93:
        v2 = _swiftEmptyArrayStorage;
LABEL_94:

        v103 = v2 >> 62;
        if (v2 >> 62)
        {
          v14 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (osloga >> 62)
        {
          if (v14 == _CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_98;
          }
        }

        else if (v14 == *((osloga & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_98:
          *v148 = 0;
          v152 = 0;
          v147 = 0;
          v3 = Logger.logObject.getter();
          v104 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v3, v104))
          {
            v105 = swift_slowAlloc();
            *v105 = 0;
            _os_log_impl(&_mh_execute_header, v3, v104, " --- VAS Responses ---", v105, 2u);
          }

          if (v103)
          {
            v106 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v106 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v107 = _swiftEmptyArrayStorage;
          if (!v106)
          {
LABEL_118:
            if (v148[0] == 1)
            {
              v115 = 4022;
LABEL_122:
              v116 = sub_1000207FC(v115, 0, 0, 0);
              v117 = *(v146 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
              *(v146 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v116;

              goto LABEL_123;
            }

            if (v147 == 1)
            {
              v115 = 4012;
              goto LABEL_122;
            }

            if ((*(v146 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound) & 1) != 0 || *(v146 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK) == 1)
            {
              *(v146 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse) = v107;

              goto LABEL_123;
            }

LABEL_135:
            if (v152 != v14)
            {
              goto LABEL_123;
            }

            v115 = 4021;
            goto LABEL_122;
          }

          v150 = _swiftEmptyArrayStorage;

          specialized ContiguousArray.reserveCapacity(_:)();
          if ((v106 & 0x8000000000000000) == 0)
          {
            if (v103)
            {
              v108 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v108 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v109 = 0;
            v110 = v108 & ~(v108 >> 63);
            do
            {
              if (v110 == v109)
              {
                goto LABEL_139;
              }

              if ((v2 & 0xC000000000000001) != 0)
              {
                v111 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v109 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_143:
                  swift_once();
                  goto LABEL_5;
                }

                v111 = *(v2 + 8 * v109 + 32);
              }

              v112 = v111;
              v3 = (v109 + 1);
              sub_10013007C(v109, v111, v146, &v148[1], v148, &v147, &v152);

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v109 = v3;
            }

            while (v106 != v3);

            v107 = v150;
            if (v148[1])
            {
              v113 = sub_1000207FC(4020, 0, 0, 0);
              v114 = *(v146 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
              *(v146 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v113;

              v17 = v142;
LABEL_123:
              v118 = Logger.logObject.getter();
              v119 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v118, v119))
              {
                v120 = swift_slowAlloc();
                *v120 = 0;
                _os_log_impl(&_mh_execute_header, v118, v119, "disconnectTag()", v120, 2u);
              }

              v150 = 0;
              if (![v17 disconnectTag:&v150])
              {
                v122 = v150;
                v123 = _convertNSErrorToError(_:)();

                swift_willThrow();
                v150 = v123;
                swift_errorRetain();
                sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
                sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
                swift_dynamicCast();

                v124 = v149;
                v125 = Logger.logObject.getter();
                v126 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v125, v126))
                {
                  v127 = swift_slowAlloc();
                  v128 = swift_slowAlloc();
                  v151 = v128;
                  *v127 = 136315138;
                  v129 = v124;
                  v130 = [v129 description];
                  v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v133 = v132;

                  v134 = sub_100008F6C(v131, v133, &v151);

                  *(v127 + 4) = v134;
                  _os_log_impl(&_mh_execute_header, v125, v126, "disconnectTag Error: %s", v127, 0xCu);
                  sub_10000959C(v128);
                }

                else
                {
                }

                return;
              }

              v121 = v150;

LABEL_160:

              return;
            }

            v17 = v142;
            goto LABEL_118;
          }

LABEL_163:
          __break(1u);
        }

        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v136, v137))
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          return;
        }

        v138 = swift_slowAlloc();
        *v138 = 134218240;
        if (v103)
        {
          v139 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v139 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v138 + 4) = v139;

        *(v138 + 12) = 2048;
        if (osloga >> 62)
        {
          v140 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v140 = *((osloga & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v138 + 14) = v140;

        _os_log_impl(&_mh_execute_header, v136, v137, "responses.count: %ld, vasRequests.count: %ld, Error: Number of VAS Responses not equal to Requests", v138, 0x16u);

        goto LABEL_160;
      }
    }

    else
    {
      if (!v57)
      {

        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v58, v59, "Payment mode is invalid here", v60, 2u);
        }

        v61 = sub_1000207FC(4017, 0, 0, 0);
        v62 = *(&v41->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
        *(&v41->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v61;

        return;
      }

      if (v57 == 1)
      {
        v63 = 2;
        goto LABEL_64;
      }
    }

    type metadata accessor for SPRReaderMode(0);
    v152 = v57;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v146 + 32);
    goto LABEL_40;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  swift_once();
LABEL_9:
  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A3A90);

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    if (v3)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v13;

    _os_log_impl(&_mh_execute_header, oslog, v11, "tags.count is %ld, not > 0", v12, 0xCu);
  }

  else
  {
  }
}

id sub_10012F958@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v83 = a3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v80 = &v74[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v84 = &v74[-v10];
  __chkstk_darwin(v9);
  v12 = &v74[-v11];
  v13 = *a1;
  v14 = [objc_allocWithZone(NFVASRequest) init];
  v15 = [v13 merchantId];
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [v14 setMerchantId:v15];

  v16 = a2;
  [v14 setTerminalCap:a2];
  v17 = [v13 vasTerminalProtocol];
  [v14 setTerminalProtocol:v17];

  v18 = [v13 vasFilter];
  if (v18)
  {
    v19 = v18;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100009548(v20, v22);
  }

  else
  {
    v23.super.isa = 0;
  }

  [v14 setFilter:v23.super.isa];

  v24 = [v13 vasUrl];
  if (v24)
  {
    v25 = v24;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v26);
    v28 = v27;
    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v28 = 0;
  }

  v81 = v14;
  v82 = v6;
  v79 = v5;
  [v14 setSignupUrl:v28];

  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_10000403C(v29, qword_1003A3A90);
  v31 = v13;
  v32 = v16;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v75 = v34;
    v78 = v30;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v85 = v77;
    *v35 = 136315906;
    v37 = [v31 merchantId];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = sub_100008F6C(v38, v40, &v85);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2112;
    *(v35 + 14) = v32;
    v76 = v36;
    *v36 = v16;
    *(v35 + 22) = 2080;
    v42 = v32;
    v43 = [v31 vasTerminalProtocol];
    v44 = SPRVASTerminalProtocol.description.getter();
    v46 = v45;

    v47 = sub_100008F6C(v44, v46, &v85);

    *(v35 + 24) = v47;
    *(v35 + 32) = 2080;
    v48 = [v31 vasFilter];
    if (v48)
    {
      v49 = v48;
      v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0xC000000000000000;
    }

    v53 = Data.description.getter();
    v55 = v54;
    sub_100009548(v50, v52);
    v56 = sub_100008F6C(v53, v55, &v85);

    *(v35 + 34) = v56;
    _os_log_impl(&_mh_execute_header, v33, v75, "In NFVASRequest setting merchantId: %s, terminalCap: %@, terminalProtocol: %s, filter: %s", v35, 0x2Au);
    sub_10000BD44(v76, &unk_10039E220, &qword_1002C3D60);

    swift_arrayDestroy();
  }

  else
  {
  }

  result = [v31 vasUrl];
  v58 = v82;
  v59 = v80;
  if (result)
  {
    v60 = v84;
    v61 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = v79;
    (*(v58 + 16))(v59, v60, v79);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v85 = v66;
      *v65 = 136315138;
      sub_100138C60(&qword_1003A3C40, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v59;
      v70 = v69;
      v71 = *(v58 + 8);
      v71(v68, v62);
      v72 = sub_100008F6C(v67, v70, &v85);

      *(v65 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v63, v64, "signupUrl: %s", v65, 0xCu);
      sub_10000959C(v66);

      result = (v71)(v84, v62);
    }

    else
    {

      v73 = *(v58 + 8);
      v73(v59, v62);
      result = (v73)(v84, v62);
    }
  }

  *v83 = v81;
  return result;
}

void sub_10013007C(uint64_t a1, id a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, void *a7)
{
  v11 = [a2 mobileCapabilities];
  if (v11)
  {
    v12 = v11;
    if (([v11 unsignedCharValue] & 0xC) == 4)
    {
      a3[OBJC_IVAR____TtC14softposreaderd13ReadOperation_skipLoyalty] = 1;
    }

    v13 = [v12 unsignedCharValue];

    if ((~v13 & 0x30) == 0)
    {
      a3[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming] = 1;
    }
  }

  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000403C(v14, qword_1003A3A90);
  v15 = a2;
  v16 = a3;
  v17 = v15;
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = &selRef_currencyCode;
  v22 = &selRef_currencyCode;
  if (os_log_type_enabled(v19, v20))
  {
    v161 = v20;
    v162 = a6;
    v23 = 7104878;
    v24 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    *v24 = 134219778;
    *(v24 + 4) = a1;
    *(v24 + 12) = 2080;
    v25 = [v17 request];
    if (v25 && (v26 = v25, v27 = [v25 merchantId], v26, v27))
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v30 = sub_100008F6C(v23, v29, &v169);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2080;
    sub_100004074(&qword_10039E268, &unk_1002C16F0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1002C1660;
    v32 = [v17 statusCode];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 unsignedLongLongValue];

      v167 = &type metadata for UInt64;
      v168 = &protocol witness table for UInt64;
      *&v166 = v34;
      sub_100029790(&v166, v31 + 32);
    }

    else
    {
      *(v31 + 56) = &type metadata for Int;
      *(v31 + 64) = &protocol witness table for Int;
      *(v31 + 32) = 0;
    }

    v35 = String.init(format:_:)();
    v37 = sub_100008F6C(v35, v36, &v169);

    *(v24 + 24) = v37;
    *(v24 + 32) = 2080;
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002C1660;
    v39 = [v17 mobileCapabilities];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 unsignedLongLongValue];

      v167 = &type metadata for UInt64;
      v168 = &protocol witness table for UInt64;
      *&v166 = v41;
      sub_100029790(&v166, v38 + 32);
    }

    else
    {
      *(v38 + 56) = &type metadata for Int;
      *(v38 + 64) = &protocol witness table for Int;
      *(v38 + 32) = 0;
    }

    v42 = String.init(format:_:)();
    v44 = sub_100008F6C(v42, v43, &v169);

    *(v24 + 34) = v44;
    *(v24 + 42) = 1024;
    v45 = v18[OBJC_IVAR____TtC14softposreaderd13ReadOperation_skipLoyalty];

    *(v24 + 44) = v45;
    *(v24 + 48) = 1024;
    v46 = v18[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming];

    *(v24 + 50) = v46;
    *(v24 + 54) = 2080;
    v47 = [v17 vasData];
    if (v47)
    {
      v48 = v47;
      v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = Data.hexString()();
      countAndFlagsBits = v52._countAndFlagsBits;
      object = v52._object;
      sub_100009548(v49, v51);
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    *&v166 = countAndFlagsBits;
    *(&v166 + 1) = object;
    v55 = String.init<A>(_:)();
    v57 = sub_100008F6C(v55, v56, &v169);

    *(v24 + 56) = v57;
    *(v24 + 64) = 2080;
    v22 = &selRef_currencyCode;
    v58 = [v17 token];
    if (v58)
    {
      v59 = v58;
      v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63 = Data.hexString()();
      v64 = v63._countAndFlagsBits;
      v65 = v63._object;
      v66 = v62;
      v22 = &selRef_currencyCode;
      sub_100009548(v60, v66);
    }

    else
    {
      v64 = 0;
      v65 = 0xE000000000000000;
    }

    v21 = &selRef_currencyCode;
    *&v166 = v64;
    *(&v166 + 1) = v65;
    v67 = String.init<A>(_:)();
    v69 = sub_100008F6C(v67, v68, &v169);

    *(v24 + 66) = v69;
    _os_log_impl(&_mh_execute_header, v19, v161, "VAS response #%ld: (for merchantId: %s) -> statusCode: %s, mobileCapabilities: %s, skipLoyalty: %{BOOL}d, paymentDataForthcoming: %{BOOL}d, vasData: %s, mobileToken: %s", v24, 0x4Au);
    swift_arrayDestroy();

    a6 = v162;
  }

  else
  {
  }

  v70 = [v17 statusCode];
  sub_10000411C(0, &qword_1003A2308, NSNumber_ptr);
  v71 = v70;
  v72.super.super.isa = NSNumber.init(integerLiteral:)(25223).super.super.isa;
  if (!v71)
  {

    goto LABEL_33;
  }

  isa = v72.super.super.isa;
  v74 = static NSObject.== infix(_:_:)();

  if (v74)
  {

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "VasDataNotActivated", v77, 2u);
    }

    *a4 = 1;
    v78 = 25223;
    goto LABEL_89;
  }

  v82 = v71;
  v83 = NSNumber.init(integerLiteral:)(27012).super.super.isa;
  v84 = static NSObject.== infix(_:_:)();

  if (v84)
  {

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "VasUserIntervention", v87, 2u);
    }

    *a5 = 1;
    v78 = 27012;
    goto LABEL_89;
  }

  v88 = v82;
  v89 = NSNumber.init(integerLiteral:)(36864).super.super.isa;
  v90 = static NSObject.== infix(_:_:)();

  if (v90)
  {

    v91 = [v17 request];
    v92 = [v91 terminalProtocol];

    if (v92)
    {
      v93 = SPRVASTerminalProtocolProtocolFull;
      v94 = v92;
      v95 = static NSObject.== infix(_:_:)();

      if (v95)
      {

        v96 = [v17 v21[182]];
        if (v96)
        {
          v97 = v96;
          v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v100 = v99;

          sub_100009548(v98, v100);
          v101 = [v17 v21[182]];
          if (!v101)
          {
            goto LABEL_86;
          }

          v102 = v101;
          v103 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v104;

          v106 = v105;
          v107 = v105 >> 62;
          if ((v105 >> 62) <= 1)
          {
            if (!v107)
            {
              sub_100009548(v103, v105);
              v108 = BYTE6(v105);
              goto LABEL_80;
            }

LABEL_78:
            sub_100009548(v103, v106);
            LODWORD(v108) = HIDWORD(v103) - v103;
            if (!__OFSUB__(HIDWORD(v103), v103))
            {
              v108 = v108;
              goto LABEL_80;
            }

LABEL_103:
            __break(1u);
            return;
          }

          if (v107 == 2)
          {
            v145 = *(v103 + 16);
            v144 = *(v103 + 24);
            sub_100009548(v103, v106);
            v108 = v144 - v145;
            if (!__OFSUB__(v144, v145))
            {
LABEL_80:
              if (!v108)
              {
                goto LABEL_83;
              }

LABEL_86:
              v123 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound;
              goto LABEL_87;
            }

            __break(1u);
            goto LABEL_78;
          }

          sub_100009548(v103, v105);
        }

LABEL_83:
        *a6 = 1;
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          *v148 = 0;
          _os_log_impl(&_mh_execute_header, v146, v147, "foundVasDataInvalid", v148, 2u);
        }

        goto LABEL_86;
      }

      v121 = SPRVASTerminalProtocolSignUpOnly;
      v122 = static NSObject.== infix(_:_:)();

      if (v122)
      {
        v123 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK;
LABEL_87:
        v18[v123] = 1;
LABEL_88:
        v78 = 36864;
        goto LABEL_89;
      }
    }

    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&_mh_execute_header, v124, v125, "Invalid VASTerminalProtocol", v126, 2u);
    }

    goto LABEL_88;
  }

  v109 = v88;
  v110 = NSNumber.init(integerLiteral:)(27267).super.super.isa;
  v111 = static NSObject.== infix(_:_:)();

  if ((v111 & 1) == 0)
  {
    v115 = v109;
    v116 = NSNumber.init(integerLiteral:)(27392).super.super.isa;
    v117 = static NSObject.== infix(_:_:)();

    if (v117)
    {

      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&_mh_execute_header, v118, v119, "VasWrongParameters - Wrong P1, P2", v120, 2u);
      }

      v78 = 27392;
      goto LABEL_89;
    }

    v127 = v115;
    v128 = NSNumber.init(integerLiteral:)(26368).super.super.isa;
    v129 = static NSObject.== infix(_:_:)();

    if (v129)
    {

      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&_mh_execute_header, v130, v131, "VasWrongLCField - Wrong length of command data field", v132, 2u);
      }

      v78 = 26368;
      goto LABEL_89;
    }

    v133 = v127;
    v134 = NSNumber.init(integerLiteral:)(27264).super.super.isa;
    v135 = static NSObject.== infix(_:_:)();

    if (v135)
    {

      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&_mh_execute_header, v136, v137, "VasIncorrectData - Incorrect data in the command field", v138, 2u);
      }

      v78 = 27264;
      goto LABEL_89;
    }

    v139 = NSNumber.init(integerLiteral:)(25408).super.super.isa;
    v140 = static NSObject.== infix(_:_:)();

    if (v140)
    {
      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        *v143 = 0;
        _os_log_impl(&_mh_execute_header, v141, v142, "VasUnsupportedApplicationVersion", v143, 2u);
      }

      v78 = 25408;
      goto LABEL_89;
    }

LABEL_33:
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Unknown VAS Response Status Code", v81, 2u);
    }

    v78 = 0;
    goto LABEL_89;
  }

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&_mh_execute_header, v112, v113, "VasDataNotFound", v114, 2u);
  }

  if (__OFADD__(*a7, 1))
  {
    __break(1u);
    goto LABEL_103;
  }

  ++*a7;
  v78 = 27267;
LABEL_89:
  v149 = [v17 v21[182]];
  if (v149)
  {
    v150 = v149;
    v151 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v153 = v152;
  }

  else
  {
    v151 = 0;
    v153 = 0xF000000000000000;
  }

  v154 = [v17 v22[183]];
  if (v154)
  {
    v155 = v154;
    v156 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v158 = v157;
  }

  else
  {
    v156 = 0;
    v158 = 0xF000000000000000;
  }

  if (v153 >> 60 == 15)
  {
    v159 = 0;
  }

  else
  {
    v159 = Data._bridgeToObjectiveC()().super.isa;
    sub_10001A074(v151, v153);
  }

  if (v158 >> 60 == 15)
  {
    v160 = 0;
  }

  else
  {
    v160 = Data._bridgeToObjectiveC()().super.isa;
    sub_10001A074(v156, v158);
  }

  [objc_allocWithZone(SPRVASResponse) initWithStatus:v78 vasData:v159 mobileToken:v160];
}

void sub_100131058(uint64_t a1)
{
  v2 = v1;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v4 = sub_1000F5AC4(v29), (v5 & 1) != 0))
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v4, v30);
    sub_10001A124(v29);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {

      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000403C(v6, qword_1003A3A90);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "(Reader Mode) didStart polling A", v9, 2u);
      }

      v10 = (v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_pollingTracker);
      swift_beginAccess();
      if (v10[1] >= *v10)
      {
        atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
      }

LABEL_11:
      swift_endAccess();
      goto LABEL_13;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000403C(v24, qword_1003A3A90);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "(Reader Mode) didStart polling B", v27, 2u);
      }

      v28 = (v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_pollingTracker);
      swift_beginAccess();
      if (*v28 >= v28[1])
      {
        atomic_fetch_add_explicit(v28 + 1, 1u, memory_order_relaxed);
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_10001A124(v29);
  }

LABEL_13:
  v11 = (v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_pollingTracker);
  swift_beginAccess();
  v12 = v11[1];
  if (*v11 == 1 && v12 == 1)
  {
    v18 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
    v19 = *(v18 + 56);
    os_unfair_lock_lock(v19 + 8);
    sub_10011C8AC(&v19[4], 0);
    os_unfair_lock_unlock(v19 + 8);
    if (qword_10039D630 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for OSSignposter();
    sub_10000403C(v20, qword_1003A3AA8);
    v21 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
    sub_100186948("reader-ese_reader_mode_polling", 30, 2, v21, 0xD000000000000015, 0x800000010034F370);
    if (*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount) == 1 && (*(*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + 16) & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      sub_100186BE8("reader-vas_ese_reader_mode_switch", 33, 2, v21, 0xD00000000000001ELL, 0x800000010034F3C0);
      v22 = *(v18 + 56);
      os_unfair_lock_lock(v22 + 8);
      sub_10011D358(&v22[4], 2);
      os_unfair_lock_unlock(v22 + 8);
    }
  }

  else if (*v11 == v12)
  {
    v14 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotRemoveCard;
    if (*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotRemoveCard) == 1)
    {
      v15 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotSeePhone;
      if ((*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotSeePhone) & 1) == 0)
      {
        v16 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_cardTearSent;
        if ((*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_cardTearSent) & 1) == 0)
        {
          sub_100100D88(5, 0);
          v17 = *(*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics) + 56);
          os_unfair_lock_lock((v17 + 32));
          sub_10011C1A4((v17 + 16), 20, 1);
          os_unfair_lock_unlock((v17 + 32));
          *(v2 + v16) = 1;
          *(v2 + v14) = 0;
          *(v2 + v15) = 0;
        }
      }
    }
  }
}