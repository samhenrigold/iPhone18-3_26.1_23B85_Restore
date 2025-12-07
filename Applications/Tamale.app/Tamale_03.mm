char *sub_100059E34(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&qword_1001D6330, &qword_1001752E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100059F38(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000033A8(a5, a6);
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

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10005A114(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000010016C5F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010016C610 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_10005A248(void *a1)
{
  v30 = type metadata accessor for DetectionRequest.Originator();
  v24 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for CVDetection.DetectionType();
  __chkstk_darwin(v4 - 8);
  v32 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DetectionRequest();
  __chkstk_darwin(v6 - 8);
  v28 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = type metadata accessor for LegacyDetectionResultConvertible(0);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DetectionResult();
  v31 = *(v10 - 8);
  __chkstk_darwin(v10);
  v11 = sub_1000033A8(&qword_1001D6338, &qword_1001752F0);
  v23 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v22[-v12];
  v14 = sub_100006AAC(a1, a1[3]);
  sub_10005AA70(v14, v15, v16);
  v17 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    sub_100006B44(a1);
  }

  else
  {
    v33 = v9;
    v26 = v10;
    sub_1000033A8(&qword_1001D6348, &qword_1001752F8);
    LOBYTE(v34) = 0;
    sub_10005ABE0(&qword_1001D6350, &qword_1001D6358, &protocol conformance descriptor for DetectionResult, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = a1;
    v19 = v23;
    LOBYTE(v35) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v1 = v20;
    type metadata accessor for CGImagePropertyOrientation(0);
    LOBYTE(v34) = 2;
    sub_10005AAC4(&qword_1001D6388, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v19 + 8))(v13, v11);
    sub_100006B44(v18);
    LOBYTE(v35) = 0;
  }

  return v1;
}

unint64_t sub_10005AA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6340;
  if (!qword_1001D6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6340);
  }

  return result;
}

uint64_t sub_10005AAC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005AB0C()
{
  result = qword_1001D6368;
  if (!qword_1001D6368)
  {
    sub_10001276C(&qword_1001D6360, &qword_100175300);
    sub_10005AAC4(&qword_1001D6370, type metadata accessor for LegacyDetectionResultConvertible, &unk_100175614);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6368);
  }

  return result;
}

uint64_t sub_10005ABE0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10001276C(&qword_1001D6348, &qword_1001752F8);
    sub_10005AAC4(a2, &type metadata accessor for DetectionResult, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10005AC7C(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v99 = type metadata accessor for DetectionRequest.Originator();
  v5 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVDetection.DetectionType();
  v101 = *(v7 - 8);
  __chkstk_darwin(v7);
  v97 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetectionRequest();
  __chkstk_darwin(v9 - 8);
  v96 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000033A8(&qword_1001D6400, &qword_100175360);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v95 = &v68 - v15;
  v94 = sub_1000033A8(&qword_1001D6408, &qword_100175368);
  v16 = __chkstk_darwin(v94);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v93 = &v68 - v19;
  v92 = type metadata accessor for DetectionResult();
  v100 = *(v92 - 8);
  __chkstk_darwin(v92);
  v82 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000033A8(&unk_1001D6410, &unk_100175370);
  v77 = *(v21 - 8);
  __chkstk_darwin(v21);
  v76 = &v68 - v22;
  v75 = sub_1000033A8(&qword_1001D7FD0, &unk_1001770A0);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v68 - v23;
  v119 = &_swiftEmptySetSingleton;
  v120 = &_swiftEmptySetSingleton;
  v117 = _swiftEmptyArrayStorage;
  v118 = _swiftEmptyArrayStorage;
  if (a1)
  {
    sub_100057CF8(a1);
    v24.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v24.super.isa = 0;
  }

  v25 = sub_10005B96C(v24.super.isa);

  if (!v25)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v81 = v14;
  sub_1000033A8(&unk_1001D6420, &qword_100175380);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10005812C(v26, &v120, &v119, &v118, &v117, ObjectType);

  v116 = &_swiftEmptyDictionarySingleton;
  v27 = v119;
  sub_1000581E4(v119, &v116, &v118, &v117);
  v71 = v120;
  sub_10009CA5C(v120);
  if (v29)
  {
LABEL_37:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v72 = v27;
  v30 = v116;
  v31 = v116[2];
  v32 = v82;
  v70 = v28;
  if (v31)
  {
    v68 = v21;
    v69 = v2;
    v110 = _swiftEmptyArrayStorage;
    sub_100059548(0, v31, 0);
    v108 = v110;
    v33 = v30 + 8;
    v34 = _HashTable.startBucket.getter();
    v35 = 0;
    v83 = *(v30 + 9);
    v88 = v101 + 32;
    v87 = (v5 + 104);
    v86 = enum case for DetectionRequest.Originator.streaming(_:);
    v85 = v100 + 32;
    v78 = v30 + 9;
    v36 = *(v30 + 32);
    v80 = v7;
    v79 = v18;
    v91 = v30;
    v90 = v31;
    v84 = v30 + 8;
    v89 = v101 + 16;
    while ((v34 & 0x8000000000000000) == 0 && v34 < 1 << v36)
    {
      if ((v33[v34 >> 6] & (1 << v34)) == 0)
      {
        goto LABEL_32;
      }

      v104 = 1 << v34;
      v105 = v34 >> 6;
      v103 = v35;
      v38 = v101;
      v39 = v30[6] + *(v101 + 72) * v34;
      v40 = v93;
      v106 = *(v101 + 16);
      v106(v93, v39, v7);
      v41 = v30[7];
      v107 = v34;
      v42 = *(v41 + 8 * v34);
      (*(v38 + 32))(v18, v40, v7);
      *&v18[*(v94 + 48)] = v42;
      v43 = *(v42 + 16);
      v44 = type metadata accessor for CVDetection();
      v45 = *(v44 - 8);
      v46 = v45;
      if (v43)
      {
        v47 = v42 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v48 = v95;
        v109 = *(v45 + 16);
        v109(v95, v47, v44);
        v49 = *(v46 + 56);
        v49(v48, 0, 1, v44);
        v102 = v42;

        sub_10001370C(v48, &qword_1001D6400, &qword_100175360);
        v50 = *(v46 + 72);
        v51 = v81;
        do
        {
          v109(v51, v47, v44);
          v49(v51, 0, 1, v44);
          sub_10001370C(v51, &qword_1001D6400, &qword_100175360);
          v47 += v50;
          --v43;
        }

        while (v43);
        v49(v51, 1, 1, v44);
        v7 = v80;
        v18 = v79;
        v32 = v82;
      }

      else
      {
        v52 = v95;
        (*(v45 + 56))(v95, 1, 1, v44);

        sub_10001370C(v52, &qword_1001D6400, &qword_100175360);
      }

      v106(v97, v18, v7);
      (*v87)(v98, v86, v99);
      v115 = _swiftEmptyArrayStorage;
      static CGRect.unitRect.getter();
      sub_1000033A8(&qword_1001D6378, &qword_100175308);
      sub_100013608(&qword_1001D6380, &qword_1001D6378, &qword_100175308, &protocol conformance descriptor for [A]);
      DetectionRequest.init<A>(detectionType:originator:annotations:regionOfInterest:timestamp:)();

      DetectionResult.init(request:results:)();
      sub_10001370C(v18, &qword_1001D6408, &qword_100175368);
      v53 = v108;
      v110 = v108;
      v55 = v108[2];
      v54 = v108[3];
      if (v55 >= v54 >> 1)
      {
        sub_100059548((v54 > 1), v55 + 1, 1);
        v53 = v110;
      }

      v53[2] = v55 + 1;
      v56 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v108 = v53;
      (*(v100 + 32))(v53 + v56 + *(v100 + 72) * v55, v32, v92);
      v30 = v91;
      v36 = *(v91 + 32);
      v34 = 1 << v36;
      if (v107 >= 1 << v36)
      {
        goto LABEL_33;
      }

      v33 = v84;
      v57 = v84[v105];
      if ((v57 & v104) == 0)
      {
        goto LABEL_34;
      }

      if (v83 != *(v91 + 9))
      {
        goto LABEL_35;
      }

      v58 = v57 & (-2 << (v107 & 0x3F));
      if (v58)
      {
        v34 = __clz(__rbit64(v58)) | v107 & 0x7FFFFFFFFFFFFFC0;
        v37 = v103;
      }

      else
      {
        v59 = v105 << 6;
        v60 = v105 + 1;
        v61 = &v78[v105];
        v37 = v103;
        while (v60 < (v34 + 63) >> 6)
        {
          v63 = *v61++;
          v62 = v63;
          v59 += 64;
          ++v60;
          if (v63)
          {
            v34 = __clz(__rbit64(v62)) + v59;
            break;
          }
        }
      }

      v35 = v37 + 1;
      if (v35 == v90)
      {
        v2 = v69;
        v21 = v68;
        v64 = v108;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v64 = _swiftEmptyArrayStorage;
LABEL_30:
  v65 = v77;
  v66 = v76;
  (*(v77 + 16))(v76, v2 + OBJC_IVAR____TtC6Tamale26StreamingMetadataProcessor_continuation, v21);
  v110 = v70;
  v111 = v64;
  v112 = v70;
  v113 = 0;
  v114 = 1;
  v67 = v73;
  AsyncStream.Continuation.yield(_:)();
  (*(v65 + 8))(v66, v21);
  (*(v74 + 8))(v67, v75);
}

id sub_10005B96C(void *a1)
{
  v1 = a1;
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v1, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = v7;
        v17 = 0uLL;
        v18 = 0;
        if (v7)
        {
          objc_msgSend_time(v7);
        }

        v9 = [v8 handledMetadataObjectTypes];
        v10 = [v8 metadataObjects];
        v15 = v17;
        v16 = v18;
        v11 = [NSValue valueWithCMTime:&v15];
        v23[0] = v11;
        v23[1] = v9;
        v23[2] = v10;
        v12 = [NSArray arrayWithObjects:v23 count:3];
        [v2 addObject:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  return v2;
}

_OWORD *sub_10005BB58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10005BB68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10005BBC4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10005BC60(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10005BCC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVDetection();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10005BD48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVDetection();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10005BDB8(uint64_t a1)
{
  result = type metadata accessor for CVDetection();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10005BE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LegacyDetectionRequestConvertible(0);
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

uint64_t sub_10005BF20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LegacyDetectionRequestConvertible(0);
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

void sub_10005BFD8(uint64_t a1)
{
  type metadata accessor for LegacyDetectionRequestConvertible(319);
  if (v1 <= 0x3F)
  {
    sub_10005C05C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005C05C(uint64_t a1)
{
  if (!qword_1001D6568)
  {
    type metadata accessor for CVDetection();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1001D6568);
    }
  }
}

unint64_t sub_10005C100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D65A0;
  if (!qword_1001D65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D65A0);
  }

  return result;
}

unint64_t sub_10005C1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D65B0;
  if (!qword_1001D65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D65B0);
  }

  return result;
}

unint64_t sub_10005C1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D65B8;
  if (!qword_1001D65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D65B8);
  }

  return result;
}

unint64_t sub_10005C24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D65C8;
  if (!qword_1001D65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D65C8);
  }

  return result;
}

uint64_t sub_10005C2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyDetectionRequestConvertible(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005C304()
{
  result = qword_1001D65E0;
  if (!qword_1001D65E0)
  {
    sub_10001276C(&qword_1001D65D8, &qword_100175698);
    sub_10005AAC4(&qword_1001D65E8, &type metadata accessor for CVDetection, &protocol conformance descriptor for CVDetection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D65E0);
  }

  return result;
}

uint64_t sub_10005C3B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10005C418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6610;
  if (!qword_1001D6610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6610);
  }

  return result;
}

uint64_t sub_10005C46C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10005C4D4()
{
  result = qword_1001D6640;
  if (!qword_1001D6640)
  {
    sub_10001276C(&qword_1001D65D8, &qword_100175698);
    sub_10005AAC4(&qword_1001D6620, &type metadata accessor for CVDetection, &protocol conformance descriptor for CVDetection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6640);
  }

  return result;
}

unint64_t sub_10005C5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6648;
  if (!qword_1001D6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6648);
  }

  return result;
}

unint64_t sub_10005C604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6650;
  if (!qword_1001D6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6650);
  }

  return result;
}

unint64_t sub_10005C65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6658;
  if (!qword_1001D6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6658);
  }

  return result;
}

unint64_t sub_10005C6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6660;
  if (!qword_1001D6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6660);
  }

  return result;
}

unint64_t sub_10005C70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6668;
  if (!qword_1001D6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6668);
  }

  return result;
}

unint64_t sub_10005C764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6670;
  if (!qword_1001D6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6670);
  }

  return result;
}

uint64_t sub_10005C7B8()
{
  v0 = Angle.cgOrientation.getter();
  if ((v0 - 1) < 8)
  {
    return qword_100175908[v0 - 1];
  }

  type metadata accessor for CGImagePropertyOrientation(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_10005C854(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (!CGRectIsInfinite(*&a1))
  {
    v16.origin.x = a5;
    v16.origin.y = a6;
    v16.size.width = a7;
    v16.size.height = a8;
    if (!CGRectIsInfinite(v16))
    {
      v17.origin.x = a1;
      v17.origin.y = a2;
      v17.size.width = a3;
      v17.size.height = a4;
      if (!CGRectIsNull(v17))
      {
        v18.origin.x = a5;
        v18.origin.y = a6;
        v18.size.width = a7;
        v18.size.height = a8;
        if (!CGRectIsNull(v18))
        {
          v19.origin.x = a1;
          v19.origin.y = a2;
          v19.size.width = a3;
          v19.size.height = a4;
          CGRectGetMaxX(v19);
          v20.origin.x = a1;
          v20.origin.y = a2;
          v20.size.width = a3;
          v20.size.height = a4;
          CGRectGetMaxY(v20);
        }
      }
    }
  }
}

uint64_t sub_10005C9A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  *&v104 = a3;
  v7 = type metadata accessor for CameraSourceFrameMetadata();
  *&v102 = *(v7 - 8);
  __chkstk_darwin(v7);
  *&v101 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Angle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CameraImage();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005650(a2, &v105);
  if (!v106)
  {
    result = sub_1000056C0(&v105);
LABEL_24:
    v92 = 0uLL;
    v93 = 1;
    v91 = 0uLL;
    goto LABEL_25;
  }

  sub_10002AAA4(&v105, v107);
  v100 = a1;
  v17 = [a1 view];
  if (!v17)
  {
LABEL_23:
    result = sub_100006B44(v107);
    goto LABEL_24;
  }

  v18 = v17;
  v19 = [v17 window];
  if (!v19)
  {

    goto LABEL_23;
  }

  v20 = v19;
  v95 = v18;
  v96 = v7;
  v97 = a4;
  sub_100006AAC(v107, v108);
  dispatch thunk of CameraSourceFrame.cameraImage.getter();
  CameraImage.imageResolution.getter();
  v22 = v21;
  v24 = v23;
  (*(v14 + 8))(v16, v13);
  sub_100006AAC(v107, v108);
  CameraSourceFrame.rotationAngle.getter();
  v25 = sub_10005C7B8();
  (*(v10 + 8))(v12, v9);
  if (((1 << v25) & 0xCC) != 0)
  {
    v26 = v24;
  }

  else
  {
    v26 = v22;
  }

  if (((1 << v25) & 0xCC) != 0)
  {
    v27 = v22;
  }

  else
  {
    v27 = v24;
  }

  if (v25 <= 7)
  {
    v22 = v26;
    v24 = v27;
  }

  [v20 bounds];
  v32 = v31;
  v33 = v28;
  v34 = v29;
  v35 = v30;
  v36 = v29 / v22;
  if (v29 / v22 <= v30 / v24)
  {
    v36 = v30 / v24;
  }

  v37 = v22 * v36;
  v38 = v24 * v36;
  v39 = v32;
  MidX = CGRectGetMidX(*(&v28 - 1));
  *&v103 = v32;
  v109.origin.x = v32;
  v41 = v33;
  v109.origin.y = v33;
  *&v99 = v34;
  v109.size.width = v34;
  *&v98 = v35;
  v109.size.height = v35;
  MidY = CGRectGetMidY(v109);
  v110.origin.x = 0.0;
  v110.origin.y = 0.0;
  v110.size.width = v37;
  v110.size.height = v38;
  v43 = CGRectGetMidX(v110);
  v111.origin.x = 0.0;
  v111.origin.y = 0.0;
  v111.size.width = v37;
  v111.size.height = v38;
  v44 = MidY - CGRectGetMidY(v111);
  v112.origin.x = 0.0;
  v112.origin.y = 0.0;
  v112.size.width = v37;
  v112.size.height = v38;
  v113 = CGRectOffset(v112, MidX - v43, v44);
  v45 = v96;
  v46 = v100;
  if ((*(v104 + 32) & 1) == 0)
  {
    v48 = *(v104 + 16);
    v47 = *(v104 + 24);
    v50 = *v104;
    v49 = *(v104 + 8);
    x = v113.origin.x;
    y = v113.origin.y;
    width = v113.size.width;
    *&v104 = v41;
    height = v113.size.height;
    CGRectGetWidth(v113);
    v114.origin.x = x;
    v114.origin.y = y;
    v114.size.width = width;
    v114.size.height = height;
    CGRectGetMinX(v114);
    v115.origin.x = v50;
    v115.origin.y = v49;
    v115.size.width = v48;
    v115.size.height = v47;
    CGRectGetMinX(v115);
    v116.origin.x = x;
    v116.origin.y = y;
    v116.size.width = width;
    v116.size.height = height;
    v41 = *&v104;
    CGRectGetMinY(v116);
    v117.origin.x = v50;
    v117.origin.y = v49;
    v117.size.width = v48;
    v117.size.height = v47;
    CGRectGetMinY(v117);
    v118.origin.x = v50;
    v118.origin.y = v49;
    v118.size.width = v48;
    v118.size.height = v47;
    CGRectGetWidth(v118);
    v119.origin.x = v50;
    v119.origin.y = v49;
    v119.size.width = v48;
    v119.size.height = v47;
    CGRectGetHeight(v119);
  }

  v55 = v95;
  [v95 convertRect:v20 fromCoordinateSpace:{*&v103, v41, *&v99, *&v98}];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v55;
  [v55 bounds];
  sub_10005C854(v57, v59, v61, v63, v65, v66, v67, v68);
  v104 = v69;
  v98 = v70;
  v103 = v71;
  v99 = v72;
  if (([v46 activeInteractionTypes] & 1) != 0 || (objc_msgSend(v46, "activeInteractionTypes") & 2) != 0)
  {
    sub_100006AAC(v107, v108);
    v75 = v20;
    v76 = v101;
    dispatch thunk of CameraSourceFrame.metadata.getter();
    CameraSourceFrameMetadata.safeArea.getter();
    v77 = *(v102 + 8);
    v77(v76, v45);
    CGRect.center.getter();
    *&v120.origin.x = v104;
    *&v120.origin.y = v98;
    *&v120.size.width = v103;
    *&v120.size.height = v99;
    CGRectGetWidth(v120);
    sub_100006AAC(v107, v108);
    dispatch thunk of CameraSourceFrame.metadata.getter();
    CameraSourceFrameMetadata.safeArea.getter();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v77(v76, v45);
    v121.origin.x = v79;
    v121.origin.y = v81;
    v121.size.width = v83;
    v121.size.height = v85;
    CGRectGetHeight(v121);
    *&v122.origin.x = v104;
    *&v122.origin.y = v98;
    *&v122.size.width = v103;
    *&v122.size.height = v99;
    CGRectGetHeight(v122);
    CGRect.init(centeredAt:size:)();
    v104 = v86;
    v101 = v87;
    v103 = v88;
    v102 = v89;

    *&v90 = v104;
    *(&v90 + 1) = v101;
    v104 = v90;
    *&v90 = v103;
    *(&v90 + 1) = v102;
    v103 = v90;
  }

  else
  {

    *&v73 = v104;
    *(&v73 + 1) = v98;
    v104 = v73;
    *&v73 = v103;
    *(&v73 + 1) = v99;
    v103 = v73;
  }

  result = sub_100006B44(v107);
  v91 = v103;
  v92 = v104;
  v93 = 0;
  a4 = v97;
LABEL_25:
  *a4 = v92;
  a4[1] = v91;
  a4[2].n128_u8[0] = v93;
  return result;
}

unint64_t sub_10005D128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D67D8;
  if (!qword_1001D67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D67D8);
  }

  return result;
}

