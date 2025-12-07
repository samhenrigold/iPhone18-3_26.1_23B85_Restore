uint64_t sub_100264B34@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _TtC7remindd19RDXPCStorePerformer *a4@<X3>, unint64_t *a5@<X4>, _TtC7remindd19RDXPCStorePerformer *a6@<X5>, uint64_t a7@<X8>)
{
  v136 = a6;
  v137 = a5;
  v138 = a4;
  v141 = a7;
  v145 = sub_1000F5104(&unk_1009430F0, qword_10079DC40);
  v143 = *(v145 - 8);
  __chkstk_darwin(v145, v10);
  v140 = &v133[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12, v13);
  v139 = &v133[-v14];
  v15 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v135 = *(v15 - 8);
  __chkstk_darwin(v15, v16);
  v18 = &v133[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v20 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v21);
  v23 = &v133[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v142 = *a1;
  v24 = sub_1002652D0(a2);
  v26 = v25;
  (*(v20 + 16))(v23, a3, Subtasks);
  v28 = *(v20 + 88);
  v27 = (v20 + 88);
  v29 = v28(v23, Subtasks);
  if (v29 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:))
  {
    v30 = v142;
    goto LABEL_51;
  }

  if (v29 != enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
  {
    v66 = v144;
    v30 = v142;
    if (v29 != enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_13;
    }

    goto LABEL_51;
  }

  v30 = v142;
  v31 = [v142 remObjectID];
  if (!v31)
  {
LABEL_51:
    v146 = v30;
    type metadata accessor for REMCDSavedReminder();
    v130 = v30;
    v131 = v141;
    REMSortableElement.init(element:sortIndex:)();
    return (*(v143 + 56))(v131, 0, 1, v145);
  }

  v32 = v31;
  v134 = v26;
  isa = v138->super.isa;
  if (!*(v138->super.isa + 2) || (v34 = sub_10002B924(v31), (v35 & 1) == 0))
  {

    goto LABEL_51;
  }

  v36 = *(*(isa + 7) + 8 * v34);
  __chkstk_darwin(v34, v35);
  *&v133[-16] = a2;

  v138 = v36;
  v37 = v144;
  v38 = sub_1003DEEBC(sub_10026AE24, &v133[-32], v36);

  v39 = v32;
  v40 = v137;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v40;
  *v40 = 0x8000000000000000;
  sub_1002C8D7C(v38, v39, isUniquelyReferenced_nonNull_native);

  *v40 = v146;
  if ((v134 & 1) == 0)
  {
    v38, v42, v43, v44, v45, v46, v47, v48;
    v138, v79, v80, v81, v82, v83, v84, v85;

    goto LABEL_51;
  }

  v49 = v138;
  v50 = v135;
  (*(v135 + 16))(v18, v136, v15);
  v51 = (*(v50 + 88))(v18, v15);
  if (v51 == enum case for REMRemindersListDataView.SortingDirection.ascending(_:))
  {
    v49, v52, v53, v54, v55, v56, v57, v58;
    a3 = *v38->clientIdentity;
    if (a3)
    {
      v136 = v38;
      v137 = v39;
      v144 = v37;
      v140 = *(v143 + 16);
      v15 = v38 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
      v138 = *(v143 + 72);
      v27 = (v143 + 8);
      v18 = &_swiftEmptyArrayStorage;
      do
      {
        v74 = v139;
        v75 = v145;
        (v140)(v139, v15, v145);
        v24 = REMSortableElement.sortIndex.getter();
        v77 = v76;
        (*v27)(v74, v75);
        if ((v77 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_100366E3C(0, *v18->clientIdentity + 1, 1, v18, v70, v71, v72, v73);
          }

          v30 = *v18->clientIdentity;
          v78 = *&v18->clientIdentity[8];
          v66 = (v30 + 1);
          if (v30 >= v78 >> 1)
          {
            v18 = sub_100366E3C((v78 > 1), v30 + 1, 1, v18, v70, v71, v72, v73);
          }

LABEL_13:
          *v18->clientIdentity = v66;
          *&v18->clientIdentity[8 * v30 + 16] = v24;
        }

        v15 += v138;
        --a3;
      }

      while (a3);
      v136, v67, v68, v69, v70, v71, v72, v73;
      v30 = v142;
      v39 = v137;
    }

    else
    {
      v38, v59, v60, v61, v62, v63, v64, v65;
      v18 = &_swiftEmptyArrayStorage;
    }

    v118 = *v18->clientIdentity;
    if (v118)
    {
      v119 = *&v18->clientIdentity[16];
      v120 = v118 - 1;
      if (v120)
      {
        v121 = &v18->clientIdentity[24];
        do
        {
          v122 = *v121++;
          v123 = v122;
          if (v122 < v119)
          {
            v119 = v123;
          }

          --v120;
        }

        while (v120);
      }
    }

    goto LABEL_50;
  }

  if (v51 == enum case for REMRemindersListDataView.SortingDirection.descending(_:))
  {
    v49, v52, v53, v54, v55, v56, v57, v58;
    v93 = *v38->clientIdentity;
    if (v93)
    {
      v136 = v38;
      v137 = v39;
      v144 = v37;
      v94 = *(v143 + 16);
      v95 = v38 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
      v138 = *(v143 + 72);
      v139 = v94;
      v96 = (v143 + 8);
      v18 = &_swiftEmptyArrayStorage;
      do
      {
        v97 = v140;
        v98 = v145;
        (v139)(v140, v95, v145);
        v99 = REMSortableElement.sortIndex.getter();
        v101 = v100;
        (*v96)(v97, v98);
        if ((v101 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_100366E3C(0, *v18->clientIdentity + 1, 1, v18, v105, v106, v107, v108);
          }

          v110 = *v18->clientIdentity;
          v109 = *&v18->clientIdentity[8];
          if (v110 >= v109 >> 1)
          {
            v18 = sub_100366E3C((v109 > 1), v110 + 1, 1, v18, v105, v106, v107, v108);
          }

          *v18->clientIdentity = v110 + 1;
          *&v18->clientIdentity[8 * v110 + 16] = v99;
        }

        v95 = v138 + v95;
        --v93;
      }

      while (v93);
      v136, v102, v103, v104, v105, v106, v107, v108;
      v30 = v142;
      v39 = v137;
    }

    else
    {
      v38, v86, v87, v88, v89, v90, v91, v92;
      v18 = &_swiftEmptyArrayStorage;
    }

    v124 = *v18->clientIdentity;
    if (v124)
    {
      v125 = *&v18->clientIdentity[16];
      v126 = v124 - 1;
      if (v126)
      {
        v127 = &v18->clientIdentity[24];
        do
        {
          v128 = *v127++;
          v129 = v128;
          if (v125 < v128)
          {
            v125 = v129;
          }

          --v126;
        }

        while (v126);
      }
    }

LABEL_50:
    v18, v111, v112, v113, v114, v115, v116, v117;

    goto LABEL_51;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002652D0(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v33 - v14;
  v16 = _s9UtilitiesO12SortingStyleOMa(0);
  v18 = __chkstk_darwin(v16, v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A4ED8(a1, v20, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v23 = 0.0;
    if ((EnumCaseMultiPayload - 2) >= 3)
    {
      return *&v23;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    v27 = [v1 priority];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 shortValue];

      v22.n128_f64[0] = (10 - v29);
      if (v29 >= 1)
      {
        v23 = (10 - v29);
      }

      else
      {
        v23 = 0.0;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v24 = [v1 displayDateDate];
    if (v24)
    {
      v25 = v24;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    (*(v4 + 56))(v11, v26, 1, v3);
    sub_10012F7FC(v11, v15);
    if (!(*(v4 + 48))(v15, 1, v3))
    {
      (*(v4 + 16))(v7, v15, v3);
      sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
      Date.timeIntervalSinceReferenceDate.getter();
      v31 = v30;
      (*(v4 + 8))(v7, v3);
      v23 = v31;
      goto LABEL_16;
    }

    sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
  }

  v23 = 0.0;
LABEL_16:
  sub_1001EB4C4(v20, v22);
  return *&v23;
}

uint64_t sub_100265608@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_1002652D0(a2);
  type metadata accessor for REMCDSavedReminder();
  REMSortableElement.init(element:sortIndex:)();
  v6 = sub_1000F5104(&unk_1009430F0, qword_10079DC40);
  return (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
}

uint64_t sub_1002656D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_100265718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

void sub_10026575C(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, void (**a4)(char *, char *, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v75 = a4;
  v71 = a3;
  v72 = a2;
  v77 = a1;
  v6 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v76 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v81 = v70 - v12;
  v13 = sub_1000F5104(&unk_1009430F0, qword_10079DC40);
  v80 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v16 = v70 - v15;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v18 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v19);
  v21 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMSortableElement.element.getter();
  v22 = v82;
  v78 = [v82 remObjectID];
  if (!v78)
  {
    (*(v7 + 56))(a5, 1, 1, v6);

    return;
  }

  v79 = v7;
  v74 = a5;
  (*(v18 + 16))(v21, v77, Subtasks);
  v23 = (*(v18 + 88))(v21, Subtasks);
  v73 = v22;
  if (v23 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:))
  {
    v24 = v74;
    v26 = v78;
    v25 = v79;
    goto LABEL_25;
  }

  v26 = v78;
  if (v23 == enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
  {
    v27 = *v72;
    if (*(*v72 + 16))
    {
      v28 = sub_10002B924(v78);
      if (v29)
      {
        v77 = v6;
        v30 = *(*(v27 + 56) + 8 * v28);
        v31 = *(v30 + 16);
        sub_10000CB48(&qword_10093F3A0, &unk_1009430F0, qword_10079DC40, &protocol conformance descriptor for REMSortableElement<A>);

        v32 = Array<A>.sorted(by:)();
        v30, v33, v34, v35, v36, v37, v38, v39;
        v47 = *(v32 + 16);
        if (v47)
        {
          v70[0] = v32;
          v70[1] = v31;
          v48 = *(v80 + 16);
          v49 = v32 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
          v71 = *(v80 + 72);
          v72 = v48;
          v80 += 16;
          v50 = (v80 - 8);
          v75 = (v79 + 32);
          v51 = &_swiftEmptyArrayStorage;
          (v48)(v16, v49, v13);
          while (1)
          {
            REMSortableElement.element.getter();
            v59 = v82;
            v60 = [v82 remObjectID];
            if (v60)
            {
              v61 = v60;
              REMObjectID.codable.getter();
              v62 = v76;
              REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtasks:)();

              (*v50)(v16, v13);
              v63 = *v75;
              (*v75)(v81, v62, v77);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v51 = sub_100365A24(0, *v51->clientIdentity + 1, 1, v51);
              }

              v65 = *v51->clientIdentity;
              v64 = *&v51->clientIdentity[8];
              if (v65 >= v64 >> 1)
              {
                v51 = sub_100365A24((v64 > 1), v65 + 1, 1, v51);
              }

              *v51->clientIdentity = v65 + 1;
              v63(v51 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v65, v81, v77);
            }

            else
            {

              (*v50)(v16, v13);
            }

            v49 += v71;
            if (!--v47)
            {
              break;
            }

            (v72)(v16, v49, v13);
          }

          v70[0], v52, v53, v54, v55, v56, v57, v58;
          v25 = v79;
          v67 = v77;
          v26 = v78;
          v24 = v74;
        }

        else
        {
          v32, v40, v41, v42, v43, v44, v45, v46;
          v67 = v77;
          v24 = v74;
          v25 = v79;
        }

        goto LABEL_29;
      }
    }

    v24 = v74;
    v25 = v79;
LABEL_25:
    v67 = v6;
LABEL_29:
    REMObjectID.codable.getter();
    REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtaskCount:subtasks:)();

    (*(v25 + 56))(v24, 0, 1, v67);
    return;
  }

  if (v23 == enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
  {
    v24 = v74;
    v66 = *v75;
    v25 = v79;
    v67 = v6;
    if (*(*v75 + 2))
    {
      v68 = sub_10002B924(v78);
      if (v69)
      {
        if (*(*(v66 + 7) + 8 * v68) >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }
      }
    }

    goto LABEL_29;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_100265DA8()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  *(v0 + 32) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 40) = result;
  qword_10093F368 = v0;
  return result;
}

uint64_t sub_100265E1C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  result = swift_getKeyPath();
  *(v0 + 32) = result;
  qword_10093F370 = v0;
  return result;
}

void sub_100265E80(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_100265EE8(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTitle:?];
}

uint64_t sub_100265F58@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 creationDate];
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

  return v7(a2, v5, 1, v6);
}

void sub_100265FFC(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreationDate:isa];
}

uint64_t sub_100266138(uint64_t *a1, void *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10043653C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1002661BC(v8, a2);
  return specialized ContiguousArray._endMutation()();
}

void sub_1002661BC(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v9 = v5;
      v10 = v4 / 2;
      if (v4 <= 1)
      {
        v11 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for REMCDSavedReminder();
        v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFF8;
      v21[0] = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
      v21[1] = v10;
      v13 = v11;
      sub_100156F08(v21, v22, a1, v9, a2, v6, v7, v8);
      *(v12 + 16) = 0;
      v13, v14, v15, v16, v17, v18, v19, v20;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_100156D68(0, v4, 1, a1, a2);
  }
}

