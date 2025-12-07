void sub_10056F76C(uint64_t a1)
{
  v53 = a1;
  v52 = type metadata accessor for UUID();
  v2 = *(v52 - 8);
  __chkstk_darwin(v52);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MergeableEntryAttributes();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD6260, &qword_100944D10);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_1000F24EC(&unk_100AE4B90, &unk_1009678A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = &v45 - v15;
  v16 = type metadata accessor for MergeableEntryAssetsPlacement();
  v51 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v20 = v1 + v19;
  v21 = v1;
  sub_1000082B4(v20, v10, &qword_100AD6260, &qword_100944D10);
  v22 = v5;
  v23 = (*(v6 + 48))(v10, 1, v5);
  v48 = v16;
  v49 = v21;
  v47 = v13;
  if (v23)
  {
    sub_100004F84(v10, &qword_100AD6260, &qword_100944D10);
    v25 = v50;
    v24 = v51;
    v46 = *(v51 + 56);
    (v46)(v50, 1, 1, v16);
    v26 = *(v21 + 32);
    MergeableEntryAssetsPlacement.init(fromLegacyOrderingFieldsOf:)();
    v27 = (*(v24 + 48))(v25, 1, v16);
    v28 = v18;
    if (v27 != 1)
    {
      sub_100004F84(v25, &unk_100AE4B90, &unk_1009678A0);
    }
  }

  else
  {
    v29 = v46;
    (*(v6 + 16))(v46, v10, v22);
    sub_100004F84(v10, &qword_100AD6260, &qword_100944D10);
    v30 = v50;
    MergeableEntryAttributes.assetPlacement.getter();
    (*(v6 + 8))(v29, v22);
    v31 = v51;
    v46 = *(v51 + 56);
    (v46)(v30, 0, 1, v16);
    v32 = *(v31 + 32);
    v28 = v18;
    v32(v18, v30, v16);
  }

  v33 = v53 + 56;
  v34 = 1 << *(v53 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v53 + 56);
  v37 = (v34 + 63) >> 6;

  v38 = 0;
  v39 = v52;
  while (v36)
  {
    v40 = v38;
LABEL_13:
    v41 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    (*(v2 + 16))(v4, *(v53 + 48) + *(v2 + 72) * (v41 | (v40 << 6)), v39);
    MergeableEntryAssetsPlacement.removeAsset(withID:)();
    (*(v2 + 8))(v4, v39);
  }

  while (1)
  {
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v40 >= v37)
    {

      v42 = v51;
      v44 = v47;
      v43 = v48;
      (*(v51 + 16))(v47, v28, v48);
      (v46)(v44, 0, 1, v43);
      sub_10077CC1C(v44);
      sub_100004F84(v44, &unk_100AE4B90, &unk_1009678A0);
      JournalEntryMO.modifyLegacyAssetOrderingFields(from:)();
      (*(v42 + 8))(v28, v43);
      return;
    }

    v36 = *(v33 + 8 * v40);
    ++v38;
    if (v36)
    {
      v38 = v40;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_10056FD1C(unint64_t a1, char a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      v8 = *&v6[OBJC_IVAR____TtC7Journal5Asset_assetMO];
      if (v8)
      {
        v9 = v8;
        [v9 setIsUndoablyDeleted:a2 & 1];
      }
    }
  }
}

uint64_t sub_10056FE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a1;
  v18 = a2;
  v3 = type metadata accessor for MergeableEntryAttributes();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD6260, &qword_100944D10);
  __chkstk_darwin(v7 - 8);
  v9 = v17 - v8;
  v10 = type metadata accessor for MergeableEntryAssetsPlacement();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_1000082B4(v2 + v14, v9, &qword_100AD6260, &qword_100944D10);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_100004F84(v9, &qword_100AD6260, &qword_100944D10);
    v15 = type metadata accessor for AssetPlacement();
    return (*(*(v15 - 8) + 56))(v18, 1, 1, v15);
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_100004F84(v9, &qword_100AD6260, &qword_100944D10);
    MergeableEntryAttributes.assetPlacement.getter();
    (*(v4 + 8))(v6, v3);
    MergeableEntryAssetsPlacement.assetPlacement(forAssetID:)();
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1005700DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = type metadata accessor for IndexSet();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v5[12] = *(v9 + 64);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v10 = type metadata accessor for JournalFeatureFlags();
  v5[15] = v10;
  v5[16] = *(v10 - 8);
  v5[17] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v5[18] = v11;
  v5[19] = v13;

  return _swift_task_switch(sub_1005702AC, v11, v13);
}

uint64_t sub_1005702AC()
{
  v45 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v2 + 104))(v1, enum case for JournalFeatureFlags.enhancedSync(_:), v3);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_100ACFF60 != -1)
    {
      swift_once();
    }

    v5 = v0[14];
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[4];
    v9 = type metadata accessor for Logger();
    sub_10000617C(v9, qword_100AE9478);
    v43 = *(v7 + 16);
    v43(v5, v8, v6);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[14];
    v15 = v0[10];
    v14 = v0[11];
    if (v12)
    {
      v42 = v0[5];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v44 = v17;
      *v16 = 136315394;
      sub_10004B990(&qword_100AE94F0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_100008458(v18, v20, &v44);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2048;
      *(v16 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v10, v11, "EntryViewModel.moveAsset from: %s, to: %ld", v16, 0x16u);
      sub_10000BA7C(v17);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v28 = v0[12];
    v29 = v0[13];
    v31 = v0[10];
    v30 = v0[11];
    v32 = v0[8];
    v40 = v0[7];
    v41 = v0[9];
    v34 = v0[4];
    v33 = v0[5];
    v35 = swift_allocObject();
    swift_weakInit();
    v43(v29, v34, v31);
    v36 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v37 = swift_allocObject();
    v0[20] = v37;
    *(v37 + 16) = v35;
    (*(v30 + 32))(v37 + v36, v29, v31);
    *(v37 + ((v28 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
    (*(v32 + 104))(v41, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v40);
    v38 = swift_task_alloc();
    v0[21] = v38;
    *v38 = v0;
    v38[1] = sub_100570710;
    v39 = v0[9];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v38, v39, sub_100572F80, v37, &type metadata for () + 1);
  }

  else
  {
    v22 = swift_task_alloc();
    v0[22] = v22;
    *v22 = v0;
    v22[1] = sub_100566EB4;
    v23 = v0[5];
    v24 = v0[3];
    v25 = v0[4];
    v26 = v0[2];

    return sub_1001FD958(v26, v24, v25, v23);
  }
}

void sub_100570710()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v3 = v2[18];
    v4 = v2[19];

    _swift_task_switch(sub_100570864, v3, v4);
  }
}

