uint64_t sub_100EBED38()
{
  sub_10000B3A8(v0 + 24, &qword_1016BE5A8, &qword_1013EE8A8);

  return swift_deallocClassInstance();
}

id sub_100EBEDA0(void *a1, double a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  sub_1000035D0(a1, v11);
  v13 = (*(v12 + 8))(v11, v12);
  v14 = a1[3];
  v15 = a1[4];
  sub_1000035D0(a1, v14);
  v16 = (*(v15 + 16))(v14, v15);
  v17 = a1[3];
  v18 = a1[4];
  sub_1000035D0(a1, v17);
  v19 = (*(v18 + 24))(v17, v18);
  v20 = a1[3];
  v21 = a1[4];
  sub_1000035D0(a1, v20);
  v22 = (*(v21 + 32))(v20, v21);
  v23 = a1[3];
  v24 = a1[4];
  sub_1000035D0(a1, v23);
  v25 = (*(v24 + 40))(v23, v24);
  v26 = a1[3];
  v27 = a1[4];
  sub_1000035D0(a1, v26);
  (*(v27 + 56))(v26, v27);
  v28 = *(v8 + 48);
  if (v28(v6, 1, v7) == 1)
  {
    Date.init()();
    if (v28(v6, 1, v7) != 1)
    {
      sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  if (v22 > a2)
  {
    a2 = v22;
  }

  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v10, v7);
  v31 = [v29 initWithCoordinate:isa altitude:v13 horizontalAccuracy:v16 verticalAccuracy:v19 timestamp:{a2, v25}];

  v32 = a1[3];
  v33 = a1[4];
  sub_1000035D0(a1, v32);
  v34 = *(v33 + 48);
  v35 = v31;
  [v35 setReferenceFrame:{v34(v32, v33)}];

  sub_100007BAC(a1);
  return v35;
}

void sub_100EBF154()
{
  v1 = [*v0 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100EBF1B4()
{
  v1 = [*v0 preferredName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100EBF21C(void *a1@<X8>)
{
  v3 = [*v1 type];
  type metadata accessor for RTLocationOfInterestType(0);
  a1[3] = v4;
  a1[4] = &off_101658B90;
  *a1 = v3;
}

uint64_t sub_100EBF268@<X0>(void *a1@<X8>)
{
  v3 = [*v1 location];
  result = sub_100008BB8(0, &qword_1016BE638, RTLocation_ptr);
  a1[3] = result;
  a1[4] = &off_101658BB8;
  *a1 = v3;
  return result;
}

uint64_t sub_100EBF2CC(unint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = a2;
    v5 = sub_10039D59C(a1);
    a2 = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  a3(v6, a2);
}

uint64_t sub_100EBF334(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100008BB8(0, &qword_10169F050, RTLocationOfInterest_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_100EBF3D8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *sub_1000035D0(a1, a1[3]);

  return sub_100EBF584(v7, a2, a3, v6);
}

uint64_t sub_100EBF470@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 date];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t type metadata accessor for LocationOfInterestProvider.RemappingOperation(uint64_t a1)
{
  result = qword_1016BE6B0;
  if (!qword_1016BE6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100EBF584(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for RTLocationOfInterestType(0);
  v14[3] = v8;
  v14[4] = &off_101658B90;
  v14[0] = a1;
  v9 = *sub_1000035D0(v14, v8);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  aBlock[4] = sub_100EC0728;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100EBF334;
  aBlock[3] = &unk_101658E78;
  v11 = _Block_copy(aBlock);

  [a4 fetchLocationsOfInterestOfType:v9 withHandler:v11];
  _Block_release(v11);
  return sub_100007BAC(v14);
}

void sub_100EBF6A8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v81 = a3;
  v7 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v7 - 8);
  v79 = v66 - v8;
  v83 = type metadata accessor for SafeLocation(0);
  v9 = *(v83 - 8);
  v10 = __chkstk_darwin(v83);
  v77 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v84 = v66 - v12;
  v13 = sub_1000BC4D4(&qword_1016BE3D0, &qword_1013EE770);
  __chkstk_darwin(v13 - 8);
  v90 = v66 - v14;
  v15 = type metadata accessor for LocationOfInterestProvider.RemappingOperation(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v71 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = v66 - v19;
  v95 = type metadata accessor for UUID();
  v20 = __chkstk_darwin(v95);
  v72 = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v66 - v23;
  v25 = a1 + 56;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a1 + 56);
  v91 = (v26 + 63) >> 6;
  v88 = v22 + 16;
  v74 = (v9 + 56);
  v78 = v9;
  v73 = (v9 + 48);
  v92 = v22 + 32;
  v94 = v22;
  v86 = (v22 + 8);
  v87 = (v16 + 56);
  v70 = v16;
  v85 = (v16 + 48);

  v29 = 0;
  v82 = _swiftEmptyArrayStorage;
  v76 = v15;
  v75 = v24;
  v89 = a1 + 56;
  v80 = a2;
LABEL_4:
  v30 = v29;
  v31 = v91;
  if (!v28)
  {
    goto LABEL_6;
  }

  do
  {
    v29 = v30;
LABEL_9:
    v32 = *(a1 + 48);
    v93 = *(v94 + 72);
    (*(v94 + 16))(v24, v32 + v93 * (__clz(__rbit64(v28)) | (v29 << 6)), v95);
    v33 = *a2;
    if (!*(*a2 + 16) || (v34 = sub_1000210EC(v24), (v35 & 1) == 0))
    {
      v45 = v90;
      (*v87)(v90, 1, 1, v15);
      goto LABEL_31;
    }

    v36 = *(v78 + 72);
    v37 = *(v33 + 56) + v36 * v34;
    v38 = v77;
    sub_100EC03A4(v37, v77, type metadata accessor for SafeLocation);
    sub_100EBFFE0(v38, v84, type metadata accessor for SafeLocation);
    v39 = *v81;
    if (*(*v81 + 16) && (v40 = sub_1000210EC(v24), (v41 & 1) != 0))
    {
      v42 = *(v39 + 56) + v40 * v36;
      v43 = v79;
      sub_100EC03A4(v42, v79, type metadata accessor for SafeLocation);
      v44 = 0;
    }

    else
    {
      v44 = 1;
      v43 = v79;
    }

    v46 = v83;
    v47 = v84;
    (*v74)(v43, v44, 1, v83);
    if ((*v73)(v43, 1, v46))
    {
      sub_10000B3A8(v43, &unk_1016AFA10, &qword_1013CB000);
LABEL_20:
      if (*(v47 + *(v46 + 24)) == 2)
      {
        v68 = a4;
        v50 = sub_1009EC650();
        v51 = v50[2];
        if (v51)
        {
          v67 = a1;
          v99 = _swiftEmptyArrayStorage;
          sub_101123D4C(0, v51, 0);
          v52 = v99;
          v66[1] = v50;
          v53 = (v50 + 4);
          v54 = v72;
          do
          {
            sub_10001F280(v53, &v96);
            v56 = v97;
            v55 = v98;
            sub_1000035D0(&v96, v97);
            (*(*(*(v55 + 8) + 8) + 32))(v56);
            sub_100007BAC(&v96);
            v99 = v52;
            v58 = v52[2];
            v57 = v52[3];
            if (v58 >= v57 >> 1)
            {
              sub_101123D4C((v57 > 1), v58 + 1, 1);
              v52 = v99;
            }

            v52[2] = v58 + 1;
            (*(v94 + 32))(v52 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + v58 * v93, v54, v95);
            v53 += 40;
            --v51;
          }

          while (v51);

          a1 = v67;
        }

        else
        {

          v52 = _swiftEmptyArrayStorage;
        }

        v47 = v84;
        v59 = *(v83 + 52);

        v49 = 0;
        *(v47 + v59) = v52;
        a4 = v68;
      }

      else
      {
        v49 = 0;
      }

      goto LABEL_30;
    }

    v48 = *(v43 + *(v46 + 48));
    sub_10000B3A8(v43, &unk_1016AFA10, &qword_1013CB000);
    v47 = v84;
    if (v48 != 1)
    {
      goto LABEL_20;
    }

    v49 = 1;
LABEL_30:
    v60 = *(sub_1000BC4D4(&qword_1016BE3E8, &unk_1013EE790) + 48);
    v45 = v90;
    sub_100EC03A4(v47, v90, type metadata accessor for SafeLocation);
    *(v45 + v60) = v49;
    v15 = v76;
    swift_storeEnumTagMultiPayload();
    (*v87)(v45, 0, 1, v15);
    sub_100EC040C(v47, type metadata accessor for SafeLocation);
    a2 = v80;
    v24 = v75;
LABEL_31:
    v28 &= v28 - 1;
    (*v86)(v24, v95);
    if ((*v85)(v45, 1, v15) != 1)
    {
      v61 = v45;
      v62 = v69;
      sub_100EBFFE0(v61, v69, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      sub_100EBFFE0(v62, v71, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_100A5ED40(0, v82[2] + 1, 1, v82);
      }

      v64 = v82[2];
      v63 = v82[3];
      if (v64 >= v63 >> 1)
      {
        v82 = sub_100A5ED40((v63 > 1), v64 + 1, 1, v82);
      }

      v65 = v82;
      v82[2] = v64 + 1;
      sub_100EBFFE0(v71, v65 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v64, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      v25 = v89;
      goto LABEL_4;
    }

    sub_10000B3A8(v45, &qword_1016BE3D0, &qword_1013EE770);
    v30 = v29;
    v25 = v89;
    v31 = v91;
  }

  while (v28);
LABEL_6:
  while (1)
  {
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v29 >= v31)
    {

      return;
    }

    v28 = *(v25 + 8 * v29);
    ++v30;
    if (v28)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100EBFFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EC0098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100EC00E0()
{
  result = qword_1016BE440;
  if (!qword_1016BE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE440);
  }

  return result;
}

uint64_t sub_100EC0168(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_1000D2A70(a1, v4, &unk_101696900, &unk_10138B1E0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v4, v6);
  }

  v9 = String._bridgeToObjectiveC()();
  [v5 setObject:isa forKey:v9];

  swift_unknownObjectRelease();
  return sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
}

id sub_100EC0310(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
    return swift_errorRetain();
  }

  return result;
}

void sub_100EC032C(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    sub_100EC0350(a2, a3 & 0x3F);
  }

  else if (!(a3 >> 6))
  {
  }
}

void sub_100EC0350(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

void sub_100EC036C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  sub_100EC0380(v2, v3, v4);
}

void sub_100EC0380(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    sub_100EC0310(a2, a3 & 0x3F);
  }

  else if (!(a3 >> 6))
  {
  }
}

uint64_t sub_100EC03A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EC040C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100EC0514(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for SafeLocation(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100EC059C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for SafeLocation(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v6 = *(v5 + *(v3 + 64));

  return sub_1009E9B04(v4, v5, v6, a1);
}

uint64_t sub_100EC0630(uint64_t a1, __int16 a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 0x1FF;
  return v3(&v5);
}

unint64_t sub_100EC0684()
{
  result = qword_1016BE5E8;
  if (!qword_1016BE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE5E8);
  }

  return result;
}

void sub_100EC071C(void *a1, char a2, char a3)
{
  if (a3)
  {
    sub_100EC0350(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_100EC0730(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100EC075C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 & 7 | (8 * *(a1 + 8))) + 2;
  }
}

uint64_t sub_100EC0784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100EC07D4(uint64_t result, int a2, int a3)
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
      *result = 8 * -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
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

uint64_t sub_100EC082C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 3 | (a2 << 6);
    *result &= 7uLL;
    *(result + 16) = v2;
  }

  else
  {
    *result = (a2 - 2) & 7;
    *(result + 8) = (a2 - 2) >> 3;
    *(result + 16) = 0x80;
  }

  return result;
}

void sub_100EC087C(uint64_t a1)
{
  sub_100EC08F0(319);
  if (v1 <= 0x3F)
  {
    sub_100EC095C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100EC08F0(uint64_t a1)
{
  if (!qword_1016BE6C0)
  {
    type metadata accessor for SafeLocation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016BE6C0);
    }
  }
}

void sub_100EC095C()
{
  if (!qword_1016BE6C8)
  {
    v0 = type metadata accessor for SafeLocation(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1016BE6C8);
    }
  }
}

uint64_t sub_100EC09A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChangeSetAdaptor();
  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyDictionarySingleton;
  *(v10 + 24) = _swiftEmptyDictionarySingleton;
  v11 = v10 + 24;

  sub_100C9F944(v12, &off_101658FC0, a1, a2);

  if (v3)
  {
  }

  swift_beginAccess();
  v14 = v23;
  if (*(*(v10 + 16) + 16))
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  if ((*v11 & 0xC000000000000001) != 0)
  {

    v15 = __CocoaDictionary.count.getter();

    if (v15)
    {
LABEL_6:
      UUID.init()();
      swift_beginAccess();

      v18 = sub_1003A8B54(v16, v17);

      v19 = *(v10 + 16);

      (*(v7 + 32))(v14, v9, v6);
      v20 = type metadata accessor for CloudKitChangeSet(0);
      *(v14 + *(v20 + 20)) = v18;
      *(v14 + *(v20 + 24)) = v19;
      return (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
    }
  }

  else if (*(*v11 + 16))
  {
    goto LABEL_6;
  }

  v21 = type metadata accessor for CloudKitChangeSet(0);
  return (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
}

uint64_t sub_100EC0C48@<X0>(void (*a1)(uint64_t, _UNKNOWN **)@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChangeSetAdaptor();
  v8 = swift_allocObject();
  *(v8 + 16) = _swiftEmptyDictionarySingleton;
  *(v8 + 24) = _swiftEmptyDictionarySingleton;
  v9 = v8 + 24;

  a1(v10, &off_101658FC0);

  if (v2)
  {
  }

  swift_beginAccess();
  v12 = v21;
  if (*(*(v8 + 16) + 16))
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  if ((*v9 & 0xC000000000000001) != 0)
  {

    v13 = __CocoaDictionary.count.getter();

    if (v13)
    {
LABEL_6:
      UUID.init()();
      swift_beginAccess();

      v16 = sub_1003A8B54(v14, v15);

      v17 = *(v8 + 16);

      (*(v5 + 32))(v12, v7, v4);
      v18 = type metadata accessor for CloudKitChangeSet(0);
      *(v12 + *(v18 + 20)) = v16;
      *(v12 + *(v18 + 24)) = v17;
      return (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    }
  }

  else if (*(*v9 + 16))
  {
    goto LABEL_6;
  }

  v19 = type metadata accessor for CloudKitChangeSet(0);
  return (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
}

uint64_t sub_100EC0EE8(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OwnerPeerTrust(0);
  __chkstk_darwin(v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100EC4F94(a2, v8, type metadata accessor for OwnerPeerTrust);
  [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v10 = v6[6];
  v11 = *(v3 + v10);
  v12 = v8[v10];
  if (v11 != v12)
  {
    v39 = &type metadata for Int;
    v40 = &protocol witness table for Int;
    v37 = v12;
    CKRecordKeyValueSetting.subscript.setter();
  }

  if ((sub_10098BFC0(v3 + v6[7], &v8[v6[7]]) & 1) == 0)
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for PeerCommunicationIdentifier(0);
    sub_100EC4F4C(&qword_10169D978, type metadata accessor for PeerCommunicationIdentifier, &unk_1013CB334);
    v13 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v15 = v14;

    v39 = &type metadata for Data;
    v40 = &protocol witness table for Data;
    v37 = v13;
    v38 = v15;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v16 = v6[8];
  v17 = *(v3 + v16);
  v18 = *(v3 + v16 + 8);
  v19 = &v8[v16];
  v21 = *v19;
  v20 = *(v19 + 1);
  v22 = v17 == *v19 && v18 == v20;
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v39 = &type metadata for String;
    v40 = &protocol witness table for String;
    v37 = v21;
    v38 = v20;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v36[1] = ObjectType;
  v23 = v6[9];
  v24 = *(v3 + v23);
  v25 = *(v3 + v23 + 8);
  v26 = &v8[v23];
  v27 = *&v8[v23];
  v28 = *&v8[v23 + 8];
  sub_100017D5C(v24, v25);
  sub_100017D5C(v27, v28);
  v29 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v24, v25, v27, v28);
  sub_100016590(v27, v28);
  sub_100016590(v24, v25);
  if (!v29)
  {
    v30 = *v26;
    v31 = v26[1];
    v39 = &type metadata for Data;
    v40 = &protocol witness table for Data;
    v37 = v30;
    v38 = v31;
    sub_100017D5C(v30, v31);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v32 = v6[10];
  v33 = *(v3 + v32);
  v34 = v8[v32];
  if (v33 != v34)
  {
    v39 = &type metadata for Int;
    v40 = &protocol witness table for Int;
    v37 = v34;
    CKRecordKeyValueSetting.subscript.setter();
  }

  swift_unknownObjectRelease();
  return sub_100EC4FFC(v8, type metadata accessor for OwnerPeerTrust);
}

uint64_t sub_100EC12C4(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MemberSharingCircle(0);
  __chkstk_darwin(v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100EC4F94(a2, v8, type metadata accessor for MemberSharingCircle);
  v9 = [*a1 encryptedValues];
  v27[1] = swift_getObjectType();
  type metadata accessor for UUID();
  sub_100EC4F4C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v10 = UUID.uuidString.getter();
    v30 = &type metadata for String;
    v31 = &protocol witness table for String;
    v28 = v10;
    v29 = v11;
    CKRecordKeyValueSetting.subscript.setter();
  }

  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = UUID.uuidString.getter();
    v30 = &type metadata for String;
    v31 = &protocol witness table for String;
    v28 = v12;
    v29 = v13;
    CKRecordKeyValueSetting.subscript.setter();
  }

  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v14 = UUID.uuidString.getter();
    v30 = &type metadata for String;
    v31 = &protocol witness table for String;
    v28 = v14;
    v29 = v15;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v16 = *(v6 + 36);
  v17 = *&v8[v16];
  if ((sub_100DE7C90(*(v3 + v16), v17) & 1) == 0)
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v28 = v17;

    sub_1000BC4D4(&qword_10169DFE8, &unk_10139D320);
    sub_100328898();
    v18 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v20 = v19;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v22 = String._bridgeToObjectiveC()();
    [v9 setObject:isa forKeyedSubscript:v22];

    sub_100016590(v18, v20);
  }

  v23 = *(v6 + 40);
  v24 = *(v3 + v23);
  v25 = v8[v23];
  if (v24 == v25)
  {
    sub_100EC4FFC(v8, type metadata accessor for MemberSharingCircle);
    return swift_unknownObjectRelease();
  }

  else
  {
    v30 = &type metadata for Int;
    v31 = &protocol witness table for Int;
    v28 = v25;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    return sub_100EC4FFC(v8, type metadata accessor for MemberSharingCircle);
  }
}

unint64_t sub_100EC17B8()
{
  _StringGuts.grow(_:)(43);

  v1._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x203A65766173203ALL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  if (*(v0 + *(type metadata accessor for CloudKitChangeSet(0) + 20)) >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x3A6574656C656420;
  v4._object = 0xE900000000000020;
  String.append(_:)(v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0xD000000000000013;
}

uint64_t sub_100EC1938(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MemberPeerTrust(0);
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100EC4F94(a2, v8, type metadata accessor for MemberPeerTrust);
  [*a1 encryptedValues];
  swift_getObjectType();
  v9 = v6[6];
  v10 = *(v3 + v9);
  v11 = v8[v9];
  if (v10 != v11)
  {
    v35 = &type metadata for Int;
    v36 = &protocol witness table for Int;
    v33 = v11;
    CKRecordKeyValueSetting.subscript.setter();
  }

  if ((sub_10098BFC0(v3 + v6[7], &v8[v6[7]]) & 1) == 0)
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for PeerCommunicationIdentifier(0);
    sub_100EC4F4C(&qword_10169D978, type metadata accessor for PeerCommunicationIdentifier, &unk_1013CB334);
    v12 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v14 = v13;

    v35 = &type metadata for Data;
    v36 = &protocol witness table for Data;
    v33 = v12;
    v34 = v14;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v15 = v6[8];
  v16 = *(v3 + v15);
  v17 = *(v3 + v15 + 8);
  v18 = &v8[v15];
  v20 = *v18;
  v19 = *(v18 + 1);
  v21 = v16 == *v18 && v17 == v19;
  if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v35 = &type metadata for String;
    v36 = &protocol witness table for String;
    v33 = v20;
    v34 = v19;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v22 = v6[9];
  v23 = *(v3 + v22);
  v24 = *(v3 + v22 + 8);
  v25 = &v8[v22];
  v26 = *&v8[v22];
  v27 = *&v8[v22 + 8];
  sub_100017D5C(v23, v24);
  sub_100017D5C(v26, v27);
  v28 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v23, v24, v26, v27);
  sub_100016590(v26, v27);
  sub_100016590(v23, v24);
  if (!v28)
  {
    v29 = *v25;
    v30 = v25[1];
    v35 = &type metadata for Data;
    v36 = &protocol witness table for Data;
    v33 = v29;
    v34 = v30;
    sub_100017D5C(v29, v30);
    CKRecordKeyValueSetting.subscript.setter();
  }

  swift_unknownObjectRelease();
  return sub_100EC4FFC(v8, type metadata accessor for MemberPeerTrust);
}

void sub_100EC1CBC(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  __chkstk_darwin(v5 - 8);
  v7 = (&v46 - v6);
  v8 = type metadata accessor for MemberSharingCircle(0);
  __chkstk_darwin(v8);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = a1[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2 || *(v12 + 16) == *(v12 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v14)
  {
    if (v12 == v12 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v22 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v46 = v9;
  v15 = objc_autoreleasePoolPush();
  sub_1011224E4(a1);
  if (!v2)
  {
    v17 = v16;
    objc_autoreleasePoolPop(v15);
    v51 = v17;
    swift_beginAccess();
    v18 = *(a2 + 24);

    v19 = [v17 recordID];
    v47 = v17;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v20 = v19;
      v21 = __CocoaDictionary.contains(_:)();

      if (v21)
      {
        goto LABEL_19;
      }
    }

    else if (*(v18 + 16))
    {
      v23 = v19;
      sub_100771FF8(v19);
      v25 = v24;

      if (v25)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v26 = v19;
    }

    swift_beginAccess();
    v27 = *(a2 + 16);

    v28 = [v47 recordID];
    v29 = v28;
    if (*(v27 + 16))
    {
      sub_100771FF8(v28);
      v31 = v30;

      if (v31)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v32 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v49 = 0x7365547265646E75;
    v50 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v33 = v47;
    if (v48 == 1)
    {
      v34 = [v47 valueStore];
      [v34 resetChangedKeys];

      v35 = [v47 encryptedValueStore];
      v36 = v47;
      [v35 resetChangedKeys];

      v33 = v36;
    }

    v37 = [v33 recordID];
    v38 = *(a2 + 24);

    v15 = sub_1005CAAF8(v37, v38);

    if (v15)
    {
      sub_1003268EC(v15, v7);
      v39 = v47;
      (*(v46 + 56))(v7, 0, 1, v8);
      sub_100EC505C(v7, v11, type metadata accessor for MemberSharingCircle);
    }

    else
    {
      v39 = v47;
      sub_100EC4F94(a1, v11, type metadata accessor for MemberSharingCircle);
    }

    *(v11 + *(v8 + 40)) = 1;
    sub_100EC12C4(&v51, v11);
    if (sub_1003287CC(a1, v11))
    {
      goto LABEL_36;
    }

    v40 = v39;
    v41 = [v40 recordID];
    swift_beginAccess();
    v42 = *(a2 + 24);
    if ((v42 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(a2 + 24);
      sub_100FFB704(v40, v41, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v48;

      swift_endAccess();
LABEL_36:
      sub_100EC4FFC(v11, type metadata accessor for MemberSharingCircle);

      return;
    }

    if (v42 < 0)
    {
      v43 = *(a2 + 24);
    }

    else
    {
      v43 = v42 & 0xFFFFFFFFFFFFFF8;
    }

    v44 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v44, 1))
    {
      *(a2 + 24) = sub_100D47C24(v43, v44 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v15);
  __break(1u);
}

void sub_100EC2350(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t))
{
  v11 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  __chkstk_darwin(v11 - 8);
  v13 = (&v52 - v12);
  v14 = type metadata accessor for MemberSharingCircle(0);
  __chkstk_darwin(v14);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *a1;
  v19 = a1[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2 || *(v18 + 16) == *(v18 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v20)
  {
    if (v18 == v18 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v30 = 2;
      swift_willThrow();

      return;
    }
  }

  else if ((v19 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v53 = v15;
  v54 = a4;
  v55 = a5;
  v21 = objc_autoreleasePoolPush();
  sub_1011224E4(a1);
  if (!v5)
  {
    v23 = v22;
    objc_autoreleasePoolPop(v21);
    v61 = v23;
    swift_beginAccess();
    v24 = v23;
    v25 = *(a2 + 24);

    v57 = v24;
    v26 = [v24 recordID];
    v27 = v26;
    v56 = a3;
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = v26;
      v29 = __CocoaDictionary.contains(_:)();

      if (v29)
      {
        goto LABEL_19;
      }
    }

    else if (*(v25 + 16))
    {
      sub_100771FF8(v26);
      v32 = v31;

      if (v32)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v33 = *(a2 + 16);

    v34 = [v57 recordID];
    v35 = v34;
    if (*(v33 + 16))
    {
      sub_100771FF8(v34);
      v37 = v36;

      if (v37)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v38 = 4;
        swift_willThrow();
LABEL_37:

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v59 = 0x7365547265646E75;
    v60 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v58 == 1)
    {
      v39 = v57;
      v40 = [v57 valueStore];
      [v40 resetChangedKeys];

      v41 = [v39 encryptedValueStore];
      [v41 resetChangedKeys];
    }

    v42 = [v57 recordID];
    v43 = *(a2 + 24);

    v44 = sub_1005CAAF8(v42, v43);

    if (v44)
    {
      sub_1003268EC(v44, v13);
      v45 = v55;
      v46 = v56;
      (*(v53 + 56))(v13, 0, 1, v14);
      sub_100EC505C(v13, v17, type metadata accessor for MemberSharingCircle);
    }

    else
    {
      v45 = v55;
      v46 = v56;
      sub_100EC4F94(a1, v17, type metadata accessor for MemberSharingCircle);
    }

    v45(v17, v46);
    sub_100EC12C4(&v61, v17);
    if (sub_1003287CC(a1, v17))
    {
LABEL_36:
      sub_100EC4FFC(v17, type metadata accessor for MemberSharingCircle);
      goto LABEL_37;
    }

    v21 = v57;
    v47 = [v21 recordID];
    swift_beginAccess();
    v48 = *(a2 + 24);
    if ((v48 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *(a2 + 24);
      sub_100FFB704(v21, v47, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v58;

      swift_endAccess();
      goto LABEL_36;
    }

    if (v48 < 0)
    {
      v49 = *(a2 + 24);
    }

    else
    {
      v49 = v48 & 0xFFFFFFFFFFFFFF8;
    }

    v50 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v50, 1))
    {
      *(a2 + 24) = sub_100D47C24(v49, v50 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v21);
  __break(1u);
}

void sub_100EC2984(uint64_t *a1, uint64_t a2, int a3)
{
  v7 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  __chkstk_darwin(v7 - 8);
  v9 = (&v47 - v8);
  v10 = type metadata accessor for MemberSharingCircle(0);
  __chkstk_darwin(v10);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = a1[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2 || *(v14 + 16) == *(v14 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v16)
  {
    if (v14 == v14 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v25 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v15 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v48 = v11;
  v49 = a3;
  v17 = objc_autoreleasePoolPush();
  sub_1011224E4(a1);
  if (!v3)
  {
    v19 = v18;
    objc_autoreleasePoolPop(v17);
    v54 = v19;
    swift_beginAccess();
    v20 = *(a2 + 24);

    v21 = [v19 recordID];
    v22 = v21;
    v50 = v19;
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = v21;
      v24 = __CocoaDictionary.contains(_:)();

      if (v24)
      {
        goto LABEL_19;
      }
    }

    else if (*(v20 + 16))
    {
      sub_100771FF8(v21);
      v27 = v26;

      if (v27)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v28 = *(a2 + 16);

    v29 = [v50 recordID];
    v30 = v29;
    if (*(v28 + 16))
    {
      sub_100771FF8(v29);
      v32 = v31;

      if (v32)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v33 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v52 = 0x7365547265646E75;
    v53 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v34 = v50;
    if (v51 == 1)
    {
      v35 = [v50 valueStore];
      [v35 resetChangedKeys];

      v36 = [v50 encryptedValueStore];
      v37 = v50;
      [v36 resetChangedKeys];

      v34 = v37;
    }

    v38 = [v34 recordID];
    v39 = *(a2 + 24);

    v40 = sub_1005CAAF8(v38, v39);

    if (v40)
    {
      sub_1003268EC(v40, v9);
      v41 = v50;
      (*(v48 + 56))(v9, 0, 1, v10);
      sub_100EC505C(v9, v13, type metadata accessor for MemberSharingCircle);
    }

    else
    {
      v41 = v50;
      sub_100EC4F94(a1, v13, type metadata accessor for MemberSharingCircle);
    }

    *(v13 + *(v10 + 40)) = v49;
    sub_100EC12C4(&v54, v13);
    if (sub_1003287CC(a1, v13))
    {
      goto LABEL_36;
    }

    v42 = v41;
    v17 = [v42 recordID];
    swift_beginAccess();
    v43 = *(a2 + 24);
    if ((v43 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(a2 + 24);
      sub_100FFB704(v42, v17, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v51;

      swift_endAccess();
LABEL_36:
      sub_100EC4FFC(v13, type metadata accessor for MemberSharingCircle);

      return;
    }

    if (v43 < 0)
    {
      v44 = *(a2 + 24);
    }

    else
    {
      v44 = v43 & 0xFFFFFFFFFFFFFF8;
    }

    v45 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v45, 1))
    {
      *(a2 + 24) = sub_100D47C24(v44, v45 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v17);
  __break(1u);
}

void sub_100EC2FA0(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v46 - v6);
  v8 = type metadata accessor for OwnerSharingCircle(0);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2 || *(v12 + 16) == *(v12 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v14)
  {
    if (v12 == v12 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v22 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v46 = v9;
  v15 = objc_autoreleasePoolPush();
  sub_101120F7C(a1);
  if (!v2)
  {
    v17 = v16;
    objc_autoreleasePoolPop(v15);
    v51 = v17;
    swift_beginAccess();
    v18 = *(a2 + 24);

    v19 = [v17 recordID];
    v47 = v17;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v20 = v19;
      v21 = __CocoaDictionary.contains(_:)();

      if (v21)
      {
        goto LABEL_19;
      }
    }

    else if (*(v18 + 16))
    {
      v23 = v19;
      sub_100771FF8(v19);
      v25 = v24;

      if (v25)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v26 = v19;
    }

    swift_beginAccess();
    v27 = *(a2 + 16);

    v28 = [v47 recordID];
    v29 = v28;
    if (*(v27 + 16))
    {
      sub_100771FF8(v28);
      v31 = v30;

      if (v31)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v32 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v49 = 0x7365547265646E75;
    v50 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v33 = v47;
    if (v48 == 1)
    {
      v34 = [v47 valueStore];
      [v34 resetChangedKeys];

      v35 = [v47 encryptedValueStore];
      v36 = v47;
      [v35 resetChangedKeys];

      v33 = v36;
    }

    v37 = [v33 recordID];
    v38 = *(a2 + 24);

    v15 = sub_1005CAAF8(v37, v38);

    if (v15)
    {
      sub_100E0F270(v15, v7);
      v39 = v47;
      (*(v46 + 56))(v7, 0, 1, v8);
      sub_100EC505C(v7, v11, type metadata accessor for OwnerSharingCircle);
    }

    else
    {
      v39 = v47;
      sub_100EC4F94(a1, v11, type metadata accessor for OwnerSharingCircle);
    }

    v11[*(v8 + 36)] = 4;
    sub_100D42FF4(&v51, v11);
    if (sub_100E11AF8(a1, v11))
    {
      goto LABEL_36;
    }

    v40 = v39;
    v41 = [v40 recordID];
    swift_beginAccess();
    v42 = *(a2 + 24);
    if ((v42 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(a2 + 24);
      sub_100FFB704(v40, v41, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v48;

      swift_endAccess();
LABEL_36:
      sub_100EC4FFC(v11, type metadata accessor for OwnerSharingCircle);

      return;
    }

    if (v42 < 0)
    {
      v43 = *(a2 + 24);
    }

    else
    {
      v43 = v42 & 0xFFFFFFFFFFFFFF8;
    }

    v44 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v44, 1))
    {
      *(a2 + 24) = sub_100D47C24(v43, v44 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v15);
  __break(1u);
}

void sub_100EC360C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  __chkstk_darwin(v9 - 8);
  v11 = (v53 - v10);
  v12 = type metadata accessor for OwnerSharingCircle(0);
  __chkstk_darwin(v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2 || *(v16 + 16) == *(v16 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v18)
  {
    if (v16 == v16 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v27 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v17 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v53[0] = v13;
  v53[1] = a4;
  v54 = a3;
  v19 = objc_autoreleasePoolPush();
  sub_101120F7C(a1);
  if (!v4)
  {
    v21 = v20;
    objc_autoreleasePoolPop(v19);
    v59 = v21;
    swift_beginAccess();
    v22 = *(a2 + 24);

    v23 = [v21 recordID];
    v24 = v23;
    v55 = v21;
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = v23;
      v26 = __CocoaDictionary.contains(_:)();

      if (v26)
      {
        goto LABEL_19;
      }
    }

    else if (*(v22 + 16))
    {
      sub_100771FF8(v23);
      v29 = v28;

      if (v29)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v30 = *(a2 + 16);

    v31 = [v55 recordID];
    v32 = v31;
    if (*(v30 + 16))
    {
      sub_100771FF8(v31);
      v34 = v33;

      if (v34)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v35 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v57 = 0x7365547265646E75;
    v58 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v36 = v55;
    if (v56 == 1)
    {
      v37 = [v55 valueStore];
      [v37 resetChangedKeys];

      v38 = [v55 encryptedValueStore];
      v39 = v55;
      [v38 resetChangedKeys];

      v36 = v39;
    }

    v40 = [v36 recordID];
    v41 = *(a2 + 24);

    v42 = sub_1005CAAF8(v40, v41);

    if (v42)
    {
      sub_100E0F270(v42, v11);
      v43 = v54;
      (*(v53[0] + 56))(v11, 0, 1, v12);
      sub_100EC505C(v11, v15, type metadata accessor for OwnerSharingCircle);
    }

    else
    {
      v43 = v54;
      sub_100EC4F94(a1, v15, type metadata accessor for OwnerSharingCircle);
    }

    v44 = *v43;
    v45 = *(v12 + 32);

    *&v15[v45] = v44;
    sub_100D42FF4(&v59, v15);
    v46 = sub_100E11AF8(a1, v15);
    v47 = v55;
    if (v46)
    {
      goto LABEL_36;
    }

    v48 = v55;
    v19 = [v48 recordID];
    swift_beginAccess();
    v49 = *(a2 + 24);
    if ((v49 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = *(a2 + 24);
      sub_100FFB704(v48, v19, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v56;

      swift_endAccess();
LABEL_36:
      sub_100EC4FFC(v15, type metadata accessor for OwnerSharingCircle);

      return;
    }

    if (v49 < 0)
    {
      v50 = *(a2 + 24);
    }

    else
    {
      v50 = v49 & 0xFFFFFFFFFFFFFF8;
    }

    v51 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v51, 1))
    {
      *(a2 + 24) = sub_100D47C24(v50, v51 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v19);
  __break(1u);
}

void sub_100EC3C34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v50 - v10);
  v12 = type metadata accessor for MemberPeerTrust(0);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2 || *(v16 + 16) == *(v16 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v18)
  {
    if (v16 == v16 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v28 = 2;
      swift_willThrow();

      return;
    }
  }

  else if ((v17 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v50 = v13;
  v51 = a3;
  v19 = objc_autoreleasePoolPush();
  sub_101121880(a1);
  if (!v4)
  {
    v21 = v20;
    objc_autoreleasePoolPop(v19);
    v57 = v21;
    swift_beginAccess();
    v22 = v21;
    v23 = *(a2 + 24);

    v53 = v22;
    v24 = [v22 recordID];
    v25 = v24;
    v52 = a4;
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = v24;
      v27 = __CocoaDictionary.contains(_:)();

      if (v27)
      {
        goto LABEL_19;
      }
    }

    else if (*(v23 + 16))
    {
      sub_100771FF8(v24);
      v30 = v29;

      if (v30)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v31 = *(a2 + 16);

    v32 = [v53 recordID];
    v33 = v32;
    if (*(v31 + 16))
    {
      sub_100771FF8(v32);
      v35 = v34;

      if (v35)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v36 = 4;
        swift_willThrow();
LABEL_37:

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v55 = 0x7365547265646E75;
    v56 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v54 == 1)
    {
      v37 = v53;
      v38 = [v53 valueStore];
      [v38 resetChangedKeys];

      v39 = [v37 encryptedValueStore];
      [v39 resetChangedKeys];
    }

    v40 = [v53 recordID];
    v41 = *(a2 + 24);

    v42 = sub_1005CAAF8(v40, v41);

    if (v42)
    {
      sub_100E939A4(v42, v11);
      v43 = v52;
      (*(v50 + 56))(v11, 0, 1, v12);
      sub_100EC505C(v11, v15, type metadata accessor for MemberPeerTrust);
    }

    else
    {
      v43 = v52;
      sub_100EC4F94(a1, v15, type metadata accessor for MemberPeerTrust);
    }

    v44 = &v15[*(v12 + 32)];

    *v44 = v51;
    v44[1] = v43;
    sub_100EC1938(&v57, v15);
    if (sub_100E95758(a1, v15))
    {
LABEL_36:
      sub_100EC4FFC(v15, type metadata accessor for MemberPeerTrust);
      goto LABEL_37;
    }

    v45 = v53;
    v46 = [v45 recordID];
    swift_beginAccess();
    v47 = *(a2 + 24);
    if ((v47 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *(a2 + 24);
      sub_100FFB704(v45, v46, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v54;

      swift_endAccess();
      goto LABEL_36;
    }

    if (v47 < 0)
    {
      v19 = *(a2 + 24);
    }

    else
    {
      v19 = (v47 & 0xFFFFFFFFFFFFFF8);
    }

    v48 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v48, 1))
    {
      *(a2 + 24) = sub_100D47C24(v19, v48 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v19);
  __break(1u);
}

void sub_100EC4284(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v46 - v6);
  v8 = type metadata accessor for OwnerPeerTrust(0);
  __chkstk_darwin(v8);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = a1[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2 || *(v12 + 16) == *(v12 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v14)
  {
    if (v12 == v12 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v22 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v46 = v9;
  v15 = objc_autoreleasePoolPush();
  sub_101121820(a1);
  if (!v2)
  {
    v17 = v16;
    objc_autoreleasePoolPop(v15);
    v51 = v17;
    swift_beginAccess();
    v18 = *(a2 + 24);

    v19 = [v17 recordID];
    v47 = v17;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v20 = v19;
      v21 = __CocoaDictionary.contains(_:)();

      if (v21)
      {
        goto LABEL_19;
      }
    }

    else if (*(v18 + 16))
    {
      v23 = v19;
      sub_100771FF8(v19);
      v25 = v24;

      if (v25)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v26 = v19;
    }

    swift_beginAccess();
    v27 = *(a2 + 16);

    v28 = [v47 recordID];
    v29 = v28;
    if (*(v27 + 16))
    {
      sub_100771FF8(v28);
      v31 = v30;

      if (v31)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v32 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v49 = 0x7365547265646E75;
    v50 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v33 = v47;
    if (v48 == 1)
    {
      v34 = [v47 valueStore];
      [v34 resetChangedKeys];

      v35 = [v47 encryptedValueStore];
      v36 = v47;
      [v35 resetChangedKeys];

      v33 = v36;
    }

    v37 = [v33 recordID];
    v38 = *(a2 + 24);

    v15 = sub_1005CAAF8(v37, v38);

    if (v15)
    {
      sub_100310ECC(v15, v7);
      v39 = v47;
      (*(v46 + 56))(v7, 0, 1, v8);
      sub_100EC505C(v7, v11, type metadata accessor for OwnerPeerTrust);
    }

    else
    {
      v39 = v47;
      sub_100EC4F94(a1, v11, type metadata accessor for OwnerPeerTrust);
    }

    *(v11 + *(v8 + 40)) = 1;
    sub_100EC0EE8(&v51, v11);
    if (sub_1003132D8(a1, v11))
    {
      goto LABEL_36;
    }

    v40 = v39;
    v41 = [v40 recordID];
    swift_beginAccess();
    v42 = *(a2 + 24);
    if ((v42 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(a2 + 24);
      sub_100FFB704(v40, v41, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v48;

      swift_endAccess();
LABEL_36:
      sub_100EC4FFC(v11, type metadata accessor for OwnerPeerTrust);

      return;
    }

    if (v42 < 0)
    {
      v43 = *(a2 + 24);
    }

    else
    {
      v43 = v42 & 0xFFFFFFFFFFFFFF8;
    }

    v44 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v44, 1))
    {
      *(a2 + 24) = sub_100D47C24(v43, v44 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v15);
  __break(1u);
}

void sub_100EC4898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  __chkstk_darwin(v8 - 8);
  v10 = (&v34 - v9);
  v11 = (*(a3 + 24))(a2, a3);
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      sub_100016590(v11, v12);
      if (v16 == v15)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    sub_100016590(v11, v12);
LABEL_13:
    sub_100D48968();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
    return;
  }

  if (v13)
  {
    v17 = v11;
    sub_100016590(v11, v12);
    if (v17 != v17 >> 32)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v14 = v12;
  sub_100016590(v11, v12);
  if ((v14 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v36 = v4;
  v37 = (*(a3 + 40))(a2, a3);
  v18 = [v37 recordID];
  swift_beginAccess();
  v19 = *(v5 + 24);
  if ((v19 & 0xC000000000000001) != 0)
  {

    v20 = v5;
    v21 = v18;
    v22 = v18;
    v23 = __CocoaDictionary.contains(_:)();

    v18 = v21;
    v5 = v20;
    if (v23)
    {
LABEL_18:
      sub_100D48968();
      swift_allocError();
      *v29 = 4;
      swift_willThrow();

      return;
    }
  }

  else if (*(v19 + 16))
  {

    sub_100771FF8(v18);
    v26 = v25;

    if (v26)
    {
      goto LABEL_18;
    }
  }

  swift_beginAccess();
  if (*(*(v5 + 16) + 16))
  {

    sub_100771FF8(v18);
    v28 = v27;

    if (v28)
    {
      goto LABEL_18;
    }
  }

  v30 = *(a3 + 8);
  v34 = *(v30 + 32);
  v31 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v35 = v18;
  v32 = v31;
  v33 = v37;
  v34(a2, v30);
  (*(v30 + 40))(a2, v30);
  *v10 = v33;
  (*(*(v32 - 8) + 56))(v10, 0, 1, v32);
  swift_beginAccess();
  sub_1001DDF1C(v10, v35);
  swift_endAccess();
}

void sub_100EC4C94(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100EC4D30(319);
    if (v2 <= 0x3F)
    {
      sub_100EC4D98(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100EC4D30(uint64_t a1)
{
  if (!qword_1016BE850)
  {
    sub_100008BB8(255, &qword_101698150, CKRecord_ptr);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1016BE850);
    }
  }
}

void sub_100EC4D98(uint64_t a1)
{
  if (!qword_1016BE858)
  {
    sub_100008BB8(255, &qword_1016A9110, CKRecordID_ptr);
    type metadata accessor for CloudKitChangeSet.TombstoneInfo(255);
    sub_100009D18(&unk_1016BE860, &qword_1016A9110, CKRecordID_ptr, &protocol conformance descriptor for NSObject);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1016BE858);
    }
  }
}

uint64_t sub_100EC4EA0(uint64_t a1)
{
  result = sub_100008BB8(319, &qword_101698150, CKRecord_ptr);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for URL();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100EC4F4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100EC4F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EC4FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100EC505C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100EC50D8()
{
  result = qword_1016BE930;
  if (!qword_1016BE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE930);
  }

  return result;
}

uint64_t sub_100EC5148()
{
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000101373270;
  *(inited + 48) = 1;
  *(inited + 88) = 0;
  v2 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_101696CA0, &qword_10138B5D8);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100EC5230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[65] = a3;
  v3[63] = a1;
  v3[64] = a2;
  v4 = type metadata accessor for UUID();
  v3[66] = v4;
  v5 = *(v4 - 8);
  v3[67] = v5;
  v3[68] = *(v5 + 64);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();

  return _swift_task_switch(sub_100EC5308, 0, 0);
}

uint64_t sub_100EC5308()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v0[71] = v4;
  v5 = *(v2 + *(v4 + 32));
  v0[72] = v5;
  v0[73] = *(v5 + 16);
  v0[74] = *(sub_100EC71B4(v5) + 2);

  v0[62] = v5;
  v6 = swift_task_alloc();
  v0[75] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;

  v7 = swift_task_alloc();
  v0[76] = v7;
  v8 = sub_1000BC4D4(&qword_1016BC2D0, &unk_1013E4B00);
  v9 = sub_1000041A4(&qword_1016BE940, &qword_1016BC2D0, &unk_1013E4B00, &protocol conformance descriptor for [A : B]);
  *v7 = v0;
  v7[1] = sub_100EC547C;

  return Sequence.asyncFilter(_:)(&unk_1013EEC78, v6, v8, v9);
}

uint64_t sub_100EC547C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 616) = a1;

    return _swift_task_switch(sub_100EC55CC, 0, 0);
  }
}

uint64_t sub_100EC55CC()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 512);
  *(v0 + 624) = *(*(v0 + 616) + 16);

  *(v0 + 648) = *(v1 + 24);

  return _swift_task_switch(sub_100EC564C, v2, 0);
}

uint64_t sub_100EC564C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 512);
  (*(v2 + 16))(v1, *(v0 + 504) + *(v0 + 648), v3);
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v0 + 632) = v6;
  *(v6 + 16) = v4;
  (*(v2 + 32))(v6 + v5, v1, v3);

  v7 = swift_task_alloc();
  *(v0 + 640) = v7;
  *v7 = v0;
  v7[1] = sub_100EC57BC;
  v8 = *(v0 + 560);
  v9 = *(v0 + 528);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100ECD398, v6, v9);
}

uint64_t sub_100EC57BC()
{

  return _swift_task_switch(sub_100EC58D4, 0, 0);
}

uint64_t sub_100EC58D4(uint64_t a1)
{
  v2 = v1[74];
  v3 = v1[73];
  v4 = v1[70];
  v15 = v1[78];
  v5 = v1[67];
  v6 = v1[66];
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v5 + 8))(v4, v6);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_10138B420;
  *(inited + 40) = 0x8000000101373270;
  *(inited + 48) = 0;
  *(inited + 88) = 0;
  strcpy((inited + 96), "isFromRequest");
  *(inited + 110) = -4864;
  *(inited + 112) = 0;
  *(inited + 152) = 0;
  *(inited + 160) = 0x6563637553736177;
  *(inited + 168) = 0xEA00000000007373;
  *(inited + 176) = 1;
  *(inited + 216) = 0;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000101373290;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = sub_1000DF96C();
  *(inited + 240) = v7;
  *(inited + 248) = v9;
  *(inited + 280) = 1;
  *(inited + 288) = 0xD000000000000013;
  *(inited + 296) = 0x80000001013732B0;
  *(inited + 328) = &type metadata for Int;
  v11 = sub_1000DFAD8();
  *(inited + 336) = v11;
  *(inited + 304) = v2;
  *(inited + 344) = 2;
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x80000001013732D0;
  *(inited + 392) = &type metadata for Int;
  *(inited + 400) = v11;
  *(inited + 368) = v3;
  *(inited + 408) = 2;
  *(inited + 416) = 0xD000000000000011;
  *(inited + 424) = 0x80000001013732F0;
  *(inited + 456) = &type metadata for Int;
  *(inited + 464) = v11;
  *(inited + 432) = v15;
  *(inited + 472) = 2;
  v12 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();

  v13 = v1[1];

  return v13(v12);
}

uint64_t sub_100EC5B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for PeerCommunicationIdentifier(0);
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v3[9] = *(v6 + 64);
  v3[10] = swift_task_alloc();
  v3[11] = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for OwnerPeerTrust(0);
  v3[13] = v7;
  v3[14] = *(v7 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100EC5CD0, a2, 0);
}

uint64_t sub_100EC5CD0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  (*(v3 + 16))(v1, v0[2], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_100EC5E2C;
  v9 = v0[11];
  v8 = v0[12];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100ECD3B0, v6, v9);
}

uint64_t sub_100EC5E2C()
{

  return _swift_task_switch(sub_100EC5F44, 0, 0);
}

uint64_t sub_100EC5F44()
{
  v1 = v0[13];
  v2 = v0[12];
  if ((*(v0[14] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_101697798, &unk_10138C4F0);
LABEL_11:

    v13 = v0[1];

    return v13(0);
  }

  v3 = v0[15];
  v4 = v0[6];
  sub_10002ADE4(v2, v3, type metadata accessor for OwnerPeerTrust);
  sub_100ECD450(v3 + *(v1 + 28), v4, type metadata accessor for PeerCommunicationIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v8 = v0[15];
      v7 = type metadata accessor for OwnerPeerTrust;
      goto LABEL_10;
    }

    v9 = v0[6];
    if (EnumCaseMultiPayload == 4)
    {
      v10 = *v9;
      v12 = *(v9 + 8);
      v11 = *(v9 + 16);
    }

    else
    {
      v10 = *(v9 + 16);
      v12 = *(v9 + 24);
      v11 = *(v9 + 32);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 2)
    {
      v6 = v0[6];
      sub_1000327C4(v0[15], type metadata accessor for OwnerPeerTrust);
      v7 = type metadata accessor for PeerCommunicationIdentifier;
      v8 = v6;
LABEL_10:
      sub_1000327C4(v8, v7);
      goto LABEL_11;
    }

    v15 = v0[6];
    v10 = *v15;
    v12 = *(v15 + 8);
    v11 = *(v15 + 16);
  }

  v0[18] = v11;
  if (!v0[4])
  {
    sub_1000327C4(v0[15], type metadata accessor for OwnerPeerTrust);

    goto LABEL_11;
  }

  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_100EC6208;

  return sub_100D4E560(v10, v12, v11);
}

uint64_t sub_100EC6208(uint64_t a1, uint64_t a2)
{
  v5 = *v3;

  if (v2)
  {

    v6 = sub_100EC648C;
    v7 = 0;
  }

  else
  {

    *(v5 + 160) = a2;
    v7 = *(v5 + 32);
    v6 = sub_100EC6368;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100EC6368()
{

  return _swift_task_switch(sub_100EC63D0, 0, 0);
}

uint64_t sub_100EC63D0()
{
  sub_1000327C4(v0[15], type metadata accessor for OwnerPeerTrust);
  v1 = v0[20] != 0;

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100EC648C()
{
  sub_1000327C4(*(v0 + 120), type metadata accessor for OwnerPeerTrust);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100EC655C()
{
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0x646F43726F727265;
  *(inited + 40) = 0xE900000000000065;
  swift_getErrorValue();
  *(v0 + 296) = Error.code.getter();
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  *(inited + 72) = &type metadata for String;
  v5 = sub_1000DF96C();
  *(inited + 80) = v5;
  *(inited + 48) = v2;
  *(inited + 56) = v4;
  *(inited + 88) = 1;
  *(inited + 96) = 0x6D6F44726F727265;
  *(inited + 104) = 0xEB000000006E6961;
  swift_getErrorValue();
  v6 = Error.domain.getter();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v5;
  *(inited + 112) = v6;
  *(inited + 120) = v7;
  *(inited + 152) = 1;
  *(inited + 160) = 0x6563637553736177;
  *(inited + 168) = 0xEA00000000007373;
  *(inited + 176) = 0;
  *(inited + 216) = 0;
  v8 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_100EC672C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  v5 = type metadata accessor for UUID();
  *(v3 + 40) = v5;
  v6 = *(v5 - 8);
  *(v3 + 48) = v6;
  *(v3 + 56) = *(v6 + 64);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 104) = *(type metadata accessor for MemberSharingCircle(0) + 32);

  return _swift_task_switch(sub_100EC6848, a3, 0);
}

uint64_t sub_100EC6848()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  (*(v3 + 16))(v1, *(v0 + 24) + *(v0 + 104), v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_100EC69AC;
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100ECD230, v6, v9);
}

uint64_t sub_100EC69AC()
{

  return _swift_task_switch(sub_100EC6AC4, 0, 0);
}

uint64_t sub_100EC6AC4()
{
  v1 = v0[10];
  v2 = type metadata accessor for MemberPeerTrust(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v5 = (v1 + *(v2 + 32));
    v3 = *v5;
    v4 = v5[1];

    sub_1000327C4(v1, type metadata accessor for MemberPeerTrust);
  }

  v6 = v0[2];
  *v6 = v3;
  v6[1] = v4;

  v7 = v0[1];

  return v7();
}

uint64_t sub_100EC6BE4(char a1, char a2)
{
  *(v2 + 177) = a2;
  *(v2 + 176) = a1;
  return _swift_task_switch(sub_100EC6C08, 0, 0);
}

uint64_t sub_100EC6C08()
{
  v1 = *(v0 + 177);
  v2 = *(v0 + 176);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0x4165726168537369;
  *(inited + 40) = 0xEF64657470656363;
  *(inited + 48) = v2;
  *(inited + 88) = 0;
  strcpy((inited + 96), "isUTFSResponse");
  *(inited + 111) = -18;
  *(inited + 112) = v1;
  *(inited + 152) = 0;
  v4 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100EC6D34(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return _swift_task_switch(sub_100EC6D54, 0, 0);
}

uint64_t sub_100EC6D54()
{
  v2 = v0[22];
  v1 = v0[23];
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x80000001013731B0;
  *(inited + 72) = &type metadata for Int;
  v4 = sub_1000DFAD8();
  *(inited + 80) = v4;
  *(inited + 48) = v2;
  *(inited + 88) = 2;
  *(inited + 96) = 0xD00000000000001ALL;
  *(inited + 104) = 0x80000001013731D0;
  *(inited + 136) = &type metadata for Int;
  *(inited + 144) = v4;
  *(inited + 112) = v1;
  *(inited + 152) = 2;
  v5 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_100EC6E90(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return _swift_task_switch(sub_100EC6EB0, 0, 0);
}

uint64_t sub_100EC6EB0()
{
  v2 = v0[22];
  v1 = v0[23];
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000101373420;
  *(inited + 72) = &type metadata for Int;
  v4 = sub_1000DFAD8();
  *(inited + 80) = v4;
  *(inited + 48) = v2;
  *(inited + 88) = 2;
  *(inited + 96) = 0xD000000000000011;
  *(inited + 104) = 0x8000000101373440;
  *(inited + 136) = &type metadata for Int;
  *(inited + 144) = v4;
  *(inited + 112) = v1;
  *(inited + 152) = 2;
  v5 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_100EC700C()
{
  v1 = *(v0 + 112);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0x746164705579656BLL;
  *(inited + 40) = 0xEF73757461745365;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = sub_1000DFAD8();
  *(inited + 48) = v1 - 1;
  *(inited + 88) = 2;
  v3 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_101696CA0, &qword_10138B5D8);
  v4 = *(v0 + 8);

  return v4(v3);
}

void *sub_100EC713C(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100EC7314(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_100EC71B4(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100EC7314(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_100EC713C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100EC7314(unint64_t *a1, uint64_t a2, void *a3)
{
  v34 = a2;
  v35 = a1;
  v46 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
  v4 = __chkstk_darwin(v46);
  v45 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v33 - v6;
  v42 = type metadata accessor for UUID();
  result = __chkstk_darwin(v42);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v47 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v36 = 0;
  v37 = (v14 + 63) >> 6;
  v40 = v8 + 16;
  v43 = v8;
  v38 = v12;
  v39 = v8 + 8;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v48 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v10 << 6);
    v21 = v47;
    v22 = v42;
    v23 = v43;
    v24 = *(v43 + 16);
    v25 = v41;
    v24(v41, v47[6] + *(v43 + 72) * v20, v42);
    v26 = v20;
    LOBYTE(v21) = *(v21[7] + v20);
    v27 = v44;
    v24(v44, v25, v22);
    v28 = v46;
    v27[*(v46 + 48)] = v21;
    v29 = v27;
    v30 = v45;
    sub_100ECD4B8(v29, v45);
    LODWORD(v28) = *(v30 + *(v28 + 48));
    v31 = *(v23 + 8);
    v31(v30, v22);
    result = (v31)(v25, v22);
    v16 = v48;
    if (v28 == 1)
    {
      *(v35 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_10061C234(v35, v34, v36, v47);
      }
    }
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v37)
    {
      return sub_10061C234(v35, v34, v36, v47);
    }

    v19 = v38[v10];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v48 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100EC7608(char a1)
{
  *(v1 + 112) = a1;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  *(v1 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100EC76A4, 0, 0);
}

uint64_t sub_100EC76A4()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  v0[6] = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v0[7] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[8] = v5;
  v0[9] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(&v1[v2], 1, 1, v3);
  v5(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000036;
  *(v1 + 16) = 0x8000000101373310;

  return _swift_task_switch(sub_100EC77FC, v1, 0);
}

uint64_t sub_100EC77FC(uint64_t a1)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = *(v1 + 40);
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = sub_100EC7914;
  v8 = *(v1 + 48);
  v9 = *(v1 + 112);

  return sub_10115D880(v8, v9);
}

uint64_t sub_100EC7914()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100EC7BBC, 0, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v2[12] = swift_allocObject();
    swift_defaultActor_initialize();
    v3 = swift_task_alloc();
    v2[13] = v3;
    *v3 = v2;
    v3[1] = sub_100EC7AA4;
    v4 = v2[6];

    return sub_101163F78(v4);
  }
}

uint64_t sub_100EC7AA4()
{

  return _swift_task_switch(sub_100ECD528, 0, 0);
}

uint64_t sub_100EC7BBC()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not prepare analytics event for Keys Download.", v4, 2u);
  }

  type metadata accessor for AnalyticsPublisher();
  v0[12] = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_100EC7AA4;
  v6 = v0[6];

  return sub_101163F78(v6);
}

uint64_t sub_100EC7D34(char a1, char a2)
{
  *(v2 + 113) = a2;
  *(v2 + 112) = a1;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100EC7DD4, 0, 0);
}

uint64_t sub_100EC7DD4()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  v0[6] = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v0[7] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[8] = v5;
  v0[9] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(&v1[v2], 1, 1, v3);
  v5(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD00000000000003CLL;
  *(v1 + 16) = 0x8000000101373390;

  return _swift_task_switch(sub_100EC7F2C, v1, 0);
}

uint64_t sub_100EC7F2C(uint64_t a1)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = *(v1 + 40);
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = sub_100EC8048;
  v8 = *(v1 + 48);
  v9 = *(v1 + 113);
  v10 = *(v1 + 112);

  return sub_10115DC0C(v8, v10, v9);
}

uint64_t sub_100EC8048()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100EC81D8, 0, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v2[12] = swift_allocObject();
    swift_defaultActor_initialize();
    v3 = swift_task_alloc();
    v2[13] = v3;
    *v3 = v2;
    v3[1] = sub_100EC7AA4;
    v4 = v2[6];

    return sub_101163F78(v4);
  }
}

uint64_t sub_100EC81D8()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not prepare analytics event for share response.", v4, 2u);
  }

  type metadata accessor for AnalyticsPublisher();
  v0[12] = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_100EC7AA4;
  v6 = v0[6];

  return sub_101163F78(v6);
}

uint64_t sub_100EC8350(uint64_t a1)
{
  v1[5] = a1;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for OwnerSharingCircle(0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[11] = v3;
  *v3 = v1;
  v3[1] = sub_100EC8484;

  return daemon.getter();
}

uint64_t sub_100EC8484(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[12] = a1;

  v3 = swift_task_alloc();
  v2[13] = v3;
  v4 = type metadata accessor for Daemon();
  v2[14] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019738(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[15] = v6;
  v7 = sub_100019738(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100EC8664;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100EC8664(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 128) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_100EC933C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 136) = v5;
    *v5 = v4;
    v5[1] = sub_100EC8810;

    return daemon.getter();
  }
}

uint64_t sub_100EC8810(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 144) = a1;

  v5 = swift_task_alloc();
  *(v3 + 152) = v5;
  v6 = type metadata accessor for FamilyCircleService();
  v7 = sub_100019738(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v5 = v4;
  v5[1] = sub_100EC89C4;
  v8 = *(v2 + 120);
  v9 = *(v2 + 112);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100EC89C4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100EC9480;
  }

  else
  {

    *(v4 + 160) = a1;
    v5 = sub_100EC8B18;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100EC8B18()
{
  *(v0 + 168) = *(v0 + 160);
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  *(v0 + 176) = v2;
  if (v2)
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v3 + 80);
    *(v0 + 264) = v5;
    v6 = *(v3 + 72);
    *(v0 + 200) = 0;
    *(v0 + 184) = v6;
    *(v0 + 192) = _swiftEmptyDictionarySingleton;
    v7 = *(v0 + 80);
    for (i = v1 + ((v5 + 32) & ~v5); ; i = v14 + ((v13 + 32) & ~v13) + v12 * v11)
    {
      sub_100ECD450(i, v7, type metadata accessor for OwnerSharingCircle);
      if (*(v7 + *(v4 + 28)) == 2)
      {
        break;
      }

      v9 = *(v0 + 176);
      v10 = *(v0 + 200) + 1;
      sub_1000327C4(*(v0 + 80), type metadata accessor for OwnerSharingCircle);
      if (v10 == v9)
      {
        goto LABEL_9;
      }

      v11 = *(v0 + 200) + 1;
      v12 = *(v0 + 184);
      v13 = *(v0 + 264);
      v14 = *(v0 + 40);
      *(v0 + 192) = _swiftEmptyDictionarySingleton;
      *(v0 + 200) = v11;
      v7 = *(v0 + 80);
      v4 = *(v0 + 56);
    }

    type metadata accessor for AnalyticsEvent(0);
    v15 = swift_allocObject();
    *(v0 + 208) = v15;
    swift_defaultActor_initialize();
    *(v15 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v16 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v17 = type metadata accessor for DispatchTime();
    *(v0 + 216) = v17;
    v18 = *(v17 - 8);
    v19 = *(v18 + 56);
    *(v0 + 224) = v19;
    *(v0 + 232) = (v18 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v19(&v15[v16], 1, 1, v17);
    v19(&v15[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v17);
    *(v15 + 15) = 0xD000000000000037;
    *(v15 + 16) = 0x8000000101373230;

    return _swift_task_switch(sub_100EC8DD8, v15, 0);
  }

  else
  {
LABEL_9:

    v20 = *(v0 + 8);

    return v20(_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_100EC8DD8(uint64_t a1)
{
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  v5 = v1[6];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();

  return _swift_task_switch(sub_100EC8EA4, 0, 0);
}

uint64_t sub_100EC8EA4()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[10];
  v4 = swift_task_alloc();
  v0[30] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_100EC8F78;

  return sub_101162604(&unk_1013EEC68, v4);
}

uint64_t sub_100EC8F78()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100EC973C;
  }

  else
  {
    v2 = sub_100EC90A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EC90A8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 80);
  v4 = *(*(v0 + 56) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFB6F0(v1, v3 + v4, isUniquelyReferenced_nonNull_native);
  while (1)
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 200) + 1;
    sub_1000327C4(*(v0 + 80), type metadata accessor for OwnerSharingCircle);
    if (v7 == v6)
    {
      break;
    }

    v8 = *(v0 + 200) + 1;
    *(v0 + 192) = v2;
    *(v0 + 200) = v8;
    v9 = *(v0 + 80);
    v10 = *(v0 + 56);
    sub_100ECD450(*(v0 + 40) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 184) * v8, v9, type metadata accessor for OwnerSharingCircle);
    if (*(v9 + *(v10 + 28)) == 2)
    {
      type metadata accessor for AnalyticsEvent(0);
      v11 = swift_allocObject();
      *(v0 + 208) = v11;
      swift_defaultActor_initialize();
      *(v11 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
      UUID.init()();
      v12 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
      v13 = type metadata accessor for DispatchTime();
      *(v0 + 216) = v13;
      v14 = *(v13 - 8);
      v15 = *(v14 + 56);
      *(v0 + 224) = v15;
      *(v0 + 232) = (v14 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v15(&v11[v12], 1, 1, v13);
      v15(&v11[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v13);
      *(v11 + 15) = 0xD000000000000037;
      *(v11 + 16) = 0x8000000101373230;

      return _swift_task_switch(sub_100EC8DD8, v11, 0);
    }
  }

  v16 = *(v0 + 8);

  return v16(v2);
}

uint64_t sub_100EC933C()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get BeaconStoreActor!", v4, 2u);
  }

  v5 = sub_10090836C(_swiftEmptyArrayStorage);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_100EC9480()
{
  *(v0 + 168) = 0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  *(v0 + 176) = v2;
  if (v2)
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v3 + 80);
    *(v0 + 264) = v5;
    v6 = *(v3 + 72);
    *(v0 + 200) = 0;
    *(v0 + 184) = v6;
    *(v0 + 192) = _swiftEmptyDictionarySingleton;
    v7 = *(v0 + 80);
    for (i = v1 + ((v5 + 32) & ~v5); ; i = v14 + ((v13 + 32) & ~v13) + v12 * v11)
    {
      sub_100ECD450(i, v7, type metadata accessor for OwnerSharingCircle);
      if (*(v7 + *(v4 + 28)) == 2)
      {
        break;
      }

      v9 = *(v0 + 176);
      v10 = *(v0 + 200) + 1;
      sub_1000327C4(*(v0 + 80), type metadata accessor for OwnerSharingCircle);
      if (v10 == v9)
      {

        goto LABEL_11;
      }

      v11 = *(v0 + 200) + 1;
      v12 = *(v0 + 184);
      v13 = *(v0 + 264);
      v14 = *(v0 + 40);
      *(v0 + 192) = _swiftEmptyDictionarySingleton;
      *(v0 + 200) = v11;
      v7 = *(v0 + 80);
      v4 = *(v0 + 56);
    }

    type metadata accessor for AnalyticsEvent(0);
    v15 = swift_allocObject();
    *(v0 + 208) = v15;
    swift_defaultActor_initialize();
    *(v15 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v16 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v17 = type metadata accessor for DispatchTime();
    *(v0 + 216) = v17;
    v18 = *(v17 - 8);
    v19 = *(v18 + 56);
    *(v0 + 224) = v19;
    *(v0 + 232) = (v18 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v19(&v15[v16], 1, 1, v17);
    v19(&v15[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v17);
    *(v15 + 15) = 0xD000000000000037;
    *(v15 + 16) = 0x8000000101373230;

    return _swift_task_switch(sub_100EC8DD8, v15, 0);
  }

  else
  {
LABEL_11:

    v20 = *(v0 + 8);

    return v20(_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_100EC973C()
{
  v35 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_100ECD450(v2, v1, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100019738(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1000327C4(v7, type metadata accessor for OwnerSharingCircle);
    v14 = sub_1000136BC(v11, v13, &v34);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not prepare analytics event for offer share for beacon %{private,mask.hash}s.\n%{public}@.", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {

    sub_1000327C4(v7, type metadata accessor for OwnerSharingCircle);
  }

  v16 = *(v0 + 208);
  v17 = *(v0 + 192);
  v18 = *(v0 + 80);
  v19 = *(*(v0 + 56) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v17;
  sub_100FFB6F0(v16, v18 + v19, isUniquelyReferenced_nonNull_native);
  v21 = v34;
  while (1)
  {
    v22 = *(v0 + 176);
    v23 = *(v0 + 200) + 1;
    sub_1000327C4(*(v0 + 80), type metadata accessor for OwnerSharingCircle);
    if (v23 == v22)
    {
      break;
    }

    v24 = *(v0 + 200) + 1;
    *(v0 + 192) = v21;
    *(v0 + 200) = v24;
    v25 = *(v0 + 80);
    v26 = *(v0 + 56);
    sub_100ECD450(*(v0 + 40) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 184) * v24, v25, type metadata accessor for OwnerSharingCircle);
    if (*(v25 + *(v26 + 28)) == 2)
    {
      type metadata accessor for AnalyticsEvent(0);
      v27 = swift_allocObject();
      *(v0 + 208) = v27;
      swift_defaultActor_initialize();
      *(v27 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
      UUID.init()();
      v28 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
      v29 = type metadata accessor for DispatchTime();
      *(v0 + 216) = v29;
      v30 = *(v29 - 8);
      v31 = *(v30 + 56);
      *(v0 + 224) = v31;
      *(v0 + 232) = (v30 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v31(&v27[v28], 1, 1, v29);
      v31(&v27[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v29);
      *(v27 + 15) = 0xD000000000000037;
      *(v27 + 16) = 0x8000000101373230;

      return _swift_task_switch(sub_100EC8DD8, v27, 0);
    }
  }

  v32 = *(v0 + 8);

  return v32(v21);
}

uint64_t sub_100EC9C64()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v0[3] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[2];
        v0[4] = 0;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v0[5] = v4;
        v5 = swift_task_alloc();
        v0[6] = v5;
        *v5 = v0;
        v5[1] = sub_100EC9DA8;

        return sub_10115DE88(v4);
      }

      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[3] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100EC9DA8()
{

  if (v0)
  {

    v1 = sub_100ECD530;
  }

  else
  {
    v1 = sub_100EC9EC0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100EC9EC0()
{
  v1 = v0[4];
  v2 = v0[3];

  if (v1 + 1 == v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[4] + 1;
    v0[4] = v5;
    v6 = v0[2];
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    v0[5] = v7;
    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_100EC9DA8;

    return sub_10115DE88(v7);
  }
}

uint64_t sub_100EC9FEC(char a1)
{
  *(v1 + 112) = a1;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  *(v1 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100ECA088, 0, 0);
}

uint64_t sub_100ECA088()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  v0[6] = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v0[7] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[8] = v5;
  v0[9] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(&v1[v2], 1, 1, v3);
  v5(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000034;
  *(v1 + 16) = 0x8000000101373350;

  return _swift_task_switch(sub_100ECA1E0, v1, 0);
}

uint64_t sub_100ECA1E0(uint64_t a1)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = *(v1 + 40);
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = sub_100ECA2F8;
  v8 = *(v1 + 48);
  v9 = *(v1 + 112);

  return sub_10115EEE0(v8, v9);
}

uint64_t sub_100ECA2F8()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100ECA5A0, 0, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v2[12] = swift_allocObject();
    swift_defaultActor_initialize();
    v3 = swift_task_alloc();
    v2[13] = v3;
    *v3 = v2;
    v3[1] = sub_100ECA488;
    v4 = v2[6];

    return sub_101163F78(v4);
  }
}

uint64_t sub_100ECA488()
{

  return _swift_task_switch(sub_10086D3EC, 0, 0);
}

uint64_t sub_100ECA5A0()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not prepare analytics event for Keys  Upload.", v4, 2u);
  }

  type metadata accessor for AnalyticsPublisher();
  v0[12] = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_100ECA488;
  v6 = v0[6];

  return sub_101163F78(v6);
}

uint64_t sub_100ECA718(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100ECA7B4, 0, 0);
}

uint64_t sub_100ECA7B4()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  v0[8] = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v0[9] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[10] = v5;
  v0[11] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(&v1[v2], 1, 1, v3);
  v5(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000040;
  *(v1 + 16) = 0x80000001013733D0;

  return _swift_task_switch(sub_100ECA90C, v1, 0);
}

uint64_t sub_100ECA90C(uint64_t a1)
{
  v2 = v1[10];
  v4 = v1[8];
  v3 = v1[9];
  v5 = v1[7];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  v7 = swift_task_alloc();
  v1[12] = v7;
  *v7 = v1;
  v7[1] = sub_100ECAA24;
  v8 = v1[8];
  v9 = v1[5];
  v10 = v1[6];

  return sub_10115F154(v8, v9, v10);
}

uint64_t sub_100ECAA24()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100ECAD34, 0, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v2[14] = swift_allocObject();
    swift_defaultActor_initialize();
    v3 = swift_task_alloc();
    v2[15] = v3;
    *v3 = v2;
    v3[1] = sub_100ECABB4;
    v4 = v2[8];

    return sub_101163F78(v4);
  }
}

uint64_t sub_100ECABB4()
{

  return _swift_task_switch(sub_100ECACCC, 0, 0);
}

uint64_t sub_100ECACCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100ECAD34()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not prepare analytics event for Owned Daily Shares Count.", v4, 2u);
  }

  type metadata accessor for AnalyticsPublisher();
  v0[14] = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_100ECABB4;
  v6 = v0[8];

  return sub_101163F78(v6);
}

uint64_t sub_100ECAEAC(char a1, char a2)
{
  *(v2 + 353) = a2;
  *(v2 + 352) = a1;
  v3 = type metadata accessor for MemberSharingCircle(0);
  *(v2 + 64) = v3;
  *(v2 + 72) = *(v3 - 8);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = type metadata accessor for StableIdentifier(0);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  *(v2 + 136) = v4;
  *(v2 + 144) = *(v4 - 8);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  *(v2 + 168) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v2 + 176) = v5;
  *v5 = v2;
  v5[1] = sub_100ECB0A0;

  return daemon.getter();
}

uint64_t sub_100ECB0A0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 184) = a1;

  v3 = swift_task_alloc();
  *(v2 + 192) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019738(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019738(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100ECB27C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100ECB27C(uint64_t a1)
{
  *(*v2 + 200) = a1;

  if (v1)
  {

    v3 = sub_100ECC764;
  }

  else
  {

    v3 = sub_100ECB3CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100ECB3CC()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  v0[26] = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v0[27] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[28] = v5;
  v0[29] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(&v1[v2], 1, 1, v3);
  v5(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000037;
  *(v1 + 16) = 0x80000001013731F0;

  return _swift_task_switch(sub_100ECB524, v1, 0);
}

uint64_t sub_100ECB524(uint64_t a1)
{
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  v5 = v1[25];
  v6 = v1[21];
  static DispatchTime.now()();
  v2(v6, 0, 1, v3);
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v6, v4 + v7);
  swift_endAccess();

  return _swift_task_switch(sub_100ECB5F4, v5, 0);
}

uint64_t sub_100ECB5F4()
{

  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_100ECB6E0;
  v3 = *(v0 + 200);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v3, v2);
}

uint64_t sub_100ECB6E0()
{
  v1 = *(*v0 + 200);

  return _swift_task_switch(sub_100ECB7F8, v1, 0);
}

uint64_t sub_100ECB81C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[31];
  v23 = *(v4 + 16);
  if (v23)
  {
    v5 = 0;
    v21 = v3[17];
    v22 = v3[18];
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
        return _swift_task_switch(a1, a2, a3);
      }

      v7 = v3[20];
      v8 = v3[16];
      v9 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v10 = *(v22 + 72);
      sub_100ECD450(v3[31] + v9 + v10 * v5, v7, type metadata accessor for OwnedBeaconRecord);
      v11 = *(v21 + 24);
      sub_100ECD450(v7 + v11, v8, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1000327C4(v8, type metadata accessor for StableIdentifier);
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_12;
      }

      sub_100ECD450(v7 + v11, v3[15], type metadata accessor for StableIdentifier);
      v13 = swift_getEnumCaseMultiPayload();
      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_11:
        v14 = v3[15];

        v15 = type metadata accessor for UUID();
        (*(*(v15 - 8) + 8))(v14, v15);
LABEL_12:
        sub_10002ADE4(v3[20], v3[19], type metadata accessor for OwnedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112434C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_10112434C((v16 > 1), v17 + 1, 1);
        }

        v18 = v3[19];
        _swiftEmptyArrayStorage[2] = v17 + 1;
        a1 = sub_10002ADE4(v18, _swiftEmptyArrayStorage + v9 + v17 * v10, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_4;
      }

      v6 = v3[20];
      sub_1000327C4(v3[15], type metadata accessor for StableIdentifier);
      a1 = sub_1000327C4(v6, type metadata accessor for OwnedBeaconRecord);
LABEL_4:
      if (v23 == ++v5)
      {
        goto LABEL_17;
      }
    }

    sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

    goto LABEL_11;
  }

LABEL_17:
  v19 = v3[25];

  v3[32] = _swiftEmptyArrayStorage[2];

  a1 = sub_100ECBBA4;
  a2 = v19;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100ECBBA4()
{

  v1 = swift_task_alloc();
  v0[33] = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  v0[34] = v2;
  *v1 = v0;
  v1[1] = sub_100ECBC94;
  v3 = v0[25];

  return unsafeBlocking<A>(context:_:)(v0 + 6, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v3, v2);
}

uint64_t sub_100ECBC94()
{
  v1 = *(*v0 + 200);

  return _swift_task_switch(sub_100ECBDAC, v1, 0);
}

uint64_t sub_100ECBDD0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5[35];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v5[9];
    v33 = v5[8];
    do
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v10 = v5[13];
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = *(v9 + 72);
      sub_100ECD450(v5[35] + v11 + v12 * v8, v10, type metadata accessor for MemberSharingCircle);
      v13 = *(v10 + *(v33 + 40));
      if (v13 == 4 || v13 == 1)
      {
        sub_10002ADE4(v5[13], v5[12], type metadata accessor for MemberSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FA0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_101123FA0((v15 > 1), v16 + 1, 1);
        }

        v17 = v5[12];
        _swiftEmptyArrayStorage[2] = v16 + 1;
        a1 = sub_10002ADE4(v17, _swiftEmptyArrayStorage + v11 + v16 * v12, type metadata accessor for MemberSharingCircle);
      }

      else
      {
        a1 = sub_1000327C4(v5[13], type metadata accessor for MemberSharingCircle);
      }

      ++v8;
    }

    while (v7 != v8);
    v19 = v5[8];
    v18 = v5[9];
    v32 = _swiftEmptyArrayStorage[2];

    v20 = 0;
    v34 = v19;
    while (v20 < *(v6 + 16))
    {
      v21 = v5[11];
      v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v23 = *(v18 + 72);
      sub_100ECD450(v5[35] + v22 + v23 * v20, v21, type metadata accessor for MemberSharingCircle);
      v24 = v5[11];
      if (*(v21 + *(v19 + 40)))
      {
        a1 = sub_1000327C4(v24, type metadata accessor for MemberSharingCircle);
      }

      else
      {
        sub_10002ADE4(v24, v5[10], type metadata accessor for MemberSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FA0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v26 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];
        if (v26 >= v25 >> 1)
        {
          sub_101123FA0((v25 > 1), v26 + 1, 1);
        }

        v27 = v5[10];
        _swiftEmptyArrayStorage[2] = v26 + 1;
        a1 = sub_10002ADE4(v27, _swiftEmptyArrayStorage + v22 + v26 * v23, type metadata accessor for MemberSharingCircle);
        v19 = v34;
      }

      if (v7 == ++v20)
      {
        v28 = v32;
        goto LABEL_27;
      }
    }

LABEL_31:
    __break(1u);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage[2];

LABEL_27:
    v5[36] = v28;
    v29 = v5[35];
    v5[37] = _swiftEmptyArrayStorage[2];

    v5[7] = v29;
    v30 = swift_task_alloc();
    v5[38] = v30;
    a5 = sub_1000041A4(&qword_1016BE938, &unk_101698C40, &qword_10138C1C0, &protocol conformance descriptor for [A]);
    *v30 = v5;
    v30[1] = sub_100ECC1BC;
    a3 = v5[34];
    a2 = v5[25];
    a4 = &type metadata for String;
    a1 = &unk_1013EEC48;
  }

  return Sequence.asyncCompactMap<A>(_:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100ECC1BC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 312) = a1;

    return _swift_task_switch(sub_100ECC300, 0, 0);
  }
}

uint64_t sub_100ECC300(__n128 a1)
{
  v2 = sub_101129930(*(v1 + 312));

  v3 = *(v2 + 16);

  v4 = swift_task_alloc();
  *(v1 + 320) = v4;
  *v4 = v1;
  v4[1] = sub_100ECC3E4;
  v5 = *(v1 + 288);
  v6 = *(v1 + 296);
  v7 = *(v1 + 256);
  v8 = *(v1 + 208);
  v9 = *(v1 + 353);
  v10 = *(v1 + 352);

  return sub_101160470(v8, v10, v7, v5, v6, v3, v9);
}

uint64_t sub_100ECC3E4()
{
  v2 = *v1;
  v2[41] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100ECC8E0, 0, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v2[42] = swift_allocObject();
    swift_defaultActor_initialize();
    v3 = swift_task_alloc();
    v2[43] = v3;
    *v3 = v2;
    v3[1] = sub_100ECC574;
    v4 = v2[26];

    return sub_101163F78(v4);
  }
}

uint64_t sub_100ECC574()
{

  return _swift_task_switch(sub_100ECC68C, 0, 0);
}

uint64_t sub_100ECC68C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100ECC764()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not get beaconStore reference for analytics.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100ECC8E0()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not prepare analytics event for incoming share.", v4, 2u);
  }

  type metadata accessor for AnalyticsPublisher();
  v0[42] = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_100ECC574;
  v6 = v0[26];

  return sub_101163F78(v6);
}

uint64_t sub_100ECCA58(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100ECCAF4, 0, 0);
}

uint64_t sub_100ECCAF4()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  v0[8] = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v0[9] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[10] = v5;
  v0[11] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(&v1[v2], 1, 1, v3);
  v5(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000044;
  *(v1 + 16) = 0x8000000101373160;

  return _swift_task_switch(sub_100ECCC4C, v1, 0);
}

uint64_t sub_100ECCC4C(uint64_t a1)
{
  v2 = v1[10];
  v4 = v1[8];
  v3 = v1[9];
  v5 = v1[7];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  v7 = swift_task_alloc();
  v1[12] = v7;
  *v7 = v1;
  v7[1] = sub_100ECCD64;
  v8 = v1[8];
  v9 = v1[5];
  v10 = v1[6];

  return sub_101161594(v8, v9, v10);
}

uint64_t sub_100ECCD64()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100ECD00C, 0, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v2[14] = swift_allocObject();
    swift_defaultActor_initialize();
    v3 = swift_task_alloc();
    v2[15] = v3;
    *v3 = v2;
    v3[1] = sub_100ECCEF4;
    v4 = v2[8];

    return sub_101163F78(v4);
  }
}

uint64_t sub_100ECCEF4()
{

  return _swift_task_switch(sub_100ECD52C, 0, 0);
}

uint64_t sub_100ECD00C()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not prepare analytics event for sytem error display id prefix.", v4, 2u);
  }

  type metadata accessor for AnalyticsPublisher();
  v0[14] = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_100ECCEF4;
  v6 = v0[8];

  return sub_101163F78(v6);
}

uint64_t sub_100ECD184(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_100EC672C(a1, a2, v2);
}

uint64_t sub_100ECD248()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001BBA4C;

  return sub_100EC5230(v2, v3, v4);
}

uint64_t sub_100ECD2F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001BA6C8;

  return sub_100EC5B38(a1, v5, v4);
}

uint64_t sub_100ECD3C8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100ECD450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100ECD4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100ECD538(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for XPCActivity.Criteria.Options();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for XPCActivity.Priority();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100ECD654, 0, 0);
}

uint64_t sub_100ECD654()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 88) = qword_10177B348;

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_100ECD754;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_100ECD754()
{

  return _swift_task_switch(sub_100ECD86C, 0, 0);
}

