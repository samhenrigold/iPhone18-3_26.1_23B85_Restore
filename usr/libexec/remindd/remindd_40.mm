uint64_t sub_1003BC468()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1003BC4F8()
{
  result = qword_10093D010;
  if (!qword_10093D010)
  {
    sub_1000F514C(&qword_10093D008, qword_10079AAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D010);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003BC55C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v91 = a4;
  v89 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v88 = &v83 - v13;
  __chkstk_darwin(v14, v15);
  v98 = &v83 - v16;
  __chkstk_darwin(v17, v18);
  v20 = &v83 - v19;
  v100 = &_swiftEmptyArrayStorage;
  v21 = sub_10038EEC4(&_swiftEmptyArrayStorage);
  v29 = v21;
  v30 = *(a1 + 16);
  if (!v30)
  {
    v21, v22, v23, v24, v25, v26, v27, v28;

    return sub_10038EEC4(&_swiftEmptyArrayStorage);
  }

  v87 = v10;
  v33 = *(v7 + 16);
  v31 = v7 + 16;
  v32 = v33;
  v34 = (a1 + ((*(v31 + 64) + 32) & ~*(v31 + 64)));
  v93 = (v31 + 16);
  v35 = (v31 - 8);
  v83 = (v31 + 24);
  v90 = &_swiftEmptyArrayStorage;
  v36 = *(v31 + 56);
  v84 = a2;
  v85 = (v31 - 8);
  v86 = v20;
  v92 = v33;
  v97 = v36;
  v33(v20, v34, v6);
  while (1)
  {
    if (!*(a2 + 16) || (v37 = sub_100363F20(v20), (v38 & 1) == 0))
    {
      (*v35)(v20, v6);
      goto LABEL_4;
    }

    v96 = v29;
    v39 = *(*(a2 + 56) + 16 * v37 + 8);
    v40 = (v39 ? v39 : 0xE000000000000000);

    v41 = String._bridgeToObjectiveC()();
    v40, v42, v43, v44, v45, v46, v47, v48;
    v49 = [v89 addListSectionWithDisplayName:v41 toListSectionContextChangeItem:v91];

    v95 = v49;
    v50 = [v49 objectID];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v90 = v100;
    v51 = v98;
    v52 = v31;
    v32(v98, v20, v6);
    v94 = v50;
    v53 = [v50 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = *v93;
    v55 = v87;
    (*v93)();
    v56 = v96;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = v56;
    v59 = sub_100363F20(v51);
    v60 = *v56->clientIdentity;
    v61 = (v58 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      break;
    }

    v63 = v58;
    if (*&v56->clientIdentity[8] >= v62)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003744A0();
      }
    }

    else
    {
      sub_10036C648(v62, isUniquelyReferenced_nonNull_native);
      v64 = sub_100363F20(v98);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_30;
      }

      v59 = v64;
    }

    v31 = v52;
    v29 = v99;
    if (v63)
    {
      (*v83)(*&v99->clientIdentity[40] + v59 * v97, v55, v6);

      v35 = v85;
      v66 = *v85;
      (*v85)(v98, v6);
      v20 = v86;
      v66(v86, v6);
    }

    else
    {
      *&v99->storeProvider[8 * (v59 >> 6) + 2] |= 1 << v59;
      v67 = v98;
      v68 = v59 * v97;
      v92(*&v29->clientIdentity[32] + v68, v98, v6);
      (v54)(*&v29->clientIdentity[40] + v68, v55, v6);

      v35 = v85;
      v69 = *v85;
      (*v85)(v67, v6);
      v20 = v86;
      v69(v86, v6);
      v70 = *v29->clientIdentity;
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_29;
      }

      *v29->clientIdentity = v72;
    }

    a2 = v84;
    v32 = v92;
    v36 = v97;
LABEL_4:
    v34 += v36;
    if (!--v30)
    {
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v73 = v90;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v73, v75, v76, v77, v78, v79, v80, v81;
      [v91 setUnsavedSectionIDsOrdering:isa];

      return v29;
    }

    v32(v20, v34, v6);
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1003BCB08(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RDSavedURLAttachment(0);
  v11 = *(v10 - 8);
  *&v13 = __chkstk_darwin(v10 - 8, v12).n128_u64[0];
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 attachmentContext];
  if (v16)
  {
    v17 = *(a1 + 16);
    if (v17)
    {
      v28[1] = v2;
      v18 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v29 = *(v11 + 72);
      v19 = (v6 + 16);
      v20 = (v6 + 8);
      v21 = v16;
      do
      {
        sub_10013FED4(v18, v15, type metadata accessor for RDSavedURLAttachment);
        (*v19)(v9, v15, v5);
        sub_1003BD550(v15, type metadata accessor for RDSavedURLAttachment);
        URL._bridgeToObjectiveC()(v22);
        v24 = v23;
        (*v20)(v9, v5);

        v18 += v29;
        --v17;
      }

      while (v17);
    }

    else
    {
    }
  }

  else
  {
    v25 = objc_opt_self();
    sub_1000060C8(0, &qword_100944BF8, REMReminderChangeItem_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = String._bridgeToObjectiveC()();
    [v25 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v27];

    swift_willThrow();
  }
}

double sub_1003BCDD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v101 = a4;
  v114 = a3;
  v106 = a2;
  v98 = type metadata accessor for Date();
  v5 = *(v98 - 8);
  __chkstk_darwin(v98, v6);
  v100 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v97 = &v90 - v10;
  v115 = type metadata accessor for UUID();
  v11 = *(v115 - 8);
  __chkstk_darwin(v115, v12);
  v96 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v99 = &v90 - v16;
  __chkstk_darwin(v17, v18);
  v104 = &v90 - v19;
  __chkstk_darwin(v20, v21);
  v107 = &v90 - v22;
  v23 = &qword_100944C00;
  v110 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
  __chkstk_darwin(v110, v24);
  v26 = &v90 - v25;
  v28 = a1 + 64;
  v27 = *(a1 + 64);
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  v102 = &_swiftEmptyArrayStorage;
  v116 = &_swiftEmptyArrayStorage;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v27;
  v32 = (v29 + 63) >> 6;
  v113 = v11 + 16;
  v105 = (v11 + 32);
  v95 = (v11 + 56);
  v94 = (v11 + 48);
  v111 = v11;
  v103 = (v11 + 8);
  v93 = (v5 + 8);
  v112 = a1;

  v33 = 0;
  v108 = a1 + 64;
  v109 = v32;
  while (v31)
  {
    v34 = v23;
LABEL_12:
    v36 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v37 = v112;
    v38 = *(v111 + 72);
    v39 = v38 * (v36 | (v33 << 6));
    v40 = *(v111 + 16);
    v41 = v26;
    v42 = v26;
    v43 = v115;
    v40(v41, *(v112 + 48) + v39, v115);
    v44 = *(v37 + 56);
    v45 = *(v110 + 48);
    v46 = v43;
    v26 = v42;
    v40((v42 + v45), v44 + v39, v46);
    v23 = v34;
    v32 = v109;
    if (*(v114 + 16) && (v47 = sub_100363F20(v42), (v48 & 1) != 0))
    {
      v49 = v104;
      v50 = v115;
      v40(v104, *(v114 + 56) + v47 * v38, v115);
      v51 = *v105;
      (*v105)(v107, v49, v50);
      if (!*(v106 + 16) || (v52 = sub_100363F20(v42 + v45), v50 = v115, (v53 & 1) == 0))
      {
        (*v103)(v107, v50);
        v23 = &qword_100944C00;
        v26 = v42;
        goto LABEL_5;
      }

      v54 = *(v106 + 56) + v52 * v38;
      v55 = v96;
      v40(v96, v54, v115);
      v56 = v99;
      v51(v99, v55, v50);
      v57 = v97;
      v40(v97, v56, v50);
      (*v95)(v57, 0, 1, v50);
      static Date.now.getter();
      v58.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v59 = v115;
      isa = v58.super.isa;
      if ((*v94)(v57, 1, v115) == 1)
      {
        v91 = 0;
        v23 = &qword_100944C00;
        v26 = v42;
        v60 = v103;
      }

      else
      {
        v91 = UUID._bridgeToObjectiveC()().super.isa;
        v60 = v103;
        (*v103)(v57, v59);
        v23 = &qword_100944C00;
        v26 = v42;
      }

      v61 = objc_allocWithZone(REMMembership);
      v62 = v100;
      v63 = Date._bridgeToObjectiveC()().super.isa;
      v64 = v61;
      v65 = isa;
      v66 = v91;
      v90 = [v64 initWithMemberIdentifier:isa groupIdentifier:v91 isObsolete:0 modifiedOn:v63];

      (*v93)(v62, v98);
      v67 = *v60;
      v68 = v115;
      (*v60)(v99, v115);
      v69 = v90;
      v67(v107, v68);
      sub_1000050A4(v26, &qword_100944C00, &qword_1007AD440);
      v28 = v108;
      if (v69)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v102 = v116;
      }
    }

    else
    {
LABEL_5:
      sub_1000050A4(v26, v23, &qword_1007AD440);
      v28 = v108;
    }
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v35 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v35);
    ++v33;
    if (v31)
    {
      v34 = v23;
      v33 = v35;
      goto LABEL_12;
    }
  }

  v31 = v102;
  if (!(v102 >> 62))
  {
    v77 = v101;
    if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_28:
  v89 = _CocoaArrayWrapper.endIndex.getter();
  v77 = v101;
  if (!v89)
  {
    goto LABEL_29;
  }

LABEL_25:
  if (v77)
  {
    v78 = objc_allocWithZone(REMMemberships);
    sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
    v79 = Array._bridgeToObjectiveC()().super.isa;
    v31, v80, v81, v82, v83, v84, v85, v86;
    v87 = [v78 initWithMemberships:v79];

    [v77 setUnsavedMembershipsOfRemindersInSections:v87];
    return result;
  }

LABEL_29:
  v31, v70, v71, v72, v73, v74, v75, v76;
  return result;
}

