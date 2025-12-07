Swift::Int sub_10002BAEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1000F5104(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      result = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

unint64_t sub_10002BD60(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1000060C8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void sub_10002BE58(void *a1, void **a2, uint64_t *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v16, v17).n128_u64[0];
  v20 = &v95 - v19;
  v21 = *a2;
  v22 = [v21 parentList];
  if (v22)
  {
    v99 = v3;
    v23 = v22;
    if ([v23 isDeleted])
    {

      if (qword_100936518 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100006654(v24, qword_10094C3E8);
      v25 = v21;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v98 = v27;
        v28 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v100 = v96;
        v97 = v28;
        *v28 = 136315138;
        v29 = [v25 identifier];
        if (v29)
        {
          v30 = v29;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v8 + 56))(v15, 0, 1, v7);
        }

        else
        {
          (*(v8 + 56))(v15, 1, 1, v7);
        }

        sub_100100FB4(v15, v20);
        if ((*(v8 + 48))(v20, 1, v7))
        {
          sub_1000050A4(v20, &unk_100939D90, "8\n\r");
          v73 = 0xE300000000000000;
          v74 = 7104878;
        }

        else
        {
          (*(v8 + 16))(v11, v20, v7);
          sub_1000050A4(v20, &unk_100939D90, "8\n\r");
          v75 = UUID.uuidString.getter();
          v73 = v76;
          (*(v8 + 8))(v11, v7);
          v74 = v75;
        }

        v77 = sub_10000668C(v74, v73, &v100);
        v73, v78, v79, v80, v81, v82, v83, v84;
        v85 = v97;
        *(v97 + 1) = v77;
        _os_log_impl(&_mh_execute_header, v26, v98, "REMCDList's parentList is unexpectedly deleted {identifier: %s}", v85, 0xCu);
        sub_10000607C(v96);
      }
    }

    else
    {
      v31 = [v23 remObjectID];
      v100 = 0;
      v101 = 0xE000000000000000;
      v102 = v31;
      _StringGuts.grow(_:)(47);
      v101, v32, v33, v34, v35, v36, v37, v38;
      v100 = 0xD00000000000002CLL;
      v101 = 0x80000001007FC270;
      v39 = [v23 objectID];

      v40 = [v39 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44._countAndFlagsBits = v41;
      v44._object = v43;
      String.append(_:)(v44);
      v43, v45, v46, v47, v48, v49, v50, v51;

      v52._countAndFlagsBits = 125;
      v52._object = 0xE100000000000000;
      String.append(_:)(v52);
      v53 = v101;
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v54 = v99;
      Optional.tryUnwrap(_:file:line:)();
      if (v54)
      {

        v53, v62, v63, v64, v65, v66, v67, v68;
        return;
      }

      v53, v55, v56, v57, v58, v59, v60, v61;

      v69 = v103;
      v70 = sub_100353948(v103, *a3);
      if (v70)
      {
        v71 = v70;
      }

      else
      {
        v86 = sub_100027664(v23);
        v71 = v86;
        v87 = *a3;
        if ((*a3 & 0xC000000000000001) != 0)
        {
          if (v87 < 0)
          {
            v88 = *a3;
          }

          else
          {
            v88 = v87 & 0xFFFFFFFFFFFFFF8;
          }

          v89 = v86;
          v90 = v69;
          v91 = __CocoaDictionary.count.getter();
          if (__OFADD__(v91, 1))
          {
            __break(1u);
            return;
          }

          *a3 = sub_10021E744(v88, v91 + 1);
        }

        else
        {
          v92 = v86;
          v93 = v69;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = *a3;
        sub_1002CA950(v71, v69, isUniquelyReferenced_nonNull_native);
        *a3 = v100;

        v70 = 0;
      }

      v72 = v70;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }
}

id sub_10002C4A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 remObjectID];
  *a2 = result;
  return result;
}

unint64_t sub_10002C4E4(unint64_t a1, unint64_t *a2, void *a3)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = _swiftEmptyDictionarySingleton;
    goto LABEL_6;
  }

  if (!__CocoaDictionary.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1000F5104(&unk_100943D30, &unk_1007AAB90);
  v5 = static _DictionaryStorage.allocate(capacity:)();
LABEL_6:
  if (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr) != &type metadata for String)
  {
    if (v4)
    {
      v6 = __CocoaDictionary.makeIterator()();
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = v6 | 0x8000000000000000;
    }

    else
    {
      v16 = -1 << *(a1 + 32);
      v8 = ~v16;
      v7 = a1 + 64;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v9 = v18 & *(a1 + 64);
      v10 = a1;
    }

    v19 = (v8 + 64) >> 6;
    v20 = v5 + 8;

    v22 = 0;
    while (1)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        v33 = __CocoaDictionary.Iterator.next()();
        if (!v33 || (v35 = v34, *&v72[0] = v33, swift_dynamicCast(), *&v71[0] = v35, sub_1000060C8(0, a2, a3), swift_dynamicCast(), v31 = *&v73[0], v32 = *&v72[0], v25 = v22, v68 = v9, !*&v73[0]))
        {
LABEL_37:
          v43 = v10;
          goto LABEL_60;
        }
      }

      else
      {
        v24 = v9;
        v25 = v22;
        if (!v9)
        {
          v26 = v22;
          while (1)
          {
            v25 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v25 >= v19)
            {
              goto LABEL_37;
            }

            v24 = *(v7 + 8 * v25);
            ++v26;
            if (v24)
            {
              goto LABEL_24;
            }
          }

LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

LABEL_24:
        v68 = (v24 - 1) & v24;
        v27 = (v25 << 9) | (8 * __clz(__rbit64(v24)));
        v28 = *(*(v10 + 48) + v27);
        v29 = v10;
        v30 = *(*(v10 + 56) + v27);
        v31 = v28;
        v32 = v30;
        v10 = v29;
        if (!v31)
        {
          goto LABEL_37;
        }
      }

      *&v71[0] = v32;
      sub_1000060C8(0, a2, a3);
      swift_dynamicCast();
      sub_100005EE0((v72 + 8), (v73 + 8));
      sub_100005EE0((v73 + 8), v72);
      result = NSObject._rawHashValue(seed:)(v5[5]);
      v36 = -1 << *(v5 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~v20[v37 >> 6]) != 0)
      {
        v23 = __clz(__rbit64((-1 << v37) & ~v20[v37 >> 6])) | v37 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        do
        {
          if (++v38 == v40 && (v39 & 1) != 0)
          {
            __break(1u);
            goto LABEL_61;
          }

          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = v20[v38];
        }

        while (v42 == -1);
        v23 = __clz(__rbit64(~v42)) + (v38 << 6);
      }

      *(v20 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(v5[6] + 8 * v23) = v31;
      result = sub_100005EE0(v72, (v5[7] + 32 * v23));
      ++v5[2];
      v22 = v25;
      v9 = v68;
    }
  }

  if (v4)
  {
    v11 = __CocoaDictionary.makeIterator()();
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v11 | 0x8000000000000000;
  }

  else
  {
    v44 = -1 << *(a1 + 32);
    v13 = ~v44;
    v12 = a1 + 64;
    v45 = -v44;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v14 = v46 & *(a1 + 64);
    v15 = a1;
  }

  v47 = (v13 + 64) >> 6;

  v48 = 0;
  while ((v15 & 0x8000000000000000) != 0)
  {
    v61 = __CocoaDictionary.Iterator.next()();
    if (!v61)
    {
      goto LABEL_59;
    }

    v63 = v62;
    *&v72[0] = v61;
    swift_dynamicCast();
    *&v71[0] = v63;
    sub_1000060C8(0, a2, a3);
    swift_dynamicCast();
    v59 = *&v73[0];
    v54 = v48;
    v56 = v14;
    if (!*&v73[0])
    {
      goto LABEL_59;
    }

LABEL_55:
    sub_1000060C8(0, a2, a3);
    swift_dynamicCast();
    sub_100005EE0((v72 + 8), (v73 + 8));
    sub_100005EE0((v73 + 8), v71);
    sub_100005EE0(v71, v73);
    result = sub_10002B924(v59);
    if (v64)
    {
      v49 = v5[6];
      v50 = *(v49 + 8 * result);
      *(v49 + 8 * result) = v59;
      v51 = result;

      v52 = (v5[7] + 32 * v51);
      sub_10000607C(v52);
      result = sub_100005EE0(v73, v52);
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_63;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v59;
      result = sub_100005EE0(v73, (v5[7] + 32 * result));
      v65 = v5[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
LABEL_64:
        __break(1u);
        return result;
      }

      v5[2] = v67;
    }

    v48 = v54;
    v14 = v56;
  }

  v53 = v14;
  v54 = v48;
  if (v14)
  {
LABEL_51:
    v56 = (v53 - 1) & v53;
    v57 = (v54 << 9) | (8 * __clz(__rbit64(v53)));
    v58 = *(*(v15 + 56) + v57);
    v59 = *(*(v15 + 48) + v57);
    v60 = v58;
    if (!v59)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

  v55 = v48;
  while (1)
  {
    v54 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      goto LABEL_62;
    }

    if (v54 >= v47)
    {
      break;
    }

    v53 = *(v12 + 8 * v54);
    ++v55;
    if (v53)
    {
      goto LABEL_51;
    }
  }

LABEL_59:
  v43 = v15;
LABEL_60:
  sub_10001B860(v43);

  return v5;
}

id sub_10002CB0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_100005EF0(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_100005EE0(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_1000050A4(&v18, &qword_10093D5E8, &qword_10079B2B0);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_10002CCBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_100005EF0((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

uint64_t sub_10002CD0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000F5104(&unk_100943D30, &unk_1007AAB90);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_100005EE0(v21, v32);
      }

      else
      {
        sub_100005EF0(v21, v32);
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_100005EE0(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_10002D468(unint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3)
{
  v7 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v7, v8);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v83 - v13;
  if (a1)
  {
    v91[0] = 0;
    v15 = a1;
    v16 = [v15 remObjectIDWithError:v91];
    v17 = v91[0];
    if (!v16)
    {
      v43 = v91[0];

      _convertNSErrorToError(_:)();
      swift_willThrow();
      goto LABEL_28;
    }

    v86 = a2;
    v83 = a1;
    *v14 = v16;
    v18 = v16;
    swift_storeEnumTagMultiPayload();
    v19 = v17;
    v89 = v18;
    v20 = sub_10002DDAC();
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1007953F0;
    *(v21 + 32) = v15;
    v91[0] = v21;
    sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
    a1 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    sub_10000CB90(&qword_100946C40, &qword_10093F5C0, &qword_1007A1FB0);
    sub_1000254F4();
    v22 = Sequence.compactMapToSet<A>(_:)();
    v85 = v3;
    a2 = sub_10002595C(v22);
    v22, v23, v24, v25, v26, v27, v28, v29;
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v30 = [objc_allocWithZone(NSFetchRequest) init];
    v31 = [swift_getObjCClassFromMetadata() entity];
    [v30 setEntity:v31];

    isa = Array._bridgeToObjectiveC()().super.isa;
    [v30 setAffectedStores:isa];

    [v30 setPredicate:v20];
    v21, v33, v34, v35, v36, v37, v38, v39;

    v10 = v14;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v40 = sub_10002DDAC();
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v30 = [objc_allocWithZone(NSFetchRequest) init];
    v41 = [swift_getObjCClassFromMetadata() entity];
    [v30 setEntity:v41];

    v83 = 0;
    v85 = v3;
    v86 = a2;
    if (a3)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v42.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v42.super.isa = 0;
    }

    [v30 setAffectedStores:{v42.super.isa, v83}];

    [v30 setPredicate:v40];
  }

  sub_100025374(v10, _s10PredicatesOMa_3);
  v44 = qword_100936770;
  v15 = v30;
  if (v44 != -1)
  {
LABEL_36:
    swift_once();
  }

  v45 = qword_1009752D8;
  if (qword_1009752D8 >> 62)
  {
    v80 = qword_1009752D8;
    v81 = _CocoaArrayWrapper.endIndex.getter();
    v45 = v80;
    v46 = v81;
  }

  else
  {
    v46 = *((qword_1009752D8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = &_swiftEmptyArrayStorage;
  v84 = v15;
  if (!v46)
  {
LABEL_25:
    v58 = Array._bridgeToObjectiveC()().super.isa;
    v47, v59, v60, v61, v62, v63, v64, v65;
    [v15 setRelationshipKeyPathsForPrefetching:v58];

    if (qword_100936778 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v66 = Array._bridgeToObjectiveC()().super.isa;
    [v15 setSortDescriptors:v66];

    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v67 = v85;
    a2 = NSManagedObjectContext.fetch<A>(_:)();
    a1 = v67;

    if (!v67)
    {
      if (qword_100936098 == -1)
      {
LABEL_30:
        v68 = type metadata accessor for Logger();
        v69 = sub_100006654(v68, qword_100946390);
        v89 = &v83;
        __chkstk_darwin(v69, v70);
        v91[0] = a2;
        __chkstk_darwin(v71, v72);
        sub_1000F5104(&qword_1009405B0, &unk_1007B4EC0);
        sub_10000CB90(&qword_1009405B8, &qword_1009405B0, &unk_1007B4EC0);
        Sequence.map<A>(skippingError:_:)();
        if (a1)
        {
        }

        a2, v73, v74, v75, v76, v77, v78, v79;

        return;
      }

LABEL_39:
      swift_once();
      goto LABEL_30;
    }

LABEL_28:

    return;
  }

  v48 = v45;
  v92 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, v46 & ~(v46 >> 63), 0);
  if (v46 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  a1 = 0;
  v47 = v92;
  v49 = v48;
  v88 = v48;
  v89 = (v48 & 0xC000000000000001);
  v87 = v48 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v50 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v89)
    {
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (a1 >= *(v87 + 16))
      {
        goto LABEL_35;
      }

      v51 = *(v49 + 8 * a1 + 32);
    }

    v52 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v53)
    {
      break;
    }

    v54 = v52;
    v55 = v53;

    v92 = v47;
    v15 = *v47->clientIdentity;
    v56 = *&v47->clientIdentity[8];
    a2 = (v15 + 1);
    if (v15 >= v56 >> 1)
    {
      sub_100026EF4((v56 > 1), v15 + 1, 1);
      v47 = v92;
    }

    *v47->clientIdentity = a2;
    v57 = v47 + 16 * v15;
    *(v57 + 4) = v54;
    *(v57 + 5) = v55;
    ++a1;
    v49 = v88;
    if (v50 == v46)
    {
      v15 = v84;
      goto LABEL_25;
    }
  }

  v91[0] = 0;
  v91[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v82._object = 0x80000001007EC120;
  v82._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v82);
  v90 = v51;
  sub_1000F5104(&qword_100946530, &qword_10079B260);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10002DDAC()
{
  v1 = type metadata accessor for UUID();
  v264 = *(v1 - 8);
  __chkstk_darwin(v1, v2);
  v4 = &v216[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v250 = type metadata accessor for REMStringMatchingStyle();
  v5 = *(v250 - 8);
  __chkstk_darwin(v250, v6);
  v248 = &v216[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8, v9);
  v249 = &v216[-v10];
  v11 = type metadata accessor for REMSearchCriterion();
  v261 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v259 = &v216[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14, v15);
  v17 = &v216[-v16];
  __chkstk_darwin(v18, v19);
  v263 = &v216[-v20];
  __chkstk_darwin(v21, v22);
  v258 = &v216[-v23];
  __chkstk_darwin(v24, v25);
  v256 = &v216[-v26];
  v27 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v266 = *(v27 - 8);
  __chkstk_darwin(v27 - 8, v28);
  v30 = &v216[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31, v32);
  v34 = &v216[-v33];
  v35 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v35, v36);
  v38 = &v216[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v268 = &_swiftEmptyArrayStorage;
  sub_10002FBFC(v0, v38);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v70 = *v38;
      v255 = *(*v38 + 16);
      if (!v255)
      {
        v70, v39, v40, v41, v42, v43, v44, v45;
LABEL_101:
        v47 = 0;
        goto LABEL_102;
      }

      v244 = v17;
      v265 = v1;
      v71 = 0;
      v238 = 0;
      v254 = enum case for REMSearchCriterion.itemTypes(_:);
      v246 = enum case for REMSearchCriterion.objectID(_:);
      v237 = (v5 + 8);
      v236 = (v5 + 32);
      v235 = (v5 + 16);
      v234 = (v5 + 88);
      v72 = (v264 + 56);
      *&v46 = 136315138;
      v243 = v46;
      v242 = xmmword_100791340;
      v241 = enum case for REMSearchCriterion.accountID(_:);
      v240 = enum case for REMSearchCriterion.listID(_:);
      v239 = enum case for REMSearchCriterion.textualField(_:);
      v233 = enum case for REMSearchCriterion.displayName(_:);
      v231 = enum case for REMSearchCriterion.isCompleted(_:);
      v229 = enum case for REMSearchCriterion.completionDate(_:);
      v227 = enum case for REMSearchCriterion.hasLocation(_:);
      v226 = enum case for REMSearchCriterion.location(_:);
      v225 = enum case for REMSearchCriterion.dueDate(_:);
      v224 = enum case for REMSearchCriterion.hasDueDate(_:);
      v223 = enum case for REMSearchCriterion.modifiedDate(_:);
      v222 = enum case for REMSearchCriterion.creationDate(_:);
      v221 = enum case for REMSearchCriterion.isRecurrent(_:);
      v220 = enum case for REMSearchCriterion.isFlagged(_:);
      v219 = enum case for REMSearchCriterion.spotlightItemIdentifier(_:);
      v218 = enum case for REMSearchCriterion.daCalendarItemUniqueIdentifier(_:);
      v217 = enum case for REMSearchCriterion.listType(_:);
      v232 = enum case for REMStringMatchingStyle.exact(_:);
      v230 = enum case for REMStringMatchingStyle.prefix(_:);
      v228 = enum case for REMStringMatchingStyle.word(_:);
      v253 = v261 + 88;
      v260 = (v261 + 8);
      v245 = (v261 + 96);
      v257 = v11;
      v74 = v258;
      v73 = v259;
      v47 = v263;
      v75 = v256;
      v262 = v261 + 16;
      v251 = v30;
      v252 = v70;
      v247 = (v264 + 56);
      break;
    case 3u:
      v66 = v1;
      v49 = *v38;
      v47 = REMSmartListTypeCustom;
      KeyPath = swift_getKeyPath();
      v68 = v47;
      sub_1000301CC(KeyPath);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v268->clientIdentity >= *&v268->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v50 = swift_getKeyPath();
      v69 = [v49 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v264 + 56))(v34, 0, 1, v66);
      goto LABEL_17;
    case 4u:
      v204 = *v38;
      v205 = v38[8];
      v47 = REMSmartListTypeCustom;
      v206 = swift_getKeyPath();
      v207 = v47;
      v208 = v1;
      v209 = [v204 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v264 + 56))(v34, 0, 1, v208);
      sub_1000301FC(v206, v34);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v268->clientIdentity >= *&v268->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if ((v205 & 1) == 0)
      {
        v210 = swift_getKeyPath();
        sub_1000301CC(v210);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*v268->clientIdentity >= *&v268->clientIdentity[8] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      goto LABEL_102;
    case 5u:
      v56 = *v38;
      v57 = swift_getKeyPath();
      v58 = v1;
      v59 = [v56 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v264 + 56))(v34, 0, 1, v58);
      sub_1000301FC(v57, v34);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v268->clientIdentity >= *&v268->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v60 = swift_getKeyPath();
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10003AD58(v60, v61, v62);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v268->clientIdentity >= *&v268->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v63 = swift_getKeyPath();
      sub_10003AF38(v63);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v268->clientIdentity >= *&v268->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_101;
    case 6u:
      v200 = v264;
      (*(v264 + 32))(v4, v38, v1);
      v47 = REMSmartListTypeCustom;
      v201 = v1;
      v202 = swift_getKeyPath();
      (*(v200 + 16))(v34, v4, v201);
      (*(v200 + 56))(v34, 0, 1, v201);
      v203 = v47;
      sub_1000301FC(v202, v34);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v268->clientIdentity >= *&v268->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v200 + 8))(v4, v201);
      goto LABEL_102;
    case 7u:
      v49 = *v38;
      v47 = REMSmartListTypeCustom;
      v50 = swift_getKeyPath();
      v51 = v47;
      v52 = v1;
      v53 = [v49 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v264 + 56))(v34, 0, 1, v52);
      goto LABEL_17;
    case 8u:
    case 9u:
    case 0xBu:
    case 0xCu:
      goto LABEL_2;
    case 0xAu:
      v47 = REMSmartListTypeCustom;
      v54 = swift_getKeyPath();
      v55 = v47;
      sub_10003AF38(v54);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v268->clientIdentity < *&v268->clientIdentity[8] >> 1)
      {
        goto LABEL_5;
      }

      goto LABEL_111;
    default:
      v47 = *v38;
      v49 = *(v38 + 1);
      v50 = swift_getKeyPath();
      v64 = v47;
      v65 = [v49 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v264 + 56))(v34, 0, 1, v1);