uint64_t sub_100570864()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1005708EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v114 = a3;
  v5 = sub_1000F24EC(&qword_100AE94C0, &unk_100967890);
  __chkstk_darwin(v5 - 8);
  v107 = &v93[-v6];
  v108 = type metadata accessor for MergeableEntryAttributes.MutatingAction();
  v110 = *(v108 - 8);
  v7 = *(v110 + 64);
  __chkstk_darwin(v108);
  v104 = &v93[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v105 = &v93[-v9];
  v112 = type metadata accessor for MergeableEntryAttributes();
  v115 = *(v112 - 8);
  __chkstk_darwin(v112);
  v103 = &v93[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v109 = &v93[-v12];
  v13 = type metadata accessor for AssetPlacement();
  v113 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v93[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1000F24EC(&qword_100AD6260, &qword_100944D10);
  __chkstk_darwin(v16 - 8);
  v106 = &v93[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v111 = &v93[-v19];
  __chkstk_darwin(v20);
  v117 = &v93[-v21];
  v116 = type metadata accessor for UUID();
  v22 = *(v116 - 8);
  __chkstk_darwin(v116);
  v118 = &v93[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v26 = &v93[-v25];
  __chkstk_darwin(v27);
  v29 = &v93[-v28];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = sub_1005662D4();
    if ((v33 & 1) == 0)
    {
      v34 = *(v31 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
      if (v34 >> 62)
      {
        v101 = v3;
        v91 = v32;
        v92 = _CocoaArrayWrapper.endIndex.getter();
        if (v92 < 0)
        {
          __break(1u);
          goto LABEL_34;
        }

        v35 = v92;
        v32 = v91;
        v4 = v101;
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }
      }

      if (v32 < v35)
      {
        v101 = v4;
        v102 = v29;
        if ((v34 & 0xC000000000000001) == 0)
        {
          if (v32 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_36;
          }

          v36 = *(v34 + 8 * v32 + 32);
LABEL_9:
          v37 = v116;
          v100 = *(v22 + 16);
          (v100)(v26, &v36[OBJC_IVAR____TtC7Journal5Asset_id], v116);

          v99 = v22;
          v38 = *(v22 + 32);
          v39 = v102;
          v40 = v26;
          v26 = v37;
          v38(v102, v40, v37);
          v98 = sub_1004959AC(&off_100A5A548);
          if (qword_100AD08E8 != -1)
          {
            swift_once();
          }

          v97 = xmmword_100B30DB0;
          (v100)(v118, v39, v37);
          v41 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
          swift_beginAccess();
          v96 = v41;
          sub_1000082B4(v31 + v41, v117, &qword_100AD6260, &qword_100944D10);
          v100 = OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager;
          v42 = *(v31 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
          if (!v42)
          {
LABEL_18:
            v52 = v26;
            v53 = v113;
            *v15 = v114;
            (*(v53 + 13))(v15, enum case for AssetPlacement.grid(_:), v13);
            v54 = v118;
            sub_10056D224(v118, v15);
            (*(v53 + 1))(v15, v13);
            if (*&v100[v31])
            {
              v114 = *&v100[v31];
              v55 = v117;
              v56 = v111;
              sub_1000082B4(v117, v111, &qword_100AD6260, &qword_100944D10);
              v57 = v115;
              v58 = *(v115 + 48);
              v59 = v112;
              if (v58(v56, 1, v112) != 1)
              {
                v64 = *(v57 + 32);
                v65 = v109;
                v64(v109, v56, v59);
                v66 = v106;
                sub_1000082B4(v31 + v96, v106, &qword_100AD6260, &qword_100944D10);
                if (v58(v66, 1, v59))
                {

                  (*(v115 + 8))(v65, v59);
                  sub_100004F84(v117, &qword_100AD6260, &qword_100944D10);
                  v60 = *(v99 + 8);
                  v61 = v116;
                  v60(v118, v116);
                  sub_100004F84(v66, &qword_100AD6260, &qword_100944D10);
                  v67 = v107;
                  (*(v110 + 56))(v107, 1, 1, v108);
                }

                else
                {
                  v68 = v115;
                  v69 = v103;
                  (*(v115 + 16))(v103, v66, v59);
                  v114 = v114;
                  sub_100004F84(v66, &qword_100AD6260, &qword_100944D10);
                  v67 = v107;
                  MergeableEntryAttributes.actionUndoingDifference(from:)();
                  v70 = *(v68 + 8);
                  v115 = v68 + 8;
                  v113 = v70;
                  v70(v69, v59);
                  v71 = v110;
                  v72 = v108;
                  v73 = (*(v110 + 48))(v67, 1, v108);
                  v74 = v59;
                  v61 = v116;
                  if (v73 != 1)
                  {
                    v111 = *(v71 + 32);
                    v75 = v105;
                    (v111)(v105, v67, v72);
                    v76 = v71;
                    v77 = String._bridgeToObjectiveC()();
                    [v114 setActionName:v77];

                    (*(v76 + 16))(v104, v75, v72);
                    v78 = (*(v76 + 80) + 16) & ~*(v76 + 80);
                    v79 = (v7 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
                    v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
                    v81 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
                    v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
                    v83 = swift_allocObject();
                    (v111)(v83 + v78, v104, v72);
                    *(v83 + v79) = v98;
                    v84 = (v83 + v80);
                    v85 = v99;
                    v86 = *(&v97 + 1);
                    *v84 = v97;
                    v84[1] = v86;
                    v87 = (v83 + v81);
                    v61 = v116;
                    v88 = (v83 + v82);
                    v89 = v85;
                    v63 = v102;
                    *v87 = 0;
                    v87[1] = 0;
                    *v88 = 0;
                    v88[1] = 0;
                    type metadata accessor for EntryViewModel(0);

                    v90 = v114;
                    NSUndoManager.registerUndo<A>(withTarget:handler:)();

                    (*(v110 + 8))(v105, v72);
                    v113(v109, v112);
                    sub_100004F84(v117, &qword_100AD6260, &qword_100944D10);
                    v60 = *(v89 + 8);
                    v60(v118, v61);
                    goto LABEL_28;
                  }

                  v113(v65, v74);
                  sub_100004F84(v117, &qword_100AD6260, &qword_100944D10);
                  v60 = *(v99 + 8);
                  v60(v118, v61);
                }

                v63 = v102;
                sub_100004F84(v67, &qword_100AE94C0, &unk_100967890);
LABEL_28:
                sub_10003A464();
                v119 = sub_1004959AC(&off_100A5A570);
                PassthroughSubject.send(_:)();

                v60(v63, v61);
                goto LABEL_29;
              }

              sub_100004F84(v55, &qword_100AD6260, &qword_100944D10);
              v60 = *(v99 + 8);
              v61 = v116;
              v60(v118, v116);
              sub_100004F84(v56, &qword_100AD6260, &qword_100944D10);
            }

            else
            {

              sub_100004F84(v117, &qword_100AD6260, &qword_100944D10);
              v60 = *(v99 + 8);
              v62 = v54;
              v61 = v52;
              v60(v62, v52);
            }

            v63 = v102;
            goto LABEL_28;
          }

          v43 = qword_100AD0A70;
          v95 = v42;
          if (v43 == -1)
          {
LABEL_13:
            v44 = type metadata accessor for Logger();
            sub_10000617C(v44, qword_100AF0C08);
            v45 = *(&v97 + 1);

            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.debug.getter();

            v94 = v47;
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v119 = v49;
              *v48 = 136315138;

              v50 = sub_100008458(v97, v45, &v119);

              *(v48 + 4) = v50;
              v26 = v116;
              _os_log_impl(&_mh_execute_header, v46, v94, "undoable (%s)", v48, 0xCu);
              sub_10000BA7C(v49);
            }

            v51 = v95;
            if (![v95 groupingLevel])
            {
              [v51 beginUndoGrouping];
            }

            goto LABEL_18;
          }

LABEL_36:
          swift_once();
          goto LABEL_13;
        }

LABEL_34:

        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        goto LABEL_9;
      }
    }

LABEL_29:
  }
}

double sub_100571698(uint64_t a1, char *a2, uint64_t a3)
{
  v98 = a2;
  v4 = sub_1000F24EC(&qword_100AE94C0, &unk_100967890);
  __chkstk_darwin(v4 - 8);
  v6 = &v79 - v5;
  v96 = type metadata accessor for MergeableEntryAttributes.MutatingAction();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v7;
  __chkstk_darwin(v9);
  v91 = &v79 - v10;
  v11 = type metadata accessor for MergeableEntryAttributes();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v90 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v79 - v15;
  v17 = sub_1000F24EC(&qword_100AD6260, &qword_100944D10);
  __chkstk_darwin(v17 - 8);
  v93 = (&v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v97 = &v79 - v20;
  __chkstk_darwin(v21);
  v100 = &v79 - v22;
  v99 = type metadata accessor for AssetPlacement();
  v23 = *(v99 - 8);
  __chkstk_darwin(v99);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v95 = sub_1004959AC(&off_100A5A598);
    if (qword_100AD08E8 != -1)
    {
      swift_once();
    }

    v89 = v11;
    v92 = *(&xmmword_100B30DB0 + 1);
    v87 = xmmword_100B30DB0;
    (v23[2])(v25, a3, v99);
    v29 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    v85 = v29;
    sub_1000082B4(v28 + v29, v100, &qword_100AD6260, &qword_100944D10);
    v30 = OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager;
    v31 = *(v28 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
    v82 = v8;
    if (v31)
    {
      v84 = OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager;
      v86 = v23;
      v32 = qword_100AD0A70;
      v83 = v31;
      if (v32 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000617C(v33, qword_100AF0C08);
      v34 = v92;

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v101 = v80;
        *v37 = 136315138;

        v38 = sub_100008458(v87, v34, &v101);
        v39 = v28;
        v40 = v6;
        v41 = v16;
        v42 = v25;
        v43 = v38;

        *(v37 + 4) = v43;
        v25 = v42;
        v16 = v41;
        v6 = v40;
        v28 = v39;
        _os_log_impl(&_mh_execute_header, v35, v36, "undoable (%s)", v37, 0xCu);
        sub_10000BA7C(v80);
      }

      v30 = v84;
      v44 = v83;
      v45 = [v83 groupingLevel];
      v23 = v86;
      if (!v45)
      {
        [v44 beginUndoGrouping];
      }
    }

    sub_10056D224(&v98[OBJC_IVAR____TtC7Journal5Asset_id], v25);
    v46 = *(v28 + v30);
    if (v46)
    {
      v81 = v16;
      v86 = v6;
      v98 = v25;
      v47 = v100;
      v48 = v97;
      sub_1000082B4(v100, v97, &qword_100AD6260, &qword_100944D10);
      v49 = v12;
      v50 = *(v12 + 48);
      v51 = v89;
      if (v50(v48, 1, v89) == 1)
      {

        sub_100004F84(v47, &qword_100AD6260, &qword_100944D10);
        v23[1](v98, v99);
        v52 = v48;
        v53 = &qword_100AD6260;
        v54 = &qword_100944D10;
      }

      else
      {
        v55 = v81;
        (*(v49 + 32))(v81, v48, v51);
        v56 = v93;
        sub_1000082B4(v85 + v28, v93, &qword_100AD6260, &qword_100944D10);
        if (v50(v56, 1, v51))
        {

          (*(v49 + 8))(v55, v51);
          sub_100004F84(v100, &qword_100AD6260, &qword_100944D10);
          v23[1](v98, v99);
          sub_100004F84(v56, &qword_100AD6260, &qword_100944D10);
          v57 = v86;
          (*(v94 + 56))(v86, 1, 1, v96);
        }

        else
        {
          v58 = v90;
          (*(v49 + 16))(v90, v56, v51);
          v97 = v46;
          sub_100004F84(v56, &qword_100AD6260, &qword_100944D10);
          v57 = v86;
          MergeableEntryAttributes.actionUndoingDifference(from:)();
          v61 = *(v49 + 8);
          v60 = (v49 + 8);
          v59 = v61;
          (v61)(v58, v51);
          if ((*(v94 + 48))(v57, 1, v96) != 1)
          {
            v93 = v59;
            v62 = v94;
            v85 = *(v94 + 32);
            v90 = v60;
            v63 = v91;
            v64 = v96;
            v85();
            v65 = String._bridgeToObjectiveC()();
            [v97 setActionName:v65];

            (*(v62 + 16))(v82, v63, v64);
            v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
            v67 = v62;
            v68 = (v88 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
            v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
            v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
            v86 = v23;
            v71 = swift_allocObject();
            v72 = v71 + v66;
            v73 = v96;
            (v85)(v72, v82, v96);
            *(v71 + v68) = v95;
            v74 = (v71 + v69);
            v75 = v92;
            *v74 = v87;
            v74[1] = v75;
            v76 = (v71 + v70);
            v77 = (v71 + ((v70 + 23) & 0xFFFFFFFFFFFFFFF8));
            *v76 = 0;
            v76[1] = 0;
            *v77 = 0;
            v77[1] = 0;
            type metadata accessor for EntryViewModel(0);

            v78 = v97;
            NSUndoManager.registerUndo<A>(withTarget:handler:)();

            (*(v67 + 8))(v91, v73);
            (v93)(v81, v89);
            sub_100004F84(v100, &qword_100AD6260, &qword_100944D10);
            v86[1](v98, v99);
            goto LABEL_22;
          }

          (v59)(v55, v51);
          sub_100004F84(v100, &qword_100AD6260, &qword_100944D10);
          v23[1](v98, v99);
        }

        v53 = &qword_100AE94C0;
        v54 = &unk_100967890;
        v52 = v57;
      }

      sub_100004F84(v52, v53, v54);
    }

    else
    {

      sub_100004F84(v100, &qword_100AD6260, &qword_100944D10);
      v23[1](v25, v99);
    }

LABEL_22:
    sub_10003A464();
    v101 = sub_1004959AC(&off_100A5A5C0);
    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100572180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = v3;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();
  v7 = type metadata accessor for MapSize();
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v4[9] = *(v8 + 64);
  v4[10] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v4[11] = v9;
  v4[12] = v11;

  return _swift_task_switch(sub_1005722E0, v9, v11);
}

uint64_t sub_1005722E0()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[4];
  v6 = v0[2];
  v13 = v0[6];
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v2 + 16))(v1, v6, v3);
  v8 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v9 = swift_allocObject();
  v0[13] = v9;
  *(v9 + 16) = v7;
  (*(v2 + 32))(v9 + v8, v1, v3);
  (*(v4 + 104))(v13, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100572488;
  v11 = v0[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_100572F10, v9, &type metadata for () + 1);
}

void sub_100572488()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = v2[11];
    v4 = v2[12];

    _swift_task_switch(sub_1005725DC, v3, v4);
  }
}

uint64_t sub_1005725DC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100572648(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for MapSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AE94E0, &qword_10095DBA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    type metadata accessor for AppStorageMO();
    v12 = *(v11 + 24);
    v13 = static AppStorageMO.sharedStorage(context:)();

    if (v13)
    {
      v14 = a2;
      v15 = *(v4 + 16);
      v35 = v14;
      v15(v9);
      v36 = v4;
      (*(v4 + 56))(v9, 0, 1, v3);
      AppStorageMO.defaultMapSize.setter();
      v16 = *(v11 + 24);
      v37 = 0;
      if ([v16 save:&v37])
      {
        v17 = v37;
      }

      else
      {
        v34 = v13;
        v18 = v37;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100ACFF60 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_10000617C(v19, qword_100AE9478);
        (v15)(v6, v35, v3);
        swift_errorRetain();
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();

        v22 = os_log_type_enabled(v20, v21);
        v23 = v36;
        if (v22)
        {
          v24 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v37 = v35;
          *v24 = 136315394;
          sub_10004B990(&qword_100AE94E8, &type metadata accessor for MapSize, &protocol conformance descriptor for MapSize);
          v32 = v20;
          v25 = dispatch thunk of CustomStringConvertible.description.getter();
          v27 = v26;
          (*(v23 + 8))(v6, v3);
          v28 = sub_100008458(v25, v27, &v37);

          *(v24 + 4) = v28;
          *(v24 + 12) = 2112;
          swift_errorRetain();
          v29 = _swift_stdlib_bridgeErrorToNSError();
          *(v24 + 14) = v29;
          v30 = v32;
          v31 = v33;
          *v33 = v29;
          _os_log_impl(&_mh_execute_header, v30, v21, "EntryViewModel.updateDefaultMapSize to: %s did not complete with error: %@", v24, 0x16u);
          sub_100004F84(v31, &unk_100AD4BB0, &unk_100941E50);

          sub_10000BA7C(v35);
        }

        else
        {

          (*(v23 + 8))(v6, v3);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100572AE0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AE94E0, &qword_10095DBA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  type metadata accessor for AppStorageMO();
  v6 = static AppStorageMO.sharedStorage(context:)();
  if (v6)
  {
    v7 = v6;
    AppStorageMO.defaultMapSize.getter();

    v8 = type metadata accessor for MapSize();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) != 1)
    {
      return (*(v9 + 32))(a2, v5, v8);
    }
  }

  else
  {
    v8 = type metadata accessor for MapSize();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  v10 = enum case for MapSize.small(_:);
  type metadata accessor for MapSize();
  v11 = *(v8 - 8);
  (*(v11 + 104))(a2, v10, v8);
  result = (*(v11 + 48))(v5, 1, v8);
  if (result != 1)
  {
    return sub_100004F84(v5, &qword_100AE94E0, &qword_10095DBA0);
  }

  return result;
}

uint64_t sub_100572E44()
{

  return swift_deallocObject();
}

void sub_100572F80()
{
  v1 = *(type metadata accessor for IndexSet() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_1005708EC(*(v0 + 16), v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10057301C(uint64_t a1)
{
  v3 = *(type metadata accessor for MergeableEntryAttributes.MutatingAction() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1007844CC(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1005730E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100573150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005731B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100573218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE9518, &qword_10095FE90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005732AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v6 = type metadata accessor for URL.DirectoryHint();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v4[32] = v8;
  v4[33] = v10;

  return _swift_task_switch(sub_100573454, v8, v10);
}

uint64_t sub_100573454()
{
  v1 = sub_1001D863C();
  v0[34] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(LPLinkSnapshotGenerator) init];
    v0[35] = v3;
    v4 = [objc_opt_self() currentTraitCollection];
    v5 = [objc_allocWithZone(LPLinkSnapshotConfiguration) initWithTraitCollection:v4 preferredSizeClass:5 size:250.0 scale:{250.0, 1.0}];
    v0[36] = v5;

    sub_1000F24EC(&unk_100AD4780, &unk_100941070);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100941D50;
    *(v6 + 32) = v5;
    sub_1005749F0();
    v7 = v5;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[37] = isa;

    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_100573720;
    v9 = swift_continuation_init();
    v0[17] = sub_1000F24EC(&qword_100AE9558, &qword_10095DC18);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10057407C;
    v0[13] = &unk_100A73700;
    v0[14] = v9;
    [v3 snapshotForMetadata:v2 configurations:isa completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_1004D12DC();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100573720()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_100573FC0;
  }

  else
  {
    v5 = sub_100573850;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100573850()
{
  v77 = v0;
  v1 = *(v0 + 160);

  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
    sub_100049ED8(v3, v2);

    v4 = objc_allocWithZone(UIImage);
    sub_100049ED8(v3, v2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v6 = [v4 initWithData:isa];

    sub_1000340DC(v3, v2);
    if (v6)
    {
      v7 = UIImageHEICRepresentation(v6);
      if (v7)
      {
        v71 = v3;
        v72 = v2;
        v73 = v6;
        v8 = *(v0 + 240);
        v75 = *(v0 + 232);
        v70 = *(v0 + 224);
        v9 = *(v0 + 208);
        v10 = *(v0 + 216);
        v11 = *(v0 + 200);
        v12 = v7;
        v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v14;

        v76[0] = UUID.uuidString.getter();
        v76[1] = v15;
        v16._countAndFlagsBits = 0x636965682ELL;
        v16._object = 0xE500000000000000;
        String.append(_:)(v16);
        v17 = v76[1];
        v18 = v76[0];
        sub_10069763C(v8);
        *(v0 + 144) = v76[0];
        *(v0 + 152) = v17;
        (*(v9 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v11);
        sub_1000777B4();
        URL.appending<A>(path:directoryHint:)();
        (*(v9 + 8))(v10, v11);
        v19 = *(v75 + 8);
        v19(v8, v70);
        Data.write(to:options:)();
        strcpy(v76, "<a href='");
        WORD1(v76[1]) = 0;
        HIDWORD(v76[1]) = -385875968;
        v26 = [*(v0 + 272) URL];
        v69 = v13;
        if (v26)
        {
          v27 = v26;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v28 = 0;
        }

        else
        {
          v28 = 1;
        }

        v29 = *(v0 + 224);
        v30 = *(v0 + 232);
        v32 = *(v0 + 184);
        v31 = *(v0 + 192);
        (*(v30 + 56))(v32, v28, 1, v29);
        sub_1001E4364(v32, v31);
        if ((*(v30 + 48))(v31, 1, v29))
        {
          sub_100004F84(*(v0 + 192), &unk_100AD6DD0, &qword_1009437C0);
          v33 = 0;
          v34 = 0xE000000000000000;
        }

        else
        {
          v35 = *(v0 + 240);
          v36 = *(v0 + 224);
          v37 = *(v0 + 192);
          (*(*(v0 + 232) + 16))(v35, v37, v36);
          sub_100004F84(v37, &unk_100AD6DD0, &qword_1009437C0);
          v38 = URL.absoluteString.getter();
          v34 = v39;
          v19(v35, v36);
          v33 = v38;
        }

        v64 = *(v0 + 280);
        v65 = *(v0 + 272);
        v67 = *(v0 + 248);
        v68 = *(v0 + 288);
        v66 = *(v0 + 224);
        v40 = *(v0 + 168);
        v41 = v34;
        String.append(_:)(*&v33);

        v42._countAndFlagsBits = 15911;
        v42._object = 0xE200000000000000;
        String.append(_:)(v42);
        v43 = v76[1];
        v63 = v76[0];
        _StringGuts.grow(_:)(41);

        strcpy(v76, "<img src=../");
        HIWORD(v76[1]) = -4864;
        String.append(_:)(*(v40 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
        v44._countAndFlagsBits = 47;
        v44._object = 0xE100000000000000;
        String.append(_:)(v44);
        v45._countAndFlagsBits = v18;
        v45._object = v17;
        String.append(_:)(v45);

        v46._object = 0x80000001008F7BC0;
        v46._countAndFlagsBits = 0xD000000000000017;
        String.append(_:)(v46);
        v47 = v76[0];
        v48 = v76[1];
        v76[0] = 0;
        v76[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(97);
        v49._countAndFlagsBits = 0x7669643C20202020;
        v49._object = 0xED0000223D646920;
        String.append(_:)(v49);
        v50._countAndFlagsBits = UUID.uuidString.getter();
        String.append(_:)(v50);

        v51._countAndFlagsBits = 0xD00000000000001CLL;
        v51._object = 0x80000001008F7BE0;
        String.append(_:)(v51);
        v52._countAndFlagsBits = AssetType.rawValue.getter();
        String.append(_:)(v52);

        v53._countAndFlagsBits = 32;
        v53._object = 0xE100000000000000;
        String.append(_:)(v53);
        v54._countAndFlagsBits = 8226;
        v54._object = 0xE200000000000000;
        String.append(_:)(v54);
        v55._countAndFlagsBits = 0x2020202020200A3ELL;
        v55._object = 0xEA00000000002020;
        String.append(_:)(v55);
        v56._countAndFlagsBits = v63;
        v56._object = v43;
        String.append(_:)(v56);

        v57._countAndFlagsBits = 0x202020202020200ALL;
        v57._object = 0xE900000000000020;
        String.append(_:)(v57);
        v58._countAndFlagsBits = v47;
        v58._object = v48;
        String.append(_:)(v58);

        v59._countAndFlagsBits = 0x202020202020200ALL;
        v59._object = 0xE900000000000020;
        String.append(_:)(v59);
        v60._countAndFlagsBits = 1046556476;
        v60._object = 0xE400000000000000;
        String.append(_:)(v60);
        v61._countAndFlagsBits = 0x642F3C202020200ALL;
        v61._object = 0xEB000000003E7669;
        String.append(_:)(v61);

        sub_1000340DC(v69, v74);
        sub_1000340DC(v71, v72);

        v19(v67, v66);

        v62 = *(v0 + 8);

        return v62(0, 0xE000000000000000);
      }
    }

    sub_1000340DC(v3, v2);
  }

  else
  {
  }

  v21 = *(v0 + 280);
  v20 = *(v0 + 288);
  v22 = *(v0 + 272);
  sub_1004D12DC();
  swift_allocError();
  *v23 = 3;
  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100573FC0(uint64_t a1)
{
  v2 = v1[37];
  v4 = v1[35];
  v3 = v1[36];
  v5 = v1[34];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_10057407C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *sub_10000CA14((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100574158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_10031AED0;

  return sub_1005732AC(a1, a2, a3);
}

void sub_100574208(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for LinkAssetMetadata();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000F24EC(&qword_100AD50C8, qword_100943CE0);
  __chkstk_darwin(v19 - 8);
  v21 = &v43 - v20;
  if (!*(v1 + OBJC_IVAR____TtC7Journal9LinkAsset_metadata))
  {
    goto LABEL_4;
  }

  sub_10025E308(v21);

  if ((*(v16 + 48))(v21, 1, v15))
  {
    sub_100004F84(v21, &qword_100AD50C8, qword_100943CE0);
LABEL_4:
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  (*(v16 + 16))(v18, v21, v15);
  sub_100004F84(v21, &qword_100AD50C8, qword_100943CE0);
  v22 = LinkAssetMetadata.data.getter();
  v44 = v14;
  v24 = v23;
  (*(v16 + 8))(v18, v15);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v26 = [objc_opt_self() metadataWithDataRepresentation:isa];

  v27 = v24;
  v28 = v44;
  v29 = sub_1000340DC(v22, v27);
  if (!v26)
  {
    goto LABEL_4;
  }

  v30 = [v26 URL];
  if (v30)
  {
    v31 = v30;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = v45;
    v32 = v46;
    v34 = *(v45 + 32);
    v34(v11, v5, v46);
    v35 = *(v33 + 56);
    v35(v11, 0, 1, v32);
    v34(v44, v11, v32);
    v28 = v44;
    v35(v44, 0, 1, v32);
  }

  else
  {
    v37 = v45;
    v36 = v46;
    v38 = *(v45 + 56);
    v39 = 1;
    v38(v11, 1, 1, v46);
    v40 = [v26 originalURL];
    if (v40)
    {
      v41 = v40;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = 0;
      v26 = v41;
      v28 = v44;
    }

    v38(v8, v39, 1, v36);
    sub_1001E4364(v8, v28);
    if ((*(v37 + 48))(v11, 1, v36) != 1)
    {
      sub_100004F84(v11, &unk_100AD6DD0, &qword_1009437C0);
    }
  }

  *(a1 + 24) = _s6ResultVMa_3(0);
  *(a1 + 32) = sub_100574E74(&qword_100AE9560, _s6ResultVMa_3, &unk_10095DC50);
  *(a1 + 40) = sub_100574E74(&qword_100AE9568, _s6ResultVMa_3, &unk_10095DC28);
  v42 = sub_10001A770(a1);
  sub_1001E4364(v28, v42);
}

uint64_t sub_100574744@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1000F24EC(&qword_100AE9600, &qword_10095DC78);
  v17 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = _s6ResultVMa_3(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CA14(a1, a1[3]);
  sub_100574DBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = v16;
    type metadata accessor for URL();
    sub_100574E74(&qword_100AE9610, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v17 + 8))(v9, v7);
    sub_1001E4364(v6, v12);
    sub_100574E10(v12, v13);
  }

  return sub_10000BA7C(a1);
}

uint64_t sub_100574998(uint64_t a1)
{
  result = sub_100574E74(&qword_100AE9548, type metadata accessor for LinkAsset, &unk_100946AC8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1005749F0()
{
  result = qword_100AE9550;
  if (!qword_100AE9550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE9550);
  }

  return result;
}

void sub_100574A4C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_100574AD4(uint64_t a1)
{
  v2 = sub_100574DBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100574B10(uint64_t a1)
{
  v2 = sub_100574DBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100574B64(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AE9618, &qword_10095DC80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_100574DBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for URL();
  sub_100574E74(&qword_100AE9620, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s6ResultVMa_3(uint64_t a1)
{
  result = qword_100AE95C8;
  if (!qword_100AE95C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100574D50(uint64_t a1)
{
  sub_100111924(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_100574DBC()
{
  result = qword_100AE9608;
  if (!qword_100AE9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9608);
  }

  return result;
}

uint64_t sub_100574E10(uint64_t a1, uint64_t a2)
{
  v4 = _s6ResultVMa_3(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100574E74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100574ED0()
{
  result = qword_100AE9628;
  if (!qword_100AE9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9628);
  }

  return result;
}

unint64_t sub_100574F28()
{
  result = qword_100AE9630;
  if (!qword_100AE9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9630);
  }

  return result;
}

unint64_t sub_100574F80()
{
  result = qword_100AE9638;
  if (!qword_100AE9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9638);
  }

  return result;
}

uint64_t sub_100574FD4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE9640);
  v1 = sub_10000617C(v0, qword_100AE9640);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10057509C(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = type metadata accessor for ActivityUIDismissalPolicy();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE9670, &qword_10095DDC8);
  v2[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[15] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[16] = v5;
  v2[17] = v4;

  return _swift_task_switch(sub_1005751C8, v5, v4);
}

void sub_1005751C8()
{
  v36 = v0;
  v1 = v0[10];
  ObjectType = swift_getObjectType();
  (*(v1 + 24))(ObjectType, v1);
  v3 = v0[5];
  if (!v3)
  {

    sub_100004F84((v0 + 2), &unk_100AE9D30, &qword_1009417E0);
LABEL_41:
    if (qword_100ACFF78 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000617C(v27, qword_100AE9640);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Trying to stop activity but one hasn't started yet", v30, 2u);
    }

    v31 = v0[1];

    v31();
    return;
  }

  v4 = v0[6];
  sub_10000CA14(v0 + 2, v0[5]);
  v33 = (*(v4 + 8))(v3, v4);
  v6 = v5;
  sub_10000BA7C(v0 + 2);
  sub_1000F24EC(&qword_100AE9668, &qword_10095DDB8);
  v7 = static Activity.activities.getter();
  v8 = v7;
  v35 = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
    goto LABEL_23;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while (1)
    {
      v10 = 0;
      v32 = v6;
      while ((v8 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v14 = v35;
          goto LABEL_25;
        }

LABEL_10:
        Activity.attributes.getter();
        v12 = v0[8];
        if (v12)
        {
          if (v0[7] == v33 && v12 == v6)
          {
          }

          else
          {
            v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v13 & 1) == 0)
            {

              v6 = v32;
              goto LABEL_6;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v6 = v32;
        }

        else
        {
        }

LABEL_6:
        ++v10;
        if (v11 == v9)
        {
          goto LABEL_20;
        }
      }

      if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_23:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        goto LABEL_24;
      }
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

LABEL_24:
  v14 = _swiftEmptyArrayStorage;
LABEL_25:

  if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  if (!*(v14 + 2))
  {
LABEL_40:

    goto LABEL_41;
  }

LABEL_28:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v14 + 2))
    {
      __break(1u);
      return;
    }

    v15 = *(v14 + 4);
  }

  v0[18] = v15;
  if (qword_100ACFF78 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000617C(v16, qword_100AE9640);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    v21 = sub_100008458(v33, v6, &v35);

    *(v19 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v17, v18, "Stopping live activity for attachment: %s", v19, 0xCu);
    sub_10000BA7C(v20);
  }

  else
  {
  }

  v22 = v0[14];
  v23 = sub_1000F24EC(&qword_100AE9658, &qword_10095DDA8);
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  static ActivityUIDismissalPolicy.immediate.getter();
  v34 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
  v24 = swift_task_alloc();
  v0[19] = v24;
  *v24 = v0;
  v24[1] = sub_1005757A8;
  v25 = v0[13];
  v26 = v0[14];

  v34(v26, v25);
}

uint64_t sub_1005757A8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 88);

  (*(v4 + 8))(v3, v5);
  sub_100004F84(v2, &qword_100AE9670, &qword_10095DDC8);
  v6 = *(v1 + 136);
  v7 = *(v1 + 128);

  return _swift_task_switch(sub_100575958, v7, v6);
}

uint64_t sub_100575958()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005759D4(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = type metadata accessor for ActivityPresentationOptions();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v2[19] = swift_task_alloc();
  v4 = sub_1000F24EC(&qword_100AE9658, &qword_10095DDA8);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[23] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100575B68, v6, v5);
}

uint64_t sub_100575B68()
{
  v51 = v0;

  type metadata accessor for ActivityAuthorizationInfo();
  swift_allocObject();
  ActivityAuthorizationInfo.init()();
  v1 = ActivityAuthorizationInfo.areActivitiesEnabled.getter();

  if (v1)
  {
    if (qword_100ACFF78 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100AE9640);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v50[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_100008458(0xD000000000000020, 0x80000001008FA7A0, v50);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Requesting begin activity", v5, 0xCu);
      sub_10000BA7C(v6);
    }

    v7 = v0[15];
    ObjectType = swift_getObjectType();
    v46 = *(v7 + 24);
    v46(ObjectType, v7);
    v8 = v0[5];
    if (v8)
    {
      v9 = v0[6];
      sub_10000CA14(v0 + 2, v0[5]);
      v48 = (*(v9 + 8))(v8, v9);
      v49 = v10;
      sub_10000BA7C(v0 + 2);
    }

    else
    {
      sub_100004F84((v0 + 2), &unk_100AE9D30, &qword_1009417E0);
      v48 = 0;
      v49 = 0;
    }

    v17 = v0[19];
    v18 = type metadata accessor for Date();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    sub_1002A40A8();
    sub_1002A4100();
    sub_1002A4158();
    ActivityContent.init(state:staleDate:relevanceScore:)();
    LODWORD(v17) = SBSIsSystemApertureAvailable();
    sub_1000F24EC(&qword_100AE9660, &qword_10095DDB0);
    v19 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
    v20 = *(v19 - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100940050;
    v24 = *(v20 + 104);
    v25 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:);
    v26 = v23 + v22;
    if (!v17)
    {
      v25 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:);
    }

    v24(v26, *v25, v19);
    v24(v26 + v21, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v19);
    ActivityPresentationOptions.init(destinations:)();
    ActivityPresentationOptions.shouldSuppressAlertContentOnLockScreen.setter();
    static AppInfo.bundleIdentifier.getter();
    sub_1000F24EC(&qword_100AE9668, &qword_10095DDB8);
    v0[12] = v48;
    v0[13] = v49;
    static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();

    swift_unknownObjectRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[15];
      v30 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_100008458(0xD000000000000020, 0x80000001008FA7A0, v50);
      *(v30 + 12) = 2080;
      v46(ObjectType, v29);
      v31 = v0[10];
      if (v31)
      {
        v32 = v0[11];
        sub_10000CA14(v0 + 7, v0[10]);
        v33 = (*(v32 + 8))(v31, v32);
        v35 = v34;
        sub_10000BA7C(v0 + 7);
      }

      else
      {
        sub_100004F84((v0 + 7), &unk_100AE9D30, &qword_1009417E0);
        v35 = 0xE700000000000000;
        v33 = 0x6E776F6E6B6E75;
      }

      v36 = sub_100008458(v33, v35, v50);

      *(v30 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s Requested an activity successfully for attachment: %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    v38 = v0[21];
    v37 = v0[22];
    v39 = v0[20];
    v41 = v0[17];
    v40 = v0[18];
    v42 = v0[16];
    v15 = Activity.id.getter();
    v16 = v43;

    (*(v41 + 8))(v40, v42);
    (*(v38 + 8))(v37, v39);
  }

  else
  {
    if (qword_100ACFF78 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000617C(v11, qword_100AE9640);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Live activities aren't enabeld.", v14, 2u);
    }

    v15 = 0;
    v16 = 0;
  }

  v44 = v0[1];

  return v44(v15, v16);
}

uint64_t sub_10057634C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;
  static String.Encoding.utf8.getter();
  v7 = String.init(data:encoding:)();
  sub_1000340DC(v4, v6);

  return v7;
}

unint64_t sub_1005764B4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    while (1)
    {
      v3 = String.index(before:)();
      v4 = String.subscript.getter();
      result = sub_10057714C(v4, v5);
      if ((result & 0x100000000) != 0)
      {
        break;
      }

      v7 = result;

      v8 = (v7 - 14) <= 0xFFFFFFFB && (v7 - 8232) >= 2;
      if (v8 && v7 != 133)
      {
        v9 = ((String.index(before:)() ^ v3) & 0xFFFFFFFFFFFFC000) == 0;
        return !v9;
      }

      if (v3 < 0x4000)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v9 = v2 == 0;
    return !v9;
  }

  return result;
}

uint64_t sub_1005765B4(uint64_t a1, uint64_t a2)
{
  sub_1000777B4();
  v2 = StringProtocol.components<A>(separatedBy:)();
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100576648@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v69 = a1;
  v74 = a3;
  v3 = type metadata accessor for Anchor();
  v4 = *(v3 - 8);
  v83 = v3;
  v84 = v4;
  __chkstk_darwin(v3);
  v66 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v85 = v58 - v7;
  v67 = sub_1000F24EC(&unk_100AD6890, &unk_100945480);
  v72 = *(v67 - 8);
  __chkstk_darwin(v67);
  v73 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = v58 - v10;
  __chkstk_darwin(v11);
  v79 = v58 - v12;
  __chkstk_darwin(v13);
  v80 = v58 - v14;
  __chkstk_darwin(v15);
  v81 = v58 - v16;
  v87 = type metadata accessor for _RegexFactory();
  v17 = *(v87 - 8);
  __chkstk_darwin(v87);
  v19 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000F24EC(&qword_100AE9678, &qword_10095DE18);
  __chkstk_darwin(v20 - 8);
  v22 = v58 - v21;
  v23 = type metadata accessor for CharacterClass();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1000F24EC(&qword_100AE9680, &unk_10095DE20);
  v88 = *(v86 - 8);
  __chkstk_darwin(v86);
  v65 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v77 = v58 - v29;
  __chkstk_darwin(v30);
  v78 = v58 - v31;
  static RegexComponent<>.word.getter();
  v60 = type metadata accessor for RegexRepetitionBehavior();
  v32 = *(v60 - 8);
  v62 = *(v32 + 56);
  v63 = v32 + 56;
  v62(v22, 1, 1, v60);
  makeFactory()();
  v61 = sub_100577534(&qword_100AE9688, &type metadata accessor for CharacterClass, &protocol conformance descriptor for CharacterClass);
  v58[0] = v23;
  _RegexFactory.zeroOrOne<A, B>(_:_:)();
  v75 = *(v17 + 8);
  v82 = v17 + 8;
  v75(v19, v87);
  sub_1005774CC(v22);
  v33 = *(v24 + 8);
  v58[2] = v24 + 8;
  v59 = v33;
  v33(v26, v23);
  v34 = v77;
  Optionally.init(_:)();
  v76 = sub_10000B58C(&qword_100AE9690, &qword_100AE9680, &unk_10095DE20, &protocol conformance descriptor for Optionally<A>);
  v35 = v86;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v36 = *(v88 + 8);
  v88 += 8;
  v36(v34, v35);
  v64 = v36;
  v37 = v66;
  static Anchor.wordBoundary.getter();
  v58[1] = sub_100577534(&qword_100AE9698, &type metadata accessor for Anchor, &protocol conformance descriptor for Anchor);
  v38 = v83;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v39 = *(v84 + 8);
  v84 += 8;
  v68 = v39;
  v39(v37, v38);
  v89 = v69;
  v90 = v70;
  v70 = sub_1000F2BEC();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  static RegexComponent<>.word.getter();
  v62(v22, 1, 1, v60);
  makeFactory()();
  v40 = v58[0];
  _RegexFactory.zeroOrOne<A, B>(_:_:)();
  v41 = v87;
  v42 = v75;
  v75(v19, v87);
  sub_1005774CC(v22);
  v59(v26, v40);
  v43 = v65;
  Optionally.init(_:)();
  v44 = v86;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v36(v43, v44);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  makeFactory()();
  sub_10000B58C(&qword_100AD68A0, &unk_100AD6890, &unk_100945480, &protocol conformance descriptor for Regex<A>);
  v45 = v79;
  v46 = v67;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v47 = v71;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v48 = *(v72 + 8);
  v48(v47, v46);
  v48(v45, v46);
  v42(v19, v41);
  v50 = v91;
  v49 = v92;
  makeFactory()();
  v89 = v50;
  v90 = v49;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v51 = v73;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();

  v52 = v79;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v48(v51, v46);
  v48(v47, v46);
  v53 = v75;
  v75(v19, v87);
  makeFactory()();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v54 = v77;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v48(v51, v46);
  v48(v47, v46);
  v53(v19, v87);
  v48(v52, v46);
  v48(v80, v46);
  v48(v81, v46);
  v55 = v86;
  v56 = v64;
  v64(v54, v86);
  v68(v85, v83);
  return v56(v78, v55);
}

unint64_t sub_1005770D0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10057714C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_10057729C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_10057729C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100577334(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1005773A8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100577334(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1005770D0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1005773A8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_1005774CC(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE9678, &qword_10095DE18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100577534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10057757C(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FileStoreConfiguration();
  v27 = sub_10000617C(v10, qword_100B2FC48);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v28[0] = v11;
  v28[1] = v13;
  (*(v3 + 104))(v5, enum case for URL.DirectoryHint.notDirectory(_:), v2);
  sub_1000777B4();
  URL.append<A>(path:directoryHint:)();
  (*(v3 + 8))(v5, v2);

  v14._countAndFlagsBits = URL.pathExtension.getter();
  URL.appendPathExtension(_:)(v14);

  v15 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v28[0] = 0;
  v22 = [v15 copyItemAtURL:v18 toURL:v20 error:v28];

  if (v22)
  {
    v23 = v28[0];
    v24 = FileStoreConfiguration.protectionClass.getter();
    URL.setProtectionClass(protectionClass:)(v24);
  }

  else
  {
    v25 = v28[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = type metadata accessor for URL();
    (*(*(v26 - 8) + 8))(a1, v26);
  }
}

uint64_t sub_1005778EC()
{
  v0 = type metadata accessor for URL();
  v8[2] = *(v0 - 8);
  __chkstk_darwin(v0);
  v1 = type metadata accessor for URLResourceValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100ADFA90, &qword_100950F30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940080;
  *(inited + 32) = NSURLCreationDateKey;
  v6 = NSURLCreationDateKey;
  sub_10049567C(inited);
  swift_setDeallocating();
  sub_100577DD0(inited + 32);
  URL.resourceValues(forKeys:)();

  URLResourceValues.creationDate.getter();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100577D08()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE96A0);
  v1 = sub_10000617C(v0, qword_100AE96A0);
  if (qword_100AD0238 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30148);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100577DD0(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100577E2C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for WhatsNewViewController();
  v4 = objc_msgSendSuper2(&v8, "initWithTitle:detailText:icon:contentLayout:", v3, 0, 0, 2);

  v5 = v4;
  result = [v5 view];
  if (result)
  {
    v7 = result;

    [v7 setAccessibilityViewIsModal:1];

    sub_1005780CC();
    sub_100578560();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005780CC()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = [objc_opt_self() boldButton];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 systemIndigoColor];
  [v5 setTintColor:v6];

  [v5 addTarget:v0 action:"continueButtonTapped" forControlEvents:64];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = String._bridgeToObjectiveC()();

  [v5 setTitle:v7 forState:0];

  v8 = [v0 buttonTray];
  [v8 addButton:v5];
}

uint64_t sub_1005782CC()
{
  v0 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_100004F84(v2, &unk_100AD6DD0, &qword_1009437C0);
  }

  (*(v4 + 32))(v6, v2, v3);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [objc_opt_self() helpViewControllerWithURL:v9];

  if (v11)
  {
    [v11 setShowTopicViewOnLoad:1];
    v12 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v11];
    [v12 setModalPresentationStyle:1];
    v13 = UIViewController.forPresenting.getter();
    [v13 presentViewController:v12 animated:1 completion:0];
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_100578560()
{
  v0 = type metadata accessor for UIButton.Configuration.Size();
  v44 = *(v0 - 8);
  v45 = v0;
  __chkstk_darwin(v0);
  v42 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for UIButton.Configuration();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v40 - v5;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v48 = String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v50 = objc_opt_self();
  v8 = [v50 configurationPreferringMonochrome];
  v9 = String._bridgeToObjectiveC()();
  v49 = objc_opt_self();
  v10 = [v49 systemImageNamed:v9 withConfiguration:v8];

  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  if (v10)
  {
    [v51 addBulletedListItemWithTitle:v11 description:v12 image:v10];
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();
    [v51 addBulletedListItemWithTitle:v11 description:v12 symbolName:v10];
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v13 = [v50 configurationPreferringMonochrome];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v49 systemImageNamed:v14 withConfiguration:v13];

  v16 = String._bridgeToObjectiveC()();

  v17 = String._bridgeToObjectiveC()();

  if (v15)
  {
    [v51 addBulletedListItemWithTitle:v16 description:v17 image:v15];
  }

  else
  {
    v15 = String._bridgeToObjectiveC()();
    [v51 addBulletedListItemWithTitle:v16 description:v17 symbolName:v15];
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v18 = [v50 configurationPreferringMonochrome];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v49 systemImageNamed:v19 withConfiguration:v18];

  v21 = String._bridgeToObjectiveC()();

  v22 = String._bridgeToObjectiveC()();

  if (v20)
  {
    v23 = "addBulletedListItemWithTitle:description:image:";
  }

  else
  {
    v20 = String._bridgeToObjectiveC()();
    v23 = "addBulletedListItemWithTitle:description:symbolName:";
  }

  v24 = v51;
  [v51 v23];

  v25 = [v24 traitCollection];
  v26 = [v25 userInterfaceIdiom];

  if (v26)
  {
    v27 = 0;
  }

  else
  {
    sub_1000065A8(0, &qword_100AD4420, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v28 = v43;
    static UIButton.Configuration.plain()();
    UIButton.Configuration.contentInsets.setter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    UIButton.Configuration.title.setter();
    (*(v44 + 104))(v42, enum case for UIButton.Configuration.Size.small(_:), v45);
    UIButton.Configuration.buttonSize.setter();
    sub_1000065A8(0, &qword_100AE96E8, OBBulletedListItemLinkButton_ptr);
    v30 = v46;
    v29 = v47;
    (*(v46 + 16))(v41, v28, v47);
    v27 = UIButton.init(configuration:primaryAction:)();
    (*(v30 + 8))(v28, v29);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v31 = [v50 configurationPreferringMonochrome];
  v32 = String._bridgeToObjectiveC()();
  v33 = [v49 systemImageNamed:v32 withConfiguration:v31];

  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();

    v35 = String._bridgeToObjectiveC()();

    if (v27)
    {
      v36 = v27;
      [v24 addBulletedListItemWithTitle:v34 description:v35 image:v33 linkButton:v36];
    }

    else
    {
      [v24 addBulletedListItemWithTitle:v34 description:v35 image:v33];
    }
  }

  else
  {
    v37 = String._bridgeToObjectiveC()();

    v38 = String._bridgeToObjectiveC()();

    v39 = String._bridgeToObjectiveC()();
    [v24 addBulletedListItemWithTitle:v37 description:v38 symbolName:v39];

    v31 = v27;
  }
}

void sub_10057904C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1005782CC();
  }
}

void sub_1005790A0()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = byte_100AE96B8;
  v3 = String._bridgeToObjectiveC()();
  [v1 setInteger:v2 forKey:v3];

  v4 = [v0 presentingViewController];
  if (v4)
  {
    v5 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_10057923C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WhatsNewViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

BOOL sub_1005792A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_100579398()
{
  if (sub_1000A6E70())
  {
LABEL_2:
    if (qword_100AD0250 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_10000617C(v0, qword_100B30190);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_32;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "App onboarding already seen, should not show what's new screen", v3, 2u);
LABEL_31:

LABEL_32:

    return 0;
  }

  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 integerForKey:v6];

  if (v7 >= byte_100AE96B8)
  {
    if (qword_100AD0250 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000617C(v11, qword_100B30190);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v12, v13, "What's New: Should not show what's new since it has shown before, version: %ld", v14, 0xCu);
    }

    return 0;
  }

  v8 = [v4 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  if (!*(&v39 + 1))
  {
    sub_100004F84(v40, &qword_100AD13D0, &unk_100942DB0);
    goto LABEL_27;
  }

  sub_1000F24EC(&qword_100AD7EC8, &unk_10095C090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!*(v37 + 16))
  {

    goto LABEL_27;
  }

  v15 = *(v37 + 32);

  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 systemVersion];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *&v40[0] = 0;
  LOBYTE(v18) = sub_1005792A0(v18, v20, v40);

  if ((v18 & 1) == 0)
  {
LABEL_27:
    if (qword_100AD0250 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000617C(v27, qword_100B30190);
    v1 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v1, v28))
    {
      goto LABEL_32;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v40[0] = v30;
    *v29 = 136315138;
    v31 = [objc_opt_self() currentDevice];
    v32 = [v31 systemVersion];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_100008458(v33, v35, v40);

    *(v29 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v1, v28, "What's New: App onboarding version or system version not available. system version: %s", v29, 0xCu);
    sub_10000BA7C(v30);

    goto LABEL_31;
  }

  v21 = *&v40[0];
  if (v15 >= *v40)
  {
    goto LABEL_2;
  }

  if (qword_100AD0250 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000617C(v22, qword_100B30190);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218496;
    *(v25 + 4) = v21;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v15;
    *(v25 + 22) = 1024;
    *(v25 + 24) = 1;
    _os_log_impl(&_mh_execute_header, v23, v24, "What's New: App onboarding version greater than or equal to system version. system version: %f, app onboarded at version: %f, system version is greater: %{BOOL}d", v25, 0x1Cu);
  }

  return 1;
}

_BYTE *sub_100579998@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

id sub_100579A18(uint64_t a1)
{
  v1 = VisitAssetMetadata.styleData.getter();
  if (v2 >> 60 != 15)
  {
    v3 = v1;
    v4 = v2;
    sub_1000065A8(0, &qword_100AD5A80, GEOFeatureStyleAttributes_ptr);
    v5 = static NSCoding<>.create(from:)();
    sub_10003A5C8(v3, v4);
    if (v5)
    {
      return v5;
    }
  }

  v6 = VisitAssetMetadata.mapItemData.getter();
  if (v7 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v10 = v6;
    v11 = v7;
    sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr);
    v9 = static NSCoding<>.create(from:)();
    v8 = sub_10003A5C8(v10, v11);
  }

  v5 = [v9 _styleAttributes];

  if (v5)
  {
    return v5;
  }

  else
  {
    return [objc_opt_self() markerStyleAttributes];
  }
}

uint64_t sub_100579B4C()
{
  v1 = sub_1000F24EC(&unk_100AEED20, &qword_1009457E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2];
  v4 = type metadata accessor for VisitAssetMetadata();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC7Journal10VisitAsset_metadata))
  {

    sub_10025D478(v3);

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v8, v3, v4);
      sub_1000F24EC(&qword_100AD38F0, &unk_100941FC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100940050;
      *(inited + 32) = VisitAssetMetadata.placeName.getter();
      *(inited + 40) = v10;
      *(inited + 48) = VisitAssetMetadata.city.getter();
      *(inited + 56) = v11;
      sub_10009BB20(8236, 0xE200000000000000, inited);
      v13 = v12;
      swift_setDeallocating();
      sub_1000F24EC(&unk_100AE4870, &qword_100945360);
      swift_arrayDestroy();
      (*(v5 + 8))(v8, v4);
      return v13;
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4, v6);
  }

  sub_10057A4F4(v3);
  return 0;
}

id sub_100579DAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VisitAsset(uint64_t a1)
{
  result = qword_100AE9718;
  if (!qword_100AE9718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100579E9C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC7Journal10VisitAsset_metadata) = a1;

  return result;
}

uint64_t sub_100579F40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VisitAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_100579F84(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v43 = a1;
  v48 = sub_1000F24EC(&qword_100ADA948, &qword_100962E10);
  __chkstk_darwin(v48);
  v47 = &v38 - v3;
  v46 = type metadata accessor for UUID();
  v51 = *(v46 - 8);
  __chkstk_darwin(v46);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v38 - v6;
  v7 = type metadata accessor for AssetSource();
  v44 = *(v7 - 8);
  v8 = v44;
  __chkstk_darwin(v7);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v40 = &v38 - v11;
  v13 = type metadata accessor for AssetType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v38 - v19;
  v21 = *(v14 + 104);
  v41 = v13;
  v21(&v38 - v19, enum case for AssetType.visit(_:), v13, v18);
  v39 = *(v8 + 16);
  v22 = v12;
  v23 = v7;
  v39(v22, a1, v7);
  v24 = v50;
  UUID.init()();
  v25 = objc_allocWithZone(type metadata accessor for VisitAsset(0));
  *&v25[OBJC_IVAR____TtC7Journal10VisitAsset_metadata] = 0;
  v26 = v42;
  v27 = v46;
  (*(v51 + 16))(v42, v24, v46);
  (*(v14 + 16))(v16, v20, v13);
  v28 = v45;
  v29 = v40;
  v39(v45, v40, v23);
  v30 = sub_100285908(v26, v16, v28);
  v31 = *(v44 + 8);
  v31(v43, v23);
  (*(v51 + 8))(v50, v27);
  v31(v29, v23);
  (*(v14 + 8))(v20, v41);
  v32 = type metadata accessor for VisitAssetMetadata();
  v33 = v47;
  (*(*(v32 - 8) + 32))(v47, v49, v32);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AE9768, &unk_10095DEA0);
  v34 = swift_allocObject();
  v35 = *(*v34 + 104);
  v36 = sub_1000F24EC(&unk_100AEED20, &qword_1009457E0);
  (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
  *(v34 + *(*v34 + 112)) = xmmword_100941EE0;
  sub_10057A484(v33, v34 + *(*v34 + 120));
  *&v30[OBJC_IVAR____TtC7Journal10VisitAsset_metadata] = v34;

  return v30;
}

uint64_t sub_10057A484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADA948, &qword_100962E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10057A4F4(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AEED20, &qword_1009457E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10057A55C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10057F2B0(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator, &unk_100949CB8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 72);

  return result;
}

uint64_t sub_10057A648()
{
  v1 = v0;
  if (qword_100ACFED0 != -1)
  {
    swift_once();
  }

  v2 = qword_100B2FA60;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "No current audio recording.", v15, 2u);
    }

    return 0;
  }

  v4 = Strong;
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 24))(v26, ObjectType, v5);
  v7 = v27;
  if (v27)
  {
    v8 = v28;
    sub_10000CA14(v26, v27);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    sub_10000BA7C(v26);
    v12 = *(v1 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset);
    if (!v12)
    {
      if (!v11)
      {
        return v4;
      }

      goto LABEL_23;
    }
  }

  else
  {
    sub_100004F84(v26, &unk_100AE9D30, &qword_1009417E0);
    v12 = *(v1 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset);
    if (!v12)
    {
      return v4;
    }

    v11 = 0;
    v9 = 0;
  }

  v16 = v12;
  v17 = UUID.uuidString.getter();
  v19 = v18;

  if (v11)
  {
    if (v19)
    {
      if (v9 == v17 && v11 == v19)
      {

        return v4;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        return v4;
      }

      goto LABEL_24;
    }

LABEL_23:

LABEL_24:
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Currently recording manager is associated with a different asset.", v24, 2u);
    }

    swift_unknownObjectRelease();

    return 0;
  }

  if (v19)
  {
    goto LABEL_23;
  }

  return v4;
}

uint64_t sub_10057A92C()
{
  v1 = OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100038534(v0 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_pickerDelegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudioAssetPersistenceStrategy(uint64_t a1)
{
  result = qword_100AE97B0;
  if (!qword_100AE97B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10057AA4C(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

double sub_10057AB08(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v5 - 8);
  v7 = &v59 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v63 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100ADE5A8, &qword_10095DFD0);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v14 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  __chkstk_darwin(v18);
  v21 = &v59 - v20;
  v22 = *(&v2->isa + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset);
  if (v22)
  {
    v61 = v7;
    v62 = v19;
    v60 = a2;
    v65 = v2;
    v64 = v22;
    v23 = sub_100093C08(v21);
    (*(v9 + 16))(v17, a1, v8, v23);
    (*(v9 + 56))(v17, 0, 1, v8);
    v24 = *(v11 + 48);
    sub_1000082B4(v21, v13, &unk_100AD6DD0, &qword_1009437C0);
    sub_1000082B4(v17, &v13[v24], &unk_100AD6DD0, &qword_1009437C0);
    v25 = *(v9 + 48);
    if (v25(v13, 1, v8) == 1)
    {
      sub_100004F84(v17, &unk_100AD6DD0, &qword_1009437C0);
      sub_100004F84(v21, &unk_100AD6DD0, &qword_1009437C0);
      v26 = v25(&v13[v24], 1, v8);
      v27 = v65;
      if (v26 == 1)
      {
        sub_100004F84(v13, &unk_100AD6DD0, &qword_1009437C0);
        goto LABEL_17;
      }
    }

    else
    {
      v32 = v62;
      sub_1000082B4(v13, v62, &unk_100AD6DD0, &qword_1009437C0);
      if (v25(&v13[v24], 1, v8) != 1)
      {
        v39 = &v13[v24];
        v40 = v63;
        (*(v9 + 32))(v63, v39, v8);
        sub_10057F2B0(&unk_100ADE5B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        v42 = *(v9 + 8);
        v42(v40, v8);
        sub_100004F84(v17, &unk_100AD6DD0, &qword_1009437C0);
        sub_100004F84(v21, &unk_100AD6DD0, &qword_1009437C0);
        v42(v32, v8);
        sub_100004F84(v13, &unk_100AD6DD0, &qword_1009437C0);
        v27 = v65;
        if (v41)
        {
LABEL_17:
          v43 = v64;
          sub_10021A71C(0, 1, 0, v60);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v44 = type metadata accessor for TaskPriority();
            v45 = v61;
            (*(*(v44 - 8) + 56))(v61, 1, 1, v44);
            type metadata accessor for MainActor();
            v46 = v43;
            v47 = static MainActor.shared.getter();
            v48 = swift_allocObject();
            v48[2] = v47;
            v48[3] = &protocol witness table for MainActor;
            v48[4] = v46;
            sub_1003E9628(0, 0, v45, &unk_10095DFE8, v48);

            swift_unknownObjectRelease();
          }

          else
          {
            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.error.getter();
            v51 = os_log_type_enabled(v49, v50);
            v52 = v61;
            if (v51)
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v66 = v54;
              *v53 = 136315138;
              *(v53 + 4) = sub_100008458(0xD000000000000031, 0x80000001008FACF0, &v66);
              _os_log_impl(&_mh_execute_header, v49, v50, "%s - pickerDelegate is nil, falling back to default update mechanism", v53, 0xCu);
              sub_10000BA7C(v54);
            }

            v55 = type metadata accessor for TaskPriority();
            (*(*(v55 - 8) + 56))(v52, 1, 1, v55);
            type metadata accessor for MainActor();
            v56 = v43;

            v57 = static MainActor.shared.getter();
            v58 = swift_allocObject();
            v58[2] = v57;
            v58[3] = &protocol witness table for MainActor;
            v58[4] = v56;
            v58[5] = v27;
            sub_1003E9628(0, 0, v52, &unk_10095DFE0, v58);
          }

          return result;
        }

        goto LABEL_13;
      }

      sub_100004F84(v17, &unk_100AD6DD0, &qword_1009437C0);
      sub_100004F84(v21, &unk_100AD6DD0, &qword_1009437C0);
      (*(v9 + 8))(v32, v8);
    }

    sub_100004F84(v13, &qword_100ADE5A8, &qword_10095DFD0);
LABEL_13:
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v64;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v66 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100008458(0xD000000000000031, 0x80000001008FACF0, &v66);
      _os_log_impl(&_mh_execute_header, v33, v34, "%s called for a url that's not the current attachment", v37, 0xCu);
      sub_10000BA7C(v38);
    }

    return result;
  }

  v65 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v65, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v65, v28, "Finished transcribing an attachment but there's no audio asset", v29, 2u);
  }

  v30 = v65;

  return result;
}

uint64_t sub_10057B3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v8;
  v5[9] = v7;

  return _swift_task_switch(sub_10057B4BC, v8, v7);
}

uint64_t sub_10057B4BC()
{
  v1 = v0[7];

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[10] = v2;
  v0[11] = v4;

  return _swift_task_switch(sub_10057B554, v2, v4);
}

uint64_t sub_10057B554()
{
  v1 = v0[2];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v4 = result;
    v5 = v0[7];
    v6 = v1;
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_10057B648;

    return sub_10078BBDC(v5, &protocol witness table for MainActor, ObjectType, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10057B648()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_10057B768, v3, v2);
}

uint64_t sub_10057B768()
{
  v1 = *(v0 + 56);

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_10057B828;

  return sub_1001DA5A8(v1, &protocol witness table for MainActor);
}

uint64_t sub_10057B828()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_10057B948, v3, v2);
}

uint64_t sub_10057B948()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_10057B9AC, v1, v2);
}

uint64_t sub_10057B9AC()
{
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR____TtC7Journal5Asset_context];
  v0[14] = v2;
  if (v2)
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    v6 = swift_allocObject();
    v0[15] = v6;
    *(v6 + 16) = v1;
    (*(v4 + 104))(v3, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
    v7 = v1;
    v2;
    v8 = swift_task_alloc();
    v0[16] = v8;
    v9 = sub_1000F24EC(&qword_100AD38E0, &qword_100954620);
    *v8 = v0;
    v8[1] = sub_10057BB4C;
    v10 = v0[6];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 18, v10, sub_1001E0F48, v6, v9);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10057BB4C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  *(*v1 + 136) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 72);
  v8 = *(v2 + 64);
  if (v0)
  {
    v9 = sub_10057BD88;
  }

  else
  {
    v9 = sub_10057BD20;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10057BD20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10057BD88()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed saving transcript to asset: %@", v3, 0xCu);
    sub_100004F84(v4, &unk_100AD4BB0, &unk_100941E50);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10057BF04(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = sub_1000F24EC(&qword_100AD8FA0, &unk_100962CF0);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for AudioAssetMetadata();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for AssetAttachment.AssetType(0);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for AssetType();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = type metadata accessor for AssetSource();
  v2[32] = v7;
  v2[33] = *(v7 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = type metadata accessor for MainActor();
  v2[38] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[39] = v9;
  v2[40] = v8;

  return _swift_task_switch(sub_10057C2B4, v9, v8);
}

uint64_t sub_10057C2B4()
{
  v78 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[41] = Strong;
  if (Strong)
  {
    v60 = v0[36];
    v62 = v0[35];
    v72 = v0[34];
    v2 = v0[31];
    v3 = v0[32];
    v4 = v0[29];
    v67 = v0[30];
    v61 = v0[26];
    v65 = v0[25];
    v5 = v0[23];
    v6 = v0[24];
    v73 = v0[22];
    v63 = v0[21];
    v7 = v0[19];
    v75 = v7;
    v64 = v0[18];
    v9 = v0[14];
    v8 = v0[15];
    v66 = v9;
    v76 = v0[33];
    (*(v76 + 104))();
    v10 = *(v8 + 56);
    v0[42] = v10;
    v0[43] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v10(v2, 1, 1, v9);
    v70 = type metadata accessor for Date();
    v68 = *(v70 - 8);
    v69 = *(v68 + 56);
    v69(v4, 1, 1);
    (*(v6 + 104))(v61, enum case for AssetType.audio(_:), v5);
    v59 = *(v76 + 16);
    v59(v62, v60, v3);
    UUID.init()();
    v11 = objc_allocWithZone(type metadata accessor for AudioAsset(0));
    *&v11[OBJC_IVAR____TtC7Journal10AudioAsset_metadata] = 0;
    (*(v7 + 16))(v63, v73, v64);
    (*(v6 + 16))(v65, v61, v5);
    v59(v72, v62, v3);
    v12 = sub_100285908(v63, v65, v72);
    v0[44] = v12;
    v13 = *(v75 + 8);
    v0[45] = v13;
    v0[46] = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v73, v64);
    v74 = *(v76 + 8);
    v74(v62, v3);
    (*(v6 + 8))(v61, v5);
    sub_1000082B4(v2, v67, &unk_100AD6DD0, &qword_1009437C0);
    v14 = (*(v8 + 48))(v67, 1, v66);
    v15 = v0[30];
    if (v14 == 1)
    {
      sub_100004F84(v15, &unk_100AD6DD0, &qword_1009437C0);
    }

    else
    {
      v22 = v0[22];
      v24 = v0[17];
      v23 = v0[18];
      v25 = v0[14];
      v26 = v0[15];
      v27 = v0[13];
      (*(v26 + 32))(v24, v15, v25);
      (*(v26 + 16))(v27, v24, v25);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      UUID.init()();
      v28 = UUID.uuidString.getter();
      v30 = v29;
      v13(v22, v23);
      type metadata accessor for AssetAttachment(0);
      v31 = swift_allocObject();
      *(v31 + 16) = 0;
      sub_1001700CC(v27, v31 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType);
      v32 = (v31 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v32 = v28;
      v32[1] = v30;
      v33 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v12[v33] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v12[v33] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v34 = v0[17];
      v35 = v0[14];
      v36 = v0[15];
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      (*(v36 + 8))(v34, v35);
    }

    v37 = v0[27];
    sub_1000082B4(v0[29], v37, &unk_100AD4790, &unk_10093B4E0);
    v38 = *(v68 + 48);
    v39 = v70;
    v40 = v38(v37, 1, v70);
    v41 = v0[27];
    if (v40 == 1)
    {
      static Date.now.getter();
      if (v38(v41, 1, v70) != 1)
      {
        sub_100004F84(v0[27], &unk_100AD4790, &unk_10093B4E0);
      }
    }

    else
    {
      (*(v68 + 32))(v0[28], v0[27], v70);
    }

    v42 = v0[36];
    v44 = v0[31];
    v43 = v0[32];
    v45 = v0[29];
    v46 = v0[10];
    v47 = v0[11];
    v48 = v0[8];
    v71 = v0[9];
    (v69)(v0[28], 0, 1, v39);
    AudioAssetMetadata.init(duration:intensities:recordingDate:transcriptSegments:)();
    sub_100004F84(v45, &unk_100AD4790, &unk_10093B4E0);
    sub_100004F84(v44, &unk_100AD6DD0, &qword_1009437C0);
    v74(v42, v43);
    (*(v46 + 32))(v48, v47, v71);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AD8FA8, &qword_10095DFB0);
    v49 = swift_allocObject();
    v50 = *(*v49 + 104);
    v51 = sub_1000F24EC(&qword_100AD8F98, &unk_100955F40);
    (*(*(v51 - 8) + 56))(v49 + v50, 1, 1, v51);
    *(v49 + *(*v49 + 112)) = xmmword_100941EE0;
    sub_10021B8C8(v48, v49 + *(*v49 + 120));
    *&v12[OBJC_IVAR____TtC7Journal10AudioAsset_metadata] = v49;

    v12[OBJC_IVAR____TtC7Journal5Asset_isHidden] = 1;
    v52 = *&v12[OBJC_IVAR____TtC7Journal5Asset_context];
    if (v52)
    {
      *(swift_task_alloc() + 16) = v12;
      v53 = v12;
      v54 = v52;
      sub_1000F24EC(&qword_100AD38E0, &qword_100954620);
      NSManagedObjectContext.performAndWait<A>(_:)();
    }

    v55 = v0[6];
    v56 = *(v55 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset);
    *(v55 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset) = v12;
    v57 = v12;

    v0[47] = static MainActor.shared.getter();
    v58 = swift_task_alloc();
    v0[48] = v58;
    *v58 = v0;
    v58[1] = sub_10057CD10;

    return sub_10062B5F0(v57);
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v77[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100008458(0xD000000000000025, 0x80000001008FACC0, v77);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s - pickerDelegate is nil", v18, 0xCu);
      sub_10000BA7C(v19);
    }

    (*(v0[15] + 56))(v0[5], 1, 1, v0[14]);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_10057CD10()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10057CE4C, v1, v0);
}

uint64_t sub_10057CE4C()
{
  v1 = v0[41];

  v2 = OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker;
  if (*(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
  {

    sub_1003E8698();

    if (*(v1 + v2))
    {

      sub_1003E893C(v3, v4, v5, v6, v7, v8, v9, v10, v15);
    }
  }

  v11 = v0[41];
  *(swift_task_alloc() + 16) = v11;
  sub_1000F24EC(&qword_100AE98A8, &qword_10095DFB8);
  withObservationTracking<A>(_:onChange:)();

  v12 = v0[39];
  v13 = v0[40];

  return _swift_task_switch(sub_10057CF6C, v12, v13);
}

void sub_10057CF6C(uint64_t a1)
{
  v2 = v1[45];
  v3 = v1[20];
  v4 = v1[18];
  UUID.init()();
  UUID.uuidString.getter();
  v1[49] = v5;
  v2(v3, v4);

  v6 = swift_task_alloc();
  v1[50] = v6;
  *v6 = v1;
  v6[1] = sub_10057D0A0;

  JUMPOUT(0x10057D4F8);
}

uint64_t sub_10057D0A0()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_10057D374;
  }

  else
  {

    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_10057D1C8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10057D1C8()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  swift_unknownObjectRelease();
  *(v6 + 16) = 1;
  (*(v3 + 32))(v5, v2, v4);
  v1(v5, 0, 1, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10057D374()
{
  v1 = *(v0 + 352);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10057D4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 136) = v20;
  *(v9 + 144) = v8;
  *(v9 + 120) = a6;
  *(v9 + 128) = a8;
  *(v9 + 336) = a7;
  *(v9 + 104) = a4;
  *(v9 + 112) = a5;
  *(v9 + 96) = a1;
  v11 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v9 + 152) = v11;
  *(v9 + 160) = *(v11 - 8);
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  v12 = type metadata accessor for URL();
  *(v9 + 184) = v12;
  *(v9 + 192) = *(v12 - 8);
  *(v9 + 200) = swift_task_alloc();
  v13 = type metadata accessor for FileStoreConfiguration();
  *(v9 + 208) = v13;
  *(v9 + 216) = *(v13 - 8);
  *(v9 + 224) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v9 + 232) = v14;
  *(v9 + 240) = *(v14 - 8);
  *(v9 + 248) = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *(v9 + 256) = v15;
  *(v9 + 264) = v17;

  return _swift_task_switch(sub_10057D758, v15, v17);
}

uint64_t sub_10057D758()
{
  v1 = *(v0 + 144);
  if (*(v1 + OBJC_IVAR____TtC7Journal5Asset_attachmentsDirectoryPath + 8) && (v2 = OBJC_IVAR____TtC7Journal5Asset_context, v3 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_context), (*(v0 + 272) = v3) != 0))
  {
    v71 = v2;
    v72 = v1;
    v5 = *(v0 + 240);
    v4 = *(v0 + 248);
    v7 = *(v0 + 224);
    v6 = *(v0 + 232);
    v74 = *(v0 + 216);
    v75 = *(v0 + 208);
    v8 = *(v0 + 192);
    v77 = *(v0 + 200);
    v79 = *(v0 + 184);
    v73 = *(v0 + 128);

    v70 = v3;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v5 + 8))(v4, v6);
    v9 = objc_allocWithZone(NSString);
    v10 = String._bridgeToObjectiveC()();

    v11 = [v9 initWithString:v10];

    v12 = String._bridgeToObjectiveC()();

    v13 = [v11 stringByAppendingPathComponent:v12];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    String.append(_:)(v73);

    v17._countAndFlagsBits = 46;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);

    v19 = v14;
    v18 = v16;
    *(v0 + 280) = v16;
    static FileStoreConfiguration.shared.getter();
    FileStoreConfiguration.getAttachmentURL(from:)();
    (*(v74 + 8))(v7, v75);
    v20 = [objc_opt_self() defaultManager];
    URL.deletingLastPathComponent()();
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    v24 = *(v8 + 8);
    v24(v77, v79);
    sub_1000F24EC(&qword_100AD77C8, &qword_100946918);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = NSFileProtectionKey;
    v26 = qword_100AD0060;
    v27 = NSFileProtectionKey;
    if (v26 != -1)
    {
      swift_once();
    }

    sub_10000617C(*(v0 + 208), qword_100B2FC48);
    v28 = FileStoreConfiguration.protectionClass.getter();
    type metadata accessor for URLFileProtection(0);
    *(inited + 64) = v29;
    *(inited + 40) = v28;
    sub_100362FA8(inited);
    swift_setDeallocating();
    sub_100004F84(inited + 32, &qword_100ADFE90, &unk_100946920);
    type metadata accessor for FileAttributeKey(0);
    sub_10057F2B0(&qword_100AD1C38, type metadata accessor for FileAttributeKey, &unk_10093FA50);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 88) = 0;
    v31 = [v20 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:isa error:v0 + 88];

    v32 = *(v0 + 88);
    if (v31)
    {
      v33 = *(v72 + v71);
      *(v0 + 288) = v33;
      v34 = v32;
      if (v33 && (v35 = *(*(v0 + 144) + OBJC_IVAR____TtC7Journal5Asset_assetMO), (*(v0 + 296) = v35) != 0))
      {
        v36 = *(v0 + 160);
        v78 = *(v0 + 152);
        v80 = *(v0 + 176);
        v76 = *(v0 + 336);
        v37 = v19;
        v38 = *(v0 + 112);
        v39 = *(v0 + 120);
        v40 = *(v0 + 104);
        v41 = swift_allocObject();
        *(v0 + 304) = v41;
        *(v41 + 16) = v35;
        *(v41 + 24) = v40;
        *(v41 + 32) = v38;
        *(v41 + 40) = v39;
        *(v41 + 48) = v37;
        *(v41 + 56) = v18;
        *(v41 + 64) = v76;
        *(v41 + 72) = v33;
        (*(v36 + 104))(v80, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v78);
        v42 = v33;
        v43 = v35;
        v42;

        v44 = swift_task_alloc();
        *(v0 + 312) = v44;
        *v44 = v0;
        v44[1] = sub_10057DFC8;
        v45 = *(v0 + 176);
        v46 = sub_1001E1014;
        v47 = &type metadata for () + 1;
        v48 = v41;
      }

      else
      {

        if (qword_100AD0B50 != -1)
        {
          swift_once();
        }

        v55 = *(v0 + 144);
        v56 = type metadata accessor for Logger();
        sub_10000617C(v56, qword_100AF3B28);
        v57 = v55;
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = *(v0 + 144);
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v61 = 138412290;
          *(v61 + 4) = v60;
          *v62 = v60;
          v63 = v60;
          _os_log_impl(&_mh_execute_header, v58, v59, "%@ (addAttachmentToCoreData) managed objects aren't set", v61, 0xCu);
          sub_100004F84(v62, &unk_100AD4BB0, &unk_100941E50);
        }

        v65 = *(v0 + 160);
        v64 = *(v0 + 168);
        v67 = *(v0 + 144);
        v66 = *(v0 + 152);
        v68 = swift_allocObject();
        *(v0 + 320) = v68;
        *(v68 + 16) = v67;
        (*(v65 + 104))(v64, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v66);
        v69 = v67;
        v44 = swift_task_alloc();
        *(v0 + 328) = v44;
        *v44 = v0;
        v44[1] = sub_10057E2D8;
        v45 = *(v0 + 168);
        v46 = sub_10057F110;
        v47 = &type metadata for () + 1;
        v48 = v68;
      }

      return NSManagedObjectContext.perform<A>(schedule:_:)(v44, v45, v46, v48, v47);
    }

    v50 = *(v0 + 184);
    v51 = *(v0 + 96);
    v52 = v32;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v24(v51, v50);
  }

  else
  {
    sub_100170130();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
  }

  v53 = *(v0 + 8);

  return v53();
}

