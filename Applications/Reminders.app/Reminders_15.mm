uint64_t sub_10018E230(uint64_t a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  *&v17 = sub_1000C84C8();
  *(&v17 + 1) = v7;
  v18 = v8;
  v19 = v9 & 1;
  v10 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  v11 = sub_100189404(a3, a4, sub_1000C5CC8, sub_1000EDADC, sub_1000C4548, sub_1000C4C10);
  sub_1001A0B30(v11, 2, 0, 1);

  v12 = a2 + qword_100771760;
  v13 = *(a2 + qword_100771760);
  v14 = *(a2 + qword_100771760 + 8);
  v15 = *(a2 + qword_100771760 + 16);
  *v12 = v17;
  *(v12 + 16) = v18;
  *(v12 + 24) = v19;
  result = sub_100100898(v13, v14, v15);
  *(a2 + v10) = 0;
  return result;
}

uint64_t sub_10018E360(uint64_t a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  *&v17 = sub_1000C8504();
  *(&v17 + 1) = v7;
  v18 = v8;
  v19 = v9 & 1;
  v10 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  v11 = sub_100189404(a3, a4, sub_1000C5D78, sub_1000EDB04, sub_1000C49CC, sub_1000C4FC8);
  sub_1001A0CEC(v11, 2, 0, 1);

  v12 = a2 + qword_100771760;
  v13 = *(a2 + qword_100771760);
  v14 = *(a2 + qword_100771760 + 8);
  v15 = *(a2 + qword_100771760 + 16);
  *v12 = v17;
  *(v12 + 16) = v18;
  *(v12 + 24) = v19;
  result = sub_100100898(v13, v14, v15);
  *(a2 + v10) = 0;
  return result;
}

double sub_10018E490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TTRITreeViewSectionsMetadata(0, *(*a4 + 80), *(*a4 + 88), a4);
  v8 = sub_10015E918(a2, a3, v6, v7);
  sub_1000874D4(v8, v9, 2, 0, 1);

  return result;
}

void sub_10018E544(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v47 = a1;
  v48 = a6;
  v50 = a5;
  v8 = *a2;
  v9 = swift_isaMask;
  v10 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *((v9 & v8) + 0x58);
  v46 = *((v9 & v8) + 0x50);
  v19 = type metadata accessor for TTRITreeViewNodeReuseQueue(0, v46, v17, v18);
  v23 = sub_10059F120(v19, v20, v21, v22);
  v24 = sub_10018BBC4(a3, a4, v23);

  v49 = v24;
  v25 = sub_10023B6B0(v24, v50);
  v50 = v26;
  v29 = sub_100189FAC(v25, v26, v27, v28);
  sub_1001600E4(a4, v29, v31, v30 & 1, v12);

  v32 = v13;

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_1000079B4(v12, &unk_100771B10, qword_10062E540);
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100003E30(v33, qword_1007716F0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Can't find indexPath to insert currentItem into", v36, 2u);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v37 = IndexPath.row.modify();
    if (__OFADD__(*v38, v50))
    {
      __break(1u);
    }

    else
    {
      *v38 += v50;
      v37(v51, 0);
      v39 = v46;
      v41 = type metadata accessor for TTRITreeViewSectionsMetadata(0, v46, v17, v40);
      sub_10015EB58(v25, v16, v41);
      v51[0] = v25;
      type metadata accessor for TTRITreeViewNode(255, v39, v17, v42);
      v43 = type metadata accessor for Array();
      WitnessTable = swift_getWitnessTable();
      sub_1000872C8(v51, 0, 0, 1, v43, WitnessTable);

      (*(v14 + 8))(v16, v32);
    }
  }
}

uint64_t sub_10018E958(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = sub_10023BABC(a3, a4, a5);
  v8 = v7;
  v10 = v9;
  result = IndexPath.row.getter();
  v12 = __OFADD__(result, v6);
  v13 = result + v6;
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = __OFADD__(result, v8);
  v14 = result + v8;
  if (v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v14 < v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = IndexPath.row.getter();
  v12 = __OFADD__(result, v10);
  v15 = result + v10;
  if (v12)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = IndexPath.section.getter();
  result = IndexPath.section.getter();
  if (v16 != result || v13 >= v15)
  {
    goto LABEL_9;
  }

  v17 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
    goto LABEL_14;
  }

  v12 = __OFSUB__(v15, v17);
  v15 -= v17;
  if (!v12)
  {
LABEL_9:
    v18 = IndexPath.section.getter();
    v19 = IndexPath.section.getter();
    v20 = *(v5 + 80);
    v21 = *(v5 + 88);
    v23 = type metadata accessor for TTRITreeViewSectionsMetadata(0, v20, v21, v22);
    v29[0] = sub_10015EEAC(v13, v14, v18, v19, v15, v23);
    v29[1] = v24;
    v29[2] = v25;
    v29[3] = v26;
    type metadata accessor for TTRITreeViewNode(255, v20, v21, v26);
    v27 = type metadata accessor for ArraySlice();
    WitnessTable = swift_getWitnessTable();
    sub_1000872C8(v29, 2, 0, 1, v27, WitnessTable);
    return swift_unknownObjectRelease();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10018EB2C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a5;
  v89 = a4;
  v109 = a2;
  v103 = type metadata accessor for TTRITreeViewExpandedState();
  v104 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v97 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v80 - v14;
  v16 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v16 - 8);
  v106 = &v80 - v17;
  v18 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v18 - 8);
  v20 = &v80 - v19;
  v81 = a1;
  v21 = *a1;
  v22 = *(v21 + 16);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v108 = v9;
  v24 = *(v9 + 56);
  v111.i64[0] = v8;
  v24(v20, 1, 1, v8);
  v25 = (v109[4])(Strong, v20);

  sub_1000079B4(v20, &qword_100772140, &qword_10062D9F0);
  v113 = _swiftEmptyArrayStorage;
  v114.i64[0] = &_swiftEmptyDictionarySingleton;
  v114.i64[1] = &_swiftEmptyDictionarySingleton;
  v115 = 1;
  v84 = a3;
  v26 = (a3 + qword_100771778);
  swift_beginAccess();
  v80 = v26;
  v27 = *v26;
  v112 = *v26;
  v93 = v22;
  v92 = v25;
  if (v25 <= v22)
  {
    v28 = v22;
  }

  else
  {
    v28 = v25;
  }

  v91 = v28;
  v105 = v27;
  if (!v28)
  {

    v111 = vdupq_n_s64(&_swiftEmptyDictionarySingleton);
    v76 = _swiftEmptyArrayStorage;
    v77 = 1;
    goto LABEL_46;
  }

  v85 = v21;
  v83 = v21 + 32;
  v109 = v108 + 2;
  ++v108;
  ++v107;
  v101 = (v104 + 16);
  v100 = (v104 + 88);
  v99 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
  v98 = enum case for TTRITreeViewExpandedState.collapsed(_:);
  v96 = enum case for TTRITreeViewExpandedState.expanded(_:);

  v29 = 0;
  v82 = xmmword_10062D420;
  while (1)
  {
    v95 = v29;
    if (v29 < v93)
    {
      break;
    }

    v46 = 0;
    v30 = 0;
    v47 = 0;
    v48 = 0;
    v49 = _swiftEmptyArrayStorage;
    if (v29 < v92)
    {
      goto LABEL_24;
    }

LABEL_7:
    sub_1000301AC(v30, v46);
LABEL_8:
    if (++v29 == v91)
    {

      v76 = v113;
      v111 = v114;
      v77 = v115;
      v105 = v112;
LABEL_46:
      v78 = v81;

      *v78 = v76;
      *(v78 + 1) = v111;
      *(v78 + 24) = v77;
      *v80 = v105;
    }
  }

  if (v29 >= *(v85 + 16))
  {
    goto LABEL_49;
  }

  v94 = *(v83 + 16 * v29);
  v31 = v94;
  v32 = *(*v94 + 144);
  swift_beginAccess();
  v33 = v31 + v32;
  v34 = v111.i64[0];
  *&v105 = *v109;
  (v105)(v11, v33, v111.i64[0]);
  v88 = v31;

  v35 = *(&v94 + 1);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v104 = *v108;
  (v104)(v11, v34);
  v36 = v106;
  sub_1000E992C(v15, v106);
  v37 = *v107;
  (*v107)(v15, v110);
  sub_1000079B4(v36, &unk_10076BB50, &unk_10062DEA0);
  if (v35 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
    if (!v38)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_22;
    }
  }

  if (v38 < 1)
  {
    goto LABEL_50;
  }

  v39 = 0;
  v40 = v35 & 0xC000000000000001;
  v41 = v35;
  do
  {
    if (v40)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v42 = *(v35 + 8 * v39 + 32);
    }

    ++v39;
    v43 = *(*v42 + 144);
    swift_beginAccess();
    v44 = v111.i64[0];
    (v105)(v11, v42 + v43, v111.i64[0]);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (v104)(v11, v44);
    v45 = v106;
    sub_1000E992C(v15, v106);

    v37(v15, v110);
    sub_1000079B4(v45, &unk_10076BB50, &unk_10062DEA0);
    v35 = v41;
  }

  while (v38 != v39);
LABEL_22:
  v46 = swift_allocObject();
  *(v46 + 16) = v94;
  v50 = v88;

  sub_1001A0B30(v50, 3, v90, 0);

  v29 = v95;
  if (v95 >= v92)
  {
    v30 = sub_1001A61A0;
    goto LABEL_7;
  }

  v49 = sub_10019071C(*(v46 + 16), *(v46 + 24), sub_100081578);
  v47 = sub_1001A61A0;
  v48 = v46;
LABEL_24:
  v87 = v48;
  v88 = v47;
  sub_100058000(&unk_10076BBA0, &unk_10062FDF0);
  swift_allocObject();
  v51 = sub_1000F168C(v49);

  sub_1000DE144(v29, v51);
  v53 = v52;
  *&v94 = v54;
  sub_1000C98A8(v54);
  v86 = v51;
  if (!(v53 >> 62))
  {
    v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

  v55 = _CocoaArrayWrapper.endIndex.getter();
  if (!v55)
  {
LABEL_40:
    v71 = v113;
    v72 = v113[2];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v72 >= v71[3] >> 1)
    {
      v71 = sub_10054704C(isUniquelyReferenced_nonNull_native, v72 + 1, 1, v71);
      v113 = v71;
    }

    v29 = v95;
    v74 = v94;
    sub_1000EDC30(v72, v72, 1, v94, v53);
    v113 = v71;
    sub_1000C4308(v72, 1);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    inited = swift_initStackObject();
    *(inited + 16) = v82;
    *(inited + 32) = v74;

    sub_1000C4C10(inited, v72);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1000C4C10(v53, v72);
    sub_1001A0B30(v74, 3, v90, 0);
    sub_1000301AC(v88, v87);

    goto LABEL_8;
  }

LABEL_26:
  v56 = 0;
  *&v105 = v53 & 0xC000000000000001;
  v104 = (v53 & 0xFFFFFFFFFFFFFF8);
  v57 = v53;
  while (2)
  {
    if (v105)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v62 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_47;
      }

LABEL_33:
      v63 = qword_1007A84C0;
      swift_beginAccess();
      v64 = v61 + v63;
      v65 = v102;
      v66 = v103;
      (*v101)(v102, v64, v103);
      v67 = (*v100)(v65, v66);
      if (v67 != v99)
      {
        if (v67 == v98)
        {
          v68 = *(*v61 + 144);
          swift_beginAccess();
          v69 = v111.i64[0];
          (*v109)(v11, v61 + v68, v111.i64[0]);
          v70 = v97;
          TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
          (*v108)(v11, v69);
          sub_10058B6B8(v15, v70);

          (*v107)(v15, v110);
LABEL_29:
          ++v56;
          v53 = v57;
          if (v62 == v55)
          {
            goto LABEL_40;
          }

          continue;
        }

        if (v67 != v96)
        {
          goto LABEL_51;
        }
      }

      v58 = *(*v61 + 144);
      swift_beginAccess();
      v59 = v111.i64[0];
      (*v109)(v11, v61 + v58, v111.i64[0]);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*v108)(v11, v59);
      v60 = v106;
      sub_1000E992C(v15, v106);

      (*v107)(v15, v110);
      sub_1000079B4(v60, &unk_10076BB50, &unk_10062DEA0);
      goto LABEL_29;
    }

    break;
  }

  if (v56 >= *(v104 + 2))
  {
    goto LABEL_48;
  }

  v61 = *(v53 + 8 * v56 + 32);

  v62 = v56 + 1;
  if (!__OFADD__(v56, 1))
  {
    goto LABEL_33;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10018F924(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a5;
  v89 = a4;
  v109 = a2;
  v103 = type metadata accessor for TTRITreeViewExpandedState();
  v104 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v97 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v80 - v14;
  v16 = sub_100058000(&qword_10076B8B0, &unk_10062FC30);
  __chkstk_darwin(v16 - 8);
  v106 = &v80 - v17;
  v18 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v18 - 8);
  v20 = &v80 - v19;
  v81 = a1;
  v21 = *a1;
  v22 = *(v21 + 16);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v108 = v9;
  v24 = *(v9 + 56);
  v111.i64[0] = v8;
  v24(v20, 1, 1, v8);
  v25 = (v109[4])(Strong, v20);

  sub_1000079B4(v20, &unk_100771B40, &unk_10062FB70);
  v113 = _swiftEmptyArrayStorage;
  v114.i64[0] = &_swiftEmptyDictionarySingleton;
  v114.i64[1] = &_swiftEmptyDictionarySingleton;
  v115 = 1;
  v84 = a3;
  v26 = (a3 + qword_100771778);
  swift_beginAccess();
  v80 = v26;
  v27 = *v26;
  v112 = *v26;
  v93 = v22;
  v92 = v25;
  if (v25 <= v22)
  {
    v28 = v22;
  }

  else
  {
    v28 = v25;
  }

  v91 = v28;
  v105 = v27;
  if (!v28)
  {

    v111 = vdupq_n_s64(&_swiftEmptyDictionarySingleton);
    v76 = _swiftEmptyArrayStorage;
    v77 = 1;
    goto LABEL_46;
  }

  v85 = v21;
  v83 = v21 + 32;
  v109 = v108 + 2;
  ++v108;
  ++v107;
  v101 = (v104 + 16);
  v100 = (v104 + 88);
  v99 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
  v98 = enum case for TTRITreeViewExpandedState.collapsed(_:);
  v96 = enum case for TTRITreeViewExpandedState.expanded(_:);

  v29 = 0;
  v82 = xmmword_10062D420;
  while (1)
  {
    v95 = v29;
    if (v29 < v93)
    {
      break;
    }

    v46 = 0;
    v30 = 0;
    v47 = 0;
    v48 = 0;
    v49 = _swiftEmptyArrayStorage;
    if (v29 < v92)
    {
      goto LABEL_24;
    }

LABEL_7:
    sub_1000301AC(v30, v46);
LABEL_8:
    if (++v29 == v91)
    {

      v76 = v113;
      v111 = v114;
      v77 = v115;
      v105 = v112;
LABEL_46:
      v78 = v81;

      *v78 = v76;
      *(v78 + 1) = v111;
      *(v78 + 24) = v77;
      *v80 = v105;
    }
  }

  if (v29 >= *(v85 + 16))
  {
    goto LABEL_49;
  }

  v94 = *(v83 + 16 * v29);
  v31 = v94;
  v32 = *(*v94 + 144);
  swift_beginAccess();
  v33 = v31 + v32;
  v34 = v111.i64[0];
  *&v105 = *v109;
  (v105)(v11, v33, v111.i64[0]);
  v88 = v31;

  v35 = *(&v94 + 1);

  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
  v104 = *v108;
  (v104)(v11, v34);
  v36 = v106;
  sub_1000E9DB0(v15, v106);
  v37 = *v107;
  (*v107)(v15, v110);
  sub_1000079B4(v36, &qword_10076B8B0, &unk_10062FC30);
  if (v35 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
    if (!v38)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_22;
    }
  }

  if (v38 < 1)
  {
    goto LABEL_50;
  }

  v39 = 0;
  v40 = v35 & 0xC000000000000001;
  v41 = v35;
  do
  {
    if (v40)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v42 = *(v35 + 8 * v39 + 32);
    }

    ++v39;
    v43 = *(*v42 + 144);
    swift_beginAccess();
    v44 = v111.i64[0];
    (v105)(v11, v42 + v43, v111.i64[0]);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    (v104)(v11, v44);
    v45 = v106;
    sub_1000E9DB0(v15, v106);

    v37(v15, v110);
    sub_1000079B4(v45, &qword_10076B8B0, &unk_10062FC30);
    v35 = v41;
  }

  while (v38 != v39);
LABEL_22:
  v46 = swift_allocObject();
  *(v46 + 16) = v94;
  v50 = v88;

  sub_1001A0CEC(v50, 3, v90, 0);

  v29 = v95;
  if (v95 >= v92)
  {
    v30 = sub_1001A2514;
    goto LABEL_7;
  }

  v49 = sub_10019071C(*(v46 + 16), *(v46 + 24), sub_100081680);
  v47 = sub_1001A2514;
  v48 = v46;
LABEL_24:
  v87 = v48;
  v88 = v47;
  sub_100058000(&unk_10076B770, &qword_10062FB68);
  swift_allocObject();
  v51 = sub_1000F4C58(v49);

  sub_1000DE3CC(v29, v51);
  v53 = v52;
  *&v94 = v54;
  sub_1000C9CD0(v54);
  v86 = v51;
  if (!(v53 >> 62))
  {
    v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

  v55 = _CocoaArrayWrapper.endIndex.getter();
  if (!v55)
  {
LABEL_40:
    v71 = v113;
    v72 = v113[2];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v72 >= v71[3] >> 1)
    {
      v71 = sub_100547654(isUniquelyReferenced_nonNull_native, v72 + 1, 1, v71);
      v113 = v71;
    }

    v29 = v95;
    v74 = v94;
    sub_1000EDC44(v72, v72, 1, v94, v53);
    v113 = v71;
    sub_1000C478C(v72, 1);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    inited = swift_initStackObject();
    *(inited + 16) = v82;
    *(inited + 32) = v74;

    sub_1000C4FC8(inited, v72);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1000C4FC8(v53, v72);
    sub_1001A0CEC(v74, 3, v90, 0);
    sub_1000301AC(v88, v87);

    goto LABEL_8;
  }

LABEL_26:
  v56 = 0;
  *&v105 = v53 & 0xC000000000000001;
  v104 = (v53 & 0xFFFFFFFFFFFFFF8);
  v57 = v53;
  while (2)
  {
    if (v105)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v62 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_47;
      }

LABEL_33:
      v63 = qword_1007A84C0;
      swift_beginAccess();
      v64 = v61 + v63;
      v65 = v102;
      v66 = v103;
      (*v101)(v102, v64, v103);
      v67 = (*v100)(v65, v66);
      if (v67 != v99)
      {
        if (v67 == v98)
        {
          v68 = *(*v61 + 144);
          swift_beginAccess();
          v69 = v111.i64[0];
          (*v109)(v11, v61 + v68, v111.i64[0]);
          v70 = v97;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          (*v108)(v11, v69);
          sub_10058C648(v15, v70);

          (*v107)(v15, v110);
LABEL_29:
          ++v56;
          v53 = v57;
          if (v62 == v55)
          {
            goto LABEL_40;
          }

          continue;
        }

        if (v67 != v96)
        {
          goto LABEL_51;
        }
      }

      v58 = *(*v61 + 144);
      swift_beginAccess();
      v59 = v111.i64[0];
      (*v109)(v11, v61 + v58, v111.i64[0]);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      (*v108)(v11, v59);
      v60 = v106;
      sub_1000E9DB0(v15, v106);

      (*v107)(v15, v110);
      sub_1000079B4(v60, &qword_10076B8B0, &unk_10062FC30);
      goto LABEL_29;
    }

    break;
  }

  if (v56 >= *(v104 + 2))
  {
    goto LABEL_48;
  }

  v61 = *(v53 + 8 * v56 + 32);

  v62 = v56 + 1;
  if (!__OFADD__(v56, 1))
  {
    goto LABEL_33;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10019071C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D420;
  *(v5 + 32) = a1;
  v8 = v5;

  a3(v6);
  return v8;
}

void sub_1001907A8(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v19 = a1;
  v3 = *v2;
  v20 = swift_isaMask & *v2;
  v4 = *((swift_isaMask & v3) + 0x50);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = *(v4 - 8);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  if (sub_100189678(&qword_100771740, sub_100128A14))
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    (*(v9 + 56))(v8, 1, 1, v4);
    sub_1002DF4E4();

    (*(v6 + 8))(v8, v5);
    v14 = sub_10018BBC4(v12, 0, v21);
    type metadata accessor for TTRITreeViewNode(0, v4, *(v20 + 88), v15);
    v22 = Array.init()();
    sub_10023B044(&v22);

    (*(v9 + 8))(v12, v4);
    TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:)(v14);
  }

  else
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_1007716F0);
    v17 = sub_100008E04(_swiftEmptyArrayStorage);
    v18 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Need non-nil dataSource here", 28, 2uLL, v17, v18);
    __break(1u);
  }
}

uint64_t sub_100190AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = *v5;
  v9 = swift_isaMask;
  v10 = sub_100189FAC(a1, a3, a4, a5);
  v11 = *((v9 & v8) + 0x50);
  v15 = sub_10015F984(a1, v10, v13, v14, v12 & 1, v11, *((v9 & v8) + 0x58));

  if (v15 && (Strong = swift_weakLoadStrong(), , Strong))
  {
    v17 = *(*Strong + 144);
    swift_beginAccess();
    v18 = *(v11 - 8);
    (*(v18 + 16))(a2, Strong + v17, v11);

    return (*(v18 + 56))(a2, 0, 1, v11);
  }

  else
  {
    v20 = *(*(v11 - 8) + 56);

    return v20(a2, 1, 1, v11);
  }
}

uint64_t sub_100190C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = swift_isaMask;
  v8 = sub_100189FAC(a1, a2, a3, a4);
  v9 = *((v7 & v6) + 0x50);
  v10 = *((v7 & v6) + 0x58);
  v14 = sub_10015F984(a1, v8, v12, v13, v11 & 1, v9, v10);

  if (v14)
  {
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      type metadata accessor for TTRITreeViewNode(255, v9, v10, v18);
      type metadata accessor for Array();

      swift_getWitnessTable();
      Collection.firstIndex(where:)();

      return v32;
    }

    v20 = sub_100189FAC(0, v15, v16, v17);
    v23 = sub_1001600A8(v14, v20, v21, v22);

    if (v23)
    {
      v28 = sub_100189FAC(v24, v25, v26, v27);
      v31 = sub_10015DA7C(v14, v28, v29, v30);

      return v31;
    }
  }

  return 0;
}