unint64_t sub_100ECD86C()
{
  v1 = v0[2];
  (*(v0[9] + 104))(v0[10], enum case for XPCActivity.Priority.utility(_:), v0[8]);
  result = sub_101074BA8(v1);
  if (!is_mul_ok(result, 0x3CuLL))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((60 * result) & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = sub_101074B8C(v1);

  if (!is_mul_ok(v3, 0x3CuLL))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (((60 * v3) & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1013B62D0;
  static XPCActivity.Criteria.Options.wakeDevice.getter();
  static XPCActivity.Criteria.Options.powerNap.getter();
  static XPCActivity.Criteria.Options.allowBattery.getter();
  static XPCActivity.Criteria.Options.requiresNetwork.getter();
  static XPCActivity.Criteria.Options.diskIntensive.getter();
  static XPCActivity.Criteria.Options.cpuIntensive.getter();
  static XPCActivity.Criteria.Options.requiresClassC.getter();
  static XPCActivity.Criteria.Options.preventDeviceSleep.getter();
  v0[3] = v4;
  sub_100019780(&qword_101696CE0, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
  sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
  sub_100359D10();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100ECDAC8(uint64_t a1)
{
  v1[2] = a1;
  v3 = type metadata accessor for XPCActivity.State();
  v1[3] = v3;
  v1[4] = *(v3 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100ECDB8C, a1, 0);
}

uint64_t sub_100ECDB8C()
{
  *(v0 + 128) = *(*(v0 + 16) + 128);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100ECDC28;

  return sub_100ED0388();
}

uint64_t sub_100ECDC28(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 129) = a1;

  return _swift_task_switch(sub_100ECDD40, v2, 0);
}

uint64_t sub_100ECDD40()
{
  v2 = *(v0 + 129);
  v3 = *(v0 + 16);
  v4 = *(v3 + 129);
  *(v0 + 130) = v4;
  if (v2 != v4)
  {
    *(v3 + 129) = v2;
    v3 = *(v0 + 16);
  }

  *(v0 + 56) = *(v3 + 120);

  return _swift_task_switch(sub_100ECDDD0, 0, 0);
}

uint64_t sub_100ECDDD0()
{
  if (*(v0 + 128))
  {
    if (*(v0 + 130) == *(v0 + 129))
    {
    }

    else if (*(v0 + 56))
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      sub_1000076D4(v1, qword_10177A560);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "BeaconSharing beacons shared state changed.", v4, 2u);
      }

      v10 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
      v5 = swift_task_alloc();
      *(v0 + 120) = v5;
      *v5 = v0;
      v5[1] = sub_100ECE890;
      v6 = *(v0 + 40);

      return v10(v6);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = sub_100ECE014;

    return daemon.getter();
  }
}

uint64_t sub_100ECE014(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 72) = a1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019780(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019780(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100ECE1F0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100ECE1F0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100ECE350;
    v6 = 0;
  }

  else
  {

    *(v4 + 88) = a1;
    v5 = sub_100ECE48C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100ECE350()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor!", v4, 2u);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100ECE4B4()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_100ECE590;
  v2 = *(v0 + 96);

  return withCheckedContinuation<A>(isolation:function:_:)(v1, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v2, &type metadata for () + 1);
}

uint64_t sub_100ECE590()
{

  return _swift_task_switch(sub_100ECE68C, 0, 0);
}

uint64_t sub_100ECE68C()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100ECE71C;

  return sub_100ECEA54();
}

uint64_t sub_100ECE71C()
{

  return _swift_task_switch(sub_100ECE818, 0, 0);
}

uint64_t sub_100ECE818()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100ECE890()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100ECE9E8, 0, 0);
}