void sub_10057DFC8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[22];
    v4 = v2[19];
    v5 = v2[20];

    (*(v5 + 8))(v3, v4);
    v6 = v2[32];
    v7 = v2[33];

    _swift_task_switch(sub_10057E178, v6, v7);
  }
}

uint64_t sub_10057E178()
{
  v1 = *(v0 + 288);

  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = swift_allocObject();
  *(v0 + 320) = v6;
  *(v6 + 16) = v5;
  (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 328) = v8;
  *v8 = v0;
  v8[1] = sub_10057E2D8;
  v9 = *(v0 + 168);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_10057F110, v6, &type metadata for () + 1);
}

void sub_10057E2D8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[20] + 8))(v2[21], v2[19]);

    v3 = v2[32];
    v4 = v2[33];

    _swift_task_switch(sub_10057E470, v3, v4);
  }
}

uint64_t sub_10057E470()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10057E548()
{
  v1 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v0 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset);
    if (v5)
    {
      v6 = Strong;
      v7 = type metadata accessor for TaskPriority();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      type metadata accessor for MainActor();
      v8 = v5;
      swift_unknownObjectRetain();
      v9 = static MainActor.shared.getter();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = &protocol witness table for MainActor;
      v10[4] = v6;
      v10[5] = v8;
      sub_1003E9628(0, 0, v3, &unk_10095DF98, v10);

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  v15 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100008458(0xD000000000000018, 0x80000001008FACA0, &v16);
    _os_log_impl(&_mh_execute_header, v15, v11, "%s - Unable to report failed recording attempt, delegate and/or asset is nil", v12, 0xCu);
    sub_10000BA7C(v13);
  }

  else
  {
    v14 = v15;
  }
}