LABEL_17:
      sub_1000301FC(v50, v34);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v268->clientIdentity >= *&v268->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_102;
  }

  while (1)
  {
    if (v71 >= *v70->clientIdentity)
    {
      __break(1u);
      goto LABEL_109;
    }

    v84 = v261;
    v85 = v70 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v86 = *(v261 + 72);
    v264 = v71;
    v87 = &v85[v86 * v71];
    v88 = *(v261 + 16);
    v88(v75, v87, v11);
    v88(v74, v75, v11);
    v89 = (*(v84 + 88))(v74, v11);
    if (v89 == v254)
    {
      (*v260)(v74, v11);
      goto LABEL_27;
    }

    if (v89 == v246)
    {
      break;
    }

    if (v89 == v241)
    {
      (*v260)(v74, v11);
LABEL_45:
      if (qword_100936768 != -1)
      {
        swift_once();
      }

      v131 = type metadata accessor for Logger();
      sub_100006654(v131, qword_100950B28);
      v88(v73, v75, v11);
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v267 = v135;
        *v134 = v243;
        v88(v244, v259, v11);
        v136 = String.init<A>(describing:)();
        v138 = v137;
        v139 = *v260;
        (*v260)(v259, v257);
        v140 = sub_10000668C(v136, v138, &v267);
        v138, v141, v142, v143, v144, v145, v146, v147;
        *(v134 + 4) = v140;
        _os_log_impl(&_mh_execute_header, v132, v133, "Dropping unsupported criterion for searching REMCDSmartList. {criterion: %s}", v134, 0xCu);
        sub_10000607C(v135);

        v74 = v258;
        v73 = v259;
        v148 = v263;

        v75 = v256;
        v139(v256, v257);
        v47 = v148;
        v11 = v257;
      }

      else
      {

        v151 = *v260;
        (*v260)(v73, v11);
        v75 = v256;
        v151(v256, v11);
      }

      v30 = v251;
      goto LABEL_23;
    }

    if (v89 == v240)
    {
      (*v245)(v74, v11);

      v149 = *(sub_1000F5104(&qword_100946020, &unk_1007A73E8) + 48);
      v150 = type metadata accessor for REMSearchCriterion.Inclusion();
      (*(*(v150 - 8) + 8))(v74 + v149, v150);
      goto LABEL_27;
    }

    if (v89 != v239)
    {
      if (v89 == v233)
      {
        (*v245)(v74, v11);
        *(v74 + 8), v171, v172, v173, v174, v175, v176, v177;
        v178 = sub_1000F5104(&qword_100945098, qword_1007B11A0);
        (*v237)(v74 + *(v178 + 48), v250);
        goto LABEL_45;
      }

      if (v89 == v231)
      {
        goto LABEL_27;
      }

      if (v89 != v229)
      {
        if (v89 == v227)
        {
          goto LABEL_27;
        }

        if (v89 == v226)
        {
          (*v245)(v74, v11);
          *(v74 + 8), v181, v182, v183, v184, v185, v186, v187;
          v188 = sub_1000F5104(&qword_100945098, qword_1007B11A0);
          (*v237)(v74 + *(v188 + 48), v250);
          goto LABEL_27;
        }

        if (v89 != v225)
        {
          if (v89 == v224)
          {
            goto LABEL_27;
          }

          if (v89 != v223 && v89 != v222)
          {
            if (v89 != v221 && v89 != v220)
            {
              if (v89 != v219 && v89 != v218 && v89 != v217)
              {
LABEL_112:
                _diagnoseUnexpectedEnumCase<A>(type:)();
                __break(1u);
                JUMPOUT(0x10002F924);
              }

              v11 = v257;
              v74 = v258;
              (*v260)(v258, v257);
              v73 = v259;
              v47 = v263;
              v75 = v256;
            }

            goto LABEL_27;
          }
        }
      }

      (*v245)(v74, v11);
      v180 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
      sub_1000050A4(v74 + *(v180 + 48), &unk_100938850, qword_100795AE0);
      sub_1000050A4(v74, &unk_100938850, qword_100795AE0);
LABEL_27:
      if (qword_100936768 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_100006654(v90, qword_100950B28);
      v88(v47, v75, v11);
      v91 = Logger.logObject.getter();
      v92 = v75;
      v93 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v91, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v267 = v95;
        *v94 = v243;
        v88(v244, v263, v11);
        v96 = String.init<A>(describing:)();
        v98 = v97;
        v99 = *v260;
        (*v260)(v263, v257);
        v100 = sub_10000668C(v96, v98, &v267);
        v98, v101, v102, v103, v104, v105, v106, v107;
        *(v94 + 4) = v100;
        _os_log_impl(&_mh_execute_header, v91, v93, "Dropping unsupported criterion for searching REMCDSmartList. {criterion: %s}", v94, 0xCu);
        sub_10000607C(v95);

        v74 = v258;
        v73 = v259;
        v47 = v263;

        v99(v92, v257);
        v72 = v247;
        v11 = v257;
        v75 = v92;
        v30 = v251;
      }

      else
      {

        v76 = *v260;
        (*v260)(v47, v11);
        v76(v92, v11);
        v75 = v92;
        v30 = v251;
        v72 = v247;
      }

      goto LABEL_23;
    }

    (*v245)(v74, v11);
    v152 = v74;
    v153 = *v74;
    v154 = *(v152 + 8);
    v155 = v152 + *(sub_1000F5104(&qword_100945098, qword_1007B11A0) + 48);
    v157 = v249;
    v156 = v250;
    (*v236)(v249, v155, v250);
    v158 = v248;
    (*v235)(v248, v157, v156);
    v159 = (*v234)(v158, v156);
    if (v159 == v232)
    {
      sub_1000F5104(&unk_100938E80, &unk_1007959D0);
      v160 = swift_allocObject();
      *(v160 + 16) = v242;
      *(v160 + 56) = &type metadata for String;
      *(v160 + 32) = 1701667182;
      *(v160 + 40) = 0xE400000000000000;
      *(v160 + 88) = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      *(v160 + 64) = v153;
      *(v160 + 72) = v154;
      v161 = String._bridgeToObjectiveC()();
      isa = Array._bridgeToObjectiveC()().super.isa;
      v160, v163, v164, v165, v166, v167, v168, v169;
      v170 = [objc_opt_self() predicateWithFormat:v161 argumentArray:isa];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v268->clientIdentity >= *&v268->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*v237)(v249, v250);
      (*v260)(v75, v11);
    }

    else
    {
      if (v159 != v230 && v159 != v228)
      {
        goto LABEL_112;
      }

      v179 = swift_getKeyPath();
      sub_1003EB7F0(v179, v153, v154, 6);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v268->clientIdentity >= *&v268->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*v237)(v249, v250);
      v75 = v256;
      (*v260)(v256, v11);
    }

    v238 = 1;
LABEL_87:
    v74 = v258;
    v73 = v259;
    v47 = v263;
LABEL_23:
    v71 = v264 + 1;
    v70 = v252;
    if (v264 + 1 == v255)
    {
      v252, v77, v78, v79, v80, v81, v82, v83;
      if (v238)
      {
LABEL_2:
        v47 = REMSmartListTypeCustom;
        v48 = REMSmartListTypeCustom;
        goto LABEL_102;
      }

      goto LABEL_101;
    }
  }

  (*v245)(v74, v11);
  v115 = *v74;
  if (!(v115 >> 62))
  {
    v116 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v116)
    {
      goto LABEL_34;
    }

LABEL_83:
    v115, v108, v109, v110, v111, v112, v113, v114;
    v118 = &_swiftEmptyArrayStorage;
LABEL_84:
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v189 = swift_allocObject();
    *(v189 + 16) = v242;
    *(v189 + 56) = &type metadata for String;
    *(v189 + 32) = 0x696669746E656469;
    *(v189 + 40) = 0xEA00000000007265;
    *(v189 + 88) = sub_1000F5104(&qword_100946088, &unk_1007A7690);
    *(v189 + 64) = v118;
    v190 = String._bridgeToObjectiveC()();
    v191 = Array._bridgeToObjectiveC()().super.isa;
    v189, v192, v193, v194, v195, v196, v197, v198;
    v199 = [objc_opt_self() predicateWithFormat:v190 argumentArray:v191];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v268->clientIdentity >= *&v268->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v75 = v256;
    (*v260)(v256, v11);
    goto LABEL_87;
  }

  v116 = _CocoaArrayWrapper.endIndex.getter();
  if (!v116)
  {
    goto LABEL_83;
  }

LABEL_34:
  v267 = &_swiftEmptyArrayStorage;
  sub_100253218(0, v116 & ~(v116 >> 63), 0);
  if ((v116 & 0x8000000000000000) == 0)
  {
    v117 = 0;
    v118 = v267;
    do
    {
      if ((v115 & 0xC000000000000001) != 0)
      {
        v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v119 = *&v115->clientIdentity[8 * v117 + 16];
      }

      v120 = v119;
      v121 = [v119 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*v72)(v30, 0, 1, v265);
      v267 = v118;
      v123 = *v118->clientIdentity;
      v122 = *&v118->clientIdentity[8];
      if (v123 >= v122 >> 1)
      {
        sub_100253218((v122 > 1), v123 + 1, 1);
        v118 = v267;
      }

      ++v117;
      *v118->clientIdentity = v123 + 1;
      sub_100100FB4(v30, v118 + ((*(v266 + 80) + 32) & ~*(v266 + 80)) + *(v266 + 72) * v123);
    }

    while (v116 != v117);
    v115, v124, v125, v126, v127, v128, v129, v130;
    v11 = v257;
    goto LABEL_84;
  }

  __break(1u);
LABEL_111:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_5:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_102:
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v268->clientIdentity < *&v268->clientIdentity[8] >> 1)
  {
    goto LABEL_103;
  }

LABEL_109:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_103:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v47)
  {
    v211 = swift_getKeyPath();
    v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000120BC(v211, v212, v213);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v268->clientIdentity >= *&v268->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v214 = sub_10000C2B0();

  return v214;
}

id sub_10002F998@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentAccount];
  *a2 = result;
  return result;
}

id sub_10002FA9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentList];
  *a2 = result;
  return result;
}

id sub_10002FB9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

uint64_t sub_10002FBFC(uint64_t a1, uint64_t a2)
{
  v4 = _s10PredicatesOMa_3(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *sub_10002FC60(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v15 = type metadata accessor for UUID();
        (*(*(v15 - 8) + 16))(a1, a2, v15);
        goto LABEL_16;
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_17;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v13 = *a2;
      *a1 = *a2;
      a1[8] = a2[8];
      v14 = v13;
      goto LABEL_16;
    }

LABEL_12:
    v11 = *a2;
    *a1 = *a2;
    v12 = v11;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;

      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    *a1 = v7;
    *(a1 + 1) = v8;
    v9 = v7;
    v10 = v8;
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_17:
  v17 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v17);
}

void sub_100030178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100030280(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        return;
      }

      goto LABEL_8;
    }

    v13 = type metadata accessor for UUID();
    v14 = *(*(v13 - 8) + 8);

    v14(a1, v13);
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload > 1)
      {
        return;
      }

      v11 = *(a1 + 8);
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 2)
    {
LABEL_8:
      v11 = *a1;
LABEL_9:

      return;
    }

    v12 = *a1;

    v12, v4, v5, v6, v7, v8, v9, v10;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1000303FC(_TtC7remindd19RDXPCStorePerformer *result, void *a2)
{
  if (result >> 62)
  {
    goto LABEL_89;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = sub_100516DE8(result);
  if (v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = v4;
  v6 = [v4 smartListStorages];
  sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v221 = v5;
  v225 = v7 >> 62;
  v224 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v8 = result;
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v229 = v7 & 0xC000000000000001;
  v230 = v7;
  while (1)
  {
    if (v8 == v9)
    {
      v35 = 0;
      v228 = 0;
      if (!v225)
      {
        goto LABEL_82;
      }

LABEL_21:
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (!v36)
      {
        goto LABEL_83;
      }

      goto LABEL_22;
    }

    if (v229)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v224 + 16))
      {
        goto LABEL_87;
      }

      result = *(v7 + 8 * v9 + 32);
    }

    v10 = result;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_86;
    }

    v11 = [(RDXPCStorePerformer *)result smartListType];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v12;
    v18 = v15;
    if (v17 == v16 && v14 == v15)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v14, v21, v22, v23, v24, v25, v26, v27;
    v18, v28, v29, v30, v31, v32, v33, v34;
    v9 = (v9 + 1);
    v7 = v230;
    if (v20)
    {
      goto LABEL_72;
    }
  }

  v14, v153, v154, v155, v156, v157, v158, v159;
  v18, v160, v161, v162, v163, v164, v165, v166;
LABEL_72:
  v167 = [v221 accountStorages];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  sub_10018BA8C();
  v168 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v168 & 0xC000000000000001) != 0)
  {
    if (v168 < 0)
    {
      v169 = v168;
    }

    else
    {
      v169 = v168 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = 0;
    v228 = sub_100717A18(v169, a2);
  }

  else
  {
    v2 = 0;
    v228 = sub_100717888(v168, a2);
  }

  v168, v170, v171, v172, v173, v174, v175, v176;
  v223 = objc_opt_self();
  v177 = [v221 accountStorages];
  v178 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100277C98(v178);
  v178, v179, v180, v181, v182, v183, v184, v185;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v187 = [v221 parentListStorages];
  sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
  v188 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100277C70(v188);
  v188, v189, v190, v191, v192, v193, v194, v195;
  v196 = Array._bridgeToObjectiveC()().super.isa;

  v197 = [v223 listsFromAccountStorages:isa listStorages:v196 store:a2];

  if (v197)
  {
    sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
    v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v35 = 0;
  }

  v7 = v230;
  if (v225)
  {
    goto LABEL_21;
  }

LABEL_82:
  v36 = *(v224 + 16);
  if (!v36)
  {
LABEL_83:

    v7, v198, v199, v200, v201, v202, v203, v204;
    v228, v205, v206, v207, v208, v209, v210, v211;
    v35, v212, v213, v214, v215, v216, v217, v218;
    return &_swiftEmptyArrayStorage;
  }

LABEL_22:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v36 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v222 = v35;
    v220 = v35 & 0xC000000000000001;
    v226 = v36;
    while (1)
    {
      v45 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        v219 = result;
        v3 = _CocoaArrayWrapper.endIndex.getter();
        result = v219;
        goto LABEL_3;
      }

      if (v229)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *(v224 + 16))
        {
          goto LABEL_88;
        }

        v46 = *(v7 + 8 * v37 + 32);
      }

      v47 = v46;
      v48 = [v46 remObjectID];
      v49 = [v47 smartListType];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v50;
      v56 = v53;
      if (v55 == v54 && v52 == v53)
      {

        v52, v73, v74, v75, v76, v77, v78, v79;
        v56, v80, v81, v82, v83, v84, v85, v86;
        if (!v228)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v52, v59, v60, v61, v62, v63, v64, v65;
        v56, v66, v67, v68, v69, v70, v71, v72;
        if ((v58 & 1) == 0 || !v228)
        {
          goto LABEL_53;
        }
      }

      if ((v228 & 0xC000000000000001) != 0)
      {
        v87 = v48;
        v88 = __CocoaDictionary.lookup(_:)();

        if (v88)
        {
          sub_1000060C8(0, &qword_100947958, REMAccount_ptr);
          swift_dynamicCast();
          v89 = v231;
          if (v231)
          {
            goto LABEL_47;
          }
        }
      }

      else if (*(v228 + 16))
      {
        v90 = sub_10002B924(v48);
        if (v91)
        {
          v89 = *(*(v228 + 56) + 8 * v90);
          if (v89)
          {
LABEL_47:
            v92 = [v47 parentListID];
            if (v92)
            {
              v93 = v92;
              if (v222)
              {
                if (v220)
                {
                  v94 = v92;
                  v95 = __CocoaDictionary.lookup(_:)();

                  if (v95)
                  {
                    sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
                    swift_dynamicCast();
                    v95 = v231;
                  }

                  v7 = v230;
                }

                else
                {
                  v7 = v230;
                  if (*(v222 + 16) && (v137 = sub_10002B924(v92), (v138 & 1) != 0))
                  {
                    v95 = *(*(v222 + 56) + 8 * v137);
                  }

                  else
                  {
                    v95 = 0;
                  }
                }
              }

              else
              {
                v95 = 0;
                v7 = v230;
              }

              v136 = v95;
            }

            else
            {
              v136 = 0;
              v7 = v230;
            }

            [objc_allocWithZone(type metadata accessor for REMSmartList_Codable()) initWithStore:a2 account:v89 parentList:v136 storage:v47];

            v48 = v136;
            goto LABEL_26;
          }
        }
      }

LABEL_53:
      v96 = [v47 smartListType];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = v101;
      if (v97 == v100 && v99 == v101)
      {

        v99, v103, v104, v105, v106, v107, v108, v109;
        v102, v110, v111, v112, v113, v114, v115, v116;
LABEL_57:
        if (qword_100936768 != -1)
        {
          swift_once();
        }

        v132 = type metadata accessor for Logger();
        sub_100006654(v132, qword_100950B28);
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          *v135 = 0;
          _os_log_impl(&_mh_execute_header, v133, v134, "expecting a valid REMAccount for a custom smart list", v135, 2u);
        }

        goto LABEL_25;
      }

      v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v99, v118, v119, v120, v121, v122, v123, v124;
      v102, v125, v126, v127, v128, v129, v130, v131;
      if (v117)
      {
        goto LABEL_57;
      }

LABEL_25:
      [objc_allocWithZone(type metadata accessor for REMSmartList_Codable()) initWithStore:a2 storage:v47];
      v7 = v230;
LABEL_26:

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      ++v37;
      if (v45 == v226)
      {
        v7, v38, v39, v40, v41, v42, v43, v44;

        v222, v139, v140, v141, v142, v143, v144, v145;
        v228, v146, v147, v148, v149, v150, v151, v152;
        return &_swiftEmptyArrayStorage;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100030E2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100030E90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_TtC7remindd19RDXPCStorePerformer *sub_100030FA0(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ED58, &unk_10079D4D0, &type metadata accessor for REMAccountsListDataView.Model.AccountChild);
  *v3 = result;
  return result;
}

uint64_t sub_100030FE4()
{

  return swift_deallocClassInstance();
}

void sub_100031020(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v22, v5);
  v8 = v22 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000122D0(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  v11 = a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v13 = v12;
  v11, v14, v12, v15, v16, v17, v18, v19;
  if (v13 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v20 = *(v10 + 16);
  v7 = __OFADD__(v20, v13);
  v21 = v20 + v13;
  if (!v7)
  {
    *(v10 + 16) = v21;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100031118(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F718, &qword_10093F710, &qword_10079E008);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F710, &qword_10079E008);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
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

uint64_t sub_1000312B8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1000F5104(&qword_100948BB8, &qword_1007ACBC8);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v29[-v7];
  v9 = _s5CacheVMa(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ObjectType = swift_getObjectType();
  v15 = (*(a2 + 8))(ObjectType, a2);
  if (v16 >> 60 == 15)
  {
    if (qword_100936260 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_100948A78);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "REMAccountsListDataView.Invocation no cache", v20, 2u);
    }

    v21 = sub_1000F5104(&qword_100948BB0, &qword_1007ACBC0);
    v22 = *(*(v21 - 8) + 56);

    return v22(a3, 1, 1, v21);
  }

  else
  {
    v24 = v15;
    v25 = v16;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100030E90(&qword_100948BC0, _s5CacheVMa, &unk_1007ACCA8);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100031A14(v24, v25);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_100031AF4(v8, v13);
    v26 = sub_1000F5104(&qword_100948BB0, &qword_1007ACBC0);
    v27 = *(v26 + 48);
    v28 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
    (*(*(v28 - 8) + 32))(a3, v13, v28);
    *(a3 + v27) = *&v13[*(v9 + 20)];
    return (*(*(v26 - 8) + 56))(a3, 0, 1, v26);
  }
}

uint64_t _s5CacheVMa(uint64_t a1)
{
  result = qword_100948C98;
  if (!qword_100948C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100031820()
{
  v1 = [v0 accountsListCategorizedCountsCache];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1000318A0()
{
  result = qword_100948CD8;
  if (!qword_100948CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948CD8);
  }

  return result;
}

unint64_t sub_1000318F4()
{
  result = qword_1009396F0;
  if (!qword_1009396F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009396F0);
  }

  return result;
}

id sub_100031948()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() fetchResultTokenFromDataRepresentation:isa error:&v5];

  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100031A14(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001BBA0(result, a2);
  }

  return result;
}

uint64_t sub_100031A3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for REMAccountsListDataView.ReminderCounts();
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