uint64_t sub_10005D1D4()
{
  sub_100061BBC(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_10005D244(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6Tamale14AVCameraSource__captureVideoOutput;
  v5 = *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureVideoOutput);
  sub_10005BBC4(0, &unk_1001D6B90, AVCaptureVideoDataOutput_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_10005D3CC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_10005D47C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_10005D540(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6Tamale14AVCameraSource__captureMetadataOutput;
  v5 = *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureMetadataOutput);
  sub_10005BBC4(0, &qword_1001D6B88, AVCaptureMetadataOutput_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10005D6B4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC6Tamale14AVCameraSource___latestFrame;
  swift_beginAccess();
  return sub_1000619D4(v5 + v3, a1);
}

uint64_t sub_10005D77C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC6Tamale14AVCameraSource___latestFrame;
  swift_beginAccess();
  return sub_1000619D4(v3 + v4, a2);
}

uint64_t sub_10005D844(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D6B08, &unk_100175BD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000619D4(a1, &v6 - v3);
  return sub_10005D8D8(v4);
}

uint64_t sub_10005D8D8(uint64_t a1)
{
  v3 = sub_1000033A8(&qword_1001D6B08, &unk_100175BD0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC6Tamale14AVCameraSource___latestFrame;
  swift_beginAccess();
  sub_1000619D4(v1 + v6, v5);
  v7 = sub_100060490(v5, a1);
  sub_10001370C(v5, &qword_1001D6B08, &unk_100175BD0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000619D4(a1, v5);
    swift_beginAccess();
    sub_100061A44(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_10001370C(a1, &qword_1001D6B08, &unk_100175BD0);
}

uint64_t sub_10005DAC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6B08, &unk_100175BD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_1000619D4(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC6Tamale14AVCameraSource___latestFrame;
  swift_beginAccess();
  sub_100061A44(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_10005DB8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000033A8(&qword_1001D6B70, &unk_100175C50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = v4 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState;
  v13 = *(v4 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState);
  v14 = *(v4 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 8);
  *v12 = a1;
  *(v12 + 8) = a2;
  v15 = *(v12 + 16);
  *(v12 + 16) = a3;
  sub_1000616E4(v13, v14, v15);
  swift_getKeyPath();
  v20 = v4;
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v12 + 8);
  v17 = *(v12 + 16);
  v20 = *v12;
  v21 = v16;
  v22 = v17;
  sub_100060424(v20, v16, v17);
  sub_1000033A8(&qword_1001D6B78, &unk_100177100);
  AsyncStream.Continuation.yield(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10005DD40()
{
  swift_getKeyPath();
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState);
  sub_100060424(v1, *(v0 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 8), *(v0 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 16));
  return v1;
}

uint64_t sub_10005DE0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState;
  v5 = *(v3 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState);
  v6 = *(v3 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 8);
  *a2 = v5;
  *(a2 + 8) = v6;
  v7 = *(v4 + 16);
  *(a2 + 16) = v7;
  return sub_100060424(v5, v6, v7);
}

uint64_t sub_10005DECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  if (sub_100060724(*(v3 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState), *(v3 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 8), *(v3 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 16), a1, a2, a3))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_1000616E4(a1, a2, v4);
  }

  else
  {

    return sub_10005DB8C(a1, a2, v4);
  }
}

id sub_10005E04C()
{
  v1 = OBJC_IVAR____TtC6Tamale14AVCameraSource____lazy_storage___captureDevice;
  v2 = *(v0 + OBJC_IVAR____TtC6Tamale14AVCameraSource____lazy_storage___captureDevice);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100060828(1);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_100061950(v4);
  }

  sub_100061960(v2);
  return v3;
}

void sub_10005E0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC6Tamale14AVCameraSource_synchronizer + 8) = a3;
    v5 = Strong;
    swift_unknownObjectWeakAssign();
  }
}

void sub_10005E138(uint64_t a1)
{
  v13 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v2 - 8);
  v12 = v2;
  __chkstk_darwin(v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  swift_getKeyPath();
  v14 = v1;
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureMetadataOutput);
  v10[1] = sub_10005BBC4(0, &qword_1001D6B40, OS_dispatch_queue_ptr);
  v8 = v7;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_1000602F8(&unk_1001D8040, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000033A8(&unk_1001D6B50, &unk_100175C40);
  sub_1000618FC(&unk_1001D8050, &unk_1001D6B50, &unk_100175C40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  [v8 setMetadataObjectsDelegate:v13 queue:v9];
}

id sub_10005E43C()
{
  v1 = OBJC_IVAR____TtC6Tamale14AVCameraSource____lazy_storage___captureSession;
  v2 = *(v0 + OBJC_IVAR____TtC6Tamale14AVCameraSource____lazy_storage___captureSession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6Tamale14AVCameraSource____lazy_storage___captureSession);
  }

  else
  {
    v4 = sub_10005E4A0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10005E4A0(CMTimeValue a1)
{
  v2 = [objc_allocWithZone(AVCaptureSession) init];
  [v2 setSessionPreset:AVCaptureSessionPresetInputPriority];
  v3 = sub_10005E04C();
  if (v3)
  {
    v4 = v3;
    v42.value = 0;
    v5 = [objc_allocWithZone(AVCaptureDeviceInput) initWithDevice:v3 error:&v42];
    if (v5)
    {
      v6 = v5;
      v7 = v42.value;
      [v2 addInput:v6];
      swift_getKeyPath();
      v42.value = a1;
      sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41 = OBJC_IVAR____TtC6Tamale14AVCameraSource__captureVideoOutput;
      [v2 addOutput:*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureVideoOutput)];
      swift_getKeyPath();
      v42.value = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [v2 addOutput:*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureMetadataOutput)];
      v42.value = 0;
      if (([v4 lockForConfiguration:&v42]& 1) != 0)
      {
        v8 = v42.value;
        v9 = [v4 formats];
        sub_10005BBC4(0, &qword_1001D6B28, AVCaptureDeviceFormat_ptr);
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v40 = v4;
        v38 = v6;
        v39 = a1;
        if (v10 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v12 = 0;
          while (1)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v13 = *(v10 + 8 * v12 + 32);
            }

            v14 = v13;
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            v16 = [v13 formatDescription];
            MediaSubType = CMFormatDescriptionGetMediaSubType(v16);

            if (MediaSubType == 875704422)
            {
              v18 = [v14 formatDescription];
              width = CMVideoFormatDescriptionGetDimensions(v18).width;

              if (width == 1920)
              {
                v20 = [v14 formatDescription];
                Dimensions = CMVideoFormatDescriptionGetDimensions(v20);

                if (HIDWORD(*&Dimensions) == 1440)
                {

                  v26 = v40;
                  [v40 setActiveFormat:v14];
                  v42 = CMTime.init(value:timescale:)(1, 30);
                  [v40 setActiveVideoMinFrameDuration:&v42];
                  v42 = CMTime.init(value:timescale:)(1, 30);
                  [v40 setActiveVideoMaxFrameDuration:&v42];
                  v27 = v39;
                  goto LABEL_28;
                }
              }
            }

            ++v12;
            if (v15 == i)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:

        v27 = v39;
        v14 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v14, v28, "No 1920x1440 formats available!", v29, 2u);
        }

        v26 = v40;
LABEL_28:

        [v26 unlockForConfiguration];
        swift_getKeyPath();
        v42.value = v27;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [*(v27 + v41) setAlwaysDiscardsLateVideoFrames:0];
        swift_getKeyPath();
        v42.value = v27;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [*(v27 + v41) setSampleBufferDelegate:v27 queue:*(v27 + OBJC_IVAR____TtC6Tamale14AVCameraSource_frameQueue)];
        swift_getKeyPath();
        v42.value = v27;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v30 = *(v27 + v41);
        sub_1000033A8(&unk_1001D6B30, &unk_100175C30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100171DA0;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v32;
        *(inited + 72) = &type metadata for UInt32;
        *(inited + 48) = 875704422;
        v33 = v30;
        sub_100097328(inited);
        swift_setDeallocating();
        sub_10001370C(inited + 32, &qword_1001D8230, &qword_1001772B0);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v33 setVideoSettings:isa];

        swift_getKeyPath();
        v42.value = v27;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v35 = [*(v27 + v41) connectionWithMediaType:AVMediaTypeVideo];
        if (v35)
        {
          v36 = v35;
          if ([v35 isCameraIntrinsicMatrixDeliverySupported])
          {
            [v36 setCameraIntrinsicMatrixDeliveryEnabled:1];
          }
        }

        else
        {
        }

        goto LABEL_33;
      }

      v23 = v42.value;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
      v22 = v42.value;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v26 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v26, v24, "CameraSensor failed to get a AVCaptureDevice", v25, 2u);
    }

LABEL_33:
  }

  return v2;
}

uint64_t sub_10005EC88(uint64_t a1)
{
  v2 = sub_10005E43C();
  [v2 startRunning];

  if (*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 16) == 1 && !*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState))
  {
    return sub_10005DB8C(0, 0, 1);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10005EE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC6Tamale14AVCameraSource_frameQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000602F8(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_1000618FC(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_10005F0AC(uint64_t a1)
{
  v2 = sub_10005E43C();
  [v2 stopRunning];

  if (*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 16) >= 3u && *(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState) == 0)
  {
    return sub_10005DB8C(0, 0, 3);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10005F200()
{
  v1 = sub_1000033A8(&qword_1001D6B08, &unk_100175BD0);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  v4 = *&v0[OBJC_IVAR____TtC6Tamale14AVCameraSource_frameQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000617F4;
  *(v6 + 24) = v5;
  aBlock[4] = sub_10006180C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100071D78;
  aBlock[3] = &unk_1001C1950;
  v7 = _Block_copy(aBlock);
  v8 = v0;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = type metadata accessor for AVCameraSourceFrame(0);
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    sub_10005D8D8(v3);
  }

  return result;
}

uint64_t sub_10005F3F4(uint64_t a1)
{
  v2 = sub_10005E43C();
  [v2 stopRunning];

  if (!*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 16) && !*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState))
  {
    return sub_10005DB8C(0, 0, 0);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_10005F56C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVCameraSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10005F810(uint64_t a1)
{
  sub_10005FA38(319);
  if (v1 <= 0x3F)
  {
    sub_10005FAB0(319, &unk_1001D6940, &type metadata accessor for AsyncStream);
    if (v2 <= 0x3F)
    {
      sub_10005FAB0(319, &qword_1001D7630, &type metadata accessor for AsyncStream.Continuation);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Logger();
        if (v4 <= 0x3F)
        {
          type metadata accessor for OSSignposter();
          if (v5 <= 0x3F)
          {
            type metadata accessor for ObservationRegistrar();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10005FA38(uint64_t a1)
{
  if (!qword_1001D6938)
  {
    type metadata accessor for AVCameraSourceFrame(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001D6938);
    }
  }
}

void sub_10005FAB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CameraSourceRunState);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10005FB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10006043C(a1, a2, a3);
  swift_allocError();
  *v4 = 0xD00000000000002BLL;
  v4[1] = 0x800000010016C820;
  swift_willThrow();
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_10005FBC4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState);
  sub_100060424(v2, *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 8), *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 16));
  return v2;
}

uint64_t sub_10005FC90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC6Tamale14AVCameraSource_runStateStreamInternal;
  v5 = sub_1000033A8(&qword_1001D6AF0, &qword_100175BA0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10005FD84@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CameraImage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10005FDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CameraSourceFrameMetadata();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10005FE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = enum case for CameraImage.none(_:);
  v6 = type metadata accessor for CameraImage();
  (*(*(v6 - 8) + 104))(a2, v5, v6);
  v7 = *(a1 + 20);
  v8 = type metadata accessor for CameraSourceFrameMetadata();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2 + v7, v2 + v7, v8);
}

uint64_t sub_10005FF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static CameraImage.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static CameraSourceFrameMetadata.== infix(_:_:)();
}

uint64_t sub_10006002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CameraImage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CameraSourceFrameMetadata();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100060130(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CameraImage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CameraSourceFrameMetadata();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10006022C(uint64_t a1)
{
  result = type metadata accessor for CameraImage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CameraSourceFrameMetadata();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000602F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000603D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  sub_100060424(*a1, v2, v3);
  return sub_10005DECC(v1, v2, v3);
}

uint64_t sub_100060424(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

unint64_t sub_10006043C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6B00;
  if (!qword_1001D6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6B00);
  }

  return result;
}

uint64_t sub_100060490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVCameraSourceFrame(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001D6B08, &unk_100175BD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_1000033A8(&qword_1001D6B80, &qword_100175C88);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1000619D4(a1, &v20 - v13);
  sub_1000619D4(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_10001370C(v14, &qword_1001D6B08, &unk_100175BD0);
      v17 = 0;
      return v17 & 1;
    }

LABEL_6:
    sub_10001370C(v14, &qword_1001D6B80, &qword_100175C88);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000619D4(v14, v10);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_100061760(v10);
    goto LABEL_6;
  }

  sub_100061AD8(&v14[v15], v7);
  if (static CameraImage.== infix(_:_:)())
  {
    v18 = static CameraSourceFrameMetadata.== infix(_:_:)();
    sub_100061760(v7);
    v17 = v18 ^ 1;
  }

  else
  {
    sub_100061760(v7);
    v17 = 1;
  }

  sub_100061760(v10);
  sub_10001370C(v14, &qword_1001D6B08, &unk_100175BD0);
  return v17 & 1;
}

BOOL sub_100060724(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 != a4 || a2 != a5)
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
          return (v8 & 1) == 0;
        }

LABEL_29:
        v8 = 1;
        return (v8 & 1) == 0;
      }
    }

    else
    {
      if (!(a1 | a2))
      {
        v8 = a6 == 3 && (a5 | a4) == 0;
        return (v8 & 1) == 0;
      }

      if (a1 ^ 1 | a2)
      {
        if (a6 != 3 || a4 != 2)
        {
          goto LABEL_30;
        }
      }

      else if (a6 != 3 || a4 != 1)
      {
        goto LABEL_30;
      }

      if (!a5)
      {
        goto LABEL_29;
      }
    }

LABEL_30:
    v8 = 0;
    return (v8 & 1) == 0;
  }

  v6 = a4 == a1;
  if (a6)
  {
    v6 = 0;
  }

  v7 = a6 == 1 && a4 == a1;
  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  return (v8 & 1) == 0;
}