void sub_10057E7B0(uint64_t a1, uint64_t a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v16 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v16, v11, "Attempting to finalize a recording but the pickerDelegate is nil", v12, 2u);
    }

    goto LABEL_10;
  }

  v5 = *(v2 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset);
  if (v5)
  {
    v6 = a1 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    ObjectType = swift_getObjectType();
    v8 = *(a2 + 40);
    v9 = v5;
    swift_unknownObjectRetain();
    if (v8(ObjectType, a2))
    {
      *(v2 + 16) = 0;
      v10 = swift_unknownObjectRetain();
      sub_10057EA14(v10, a2, 1);
      swift_unknownObjectRelease();
      v16 = v9;
      sub_1003BCE54(v5);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_10:

      return;
    }

    swift_unknownObjectRelease();
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Prevented save because there was no recording to save.", v15, 2u);
  }

  sub_1003BCE54(0);

  swift_unknownObjectRelease();
}

void sub_10057EA14(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v4 = *(v3 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset);
    if (v4)
    {
      ObjectType = swift_getObjectType();
      v8 = *(a2 + 8);
      v9 = *(v8 + 24);
      swift_unknownObjectRetain();
      v10 = v4;
      v11 = v9(ObjectType, v8);
      if (a3)
      {
        v12 = *(v3 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_transcriptionCoordinator);
        swift_getKeyPath();
        sub_10057F2B0(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator, &unk_100949CB8);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        v13 = *(v12 + 72);
      }

      else
      {
        v13 = 0;
      }

      v16 = (*(a2 + 48))(ObjectType, a2);
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v16;
        sub_1000A8D04(0, v17, 0);
        v19 = v18;
        v20 = _swiftEmptyArrayStorage[2];
        v21 = 32;
        do
        {
          if (*(v19 + v21) + 50.0 < 0.0)
          {
            v22 = 0.0;
          }

          else
          {
            v22 = *(v19 + v21) + 50.0;
          }

          v23 = _swiftEmptyArrayStorage[3];
          if (*&v20 >= *&v23 >> 1)
          {
            sub_1000A8D04((*&v23 > 1uLL), *&v20 + 1, 1);
            v19 = v18;
          }

          *&_swiftEmptyArrayStorage[2] = *&v20 + 1;
          _swiftEmptyArrayStorage[*&v20 + 4] = v22;
          v21 += 8;
          ++*&v20;
          --v17;
        }

        while (v17);
      }

      sub_10021A71C(v11, 0, _swiftEmptyArrayStorage, v13);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "No recording manager", v15, 2u);
    }
  }
}