uint64_t sub_1003BD550(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003BD5B0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944C08);
  v1 = sub_100006654(v0, qword_100944C08);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003BD678(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x44497463656A626FLL;
    v5 = 0x636E657571657266;
    v6 = 0x6C61767265746E69;
    if (a1 != 3)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 0x6E65727275636572;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x54664F736B656577;
    v2 = 0x664F7368746E6F6DLL;
    if (a1 != 9)
    {
      v2 = 0x7469736F50746573;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    if (a1 <= 7u)
    {
      return 0x6854664F73796164;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1003BD82C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1003BD678(*a1);
  v5 = v4;
  v6 = sub_1003BD678(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_1003BD8B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1003BD678(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_1003BD918(uint64_t a1)
{
  sub_1003BD678(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_1003BD96C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1003BD678(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_1003BD9CC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003BF13C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003BD9FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003BD678(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1003BDA38@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003BF13C(a1);
  *a2 = result;
  return result;
}

void sub_1003BDA68(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1698, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_1003BDAD8(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1698, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

uint64_t sub_1003BDB3C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000F5104(&qword_100944E80, &qword_1007A5C10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_1003C00A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1003BDCC4()
{
  if (*v0)
  {
    return 0x626D754E6B656577;
  }

  else
  {
    return 0x656854664F796164;
  }
}

void sub_1003BDD0C(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  v12 = 0xEC0000006B656557;
  v13 = a1 == 0x656854664F796164 && a2 == 0xEC0000006B656557;
  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v14 = 0;
  }

  else if (a1 == 0x626D754E6B656577 && a2 == 0xEA00000000007265)
  {
    0xEA00000000007265, v12, a4, a5, a6, a7, a8, a9;
    v14 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a3 = v14;
}

uint64_t sub_1003BDDF4(uint64_t a1)
{
  v2 = sub_1003C00A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003BDE30(uint64_t a1)
{
  v2 = sub_1003C00A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003BDE88@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1003C00F8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003BDEF0(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a2 >> 60 != 15)
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    sub_100029344(a1, a2);
    JSONDecoder.init()();
    sub_1000F5104(&qword_100944E20, &qword_1007A59C8);
    sub_1003BFE98(&qword_100944E40, sub_1003BFF10, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v5 = *(v23 + 16);
    if (v5)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v6 = objc_opt_self();
      v7 = (v23 + 40);
      do
      {
        v8 = [v6 dayOfWeek:*(v7 - 1) weekNumber:*v7];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v7 += 2;
        --v5;
      }

      while (v5);

      sub_100031A14(a1, a2);
      v23, v9, v10, v11, v12, v13, v14, v15;
      return &_swiftEmptyArrayStorage;
    }

    else
    {

      sub_100031A14(a1, a2);
      v23, v16, v17, v18, v19, v20, v21, v22;
      return 0;
    }
  }

  return result;
}

char *sub_1003BE0EC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  *&v7 = __chkstk_darwin(v4, v6).n128_u64[0];
  v9 = &v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v197 = 0;
  v10 = [a1 remObjectIDWithError:{&v197, v7}];
  if (!v10)
  {
    v24 = v197;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v9;
  }

  v11 = v10;
  v192 = v5;
  v193 = v4;
  v12 = v197;
  v13 = [a1 account];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 remObjectID];

    v191 = v15;
    if (v15)
    {
      v16 = [a1 reminder];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 remObjectID];

        if (v18)
        {
          v184 = v18;
          v189 = [a1 frequency];
          v188 = [a1 interval];
          v187 = [a1 firstDayOfTheWeek];
          v19 = [a1 daysOfTheWeek];
          if (v19)
          {
            v20 = v19;
            v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v22;
          }

          else
          {
            v21 = 0;
            v23 = 0xF000000000000000;
          }

          v186 = sub_1003BDEF0(v21, v23);
          sub_100031A14(v21, v23);
          v59 = [a1 daysOfTheMonth];
          if (v59)
          {
            v60 = v59;
            v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v63 = v62;

            v64 = objc_opt_self();
            sub_100029344(v61, v63);
            isa = Data._bridgeToObjectiveC()().super.isa;
            *&v195 = 0;
            v66 = [v64 JSONObjectWithData:isa options:0 error:&v195];

            v67 = v195;
            if (v66)
            {
              _bridgeAnyObjectToAny(_:)();
              sub_10001BBA0(v61, v63);
              swift_unknownObjectRelease();
            }

            else
            {
              v68 = v67;
              _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_10001BBA0(v61, v63);

              v2 = 0;
              v197 = 0u;
              v198 = 0u;
            }

            v195 = v197;
            v196 = v198;
            if (*(&v198 + 1))
            {
              sub_1000F5104(&qword_100944E38, &qword_1007A59D0);
              if (swift_dynamicCast())
              {
                v185 = v194;
                sub_10001BBA0(v61, v63);
                goto LABEL_37;
              }
            }

            else
            {
              sub_1000050A4(&v195, &qword_100939ED0, &qword_100791B10);
            }

            sub_10001BBA0(v61, v63);
          }

          v185 = 0;
LABEL_37:
          v69 = [a1 monthsOfTheYear];
          if (v69)
          {
            v70 = v69;
            v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v73 = v72;

            v74 = objc_opt_self();
            sub_100029344(v71, v73);
            v75 = Data._bridgeToObjectiveC()().super.isa;
            *&v195 = 0;
            v76 = [v74 JSONObjectWithData:v75 options:0 error:&v195];

            v77 = v195;
            if (v76)
            {
              _bridgeAnyObjectToAny(_:)();
              sub_10001BBA0(v71, v73);
              swift_unknownObjectRelease();
            }

            else
            {
              v78 = v77;
              _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_10001BBA0(v71, v73);

              v2 = 0;
              v197 = 0u;
              v198 = 0u;
            }

            v195 = v197;
            v196 = v198;
            if (*(&v198 + 1))
            {
              sub_1000F5104(&qword_100944E38, &qword_1007A59D0);
              if (swift_dynamicCast())
              {
                v183 = v194;
                sub_10001BBA0(v71, v73);
                goto LABEL_47;
              }
            }

            else
            {
              sub_1000050A4(&v195, &qword_100939ED0, &qword_100791B10);
            }

            sub_10001BBA0(v71, v73);
          }

          v183 = 0;
LABEL_47:
          v79 = [a1 weeksOfTheYear];
          if (v79)
          {
            v80 = v79;
            v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v83 = v82;

            v84 = objc_opt_self();
            sub_100029344(v81, v83);
            v85 = Data._bridgeToObjectiveC()().super.isa;
            *&v195 = 0;
            v86 = [v84 JSONObjectWithData:v85 options:0 error:&v195];

            v87 = v195;
            if (v86)
            {
              _bridgeAnyObjectToAny(_:)();
              sub_10001BBA0(v81, v83);
              swift_unknownObjectRelease();
            }

            else
            {
              v88 = v87;
              _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_10001BBA0(v81, v83);

              v2 = 0;
              v197 = 0u;
              v198 = 0u;
            }

            v195 = v197;
            v196 = v198;
            if (*(&v198 + 1))
            {
              sub_1000F5104(&qword_100944E38, &qword_1007A59D0);
              if (swift_dynamicCast())
              {
                v182 = v194;
                sub_10001BBA0(v81, v83);
                goto LABEL_57;
              }
            }

            else
            {
              sub_1000050A4(&v195, &qword_100939ED0, &qword_100791B10);
            }

            sub_10001BBA0(v81, v83);
          }

          v182 = 0;
LABEL_57:
          v89 = [a1 daysOfTheYear];
          if (!v89)
          {
            v98 = 0;
            goto LABEL_67;
          }

          v90 = v89;
          v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v93 = v92;

          v94 = objc_opt_self();
          sub_100029344(v91, v93);
          v95 = Data._bridgeToObjectiveC()().super.isa;
          *&v195 = 0;
          v96 = [v94 JSONObjectWithData:v95 options:0 error:&v195];

          v97 = v195;
          if (v96)
          {
            _bridgeAnyObjectToAny(_:)();
            sub_10001BBA0(v91, v93);
            swift_unknownObjectRelease();
          }

          else
          {
            v99 = v97;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_10001BBA0(v91, v93);

            v2 = 0;
            v197 = 0u;
            v198 = 0u;
          }

          v195 = v197;
          v196 = v198;
          if (*(&v198 + 1))
          {
            sub_1000F5104(&qword_100944E38, &qword_1007A59D0);
            if (swift_dynamicCast())
            {
              v100 = v93;
              v98 = v194;
              sub_10001BBA0(v91, v100);
              goto LABEL_67;
            }
          }

          else
          {
            sub_1000050A4(&v195, &qword_100939ED0, &qword_100791B10);
          }

          sub_10001BBA0(v91, v93);
          v98 = 0;
LABEL_67:
          v101 = [a1 setPositions];
          if (v101)
          {
            v181 = v98;
            v102 = v101;
            v103 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v105 = v104;

            v106 = objc_opt_self();
            sub_100029344(v103, v105);
            v107 = Data._bridgeToObjectiveC()().super.isa;
            *&v195 = 0;
            v108 = [v106 JSONObjectWithData:v107 options:0 error:&v195];

            v109 = v195;
            if (v108)
            {
              _bridgeAnyObjectToAny(_:)();
              sub_10001BBA0(v103, v105);
              swift_unknownObjectRelease();
            }

            else
            {
              v110 = v109;
              _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_10001BBA0(v103, v105);

              v2 = 0;
              v197 = 0u;
              v198 = 0u;
            }

            v195 = v197;
            v196 = v198;
            v98 = v181;
            if (*(&v198 + 1))
            {
              sub_1000F5104(&qword_100944E38, &qword_1007A59D0);
              if (swift_dynamicCast())
              {
                v190 = v194;
                sub_10001BBA0(v103, v105);
                goto LABEL_77;
              }
            }

            else
            {
              sub_1000050A4(&v195, &qword_100939ED0, &qword_100791B10);
            }

            sub_10001BBA0(v103, v105);
          }

          v190 = 0;
LABEL_77:
          v111 = [a1 endDate];
          if (v111)
          {
            v112 = v111;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v113 = Date._bridgeToObjectiveC()().super.isa;
            v114 = [objc_opt_self() recurrenceEndWithEndDate:v113];

            (*(v192 + 1))(v9, v193);
          }

          else if ([a1 occurrenceCount] < 1)
          {
            v114 = 0;
          }

          else
          {
            v115 = [a1 occurrenceCount];
            if ((v115 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            v114 = [objc_opt_self() recurrenceEndWithOccurrenceCount:v115];
          }

          v116 = v186;
          if (v186)
          {
            sub_1000060C8(0, &qword_100941E10, REMRecurrenceDayOfWeek_ptr);
            v193 = Array._bridgeToObjectiveC()().super.isa;
            v116, v117, v118, v119, v120, v121, v122, v123;
            v124 = v185;
            if (v185)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v193 = 0;
            v124 = v185;
            if (v185)
            {
LABEL_85:
              sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
              v192 = Array._bridgeToObjectiveC()().super.isa;
              v124, v125, v126, v127, v128, v129, v130, v131;
              v132 = v183;
              if (v183)
              {
LABEL_86:
                sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
                v133.super.isa = Array._bridgeToObjectiveC()().super.isa;
                v132, v134, v135, v136, v137, v138, v139, v140;
LABEL_90:
                v141 = v182;
                if (v182)
                {
                  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
                  v186 = Array._bridgeToObjectiveC()().super.isa;
                  v141, v142, v143, v144, v145, v146, v147, v148;
                }

                else
                {
                  v186 = 0;
                }

                v149 = v189;
                v150 = v188;
                v188 = v187;
                v189 = v150;
                if (v98)
                {
                  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
                  v151.super.isa = Array._bridgeToObjectiveC()().super.isa;
                  v98, v152, v153, v154, v155, v156, v157, v158;
                }

                else
                {
                  v151.super.isa = 0;
                }

                v159 = v184;
                v181 = v2;
                v160 = v11;
                if (v190)
                {
                  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
                  v161 = v149;
                  v162 = v190;
                  v163.super.isa = Array._bridgeToObjectiveC()().super.isa;
                  v164 = v162;
                  v149 = v161;
                  v164, v165, v166, v167, v168, v169, v170, v171;
                }

                else
                {
                  v163.super.isa = 0;
                }

                v172 = objc_allocWithZone(REMRecurrenceRule);
                v180 = v114;
                v178 = v114;
                v173 = v186;
                v177 = v133.super.isa;
                v190 = v133.super.isa;
                v174 = v192;
                v175 = v193;
                v176 = v191;
                v9 = [v172 initRecurrenceRuleWithObjectID:v160 accountID:v191 reminderID:v159 frequency:v149 interval:v189 firstDayOfTheWeek:v188 daysOfTheWeek:v193 daysOfTheMonth:v192 monthsOfTheYear:v177 weeksOfTheYear:v186 daysOfTheYear:v151.super.isa setPositions:v163.super.isa end:v178];

                return v9;
              }

LABEL_89:
              v133.super.isa = 0;
              goto LABEL_90;
            }
          }

          v192 = 0;
          v132 = v183;
          if (v183)
          {
            goto LABEL_86;
          }

          goto LABEL_89;
        }
      }
    }
  }

  v25 = [a1 account];
  if (v25)
  {
    v26 = v25;
    v27 = 0xE900000000000029;
  }

  else
  {
    if (qword_100935FA8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100944C08);
    v29 = v11;
    v26 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v29;
      *v32 = v11;
      v33 = v29;
      _os_log_impl(&_mh_execute_header, v26, v30, "REMRecurrenceRuleCDIngestor: cdRecurrenceRule.account is nil {cdRecurrenceRule.remObjectID: %@}", v31, 0xCu);
      sub_1000050A4(v32, &unk_100938E70, &unk_100797230);
    }

    v27 = 0xE700000000000000;
  }

  v34 = [a1 reminder];
  if (v34)
  {
    v42 = v34;
  }

  else
  {
    v27, v35, v36, v37, v38, v39, v40, v41;
    if (qword_100935FA8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_100944C08);
    v44 = v11;
    v42 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v44;
      *v47 = v11;
      v48 = v44;
      _os_log_impl(&_mh_execute_header, v42, v45, "REMRecurrenceRuleCDIngestor: cdRecurrenceRule.reminder is nil {cdRecurrenceRule.remObjectID: %@}", v46, 0xCu);
      sub_1000050A4(v47, &unk_100938E70, &unk_100797230);
    }

    v27 = 0xE800000000000000;
  }

  v9 = objc_opt_self();
  sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = String._bridgeToObjectiveC()();
  v27, v51, v52, v53, v54, v55, v56, v57;
  [v9 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v50];

  swift_willThrow();
  return v9;
}

unint64_t sub_1003BF13C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0C40, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

void sub_1003BF188(void *a1, void *a2, uint64_t a3)
{
  v216 = type metadata accessor for Date();
  v6 = *(v216 - 8);
  __chkstk_darwin(v216, v7);
  v215 = &v211 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  *&v13 = __chkstk_darwin(v9, v10).n128_u64[0];
  v14 = &v211 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = *(a3 + 16);
  if (v222)
  {
    v15 = a3 + 32;
    v16 = 0;
    v213 = a2;
    v214 = (v6 + 8);
    v218 = v9;
    v219 = (v11 + 8);
    v217 = &v211 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = v222;
    v223 = v15;
    v212 = a1;
    do
    {
      v19 = *(v15 + v16);
      if (v19 <= 4)
      {
        if (*(v15 + v16) <= 1u)
        {
          if (!*(v15 + v16))
          {
            v58 = v16;
            v59 = [a1 objectID];
            v60 = [v59 uuid];

            static UUID._unconditionallyBridgeFromObjectiveC(_:)();
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*v219)(v14, v9);
            [a2 setIdentifier:isa];

LABEL_66:
            v16 = v58;
            goto LABEL_6;
          }

          v96 = [a1 recurrenceEnd];
          if (v96)
          {
            v97 = v96;
            v58 = v16;
            v98 = [v96 endDate];
            if (v98)
            {
              v99 = v215;
              v100 = v98;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v101.super.isa = Date._bridgeToObjectiveC()().super.isa;
              (*v214)(v99, v216);
            }

            else
            {
              v101.super.isa = 0;
            }

            [a2 setEndDate:v101.super.isa];

            v146 = [v97 occurrenceCount];
            if ((v146 & 0x8000000000000000) != 0)
            {
              goto LABEL_89;
            }

            [a2 setOccurrenceCount:v146];

            v17 = v222;
            goto LABEL_66;
          }

          v17 = v222;
        }

        else if (v19 == 2)
        {
          v62 = [a1 frequency];
          if (v62 < -32768)
          {
            goto LABEL_84;
          }

          if (v62 >= 0x8000)
          {
            goto LABEL_86;
          }

          [a2 setFrequency:v62];
        }

        else if (v19 == 3)
        {
          v39 = [a1 interval];
          if (v39 < -32768)
          {
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
          }

          if (v39 >= 0x8000)
          {
            goto LABEL_88;
          }

          [a2 setInterval:v39];
        }

        else
        {
          v95 = [a1 firstDayOfTheWeek];
          if (v95 < -32768)
          {
            goto LABEL_85;
          }

          if (v95 >= 0x8000)
          {
            goto LABEL_87;
          }

          [a2 setFirstDayOfTheWeek:v95];
        }
      }

      else
      {
        if (*(v15 + v16) > 7u)
        {
          v20 = v16;
          if (v19 == 8)
          {
            v77 = [a1 weeksOfTheYear];
            if (v77)
            {
              v78 = v77;
              sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
              v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v80 = objc_opt_self();
              v81 = Array._bridgeToObjectiveC()().super.isa;
              v225 = 0;
              v82 = [v80 dataWithJSONObject:v81 options:0 error:&v225];

              v83 = v225;
              if (v82)
              {
                v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v86 = v85;

                v79, v87, v88, v89, v90, v91, v92, v93;
                v18 = Data._bridgeToObjectiveC()().super.isa;
                v94 = v86;
                v17 = v222;
                sub_10001BBA0(v84, v94);
              }

              else
              {
                v138 = v83;
                _convertNSErrorToError(_:)();

                swift_willThrow();
                v79, v139, v140, v141, v142, v143, v144, v145;

                v18 = 0;
                v221 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            [a2 setWeeksOfTheYear:v18];
          }

          else if (v19 == 9)
          {
            v40 = [a1 monthsOfTheYear];
            if (v40)
            {
              v41 = v40;
              sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
              v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v43 = objc_opt_self();
              v44 = Array._bridgeToObjectiveC()().super.isa;
              v225 = 0;
              v45 = [v43 dataWithJSONObject:v44 options:0 error:&v225];

              v46 = v225;
              if (v45)
              {
                v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v49 = v48;

                v42, v50, v51, v52, v53, v54, v55, v56;
                v18 = Data._bridgeToObjectiveC()().super.isa;
                v57 = v49;
                v17 = v222;
                sub_10001BBA0(v47, v57);
              }

              else
              {
                v155 = v46;
                _convertNSErrorToError(_:)();

                swift_willThrow();
                v42, v156, v157, v158, v159, v160, v161, v162;

                v18 = 0;
                v221 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            [a2 setMonthsOfTheYear:v18];
          }

          else
          {
            v120 = [a1 setPositions];
            if (v120)
            {
              v121 = v120;
              sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
              v122 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v123 = objc_opt_self();
              v124 = Array._bridgeToObjectiveC()().super.isa;
              v225 = 0;
              v125 = [v123 dataWithJSONObject:v124 options:0 error:&v225];

              v126 = v225;
              if (v125)
              {
                v127 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v129 = v128;

                v122, v130, v131, v132, v133, v134, v135, v136;
                v18 = Data._bridgeToObjectiveC()().super.isa;
                v137 = v129;
                v17 = v222;
                sub_10001BBA0(v127, v137);
              }

              else
              {
                v171 = v126;
                _convertNSErrorToError(_:)();

                swift_willThrow();
                v122, v172, v173, v174, v175, v176, v177, v178;

                v18 = 0;
                v221 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            [a2 setSetPositions:v18];
          }
        }

        else
        {
          if (v19 == 5)
          {
            v220 = v16;
            v63 = [a1 daysOfTheWeek];
            if (v63)
            {
              sub_1000060C8(0, &qword_100941E10, REMRecurrenceDayOfWeek_ptr);
              v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v65 = v64;
              if (v64 >> 62)
              {
                v66 = _CocoaArrayWrapper.endIndex.getter();
                if (!v66)
                {
                  goto LABEL_76;
                }

LABEL_33:
                v225 = &_swiftEmptyArrayStorage;
                sub_100253B44(0, v66 & ~(v66 >> 63), 0);
                if (v66 < 0)
                {
                  goto LABEL_90;
                }

                v67 = 0;
                v68 = v225;
                v69 = v65;
                v224 = v65 & 0xC000000000000001;
                do
                {
                  if (v224)
                  {
                    v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v70 = *(v69 + 8 * v67 + 32);
                  }

                  v71 = v70;
                  v72 = [v70 dayOfTheWeek];
                  v73 = [v71 weekNumber];

                  v225 = v68;
                  v75 = *v68->clientIdentity;
                  v74 = *&v68->clientIdentity[8];
                  if (v75 >= v74 >> 1)
                  {
                    sub_100253B44((v74 > 1), v75 + 1, 1);
                    v68 = v225;
                  }

                  ++v67;
                  *v68->clientIdentity = v75 + 1;
                  v76 = v68 + 16 * v75;
                  *(v76 + 4) = v72;
                  *(v76 + 5) = v73;
                  v69 = v65;
                }

                while (v66 != v67);
                a1 = v212;
                a2 = v213;
                v17 = v222;
                v15 = v223;
              }

              else
              {
                v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v66)
                {
                  goto LABEL_33;
                }

LABEL_76:
                v68 = &_swiftEmptyArrayStorage;
              }

              type metadata accessor for JSONEncoder();
              swift_allocObject();
              JSONEncoder.init()();
              v225 = v68;
              sub_1000F5104(&qword_100944E20, &qword_1007A59C8);
              sub_1003BFE98(&qword_100944E28, sub_1003BFE44, &protocol conformance descriptor for <A> [A]);
              v179 = v221;
              v180 = dispatch thunk of JSONEncoder.encode<A>(_:)();
              if (v179)
              {

                v68, v188, v189, v190, v191, v192, v193, v194;

                v65, v195, v196, v197, v198, v199, v200, v201;
                v63 = 0;
                v221 = 0;
              }

              else
              {
                v221 = 0;
                v202 = v180;
                v203 = v181;
                v68, v181, v182, v183, v184, v185, v186, v187;

                v65, v204, v205, v206, v207, v208, v209, v210;
                v63 = Data._bridgeToObjectiveC()().super.isa;
                sub_10001BBA0(v202, v203);
              }

              v14 = v217;
              v9 = v218;
            }

            [a2 setDaysOfTheWeek:v63];

            v16 = v220;
            goto LABEL_6;
          }

          v20 = v16;
          if (v19 == 6)
          {
            v21 = [a1 daysOfTheMonth];
            if (v21)
            {
              v22 = v21;
              sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
              v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v24 = objc_opt_self();
              v25 = Array._bridgeToObjectiveC()().super.isa;
              v225 = 0;
              v26 = [v24 dataWithJSONObject:v25 options:0 error:&v225];

              v27 = v225;
              if (v26)
              {
                v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v30 = v29;

                v23, v31, v32, v33, v34, v35, v36, v37;
                v18 = Data._bridgeToObjectiveC()().super.isa;
                v38 = v30;
                v17 = v222;
                sub_10001BBA0(v28, v38);
              }

              else
              {
                v147 = v27;
                _convertNSErrorToError(_:)();

                swift_willThrow();
                v23, v148, v149, v150, v151, v152, v153, v154;

                v18 = 0;
                v221 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            [a2 setDaysOfTheMonth:v18];
          }

          else
          {
            v102 = [a1 daysOfTheYear];
            if (v102)
            {
              v103 = v102;
              sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
              v104 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v105 = objc_opt_self();
              v106 = Array._bridgeToObjectiveC()().super.isa;
              v225 = 0;
              v107 = [v105 dataWithJSONObject:v106 options:0 error:&v225];

              v108 = v225;
              if (v107)
              {
                v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v111 = v110;

                v104, v112, v113, v114, v115, v116, v117, v118;
                v18 = Data._bridgeToObjectiveC()().super.isa;
                v119 = v111;
                v17 = v222;
                sub_10001BBA0(v109, v119);
              }

              else
              {
                v163 = v108;
                _convertNSErrorToError(_:)();

                swift_willThrow();
                v104, v164, v165, v166, v167, v168, v169, v170;

                v18 = 0;
                v221 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            [a2 setDaysOfTheYear:v18];
          }
        }

        v16 = v20;
        v15 = v223;
      }

LABEL_6:
      ++v16;
    }

    while (v16 != v17);
  }
}

unint64_t sub_1003BFE44()
{
  result = qword_100944E30;
  if (!qword_100944E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E30);
  }

  return result;
}

uint64_t sub_1003BFE98(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_100944E20, &qword_1007A59C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003BFF10()
{
  result = qword_100944E48;
  if (!qword_100944E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E48);
  }

  return result;
}

unint64_t sub_1003BFFC8()
{
  result = qword_100944E60;
  if (!qword_100944E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E60);
  }

  return result;
}

unint64_t sub_1003C0050()
{
  result = qword_100944E78;
  if (!qword_100944E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E78);
  }

  return result;
}

unint64_t sub_1003C00A4()
{
  result = qword_100944E88;
  if (!qword_100944E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E88);
  }

  return result;
}

uint64_t sub_1003C00F8(void *a1)
{
  v2 = sub_1000F5104(&qword_100944E90, &qword_1007A5C18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v9[-v5];
  sub_10000F61C(a1, a1[3]);
  sub_1003C00A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v9[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000607C(a1);
  return v7;
}

unint64_t sub_1003C02B4()
{
  result = qword_100944E98;
  if (!qword_100944E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E98);
  }

  return result;
}

unint64_t sub_1003C030C()
{
  result = qword_100944EA0;
  if (!qword_100944EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944EA0);
  }

  return result;
}

unint64_t sub_1003C0364()
{
  result = qword_100944EA8;
  if (!qword_100944EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944EA8);
  }

  return result;
}

uint64_t sub_1003C03B8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944EB0);
  v1 = sub_100006654(v0, qword_100944EB0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDAttachment.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t static REMCDAttachment.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  sub_1000060C8(0, &unk_100939E30, off_1008D4160);
  v8 = CKRecord.subscript.getter();
  if (v8)
  {
    v102 = v8;
    sub_1000F5104(&qword_100938860, &unk_1007A4830);
    if (swift_dynamicCast())
    {
      countAndFlagsBits = v101._countAndFlagsBits;
      object = v101._object;

      v11 = _findStringSwitchCase(cases:string:)(&off_1008E2F38, v101);
      v101._object, v12, v13, v14, v15, v16, v17, v18;
      switch(v11)
      {
        case 0:
          v101._object, v19, v20, v21, v22, v23, v24, v25;
          v26 = &qword_100939DF0;
          v27 = off_1008D4188;
          goto LABEL_9;
        case 2:
          v101._object, v19, v20, v21, v22, v23, v24, v25;
          v26 = &qword_100944EC8;
          v27 = off_1008D41F0;
          goto LABEL_9;
        case 1:
          v101._object, v19, v20, v21, v22, v23, v24, v25;
          v26 = &unk_100944ED0;
          v27 = off_1008D41A0;
LABEL_9:
          sub_1000060C8(0, v26, v27);
          goto LABEL_10;
      }

      if (qword_100935FB0 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100006654(v65, qword_100944EB0);

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      v101._object, v68, v69, v70, v71, v72, v73, v74;
      if (os_log_type_enabled(v66, v67))
      {
        v82 = swift_slowAlloc();
        log = v66;
        v101._countAndFlagsBits = swift_slowAlloc();
        v83 = v101._countAndFlagsBits;
        *v82 = 136315138;
        v84 = sub_10000668C(countAndFlagsBits, object, &v101._countAndFlagsBits);
        object, v85, v86, v87, v88, v89, v90, v91;
        *(v82 + 4) = v84;
        _os_log_impl(&_mh_execute_header, log, v67, "newCloudObject: Unknown attachment type {type: %s}", v82, 0xCu);
        sub_10000607C(v83);
      }

      else
      {
        v101._object, v75, v76, v77, v78, v79, v80, v81;
      }
    }
  }

LABEL_10:
  v28 = [a1 recordID];
  v29 = [v28 recordName];

  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
    v29 = String._bridgeToObjectiveC()();
    v31, v32, v33, v34, v35, v36, v37, v38;
  }

  v39 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v29 context:a3 account:a2];

  if (v39)
  {
    v40 = [a2 ckIdentifier];
    if (v40)
    {
      v41 = v40;
      [v39 mergeDataFromRecord:a1 accountID:v40];

      v42 = v39;
      [v42 setCkServerRecord:a1];
      [v42 setInCloud:1];

      [v42 updateParentReferenceIfNecessary];
      result = swift_dynamicCastUnknownClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (qword_100935FB0 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100006654(v44, qword_100944EB0);
      v45 = a2;
      v42 = Logger.logObject.getter();
      v46 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v42, v46))
      {
        v47 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v47 = 136446466;
        v101._countAndFlagsBits = v4;
        swift_getMetatypeMetadata();
        v48 = String.init<A>(describing:)();
        v50 = v49;
        v51 = sub_10000668C(v48, v49, &v102);
        v50, v52, v53, v54, v55, v56, v57, v58;
        *(v47 + 4) = v51;
        *(v47 + 12) = 2082;
        v59 = [v45 remObjectID];
        if (v59)
        {
          v60 = v59;
          v61 = [v59 description];

          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
        }

        else
        {
          v64 = 0xE300000000000000;
          v62 = 7104878;
        }

        v92 = sub_10000668C(v62, v64, &v102);
        v64, v93, v94, v95, v96, v97, v98, v99;
        *(v47 + 14) = v92;
        _os_log_impl(&_mh_execute_header, v42, v46, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v47, 0x16u);
        swift_arrayDestroy();
      }
    }
  }

  return 0;
}

Swift::String __swiftcall REMCDAttachment.recordType()()
{
  v0 = 0x656D686361747441;
  v1 = 0xEA0000000000746ELL;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void sub_1003C0C58(NSObject *a1)
{
  v3 = type metadata accessor for URL();
  isa = v3[-1].isa;
  v352 = v3;
  __chkstk_darwin(v3, v4);
  v353 = (&v342 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for UUID();
  v355 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v350 = (&v342 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9, v10);
  v12 = &v342 - v11;
  __chkstk_darwin(v13, v14);
  v16 = &v342 - v15;
  __chkstk_darwin(v17, v18);
  v20 = &v342 - v19;
  __chkstk_darwin(v21, v22);
  v349 = (&v342 - v23);
  __chkstk_darwin(v24, v25);
  v27 = &v342 - v26;
  __chkstk_darwin(v28, v29);
  v31 = &v342 - v30;
  __chkstk_darwin(v32, v33);
  v35 = &v342 - v34;
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (!v36)
  {
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v136 = type metadata accessor for Logger();
    sub_100006654(v136, qword_100944EB0);
    v137 = v1;
    v355 = Logger.logObject.getter();
    v138 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v355, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v356 = v140;
      *v139 = 136315138;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
      v141 = String.init<A>(describing:)();
      v143 = v142;
      v144 = sub_10000668C(v141, v142, &v356);
      v143, v145, v146, v147, v148, v149, v150, v151;
      *(v139 + 4) = v144;
      _os_log_impl(&_mh_execute_header, v355, v138, "Not a file attachment {Type: %s}", v139, 0xCu);
      sub_10000607C(v140);
    }

    else
    {
      v163 = v355;
    }

    return;
  }

  v37 = v36;
  v347 = v6;
  v348 = v35;
  v38 = v1;
  v354 = a1;
  v39 = [a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  swift_unknownObjectRelease();
  v40 = v357;
  if (!v357)
  {
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v152 = type metadata accessor for Logger();
    sub_100006654(v152, qword_100944EB0);
    v153 = v38;
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      ObjectType = v157;
      *v156 = 136315138;
      v158 = [v37 fileName];
      if (v158)
      {
        v159 = v158;
        v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v162 = v161;
      }

      else
      {
        v160 = 0;
        v162 = 0;
      }

      v356 = v160;
      v357 = v162;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v207 = String.init<A>(describing:)();
      v209 = v208;
      v210 = sub_10000668C(v207, v208, &ObjectType);
      v209, v211, v212, v213, v214, v215, v216, v217;
      *(v156 + 4) = v210;
      _os_log_impl(&_mh_execute_header, v154, v155, "Filename is not a string {value: %s}", v156, 0xCu);
      sub_10000607C(v157);
    }

    else
    {
    }

    return;
  }

  v41 = v356;
  v42 = String._bridgeToObjectiveC()();
  [v37 setFileName:v42];

  v346 = [v38 remObjectID];
  if (!v346)
  {
    v40, v43, v44, v45, v46, v47, v48, v49;
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v174 = type metadata accessor for Logger();
    sub_100006654(v174, qword_100944EB0);
    v175 = v354;
    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      *v178 = 138412290;
      *(v178 + 4) = v175;
      *v179 = v175;
      v180 = v175;
      _os_log_impl(&_mh_execute_header, v176, v177, "File attachment has no remObjectID {record: %@}", v178, 0xCu);
      sub_1000050A4(v179, &unk_100938E70, &unk_100797230);
    }

    return;
  }

  v345 = v38;
  v50 = [v38 account];
  if (!v50 || (v58 = v50, v59 = [v50 remObjectID], v58, !v59))
  {
    v40, v51, v52, v53, v54, v55, v56, v57;
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v164 = type metadata accessor for Logger();
    sub_100006654(v164, qword_100944EB0);
    v165 = v346;
    v166 = v346;
    v167 = v354;
    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *v170 = 138543618;
      *(v170 + 4) = v166;
      *(v170 + 12) = 2112;
      *(v170 + 14) = v167;
      *v171 = v165;
      v171[1] = v167;
      v172 = v166;
      v173 = v167;
      _os_log_impl(&_mh_execute_header, v168, v169, "File attachment has no account {remObjectID: %{public}@, record: %@}", v170, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  v60 = [v59 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (v355[4].isa)(v348, v31, v347);
  v61 = v345;
  v62 = [v345 storeControllerManagedObjectContext];
  if (!v62 || (v70 = v62, v71 = [v62 storeController], v70, !v71))
  {
    v40, v63, v64, v65, v66, v67, v68, v69;
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v181 = type metadata accessor for Logger();
    sub_100006654(v181, qword_100944EB0);
    v182 = v355;
    v184 = v347;
    v183 = v348;
    (v355[2].isa)(v12, v348, v347);
    v185 = v346;
    v186 = v346;
    v187 = v354;
    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v353 = swift_slowAlloc();
      v356 = v353;
      *v190 = 138543874;
      *(v190 + 4) = v186;
      *v191 = v185;
      *(v190 + 12) = 2082;
      sub_1001B397C();
      v192 = v182;
      v354 = v186;
      v352 = v188;
      v193 = dispatch thunk of CustomStringConvertible.description.getter();
      v195 = v194;
      v196 = v192[1].isa;
      v196(v12, v184);
      v197 = sub_10000668C(v193, v195, &v356);
      v195, v198, v199, v200, v201, v202, v203, v204;
      *(v190 + 14) = v197;
      *(v190 + 22) = 2112;
      *(v190 + 24) = v187;
      v191[1] = v187;
      v205 = v187;
      v206 = v352;
      _os_log_impl(&_mh_execute_header, v352, v189, "No store controller for updating file attachment {remObjectID: %{public}@, accountUUID: (%{public}s, record: %@}", v190, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v353);

      v196(v348, v184);
    }

    else
    {

      v218 = v182[1].isa;
      v218(v12, v184);
      v218(v183, v184);
    }

    return;
  }

  v344 = v71;
  v72 = v354;
  v73 = CKRecord.subscript.getter();
  if (!v73)
  {
    v40, v74, v75, v76, v77, v78, v79, v80;
    v90 = v355;
LABEL_46:
    v219 = v347;
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v220 = type metadata accessor for Logger();
    sub_100006654(v220, qword_100944EB0);
    (v90[2].isa)(v16, v348, v219);
    v221 = v346;
    v222 = v346;
    v223 = v72;
    v224 = Logger.logObject.getter();
    v225 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v224, v225))
    {
      v226 = v90;
      v227 = swift_slowAlloc();
      v228 = swift_slowAlloc();
      v353 = v224;
      v229 = v219;
      v230 = v228;
      v354 = swift_slowAlloc();
      v356 = v354;
      *v227 = 138543874;
      *(v227 + 4) = v222;
      *v230 = v221;
      *(v227 + 12) = 2082;
      sub_1001B397C();
      v231 = v226;
      v355 = v222;
      v232 = dispatch thunk of CustomStringConvertible.description.getter();
      v234 = v233;
      v235 = v231[1].isa;
      v235(v16, v229);
      v236 = sub_10000668C(v232, v234, &v356);
      v234, v237, v238, v239, v240, v241, v242, v243;
      *(v227 + 14) = v236;
      *(v227 + 22) = 2112;
      *(v227 + 24) = v223;
      v230[1] = v223;
      v244 = v223;
      v245 = v353;
      _os_log_impl(&_mh_execute_header, v353, v225, "File asset missing for file attachment {remObjectID: %{public}@, accountUUID: (%{public}s, record: %@}", v227, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v354);

      v235(v348, v229);
      return;
    }

    v246 = v90[1].isa;
    v246(v16, v219);
    v247 = v348;
    v248 = v219;
    goto LABEL_51;
  }

  v81 = v73;
  v343 = v41;
  objc_opt_self();
  v82 = swift_dynamicCastObjCClass();
  v90 = v355;
  if (!v82)
  {
    v40, v83, v84, v85, v86, v87, v88, v89;
    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  v91 = [v82 fileURL];
  if (v91)
  {
    v99 = v353;
    v100 = v91;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    static REMFileDigester.sha512Sum(url:)();
    if (v101)
    {
      v342 = v81;
      v108 = v101;
      v109 = String._bridgeToObjectiveC()();
      [v37 setSha512Sum:v109];

      v110 = [v346 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v111 = UUID._bridgeToObjectiveC()().super.isa;
      v112 = v90 + 1;
      v349 = v90[1].isa;
      v349(v27, v347);
      v113 = v348;
      v114 = UUID._bridgeToObjectiveC()().super.isa;
      v115 = String._bridgeToObjectiveC()();
      v40, v116, v117, v118, v119, v120, v121, v122;
      v123 = String._bridgeToObjectiveC()();
      v108, v124, v125, v126, v127, v128, v129, v130;
      URL._bridgeToObjectiveC()(v131);
      v133 = v132;
      v356 = 0;
      v134 = v344;
      LODWORD(v110) = [v344 updateAttachmentFile:v111 accountID:v114 fileName:v115 sha512Sum:v123 fileURL:v132 keepSource:0 error:&v356];

      if (v110)
      {
        v135 = v356;

        swift_unknownObjectRelease();
        (*(isa + 1))(v353, v352);
        v349(v113, v347);
      }

      else
      {
        v343 = v112;
        v300 = v356;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100935FB0 != -1)
        {
          swift_once();
        }

        v301 = type metadata accessor for Logger();
        sub_100006654(v301, qword_100944EB0);
        v302 = v350;
        v303 = v347;
        v304 = v348;
        (v355[2].isa)(v350, v348, v347);
        v305 = v346;
        v306 = v346;
        v307 = v354;
        swift_errorRetain();
        v308 = Logger.logObject.getter();
        v309 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v308, v309))
        {
          v310 = swift_slowAlloc();
          v311 = swift_slowAlloc();
          v355 = swift_slowAlloc();
          v356 = v355;
          *v310 = 136315906;
          swift_getErrorValue();
          LODWORD(v354) = v309;
          v312 = Error.rem_errorDescription.getter();
          v314 = v313;
          v315 = sub_10000668C(v312, v313, &v356);
          v314, v316, v317, v318, v319, v320, v321, v322;
          *(v310 + 4) = v315;
          *(v310 + 12) = 2114;
          *(v310 + 14) = v306;
          *v311 = v305;
          *(v310 + 22) = 2082;
          sub_1001B397C();
          v323 = v306;
          v324 = v350;
          v325 = dispatch thunk of CustomStringConvertible.description.getter();
          v327 = v326;
          v328 = v303;
          v329 = v349;
          v349(v324, v328);
          v330 = sub_10000668C(v325, v327, &v356);
          v327, v331, v332, v333, v334, v335, v336, v337;
          *(v310 + 24) = v330;
          *(v310 + 32) = 2112;
          *(v310 + 34) = v307;
          v311[1] = v307;
          v338 = v307;
          _os_log_impl(&_mh_execute_header, v308, v354, "Failed to update attachment file {error: %s, remObjectID: %{public}@, accountUUID: (%{public}s, record: %@}", v310, 0x2Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();

          swift_unknownObjectRelease();

          (*(isa + 1))(v353, v352);
          v329(v348, v347);
        }

        else
        {

          swift_unknownObjectRelease();

          v341 = v349;
          v349(v302, v303);
          (*(isa + 1))(v353, v352);
          v341(v304, v303);
        }
      }

      return;
    }

    v40, 0, v102, v103, v104, v105, v106, v107;
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v274 = type metadata accessor for Logger();
    sub_100006654(v274, qword_100944EB0);
    v275 = v349;
    (v90[2].isa)(v349, v348, v347);
    v276 = v346;
    v277 = v346;
    v278 = v72;
    v279 = Logger.logObject.getter();
    v280 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v279, v280))
    {
      v281 = swift_slowAlloc();
      v343 = v279;
      v282 = v275;
      v283 = v281;
      v284 = swift_slowAlloc();
      v350 = swift_slowAlloc();
      v356 = v350;
      *v283 = 138543874;
      *(v283 + 4) = v277;
      *v284 = v276;
      *(v283 + 12) = 2082;
      sub_1001B397C();
      v342 = v81;
      v354 = v277;
      v285 = v347;
      v286 = dispatch thunk of CustomStringConvertible.description.getter();
      v288 = v287;
      v289 = v90[1].isa;
      v289(v282, v285);
      v290 = sub_10000668C(v286, v288, &v356);
      v288, v291, v292, v293, v294, v295, v296, v297;
      *(v283 + 14) = v290;
      *(v283 + 22) = 2112;
      *(v283 + 24) = v278;
      v284[1] = v278;
      v298 = v278;
      v299 = v343;
      _os_log_impl(&_mh_execute_header, v343, v280, "Could not generate sha512Sum from file asset {remObjectID: %{public}@, accountUUID: %{public}s, record: %@}", v283, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v350);

      swift_unknownObjectRelease();
      (*(isa + 1))(v353, v352);
      v289(v348, v285);
      return;
    }

    swift_unknownObjectRelease();
    v246 = v90[1].isa;
    v340 = v347;
    v246(v275, v347);
    (*(isa + 1))(v99, v352);
    v247 = v348;
    v248 = v340;
LABEL_51:
    v246(v247, v248);
    return;
  }

  v40, v92, v93, v94, v95, v96, v97, v98;
  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v249 = type metadata accessor for Logger();
  sub_100006654(v249, qword_100944EB0);
  v250 = v347;
  (v90[2].isa)(v20, v348, v347);
  v251 = v90;
  v252 = v346;
  v253 = v346;
  v254 = v72;
  v255 = Logger.logObject.getter();
  v256 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v255, v256))
  {
    v257 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    v353 = swift_slowAlloc();
    v356 = v353;
    *v257 = 138543874;
    *(v257 + 4) = v253;
    *v258 = v252;
    *(v257 + 12) = 2082;
    sub_1001B397C();
    v342 = v81;
    v354 = v253;
    v352 = v255;
    v259 = v347;
    v260 = dispatch thunk of CustomStringConvertible.description.getter();
    v262 = v261;
    v263 = v251[1].isa;
    v263(v20, v259);
    v264 = sub_10000668C(v260, v262, &v356);
    v262, v265, v266, v267, v268, v269, v270, v271;
    *(v257 + 14) = v264;
    *(v257 + 22) = 2112;
    *(v257 + 24) = v254;
    v258[1] = v254;
    v272 = v254;
    v273 = v352;
    _os_log_impl(&_mh_execute_header, v352, v256, "File asset missing fileURL for file attachment {remObjectID: %{public}@, accountUUID: %{public}s, record: %@}", v257, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v353);

    swift_unknownObjectRelease();
    v263(v348, v347);
  }

  else
  {

    swift_unknownObjectRelease();
    v339 = v251[1].isa;
    v339(v20, v250);
    v339(v348, v250);
  }
}

void sub_1003C25F8(NSObject *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v1;
    sub_1003C0C58(a1);
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    if (v25)
    {
      v22 = 0;
    }

    else
    {
      v22 = v24;
    }

    [v4 setFileSize:v22];
  }

  else
  {
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_100944EB0);
    v7 = v1;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24 = v10;
      *v9 = 136315138;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
      v11 = String.init<A>(describing:)();
      v13 = v12;
      v14 = sub_10000668C(v11, v12, &v24);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Record.type is file but this is not a file attachment object {type: %s}", v9, 0xCu);
      sub_10000607C(v10);
    }

    else
    {
    }
  }
}