uint64_t (*sub_1002662CC(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for UUID();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_100267290(v5);
  v5[12] = sub_100266840(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_100266408;
}

uint64_t (*sub_10026640C(uint64_t *a1, uint64_t a2))()
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
  v5[8] = sub_1002672C4(v5);
  v5[9] = sub_100266A1C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10026AE88;
}

uint64_t (*sub_1002664B0(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1002672C4(v7);
  v7[9] = sub_100266C24(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10026AE88;
}

uint64_t (*sub_10026655C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1002672C4(v7);
  v7[9] = sub_100266DA8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100266608;
}

void sub_10026660C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_10026666C(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for UUID();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_1002672C4(v5);
  v5[12] = sub_100266FCC(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_10026AE8C;
}

void sub_1002667A8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_100266840(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for UUID();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_100363F20(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1003731E8();
      v14 = v22;
      goto LABEL_14;
    }

    sub_10036A238(v19, a3 & 1);
    v14 = sub_100363F20(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_1002669F0;
}

void (*sub_100266A1C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
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
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_10002B924(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
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
      sub_100373A14();
      v11 = v19;
      goto LABEL_11;
    }

    sub_10036AF5C(v16, a3 & 1);
    v11 = sub_10002B924(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_100266B74;
}

void sub_100266B74(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v6 = v1[1];
      sub_1002CB2F8(v4, v6, v2, v5);
      v7 = v6;
    }
  }

  else if ((*a1)[4])
  {

    sub_10006713C();
  }

  v8 = *v1;

  v8, v9, v10, v11, v12, v13, v14, v15;

  free(v1);
}

void (*sub_100266C24(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100005F4C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10037443C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10036C5F8(v18, a4 & 1);
    v13 = sub_100005F4C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100266D7C;
}

void (*sub_100266DA8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100005F4C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100374478();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10036C620(v18, a4 & 1);
    v13 = sub_100005F4C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100266D7C;
}

void sub_100266F00(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    sub_100034610(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  v12 = *v4;

  v12, v13, v14, v15, v16, v17, v18, v19;

  free(v4);
}

void (*sub_100266FCC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for UUID();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_100363F20(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1003769E8();
      v14 = v22;
      goto LABEL_14;
    }

    sub_100370B40(v19, a3 & 1);
    v14 = sub_100363F20(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_1002669F0;
}

void sub_10026717C(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  if (v5)
  {
    v6 = *v4[2];
    v7 = v4[6];
    if ((*a1)[7])
    {
      *(*(v6 + 56) + 8 * v7) = v5;
    }

    else
    {
      v11 = v4[5];
      (*(v4[4] + 16))(v11, v4[1], v4[3], a4);
      a3(v7, v11, v5, v6);
    }
  }

  else if ((*a1)[7])
  {
    v8 = v4[6];
    v9 = *v4[2];
    (*(v4[4] + 8))(*(v9 + 48) + *(v4[4] + 72) * v8, v4[3], a3);
    a4(v8, v9);
  }

  v13 = v4[5];
  v14 = *v4;

  v14, v15, v16, v17, v18, v19, v20, v21;
  free(v13);

  free(v4);
}

uint64_t (*sub_100267290(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1002672B8;
}

uint64_t (*sub_1002672C4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10026AE4C;
}

unint64_t sub_1002672EC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v13 = sub_10038DB28(&_swiftEmptyArrayStorage);
  if (a3 >> 62)
  {
    goto LABEL_73;
  }

  v119 = a3 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v120 = a3 & 0xC000000000000001;
    v118 = a3;
    if (i)
    {
      v15 = 0;
      v115 = a2;
      v116 = a2 & 0xC000000000000001;
      v113 = a1;
      while (1)
      {
        a2 = v15;
        while (1)
        {
          if (v120)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a2 >= *(v119 + 16))
            {
              goto LABEL_68;
            }

            v17 = *(a3 + 8 * a2 + 32);
          }

          v18 = v17;
          v15 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v19 = [v17 remObjectID];
          if (v19)
          {
            break;
          }

          v16 = v18;
LABEL_7:

          ++a2;
          if (v15 == i)
          {
            a1 = v113;
            goto LABEL_29;
          }
        }

        v16 = v19;
        v20 = i;
        if (v116)
        {
          break;
        }

        if (!*(v115 + 16))
        {
          goto LABEL_20;
        }

        a1 = v115;
        v23 = sub_10002B924(v19);
        if ((v24 & 1) == 0)
        {
          goto LABEL_20;
        }

        v22 = *(*(v115 + 56) + 8 * v23);

        if (!v22)
        {
          goto LABEL_20;
        }

LABEL_22:
        if (*(v22 + 24))
        {
          v25 = *(v22 + 16);
          v26 = *(v22 + 24);
        }

        else
        {
          v27._countAndFlagsBits = UUID.uuidString.getter();
          object = v27._object;
          v121 = 0x7C6C61636F6CLL;
          v122 = 0xE600000000000000;
          String.append(_:)(v27);
          object, v29, v30, v31, v32, v33, v34, v35;
          v25 = v121;
          v26 = v122;
        }

        v36 = v18;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v13;
        v38 = v36;
        sub_1002C7024(v36, v25, v26, isUniquelyReferenced_nonNull_native);
        v26, v39, v40, v41, v42, v43, v44, v45;
        v46 = v121;
        v47._countAndFlagsBits = UUID.uuidString.getter();
        v48 = v47._object;
        v121 = 0x7C6C61636F6CLL;
        v122 = 0xE600000000000000;
        String.append(_:)(v47);
        v48, v49, v50, v51, v52, v53, v54, v55;
        a2 = v121;
        v56 = v122;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v121 = v46;
        sub_1002C7024(v38, a2, v56, v57);

        v56, v58, v59, v60, v61, v62, v63, v64;
        v13 = v121;
        i = v20;
        v65 = v15 == v20;
        a1 = v113;
        a3 = v118;
        if (v65)
        {
          goto LABEL_29;
        }
      }

      v21 = v19;
      a1 = __CocoaDictionary.lookup(_:)();

      if (a1)
      {
        type metadata accessor for RDElementManualSortID(0);
        swift_dynamicCast();
        v22 = v121;
        if (v121)
        {
          goto LABEL_22;
        }
      }

LABEL_20:

      i = v20;
      a3 = v118;
      goto LABEL_7;
    }

LABEL_29:
    v114 = i;
    v66 = &_swiftEmptyArrayStorage;
    v121 = &_swiftEmptyArrayStorage;
    a3 = *(a1 + 16);
    if (!a3)
    {
      break;
    }

    v67 = 0;
    v68 = a1 + 40;
    v112 = &_swiftEmptyArrayStorage;
LABEL_31:
    v69 = (v68 + 16 * v67);
    v70 = v67;
    while (v70 < a3)
    {
      v67 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_70;
      }

      if (*(v13 + 16))
      {
        v71 = *(v69 - 1);
        a2 = *v69;

        v72 = v71;
        a1 = v13;
        v73 = sub_100005F4C(v72, a2);
        if (v74)
        {
          v81 = *(*(v13 + 56) + 8 * v73);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          a1 = &v121;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v112 = v121;
          a2, v82, v83, v84, v85, v86, v87, v88;
          v66 = &_swiftEmptyArrayStorage;
          if (v67 != a3)
          {
            goto LABEL_31;
          }

          goto LABEL_44;
        }

        a2, v74, v75, v76, v77, v78, v79, v80;
      }

      ++v70;
      v69 += 2;
      if (v67 == a3)
      {
        v66 = &_swiftEmptyArrayStorage;
        goto LABEL_44;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    v119 = a3 & 0xFFFFFFFFFFFFFF8;
  }

  v112 = &_swiftEmptyArrayStorage;
LABEL_44:
  v13, v6, v7, v8, v9, v10, v11, v12;
  v121 = v112;
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CB48(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0, &protocol conformance descriptor for [A]);
  sub_10018BA8C();
  a1 = &v121;
  v89 = Sequence.compactMapToSet<A>(_:)();
  v13 = v89;
  v121 = &_swiftEmptyArrayStorage;
  v97 = v114;
  if (v114)
  {
    a2 = 0;
    a3 = v119;
    v98 = v118 + 32;
    v117 = v89 & 0xC000000000000001;
    v99 = v89 + 56;
    while (1)
    {
      if (v120)
      {
        v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *(a3 + 16))
        {
          goto LABEL_72;
        }

        v100 = *(v98 + 8 * a2);
      }

      v101 = v100;
      if (__OFADD__(a2++, 1))
      {
        goto LABEL_71;
      }

      v103 = [v100 remObjectID];
      if (v103)
      {
        v104 = v103;
        if (!v117)
        {
          if (*(v13 + 16))
          {
            v106 = NSObject._rawHashValue(seed:)(*(v13 + 40));
            v107 = -1 << *(v13 + 32);
            v108 = v106 & ~v107;
            if ((*(v99 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
            {
              v109 = ~v107;
              while (1)
              {
                v110 = *(*(v13 + 48) + 8 * v108);
                a1 = static NSObject.== infix(_:_:)();

                if (a1)
                {
                  break;
                }

                v108 = (v108 + 1) & v109;
                if (((*(v99 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) == 0)
                {
                  goto LABEL_61;
                }
              }

              a3 = v119;
              v98 = v118 + 32;
              v97 = v114;
              goto LABEL_47;
            }
          }

LABEL_61:

          a3 = v119;
          v98 = v118 + 32;
          v97 = v114;
LABEL_62:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a1 = &v121;
          specialized ContiguousArray._endMutation()();
          goto LABEL_47;
        }

        a1 = v103;
        v105 = __CocoaSet.contains(_:)();

        if ((v105 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

LABEL_47:
      if (a2 == v97)
      {
        v66 = v121;
        break;
      }
    }
  }

  v13, v90, v91, v92, v93, v94, v95, v96;
  v121 = v112;
  sub_100271930(v66);
  return v121;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002679C8(uint64_t a1, __n128 a2)
{
  v3 = _s9UtilitiesO12SortingStyleOMa(0);
  v5 = __chkstk_darwin(v3, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A4ED8(a1, v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      goto LABEL_9;
    }

    sub_1001EB4C4(v7, v9);
    return &_swiftEmptyArrayStorage;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_9:
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007953F0;
    *(v10 + 32) = swift_getKeyPath();
    sub_1001EB4C4(v7, v11);
    return v10;
  }

  if (EnumCaseMultiPayload != 4)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1001EB4C4(v7, v9);
  if (qword_100936818 != -1)
  {
    swift_once();
  }

  v10 = qword_100975368;

  return v10;
}

uint64_t sub_100267BA0(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v24 - v9;
  v11 = _s9UtilitiesO12SortingStyleOMa(0);
  v13 = __chkstk_darwin(v11, v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A4ED8(a1, v15, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0x1B) != 0)
  {
    sub_1001EB4C4(v15, v17);
LABEL_3:
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1007953F0;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    v19 = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
    result = v18;
    *(v18 + 32) = v19;
    return result;
  }

  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_3;
  }

  (*(v3 + 32))(v10, v15, v2);
  (*(v3 + 16))(v6, v10, v2);
  v21 = (*(v3 + 88))(v6, v2);
  if (v21 == enum case for REMRemindersListDataView.SortingDirection.ascending(_:) || v21 == enum case for REMRemindersListDataView.SortingDirection.descending(_:))
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007953F0;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    *(v23 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
    (*(v3 + 8))(v10, v2);
    return v23;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100267E88(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v13 = sub_10038E740(&_swiftEmptyArrayStorage);
  if (a3 >> 62)
  {
    goto LABEL_73;
  }

  v119 = a3 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v120 = a3 & 0xC000000000000001;
    v118 = a3;
    if (i)
    {
      v15 = 0;
      v115 = a2;
      v116 = a2 & 0xC000000000000001;
      v113 = a1;
      while (1)
      {
        a2 = v15;
        while (1)
        {
          if (v120)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a2 >= *(v119 + 16))
            {
              goto LABEL_68;
            }

            v17 = *(a3 + 8 * a2 + 32);
          }

          v18 = v17;
          v15 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v19 = [v17 remObjectID];
          if (v19)
          {
            break;
          }

          v16 = v18;
LABEL_7:

          ++a2;
          if (v15 == i)
          {
            a1 = v113;
            goto LABEL_29;
          }
        }

        v16 = v19;
        v20 = i;
        if (v116)
        {
          break;
        }

        if (!*(v115 + 16))
        {
          goto LABEL_20;
        }

        a1 = v115;
        v23 = sub_10002B924(v19);
        if ((v24 & 1) == 0)
        {
          goto LABEL_20;
        }

        v22 = *(*(v115 + 56) + 8 * v23);

        if (!v22)
        {
          goto LABEL_20;
        }

LABEL_22:
        if (*(v22 + 24))
        {
          v25 = *(v22 + 16);
          v26 = *(v22 + 24);
        }

        else
        {
          v27._countAndFlagsBits = UUID.uuidString.getter();
          object = v27._object;
          v121 = 0x7C6C61636F6CLL;
          v122 = 0xE600000000000000;
          String.append(_:)(v27);
          object, v29, v30, v31, v32, v33, v34, v35;
          v25 = v121;
          v26 = v122;
        }

        v36 = v18;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v13;
        v38 = v36;
        sub_1002C7794(v36, v25, v26, isUniquelyReferenced_nonNull_native);
        v26, v39, v40, v41, v42, v43, v44, v45;
        v46 = v121;
        v47._countAndFlagsBits = UUID.uuidString.getter();
        v48 = v47._object;
        v121 = 0x7C6C61636F6CLL;
        v122 = 0xE600000000000000;
        String.append(_:)(v47);
        v48, v49, v50, v51, v52, v53, v54, v55;
        a2 = v121;
        v56 = v122;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v121 = v46;
        sub_1002C7794(v38, a2, v56, v57);

        v56, v58, v59, v60, v61, v62, v63, v64;
        v13 = v121;
        i = v20;
        v65 = v15 == v20;
        a1 = v113;
        a3 = v118;
        if (v65)
        {
          goto LABEL_29;
        }
      }

      v21 = v19;
      a1 = __CocoaDictionary.lookup(_:)();

      if (a1)
      {
        type metadata accessor for RDElementManualSortID(0);
        swift_dynamicCast();
        v22 = v121;
        if (v121)
        {
          goto LABEL_22;
        }
      }

LABEL_20:

      i = v20;
      a3 = v118;
      goto LABEL_7;
    }

LABEL_29:
    v114 = i;
    v66 = &_swiftEmptyArrayStorage;
    v121 = &_swiftEmptyArrayStorage;
    a3 = *(a1 + 16);
    if (!a3)
    {
      break;
    }

    v67 = 0;
    v68 = a1 + 40;
    v112 = &_swiftEmptyArrayStorage;
LABEL_31:
    v69 = (v68 + 16 * v67);
    v70 = v67;
    while (v70 < a3)
    {
      v67 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_70;
      }

      if (*(v13 + 16))
      {
        v71 = *(v69 - 1);
        a2 = *v69;

        v72 = v71;
        a1 = v13;
        v73 = sub_100005F4C(v72, a2);
        if (v74)
        {
          v81 = *(*(v13 + 56) + 8 * v73);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          a1 = &v121;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v112 = v121;
          a2, v82, v83, v84, v85, v86, v87, v88;
          v66 = &_swiftEmptyArrayStorage;
          if (v67 != a3)
          {
            goto LABEL_31;
          }

          goto LABEL_44;
        }

        a2, v74, v75, v76, v77, v78, v79, v80;
      }

      ++v70;
      v69 += 2;
      if (v67 == a3)
      {
        v66 = &_swiftEmptyArrayStorage;
        goto LABEL_44;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    v119 = a3 & 0xFFFFFFFFFFFFFF8;
  }

  v112 = &_swiftEmptyArrayStorage;
LABEL_44:
  v13, v6, v7, v8, v9, v10, v11, v12;
  v121 = v112;
  sub_1000F5104(&qword_10093F3A8, qword_1007AC5F0);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CB48(&qword_10093F3B0, &qword_10093F3A8, qword_1007AC5F0, &protocol conformance descriptor for [A]);
  sub_10018BA8C();
  a1 = &v121;
  v89 = Sequence.compactMapToSet<A>(_:)();
  v13 = v89;
  v121 = &_swiftEmptyArrayStorage;
  v97 = v114;
  if (v114)
  {
    a2 = 0;
    a3 = v119;
    v98 = v118 + 32;
    v117 = v89 & 0xC000000000000001;
    v99 = v89 + 56;
    while (1)
    {
      if (v120)
      {
        v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *(a3 + 16))
        {
          goto LABEL_72;
        }

        v100 = *(v98 + 8 * a2);
      }

      v101 = v100;
      if (__OFADD__(a2++, 1))
      {
        goto LABEL_71;
      }

      v103 = [v100 remObjectID];
      if (v103)
      {
        v104 = v103;
        if (!v117)
        {
          if (*(v13 + 16))
          {
            v106 = NSObject._rawHashValue(seed:)(*(v13 + 40));
            v107 = -1 << *(v13 + 32);
            v108 = v106 & ~v107;
            if ((*(v99 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
            {
              v109 = ~v107;
              while (1)
              {
                v110 = *(*(v13 + 48) + 8 * v108);
                a1 = static NSObject.== infix(_:_:)();

                if (a1)
                {
                  break;
                }

                v108 = (v108 + 1) & v109;
                if (((*(v99 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) == 0)
                {
                  goto LABEL_61;
                }
              }

              a3 = v119;
              v98 = v118 + 32;
              v97 = v114;
              goto LABEL_47;
            }
          }

LABEL_61:

          a3 = v119;
          v98 = v118 + 32;
          v97 = v114;
LABEL_62:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a1 = &v121;
          specialized ContiguousArray._endMutation()();
          goto LABEL_47;
        }

        a1 = v103;
        v105 = __CocoaSet.contains(_:)();

        if ((v105 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

LABEL_47:
      if (a2 == v97)
      {
        v66 = v121;
        break;
      }
    }
  }

  v13, v90, v91, v92, v93, v94, v95, v96;
  v121 = v112;
  sub_100272080(v66);
  return v121;
}

_TtC7remindd19RDXPCStorePerformer *sub_100268564(unint64_t isUniquelyReferenced_nonNull_native, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v560 = a4;
  v554 = a3;
  v548 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v547 = *(v548 - 8);
  __chkstk_darwin(v548, v8);
  v545 = &v529 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v544 = &v529 - v12;
  v564 = type metadata accessor for UUID();
  v546 = *(v564 - 8);
  __chkstk_darwin(v564, v13);
  v535 = &v529 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v563 = &v529 - v17;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v18 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v19);
  v542 = &v529 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v529 - v23;
  v556 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v556, v25);
  p_super = (&v529 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28, v29);
  v31 = (&v529 - v30);
  __chkstk_darwin(v32, v33);
  v541 = &v529 - v34;
  __chkstk_darwin(v35, v36);
  v558 = &v529 - v37;
  __chkstk_darwin(v38, v39);
  v550 = &v529 - v40;
  __chkstk_darwin(v41, v42);
  v549 = &v529 - v43;
  __chkstk_darwin(v44, v45);
  v47 = &v529 - v46;
  if (qword_100935D90 != -1)
  {
    goto LABEL_150;
  }

LABEL_2:
  v566 = p_super;
  v551 = a2;
  v581 = qword_10093F368;
  v48 = qword_100935D98;

  if (v48 != -1)
  {
    swift_once();
  }

  v580 = qword_10093F370;

  v49 = v560;
  v51 = sub_1002679C8(v560, v50);
  sub_100272098(v51);
  sub_1001A4ED8(v49, v47, v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 4)
  {
    sub_1001EB4C4(v47, v54);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    sub_1001EB4C4(v47, v54);
    if (qword_100936820 != -1)
    {
      goto LABEL_159;
    }

    goto LABEL_7;
  }

  for (i = &_swiftEmptyArrayStorage; ; i = )
  {
    sub_100272098(i);
    sub_1000F5104(&qword_10093F550, &unk_10079DC30);
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    v56 = *v18->clientIdentity;
    v57 = Subtasks;
    v56(v24, v554, Subtasks);
    v58 = *&v18->contactInteractionWriter[2];
    v543 = &v18->contactInteractionWriter[2];
    v538 = v58;
    v59 = v58(v24, v57);
    if (v59 != enum case for REMRemindersListDataView.FetchSubtasks.off(_:) && v59 != enum case for REMRemindersListDataView.FetchSubtasks.on(_:) && v59 != enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
    {
      goto LABEL_166;
    }

    v539 = v56;
    clientIdentity = v18->clientIdentity;
    v537 = enum case for REMRemindersListDataView.FetchSubtasks.off(_:);
    if (v59 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:))
    {
      v60 = 33;
    }

    else
    {
      v60 = 32;
    }

    v61 = sub_10055BD54(isUniquelyReferenced_nonNull_native, v60);
    v62 = type metadata accessor for REMCDSavedReminder();
    v18 = [objc_allocWithZone(NSFetchRequest) init];
    v557 = v62;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v63 = [ObjCClassFromMetadata entity];
    [(RDXPCStorePerformer *)v18 setEntity:v63];

    [(RDXPCStorePerformer *)v18 setAffectedStores:0];
    [(RDXPCStorePerformer *)v18 setPredicate:v61];

    v64 = v581;
    v534 = v31;
    if (v581 >> 62)
    {
      v523 = v581;
      v524 = _CocoaArrayWrapper.endIndex.getter();
      v64 = v523;
      v47 = v524;
    }

    else
    {
      v47 = *((v581 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = &_swiftEmptyArrayStorage;
    *&v569 = v64;
    v536 = isUniquelyReferenced_nonNull_native;
    v561 = v18;
    if (v47)
    {
      a2 = v64;
      *&v575 = &_swiftEmptyArrayStorage;
      p_super = &v575;
      sub_100010D04(0, v47 & ~(v47 >> 63), 0);
      if ((v47 & 0x8000000000000000) == 0)
      {
        v18 = 0;
        v31 = v575;
        v65 = a2;
        isUniquelyReferenced_nonNull_native = a2 & 0xC000000000000001;
        *&v568 = a2 & 0xFFFFFFFFFFFFFF8;
        v5 = &type metadata for String;
        while (1)
        {
          v4 = &v18->super.isa + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_26;
          }

          if (v18 >= *(v568 + 16))
          {
            break;
          }

          v66 = *(v65 + 8 * v18 + 32);

LABEL_26:
          v67 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v68)
          {
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(46);
            v525._object = 0x80000001007EC120;
            v525._countAndFlagsBits = 0xD00000000000002CLL;
            String.append(_:)(v525);
            v579 = v66;
            goto LABEL_164;
          }

          p_super = v67;
          v69 = v68;
          v572 = &type metadata for String;

          *&aBlock = p_super;
          *(&aBlock + 1) = v69;
          *&v575 = v31;
          v24 = *v31->clientIdentity;
          v70 = *&v31->clientIdentity[8];
          a2 = v24 + 1;
          if (v24 >= v70 >> 1)
          {
            p_super = &v575;
            sub_100010D04((v70 > 1), v24 + 1, 1);
            v31 = v575;
          }

          *v31->clientIdentity = a2;
          sub_100005EE0(&aBlock, &v31->clientIdentity[32 * v24 + 16]);
          v18 = (v18 + 1);
          v65 = v569;
          if (v4 == v47)
          {
            v18 = v561;
            goto LABEL_31;
          }
        }

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
        swift_once();
        goto LABEL_2;
      }

LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

LABEL_31:
    isa = Array._bridgeToObjectiveC()().super.isa;
    v31, v72, v73, v74, v75, v76, v77, v78;
    [(RDXPCStorePerformer *)v18 setPropertiesToFetch:isa];

    v24 = v580;
    if (v580 >> 62)
    {
      v47 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v47 = *((v580 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v568 = v24;
    if (v47)
    {
      *&v575 = &_swiftEmptyArrayStorage;
      p_super = &v575;
      sub_100026EF4(0, v47 & ~(v47 >> 63), 0);
      if ((v47 & 0x8000000000000000) == 0)
      {
        a2 = 0;
        v18 = v575;
        v79 = v24;
        v567 = (v24 & 0xC000000000000001);
        v565 = v24 & 0xFFFFFFFFFFFFFF8;
        v31 = v47;
        while (1)
        {
          v47 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            goto LABEL_141;
          }

          if (v567)
          {
            v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a2 >= *(v565 + 16))
            {
              goto LABEL_146;
            }

            v80 = *(v79 + 8 * a2 + 32);
          }

          p_super = v80;
          v81 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v82)
          {
            break;
          }

          v5 = v81;
          v24 = v82;

          *&v575 = v18;
          v4 = *v18->clientIdentity;
          v83 = *&v18->clientIdentity[8];
          isUniquelyReferenced_nonNull_native = v4 + 1;
          if (v4 >= v83 >> 1)
          {
            p_super = &v575;
            sub_100026EF4((v83 > 1), v4 + 1, 1);
            v18 = v575;
          }

          *v18->clientIdentity = isUniquelyReferenced_nonNull_native;
          v84 = v18 + 16 * v4;
          *(v84 + 4) = v5;
          *(v84 + 5) = v24;
          ++a2;
          v79 = v568;
          if (v47 == v31)
          {
            v24 = v568;
            isUniquelyReferenced_nonNull_native = v558;
            goto LABEL_47;
          }
        }

        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(46);
        v526._object = 0x80000001007EC120;
        v526._countAndFlagsBits = 0xD00000000000002CLL;
        String.append(_:)(v526);
        v579 = v80;
LABEL_164:
        sub_1000F5104(&qword_10093D5C8, &unk_1007A76F0);
        _print_unlocked<A, B>(_:_:)();
        LODWORD(v528) = 0;
        p_aBlock = 19;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_165:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_166;
      }

LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v18 = &_swiftEmptyArrayStorage;
    isUniquelyReferenced_nonNull_native = v558;
LABEL_47:
    v85 = Array._bridgeToObjectiveC()().super.isa;
    v18, v86, v87, v88, v89, v90, v91, v92;
    v93 = v561;
    [(RDXPCStorePerformer *)v561 setRelationshipKeyPathsForPrefetching:v85];

    v94 = sub_100267BA0(v560);
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v95 = Array._bridgeToObjectiveC()().super.isa;
    v94, v96, v97, v98, v99, v100, v101, v102;
    [(RDXPCStorePerformer *)v93 setSortDescriptors:v95];

    v103 = v559;
    v104 = NSManagedObjectContext.fetch<A>(_:)();
    v5 = v103;
    if (v103)
    {
      v569, v105, v106, v107, v108, v109, v110, v111;
      v24, v112, v113, v114, v115, v116, v117, v118;

      return v94;
    }

    v119 = v104;

    v579 = &_swiftEmptyArrayStorage;
    v578 = _swiftEmptyDictionarySingleton;
    v47 = v119 >> 62;
    v24 = v119;
    if (!(v119 >> 62))
    {
      v31 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_51;
    }

LABEL_156:
    v31 = _CocoaArrayWrapper.endIndex.getter();
LABEL_51:
    p_super = &v566->super;
    v121 = v560;
    v122 = v549;
    v557 = v24;
    v530 = v47;
    if (!v31)
    {
      break;
    }

    v567 = (v24 & 0xC000000000000001);
    if ((v24 & 0xC000000000000001) != 0)
    {
      v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_55:
      a2 = v123;
      p_super = [v123 account];

      v531 = v5;
      v533 = p_super;
      if (p_super)
      {
        v532 = [p_super remObjectID];
      }

      else
      {
        v532 = 0;
      }

      v5 = 0;
      v555 = v24 & 0xFFFFFFFFFFFFFF8;
      v561 = (v546 + 8);
      v4 = &_swiftEmptyArrayStorage;
      v553 = xmmword_1007953F0;
      v565 = v31;
      while (2)
      {
        if (v567)
        {
          v133 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v555 + 16))
          {
            goto LABEL_148;
          }

          v133 = *(v24 + 8 * v5 + 32);
        }

        v18 = v133;
        v31 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_147;
        }

        v134 = [(RDXPCStorePerformer *)v133 parentSavedReminderIdentifier];
        if (!v134 || (v135 = v563, v136 = v134, static UUID._unconditionallyBridgeFromObjectiveC(_:)(), v136, v137 = UUID._bridgeToObjectiveC()().super.isa, v47 = [ObjCClassFromMetadata objectIDWithUUID:v137], v137, (v561->super.isa)(v135, v564), !v47))
        {
          a2 = v18;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v579 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v579 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v24 = v557;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v4 = v579;
          goto LABEL_63;
        }

        if (*v578->clientIdentity)
        {
          sub_10002B924(v47);
          if (v138)
          {
            a2 = sub_1002619F4(&aBlock, v47);
            if (*v139)
            {
              v140 = v139;
              v141 = v18;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                isUniquelyReferenced_nonNull_native = v558;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              (a2)(&aBlock, 0);

LABEL_62:
              v24 = v557;
            }

            else
            {
              (a2)(&aBlock, 0);
            }

LABEL_63:
            ++v5;
            p_super = &v566->super;
            if (v31 == v565)
            {
              v5 = v531;
              v121 = v560;
              v122 = v549;
              goto LABEL_95;
            }

            continue;
          }

          v559 = v4;
        }

        else
        {
          v559 = v4;
        }

        break;
      }

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v4 = swift_allocObject();
      *(v4 + 16) = v553;
      *(v4 + 32) = v18;
      v18 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      p_super = &v578->super;
      *&aBlock = v578;
      a2 = sub_10002B924(v47);
      v143 = p_super[2].isa;
      v144 = (v142 & 1) == 0;
      v145 = v143 + v144;
      if (__OFADD__(v143, v144))
      {
        goto LABEL_149;
      }

      v24 = v142;
      if (p_super[3].isa >= v145)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = aBlock;
          if ((v142 & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        else
        {
          sub_100373A14();
          isUniquelyReferenced_nonNull_native = aBlock;
          if ((v24 & 1) == 0)
          {
            goto LABEL_89;
          }
        }
      }

      else
      {
        sub_10036AF5C(v145, isUniquelyReferenced_nonNull_native);
        v146 = sub_10002B924(v47);
        if ((v24 & 1) != (v147 & 1))
        {
          goto LABEL_165;
        }

        a2 = v146;
        isUniquelyReferenced_nonNull_native = aBlock;
        if ((v24 & 1) == 0)
        {
LABEL_89:
          *(isUniquelyReferenced_nonNull_native + 8 * (a2 >> 6) + 64) |= 1 << a2;
          *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * a2) = v47;
          *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * a2) = v4;

          v148 = *(isUniquelyReferenced_nonNull_native + 16);
          v149 = __OFADD__(v148, 1);
          v150 = v148 + 1;
          if (v149)
          {
            __break(1u);
            goto LABEL_154;
          }

          *(isUniquelyReferenced_nonNull_native + 16) = v150;
          goto LABEL_61;
        }
      }

      v124 = *(isUniquelyReferenced_nonNull_native + 56);
      v125 = *(v124 + 8 * a2);
      *(v124 + 8 * a2) = v4;

      v125, v126, v127, v128, v129, v130, v131, v132;
LABEL_61:
      v578 = isUniquelyReferenced_nonNull_native;
      v4 = v559;
      isUniquelyReferenced_nonNull_native = v558;
      goto LABEL_62;
    }

    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v123 = *(v24 + 32);
      goto LABEL_55;
    }

    __break(1u);
LABEL_159:
    swift_once();
LABEL_7:
    ;
  }

  v532 = 0;
  v533 = 0;
  v4 = &_swiftEmptyArrayStorage;
LABEL_95:
  sub_1001A4ED8(v121, v122, v120);
  v151 = swift_getEnumCaseMultiPayload();
  if (v151 - 2 < 3)
  {
    sub_1001EB4C4(v122, v159);
    goto LABEL_99;
  }

  if (v151 >= 2)
  {
LABEL_99:
    v219 = v560;
    sub_1001A4ED8(v560, v550, v159);
    sub_1001A4ED8(v219, isUniquelyReferenced_nonNull_native, v220);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v569, v221, v222, v223, v224, v225, v226, v227;
      v568, v255, v256, v257, v258, v259, v260, v261;
      sub_1001EB4C4(isUniquelyReferenced_nonNull_native, v262);
      v263 = v219;
      v264 = v541;
      sub_1001A4ED8(v263, v541, v265);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v557, v266, v267, v268, v269, v270, v271, v272;
        sub_1001EB4C4(v264, v328);
        goto LABEL_114;
      }

      sub_1001EB4C4(v264, v273);
      v274 = v532;
      if (v532)
      {
        v275 = v532;
        v557, v276, v277, v278, v279, v280, v281, v282;
        v283 = [v536 uuid];
        v284 = v535;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v285 = UUID.uuidString.getter();
        v287 = v286;
        (*(v546 + 8))(v284, v564);
        v577 = 0;
        v575 = 0u;
        v576 = 0u;
        v288 = swift_allocObject();
        *(v288 + 16) = 6;
        *(v288 + 24) = v285;
        *(v288 + 32) = v287;
        v289 = v551;
        *(v288 + 40) = v275;
        *(v288 + 48) = v289;
        *(v288 + 56) = &v575;
        v290 = swift_allocObject();
        *(v290 + 16) = sub_10026A4B4;
        *(v290 + 24) = v288;
        v573 = sub_1000529DC;
        v574 = v290;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v571 = sub_10000F160;
        v572 = &unk_1008EBF78;
        v291 = _Block_copy(&aBlock);
        v292 = v275;
        v293 = v289;

        [v293 performBlockAndWait:v291];
        _Block_release(v291);
        LOBYTE(v293) = swift_isEscapingClosureAtFileLocation();

        if (v293)
        {
          __break(1u);
          goto LABEL_161;
        }

        v294 = v577;
        v569 = v575;
        v568 = v576;

        v295 = v550;
        sub_1001EB4C4(v550, v296);
        v297 = v568;
        *v295 = v569;
        *(v295 + 16) = v297;
        *(v295 + 32) = v294;
        *(v295 + 40) = v274;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        if (qword_100935D88 != -1)
        {
          swift_once();
        }

        v410 = type metadata accessor for Logger();
        sub_100006654(v410, qword_10093F350);
        v411 = v536;
        v31 = v536;

        p_super = Logger.logObject.getter();
        LOBYTE(v47) = static os_log_type_t.error.getter();

        if (os_log_type_enabled(p_super, v47))
        {
          v24 = swift_slowAlloc();
          isUniquelyReferenced_nonNull_native = swift_slowAlloc();
          *v24 = 138543618;
          *(v24 + 4) = v31;
          *isUniquelyReferenced_nonNull_native = v411;
          *(v24 + 12) = 2048;
          if (v530)
          {
LABEL_142:
            v412 = v557;
            v413 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v412 = v557;
            v413 = *((v557 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v505 = v31;
          v412, v506, v507, v508, v509, v510, v511, v512;
          *(v24 + 14) = v413;
          v412, v513, v514, v515, v516, v517, v518, v519;
          _os_log_impl(&_mh_execute_header, p_super, v47, "[fetchReminderLitesOfTemplate] Could not fetch manual sort hint of .savedReminders without an accountObjectID {listID: %{public}@, cdReminders.count: %ld}", v24, 0x16u);
          sub_1000050A4(isUniquelyReferenced_nonNull_native, &unk_100938E70, &unk_100797230);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v520 = [objc_opt_self() newObjectID];
        v521 = v534;
        *&v534->super.isa = 0u;
        *(v521 + 16) = 0u;
        *(v521 + 32) = 0;
        *(v521 + 40) = v520;
        swift_storeEnumTagMultiPayload();
        sub_10026A450(v521, v550, v522);
      }

LABEL_113:
      p_super = &v566->super;
LABEL_114:
      sub_1001A4ED8(v550, p_super, v298);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v288 = p_super->isa;
        v337 = p_super[1].isa;
        v339 = p_super[2].isa;
        v338 = p_super[3].isa;
        v340 = p_super[4].isa;

        if (v288)
        {
          if (v533)
          {
            v567 = v340;
            *&v569 = v338;
            v559 = v4;
            *&v568 = v533;
            sub_1006B038C();
            v350 = v349;
            v351 = type metadata accessor for RDManualSortIDCache();
            v353 = v351;
            if (qword_100936508 != -1)
            {
              v351 = swift_once();
            }

            __chkstk_darwin(v351, v352);
            *(&v529 - 4) = v353;
            *(&v529 - 3) = v350;
            OS_dispatch_queue.sync<A>(execute:)();
            v354 = aBlock;
            type metadata accessor for RDManualSortIDAdapter();
            swift_allocObject();
            v355 = sub_100214ECC(v354, v350, 0);
            *&aBlock = 0;
            __chkstk_darwin(v355, v356);
            v357 = v551;
            *(&v529 - 4) = v358;
            *(&v529 - 3) = v357;
            p_aBlock = &aBlock;
            NSManagedObjectContext.performAndWait<A>(_:)();
            if (!v5)
            {
              v414 = aBlock;
              if (!aBlock)
              {
                v414 = sub_10038DB14(&_swiftEmptyArrayStorage);
              }

              v414, v359, v360, v361, v362, v363, v364, v365;
              goto LABEL_135;
            }

            v565 = v339;
            v566 = v337;
            aBlock, v359, v360, v361, v362, v363, v364, v365;
            if (qword_100935D88 == -1)
            {
LABEL_121:
              v366 = type metadata accessor for Logger();
              sub_100006654(v366, qword_10093F350);
              swift_errorRetain();
              v367 = Logger.logObject.getter();
              v368 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v367, v368))
              {
                v369 = swift_slowAlloc();
                v370 = swift_slowAlloc();
                *&aBlock = v370;
                *v369 = 136315138;
                swift_getErrorValue();
                v371 = Error.localizedDescription.getter();
                v373 = v372;
                v374 = sub_10000668C(v371, v372, &aBlock);
                v373, v375, v376, v377, v378, v379, v380, v381;
                *(v369 + 4) = v374;
                _os_log_impl(&_mh_execute_header, v367, v368, "[fetchReminderLitesOfTemplate] Failed to fetch signed-in accounts {error: %s}", v369, 0xCu);
                sub_10000607C(v370);
              }

              else
              {
              }

              v337 = v566;
              v339 = v565;
LABEL_135:
              v415 = v569;
              v416 = v559;

              v418 = sub_1001A595C(v417);
              v416, v419, v420, v421, v422, v423, v424, v425;
              sub_100394B34(v418);
              v427 = v426;
              v418, v428, v429, v430, v431, v432, v433, v434;
              sub_1002173A0(v427);
              v436 = v435;
              v427, v437, v438, v439, v440, v441, v442, v443;
              v444 = sub_100267E88(v288, v436, v416);
              v416, v445, v446, v447, v448, v449, v450, v451;
              v567, v452, v453, v454, v455, v456, v457, v458;
              v415, v459, v460, v461, v462, v463, v464, v465;
              v339, v466, v467, v468, v469, v470, v471, v472;
              v337, v473, v474, v475, v476, v477, v478, v479;
              v288, v480, v481, v482, v483, v484, v485, v486;

              v436, v487, v488, v489, v490, v491, v492, v493;
              v4 = v444;
              goto LABEL_136;
            }

LABEL_161:
            swift_once();
            goto LABEL_121;
          }

          v340, v342, v343, v344, v345, v346, v347, v348;
          v338, v382, v383, v384, v385, v386, v387, v388;
          v339, v389, v390, v391, v392, v393, v394, v395;
          v337, v396, v397, v398, v399, v400, v401, v402;
          v288, v403, v404, v405, v406, v407, v408, v409;
        }
      }

      else
      {
        v341 = sub_1001EB4C4(p_super, v336);
      }

LABEL_136:
      __chkstk_darwin(v341, v342);
      *(&v529 - 4) = v554;
      *(&v529 - 3) = &v578;
      v494 = v550;
      v495 = v533;
      p_aBlock = v550;
      v528 = v533;
      v94 = sub_1003DEE6C(sub_10026A3F0, (&v529 - 6), v4);
      v4, v496, v497, v498, v499, v500, v501, v502;

      sub_1001EB4C4(v494, v503);
      goto LABEL_137;
    }

    v228 = v545;
    (*(v547 + 32))(v545, isUniquelyReferenced_nonNull_native, v548);
    v229 = sub_100263F6C(v228, v4);
    v4, v230, v231, v232, v233, v234, v235, v236;
    v237 = v542;
    v238 = Subtasks;
    v539(v542, v554, Subtasks);
    v239 = v538(v237, v238);
    if (v239 == v537)
    {
      v569, v240, v241, v242, v243, v244, v245, v246;
      v254 = v568;
LABEL_111:
      v254, v247, v248, v249, v250, v251, v252, v253;
      v557, v329, v330, v331, v332, v333, v334, v335;
      goto LABEL_112;
    }

    v299 = v568;
    if (v239 == enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
    {
      v569, v240, v241, v242, v243, v244, v245, v246;
      v299, v300, v301, v302, v303, v304, v305, v306;
      v557, v307, v308, v309, v310, v311, v312, v313;
      v314 = v578;
      v315 = sub_10038E754(&_swiftEmptyArrayStorage);
      __chkstk_darwin(v315, v316);
      p_aBlock = v545;
      sub_10031EDCC(v317, sub_10026A4C8, (&v529 - 4), v314);
      v319 = v318;
      v320 = v314;
      v228 = v545;
      v320, v321, v322, v323, v324, v325, v326, v327;
      v578 = v319;
LABEL_112:
      (*(v547 + 8))(v228, v548);
      v4 = v229;
      goto LABEL_113;
    }

    if (v239 == enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
    {
      v569, v240, v241, v242, v243, v244, v245, v246;
      v254 = v299;
      goto LABEL_111;
    }

LABEL_166:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  v569, v152, v153, v154, v155, v156, v157, v158;
  v568, v160, v161, v162, v163, v164, v165, v166;
  v24, v167, v168, v169, v170, v171, v172, v173;
  v174 = v547;
  v175 = v544;
  v176 = (*(v547 + 32))(v544, v549, v548);
  *&aBlock = _swiftEmptyDictionarySingleton;
  __chkstk_darwin(v176, v177);
  v178 = v4;
  v179 = v554;
  *(&v529 - 6) = v560;
  *(&v529 - 5) = v179;
  *(&v529 - 4) = &v578;
  *(&v529 - 3) = &aBlock;
  v180 = sub_1003DEEBC(sub_10026A3AC, (&v529 - 8), v178);
  sub_1000F5104(&unk_1009430F0, qword_10079DC40);
  sub_10000CB48(&qword_10093F3A0, &unk_1009430F0, qword_10079DC40, &protocol conformance descriptor for REMSortableElement<A>);
  v181 = Array<A>.sorted(by:)();
  v180, v182, v183, v184, v185, v186, v187, v188;
  __chkstk_darwin(v189, v190);
  *(&v529 - 4) = v179;
  *(&v529 - 3) = &aBlock;
  p_aBlock = v175;
  v528 = &v578;
  v94 = sub_1003DF230(sub_10026A3D0, (&v529 - 6), v181);
  v178, v191, v192, v193, v194, v195, v196, v197;
  v181, v198, v199, v200, v201, v202, v203, v204;

  aBlock, v205, v206, v207, v208, v209, v210, v211;
  (*(v174 + 8))(v175, v548);
LABEL_137:
  v578, v212, v213, v214, v215, v216, v217, v218;
  return v94;
}

uint64_t sub_10026A450(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = _s9UtilitiesO12SortingStyleOMa(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10026A4E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10026A52C(__n128 a1)
{
  v1 = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.templateObjectID.getter();
  if (qword_1009360E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for REMCDTemplateSection();
  v2 = sub_1004263A0();
  v3 = sub_1004267FC();
  v4 = sub_100425A50(v1, 1);
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v4];

  v7 = sub_10003450C(v2);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7, v9, v10, v11, v12, v13, v14, v15;
  [v5 setPropertiesToFetch:isa];

  v16 = Array._bridgeToObjectiveC()().super.isa;
  [v5 setRelationshipKeyPathsForPrefetching:v16];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v17 = Array._bridgeToObjectiveC()().super.isa;
  [v5 setSortDescriptors:v17];

  v18 = NSManagedObjectContext.fetch<A>(_:)();
  v2, v19, v20, v21, v22, v23, v24, v25;
  v3, v26, v27, v28, v29, v30, v31, v32;

  return v18;
}

unint64_t sub_10026A748(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v13 = sub_10038EEB0(&_swiftEmptyArrayStorage);
  if (a3 >> 62)
  {
    goto LABEL_73;
  }

  v119 = a3 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v120 = a3 & 0xC000000000000001;
    v118 = a3;
    if (i)
    {
      v15 = 0;
      v115 = a2;
      v116 = a2 & 0xC000000000000001;
      v113 = a1;
      while (1)
      {
        a2 = v15;
        while (1)
        {
          if (v120)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a2 >= *(v119 + 16))
            {
              goto LABEL_68;
            }

            v17 = *(a3 + 8 * a2 + 32);
          }

          v18 = v17;
          v15 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v19 = [v17 remObjectID];
          if (v19)
          {
            break;
          }

          v16 = v18;
LABEL_7:

          ++a2;
          if (v15 == i)
          {
            a1 = v113;
            goto LABEL_29;
          }
        }

        v16 = v19;
        v20 = i;
        if (v116)
        {
          break;
        }

        if (!*(v115 + 16))
        {
          goto LABEL_20;
        }

        a1 = v115;
        v23 = sub_10002B924(v19);
        if ((v24 & 1) == 0)
        {
          goto LABEL_20;
        }

        v22 = *(*(v115 + 56) + 8 * v23);

        if (!v22)
        {
          goto LABEL_20;
        }

LABEL_22:
        if (*(v22 + 24))
        {
          v25 = *(v22 + 16);
          v26 = *(v22 + 24);
        }

        else
        {
          v27._countAndFlagsBits = UUID.uuidString.getter();
          object = v27._object;
          v121 = 0x7C6C61636F6CLL;
          v122 = 0xE600000000000000;
          String.append(_:)(v27);
          object, v29, v30, v31, v32, v33, v34, v35;
          v25 = v121;
          v26 = v122;
        }

        v36 = v18;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v13;
        v38 = v36;
        sub_1002C8188(v36, v25, v26, isUniquelyReferenced_nonNull_native);
        v26, v39, v40, v41, v42, v43, v44, v45;
        v46 = v121;
        v47._countAndFlagsBits = UUID.uuidString.getter();
        v48 = v47._object;
        v121 = 0x7C6C61636F6CLL;
        v122 = 0xE600000000000000;
        String.append(_:)(v47);
        v48, v49, v50, v51, v52, v53, v54, v55;
        a2 = v121;
        v56 = v122;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v121 = v46;
        sub_1002C8188(v38, a2, v56, v57);

        v56, v58, v59, v60, v61, v62, v63, v64;
        v13 = v121;
        i = v20;
        v65 = v15 == v20;
        a1 = v113;
        a3 = v118;
        if (v65)
        {
          goto LABEL_29;
        }
      }

      v21 = v19;
      a1 = __CocoaDictionary.lookup(_:)();

      if (a1)
      {
        type metadata accessor for RDElementManualSortID(0);
        swift_dynamicCast();
        v22 = v121;
        if (v121)
        {
          goto LABEL_22;
        }
      }

LABEL_20:

      i = v20;
      a3 = v118;
      goto LABEL_7;
    }

LABEL_29:
    v114 = i;
    v66 = &_swiftEmptyArrayStorage;
    v121 = &_swiftEmptyArrayStorage;
    a3 = *(a1 + 16);
    if (!a3)
    {
      break;
    }

    v67 = 0;
    v68 = a1 + 40;
    v112 = &_swiftEmptyArrayStorage;
LABEL_31:
    v69 = (v68 + 16 * v67);
    v70 = v67;
    while (v70 < a3)
    {
      v67 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_70;
      }

      if (*(v13 + 16))
      {
        v71 = *(v69 - 1);
        a2 = *v69;

        v72 = v71;
        a1 = v13;
        v73 = sub_100005F4C(v72, a2);
        if (v74)
        {
          v81 = *(*(v13 + 56) + 8 * v73);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          a1 = &v121;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v112 = v121;
          a2, v82, v83, v84, v85, v86, v87, v88;
          v66 = &_swiftEmptyArrayStorage;
          if (v67 != a3)
          {
            goto LABEL_31;
          }

          goto LABEL_44;
        }

        a2, v74, v75, v76, v77, v78, v79, v80;
      }

      ++v70;
      v69 += 2;
      if (v67 == a3)
      {
        v66 = &_swiftEmptyArrayStorage;
        goto LABEL_44;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    v119 = a3 & 0xFFFFFFFFFFFFFF8;
  }

  v112 = &_swiftEmptyArrayStorage;
LABEL_44:
  v13, v6, v7, v8, v9, v10, v11, v12;
  v121 = v112;
  sub_1000F5104(&qword_10093F3B8, &unk_10079DDE0);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CB48(&qword_10093F3C0, &qword_10093F3B8, &unk_10079DDE0, &protocol conformance descriptor for [A]);
  sub_10018BA8C();
  a1 = &v121;
  v89 = Sequence.compactMapToSet<A>(_:)();
  v13 = v89;
  v121 = &_swiftEmptyArrayStorage;
  v97 = v114;
  if (v114)
  {
    a2 = 0;
    a3 = v119;
    v98 = v118 + 32;
    v117 = v89 & 0xC000000000000001;
    v99 = v89 + 56;
    while (1)
    {
      if (v120)
      {
        v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *(a3 + 16))
        {
          goto LABEL_72;
        }

        v100 = *(v98 + 8 * a2);
      }

      v101 = v100;
      if (__OFADD__(a2++, 1))
      {
        goto LABEL_71;
      }

      v103 = [v100 remObjectID];
      if (v103)
      {
        v104 = v103;
        if (!v117)
        {
          if (*(v13 + 16))
          {
            v106 = NSObject._rawHashValue(seed:)(*(v13 + 40));
            v107 = -1 << *(v13 + 32);
            v108 = v106 & ~v107;
            if ((*(v99 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
            {
              v109 = ~v107;
              while (1)
              {
                v110 = *(*(v13 + 48) + 8 * v108);
                a1 = static NSObject.== infix(_:_:)();

                if (a1)
                {
                  break;
                }

                v108 = (v108 + 1) & v109;
                if (((*(v99 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) == 0)
                {
                  goto LABEL_61;
                }
              }

              a3 = v119;
              v98 = v118 + 32;
              v97 = v114;
              goto LABEL_47;
            }
          }

LABEL_61:

          a3 = v119;
          v98 = v118 + 32;
          v97 = v114;
LABEL_62:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a1 = &v121;
          specialized ContiguousArray._endMutation()();
          goto LABEL_47;
        }

        a1 = v103;
        v105 = __CocoaSet.contains(_:)();

        if ((v105 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

LABEL_47:
      if (a2 == v97)
      {
        v66 = v121;
        break;
      }
    }
  }

  v13, v90, v91, v92, v93, v94, v95, v96;
  v121 = v112;
  sub_1002722AC(v66);
  return v121;
}

void sub_10026AE90(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = v1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v6 = *(v1 + 36);
    v22 = v1 + 72;
    v23 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_20;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_21;
      }

      v24 = v5;
      v9 = *(*(v1 + 56) + 8 * v4);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v23;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 = 1 << *(v23 + 32);
      if (v4 >= v7)
      {
        goto LABEL_22;
      }

      v15 = *(v3 + 8 * v8);
      if ((v15 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v6 != *(v23 + 36))
      {
        goto LABEL_24;
      }

      v16 = v15 & (-2 << (v4 & 0x3F));
      if (v16)
      {
        v7 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v8 << 6;
        v18 = v8 + 1;
        v19 = (v22 + 8 * v8);
        while (v18 < (v7 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_100010E34(v4, v6, 0, v10, v11, v12, v13, v14);
            v7 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_100010E34(v4, v6, 0, v10, v11, v12, v13, v14);
      }

LABEL_4:
      v5 = v24 + 1;
      v4 = v7;
      if (v24 + 1 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_10026B0A4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v9 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v5 = v11 & *(a1 + 56);

    v3 = 0;
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10026E1F4();
  Set.Iterator.init(_cocoa:)();
  v1 = v22;
  v2 = v23;
  v4 = v24;
  v3 = v25;
  v5 = v26;
  if ((v22 & 0x8000000000000000) == 0)
  {
    if (v26)
    {
LABEL_4:
      v6 = (v5 - 1) & v5;
      v7 = __clz(__rbit64(v5)) | (v3 << 6);
      v8 = v3;
LABEL_14:
      v14 = *(*(v1 + 48) + 8 * v7);
      v21 = 1;
      if (v14)
      {
        goto LABEL_15;
      }

LABEL_32:
      sub_10001B860(v1);
      return;
    }

LABEL_9:
    v12 = v3;
    while (1)
    {
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_34;
      }

      if (v8 >= ((v4 + 64) >> 6))
      {
        goto LABEL_32;
      }

      v13 = *(v2 + 8 * v8);
      ++v12;
      if (v13)
      {
        v6 = (v13 - 1) & v13;
        v7 = __clz(__rbit64(v13)) | (v8 << 6);
        goto LABEL_14;
      }
    }
  }

  if (!__CocoaSet.Iterator.next()())
  {
    goto LABEL_32;
  }

  swift_dynamicCast();
  v21 = 0;
  v14 = v27;
  v8 = v25;
  v6 = v26;
  v4 = v24;
  if (!v27)
  {
    goto LABEL_32;
  }

LABEL_15:
  v15 = (v4 + 64) >> 6;
  if (!v21)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v16 = v8;
    v17 = v6;
    v18 = v8;
    if (!v6)
    {
      break;
    }

LABEL_20:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_32;
    }

    while (1)
    {
      if (sub_10074E978(v14))
      {

        v14 = v20;
      }

      else
      {
      }

      v8 = v18;
      v6 = v19;
      if (v21)
      {
        break;
      }

LABEL_22:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        swift_dynamicCast();
        v20 = v27;
        v18 = v8;
        v19 = v6;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_32;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_32;
    }

    v17 = *(v2 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_10026B3B8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v9 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v5 = v11 & *(a1 + 56);

    v4 = 0;
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10026E1F4();
  Set.Iterator.init(_cocoa:)();
  v1 = v23;
  v2 = v24;
  v3 = v25;
  v4 = v26;
  v5 = v27;
  if ((v23 & 0x8000000000000000) == 0)
  {
    if (v27)
    {
LABEL_4:
      v6 = (v5 - 1) & v5;
      v7 = __clz(__rbit64(v5)) | (v4 << 6);
      v8 = v4;
LABEL_14:
      v14 = *(*(v1 + 48) + 8 * v7);
      v22 = 1;
      if (v14)
      {
        goto LABEL_15;
      }

LABEL_32:
      sub_10001B860(v1);
      return;
    }

LABEL_9:
    v12 = v4;
    while (1)
    {
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_34;
      }

      if (v8 >= ((v3 + 64) >> 6))
      {
        goto LABEL_32;
      }

      v13 = *(v2 + 8 * v8);
      ++v12;
      if (v13)
      {
        v6 = (v13 - 1) & v13;
        v7 = __clz(__rbit64(v13)) | (v8 << 6);
        goto LABEL_14;
      }
    }
  }

  if (!__CocoaSet.Iterator.next()())
  {
    goto LABEL_32;
  }

  swift_dynamicCast();
  v22 = 0;
  v14 = v28;
  v8 = v26;
  v6 = v27;
  if (!v28)
  {
    goto LABEL_32;
  }

LABEL_15:
  v21 = v14;
  v15 = (v3 + 64) >> 6;
  if (!v22)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v16 = v8;
    v17 = v6;
    v18 = v8;
    if (!v6)
    {
      break;
    }

LABEL_20:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_32;
    }

    while (1)
    {
      if (sub_10074E978(v20))
      {

        v21 = v20;
      }

      else
      {
      }

      v8 = v18;
      v6 = v19;
      if (v22)
      {
        break;
      }

LABEL_22:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        swift_dynamicCast();
        v20 = v28;
        v18 = v8;
        v19 = v6;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_32;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_32;
    }

    v17 = *(v2 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_10026B6C8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093F3E0);
  v1 = sub_100006654(v0, qword_10093F3E0);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  *&v8 = 0xD00000000000003CLL;
  *(&v8 + 1) = 0x800000010079DDE0;
  v4 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_1000050A4(v10, &qword_100939ED0, &qword_100791B10);
LABEL_9:
    sub_10026B9A8(_.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v10[0] = 0xD00000000000003CLL;
    *(&v10[0] + 1) = 0x800000010079DDE0;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [v7 integerValue];

  if (v5 < 1)
  {
    goto LABEL_9;
  }
}

uint64_t sub_10026B9A8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_100935DA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10093F3E0);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31[0] = v10;
    *v9 = 136446210;
    v11 = sub_1003533B0();
    v13 = v12;
    v14 = sub_10000668C(v11, v12, v31);
    v13, v15, v16, v17, v18, v19, v20, v21;
    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "DiacriticsInsensitiveHashtagLabelsMigrator BEGIN {store: %{public}s}", v9, 0xCu);
    sub_10000607C(v10);
  }

  v22 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v23 = [v6 persistentStoreCoordinator];
  [v22 setPersistentStoreCoordinator:v23];

  [v22 setTransactionAuthor:RDStoreControllerDiacriticsInsensitiveHashtagLabelsMigrationAuthor];
  v24 = swift_allocObject();
  v24[2] = v2;
  v24[3] = v22;
  v24[4] = v6;
  v24[5] = ObjectType;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10026C7F8;
  *(v25 + 24) = v24;
  v31[4] = sub_1000529DC;
  v31[5] = v25;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 1107296256;
  v31[2] = sub_10000F160;
  v31[3] = &unk_1008EBFF0;
  v26 = _Block_copy(v31);
  v27 = v6;
  v28 = v2;
  v29 = v22;

  [v29 performBlockAndWait:v26];

  _Block_release(v26);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
  }

  return result;
}

void sub_10026BCBC(uint64_t a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v4 = sub_10026C804(a2, a3, 50);
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  v30 = v4;
  if (v4 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (v29)
    {
LABEL_9:
      v31 = 0;
      v32 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v33 = *(v30 + 8 * v31 + 32);
        }

        v34 = v33;
        p_class_meths = (v31 + 1);
        if (__OFADD__(v31, 1))
        {
          break;
        }

        sub_10026D360(v33, a2, a3);
        if (v35 >> 62)
        {
          v73 = v35;
          v43 = _CocoaArrayWrapper.endIndex.getter();
          v35 = v73;
        }

        else
        {
          v43 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v35, v36, v37, v38, v39, v40, v41, v42;
        v44 = __OFADD__(v32, v43);
        v32 += v43;
        if (v44)
        {
          goto LABEL_27;
        }

        if (__ROR8__(0x8F5C28F5C28F5C29 * p_class_meths + 0x51EB851EB851EB8, 1) <= 0x51EB851EB851EB8uLL && ([a2 hasChanges] & 1) != 0)
        {
          v75 = 0;
          if (![a2 save:&v75])
          {
            v46 = v75;
            v30, v47, v48, v49, v50, v51, v52, v53;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            ++v31;
            p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
            goto LABEL_2;
          }

          v45 = v75;
        }

        ++v31;
        if (p_class_meths == v29)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_3;
    }
  }

  else
  {
    v29 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_9;
    }
  }

  v32 = 0;
LABEL_31:
  v30, v5, v6, v7, v8, v9, v10, v11;
  if (([a2 hasChanges] & 1) == 0)
  {
    p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
    goto LABEL_35;
  }

  v75 = 0;
  p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
  if ([a2 save:&v75])
  {
    v54 = v75;
    goto LABEL_35;
  }

  v72 = v75;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v31 = v29;
LABEL_2:
  if (qword_100935DA0 != -1)
  {
    goto LABEL_28;
  }

LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10093F3E0);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v75 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = Error.rem_errorDescription.getter();
    v20 = v19;
    v21 = sub_10000668C(v18, v19, &v75);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "DiacriticsInsensitiveHashtagLabelsMigrator with error: %s", v16, 0xCu);
    sub_10000607C(v17);
  }

  else
  {
  }

  v29 = v31;
LABEL_35:
  if (p_class_meths[436] != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_100006654(v55, qword_10093F3E0);
  v56 = a3;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v75 = v60;
    *v59 = 136446722;
    v61 = sub_1003533B0();
    v63 = v62;
    v64 = sub_10000668C(v61, v62, &v75);
    v63, v65, v66, v67, v68, v69, v70, v71;
    *(v59 + 4) = v64;
    *(v59 + 12) = 2048;
    *(v59 + 14) = v29;
    *(v59 + 22) = 2048;
    *(v59 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v57, v58, "DiacriticsInsensitiveHashtagLabelsMigrator END {store: %{public}s, existing hashtag labels count = %ld, newly created hashtag labels count: %ld}", v59, 0x20u);
    sub_10000607C(v60);
  }
}

void sub_10026C200()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = v59 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = v59 - v17;
  *&v21 = __chkstk_darwin(v19, v20).n128_u64[0];
  v23 = v59 - v22;
  v24 = [v1 hashtags];
  if (!v24)
  {
    return;
  }

  v25 = v24;
  v62 = v5;
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10026E1F4();
  v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v26 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_9;
    }
  }

  else if (!*(v26 + 16))
  {
LABEL_9:

    v26, v27, v28, v29, v30, v31, v32, v33;
    return;
  }

  sub_10026B0A4(v26);
  if (!v34)
  {
    goto LABEL_9;
  }

  v59[1] = 0;
  v35 = v14;
  v36 = v34;
  v37 = [v34 name];
  [v1 setName:v37];

  v60 = v36;
  v38 = [v36 creationDate];
  v61 = v1;
  if (v38)
  {
    v39 = v38;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = *(v11 + 32);
    v40(v9, v18, v10);
    v59[0] = *(v11 + 56);
    (v59[0])(v9, 0, 1, v10);
    v40(v23, v9, v10);
    v41 = v35;
  }

  else
  {
    v59[0] = *(v11 + 56);
    (v59[0])(v9, 1, 1, v10);
    static Date.distantFuture.getter();
    v41 = v35;
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
    }
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  v43 = *(v11 + 8);
  v43(v23, v10);
  [v61 setFirstOccurrenceCreationDate:isa];

  sub_10026B3B8(v26);
  v45 = v44;
  v26, v46, v47, v48, v49, v50, v51, v52;
  if (v45)
  {
    v53 = [v45 creationDate];
    if (v53)
    {
      v54 = v53;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = *(v11 + 32);
      v56 = v62;
      v55(v62, v18, v10);
      (v59[0])(v56, 0, 1, v10);
      v55(v41, v56, v10);
    }

    else
    {
      v57 = v62;
      (v59[0])(v62, 1, 1, v10);
      static Date.distantPast.getter();
      if ((*(v11 + 48))(v57, 1, v10) != 1)
      {
        sub_1000050A4(v57, &unk_100938850, qword_100795AE0);
      }
    }

    v58 = Date._bridgeToObjectiveC()().super.isa;
    v43(v41, v10);
    [v61 setRecencyDate:v58];
  }

  else
  {
  }
}

id RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10026C804(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000F5104(&unk_10093F440, &unk_10079DEB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = sub_100348E3C(KeyPath, v5);

  *(inited + 32) = v6;
  v7 = swift_getKeyPath();
  v8 = sub_1003EE38C(v7, 1);

  *(inited + 40) = v8;
  v9 = sub_100025060(inited);
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  v54 = v10;
  v51 = v9;
  [v10 setPredicate:v9];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_100796900;
  *(v12 + 32) = swift_getKeyPath();
  *(v12 + 40) = swift_getKeyPath();
  v57 = &_swiftEmptyArrayStorage;
  sub_100010D04(0, 2, 0);
  v13 = &_swiftEmptyArrayStorage;
  if ((v12 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }
  }

  v14 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v15)
  {
LABEL_25:
    _StringGuts.grow(_:)(46);
    v49._object = 0x80000001007EC120;
    v49._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v49);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
LABEL_27:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v16 = v14;
  v17 = v15;
  v56 = &type metadata for String;

  *&v55 = v16;
  *(&v55 + 1) = v17;
  v19 = *_swiftEmptyArrayStorage.clientIdentity;
  v18 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v19 >= v18 >> 1)
  {
    sub_100010D04((v18 > 1), v19 + 1, 1);
    v13 = v57;
  }

  *v13->clientIdentity = v19 + 1;
  sub_100005EE0(&v55, &v13->clientIdentity[32 * v19 + 16]);
  if ((v12 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_12:
  v20 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = v20;
  v23 = v21;
  v56 = &type metadata for String;

  *&v55 = v22;
  *(&v55 + 1) = v23;
  v57 = v13;
  v25 = *v13->clientIdentity;
  v24 = *&v13->clientIdentity[8];
  if (v25 >= v24 >> 1)
  {
    sub_100010D04((v24 > 1), v25 + 1, 1);
    v13 = v57;
  }

  *v13->clientIdentity = v25 + 1;
  sub_100005EE0(&v55, &v13->clientIdentity[32 * v25 + 16]);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setPropertiesToFetch:isa];

  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1007953F0;
  *(v27 + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  v28 = *(v27 + 32);

LABEL_19:
  v29 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v30)
  {
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v50._object = 0x80000001007EC120;
    v50._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v50);
    v57 = v28;
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_27;
  }

  v31 = v29;
  v32 = v30;

  v34 = *_swiftEmptyArrayStorage.clientIdentity;
  v33 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v34 >= v33 >> 1)
  {
    sub_100026EF4((v33 > 1), v34 + 1, 1);
  }

  *_swiftEmptyArrayStorage.clientIdentity = v34 + 1;
  v35 = &_swiftEmptyArrayStorage + 16 * v34;
  *(v35 + 4) = v31;
  *(v35 + 5) = v32;
  swift_setDeallocating();
  swift_arrayDestroy();
  v36 = Array._bridgeToObjectiveC()().super.isa;

  [v54 setRelationshipKeyPathsForPrefetching:v36];

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1007953F0;
  *(v37 + 32) = a2;
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v38 = a2;
  v39 = Array._bridgeToObjectiveC()().super.isa;
  v37, v40, v41, v42, v43, v44, v45, v46;
  [v54 setAffectedStores:v39];

  [v54 setFetchBatchSize:a3];
  v47 = NSManagedObjectContext.fetch<A>(_:)();

  return v47;
}

Class sub_10026CEC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  KeyPath = swift_getKeyPath();

  v9 = sub_100392650(KeyPath, a1, a2);

  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v10 setPropertiesToFetch:isa];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v14 = sub_100026EF4(0, 1, 0);
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  v53 = a4;
  v15 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = v15;
  v18 = v16;

  v20 = *_swiftEmptyArrayStorage.clientIdentity;
  v19 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v20 >= v19 >> 1)
  {
    sub_100026EF4((v19 > 1), v20 + 1, 1);
  }

  *_swiftEmptyArrayStorage.clientIdentity = v20 + 1;
  v21 = &_swiftEmptyArrayStorage + 16 * v20;
  *(v21 + 4) = v17;
  *(v21 + 5) = v18;
  swift_setDeallocating();
  swift_arrayDestroy();
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRelationshipKeyPathsForPrefetching:v22];

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1007953F0;
  *(v23 + 32) = v53;
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v24 = v53;
  v25.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v23, v26, v27, v28, v29, v30, v31, v32;
  [v10 setAffectedStores:v25.super.isa];

  [v10 setFetchLimit:1];
  v14 = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {

    return v25.super.isa;
  }

  if (v14 >> 62)
  {
LABEL_17:
    v49 = v14;
    v50 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v49;
    if (v50)
    {
      goto LABEL_12;
    }

LABEL_18:
    v14, v33, v34, v35, v36, v37, v38, v39;

    return 0;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v40 = v14;
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v40 = v14;
    v41 = *(v14 + 32);
LABEL_15:
    v25.super.isa = v41;
    v40, v42, v43, v44, v45, v46, v47, v48;

    return v25.super.isa;
  }

  __break(1u);
LABEL_22:
  _StringGuts.grow(_:)(46);
  v52._object = 0x80000001007EC120;
  v52._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v52);
  sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10026D360(void *a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v7 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  *&v9 = __chkstk_darwin(v7 - 8, v8).n128_u64[0];
  v258 = &v240 - v10;
  v11 = [a1 hashtags];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v14 = sub_10026E1F4();
  v256 = v13;
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [a1 canonicalName];
  if (!v16)
  {
    v15, v17, v18, v19, v20, v21, v22, v23;
    return;
  }

  v254 = v3;
  v251 = a2;
  v24 = v16;
  v262 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (qword_100935DA0 == -1)
  {
    goto LABEL_4;
  }

LABEL_82:
  swift_once();
LABEL_4:
  v27 = type metadata accessor for Logger();
  v28 = sub_100006654(v27, qword_10093F3E0);

  v255 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  v26, v31, v32, v33, v34, v35, v36, v37;
  v38 = os_log_type_enabled(v29, v30);
  v252 = a1;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v265[0] = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_10000668C(v262, v26, v265);
    *(v39 + 12) = 2048;
    v48 = v15 & 0xC000000000000001;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v49 = __CocoaSet.count.getter();
    }

    else
    {
      v49 = *(v15 + 16);
    }

    *(v39 + 14) = v49;
    v15, v41, v42, v43, v44, v45, v46, v47;
    _os_log_impl(&_mh_execute_header, v29, v30, "DiacriticsInsensitiveHashtagLabelsMigrator: process hashtag label '%s' with hashtags: %ld", v39, 0x16u);
    sub_10000607C(v40);
  }

  else
  {

    v15, v50, v51, v52, v53, v54, v55, v56;
    v48 = v15 & 0xC000000000000001;
  }

  v247 = a3;
  v248 = v14;
  if (v48)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v15 = v265[2];
    v58 = v265[3];
    v59 = v265[4];
    a3 = v265[5];
    a1 = v265[6];
  }

  else
  {
    a3 = 0;
    v58 = v15 + 56;
    v60 = -1 << *(v15 + 32);
    v61 = ~v60;
    v62 = -v60;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    else
    {
      v63 = -1;
    }

    a1 = (v63 & *(v15 + 56));
    v59 = v61;
  }

  v250 = v59;
  v64 = (v59 + 64) >> 6;
  v253 = _swiftEmptyDictionarySingleton;
  *&v57 = 136446210;
  v249 = v57;
  *&v57 = 136446466;
  v246 = v57;
  *&v57 = 138412290;
  v244 = v57;
  v259 = v26;
  v260 = v64;
  v257 = v15;
  v261 = v58;
  if ((v15 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v68 = a3;
      v69 = a1;
      v66 = a3;
      if (!a1)
      {
        while (1)
        {
          v66 = (&v68->super.isa + 1);
          if (__OFADD__(v68, 1))
          {
            break;
          }

          if (v66 >= v64)
          {
            goto LABEL_60;
          }

          v69 = *(v58 + 8 * v66);
          v68 = (v68 + 1);
          if (v69)
          {
            goto LABEL_26;
          }
        }

LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

LABEL_26:
      v67 = ((v69 - 1) & v69);
      v14 = *(*(v15 + 48) + ((v66 << 9) | (8 * __clz(__rbit64(v69)))));
      if (!v14)
      {
        goto LABEL_60;
      }

LABEL_27:
      v70 = [v14 name];
      if (v70)
      {
        break;
      }

      v95 = v14;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v263 = v67;
        v14 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v265[0] = v98;
        LODWORD(v14->isa) = v249;
        v99 = [v95 remObjectID];
        if (v99)
        {
          v100 = v99;
          v101 = [v99 description];
          v245 = v98;
          v102 = v101;

          v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v104;

          v98 = v245;
        }

        else
        {
          v105 = 0xE300000000000000;
          v103 = 7104878;
        }

        v131 = sub_10000668C(v103, v105, v265);
        v105, v132, v133, v134, v135, v136, v137, v138;
        *(&v14->isa + 4) = v131;
        _os_log_impl(&_mh_execute_header, v96, v97, "DiacriticsInsensitiveHashtagLabelsMigrator: hashtag [%{public}s] does not have canonicalName", v14, 0xCu);
        sub_10000607C(v98);

        a3 = v66;
        a1 = v263;
        v26 = v259;
        goto LABEL_45;
      }

      a3 = v66;
      a1 = v67;
LABEL_46:
      v64 = v260;
      v58 = v261;
      if (v15 < 0)
      {
        goto LABEL_19;
      }
    }

    v263 = v67;
    v71 = v70;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;

    v265[0] = v72;
    v265[1] = v74;
    v75 = v258;
    static Locale.current.getter();
    v76 = type metadata accessor for Locale();
    (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
    sub_10013BCF4();
    v77 = StringProtocol.foldedStringForWriting(locale:)();
    v79 = v78;
    v80 = v75;
    v26 = v259;
    sub_1000050A4(v80, &unk_10093F420, &unk_100797AE0);
    v74, v81, v82, v83, v84, v85, v86, v87;
    if (v77 == v262 && v79 == v26)
    {
      v79, v88, v89, v90, v91, v92, v93, v94;
    }

    else
    {
      v106 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v114 = v263;
      if (v106)
      {
        v79, v107, v108, v109, v110, v111, v112, v113;

        a3 = v66;
        a1 = v114;
        goto LABEL_45;
      }

      v14 = v14;
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.info.getter();
      v26, v117, v118, v119, v120, v121, v122, v123;

      if (os_log_type_enabled(v115, v116))
      {
        v242 = v116;
        v243 = v115;
        v124 = swift_slowAlloc();
        v241 = swift_slowAlloc();
        v265[0] = v241;
        *v124 = v246;
        v245 = v14;
        v125 = [v14 remObjectID];
        if (v125)
        {
          v126 = v125;
          v127 = [v125 description];

          v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v130 = v129;
        }

        else
        {
          v130 = 0xE300000000000000;
          v128 = 7104878;
        }

        v139 = sub_10000668C(v128, v130, v265);
        v130, v140, v141, v142, v143, v144, v145, v146;
        *(v124 + 4) = v139;
        *(v124 + 12) = 2080;
        v147 = v259;
        *(v124 + 14) = sub_10000668C(v262, v259, v265);
        v148 = v243;
        _os_log_impl(&_mh_execute_header, v243, v242, "DiacriticsInsensitiveHashtagLabelsMigrator: hashtag [%{public}s] does not match hashtag label name '%s'", v124, 0x16u);
        swift_arrayDestroy();

        v26 = v147;

        v14 = v245;
      }

      else
      {
      }

      [v252 removeHashtagsObject:v14];
      v149 = v253;
      if (!*v253->clientIdentity || (v150 = sub_100005F4C(v77, v79), (v151 & 1) == 0))
      {
        v160 = v14;
        v161 = v251;
        v162 = v254;
        v163 = sub_10026CEC0(v77, v79, v251, v247);
        v254 = v162;
        if (v162)
        {
          sub_10001B860(v257);
          v253, v219, v220, v221, v222, v223, v224, v225;
          v79, v226, v227, v228, v229, v230, v231, v232;
          v26, v233, v234, v235, v236, v237, v238, v239;

          return;
        }

        v14 = v163;
        if (v163)
        {
          v164 = v163;
          v165 = Logger.logObject.getter();
          v166 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v165, v166))
          {
            v167 = swift_slowAlloc();
            v245 = v165;
            v168 = v167;
            v169 = swift_slowAlloc();
            *v168 = v244;
            *(v168 + 4) = v164;
            *v169 = v14;
            v170 = v164;
            _os_log_impl(&_mh_execute_header, v245, v166, "DiacriticsInsensitiveHashtagLabelsMigrator: hashtag label '%@' is already in database", v168, 0xCu);
            sub_1000050A4(v169, &unk_100938E70, &unk_100797230);
            v26 = v259;

            v165 = v245;
          }

          [(objc_class *)v164 addHashtagsObject:v160];
          v171 = v164;
          v172 = v253;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v265[0] = v172;
          sub_1002C72A0(v171, v77, v79, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          v14 = v160;
          v181 = sub_1006E7C0C(v160, v161);
          v254 = 0;
          v182 = v181;
          v183 = v253;
          v184 = swift_isUniquelyReferenced_nonNull_native();
          v265[0] = v183;
          sub_1002C72A0(v182, v77, v79, v184);
        }

        v79, v174, v175, v176, v177, v178, v179, v180;
        v253 = v265[0];
        goto LABEL_32;
      }

      v158 = v150;
      v79, v151, v152, v153, v154, v155, v156, v157;
      v159 = *(*&v149->clientIdentity[40] + 8 * v158);
      [v159 addHashtagsObject:v14];
    }

LABEL_32:
    a3 = v66;
    a1 = v263;
LABEL_45:
    v15 = v257;
    goto LABEL_46;
  }

LABEL_19:
  v65 = __CocoaSet.Iterator.next()();
  if (v65)
  {
    v264 = v65;
    swift_dynamicCast();
    v14 = v265[0];
    v66 = a3;
    v67 = a1;
    if (v265[0])
    {
      goto LABEL_27;
    }
  }

LABEL_60:
  sub_10001B860(v15);
  v26, v185, v186, v187, v188, v189, v190, v191;
  a3 = v253;
  v192 = &v253->storeProvider[2];
  v193 = 1 << v253->clientIdentity[16];
  v194 = -1;
  if (v193 < 64)
  {
    v194 = ~(-1 << v193);
  }

  v195 = v194 & *&v253->storeProvider[2];
  a1 = ((v193 + 63) >> 6);

  v196 = 0;
  v14 = v248;
  v26 = v254;
  if (v195)
  {
    while (1)
    {
      v197 = v196;
LABEL_68:
      v198 = __clz(__rbit64(v195));
      v195 &= v195 - 1;
      v199 = *(*&a3->clientIdentity[40] + ((v197 << 9) | (8 * v198)));
      sub_10026C200();

      if (!v195)
      {
        goto LABEL_64;
      }
    }
  }

  while (1)
  {
LABEL_64:
    v197 = v196 + 1;
    if (__OFADD__(v196, 1))
    {
      __break(1u);
      goto LABEL_81;
    }

    if (v197 >= a1)
    {
      break;
    }

    v195 = *&v192[8 * v197];
    ++v196;
    if (v195)
    {
      v196 = v197;
      goto LABEL_68;
    }
  }

  v200 = v252;
  v201 = [v252 hashtags];
  if (v201 && ((v202 = v201, v203 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v202, (v203 & 0xC000000000000001) == 0) ? (v211 = *(v203 + 16)) : (v211 = __CocoaSet.count.getter()), v203, v204, v205, v206, v207, v208, v209, v210, v211))
  {
    if (*a3->clientIdentity)
    {
      sub_10026C200();
    }
  }

  else
  {
    [v251 deleteObject:v200];
  }

  sub_10026AE90(a3);
  a3, v212, v213, v214, v215, v216, v217, v218;
}

unint64_t sub_10026E1F4()
{
  result = qword_10093B280;
  if (!qword_10093B280)
  {
    sub_1000060C8(255, &qword_10093CFE0, off_1008D4190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B280);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10026E25C()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  *&v4 = __chkstk_darwin(v1, v3).n128_u64[0];
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isInserted] && (objc_msgSend(v0, "completed") & 1) == 0)
  {
    v11 = sub_100366F40(0, 1, 1, &_swiftEmptyArrayStorage, v7, v8, v9, v10);
    v17 = *v11->clientIdentity;
    v16 = *&v11->clientIdentity[8];
    if (v17 >= v16 >> 1)
    {
      v11 = sub_100366F40((v16 > 1), v17 + 1, 1, v11, v12, v13, v14, v15);
    }

    *v11->clientIdentity = v17 + 1;
    v11->clientIdentity[v17 + 16] = 1;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v18 = [v0 changedValues];
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (([v0 isInserted] & 1) == 0)
  {
    if (*(v19 + 16))
    {
      v20 = sub_100005F4C(0x6574656C706D6F63, 0xE900000000000064);
      if (v21)
      {
        sub_100005EF0(*(v19 + 56) + 32 * v20, &v73);
        if ((swift_dynamicCast() & 1) != 0 && v71 == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_100366F40(0, *v11->clientIdentity + 1, 1, v11, v22, v23, v24, v25);
          }

          v27 = *v11->clientIdentity;
          v26 = *&v11->clientIdentity[8];
          if (v27 >= v26 >> 1)
          {
            v11 = sub_100366F40((v26 > 1), v27 + 1, 1, v11, v22, v23, v24, v25);
          }

          *v11->clientIdentity = v27 + 1;
          v11->clientIdentity[v27 + 16] = 2;
        }
      }
    }
  }

  static CharacterSet.hashtagTokenPrefixCharacters.getter();
  if (*(v19 + 16))
  {
    v35 = sub_100005F4C(0x656C746974, 0xE500000000000000);
    if (v28)
    {
      sub_100005EF0(*(v19 + 56) + 32 * v35, &v73);
      if (swift_dynamicCast())
      {
        v36 = v72;
        v73 = v71;
        v74 = v72;
        sub_10013BCF4();
        StringProtocol.rangeOfCharacter(from:options:range:)();
        v38 = v37;
        v36, v39, v37, v40, v41, v42, v43, v44;
        if ((v38 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_100366F40(0, *v11->clientIdentity + 1, 1, v11, v31, v32, v33, v34);
          }

          v46 = *v11->clientIdentity;
          v45 = *&v11->clientIdentity[8];
          if (v46 >= v45 >> 1)
          {
            v11 = sub_100366F40((v45 > 1), v46 + 1, 1, v11, v31, v32, v33, v34);
          }

          *v11->clientIdentity = v46 + 1;
          v11->clientIdentity[v46 + 16] = 3;
        }
      }
    }
  }

  if (!*(v19 + 16) || (v47 = sub_100005F4C(0x7365746F6ELL, 0xE500000000000000), (v28 & 1) == 0))
  {
    v19, v28, v29, v30, v31, v32, v33, v34;
LABEL_36:
    (*(v2 + 8))(v6, v1);
    return v11;
  }

  sub_100005EF0(*(v19 + 56) + 32 * v47, &v73);
  v19, v48, v49, v50, v51, v52, v53, v54;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v55 = v72;
  v73 = v71;
  v74 = v72;
  sub_10013BCF4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v57 = v56;
  v55, v58, v56, v59, v60, v61, v62, v63;
  if (v57)
  {
    goto LABEL_36;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_100366F40(0, *v11->clientIdentity + 1, 1, v11, v64, v65, v66, v67);
  }

  v69 = *v11->clientIdentity;
  v68 = *&v11->clientIdentity[8];
  if (v69 >= v68 >> 1)
  {
    v11 = sub_100366F40((v68 > 1), v69 + 1, 1, v11, v64, v65, v66, v67);
  }

  (*(v2 + 8))(v6, v1);
  *v11->clientIdentity = v69 + 1;
  v11->clientIdentity[v69 + 16] = 4;
  return v11;
}

void sub_10026E728(uint64_t a1)
{
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      return;
    }

    v39 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v36 = __CocoaSet.startIndex.getter();
    v37 = v4;
    v38 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v39 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = _HashTable.startBucket.getter();
  v6 = *(a1 + 36);
  v36 = v5;
  v37 = v6;
  v38 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v3)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_33;
    }

    v16 = v36;
    v15 = v37;
    v17 = v38;
    sub_100411ACC(v36, v37, v38, a1);
    v19 = v18;
    sub_1005E37C0(v19);

    if (v1)
    {
      sub_100010E34(v16, v15, v17, v20, v21, v22, v23, v24);

      return;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v34)
    {
      if (!v17)
      {
        goto LABEL_37;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1000F5104(&unk_10093F490, &qword_1007A7660);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      v8(v35, 0);
      if (v7 == v3)
      {
LABEL_29:
        sub_100010E34(v36, v37, v38, v9, v10, v11, v12, v13);
        return;
      }
    }

    else
    {
      if (v17)
      {
        goto LABEL_38;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v25 = (1 << *(a1 + 32));
      if (v16 >= v25)
      {
        goto LABEL_34;
      }

      v26 = v16 >> 6;
      v27 = *(a1 + 56 + 8 * (v16 >> 6));
      if (((v27 >> v16) & 1) == 0)
      {
        goto LABEL_35;
      }

      if (*(a1 + 36) != v15)
      {
        goto LABEL_36;
      }

      v28 = v27 & (-2 << (v16 & 0x3F));
      if (v28)
      {
        v25 = (__clz(__rbit64(v28)) | v16 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v29 = v26 << 6;
        v30 = v26 + 1;
        v31 = (a1 + 64 + 8 * v26);
        while (v30 < &v25->storeProvider[1] >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_100010E34(v16, v15, 0, v9, v10, v11, v12, v13);
            v25 = (__clz(__rbit64(v32)) + v29);
            goto LABEL_28;
          }
        }

        sub_100010E34(v16, v15, 0, v9, v10, v11, v12, v13);
      }

LABEL_28:
      v36 = v25;
      v37 = v15;
      v38 = 0;
      if (v7 == v3)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_10026EA70(id *a1)
{
  v1 = [*a1 entityName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = [objc_opt_self() cdEntityName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v2 == v6 && v4 == v8)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v4, v9, v10, v11, v12, v13, v14, v15;
  v8, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

void sub_10026EB48(uint64_t a1@<X1>, _TtC7remindd19RDXPCStorePerformer *a2@<X3>, unint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  sub_10026EC90(a1, a2, *a3);
  if (!v4)
  {
    *a4 = v6;
  }
}

unint64_t sub_10026EB80(uint64_t a1)
{
  result = sub_10026EBA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10026EBA8()
{
  result = qword_10093F470;
  if (!qword_10093F470)
  {
    type metadata accessor for REMListStableSortingDataView.Invocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F470);
  }

  return result;
}

void *sub_10026EC00(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_1004ADF1C(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_10026EC90(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v375 = &v350 - v10;
  v374 = type metadata accessor for UUID();
  v11 = *(v374 - 8);
  __chkstk_darwin(v374, v12);
  v368 = &v350 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = _s10PredicatesOMa(0);
  __chkstk_darwin(v362, v14);
  v366 = (&v350 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v373 = a3;
  v370 = v3;
  v365 = a1;
  v363 = v11;
  v367 = a2;
  if ((a3 & 0xC000000000000001) == 0)
  {
    v70 = v373[32];
    v71 = v70 & 0x3F;
    v32 = ((1 << v70) + 63) >> 6;
    i = 8 * v32;

    if (v71 <= 0xD)
    {
      goto LABEL_27;
    }

    goto LABEL_190;
  }

  v16 = _swiftEmptySetSingleton;
  *&v380 = _swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v17 = __CocoaSet.Iterator.next()();
  if (!v17)
  {
LABEL_25:

    goto LABEL_48;
  }

  v18 = v17;
  v19 = type metadata accessor for REMObjectID_Codable();
  v20 = v18;
LABEL_8:
  v377 = v20;
  swift_dynamicCast();
  v27 = [v378 entityName];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = [objc_opt_self() cdEntityName];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (v28 == v32 && v30 == v34)
  {
    v30, v35, v36, v37, v38, v39, v40, v41;
    v34, v57, v58, v59, v60, v61, v62, v63;
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v30, v43, v44, v45, v46, v47, v48, v49;
    v34, v50, v51, v52, v53, v54, v55, v56;
    if ((v32 & 1) == 0)
    {

      goto LABEL_7;
    }
  }

  v64 = v378;
  v65 = *(v16 + 16);
  if (*(v16 + 24) <= v65)
  {
    sub_1003800CC(v65 + 1);
  }

  v16 = v380;
  v21 = NSObject._rawHashValue(seed:)(*(v380 + 40));
  v22 = v16 + 56;
  v23 = -1 << *(v16 + 32);
  v24 = v21 & ~v23;
  v25 = v24 >> 6;
  if (((-1 << v24) & ~*(v16 + 56 + 8 * (v24 >> 6))) != 0)
  {
    v26 = __clz(__rbit64((-1 << v24) & ~*(v16 + 56 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    goto LABEL_6;
  }

  v66 = 0;
  v67 = (63 - v23) >> 6;
  while (++v25 != v67 || (v66 & 1) == 0)
  {
    v68 = v25 == v67;
    if (v25 == v67)
    {
      v25 = 0;
    }

    v66 |= v68;
    v69 = *(v22 + 8 * v25);
    if (v69 != -1)
    {
      v26 = __clz(__rbit64(~v69)) + (v25 << 6);
LABEL_6:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v16 + 48) + 8 * v26) = v64;
      ++*(v16 + 16);
LABEL_7:
      v20 = __CocoaSet.Iterator.next()();
      if (!v20)
      {
        goto LABEL_25;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_123:
  v214 = *(v16 + 16);
LABEL_124:

  sub_1000F5104(&qword_10093F480, qword_10079DF40);
  v4 = &v377;
  Dictionary.reserveCapacity(_:)(v214);
  if (v32 >> 62)
  {
LABEL_206:
    v222 = _CocoaArrayWrapper.endIndex.getter();
    if (!v222)
    {
LABEL_207:
      v32, v215, v216, v217, v218, v219, v220, v221;
      v357, v341, v342, v343, v344, v345, v346, v347;
      return;
    }
  }

  else
  {
    v222 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v222)
    {
      goto LABEL_207;
    }
  }

  v223 = 0;
  v354 = v32 & 0xC000000000000001;
  v351 = v32 & 0xFFFFFFFFFFFFFF8;
  v350 = v32 + 32;
  v367 = (v363 + 56);
  v369 = v363 + 48;
  v364 = (v363 + 32);
  v363 += 8;
  v358 = xmmword_1007953F0;
  v352 = v222;
  v353 = v32;
  while (1)
  {
    if (v354)
    {
      v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v122 = __OFADD__(v223, 1);
      v227 = v223 + 1;
      if (v122)
      {
        goto LABEL_195;
      }

      goto LABEL_135;
    }

    if (v223 >= *(v351 + 16))
    {
      goto LABEL_200;
    }

    v123 = *(v350 + 8 * v223);
    v122 = __OFADD__(v223, 1);
    v227 = v223 + 1;
    if (v122)
    {
LABEL_195:
      __break(1u);
LABEL_196:
      v337 = v123;
      swift_once();
      v123 = v337;
      while (1)
      {
        v124 = qword_100975238;
        if (qword_100975238 >> 62)
        {
          v338 = v123;
          v339 = qword_100975238;
          v340 = _CocoaArrayWrapper.endIndex.getter();
          v124 = v339;
          v125 = v340;
          v123 = v338;
        }

        else
        {
          v125 = *((qword_100975238 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v370 = v19;
        v361 = v32;
        if (!v125)
        {
          v128 = &_swiftEmptyArrayStorage;
LABEL_69:
          v137 = v123;
          v138 = v370;
          sub_1005EC5F0(v123, 0, 1, v128, 0);
          v370 = v138;
          if (v138)
          {

            v137, v147, v148, v149, v150, v151, v152, v153;
            v128, v154, v155, v156, v157, v158, v159, v160;
            return;
          }

          v4 = v139;
          v128, v140, v141, v142, v143, v144, v145, v146;
          v137, v161, v162, v163, v164, v165, v166, v167;
          *&v380 = &_swiftEmptyArrayStorage;
          if (!(v4 >> 62))
          {
            i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_73;
          }

LABEL_202:
          i = _CocoaArrayWrapper.endIndex.getter();
LABEL_73:
          v175 = &_swiftEmptyArrayStorage;
          if (i)
          {
            v176 = 0;
            v177 = v4 & 0xFFFFFFFFFFFFFF8;
            v372 = i;
            v373 = (v4 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v178 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v176 >= *(v177 + 16))
                {
                  goto LABEL_187;
                }

                v178 = *(v4 + 8 * v176 + 32);
              }

              v179 = v178;
              v32 = v176 + 1;
              if (__OFADD__(v176, 1))
              {
                goto LABEL_186;
              }

              if ([v178 isConcealed])
              {
              }

              else
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                i = v372;
                v177 = v373;
              }

              ++v176;
              if (v32 == i)
              {
                v175 = v380;
                break;
              }
            }
          }

          v4, v168, v169, v170, v171, v172, v173, v174;
          if ((v175 & 0x8000000000000000) != 0 || (v175 & 0x4000000000000000) != 0)
          {
            v19 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v19 = *(v175 + 16);
          }

          v4 = _swiftEmptyDictionarySingleton;
          if (v19)
          {
            v357 = _swiftEmptyDictionarySingleton;
            v180 = &selRef_persistentStoreForIdentifier_;
            for (i = 0; ; i = v182)
            {
              while (1)
              {
                if ((v175 & 0xC000000000000001) != 0)
                {
                  v181 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (i >= *(v175 + 16))
                  {
                    goto LABEL_189;
                  }

                  v181 = *(v175 + 8 * i + 32);
                }

                v32 = v181;
                v182 = i + 1;
                if (__OFADD__(i, 1))
                {
                  goto LABEL_188;
                }

                v183 = [v181 v180[106]];
                if (v183)
                {
                  break;
                }

                ++i;
                if (v182 == v19)
                {
                  goto LABEL_118;
                }
              }

              v373 = v183;
              if ((v357 & 0xC000000000000001) != 0)
              {
                if (v357 < 0)
                {
                  v184 = v357;
                }

                else
                {
                  v184 = (v357 & 0xFFFFFFFFFFFFFF8);
                }

                v185 = v32;
                v186 = __CocoaDictionary.count.getter();
                if (__OFADD__(v186, 1))
                {
                  goto LABEL_205;
                }

                v187 = sub_10021C6D8(v184, v186 + 1);
              }

              else
              {
                v188 = v32;
                v187 = v357;
              }

              v4 = v187;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v380 = v4;
              v191 = sub_10002B924(v373);
              v192 = *(v4 + 16);
              v193 = (v190 & 1) == 0;
              v194 = v192 + v193;
              if (__OFADD__(v192, v193))
              {
                __break(1u);
LABEL_205:
                __break(1u);
                goto LABEL_206;
              }

              if (*(v4 + 24) >= v194)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v203 = v190;
                  sub_1003739B0();
                  LOBYTE(v190) = v203;
                }
              }

              else
              {
                LODWORD(v372) = v190;
                sub_10036AEE4(v194, isUniquelyReferenced_nonNull_native);
                v195 = sub_10002B924(v373);
                v196 = v190 & 1;
                LOBYTE(v190) = v372;
                if ((v372 & 1) != v196)
                {
                  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
LABEL_213:

                  __break(1u);
                  return;
                }

                v191 = v195;
              }

              v197 = v373;
              v180 = &selRef_persistentStoreForIdentifier_;
              v198 = v380;
              v357 = v380;
              if (v190)
              {
                v199 = *(v380 + 56);
                v200 = *(v199 + 8 * v191);
                *(v199 + 8 * v191) = v32;
              }

              else
              {
                *(v380 + 8 * (v191 >> 6) + 64) |= 1 << v191;
                *(*(v198 + 48) + 8 * v191) = v197;
                *(*(v198 + 56) + 8 * v191) = v32;

                v201 = *(v357 + 16);
                v122 = __OFADD__(v201, 1);
                v202 = v201 + 1;
                if (v122)
                {
                  __break(1u);
                }

                *(v357 + 16) = v202;
              }

              v4 = _swiftEmptyDictionarySingleton;
              if (v182 == v19)
              {
                goto LABEL_118;
              }
            }
          }

          v357 = _swiftEmptyDictionarySingleton;
LABEL_118:
          v204 = v370;
          v205 = sub_1000271D0(v175, v367);
          v19 = v204;
          if (v204)
          {

            v213 = v357;
            goto LABEL_120;
          }

          v32 = v205;

          v377 = _swiftEmptyDictionarySingleton;
          if (v361)
          {
            v214 = __CocoaSet.count.getter();
            goto LABEL_124;
          }

          goto LABEL_123;
        }

        v126 = v124;
        v364 = v123;
        *&v378 = &_swiftEmptyArrayStorage;
        v4 = &v378;
        sub_100026EF4(0, v125 & ~(v125 >> 63), 0);
        if (v125 < 0)
        {
          __break(1u);
          goto LABEL_199;
        }

        v127 = 0;
        v128 = v378;
        v129 = v126;
        v373 = (v126 & 0xC000000000000001);
        v369 = v126 & 0xFFFFFFFFFFFFFF8;
        v372 = v126;
        v371 = v125;
        while (1)
        {
          i = v127 + 1;
          if (__OFADD__(v127, 1))
          {
            break;
          }

          if (v373)
          {
            v130 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v127 >= *(v369 + 16))
            {
              goto LABEL_185;
            }

            v130 = *(v129 + 8 * v127 + 32);
          }

          v4 = v130;
          v131 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v132)
          {
            *&v380 = 0;
            *(&v380 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(46);
            v348._object = 0x80000001007EC120;
            v348._countAndFlagsBits = 0xD00000000000002CLL;
            String.append(_:)(v348);
            v377 = v130;
            sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
            while (1)
            {
              _print_unlocked<A, B>(_:_:)();
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_211:
              *&v380 = 0;
              *(&v380 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(46);
              v349._object = 0x80000001007EC120;
              v349._countAndFlagsBits = 0xD00000000000002CLL;
              String.append(_:)(v349);
              v376 = v128;
              sub_1000F5104(&unk_100939F10, &qword_100797F30);
            }
          }

          v133 = v131;
          v134 = v132;

          *&v378 = v128;
          v32 = *v128->clientIdentity;
          v135 = *&v128->clientIdentity[8];
          if (v32 >= v135 >> 1)
          {
            v4 = &v378;
            sub_100026EF4((v135 > 1), v32 + 1, 1);
            v128 = v378;
          }

          *v128->clientIdentity = v32 + 1;
          v136 = v128 + 16 * v32;
          *(v136 + 4) = v133;
          *(v136 + 5) = v134;
          ++v127;
          v129 = v372;
          if (i == v371)
          {
            v123 = v364;
            goto LABEL_69;
          }
        }

LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if (isStackAllocationSafe)
        {
LABEL_27:
          v361 = v32;
          v360 = &v350;
          __chkstk_darwin(isStackAllocationSafe, v74);
          v364 = (&v350 - ((i + 15) & 0x3FFFFFFFFFFFFFF0));
          bzero(v364, i);
          v369 = 0;
          v75 = 0;
          v76 = v373 + 56;
          v77 = 1 << v373[32];
          v78 = -1;
          if (v77 < 64)
          {
            v78 = ~(-1 << v77);
          }

          v79 = v78 & *(v373 + 7);
          v4 = (v77 + 63) >> 6;
          do
          {
LABEL_30:
            if (v79)
            {
              v80 = __clz(__rbit64(v79));
              v372 = (v79 - 1) & v79;
              goto LABEL_37;
            }

            v81 = v75;
            do
            {
              v75 = v81 + 1;
              if (__OFADD__(v81, 1))
              {
                __break(1u);
                goto LABEL_182;
              }

              if (v75 >= v4)
              {
                goto LABEL_47;
              }

              v82 = *&v76[8 * v75];
              ++v81;
            }

            while (!v82);
            v80 = __clz(__rbit64(v82));
            v372 = (v82 - 1) & v82;
LABEL_37:
            v83 = v80 | (v75 << 6);
            v84 = *(v373 + 6);
            v371 = v83;
            i = *(v84 + 8 * v83);
            v85 = [i entityName];
            v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v87;

            v88 = [objc_opt_self() cdEntityName];
            v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v91 = v90;

            if (v86 == v89 && v32 == v91)
            {

              v32, v108, v109, v110, v111, v112, v113, v114;
              v91, v115, v116, v117, v118, v119, v120, v121;
              v79 = v372;
              break;
            }

            v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v32, v94, v95, v96, v97, v98, v99, v100;
            v91, v101, v102, v103, v104, v105, v106, v107;
            v79 = v372;
          }

          while ((v93 & 1) == 0);
          *(&v364->super.isa + ((v371 >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(&v364->super.isa + ((v371 >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << v371));
          v122 = __OFADD__(v369++, 1);
          if (!v122)
          {
            goto LABEL_30;
          }

          __break(1u);
LABEL_47:
          v16 = sub_1001A0DF0(v364, v361, v369, v373);
LABEL_48:
          v19 = v370;
          v32 = v16 & 0xC000000000000001;
          if ((v16 & 0xC000000000000001) == 0)
          {
            goto LABEL_193;
          }
        }

        else
        {
          v335 = swift_slowAlloc();
          v336 = sub_10026EC00(v335, v32, v373, sub_10026EA70, 0);
          if (v4)
          {
            goto LABEL_213;
          }

          v16 = v336;
          v19 = 0;

          v32 = v16 & 0xC000000000000001;
          if ((v16 & 0xC000000000000001) == 0)
          {
LABEL_193:
            if (!*(v16 + 16))
            {
LABEL_194:

              sub_10038E62C(&_swiftEmptyArrayStorage);
              return;
            }

            goto LABEL_50;
          }
        }

        if (!__CocoaSet.count.getter())
        {
          goto LABEL_194;
        }

LABEL_50:
        sub_10026E728(v16);
        if (v19)
        {

          return;
        }

        if (qword_100936528 != -1)
        {
          goto LABEL_196;
        }
      }
    }

LABEL_135:
    v356 = v227;
    v361 = v123;
    v228 = [(RDXPCStorePerformer *)v123 objectID];
    *v366 = v228;
    swift_storeEnumTagMultiPayload();
    v229 = v228;
    v230 = sub_100043AA8();
    v359 = v229;
    v231 = sub_100353614(v229, v357);
    if (v231)
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v232 = swift_allocObject();
      *(v232 + 16) = v358;
      *(v232 + 32) = v231;
      *&v380 = v232;
      sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      sub_100270528();
      sub_1000254F4();
      v233 = Sequence.compactMapToSet<A>(_:)();
      v231 = sub_10002595C(v233);
      v233, v234, v235, v236, v237, v238, v239, v240;
    }

    else
    {
      v232 = 0;
    }

    v241 = sub_1005362CC(v231, v230);
    v232, v242, v243, v244, v245, v246, v247, v248;
    v231, v249, v250, v251, v252, v253, v254, v255;

    v32 = sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = v358;
    *(inited + 32) = swift_getKeyPath();
    *&v378 = &_swiftEmptyArrayStorage;
    v4 = &v378;
    sub_100010D04(0, 1, 0);
    v257 = v378;
    if ((inited & 0xC000000000000001) != 0)
    {
      v258 = v19;
      v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_201;
      }

      v258 = v19;
      v128 = *(inited + 32);
    }

    v360 = v241;
    v259 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v260)
    {
      goto LABEL_211;
    }

    v261 = v259;
    v262 = v260;
    *(&v381 + 1) = &type metadata for String;

    *&v380 = v261;
    *(&v380 + 1) = v262;
    v264 = *(v257 + 16);
    v263 = *(v257 + 24);
    if (v264 >= v263 >> 1)
    {
      sub_100010D04((v263 > 1), v264 + 1, 1);
      v257 = v378;
    }

    *(v257 + 16) = v264 + 1;
    sub_100005EE0(&v380, (v257 + 32 * v264 + 32));
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v266 = v360;
    [v360 setPropertiesToFetch:isa];

    v267 = swift_allocObject();
    *(v267 + 16) = v358;
    if (qword_100936030 != -1)
    {
      swift_once();
    }

    v268 = qword_100974DE0;
    *(v267 + 32) = qword_100974DE0;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v269 = v268;
    v270 = Array._bridgeToObjectiveC()().super.isa;
    v267, v271, v272, v273, v274, v275, v276, v277;
    [v266 setSortDescriptors:v270];

    sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
    v278 = NSManagedObjectContext.fetch<A>(_:)();
    i = &_swiftEmptyArrayStorage;
    v286 = v361;
    if (v258)
    {
      break;
    }

    v287 = v278;
    v370 = 0;
    v376 = &_swiftEmptyArrayStorage;
    v373 = (v278 & 0xFFFFFFFFFFFFFF8);
    if (v278 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v278 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v288 = v367;
    v4 = &_swiftEmptyArrayStorage;
    if (v16)
    {
      v289 = 0;
      v372 = v287 & 0xC000000000000001;
      v371 = v287;
LABEL_152:
      v355 = v4;
      v32 = v289;
      while (1)
      {
        if (v372)
        {
          v290 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *(v373 + 2))
          {
            goto LABEL_184;
          }

          v290 = *(v287 + 8 * v32 + 32);
        }

        i = v290;
        v289 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_183;
        }

        *&v378 = 0x696669746E656469;
        *(&v378 + 1) = 0xEA00000000007265;
        v291 = [v290 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v291)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v378 = 0u;
          v379 = 0u;
        }

        v4 = v375;
        v380 = v378;
        v381 = v379;
        if (!*(&v379 + 1))
        {
          break;
        }

        v292 = v16;
        v293 = v374;
        v294 = swift_dynamicCast();
        (v288->super.isa)(v4, v294 ^ 1u, 1, v293);
        if ((*v369)(v4, 1, v293) == 1)
        {

          v16 = v292;
          v287 = v371;
          goto LABEL_154;
        }

        v295 = v368;
        (v364->super.isa)(v368, v4, v293);
        v296 = objc_opt_self();
        v4 = UUID._bridgeToObjectiveC()().super.isa;
        v297 = [v296 objectIDWithUUID:v4];

        v298 = v295;
        v288 = v367;
        (*v363)(v298, v293);
        v16 = v292;
        v287 = v371;
        if (v297)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v376 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v376 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            i = *((v376 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v4 = v376;
          if (v289 != v16)
          {
            goto LABEL_152;
          }

          goto LABEL_174;
        }

LABEL_155:
        ++v32;
        if (v289 == v16)
        {
          v4 = v355;
          goto LABEL_174;
        }
      }

      sub_1000050A4(&v380, &qword_100939ED0, &qword_100791B10);
      (v288->super.isa)(v4, 1, 1, v374);
LABEL_154:
      sub_1000050A4(v4, &unk_100939D90, "8\n\r");
      goto LABEL_155;
    }

LABEL_174:
    v287, v279, v280, v281, v282, v283, v284, v285;
    v299 = sub_100270964(v4);
    v4, v300, v301, v302, v303, v304, v305, v306;
    v307 = objc_allocWithZone(NSOrderedSet);
    v308 = Array._bridgeToObjectiveC()().super.isa;
    v299, v309, v310, v311, v312, v313, v314, v315;
    v316 = [v307 initWithArray:v308];

    v317 = v361;
    [v361 hack_overrideReminderIDsOrderingWithOrderedObjectIDs:v316];

    v318 = REMObjectID.codable.getter();
    v4 = v377;
    if ((v377 & 0xC000000000000001) != 0)
    {
      if (v377 >= 0)
      {
        v4 = v377 & 0xFFFFFFFFFFFFFF8;
      }

      v319 = v317;
      v320 = __CocoaDictionary.count.getter();
      v19 = v370;
      v32 = v353;
      v225 = v352;
      if (__OFADD__(v320, 1))
      {
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
        goto LABEL_202;
      }

      v4 = sub_10021C4B4(v4, v320 + 1);
    }

    else
    {
      v224 = v317;
      v19 = v370;
      v32 = v353;
      v225 = v352;
    }

    v226 = swift_isUniquelyReferenced_nonNull_native();
    *&v380 = v4;
    v4 = &v380;
    sub_1002C762C(v317, v318, v226);

    sub_1000513B4(v366);
    v377 = v380;
    v223 = v356;
    if (v356 == v225)
    {
      goto LABEL_207;
    }
  }

  sub_1000513B4(v366);
  v353, v321, v322, v323, v324, v325, v326, v327;
  v357, v328, v329, v330, v331, v332, v333, v334;

  v213 = v377;
LABEL_120:
  v213, v206, v207, v208, v209, v210, v211, v212;
}

unint64_t sub_100270528()
{
  result = qword_100946C40;
  if (!qword_100946C40)
  {
    sub_1000F514C(&qword_10093F5C0, &qword_1007A1FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946C40);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10027058C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = &_swiftEmptyArrayStorage;
    sub_1002530F8(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      sub_1000F5104(&unk_10093F810, &qword_10079CAB0);
      sub_1000F5104(&qword_10093EEA8, &qword_10079D670);
      swift_dynamicCast();
      v10 = v2;
      v7 = *v2->clientIdentity;
      v6 = *&v2->clientIdentity[8];
      if (v7 >= v6 >> 1)
      {
        sub_1002530F8((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *v2->clientIdentity = v7 + 1;
      sub_100054B6C(&v9, &v2->clientIdentity[40 * v7 + 16]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002706C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = &_swiftEmptyArrayStorage;
    sub_100253138(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10000A87C(v4, v11);
      sub_1000F5104(&qword_10093F7D8, &qword_10079E040);
      sub_1000F5104(&unk_10093F7E0, &qword_10079D618);
      swift_dynamicCast();
      v15 = v2;
      v6 = *v2->clientIdentity;
      v5 = *&v2->clientIdentity[8];
      if (v6 >= v5 >> 1)
      {
        sub_100253138((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      *v2->clientIdentity = v6 + 1;
      v7 = v2 + 40 * v6;
      v8 = v12;
      v9 = v13;
      *(v7 + 8) = v14;
      *(v7 + 2) = v8;
      *(v7 + 3) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_100270804(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1002532BC(0, v1, 0);
    v3 = a1 + 40;
    do
    {

      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      swift_dynamicCast();
      v4 = v8;
      v6 = *_swiftEmptyArrayStorage.clientIdentity;
      v5 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      if (v6 >= v5 >> 1)
      {
        sub_1002532BC((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      *_swiftEmptyArrayStorage.clientIdentity = v6 + 1;
      *&_swiftEmptyArrayStorage.clientIdentity[16 * v6 + 16] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002709C0(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void), uint64_t a4, void (*a5)(void *, unsigned __int8 *))
{
  if (a1 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = &_swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v26 = &_swiftEmptyArrayStorage;
  result = (a2)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v22 = a2;
    v11 = v26;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v26 = v11;
        v16 = *v11->clientIdentity;
        v15 = *&v11->clientIdentity[8];
        if (v16 >= v15 >> 1)
        {
          v22(v15 > 1, v16 + 1, 1);
          v11 = v26;
        }

        ++v13;
        v24 = a3(0);
        v25 = a4;
        v23[0] = v14;
        *v11->clientIdentity = v16 + 1;
        a5(v23, &v11->clientIdentity[40 * v16 + 16]);
      }

      while (v10 != v13);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v18 = *v17;
        v26 = v11;
        v19 = *v11->clientIdentity;
        v20 = *&v11->clientIdentity[8];
        v21 = v18;
        if (v19 >= v20 >> 1)
        {
          v22(v20 > 1, v19 + 1, 1);
          v11 = v26;
        }

        v24 = a3(0);
        v25 = a4;
        v23[0] = v21;
        *v11->clientIdentity = v19 + 1;
        a5(v23, &v11->clientIdentity[40 * v19 + 16]);
        ++v17;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100270BE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = &_swiftEmptyArrayStorage;
  result = sub_1002536BC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = *v3->clientIdentity;
        v7 = *&v3->clientIdentity[8];
        if (v8 >= v7 >> 1)
        {
          sub_1002536BC((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
        v16 = &off_1008E6E50;
        *&v14 = v6;
        *v3->clientIdentity = v8 + 1;
        sub_100054B6C(&v14, &v3->clientIdentity[40 * v8 + 16]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *v3->clientIdentity;
        v11 = *&v3->clientIdentity[8];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1002536BC((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
        v16 = &off_1008E6E50;
        *&v14 = v13;
        *v3->clientIdentity = v12 + 1;
        sub_100054B6C(&v14, &v3->clientIdentity[40 * v12 + 16]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100270E28(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v15 = &_swiftEmptyArrayStorage;
  result = sub_100010D04(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        a2(0);
        swift_dynamicCast();
        v15 = v5;
        v9 = *v5->clientIdentity;
        v8 = *&v5->clientIdentity[8];
        if (v9 >= v8 >> 1)
        {
          sub_100010D04((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *v5->clientIdentity = v9 + 1;
        sub_100005EE0(v14, &v5->clientIdentity[32 * v9 + 16]);
      }
    }

    else
    {
      v10 = (a1 + 32);
      a2(0);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *v5->clientIdentity;
        v12 = *&v5->clientIdentity[8];
        if (v13 >= v12 >> 1)
        {
          sub_100010D04((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *v5->clientIdentity = v13 + 1;
        sub_100005EE0(v14, &v5->clientIdentity[32 * v13 + 16]);
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10027102C(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = &_swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v17 = &_swiftEmptyArrayStorage;
  result = sub_100010D04(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1000060C8(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *v7->clientIdentity;
        v10 = *&v7->clientIdentity[8];
        if (v11 >= v10 >> 1)
        {
          sub_100010D04((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *v7->clientIdentity = v11 + 1;
        sub_100005EE0(v16, &v7->clientIdentity[32 * v11 + 16]);
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_1000060C8(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *v7->clientIdentity;
        v14 = *&v7->clientIdentity[8];
        if (v15 >= v14 >> 1)
        {
          sub_100010D04((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *v7->clientIdentity = v15 + 1;
        sub_100005EE0(v16, &v7->clientIdentity[32 * v15 + 16]);
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002712C4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = sub_100253D30(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = *_swiftEmptyArrayStorage.clientIdentity;
        v8 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v9 >= v8 >> 1)
        {
          v11 = v7;
          sub_100253D30((v8 > 1), v9 + 1, 1);
          v7 = v11;
        }

        ++v6;
        *_swiftEmptyArrayStorage.clientIdentity = v9 + 1;
        v10 = &_swiftEmptyArrayStorage + 16 * v9;
        *(v10 + 4) = v7;
        *(v10 + 5) = a2;
      }

      while (v4 != v6);
    }

    else
    {
      v12 = (a1 + 32);
      do
      {
        v13 = *_swiftEmptyArrayStorage.clientIdentity;
        v14 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        v15 = *v12;
        if (v13 >= v14 >> 1)
        {
          v17 = v14 > 1;
          v18 = v15;
          sub_100253D30(v17, v13 + 1, 1);
          v15 = v18;
        }

        *_swiftEmptyArrayStorage.clientIdentity = v13 + 1;
        v16 = &_swiftEmptyArrayStorage + 16 * v13;
        *(v16 + 4) = v15;
        *(v16 + 5) = a2;
        ++v12;
        --v4;
      }

      while (v4);
    }

    return &_swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void sub_100271468(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1)->clientIdentity;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *&v3->clientIdentity[8] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = v4 + v2;
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_1003658F0(isUniquelyReferenced_nonNull_native, v25, 1, v3, v11, v12, v13, v14);
  if (!*(a1 + 16))
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*&v3->clientIdentity[8] >> 1) - *v3->clientIdentity < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  a1, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *v3->clientIdentity;
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *v3->clientIdentity = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_100271590(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1000122D0(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = ((*(v3 + 0x18) >> 1) - v13);
  result = sub_100026AA8(&v34, (v3 + 8 * v13 + 32), v14, v8, &qword_1009391E0, REMObjectID_ptr, &qword_1009391F0);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_10001B860(v34);
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

void sub_100271948(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1)->clientIdentity;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *&v3->clientIdentity[8] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_100365A00(isUniquelyReferenced_nonNull_native, v26, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = (*&v3->clientIdentity[8] >> 1) - *v3->clientIdentity;
  sub_1000F5104(&qword_100939860, &unk_10079D480);
  if (v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  a1, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3->clientIdentity;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3->clientIdentity = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_100271A98(uint64_t a1)
{
  v6 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v9 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v8);
    result = v9 + v8;
    if (!v10)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v10 = __OFADD__(v17, v8);
  result = v17 + v8;
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1000122D0(result, 1);
  v3 = *v1;
  v2 = *v1 & 0xFFFFFFFFFFFFFF8;
  v12 = *(v2 + 0x10);
  v13 = (*(v2 + 0x18) >> 1) - v12;
  result = sub_100278FCC(&v40, (v2 + 8 * v12 + 32), v13, a1);
  if (result < v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = result;
  if (result >= 1)
  {
    v15 = *(v2 + 16);
    v10 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v10)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v2 + 16) = v16;
  }

  result = v40;
  if (v14 != v13)
  {
LABEL_11:
    result = sub_10001B860(result);
    *v6 = v3;
    return result;
  }

LABEL_16:
  v4 = *(v2 + 16);
  v16 = v43;
  v5 = v44;
  v36 = result;
  v37 = v41;
  v38 = v42;
  if (result < 0)
  {
LABEL_20:
    v18 = v16;
    if (!__CocoaSet.Iterator.next()())
    {
      result = v36;
      goto LABEL_11;
    }

    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    swift_dynamicCast();
    v20 = v39;
    goto LABEL_31;
  }

  if (v44)
  {
    v18 = v43;
    v19 = v43;
LABEL_30:
    v24 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v20 = *(*(result + 48) + ((v19 << 9) | (8 * v24)));
  }

  else
  {
    v21 = (v42 + 64) >> 6;
    if (v21 <= v43 + 1)
    {
      v22 = v43 + 1;
    }

    else
    {
      v22 = (v42 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_57;
      }

      if (v19 >= v21)
      {
        break;
      }

      v5 = *(v41 + 8 * v19);
      ++v16;
      if (v5)
      {
        v18 = v19;
        goto LABEL_30;
      }
    }

    v20 = 0;
    v5 = 0;
    v18 = v23;
  }

LABEL_31:
  v25 = v37;
  v26 = v18;
  if (!v20)
  {
    result = v36;
    goto LABEL_11;
  }

  v27 = v18;
  result = v36;
LABEL_33:
  v28 = v5;
  if (v4 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = v26;
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v28 = v5;
    v26 = v34;
    v25 = v37;
    result = v36;
  }

  v3 = *v6;
  v35 = *v6 & 0xFFFFFFFFFFFFFF8;
  if (v4 <= *(v35 + 0x18) >> 1)
  {
    v29 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  }

  else
  {
    v29 = v4;
  }

  while (1)
  {
    if (v4 == v29)
    {
      v5 = v28;
      *(v35 + 16) = v29;
      v4 = v29;
      goto LABEL_33;
    }

    *(v35 + 32 + 8 * v4++) = v20;
    if ((result & 0x8000000000000000) == 0)
    {
      break;
    }

    v31 = v28;
    v32 = v26;
    if (!__CocoaSet.Iterator.next()())
    {
      result = v36;
LABEL_51:
      *(v35 + 16) = v4;
      goto LABEL_11;
    }

    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    swift_dynamicCast();
    v20 = v39;
LABEL_40:
    result = v36;
    v25 = v37;
    v26 = v32;
    v28 = v31;
    if (!v20)
    {
      goto LABEL_51;
    }
  }

  v33 = v27;
  if (v28)
  {
    v30 = v27;
LABEL_39:
    v31 = (v28 - 1) & v28;
    v32 = v30;
    v20 = *(*(result + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v28)))));

    goto LABEL_40;
  }

  while (1)
  {
    v30 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v30 >= ((v38 + 64) >> 6))
    {
      goto LABEL_51;
    }

    v28 = *(v25 + 8 * v30);
    ++v33;
    if (v28)
    {
      v27 = v30;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

void sub_100271EA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1)->clientIdentity;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *&v3->clientIdentity[8] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = v4 + v2;
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_100365788(isUniquelyReferenced_nonNull_native, v25, 1, v3, v11, v12, v13, v14);
  if (!*(a1 + 16))
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*&v3->clientIdentity[8] >> 1) - *v3->clientIdentity < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  a1, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *v3->clientIdentity;
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *v3->clientIdentity = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_10027218C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1)->clientIdentity;
  v5 = &v4[v2];
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *&v3->clientIdentity[8] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = &v4[v2];
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_100366350(isUniquelyReferenced_nonNull_native, v25, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*&v3->clientIdentity[8] >> 1) - *v3->clientIdentity < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000F5104(&unk_10093F690, &qword_10079D4A8);
  swift_arrayInitWithCopy();
  a1, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *v3->clientIdentity;
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *v3->clientIdentity = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100272438(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1)->clientIdentity;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *&v3->clientIdentity[8] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = v4 + v2;
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_1003679E0(isUniquelyReferenced_nonNull_native, v25, 1, v3, v11, v12, v13, v14);
  if (!*(a1 + 16))
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*&v3->clientIdentity[8] >> 1) - *v3->clientIdentity < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  a1, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *v3->clientIdentity;
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *v3->clientIdentity = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_100272574(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v5 = *(v4 - 8);
  *&v7 = __chkstk_darwin(v4, v6).n128_u64[0];
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 count];
  v11 = *v2;
  v12 = *(*v2)->clientIdentity;
  v13 = &v10[v12];
  if (__OFADD__(v12, v10))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = *&v11->clientIdentity[8] >> 1, v20 < v13))
  {
    if (v12 <= v13)
    {
      v21 = v13;
    }

    else
    {
      v21 = v12;
    }

    v11 = sub_1003658F0(isUniquelyReferenced_nonNull_native, v21, 1, v11, v16, v17, v18, v19);
    v20 = *&v11->clientIdentity[8] >> 1;
  }

  v22 = *v11->clientIdentity;
  v23 = v20 - v22;
  sub_10027D33C(v9, &v11->clientIdentity[32 * v22 + 16], v20 - v22);
  if (v24 < v14)
  {
    goto LABEL_16;
  }

  if (v24 >= 1)
  {
    v25 = *v11->clientIdentity;
    v26 = __OFADD__(v25, v24);
    v27 = v25 + v24;
    if (v26)
    {
      __break(1u);
      goto LABEL_33;
    }

    *v11->clientIdentity = v27;
  }

  if (v24 == v23)
  {
LABEL_17:
    v29 = sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
    if (v29 == sub_1000F5104(&qword_10093CB40, &qword_1007A4450))
    {
      goto LABEL_13;
    }

    v30 = *v11->clientIdentity;
    sub_10027D940(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
    dispatch thunk of IteratorProtocol.next()();
    while (1)
    {
      sub_10014F5CC(v43, &v41);
      if (!v42)
      {
        break;
      }

      sub_1000050A4(&v41, &qword_100939ED0, &qword_100791B10);
      v35 = *&v11->clientIdentity[8];
      v36 = v35 >> 1;
      if ((v35 >> 1) < v30 + 1)
      {
        v11 = sub_1003658F0((v35 > 1), v30 + 1, 1, v11, v31, v32, v33, v34);
        v36 = *&v11->clientIdentity[8] >> 1;
      }

      sub_10014F5CC(v43, &v39);
      if (v40)
      {
        if (v30 <= v36)
        {
          v37 = v36;
        }

        else
        {
          v37 = v30;
        }

        v38 = &v11->clientIdentity[32 * v30 + 16];
        while (1)
        {
          sub_100005EE0(&v39, &v41);
          if (v37 == v30)
          {
            break;
          }

          sub_1000050A4(v43, &qword_100939ED0, &qword_100791B10);
          sub_100005EE0(&v41, v38);
          ++v30;
          dispatch thunk of IteratorProtocol.next()();
          sub_10014F5CC(v43, &v39);
          v38 += 32;
          if (!v40)
          {
            goto LABEL_19;
          }
        }

        sub_10000607C(&v41);
        v30 = v37;
        *v11->clientIdentity = v37;
      }

      else
      {
LABEL_19:
        sub_1000050A4(&v39, &qword_100939ED0, &qword_100791B10);
        *v11->clientIdentity = v30;
      }
    }

LABEL_33:
    sub_1000050A4(v43, &qword_100939ED0, &qword_100791B10);
    (*(v5 + 8))(v9, v4);
    result = sub_1000050A4(&v41, &qword_100939ED0, &qword_100791B10);
    goto LABEL_14;
  }

LABEL_13:
  result = (*(v5 + 8))(v9, v4);
LABEL_14:
  *v2 = v11;
  return result;
}

void _s7remindd13REMCDTemplateC19sortChildrenObjectsyyF_0()
{
  v1 = v0;
  if ((sub_100273748() & 1) == 0)
  {
    v2 = [v0 remObjectID];
    if (v2)
    {
      v63 = v2;
      v3 = [v0 storeControllerManagedObjectContext];
      if (v3)
      {
        v4 = v3;
        v5 = qword_1009360E8;
        v6 = v63;
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = sub_100425A50(v63, 0);
        type metadata accessor for REMCDTemplateSection();
        v8 = [objc_allocWithZone(NSFetchRequest) init];
        v9 = [swift_getObjCClassFromMetadata() entity];
        [v8 setEntity:v9];

        [v8 setAffectedStores:0];
        [v8 setPredicate:v7];

        [v8 setPropertiesToFetch:0];
        [v8 setRelationshipKeyPathsForPrefetching:0];
        sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v8 setSortDescriptors:isa];

        v11 = NSManagedObjectContext.fetch<A>(_:)();
        v12 = [v1 sectionIDsOrderingAsData];
        if (v12)
        {
          v13 = v12;
          v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
          static REMJSONRepresentable.fromJSONData(_:)();
          sub_10001BBA0(v14, v16);
          v17 = REMOrderedIdentifierMap.reorder<A>(objects:)();
          v64 = v65;
          v11, v18, v19, v20, v21, v22, v23, v24;
          if (qword_100935DA8 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_100006654(v25, qword_10093F4A0);
          v26 = v1;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v65 = v62;
            *v29 = 136315138;
            v30 = [v26 remObjectID];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 description];

              v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v35 = v34;
            }

            else
            {
              v33 = 7104878;
              v35 = 0xE300000000000000;
            }

            v54 = sub_10000668C(v33, v35, &v65);
            v35, v55, v56, v57, v58, v59, v60, v61;
            *(v29 + 4) = v54;
            _os_log_impl(&_mh_execute_header, v27, v28, "REMCDTemplate+CloudKit#sortChildSections(): Sorted child sections {cdTemplate: %s}", v29, 0xCu);
            sub_10000607C(v62);
          }
        }

        else
        {
          v17 = v11;
        }

        v36 = sub_100270E28(v17, type metadata accessor for REMCDTemplateSection);
        v17, v37, v38, v39, v40, v41, v42, v43;
        v44 = objc_allocWithZone(NSMutableOrderedSet);
        v45 = Array._bridgeToObjectiveC()().super.isa;
        v36, v46, v47, v48, v49, v50, v51, v52;
        v53 = [v44 initWithArray:v45];

        [v1 setSections:v53];
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10027324C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093F4A0);
  v1 = sub_100006654(v0, qword_10093F4A0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_10027331C(char a1)
{
  result = 0x626D456567646162;
  switch(a1)
  {
    case 1:
      result = 0x726F6C6F63;
      break;
    case 2:
      result = 0x6E6F697461657263;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000026;
      break;
    case 5:
      result = 0xD000000000000028;
      break;
    case 6:
      result = 0xD000000000000025;
      break;
    case 7:
      result = 1701667182;
      break;
    case 8:
      result = 0x6341746E65726170;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0x53676E6974726F73;
      break;
    case 16:
      result = 0x694C656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10027353C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10027331C(*a1);
  v5 = v4;
  v6 = sub_10027331C(v2);
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

Swift::Int sub_1002735C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10027331C(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_100273628(uint64_t a1)
{
  sub_10027331C(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_10027367C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10027331C(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_1002736DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10027D52C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10027370C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10027331C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100273748()
{
  v1 = [v0 managedObjectContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && (v4 = v3, (v5 = [v0 recordID]) != 0))
  {
    v6 = v5;
    if ([v4 containerShouldSortChildrenAfterFetchingWithRecordID:v5])
    {
      if (qword_100935DA8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006654(v7, qword_10093F4A0);
      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138543362;
        *(v11 + 4) = v8;
        *v12 = v6;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v9, v10, "Sorting children (sections) deferred {templateRecordID: %{public}@}", v11, 0xCu);
        sub_1000050A4(v12, &unk_100938E70, &unk_100797230);

        v8 = v9;
        v9 = v13;
      }

      v14 = 1;
      v6 = v9;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t static REMCDTemplate.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for REMCDTemplate();
  v6 = String._bridgeToObjectiveC()();
  v7 = [swift_getObjCClassFromMetadata() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDTemplate.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v9 = String._bridgeToObjectiveC()();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v19 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v19)
  {
    v20 = [a2 ckIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = v19;
      [v22 setAccount:a2];
      [v22 mergeDataFromRecord:a1 accountID:v21];

      [v22 setCkServerRecord:a1];
      [v22 setInCloud:1];

      [v22 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935DA8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_10093F4A0);
      v24 = a2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v4;
        *v27 = 136446466;
        swift_getMetatypeMetadata();
        v28 = String.init<A>(describing:)();
        v30 = v29;
        v31 = sub_10000668C(v28, v29, &v54);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        v39 = [v24 remObjectID];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 description];

          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        v45 = sub_10000668C(v42, v44, &v54);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v27 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v25, v26, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v27, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v19;
}

Swift::String __swiftcall REMCDTemplate.recordType()()
{
  v0 = 0x6574616C706D6554;
  v1 = 0xE800000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDTemplate.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v6, v7);
  v9 = v92 - v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = type metadata accessor for REMCDTemplate();
  v95.receiver = v3;
  v95.super_class = v11;
  objc_msgSendSuper2(&v95, "mergeDataFromRecord:accountID:", from.super.isa, v10);

  v12 = [(objc_class *)from.super.isa recordID];
  v13 = [v12 recordName];

  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    v13 = String._bridgeToObjectiveC()();
    v15, v16, v17, v18, v19, v20, v21, v22;
  }

  v23 = [v3 ckIdentifierFromRecordName:v13];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    v23 = String._bridgeToObjectiveC()();
    v25, v26, v27, v28, v29, v30, v31, v32;
  }

  [v3 setCkIdentifier:v23];

  v33 = [v3 mergeDataRevertedLocallyMarkedForDeletion];
  v34 = [v3 mergeDataRefusedToMergeMarkedForDeletion];
  v94 = 0;
  v35 = v3;
  v36 = from.super.isa;
  sub_1004D6DF4(v36, v33, v34, v35, v35, v36, &v94, ObjectType);
  if (v94 == 1)
  {
    if (qword_100935DA8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10093F4A0);
    v38 = v35;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v41 = 136446722;
      v42 = [v38 ckIdentifier];
      if (v42)
      {
        v43 = v42;
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0;
      }

      v92[0] = v44;
      v92[1] = v46;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v47 = Optional.descriptionOrNil.getter();
      v49 = v48;
      v46, v48, v50, v51, v52, v53, v54, v55;
      v56 = sub_10000668C(v47, v49, &v93);
      v49, v57, v58, v59, v60, v61, v62, v63;
      *(v41 + 4) = v56;
      *(v41 + 12) = 2082;
      [v38 markedForDeletion];
      v64 = Bool.yesno.getter();
      v66 = v65;
      v67 = sub_10000668C(v64, v65, &v93);
      v66, v68, v69, v70, v71, v72, v73, v74;
      *(v41 + 14) = v67;
      *(v41 + 22) = 2082;
      v75 = [v38 sourceListIDURL];
      if (v75)
      {
        v76 = v75;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v77 = 0;
      }

      else
      {
        v77 = 1;
      }

      v78 = type metadata accessor for URL();
      (*(*(v78 - 8) + 56))(v9, v77, 1, v78);
      v79 = Optional.descriptionOrNil.getter();
      v81 = v80;
      sub_1000050A4(v9, &unk_1009441F0, &qword_100795760);
      v82 = sub_10000668C(v79, v81, &v93);
      v81, v83, v84, v85, v86, v87, v88, v89;
      *(v41 + 24) = v82;
      _os_log_impl(&_mh_execute_header, v39, v40, "REMCDTemplate.mergeData(from record:accountID:) will insert pending post-save action '.notify_SharedToMeListPinnedStateDidBecomeStale' due to change in 'sourceListIDURL' {ckIdentifier: %{public}s, markedForDeletion: %{public}s, sourceListIDURL: %{public}s}", v41, 0x20u);
      swift_arrayDestroy();
    }

    v90 = [v38 storeControllerManagedObjectContext];
    if (v90)
    {
      v91 = v90;
      [v90 setPendingPostSaveActions:{objc_msgSend(v90, "pendingPostSaveActions") | 4}];
    }
  }
}

void sub_100274408(_BYTE *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v294 = a5;
  v300 = a4;
  v301 = a3;
  v302 = a2;
  v299 = 0;
  v6 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v6 - 8, v7);
  v298 = &v293 - v8;
  v9 = type metadata accessor for URL();
  v296 = *(v9 - 8);
  v297 = v9;
  __chkstk_darwin(v9, v10);
  v293 = &v293 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v293 - v14;
  v16 = type metadata accessor for UUID();
  v295 = *(v16 - 8);
  __chkstk_darwin(v16, v17);
  v19 = &v293 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v20 - 8, v21);
  v23 = &v293 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v27 = &v293 - v26;
  __chkstk_darwin(v28, v29);
  v31 = &v293 - v30;
  __chkstk_darwin(v32, v33);
  v35 = &v293 - v34;
  __chkstk_darwin(v36, v37);
  v39 = &v293 - v38;
  *&v42 = __chkstk_darwin(v40, v41).n128_u64[0];
  v44 = &v293 - v43;
  switch(*a1)
  {
    case 1:
      v89 = CKRecord.subscript.getter();
      v90 = v302;
      if (v89)
      {
        v305 = v89;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        if (swift_dynamicCast())
        {
          v91 = v304;
          v46 = sub_10013E558(v303, v304);
          v91, v92, v93, v94, v95, v96, v97, v98;
          if (v46)
          {
            [v90 setColor:v46];
            goto LABEL_111;
          }
        }
      }

      [v90 setColor:0];
      return;
    case 2:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v109 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v110 = *(v109 - 8);
      isa = 0;
      if ((*(v110 + 48))(v44, 1, v109) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v110 + 8))(v44, v109);
      }

      [v302 setCreationDate:isa];
      goto LABEL_54;
    case 3:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v83 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v84 = *(v83 - 8);
      isa = 0;
      if ((*(v84 + 48))(v39, 1, v83) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v84 + 8))(v39, v83);
      }

      [v302 setLastModifiedDate:isa];
      goto LABEL_54;
    case 4:
      return;
    case 5:
      v120 = [v301 encryptedValues];
      v121 = String._bridgeToObjectiveC()();
      v122 = [v120 objectForKeyedSubscript:v121];
      swift_unknownObjectRelease();

      if (v122)
      {
        v305 = v122;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        v123 = swift_dynamicCast();
        if (v123)
        {
          v124 = v303;
        }

        else
        {
          v124 = 0;
        }

        if (v123)
        {
          v125 = v304;
        }

        else
        {
          v125 = 0;
        }
      }

      else
      {
        v124 = 0;
        v125 = 0;
      }

      v157 = [v302 membershipsOfRemindersInSectionsChecksum];
      if (v157)
      {
        v158 = v157;
        v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v161 = v160;

        if (v125)
        {
          if (v159 == v124 && v125 == v161)
          {
            v125, v162, v163, v164, v165, v166, v167, v168;
            v161, v169, v170, v171, v172, v173, v174, v175;
            return;
          }

          v176 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v161, v177, v178, v179, v180, v181, v182, v183;
          if (v176)
          {
            v125, v184, v185, v186, v187, v188, v189, v190;
            return;
          }
        }

        else
        {
          v161, v162, v163, v164, v165, v166, v167, v168;
        }
      }

      else if (!v125)
      {
        return;
      }

      v191 = v302;
      v300 = [v302 membershipsOfRemindersInSectionsChecksum];
      v192 = [v191 membershipsOfRemindersInSectionsAsData];
      if (v192)
      {
        v193 = v192;
        v194 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v196 = v195;
      }

      else
      {
        v194 = 0;
        v196 = 0xF000000000000000;
      }

      v197 = [v191 membershipsOfRemindersInSectionsAsData];
      v198 = &selRef_setPublicLinkLastModifiedDate_;
      if (v197)
      {
        v199 = v197;
        v200 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v202 = v201;

        sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
        v203 = v299;
        static REMJSONRepresentable.fromJSONData(_:)();
        v299 = v203;
        if (v203)
        {
          sub_10001BBA0(v200, v202);
          v125, v204, v205, v206, v207, v208, v209, v210;
          goto LABEL_103;
        }

        sub_10001BBA0(v200, v202);
        v211 = v303;
        v198 = &selRef_setPublicLinkLastModifiedDate_;
      }

      else
      {
        v211 = 0;
      }

      if (v125)
      {
        v217 = String._bridgeToObjectiveC()();
        v125, v218, v219, v220, v221, v222, v223, v224;
      }

      else
      {
        v217 = 0;
      }

      [v191 v198[215]];

      v225 = sub_1004E183C(v301, 0xD000000000000026, 0x80000001007F0660);
      if (v226 >> 60 == 15)
      {
        v227 = 0;
      }

      else
      {
        v228 = v225;
        v229 = v226;
        v227 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v228, v229);
      }

      v230 = v299;
      [v191 setMembershipsOfRemindersInSectionsAsData:v227];

      if (!v211)
      {

        sub_100031A14(v194, v196);
        return;
      }

      v231 = v211;
      sub_1005EB1B0(v231);
      if (!v230)
      {

        sub_100031A14(v194, v196);
        return;
      }

LABEL_103:
      if (qword_100935DA8 != -1)
      {
        swift_once();
      }

      v232 = type metadata accessor for Logger();
      sub_100006654(v232, qword_10093F4A0);
      v233 = v191;
      swift_errorRetain();
      v234 = Logger.logObject.getter();
      v235 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v234, v235))
      {
        v236 = swift_slowAlloc();
        v303 = swift_slowAlloc();
        *v236 = 136446722;
        v237 = sub_1001424F8(v294);
        v239 = v238;
        v240 = sub_10000668C(v237, v238, &v303);
        v239, v241, v242, v243, v244, v245, v246, v247;
        *(v236 + 4) = v240;
        *(v236 + 12) = 2082;
        v248 = [v233 remObjectID];
        if (v248)
        {
          v249 = v248;
          v250 = [v248 description];
          v302 = v233;
          v251 = v250;

          v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v254 = v253;

          v233 = v302;
        }

        else
        {
          v254 = 0xE300000000000000;
          v252 = 7104878;
        }

        v272 = sub_10000668C(v252, v254, &v303);
        v254, v273, v274, v275, v276, v277, v278, v279;
        *(v236 + 14) = v272;
        *(v236 + 22) = 2082;
        swift_getErrorValue();
        v280 = Error.rem_errorDescription.getter();
        v282 = v281;
        v283 = sub_10000668C(v280, v281, &v303);
        v282, v284, v285, v286, v287, v288, v289, v290;
        *(v236 + 24) = v283;
        _os_log_impl(&_mh_execute_header, v234, v235, "%{public}s#mergeData(from record: CKRecord, accountID:): Failed to update 'membershipsOfRemindersInSections'. {objectID: %{public}s, error: %{public}s}", v236, 0x20u);
        swift_arrayDestroy();
      }

      v291 = v300;
      [v233 setMembershipsOfRemindersInSectionsChecksum:v300];

      if (v196 >> 60 == 15)
      {
        v292 = 0;
      }

      else
      {
        sub_100029344(v194, v196);
        v292 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v194, v196);
      }

      [v233 setMembershipsOfRemindersInSectionsAsData:v292];
      sub_100031A14(v194, v196);

      return;
    case 6:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v139 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v140 = *(v139 - 8);
      isa = 0;
      if ((*(v140 + 48))(v35, 1, v139) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v140 + 8))(v35, v139);
      }

      [v302 setMostRecentPublicLinkUpdateRequestDate:isa];
      goto LABEL_54;
    case 7:
      v111 = [v301 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      swift_unknownObjectRelease();
      v112 = v304;
      if (v304)
      {
        v46 = String._bridgeToObjectiveC()();
        v112, v113, v114, v115, v116, v117, v118, v119;
      }

      else
      {
        v46 = 0;
      }

      [v302 setName:v46];
      goto LABEL_111;
    case 8:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      if (v303 == 2)
      {
        v143 = 0;
        v144 = v302;
        v145 = v300;
      }

      else
      {
        v144 = v302;
        v145 = v300;
        if (v303)
        {
          v156 = v302;
          v143 = [v302 account];
          v144 = v156;
        }

        else
        {
          v143 = 0;
        }
      }

      [v144 setParentAccount:v143];

      *v145 = 1;
      return;
    case 9:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      v46 = 0;
      v87 = v304;
      if (v304 >> 60 != 15)
      {
        v88 = v303;
        v46 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v88, v87);
      }

      [v302 setPublicLinkConfigurationData:v46];
      goto LABEL_111;
    case 0xA:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v141 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v142 = *(v141 - 8);
      isa = 0;
      if ((*(v142 + 48))(v31, 1, v141) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v142 + 8))(v31, v141);
      }

      [v302 setPublicLinkCreationDate:isa];
      goto LABEL_54;
    case 0xB:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v80 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v81 = *(v80 - 8);
      isa = 0;
      if ((*(v81 + 48))(v27, 1, v80) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v81 + 8))(v27, v80);
      }

      [v302 setPublicLinkExpirationDate:isa];
      goto LABEL_54;
    case 0xC:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v85 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v86 = *(v85 - 8);
      isa = 0;
      if ((*(v86 + 48))(v23, 1, v85) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v86 + 8))(v23, v85);
      }

      [v302 setPublicLinkLastModifiedDate:isa];
      goto LABEL_54;
    case 0xD:
      v126 = [v301 encryptedValues];
      v127 = String._bridgeToObjectiveC()();
      v128 = [v126 objectForKeyedSubscript:v127];
      swift_unknownObjectRelease();

      v129 = v302;
      if (!v128)
      {
        goto LABEL_47;
      }

      v305 = v128;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_47;
      }

      v130 = v304;
      UUID.init(uuidString:)();
      v130, v131, v132, v133, v134, v135, v136, v137;
      v138 = v295;
      if ((*(v295 + 48))(v15, 1, v16) == 1)
      {
        sub_1000050A4(v15, &unk_100939D90, "8\n\r");
LABEL_47:
        [v129 setPublicLinkURLUUID:0];
      }

      else
      {
        (*(v138 + 32))(v19, v15, v16);
        v216 = UUID._bridgeToObjectiveC()().super.isa;
        [v129 setPublicLinkURLUUID:v216];

        (*(v138 + 8))(v19, v16);
      }

      return;
    case 0xE:
      v70 = sub_1004E183C(v301, 0xD000000000000018, 0x80000001007F05C0);
      v72 = v71;
      0x80000001007F05C0, v71, v73, v74, v75, v76, v77, v78;
      if (v72 >> 60 == 15)
      {
        v79 = 0;
      }

      else
      {
        v79 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v70, v72);
      }

      [v302 setSectionIDsOrderingAsData:v79];

      _s7remindd13REMCDTemplateC19sortChildrenObjectsyyF_0();
      return;
    case 0xF:
      v99 = CKRecord.subscript.getter();
      v100 = v302;
      if (v99 && (v305 = v99, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
      {
        v101 = v304;
        isa = String._bridgeToObjectiveC()();
        v101, v102, v103, v104, v105, v106, v107, v108;
        [v100 setSortingStyle:isa];
LABEL_54:
      }

      else
      {
        if (qword_100935DA8 != -1)
        {
          swift_once();
        }

        v146 = type metadata accessor for Logger();
        sub_100006654(v146, qword_10093F4A0);
        v147 = v100;
        v46 = Logger.logObject.getter();
        v148 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v46, v148))
        {
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v305 = v150;
          *v149 = 136446210;
          v151 = [v147 ckIdentifier];
          if (v151)
          {
            v152 = v151;
            v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v155 = v154;
          }

          else
          {
            v153 = 0;
            v155 = 0;
          }

          v303 = v153;
          v304 = v155;
          sub_1000F5104(&unk_100939E40, &qword_100791BD0);
          v255 = Optional.descriptionOrNil.getter();
          v257 = v256;
          v155, v256, v258, v259, v260, v261, v262, v263;
          v264 = sub_10000668C(v255, v257, &v305);
          v257, v265, v266, v267, v268, v269, v270, v271;
          *(v149 + 4) = v264;
          _os_log_impl(&_mh_execute_header, v46, v148, "Template (ckIdentifier: %{public}s) does not have a sorting style", v149, 0xCu);
          sub_10000607C(v150);
        }

LABEL_111:
      }

      return;
    case 0x10:
      v54 = [v301 encryptedValues];
      v55 = String._bridgeToObjectiveC()();
      v56 = [v54 objectForKeyedSubscript:v55];
      swift_unknownObjectRelease();

      v57 = v302;
      v58 = v300;
      if (!v56)
      {
        goto LABEL_8;
      }

      v305 = v56;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_8;
      }

      v59 = v304;
      v60 = v298;
      URL.init(string:)();
      v59, v61, v62, v63, v64, v65, v66, v67;
      v69 = v296;
      v68 = v297;
      if ((*(v296 + 48))(v60, 1, v297) == 1)
      {
        sub_1000050A4(v298, &unk_1009441F0, &qword_100795760);
LABEL_8:
        [v57 setSourceListIDURL:0];
      }

      else
      {
        v212 = v293;
        (*(v69 + 32))(v293, v298, v68);
        URL._bridgeToObjectiveC()(v213);
        v215 = v214;
        [v57 setSourceListIDURL:v214];

        (*(v69 + 8))(v212, v68);
      }

      *v58 = 1;
      return;
    default:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      v45 = v304;
      if (v304)
      {
        v46 = String._bridgeToObjectiveC()();
        v45, v47, v48, v49, v50, v51, v52, v53;
      }

      else
      {
        v46 = 0;
      }

      [v302 setBadgeEmblem:v46];
      goto LABEL_111;
  }
}

CKRecord_optional __swiftcall REMCDTemplate.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v220 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v7 - 8, v8);
  v258 = &v220 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v259 = &v220 - v12;
  v247 = type metadata accessor for UUID();
  v13 = *(v247 - 8);
  __chkstk_darwin(v247, v14);
  v16 = &v220 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v17 - 8, v18);
  v20 = &v220 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v257 = &v220 - v23;
  v24 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v24 - 8, v25);
  v27 = &v220 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v256 = &v220 - v30;
  __chkstk_darwin(v31, v32);
  v250 = &v220 - v33;
  __chkstk_darwin(v34, v35);
  v255 = &v220 - v36;
  __chkstk_darwin(v37, v38);
  v260 = &v220 - v39;
  __chkstk_darwin(v40, v41);
  v254 = &v220 - v42;
  __chkstk_darwin(v43, v44);
  v249 = &v220 - v45;
  __chkstk_darwin(v46, v47);
  v253 = &v220 - v48;
  __chkstk_darwin(v49, v50);
  v261 = &v220 - v51;
  __chkstk_darwin(v52, v53);
  v252 = &v220 - v54;
  __chkstk_darwin(v55, v56);
  v248 = &v220 - v57;
  *&v60 = __chkstk_darwin(v58, v59).n128_u64[0];
  v251 = &v220 - v61;
  if ([v1 isOwnedByCurrentUser])
  {
    v244 = v27;
    v245 = v20;
    v226 = v16;
    v62 = type metadata accessor for REMCDTemplate();
    v265.receiver = v1;
    v265.super_class = v62;
    v63 = objc_msgSendSuper2(&v265, "newlyCreatedRecord");
    v65 = v63;
    if (v63)
    {
      v225 = v6;
      v243 = v2;
      v66 = 0;
      v242 = (v3 + 56);
      v241 = (v3 + 48);
      v224 = (v3 + 16);
      v223 = (v3 + 8);
      v229 = "ShowingLargeAttachments";
      v240 = " {ckRecord.recordType: ";
      v239 = (v13 + 56);
      v238 = (v13 + 48);
      v222 = (v13 + 16);
      v221 = (v13 + 8);
      v237 = "csInsensitiveHashtagLabels";
      v236 = " a non-nil String";
      v235 = "PublicLinkLastModifiedDate";
      v234 = "PublicLinkCreationDate";
      v233 = "SectionIDsOrderingAsData";
      v232 = "PublicLinkConfigurationData";
      v231 = "TemplateIdentifier";
      v228 = "indersInSectionsChecksum";
      v230 = "LinkUpdateRequestDate";
      v67 = "8\n\r";
      v68 = v247;
      v70 = v260;
      v69 = v261;
      v246 = v1;
      v227 = v63;
      do
      {
        v84 = *(&off_1008DDD20 + v66++ + 32);
        switch(v84)
        {
          case 1:
            v126 = [v1 color];
            if (v126)
            {
              v127 = v126;
              v128 = sub_1001E1818();
              if (v129)
              {
                *(&v263 + 1) = &type metadata for String;
                v264 = &protocol witness table for String;
                *&v262 = v128;
                *(&v262 + 1) = v129;
              }

              else
              {
                v264 = 0;
                v262 = 0u;
                v263 = 0u;
              }

              sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
              CKRecordKeyValueSetting.subscript.setter();
            }

            else
            {
              CKRecord.subscript.setter();
            }

            goto LABEL_11;
          case 2:
            v135 = [v1 creationDate];
            v109 = v68;
            if (v135)
            {
              v136 = v248;
              v137 = v135;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v138 = 0;
            }

            else
            {
              v138 = 1;
              v136 = v248;
            }

            v178 = v1;
            v189 = type metadata accessor for Date();
            v190 = *(v189 - 8);
            (*(v190 + 56))(v136, v138, 1, v189);
            v191 = v251;
            sub_100031B58(v136, v251, &unk_100938850, qword_100795AE0);
            if ((*(v190 + 48))(v191, 1, v189) == 1)
            {
              sub_1000050A4(v191, &unk_100938850, qword_100795AE0);
              v262 = 0u;
              v263 = 0u;
              v264 = 0;
            }

            else
            {
              *(&v263 + 1) = v189;
              v264 = &protocol witness table for Date;
              v192 = sub_1000103CC(&v262);
              (*(v190 + 32))(v192, v191, v189);
            }

            v70 = v260;
            v69 = v261;
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.setter();
            goto LABEL_94;
          case 3:
            v113 = [v1 lastModifiedDate];
            if (v113)
            {
              v114 = v113;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v115 = 0;
            }

            else
            {
              v115 = 1;
            }

            v182 = type metadata accessor for Date();
            v183 = *(v182 - 8);
            (*(v183 + 56))(v69, v115, 1, v182);
            v184 = v252;
            sub_100031B58(v69, v252, &unk_100938850, qword_100795AE0);
            if ((*(v183 + 48))(v184, 1, v182) == 1)
            {
              sub_1000050A4(v184, &unk_100938850, qword_100795AE0);
              v262 = 0u;
              v263 = 0u;
              v264 = 0;
            }

            else
            {
              *(&v263 + 1) = v182;
              v264 = &protocol witness table for Date;
              v185 = sub_1000103CC(&v262);
              (*(v183 + 32))(v185, v184, v182);
            }

            v70 = v260;
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.setter();
            v1 = v246;
            v67 = "8\n\r";
            break;
          case 4:
            break;
          case 5:
            v147 = v67;
            v148 = [v1 membershipsOfRemindersInSectionsAsData];
            if (v148)
            {
              v149 = v148;
              v150 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v152 = v151;

              v153 = objc_opt_self();
              sub_100029344(v150, v152);
              isa = Data._bridgeToObjectiveC()().super.isa;
              v155 = [v153 assetForData:isa];

              CKRecord.subscript.setter();
              sub_10001BBA0(v150, v152);
              sub_10001BBA0(v150, v152);
            }

            else
            {
              CKRecord.subscript.setter();
            }

            v193 = [v65 encryptedValues];
            v194 = [v1 membershipsOfRemindersInSectionsChecksum];
            if (v194)
            {
              v195 = v194;
              v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v198 = v197;

              *(&v263 + 1) = &type metadata for String;
              v264 = &protocol witness table for String;
              *&v262 = v196;
              *(&v262 + 1) = v198;
            }

            else
            {
              v264 = 0;
              v262 = 0u;
              v263 = 0u;
            }

            v70 = v260;
            v69 = v261;
            v67 = v147;
            swift_getObjectType();
            goto LABEL_83;
          case 6:
            v160 = [v1 mostRecentPublicLinkUpdateRequestDate];
            v109 = v68;
            if (v160)
            {
              v161 = v249;
              v162 = v160;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v163 = 0;
            }

            else
            {
              v163 = 1;
              v161 = v249;
            }

            v178 = v1;
            v179 = type metadata accessor for Date();
            v180 = *(v179 - 8);
            (*(v180 + 56))(v161, v163, 1, v179);
            v181 = v253;
            sub_100031B58(v161, v253, &unk_100938850, qword_100795AE0);
            if ((*(v180 + 48))(v181, 1, v179) == 1)
            {
              goto LABEL_91;
            }

            goto LABEL_92;
          case 7:
            v139 = [v65 encryptedValues];
            v140 = [v1 name];
            if (v140)
            {
              v141 = v140;
              v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v143 = v1;
              v144 = v67;
              v146 = v145;

              *(&v263 + 1) = &type metadata for String;
              v264 = &protocol witness table for String;
              *&v262 = v142;
              *(&v262 + 1) = v146;
              v70 = v260;
              v69 = v261;
              v67 = v144;
              v1 = v143;
            }

            else
            {
              v264 = 0;
              v262 = 0u;
              v263 = 0u;
            }

            swift_getObjectType();
LABEL_83:
            CKRecordKeyValueSetting.subscript.setter();
            swift_unknownObjectRelease();
            break;
          case 8:
            v167 = [v1 parentAccount];
            v168 = v167;
            if (v167)
            {
            }

            *(&v263 + 1) = &type metadata for Bool;
            v264 = &protocol witness table for Bool;
            LOBYTE(v262) = v168 != 0;
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            goto LABEL_77;
          case 9:
            v121 = [v1 publicLinkConfigurationData];
            if (v121)
            {
              v122 = v121;
              v123 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v125 = v124;

              *(&v263 + 1) = &type metadata for Data;
              v264 = &protocol witness table for Data;
              *&v262 = v123;
              *(&v262 + 1) = v125;
              v70 = v260;
              v69 = v261;
            }

            else
            {
              v264 = 0;
              v262 = 0u;
              v263 = 0u;
            }

            goto LABEL_76;
          case 10:
            v164 = [v1 publicLinkCreationDate];
            if (v164)
            {
              v165 = v164;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v166 = 0;
            }

            else
            {
              v166 = 1;
            }

            v207 = type metadata accessor for Date();
            v208 = *(v207 - 8);
            (*(v208 + 56))(v70, v166, 1, v207);
            v209 = v254;
            sub_100031B58(v70, v254, &unk_100938850, qword_100795AE0);
            if ((*(v208 + 48))(v209, 1, v207) == 1)
            {
              sub_1000050A4(v209, &unk_100938850, qword_100795AE0);
              v262 = 0u;
              v263 = 0u;
              v264 = 0;
            }

            else
            {
              *(&v263 + 1) = v207;
              v264 = &protocol witness table for Date;
              v210 = sub_1000103CC(&v262);
              (*(v208 + 32))(v210, v209, v207);
            }

            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.setter();
            v70 = v260;
            goto LABEL_11;
          case 11:
            v108 = [v1 publicLinkExpirationDate];
            v109 = v68;
            if (v108)
            {
              v110 = v250;
              v111 = v108;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v112 = 0;
            }

            else
            {
              v112 = 1;
              v110 = v250;
            }

            v178 = v1;
            v179 = type metadata accessor for Date();
            v180 = *(v179 - 8);
            (*(v180 + 56))(v110, v112, 1, v179);
            v181 = v255;
            sub_100031B58(v110, v255, &unk_100938850, qword_100795AE0);
            if ((*(v180 + 48))(v181, 1, v179) == 1)
            {
LABEL_91:
              sub_1000050A4(v181, &unk_100938850, qword_100795AE0);
              v262 = 0u;
              v263 = 0u;
              v264 = 0;
            }

            else
            {
LABEL_92:
              *(&v263 + 1) = v179;
              v264 = &protocol witness table for Date;
              v206 = sub_1000103CC(&v262);
              (*(v180 + 32))(v206, v181, v179);
            }

            v70 = v260;
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.setter();
            v69 = v261;
LABEL_94:
            v68 = v109;
            v67 = "8\n\r";
            v1 = v178;
            break;
          case 12:
            v116 = v67;
            v117 = [v1 publicLinkLastModifiedDate];
            if (v117)
            {
              v118 = v244;
              v119 = v117;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v120 = 0;
            }

            else
            {
              v120 = 1;
              v118 = v244;
            }

            v186 = type metadata accessor for Date();
            v187 = *(v186 - 8);
            (*(v187 + 56))(v118, v120, 1, v186);
            v188 = v256;
            sub_100031B58(v118, v256, &unk_100938850, qword_100795AE0);
            if ((*(v187 + 48))(v188, 1, v186) == 1)
            {
              sub_1000050A4(v188, &unk_100938850, qword_100795AE0);
              v262 = 0u;
              v263 = 0u;
              v264 = 0;
            }

            else
            {
              *(&v263 + 1) = v186;
              v264 = &protocol witness table for Date;
              v83 = sub_1000103CC(&v262);
              (*(v187 + 32))(v83, v188, v186);
            }

            v70 = v260;
            v67 = v116;
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.setter();
            goto LABEL_11;
          case 13:
            [v65 encryptedValues];
            v156 = [v1 publicLinkURLUUID];
            if (v156)
            {
              v157 = v245;
              v158 = v156;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v159 = 0;
            }

            else
            {
              v159 = 1;
              v157 = v245;
            }

            (*v239)(v157, v159, 1, v68);
            v199 = v257;
            sub_100031B58(v157, v257, &unk_100939D90, v67);
            if ((*v238)(v199, 1, v68))
            {
              sub_1000050A4(v199, &unk_100939D90, v67);
              v262 = 0u;
              v263 = 0u;
              v264 = 0;
            }

            else
            {
              v200 = v67;
              v201 = v226;
              (*v222)(v226, v199, v68);
              sub_1000050A4(v199, &unk_100939D90, v200);
              v202 = UUID.uuidString.getter();
              v204 = v203;
              v205 = v201;
              v67 = v200;
              (*v221)(v205, v68);
              *(&v263 + 1) = &type metadata for String;
              v264 = &protocol witness table for String;
              *&v262 = v202;
              *(&v262 + 1) = v204;
            }

            swift_getObjectType();
            CKRecordKeyValueSetting.subscript.setter();
            swift_unknownObjectRelease();
            v70 = v260;
            goto LABEL_11;
          case 14:
            v96 = [v1 sectionIDsOrderingAsData];
            if (v96)
            {
              v97 = v96;
              v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v100 = v99;

              v101 = objc_opt_self();
              sub_100029344(v98, v100);
              v102 = v1;
              v103 = v67;
              v104 = Data._bridgeToObjectiveC()().super.isa;
              v105 = [v101 assetForData:v104];

              v67 = v103;
              v1 = v102;
              CKRecord.subscript.setter();
              sub_10001BBA0(v98, v100);
              v106 = v98;
              v107 = v100;
              v70 = v260;
              v69 = v261;
              sub_10001BBA0(v106, v107);
            }

            else
            {
              CKRecord.subscript.setter();
            }

            break;
          case 15:
            v130 = [v1 sortingStyle];
            if (v130)
            {
              v131 = v130;
              v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v134 = v133;

              *(&v263 + 1) = &type metadata for String;
              v264 = &protocol witness table for String;
              *&v262 = v132;
              *(&v262 + 1) = v134;
              v70 = v260;
              v69 = v261;
            }

            else
            {
              v264 = 0;
              v262 = 0u;
              v263 = 0u;
            }

            goto LABEL_76;
          case 16:
            [v65 encryptedValues];
            v92 = [v1 sourceListIDURL];
            v93 = v67;
            if (v92)
            {
              v94 = v92;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v95 = 0;
            }

            else
            {
              v95 = 1;
            }

            v169 = v258;
            v170 = v243;
            (*v242)(v258, v95, 1, v243);
            v171 = v169;
            v172 = v259;
            sub_100031B58(v171, v259, &unk_1009441F0, &qword_100795760);
            if ((*v241)(v172, 1, v170))
            {
              sub_1000050A4(v259, &unk_1009441F0, &qword_100795760);
              v262 = 0u;
              v263 = 0u;
              v264 = 0;
              v65 = v227;
              v67 = v93;
              v1 = v246;
            }

            else
            {
              v173 = v225;
              v174 = v259;
              (*v224)(v225, v259, v170);
              sub_1000050A4(v174, &unk_1009441F0, &qword_100795760);
              v175 = URL.absoluteString.getter();
              v177 = v176;
              (*v223)(v173, v170);
              *(&v263 + 1) = &type metadata for String;
              v264 = &protocol witness table for String;
              *&v262 = v175;
              *(&v262 + 1) = v177;
              v67 = "8\n\r";
              v68 = v247;
              v70 = v260;
              v1 = v246;
              v65 = v227;
            }

            swift_getObjectType();
            CKRecordKeyValueSetting.subscript.setter();
            swift_unknownObjectRelease();
LABEL_11:
            v69 = v261;
            break;
          default:
            v85 = [v1 badgeEmblem];
            if (v85)
            {
              v86 = v85;
              v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v88 = v1;
              v89 = v67;
              v91 = v90;

              *(&v263 + 1) = &type metadata for String;
              v264 = &protocol witness table for String;
              *&v262 = v87;
              *(&v262 + 1) = v91;
              v69 = v261;
              v67 = v89;
              v1 = v88;
            }

            else
            {
              v264 = 0;
              v262 = 0u;
              v263 = 0u;
            }

LABEL_76:
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
LABEL_77:
            CKRecordKeyValueSetting.subscript.setter();
            break;
        }
      }

      while (v66 != 17);
    }
  }

  else
  {
    if (qword_100935DA8 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_100006654(v71, qword_10093F4A0);
    v72 = v1;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v262 = v76;
      *v75 = 136446210;
      v77 = [v72 remObjectID];
      if (v77)
      {
        v78 = v77;
        v79 = [v77 description];

        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;
      }

      else
      {
        v82 = 0xE300000000000000;
        v80 = 7104878;
      }

      v211 = sub_10000668C(v80, v82, &v262);
      v82, v212, v213, v214, v215, v216, v217, v218;
      *(v75 + 4) = v211;
      _os_log_impl(&_mh_execute_header, v73, v74, "REMCDTemplate will not be used to represent a public template, which is fetched from a template's public link, and is not expected to be shared, we shouldn't upload it for non-owner (templateID: %{public}s)", v75, 0xCu);
      sub_10000607C(v76);
    }

    v65 = 0;
  }

  v219 = v65;
  result.value.super.isa = v219;
  result.is_nil = v64;
  return result;
}