void sub_10057ED3C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset);
  if (!v5)
  {
    return;
  }

  v6 = *(v0 + 16);
  v25 = v5;
  if (v6 & 1) != 0 || sub_10057A648() && (v8 = v7, v9 = swift_getObjectType(), LOBYTE(v8) = sub_100885D80(v9, v8), swift_unknownObjectRelease(), (v8))
  {
    v10 = sub_10057A648();
    sub_10057EA14(v10, v11, 0);
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      type metadata accessor for MainActor();
      v13 = v25;
      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = &protocol witness table for MainActor;
      v15[4] = v13;
      sub_1003E9628(0, 0, v4, &unk_10095DFF0, v15);

      if (sub_10057A648())
      {
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = sub_100885D80(ObjectType, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
      }

      swift_unknownObjectRelease();
      *(v1 + 16) = v19;
      return;
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100008458(0xD000000000000015, 0x80000001008FAD30, &v26);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s - pickerDelegate is nil", v22, 0xCu);
      sub_10000BA7C(v23);

      return;
    }
  }

  v24 = v25;
}

uint64_t sub_10057F048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1003BC420(a1, v4, v5, v7, v6);
}

uint64_t sub_10057F13C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_10057B3C8(a1, v4, v5, v7, v6);
}

uint64_t sub_10057F1FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1003BC8CC(a1, v4, v5, v6);
}

uint64_t sub_10057F2B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10057F2F8(uint64_t a1, uint64_t a2)
{
  sub_1000082B4(a1, v12, &unk_100AE9D30, &qword_1009417E0);
  if (v13)
  {
    sub_1000F24EC(&qword_100AD6308, qword_10094D2F0);
    type metadata accessor for AudioAsset(0);
    if (swift_dynamicCast())
    {
      v4 = v11;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_100004F84(v12, &unk_100AE9D30, &qword_1009417E0);
    v4 = 0;
  }

  type metadata accessor for AudioAssetPersistenceStrategy(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_logger;
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_10000617C(v7, qword_100B301D8);
  (*(*(v7 - 8) + 16))(v5 + v6, v8, v7);
  sub_100004F84(a1, &unk_100AE9D30, &qword_1009417E0);
  v9 = OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset;
  *(v5 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset) = 0;
  *(v5 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_pickerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + v9) = v4;
  *(v5 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_transcriptionCoordinator) = a2;
  return v5;
}

uint64_t sub_10057F4A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1003BC8CC(a1, v4, v5, v6);
}

NSString sub_10057F55C()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2FB90 = result;
  return result;
}

NSString sub_10057F594()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2FBA0 = result;
  return result;
}

NSString sub_10057F5D0()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2FBB0 = result;
  return result;
}

NSString sub_10057F608()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2FBB8 = result;
  return result;
}

NSString sub_10057F640()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2FBC0 = result;
  return result;
}

NSString sub_10057F678()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2FBC8 = result;
  return result;
}

void sub_10057F6D4(char a1)
{
  v2 = OBJC_IVAR____TtC7Journal19FullScreenAssetView_shouldHideImageryCaption;
  if (v1[OBJC_IVAR____TtC7Journal19FullScreenAssetView_shouldHideImageryCaption] == (a1 & 1))
  {
    return;
  }

  v3 = [v1 subviews];
  v4 = sub_10021DE14();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_24:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_16;
      }

LABEL_25:

      goto LABEL_26;
    }

    v6 = *(v5 + 32);
  }

  v17 = v6;

  type metadata accessor for FullScreenPhotoView(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v1[v2];
    v9 = *(v7 + qword_100AEEF08);
    *(v7 + qword_100AEEF08) = v8;
    if (v8 != v9)
    {
      v10 = qword_100AEEF18;
LABEL_34:
      [*(v7 + v10) setHidden:?];
    }

LABEL_35:

    return;
  }

LABEL_14:
  v11 = [v1 subviews];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_24;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

LABEL_16:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_40:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }

    v12 = *(v5 + 32);
  }

  v17 = v12;

  type metadata accessor for FullScreenLivePhotoView(0);
  if (swift_dynamicCastClass())
  {
    sub_1006C8190(v1[v2]);
    goto LABEL_35;
  }

LABEL_26:
  v13 = [v1 subviews];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_40;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v14 = *(v4 + 32);
    }

    v17 = v14;

    type metadata accessor for FullScreenVideoView(0);
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      goto LABEL_35;
    }

    v15 = v1[v2];
    v16 = *(v7 + qword_100B2FA70);
    *(v7 + qword_100B2FA70) = v15;
    if (v15 == v16)
    {
      goto LABEL_35;
    }

    v10 = qword_100AE7078;
    goto LABEL_34;
  }

LABEL_41:
}

void sub_10057FA18(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAsset);
  *(v1 + OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAsset) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  type metadata accessor for Asset(0);
  a1 = a1;
  v4 = v7;
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_10057FE14();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

id sub_10057FBC4()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = qword_100ACFFC0;
  v3 = v0;
  if (v2 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v3 name:qword_100B2FBB0 object:0];

  v5.receiver = v3;
  v5.super_class = type metadata accessor for FullScreenAssetView();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_10057FE14()
{
  v4 = *&v0[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAsset];
  if (v4)
  {
    v5 = v0;
    if (*&v4[OBJC_IVAR____TtC7Journal5Asset_assetMO])
    {
      v271[0] = *&v4[OBJC_IVAR____TtC7Journal5Asset_assetMO];
      type metadata accessor for JournalEntryAssetMO();
      v2 = v4;
      if (MinimumSupportedVersion.isEditingSupported.getter())
      {
        type metadata accessor for PhotoAsset(0);
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          v7 = v6;
          v3 = &selRef_initWithName_managedObjectModel_;
          v8 = [v0 subviews];
          v9 = sub_10021DE14();
          v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v269 = v2;
          if (v10 >> 62)
          {
            v11 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v11)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_112;
              }

              v12 = *(v10 + 32);
            }

            v13 = v12;

            v14 = type metadata accessor for FullScreenPhotoView(0);
            v15 = swift_dynamicCastClass();
            if (v15)
            {
              v16 = v15;
              v2 = &qword_100AD5288;
              v17 = qword_100AD5288;
              v18 = *(v15 + qword_100AD5288);
              v19 = v13;
              [v18 zoomScale];
              if (v20 > 1.0)
              {
                [*&v16[v17] setZoomScale:1 animated:1.0];
              }

              goto LABEL_114;
            }
          }

          else
          {
          }

          v36 = [v5 subviews];
          v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v2 = &qword_100AD5288;
          if (!(v9 >> 62))
          {
            v37 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v37)
            {
LABEL_36:
              if (v37 >= 1)
              {
                for (i = 0; i != v37; ++i)
                {
                  if ((v9 & 0xC000000000000001) != 0)
                  {
                    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v39 = *(v9 + 8 * i + 32);
                  }

                  v40 = v39;
                  [v39 removeFromSuperview];
                }

                goto LABEL_113;
              }

              __break(1u);
              goto LABEL_129;
            }

LABEL_113:

            [v5 frame];
            v117 = v116;
            v119 = v118;
            v121 = v120;
            v123 = v122;
            v14 = type metadata accessor for FullScreenPhotoView(0);
            v124 = objc_allocWithZone(v14);
            v125 = sub_100727AB4(v117, v119, v121, v123);
            *&v125[qword_100AEEF00 + 8] = &off_100A73968;
            swift_unknownObjectWeakAssign();
            v16 = v125;
            [v5 addSubview:v16];
            sub_100013178(0.0);

LABEL_114:
            v126 = *&v16[qword_100AD52A8];
            v127 = *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView];
            *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView] = v126;
            v100 = v16;
            v128 = v126;

            type metadata accessor for FullScreenPhotoView(0);
            v272 = v14;
            v273 = &off_100A7A240;
            v271[0] = v100;
            v129 = OBJC_IVAR____TtC7Journal19FullScreenAssetView_fullScreenView;
            swift_beginAccess();
            sub_1005823D0(v271, &v5[v129]);
            swift_endAccess();
            v130 = v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_shouldHideImageryCaption];
            v131 = *(v100 + qword_100AEEF08);
            *(v100 + qword_100AEEF08) = v130;
            if (v130 != v131)
            {
              [*(v100 + qword_100AEEF18) setHidden:?];
            }

            v132 = v269;
            sub_100727994(v7);
            v133 = *v2;
            [*(v100 + *v2) zoomScale];
            if (v134 > 1.0)
            {
              [*(v100 + v133) setZoomScale:1 animated:1.0];
            }

            goto LABEL_150;
          }

LABEL_112:
          v37 = _CocoaArrayWrapper.endIndex.getter();
          if (v37)
          {
            goto LABEL_36;
          }

          goto LABEL_113;
        }

        type metadata accessor for LivePhotoAsset(0);
        v29 = swift_dynamicCastClass();
        if (v29)
        {
          v7 = v29;
          v30 = [v0 subviews];
          sub_10021DE14();
          v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (!(v9 >> 62))
          {
            v32 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v32)
            {
LABEL_130:

              [v5 frame];
              v140 = v139;
              v142 = v141;
              v144 = v143;
              v146 = v145;
              v147 = type metadata accessor for FullScreenLivePhotoView(0);
              v148 = objc_allocWithZone(v147);
              v149 = sub_1006C8304(v140, v142, v144, v146);
              *&v149[qword_100AED718 + 8] = &off_100A73968;
              swift_unknownObjectWeakAssign();
              v150 = v149;
              [v5 addSubview:v150];
              sub_100013178(0.0);

              v151 = *&v150[qword_100AD52A8];
              v152 = *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView];
              *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView] = v151;
              v100 = v150;
              v153 = v151;

              v272 = v147;
              v273 = &off_100A788C8;
              v271[0] = v100;
              v154 = OBJC_IVAR____TtC7Journal19FullScreenAssetView_fullScreenView;
              swift_beginAccess();
              sub_1005823D0(v271, &v5[v154]);
              swift_endAccess();
              sub_1006C8190(v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_shouldHideImageryCaption]);
              v155 = qword_100AD5288;
              [*(v100 + qword_100AD5288) zoomScale];
              if (v156 > 1.0)
              {
                [*(v100 + v155) setZoomScale:1 animated:1.0];
              }

              v157 = *(v100 + qword_100AED728);
              *(v100 + qword_100AED728) = v7;
              v158 = v2;

              sub_1006C823C();
              v159 = &v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegateStoppableMedia];
              v160 = &off_100A788A0;
LABEL_149:
              *(v159 + 1) = v160;
              swift_unknownObjectWeakAssign();
              goto LABEL_150;
            }

            goto LABEL_26;
          }

LABEL_129:
          v31 = _CocoaArrayWrapper.endIndex.getter();
          v32 = v31;
          if (!v31)
          {
            goto LABEL_130;
          }

LABEL_26:
          if (v32 >= 1)
          {
            for (j = 0; j != v32; ++j)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v34 = *(v9 + 8 * j + 32);
              }

              v35 = v34;
              [v34 removeFromSuperview];
            }

            goto LABEL_130;
          }

          __break(1u);
LABEL_134:
          type metadata accessor for WorkoutRouteAsset(v31);
          v45 = swift_dynamicCastClass();
          if (v45)
          {
            v1 = v45;
            v109 = [v5 subviews];
            sub_10021DE14();
            v111 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (!(v111 >> 62))
            {
              v161 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v161)
              {
LABEL_137:
                if (v161 >= 1)
                {
                  for (k = 0; k != v161; ++k)
                  {
                    if ((v111 & 0xC000000000000001) != 0)
                    {
                      v163 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      v163 = *(v111 + 8 * k + 32);
                    }

                    v164 = v163;
                    [v163 removeFromSuperview];
                  }

                  goto LABEL_238;
                }

                __break(1u);
                goto LABEL_240;
              }

LABEL_238:

              type metadata accessor for FullScreenRouteView();
              v97 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
              v256 = *&v97[OBJC_IVAR____TtC7Journal19FullScreenRouteView_routeAsset];
              *&v97[OBJC_IVAR____TtC7Journal19FullScreenRouteView_routeAsset] = v1;
              v257 = v3;

              sub_1006255AC(v1);
              [v5 addSubview:v97];
              sub_100013178(0.0);

              v213 = OBJC_IVAR____TtC7Journal19FullScreenRouteView_routeView;
              goto LABEL_175;
            }

LABEL_237:
            v161 = _CocoaArrayWrapper.endIndex.getter();
            if (v161)
            {
              goto LABEL_137;
            }

            goto LABEL_238;
          }

          goto LABEL_153;
        }

        type metadata accessor for VideoAsset(0);
        v41 = swift_dynamicCastClass();
        if (v41)
        {
          v42 = v41;
          v43 = [v0 subviews];
          sub_10021DE14();
          v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v44 >> 62)
          {
            v45 = _CocoaArrayWrapper.endIndex.getter();
            v46 = v45;
            if (!v45)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v46)
            {
              goto LABEL_144;
            }
          }

          if (v46 < 1)
          {
            __break(1u);
LABEL_153:
            type metadata accessor for MotionActivityAsset(v45);
            v54 = swift_dynamicCastClass();
            if (v54)
            {
              v1 = v54;
              v109 = [v5 subviews];
              sub_10021DE14();
              v111 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (!(v111 >> 62))
              {
                v187 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v187)
                {
LABEL_241:

                  type metadata accessor for FullScreenMotionActivityView();
                  v97 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                  v258 = *&v97[OBJC_IVAR____TtC7Journal28FullScreenMotionActivityView_motionActivityAsset];
                  *&v97[OBJC_IVAR____TtC7Journal28FullScreenMotionActivityView_motionActivityAsset] = v1;
                  v259 = v3;

                  sub_100735D98(v1);
                  [v5 addSubview:v97];
                  sub_100013178(0.0);

                  v213 = OBJC_IVAR____TtC7Journal28FullScreenMotionActivityView_motionActivityView;
                  goto LABEL_175;
                }

                goto LABEL_156;
              }

LABEL_240:
              v187 = _CocoaArrayWrapper.endIndex.getter();
              if (!v187)
              {
                goto LABEL_241;
              }

LABEL_156:
              if (v187 >= 1)
              {
                for (m = 0; m != v187; ++m)
                {
                  if ((v111 & 0xC000000000000001) != 0)
                  {
                    v189 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v189 = *(v111 + 8 * m + 32);
                  }

                  v190 = v189;
                  [v189 removeFromSuperview];
                }

                goto LABEL_241;
              }

              __break(1u);
              goto LABEL_243;
            }

            goto LABEL_177;
          }

          for (n = 0; n != v46; ++n)
          {
            if ((v44 & 0xC000000000000001) != 0)
            {
              v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v48 = *(v44 + 8 * n + 32);
            }

            v49 = v48;
            [v48 removeFromSuperview];
          }

LABEL_144:

          [v5 frame];
          v166 = v165;
          v168 = v167;
          v170 = v169;
          v172 = v171;
          v173 = type metadata accessor for FullScreenVideoView(0);
          v174 = objc_allocWithZone(v173);
          v175 = sub_10050B194(v166, v168, v170, v172);
          *&v175[qword_100B2FA68 + 8] = &off_100A73968;
          swift_unknownObjectWeakAssign();
          v176 = v175;
          [v5 addSubview:v176];
          sub_100013178(0.0);

          v177 = *&v176[qword_100AD52A8];
          v178 = *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView];
          *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView] = v177;
          v100 = v176;
          v179 = v177;

          v272 = v173;
          v273 = &off_100A710E0;
          v271[0] = v100;
          v180 = OBJC_IVAR____TtC7Journal19FullScreenAssetView_fullScreenView;
          swift_beginAccess();
          sub_1005823D0(v271, &v5[v180]);
          swift_endAccess();
          v181 = v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_shouldHideImageryCaption];
          v182 = *(v100 + qword_100B2FA70);
          *(v100 + qword_100B2FA70) = v181;
          if (v181 != v182)
          {
            [*(v100 + qword_100AE7078) setHidden:?];
          }

          v183 = *(v100 + qword_100B2FA78);
          *(v100 + qword_100B2FA78) = v42;
          v184 = v2;

          sub_10050AEAC();
          v185 = qword_100AD5288;
          [*(v100 + qword_100AD5288) zoomScale];
          if (v186 > 1.0)
          {
            [*(v100 + v185) setZoomScale:1 animated:1.0];
          }

          v159 = &v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegateStoppableMedia];
          v160 = &off_100A710B8;
          goto LABEL_149;
        }

        type metadata accessor for MultiPinMapAsset(0);
        v50 = swift_dynamicCastClass();
        if (v50)
        {
          v51 = v50;
          v52 = [v0 subviews];
          sub_10021DE14();
          v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v53 >> 62)
          {
            v54 = _CocoaArrayWrapper.endIndex.getter();
            v55 = v54;
            if (!v54)
            {
              goto LABEL_163;
            }
          }

          else
          {
            v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v55)
            {
              goto LABEL_163;
            }
          }

          if (v55 < 1)
          {
            __break(1u);
LABEL_177:
            type metadata accessor for GenericMapAsset(v54);
            v63 = swift_dynamicCastClass();
            if (v63)
            {
              v1 = v63;
              v109 = [v5 subviews];
              sub_10021DE14();
              v111 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (!(v111 >> 62))
              {
                v214 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v214)
                {
LABEL_244:

                  type metadata accessor for FullScreenGenericMapView();
                  v97 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                  v260 = *&v97[OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_mapAsset];
                  *&v97[OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_mapAsset] = v1;
                  v261 = v3;

                  sub_10013EA38();
                  [v5 addSubview:v97];
                  sub_100013178(0.0);

                  v213 = OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_mapView;
                  goto LABEL_175;
                }

                goto LABEL_180;
              }

LABEL_243:
              v214 = _CocoaArrayWrapper.endIndex.getter();
              if (!v214)
              {
                goto LABEL_244;
              }

LABEL_180:
              if (v214 >= 1)
              {
                for (ii = 0; ii != v214; ++ii)
                {
                  if ((v111 & 0xC000000000000001) != 0)
                  {
                    v216 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v216 = *(v111 + 8 * ii + 32);
                  }

                  v217 = v216;
                  [v216 removeFromSuperview];
                }

                goto LABEL_244;
              }

              __break(1u);
              goto LABEL_246;
            }

            goto LABEL_192;
          }

          for (jj = 0; jj != v55; ++jj)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v57 = *(v53 + 8 * jj + 32);
            }

            v58 = v57;
            [v57 removeFromSuperview];
          }