void sub_1003C28E0()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    if (BYTE2(v23))
    {
      v20 = 0;
    }

    else
    {
      v20 = v23;
    }

    [v2 setHeight:v20];
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    if (BYTE2(v23))
    {
      v21 = 0;
    }

    else
    {
      v21 = v23;
    }

    [v2 setWidth:v21];
  }

  else
  {
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100944EB0);
    v5 = v0;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      swift_getObjectType();
      sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
      v9 = String.init<A>(describing:)();
      v11 = v10;
      v12 = sub_10000668C(v9, v10, &v23);
      v11, v13, v14, v15, v16, v17, v18, v19;
      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Record.type is image but this is not an image attachment {type: %s}", v7, 0xCu);
      sub_10000607C(v8);
    }

    else
    {
    }
  }
}

void sub_1003C2C54(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = v86 - v10;
  v12 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v12 - 8, v13);
  v15 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v98 = (v86 - v18);
  __chkstk_darwin(v19, v20);
  v22 = v86 - v21;
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v91 = v11;
    v92 = v15;
    v96 = (v4 + 56);
    v97 = (v4 + 48);
    v90 = (v4 + 32);
    v93 = (v4 + 8);
    v94 = v22;
    v87 = v4 + 16;
    v88 = v7;
    v89 = v1;
    v25 = 0;
    v26 = 0;
    *(&v27 + 1) = 0xF000000000000000;
    v95 = xmmword_1007A5D40;
    *&v27 = 136446722;
    v86[2] = v27;
    while (1)
    {
      if (*(&off_1008E3050 + v25 + 32))
      {
        if (*(&off_1008E3050 + v25 + 32) != 1)
        {
          v28 = [a1 encryptedValues];
          v29 = String._bridgeToObjectiveC()();
          v30 = [v28 objectForKeyedSubscript:v29];
          swift_unknownObjectRelease();

          if (v30 && (ObjectType = v30, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
          {
            v31 = *(&v99 + 1);
            v32 = v94;
            URL.init(string:)();
            v31, v33, v34, v35, v36, v37, v38, v39;
            if ((*v97)(v32, 1, v3) == 1)
            {
              v41 = 0;
            }

            else
            {
              URL._bridgeToObjectiveC()(v40);
              v41 = v55;
              (*v93)(v32, v3);
            }

            [v24 setUrl:v41];
          }

          else
          {
            [v24 setUrl:0];
          }
        }

        goto LABEL_4;
      }

      v42 = v26;
      v43 = [a1 encryptedValues];
      v44 = String._bridgeToObjectiveC()();
      v45 = [v43 objectForKeyedSubscript:v44];
      swift_unknownObjectRelease();

      ObjectType = v45;
      sub_1000F5104(&qword_100944EF0, &unk_1007AE8D0);
      if (swift_dynamicCast())
      {
        v46 = *(&v99 + 1);
        if (*(&v99 + 1) >> 60 != 15)
        {
          v54 = v99;
LABEL_19:
          v26 = v42;
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100031A14(v54, v46);
          goto LABEL_27;
        }
      }

      else
      {
        v99 = v95;
        sub_100031A14(0, 0xF000000000000000);
        v48 = CKRecord.subscript.getter();
        v49 = v98;
        if (!v48)
        {
          goto LABEL_23;
        }

        objc_opt_self();
        v50 = swift_dynamicCastObjCClass();
        if (!v50)
        {
          swift_unknownObjectRelease();
LABEL_23:
          (*v96)(v49, 1, 1, v3);
LABEL_26:
          sub_1000050A4(v49, &unk_1009441F0, &qword_100795760);
          isa = 0;
          goto LABEL_27;
        }

        v51 = [v50 fileURL];
        swift_unknownObjectRelease();
        if (v51)
        {
          v52 = v92;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v53 = 0;
        }

        else
        {
          v53 = 1;
          v52 = v92;
        }

        (*v96)(v52, v53, 1, v3);
        v49 = v98;
        sub_10003E8F8(v52, v98);
        if ((*v97)(v49, 1, v3) == 1)
        {
          goto LABEL_26;
        }

        v56 = v91;
        (*v90)(v91, v49, v3);
        v57 = [objc_opt_self() defaultManager];
        URL.path.getter();
        v59 = v58;
        v60 = String._bridgeToObjectiveC()();
        v59, v61, v62, v63, v64, v65, v66, v67;
        LODWORD(v59) = [v57 fileExistsAtPath:v60];

        if (v59)
        {
          v54 = Data.init(contentsOf:options:)();
          v46 = v68;
          (*v93)(v56, v3);
          goto LABEL_19;
        }

        (*v93)(v56, v3);
      }

      isa = 0;
      v26 = v42;
LABEL_27:
      [v24 setMetadata:isa];

LABEL_4:
      if (++v25 == 3)
      {

        return;
      }
    }
  }

  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  sub_100006654(v69, qword_100944EB0);
  v70 = v1;
  v98 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v98, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v99 = v73;
    *v72 = 136315138;
    ObjectType = swift_getObjectType();
    sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
    v74 = String.init<A>(describing:)();
    v76 = v75;
    v77 = sub_10000668C(v74, v75, &v99);
    v76, v78, v79, v80, v81, v82, v83, v84;
    *(v72 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v98, v71, "Record.type is url but this is not a URL attachment {type: %s}", v72, 0xCu);
    sub_10000607C(v73);
  }

  else
  {
    v85 = v98;
  }
}

Swift::Void __swiftcall REMCDAttachment.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  v5 = String._bridgeToObjectiveC()();
  v86.receiver = v3;
  v86.super_class = REMCDAttachment;
  objc_msgSendSuper2(&v86, "mergeDataFromRecord:accountID:", from.super.isa, v5);

  v6 = [(objc_class *)from.super.isa recordID];
  v7 = [v6 recordName];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    v7 = String._bridgeToObjectiveC()();
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  v17 = [v3 ckIdentifierFromRecordName:v7];

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    v17 = String._bridgeToObjectiveC()();
    v19, v20, v21, v22, v23, v24, v25, v26;
  }

  [v3 setCkIdentifier:v17];

  if (CKRecord.subscript.getter())
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (!v27)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_1001287DC(v27);

  if (v28)
  {
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (!v29)
    {
    }
  }

  else
  {
    v29 = 0;
  }

  [v3 setReminder:v29];

  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  if (v84._object)
  {
    v30 = String._bridgeToObjectiveC()();
    v84._object, v31, v32, v33, v34, v35, v36, v37;
  }

  else
  {
    v30 = 0;
  }

  [v3 setUti:v30];

  v38 = CKRecord.subscript.getter();
  if (v38 && (v85 = v38, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
  {
    countAndFlagsBits = v84._countAndFlagsBits;
    object = v84._object;

    v41 = _findStringSwitchCase(cases:string:)(&off_1008E2F38, v84);
    v84._object, v42, v43, v44, v45, v46, v47, v48;
    switch(v41)
    {
      case 0:
        v84._object, v49, v50, v51, v52, v53, v54, v55;
        sub_1003C25F8(from.super.isa);
        return;
      case 2:
        v84._object, v49, v50, v51, v52, v53, v54, v55;
        sub_1003C2C54(from.super.isa);
        return;
      case 1:
        v84._object, v49, v50, v51, v52, v53, v54, v55;
        sub_1003C25F8(from.super.isa);
        sub_1003C28E0();
        return;
    }
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_100006654(v56, qword_100944EB0);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  object, v59, v60, v61, v62, v63, v64, v65;
  if (os_log_type_enabled(v57, v58))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v84._countAndFlagsBits = v74;
    *v73 = 136315138;
    if (object)
    {
      v75 = countAndFlagsBits;
    }

    else
    {
      v75 = 7104878;
    }

    if (!object)
    {
      object = 0xE300000000000000;
    }

    v76 = sub_10000668C(v75, object, &v84._countAndFlagsBits);
    object, v77, v78, v79, v80, v81, v82, v83;
    *(v73 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v57, v58, "mergeData: Unknown attachment type {type: %s}", v73, 0xCu);
    sub_10000607C(v74);
  }

  else
  {
    object, v66, v67, v68, v69, v70, v71, v72;
  }
}

void sub_1003C3D14(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v101 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v96 - v14;
  __chkstk_darwin(v16, v17);
  v19 = &v96 - v18;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v98 = v7;
    v99 = v4;
    v100 = v3;
    v22 = v1;
    v102 = a1;
    v103 = v22;
    v23 = [a1 encryptedValues];
    v24 = [v21 fileName];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = &protocol witness table for String;
      v30 = &type metadata for String;
    }

    else
    {
      v26 = 0;
      v28 = 0;
      v30 = 0;
      v29 = 0;
      v104[2] = 0;
    }

    v104[0] = v26;
    v104[1] = v28;
    v104[3] = v30;
    v104[4] = v29;
    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v47 = [v21 fileName];
    if (v47)
    {
      v48 = v47;
      v49 = [v103 storeControllerManagedObjectContext];
      if (v49 && (v50 = v49, v51 = [v49 storeController], v50, v51))
      {
        v97 = [v103 remObjectID];
        if (v97)
        {
          v52 = [v103 account];
          if (v52)
          {
            v53 = v52;
            v54 = [v52 remObjectID];

            if (v54)
            {
              v96 = v51;
              v55 = [v54 uuid];

              static UUID._unconditionallyBridgeFromObjectiveC(_:)();
              v56 = v101;
              (*(v101 + 32))(v19, v15, v8);
              v57 = [v97 uuid];
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              isa = UUID._bridgeToObjectiveC()().super.isa;
              v59 = *(v56 + 8);
              v59(v11, v8);
              v60 = UUID._bridgeToObjectiveC()().super.isa;
              v61 = [v21 sha512Sum];
              v62 = v96;
              v63 = [v96 URLForAttachmentFile:isa accountID:v60 fileName:v48 sha512Sum:v61];

              v64 = v98;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v65 = objc_allocWithZone(CKAsset);
              URL._bridgeToObjectiveC()(v66);
              v68 = v67;
              v69 = [v65 initWithFileURL:v67];

              (*(v99 + 8))(v64, v100);
              v59(v19, v8);
              v70 = v69;
              CKRecord.subscript.setter();

              return;
            }
          }

          if (qword_100935FB0 != -1)
          {
            swift_once();
          }

          v79 = type metadata accessor for Logger();
          sub_100006654(v79, qword_100944EB0);
          v80 = v97;
          v81 = v97;
          v82 = v102;
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            *v85 = 138543618;
            *(v85 + 4) = v81;
            *(v85 + 12) = 2112;
            *(v85 + 14) = v82;
            *v86 = v80;
            v86[1] = v82;
            v87 = v81;
            v88 = v82;
            _os_log_impl(&_mh_execute_header, v83, v84, "File attachment has no account {remObjectID: %{public}@, record: %@}", v85, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            v81 = v83;
            v83 = v51;
            v51 = v87;
          }
        }

        else
        {

          if (qword_100935FB0 != -1)
          {
            swift_once();
          }

          v89 = type metadata accessor for Logger();
          sub_100006654(v89, qword_100944EB0);
          v90 = v102;
          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            *v93 = 138412290;
            *(v93 + 4) = v90;
            *v94 = v90;
            v95 = v90;
            _os_log_impl(&_mh_execute_header, v91, v92, "File attachment has no remObjectID {record: %@}", v93, 0xCu);
            sub_1000050A4(v94, &unk_100938E70, &unk_100797230);
          }
        }
      }

      else
      {

        if (qword_100935FB0 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_100006654(v71, qword_100944EB0);
        v72 = v102;
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *v75 = 138412290;
          *(v75 + 4) = v72;
          *v76 = v72;
          v77 = v72;
          _os_log_impl(&_mh_execute_header, v73, v74, "No store controller for updating file attachment {record: %@}", v75, 0xCu);
          sub_1000050A4(v76, &unk_100938E70, &unk_100797230);
        }
      }
    }

    CKRecord.subscript.setter();
  }

  else
  {
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006654(v31, qword_100944EB0);
    v32 = v1;
    v103 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v103, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v104[0] = v35;
      *v34 = 136315138;
      v104[5] = swift_getObjectType();
      sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      v39 = sub_10000668C(v36, v37, v104);
      v38, v40, v41, v42, v43, v44, v45, v46;
      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v103, v33, "Not a file attachment {Type: %s}", v34, 0xCu);
      sub_10000607C(v35);

      return;
    }
  }

  v78 = v103;
}