uint64_t sub_100ECE9E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100ECEA54()
{
  v1[2] = v0;
  v1[3] = *v0;
  type metadata accessor for DispatchQoS();
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100ECEB0C, v0, 0);
}

uint64_t sub_100ECEB0C()
{
  v1 = v0[2];
  if (*(v1 + 129) == 1)
  {
    v2 = v0[3];
    type metadata accessor for XPCActivity();
    static DispatchQoS.default.getter();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    swift_retain_n();
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_100ECED40;
    v5 = v0[4];
    v6 = v0[2];

    return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000024, 0x80000001013734C0, v5, &unk_1013EEDB8, v3, &unk_1013EEDC8, v6);
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177A560);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No shared beacons, no activity required.", v10, 2u);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100ECED40(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100ECEE58, v2, 0);
}

uint64_t sub_100ECEE58()
{
  v1 = v0[2];
  *(v1 + 120) = v0[6];

  *(v1 + 128) = 1;

  v2 = v0[1];

  return v2();
}

uint64_t sub_100ECEED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for XPCActivity.Criteria();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[11] = v6;
  *v6 = v4;
  v6[1] = sub_100ECF00C;

  return sub_100ED0388();
}

uint64_t sub_100ECF00C(char a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100ECF124, v2, 0);
}

uint64_t sub_100ECF124()
{
  v32 = v0;
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    v3 = *(v0 + 48);
    sub_100748620(*(v0 + 24), v3);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      sub_10000B3A8(*(v0 + 48), &qword_10169E370, &qword_1013BA3F0);
      v4 = swift_task_alloc();
      *(v0 + 96) = v4;
      *v4 = v0;
      v4[1] = sub_100ECF570;
      v5 = *(v0 + 16);

      return sub_100ECD538(v5);
    }

    v12 = *(*(v0 + 64) + 32);
    v12(*(v0 + 80), *(v0 + 48), *(v0 + 56));
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 72);
    v14 = *(v0 + 80);
    v15 = *(v0 + 56);
    v16 = *(v0 + 64);
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177A560);
    (*(v16 + 16))(v13, v14, v15);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    v23 = *(v0 + 56);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v24 = 136446210;
      sub_100019780(&qword_1016BEAC8, &type metadata accessor for XPCActivity.Criteria, &protocol conformance descriptor for XPCActivity.Criteria);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v22 + 8))(v21, v23);
      v28 = sub_1000136BC(v25, v27, &v31);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "BeaconSharing activity keeping criteria %{public}s.", v24, 0xCu);
      sub_100007BAC(v30);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }

    v12(*(v0 + 16), *(v0 + 80), *(v0 + 56));
    v11 = 0;
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177A560);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "BeaconSharing removing activity.", v10, 2u);
    }

    v11 = 1;
  }

  (*(*(v0 + 64) + 56))(*(v0 + 16), v11, 1, *(v0 + 56));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100ECF570()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100ECF680, v1, 0);
}