id sub_100060828(id a1)
{
  sub_1000033A8(&qword_1001D6B60, &qword_100177580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100171DA0;
  *(inited + 32) = AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  v3 = AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  v4 = AVCaptureDeviceTypeBuiltInUltraWideCamera;
  sub_100094F10(1, 2, 1, inited);
  sub_1000C3748(0, 0, 1, v4);

  type metadata accessor for DeviceType(0);
  v5 = AVMediaTypeVideo;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [objc_opt_self() discoverySessionWithDeviceTypes:isa mediaType:v5 position:a1];

  v8 = [v7 devices];
  sub_10005BBC4(0, &qword_1001D6B68, AVCaptureDevice_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = v7;
  if (v9 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ([v12 position] == a1)
      {

        return v13;
      }

      ++v11;
      if (v14 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v13 = [objc_opt_self() defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInWideAngleCamera mediaType:v5 position:2];

  return v13;
}

void sub_100060AE8(opaqueCMSampleBuffer *a1)
{
  v82 = type metadata accessor for OSSignpostError();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000033A8(&qword_1001D6B08, &unk_100175BD0);
  __chkstk_darwin(v4 - 8);
  v86 = &ObjectType - v5;
  v94 = type metadata accessor for AVCameraSourceFrame(0);
  v85 = *(v94 - 8);
  __chkstk_darwin(v94);
  v95 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Angle();
  __chkstk_darwin(v7 - 8);
  v83 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CameraSourceFrameMetadata();
  v92 = *(v9 - 8);
  v93 = v9;
  __chkstk_darwin(v9);
  v89 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CameraImage();
  v90 = *(v11 - 8);
  v91 = v11;
  __chkstk_darwin(v11);
  v88 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v87 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &ObjectType - v18;
  __chkstk_darwin(v17);
  v21 = &ObjectType - v20;
  v22 = OBJC_IVAR____TtC6Tamale14AVCameraSource_signposter;
  v23 = static LoggingSignposter.avCameraSourceFrameHandler.getter();
  v25 = v24;
  static OSSignpostID.exclusive.getter();
  v96 = v1;
  v84 = v22;
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    if ((v25 & 1) == 0)
    {
      if (v23)
      {
LABEL_9:
        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v29, v23, "", v28, 2u);

        goto LABEL_10;
      }

      __break(1u);
    }

    if (HIDWORD(v23))
    {
      __break(1u);
    }

    else
    {
      if ((v23 & 0xFFFFF800) == 0xD800)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v23 >> 16 <= 0x10)
      {
        v23 = &v97;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_10:

  (*(v14 + 16))(v19, v21, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v30 = OSSignpostIntervalState.init(id:isOpen:)();
  v31 = *(v14 + 8);
  v31(v21, v13);
  v32 = CMSampleBufferGetFormatDescription(a1);
  if (v32)
  {
    v33 = v32;
    if (CMFormatDescriptionGetMediaType(v32) == 1986618469)
    {
      CMSampleBufferGetPresentationTimeStamp(&v99, a1);
      v34 = CMSampleBufferGetImageBuffer(a1);
      if (v34)
      {
        v78 = v31;
        v79 = v30;
        v99.value = v34;
        v35 = v34;
        type metadata accessor for CVBuffer(0);
        v77 = v35;
        v36 = v88;
        SendableTransfer.init(wrappedValue:)();
        v38 = v90;
        v37 = v91;
        (*(v90 + 104))(v36, enum case for CameraImage.pixelBuffer(_:), v91);
        CameraImage.imageResolution.getter();
        static Angle.degrees(_:)();
        CMTime.seconds.getter();
        static CGRect.unitRect.getter();
        v39 = v89;
        CameraSourceFrameMetadata.init(imageResolution:rotationAngle:shouldAttemptDetection:timestamp:isHighResolutionStill:safeArea:)();
        v40 = v95;
        (*(v38 + 16))(v95, v36, v37);
        v41 = v94;
        (*(v92 + 16))(v40 + *(v94 + 20), v39, v93);
        v42 = v96;
        v43 = v96 + OBJC_IVAR____TtC6Tamale14AVCameraSource_synchronizer;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v45 = *(v43 + 8);
          v83 = Strong;
          ObjectType = swift_getObjectType();
          swift_getKeyPath();
          v99.value = v42;
          sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource, &unk_100175B5C);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v46 = v42 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState;
          v47 = *(v42 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState);
          v48 = *(v42 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 8);
          memset(&v99, 0, 17);
          v100 = v47;
          v101 = v48;
          v49 = *(v46 + 16);
          v102 = v49;
          v50 = *(v45 + 8);
          sub_100060424(v47, v48, v49);
          v51 = sub_1000602F8(&qword_1001D6A48, type metadata accessor for AVCameraSourceFrame, &unk_100175B0C);
          v50(v95, &v99, v94, v51, ObjectType, v45);
          v41 = v94;
          v40 = v95;
          swift_unknownObjectRelease();
          sub_1000616E4(v47, v48, v49);
        }

        v52 = v86;
        sub_1000616FC(v40, v86);
        (*(v85 + 56))(v52, 0, 1, v41);
        sub_10005D8D8(v52);
        v53 = static LoggingSignposter.avCameraSourceFrameHandler.getter();
        v55 = v54;
        v56 = OSSignposter.logHandle.getter();
        v57 = v87;
        OSSignpostIntervalState.signpostID.getter();
        LODWORD(v96) = static os_signpost_type_t.end.getter();
        if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
        {

          v70 = v57;
LABEL_37:
          v78(v70, v13);
          sub_100061760(v40);
          (*(v92 + 8))(v89, v93);
          (*(v90 + 8))(v88, v91);
          return;
        }

        if (v55)
        {
          if (!HIDWORD(v53))
          {
            v58 = v82;
            v59 = v81;
            v60 = v80;
            if ((v53 & 0xFFFFF800) == 0xD800)
            {
LABEL_44:
              __break(1u);
              return;
            }

            if (v53 >> 16 <= 0x10)
            {
              v53 = &v98;
              goto LABEL_33;
            }

LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (v53)
        {
          v58 = v82;
          v59 = v81;
          v60 = v80;
LABEL_33:

          checkForErrorAndConsumeState(state:)();

          if ((*(v59 + 88))(v60, v58) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v71 = "[Error] Interval already ended";
          }

          else
          {
            (*(v59 + 8))(v60, v58);
            v71 = "";
          }

          v72 = v87;
          v73 = v77;
          v74 = swift_slowAlloc();
          *v74 = 0;
          v75 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, v96, v75, v53, v71, v74, 2u);

          v70 = v72;
          goto LABEL_37;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "Failed to obtain a CVPixelBuffer for the current output frame.", v69, 2u);
      }
    }

    else
    {
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Skipping non-video data, returning…", v66, 2u);
      }
    }
  }

  else
  {
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Failed to get format description, returning…", v63, 2u);
    }
  }
}

double sub_1000616E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1000616FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVCameraSourceFrame(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061760(uint64_t a1)
{
  v2 = type metadata accessor for AVCameraSourceFrame(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000617BC()
{

  return swift_deallocObject();
}

uint64_t sub_100061814(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000618FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001276C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100061950(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_100061960(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100061970()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_100060424(v1, v2, v3);
  return sub_10005DB8C(v1, v2, v3);
}

uint64_t sub_1000619D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6B08, &unk_100175BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6B08, &unk_100175BD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVCameraSourceFrame(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100061B3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureMetadataOutput);
  *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureMetadataOutput) = v2;
  v4 = v2;
}

void sub_100061B7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureVideoOutput);
  *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureVideoOutput) = v2;
  v4 = v2;
}

__n128 sub_100061C18(uint64_t a1, uint64_t a2)
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

uint64_t sub_100061C48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100061C94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100061CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10006466C(v5, v7) & 1;
}

uint64_t sub_100061D6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = type metadata accessor for Capsule();
  __chkstk_darwin(v3 - 8);
  v68 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000033A8(&qword_1001D6BA0, &qword_100175DC0);
  __chkstk_darwin(v70);
  v71 = &v65 - v5;
  v6 = sub_1000033A8(&qword_1001D6BA8, &qword_100175DC8);
  __chkstk_darwin(v6 - 8);
  v8 = &v65 - v7;
  v9 = sub_1000033A8(&qword_1001D6BB0, &qword_100175DD0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v65 - v11;
  v13 = sub_1000033A8(&qword_1001D6BB8, &qword_100175DD8);
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v16 = sub_1000033A8(&qword_1001D6BC0, &qword_100175DE0);
  v17 = *(v16 - 8);
  v65 = v16;
  v66 = v17;
  __chkstk_darwin(v16);
  v19 = &v65 - v18;
  v69 = sub_1000033A8(&qword_1001D6BC8, &qword_100175DE8);
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v21 = &v65 - v20;
  v22 = *(v2 + 48);
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = sub_1000033A8(&qword_1001D6BD0, &qword_100175DF0);
  sub_1000623C4(v2, v22 & 1, &v8[*(v23 + 44)]);
  LOBYTE(v2) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10002091C(v8, v12, &qword_1001D6BA8, &qword_100175DC8);
  v32 = &v12[*(v10 + 44)];
  *v32 = v2;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  LOBYTE(v2) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10002091C(v12, v15, &qword_1001D6BB0, &qword_100175DD0);
  v41 = &v15[*(v13 + 36)];
  *v41 = v2;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = sub_1000033A8(&qword_1001D6BD8, &qword_100175DF8);
  v43 = sub_100064144();
  v44 = sub_100064288();
  View.ifCondition<A>(_:transform:)();
  sub_10001370C(v15, &qword_1001D6BB8, &qword_100175DD8);
  sub_1000033A8(&qword_1001D6C10, &unk_100175E08);
  v73 = v13;
  v74 = v42;
  v75 = v43;
  v76 = v44;
  swift_getOpaqueTypeConformance2();
  sub_100064340();
  v45 = v65;
  View.ifCondition<A>(_:transform:)();
  (*(v66 + 8))(v19, v45);
  v46 = v68;
  v47 = static Alignment.center.getter();
  v49 = v48;
  v50 = enum case for RoundedCornerStyle.continuous(_:);
  v51 = type metadata accessor for RoundedCornerStyle();
  (*(*(v51 - 8) + 104))(v46, v50, v51);
  if (v22)
  {
    static Color.red.getter();
  }

  else
  {
    static Color.black.getter();
  }

  v52 = Color.opacity(_:)();

  v53 = sub_1000033A8(&qword_1001D6C20, &qword_100175E18);
  v55 = v71;
  v54 = v72;
  v56 = v72 + *(v53 + 36);
  sub_100064460(v46, v71);
  v57 = v55 + *(v70 + 36);
  *v57 = v52;
  *(v57 + 8) = xmmword_100175CA0;
  *(v57 + 24) = 0x402E000000000000;
  static UnitPoint.center.getter();
  v59 = v58;
  v61 = v60;
  sub_1000644C4(v55, v56);
  v62 = (v56 + *(sub_1000033A8(&qword_1001D6C28, &qword_100175E20) + 36));
  *v62 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  v62[1].i64[0] = v59;
  v62[1].i64[1] = v61;
  v63 = (v56 + *(sub_1000033A8(&qword_1001D6C30, &unk_100175E28) + 36));
  *v63 = v47;
  v63[1] = v49;
  return (*(v67 + 32))(v54, v21, v69);
}

uint64_t sub_1000623C4@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v122 = a2;
  v119 = a3;
  v112 = type metadata accessor for BlurReplaceTransition.Configuration();
  v110 = *(v112 - 8);
  v4 = __chkstk_darwin(v112);
  v106 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v105 = v83 - v6;
  v117 = type metadata accessor for BlurReplaceTransition();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v111 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for OpacityTransition();
  v109 = *(v114 - 8);
  __chkstk_darwin(v114);
  v107 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1000033A8(&qword_1001D4E00, &qword_100172390);
  v113 = *(v116 - 8);
  v9 = __chkstk_darwin(v116);
  v11 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v108 = v83 - v12;
  v99 = type metadata accessor for SymbolEffectOptions();
  v96 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for BounceSymbolEffect();
  v93 = *(v121 - 8);
  v14 = __chkstk_darwin(v121);
  v120 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v83 - v16;
  v18 = sub_1000033A8(&qword_1001D6C38, &qword_100175E38);
  __chkstk_darwin(v18);
  v20 = (v83 - v19);
  v21 = sub_1000033A8(&qword_1001D6C40, &qword_100175E40);
  v97 = *(v21 - 8);
  v98 = v21;
  __chkstk_darwin(v21);
  v92 = v83 - v22;
  v94 = sub_1000033A8(&qword_1001D6C48, &qword_100175E48);
  __chkstk_darwin(v94);
  v100 = v83 - v23;
  v104 = sub_1000033A8(&qword_1001D6C50, &qword_100175E50);
  __chkstk_darwin(v104);
  v103 = v83 - v24;
  v25 = sub_1000033A8(&qword_1001D6C58, &qword_100175E58);
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v102 = v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v101 = v83 - v29;
  v30 = sub_1000033A8(&qword_1001D6C60, &qword_100175E60);
  v31 = __chkstk_darwin(v30 - 8);
  v118 = v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v123 = v83 - v33;
  v34 = a1[5];
  if (v34)
  {
    v88 = v26;
    v89 = v25;
    v90 = v11;
    v91 = a1;
    v35 = a1[4];

    v86 = Image.init(_internalSystemName:)();
    v85 = static Font.headline.getter();
    KeyPath = swift_getKeyPath();
    BounceSymbolEffect.init()();
    BounceSymbolEffect.down.getter();
    v83[0] = *(v93 + 8);
    (v83[0])(v17, v121);
    v36 = v95;
    static SymbolEffectOptions.default.getter();
    v83[1] = v18;
    v37 = v20 + *(v18 + 36);
    v38 = sub_1000033A8(&qword_1001D6C80, &qword_100175EB0);
    v39 = v96;
    v40 = v99;
    (*(v96 + 16))(&v37[*(v38 + 36)], v36, v99);
    v41 = &v37[*(v38 + 40)];
    v87 = v35;
    *v41 = v35;
    v41[1] = v34;
    sub_1000645FC(&qword_1001D6C88, &type metadata accessor for BounceSymbolEffect, &protocol conformance descriptor for BounceSymbolEffect);
    v93 = v34;

    v42 = v120;
    v43 = v121;
    dispatch thunk of SymbolEffect.configuration.getter();
    (*(v39 + 8))(v36, v40);
    (v83[0])(v42, v43);
    v45 = KeyPath;
    v44 = v85;
    *v20 = v86;
    v20[1] = v45;
    v20[2] = v44;
    static Font.Weight.medium.getter();
    sub_10006453C();
    v46 = v92;
    View.fontWeight(_:)();
    sub_10001370C(v20, &qword_1001D6C38, &qword_100175E38);
    if (v122)
    {
      v47 = static Color.white.getter();
    }

    else
    {
      v47 = static Color.primary.getter();
    }

    v50 = v47;
    v51 = swift_getKeyPath();
    v52 = v100;
    (*(v97 + 32))(v100, v46, v98);
    v53 = (v52 + *(v94 + 36));
    *v53 = v51;
    v53[1] = v50;
    v54 = v107;
    OpacityTransition.init()();
    v55 = v105;
    static BlurReplaceTransition.Configuration.downUp.getter();
    v56 = v110;
    v57 = v112;
    (*(v110 + 16))(v106, v55, v112);
    v58 = v111;
    BlurReplaceTransition.init(configuration:)();
    (*(v56 + 8))(v55, v57);
    v59 = sub_1000645FC(&qword_1001D4E70, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v60 = sub_1000645FC(&qword_1001D4E78, &type metadata accessor for BlurReplaceTransition, &protocol conformance descriptor for BlurReplaceTransition);
    v61 = v108;
    v62 = v114;
    v63 = v117;
    Transition.combined<A>(with:)();
    (*(v115 + 8))(v58, v63);
    (*(v109 + 8))(v54, v62);
    v64 = v113;
    v65 = v116;
    (*(v113 + 16))(v90, v61, v116);
    *&v144 = v62;
    *(&v144 + 1) = v63;
    *v145 = v59;
    *&v145[8] = v60;
    swift_getOpaqueTypeConformance2();
    v66 = AnyTransition.init<A>(_:)();
    (*(v64 + 8))(v61, v65);
    v67 = v103;
    sub_10002091C(v52, v103, &qword_1001D6C48, &qword_100175E48);
    *(v67 + *(v104 + 36)) = v66;
    v68 = static Animation.easeInOut(duration:)();
    v69 = v102;
    sub_10002091C(v67, v102, &qword_1001D6C50, &qword_100175E50);
    v70 = v89;
    v71 = (v69 + *(v89 + 36));
    v72 = v87;
    *v71 = v68;
    v71[1] = v72;
    v71[2] = v93;
    v73 = v69;
    v74 = v101;
    sub_10002091C(v73, v101, &qword_1001D6C58, &qword_100175E58);
    v75 = v74;
    v76 = v123;
    sub_10002091C(v75, v123, &qword_1001D6C58, &qword_100175E58);
    (*(v88 + 56))(v76, 0, 1, v70);
    v49 = v119;
    a1 = v91;
    v48 = v122;
  }

  else
  {
    (*(v26 + 56))(v123, 1, 1, v25);
    v48 = v122;
    v49 = v119;
  }

  v77 = static HorizontalAlignment.leading.getter();
  v125 = 0;
  sub_1000631C8(a1, v48 & 1, &v144);
  v138 = *&v145[176];
  v139 = *&v145[192];
  v140 = *&v145[208];
  v141 = *&v145[224];
  v134 = *&v145[112];
  v135 = *&v145[128];
  v136 = *&v145[144];
  v137 = *&v145[160];
  v130 = *&v145[48];
  v131 = *&v145[64];
  v132 = *&v145[80];
  v133 = *&v145[96];
  v126 = v144;
  v127 = *v145;
  v128 = *&v145[16];
  v129 = *&v145[32];
  v142[12] = *&v145[176];
  v142[13] = *&v145[192];
  v142[14] = *&v145[208];
  v142[15] = *&v145[224];
  v142[8] = *&v145[112];
  v142[9] = *&v145[128];
  v142[10] = *&v145[144];
  v142[11] = *&v145[160];
  v142[4] = *&v145[48];
  v142[5] = *&v145[64];
  v142[6] = *&v145[80];
  v142[7] = *&v145[96];
  v142[0] = v144;
  v142[1] = *v145;
  v142[2] = *&v145[16];
  v142[3] = *&v145[32];
  sub_1000138BC(&v126, v143, &qword_1001D6C68, &qword_100175E68);
  sub_10001370C(v142, &qword_1001D6C68, &qword_100175E68);
  *&v124[199] = v138;
  *&v124[215] = v139;
  *&v124[231] = v140;
  *&v124[247] = v141;
  *&v124[135] = v134;
  *&v124[151] = v135;
  *&v124[167] = v136;
  *&v124[183] = v137;
  *&v124[71] = v130;
  *&v124[87] = v131;
  *&v124[103] = v132;
  *&v124[119] = v133;
  *&v124[7] = v126;
  *&v124[23] = v127;
  *&v124[39] = v128;
  *&v124[55] = v129;
  v78 = v125;
  v79 = v123;
  v80 = v118;
  sub_1000138BC(v123, v118, &qword_1001D6C60, &qword_100175E60);
  sub_1000138BC(v80, v49, &qword_1001D6C60, &qword_100175E60);
  v81 = *(sub_1000033A8(&qword_1001D6C70, &qword_100175E70) + 48);
  v143[0] = v77;
  v143[1] = 0x3FF0000000000000;
  LOBYTE(v143[2]) = v78;
  memcpy(&v143[2] + 1, v124, 0x107uLL);
  v143[35] = 0x3FF0000000000000;
  memcpy((v49 + v81), v143, 0x120uLL);
  sub_1000138BC(v143, &v144, &qword_1001D6C78, &qword_100175E78);
  sub_10001370C(v79, &qword_1001D6C60, &qword_100175E60);
  *&v144 = v77;
  *(&v144 + 1) = 0x3FF0000000000000;
  v145[0] = v78;
  memcpy(&v145[1], v124, 0x107uLL);
  v146 = 0x3FF0000000000000;
  sub_10001370C(&v144, &qword_1001D6C78, &qword_100175E78);
  return sub_10001370C(v80, &qword_1001D6C60, &qword_100175E60);
}

uint64_t sub_1000631C8@<X0>(uint64_t *a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  LODWORD(v134) = a2;
  v130 = a3;
  v4 = sub_1000033A8(&qword_1001D4E88, &qword_100172410);
  __chkstk_darwin(v4 - 8);
  v126 = &v110 - v5;
  v140 = type metadata accessor for BlurReplaceTransition.Configuration();
  v153 = *(v140 - 8);
  v6 = __chkstk_darwin(v140);
  v138 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v137 = &v110 - v8;
  v139 = type metadata accessor for BlurReplaceTransition();
  v150 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for OpacityTransition();
  v149 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1000033A8(&qword_1001D4E00, &qword_100172390);
  v152 = *(v133 - 8);
  v11 = __chkstk_darwin(v133);
  v131 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v151 = &v110 - v14;
  v15 = *a1;
  v16 = a1[1];
  v208 = *(a1 + 1);
  v129 = v15;
  *&v194 = v15;
  *(&v194 + 1) = v16;
  v19 = sub_10002EC9C(v13, v17, v18);
  v141 = v16;

  v116 = v19;
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  static Font.subheadline.getter();
  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;

  sub_100020D44(v20, v22, v24 & 1);

  static Font.Weight.medium.getter();
  v30 = Text.fontWeight(_:)();
  v146 = v31;
  v147 = v30;
  v33 = v32;
  v148 = v34;
  sub_100020D44(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  if (v134)
  {
    v35 = static Color.white.getter();
  }

  else
  {
    v35 = static Color.primary.getter();
  }

  v144 = v35;
  v128 = swift_getKeyPath();
  v143 = v33 & 1;
  v207 = v33 & 1;
  v205 = 0;
  v36 = v132;
  OpacityTransition.init()();
  v37 = v137;
  static BlurReplaceTransition.Configuration.downUp.getter();
  v38 = v153;
  v39 = v140;
  v124 = *(v153 + 16);
  v125 = v153 + 16;
  v124(v138, v37, v140);
  v40 = v136;
  BlurReplaceTransition.init(configuration:)();
  v123 = *(v38 + 8);
  v153 = v38 + 8;
  v123(v37, v39);
  v41 = sub_1000645FC(&qword_1001D4E70, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v42 = sub_1000645FC(&qword_1001D4E78, &type metadata accessor for BlurReplaceTransition, &protocol conformance descriptor for BlurReplaceTransition);
  v43 = v151;
  v44 = v135;
  v45 = v139;
  Transition.combined<A>(with:)();
  v46 = v150 + 8;
  v120 = *(v150 + 8);
  v120(v40, v45);
  v47 = v149 + 8;
  v119 = *(v149 + 8);
  v119(v36, v44);
  v48 = v152;
  v49 = v43;
  v50 = v133;
  v117 = *(v152 + 16);
  v118 = v152 + 16;
  v117(v131, v49, v133);
  *&v194 = v44;
  *(&v194 + 1) = v45;
  v121 = v42;
  v122 = v41;
  *&v195 = v41;
  *(&v195 + 1) = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v127 = AnyTransition.init<A>(_:)();
  v52 = *(v48 + 8);
  v152 = v48 + 8;
  v52(v151, v50);
  v142 = static Animation.easeInOut(duration:)();
  v209[0] = v208;
  v53 = v141;
  if (*(&v208 + 1))
  {
    v113 = v52;
    v114 = OpaqueTypeConformance2;
    v149 = v47;
    v150 = v46;
    v112 = *&v209[0];
    *&v194 = *&v209[0];
    v115 = *(&v208 + 1);
    *(&v194 + 1) = *(&v208 + 1);

    sub_1000138BC(v209, &v184, &qword_1001D6CA0, &qword_100175F20);
    v54 = Text.init<A>(_:)();
    v56 = v55;
    v58 = v57;
    static Font.caption.getter();
    v59 = Text.font(_:)();
    v61 = v60;
    v63 = v62;

    sub_100020D44(v54, v56, v58 & 1);

    v64 = enum case for Font.Design.rounded(_:);
    v65 = type metadata accessor for Font.Design();
    v66 = *(v65 - 8);
    v67 = v126;
    (*(v66 + 104))(v126, v64, v65);
    (*(v66 + 56))(v67, 0, 1, v65);
    v68 = Text.fontDesign(_:)();
    v70 = v69;
    LOBYTE(v66) = v71;
    sub_100020D44(v59, v61, v63 & 1);

    sub_10001370C(v67, &qword_1001D4E88, &qword_100172410);
    static Font.Weight.medium.getter();
    v126 = Text.fontWeight(_:)();
    v116 = v72;
    v74 = v73;
    v111 = v75;
    sub_100020D44(v68, v70, v66 & 1);

    v110 = swift_getKeyPath();
    if (v134)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.primary.getter();
    }

    v134 = Color.opacity(_:)();

    v76 = swift_getKeyPath();
    v77 = v74 & 1;
    LOBYTE(v154[0]) = v74 & 1;
    LOBYTE(v175) = 0;
    v78 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    LOBYTE(v182[0]) = 0;
    v87 = v132;
    OpacityTransition.init()();
    v88 = v137;
    static BlurReplaceTransition.Configuration.downUp.getter();
    v89 = v140;
    v124(v138, v88, v140);
    v90 = v136;
    BlurReplaceTransition.init(configuration:)();
    v123(v88, v89);
    v91 = v151;
    v92 = v135;
    v93 = v139;
    Transition.combined<A>(with:)();
    v120(v90, v93);
    v119(v87, v92);
    v94 = v133;
    v117(v131, v91, v133);
    v95 = AnyTransition.init<A>(_:)();
    v113(v91, v94);
    v96 = static Animation.easeInOut(duration:)();
    *&v184 = v126;
    *(&v184 + 1) = v116;
    LOBYTE(v185) = v77;
    *(&v185 + 1) = v111;
    *&v186 = v110;
    *(&v186 + 1) = 1;
    LOBYTE(v187) = 0;
    *(&v187 + 1) = v76;
    *&v188 = v134;
    BYTE8(v188) = v78;
    *&v189 = v80;
    *(&v189 + 1) = v82;
    *&v190 = v84;
    *(&v190 + 1) = v86;
    LOBYTE(v191) = 0;
    *(&v191 + 1) = v95;
    *&v192 = v96;
    *(&v192 + 1) = v112;
    v193 = v115;
    static AskACMESource.preferredSource()();
    v200 = v190;
    v201 = v191;
    v202 = v192;
    v203 = v193;
    v196 = v186;
    v197 = v187;
    v198 = v188;
    v199 = v189;
    v194 = v184;
    v195 = v185;
    v53 = v141;
  }

  else
  {
    sub_10006464C(&v194);
  }

  v190 = v200;
  v191 = v201;
  v192 = v202;
  v186 = v196;
  v187 = v197;
  v188 = v198;
  v189 = v199;
  v184 = v194;
  v185 = v195;
  *&v175 = v147;
  *(&v175 + 1) = v146;
  LOBYTE(v176) = v143;
  *(&v176 + 1) = *v206;
  DWORD1(v176) = *&v206[3];
  *(&v176 + 1) = v148;
  *&v177 = KeyPath;
  *(&v177 + 1) = 1;
  LOBYTE(v178) = 0;
  *(&v178 + 1) = *v204;
  DWORD1(v178) = *&v204[3];
  v98 = v127;
  v97 = v128;
  *(&v178 + 1) = v128;
  *&v179 = v144;
  *(&v179 + 1) = v127;
  *&v180 = v142;
  v99 = v129;
  *(&v180 + 1) = v129;
  v170 = v177;
  v171 = v178;
  v168 = v175;
  v169 = v176;
  v172 = v179;
  v173 = v180;
  v182[0] = v194;
  v182[1] = v195;
  v182[4] = v198;
  v182[5] = v199;
  v182[2] = v196;
  v182[3] = v197;
  v182[8] = v202;
  v182[6] = v200;
  v182[7] = v201;
  *(&v174[7] + 8) = v201;
  *(&v174[6] + 8) = v200;
  *(&v174[3] + 8) = v197;
  *(&v174[2] + 8) = v196;
  *(&v174[8] + 8) = v202;
  v193 = v203;
  v181 = v53;
  v183 = v203;
  *&v174[0] = v53;
  *(&v174[9] + 1) = v203;
  *(&v174[4] + 8) = v198;
  *(&v174[5] + 8) = v199;
  *(v174 + 8) = v194;
  *(&v174[1] + 8) = v195;
  v100 = v174[7];
  v101 = v130;
  v130[12] = v174[6];
  v101[13] = v100;
  v102 = v174[9];
  v101[14] = v174[8];
  v101[15] = v102;
  v103 = v174[3];
  v101[8] = v174[2];
  v101[9] = v103;
  v104 = v174[5];
  v101[10] = v174[4];
  v101[11] = v104;
  v105 = v173;
  v101[4] = v172;
  v101[5] = v105;
  v106 = v174[1];
  v101[6] = v174[0];
  v101[7] = v106;
  v107 = v169;
  *v101 = v168;
  v101[1] = v107;
  v108 = v171;
  v101[2] = v170;
  v101[3] = v108;
  sub_1000138BC(v209, v154, &qword_1001D6CA0, &qword_100175F20);
  sub_1000138BC(&v175, v154, &qword_1001D6CA8, &qword_100175F28);
  sub_1000138BC(v182, v154, &qword_1001D6CB0, qword_100175F30);
  sub_10001370C(&v184, &qword_1001D6CB0, qword_100175F30);
  v154[0] = v147;
  v154[1] = v146;
  v155 = v143;
  *v156 = *v206;
  *&v156[3] = *&v206[3];
  v157 = v148;
  v158 = KeyPath;
  v159 = 1;
  v160 = 0;
  *v161 = *v204;
  *&v161[3] = *&v204[3];
  v162 = v97;
  v163 = v144;
  v164 = v98;
  v165 = v142;
  v166 = v99;
  v167 = v53;
  return sub_10001370C(v154, &qword_1001D6CA8, &qword_100175F28);
}

uint64_t sub_100063EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.red.getter();
  v5 = (a2 + *(sub_1000033A8(&qword_1001D6BD8, &qword_100175DF8) + 36));
  v6 = sub_1000033A8(&qword_1001D6C08, &qword_100175E00);
  v7 = *(v6 + 52);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(v5 + v7, v8, v9);
  *v5 = v4;
  *(v5 + *(v6 + 56)) = 256;
  return sub_1000138BC(a1, a2, &qword_1001D6BB8, &qword_100175DD8);
}

uint64_t sub_100063FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_1000033A8(&qword_1001D6C10, &unk_100175E08) + 36);
  static Material.thick.getter();
  v5 = sub_1000033A8(&qword_1001D4668, &qword_1001716A0);
  v6 = *(v5 + 52);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 104))(v4 + v6, v7, v8);
  *(v4 + *(v5 + 56)) = 256;
  v9 = sub_1000033A8(&qword_1001D6BC0, &qword_100175DE0);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a1, v9);
}

unint64_t sub_100064144()
{
  result = qword_1001D6BE0;
  if (!qword_1001D6BE0)
  {
    sub_10001276C(&qword_1001D6BB8, &qword_100175DD8);
    sub_1000641D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6BE0);
  }

  return result;
}

unint64_t sub_1000641D0()
{
  result = qword_1001D6BE8;
  if (!qword_1001D6BE8)
  {
    sub_10001276C(&qword_1001D6BB0, &qword_100175DD0);
    sub_100013608(&qword_1001D6BF0, &qword_1001D6BA8, &qword_100175DC8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6BE8);
  }

  return result;
}