CKRecord_optional __swiftcall REMCDAttachment.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v72 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v10, v11).n128_u64[0];
  v14 = &v70 - v13;
  v78.receiver = v1;
  v78.super_class = REMCDAttachment;
  v16 = objc_msgSendSuper2(&v78, "newlyCreatedRecord", v12);
  if (!v16)
  {
    goto LABEL_38;
  }

  v70 = v5;
  v17 = [v1 uti];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = &protocol witness table for String;
    v23 = &type metadata for String;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v23 = 0;
    v22 = 0;
    v75 = 0;
  }

  v73 = v19;
  v74 = v21;
  v76 = v23;
  v77 = v22;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.setter();
  v24 = [v1 reminder];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 recordID];
  }

  else
  {
    v26 = 0;
  }

  v27 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v26];

  CKRecord.subscript.setter();
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = v28;
    v76 = &type metadata for String;
    v77 = &protocol witness table for String;
    v73 = 1701603654;
    v74 = 0xE400000000000000;
    v30 = v1;
    CKRecordKeyValueSetting.subscript.setter();
    v31 = [v29 fileSize];
    v76 = &type metadata for Int64;
    v77 = &protocol witness table for Int64;
    v73 = v31;
    CKRecordKeyValueSetting.subscript.setter();
    sub_1003C3D14(v16);
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v32;
    v76 = &type metadata for String;
    v77 = &protocol witness table for String;
    v73 = 0x6567616D49;
    v74 = 0xE500000000000000;
    v71 = v1;
    CKRecordKeyValueSetting.subscript.setter();
    v34 = [v33 width];
    v76 = &type metadata for Int16;
    v77 = &protocol witness table for Int16;
    LOWORD(v73) = v34;
    CKRecordKeyValueSetting.subscript.setter();
    v35 = [v33 height];
    v76 = &type metadata for Int16;
    v77 = &protocol witness table for Int16;
    LOWORD(v73) = v35;
    CKRecordKeyValueSetting.subscript.setter();
  }

  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (!v36)
  {
    goto LABEL_38;
  }

  v37 = v36;
  v76 = &type metadata for String;
  v77 = &protocol witness table for String;
  v73 = 5001813;
  v74 = 0xE300000000000000;
  v38 = v1;
  CKRecordKeyValueSetting.subscript.setter();
  [v16 encryptedValues];
  v39 = [v37 url];
  if (v39)
  {
    v40 = v39;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = v72;
  (*(v72 + 56))(v9, v41, 1, v2);
  sub_10003E8F8(v9, v14);
  if ((*(v42 + 48))(v14, 1, v2))
  {
    sub_1000050A4(v14, &unk_1009441F0, &qword_100795760);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v75 = 0;
  }

  else
  {
    v47 = v72;
    v48 = v70;
    (*(v72 + 16))(v70, v14, v2);
    sub_1000050A4(v14, &unk_1009441F0, &qword_100795760);
    v45 = URL.absoluteString.getter();
    v46 = v49;
    (*(v47 + 8))(v48, v2);
    v44 = &protocol witness table for String;
    v43 = &type metadata for String;
  }

  v76 = v43;
  v77 = v44;
  v73 = v45;
  v74 = v46;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v50 = [v37 metadata];
  if (!v50)
  {
    v52 = 0;
    v54 = 0xF000000000000000;
    goto LABEL_34;
  }

  v51 = v50;
  v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v56 = v54 >> 62;
  if ((v54 >> 62) > 1)
  {
    if (v56 != 2)
    {
      v57 = 0;
      goto LABEL_31;
    }

    v59 = *(v52 + 16);
    v58 = *(v52 + 24);
    v57 = v58 - v59;
    if (!__OFSUB__(v58, v59))
    {
      goto LABEL_31;
    }

    __break(1u);
  }

  else if (!v56)
  {
    v57 = BYTE6(v54);
    goto LABEL_31;
  }

  if (__OFSUB__(HIDWORD(v52), v52))
  {
    __break(1u);
    goto LABEL_40;
  }

  v57 = HIDWORD(v52) - v52;
LABEL_31:
  v60 = [objc_opt_self() sharedConfiguration];
  v61 = [v60 maxInlineAssetSizeBytes];

  if (v57 < 1 || v61 >= v57)
  {
LABEL_34:
    CKRecord.subscript.setter();
    v65 = [v16 encryptedValues];
    if (v54 >> 60 == 15)
    {
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v75 = 0;
    }

    else
    {
      v69 = &protocol witness table for Data;
      v68 = &type metadata for Data;
      v66 = v52;
      v67 = v54;
    }

    v73 = v66;
    v74 = v67;
    v76 = v68;
    v77 = v69;
    swift_getObjectType();
    sub_1001CB4B8(v52, v54);
    CKRecordKeyValueSetting.subscript.setter();

    sub_100031A14(v52, v54);
    swift_unknownObjectRelease();
    goto LABEL_38;
  }

  v62 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v64 = [v62 assetForData:isa];

  CKRecord.subscript.setter();
  CKRecord.subscript.setter();

  sub_10001BBA0(v52, v54);
LABEL_38:
  v55 = v16;
LABEL_40:
  result.value.super.isa = v55;
  result.is_nil = v15;
  return result;
}

Swift::Void __swiftcall REMCDAttachment.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100944EB0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

Swift::Void __swiftcall REMCDAttachment.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_100944EB0);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v73 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v75);
  v14, v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v23 = [v4 reminder];
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v23 remObjectID];
  if (!v25)
  {

LABEL_12:
    v29 = 0xE300000000000000;
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

LABEL_13:
  v30 = sub_10000668C(v7, v29, &v75);
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(v8 + 14) = v30;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for attachment {attachmentID: %{public}s, reminderID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v38 = [v4 reminder];
  if (v38)
  {
    v74 = v38;
    if ([v38 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
    {
      v39 = v4;
      v40 = v74;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v43 = 136446466;
        v44 = &selRef_persistentStoreForIdentifier_;
        v45 = [v39 remObjectID];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 description];

          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v44 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v50 = 0xE300000000000000;
          v48 = 7104878;
        }

        v51 = sub_10000668C(v48, v50, &v75);
        v50, v52, v53, v54, v55, v56, v57, v58;
        *(v43 + 4) = v51;
        *(v43 + 12) = 2082;
        v59 = [v40 v44[106]];
        if (v59)
        {
          v60 = v59;
          v61 = [v59 description];

          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
        }

        else
        {
          v64 = 0xE300000000000000;
          v62 = 7104878;
        }

        v65 = sub_10000668C(v62, v64, &v75);
        v64, v66, v67, v68, v69, v70, v71, v72;
        *(v43 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v41, v42, "Reminder is marked for deletion but attachment is not {attachmentID: %{public}s, reminderID: %{public}s}", v43, 0x16u);
        swift_arrayDestroy();
      }

      [v39 markForDeletion];
    }

    [v74 forcePushToCloud];
  }
}

uint64_t _sSo15REMCDAttachmentC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100944EB0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo15REMCDAttachmentC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100944EB0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

id static REMCDTemplate.fetchRequest()()
{
  v0 = [objc_opt_self() cdEntityName];
  if (!v0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v1;
    v0 = String._bridgeToObjectiveC()();
    v2, v3, v4, v5, v6, v7, v8, v9;
  }

  v10 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v0];

  return v10;
}

uint64_t sub_1003C5B90(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = sub_1000F5104(&qword_100944F10, &qword_1007A5E00);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v13[-v10];
  sub_10000F61C(a1, a1[3]);
  sub_1003C6378();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13[7] = 0;
  type metadata accessor for REMDueDateDeltaInterval_Codable();
  sub_1003C63CC(&qword_100944F18, &protocol conformance descriptor for REMDueDateDeltaInterval_Codable);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13[6] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13[5] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1003C5D80()
{
  v1 = 0xD000000000000026;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4465746144657564;
  }
}

uint64_t sub_1003C5DF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_1003C6010(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1003C5E18(uint64_t a1)
{
  v2 = sub_1003C6378();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C5E54(uint64_t a1)
{
  v2 = sub_1003C6378();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1003C5E90(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 2);
  v4 = a2[1];
  v5 = *(a2 + 2);
  sub_100003C4C();
  v6 = static NSObject.== infix(_:_:)();
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t assignWithCopy for RDSavedDueDateDeltaAlert(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for RDSavedDueDateDeltaAlert(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];
  return a1;
}

void sub_1003C5FB8(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v6 = sub_1003C6138(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v6;
    a1[2] = v5;
  }
}

uint64_t sub_1003C6010(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = 0xEC00000061746C65;
  v11 = a1 == 0x4465746144657564 && a2 == 0xEC00000061746C65;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x80000001007F6880;
    if (a1 == 0xD000000000000026 && 0x80000001007F6880 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0xD00000000000001ALL && 0x80000001007EA730 == a2)
    {
      a2, 0x80000001007EA730, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

double sub_1003C6138(void *a1)
{
  v2 = sub_1000F5104(&qword_100944EF8, &qword_1007A5DF8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v10[-v5];
  sub_10000F61C(a1, a1[3]);
  sub_1003C6378();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  type metadata accessor for REMDueDateDeltaInterval_Codable();
  v10[15] = 0;
  sub_1003C63CC(&qword_100944F08, &protocol conformance descriptor for REMDueDateDeltaInterval_Codable);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v9 = v8;
  v10[13] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000607C(a1);
  return v9;
}

unint64_t sub_1003C6378()
{
  result = qword_100944F00;
  if (!qword_100944F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944F00);
  }

  return result;
}

uint64_t sub_1003C63CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for REMDueDateDeltaInterval_Codable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003C6424()
{
  result = qword_100944F20;
  if (!qword_100944F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944F20);
  }

  return result;
}

unint64_t sub_1003C647C()
{
  result = qword_100944F28;
  if (!qword_100944F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944F28);
  }

  return result;
}

unint64_t sub_1003C64D4()
{
  result = qword_100944F30;
  if (!qword_100944F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944F30);
  }

  return result;
}

uint64_t sub_1003C652C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944F38);
  v1 = sub_100006654(v0, qword_100944F38);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1003C65F4(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v39 = a2;
  v40 = a4;
  v37 = a5;
  v38 = a3;
  v36 = type metadata accessor for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.IncrementalResult();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s10PredicatesOMa(0);
  __chkstk_darwin(v9, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult();
  v35 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v20 = (&v33 - v19);
  v21 = v41;
  v22 = sub_100041B1C(a1, v39);
  if (!v21)
  {
    v24 = v36;
    v41 = v16;
    v40 = v20;
    if (v22)
    {
      v25 = v22;
      v26 = v23;
      sub_100041EBC(a1, v22, v8);
      v27 = v13;
      v28 = v35;
      v29 = v41;
      v39 = v25;
      v31 = v40;
      (*(v34 + 32))(v40, v8, v24);
      v32 = &enum case for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.incremental(_:);
    }

    else
    {
      v39 = 0;
      v26 = v23;
      swift_storeEnumTagMultiPayload();
      v30 = sub_1000437C4(a1);
      sub_1000513B4(v12);
      v29 = v41;
      v31 = v40;
      *v40 = v30;
      v32 = &enum case for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.reload(_:);
      v27 = v13;
      v28 = v35;
    }

    (*(v28 + 104))(v31, *v32, v27);
    (*(v28 + 16))(v29, v31, v27);
    REMRemindersInCalendarDataView.Invocation.Result.init(remindersResult:predicateVersion:)();
    sub_100051FA4(v39, v26);
    (*(v28 + 8))(v31, v27);
  }
}

void sub_1003C696C(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v9 = 0;
  v4 = [v3 remObjectIDWithError:&v9];
  if (v4)
  {
    v5 = v4;
    v6 = v9;
    v7 = REMObjectID.codable.getter();

    *a2 = v7;
  }

  else
  {
    v8 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id sub_1003C6A34(void *a1)
{
  v1 = [a1 changedObjectID];
  v2 = sub_1005AFD38(v1);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 remObjectID];
      if (v5)
      {
        v6 = v5;

        return v6;
      }

      if (qword_100935FB8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100944F38);
      v9 = v1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        *(v12 + 4) = v9;
        *v13 = v9;
        v14 = v9;
        v15 = "REMRemindersInCalendarDataView: failed to get remObjectID from REMCDObject {managedObjectID: %@}";
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_100935FB8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006654(v8, qword_100944F38);
      v9 = v1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        *(v12 + 4) = v9;
        *v13 = v9;
        v14 = v9;
        v15 = "REMRemindersInCalendarDataView: failed to cast managedObject to REMCDObject {managedObjectID: %@}";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v10, v11, v15, v12, 0xCu);
        sub_1000050A4(v13, &unk_100938E70, &unk_100797230);

LABEL_16:
        return 0;
      }
    }

    goto LABEL_16;
  }

  return 0;
}

id sub_1003C6CC4(void *a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v15, v16).n128_u64[0];
  v19 = &v47 - v18;
  v20 = [a1 changedObjectID];
  v21 = [objc_allocWithZone(REMNSPersistentHistoryChange) initWithPersistentHistoryChange:a1];
  v22 = [v21 tombstone];
  if (!v22)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_7:
    sub_1000050A4(v9, &unk_100939D90, "8\n\r");
    if (qword_100935FB8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100944F38);
    v26 = v20;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "REMRemindersInCalendarDataView: failed to get UUID from tombstone {managedObjectID: %@}", v29, 0xCu);
      sub_1000050A4(v30, &unk_100938E70, &unk_100797230);
    }

    else
    {
    }

    return 0;
  }

  v23 = v22;
  v24 = [v22 objectIdentifier];

  if (v24)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 56))(v5, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v5, 1, 1, v10);
  }

  sub_100100FB4(v5, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_7;
  }

  (*(v11 + 32))(v19, v9, v10);
  (*(v11 + 16))(v14, v19, v10);
  v33 = [v20 entityName];
  if (!v33)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
    v33 = String._bridgeToObjectiveC()();
    v35, v36, v37, v38, v39, v40, v41, v42;
  }

  v43 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v45 = [v43 initWithUUID:isa entityName:v33];

  v46 = *(v11 + 8);
  v46(v14, v10);
  v46(v19, v10);
  return v45;
}

uint64_t sub_1003C7170(uint64_t a1)
{
  result = sub_100050DB0(&qword_100944F70, &type metadata accessor for REMRemindersInCalendarDataView.Invocation, &protocol conformance descriptor for REMRemindersInCalendarDataView.Invocation);
  *(a1 + 8) = result;
  return result;
}

double _s4DiffVwxx(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  a1[1], v9, v10, v11, v12, v13, v14, v15;
  a1[2], v16, v17, v18, v19, v20, v21, v22;
  a1[3], v23, v24, v25, v26, v27, v28, v29;
  v37 = a1[4];

  v37, v30, v31, v32, v33, v34, v35, v36;
  return result;
}

uint64_t *_s4DiffVwcp(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

_TtC7remindd19RDXPCStorePerformer **_s4DiffVwca(_TtC7remindd19RDXPCStorePerformer **a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  v4 = *a1;
  *a1 = *a2;

  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = a1[1];
  a1[1] = a2[1];

  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = a1[2];
  a1[2] = a2[2];

  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = a1[3];
  a1[3] = a2[3];

  v28, v29, v30, v31, v32, v33, v34, v35;
  v36 = a2[4];
  v37 = a1[4];
  a1[4] = v36;

  v37, v38, v39, v40, v41, v42, v43, v44;
  return a1;
}

void *_s4DiffVwta(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  v10 = a1[1];
  *a1 = *a2;
  v10, v11, v12, v13, v14, v15, v16, v17;
  a1[2], v18, v19, v20, v21, v22, v23, v24;
  v25 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  v25, v26, v27, v28, v29, v30, v31, v32;
  v33 = a1[4];
  a1[4] = *(a2 + 32);
  v33, v34, v35, v36, v37, v38, v39, v40;
  return a1;
}

uint64_t _s4DiffVwet(uint64_t *a1, int a2)
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

uint64_t _s4DiffVwst(uint64_t result, int a2, int a3)
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

void RDLaunchAnalyticsPostNotifyd(_:)(void *a1)
{
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v1 = String.init(cString:)();
    v3 = v2;
    if (qword_100935FC8 != -1)
    {
      swift_once();
    }

    v15 = xmmword_10079EFA0;
    v17 = 0;
    v18[0] = 0;
    v16 = 0;
    *(v18 + 6) = 0;
    sub_1000081D8(&v15, v1, v3);

    v3, v4, v5, v6, v7, v8, v9, v10;
  }

  else
  {
    if (qword_100935FC0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100944F80);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Failed to get name from xpc event. Not posting analytics for notifyd notification", v13, 2u);
    }
  }
}

uint64_t sub_1003C75D4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944F80);
  v1 = sub_100006654(v0, qword_100944F80);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003C769C()
{
  v0 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v0, v1);
  type metadata accessor for RDLaunchAnalytics();
  v2 = swift_allocObject();
  sub_1001E11C8();
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_1003C7808();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init(options:)();
  *(v2 + 16) = result;
  *(v2 + 24) = 0;
  qword_100974D80 = v2;
  return result;
}

