uint64_t sub_100046DC4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v98 = a2;
  v3 = type metadata accessor for UUID();
  v91 = *(v3 - 8);
  v92 = v3;
  __chkstk_darwin(v3);
  v90 = v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v94 = *(v5 - 8);
  v95 = v5;
  __chkstk_darwin(v5);
  v96 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for URL();
  v9 = *(v110 - 8);
  v10 = __chkstk_darwin(v110);
  v108 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v104 = v84 - v12;
  v13 = *a1;
  v14 = sub_10000EA2C();
  v16 = (v14 + 7);
  v15 = v14[7];
  v115 = v14;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v109 = v13;
  v93 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
  result = swift_beginAccess();
  v21 = 0;
  v22 = (v17 + 63) >> 6;
  v103 = enum case for URL.DirectoryHint.notDirectory(_:);
  v101 = (v7 + 8);
  v102 = (v7 + 104);
  v100 = (v9 + 8);
  v99 = &_swiftEmptyDictionarySingleton;
  v89 = xmmword_100065C80;
  v88 = 0xEA00000000007365;
  v112 = v22;
LABEL_4:
  v23 = v21;
  v24 = v111;
  v26 = v108;
  v25 = v109;
  while (v19)
  {
    v21 = v23;
LABEL_11:
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v28 = (v115[6] + ((v21 << 10) | (16 * v27)));
    v29 = *v28;
    v30 = v28[1];

    sub_10000F5A4(v29, v30, v26);
    if (v24)
    {

      v24 = 0;
      v23 = v21;
      v22 = v112;
    }

    else
    {
      v97 = v29;
      v107 = v30;
      v31 = v26;
      v111 = 0;
      type metadata accessor for Persistence();
      v113 = 0x657A696E656B6F74;
      v114 = 0xEF7473696C702E64;
      v33 = v105;
      v32 = v106;
      (*v102)(v105, v103, v106);
      sub_100011710();
      v34 = v104;
      URL.appending<A>(path:directoryHint:)();
      (*v101)(v33, v32);
      v35 = *v100;
      (*v100)(v31, v110);
      v36 = v111;
      v37 = static Persistence.rawData(from:)();
      if (v36)
      {

        result = v35(v34, v110);
        v24 = 0;
        v23 = v21;
        goto LABEL_16;
      }

      v39 = v38;
      v87 = v37;
      v111 = 0;
      v35(v34, v110);
      if (v39 >> 60 == 15)
      {

        v23 = v21;
        v24 = v111;
LABEL_16:
        v26 = v108;
        v25 = v109;
        v22 = v112;
      }

      else
      {
        v40 = v39;
        v41 = v109;
        v42 = *(v109 + v93);
        if (!*(v42 + 16))
        {
          goto LABEL_23;
        }

        v43 = sub_1000182E8(v97, v107);
        if ((v44 & 1) == 0)
        {

LABEL_23:
          if (qword_10007A210 != -1)
          {
            swift_once();
          }

          goto LABEL_30;
        }

        v45 = *(v42 + 56) + 32 * v43;
        v46 = *(v45 + 8);
        LODWORD(v85) = *(v45 + 25);
        v86 = v46;

        v47 = Bool.persistableValue()();
        if (v47)
        {
          v48 = v47;
          v49 = Bool.persistableValue()();
          if (v49)
          {
            v84[0] = v49;
            sub_10000637C(&qword_10007A490, &qword_100065D50);
            inited = swift_initStackObject();
            *(inited + 16) = v89;
            *(inited + 32) = static ManagedSettingsStore.PropertyKeys.active.getter();
            v84[1] = (inited + 32);
            *(inited + 40) = v51;
            *(inited + 48) = v48;
            v85 = v48;
            *(inited + 56) = static ManagedSettingsStore.PropertyKeys.syncToWatch.getter();
            *(inited + 64) = v52;
            v53 = v84[0];
            *(inited + 72) = v84[0];
            v84[0] = v53;
            sub_100006278(inited);
            swift_setDeallocating();
            sub_10000637C(&qword_10007A498, &qword_100065D58);
            swift_arrayDestroy();

            goto LABEL_30;
          }
        }

        if (qword_10007A210 != -1)
        {
          swift_once();
        }

LABEL_30:
        v54 = v111;
        v55 = static Persistence.propertyData(from:)();
        if (!v54)
        {
          v111 = 0;
          v57 = v55;
          v58 = v56;

          v113 = v97;
          v114 = v107;

          v59._countAndFlagsBits = 0x6465636E79532DLL;
          v59._object = 0xE700000000000000;
          String.append(_:)(v59);

          v107 = v113;
          v97 = v114;
          sub_10000637C(&qword_10007B2E0, &unk_100067080);
          v60 = swift_initStackObject();
          *(v60 + 16) = v89;
          *(v60 + 32) = 0x69747265706F7270;
          *(v60 + 40) = v88;
          *(v60 + 48) = v57;
          v61 = v58;
          v86 = v58;
          *(v60 + 56) = v58;
          *(v60 + 72) = &type metadata for Data;
          *(v60 + 80) = 0x73676E6974746573;
          *(v60 + 120) = &type metadata for Data;
          v62 = v87;
          *(v60 + 88) = 0xE800000000000000;
          *(v60 + 96) = v62;
          *(v60 + 104) = v40;
          sub_100054528(v57, v61);
          sub_10005457C(v62, v40);
          v85 = sub_100005B34(v60);
          swift_setDeallocating();
          sub_10000637C(&unk_10007A280, &qword_100066D10);
          swift_arrayDestroy();
          v63 = v99;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v113 = v63;
          sub_10001CCE8(v85, v107, v97, isUniquelyReferenced_nonNull_native);

          sub_100054514(v62, v40);
          result = sub_1000543C8(v57, v86);
          v99 = v113;
          v22 = v112;
          goto LABEL_4;
        }

        result = sub_100054514(v87, v40);
        v24 = 0;
        v23 = v21;
        v26 = v108;
        v25 = v41;
        v22 = v112;
      }
    }
  }

  while (1)
  {
    v21 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return result;
    }

    if (v21 >= v22)
    {
      break;
    }

    v19 = *&v16[8 * v21];
    ++v23;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  v65 = v25;
  v111 = v24;

  v66 = v99;
  if (v99[2])
  {
    sub_10000637C(&qword_10007B2E0, &unk_100067080);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_100066F80;
    *(v67 + 32) = 0x656E6961746E6F63;
    *(v67 + 40) = 0xE900000000000072;
    v68 = v25 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client;
    v69 = *(v25 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
    *(v67 + 48) = *(v25 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    *(v67 + 56) = v69;
    *(v67 + 72) = &type metadata for String;
    strcpy((v67 + 80), "teamIdentifier");
    *(v67 + 95) = -18;
    v70 = *(v68 + 24);
    *(v67 + 96) = *(v68 + 16);
    *(v67 + 104) = v70;
    *(v67 + 120) = &type metadata for String;
    *(v67 + 128) = 0x6E7265746E497369;
    *(v67 + 136) = 0xEA00000000006C61;
    *(v67 + 144) = *(v68 + 32);
    *(v67 + 168) = &type metadata for Bool;
    strcpy((v67 + 176), "storeDirectory");
    *(v67 + 191) = -18;
    *(v67 + 216) = sub_10000637C(&qword_10007B8A0, &unk_100067090);
    *(v67 + 192) = v66;

    v71 = sub_100005B34(v67);
    swift_setDeallocating();
    sub_10000637C(&unk_10007A280, &qword_100066D10);
    result = swift_arrayDestroy();
  }

  else
  {

    v72 = v96;
    static Logger.persistenceRecordStore.getter();

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v113 = v115;
      *v75 = 136446210;
      v76 = v65;
      v77 = v90;
      v78 = v91;
      v79 = v92;
      (*(v91 + 16))(v90, v76 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v92);
      sub_10005459C(&qword_10007ABB0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      (*(v78 + 8))(v77, v79);
      v83 = sub_100001ED8(v80, v82, &v113);

      *(v75 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v73, v74, "No stores to sync in record %{public}s, skipping record", v75, 0xCu);
      sub_10000210C(v115);

      result = (*(v94 + 8))(v96, v95);
    }

    else
    {

      result = (*(v94 + 8))(v72, v95);
    }

    v71 = 0;
  }

  *v98 = v71;
  return result;
}

void *sub_1000479A4(uint64_t a1, uint64_t a2)
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

  sub_10000637C(&unk_10007B220, &unk_100066C50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100047A28(uint64_t a1, uint64_t a2)
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

  sub_10000637C(&qword_10007B830, &unk_100067020);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_100047AB0(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_10005459C(&qword_10007AD58, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_100047DD0(uint64_t result, uint64_t a2)
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
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = static Hasher._hash(seed:bytes:count:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100047F44(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v24 = v2;
    v25 = v4;
    do
    {
      v9 = 40 * v6;
      v10 = *(*(v2 + 48) + 40 * v6 + 32);
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v10);
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          v2 = v24;
          v4 = v25;
        }

        else
        {
          v2 = v24;
          v4 = v25;
          if (v3 >= v12)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = v24;
        v4 = v25;
        if (v12 >= v8 || v3 >= v12)
        {
LABEL_11:
          v13 = *(v2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + v9);
          if (40 * v3 < v9 || v14 >= v15 + 40 || v3 != v6)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
          }

          v18 = *(v2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(v2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v23;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_100048170(uint64_t result, uint64_t a2)
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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000482E0(uint64_t result, uint64_t a2)
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
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (32 * v3 != 32 * v6 || (v3 = v6, v16 >= v17 + 2))
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10004852C(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v47 = a5;
  v48 = a6;
  v46 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = _HashTable.previousHole(before:)();
    v18 = v16;
    v45 = (v17 + 1) & v16;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v49 = *(v19 + 56);
    v43 = (v19 - 8);
    v44 = v20;
    do
    {
      v21 = v49 * v15;
      v22 = v18;
      v23 = v19;
      v44(v12, *(a2 + 48) + v49 * v15, v8);
      sub_10005459C(v46, v47, v48);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v43)(v12, v8);
      v18 = v22;
      v25 = v24 & v22;
      if (a1 >= v45)
      {
        if (v25 >= v45 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          v29 = v28 + v49 * a1;
          v30 = v28 + v21 + v49;
          v31 = v49 * a1 < v21 || v29 >= v30;
          v19 = v23;
          if (v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v32 = *(a2 + 56);
          v33 = *(*(type metadata accessor for ScreenTimeSettings.ShieldPolicy() - 8) + 72);
          v34 = v33 * a1;
          result = v32 + v33 * a1;
          v35 = v33 * v15;
          v36 = v32 + v33 * v15 + v33;
          if (v34 < v35 || result >= v36)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v15;
            v18 = v22;
          }

          else
          {
            a1 = v15;
            v38 = v34 == v35;
            v18 = v22;
            if (!v38)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v18 = v22;
              a1 = v15;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v45 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v19 = v23;
LABEL_4:
      v15 = (v15 + 1) & v18;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v39 = *(a2 + 16);
  v40 = __OFSUB__(v39, 1);
  v41 = v39 - 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v41;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100048874(uint64_t result, uint64_t a2)
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
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100048A24(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

Swift::Int sub_100048BB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000637C(&qword_10007AF20, &unk_1000668E0);
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

uint64_t sub_100048E10(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for URL();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000637C(&qword_10007B858, &qword_100067030);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_10005459C(&qword_10007B848, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_10004916C(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for ActivityCategory();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000637C(&qword_10007B898, &qword_100067078);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_10005459C(&qword_10007ACF0, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1000494C8(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for WebDomain();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000637C(&qword_10007B890, &qword_100067070);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_10005459C(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100049824(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v37 = type metadata accessor for Application();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  sub_10000637C(&qword_10007B888, &unk_100067350);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v2;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v4 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v4 + 72) * (v17 | (v9 << 6));
      v21 = *(v4 + 32);
      v33 = *(v4 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_10005459C(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v3 = v31;
    *(v6 + 16) = 0;
  }

  *v3 = v8;
  return result;
}

unint64_t *sub_100049B80(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100050FA0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_100049C1C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_100052B64(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_100049CB8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10005459C(&qword_10007B848, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10005459C(&qword_10007B850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10004A838(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100049F98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ActivityCategory();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10005459C(&qword_10007ACF0, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10005459C(&qword_10007AD80, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10004AB00(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10004A278(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for WebDomain();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10005459C(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10005459C(&qword_10007AD98, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10004ADC8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10004A558(uint64_t a1, char *a2, __n128 a3)
{
  v4 = v3;
  v7 = type metadata accessor for Application();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_10005459C(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
  v35 = a2;
  v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v30 = v3;
    v31 = a1;
    v32 = ~v14;
    v29 = v8;
    v18 = *(v8 + 16);
    v17 = v8 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v28[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v34 + 48) + v19 * v15, v7);
      sub_10005459C(&qword_10007AD70, &type metadata accessor for Application, &protocol conformance descriptor for Application);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v20;
      (*v20)(v10, v7);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v32;
      v16 = v21;
      if (((*(v33 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v4 = v30;
        a1 = v31;
        v8 = v29;
        goto LABEL_7;
      }
    }

    v23(v35, v7);
    v21(v31, *(v34 + 48) + v19 * v15, v7);
    return 0;
  }

  else
  {
    v16 = *(v8 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v35;
    v26.n128_f64[0] = (v16)(v10, v35, v7);
    v36 = *v4;
    sub_10004B090(v10, v15, isUniquelyReferenced_nonNull_native, v26);
    *v4 = v36;
    (*(v8 + 32))(a1, v25, v7);
    return 1;
  }
}

uint64_t sub_10004A838(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100048E10(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10004B504(&type metadata accessor for URL, &qword_10007B858, &qword_100067030);
      goto LABEL_12;
    }

    sub_10004B73C(v10 + 1);
  }

  v12 = *v3;
  sub_10005459C(&qword_10007B848, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10005459C(&qword_10007B850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004AB00(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for ActivityCategory();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10004916C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10004B504(&type metadata accessor for ActivityCategory, &qword_10007B898, &qword_100067078);
      goto LABEL_12;
    }

    sub_10004BA58(v10 + 1);
  }

  v12 = *v3;
  sub_10005459C(&qword_10007ACF0, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10005459C(&qword_10007AD80, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004ADC8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for WebDomain();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000494C8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10004B504(&type metadata accessor for WebDomain, &qword_10007B890, &qword_100067070);
      goto LABEL_12;
    }

    sub_10004BD74(v10 + 1);
  }

  v12 = *v3;
  sub_10005459C(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10005459C(&qword_10007AD98, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004B090(uint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  v33 = a1;
  v7 = type metadata accessor for Application();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  v30 = v4;
  v31 = v8;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100049824(v12 + 1, v9);
  }

  else
  {
    if (v13 > v12)
    {
      sub_10004B504(&type metadata accessor for Application, &qword_10007B888, &unk_100067350);
      goto LABEL_12;
    }

    sub_10004C090(v12 + 1, v9);
  }

  v14 = *v4;
  sub_10005459C(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v8 + 16);
    v20 = v8 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v7);
      sub_10005459C(&qword_10007AD70, &type metadata accessor for Application, &protocol conformance descriptor for Application);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v11, v7);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v7);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10004B358()
{
  v1 = v0;
  sub_10000637C(&qword_10007AF20, &unk_1000668E0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void *sub_10004B504(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_10000637C(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_10004B73C(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for URL();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000637C(&qword_10007B858, &qword_100067030);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_10005459C(&qword_10007B848, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_10004BA58(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for ActivityCategory();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000637C(&qword_10007B898, &qword_100067078);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_10005459C(&qword_10007ACF0, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_10004BD74(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for WebDomain();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000637C(&qword_10007B890, &qword_100067070);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_10005459C(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_10004C090(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v34 = type metadata accessor for Application();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10000637C(&qword_10007B888, &unk_100067350);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v2;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v4 + 16;
    v33 = v4;
    v16 = v8 + 56;
    v30 = (v4 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_10005459C(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v3 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v3 = v8;
  }

  return result;
}

uint64_t sub_10004C3AC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = type metadata accessor for UUID();
  v7 = *(v46 - 8);
  v8 = __chkstk_darwin(v46);
  v45 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v39 = &v33 - v10;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10000637C(&qword_10007A268, &qword_100065BA0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_10005459C(&qword_10007AD58, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = v23;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_10004C74C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000637C(&qword_10007A258, &unk_100065B90);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    v33 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10004C98C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100058D04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10004CA08(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_10004CA08(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for PersistenceRecord(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10004CC40(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10004CB0C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10004CB0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_6:
    v8 = v7;
    v16 = v6;
    while (1)
    {
      v9 = String.lowercased()();
      v10 = String.lowercased()();
      if (v9._countAndFlagsBits == v10._countAndFlagsBits && v9._object == v10._object)
      {

LABEL_5:
        ++v4;
        v6 = v16 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v13 = *v6;
      *v6 = v6[1];
      v6[1] = v13;
      --v6;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10004CC40(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v4;
  v96 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_104:
    v5 = *v96;
    if (!*v96)
    {
      goto LABEL_143;
    }

    object = v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v88 = v7;
      v89 = *(object + 16);
      if (v89 >= 2)
      {
        while (*a3)
        {
          v7 = v89 - 1;
          v90 = *(object + 16 * v89);
          v91 = *(object + 16 * (v89 - 1) + 40);
          sub_10004D380((*a3 + 8 * v90), (*a3 + 8 * *(object + 16 * (v89 - 1) + 32)), (*a3 + 8 * v91), v5);
          if (v88)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            object = sub_100058CF0(object);
          }

          if (v89 - 2 >= *(object + 16))
          {
            goto LABEL_131;
          }

          v92 = (object + 16 * v89);
          *v92 = v90;
          v92[1] = v91;
          result = sub_100058C64(v89 - 1);
          v89 = *(object + 16);
          if (v89 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_100058CF0(object);
    object = result;
    goto LABEL_106;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v100 = v8;
      v12 = v11;
      v13 = *a3;
      v97 = v12;
      v5 = &OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client;
      v14 = String.lowercased()();
      v15 = String.lowercased()();
      object = v15._object;
      v16 = v14._countAndFlagsBits == v15._countAndFlagsBits && v14._object == v15._object;
      v94 = v7;
      if (v16)
      {
        v102 = 0;
      }

      else
      {
        v102 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v17 = 8 * v97;
      v18 = v13 + 8 * v97 + 16;
      v19 = 8 * v97 + 8;
      v99 = v10;
      do
      {
        v7 = v9;
        v22 = v19;
        if (++v9 >= v100)
        {
          break;
        }

        v23 = v9;
        v5 = *(v18 - 8);
        v24 = String.lowercased()();
        v25 = String.lowercased()();
        object = v25._object;
        v26 = v24._countAndFlagsBits == v25._countAndFlagsBits && v24._object == v25._object;
        v20 = v26 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        v21 = v102 ^ v20;
        v18 += 8;
        v19 = v22 + 8;
        v9 = v23;
        v10 = v99;
      }

      while ((v21 & 1) == 0);
      if ((v102 & 1) == 0)
      {
        goto LABEL_29;
      }

      v27 = v97;
      if (v9 < v97)
      {
        goto LABEL_134;
      }

      if (v97 < v9)
      {
        do
        {
          if (v27 != v7)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_140;
            }

            v30 = *(v29 + v17);
            *(v29 + v17) = *(v29 + v22);
            *(v29 + v22) = v30;
          }

          ++v27;
          v22 -= 8;
          v17 += 8;
        }

        while (v27 < v7--);
LABEL_29:
        v7 = v94;
        v11 = v97;
        goto LABEL_30;
      }

      v7 = v94;
      v11 = v97;
    }

LABEL_30:
    v31 = a3[1];
    if (v9 < v31)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_133;
      }

      if (v9 - v11 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v9 < v11)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000263EC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v44 = *(v10 + 2);
    v43 = *(v10 + 3);
    object = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_1000263EC((v43 > 1), v44 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = object;
    v45 = &v10[16 * v44];
    *(v45 + 4) = v11;
    *(v45 + 5) = v9;
    v46 = *v96;
    if (!*v96)
    {
      goto LABEL_142;
    }

    if (v44)
    {
      while (1)
      {
        v47 = object - 1;
        if (object >= 4)
        {
          break;
        }

        if (object == 3)
        {
          v48 = *(v10 + 4);
          v49 = *(v10 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_73:
          if (v51)
          {
            goto LABEL_121;
          }

          v64 = &v10[16 * object];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_124;
          }

          v70 = &v10[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_128;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = object - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v74 = &v10[16 * object];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_87:
        if (v69)
        {
          goto LABEL_123;
        }

        v77 = &v10[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_126;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_94:
        v85 = v47 - 1;
        if (v47 - 1 >= object)
        {
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
LABEL_122:
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        object = v10;
        v86 = *&v10[16 * v85 + 32];
        v5 = *&v10[16 * v47 + 40];
        sub_10004D380((*a3 + 8 * v86), (*a3 + 8 * *&v10[16 * v47 + 32]), (*a3 + 8 * v5), v46);
        if (v7)
        {
        }

        if (v5 < v86)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          object = sub_100058CF0(v10);
        }

        if (v85 >= *(object + 16))
        {
          goto LABEL_118;
        }

        v87 = object + 16 * v85;
        *(v87 + 32) = v86;
        *(v87 + 40) = v5;
        result = sub_100058C64(v47);
        v10 = object;
        object = *(object + 16);
        if (object <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v10[16 * object + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_119;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_120;
      }

      v59 = &v10[16 * object];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_122;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_125;
      }

      if (v63 >= v55)
      {
        v81 = &v10[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_129;
        }

        if (v50 < v84)
        {
          v47 = object - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_104;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_135;
  }

  if (v11 + a4 >= v31)
  {
    v32 = a3[1];
  }

  else
  {
    v32 = v11 + a4;
  }

  if (v32 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v9 == v32)
  {
    goto LABEL_53;
  }

  v95 = v7;
  v33 = v11;
  v34 = *a3;
  v5 = *a3 + 8 * v9 - 8;
  v98 = v33;
  v35 = v33 - v9;
  v101 = v32;
LABEL_42:
  v103 = v9;
  v36 = v35;
  v37 = v5;
  while (1)
  {
    object = *v37;
    v38 = String.lowercased()();
    v39 = String.lowercased()();
    if (v38._countAndFlagsBits == v39._countAndFlagsBits && v38._object == v39._object)
    {

LABEL_41:
      v9 = v103 + 1;
      v5 += 8;
      --v35;
      if (v103 + 1 == v101)
      {
        v9 = v101;
        v7 = v95;
        v11 = v98;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    object = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((object & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v34)
    {
      break;
    }

    v41 = *v37;
    *v37 = v37[1];
    v37[1] = v41;
    --v37;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_10004D380(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_49;
    }

    while (1)
    {
      v15 = String.lowercased()();
      v16 = String.lowercased()();
      v17 = v15._countAndFlagsBits == v16._countAndFlagsBits && v15._object == v16._object;
      if (v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_20;
      }

      v19 = v6;
      v17 = v7 == v6;
      v6 += 8;
      if (!v17)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 8;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_49;
      }
    }

LABEL_20:
    v19 = v4;
    v17 = v7 == v4;
    v4 += 8;
    if (v17)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v19;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[8 * v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    v30 = v4;
    do
    {
      v20 = v6 - 8;
      v5 -= 8;
      v21 = v14;
      while (1)
      {
        v21 -= 8;
        v22 = v20;
        v23 = String.lowercased()();
        v24 = String.lowercased()();
        v25 = v23._countAndFlagsBits == v24._countAndFlagsBits && v23._object == v24._object;
        v26 = v25 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        v27 = v5 + 8;
        if (v26)
        {
          break;
        }

        v20 = v22;
        if (v27 != v14)
        {
          *v5 = *v21;
        }

        v5 -= 8;
        v14 = v21;
        v4 = v30;
        if (v21 <= v30)
        {
          v14 = v21;
          goto LABEL_49;
        }
      }

      v28 = v22;
      if (v27 != v6)
      {
        *v5 = *v22;
      }

      v4 = v30;
      if (v14 <= v30)
      {
        break;
      }

      v6 = v28;
    }

    while (v28 > v7);
    v6 = v28;
  }

LABEL_49:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_10004D6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_10000637C(&qword_10007B810, "(N") + 48);
  v5 = *(sub_10000637C(&qword_10007A260, &qword_100067040) + 48);
  v6 = *(a1 + v4);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;
}

void *sub_10004D76C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100047A28(v3, 0);
  sub_10004D800((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10004D800(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000545E4(&qword_10007B8A8, &qword_10007B818, &qword_100067018, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000637C(&qword_10007B818, &qword_100067018);
            v9 = sub_10004D9A4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PersistenceRecord(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10004D9A4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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

LABEL_5:
    *v3 = v4;
    return sub_10004DA24;
  }

  __break(1u);
  return result;
}

void *sub_10004DA2C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10004DB84(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10004DCDC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10004DE30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000637C(&qword_10007B810, "(N");
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v42 = type metadata accessor for UUID();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000637C(&qword_10007B870, &unk_100067048);
  v10 = __chkstk_darwin(v9 - 8);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    sub_100008690(v14, v33, &qword_10007B870, &unk_100067048);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_100008690(v36, v39, &qword_10007B810, "(N");
      v34(v37);
      sub_100008630(v37, &qword_10007B810, "(N");
      v35 = 0;
    }

    v38 = sub_10000637C(&qword_10007A260, &qword_100067040);
    return (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v13, 1, 1, v44);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_10004E214@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

void *sub_10004E260(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = type metadata accessor for UUID();
  v4 = *(isUniquelyReferenced_nonNull_native - 8);
  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Data.init(contentsOf:options:)();
  if (v1)
  {
    return v2;
  }

  v9 = v7;
  v10 = v8;
  v38 = v6;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10000637C(&qword_10007B818, &qword_100067018);
  sub_10005441C(&qword_10007B838, &qword_10007B840, &unk_1000662E0, &protocol conformance descriptor for <A> [A]);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v30 = 0;

  v12 = v39;
  v2 = sub_100005C64(_swiftEmptyArrayStorage);
  if (v12 >> 62)
  {
LABEL_27:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v9;
    v29 = v10;
    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v28 = v9;
  v29 = v10;
  if (!v13)
  {
LABEL_28:
    sub_1000543C8(v28, v29);

    return v2;
  }

LABEL_6:
  v14 = 0;
  v35 = v12 & 0xFFFFFFFFFFFFFF8;
  v36 = v12 & 0xC000000000000001;
  v37 = (v4 + 2);
  v31 = v4;
  v32 = v13;
  v33 = v12;
  v34 = (v4 + 1);
  v10 = v38;
  while (1)
  {
    if (v36)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v4 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v14 >= *(v35 + 16))
      {
        goto LABEL_24;
      }

      v15 = *(v12 + 8 * v14 + 32);

      v4 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v16 = *v37;
    v9 = isUniquelyReferenced_nonNull_native;
    (*v37)(v10, v15 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, isUniquelyReferenced_nonNull_native);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v2;
    v10 = sub_100018360(v10);
    v18 = v2[2];
    v19 = (v17 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_25;
    }

    v21 = v17;
    if (v2[3] < v20)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10001D174();
    }

LABEL_18:
    isUniquelyReferenced_nonNull_native = v9;
    v2 = v39;
    if (v21)
    {
      *(v39[7] + 8 * v10) = v15;

      v10 = v38;
      (*v34)(v38, v9);
    }

    else
    {
      v39[(v10 >> 6) + 8] |= 1 << v10;
      v12 = v31;
      v9 = v38;
      v16(v2[6] + v31[9] * v10, v38, isUniquelyReferenced_nonNull_native);
      *(v2[7] + 8 * v10) = v15;
      v10 = v9;

      (*(v12 + 8))(v9, isUniquelyReferenced_nonNull_native);
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      v2[2] = v26;
    }

    ++v14;
    v12 = v33;
    if (v4 == v32)
    {
      goto LABEL_28;
    }
  }

  sub_1000194F0(v20, isUniquelyReferenced_nonNull_native);
  v22 = sub_100018360(v38);
  if ((v21 & 1) == (v23 & 1))
  {
    v10 = v22;
    goto LABEL_18;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10004E694(uint64_t a1, uint64_t a2)
{
  v37[10] = a2;
  v3 = type metadata accessor for Logger();
  v37[1] = *(v3 - 8);
  v37[2] = v3;
  __chkstk_darwin(v3);
  v37[11] = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v37[8] = *(v5 - 8);
  v37[9] = v5;
  v6 = __chkstk_darwin(v5);
  v37[4] = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37[3] = v37 - v8;
  v9 = type metadata accessor for CocoaError.Code();
  v37[6] = *(v9 - 8);
  v37[7] = v9;
  __chkstk_darwin(v9);
  v37[5] = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10000637C(&qword_10007B810, "(N");
  v11 = __chkstk_darwin(v40);
  v39 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v38 = v37 - v13;
  v14 = _swiftEmptyArrayStorage;
  v42 = _swiftEmptyArrayStorage;
  v15 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  v19 = (v16 + 63) >> 6;
  v41 = a1;

  v20 = 0;
  if (v18)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      do
      {
LABEL_8:
        v22 = __clz(__rbit64(v18)) | (v20 << 6);
        v23 = v41;
        v24 = *(v41 + 48);
        v25 = type metadata accessor for UUID();
        v26 = *(v25 - 8);
        v27 = v26;
        v28 = v24 + *(v26 + 72) * v22;
        v29 = v38;
        (*(v26 + 16))(v38, v28, v25);
        *&v29[*(v40 + 48)] = *(*(v23 + 56) + 8 * v22);
        v30 = v29;
        v31 = v39;
        sub_100008690(v30, v39, &qword_10007B810, "(N");
        v32 = *(v27 + 8);

        v32(v31, v25);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v18 &= v18 - 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v14 = v42;
      }

      while (v18);
    }
  }

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v42 = v14;
  sub_10000637C(&qword_10007B818, &qword_100067018);
  sub_10005441C(&qword_10007B820, &qword_10007B828, &unk_1000662B8, &protocol conformance descriptor for <A> [A]);
  v33 = v37[12];
  v34 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v36 = v35;

  if (!v33)
  {
    Data.write(to:options:)();
    type metadata accessor for Persistence();
    static Persistence.setFileAttributes(of:)();
    sub_1000543C8(v34, v36);
  }
}

uint64_t sub_10004EF04(uint64_t a1)
{
  v1 = type metadata accessor for URL();
  v6[5] = *(v1 - 8);
  __chkstk_darwin(v1);
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2);
  v6[6] = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v4);
  type metadata accessor for Persistence();
  return static Persistence.readEffectiveSettings(from:)();
}

uint64_t sub_10004F3B0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100049CB8(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_10004F4F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_10:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 56) + ((v4 << 9) | (8 * v11))) + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client;
    result = *v12;
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15 = *(v12 + 32);
    if (*v12 != *v3 || *(v12 + 8) != *(v3 + 8))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    if (v13 != *(v3 + 16) || v14 != *(v3 + 24))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    if (v15 == (*(v3 + 32) & 1))
    {
      return 1;
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return 0;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_10004F638(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CocoaError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v37 = 0;
  v15 = [v11 removeItemAtURL:v13 error:&v37];

  if (v15)
  {
    return v37;
  }

  v17 = v37;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  static CocoaError.fileNoSuchFile.getter();
  sub_10005459C(&qword_10007A460, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  LOBYTE(v17) = static _ErrorCodeProtocol.~= infix(_:_:)();

  result = (*(v8 + 8))(v10, v7);
  if (v17)
  {

    v18 = v34;
    static Logger.persistenceRecordStore.getter();
    v19 = v32;
    v20 = v33;
    (*(v32 + 16))(v4, a1, v33);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136446210;
      sub_10005459C(&qword_10007B860, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v19;
      v27 = v25;
      v29 = v28;
      (*(v26 + 8))(v4, v20);
      v30 = sub_100001ED8(v27, v29, &v37);

      *(v23 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to delete %{public}s: Path doesn't exist!", v23, 0xCu);
      sub_10000210C(v24);
    }

    else
    {

      (*(v19 + 8))(v4, v20);
    }

    return (*(v35 + 8))(v18, v36);
  }

  return result;
}

uint64_t sub_10004FAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v64 = a3;
  v11 = type metadata accessor for URL.DirectoryHint();
  v59 = *(v11 - 8);
  v60 = v11;
  __chkstk_darwin(v11);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v19 = v50 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v50 - v21;
  __chkstk_darwin(v20);
  v26 = v50 - v25;
  *a6 = 0;
  v56 = a4;
  if (*(a4 + 16) || *(a5 + 16))
  {
    v54 = a5;
    v55 = v24;
    v53 = v23;
    v27 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
    swift_beginAccess();
    if (*(*(a1 + v27) + 16))
    {

      sub_1000182E8(a2, v64);
      v29 = v28;

      if (v29)
      {
        v30 = v61;
        v31 = v64;
        v32 = v13;
        goto LABEL_10;
      }
    }

    v32 = v13;
    if (qword_10007A210 != -1)
    {
      swift_once();
    }

    v31 = v64;
    v30 = v61;
    result = sub_10000F8FC(a2, v64, qword_10007D5D0);
    if (!v30)
    {
      *a6 = 1;
LABEL_10:
      result = sub_10000F5A4(a2, v31, v19);
      v34 = v59;
      if (!v30)
      {
        v62 = 0x657A696E656B6F74;
        v63 = 0xEF7473696C702E64;
        v35 = *(v59 + 104);
        v52 = enum case for URL.DirectoryHint.notDirectory(_:);
        v61 = 0;
        v51 = v35;
        v35(v32);
        v50[1] = sub_100011710();
        URL.appending<A>(path:directoryHint:)();
        v36 = v32;
        v37 = *(v34 + 8);
        v50[0] = v36;
        v37();
        v38 = v19;
        v39 = v58;
        v59 = *(v57 + 8);
        (v59)(v38, v58);
        v40 = v61;
        sub_100053E9C(v56, v22, &static Persistence.write(_:to:));
        if (v40)
        {
          return (v59)(v22, v39);
        }

        else
        {
          v61 = v37;
          (v59)(v22, v39);
          v46 = v55;
          sub_10000F5A4(a2, v64, v55);
          v62 = 0xD000000000000011;
          v63 = 0x8000000100069320;
          v47 = v50[0];
          v48 = v60;
          v51(v50[0], v52, v60);
          v49 = v53;
          URL.appending<A>(path:directoryHint:)();
          (v61)(v47, v48);
          (v59)(v46, v39);
          sub_100053E9C(v54, v49, &static Persistence.write(_:to:));
          return (v59)(v49, v39);
        }
      }
    }
  }

  else
  {
    v41 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
    result = swift_beginAccess();
    if (*(*(a1 + v41) + 16))
    {

      v42 = v64;
      sub_1000182E8(a2, v64);
      v44 = v43;

      if (v44)
      {
        v45 = v61;
        result = sub_10000F5A4(a2, v42, v26);
        if (!v45)
        {
          sub_10004F638(v26);
          return (*(v57 + 8))(v26, v58);
        }
      }
    }
  }

  return result;
}

void *sub_100050058(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v31 = type metadata accessor for SettingScope();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for URL();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10000E600();
  v9 = 0;
  v11 = (result + 7);
  v10 = result[7];
  v33 = result;
  v12 = 1 << *(result + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  v28 = a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client;
  v15 = (v12 + 63) >> 6;
  v27 = v5 + 16;
  v26 = enum case for SettingScope.localContainer(_:);
  v24 = v5 + 8;
  v25 = (v3 + 104);
  v23 = (v3 + 8);
  if ((v13 & v10) != 0)
  {
    do
    {
      v16 = v9;
LABEL_9:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = v30;
      (*(v5 + 16))(v7, v33[6] + *(v5 + 72) * (v17 | (v16 << 6)), v30);
      v19 = v29;
      v20 = *(v28 + 32);
      v21 = v31;
      (*v25)(v29, v26, v31);
      sub_100035E08(v7, v20, v19);
      (*(v5 + 8))(v7, v18);
      result = (*v23)(v19, v21);
    }

    while (v14);
  }

  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
    }

    v14 = *&v11[8 * v16];
    ++v9;
    if (v14)
    {
      v9 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100050310(uint64_t a1)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v35 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  type metadata accessor for Persistence();
  v11 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_containerPath;
  v36 = 0xD00000000000001DLL;
  v37 = 0x800000010006A320;
  v27 = 0x800000010006A320;
  v12 = *(v3 + 104);
  v26 = enum case for URL.DirectoryHint.notDirectory(_:);
  v25 = v12;
  v12(v5);
  v13 = sub_100011710();
  v34 = a1;
  v28 = v13;
  v29 = v11;
  URL.appending<A>(path:directoryHint:)();
  v14 = *(v3 + 8);
  v31 = v2;
  v14(v5, v2);
  v15 = v33;
  v16 = static Persistence.readEffectiveSettings(from:)();
  v32 = v6;
  if (v15)
  {

    v33 = *(v35 + 8);
    v33(v10, v6);
    v17 = sub_100006278(_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = v16;
    v33 = *(v35 + 8);
    v33(v10, v6);
  }

  v38 = &_swiftEmptyDictionarySingleton;
  sub_100050058(v34, &v38);
  sub_10006100C(&v38);
  v18 = v38;
  sub_10001027C(v17, v38);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    v36 = 0xD00000000000001DLL;
    v37 = v27;
    v27 = v14;
    v21 = v31;
    v25(v5, v26, v31);
    v22 = v30;
    URL.appending<A>(path:directoryHint:)();
    v27(v5, v21);
    sub_100053E9C(v18, v22, &static Persistence.write(_:to:));
    v33(v22, v32);
  }
}

id sub_1000506AC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v57 = a4;
  v55 = type metadata accessor for URL();
  v9 = *(v55 - 8);
  v10 = __chkstk_darwin(v55);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v45 = &v42 - v13;
  v14 = __chkstk_darwin(v12);
  v53 = &v42 - v15;
  __chkstk_darwin(v14);
  v54 = type metadata accessor for Logger();
  v56 = *(v54 - 8);
  v16 = __chkstk_darwin(v54);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v46 = &v42 - v20;
  __chkstk_darwin(v19);
  v21 = *a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *a1;
  *a1 = 0x8000000000000000;
  sub_100051608(v21, sub_10004D6B8, 0, isUniquelyReferenced_nonNull_native, &v58);

  v23 = v58;
  *a1 = v58;

  sub_10004E694(v23, a3);
  v48 = v9;
  v43 = a5;
  v42 = v18;

  v24 = v55;
  v25 = v56;
  v26 = *v57 + 56;
  v27 = 1 << *(*v57 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(*v57 + 56);
  v30 = (v27 + 63) >> 6;
  v56 = *v57;
  v57 = (v9 + 16);
  v51 = (v9 + 8);
  v52 = v9 + 32;
  v49 = (v25 + 8);

  v31 = 0;
  *&v32 = 136446210;
  v44 = v32;
  v33 = v45;
  v50 = v26;
  while (v29)
  {
    v34 = v31;
LABEL_9:
    v35 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v36 = v53;
    (*(v9 + 16))(v53, *(v56 + 48) + *(v9 + 72) * (v35 | (v34 << 6)), v24);
    (*(v9 + 32))(v33, v36, v24);
    sub_10004F638(v33);
    (*v51)(v33, v24);
    v31 = v34;
    v26 = v50;
  }

  while (1)
  {
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);

      *v24 = v58;

      __break(1u);
      return result;
    }

    if (v34 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v34);
    ++v31;
    if (v29)
    {
      goto LABEL_9;
    }
  }

  v37 = v42;
  static Logger.persistenceRecordStore.getter();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Persistence record migration: migrateDataFromLocalAppContainer end", v40, 2u);
  }

  (*v49)(v37, v54);
  return [*(v43 + 216) unlock];
}

uint64_t sub_100050FA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v48 = a1;
  v59 = sub_10000637C(&qword_10007B810, "(N");
  v6 = __chkstk_darwin(v59);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = &v47 - v9;
  v10 = type metadata accessor for UUID();
  result = __chkstk_darwin(v10);
  v63 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v60 = a3;
  v15 = *(a3 + 64);
  v49 = 0;
  v50 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v57 = (a4 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
  v58 = v12;
  v19 = (v16 + 63) >> 6;
  v55 = v8;
  v56 = v12 + 16;
  v52 = v19;
  v53 = (v12 + 8);
  v54 = result;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v62 = (v18 - 1) & v18;
LABEL_13:
    v24 = v21 | (v14 << 6);
    v25 = v60;
    v26 = *(v58 + 16);
    v27 = v63;
    v26(v63, v60[6] + *(v58 + 72) * v24, v10);
    v28 = v25[7];
    v51 = v24;
    v29 = *(v28 + 8 * v24);
    v30 = v64;
    v26(v64, v27, v10);
    v31 = v59;
    *(v30 + *(v59 + 48)) = v29;
    sub_100006754(v30, v8, &qword_10007B810, "(N");
    v32 = *&v8[*(v31 + 48)];
    v33 = *(v32 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    v34 = *(v32 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
    v35 = *(v32 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16);
    v36 = *(v32 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 24);
    v37 = *(v32 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32);
    swift_retain_n();

    v38 = *v57;
    v39 = v57[1];
    v41 = v57[2];
    v40 = v57[3];
    v61 = *(v57 + 32);
    v42 = v33 == v38 && v34 == v39;
    if (!v42 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      sub_100008630(v64, &qword_10007B810, "(N");
LABEL_25:
      v10 = v54;
      v45 = *v53;
      v8 = v55;
      (*v53)(v55, v54);

      result = (v45)(v63, v10);
      v19 = v52;
      v18 = v62;
      goto LABEL_26;
    }

    if (v35 == v41 && v36 == v40)
    {
      sub_100008630(v64, &qword_10007B810, "(N");
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100008630(v64, &qword_10007B810, "(N");

      if ((v44 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v10 = v54;
    v20 = *v53;
    v8 = v55;
    (*v53)(v55, v54);

    result = (v20)(v63, v10);
    v19 = v52;
    v18 = v62;
    if (v37 != v61)
    {
LABEL_26:
      *(v48 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      if (__OFADD__(v49++, 1))
      {
        __break(1u);
        return sub_10004C3AC(v48, v47, v49, v60);
      }
    }
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return sub_10004C3AC(v48, v47, v49, v60);
    }

    v23 = *(v50 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v62 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100051448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_100049B80(v13, v8, a1, a2);

      return v11;
    }
  }

  __chkstk_darwin(v10);
  bzero(&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_100050FA0((&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_100051608(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v42 = type metadata accessor for UUID();
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000637C(&qword_10007B868, &qword_100067038);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v43 = a1;
  v44 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v45 = v16;
  v46 = 0;
  v47 = v19 & v17;
  v48 = a2;
  v49 = a3;
  v20 = (v9 + 32);
  v40 = (v9 + 8);
  v41 = v9;

  v39 = a3;

  while (1)
  {
    sub_10004DE30(v14);
    v21 = sub_10000637C(&qword_10007A260, &qword_100067040);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_100003AB8(v43);
    }

    v22 = *(v21 + 48);
    v23 = *v20;
    (*v20)(v11, v14, v42);
    v24 = *&v14[v22];
    v25 = *v50;
    v27 = sub_100018360(v11);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_10001D174();
      }
    }

    else
    {
      sub_1000194F0(v30, a4 & 1);
      v32 = sub_100018360(v11);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_19;
      }

      v27 = v32;
    }

    v34 = *v50;
    if (v31)
    {
      (*v40)(v11, v42);
      *(v34[7] + 8 * v27) = v24;

      a4 = 1;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v23((v34[6] + *(v41 + 72) * v27), v11, v42);
      *(v34[7] + 8 * v27) = v24;
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v34[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10005194C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v42 = type metadata accessor for Logger();
  v6 = *(v42 - 8);
  v7 = __chkstk_darwin(v42);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v37 - v9;
  v10 = type metadata accessor for URL();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - v15;
  __chkstk_darwin(v14);
  v47 = &v37 - v17;
  v18 = *a2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(a1 + 272);
  *(a1 + 272) = 0x8000000000000000;
  sub_100051608(v18, sub_10004D6B8, 0, isUniquelyReferenced_nonNull_native, &v52);

  *(a1 + 272) = v52;
  swift_endAccess();
  v38 = a1;
  sub_100036A80();
  v20 = *a3;
  v21 = *a3 + 56;
  v22 = 1 << *(*a3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(*a3 + 56);
  v25 = (v22 + 63) >> 6;
  v48 = v20;
  v49 = v50 + 16;
  v44 = (v50 + 8);
  v45 = v50 + 32;
  v41 = (v6 + 8);

  v26 = 0;
  *&v27 = 136446210;
  v39 = v27;
  v40 = v13;
  v46 = v21;
  while (v24)
  {
    v28 = v26;
LABEL_9:
    v29 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v30 = v50;
    a1 = v51;
    v31 = v47;
    (*(v50 + 16))(v47, *(v48 + 48) + *(v50 + 72) * (v29 | (v28 << 6)), v51);
    (*(v30 + 32))(v16, v31, a1);
    sub_10004F638(v16);
    (*v44)(v16, v51);
    v26 = v28;
    v21 = v46;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);

      *(a1 + 272) = v52;

      __break(1u);
      return result;
    }

    if (v28 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v28);
    ++v26;
    if (v24)
    {
      goto LABEL_9;
    }
  }

  v32 = v37;
  static Logger.persistenceRecordStore.getter();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Persistence record migration: migrateRecordDataFromEffectiveSettingsDirectory end", v35, 2u);
  }

  (*v41)(v32, v42);
  return [*(v38 + 216) unlock];
}

uint64_t sub_100051FC8(unint64_t a1, uint64_t a2)
{
  v35 = a2;
  v34 = type metadata accessor for SettingScope();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = type metadata accessor for URL();
  v7 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = a1;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v8 = v36;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    v28 = 0x800000010006A320;
    v29 = v8 & 0xC000000000000001;
    v27 = enum case for URL.DirectoryHint.notDirectory(_:);
    v26 = (v5 + 104);
    v25 = (v5 + 8);
    v24 = enum case for SettingScope.user(_:);
    v13 = (v3 + 104);
    v14 = (v3 + 8);
    v15 = (v7 + 8);
    do
    {
      v22 = result;
      if (v29)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v8 + 8 * v12 + 32);
      }

      ++v12;
      v37 = 0xD00000000000001DLL;
      v38 = v28;
      v18 = v31;
      v17 = v32;
      (*v26)(v31, v27, v32);
      sub_100011710();
      URL.appending<A>(path:directoryHint:)();
      (*v25)(v18, v17);
      v19 = *(v16 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32);
      v21 = v33;
      v20 = v34;
      (*v13)(v33, v24, v34);
      sub_100035E30(v10, v19, v21);
      (*v14)(v21, v20);
      (*v15)(v10, v30);

      result = v22;
      v8 = v36;
    }

    while (v22 != v12);
  }

  return result;
}

uint64_t sub_100052364(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v28 = a3;
  v4 = type metadata accessor for CocoaError.Code();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = v31;
  sub_10000F5A4(a2, v28, v15);
  if (v18)
  {
    swift_errorRetain();
    static CocoaError.fileNoSuchFile.getter();
    sub_10005459C(&qword_10007A460, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
    v24 = static _ErrorCodeProtocol.~= infix(_:_:)();

    v21 = *(v27 + 8);
    v21(v6, v4);
    if (v24 & 1) != 0 || (swift_errorRetain(), static CocoaError.fileReadNoSuchFile.getter(), v24 = static _ErrorCodeProtocol.~= infix(_:_:)(), , v21(v6, v4), (v24))
    {

      sub_100011890();
      swift_allocError();
      *v22 = 1;
      swift_willThrow();
    }
  }

  else
  {
    v31 = type metadata accessor for Persistence();
    v29 = 0x657A696E656B6F74;
    v30 = 0xEF7473696C702E64;
    (*(v8 + 104))(v10, enum case for URL.DirectoryHint.notDirectory(_:), v7);
    sub_100011710();
    URL.appending<A>(path:directoryHint:)();
    (*(v8 + 8))(v10, v7);
    v19 = v25;
    v20 = *(v26 + 8);
    v20(v15, v25);
    v24 = static Persistence.readLocalSettings(from:)();
    v20(v17, v19);
  }

  return v24;
}

uint64_t sub_100052768(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v28 = a3;
  v4 = type metadata accessor for CocoaError.Code();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = v31;
  sub_10000F5A4(a2, v28, v15);
  if (v18)
  {
    swift_errorRetain();
    static CocoaError.fileNoSuchFile.getter();
    sub_10005459C(&qword_10007A460, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
    v24 = static _ErrorCodeProtocol.~= infix(_:_:)();

    v21 = *(v27 + 8);
    v21(v6, v4);
    if (v24 & 1) != 0 || (swift_errorRetain(), static CocoaError.fileReadNoSuchFile.getter(), v24 = static _ErrorCodeProtocol.~= infix(_:_:)(), , v21(v6, v4), (v24))
    {

      sub_100011890();
      swift_allocError();
      *v22 = 1;
      swift_willThrow();
    }
  }

  else
  {
    v31 = type metadata accessor for Persistence();
    v29 = 0xD000000000000011;
    v30 = 0x8000000100069320;
    (*(v8 + 104))(v10, enum case for URL.DirectoryHint.notDirectory(_:), v7);
    sub_100011710();
    URL.appending<A>(path:directoryHint:)();
    (*(v8 + 8))(v10, v7);
    v19 = v25;
    v20 = *(v26 + 8);
    v20(v15, v25);
    v24 = static Persistence.readLocalSettings(from:)();
    v20(v17, v19);
  }

  return v24;
}

void sub_100052B64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
  v31 = v10;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v15 = v12 | (v5 << 6);
    if (!*(a4 + 16))
    {
      goto LABEL_23;
    }

    v34 = v9;
    v16 = (*(a3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v32 = v15;
    v19 = *(*(a3 + 56) + 8 * v15);
    Hasher.init(_seed:)();

    v20 = v19;
    String.hash(into:)();
    v21 = Hasher._finalize()();
    v22 = -1 << *(a4 + 32);
    v23 = v21 & ~v22;
    if ((*(v11 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v24 = ~v22;
      while (1)
      {
        v25 = (*(a4 + 48) + 16 * v23);
        v26 = *v25 == v18 && v25[1] == v17;
        if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v11 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v10 = v31;
      v9 = v34;
    }

    else
    {
LABEL_22:

      v10 = v31;
      v15 = v32;
      v9 = v34;
LABEL_23:
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_26:
        sub_10004C74C(a1, a2, v30, a3);
        return;
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_100052D80(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_100049C1C(v13, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_100052B64((&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_100052F40(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = sub_1000182E8(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_10001DD34();
      }
    }

    else
    {
      sub_10001B190(v29, v42 & 1);
      v31 = sub_1000182E8(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_100003AB8(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000531C8(uint64_t a1, uint64_t a2, char *a3, _BYTE *a4, _BYTE *a5)
{
  v96 = type metadata accessor for Logger();
  v10 = *(v96 - 8);
  v11 = __chkstk_darwin(v96);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v81 - v14;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  if (!*(a1 + 16))
  {
    static Logger.persistenceRecordStore.getter();

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v102[0] = v77;
      *v76 = 136446210;
      type metadata accessor for UUID();
      sub_10005459C(&qword_10007ABB0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = sub_100001ED8(v78, v79, v102);

      *(v76 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v74, v75, "Nothing to delete from record “%{public}s,” exiting early", v76, 0xCu);
      sub_10000210C(v77);
    }

    (*(v10 + 8))(v13, v96);
    return;
  }

  v82 = a3;
  v84 = a4;
  v83 = a5;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  v20 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
  v91 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier;

  v98 = v20;
  v99 = a2;
  swift_beginAccess();
  v21 = 0;
  v87 = 0;
  v85 = 0;
  v86 = 0;
  v89 = (v17 + 63) >> 6;
  v93 = v10 + 8;
  *&v22 = 136446722;
  v90 = v22;
  v97 = v15;
  v94 = a1;
  v95 = a1 + 56;
  while (1)
  {
    v23 = v21;
    if (!v19)
    {
      break;
    }

    v24 = v99;
LABEL_11:
    v25 = (*(a1 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v19)))));
    v27 = *v25;
    v26 = v25[1];
    v28 = qword_10007A210;

    if (v28 != -1)
    {
      swift_once();
    }

    v19 &= v19 - 1;
    v29 = qword_10007D5D0;
    v30 = *(qword_10007D5D0 + 16);
    v100 = v27;
    if (v30)
    {
      v31 = *(v24 + v98);
      if (*(v31 + 16))
      {

        v32 = sub_1000182E8(v27, v26);
        if (v33)
        {
          v34 = *(*(v31 + 56) + 32 * v32 + 24);
        }

        else
        {
          v34 = 1;
        }
      }

      else
      {
        v34 = 1;
      }

      v35 = *(v24 + v98);
      if (*(v35 + 16))
      {

        v36 = sub_1000182E8(v27, v26);
        if (v37)
        {
          v38 = *(*(v35 + 56) + 32 * v36 + 25);
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 0;
      }

      if (sub_10000ECDC(v29, v100, v26))
      {
        v39 = *(v24 + v98);
        if (*(v39 + 16))
        {

          v40 = sub_1000182E8(v100, v26);
          if (v41)
          {
            v42 = *(*(v39 + 56) + 32 * v40 + 24);
          }

          else
          {
            v42 = 1;
          }
        }

        else
        {
          v42 = 1;
        }

        v43 = *(v24 + v98);
        if (*(v43 + 16))
        {

          v44 = sub_1000182E8(v100, v26);
          if (v45)
          {
            v46 = *(*(v43 + 56) + 32 * v44 + 25);
          }

          else
          {
            v46 = 0;
          }
        }

        else
        {
          v46 = 0;
        }

        LODWORD(v88) = v34 ^ v42;

        LODWORD(v92) = v38 ^ v46;
        HIDWORD(v88) = 1;
        v24 = v99;
        v27 = v100;
      }

      else
      {
        v88 = 0;
        LODWORD(v92) = 0;
        v27 = v100;
      }
    }

    else
    {
      v88 = 0;
      LODWORD(v92) = 0;
    }

    LOBYTE(v101) = 0;
    v47 = sub_100052364(v24, v27, v26);
    v48 = sub_100052768(v24, v27, v26);

    v49 = sub_100006278(_swiftEmptyArrayStorage);
    v50 = sub_100006278(_swiftEmptyArrayStorage);

    sub_10001027C(v47, v49);
    v52 = v51;

    if ((v52 & 1) == 0)
    {

LABEL_46:
      v56 = v99;
      sub_10004FAC4(v99, v27, v26, v49, v50, &v101);
      v55 = 1;
      goto LABEL_47;
    }

    sub_10001027C(v48, v50);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      goto LABEL_46;
    }

    v55 = 0;
    v56 = v99;
LABEL_47:
    v16 = v95;

    if (*(*(v56 + v98) + 16))
    {

      sub_1000182E8(v100, v26);
      v58 = v57;

      if (v58)
      {
        v59 = *(v56 + v98);
        if (*(v59 + 16))
        {

          v60 = sub_1000182E8(v100, v26);
          if (v61)
          {
            v62 = *(v59 + 56) + 32 * v60;
            v63 = *(v62 + 24);
            v64 = *(v62 + 25);

            v65 = v63 == 1;
            v16 = v95;
            if (!v65 || (v64 & 1) != 0)
            {
              goto LABEL_57;
            }
          }

          else
          {
          }
        }

        if ((sub_10000EFD0(v100, v26) & 1) == 0)
        {
          sub_10000FE2C(v100, v26);
LABEL_65:
          if (v55)
          {
            if (v92)
            {

              v66 = 1;
              v86 = 1;
              goto LABEL_68;
            }

            HIDWORD(v88) = 1;
          }

          else
          {
            if (v92)
            {

LABEL_71:
              v86 = 1;
              *v82 = 1;
LABEL_72:
              v67 = v88 | v85;
LABEL_73:
              a1 = v94;
              v85 = v67;
              *v84 = v67 & 1;
LABEL_85:
              v68 = 1;
              goto LABEL_86;
            }

            HIDWORD(v88) = 1;
            if ((v88 & 1) == 0)
            {

              *v82 = 1;
              *v84 = v85 & 1;
              v86 = 1;
              a1 = v94;
              v68 = v87;
              goto LABEL_86;
            }
          }

          goto LABEL_78;
        }
      }
    }

LABEL_57:
    if (v101 == 1)
    {
      goto LABEL_65;
    }

    if (v55)
    {
      if (v92)
      {

        v86 |= HIDWORD(v88);
        v66 = v86 & 1;
LABEL_68:
        *v82 = v66;
        v67 = 1;
        goto LABEL_73;
      }
    }

    else
    {
      if (v92)
      {

        if ((v88 & 0x100000000) != 0)
        {
          goto LABEL_71;
        }

        *v82 = v86 & 1;
        goto LABEL_72;
      }

      if ((v88 & 1) == 0)
      {

        v68 = v87;
        if (HIDWORD(v88))
        {
          v86 = 1;
          *v82 = 1;
        }

        else
        {
          *v82 = v86 & 1;
        }

        *v84 = v85 & 1;
        a1 = v94;
        goto LABEL_86;
      }
    }

LABEL_78:
    v69 = *(v56 + v98);
    if (*(v69 + 16))
    {

      v70 = sub_1000182E8(v100, v26);
      v71 = HIDWORD(v88);
      if (v72)
      {
        v73 = *(*(v69 + 56) + 32 * v70 + 25);
      }

      else
      {
        v73 = 0;
      }

      v68 = v87;
    }

    else
    {
      v73 = 0;
      v68 = v87;
      v71 = HIDWORD(v88);
    }

    v86 |= v71;
    *v82 = v86 & 1;
    v85 = 1;
    *v84 = 1;
    a1 = v94;
    if (v73)
    {
      goto LABEL_85;
    }

LABEL_86:
    v87 = v68;
    *v83 = v68 & 1;
  }

  v24 = v99;
  while (1)
  {
    v21 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v21 >= v89)
    {

      return;
    }

    v19 = *(v16 + 8 * v21);
    ++v23;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100053E9C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v7 = type metadata accessor for Logger();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v26 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = __chkstk_darwin(v9);
  v23 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = type metadata accessor for CocoaError.Code();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Persistence();
  v21 = a1;
  v22 = a3;
  a3(a1, a2);
  if (v3)
  {
    swift_errorRetain();
    static CocoaError.fileNoSuchFile.getter();
    sub_10005459C(&qword_10007A460, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
    v18 = static _ErrorCodeProtocol.~= infix(_:_:)();

    result = (*(v15 + 8))(v17, v14);
    if ((v18 & 1) == 0)
    {
      return result;
    }

    URL.deletingLastPathComponent()();
    static Persistence.createDirectory(at:)();
    (*(v27 + 8))(v13, v28);
    v22(v21, a2);
  }

  return static Persistence.setFileAttributes(of:)();
}

uint64_t sub_1000543C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10005441C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006914(&qword_10007B818, &qword_100067018);
    sub_10005459C(a2, type metadata accessor for PersistenceRecord, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100054514(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000543C8(result, a2);
  }

  return result;
}

uint64_t sub_100054528(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10005457C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100054528(result, a2);
  }

  return result;
}

uint64_t sub_10005459C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000545E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006914(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100054648(uint64_t a1)
{
  v48 = a1;
  v2 = sub_10000637C(&qword_10007BA98, &qword_1000671F0);
  __chkstk_darwin(v2 - 8);
  v49 = &v43 - v3;
  v4 = sub_10000637C(&qword_10007BAA0, &unk_1000671F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - v6;
  v8 = sub_10000637C(&qword_10007BA90, &qword_100067330);
  v9 = sub_10005BCF8(&qword_10007BAA8, &qword_10007BA90, &qword_100067330, sub_10005BD74);
  v53 = v8;
  v54 = v1;
  v52 = v9;
  v10 = dispatch thunk of SettingMetadataProtocol.name.getter();
  v11 = v4;
  v13 = sub_10003CADC(v10, v12);

  v14 = 0;
  v16 = v13 + 8;
  v15 = v13[8];
  v60 = v13;
  v17 = 1 << *(v13 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v20 = (v17 + 63) >> 6;
  v51 = (v5 + 56);
  v45 = (v5 + 8);
  v46 = (v5 + 32);
  v44 = _swiftEmptyArrayStorage;
  v47 = v7;
  v50 = v11;
  while (1)
  {
    v21 = v14;
    if (!v19)
    {
      break;
    }

LABEL_9:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v23 = v22 | (v14 << 6);
    v24 = v60[7];
    v25 = v60[6] + 40 * v23;
    v26 = *(v25 + 8);
    v57 = *v25;
    v27 = *(v25 + 24);
    v56 = *(v25 + 16);
    v55 = *(v25 + 32);
    v28 = *(v24 + 8 * v23);
    type metadata accessor for Application();
    sub_10005BCB0(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);

    v29 = v28;
    if (static Set<>.value(from:)())
    {
      v58 = v29;
      v59 = v26;
      v30 = v27;
      dispatch thunk of SettingMetadataProtocol.combineOperator.getter();
      sub_10000637C(&qword_10007BA30, &qword_100067190);
      v32 = v49;
      v31 = v50;
      if (swift_dynamicCast())
      {
        (*v51)(v32, 0, 1, v31);
        v33 = v47;
        (*v46)(v47, v32, v31);
        v34 = SetCombineOperator.currentValue(_:restricts:)();

        v35 = v30;
        if (v34)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v44 = sub_100026090(0, *(v44 + 2) + 1, 1, v44);
          }

          v39 = *(v44 + 2);
          v38 = *(v44 + 3);
          if (v39 >= v38 >> 1)
          {
            v44 = sub_100026090((v38 > 1), v39 + 1, 1, v44);
          }

          (*v45)(v33, v31);
          v40 = v44;
          *(v44 + 2) = v39 + 1;
          v41 = &v40[40 * v39];
          v42 = v59;
          *(v41 + 4) = v57;
          *(v41 + 5) = v42;
          *(v41 + 6) = v56;
          *(v41 + 7) = v35;
          v41[64] = v55;
        }

        else
        {
          (*v45)(v33, v31);
        }
      }

      else
      {

        (*v51)(v32, 1, 1, v31);
        sub_100008630(v32, &qword_10007BA98, &qword_1000671F0);
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v20)
    {

      return;
    }

    v19 = v16[v14];
    ++v21;
    if (v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100054B74(uint64_t a1, int a2)
{
  v46 = a2;
  v45 = a1;
  v3 = sub_10000637C(&qword_10007BA40, &qword_1000671A0);
  __chkstk_darwin(v3 - 8);
  v50 = &v40 - v4;
  v52 = sub_10000637C(&qword_10007BA48, &unk_1000671A8);
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v7 = &v40 - v6;
  v8 = sub_10000637C(&qword_10007BA00, "DN");
  v9 = sub_10005BCF8(&qword_10007BA50, &qword_10007BA00, "DN", sub_10005BB4C);
  v51 = v2;
  v48 = v9;
  v49 = v8;
  v10 = dispatch thunk of SettingMetadataProtocol.name.getter();
  v12 = sub_10003CADC(v10, v11);

  v13 = 0;
  v15 = v12 + 8;
  v14 = v12[8];
  v57 = v12;
  v16 = 1 << *(v12 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v47 = (v5 + 56);
  v44 = (v5 + 32);
  v42 = (v5 + 8);
  v41 = _swiftEmptyArrayStorage;
  v43 = v7;
  while (1)
  {
    v20 = v13;
    if (!v18)
    {
      break;
    }

LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v22 = v21 | (v13 << 6);
    v23 = v57[7];
    v24 = v57[6] + 40 * v22;
    v25 = *(v24 + 8);
    v55 = *v24;
    v26 = *(v24 + 24);
    v54 = *(v24 + 16);
    v53 = *(v24 + 32);
    v27 = *(v23 + 8 * v22);
    type metadata accessor for WebDomain();
    sub_10005BCB0(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);

    v28 = v27;
    if (static Set<>.value(from:)())
    {
      v56 = v28;
      dispatch thunk of SettingMetadataProtocol.combineOperator.getter();
      sub_10000637C(&qword_10007BA30, &qword_100067190);
      v29 = v50;
      v30 = v52;
      if (swift_dynamicCast())
      {
        (*v47)(v29, 0, 1, v30);
        v31 = v43;
        (*v44)(v43, v29, v30);
        v32 = SetCombineOperator<>.currentValue(_:restricts:shouldUsePatternMatching:)();

        if (v32)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_100026090(0, *(v41 + 2) + 1, 1, v41);
          }

          v33 = v31;
          v35 = *(v41 + 2);
          v34 = *(v41 + 3);
          v36 = v56;
          if (v35 >= v34 >> 1)
          {
            v41 = sub_100026090((v34 > 1), v35 + 1, 1, v41);
          }

          (*v42)(v33, v52);
          v37 = v41;
          *(v41 + 2) = v35 + 1;
          v38 = &v37[40 * v35];
          v39 = v54;
          *(v38 + 4) = v55;
          *(v38 + 5) = v25;
          *(v38 + 6) = v39;
          *(v38 + 7) = v26;
          v38[64] = v53;
        }

        else
        {
          (*v42)(v31, v30);
        }
      }

      else
      {

        (*v47)(v29, 1, 1, v30);
        sub_100008630(v29, &qword_10007BA40, &qword_1000671A0);
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v19)
    {

      return;
    }

    v18 = v15[v13];
    ++v20;
    if (v18)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

char *sub_10005509C(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v51 = a1;
  v3 = sub_10000637C(&qword_10007BA70, &qword_1000671C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v47 - v4;
  v62 = sub_10000637C(&qword_10007BA78, &qword_1000671C8);
  v6 = *(v62 - 8);
  __chkstk_darwin(v62 - 8);
  v8 = &v47 - v7;
  v9 = sub_10000637C(&qword_10007AC88, &unk_1000671D0);
  __chkstk_darwin(v9 - 8);
  v68 = &v47 - v10;
  v70 = sub_10000637C(&qword_10007AC80, &unk_100066590);
  v11 = *(v70 - 8);
  __chkstk_darwin(v70);
  v61 = &v47 - v12;
  v13 = sub_10000637C(&qword_10007BA68, &qword_1000671B8);
  v14 = sub_10005BCF8(&qword_10007BA80, &qword_10007BA68, &qword_1000671B8, sub_10005BBE8);
  v57 = v13;
  v58 = v2;
  v56 = v14;
  v15 = dispatch thunk of SettingMetadataProtocol.name.getter();
  v17 = sub_10003CADC(v15, v16);

  v19 = 0;
  v21 = v17 + 8;
  v20 = v17[8];
  v69 = v17;
  v22 = 1 << *(v17 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v67 = (v11 + 48);
  v54 = (v11 + 32);
  v59 = (v6 + 56);
  v60 = (v11 + 8);
  v49 = (v6 + 32);
  v53 = _swiftEmptyArrayStorage;
  v48 = (v6 + 8);
  v50 = v8;
  v55 = v5;
  while (1)
  {
    v26 = v19;
    if (!v24)
    {
      break;
    }

LABEL_9:
    v27 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v28 = v27 | (v19 << 6);
    v29 = v69[7];
    v30 = v69[6] + 40 * v28;
    v31 = *(v30 + 8);
    v66 = *v30;
    v32 = *(v30 + 24);
    v65 = *(v30 + 16);
    v64 = *(v30 + 32);
    v33 = *(v29 + 8 * v28);
    type metadata accessor for Application();
    sub_10005BCB0(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);

    v34 = v33;
    v35 = v68;
    static ShieldSettings.EffectiveActivityCategoryPolicy<>.value(from:)();
    v36 = v70;
    if ((*v67)(v35, 1, v70) == 1)
    {

      result = sub_100008630(v35, &qword_10007AC88, &unk_1000671D0);
    }

    else
    {
      v63 = v31;
      v37 = v61;
      (*v54)(v61, v35, v36);
      dispatch thunk of SettingMetadataProtocol.combineOperator.getter();
      sub_10000637C(&qword_10007BA30, &qword_100067190);
      v38 = v36;
      v39 = v55;
      v40 = v62;
      if (swift_dynamicCast())
      {
        (*v59)(v39, 0, 1, v40);
        v41 = v50;
        (*v49)(v50, v39, v40);
        if (ActivityCategoryPolicyCombineOperator.currentValue(_:restricts:including:)())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_100026090(0, *(v53 + 2) + 1, 1, v53);
          }

          v43 = *(v53 + 2);
          v42 = *(v53 + 3);
          if (v43 >= v42 >> 1)
          {
            v53 = sub_100026090((v42 > 1), v43 + 1, 1, v53);
          }

          (*v48)(v41, v62);
          result = (*v60)(v61, v70);
          v44 = v53;
          *(v53 + 2) = v43 + 1;
          v45 = &v44[40 * v43];
          v46 = v63;
          *(v45 + 4) = v66;
          *(v45 + 5) = v46;
          *(v45 + 6) = v65;
          *(v45 + 7) = v32;
          v45[64] = v64;
        }

        else
        {

          (*v48)(v41, v40);
          result = (*v60)(v37, v70);
        }
      }

      else
      {
        (*v60)(v37, v38);

        (*v59)(v39, 1, 1, v40);
        result = sub_100008630(v39, &qword_10007BA70, &qword_1000671C0);
      }
    }
  }

  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v19 >= v25)
    {

      return v53;
    }

    v24 = v21[v19];
    ++v26;
    if (v24)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100055788(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100055814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100055884(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_100054514(v4, v8);
}

void sub_100055930(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

void sub_1000559C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

ValueMetadata *sub_100055A58()
{
  result = *(v0 + 16);
  if (!result)
  {
    result = &type metadata for ApplicationRecord;
    *(v0 + 16) = &type metadata for ApplicationRecord;
    *(v0 + 24) = &off_100075F58;
  }

  return result;
}

uint64_t sub_100055A80@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_100056E24(v1 + 32, &v4);
  if (v5)
  {
    return sub_100003AA0(&v4, a1);
  }

  sub_100008630(&v4, &qword_10007B9E8, "4N");
  a1[3] = type metadata accessor for KeyRetriever();
  a1[4] = &protocol witness table for KeyRetriever;
  sub_1000067BC(a1);
  KeyRetriever.init()();
  sub_10000695C(a1, &v4);
  swift_beginAccess();
  sub_100056E94(&v4, v1 + 32);
  return swift_endAccess();
}

uint64_t sub_100055B50@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, void *a6@<X8>)
{
  v47 = a6;
  v7 = v6;
  v56 = a5;
  v39 = a3;
  v40 = a4;
  v8 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  __chkstk_darwin(v8 - 8);
  v45 = &v37 - v9;
  v10 = sub_10000637C(&qword_10007BA68, &qword_1000671B8);
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v38 = &v37 - v11;
  v12 = type metadata accessor for ActivityCategory();
  v41 = *(v12 - 8);
  v42 = v12;
  __chkstk_darwin(v12);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000637C(&qword_10007BA90, &qword_100067330);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  v18 = type metadata accessor for Application();
  v48 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  Application.init(bundleIdentifier:)();
  static ShieldSettings.applications.getter();
  sub_100054648(v20);
  v22 = v21;
  (*(v15 + 8))(v17, v14);
  v46 = v7;
  sub_100056F04(v22, v49);
  v24 = v49[0];
  v23 = v49[1];
  v25 = v49[2];
  v26 = v49[3];
  v27 = v50;
  v28 = v56;

  *v28 = 0;
  if (v23)
  {
    v29 = v48;
  }

  else
  {

    v30 = v37;
    ActivityCategory.init(identifier:)();
    v31 = v38;
    static ShieldSettings.applicationCategories.getter();
    v32 = v48;
    v33 = v45;
    (*(v48 + 16))(v45, v20, v18);
    (*(v32 + 56))(v33, 0, 1, v18);
    v34 = sub_10005509C(v30, v33);
    sub_100008630(v33, &qword_10007AC90, &unk_1000665A0);
    (*(v43 + 8))(v31, v44);
    sub_100056F04(v34, &v51);

    (*(v41 + 8))(v30, v42);
    *v28 = 1;
    v23 = v52;
    if (!v52)
    {
      sub_10005BA30();
      swift_allocError();
      swift_willThrow();
      return (*(v32 + 8))(v20, v18);
    }

    v29 = v32;
    v27 = v55;
    v25 = v53;
    v26 = v54;
    v24 = v51;
  }

  result = (*(v29 + 8))(v20, v18);
  v36 = v47;
  *v47 = v24;
  v36[1] = v23;
  v36[2] = v25;
  v36[3] = v26;
  *(v36 + 32) = v27 & 1;
  return result;
}

uint64_t sub_100056024@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v22[2] = a1;
  v4 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = sub_10000637C(&qword_10007BA68, &qword_1000671B8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - v9;
  v28 = type metadata accessor for ActivityCategory();
  v11 = *(v28 - 8);
  __chkstk_darwin(v28);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  ActivityCategory.init(identifier:)();
  static ShieldSettings.applicationCategories.getter();
  v14 = type metadata accessor for Application();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = sub_10005509C(v13, v6);
  sub_100008630(v6, &qword_10007AC90, &unk_1000665A0);
  (*(v8 + 8))(v10, v7);
  sub_100056F04(v15, &v23);

  v16 = v24;
  if (v24)
  {
    v17 = v27;
    v19 = v25;
    v18 = v26;
    v20 = v23;
    result = (*(v11 + 8))(v13, v28);
    *a3 = v20;
    *(a3 + 8) = v16;
    *(a3 + 16) = v19;
    *(a3 + 24) = v18;
    *(a3 + 32) = v17 & 1;
  }

  else
  {
    sub_10005BA30();
    swift_allocError();
    swift_willThrow();
    return (*(v11 + 8))(v13, v28);
  }

  return result;
}

uint64_t sub_1000563A8@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, void *a6@<X8>)
{
  v47 = a6;
  v7 = v6;
  v56 = a5;
  v39 = a3;
  v40 = a4;
  v8 = sub_10000637C(&qword_10007B9F0, "6N");
  __chkstk_darwin(v8 - 8);
  v45 = &v37 - v9;
  v10 = sub_10000637C(&qword_10007B9F8, &qword_100067320);
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v38 = &v37 - v11;
  v12 = type metadata accessor for ActivityCategory();
  v41 = *(v12 - 8);
  v42 = v12;
  __chkstk_darwin(v12);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000637C(&qword_10007BA00, "DN");
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  v18 = type metadata accessor for WebDomain();
  v48 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  WebDomain.init(domain:)();
  static ShieldSettings.webDomains.getter();
  sub_100054B74(v20, 1);
  v22 = v21;
  (*(v15 + 8))(v17, v14);
  v46 = v7;
  sub_100056F04(v22, v49);
  v24 = v49[0];
  v23 = v49[1];
  v25 = v49[2];
  v26 = v49[3];
  v27 = v50;
  v28 = v56;

  *v28 = 0;
  if (v23)
  {
    v29 = v48;
  }

  else
  {

    v30 = v37;
    ActivityCategory.init(identifier:)();
    v31 = v38;
    static ShieldSettings.webDomainCategories.getter();
    v32 = v48;
    v33 = v45;
    (*(v48 + 16))(v45, v20, v18);
    (*(v32 + 56))(v33, 0, 1, v18);
    v34 = sub_100058D2C(v30, v33);
    sub_100008630(v33, &qword_10007B9F0, "6N");
    (*(v43 + 8))(v31, v44);
    sub_100056F04(v34, &v51);

    (*(v41 + 8))(v30, v42);
    *v28 = 1;
    v23 = v52;
    if (!v52)
    {
      sub_10005BA30();
      swift_allocError();
      swift_willThrow();
      return (*(v32 + 8))(v20, v18);
    }

    v29 = v32;
    v27 = v55;
    v25 = v53;
    v26 = v54;
    v24 = v51;
  }

  result = (*(v29 + 8))(v20, v18);
  v36 = v47;
  *v47 = v24;
  v36[1] = v23;
  v36[2] = v25;
  v36[3] = v26;
  *(v36 + 32) = v27 & 1;
  return result;
}

uint64_t sub_100056880(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  _Block_copy(v10);

  a7(a3, v11, v13, v14, v16, a1, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_100056A50(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  _Block_copy(v9);

  a7(v10, v12, v13, v15, v16, v18, a1, v9);
  _Block_release(v9);
  _Block_release(v9);
}

uint64_t sub_100056B68(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v8 = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  _Block_copy(v8);

  sub_10005B930(v9, v11, v12, v14, a1, v8, a6);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_100056DA0()
{
  sub_100008630(v0 + 32, &qword_10007B9E8, "4N");
  sub_10000210C((v0 + 72));

  sub_10000210C((v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t sub_100056E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000637C(&qword_10007B9E8, "4N");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100056E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000637C(&qword_10007B9E8, "4N");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100056F04@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!*(result + 16))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    LOBYTE(v7) = 0;
    goto LABEL_29;
  }

  v2 = result;
  v59 = *(result + 16);
  v57 = a2;
  v8 = sub_1000573FC();
  v10 = v9;
  v58 = v2;
  v11 = (v2 + 64);
  v12 = v59;
  do
  {
    if (!v12)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:

LABEL_52:
      result = sub_10000210C(v63);
LABEL_53:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      LOBYTE(v7) = 0;
      goto LABEL_28;
    }

    if (v10)
    {
      v3 = *(v11 - 4);
      v13 = *(v11 - 3);
      v5 = *(v11 - 2);
      v6 = *(v11 - 1);
      LOBYTE(v7) = *v11;
      if (v3 == v8 && v10 == v13)
      {
        v3 = v8;
        v4 = v10;
        goto LABEL_27;
      }

      v15 = v10;
      v16 = v8;
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v8 = v16;
      v10 = v15;
      if (v17)
      {
        v4 = v13;
LABEL_27:

        goto LABEL_28;
      }
    }

    v11 += 40;
    --v12;
  }

  while (v12);
  v56 = v8;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v20 = v59;
LABEL_14:
  v21 = v58;
  v22 = v58 + 40 * v18;
  while (v20 != v18)
  {
    if (v18 >= v20)
    {
      goto LABEL_49;
    }

    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_50;
    }

    v24 = *(v22 + 64);
    ++v18;
    v22 += 40;
    if ((v24 & 1) == 0)
    {
      v25 = *(v22 - 8);
      v26 = *v22;
      v27 = *(v22 + 8);
      v28 = *(v22 + 16);

      v63[0] = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100057870(0, *(v19 + 2) + 1, 1);
        v19 = v63[0];
      }

      v30 = *(v19 + 2);
      v29 = *(v19 + 3);
      v20 = v59;
      if (v30 >= v29 >> 1)
      {
        sub_100057870((v29 > 1), v30 + 1, 1);
        v20 = v59;
        v19 = v63[0];
      }

      *(v19 + 2) = v30 + 1;
      v31 = &v19[40 * v30];
      *(v31 + 4) = v25;
      *(v31 + 5) = v26;
      *(v31 + 6) = v27;
      *(v31 + 7) = v28;
      v31[64] = 0;
      v18 = v23;
      goto LABEL_14;
    }
  }

  v63[0] = v19;

  sub_100057D10(v63);

  if (*(v63[0] + 2))
  {
    v3 = *(v63[0] + 4);
    v4 = *(v63[0] + 5);
    v5 = *(v63[0] + 6);
    v6 = *(v63[0] + 7);
    LOBYTE(v7) = v63[0][64];

    goto LABEL_28;
  }

  v32 = 0;
  v33 = _swiftEmptyArrayStorage;
  v34 = v59;
LABEL_31:
  v35 = (v21 + 40 * v32);
  while (v34 != v32)
  {
    if (v32 >= v34)
    {
      __break(1u);
LABEL_55:
      __break(1u);

      __break(1u);
      return result;
    }

    v36 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_55;
    }

    v37 = *(v35 + 64);
    ++v32;
    v35 += 5;
    if (v37)
    {
      v38 = *(v35 - 1);
      v39 = *v35;
      v40 = v35[1];
      v41 = v35[2];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100057870(0, *(v33 + 2) + 1, 1);
        v33 = v63[0];
      }

      v44 = *(v33 + 2);
      v43 = *(v33 + 3);
      v34 = v59;
      if (v44 >= v43 >> 1)
      {
        sub_100057870((v43 > 1), v44 + 1, 1);
        v34 = v59;
        v33 = v63[0];
      }

      *(v33 + 2) = v44 + 1;
      v45 = &v33[40 * v44];
      *(v45 + 4) = v38;
      *(v45 + 5) = v39;
      *(v45 + 6) = v40;
      *(v45 + 7) = v41;
      v45[64] = 1;
      v32 = v36;
      v21 = v58;
      goto LABEL_31;
    }
  }

  v7 = *(v33 + 2);

  if (!v7)
  {

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_28;
  }

  if (!v10)
  {
    goto LABEL_53;
  }

  v46 = sub_100055A58();
  v48 = v47;
  v49 = *(v47 + 8);
  v61 = v46;
  v62 = v47;
  sub_1000067BC(&v60);
  v49(v56, v10, v46, v48);
  sub_100003AA0(&v60, v63);
  v50 = [*sub_100008578(v63 v64)];
  if (!v50)
  {
    goto LABEL_52;
  }

  v51 = v50;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v52;

  v53 = [*sub_100008578(v63 v64)];
  if (!v53)
  {
    goto LABEL_51;
  }

  v54 = v53;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v55;

  result = sub_10000210C(v63);
  LOBYTE(v7) = 0;
LABEL_28:
  a2 = v57;
LABEL_29:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

void (*sub_1000573FC())(_BYTE *, uint64_t)
{
  v1 = type metadata accessor for Logger();
  v31 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Application();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v25[-v9];
  sub_100008578((v0 + 72), *(v0 + 96));
  sub_100033ED4(v10);
  v11 = Application.bundleIdentifier.getter();
  if (v12)
  {
    v13 = v11;
    (*(v5 + 8))(v10, v4);
  }

  else
  {
    v30 = v1;
    static Logger.shieldAction.getter();
    (*(v5 + 16))(v8, v10, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = v16;
      v29 = swift_slowAlloc();
      v32 = v29;
      *v16 = 136446210;
      sub_10005BCB0(&qword_10007B878, &type metadata accessor for Application, &protocol conformance descriptor for Application);
      v26 = v15;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v28 = v3;
      v20 = v4;
      v21 = *(v5 + 8);
      v21(v8, v20);
      v22 = sub_100001ED8(v17, v19, &v32);

      v23 = v27;
      *(v27 + 1) = v22;
      v13 = v21;
      v4 = v20;
      _os_log_impl(&_mh_execute_header, v14, v26, "No bundle identifier for effective allowed client: %{public}s", v23, 0xCu);
      sub_10000210C(v29);

      (*(v31 + 8))(v28, v30);
    }

    else
    {

      v13 = *(v5 + 8);
      v13(v8, v4);
      (*(v31 + 8))(v3, v30);
    }

    sub_10005BA30();
    swift_allocError();
    swift_willThrow();
    v13(v10, v4);
  }

  return v13;
}

void *sub_1000577B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100057890(a1, a2, a3, *v3, &qword_10007BAD0, &qword_1000672D0, &qword_10007BAD8, &qword_1000672D8);
  *v3 = result;
  return result;
}

void *sub_1000577F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100057890(a1, a2, a3, *v3, &qword_10007BAC0, &qword_100067208, &qword_10007B258, &qword_100067210);
  *v3 = result;
  return result;
}

char *sub_100057830(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000579D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100057850(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100057AE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100057870(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100057BF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100057890(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000637C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000637C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1000579D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&qword_10007B5C0, &unk_100066F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100057AE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&unk_10007B220, &unk_100066C50);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100057BF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&qword_10007B1E8, &qword_100066C18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_100057D10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100058D18(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100057D7C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100057D7C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10005802C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100057E74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100057E74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 40 * a3 - 40;
    v5 = result - a3;
LABEL_6:
    v20 = v4;
    v21 = a3;
    v19 = v5;
    while (1)
    {
      v6 = v4 + 40;
      v7 = String.lowercased()();
      v8 = String.lowercased()();
      if (v7._countAndFlagsBits == v8._countAndFlagsBits && v7._object == v8._object)
      {

LABEL_5:
        a3 = v21 + 1;
        v4 = v20 + 40;
        v5 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v11 = *(v4 + 40);
      v12 = *(v4 + 56);
      v13 = *(v4 + 64);
      v14 = *(v4 + 72);
      v15 = *(v4 + 16);
      *v6 = *v4;
      *(v4 + 56) = v15;
      v16 = *(v4 + 32);
      *v4 = v11;
      *(v4 + 16) = v12;
      *(v4 + 24) = v13;
      *(v4 + 32) = v14;
      v4 -= 40;
      *(v6 + 32) = v16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10005802C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v104 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_103:
    object = *v104;
    if (!*v104)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_105:
      v99 = *(v7 + 2);
      if (v99 >= 2)
      {
        while (*a3)
        {
          v100 = *&v7[16 * v99];
          v101 = *&v7[16 * v99 + 24];
          sub_100058878((*a3 + 40 * v100), (*a3 + 40 * *&v7[16 * v99 + 16]), *a3 + 40 * v101, object);
          if (v115)
          {
          }

          if (v101 < v100)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_100058CF0(v7);
          }

          if (v99 - 2 >= *(v7 + 2))
          {
            goto LABEL_129;
          }

          v102 = &v7[16 * v99];
          *v102 = v100;
          *(v102 + 1) = v101;
          result = sub_100058C64(v99 - 1);
          v99 = *(v7 + 2);
          if (v99 <= 1)
          {
          }
        }

        goto LABEL_139;
      }
    }

LABEL_135:
    result = sub_100058CF0(v7);
    v7 = result;
    goto LABEL_105;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    v113 = v7;
    if (v6 < v5)
    {
      v111 = v5;
      v9 = *a3;
      v105 = v8;
      v10 = String.lowercased()();
      v11 = String.lowercased()();
      object = v11._object;
      if (v10._countAndFlagsBits == v11._countAndFlagsBits && v10._object == v11._object)
      {
        v116 = 0;
      }

      else
      {
        v116 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v13 = 0;
      v14 = v8 + 2;
      v109 = 40 * v8;
      v15 = v9 + 40 * v8 + 80;
      v16 = v6;
      do
      {
        v18 = v14;
        v19 = v16;
        v20 = v13;
        if (v14 >= v111)
        {
          break;
        }

        v118 = v14;
        v21 = String.lowercased()();
        v22 = String.lowercased()();
        object = v22._object;
        v23 = v21._countAndFlagsBits == v22._countAndFlagsBits && v21._object == v22._object;
        v17 = v23 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        v18 = v118;
        v14 = (v118 + 1);
        v15 += 40;
        v16 = v19 + 1;
        v13 = v20 + 40;
        v7 = v113;
      }

      while (((v116 ^ v17) & 1) == 0);
      if (v116)
      {
        v24 = v105;
        if (v18 < v105)
        {
          goto LABEL_132;
        }

        if (v105 >= v18)
        {
          v6 = v18;
          v8 = v105;
          goto LABEL_31;
        }

        v25 = 0;
        do
        {
          if (v24 != v19)
          {
            if (!*a3)
            {
              goto LABEL_138;
            }

            v27 = *a3 + v109;
            v28 = v27 + v25;
            v29 = *(v27 + v25);
            v30 = v27 + v20;
            v31 = *(v28 + 16);
            v32 = *(v28 + 24);
            v33 = *(v28 + 32);
            v34 = *(v30 + 72);
            v35 = *(v30 + 56);
            *v28 = *(v30 + 40);
            *(v28 + 16) = v35;
            *(v28 + 32) = v34;
            *(v30 + 40) = v29;
            *(v30 + 56) = v31;
            *(v30 + 64) = v32;
            *(v30 + 72) = v33;
          }

          ++v24;
          v20 -= 40;
          v25 += 40;
        }

        while (v24 < v19--);
      }

      v6 = v18;
      v8 = v105;
    }

LABEL_31:
    v36 = a3[1];
    if (v6 < v36)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_131;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v6 < v8)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000263EC(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v53 = *(v7 + 2);
    v52 = *(v7 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      result = sub_1000263EC((v52 > 1), v53 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v54;
    v55 = &v7[16 * v53];
    *(v55 + 4) = v8;
    *(v55 + 5) = v6;
    v56 = *v104;
    if (!*v104)
    {
      goto LABEL_140;
    }

    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v58 = *(v7 + 4);
          v59 = *(v7 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_72:
          if (v61)
          {
            goto LABEL_119;
          }

          v74 = &v7[16 * v54];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_122;
          }

          v80 = &v7[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_126;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v54 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v84 = &v7[16 * v54];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_86:
        if (v79)
        {
          goto LABEL_121;
        }

        v87 = &v7[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_124;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_93:
        v95 = v57 - 1;
        if (v57 - 1 >= v54)
        {
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
LABEL_122:
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

        if (!*a3)
        {
          goto LABEL_137;
        }

        object = v6;
        v96 = *&v7[16 * v95 + 32];
        v97 = *&v7[16 * v57 + 40];
        sub_100058878((*a3 + 40 * v96), (*a3 + 40 * *&v7[16 * v57 + 32]), *a3 + 40 * v97, v56);
        if (v115)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100058CF0(v7);
        }

        if (v95 >= *(v7 + 2))
        {
          goto LABEL_116;
        }

        v98 = &v7[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        result = sub_100058C64(v57);
        v54 = *(v7 + 2);
        v6 = object;
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v7[16 * v54 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_117;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_118;
      }

      v69 = &v7[16 * v54];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_120;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_123;
      }

      if (v73 >= v65)
      {
        v91 = &v7[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_127;
        }

        if (v60 < v94)
        {
          v57 = v54 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_103;
    }
  }

  v37 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_133;
  }

  if (v37 >= v36)
  {
    v37 = a3[1];
  }

  if (v37 < v8)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v6 == v37)
  {
    goto LABEL_52;
  }

  v117 = *a3;
  v38 = *a3 + 40 * v6 - 40;
  v106 = v8;
  v107 = v37;
  v39 = v8 - v6;
LABEL_42:
  v110 = v38;
  v112 = v6;
  v108 = v39;
  v40 = v39;
  while (1)
  {
    v119 = v40;
    v41 = v38 + 40;
    v42 = String.lowercased()();
    object = v42._countAndFlagsBits;
    v43 = String.lowercased()();
    if (v42._countAndFlagsBits == v43._countAndFlagsBits && v42._object == v43._object)
    {

LABEL_41:
      v6 = v112 + 1;
      v38 = v110 + 40;
      v39 = v108 - 1;
      if (v112 + 1 == v107)
      {
        v6 = v107;
        v7 = v113;
        v8 = v106;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v45 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v117)
    {
      break;
    }

    v46 = *(v38 + 40);
    v47 = *(v38 + 56);
    v48 = *(v38 + 64);
    v49 = *(v38 + 72);
    v50 = *(v38 + 16);
    *v41 = *v38;
    *(v38 + 56) = v50;
    v51 = *(v38 + 32);
    *v38 = v46;
    *(v38 + 16) = v47;
    *(v38 + 24) = v48;
    *(v38 + 32) = v49;
    v38 -= 40;
    *(v41 + 32) = v51;
    v40 = v119 + 1;
    if (v119 == -1)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_100058878(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = (__src - __dst) / 40;
  v9 = a3 - __src;
  v10 = (a3 - __src) / 40;
  if (v8 >= v10)
  {
    v21 = 40 * v10;
    if (a4 != __src || &__src[v21] <= a4)
    {
      v22 = a4;
      memmove(a4, __src, 40 * v10);
      a4 = v22;
    }

    v36 = a4;
    v13 = &a4[v21];
    if (v9 >= 40)
    {
      v12 = a4;
      if (v5 <= v6)
      {
        goto LABEL_44;
      }

LABEL_26:
      v35 = v5 - 40;
      v4 -= 40;
      v23 = v13;
      v40 = v5;
      do
      {
        v38 = v13;
        v23 -= 40;
        v24 = String.lowercased()();
        v25 = String.lowercased()();
        if (v24._countAndFlagsBits == v25._countAndFlagsBits && v24._object == v25._object)
        {
          v27 = 0;
        }

        else
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v28 = v4 + 40;
        if (v27)
        {
          v13 = v38;
          if (v28 != v40)
          {
            v31 = *v35;
            v32 = *(v35 + 1);
            *(v4 + 32) = *(v35 + 4);
            *v4 = v31;
            *(v4 + 16) = v32;
          }

          v12 = v36;
          if (v38 <= v36 || (v5 = v35, v35 <= v6))
          {
            v5 = v35;
            goto LABEL_44;
          }

          goto LABEL_26;
        }

        v5 = v40;
        if (v28 != v38)
        {
          v29 = *v23;
          v30 = *(v23 + 1);
          *(v4 + 32) = *(v23 + 4);
          *v4 = v29;
          *(v4 + 16) = v30;
        }

        v4 -= 40;
        v13 = v23;
      }

      while (v23 > v36);
      v13 = v23;
    }

    v12 = v36;
    goto LABEL_44;
  }

  v11 = 40 * v8;
  v12 = a4;
  if (a4 != __dst || &__dst[v11] <= a4)
  {
    memmove(a4, __dst, v11);
  }

  v13 = &v12[v11];
  if (v7 >= 40 && v5 < v4)
  {
    v37 = &v12[v11];
    while (1)
    {
      v39 = v5;
      v14 = String.lowercased()();
      v15 = String.lowercased()();
      v16 = v14._countAndFlagsBits == v15._countAndFlagsBits && v14._object == v15._object;
      if (v16)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_16;
      }

      v18 = v5;
      v5 += 40;
      v13 = v37;
      if (v6 != v39)
      {
        goto LABEL_17;
      }

LABEL_18:
      v6 += 40;
      if (v12 >= v13 || v5 >= v4)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    v18 = v12;
    v16 = v6 == v12;
    v12 += 40;
    v13 = v37;
    if (v16)
    {
      goto LABEL_18;
    }

LABEL_17:
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v6 + 4) = *(v18 + 4);
    *v6 = v19;
    *(v6 + 1) = v20;
    goto LABEL_18;
  }

LABEL_20:
  v5 = v6;
LABEL_44:
  v33 = 40 * ((v13 - v12) / 40);
  if (v5 != v12 || v5 >= &v12[v33])
  {
    memmove(v5, v12, v33);
  }

  return 1;
}

uint64_t sub_100058C64(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100058CF0(v3);
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

char *sub_100058D2C(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v51 = a1;
  v3 = sub_10000637C(&qword_10007BA10, &qword_100067178);
  __chkstk_darwin(v3 - 8);
  v5 = &v47 - v4;
  v62 = sub_10000637C(&qword_10007BA18, &unk_100067180);
  v6 = *(v62 - 8);
  __chkstk_darwin(v62 - 8);
  v8 = &v47 - v7;
  v9 = sub_10000637C(&qword_10007AC78, &unk_100067310);
  __chkstk_darwin(v9 - 8);
  v68 = &v47 - v10;
  v70 = sub_10000637C(&qword_10007AC70, &unk_100066580);
  v11 = *(v70 - 8);
  __chkstk_darwin(v70);
  v61 = &v47 - v12;
  v13 = sub_10000637C(&qword_10007B9F8, &qword_100067320);
  v14 = sub_10005BCF8(&qword_10007BA20, &qword_10007B9F8, &qword_100067320, sub_10005BA84);
  v57 = v13;
  v58 = v2;
  v56 = v14;
  v15 = dispatch thunk of SettingMetadataProtocol.name.getter();
  v17 = sub_10003CADC(v15, v16);

  v19 = 0;
  v21 = v17 + 8;
  v20 = v17[8];
  v69 = v17;
  v22 = 1 << *(v17 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v67 = (v11 + 48);
  v54 = (v11 + 32);
  v59 = (v6 + 56);
  v60 = (v11 + 8);
  v49 = (v6 + 32);
  v53 = _swiftEmptyArrayStorage;
  v48 = (v6 + 8);
  v50 = v8;
  v55 = v5;
  while (1)
  {
    v26 = v19;
    if (!v24)
    {
      break;
    }

LABEL_9:
    v27 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v28 = v27 | (v19 << 6);
    v29 = v69[7];
    v30 = v69[6] + 40 * v28;
    v31 = *(v30 + 8);
    v66 = *v30;
    v32 = *(v30 + 24);
    v65 = *(v30 + 16);
    v64 = *(v30 + 32);
    v33 = *(v29 + 8 * v28);
    type metadata accessor for WebDomain();
    sub_10005BCB0(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);

    v34 = v33;
    v35 = v68;
    static ShieldSettings.EffectiveActivityCategoryPolicy<>.value(from:)();
    v36 = v70;
    if ((*v67)(v35, 1, v70) == 1)
    {

      result = sub_100008630(v35, &qword_10007AC78, &unk_100067310);
    }

    else
    {
      v63 = v31;
      v37 = v61;
      (*v54)(v61, v35, v36);
      dispatch thunk of SettingMetadataProtocol.combineOperator.getter();
      sub_10000637C(&qword_10007BA30, &qword_100067190);
      v38 = v36;
      v39 = v55;
      v40 = v62;
      if (swift_dynamicCast())
      {
        (*v59)(v39, 0, 1, v40);
        v41 = v50;
        (*v49)(v50, v39, v40);
        if (ActivityCategoryPolicyCombineOperator.currentValue(_:restricts:including:)())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_100026090(0, *(v53 + 2) + 1, 1, v53);
          }

          v43 = *(v53 + 2);
          v42 = *(v53 + 3);
          if (v43 >= v42 >> 1)
          {
            v53 = sub_100026090((v42 > 1), v43 + 1, 1, v53);
          }

          (*v48)(v41, v62);
          result = (*v60)(v61, v70);
          v44 = v53;
          *(v53 + 2) = v43 + 1;
          v45 = &v44[40 * v43];
          v46 = v63;
          *(v45 + 4) = v66;
          *(v45 + 5) = v46;
          *(v45 + 6) = v65;
          *(v45 + 7) = v32;
          v45[64] = v64;
        }

        else
        {

          (*v48)(v41, v40);
          result = (*v60)(v37, v70);
        }
      }

      else
      {
        (*v60)(v37, v38);

        (*v59)(v39, 1, 1, v40);
        result = sub_100008630(v39, &qword_10007BA10, &qword_100067178);
      }
    }
  }

  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v19 >= v25)
    {

      return v53;
    }

    v24 = v21[v19];
    ++v26;
    if (v24)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100059418(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, const void *a7)
{
  v47 = a1;
  v49 = sub_10000637C(&qword_10007ACF8, &qword_1000665F0);
  v48 = *(v49 - 8);
  v13 = __chkstk_darwin(v49);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v43 - v16;
  v50 = swift_allocObject();
  *(v50 + 16) = a7;
  v58 = 0;
  _Block_copy(a7);
  sub_100055B50(a4, a5, &v58, v59);
  v43[1] = a2;
  v46 = a7;
  v43[2] = a4;
  v43[3] = a3;
  v43[4] = a5;
  v44 = v17;
  v45 = v15;
  v18 = a6;
  v19 = sub_100055A58();
  v21 = v20;
  v23 = v59[0];
  v22 = v59[1];
  v24 = *(v20 + 8);
  v57[3] = v19;
  v57[4] = v20;
  sub_1000067BC(v57);

  v24(v23, v22, v19, v21);
  sub_100008578((v18 + 120), *(v18 + 144));
  v25 = swift_allocObject();
  *(v25 + 16) = sub_100031528;
  *(v25 + 24) = v50;

  v26 = sub_1000248D4(v57, sub_10005BEA0, v25);
  v28 = v27;
  v43[0] = v26;

  sub_100055A80(&aBlock);
  type metadata accessor for TokenEncoder();
  swift_allocObject();
  TokenEncoder.init(teamIdentifier:keyRetriever:)();

  if (v58)
  {
    v29 = v44;
    dispatch thunk of TokenEncoder.encode(categoryIdentifier:)();
    v30 = v49;
    v31 = v48;
    v32 = v47;
    v33 = Token.data.getter();
    v35 = v34;
    v36.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v33, v35);
    v55 = sub_100031528;
    v56 = v50;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v53 = sub_100055788;
    v54 = &unk_100077060;
    v37 = _Block_copy(&aBlock);

    [v43[0] handleWithAction:v32 categoryTokenData:v36.super.isa replyHandler:v37];
  }

  else
  {
    v29 = v45;
    dispatch thunk of TokenEncoder.encode(bundleIdentifier:)();
    v30 = v49;
    v31 = v48;
    v38 = v47;
    v40 = Token.data.getter();
    v42 = v41;
    v36.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v40, v42);
    v55 = sub_100031528;
    v56 = v50;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v53 = sub_100055788;
    v54 = &unk_100077038;
    v37 = _Block_copy(&aBlock);

    [v43[0] handleWithAction:v38 applicationTokenData:v36.super.isa replyHandler:v37];
  }

  _Block_release(v37);

  (*(v31 + 8))(v29, v30);
  if (v28)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10000210C(v57);
}