unint64_t sub_100064288()
{
  result = qword_1001D6BF8;
  if (!qword_1001D6BF8)
  {
    sub_10001276C(&qword_1001D6BD8, &qword_100175DF8);
    sub_100064144();
    sub_100013608(&qword_1001D6C00, &qword_1001D6C08, &qword_100175E00, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6BF8);
  }

  return result;
}

unint64_t sub_100064340()
{
  result = qword_1001D6C18;
  if (!qword_1001D6C18)
  {
    sub_10001276C(&qword_1001D6C10, &unk_100175E08);
    sub_10001276C(&qword_1001D6BB8, &qword_100175DD8);
    sub_10001276C(&qword_1001D6BD8, &qword_100175DF8);
    sub_100064144();
    sub_100064288();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D4720, &qword_1001D4668, &qword_1001716A0, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6C18);
  }

  return result;
}

uint64_t sub_100064460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Capsule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000644C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6BA0, &qword_100175DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006453C()
{
  result = qword_1001D6C90;
  if (!qword_1001D6C90)
  {
    sub_10001276C(&qword_1001D6C38, &qword_100175E38);
    sub_100022DB8();
    sub_100013608(&qword_1001D6C98, &qword_1001D6C80, &qword_100175EB0, &protocol conformance descriptor for _DiscreteSymbolEffectModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6C90);
  }

  return result;
}

uint64_t sub_1000645FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10006464C(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10006466C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_22;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v6)
  {
    goto LABEL_22;
  }

  v8 = a1[5];
  v9 = *(a2 + 40);
  if (v8)
  {
    if (v9 && (a1[4] == *(a2 + 32) && v8 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_20;
    }

LABEL_22:
    v10 = 0;
    return v10 & 1;
  }

  if (v9)
  {
    goto LABEL_22;
  }

LABEL_20:
  v10 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  return v10 & 1;
}

unint64_t sub_100064744()
{
  result = qword_1001D6CB8;
  if (!qword_1001D6CB8)
  {
    sub_10001276C(&qword_1001D6C20, &qword_100175E18);
    sub_10001276C(&qword_1001D6BC0, &qword_100175DE0);
    sub_10001276C(&qword_1001D6C10, &unk_100175E08);
    sub_10001276C(&qword_1001D6BB8, &qword_100175DD8);
    sub_10001276C(&qword_1001D6BD8, &qword_100175DF8);
    sub_100064144();
    sub_100064288();
    swift_getOpaqueTypeConformance2();
    sub_100064340();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D6CC0, &qword_1001D6C30, &unk_100175E28, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6CB8);
  }

  return result;
}

uint64_t sub_1000648C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000649C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

id sub_100064BC8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CameraPreviewView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100064C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100064C78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100064CC0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

char *sub_100064D60(uint64_t a1, id a2, char a3)
{
  v18 = sub_1000033A8(&qword_1001D6DC0, &unk_100176230);
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v17 - v5;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CameraPreviewView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
  }

  swift_weakAssign();

  v13 = [v11 layer];
  [v13 setContentsGravity:kCAGravityResizeAspectFill];
  [v13 setAllowsDisplayCompositing:1];

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
  }

  v19 = v13;
  v20 = 0;
  v15 = v13;
  sub_1000033A8(&qword_1001D6DC8, &unk_10017CB90);
  AsyncStream.Continuation.yield(_:)();

  (*(v4 + 8))(v6, v18);
  return v11;
}

uint64_t sub_1000650AC(char *a1, uint64_t a2, id a3, char a4)
{
  v6 = sub_1000033A8(&qword_1001D6DC0, &unk_100176230);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (a4)
  {
    swift_weakAssign();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    swift_weakAssign();

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
  }

  v18 = [a1 layer];
  v19 = 0;
  v16 = v18;
  sub_1000033A8(&qword_1001D6DC8, &unk_10017CB90);
  AsyncStream.Continuation.yield(_:)();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000653D8(uint64_t a1)
{
  v1 = sub_1000033A8(&qword_1001D6DC0, &unk_100176230);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = 0;
    v7 = 0;
    sub_1000033A8(&qword_1001D6DC8, &unk_10017CB90);
    AsyncStream.Continuation.yield(_:)();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_100065504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000662A4(a1, a2, a3);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100065568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000662A4(a1, a2, a3);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000655CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000662A4(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000655F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v51 = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for _ConditionalContent();
  v47 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v46 = &v43 - v8;
  v48 = *(v5 - 8);
  v9 = __chkstk_darwin(v7);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v43 - v11;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10001276C(&qword_1001D6D78, &qword_100176070);
  v49 = type metadata accessor for _ConditionalContent();
  v53 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = &v43 - v16;
  v61 = *(v3 + 8);
  v17 = *v3;
  v60 = *v3;
  v18 = v61;

  if ((v18 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v43 = v12;
    v20 = v4;
    v21 = v19;
    os_log(_:dso:log:_:_:)();

    v4 = v20;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001370C(&v60, &qword_1001D6D80, &qword_100176078);
    (*(v13 + 8))(v15, v43);
    v17 = v59[0];
  }

  swift_getKeyPath();
  v59[0] = v17;
  sub_100065E74();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v17 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v23 = *(v17 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v24 = *(v17 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  sub_100060424(v22, v23, *(v17 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

  if (v3[4])
  {
    if (v24 != 2)
    {
      v35 = swift_allocObject();
      v27 = *(v4 + 24);
      *(v35 + 16) = v5;
      *(v35 + 24) = v27;
      v36 = *(v3 + 1);
      *(v35 + 32) = *v3;
      *(v35 + 48) = v36;
      *(v35 + 64) = *(v3 + 32);
      v59[0] = sub_100065F70;
      v59[1] = v35;
      sub_100065F7C(&v60, v58);
      v56 = v27;
      v57 = v27;

      WitnessTable = swift_getWitnessTable();
      v38 = sub_100065ECC();
      v34 = v52;
      sub_1000649C0(v59, v6, v50, WitnessTable, v38);

      goto LABEL_9;
    }

    v25 = sub_1000616E4(v22, v23, 2);
    v26 = v44;
    (v3[2])(v25);
    v27 = *(v4 + 24);
    v28 = v45;
    sub_100071210();
    v29 = *(v48 + 8);
    v29(v26, v5);
    sub_100071210();
    v30 = v46;
    sub_1000649C0(v26, v5, v5, v27, v27);
    v54 = v27;
    v55 = v27;
  }

  else
  {
    v31 = sub_1000616E4(v22, v23, v24);
    v26 = v44;
    (v3[2])(v31);
    v27 = *(v4 + 24);
    v28 = v45;
    sub_100071210();
    v29 = *(v48 + 8);
    v29(v26, v5);
    sub_100071210();
    v30 = v46;
    sub_1000648C8(v26, v5, v5, v27, v27);
    v59[6] = v27;
    v59[7] = v27;
  }

  v32 = swift_getWitnessTable();
  v33 = sub_100065ECC();
  v34 = v52;
  sub_1000648C8(v30, v6, v50, v32, v33);
  (*(v47 + 8))(v30, v6);
  v29(v26, v5);
  v29(v28, v5);
LABEL_9:
  v59[4] = v27;
  v59[5] = v27;
  v39 = swift_getWitnessTable();
  v40 = sub_100065ECC();
  v59[2] = v39;
  v59[3] = v40;
  v41 = v49;
  swift_getWitnessTable();
  sub_100071210();
  return (*(v53 + 8))(v34, v41);
}

uint64_t sub_100065CD8()
{
  type metadata accessor for CameraController(0);
  sub_100065E74();
  v0 = Environment.init<A>(_:)();
  v2 = v1;
  static CanvasUtility.defaultCameraFrameSize.getter();
  v4 = v3;
  static CanvasUtility.defaultCameraFrameSize.getter();
  v6 = v4 / v5;
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v10[22] = v12;
  *&v10[38] = v13;
  *&v10[6] = v11;
  *&v8 = v0;
  BYTE8(v8) = v2 & 1;
  *v9 = v6;
  *&v9[8] = 256;
  *&v9[10] = *v10;
  *&v9[26] = *&v10[16];
  *&v9[42] = *&v10[32];
  *&v9[56] = *(&v13 + 1);
  sub_1000033A8(&qword_1001D6D90, &qword_1001760A8);
  sub_100065FEC();
  View.accessibilityIdentifier(_:)();
  v14[1] = *v9;
  v14[2] = *&v9[16];
  v14[3] = *&v9[32];
  v14[4] = *&v9[48];
  v14[0] = v8;
  return sub_10001370C(v14, &qword_1001D6D90, &qword_1001760A8);
}

unint64_t sub_100065E74()
{
  result = qword_1001D44C0;
  if (!qword_1001D44C0)
  {
    type metadata accessor for CameraController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D44C0);
  }

  return result;
}

unint64_t sub_100065ECC()
{
  result = qword_1001D6D88;
  if (!qword_1001D6D88)
  {
    sub_10001276C(&qword_1001D6D78, &qword_100176070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6D88);
  }

  return result;
}

uint64_t sub_100065F30()
{

  return swift_deallocObject();
}

uint64_t sub_100065F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6D80, &qword_100176078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100065FEC()
{
  result = qword_1001D6D98;
  if (!qword_1001D6D98)
  {
    sub_10001276C(&qword_1001D6D90, &qword_1001760A8);
    sub_100066078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6D98);
  }

  return result;
}

unint64_t sub_100066078()
{
  result = qword_1001D6DA0;
  if (!qword_1001D6DA0)
  {
    v1 = sub_10001276C(&qword_1001D6DA8, &qword_1001760B0);
    sub_100066104(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6DA0);
  }

  return result;
}

unint64_t sub_100066104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6DB0;
  if (!qword_1001D6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6DB0);
  }

  return result;
}

uint64_t sub_100066158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000661A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1000661F4(void *a1)
{
  type metadata accessor for _ConditionalContent();
  sub_10001276C(&qword_1001D6D78, &qword_100176070);
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  sub_100065ECC();
  return swift_getWitnessTable();
}

unint64_t sub_1000662A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6DB8;
  if (!qword_1001D6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6DB8);
  }

  return result;
}

uint64_t sub_100066330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = static Alignment.center.getter();
  v9 = v8;
  type metadata accessor for SiriStreamingVoicePlayer();
  sub_100067754(&qword_1001D6E90, &type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);

  v10 = Environment.init<A>(_:)();
  v12 = v11;
  v13 = sub_1000033A8(&qword_1001D6E98, &qword_100176398);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = sub_1000033A8(&qword_1001D6EA0, &qword_1001763A0);
  v15 = a2 + *(result + 36);
  *v15 = v10;
  *(v15 + 8) = v12 & 1;
  *(v15 + 16) = v6;
  *(v15 + 24) = v5;
  *(v15 + 32) = v7;
  *(v15 + 40) = v9;
  return result;
}

id sub_100066458()
{
  v1 = OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___view;
  v2 = *(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___view);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___view);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = sub_1000668B0();
    [v4 addInteraction:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t (*sub_100066500(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_100067C20;
}

uint64_t sub_100066590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  v9[5] = a2;
  sub_1000154EC(0, 0, v6, &unk_1001764A8, v9);
}

uint64_t sub_1000666C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100066758, v7, v6);
}

uint64_t sub_100066758()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = dispatch thunk of SiriStreamingVoicePlayer.isPlaying.getter();
    v4 = OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_isVoicePlaying;
    if ((v3 & 1) != v2[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_isVoicePlaying])
    {
      v2[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_isVoicePlaying] = v3 & 1;
      v5 = sub_1000668B0();
      if (v2[v4] == 1)
      {
        sub_100066AA4();
      }

      else
      {
        sub_1000669C4();
      }

      sub_10006750C();
      sub_100067754(&qword_1001D6EB0, sub_10006750C, &protocol conformance descriptor for NSObject);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v5 _setConfigurations:isa];
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

id sub_1000668B0()
{
  v1 = OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___interaction;
  v2 = *(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___interaction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___interaction);
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_isVoicePlaying) == 1)
    {
      sub_100066AA4();
    }

    else
    {
      sub_1000669C4();
    }

    v4 = objc_allocWithZone(_UIPhysicalButtonInteraction);
    sub_10006750C();
    sub_100067754(&qword_1001D6EB0, sub_10006750C, &protocol conformance descriptor for NSObject);
    isa = Set._bridgeToObjectiveC()().super.isa;

    v6 = [v4 initWithConfigurations:isa delegate:v0];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1000669C4()
{
  v1 = OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithVolumeButtons;
  if (*(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithVolumeButtons))
  {
    v2 = *(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithVolumeButtons);
  }

  else
  {
    v3 = [objc_opt_self() _cameraShutterConfigurationsWithOptionsProvider:0];
    sub_10006750C();
    sub_100067754(&qword_1001D6EB0, sub_10006750C, &protocol conformance descriptor for NSObject);
    v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + v1) = v2;
  }

  return v2;
}

Swift::Int sub_100066AA4()
{
  v1 = OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithoutVolumeButtons;
  if (*(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithoutVolumeButtons))
  {
    v2 = *(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithoutVolumeButtons);
  }

  else
  {
    v2 = sub_100066B0C();
    *(v0 + v1) = v2;
  }

  return v2;
}

Swift::Int sub_100066B0C()
{
  v0 = sub_1000669C4();
  v1 = v0;
  if ((v0 & 0xC000000000000001) == 0)
  {
    v2 = 0;
    v19 = *(v0 + 32);
    v8 = ((1 << v19) + 63) >> 6;
    if ((v19 & 0x3Fu) <= 0xD)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

  v2 = &_swiftEmptySetSingleton;
  v39 = &_swiftEmptySetSingleton;
  v1 = __CocoaSet.makeIterator()();
  v3 = __CocoaSet.Iterator.next()();
  if (!v3)
  {
LABEL_21:

    return v2;
  }

  v4 = v3;
  sub_10006750C();
  v5 = v4;
  while (1)
  {
    v37 = v5;
    swift_dynamicCast();
    if ([v38 _button] != 1 && objc_msgSend(v38, "_button") != 2)
    {
      break;
    }

LABEL_5:
    v5 = __CocoaSet.Iterator.next()();
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  v6 = v38;
  v7 = v2[2];
  if (v2[3] <= v7)
  {
    sub_1000AFC88(v7 + 1);
  }

  v2 = v39;
  v8 = v38;
  v9 = NSObject._rawHashValue(seed:)(v39[5]);
  v10 = (v39 + 7);
  v11 = -1 << *(v39 + 32);
  v12 = v9 & ~v11;
  v13 = v12 >> 6;
  if (((-1 << v12) & ~v39[(v12 >> 6) + 7]) != 0)
  {
    v14 = __clz(__rbit64((-1 << v12) & ~v39[(v12 >> 6) + 7])) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
    *(v2[6] + 8 * v14) = v6;
    ++v2[2];
    goto LABEL_5;
  }

  v15 = 0;
  v16 = (63 - v11) >> 6;
  while (++v13 != v16 || (v15 & 1) == 0)
  {
    v17 = v13 == v16;
    if (v13 == v16)
    {
      v13 = 0;
    }

    v15 |= v17;
    v18 = *&v10[8 * v13];
    if (v18 != -1)
    {
      v14 = __clz(__rbit64(~v18)) + (v13 << 6);
      goto LABEL_20;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_42:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_23:
    v34[1] = v2;
    v34[2] = v34;
    v35 = v8;
    __chkstk_darwin(v0);
    v21 = v34 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v21, v20);
    v36 = 0;
    v22 = 0;
    v23 = 1 << *(v1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v8 = v24 & *(v1 + 56);
    v2 = ((v23 + 63) >> 6);
    while (v8)
    {
      v25 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_34:
      v28 = v25 | (v22 << 6);
      v29 = *(*(v1 + 48) + 8 * v28);
      if ([v29 _button] == 1)
      {
      }

      else
      {
        v30 = [v29 _button];

        if (v30 != 2)
        {
          *&v21[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
          if (__OFADD__(v36++, 1))
          {
            __break(1u);
            return sub_1000B2B14(v21, v35, v36, v1);
          }
        }
      }
    }

    v26 = v22;
    while (1)
    {
      v22 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v22 >= v2)
      {
        return sub_1000B2B14(v21, v35, v36, v1);
      }

      v27 = *(v1 + 56 + 8 * v22);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v8 = (v27 - 1) & v27;
        goto LABEL_34;
      }
    }
  }

  v33 = swift_slowAlloc();
  v2 = sub_1000676C4(v33, v8, v1, sub_100066F44);

  return v2;
}

id sub_100067074()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhysicalShutterButtonEventInteractor.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100067150(void *a1)
{
  v1 = type metadata accessor for ModifiedContent();
  sub_1000671B4(v1, v2, v3);
  return swift_getWitnessTable();
}

unint64_t sub_1000671B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6E88;
  if (!qword_1001D6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6E88);
  }

  return result;
}

uint64_t sub_100067208(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100067250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1000672C4()
{
  sub_1000033A8(&unk_1001D6EE0, &unk_100176490);
  UIViewRepresentableContext.coordinator.getter();
  v0 = sub_100066458();

  return v0;
}

void *sub_100067338@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);

  sub_100054238(v3, v4);
  LOBYTE(v3) = dispatch thunk of SiriStreamingVoicePlayer.isPlaying.getter();

  v7 = type metadata accessor for PhysicalShutterButtonEventInteractor.Coordinator();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___view] = 0;
  *&v8[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___interaction] = 0;
  *&v8[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithVolumeButtons] = 0;
  *&v8[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithoutVolumeButtons] = 0;
  v9 = &v8[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_action];
  *v9 = v6;
  v9[1] = v5;
  v8[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_isVoicePlaying] = v3 & 1;
  v11.receiver = v8;
  v11.super_class = v7;
  result = objc_msgSendSuper2(&v11, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10006741C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100067D30(a1, a2, a3);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100067480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100067D30(a1, a2, a3);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000674E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100067D30(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10006750C()
{
  result = qword_1001D6EA8;
  if (!qword_1001D6EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001D6EA8);
  }

  return result;
}

void sub_100067558(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1000B2B14(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1000676C4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_100067558(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_100067754(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006779C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000677E4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_100067838()
{
  result = qword_1001D6EB8;
  if (!qword_1001D6EB8)
  {
    sub_10001276C(&qword_1001D6EA0, &qword_1001763A0);
    sub_100013608(&qword_1001D6EC0, &qword_1001D6E98, &qword_100176398, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100013608(&qword_1001D6EC8, &qword_1001D6ED0, &qword_1001763A8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6EB8);
  }

  return result;
}

unint64_t sub_100067920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6ED8;
  if (!qword_1001D6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6ED8);
  }

  return result;
}

void sub_100067974(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v18 = type metadata accessor for EnvironmentValues();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&unk_1001D6EE0, &unk_100176490);
  UIViewRepresentableContext.coordinator.getter();
  v12 = v20;
  v13 = &v20[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_action];
  *v13 = a4;
  *(v13 + 1) = a5;

  UIViewRepresentableContext.coordinator.getter();
  v14 = v20;

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v15 = (*(v9 + 8))(v11, v18);
    a2 = v19;
  }

  __chkstk_darwin(v15);
  *(&v17 - 2) = v14;
  *(&v17 - 1) = a2;
  withObservationTracking<A>(_:onChange:)();
}

uint64_t sub_100067BA8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100067BE0()
{

  return swift_deallocObject();
}

uint64_t sub_100067C28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100067C70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019340;

  return sub_1000666C0(a1, v4, v5, v7, v6);
}

unint64_t sub_100067D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6EF0;
  if (!qword_1001D6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6EF0);
  }

  return result;
}

void *sub_100067D84(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(type metadata accessor for MitosisCell(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t View.mitosisCell<A>(shape:cornerRadius:inset:style:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v13 = type metadata accessor for MitosisCellModifier(0);
  __chkstk_darwin(v13);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a4;
  v24 = a5;
  v25 = a7;
  v26 = a8;
  type metadata accessor for Optional();
  sub_10001A390(sub_100068160, v22, &type metadata for Never, &type metadata for AnyShape, v16, &v27);
  v17 = v27;
  v18 = *(v13 + 32);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 16))(&v15[v18], a3, v19);
  *v15 = 0;
  *(v15 + 1) = v17;
  *(v15 + 2) = a1;
  v15[24] = a2 & 1;
  *(v15 + 4) = 0;
  v15[40] = 1;
  View.modifier<A>(_:)();
  return sub_100069A40(v15, type metadata accessor for MitosisCellModifier);
}

uint64_t sub_100068084@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  __chkstk_darwin(a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = AnyShape.init<A>(_:)();
  *a4 = result;
  return result;
}

uint64_t sub_1000681BC(uint64_t *a1)
{
  type metadata accessor for MitosisCellModifier(255);
  type metadata accessor for ModifiedContent();
  sub_10006822C();
  return swift_getWitnessTable();
}

unint64_t sub_10006822C()
{
  result = qword_1001D6F00;
  if (!qword_1001D6F00)
  {
    type metadata accessor for MitosisCellModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6F00);
  }

  return result;
}

uint64_t sub_100068284(void *a1)
{
  v1 = type metadata accessor for ModifiedContent();
  sub_1000682E8(v1, v2, v3);
  return swift_getWitnessTable();
}

unint64_t sub_1000682E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6F08;
  if (!qword_1001D6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6F08);
  }

  return result;
}