uint64_t sub_100190EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a1;
  v68 = a3;
  v5 = *v3;
  v6 = swift_isaMask;
  v67 = swift_isaMask & *v3;
  v7 = type metadata accessor for TTRITreeViewExpandedState();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v6 & v5) + 0x50);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  v18 = *(v10 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v61 - v21;
  (*(v12 + 16))(v17, a2, v11, v20);
  if ((*(v18 + 48))(v17, 1, v10) == 1)
  {
    v23 = (*(v12 + 8))(v17, v11);
    sub_100189FAC(v23, v24, v25, v26);

    type metadata accessor for TTRITreeViewSectionsMetadata.Section(0, v10, *(v67 + 88), v27);
    Array.subscript.getter();

    v28 = v73;

    v29 = *(*v28 + 144);
    swift_beginAccess();
    v30 = v28 + v29;
    v31 = v68;
    (*(v18 + 16))(v68, v30, v10);

    return (*(v18 + 56))(v31, 0, 1, v10);
  }

  v62 = v14;
  v63 = v11;
  v33 = (*(v18 + 32))(v22, v17, v10);
  v37 = sub_100189FAC(v33, v34, v35, v36);
  v67 = *(v67 + 88);
  v41 = sub_10015F984(v22, v37, v39, v40, v38 & 1, v10, v67);
  v42 = v10;
  v43 = v18;
  v44 = v41;

  if (!v44)
  {
    (*(v43 + 8))(v22, v42);
    return (*(v43 + 56))(v68, 1, 1, v42);
  }

  v45 = v43;
  v46 = qword_1007A84C0;
  swift_beginAccess();
  v47 = v64;
  v48 = v44 + v46;
  v49 = v65;
  (*(v64 + 16))(v9, v48, v65);
  v50 = (*(v47 + 88))(v9, v49);
  v51 = v68;
  if (v50 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {

    (*(v45 + 8))(v22, v42);
    return (*(v45 + 56))(v51, 1, 1, v42);
  }

  if (v50 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    if (sub_100189678(&qword_100771740, sub_100128A14))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      v65 = v44;
      v53 = Strong;
      v54 = v62;
      (*(v45 + 16))(v62, v22, v42);
      v67 = *(v45 + 56);
      (v67)(v54, 0, 1, v42);
      sub_1002DF4E4();

      (*(v12 + 8))(v54, v63);
      (*(v45 + 8))(v22, v42);
      return (v67)(v51, 0, 1, v42);
    }

LABEL_13:

    (*(v45 + 8))(v22, v42);
    v58 = *(v45 + 56);
    v59 = v51;
    v60 = 1;
    return v58(v59, v60, 1, v42);
  }

  if (v50 != enum case for TTRITreeViewExpandedState.expanded(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v72 = *(v44 + 64);
  type metadata accessor for TTRITreeViewNode(255, v42, v67, v55);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v71 = v69;
  v70 = v66;
  sub_100058000(&qword_10076FC10, &unk_100632980);
  if ((Range.contains(_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  Array.subscript.getter();
  v56 = v71;
  swift_endAccess();

  (*(v45 + 8))(v22, v42);
  v57 = *(*v56 + 144);
  swift_beginAccess();
  (*(v45 + 16))(v51, v56 + v57, v42);

  v58 = *(v45 + 56);
  v59 = v51;
  v60 = 0;
  return v58(v59, v60, 1, v42);
}

uint64_t sub_100191678(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v52 = swift_isaMask & *v1;
  v5 = type metadata accessor for TTRITreeViewExpandedState();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v4 & v3) + 0x50);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = *(v8 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v47 - v19;
  (*(v10 + 16))(v15, a1, v9, v18);
  if ((*(v16 + 48))(v15, 1, v8) == 1)
  {
    v21 = (*(v10 + 8))(v15, v9);
    sub_100189FAC(v21, v22, v23, v24);

    type metadata accessor for TTRITreeViewSectionsMetadata.Section(0, v8, *(v52 + 88), v25);
    v26 = Array.count.getter();

    return v26;
  }

  v47 = v9;
  v48 = v12;
  v27 = (*(v16 + 32))(v20, v15, v8);
  v31 = sub_100189FAC(v27, v28, v29, v30);
  v49 = *(v52 + 88);
  v35 = sub_10015F984(v20, v31, v33, v34, v32 & 1, v8, v49);

  if (!v35)
  {
    (*(v16 + 8))(v20, v8);
    return 0;
  }

  v52 = v16;
  v36 = v20;
  v37 = qword_1007A84C0;
  swift_beginAccess();
  v39 = v50;
  v38 = v51;
  (*(v50 + 16))(v7, v35 + v37, v51);
  v40 = (*(v39 + 88))(v7, v38);
  if (v40 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
LABEL_5:

    (*(v52 + 8))(v36, v8);
    return 0;
  }

  if (v40 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    if (sub_100189678(&qword_100771740, sub_100128A14))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      v42 = *(*v35 + 144);
      swift_beginAccess();
      v43 = v52;
      v44 = v48;
      (*(v52 + 16))(v48, v35 + v42, v8);
      (*(v43 + 56))(v44, 0, 1, v8);
      v26 = sub_1002DF538();

      (*(v10 + 8))(v44, v47);
      (*(v43 + 8))(v36, v8);
      return v26;
    }

    goto LABEL_5;
  }

  if (v40 == enum case for TTRITreeViewExpandedState.expanded(_:))
  {
    swift_beginAccess();
    type metadata accessor for TTRITreeViewNode(0, v8, v49, v45);

    v26 = Array.count.getter();

    (*(v52 + 8))(v36, v8);
    return v26;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_100191C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100189FAC(a1, a2, a3, a4);
  v9 = sub_100191CAC(a1, v5, v7, v8, v6 & 1);

  return v9;
}

id sub_100191CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = a5;
  v22 = a4;
  v9 = *v5;
  v10 = swift_isaMask;
  v11 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015FF3C(a1, a2, a3, v22, v23, *((v10 & v9) + 0x50), *((v10 & v9) + 0x58), v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000079B4(v13, &unk_100771B10, qword_10062E540);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v19 = *(v5 + qword_100771730);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v21 = [v19 cellForRowAtIndexPath:isa];

    (*(v15 + 8))(v17, v14);
    return v21;
  }
}

uint64_t *sub_100191EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  result = sub_10015F984(a1, a2, a3, a4, a5, *((swift_isaMask & *v6) + 0x50), *((swift_isaMask & *v6) + 0x58));
  if (result)
  {
    v12 = result;
    if ((sub_1001600A8(result, a2, a3, a4) & 1) != 0 && (v13 = sub_10015DA7C(v12, a2, a3, a4), (v14 & 1) == 0))
    {
      v15 = [*(v6 + qword_100771730) *a6];

      return v15;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100191FE8(char a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = [*(v1 + qword_100771730) indexPathsForSelectedRows];
  if (!v4)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v5 = v4;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003B2E80(v6);
    }

    v8 = v6[2];
    v11[0] = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11[1] = v8;
    sub_1000EC324(v11);
  }

  v11[0] = v6;
  __chkstk_darwin(v7);
  sub_100058000(&unk_10078A370, &unk_10063AB80);
  sub_10011763C(&unk_100771B00, &unk_10078A370, &unk_10063AB80);
  v10 = Sequence.compactMap<A>(_:)();

  return v10;
}

uint64_t sub_1001921C8(uint64_t a1, int a2)
{
  v24 = a2;
  v25 = a1;
  v3 = *v2;
  v4 = swift_isaMask;
  v5 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v5 - 8);
  v7 = &v23[-v6];
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100189FAC(v12, v13, v14, v15);
  sub_10015FF3C(v25, v16, v18, v19, v17 & 1, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000079B4(v7, &unk_100771B10, qword_10062E540);
  }

  (*(v9 + 32))(v11, v7, v8);
  v21 = *(v2 + qword_100771730);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v21 deselectRowAtIndexPath:isa animated:v24 & 1];

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100192414(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  if (!a1)
  {
    goto LABEL_20;
  }

  v4 = ObjectType;
  if (static Selector.== infix(_:_:)())
  {
    result = sub_100189738(sub_100129494);
    if (!result)
    {
      return result;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = sub_1001294C8();
    goto LABEL_5;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    v9 = sub_100129494;
    goto LABEL_9;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
    {
      v9 = sub_10012949C;
      goto LABEL_9;
    }

    if (static Selector.== infix(_:_:)() & 1) != 0 || (v10 = static Selector.== infix(_:_:)(), ObjectType = v4, (v10))
    {
      v9 = sub_1001294A4;
LABEL_9:
      result = sub_100189738(v9);
      if (result)
      {

        return 1;
      }

      return result;
    }

LABEL_20:
    v11.receiver = v1;
    v11.super_class = ObjectType;
    return objc_msgSendSuper2(&v11, "respondsToSelector:", a1);
  }

  result = sub_100189738(sub_10012949C);
  if (result)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = sub_10012928C();
LABEL_5:
    v8 = v7;

    return v8 & 1;
  }

  return result;
}

uint64_t sub_1001925F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOBYTE(a3) = sub_100192414(a3);

  return a3 & 1;
}

void sub_100192634(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100192888(v4, &selRef_scrollViewDidScroll_);
}

void sub_1001926A4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100192888(v4, &selRef_scrollViewWillBeginDragging_);
}

void *sub_100192714(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector:"scrollViewDidEndDragging:willDecelerate:"])
    {
      [v5 scrollViewDidEndDragging:a1 willDecelerate:a2 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1001927A8(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_100192714(v6, a4);
}

void sub_100192818(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100192888(v4, &selRef_scrollViewDidEndDecelerating_);
}

void *sub_100192888(uint64_t a1, SEL *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector:*a2])
    {
      [v5 *a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100192914(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100192888(v4, &selRef_scrollViewDidEndScrollingAnimation_);
}

uint64_t sub_100192984(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v11 = sub_1001A3DFC(a4, v8, v9, v10);

  return v11;
}

uint64_t sub_1001929D8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v9 = sub_1001A3EEC(v5, v6, v7, v8);

  return v9;
}

uint64_t sub_100192A24(uint64_t a1, char *a2, uint64_t a3)
{
  v59 = a2;
  swift_getObjectType();
  v5 = sub_100058000(&unk_10076B8D0, &unk_100634070);
  __chkstk_darwin(v5);
  v60 = &v51 - v6;
  v7 = sub_100058000(&unk_1007884E0, &unk_10062FC40);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v51 - v11;
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  __chkstk_darwin(v15);
  v61 = &v51 - v16;
  v17 = type metadata accessor for TTRITreeViewCellModel();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v57 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v51 - v21;
  sub_10000794C(a1, &v68, &qword_10076AE40, &qword_10062EE50);
  if (!v69)
  {
    v32 = &qword_10076AE40;
    v33 = &qword_10062EE50;
    v34 = &v68;
LABEL_8:
    sub_1000079B4(v34, v32, v33);
    return 0;
  }

  sub_100007DD8(&v68, v70);
  sub_1000046FC(v70, &v62);
  sub_100058000(&qword_10076B8E0, &unk_100634080);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100004758(v70);
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v32 = &qword_10076B8E8;
    v33 = &qword_10062FC50;
    v34 = &v65;
    goto LABEL_8;
  }

  v55 = a3;
  v56 = v9;
  sub_100005FD0(&v65, &v68);
  swift_getWitnessTable();
  sub_10000AE84(&v68, v69);
  swift_unknownObjectRetain();
  v23 = dispatch thunk of TTRITreeViewCellProtocol.treeCellViewDelegate.setter();
  sub_10023BE9C(v23, v22);
  sub_10000C36C(&v68, v69);
  v24 = v61;
  dispatch thunk of TTRITreeViewCellProtocol.treeCellViewModel.getter();
  v25 = *(v18 + 16);
  v59 = v22;
  v53 = v18 + 16;
  v51 = v25;
  v25(v14, v22, v17);
  v26 = *(v18 + 56);
  v54 = v18 + 56;
  v52 = v26;
  v26(v14, 0, 1, v17);
  v27 = *(v5 + 48);
  v28 = v60;
  sub_10000794C(v24, v60, &unk_1007884E0, &unk_10062FC40);
  sub_10000794C(v14, v28 + v27, &unk_1007884E0, &unk_10062FC40);
  v29 = *(v18 + 48);
  if (v29(v28, 1, v17) == 1)
  {
    sub_1000079B4(v14, &unk_1007884E0, &unk_10062FC40);
    sub_1000079B4(v24, &unk_1007884E0, &unk_10062FC40);
    v30 = v29(v28 + v27, 1, v17);
    v31 = v18;
    if (v30 == 1)
    {
      sub_1000079B4(v28, &unk_1007884E0, &unk_10062FC40);
      (*(v18 + 8))(v59, v17);
LABEL_16:
      sub_100004758(v70);
      sub_100004758(&v68);
      return 0;
    }

    goto LABEL_11;
  }

  v36 = v58;
  sub_10000794C(v28, v58, &unk_1007884E0, &unk_10062FC40);
  if (v29(v28 + v27, 1, v17) == 1)
  {
    sub_1000079B4(v14, &unk_1007884E0, &unk_10062FC40);
    sub_1000079B4(v61, &unk_1007884E0, &unk_10062FC40);
    v31 = v18;
    (*(v18 + 8))(v36, v17);
LABEL_11:
    sub_1000079B4(v28, &unk_10076B8D0, &unk_100634070);
    goto LABEL_12;
  }

  v31 = v18;
  v37 = v28 + v27;
  v38 = v57;
  (*(v18 + 32))(v57, v37, v17);
  sub_1001A670C(&qword_10076B908, &type metadata accessor for TTRITreeViewCellModel, &protocol conformance descriptor for TTRITreeViewCellModel);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v18 + 8);
  v40(v38, v17);
  sub_1000079B4(v14, &unk_1007884E0, &unk_10062FC40);
  sub_1000079B4(v61, &unk_1007884E0, &unk_10062FC40);
  v40(v36, v17);
  sub_1000079B4(v28, &unk_1007884E0, &unk_10062FC40);
  if (v39)
  {
    v40(v59, v17);
    goto LABEL_16;
  }

LABEL_12:
  sub_10000794C(v55, &v62, &unk_10076B8C0, &unk_100634060);
  if (v63)
  {
    sub_100005FD0(&v62, &v65);
  }

  else
  {
    v41 = type metadata accessor for TTRITreeViewAnimatingUnanimatedWrapper();
    v42 = swift_allocObject();
    *(v42 + 16) = _swiftEmptyArrayStorage;
    *(v42 + 24) = _swiftEmptyArrayStorage;
    *(&v66 + 1) = v41;
    v67 = sub_1001A670C(&qword_10076B900, type metadata accessor for TTRITreeViewAnimatingUnanimatedWrapper, &unk_100633FB0);
    *&v65 = v42;
  }

  sub_10000C36C(&v68, v69);
  v43 = v56;
  v44 = v59;
  v51(v56, v59, v17);
  v52(v43, 0, 1, v17);
  v45 = *(&v66 + 1);
  v46 = v67;
  v47 = sub_10000C36C(&v65, *(&v66 + 1));
  v63 = v45;
  v64 = *(v46 + 8);
  v48 = sub_1000317B8(&v62);
  (*(*(v45 - 8) + 16))(v48, v47, v45);
  dispatch thunk of TTRITreeViewCellProtocol.setTreeCellViewModel(_:animator:)();
  sub_1000079B4(v43, &unk_1007884E0, &unk_10062FC40);
  sub_100004758(&v62);
  v49 = *(&v66 + 1);
  v50 = v67;
  sub_10000C36C(&v65, *(&v66 + 1));
  (*(v50 + 16))(v49, v50);
  (*(v31 + 8))(v44, v17);
  sub_100004758(v70);
  sub_100004758(&v65);
  sub_100004758(&v68);
  return 1;
}

id sub_1001932B4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v12 = sub_1001A3F90(v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

void sub_1001933C4(uint64_t *a3@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = sub_1002DF588();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

uint64_t sub_100193420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a3;
  v43 = a7;
  v38 = a5;
  v39 = a4;
  v41 = a1;
  v44 = a8;
  v11 = *v8;
  v40 = swift_isaMask & *v8;
  v12 = *((swift_isaMask & v11) + 0x50);
  v37 = *(v12 - 8);
  __chkstk_darwin(a1);
  v14 = &v36 - v13;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - v17;
  v19 = *(a6 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a2, v15, v21);
  if ((*(v19 + 48))(v18, 1, a6) == 1)
  {
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    v24 = (*(v19 + 32))(v23, v18, a6);
    v28 = sub_100189FAC(v24, v25, v26, v27);
    v32 = sub_10015F890(v41, v28, v30, v31, v29 & 1, v12, *(v40 + 88));

    if (v32)
    {
      v33 = *(*v32 + 144);
      swift_beginAccess();
      v34 = v37;
      (*(v37 + 16))(v14, v32 + v33, v12);
      v39(v14, v23);

      (*(v34 + 8))(v14, v12);
      return (*(v19 + 8))(v23, a6);
    }

    (*(v19 + 8))(v23, a6);
  }

  return (*(*(v43 - 8) + 16))(v44, v42);
}

id sub_100193800(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  v9 = a1;
  a5(a4);
  v11 = v10;

  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_100193898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1002DF5D8();
}

uint64_t sub_100193904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a3;
  v43 = a7;
  v38 = a5;
  v39 = a4;
  v41 = a1;
  v44 = a8;
  v11 = *v8;
  v40 = swift_isaMask & *v8;
  v12 = *((swift_isaMask & v11) + 0x50);
  v37 = *(v12 - 8);
  __chkstk_darwin(a1);
  v14 = &v36 - v13;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - v17;
  v19 = *(a6 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a2, v15, v21);
  if ((*(v19 + 48))(v18, 1, a6) == 1)
  {
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    v24 = (*(v19 + 32))(v23, v18, a6);
    v28 = sub_100189FAC(v24, v25, v26, v27);
    v32 = sub_10015F6B4(v41, v28, v30, v31, v29 & 1, v12, *(v40 + 88));

    if (v32)
    {
      v33 = *(*v32 + 144);
      swift_beginAccess();
      v34 = v37;
      (*(v37 + 16))(v14, v32 + v33, v12);
      v39(v14, v23);

      (*(v34 + 8))(v14, v12);
      return (*(v19 + 8))(v23, a6);
    }

    (*(v19 + 8))(v23, a6);
  }

  return (*(*(v43 - 8) + 16))(v44, v42);
}

uint64_t sub_100193CB4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  sub_1001A4A70(a4, v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100193E50(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v116 = a3;
  v120 = a2;
  v109 = a1;
  v5.isa = v3->isa;
  v6 = swift_isaMask;
  v7 = type metadata accessor for IndexPath();
  v112 = *(v7 - 8);
  v113 = v7;
  __chkstk_darwin(v7);
  v110 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v108 = &v102 - v10;
  v11 = *((v6 & v5.isa) + 0x50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v107 = type metadata accessor for Optional();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v114 = &v102 - v12;
  v105 = swift_getTupleTypeMetadata2();
  __chkstk_darwin(v105);
  v104 = &v102 - v13;
  v14 = type metadata accessor for Optional();
  v117 = *(v14 - 1);
  v118 = v14;
  __chkstk_darwin(v14);
  v16 = &v102 - v15;
  v17 = *(v11 - 8);
  __chkstk_darwin(v18);
  v111 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v119 = &v102 - v21;
  __chkstk_darwin(v22);
  v24 = &v102 - v23;
  v29 = sub_100189FAC(v25, v26, v27, v28);
  v30 = *((v6 & v5.isa) + 0x58);
  v32 = v120;
  v35 = sub_10015F6B4(v120, v29, v33, v34, v31 & 1, v11, v30);

  if (!v35)
  {
    return result;
  }

  v37 = *(*v35 + 144);
  swift_beginAccess();
  (*(v17 + 16))(v24, &v35[v37], v11);
  v38 = v4;
  sub_100190AA0(v24, v16, v39, v40, v41);
  v42 = v17;
  v43 = v24;
  if ((*(v17 + 48))(v16, 1, v11) == 1)
  {
    (v117[1].isa)(v16, v118);
LABEL_6:
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100003E30(v51, qword_1007716F0);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Unexpected: parent/childIndex not found for item to be moved", v54, 2u);
    }

    return (*(v17 + 8))(v43, v11);
  }

  v118 = v35;
  v44 = *(v17 + 32);
  v45 = v119;
  v44(v119, v16, v11);
  v49 = sub_100190C84(v43, v46, v47, v48);
  if (v50)
  {
    (*(v17 + 8))(v45, v11);
    goto LABEL_6;
  }

  v102 = v49;
  v55 = v114;
  v56 = v116;
  sub_10019499C(v32, v116, 1, 1, v114);
  v57 = TupleTypeMetadata2;
  v58 = (*(*(TupleTypeMetadata2 - 8) + 48))(v55, 1, TupleTypeMetadata2);
  v103 = v43;
  if (v58 == 1)
  {
    (*(v106 + 8))(v55, v107);
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100003E30(v59, qword_1007716F0);
    v61 = v112;
    v60 = v113;
    v62 = *(v112 + 16);
    v63 = v108;
    v62(v108, v32, v113);
    v64 = v110;
    v62(v110, v56, v60);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v121[0] = v120;
      *v67 = 136315394;
      v68 = IndexPath.description.getter();
      v69 = v63;
      v70 = v60;
      v72 = v71;
      v117 = v65;
      v73 = *(v61 + 8);
      v73(v69, v70);
      v74 = sub_100004060(v68, v72, v121);

      *(v67 + 4) = v74;
      *(v67 + 12) = 2080;
      v75 = IndexPath.description.getter();
      v77 = v76;
      v73(v64, v70);
      v78 = sub_100004060(v75, v77, v121);

      *(v67 + 14) = v78;
      v79 = v117;
      _os_log_impl(&_mh_execute_header, v117, v66, "Unexpected: cannot find target parent/index for moving. {from: %s, to: %s}", v67, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v98 = *(v61 + 8);
      v98(v64, v60);
      v98(v63, v60);
    }

    v99 = *(v42 + 8);
    v99(v119, v11);
  }

  else
  {
    v80 = *&v55[*(v57 + 48)];
    v117 = v38;
    v81 = v105;
    v82 = *(v105 + 48);
    v83 = v104;
    v44(v104, v55, v11);
    *&v83[v82] = v80;
    v84 = v117;
    v116 = *&v83[*(v81 + 48)];
    v85 = v111;
    v44(v111, v83, v11);
    v86 = sub_100189678(&qword_100771740, sub_100128A14);
    v87 = v119;
    v88 = v102;
    if (v86)
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      sub_1002DF658();
    }

    __chkstk_darwin(v86);
    v90 = v103;
    *(&v102 - 6) = v84;
    *(&v102 - 5) = v90;
    *(&v102 - 4) = v88;
    *(&v102 - 3) = v87;
    *(&v102 - 2) = v116;
    *(&v102 - 1) = v85;
    sub_10019616C(sub_1001A66FC);
    v91 = v85;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v93 = [v109 cellForRowAtIndexPath:isa];

    v94 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:3 curve:0 animations:0.3];
    v95 = type metadata accessor for TTRITreeViewAnimatingWrapper();
    v96 = swift_allocObject();
    *(v96 + 16) = v94;
    if (v93)
    {
      v97 = sub_100003540(0, &qword_10076B8B8, UITableViewCell_ptr);
    }

    else
    {
      v97 = 0;
      v122[1] = 0;
      v122[2] = 0;
    }

    v122[0] = v93;
    v122[3] = v97;
    v121[3] = v95;
    v121[4] = sub_1001A670C(&qword_100771B78, type metadata accessor for TTRITreeViewAnimatingWrapper, &unk_100634004);
    v121[0] = v96;
    v100 = v94;
    v101 = v93;

    sub_100192A24(v122, v118, v121);

    sub_1000079B4(v121, &unk_10076B8C0, &unk_100634060);
    sub_1000079B4(v122, &qword_10076AE40, &qword_10062EE50);
    v99 = *(v17 + 8);
    v99(v91, v11);
    v99(v119, v11);
  }

  return (v99)(v103, v11);
}