uint64_t sub_100ECF680()
{
  (*(v0[8] + 56))(v0[2], 0, 1, v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100ECF720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for XPCActivity.State();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100ECF82C, a3, 0);
}

uint64_t sub_100ECF82C()
{
  v42 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v12 = v0[6];
  v11 = v0[7];
  if (v9)
  {
    buf = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *buf = 136315138;
    sub_100019780(&qword_101696CD0, &type metadata accessor for XPCActivity.State, &protocol conformance descriptor for XPCActivity.State);
    v37 = v8;
    v13 = v6;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_1000136BC(v18, v16, &v41);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v37, "BeaconSharing activity state %s.", buf, 0xCu);
    sub_100007BAC(v39);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v21 = v0[7];
  v20 = v0[8];
  v22 = v0[6];
  v6(v20, v0[3], v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 != enum case for XPCActivity.State.checkIn(_:) && v23 != enum case for XPCActivity.State.wait(_:))
  {
    if (v23 == enum case for XPCActivity.State.run(_:))
    {
      v27 = v0[4];
      type metadata accessor for Transaction();
      static Transaction.named<A>(_:with:)();
      v28 = *(v27 + 120);
      v0[10] = v28;
      if (v28)
      {
        v40 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

        v29 = swift_task_alloc();
        v0[11] = v29;
        *v29 = v0;
        v29[1] = sub_100ECFEE0;
        v30 = v0[5];

        return v40(v30);
      }

      v35 = v0[5];
      (*(v0[7] + 56))(v35, 1, 1, v0[6]);
      sub_10000B3A8(v35, &unk_10169BA88, &qword_101395670);
      type metadata accessor for XPCActivity();
      sub_100019780(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
      v31 = dispatch thunk of Actor.unownedExecutor.getter();
      v33 = v36;
      v34 = sub_100ED0100;
      goto LABEL_26;
    }

    if (v23 == enum case for XPCActivity.State.defer(_:))
    {
      type metadata accessor for XPCActivity();
      sub_100019780(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
      v31 = dispatch thunk of Actor.unownedExecutor.getter();
      v33 = v32;
      v34 = sub_100ECFE00;
LABEL_26:

      return _swift_task_switch(v34, v31, v33);
    }

    if (v23 != enum case for XPCActivity.State.continue(_:) && v23 != enum case for XPCActivity.State.done(_:))
    {
      if (v23 == enum case for XPCActivity.State.invalidated(_:))
      {
        *(v0[4] + 128) = 0;

        dispatch thunk of WorkItemQueue.enqueue(_:)();
      }

      else
      {
        v17(v0[8], v0[6]);
      }
    }
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_100ECFE00()
{
  v1 = *(v0 + 32);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_100ECFE6C, v1, 0);
}

uint64_t sub_100ECFE6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100ECFEE0()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100ED000C, v1, 0);
}

uint64_t sub_100ED000C()
{
  v1 = v0[5];
  (*(v0[7] + 56))(v1, 0, 1, v0[6]);
  sub_10000B3A8(v1, &unk_10169BA88, &qword_101395670);
  type metadata accessor for XPCActivity();
  sub_100019780(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100ED0100, v3, v2);
}

uint64_t sub_100ED0100()
{
  v1 = *(v0 + 32);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100ED208C, v1, 0);
}