uint64_t sub_100068350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = type metadata accessor for RoundedCornerStyle();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10006841C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for RoundedCornerStyle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000684C0(uint64_t a1)
{
  sub_10006858C(319, &qword_1001D6F78, &type metadata for AnyShape);
  if (v1 <= 0x3F)
  {
    sub_10006858C(319, &unk_1001D6F80, &type metadata for CGFloat);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RoundedCornerStyle();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006858C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100068660()
{
  v1 = v0;
  v2 = type metadata accessor for Capsule();
  __chkstk_darwin(v2 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MitosisCell(0);
  type metadata accessor for CGRect(0);
  GeometryProxy.subscript.getter();
  if (*(v0 + 8))
  {

    v9 = AnyShape.path(in:)();
    sub_100069AA0(v9, v10, v11);
    v12 = AnyShape.init<A>(_:)();

    return v12;
  }

  else
  {
    if (*(v0 + 24))
    {
      v14 = *(v8 + 28);
      v15 = type metadata accessor for RoundedCornerStyle();
      (*(*(v15 - 8) + 16))(v4, v1 + v14, v15);
      Capsule.path(in:)();
      v16 = &type metadata accessor for Capsule;
      v17 = v4;
    }

    else
    {
      v18 = *(v0 + 16);
      v19 = *(v8 + 28);
      v20 = *(v5 + 20);
      v21 = type metadata accessor for RoundedCornerStyle();
      (*(*(v21 - 8) + 16))(&v7[v20], v1 + v19, v21);
      *v7 = v18;
      *(v7 + 1) = v18;
      RoundedRectangle.path(in:)();
      v16 = &type metadata accessor for RoundedRectangle;
      v17 = v7;
    }

    v22 = sub_100069A40(v17, v16);
    v25[0] = v27;
    v25[1] = v28;
    v26 = v29;
    sub_100069AA0(v22, v23, v24);
    return AnyShape.init<A>(_:)();
  }
}

Swift::Int sub_100068904()
{
  Hasher.init(_seed:)();
  Namespace.ID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100068954()
{
  Hasher.init(_seed:)();
  Namespace.ID.hash(into:)();
  return Hasher._finalize()();
}

double sub_1000689A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1000033A8(&qword_1001D6FD0, &qword_1001765B0);
  v4 = (type metadata accessor for MitosisCell(0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100171DA0;
  v7 = v6 + v5;
  v8 = Namespace.wrappedValue.getter();
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(type metadata accessor for MitosisCellModifier(0) + 32);
  v13 = v4[9];
  v14 = type metadata accessor for RoundedCornerStyle();
  (*(*(v14 - 8) + 16))(v7 + v13, a2 + v12, v14);
  *v7 = v8;
  *(v7 + 8) = v9;
  *(v7 + 16) = v10;
  *(v7 + 24) = v11;
  *(v7 + v4[10]) = a1;
  *a3 = v6;

  return result;
}

uint64_t sub_100068B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = static Anchor.Source<A>.bounds.getter();
  sub_100069410(v4, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_10006955C(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = sub_1000033A8(&qword_1001D6FC0, &qword_1001765A0);
  (*(*(v12 - 8) + 16))(a3, a1, v12);
  result = sub_1000033A8(&qword_1001D6FC8, &qword_1001765A8);
  v14 = (a3 + *(result + 36));
  *v14 = v9;
  v14[1] = sub_1000695C0;
  v14[2] = v11;
  return result;
}

uint64_t sub_100068C8C(uint64_t a1, double a2)
{
  v4 = sub_1000033A8(&qword_1001D6FD8, &qword_1001765B8);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_1000033A8(&qword_1001D6FE0, &qword_1001765C0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  if (static Solarium.isEnabled.getter())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    v11 = static Alignment.center.getter();
    v13 = v12;
    v14 = sub_1000033A8(&qword_1001D6FE8, &qword_1001765C8);
    (*(*(v14 - 8) + 16))(v9, a1, v14);
    v15 = &v9[*(v7 + 36)];
    *v15 = sub_100069754;
    v15[1] = v10;
    v15[2] = v11;
    v15[3] = v13;
    sub_1000697CC(v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_100069660();
    sub_100013608(&qword_1001D6FF8, &qword_1001D6FE8, &qword_1001765C8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_10006983C(v9);
  }

  else
  {
    v17 = sub_1000033A8(&qword_1001D6FE8, &qword_1001765C8);
    (*(*(v17 - 8) + 16))(v6, a1, v17);
    swift_storeEnumTagMultiPayload();
    sub_100069660();
    sub_100013608(&qword_1001D6FF8, &qword_1001D6FE8, &qword_1001765C8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100068F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v39 = a1;
  v43 = a3;
  v42 = type metadata accessor for _ShapeSet();
  v40 = *(v42 - 8);
  v4 = __chkstk_darwin(v42);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v36 - v6;
  v7 = type metadata accessor for Material._GlassVariant.Size();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Material._GlassVariant();
  v11 = *(v36 - 8);
  v12 = __chkstk_darwin(v36);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = type metadata accessor for Material();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v36 - v22;
  static Material._GlassVariant.clear.getter();
  (*(v8 + 104))(v10, enum case for Material._GlassVariant.Size.small(_:), v7);
  Material._GlassVariant.size(_:)();
  (*(v8 + 8))(v10, v7);
  v24 = *(v11 + 8);
  v25 = v14;
  v26 = v36;
  v24(v25, v36);
  static Material._glass(_:)();
  v24(v16, v26);
  v45 = v39;
  sub_100067D84(sub_1000698E8, v44, v41);
  v27 = v37;
  _ShapeSet.init(shapes:smoothness:)();
  v28 = v40;
  v29 = v42;
  (*(v40 + 16))(v38, v27, v42);
  (*(v18 + 16))(v21, v23, v17);
  v30 = v43;
  _ShapeSetView.init(shape:style:)();
  (*(v28 + 8))(v27, v29);
  (*(v18 + 8))(v23, v17);
  v31 = (v30 + *(sub_1000033A8(&qword_1001D7010, &qword_1001765D8) + 36));
  v32 = *(sub_1000033A8(&qword_1001D45B8, &qword_1001765E0) + 28);
  v33 = enum case for ColorScheme.dark(_:);
  v34 = type metadata accessor for ColorScheme();
  (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
  result = swift_getKeyPath();
  *v31 = result;
  return result;
}

uint64_t sub_100069410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MitosisCellModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069474()
{
  v1 = (type metadata accessor for MitosisCellModifier(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = type metadata accessor for RoundedCornerStyle();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_10006955C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MitosisCellModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1000695C0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for MitosisCellModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000689A4(a1, v6, a2);
}

unint64_t sub_100069660()
{
  result = qword_1001D6FF0;
  if (!qword_1001D6FF0)
  {
    sub_10001276C(&qword_1001D6FE0, &qword_1001765C0);
    sub_100013608(&qword_1001D6FF8, &qword_1001D6FE8, &qword_1001765C8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100013608(&qword_1001D7000, &qword_1001D7008, &qword_1001765D0, &protocol conformance descriptor for _BackgroundPreferenceModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6FF0);
  }

  return result;
}

uint64_t sub_100069754@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1000698DC;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
}

uint64_t sub_1000697CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6FE0, &qword_1001765C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006983C(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D6FE0, &qword_1001765C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000698A4()
{

  return swift_deallocObject();
}

uint64_t sub_1000698E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100068660();
  *a1 = result;
  return result;
}

uint64_t sub_100069974(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100069A40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100069AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D7018;
  if (!qword_1001D7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7018);
  }

  return result;
}

uint64_t sub_100069B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RoundedCornerStyle();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100069BDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RoundedCornerStyle();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_100069C98(uint64_t a1)
{
  sub_10006858C(319, &qword_1001D6F78, &type metadata for AnyShape);
  if (v1 <= 0x3F)
  {
    sub_10006858C(319, &unk_1001D6F80, &type metadata for CGFloat);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RoundedCornerStyle();
      if (v3 <= 0x3F)
      {
        sub_100069D7C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100069D7C(uint64_t a1)
{
  if (!qword_1001D7088)
  {
    type metadata accessor for CGRect(255);
    v1 = type metadata accessor for Anchor();
    if (!v2)
    {
      atomic_store(v1, &qword_1001D7088);
    }
  }
}

unint64_t sub_100069DF8()
{
  result = qword_1001D70C8;
  if (!qword_1001D70C8)
  {
    sub_10001276C(&qword_1001D6FC8, &qword_1001765A8);
    sub_100013608(&qword_1001D70D0, &qword_1001D6FC0, &qword_1001765A0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100013608(&qword_1001D70D8, &qword_1001D70E0, &qword_100176670, &protocol conformance descriptor for _AnchorWritingModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D70C8);
  }

  return result;
}

unint64_t sub_100069EE0()
{
  result = qword_1001D70E8;
  if (!qword_1001D70E8)
  {
    sub_10001276C(&qword_1001D70F0, qword_100176678);
    sub_100069660();
    sub_100013608(&qword_1001D6FF8, &qword_1001D6FE8, &qword_1001765C8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D70E8);
  }

  return result;
}

unint64_t sub_100069F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D70F8;
  if (!qword_1001D70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D70F8);
  }

  return result;
}

unint64_t sub_100069FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D7100[0];
  if (!qword_1001D7100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D7100);
  }

  return result;
}

void sub_10006A054(uint64_t a1)
{
  sub_100053128(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10006A100(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for ColorScheme() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v7 + 84);
  v10 = *(*(a3 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v10 + 80);
  v15 = v11 - 1;
  if (!v11)
  {
    v15 = 0;
  }

  if (v9 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = *(v10 + 64);
  }

  else
  {
    v18 = *(v10 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v17)
  {
    goto LABEL_39;
  }

  v19 = v18 + ((v13 + v14 + (((v8 & 0xFFFFFFFFFFFFFFF8) + v12 + 24) & ~v12)) & ~v14);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v17 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v23 < 2)
    {
LABEL_39:
      v27 = (a1 + v8 + 8) & 0xFFFFFFFFFFFFFFF8;
      if ((v16 & 0x80000000) != 0)
      {
        v29 = (v27 + v12 + 16) & ~v12;
        if (v9 == v17)
        {
          v30 = *(*(*(a3 + 16) - 8) + 48);

          return v30(v29);
        }

        else
        {
          v31 = (*(v10 + 48))((v29 + v13 + v14) & ~v14, v11, *(a3 + 24));
          if (v31 >= 2)
          {
            return v31 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v28 = *(v27 + 8);
        if (v28 >= 0xFFFFFFFF)
        {
          LODWORD(v28) = -1;
        }

        return (v28 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_39;
  }

LABEL_26:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v17 + (v26 | v24) + 1;
}

void sub_10006A3C0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(*(type metadata accessor for ColorScheme() - 8) + 64);
  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  v18 = *(v14 + 80);
  v19 = v15 - 1;
  if (!v15)
  {
    v19 = 0;
  }

  if (v13 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = *(v12 + 84);
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  if (v15)
  {
    v22 = *(*(v11 - 8) + 64);
  }

  else
  {
    v22 = *(*(v11 - 8) + 64) + 1;
  }

  v23 = ((v17 + v18 + (((v10 & 0xFFFFFFFFFFFFFFF8) + v16 + 24) & ~v16)) & ~v18) + v22;
  if (a3 <= v21)
  {
    goto LABEL_26;
  }

  if (v23 <= 3)
  {
    v24 = ((a3 - v21 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v24))
    {
      v8 = 4;
      if (v21 >= a2)
      {
        goto LABEL_36;
      }

      goto LABEL_27;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (v24 >= 2)
    {
      v8 = v25;
    }

    else
    {
      v8 = 0;
    }

LABEL_26:
    if (v21 >= a2)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  v8 = 1;
  if (v21 >= a2)
  {
LABEL_36:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v23] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_43;
      }

      *&a1[v23] = 0;
    }

    else if (v8)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    if (!a2)
    {
      return;
    }

LABEL_43:
    v29 = (&a1[v10 + 8] & 0xFFFFFFFFFFFFFFF8);
    if ((v20 & 0x80000000) != 0)
    {
      v30 = (v29 + v16 + 16) & ~v16;
      if (v13 == v21)
      {
        v31 = *(v12 + 56);

        v31(v30, a2);
      }

      else
      {
        v32 = *(v14 + 56);
        v33 = (v30 + v17 + v18) & ~v18;

        v32(v33, (a2 + 1), v15, v11);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v29 = a2 & 0x7FFFFFFF;
      v29[1] = 0;
    }

    else
    {
      v29[1] = (a2 - 1);
    }

    return;
  }

LABEL_27:
  v26 = ~v21 + a2;
  if (v23 >= 4)
  {
    bzero(a1, v23);
    *a1 = v26;
    v27 = 1;
    if (v8 > 1)
    {
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  v27 = (v26 >> (8 * v23)) + 1;
  if (!v23)
  {
LABEL_57:
    if (v8 > 1)
    {
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  v28 = v26 & ~(-1 << (8 * v23));
  bzero(a1, v23);
  if (v23 == 3)
  {
    *a1 = v28;
    a1[2] = BYTE2(v28);
    goto LABEL_57;
  }

  if (v23 == 2)
  {
    *a1 = v28;
    if (v8 > 1)
    {
LABEL_61:
      if (v8 == 2)
      {
        *&a1[v23] = v27;
      }

      else
      {
        *&a1[v23] = v27;
      }

      return;
    }
  }

  else
  {
    *a1 = v26;
    if (v8 > 1)
    {
      goto LABEL_61;
    }
  }

LABEL_58:
  if (v8)
  {
    a1[v23] = v27;
  }
}

uint64_t sub_10006A7BC(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_10006A98C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_10006A9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __chkstk_darwin(a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  AnyTransition.init<A>(_:)();
  View.transition(_:)();
}

uint64_t sub_10006AAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v52 = type metadata accessor for ButtonStyleConfiguration.Label();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000033A8(&qword_1001D7308, &qword_100176A40);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v49 - v7;
  v9 = sub_1000033A8(&qword_1001D7310, &qword_100176A48);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v49 - v11;
  v13 = sub_1000033A8(&qword_1001D7318, &qword_100176A50);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v53 = sub_1000033A8(&qword_1001D7320, &qword_100176A58);
  __chkstk_darwin(v53);
  v18 = &v49 - v17;
  v54 = sub_1000033A8(&qword_1001D7328, &qword_100176A60);
  __chkstk_darwin(v54);
  v20 = &v49 - v19;
  v59 = sub_1000033A8(&qword_1001D7330, &qword_100176A68);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v49 - v21;
  v51 = sub_1000033A8(&qword_1001D7338, &qword_100176A70);
  __chkstk_darwin(v51);
  v55 = &v49 - v22;
  v60 = a1;
  ButtonStyleConfiguration.label.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v50 + 32))(v8, v4, v52);
  v23 = &v8[*(v6 + 44)];
  v24 = v69;
  *(v23 + 4) = v68;
  *(v23 + 5) = v24;
  *(v23 + 6) = v70;
  v25 = v65;
  *v23 = v64;
  *(v23 + 1) = v25;
  v26 = v67;
  *(v23 + 2) = v66;
  *(v23 + 3) = v26;
  LOBYTE(a1) = static Edge.Set.all.getter();
  sub_10002091C(v8, v12, &qword_1001D7308, &qword_100176A40);
  v27 = &v12[*(v10 + 44)];
  *v27 = a1;
  *(v27 + 8) = xmmword_100176770;
  *(v27 + 24) = xmmword_100176770;
  v27[40] = 0;
  v28 = static Alignment.center.getter();
  v30 = v29;
  v31 = v57;
  sub_10006B1A4(v57, &v62);
  v32 = v62;
  LOBYTE(v6) = v63;
  sub_10002091C(v12, v16, &qword_1001D7310, &qword_100176A48);
  v33 = &v16[*(v14 + 44)];
  *v33 = v32;
  v33[8] = v6;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  if (*(v31 + *(type metadata accessor for NonModalPromptViewButtonStyle(0) + 20)) == 1)
  {
    v34 = static Color.white.getter();
  }

  else
  {
    v34 = static Color.primary.getter();
  }

  v35 = v34;
  KeyPath = swift_getKeyPath();
  sub_10002091C(v16, v18, &qword_1001D7318, &qword_100176A50);
  v37 = &v18[*(v53 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  v38 = static Font.headline.getter();
  v39 = swift_getKeyPath();
  sub_10002091C(v18, v20, &qword_1001D7320, &qword_100176A58);
  v40 = &v20[*(v54 + 36)];
  *v40 = v39;
  v40[1] = v38;
  static Font.Weight.medium.getter();
  sub_100070948();
  v41 = v56;
  View.fontWeight(_:)();
  sub_10001370C(v20, &qword_1001D7328, &qword_100176A60);
  v42 = v55;
  v43 = &v55[*(v51 + 36)];
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  (*(*(v45 - 8) + 104))(v43, v44, v45);
  *&v43[*(sub_1000033A8(&qword_1001D7378, &qword_100176AB8) + 36)] = 256;
  (*(v58 + 32))(v42, v41, v59);
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v46 = 0.85;
  }

  else
  {
    v46 = 1.0;
  }

  v47 = v61;
  sub_10002091C(v42, v61, &qword_1001D7338, &qword_100176A70);
  result = sub_1000033A8(&qword_1001D7380, &qword_100176AC0);
  *(v47 + *(result + 36)) = v46;
  return result;
}

uint64_t sub_10006B1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  if (*(a1 + *(type metadata accessor for NonModalPromptViewButtonStyle(0) + 20)) == 1)
  {
    v15 = static Color.blue.getter();
    v16 = 0;
  }

  else
  {
    sub_100054010(v10);
    (*(v5 + 104))(v8, enum case for ColorScheme.dark(_:), v4);
    static ColorScheme.== infix(_:_:)();
    v11 = *(v5 + 8);
    v11(v8, v4);
    v11(v10, v4);
    static Color.primary.getter();
    v12 = Color.opacity(_:)();

    v15 = v12;
    v16 = 1;
  }

  result = _ConditionalContent<>.init(storage:)();
  v14 = v18;
  *a2 = v17;
  *(a2 + 8) = v14;
  return result;
}

uint64_t sub_10006B38C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  sub_10001276C(&qword_1001D7188, &qword_100176828);
  type metadata accessor for NonModalPromptViewButtonStyle(255);
  sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle, &unk_100176A08);
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D7198, &unk_100176830);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v3 = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0, &qword_100170918);
  v4 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v46 = &protocol witness table for _FlexFrameLayout;
  v5 = swift_getWitnessTable();
  v43 = v5;
  v44 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0, &qword_100170918, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v6 = swift_getWitnessTable();
  v35 = v3;
  v36 = &type metadata for Solarium;
  v37 = v4;
  v38 = v4;
  v39 = v5;
  v40 = &protocol witness table for Solarium;
  v41 = v6;
  v42 = v6;
  v23[1] = &opaque type descriptor for <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D71A0, &unk_100176840);
  v23[0] = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D4E50, &qword_1001723E8);
  v23[2] = type metadata accessor for ModifiedContent();
  v23[4] = type metadata accessor for ModifiedContent();
  v23[3] = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CC8, &qword_100176850);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v23 - v12;
  sub_10006BA00(a1, v11);
  v35 = v3;
  v36 = &type metadata for Solarium;
  v37 = v4;
  v38 = v4;
  v39 = v5;
  v40 = &protocol witness table for Solarium;
  v41 = v6;
  v42 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_100013608(&qword_1001D71A8, &qword_1001D71A0, &unk_100176840, &protocol conformance descriptor for _OverlayModifier<A>);
  v33 = OpaqueTypeConformance2;
  v34 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_100013608(&qword_1001D61C8, &qword_1001D4E50, &qword_1001723E8, &protocol conformance descriptor for _ClipEffect<A>);
  v31 = v16;
  v32 = v17;
  v29 = swift_getWitnessTable();
  v30 = &protocol witness table for _PaddingLayout;
  v27 = swift_getWitnessTable();
  v28 = &protocol witness table for _ShadowEffect;
  v18 = swift_getWitnessTable();
  v19 = sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8, &qword_100176850, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v25 = v18;
  v26 = v19;
  swift_getWitnessTable();
  v20 = *(v8 + 16);
  v20(v13, v11, v7);
  v21 = *(v8 + 8);
  v21(v11, v7);
  v20(v24, v13, v7);
  return (v21)(v13, v7);
}

uint64_t sub_10006BA00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = type metadata accessor for ColorScheme();
  v93 = *(v3 - 8);
  v94 = v3;
  v4 = __chkstk_darwin(v3);
  v92 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v91 = &v64 - v6;
  v89 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v89);
  v90 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001276C(&qword_1001D7188, &qword_100176828);
  v8 = type metadata accessor for NonModalPromptViewButtonStyle(255);
  v9 = sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle, &unk_100176A08);
  *&v84 = a1[3];
  *&v85 = a1[5];
  v113 = v84;
  v114 = v8;
  v115 = v85;
  v116 = v9;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D7198, &unk_100176830);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v79 = a1[2];
  v81 = a1[4];
  v113 = v79;
  v114 = v8;
  v115 = v81;
  v116 = v9;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v74 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for VStack();
  v76 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v64 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v78 = *(v13 - 8);
  __chkstk_darwin(v13);
  v66 = &v64 - v14;
  sub_10001276C(&qword_1001D3CA0, &qword_100170918);
  v15 = type metadata accessor for ModifiedContent();
  v123 = swift_getWitnessTable();
  v124 = &protocol witness table for _FlexFrameLayout;
  v96 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v16 = swift_getWitnessTable();
  v17 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0, &qword_100170918, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v121 = v16;
  v122 = v17;
  v18 = v16;
  v19 = swift_getWitnessTable();
  v113 = v13;
  v114 = &type metadata for Solarium;
  v115 = v15;
  v116 = v15;
  v117 = v16;
  v118 = &protocol witness table for Solarium;
  v119 = v19;
  v120 = v19;
  v68 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v21 = &v64 - v20;
  sub_10001276C(&qword_1001D71A0, &unk_100176840);
  v69 = type metadata accessor for ModifiedContent();
  v77 = *(v69 - 8);
  __chkstk_darwin(v69);
  v65 = &v64 - v22;
  sub_10001276C(&qword_1001D4E50, &qword_1001723E8);
  v71 = type metadata accessor for ModifiedContent();
  v80 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v64 - v23;
  v83 = type metadata accessor for ModifiedContent();
  v87 = *(v83 - 8);
  __chkstk_darwin(v83);
  v75 = &v64 - v24;
  v86 = type metadata accessor for ModifiedContent();
  v88 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v64 - v25;
  *&v26 = v79;
  *(&v26 + 1) = v84;
  *&v27 = v81;
  *(&v27 + 1) = v85;
  v84 = v26;
  v85 = v27;
  v102 = v26;
  v103 = v27;
  v104 = v97;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  v28 = v66;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v76 + 8))(v12, v10);
  Solarium.init()();
  v100 = v84;
  v101 = v85;
  v98 = v84;
  v99 = v85;
  v63 = swift_checkMetadataState();
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v78 + 8))(v28, v13);
  static Alignment.center.getter();
  sub_1000033A8(&qword_1001D71B0, &qword_100176858);
  v113 = v13;
  v114 = &type metadata for Solarium;
  v115 = v63;
  v116 = v63;
  v117 = v18;
  v118 = &protocol witness table for Solarium;
  v119 = v19;
  v120 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10006F00C();
  v30 = v65;
  v31 = OpaqueTypeMetadata2;
  View.overlay<A>(alignment:content:)();
  (*(v72 + 8))(v21, v31);
  v32 = *(v89 + 20);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = type metadata accessor for RoundedCornerStyle();
  v35 = v90;
  (*(*(v34 - 8) + 104))(&v90[v32], v33, v34);
  __asm { FMOV            V0.2D, #28.0 }

  *v35 = _Q0;
  v41 = sub_100013608(&qword_1001D71A8, &qword_1001D71A0, &unk_100176840, &protocol conformance descriptor for _OverlayModifier<A>);
  v111 = OpaqueTypeConformance2;
  v112 = v41;
  v42 = v69;
  v43 = swift_getWitnessTable();
  sub_100070F68(&qword_1001D71E0, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v44 = v70;
  View.clipShape<A>(_:style:)();
  sub_1000700A4(v35, &type metadata accessor for RoundedRectangle);
  (*(v77 + 8))(v30, v42);
  static Edge.Set.horizontal.getter();
  v45 = sub_100013608(&qword_1001D61C8, &qword_1001D4E50, &qword_1001723E8, &protocol conformance descriptor for _ClipEffect<A>);
  v109 = v43;
  v110 = v45;
  v46 = v71;
  v47 = swift_getWitnessTable();
  v48 = v75;
  View.padding(_:_:)();
  (*(v80 + 8))(v44, v46);
  static Color.black.getter();
  v49 = v91;
  sub_100054010(v91);
  v51 = v92;
  v50 = v93;
  v52 = v94;
  (*(v93 + 104))(v92, enum case for ColorScheme.dark(_:), v94);
  static ColorScheme.== infix(_:_:)();
  v53 = *(v50 + 8);
  v53(v51, v52);
  v53(v49, v52);
  Color.opacity(_:)();

  v107 = v47;
  v108 = &protocol witness table for _PaddingLayout;
  v54 = v83;
  v55 = swift_getWitnessTable();
  v56 = v82;
  View.shadow(color:radius:x:y:)();

  (*(v87 + 8))(v48, v54);
  v105 = v55;
  v106 = &protocol witness table for _ShadowEffect;
  v57 = v86;
  v58 = swift_getWitnessTable();
  v61 = sub_10006F9B0(v58, v59, v60);
  sub_10006A9F8(v61, v57, &type metadata for NonModalPromptViewTransition, v58, v61);
  return (*(v88 + 8))(v56, v57);
}

uint64_t sub_10006C748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a1;
  v86 = a6;
  v10 = type metadata accessor for NonModalPromptViewButtonStyle(255);
  v11 = sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle, &unk_100176A08);
  v67 = a3;
  v68 = a5;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D7198, &unk_100176830);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v99 = a2;
  v100 = v10;
  v65 = a2;
  v101 = a4;
  v102 = v11;
  v66 = a4;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v81 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v75 = type metadata accessor for HStack();
  v82 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v59 - v12;
  v78 = type metadata accessor for ModifiedContent();
  v85 = *(v78 - 8);
  __chkstk_darwin(v78);
  v72 = &v59 - v13;
  v84 = type metadata accessor for ModifiedContent();
  v90 = *(v84 - 8);
  v14 = __chkstk_darwin(v84);
  v77 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v83 = &v59 - v16;
  v99 = a2;
  v100 = a3;
  v101 = a4;
  v102 = a5;
  v64 = type metadata accessor for NonModalPromptView(0, &v99);
  v63 = *(v64 - 8);
  v17 = *(v63 + 64);
  __chkstk_darwin(v64);
  v60 = &v59 - v18;
  v79 = sub_1000033A8(&qword_1001D7188, &qword_100176828);
  v76 = *(v79 - 8);
  v19 = __chkstk_darwin(v79);
  v74 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v88 = &v59 - v21;
  v22 = type metadata accessor for Spring();
  __chkstk_darwin(v22 - 8);
  v23 = type metadata accessor for SmartDialogAnimationSettings();
  v70 = v23;
  v71 = *(v23 - 8);
  v24 = v71;
  v25 = __chkstk_darwin(v23);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v27;
  __chkstk_darwin(v25);
  v29 = &v59 - v28;
  sub_1000033A8(&qword_1001D7208, &qword_1001794F0);
  swift_allocObject();
  v30 = PassthroughSubject.init()();
  v87 = v30;
  Spring.init(response:dampingRatio:)();
  v69 = v29;
  SmartDialogAnimationSettings.init(springAnimation:lineAnimationDelay:)();
  (*(v24 + 16))(v27, v29, v23);
  v99 = v30;
  sub_100013608(&qword_1001D7210, &qword_1001D7208, &qword_1001794F0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v61 = Publisher.eraseToAnyPublisher()();
  v31 = v63;
  v32 = v60;
  v33 = v64;
  (*(v63 + 16))(v60, v89, v64);
  v34 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v35 = (v17 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v65;
  v38 = v67;
  *(v36 + 2) = v65;
  *(v36 + 3) = v38;
  v39 = v66;
  v40 = v68;
  *(v36 + 4) = v66;
  *(v36 + 5) = v40;
  (*(v31 + 32))(&v36[v34], v32, v33);
  *&v36[v35] = v87;

  sub_1000033A8(&qword_1001D7218, &qword_100176888);
  sub_10006FD40();
  SmartDialog.init(animationSettings:animationTrigger:header:body:)();
  v91 = v37;
  v92 = v38;
  v93 = v39;
  v94 = v40;
  v95 = v89;
  static VerticalAlignment.center.getter();
  v41 = v73;
  HStack.init(alignment:spacing:content:)();
  v42 = v75;
  v43 = swift_getWitnessTable();
  v44 = v72;
  View.padding(_:)();
  (*(v82 + 8))(v41, v42);
  static Alignment.center.getter();
  v98[4] = v43;
  v98[5] = &protocol witness table for _PaddingLayout;
  v57 = v78;
  v58 = swift_getWitnessTable();
  v45 = v77;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v85 + 8))(v44, v57);
  v98[2] = v58;
  v98[3] = &protocol witness table for _FlexFrameLayout;
  v46 = v84;
  v89 = swift_getWitnessTable();
  v47 = v90;
  v48 = *(v90 + 16);
  v49 = v83;
  v48(v83, v45, v46);
  v50 = *(v47 + 8);
  v90 = v47 + 8;
  v50(v45, v46);
  v51 = v76;
  v52 = v74;
  v53 = v88;
  v54 = v79;
  (*(v76 + 16))(v74, v88, v79);
  v99 = v52;
  v48(v45, v49, v46);
  v100 = v45;
  v98[0] = v54;
  v98[1] = v46;
  v96 = sub_100013608(&qword_1001D7260, &qword_1001D7188, &qword_100176828, &protocol conformance descriptor for SmartDialog<A, B>);
  v97 = v89;
  sub_10006A7BC(&v99, 2uLL, v98);

  v50(v49, v46);
  v55 = *(v51 + 8);
  v55(v53, v54);
  (*(v71 + 8))(v69, v70);
  v50(v45, v46);
  return (v55)(v52, v54);
}

double sub_10006D270@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v42 = a3;
  *(&v42 + 1) = a4;
  *&v43 = a5;
  *(&v43 + 1) = a6;
  v9 = type metadata accessor for NonModalPromptView(0, &v42);
  v10 = (a1 + *(v9 + 52));
  v11 = v10[1];
  *&v42 = *v10;
  *(&v42 + 1) = v11;
  sub_10002EC9C(v9, v12, v13);

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.cardBody.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_100020D44(v14, v16, v18 & 1);

  v39 = static Alignment.leading.getter();
  v40 = v26;
  LOBYTE(v38) = 1;
  LOBYTE(v37) = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v27 = v23 & 1;
  v49 = v23 & 1;
  KeyPath = swift_getKeyPath();
  v29 = [objc_opt_self() labelColor];
  v30 = Color.init(uiColor:)();
  v31 = swift_getKeyPath();
  v32 = static Edge.Set.all.getter();
  v50 = 0;
  *a7 = v19;
  *(a7 + 8) = v21;
  *(a7 + 16) = v27;
  *(a7 + 24) = v25;
  v33 = v47;
  *(a7 + 96) = v46;
  *(a7 + 112) = v33;
  *(a7 + 128) = v48;
  v34 = v43;
  *(a7 + 32) = v42;
  *(a7 + 48) = v34;
  v35 = v45;
  *(a7 + 64) = v44;
  *(a7 + 80) = v35;
  *(a7 + 144) = KeyPath;
  *(a7 + 152) = 0;
  *(a7 + 160) = v31;
  *(a7 + 168) = v30;
  *(a7 + 176) = v32;
  *(a7 + 184) = xmmword_100176780;
  *(a7 + 200) = xmmword_100176780;
  *(a7 + 216) = 0;
  *(a7 + 224) = sub_10007011C;
  *(a7 + 232) = a2;
  *(a7 + 240) = 0;
  *(a7 + 248) = 0;

  return result;
}

uint64_t sub_10006D470@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, void (*a3)(void, void)@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v112 = a5;
  v106 = a4;
  v105 = a2;
  WitnessTable = a1;
  v100 = a6;
  v10 = type metadata accessor for NonModalPromptViewButtonStyle(255);
  v11 = sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle, &unk_100176A08);
  v120 = a2;
  v121 = v10;
  v122 = a4;
  v123 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v94 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v93 = &v83 - v13;
  sub_10001276C(&qword_1001D7198, &unk_100176830);
  v95 = OpaqueTypeMetadata2;
  v98 = type metadata accessor for ModifiedContent();
  v99 = *(v98 - 8);
  v14 = __chkstk_darwin(v98);
  v97 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v96 = &v83 - v16;
  v17 = swift_checkMetadataState();
  v18 = __chkstk_darwin(v17);
  v20 = (&v83 - v19);
  v120 = a3;
  v121 = v18;
  v110 = v18;
  v111 = v11;
  v122 = a5;
  v123 = v11;
  v21 = swift_getOpaqueTypeMetadata2();
  v88 = *(v21 - 8);
  __chkstk_darwin(v21);
  v87 = &v83 - v22;
  v89 = v23;
  v24 = type metadata accessor for ModifiedContent();
  v91 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v86 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v90 = &v83 - v27;
  v28 = type metadata accessor for Optional();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v83 - v31;
  v33 = *(a3 - 1);
  __chkstk_darwin(v30);
  v35 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v24;
  v102 = type metadata accessor for Optional();
  v109 = *(v102 - 8);
  v36 = __chkstk_darwin(v102);
  v38 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v108 = &v83 - v39;
  v120 = v105;
  v121 = a3;
  v122 = v106;
  v123 = v112;
  v92 = type metadata accessor for NonModalPromptView(0, &v120);
  (*(v29 + 16))(v32, WitnessTable + *(v92 + 60), v28);
  v40 = *(v33 + 48);
  v107 = a3;
  v41 = v40(v32, 1, a3);
  v101 = v38;
  if (v41 == 1)
  {
    (*(v29 + 8))(v32, v28);
    v91[7](v38, 1, 1, v103);
    v120 = v107;
    v121 = v110;
    v122 = v112;
    v123 = v111;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v43 = sub_100013608(&qword_1001D7268, &qword_1001D7198, &unk_100176830, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    v119[4] = OpaqueTypeConformance2;
    v119[5] = v43;
    swift_getWitnessTable();
  }

  else
  {
    v85 = v33;
    v44 = *(v33 + 32);
    v84 = v35;
    v45 = v107;
    v44(v35, v32, v107);
    *v20 = swift_getKeyPath();
    sub_1000033A8(&qword_1001D4DC0, &qword_100172370);
    swift_storeEnumTagMultiPayload();
    v47 = v110;
    v46 = v111;
    *(v20 + *(v110 + 20)) = 0;
    v48 = v87;
    v49 = v112;
    v50 = v91;
    v51 = v86;
    View.buttonStyle<A>(_:)();
    sub_1000700A4(v20, type metadata accessor for NonModalPromptViewButtonStyle);
    swift_getKeyPath();
    LOBYTE(v119[0]) = 0;
    v120 = v45;
    v121 = v47;
    v122 = v49;
    v123 = v46;
    v38 = v101;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = v89;
    View.environment<A>(_:_:)();

    (*(v88 + 8))(v48, v53);
    (*(v85 + 8))(v84, v107);
    v54 = sub_100013608(&qword_1001D7268, &qword_1001D7198, &unk_100176830, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    v113 = v52;
    v114 = v54;
    v55 = v103;
    swift_getWitnessTable();
    v56 = v50[2];
    v57 = v90;
    (v56)(v90, v51, v55);
    v58 = v50[1];
    (v58)(v51, v55);
    (v56)(v51, v57, v55);
    (v58)(v57, v55);
    (v50[4])(v38, v51, v55);
    v50[7](v38, 0, 1, v55);
  }

  v59 = v109;
  v60 = *(v109 + 16);
  v89 = v109 + 16;
  v90 = v60;
  v61 = v102;
  (v60)(v108, v38, v102);
  v62 = *(v59 + 8);
  v109 = v59 + 8;
  v91 = v62;
  (v62)(v38, v61);
  *v20 = swift_getKeyPath();
  sub_1000033A8(&qword_1001D4DC0, &qword_100172370);
  swift_storeEnumTagMultiPayload();
  v63 = v111;
  v64 = v110;
  *(v20 + *(v110 + 20)) = 1;
  v65 = v93;
  v66 = v105;
  v67 = v64;
  v68 = v106;
  v69 = v63;
  View.buttonStyle<A>(_:)();
  sub_1000700A4(v20, type metadata accessor for NonModalPromptViewButtonStyle);
  swift_getKeyPath();
  LOBYTE(v119[0]) = 0;
  v120 = v66;
  v121 = v67;
  v122 = v68;
  v123 = v69;
  v106 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v97;
  v72 = v95;
  View.environment<A>(_:_:)();

  (*(v94 + 8))(v65, v72);
  v73 = sub_100013608(&qword_1001D7268, &qword_1001D7198, &unk_100176830, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v119[2] = v70;
  v119[3] = v73;
  v74 = v98;
  WitnessTable = swift_getWitnessTable();
  v75 = v99;
  v76 = *(v99 + 16);
  v77 = v96;
  v76(v96, v71, v74);
  v105 = *(v75 + 8);
  v105(v71, v74);
  v78 = v101;
  v79 = v102;
  (v90)(v101, v108, v102);
  v119[0] = v78;
  v76(v71, v77, v74);
  v119[1] = v71;
  v118[0] = v79;
  v118[1] = v74;
  v120 = v107;
  v121 = v110;
  v122 = v112;
  v123 = v111;
  v116 = swift_getOpaqueTypeConformance2();
  v117 = v73;
  v115 = swift_getWitnessTable();
  v120 = swift_getWitnessTable();
  v121 = WitnessTable;
  sub_10006A7BC(v119, 2uLL, v118);
  v80 = v105;
  v105(v77, v74);
  v81 = v91;
  (v91)(v108, v79);
  v80(v71, v74);
  return (v81)(v78, v79);
}

uint64_t sub_10006E1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v41 = a2;
  v49 = a1;
  v50 = a6;
  v46 = type metadata accessor for Material._GlassVariant.Size();
  v9 = *(v46 - 8);
  __chkstk_darwin(v46);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Material._GlassVariant();
  v44 = *(v12 - 8);
  v45 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v43 = &v41 - v16;
  v17 = type metadata accessor for Material();
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  __chkstk_darwin(v17);
  v42 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001276C(&qword_1001D7188, &qword_100176828);
  v20 = type metadata accessor for NonModalPromptViewButtonStyle(255);
  v21 = sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle, &unk_100176A08);
  v55 = a3;
  v56 = v20;
  v57 = a5;
  v58 = v21;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D7198, &unk_100176830);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v55 = v41;
  v56 = v20;
  v57 = a4;
  v58 = v21;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v41 = type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0, &qword_100170918);
  v22 = type metadata accessor for ModifiedContent();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v41 - v27;
  static Material._GlassVariant.regular.getter();
  v29 = v46;
  (*(v9 + 104))(v11, enum case for Material._GlassVariant.Size.large(_:), v46);
  v30 = v43;
  Material._GlassVariant.size(_:)();
  (*(v9 + 8))(v11, v29);
  v31 = *(v44 + 8);
  v32 = v15;
  v33 = v45;
  v31(v32, v45);
  v34 = v42;
  static Material._glass(_:)();
  v31(v30, v33);
  static Edge.Set.all.getter();
  WitnessTable = swift_getWitnessTable();
  v54 = &protocol witness table for _FlexFrameLayout;
  v35 = swift_getWitnessTable();
  v36 = v47;
  View.background<A>(_:ignoresSafeAreaEdges:)();
  (*(v48 + 8))(v34, v36);
  v37 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0, &qword_100170918, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v51 = v35;
  v52 = v37;
  swift_getWitnessTable();
  v38 = *(v23 + 16);
  v38(v28, v26, v22);
  v39 = *(v23 + 8);
  v39(v26, v22);
  v38(v50, v28, v22);
  return (v39)(v28, v22);
}