uint64_t sub_100031AF4(uint64_t a1, uint64_t a2)
{
  v4 = _s5CacheVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031B58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000F5104(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_100031BC0(_TtC7remindd19RDXPCStorePerformer *a1, void *a2, char a3, objc_class *a4)
{
  v74 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v74, v9);
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  if (a3)
  {
    if (qword_100935BC8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for MockInMemoryPreferredDefaultListStorage(0);
    v14 = &qword_100974C48;
    v15 = &off_1008E9C20;
  }

  else
  {
    if (qword_100935BC0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for REMDaemonUserDefaultsPreferredListStorageAdapter();
    v14 = &qword_100974C40;
    v15 = &off_1008E9C58;
  }

  v16 = *v14;
  v73[3] = v13;
  v73[4] = v15;
  v73[0] = v16;

  if (a2 == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = a2;
  }

  v18 = a2 != 1 && a2 != 2;
  if (a2 == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  sub_100033528(a2);
  v20 = sub_1000320EC(v12, a2 == 1, a2 != 1, 0, v73, a4);
  if (v4)
  {
    goto LABEL_21;
  }

  v71[2] = v12;
  v72 = v19;
  if (!v18)
  {
    goto LABEL_21;
  }

  v21 = a4;
  v22 = v20;
  v23 = sub_1001DFC3C(v72, 0, v20);
  v22, v24, v25, v26, v27, v28, v29, v30;
  if (v23 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_21;
    }
  }

  else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    sub_10000607C(v73);
    sub_100034014(a2);
    return;
  }

  swift_storeEnumTagMultiPayload();
  v31 = sub_10001F6F4();
  sub_100025254(v11, _s10PredicatesOMa_1);
  v71[1] = sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100799D70;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  v33 = qword_100936528;
  v74 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = sub_100405438(inited, qword_100975238, v21, v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  v35 = v72;
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [(RDXPCStorePerformer *)v34 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v37 = NSManagedObjectContext.fetch<A>(_:)();

  v38 = v74;
  v39 = sub_1001DFC3C(v35, 1, v37);
  v37, v40, v41, v42, v43, v44, v45, v46;
  if (v39 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_29;
    }

LABEL_34:
    sub_10000607C(v73);
    sub_100034014(a2);
    v39, v64, v65, v66, v67, v68, v69, v70;
    return;
  }

  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_29:
  v23, v47, v48, v49, v50, v51, v52, v53;
  if ((v39 & 0xC000000000000001) != 0)
  {
    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_32;
  }

  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v54 = *&v39->clientIdentity[16];
LABEL_32:
    v62 = v54;
    v39, v55, v56, v57, v58, v59, v60, v61;
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1007953F0;
    *(v63 + 32) = v62;
    sub_100034014(a2);
    sub_10000607C(v73);
    return;
  }

  __break(1u);
}

_TtC7remindd19RDXPCStorePerformer *sub_1000320EC(_TtC7remindd19RDXPCStorePerformer *a1, char a2, int a3, int a4, void *a5, objc_class *a6)
{
  v201 = a6;
  LODWORD(v196) = a3;
  v202 = a1;
  v9 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v9 - 8, v10);
  v192 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v187 - v14;
  v16 = type metadata accessor for URL();
  v17 = *&v16[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v16, v18);
  v197 = &v187 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v20, v20);
  v22 = &v187 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v23;
  swift_storeEnumTagMultiPayload();
  v24 = sub_10001F6F4();
  sub_100025254(v22, _s10PredicatesOMa_1);
  v200 = a5;
  LODWORD(i) = a4;
  v194 = v17;
  if (a4)
  {
    v25 = v24;
    v26 = v24;
    v22 = v24;
    v27 = v6;
    goto LABEL_26;
  }

  v193 = v24;
  v195 = v6;
  v28 = a5[3];
  v29 = a5[4];
  sub_10000F61C(a5, v28);
  (*(v29 + 8))(v28, v29);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000050A4(v15, &unk_1009441F0, &qword_100795760);
    goto LABEL_14;
  }

  v30 = v197;
  (*(v17 + 32))(v197, v15, v16);
  v31 = v202;
  v32 = [v202 persistentStoreCoordinator];
  if (!v32 || (v34 = v32, URL._bridgeToObjectiveC()(v33), v36 = v35, v37 = [v34 managedObjectIDForURIRepresentation:v35], v34, v36, !v37))
  {
    (*(v17 + 8))(v30, v16);
LABEL_14:
    v45 = v200[3];
    v46 = v200[4];
    sub_10000F61C(v200, v45);
    v47 = (*(v46 + 32))(v45, v46);
    v27 = v195;
    if (v47)
    {
      v48 = v47;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1007953F0;
      *(v49 + 32) = v48;
      *v22 = v49;
      swift_storeEnumTagMultiPayload();
      v50 = v48;
      v51 = sub_10001F6F4();
      sub_100025254(v22, _s10PredicatesOMa_1);
      sub_1000F5104(&qword_10093C918, &unk_10079A3C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      v22 = v193;
      *(inited + 32) = v193;
      *(inited + 40) = v51;
      v53 = v51;
      v54 = v22;
      v26 = sub_100025060(inited);
    }

    else
    {
      v22 = v193;
      v55 = v193;
      v26 = v22;
    }

    goto LABEL_26;
  }

  swift_storeEnumTagMultiPayload();
  v191 = sub_10001F6F4();
  sub_100025254(v22, _s10PredicatesOMa_1);
  v190 = v37;
  if (v196)
  {
    v203 = 0;
    v38 = [(RDXPCStorePerformer *)v31 existingObjectWithID:v37 error:&v203];
    v39 = v203;
    v27 = v195;
    if (!v38)
    {
      v56 = v203;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v27 = 0;
      goto LABEL_25;
    }

    v26 = v38;
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v188 = v40;
      v41 = v191;
      if (!v191)
      {
        v58 = qword_100935F50;
        v59 = v39;
        if (v58 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_116;
      }

      v42 = v39;
      v43 = v188;
      if ([v41 evaluateWithObject:v188])
      {
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v44 = v16;
        v16 = swift_allocObject();
        *v16->clientIdentity = xmmword_1007953F0;
        *&v16->clientIdentity[16] = v43;

        (*(v194 + 8))(v30, v44);
        return v16;
      }
    }

    else
    {
      v57 = v39;
    }

    goto LABEL_25;
  }

  v27 = v195;
  while (1)
  {
LABEL_25:
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1007953F0;
    v68 = v190;
    *(v67 + 32) = v190;
    *v22 = v67;
    swift_storeEnumTagMultiPayload();
    v69 = v68;
    v70 = sub_10001F6F4();
    sub_100025254(v22, _s10PredicatesOMa_1);
    sub_1000F5104(&qword_10093C918, &unk_10079A3C0);
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_100791340;
    v22 = v193;
    *(v71 + 32) = v193;
    *(v71 + 40) = v70;
    v72 = v70;
    v73 = v22;
    v26 = sub_100025060(v71);

    (*(v194 + 8))(v197, v16);
LABEL_26:
    v191 = sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_100799D70;
    *(v74 + 32) = swift_getKeyPath();
    *(v74 + 40) = swift_getKeyPath();
    *(v74 + 48) = swift_getKeyPath();
    v75 = qword_100936528;
    v76 = v26;
    if (v75 != -1)
    {
LABEL_54:
      swift_once();
    }

    v77 = sub_100405438(v74, qword_100975238, v201, v26);

    swift_setDeallocating();
    swift_arrayDestroy();
    if (qword_100936520 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [(RDXPCStorePerformer *)v77 setSortDescriptors:isa];

    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v79 = NSManagedObjectContext.fetch<A>(_:)();
    if (v27)
    {

      return v16;
    }

    if (i)
    {
      v16 = v79;

LABEL_125:
      return v16;
    }

    v80 = v79;
    if ((v196 & 1) == 0)
    {

      return v80;
    }

    v81 = v200[3];
    v82 = v200[4];
    sub_10000F61C(v200, v81);
    v83 = *(v82 + 32);
    v202 = v80;
    v84 = v83(v81, v82);
    v26 = v202;
    v74 = v202 >> 62;
    v195 = 0;
    v198 = v76;
    v201 = v77;
    i = v84;
    v189 = v16;
    if (!v84)
    {
      goto LABEL_67;
    }

    v203 = &_swiftEmptyArrayStorage;
    if (v74)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if (v16)
      {
LABEL_37:
        v197 = v74;
        v193 = v22;
        v22 = 0;
        v92 = v26 & 0xC000000000000001;
        v27 = v26 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v92)
          {
            v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v22 >= *(v27 + 16))
            {
              goto LABEL_53;
            }

            v93 = *(v26 + 8 * v22 + 32);
          }

          v74 = v93;
          v94 = (v22 + 1);
          if (__OFADD__(v22, 1))
          {
            break;
          }

          v95 = [v93 remObjectID];
          if (v95)
          {
            v96 = v95;
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v97 = i;
            v98 = static NSObject.== infix(_:_:)();

            if (v98)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            v76 = v198;
            v26 = v202;
          }

          else
          {
          }

          ++v22;
          v77 = v201;
          if (v94 == v16)
          {
            v16 = v203;
            v27 = v195;
            v22 = v193;
            v74 = v197;
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    else
    {
      v16 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_37;
      }
    }

    v16 = &_swiftEmptyArrayStorage;
LABEL_57:

    if (*v16->clientIdentity != 1)
    {
      goto LABEL_66;
    }

LABEL_60:
    v26, v85, v86, v87, v88, v89, v90, v91;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_63:
      v100 = v99;
      v101 = [v99 objectID];
      v102 = [v101 URIRepresentation];

      v103 = v192;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v194 + 56))(v103, 0, 1, v189);
      v104 = v200[3];
      v105 = v200[4];
      sub_10000C9DC(v200, v104);
      (*(v105 + 16))(v103, v104, v105);

      v106 = &v204;
LABEL_124:

      goto LABEL_125;
    }

    if (*v16->clientIdentity)
    {
      v99 = *&v16->clientIdentity[16];
      goto LABEL_63;
    }

    __break(1u);
LABEL_116:
    swift_once();
LABEL_22:
    v60 = type metadata accessor for Logger();
    sub_100006654(v60, qword_1009442B0);
    v61 = v26;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      v66 = v188;
      *(v64 + 4) = v188;
      *v65 = v66;
      v61 = v61;
      _os_log_impl(&_mh_execute_header, v62, v63, "Evaluating TypedPredicate with nil NSPredicate against object {object: %@}", v64, 0xCu);
      sub_1000050A4(v65, &unk_100938E70, &unk_100797230);

      v27 = v195;
    }
  }

  if (_CocoaArrayWrapper.endIndex.getter() == 1 && _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_60;
  }

LABEL_66:

LABEL_67:
  if (v74)
  {
    goto LABEL_113;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v107 = 0;
    v197 = (v26 & 0xC000000000000001);
    v196 = v26 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v197)
      {
        v130 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v107 >= *(v196 + 16))
        {
          goto LABEL_108;
        }

        v130 = *(v26 + 8 * v107 + 32);
      }

      v131 = v130;
      v132 = (v107 + 1);
      if (__OFADD__(v107, 1))
      {
        break;
      }

      v133 = [v130 name];
      if (v133)
      {
        v134 = v133;
        v135 = v22;
        v136 = [objc_opt_self() displayNameFromListName:v133 isPlaceholder:{objc_msgSend(v131, "isPlaceholder")}];

        v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v138;

        v139 = _REMGetLocalizedString();
        v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v142 = v141;

        if (v137 == v140 && v77 == v142)
        {
          v202, v143, v144, v145, v146, v147, v148, v149;
          v77, v162, v163, v164, v165, v166, v167, v168;
          v22 = v135;
LABEL_119:
          v169 = v200;
          v76 = v198;
          goto LABEL_120;
        }

        v108 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v77, v109, v110, v111, v112, v113, v114, v115;
        v142, v116, v117, v118, v119, v120, v121, v122;
        v22 = v135;
        v76 = v198;
        if (v108)
        {
          v142 = v202;
          v169 = v200;
LABEL_120:
          v142, v123, v124, v125, v126, v127, v128, v129;
          v175 = v169[3];
          v176 = v169[4];
          sub_10000F61C(v169, v175);
          v177 = (*(v176 + 32))(v175, v176);
          if (v177)
          {
          }

          else
          {
            v178 = [v131 remObjectID];
            v179 = v169[3];
            v180 = v169[4];
            sub_10000C9DC(v169, v179);
            (*(v180 + 40))(v178, v179, v180);
            v181 = [v131 objectID];
            v182 = [v181 URIRepresentation];

            v183 = v192;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            (*(v194 + 56))(v183, 0, 1, v189);
            v184 = v169[3];
            v185 = v169[4];
            sub_10000C9DC(v169, v184);
            (*(v185 + 16))(v183, v184, v185);
          }

          v16 = swift_allocObject();
          *v16->clientIdentity = xmmword_1007953F0;
          *&v16->clientIdentity[16] = v131;
          v106 = &v205;
          goto LABEL_124;
        }
      }

      ++v107;
      v26 = v202;
      if (v132 == i)
      {
        v77 = 0;
        v76 = &selRef_accountStatusWithCompletionHandler_;
        while (1)
        {
          if (v197)
          {
            v157 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v77 >= *(v196 + 16))
            {
              goto LABEL_110;
            }

            v157 = *(v26 + 8 * v77 + 32);
          }

          v131 = v157;
          v158 = &v77->super.isa + 1;
          if (__OFADD__(v77, 1))
          {
            goto LABEL_109;
          }

          v159 = [v157 account];
          if (v159)
          {
            v160 = v159;
            v161 = [v159 accountTypeHost];

            LOBYTE(v160) = [v161 isPrimaryCloudKit];
            v26 = v202;
            if (v160)
            {
LABEL_118:
              v142 = v26;
              goto LABEL_119;
            }
          }

          v77 = (v77 + 1);
          if (v158 == i)
          {
            v77 = 0;
            while (1)
            {
              if (v197)
              {
                v170 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v77 >= *(v196 + 16))
                {
                  goto LABEL_112;
                }

                v170 = *(v26 + 8 * v77 + 32);
              }

              v131 = v170;
              v171 = &v77->super.isa + 1;
              if (__OFADD__(v77, 1))
              {
                goto LABEL_111;
              }

              v172 = [v170 account];
              if (v172)
              {
                v173 = v172;
                v174 = [v172 accountTypeHost];

                LOBYTE(v173) = [v174 isCloudKit];
                v26 = v202;
                if (v173)
                {
                  goto LABEL_118;
                }
              }

              v77 = (v77 + 1);
              if (v171 == i)
              {
                if (v197)
                {
                  v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  goto LABEL_118;
                }

                v169 = v200;
                v76 = v198;
                if (!*(v196 + 16))
                {
                  __break(1u);
                }

                v131 = *(v26 + 32);
                v142 = v26;
                goto LABEL_120;
              }
            }
          }
        }
      }
    }

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
    ;
  }

  v26, v150, v151, v152, v153, v154, v155, v156;
  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100033464(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, void *aBlock, uint64_t a7, uint64_t a8, void (*a9)(id, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = _Block_copy(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a3;
  v17 = a1;
  a9(v16, a4, a5, a8, v15);
}

id sub_100033528(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_10003358C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000335C8(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v59 = v12;
  v60 = v13;
  __chkstk_darwin(v12, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(v17 - 8);
  v61 = v17;
  v62 = v18;
  __chkstk_darwin(v17, v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_10093B458);
  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v58 = v23;
    v27 = v26;
    v28 = swift_slowAlloc();
    v57 = v21;
    v55 = a4;
    v29 = v28;
    aBlock[0] = v28;
    *v27 = 67109378;
    *(v27 + 4) = a2 & 1;
    *(v27 + 8) = 2082;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v16;
    v32 = v31;
    v33 = a2;
    v34 = a3;
    v35 = a5;
    v36 = v6;
    v37 = sub_10000668C(v30, v31, aBlock);
    v38 = v32;
    v16 = v56;
    v38, v39, v40, v41, v42, v43, v44, v45;
    *(v27 + 10) = v37;
    v6 = v36;
    a5 = v35;
    a3 = v34;
    a2 = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "XPCSyncInterface.SyncCloudKit: Requested Trigger CloudKit sync {discretionary: %{BOOL}d, reason: %{public}s}", v27, 0x12u);
    sub_10000607C(v29);
    a4 = v55;
    v21 = v57;

    v23 = v58;
  }

  v46 = swift_allocObject();
  *(v46 + 16) = v23;
  *(v46 + 24) = a4;
  *(v46 + 32) = a5;
  *(v46 + 40) = a2 & 1;
  *(v46 + 48) = v6;
  *(v46 + 56) = a3 & 1;
  aBlock[4] = sub_10003E968;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E9130;
  v47 = _Block_copy(aBlock);
  v48 = v23;
  v49 = v47;
  v50 = v48;

  v51 = v6;
  static DispatchQoS.unspecified.getter();
  v63 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  v52 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v49);
  (*(v60 + 8))(v16, v52);
  (*(v62 + 8))(v21, v61);
}

uint64_t sub_1000339E4()
{

  return _swift_deallocObject(v0, 57, 7);
}

id sub_100033A2C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100033C38()
{
  KeyPath = swift_getKeyPath();
  sub_100033D6C(KeyPath, 0);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*_swiftEmptyArrayStorage.clientIdentity >= *&_swiftEmptyArrayStorage.clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = swift_getKeyPath();
  sub_100033F44(v1, 2);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*_swiftEmptyArrayStorage.clientIdentity >= *&_swiftEmptyArrayStorage.clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return sub_10000C2B0();
}

id sub_100033D6C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v10, v11, v12, v13, v14, v15, v16;
    v17 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v17;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100033F6C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) preferredDefaultListObjectIDUrl];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_100034014(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

uint64_t sub_1000340EC(_TtC7remindd19RDXPCStorePerformer *a1, int a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v57 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_10093B458);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  a1, v19, v20, v21, v22, v23, v24, v25;
  if (os_log_type_enabled(v17, v18))
  {
    v26 = swift_slowAlloc();
    v56 = v15;
    v27 = v26;
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v27 = 136315138;
    v28 = Array.description.getter();
    v55 = a4;
    v30 = v29;
    v31 = sub_10000668C(v28, v29, aBlock);
    v53 = v18;
    v32 = a1;
    v33 = v12;
    v34 = v10;
    v35 = v11;
    v36 = v6;
    v37 = v7;
    v38 = v31;
    v39 = v30;
    a4 = v55;
    v39, v40, v41, v42, v43, v44, v45, v46;
    *(v27 + 4) = v38;
    v7 = v37;
    v6 = v36;
    v11 = v35;
    v10 = v34;
    v12 = v33;
    a1 = v32;
    _os_log_impl(&_mh_execute_header, v17, v53, "(daemon) Requested trigger DataAccess sync {accountIDs: %s}", v27, 0xCu);
    sub_10000607C(v54);

    v15 = v56;
  }

  v47 = v59;
  v48 = swift_allocObject();
  *(v48 + 16) = v57 & 1;
  *(v48 + 24) = a1;
  *(v48 + 32) = v47;
  *(v48 + 40) = v58;
  *(v48 + 48) = a4;
  aBlock[4] = sub_10004010C;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8FA0;
  v49 = _Block_copy(aBlock);

  v50 = v47;

  static DispatchQoS.unspecified.getter();
  v60 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v49);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