uint64_t sub_100ED016C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016BEAC0, &unk_1013EEDD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - v7;
  v9 = sub_1000BC4D4(&qword_1016B3B78, &qword_1013D4918);
  __chkstk_darwin(v9);
  v12 = v22 - v11;
  result = *(a2 + 112);
  v14 = *(result + 16);
  if (v14)
  {
    v16 = *(v10 + 16);
    v15 = v10 + 16;
    v24 = v5;
    v25 = v16;
    v17 = v6;
    v18 = result + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    v22[2] = v2;
    v23 = v19;
    v20 = (v17 + 8);
    v21 = (v15 - 8);
    v22[1] = result;

    do
    {
      v25(v12, v18, v9);
      v26 = a1;

      AsyncStream.Continuation.yield(_:)();
      (*v20)(v8, v24);
      (*v21)(v12, v9);
      v18 += v23;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_100ED0388()
{
  v1[6] = v0;
  v2 = type metadata accessor for UUID();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v1[9] = *(v3 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[12] = v4;
  *v4 = v1;
  v4[1] = sub_100ED048C;

  return daemon.getter();
}

uint64_t sub_100ED048C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019780(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019780(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100ED0668;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100ED0668(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {
    v3 = *(v4 + 48);

    v5 = sub_100ED1830;
  }

  else
  {

    v5 = sub_100ED07C0;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_100ED07C0()
{

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  v2 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v1 = v0;
  v1[1] = sub_100ED08AC;
  v3 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v3, v2);
}

uint64_t sub_100ED08AC()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100ED09C4, v1, 0);
}

uint64_t sub_100ED09C4()
{
  v1 = v0[6];
  v0[17] = v0[2];
  return _swift_task_switch(sub_100ED09E8, v1, 0);
}

uint64_t sub_100ED09E8()
{
  v1 = *(v0[17] + 16);

  if (v1)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177A560);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "BeaconSharing beacons shared: true.", v5, 2u);
    }

    v6 = v0[1];

    return v6(1);
  }

  else
  {
    v8 = v0[15];

    return _swift_task_switch(sub_100ED0B68, v8, 0);
  }
}

uint64_t sub_100ED0B68()
{

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_100ED0C54;
  v3 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v3, v2);
}

uint64_t sub_100ED0C54()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100ED0D6C, v1, 0);
}

uint64_t sub_100ED0D6C()
{
  v1 = v0[6];
  v0[19] = v0[3];
  return _swift_task_switch(sub_100ED0D90, v1, 0);
}

uint64_t sub_100ED0D90(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[19];
  v5 = v3[8];
  v6 = *(v4 + 16);
  v3[20] = v6;
  v3[21] = 0;
  if (v6)
  {
    if (!*(v4 + 16))
    {
      __break(1u);
      return _swift_task_switch(a1, a2, a3);
    }

    v7 = v3[15];
    v8 = v3[11];
    v9 = v3[7];
    v10 = type metadata accessor for OwnedBeaconRecord(0);
    v11 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
    v12 = v4 + *(v10 + 20);
    v13 = *(v5 + 16);
    v3[22] = v13;
    v3[23] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v8, v12 + v11, v9);
    v14 = sub_100ED0EB0;
  }

  else
  {
    v7 = v3[15];

    v14 = sub_100ED1430;
  }

  a1 = v14;
  a2 = v7;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100ED0EB0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 56);
  (*(v0 + 176))(v2, *(v0 + 88), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 192) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 200) = v7;
  v8 = sub_1000BC4D4(&qword_1016BEAB8, &unk_1013EEDA0);
  *v7 = v0;
  v7[1] = sub_100ED1014;

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_100ED1EA0, v6, v8);
}

uint64_t sub_100ED1014()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100ED1140, v1, 0);
}

uint64_t sub_100ED1140()
{
  v1 = v0[6];
  (*(v0[8] + 8))(v0[11], v0[7]);
  v0[26] = v0[4];

  return _swift_task_switch(sub_100ED11C4, v1, 0);
}

uint64_t sub_100ED11C4()
{
  v1 = *(v0[26] + 16);

  if (!v1)
  {
    v11 = v0[20];
    v12 = v0[21] + 1;
    v0[21] = v12;
    v13 = v0[19];
    if (v12 == v11)
    {
      v14 = v0[15];

      v15 = sub_100ED1430;
    }

    else
    {
      if (v12 >= *(v13 + 16))
      {
        __break(1u);
        return _swift_task_switch(v2, v3, v4);
      }

      v14 = v0[15];
      v16 = v0[11];
      v17 = v0[7];
      v18 = v0[8];
      v19 = type metadata accessor for OwnedBeaconRecord(0);
      v20 = v13 + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)) + *(*(v19 - 8) + 72) * v12;
      v21 = *(v19 + 20);
      v22 = *(v18 + 16);
      v0[22] = v22;
      v0[23] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v22(v16, v20 + v21, v17);
      v15 = sub_100ED0EB0;
    }

    v2 = v15;
    v3 = v14;
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "BeaconSharing beacons shared: true.", v8, 2u);
  }

  v9 = v0[1];

  return v9(1);
}

uint64_t sub_100ED1430()
{

  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_100ED151C;
  v3 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v3, v2);
}

uint64_t sub_100ED151C()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100ED1634, v1, 0);
}

uint64_t sub_100ED1634()
{
  v1 = v0[6];
  v0[28] = v0[5];
  return _swift_task_switch(sub_100ED1654, v1, 0);
}

uint64_t sub_100ED1654()
{
  v1 = *(*(v0 + 224) + 16);

  if (v1)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177A560);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "BeaconSharing beacons shared: true.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);
    }
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177A560);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "BeaconSharing beacons shared: false.";
      goto LABEL_10;
    }
  }

  v8 = *(v0 + 8);

  return v8(v1 != 0);
}

uint64_t sub_100ED1830()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_100ED1958(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B3B78, &qword_1013D4918);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a1, v4);
  v8 = *(a2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 112) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100A5ED68(0, v8[2] + 1, 1, v8);
    *(a2 + 112) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_100A5ED68((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 112) = v8;
  return result;
}

uint64_t sub_100ED1AD8()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100ED1B44()
{
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  swift_defaultActor_initialize();
  *(v0 + 112) = _swiftEmptyArrayStorage;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  type metadata accessor for WorkItemQueue();
  v5 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  UUID.init()();
  *(v0 + 136) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  return v0;
}

uint64_t sub_100ED1CA4(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_1000BC4D4(&qword_101698DE0, &unk_1013EED90);
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[6] = v4;
  v2[7] = v5;

  return _swift_task_switch(sub_100ED1D7C, v5, 0);
}

uint64_t sub_100ED1D7C()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  type metadata accessor for Transaction();
  (*(v3 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  (*(v3 + 16))(v2, v1, v4);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v3 + 8))(v1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100ED1EA0@<X0>(void *a1@<X8>)
{
  type metadata accessor for UUID();
  v3 = *(v1 + 16);

  return sub_100E714C8(v3, a1);
}

uint64_t sub_100ED1F14(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014650;

  return sub_100ECEED4(a1, a2, v7, v6);
}

uint64_t sub_100ED1FC8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100ECF720(a1, a2, v2);
}

uint64_t sub_100ED2090(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v4 + 369) = a3;
  *(v4 + 368) = a2;
  *(v4 + 184) = a1;
  *(v4 + 192) = a4;
  v5 = type metadata accessor for HashAlgorithm();
  *(v4 + 200) = v5;
  *(v4 + 208) = *(v5 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = *(type metadata accessor for AccessoryMetadata(0) - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  *(v4 + 248) = v6;
  *(v4 + 256) = *(v6 - 8);
  *(v4 + 264) = swift_task_alloc();
  v7 = type metadata accessor for Date();
  *(v4 + 272) = v7;
  *(v4 + 280) = *(v7 - 8);
  *(v4 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_100ED2274, 0, 0);
}

void sub_100ED2274()
{
  v85 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = _swiftEmptyDictionarySingleton;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v2 = [objc_opt_self() currentDevice];
  if (!v2)
  {
    __break(1u);
    goto LABEL_25;
  }

  v3 = v2;
  v4 = [v2 serverFriendlyDescription];

  if (!v4)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  v81 = *(v0 + 256);
  v82 = *(v0 + 248);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v84 = _swiftEmptyDictionarySingleton;
  sub_100FFACA0(v9, v11, 0xD000000000000011, 0x800000010134EA40, v12);
  Date.init()();
  v13 = Date.epoch.getter();
  (*(v5 + 8))(v6, v8);
  *(v0 + 144) = v13;
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v14, v16, 0xD000000000000015, 0x800000010134EA60, v17);
  *(v0 + 152) = 1;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = v19;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v18, v20, 0xD000000000000013, 0x800000010134EA80, v21);
  v22 = sub_100EB2DF0();
  v24 = v23;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v84 = _swiftEmptyDictionarySingleton;
  sub_100FFACA0(v22, v24, 0x6567412D72657355, 0xEA0000000000746ELL, v25);
  static Locale.current.getter();
  v26 = Locale.acceptLanguageCode.getter();
  v28 = v27;
  (*(v81 + 8))(v7, v82);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0x4C2D747065636341, 0xEF65676175676E61, v29);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v30 = qword_10177C218;
  v31 = objc_opt_self();
  v32 = [v31 sharedInstance];
  v33 = [v32 isInternalBuild];

  v83 = v31;
  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
    v35 = [v30 BOOLForKey:v34];

    if (v35)
    {
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v84 = _swiftEmptyDictionarySingleton;
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v36);
    }
  }

  *(v0 + 296) = _swiftEmptyDictionarySingleton;
  v37 = *(v0 + 184);
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = *(v0 + 224);
    v84 = _swiftEmptyArrayStorage;
    sub_101123C98(0, v38, 0);
    v40 = _swiftEmptyArrayStorage;
    v41 = v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v42 = *(v39 + 72);
    do
    {
      v44 = *(v0 + 232);
      v43 = *(v0 + 240);
      v45 = *(v0 + 368);
      v46 = *(v0 + 369);
      sub_1008AFCDC(v41, v43);
      sub_1008AFCDC(v43, v44);
      sub_100F0C160(v44, v45, v46, v0 + 16);
      sub_1008AFD40(v43);
      v84 = v40;
      v48 = v40[2];
      v47 = v40[3];
      if (v48 >= v47 >> 1)
      {
        sub_101123C98((v47 > 1), v48 + 1, 1);
        v40 = v84;
      }

      v40[2] = v48 + 1;
      v49 = &v40[16 * v48];
      v50 = *(v0 + 16);
      v51 = *(v0 + 32);
      v52 = *(v0 + 64);
      v49[4] = *(v0 + 48);
      v49[5] = v52;
      v49[2] = v50;
      v49[3] = v51;
      v53 = *(v0 + 80);
      v54 = *(v0 + 96);
      v55 = *(v0 + 128);
      v49[8] = *(v0 + 112);
      v49[9] = v55;
      v49[6] = v53;
      v49[7] = v54;
      v41 += v42;
      --v38;
    }

    while (v38);
  }

  else
  {

    v40 = _swiftEmptyArrayStorage;
  }

  v56 = static os_log_type_t.debug.getter();
  sub_10039722C();
  v57 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v57, v56))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v84 = v59;
    *v58 = 136315138;
    *(v0 + 176) = v40;

    v60 = String.init<A>(describing:)();
    v62 = sub_1000136BC(v60, v61, &v84);

    *(v58 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v57, v56, "AccessoryInfoRequestContent %s", v58, 0xCu);
    sub_100007BAC(v59);
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 304) = JSONEncoder.init()();
  *(v0 + 160) = v40;
  sub_100ED30C8();
  v63 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 312) = v63;
  *(v0 + 320) = v64;
  v65 = v64;

  sub_100017D5C(v63, v65);
  v66 = [v83 sharedInstance];
  v67 = [v66 isInternalBuild];

  if (v67)
  {
    v69 = *(v0 + 208);
    v68 = *(v0 + 216);
    v70 = *(v0 + 200);
    (*(v69 + 104))(v68, enum case for HashAlgorithm.sha256(_:), v70);
    v71 = Data.hash(algorithm:)();
    v73 = v72;
    *(v0 + 328) = v71;
    *(v0 + 336) = v72;
    sub_100016590(v63, v65);
    (*(v69 + 8))(v68, v70);
    v74 = swift_task_alloc();
    *(v0 + 344) = v74;
    *v74 = v0;
    v74[1] = sub_100ED2BAC;
    v75 = *(v0 + 192);

    sub_100EA87F4(v71, v73, v75);
  }

  else
  {
    sub_100016590(v63, v65);
    v77 = *(v0 + 312);
    v76 = *(v0 + 320);

    sub_100017D5C(v77, v76);

    sub_100016590(v77, v76);
    v79 = *(v0 + 312);
    v78 = *(v0 + 320);

    v80 = *(v0 + 8);

    v80(_swiftEmptyDictionarySingleton, v79, v78);
  }
}

uint64_t sub_100ED2BAC(uint64_t a1)
{
  v4 = *v2;
  v4[44] = v1;

  v5 = v4[42];
  v6 = v4[41];
  if (v1)
  {

    sub_100016590(v6, v5);
    v7 = sub_100ED2F1C;
  }

  else
  {
    v4[45] = a1;
    sub_100016590(v6, v5);
    v7 = sub_100ED2D20;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100ED2D20()
{
  v16 = v0;
  v1 = v0[45];
  v2 = v0[37];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v2;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v15);
  swift_bridgeObjectRelease_n();
  v4 = v15;
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AC90);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Adding BAA Attestation headers for internal build", v8, 2u);
  }

  v10 = v0[39];
  v9 = v0[40];

  sub_100017D5C(v10, v9);

  sub_100016590(v10, v9);
  v12 = v0[39];
  v11 = v0[40];

  v13 = v0[1];

  return v13(v4, v12, v11);
}

uint64_t sub_100ED2F1C()
{
  v1 = v0[37];
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AC90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Adding BAA Attestation headers for internal build", v5, 2u);
  }

  v7 = v0[39];
  v6 = v0[40];

  sub_100017D5C(v7, v6);

  sub_100016590(v7, v6);
  v9 = v0[39];
  v8 = v0[40];

  v10 = v0[1];

  return v10(v1, v9, v8);
}

unint64_t sub_100ED30C8()
{
  result = qword_1016BEAD0;
  if (!qword_1016BEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEAD0);
  }

  return result;
}

uint64_t sub_100ED312C(uint64_t a1, unsigned int a2)
{
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1013917A0;
  *(v3 + 56) = &type metadata for Bool;
  *(v3 + 64) = &protocol witness table for Bool;
  *(v3 + 32) = a2 & 1;
  v4 = sub_1004F21B4();
  *(v3 + 96) = &type metadata for Bool;
  *(v3 + 104) = &protocol witness table for Bool;
  *(v3 + 72) = v4 & 1;
  *(v3 + 136) = &type metadata for Bool;
  *(v3 + 144) = &protocol witness table for Bool;
  *(v3 + 112) = BYTE1(a2) & 1;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v17 = qword_1016BFE70;
  v5 = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v19)
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v6 = [objc_opt_self() locationServicesEnabled];
    objc_autoreleasePoolPop(v7);
  }

  *(v3 + 176) = &type metadata for Bool;
  *(v3 + 184) = &protocol witness table for Bool;
  *(v3 + 152) = v6;
  v15 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue;
  __chkstk_darwin(v5);
  type metadata accessor for CLAuthorizationStatus(0);
  v16 = v8;
  OS_dispatch_queue.sync<A>(execute:)();
  *(v3 + 216) = &type metadata for Bool;
  *(v3 + 224) = &protocol witness table for Bool;
  *(v3 + 192) = 0;
  *(v3 + 256) = &type metadata for Bool;
  *(v3 + 264) = &protocol witness table for Bool;
  *(v3 + 232) = BYTE2(a2) & 1;
  sub_10039722C();
  v9 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Finder state info enablers: \n findingEnabled: %i \n fmipState: %i \n serviceEnabled: %i \n globalLocation: %i \n fmipLocationServicesEnabled: %i \n canPublishAnonymously: %i", v14, v15, v16, v17, v18, 1701080693);

  if ((a2 & 1) != 0 && (sub_1004F21B4() & 1) != 0 && (a2 & 0x100) != 0)
  {
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if ((v19 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [objc_opt_self() locationServicesEnabled];
      objc_autoreleasePoolPop(v10);
      if (v11)
      {
        __chkstk_darwin(v12);
        OS_dispatch_queue.sync<A>(execute:)();
      }
    }
  }

  return 0;
}