uint64_t sub_10019499C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, int a4@<W3>, char *a5@<X8>)
{
  v207 = a4;
  LODWORD(v224) = a3;
  v223 = a2;
  v225 = a1;
  v221 = a5;
  v6 = *((swift_isaMask & *v5) + 0x58);
  v7 = *((swift_isaMask & *v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v200 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v199 = &v198 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v202 = &v198 - v10;
  v11 = type metadata accessor for Optional();
  v217 = *(v11 - 8);
  v218 = v11;
  __chkstk_darwin(v11);
  v203 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v209 = &v198 - v14;
  __chkstk_darwin(v15);
  v215 = &v198 - v16;
  __chkstk_darwin(v17);
  v19 = &v198 - v18;
  __chkstk_darwin(v20);
  v208 = &v198 - v21;
  v213 = v6;
  v23 = type metadata accessor for TTRITreeViewTableAdapter.MoveDestination(0, v7, v6, v22);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v212 = &v198 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v198 - v27;
  __chkstk_darwin(v29);
  v31 = &v198 - v30;
  v222 = v7;
  v226 = *(v7 - 1);
  __chkstk_darwin(v32);
  v204 = &v198 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v205 = &v198 - v35;
  __chkstk_darwin(v36);
  v214 = &v198 - v37;
  __chkstk_darwin(v38);
  v40 = &v198 - v39;
  __chkstk_darwin(v41);
  v43 = &v198 - v42;
  __chkstk_darwin(v44);
  v46 = &v198 - v45;
  __chkstk_darwin(v47);
  v49 = &v198 - v48;
  __chkstk_darwin(v50);
  v206 = &v198 - v51;
  __chkstk_darwin(v52);
  v210 = &v198 - v53;
  __chkstk_darwin(v54);
  v216 = &v198 - v55;
  v56 = v224;
  v224 = v5;
  sub_10019D678(v225, v223, v56, v31);
  v220 = v24;
  v57 = v24 + 16;
  v58 = *(v24 + 16);
  v223 = v31;
  v211 = v57;
  v58(v28, v31, v23);
  v219 = v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v87 = v226;
      v78 = *(v226 + 32);
      v88 = v214;
      v89 = v222;
      (v78)(v214, v28, v222);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v91 = v209;
      (*(v87 + 16))(v209, v88, v89);
      (*(v87 + 56))(v91, 0, 1, v89);
      v92 = sub_10052A84C(v91);
      LOBYTE(v87) = v93;

      (*(v217 + 8))(v91, v218);
      v94 = v219;
      if ((v87 & 1) == 0)
      {
        v215 = v92;
        v113 = v89;
        (v78)(v216, v88, v89);
        v114 = v223;
        v115 = v212;
        v46 = v94;
        goto LABEL_54;
      }

      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      sub_100003E30(v95, qword_1007716F0);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.fault.getter();
      v98 = os_log_type_enabled(v96, v97);
      v100 = v220;
      v99 = v221;
      v101 = v214;
      if (v98)
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&_mh_execute_header, v96, v97, "Missing parent child count", v102, 2u);
      }

      (*(v226 + 8))(v101, v89);
      (*(v100 + 8))(v223, v94);
      goto LABEL_40;
    }

    v46 = v219;
    v63 = v226;
    if (EnumCaseMultiPayload != 3)
    {
      (*(v220 + 8))(v223, v219);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v104 = *(*(TupleTypeMetadata2 - 8) + 56);
      v105 = v221;
      return v104(v105, 1, 1, TupleTypeMetadata2);
    }

    v64 = sub_100189FAC(EnumCaseMultiPayload, v60, v61, v62);
    v66 = v222;
    v69 = sub_10015F6B4(v225, v64, v67, v68, v65 & 1, v222, v213);

    if (v69)
    {
      v70 = *(*v69 + 144);
      swift_beginAccess();
      v71 = v210;
      (*(v63 + 16))(v210, v69 + v70, v66);
      v72 = v208;
      sub_100190AA0(v71, v208, v73, v74, v75);
      if ((*(v63 + 48))(v72, 1, v66) == 1)
      {
        (*(v217 + 8))(v72, v218);
LABEL_44:
        v150 = v220;
        v149 = v221;
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v151 = type metadata accessor for Logger();
        sub_100003E30(v151, qword_1007716F0);
        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          *v154 = 0;
          _os_log_impl(&_mh_execute_header, v152, v153, "Unexpected: parent/childIndex not found for item to be moved", v154, 2u);
        }

        (*(v226 + 8))(v210, v66);
        (*(v150 + 8))(v223, v46);
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v104 = *(*(TupleTypeMetadata2 - 8) + 56);
        v105 = v149;
        return v104(v105, 1, 1, TupleTypeMetadata2);
      }

      v78 = *(v63 + 32);
      v143 = v206;
      (v78)(v206, v72, v66);
      v147 = sub_100190C84(v71, v144, v145, v146);
      if (v148)
      {
        (*(v63 + 8))(v143, v66);
        goto LABEL_44;
      }

      v215 = v147;
      (*(v63 + 8))(v71, v66);

      v113 = v66;
      (v78)(v216, v143, v66);
      goto LABEL_53;
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v137 = type metadata accessor for Logger();
    sub_100003E30(v137, qword_1007716F0);
    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.fault.getter();
    v140 = os_log_type_enabled(v138, v139);
    v132 = v220;
    v99 = v221;
    if (v140)
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&_mh_execute_header, v138, v139, "Unexpected: node not found at sourceIndexPath", v141, 2u);
    }

LABEL_39:
    (*(v132 + 8))(v223, v46);
LABEL_40:
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v104 = *(*(TupleTypeMetadata2 - 8) + 56);
    v105 = v99;
    return v104(v105, 1, 1, TupleTypeMetadata2);
  }

  v76 = v215;
  v214 = v43;
  if (!EnumCaseMultiPayload)
  {
    v77 = v226;
    v78 = *(v226 + 32);
    v79 = v49;
    v80 = v28;
    v81 = v222;
    (v78)(v49, v80, v222);
    v82 = v19;
    v83 = v79;
    sub_100190AA0(v79, v82, v84, v85, v86);
    if ((*(v77 + 48))(v82, 1, v81) == 1)
    {
      (*(v217 + 8))(v82, v218);
    }

    else
    {
      (v78)(v46, v82, v81);
      v119 = sub_100190C84(v79, v116, v117, v118);
      if ((v120 & 1) == 0)
      {
        v155 = v119;
        (*(v226 + 8))(v79, v81);
        v113 = v81;
        (v78)(v216, v46, v81);
        if (__OFADD__(v155, 1))
        {
          __break(1u);
          goto LABEL_76;
        }

        v215 = (v155 + 1);
        v46 = v219;
        goto LABEL_53;
      }

      (*(v226 + 8))(v46, v81);
    }

    v121 = v220;
    v99 = v221;
    v122 = v219;
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    sub_100003E30(v123, qword_1007716F0);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&_mh_execute_header, v124, v125, "Missing parent/childIndex", v126, 2u);
    }

    (*(v226 + 8))(v83, v81);
    (*(v121 + 8))(v223, v122);
    goto LABEL_40;
  }

  v106 = v226;
  v78 = *(v226 + 32);
  v107 = v214;
  v108 = v28;
  v109 = v222;
  (v78)(v214, v108, v222);
  sub_100190AA0(v107, v76, v110, v111, v112);
  if ((*(v106 + 48))(v76, 1, v109) == 1)
  {
    (*(v217 + 8))(v76, v218);
    v46 = v219;
LABEL_29:
    v132 = v220;
    v99 = v221;
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v133 = type metadata accessor for Logger();
    sub_100003E30(v133, qword_1007716F0);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&_mh_execute_header, v134, v135, "Missing parent/childIndex", v136, 2u);
    }

    (*(v106 + 8))(v214, v109);
    goto LABEL_39;
  }

  (v78)(v40, v76, v109);
  v130 = sub_100190C84(v107, v127, v128, v129);
  v46 = v219;
  if (v131)
  {
    (*(v106 + 8))(v40, v109);
    goto LABEL_29;
  }

  v215 = v130;
  (*(v106 + 8))(v107, v109);
  v113 = v109;
  (v78)(v216, v40, v109);
LABEL_53:
  v114 = v223;
  v115 = v212;
LABEL_54:
  v222 = v78;
  v58(v115, v114, v46);
  v156 = swift_getEnumCaseMultiPayload();
  v83 = *(v220 + 8);
  if (v156 != 3)
  {
    v158 = v83(v115, v46);
    v78 = v221;
    v81 = v113;
    if ((v207 & 1) == 0)
    {
      v83(v114, v46);
      v157 = v215;
      goto LABEL_61;
    }

    v162 = sub_100189FAC(v158, v159, v160, v161);
    v166 = sub_10015F6B4(v225, v162, v164, v165, v163 & 1, v113, v213);

    if (!v166)
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v177 = type metadata accessor for Logger();
      sub_100003E30(v177, qword_1007716F0);
      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        *v180 = 0;
        _os_log_impl(&_mh_execute_header, v178, v179, "Unexpected: node not found at sourceIndexPath", v180, 2u);
      }

      v83(v223, v46);
      (*(v226 + 8))(v216, v81);
      goto LABEL_73;
    }

    v167 = *(*v166 + 144);
    swift_beginAccess();
    v168 = v166;
    v169 = v226;
    v170 = *(v226 + 16);
    v225 = v168;
    v82 = v205;
    v170(v205, v168 + v167, v81);
    v171 = v203;
    sub_100190AA0(v82, v203, v172, v173, v174);
    if ((*(v169 + 48))(v171, 1, v81) == 1)
    {
      (*(v217 + 8))(v171, v218);
    }

    else
    {
      (v222)(v204, v171, v81);
      v184 = sub_100190C84(v82, v181, v182, v183);
      if ((v185 & 1) == 0)
      {
        v191 = v213;
        v192 = *(v213 + 24);
        v224 = v184;
        v192(v81, v213);
        v193 = v199;
        v192(v81, v191);
        v194 = AssociatedTypeWitness;
        swift_getAssociatedConformanceWitness();
        v195 = dispatch thunk of static Equatable.== infix(_:_:)();

        v196 = *(v200 + 8);
        v196(v193, v194);
        v196(v202, v194);
        v197 = *(v226 + 8);
        v197(v204, v81);
        v197(v205, v81);
        v83(v223, v46);
        v157 = &v215[-(v195 & (v224 < v215))];
        goto LABEL_61;
      }

      (*(v169 + 8))(v204, v81);
    }

    if (qword_100766FC8 == -1)
    {
LABEL_70:
      v186 = type metadata accessor for Logger();
      sub_100003E30(v186, qword_1007716F0);
      v187 = Logger.logObject.getter();
      v188 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v187, v188))
      {
        v189 = swift_slowAlloc();
        *v189 = 0;
        _os_log_impl(&_mh_execute_header, v187, v188, "Unexpected: parent/childIndex not found for item to be moved", v189, 2u);
        v82 = v205;
      }

      v190 = *(v226 + 8);
      v190(v82, v81);
      v83(v223, v46);
      v190(v216, v81);
LABEL_73:
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v104 = *(*(TupleTypeMetadata2 - 8) + 56);
      v105 = v78;
      return v104(v105, 1, 1, TupleTypeMetadata2);
    }

LABEL_76:
    swift_once();
    goto LABEL_70;
  }

  v83(v114, v46);
  v83(v115, v46);
  v78 = v221;
  v157 = v215;
  v81 = v113;
LABEL_61:
  v175 = swift_getTupleTypeMetadata2();
  v176 = *(v175 + 48);
  (v222)(v78, v216, v81);
  *&v78[v176] = v157;
  return (*(*(v175 - 8) + 56))(v78, 0, 1, v175);
}

uint64_t sub_100195F78(void *a1, void (*a2)(char *, void, uint64_t), void (*a3)(char *, void, uint64_t), uint64_t a4, void (*a5)(void, void, void), uint64_t a6)
{
  v21 = a6;
  v22 = a2;
  v23 = a3;
  v24 = a5;
  v7 = *((swift_isaMask & *a1) + 0x50);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v21 - v14;
  v16 = *(v7 - 8);
  v17 = *(v16 + 16);
  v17(&v21 - v14, a4, v7, v13);
  v18 = *(v16 + 56);
  v18(v15, 0, 1, v7);
  (v17)(v11, v21, v7);
  v18(v11, 0, 1, v7);
  sub_10018D1A4(v22, v23, v15, v24, v11);
  v19 = *(v9 + 8);
  v19(v11, v8);
  return (v19)(v15, v8);
}

double sub_10019616C(uint64_t a1)
{
  if (*(v1 + qword_100771770))
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003E30(v2, qword_1007716F0);
    v9 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v9, v3, "performBatchUpdateWithoutTableViewUpdates cannot be called during a batch update", v4, 2u);
    }
  }

  else
  {
    __chkstk_darwin(a1);
    v8[2] = v6;
    v8[3] = v7;
    return sub_10018B568(sub_100026418, v8, sub_1001A6754, 0, 0, 0);
  }

  return result;
}

uint64_t sub_1001962DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  sub_100193E50(v14, v13, v10);

  v16 = *(v8 + 8);
  v16(v10, v7);
  return (v16)(v13, v7);
}

uint64_t sub_100196428(void *a1, char *a2)
{
  v5 = *((swift_isaMask & *v2) + 0x50);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = v13 - v7;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = *(*a2 + 144);
  swift_beginAccess();
  (*(v6 + 16))(v8, &a2[v10], v5);
  sub_100128BDC();

  (*(v6 + 8))(v8, v5);
  v15[3] = sub_100003540(0, &qword_10076B8B8, UITableViewCell_ptr);
  v14 = 0;
  v15[0] = a1;
  memset(v13, 0, sizeof(v13));
  v11 = a1;
  sub_100192A24(v15, a2, v13);
  sub_1000079B4(v13, &unk_10076B8C0, &unk_100634060);
  return sub_1000079B4(v15, &qword_10076AE40, &qword_10062EE50);
}

uint64_t sub_100196600(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = a1;
  sub_1001A4C30(v13, v11);

  return (*(v9 + 8))(v11, v8);
}

void sub_100196714(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_1001A508C(v9, a5, sub_100128C04);
}

void sub_1001967B0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_1001A508C(v9, a5, sub_100128C2C);
}

void sub_100196894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128FDC();
}

double sub_1001968F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_isaMask;
  v18 = sub_100189678(&qword_100771758, sub_100128A14);
  v14 = *((v8 & v7) + 0x50);
  v15 = *((v8 & v7) + 0x58);
  v16 = a2;
  v17 = a3;
  v10 = type metadata accessor for TTRIAnyTreeViewDelegate(0, v14, v15, v9);
  sub_100193904(a1, &v18, v11, sub_1001A6324, &v13, v10, &type metadata for () + 8, &type metadata for ());

  return result;
}

void sub_100196A00(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1001A537C();
}

double sub_100196A78(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1001A54FC(a4, sub_100129494, type metadata accessor for TTRIAnyTreeViewSectionHeaderViewProviding, sub_1001A6664);

  return v8;
}

double sub_100196B10(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1001A54FC(a4, sub_10012949C, type metadata accessor for TTRIAnyTreeViewSectionFooterViewProviding, sub_1001A6634);

  return v8;
}

double sub_100196BC0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = sub_1001A5410(v11, a5);

  (*(v9 + 8))(v11, v8);
  return v14;
}

double sub_100196CD8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1001A54FC(a4, sub_100129494, type metadata accessor for TTRIAnyTreeViewSectionHeaderViewProviding, sub_1001A65D4);

  return v8;
}

void sub_100196D70(uint64_t a1@<X0>, double (*a3)(void *, uint64_t)@<X3>, double *a4@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = a3(Strong, a1);

  *a4 = v8;
}

double sub_100196DE0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1001A54FC(a4, sub_10012949C, type metadata accessor for TTRIAnyTreeViewSectionFooterViewProviding, sub_1001A65A4);

  return v8;
}

id sub_100196E78(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1001A55D0(a4, sub_100129494, sub_1001294C4);

  return v8;
}

id sub_100196F0C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1001A55D0(a4, sub_10012949C, sub_100129308);

  return v8;
}

void sub_100196F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128CA4();
}

void sub_100197054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128CF8();
}

void sub_1001970C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128D20();
}

double sub_10019713C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 isEditing] && (isa = IndexPath._bridgeToObjectiveC()().super.isa, v8 = objc_msgSend(a1, "cellForRowAtIndexPath:", isa), isa, v8) && (v9 = objc_msgSend(v8, "isSelected"), v8, v9))
  {
    v10 = type metadata accessor for IndexPath();
    v11 = *(*(v10 - 8) + 56);

    v11(a3, 1, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a3, a2, v13);
    v15 = (*(v14 + 56))(a3, 0, 1, v13);
    __chkstk_darwin(v15);
    v16[2] = v3;
    v16[3] = a3;
    return sub_1001968F0(a2, sub_1001A64F8, v16);
  }

  return result;
}

Class sub_100197318(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a1;
  sub_10019713C(v13, v9, v12);

  v15 = *(v7 + 8);
  v15(v9, v6);
  v16 = (*(v7 + 48))(v12, 1, v6);
  v17 = 0;
  if (v16 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15(v12, v6);
    v17 = isa;
  }

  return v17;
}

double sub_1001974D0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  (*(v6 + 16))(a2, a1, v5);
  (*(v6 + 56))(a2, 0, 1, v5);
  v9 = v2;
  v10 = a2;
  return sub_1001968F0(a1, sub_1001A6444, &v8);
}

uint64_t sub_1001975BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), void (*a6)(char *, char *))
{
  v76 = a6;
  v77 = a4;
  v79 = a5;
  v8 = *a1;
  v9 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v9 - 8);
  v75 = &v69 - v10;
  v11 = *(v8 + 88);
  v12 = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v70 = &v69 - v14;
  v88 = v15;
  v16 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v80 = &v69 - v17;
  v86 = *(v16 - 8);
  __chkstk_darwin(v18);
  v72 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v83 = &v69 - v21;
  __chkstk_darwin(v22);
  v87 = &v69 - v23;
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = (&v69 - v29);
  v74 = a3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v78 = a2;
  v79(Strong, a2);

  v32 = *(v25 + 16);
  v79 = v30;
  v32(v27, v30, v24);
  v33 = *(v12 - 8);
  v34 = (*(v33 + 48))(v27, 1, v12);
  v81 = v25;
  v82 = v24;
  if (v34 == 1)
  {
    (*(v25 + 8))(v27, v24);
    v35 = v84;
    v36 = *(v84 + 56);
    v36(v87, 1, 1, v88);
    v37 = v11;
    v38 = *(v11 + 24);
  }

  else
  {
    v35 = v84;
    v38 = *(v11 + 24);
    v39 = v11;
    v40 = v87;
    v37 = v39;
    v38(v12);
    (*(v33 + 8))(v27, v12);
    v36 = *(v35 + 56);
    v36(v40, 0, 1, v88);
  }

  v41 = v83;
  v71 = v12;
  v78 = v37;
  (v38)(v12, v37);
  v42 = v88;
  v36(v41, 0, 1, v88);
  v43 = v86;
  v44 = *(TupleTypeMetadata2 + 48);
  v45 = *(v86 + 16);
  v46 = v80;
  v45(v80, v87, v16);
  v45(&v46[v44], v41, v16);
  v47 = v35;
  v48 = v46;
  v49 = *(v47 + 48);
  if (v49(v48, 1, v42) != 1)
  {
    v52 = v87;
    v53 = v72;
    v45(v72, v48, v16);
    if (v49(&v48[v44], 1, v88) != 1)
    {
      v62 = v48;
      v63 = v84;
      v64 = v70;
      v65 = v88;
      (*(v84 + 32))(v70, &v62[v44], v88);
      swift_getAssociatedConformanceWitness();
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = *(v63 + 8);
      v67(v64, v65);
      v68 = *(v86 + 8);
      v68(v83, v16);
      v68(v52, v16);
      v67(v53, v65);
      v55 = (v68)(v62, v16);
      v51 = v81;
      if (v66)
      {
        return (*(v51 + 8))(v79, v82);
      }

LABEL_10:
      __chkstk_darwin(v55);
      *(&v69 - 2) = v74;
      v56 = type metadata accessor for IndexPath();
      v57 = v75;
      v58 = v82;
      v59 = v79;
      sub_100188A78(v76, (&v69 - 4), &type metadata for Never, v56, v60, v75);
      (*(v51 + 8))(v59, v58);
      return sub_1001A6488(v57, v77);
    }

    v54 = *(v86 + 8);
    v54(v83, v16);
    v54(v52, v16);
    (*(v84 + 8))(v53, v88);
LABEL_9:
    v55 = (*(v73 + 8))(v48, TupleTypeMetadata2);
    v51 = v81;
    goto LABEL_10;
  }

  v50 = *(v43 + 8);
  v50(v41, v16);
  v50(v87, v16);
  if (v49(&v48[v44], 1, v88) != 1)
  {
    goto LABEL_9;
  }

  v50(v48, v16);
  v51 = v81;
  return (*(v51 + 8))(v79, v82);
}

uint64_t sub_100197DE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = *a2;
  v8 = swift_isaMask;
  v9 = sub_100189FAC(a1, a2, a4, a5);
  sub_10015FF3C(a1, v9, v11, v12, v10 & 1, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), a3);
}