_TtC7remindd19RDXPCStorePerformer *sub_10003450C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_100010D04(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *v2->clientIdentity;
      v5 = *&v2->clientIdentity[8];
      if (v6 >= v5 >> 1)
      {
        sub_100010D04((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *v2->clientIdentity = v6 + 1;
      sub_100005EE0(&v8, &v2->clientIdentity[32 * v6 + 16]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_100034664(uint64_t a1, char a2)
{
  if (!a2)
  {
    KeyPath = swift_getKeyPath();
    sub_100394808(a1);
    sub_100016EF8(KeyPath, v8, &qword_1009469C8, &qword_1007A92D8, &unk_1009440D0, qword_10079ABB0);
LABEL_6:

    goto LABEL_14;
  }

  if (a2 == 1)
  {
    v3 = swift_getKeyPath();
    sub_100394808(a1);
    v5 = sub_100016EF8(v3, v4, &qword_1009469C8, &qword_1007A92D8, &unk_1009440D0, qword_10079ABB0);

    if (v5)
    {
      v6 = [objc_opt_self() notPredicateWithSubpredicate:v5];
    }

    goto LABEL_14;
  }

  result = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v73 = swift_getKeyPath();
      sub_1003EE38C(v73, 0);
    }

    else
    {
      if (a1 != 3)
      {
        return result;
      }

      v10 = swift_getKeyPath();
      sub_1003EE564(v10, 0);
    }

    goto LABEL_6;
  }

  if (!a1)
  {
    return result;
  }

  sub_1000F5104(&unk_10093AEB0, qword_100798560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  *(inited + 32) = sub_10029EB64();
  *(inited + 40) = sub_10029EB64();
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100791300;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 32) = 0xD000000000000011;
  *(v12 + 40) = 0x80000001007F8400;
  v13 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v12, v15, v16, v17, v18, v19, v20, v21;
  v22 = objc_opt_self();
  v23 = [v22 predicateWithFormat:v13 argumentArray:isa];

  *(inited + 48) = v23;
  v24 = sub_100025060(inited);
  if (!v24)
  {
    if (qword_100936108 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_100006654(v74, qword_1009469A0);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Failed to compute subQueryPredicate for REMCDHashtagLabel.Predicates.withConcealedHashtag", v77, 2u);
    }

    return sub_10000C2B0();
  }

  v25 = v24;
  v26 = [v24 description];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100791300;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 32) = 0x7367617468736168;
  *(v30 + 40) = 0xE800000000000000;
  _StringGuts.grow(_:)(32);
  0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
  v38._countAndFlagsBits = v27;
  v38._object = v29;
  String.append(_:)(v38);
  v29, v39, v40, v41, v42, v43, v44, v45;
  v46._countAndFlagsBits = 0x746E756F63402E29;
  v46._object = 0xEB00000000203E20;
  String.append(_:)(v46);
  v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v47._object;
  String.append(_:)(v47);
  object, v49, v50, v51, v52, v53, v54, v55;
  v56 = String._bridgeToObjectiveC()();
  0x80000001007F8420, v57, v58, v59, v60, v61, v62, v63;
  v64 = Array._bridgeToObjectiveC()().super.isa;
  v30, v65, v66, v67, v68, v69, v70, v71;
  v72 = [v22 predicateWithFormat:v56 argumentArray:v64];

LABEL_14:
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*_swiftEmptyArrayStorage.clientIdentity >= *&_swiftEmptyArrayStorage.clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0();
}

uint64_t sub_100034C08(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v129 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v127 = &v122 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = (&v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13, v14);
  v131 = &v122 - v15;
  __chkstk_darwin(v16, v17);
  v138 = (&v122 - v19);
  v143 = a1;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v18 = v101)
  {
    v126 = v12;
    v141 = a1 & 0xC000000000000001;
    v135 = a1 & 0xFFFFFFFFFFFFFF8;
    v128 = (v9 + 32);
    v136 = (v9 + 56);
    v137 = v18;
    v123 = (v9 + 48);
    v125 = (v9 + 8);

    v21 = 0;
    v22 = _swiftEmptyDictionarySingleton;
    *&v23 = 138543362;
    v124 = v23;
    v139 = a1;
    v140 = i;
    while (1)
    {
      if (v141)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *(v135 + 16))
        {
          goto LABEL_47;
        }

        v18 = *(a1 + 8 * v21 + 32);
      }

      v26 = v18;
      v27 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v28 = [v18 canonicalName];
      if (!v28)
      {
        if (qword_100936108 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        sub_100006654(v58, qword_1009469A0);
        v12 = v26;
        v9 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v9, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v60 = v124;
          v62 = [(RDXPCStorePerformer *)v12 objectID];
          *(v60 + 4) = v62;
          *v61 = v62;
          _os_log_impl(&_mh_execute_header, v9, v59, "Unexpected nil canonical name REMCDHashtagLabel from hashtagLabelNames(from:) {mid: %{public}@}", v60, 0xCu);
          sub_1000050A4(v61, &unk_100938E70, &unk_100797230);
        }

        else
        {
        }

        goto LABEL_6;
      }

      v29 = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v31;

      if (*v22->clientIdentity)
      {
        v32 = sub_100005F4C(v30, v12);
        if (v33)
        {
          v34 = *(*&v22->clientIdentity[40] + 8 * v32);
          v35 = v26;
          v36 = [v35 firstOccurrenceCreationDate];
          v134 = v35;
          if (v36)
          {
            v37 = v131;
            v38 = v36;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v39 = v127;
            v40 = *v128;
            v41 = v37;
            v42 = v34;
            v43 = v137;
            (*v128)(v127, v41, v137);
            v132 = *v136;
            v132(v39, 0, 1, v43);
            v44 = v43;
            v34 = v42;
            v40(v138, v39, v44);
          }

          else
          {
            v66 = v137;
            v67 = v127;
            v132 = *v136;
            v132(v127, 1, 1, v137);
            static Date.distantFuture.getter();
            if ((*v123)(v67, 1, v66) != 1)
            {
              sub_1000050A4(v67, &unk_100938850, qword_100795AE0);
            }
          }

          v133 = v34;
          v68 = [v34 firstOccurrenceCreationDate];
          v130 = v30;
          if (v68)
          {
            v69 = v131;
            v70 = v68;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v71 = v129;
            v72 = *v128;
            v73 = v69;
            v74 = v137;
            (*v128)(v129, v73, v137);
            v132(v71, 0, 1, v74);
            v75 = v126;
            v72(v126, v71, v74);
          }

          else
          {
            v76 = v129;
            v74 = v137;
            v132(v129, 1, 1, v137);
            v75 = v126;
            static Date.distantFuture.getter();
            if ((*v123)(v76, 1, v74) != 1)
            {
              sub_1000050A4(v129, &unk_100938850, qword_100795AE0);
            }
          }

          v77 = v138;
          v9 = static Date.< infix(_:_:)();
          v78 = *v125;
          (*v125)(v75, v74);
          v78(v77, v74);
          if (v9)
          {
            v86 = v134;

            v87 = v133;
            v88 = v133;
            v89 = v86;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v142 = v22;
            v9 = &v142;
            sub_1002C72A0(v89, v130, v12, isUniquelyReferenced_nonNull_native);
            v12, v91, v92, v93, v94, v95, v96, v97;
            v22 = v142;
          }

          else
          {
            v12, v79, v80, v81, v82, v83, v84, v85;
            v87 = v133;
            v86 = v134;
            v88 = v134;
          }

          i = v140;
          v98 = sub_10042D064(v88, v143);
          if (v99)
          {
          }

          else
          {
            v9 = &v143;
          }

          goto LABEL_5;
        }
      }

      v45 = v26;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v142 = v22;
      v9 = v22;
      v18 = sub_100005F4C(v30, v12);
      v54 = *v22->clientIdentity;
      v55 = (v47 & 1) == 0;
      v56 = __OFADD__(v54, v55);
      v57 = v54 + v55;
      if (v56)
      {
        goto LABEL_46;
      }

      a1 = v47;
      if (*&v22->clientIdentity[8] >= v57)
      {
        if ((v46 & 1) == 0)
        {
          v9 = &v142;
          v100 = v18;
          sub_100373650();
          v18 = v100;
          i = v140;
          if ((a1 & 1) == 0)
          {
LABEL_27:
            v22 = v142;
            *(v142 + 8 * (v18 >> 6) + 64) |= 1 << v18;
            v63 = (*&v22->clientIdentity[32] + 16 * v18);
            *v63 = v30;
            v63[1] = v12;
            *(*&v22->clientIdentity[40] + 8 * v18) = v45;

            v64 = *v22->clientIdentity;
            v56 = __OFADD__(v64, 1);
            v65 = v64 + 1;
            if (v56)
            {
              goto LABEL_48;
            }

            *v22->clientIdentity = v65;
            goto LABEL_5;
          }

          goto LABEL_4;
        }
      }

      else
      {
        sub_10036A8DC(v57, v46);
        v9 = v142;
        v18 = sub_100005F4C(v30, v12);
        if ((a1 & 1) != (v47 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      i = v140;
      if ((a1 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_4:
      v24 = v18;
      v12, v47, v48, v49, v50, v51, v52, v53;
      v22 = v142;
      v25 = *(v142 + 56);
      v9 = *(v25 + 8 * v24);
      *(v25 + 8 * v24) = v45;

LABEL_5:
      a1 = v139;
LABEL_6:
      ++v21;
      if (v27 == i)
      {
        a1 = v143;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v101 = v18;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  v22 = _swiftEmptyDictionarySingleton;
LABEL_51:
  if (qword_100936108 != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for Logger();
  v103 = sub_100006654(v102, qword_1009469A0);
  v142 = a1;
  __chkstk_darwin(v103, v104);
  *(&v122 - 2) = v105;
  sub_1000F5104(&qword_10093B2C8, &qword_100798908);
  sub_1000355A4();
  v106 = Sequence.map<A>(skippingError:_:)();
  v22, v107, v108, v109, v110, v111, v112, v113;
  a1, v114, v115, v116, v117, v118, v119, v120;
  return v106;
}

unint64_t sub_1000355A4()
{
  result = qword_10093B2D0;
  if (!qword_10093B2D0)
  {
    sub_1000F514C(&qword_10093B2C8, &qword_100798908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B2D0);
  }

  return result;
}

void sub_100035608(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v136 = a4;
  v149 = a1;
  v137 = a6;
  v11 = sub_1000F5104(&qword_10093E168, &qword_10079C170);
  __chkstk_darwin(v11, v12);
  v145 = &v121 - v13;
  v135 = type metadata accessor for REMHashtagLabelCollection();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135, v14);
  v133 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v138 = &v121 - v18;
  __chkstk_darwin(v19, v20);
  v141 = &v121 - v21;
  v22 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v22, v23);
  v143 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  Style = type metadata accessor for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle();
  v26 = *(Style - 8);
  v28 = __chkstk_darwin(Style, v27);
  v30 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v30, a5, Style, v28);
  v31 = (*(v26 + 88))(v30, Style);
  if (v31 == enum case for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle.cachedOrStore(_:))
  {
    v32 = sub_100036394(a2, a3);
    if (v32)
    {
      v34 = v32;
      v35 = v33;
      sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);

      v36 = v35;
      static NSObject.== infix(_:_:)();

      REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.init(labels:isUpToDate:)();
      v34, v37, v38, v39, v40, v41, v42, v43;
      return;
    }

    goto LABEL_5;
  }

  if (v31 == enum case for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle.store(_:))
  {
LABEL_5:
    v130 = a2;
    v131 = a3;
    swift_storeEnumTagMultiPayload();
    v44 = sub_10002DDAC();
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v45 = [objc_allocWithZone(NSFetchRequest) init];
    v46 = [swift_getObjCClassFromMetadata() entity];
    [v45 setEntity:v46];

    [v45 setAffectedStores:0];
    [v45 setPredicate:v44];

    if (qword_100936778 != -1)
    {
      goto LABEL_43;
    }

    while (1)
    {
      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v139 = v45;
      [v45 setSortDescriptors:isa];

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007953F0;
      *(inited + 32) = swift_getKeyPath();
      v153 = &_swiftEmptyArrayStorage;
      sub_100010D04(0, 1, 0);
      v49 = v153;
      v126 = v11;
      if ((inited & 0xC000000000000001) != 0)
      {
        v50 = v7;
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_45:
          v45 = _CocoaArrayWrapper.endIndex.getter();
          if (!v45)
          {
LABEL_46:
            a3, v60, v61, v62, v63, v64, v65, v66;
            v110 = v141;
            v111 = REMHashtagLabelCollection.labels.getter();
            v112 = REMFetchResultToken.codable.getter();
            sub_100584D84(v111, v112, v130, v131);

            v111, v113, v114, v115, v116, v117, v118, v119;
            REMHashtagLabelCollection.labels.getter();
            REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.init(labels:isUpToDate:)();

            (*(v134 + 8))(v110, v135);
            sub_10003AF64(v143);
            return;
          }

          goto LABEL_17;
        }

        v50 = v7;
        v51 = *(inited + 32);
      }

      v52 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v53)
      {
        *&v151 = 0;
        *(&v151 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(46);
        v120._object = 0x80000001007EC120;
        v120._countAndFlagsBits = 0xD00000000000002CLL;
        String.append(_:)(v120);
        v150 = v51;
        sub_1000F5104(&qword_100946530, &qword_10079B260);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        break;
      }

      v54 = v52;
      v11 = v53;
      v152 = &type metadata for String;

      *&v151 = v54;
      *(&v151 + 1) = v11;
      v56 = *v49->clientIdentity;
      v55 = *&v49->clientIdentity[8];
      if (v56 >= v55 >> 1)
      {
        sub_100010D04((v55 > 1), v56 + 1, 1);
        v49 = v153;
      }

      *v49->clientIdentity = v56 + 1;
      sub_100005EE0(&v151, &v49->clientIdentity[32 * v56 + 16]);
      swift_setDeallocating();
      swift_arrayDestroy();
      v57 = Array._bridgeToObjectiveC()().super.isa;

      v58 = v139;
      [v139 setPropertiesToFetch:v57];

      v59 = NSManagedObjectContext.fetch<A>(_:)();
      v7 = v50;
      if (v50)
      {
        sub_10003AF64(v143);

        return;
      }

      a3 = v59;
      REMHashtagLabelCollection.init()();
      if (a3 >> 62)
      {
        goto LABEL_45;
      }

      v45 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_46;
      }

LABEL_17:
      v68 = 0;
      v147 = a3 & 0xC000000000000001;
      v140 = a3 & 0xFFFFFFFFFFFFFF8;
      v129 = enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.hashtags(_:);
      v122 = enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.untagged(_:);
      v121 = enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.any(_:);
      v128 = (v134 + 8);
      v127 = (v134 + 32);
      *&v67 = 136315138;
      v132 = v67;
      v144 = a3;
      v142 = v45;
      while (1)
      {
        if (v147)
        {
          v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v68 >= *(v140 + 16))
          {
            goto LABEL_42;
          }

          v69 = *(a3 + 8 * v68 + 32);
        }

        v70 = v69;
        v11 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          break;
        }

        v71 = [v69 filterData];
        if (v71)
        {
          v72 = v71;
          v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;

          type metadata accessor for REMCustomSmartListFilterDescriptor();
          sub_100029344(v73, v75);
          [v70 minimumSupportedVersion];
          v148 = v73;
          v149 = v75;
          v76 = REMCustomSmartListFilterDescriptor.__allocating_init(data:minimumSupportedVersion:)();
          if (v7)
          {
            if (qword_100936578 != -1)
            {
              swift_once();
            }

            v77 = type metadata accessor for Logger();
            sub_100006654(v77, qword_10094CAF0);
            swift_errorRetain();
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              *&v151 = v81;
              *v80 = v132;
              swift_getErrorValue();
              v82 = Error.rem_errorDescription.getter();
              v84 = v83;
              v85 = sub_10000668C(v82, v83, &v151);
              v146 = v7;
              v86 = v85;
              v84, v87, v88, v89, v90, v91, v92, v93;
              *(v80 + 4) = v86;
              _os_log_impl(&_mh_execute_header, v78, v79, "HashtagLabelsReferencedByCustomSmartListFiltersInvocation: failed to decode filter {error: %s}", v80, 0xCu);
              sub_10000607C(v81);
              v45 = v142;

              sub_10001BBA0(v148, v149);
            }

            else
            {
              sub_10001BBA0(v148, v149);
            }

            v7 = 0;
            a3 = v144;
            goto LABEL_19;
          }

          v94 = v76;
          v95 = v145;
          REMCustomSmartListFilterDescriptor.hashtags.getter();

          v96 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
          v97 = *(v96 - 8);
          if ((*(v97 + 48))(v95, 1, v96) == 1)
          {
LABEL_32:

            sub_10001BBA0(v148, v149);
LABEL_37:
            v45 = v142;
            goto LABEL_19;
          }

          v98 = (*(v97 + 88))(v95, v96);
          if (v98 == v129)
          {
            (*(v97 + 96))(v95, v96);
            v124 = *(v95 + 1);
            v125 = *(sub_1000F5104(&qword_10093E198, qword_10079C1A8) + 64);
            v99 = v133;
            REMHashtagLabelCollection.init(labels:)();
            REMHashtagLabelCollection.union(_:)();
            v146 = 0;
            v100 = *v128;
            v123 = v100;
            v101 = v135;
            v100(v99, v135);
            v102 = v141;
            v100(v141, v101);
            v103 = *v127;
            v104 = v102;
            v105 = v102;
            v106 = v138;
            (*v127)(v105, v138, v101);
            REMHashtagLabelCollection.init(labels:)();
            REMHashtagLabelCollection.union(_:)();

            sub_10001BBA0(v148, v149);
            v107 = v99;
            a3 = v144;
            v108 = v123;
            v123(v107, v101);
            v108(v104, v101);
            v103(v104, v106, v101);
            v7 = v146;
            v109 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
            (*(*(v109 - 8) + 8))(&v145[v125], v109);
            goto LABEL_37;
          }

          if (v98 == v122)
          {
            goto LABEL_32;
          }

          v45 = v142;
          if (v98 != v121)
          {
            goto LABEL_49;
          }

          sub_10001BBA0(v148, v149);
        }

LABEL_19:
        ++v68;
        if (v11 == v45)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
    }
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_49:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_100036394(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = (*(a2 + 8))(ObjectType, a2);
  v6 = v5;
  result = 0;
  if (v5 >> 60 != 15)
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100036664();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100031A14(v4, v6);
    return v8;
  }

  return result;
}

uint64_t sub_1000365FC()
{
  v1 = [v0 hashtagLabelsInCustomSmartListFilterCache];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100036664()
{
  result = qword_10094CBD0;
  if (!qword_10094CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CBD0);
  }

  return result;
}

uint64_t sub_1000366B8(void *a1)
{
  v2 = sub_1000F5104(&qword_10094CBF8, &unk_1007B22B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v9 - v5;
  sub_10000F61C(a1, a1[3]);
  sub_10003693C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  HIBYTE(v9) = 0;
  sub_100036990(&qword_10093EEF0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v10;
  type metadata accessor for REMFetchResultToken_Codable();
  HIBYTE(v9) = 1;
  sub_1000369FC(&qword_10094CC08, &type metadata accessor for REMFetchResultToken_Codable, &protocol conformance descriptor for REMFetchResultToken_Codable);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000607C(a1);
  return v8;
}

uint64_t sub_100036910@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000366B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_10003693C()
{
  result = qword_10094CC00;
  if (!qword_10094CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CC00);
  }

  return result;
}

uint64_t sub_100036990(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&unk_10093B300, &unk_100797780);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000369FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100036A44(void *a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v321 = a4;
  v312 = a2;
  v322 = a1;
  v5 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v309 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v308 = &v303 - v7;
  v318 = type metadata accessor for REMManualOrdering.Predefined();
  v317 = *(v318 - 8);
  __chkstk_darwin(v318, v8);
  v316 = &v303 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMManualOrdering.ManualOrderingID();
  v315 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v303 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  v324 = *&v328[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v328, v14);
  v327 = (&v303 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16, v17);
  v313 = (&v303 - v18);
  __chkstk_darwin(v19, v20);
  v314 = (&v303 - v21);
  v310 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v310, v22);
  v311 = &v303 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v319, v24);
  v320 = &v303 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for REMAccountsListDataView.Model.Account();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26, v28);
  v30 = &v303 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v32);
  v34 = &v303 - v33;
  if (REMAccountsListDataView.FetchOptions.fetchOrderedPinnedLists.getter())
  {
    v307 = a3;
    v35 = REMAccountsListDataView.FetchOptions.fetchAccounts.getter();
    v306 = v13;
    if (v35)
    {
      v304 = v5;
      v305 = v10;
      v43 = 0;
      isa = v321->super.isa;
      v45 = *(v321->super.isa + 2);
      v326 = v27 + 16;
      v325 = (v27 + 8);
      do
      {
        if (v45 == v43)
        {
          return;
        }

        if (v43 >= *(isa + 2))
        {
          __break(1u);
          goto LABEL_106;
        }

        (*(v27 + 16))(v34, isa + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v43++, v26);
        v46 = REMAccountsListDataView.Model.Account.account.getter();
        v47 = [v46 capabilities];

        LOBYTE(v46) = [v47 supportsPinnedLists];
        (*(v27 + 8))(v34, v26);
      }

      while ((v46 & 1) == 0);
    }

    else
    {
      v48 = sub_10003A1B8();
      if (!v48)
      {
        return;
      }

      v304 = v5;
      v305 = v10;
    }

    if (REMAccountsListDataView.FetchOptions.fetchAccounts.getter())
    {
      v49 = v321->super.isa;
      v50 = &_swiftEmptyArrayStorage;
      v334[0] = &_swiftEmptyArrayStorage;
      v51 = *(v49 + 2);
      v34 = v323;
      if (!v51)
      {
        goto LABEL_17;
      }

      v52 = 0;
      v53 = (v27 + 8);
      do
      {
        if (v52 >= *(v49 + 2))
        {
          goto LABEL_107;
        }

        (*(v27 + 16))(v30, v49 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v52, v26);
        sub_100038638(v334);
        if (v34)
        {

          (*v53)(v30, v26);
          v334[0], v296, v297, v298, v299, v300, v301, v302;
          __break(1u);
          return;
        }

        ++v52;
        (*v53)(v30, v26);
      }

      while (v51 != v52);
      while (1)
      {
        v50 = v334[0];
LABEL_17:
        v54 = v324;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_10003935C(v50);
        }

        v55 = *v50->clientIdentity;
        v56 = (v54->dataAccessRequestsWriter[2] + 32) & ~v54->dataAccessRequestsWriter[2];
        v321 = v50;
        v326 = v56;
        v334[0] = (v50 + v56);
        v334[1] = v55;
        sub_10003954C(v334);
        v323 = v34;
        v57 = static REMSmartListType.manualOrderablePredefinedSmartListTypes.getter();
        v27 = *(v57 + 16);
        if (!v27)
        {
          break;
        }

        v34 = 0;
        v325 = (v57 + 32);
        v58 = &v54->coreSuggestionsHandler[10];
        v59 = &_swiftEmptyArrayStorage;
        v60 = v57;
        while (v34 < *(v57 + 16))
        {
          v61 = v325[v34];
          *v327 = v61;
          (*v58)();
          v62 = v61;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_100039334(0, *v59->clientIdentity + 1, 1, v59);
          }

          v64 = *v59->clientIdentity;
          v63 = *&v59->clientIdentity[8];
          if (v64 >= v63 >> 1)
          {
            v59 = sub_100039334((v63 > 1), v64 + 1, 1, v59);
          }

          ++v34;
          *v59->clientIdentity = v64 + 1;
          (*&v324->clientIdentity[16])(v59 + v326 + *&v324->storeProvider[10] * v64, v327, v328);
          v57 = v60;
          if (v27 == v34)
          {
            goto LABEL_35;
          }
        }

LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        v127 = &_swiftEmptyArrayStorage;
LABEL_109:
        v27, v36, v37, v38, v39, v40, v41, v42;
        v281 = v326;
        if (v326 >> 62)
        {
          v295 = v326;
          v27 = _CocoaArrayWrapper.endIndex.getter();
          v281 = v295;
          if (v27)
          {
LABEL_111:
            v84 = 0;
            v325 = (v281 & 0xC000000000000001);
            v321 = (v281 & 0xFFFFFFFFFFFFFF8);
            LODWORD(v320) = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
            v126 = &v324->coreSuggestionsHandler[10];
            v128 = &v324->clientIdentity[16];
            v124 = &_swiftEmptyArrayStorage;
            while (1)
            {
              if (v325)
              {
                v282 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v283 = (v84 + 1);
                if (__OFADD__(v84, 1))
                {
                  goto LABEL_126;
                }
              }

              else
              {
                if (v84 >= *v321->clientIdentity)
                {
                  goto LABEL_127;
                }

                v282 = *(v281 + 8 * v84 + 32);
                v283 = (v84 + 1);
                if (__OFADD__(v84, 1))
                {
                  goto LABEL_126;
                }
              }

              v284 = v313;
              *v313 = v282;
              (*v126)(v284, v320, v328);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v124 = sub_100039334(0, *v124->clientIdentity + 1, 1, v124);
              }

              v286 = *v124->clientIdentity;
              v285 = *&v124->clientIdentity[8];
              if (v286 >= v285 >> 1)
              {
                v124 = sub_100039334((v285 > 1), v286 + 1, 1, v124);
              }

              *v124->clientIdentity = v286 + 1;
              (*&v324->clientIdentity[16])(v124 + ((v324->dataAccessRequestsWriter[2] + 32) & ~v324->dataAccessRequestsWriter[2]) + *&v324->storeProvider[10] * v286, v313, v328);
              ++v84;
              v34 = v323;
              v281 = v326;
              if (v283 == v27)
              {
                goto LABEL_137;
              }
            }
          }
        }

        else
        {
          v27 = *((v326 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v27)
          {
            goto LABEL_111;
          }
        }

        v124 = &_swiftEmptyArrayStorage;
LABEL_137:
        v281, v274, v275, v276, v277, v278, v279, v280;
        v334[0] = v127;
        sub_100013504(v124);
      }

      v59 = &_swiftEmptyArrayStorage;