unint64_t sub_100ED34CC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100ED3F0C(*a1);
  *a2 = result;
  return result;
}

void sub_100ED34FC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v3 = 0xEF79746972756365;
    v4 = 0x53746E756F636361;
    if (v2 != 6)
    {
      v4 = 0xD000000000000015;
      v3 = 0x8000000101349D10;
    }

    v5 = 0xE900000000000065;
    v6 = 0x7461745370696D66;
    if (v2 != 4)
    {
      v6 = 0xD000000000000012;
      v5 = 0x8000000101349CE0;
    }

    v7 = *v1 <= 5u;
  }

  else
  {
    v3 = 0xEE0064656C62616ELL;
    v4 = 0x45676E69646E6966;
    if (v2 != 2)
    {
      v4 = 0x4565636976726573;
    }

    v5 = 0x8000000101349C70;
    v6 = 0xD000000000000017;
    if (*v1)
    {
      v6 = 0xD00000000000001BLL;
      v5 = 0x8000000101349C90;
    }

    v7 = *v1 <= 1u;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v7)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_100ED3628()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v2 = 0x53746E756F636361;
    if (v1 != 6)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0x7461745370696D66;
    if (v1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    v4 = *v0 <= 5u;
  }

  else
  {
    v2 = 0x45676E69646E6966;
    if (v1 != 2)
    {
      v2 = 0x4565636976726573;
    }

    v3 = 0xD000000000000017;
    if (*v0)
    {
      v3 = 0xD00000000000001BLL;
    }

    v4 = *v0 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100ED3750@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100ED3F0C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100ED3778(uint64_t a1)
{
  v2 = sub_100ED3DA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100ED37B4(uint64_t a1)
{
  v2 = sub_100ED3DA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100ED37F0(void *a1, uint64_t a2, unsigned int a3)
{
  v7 = sub_1000BC4D4(&qword_1016BEAD8, &qword_1013EEF80);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  sub_1000035D0(a1, a1[3]);
  sub_100ED3DA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v15[0] = 0x7365547265646E75;
  v15[1] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v16 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    [objc_opt_self() locationServicesEnabled];
    objc_autoreleasePoolPop(v11);
  }

  LOBYTE(v15[0]) = 0;
  v12 = KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    __chkstk_darwin(v12);
    v15[-2] = v13;
    type metadata accessor for CLAuthorizationStatus(0);
    OS_dispatch_queue.sync<A>(execute:)();
    LOBYTE(v15[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15[0]) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1004F21B4();
    LOBYTE(v15[0]) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100ED312C(a2, a3 & 0x10101);
    LOBYTE(v15[0]) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15[0]) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100ED3B74(void *a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 8);
  if (*(v1 + 10))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_100ED37F0(a1, *v1, v3 | v4);
}

uint64_t sub_100ED3BBC(uint64_t a1)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101073BA8(v3);

  OS_dispatch_queue.sync<A>(execute:)();
  sub_100A490E0();

  [objc_opt_self() canPublishAnonymously];
  return a1;
}

uint64_t sub_100ED3CF0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_100ED3D04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 11))
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

uint64_t sub_100ED3D4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100ED3DA0()
{
  result = qword_1016BEAE0;
  if (!qword_1016BEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEAE0);
  }

  return result;
}

unint64_t sub_100ED3E08()
{
  result = qword_1016BEAE8;
  if (!qword_1016BEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEAE8);
  }

  return result;
}

unint64_t sub_100ED3E60()
{
  result = qword_1016BEAF0;
  if (!qword_1016BEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEAF0);
  }

  return result;
}

unint64_t sub_100ED3EB8()
{
  result = qword_1016BEAF8;
  if (!qword_1016BEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEAF8);
  }

  return result;
}

unint64_t sub_100ED3F0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C268, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void *sub_100ED3F70(uint64_t a1)
{
  v44 = type metadata accessor for MACAddress();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v35 = v1;
  v49 = _swiftEmptyArrayStorage;
  sub_101123BB8(0, v5, 0);
  v6 = v49;
  v7 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v41 = v3 + 16;
  v42 = v3;
  v39 = a1;
  v40 = v3 + 8;
  v36 = a1 + 64;
  v37 = v5;
  v38 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v13 = *(a1 + 36);
    v45 = v10;
    v46 = v13;
    v14 = v42;
    v15 = v6;
    v16 = v43;
    v17 = v44;
    (*(v42 + 16))(v43, *(a1 + 48) + *(v42 + 72) * v9, v44);
    v18 = MACAddress.dataRepresentation.getter();
    v20 = v19;
    v21 = Data.hexString.getter();
    v47 = v22;
    v48 = v21;
    sub_100016590(v18, v20);
    v23 = v16;
    v6 = v15;
    result = (*(v14 + 8))(v23, v17);
    v49 = v15;
    v25 = v15[2];
    v24 = v15[3];
    if (v25 >= v24 >> 1)
    {
      result = sub_101123BB8((v24 > 1), v25 + 1, 1);
      v6 = v49;
    }

    v6[2] = v25 + 1;
    v26 = &v6[2 * v25];
    v27 = v47;
    v26[4] = v48;
    v26[5] = v27;
    a1 = v39;
    v11 = 1 << *(v39 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v38;
    v28 = *(v38 + 8 * v12);
    if ((v28 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v46 != *(v39 + 36))
    {
      goto LABEL_24;
    }

    v29 = v28 & (-2 << (v9 & 0x3F));
    if (v29)
    {
      v11 = __clz(__rbit64(v29)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v12 << 6;
      v31 = v12 + 1;
      v32 = (v36 + 8 * v12);
      while (v31 < (v11 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_10040BA00(v9, v46, 0);
          v11 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_10040BA00(v9, v46, 0);
    }

LABEL_4:
    v10 = v45 + 1;
    v9 = v11;
    if (v45 + 1 == v37)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_100ED428C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_10002F330(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_10002EA2C(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = Data._Representation.subscript.getter();
    v16 = v15;
    result = sub_100016590(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

uint64_t sub_100ED43DC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C220);
  sub_1000076D4(v0, qword_10177C220);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100ED445C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100EDE1D8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100ED4538()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6D6972507465672ELL;
    if (v1 != 1)
    {
      v5 = 0xD000000000000016;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6E776F6E6B6E752ELL;
    }
  }

  else
  {
    v2 = 0xD000000000000027;
    if (v1 != 5)
    {
      v2 = 0xD000000000000029;
    }

    v3 = 0xD000000000000018;
    if (v1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100ED4634()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100044B3C(v0, qword_1016BEB00);
  sub_1000076D4(v0, qword_1016BEB00);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t sub_100ED4684()
{
  v1 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = type metadata accessor for MACAddress();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 24);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v13 = [objc_opt_self() standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 objectForKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37[0] = v35;
  v37[1] = v36;
  if (!*(&v36 + 1))
  {
    sub_10000B3A8(v37, &unk_1016A0B10, &qword_10139BF40);
    return &_swiftEmptySetSingleton;
  }

  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return &_swiftEmptySetSingleton;
  }

  v16 = v34;
  v33 = *(v34 + 16);
  if (v33)
  {
    v17 = 0;
    v18 = (v30 + 56);
    v31 = (v30 + 32);
    v19 = (v34 + 40);
    v20 = _swiftEmptyArrayStorage;
    v29 = v4;
    while (v17 < *(v16 + 16))
    {
      v21 = *v19;
      *&v37[0] = *(v19 - 1);
      *(&v37[0] + 1) = v21;
      sub_1000DF96C();
      swift_bridgeObjectRetain_n();
      Data.init<A>(hexString:)();
      if (v22 >> 60 == 15)
      {

        (*v18)(v3, 1, 1, v4);
        result = sub_10000B3A8(v3, &qword_1016A40D0, &unk_10138BE70);
      }

      else
      {
        MACAddress.init(dataRepresentation:)();

        (*v18)(v3, 0, 1, v4);
        v23 = *v31;
        (*v31)(v32, v3, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100A5EBA8(0, v20[2] + 1, 1, v20);
        }

        v25 = v20[2];
        v24 = v20[3];
        if (v25 >= v24 >> 1)
        {
          v20 = sub_100A5EBA8((v24 > 1), v25 + 1, 1, v20);
        }

        v20[2] = v25 + 1;
        v26 = v20 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25;
        v4 = v29;
        result = (v23)(v26, v32, v29);
      }

      ++v17;
      v19 += 2;
      if (v33 == v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_21:

  v27 = sub_10112B8D8(v20);

  return v27;
}

void sub_100ED4B5C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 24);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = [objc_opt_self() standardUserDefaults];
    sub_100ED3F70(a1);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = String._bridgeToObjectiveC()();
    [v9 setObject:isa forKey:v11];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100ED4D08(uint64_t a1)
{
  v10 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_1000BC488();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_100EDEAA8(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 32) = &_swiftEmptySetSingleton;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = xmmword_10138BBF0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  sub_1000BC4D4(&qword_1016BEE10, &unk_1013EF390);
  swift_allocObject();
  *(v1 + 112) = PassthroughSubject.init()();
  *(v1 + 120) = 0;
  *(v1 + 16) = v10;
  return v1;
}

uint64_t sub_100ED4FE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v52 = a6;
  LODWORD(v47) = a5;
  v48 = a4;
  v49 = a3;
  v46 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_1000BC4D4(&qword_1016BEE10, &unk_1013EF390);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  *(a1 + 112) = v11;
  v50 = v11;

  v12 = *(a1 + 24);
  *v10 = v12;
  v13 = enum case for DispatchPredicate.onQueue(_:);
  v14 = *(v8 + 104);
  v14(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v45 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_4;
  }

  if (!*(a1 + 120))
  {
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177C220);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v52;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Handling Privacy Alert", v35, 2u);
    }

    v36 = v49;
    sub_100ED64D4(v46, v49, v48, v47 & 1);
    sub_100EDE2AC(v36);
    v53 = v50;
    sub_1000041A4(&qword_1016BEE18, &qword_1016BEE10, &unk_1013EF390, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v37 = Publisher.eraseToAnyPublisher()();
    goto LABEL_33;
  }

  v49 = v14;
  if (qword_101694F60 != -1)
  {
    goto LABEL_35;
  }

LABEL_4:
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C220);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  LODWORD(v48) = v18;
  if (!os_log_type_enabled(v17, v18))
  {

    v34 = v52;
    v38 = v50;
LABEL_32:
    v53 = v38;
    sub_1000041A4(&qword_1016BEE18, &qword_1016BEE10, &unk_1013EF390, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v37 = Publisher.eraseToAnyPublisher()();
LABEL_33:

    *v34 = v37;
    return result;
  }

  v47 = v17;
  v19 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v53 = v46;
  *v19 = 136446210;
  v20 = v45;
  *v10 = v45;
  v49(v10, v13, v7);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (v15)(v10, v7);
  if (v20)
  {
    v23 = *(a1 + 120);
    if (v23 <= 2)
    {
      v39 = 0xEE0079654B797261;
      v40 = 0x6D6972507465672ELL;
      if (v23 != 1)
      {
        v40 = 0xD000000000000016;
        v39 = 0x800000010135BE50;
      }

      if (*(a1 + 120))
      {
        v28 = v40;
      }

      else
      {
        v28 = 0x6E776F6E6B6E752ELL;
      }

      if (*(a1 + 120))
      {
        v29 = v39;
      }

      else
      {
        v29 = 0xE800000000000000;
      }
    }

    else
    {
      v24 = 0x8000000101373690;
      v25 = 0xD000000000000027;
      if (v23 != 5)
      {
        v25 = 0xD000000000000029;
        v24 = 0x8000000101373660;
      }

      v26 = 0x800000010135BE10;
      v27 = 0xD000000000000018;
      if (v23 != 3)
      {
        v27 = 0xD000000000000014;
        v26 = 0x8000000101373640;
      }

      if (*(a1 + 120) <= 4u)
      {
        v28 = v27;
      }

      else
      {
        v28 = v25;
      }

      if (*(a1 + 120) <= 4u)
      {
        v29 = v26;
      }

      else
      {
        v29 = v24;
      }
    }

    v34 = v52;
    v38 = v50;
    v42 = v46;
    v41 = v47;
    v43 = sub_1000136BC(v28, v29, &v53);

    *(v19 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v41, v48, "Existing privacy alert session in progress! %{public}s", v19, 0xCu);
    sub_100007BAC(v42);

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_100ED5570@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 24);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    *a2 = *(a1 + 120) != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100ED56A0(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = sub_100ED4684();
  sub_1010F701C(a2, x8_0);
  sub_100ED4B5C(v5);
}

uint64_t sub_100ED5708(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 24);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v19 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if (v7)
  {
    v18 = v10;
    if (qword_101694F60 == -1)
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
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177C220);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v17 = v4 + 104;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Cleaning up...", v14, 2u);
  }

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v20 = 13;
  v21 = 0u;
  v22 = 0u;
  v23 = 11;
  sub_100A5A2B8(&v20);
  sub_100101B04(&v20);
  *(v2 + 48) = 0;

  *(v2 + 40) = 0;

  LOBYTE(v20) = 1;

  PassthroughSubject.send(completion:)();

  *v6 = v19;
  v9(v6, v8, v3);
  v15 = _dispatchPreconditionTest(_:)();
  result = v18(v6, v3);
  if (v15)
  {
    *(v2 + 120) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100ED59FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v59 = a1;
  v60 = a3;
  v3 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v3 - 8);
  v55 = v42 - v4;
  v5 = sub_1000BC4D4(&qword_1016B4340, &qword_1013D4E50);
  v56 = *(v5 - 8);
  __chkstk_darwin(v5);
  v54 = v42 - v6;
  v7 = sub_1000BC4D4(&qword_1016BEE20, &qword_1013EF3A0);
  v57 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v42 - v8;
  v10 = sub_1000BC4D4(&qword_1016BEE28, &qword_1013EF3A8);
  v58 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v42 - v11;
  v13 = sub_1000BC4D4(&qword_1016BEE30, &unk_1013EF3B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v42 - v15;
  sub_100EDEA48();
  v17 = v62;
  BinaryDecodable.init(data:)();
  if (v17)
  {
  }

  v46 = v9;
  v47 = v5;
  v48 = v7;
  v49 = v12;
  v50 = v10;
  v51 = v16;
  v52 = v14;
  v53 = v13;
  v62 = 0;
  memset(v63, 0, sizeof(v63));
  v64 = 2;
  v65 = 0;
  v19 = v61;
  v20 = sub_100ED77B4(v63, v60);
  sub_10000B3A8(v63, &qword_1016BEDB8, &unk_1013EF350);
  *&v63[0] = v20;
  v21 = *(v19 + 24);
  v66 = v21;
  v22 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v23 = *(v22 - 8);
  v24 = v55;
  v43 = *(v23 + 56);
  v42[1] = v23 + 56;
  v43(v55, 1, 1, v22);
  v44 = v21;
  sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
  v25 = sub_1000BC488();
  sub_1000041A4(&qword_1016B3DC8, &qword_1016B3DC0, &qword_1013EF330, &protocol conformance descriptor for Future<A, B>);
  sub_100EDEAA8(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v26 = v54;
  v45 = v25;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v24, &unk_1016B0FE0, &unk_101391980);

  if (qword_101694F68 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v27, qword_1016BEB00);
  v28 = v44;
  *&v63[0] = v44;
  v43(v24, 1, 1, v22);
  sub_1000041A4(&qword_1016B4370, &qword_1016B4340, &qword_1013D4E50, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v29 = v46;
  v30 = v28;
  v31 = v47;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v24, &unk_1016B0FE0, &unk_101391980);

  (*(v56 + 8))(v26, v31);
  sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
  sub_1000041A4(&qword_1016BEE40, &qword_1016BEE20, &qword_1013EF3A0, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v32 = v49;
  v33 = v48;
  Publisher.map<A>(_:)();
  (*(v57 + 8))(v29, v33);
  sub_1000BC4D4(&qword_1016A7290, &qword_1013B60A0);
  sub_1000041A4(&qword_1016BEE48, &qword_1016BEE28, &qword_1013EF3A8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016A72A0, &qword_1016A7290, &qword_1013B60A0, &protocol conformance descriptor for Just<A>);
  v34 = v50;
  v35 = v51;
  Publisher.catch<A>(_:)();
  (*(v58 + 8))(v32, v34);
  v36 = swift_allocObject();
  v37 = v61;
  swift_weakInit();
  v38 = swift_allocObject();
  v38[2] = v36;
  v39 = v60;
  v38[3] = v59;
  v38[4] = v39;
  sub_1000041A4(&qword_1016BEE50, &qword_1016BEE30, &unk_1013EF3B0, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v40 = v53;
  v41 = Publisher<>.sink(receiveValue:)();

  (*(v52 + 8))(v35, v40);
  *(v37 + 48) = v41;
}

uint64_t sub_100ED6230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C220);
    sub_1000D2A70(a1, v20, &qword_1016B1CA0, &qword_1013918C0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      sub_1000D2A70(v20, &v18, &qword_1016B1CA0, &qword_1013918C0);
      sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
      v12 = String.init<A>(describing:)();
      v13 = a1;
      v14 = a4;
      v16 = v15;
      sub_10000B3A8(v20, &qword_1016B1CA0, &qword_1013918C0);
      v17 = sub_1000136BC(v12, v16, &v19);
      a4 = v14;
      a1 = v13;

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "primaryKey result: %s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {

      sub_10000B3A8(v20, &qword_1016B1CA0, &qword_1013918C0);
    }

    sub_1000D2A70(a1, v20, &qword_1016B1CA0, &qword_1013918C0);
    if (v20[41])
    {
      sub_10000B3A8(v20, &qword_1016B1CA0, &qword_1013918C0);
      sub_100ED5708(a4);
    }

    else
    {

      return sub_10000B3A8(v20, &qword_1016B1CA0, &qword_1013918C0);
    }
  }

  return result;
}

uint64_t sub_100ED64D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v5[3];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v18 = type metadata accessor for Transaction();
    __chkstk_darwin(v18);
    *&v19[-48] = v5;
    *&v19[-40] = a2;
    *&v19[-32] = a3;
    *&v19[-24] = a1;
    v19[-16] = a4 & 1;
    *&v19[-8] = v10;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100ED66B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v110 = a2;
  v97 = a6;
  v98 = a5;
  v92 = a4;
  v106 = a1;
  v7 = type metadata accessor for Device();
  v94 = *(v7 - 8);
  v95 = v7;
  __chkstk_darwin(v7);
  v89 = v8;
  v91 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v9 - 8);
  v107 = v72 - v10;
  v87 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = v72 - v11;
  v93 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v88 = v72 - v12;
  v13 = sub_1000BC4D4(&qword_1016BEDC0, &qword_1013EF360);
  v100 = *(v13 - 8);
  v101 = v13;
  __chkstk_darwin(v13);
  v99 = v72 - v14;
  v15 = sub_1000BC4D4(&qword_1016BEDC8, &qword_1013EF368);
  v102 = *(v15 - 8);
  v103 = v15;
  __chkstk_darwin(v15);
  v96 = v72 - v16;
  v17 = sub_1000BC4D4(&qword_1016BEDD0, &qword_1013EF370);
  v104 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v72 - v18;
  v20 = sub_1000BC4D4(&qword_1016BEDD8, &qword_1013EF378);
  v105 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = v72 - v21;
  v23 = sub_1000BC4D4(&qword_1016BEDE0, &unk_1013EF380);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v72 - v25;
  sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  v108 = a3;
  v27 = v109;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v27)
  {

    v28 = 0;
    v29 = v110;
  }

  else
  {
    v78 = v19;
    v79 = v17;
    v80 = v22;
    v81 = v20;
    v82 = 0;
    v83 = v26;
    v84 = v24;
    v109 = v23;
    v30 = v110;
    v111 = *(v110 + 24);
    v31 = v111;
    v32 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v33 = *(v32 - 8);
    v34 = *(v33 + 56);
    v35 = v107;
    v76 = v32;
    v75 = v34;
    v74 = v33 + 56;
    (v34)(v107, 1, 1);
    v36 = sub_1000BC488();
    sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v37 = sub_100EDEAA8(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
    v73 = v31;
    v38 = v85;
    v77 = v36;
    v72[1] = v37;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v35, &unk_1016B0FE0, &unk_101391980);

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v72[0] = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0, &protocol conformance descriptor for Future<A, B>);
    v39 = v88;
    v40 = v30;
    v41 = v87;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v86 + 8))(v38, v41);
    v43 = v94;
    v42 = v95;
    v44 = v91;
    (*(v94 + 16))(v91, v92, v95);
    v45 = (*(v43 + 80) + 24) & ~*(v43 + 80);
    v46 = (v89 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = v40;
    (*(v43 + 32))(v47 + v45, v44, v42);
    v48 = v47 + v46;
    v49 = v98;
    *v48 = v98;
    *(v48 + 8) = v97 & 1;
    v50 = v40;

    v51 = v49;
    sub_1000BC4D4(&qword_1016BEDB8, &unk_1013EF350);
    sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v52 = v99;
    v53 = v93;
    Publisher.map<A>(_:)();

    (*(v90 + 8))(v39, v53);
    v54 = swift_allocObject();
    v55 = v108;
    *(v54 + 16) = v50;
    *(v54 + 24) = v55;
    v29 = v50;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
    sub_1000041A4(&qword_1016BEDE8, &qword_1016BEDC0, &qword_1013EF360, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016B3DC8, &qword_1016B3DC0, &qword_1013EF330, v72[0]);
    v56 = v96;
    v57 = v101;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v100 + 8))(v52, v57);
    v58 = v107;
    if (qword_101694F68 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v59, qword_1016BEB00);
    v60 = v73;
    v112 = v73;
    v75(v58, 1, 1, v76);
    sub_1000041A4(&qword_1016BEDF0, &qword_1016BEDC8, &qword_1013EF368, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v61 = v78;
    v62 = v103;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v58, &unk_1016B0FE0, &unk_101391980);

    (*(v102 + 8))(v56, v62);
    sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
    sub_1000041A4(&qword_1016BEDF8, &qword_1016BEDD0, &qword_1013EF370, &protocol conformance descriptor for Publishers.Timeout<A, B>);
    v63 = v80;
    v64 = v79;
    Publisher.map<A>(_:)();
    (*(v104 + 8))(v61, v64);
    sub_1000BC4D4(&qword_1016A7290, &qword_1013B60A0);
    sub_1000041A4(&qword_1016BEE00, &qword_1016BEDD8, &qword_1013EF378, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016A72A0, &qword_1016A7290, &qword_1013B60A0, &protocol conformance descriptor for Just<A>);
    v65 = v83;
    v66 = v81;
    Publisher.catch<A>(_:)();
    (*(v105 + 8))(v63, v66);
    v67 = swift_allocObject();
    swift_weakInit();
    v68 = swift_allocObject();
    v68[2] = v67;
    v69 = v108;
    v68[3] = v106;
    v68[4] = v69;
    sub_1000041A4(&qword_1016BEE08, &qword_1016BEDE0, &unk_1013EF380, &protocol conformance descriptor for Publishers.Catch<A, B>);

    v70 = v109;
    v28 = Publisher<>.sink(receiveValue:)();

    (*(v84 + 8))(v65, v70);
  }

  *(v29 + 40) = v28;
}