Class sub_100197EAC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a1;
  sub_1001974D0(v9, v12);

  v15 = *(v7 + 8);
  v15(v9, v6);
  v16 = (*(v7 + 48))(v12, 1, v6);
  v17 = 0;
  if (v16 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15(v12, v6);
    v17 = isa;
  }

  return v17;
}

void sub_100198060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128D98();
}

void sub_1001980D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128DC0();
}

void sub_100198148(uint64_t *a2@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = sub_100128E10();

  *a2 = v4;
}

uint64_t sub_1001981A0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v12 = sub_1001A59AC(v9);

  (*(v7 + 8))(v9, v6);
  return v12;
}

void sub_1001982B8(uint64_t a1@<X0>, uint64_t (*a3)(void *, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = a3(Strong, a1);

  *a4 = v8;
}

id sub_100198338(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = sub_1001A5AA0(v11, a5);

  (*(v9 + 8))(v11, v8);

  return v14;
}

uint64_t sub_100198458(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  LOBYTE(a1) = sub_1001A5B90(v9);

  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

void sub_100198558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128EB4();
}

uint64_t sub_1001985CC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

void sub_1001986D4(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a2, v6, &unk_100771B10, qword_10062E540);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &unk_100771B10, qword_10062E540);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v12 = [a1 cellForRowAtIndexPath:isa];

    if (v12)
    {
      [v12 setEditing:0 animated:0];
    }

    (*(v8 + 8))(v10, v7);
  }

  if (sub_100189678(&qword_100771758, sub_100128A14))
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100128EDC();
  }
}

uint64_t sub_100198918(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  if (a4)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a3;
  v13 = a1;
  sub_1001986D4(v12, v9);

  return sub_1000079B4(v9, &unk_100771B10, qword_10062E540);
}

uint64_t sub_100198A58@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

Class sub_100198AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100198A58(v8, v14);
  v15 = *(v6 + 8);
  v15(v8, v5);
  v15(v11, v5);
  v16.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v15(v14, v5);

  return v16.super.isa;
}

void sub_100198C88(_BYTE *a2@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = sub_100128F5C();

  *a2 = v4 & 1;
}

uint64_t sub_100198CFC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (a6)
  {
    v14 = a3;
    v15 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    v16 = a3;
    v17 = a1;
  }

  v18 = sub_1001A5CBC(a4, v13, v20);

  sub_1000079B4(v20, &qword_10076AE40, &qword_10062EE50);
  (*(v11 + 8))(v13, v10);
  return v18 & 1;
}

void sub_100198E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128F88();
}

uint64_t sub_100198ED0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (a6)
  {
    v14 = a3;
    v15 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v19, 0, sizeof(v19));
    v16 = a3;
    v17 = a1;
  }

  sub_1001A5DBC(a4, v13, v19);

  sub_1000079B4(v19, &qword_10076AE40, &qword_10062EE50);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100199024(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = *v4;
  v10 = swift_isaMask;
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong convertPoint:a1 fromCoordinateSpace:{a3, a4}];
  v13 = v12;
  v15 = v14;

  v24 = 0;
  v25 = sub_100189678(&qword_100771758, sub_100128A14);
  v21 = v4;
  v22 = v13;
  v23 = v15;
  v17 = type metadata accessor for TTRIAnyTreeViewDelegate(0, *((v10 & v9) + 0x50), *((v10 & v9) + 0x58), v16);
  v18 = sub_100058000(&qword_100771B68, &qword_1006340A8);
  sub_100193904(a2, &v25, &v24, sub_1001A630C, &v20, v17, v18, &v26);

  return v26;
}

void sub_100199170(uint64_t *a2@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = sub_10012902C();

  *a2 = v4;
}

id sub_1001991E0(void *a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a5;
  v15 = a1;
  v16 = sub_100199024(v14, v13, a2, a3);

  (*(v11 + 8))(v13, v10);

  return v16;
}

void sub_10019930C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  sub_1001A5E00(v9, a5, sub_1001290A8);

  swift_unknownObjectRelease();
}

void sub_1001993E8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, uint64_t, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  sub_1001A5E00(v11, a5, a6);

  swift_unknownObjectRelease();
}

uint64_t sub_1001994D0(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void, void, void), void (*a8)(char *, char *))
{
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = a3;
  v19 = a1;
  LOBYTE(a8) = sub_1001A4B54(v17, a5, a6, a7, a8);

  (*(v15 + 8))(v17, v14);
  return a8 & 1;
}

uint64_t sub_100199600(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  LOBYTE(a4) = sub_1001A5EC4(a4, 1, sub_1001A62AC);

  return a4 & 1;
}

void sub_10019966C(uint64_t a1@<X0>, uint64_t (*a3)(void *, uint64_t)@<X3>, _BYTE *a4@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  LOBYTE(a3) = a3(Strong, a1);

  *a4 = a3 & 1;
}

uint64_t sub_1001996D8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  LOBYTE(a4) = sub_1001A5EC4(a4, 0, sub_1001A627C);

  return a4 & 1;
}

void sub_100199744(uint64_t a1, uint64_t a2)
{
  if (sub_100189678(&qword_100771750, sub_1002DF79C))
  {
    v3 = TTRListContentsPrefetchExtender.extendFetchIndexPaths(_:sectionCountProvider:rowCountProvider:)();
    __chkstk_darwin(v3);
    sub_100058000(&unk_10078A370, &unk_10063AB80);
    sub_10011763C(&unk_100771B00, &unk_10078A370, &unk_10063AB80);
    Sequence.compactMap<A>(_:)();

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_1002DF680();
  }
}

uint64_t sub_10019991C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = *a2;
  v8 = swift_isaMask;
  v9 = sub_100189FAC(a1, a2, a4, a5);
  v10 = *((v8 & v7) + 0x50);
  v14 = sub_10015F6B4(a1, v9, v12, v13, v11 & 1, v10, *((v8 & v7) + 0x58));

  if (!v14)
  {
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }

  v15 = *(*v14 + 144);
  swift_beginAccess();
  v16 = *(v10 - 8);
  (*(v16 + 16))(a3, v14 + v15, v10);

  return (*(v16 + 56))(a3, 0, 1, v10);
}

uint64_t sub_100199AC8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for IndexPath();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = a1;
  sub_100199744(v7, v6);
}

id sub_100199B48(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v62 = a3;
  v63 = a2;
  v6 = *((swift_isaMask & *v4) + 0x50);
  v65 = *(v6 - 8);
  __chkstk_darwin(a1);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v64 = &v59 - v9;
  v12 = *((v11 & v10) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v59 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  type metadata accessor for TTRITreeViewContextMenuItemIdentifier();
  sub_10056C470(a1, AssociatedTypeWitness, v17);
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v17, v14);
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_1007716F0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "TTRITreeViewTableAdapter: unexpected type for context menu item ID", v25, 2u);
    }

    return 0;
  }

  v59 = v18;
  v26 = (*(v18 + 32))(v21, v17, AssociatedTypeWitness);
  v30 = sub_100189FAC(v26, v27, v28, v29);
  v60 = v21;
  v34 = sub_10015FB6C(v21, v30, v32, v33, v31 & 1, v6, v12);

  if (!v34)
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100003E30(v46, qword_1007716F0);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v60;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "TTRITreeViewTableAdapter: unable to generate UITargetedPreview; item may have been deleted", v51, 2u);
    }

    (*(v59 + 8))(v50, AssociatedTypeWitness);
    return 0;
  }

  v35 = *(*v34 + 144);
  swift_beginAccess();
  v36 = v65;
  v37 = v34 + v35;
  v38 = v61;
  (*(v65 + 16))(v61, v37, v6);

  v39 = v64;
  (*(v36 + 32))(v64, v38, v6);
  v40 = v63(v39);
  if (v40)
  {
    v44 = v40;
    (*(v36 + 8))(v39, v6);
    (*(v59 + 8))(v60, AssociatedTypeWitness);
    return v44;
  }

  v52 = sub_100191C34(v39, v41, v42, v43);
  if (!v52)
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100003E30(v55, qword_1007716F0);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "TTRITreeViewTableAdapter: unable to generate UITargetedPreview; cell not found", v58, 2u);
    }

    (*(v36 + 8))(v39, v6);
    (*(v59 + 8))(v60, AssociatedTypeWitness);
    return 0;
  }

  v53 = v52;
  v54 = [objc_allocWithZone(UITargetedPreview) initWithView:v52];

  (*(v36 + 8))(v39, v6);
  (*(v59 + 8))(v60, AssociatedTypeWitness);
  return v54;
}

uint64_t sub_10019A1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  result = sub_100189678(&qword_100771758, sub_100128A14);
  if (result)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v9 = a4(Strong, a1, a3);

    return v9;
  }

  return result;
}

id sub_10019A288(void *a1)
{
  v1 = a1;
  sub_10019A2F0();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

uint64_t sub_10019A2F0()
{
  v1 = swift_isaMask & *v0;
  v2 = v0 + qword_100771760;
  v3 = *(v0 + qword_100771760);
  if (v3)
  {
    v5 = *(v2 + 1);
    v4 = *(v2 + 2);
    v6 = *(v1 + 80);
    v7 = v2[24];

    v8 = sub_1001604BC(v3, v5, v4, v7 & 1, v6);

    return v8;
  }

  else
  {
    v12.receiver = v0;
    v12.super_class = swift_getObjectType();
    v10 = objc_msgSendSuper2(&v12, "debugDescription");
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }
}

uint64_t sub_10019A418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TTRITreeViewNodeReuseQueue(0, *((swift_isaMask & *a1) + 0x50), *((swift_isaMask & *a1) + 0x58), a4);
  v9 = sub_10059F120(v5, v6, v7, v8);
  v10 = sub_10019A520(v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = a1 + qword_100771760;
  v18 = *(a1 + qword_100771760);
  v19 = *(v17 + 1);
  v20 = *(v17 + 2);
  *v17 = v10;
  *(v17 + 1) = v12;
  *(v17 + 2) = v14;
  v17[24] = v16 & 1;

  sub_100100898(v18, v19, v20);
  return v10;
}

uint64_t sub_10019A520(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & v3) + 0x50);
  v6 = type metadata accessor for Optional();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = v30 - v7;
  v9 = *((v4 & v3) + 0x58);
  v12 = sub_1001603A4(v5, v9, v10, v11);
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v36 = v15 & 1;
  v16 = sub_100189678(&qword_100771740, sub_100128A14);
  if (!v16)
  {
    return v12;
  }

  v17 = v16;
  Strong = swift_unknownObjectUnownedLoadStrong();
  (*(*(v5 - 8) + 56))(v8, 1, 1, v5);
  v30[1] = v17;
  v19 = sub_1002DF538();

  result = (*(v31 + 8))(v8, v32);
  if (v19 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v19)
    {
      v21 = 0;
      do
      {
        v22 = v21 + 1;
        sub_1001907A8(v21, a1);
        v24 = v23;
        v26 = v25;
        v28 = type metadata accessor for TTRITreeViewSectionsMetadata(0, v5, v9, v27);
        sub_10015E3E0(v24, v26, v28, v29);

        v21 = v22;
      }

      while (v19 != v22);
    }

    return v33;
  }

  return result;
}

uint64_t *sub_10019A77C(void *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TTRITreeViewBatchUpdatesContext(0, *((swift_isaMask & *a1) + 0x50), *((swift_isaMask & *a1) + 0x58), a4);
  v10 = sub_100189FAC(v6, v7, v8, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = (a1 + qword_100771778);
  swift_beginAccess();
  v19 = *v17;
  v18 = v17[1];

  v20 = sub_10008A404(v10, v12, v14, v16 & 1, v19, v18);

  if (a2)
  {
    a2(v20);
  }

  *(a1 + qword_100771770) = v20;

  if ((v20[9] & 1) == 0)
  {
    sub_10000B0D8(a1 + qword_100771738, v24);
    v21 = v25;
    v22 = v26;
    sub_10000C36C(v24, v25);
    (*(v22 + 16))(v21, v22);
    sub_100004758(v24);
  }

  return v20;
}

BOOL sub_10019A924(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = swift_isaMask;
  v7 = sub_100189FAC(a1, a2, a3, a4);
  v11 = sub_10015FB6C(a1, v7, v9, v10, v8 & 1, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58));

  if (v11)
  {
  }

  return v11 == 0;
}

double sub_10019A9F0(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v43 = a3;
  v6 = *((swift_isaMask & *v3) + 0x58);
  v37 = *((swift_isaMask & *v3) + 0x50);
  v38 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v31 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100189678(&qword_100771748, sub_1002DF79C);
  if (v31)
  {
    v15 = *(a1 + 16);
    if (v15)
    {
      v33 = qword_100771780;
      v34 = qword_100771730;
      v17 = *(v11 + 16);
      v16 = v11 + 16;
      v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v39 = *(v16 + 56);
      v40 = v17;
      v32 = (v7 + 8);
      v41 = v16;
      v19 = (v16 - 8);
      v35 = v10;
      v17(v13, v18, v10);
      while (1)
      {
        v22 = v42(v13);
        if (v22)
        {
          v23 = v22;
          v24 = *(v4 + v34);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v26 = [v24 cellForRowAtIndexPath:{isa, v31}];

          if (v26)
          {
            v28 = sub_100196428(v26, v23);
            sub_10023A594(v28);
            swift_beginAccess();
            v30 = type metadata accessor for TTRITreeViewSoftReloadContext(0, v37, v38, v29);
            sub_100421958(v9, v30);
            swift_endAccess();
          }

          else
          {
            sub_10023A594(v27);
            swift_beginAccess();
            v21 = type metadata accessor for TTRITreeViewSoftReloadContext(0, v37, v38, v20);
            sub_100421AA4(v9, v21);
            swift_endAccess();
          }

          (*v32)(v9, AssociatedTypeWitness);
          v10 = v35;
        }

        (*v19)(v13, v10);
        v18 += v39;
        if (!--v15)
        {
          break;
        }

        v40(v13, v18, v10);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10019ADAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v10);
  v12 = v20 - v11;
  AnyHashable.base.getter();
  if (swift_dynamicCast())
  {
    (*(v9 + 56))(v8, 0, 1, AssociatedTypeWitness);
    (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = sub_10019B010(v12, v14, v15, v16);
    }

    else
    {
      v18 = 0;
    }

    (*(v9 + 8))(v12, AssociatedTypeWitness);
  }

  else
  {
    (*(v9 + 56))(v8, 1, 1, AssociatedTypeWitness);
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  return v18;
}

uint64_t sub_10019B010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = swift_isaMask;
  v8 = sub_100189FAC(a1, a2, a3, a4);
  v12 = sub_10015FB6C(a1, v8, v10, v11, v9 & 1, *((v7 & v6) + 0x50), *((v7 & v6) + 0x58));

  if (v12)
  {
    v17 = sub_100189FAC(v13, v14, v15, v16);
    v20 = sub_1001600A8(v12, v17, v18, v19);

    if (v20)
    {
      v25 = sub_100189FAC(v21, v22, v23, v24);
      v28 = sub_10015DA7C(v12, v25, v26, v27);

      return v28;
    }
  }

  return 0;
}

void sub_10019B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a1;
  v30 = swift_isaMask & *v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = swift_isaMask & *v5;
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for TTRITreeViewNode(0, *(v7 + 80), *(v7 + 88), v8);
    swift_getWitnessTable();
    Set.Iterator.init(_cocoa:)();
    v6 = v41[4];
    v9 = v41[5];
    v10 = v41[6];
    v11 = v41[7];
    v12 = v41[8];
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(a1 + 56);

    v11 = 0;
  }

  v16 = (v10 + 64) >> 6;
  v32 = v9;
  v33 = v6;
  v31 = v16;
  while (v6 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for TTRITreeViewNode(0, *(v30 + 80), *(v30 + 88), v22), _forceBridgeFromObjectiveC<A>(_:_:)(), swift_unknownObjectRelease(), v21 = *&v39[0], v18 = v11, v20 = v12, !*&v39[0]))
    {
LABEL_29:
      sub_10008BA48(v6);
      return;
    }

LABEL_19:
    v23 = sub_10019B4D8(v21, a2, a3, a4, a5 & 1);
    v24 = v23;
    v38 = v20;
    if (v23 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      if (!v25)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_8;
      }
    }

    if (v25 < 1)
    {
      goto LABEL_31;
    }

    v26 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      ++v26;
      v41[3] = sub_100003540(0, &qword_10076B020, UIView_ptr);
      v41[0] = v28;
      v40 = 0;
      memset(v39, 0, sizeof(v39));
      v29 = v28;
      sub_100192A24(v41, v21, v39);

      sub_1000079B4(v39, &unk_10076B8C0, &unk_100634060);
      sub_1000079B4(v41, &qword_10076AE40, &qword_10062EE50);
    }

    while (v25 != v26);
LABEL_8:

    v11 = v18;
    v12 = v38;
    v9 = v32;
    v6 = v33;
    v16 = v31;
  }

  v17 = v12;
  v18 = v11;
  if (v12)
  {
LABEL_15:
    v20 = (v17 - 1) & v17;
    v21 = *(*(v6 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v21)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  v19 = v11;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v16)
    {
      goto LABEL_29;
    }

    v17 = *(v9 + 8 * v18);
    ++v19;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void *sub_10019B4D8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = a1;
  v10 = *(*a1 + 80);
  v11 = *(v10 - 8);
  __chkstk_darwin(a1);
  v13 = &v26 - v12;
  v15 = *(v14 + 144);
  swift_beginAccess();
  (*(v11 + 16))(v13, &v9[v15], v10);
  LOBYTE(v9) = sub_1001600A8(v9, a2, a3, a4);
  sub_100058000(&qword_10076B920, &qword_10062FC60);
  if (v9)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10062D3F0;
    *(v16 + 32) = sub_100191EE8(v13, a2, a3, a4, a5 & 1, &selRef_headerViewForSection_);
    result = sub_100191EE8(v13, a2, a3, a4, a5 & 1, &selRef_footerViewForSection_);
    if (result)
    {
      *(v16 + 40) = result;
    }

    else
    {
      *(v16 + 40) = 0;
    }

    v18 = 2;
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10062D400;
    result = sub_100191CAC(v13, a2, a3, a4, a5 & 1);
    if (result)
    {
      *(v16 + 32) = result;
    }

    else
    {
      *(v16 + 32) = 0;
    }

    v18 = 1;
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v26 = _swiftEmptyArrayStorage;
  v21 = v16 + 32;
  v22 = v18 == 0;
  while (!v22)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_29;
    }

    v24 = *(v21 + 8 * v19);
    if (v24)
    {
      goto LABEL_14;
    }

    if (v23 == v18)
    {
      goto LABEL_27;
    }

    if (v23 >= v18)
    {
      break;
    }

    v19 += 2;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_29;
    }

    v24 = *(v21 + 8 * v23);
    if (!v24)
    {
      if (v19 == v18)
      {
        goto LABEL_27;
      }

      if (v19 >= v18)
      {
        break;
      }

      v23 += 2;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_29;
      }

      v24 = *(v21 + 8 * v19);
LABEL_14:
      v19 = v23;
    }

    v25 = v24;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v26;
    v22 = v19 >= v18;
    if (v19 == v18)
    {
LABEL_27:

      (*(v11 + 8))(v13, v10);
      return v20;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10019B7F0(uint64_t *a1)
{
  v1 = *a1;
  result = IndexPath.row.getter();
  if (__OFADD__(result, v1))
  {
    __break(1u);
  }

  else
  {
    IndexPath.section.getter();
    return IndexPath.init(row:section:)();
  }

  return result;
}

void sub_10019B84C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_1007716F0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "TTRITreeViewTableAdapter: updating for collapsed states change", v8, 2u);
    }

    sub_1001897A4(v2, 1);
  }
}

void sub_10019B974(uint64_t a1, void *a2, uint64_t a3)
{
  v87 = a2;
  v5 = *a2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *a2) + 0x50);
  v81 = type metadata accessor for Optional();
  v86 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v72 - v10;
  v12 = *(v7 - 8);
  __chkstk_darwin(v13);
  v73 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v74 = v72 - v16;
  v17 = *((v6 & v5) + 0x58);
  v18 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  __chkstk_darwin(v20 - 8);
  v75 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v72 - v23;
  j = a3;
  v72[0] = v17;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    swift_getAssociatedConformanceWitness();
    Set.Iterator.init(_cocoa:)();
    v25 = v88;
    v26 = v89;
    v27 = v90;
    v28 = v91;
    v29 = v92;
  }

  else
  {
    v30 = -1 << *(a1 + 32);
    v26 = a1 + 56;
    v27 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = v32 & *(a1 + 56);

    v28 = 0;
  }

  v33 = AssociatedTypeWitness - 8;
  v72[1] = v27;
  v34 = (v27 + 64) >> 6;
  v79 = (v12 + 8);
  v80 = (v12 + 32);
  v78 = (v86 + 8);
  v85 = (v12 + 48);
  v86 = v18;
  v35 = v75;
  v82 = v34;
  for (i = v25; ; v25 = i)
  {
    if (v25 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
LABEL_23:
        v52 = *(AssociatedTypeWitness - 8);
        (*(v52 + 56))(v24, 1, 1, AssociatedTypeWitness);
        sub_10008BA48(i);
        v53 = j;
        if ((j & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          swift_getAssociatedConformanceWitness();
          Set.Iterator.init(_cocoa:)();
          v53 = v93;
          v54 = v94;
          v55 = v95;
          i = v96;
          v56 = v97;
        }

        else
        {
          v57 = -1 << *(j + 32);
          v54 = j + 56;
          v55 = ~v57;
          v58 = -v57;
          if (v58 < 64)
          {
            v59 = ~(-1 << v58);
          }

          else
          {
            v59 = -1;
          }

          v56 = v59 & *(j + 56);

          i = 0;
        }

        v82 = v55;
        for (j = v53; ; v53 = j)
        {
          if (v53 < 0)
          {
            if (!__CocoaSet.Iterator.next()())
            {
LABEL_45:
              (*(v52 + 56))(v35, 1, 1, AssociatedTypeWitness);
              sub_10008BA48(v53);
              return;
            }

            _forceBridgeFromObjectiveC<A>(_:_:)();
            swift_unknownObjectRelease();
            v61 = v52;
            (*(v52 + 56))(v35, 0, 1, AssociatedTypeWitness);
          }

          else
          {
            if (!v56)
            {
              v64 = i;
              while (1)
              {
                v60 = v64 + 1;
                if (__OFADD__(v64, 1))
                {
                  goto LABEL_48;
                }

                if (v60 >= ((v55 + 64) >> 6))
                {
                  goto LABEL_45;
                }

                v56 = *(v54 + 8 * v60);
                ++v64;
                if (v56)
                {
                  i = v60;
                  goto LABEL_42;
                }
              }
            }

            v60 = i;
LABEL_42:
            v65 = __clz(__rbit64(v56));
            v56 &= v56 - 1;
            v66 = v65 | (v60 << 6);
            v67 = *(v53 + 48);
            v61 = v52;
            (*(v52 + 16))(v35, v67 + *(v52 + 72) * v66, AssociatedTypeWitness);
            (*(v52 + 56))(v35, 0, 1, AssociatedTypeWitness);
          }

          v68 = v77;
          sub_10019CB2C(v35, sub_10015FB6C, v77, v62, v63);
          (*(v61 + 8))(v35, AssociatedTypeWitness);
          v69 = v86;
          if ((*v85)(v68, 1, v86) == 1)
          {
            (*v78)(v68, v81);
          }

          else
          {
            v70 = v73;
            (*v80)(v73, v68, v69);
            sub_1001A2A10(v70, 5);
            v71 = v70;
            v35 = v75;
            (*v79)(v71, v69);
          }
        }
      }

      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v37 = *(AssociatedTypeWitness - 8);
      goto LABEL_21;
    }

    if (!v29)
    {
      break;
    }

    v36 = v28;
LABEL_20:
    v39 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v37 = *(AssociatedTypeWitness - 8);
    (*(v37 + 16))(v24, *(v25 + 48) + *(v37 + 72) * (v39 | (v36 << 6)), AssociatedTypeWitness);
LABEL_21:
    (*(v37 + 56))(v24, 0, 1, AssociatedTypeWitness);
    sub_10019CB2C(v24, sub_10015FB6C, v11, v40, v41);
    (*(v37 + 8))(v24, AssociatedTypeWitness);
    v42 = v86;
    if ((*v85)(v11, 1, v86) == 1)
    {
      (*v78)(v11, v81);
    }

    else
    {
      v43 = *v80;
      v76 = v28;
      v44 = v26;
      v45 = AssociatedTypeWitness;
      v46 = v24;
      v47 = v33;
      v48 = v35;
      v49 = v11;
      v50 = v74;
      v43(v74, v49, v42);
      sub_1001A2544(v50, 5);
      v51 = v50;
      v11 = v49;
      v35 = v48;
      v33 = v47;
      v24 = v46;
      AssociatedTypeWitness = v45;
      v26 = v44;
      v28 = v76;
      (*v79)(v51, v42);
    }

    v34 = v82;
  }

  v38 = v28;
  while (1)
  {
    v36 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v36 >= v34)
    {
      goto LABEL_23;
    }

    v29 = *(v26 + 8 * v36);
    ++v38;
    if (v29)
    {
      v28 = v36;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
}