uint64_t sub_10006E7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v30 = a1;
  v31 = a6;
  v29 = type metadata accessor for Material();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001276C(&qword_1001D7188, &qword_100176828);
  v13 = type metadata accessor for NonModalPromptViewButtonStyle(255);
  v14 = sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle, &unk_100176A08);
  v36 = a3;
  v37 = v13;
  v38 = a5;
  v39 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D7198, &unk_100176830);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v36 = a2;
  v37 = v13;
  v38 = a4;
  v39 = v14;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0, &qword_100170918);
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v28 - v20;
  static Material.thick.getter();
  static Edge.Set.all.getter();
  WitnessTable = swift_getWitnessTable();
  v35 = &protocol witness table for _FlexFrameLayout;
  v22 = swift_getWitnessTable();
  v23 = v29;
  View.background<A>(_:ignoresSafeAreaEdges:)();
  (*(v10 + 8))(v12, v23);
  v24 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0, &qword_100170918, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v32 = v22;
  v33 = v24;
  swift_getWitnessTable();
  v25 = *(v16 + 16);
  v25(v21, v19, v15);
  v26 = *(v16 + 8);
  v26(v19, v15);
  v25(v31, v21, v15);
  return (v26)(v21, v15);
}

uint64_t sub_10006EC9C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000033A8(&qword_1001D71C8, &qword_100176860);
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  if (static Solarium.isEnabled.getter())
  {
    v8 = *(v27 + 56);

    return v8(a1, 1, 1, v5);
  }

  else
  {
    v10 = *(v2 + 20);
    v11 = enum case for RoundedCornerStyle.continuous(_:);
    v12 = type metadata accessor for RoundedCornerStyle();
    (*(*(v12 - 8) + 104))(&v4[v10], v11, v12);
    __asm { FMOV            V0.2D, #28.0 }

    *v4 = _Q0;
    static Color.white.getter();
    v18 = Color.opacity(_:)();

    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    sub_10006FA04(v4, v7);
    v19 = &v7[*(sub_1000033A8(&qword_1001D71F0, &qword_100176870) + 36)];
    v20 = v29;
    *v19 = v28;
    *(v19 + 1) = v20;
    *(v19 + 4) = v30;
    v21 = sub_1000033A8(&qword_1001D71F8, &qword_100176878);
    *&v7[*(v21 + 52)] = v18;
    *&v7[*(v21 + 56)] = 256;
    v22 = static Alignment.center.getter();
    v24 = v23;
    sub_1000700A4(v4, &type metadata accessor for RoundedRectangle);
    v25 = &v7[*(sub_1000033A8(&qword_1001D7200, &qword_100176880) + 36)];
    *v25 = v22;
    v25[1] = v24;
    v26 = &v7[*(v5 + 36)];
    *v26 = 0x4000000000000000;
    v26[8] = 0;
    sub_10002091C(v7, a1, &qword_1001D71C8, &qword_100176860);
    return (*(v27 + 56))(a1, 0, 1, v5);
  }
}

uint64_t type metadata accessor for NonModalPromptViewButtonStyle(uint64_t a1)
{
  result = qword_1001D72D0;
  if (!qword_1001D72D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10006F00C()
{
  result = qword_1001D71B8;
  if (!qword_1001D71B8)
  {
    sub_10001276C(&qword_1001D71B0, &qword_100176858);
    sub_10006F090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D71B8);
  }

  return result;
}

unint64_t sub_10006F090()
{
  result = qword_1001D71C0;
  if (!qword_1001D71C0)
  {
    sub_10001276C(&qword_1001D71C8, &qword_100176860);
    sub_100013608(&qword_1001D71D0, &qword_1001D71D8, &qword_100176868, &protocol conformance descriptor for StrokeShapeView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D71C0);
  }

  return result;
}

uint64_t sub_10006F148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v11 = a2;
  v41 = a3;
  v13 = sub_1000033A8(&qword_1001D73B8, &unk_100176AE0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = sub_1000033A8(&qword_1001D73E8, &qword_100176AF8);
  v39 = *(v16 - 8);
  v40 = v16;
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v19 = sub_1000033A8(&qword_1001D73B0, &qword_100176AD8);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v38 - v21;
  if (TransitionPhase.isIdentity.getter())
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 8.0;
  }

  v24 = sub_1000033A8(&qword_1001D73D8, &qword_100176AF0);
  (*(*(v24 - 8) + 16))(v15, a1, v24);
  v25 = &v15[*(v13 + 36)];
  *v25 = v23;
  v25[8] = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  *(v26 + 32) = a6;
  *(v26 + 40) = a7;
  *(v26 + 48) = v11;
  sub_1000033A8(&qword_1001D73C0, &qword_10017A360);
  sub_100070EB0();
  v27 = type metadata accessor for EmptyVisualEffect();
  v28 = sub_100070F68(&qword_1001D73E0, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v42 = v27;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  sub_10001370C(v15, &qword_1001D73B8, &unk_100176AE0);
  if (TransitionPhase.isIdentity.getter())
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  (*(v39 + 32))(v22, v18, v40);
  *&v22[*(v20 + 44)] = v29;
  if (TransitionPhase.isIdentity.getter())
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.98;
  }

  static UnitPoint.center.getter();
  v32 = v31;
  v34 = v33;
  v35 = v41;
  sub_10002091C(v22, v41, &qword_1001D73B0, &qword_100176AD8);
  result = sub_1000033A8(&qword_1001D7390, &qword_100176AD0);
  v37 = v35 + *(result + 36);
  *v37 = v30;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  return result;
}