LABEL_35:
      v57, v36, v37, v38, v39, v40, v41, v42;
      v334[0] = v59;
      sub_100013504(v321);
      v321 = v334[0];
      v78 = v317;
      v79 = v316;
      v80 = v318;
      (*(v317 + 104))(v316, enum case for REMManualOrdering.Predefined.pinned(_:), v318);
      v81 = v306;
      REMManualOrdering.Predefined.manualOrderingID.getter();
      (*(v78 + 8))(v79, v80);
      if (qword_1009367D8 != -1)
      {
        swift_once();
      }

      v82 = v322;
      v83 = sub_100013674(qword_1009752E8);
      if (!v83)
      {
        (*(v315 + 8))(v81, v305);
        return;
      }

      v84 = v83;
      v85 = [v83 remObjectID];
      if (!v85)
      {
        (*(v315 + 8))(v81, v305);

        return;
      }

      v86 = v85;
      v27 = type metadata accessor for REMCDManualSortHint();
      LOWORD(v34) = REMManualOrdering.ManualOrderingID.listType.getter();
      v87 = REMManualOrdering.ManualOrderingID.listID.getter();
      v328 = v88;
      if (qword_1009367E0 != -1)
      {
        swift_once();
      }

      v89 = qword_1009752F0;
      v327 = v86;
      v326 = qword_1009752F0;
      if (v34 == 1)
      {
        v90 = v328;

        v91._countAndFlagsBits = v87;
        v91._object = v90;
        v92 = REMSmartListType.init(stringValue:)(v91);
        if (v92)
        {
          v93 = v92;
          v94 = sub_100139BE4(v92, v86, v89);
          if (v94)
          {
            v95 = v94;
            v334[0] = 0;
            v96 = [v82 existingObjectWithID:v94 error:v334];
            if (v96)
            {
              v97 = v96;
              v98 = v334[0];

              v99 = swift_dynamicCastClass();
              if (v99)
              {
                v107 = v99;
                v328, v100, v101, v102, v103, v104, v105, v106;
                v108 = &selRef_persistentStoreForIdentifier_;
                v109 = v107;
                goto LABEL_89;
              }
            }

            else
            {
              v115 = v334[0];
              _convertNSErrorToError(_:)();

              swift_willThrow();

              v323 = 0;
            }

            v82 = v322;
            v86 = v327;
          }

          else
          {
          }
        }
      }

      v124 = v86;
      v134 = [v82 persistentStoreOfAccountWithAccountID:v124];
      if (v134)
      {
        v135 = v134;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v136 = swift_allocObject();
        *(v136 + 16) = xmmword_1007953F0;
        *(v136 + 32) = v135;
      }

      else
      {
        v136 = 0;
      }

      v137 = sub_1000398EC(v34, v87, v328, v327);
      v128 = [objc_allocWithZone(NSFetchRequest) init];
      v138 = [swift_getObjCClassFromMetadata() entity];
      [v128 setEntity:v138];

      if (v136)
      {
        sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
        v139.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v139.super.isa = 0;
      }

      [v128 setAffectedStores:v139.super.isa];

      [v128 setPredicate:v137];
      v136, v140, v141, v142, v143, v144, v145, v146;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v126 = swift_allocObject();
      *(v126 + 1) = xmmword_1007953F0;
      if (qword_100935AA8 != -1)
      {
        goto LABEL_128;
      }

      goto LABEL_76;
    }

    v65 = v320;
    swift_storeEnumTagMultiPayload();
    v66 = sub_10001F6F4();
    sub_100025434(v65, _s10PredicatesOMa_1);
    v67 = v323;
    if (qword_100936528 != -1)
    {
      swift_once();
    }

    v68 = sub_100405438(0, qword_100975238, 0, v66);
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v69 = v67;
    v70 = NSManagedObjectContext.fetch<A>(_:)();

    if (!v69)
    {
      v27 = sub_1000271D0(v70, v312);
      v34 = 0;
      v70, v71, v72, v73, v74, v75, v76, v77;
      v110 = v311;
      swift_storeEnumTagMultiPayload();
      v111 = sub_10002DDAC();
      sub_100025434(v110, _s10PredicatesOMa_3);
      sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
      v112 = [objc_allocWithZone(NSFetchRequest) init];
      v113 = [swift_getObjCClassFromMetadata() entity];
      [v112 setEntity:v113];

      [v112 setAffectedStores:0];
      [v112 setPredicate:v111];
      v114 = NSManagedObjectContext.fetch<A>(_:)();

      v116 = sub_1000303FC(v114, v312);
      v114, v117, v118, v119, v120, v121, v122, v123;
      if (v27 >> 62)
      {
        v124 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v124 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v326 = v116;
      v323 = 0;
      if (!v124)
      {
        goto LABEL_108;
      }

      v84 = 0;
      v325 = (v27 & 0xC000000000000001);
      v321 = (v27 & 0xFFFFFFFFFFFFFF8);
      LODWORD(v320) = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
      v125 = &v324->coreSuggestionsHandler[10];
      v126 = &v324->clientIdentity[16];
      v127 = &_swiftEmptyArrayStorage;
      v128 = v27;
      while (1)
      {
        if (v325)
        {
          v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v130 = (v84 + 1);
          if (__OFADD__(v84, 1))
          {
            goto LABEL_124;
          }
        }

        else
        {
          if (v84 >= *v321->clientIdentity)
          {
            goto LABEL_125;
          }

          v129 = *(v27 + 8 * v84 + 32);
          v130 = (v84 + 1);
          if (__OFADD__(v84, 1))
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            swift_once();
LABEL_76:
            v147 = qword_100974C08;
            *(v126 + 4) = qword_100974C08;
            sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
            v148 = v147;
            v149 = Array._bridgeToObjectiveC()().super.isa;
            v126, v150, v151, v152, v153, v154, v155, v156;
            [v128 setSortDescriptors:v149];

            v157 = v323;
            v158 = NSManagedObjectContext.fetch<A>(_:)();
            v166 = v157;
            v81 = v306;
            if (v157)
            {

              v328, v167, v168, v169, v170, v171, v172, v173;
              (*(v315 + 8))(v81, v305);
              goto LABEL_96;
            }

            v323 = 0;
            if (!(v158 >> 62))
            {
              if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_80;
              }

LABEL_130:
              v158, v159, v160, v161, v162, v163, v164, v165;

              v328, v288, v289, v290, v291, v292, v293, v294;
              (*(v315 + 8))(v81, v305);
              return;
            }

            v166 = v158;
            v287 = _CocoaArrayWrapper.endIndex.getter();
            v158 = v166;
            if (!v287)
            {
              goto LABEL_130;
            }

LABEL_80:
            if ((v158 & 0xC000000000000001) != 0)
            {
              v174 = v158;
              v175 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_83:
              v325 = v175;
              v174, v176, v177, v178, v179, v180, v181, v182;
              if (v34 == 1)
              {
                v109 = v325;
                v183 = [v325 remObjectID];
                if (v183)
                {
                  v184 = v183;
                  v185 = [v109 objectID];
                  v186 = type metadata accessor for RDPredefinedObjectKey();
                  v187 = objc_allocWithZone(v186);
                  *&v187[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = v124;
                  *&v187[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v184;
                  v329.receiver = v187;
                  v329.super_class = v186;
                  v324 = v124;
                  v322 = v184;
                  v188 = objc_msgSendSuper2(&v329, "init");
                  v189 = v309;
                  v190 = v308;
                  (*(v309 + 104))(v308, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v304);
                  v191 = swift_allocObject();
                  *(v191 + 16) = v185;
                  *(v191 + 24) = v188;
                  v192 = v185;
                  v193 = v188;
                  dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

                  v109 = v325;

                  v328, v194, v195, v196, v197, v198, v199, v200;
                  (*(v189 + 8))(v190, v304);
                }

                else
                {

                  v328, v208, v209, v210, v211, v212, v213, v214;
                }

                v108 = &selRef_persistentStoreForIdentifier_;
              }

              else
              {

                v328, v201, v202, v203, v204, v205, v206, v207;
                v108 = &selRef_persistentStoreForIdentifier_;
                v109 = v325;
              }

LABEL_89:
              v27 = v81;
              v215 = [objc_opt_self() sharedConfiguration];
              v216 = [v215 manualSortHintLastAccessedUpdatePolicy];

              v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v219 = v218;

              v220._countAndFlagsBits = v217;
              v220._object = v219;
              v221 = _findStringSwitchCase(cases:string:)(&off_1008DD3F0, v220);
              v219, v222, v223, v224, v225, v226, v227, v228;
              if (v221 >= 3)
              {
                LOBYTE(v221) = 2;
              }

              v229 = [v109 v108[106]];
              v230 = v323;
              v128 = v327;
              if (v229)
              {
                v231 = v229;
                v232 = [v229 description];

                v233 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v235 = v234;
              }

              else
              {
                v235 = 0xE300000000000000;
                v233 = 7104878;
              }

              v236 = swift_allocObject();
              *(v236 + 16) = v233;
              *(v236 + 24) = v235;
              sub_1002D74D4(1, v221, sub_10013AF94, v236);

              sub_100226C14(v335);
              if (v230)
              {
                (*(v315 + 8))(v27, v305);

LABEL_96:
                if (qword_100936260 != -1)
                {
                  swift_once();
                }

                v237 = type metadata accessor for Logger();
                sub_100006654(v237, qword_100948A78);
                swift_errorRetain();
                v238 = Logger.logObject.getter();
                v239 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v238, v239))
                {
                  v240 = swift_slowAlloc();
                  v241 = swift_slowAlloc();
                  v334[0] = v241;
                  *v240 = 136315138;
                  swift_getErrorValue();
                  v242 = Error.rem_errorDescription.getter();
                  v244 = v243;
                  v245 = sub_10000668C(v242, v243, v334);
                  v244, v246, v247, v248, v249, v250, v251, v252;
                  *(v240 + 4) = v245;
                  _os_log_impl(&_mh_execute_header, v238, v239, "Failed to fetch manual sort hint of pinned lists {error: %s}", v240, 0xCu);
                  sub_10000607C(v241);
                }

                else
                {
                }

                return;
              }

              v325 = v109;
              v166 = v335[0];
              if (!v335[0])
              {
                (*(v315 + 8))(v27, v305);

                return;
              }

              v323 = v335[1];
              v324 = v335[2];
              v326 = v335[3];
              v328 = v335[4];
              v84 = v84;
              sub_1006B038C();
              v81 = v253;
              v254 = type metadata accessor for RDManualSortIDCache();
              v147 = v254;
              if (qword_100936508 != -1)
              {
                goto LABEL_133;
              }
            }

            else
            {
              if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v174 = v158;
                v175 = *(v158 + 32);
                goto LABEL_83;
              }

              __break(1u);
LABEL_133:
              v254 = swift_once();
            }

            v256 = qword_10094C220;
            __chkstk_darwin(v254, v255);
            *(&v303 - 4) = v147;
            *(&v303 - 3) = v81;
            *(&v303 - 2) = v256;
            OS_dispatch_queue.sync<A>(execute:)();
            v257 = v334[0];
            type metadata accessor for RDManualSortIDAdapter();
            swift_initStackObject();
            v258 = sub_100214ECC(v257, v81, 0);

            v259 = v321;
            sub_1004BECC0(v166, v128, v258, v321);
            v166, v260, v261, v262, v263, v264, v265, v266;

            v330 = v323;
            sub_1000050A4(&v330, &qword_100939A08, &unk_100796A80);
            v331 = v324;
            sub_1000050A4(&v331, &unk_100945230, &qword_1007A2590);
            v332 = v326;
            sub_1000050A4(&v332, &qword_10093E9C0, qword_100794F90);
            v333 = v328;
            sub_1000050A4(&v333, &unk_100945240, &qword_1007A0A70);

            v259, v267, v268, v269, v270, v271, v272, v273;

            (*(v315 + 8))(v27, v305);
            return;
          }
        }

        v131 = v314;
        *v314 = v129;
        (*v125)(v131, v320, v328);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_100039334(0, *v127->clientIdentity + 1, 1, v127);
        }

        v133 = *v127->clientIdentity;
        v132 = *&v127->clientIdentity[8];
        if (v133 >= v132 >> 1)
        {
          v127 = sub_100039334((v132 > 1), v133 + 1, 1, v127);
        }

        *v127->clientIdentity = v133 + 1;
        (*&v324->clientIdentity[16])(v127 + ((v324->dataAccessRequestsWriter[2] + 32) & ~v324->dataAccessRequestsWriter[2]) + *&v324->storeProvider[10] * v133, v314, v328);
        ++v84;
        v34 = v323;
        v27 = v128;
        if (v130 == v124)
        {
          goto LABEL_109;
        }
      }
    }
  }
}

uint64_t sub_1000385C0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_1000385F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100038638(_TtC7remindd19RDXPCStorePerformer **a1)
{
  v2 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v71[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for REMAccountsListDataView.Model.Group();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v77 = &v71[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  v105 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v100 = &v71[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14, v15);
  v99 = &v71[-v16];
  __chkstk_darwin(v17, v18);
  v78 = &v71[-v19];
  __chkstk_darwin(v20, v21);
  v87 = &v71[-v22];
  v86 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
  v88 = *(v86 - 8);
  __chkstk_darwin(v86, v23);
  v85 = &v71[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_100038F98();
  v84 = *v25->clientIdentity;
  if (!v84)
  {
LABEL_36:
    v25, v26, v27, v28, v29, v30, v31, v32;
    return;
  }

  v33 = 0;
  v83 = v88 + 16;
  v82 = v88 + 88;
  v81 = enum case for REMAccountsListDataView.Model.AccountChild.list(_:);
  v76 = enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:);
  v75 = enum case for REMAccountsListDataView.Model.AccountChild.group(_:);
  v80 = (v88 + 96);
  v74 = (v8 + 32);
  v95 = v3 + 88;
  v96 = v3 + 16;
  v94 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
  v90 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
  v93 = (v3 + 96);
  v91 = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
  v102 = v105 + 32;
  v103 = (v105 + 104);
  v72 = (v8 + 8);
  v92 = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
  v97 = v2;
  v98 = a1;
  v104 = v11;
  v73 = v7;
  v79 = v25;
  while (v33 < *v25->clientIdentity)
  {
    v37 = v88;
    v38 = v25 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v39 = *(v88 + 72);
    v89 = v33;
    v41 = v85;
    v40 = v86;
    (*(v88 + 16))(v85, &v38[v39 * v33], v86);
    v42 = (*(v37 + 88))(v41, v40);
    if (v42 == v81)
    {
      (*v80)(v41, v40);
      v43 = *v41;
      *v87 = *v41;
      (*v103)();
      v44 = *a1;
      v45 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_100039334(0, *v44->clientIdentity + 1, 1, v44);
      }

      v47 = *v44->clientIdentity;
      v46 = *&v44->clientIdentity[8];
      if (v47 >= v46 >> 1)
      {
        v44 = sub_100039334((v46 > 1), v47 + 1, 1, v44);
      }

      *v44->clientIdentity = v47 + 1;
      v34 = v44 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v47;
      v35 = *(v105 + 32);
      v36 = v87;
LABEL_4:
      v35(v34, v36, v104);
      *a1 = v44;
      goto LABEL_5;
    }

    if (v42 == v76)
    {
      (*v80)(v41, v40);
      v48 = *v41;
      *v78 = *v41;
      (*v103)();
      v44 = *a1;
      v49 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_100039334(0, *v44->clientIdentity + 1, 1, v44);
      }

      v51 = *v44->clientIdentity;
      v50 = *&v44->clientIdentity[8];
      if (v51 >= v50 >> 1)
      {
        v44 = sub_100039334((v50 > 1), v51 + 1, 1, v44);
      }

      *v44->clientIdentity = v51 + 1;
      v34 = v44 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v51;
      v35 = *(v105 + 32);
      v36 = v78;
      goto LABEL_4;
    }

    if (v42 != v75)
    {
      goto LABEL_40;
    }

    (*v80)(v41, v40);
    (*v74)(v77, v41, v7);
    v59 = sub_10049FBEC();
    v101 = *v59->clientIdentity;
    if (v101)
    {
      v60 = 0;
      while (v60 < *v59->clientIdentity)
      {
        (*(v3 + 16))(v6, v59 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v60, v2);
        v62 = (*(v3 + 88))(v6, v2);
        if (v62 == v94)
        {
          (*v93)(v6, v2);
          v63 = *v6;
          *v99 = *v6;
          (*v103)();
          v64 = *a1;
          v65 = v63;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_100039334(0, *v64->clientIdentity + 1, 1, v64);
          }

          v67 = *v64->clientIdentity;
          v66 = *&v64->clientIdentity[8];
          v68 = v67 + 1;
          if (v67 >= v66 >> 1)
          {
            v64 = sub_100039334((v66 > 1), v67 + 1, 1, v64);
          }

          v61 = v99;
        }

        else
        {
          if (v62 != v90)
          {
            goto LABEL_39;
          }

          (*v93)(v6, v2);
          v69 = *v6;
          *v100 = *v6;
          (*v103)();
          v64 = *a1;
          v65 = v69;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_100039334(0, *v64->clientIdentity + 1, 1, v64);
          }

          v67 = *v64->clientIdentity;
          v70 = *&v64->clientIdentity[8];
          v68 = v67 + 1;
          if (v67 >= v70 >> 1)
          {
            v64 = sub_100039334((v70 > 1), v67 + 1, 1, v64);
          }

          v61 = v100;
        }

        ++v60;

        *v64->clientIdentity = v68;
        (*(v105 + 32))(v64 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v67, v61, v104);
        v2 = v97;
        a1 = v98;
        *v98 = v64;
        if (v101 == v60)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      break;
    }

LABEL_35:
    v59, v52, v53, v54, v55, v56, v57, v58;
    v7 = v73;
    (*v72)(v77, v73);
LABEL_5:
    v25 = v79;
    v33 = v89 + 1;
    if (v89 + 1 == v84)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_39:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_40:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

_TtC7remindd19RDXPCStorePerformer *sub_100038F98()
{
  v0 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v45 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v5);
  v7 = (&v35 - v6);
  __chkstk_darwin(v8, v9);
  v46 = &v35 - v10;
  v11 = REMAccountsListDataView.Model.Account.children.getter();
  v43 = *(v11 + 16);
  if (!v43)
  {
    v20 = &_swiftEmptyArrayStorage;
LABEL_20:
    v11, v12, v13, v14, v15, v16, v17, v18;
    return v20;
  }

  v19 = 0;
  v40 = v1 + 88;
  v41 = v1 + 16;
  v39 = enum case for REMAccountsListDataView.Model.AccountChild.list(_:);
  v36 = enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:);
  v35 = enum case for REMAccountsListDataView.Model.AccountChild.group(_:);
  v37 = (v1 + 8);
  v38 = (v1 + 96);
  v44 = (v1 + 32);
  v20 = &_swiftEmptyArrayStorage;
  v42 = v11;
  while (v19 < *(v11 + 16))
  {
    v21 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v22 = *(v1 + 72);
    v23 = *(v1 + 16);
    v24 = v46;
    v23(v46, v11 + v21 + v22 * v19, v0);
    v23(v7, v24, v0);
    v25 = (*(v1 + 88))(v7, v0);
    if (v25 == v39)
    {
      (*v38)(v7, v0);
      v26 = *v7;
      v27 = [*v7 isPinned];

      if (v27)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v25 != v36)
      {
        if (v25 != v35)
        {
          goto LABEL_22;
        }

        (*v37)(v7, v0);
LABEL_14:
        v30 = *v44;
        (*v44)(v45, v46, v0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100030FA0(0, *v20->clientIdentity + 1, 1);
          v20 = v47;
        }

        v33 = *v20->clientIdentity;
        v32 = *&v20->clientIdentity[8];
        if (v33 >= v32 >> 1)
        {
          sub_100030FA0((v32 > 1), v33 + 1, 1);
          v20 = v47;
        }

        *v20->clientIdentity = v33 + 1;
        v30(v20 + v21 + v33 * v22, v45, v0);
        goto LABEL_4;
      }

      (*v38)(v7, v0);
      v28 = *v7;
      v29 = [*v7 isPinned];

      if (v29)
      {
        goto LABEL_14;
      }
    }

    (*v37)(v46, v0);