uint64_t sub_1003C77AC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1003C7808()
{
  result = qword_100936E70;
  if (!qword_100936E70)
  {
    sub_1000F514C(&qword_100936E68, &unk_100791AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936E70);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003C786C(_TtC7remindd19RDXPCStorePerformer *a1, const char *a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a3;
  v11 = a1;
  v31 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v28 = v11;
    v29 = v11 & 0xFFFFFFFFFFFFFF8;
    v27 = i;
    while (1)
    {
      if (v14)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v29 + 16))
        {
          goto LABEL_17;
        }

        v15 = *&v11->clientIdentity[8 * v13 + 16];
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v30 = v15;
      v18 = sub_1003C86F0(&v30, a2, v9);
      if (v8)
      {
        v11, v19, v20, v21, v22, v23, v24, v25;

        return v9;
      }

      if (v18)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        i = v27;
        v11 = v28;
      }

      else
      {
      }

      ++v13;
      if (v17 == i)
      {
        v9 = v31;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_20:
  v11, a2, a3, a4, a5, a6, a7, a8;
  return v9;
}

void sub_1003C7A14(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, _TtC7remindd19RDXPCStorePerformer *a4@<X3>, void (*a5)(char *, uint64_t, uint64_t, uint64_t)@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X8>)
{
  v140 = a4;
  v138 = a6;
  v139 = a7;
  v134 = a5;
  v130 = a2;
  v131 = a3;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v132 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v133 = &v130 - v13;
  __chkstk_darwin(v14, v15);
  v17 = &v130 - v16;
  __chkstk_darwin(v18, v19);
  v136 = (&v130 - v20);
  __chkstk_darwin(v21, v22);
  v24 = &v130 - v23;
  __chkstk_darwin(v25, v26);
  v135 = &v130 - v27;
  v28 = type metadata accessor for REMSearchCriterion();
  v29 = *(v28 - 8);
  v31 = __chkstk_darwin(v28, v30);
  v33 = (&v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v29 + 16);
  (v34)(v33, a1, v28, v31);
  v35 = (*(v29 + 88))(v33, v28);
  if (v35 != enum case for REMSearchCriterion.hasLocation(_:))
  {
    v42 = v35;
    v137 = v29;
    v138 = v28;
    if (v35 == enum case for REMSearchCriterion.location(_:))
    {
      (*(v137 + 96))(v33, v138);
      v44 = *v33;
      v43 = v33[1];
      v34 = &_swiftEmptyArrayStorage;
      v142 = &_swiftEmptyArrayStorage;
      KeyPath = swift_getKeyPath();

      sub_1003EE9EC(KeyPath, v44, v43, 6);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v142->clientIdentity < *&v142->clientIdentity[8] >> 1)
      {
        goto LABEL_7;
      }

      goto LABEL_76;
    }

    if (v35 == enum case for REMSearchCriterion.dueDate(_:))
    {
      (*(v137 + 96))(v33, v138);
      v140 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
      v61 = *&v140->clientIdentity[32];
      v62 = v135;
      sub_10012F7FC(v33, v135);
      sub_10012F7FC(v33 + v61, v24);
      sub_1003CA59C(v62, v130);
      sub_1003CA59C(v24, v131);
      sub_10012F78C(v62, v17);
      v63 = type metadata accessor for Date();
      v64 = *(v63 - 8);
      v131 = *(v64 + 48);
      if (v131(v17, 1, v63) == 1)
      {
        sub_1000050A4(v17, &unk_100938850, qword_100795AE0);
        v65 = 1;
        v66 = v133;
        v67 = v136;
      }

      else
      {
        v102 = v136;
        Date.addingTimeInterval(_:)();
        (*(v64 + 8))(v17, v63);
        v67 = v102;
        v65 = 0;
        v66 = v133;
      }

      v103 = v132;
      v134 = *(v64 + 56);
      v134(v67, v65, 1, v63);
      sub_10012F78C(v24, v103);
      if (v131(v103, 1, v63) == 1)
      {
        sub_1000050A4(v24, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v135, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v103, &unk_100938850, qword_100795AE0);
        v104 = 1;
      }

      else
      {
        Date.addingTimeInterval(_:)();
        sub_1000050A4(v24, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v135, &unk_100938850, qword_100795AE0);
        (*(v64 + 8))(v103, v63);
        v104 = 0;
      }

      v105 = v139;
      v134(v66, v104, 1, v63);
      v106 = *&v140->clientIdentity[32];
      sub_10012F7FC(v136, v105);
      sub_10012F7FC(v66, v105 + v106);
      v108 = v137;
      v107 = v138;
      (*(v137 + 104))(v105, v42, v138);
      (*(v108 + 56))(v105, 0, 1, v107);
    }

    else
    {
      v69 = v138;
      v68 = v139;
      (v34)(v139, a1, v138);
      v70 = v137;
      (*(v137 + 56))(v68, 0, 1, v69);
      (*(v70 + 8))(v33, v69);
    }

    return;
  }

  (*(v29 + 96))(v33, v28);
  if (*v33 != 1)
  {
    v60 = v139;
    *v138 = 1;
LABEL_66:
    (*(v29 + 56))(v60, 1, 1, v28);
    return;
  }

  v137 = v29;
  v138 = v28;
  v36 = sub_1003FC818(0, 0);
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v37 = objc_allocWithZone(NSFetchRequest);
  v38 = [v37 init];
  v39 = [swift_getObjCClassFromMetadata() entity];
  [v38 setEntity:v39];

  [v38 setAffectedStores:0];
  [v38 setPredicate:v36];
  v40 = v141;
  v41 = NSManagedObjectContext.fetch<A>(_:)();
  if (v40)
  {

    return;
  }

  v43 = v41;

  v142 = &_swiftEmptyArrayStorage;
  if (v43 >> 62)
  {
    v78 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v78 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v136 = v36;
  v141 = 0;
  if (!v78)
  {
    v140 = &_swiftEmptyArrayStorage;
LABEL_62:
    v43, v71, v72, v73, v74, v75, v76, v77;
    v109 = v134;
    if (*v134)
    {
      v110 = *v134;
    }

    else
    {
      v110 = &_swiftEmptyArrayStorage;
    }

    v142 = v110;

    sub_100271578(v140);

    v111 = *v109;
    *v109 = v142;
    v111, v112, v113, v114, v115, v116, v117, v118;
    v28 = v138;
    v60 = v139;
    v29 = v137;
    goto LABEL_66;
  }

  v79 = v43 & 0xC000000000000001;
  v140 = &_swiftEmptyArrayStorage;
  v80 = 0;
  if ((v43 & 0xC000000000000001) == 0)
  {
    goto LABEL_24;
  }

LABEL_34:
  for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v43 + 8 * v80 + 32))
  {
    v34 = i;
    v33 = (v80 + 1);
    if (__OFADD__(v80, 1))
    {
      break;
    }

    v82 = [(RDXPCStorePerformer *)i alarm];
    if (v82 && (v83 = v82, v84 = [v82 reminder], v83, v84))
    {
      v85 = [v84 remObjectID];

      if (v85)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v140 = v142;
        if (v33 == v78)
        {
          goto LABEL_62;
        }

        ++v80;
        if (v79)
        {
          goto LABEL_34;
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

    ++v80;
    if (v33 == v78)
    {
      goto LABEL_62;
    }

    if (v79)
    {
      goto LABEL_34;
    }

LABEL_24:
    if (v80 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_7:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v142->clientIdentity >= *&v142->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v46 = *(sub_1000F5104(&qword_100945098, qword_1007B11A0) + 48);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v47 = sub_10000C2B0();
  v43, v48, v49, v50, v51, v52, v53, v54;
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v55 = [objc_allocWithZone(NSFetchRequest) init];
  v56 = [swift_getObjCClassFromMetadata() entity];
  [v55 setEntity:v56];

  [v55 setAffectedStores:0];
  [v55 setPredicate:v47];
  v57 = v141;
  v58 = NSManagedObjectContext.fetch<A>(_:)();
  if (v57)
  {

    v59 = type metadata accessor for REMStringMatchingStyle();
    (*(*(v59 - 8) + 8))(v33 + v46, v59);
    return;
  }

  v43 = v58;

  v142 = v34;
  v140 = (v43 & 0xFFFFFFFFFFFFFF8);
  if (v43 >> 62)
  {
    v93 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v93 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v133 = v47;
  v135 = v46;
  v141 = 0;
  if (v93)
  {
    v94 = v43 & 0xC000000000000001;
    v136 = &_swiftEmptyArrayStorage;
    v95 = 0;
    if ((v43 & 0xC000000000000001) != 0)
    {
LABEL_53:
      v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_45;
    }

    while (1)
    {
      if (v95 >= *v140->clientIdentity)
      {
        goto LABEL_75;
      }

      v96 = *(v43 + 8 * v95 + 32);
LABEL_45:
      v34 = v96;
      v97 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        goto LABEL_73;
      }

      v98 = [(RDXPCStorePerformer *)v96 alarm];
      if (v98 && (v99 = v98, v100 = [v98 reminder], v99, v100))
      {
        v101 = [v100 remObjectID];

        if (v101)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v34 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v136 = v142;
          if (v97 == v93)
          {
            goto LABEL_68;
          }

          ++v95;
          if (v94)
          {
            goto LABEL_53;
          }

          continue;
        }
      }

      else
      {
      }

      ++v95;
      if (v97 == v93)
      {
        goto LABEL_68;
      }

      if (v94)
      {
        goto LABEL_53;
      }
    }
  }

  v136 = &_swiftEmptyArrayStorage;
LABEL_68:
  v43, v86, v87, v88, v89, v90, v91, v92;
  v119 = v134;
  if (*v134)
  {
    v120 = *v134;
  }

  else
  {
    v120 = &_swiftEmptyArrayStorage;
  }

  v142 = v120;

  sub_100271578(v136);

  v121 = *v119;
  *v119 = v142;
  v121, v122, v123, v124, v125, v126, v127, v128;
  (*(v137 + 56))(v139, 1, 1, v138);
  v129 = type metadata accessor for REMStringMatchingStyle();
  (*(*(v129 - 8) + 8))(v33 + v135, v129);
}

uint64_t sub_1003C86F0(void **a1, uint64_t a2, uint64_t a3)
{
  v113 = a3;
  v5 = type metadata accessor for Date();
  v114 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v101 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v106 = &v100 - v10;
  __chkstk_darwin(v11, v12);
  v103 = &v100 - v13;
  __chkstk_darwin(v14, v15);
  v110 = &v100 - v16;
  v17 = type metadata accessor for DateComponents();
  v116 = *(v17 - 8);
  v117 = v17;
  __chkstk_darwin(v17, v18);
  v107 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v115 = &v100 - v22;
  v23 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v23 - 8, v24);
  v104 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v118 = &v100 - v28;
  __chkstk_darwin(v29, v30);
  v105 = &v100 - v31;
  __chkstk_darwin(v32, v33);
  v109 = &v100 - v34;
  __chkstk_darwin(v35, v36);
  v108 = &v100 - v37;
  __chkstk_darwin(v38, v39);
  v120 = &v100 - v40;
  v41 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v41 - 8, v42);
  v44 = &v100 - v43;
  v45 = type metadata accessor for TimeZone();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45, v47);
  v49 = &v100 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v52 = __chkstk_darwin(v50, v51).n128_u64[0];
  v54 = &v100 - v53;
  v55 = *a1;
  v56 = [v55 timeZone];
  v119 = v54;
  v112 = v45;
  v111 = v46;
  if (v56)
  {
    v57 = v56;
    v102 = a2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    TimeZone.init(identifier:)();
    v59, v60, v61, v62, v63, v64, v65, v66;
    v67 = *(v46 + 48);
    if (v67(v44, 1, v45) == 1)
    {
      static TimeZone.current.getter();
      if (v67(v44, 1, v45) != 1)
      {
        sub_1000050A4(v44, &qword_10093F970, &unk_1007A7670);
      }
    }

    else
    {
      (*(v46 + 32))(v49, v44, v45);
    }

    (*(v46 + 32))(v119, v49, v45);
    a2 = v102;
  }

  else
  {
    static TimeZone.current.getter();
  }

  v68 = [v55 dueDateComponents];
  v69 = v120;
  v70 = v118;
  v71 = v110;
  if (v68)
  {
    v72 = v107;
    v73 = v68;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v116 + 32))(v115, v72, v117);
    v74 = objc_opt_self();
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    v76 = TimeZone._bridgeToObjectiveC()().super.isa;
    v77 = [v74 rem_dateWithDateComponents:isa timeZone:v76];

    if (v77)
    {
      v78 = v108;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v79 = 0;
      v80 = v114;
    }

    else
    {
      v79 = 1;
      v80 = v114;
      v78 = v108;
    }

    (*(v116 + 8))(v115, v117);
    (*(v80 + 56))(v78, v79, 1, v5);
    sub_10012F7FC(v78, v69);
  }

  else
  {
    v80 = v114;
    (*(v114 + 56))(v120, 1, 1, v5);
  }

  v81 = a2;
  v82 = v109;
  sub_10012F78C(v81, v109);
  v83 = *(v80 + 48);
  if (v83(v82, 1, v5) == 1)
  {
    sub_1000050A4(v82, &unk_100938850, qword_100795AE0);
    v84 = 1;
  }

  else
  {
    v85 = *(v80 + 32);
    v85(v71, v82, v5);
    v86 = v69;
    v87 = v105;
    sub_10012F78C(v86, v105);
    if (v83(v87, 1, v5) == 1)
    {
      (*(v80 + 8))(v71, v5);
      sub_1000050A4(v87, &unk_100938850, qword_100795AE0);
      v84 = 0;
    }

    else
    {
      v88 = v103;
      v85(v103, v87, v5);
      sub_1003CA554(&qword_1009464D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v89 = dispatch thunk of static Comparable.< infix(_:_:)();
      v90 = *(v80 + 8);
      v90(v88, v5);
      v90(v71, v5);
      v84 = v89 ^ 1;
    }

    v70 = v118;
  }

  sub_10012F78C(v113, v70);
  if (v83(v70, 1, v5) == 1)
  {
    sub_1000050A4(v120, &unk_100938850, qword_100795AE0);
    (*(v111 + 8))(v119, v112);
    sub_1000050A4(v70, &unk_100938850, qword_100795AE0);
  }

  else
  {
    v91 = *(v80 + 32);
    v92 = v106;
    v91(v106, v70, v5);
    if (v84)
    {
      v93 = v92;
      v94 = v120;
      v95 = v104;
      sub_10012F78C(v120, v104);
      if (v83(v95, 1, v5) != 1)
      {
        v96 = v101;
        v91(v101, v95, v5);
        sub_1003CA554(&qword_1009464D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v97 = v94;
        v84 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
        v98 = *(v80 + 8);
        v98(v96, v5);
        v98(v93, v5);
        sub_1000050A4(v97, &unk_100938850, qword_100795AE0);
        (*(v111 + 8))(v119, v112);
        return v84 & 1;
      }

      (*(v80 + 8))(v93, v5);
      sub_1000050A4(v94, &unk_100938850, qword_100795AE0);
      (*(v111 + 8))(v119, v112);
      sub_1000050A4(v95, &unk_100938850, qword_100795AE0);
    }

    else
    {
      (*(v80 + 8))(v92, v5);
      sub_1000050A4(v120, &unk_100938850, qword_100795AE0);
      (*(v111 + 8))(v119, v112);
    }

    v84 = 0;
  }

  return v84 & 1;
}

uint64_t sub_1003C911C@<X0>(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, void *a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  result = sub_1003CA900(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1003C9154(uint64_t a1)
{
  result = sub_1003CA554(&qword_100945060, &type metadata accessor for REMSiriSearchDataView.RemindersByCriteriaInvocation, &protocol conformance descriptor for REMSiriSearchDataView.RemindersByCriteriaInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1003C91AC(uint64_t a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v7 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v7, v8);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters.criteria.getter();
  v12 = sub_1003CA60C(v11, a2);
  v11, v13, v14, v15, v16, v17, v18, v19;
  if (!v4)
  {
    *v10 = REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters.criteria.getter();
    swift_storeEnumTagMultiPayload();
    v20 = sub_100717C9C(v10, a2, 0);
    sub_1003CA8A0(v10, _s10PredicatesOMa_3);
    sub_1000271D0(v12, a4);
    v12, v21, v22, v23, v24, v25, v26, v27;
    sub_1000303FC(v20, a4);
    v20, v28, v29, v30, v31, v32, v33, v34;
    REMSiriSearchDataView.ListsResult_Codable.init(lists:smartLists:)();
  }
}

uint64_t sub_1003C9378(uint64_t a1)
{
  result = sub_1003CA554(&qword_100945088, &type metadata accessor for REMSiriSearchDataView.ListsByCriteriaInvocation, &protocol conformance descriptor for REMSiriSearchDataView.ListsByCriteriaInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1003C93D0(uint64_t a1, uint64_t a2, int64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = v4;
  v235 = a4;
  v224 = a3;
  v225 = a2;
  v223 = _s10PredicatesOMa(0);
  __chkstk_darwin(v223, v7);
  v226 = (&v216 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000F5104(&qword_100945090, &unk_1007A60E0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v216 - v11;
  v231 = type metadata accessor for REMSearchCriterion();
  v13 = *(v231 - 8);
  __chkstk_darwin(v231, v14);
  v219 = (&v216 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16, v17);
  v236 = &v216 - v18;
  __chkstk_darwin(v19, v20);
  v230 = (&v216 - v21);
  v22 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v22 - 8, v23);
  v218 = &v216 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v220 = &v216 - v27;
  __chkstk_darwin(v28, v29);
  v31 = (&v216 - v30);
  __chkstk_darwin(v32, v33);
  v35 = &v216 - v34;
  v36 = type metadata accessor for Date();
  v221 = *(v36 - 8);
  v37 = *(v221 + 56);
  v233 = v35;
  v37(v35, 1, 1, v36);
  v234 = v31;
  v222 = v36;
  v37(v31, 1, 1, v36);
  v243 = 0;
  v242[0] = 0;
  v38 = *(a1 + 16);
  v39 = v235;
  v40 = v39;
  v232 = v39;
  if (v38)
  {
    v41 = *(v13 + 72);
    v229 = ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v42 = &v229[a1];
    v43 = (v13 + 48);
    v217 = v13;
    v235 = (v13 + 32);
    Predicate = &_swiftEmptyArrayStorage;
    v45 = v231;
    v227 = v43;
    v228 = v41;
    do
    {
      v46 = v5;
      sub_1003C7A14(v42, v233, v234, v40, &v243, v242, v12);
      if (v5)
      {

        Predicate, v56, v57, v58, v59, v60, v61, v62;
LABEL_44:
        v243, v63, v64, v65, v66, v67, v68, v69;
        sub_1000050A4(v234, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v233, &unk_100938850, qword_100795AE0);
        return;
      }

      if ((*v43)(v12, 1, v45) == 1)
      {
        sub_1000050A4(v12, &qword_100945090, &unk_1007A60E0);
      }

      else
      {
        v47 = v45;
        isa = v235->super.isa;
        v49 = v230;
        (v235->super.isa)(v230);
        (isa)(v236, v49, v47);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          Predicate = sub_100365AEC(0, *(Predicate + 16) + 1, 1, Predicate);
        }

        v51 = *(Predicate + 16);
        v50 = *(Predicate + 24);
        v52 = Predicate;
        v43 = v227;
        if (v51 >= v50 >> 1)
        {
          v52 = sub_100365AEC((v50 > 1), v51 + 1, 1, Predicate);
        }

        v41 = v228;
        v53 = v229;
        *v52->clientIdentity = v51 + 1;
        Predicate = v52;
        v54 = &v53[v52 + v51 * v41];
        v55 = v231;
        (isa)(v54, v236, v231);
        v45 = v55;
        v5 = v46;
        v40 = v232;
      }

      v42 += v41;
      --v38;
    }

    while (v38);
    v70 = v243;

    if (v70)
    {
      v71 = v219;
      *v219 = v70;
      (*&v217->coreSuggestionsHandler[10])(v71, enum case for REMSearchCriterion.objectID(_:), v45);
      v217 = v70;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v224;
      v73 = v225;
      v75 = v41;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      goto LABEL_88;
    }

    v217 = 0;
  }

  else
  {

    v217 = 0;
    Predicate = &_swiftEmptyArrayStorage;
  }

  v74 = v224;
  v73 = v225;
LABEL_21:
  v71 = &_swiftEmptyArrayStorage;
  *v226 = Predicate;
  swift_storeEnumTagMultiPayload();
  v75 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v78 = qword_100936080;
  v230 = Predicate;

  if (v78 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v227 = qword_100974E30;
    v79 = sub_100043AA8();
    v80 = [objc_allocWithZone(NSFetchRequest) init];
    v228 = v75;
    v81 = [swift_getObjCClassFromMetadata() entity];
    [v80 setEntity:v81];

    [v80 setAffectedStores:0];
    [v80 setPredicate:v79];

    [v80 setFetchLimit:v74];
    v229 = v80;
    [v80 setFetchOffset:v73];
    v238 = v71;
    v73 = sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v238 = sub_1003EBAD0();
    sub_100271EA8(v71);
    v241 = v238;
    v82 = sub_100235FA0(Predicate);
    Predicate, v83, v84, v85, v86, v87, v88, v89;
    v90 = sub_100277CC0(v82);
    v82, v91, v92, v93, v94, v95, v96, v97;

    v45 = *v90->clientIdentity;
    v231 = v5;
    if (!v45)
    {
      goto LABEL_41;
    }

LABEL_25:
    v240 = v71;
    sub_100026EF4(0, v45 & ~(v45 >> 63), 0);
    if (v45 < 0)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      Predicate = sub_100365AEC(0, *(Predicate + 16) + 1, 1, Predicate);
LABEL_16:
      v77 = *(Predicate + 16);
      v76 = *(Predicate + 24);
      if (v77 >= v76 >> 1)
      {
        Predicate = sub_100365AEC((v76 > 1), v77 + 1, 1, Predicate);
      }

      *(Predicate + 16) = v77 + 1;
      (v235->super.isa)(&v229[Predicate + v75 * v77], v71, v45);
      goto LABEL_21;
    }

    v71 = 0;
    v5 = v240;
    v98 = v90;
    v235 = v90;
    v236 = (v90 & 0xC000000000000001);
    while (1)
    {
      v73 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      if (v236)
      {
        v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v71 >= *v98->clientIdentity)
        {
          goto LABEL_38;
        }

        v74 = *&v98->clientIdentity[8 * v71 + 16];
      }

      v99 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v100)
      {
        goto LABEL_95;
      }

      Predicate = v99;
      v75 = v100;

      v240 = v5;
      v102 = *v5->clientIdentity;
      v101 = *&v5->clientIdentity[8];
      v74 = v102 + 1;
      if (v102 >= v101 >> 1)
      {
        sub_100026EF4((v101 > 1), v102 + 1, 1);
        v5 = v240;
      }

      *v5->clientIdentity = v74;
      v103 = v5 + 16 * v102;
      *(v103 + 4) = Predicate;
      *(v103 + 5) = v75;
      ++v71;
      v98 = v235;
      if (v73 == v45)
      {

        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v45 = _CocoaArrayWrapper.endIndex.getter();
  v231 = v5;
  if (v45)
  {
    goto LABEL_25;
  }

LABEL_41:

  v5 = &_swiftEmptyArrayStorage;
LABEL_42:
  sub_100271EA8(v5);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v104 = v241;
  v105 = Array._bridgeToObjectiveC()().super.isa;
  v104, v106, v107, v108, v109, v110, v111, v112;
  v113 = v229;
  [v229 setRelationshipKeyPathsForPrefetching:v105];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v114 = Array._bridgeToObjectiveC()().super.isa;
  [v113 setSortDescriptors:v114];

  v115 = v231;
  v116 = NSManagedObjectContext.fetch<A>(_:)();
  v5 = v115;
  v71 = v222;
  v117 = v221;
  if (v115)
  {
    sub_1003CA8A0(v226, _s10PredicatesOMa);
    v230, v118, v119, v120, v121, v122, v123, v124;

    goto LABEL_44;
  }

  v125 = v116;
  v75 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v116);
  v125, v126, v127, v128, v129, v130, v131, v132;

  v133 = v220;
  sub_10012F78C(v234, v220);
  v135 = *(v117 + 48);
  v74 = v117 + 48;
  v134 = v135;
  LODWORD(v125) = v135(v133, 1, v71);
  sub_1000050A4(v133, &unk_100938850, qword_100795AE0);
  Predicate = v230;
  if (v125 != 1 || (v141 = v218, sub_10012F78C(v233, v218), v142 = v134(v141, 1, v71), sub_1000050A4(v141, &unk_100938850, qword_100795AE0), v142 != 1))
  {
    v75 = sub_1003C786C(v75, v233, v234, v136, v137, v138, v139, v140);
  }

  v238 = v75;
  if (v242[0] != 1)
  {
    goto LABEL_83;
  }

  v227 = v75 >> 62;
  if (!(v75 >> 62))
  {
    v73 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
      goto LABEL_51;
    }

LABEL_72:
    if (v227)
    {
      v71 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v71 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    goto LABEL_80;
  }

  while (2)
  {
    v73 = _CocoaArrayWrapper.endIndex.getter();
    if (!v73)
    {
      goto LABEL_72;
    }

LABEL_51:
    v143 = 0;
    v232 = (v75 & 0xC000000000000001);
    v229 = (v75 & 0xFFFFFFFFFFFFFF8);
    v224 = v75 + 32;
    v225 = v73;
    v235 = v75;
LABEL_52:
    if (v232)
    {
      v144 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v143 >= *(v229 + 2))
      {
        __break(1u);
        continue;
      }

      v144 = *(v224 + 8 * v143);
    }

    break;
  }

  v45 = v144;
  v145 = [v144 alarms];
  if (!v145)
  {
    goto LABEL_70;
  }

  v146 = v145;
  v231 = v5;
  v228 = sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
  v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v73 >> 62))
  {
    v5 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v236 = v143;
    if (v5)
    {
      goto LABEL_59;
    }

LABEL_69:
    v73, v147, v148, v149, v150, v151, v152, v153;
    Predicate = v230;
    v5 = v231;
    v75 = v235;
    v143 = v236;
    v73 = v225;
LABEL_70:

    v162 = __OFADD__(v143++, 1);
    if (v162)
    {
      goto LABEL_87;
    }

    if (v143 == v73)
    {
      goto LABEL_72;
    }

    goto LABEL_52;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v236 = v143;
  if (!v5)
  {
    goto LABEL_69;
  }

LABEL_59:
  Predicate = 0;
  while (1)
  {
    if ((v73 & 0xC000000000000001) != 0)
    {
      v154 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (Predicate >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v154 = *(v73 + 8 * Predicate + 32);
    }

    v74 = v154;
    v71 = Predicate + 1;
    if (__OFADD__(Predicate, 1))
    {
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v75 = [v154 trigger];

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++Predicate;
    if (v71 == v5)
    {
      goto LABEL_69;
    }
  }

  v73, v155, v156, v157, v158, v159, v160, v161;

  v71 = v236;
  v74 = (v236 + 1);
  Predicate = v230;
  if (__OFADD__(v236, 1))
  {
    goto LABEL_94;
  }

  v5 = v231;
  v75 = v235;
  if (!v227)
  {
    v163 = v229;
    goto LABEL_96;
  }

  if (v74 != _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_97;
  }

LABEL_80:
  while (2)
  {
    while (2)
    {
      if (!(v75 >> 62))
      {
        v164 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v164 >= v71)
        {
          goto LABEL_82;
        }

        goto LABEL_93;
      }

      v164 = _CocoaArrayWrapper.endIndex.getter();
      if (v164 >= v71)
      {
LABEL_82:
        sub_100260C8C(v71, v164);
LABEL_83:
        sub_1003CA8A0(v226, _s10PredicatesOMa);
        Predicate, v165, v166, v167, v168, v169, v170, v171;
        v217, v172, v173, v174, v175, v176, v177, v178;
        sub_1000050A4(v234, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v233, &unk_100938850, qword_100795AE0);
        return;
      }

LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      v238 = 0;
      v239 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v179._object = 0x80000001007EC120;
      v179._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v179);
      v237 = v74;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_96:
      if (v74 == *(v163 + 2))
      {
        continue;
      }

      break;
    }

LABEL_97:
    v180 = (v75 & 0xC000000000000001);
    if ((v75 & 0xC000000000000001) != 0)
    {
      v181 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v74 & 0x8000000000000000) != 0)
      {
        goto LABEL_145;
      }

      if (v74 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_146;
      }

      v181 = *(v75 + 8 * v74 + 32);
    }

    v182 = v181;
    v183 = [(RDXPCStorePerformer *)v181 alarms];
    if (!v183)
    {
LABEL_115:

      if (v71 != v74)
      {
        if (v180)
        {
          v206 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v207 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v71 < 0)
          {
            goto LABEL_150;
          }

          v208 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v71 >= v208)
          {
            goto LABEL_151;
          }

          if (v74 >= v208)
          {
            goto LABEL_152;
          }

          v209 = *(v75 + 32 + 8 * v74);
          v206 = *(v75 + 32 + 8 * v71);
          v207 = v209;
        }

        v210 = v207;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v75 & 0x8000000000000000) != 0 || (v75 & 0x4000000000000000) != 0)
        {
          v75 = sub_1002618D4();
          v211 = (v75 >> 62) & 1;
        }

        else
        {
          LODWORD(v211) = 0;
        }

        v212 = v75 & 0xFFFFFFFFFFFFFF8;
        v213 = *((v75 & 0xFFFFFFFFFFFFFF8) + 8 * v71 + 0x20);
        *((v75 & 0xFFFFFFFFFFFFFF8) + 8 * v71 + 0x20) = v210;

        if ((v75 & 0x8000000000000000) != 0 || v211)
        {
          v75 = sub_1002618D4();
          v212 = v75 & 0xFFFFFFFFFFFFFF8;
          Predicate = v230;
          if ((v74 & 0x8000000000000000) != 0)
          {
LABEL_141:
            __break(1u);
LABEL_142:
            v163 = (v75 & 0xFFFFFFFFFFFFFF8);
            goto LABEL_96;
          }
        }

        else
        {
          Predicate = v230;
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_141;
          }
        }

        if (v74 >= *(v212 + 16))
        {
          goto LABEL_149;
        }

        v214 = v212 + 8 * v74;
        v215 = *(v214 + 32);
        *(v214 + 32) = v206;

        v238 = v75;
      }

      v162 = __OFADD__(v71++, 1);
      if (v162)
      {
        goto LABEL_148;
      }