double sub_10019C31C(uint64_t a1)
{
  sub_10003B788(a1 + qword_100771718);

  swift_unknownObjectUnownedDestroy();

  sub_100004758((a1 + qword_100771738));

  sub_100100898(*(a1 + qword_100771760), *(a1 + qword_100771760 + 8), *(a1 + qword_100771760 + 16));

  return result;
}

void sub_10019C4F0(void *a1)
{
  v2 = v1;
  v59 = *(*((swift_isaMask & *v2) + 0x50) - 8);
  __chkstk_darwin(a1);
  v56 = &v54 - v4;
  v57 = *((v6 & v5) + 0x58);
  v58 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - v11;
  v13 = sub_100058000(&unk_1007884E0, &unk_10062FC40);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v17);
  v60 = &v54 - v18;
  sub_10000C36C(a1, a1[3]);
  dispatch thunk of TTRITreeViewCellProtocol.treeCellViewModel.getter();
  v19 = type metadata accessor for TTRITreeViewCellModel();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v15, 1, v19) == 1)
  {
    sub_1000079B4(v15, &unk_1007884E0, &unk_10062FC40);
    v62 = 0u;
    v63 = 0u;
  }

  else
  {
    TTRITreeViewCellModel.itemIdentifier.getter();
    (*(v20 + 8))(v15, v19);
    AnyHashable.base.getter();
    sub_100077654(v61);
  }

  sub_100058000(&qword_10076AE40, &qword_10062EE50);
  v21 = swift_dynamicCast();
  v22 = *(v16 + 56);
  if (v21)
  {
    v22(v12, 0, 1, AssociatedTypeWitness);
    v23 = v60;
    v24 = (*(v16 + 32))(v60, v12, AssociatedTypeWitness);
    v28 = sub_100189FAC(v24, v25, v26, v27);
    v30 = v58;
    v33 = sub_10015FB6C(v23, v28, v31, v32, v29 & 1, v58, v57);

    if (v33)
    {
      v34 = *(*v33 + 144);
      swift_beginAccess();
      v35 = v59;
      v36 = v56;
      v57 = *(v59 + 16);
      v57(v56, v33 + v34, v30);
      v37 = sub_10018AAA4(v36);
      v38 = v30;
      v41 = *(v35 + 8);
      v39 = v35 + 8;
      v40 = v41;
      v41(v36, v38);
      if (v37)
      {
        v59 = v39;
        v42 = [*(v2 + qword_100771730) style];
        v55 = v40;
        if (v42 == 2 && (v46 = sub_100189FAC(2, v43, v44, v45), LODWORD(v54) = sub_1001600A8(v33, v46, v47, v48), , , , (v54 & 1) != 0))
        {
          v54 = 0;
        }

        else
        {
          v54 = 3;
        }

        v49 = v56;
        v50 = v57;
        v51 = v58;
        v57(v56, v33 + v34, v58);
        v52 = sub_10018AFFC(v49);
        v55(v49, v51);
        v50(v49, v33 + v34, v51);
        v53 = (v16 + 8);
        if (v52)
        {
          sub_1001A2544(v49, v54);
        }

        else
        {
          sub_1001A2A10(v49, v54);
        }

        v55(v49, v51);
        (*v53)(v60, AssociatedTypeWitness);
      }

      else
      {
        (*(v16 + 8))(v60, AssociatedTypeWitness);
      }
    }

    else
    {
      (*(v16 + 8))(v23, AssociatedTypeWitness);
    }
  }

  else
  {
    v22(v12, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_10019CB2C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, void)@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v9 = *v5;
  v10 = swift_isaMask;
  v11 = sub_100189FAC(a1, a2, a4, a5);
  v12 = *((v10 & v9) + 0x50);
  v16 = a2(a1, v11, v14, v15, v13 & 1, v12, *((v10 & v9) + 0x58));

  if (v16)
  {
    v17 = *(*v16 + 144);
    swift_beginAccess();
    v18 = *(v12 - 8);
    (*(v18 + 16))(a3, v16 + v17, v12);

    return (*(v18 + 56))(a3, 0, 1, v12);
  }

  else
  {
    v20 = *(*(v12 - 8) + 56);

    return v20(a3, 1, 1, v12);
  }
}

uint64_t sub_10019CD00(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = type metadata accessor for TTRITreeViewExpandedState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100189FAC(v9, v10, v11, v12);
  v14 = v4 & v3;
  v15 = *((v4 & v3) + 0x50);
  v16 = *(v14 + 88);
  v20 = sub_10015F984(a1, v13, v18, v19, v17 & 1, v15, v16);

  if (!v20)
  {
    goto LABEL_5;
  }

  v21 = qword_1007A84C0;
  swift_beginAccess();
  (*(v6 + 16))(v8, v20 + v21, v5);
  v22 = (*(v6 + 88))(v8, v5);
  if (v22 == enum case for TTRITreeViewExpandedState.notExpandable(_:) || v22 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {

LABEL_5:
    v23 = 0;
    return v23 & 1;
  }

  if (v22 == enum case for TTRITreeViewExpandedState.expanded(_:))
  {
    swift_beginAccess();
    v27[1] = *(v20 + 64);
    type metadata accessor for TTRITreeViewNode(255, v15, v16, v25);
    type metadata accessor for Array();

    swift_getWitnessTable();
    v26 = Collection.isEmpty.getter();

    v23 = v26 ^ 1;
    return v23 & 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10019CF8C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v55 = a2;
  v56 = a1;
  v59 = a4;
  v7 = swift_isaMask & *v5;
  v8 = *(v7 + 0x50);
  v9 = type metadata accessor for Optional();
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v57 = v49 - v10;
  v58 = *(v8 - 8);
  __chkstk_darwin(v11);
  v54 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = v49 - v14;
  v15 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v15 - 8);
  v17 = v49 - v16;
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a3, v17, &unk_100771B10, qword_10062E540);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000079B4(v17, &unk_100771B10, qword_10062E540);
    v23 = *(v7 + 88);
LABEL_7:
    v38 = v8;
    v39 = v23;
LABEL_8:
    type metadata accessor for TTRITreeViewTableAdapter.InsertDestination(0, v38, v39, v22);
    return swift_storeEnumTagMultiPayload();
  }

  v24 = (*(v19 + 32))(v21, v17, v18);
  v28 = sub_100189FAC(v24, v25, v26, v27);

  v63 = v28;
  v23 = *(v7 + 88);
  type metadata accessor for TTRITreeViewSectionsMetadata.Section(255, v8, v23, v29);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();

  v62 = v60;
  v61 = IndexPath.section.getter();
  sub_100058000(&qword_10076FC10, &unk_100632980);
  v30 = Range.contains(_:)();
  if ((v30 & 1) == 0)
  {
    (*(v19 + 8))(v21, v18);
    goto LABEL_7;
  }

  sub_100189FAC(v30, v31, v32, v33);

  IndexPath.section.getter();
  Array.subscript.getter();

  v49[1] = *(&v60 + 1);
  v63 = *(&v60 + 1);
  v50 = v60;
  type metadata accessor for TTRITreeViewNode(255, v8, v23, v34);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v62 = v60;
  v61 = IndexPath.row.getter();
  if ((Range.contains(_:)() & 1) == 0)
  {
    v49[0] = v23;
    v41 = v50;
    v42 = *(*v50 + 144);
    swift_beginAccess();
    v43 = v58;
    v44 = v54;
    (*(v58 + 16))(v54, v41 + v42, v8);
    v45 = v57;
    sub_10019E920(v56, v55 & 1, v44, v57);

    (*(v43 + 8))(v44, v8);
    (*(v19 + 8))(v21, v18);
    if ((*(v43 + 48))(v45, 1, v8) != 1)
    {
      v46 = *(v43 + 32);
      v47 = v51;
      v46(v51, v45, v8);
      v46(v59, v47, v8);
      type metadata accessor for TTRITreeViewTableAdapter.InsertDestination(0, v8, v49[0], v48);
      return swift_storeEnumTagMultiPayload();
    }

    (*(v52 + 8))(v45, v53);
    v38 = v8;
    v39 = v49[0];
    goto LABEL_8;
  }

  IndexPath.row.getter();
  Array.subscript.getter();

  (*(v19 + 8))(v21, v18);
  v35 = v62;
  v36 = *(*v62 + 144);
  swift_beginAccess();
  (*(v58 + 16))(v59, v35 + v36, v8);

  type metadata accessor for TTRITreeViewTableAdapter.InsertDestination(0, v8, v23, v37);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10019D678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v154) = a3;
  v168 = a4;
  v7 = *v4;
  v8 = swift_isaMask;
  v9 = *((swift_isaMask & v7) + 0x50);
  v10 = type metadata accessor for Optional();
  v163 = *(v10 - 8);
  __chkstk_darwin(v10);
  v150 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v151 = &v141 - v13;
  __chkstk_darwin(v14);
  v148 = &v141 - v15;
  v16 = *((v8 & v7) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v156 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v155 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v162 = &v141 - v19;
  v159 = *(v9 - 8);
  __chkstk_darwin(v20);
  v149 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v152 = &v141 - v23;
  __chkstk_darwin(v24);
  v147 = &v141 - v25;
  __chkstk_darwin(v26);
  v153 = &v141 - v27;
  __chkstk_darwin(v28);
  v158 = &v141 - v29;
  v167 = type metadata accessor for TTRITreeViewTableAdapter.MoveDestination(0, v9, v16, v30);
  v161 = *(v167 - 8);
  __chkstk_darwin(v167);
  v160 = &v141 - v31;
  v32 = type metadata accessor for IndexPath();
  v33 = *(v32 - 8);
  v164 = v32;
  v165 = v33;
  __chkstk_darwin(v32);
  v166 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100189FAC(v35, v36, v37, v38);

  v171 = v39;
  type metadata accessor for TTRITreeViewSectionsMetadata.Section(255, v9, v16, v40);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();

  v169[2] = v169[0];
  v170 = IndexPath.section.getter();
  sub_100058000(&qword_10076FC10, &unk_100632980);
  v41 = Range.contains(_:)();
  if ((v41 & 1) == 0)
  {
    return swift_storeEnumTagMultiPayload();
  }

  v45 = sub_100189FAC(v41, v42, v43, v44);
  v49 = sub_10015F6B4(a1, v45, v47, v48, v46 & 1, v9, v16);

  if (!v49)
  {
    return swift_storeEnumTagMultiPayload();
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_100766FC8 == -1)
    {
LABEL_10:
      v66 = type metadata accessor for Logger();
      sub_100003E30(v66, qword_1007716F0);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "section node cannot be moved", v69, 2u);
      }

      return swift_storeEnumTagMultiPayload();
    }

LABEL_54:
    swift_once();
    goto LABEL_10;
  }

  v145 = v49;
  v142 = v10;
  v143 = *(Strong + 16);

  sub_100189FAC(v51, v52, v53, v54);

  IndexPath.section.getter();
  Array.subscript.getter();

  v146 = *(&v169[0] + 1);
  v144 = *&v169[0];
  v56 = v165;
  v55 = v166;
  v57 = v164;
  (*(v165 + 16))(v166, a2, v164);
  v58 = IndexPath.section.getter();
  if (v58 == IndexPath.section.getter())
  {
    v60 = IndexPath.row.getter();
    v61 = IndexPath.row.getter();
    v62 = v60 < v61;
    v63 = v163;
    if (v60 < v61 && (v154 & 1) != 0)
    {
      v64 = IndexPath.row.modify();
      if (__OFADD__(*v65, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      ++*v65;
      v64(v169, 0);
      v62 = 1;
    }
  }

  else
  {
    v62 = 0;
    v63 = v163;
  }

  type metadata accessor for TTRITreeViewNode(0, v9, v16, v59);
  v71 = Array.count.getter();
  v72 = IndexPath.row.getter();
  if (v71 < 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v72 < 0 || v72 >= v71)
  {
    if (v71 == v72)
    {
      v97 = v151;
      sub_10019F818(v143, v151);
      v98 = v159;
      v99 = *(v159 + 48);
      if ((v99)(v97, 1, v9) != 1)
      {
        v122 = *(v98 + 32);
        v163 = v98 + 32;
        v154 = v122;
        v122(v152, v97, v9);
        v123 = *(v16 + 24);
        v123(v9, v16);
        v124 = v145;
        v125 = *(*v145 + 144);
        swift_beginAccess();
        v126 = v124 + v125;
        v127 = v158;
        (*(v98 + 16))(v158, v126, v9);
        v128 = v155;
        v123(v9, v16);
        v159 = *(v98 + 8);
        (v159)(v127, v9);
        v129 = AssociatedTypeWitness;
        swift_getAssociatedConformanceWitness();
        v130 = v162;
        v131 = dispatch thunk of static Equatable.== infix(_:_:)();

        v132 = *(v156 + 1);
        v132(v128, v129);
        v132(v130, v129);
        (*(v56 + 8))(v166, v57);
        v112 = v161;
        if (v131)
        {
          (v159)(v152, v9);
          v95 = v160;
        }

        else
        {
          v95 = v160;
          v154(v160, v152, v9);
        }

        v96 = v167;
        goto LABEL_45;
      }

      v100 = *(v63 + 8);
      v163 = v63 + 8;
      v156 = v100;
      v100(v97, v142);
      sub_1001A0144(v9, v9);
      swift_allocObject();
      v101 = static Array._adoptStorage(_:count:)();
      v162 = v99;
      v103 = v102;
      v104 = v145;
      v105 = *(*v145 + 144);
      swift_beginAccess();
      v106 = *(v98 + 16);
      v106(v103, v104 + v105, v9);
      AssociatedTypeWitness = sub_10015D9FC(v101, v9);
      v107 = v144;
      v108 = *(*v144 + 144);
      swift_beginAccess();
      v109 = v158;
      v106(v158, v107 + v108, v9);
      v110 = v150;
      sub_10019E920(AssociatedTypeWitness, 0, v109, v150);

      (*(v98 + 8))(v109, v9);
      (*(v165 + 8))(v166, v164);
      if ((v162)(v110, 1, v9) != 1)
      {
        v133 = *(v98 + 32);
        v134 = v149;
        v133(v149, v110, v9);
        v95 = v160;
        v133(v160, v134, v9);
        v96 = v167;
        goto LABEL_27;
      }

      v156(v110, v142);
    }

    else
    {
      (*(v56 + 8))(v55, v57);
    }

    v95 = v160;
    v96 = v167;
    goto LABEL_27;
  }

  LODWORD(v154) = v62;
  v76 = sub_100189FAC(v72, v73, v74, v75);
  v80 = sub_10015F6B4(v55, v76, v78, v79, v77 & 1, v9, v16);

  if (!v80)
  {
    if (qword_100766FC8 == -1)
    {
LABEL_31:
      v113 = type metadata accessor for Logger();
      sub_100003E30(v113, qword_1007716F0);
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&_mh_execute_header, v114, v115, "Failed to lookup node given a valid destinationIndexPath", v116, 2u);
      }

      else
      {
      }

      (*(v56 + 8))(v55, v57);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_56:
    swift_once();
    goto LABEL_31;
  }

  v81 = *(*v80 + 144);
  swift_beginAccess();
  v82 = v159;
  v84 = (v159 + 16);
  v83 = *(v159 + 16);
  v150 = v81;
  v85 = v158;
  v83(v158, v80 + v81, v9);
  v152 = *(v16 + 24);
  (v152)(v9, v16);
  v151 = *(v82 + 8);
  (v151)(v85, v9);
  v86 = v145;
  v87 = *(*v145 + 144);
  swift_beginAccess();
  v88 = v86 + v87;
  v89 = v153;
  v158 = v84;
  v149 = v83;
  v83(v153, v88, v9);
  v90 = v155;
  (v152)(v9, v16);
  (v151)(v89, v9);
  v91 = v80;
  v92 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v93 = v162;
  LOBYTE(v81) = dispatch thunk of static Equatable.== infix(_:_:)();
  v94 = *(v156 + 1);
  v94(v90, v92);
  v94(v93, v92);
  if ((v81 & 1) == 0)
  {
    v95 = v160;
    (v149)(v160, v91 + v150, v9);
    v96 = v167;
    swift_storeEnumTagMultiPayload();
    v117 = v165;
    if (v154)
    {
      v118 = v145;
      v119 = swift_weakLoadStrong();
      v120 = v164;
      if (v119)
      {
        v121 = *(v119 + 16);

        if (*(v118 + 32))
        {
          (*(v117 + 8))(v166, v120);

          goto LABEL_28;
        }

        if (*(v91 + 32) != 1 && *(v91 + 24) < *(v118 + 24))
        {
          v135 = v121;
          v136 = v166;
          sub_10019F818(v135, v148);
          v137 = v148;

          (*(v117 + 8))(v136, v120);
          v138 = v159;
          if ((*(v159 + 48))(v137, 1, v9) == 1)
          {
            (*(v163 + 8))(v137, v142);
            goto LABEL_28;
          }

          v112 = v161;
          (*(v161 + 8))(v95, v96);
          v139 = *(v138 + 32);
          v140 = v147;
          v139(v147, v137, v9);
          v139(v95, v140, v9);
LABEL_45:
          swift_storeEnumTagMultiPayload();
          v111 = v168;
          return (*(v112 + 32))(v111, v95, v96);
        }
      }

      (*(v117 + 8))(v166, v120);
    }

    else
    {
      (*(v165 + 8))(v166, v164);
    }

    goto LABEL_28;
  }

  (*(v165 + 8))(v166, v164);

  v95 = v160;
  v96 = v167;
LABEL_27:
  swift_storeEnumTagMultiPayload();
LABEL_28:
  v111 = v168;
  v112 = v161;
  return (*(v112 + 32))(v111, v95, v96);
}

uint64_t sub_10019E920@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v35 = a2;
  v36 = a1;
  v41 = a4;
  v5 = *v4;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v4) + 0x50);
  v8 = type metadata accessor for Optional();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v38 = &v34[-v9];
  v42 = *(v7 - 8);
  __chkstk_darwin(v10);
  v48 = &v34[-v11];
  v12 = type metadata accessor for TTRITreeViewExpandedState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = Array.init()();
  v19 = sub_100189FAC(v51, v16, v17, v18);
  v37 = v4;
  v47 = *((v6 & v5) + 0x58);
  v23 = sub_10015F984(v43, v19, v21, v22, v20 & 1, v7, v47);

  if (v23)
  {
    v46 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
    v45 = enum case for TTRITreeViewExpandedState.collapsed(_:);
    v44 = enum case for TTRITreeViewExpandedState.expanded(_:);
    v24 = (v42 + 16);
    while (1)
    {
      v25 = qword_1007A84C0;
      swift_beginAccess();
      (*(v13 + 16))(v15, &v23[v25], v12);
      v26 = (*(v13 + 88))(v15, v12);
      if (v26 == v46 || v26 == v45)
      {

        goto LABEL_11;
      }

      if (v26 != v44)
      {
        break;
      }

      v28 = *(*v23 + 144);
      swift_beginAccess();
      (*v24)(v48, &v23[v28], v7);
      type metadata accessor for Array();

      Array.append(_:)();
      swift_beginAccess();
      v50 = *(v23 + 8);
      type metadata accessor for TTRITreeViewNode(255, v7, v47, v29);
      type metadata accessor for Array();

      swift_getWitnessTable();
      BidirectionalCollection.last.getter();

      v23 = v49;
      if (!v49)
      {
        goto LABEL_11;
      }
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
LABEL_11:
    v30 = v51;
    v50 = v51;
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {

      return (*(v42 + 56))(v41, 1, 1, v7);
    }

    else
    {
      if (sub_100189678(&qword_100771758, sub_100128A14))
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        v33 = v38;
        sub_100128F04(Strong, v36, v35 & 1);
      }

      else
      {
        v50 = v30;
        v33 = v38;
        Collection.first.getter();
      }

      return (*(v39 + 32))(v41, v33, v40);
    }
  }

  return result;
}