LABEL_163:

          type metadata accessor for FullScreenMultiPinMapView();
          v97 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v270 = v2;
          sub_100538FD8(v51);
          v191 = &v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_multiPinMapDelegate];
          swift_unknownObjectWeakLoadStrong();
          *&v97[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_multiPinMapDelegate + 8] = *(v191 + 1);
          swift_unknownObjectWeakAssign();
          swift_unknownObjectRelease();
          v192 = &v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegate];
          swift_unknownObjectWeakLoadStrong();
          *&v97[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_fullScreenAssetViewDelegate + 8] = *(v192 + 1);
          swift_unknownObjectWeakAssign();
          swift_unknownObjectRelease();
          [v5 addSubview:v97];
          v193 = [v97 superview];
          if (v193)
          {
            v194 = v193;
            [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
            v195 = [v97 topAnchor];
            v196 = [v194 topAnchor];
            v197 = [v195 constraintGreaterThanOrEqualToAnchor:v196];

            [v197 setConstant:0.0];
            [v197 setActive:1];
          }

          v198 = [v97 superview];
          if (v198)
          {
            v199 = v198;
            [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
            v200 = [v97 leadingAnchor];
            v201 = [v199 leadingAnchor];
            v202 = [v200 constraintEqualToAnchor:v201];

            [v202 setConstant:0.0];
            [v202 setActive:1];
          }

          v203 = [v97 superview];
          if (v203)
          {
            v204 = v203;
            [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
            v205 = [v97 trailingAnchor];
            v206 = [v204 trailingAnchor];
            v207 = [v205 constraintEqualToAnchor:v206];

            [v207 setConstant:0.0];
            [v207 setActive:1];
          }

          v208 = [v97 superview];
          if (v208)
          {
            v209 = v208;
            [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
            v210 = [v97 centerYAnchor];
            v211 = [v209 centerYAnchor];
            v212 = [v210 constraintEqualToAnchor:v211];

            [v212 setConstant:0.0];
            if (v212)
            {
              [v212 setActive:1];
            }
          }

          else
          {
            v212 = 0;
            v209 = v270;
          }

          v213 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_mapView;
          goto LABEL_175;
        }

        type metadata accessor for AudioAsset(0);
        v59 = swift_dynamicCastClass();
        if (v59)
        {
          v60 = v59;
          v61 = [v5 subviews];
          sub_10021DE14();
          v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v62 >> 62)
          {
            v63 = _CocoaArrayWrapper.endIndex.getter();
            v64 = v63;
            if (!v63)
            {
              goto LABEL_187;
            }
          }

          else
          {
            v64 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v64)
            {
              goto LABEL_187;
            }
          }

          if (v64 < 1)
          {
            __break(1u);
LABEL_192:
            type metadata accessor for StateOfMindAsset(v63);
            v72 = swift_dynamicCastClass();
            if (v72)
            {
              v109 = v72;
              v229 = [v5 subviews];
              sub_10021DE14();
              v111 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (!(v111 >> 62))
              {
                v230 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v230)
                {
LABEL_247:

                  v262 = type metadata accessor for FullScreenStateOfMindView();
                  v263 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                  v264 = *&v263[OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_stateOfMindAsset];
                  *&v263[OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_stateOfMindAsset] = v109;
                  v265 = v3;

                  sub_1006D9CE4(v109);
                  v272 = v262;
                  v273 = &off_100A79098;
                  v271[0] = v263;
                  v266 = OBJC_IVAR____TtC7Journal19FullScreenAssetView_fullScreenView;
                  swift_beginAccess();
                  v97 = v263;
                  sub_1005823D0(v271, &v5[v266]);
                  swift_endAccess();
                  [v5 addSubview:v97];
                  sub_100013178(0.0);

                  v213 = OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_stateOfMindView;
                  goto LABEL_175;
                }

                goto LABEL_195;
              }

LABEL_246:
              v230 = _CocoaArrayWrapper.endIndex.getter();
              if (!v230)
              {
                goto LABEL_247;
              }

LABEL_195:
              if (v230 >= 1)
              {
                for (kk = 0; kk != v230; ++kk)
                {
                  if ((v111 & 0xC000000000000001) != 0)
                  {
                    v232 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v232 = *(v111 + 8 * kk + 32);
                  }

                  v233 = v232;
                  [v232 removeFromSuperview];
                }

                goto LABEL_247;
              }

              __break(1u);
              goto LABEL_249;
            }

            goto LABEL_204;
          }

          for (mm = 0; mm != v64; ++mm)
          {
            if ((v62 & 0xC000000000000001) != 0)
            {
              v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v66 = *(v62 + 8 * mm + 32);
            }

            v67 = v66;
            [v66 removeFromSuperview];
          }

LABEL_187:

          v218 = type metadata accessor for FullScreenAudioTranscriptionView();
          v219 = objc_allocWithZone(v218);
          v220 = v2;
          v221 = sub_100582440(v60, v219);
          v222 = *&v221[OBJC_IVAR____TtC7Journal32FullScreenAudioTranscriptionView_transcribingAudioAssetView];
          if (v222)
          {
            v223 = *&v222[OBJC_IVAR____TtC7Journal26TranscribingAudioAssetView_hostingController];
            v224 = v223;
          }

          else
          {
            v223 = 0;
          }

          v225 = *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_childViewController];
          *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_childViewController] = v223;
          v226 = v222;

          *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegateStoppableMedia + 8] = &off_100A6EB88;
          swift_unknownObjectWeakAssign();
          v272 = v218;
          v273 = &off_100A6EBB0;
          v271[0] = v221;
          v227 = OBJC_IVAR____TtC7Journal19FullScreenAssetView_fullScreenView;
          swift_beginAccess();
          v228 = v221;
          sub_1005823D0(v271, &v5[v227]);
          swift_endAccess();
          [v5 addSubview:v228];
          sub_100013178(0.0);

          v100 = *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView];
          *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView] = v222;
          goto LABEL_150;
        }

        type metadata accessor for PodcastAsset(0);
        v68 = swift_dynamicCastClass();
        if (v68)
        {
          v69 = v68;
          v70 = [v0 subviews];
          sub_10021DE14();
          v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v71 >> 62)
          {
            v72 = _CocoaArrayWrapper.endIndex.getter();
            v73 = v72;
            if (v72)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v73 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v73)
            {
LABEL_72:
              if (v73 < 1)
              {
                __break(1u);
LABEL_204:
                type metadata accessor for ThirdPartyMediaAsset(v72);
                v81 = swift_dynamicCastClass();
                if (v81)
                {
                  v109 = v81;
                  v236 = [v5 subviews];
                  sub_10021DE14();
                  v111 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  if (!(v111 >> 62))
                  {
                    v237 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (!v237)
                    {
LABEL_250:

                      objc_allocWithZone(type metadata accessor for FullScreenThirdPartyMediaView());
                      v267 = v3;
                      v97 = sub_1006B651C(v109);
                      [v5 addSubview:v97];
                      sub_100013178(0.0);

                      v213 = OBJC_IVAR____TtC7Journal29FullScreenThirdPartyMediaView_assetView;
                      goto LABEL_175;
                    }

                    goto LABEL_207;
                  }

LABEL_249:
                  v237 = _CocoaArrayWrapper.endIndex.getter();
                  if (!v237)
                  {
                    goto LABEL_250;
                  }

LABEL_207:
                  if (v237 >= 1)
                  {
                    for (nn = 0; nn != v237; ++nn)
                    {
                      if ((v111 & 0xC000000000000001) != 0)
                      {
                        v239 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        v239 = *(v111 + 8 * nn + 32);
                      }

                      v240 = v239;
                      [v239 removeFromSuperview];
                    }

                    goto LABEL_250;
                  }

                  __break(1u);
                  goto LABEL_252;
                }

                goto LABEL_216;
              }

              for (i1 = 0; i1 != v73; ++i1)
              {
                if ((v71 & 0xC000000000000001) != 0)
                {
                  v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v75 = *(v71 + 8 * i1 + 32);
                }

                v76 = v75;
                [v75 removeFromSuperview];
              }
            }
          }

          type metadata accessor for FullScreenPodcastView();
          v97 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v234 = *&v97[OBJC_IVAR____TtC7Journal21FullScreenPodcastView_podcastAsset];
          *&v97[OBJC_IVAR____TtC7Journal21FullScreenPodcastView_podcastAsset] = v69;
          v235 = v2;

          sub_100109A4C(v69);
          [v5 addSubview:v97];
          sub_100013178(0.0);

          v213 = OBJC_IVAR____TtC7Journal21FullScreenPodcastView_podcastView;
LABEL_175:
          v98 = *&v97[v213];
          goto LABEL_89;
        }

        type metadata accessor for MusicAsset(0);
        v77 = swift_dynamicCastClass();
        if (v77)
        {
          v78 = v77;
          v79 = [v0 subviews];
          sub_10021DE14();
          v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v80 >> 62)
          {
            v81 = _CocoaArrayWrapper.endIndex.getter();
            v82 = v81;
            if (v81)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v82 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v82)
            {
LABEL_81:
              if (v82 < 1)
              {
                __break(1u);
LABEL_216:
                type metadata accessor for UnknownAsset(v81);
                if (swift_dynamicCastClass())
                {
                  v243 = [v5 subviews];
                  sub_10021DE14();
                  v109 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  if (!(v109 >> 62))
                  {
                    v244 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (!v244)
                    {
LABEL_253:

                      type metadata accessor for FullScreenUnknownAssetView();
                      v268 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                      [v5 addSubview:v268];
                      sub_100013178(0.0);

                      v100 = *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView];
                      *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView] = 0;
                      goto LABEL_150;
                    }

LABEL_219:
                    if (v244 < 1)
                    {
                      __break(1u);
                      return;
                    }

                    for (i2 = 0; i2 != v244; ++i2)
                    {
                      if ((v109 & 0xC000000000000001) != 0)
                      {
                        v246 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        v246 = *(v109 + 8 * i2 + 32);
                      }

                      v247 = v246;
                      [v246 removeFromSuperview];
                    }

                    goto LABEL_253;
                  }

LABEL_252:
                  v244 = _CocoaArrayWrapper.endIndex.getter();
                  if (!v244)
                  {
                    goto LABEL_253;
                  }

                  goto LABEL_219;
                }

LABEL_230:
                v100 = v3;
                goto LABEL_150;
              }

              for (i3 = 0; i3 != v82; ++i3)
              {
                if ((v80 & 0xC000000000000001) != 0)
                {
                  v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v84 = *(v80 + 8 * i3 + 32);
                }

                v85 = v84;
                [v84 removeFromSuperview];
              }
            }
          }

          type metadata accessor for FullScreenMusicView(0);
          v97 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v241 = *&v97[OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicAsset];
          *&v97[OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicAsset] = v78;
          v242 = v2;

          sub_1006F85D0(v78);
          [v5 addSubview:v97];
          sub_100013178(0.0);

          v213 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicView;
          goto LABEL_175;
        }

        type metadata accessor for ContactAsset(0);
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v101 = v24;
          v102 = [v0 subviews];
          sub_10021DE14();
          v103 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v103 >> 62)
          {
            v104 = _CocoaArrayWrapper.endIndex.getter();
            if (!v104)
            {
              goto LABEL_226;
            }
          }

          else
          {
            v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v104)
            {
              goto LABEL_226;
            }
          }

          if (v104 < 1)
          {
            __break(1u);
            goto LABEL_230;
          }

          for (i4 = 0; i4 != v104; ++i4)
          {
            if ((v103 & 0xC000000000000001) != 0)
            {
              v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v106 = *(v103 + 8 * i4 + 32);
            }

            v107 = v106;
            [v106 removeFromSuperview];
          }

LABEL_226:

          type metadata accessor for FullScreenContactView();
          v97 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v248 = OBJC_IVAR____TtC7Journal21FullScreenContactView_contactAsset;
          v249 = *&v97[OBJC_IVAR____TtC7Journal21FullScreenContactView_contactAsset];
          *&v97[OBJC_IVAR____TtC7Journal21FullScreenContactView_contactAsset] = v101;
          v250 = v2;

          sub_1003FFF60(v101);
          [v5 addSubview:v97];
          sub_100013178(0.0);

          v251 = *&v97[v248];
          if (v251)
          {
            v252 = v251;
            sub_1003FFF60(v252);
          }

          v213 = OBJC_IVAR____TtC7Journal21FullScreenContactView_contactAssetView;
          goto LABEL_175;
        }

LABEL_100:
        type metadata accessor for LinkAsset(v24);
        v3 = v2;
        v108 = swift_dynamicCastClass();
        if (!v108)
        {
          type metadata accessor for WorkoutIconAsset(0);
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            goto LABEL_134;
          }

          v1 = v31;
          v109 = [v5 subviews];
          sub_10021DE14();
          v111 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (!(v111 >> 62))
          {
            v135 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v135)
            {
LABEL_235:

              type metadata accessor for FullScreenWorkoutView();
              v97 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
              v254 = *&v97[OBJC_IVAR____TtC7Journal21FullScreenWorkoutView_workoutAsset];
              *&v97[OBJC_IVAR____TtC7Journal21FullScreenWorkoutView_workoutAsset] = v1;
              v255 = v2;

              sub_1004FA61C(v1);
              [v5 addSubview:v97];
              sub_100013178(0.0);

              v213 = OBJC_IVAR____TtC7Journal21FullScreenWorkoutView_workoutActivityView;
              goto LABEL_175;
            }

LABEL_122:
            if (v135 < 1)
            {
              __break(1u);
              goto LABEL_237;
            }

            for (i5 = 0; i5 != v135; ++i5)
            {
              if ((v111 & 0xC000000000000001) != 0)
              {
                v137 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v137 = *(v111 + 8 * i5 + 32);
              }

              v138 = v137;
              [v137 removeFromSuperview];
            }

            goto LABEL_235;
          }

LABEL_234:
          v135 = _CocoaArrayWrapper.endIndex.getter();
          if (!v135)
          {
            goto LABEL_235;
          }

          goto LABEL_122;
        }

        v109 = v108;
        v110 = [v5 subviews];
        sub_10021DE14();
        v111 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v111 >> 62)
        {
          v112 = _CocoaArrayWrapper.endIndex.getter();
          if (v112)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v112)
          {
LABEL_103:
            if (v112 >= 1)
            {
              for (i6 = 0; i6 != v112; ++i6)
              {
                if ((v111 & 0xC000000000000001) != 0)
                {
                  v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v114 = *(v111 + 8 * i6 + 32);
                }

                v115 = v114;
                [v114 removeFromSuperview];
              }

              goto LABEL_232;
            }

            __break(1u);
            goto LABEL_234;
          }
        }

LABEL_232:

        objc_allocWithZone(type metadata accessor for FullScreenLinkView());
        v253 = v2;
        v97 = sub_100166A44(v109);
        [v5 addSubview:v97];
        sub_100013178(0.0);

        v213 = OBJC_IVAR____TtC7Journal18FullScreenLinkView_linkView;
        goto LABEL_175;
      }
    }

    else
    {
      v21 = v4;
    }

    v22 = [v0 subviews];
    sub_10021DE14();
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v23 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      v25 = v24;
      if (!v24)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_88;
      }
    }

    if (v25 < 1)
    {
      __break(1u);
      goto LABEL_100;
    }

    for (i7 = 0; i7 != v25; ++i7)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v23 + 8 * i7 + 32);
      }

      v28 = v27;
      [v27 removeFromSuperview];
    }

LABEL_88:

    v86 = objc_opt_self();
    v87 = [v86 mainBundle];
    v88._countAndFlagsBits = 0xD000000000000016;
    v274._object = 0x80000001008F1D70;
    v88._object = 0x80000001008FAF00;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    v274._countAndFlagsBits = 0xD000000000000019;
    v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(v88, 0, v87, v89, v274);

    v91 = [v86 mainBundle];
    v275._object = 0x80000001008F1D70;
    v92._countAndFlagsBits = 0xD00000000000005BLL;
    v92._object = 0x80000001008FAF20;
    v93._countAndFlagsBits = 0;
    v93._object = 0xE000000000000000;
    v275._countAndFlagsBits = 0xD000000000000019;
    v94 = NSLocalizedString(_:tableName:bundle:value:comment:)(v92, 0, v91, v93, v275);

    v95 = objc_allocWithZone(type metadata accessor for FullScreenUnsupportedItemView());
    v96 = v4;
    v97 = sub_100266A24(v90._countAndFlagsBits, v90._object, v94._countAndFlagsBits, v94._object, v4, 0);
    [v5 addSubview:v97];
    sub_100013178(0.0);

    v98 = *&v97[OBJC_IVAR____TtC7Journal29FullScreenUnsupportedItemView_assetView];
    v99 = v98;
LABEL_89:

    v100 = *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView];
    *&v5[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView] = v98;
LABEL_150:
  }
}

void sub_100581FF8()
{
  v1 = &v0[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegateStoppableMedia];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v2 + 24))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v4 = [v0 subviews];
  sub_10021DE14();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10 && v9)
    {
      v11 = v10;
      v12 = swift_getObjectType();
      (*(v11 + 24))(v12, v11);
    }
  }

LABEL_15:
}