LABEL_134:
      v162 = __OFADD__(v74++, 1);
      if (v162)
      {
        goto LABEL_147;
      }

      if (!(v75 >> 62))
      {
        goto LABEL_142;
      }

      if (v74 == _CocoaArrayWrapper.endIndex.getter())
      {
        continue;
      }

      goto LABEL_97;
    }

    break;
  }

  v231 = v5;
  v232 = v182;
  v184 = v183;
  v185 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v185 >> 62)
  {
    v193 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v193 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v229 = (v75 & 0xC000000000000001);
  v235 = v75;
  v236 = v71;
  if (!v193)
  {
LABEL_114:
    v185, v186, v187, v188, v189, v190, v191, v192;
    Predicate = v230;
    v5 = v231;
    v75 = v235;
    v71 = v236;
    v180 = v229;
    v182 = v232;
    goto LABEL_115;
  }

  v194 = 0;
  while (1)
  {
    if ((v185 & 0xC000000000000001) != 0)
    {
      v195 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v194 >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_144;
      }

      v195 = *(v185 + 8 * v194 + 32);
    }

    v196 = v195;
    v197 = v194 + 1;
    if (__OFADD__(v194, 1))
    {
      break;
    }

    v198 = [v195 trigger];

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v185, v199, v200, v201, v202, v203, v204, v205;

      Predicate = v230;
      v5 = v231;
      v75 = v235;
      v71 = v236;
      goto LABEL_134;
    }

    ++v194;
    if (v197 == v193)
    {
      goto LABEL_114;
    }
  }

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
}

uint64_t sub_1003CA554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003CA59C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003CA60C(uint64_t a1, uint64_t a2)
{
  v5 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v5, v5);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  swift_storeEnumTagMultiPayload();

  v8 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v9 = [objc_allocWithZone(NSFetchRequest) init];
  v10 = [swift_getObjCClassFromMetadata() entity];
  [v9 setEntity:v10];

  [v9 setAffectedStores:0];
  [v9 setPredicate:v8];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v9 setSortDescriptors:isa];

  v12 = a2;
  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_1003CA8A0(v7, _s10PredicatesOMa_1);
  }

  else
  {
    v23[1] = v13;
    v14 = v13;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v12 = Sequence.elements<A>(ofType:)();

    sub_1003CA8A0(v7, _s10PredicatesOMa_1);
    v14, v15, v16, v17, v18, v19, v20, v21;
  }

  return v12;
}

uint64_t sub_1003CA8A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003CA900(_TtC7remindd19RDXPCStorePerformer *a1, void *a2, uint64_t a3)
{
  v7 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.criteria.getter();
  v8 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.fetchOffset.getter();
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v11 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.fetchLimit.getter();
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  sub_1003C93D0(v7, v10, v13, a1);
  v15 = v14;
  v7, v16, v17, v18, v19, v20, v21, v22;
  if (!v3)
  {
    v23 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.reminderFetchOptions.getter();
    sub_1003ED1A4(v15, v23, a1, a2);
    a3 = v24;
    v15, v25, v26, v27, v28, v29, v30, v31;
  }

  return a3;
}

uint64_t sub_1003CA9C4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009450A0);
  v1 = sub_100006654(v0, qword_1009450A0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1003CAA8C()
{
  result = [objc_opt_self() cloudkit];
  qword_1009450B8 = result;
  return result;
}

uint64_t sub_1003CAAC8()
{
  v1 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = v33 - v3;
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5, v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100936ED0, &unk_100791AF0);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  __chkstk_darwin(v9, v11);
  v13 = v33 - v12;
  v14 = sub_1000F5104(&qword_1009451F0, &unk_1007A61D0);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  __chkstk_darwin(v14, v16);
  v18 = v33 - v17;
  v19 = sub_1000F5104(&qword_1009451F8, qword_1007A6360);
  v20 = *(v19 - 8);
  v43 = v19;
  v44 = v20;
  __chkstk_darwin(v19, v21);
  v38 = v33 - v22;
  NSNotificationCenter.publisher(for:object:)();
  v45 = *(v0 + 40);
  v23 = v45;
  v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v25 = *(v24 - 8);
  v34 = *(v25 + 56);
  v35 = v25 + 56;
  v34(v4, 1, 1, v24);
  v33[1] = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_1003CD57C(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_100006CA4();
  v33[0] = v23;
  v26 = v37;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v4, &qword_100939980, &unk_10079ADA0);
  (*(v36 + 8))(v8, v26);
  swift_allocObject();
  swift_weakInit();
  sub_10000CB48(&qword_100936F10, &unk_100936ED0, &unk_100791AF0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v27 = v39;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v40 + 8))(v13, v27);
  v28 = v33[0];
  v45 = v33[0];
  v34(v4, 1, 1, v24);
  sub_10000CB48(&qword_100945200, &qword_1009451F0, &unk_1007A61D0, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v29 = v38;
  v30 = v41;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000050A4(v4, &qword_100939980, &unk_10079ADA0);

  (*(v42 + 8))(v18, v30);
  swift_allocObject();
  swift_weakInit();
  sub_10000CB48(&qword_100945208, &qword_1009451F8, qword_1007A6360, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v31 = v43;
  Publisher<>.sink(receiveValue:)();

  (*(v44 + 8))(v29, v31);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_1003CB0EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent);
    *(v3 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent) = 1;
    sub_1003CB8BC(v4);
  }

  return result;
}

uint64_t sub_1003CB158(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003CB1F0();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent);
    *(v3 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent) = 0;
    sub_1003CB8BC(v4);
  }

  return result;
}

void sub_1003CB1F0()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v0[5];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if ((*(v0 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent) & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent) = 1;
      sub_1003CB43C(0);
      v10 = [v0[4] newBackgroundContextWithAuthor:RDStalePinnedListsEventHandlerAuthor];
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = v10;
      v12[4] = v1;
      aBlock[4] = sub_1003CD568;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008EFCC0;
      v13 = _Block_copy(aBlock);
      v14 = v10;

      [v14 performBlock:v13];
      _Block_release(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1003CB43C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *v2;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent) != v3)
  {
    if (*(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent))
    {
      *(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForHandlingEvent) = os_transaction_create();
      swift_unknownObjectRelease();
      static os_signpost_type_t.begin.getter();
      if (qword_100935FD8 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v6 + 8))(v9, v5);
      if (qword_100935FD0 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100006654(v10, qword_1009450A0);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v42 = v14;
        v43 = v4;
        *v13 = 136315138;
        swift_getMetatypeMetadata();
        v15 = String.init<A>(describing:)();
        v17 = v16;
        v18 = sub_10000668C(v15, v16, &v42);
        v17, v19, v20, v21, v22, v23, v24, v25;
        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s: Started handling event", v13, 0xCu);
        sub_10000607C(v14);
      }
    }

    else
    {
      if (qword_100935FD0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100006654(v26, qword_1009450A0);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v42 = v30;
        v43 = v4;
        *v29 = 136315138;
        swift_getMetatypeMetadata();
        v31 = String.init<A>(describing:)();
        v33 = v32;
        v34 = sub_10000668C(v31, v32, &v42);
        v33, v35, v36, v37, v38, v39, v40, v41;
        *(v29 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s: Finished handling event", v29, 0xCu);
        sub_10000607C(v30);
      }

      static os_signpost_type_t.end.getter();
      if (qword_100935FD8 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v6 + 8))(v9, v5);
      *(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForHandlingEvent) = 0;
      swift_unknownObjectRelease();
    }
  }
}

void sub_1003CB8BC(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent) != (a1 & 1))
  {
    v2 = v1;
    v3 = *v1;
    if (*(v1 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent))
    {
      *(v1 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForDebouncingEvent) = os_transaction_create();
      swift_unknownObjectRelease();
      if (qword_100935FD0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100006654(v4, qword_1009450A0);
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v36 = v7;
        v37 = v3;
        *v6 = 136315138;
        swift_getMetatypeMetadata();
        v8 = String.init<A>(describing:)();
        v10 = v9;
        v11 = sub_10000668C(v8, v9, &v36);
        v10, v12, v13, v14, v15, v16, v17, v18;
        *(v6 + 4) = v11;
        _os_log_impl(&_mh_execute_header, oslog, v5, "%s: Started debouncing event", v6, 0xCu);
        sub_10000607C(v7);
      }

      else
      {
      }
    }

    else
    {
      if (qword_100935FD0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006654(v19, qword_1009450A0);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v36 = v23;
        v37 = v3;
        *v22 = 136315138;
        swift_getMetatypeMetadata();
        v24 = String.init<A>(describing:)();
        v26 = v25;
        v27 = sub_10000668C(v24, v25, &v36);
        v26, v28, v29, v30, v31, v32, v33, v34;
        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "%s: Finished debouncing event", v22, 0xCu);
        sub_10000607C(v23);
      }

      *(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForDebouncingEvent) = 0;
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1003CBBE0(uint64_t a1, void *a2, void *a3)
{
  v256 = a3;
  v261 = a2;
  v260 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v260 - 8);
  __chkstk_darwin(v260, v4);
  v6 = &v241 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for DispatchQoS();
  v258 = *(v259 - 8);
  __chkstk_darwin(v259, v7);
  v257 = &v241 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = type metadata accessor for UUID();
  v252 = *(v267 - 8);
  __chkstk_darwin(v267, v9);
  v266 = &v241 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v268 = &v241 - v13;
  v14 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v14, v15);
  v17 = &v241 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for REMManualOrdering.Predefined();
  v19 = *&v18[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v18, v20);
  v22 = &v241 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v24 = result;
  v254 = v3;
  (*(v19 + 104))(v22, enum case for REMManualOrdering.Predefined.pinned(_:), v18);
  if (qword_1009367E0 != -1)
  {
    goto LABEL_75;
  }

LABEL_3:
  v25 = 0;
  v26 = sub_10013A0AC(v22, v261, 0, qword_1009752F0);
  v253 = v6;
  v58 = v26;
  (*(v19 + 8))(v22, v18);
  v250 = v58;
  if (v58 && (v59 = v58, sub_100226C14(v276), v59, v276[0]))
  {
    v61 = v276[3];
    v60 = v276[4];
    v245 = 0;
    v62 = v276[2];
    v269 = v276[0];
    v270 = v276[1];
    sub_1000050A4(&v270, &qword_100939A08, &unk_100796A80);
    v271 = v62;
    sub_1000050A4(&v271, &unk_100945230, &qword_1007A2590);
    v272 = v61;
    sub_1000050A4(&v272, &qword_10093E9C0, qword_100794F90);
    v273 = v60;
    sub_1000050A4(&v273, &unk_100945240, &qword_1007A0A70);
    aBlock[0] = v269;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&unk_100945250, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
    sub_1003CD57C(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v58 = v250;
    v25 = v245;
    v22 = Sequence.compactMapToSet<A>(_:)();
    sub_1000050A4(&v269, &unk_10093B300, &unk_100797780);
  }

  else
  {
    v22 = 0;
  }

  v245 = v25;
  if (qword_100935FD0 != -1)
  {
LABEL_77:
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  v64 = sub_100006654(v63, qword_1009450A0);

  v248 = v64;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  v22, v67, v68, v69, v70, v71, v72, v73;
  v74 = os_log_type_enabled(v65, v66);
  v265 = v22;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v274 = swift_slowAlloc();
    *v75 = 136315394;
    aBlock[0] = v256;
    swift_getMetatypeMetadata();
    v76 = String.init<A>(describing:)();
    v78 = v77;
    v79 = sub_10000668C(v76, v77, &v274);
    v78, v80, v81, v82, v83, v84, v85, v86;
    *(v75 + 4) = v79;
    *(v75 + 12) = 2082;
    aBlock[0] = v265;
    sub_1000F5104(&unk_100945220, &unk_1007A61E0);
    v87 = Optional.descriptionOrNil.getter();
    v89 = v88;
    v90 = sub_10000668C(v87, v88, &v274);
    v89, v91, v92, v93, v94, v95, v96, v97;
    *(v75 + 14) = v90;
    _os_log_impl(&_mh_execute_header, v65, v66, "%s: Did fetch pinned lists' manual ordering {identifiersInPinnedListsOrdering: %{public}s}", v75, 0x16u);
    swift_arrayDestroy();

    v22 = v265;
  }

  swift_storeEnumTagMultiPayload();
  v98 = sub_10001F6F4();
  v19 = sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v99 = [objc_allocWithZone(NSFetchRequest) init];
  v100 = [swift_getObjCClassFromMetadata() entity];
  [v99 setEntity:v100];

  [v99 setAffectedStores:0];
  [v99 setPredicate:v98];

  v101 = v245;
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v99 setSortDescriptors:isa];

  v103 = NSManagedObjectContext.fetch<A>(_:)();
  if (v101)
  {
    sub_1001555B4(v17);
    v22, v104, v105, v106, v107, v108, v109, v110;

    v111 = v258;
    goto LABEL_4;
  }

  v245 = 0;
  aBlock[0] = v103;
  v112 = v103;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300, &protocol conformance descriptor for [A]);
  v6 = Sequence.elements<A>(ofType:)();

  sub_1001555B4(v17);
  v112, v113, v114, v115, v116, v117, v118, v119;
  swift_bridgeObjectRetain_n();
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.default.getter();
  v122 = os_log_type_enabled(v120, v121);
  v17 = (v6 >> 62);
  v255 = v6;
  if (!v122)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_41;
  }

  LODWORD(v251) = v121;
  v123 = swift_slowAlloc();
  v249 = swift_slowAlloc();
  v274 = v249;
  *v123 = 136315650;
  aBlock[0] = v256;
  swift_getMetatypeMetadata();
  v124 = String.init<A>(describing:)();
  v126 = v125;
  v127 = sub_10000668C(v124, v125, &v274);
  v126, v128, v129, v130, v131, v132, v133, v134;
  *(v123 + 4) = v127;
  *(v123 + 12) = 2050;
  if (v17)
  {
    v142 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v142 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6, v135, v136, v137, v138, v139, v140, v141;
  *(v123 + 14) = v142;
  v6, v143, v144, v145, v146, v147, v148, v149;
  *(v123 + 22) = 2082;
  aBlock[0] = &_swiftEmptyArrayStorage;
  v264 = v120;
  v263 = (v6 >> 62);
  v262 = v123;
  v19 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v17)
  {
    v150 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v150 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  v17 = (v6 & 0xC000000000000001);
  v18 = &_swiftEmptyArrayStorage;
  while (v150 != v22)
  {
    if (v17)
    {
      v159 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v19 + 16))
      {
        goto LABEL_74;
      }

      v159 = *(v255 + 8 * v22 + 32);
    }

    v160 = v159;
    v161 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      swift_once();
      goto LABEL_3;
    }

    v6 = [v159 remObjectID];

    ++v22;
    if (v6)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v18 = aBlock[0];
      v22 = v161;
    }
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v162 = Array.description.getter();
  v164 = v163;
  v18, v163, v165, v166, v167, v168, v169, v170;
  v171 = sub_10000668C(v162, v164, &v274);
  v164, v172, v173, v174, v175, v176, v177, v178;
  v179 = v262;
  v262[3].isa = v171;
  v180 = v264;
  _os_log_impl(&_mh_execute_header, v264, v251, "%s: Did fetch lists shared to current user {count: %{public}ld, objectIDs: %{public}s)}", v179, 0x20u);
  swift_arrayDestroy();

  v6 = v255;
  v17 = v263;
LABEL_41:
  v22 = v265;
  if (v17)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      goto LABEL_79;
    }