void sub_10019EE90(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v132 = a1;
  v133 = a3;
  v134 = a4;
  v8 = *v5;
  v9 = swift_isaMask;
  v10 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v10 - 8);
  v128 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v126 - v13;
  v15 = type metadata accessor for IndexPath();
  v129 = *(v15 - 8);
  v130 = v15;
  __chkstk_darwin(v15);
  v127 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v126 - v18;
  v20 = *(*((v9 & v8) + 0x50) - 8);
  __chkstk_darwin(v21);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v126 - v25;
  v28 = v27;
  v131 = *((v9 & v8) + 0x58);
  inserted = type metadata accessor for TTRITreeViewTableAdapter.InsertDestination(0, v27, v131, v29);
  __chkstk_darwin(inserted);
  v32 = &v126 - v31;
  sub_10019CF8C(v132, a2 & 1, v133, &v126 - v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = 0uLL;
  if (!EnumCaseMultiPayload)
  {
    v70 = (*(v20 + 32))(v26, v32, v28, 0);
    v74 = sub_100189FAC(v70, v71, v72, v73);
    sub_10015FF3C(v26, v74, v76, v77, v75 & 1, v28, v131, v14);

    v79 = v129;
    v78 = v130;
    if ((*(v129 + 48))(v14, 1, v130) == 1)
    {
      (*(v20 + 8))(v26, v28);
      sub_1000079B4(v14, &unk_100771B10, qword_10062E540);
    }

    else
    {
      (*(v79 + 32))(v19, v14, v78);
      v83 = *(v5 + qword_100771730);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v83 rectForRowAtIndexPath:isa];
      x = v85;
      v88 = v87;
      width = v89;
      v92 = v91;

      v138.origin.x = x;
      v138.origin.y = v88;
      v138.size.width = width;
      v138.size.height = v92;
      LOBYTE(v83) = CGRectIsEmpty(v138);
      (*(v79 + 8))(v19, v78);
      (*(v20 + 8))(v26, v28);
      if ((v83 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_23:
    v80 = 1;
    v81 = 0uLL;
    v82 = v134;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v35 = v20;
    v36 = *(v20 + 32);
    v37 = v23;
    v38 = v36(v23, v32, v28, 0);
    v39 = v5;
    v43 = sub_100189FAC(v38, v40, v41, v42);
    v47 = sub_10015F984(v37, v43, v45, v46, v44 & 1, v28, v131);

    if (!v47)
    {
LABEL_22:
      (*(v35 + 8))(v37, v28);
      goto LABEL_23;
    }

    v52 = sub_100189FAC(v48, v49, v50, v51);
    v55 = sub_10015DCCC(v47, v52, v53, v54);

    if (!v55)
    {
      (*(v35 + 8))(v37, v28);
      goto LABEL_14;
    }

    v133 = v47;
    v60 = sub_100189FAC(v56, v57, v58, v59);
    v63 = sub_10015DA7C(v55, v60, v61, v62);
    v65 = v64;

    if (v65)
    {
      (*(v35 + 8))(v37, v28);

LABEL_14:

      goto LABEL_23;
    }

    v132 = v55;
    sub_100189FAC(v66, v67, v68, v69);

    v95 = v131;
    type metadata accessor for TTRITreeViewSectionsMetadata.Section(0, v28, v131, v96);
    Array.subscript.getter();

    v136 = v137;
    type metadata accessor for TTRITreeViewNode(255, v28, v95, v97);
    type metadata accessor for Array();
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    v98 = v135;

    if (!v98)
    {
      [*(v39 + qword_100771730) rectForHeaderInSection:v63];
      x = v140.origin.x;
      y = v140.origin.y;
      width = v140.size.width;
      height = v140.size.height;
      IsEmpty = CGRectIsEmpty(v140);
      v82 = v134;
      if (IsEmpty)
      {

        (*(v35 + 8))(v37, v28);
        v80 = 1;
        v81 = 0uLL;
LABEL_24:
        v34 = 0uLL;
        goto LABEL_25;
      }

      v142.origin.x = x;
      v142.origin.y = y;
      v142.size.width = width;
      v142.size.height = height;
      v124 = CGRectGetHeight(v142);

      (*(v35 + 8))(v37, v28);
      v88 = y + v124;
      goto LABEL_12;
    }

    v103 = sub_100189FAC(v99, v100, v101, v102);
    v105 = v128;
    sub_10015DB40(v98, v103, v106, v104 & 1, v128);

    v107 = v105;

    v109 = v129;
    v108 = v130;
    if ((*(v129 + 48))(v107, 1, v130) == 1)
    {
      (*(v35 + 8))(v37, v28);

      sub_1000079B4(v107, &unk_100771B10, qword_10062E540);
      goto LABEL_23;
    }

    v113 = v127;
    (*(v109 + 32))(v127, v107, v108);
    v114 = *(v39 + qword_100771730);
    v115 = v113;
    v116 = v114;
    v117 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v116 rectForRowAtIndexPath:v117];
    x = v118;
    v120 = v119;
    width = v121;
    v123 = v122;

    v141.origin.x = x;
    v141.origin.y = v120;
    v141.size.width = width;
    v141.size.height = v123;
    if (CGRectIsEmpty(v141))
    {

      (*(v109 + 8))(v115, v108);
      goto LABEL_22;
    }

    v143.origin.x = x;
    v143.origin.y = v120;
    v143.size.width = width;
    v143.size.height = v123;
    v125 = CGRectGetHeight(v143);

    (*(v109 + 8))(v115, v108);
    (*(v35 + 8))(v37, v28);
    v88 = v120 + v125;
LABEL_11:
    v82 = v134;
LABEL_12:
    v139.size.height = 0.0;
    v139.origin.x = x;
    v139.origin.y = v88;
    v139.size.width = width;
    *&v34 = CGRectInset(v139, 0.0, a5 * -0.5);
    v80 = 0;
    *(&v34 + 1) = v93;
    *(&v81 + 1) = v94;
    goto LABEL_25;
  }

  v80 = 1;
  v81 = 0uLL;
  v82 = v134;
LABEL_25:
  *v82 = v34;
  *(v82 + 16) = v81;
  *(v82 + 32) = v80;
}

uint64_t sub_10019F818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = swift_isaMask & *v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = IndexPath.row.getter();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v27 = a1;
    IndexPath.section.getter();
    v11 = IndexPath.init(row:section:)();
    v15 = sub_100189FAC(v11, v12, v13, v14);
    v16 = *(v5 + 80);
    v20 = sub_10015F6B4(v9, v15, v18, v19, v17 & 1, v16, *(v5 + 88));

    if (v20)
    {
      Strong = swift_weakLoadStrong();
      (*(v7 + 8))(v9, v6);
      v22 = a2;
      if (Strong && (v23 = *(Strong + 16), , v23 == v27))
      {
        v24 = *(*v20 + 144);
        swift_beginAccess();
        v25 = *(v16 - 8);
        (*(v25 + 16))(a2, v20 + v24, v16);

        v26 = 0;
      }

      else
      {

        v25 = *(v16 - 8);
        v26 = 1;
      }
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      v25 = *(v16 - 8);
      v26 = 1;
      v22 = a2;
    }

    return (*(v25 + 56))(v22, v26, 1, v16);
  }

  return result;
}

void sub_10019FB34(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10001047C;
  v5[3] = &unk_100719668;
  v4 = _Block_copy(v5);

  [v3 addAnimations:v4];
  _Block_release(v4);
}

void sub_10019FBF0(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100188D20;
  v5[3] = &unk_100719640;
  v4 = _Block_copy(v5);

  [v3 addCompletion:v4];
  _Block_release(v4);
}

void sub_10019FCAC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = v1 + 40;
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    swift_beginAccess();
    v7 = *(v0 + 24);
    v8 = *(v7 + 16);

    if (!v8)
    {
LABEL_9:

      *(v0 + 16) = _swiftEmptyArrayStorage;

      *(v0 + 24) = _swiftEmptyArrayStorage;

      return;
    }

    v9 = 0;
    v10 = v7 + 40;
    while (v9 < *(v7 + 16))
    {
      ++v9;
      v11 = *(v10 - 8);
      v12 = 0;

      v11(&v12);

      v10 += 16;
      if (v8 == v9)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
}

