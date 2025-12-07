uint64_t UICollectionView.performAIDiff<A>(oldItems:newItems:sectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:completion:)(uint64_t a1, uint64_t a2, double (**a3)(uint64_t, uint64_t *, NSObject *, __n128), int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, __int128 a13)
{
  v26 = a8;
  v24 = a6;
  v25 = a7;
  v23 = a5;
  v29 = a4;
  v27 = a12;
  v28 = a11;
  v22 = a13;
  v16 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(a1, a2, a3, v23, v24, v25, v26, a9, v18, a10, a13);
  sub_10010FC20(&qword_1011BA770, "\\\n");
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100EBC6B0;
  sub_100C41B2C(v18, v20 + v19);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v20, v29, 0, 0, v28, v27);

  return sub_100C41B90(v18);
}

void sub_100C40460(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a6;
  v9 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011B9A28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, qword_1011BA758);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Found update with needsReloadData=true, reloading", v15, 2u);
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v18 = *(v9 + 72);
    do
    {
      sub_100C41B2C(v17, v11);
      v20 = *(v11 + 1);
      v19 = *(v11 + 2);
      sub_100030444(v20, v19);
      v21 = sub_100C41B90(v11);
      if (v20)
      {
        v20(v21);
        sub_100020438(v20, v19);
      }

      v17 += v18;
      --v16;
    }

    while (v16);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    [Strong reloadData];
  }

  if (a3)
  {
    a3();
  }

  if (a5)
  {
    a5(1);
  }
}

void sub_100C406A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for IndexSet();
  v18 = swift_projectBox();
  v19 = swift_projectBox();
  v20 = a5 + 16;
  v21 = a6 + 16;
  v22 = a8 + 16;
  v23 = [a1 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = sub_100C46308(v24);

  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = a1;
  v26[4] = v18;
  v26[5] = v19;
  v26[6] = v20;
  v26[7] = v21;
  v26[8] = a7 + 16;
  v26[9] = v22;
  v26[10] = v25;
  v26[11] = a9;
  v26[12] = a10;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100C46EB0;
  *(v27 + 24) = v26;
  v38 = sub_10018A020;
  v39 = v27;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100029B9C;
  v37 = &unk_1010F19D0;
  v28 = _Block_copy(&aBlock);

  v29 = a1;
  sub_100030444(a9, a10);

  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a11;
  v30[4] = a12;
  v30[5] = a13;
  v38 = sub_100C46EAC;
  v39 = v30;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_1005C3688;
  v37 = &unk_1010F1A20;
  v31 = _Block_copy(&aBlock);
  v32 = v29;

  sub_100030444(a12, a13);

  [v32 performBatchUpdates:v28 completion:v31];
  _Block_release(v31);
  _Block_release(v28);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }
}