LABEL_4:
    ++v19;
    v11 = v42;
    if (v43 == v19)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100039370(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *&a4->clientIdentity[8];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->clientIdentity;
  if (v11 <= v12)
  {
    v13 = *a4->clientIdentity;
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000F5104(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *v17->clientIdentity = v12;
  *&v17->clientIdentity[8] = 2 * ((result - v16) / v15);
LABEL_19:
  v20 = a7(0);
  v25 = *(v20 - 1);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = a4 + v26;
  if (v9)
  {
    if (v17 < a4 || v17 + v26 >= &v27[*(v25 + 72) * v12])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v27, v19, v20, v21, v22, v23, v24;
  return v17;
}

void sub_10003954C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for REMAccountsListDataView.Model.PinnedList();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *v6->clientIdentity = v5;
      }

      v7 = *(type metadata accessor for REMAccountsListDataView.Model.PinnedList() - 8);
      v15[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v15[1] = v5;
      sub_1004A18B0(v15, v16, a1, v4);
      *v6->clientIdentity = 0;
      v6, v8, v9, v10, v11, v12, v13, v14;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1004A0D6C(0, v2, 1, a1);
  }
}

void sub_10003978C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000397AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = REMCacheContext.object(forKey:)();
  swift_beginAccess();
  v5 = *(a2 + 16);
  *(a2 + 16) = v4;
}

unint64_t sub_10003980C()
{
  result = qword_1009391E0;
  if (!qword_1009391E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009391E0);
  }

  return result;
}

uint64_t sub_100039860(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938E70, &unk_100797230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000398EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v36[-v10];
  v12 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v12 == 2)
    {
      sub_1000F5104(&unk_100939E20, qword_100795830);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100791340;
      KeyPath = swift_getKeyPath();
      sub_100139FA0(a1, a2, a3, a4);
      v20 = sub_10003A018(KeyPath, a1);

      *(v13 + 32) = v20;
      v21 = swift_getKeyPath();
      v22 = sub_10003A02C(v21, a2, a3);

      *(v13 + 40) = v22;
    }

    else
    {
      sub_1000F5104(&unk_100939E20, qword_100795830);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100791300;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      v30 = swift_getKeyPath();
      v31 = sub_1003EDA7C(v30);

      *(inited + 32) = v31;
      v32 = swift_getKeyPath();
      v33 = sub_1003EDA7C(v32);

      *(inited + 40) = v33;
      *(v13 + 32) = sub_100025060(inited);
    }
  }

  else
  {
    if (v12)
    {
      sub_1000F5104(&unk_100939E20, qword_100795830);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100791320;
      v23 = swift_getKeyPath();

      v24 = sub_10003A018(v23, a1);

      *(v13 + 32) = v24;
      v25 = swift_getKeyPath();
      v17 = sub_1003EDA68(v25, a2, a3, 6);
    }

    else
    {
      sub_1000F5104(&unk_100939E20, qword_100795830);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100791320;
      v14 = swift_getKeyPath();

      v15 = sub_10003A018(v14, a1);

      *(v13 + 32) = v15;
      v16 = swift_getKeyPath();
      v17 = sub_10003A02C(v16, a2, a3);
    }

    *(v13 + 40) = v17;
    v18 = swift_getKeyPath();
    v26 = [a4 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
    v28 = sub_10003A040(v18, v11);

    *(v13 + 48) = v28;
  }

  sub_1000F5104(&unk_100939E20, qword_100795830);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_100791300;
  *(v34 + 32) = sub_10001035C(0);
  v37 = v34;
  sub_10003A170(v13);
  return sub_10000C2B0();
}

id sub_100039CE0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 listTypeRawValue];
  *a2 = result;
  return result;
}

id sub_100039DE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

id sub_100039E40(uint64_t a1, __int16 a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791340;

  v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v9)
  {
    v10 = v8;
    v11 = v9;

    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = v10;
    *(v7 + 40) = v11;
    *(v7 + 88) = &type metadata for Int16;
    *(v7 + 64) = a2;
    v12 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v7, v14, v15, v16, v17, v18, v19, v20;
    v21 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

    return v21;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v23._object = 0x80000001007EC120;
    v23._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v23);
    sub_1000F5104(a3, a4);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10003A064(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  if (!*(result + 16))
  {
LABEL_10:
    result, v10, v11, v12, v13, v14, v15, v16;
    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000F5104(a2, a3);
  swift_arrayInitWithCopy();
  result, v17, v18, v19, v20, v21, v22, v23;
  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v24 = *(v5 + 16);
  v25 = __OFADD__(v24, v4);
  v26 = v24 + v4;
  if (!v25)
  {
    *(v5 + 16) = v26;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void **sub_10003A188(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = v3;
  return a1;
}

id sub_10003A1B8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &aBlock[-1] - v9;
  Date.init()();
  v11 = [v0 storeController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 inMemoryPrimaryActiveCKAccountREMObjectID];
    if (qword_100935F40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_100944290);
    (*(v3 + 16))(v6, v10, v2);
    static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
    static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 68157952;
      *(v17 + 4) = 4;
      *(v17 + 8) = 2048;
      Date.rem_elapsedInMilliseconds.getter();
      v19 = v18;
      v20 = *(v3 + 8);
      v20(v6, v2);
      *(v17 + 10) = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "primaryActiveCloudKitAccountREMObjectID: {elapsed: %.*f ms}", v17, 0x12u);

      v20(v10, v2);
    }

    else
    {

      v31 = *(v3 + 8);
      v31(v6, v2);
      v31(v10, v2);
    }

    return v13;
  }

  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_100944290);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "primaryActiveCloudKitAccountREMObjectID: Cannot get the RDStoreController from RDStoreControllerManagedObjectContext. Fallback to call REMCDAccount._groundTruth_primaryActiveCloudKitAccountInContext(in:).", v24, 2u);
  }

  v34 = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = &v34;
  *(v25 + 24) = v1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1003AB824;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008EEFE8;
  v27 = _Block_copy(aBlock);
  v28 = v1;

  [v28 performBlockAndWait:v27];
  _Block_release(v27);
  (*(v3 + 8))(v10, v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v13 = v34;

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003A638()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10003A680(void *a1, void *a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v113 = &v108 - v7;
  v8 = _s10PredicatesOMa_3(0);
  *&v10 = __chkstk_darwin(v8, v9).n128_u64[0];
  v12 = (&v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = a1;
  v13 = [a1 persistentStoreOfAccountWithAccountID:{a2, v10}];
  if (v13)
  {
    v14 = v13;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1007953F0;
    *(v15 + 32) = v14;
  }

  else
  {
    v15 = 0;
  }

  *v12 = a2;
  swift_storeEnumTagMultiPayload();
  v16 = a2;
  v17 = sub_10002DDAC();
  sub_10003AF64(v12);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  v19 = [objc_allocWithZone(NSFetchRequest) init];
  v20 = [swift_getObjCClassFromMetadata() entity];
  v114 = v19;
  [v19 setEntity:v20];

  if (v15)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  v22 = v114;
  [v114 setAffectedStores:v21.super.isa];

  [v22 setPredicate:v17];
  v116 = _swiftEmptySetSingleton;

  sub_10003AFC0(v23);
  inited, v24, v25, v26, v27, v28, v29, v30;
  v31 = v116;
  v32 = sub_1002133B0(v116);
  v31, v33, v34, v35, v36, v37, v38, v39;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v32, v41, v42, v43, v44, v45, v46, v47;
  [v22 setPropertiesToFetch:isa];
  v15, v48, v49, v50, v51, v52, v53, v54;

  swift_setDeallocating();
  swift_arrayDestroy();
  v55 = NSManagedObjectContext.fetch<A>(_:)();
  v56 = v2;
  if (v2)
  {

    return;
  }

  v57 = v55;
  v112 = sub_10003AFEC(&_swiftEmptyArrayStorage);
  if (!(v57 >> 62))
  {
    v115 = (v57 & 0xFFFFFFFFFFFFFF8);
    v65 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v111 = v17;
    if (v65)
    {
      goto LABEL_11;
    }

LABEL_40:
    v57, v58, v59, v60, v61, v62, v63, v64;

    return;
  }

LABEL_43:
  v115 = (v57 & 0xFFFFFFFFFFFFFF8);
  v65 = _CocoaArrayWrapper.endIndex.getter();
  v111 = v17;
  if (!v65)
  {
    goto LABEL_40;
  }

LABEL_11:
  v66 = 0;
  v17 = (v57 & 0xC000000000000001);
  v110 = v56;
  while (2)
  {
    v56 = v66;
    while (1)
    {
      if (v17)
      {
        v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v56 >= v115[2])
        {
          goto LABEL_42;
        }

        v67 = *(v57 + 8 * v56 + 32);
      }

      v68 = v67;
      v66 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v69 = [v67 smartListType];
      if (v69)
      {
        v70 = v69;
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        v74._countAndFlagsBits = v71;
        v74._object = v73;
        v75 = REMSmartListType.init(stringValue:)(v74);
        if (v75)
        {
          break;
        }
      }

      ++v56;
      if (v66 == v65)
      {
        goto LABEL_40;
      }
    }

    v76 = v75;
    v77 = [v68 smartListType];
    if (v77 && (v78 = v77, v79 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v81 = v80, v78, v82._countAndFlagsBits = v79, v82._object = v81, (v83 = REMSmartListType.init(stringValue:)(v82)) != 0))
    {
      v84 = v83;
      v85 = [v68 pinnedDate];
      if (v85)
      {
        v86 = v113;
        v87 = v85;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v88 = 0;
      }

      else
      {
        v88 = 1;
        v86 = v113;
      }

      v89 = type metadata accessor for Date();
      (*(*(v89 - 8) + 56))(v86, v88, 1, v89);
      sub_1000060C8(0, &qword_10093A230, REMSmartList_ptr);
      v108 = static REMSmartList.userDefinedVisibilityOfSmartList(with:pinnedDate:)();

      sub_1000050A4(v86, &unk_100938850, qword_100795AE0);
    }

    else
    {
      v108 = 0;
    }

    v90 = v76;
    v91 = v112;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v91;
    v109 = v90;
    v94 = sub_100393C70();
    v95 = *v91->clientIdentity;
    v96 = (v93 & 1) == 0;
    v97 = v95 + v96;
    if (__OFADD__(v95, v96))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      break;
    }

    v98 = v93;
    if (*&v91->clientIdentity[8] >= v97)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10037382C();
      }

      goto LABEL_35;
    }

    sub_10036AC00(v97, isUniquelyReferenced_nonNull_native);
    v99 = sub_100393C70();
    if ((v98 & 1) == (v100 & 1))
    {
      v94 = v99;
LABEL_35:
      v101 = v116;
      v112 = v116;
      if (v98)
      {
        v102 = v109;
        *(*&v116->clientIdentity[40] + 8 * v94) = v108;

        if (v66 != v65)
        {
          continue;
        }

        goto LABEL_40;
      }

      *&v116->storeProvider[8 * (v94 >> 6) + 2] |= 1 << v94;
      v103 = v108;
      v104 = v109;
      *(*&v101->clientIdentity[32] + 8 * v94) = v109;
      *(*&v101->clientIdentity[40] + 8 * v94) = v103;

      v105 = *v101->clientIdentity;
      v106 = __OFADD__(v105, 1);
      v107 = v105 + 1;
      if (!v106)
      {
        *v101->clientIdentity = v107;
        if (v66 != v65)
        {
          continue;
        }

        goto LABEL_40;
      }

      goto LABEL_46;
    }

    break;
  }

  type metadata accessor for REMSmartListType(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_10003AD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100791340;

  v6 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;

    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    *(v5 + 88) = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    *(v5 + 64) = a2;
    *(v5 + 72) = a3;
    v10 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v5, v12, v13, v14, v15, v16, v17, v18;
    v19 = [objc_opt_self() predicateWithFormat:v10 argumentArray:isa];

    return v19;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v21._object = 0x80000001007EC120;
    v21._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v21);
    sub_1000F5104(&qword_100946530, &qword_10079B260);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003AF64(uint64_t a1)
{
  v2 = _s10PredicatesOMa_3(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003AFEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943D88, &unk_1007A4540);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100364088(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10003B0D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100948B88, &unk_1007ACB98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003B148(uint64_t a1)
{
  v2 = type metadata accessor for REMAccountsListDataView.CachableProperty();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  sub_1001A6868(&qword_100943D90, &type metadata accessor for REMAccountsListDataView.CachableProperty, &protocol conformance descriptor for REMAccountsListDataView.CachableProperty);
  result = Set.init(minimumCapacity:)();
  v19 = result;
  if (v11)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_10037A43C(v10, v6);
      (*(v13 - 8))(v10, v2);
      v16 += v17;
      --v11;
    }

    while (v11);
    return v19;
  }

  return result;
}

unint64_t sub_10003B2E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&unk_100943D30, &unk_1007AAB90);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010364(v4, &v11, &unk_100943D50, &qword_1007A4528);
      v5 = v11;
      result = sub_10002B924(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100005EE0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10003B40C(uint64_t result, unint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  if (a3)
  {
    sub_10001BBA0(result, a2);

    a3, v4, v5, v6, v7, v8, v9, v10;
  }
}

void sub_10003B59C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&unk_100942EC0, &qword_1007AAB60);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    sub_100005EF0(*(a1 + 56) + 32 * v12, v34 + 8);
    *&v34[0] = v13;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v13;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v14 = v13;
    swift_dynamicCast();
    sub_100005EE0((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_100005EE0(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_100005EE0(v30, v31);
    v15 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~v7[v17 >> 6]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = v7[v18];
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~v7[v17 >> 6])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v23;
    *(v10 + 16) = v24;
    *(v10 + 32) = v25;
    sub_100005EE0(v31, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

_TtC7remindd19RDXPCStorePerformer *sub_10003B8F0(void *a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v318 = a2;
  v319 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v296 = &v292 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v10 - 8, v11);
  v303 = &v292 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v302 = &v292 - v15;
  v311 = type metadata accessor for Date();
  v16 = *(v311 - 8);
  *&v18 = __chkstk_darwin(v311, v17).n128_u64[0];
  v310 = &v292 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [v5 storeController];
  if (v20)
  {
    v301 = v6;
    v324 = &_swiftEmptyArrayStorage;
    v329 = 0;
    v330 = 0;
    v295 = v20;
    v21 = [v20 validPersistentStores];
    v316 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      goto LABEL_51;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v31 = 0;
      v315 = v22 & 0xC000000000000001;
      v314 = v22 & 0xFFFFFFFFFFFFFF8;
      v304 = (v16 + 1);
      v298 = v7 + 7;
      v297 = v7 + 6;
      v294 = v7 + 2;
      v293 = v7 + 1;
      *(&v32 + 1) = 3;
      v313 = xmmword_1007953F0;
      *&v32 = 134218754;
      v300 = v32;
      v299 = v5;
      v312 = v22;
      v309 = i;
      while (1)
      {
        if (v315)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= *(v314 + 16))
          {
            goto LABEL_50;
          }

          v33 = *(v22 + 8 * v31 + 32);
        }

        v7 = v33;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        v322 = v31 + 1;
        v34 = [v319 persistentHistoryTokens];
        sub_1000060C8(0, &qword_100939658, NSPersistentHistoryToken_ptr);
        v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = [v7 identifier];
        if (!v36)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        v37 = v36;

        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v48 = *(v35 + 16);
        v321 = v31;
        if (v48)
        {
          v49 = sub_100005F4C(v38, v40);
          v51 = v50;
          v40, v50, v52, v53, v54, v55, v56, v57;
          if (v51)
          {
            v65 = *(*(v35 + 56) + 8 * v49);
            v35, v66, v67, v68, v69, v70, v71, v72;
            v73 = objc_opt_self();
            v323 = v65;
            v74 = [v73 fetchHistoryAfterToken:v65];
            goto LABEL_18;
          }

          v75 = v35;
        }

        else
        {
          v35, v41, v42, v43, v44, v45, v46, v47;
          v75 = v40;
        }

        v75, v58, v59, v60, v61, v62, v63, v64;
        v76 = objc_opt_self();
        v77 = v310;
        static Date.distantPast.getter();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*v304)(v77, v311);
        v74 = [v76 fetchHistoryAfterDate:isa];

        v323 = 0;
LABEL_18:
        [v74 setResultType:5];
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v79 = swift_allocObject();
        *(v79 + 16) = v313;
        *(v79 + 32) = v7;
        v80 = v74;
        v81 = v7;
        v82 = Array._bridgeToObjectiveC()().super.isa;
        v79, v83, v84, v85, v86, v87, v88, v89;
        [v80 setAffectedStores:v82];

        v90 = sub_10003DCD4(&v329, v318, v5);
        (v90)(v80);

        *&v327 = 0;
        v91 = [v5 executeRequest:v80 error:&v327];
        v92 = v327;
        if (!v91)
        {
          v200 = v324;
          v201 = v327;
          v312, v202, v203, v204, v205, v206, v207, v208;
          v200, v209, v210, v211, v212, v213, v214, v215;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v216 = &v325;
LABEL_48:

          sub_10003E114(v329, v330);
          return v92;
        }

        v93 = v91;
        v328 = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
        *&v327 = v93;
        sub_1000060C8(0, &qword_100939660, NSPersistentHistoryResult_ptr);
        v94 = v92;
        v95 = v93;
        throwingCast<A>(_:as:failureMessage:)();
        if (v4)
        {

          v312, v217, v218, v219, v220, v221, v222, v223;
          sub_10003E114(v329, v330);
          v324, v224, v225, v226, v227, v228, v229, v230;
          sub_10000607C(&v327);
          return v92;
        }

        sub_10000607C(&v327);
        v96 = v326;
        v97 = [v326 result];
        v320 = v95;
        if (!v97)
        {
          v308 = v96;
          v231 = v324;
          v312, v98, v99, v100, v101, v102, v103, v104;
          v231, v232, v233, v234, v235, v236, v237, v238;
          if (qword_100935AD0 != -1)
          {
            swift_once();
          }

          v239 = type metadata accessor for Logger();
          sub_100006654(v239, qword_100939640);
          v240 = v5;
          v241 = Logger.logObject.getter();
          v242 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v241, v242))
          {
            v243 = swift_slowAlloc();
            v244 = swift_slowAlloc();
            *v243 = 138412290;
            *(v243 + 4) = v240;
            *v244 = v240;
            v245 = v240;
            _os_log_impl(&_mh_execute_header, v241, v242, "Failed to get transaction from CoreData. No error. {invocation: %@}", v243, 0xCu);
            sub_1000050A4(v244, &unk_100938E70, &unk_100797230);
          }

          v246 = objc_opt_self();
          *&v327 = 0;
          *(&v327 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(67);
          v247._object = 0x80000001007ECFC0;
          v247._countAndFlagsBits = 0xD000000000000040;
          String.append(_:)(v247);
          v248 = [v240 description];
          v249 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v251 = v250;

          v252._countAndFlagsBits = v249;
          v252._object = v251;
          String.append(_:)(v252);
          v251, v253, v254, v255, v256, v257, v258, v259;
          v260._countAndFlagsBits = 125;
          v260._object = 0xE100000000000000;
          String.append(_:)(v260);
          v92 = *(&v327 + 1);
          v261 = String._bridgeToObjectiveC()();
          v92, v262, v263, v264, v265, v266, v267, v268;
          [v246 internalErrorWithDebugDescription:v261];

          swift_willThrow();
          v216 = &v331;
          goto LABEL_48;
        }

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(&v326, &v327);
        sub_1000F5104(&qword_100939668, &qword_100795F18);
        throwingCast<A>(_:as:failureMessage:)();
        v105 = v326;
        if (qword_100935AD0 != -1)
        {
          swift_once();
        }

        v106 = type metadata accessor for Logger();
        sub_100006654(v106, qword_100939640);
        v107 = v323;
        v108 = v81;
        swift_bridgeObjectRetain_n();
        v109 = v108;
        v7 = Logger.logObject.getter();
        v110 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v7, v110))
        {
          v306 = v110;
          v317 = v107;
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *&v326 = v112;
          *v111 = v300;
          v307 = v80;
          v305 = v112;
          if (v105 >> 62)
          {
            v120 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v120 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v308 = v96;
          v105, v113, v114, v115, v116, v117, v118, v119;
          *(v111 + 4) = v120;
          v105, v121, v122, v123, v124, v125, v126, v127;
          *(v111 + 12) = 2080;
          v128 = [v109 identifier];

          if (!v128)
          {
            goto LABEL_63;
          }

          v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v131 = v130;

          v132 = sub_10000668C(v129, v131, &v326);
          v131, v133, v134, v135, v136, v137, v138, v139;
          *(v111 + 14) = v132;
          *(v111 + 22) = 2080;
          v140 = [v109 URL];
          if (v140)
          {
            v141 = v303;
            v142 = v140;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v143 = 0;
            v144 = v301;
          }

          else
          {
            v143 = 1;
            v144 = v301;
            v141 = v303;
          }

          v80 = v307;
          (v298->isa)(v141, v143, 1, v144);
          v145 = v302;
          sub_10003E8F8(v141, v302);
          v4 = 0;
          if ((v297->isa)(v145, 1, v144))
          {
            sub_1000050A4(v145, &unk_1009441F0, &qword_100795760);
            v146 = 0xE500000000000000;
            v147 = 0x296C696E28;
          }

          else
          {
            v148 = v296;
            (v294->isa)(v296, v145, v144);
            sub_1000050A4(v145, &unk_1009441F0, &qword_100795760);
            v149 = URL.absoluteString.getter();
            v150 = v144;
            v147 = v149;
            v146 = v151;
            (v293->isa)(v148, v150);
          }

          v5 = v299;
          v152 = sub_10000668C(v147, v146, &v326);
          v146, v153, v154, v155, v156, v157, v158, v159;
          *(v111 + 24) = v152;
          *(v111 + 32) = 2080;
          v325 = v323;
          sub_1000F5104(&qword_100939670, &qword_100795F20);
          v160 = Optional.descriptionOrNil.getter();
          v162 = v161;
          v163 = sub_10000668C(v160, v161, &v326);
          v162, v164, v165, v166, v167, v168, v169, v170;
          *(v111 + 34) = v163;
          _os_log_impl(&_mh_execute_header, v7, v306, "Fetched transactions for store {transactions.count: %ld, store.identifier: %s, store.url: %s, historyToken: %s}", v111, 0x2Au);
          swift_arrayDestroy();

          v96 = v308;
          v107 = v317;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v16 = &v324;
        sub_10003EEE8(v105);

        sub_10000607C(&v327);
        v31 = v321 + 1;
        v22 = v312;
        if (v322 == v309)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      ;
    }

LABEL_52:
    v22, v23, v24, v25, v26, v27, v28, v29;
    if (qword_100935AD0 != -1)
    {
      swift_once();
    }

    v269 = type metadata accessor for Logger();
    sub_100006654(v269, qword_100939640);
    v92 = v324;

    v270 = v319;
    v271 = Logger.logObject.getter();
    v272 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v271, v272))
    {
      v273 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      *v273 = 134218242;
      if (v92 >> 62)
      {
        v282 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v282 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v273 + 4) = v282;
      v92, v274, v275, v276, v277, v278, v279, v280;
      *(v273 + 12) = 2112;
      *(v273 + 14) = v270;
      *v281 = v270;
      v283 = v270;
      _os_log_impl(&_mh_execute_header, v271, v272, "Fetched all transactions {allTransactions.count: %ld, sourceToken: %@}", v273, 0x16u);
      sub_1000050A4(v281, &unk_100938E70, &unk_100797230);
    }

    else
    {

      v92, v284, v285, v286, v287, v288, v289, v290;
    }

    sub_10003E114(v329, v330);
  }

  else
  {
    if (qword_100935AD0 != -1)
    {
      swift_once();
    }

    v171 = type metadata accessor for Logger();
    sub_100006654(v171, qword_100939640);
    v172 = v5;
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      *v175 = 138412290;
      *(v175 + 4) = v172;
      *v176 = v172;
      v177 = v172;
      _os_log_impl(&_mh_execute_header, v173, v174, "Tried to fetch transactions from managedObjectContext without storeController {managedObjectContext: %@}", v175, 0xCu);
      sub_1000050A4(v176, &unk_100938E70, &unk_100797230);
    }

    v178 = objc_opt_self();
    *&v327 = 0;
    *(&v327 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(103);
    v179._countAndFlagsBits = 0xD000000000000065;
    v179._object = 0x80000001007ECF50;
    String.append(_:)(v179);
    v180 = [v172 description];
    v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v183 = v182;

    v184._countAndFlagsBits = v181;
    v184._object = v183;
    String.append(_:)(v184);
    v183, v185, v186, v187, v188, v189, v190, v191;
    v92 = *(&v327 + 1);
    v192 = String._bridgeToObjectiveC()();
    v92, v193, v194, v195, v196, v197, v198, v199;
    [v178 internalErrorWithDebugDescription:v192];

    swift_willThrow();
  }

  return v92;
}