uint64_t sub_10006F4E8(CGFloat a1, CGFloat a2, CGFloat a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for NamedCoordinateSpace();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0x6C61626F6C67;
  *&v32 = -2.12455197e183;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.bounds(of:)();
  v15 = *&v31;
  v16 = *&v32;
  v17 = v33;
  v18 = v34;
  v19 = *(v12 + 8);
  v19(v14, v11);
  if (v35)
  {
    v20 = a4;
  }

  else
  {
    a1 = v15;
    a2 = v16;
    a3 = v17;
    v20 = v18;
  }

  *v30 = v20;
  v30[1] = 0x6C61626F6C67;
  v30[2] = 0xE600000000000000;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v19(v14, v11);
  if ((TransitionPhase.isIdentity.getter() & 1) == 0)
  {
    v36.origin.x = a1;
    v36.origin.y = a2;
    v36.size.width = a3;
    *&v36.size.height = v30[0];
    CGRectGetMidY(v36);
    v37.origin.x = v22;
    v37.origin.y = v24;
    v37.size.width = v26;
    v37.size.height = v28;
    CGRectGetMinY(v37);
  }

  type metadata accessor for EmptyVisualEffect();
  sub_100070F68(&qword_1001D73E0, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  return VisualEffect.offset(x:y:)();
}

void sub_10006F75C(uint64_t a1, char a2)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];

  static Animation.spring(response:dampingFraction:blendDuration:)();
  Animation.speed(_:)();

  sub_1000033A8(&qword_1001D7388, &qword_100176AC8);
  sub_1000033A8(&qword_1001D7390, &qword_100176AD0);
  sub_100013608(&qword_1001D7398, &qword_1001D7388, &qword_100176AC8, &protocol conformance descriptor for PlaceholderContentView<A>);
  sub_100070CC8();
  View.animation<A>(_:body:)();
}

uint64_t sub_10006F8E8(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t sub_10006F9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D71E8;
  if (!qword_1001D71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D71E8);
  }

  return result;
}

uint64_t sub_10006FA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006FA68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v11 = v1;
  v10 = *(v0 + 24);
  v12 = v10;
  v13 = v2;
  v3 = type metadata accessor for NonModalPromptView(0, &v11);
  v4 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v5 = v0 + v4;
  sub_1000033A8(&qword_1001D4DC0, &qword_100172370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v4, v6);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v5 + *(v3 + 56), v1);
  v7 = *(v3 + 60);
  v8 = *(v10 - 8);
  if (!(*(v8 + 48))(v5 + v7, 1, v10))
  {
    (*(v8 + 8))(v5 + v7, v10);
  }

  return swift_deallocObject();
}

double sub_10006FC68@<D0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v11[0] = v1[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v7 = *(type metadata accessor for NonModalPromptView(0, v11) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10006D270(v1 + v8, v9, v3, v4, v5, v6, a1);
}

unint64_t sub_10006FD40()
{
  result = qword_1001D7220;
  if (!qword_1001D7220)
  {
    sub_10001276C(&qword_1001D7218, &qword_100176888);
    sub_10006FDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7220);
  }

  return result;
}

unint64_t sub_10006FDCC()
{
  result = qword_1001D7228;
  if (!qword_1001D7228)
  {
    sub_10001276C(&qword_1001D7230, &qword_100176890);
    sub_10006FE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7228);
  }

  return result;
}

unint64_t sub_10006FE58()
{
  result = qword_1001D7238;
  if (!qword_1001D7238)
  {
    sub_10001276C(&qword_1001D7240, &qword_100176898);
    sub_10006FF10();
    sub_100013608(&qword_1001D46D0, &qword_1001D46D8, &unk_10017B710, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7238);
  }

  return result;
}

unint64_t sub_10006FF10()
{
  result = qword_1001D7248;
  if (!qword_1001D7248)
  {
    sub_10001276C(&qword_1001D7250, &unk_1001768A0);
    sub_10006FFC8();
    sub_100013608(&qword_1001D4EE0, &qword_1001D4EE8, &unk_1001768B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7248);
  }

  return result;
}

unint64_t sub_10006FFC8()
{
  result = qword_1001D7258;
  if (!qword_1001D7258)
  {
    sub_10001276C(&qword_1001D61E8, &qword_1001750A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7258);
  }

  return result;
}

uint64_t sub_1000700A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007011C()
{
  v1 = *v0;
  v2 = sub_100013608(&qword_1001D7270, &qword_1001D7208, &qword_1001794F0, &protocol conformance descriptor for PassthroughSubject<A, B>);

  return Subject<>.send()(v1, v2);
}

uint64_t sub_1000701CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D4CD0, &qword_100172230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000702B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000033A8(&qword_1001D4CD0, &qword_100172230);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_10007037C(uint64_t a1)
{
  sub_100053128(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000703F0(uint64_t *a1)
{
  sub_10001276C(&qword_1001D7188, &qword_100176828);
  type metadata accessor for NonModalPromptViewButtonStyle(255);
  sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle, &unk_100176A08);
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D7198, &unk_100176830);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0, &qword_100170918);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0, &qword_100170918, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D71A0, &unk_100176840);
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D4E50, &qword_1001723E8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CC8, &qword_100176850);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_100013608(&qword_1001D71A8, &qword_1001D71A0, &unk_100176840, &protocol conformance descriptor for _OverlayModifier<A>);
  swift_getWitnessTable();
  sub_100013608(&qword_1001D61C8, &qword_1001D4E50, &qword_1001723E8, &protocol conformance descriptor for _ClipEffect<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8, &qword_100176850, &protocol conformance descriptor for _TraitWritingModifier<A>);
  return swift_getWitnessTable();
}

unint64_t sub_100070948()
{
  result = qword_1001D7340;
  if (!qword_1001D7340)
  {
    sub_10001276C(&qword_1001D7328, &qword_100176A60);
    sub_100070A00();
    sub_100013608(&qword_1001D46C0, &qword_1001D46C8, &unk_1001716E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7340);
  }

  return result;
}

unint64_t sub_100070A00()
{
  result = qword_1001D7348;
  if (!qword_1001D7348)
  {
    sub_10001276C(&qword_1001D7320, &qword_100176A58);
    sub_100070AB8();
    sub_100013608(&qword_1001D46D0, &qword_1001D46D8, &unk_10017B710, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7348);
  }

  return result;
}

unint64_t sub_100070AB8()
{
  result = qword_1001D7350;
  if (!qword_1001D7350)
  {
    sub_10001276C(&qword_1001D7318, &qword_100176A50);
    sub_100070B70();
    sub_100013608(&qword_1001D7368, &qword_1001D7370, &unk_100176AA8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7350);
  }

  return result;
}

unint64_t sub_100070B70()
{
  result = qword_1001D7358;
  if (!qword_1001D7358)
  {
    sub_10001276C(&qword_1001D7310, &qword_100176A48);
    sub_100070BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7358);
  }

  return result;
}

unint64_t sub_100070BFC()
{
  result = qword_1001D7360;
  if (!qword_1001D7360)
  {
    sub_10001276C(&qword_1001D7308, &qword_100176A40);
    sub_100070F68(&qword_1001D4770, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7360);
  }

  return result;
}

unint64_t sub_100070CC8()
{
  result = qword_1001D73A0;
  if (!qword_1001D73A0)
  {
    sub_10001276C(&qword_1001D7390, &qword_100176AD0);
    sub_100070D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73A0);
  }

  return result;
}

unint64_t sub_100070D54()
{
  result = qword_1001D73A8;
  if (!qword_1001D73A8)
  {
    sub_10001276C(&qword_1001D73B0, &qword_100176AD8);
    sub_10001276C(&qword_1001D73B8, &unk_100176AE0);
    sub_10001276C(&qword_1001D73C0, &qword_10017A360);
    sub_100070EB0();
    type metadata accessor for EmptyVisualEffect();
    sub_100070F68(&qword_1001D73E0, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73A8);
  }

  return result;
}

unint64_t sub_100070EB0()
{
  result = qword_1001D73C8;
  if (!qword_1001D73C8)
  {
    sub_10001276C(&qword_1001D73B8, &unk_100176AE0);
    sub_100013608(&qword_1001D73D0, &qword_1001D73D8, &qword_100176AF0, &protocol conformance descriptor for PlaceholderContentView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73C8);
  }

  return result;
}

uint64_t sub_100070F68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100070FD4()
{
  result = qword_1001D73F0;
  if (!qword_1001D73F0)
  {
    sub_10001276C(&qword_1001D7380, &qword_100176AC0);
    sub_100071060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73F0);
  }

  return result;
}

unint64_t sub_100071060()
{
  result = qword_1001D73F8;
  if (!qword_1001D73F8)
  {
    sub_10001276C(&qword_1001D7338, &qword_100176A70);
    sub_10001276C(&qword_1001D7328, &qword_100176A60);
    sub_100070948();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&unk_1001D7400, &qword_1001D7378, &qword_100176AB8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73F8);
  }

  return result;
}

uint64_t sub_100071154()
{
  sub_10001276C(&qword_1001D7388, &qword_100176AC8);
  sub_10001276C(&qword_1001D7390, &qword_100176AD0);
  sub_100013608(&qword_1001D7398, &qword_1001D7388, &qword_100176AC8, &protocol conformance descriptor for PlaceholderContentView<A>);
  sub_100070CC8();
  return swift_getOpaqueTypeConformance2();
}

void sub_100071214(uint64_t (*result)(void *), uint64_t a2, uint64_t a3)
{
  v18 = *(a3 + 16);
  if (v18)
  {
    v3 = 0;
    v4 = (a3 + 64);
    v5 = _swiftEmptyArrayStorage;
    v17 = a3;
    while (v3 < *(a3 + 16))
    {
      v7 = *(v4 - 4);
      v6 = *(v4 - 3);
      v9 = *(v4 - 2);
      v8 = *(v4 - 1);
      v10 = *v4;
      v21[0] = v7;
      v21[1] = v6;
      v21[2] = v9;
      v21[3] = v8;
      v22 = v10;
      sub_100007F40(v7, v6, v9, v8, v10);
      v11 = result(v21);
      if (v20)
      {
        sub_100093F04(v7, v6, v9, v8, v10);

        goto LABEL_15;
      }

      if (v11)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000594A0(0, v5[2] + 1, 1);
          v5 = v23;
        }

        v14 = v5[2];
        v13 = v5[3];
        v15 = v14 + 1;
        if (v14 >= v13 >> 1)
        {
          sub_1000594A0((v13 > 1), v14 + 1, 1);
          v15 = v14 + 1;
          v5 = v23;
        }

        v5[2] = v15;
        v16 = &v5[5 * v14];
        v16[4] = v7;
        v16[5] = v6;
        v16[6] = v9;
        v16[7] = v8;
        *(v16 + 64) = v10;
      }

      else
      {
        sub_100093F04(v7, v6, v9, v8, v10);
      }

      ++v3;
      v4 += 40;
      a3 = v17;
      if (v18 == v3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void **sub_1000713D8(uint64_t (*a1)(uint64_t *), void **a2, unint64_t a3)
{
  v5 = a3;
  v18 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
LABEL_18:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v5 = v14;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = &v18;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_20:

  return v3;
}

void sub_100071594(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UUID();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = a1;

  sub_1000033A8(&qword_1001D80D8, &qword_100177150);
  sub_100013608(&qword_1001D80E0, &qword_1001D80D8, &qword_100177150, &protocol conformance descriptor for CircularBuffer<A>);
  dispatch thunk of Sequence.makeIterator()();
  sub_100013608(&qword_1001D80F0, &qword_1001D80E8, &qword_100177158, &protocol conformance descriptor for CircularBuffer<A>);
  sub_1000033A8(&qword_1001D80E8, &qword_100177158);
  dispatch thunk of Collection.endIndex.getter();
  if (v35 == v34[0])
  {
LABEL_2:

    return;
  }

  v31[1] = v32 + 16;
  v7 = (v32 + 8);
  while (1)
  {
    v10 = dispatch thunk of Collection.subscript.read();
    v12 = *(v11 + 8);
    v13 = *v11;
    v10(v34, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v14 = [v13 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = *a2;
    v17 = v34[0];
    *a2 = 0x8000000000000000;
    v19 = sub_100095B4C(v6);
    v20 = *(v17 + 16);
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (*(v17 + 24) >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = v34[0];
        if (v18)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1000C2EC0();
        v26 = v34[0];
        if (v23)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1000BF358(v22, isUniquelyReferenced_nonNull_native);
      v24 = sub_100095B4C(v6);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v19 = v24;
      v26 = v34[0];
      if (v23)
      {
LABEL_4:
        v8 = v26[7] + 16 * v19;
        v9 = *v8;
        *v8 = v15;
        *(v8 + 8) = v12;

        goto LABEL_5;
      }
    }

    v26[(v19 >> 6) + 8] |= 1 << v19;
    (*(v32 + 16))(v26[6] + *(v32 + 72) * v19, v6, v33);
    v27 = (v26[7] + 16 * v19);
    *v27 = v15;
    v27[1] = v12;
    v28 = v26[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_18;
    }

    v26[2] = v30;
LABEL_5:
    (*v7)(v6, v33);
    *a2 = v26;

    sub_1000033A8(&qword_1001D80E8, &qword_100177158);
    dispatch thunk of Collection.endIndex.getter();
    if (v35 == v34[0])
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_100071970(uint64_t (*a1)(void *))
{
  v10[0] = v1;
  sub_100013608(&qword_1001D80E0, &qword_1001D80D8, &qword_100177150, &protocol conformance descriptor for CircularBuffer<A>);

  dispatch thunk of Sequence.makeIterator()();
  sub_100013608(&qword_1001D80F0, &qword_1001D80E8, &qword_100177158, &protocol conformance descriptor for CircularBuffer<A>);
  while (1)
  {
    sub_1000033A8(&qword_1001D80E8, &qword_100177158);
    dispatch thunk of Collection.endIndex.getter();
    if (v10[5] == v10[0])
    {

      return 0;
    }

    v4 = dispatch thunk of Collection.subscript.read();
    v6 = *(v5 + 8);
    v7 = *v5;
    v4(v10, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v10[0] = v7;
    v10[1] = v6;
    v8 = a1(v10);
    if (v2)
    {

      return v7;
    }

    if (v8)
    {
      break;
    }
  }

  return v7;
}

uint64_t sub_100071B7C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = type metadata accessor for CVBundle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_100071EB8()
{
  v1 = v0[42];
  v0[43] = OBJC_IVAR____TtC6Tamale14ARCameraSource_signposter;
  static LoggingSignposter.arCameraSourceHighQualityFrame.getter();
  default argument 1 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  default argument 2 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  if (!*(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_captureDevice))
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "captureHighResolutionFrame failed: capture device not configured";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);
    }

LABEL_13:

    sub_100006AAC(v0 + 28, v0[31]);
    dispatch thunk of LoggingSignposter.Interval.end()();
    sub_100006B44(v0 + 28);
    v19 = v0[1];

    return v19(0);
  }

  v2 = *(v0[42] + OBJC_IVAR____TtC6Tamale14ARCameraSource_photoOutput);
  v0[44] = v2;
  if (!v2)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "captureHighResolutionFrame failed: Missing photo output";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v3 = v2;
  v4 = AVCapturePhotoOutput.availablePhotoPixelFormatTypes.getter();
  v5 = *(v4 + 16);
  v6 = 32;
  do
  {
    if (!v5)
    {

      return _assertionFailure(_:_:file:line:flags:)();
    }

    v7 = *(v4 + v6);
    v6 += 4;
    --v5;
  }

  while (v7 != 875704422);
  v8 = v0[42];

  sub_1000033A8(&unk_1001D6B30, &unk_100175C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100171DA0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;
  *(inited + 72) = &type metadata for UInt32;
  *(inited + 48) = 875704422;
  sub_100097328(inited);
  swift_setDeallocating();
  sub_10001370C(inited + 32, &qword_1001D8230, &qword_1001772B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [objc_opt_self() photoSettingsWithFormat:isa];
  v0[45] = v12;

  v13 = v8 + OBJC_IVAR____TtC6Tamale14ARCameraSource_configuration;
  swift_beginAccess();
  if (*(v13 + *(type metadata accessor for CameraControllerConfiguration(0) + 40)) == 1)
  {
    v14 = [v3 maxPhotoQualityPrioritization];
  }

  else
  {
    v14 = 1;
  }

  v21 = v0[42];
  [v12 setPhotoQualityPrioritization:v14];
  [v12 setMaxPhotoDimensions:{objc_msgSend(v3, "maxPhotoDimensions")}];
  v22 = *(v21 + OBJC_IVAR____TtC6Tamale14ARCameraSource_shutterSoundTask);
  v23 = swift_task_alloc();
  v0[46] = v23;
  *v23 = v0;
  v23[1] = sub_10007233C;

  return Task<>.value.getter(v0 + 49, v22, &type metadata for UInt32);
}

uint64_t sub_10007233C()
{

  return _swift_task_switch(sub_100072438, 0, 0);
}

uint64_t sub_100072438()
{
  v1 = *(v0 + 360);
  [v1 setShutterSound:*(v0 + 392)];
  static LoggingSignposter.arCameraSourceCaptureHighResFrame.getter();
  default argument 1 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  default argument 2 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  v2 = sub_100072B00();
  *(v0 + 376) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 328;
  *(v0 + 24) = sub_1000725E0;
  v3 = swift_continuation_init();
  *(v0 + 216) = sub_1000033A8(&qword_1001D8238, &qword_1001772B8);
  *(v0 + 160) = _NSConcreteStackBlock;
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_100072948;
  *(v0 + 184) = &unk_1001C2AF0;
  *(v0 + 192) = v3;
  [v2 captureHighResolutionFrameUsingPhotoSettings:v1 completion:v0 + 160];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1000725E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_1000727E4;
  }

  else
  {
    v2 = sub_1000726F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000726F0()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);

  sub_100072A20(*(v4 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea), *(v4 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea + 8), *(v4 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea + 16), *(v4 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea + 24));
  sub_100006AAC((v0 + 264), *(v0 + 288));
  dispatch thunk of LoggingSignposter.Interval.end()();

  sub_100006B44((v0 + 264));
  sub_100006AAC((v0 + 224), *(v0 + 248));
  dispatch thunk of LoggingSignposter.Interval.end()();
  sub_100006B44((v0 + 224));
  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_1000727E4(uint64_t a1)
{
  v2 = v1[47];
  v3 = v1[45];
  swift_willThrow();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "captureHighResolutionFrame failed", v6, 2u);
  }

  v8 = v1[44];
  v7 = v1[45];

  sub_100006AAC(v1 + 33, v1[36]);
  dispatch thunk of LoggingSignposter.Interval.end()();

  sub_100006B44(v1 + 33);
  sub_100006AAC(v1 + 28, v1[31]);
  dispatch thunk of LoggingSignposter.Interval.end()();
  sub_100006B44(v1 + 28);
  v9 = v1[1];

  return v9(0);
}

uint64_t sub_100072948(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100006AAC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000033A8(&qword_1001D57D0, &qword_100173700);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_100072A20(double a1, double a2, double a3, double a4)
{
  v9 = sub_10008B310();
  if (!v9)
  {
    type metadata accessor for ARFrameAttachment();
    v10 = swift_allocObject();
    *(v10 + 16) = 2;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 1;
    swift_beginAccess();

    objc_setAssociatedObject(v4, &unk_1001D7420, v10, 1);
    swift_endAccess();

    v9 = v10;
  }

  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 56) = 0;
}

id sub_100072B00()
{
  v1 = OBJC_IVAR____TtC6Tamale14ARCameraSource____lazy_storage___session;
  v2 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource____lazy_storage___session);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource____lazy_storage___session);
  }

  else
  {
    sub_100093B64();
    v4 = [objc_allocWithZone(ARSession) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100072B78()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10005BBC4(0, &qword_1001D6B40, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_100090580(&unk_1001D8040, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000033A8(&unk_1001D6B50, &unk_100175C40);
  sub_100013608(&unk_1001D8050, &unk_1001D6B50, &unk_100175C40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1001D7418 = result;
  return result;
}

uint64_t sub_100072DEC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100072EE4, 0, 0);
}

id sub_100072EE4(uint64_t a1)
{
  *(v1 + 56) = 0;
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    regionalBehaviorShutterClick = MobileGestalt_get_regionalBehaviorShutterClick();

    if (regionalBehaviorShutterClick)
    {
      v2 = 1117;
      goto LABEL_9;
    }

    v6 = [objc_opt_self() mainBundle];
    v7 = String._bridgeToObjectiveC()();
    v8 = String._bridgeToObjectiveC()();
    v9 = [v6 URLForResource:v7 withExtension:v8];

    if (v9)
    {
      v11 = *(v1 + 40);
      v10 = *(v1 + 48);
      v12 = *(v1 + 24);
      v13 = *(v1 + 32);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v13 + 32))(v10, v11, v12);
      URL._bridgeToObjectiveC()(v14);
      v16 = v15;
      SystemSoundID = AudioServicesCreateSystemSoundID(v15, (v1 + 56));

      if (SystemSoundID != noErr.getter())
      {
        _StringGuts.grow(_:)(41);

        *(v1 + 60) = SystemSoundID;
        v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v19);

        return _assertionFailure(_:_:file:line:flags:)();
      }

      (*(*(v1 + 32) + 8))(*(v1 + 48), *(v1 + 24));
      v2 = *(v1 + 56);
      goto LABEL_9;
    }
  }

  v2 = 0;
LABEL_9:
  **(v1 + 16) = v2;

  v18 = *(v1 + 8);

  return v18();
}