uint64_t sub_100ED74D0(uint64_t a1)
{
  sub_100101AA8(a1, v2);
  v2[41] = 1;
  sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
  return Just.init(_:)();
}

uint64_t sub_100ED752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    sub_1000D2A70(a1, &v22, &qword_1016B1CA0, &qword_1013918C0);
    if (v24)
    {
      v20 = v22;
      v21[0] = *v23;
      *(v21 + 9) = *&v23[9];
      sub_100101AA8(&v20, &v16);
      if (v19 == 11 && v16 == 11 && (v7 = vorrq_s8(v17, v18), !*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL))))
      {
        sub_100101B04(&v16);
        if (qword_101694F60 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_1000076D4(v8, qword_10177C220);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "handleNotify timed out!", v11, 2u);
        }
      }

      else
      {
        sub_100101B04(&v16);
      }

      sub_100ED5708(a4);

      return sub_100101B04(&v20);
    }

    else
    {
      if (qword_101694F60 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177C220);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "handleNotify success!", v15, 2u);
      }
    }
  }

  return result;
}

uint64_t sub_100ED77B4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 24);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  sub_1000D2A70(a1, &v29, &qword_1016BEDB8, &unk_1013EF350);
  if (v31)
  {
    v27 = v29;
    *v28 = *v30;
    *&v28[9] = *&v30[9];
    sub_100101AA8(&v27, &v25);
    v11 = swift_allocObject();
    v12 = *v26;
    v11[1] = v25;
    v11[2] = v12;
    *(v11 + 41) = *&v26[9];
    sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
    swift_allocObject();
    v13 = Future.init(_:)();
    sub_100101B04(&v27);
    return v13;
  }

  v27 = v29;
  *v28 = *v30;
  v28[16] = v30[16];
  if (qword_101694F60 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C220);
  sub_100EDE250(&v27, &v25);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  sub_100EDE890(&v27);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    v25 = v27;
    *v26 = *v28;
    v26[16] = v28[16];
    sub_100EDE250(&v27, v23);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000136BC(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Sending: %{public}s", v17, 0xCu);
    sub_100007BAC(v18);
  }

  v13 = sub_100EDD164(&v27, a2);
  sub_100EDE890(&v27);
  return v13;
}

uint64_t sub_100ED7B08(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  sub_100101B58();
  v5 = swift_allocError();
  sub_100101AA8(a3, v6);
  v8[0] = v5;
  v9 = 256;
  a1(v8);
  return sub_10000B3A8(v8, &qword_1016B1CA0, &qword_1013918C0);
}

void sub_100ED7B98(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v425 = a4;
  v422 = a3;
  v423 = a2;
  v438 = a5;
  v7 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v7 - 8);
  v9 = &v406 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v424 = type metadata accessor for PrivacyAlertSupport.AlertInfo(0);
  __chkstk_darwin(v424);
  v426 = (&v406 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v11 - 8);
  v417 = &v406 - v12;
  v415 = type metadata accessor for SharedBeaconRecord(0);
  v416 = *(v415 - 8);
  v13 = __chkstk_darwin(v415);
  v412 = &v406 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v413 = &v406 - v16;
  __chkstk_darwin(v15);
  v418 = &v406 - v17;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v18 - 8);
  v20 = &v406 - v19;
  v21 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  __chkstk_darwin(v21 - 8);
  v23 = &v406 - v22;
  v420 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v419 = *(v420 - 8);
  v24 = __chkstk_darwin(v420);
  v414 = &v406 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v406 - v27;
  __chkstk_darwin(v26);
  v421 = &v406 - v29;
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = (&v406 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v5 + 24);
  *v33 = v35;
  v34 = *(v31 + 104);
  v428 = enum case for DispatchPredicate.onQueue(_:);
  v430 = v31 + 104;
  v429 = v34;
  v34(v33);
  v427 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v36 = *(v31 + 8);
  v432 = v33;
  v433 = v30;
  v434 = v31 + 8;
  v431 = v36;
  v36(v33, v30);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_223;
  }

  sub_1001011C0(a1, &v443);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1000076D4(v50, qword_10177C220);
    sub_1001011C0(a1, &v443);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v438;
    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v442 = v56;
      *v55 = 136315138;
      sub_1001011C0(&v443, v439);
      v57 = String.init<A>(describing:)();
      v59 = v58;
      sub_100007BAC(&v443);
      v60 = sub_1000136BC(v57, v59, &v442);

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v51, v52, "Invalid command from payload %s", v55, 0xCu);
      sub_100007BAC(v56);
    }

    else
    {

      sub_100007BAC(&v443);
    }

    v61 = 14;
    goto LABEL_18;
  }

  v436 = v439[0];
  v437 = v439[1];
  v38 = v440;
  v435 = v439[2];
  v35 = v441;
  v39 = (v440 >> 60) & 3 | (4 * v441);
  if (v39 <= 2)
  {
    if ((v440 >> 60) & 3 | (4 * v441))
    {
      v40 = v435;
      v20 = v436;
      if (v39 != 1)
      {
        goto LABEL_59;
      }

      v411 = v440;
      sub_100017D5C(v436, v437);
      static String.Encoding.utf8.getter();
      v62 = String.init(data:encoding:)();
      if (!v63)
      {
        LOBYTE(v138) = v35;
        v35 = v438;
        if (qword_101694F60 == -1)
        {
          goto LABEL_86;
        }

        goto LABEL_243;
      }

      v64 = v62;
      v65 = v63;
      v54 = v438;
      if (qword_101694F60 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_1000076D4(v66, qword_10177C220);

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = v35;
        v35 = swift_slowAlloc();
        v443 = v35;
        *v69 = 141558275;
        *(v69 + 4) = 1752392040;
        *(v69 + 12) = 2081;
        *(v69 + 14) = sub_1000136BC(v64, v65, &v443);
        _os_log_impl(&_mh_execute_header, v67, v68, "iCloudIdentifier: %{private,mask.hash}s", v69, 0x16u);
        sub_100007BAC(v35);
        LOBYTE(v35) = v70;
        v40 = v435;

        v20 = v436;
      }

      v71 = v424;
      v72 = v426;
      sub_100A22DF0(v426 + *(v424 + 20));
      v73 = v71[6];
      v74 = type metadata accessor for Device();
      (*(*(v74 - 8) + 16))(v72 + v73, v423, v74);
      *v72 = v64;
      v72[1] = v65;
      *(v72 + v71[7]) = v425 & 1;
      v75 = (v72 + v71[8]);
      *v75 = 0;
      v75[1] = 0;
      sub_100EDB164(v72);
      v76 = v437;
      v77 = v411;
      sub_10071E1B8(v20, v437, v40, v411, v35);
      sub_10071E1B8(v20, v76, v40, v77, v35);
      sub_100EDE7C0(v72, type metadata accessor for PrivacyAlertSupport.AlertInfo);
      v61 = 2;
LABEL_18:
      *v54 = v61;
      *(v54 + 1) = 0u;
      *(v54 + 3) = 0u;
      *(v54 + 20) = 267;
      return;
    }

    v409 = v441;
    v410 = v5;
    v111 = v436;
    v110 = v437;
    sub_100017D5C(v436, v437);
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    v113 = sub_1000076D4(v112, qword_10177C220);
    sub_100017D5C(v111, v110);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    sub_10071E1B8(v111, v110, v435, v38, v409);
    v116 = os_log_type_enabled(v114, v115);
    v411 = v38;
    if (v116)
    {
      v117 = swift_slowAlloc();
      v443 = swift_slowAlloc();
      v408 = v113;
      v118 = v443;
      *v117 = 136315138;
      v119 = Data.hexString.getter();
      v121 = sub_1000136BC(v119, v120, &v443);
      v38 = v411;

      *(v117 + 4) = v121;
      _os_log_impl(&_mh_execute_header, v114, v115, "primaryKey %s", v117, 0xCu);
      sub_100007BAC(v118);
      v113 = v408;

      v110 = v437;
    }

    v443 = v111;
    v444 = v110;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&_mh_execute_header, v122, v123, "primaryKey is empty! Verifying FindMyNetworkIdV2.", v124, 2u);
        v110 = v437;
      }

      v125 = sub_100F54748();
      v127 = v435;
      v128 = v409;
      if (v126 >> 60 == 15)
      {
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&_mh_execute_header, v129, v130, "Unable to generate FindMyNetworkId!", v131, 2u);
          v110 = v437;
        }

        v132 = v436;
        sub_10071E1B8(v436, v110, v127, v38, v128);

        v133 = v132;
        v134 = v110;
        v135 = v127;
        v136 = v38;
        v137 = v128;
        goto LABEL_109;
      }

      v207 = v125;
      v208 = v126;
      v209 = v126 >> 62;
      if ((v126 >> 62) > 1)
      {
        if (v209 != 2)
        {
          goto LABEL_259;
        }

        v252 = *(v125 + 16);
        v251 = *(v125 + 24);
        v253 = __OFSUB__(v251, v252);
        v210 = v251 - v252;
        if (!v253)
        {
LABEL_134:
          if (v210 == 32)
          {
            v254 = v432;
            v255 = v433;
            v256 = v427;
            *v432 = v427;
            v429(v254, v428, v255);
            v257 = v256;
            v258 = v38;
            v259 = _dispatchPreconditionTest(_:)();
            v260 = v436;
            v261 = v437;
            sub_10071E1B8(v436, v437, v127, v258, v128);
            sub_10071E1B8(v260, v261, v127, v258, v128);
            v431(v254, v255);
            if ((v259 & 1) == 0)
            {
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
              goto LABEL_249;
            }

            v262 = 6;
LABEL_216:
            *(v410 + 120) = v262;
            v249 = v438;
            *v438 = v207;
            v249[1] = v208;
            *(v249 + 1) = xmmword_1013B5EA0;
            goto LABEL_217;
          }

LABEL_259:
          __break(1u);
          goto LABEL_260;
        }

        __break(1u);
      }

      else if (!v209)
      {
        v210 = BYTE6(v126);
        goto LABEL_134;
      }

      LODWORD(v210) = HIDWORD(v125) - v125;
      if (__OFSUB__(HIDWORD(v125), v125))
      {
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
        goto LABEL_252;
      }

      v210 = v210;
      goto LABEL_134;
    }

    sub_100017D5C(v111, v110);
    sub_100018000(v111, v110, &v443);
    v230 = v443;
    v229 = v444;
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v231 = type metadata accessor for UUID();
    v232 = 1;
    (*(*(v231 - 8) + 56))(v20, 1, 1, v231);
    v406 = v230;
    v407 = v229;
    v233 = sub_1012DD334(v230, v229, v20);
    v234 = v233[2];
    v235 = v419;
    if (v234)
    {
      sub_100EDE820(v233 + ((*(v419 + 80) + 32) & ~*(v419 + 80)) + *(v419 + 72) * (v234 - 1), v23, type metadata accessor for BeaconKeyManager.IndexInformation);
      v232 = 0;
    }

    sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
    v263 = v420;
    (*(v235 + 56))(v23, v232, 1, v420);
    v265 = *(v235 + 48);
    v264 = v235 + 48;
    if (v265(v23, 1, v263) == 1)
    {
      sub_10000B3A8(v23, &unk_1016C1120, &qword_1013C49D0);
      v266 = Logger.logObject.getter();
      v267 = static os_log_type_t.default.getter();
      v268 = os_log_type_enabled(v266, v267);
      v269 = v409;
      if (v268)
      {
        v270 = swift_slowAlloc();
        *v270 = 0;
        _os_log_impl(&_mh_execute_header, v266, v267, "Unknown beacon. Verifying FMNIDV2...", v270, 2u);
      }

      v271 = sub_100F54748();
      v35 = v435;
      if (v272 >> 60 == 15)
      {
        v273 = Logger.logObject.getter();
        v274 = static os_log_type_t.error.getter();
        v275 = os_log_type_enabled(v273, v274);
        v276 = v436;
        if (v275)
        {
          v277 = swift_slowAlloc();
          *v277 = 0;
          _os_log_impl(&_mh_execute_header, v273, v274, "Unable to generate FindMyNetworkId!", v277, 2u);
        }

        v278 = v437;
        v279 = v411;
        sub_10071E1B8(v276, v437, v35, v411, v269);

        sub_100016590(v406, v407);
        v133 = v276;
        v134 = v278;
        v135 = v35;
        v136 = v279;
        v137 = v269;
        goto LABEL_109;
      }

      v207 = v271;
      v208 = v272;
      v308 = v272 >> 62;
      v20 = v411;
      if ((v272 >> 62) <= 1)
      {
        if (v308)
        {
          LODWORD(v309) = HIDWORD(v271) - v271;
          if (__OFSUB__(HIDWORD(v271), v271))
          {
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
            goto LABEL_257;
          }

          v309 = v309;
        }

        else
        {
          v309 = BYTE6(v272);
        }

        goto LABEL_203;
      }

      if (v308 != 2)
      {
        goto LABEL_261;
      }

      v346 = *(v271 + 16);
      v345 = *(v271 + 24);
      v253 = __OFSUB__(v345, v346);
      v309 = v345 - v346;
      if (!v253)
      {
LABEL_203:
        if (v309 == 32)
        {
          v386 = v432;
          v387 = v433;
          v388 = v427;
          *v432 = v427;
          v429(v386, v428, v387);
          v389 = v388;
          sub_10002E98C(v207, v208);
          LOBYTE(v388) = _dispatchPreconditionTest(_:)();
          sub_100016590(v406, v407);
          sub_100006654(v207, v208);
          v40 = v436;
          v326 = v437;
          sub_10071E1B8(v436, v437, v35, v20, v269);
          sub_10071E1B8(v40, v326, v35, v20, v269);
          v431(v386, v387);
          if ((v388 & 1) == 0)
          {
            __break(1u);
            goto LABEL_206;
          }

          goto LABEL_215;
        }

LABEL_261:
        __break(1u);
        goto LABEL_262;
      }

      __break(1u);
      goto LABEL_188;
    }

    v280 = v23;
    v281 = v421;
    sub_100EDE758(v280, v421, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100EDE820(v281, v28, type metadata accessor for BeaconKeyManager.IndexInformation);
    v282 = v414;
    sub_100EDE820(v281, v414, type metadata accessor for BeaconKeyManager.IndexInformation);
    v283 = Logger.logObject.getter();
    v284 = static os_log_type_t.default.getter();
    v285 = os_log_type_enabled(v283, v284);
    v408 = v113;
    if (v285)
    {
      v286 = v282;
      v287 = swift_slowAlloc();
      v443 = swift_slowAlloc();
      *v287 = 136315394;
      sub_100EDEAA8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v288 = dispatch thunk of CustomStringConvertible.description.getter();
      v290 = v289;
      sub_100EDE7C0(v28, type metadata accessor for BeaconKeyManager.IndexInformation);
      v291 = sub_1000136BC(v288, v290, &v443);

      *(v287 + 4) = v291;
      *(v287 + 12) = 2082;
      sub_1000035D0((v286 + *(v420 + 20)), *(v286 + *(v420 + 20) + 24));
      v292 = dispatch thunk of CustomStringConvertible.description.getter();
      v294 = v293;
      sub_100EDE7C0(v286, type metadata accessor for BeaconKeyManager.IndexInformation);
      v295 = sub_1000136BC(v292, v294, &v443);

      *(v287 + 14) = v295;
      _os_log_impl(&_mh_execute_header, v283, v284, "Found beacon %s and index %{public}s", v287, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100EDE7C0(v28, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_100EDE7C0(v282, type metadata accessor for BeaconKeyManager.IndexInformation);
    }

    v310 = v436;
    v311 = v417;
    v312 = v416;
    sub_100AA5198(v421, v417);
    v28 = v415;
    v313 = (*(v312 + 48))(v311, 1, v415);
    v314 = v409;
    v315 = v435;
    if (v313 == 1)
    {
      sub_10000B3A8(v311, &unk_101698C30, &unk_101392630);
    }

    else
    {
      v316 = v311;
      v317 = v418;
      sub_100EDE758(v316, v418, type metadata accessor for SharedBeaconRecord);
      v318 = *(v317 + *(v28 + 16));
      if (v318 == 4 || v318 == 1)
      {
        v264 = v413;
        sub_100EDE820(v418, v413, type metadata accessor for SharedBeaconRecord);
        v208 = Logger.logObject.getter();
        v319 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v208, v319))
        {
          v320 = swift_slowAlloc();
          v321 = swift_slowAlloc();
          v443 = v321;
          *v320 = 136315138;
          sub_100EDE820(v264, v412, type metadata accessor for SharedBeaconRecord);
          v322 = String.init<A>(describing:)();
          v324 = v323;
          sub_100EDE7C0(v264, type metadata accessor for SharedBeaconRecord);
          v325 = sub_1000136BC(v322, v324, &v443);

          *(v320 + 4) = v325;
          _os_log_impl(&_mh_execute_header, v208, v319, "Found sharedBeacon %s", v320, 0xCu);
          sub_100007BAC(v321);

LABEL_189:
          v347 = v438;
          v348 = v418 + *(v28 + 7);
          v349 = *(v348 + 8);
          v350 = *(v348 + 16);
          v351 = *v348;
          v352 = sub_100EB3708(*v348, v349, v350);
          v353 = [v352 description];

          v354 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v356 = v355;

          v357 = v424;
          v358 = v426;
          sub_100A22DF0(v426 + *(v424 + 20));
          v359 = v357[6];
          v360 = type metadata accessor for Device();
          (*(*(v360 - 8) + 16))(v358 + v359, v423, v360);
          v361 = sub_100EB3708(v351, v349, v350);
          v362 = [v361 description];

          v363 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v365 = v364;

          v366 = sub_1010E09D0(v363, v365, 0);
          v368 = v367;

          *v358 = v354;
          v358[1] = v356;
          *(v358 + v357[7]) = v425 & 1;
          v369 = (v358 + v357[8]);
          *v369 = v366;
          v369[1] = v368;
          sub_100EDB164(v358);
          sub_100016590(v406, v407);
          v371 = v436;
          v370 = v437;
          v372 = v435;
          v373 = v411;
          LOBYTE(v354) = v409;
          sub_10071E1B8(v436, v437, v435, v411, v409);
          sub_10071E1B8(v371, v370, v372, v373, v354);
          sub_100EDE7C0(v358, type metadata accessor for PrivacyAlertSupport.AlertInfo);
          sub_100EDE7C0(v421, type metadata accessor for BeaconKeyManager.IndexInformation);
          *v347 = 2;
          *(v347 + 1) = 0u;
          *(v347 + 3) = 0u;
          *(v347 + 20) = 267;
          sub_100EDE7C0(v418, type metadata accessor for SharedBeaconRecord);
          return;
        }

LABEL_188:

        sub_100EDE7C0(v264, type metadata accessor for SharedBeaconRecord);
        goto LABEL_189;
      }

      sub_100EDE7C0(v418, type metadata accessor for SharedBeaconRecord);
    }

    v374 = Logger.logObject.getter();
    v375 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v374, v375))
    {
      v376 = swift_slowAlloc();
      *v376 = 0;
      _os_log_impl(&_mh_execute_header, v374, v375, "Owner accessory. Verifying FMNIDV2...", v376, 2u);
    }

    v377 = sub_100F54748();
    if (v378 >> 60 == 15)
    {
      v379 = Logger.logObject.getter();
      v380 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v379, v380))
      {
        v381 = swift_slowAlloc();
        *v381 = 0;
        _os_log_impl(&_mh_execute_header, v379, v380, "Unable to generate FindMyNetworkId!", v381, 2u);

        sub_100016590(v406, v407);

        v382 = v437;
        v383 = v411;
        sub_10071E1B8(v310, v437, v315, v411, v314);
      }

      else
      {
        v382 = v437;
        v383 = v411;
        sub_10071E1B8(v310, v437, v315, v411, v314);
        sub_100016590(v406, v407);
      }

      v186 = v438;
      sub_10071E1B8(v310, v382, v315, v383, v314);
      sub_100EDE7C0(v421, type metadata accessor for BeaconKeyManager.IndexInformation);
      v187 = 10;
      goto LABEL_84;
    }

    v207 = v377;
    v208 = v378;
    v384 = v378 >> 62;
    if ((v378 >> 62) > 1)
    {
      if (v384 != 2)
      {
        goto LABEL_262;
      }

      v392 = *(v377 + 16);
      v391 = *(v377 + 24);
      v253 = __OFSUB__(v391, v392);
      v385 = v391 - v392;
      if (!v253)
      {
LABEL_213:
        if (v385 == 32)
        {
          v393 = v432;
          v394 = v433;
          v395 = v427;
          *v432 = v427;
          v429(v393, v428, v394);
          v396 = v395;
          sub_10002E98C(v207, v208);
          LOBYTE(v395) = _dispatchPreconditionTest(_:)();
          sub_100016590(v406, v407);
          sub_100006654(v207, v208);
          v397 = v437;
          v398 = v411;
          sub_10071E1B8(v310, v437, v315, v411, v314);
          sub_10071E1B8(v310, v397, v315, v398, v314);
          v431(v393, v394);
          sub_100EDE7C0(v421, type metadata accessor for BeaconKeyManager.IndexInformation);
          if ((v395 & 1) == 0)
          {
LABEL_252:
            __break(1u);
            goto LABEL_253;
          }

LABEL_215:
          v262 = 3;
          goto LABEL_216;
        }

LABEL_262:
        __break(1u);
        goto LABEL_263;
      }

      __break(1u);
    }

    else if (!v384)
    {
      v385 = BYTE6(v378);
      goto LABEL_213;
    }

    LODWORD(v385) = HIDWORD(v377) - v377;
    if (__OFSUB__(HIDWORD(v377), v377))
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    v385 = v385;
    goto LABEL_213;
  }

  if (v39 == 7)
  {
    v78 = v440;
    v410 = v5;
    v80 = v435;
    v79 = v436;
    v81 = v437;
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_1000076D4(v82, qword_10177C220);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    sub_10071E1B8(v79, v81, v80, v78, v35);
    if (os_log_type_enabled(v83, v84))
    {
      v85 = v436 >> 8;
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v439[0] = v87;
      *v86 = 136315138;
      LOBYTE(v443) = v436;
      BYTE1(v443) = v85;
      v444 = v437;

      v88 = String.init<A>(describing:)();
      v90 = v35;
      v35 = sub_1000136BC(v88, v89, v439);
      v79 = v436;

      *(v86 + 4) = v35;
      LOBYTE(v35) = v90;
      v80 = v435;
      _os_log_impl(&_mh_execute_header, v83, v84, "Received .verifyFindMyNetworkIdResponseV2: %s", v86, 0xCu);
      sub_100007BAC(v87);

      v81 = v437;
    }

    v91 = v78;
    if (v79)
    {
      if (v79 == 2)
      {
        v203 = Logger.logObject.getter();
        v204 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v203, v204))
        {
          v205 = swift_slowAlloc();
          *v205 = 0;
          _os_log_impl(&_mh_execute_header, v203, v204, "FindMyNetworkId verification failed! Getting iCloud identifier to show privacy alert.", v205, 2u);
        }

        sub_10073F194();
        BinaryDecodable.init(data:)();
        v245 = v432;
        v244 = v433;
        v246 = v427;
        *v432 = v427;
        v429(v245, v428, v244);
        v247 = v246;
        v248 = _dispatchPreconditionTest(_:)();
        sub_10071E1B8(v79, v81, v80, v78, v35);
        v431(v245, v244);
        if ((v248 & 1) == 0)
        {
          goto LABEL_248;
        }

        *(v410 + 120) = 4;
        goto LABEL_127;
      }

      if (v79 != 1)
      {
        sub_10071E1B8(v79, v81, v80, v78, v35);
        v206 = 2;
LABEL_110:
        v95 = v438;
        *v438 = v206;
LABEL_111:
        *(v95 + 1) = 0u;
        *(v95 + 3) = 0u;
        *(v95 + 20) = 267;
        return;
      }

      if (sub_1002F012C(v81))
      {
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&_mh_execute_header, v92, v93, "FindMyNetworkId verified, all parts are paired on the accessory.", v94, 2u);
          v91 = v78;
        }

        v443 = 2;

        PassthroughSubject.send(_:)();

        sub_10071E1B8(v79, v81, v80, v91, v35);
        v95 = v438;
        *v438 = 2;
        goto LABEL_111;
      }
    }

    sub_100EDE578(v79, v81, v80, v78, v35);

    v178 = Logger.logObject.getter();
    v179 = static os_log_type_t.default.getter();
    sub_10071E1B8(v79, v81, v80, v78, v35);
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v443 = v181;
      *v180 = 136446210;

      v182 = sub_1002F0158(v437);
      v184 = v183;
      sub_10071E1B8(v436, v437, v80, v78, v35);
      v185 = sub_1000136BC(v182, v184, &v443);
      v79 = v436;

      *(v180 + 4) = v185;
      _os_log_impl(&_mh_execute_header, v178, v179, "FindMyNetworkId verified, but need partial re-pair: %{public}s", v180, 0xCu);
      sub_100007BAC(v181);
      v81 = v437;

      v91 = v78;
    }

    v186 = v438;
    v443 = v81;

    PassthroughSubject.send(_:)();

    sub_10071E1B8(v79, v81, v80, v91, v35);
    sub_10071E1B8(v79, v81, v80, v91, v35);
    v187 = 2;