double sub_100C409B4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, void *a6, uint64_t *a7, uint64_t a8, void *a9, void (*a10)(void), uint64_t a11)
{
  v127 = a8;
  v115 = a7;
  v126 = a6;
  v125 = a5;
  v123 = a4;
  v113 = a3;
  v122 = a2;
  v12 = type metadata accessor for IndexPath();
  v120 = *(v12 - 8);
  __chkstk_darwin();
  v109 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v104 - v14;
  __chkstk_darwin();
  v124 = (&v104 - v16);
  v119 = sub_10010FC20(&qword_1011BA4F8, &qword_100F0C740);
  v121 = *(v119 - 8);
  __chkstk_darwin();
  v18 = &v104 - v17;
  v112 = type metadata accessor for IndexSet();
  v19 = *(v112 - 8);
  __chkstk_darwin();
  v111 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AIDiffingUpdate(0);
  __chkstk_darwin();
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v26 = *(v21 + 72);
    do
    {
      sub_100C41B2C(v25, v23);
      v28 = *(v23 + 1);
      v27 = *(v23 + 2);
      sub_100030444(v28, v27);
      v29 = sub_100C41B90(v23);
      if (v28)
      {
        v28(v29);
        sub_100020438(v28, v27);
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v30 = v113;
  swift_beginAccess();
  v110 = *(v19 + 16);
  v31 = v111;
  v32 = v112;
  v110(v111, v30, v112);
  IndexSet._bridgeToObjectiveC()(v33);
  v35 = v34;
  v36 = *(v19 + 8);
  v36(v31, v32);
  v37 = v122;
  [v122 deleteSections:v35];

  v38 = v123;
  swift_beginAccess();
  v107 = v19 + 16;
  v110(v31, v38, v32);
  IndexSet._bridgeToObjectiveC()(v39);
  v41 = v40;
  v108 = v19 + 8;
  v106 = v36;
  v36(v31, v32);
  [v37 insertSections:v41];

  v42 = v125;
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v43 + 16);
  if (v44)
  {

    v45 = (v43 + 40);
    do
    {
      [v37 moveSection:*(v45 - 1) toSection:*v45];
      v45 += 2;
      --v44;
    }

    while (v44);
  }

  swift_beginAccess();

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_endAccess();

  [v37 insertItemsAtIndexPaths:isa];

  swift_beginAccess();

  v47 = Array._bridgeToObjectiveC()().super.isa;
  swift_endAccess();

  [v37 deleteItemsAtIndexPaths:v47];

  v48 = v127;
  swift_beginAccess();
  v49 = *v48;
  v50 = *(*v48 + 16);
  if (v50)
  {
    v51 = *(v119 + 48);
    v52 = v49 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v127 = *(v121 + 72);
    v53 = (v120 + 8);
    v126 = v49;

    do
    {
      sub_100C46A64(v52, v18);
      v54 = IndexPath._bridgeToObjectiveC()().super.isa;
      v55 = *v53;
      (*v53)(v18, v12);
      v56 = IndexPath._bridgeToObjectiveC()().super.isa;
      v55(&v18[v51], v12);
      [v122 moveItemAtIndexPath:v54 toIndexPath:v56];

      v52 += v127;
      --v50;
    }

    while (v50);

    v37 = v122;
  }

  v57 = [v37 _indexPathsForPreparedItems];
  v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v118 = *(v58 + 16);
  if (v118)
  {
    v59 = v120;
    v119 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v116 = v58 + v119;
    swift_beginAccess();
    swift_beginAccess();
    v60 = 0;
    v126 = a9;
    v127 = v59 + 16;
    v125 = a9 + 7;
    v37 = v59 + 8;
    v114 = _swiftEmptyArrayStorage;
    v105 = (v59 + 32);
    v61 = v124;
    v117 = v58;
    while (1)
    {
      if (v60 >= *(v58 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v63 = *(v120 + 72);
      v123 = v60;
      v64 = *(v120 + 16);
      v64(v61, v116 + v63 * v60, v12);
      if (v126[2])
      {
        v65 = v126;
        sub_100C46E04(&qword_1011BA688, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v66 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v67 = -1 << *(v65 + 32);
        v68 = v66 & ~v67;
        if ((*(v125 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68))
        {
          v69 = ~v67;
          while (1)
          {
            v64(v15, v126[6] + v68 * v63, v12);
            sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v70 = dispatch thunk of static Equatable.== infix(_:_:)();
            v71 = *v37;
            (*v37)(v15, v12);
            if (v70)
            {
              break;
            }

            v68 = (v68 + 1) & v69;
            if (((*(v125 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v71(v61, v12);
          goto LABEL_17;
        }
      }

LABEL_25:
      v72 = *v115;
      v73 = v115[1];
      v74 = v73 + v119;
      v75 = *(v73 + 16);
      v121 = v37 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v72)
      {

        sub_100C458DC(v61, v74, v75, (v72 + 16), v72 + 32);
        v77 = v76;

        if ((v77 & 1) == 0)
        {
          v78 = *v37;
LABEL_40:
          v89 = v124;
          v78(v124, v12);
          v61 = v89;
          goto LABEL_17;
        }
      }

      else
      {

        if (v75)
        {
          while (1)
          {
            v64(v15, v74, v12);
            sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v79 = dispatch thunk of static Equatable.== infix(_:_:)();
            v78 = *v37;
            (*v37)(v15, v12);
            if (v79)
            {
              break;
            }

            v74 += v63;
            --v75;
            v61 = v124;
            if (!v75)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_40;
        }

LABEL_31:
      }

      v80 = v111;
      v81 = v112;
      v110(v111, v113, v112);
      v82 = IndexPath.section.getter();
      v83 = IndexSet.contains(_:)(v82);
      v106(v80, v81);
      if (!v83)
      {
        v64(v109, v61, v12);
        v84 = v114;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v123;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v84 = sub_100C289AC(0, v84[2] + 1, 1, v84);
        }

        v114 = v84;
        v87 = v84[2];
        v86 = v84[3];
        if (v87 >= v86 >> 1)
        {
          v114 = sub_100C289AC((v86 > 1), v87 + 1, 1, v114);
        }

        v88 = v114;
        v114[2] = v87 + 1;
        (*v105)(&v88[v119 + v87 * v63], v109, v12);
        (*v37)(v61, v12);
        v58 = v117;
        goto LABEL_18;
      }

      (*v37)(v61, v12);
LABEL_17:
      v58 = v117;
      v62 = v123;
LABEL_18:
      v60 = v62 + 1;
      if (v60 == v118)
      {

        v37 = v122;
        goto LABEL_43;
      }
    }
  }

LABEL_43:
  v61 = a10;
  if (qword_1011B9A28 != -1)
  {
LABEL_52:
    swift_once();
  }

  v90 = type metadata accessor for Logger();
  sub_1000060E4(v90, qword_1011BA758);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v128 = v94;
    *v93 = 136315138;

    v95 = Array.description.getter();
    v97 = v96;

    v98 = sub_1000108DC(v95, v97, &v128);
    v37 = v122;

    *(v93 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v91, v92, "Cleaning up prefetched cells by reloading index paths: %s", v93, 0xCu);
    sub_10000959C(v94);
  }

  v99 = Array._bridgeToObjectiveC()().super.isa;

  [v37 reloadItemsAtIndexPaths:v99];

  if (v61)
  {

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "Performing alongside updates", v102, 2u);
    }

    v61();
    sub_100020438(v61, a11);
  }

  return result;
}

id sub_100C417CC(char a1, id a2, uint64_t a3, void (*a4)(void))
{
  v7 = [a2 isPrefetchingEnabled];
  [a2 setPrefetchingEnabled:0];
  if (qword_1011B9A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000060E4(v8, qword_1011BA758);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    buf = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *buf = 136315138;
    swift_beginAccess();
    v21 = a4;

    v12 = sub_100C467CC(v11);
    v18 = v10;
    v14 = v13;

    v15 = sub_1000108DC(v12, v14, v22);

    *(buf + 4) = v15;
    a4 = v21;
    _os_log_impl(&_mh_execute_header, v9, v18, "Reconfiguring index paths: %s", buf, 0xCu);
    sub_10000959C(v20);
  }

  swift_beginAccess();
  type metadata accessor for IndexPath();

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_endAccess();

  [a2 reconfigureItemsAtIndexPaths:isa];

  if (a4)
  {
    a4(a1 & 1);
  }

  return [a2 setPrefetchingEnabled:v7];
}

uint64_t sub_100C41A6C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011BA758);
  sub_1000060E4(v0, qword_1011BA758);
  return Logger.init(subsystem:category:)();
}

uint64_t type metadata accessor for AIDiffingUpdate(uint64_t a1)
{
  result = qword_1011BA7E0;
  if (!qword_1011BA7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100C41B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIDiffingUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C41B90(uint64_t a1)
{
  v2 = type metadata accessor for AIDiffingUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100C41BEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BA910, &qword_100F0CFB8);
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

uint64_t sub_100C41CE0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100C46E04(&qword_1011BA688, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
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
      sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
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
    sub_100C426CC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100C41FC0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_100C42970(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_100C42110(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for IndexPath();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10010FC20(&qword_1011BA920, &qword_100F0CFC8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100C46E04(&qword_1011BA688, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100C4246C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(qword_1011BA958, &unk_100F0CFF0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
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
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t sub_100C426CC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100C42110(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100C42AF0();
      goto LABEL_12;
    }

    sub_100C42E84(v11 + 1);
  }

  v13 = *v3;
  sub_100C46E04(&qword_1011BA688, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100C42970(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100C4246C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100C42D28();
      goto LABEL_16;
    }

    sub_100C431A0(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100C42AF0()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BA920, &qword_100F0CFC8);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_100C42D28()
{
  v1 = v0;
  sub_10010FC20(qword_1011BA958, &unk_100F0CFF0);
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

void sub_100C42E84(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for IndexPath();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10010FC20(&qword_1011BA920, &qword_100F0CFC8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_100C46E04(&qword_1011BA688, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
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

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_100C431A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(qword_1011BA958, &unk_100F0CFF0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
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
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

uint64_t sub_100C433D8(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v7);
      result = static Hasher._hash(seed:_:)();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v4);
          if (v4 != v7 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v4);
          v18 = (v16 + 8 * v7);
          if (v4 != v7 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

void sub_100C43548(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48) + 24 * v7;
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      Hasher.init(_seed:)();
      if (v11)
      {
        Hasher._combine(_:)(1uLL);
        v13 = v12;

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
        v14 = v12;
      }

      v15 = Hasher._finalize()();

      v16 = v15 & v8;
      if (v4 >= v9)
      {
        if (v16 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v9)
      {
        goto LABEL_13;
      }

      if (v4 >= v16)
      {
LABEL_13:
        v17 = *(a2 + 48);
        v18 = v17 + 24 * v4;
        v19 = (v17 + 24 * v7);
        if (v4 != v7 || v18 >= v19 + 24)
        {
          v20 = *v19;
          *(v18 + 16) = *(v19 + 2);
          *v18 = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 8 * v4);
        v23 = (v21 + 8 * v7);
        if (v4 != v7 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

unint64_t sub_100C43738(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100C309F0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100C56170();
    result = v17;
    goto LABEL_8;
  }

  sub_100C559AC(v14, a3 & 1);
  result = sub_100C309F0(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100C4385C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100019C40(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100C55C10(v16, a4 & 1);
      v11 = sub_100019C40(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100C562BC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_100C439C0(uint64_t *a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100C5749C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100C43A68(v5);
  *a1 = v3;
}

void sub_100C43A68(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100C43E58(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_100C43B94(0, v2, 1, a1);
  }
}

void sub_100C43B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin();
  v39 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v29 - v10;
  v12 = __chkstk_darwin();
  v42 = &v29 - v13;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v40 = *(v11 + 16);
    v41 = v11 + 16;
    v15 = *(v11 + 72);
    v16 = (v11 + 8);
    v37 = (v11 + 32);
    v38 = v14;
    v17 = (v14 + v15 * (a3 - 1));
    v36 = -v15;
    v18 = a1 - a3;
    v30 = v15;
    v19 = v14 + v15 * a3;
LABEL_5:
    v34 = v17;
    v35 = a3;
    v32 = v19;
    v33 = v18;
    v20 = v17;
    while (1)
    {
      v21 = v42;
      v22 = v40;
      v40(v42, v19, v8, v12);
      v23 = v43;
      v22(v43, v20, v8);
      sub_100C46E04(&qword_1011BA950, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of static Comparable.< infix(_:_:)();
      v25 = *v16;
      (*v16)(v23, v8);
      v25(v21, v8);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v17 = &v34[v30];
        v18 = v33 - 1;
        v19 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v26 = *v37;
      v27 = v39;
      (*v37)(v39, v19, v8);
      swift_arrayInitWithTakeFrontToBack();
      v26(v20, v27, v8);
      v20 += v36;
      v19 += v36;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100C43E58(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v119 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v124 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v131 = &v116 - v11;
  __chkstk_darwin();
  v137 = &v116 - v12;
  v13 = __chkstk_darwin();
  v136 = &v116 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_94:
    v18 = *v119;
    if (!*v119)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v17 = sub_100C57370(v17);
    }

    v139 = v17;
    v112 = *(v17 + 2);
    if (v112 >= 2)
    {
      while (*a3)
      {
        v113 = *&v17[16 * v112];
        v114 = *&v17[16 * v112 + 24];
        sub_100C44880(*a3 + v9[9] * v113, *a3 + v9[9] * *&v17[16 * v112 + 16], *a3 + v9[9] * v114, v18);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v114 < v113)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100C57370(v17);
        }

        if (v112 - 2 >= *(v17 + 2))
        {
          goto LABEL_120;
        }

        v115 = &v17[16 * v112];
        *v115 = v113;
        *(v115 + 1) = v114;
        v139 = v17;
        sub_100C572E4(v112 - 1);
        v17 = v139;
        v112 = *(v139 + 2);
        if (v112 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v16 = 0;
  v134 = (v9 + 1);
  v135 = v9 + 2;
  v133 = (v9 + 4);
  v17 = _swiftEmptyArrayStorage;
  v121 = v9;
  v138 = v8;
  v117 = a3;
  while (1)
  {
    v18 = v16;
    v122 = v17;
    if (v16 + 1 >= v15)
    {
      v31 = v16 + 1;
    }

    else
    {
      v129 = v15;
      v118 = v5;
      v19 = *a3;
      v20 = v9[9];
      v21 = v16;
      v120 = v16;
      v22 = &v19[v20 * (v16 + 1)];
      v23 = v8;
      v24 = v9[2];
      v25 = v136;
      v24(v136, v22, v23, v13);
      v26 = &v19[v20 * v21];
      v27 = v137;
      v128 = v24;
      (v24)(v137, v26, v23);
      v127 = sub_100C46E04(&qword_1011BA950, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      LODWORD(v130) = dispatch thunk of static Comparable.< infix(_:_:)();
      v28 = v9[1];
      v28(v27, v23);
      v126 = v28;
      v28(v25, v23);
      v29 = v120 + 2;
      v132 = v20;
      v30 = &v19[v20 * (v120 + 2)];
      while (1)
      {
        v31 = v129;
        if (v129 == v29)
        {
          break;
        }

        v32 = v136;
        v33 = v9;
        v34 = v138;
        v35 = v128;
        (v128)(v136, v30, v138);
        v36 = v137;
        v35(v137, v22, v34);
        v37 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v38 = v126;
        (v126)(v36, v34);
        v39 = v34;
        v9 = v33;
        v38(v32, v39);
        ++v29;
        v30 += v132;
        v22 += v132;
        if ((v130 & 1) != v37)
        {
          v31 = v29 - 1;
          break;
        }
      }

      v5 = v118;
      v17 = v122;
      v8 = v138;
      a3 = v117;
      v18 = v120;
      if (v130)
      {
        if (v31 < v120)
        {
          goto LABEL_123;
        }

        if (v120 < v31)
        {
          v40 = v31;
          v41 = v132 * (v31 - 1);
          v42 = v31 * v132;
          v129 = v31;
          v43 = v120;
          v44 = v120 * v132;
          do
          {
            if (v43 != --v40)
            {
              v46 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v130 = *v133;
              v130(v124, &v46[v44], v138);
              if (v44 < v41 || &v46[v44] >= &v46[v42])
              {
                v45 = v138;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v45 = v138;
                if (v44 != v41)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v130(&v46[v41], v124, v45);
              v9 = v121;
              v17 = v122;
            }

            ++v43;
            v41 -= v132;
            v42 -= v132;
            v44 += v132;
          }

          while (v43 < v40);
          v5 = v118;
          v8 = v138;
          v18 = v120;
          v31 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v31 < v47)
    {
      if (__OFSUB__(v31, v18))
      {
        goto LABEL_122;
      }

      if (v31 - v18 < v116)
      {
        if (__OFADD__(v18, v116))
        {
          goto LABEL_124;
        }

        if (v18 + v116 >= v47)
        {
          v48 = a3[1];
        }

        else
        {
          v48 = v18 + v116;
        }

        if (v48 < v18)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v31 != v48)
        {
          break;
        }
      }
    }

    v49 = v31;
    if (v31 < v18)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_100C2888C(0, *(v17 + 2) + 1, 1, v17);
    }

    v51 = *(v17 + 2);
    v50 = *(v17 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v17 = sub_100C2888C((v50 > 1), v51 + 1, 1, v17);
    }

    *(v17 + 2) = v52;
    v53 = &v17[16 * v51];
    *(v53 + 4) = v18;
    *(v53 + 5) = v49;
    v18 = *v119;
    if (!*v119)
    {
      goto LABEL_131;
    }

    v125 = v49;
    if (v51)
    {
      while (1)
      {
        v54 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v55 = *(v17 + 4);
          v56 = *(v17 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_52:
          if (v58)
          {
            goto LABEL_110;
          }

          v71 = &v17[16 * v52];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_113;
          }

          v77 = &v17[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_117;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v52 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v81 = &v17[16 * v52];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_66:
        if (v76)
        {
          goto LABEL_112;
        }

        v84 = &v17[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_115;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_73:
        v92 = v54 - 1;
        if (v54 - 1 >= v52)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v93 = *&v17[16 * v92 + 32];
        v94 = *&v17[16 * v54 + 40];
        sub_100C44880(*a3 + v9[9] * v93, *a3 + v9[9] * *&v17[16 * v54 + 32], *a3 + v9[9] * v94, v18);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v94 < v93)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100C57370(v17);
        }

        if (v92 >= *(v17 + 2))
        {
          goto LABEL_107;
        }

        v95 = &v17[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        v139 = v17;
        sub_100C572E4(v54);
        v17 = v139;
        v52 = *(v139 + 2);
        v8 = v138;
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v17[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_108;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_109;
      }

      v66 = &v17[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_111;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_114;
      }

      if (v70 >= v62)
      {
        v88 = &v17[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_118;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v15 = a3[1];
    v16 = v125;
    if (v125 >= v15)
    {
      goto LABEL_94;
    }
  }

  v118 = v5;
  v96 = *a3;
  v97 = v9[9];
  v132 = v9[2];
  v98 = v96 + v97 * (v31 - 1);
  v99 = -v97;
  v120 = v18;
  v100 = v18 - v31;
  v130 = v96;
  v123 = v97;
  v101 = v96 + v31 * v97;
  v125 = v48;
LABEL_85:
  v128 = v98;
  v129 = v31;
  v126 = v101;
  v127 = v100;
  v102 = v98;
  while (1)
  {
    v103 = v136;
    v104 = v132;
    (v132)(v136, v101, v8);
    v105 = v137;
    v104(v137, v102, v138);
    sub_100C46E04(&qword_1011BA950, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v106 = dispatch thunk of static Comparable.< infix(_:_:)();
    v107 = *v134;
    v108 = v105;
    v8 = v138;
    (*v134)(v108, v138);
    v107(v103, v8);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v31 = v129 + 1;
      v98 = &v128[v123];
      v100 = v127 - 1;
      v101 = &v126[v123];
      v49 = v125;
      if (v129 + 1 != v125)
      {
        goto LABEL_85;
      }

      v5 = v118;
      a3 = v117;
      v9 = v121;
      v17 = v122;
      v18 = v120;
      if (v125 < v120)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v130)
    {
      break;
    }

    v109 = *v133;
    v110 = v131;
    (*v133)(v131, v101, v8);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v8);
    v102 += v99;
    v101 += v99;
    if (__CFADD__(v100++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_100C44880(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = type metadata accessor for IndexPath();
  v8 = *(v50 - 8);
  __chkstk_darwin();
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v38 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v49 = a3;
  v14 = (a2 - a1) / v12;
  v53 = a1;
  v52 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v16;
    if (v16 >= 1)
    {
      v26 = -v12;
      v41 = a4;
      v42 = (v8 + 16);
      v39 = (v8 + 8);
      v40 = a1;
      v27 = a4 + v16;
      v28 = v49;
      v43 = v26;
      do
      {
        v38 = v25;
        v29 = a2 + v26;
        v45 = a2 + v26;
        v46 = v25;
        v44 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v53 = a2;
            v25 = v38;
            goto LABEL_59;
          }

          v31 = v28;
          v49 = v28 + v26;
          v32 = v27 + v26;
          v33 = *v42;
          v34 = v47;
          v35 = v50;
          (*v42)(v47, v27 + v26, v50);
          v36 = v48;
          v33(v48, v29, v35);
          sub_100C46E04(&qword_1011BA950, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          LOBYTE(v33) = dispatch thunk of static Comparable.< infix(_:_:)();
          v37 = *v39;
          (*v39)(v36, v35);
          v37(v34, v35);
          if (v33)
          {
            break;
          }

          v28 = v49;
          if (v31 < v27 || v49 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v45;
            a1 = v40;
          }

          else
          {
            v29 = v45;
            a1 = v40;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = v32;
          v27 = v32;
          v30 = v32 > v41;
          v26 = v43;
          a2 = v44;
          if (!v30)
          {
            v25 = v46;
            goto LABEL_58;
          }
        }

        v28 = v49;
        if (v31 < v44 || v49 >= v44)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v40;
        }

        else
        {
          a2 = v45;
          a1 = v40;
          if (v31 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v46;
        v26 = v43;
      }

      while (v27 > v41);
    }

LABEL_58:
    v53 = a2;
LABEL_59:
    v51 = v25;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v15;
    v51 = a4 + v15;
    if (v15 >= 1 && a2 < v49)
    {
      v44 = *(v8 + 16);
      v45 = v8 + 16;
      v42 = v12;
      v43 = (v8 + 8);
      do
      {
        v18 = v47;
        v19 = v50;
        v20 = v44;
        (v44)(v47, a2, v50);
        v21 = v48;
        v20(v48, a4, v19);
        sub_100C46E04(&qword_1011BA950, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        LOBYTE(v20) = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *v43;
        (*v43)(v21, v19);
        v22(v18, v19);
        if (v20)
        {
          v23 = v42;
          if (a1 < a2 || a1 >= &v42[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v23;
        }

        else
        {
          v23 = v42;
          v24 = &v42[a4];
          if (a1 < a4 || a1 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v52 = v24;
          a4 += v23;
        }

        a1 += v23;
        v53 = a1;
      }

      while (a4 < v46 && a2 < v49);
    }
  }

  sub_100C44E74(&v53, &v52, &v51);
}

uint64_t sub_100C44E74(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for IndexPath();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t (*sub_100C44F58(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10057DC70(v5);
  v5[9] = sub_100C45B2C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10057D208;
}

uint64_t (*sub_100C44FFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = sub_10057DCA4(v9);
  v9[9] = sub_100C45D8C(v9 + 4, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  return sub_100C46EC8;
}

uint64_t sub_100C450B8(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  v10 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v8 + 16);
  if (*v1)
  {

    sub_100C458DC(a1, v10, v11, (v9 + 16), v9 + 32);
    v13 = v12;
    v15 = v14;

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v11)
    {
      v22[1] = v1;
      v17 = 0;
      v20 = *(v4 + 16);
      v19 = v4 + 16;
      v18 = v20;
      v23 = *(v19 + 56);
      v24 = v11;
      while (1)
      {
        v18(v7, v10, v3, v5);
        sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v19 - 8))(v7, v3);
        if (v21)
        {
          return 0;
        }

        ++v17;
        v10 += v23;
        if (v24 == v17)
        {
          v15 = 0;
          goto LABEL_10;
        }
      }
    }

    v15 = 0;
  }

LABEL_10:
  sub_100C452C0(a1, v15);
  return 1;
}

void sub_100C452C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = v2 + 1;
  v10 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100C5C944(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_100C5C944((v12 > 1), v13 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v13 + 1;
  (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  v2[1] = v10;
  if (*v2)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v13)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v2;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v17 = _HashTable.copy()();

        *v2 = v17;
        v16 = v17;
      }

      if (v16)
      {
        _HashTable.UnsafeHandle.subscript.setter();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v13 < 0xF)
  {
    return;
  }

  sub_100C45508(v14);
}

void sub_100C45508(__n128 a1)
{
  v2 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  if (v3 || *(v4 + 16) >= 0x10uLL)
  {
    v6 = static _HashTable.scale(forCapacity:)();
    if (v3 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v5 = sub_100C455A8(v4, v8, 0, v3, v7);
  }

  else
  {
    v5 = 0;
  }

  *v1 = v5;
}

uint64_t sub_100C455A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = _HashTable.init(scale:reservedScale:)();
    sub_100C45628(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

void sub_100C456C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v6 = type metadata accessor for IndexPath();
  v8 = __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  if (a2)
  {
    if ((v40 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v7 + 16);
      v12 = v7 + 16;
      v28 = *(v12 + 56);
      v29 = v13;
      v30 = v12;
      v27 = (v12 - 8);
      v13(v10, v32, v6, v8);
      while (1)
      {
        sub_100C46E04(&qword_1011BA688, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & v15;
        v20 = v31;
        v21 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        v23 = v22;
        v25 = v24;
        (*v27)(v10, v6);
        v33 = a3;
        v34 = v20;
        v35 = v19;
        v36 = v21;
        v37 = v23;
        v38 = v25;
        v39 = 0;
        while (v36)
        {
          _HashTable.BucketIterator.advance()();
        }

        _HashTable.BucketIterator.currentValue.setter();
        if (++v11 == v40)
        {
          return;
        }

        v29(v10, v32 + v28 * v11, v6, v14);
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_100C458DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v29 = a2;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100C46E04(&qword_1011BA688, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v28[1] = a1;
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v37 = 0;
    v20 = _HashTable.BucketIterator.currentValue.getter();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v22 = v24;
      v25 = *(v23 + 56);
      do
      {
        v22(v11, v29 + v25 * v20, v8);
        sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v23 - 8))(v11, v8);
        if (v26)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v30 = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v20 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v27 & 1) == 0);
    }

    return v20;
  }

  return result;
}

void (*sub_100C45B2C(uint64_t *a1, uint64_t a2, char a3))(void **a1, char a2, __n128 a3)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = a2;
  *(v8 + 24) = v3;
  v10 = *v3;
  v11 = sub_100C309F0(a2);
  *(v9 + 9) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = v12 ^ 1;
  v15 = __OFADD__(v13, (v12 ^ 1) & 1);
  v16 = v13 + ((v12 ^ 1) & 1);
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_100C56170();
      v11 = v19;
      goto LABEL_11;
    }

    sub_100C559AC(v16, a3 & 1);
    v11 = sub_100C309F0(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 32) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  *(v9 + 8) = v14 & 1;
  return sub_100C45C7C;
}

void sub_100C45C7C(void **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *v3;
  LOBYTE(v5) = *(v3 + 8);
  LOBYTE(v6) = *(v3 + 9);
  if (a2)
  {
    if (v3[1])
    {
      goto LABEL_8;
    }

    v7 = v3[4];
    v5 = *v3[3];
    if (*(v3 + 9))
    {
      goto LABEL_11;
    }

    v8 = v3[2];
    v5[(v7 >> 6) + 8] |= 1 << v7;
    *(v5[6] + 8 * v7) = v8;
    v6 = v5[7];
    *(v6 + 8 * v7) = v4;
    v9 = v5[2];
    v10 = __OFADD__(v9, 1);
    v4 = v9 + 1;
    if (!v10)
    {
LABEL_13:
      v5[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v6)
    {
      v11 = v3;
      sub_100C433D8(v3[4], *v3[3], a3);
      v3 = v11;
    }

    goto LABEL_14;
  }

  v7 = v3[4];
  v5 = *v3[3];
  if ((v6 & 1) == 0)
  {
    v12 = v3[2];
    v5[(v7 >> 6) + 8] |= 1 << v7;
    *(v5[6] + 8 * v7) = v12;
    *(v5[7] + 8 * v7) = v4;
    v13 = v5[2];
    v10 = __OFADD__(v13, 1);
    v4 = v13 + 1;
    if (v10)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(v5[7] + 8 * v7) = v4;
LABEL_14:

  free(v3);
}

void (*sub_100C45D8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t **a1, char a2)
{
  v6 = v5;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x38uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a4;
  v12[4] = v5;
  v12[1] = a2;
  v12[2] = a3;
  v14 = *v5;
  v15 = sub_100019F90(a2, a3, a4);
  *(v13 + 48) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      sub_100C5659C();
      v15 = v23;
      goto LABEL_11;
    }

    sub_10001A034(v20, a5 & 1);
    v15 = sub_100019F90(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v13[5] = v15;
  if (v21)
  {
    v25 = *(*(*v6 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v13 = v25;
  return sub_100C45EF8;
}

void sub_100C45EF8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 48);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[5];
    v6 = *v2[4];
    if ((*a1)[6])
    {
      goto LABEL_9;
    }

    v7 = v2[3];
    v8 = v6[6] + 24 * v5;
    v9 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v8 = v9;
    *(v8 + 16) = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v19 = v2[3];
      v6[2] = v4;

      v20 = v19;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[5];
      v13 = *v2[4];
      sub_100C46E4C(*(v13 + 48) + 24 * v12);
      sub_100C43548(v12, v13, v14);
    }

    goto LABEL_14;
  }

  v5 = v2[5];
  v6 = *v2[4];
  if ((v4 & 1) == 0)
  {
    v15 = v2[3];
    v16 = v6[6] + 24 * v5;
    v17 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v16 = v17;
    *(v16 + 16) = v15;
    *(v6[7] + 8 * v5) = v3;
    v18 = v6[2];
    v11 = __OFADD__(v18, 1);
    v4 = v18 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

void sub_100C4605C(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v24 - v7;
  v27 = *(a1 + 16);
  if (v27)
  {
    v9 = 0;
    v12 = *(v5 + 16);
    v10 = v5 + 16;
    v11 = v12;
    v29 = *(v10 + 56);
    v13 = (v10 - 8);
    v26 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v25 = a1 + v26;
    (v12)(v8, a1 + v26, v2, v6);
    while (1)
    {
      v17 = *v28;
      v16 = v28[1];
      v18 = v16 + v26;
      v19 = *(v16 + 16);
      if (*v28)
      {

        sub_100C458DC(v8, v18, v19, (v17 + 16), v17 + 32);
        v21 = v20;
        v14 = v22;

        if (v21)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (!v19)
        {
LABEL_3:
          v14 = 0;
LABEL_4:
          sub_100C452C0(v8, v14);
          goto LABEL_5;
        }

        while (1)
        {
          v11(v4, v18, v2);
          sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v13)(v4, v2);
          if (v23)
          {
            break;
          }

          v18 += v29;
          if (!--v19)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_5:
      ++v9;
      (*v13)(v8, v2);
      if (v9 == v27)
      {
        return;
      }

      (v11)(v8, v25 + v29 * v9, v2, v15);
    }
  }
}

uint64_t sub_100C46308(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = *(a1 + 16);
  sub_100C46E04(&qword_1011BA688, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  result = Set.init(minimumCapacity:)();
  v16 = result;
  if (v8)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v5, v13, v2);
      sub_100C41CE0(v7, v5);
      (*(v10 - 8))(v7, v2);
      v13 += v14;
      --v8;
    }

    while (v8);
    return v16;
  }

  return result;
}

void sub_100C464DC(uint64_t a1)
{
  sub_100C466D8(319, &qword_1011BA7F0, &qword_1011BA7F8, &unk_100F0CF60, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for IndexSet();
    if (v2 <= 0x3F)
    {
      sub_100C466D8(319, &qword_1011BA800, &qword_1011BA778, &unk_100F0CF20, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100C46644(319);
        if (v4 <= 0x3F)
        {
          sub_100C466D8(319, &unk_1011BA810, &qword_1011BA4F8, &qword_100F0C740, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100C46644(uint64_t a1)
{
  if (!qword_1011BA808)
  {
    type metadata accessor for IndexPath();
    sub_100C46E04(&qword_1011BA688, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v1 = type metadata accessor for OrderedSet();
    if (!v2)
    {
      atomic_store(v1, &qword_1011BA808);
    }
  }
}

void sub_100C466D8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100C4673C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100C467CC(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 91;
  v24 = 0xE100000000000000;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v3 + 72);
    v9 = *(v3 + 16);
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9(v6, a1 + v21, v2, v4);
    sub_10010FC20(&qword_1011BA918, &qword_100F0CFC0);
    v10 = swift_allocObject();
    v22 = xmmword_100EBC6B0;
    *(v10 + 16) = xmmword_100EBC6B0;
    *(v10 + 56) = v2;
    v11 = sub_10001C8B8((v10 + 32));
    (v9)(v11, v6, v2);
    debugPrint<A>(_:separator:terminator:to:)();

    v12 = *(v3 + 8);
    v12(v6, v2);
    v13 = v7 - 1;
    if (v13)
    {
      v14 = a1 + v8 + v21;
      do
      {
        (v9)(v6, v14, v2);
        v15._countAndFlagsBits = 8236;
        v15._object = 0xE200000000000000;
        String.append(_:)(v15);
        sub_10010FC20(&qword_1011BA918, &qword_100F0CFC0);
        v16 = swift_allocObject();
        *(v16 + 16) = v22;
        *(v16 + 56) = v2;
        v17 = sub_10001C8B8((v16 + 32));
        (v9)(v17, v6, v2);
        debugPrint<A>(_:separator:terminator:to:)();

        v12(v6, v2);
        v14 += v8;
        --v13;
      }

      while (v13);
    }
  }

  v18._countAndFlagsBits = 93;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  return v23;
}

uint64_t sub_100C46A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BA4F8, &qword_100F0C740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C46AD4()
{

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100C46B6C()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100C46C2C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v5(v6, &a1[*(TupleTypeMetadata2 + 48)]);
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_100C46CF8(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BA928, &qword_100F0CFD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100C46D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BA4F8, &qword_100F0C740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C46DD0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100C46E04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100C46ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100C4BA28();

  return static ApproximatelyEquatable<>.==~ infix(_:_:)();
}

uint64_t static ApproximatelyComparable<>.<~ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)())
  {
    return 0;
  }

  else
  {
    return dispatch thunk of static Comparable.< infix(_:_:)() & 1;
  }
}

uint64_t static ApproximatelyComparable<>.>~ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)())
  {
    return 0;
  }

  else
  {
    return dispatch thunk of static Comparable.> infix(_:_:)() & 1;
  }
}

uint64_t Result.init(success:failure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v33 = a2;
  v35 = a6;
  v34 = type metadata accessor for Optional();
  v9 = *(v34 - 8);
  __chkstk_darwin();
  v11 = &v30 - v10;
  v32 = *(a4 - 8);
  __chkstk_darwin();
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  __chkstk_darwin();
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Result();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin();
  v20 = &v30 - v19;
  if ((*(v13 + 48))(a1, 1, a3, v18) != 1)
  {
    (*(v9 + 8))(v33, v34);
    v26 = *(v13 + 32);
    v26(v15, a1, a3);
    v26(v20, v15, a3);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v25 = v35;
    (*(v17 + 32))(v35, v20, v16);
    v24 = 0;
    return (*(v17 + 56))(v25, v24, 1, v16);
  }

  v21 = type metadata accessor for Optional();
  (*(*(v21 - 8) + 8))(a1, v21);
  v22 = v34;
  (*(v9 + 32))(v11, v33, v34);
  v23 = v32;
  if ((*(v32 + 48))(v11, 1, a4) != 1)
  {
    v27 = *(v23 + 32);
    v28 = v31;
    v27(v31, v11, a4);
    v27(v20, v28, a4);
    goto LABEL_6;
  }

  (*(v9 + 8))(v11, v22);
  v24 = 1;
  v25 = v35;
  return (*(v17 + 56))(v25, v24, 1, v16);
}

uint64_t Collection.limited(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __chkstk_darwin();
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2, v6);
  if (dispatch thunk of Collection.count.getter() > a1 && __OFSUB__(dispatch thunk of Collection.count.getter(), a1))
  {
    __break(1u);
  }

  return Sequence.dropLast(_:)();
}

uint64_t Collection.asyncForEach<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_100C474FC, 0, 0);
}

uint64_t sub_100C474FC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v1[1] = *(v0 + 32);
  v1[2] = v2;
  v1[3] = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_100C475E8;
  v5 = *(v0 + 40);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, v5, &type metadata for () + 1, 0, 0, &unk_100F0D010, v1, v5);
}

uint64_t sub_100C475E8()
{

  return _swift_task_switch(sub_1006E1274, 0, 0);
}

uint64_t sub_100C47700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v8[9] = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[11] = v11;
  v8[12] = *(v11 + 64);
  v8[13] = swift_task_alloc();
  sub_10010FC20(&unk_1011BA2C0, &qword_100F0C668);
  v8[14] = swift_task_alloc();
  type metadata accessor for Optional();
  v8[15] = swift_task_alloc();
  v8[16] = *(a6 - 8);
  v8[17] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v8[18] = v12;
  v8[19] = *(v12 - 8);
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_100C47934, 0, 0);
}

uint64_t sub_100C47934()
{
  v1 = *(v0 + 88);
  (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 24), *(v0 + 48));
  dispatch thunk of Sequence.makeIterator()();
  while (1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 80);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    if ((*(v1 + 48))(v2, 1, v3) == 1)
    {
      break;
    }

    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 40);
    v16 = *(v0 + 32);
    v17 = *(v0 + 48);
    v9 = type metadata accessor for TaskPriority();
    v18 = *(v0 + 56);
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = *(v1 + 32);
    v10(v6, v5, v7);
    v11 = (*(v1 + 80) + 72) & ~*(v1 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v17;
    *(v12 + 40) = v18;
    *(v12 + 56) = v16;
    *(v12 + 64) = v8;
    v10(v12 + v11, v6, v7);
    v13 = type metadata accessor for TaskGroup();

    sub_100C47DC4(v4, &unk_100F0D1B0, v12, v13);
    sub_10001CD18(v4);
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100C47BDC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10002F3F4;

  return sub_100C47700(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_100C47CB8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10002F3F4;

  return v11(a1, a6);
}

double sub_100C47DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_10010FC20(&unk_1011BA2C0, &qword_100F0C668);
  __chkstk_darwin();
  v11 = v21 - v10;
  sub_100020A9C(a1, v21 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10001CD18(v11);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v5;
  v18 = swift_allocObject();
  v18[2] = *(a4 + 16);
  v18[3] = a2;
  v18[4] = a3;
  v19 = (v16 | v14);
  if (v16 | v14)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v14;
    v22[3] = v16;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v17;
  swift_task_create();

  return result;
}

uint64_t Collection.asyncMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = type metadata accessor for Optional();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100C48090, 0, 0);
}

void sub_100C48090()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  v12 = *(v0 + 32);
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v8 = dispatch thunk of Collection.count.getter();
  v9 = sub_100C21628(v1, v8, v4);
  (*(v2 + 8))(v1, v4);
  *(v0 + 16) = v9;
  swift_getTupleTypeMetadata2();
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  *(v10 + 32) = v5;
  *(v10 + 40) = v3;
  *(v10 + 48) = v12;
  *(v10 + 64) = v0 + 16;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_100C48260;

  JUMPOUT(0x100C49528);
}

uint64_t sub_100C48260()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100C484AC;
  }

  else
  {

    v2 = sub_100C4837C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C4837C()
{
  v1 = *(v0 + 48);
  *(v0 + 24) = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = *(v0 + 56);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v4 = Sequence.compactMap<A>(_:)();
  swift_bridgeObjectRelease_n();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100C484AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C48520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v17;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v9 = type metadata accessor for Optional();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[16] = v11;
  v8[17] = *(v11 + 64);
  v8[18] = swift_task_alloc();
  sub_10010FC20(&unk_1011BA2C0, &qword_100F0C668);
  v8[19] = swift_task_alloc();
  v8[20] = swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  v8[21] = swift_task_alloc();
  v8[22] = sub_1001109D0(qword_1011B9C20, "Rd\n");
  v12 = type metadata accessor for ThrowingTaskGroup.Iterator();
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_getTupleTypeMetadata2();
  v13 = type metadata accessor for Optional();
  v8[27] = v13;
  v8[28] = *(v13 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = type metadata accessor for EnumeratedSequence();
  v8[32] = swift_task_alloc();
  v14 = type metadata accessor for EnumeratedSequence.Iterator();
  v8[33] = v14;
  v8[34] = *(v14 - 8);
  v8[35] = swift_task_alloc();

  return _swift_task_switch(sub_100C488D4, 0, 0);
}

uint64_t sub_100C488D4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 128);
  Sequence.enumerated()();
  EnumeratedSequence.makeIterator()();
  v23 = v3;
  v24 = v2;
  v25 = v2 - 8;
  while (1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    EnumeratedSequence.Iterator.next()();
    (*(v1 + 32))(v4, v5, v6);
    if ((*(*v25 + 48))(v4, 1, v7) == 1)
    {
      break;
    }

    v8 = *(v0 + 240);
    v9 = *(v0 + 152);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v29 = *(v0 + 80);
    v12 = *(v0 + 48);
    v28 = *(v0 + 40);
    v27 = *v8;
    v13 = *(v24 + 48);
    v14 = type metadata accessor for TaskPriority();
    v26 = *(v0 + 64);
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = *(v23 + 32);
    v15(v10, &v8[v13], v11);
    v16 = (*(v23 + 80) + 80) & ~*(v23 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v26;
    *(v17 + 48) = v29;
    *(v17 + 56) = v27;
    *(v17 + 64) = v28;
    *(v17 + 72) = v12;
    v15((v17 + v16), v10, v11);
    v18 = type metadata accessor for ThrowingTaskGroup();

    sub_100C49354(v9, &unk_100F0D1A0, v17, v18);
    sub_10001CD18(v9);
  }

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v0 + 288) = type metadata accessor for Array();
  Array._makeMutableAndUnique()();
  UIScreen.Dimensions.size.getter();
  Array._makeMutableAndUnique()();
  UIScreen.Dimensions.size.getter();
  v19 = swift_task_alloc();
  *(v0 + 296) = v19;
  *v19 = v0;
  v19[1] = sub_100C48C40;
  v20 = *(v0 + 184);
  v21 = *(v0 + 168);

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v21, 0, 0, v20, v0 + 16);
}

uint64_t sub_100C48C40()
{

  if (v0)
  {
    v1 = sub_100C49008;
  }

  else
  {
    v1 = sub_100C48D50;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100C48D50()
{
  v2 = v0[20];
  v1 = v0[21];
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v8 = v0[9];
    v9 = v0[7];
    v10 = *v1;
    v11 = *(v2 + 48);
    v12 = *(v8 - 8);
    (*(v12 + 32))(v5, v1 + v11, v8);
    (*(v12 + 56))(v5, 0, 1, v8);
    Array._makeMutableAndUnique()();
    sub_100C215D4(v10, *v9, v7);
    (*(v6 + 40))(*v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5, v7);
    UIScreen.Dimensions.size.getter();
    v13 = swift_task_alloc();
    v0[37] = v13;
    *v13 = v0;
    v13[1] = sub_100C48C40;
    v14 = v0[23];
    v15 = v0[21];

    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v15, 0, 0, v14, v0 + 2);
  }
}

uint64_t sub_100C49008()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C49108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return _swift_task_switch(sub_100C49138, 0, 0);
}

uint64_t sub_100C49138()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100C49260;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_100C49260()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_100C49354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_10010FC20(&unk_1011BA2C0, &qword_100F0C668);
  __chkstk_darwin();
  v9 = v18 - v8;
  sub_100020A9C(a1, v18 - v8);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10001CD18(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v5;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();

  return result;
}

uint64_t sub_100C49528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_10002F3F4;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

BOOL Collection<>.contains(approximatelyMatching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a1;
  Sequence.first(where:)();
  v13 = (*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) != 1;
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t static DisplayUnit.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v37 = *(a3 - 8);
  __chkstk_darwin();
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v30 - v5;
  v34 = v6;
  v8 = type metadata accessor for DisplayUnit(0, v7, v6, v6);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v30 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = __chkstk_darwin();
  v18 = &v30 - v17;
  v20 = *(v19 + 48);
  v33 = v9;
  v21 = *(v9 + 16);
  v21(&v30 - v17, v35, v8, v16);
  (v21)(&v18[v20], v36, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v21)(v13, v18, v8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v37;
      v28 = v31;
      (*(v37 + 32))(v31, &v18[v20], a3);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v27 + 8);
      v25(v28, a3);
      v26 = v13;
      goto LABEL_6;
    }

LABEL_8:
    (*(v37 + 8))(v13, a3);
    v24 = 0;
    v8 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  (v21)(v11, v18, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v13 = v11;
    goto LABEL_8;
  }

  v22 = v37;
  v23 = v32;
  (*(v37 + 32))(v32, &v18[v20], a3);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v22 + 8);
  v25(v23, a3);
  v26 = v11;
LABEL_6:
  v25(v26, a3);
  v15 = v33;
LABEL_9:
  (*(v15 + 8))(v18, v8);
  return v24 & 1;
}

uint64_t ClosedRange<>.linearMap(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v10 - v6;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  v8 = *(v3 + 8);
  v8(v5, v2);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  return (v8)(v7, v2);
}

uint64_t ClosedRange<>.normalize(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v11 - v7;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  dispatch thunk of static FloatingPoint./ infix(_:_:)();
  v9 = *(v4 + 8);
  v9(v6, v3);
  return (v9)(v8, v3);
}

uint64_t ClosedRange<>.clampedNormalize(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ClosedRange.clamp(_:)(v9, v10);
  ClosedRange<>.normalize(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, v5);
}

uint64_t Array.extract(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_getWitnessTable();
  result = _ArrayProtocol.filter(_:)();
  if (!v3)
  {
    v5 = result;
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.removeAll(where:)();
    return v5;
  }

  return result;
}

void Array.extractFirst(where:)(uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  swift_getWitnessTable();
  Collection.firstIndex(where:)();

  if (!v4)
  {
    if (v7)
    {
      (*(*(*(a3 + 16) - 8) + 56))(a4, 1, 1);
    }

    else
    {
      Array.remove(at:)();
      (*(*(*(a3 + 16) - 8) + 56))(a4, 0, 1);
    }
  }
}

uint64_t Array.removingDuplicates<A>(with:)(void *a1, uint64_t a2, uint64_t a3)
{
  Set.init()();
  type metadata accessor for Array();

  swift_getWitnessTable();
  v3 = _ArrayProtocol.filter(_:)();

  return v3;
}

uint64_t sub_100C4A318(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(*a3 + class metadata base offset for KeyPath + 8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v7 = &v10 - v6;
  swift_getAtKeyPath();
  type metadata accessor for Set();
  v8 = Set.insert(_:)();
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

uint64_t Collection.removingDuplicates<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 - 8);
  __chkstk_darwin();
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = Set.init()();
  (*(v9 + 16))(v11, v4, a2);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = &v20;
  v19 = a1;
  v12 = Sequence.filter(_:)();

  return v12;
}

uint64_t sub_100C4A5DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + class metadata base offset for KeyPath + 8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v9 = &v12 - v8;
  swift_getAtKeyPath();
  type metadata accessor for Set();
  v10 = Set.insert(_:)();
  (*(v7 + 8))(v9, v6);
  return v10 & 1;
}

uint64_t sub_100C4A790(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, void *a5)
{
  v6 = *(*a5 + class metadata base offset for KeyPath + 8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v15 - v10;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v12 = a3(v11, v9);
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v11, v6);
  return v12 & 1;
}

uint64_t Sequence<>.excluding(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = Sequence.exclude(_:)(sub_100C4BAE4, v8, a2, a3);

  return v9;
}

{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();

  swift_getWitnessTable();
  v7 = Set.init<A>(_:)();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = v7;
  v9 = Sequence.exclude(_:)(sub_100C4BA7C, v8, a2, a3);

  return v9;
}

uint64_t sub_100C4A9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence<>.contains(_:)() & 1;
}

uint64_t Sequence.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __chkstk_darwin();
  (*(v11 + 16))(&v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v4, v9);
  v14 = a3;
  v15 = a4;
  v16 = a1;
  v17 = a2;
  return Sequence.filter(_:)();
}

uint64_t Sequence<>.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  return Sequence.exclude(_:)(sub_100C4B5D0, v5, a2, a3);
}

{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  return Sequence.exclude(_:)(sub_100C4B650, v5, a2, a3);
}

uint64_t Sequence<>.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a1;
  return Sequence.exclude(_:)(sub_100C4B63C, v4, a2, a3);
}

double Sequence.firstNonNil<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for LazySequence();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  Sequence.lazy.getter();
  swift_getWitnessTable();
  v9 = Sequence.compactMap<A>(_:)();
  (*(v6 + 8))(v8, v5);
  v11 = v9;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  return result;
}

double Sequence.firstNonNilWithOriginal<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a1;
  v9[6] = a2;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return Sequence.firstNonNil<A>(_:)(sub_100C4B6C8, v9, a3, TupleTypeMetadata2, a5);
}

uint64_t sub_100C4AFBC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24[0] = a5;
  v24[1] = a3;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v24 - v12;
  v14 = *(a4 - 8);
  v15 = __chkstk_darwin();
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v15);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    (*(v11 + 8))(v13, v10);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a6, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v20 = *(v14 + 32);
    v20(v17, v13, a4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v22 = swift_getTupleTypeMetadata2();
    v23 = *(v22 + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(a6, a1, AssociatedTypeWitness);
    v20((a6 + v23), v17, a4);
    return (*(*(v22 - 8) + 56))(a6, 0, 1, v22);
  }
}

void sub_100C4B314()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  JUMPOUT(0x100C48520);
}

uint64_t sub_100C4B6F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100C4B758(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_100C4B864(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

unint64_t sub_100C4BA28()
{
  result = qword_1011BAAE0[0];
  if (!qword_1011BAAE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011BAAE0);
  }

  return result;
}

uint64_t sub_100C4BA7C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return Set.contains(_:)(a1, v3, AssociatedTypeWitness, v4);
}

void sub_100C4BAF0()
{
  swift_getAssociatedTypeWitness();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  JUMPOUT(0x100C49108);
}

uint64_t sub_100C4BC4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100008F30;

  return sub_100C47CB8(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_100C4BD90(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

void Text.withChevron<A>(_:tintColor:)(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a9@<X8>)
{
  type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin();
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:a1];

  if (v16)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
    v18._countAndFlagsBits = 41154;
    v18._object = 0xA200000000000000;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v18);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
    v20 = [v16 imageWithRenderingMode:2];
    Image.init(uiImage:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
    LocalizedStringKey.init(stringInterpolation:)();
    v22 = Text.init(_:tableName:bundle:comment:)();
    v24 = v23;
    v26 = v25;
    v27 = Text.foregroundStyle<A>(_:)();
    v29 = v28;
    v31 = v30;
    sub_10011895C(v22, v24, v26 & 1);

    v32 = static Text.+ infix(_:_:)();
    a4 = v33;
    v35 = v34;
    a6 = v36;

    sub_10011895C(v27, v29, v31 & 1);

    *a9 = v32;
  }

  else
  {
    *a9 = a3;
    v35 = a5;
    sub_10021D0C0(a3, a4, a5 & 1);
  }

  *(a9 + 8) = a4;
  *(a9 + 16) = v35 & 1;
  *(a9 + 24) = a6;
}

uint64_t Text.playableForegroundStyle<A>(_:isPlayable:)(int *a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, void *a8)
{
  v10 = __chkstk_darwin();
  (*(v12 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13, v10);
  if (swift_dynamicCast())
  {
    if (a2)
    {
      v14 = v16[7];
    }

    else
    {
      v14 = static HierarchicalShapeStyle.tertiary.getter();
    }

    v16[3] = v14;
  }

  return Text.foregroundStyle<A>(_:)();
}

uint64_t View.playableForegroundStyle<A>(_:isPlayable:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = *(a4 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PlayableForegroundStyle(0, v11, v12, v11);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = &v19 - v16;
  (*(v8 + 16))(v10, a1, a4, v15);
  (*(v8 + 32))(v17, v10, a4);
  v17[*(v13 + 36)] = a2;
  View.modifier<A>(_:)();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_100C4C46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v67 = a1;
  v71 = a3;
  swift_getWitnessTable();
  v6 = type metadata accessor for _ViewModifier_Content();
  v7 = *(a2 + 16);
  v59 = *(a2 + 24);
  v72 = type metadata accessor for _ForegroundStyleModifier();
  v8 = type metadata accessor for ModifiedContent();
  v65 = *(v8 - 8);
  __chkstk_darwin();
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v57 - v10;
  sub_1001109D0(&qword_1011BAB68, &qword_100F0D248);
  v11 = v6;
  v64 = *(type metadata accessor for ModifiedContent() - 8);
  __chkstk_darwin();
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v57 - v13;
  __chkstk_darwin();
  v60 = &v57 - v15;
  v16 = *(v7 - 8);
  __chkstk_darwin();
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v19;
  v20 = type metadata accessor for _ConditionalContent();
  v69 = *(v20 - 8);
  v70 = v20;
  v21 = __chkstk_darwin();
  v23 = &v57 - v22;
  v24 = v4;
  (*(v16 + 16))(v18, v4, v7, v21);
  v25 = swift_dynamicCast();
  v66 = v11;
  if (v25)
  {
    v26 = v68;
    v65 = v23;
    v27 = *(v24 + *(a2 + 36));
    v58 = v8;
    if (v27)
    {
      v28 = v87;
    }

    else
    {
      v28 = static HierarchicalShapeStyle.quaternary.getter();
    }

    v87 = v28;
    WitnessTable = swift_getWitnessTable();
    View.foregroundStyle<A>(_:)();
    v40 = sub_100C4D29C();
    v75 = WitnessTable;
    v76 = v40;
    v67 = swift_getWitnessTable();
    v41 = v64;
    v42 = *(v64 + 16);
    v43 = v60;
    v42(v60, v14, v26);
    v44 = *(v41 + 8);
    v44(v14, v26);
    v45 = v61;
    v42(v61, v43, v26);
    v46 = swift_getWitnessTable();
    v73 = WitnessTable;
    v74 = v46;
    v47 = v58;
    v48 = swift_getWitnessTable();
    v23 = v65;
    sub_100C4CBBC(v45, v26, v47, v67, v48);
    v44(v45, v26);
    v44(v43, v26);
  }

  else
  {
    v29 = swift_getWitnessTable();
    v30 = v62;
    View.foregroundStyle<A>(_:)();
    v31 = swift_getWitnessTable();
    v85 = v29;
    v86 = v31;
    v67 = swift_getWitnessTable();
    v32 = v65;
    v33 = *(v65 + 2);
    v34 = v63;
    v33(v63, v30, v8);
    v35 = *(v32 + 1);
    v35(v30, v8);
    v33(v30, v34, v8);
    v36 = sub_100C4D29C();
    v83 = v29;
    v84 = v36;
    v37 = v68;
    v38 = swift_getWitnessTable();
    sub_100C4CCB4(v30, v37, v8, v38, v67);
    v35(v30, v8);
    v35(v34, v8);
  }

  v49 = swift_getWitnessTable();
  v50 = sub_100C4D29C();
  v81 = v49;
  v82 = v50;
  v51 = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  v79 = v49;
  v80 = v52;
  v53 = swift_getWitnessTable();
  v77 = v51;
  v78 = v53;
  v54 = v70;
  swift_getWitnessTable();
  v55 = v69;
  (*(v69 + 16))(v71, v23, v54);
  return (*(v55 + 8))(v23, v54);
}

uint64_t sub_100C4CBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ConditionalContent.Storage();
  v7 = __chkstk_darwin();
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100C4CCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ConditionalContent.Storage();
  v7 = __chkstk_darwin();
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t _UIHostingView.init(content:)(uint64_t a1)
{
  v1 = __chkstk_darwin();
  v2(v1);
  return dispatch thunk of _UIHostingView.__allocating_init(rootView:)();
}

uint64_t sub_100C4CE40(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100C4CEB8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_100C4D02C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

unint64_t sub_100C4D29C()
{
  result = qword_1011BAB70;
  if (!qword_1011BAB70)
  {
    sub_1001109D0(&qword_1011BAB68, &qword_100F0D248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BAB70);
  }

  return result;
}

id TextKitManager.container.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void TextKitManager.container.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

double TextKitManager.fragments.getter()
{
  swift_beginAccess();

  return result;
}

double TextKitManager.fragments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

uint64_t TextKitManager.__allocating_init(text:size:)(void *a1, double a2)
{
  v4 = swift_allocObject();
  TextKitManager.init(text:size:)(a1, a2);
  return v4;
}

void TextKitManager.init(text:size:)(void *a1, double a2)
{
  v2[5] = _swiftEmptyArrayStorage;
  v5 = [objc_allocWithZone(NSTextLayoutManager) init];
  [v5 setUsesFontLeading:0];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v7 = String._bridgeToObjectiveC()();
  [v5 setValue:isa forKey:v7];

  v2[2] = v5;
  v8 = objc_allocWithZone(NSTextContentStorage);
  v9 = v5;
  v10 = [v8 init];
  [v10 setAttributedString:a1];
  [v10 addTextLayoutManager:v9];
  v2[3] = v10;
  v11 = objc_allocWithZone(NSTextContainer);
  v12 = v10;
  v13 = [v11 initWithSize:{a2, 0.0}];
  [v13 setLineFragmentPadding:0.0];
  v14 = v13;
  [v9 setTextContainer:v14];
  v2[4] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100C4EAA4;
  *(v15 + 24) = v2;
  v18[4] = sub_1005579B4;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100555B78;
  v18[3] = &unk_1010F1D28;
  v16 = _Block_copy(v18);

  v17 = [v9 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v16];

  swift_unknownObjectRelease();
  _Block_release(v16);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

uint64_t sub_100C4D76C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return 1;
}

Swift::Void __swiftcall TextKitManager.update(with:)(NSAttributedString with)
{
  [*(v1 + 24) setAttributedString:with.super.isa];
  v2 = *(v1 + 16);
  v3 = [v2 documentRange];
  [v2 invalidateLayoutForRange:v3];

  swift_beginAccess();
  *(v1 + 40) = _swiftEmptyArrayStorage;

  v4 = swift_allocObject();
  *(v4 + 16) = sub_100C4E6C8;
  *(v4 + 24) = v1;
  aBlock[4] = sub_100C4EAA8;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100555B78;
  aBlock[3] = &unk_1010F1D78;
  v5 = _Block_copy(aBlock);

  v6 = [v2 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v5];
  swift_unknownObjectRelease();
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void TextKitManager.update(with:)(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  [v3 size];
  [v3 setSize:a1];

  v4 = *(v1 + 16);
  v5 = [v4 documentRange];
  [v4 invalidateLayoutForRange:v5];

  swift_beginAccess();
  *(v1 + 40) = _swiftEmptyArrayStorage;

  v6 = swift_allocObject();
  *(v6 + 16) = sub_100C4EAA4;
  *(v6 + 24) = v1;
  v9[4] = sub_100C4EAA8;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100555B78;
  v9[3] = &unk_1010F1DC8;
  v7 = _Block_copy(v9);

  v8 = [v4 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v7];
  swift_unknownObjectRelease();
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void *TextKitManager.linesWithFrames()()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v45 = v1 & 0xC000000000000001;
  v42 = v1 + 32;
  v43 = v1 & 0xFFFFFFFFFFFFFF8;

  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v44 = v2;
  do
  {
    if (v45)
    {
      v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v43 + 16))
      {
        goto LABEL_35;
      }

      v1 = *(v42 + 8 * v3);
    }

    v5 = v1;
    v6 = __OFADD__(v3, 1);
    v7 = v3 + 1;
    if (v6)
    {
      goto LABEL_33;
    }

    v46 = v7;
    v8 = [v1 textLineFragments];
    sub_100009F78(0, &qword_1011BAB78, NSTextLineFragment_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v1 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v1;
      if (v1)
      {
LABEL_12:
        if (v10 < 1)
        {
          goto LABEL_34;
        }

        for (i = 0; v10 != i; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v12 = *(v9 + 8 * i + 32);
          }

          v13 = v12;
          [v12 typographicBounds];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          [v13 boundsWithType:2 options:0];
          v23 = v22;
          v47.origin.x = v15;
          v47.origin.y = v17;
          v47.size.width = v19;
          v47.size.height = v21;
          Height = CGRectGetHeight(v47);
          [v5 layoutFragmentFrame];
          v26 = v25;
          [v5 layoutFragmentFrame];
          v28 = v27;
          v29 = [v13 characterRange];
          v31 = v30;
          v32 = [v5 rangeInElement];
          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (v33)
          {
            v34 = [v33 range];

            v6 = __OFADD__(v29, v34);
            v29 = &v34[v29];
            if (v6)
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              v40 = v1;
              v2 = _CocoaArrayWrapper.endIndex.getter();
              v1 = v40;
              if (!v2)
              {
                return _swiftEmptyArrayStorage;
              }

              goto LABEL_3;
            }
          }

          else
          {
          }

          v35 = v15 + v26;
          v36 = v17 + v28 - (v23 - Height);
          v48.origin.x = v35;
          v48.origin.y = v36;
          v48.size.width = v19;
          v48.size.height = v23;
          if (CGRectGetWidth(v48) <= 0.0)
          {
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_100C28CD4(0, v4[2] + 1, 1, v4);
            }

            v38 = v4[2];
            v37 = v4[3];
            if (v38 >= v37 >> 1)
            {
              v4 = sub_100C28CD4((v37 > 1), v38 + 1, 1, v4);
            }

            v4[2] = v38 + 1;
            v39 = &v4[7 * v38];
            *(v39 + 4) = v13;
            v39[5] = v35;
            v39[6] = v36;
            v39[7] = v19;
            v39[8] = v23;
            *(v39 + 9) = v29;
            *(v39 + 10) = v31;
          }
        }
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_12;
      }
    }

    v3 = v46;
  }

  while (v46 != v44);

  return v4;
}

uint64_t TextKitManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_100C4E01C(void *a1)
{
  *&v1[OBJC_IVAR____TtCCE14MusicUtilitiesCSo20NSTextLayoutFragment4View13FragmentLayer_fragment] = a1;
  v16.receiver = v1;
  v16.super_class = _s4ViewC13FragmentLayerCMa();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v16, "init");
  [v3 renderingSurfaceBounds];
  [v4 setBounds:?];
  [v4 bounds];
  v6 = -v5;
  [v4 bounds];
  v8 = v6 / v7;
  [v4 bounds];
  v10 = -v9;
  [v4 bounds];
  [v4 setAnchorPoint:{v8, v10 / v11}];
  [v3 layoutFragmentFrame];
  [v4 setPosition:?];
  v12 = [objc_opt_self() currentTraitCollection];
  [v12 displayScale];
  v14 = v13;

  [v4 setContentsScale:v14];
  [v4 setNeedsDisplay];

  return v4;
}

uint64_t NSTextLayoutFragment.View.__allocating_init(fragments:colorOverride:)(unint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  sub_100C4E6E8(a1, a2);
  v7 = v6;

  return v7;
}

uint64_t NSTextLayoutFragment.View.init(fragments:colorOverride:)(unint64_t a1, void *a2)
{
  sub_100C4E6E8(a1, a2);
  v4 = v3;

  return v4;
}

id NSTextLineFragment.View.__allocating_init(line:size:)(void *a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line] = a1;
  v11.receiver = v7;
  v11.super_class = v3;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, a2, a3);
  [v9 setOpaque:{0, v11.receiver, v11.super_class}];

  return v9;
}

id NSTextLineFragment.View.init(line:size:)(void *a1, double a2, double a3)
{
  *&v3[OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line] = a1;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for NSTextLineFragment.View();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, a2, a3);
  [v8 setOpaque:{0, v10.receiver, v10.super_class}];

  return v8;
}

void NSTextLineFragment.View.draw(_:)()
{
  v1 = UIGraphicsGetCurrentContext();
  if (v1)
  {
    v2 = v1;
    [*(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line) drawAtPoint:0.0 inContext:0.0];
  }
}

id sub_100C4E680(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100C4E6E8(unint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtCE14MusicUtilitiesCSo20NSTextLayoutFragment4View_fragments] = a1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for NSTextLayoutFragment.View();

  v5 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (a2)
  {
    v6 = kCAFilterColorMonochrome;
    v7 = objc_allocWithZone(CAFilter);
    v8 = a2;
    v9 = [v7 initWithType:{v6, v25.receiver, v25.super_class}];
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v9 setValue:isa forKey:kCAFilterInputBias];

    v11 = Int._bridgeToObjectiveC()().super.super.isa;
    [v9 setValue:v11 forKey:kCAFilterInputAmount];

    v12 = [v8 CGColor];
    [v9 setValue:v12 forKey:kCAFilterInputColor];

    v13 = [v5 layer];
    sub_10010FC20(&qword_1011BA918, &qword_100F0CFC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100EBC6B0;
    *(v14 + 56) = sub_100009F78(0, &qword_1011BAD18, CAFilter_ptr);
    *(v14 + 32) = v9;
    v15 = v9;
    v16 = Array._bridgeToObjectiveC()().super.isa;

    [v13 setFilters:v16];
  }

  if (!(a1 >> 62))
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_12:

    [v5 setOpaque:0];
    return;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v17 >= 1)
  {
    v18 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      v21 = objc_allocWithZone(_s4ViewC13FragmentLayerCMa());
      v22 = v20;
      v23 = sub_100C4E01C(v22);
      v24 = [v5 layer];
      [v24 addSublayer:v23];
    }

    while (v17 != v18);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_100C4EAAC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100C55814(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(_s9_ObserverC18HandlerAssociationVMa(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100C54A04(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_100C4EBCC(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_100009F78(0, &qword_1011BADA8, UIViewController_ptr);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_100C4ED3C(id *a1, void *a2)
{
  result = [*a1 customView];
  if (result)
  {
    v4 = result;
    sub_100009F78(0, &qword_1011BADC8, UIView_ptr);
    v5 = a2;
    v6 = static NSObject.== infix(_:_:)();

    return (v6 & 1);
  }

  return result;
}

void *sub_100C4EDFC(unint64_t a1, unint64_t a2)
{
  v14 = a1;
  v17 = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v15 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 customView];
      if (v8 && (v16 = v8, __chkstk_darwin(), v13[2] = &v16, v10 = v9, v11 = sub_100C5CD64(sub_100C54980, v13, v14), v10, (v11 & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t Collection<>.all(embedding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __chkstk_darwin();
  (*(v9 + 16))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2, v7);
  v12 = a2;
  v13 = a3;
  v14 = a1;
  return Sequence.filter(_:)();
}

uint64_t sub_100C4F0A0(id *a1, unint64_t a2)
{
  v3 = [*a1 customView];
  if (v3)
  {
    v9 = v3;
    __chkstk_darwin();
    v8[2] = &v9;
    v5 = v4;
    v6 = sub_100C5CD64(sub_100C54A84, v8, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *UINavigationItem.existingBarButtonItems(for:)(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 rightBarButtonItems];
  if (v4)
  {
    v5 = v4;
    sub_100009F78(0, &qword_1011BAD20, UIBarButtonItem_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_100C4EDFC(a1, v6);

    sub_100C331A4(v7);
  }

  v8 = [v2 leftBarButtonItems];
  if (v8)
  {
    v9 = v8;
    sub_100009F78(0, &qword_1011BAD20, UIBarButtonItem_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = sub_100C4EDFC(a1, v10);

    sub_100C331A4(v11);
  }

  return _swiftEmptyArrayStorage;
}

void UICollectionView.register<A>(_:reuseIdentifier:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = String._bridgeToObjectiveC()();
  [v0 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v2];
}

void UICollectionView.register<A>(_:ofKind:reuseIdentifier:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  [v0 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v2 withReuseIdentifier:v3];
}

uint64_t UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v8 = [v5 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    _StringGuts.grow(_:)(38);

    v10._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 544497952;
    v11._object = 0xE400000000000000;
    String.append(_:)(v11);
    type metadata accessor for IndexPath();
    sub_100C54538(&qword_1011BA940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v11 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    _StringGuts.grow(_:)(52);
    v13._object = 0x8000000100E69AA0;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    v14._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 544497952;
    v15._object = 0xE400000000000000;
    String.append(_:)(v15);
    type metadata accessor for IndexPath();
    sub_100C54538(&qword_1011BA940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t UICollectionView.globalIndex(for:)()
{
  v1 = [v0 numberOfSections];
  result = IndexPath.section.getter();
  if (__OFADD__(result, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result + 1 >= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = result + 1;
  }

  if (v3 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    if (v3 == v4)
    {
      return 0;
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    v6 = [v0 numberOfItemsInSection:v4];
    result = IndexPath.section.getter();
    if (v4 == result)
    {
      goto LABEL_13;
    }

    ++v4;
    v7 = __OFADD__(v5, v6);
    v5 += v6;
  }

  while (!v7);
  __break(1u);
LABEL_13:
  if (IndexPath.item.getter() >= v6)
  {
    return 0;
  }

  v8 = IndexPath.item.getter();
  v7 = __OFADD__(v5, v8);
  result = v5 + v8;
  if (v7)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t UICollectionView.indexPath(forGlobalIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_10010FC20(&qword_1011BADA0, &unk_100F0D2B8);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(*(v8 - 8) + 56);
  v9(a2, 1, 1, v8);
  result = [v3 numberOfSections];
  if (result < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    v11 = result;
    v17 = a2;
    v12 = 0;
    v13 = 0;
    while (v11 != v12)
    {
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_11:
        __break(1u);
        goto LABEL_12;
      }

      v14 = v13;
      result = [v3 numberOfItemsInSection:v12];
      v13 = v14 + result;
      if (__OFADD__(v14, result))
      {
        goto LABEL_11;
      }

      ++v12;
      if (v13 > a1)
      {
        result = a1 - v14;
        if (__OFSUB__(a1, v14))
        {
          goto LABEL_13;
        }

        IndexPath.init(item:section:)();
        v15 = v17;
        sub_1000095E8(v17, &qword_1011BADA0, &unk_100F0D2B8);
        v9(v7, 0, 1, v8);
        return sub_100C53EE8(v7, v15);
      }
    }
  }

  return result;
}

unint64_t UICollectionView.totalItemCount.getter()
{
  result = [v0 numberOfSections];
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = 0;
    v3 = result;
    if (!result)
    {
      return v2;
    }

    v4 = 0;
    while (1)
    {
      result = [v0 numberOfItemsInSection:v4];
      v5 = __OFADD__(v2, result);
      v2 += result;
      if (v5)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return v2;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *UICollectionView.isLast(indexPath:)(uint64_t a1)
{
  v2 = v1;
  v3 = IndexPath.section.getter();
  result = [v1 numberOfSections];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (v3 != result - 1)
    {
      return 0;
    }

    v5 = IndexPath.item.getter();
    result = [v2 numberOfItemsInSection:v3];
    if (!__OFSUB__(result, 1))
    {
      return (v5 == result - 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t UICollectionView.visibleSupplementaryElements(of:)(uint64_t a1, uint64_t a2)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 indexPathsForVisibleSupplementaryElementsOfKind:v5];

  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = a1;
  v8[4] = a2;
  v9 = v2;

  return v7;
}

void sub_100C4FC0C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(sub_10010FC20(&qword_1011BAE08, &qword_100F0D500) + 48);
  v7 = type metadata accessor for IndexPath();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  v8 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [a2 supplementaryViewForElementKind:v8 atIndexPath:isa];

  *(a3 + v6) = v10;
}

double UICollectionView.clearSelection(using:animated:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 indexPathsForSelectedItems];
  if (v11)
  {
    v13 = v11;
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (a1)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v3;
      *(v15 + 32) = a2 & 1;
      v33 = sub_100C53F64;
      v34 = v15;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1007E9F28;
      v32 = &unk_1010F1E50;
      v16 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v17 = v3;

      v18 = swift_allocObject();
      *(v18 + 16) = v14;
      *(v18 + 24) = v17;
      v33 = sub_100C53FBC;
      v34 = v18;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1007E9F28;
      v32 = &unk_1010F1EA0;
      v19 = _Block_copy(&aBlock);
      v20 = v17;

      [a1 animateAlongsideTransition:v16 completion:v19];
      _Block_release(v19);
      _Block_release(v16);
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = *(v14 + 16);
      if (v21)
      {
        v23 = *(v7 + 16);
        v22 = v7 + 16;
        v27 = v14;
        v28 = v23;
        v24 = v14 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
        v25 = *(v22 + 56);
        do
        {
          v28(v10, v24, v6);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v3 deselectItemAtIndexPath:isa animated:{a2 & 1, v27}];

          (*(v22 - 8))(v10, v6);
          v24 += v25;
          --v21;
        }

        while (v21);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_100C5001C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v19 = a4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v14 = *(v7 + 16);
    v12 = v7 + 16;
    v13 = v14;
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v10, v15, v6, v8);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [a3 deselectItemAtIndexPath:isa animated:v19 & 1];

      (*(v12 - 8))(v10, v6);
      v15 += v16;
      --v11;
    }

    while (v11);
  }
}

id sub_100C5016C(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isCancelled];
  if (result)
  {
    v12 = *(a2 + 16);
    if (v12)
    {
      v15 = *(v7 + 16);
      v13 = v7 + 16;
      v14 = v15;
      v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v17 = *(v13 + 56);
      do
      {
        v14(v10, v16, v6);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [a3 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

        result = (*(v13 - 8))(v10, v6);
        v16 += v17;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t UICollectionView.isDraggingCell(at:)()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState.DragState();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for UICellConfigurationState();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [v1 cellForItemAtIndexPath:isa];

  if (v13)
  {
    v14 = [v13 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    UICellConfigurationState.cellDragState.getter();
    (*(v9 + 8))(v11, v8);
    (*(v3 + 104))(v5, enum case for UICellConfigurationState.DragState.dragging(_:), v2);
    v15 = static UICellConfigurationState.DragState.== infix(_:_:)();

    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v7, v2);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id UIColor.interpolate(to:ratio:)(void *a1, double a2)
{
  v4 = fmin(a2, 1.0);
  if (a2 < 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v13 = 0.0;
  v14 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [v2 getRed:&v14 green:&v12 blue:&v10 alpha:&v8];
  [a1 getRed:&v13 green:&v11 blue:&v9 alpha:&v7];
  return [objc_allocWithZone(UIColor) initWithRed:(1.0 - v5) * v14 + v5 * v13 green:(1.0 - v5) * v12 + v5 * v11 blue:(1.0 - v5) * v10 + v5 * v9 alpha:(1.0 - v5) * v8 + v5 * v7];
}

double UIColor.hsba.getter()
{

  return sub_100C5073C(&selRef_getHue_saturation_brightness_alpha_);
}

double UIColor.rgba.getter()
{

  return sub_100C5073C(&selRef_getRed_green_blue_alpha_);
}

double sub_100C5073C(SEL *a1)
{
  v6 = 0.0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  [v1 *a1];
  return v6;
}

UIImage_optional __swiftcall UIImage.init(systemName:font:scale:)(Swift::String systemName, UIFont font, UIImageSymbolScale scale)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() configurationWithFont:font.super.isa scale:scale];
  v8 = [ObjCClassFromMetadata systemImageNamed:v6 withConfiguration:v7];

  v10 = v8;
  result.value.super.isa = v10;
  result.is_nil = v9;
  return result;
}

UIImage_optional __swiftcall UIImage.byCroppingToUniformCenter()()
{
  v1 = v0;
  v2 = v0;
  [(CGImage *)v2 size];
  v4 = v3;
  v6 = v5;
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    if (v6 >= v4)
    {
      v9 = round((v6 - v4) * 0.5);
      v8 = 0.0;
      v10 = v4;
      v11 = v4;
    }

    else
    {
      v8 = round((v4 - v6) * 0.5);
      v9 = 0.0;
      v10 = v6;
      v11 = v6;
    }

    v1 = UIImage.byCropping(to:)(v8, v9, v10, v11);
  }

  v12 = v1;
  result.value.super.isa = v12;
  result.is_nil = v7;
  return result;
}

CGImage *UIImage.byCropping(to:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  result = [v4 CGImage];
  if (result)
  {
    v11 = result;
    _s3__C6CGSizeVMa_3(0);
    if ((static ApproximatelyEquatable.!=~ infix(_:_:)() & 1) == 0)
    {
      goto LABEL_7;
    }

    [v4 scale];
    v13 = v12;
    v14 = static ApproximatelyEquatable.!=~ infix(_:_:)();
    v15 = v13 * a1;
    v16 = v13 * a2;
    v17 = v13 * a3;
    v18 = v13 * a4;
    if ((v14 & 1) == 0)
    {
      v18 = a4;
      v17 = a3;
      v16 = a2;
      v15 = a1;
    }

    v19 = CGImageCreateWithImageInRect(v11, *&v15);
    if (v19)
    {
      v20 = v19;
      v21 = [objc_allocWithZone(UIImage) initWithCGImage:v19 scale:objc_msgSend(v5 orientation:{"imageOrientation", 0x3FF0000000000000), v13}];

      return v21;
    }

    else
    {
LABEL_7:

      return 0;
    }
  }

  return result;
}

UIViewController_optional __swiftcall UINavigationController.removeViewController(_:animated:)(UIViewController _, Swift::Bool animated)
{
  v3 = v2;
  v6 = [v2 viewControllers];
  sub_100009F78(0, &qword_1011BADA8, UIViewController_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_100C4EBCC(_.super.super.isa, v7);
  LOBYTE(v6) = v9;

  if (v6)
  {

    v11 = 0;
  }

  else
  {
    v12 = sub_1004F4228(v8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 setViewControllers:isa animated:animated];

    v11 = v12;
  }

  result.value.super.super.isa = v11;
  result.is_nil = v10;
  return result;
}

double UIScrollView.normalizedContentOffset.getter()
{
  [v0 adjustedContentInset];
  v2 = v1;
  [v0 contentOffset];
  return v2 + v3;
}

uint64_t UIScrollView.isScrolling.getter()
{
  if ([v0 isDragging] & 1) != 0 || (objc_msgSend(v0, "isDecelerating") & 1) != 0 || (objc_msgSend(v0, "_isVerticalBouncing"))
  {
    return 1;
  }

  else
  {
    return [v0 _isHorizontalBouncing];
  }
}

void UIView.Shadow.hash(into:)(uint64_t a1)
{
  NSObject.hash(into:)();
  v2 = v1[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v1[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v1[3];
  v5 = v1[4];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  Hasher._combine(_:)(*&v6);
}

Swift::Int UIView.Shadow.hashValue.getter()
{
  Hasher.init(_seed:)();
  UIView.Shadow.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100C50E78(uint64_t a1)
{
  Hasher.init(_seed:)();
  UIView.Shadow.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL sub_100C50EB4(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  sub_100009F78(0, &unk_1011BADB0, NSObject_ptr);
  v10 = static NSObject.== infix(_:_:)();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7)
  {
    return v4 == v8 && v5 == v9;
  }

  return result;
}

id UIView.shadowPathIsBounds.getter()
{
  v1 = [v0 layer];
  v2 = [v1 shadowPathIsBounds];

  return v2;
}

void UIView.shadowPathIsBounds.setter(char a1)
{
  v3 = [v1 layer];
  [v3 setShadowPathIsBounds:a1 & 1];
}

void (*UIView.shadowPathIsBounds.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 layer];
  v4 = [v3 shadowPathIsBounds];

  *(a1 + 8) = v4;
  return sub_100C51090;
}

void sub_100C51090(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = [*a1 layer];
  [v2 setShadowPathIsBounds:v1];
}

void UIView.shadow.getter(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() clearColor];
  v4 = [v1 layer];
  v5 = [v4 shadowColor];

  if (v5)
  {
    v6 = [objc_allocWithZone(UIColor) initWithCGColor:v5];

    v3 = v6;
  }

  v7 = [v1 layer];
  [v7 shadowOpacity];
  v9 = v8;

  v10 = v9;
  v11 = [v1 layer];
  [v11 shadowRadius];
  v13 = v12;

  v14 = [v1 layer];
  [v14 shadowOffset];
  v16 = v15;
  v18 = v17;

  *a1 = v3;
  *(a1 + 8) = v10;
  *(a1 + 16) = v13;
  *(a1 + 24) = v16;
  *(a1 + 32) = v18;
}

void (*UIView.shadow.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  UIView.shadow.getter(v3 + 80);
  return sub_100C512DC;
}

void sub_100C512DC(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  if (a2)
  {
    *v2 = v2[5];
    v2[1] = v3;
    *(v2 + 4) = *(v2 + 14);
    sub_100C54268(v2, v2 + 120);
    sub_100048484(v2);
    sub_1000485FC(v2);
  }

  else
  {
    *(v2 + 40) = v2[5];
    *(v2 + 56) = v3;
    *(v2 + 9) = *(v2 + 14);
    sub_100048484(v2 + 40);
    sub_1000485FC(v2 + 40);
  }

  free(v2);
}

uint64_t UIView.Border.init(view:)(void *a1)
{
  v2 = sub_100C542A0(a1);

  return v2;
}

uint64_t UIView.border.getter()
{
  v1 = v0;
  v2 = sub_100C542A0(v1);

  return v2;
}

void (*UIView.border.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = v1;
  v4 = sub_100C542A0(v3);
  v6 = v5;
  v8 = v7;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  return sub_100C514C0;
}

void sub_100C514C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v4 = v6;
    sub_10004BD20(v2, v3, v6);

    v5 = v4;
  }

  else
  {
    sub_10004BD20(v2, v3, v6);
    v5 = v6;
  }
}

double UIView.untransformedFrame.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 center];
  v10 = v9;
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  Width = CGRectGetWidth(v17);
  v12 = [v0 layer];
  [v12 anchorPoint];
  v14 = v13;

  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  CGRectGetHeight(v18);
  v15 = [v0 layer];
  [v15 anchorPoint];

  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  CGRectGetWidth(v19);
  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  CGRectGetHeight(v20);
  return v10 - Width * v14;
}

void (*UIView.untransformedFrame.modify(uint64_t *a1))(CGFloat **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *v3 = UIView.untransformedFrame.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_100C51714;
}

void sub_100C51714(CGFloat **a1)
{
  v1 = *a1;
  UIView.untransformedFrame.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

float UIView.contentCompressionResistancePriority.getter()
{
  [v0 contentCompressionResistancePriorityForAxis:0];
  v2 = v1;
  [v0 contentCompressionResistancePriorityForAxis:1];
  return v2;
}

float UIView.CompressionResistancePriority.init(view:)(void *a1)
{
  [a1 contentCompressionResistancePriorityForAxis:0];
  v3 = v2;
  [a1 contentCompressionResistancePriorityForAxis:1];

  return v3;
}

id UIView.contentCompressionResistancePriority.setter(double a1, float a2)
{
  [v2 setContentCompressionResistancePriority:0 forAxis:a1];
  *&v4 = a2;

  return [v2 setContentCompressionResistancePriority:1 forAxis:v4];
}

id (*UIView.contentCompressionResistancePriority.modify(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 contentCompressionResistancePriorityForAxis:0];
  v4 = v3;
  [v1 contentCompressionResistancePriorityForAxis:1];
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return sub_100C518E4;
}

id sub_100C518E4(uint64_t a1, double a2)
{
  v2 = *a1;
  LODWORD(a2) = *(a1 + 8);
  v3 = *(a1 + 12);
  [*a1 setContentCompressionResistancePriority:0 forAxis:a2];
  LODWORD(v4) = v3;

  return [v2 setContentCompressionResistancePriority:1 forAxis:v4];
}

UIImage *UIView.screenshot.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = [v0 isOpaque];
  v8.width = v2;
  v8.height = v4;
  UIGraphicsBeginImageContextWithOptions(v8, v5, 0.0);
  [v0 bounds];
  [v0 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v6;
}

Swift::Void __swiftcall UIView.visualizeLayout(with:)(UIColor with)
{
  v2 = v1;
  v4 = [v1 viewWithTag:1234];
  if (v4)
  {
    isa = v4;
    [v1 bringSubviewToFront:?];
  }

  else
  {
    v5 = [objc_allocWithZone(UIView) init];
    v6 = [(objc_class *)with.super.isa colorWithAlphaComponent:0.2];
    [v5 setBackgroundColor:v6];

    v7 = with.super.isa;
    sub_10004BD20(0x3FF0000000000000, 1, with.super.isa);

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setTag:1234];
    [v5 setUserInteractionEnabled:0];
    [v2 addSubview:v5];
    v8 = objc_opt_self();
    sub_10010FC20(&qword_1011B9EE0, &qword_100F0C300);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100EBDC10;
    v10 = [v5 topAnchor];
    v11 = [v2 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v9 + 32) = v12;
    v13 = [v5 bottomAnchor];
    v14 = [v2 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v9 + 40) = v15;
    v16 = [v5 leadingAnchor];
    v17 = [v2 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v9 + 48) = v18;
    v19 = [v5 trailingAnchor];
    v20 = [v2 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v9 + 56) = v21;
    sub_100009F78(0, &qword_1011BADC0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 activateConstraints:isa];
  }
}

double UIView.traverseViewHierarchy(_:)(void (*a1)(void *, char *), uint64_t a2)
{
  v3 = v2;
  v14 = 0;
  a1(v3, &v14);
  if ((v14 & 1) == 0)
  {
    v7 = [v3 subviews];
    sub_100009F78(0, &qword_1011BADC8, UIView_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v14)
        {

          goto LABEL_14;
        }

        sub_100C543B0(v11, a1, a2, &v14);

        ++v10;
        if (v13 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return result;
}

void UIView.statusBarFrame.getter(uint64_t a1@<X8>)
{
  v3 = [v1 window];
  v4 = 0uLL;
  if (v3)
  {
    v5 = v3;
    v6 = [v3 windowScene];

    if (v6)
    {
      v7 = [v6 statusBarManager];
      if (v7)
      {
        v8 = v7;
        if (([v7 isStatusBarHidden] & 1) == 0)
        {
          [v8 statusBarFrame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = [v6 screen];
          v20 = [v19 coordinateSpace];

          [v1 convertRect:v20 fromCoordinateSpace:{v12, v14, v16, v18}];
          v26 = v21;
          v27 = v22;
          v25 = v23;
          v28 = v24;

          swift_unknownObjectRelease();
          *&v10 = v25;
          *&v4 = v26;
          v9 = 0;
          *(&v4 + 1) = v27;
          *(&v10 + 1) = v28;
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v9 = 1;
    v10 = 0uLL;
    v4 = 0uLL;
  }

  else
  {
    v9 = 1;
    v10 = 0uLL;
  }

LABEL_9:
  *a1 = v4;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
}

id UIView.allowsAnimatedChanges.getter()
{
  result = [objc_opt_self() areAnimationsEnabled];
  if (result)
  {
    result = [v0 window];
    if (result)
    {
      v2 = result;
      v3 = [result windowScene];

      if (v3)
      {
        v4 = [v3 activationState];

        return (v4 == 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

Swift::Void __swiftcall UILayoutGuide.visualizeLayout(with:)(UIColor with)
{
  v2 = v1;
  v4 = [v1 owningView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 viewWithTag:1234];
    if (v6)
    {
      isa = v6;
      [v5 bringSubviewToFront:?];
    }

    else
    {
      v7 = [objc_allocWithZone(UIView) init];
      v8 = [(objc_class *)with.super.isa colorWithAlphaComponent:0.2];
      [v7 setBackgroundColor:v8];

      v9 = with.super.isa;
      sub_10004BD20(0x3FF0000000000000, 1, with.super.isa);

      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v7 setTag:1234];
      [v7 setUserInteractionEnabled:0];
      [v5 addSubview:v7];
      v10 = objc_opt_self();
      sub_10010FC20(&qword_1011B9EE0, &qword_100F0C300);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100EBDC10;
      v12 = [v7 topAnchor];
      v13 = [v2 topAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      *(v11 + 32) = v14;
      v15 = [v7 bottomAnchor];
      v16 = [v2 bottomAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      *(v11 + 40) = v17;
      v18 = [v7 leadingAnchor];
      v19 = [v2 leadingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];

      *(v11 + 48) = v20;
      v21 = [v7 trailingAnchor];
      v22 = [v2 trailingAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];

      *(v11 + 56) = v23;
      sub_100009F78(0, &qword_1011BADC0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v10 activateConstraints:isa];

      v5 = v7;
    }
  }
}

BOOL UIViewController.canPresentViewControllers.getter()
{
  v1 = [v0 popoverPresentationController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 == 0;
}

BOOL UIViewController.canBeDismissed.getter()
{
  v1 = [v0 presentingViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Void __swiftcall UIViewController.dismiss(after:)(Swift::Double after)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v17 = *(v4 - 8);
  v18 = v4;
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v16 - v11;
  sub_100009F78(0, &qword_1011BADD0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v8 + 8);
  v16(v10, v7);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100C54530;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010F1EF0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100C54538(&qword_1011B9CA8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&unk_1011BADE0, &qword_100F0C060);
  sub_100024A2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v3, v1);
  (*(v17 + 8))(v6, v18);
  v16(v12, v7);
}

void sub_100C52994(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentingViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 presentedViewController];
      if (v5)
      {
        v6 = v5;
        sub_100009F78(0, &unk_1011BADB0, NSObject_ptr);
        if (static NSObject.== infix(_:_:)())
        {
          [v4 dismissViewControllerAnimated:1 completion:0];
        }

        v2 = v4;
      }

      else
      {
        v6 = v4;
      }

      v2 = v6;
    }
  }
}

Swift::Void __swiftcall UIViewController.add(_:)(UIViewController a1)
{
  [v1 addChildViewController:a1.super.super.isa];
  if ([v1 isViewLoaded])
  {
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      v5 = [(objc_class *)a1.super.super.isa view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview:v5];

        v7 = [v1 view];
        if (v7)
        {
          v8 = v7;
          [v7 setNeedsLayout];

          goto LABEL_6;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_6:

  [(objc_class *)a1.super.super.isa didMoveToParentViewController:v1];
}

Swift::Void __swiftcall UIViewController.remove(_:)(UIViewController a1)
{
  v3 = [(objc_class *)a1.super.super.isa parentViewController];
  if (!v3)
  {
    return;
  }

  v4 = v3;

  if (v4 != v1)
  {
    return;
  }

  [(objc_class *)a1.super.super.isa willMoveToParentViewController:0];
  if (![v1 isViewLoaded] || !-[objc_class isViewLoaded](a1.super.super.isa, "isViewLoaded"))
  {
    goto LABEL_11;
  }

  v5 = [(objc_class *)a1.super.super.isa view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v1 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v6 isDescendantOfView:v7];

  if (v9)
  {
    v10 = [(objc_class *)a1.super.super.isa view];
    if (v10)
    {
      v11 = v10;
      [v10 removeFromSuperview];

      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    return;
  }

LABEL_11:

  [(objc_class *)a1.super.super.isa removeFromParentViewController];
}

Swift::Bool __swiftcall UIViewController.isDescendant(of:)(UIViewController of)
{
  v3 = [v1 parentViewController];
  if (v3 && (v4 = v3, v3, v4 == of.super.super.isa))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [v1 parentViewController];
    if (v5)
    {
      v6 = v5;
      v7 = UIViewController.isDescendant(of:)(of);

      LOBYTE(v5) = v7;
    }
  }

  return v5;
}

void UIViewController.traverseViewControllerHierarchy(_:)(void (*a1)(void *, _BYTE *), uint64_t a2)
{
  v44[0] = 0;
  a1(v2, v44);
  v38 = v2;
  v3 = [v2 childViewControllers];
  sub_100009F78(0, &qword_1011BADA8, UIViewController_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = v4;
  if (v4 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    swift_beginAccess();
    if (i)
    {
      v6 = 0;
      v40 = i;
      while (1)
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v9 = *(v39 + 32 + 8 * v6);
        }

        v10 = v9;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        if (v44[0])
        {

          goto LABEL_32;
        }

        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        v13 = (v12 + 16);
        swift_beginAccess();
        a1(v10, v44);
        swift_endAccess();
        *(v12 + 16) = v44[0];
        v14 = [v10 childViewControllers];
        v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = v10;
        if (v15 >> 62)
        {
          v16 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        swift_beginAccess();
        if (v16)
        {
          v17 = 0;
          while (1)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v18 = *(v15 + 8 * v17 + 32);
            }

            v19 = v18;
            v20 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (*v13 == 1)
            {

              goto LABEL_25;
            }

            sub_100C54580(v18, v12, a1, a2, v44);

            ++v17;
            if (v20 == v16)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          break;
        }

LABEL_25:

        swift_beginAccess();
        if (*v13 == 1)
        {

          v7 = v40;
          v8 = v41;
        }

        else
        {
          v8 = v41;
          v21 = [v41 presentedViewController];
          v7 = v40;
          if (v21)
          {
            v22 = v21;
            sub_100C54580(v21, v12, a1, a2, v44);
          }

          else
          {
          }
        }

        if (v6 == v7)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_32:

    swift_beginAccess();
    if (v44[0])
    {
      return;
    }

    v23 = [v38 presentedViewController];
    if (!v23)
    {
      return;
    }

    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = (v25 + 16);
    swift_beginAccess();
    a1(v24, v44);
    swift_endAccess();
    *(v25 + 16) = v44[0];
    v27 = [v24 childViewControllers];
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v24;
    v30 = v28 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    swift_beginAccess();
    if (!v30)
    {
      break;
    }

    v31 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v32 = *(v28 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (*v26 == 1)
      {

        goto LABEL_47;
      }

      sub_100C54580(v32, v25, a1, a2, v44);

      ++v31;
      if (v34 == v30)
      {
        goto LABEL_47;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_47:

  swift_beginAccess();
  if (*v26 == 1)
  {

    v35 = v29;
  }

  else
  {
    v35 = v29;
    v36 = [v29 presentedViewController];
    if (v36)
    {
      v37 = v36;
      sub_100C54580(v36, v25, a1, a2, v44);
    }

    else
    {
    }
  }
}

void sub_100C532D8(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t, _BYTE *, __n128), uint64_t a4, _BYTE *a5)
{
  swift_beginAccess();
  (a3)(a1, a5);
  swift_endAccess();
  swift_beginAccess();
  *a2 = *a5;
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.with(priority:)(__C::UILayoutPriority priority)
{
  [v1 setPriority:*&priority.rawValue];

  return v3;
}

void UIView.constrain(to:padding:)()
{
  v0 = sub_100C1C2BC(&off_1010F0068);
  sub_100C54044(v0, sub_100C54810);

  v1 = objc_opt_self();
  sub_100009F78(0, &qword_1011BADC0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

id sub_100C534D8(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  sub_100018B10(a3, v19);
  v9 = v20;
  if (v20)
  {
    sub_10000954C(v19, v20);
    v10 = *(v9 - 8);
    v11 = __chkstk_darwin();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = a2;
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v9);
    sub_10000959C(v19);
  }

  else
  {
    v16 = a2;
    v15 = 0;
  }

  v17 = [objc_opt_self() constraintWithItem:a2 attribute:a1 relatedBy:0 toItem:v15 attribute:a1 multiplier:1.0 constant:a4 * a5];

  swift_unknownObjectRelease();
  return v17;
}

uint64_t UIView.constrainToBounds(of:useLayoutMarginsGuide:padding:)(void *a1, char a2)
{
  if (a2)
  {
    v2 = [a1 layoutMarginsGuide];
  }

  else
  {
    v2 = a1;
  }

  v3 = v2;
  v8[3] = sub_100009F78(0, &unk_1011BADB0, NSObject_ptr);
  v8[0] = v3;
  sub_100C1C2BC(&off_1010F0068);
  __chkstk_darwin();
  sub_100C54044(v4, sub_100C54A74);

  v5 = objc_opt_self();
  sub_100009F78(0, &qword_1011BADC0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];

  return sub_1000095E8(v8, &qword_1011BADF0, "rb\n");
}

uint64_t UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(void *a1, char a2)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:a1];
  if (a2)
  {
    v5 = [v2 layoutMarginsGuide];
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;
  v11[3] = sub_100009F78(0, &unk_1011BADB0, NSObject_ptr);
  v11[0] = v6;
  sub_100C1C2BC(&off_1010F0068);
  __chkstk_darwin();
  sub_100C54044(v7, sub_100C54A74);

  v8 = objc_opt_self();
  sub_100009F78(0, &qword_1011BADC0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 activateConstraints:isa];

  return sub_1000095E8(v11, &qword_1011BADF0, "rb\n");
}

void sub_100C5396C(uint64_t a1, SEL *a2)
{
  v3 = objc_opt_self();
  sub_100009F78(0, &qword_1011BADC0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 *a2];
}

uint64_t NSTextAlignment.init(languageCode:)(uint64_t a1, __n128 a2)
{
  v2 = type metadata accessor for Locale.Language();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Locale.Language.init(identifier:)();
  v6 = Locale.Language.characterDirection.getter();
  (*(v3 + 8))(v5, v2);
  v7 = 4;
  if (v6 == 2)
  {
    v7 = 2;
  }

  if (v6 == 1)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

Swift::Void __swiftcall NSTextAlignment.flip()()
{
  if (*v0)
  {
    if (*v0 != 2)
    {
      return;
    }

    v1 = 0;
  }

  else
  {
    v1 = 2;
  }

  *v0 = v1;
}

uint64_t NSTextAlignment.ctTextAlignment.getter(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x403010200uLL >> (8 * a1));
  }
}

uint64_t UIViewPropertyAnimator.UpdateReason.init(rawValue:)(unint64_t a1)
{
  if (a1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

void *sub_100C53B5C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

void UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10002BC98;
  v5[3] = &unk_1010F1F40;
  v4 = _Block_copy(v5);

  [v3 addAnimations:v4];
  _Block_release(v4);
}

UIViewPropertyAnimator __swiftcall UIViewPropertyAnimator.init(springTimingParameters:)(UISpringTimingParameters springTimingParameters)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  [(objc_class *)springTimingParameters.super.isa settlingDuration];
  v3 = [v2 initWithDuration:springTimingParameters.super.isa timingParameters:?];

  return v3;
}

id UISpringTimingParameters.init(dampingRatio:response:)(double a1, double a2)
{
  v2 = 6.28318531 / a2 * (6.28318531 / a2);
  v3 = sqrt(v2);
  v4 = (v3 + v3) * a1;
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v5 initWithMass:1.0 stiffness:v2 damping:v4 initialVelocity:{0.0, 0.0}];
}

id UIView.setAnchorPoint(_:preserveFrame:)(char a1, double a2, double a3)
{
  if (a1)
  {
    v6 = UIView.untransformedFrame.getter();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v3 setAnchorPoint:{a2, a3}];

    return UIView.untransformedFrame.setter(v6, v8, v10, v12);
  }

  else
  {

    return [v3 setAnchorPoint:{a2, a3}];
  }
}

double sub_100C53DBC()
{
  static UIView.Shadow.identity = [objc_opt_self() blackColor];
  *algn_10121C0A0 = xmmword_100F0E060;
  result = 0.0;
  *&algn_10121C0A0[16] = xmmword_100F0E070;
  return result;
}

uint64_t *UIView.Shadow.identity.unsafeMutableAddressor()
{
  if (qword_1011B9A30 != -1)
  {
    swift_once();
  }

  return &static UIView.Shadow.identity;
}

id static UIView.Shadow.identity.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B9A30 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static UIView.Shadow.identity;
  *a1 = static UIView.Shadow.identity;
  *(a1 + 8) = *algn_10121C0A0;
  *(a1 + 24) = *&algn_10121C0A0[16];

  return v2;
}

uint64_t sub_100C53EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BADA0, &unk_100F0D2B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C53F70(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_100C53FC4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a2)
  {
    if ((a5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (*&a1 == *&a4)
  {
    sub_100009F78(0, &unk_1011BADB0, NSObject_ptr);
    return static NSObject.== infix(_:_:)() & 1;
  }

  return 0;
}

void *sub_100C54044(uint64_t a1, uint64_t (*a2)(void, double))
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v18 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v7;
      a2(*(*(a1 + 48) + 8 * v6), *(*(a1 + 56) + 8 * v6));
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v11 = *(v5 + 8 * v10);
      if ((v11 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v6 & 0x3F));
      if (v12)
      {
        v9 = __clz(__rbit64(v12)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v10 << 6;
        v14 = v10 + 1;
        v15 = (a1 + 72 + 8 * v10);
        while (v14 < (v9 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_1000D8F7C(v6, v8, 0);
            v9 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_1000D8F7C(v6, v8, 0);
      }

LABEL_4:
      v7 = v20 + 1;
      v6 = v9;
      if (v20 + 1 == v18)
      {
        return _swiftEmptyArrayStorage;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100C542A0(void *a1)
{
  v2 = [a1 layer];
  [v2 borderWidth];
  v4 = v3;

  if (v4 <= 0.0)
  {
    return 0;
  }

  v5 = [a1 layer];
  v6 = [v5 borderColor];

  if (!v6)
  {
    return 0;
  }

  v7 = [a1 layer];
  [v7 borderWidth];
  v9 = v8;

  [objc_allocWithZone(UIColor) initWithCGColor:v6];
  return v9;
}

double sub_100C543B0(void *a1, void (*a2)(void *, char *), uint64_t a3, char *a4)
{
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  a2(a1, a4);
  v15 = *a4;
  if ((v15 & 1) == 0)
  {
    v7 = [a1 subviews];
    sub_100009F78(0, &qword_1011BADC8, UIView_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v15 == 1)
        {

          goto LABEL_14;
        }

        sub_100C543B0(v11, sub_100C54938, v14, &v15);

        ++v10;
        if (v13 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_14:
  }

  return result;
}

uint64_t sub_100C54538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100C54580(void *a1, uint64_t a2, void (*a3)(void, void, __n128), uint64_t a4, _BYTE *a5)
{
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  swift_beginAccess();
  swift_beginAccess();
  (a3)(a1, a5);
  swift_endAccess();
  swift_beginAccess();
  v11 = *a5;
  *(a2 + 16) = *a5;
  swift_endAccess();
  *(v9 + 16) = v11;
  v12 = [a1 childViewControllers];
  sub_100009F78(0, &qword_1011BADA8, UIViewController_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = a1;
  if (v13 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (*v10 == 1)
      {

        goto LABEL_14;
      }

      sub_100C54580(v16, v9, sub_100C5492C, v24, (a2 + 16));

      ++v15;
      if (v18 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_14:

  swift_beginAccess();
  if (*v10 == 1 || (v19 = [v23 presentedViewController]) == 0)
  {
  }

  else
  {
    v20 = (a2 + 16);
    v21 = v19;
    sub_100C54580(v19, v9, sub_100C5492C, v24, v20);
  }

  return result;
}

unint64_t sub_100C54820()
{
  result = qword_1011BADF8;
  if (!qword_1011BADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BADF8);
  }

  return result;
}

unint64_t sub_100C54878()
{
  result = qword_1011BAE00;
  if (!qword_1011BAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BAE00);
  }

  return result;
}

__n128 sub_100C548DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100C54938(uint64_t a1, _BYTE *a2)
{
  v4 = *(v2 + 32);
  result = (*(v2 + 16))(a1, v4);
  *a2 = *v4;
  return result;
}

uint64_t sub_100C54A04(uint64_t a1, uint64_t a2)
{
  v4 = _s9_ObserverC18HandlerAssociationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t URL.init(string:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10010FC20(&qword_1011BA528, &qword_100F0C778);
  __chkstk_darwin();
  v6 = &v11 - v5;
  if (!a2)
  {
    goto LABEL_4;
  }

  URL.init(string:)();

  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    sub_1000095E8(v6, &qword_1011BA528, &qword_100F0C778);
LABEL_4:
    v9 = type metadata accessor for URL();
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }

  (*(v8 + 32))(a3, v6, v7);
  return (*(v8 + 56))(a3, 0, 1, v7);
}

void URL.parametrize(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10010FC20(&qword_1011BA528, &qword_100F0C778);
  __chkstk_darwin();
  v6 = &v46 - v5;
  v64 = type metadata accessor for URLQueryItem();
  v62 = *(v64 - 8);
  __chkstk_darwin();
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v46 - v8;
  __chkstk_darwin();
  v58 = &v46 - v9;
  sub_10010FC20(&qword_1011BAE70, &qword_100F0D508);
  __chkstk_darwin();
  v11 = &v46 - v10;
  v12 = type metadata accessor for URLComponents();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a2, v2, v16);
  if (*(a1 + 16))
  {
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1000095E8(v11, &qword_1011BAE70, &qword_100F0D508);
    }

    else
    {
      v49 = v17;
      v51 = v16;
      v52 = v6;
      v48 = v13;
      v18 = *(v13 + 32);
      v50 = v12;
      v18(v15, v11, v12);
      v47 = v15;
      v19 = URLComponents.queryItems.getter();
      v20 = _swiftEmptyArrayStorage;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = _swiftEmptyArrayStorage;
      }

      v22 = *(a1 + 16);
      if (v22)
      {
        v20 = sub_100C5577C(*(a1 + 16), 0);
        v23 = sub_100C55828(v65, v20 + 4, v22, a1);
        v24 = v65[0];
        v61 = v65[4];

        sub_10005C9F8(v24);
        if (v23 != v22)
        {
          __break(1u);
        }
      }

      v65[0] = v20;
      sub_100C56894(v65);
      v25 = v65[0];
      v57 = *(v65[0] + 16);
      if (v57)
      {
        v46 = a2;
        v26 = 0;
        v55 = v65[0];
        v56 = v65[0] + 32;
        v61 = (v62 + 16);
        v27 = (v62 + 8);
        v53 = (v62 + 40);
        v54 = v62 + 32;
        while (1)
        {
          if (v26 >= *(v25 + 16))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v60 = v26;
          v30 = (v56 + 32 * v26);
          v31 = *v30;
          v32 = v30[1];

          URLQueryItem.init(name:value:)();

          v33 = *(v21 + 2);
          if (v33)
          {
            break;
          }

LABEL_22:

          v39 = v58;
          (*v61)(v59, v58, v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_100C28E24(0, *(v21 + 2) + 1, 1, v21);
          }

          v41 = *(v21 + 2);
          v40 = *(v21 + 3);
          if (v41 >= v40 >> 1)
          {
            v21 = sub_100C28E24((v40 > 1), v41 + 1, 1, v21);
          }

          v28 = v62;
          v29 = v64;
          (*(v62 + 8))(v39, v64);
          *(v21 + 2) = v41 + 1;
          (*(v28 + 32))(&v21[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v41], v59, v29);
LABEL_13:
          v26 = v60 + 1;
          v25 = v55;
          if (v60 + 1 == v57)
          {

            a2 = v46;
            goto LABEL_33;
          }
        }

        v34 = 0;
        while (1)
        {
          if (v34 >= *(v21 + 2))
          {
            __break(1u);
            goto LABEL_38;
          }

          v35 = (*(v62 + 80) + 32) & ~*(v62 + 80);
          v36 = *(v62 + 72) * v34;
          (*(v62 + 16))(v63, &v21[v35 + v36], v64);
          if (URLQueryItem.name.getter() == v31 && v37 == v32)
          {
            break;
          }

          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*v27)(v63, v64);
          if (v38)
          {
            goto LABEL_27;
          }

          if (v33 == ++v34)
          {
            goto LABEL_22;
          }
        }

        (*v27)(v63, v64);
LABEL_27:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100C55800(v21);
        }

        if (v34 < *(v21 + 2))
        {
          (*v53)(&v21[v35 + v36], v58, v64);
          goto LABEL_13;
        }

LABEL_39:
        __break(1u);

        __break(1u);
      }

      else
      {

LABEL_33:
        v42 = v47;
        URLComponents.queryItems.setter();
        v43 = v52;
        URLComponents.url.getter();
        (*(v48 + 8))(v42, v50);
        v44 = v49;
        v45 = v51;
        if ((*(v49 + 48))(v43, 1, v51) == 1)
        {
          sub_1000095E8(v43, &qword_1011BA528, &qword_100F0C778);
        }

        else
        {
          (*(v44 + 8))(a2, v45);
          (*(v44 + 32))(a2, v43, v45);
        }
      }
    }
  }
}

void *URLComponents.queryItemsDictionary.getter()
{
  v0 = type metadata accessor for URLQueryItem();
  v34 = *(v0 - 8);
  __chkstk_darwin();
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = URLComponents.queryItems.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v33 = *(v3 + 16);
  if (!v33)
  {

    return 0;
  }

  v5 = sub_100C1C39C(_swiftEmptyArrayStorage);
  v6 = 0;
  v32 = v4 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v30 = (v34 + 8);
  v31 = v34 + 16;
  v28 = v4;
  v29 = v2;
  while (v6 < *(v4 + 16))
  {
    (*(v34 + 16))(v2, v32 + *(v34 + 72) * v6, v0);
    v7 = URLQueryItem.value.getter();
    if (v8)
    {
      v9 = v8;
      v35 = v7;
      v10 = v0;
      URLQueryItem.name.getter();
      v11 = String.lowercased()();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v5;
      v14 = sub_100019C40(v11._countAndFlagsBits, v11._object);
      v15 = v5[2];
      v16 = (v13 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        goto LABEL_25;
      }

      v18 = v13;
      if (v5[3] >= v17)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v0 = v10;
          if ((v13 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          sub_100C56424();
          v0 = v10;
          if ((v18 & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_100C55EB0(v17, isUniquelyReferenced_nonNull_native);
        v19 = sub_100019C40(v11._countAndFlagsBits, v11._object);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_27;
        }

        v14 = v19;
        v0 = v10;
        if ((v18 & 1) == 0)
        {
LABEL_17:
          v5 = v36;
          v36[(v14 >> 6) + 8] |= 1 << v14;
          *(v5[6] + 16 * v14) = v11;
          v22 = (v5[7] + 16 * v14);
          *v22 = v35;
          v22[1] = v9;
          v2 = v29;
          (*v30)(v29, v0);
          v23 = v5[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_26;
          }

          v5[2] = v25;
          goto LABEL_19;
        }
      }

      v5 = v36;
      v21 = (v36[7] + 16 * v14);
      *v21 = v35;
      v21[1] = v9;

      v2 = v29;
      (*v30)(v29, v0);
LABEL_19:
      v4 = v28;
      goto LABEL_5;
    }

    (*v30)(v2, v0);
LABEL_5:
    if (v33 == ++v6)
    {

      return v5;
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

void *sub_100C55708(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_1011BAE88, &qword_100F0D5B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_100C5577C(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_1011BAE80, &qword_100F0D5B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_100C55828(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_100C559AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011B9BA0, &qword_100F0BD60);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_33;
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

    if (v31)
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}