uint64_t sub_10019FDFC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10019FE84(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();
  v7 = *(v5 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1005471F4(0, v7[2] + 1, 1, v7);
    *(v5 + 16) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1005471F4((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_100026418;
  v11[5] = v6;
  *(v5 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_10019FF8C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();
  v7 = *(v5 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 24) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_100547218(0, v7[2] + 1, 1, v7);
    *(v5 + 24) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_100547218((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1001A60FC;
  v11[5] = v6;
  *(v5 + 24) = v7;
  return swift_endAccess();
}

uint64_t sub_1001A0094(uint64_t a1)
{
  result = sub_1001A670C(&qword_100771AE8, type metadata accessor for TTRITreeViewAnimatingUnanimatedWrapper, &unk_100633F78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001A00EC(uint64_t a1)
{
  result = sub_1001A670C(&unk_100771AF0, type metadata accessor for TTRITreeViewAnimatingWrapper, &unk_100633FCC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001A0144(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100058000(&qword_10076B780, &qword_10062D7C0);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t sub_1001A0254(uint64_t a1)
{
  v2 = v1;
  *(v2 + qword_100771740) = a1;

  v4 = *(v2 + qword_100771730);
  if (a1)
  {

    v5 = v4;
    v6 = sub_100128A14();

    if (v6)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = v4;
    v7 = 0;
  }

  [v4 setDataSource:v7];

  v9 = v2 + qword_100771760;
  v10 = *(v2 + qword_100771760);
  v11 = *(v2 + qword_100771760 + 8);
  v12 = *(v2 + qword_100771760 + 16);
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 0;
  return sub_100100898(v10, v11, v12);
}

void sub_1001A0318(uint64_t a1, void *a2, uint64_t (*a3)(id), SEL *a4)
{
  v7 = v4;
  *(v7 + *a2) = a1;

  v12 = *(v7 + qword_100771730);
  if (a1)
  {

    v9 = a3(v12);

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = v12;
    v10 = 0;
  }

  [v12 *a4];
}

id sub_1001A03E4(void *a1)
{
  v2 = *(v1 + qword_100771708);
  *(v1 + qword_100771708) = a1;
  v3 = a1;

  return sub_1001896C8(&qword_100771708, &qword_100787F28, &selRef_setDragDelegate_);
}

id sub_1001A043C(void *a1)
{
  v2 = *(v1 + qword_100771710);
  *(v1 + qword_100771710) = a1;
  v3 = a1;

  return sub_1001896C8(&qword_100771710, &qword_100780C78, &selRef_setDropDelegate_);
}

double sub_1001A0494(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (*a6)(uint64_t))
{
  v64 = qword_100771770;
  v10 = *&a5[qword_100771770];
  if (v10)
  {
    v11 = *&a5[qword_100771770];
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_10:

    a6(v19);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

  v11 = sub_1000E236C(a5, a1);
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  swift_beginAccess();
  v13 = *(v11 + 64);

  sub_10003BE34(a3, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 64) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_100547070(0, v13[2] + 1, 1, v13);
    *(v11 + 64) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_100547070((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = sub_1001A8454;
  v17[5] = v12;
  *(v11 + 64) = v13;
  v18 = swift_endAccess();
  a6(v18);
  if (!v10)
  {
LABEL_11:
    if (*(v11 + 72))
    {

LABEL_27:
      *&a5[v64] = 0;
      goto LABEL_28;
    }

    swift_beginAccess();
    if (!*(*(v11 + 80) + 16) && !*(*(v11 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v11 + 96) + 16))
      {
        sub_10000B0D8(&a5[qword_100771738], &v68);
        v59 = *(&v69 + 1);
        v60 = v70;
        sub_10000C36C(&v68, *(&v69 + 1));
        (*(v60 + 24))(v59, v60);

        v57 = &v68;
LABEL_26:
        sub_100004758(v57);
        goto LABEL_27;
      }
    }

    v21 = *(v11 + 48);
    v20 = *(v11 + 56);
    v22 = &a5[qword_100771778];
    swift_beginAccess();
    v23 = *v22;
    v24 = v22[1];

    sub_1000E8AD0(v21, v23);
    if (v25)
    {
      sub_1000E8AD0(v20, v24);
      v27 = v26;

      if (v27)
      {
LABEL_21:
        __chkstk_darwin(v28);
        v29 = swift_beginAccess();
        __chkstk_darwin(v29);
        sub_100058000(&unk_10076BBD0, &qword_1006340A0);
        Set.removeAll(where:)();
        swift_endAccess();
        v30 = sub_1000C84C8();
        v32 = v31;
        v34 = v33;
        v36 = v35;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v38 = _typeName(_:qualified:)();
        sub_1000ABD78(v30, v32, v34, v36 & 1, v38, v39, &v68);

        v63 = v74;
        v76 = v73;
        v75[2] = v70;
        v75[3] = v71;
        v75[4] = v72;
        v75[0] = v68;
        v75[1] = v69;
        v40 = *&a5[qword_100771748];
        if (v40 && (v41 = *(v40 + 16), v42 = , v43 = v41(v42), , (v43 & 1) != 0))
        {
          v44 = swift_allocObject();
          *(v44 + 16) = a5;
          *(v44 + 24) = v11;
          v62 = v44;
          v45 = a5;

          v46 = sub_1001009D8;
        }

        else
        {
          v46 = 0;
          v62 = 0;
        }

        v47 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v61 = qword_100771738;
        sub_10000B0D8(&a5[qword_100771738], v65);
        v49 = v66;
        v48 = v67;
        sub_10000C36C(v65, v66);
        v50 = *(v48 + 32);

        v50(v75, sub_1001A6140, v47, v46, v62, sub_1001A156C, v11, v49, v48);
        sub_10008B800(&v68);

        sub_100004758(v65);
        v51 = *(v11 + 16);
        v52 = *(v11 + 24);
        v53 = *(v11 + 32);
        v54 = *(v11 + 40);

        sub_1000E42AC(v63, v51, v52, v53, v54);

        sub_10000B0D8(&a5[v61], v65);
        v55 = v66;
        v56 = v67;
        sub_10000C36C(v65, v66);
        (*(v56 + 24))(v55, v56);

        sub_1000301AC(v46, v62);

        v57 = v65;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }

LABEL_28:

  return result;
}

uint64_t sub_1001A0B30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 80);
  if (*(v10 + 16) && (v11 = sub_1003B3EDC(), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    swift_endAccess();

    if ((a4 & 1) == 0)
    {
      sub_1002EA030(a3, 0, a2);
    }

    v16 = qword_100634110[a2] | v15;
    v17 = v14;
  }

  else
  {
    swift_endAccess();
    if (a4)
    {
      v17 = sub_100460B78(_swiftEmptyArrayStorage);
    }

    else
    {
      sub_100058000(qword_100769AC8, &unk_10062FCC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = a2;
      *(inited + 40) = a3;
      v17 = sub_100460B78(inited);
      swift_setDeallocating();
    }

    v19 = 1;
    if (a2 != 3)
    {
      v19 = 4;
    }

    v20 = 2;
    if (a2 < 2u)
    {
      v20 = 0;
    }

    if (a2 <= 2u)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v5 + 80);
  *(v5 + 80) = 0x8000000000000000;
  sub_100126B44(v17, v16, a1, isUniquelyReferenced_nonNull_native);

  *(v5 + 80) = v23;
  return swift_endAccess();
}

uint64_t sub_1001A0CEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 80);
  if (*(v10 + 16) && (v11 = sub_1003B3EDC(), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    swift_endAccess();

    if ((a4 & 1) == 0)
    {
      sub_1002EA030(a3, 0, a2);
    }

    v16 = qword_100634110[a2] | v15;
    v17 = v14;
  }

  else
  {
    swift_endAccess();
    if (a4)
    {
      v17 = sub_100460B78(_swiftEmptyArrayStorage);
    }

    else
    {
      sub_100058000(qword_100769AC8, &unk_10062FCC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = a2;
      *(inited + 40) = a3;
      v17 = sub_100460B78(inited);
      swift_setDeallocating();
    }

    v19 = 1;
    if (a2 != 3)
    {
      v19 = 4;
    }

    v20 = 2;
    if (a2 < 2u)
    {
      v20 = 0;
    }

    if (a2 <= 2u)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v5 + 80);
  *(v5 + 80) = 0x8000000000000000;
  sub_100127484(v17, v16, a1, isUniquelyReferenced_nonNull_native);

  *(v5 + 80) = v23;
  return swift_endAccess();
}

double sub_1001A0EA8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (*a6)(uint64_t))
{
  v64 = qword_100771770;
  v10 = *&a5[qword_100771770];
  if (v10)
  {
    v11 = *&a5[qword_100771770];
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_10:

    a6(v19);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

  v11 = sub_1000E2540(a5, a1);
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  swift_beginAccess();
  v13 = *(v11 + 64);

  sub_10003BE34(a3, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 64) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_100547070(0, v13[2] + 1, 1, v13);
    *(v11 + 64) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_100547070((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = sub_1001A8454;
  v17[5] = v12;
  *(v11 + 64) = v13;
  v18 = swift_endAccess();
  a6(v18);
  if (!v10)
  {
LABEL_11:
    if (*(v11 + 72))
    {

LABEL_27:
      *&a5[v64] = 0;
      goto LABEL_28;
    }

    swift_beginAccess();
    if (!*(*(v11 + 80) + 16) && !*(*(v11 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v11 + 96) + 16))
      {
        sub_10000B0D8(&a5[qword_100771738], &v68);
        v59 = *(&v69 + 1);
        v60 = v70;
        sub_10000C36C(&v68, *(&v69 + 1));
        (*(v60 + 24))(v59, v60);

        v57 = &v68;
LABEL_26:
        sub_100004758(v57);
        goto LABEL_27;
      }
    }

    v21 = *(v11 + 48);
    v20 = *(v11 + 56);
    v22 = &a5[qword_100771778];
    swift_beginAccess();
    v23 = *v22;
    v24 = v22[1];

    sub_1000E9230(v21, v23);
    if (v25)
    {
      sub_1000E9230(v20, v24);
      v27 = v26;

      if (v27)
      {
LABEL_21:
        __chkstk_darwin(v28);
        v29 = swift_beginAccess();
        __chkstk_darwin(v29);
        sub_100058000(&unk_10076B8A0, &unk_100634090);
        Set.removeAll(where:)();
        swift_endAccess();
        v30 = sub_1000C8504();
        v32 = v31;
        v34 = v33;
        v36 = v35;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v38 = _typeName(_:qualified:)();
        sub_1000AC9F0(v30, v32, v34, v36 & 1, v38, v39, &v68);

        v63 = v74;
        v76 = v73;
        v75[2] = v70;
        v75[3] = v71;
        v75[4] = v72;
        v75[0] = v68;
        v75[1] = v69;
        v40 = *&a5[qword_100771748];
        if (v40 && (v41 = *(v40 + 16), v42 = , v43 = v41(v42), , (v43 & 1) != 0))
        {
          v44 = swift_allocObject();
          *(v44 + 16) = a5;
          *(v44 + 24) = v11;
          v62 = v44;
          v45 = a5;

          v46 = sub_1000FD780;
        }

        else
        {
          v46 = 0;
          v62 = 0;
        }

        v47 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v61 = qword_100771738;
        sub_10000B0D8(&a5[qword_100771738], v65);
        v49 = v66;
        v48 = v67;
        sub_10000C36C(v65, v66);
        v50 = *(v48 + 32);

        v50(v75, sub_1001A1564, v47, v46, v62, sub_1001A156C, v11, v49, v48);
        sub_10008B800(&v68);

        sub_100004758(v65);
        v51 = *(v11 + 16);
        v52 = *(v11 + 24);
        v53 = *(v11 + 32);
        v54 = *(v11 + 40);

        sub_1000E45EC(v63, v51, v52, v53, v54);

        sub_10000B0D8(&a5[v61], v65);
        v55 = v66;
        v56 = v67;
        sub_10000C36C(v65, v66);
        (*(v56 + 24))(v55, v56);

        sub_1000301AC(v46, v62);

        v57 = v65;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }

LABEL_28:

  return result;
}

uint64_t sub_1001A1574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2].i64[0];
  v7[1] = vextq_s8(v4[1], v4[1], 8uLL);
  v8 = a1;
  v9 = v5;
  return sub_10018A798(sub_1001A1638, v7, a3, a4);
}

uint64_t sub_1001A15CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  v9[1] = *(v4 + 24);
  v10 = v6;
  v11 = v5;
  v12 = a1;
  v13 = v7;
  return sub_10018A798(sub_1001A1628, v9, a3, a4);
}

double sub_1001A1644(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, unint64_t a7, int64_t a8)
{
  v11 = a5;
  v67 = qword_100771770;
  v14 = *&a5[qword_100771770];
  if (!v14)
  {
    v15 = sub_1000E2540(a5, a1);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v15 = *&a5[qword_100771770];
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v65 = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  swift_beginAccess();
  v17 = *(v15 + 64);

  sub_10003BE34(a3, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 64) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_100547070(0, v17[2] + 1, 1, v17);
    *(v15 + 64) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_100547070((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = sub_1001A8454;
  v21[5] = v16;
  *(v15 + 64) = v17;
  swift_endAccess();
  v11 = v65;
LABEL_10:
  sub_10018E360(v15, a6, a7, a8);
  if (!v14)
  {
    if (*(v15 + 72))
    {

LABEL_27:
      *&v11[v67] = 0;
      goto LABEL_28;
    }

    swift_beginAccess();
    if (!*(*(v15 + 80) + 16) && !*(*(v15 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v15 + 96) + 16))
      {
        sub_10000B0D8(&v11[qword_100771738], &v71);
        v61 = *(&v72 + 1);
        v62 = v73;
        sub_10000C36C(&v71, *(&v72 + 1));
        (*(v62 + 24))(v61, v62);

        v59 = &v71;
LABEL_26:
        sub_100004758(v59);
        goto LABEL_27;
      }
    }

    v23 = *(v15 + 48);
    v22 = *(v15 + 56);
    v24 = &v11[qword_100771778];
    swift_beginAccess();
    v25 = *v24;
    v26 = v24[1];

    sub_1000E9230(v23, v25);
    if (v27)
    {
      sub_1000E9230(v22, v26);
      v29 = v28;

      if (v29)
      {
LABEL_21:
        __chkstk_darwin(v30);
        v31 = swift_beginAccess();
        __chkstk_darwin(v31);
        sub_100058000(&unk_10076B8A0, &unk_100634090);
        Set.removeAll(where:)();
        swift_endAccess();
        v32 = sub_1000C8504();
        v34 = v33;
        v36 = v35;
        v38 = v37;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v40 = _typeName(_:qualified:)();
        sub_1000AC9F0(v32, v34, v36, v38 & 1, v40, v41, &v71);

        v63 = v77;
        v79 = v76;
        v78[2] = v73;
        v78[3] = v74;
        v78[4] = v75;
        v78[0] = v71;
        v78[1] = v72;
        v42 = *&v11[qword_100771748];
        if (v42 && (v43 = *(v42 + 16), v44 = , v45 = v43(v44), , (v45 & 1) != 0))
        {
          v46 = swift_allocObject();
          *(v46 + 16) = v11;
          *(v46 + 24) = v15;
          v66 = v46;
          v47 = v11;

          v64 = sub_1001A84B8;
        }

        else
        {
          v64 = 0;
          v66 = 0;
        }

        v48 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v49 = qword_100771738;
        sub_10000B0D8(&v11[qword_100771738], v68);
        v50 = v69;
        v51 = v70;
        sub_10000C36C(v68, v69);
        v52 = *(v51 + 32);

        v52(v78, sub_1001A84A8, v48, v64, v66, sub_1001A84AC, v15, v50, v51);
        sub_10008B800(&v71);

        sub_100004758(v68);
        v53 = *(v15 + 16);
        v54 = *(v15 + 24);
        v55 = *(v15 + 32);
        v56 = *(v15 + 40);

        sub_1000E45EC(v63, v53, v54, v55, v56);

        sub_10000B0D8(&v11[v49], v68);
        v57 = v69;
        v58 = v70;
        sub_10000C36C(v68, v69);
        (*(v58 + 24))(v57, v58);

        sub_1000301AC(v64, v66);

        v59 = v68;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }

LABEL_28:

  return result;
}

uint64_t sub_1001A1CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  v8[1] = *(v4 + 24);
  v9 = v5;
  v10 = v6;
  v11 = *(v4 + 56);
  v12 = a1;
  return sub_10018A798(sub_1001A1E08, v8, a3, a4);
}

uint64_t sub_1001A1D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v8[1] = *(v4 + 16);
  v9 = v5;
  v10 = v6;
  v11 = a1;
  return sub_10018A798(sub_1001A1DF8, v8, a3, a4);
}

uint64_t sub_1001A1D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[1] = *(v4 + 24);
  v7 = a1;
  return sub_10018A798(sub_1001A1DEC, v6, a3, a4);
}

double sub_1001A1E1C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = a5;
  v77 = qword_100771770;
  v14 = *&a5[qword_100771770];
  if (!v14)
  {
    v15 = sub_1000E2540(a5, a1);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v15 = *&a5[qword_100771770];
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v75 = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  swift_beginAccess();
  v17 = *(v15 + 64);

  sub_10003BE34(a3, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 64) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_100547070(0, v17[2] + 1, 1, v17);
    *(v15 + 64) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_100547070((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = sub_1001A8454;
  v21[5] = v16;
  *(v15 + 64) = v17;
  swift_endAccess();
  v11 = v75;
LABEL_10:
  *&v81 = sub_1000C8504();
  *(&v81 + 1) = v22;
  *&v82 = v23;
  BYTE8(v82) = v24 & 1;
  v25 = qword_100771768;
  *(a6 + qword_100771768) = 1;
  sub_10018F924(&v81, a7, a6, v15, a8);
  v26 = v82;
  v27 = BYTE8(v82);
  v28 = a6 + qword_100771760;
  v29 = *(a6 + qword_100771760);
  v30 = *(a6 + qword_100771760 + 8);
  v31 = *(a6 + qword_100771760 + 16);
  *v28 = v81;
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  sub_100100898(v29, v30, v31);
  *(a6 + v25) = 0;
  if (!v14)
  {
    if (*(v15 + 72))
    {

LABEL_27:
      *&v11[v77] = 0;
      goto LABEL_28;
    }

    swift_beginAccess();
    if (!*(*(v15 + 80) + 16) && !*(*(v15 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v15 + 96) + 16))
      {
        sub_10000B0D8(&v11[qword_100771738], &v81);
        v71 = *(&v82 + 1);
        v72 = v83;
        sub_10000C36C(&v81, *(&v82 + 1));
        (*(v72 + 24))(v71, v72);

        v69 = &v81;
LABEL_26:
        sub_100004758(v69);
        goto LABEL_27;
      }
    }

    v33 = *(v15 + 48);
    v32 = *(v15 + 56);
    v34 = &v11[qword_100771778];
    swift_beginAccess();
    v35 = *v34;
    v36 = v34[1];

    sub_1000E9230(v33, v35);
    if (v37)
    {
      sub_1000E9230(v32, v36);
      v39 = v38;

      if (v39)
      {
LABEL_21:
        __chkstk_darwin(v40);
        v41 = swift_beginAccess();
        __chkstk_darwin(v41);
        sub_100058000(&unk_10076B8A0, &unk_100634090);
        Set.removeAll(where:)();
        swift_endAccess();
        v42 = sub_1000C8504();
        v44 = v43;
        v46 = v45;
        v48 = v47;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v50 = _typeName(_:qualified:)();
        sub_1000AC9F0(v42, v44, v46, v48 & 1, v50, v51, &v81);

        v73 = v87;
        v89 = v86;
        v88[2] = v83;
        v88[3] = v84;
        v88[4] = v85;
        v88[0] = v81;
        v88[1] = v82;
        v52 = *&v11[qword_100771748];
        if (v52 && (v53 = *(v52 + 16), v54 = , v55 = v53(v54), , (v55 & 1) != 0))
        {
          v56 = swift_allocObject();
          *(v56 + 16) = v11;
          *(v56 + 24) = v15;
          v76 = v56;
          v57 = v11;

          v74 = sub_1001A84B8;
        }

        else
        {
          v74 = 0;
          v76 = 0;
        }

        v58 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v59 = qword_100771738;
        sub_10000B0D8(&v11[qword_100771738], v78);
        v60 = v79;
        v61 = v80;
        sub_10000C36C(v78, v79);
        v62 = *(v61 + 32);

        v62(v88, sub_1001A84A8, v58, v74, v76, sub_1001A84AC, v15, v60, v61);
        sub_10008B800(&v81);

        sub_100004758(v78);
        v63 = *(v15 + 16);
        v64 = *(v15 + 24);
        v65 = *(v15 + 32);
        v66 = *(v15 + 40);

        sub_1000E45EC(v73, v63, v64, v65, v66);

        sub_10000B0D8(&v11[v59], v78);
        v67 = v79;
        v68 = v80;
        sub_10000C36C(v78, v79);
        (*(v68 + 24))(v67, v68);

        sub_1000301AC(v74, v76);

        v69 = v78;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }

LABEL_28:

  return result;
}

void sub_1001A2544(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v50 = a1;
  v3 = *v2;
  v4 = swift_isaMask;
  v5 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v5 - 8);
  v47 = &v44 - v6;
  v7 = type metadata accessor for IndexPath();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  v20 = sub_100189FAC(v16, v17, v18, v19);
  v24 = sub_10015F984(v50, v20, v22, v23, v21 & 1, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58));

  if (v24)
  {
    v25 = qword_1007A84C0;
    swift_beginAccess();
    (*(v10 + 16))(v15, v24 + v25, v9);
    (*(v10 + 104))(v12, enum case for TTRITreeViewExpandedState.expanded(_:), v9);
    LOBYTE(v25) = static TTRITreeViewExpandedState.== infix(_:_:)();
    v26 = *(v10 + 8);
    v26(v12, v9);
    v27 = (v26)(v15, v9);
    if (v25)
    {
      v31 = sub_100189FAC(v27, v28, v29, v30);
      v33 = v47;
      sub_1001600E4(v24, v31, v34, v32 & 1, v47);

      v36 = v48;
      v35 = v49;
      if ((*(v48 + 48))(v33, 1, v49) == 1)
      {
        sub_1000079B4(v33, &unk_100771B10, qword_10062E540);
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100003E30(v37, qword_1007716F0);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Unable to find index path", v40, 2u);
        }
      }

      else
      {
        v41 = v45;
        v42 = (*(v36 + 32))(v45, v33, v35);
        __chkstk_darwin(v42);
        *(&v44 - 4) = v24;
        *(&v44 - 3) = v2;
        v43 = v46;
        *(&v44 - 2) = v41;
        *(&v44 - 1) = v43;
        sub_10018B568(sub_1001A6078, (&v44 - 6), 0, 0, 0, 0);

        (*(v36 + 8))(v41, v35);
      }
    }

    else
    {
    }
  }
}

void sub_1001A2A10(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v60 = a1;
  v3 = *v2;
  v4 = swift_isaMask;
  v5 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v5 - 8);
  v57 = &v54 - v6;
  v7 = type metadata accessor for IndexPath();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v56 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v20 = sub_100189FAC(v16, v17, v18, v19);
  v21 = *((v4 & v3) + 0x50);
  v22 = *((v4 & v3) + 0x58);
  v54 = v21;
  v26 = sub_10015F984(v60, v20, v24, v25, v23 & 1, v21, v22);

  v27 = v26;

  if (v26)
  {
    v28 = qword_1007A84C0;
    swift_beginAccess();
    (*(v10 + 16))(v15, v26 + v28, v9);
    (*(v10 + 104))(v12, enum case for TTRITreeViewExpandedState.collapsed(_:), v9);
    LOBYTE(v28) = static TTRITreeViewExpandedState.== infix(_:_:)();
    v29 = *(v10 + 8);
    v29(v12, v9);
    v30 = (v29)(v15, v9);
    if (v28)
    {
      v34 = v2;
      v35 = sub_100189FAC(v30, v31, v32, v33);
      v37 = v57;
      sub_1001600E4(v27, v35, v38, v36 & 1, v57);

      v40 = v58;
      v39 = v59;
      if ((*(v58 + 48))(v37, 1, v59) == 1)
      {
        sub_1000079B4(v37, &unk_100771B10, qword_10062E540);
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100003E30(v41, qword_1007716F0);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "Unable to find index path", v44, 2u);
        }
      }

      else
      {
        v45 = v56;
        (*(v40 + 32))(v56, v37, v39);
        swift_beginAccess();
        v61 = v27[8];
        type metadata accessor for TTRITreeViewNode(255, v54, v22, v46);
        type metadata accessor for Array();
        swift_getWitnessTable();
        v47 = Collection.isEmpty.getter();
        if ((v47 & 1) == 0)
        {
          if (qword_100766FC8 != -1)
          {
            swift_once();
          }

          v48 = type metadata accessor for Logger();
          sub_100003E30(v48, qword_1007716F0);
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&_mh_execute_header, v49, v50, "Collapsed node should have no child nodes", v51, 2u);
          }
        }

        __chkstk_darwin(v47);
        *(&v54 - 4) = v34;
        *(&v54 - 3) = v27;
        v52 = v55;
        *(&v54 - 2) = v45;
        *(&v54 - 1) = v52;
        sub_10018B568(sub_1001A6094, (&v54 - 6), 0, 0, 0, 0);
        if (sub_100189678(&qword_100771758, sub_100128A14))
        {
          Strong = swift_unknownObjectUnownedLoadStrong();
          sub_100128DE8();
        }

        (*(v40 + 8))(v45, v39);
      }
    }

    else
    {
    }
  }
}

double sub_1001A306C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, unint64_t a7, int64_t a8)
{
  v11 = a5;
  v67 = qword_100771770;
  v14 = *&a5[qword_100771770];
  if (!v14)
  {
    v15 = sub_1000E236C(a5, a1);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v15 = *&a5[qword_100771770];
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v65 = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  swift_beginAccess();
  v17 = *(v15 + 64);

  sub_10003BE34(a3, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 64) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_100547070(0, v17[2] + 1, 1, v17);
    *(v15 + 64) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_100547070((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = sub_1001A8454;
  v21[5] = v16;
  *(v15 + 64) = v17;
  swift_endAccess();
  v11 = v65;
LABEL_10:
  sub_10018E230(v15, a6, a7, a8);
  if (!v14)
  {
    if (*(v15 + 72))
    {

LABEL_27:
      *&v11[v67] = 0;
      goto LABEL_28;
    }

    swift_beginAccess();
    if (!*(*(v15 + 80) + 16) && !*(*(v15 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v15 + 96) + 16))
      {
        sub_10000B0D8(&v11[qword_100771738], &v71);
        v61 = *(&v72 + 1);
        v62 = v73;
        sub_10000C36C(&v71, *(&v72 + 1));
        (*(v62 + 24))(v61, v62);

        v59 = &v71;
LABEL_26:
        sub_100004758(v59);
        goto LABEL_27;
      }
    }

    v23 = *(v15 + 48);
    v22 = *(v15 + 56);
    v24 = &v11[qword_100771778];
    swift_beginAccess();
    v25 = *v24;
    v26 = v24[1];

    sub_1000E8AD0(v23, v25);
    if (v27)
    {
      sub_1000E8AD0(v22, v26);
      v29 = v28;

      if (v29)
      {
LABEL_21:
        __chkstk_darwin(v30);
        v31 = swift_beginAccess();
        __chkstk_darwin(v31);
        sub_100058000(&unk_10076BBD0, &qword_1006340A0);
        Set.removeAll(where:)();
        swift_endAccess();
        v32 = sub_1000C84C8();
        v34 = v33;
        v36 = v35;
        v38 = v37;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v40 = _typeName(_:qualified:)();
        sub_1000ABD78(v32, v34, v36, v38 & 1, v40, v41, &v71);

        v63 = v77;
        v79 = v76;
        v78[2] = v73;
        v78[3] = v74;
        v78[4] = v75;
        v78[0] = v71;
        v78[1] = v72;
        v42 = *&v11[qword_100771748];
        if (v42 && (v43 = *(v42 + 16), v44 = , v45 = v43(v44), , (v45 & 1) != 0))
        {
          v46 = swift_allocObject();
          *(v46 + 16) = v11;
          *(v46 + 24) = v15;
          v66 = v46;
          v47 = v11;

          v64 = sub_1001A84BC;
        }

        else
        {
          v64 = 0;
          v66 = 0;
        }

        v48 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v49 = qword_100771738;
        sub_10000B0D8(&v11[qword_100771738], v68);
        v50 = v69;
        v51 = v70;
        sub_10000C36C(v68, v69);
        v52 = *(v51 + 32);

        v52(v78, sub_1001A84B0, v48, v64, v66, sub_1001A84AC, v15, v50, v51);
        sub_10008B800(&v71);

        sub_100004758(v68);
        v53 = *(v15 + 16);
        v54 = *(v15 + 24);
        v55 = *(v15 + 32);
        v56 = *(v15 + 40);

        sub_1000E42AC(v63, v53, v54, v55, v56);

        sub_10000B0D8(&v11[v49], v68);
        v57 = v69;
        v58 = v70;
        sub_10000C36C(v68, v69);
        (*(v58 + 24))(v57, v58);

        sub_1000301AC(v64, v66);

        v59 = v68;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }

LABEL_28:

  return result;
}

double sub_1001A3704(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = a5;
  v77 = qword_100771770;
  v14 = *&a5[qword_100771770];
  if (!v14)
  {
    v15 = sub_1000E236C(a5, a1);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v15 = *&a5[qword_100771770];
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v75 = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  swift_beginAccess();
  v17 = *(v15 + 64);

  sub_10003BE34(a3, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 64) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_100547070(0, v17[2] + 1, 1, v17);
    *(v15 + 64) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_100547070((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = sub_1001A8454;
  v21[5] = v16;
  *(v15 + 64) = v17;
  swift_endAccess();
  v11 = v75;
LABEL_10:
  *&v81 = sub_1000C84C8();
  *(&v81 + 1) = v22;
  *&v82 = v23;
  BYTE8(v82) = v24 & 1;
  v25 = qword_100771768;
  *(a6 + qword_100771768) = 1;
  sub_10018EB2C(&v81, a7, a6, v15, a8);
  v26 = v82;
  v27 = BYTE8(v82);
  v28 = a6 + qword_100771760;
  v29 = *(a6 + qword_100771760);
  v30 = *(a6 + qword_100771760 + 8);
  v31 = *(a6 + qword_100771760 + 16);
  *v28 = v81;
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  sub_100100898(v29, v30, v31);
  *(a6 + v25) = 0;
  if (!v14)
  {
    if (*(v15 + 72))
    {

LABEL_27:
      *&v11[v77] = 0;
      goto LABEL_28;
    }

    swift_beginAccess();
    if (!*(*(v15 + 80) + 16) && !*(*(v15 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v15 + 96) + 16))
      {
        sub_10000B0D8(&v11[qword_100771738], &v81);
        v71 = *(&v82 + 1);
        v72 = v83;
        sub_10000C36C(&v81, *(&v82 + 1));
        (*(v72 + 24))(v71, v72);

        v69 = &v81;
LABEL_26:
        sub_100004758(v69);
        goto LABEL_27;
      }
    }

    v33 = *(v15 + 48);
    v32 = *(v15 + 56);
    v34 = &v11[qword_100771778];
    swift_beginAccess();
    v35 = *v34;
    v36 = v34[1];

    sub_1000E8AD0(v33, v35);
    if (v37)
    {
      sub_1000E8AD0(v32, v36);
      v39 = v38;

      if (v39)
      {
LABEL_21:
        __chkstk_darwin(v40);
        v41 = swift_beginAccess();
        __chkstk_darwin(v41);
        sub_100058000(&unk_10076BBD0, &qword_1006340A0);
        Set.removeAll(where:)();
        swift_endAccess();
        v42 = sub_1000C84C8();
        v44 = v43;
        v46 = v45;
        v48 = v47;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v50 = _typeName(_:qualified:)();
        sub_1000ABD78(v42, v44, v46, v48 & 1, v50, v51, &v81);

        v73 = v87;
        v89 = v86;
        v88[2] = v83;
        v88[3] = v84;
        v88[4] = v85;
        v88[0] = v81;
        v88[1] = v82;
        v52 = *&v11[qword_100771748];
        if (v52 && (v53 = *(v52 + 16), v54 = , v55 = v53(v54), , (v55 & 1) != 0))
        {
          v56 = swift_allocObject();
          *(v56 + 16) = v11;
          *(v56 + 24) = v15;
          v76 = v56;
          v57 = v11;

          v74 = sub_1001A84BC;
        }

        else
        {
          v74 = 0;
          v76 = 0;
        }

        v58 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v59 = qword_100771738;
        sub_10000B0D8(&v11[qword_100771738], v78);
        v60 = v79;
        v61 = v80;
        sub_10000C36C(v78, v79);
        v62 = *(v61 + 32);

        v62(v88, sub_1001A84B0, v58, v74, v76, sub_1001A84AC, v15, v60, v61);
        sub_10008B800(&v81);

        sub_100004758(v78);
        v63 = *(v15 + 16);
        v64 = *(v15 + 24);
        v65 = *(v15 + 32);
        v66 = *(v15 + 40);

        sub_1000E42AC(v73, v63, v64, v65, v66);

        sub_10000B0D8(&v11[v59], v78);
        v67 = v79;
        v68 = v80;
        sub_10000C36C(v78, v79);
        (*(v68 + 24))(v67, v68);

        sub_1000301AC(v74, v76);

        v69 = v78;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }

LABEL_28:

  return result;
}

uint64_t sub_1001A3DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = swift_isaMask;
  sub_100189FAC(a1, a2, a3, a4);

  v7 = *((v6 & v5) + 0x50);
  v8 = *((v6 & v5) + 0x58);
  type metadata accessor for TTRITreeViewSectionsMetadata.Section(0, v7, v8, v9);
  Array.subscript.getter();

  type metadata accessor for TTRITreeViewNode(0, v7, v8, v10);
  v11 = Array.count.getter();

  return v11;
}

uint64_t sub_1001A3EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = swift_isaMask;
  sub_100189FAC(a1, a2, a3, a4);

  type metadata accessor for TTRITreeViewSectionsMetadata.Section(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), v7);
  v8 = Array.count.getter();

  return v8;
}

id sub_1001A3F90(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = type metadata accessor for IndexPath();
  v77 = *(v5 - 8);
  v78 = v5;
  __chkstk_darwin(v5);
  v71 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  __chkstk_darwin(v10);
  v70 = &v69 - v11;
  __chkstk_darwin(v12);
  v69 = &v69 - v13;
  v14 = *((v4 & v3) + 0x58);
  v15 = *((v4 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  v75 = AssociatedTypeWitness;
  __chkstk_darwin(AssociatedTypeWitness);
  v73 = &v69 - v17;
  v18 = *(v15 - 8);
  __chkstk_darwin(v19);
  v21 = &v69 - v20;
  v26 = sub_100189FAC(v22, v23, v24, v25);
  v76 = a1;
  v72 = v14;
  v30 = sub_10015F6B4(a1, v26, v28, v29, v27 & 1, v15, v14);

  if (v30)
  {
    if (sub_100189678(&qword_100771740, sub_100128A14))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      v32 = *(*v30 + 144);
      swift_beginAccess();
      (*(v18 + 16))(v21, &v30[v32], v15);
      v33 = sub_1002DF560();

      (*(v18 + 8))(v21, v15);
      v81[3] = sub_100003540(0, &qword_10076B8B8, UITableViewCell_ptr);
      v81[0] = v33;
      v80 = 0;
      memset(v79, 0, sizeof(v79));
      v34 = v33;
      sub_100192A24(v81, v30, v79);
      sub_1000079B4(v79, &unk_10076B8C0, &unk_100634060);
      v35 = sub_1000079B4(v81, &qword_10076AE40, &qword_10062EE50);
      v36 = v73;
      sub_10023A594(v35);
      swift_beginAccess();
      v38 = type metadata accessor for TTRITreeViewSoftReloadContext(0, v15, v72, v37);
      sub_100421D3C(v36, v38);
      swift_endAccess();

      (*(v74 + 8))(v36, v75);
      return v34;
    }

    else
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_100003E30(v53, qword_1007716F0);
      v54 = v76;
      v55 = v77;
      v56 = *(v77 + 16);
      v57 = v69;
      v58 = v78;
      v56(v69, v76, v78);
      v59 = v70;
      v56(v70, v54, v58);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 134218240;
        v63 = IndexPath.row.getter();
        v64 = *(v55 + 8);
        v64(v57, v58);
        *(v62 + 4) = v63;
        *(v62 + 12) = 2048;
        v65 = IndexPath.section.getter();
        v64(v59, v58);
        *(v62 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v60, v61, "Data source is nil when requesting cell for row at indexPath {indexPath: row=%ld, section=%ld}", v62, 0x16u);
      }

      else
      {
        v67 = *(v55 + 8);
        v67(v59, v58);
        v67(v57, v58);
      }

      v68 = [objc_allocWithZone(UITableViewCell) init];

      return v68;
    }
  }

  else
  {
    v40 = v9;
    v41 = v71;
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100003E30(v42, qword_1007716F0);
    v43 = v76;
    v44 = v77;
    v45 = *(v77 + 16);
    v46 = v78;
    v45(v40, v76, v78);
    v45(v41, v43, v46);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134218240;
      v50 = IndexPath.row.getter();
      v51 = *(v44 + 8);
      v51(v40, v46);
      *(v49 + 4) = v50;
      *(v49 + 12) = 2048;
      v52 = IndexPath.section.getter();
      v51(v41, v46);
      *(v49 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v47, v48, "Node not found when requesting cell for row at indexPath {indexPath: row=%ld, section=%ld}", v49, 0x16u);
    }

    else
    {
      v66 = *(v44 + 8);
      v66(v41, v46);
      v66(v40, v46);
    }

    return [objc_allocWithZone(UITableViewCell) init];
  }
}

uint64_t sub_1001A475C(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v11[1] = 0;
  v12 = sub_100189678(&qword_100771740, sub_100128A14);
  v10 = v1;
  v11[0] = 0;
  v6 = type metadata accessor for TTRIAnyTreeViewDataSource(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v5);
  v7 = sub_100058000(qword_100771B80, &unk_10063B2E0);
  sub_100193420(a1, &v12, v11, sub_1001A67F8, &v9, v6, v7, &v13);

  return v13;
}

uint64_t sub_1001A4858(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & *v1) + 0x50);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v22 - v7;
  v13 = sub_100189FAC(v9, v10, v11, v12);
  v17 = sub_10015F890(a1, v13, v15, v16, v14 & 1, v5, *((v4 & v3) + 0x58));

  if (v17)
  {
    if (sub_100189678(&qword_100771740, sub_100128A14))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      v19 = *(*v17 + 144);
      swift_beginAccess();
      (*(v6 + 16))(v8, v17 + v19, v5);
      v20 = sub_1002DF5B0();

      (*(v6 + 8))(v8, v5);
      return v20;
    }
  }

  return 0;
}

double sub_1001A4A70(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_isaMask;
  v14 = sub_100189678(&qword_100771740, sub_100128A14);
  v12 = v2;
  v13 = a1;
  v8 = type metadata accessor for TTRIAnyTreeViewDataSource(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), v7);
  sub_100193904(a2, &v14, v9, sub_1001A67F0, &v11, v8, &type metadata for () + 8, &type metadata for ());

  return result;
}

uint64_t sub_1001A4B54(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void, void, void), void (*a5)(char *, char *))
{
  v9 = *v5;
  v10 = swift_isaMask;
  v16 = sub_100189678(a2, a3);
  v15 = 0;
  v14 = v5;
  v11 = a4(0, *((v10 & v9) + 0x50), *((v10 & v9) + 0x58));
  sub_100193904(a1, &v16, &v15, a5, &v13, v11, &type metadata for Bool, &v17);

  return v17;
}

double sub_1001A4C30(void *a1, uint64_t a2)
{
  v43 = a1;
  v4 = *((swift_isaMask & *v2) + 0x50);
  v42 = *(v4 - 8);
  __chkstk_darwin(a1);
  v41 = &v40 - v5;
  v8 = *((v7 & v6) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v40 - v11;
  v17 = sub_100189FAC(v13, v14, v15, v16);
  v21 = sub_10015F6B4(a2, v17, v19, v20, v18 & 1, v4, v8);

  if (v21)
  {
    v23 = qword_100771780;
    swift_beginAccess();
    v24 = *(v2 + v23);

    sub_10023A594(v25);
    v26 = sub_1004218BC(v12, v24, v4, v8);

    v27 = *(v10 + 8);
    v27(v12, AssociatedTypeWitness);
    if ((v26 & 1) != 0 && (v28 = sub_100189678(&qword_100771748, sub_1002DF79C)) != 0)
    {
      v40 = v28;
      v29 = sub_100196428(v43, v21);
      sub_10023A594(v29);
      swift_beginAccess();
      v31 = type metadata accessor for TTRITreeViewSoftReloadContext(0, v4, v8, v30);
      sub_100421958(v12, v31);
      swift_endAccess();

      v27(v12, AssociatedTypeWitness);
    }

    else
    {
      v46[3] = sub_100003540(0, &qword_10076B8B8, UITableViewCell_ptr);
      v45 = 0;
      v46[0] = v43;
      memset(v44, 0, sizeof(v44));
      v32 = v43;
      v33 = sub_100192A24(v46, v21, v44);
      sub_1000079B4(v44, &unk_10076B8C0, &unk_100634060);
      sub_1000079B4(v46, &qword_10076AE40, &qword_10062EE50);
      if ((v33 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_10052A71C();

LABEL_7:
    if (sub_100189678(&qword_100771758, sub_100128A14))
    {
      v35 = swift_unknownObjectUnownedLoadStrong();
      v36 = *(*v21 + 144);
      swift_beginAccess();
      v37 = v42;
      v38 = &v21[v36];
      v39 = v41;
      (*(v42 + 16))(v41, v38, v4);
      sub_100128BDC();

      (*(v37 + 8))(v39, v4);
    }

    else
    {
    }
  }

  return result;
}

double sub_1001A508C(void *a1, uint64_t a2, void (*a3)(void *, id, char *))
{
  v27 = a3;
  v6 = *v3;
  v7 = swift_isaMask;
  v8 = *((swift_isaMask & *v3) + 0x50);
  v28 = *(v8 - 8);
  __chkstk_darwin(a1);
  v10 = &v27 - v9;
  v15 = sub_100189FAC(v11, v12, v13, v14);
  v19 = sub_10015F890(a2, v15, v17, v18, v16 & 1, v8, *((v7 & v6) + 0x58));

  if (v19)
  {
    v31[3] = sub_100003540(0, &qword_10076B020, UIView_ptr);
    v31[0] = a1;
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    v21 = a1;
    v22 = sub_100192A24(v31, v19, v29);
    sub_1000079B4(v29, &unk_10076B8C0, &unk_100634060);
    sub_1000079B4(v31, &qword_10076AE40, &qword_10062EE50);
    if (v22)
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      sub_10052A71C();
    }

    if (sub_100189678(&qword_100771758, sub_100128A14))
    {
      v24 = swift_unknownObjectUnownedLoadStrong();
      v25 = *(*v19 + 144);
      swift_beginAccess();
      v26 = v28;
      (*(v28 + 16))(v10, &v19[v25], v8);
      v27(v24, v21, v10);

      (*(v26 + 8))(v10, v8);
    }

    else
    {
    }
  }

  return result;
}

void sub_1001A537C()
{
  if (sub_100189678(&qword_100771758, sub_100128A14))
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100129004();
  }
}

double sub_1001A5410(uint64_t a1, void (*a2)(char *, char *))
{
  v5 = *v2;
  v6 = swift_isaMask;
  v13 = sub_100189678(&qword_100771758, sub_100128A14);
  v12 = UITableViewAutomaticDimension;
  v11 = v2;
  v8 = type metadata accessor for TTRIAnyTreeViewDelegate(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), v7);
  sub_100193904(a1, &v13, &v12, a2, &v10, v8, &type metadata for CGFloat, &v14);

  return v14;
}

double sub_1001A54FC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void, void, void), void (*a4)(char *, char *))
{
  v8 = *v4;
  v9 = swift_isaMask;
  v14 = 0;
  v15 = sub_100189738(a2);
  v13 = v4;
  v10 = a3(0, *((v9 & v8) + 0x50), *((v9 & v8) + 0x58));
  sub_100193420(a1, &v15, &v14, a4, &v12, v10, &type metadata for CGFloat, &v16);

  return v16;
}

uint64_t sub_1001A55D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, char *, uint64_t))
{
  v6 = swift_isaMask & *v3;
  v7 = *(v6 + 0x50);
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = &v28 - v9;
  v12 = sub_100189738(v11);
  if (!v12)
  {
    return 0;
  }

  v29 = a3;
  v16 = sub_100189FAC(v12, v13, v14, v15);
  v20 = sub_10015F890(a1, v16, v18, v19, v17 & 1, v7, *(v6 + 88));

  if (!v20)
  {

    return 0;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v22 = *(*v20 + 144);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v20[v22], v7);
  v23 = v29(Strong, v10, a1);

  (*(v8 + 8))(v10, v7);
  if (v23)
  {
    v24 = sub_100003540(0, &qword_10076B020, UIView_ptr);
    v25 = v23;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v32[1] = 0;
    v32[2] = 0;
  }

  v31 = 0;
  v32[0] = v25;
  v32[3] = v24;
  memset(v30, 0, sizeof(v30));
  v26 = v25;
  sub_100192A24(v32, v20, v30);

  sub_1000079B4(v30, &unk_10076B8C0, &unk_100634060);
  sub_1000079B4(v32, &qword_10076AE40, &qword_10062EE50);
  return v23;
}

uint64_t sub_1001A59AC(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v11 = 1;
  v12 = sub_100189678(&qword_100771758, sub_100128A14);
  v10 = v1;
  v6 = type metadata accessor for TTRIAnyTreeViewDelegate(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v5);
  type metadata accessor for EditingStyle(0);
  sub_100193904(a1, &v12, &v11, sub_1001A642C, &v9, v6, v7, &v13);

  return v13;
}

uint64_t sub_1001A5AA0(uint64_t a1, void (*a2)(char *, char *))
{
  v5 = *v2;
  v6 = swift_isaMask;
  v13 = 0;
  v14 = sub_100189678(&qword_100771758, sub_100128A14);
  v12 = v2;
  v8 = type metadata accessor for TTRIAnyTreeViewDelegate(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), v7);
  v9 = sub_100058000(&qword_100771B70, &unk_1006340B0);
  sub_100193904(a1, &v14, &v13, a2, &v11, v8, v9, &v15);

  return v15;
}

uint64_t sub_1001A5B90(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v11 = sub_100189678(&qword_100771758, sub_100128A14);
  v10 = 1;
  v9 = v1;
  v6 = type metadata accessor for TTRIAnyTreeViewDelegate(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v5);
  sub_100193904(a1, &v11, &v10, sub_1001A639C, &v8, v6, &type metadata for Bool, &v12);

  return v12;
}

uint64_t sub_1001A5CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_isaMask;
  v17 = sub_100189678(&qword_100771758, sub_100128A14);
  v16 = 0;
  v13 = v3;
  v14 = a1;
  v15 = a3;
  v10 = type metadata accessor for TTRIAnyTreeViewDelegate(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), v9);
  sub_100193904(a2, &v17, &v16, sub_1001A6358, &v12, v10, &type metadata for Bool, &v18);

  return v18;
}

double sub_1001A5DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a3;
  return sub_1001968F0(a2, sub_1001A6318, v4);
}

void sub_1001A5E00(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t, uint64_t))
{
  if (sub_100189678(&qword_100771758, sub_100128A14))
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    a3(Strong, a1, a2);
  }
}