LABEL_84:
    *v186 = v187;
    *(v186 + 1) = 0u;
    *(v186 + 3) = 0u;
    *(v186 + 20) = 267;
    return;
  }

  v40 = v435;
  v20 = v436;
  if (v39 == 5)
  {
    v20 = v440;
    v96 = v5;
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_1000076D4(v97, qword_10177C220);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "Received .verifyFindMyNetworkIdResponse", v100, 2u);
    }

    v101 = v437;
    if (v436)
    {
      v102 = v432;
      v38 = v433;
      v103 = v427;
      *v432 = v427;
      v429(v102, v428, v38);
      v104 = v103;
      LOBYTE(v103) = _dispatchPreconditionTest(_:)();
      v431(v102, v38);
      if (v103)
      {
        v105 = *(v5 + 120);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.default.getter();
        v108 = os_log_type_enabled(v106, v107);
        v47 = v438;
        if (v105 == 5)
        {
          if (v108)
          {
            v109 = swift_slowAlloc();
            *v109 = 0;
            _os_log_impl(&_mh_execute_header, v106, v107, "FindMyNetworkId verified, but no PrimaryKey. Re-pairing both buds.", v109, 2u);
          }

          v443 = 1;
        }

        else
        {
          if (v108)
          {
            v211 = swift_slowAlloc();
            *v211 = 0;
            _os_log_impl(&_mh_execute_header, v106, v107, "FindMyNetworkId verified!", v211, 2u);
          }

          v443 = 0;
        }

        PassthroughSubject.send(_:)();

        sub_10071E1B8(v436, v437, v40, v20, v35);
        v49 = 2;
        goto LABEL_99;
      }

      __break(1u);
      goto LABEL_241;
    }

    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      *v157 = 0;
      _os_log_impl(&_mh_execute_header, v155, v156, "FindMyNetworkId verification failed! Getting iCloud identifier to show privacy alert.", v157, 2u);
    }

    sub_10073F194();
    BinaryDecodable.init(data:)();
    v225 = v432;
    v224 = v433;
    v226 = v427;
    *v432 = v427;
    v429(v225, v428, v224);
    v227 = v226;
    v228 = _dispatchPreconditionTest(_:)();
    sub_10071E1B8(v436, v101, v40, v20, v35);
    v431(v225, v224);
    if ((v228 & 1) == 0)
    {
      goto LABEL_246;
    }

    *(v96 + 120) = 4;
LABEL_127:
    v249 = v438;
    *v438 = 1;
    v249[1] = 0;
    v249[2] = 0;
    v249[3] = 0;
    v250 = 2;
LABEL_218:
    *(v249 + 32) = v250;
    *(v249 + 41) = 0;
    return;
  }

  if (v39 != 3)
  {
LABEL_59:
    LOBYTE(v138) = v441;
    v35 = v438;
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v139 = type metadata accessor for Logger();
    sub_1000076D4(v139, qword_10177C220);
    v140 = v437;
    sub_100EDE578(v20, v437, v40, v38, v138);
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();
    sub_10071E1B8(v20, v140, v40, v38, v138);
    if (os_log_type_enabled(v141, v142))
    {
      v143 = v40;
      v144 = v38;
      v145 = swift_slowAlloc();
      v146 = v140;
      v147 = swift_slowAlloc();
      v439[0] = v147;
      *v145 = 136315138;
      v443 = v20;
      v444 = v146;
      v445 = v143;
      v446 = v144;
      v411 = v144;
      v447 = v138;
      sub_100EDE578(v20, v146, v143, v144, v138);
      v148 = String.init<A>(describing:)();
      v150 = sub_1000136BC(v148, v149, v439);

      *(v145 + 4) = v150;
      _os_log_impl(&_mh_execute_header, v141, v142, "Received unexpected owner command %s", v145, 0xCu);
      sub_100007BAC(v147);

      v151 = v436;
      v152 = v146;
      v153 = v143;
      v154 = v411;
    }

    else
    {

      v151 = v20;
      v152 = v140;
      v153 = v40;
      v154 = v38;
    }

    goto LABEL_117;
  }

  v41 = v437;
  sub_100017D5C(v436, v437);
  sub_100017D5C(v40, v38 & 0xCFFFFFFFFFFFFFFFLL);
  v42 = sub_10041C094(v20, v41, v40, v38 & 0xCFFFFFFFFFFFFFFFLL);
  if ((v42 & 0xFF0000) == 0x60000)
  {
    if (qword_101694F60 == -1)
    {
LABEL_9:
      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177C220);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v438;
      if (v46)
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Invalid commandResponse", v48, 2u);
      }

      sub_10071E1B8(v20, v437, v40, v38, v35);
      v49 = 10;
LABEL_99:
      *v47 = v49;
      *(v47 + 1) = 0u;
      *(v47 + 3) = 0u;
      *(v47 + 20) = 267;
      return;
    }

LABEL_241:
    swift_once();
    goto LABEL_9;
  }

  v158 = v42;
  v411 = v38;
  v410 = v5;
  if (qword_101694F60 != -1)
  {
    swift_once();
  }

  v159 = type metadata accessor for Logger();
  sub_1000076D4(v159, qword_10177C220);
  v160 = Logger.logObject.getter();
  v161 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v443 = v163;
    *v162 = 33686018;
    *(v162 + 4) = v158;
    *(v162 + 6) = 2082;
    if (BYTE2(v158))
    {
      v164 = BYTE2(v158);
    }

    else
    {
      v164 = 6;
    }

    v165 = sub_10041B9C8(v164);
    v167 = sub_1000136BC(v165, v166, &v443);
    v40 = v435;

    *(v162 + 8) = v167;
    _os_log_impl(&_mh_execute_header, v160, v161, "commandResponse: Opcode %{public}hu. Status %{public}s", v162, 0x10u);
    sub_100007BAC(v163);
    v20 = v436;
  }

  v168 = v410;
  v169 = v432;
  v138 = v433;
  v170 = v427;
  *v432 = v427;
  v429(v169, v428, v138);
  v171 = v170;
  v172 = _dispatchPreconditionTest(_:)();
  v431(v169, v138);
  if ((v172 & 1) == 0)
  {
    __break(1u);
LABEL_243:
    swift_once();
LABEL_86:
    v188 = type metadata accessor for Logger();
    sub_1000076D4(v188, qword_10177C220);
    v189 = v437;
    sub_100017D5C(v20, v437);
    v190 = Logger.logObject.getter();
    v191 = static os_log_type_t.error.getter();
    v192 = v40;
    v193 = v40;
    v194 = v411;
    sub_10071E1B8(v20, v189, v192, v411, v138);
    if (os_log_type_enabled(v190, v191))
    {
      v195 = swift_slowAlloc();
      v196 = v189;
      v197 = swift_slowAlloc();
      v443 = v197;
      *v195 = 136315138;
      v198 = Data.hexString.getter();
      v200 = sub_1000136BC(v198, v199, &v443);

      *(v195 + 4) = v200;
      _os_log_impl(&_mh_execute_header, v190, v191, "Invalid format for icloudIdentifier %s", v195, 0xCu);
      sub_100007BAC(v197);

      v201 = v436;
      v202 = v411;
      sub_10071E1B8(v436, v196, v193, v411, v138);

      v151 = v201;
      v152 = v196;
      v153 = v193;
      v154 = v202;
    }

    else
    {

      sub_10071E1B8(v20, v189, v193, v194, v138);
      v151 = v20;
      v152 = v189;
      v153 = v193;
      v154 = v194;
    }

LABEL_117:
    sub_10071E1B8(v151, v152, v153, v154, v138);
    v236 = 10;
LABEL_118:
    *v35 = v236;
    *(v35 + 8) = 0u;
    *(v35 + 24) = 0u;
    *(v35 + 40) = 267;
    return;
  }

  v173 = BYTE2(v158);
  if (!BYTE2(v158) || *(v168 + 120) != 2)
  {
    v213 = v432;
    v212 = v433;
    *v432 = v171;
    v429(v213, v428, v212);
    v214 = v171;
    v215 = _dispatchPreconditionTest(_:)();
    v431(v213, v212);
    if (v215)
    {
      if (v173 && *(v168 + 120) == 6)
      {
        v216 = Logger.logObject.getter();
        v217 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v216, v217))
        {
          v218 = swift_slowAlloc();
          *v218 = 0;
          _os_log_impl(&_mh_execute_header, v216, v217, "Accessory does not have a PrimaryKey and does not support verifyFindMyNetworkIdV2", v218, 2u);
        }

        v219 = sub_100F54748();
        if (v220 >> 60 == 15)
        {
LABEL_106:
          v221 = Logger.logObject.getter();
          v222 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v221, v222))
          {
            v223 = swift_slowAlloc();
            *v223 = 0;
            _os_log_impl(&_mh_execute_header, v221, v222, "Unable to generate FindMyNetworkId!", v223, 2u);
          }

          v133 = v20;
          v134 = v437;
          v135 = v40;
          v136 = v411;
          v137 = v35;
LABEL_109:
          sub_10071E1B8(v133, v134, v135, v136, v137);
          v206 = 10;
          goto LABEL_110;
        }

        v9 = v219;
        a1 = v220;
        v296 = v220 >> 62;
        if ((v220 >> 62) > 1)
        {
          v297 = v410;
          if (v296 != 2)
          {
            goto LABEL_260;
          }

          v339 = *(v219 + 16);
          v338 = *(v219 + 24);
          v253 = __OFSUB__(v338, v339);
          v298 = v338 - v339;
          if (!v253)
          {
LABEL_180:
            if (v298 == 32)
            {
              v341 = v432;
              v340 = v433;
              *v432 = v214;
              v429(v341, v428, v340);
              v342 = v214;
              v343 = _dispatchPreconditionTest(_:)();
              sub_10071E1B8(v20, v437, v435, v411, v35);
              v431(v341, v340);
              if (v343)
              {
                v344 = 5;
LABEL_183:
                *(v297 + 120) = v344;
                v249 = v438;
                *v438 = v9;
                v249[1] = a1;
                v249[2] = 0;
                v249[3] = 0;
LABEL_217:
                v250 = 1;
                goto LABEL_218;
              }

              goto LABEL_250;
            }

LABEL_260:
            __break(1u);
            goto LABEL_261;
          }

          __break(1u);
        }

        else
        {
          v297 = v410;
          if (!v296)
          {
            v298 = BYTE6(v220);
            goto LABEL_180;
          }
        }

        LODWORD(v298) = HIDWORD(v219) - v219;
        if (__OFSUB__(HIDWORD(v219), v219))
        {
LABEL_254:
          __break(1u);
          goto LABEL_255;
        }

        v298 = v298;
        goto LABEL_180;
      }

      v238 = v432;
      v237 = v433;
      *v432 = v214;
      v429(v238, v428, v237);
      v239 = v214;
      v240 = _dispatchPreconditionTest(_:)();
      v431(v238, v237);
      if (v240)
      {
        if (v173 && *(v168 + 120) == 5)
        {
          v241 = Logger.logObject.getter();
          v242 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v241, v242))
          {
            v243 = swift_slowAlloc();
            *v243 = 0;
            _os_log_impl(&_mh_execute_header, v241, v242, "Accessory does not have a PrimaryKey and does not support verifyFindMyNetworkId, proceed to pairing", v243, 2u);
          }

          v443 = 0;

          PassthroughSubject.send(_:)();

          sub_10071E1B8(v20, v437, v40, v411, v35);
          v206 = 8;
          goto LABEL_110;
        }

        v300 = v432;
        v299 = v433;
        *v432 = v239;
        v429(v300, v428, v299);
        v23 = v239;
        v301 = _dispatchPreconditionTest(_:)();
        v431(v300, v299);
        if ((v301 & 1) == 0)
        {
          goto LABEL_251;
        }

        if (v173 && *(v168 + 120) == 3)
        {
          v302 = Logger.logObject.getter();
          v303 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v302, v303))
          {
            v304 = swift_slowAlloc();
            *v304 = 0;
            _os_log_impl(&_mh_execute_header, v302, v303, "Accessory does not support verifyFindMyNetworkIdV2. Falling back to verifyFindMyNetworkId...", v304, 2u);
          }

          v305 = sub_100F54748();
          if (v306 >> 60 == 15)
          {
            goto LABEL_106;
          }

          v9 = v305;
          a1 = v306;
          v37 = v306 >> 62;
          if ((v306 >> 62) <= 1)
          {
            v297 = v410;
            if (!v37)
            {
              v307 = BYTE6(v306);
              goto LABEL_229;
            }

            goto LABEL_227;
          }

LABEL_223:
          v297 = v410;
          if (v37 != 2)
          {
            goto LABEL_263;
          }

          v400 = *(v9 + 2);
          v399 = *(v9 + 3);
          v253 = __OFSUB__(v399, v400);
          v307 = v399 - v400;
          if (!v253)
          {
LABEL_229:
            if (v307 == 32)
            {
              v402 = v432;
              v401 = v433;
              *v432 = v23;
              v429(v402, v428, v401);
              v403 = v23;
              v404 = _dispatchPreconditionTest(_:)();
              sub_10071E1B8(v20, v437, v435, v411, v35);
              v431(v402, v401);
              if (v404)
              {
                v344 = 2;
                goto LABEL_183;
              }

              goto LABEL_256;
            }

LABEL_263:
            __break(1u);
            return;
          }

          __break(1u);
LABEL_227:
          LODWORD(v307) = HIDWORD(v9) - v9;
          if (__OFSUB__(HIDWORD(v9), v9))
          {
LABEL_258:
            __break(1u);
            goto LABEL_259;
          }

          v307 = v307;
          goto LABEL_229;
        }

        LOBYTE(v326) = v35;
        v328 = v432;
        v327 = v433;
        *v432 = v23;
        v429(v328, v428, v327);
        v329 = v23;
        v330 = _dispatchPreconditionTest(_:)();
        v431(v328, v327);
        if ((v330 & 1) == 0)
        {
LABEL_253:
          __break(1u);
          goto LABEL_254;
        }

        v331 = *(v168 + 120);
        v208 = Logger.logObject.getter();
        v332 = static os_log_type_t.error.getter();
        v333 = os_log_type_enabled(v208, v332);
        v35 = v438;
        if (v333)
        {
          v334 = swift_slowAlloc();
          v335 = swift_slowAlloc();
          v443 = v335;
          *v334 = 136446210;
          if (v331 <= 2)
          {
            if (v331)
            {
              if (v331 == 1)
              {
                v336 = 0xEE0079654B797261;
                v337 = 0x6D6972507465672ELL;
              }

              else
              {
                v336 = 0x800000010135BE50;
                v337 = 0xD000000000000016;
              }
            }

            else
            {
              v336 = 0xE800000000000000;
              v337 = 0x6E776F6E6B6E752ELL;
            }
          }

          else if (v331 > 4)
          {
            if (v331 == 5)
            {
              v336 = 0x8000000101373690;
              v337 = 0xD000000000000027;
            }

            else
            {
              v336 = 0x8000000101373660;
              v337 = 0xD000000000000029;
            }
          }

          else if (v331 == 3)
          {
            v336 = 0x800000010135BE10;
            v337 = 0xD000000000000018;
          }

          else
          {
            v337 = 0xD000000000000014;
            v336 = 0x8000000101373640;
          }

          v405 = sub_1000136BC(v337, v336, &v443);

          *(v334 + 4) = v405;
          _os_log_impl(&_mh_execute_header, v208, v332, "Invalid state %{public}s", v334, 0xCu);
          sub_100007BAC(v335);

          v390 = v436;
          goto LABEL_239;
        }

LABEL_206:

        v390 = v20;
LABEL_239:
        sub_10071E1B8(v390, v437, v40, v411, v326);
        v236 = 8;
        goto LABEL_118;
      }

      goto LABEL_247;
    }

    goto LABEL_245;
  }

  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    *v176 = 0;
    _os_log_impl(&_mh_execute_header, v174, v175, "Accessory does not support verifyFindMyNetworkId. Getting iCloud identifier...", v176, 2u);
  }

  sub_10073F194();
  BinaryDecodable.init(data:)();
  v177 = v438;
  sub_10071E1B8(v20, v437, v40, v411, v35);
  *v177 = 1;
  v177[1] = 0;
  v177[2] = 0;
  v177[3] = 0;
  *(v177 + 32) = 2;
  *(v177 + 41) = 0;
}