LABEL_43:
    v181 = 0;
    v251 = v6 & 0xC000000000000001;
    v247 = v6 & 0xFFFFFFFFFFFFFF8;
    v246 = v6 + 32;
    v263 = (v22 + 56);
    v262 = v252 + 2;
    v264 = v252 + 1;
    v244 = &v252[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    *&v158 = 136315650;
    v241 = v158;
    v249 = v18;
    v242 = v24;
    while (1)
    {
      if (v251)
      {
        v182 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v181 >= *(v247 + 16))
        {
          __break(1u);
          goto LABEL_77;
        }

        v182 = *(v246 + 8 * v181);
      }

      v17 = v182;
      v183 = __OFADD__(v181, 1);
      v181 = (v181 + 1);
      if (v183)
      {
        __break(1u);
        goto LABEL_73;
      }

      v184 = [v182 identifier];
      if (!v184)
      {
        goto LABEL_46;
      }

      v185 = v184;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (!v22 || !*(v22 + 16))
      {
        goto LABEL_61;
      }

      sub_1003CD57C(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

      v186 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v194 = -1 << *(v22 + 32);
      v195 = v186 & ~v194;
      if (((*&v263[(v195 >> 3) & 0xFFFFFFFFFFFFFF8] >> v195) & 1) == 0)
      {
        break;
      }

      v196 = ~v194;
      v197 = v252[9].isa;
      v198 = v252[2].isa;
      while (1)
      {
        v199 = v266;
        v200 = v267;
        v198(v266, *&v265->clientIdentity[32] + v197 * v195, v267);
        sub_1003CD57C(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v201 = dispatch thunk of static Equatable.== infix(_:_:)();
        v19 = v264->isa;
        (v264->isa)(v199, v200);
        if (v201)
        {
          break;
        }

        v195 = (v195 + 1) & v196;
        if (((*&v263[(v195 >> 3) & 0xFFFFFFFFFFFFFF8] >> v195) & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      v22 = v265;
      v265, v187, v188, v189, v190, v191, v192, v193;
      if (([v17 isPinnedByCurrentUser] & 1) == 0)
      {
        v19 = 1;
        v24 = v242;
        v58 = v250;
        v6 = v255;
LABEL_63:
        [v17 setIsPinnedByCurrentUser:{v19, v241}];
        v17 = v17;
        v202 = Logger.logObject.getter();
        v203 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v202, v203))
        {
          v243 = v203;
          v204 = swift_slowAlloc();
          v274 = swift_slowAlloc();
          *v204 = v241;
          aBlock[0] = v256;
          swift_getMetatypeMetadata();
          v205 = String.init<A>(describing:)();
          v207 = v206;
          v208 = sub_10000668C(v205, v206, &v274);
          v207, v209, v210, v211, v212, v213, v214, v215;
          *(v204 + 4) = v208;
          *(v204 + 12) = 2082;
          v216 = [v17 remObjectID];
          if (v216)
          {
            v217 = v216;
            v218 = [v216 description];

            v219 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v221 = v220;
          }

          else
          {
            v221 = 0xE300000000000000;
            v219 = 7104878;
          }

          v222 = sub_10000668C(v219, v221, &v274);
          v221, v223, v224, v225, v226, v227, v228, v229;
          *(v204 + 14) = v222;
          *(v204 + 22) = 1026;
          *(v204 + 24) = v19;
          _os_log_impl(&_mh_execute_header, v202, v243, "%s: Updated pin state {list: %{public}s, isPinnedByCurrentUser: %{BOOL,public}d}", v204, 0x1Cu);
          swift_arrayDestroy();

          (v264->isa)(v268, v267);
          v22 = v265;
          v6 = v255;
          v18 = v249;
          v58 = v250;
        }

        else
        {

          (v264->isa)(v268, v267);
          v18 = v249;
        }

        goto LABEL_47;
      }

      v24 = v242;
      v58 = v250;
      v6 = v255;
      v18 = v249;
LABEL_45:
      (v19)(v268, v267);
LABEL_46:

LABEL_47:
      if (v181 == v18)
      {
        goto LABEL_79;
      }
    }

LABEL_60:
    v22 = v265;
    v265, v187, v188, v189, v190, v191, v192, v193;
    v24 = v242;
    v58 = v250;
    v6 = v255;
    v18 = v249;
LABEL_61:
    if ([v17 isPinnedByCurrentUser])
    {
      v19 = 0;
      goto LABEL_63;
    }

    v19 = v264->isa;
    goto LABEL_45;
  }

  v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
    goto LABEL_43;
  }

LABEL_79:
  v22, v151, v152, v153, v154, v155, v156, v157;
  v6, v230, v231, v232, v233, v234, v235, v236;
  v237 = v261;
  if ([v261 hasChanges])
  {
    aBlock[0] = 0;
    v238 = [v237 save:aBlock];
    v239 = aBlock[0];
    v111 = v258;
    if (v238)
    {

      goto LABEL_9;
    }

    v240 = v239;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_4:
    if (qword_100935FD0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_1009450A0);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v274 = swift_slowAlloc();
      *v30 = 136315394;
      aBlock[0] = v256;
      swift_getMetatypeMetadata();
      v31 = String.init<A>(describing:)();
      v33 = v32;
      v34 = sub_10000668C(v31, v32, &v274);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      swift_getErrorValue();
      v42 = Error.rem_errorDescription.getter();
      v44 = v43;
      v45 = sub_10000668C(v42, v43, &v274);
      v44, v46, v47, v48, v49, v50, v51, v52;
      *(v30 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s: Failed to handle event {error: %{public}s}", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {

    v111 = v258;
  }

LABEL_9:
  v53 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1003CD574;
  aBlock[5] = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008EFCE8;
  v54 = _Block_copy(aBlock);

  v55 = v257;
  static DispatchQoS.unspecified.getter();
  v274 = &_swiftEmptyArrayStorage;
  sub_1003CD57C(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v56 = v253;
  v57 = v260;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v54);
  (*(v254 + 8))(v56, v57);
  (*(v111 + 8))(v55, v259);
}

uint64_t sub_1003CD260(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(result + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent);
    *(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent) = 0;
    sub_1003CB43C(v3);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v2, ObjectType, v4);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1003CD320()
{
  sub_1000536E0(v0 + 16);

  v1 = OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_debounceInterval;
  v2 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  *(v0 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_cancellables), v3, v4, v5, v6, v7, v8, v9;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1003CD3D8()
{
  sub_1003CD320();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDStalePinnedListsEventHandler(uint64_t a1)
{
  result = qword_100945120;
  if (!qword_100945120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003CD484(uint64_t a1)
{
  result = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
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

uint64_t sub_1003CD57C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003CD5CC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945260);
  v1 = sub_100006654(v0, qword_100945260);
  if (qword_1009364B8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975170);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003CD694(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2)
{
  v3 = v2;
  v57 = a1;
  v5 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v6 = (v5 - 8);
  v62 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v58 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v56 = &v55 - v11;
  v12 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v55 - v14;
  v16 = OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_storeControllerNotificationCenterToken;
  v17 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v18 = *(v17 - 8);
  v60 = *(v18 + 56);
  v61 = v17;
  v59 = v18 + 56;
  v60(v3 + v16, 1, 1);
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  v20 = [objc_opt_self() cdEntityName];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(inited + 32) = v21;
  *(inited + 40) = v23;
  v24 = [objc_opt_self() cdEntityName];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *(inited + 48) = v25;
  *(inited + 56) = v27;
  v28 = [objc_opt_self() cdEntityName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *(inited + 64) = v29;
  *(inited + 72) = v31;
  v32 = v15;
  v33 = v56;
  v34 = sub_10038D894(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v35 = v57;
  *(v3 + 16) = v57;
  type metadata accessor for REMWidgetRefresh();
  swift_allocObject();
  v36 = v35;
  *(v3 + OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_widgetRefresh) = REMWidgetRefresh.init(interval:queue:)();
  swift_allocObject();
  v37 = v36;
  *(v3 + OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_highPriorityWidgetRefresh) = REMWidgetRefresh.init(interval:queue:)();
  *(v3 + 24) = a2;
  v38 = swift_allocObject();
  swift_weakInit();

  UUID.init()();
  sub_100026CD8(v32, v33, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  *(v33 + v6[7]) = v34;
  *(v33 + v6[8]) = v37;
  v39 = (v33 + v6[9]);
  *v39 = sub_10002B188;
  v39[1] = v38;
  v40 = *(a2 + 40);
  v57 = v34;

  os_unfair_lock_lock(v40);
  v41 = v58;
  sub_100026CD8(v33, v58, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  swift_beginAccess();
  v42 = *(a2 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 48) = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_100365714(0, *v42->clientIdentity + 1, 1, v42);
    *(a2 + 48) = v42;
  }

  v45 = *v42->clientIdentity;
  v44 = *&v42->clientIdentity[8];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100365714((v44 > 1), v45 + 1, 1, v42);
  }

  *v42->clientIdentity = v45 + 1;
  sub_10035083C(v41, v42 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v45, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  *(a2 + 48) = v42;
  swift_endAccess();
  os_unfair_lock_unlock(v40);
  v57, v46, v47, v48, v49, v50, v51, v52;

  sub_1003508A4(v33, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

  (v60)(v32, 0, 1, v61);
  v53 = OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_storeControllerNotificationCenterToken;
  swift_beginAccess();
  sub_10014D740(v32, v3 + v53);
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CDBB4()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v19[-v4];
  v6 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_storeControllerNotificationCenterToken;
  swift_beginAccess();
  sub_10014D7CC(v1 + v11, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10034EE48(v5);
LABEL_5:

    sub_10034EE48(v1 + v11);

    return v1;
  }

  sub_10035083C(v5, v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  v12 = *(v1 + 24);
  v13 = *(v12 + 40);

  os_unfair_lock_lock(v13);
  __chkstk_darwin(v14, v15);
  *&v19[-16] = v10;
  swift_beginAccess();
  v16 = sub_1002601AC(sub_10014D8A4, &v19[-32]);
  v17 = *(*(v12 + 48) + 16);
  if (v17 >= v16)
  {
    sub_100260C60(v16, v17);
    swift_endAccess();
    os_unfair_lock_unlock(v13);

    sub_1003508A4(v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    goto LABEL_5;
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1003CDE48()
{
  sub_1003CDBB4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDWidgetRefreshEngine(uint64_t a1)
{
  result = qword_1009452B0;
  if (!qword_1009452B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003CDEF4(uint64_t a1)
{
  sub_1001490E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003CDFA4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945370);
  v1 = sub_100006654(v0, qword_100945370);
  if (qword_100936418 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1003CE180(void *a1, int a2, uint64_t a3, void *aBlock, const char *a5, SEL *a6)
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);
  v13 = a1;
  sub_1003D00E4(v10, v12, v13, v9, a5, a6);
  _Block_release(v9);
  _Block_release(v9);

  v12, v14, v15, v16, v17, v18, v19, v20;
  return result;
}

void sub_1003CE22C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100945370);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v11 = 136446210;
    v12 = [a1 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = a3;
    v15 = v4;
    v16 = a2;
    v18 = v17;

    v19 = sub_10000668C(v13, v18, aBlock);
    v20 = v18;
    a2 = v16;
    v4 = v15;
    a3 = v14;
    v20, v21, v22, v23, v24, v25, v26, v27;
    *(v11 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "getTrackingState with {clientID: %{public}s}", v11, 0xCu);
    sub_10000607C(v31);
  }

  v28 = *(v4 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a3;
  aBlock[4] = sub_1001C66EC;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10016AC08;
  aBlock[3] = &unk_1008EFF40;
  v30 = _Block_copy(aBlock);

  [v28 getTrackingStateWithClientID:a1 completionHandler:v30];
  _Block_release(v30);
}

void sub_1003CE53C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100945370);
  swift_unknownObjectRetain();
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v14 = 136446466;
    v15 = [a2 description];
    v43 = v5;
    v44 = a3;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10000668C(v16, v18, aBlock);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v27 = [v11 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = v28;
    v5 = v43;
    v32 = sub_10000668C(v31, v30, aBlock);
    v30, v33, v34, v35, v36, v37, v38, v39;
    *(v14 + 14) = v32;
    a3 = v44;
    _os_log_impl(&_mh_execute_header, v12, v13, "saveTrackingState with {clientID: %{public}s, trackingState: %{public}s}", v14, 0x16u);
    swift_arrayDestroy();
  }

  v40 = *(v5 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  v41 = swift_allocObject();
  *(v41 + 16) = a3;
  *(v41 + 24) = a4;
  aBlock[4] = sub_10018ADFC;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008EFEF0;
  v42 = _Block_copy(aBlock);

  [v40 saveTrackingState:v11 withClientID:a2 completionHandler:v42];
  _Block_release(v42);
}

void sub_1003CE8D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100945370);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v38 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446210;
    if (a1)
    {
      v17 = [v12 description];
      v37 = v12;
      v18 = a5;
      v19 = v6;
      v20 = a4;
      v21 = v17;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      a4 = v20;
      v6 = v19;
      a5 = v18;
      v12 = v37;
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 7104878;
    }

    v25 = sub_10000668C(v22, v24, aBlock);
    v24, v26, v27, v28, v29, v30, v31, v32;
    *(v15 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "fetchHistory after {token: %{public}s}", v15, 0xCu);
    sub_10000607C(v16);

    a3 = v38;
  }

  else
  {
  }

  v33 = *(v6 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v35 = swift_allocObject();
  *(v35 + 16) = a4;
  *(v35 + 24) = a5;
  aBlock[4] = sub_1003D02C0;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003CEB94;
  aBlock[3] = &unk_1008EFEA0;
  v36 = _Block_copy(aBlock);

  [v33 fetchHistoryAfterToken:v12 entityNames:isa transactionFetchLimit:a3 completionHandler:v36];
  _Block_release(v36);
}

void sub_1003CEB94(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_1003CECFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v44 = a5;
  v45 = a3;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100945370);
  (*(v11 + 16))(v14, a1, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v42 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v43 = a2;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136446210;
    v22 = Date.description.getter();
    v41[1] = a1;
    v23 = a4;
    v25 = v24;
    (*(v11 + 8))(v14, v10);
    v26 = sub_10000668C(v22, v25, aBlock);
    v27 = v25;
    a4 = v23;
    v27, v28, v29, v30, v31, v32, v33, v34;
    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "fetchHistory after {date: %{public}s}", v19, 0xCu);
    sub_10000607C(v21);

    v6 = v42;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v35 = *(v6 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v37 = Array._bridgeToObjectiveC()().super.isa;
  v38 = swift_allocObject();
  v39 = v44;
  *(v38 + 16) = a4;
  *(v38 + 24) = v39;
  aBlock[4] = sub_1003D02C0;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003CEB94;
  aBlock[3] = &unk_1008EFE50;
  v40 = _Block_copy(aBlock);

  [v35 fetchHistoryAfterDate:isa entityNames:v37 transactionFetchLimit:v45 completionHandler:v40];
  _Block_release(v40);
}

void sub_1003CF1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100945370);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v12 = 136446210;
    v13 = [v9 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = a3;
    v16 = v4;
    v17 = a2;
    v19 = v18;

    v20 = sub_10000668C(v14, v19, aBlock);
    v21 = v19;
    a2 = v17;
    v4 = v16;
    a3 = v15;
    v21, v22, v23, v24, v25, v26, v27, v28;
    *(v12 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "fetchHistory after {token: %{public}s}", v12, 0xCu);
    sub_10000607C(v32);
  }

  v29 = *(v4 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a3;
  aBlock[4] = sub_10018ADFC;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008EFE00;
  v31 = _Block_copy(aBlock);

  [v29 deleteHistoryBeforeToken:v9 completionHandler:v31];
  _Block_release(v31);
}

void sub_1003CF4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945370);
  (*(v9 + 16))(v12, a1, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v38 = a2;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136446210;
    v20 = Date.description.getter();
    v37[1] = a1;
    v21 = v4;
    v23 = v22;
    (*(v9 + 8))(v12, v8);
    v24 = sub_10000668C(v20, v23, aBlock);
    v25 = v23;
    v4 = v21;
    v25, v26, v27, v28, v29, v30, v31, v32;
    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "fetchHistory after {date: %{public}s}", v17, 0xCu);
    sub_10000607C(v19);
    a2 = v38;

    a3 = v39;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v33 = *(v4 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v35 = swift_allocObject();
  *(v35 + 16) = a2;
  *(v35 + 24) = a3;
  aBlock[4] = sub_100189954;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008EFDB0;
  v36 = _Block_copy(aBlock);

  [v33 deleteHistoryBeforeDate:isa completionHandler:v36];
  _Block_release(v36);
}

void sub_1003CF920(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100945370);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  a1, v11, v12, v13, v14, v15, v16, v17;
  if (os_log_type_enabled(v9, v10))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35[0] = v19;
    *v18 = 136446210;
    sub_10003980C();
    v20 = Array.description.getter();
    v22 = v21;
    v23 = sub_10000668C(v20, v21, v35);
    v22, v24, v25, v26, v27, v28, v29, v30;
    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "fetchAuxiliaryChangeInfos with {auxiliaryChangeInfoObjectIDs: %{public}s}", v18, 0xCu);
    sub_10000607C(v19);
  }

  v31 = *(v4 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  sub_10003980C();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = a3;
  v35[4] = sub_1003CFE20;
  v35[5] = v33;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 1107296256;
  v35[2] = sub_1003CFB74;
  v35[3] = &unk_1008EFD60;
  v34 = _Block_copy(v35);

  [v31 fetchAuxiliaryChangeInfos:isa completionHandler:v34];
  _Block_release(v34);
}

void sub_1003CFB74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_10003980C();
  sub_10018BA8C();
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = a3;
  v4(v5, a3);

  v5, v6, v7, v8, v9, v10, v11, v12;
}

void sub_1003CFCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10003980C();
  sub_10018BA8C();
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

id sub_1003CFDB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDXPCChangeTrackingPerformer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003CFE58(uint64_t a1, uint64_t a2)
{
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100945370);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "currentChangeToken initiated", v7, 2u);
  }

  v8 = [*(a1 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation) currentChangeToken];
  (*(a2 + 16))(a2, v8);
}

void sub_1003CFF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100945370);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v7, v8, "currentChangeToken for {accountTypes: %ld}", v9, 0xCu);
  }

  v10 = [*(a2 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation) currentChangeTokenForAccountTypes:a1];
  (*(a3 + 16))(a3, v10);
}

void sub_1003D00E4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4, const char *a5, SEL *a6)
{
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100945370);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  a2, v15, v16, v17, v18, v19, v20, v21;
  if (os_log_type_enabled(v13, v14))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_10000668C(a1, a2, &v27);
    _os_log_impl(&_mh_execute_header, v13, v14, a5, v22, 0xCu);
    sub_10000607C(v23);
  }

  v24 = *(a3 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 *a6];

  (*(a4 + 16))(a4, v26);
}

uint64_t sub_1003D02DC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945420);
  v1 = sub_100006654(v0, qword_100945420);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1003D03A4()
{
  result = [objc_opt_self() cloudkit];
  qword_100945438 = result;
  return result;
}

uint64_t sub_1003D03E0()
{
  v1 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = v33 - v3;
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5, v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100936ED0, &unk_100791AF0);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  __chkstk_darwin(v9, v11);
  v13 = v33 - v12;
  v14 = sub_1000F5104(&qword_1009451F0, &unk_1007A61D0);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  __chkstk_darwin(v14, v16);
  v18 = v33 - v17;
  v19 = sub_1000F5104(&qword_1009451F8, qword_1007A6360);
  v20 = *(v19 - 8);
  v43 = v19;
  v44 = v20;
  __chkstk_darwin(v19, v21);
  v38 = v33 - v22;
  NSNotificationCenter.publisher(for:object:)();
  v45 = *(v0 + 40);
  v23 = v45;
  v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v25 = *(v24 - 8);
  v34 = *(v25 + 56);
  v35 = v25 + 56;
  v34(v4, 1, 1, v24);
  v33[1] = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_1003CD57C(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_100006CA4();
  v33[0] = v23;
  v26 = v37;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v4, &qword_100939980, &unk_10079ADA0);
  (*(v36 + 8))(v8, v26);
  swift_allocObject();
  swift_weakInit();
  sub_10000CB48(&qword_100936F10, &unk_100936ED0, &unk_100791AF0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v27 = v39;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v40 + 8))(v13, v27);
  v28 = v33[0];
  v45 = v33[0];
  v34(v4, 1, 1, v24);
  sub_10000CB48(&qword_100945200, &qword_1009451F0, &unk_1007A61D0, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v29 = v38;
  v30 = v41;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000050A4(v4, &qword_100939980, &unk_10079ADA0);

  (*(v42 + 8))(v18, v30);
  swift_allocObject();
  swift_weakInit();
  sub_10000CB48(&qword_100945208, &qword_1009451F8, qword_1007A6360, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v31 = v43;
  Publisher<>.sink(receiveValue:)();

  (*(v44 + 8))(v29, v31);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_1003D0A04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent);
    *(v3 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent) = 1;
    sub_1003D11D4(v4);
  }

  return result;
}

uint64_t sub_1003D0A70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003D0B08();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent);
    *(v3 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent) = 0;
    sub_1003D11D4(v4);
  }

  return result;
}

void sub_1003D0B08()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v0[5];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if ((*(v0 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent) & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent) = 1;
      sub_1003D0D54(0);
      v10 = [v0[4] newBackgroundContextWithAuthor:RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandlerAuthor];
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = v10;
      v12[4] = v1;
      aBlock[4] = sub_1003D2D14;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008F00D0;
      v13 = _Block_copy(aBlock);
      v14 = v10;

      [v14 performBlock:v13];
      _Block_release(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1003D0D54(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *v2;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent) != v3)
  {
    if (*(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent))
    {
      *(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForHandlingEvent) = os_transaction_create();
      swift_unknownObjectRelease();
      static os_signpost_type_t.begin.getter();
      if (qword_100935FF8 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v6 + 8))(v9, v5);
      if (qword_100935FF0 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100006654(v10, qword_100945420);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v42 = v14;
        v43 = v4;
        *v13 = 136315138;
        swift_getMetatypeMetadata();
        v15 = String.init<A>(describing:)();
        v17 = v16;
        v18 = sub_10000668C(v15, v16, &v42);
        v17, v19, v20, v21, v22, v23, v24, v25;
        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s: Started handling event", v13, 0xCu);
        sub_10000607C(v14);
      }
    }

    else
    {
      if (qword_100935FF0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100006654(v26, qword_100945420);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v42 = v30;
        v43 = v4;
        *v29 = 136315138;
        swift_getMetatypeMetadata();
        v31 = String.init<A>(describing:)();
        v33 = v32;
        v34 = sub_10000668C(v31, v32, &v42);
        v33, v35, v36, v37, v38, v39, v40, v41;
        *(v29 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s: Finished handling event", v29, 0xCu);
        sub_10000607C(v30);
      }

      static os_signpost_type_t.end.getter();
      if (qword_100935FF8 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v6 + 8))(v9, v5);
      *(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForHandlingEvent) = 0;
      swift_unknownObjectRelease();
    }
  }
}