unint64_t sub_10003CAE0(void *a1)
{
  result = sub_10003B8F0(a1, &_swiftEmptyArrayStorage);
  if (!v1)
  {
    v10 = result;
    v171 = _swiftEmptySetSingleton;
    v170[1] = _swiftEmptySetSingleton;
    if (result >> 62)
    {
      goto LABEL_109;
    }

    v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_4:
      v12 = 0;
      v163 = v10 & 0xC000000000000001;
      v158 = v10 + 32;
      v159 = v10 & 0xFFFFFFFFFFFFFF8;
      v160 = v11;
      v161 = v10;
      while (1)
      {
        if (v163)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v159 + 16))
          {
            goto LABEL_108;
          }

          v27 = *(v158 + 8 * v12);
        }

        v164 = v27;
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_107;
        }

        v29 = [v27 changes];
        if (!v29)
        {
          if (qword_100936260 != -1)
          {
            swift_once();
          }

          v140 = type metadata accessor for Logger();
          sub_100006654(v140, qword_100948A78);
          v141 = v164;
          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            *v144 = 138412290;
            *(v144 + 4) = v141;
            *v145 = v141;
            v146 = v141;
            _os_log_impl(&_mh_execute_header, v142, v143, "Skipping transaction because it contains no changes {transaction: %@}", v144, 0xCu);
            sub_1000050A4(v145, &unk_100938E70, &unk_100797230);
          }

          else
          {
          }

          goto LABEL_6;
        }

        v30 = v29;
        sub_1000060C8(0, &qword_10093F3C8, NSPersistentHistoryChange_ptr);
        v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v31 >> 62))
        {
          v167 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v167)
          {
            break;
          }

          goto LABEL_103;
        }

        v167 = _CocoaArrayWrapper.endIndex.getter();
        if (v167)
        {
          break;
        }

LABEL_103:

        v31, v147, v148, v149, v150, v151, v152, v153;
LABEL_6:
        if (v12 == v11)
        {
          v10, v20, v21, v22, v23, v24, v25, v26;
          return v171;
        }
      }

      v162 = v12;
      v32 = 0;
      v169 = v31 & 0xC000000000000001;
      v165 = v31 & 0xFFFFFFFFFFFFFF8;
      v10 = &selRef_accountStatusWithCompletionHandler_;
      v168 = v31;
      v33 = v167;
      while (1)
      {
        if (v169)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *(v165 + 16))
          {
            goto LABEL_106;
          }

          v34 = *(v31 + 8 * v32 + 32);
        }

        v35 = v34;
        v36 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          v11 = _CocoaArrayWrapper.endIndex.getter();
          if (!v11)
          {
            goto LABEL_110;
          }

          goto LABEL_4;
        }

        if ([v34 changeType] != 1)
        {
          if (qword_100936260 != -1)
          {
            swift_once();
          }

          v54 = type metadata accessor for Logger();
          sub_100006654(v54, qword_100948A78);
          v55 = v35;
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            *v58 = 138412290;
            *(v58 + 4) = v55;
            *v59 = v55;
            v60 = v55;
            _os_log_impl(&_mh_execute_header, v56, v57, "Skipping change because it's not update {change: %@}", v58, 0xCu);
            sub_1000050A4(v59, &unk_100938E70, &unk_100797230);

            v31 = v168;
          }

          else
          {
          }

          goto LABEL_17;
        }

        v37 = [v35 changedObjectID];
        v38 = [v37 *(v10 + 3160)];
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v40 = v38;
        v41 = [ObjCClassFromMetadata *(v10 + 3160)];
        sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
        v42 = v10;
        v43 = static NSObject.== infix(_:_:)();

        if (v43)
        {
          break;
        }

        v166 = v37;
        sub_1000060C8(0, &unk_100938880, off_1008D41A8);
        v61 = swift_getObjCClassFromMetadata();
        v62 = v40;
        v63 = [v61 *(v42 + 3160)];
        v64 = static NSObject.== infix(_:_:)();

        v10 = v42;
        if ((v64 & 1) == 0)
        {
          sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
          v72 = [swift_getObjCClassFromMetadata() *(v42 + 3160)];
          v73 = static NSObject.== infix(_:_:)();

          v33 = v167;
          if ((v73 & 1) == 0)
          {
            if (qword_100936260 != -1)
            {
              swift_once();
            }

            v82 = type metadata accessor for Logger();
            sub_100006654(v82, qword_100948A78);
            v83 = v166;
            v84 = Logger.logObject.getter();
            v85 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              *v86 = 138412290;
              *(v86 + 4) = v83;
              *v87 = v83;
              v88 = v83;
              _os_log_impl(&_mh_execute_header, v84, v85, "Skipping change unhandled type {objectID: %@}", v86, 0xCu);
              sub_1000050A4(v87, &unk_100938E70, &unk_100797230);
            }

            else
            {
            }

            goto LABEL_66;
          }

          v74 = sub_1005AFD38(v166);
          if (!v74)
          {
LABEL_55:

            goto LABEL_94;
          }

          v66 = v74;
          objc_opt_self();
          v75 = swift_dynamicCastObjCClass();
          if (v75)
          {
            v76 = v75;
            v77 = v66;
            v78 = [v76 list];
            if (!v78 || (v79 = v78, v80 = [v78 remObjectID], v79, !v80))
            {

              v31 = v168;
              if (qword_100936260 != -1)
              {
                swift_once();
              }

              v118 = type metadata accessor for Logger();
              sub_100006654(v118, qword_100948A78);
              v119 = v77;
              v120 = Logger.logObject.getter();
              v121 = static os_log_type_t.info.getter();

              v157 = v121;
              if (os_log_type_enabled(v120, v121))
              {
                v156 = v119;
                v122 = swift_slowAlloc();
                v154 = swift_slowAlloc();
                buf = v122;
                v170[0] = v154;
                *v122 = 136315138;
                v123 = [v76 remObjectID];
                if (v123)
                {
                  v124 = v123;
                  v125 = [v123 description];

                  v31 = v168;
                  v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v128 = v127;
                }

                else
                {
                  v128 = 0xE300000000000000;
                  v126 = 7104878;
                }

                v132 = sub_10000668C(v126, v128, v170);
                v128, v133, v134, v135, v136, v137, v138, v139;
                *(buf + 4) = v132;
                _os_log_impl(&_mh_execute_header, v120, v157, "Updated reminder has no list -- skipping {reminder: %s}", buf, 0xCu);
                sub_10000607C(v154);

                v10 = 0x100928000;
              }

              else
              {

                v10 = 0x100928000;
              }

              goto LABEL_17;
            }

            v81 = REMObjectID.codable.getter();
            sub_100379240(v170, v81);

LABEL_45:
            goto LABEL_66;
          }

          if (qword_100936260 != -1)
          {
            swift_once();
          }

          v129 = type metadata accessor for Logger();
          sub_100006654(v129, qword_100948A78);
          v130 = v166;
          v109 = Logger.logObject.getter();
          v131 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v109, v131))
          {

LABEL_93:
            v10 = 0x100928000;
            v33 = v167;
LABEL_94:
            v31 = v168;
            goto LABEL_17;
          }

          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *v111 = 138412290;
          *(v111 + 4) = v130;
          *v112 = v130;
          v48 = v130;
          v113 = v131;
          v114 = v109;
          v115 = "Failed to cast managedObject to REMCDReminder {objectID: %@}";
          goto LABEL_88;
        }

        v65 = sub_1005AFD38(v166);
        v33 = v167;
        if (!v65)
        {
          goto LABEL_55;
        }

        v66 = v65;
        objc_opt_self();
        v67 = swift_dynamicCastObjCClass();
        v31 = v168;
        if (!v67)
        {
          if (qword_100936260 != -1)
          {
            swift_once();
          }

          v107 = type metadata accessor for Logger();
          sub_100006654(v107, qword_100948A78);
          v108 = v166;
          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            *v111 = 138412290;
            *(v111 + 4) = v108;
            *v112 = v108;
            v48 = v108;
            v113 = v110;
            v114 = v109;
            v115 = "Failed to cast managedObject to REMCDList {objectID: %@}";
            goto LABEL_88;
          }

LABEL_77:

LABEL_90:
          v10 = 0x100928000;
          v33 = v167;
          goto LABEL_17;
        }

        v68 = v67;
        v66 = v66;
        v69 = [v68 remObjectID];
        if (!v69)
        {

          if (qword_100936260 != -1)
          {
            swift_once();
          }

          v116 = type metadata accessor for Logger();
          sub_100006654(v116, qword_100948A78);
          v108 = v166;
          v109 = Logger.logObject.getter();
          v117 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v109, v117))
          {
            goto LABEL_77;
          }

          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *v111 = 138412290;
          *(v111 + 4) = v108;
          *v112 = v108;
          v48 = v108;
          v113 = v117;
          v114 = v109;
          v115 = "Failed to get remObjectID from REMCDList {objectID: %@}";
LABEL_88:
          _os_log_impl(&_mh_execute_header, v114, v113, v115, v111, 0xCu);
          sub_1000050A4(v112, &unk_100938E70, &unk_100797230);

          v31 = v168;

LABEL_89:
          goto LABEL_90;
        }

        v70 = v69;
        v71 = REMObjectID.codable.getter();
        sub_100379240(v170, v71);

        v31 = v168;
LABEL_17:
        ++v32;
        if (v36 == v33)
        {

          v31, v13, v14, v15, v16, v17, v18, v19;
          v11 = v160;
          v10 = v161;
          v12 = v162;
          goto LABEL_6;
        }
      }

      v44 = sub_1005AFD38(v37);
      if (!v44)
      {

        goto LABEL_93;
      }

      v45 = v44;
      objc_opt_self();
      v46 = swift_dynamicCastObjCClass();
      v33 = v167;
      if (!v46)
      {
        if (qword_100936260 != -1)
        {
          swift_once();
        }

        v89 = type metadata accessor for Logger();
        sub_100006654(v89, qword_100948A78);
        v90 = v37;
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v91, v92))
        {

          goto LABEL_93;
        }

        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v93 = 138412290;
        *(v93 + 4) = v90;
        *v94 = v90;
        v95 = v90;
        _os_log_impl(&_mh_execute_header, v91, v92, "Failed to cast managedObject to REMCDAccount {objectID: %@}", v93, 0xCu);
        sub_1000050A4(v94, &unk_100938E70, &unk_100797230);

        v31 = v168;

        goto LABEL_90;
      }

      v47 = v46;
      v48 = v45;
      v49 = [v47 remObjectID];
      if (v49)
      {
        v50 = v49;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007953F0;
        *(inited + 32) = swift_getKeyPath();
        v52 = sub_10049F918(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        if (v52)
        {
          v53 = REMObjectID.codable.getter();
          sub_100379240(v170, v53);

          goto LABEL_45;
        }

        if (qword_100936260 != -1)
        {
          swift_once();
        }

        v103 = type metadata accessor for Logger();
        sub_100006654(v103, qword_100948A78);
        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&_mh_execute_header, v104, v105, "Ignoring account change because it didn't update the name", v106, 2u);
        }

LABEL_66:
        v10 = 0x100928000;
        goto LABEL_94;
      }

      if (qword_100936260 != -1)
      {
        swift_once();
      }

      v96 = type metadata accessor for Logger();
      sub_100006654(v96, qword_100948A78);
      v97 = v37;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v98, v99))
      {

        goto LABEL_93;
      }

      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v100 = 138412290;
      *(v100 + 4) = v97;
      *v101 = v97;
      v102 = v97;
      _os_log_impl(&_mh_execute_header, v98, v99, "Failed to get remObjectID from REMCDAccount {objectID: %@}", v100, 0xCu);
      sub_1000050A4(v101, &unk_100938E70, &unk_100797230);

      v31 = v168;

      goto LABEL_89;
    }

LABEL_110:
    v10, v3, v4, v5, v6, v7, v8, v9;
    return _swiftEmptySetSingleton;
  }

  return result;
}

Swift::Void (__swiftcall *sub_10003DCD4(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v5 = sub_10003DD80(a2, a3);
    v8 = v7;
    swift_beginAccess();
    v9 = *a1;
    v10 = a1[1];
    *a1 = v5;
    a1[1] = v8;

    sub_10003E114(v9, v10);
  }

  sub_10003E124(v3, v4);
  return v5;
}

Swift::Void (__swiftcall *sub_10003DD80(unint64_t a1, uint64_t a2))()
{
  if (a1 >> 62)
  {
    v36 = a1;
    v37 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v36;
    v3 = REMCDList.cleanUpAfterLocalObjectMerge();
    if (!v37)
    {
      return v3;
    }
  }

  else
  {
    v3 = REMCDList.cleanUpAfterLocalObjectMerge();
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v3;
    }
  }

  v4 = a1;
  v5 = [objc_opt_self() entityDescriptionWithContext:a2];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 propertiesByName];
    sub_1000060C8(0, &qword_100939678, NSPropertyDescription_ptr);
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v8 + 16))
    {
      v16 = sub_100005F4C(0x456465676E616863, 0xED0000797469746ELL);
      if (v9)
      {
        v17 = *(*(v8 + 56) + 8 * v16);
        v8, v18, v19, v20, v21, v22, v23, v24;
        sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
        sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_100791340;
        v26 = [v17 name];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        *(v25 + 56) = &type metadata for String;
        *(v25 + 64) = sub_100006600();
        *(v25 + 32) = v27;
        *(v25 + 40) = v29;
        *(v25 + 96) = sub_1000F5104(&qword_100939680, &qword_100795F28);
        *(v25 + 104) = sub_10004285C();
        *(v25 + 72) = v4;

        v30 = NSPredicate.init(format:_:)();

        v31 = swift_allocObject();
        *(v31 + 16) = v6;
        *(v31 + 24) = v30;
        return sub_100042960;
      }
    }

    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  if (qword_100935AD0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006654(v32, qword_100939640);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "NSManagedObjectContext#transactionsAndChanges: failed to get changedEntityPropertyDescription", v35, 2u);
  }

  return REMCDList.cleanUpAfterLocalObjectMerge();
}

uint64_t sub_10003E0D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E114(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003E124(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_10003E138(void *a1, void (*a2)(id), void *a3, char a4, char *a5, char a6)
{
  v11 = a1;
  v12 = _sSo24ICCloudContextSyncReasona7reminddE03xpcc9InterfacecD0ABSgSo010REMXPCSyncgcD0a_tcfC_0(v11);
  if (!v12)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_10093B458);
    v39 = v11;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v107 = v43;
      *v42 = 136315138;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
      v47 = sub_10000668C(v44, v45, &v107);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "XPCSyncInterface.SyncCloudKit: Unsupported sync reason - %s", v42, 0xCu);
      sub_10000607C(v43);
    }

    v55 = objc_opt_self();
    v107 = 0;
    v108 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v108, v56, v57, v58, v59, v60, v61, v62;
    v107 = 0xD00000000000001ALL;
    v108 = 0x80000001007EF8C0;
    v63._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v63._object;
    String.append(_:)(v63);
    object, v65, v66, v67, v68, v69, v70, v71;
    v72 = v108;
    v73 = String._bridgeToObjectiveC()();
    v72, v74, v75, v76, v77, v78, v79, v80;
    v81 = [v55 internalErrorWithDebugDescription:v73];

    v106 = v81;
    a2(v81);
    goto LABEL_13;
  }

  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4 & 1;
  *(v14 + 24) = v11;
  *(v14 + 32) = a5;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = v13;
  if (a6)
  {
    v15 = qword_100935B50;
    v16 = v11;
    v17 = a5;
    swift_retain_n();
    v18 = v13;
    v19 = v16;
    v20 = v17;
    v106 = v18;
    if (v15 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_10093B458);
    v22 = v19;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v102 = a2;
      v25 = swift_slowAlloc();
      v104 = a3;
      v26 = swift_slowAlloc();
      v107 = v26;
      *v25 = 67109378;
      *(v25 + 4) = a4 & 1;
      *(v25 + 8) = 2082;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
      v30 = sub_10000668C(v27, v28, &v107);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v25 + 10) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "XPCSyncInterface.SyncCloudKit: Bypassed throttler and run sync now {discretionary: %{BOOL}d, reason: %{public}s}", v25, 0x12u);
      sub_10000607C(v26);
      a3 = v104;

      a2 = v102;
    }

    sub_10003FA04(a4 & 1, v22, v20, a2, a3, v106);

    goto LABEL_13;
  }

  if ((a4 & 1) == 0)
  {
    v105 = *&a5[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_cloudKitThrottler];
    v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;
    v89 = a2;
    v90 = v11;
    v91 = a5;
    swift_retain_n();
    v92 = v13;
    v93 = v90;
    v94 = v91;
    v106 = v92;

    sub_10003F0A0(v103, v88, v105, 0, v93, v94, v89, a3, v106);

    v88, v95, v96, v97, v98, v99, v100, v101;

LABEL_13:

    return;
  }

  v82 = *&a5[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_discretionaryCloudKitThrottler];
  v83 = a5;
  v84 = v11;

  v85 = v83;
  v86 = v13;
  sub_1004C3438(0, 0, v82, v85, sub_1001C68A4, v14, v86);
}