uint64_t sub_1001A5EC4(uint64_t a1, char a2, void (*a3)(char *, char *))
{
  v7 = *v3;
  v8 = swift_isaMask;
  v15 = sub_100189738(sub_1001294A4);
  v14 = a2;
  v13 = v3;
  v10 = type metadata accessor for TTRIAnyTreeViewCellSeparatorCustomizing(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), v9);
  sub_100193420(a1, &v15, &v14, a3, &v12, v10, &type metadata for Bool, &v16);

  return v16;
}

id sub_1001A5FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v12[3] = swift_getObjectType();
  v11 = a2;
  v12[0] = a1;
  v10 = v3;
  swift_unknownObjectRetain();
  v7 = sub_100199B48(v12, a3, &v9);
  sub_100004758(v12);
  return v7;
}

uint64_t sub_1001A6094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v8[1] = *(v4 + 16);
  v9 = v5;
  v10 = a1;
  v11 = v6;
  return sub_10018A798(sub_1001A60EC, v8, a3, a4);
}

uint64_t sub_1001A6160()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001A6488(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100771B10, qword_10062E540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A670C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001A6800(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1001A688C(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 > 7 || (v5 + 1) > 0x18 || (*(v4 + 80) & 0x100000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));

    return v3;
  }

  v10 = a2[v5];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v5 <= 3)
    {
      v12 = *(v4 + 64);
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_23;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v5))) + 2;
    v10 = v13 + 2;
    if (v5 < 4)
    {
      v10 = v14;
    }
  }

LABEL_23:
  if (v10 == 1)
  {
    (*(v4 + 16))(__dst);
    *(v3 + v5) = 1;
    return v3;
  }

  if (!v10)
  {
    (*(v4 + 16))(__dst);
    *(v3 + v5) = 0;
    return v3;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_1001A6A10(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = result[v2];
  v4 = v3 - 2;
  if (v3 < 2)
  {
    goto LABEL_15;
  }

  if (v2 <= 3)
  {
    v5 = *(*(*(a2 + 16) - 8) + 64);
  }

  else
  {
    v5 = 4;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = *result;
  }

  else if (v5 == 2)
  {
    v6 = *result;
  }

  else if (v5 == 3)
  {
    v6 = *result | (result[2] << 16);
  }

  else
  {
    v6 = *result;
  }

  v7 = (v6 | (v4 << (8 * v2))) + 2;
  v3 = v6 + 2;
  if (v2 < 4)
  {
    v3 = v7;
  }

LABEL_15:
  if (v3 <= 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

_BYTE *sub_1001A6AE8(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(v3 + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (a2[2] << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_15:
  if (v5 == 1)
  {
    v10 = a1;
    (*(v3 + 16))();
    v10[v4] = 1;
    return v10;
  }

  if (!v5)
  {
    v10 = a1;
    (*(v3 + 16))();
    v10[v4] = 0;
    return v10;
  }

  return memcpy(a1, a2, v4 + 1);
}

unsigned __int8 *sub_1001A6C28(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = result[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(v3 + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_16;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_16:
  if (v5 <= 1)
  {
    v10 = result;
    v11 = a2;
    (*(v3 + 8))();
    a2 = v11;
    result = v10;
  }

  v12 = a2[v4];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_32;
  }

  if (v4 <= 3)
  {
    v14 = v4;
  }

  else
  {
    v14 = 4;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *a2;
    }

    else if (v14 == 3)
    {
      v15 = *a2 | (a2[2] << 16);
    }

    else
    {
      v15 = *a2;
    }

LABEL_30:
    v16 = (v15 | (v13 << (8 * v4))) + 2;
    v12 = v15 + 2;
    if (v4 < 4)
    {
      v12 = v16;
    }

    goto LABEL_32;
  }

  if (v14)
  {
    v15 = *a2;
    goto LABEL_30;
  }

LABEL_32:
  if (v12 == 1)
  {
    v18 = result;
    (*(v3 + 16))();
    result = v18;
    v18[v4] = 1;
  }

  else if (v12)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v17 = result;
    (*(v3 + 16))();
    result = v17;
    v17[v4] = 0;
  }

  return result;
}

_BYTE *sub_1001A6E38(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(v3 + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (a2[2] << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_15:
  if (v5 == 1)
  {
    v10 = a1;
    (*(v3 + 32))();
    v10[v4] = 1;
    return v10;
  }

  if (!v5)
  {
    v10 = a1;
    (*(v3 + 32))();
    v10[v4] = 0;
    return v10;
  }

  return memcpy(a1, a2, v4 + 1);
}

unsigned __int8 *sub_1001A6F78(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = result[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(v3 + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_16;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_16:
  if (v5 <= 1)
  {
    v10 = result;
    v11 = a2;
    (*(v3 + 8))();
    a2 = v11;
    result = v10;
  }

  v12 = a2[v4];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_32;
  }

  if (v4 <= 3)
  {
    v14 = v4;
  }

  else
  {
    v14 = 4;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *a2;
    }

    else if (v14 == 3)
    {
      v15 = *a2 | (a2[2] << 16);
    }

    else
    {
      v15 = *a2;
    }

LABEL_30:
    v16 = (v15 | (v13 << (8 * v4))) + 2;
    v12 = v15 + 2;
    if (v4 < 4)
    {
      v12 = v16;
    }

    goto LABEL_32;
  }

  if (v14)
  {
    v15 = *a2;
    goto LABEL_30;
  }

LABEL_32:
  if (v12 == 1)
  {
    v18 = result;
    (*(v3 + 32))();
    result = v18;
    v18[v4] = 1;
  }

  else if (v12)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v17 = result;
    (*(v3 + 32))();
    result = v17;
    v17[v4] = 0;
  }

  return result;
}

uint64_t sub_1001A7188(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
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
      if (v10 >= 3)
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

  return (v4 | v9) + 254;
}

void sub_1001A7294(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
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

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
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

uint64_t sub_1001A7440(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = *(*(*(a2 + 16) - 8) + 64);
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    LODWORD(v3) = v6 + 2;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void sub_1001A74D4(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t sub_1001A75A0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1001A7630(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 > 7 || (v5 + 1) > 0x18 || (*(v4 + 80) & 0x100000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));

    return v3;
  }

  v11 = a2[v5];
  v12 = v11 - 3;
  if (v11 >= 3)
  {
    if (v5 <= 3)
    {
      v13 = *(v4 + 64);
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_24;
      }

      v14 = *a2;
    }

    else if (v13 == 2)
    {
      v14 = *a2;
    }

    else if (v13 == 3)
    {
      v14 = *a2 | (a2[2] << 16);
    }

    else
    {
      v14 = *a2;
    }

    v15 = (v14 | (v12 << (8 * v5))) + 3;
    v11 = v14 + 3;
    if (v5 < 4)
    {
      v11 = v15;
    }
  }

LABEL_24:
  switch(v11)
  {
    case 2u:
      (*(v4 + 16))(__dst);
      *(v3 + v5) = 2;
      return v3;
    case 1u:
      (*(v4 + 16))(__dst);
      *(v3 + v5) = 1;
      return v3;
    case 0u:
      (*(v4 + 16))(__dst);
      *(v3 + v5) = 0;
      return v3;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_1001A77DC(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = result[v2];
  v4 = v3 - 3;
  if (v3 < 3)
  {
    goto LABEL_15;
  }

  if (v2 <= 3)
  {
    v5 = *(*(*(a2 + 16) - 8) + 64);
  }

  else
  {
    v5 = 4;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = *result;
  }

  else if (v5 == 2)
  {
    v6 = *result;
  }

  else if (v5 == 3)
  {
    v6 = *result | (result[2] << 16);
  }

  else
  {
    v6 = *result;
  }

  v7 = (v6 | (v4 << (8 * v2))) + 3;
  v3 = v6 + 3;
  if (v2 < 4)
  {
    v3 = v7;
  }

LABEL_15:
  if (v3 <= 2)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

_BYTE *sub_1001A78B4(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = a2[v5];
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v5 <= 3)
    {
      v8 = *(v4 + 64);
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_15;
      }

      v9 = *a2;
    }

    else if (v8 == 2)
    {
      v9 = *a2;
    }

    else if (v8 == 3)
    {
      v9 = *a2 | (a2[2] << 16);
    }

    else
    {
      v9 = *a2;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 3;
    v6 = v9 + 3;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_15:
  switch(v6)
  {
    case 2u:
      (*(v4 + 16))(__dst);
      v11 = 2;
      goto LABEL_21;
    case 1u:
      (*(v4 + 16))(__dst);
      v11 = 1;
LABEL_21:
      __dst[v5] = v11;
      return __dst;
    case 0u:
      (*(v4 + 16))(__dst);
      __dst[v5] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_1001A7A20(unsigned __int8 *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (__dst == a2)
  {
    return __dst;
  }

  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = 8 * v5;
  v7 = __dst[v5];
  v8 = v7 - 3;
  if (v7 >= 3)
  {
    if (v5 <= 3)
    {
      v9 = *(v4 + 64);
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_16;
      }

      v10 = *__dst;
    }

    else if (v9 == 2)
    {
      v10 = *__dst;
    }

    else if (v9 == 3)
    {
      v10 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v10 = *__dst;
    }

    v11 = (v10 | (v8 << v6)) + 3;
    v7 = v10 + 3;
    if (v5 < 4)
    {
      v7 = v11;
    }
  }

LABEL_16:
  if (v7 <= 2)
  {
    v12 = a2;
    (*(v4 + 8))(__dst, *(a3 + 16));
    a2 = v12;
  }

  v13 = a2[v5];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v5 <= 3)
    {
      v15 = v5;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_32;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << v6)) + 3;
    v13 = v16 + 3;
    if (v5 < 4)
    {
      v13 = v17;
    }
  }

LABEL_32:
  switch(v13)
  {
    case 2u:
      (*(v4 + 16))(__dst);
      v18 = 2;
      goto LABEL_38;
    case 1u:
      (*(v4 + 16))(__dst);
      v18 = 1;
LABEL_38:
      __dst[v5] = v18;
      return __dst;
    case 0u:
      (*(v4 + 16))(__dst);
      __dst[v5] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

_BYTE *sub_1001A7C54(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = a2[v5];
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v5 <= 3)
    {
      v8 = *(v4 + 64);
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_15;
      }

      v9 = *a2;
    }

    else if (v8 == 2)
    {
      v9 = *a2;
    }

    else if (v8 == 3)
    {
      v9 = *a2 | (a2[2] << 16);
    }

    else
    {
      v9 = *a2;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 3;
    v6 = v9 + 3;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_15:
  switch(v6)
  {
    case 2u:
      (*(v4 + 32))(__dst);
      v11 = 2;
      goto LABEL_21;
    case 1u:
      (*(v4 + 32))(__dst);
      v11 = 1;
LABEL_21:
      __dst[v5] = v11;
      return __dst;
    case 0u:
      (*(v4 + 32))(__dst);
      __dst[v5] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_1001A7DC0(unsigned __int8 *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (__dst == a2)
  {
    return __dst;
  }

  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = 8 * v5;
  v7 = __dst[v5];
  v8 = v7 - 3;
  if (v7 >= 3)
  {
    if (v5 <= 3)
    {
      v9 = *(v4 + 64);
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_16;
      }

      v10 = *__dst;
    }

    else if (v9 == 2)
    {
      v10 = *__dst;
    }

    else if (v9 == 3)
    {
      v10 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v10 = *__dst;
    }

    v11 = (v10 | (v8 << v6)) + 3;
    v7 = v10 + 3;
    if (v5 < 4)
    {
      v7 = v11;
    }
  }

LABEL_16:
  if (v7 <= 2)
  {
    v12 = a2;
    (*(v4 + 8))(__dst, *(a3 + 16));
    a2 = v12;
  }

  v13 = a2[v5];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v5 <= 3)
    {
      v15 = v5;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_32;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << v6)) + 3;
    v13 = v16 + 3;
    if (v5 < 4)
    {
      v13 = v17;
    }
  }

LABEL_32:
  switch(v13)
  {
    case 2u:
      (*(v4 + 32))(__dst);
      v18 = 2;
      goto LABEL_38;
    case 1u:
      (*(v4 + 32))(__dst);
      v18 = 1;
LABEL_38:
      __dst[v5] = v18;
      return __dst;
    case 0u:
      (*(v4 + 32))(__dst);
      __dst[v5] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

uint64_t sub_1001A7FF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = 252 - (1u >> (8 * v3));
  if (v3 >= 4)
  {
    v4 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v4 >= a2)
  {
    goto LABEL_25;
  }

  v5 = v3 + 1;
  v6 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v9 = ((~(-1 << v6) + a2 - v4) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v3);
      if (v4 <= (v11 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v11);
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return v4 + (v5 | v10) + 1;
}