void sub_1003D11D4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent) != (a1 & 1))
  {
    v2 = v1;
    v3 = *v1;
    if (*(v1 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent))
    {
      *(v1 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForDebouncingEvent) = os_transaction_create();
      swift_unknownObjectRelease();
      if (qword_100935FF0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100006654(v4, qword_100945420);
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v36 = v7;
        v37 = v3;
        *v6 = 136315138;
        swift_getMetatypeMetadata();
        v8 = String.init<A>(describing:)();
        v10 = v9;
        v11 = sub_10000668C(v8, v9, &v36);
        v10, v12, v13, v14, v15, v16, v17, v18;
        *(v6 + 4) = v11;
        _os_log_impl(&_mh_execute_header, oslog, v5, "%s: Started debouncing event", v6, 0xCu);
        sub_10000607C(v7);
      }

      else
      {
      }
    }

    else
    {
      if (qword_100935FF0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006654(v19, qword_100945420);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v36 = v23;
        v37 = v3;
        *v22 = 136315138;
        swift_getMetatypeMetadata();
        v24 = String.init<A>(describing:)();
        v26 = v25;
        v27 = sub_10000668C(v24, v25, &v36);
        v26, v28, v29, v30, v31, v32, v33, v34;
        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "%s: Finished debouncing event", v22, 0xCu);
        sub_10000607C(v23);
      }

      *(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForDebouncingEvent) = 0;
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1003D14F8(uint64_t a1, void *a2, void *a3)
{
  v281 = a3;
  v275 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v275 - 8);
  __chkstk_darwin(v275, v5);
  v274 = &v255 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v273 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v272 = &v255 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v284, v10);
  v12 = &v255 - v11;
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v13, v14);
  v282 = &v255 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v255 - v18;
  __chkstk_darwin(v20, v21);
  v285 = &v255 - v22;
  __chkstk_darwin(v23, v24);
  v26 = &v255 - v25;
  __chkstk_darwin(v27, v28);
  v30 = (&v255 - v29);
  v288 = type metadata accessor for UUID();
  v270 = *(v288 - 8);
  __chkstk_darwin(v288, v31);
  v268 = &v255 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v34);
  v36 = &v255 - v35;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v271 = result;
  if (!result)
  {
    return result;
  }

  v266 = v7;
  v267 = v4;
  v38 = a2;
  v277 = sub_1003D2F60();
  v259 = v13;
  if (qword_100935FF0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = sub_100006654(v39, qword_100945420);
  v41 = v277;

  v262 = v40;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v41, v44, v45, v46, v47, v48, v49, v50;
  LODWORD(v287) = v43;
  v51 = os_log_type_enabled(v42, v43);
  v52 = v281;
  v269 = v38;
  v261 = v19;
  v265 = v26;
  v263 = v30;
  if (v51)
  {
    v53 = swift_slowAlloc();
    v290 = swift_slowAlloc();
    *v53 = 136315394;
    aBlock[0] = v52;
    swift_getMetatypeMetadata();
    v54 = String.init<A>(describing:)();
    v56 = v55;
    v57 = sub_10000668C(v54, v55, &v290);
    v56, v58, v59, v60, v61, v62, v63, v64;
    *(v53 + 4) = v57;
    *(v53 + 12) = 2082;
    sub_1003CD57C(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v65 = Dictionary.description.getter();
    v67 = v66;
    v68 = sub_10000668C(v65, v66, &v290);
    v69 = v67;
    v30 = v263;
    v69, v70, v71, v72, v73, v74, v75, v76;
    *(v53 + 14) = v68;
    v26 = v265;
    _os_log_impl(&_mh_execute_header, v42, v287, "%s: Did fetch expected mapping of 'mostRecentTargetTemplateIdentifierByCurrentUser' by 'sourceListIdentifier' {mapping: %{public}s}", v53, 0x16u);
    swift_arrayDestroy();
    v77 = v269;

    v78 = v285;
  }

  else
  {

    v78 = v285;
    v77 = v38;
  }

  v112 = sub_1003D358C(v77);
  swift_bridgeObjectRetain_n();
  v113 = Logger.logObject.getter();
  LODWORD(v283) = static os_log_type_t.default.getter();
  v114 = os_log_type_enabled(v113, v283);
  v276 = v12;
  v286 = (v112 >> 62);
  v287 = v112;
  if (!v114)
  {

    swift_bridgeObjectRelease_n();
    v153 = v277;
    goto LABEL_32;
  }

  v280 = v113;
  v115 = v112 >> 62;
  v78 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v290 = v30;
  *v78 = 136315650;
  aBlock[0] = v281;
  swift_getMetatypeMetadata();
  v116 = String.init<A>(describing:)();
  v118 = v117;
  v119 = sub_10000668C(v116, v117, &v290);
  v118, v120, v121, v122, v123, v124, v125, v126;
  *(v78 + 4) = v119;
  *(v78 + 12) = 2050;
  v112 = v115;
  if (v115)
  {
    goto LABEL_76;
  }

  v134 = v287;
  for (i = *((v287 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v134, v127, v128, v129, v130, v131, v132, v133;
    *(v78 + 14) = i;
    v134, v136, v137, v138, v139, v140, v141, v142;
    *(v78 + 22) = 2082;
    aBlock[0] = &_swiftEmptyArrayStorage;
    v279 = v78;
    v278 = v30;
    v143 = v134 & 0xFFFFFFFFFFFFFF8;
    v144 = v112 ? _CocoaArrayWrapper.endIndex.getter() : *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v154 = 0;
    v155 = v134 & 0xC000000000000001;
    v156 = &_swiftEmptyArrayStorage;
    while (v144 != v154)
    {
      if (v155)
      {
        v157 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v154 >= *(v143 + 16))
        {
          goto LABEL_68;
        }

        v157 = *(v287 + 8 * v154 + 32);
      }

      v158 = v157;
      v159 = v154 + 1;
      if (__OFADD__(v154, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        swift_once();
LABEL_8:
        v79 = type metadata accessor for Logger();
        sub_100006654(v79, qword_100945420);
        swift_errorRetain();
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v84 = v281;
          v290 = v83;
          *v82 = 136315394;
          aBlock[0] = v84;
          swift_getMetatypeMetadata();
          v85 = String.init<A>(describing:)();
          v87 = v86;
          v88 = sub_10000668C(v85, v86, &v290);
          v87, v89, v90, v91, v92, v93, v94, v95;
          *(v82 + 4) = v88;
          *(v82 + 12) = 2082;
          swift_getErrorValue();
          v96 = Error.rem_errorDescription.getter();
          v98 = v97;
          v99 = sub_10000668C(v96, v97, &v290);
          v98, v100, v101, v102, v103, v104, v105, v106;
          *(v82 + 14) = v99;
          _os_log_impl(&_mh_execute_header, v80, v81, "%s: Failed to handle event {error: %{public}s}", v82, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        goto LABEL_11;
      }

      v160 = [v157 remObjectID];

      ++v154;
      v12 = v276;
      if (v160)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v156 = aBlock[0];
        v154 = v159;
      }
    }

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v161 = Array.description.getter();
    v163 = v162;
    v156, v162, v164, v165, v166, v167, v168, v169;
    v170 = sub_10000668C(v161, v163, &v290);
    v163, v171, v172, v173, v174, v175, v176, v177;
    v178 = v279;
    *(v279 + 24) = v170;
    v179 = v280;
    _os_log_impl(&_mh_execute_header, v280, v283, "%s: Did fetch lists shared to current user {count: %{public}ld, objectIDs: %{public}s)}", v178, 0x20u);
    swift_arrayDestroy();

    v77 = v269;
    v78 = v285;
    v26 = v265;
    v30 = v263;
    v153 = v277;
    v112 = v287;
LABEL_32:
    if (v286)
    {
      break;
    }

    v180 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v180)
    {
      goto LABEL_71;
    }

LABEL_34:
    if (v180 >= 1)
    {
      v181 = 0;
      v278 = v112 & 0xC000000000000001;
      v286 = (v270 + 56);
      v258 = v270 + 16;
      v280 = (v270 + 48);
      v256 = (v270 + 32);
      v283 = (v270 + 8);
      *&v152 = 136315650;
      v257 = v152;
      v264 = v36;
      v279 = v180;
      while (1)
      {
        if (v278)
        {
          v182 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v182 = *(v112 + 8 * v181 + 32);
        }

        v183 = v182;
        v184 = [v182 identifier];
        if (v184)
        {
          v185 = v184;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v153 + 16) && (v186 = sub_100363F20(v36), (v187 & 1) != 0))
          {
            (*(v270 + 16))(v30, *(v153 + 56) + *(v270 + 72) * v186, v288);
            v188 = 0;
          }

          else
          {
            v188 = 1;
          }

          v189 = *v286;
          v190 = 1;
          (*v286)(v30, v188, 1, v288);
          v191 = [v183 mostRecentTargetTemplateIdentifierByCurrentUser];
          if (v191)
          {
            v192 = v191;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v190 = 0;
          }

          v193 = v288;
          v189(v26, v190, 1, v288);
          v194 = *(v284 + 48);
          sub_10018E470(v26, v12);
          sub_10018E470(v30, &v12[v194]);
          isa = v280->isa;
          if ((v280->isa)(v12, 1, v193) == 1)
          {
            sub_1000050A4(v26, &unk_100939D90, "8\n\r");
            if ((isa)(&v12[v194], 1, v288) != 1)
            {
              goto LABEL_53;
            }

            sub_1000050A4(v12, &unk_100939D90, "8\n\r");
          }

          else
          {
            sub_10018E470(v12, v78);
            if ((isa)(&v12[v194], 1, v288) == 1)
            {
              sub_1000050A4(v26, &unk_100939D90, "8\n\r");
              (*v283)(v78, v288);
LABEL_53:
              sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
LABEL_54:
              v196 = v261;
              sub_10018E470(v30, v261);
              if ((isa)(v196, 1, v288) == 1)
              {
                v197 = 0;
              }

              else
              {
                v197 = UUID._bridgeToObjectiveC()().super.isa;
                (*v283)(v196, v288);
              }

              v198 = v282;
              v36 = v264;
              [v183 setMostRecentTargetTemplateIdentifierByCurrentUser:v197];

              sub_10018E470(v30, v198);
              v199 = v183;
              v200 = Logger.logObject.getter();
              v201 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v200, v201))
              {
                v202 = swift_slowAlloc();
                v260 = swift_slowAlloc();
                v290 = v260;
                *v202 = v257;
                aBlock[0] = v281;
                swift_getMetatypeMetadata();
                v203 = String.init<A>(describing:)();
                v205 = v204;
                v206 = sub_10000668C(v203, v204, &v290);
                v205, v207, v208, v209, v210, v211, v212, v213;
                *(v202 + 4) = v206;
                *(v202 + 12) = 2082;
                v214 = [v199 remObjectID];
                if (v214)
                {
                  v215 = v214;
                  v216 = [v214 description];

                  v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v219 = v218;
                }

                else
                {
                  v219 = 0xE300000000000000;
                  v217 = 7104878;
                }

                v226 = sub_10000668C(v217, v219, &v290);
                v219, v227, v228, v229, v230, v231, v232, v233;
                *(v202 + 14) = v226;
                *(v202 + 22) = 2082;
                v234 = v282;
                v235 = Optional.descriptionOrNil.getter();
                v237 = v236;
                sub_1000050A4(v234, &unk_100939D90, "8\n\r");
                v238 = sub_10000668C(v235, v237, &v290);
                v237, v239, v240, v241, v242, v243, v244, v245;
                *(v202 + 24) = v238;
                _os_log_impl(&_mh_execute_header, v200, v201, "%s: Updated mostRecentTargetTemplateIdentifierByCurrentUser of shared-to-me list {list: %{public}s, mostRecentTargetTemplateIdentifierByCurrentUser: %{public}s}", v202, 0x20u);
                swift_arrayDestroy();

                v30 = v263;
                sub_1000050A4(v263, &unk_100939D90, "8\n\r");
                (*v283)(v36, v288);
                v12 = v276;
              }

              else
              {

                sub_1000050A4(v198, &unk_100939D90, "8\n\r");
                sub_1000050A4(v30, &unk_100939D90, "8\n\r");
                (*v283)(v36, v288);
              }

              v78 = v285;
              v26 = v265;
              v153 = v277;
              v112 = v287;
              v77 = v269;
              goto LABEL_37;
            }

            v220 = &v12[v194];
            v221 = v288;
            v222 = v268;
            (*v256)(v268, v220, v288);
            sub_1003CD57C(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            LODWORD(v260) = dispatch thunk of static Equatable.== infix(_:_:)();
            v223 = v78;
            v224 = *v283;
            (*v283)(v222, v221);
            sub_1000050A4(v26, &unk_100939D90, "8\n\r");
            v225 = v223;
            v30 = v263;
            v224(v225, v221);
            v77 = v269;
            sub_1000050A4(v12, &unk_100939D90, "8\n\r");
            if ((v260 & 1) == 0)
            {
              goto LABEL_54;
            }

            v78 = v285;
            v26 = v265;
          }

          sub_1000050A4(v30, &unk_100939D90, "8\n\r");
          v36 = v264;
          (*v283)(v264, v288);
          v153 = v277;
          v112 = v287;
        }

        else
        {
        }

LABEL_37:
        if (v279 == ++v181)
        {
          goto LABEL_71;
        }
      }
    }

    __break(1u);
LABEL_76:
    v134 = v287;
  }

  v180 = _CocoaArrayWrapper.endIndex.getter();
  if (v180)
  {
    goto LABEL_34;
  }

LABEL_71:
  v153, v145, v146, v147, v148, v149, v150, v151;
  v112, v246, v247, v248, v249, v250, v251, v252;
  if ([v77 hasChanges])
  {
    aBlock[0] = 0;
    if (![v77 save:aBlock])
    {
      v254 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100935FF0 != -1)
      {
        goto LABEL_69;
      }

      goto LABEL_8;
    }

    v253 = aBlock[0];
  }

LABEL_11:
  v107 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1003D3584;
  aBlock[5] = v107;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F00F8;
  v108 = _Block_copy(aBlock);

  v109 = v272;
  static DispatchQoS.unspecified.getter();
  v290 = &_swiftEmptyArrayStorage;
  sub_1003CD57C(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v110 = v274;
  v111 = v275;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v108);
  (*(v267 + 8))(v110, v111);
  (*(v273 + 8))(v109, v266);
}

uint64_t sub_1003D2A0C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(result + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent);
    *(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent) = 0;
    sub_1003D0D54(v3);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v2, ObjectType, v4);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1003D2ACC()
{
  sub_1000536E0(v0 + 16);

  v1 = OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_debounceInterval;
  v2 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  *(v0 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_cancellables), v3, v4, v5, v6, v7, v8, v9;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1003D2B84()
{
  sub_1003D2ACC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler(uint64_t a1)
{
  result = qword_1009454A0;
  if (!qword_1009454A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D2C30(uint64_t a1)
{
  result = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
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

uint64_t sub_1003D2D20()
{
  v0 = sub_10034A794(0, 128);
  type metadata accessor for REMCDTemplate();
  v1 = [objc_allocWithZone(NSFetchRequest) init];
  v2 = [swift_getObjCClassFromMetadata() entity];
  [v1 setEntity:v2];

  [v1 setAffectedStores:0];
  [v1 setPredicate:v0];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;
  *(v3 + 32) = 0x696669746E656469;
  *(v3 + 40) = 0xEA00000000007265;
  *(v3 + 88) = &type metadata for String;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = 0x694C656372756F73;
  *(v3 + 72) = 0xEF4C525544497473;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3, v5, v6, v7, v8, v9, v10, v11;
  [v1 setPropertiesToFetch:isa];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v12 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v13 = Array._bridgeToObjectiveC()().super.isa;
  v12, v14, v15, v16, v17, v18, v19, v20;
  [v1 setSortDescriptors:v13];

  v21 = NSManagedObjectContext.fetch<A>(_:)();
  return v21;
}

unint64_t sub_1003D2F60()
{
  isUniquelyReferenced_nonNull_native = type metadata accessor for URL();
  v84 = *(isUniquelyReferenced_nonNull_native - 8);
  __chkstk_darwin(isUniquelyReferenced_nonNull_native, v2);
  v4 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = v69 - v12;
  __chkstk_darwin(v14, v15);
  v17 = v69 - v16;
  result = sub_1003D2D20();
  if (!v0)
  {
    v26 = result;
    v72 = v17;
    v73 = v6;
    v27 = v84;
    v79 = v13;
    v69[0] = 0;
    if (result >> 62)
    {
LABEL_37:
      v28 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v28 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v72;
    v30 = v27;
    if (v28)
    {
      v27 = 0;
      v84 = v26 & 0xC000000000000001;
      v74 = (v73 + 16);
      v75 = v26 & 0xFFFFFFFFFFFFFF8;
      v81 = (v73 + 8);
      v76 = (v30 + 8);
      v69[1] = v73 + 40;
      v69[2] = v73 + 32;
      v82 = _swiftEmptyDictionarySingleton;
      v83 = v28;
      v70 = v4;
      v71 = isUniquelyReferenced_nonNull_native;
      v78 = v9;
      v80 = v26;
      while (1)
      {
        if (v84)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *(v75 + 16))
          {
            goto LABEL_34;
          }

          v38 = *(v26 + 8 * v27 + 32);
        }

        v39 = v38;
        v40 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v41 = [v38 identifier];
        if (v41)
        {
          v42 = v41;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v43 = [v39 sourceListIDURL];
          if (v43)
          {
            v44 = v43;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            URL._bridgeToObjectiveC()(v45);
            v47 = v46;
            v9 = [objc_opt_self() objectIDWithURL:v46];

            if (v9)
            {
              v77 = v9;
              v48 = [v9 uuid];
              v4 = v79;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v49 = v29;
              v50 = *v74;
              v9 = v5;
              (*v74)(v78, v49, v5);
              v26 = v82;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v85 = v26;
              v5 = sub_100363F20(v4);
              v52 = *(v26 + 16);
              v53 = (v51 & 1) == 0;
              v54 = v52 + v53;
              if (__OFADD__(v52, v53))
              {
                goto LABEL_35;
              }

              v55 = v51;
              if (*(v26 + 24) >= v54)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1003744A0();
                }

                v56 = v79;
              }

              else
              {
                sub_10036C648(v54, isUniquelyReferenced_nonNull_native);
                v56 = v79;
                v57 = sub_100363F20(v79);
                if ((v55 & 1) != (v58 & 1))
                {
                  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return result;
                }

                v5 = v57;
              }

              v59 = v85;
              v82 = v85;
              if (v55)
              {
                v60 = v73;
                v61 = v85[7] + *(v73 + 72) * v5;
                v5 = v9;
                (*(v73 + 40))(v61, v78, v9);

                v62 = *(v60 + 8);
                v62(v56, v9);
                v4 = v70;
                isUniquelyReferenced_nonNull_native = v71;
                (*v76)(v70, v71);
                v29 = v72;
                v62(v72, v9);
              }

              else
              {
                v85[(v5 >> 6) + 8] |= 1 << v5;
                v63 = v73;
                v64 = *(v73 + 72) * v5;
                v5 = v9;
                v50((v59[6] + v64), v56, v9);
                (*(v63 + 32))(v82[7] + v64, v78, v9);

                v65 = *(v63 + 8);
                v26 = v81;
                v65(v56, v9);
                v4 = v70;
                isUniquelyReferenced_nonNull_native = v71;
                (*v76)(v70, v71);
                v29 = v72;
                v65(v72, v9);
                v66 = v82[2];
                v67 = __OFADD__(v66, 1);
                v68 = v66 + 1;
                if (v67)
                {
                  goto LABEL_36;
                }

                v82[2] = v68;
              }
            }

            else
            {

              (*v76)(v4, isUniquelyReferenced_nonNull_native);
              (*v81)(v29, v5);
            }
          }

          else
          {
            (*v81)(v29, v5);
          }

          v26 = v80;
        }

        else
        {
        }

        ++v27;
        if (v40 == v83)
        {
          v26, v31, v32, v33, v34, v35, v36, v37;
          return v82;
        }
      }
    }

    v26, v19, v20, v21, v22, v23, v24, v25;
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1003D358C(uint64_t a1)
{
  v3 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v3, v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100796900;
  *(v7 + 32) = swift_getKeyPath();
  *(v7 + 40) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v8 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v9 = [objc_allocWithZone(NSFetchRequest) init];
  v10 = [swift_getObjCClassFromMetadata() entity];
  [v9 setEntity:v10];

  [v9 setAffectedStores:0];
  [v9 setPredicate:v8];
  v56 = _swiftEmptySetSingleton;

  sub_100391CC4(v11);
  v7, v12, v13, v14, v15, v16, v17, v18;
  v19 = v56;
  v20 = sub_1003FE48C(v56);
  v19, v21, v22, v23, v24, v25, v26, v27;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v20, v29, v30, v31, v32, v33, v34, v35;
  [v9 setPropertiesToFetch:isa];

  v7, v36, v37, v38, v39, v40, v41, v42;
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v43 = Array._bridgeToObjectiveC()().super.isa;
  [v9 setSortDescriptors:v43];

  v44 = a1;
  v45 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    sub_1001555B4(v6);
  }

  else
  {
    v56 = v45;
    v46 = v45;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300, &protocol conformance descriptor for [A]);
    v44 = Sequence.elements<A>(ofType:)();

    sub_1001555B4(v6);
    v46, v47, v48, v49, v50, v51, v52, v53;
  }

  return v44;
}

uint64_t *sub_1003D38EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = *(v10 + 1);
    if (v11 >> 60 == 15)
    {
      *v9 = *v10;
    }

    else
    {
      v13 = *v10;
      sub_100029344(*v10, *(v10 + 1));
      *v9 = v13;
      *(v9 + 1) = v11;
    }
  }

  return a1;
}

uint64_t sub_1003D39E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  v6 = (a1 + *(a2 + 20));
  v7 = v6[1];
  if (v7 >> 60 != 15)
  {
    v8 = *v6;

    return sub_10001BBA0(v8, v7);
  }

  return result;
}

uint64_t sub_1003D3A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = (a2 + v7);
  v10 = v9[1];
  if (v10 >> 60 == 15)
  {
    *v8 = *v9;
  }

  else
  {
    v11 = *v9;
    sub_100029344(*v9, v9[1]);
    *v8 = v11;
    *(v8 + 8) = v10;
  }

  return a1;
}

uint64_t sub_1003D3B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = *(a2 + v7 + 8);
  if (*(a1 + v7 + 8) >> 60 != 15)
  {
    if (v10 >> 60 != 15)
    {
      v12 = *v9;
      sub_100029344(v12, v10);
      v13 = *v8;
      v14 = v8[1];
      *v8 = v12;
      v8[1] = v10;
      sub_10001BBA0(v13, v14);
      return a1;
    }

    sub_1001531B8(v8);
    goto LABEL_6;
  }

  if (v10 >> 60 == 15)
  {
LABEL_6:
    *v8 = *v9;
    return a1;
  }

  v11 = *v9;
  sub_100029344(v11, v10);
  *v8 = v11;
  v8[1] = v10;
  return a1;
}