id sub_10058217C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegateStoppableMedia + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal19FullScreenAssetView_multiPinMapDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView] = 0;
  v9 = &v4[OBJC_IVAR____TtC7Journal19FullScreenAssetView_fullScreenView];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC7Journal19FullScreenAssetView_childViewController] = 0;
  v4[OBJC_IVAR____TtC7Journal19FullScreenAssetView_shouldHideImageryCaption] = 0;
  *&v4[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAsset] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for FullScreenAssetView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100582294(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegateStoppableMedia + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal19FullScreenAssetView_multiPinMapDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView] = 0;
  v3 = &v1[OBJC_IVAR____TtC7Journal19FullScreenAssetView_fullScreenView];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC7Journal19FullScreenAssetView_childViewController] = 0;
  v1[OBJC_IVAR____TtC7Journal19FullScreenAssetView_shouldHideImageryCaption] = 0;
  *&v1[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAsset] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FullScreenAssetView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1005823D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AE6670, &unk_100959900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_100582440(void *a1, char *a2)
{
  v4 = type metadata accessor for RecordingView(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v55[3] = type metadata accessor for AudioAsset(0);
  v55[4] = &off_100A82B98;
  v55[0] = a1;
  *&a2[OBJC_IVAR____TtC7Journal32FullScreenAudioTranscriptionView_transcribingAudioAssetView] = 0;
  *&a2[OBJC_IVAR____TtC7Journal32FullScreenAudioTranscriptionView_recordingViewModel] = 0;
  sub_100086C04(v55, &v53);
  type metadata accessor for TranscriptionCoordinator(0);
  swift_allocObject();
  *&a2[OBJC_IVAR____TtC7Journal32FullScreenAudioTranscriptionView_transcriptionCoordinator] = sub_100241630(&v53);
  v11 = type metadata accessor for FullScreenAudioTranscriptionView();
  v52.receiver = a2;
  v52.super_class = v11;
  v12 = objc_msgSendSuper2(&v52, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = sub_100422750(a1);
  v15 = v14;
  ObjectType = swift_getObjectType();
  sub_100086C04(v55, &v53);
  sub_1003609D8(&v53, ObjectType, v15);
  sub_100004F84(&v53, &unk_100AE9D30, &qword_1009417E0);
  sub_100086C04(v55, &v53);
  v17 = OBJC_IVAR____TtC7Journal32FullScreenAudioTranscriptionView_transcriptionCoordinator;
  v18 = *&v12[OBJC_IVAR____TtC7Journal32FullScreenAudioTranscriptionView_transcriptionCoordinator];

  v19 = sub_10057F2F8(&v53, v18);
  type metadata accessor for RecordingViewModel(0);
  v20 = *&v12[v17];
  swift_unknownObjectRetain();

  v21 = sub_1005ED718(v13, v19, v20, 1, 1, ObjectType, v15);
  sub_1001937E4();

  Bindable<A>.init(wrappedValue:)();
  v22 = &v10[v5[7]];
  v51 = 0;
  State.init(wrappedValue:)();
  v23 = v54;
  *v22 = v53;
  *(v22 + 1) = v23;
  v24 = &v10[v5[8]];
  v51 = 0;
  State.init(wrappedValue:)();
  v25 = v54;
  *v24 = v53;
  *(v24 + 1) = v25;
  v26 = &v10[v5[9]];
  v51 = 0;
  State.init(wrappedValue:)();
  v27 = v54;
  *v26 = v53;
  *(v26 + 1) = v27;
  sub_1001938C4(v10, v7);
  v28 = objc_allocWithZone(sub_1000F24EC(&qword_100AD6300, &unk_100944FF0));
  v29 = UIHostingController.init(rootView:)();
  v30 = type metadata accessor for TranscribingAudioAssetView();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC7Journal26TranscribingAudioAssetView_hostingController] = v29;
  v50.receiver = v31;
  v50.super_class = v30;
  v32 = v29;
  v33 = objc_msgSendSuper2(&v50, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1002E4BB4(v34);

  v35 = v33[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v33[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v36 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  v37 = v33[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated];
  v49 = v13;
  if (v37 != 1)
  {
    v38 = v21;
    v39 = v32;
    v40 = v33;
LABEL_11:
    v33[v36] = 1;

    goto LABEL_12;
  }

  if (v35 > 3)
  {
    if (v35 > 5)
    {
      if (v35 != 6)
      {

        goto LABEL_13;
      }

      v38 = v21;
      v39 = v32;
    }

    else
    {
      v38 = v21;
      v39 = v32;
    }
  }

  else
  {
    v38 = v21;
    v39 = v32;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v42 = v33;

  if ((v41 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v32 = v39;
  v21 = v38;
LABEL_13:
  v43 = objc_opt_self();
  v44 = v33;
  v45 = [v43 secondarySystemBackgroundColor];
  [v44 setBackgroundColor:v45];

  v46 = [v44 layer];
  [v46 setCornerRadius:12.0];

  [v12 addSubview:v44];
  sub_100013178(0.0);

  swift_unknownObjectRelease();

  sub_100193928(v10);
  sub_10000BA7C(v55);
  *&v12[OBJC_IVAR____TtC7Journal32FullScreenAudioTranscriptionView_recordingViewModel] = v21;

  v47 = *&v12[OBJC_IVAR____TtC7Journal32FullScreenAudioTranscriptionView_transcribingAudioAssetView];
  *&v12[OBJC_IVAR____TtC7Journal32FullScreenAudioTranscriptionView_transcribingAudioAssetView] = v44;

  return v12;
}

void sub_100582A48(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100AE6AC8, &qword_10095C7E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for UICellConfigurationState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100086C04(a1, v39);
  sub_1000F24EC(&qword_100AE6AD0, &unk_10095A020);
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if (v12)
  {
    v13(v7, 0, 1, v8);
    (*(v9 + 32))(v11, v7, v8);
    v14 = *(v2 + 8);
    v15 = *(v2 + 16);
    v37 = *v2;
    v38 = v14;
    v16 = v37;

    v17 = UICellConfigurationState.isSelected.getter();
    v18 = objc_opt_self();
    v19 = (v9 + 8);
    if (v17)
    {
      v20 = v18;
      v21 = [v18 tintColor];
      v36 = v21;
      v22 = [v20 whiteColor];
      v35 = v22;
      v23 = [v20 tintColor];
      v24 = *v19;
      v25 = v23;
      v24(v11, v8);
    }

    else
    {
      v32 = v18;
      v21 = [v18 secondaryLabelColor];
      v36 = v21;
      v22 = [v32 secondaryLabelColor];
      v35 = v22;
      v23 = [v32 clearColor];
      v33 = *v19;
      v25 = v23;
      v33(v11, v8);
    }

    v27 = v37;
    v26 = v38;
  }

  else
  {
    v13(v7, 1, 1, v8);
    sub_100004F84(v7, &qword_100AE6AC8, &qword_10095C7E0);
    v27 = *v2;
    v26 = *(v2 + 8);
    v15 = *(v2 + 16);
    v21 = *(v2 + 24);
    v22 = *(v2 + 32);
    v23 = *(v2 + 40);
    v28 = v23;
    v29 = v27;

    v30 = v21;
    v31 = v22;
  }

  *a2 = v27;
  a2[1] = v26;
  a2[2] = v15;
  a2[3] = v21;
  a2[4] = v22;
  a2[5] = v23;
}

void sub_100582D94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*v1)
  {
    Hasher._combine(_:)(1u);
    v4 = v3;
    NSObject.hash(into:)();

    if (v2[2])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1[2])
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v5 = v2[3];
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  Hasher._combine(_:)(0);
  v5 = v2[3];
  if (v5)
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    v6 = v5;
    NSObject.hash(into:)();

    v7 = v2[4];
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_12:
    Hasher._combine(_:)(0);
    v9 = v2[5];
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_13:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_11:
  Hasher._combine(_:)(0);
  v7 = v2[4];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_5:
  Hasher._combine(_:)(1u);
  v8 = v7;
  NSObject.hash(into:)();

  v9 = v2[5];
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  v10 = v9;
  NSObject.hash(into:)();
}

uint64_t *sub_100582F24()
{
  v1 = v0[1];
  *v6 = *v0;
  *&v6[16] = v1;
  v7 = v0[2];
  v2 = objc_allocWithZone(type metadata accessor for MapVisibilityCellContentView());
  v8 = *v6;
  v9 = *&v6[8];
  v10 = *&v6[24];
  v11 = v7;
  sub_1000082B4(&v8, v5, &qword_100AE4D18, &qword_1009683F0);
  sub_1000082B4(&v9, v5, &unk_100AE4870, &qword_100945360);
  sub_1000082B4(&v10, v5, &qword_100AE9A00, &qword_100960770);
  sub_1000082B4(&v11, v5, &qword_100AE9A00, &qword_100960770);
  sub_1000082B4(&v11 + 8, v5, &qword_100AE9A00, &qword_100960770);
  v3 = sub_100583130(v6);
  sub_10058446C();
  return v3;
}

double sub_100583028@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100582A48(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

Swift::Int sub_100583068()
{
  Hasher.init(_seed:)();
  sub_100582D94(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1005830AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100582D94(v2);
  return Hasher._finalize()();
}

uint64_t sub_1005830E8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1005844C0(v7, v8) & 1;
}

uint64_t *sub_100583130(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_imageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_titleButton;
  *&v1[v4] = [objc_allocWithZone(UIButton) init];
  v5 = OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_stackView;
  *&v1[v5] = [objc_allocWithZone(UIStackView) init];
  v18 = *a1;
  v17 = *(a1 + 1);
  v6 = a1[3];
  v15 = a1[4];
  v16 = v6;
  v14 = a1[5];
  v7 = &v1[OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_appliedConfiguration];
  v8 = *(a1 + 2);
  v9 = *(a1 + 1);
  *v7 = *a1;
  *(v7 + 1) = v9;
  *(v7 + 2) = v8;
  sub_1000082B4(&v18, v13, &qword_100AE4D18, &qword_1009683F0);
  sub_1000082B4(&v17, v13, &unk_100AE4870, &qword_100945360);
  sub_1000082B4(&v16, v13, &qword_100AE9A00, &qword_100960770);
  sub_1000082B4(&v15, v13, &qword_100AE9A00, &qword_100960770);
  sub_1000082B4(&v14, v13, &qword_100AE9A00, &qword_100960770);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for MapVisibilityCellContentView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10058369C();
  sub_100583BBC(a1);
  sub_100004F84(&v18, &qword_100AE4D18, &qword_1009683F0);
  sub_100004F84(&v17, &unk_100AE4870, &qword_100945360);
  sub_100004F84(&v16, &qword_100AE9A00, &qword_100960770);
  sub_100004F84(&v15, &qword_100AE9A00, &qword_100960770);
  sub_100004F84(&v14, &qword_100AE9A00, &qword_100960770);

  return v10;
}

void (*sub_100583364(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x170uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 360) = v1;
  v5 = (v1 + OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_appliedConfiguration);
  v6 = *(v1 + OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_appliedConfiguration + 32);
  v7 = *(v1 + OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_appliedConfiguration + 40);
  v8 = sub_100584418();
  v9 = swift_allocObject();
  v10 = *v5;
  v11 = v5[1];
  v4[18] = v9;
  v4 += 18;
  v4[3] = &type metadata for MapVisibilityCellContentConfiguration;
  v4[4] = v8;
  *(v9 + 16) = v10;
  *(v9 + 32) = v11;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  v12 = v10;
  v13 = *(&v11 + 1);
  v14 = v7;
  v15 = v12;

  v16 = v13;
  v17 = v6;
  return sub_100583454;
}

void sub_100583454(void **a1, char a2)
{
  v3 = *a1;
  sub_100086C04(*a1 + 144, *a1 + 184);
  if (a2)
  {
    sub_100086C04(v3 + 184, (v3 + 14));
    sub_1000F24EC(&qword_100AD3268, &qword_100941C20);
    if (swift_dynamicCast())
    {
      v4 = v3[7];
      *v3 = v3[6];
      v3[1] = v4;
      v3[2] = v3[8];
      sub_100583BBC(v3);
      *(v3 + 44) = *v3;
      sub_100004F84((v3 + 22), &qword_100AE4D18, &qword_1009683F0);
      *(v3 + 280) = *(v3 + 8);
      sub_100004F84(v3 + 280, &unk_100AE4870, &qword_100945360);
      *(v3 + 43) = *(v3 + 3);
      sub_100004F84(v3 + 344, &qword_100AE9A00, &qword_100960770);
      *(v3 + 42) = *(v3 + 4);
      sub_100004F84((v3 + 21), &qword_100AE9A00, &qword_100960770);
      *(v3 + 41) = *(v3 + 5);
      sub_100004F84(v3 + 328, &qword_100AE9A00, &qword_100960770);
    }

    sub_10000BA7C(v3 + 23);
  }

  else
  {
    sub_1000F24EC(&qword_100AD3268, &qword_100941C20);
    if (swift_dynamicCast())
    {
      v5 = v3[7];
      v3[3] = v3[6];
      v3[4] = v5;
      v3[5] = v3[8];
      sub_100583BBC((v3 + 3));
      *(v3 + 40) = *(v3 + 6);
      sub_100004F84((v3 + 20), &qword_100AE4D18, &qword_1009683F0);
      *(v3 + 264) = *(v3 + 56);
      sub_100004F84(v3 + 264, &unk_100AE4870, &qword_100945360);
      *(v3 + 39) = *(v3 + 9);
      sub_100004F84(v3 + 312, &qword_100AE9A00, &qword_100960770);
      *(v3 + 38) = *(v3 + 10);
      sub_100004F84((v3 + 19), &qword_100AE9A00, &qword_100960770);
      *(v3 + 37) = *(v3 + 11);
      sub_100004F84(v3 + 296, &qword_100AE9A00, &qword_100960770);
    }
  }

  sub_10000BA7C(v3 + 18);

  free(v3);
}

uint64_t sub_10058369C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AE4250, &unk_100941870);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v31 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v30 = *(v8 - 8);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v1[OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_stackView];
  [v12 setAxis:{1, v9}];
  [v12 setAlignment:3];
  [v12 setSpacing:10.0];
  v13 = *&v1[OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_imageView];
  v29 = objc_opt_self();
  v14 = [v29 preferredFontForTextStyle:UIFontTextStyleTitle2];
  v15 = [objc_opt_self() configurationWithFont:v14 scale:3];

  [v13 setPreferredSymbolConfiguration:v15];
  [v13 setContentMode:1];
  [v12 addArrangedSubview:v13];
  static UIButton.Configuration.filled()();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v31);
  v16 = v8;
  v17 = v30;
  UIButton.Configuration.cornerStyle.setter();
  v18 = *&v1[OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_titleButton];
  (*(v17 + 16))(v4, v11, v16);
  (*(v17 + 56))(v4, 0, 1, v16);
  UIButton.configuration.setter();
  [v18 setUserInteractionEnabled:0];
  v19 = [v18 titleLabel];
  if (v19)
  {
    v20 = v19;
    v21 = [v29 preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v20 setFont:v21];
  }

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [v18 heightAnchor];
  v23 = [v22 constraintEqualToConstant:24.0];

  [v23 setActive:1];
  [v18 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v12 addArrangedSubview:v18];
  [v1 addSubview:v12];
  sub_100013178(10.0);

  v24 = UIAccessibilityTraitButton;
  v25 = [v1 accessibilityTraits];
  if ((v24 & ~v25) != 0)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  [v1 setAccessibilityTraits:v26 | v25];
  [v1 setIsAccessibilityElement:1];
  return (*(v17 + 8))(v11, v16);
}

uint64_t sub_100583BBC(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AE4250, &unk_100941870);
  __chkstk_darwin(v3 - 8);
  v41 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = v34 - v6;
  __chkstk_darwin(v7);
  v42 = v34 - v8;
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  v12 = v1 + OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_appliedConfiguration;
  v13 = *a1;
  v34[2] = *(a1 + 8);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *v12;
  v19 = *(v12 + 24);
  v20 = *(v12 + 32);
  v39 = *(v12 + 40);
  v21 = *(a1 + 16);
  *v12 = *a1;
  *(v12 + 16) = v21;
  *(v12 + 32) = *(a1 + 32);
  v22 = v13;
  v34[1] = v15;

  v23 = v14;
  v36 = v16;
  v35 = v16;
  v38 = v17;
  v37 = v17;

  v24 = *(v40 + OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_imageView);
  [v24 setImage:v22];
  [v24 setTintColor:v23];
  UIButton.configuration.getter();
  v25 = type metadata accessor for UIButton.Configuration();
  v26 = *(*(v25 - 8) + 48);
  if (v26(v11, 1, v25))
  {
    v27 = v41;
    sub_1000082B4(v11, v41, &qword_100AE4250, &unk_100941870);
    v28 = v27;
    UIButton.configuration.setter();
    sub_100004F84(v11, &qword_100AE4250, &unk_100941870);
  }

  else
  {
    v28 = v41;

    UIButton.Configuration.title.setter();
    UIButton.configuration.setter();
  }

  v29 = v42;
  UIButton.configuration.getter();
  if (v26(v29, 1, v25))
  {
    sub_1000082B4(v29, v28, &qword_100AE4250, &unk_100941870);
    UIButton.configuration.setter();
    sub_100004F84(v29, &qword_100AE4250, &unk_100941870);
  }

  else
  {
    v30 = v35;
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.configuration.setter();
  }

  v31 = v43;
  UIButton.configuration.getter();
  if (v26(v31, 1, v25))
  {
    sub_1000082B4(v31, v28, &qword_100AE4250, &unk_100941870);
    UIButton.configuration.setter();
    return sub_100004F84(v31, &qword_100AE4250, &unk_100941870);
  }

  else
  {
    v33 = v37;
    UIButton.Configuration.baseBackgroundColor.setter();
    return UIButton.configuration.setter();
  }
}

id sub_100583FB0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapVisibilityCellContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005840AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100584108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10058417C()
{
  result = qword_100AE99F8;
  if (!qword_100AE99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE99F8);
  }

  return result;
}

id sub_1005841D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_appliedConfiguration);
  v4 = *(v3 + 5);
  v14 = *(v3 + 4);
  a1[3] = &type metadata for MapVisibilityCellContentConfiguration;
  a1[4] = sub_100584418();
  v5 = swift_allocObject();
  *a1 = v5;
  v6 = *v3;
  v7 = v3[1];
  *(v5 + 16) = *v3;
  *(v5 + 32) = v7;
  *(v5 + 48) = v14;
  *(v5 + 56) = v4;
  v8 = v6;
  v9 = *(&v7 + 1);
  v10 = v4;
  v11 = v8;

  v12 = v9;

  return v14;
}

uint64_t sub_100584284(void *a1)
{
  sub_100086C04(a1, v4);
  sub_1000F24EC(&qword_100AD3268, &qword_100941C20);
  if (swift_dynamicCast())
  {
    *v5 = v3[0];
    *&v5[16] = v3[1];
    v6 = v3[2];
    sub_100583BBC(v5);
    v7 = *v5;
    sub_100004F84(&v7, &qword_100AE4D18, &qword_1009683F0);
    v3[0] = *&v5[8];
    sub_100004F84(v3, &unk_100AE4870, &qword_100945360);
    v8 = *&v5[24];
    sub_100004F84(&v8, &qword_100AE9A00, &qword_100960770);
    v9 = v6;
    sub_100004F84(&v9, &qword_100AE9A00, &qword_100960770);
    v4[0] = *(&v6 + 1);
    sub_100004F84(v4, &qword_100AE9A00, &qword_100960770);
  }

  return sub_10000BA7C(a1);
}

void (*sub_1005843A8(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100583364(v2);
  return sub_100113D90;
}

unint64_t sub_100584418()
{
  result = qword_100AE9A08;
  if (!qword_100AE9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9A08);
  }

  return result;
}

unint64_t sub_10058446C()
{
  result = qword_100AE9A10;
  if (!qword_100AE9A10)
  {
    type metadata accessor for MapVisibilityCellContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9A10);
  }

  return result;
}

uint64_t sub_1005844C0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1000065A8(0, &qword_100AE9450, UIImage_ptr);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  if (v9)
  {
    if (!v10 || (*(a1 + 8) != *(a2 + 8) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 24);
  v12 = *(a2 + 24);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
    v13 = v12;
    v14 = v11;
    v15 = static NSObject.== infix(_:_:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = *(a1 + 32);
  v17 = *(a2 + 32);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
    v18 = v17;
    v19 = v16;
    v20 = static NSObject.== infix(_:_:)();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = *(a1 + 40);
  v22 = *(a2 + 40);
  if (v21)
  {
    if (v22)
    {
      sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
      v23 = v22;
      v24 = v21;
      v25 = static NSObject.== infix(_:_:)();

      if (v25)
      {
        return 1;
      }
    }
  }

  else if (!v22)
  {
    return 1;
  }

  return 0;
}

void sub_1005846A8()
{
  v1 = OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_titleButton;
  *(v0 + v2) = [objc_allocWithZone(UIButton) init];
  v3 = OBJC_IVAR____TtC7Journal28MapVisibilityCellContentView_stackView;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100584898(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s15MOMapAnnotationCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double *sub_100584964(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return _swiftEmptyArrayStorage;
}

double *sub_100584B0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1001999C0(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000BA20(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 2);
      v5 = *(v3 + 3);
      if (v6 >= v5 >> 1)
      {
        sub_1001999C0((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 2) = v6 + 1;
      v7 = &v3[2 * v6];
      *(v7 + 4) = v9;
      *(v7 + 5) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

double *sub_100584C20(uint64_t a1)
{
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  for (i = a1 + 32; ; i += 40)
  {
    v4.isa = AnyHashable._bridgeToObjectiveC()().isa;
    type metadata accessor for DataAggregator.EntryPlace(0);
    if (!swift_dynamicCastClass())
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return 0;
}

double *sub_100584D14(uint64_t a1, uint64_t (*a2)(void))
{
  v8 = _swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v4)
  {
    return v8;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10000BA20(i, v7);
    a2(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

double *sub_100584E28(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a2(0);
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v8 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return _swiftEmptyArrayStorage;
}

double *sub_100584F94(char a1)
{
  v2 = _swiftEmptyArrayStorage;
  v27 = _swiftEmptyArrayStorage;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (v3)
  {
    v5 = v3;
    v6 = [v5 visibleCells];
    sub_1000065A8(0, &qword_100ADE560, UICollectionViewCell_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100584E28(v7, type metadata accessor for MosaicCell);

    v26 = sub_1004FCE00(v9, v8);
    sub_10058EDC8(&v26);

    v10 = v26;
    if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
    {
      goto LABEL_37;
    }

    v11 = *(v26 + 16);
    v23 = v5;
    while (v11)
    {
      v12 = OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid;
      v13 = v10 & 0xC000000000000001;
      v14 = (v10 + 32);
      v24 = _swiftEmptyArrayStorage;
      while (!__OFSUB__(v11--, 1))
      {
        if (v13)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          if (v11 >= *(v10 + 16))
          {
            goto LABEL_36;
          }

          v16 = *&v14[v11];
        }

        if (v16[OBJC_IVAR____TtC7Journal10MosaicCell_index + 8])
        {

          goto LABEL_32;
        }

        v5 = *&v16[OBJC_IVAR____TtC7Journal10MosaicCell_index];
        if (*(v1 + v12) == 1)
        {
          if (v5 < 5)
          {
            goto LABEL_19;
          }

LABEL_7:
          if (a1)
          {
            goto LABEL_19;
          }

LABEL_8:

          if (!v11)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (qword_100AD0A28 != -1)
          {
            v21 = v16;
            swift_once();
            v16 = v21;
            v14 = (v10 + 32);
          }

          if (v5 >= qword_100B30F70)
          {
            goto LABEL_7;
          }

LABEL_19:
          v17 = *&v16[OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView];
          v5 = *&v17[OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAssetView];
          if (!v5)
          {
            goto LABEL_8;
          }

          v25 = v16;
          type metadata accessor for VideoAssetGridView(0);
          if (!swift_dynamicCastClass())
          {
            v19 = v25;
            goto LABEL_24;
          }

          v18 = v17;
          v19 = v5;
          if (sub_1007B7D90())
          {
            v20 = v19;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v24 = v27;
            v13 = v10 & 0xC000000000000001;
            v14 = (v10 + 32);
            if (!v11)
            {
              goto LABEL_32;
            }
          }

          else
          {

            v13 = v10 & 0xC000000000000001;
            v14 = (v10 + 32);
LABEL_24:

            if (!v11)
            {
              goto LABEL_32;
            }
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v11 = _CocoaArrayWrapper.endIndex.getter();
      v23 = v5;
    }

    v24 = _swiftEmptyArrayStorage;
LABEL_32:

    return v24;
  }

  return v2;
}

id sub_100585338(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 visibleCells];
    sub_1000065A8(0, &qword_100ADE560, UICollectionViewCell_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v24 = v4;
      v8 = 0;
      v9 = 0;
      v25 = OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid;
      v10 = v6 & 0xC000000000000001;
      v29 = v6 & 0xFFFFFFFFFFFFFF8;
      v30 = v6;
      v28 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v10)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v29 + 16))
          {
            goto LABEL_35;
          }

          v11 = *(v6 + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        type metadata accessor for MosaicCell();
        v14 = swift_dynamicCastClass();
        if (!v14)
        {
          goto LABEL_6;
        }

        v15 = v14;
        if (*(v14 + OBJC_IVAR____TtC7Journal10MosaicCell_index + 8))
        {

LABEL_29:

          goto LABEL_38;
        }

        v4 = *(v14 + OBJC_IVAR____TtC7Journal10MosaicCell_index);
        if (*(v14 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail) == 1)
        {

          v16 = v12;
          v9 = v15;
        }

        v17 = *&v15[OBJC_IVAR____TtC7Journal10MosaicCell_journalAsset];
        if (!v17)
        {
          goto LABEL_6;
        }

        v18 = i;
        v19 = v9;
        v20 = v17;
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {

          v9 = v19;
          v6 = v30;
          v10 = v28;
LABEL_6:

          goto LABEL_7;
        }

        if ((a2 & 1) == 0)
        {

LABEL_32:

          v22 = *&v15[OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView];
          return v22;
        }

        if (*(v26 + v25) == 1)
        {

          if (v4 <= 4)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (qword_100AD0A28 != -1)
          {
            swift_once();
          }

          v21 = qword_100B30F70;

          if (v4 < v21)
          {
LABEL_31:

            goto LABEL_32;
          }
        }

        if (v19)
        {

          return v19;
        }

        v9 = 0;
        i = v18;
        v6 = v30;
        v10 = v28;
LABEL_7:
        ++v8;
        if (v13 == i)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

    v9 = 0;
LABEL_38:
  }

  return 0;
}

uint64_t sub_100585678()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE9A60);
  v1 = sub_10000617C(v0, qword_100AE9A60);
  if (qword_100AD01F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30088);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100585740()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE9A78);
  sub_10000617C(v0, qword_100AE9A78);
  return Logger.init(subsystem:category:)();
}

void sub_1005857C4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (!v2)
  {
    return;
  }

  isEscapingClosureAtFileLocation = a1;
  if ((a1 & 1) == 0)
  {
    v1 = 0;
  }

  v4 = v2;
  [v4 setDropDelegate:v1];
  v5 = [v4 visibleCells];
  sub_1000065A8(0, &qword_100ADE560, UICollectionViewCell_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
LABEL_23:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_24:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_6:
  if (v7 >= 1)
  {
    v27 = v4;
    v4 = 0;
    v8 = v6 & 0xC000000000000001;
    v9 = isEscapingClosureAtFileLocation & 1;
    v29 = isEscapingClosureAtFileLocation & 1;
    v30 = isEscapingClosureAtFileLocation;
    v28 = v7;
    while (1)
    {
      if (v8)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v4 + 32);
      }

      v11 = v10;
      type metadata accessor for MosaicCell();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = *(v12 + OBJC_IVAR____TtC7Journal10MosaicCell_isEditing);
        *(v12 + OBJC_IVAR____TtC7Journal10MosaicCell_isEditing) = v9;
        if (v14 != (isEscapingClosureAtFileLocation & 1))
        {
          if (isEscapingClosureAtFileLocation)
          {
            sub_1007075A0();
          }

          else
          {
            v15 = *(v12 + OBJC_IVAR____TtC7Journal10MosaicCell_xPlatterView);
            if (v15)
            {
              v16 = objc_opt_self();
              v17 = swift_allocObject();
              *(v17 + 16) = v15;
              v18 = swift_allocObject();
              *(v18 + 16) = sub_10043C168;
              *(v18 + 24) = v17;
              v35 = sub_100028EF4;
              v36 = v18;
              aBlock = _NSConcreteStackBlock;
              v32 = 1107296256;
              v33 = sub_10001A7D4;
              v34 = &unk_100A73BE0;
              v19 = _Block_copy(&aBlock);
              v20 = v15;

              [v16 performWithoutAnimation:{v19, v27}];
              _Block_release(v19);
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if (isEscapingClosureAtFileLocation)
              {
                __break(1u);
                goto LABEL_23;
              }

              v21 = swift_allocObject();
              *(v21 + 16) = v20;
              v35 = sub_10043C170;
              v36 = v21;
              aBlock = _NSConcreteStackBlock;
              v32 = 1107296256;
              v33 = sub_100006C7C;
              v34 = &unk_100A73C30;
              v22 = _Block_copy(&aBlock);
              v23 = v20;

              v24 = swift_allocObject();
              v24[2] = sub_100707ED8;
              v24[3] = 0;
              v24[4] = v13;
              v35 = sub_10043C178;
              v36 = v24;
              aBlock = _NSConcreteStackBlock;
              v32 = 1107296256;
              v33 = sub_10003264C;
              v34 = &unk_100A73C80;
              v25 = _Block_copy(&aBlock);
              v26 = v11;

              [v16 animateWithDuration:4 delay:v22 options:v25 animations:0.0 completion:0.0];

              _Block_release(v25);
              _Block_release(v22);

              v11 = v23;
              v9 = v29;
              isEscapingClosureAtFileLocation = v30;
              v8 = v6 & 0xC000000000000001;
              v7 = v28;
            }

            else
            {
              v8 = v6 & 0xC000000000000001;
            }
          }
        }
      }

      v4 = v4 + 1;

      if (v7 == v4)
      {

        return;
      }
    }
  }

  __break(1u);
}

void sub_100585C6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_mosaicLayout);
  v2 = OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid;
  v3 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid);
  v4 = v1[OBJC_IVAR____TtC7Journal12MosaicLayout_enforceShowCompressedAssetGrid];
  v1[OBJC_IVAR____TtC7Journal12MosaicLayout_enforceShowCompressedAssetGrid] = v3;
  if (v3 != v4)
  {
    [v1 invalidateLayout];
  }

  v5 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtC7Journal24CanvasGridCollectionView_enforceShowCompressedAssetGrid) = *(v0 + v2);
  }

  sub_10007A1D8();
}