uint64_t sub_10003E8A8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003E8F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__CFString *_sSo24ICCloudContextSyncReasona7reminddE03xpcc9InterfacecD0ABSgSo010REMXPCSyncgcD0a_tcfC_0(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v2;
  v13 = v5;
  if (v12 == v6 && v4 == v5)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_AppDelegate;
LABEL_8:
    v4, v5, v6, v7, v8, v9, v10, v11;
    v13, v31, v32, v33, v34, v35, v36, v37;
    goto LABEL_9;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v4, v16, v17, v18, v19, v20, v21, v22;
  v13, v23, v24, v25, v26, v27, v28, v29;
  if (v15)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_AppDelegate;
LABEL_9:
    v38 = *v30;

    return v38;
  }

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v41;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v40;
  v13 = v5;
  if (v42 == v6 && v4 == v5)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_DebugMenu;
    goto LABEL_8;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v4, v45, v46, v47, v48, v49, v50, v51;
  v13, v52, v53, v54, v55, v56, v57, v58;
  if (v44)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_DebugMenu;
    goto LABEL_9;
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v60;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v59;
  v13 = v5;
  if (v61 == v6 && v4 == v5)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_RemindtoolCloudKitDeleteAll;
    goto LABEL_8;
  }

  v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v4, v63, v64, v65, v66, v67, v68, v69;
  v13, v70, v71, v72, v73, v74, v75, v76;
  if (v62)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_RemindtoolCloudKitDeleteAll;
    goto LABEL_9;
  }

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v78;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v77;
  v13 = v5;
  if (v79 == v6 && v4 == v5)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_RemindtoolCloudKitRestart;
    goto LABEL_8;
  }

  v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v4, v81, v82, v83, v84, v85, v86, v87;
  v13, v88, v89, v90, v91, v92, v93, v94;
  if (v80)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_RemindtoolCloudKitRestart;
    goto LABEL_9;
  }

  v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v96;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v95;
  v13 = v5;
  if (v97 == v6 && v4 == v5)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_RemindtoolCloudKitSync;
    goto LABEL_8;
  }

  v98 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v4, v99, v100, v101, v102, v103, v104, v105;
  v13, v106, v107, v108, v109, v110, v111, v112;
  if (v98)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_RemindtoolCloudKitSync;
    goto LABEL_9;
  }

  v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v114;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v115 = v113;
  v13 = v5;
  if (v115 == v6 && v4 == v5)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_SignificantTimeChange;
    goto LABEL_8;
  }

  v116 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v4, v117, v118, v119, v120, v121, v122, v123;
  v13, v124, v125, v126, v127, v128, v129, v130;
  if (v116)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_SignificantTimeChange;
    goto LABEL_9;
  }

  v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v132;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v133 = v131;
  v13 = v5;
  if (v133 == v6 && v4 == v5)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_UpdateAccounts;
    goto LABEL_8;
  }

  v134 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v4, v135, v136, v137, v138, v139, v140, v141;
  v13, v142, v143, v144, v145, v146, v147, v148;
  if (v134)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_UpdateAccounts;
    goto LABEL_9;
  }

  v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v150;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v5;
  if (v149 == v6 && v4 == v5)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_FamilyChecklistCloudKitSync;
    goto LABEL_8;
  }

  v151 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v4, v152, v153, v154, v155, v156, v157, v158;
  v13, v159, v160, v161, v162, v163, v164, v165;
  if (v151)
  {
    v30 = &ICCloudContextSyncReasonSyncInterface_FamilyChecklistCloudKitSync;
    goto LABEL_9;
  }

  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v166 = type metadata accessor for Logger();
  sub_100006654(v166, qword_100974F78);
  v167 = a1;
  v168 = Logger.logObject.getter();
  v169 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v183 = v171;
    *v170 = 136315138;
    v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v174 = v173;
    v175 = sub_10000668C(v172, v173, &v183);
    v174, v176, v177, v178, v179, v180, v181, v182;
    *(v170 + 4) = v175;
    _os_log_impl(&_mh_execute_header, v168, v169, "Cannot convert to ICCloudContextSyncReason from unknown REMXPCSyncInterfaceSyncReason: %s", v170, 0xCu);
    sub_10000607C(v171);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10003EF00(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&unk_10093F6E0, &qword_100939668, &qword_100795F18);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_100939668, &qword_100795F18);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &unk_10093F6D0, NSPersistentHistoryTransaction_ptr);
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

void sub_10003F0A0(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, char *a3, int a4, void *a5, void *a6, char *a7, void *a8, void *a9)
{
  v105 = a7;
  v109 = a5;
  v110 = a6;
  LODWORD(v104) = a4;
  v108 = a2;
  v103 = a1;
  v111 = a9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(a3 + 6);
  v21->super.isa = v22;
  (*(v17 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v16, v19);
  v107 = v109;
  v109 = v110;
  v110 = a8;

  v111 = v111;
  v23 = v22;
  LOBYTE(a8) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v21, v16);
  if ((a8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v24 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
  swift_beginAccess();
  v22 = (v12 + 16);
  v25 = *(v12 + 16);
  v25(v15, &a3[v24], v11);
  v26 = Date.isInThePast.getter();
  v29 = *(v12 + 8);
  v27 = v12 + 8;
  v28 = v29;
  v29(v15, v11);
  if (v26)
  {
    sub_10003F81C();
    v30 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
    v31 = *&a3[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
    goto LABEL_5;
  }

  v30 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
  v31 = *&a3[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
  if (v31)
  {
LABEL_5:
    v32 = v31 != 0;
    v33 = v31 - 1;
    v21 = v108;
    if (v32)
    {
      v22 = v111;
      *&a3[v30] = v33;
      if (qword_1009362E0 == -1)
      {
LABEL_8:
        v34 = type metadata accessor for Logger();
        sub_100006654(v34, qword_10094A058);

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.info.getter();
        v21, v37, v38, v39, v40, v41, v42, v43;

        if (os_log_type_enabled(v35, v36))
        {
          v44 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *v44 = 136446466;
          *(v44 + 4) = sub_10000668C(*(a3 + 4), *(a3 + 5), &v112);
          *(v44 + 12) = 2082;
          if (v21)
          {
            v45 = v103;
          }

          else
          {
            v45 = 7104878;
          }

          if (v21)
          {
            v46 = v21;
          }

          else
          {
            v46 = 0xE300000000000000;
          }

          v47 = sub_10000668C(v45, v46, &v112);
          v46, v48, v49, v50, v51, v52, v53, v54;
          *(v44 + 14) = v47;
          _os_log_impl(&_mh_execute_header, v35, v36, "Throttler allows and is going to run operation {identifier: %{public}s, op: %{public}s}", v44, 0x16u);
          swift_arrayDestroy();
          v55 = v107;
        }

        else
        {

          v55 = v107;
        }

        v56 = v109;
        sub_10003FA04(v104 & 1, v55, v109, v105, v110, v22);

        return;
      }

LABEL_32:
      swift_once();
      goto LABEL_8;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v102 = v25;
  v105 = v15;
  v106 = v27;
  if (qword_1009362E0 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100006654(v57, qword_10094A058);
  v58 = v108;

  v59 = a3;
  swift_retain_n();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  v58, v62, v63, v64, v65, v66, v67, v68;

  if (os_log_type_enabled(v60, v61))
  {
    v69 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v112 = v104;
    *v69 = 136447234;
    *(v69 + 4) = sub_10000668C(v59[4], v59[5], &v112);
    v101 = v60;
    *(v69 + 12) = 2082;
    if (v58)
    {
      v70 = v103;
    }

    else
    {
      v70 = 7104878;
    }

    LODWORD(v103) = v61;
    if (v58)
    {
      v71 = v58;
    }

    else
    {
      v71 = 0xE300000000000000;
    }

    v72 = sub_10000668C(v70, v71, &v112);
    v71, v73, v74, v75, v76, v77, v78, v79;
    *(v69 + 14) = v72;
    *(v69 + 22) = 1040;
    *(v69 + 24) = 4;
    *(v69 + 28) = 2048;
    v80 = v105;
    v81 = v102;
    v102(v105, v59 + v24, v11);
    Date.timeIntervalSinceNow.getter();
    v83 = v82;
    v28(v80, v11);
    v100 = v59;
    *(v69 + 30) = v83;
    *(v69 + 38) = 2082;
    v81(v80, v59 + v24, v11);
    v84 = Date.description.getter();
    v86 = v85;
    v28(v80, v11);
    v87 = sub_10000668C(v84, v86, &v112);
    v86, v88, v89, v90, v91, v92, v93, v94;
    *(v69 + 40) = v87;
    v95 = v101;
    _os_log_impl(&_mh_execute_header, v101, v103, "Throttler denied operation {identifier: %{public}s, op: %{public}s, remainingTimeInterval: %.*f, throttleResetDate: %{public}s}", v69, 0x30u);
    swift_arrayDestroy();

    v96 = v102;
    v59 = v100;
  }

  else
  {

    v80 = v105;
    v96 = v102;
  }

  v97 = objc_opt_self();
  v96(v80, v59 + v24, v11);
  Date.timeIntervalSinceNow.getter();
  v99 = v98;
  v28(v80, v11);
  [v97 throttledErrorWithRemainingTimeInterval:v99];
  swift_willThrow();
}

uint64_t sub_10003F81C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + 48);
  *v11 = v12;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v11, v6);
  if (v12)
  {
    *(v0 + OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount) = 1;
    Date.init(timeIntervalSinceNow:)();
    v15 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
    swift_beginAccess();
    (*(v2 + 40))(v0 + v15, v5, v1);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003FA04(char a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_10093B458);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v45 = a1;
  if (os_log_type_enabled(v14, v15))
  {
    v44 = a5;
    v16 = swift_slowAlloc();
    v43 = a6;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 67109378;
    *(v16 + 4) = a1 & 1;
    *(v16 + 8) = 2082;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = a4;
    v21 = v20;
    v22 = sub_10000668C(v18, v20, aBlock);
    v23 = v21;
    a4 = v19;
    v23, v24, v25, v26, v27, v28, v29, v30;
    *(v16 + 10) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "XPCSyncInterface.SyncCloudKit: Trigger CloudKit sync {discretionary: %{BOOL}d, reason: %{public}s}", v16, 0x12u);
    sub_10000607C(v17);
    a6 = v43;

    a5 = v44;
  }

  v31 = [*(a3 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController) cloudContext];
  if (v31)
  {
    v32 = v31;
    v33 = swift_allocObject();
    v34 = v45 & 1;
    *(v33 + 16) = v34;
    *(v33 + 24) = v13;
    *(v33 + 32) = a4;
    *(v33 + 40) = a5;
    aBlock[4] = sub_1000429D4;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100042968;
    aBlock[3] = &unk_1008E91A8;
    v35 = _Block_copy(aBlock);
    v36 = v13;

    [v32 syncWithReason:a6 discretionary:v34 completionHandler:v35];
    _Block_release(v35);
  }

  else
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "XPCSyncInterface.SyncCloudKit: CloudContext is nil -- can't sync to cloudKit", v39, 2u);
    }

    v40 = objc_opt_self();
    v41 = String._bridgeToObjectiveC()();
    v42 = [v40 internalErrorWithDebugDescription:v41];

    v46 = v42;
    a4(v42);
  }
}

uint64_t sub_10003FDAC()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10003FDF4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_10003FE74(char a1, _TtC7remindd19RDXPCStorePerformer *a2, char *a3, void (*a4)(void), uint64_t a5)
{
  if (a1)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10093B458);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    a2, v12, v13, v14, v15, v16, v17, v18;
    if (os_log_type_enabled(v10, v11))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v41 = v20;
      *v19 = 136315138;
      v21 = Array.description.getter();
      v23 = v22;
      v24 = sub_10000668C(v21, v22, &v41);
      v23, v25, v26, v27, v28, v29, v30, v31;
      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v10, v11, "(daemon) Trigger DataAccess sync {accountIDs: %s}", v19, 0xCu);
      sub_10000607C(v20);
    }

    v41 = a2;
    v42 = 0u;
    memset(v43, 0, sizeof(v43));

    sub_10004F728(&v41);
    a4(0);

    a2, v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    v39 = *&a3[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_dataAccessThrottler];

    v40 = a3;

    sub_10004011C(0, 0, v39, a2, v40, a4, a5);
  }
}

void sub_10004011C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, char *a3, _TtC7remindd19RDXPCStorePerformer *a4, NSObject *a5, void (*a6)(void), uint64_t a7)
{
  v110 = a7;
  v108 = a5;
  v109 = a6;
  v112 = a4;
  v107 = a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v17 = __chkstk_darwin(v14, v16);
  v19 = (&v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(a3 + 6);
  *v19 = v20;
  (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v14, v17);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v19, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v22 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
  swift_beginAccess();
  v106 = *(v10 + 16);
  v106(v13, &a3[v22], v9);
  v23 = Date.isInThePast.getter();
  v24 = *(v10 + 8);
  v24(v13, v9);
  if (v23)
  {
    sub_10003F81C();
    v25 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
    v26 = *&a3[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
    goto LABEL_5;
  }

  v25 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
  v26 = *&a3[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
  if (v26)
  {
LABEL_5:
    v27 = v26 != 0;
    v28 = v26 - 1;
    if (v27)
    {
      *&a3[v25] = v28;
      if (qword_1009362E0 == -1)
      {
LABEL_8:
        v29 = type metadata accessor for Logger();
        sub_100006654(v29, qword_10094A058);

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.info.getter();
        a2, v32, v33, v34, v35, v36, v37, v38;

        if (os_log_type_enabled(v30, v31))
        {
          v39 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          *v39 = 136446466;
          *(v39 + 4) = sub_10000668C(*(a3 + 4), *(a3 + 5), &v113);
          *(v39 + 12) = 2082;
          if (a2)
          {
            v40 = v107;
          }

          else
          {
            v40 = 7104878;
          }

          if (a2)
          {
            v41 = a2;
          }

          else
          {
            v41 = 0xE300000000000000;
          }

          v42 = sub_10000668C(v40, v41, &v113);
          v41, v43, v44, v45, v46, v47, v48, v49;
          *(v39 + 14) = v42;
          _os_log_impl(&_mh_execute_header, v30, v31, "Throttler allows and is going to run operation {identifier: %{public}s, op: %{public}s}", v39, 0x16u);
          swift_arrayDestroy();
        }

        v50 = v112;
        sub_10004F55C(v112, v108, v109);
        v58 = v50;
        goto LABEL_17;
      }

LABEL_32:
      swift_once();
      goto LABEL_8;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v105 = v24;
  if (qword_1009362E0 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_100006654(v59, qword_10094A058);

  swift_retain_n();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  a2, v62, v63, v64, v65, v66, v67, v68;

  LODWORD(v111) = v61;
  v69 = v61;
  v70 = v60;
  if (os_log_type_enabled(v60, v69))
  {
    v71 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v113 = v109;
    *v71 = 136447234;
    *(v71 + 4) = sub_10000668C(*(a3 + 4), *(a3 + 5), &v113);
    *(v71 + 12) = 2082;
    if (a2)
    {
      v72 = v107;
    }

    else
    {
      v72 = 7104878;
    }

    v108 = v70;
    if (a2)
    {
      v73 = a2;
    }

    else
    {
      v73 = 0xE300000000000000;
    }

    v74 = sub_10000668C(v72, v73, &v113);
    v73, v75, v76, v77, v78, v79, v80, v81;
    v110 = v71;
    *(v71 + 14) = v74;
    *(v71 + 22) = 1040;
    *(v71 + 24) = 4;
    *(v71 + 28) = 2048;
    v82 = v106;
    v106(v13, &a3[v22], v9);
    Date.timeIntervalSinceNow.getter();
    v84 = v83;
    v85 = v105;
    v105(v13, v9);
    v86 = v110;
    *(v110 + 30) = v84;
    *(v86 + 38) = 2082;
    v82(v13, &a3[v22], v9);
    v87 = Date.description.getter();
    v89 = v88;
    v85(v13, v9);
    v90 = sub_10000668C(v87, v89, &v113);
    v89, v91, v92, v93, v94, v95, v96, v97;
    v98 = v110;
    *(v110 + 40) = v90;
    v99 = v108;
    _os_log_impl(&_mh_execute_header, v108, v111, "Throttler denied operation {identifier: %{public}s, op: %{public}s, remainingTimeInterval: %.*f, throttleResetDate: %{public}s}", v98, 0x30u);
    swift_arrayDestroy();
    v100 = v106;

    v101 = v105;
  }

  else
  {

    v101 = v105;
    v100 = v106;
  }

  v102 = objc_opt_self();
  v100(v13, &a3[v22], v9);
  Date.timeIntervalSinceNow.getter();
  v104 = v103;
  v101(v13, v9);
  [v102 throttledErrorWithRemainingTimeInterval:v104];
  swift_willThrow();
  v58 = v112;
LABEL_17:
  v58, v51, v52, v53, v54, v55, v56, v57;
}

uint64_t sub_10004080C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 56, 7);
}

uint64_t sub_100040854()
{
  v1 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  *(v0 + 56), v9, v10, v11, v12, v13, v14, v15;
  *(v0 + 80), v16, v17, v18, v19, v20, v21, v22;
  *(v0 + 96), v23, v24, v25, v26, v27, v28, v29;
  v30 = type metadata accessor for Locale();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(v0 + v3, 1, v30))
  {
    (*(v31 + 8))(v0 + v3, v30);
  }

  v32 = v2 | v7;
  v33 = (v7 + ((((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7;

  (*(v6 + 8))(v0 + v33, v5);

  return _swift_deallocObject(v0, v33 + v8, v32 | 7);
}

uint64_t sub_100040A74(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v19[0] = *(v7 - 1);
      v19[1] = v8;

      v9 = (a1)(v19);
      v8, v10, v11, v12, v13, v14, v15, v16;
      if (v3)
      {
        break;
      }

      v17 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v17) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100040B40(uint64_t *a1)
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

uint64_t sub_100040C04(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

NSObject *sub_100040E24(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v106 = a6;
  v100 = a3;
  v101 = a2;
  v102 = a1;
  v89 = type metadata accessor for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.IncrementalResult();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89, v9);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = _s10PredicatesOMa(0);
  __chkstk_darwin(v90, v12);
  v91 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95, v14);
  v92 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v93 = (&v88 - v18);
  v19 = type metadata accessor for REMRemindersInCalendarDataView.Invocation.Result();
  v96 = *(v19 - 8);
  __chkstk_darwin(v19, v20);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for REMRemindersInCalendarDataView.Invocation.Parameters();
  v103 = *(v109 - 8);
  __chkstk_darwin(v109, v23);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v104 = &v88 - v28;
  v29 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v29 - 8, v30);
  v32 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v110 = PropertyListDecoder.init()();
  v97 = v19;
  v98 = v22;
  v99 = v11;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v33 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v34 = a4;
  v35 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v114 = v33;
  v113 = v35;
  v108 = v35;

  v36 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v113, v32);
  v36(&ObjectType, 0);
  sub_10000F85C(&qword_100950968, &type metadata accessor for REMRemindersInCalendarDataView.Invocation.Parameters, &protocol conformance descriptor for REMRemindersInCalendarDataView.Invocation.Parameters);
  v37 = v109;
  v38 = v107;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v38)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_100950598);
    swift_errorRetain();
    v40 = v105;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *v43 = 136315394;
      swift_getErrorValue();
      v44 = Error.rem_errorDescription.getter();
      v46 = v45;
      v47 = sub_10000668C(v44, v45, &v113);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950970, &qword_1007B6880);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      v58 = sub_10000668C(v55, v56, &v113);
      v57, v59, v60, v61, v62, v63, v64, v65;
      *(v43 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v43, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    (*(v103 + 32))(v104, v25, v37);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v67 = v101;
    v68 = sub_100041B1C(v101, v100);
    v70 = v68;
    if (v68)
    {
      v71 = v99;
      v72 = v67;
      v73 = v69;
      sub_100041EBC(v72, v70, v99);
      v107 = v73;
      v75 = v93;
      (*(v88 + 32))(v93, v71, v89);
      v76 = &enum case for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.incremental(_:);
    }

    else
    {
      v107 = v69;
      v74 = v91;
      swift_storeEnumTagMultiPayload();
      v77 = sub_1000437C4(v67);
      sub_100715370(v74, _s10PredicatesOMa);
      v78 = v93;
      *v93 = v77;
      v75 = v78;
      v76 = &enum case for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.reload(_:);
    }

    v79 = v94;
    v80 = v75;
    v81 = v75;
    v82 = v95;
    (*(v94 + 104))(v80, *v76, v95);
    (*(v79 + 16))(v92, v81, v82);
    v83 = v98;
    REMRemindersInCalendarDataView.Invocation.Result.init(remindersResult:predicateVersion:)();
    sub_100051FA4(v70, v107);
    (*(v79 + 8))(v81, v82);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v84 = v34;
    v85 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v114 = v33;
    v113 = v85;

    v86 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v113, v32);
    v86(&ObjectType, 0);
    sub_10000F85C(&qword_100950978, &type metadata accessor for REMRemindersInCalendarDataView.Invocation.Result, &protocol conformance descriptor for REMRemindersInCalendarDataView.Invocation.Result);
    v87 = v97;
    v41 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v96 + 8))(v83, v87);
    (*(v103 + 8))(v104, v109);
  }

  return v41;
}

void *sub_100041B1C(void *a1, void *a2)
{
  v5 = [v2 fetchResultTokenToDiffAgainst];
  if (!v5)
  {
    if (qword_100935FB8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100944F38);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "RemindersInCalendarInvocation: missing fetchResultTokenToDiffAgainst, will use reload mode", v21, 2u);
    }

    return 0;
  }

  v6 = v5;
  Predicate = REMRemindersInCalendarDataView.Invocation.Parameters.lastFetchPredicateVersion.getter();
  if (v8)
  {
    if (qword_100935FB8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100944F38);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_21;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "RemindersInCalendarInvocation: missing lastFetchPredicateVersion, will use reload mode";
    goto LABEL_7;
  }

  if (Predicate != 2)
  {
    v23 = Predicate;
    if (qword_100935FB8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100944F38);
    v10 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v25))
    {
      goto LABEL_21;
    }

    v26 = swift_slowAlloc();
    *v26 = 134349312;
    *(v26 + 4) = v23;
    *(v26 + 12) = 2050;
    *(v26 + 14) = 2;
    v13 = "RemindersInCalendarInvocation: lastFetchPredicateVersion(%{public}ld) does not equal currentPredicateVersion(%{public}ld), will use reload mode";
    v14 = v25;
    v15 = v10;
    v16 = v26;
    v17 = 22;
    goto LABEL_20;
  }

  if (![a1 canAccessAllPersistentStoresReferencedByFetchResultToken:v6])
  {
    if (qword_100935FB8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100944F38);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_21;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "RemindersInCalendarInvocation: one or more persistent stores are no longer accessible since last fetch, will use reload mode";
LABEL_7:
    v14 = v11;
    v15 = v10;
    v16 = v12;
    v17 = 2;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v15, v14, v13, v16, v17);

LABEL_21:

    return 0;
  }

  v22 = a2;
  return v6;
}