void sub_1000731B8()
{
  v1 = sub_1000033A8(&qword_1001D6B70, &unk_100175C50);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  v5 = v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
  v6 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
  v7 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16);
  v16 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
  v17 = v6;
  v18 = v7;
  sub_100060424(v16, v6, v7);
  sub_1000033A8(&qword_1001D6B78, &unk_100177100);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v4, v1);
  v8 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_trackManagerSupporting);
  if (v8)
  {
    v9 = *v5;
    v10 = *(v5 + 8);
    v11 = *(v8 + 24);
    v12 = *(v8 + 32);
    v13 = *(v5 + 16);
    *(v8 + 24) = *v5;
    *(v8 + 32) = v10;
    v14 = *(v8 + 40);
    *(v8 + 40) = v13;

    sub_100060424(v9, v10, v13);
    sub_1000616E4(v11, v12, v14);
  }

  if (*(v5 + 16) > 1u)
  {
    if (*(v5 + 16) == 2)
    {
      return;
    }

    if (*v5 == 0)
    {
      static LoggingSignposter.arCameraSourcePaused.getter();
    }

    else if (*v5 ^ 1 | *(v5 + 8))
    {
      static LoggingSignposter.arCameraSourcePauseRequested.getter();
    }

    else
    {
      static LoggingSignposter.arCameraSourcePausing.getter();
    }
  }

  else if (*(v5 + 16))
  {
    static LoggingSignposter.arCameraSourceRunning.getter();
  }

  else
  {
    static LoggingSignposter.arCameraSourceStopped.getter();
  }

  default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
  LoggingSignposter.emitEvent(_:shouldLog:)();
}

uint64_t sub_1000733F4(void *a1)
{
  ObjectType = swift_getObjectType();
  if (qword_1001D31A0 != -1)
  {
    v8 = ObjectType;
    swift_once();
    ObjectType = v8;
  }

  __chkstk_darwin(ObjectType);
  sub_1000033A8(&qword_1001D8028, &qword_100177110);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v9 == 2 || (v9 & 1) == 0)
  {
    return 0;
  }

  v3 = [a1 currentFrame];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [v3 geoTrackingStatus];

  result = 1;
  if (v5)
  {
    v7 = [v5 state];

    if (v7 == 3)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

double sub_100073560()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100093B5C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C2AC8;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);

  return result;
}

void sub_100073850(uint64_t a1)
{
  v1 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v1);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v58 - v8;
  v9 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v58 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v58 - v17;
  __chkstk_darwin(v16);
  v20 = &v58 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v60 = v12;
    v61 = v15;
    v23 = Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_configuration;
    swift_beginAccess();
    sub_1000138BC(v23 + *(v1 + 68), v20, &qword_1001D8020, &qword_1001728D0);
    v59 = v5;
    v24 = *(v5 + 48);
    v65 = v4;
    v69 = v24;
    v25 = v24(v20, 1, v4);
    sub_10001370C(v20, &qword_1001D8020, &qword_1001728D0);
    LODWORD(v58) = v25;
    LODWORD(v64) = v25 != 1;
    v67 = v5 + 48;
    v68 = v1;
    v62 = v3;
    if (v25 == 1)
    {
      v32 = *&v22[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay];
      *&v22[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay] = 0;

      v31 = 0;
    }

    else
    {
      v26 = sub_100072B00();
      v27 = type metadata accessor for ARCameraSourceReplay();
      v28 = objc_allocWithZone(v27);
      *&v28[OBJC_IVAR____TtC6Tamale20ARCameraSourceReplay_arReplayConfiguration] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      *&v28[OBJC_IVAR____TtC6Tamale20ARCameraSourceReplay_session] = v26;
      v70.receiver = v28;
      v70.super_class = v27;
      v29 = objc_msgSendSuper2(&v70, "init");
      v30 = *&v22[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay];
      *&v22[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay] = v29;

      if (*(v23 + *(v1 + 24)) == 1)
      {
        type metadata accessor for LocationsHandler();
        static LocationsHandler.shared.getter();
        v31 = dispatch thunk of LocationsHandler.hasPositiveAuthorization.getter();
      }

      else
      {
        v31 = 1;
      }

      v3 = v62;
    }

    v34 = v68;
    v33 = v69;
    sub_1000138BC(v23 + *(v68 + 84), v18, &qword_1001D8020, &qword_1001728D0);
    v35 = v65;
    if (v33(v18, 1, v65) == 1)
    {
      sub_10001370C(v18, &qword_1001D8020, &qword_1001728D0);
      *&v22[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceRecording] = 0;

      if (v31)
      {
        v36 = 1;
        v37 = v68;
        v35 = v65;
      }

      else
      {
        v36 = 0;
        v37 = v68;
        v43 = *(v23 + *(v68 + 80));
        if (v58 == 1)
        {
          v44 = *(v23 + *(v68 + 80));
        }

        else
        {
          v44 = 1;
        }

        LODWORD(v64) = v44;
        v35 = v65;
        if (v58 == 1 && v43)
        {
          sub_10009237C(v23, v3, type metadata accessor for CameraControllerConfiguration);
          sub_1000740E0(v3);
          sub_100092314(v3, type metadata accessor for CameraControllerConfiguration);
          LODWORD(v64) = 0;
          v36 = 0;
        }
      }
    }

    else
    {
      v38 = v59;
      v64 = *(v59 + 32);
      v39 = v66;
      v64(v66, v18, v35);
      v58 = *&v22[OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue];
      v40 = sub_100072B00();
      v41 = v63;
      (*(v38 + 16))(v63, v39, v35);
      type metadata accessor for ARCameraSourceRecording(0);
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_frameQueue) = v58;
      *(v42 + OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_session) = v40;
      v64((v42 + OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_fileURL), v41, v35);
      *&v22[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceRecording] = v42;

      if (*(v23 + *(v34 + 24)) == 1)
      {
        type metadata accessor for LocationsHandler();
        static LocationsHandler.shared.getter();
        v36 = dispatch thunk of LocationsHandler.hasPositiveAuthorization.getter();

        (*(v38 + 8))(v66, v35);
        LODWORD(v64) = 1;
      }

      else
      {
        (*(v38 + 8))(v66, v35);
        LODWORD(v64) = 1;
        v36 = 1;
      }

      v3 = v62;
      v37 = v68;
    }

    LODWORD(v66) = v36;
    v45 = *(v37 + 84);
    v68 = v23;
    v46 = v61;
    sub_1000138BC(v23 + v45, v61, &qword_1001D8020, &qword_1001728D0);
    v47 = v69;
    v48 = v69(v46, 1, v35);
    sub_10001370C(v46, &qword_1001D8020, &qword_1001728D0);
    if (v48 != 1 || (v49 = v60, sub_1000138BC(v68 + *(v37 + 68), v60, &qword_1001D8020, &qword_1001728D0), v50 = v47(v49, 1, v35), sub_10001370C(v49, &qword_1001D8020, &qword_1001728D0), v50 != 1))
    {
      v51 = OBJC_IVAR____TtC6Tamale14ARCameraSource_locationMonitoringTask;
      if (*&v22[OBJC_IVAR____TtC6Tamale14ARCameraSource_locationMonitoringTask])
      {

        Task.cancel()();
      }

      *&v22[v51] = 0;
    }

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 67109120;
      *(v54 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v52, v53, "Calling configureARConfiguration for isRecordingOrReplay: %{BOOL}d", v54, 8u);
    }

    v55 = v68;
    sub_10009237C(v68, v3, type metadata accessor for CameraControllerConfiguration);
    sub_100075A80(v3, v66 & 1);
    sub_100092314(v3, type metadata accessor for CameraControllerConfiguration);
    v56 = *&v22[OBJC_IVAR____TtC6Tamale14ARCameraSource_trackManagerSupporting];
    if (v56)
    {
      sub_10009237C(v55, v3, type metadata accessor for CameraControllerConfiguration);

      v57 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_configuration;
      swift_beginAccess();
      sub_100092DE0(v3, v56 + v57, type metadata accessor for CameraControllerConfiguration);
      swift_endAccess();
    }

    else
    {
    }
  }
}

double sub_1000740E0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for CameraControllerConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10009237C(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CameraControllerConfiguration);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  sub_1000923E4(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for CameraControllerConfiguration);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v14 = sub_1000154EC(0, 0, v9, &unk_100177290, v13);
  v15 = OBJC_IVAR____TtC6Tamale14ARCameraSource_locationMonitoringTask;
  if (*(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_locationMonitoringTask))
  {

    Task.cancel()();
  }

  *(v1 + v15) = v14;

  return result;
}

uint64_t sub_100074344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  v9 = *(type metadata accessor for CameraControllerConfiguration(0) - 8);
  v6[27] = v9;
  v6[28] = *(v9 + 64);
  v6[29] = swift_task_alloc();
  v10 = sub_1000033A8(&qword_1001D8218, &qword_100177298);
  v6[30] = v10;
  v6[31] = *(v10 - 8);
  v6[32] = swift_task_alloc();
  v11 = sub_1000033A8(&unk_1001D8220, &unk_1001772A0);
  v6[33] = v11;
  v6[34] = *(v11 - 8);
  v6[35] = swift_task_alloc();

  return _swift_task_switch(sub_100074594, 0, 0);
}

uint64_t sub_100074594()
{
  v0[36] = type metadata accessor for LocationsHandler();
  v0[37] = type metadata accessor for MainActor();
  v0[38] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100074638, v2, v1);
}

uint64_t sub_100074638()
{

  *(v0 + 312) = static LocationsHandler.shared.getter();

  return _swift_task_switch(sub_1000746AC, 0, 0);
}

uint64_t sub_1000746AC(uint64_t a1)
{
  *(v1 + 320) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100074738, v3, v2);
}

uint64_t sub_100074738()
{

  dispatch thunk of LocationsHandler.authorizationStateUpdates.getter();

  return _swift_task_switch(sub_1000747B4, 0, 0);
}

uint64_t sub_1000747B4()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_1000748A8;
  v5 = v0[33];

  return AsyncStream.Iterator.next(isolation:)(v0 + 42, 0, 0, v5);
}

uint64_t sub_1000748A8()
{

  return _swift_task_switch(sub_1000749A4, 0, 0);
}

uint64_t sub_1000749A4()
{
  if ((*(v0 + 340) & 1) != 0 || (v1 = *(v0 + 336), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    goto LABEL_6;
  }

  v3 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

LABEL_6:

    v4 = *(v0 + 8);

    return v4();
  }

  type metadata accessor for CLAuthorizationStatus(0);
  if (v1 < 3)
  {
    v6 = *(v0 + 224);
    v7 = *(v0 + 232);
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v31 = *(v0 + 200);
    v32 = *(v0 + 192);
    v10 = *(v0 + 160);
    v28 = *(v0 + 184);
    v29 = *(v0 + 168);
    v11 = *(v0 + 152);
    v30 = *(v0 + 176);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009237C(v11, v7, type metadata accessor for CameraControllerConfiguration);
    v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    sub_1000923E4(v7, v14 + v13, type metadata accessor for CameraControllerConfiguration);
    *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
    *(v0 + 48) = sub_10009354C;
    *(v0 + 56) = v14;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1000B5F04;
    *(v0 + 40) = &unk_1001C2910;
    v15 = _Block_copy((v0 + 16));

    static DispatchQoS.unspecified.getter();
    *(v0 + 136) = _swiftEmptyArrayStorage;
    sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
    sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v30 + 8))(v28, v29);
    (*(v31 + 8))(v9, v32);

LABEL_13:
    v26 = swift_task_alloc();
    *(v0 + 328) = v26;
    *v26 = v0;
    v26[1] = sub_1000748A8;
    v27 = *(v0 + 264);

    return AsyncStream.Iterator.next(isolation:)(v0 + 336, 0, 0, v27);
  }

  if (v1 - 3 <= 1)
  {
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 216);
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = objc_opt_self();
    sub_10009237C(v19, v16, type metadata accessor for CameraControllerConfiguration);
    v22 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v3;
    sub_1000923E4(v16, v23 + v22, type metadata accessor for CameraControllerConfiguration);
    *(v23 + ((v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
    *(v0 + 96) = sub_1000937DC;
    *(v0 + 104) = v23;
    *(v0 + 64) = _NSConcreteStackBlock;
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_10007574C;
    *(v0 + 88) = &unk_1001C2960;
    v24 = _Block_copy((v0 + 64));
    v25 = v3;

    [v21 checkAvailabilityWithCompletionHandler:v24];

    _Block_release(v24);
    goto LABEL_13;
  }

  *(v0 + 344) = v1;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

double sub_100074F30(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v26 = a5;
  v24 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = type metadata accessor for DispatchQoS();
  v10 = *(v28 - 8);
  __chkstk_darwin(v28);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for CameraControllerConfiguration(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v27 = *(a3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10009237C(a4, &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CameraControllerConfiguration);
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  *(v19 + 24) = v16;
  sub_1000923E4(&v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v17, type metadata accessor for CameraControllerConfiguration);
  v20 = v26;
  *(v19 + v18) = v25;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  aBlock[4] = sub_100093A9C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C29B0;
  v21 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v29 + 8))(v9, v7);
  (*(v10 + 8))(v12, v28);

  return result;
}

void sub_100075338(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1 & 1;
  if (qword_1001D31A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1001D7418;
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100093B4C;
  *(v12 + 24) = v11;
  aBlock[4] = sub_100094180;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100071D78;
  aBlock[3] = &unk_1001C2A28;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (!*&Strong[OBJC_IVAR____TtC6Tamale14ARCameraSource_locationMonitoringTask])
    {

      return;
    }

    if (a1)
    {

      sub_100075A80(a3, 1);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Changing configuration from World to Geo.", v18, 2u);
      }

      v19 = *&v15[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
      v20 = *&v15[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8];
      v21 = v15[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16];
      if (v21 == 1 || v21 == 3 && v19 == 2 && !v20)
      {
        sub_100060424(v19, v20, v21);
        v22 = sub_100072B00();
        v23 = *&v15[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration];
        if (v23)
        {
          v24 = v22;
          [v22 runWithConfiguration:v23 options:0];

          return;
        }

        goto LABEL_26;
      }
    }

    else
    {

      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33 = v28;
        *v27 = 136315138;
        if (a4)
        {
          swift_getErrorValue();
          v29 = Error.localizedDescription.getter();
          v31 = v30;
        }

        else
        {
          v29 = 0;
          v31 = 0xE000000000000000;
        }

        v32 = sub_1000E0FE0(v29, v31, &v33);

        *(v27 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "%s : Please try again in an area where geo tracking is supported.", v27, 0xCu);
        sub_100006B44(v28);
      }
    }
  }
}

void sub_10007574C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1000757C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1001D31A0 != -1)
  {
    swift_once();
  }

  v5 = qword_1001D7418;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = 2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100094188;
  *(v7 + 24) = v6;
  v14[4] = sub_100094180;
  v14[5] = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100071D78;
  v14[3] = &unk_1001C2AA0;
  v8 = _Block_copy(v14);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      if (*(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_locationMonitoringTask) && *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration) && (objc_opt_self(), swift_dynamicCastObjCClass()))
      {

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "Changing configuration back to World tracking (location permission withdrawn)", v13, 2u);
        }

        sub_100075A80(a2, 0);
        if (v10[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16] == 2)
        {
          sub_100079EC0();
        }
      }

      else
      {
      }
    }
  }
}

void sub_100075A80(uint64_t a1, char a2)
{
  v5 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  v6 = __chkstk_darwin(v5 - 8);
  v87 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v88 = &v86 - v9;
  __chkstk_darwin(v8);
  v11 = &v86 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v91 = v12;
  v92 = v13;
  __chkstk_darwin(v12);
  v89 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v93 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412546;
    v21 = sub_100072B00();
    *(v19 + 4) = v21;
    *v20 = v21;
    *(v19 + 12) = 1024;
    *(v19 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "Configuring AR session '%@' with geo available '%{BOOL}d'.", v19, 0x12u);
    sub_10001370C(v20, &unk_1001D8030, &qword_100177118);

    a1 = v93;
  }

  v22 = ARWorldTrackingConfiguration_ptr;
  if (a2)
  {
    v22 = ARGeoTrackingConfiguration_ptr;
  }

  v23 = [objc_allocWithZone(*v22) init];
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v26 = type metadata accessor for CameraControllerConfiguration(0);
    v27 = *(a1 + *(v26 + 20));
    v28 = objc_opt_self();
    v29 = v23;
    v30 = v28;
    a1 = v93;
    [v30 setBackdropCameraOverride:v27];
    [v25 setVisualLocalizationUpdatesRequested:*(a1 + *(v26 + 72))];
    [v25 setUseLidarIfAvailable:0];
    [v25 setShouldUseUltraWideIfAvailable:0];
    [v25 setPlaneDetection:3];
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Configured as GeoTracking.";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);
    }
  }

  else
  {
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (!v35)
    {
      goto LABEL_13;
    }

    v36 = v35;
    v37 = *(a1 + *(type metadata accessor for CameraControllerConfiguration(0) + 20));
    v38 = objc_opt_self();
    v39 = v23;
    [v38 setBackdropCameraOverride:v37];
    [v36 setUseLidarIfAvailable:0];
    [v36 setShouldUseUltraWideIfAvailable:0];
    [v36 setDisableFrontCamera:1];
    [v36 setPlaneDetection:3];
    [v36 setRelocalizationEnabled:0];
    v40 = String._bridgeToObjectiveC()();
    [v36 setSlamConfiguration:v40];

    [v36 setDisableLocationSensor:1];
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Configured as WorldTracking.";
      goto LABEL_11;
    }
  }

LABEL_13:
  v90 = v15;
  v41 = type metadata accessor for CameraControllerConfiguration(0);
  if (!*(a1 + v41[11]))
  {
    goto LABEL_24;
  }

  if (*(a1 + v41[11]) == 1)
  {
    sub_10005BBC4(0, &qword_1001D8210, ARWorldTrackingConfiguration_ptr);
    v42 = [swift_getObjCClassFromMetadata() recommendedVideoFormatForHighResolutionFrameCapturing];
    if (!v42)
    {
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "Could not retrieve the appropriate video format for high resolution. Proceeding with auto.";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v43, v44, v46, v45, 2u);

        goto LABEL_23;
      }

      goto LABEL_23;
    }

LABEL_19:
    v43 = v42;
    [v23 setVideoFormat:v42];
    goto LABEL_23;
  }

  sub_10005BBC4(0, &qword_1001D8210, ARWorldTrackingConfiguration_ptr);
  v42 = [swift_getObjCClassFromMetadata() recommendedVideoFormatFor4KResolution];
  if (v42)
  {
    goto LABEL_19;
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "Could not retrieve the appropriate video format for 4K. Proceeding with auto.";
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  v47 = *(a1 + v41[16]);
  v48 = [v23 videoFormat];
  sub_1000033A8(&qword_1001D5248, &qword_100172968);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100176B00;
  sub_10005BBC4(0, &qword_1001D81C0, NSNumber_ptr);
  if (v47)
  {
    v50 = 60;
  }

  else
  {
    v50 = 30;
  }

  if (v47)
  {
    v51 = 30;
  }

  else
  {
    v51 = 20;
  }

  *(v49 + 32) = NSNumber.init(integerLiteral:)(v50);
  *(v49 + 40) = NSNumber.init(integerLiteral:)(v51);
  *(v49 + 48) = NSNumber.init(integerLiteral:)(10);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v48 setFrameRatesByPowerUsage:isa];

  [v23 setDisableRenderSyncScheduling:1];
  [v23 setDropInitialFramesOutsideExposureTarget:0];
  [v23 setVideoHDRAllowed:*(a1 + v41[7])];
  sub_1000138BC(a1 + v41[17], v11, &qword_1001D8020, &qword_1001728D0);
  v54 = v91;
  v53 = v92;
  v55 = *(v92 + 48);
  if (v55(v11, 1, v91) != 1)
  {
    v68 = v89;
    (*(v53 + 32))(v89, v11, v54);
    v65 = v90;
    v69 = *&v90[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay];
    v70 = v53;
    if (v69)
    {
      v71 = v69;
      v72 = sub_10008E610(v23, v68);
    }

    else
    {
      v72 = 0;
    }

    v73 = v93;
    v74 = OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration;
    v75 = *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration];
    *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration] = v72;

    if (!*&v65[v74])
    {
      v76 = &v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
      v77 = *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
      v78 = *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8];
      *v76 = 0xD00000000000001BLL;
      *(v76 + 1) = 0x800000010016D330;
      v79 = v76[16];
      v76[16] = 2;
      sub_1000616E4(v77, v78, v79);
      sub_1000731B8();
    }

    (*(v70 + 8))(v68, v54);
    goto LABEL_44;
  }

  sub_10001370C(v11, &qword_1001D8020, &qword_1001728D0);
  v56 = v41[21];
  v57 = a1 + v56;
  v58 = v88;
  sub_1000138BC(v57, v88, &qword_1001D8020, &qword_1001728D0);
  v59 = v54;
  v60 = v55(v58, 1, v54);
  sub_10001370C(v58, &qword_1001D8020, &qword_1001728D0);
  if (v60 == 1)
  {
    goto LABEL_34;
  }

  v61 = [objc_opt_self() defaultManager];
  v62 = v87;
  sub_1000138BC(v93 + v56, v87, &qword_1001D8020, &qword_1001728D0);
  if (v55(v62, 1, v59) == 1)
  {
    __break(1u);
  }

  else
  {
    URL.path(percentEncoded:)(1);
    (*(v92 + 8))(v62, v59);
    v63 = String._bridgeToObjectiveC()();

    v64 = [v61 fileExistsAtPath:v63];

    if (v64)
    {
LABEL_34:
      v65 = v90;
      v66 = *&v90[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration];
      *&v90[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration] = v23;
      v67 = v23;

LABEL_43:
      v73 = v93;
LABEL_44:
      v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureLevelOverride] = *(v73 + v41[15]);
      v82 = [v23 videoFormat];
      v83 = [v82 framesPerSecond];

      type metadata accessor for CameraMotionMonitor();
      swift_allocObject();
      sub_10009D2D0(v83);
      v85 = v84;

      *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_motionMonitor] = v85;

      return;
    }

    v65 = v90;
    if (*&v90[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceRecording])
    {

      v80 = sub_10008D8EC(v23);

      v81 = *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration];
      *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration] = v80;

      goto LABEL_43;
    }
  }

  __break(1u);
}