id sub_100585D7C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    sub_1000F24EC(&unk_100AD4780, &unk_100941070);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100941D50;
    sub_1000065A8(0, &qword_100AE4350, UIKeyCommand_ptr);
    v4 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    result = v3;
    *(v3 + 32) = v4;
  }

  else
  {
    v8.receiver = v0;
    v8.super_class = type metadata accessor for CanvasGridView(0);
    result = objc_msgSendSuper2(&v8, "keyCommands");
    if (result)
    {
      v6 = result;
      sub_1000065A8(0, &qword_100AE4350, UIKeyCommand_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return v7;
    }
  }

  return result;
}

id sub_100585F08()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CanvasGridView(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005860F4()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  IndexPath.init(item:section:)();
  v8 = v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 48))(v0, v4, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v2 + 8))(v4, v1);
  return 1;
}

void sub_1005862C8(uint64_t a1)
{
  sub_100586438(319, &unk_100ADE340, &type metadata accessor for IndexPath);
  if (v1 <= 0x3F)
  {
    sub_100586438(319, &qword_100AD59F0, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100586438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10058648C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for UUID();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v8 = sub_1000F24EC(&unk_100AE9B38, &qword_10095E378);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = type metadata accessor for MainActor();
  v6[13] = static MainActor.shared.getter();
  v6[14] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100586608, v10, v9);
}

uint64_t sub_100586608()
{
  v1 = v0[2];

  v2 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
  if (v2)
  {
    v3 = v2;
    sub_10012B2C8();
  }

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[15] = v5;
  v0[16] = v4;

  return _swift_task_switch(sub_1005866B0, v5, v4);
}

uint64_t sub_1005866B0()
{
  v1 = v0[13];

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100586764;
  v3 = v0[3];

  return sub_10056DB38(v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_100586764()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1005868A8, v3, v2);
}

double *sub_1005868A8()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource);
  v0[18] = v1;
  if (v1)
  {
    v2 = v0[3];
    v1;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    if (v2 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v3)
    {
      result = sub_100199D3C(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        __break(1u);
        return result;
      }

      v5 = v0[6];
      if ((v2 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v3; ++i)
        {
          v7 = v0[8];
          v8 = v0[5];
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          (*(v5 + 16))(v7, v9 + OBJC_IVAR____TtC7Journal5Asset_id, v8);
          swift_unknownObjectRelease();
          v11 = _swiftEmptyArrayStorage[2];
          v10 = _swiftEmptyArrayStorage[3];
          if (*&v11 >= *&v10 >> 1)
          {
            sub_100199D3C((*&v10 > 1uLL), *&v11 + 1, 1);
          }

          v12 = v0[8];
          v13 = v0[5];
          *&_swiftEmptyArrayStorage[2] = *&v11 + 1;
          (*(v5 + 32))(_swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * *&v11, v12, v13);
        }
      }

      else
      {
        v15 = (v0[3] + 32);
        v16 = *(v5 + 16);
        do
        {
          v16(v0[7], *v15 + OBJC_IVAR____TtC7Journal5Asset_id, v0[5]);
          v18 = _swiftEmptyArrayStorage[2];
          v17 = _swiftEmptyArrayStorage[3];
          if (*&v18 >= *&v17 >> 1)
          {
            sub_100199D3C((*&v17 > 1uLL), *&v18 + 1, 1);
          }

          v19 = v0[7];
          v20 = v0[5];
          *&_swiftEmptyArrayStorage[2] = *&v18 + 1;
          (*(v5 + 32))(_swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * *&v18, v19, v20);
          ++v15;
          --v3;
        }

        while (v3);
      }
    }

    NSDiffableDataSourceSnapshot.deleteItems(_:)(_swiftEmptyArrayStorage);

    v23 = (&async function pointer to dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:) + async function pointer to dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:));
    v21 = swift_task_alloc();
    v0[19] = v21;
    *v21 = v0;
    v21[1] = sub_100586C20;
    v22 = v0[11];

    return v23(v22, 1);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100586C20()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_100586D40, v3, v2);
}

uint64_t sub_100586D40()
{
  v1 = v0[4];

  v2 = v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    v4 = *(v0[2] + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v7 = v0[18];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = *(v0[4] + OBJC_IVAR____TtC7Journal14CanvasGridView_didDeletePhoto);

  v11(v12);

  (*(v9 + 8))(v8, v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100586EB0(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v4 = sub_1000F24EC(&unk_100AE9B38, &qword_10095E378);
  v86 = *(v4 - 8);
  __chkstk_darwin(v4);
  v83 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v74 - v7;
  v92 = type metadata accessor for IndexPath();
  v85 = *(v92 - 8);
  __chkstk_darwin(v92);
  v84 = v9;
  v90 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v10 - 8);
  v89 = v74 - v11;
  v12 = type metadata accessor for IndexSet();
  v87 = *(v12 - 8);
  v13 = *(v87 + 64);
  __chkstk_darwin(v12);
  v88 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v91 = v74 - v15;
  v16 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v16 - 8);
  v18 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v74 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v26 = __chkstk_darwin(v24);
  v94 = v74 - v27;
  v28 = *&v2[OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource];
  if (!v28)
  {
    (*(v23 + 56))(v21, 1, 1, v22, v26);
    return sub_100004F84(v21, &qword_100AD1420, &unk_10093C080);
  }

  v80 = v25;
  v81 = OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource;
  v77 = v8;
  v78 = v12;
  v82 = v2;
  v29 = v28;
  v79 = a1;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v30 = *(v23 + 48);
  if (v30(v21, 1, v22) == 1)
  {
    return sub_100004F84(v21, &qword_100AD1420, &unk_10093C080);
  }

  v75 = v4;
  v31 = *(v23 + 32);
  v32 = v94;
  v31(v94, v21, v22);
  v33 = *&v82[v81];
  if (!v33)
  {
    (*(v23 + 8))(v32, v22);
    (*(v23 + 56))(v18, 1, 1, v22);
    return sub_100004F84(v18, &qword_100AD1420, &unk_10093C080);
  }

  v34 = v33;
  v76 = v22;
  v35 = v34;
  v36 = v93;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v37 = v76;
  if (v30(v18, 1, v76) == 1)
  {
    (*(v23 + 8))(v32, v37);
    return sub_100004F84(v18, &qword_100AD1420, &unk_10093C080);
  }

  v39 = v80;
  v31(v80, v18, v37);
  sub_100034250(&unk_100AE0020, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v40 = v36;
  v41 = v92;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v42 = *(v23 + 8);
    v42(v39, v37);
    return (v42)(v32, v37);
  }

  else
  {
    sub_1000F24EC(&unk_100AD8A90, &qword_1009451C0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100940080;
    *(v43 + 32) = IndexPath.item.getter();
    v95 = v43;
    v74[1] = sub_100034250(&unk_100ADE5C0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    sub_1000F24EC(&qword_100ADB9B8, &qword_100971A80);
    sub_10000B58C(&qword_100AE9B80, &qword_100ADB9B8, &qword_100971A80, &protocol conformance descriptor for [A]);
    v44 = v91;
    v45 = v78;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v46 = v89;
    static TaskPriority.userInitiated.getter();
    v47 = type metadata accessor for TaskPriority();
    (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
    v48 = v87;
    (*(v87 + 16))(v88, v44, v45);
    v49 = v85;
    (*(v85 + 16))(v90, v40, v41);
    type metadata accessor for MainActor();
    v50 = v82;
    v51 = v82;
    v52 = static MainActor.shared.getter();
    v53 = (*(v48 + 80) + 40) & ~*(v48 + 80);
    v54 = (v13 + *(v49 + 80) + v53) & ~*(v49 + 80);
    v55 = swift_allocObject();
    *(v55 + 2) = v52;
    *(v55 + 3) = &protocol witness table for MainActor;
    v84 = v51;
    *(v55 + 4) = v51;
    (*(v48 + 32))(&v55[v53], v88, v45);
    (*(v49 + 32))(&v55[v54], v90, v92);
    sub_1003E9BBC(0, 0, v89, &unk_10095E438, v55);

    v56 = *&v50[v81];
    if (v56)
    {
      v57 = v56;
      v58 = v83;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v59 = v77;
      v60 = v75;
      (*(v86 + 32))(v77, v58, v75);
      if (static IndexPath.> infix(_:_:)())
      {
        v61 = v94;
        v62 = v80;
        NSDiffableDataSourceSnapshot.moveItem(_:beforeItem:)();
      }

      else
      {
        v61 = v94;
        v62 = v80;
        NSDiffableDataSourceSnapshot.moveItem(_:afterItem:)();
      }

      sub_1000F24EC(&unk_100AE1A40, &qword_10094C3D0);
      v63 = *(v23 + 72);
      v64 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_100940050;
      v66 = v65 + v64;
      v67 = *(v23 + 16);
      v68 = v61;
      v69 = v76;
      v67(v66, v68, v76);
      v67(v66 + v63, v62, v69);
      NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v65);

      [*&v84[OBJC_IVAR____TtC7Journal14CanvasGridView_mosaicLayout] invalidateLayout];
      v70 = *&v82[v81];
      if (v70)
      {
        v71 = v70;
        dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
      }

      (*(v86 + 8))(v59, v60);
      (*(v87 + 8))(v91, v78);
    }

    else
    {
      (*(v48 + 8))(v91, v45);
    }

    v72 = *(v23 + 8);
    v73 = v76;
    v72(v80, v76);
    return (v72)(v94, v73);
  }
}

uint64_t sub_1005878A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[7] = v8;
  v6[8] = v7;

  return _swift_task_switch(sub_10058793C, v8, v7);
}

uint64_t sub_10058793C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry);
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = *(v0 + 48);

    v3 = IndexPath.item.getter();

    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_100587A70;
    v5 = *(v0 + 32);

    return sub_1005700DC(v2, &protocol witness table for MainActor, v5, v3);
  }

  else
  {

    **(v0 + 16) = *(v0 + 72) == 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100587A70()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100587BD0, v3, v2);
}

uint64_t sub_100587BD0()
{

  **(v0 + 16) = *(v0 + 72) == 0;
  v1 = *(v0 + 8);

  return v1();
}

double sub_100587C44(void *a1, uint64_t a2)
{
  v24 = a1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for JournalFeatureFlags();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, enum case for JournalFeatureFlags.richCanvas(_:), v10, v12);
  v15 = JournalFeatureFlags.isEnabled.getter();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    static TaskPriority.userInitiated.getter();
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
    (*(v4 + 16))(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
    type metadata accessor for MainActor();
    v18 = v23;
    v19 = v24;
    v20 = static MainActor.shared.getter();
    v21 = (*(v4 + 80) + 48) & ~*(v4 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = v20;
    *(v22 + 3) = &protocol witness table for MainActor;
    *(v22 + 4) = v18;
    *(v22 + 5) = v19;
    (*(v4 + 32))(&v22[v21], v6, v3);
    sub_1003E9BBC(0, 0, v9, &unk_10095E448, v22);
  }

  return result;
}

uint64_t sub_100587F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for AssetPlacement();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[10] = v9;
  v6[11] = v8;

  return _swift_task_switch(sub_100588020, v9, v8);
}

uint64_t sub_100588020()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry);
  *(v0 + 96) = v1;
  if (v1)
  {
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);

    *v3 = IndexPath.row.getter();
    (*(v5 + 104))(v3, enum case for AssetPlacement.grid(_:), v4);

    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_100588194;
    v7 = *(v0 + 64);
    v8 = *(v0 + 32);

    return sub_1005666C0(v2, &protocol witness table for MainActor, v8, v7);
  }

  else
  {

    **(v0 + 16) = *(v0 + 96) == 0;

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100588194()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_100588358, v6, v5);
}

uint64_t sub_100588358()
{

  **(v0 + 16) = *(v0 + 96) == 0;

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1005883D4(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource);
  if (!v10)
  {
    (*(v6 + 56))(v4, 1, 1, v5, v7);
    goto LABEL_7;
  }

  v11 = v10;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_7:
    sub_100004F84(v4, &qword_100AD1420, &unk_10093C080);
    return 0;
  }

  (*(v6 + 32))(v9, v4, v5);
  v12 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry);
  if (v12)
  {
    v13 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
    v14 = swift_beginAccess();
    v15 = *(v12 + v13);
    __chkstk_darwin(v14);
    *(&v18 - 2) = v9;

    v16 = sub_100068DDC(sub_100068DC0, (&v18 - 4), v15);

    (*(v6 + 8))(v9, v5);
    result = v16;
    if (v16)
    {
      return result;
    }
  }

  else
  {
    (*(v6 + 8))(v9, v5);
  }

  return 0;
}

uint64_t sub_100588674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for MapSize();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for AssetPlacement();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = type metadata accessor for JournalFeatureFlags();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = type metadata accessor for MainActor();
  v6[18] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[19] = v12;
  v6[20] = v11;

  return _swift_task_switch(sub_100588884, v12, v11);
}

uint64_t sub_100588884()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry;
  v0[21] = OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry;
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset;
    v5 = *v4;
    v0[22] = *v4;
    if (v5)
    {
      v6 = v0[15];
      v7 = v0[16];
      v8 = v0[14];
      v47 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(v7, v5 + OBJC_IVAR____TtC7Journal5Asset_id, v8);
      sub_100034250(&qword_100AD9220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v9 = v5;
      v10 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v6 + 8))(v7, v8);
      if ((v10 & 1) == 0)
      {
        v30 = v0[12];
        v31 = v0[13];
        v32 = v0[11];
        (*(v30 + 104))(v31, enum case for JournalFeatureFlags.enhancedSync(_:), v32);
        v33 = JournalFeatureFlags.isEnabled.getter();
        (*(v30 + 8))(v31, v32);
        if ((v33 & 1) == 0)
        {
          v42 = v0[18];
          v43 = *(v47 + 72);

          v45 = (v43 + *v43);
          v44 = swift_task_alloc();
          v0[25] = v44;
          *v44 = v0;
          v44[1] = sub_1005893D0;
          v27 = v42;
          v29 = v45;
          v28 = ObjectType;
          v26 = v47;

          return v29(v27, &protocol witness table for MainActor, v28, v26);
        }

        v34 = *(v1 + v2);
        v0[23] = v34;
        if (v34)
        {
          v35 = v0[18];
          v37 = v0[9];
          v36 = v0[10];
          v38 = v0[8];
          v39 = v9;

          *v36 = static AssetPlacement.maxGridCount.getter();
          (*(v37 + 104))(v36, enum case for AssetPlacement.grid(_:), v38);

          v40 = swift_task_alloc();
          v0[24] = v40;
          *v40 = v0;
          v40[1] = sub_100588EDC;
          v18 = v0[10];
          v20 = v35;
          v19 = v39;
          goto LABEL_8;
        }
      }
    }
  }

  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  (*(v12 + 104))(v11, enum case for JournalFeatureFlags.enhancedSync(_:), v13);
  v14 = JournalFeatureFlags.isEnabled.getter();
  (*(v12 + 8))(v11, v13);
  if ((v14 & 1) == 0)
  {
    v22 = v0[18];
    v49 = v0[4];
    v23 = swift_getObjectType();
    v24 = *(v49 + 64);

    v48 = (v24 + *v24);
    v25 = swift_task_alloc();
    v0[30] = v25;
    *v25 = v0;
    v25[1] = sub_100589A40;
    v26 = v0[4];
    v27 = v22;
    v28 = v23;
    v29 = v48;

    return v29(v27, &protocol witness table for MainActor, v28, v26);
  }

  v15 = *(v0[2] + v0[21]);
  v0[26] = v15;
  v16 = v0[18];
  if (v15)
  {
    (*(v0[9] + 104))(v0[10], enum case for AssetPlacement.slim(_:), v0[8]);

    v17 = swift_task_alloc();
    v0[27] = v17;
    *v17 = v0;
    v17[1] = sub_100589514;
    v18 = v0[10];
    v19 = v0[3];
    v20 = v16;
LABEL_8:

    return sub_1005666C0(v20, &protocol witness table for MainActor, v19, v18);
  }

  if (*(v0[2] + v0[21]))
  {

    sub_10003A464();
  }

  sub_1000542E8();
  sub_100053CE0(0);

  v41 = v0[1];

  return v41();
}

uint64_t sub_100588EDC()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 160);
  v7 = *(v1 + 152);

  return _swift_task_switch(sub_1005890B8, v7, v6);
}

uint64_t sub_1005890B8()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  (*(v2 + 104))(v1, enum case for JournalFeatureFlags.enhancedSync(_:), v3);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = *(*(v0 + 16) + *(v0 + 168));
    *(v0 + 208) = v5;
    v6 = *(v0 + 144);
    if (v5)
    {
      (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for AssetPlacement.slim(_:), *(v0 + 64));

      v7 = swift_task_alloc();
      *(v0 + 216) = v7;
      *v7 = v0;
      v7[1] = sub_100589514;
      v8 = *(v0 + 80);
      v9 = *(v0 + 24);

      return sub_1005666C0(v6, &protocol witness table for MainActor, v9, v8);
    }

    else
    {

      if (*(*(v0 + 16) + *(v0 + 168)))
      {

        sub_10003A464();
      }

      sub_1000542E8();
      sub_100053CE0(0);

      v16 = *(v0 + 8);

      return v16();
    }
  }

  else
  {
    v11 = *(v0 + 144);
    v18 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    v13 = *(v18 + 64);

    v17 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 240) = v14;
    *v14 = v0;
    v14[1] = sub_100589A40;
    v15 = *(v0 + 32);

    return v17(v11, &protocol witness table for MainActor, ObjectType, v15);
  }
}