id sub_100064B8C(char a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (result)
  {
    sub_1000652DC(&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter], v10, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    swift_storeEnumTagMultiPayload();
    v12 = sub_100065344(v10);
    result = sub_10000BBC4(v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (v12)
    {
      v13 = &v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString];
      v14 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString + 8];
      v15 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString] & 0xFFFFFFFFFFFFLL;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v14) & 0xF;
      }

      if (v15)
      {
        v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchComplete] = 0;
        sub_100F373E0();
        v16 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_boardSearchHelper];
        v17 = *(v13 + 1);
        v32 = *v13;
        v30 = v17;
        v18 = swift_allocObject();
        *(v18 + 16) = v2;
        v19 = a1 & 1;
        *(v18 + 24) = v19;
        v20 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v21 = swift_allocObject();
        *(v21 + 16) = v2;
        *(v21 + 24) = v19;
        *(v21 + 32) = v20;
        v31 = v20;
        v22 = v2;

        sub_1008A0F80();
        v23 = type metadata accessor for TaskPriority();
        v24 = *(*(v23 - 8) + 56);
        v24(v6, 1, 1, v23);
        v25 = swift_allocObject();
        v25[2] = 0;
        v25[3] = 0;
        v25[4] = v16;
        v25[5] = sub_100F77230;
        v25[6] = v18;
        v25[7] = v12;

        *(v16 + 64) = sub_100796D54(0, 0, v6, &unk_1014838B8, v25);

        TaskPriority.init(rawValue:)();
        v24(v6, 0, 1, v23);
        v26 = swift_allocObject();
        v26[2] = 0;
        v26[3] = 0;
        v27 = v32;
        v26[4] = v16;
        v26[5] = v27;
        v26[6] = v30;
        v26[7] = v12;
        v26[8] = sub_100F77230;
        v26[9] = v18;
        v26[10] = sub_100F7723C;
        v26[11] = v21;

        v28 = sub_1006E2398(0, 0, v6, &unk_1014838C0, v26);

        sub_10000CAAC(v6, &qword_1019FB750, &qword_10146F1B0);
        *(v16 + 56) = v28;
      }

      else
      {
        sub_10006601C(v12, v1, a1 & 1);
      }
    }
  }

  return result;
}

uint64_t sub_100064FAC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100064FE4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100065024()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100065074()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000650D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006513C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000651A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006520C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000652DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_100065344(uint64_t a1)
{
  v63 = a1;
  v59 = _s5BoardVMa(0);
  __chkstk_darwin(v59);
  v58 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - v3;
  v5 = _s4NodeVMa(0);
  v61 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  __chkstk_darwin(v18);
  v64 = &v56 - v19;
  __chkstk_darwin(v20);
  v57 = &v56 - v21;
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  v25 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v25 - 8);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000652DC(v63, v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v63 = v11;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10000BBC4(v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
    return 0;
  }

  v56 = v10;
  v28 = sub_100065D50(v24, v27, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v29 = *&v62[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot];
  __chkstk_darwin(v28);
  *(&v56 - 2) = v27;

  sub_10003CF3C(1, sub_100066014, (&v56 - 4), v29, v4);

  v30 = v61;
  if ((*(v61 + 48))(v4, 1, v5) == 1)
  {
    sub_10000BBC4(v27, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10000CAAC(v4, &unk_1019FB770, &unk_10146FA30);
    return 0;
  }

  v62 = v27;
  v32 = v4;
  v33 = v56;
  result = sub_100065D50(v32, v56, _s4NodeVMa);
  v35 = *(v33 + *(v5 + 20));
  v36 = *(v35 + 16);
  v37 = _swiftEmptyArrayStorage;
  v60 = v17;
  if (v36)
  {
    v65 = _swiftEmptyArrayStorage;
    sub_100776764(0, v36, 0);
    v37 = v65;
    v38 = v35 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v39 = *(v30 + 72);
    do
    {
      sub_1000652DC(v38, v7, _s4NodeVMa);
      sub_1000652DC(v7, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v7, _s4NodeVMa);
      v65 = v37;
      v41 = v37[2];
      v40 = v37[3];
      if (v41 >= v40 >> 1)
      {
        sub_100776764((v40 > 1), v41 + 1, 1);
        v37 = v65;
      }

      v37[2] = v41 + 1;
      result = sub_100065D50(v14, v37 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v41, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v38 += v39;
      --v36;
    }

    while (v36);
    v17 = v60;
  }

  v42 = v64;
  v43 = v62;
  v44 = v57;
  v61 = v37[2];
  if (!v61)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_27:
    sub_10000BBC4(v56, _s4NodeVMa);

    sub_10000BBC4(v43, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    return v31;
  }

  v45 = 0;
  v31 = _swiftEmptyArrayStorage;
  while (v45 < v37[2])
  {
    v46 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v47 = *(v12 + 72);
    sub_1000652DC(v37 + v46 + v47 * v45, v44, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_1000652DC(v44, v42, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10000BBC4(v42, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_21:
      sub_100065D50(v44, v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100776764(0, v31[2] + 1, 1);
        v31 = v65;
      }

      v54 = v31[2];
      v53 = v31[3];
      if (v54 >= v53 >> 1)
      {
        sub_100776764((v53 > 1), v54 + 1, 1);
        v31 = v65;
      }

      v31[2] = v54 + 1;
      v55 = v31 + v46 + v54 * v47;
      v17 = v60;
      result = sub_100065D50(v60, v55, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v42 = v64;
      goto LABEL_15;
    }

    v48 = v42;
    v49 = v58;
    sub_100065D50(v48, v58, _s5BoardVMa);
    v50 = *(v49 + *(v59 + 52));
    v51 = v49;
    v42 = v64;
    sub_10000BBC4(v51, _s5BoardVMa);
    if ((v50 & 1) == 0)
    {
      goto LABEL_21;
    }

    result = sub_10000BBC4(v44, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_15:
    ++v45;
    v43 = v62;
    if (v61 == v45)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100065AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065D50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065DB8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003CAC4(a1, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003DF68(v14, v11, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10003E264(v8);
    sub_10003E264(v5);
    v15 = static UUID.== infix(_:_:)();
    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v8, v2);
    sub_10000BA44(v11, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  }

  else
  {
    sub_10000BA44(v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10006601C(uint64_t a1, uint64_t a2, int a3)
{
  v52 = a3;
  v56 = a1;
  v4 = sub_1005B981C(&unk_101A23860, qword_10147BC00);
  v54 = *(v4 - 8);
  __chkstk_darwin(v4);
  v53 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = v48 - v7;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A23C00, &qword_1014B97E8);
  __chkstk_darwin(v11 - 8);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v48 - v15;
  v17 = *(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1);
  v18 = *(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions);
  if (*(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions))
  {
    v19 = *(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2);
  }

  else
  {
    v19 = 0;
  }

  sub_1000652DC(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v10, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  swift_storeEnumTagMultiPayload();
  sub_100066620(v56, v10, v18, v19, v17, v16);
  sub_10000BBC4(v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v20 = v54;
  (*(v54 + 56))(v16, 0, 1, v4);
  v21 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__currentSnapshotWithExpandedSections;
  swift_beginAccess();
  sub_10002C638(v16, a2 + v21, &unk_101A23C00, &qword_1014B97E8);
  swift_endAccess();
  sub_10000BE14(a2 + v21, v13, &unk_101A23C00, &qword_1014B97E8);
  if ((*(v20 + 48))(v13, 1, v4) == 1)
  {
    return sub_10000CAAC(v13, &unk_101A23C00, &qword_1014B97E8);
  }

  v23 = *(v20 + 32);
  v24 = v53;
  v50 = v20 + 32;
  v49 = v23;
  v23(v53, v13, v4);
  v56 = v4;
  v25 = v24;
  v26 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v27 = *(v26 + 16);
  v48[1] = v26;
  if (!v27)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_27:

    v46 = v56;
    NSDiffableDataSourceSnapshot.deleteItems(_:)(v30);

    v47 = v51;
    v49(v51, v25, v46);
    sub_100069924(v47, v52 & 1, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0);
    sub_10006ACC8();
    return (*(v54 + 8))(v47, v46);
  }

  v28 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections;
  v29 = v26 + 32;
  swift_beginAccess();
  v30 = _swiftEmptyArrayStorage;
  v55 = v28;
  while (1)
  {
    v31 = *v29;
    v32 = *(v29 + 16);
    v33 = *(v29 + 32);
    v62 = *(v29 + 48);
    v60 = v32;
    v61 = v33;
    v59 = v31;
    v34 = *(a2 + v28);
    sub_1000693DC(&v59, v57);

    v35 = sub_100069438(&v59, v34);

    if ((v35 & 1) == 0)
    {
      sub_1000698D0(&v59);
      goto LABEL_9;
    }

    v57[0] = v59;
    v57[1] = v60;
    v57[2] = v61;
    v58 = v62;
    v36 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    result = sub_1000698D0(&v59);
    v37 = *(v36 + 16);
    v38 = v30[2];
    v39 = v38 + v37;
    if (__OFADD__(v38, v37))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v39 <= v30[3] >> 1)
    {
      if (*(v36 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v38 <= v39)
      {
        v45 = v38 + v37;
      }

      else
      {
        v45 = v38;
      }

      v30 = sub_100B356D0(isUniquelyReferenced_nonNull_native, v45, 1, v30);
      if (*(v36 + 16))
      {
LABEL_15:
        v41 = (v30[3] >> 1) - v30[2];
        result = type metadata accessor for UUID();
        if (v41 < v37)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v37)
        {
          v42 = v30[2];
          v43 = __OFADD__(v42, v37);
          v44 = v42 + v37;
          if (v43)
          {
            goto LABEL_31;
          }

          v30[2] = v44;
        }

        v28 = v55;
        goto LABEL_9;
      }
    }

    v28 = v55;
    if (v37)
    {
      goto LABEL_29;
    }

LABEL_9:
    v29 += 56;
    if (!--v27)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100066620@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v233 = a5;
  v226 = a4;
  v244 = a2;
  v223 = a6;
  v8 = sub_1005B981C(&qword_1019F33D0, &unk_101468A70);
  __chkstk_darwin(v8 - 8);
  v229 = &v216 - v9;
  v239 = _s5BoardVMa(0);
  __chkstk_darwin(v239);
  v238 = &v216 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v218 = &v216 - v12;
  v242 = type metadata accessor for Date();
  v232 = *(v242 - 8);
  __chkstk_darwin(v242);
  v241 = (&v216 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v220 = &v216 - v15;
  v16 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v246 = *(v16 - 8);
  __chkstk_darwin(v16);
  v227 = &v216 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v230 = &v216 - v19;
  __chkstk_darwin(v20);
  v237 = &v216 - v21;
  __chkstk_darwin(v22);
  v234 = &v216 - v23;
  __chkstk_darwin(v24);
  v231 = &v216 - v25;
  __chkstk_darwin(v26);
  v248 = &v216 - v27;
  __chkstk_darwin(v28);
  v240 = &v216 - v29;
  __chkstk_darwin(v30);
  v243 = &v216 - v31;
  __chkstk_darwin(v32);
  v34 = &v216 - v33;
  v35 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v35 - 8);
  v37 = &v216 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v216 - v39;
  v235 = sub_1005B981C(&unk_101A23860, qword_10147BC00);
  v222 = *(v235 - 8);
  __chkstk_darwin(v235);
  v42 = &v216 - v41;
  v256 = a1;
  v228 = a3;
  v225 = a3 != 0;
  type metadata accessor for UUID();
  sub_100068328();
  sub_10006852C(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  v236 = v42;
  v43 = v244;
  NSDiffableDataSourceSnapshot.init()();
  sub_1000652DC(v43, v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v247 = v16;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v47 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v48 = v34;
LABEL_6:
    sub_10000BBC4(v48, v47);
    v221 = 0;
    v46 = v235;
    goto LABEL_7;
  }

  sub_100065D50(v34, v40, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v44 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  (*(*(v44 - 8) + 56))(v37, 5, 5, v44);
  v45 = sub_100068604(v40, v37);
  sub_10000BBC4(v37, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (!v45)
  {
    v47 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    v48 = v40;
    goto LABEL_6;
  }

  v46 = v235;
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_101874750);
  sub_10000BBC4(v40, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v221 = 1;
LABEL_7:
  v49 = v246;
  v50 = v234;
  v51 = v248;
  v52 = sub_10005C1A0(a1);
  v245 = v52;
  v53 = v52[2];
  if (!v53)
  {
    v224 = 0;
    goto LABEL_41;
  }

  v219 = v52[2];
  v54 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  v55 = v243;
  (*(*(v54 - 8) + 56))(v243, 4, 5, v54);
  swift_storeEnumTagMultiPayload();
  v56 = sub_100F91CB8(v43, v55);
  sub_10000BBC4(v55, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (v56)
  {
    goto LABEL_11;
  }

  v244 = objc_opt_self();
  LODWORD(rawValue) = [v244 _atomicIncrementAssertCount];
  v257.i64[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v257, "Board invitation items should only appear in the Shared folder.", 63, 2u);
  StaticString.description.getter("snapshot(childItems:toShowForItem:sortStyle:grouped:ascending:)", 63, 2);
  v224 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/ViewModel/CRLBoardLibraryExtensions.swift", 111, 2);
  v58 = String._bridgeToObjectiveC()();

  v59 = [v58 lastPathComponent];

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v216 = v61;
  v217 = v60;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_127;
  }

  while (1)
  {
    v62 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = rawValue;
    v64 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v64;
    v65 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v65;
    v66 = v224;
    *(inited + 72) = v224;
    *(inited + 136) = &type metadata for String;
    v67 = sub_1000053B0();
    v68 = v216;
    *(inited + 112) = v217;
    *(inited + 120) = v68;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v67;
    *(inited + 152) = 174;
    v69 = v257.i64[0];
    *(inited + 216) = v64;
    *(inited + 224) = v65;
    *(inited + 192) = v69;
    v70 = v66;
    v71 = v69;
    v72 = static os_log_type_t.error.getter();
    sub_100005404(v62, &_mh_execute_header, v72, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v73 = static os_log_type_t.error.getter();
    sub_100005404(v62, &_mh_execute_header, v73, "Board invitation items should only appear in the Shared folder.", 63, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v74 = swift_allocObject();
    v74[2] = 8;
    v74[3] = 0;
    v74[4] = 0;
    v74[5] = 0;
    v75 = __VaListBuilder.va_list()();
    StaticString.description.getter("snapshot(childItems:toShowForItem:sortStyle:grouped:ascending:)", 63, 2);
    v76 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/ViewModel/CRLBoardLibraryExtensions.swift", 111, 2);
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Board invitation items should only appear in the Shared folder.", 63, 2);
    v78 = String._bridgeToObjectiveC()();

    [v244 handleFailureInFunction:v76 file:v77 lineNumber:174 isFatal:0 format:v78 args:v75];

    v50 = v234;
    v46 = v235;
LABEL_11:
    v79 = v245;
    v80 = v245;
    sub_100068988(v245, v228, v233 & 1);
    v81 = v80;
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_101874858);
    v257.i64[0] = _swiftEmptySetSingleton;
    v82 = sub_100F35F5C(v81, &v257);

    v258 = 0u;
    v259 = 0u;
    v257 = 0u;
    v260 = -2;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    rawValue = v79;

    v83 = sub_100F7475C(a1, v79);
    v224 = 0;
    if (v84)
    {
      v85 = *(a1 + 16);
    }

    else
    {
      v86 = (v83 + 1);
      if (__OFADD__(v83, 1))
      {
        __break(1u);
        goto LABEL_129;
      }

      v244 = v83;
      while (1)
      {
        v88 = (a1 + 16);
        v87 = *(a1 + 16);
        if (v86 == v87)
        {
          break;
        }

        if (v86 >= v87)
        {
          goto LABEL_116;
        }

        v89 = (*(v246 + 80) + 32) & ~*(v246 + 80);
        v51 = a1;
        v90 = a1 + v89;
        a1 = *(v246 + 72);
        v91 = a1 * v86;
        v92 = v243;
        sub_1000652DC(v90 + a1 * v86, v243, type metadata accessor for CRLBoardLibraryViewModel.Item);
        LODWORD(rawValue) = sub_1012CD6CC(v92, rawValue);
        sub_10000BBC4(v92, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (rawValue)
        {
          a1 = v51;
          v51 = v248;
          rawValue = v245;
          ++v86;
        }

        else
        {
          v93 = v244;
          if (v86 == v244)
          {
            a1 = v51;
            v51 = v248;
            rawValue = v245;
          }

          else
          {
            if ((v244 & 0x8000000000000000) != 0)
            {
              goto LABEL_119;
            }

            v94 = *v88;
            if (v244 >= v94)
            {
              goto LABEL_120;
            }

            rawValue = a1 * v244;
            sub_1000652DC(v90 + a1 * v244, v230, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if (v86 >= v94)
            {
              goto LABEL_121;
            }

            v95 = v90 + v91;
            v96 = v227;
            sub_1000652DC(v95, v227, type metadata accessor for CRLBoardLibraryViewModel.Item);
            a1 = v51;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a1 = sub_10113CEA8(v51);
            }

            v51 = v248;
            v97 = a1 + v89;
            sub_100F7724C(v96, v97 + rawValue);
            if (v86 >= *(a1 + 16))
            {
              goto LABEL_122;
            }

            sub_100F7724C(v230, v97 + v91);
            v93 = v244;
            rawValue = v245;
          }

          v244 = v93 + 1;
          ++v86;
        }
      }

      v50 = v234;
      v46 = v235;
      v85 = v244;
    }

    v98 = *(a1 + 16);
    if (v85 > v98)
    {
      goto LABEL_124;
    }

    if (v85 < 0)
    {
      goto LABEL_125;
    }

    LODWORD(rawValue) = v85;
    if (!__OFADD__(v98, v85 - v98))
    {
      break;
    }

LABEL_126:
    __break(1u);
LABEL_127:
    swift_once();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v256 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v85 > *(a1 + 24) >> 1)
  {
    if (v98 <= v85)
    {
      v100 = v85;
    }

    else
    {
      v100 = v98;
    }

    a1 = sub_100B3648C(isUniquelyReferenced_nonNull_native, v100, 1, a1);
    v256 = a1;
  }

  sub_10067D040(v85, v98, 0);
  v256 = a1;
  v49 = v246;
  v53 = v219;
LABEL_41:
  v243 = a1;
  if ((v226 & v225 & 1) == 0)
  {

    sub_100068988(a1, v228, v233 & 1);
    v140 = a1;
    if ((v221 & 1) == 0)
    {
      sub_1005B981C(&qword_101A11CE0, &qword_1014B98B0);
      v141 = swift_allocObject();
      *(v141 + 16) = xmmword_10146C6B0;
      if (v53)
      {
        v142 = [objc_opt_self() mainBundle];
        v143 = String._bridgeToObjectiveC()();
        v144 = String._bridgeToObjectiveC()();
        v145 = [v142 localizedStringForKey:v143 value:v144 table:0];

        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v147 = v146;
      }

      else
      {
        v147 = 0;
      }

      *(v141 + 32) = v53;
      *(v141 + 40) = v147;
      *(v141 + 48) = 0u;
      *(v141 + 64) = 0u;
      *(v141 + 80) = 0;
      NSDiffableDataSourceSnapshot.appendSections(_:)(v141);
    }

    v257.i64[0] = _swiftEmptySetSingleton;
    sub_100F35F5C(v140, &v257);

    v258 = 0u;
    v259 = 0u;
    v257 = 0u;
    v260 = -2;
    v158 = v236;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v159 = &off_1018747A8;
LABEL_114:
    NSDiffableDataSourceSnapshot.appendSections(_:)(v159);
    (*(v222 + 32))(v223, v158, v46);
  }

  LODWORD(rawValue) = v228;

  if (rawValue != 2)
  {
    v148 = *(a1 + 16);
    if (v148)
    {
      v149 = a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v150 = *(v49 + 72);
      v151 = v231;
      v152 = (v232 + 16);
      v248 = (v232 + 32);
      v82 = _swiftEmptyArrayStorage;
      v153 = v218;
      v154 = v240;
      do
      {
        sub_1000652DC(v149, v154, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_100065D50(v154, v151, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_100065D50(v151, v153, _s5BoardVMa);
          (*v152)(v241, v153 + *(v239 + 32), v242);
          sub_10000BBC4(v153, _s5BoardVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_100B376F0(0, v82[2] + 1, 1, v82);
          }

          v156 = v82[2];
          v155 = v82[3];
          if (v156 >= v155 >> 1)
          {
            v82 = sub_100B376F0((v155 > 1), v156 + 1, 1, v82);
          }

          v82[2] = v156 + 1;
          (*(v232 + 32))(v82 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v156, v241, v242);
          a1 = v243;
          v151 = v231;
        }

        else
        {
          sub_10000BBC4(v151, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

        v149 += v150;
        --v148;
      }

      while (v148);
      v157 = *(a1 + 16);
    }

    else
    {
      v157 = 0;
      v82 = _swiftEmptyArrayStorage;
    }

    if (v82[2] == v157)
    {
      goto LABEL_89;
    }

    v248 = objc_opt_self();
    LODWORD(v79) = [v248 _atomicIncrementAssertCount];
    v257.i64[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v257, "Mismatched dates! Most likely, this is caused by one or more of the folder items being something other than a board. Items may appear in the wrong section.", 155, 2u);
    StaticString.description.getter("snapshot(childItems:toShowForItem:sortStyle:grouped:ascending:)", 63, 2);
    v247 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/ViewModel/CRLBoardLibraryExtensions.swift", 111, 2);
    v160 = String._bridgeToObjectiveC()();

    v161 = [v160 lastPathComponent];

    v246 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v162;

    if (qword_1019F20A0 == -1)
    {
LABEL_88:
      v163 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v164 = swift_allocObject();
      *(v164 + 16) = xmmword_10146CA70;
      *(v164 + 56) = &type metadata for Int32;
      *(v164 + 64) = &protocol witness table for Int32;
      *(v164 + 32) = v79;
      v165 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v164 + 96) = v165;
      v166 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v164 + 104) = v166;
      v167 = v247;
      *(v164 + 72) = v247;
      *(v164 + 136) = &type metadata for String;
      v168 = sub_1000053B0();
      *(v164 + 112) = v246;
      *(v164 + 120) = v51;
      *(v164 + 176) = &type metadata for UInt;
      *(v164 + 184) = &protocol witness table for UInt;
      *(v164 + 144) = v168;
      *(v164 + 152) = 216;
      v169 = v257.i64[0];
      *(v164 + 216) = v165;
      *(v164 + 224) = v166;
      *(v164 + 192) = v169;
      v170 = v167;
      v171 = v169;
      v172 = static os_log_type_t.error.getter();
      sub_100005404(v163, &_mh_execute_header, v172, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v164);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v173 = static os_log_type_t.error.getter();
      sub_100005404(v163, &_mh_execute_header, v173, "Mismatched dates! Most likely, this is caused by one or more of the folder items being something other than a board. Items may appear in the wrong section.", 155, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v174 = swift_allocObject();
      v174[2] = 8;
      v174[3] = 0;
      v174[4] = 0;
      v174[5] = 0;
      v175 = __VaListBuilder.va_list()();
      StaticString.description.getter("snapshot(childItems:toShowForItem:sortStyle:grouped:ascending:)", 63, 2);
      v176 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/ViewModel/CRLBoardLibraryExtensions.swift", 111, 2);
      v177 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Mismatched dates! Most likely, this is caused by one or more of the folder items being something other than a board. Items may appear in the wrong section.", 155, 2);
      v178 = String._bridgeToObjectiveC()();

      [v248 handleFailureInFunction:v176 file:v177 lineNumber:216 isFatal:0 format:v178 args:v175];

LABEL_89:

      sub_100AC5CF4(v179, v82);
      v181 = v180;

      v182 = sub_100640A7C(v181);

      v183 = v220;
      static Date.now.getter();
      v245 = sub_100D2C0A8(v182, v183);

      (*(v232 + 8))(v183, v242);
      goto LABEL_90;
    }

LABEL_129:
    swift_once();
    goto LABEL_88;
  }

  v101 = sub_100BD64FC(_swiftEmptyArrayStorage);
  v102 = *(a1 + 16);
  v245 = v101;
  if (v102)
  {
    v103 = 0;
    v231 = ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v232 = v102;
    v104 = &v231[a1];
    v230 = &v231[a1];
    while (1)
    {
      if (v103 >= *(a1 + 16))
      {
        goto LABEL_117;
      }

      v244 = *(v49 + 72);
      sub_1000652DC(v104 + v244 * v103, v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_1000652DC(v51, v50, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        break;
      }

      rawValue = type metadata accessor for CRLBoardLibraryViewModel.Item;
      sub_10000BBC4(v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v50, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_46:
      if (v102 == ++v103)
      {
        goto LABEL_90;
      }
    }

    v105 = v238;
    sub_100065D50(v50, v238, _s5BoardVMa);
    v106 = v229;
    sub_10000BE14(v105 + *(v239 + 80), v229, &qword_1019F33D0, &unk_101468A70);
    v107 = _s5BoardV13ShareMetadataVMa(0);
    if ((*(*(v107 - 8) + 48))(v106, 1, v107) == 1)
    {
      sub_10000CAAC(v106, &qword_1019F33D0, &unk_101468A70);
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v112 = 0;
      v51 = 0;
      v113 = 192;
    }

    else
    {
      v114 = v106 + *(v107 + 32);
      v108 = *v114;
      v115 = *(v114 + 8);
      v117 = *(v114 + 16);
      v116 = *(v114 + 24);
      v118 = *(v114 + 32);
      v51 = *(v114 + 40);
      v119 = *(v114 + 48);

      sub_10000BBC4(v106, _s5BoardV13ShareMetadataVMa);
      v112 = v118;
      v111 = v116;
      v110 = v117;
      v109 = v115;
      v113 = *&v119 | 0xFFFFFF80;
    }

    v120 = v108;
    v257.i64[0] = v108;
    v257.i64[1] = v109;
    v121 = v109;
    a1 = v110;
    *&v258 = v110;
    *(&v258 + 1) = v111;
    v122 = v111;
    v241 = v51;
    v242 = v112;
    *&v259 = v112;
    *(&v259 + 1) = v51;
    LODWORD(v240) = v113;
    v260 = v113;
    sub_1000652DC(v248, v237, type metadata accessor for CRLBoardLibraryViewModel.Item);
    rawValue = v245;
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v249._rawValue = rawValue;
    v125 = sub_10002D980(&v257);
    v126 = *(rawValue + 16);
    v127 = (v124 & 1) == 0;
    v128 = v126 + v127;
    if (__OFADD__(v126, v127))
    {
      goto LABEL_118;
    }

    v51 = v124;
    if (*(rawValue + 24) < v128)
    {
      sub_100A8FD00(v128, v123);
      v129 = sub_10002D980(&v257);
      if ((v51 & 1) != (v130 & 1))
      {
        goto LABEL_131;
      }

      v125 = v129;
      rawValue = v249._rawValue;
      if ((v51 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_59:
      sub_1000771BC(v120, v121, a1, v122, v242, v241, v240);
LABEL_63:
      v245 = rawValue;
      v135 = *(rawValue + 56);
      rawValue = *(v135 + 8 * v125);
      v136 = swift_isUniquelyReferenced_nonNull_native();
      *(v135 + 8 * v125) = rawValue;
      a1 = v243;
      v50 = v234;
      v51 = v248;
      if ((v136 & 1) == 0)
      {
        rawValue = sub_100B3648C(0, *(rawValue + 16) + 1, 1, rawValue);
        *(v135 + 8 * v125) = rawValue;
      }

      v138 = *(rawValue + 16);
      v137 = *(rawValue + 24);
      if (v138 >= v137 >> 1)
      {
        *(v135 + 8 * v125) = sub_100B3648C((v137 > 1), v138 + 1, 1, rawValue);
      }

      sub_10000BBC4(v238, _s5BoardVMa);
      sub_10000BBC4(v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v139 = *(v135 + 8 * v125);
      *(v139 + 16) = v138 + 1;
      sub_100065D50(v237, &v231[v139 + v138 * v244], type metadata accessor for CRLBoardLibraryViewModel.Item);
      v49 = v246;
      v102 = v232;
      v104 = v230;
      goto LABEL_46;
    }

    if (v123)
    {
      rawValue = v249._rawValue;
      if (v124)
      {
        goto LABEL_59;
      }
    }

    else
    {
      sub_100AA8130();
      rawValue = v249._rawValue;
      if (v51)
      {
        goto LABEL_59;
      }
    }

LABEL_61:
    *(rawValue + 8 * (v125 >> 6) + 64) |= 1 << v125;
    v131 = *(rawValue + 48) + 56 * v125;
    *v131 = v257;
    *(v131 + 16) = v258;
    *(v131 + 32) = v259;
    *(v131 + 48) = v260;
    *(*(rawValue + 56) + 8 * v125) = _swiftEmptyArrayStorage;
    v132 = *(rawValue + 16);
    v133 = __OFADD__(v132, 1);
    v134 = v132 + 1;
    if (v133)
    {
      goto LABEL_123;
    }

    *(rawValue + 16) = v134;
    goto LABEL_63;
  }

LABEL_90:
  if ((v233 & 1) == 0)
  {
LABEL_94:
    v188 = v245;
    v189 = v245[2];
    if (v189)
    {
      v51 = sub_100B39E04(v245[2], 0);
      v190 = sub_100B3AEB4(&v249, v51 + 32, v189, v188);
      v191 = v249._rawValue;
      swift_bridgeObjectRetain_n();
      sub_100035F90(v191);
      if (v190 != v189)
      {
        __break(1u);
        goto LABEL_97;
      }
    }

    else
    {

      v51 = _swiftEmptyArrayStorage;
    }

    v46 = v235;
    LODWORD(rawValue) = v236;
    v192 = v224;
    v249._rawValue = v51;
    v193 = sub_100F69024;
    v194 = sub_100F670AC;
    goto LABEL_101;
  }

  v184 = v245;
  v185 = v245[2];
  if (!v185)
  {
LABEL_97:

    v51 = _swiftEmptyArrayStorage;
    goto LABEL_98;
  }

  v51 = sub_100B39E04(v245[2], 0);
  v186 = sub_100B3AEB4(&v249, v51 + 32, v185, v184);
  v187 = v249._rawValue;
  swift_bridgeObjectRetain_n();
  sub_100035F90(v187);
  if (v186 != v185)
  {
    __break(1u);
    goto LABEL_94;
  }

LABEL_98:
  v46 = v235;
  LODWORD(rawValue) = v236;
  v192 = v224;
  v249._rawValue = v51;
  v193 = sub_100F6A550;
  v194 = sub_100F678D0;
LABEL_101:
  sub_100F36A44(&v249, v193, v194);
  if (v192)
  {
    goto LABEL_130;
  }

  v195 = v245;

  NSDiffableDataSourceSnapshot.appendSections(_:)(v249);

  v196 = 0;
  v197 = (v195 + 8);
  v198 = 1 << *(v195 + 32);
  v199 = -1;
  if (v198 < 64)
  {
    v199 = ~(-1 << v198);
  }

  v200 = v199 & v195[8];
  v201 = (v198 + 63) >> 6;
  v240 = v201;
  v241 = v195 + 8;
  if (!v200)
  {
LABEL_106:
    while (1)
    {
      a1 = v196 + 1;
      if (__OFADD__(v196, 1))
      {
        break;
      }

      if (a1 >= v201)
      {

        v159 = &off_101874800;
        v158 = v236;
        goto LABEL_114;
      }

      v200 = *(v197 + 8 * a1);
      ++v196;
      if (v200)
      {
        v244 = 0;
        goto LABEL_110;
      }
    }

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
    goto LABEL_126;
  }

  while (1)
  {
    v244 = 0;
    a1 = v196;
LABEL_110:
    v202 = __clz(__rbit64(v200)) | (a1 << 6);
    v203 = v195[7];
    v204 = v195[6] + 56 * v202;
    v206 = *v204;
    v205 = *(v204 + 8);
    v207 = *(v204 + 16);
    v242 = *(v204 + 24);
    v208 = *(v204 + 32);
    v209 = *(v204 + 40);
    v51 = *(v204 + 48);
    v249._rawValue = *(v203 + 8 * v202);
    swift_bridgeObjectRetain_n();
    v246 = v206;
    v247 = v207;
    v210 = v206;
    v211 = v208;
    v248 = v205;
    v212 = v207;
    rawValue = v242;
    sub_100076F8C(v210, v205, v212, v242, v208, v209, v51);
    v213 = v244;
    sub_100068A70(&v249, v233 & 1);
    if (v213)
    {
      break;
    }

    v200 &= v200 - 1;

    v214 = v249._rawValue;
    v249._rawValue = _swiftEmptySetSingleton;
    sub_100F35F5C(v214, &v249);

    v249._rawValue = v246;
    v250 = v248;
    v251 = v247;
    v252 = rawValue;
    v253 = v211;
    v254 = v209;
    v255 = v51;
    v46 = v235;
    LODWORD(rawValue) = v236;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    sub_1000771A8(v249._rawValue, v250, v251, v252, v253, v254, v255);
    v196 = a1;
    v195 = v245;
    v201 = v240;
    v197 = v241;
    if (!v200)
    {
      goto LABEL_106;
    }
  }

LABEL_130:

  __break(1u);
LABEL_131:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100068328()
{
  result = qword_101A23C70;
  if (!qword_101A23C70)
  {
    result = swift_getWitnessTable("9a8", &type metadata for CRLBoardLibraryFolderViewModel.GroupSection, v0, v1);
    atomic_store(result, &qword_101A23C70);
  }

  return result;
}

uint64_t sub_10006837C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000683C4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006840C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100068454(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006849C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000684E4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006852C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100068574(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000685BC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_100068604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019F3460, &unk_10148E220);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v14 = *(v13 + 56);
  sub_1000094E4(a1, &v20 - v11, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_1000094E4(a2, &v12[v14], type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v15 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v12, 5, v15);
  if (v17 > 2)
  {
    if (v17 == 3)
    {
      if (v16(&v12[v14], 5, v15) == 3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v17 == 4)
      {
        if (v16(&v12[v14], 5, v15) != 4)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }

      if (v16(&v12[v14], 5, v15) == 5)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    sub_10000CAAC(v12, &qword_1019F3460, &unk_10148E220);
    return 0;
  }

  if (!v17)
  {
    sub_1000094E4(v12, v9, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    if (!v16(&v12[v14], 5, v15))
    {
      sub_10000CCD0(&v12[v14], v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v18 = sub_100F92694(v9, v6);
      sub_10000CD38(v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10000CD38(v9, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10000CD38(v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      return v18;
    }

    sub_10000CD38(v9, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    goto LABEL_17;
  }

  if (v17 == 1)
  {
    if (v16(&v12[v14], 5, v15) != 1)
    {
      goto LABEL_17;
    }
  }

  else if (v16(&v12[v14], 5, v15) != 2)
  {
    goto LABEL_17;
  }

LABEL_13:
  sub_10000CD38(v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  return 1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100068988(uint64_t a1, char a2, char a3)
{
  if (a2)
  {
    if (a2 == 1)
    {

      sub_100068A70(&v6, a3 & 1);
      return;
    }

    v4 = sub_10075C0E4;
    v5 = sub_10075B404;
  }

  else
  {

    v4 = sub_10075D71C;
    v5 = sub_10075BC54;
  }

  sub_10075B1E4(&v6, a3 & 1, v4, v5);
}

void sub_100068A70(uint64_t *a1, char a2)
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100068B28(v5);
  }

  v6 = v5[2];
  v7[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7[1] = v6;
  sub_100068B74(v7, a2 & 1);
  *a1 = v5;
}

void sub_100068B74(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CRLBoardLibraryViewModel.Item(0);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_100F680D8(v10, v11, a1, v6, a2 & 1);
      v8[2] = 0;

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
    sub_100F669A8(0, v4, 1, a1, a2 & 1);
  }
}

uint64_t sub_100068CAC(uint64_t a1)
{
  v1 = *(a1 + 48) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 initializeWithCopy for CRLBezierPathPointData(uint64_t a1, uint64_t a2)
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

Swift::Int sub_100068CE4()
{
  Hasher.init(_seed:)();
  sub_100068D24(v1);
  return Hasher._finalize()();
}

void sub_100068D24(uint64_t a1)
{
  sub_100068F28();
  String.hash(into:)();

  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48) >> 6;
  if (v5 > 1)
  {
    v6 = *(v1 + 40);
    v7 = (*(v1 + 25) << 8) | ((*(v1 + 29) | (*(v1 + 31) << 16)) << 40) | v4;
    if (v5 == 2)
    {
      if (v7)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (!v6)
        {
          goto LABEL_24;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (!v6)
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      Hasher._combine(_:)(1u);

      String.hash(into:)();
      return;
    }

    sub_100068F28();
    String.hash(into:)();
  }

  else
  {
    if (!v5)
    {
      if (v2)
      {
        goto LABEL_21;
      }

LABEL_24:
      Hasher._combine(_:)(0);
      return;
    }

    Hasher._combine(_:)(*v1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    Hasher._combine(_:)(v8);
    if (v4)
    {
      goto LABEL_24;
    }

    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    Hasher._combine(_:)(v9);
  }
}

uint64_t sub_100068F28()
{
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = *(v0 + 48);
  v4 = v3 >> 6;
  if (v3 >> 6 <= 1)
  {
    if (v4)
    {
      return sub_100D269E0(*v0, v0[1]);
    }

    if (!v1)
    {
      return 0;
    }

    return *&v2;
  }

  if (v4 == 2)
  {
    if ((v3 & 1) == 0)
    {
      if (v1)
      {
        v15 = objc_opt_self();

        v16 = [v15 mainBundle];
        v17 = String._bridgeToObjectiveC()();
        v18 = String._bridgeToObjectiveC()();
        v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_10146C6B0;
        *(v20 + 56) = &type metadata for String;
        *(v20 + 64) = sub_1000053B0();
        *(v20 + 32) = v2;
        *(v20 + 40) = v1;
        v14 = String.init(format:_:)();

        return v14;
      }

      v25 = [objc_opt_self() mainBundle];
      v26 = String._bridgeToObjectiveC()();
      v27 = String._bridgeToObjectiveC()();
      v13 = [v25 localizedStringForKey:v26 value:v27 table:0];

LABEL_17:
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v14;
    }

LABEL_16:
    v10 = [objc_opt_self() mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

    goto LABEL_17;
  }

  v6 = *(v0 + 4);
  v7 = *(v0 + 2) | v1;
  v8 = *(v0 + 3) | *(v0 + 5);
  if (v3 == 192 && (v7 | *&v2 | v6 | v8) == 0)
  {
    v21 = [objc_opt_self() mainBundle];
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v14;
  }

  result = 0;
  if (v3 == 192 && *&v2 == 1 && !(v7 | v6 | v8))
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100069388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 49))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 48) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 48) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100069438(int8x16_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  sub_100068D24(&v47);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v45 = ~v5;
    do
    {
      v8 = *(a2 + 48) + 56 * v6;
      v10 = *(v8 + 16);
      v9 = *(v8 + 32);
      v11 = *v8;
      v50 = *(v8 + 48);
      v48 = v10;
      v49 = v9;
      v47 = v11;
      sub_1000693DC(&v47, v46);
      v12 = sub_100068F28();
      v14 = v13;
      if (v12 == sub_100068F28() && v14 == v15)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v17 = v48;
      v18 = BYTE8(v48);
      v19 = v50;
      v20 = v50 >> 6;
      if (v20 > 1)
      {
        v23 = v49;
        v24 = (*(&v48 + 9) << 8) | ((*(&v48 + 13) | (HIBYTE(v48) << 16)) << 40);
        if (v20 == 2)
        {
          v25 = a1[3].u8[0];
          if ((v25 & 0xC0) != 0x80)
          {
            goto LABEL_6;
          }

          v26 = a1->i64[1];
          v27 = a1[1].i64[0];
          v29 = a1[1].i64[1];
          v28 = a1[2].i64[0];
          v30 = a1[2].i64[1];
          if (*(&v47 + 1))
          {
            if (!v26)
            {
              goto LABEL_6;
            }

            if (v47 != *a1)
            {
              v43 = a1[2].i64[0];
              v44 = a1[2].i64[1];
              v41 = a1[1].i64[0];
              v42 = a1[1].i64[1];
              v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v27 = v41;
              v29 = v42;
              v28 = v43;
              v30 = v44;
              if ((v31 & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v26)
          {
            goto LABEL_6;
          }

          if (v24 | v18)
          {
            if (!v29 || (v17 != v27 || (v24 | v18) != v29) && (v32 = v30, v33 = v28, v34 = _stringCompareWithSmolCheck(_:_:expecting:)(), v28 = v33, v30 = v32, (v34 & 1) == 0))
            {
LABEL_6:
              sub_1000698D0(&v47);
              goto LABEL_7;
            }
          }

          else if (v29)
          {
            goto LABEL_6;
          }

          if (*(&v23 + 1))
          {
            if (!v30)
            {
              goto LABEL_6;
            }

            if (v23 == __PAIR128__(v30, v28))
            {
              sub_1000698D0(&v47);
              if (((v19 ^ v25) & 1) == 0)
              {
                return 1;
              }
            }

            else
            {
              v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_1000698D0(&v47);
              if ((v19 ^ v25) & 1) == 0 && (v40)
              {
                return 1;
              }
            }
          }

          else
          {
            v39 = v30;
            sub_1000698D0(&v47);
            if (!v39 && ((v19 ^ v25) & 1) == 0)
            {
              return 1;
            }
          }
        }

        else
        {
          v35 = v24 | BYTE8(v48);
          v36 = v48 | *(&v47 + 1);
          if (v50 != 192 || v36 | v47 | v49 | *(&v49 + 1) | v35)
          {
            if (v50 == 192 && v47 == 1 && !(v36 | v49 | *(&v49 + 1) | v35))
            {
              if (a1[3].u8[0] != 192 || a1->i64[0] != 1)
              {
                goto LABEL_7;
              }
            }

            else if (a1[3].u8[0] != 192 || a1->i64[0] != 2)
            {
              goto LABEL_7;
            }

            v38 = vorrq_s8(a1[1], a1[2]);
            if (!(*&vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL)) | a1->i64[1]))
            {
              return 1;
            }
          }

          else if (a1[3].u8[0] == 192)
          {
            v37 = vorrq_s8(a1[1], a1[2]);
            if (!(*&vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)) | a1->i64[1] | a1->i64[0]))
            {
              return 1;
            }
          }
        }
      }

      else if (v20)
      {
        if ((a1[3].i8[0] & 0xC0) == 0x40 && a1->i8[0] == v47 && *&a1->i64[1] == *(&v47 + 1))
        {
          if (BYTE8(v48))
          {
            if (a1[1].i8[8])
            {
              return 1;
            }
          }

          else if ((a1[1].i8[8] & 1) == 0 && *a1[1].i64 == *&v48)
          {
            return 1;
          }
        }
      }

      else
      {
        if (a1[3].u8[0] >= 0x40u)
        {
          goto LABEL_6;
        }

        v21 = a1->i64[1];
        if (*(&v47 + 1))
        {
          if (!v21)
          {
            goto LABEL_6;
          }

          if (v47 == *a1)
          {
            sub_1000698D0(&v47);
            return 1;
          }

          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_1000698D0(&v47);
          if (v22)
          {
            return 1;
          }
        }

        else
        {
          sub_1000698D0(&v47);
          if (!v21)
          {
            return 1;
          }
        }
      }

LABEL_7:
      v6 = (v6 + 1) & v45;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return 0;
}

uint64_t sub_100069924(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v87 = a4;
  v86 = a3;
  v85 = a2;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v89 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s5BoardVMa(0);
  __chkstk_darwin(v9 - 8);
  v108 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s4NodeVMa(0);
  v94 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v93 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v99 = *(v13 - 8);
  __chkstk_darwin(v13);
  v90 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v96 = &v81 - v16;
  __chkstk_darwin(v17);
  v105 = &v81 - v18;
  __chkstk_darwin(v19);
  v92 = &v81 - v20;
  __chkstk_darwin(v21);
  v98 = &v81 - v22;
  v106 = type metadata accessor for UUID();
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v95 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1005B981C(&unk_101A23860, qword_10147BC00);
  v25 = __chkstk_darwin(v24);
  v83 = v26;
  v27 = *(v26 + 16);
  v82 = &v81 - v28;
  v107 = a1;
  v88 = v29;
  v27(v25);
  v30 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_pendingBoardIdentifiersToRefresh;
  swift_beginAccess();
  v31 = *(v4 + v30);
  v32 = qword_1019F2128;

  if (v32 != -1)
  {
LABEL_53:
    swift_once();
  }

  v33 = static OS_os_log.crlFolderUI;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v35 = v4;
  v36 = sub_10006A888();
  v38 = v37;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v36;
  *(inited + 40) = v38;
  v39 = *(v31 + 16);
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = v39;
  v40 = static os_log_type_t.default.getter();
  sub_100005404(v33, &_mh_execute_header, v40, "Filter view (%@) updating snapshot with %d board identifiers to refresh", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v41 = *(v31 + 16);
  v84 = v35;
  if (v41)
  {
    v109 = v31;
    *(v35 + v30) = _swiftEmptySetSingleton;

    v42 = *(v35 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider);
    v4 = v107;
    v43 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    v44 = *(v43 + 16);
    v91 = v13;
    if (v44)
    {
      v45 = (v42 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
      v102 = *(v103 + 16);
      v46 = (*(v103 + 80) + 32) & ~*(v103 + 80);
      v81 = v43;
      v47 = v43 + v46;
      v101 = *(v103 + 72);
      v103 += 16;
      v100 = (v103 - 8);
      v48 = _swiftEmptyArrayStorage;
      v49 = v95;
      v97 = v8;
      while (1)
      {
        v107 = v48;
        v102(v49, v47, v106);
        v4 = v45[3];
        if (*(v4 + 16))
        {
          v50 = *v45;

          v104 = v50;

          v51 = sub_10003E994(v49);
          if (v52)
          {
            v53 = v93;
            sub_1000652DC(*(v4 + 56) + *(v94 + 72) * v51, v93, _s4NodeVMa);
            (*v100)(v49, v106);

            v54 = v92;
            sub_1000652DC(v53, v92, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10000BBC4(v53, _s4NodeVMa);
            sub_100065D50(v54, v98, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v48 = v107;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_100B3648C(0, v48[2] + 1, 1, v48);
            }

            v4 = v48[2];
            v55 = v48[3];
            v8 = v97;
            v49 = v95;
            if (v4 >= v55 >> 1)
            {
              v48 = sub_100B3648C((v55 > 1), v4 + 1, 1, v48);
            }

            v48[2] = v4 + 1;
            sub_100065D50(v98, v48 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
            goto LABEL_7;
          }

          v8 = v97;
        }

        else
        {
        }

        (*v100)(v49, v106);
        v48 = v107;
LABEL_7:
        v47 += v101;
        if (!--v44)
        {

          v13 = v91;
          goto LABEL_19;
        }
      }
    }

    v48 = _swiftEmptyArrayStorage;
LABEL_19:
    v30 = v108;
    v58 = v99;
    v59 = v96;
    v102 = v48[2];
    if (v102)
    {
      v60 = 0;
      v31 = v109 + 56;
      v101 = _swiftEmptyArrayStorage;
      v107 = v48;
      while (1)
      {
        if (v60 >= v48[2])
        {
          __break(1u);
          goto LABEL_53;
        }

        v104 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v103 = *(v58 + 72);
        v4 = v105;
        sub_1000652DC(v48 + v104 + v103 * v60, v105, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_1000652DC(v4, v59, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_10000BBC4(v59, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_22;
        }

        sub_100065D50(v59, v30, _s5BoardVMa);
        v61 = v109;
        if (!*(v109 + 16))
        {
          sub_10000BBC4(v30, _s5BoardVMa);
          goto LABEL_42;
        }

        Hasher.init(_seed:)();
        sub_10006852C(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v62 = type metadata accessor for CRLBoardIdentifierStorage(0);
        v63 = (v30 + *(v62 + 20));
        v65 = *v63;
        v64 = v63[1];
        String.hash(into:)();
        v4 = v110;
        v66 = Hasher._finalize()();
        v67 = -1 << *(v61 + 32);
        v68 = v66 & ~v67;
        if (((*(v31 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
        {
LABEL_41:
          sub_10000BBC4(v30, _s5BoardVMa);
          v13 = v91;
          v58 = v99;
          v59 = v96;
LABEL_42:
          v48 = v107;
LABEL_22:
          sub_10000BBC4(v105, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_23;
        }

        v69 = ~v67;
        v70 = *(v89 + 72);
        while (1)
        {
          sub_1000652DC(*(v109 + 48) + v70 * v68, v8, type metadata accessor for CRLBoardIdentifier);
          if ((static UUID.== infix(_:_:)() & 1) == 0)
          {
            sub_10000BBC4(v8, type metadata accessor for CRLBoardIdentifier);
            goto LABEL_30;
          }

          v71 = &v8[*(v62 + 20)];
          if (*v71 == v65 && *(v71 + 1) == v64)
          {
            break;
          }

          v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10000BBC4(v8, type metadata accessor for CRLBoardIdentifier);
          if (v4)
          {
            goto LABEL_44;
          }

LABEL_30:
          v68 = (v68 + 1) & v69;
          if (((*(v31 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
          {
            v30 = v108;
            goto LABEL_41;
          }
        }

        sub_10000BBC4(v8, type metadata accessor for CRLBoardIdentifier);
LABEL_44:
        v30 = v108;
        sub_10000BBC4(v108, _s5BoardVMa);
        sub_100065D50(v105, v90, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v73 = v101;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111 = v73;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = &v111;
          sub_100776764(0, *(v73 + 16) + 1, 1);
          v73 = v111;
        }

        v13 = v91;
        v58 = v99;
        v59 = v96;
        v76 = *(v73 + 16);
        v75 = *(v73 + 24);
        v77 = v73;
        if (v76 >= v75 >> 1)
        {
          v4 = &v111;
          sub_100776764((v75 > 1), v76 + 1, 1);
          v77 = v111;
        }

        *(v77 + 16) = v76 + 1;
        v101 = v77;
        sub_100065D50(v90, v77 + v104 + v76 * v103, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v48 = v107;
LABEL_23:
        if (++v60 == v102)
        {
          goto LABEL_50;
        }
      }
    }

    v101 = _swiftEmptyArrayStorage;
LABEL_50:

    v110[0] = _swiftEmptySetSingleton;
    v78 = sub_100F35F5C(v101, v110);

    v56 = v88;
    v57 = v82;
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v78);
  }

  else
  {

    v56 = v88;
    v57 = v82;
  }

  v79 = sub_10005AFE0();
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  return (*(v83 + 8))(v57, v56);
}

void sub_10006A7C8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBA0, &qword_101AD5B48);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFolderUI = v1;
}

uint64_t sub_10006A888()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v1, v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v8 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  v9 = (*(*(v8 - 8) + 48))(v7, 5, v8);
  if (v9 > 2)
  {
    if (v9 != 3 && v9 != 4)
    {
      v16 = [objc_opt_self() mainBundle];
      v17 = String._bridgeToObjectiveC()();
      v18 = String._bridgeToObjectiveC()();
      v14 = [v16 localizedStringForKey:v17 value:v18 table:0];

      goto LABEL_9;
    }

LABEL_3:
    v10 = [objc_opt_self() mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v14 = [v10 localizedStringForKey:v11 value:v12 table:0];

LABEL_9:
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v13;
  }

  if (v9)
  {
    goto LABEL_3;
  }

  sub_10000CCD0(v7, v4, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v13 = *&v4[*(v2 + 24)];

  sub_10000CD38(v4, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  return v13;
}

void sub_10006ACC8()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_101A23C00, &qword_1014B97E8);
  __chkstk_darwin(v2 - 8);
  v4 = &v63 - v3;
  v5 = sub_1005B981C(&unk_101A23860, qword_10147BC00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v63 - v10;
  __chkstk_darwin(v11);
  v69 = &v63 - v12;
  v13 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__currentSnapshotWithExpandedSections;
  swift_beginAccess();
  sub_10000BE14(&v1[v13], v4, &unk_101A23C00, &qword_1014B97E8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CAAC(v4, &unk_101A23C00, &qword_1014B97E8);
    v14 = v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView];
    v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView] = 1;
    sub_10006C670(v14);
    return;
  }

  v64 = v6;
  v15 = *(v6 + 32);
  v67 = v6 + 32;
  v66 = v15;
  v15(v8, v4, v5);
  v70 = v5;
  v16 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v17 = *(v16 + 16);
  v65 = v16;
  if (v17)
  {
    v18 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections;
    v19 = v16 + 32;
    swift_beginAccess();
    v20 = _swiftEmptyArrayStorage;
    while (1)
    {
      v21 = *v19;
      v22 = *(v19 + 16);
      v23 = *(v19 + 32);
      v76 = *(v19 + 48);
      v74 = v22;
      v75 = v23;
      v73 = v21;
      v24 = *&v1[v18];
      sub_1000693DC(&v73, v71);

      v25 = sub_100069438(&v73, v24);

      if ((v25 & 1) == 0)
      {
        sub_1000698D0(&v73);
        goto LABEL_6;
      }

      v71[0] = v73;
      v71[1] = v74;
      v71[2] = v75;
      v72 = v76;
      v26 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
      sub_1000698D0(&v73);
      v27 = *(v26 + 16);
      v28 = v20[2];
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v29 <= v20[3] >> 1)
      {
        if (!*(v26 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v28 <= v29)
        {
          v35 = v28 + v27;
        }

        else
        {
          v35 = v28;
        }

        v20 = sub_100B356D0(isUniquelyReferenced_nonNull_native, v35, 1, v20);
        if (!*(v26 + 16))
        {
LABEL_20:

          if (v27)
          {
            __break(1u);
            break;
          }

          goto LABEL_6;
        }
      }

      v31 = (v20[3] >> 1) - v20[2];
      type metadata accessor for UUID();
      if (v31 < v27)
      {
        goto LABEL_40;
      }

      swift_arrayInitWithCopy();

      if (v27)
      {
        v32 = v20[2];
        v33 = __OFADD__(v32, v27);
        v34 = v32 + v27;
        if (v33)
        {
          goto LABEL_41;
        }

        v20[2] = v34;
      }

LABEL_6:
      v19 += 56;
      if (!--v17)
      {
        goto LABEL_23;
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_23:

  v36 = v70;
  NSDiffableDataSourceSnapshot.deleteItems(_:)(v20);

  v37 = v68;
  v38 = v66;
  v66(v68, v8, v36);
  v38(v69, v37, v36);
  sub_10006B778();
  v40 = v39;
  v41 = objc_opt_self();
  v42 = [v41 sharedApplication];
  v43 = [v42 delegate];

  if (!v43)
  {
    goto LABEL_42;
  }

  type metadata accessor for CRLiOSAppDelegate();
  swift_dynamicCastClassUnconditional();

  swift_unknownObjectRelease();
  v44 = sub_10000A05C();

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v71[0]) = v44;

  static Published.subscript.setter();

  v45 = sub_10006BFF8();
  v46 = 0;
  if ((v45 & 1) == 0)
  {
    v47 = *(NSDiffableDataSourceSnapshot.itemIdentifiers.getter() + 16);

    v46 = v47 == 0;
  }

  v48 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView;
  v49 = v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView];
  v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView] = v46;
  sub_10006C670(v49);
  v50 = v64;
  if (v1[v48] == 1 && (v51 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint]) != 0 && *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_keyboardHeight] == 0.0)
  {
    v52 = v51;
    v53 = [v41 sharedApplication];
    v54 = [v53 delegate];

    if (!v54)
    {
      goto LABEL_43;
    }

    swift_dynamicCastClassUnconditional();
    v55 = sub_10006D030();
    swift_unknownObjectRelease();
    if (v55)
    {
      v56 = -102.0;
    }

    else
    {
      v56 = 0.0;
    }

    [v52 constant];
    if (v56 == v57)
    {
      (*(v50 + 8))(v69, v70);
    }

    else
    {
      [v52 setConstant:v56];
      v58 = [v1 view];
      v59 = v70;
      if (!v58)
      {
        goto LABEL_44;
      }

      v60 = v58;
      [v58 setNeedsUpdateConstraints];

      v61 = [v1 view];
      if (v61)
      {
        v62 = v61;
        [v61 setNeedsLayout];

        (*(v50 + 8))(v69, v59);
      }

      else
      {
LABEL_45:
        __break(1u);
      }
    }
  }

  else
  {
    (*(v64 + 8))(v69, v70);
  }
}

uint64_t sub_10006B46C(uint64_t *a1, int8x16_t *a2)
{
  v4 = sub_100068F28();
  v6 = v5;
  if (v4 == sub_100068F28() && v6 == v7)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v9 = 0;
    if ((v8 & 1) == 0)
    {
      return v9 & 1;
    }
  }

  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *(a1 + 24);
  v14 = *(a1 + 48);
  v15 = v14 >> 6;
  if (v14 >> 6 > 1)
  {
    v18 = *(a1 + 25) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32);
    v20 = a1[4];
    v19 = a1[5];
    if (v15 != 2)
    {
      v23 = v13 | (v18 << 8);
      v24 = *&v12 | *&v11;
      if (v14 != 192 || v24 | *&v10 | v20 | v19 | v23)
      {
        if (v14 == 192 && *&v10 == 1 && !(v24 | v20 | v19 | v23))
        {
          if (a2[3].u8[0] != 192 || a2->i64[0] != 1)
          {
            goto LABEL_42;
          }
        }

        else if (a2[3].u8[0] != 192 || a2->i64[0] != 2)
        {
          goto LABEL_42;
        }

        v26 = vorrq_s8(a2[1], a2[2]);
        if (*&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) | a2->i64[1])
        {
LABEL_42:
          v9 = 0;
          return v9 & 1;
        }
      }

      else
      {
        if (a2[3].u8[0] != 192)
        {
          goto LABEL_42;
        }

        v25 = vorrq_s8(a2[1], a2[2]);
        if (*&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | a2->i64[1] | a2->i64[0])
        {
          goto LABEL_42;
        }
      }

LABEL_41:
      v9 = 1;
      return v9 & 1;
    }

    v21 = a2[3].i8[0];
    if ((v21 & 0xC0) != 0x80)
    {
      goto LABEL_42;
    }

    v27[0] = *a1;
    *&v27[1] = v11;
    *&v27[2] = v12;
    v28 = v13;
    v29 = v18;
    v31 = BYTE6(v18);
    v30 = WORD2(v18);
    v32 = v20;
    v33 = v19;
    v34 = v14 & 1;
    v22 = a2[1];
    v35[0] = *a2;
    v35[1] = v22;
    v35[2] = a2[2];
    v36 = v21 & 1;
    v9 = sub_101302EF4(v27, v35);
    return v9 & 1;
  }

  if (v15)
  {
    if ((a2[3].i8[0] & 0xC0) != 0x40)
    {
      goto LABEL_42;
    }

    v9 = 0;
    if (a2->i8[0] != LOBYTE(v10) || *&a2->i64[1] != v11)
    {
      return v9 & 1;
    }

    if (v13)
    {
      if ((a2[1].i8[8] & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if ((a2[1].i8[8] & 1) != 0 || *a2[1].i64 != v12)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (a2[3].u8[0] > 0x3Fu)
  {
    goto LABEL_42;
  }

  v16 = a2->i64[1];
  v9 = (*&v11 | v16) == 0;
  if (v11 == 0.0 || !v16)
  {
    return v9 & 1;
  }

  if (*&v10 == a2->i64[0] && *&v11 == v16)
  {
    goto LABEL_41;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10006B778()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController;
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController);
  if (v5)
  {
    goto LABEL_4;
  }

  v6 = v0;
  sub_1000652DC(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 delegate];

  if (v8)
  {
    type metadata accessor for CRLiOSAppDelegate();
    swift_dynamicCastClassUnconditional();

    swift_unknownObjectRelease();
    v9 = sub_10000A05C();

    v10 = v6;
    v11 = *(v6 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString);
    v12 = *(v6 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString + 8);
    objc_allocWithZone(type metadata accessor for CRLiOSEmptyFolderViewController(0));

    v13 = sub_10006BD80(v3, v9, v11, v12);
    v14 = *(v10 + v4);
    *(v10 + v4) = v13;
    v13;

    v5 = 0;
LABEL_4:
    v15 = v5;
    return;
  }

  __break(1u);
}

uint64_t type metadata accessor for CRLiOSEmptyFolderViewController(uint64_t a1)
{
  result = qword_101A11EB0;
  if (!qword_101A11EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B984(uint64_t a1)
{
  result = type metadata accessor for CRLBoardLibraryViewModel.Filter(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for CRLEmptyFolderView(uint64_t a1)
{
  result = qword_101A066E8;
  if (!qword_101A066E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006BA74(uint64_t a1)
{
  type metadata accessor for CRLBoardLibraryViewModel.Filter(319);
  if (v1 <= 0x3F)
  {
    sub_10006BB44(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for CRLEmptyFolderViewDataSource(uint64_t a1)
{
  result = qword_1019FB350;
  if (!qword_1019FB350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006BB44(uint64_t a1)
{
  if (!qword_101A066F8)
  {
    type metadata accessor for CRLEmptyFolderViewDataSource(255);
    sub_10006BD28();
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_101A066F8);
    }
  }
}

void sub_10006BBA8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10006BBF4(uint64_t a1)
{
  sub_10006BBA8(319, &qword_1019FB360, &type metadata for CRLiCloudConnectionStatus);
  if (v1 <= 0x3F)
  {
    sub_10006BBA8(319, &qword_1019FB368, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10006BBA8(319, &qword_1019FB370, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_10006BD28()
{
  result = qword_101A06700;
  if (!qword_101A06700)
  {
    v3 = type metadata accessor for CRLEmptyFolderViewDataSource(255);
    result = swift_getWitnessTable(aQ_35, v3, v0, v1);
    atomic_store(result, &qword_101A06700);
  }

  return result;
}

uint64_t sub_10006BD80(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for CRLEmptyFolderView(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006BF38(a1, v4 + qword_101AD7510);
  type metadata accessor for CRLEmptyFolderViewDataSource(0);
  v13 = swift_allocObject();
  v20 = 0;
  Published.init(initialValue:)();
  swift_beginAccess();
  LOBYTE(v18) = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v18 = a3;
  v19 = a4;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v4 + qword_101A11EA8) = v13;
  sub_10006BF38(a1, v12);
  v14 = &v12[*(v10 + 28)];
  *v14 = CRLAsyncStreamProperty.projectedValue.getter;
  *(v14 + 1) = v13;
  v14[16] = 0;

  v15 = UIHostingController.init(rootView:)();
  sub_10006BF9C(a1);
  return v15;
}

uint64_t sub_10006BF38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006BF9C(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006BFF8()
{
  v1 = sub_1005B981C(&unk_101A23C00, &qword_1014B97E8);
  __chkstk_darwin(v1 - 8);
  v3 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v55 - v5;
  v7 = sub_1005B981C(&unk_101A23860, qword_10147BC00);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v60 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v56 = v55 - v11;
  __chkstk_darwin(v12);
  v57 = v55 - v13;
  __chkstk_darwin(v14);
  v16 = v55 - v15;
  v17 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__currentSnapshotWithExpandedSections;
  swift_beginAccess();
  sub_10000BE14(v0 + v17, v6, &unk_101A23C00, &qword_1014B97E8);
  v18 = *(v8 + 48);
  if (v18(v6, 1, v7) == 1)
  {
    sub_10000CAAC(v6, &unk_101A23C00, &qword_1014B97E8);
    return 0;
  }

  v19 = *(v8 + 32);
  v19(v16, v6, v7);
  sub_10000BE14(v0 + v17, v3, &unk_101A23C00, &qword_1014B97E8);
  if (v18(v3, 1, v7) == 1)
  {
    sub_10000CAAC(v3, &unk_101A23C00, &qword_1014B97E8);
    (*(v8 + 8))(v16, v7);
    return 0;
  }

  v20 = v0;
  v55[2] = v8 + 32;
  v19(v60, v3, v7);
  v59 = v7;
  v21 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v22 = *(v21 + 16);
  v55[1] = v21;
  if (!v22)
  {
    v62._rawValue = _swiftEmptyArrayStorage;
LABEL_26:

    v46 = v59;
    v47 = v60;
    NSDiffableDataSourceSnapshot.deleteItems(_:)(v62);

    v48 = v56;
    v19(v56, v47, v46);
    v49 = v57;
    v19(v57, v48, v46);
    v50 = *(NSDiffableDataSourceSnapshot.itemIdentifiers.getter() + 16);

    if (!v50)
    {
      v52 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      v53 = *(v8 + 8);
      v53(v49, v46);
      v53(v16, v46);
      v54 = *(v52 + 16);

      return v54 != 0;
    }

    v51 = *(v8 + 8);
    v51(v49, v46);
    v51(v16, v46);
    return 0;
  }

  v23 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections;
  v24 = v21 + 32;
  swift_beginAccess();
  v62._rawValue = _swiftEmptyArrayStorage;
  v58 = v20;
  v61 = v19;
  while (1)
  {
    v26 = *v24;
    v27 = *(v24 + 16);
    v28 = *(v24 + 32);
    v68 = *(v24 + 48);
    v66 = v27;
    v67 = v28;
    v65 = v26;
    v29 = *(v20 + v23);
    sub_1000693DC(&v65, v63);

    v30 = sub_100069438(&v65, v29);

    if ((v30 & 1) == 0)
    {
      sub_1000698D0(&v65);
LABEL_23:
      v19 = v61;
      goto LABEL_8;
    }

    v31 = v16;
    v32 = v8;
    v63[0] = v65;
    v63[1] = v66;
    v63[2] = v67;
    v64 = v68;
    v33 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    sub_1000698D0(&v65);
    v34 = *(v33 + 16);
    result = v62._rawValue;
    v35 = *(v62._rawValue + 2);
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    rawValue = v62._rawValue;
    if (!isUniquelyReferenced_nonNull_native || v36 > *(v62._rawValue + 3) >> 1)
    {
      if (v35 <= v36)
      {
        v39 = v35 + v34;
      }

      else
      {
        v39 = v35;
      }

      rawValue = sub_100B356D0(isUniquelyReferenced_nonNull_native, v39, 1, v62._rawValue);
    }

    v8 = v32;
    v40 = *(v33 + 16);
    v62._rawValue = rawValue;
    if (v40)
    {
      v41 = (rawValue[3] >> 1) - rawValue[2];
      v42 = rawValue;
      result = type metadata accessor for UUID();
      if (v41 < v34)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (!v34)
      {
        v8 = v32;
        v16 = v31;
        v20 = v58;
        goto LABEL_23;
      }

      v43 = v42[2];
      v44 = __OFADD__(v43, v34);
      v45 = v43 + v34;
      v19 = v61;
      if (v44)
      {
        goto LABEL_34;
      }

      v8 = v32;
      v42[2] = v45;
      v16 = v31;
      v20 = v58;
    }

    else
    {

      v16 = v31;
      v20 = v58;
      v19 = v61;
      if (v34)
      {
        goto LABEL_32;
      }
    }

LABEL_8:
    v24 += 56;
    if (!--v22)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_10006C670(char a1)
{
  v2 = v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView];
  if (v2 == (a1 & 1))
  {
    return;
  }

  sub_10006B778();
  v4 = v3;
  v5 = [v3 view];

  if (v2)
  {
    if (!v5)
    {
      return;
    }

    v6 = [v5 bottomAnchor];
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 bottomAnchor];

      v10 = [v6 constraintEqualToAnchor:v9 constant:-*&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_keyboardHeight]];
      v11 = String._bridgeToObjectiveC()();
      [v10 setIdentifier:v11];

      v12 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint;
      v13 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint];
      *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint] = v10;

      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v14 = [v1 view];
      if (v14)
      {
        v15 = v14;
        [v14 addSubview:v5];

        [v1 addChildViewController:*&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController]];
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_10146E8A0;
        v17 = [v5 leadingAnchor];
        v18 = [v1 view];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 leadingAnchor];

          v21 = [v17 constraintEqualToAnchor:v20];
          v22 = String._bridgeToObjectiveC()();
          [v21 setIdentifier:v22];

          *(v16 + 32) = v21;
          v23 = [v5 trailingAnchor];
          v24 = [v1 view];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 trailingAnchor];

            v27 = [v23 constraintEqualToAnchor:v26];
            v28 = String._bridgeToObjectiveC()();
            [v27 setIdentifier:v28];

            *(v16 + 40) = v27;
            v29 = [v5 topAnchor];
            v30 = [v1 view];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 safeAreaLayoutGuide];

              v33 = [v32 topAnchor];
              v34 = [v29 constraintEqualToAnchor:v33];

              v35 = String._bridgeToObjectiveC()();
              [v34 setIdentifier:v35];

              *(v16 + 48) = v34;
              v49 = v16;
              v36 = *&v1[v12];
              if (v36)
              {
                v37 = v36;
LABEL_17:
                v46 = v37;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v47 = objc_opt_self();
                sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v47 activateConstraints:isa];

                return;
              }

              v39 = [v5 bottomAnchor];
              v40 = [v1 view];
              if (v40)
              {
                v41 = v40;
                v42 = [v40 safeAreaLayoutGuide];

                v43 = [v42 bottomAnchor];
                v44 = [v39 constraintEqualToAnchor:v43];

                v45 = String._bridgeToObjectiveC()();
                [v44 setIdentifier:v45];

                v37 = v44;
                goto LABEL_17;
              }

LABEL_27:
              __break(1u);
              return;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_22;
  }

  [v5 removeFromSuperview];

  v38 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController];

  [v38 removeFromParentViewController];
}

void sub_10006CCAC(void *a1)
{
  v1 = a1;
  sub_10006CCF4();
}

void sub_10006CCF4()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLiOSEmptyFolderViewController(0);
  v17.receiver = v0;
  v17.super_class = v4;
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor:v7];

  v8 = objc_opt_self();
  v9 = [v8 defaultCenter];
  if (qword_1019F14A0 != -1)
  {
    swift_once();
  }

  [v9 addObserver:v0 selector:? name:? object:?];

  v10 = qword_101AD7510;
  v11 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  (*(*(v11 - 8) + 56))(v3, 4, 5, v11);
  LOBYTE(v10) = sub_100068604(v0 + v10, v3);
  sub_10006BF9C(v3);
  if (v10)
  {
    v12 = [v8 defaultCenter];
    if (qword_1019F1F48 != -1)
    {
      swift_once();
    }

    v13 = qword_101AD7950;
    v14 = [objc_opt_self() sharedApplication];
    v15 = [v14 delegate];

    if (v15)
    {
      type metadata accessor for CRLiOSAppDelegate();
      v16 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_iCloudStatus);

      swift_unknownObjectRelease();
      [v12 addObserver:v0 selector:"updateICloudOnlineWithNotification:" name:v13 object:v16];

      return;
    }

LABEL_11:
    __break(1u);
  }
}

NSString sub_10006CFF8()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD61F0 = result;
  return result;
}

uint64_t sub_10006D030()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_syncDriver);
  if (v1)
  {
    if (*(v1 + 136))
    {
      return 1;
    }

    else
    {
      return *(v1 + 137);
    }
  }

  else
  {
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v26[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v26, "Asking for fetch status before the sync driver exists.", 54, 2u);
    StaticString.description.getter("isFetchingChanges", 17, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSAppDelegate.swift", 85, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v13;
    v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 215;
    v16 = v26[0];
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Asking for fetch status before the sync driver exists.", 54, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("isFetchingChanges", 17, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSAppDelegate.swift", 85, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Asking for fetch status before the sync driver exists.", 54, 2);
    v25 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:215 isFatal:0 format:v25 args:v22];

    return 0;
  }
}

void sub_10006D41C()
{
  v1 = v0;
  sub_10006A888();
  v2 = String._bridgeToObjectiveC()();

  [v0 setTitle:v2];

  v3 = [v0 navigationItem];
  [v3 setStyle:0];

  sub_10006D850();
  v4 = [objc_allocWithZone(UISearchController) init];
  if (_UISolariumEnabled())
  {
    v5 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_cachedSearchController];
    *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_cachedSearchController] = v4;
    v6 = v4;
  }

  [v4 setSearchResultsUpdater:v1];
  [v4 setDelegate:v1];
  v7 = [v4 searchBar];
  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  [v7 setLargeContentTitle:v11];

  v12 = [v4 searchBar];
  [v12 setShowsLargeContentViewer:1];

  v13 = [v1 navigationItem];
  [v13 setSearchController:v4];

  v14 = [v1 navigationItem];
  [v14 setHidesSearchBarWhenScrolling:0];

  v15 = [v1 navigationItem];
  [v15 setLargeTitleDisplayMode:1];

  v16 = [v1 navigationController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 navigationBar];

    if (v18)
    {
      v19 = v18;
      [v19 setPrefersLargeTitles:1];
      sub_1005B981C(&unk_101A11100, &unk_101471490);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v21 = NSForegroundColorAttributeName;
      sub_10006E0EC();
      v23 = v22;
      *(inited + 64) = sub_100006370(0, &qword_101A11110, UIColor_ptr);
      *(inited + 40) = v23;
      sub_10006E310(inited);
      swift_setDeallocating();
      sub_10000CAAC(inited + 32, &unk_101A0DE70, "nd%");
      type metadata accessor for Key(0);
      sub_10006852C(&qword_1019F34A0, type metadata accessor for Key, byte_101467F70);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v19 setLargeTitleTextAttributes:isa];
    }
  }

  sub_10006E75C();
}

void sub_10006D850()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:5 target:0 action:0];
  if (![v1 isEditing])
  {
    if (_UISolariumEnabled())
    {
      v13 = [v1 navigationItem];
      v14 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_cachedSearchController];
      [v13 setSearchController:v14];
    }

    v15 = [v1 navigationItem];
    v16 = [v15 searchController];

    if (v16)
    {
      v17 = [v16 searchBar];

      [v17 _setEnabled:1];
    }

    sub_10006A888();
    v18 = String._bridgeToObjectiveC()();

    [v1 setTitle:v18];

    if (v3 == 1)
    {
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = 257;
      aBlock[4] = sub_100F771B4;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100646688;
      aBlock[3] = &unk_1018A9488;
      v22 = _Block_copy(aBlock);

      v12 = [v19 elementWithUncachedProvider:v22];
      _Block_release(v22);
      if ((_UISolariumEnabled() & 1) == 0)
      {
        v33 = swift_allocObject();
        v49 = xmmword_101465920;
        *(v33 + 16) = xmmword_101465920;
        sub_100006370(0, &unk_101A012C0, UIBarButtonItemGroup_ptr);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_101465920;
        *(v34 + 32) = sub_10006F798();
        v35 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

        *(v33 + 32) = v35;
      }
    }

    else
    {
      v28 = swift_allocObject();
      v49 = xmmword_10146CE00;
      *(v28 + 16) = xmmword_10146CE00;
      sub_100006370(0, &unk_101A012C0, UIBarButtonItemGroup_ptr);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_101465920;
      *(v29 + 32) = sub_10006F798();
      v30 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

      *(v28 + 32) = v30;
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_10146CE00;
      if (_UISolariumEnabled())
      {
        v32 = sub_100F3F19C();
      }

      else
      {
        v32 = sub_10005D5F8();
      }

      *(v31 + 32) = v32;
      *(v31 + 40) = sub_100F3ED14(1);
      v36 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();
LABEL_34:

      v12 = 0;
      *(v28 + 40) = v36;
    }

    goto LABEL_35;
  }

  sub_100F3FA30();
  if (v3 == 1)
  {
    v5 = swift_allocObject();
    v49 = xmmword_101465920;
    *(v5 + 16) = xmmword_101465920;
    sub_100006370(0, &unk_101A012C0, UIBarButtonItemGroup_ptr);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101465920;
    *(v6 + 32) = sub_100F3CD2C();
    v7 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    *(v5 + 32) = v7;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_101465920;
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10146E8A0;
    *(v9 + 32) = sub_10005D5F8();
    *(v9 + 40) = sub_100F3D0F8();
    *(v9 + 48) = v4;
    v10 = v4;
    v11 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v12 = 0;
    *(v8 + 32) = v11;
LABEL_35:
    v44 = [v1 navigationItem];
    [v44 setAdditionalOverflowItems:v12];

    v45 = [v1 navigationItem];
    sub_100006370(0, &unk_101A012C0, UIBarButtonItemGroup_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v45 setLeadingItemGroups:isa];

    v47 = [v1 navigationItem];
    v48 = Array._bridgeToObjectiveC()().super.isa;

    [v47 setTrailingItemGroups:v48];

    return;
  }

  v23 = [v1 collectionView];
  if (v23)
  {
    v24 = v23;
    v25 = sub_100911C48();

    v26 = *(v25 + 16);

    if (v26)
    {
      v27 = sub_100F3CD2C();
    }

    else
    {
      v27 = 0;
    }

    v50[4] = v27;
    if (_UISolariumEnabled())
    {
      v37 = sub_100F3F19C();
    }

    else
    {
      v37 = sub_10005D5F8();
    }

    v50[5] = v37;
    v38 = 0;
    v50[6] = sub_100F3D0F8();
    aBlock[0] = _swiftEmptyArrayStorage;
LABEL_24:
    if (v38 <= 3)
    {
      v39 = 3;
    }

    else
    {
      v39 = v38;
    }

    while (1)
    {
      if (v38 == 3)
      {
        sub_1005B981C(&unk_1019F6BE0, &qword_10146F9A0);
        swift_arrayDestroy();
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_10146CE00;
        sub_100006370(0, &unk_101A012C0, UIBarButtonItemGroup_ptr);
        v42 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

        *(v28 + 32) = v42;
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_101465920;
        *(v43 + 32) = sub_100F3ED14(0);
        v36 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();
        goto LABEL_34;
      }

      if (v39 == v38)
      {
        break;
      }

      v40 = v50[v38++ + 4];
      if (v40)
      {
        v41 = v40;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10006E0EC()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v0, v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v4 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  v5 = (*(*(v4 - 8) + 48))(v3, 5, v4);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = [objc_opt_self() systemRedColor];
    }

    else if (v5 == 4)
    {
      v6 = [objc_opt_self() systemBlueColor];
    }

    else
    {
      v6 = [objc_opt_self() systemGrayColor];
    }
  }

  else
  {
    if (!v5)
    {
      v7 = String._bridgeToObjectiveC()();
      v8 = [objc_opt_self() colorNamed:v7];

      if (v8)
      {
        sub_10000CD38(v3, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    if (v5 == 1)
    {
      v6 = [objc_opt_self() systemCyanColor];
    }

    else
    {
      v6 = [objc_opt_self() systemOrangeColor];
    }
  }

  v9 = v6;
}

unint64_t sub_10006E310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F050, &unk_101492690);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v11, &unk_101A0DE70, "nd%");
      v5 = v11;
      result = sub_10006E4C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000BF3C(&v12, (v3[7] + 32 * result));
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

unint64_t sub_10006E438(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10006E610(a1, v2);
}

id sub_10006E4D0(xmlDoc *a1, void *a2)
{
  v3 = a2;
  v4 = xmlXPathNewContext(a1);
  if (!v4)
  {
    NSLog(@"Unable to create XPath context.");
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  xmlXPathRegisterNs(v4, "svg", "http://www.w3.org/2000/svg");
  v6 = xmlXPathEvalExpression([v3 cStringUsingEncoding:4], v5);
  if (!v6)
  {
    NSLog(@"Unable to evaluate XPath.");
    goto LABEL_13;
  }

  v7 = v6;
  p_nodeNr = &v6->nodesetval->nodeNr;
  if (!p_nodeNr)
  {
    NSLog(@"Nodes was nil.");
    goto LABEL_13;
  }

  v9 = +[NSMutableArray array];
  if (*p_nodeNr >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_10006FE30(*(*(p_nodeNr + 1) + 8 * v10), 0);
      if (v11)
      {
        [v9 addObject:v11];
      }

      ++v10;
    }

    while (v10 < *p_nodeNr);
  }

  xmlXPathFreeObject(v7);
  xmlXPathFreeContext(v5);
LABEL_14:

  return v9;
}

unint64_t sub_10006E610(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_10006E75C()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v13 = [v1 parentViewController];

    if (v13)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 navigationBar];
        if (v5)
        {
          v6 = v5;
          [v6 setPrefersLargeTitles:1];
          sub_1005B981C(&unk_101A11100, &unk_101471490);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          *(inited + 32) = NSForegroundColorAttributeName;
          v8 = NSForegroundColorAttributeName;
          sub_10006E0EC();
          v10 = v9;
          *(inited + 64) = sub_100006370(0, &qword_101A11110, UIColor_ptr);
          *(inited + 40) = v10;
          sub_10006E310(inited);
          swift_setDeallocating();
          sub_10000CAAC(inited + 32, &unk_101A0DE70, "nd%");
          type metadata accessor for Key(0);
          sub_10006852C(&qword_1019F34A0, type metadata accessor for Key, byte_101467F70);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v6 setLargeTitleTextAttributes:isa];
        }

        v12 = [v4 navigationItem];
        [v12 setLargeTitleDisplayMode:1];
      }

      else
      {
      }
    }
  }
}

void sub_10006E9B4()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v2 - 8);
  v4 = v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  LOBYTE(v6) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
  v13.value._countAndFlagsBits = v10;
  v13.value._object = v12;
  v76.value.super.isa = 0;
  v76.is_nil = v6;
  v81.value.super.super.isa = 0;

  v14 = [v1 traitCollection];
  v15 = [v14 horizontalSizeClass];

  if (!_UISolariumEnabled() || v15 != 1)
  {
    v37 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
    v38 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    (*(*(v38 - 8) + 56))(v4, 5, 5, v38);
    LOBYTE(v37) = sub_100068604(v1 + v37, v4);
    sub_10000BBC4(v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10146E8A0;
    if (v37)
    {
      v40 = [v5 mainBundle];
      v41 = String._bridgeToObjectiveC()();
      v42 = String._bridgeToObjectiveC()();
      v43 = [v40 localizedStringForKey:v41 value:v42 table:0];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v78.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v47.value._countAndFlagsBits = v44;
      v47.value._object = v46;
      v78.value.super.isa = 0;
      v83.value.super.super.isa = 0;
      v48.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v47, v78, v83, v88).super.super.isa;
    }

    else
    {
      v48.super.super.isa = sub_100F3CE70();
    }

    *(v39 + 32) = v48;
    *(v39 + 40) = [objc_opt_self() flexibleSpaceItem];
    v49 = [v5 mainBundle];
    v50 = String._bridgeToObjectiveC()();
    v51 = String._bridgeToObjectiveC()();
    v52 = [v49 localizedStringForKey:v50 value:v51 table:0];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v79.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v56.value._countAndFlagsBits = v53;
    v56.value._object = v55;
    v79.value.super.isa = 0;
    v84.value.super.super.isa = 0;
    *(v39 + 48) = UIBarButtonItem.init(title:image:primaryAction:menu:)(v56, v79, v84, v89);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setToolbarItems:isa];

    v58 = [v1 collectionView];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 isEditing];

      v61 = [v1 navigationController];
      [v61 setToolbarHidden:v60 ^ 1];
LABEL_30:

      return;
    }

    goto LABEL_33;
  }

  v16 = [v1 collectionView];
  if (!v16)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 isEditing];

  if (v18)
  {
    v19 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
    v20 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    (*(*(v20 - 8) + 56))(v4, 5, 5, v20);
    LOBYTE(v19) = sub_100068604(v1 + v19, v4);
    sub_10000BBC4(v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10146E8A0;
    if (v19)
    {
      v22 = [v5 mainBundle];
      v23 = String._bridgeToObjectiveC()();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v77.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v29.value._countAndFlagsBits = v26;
      v29.value._object = v28;
      v77.value.super.isa = 0;
      v82.value.super.super.isa = 0;
      *(v21 + 32) = UIBarButtonItem.init(title:image:primaryAction:menu:)(v29, v77, v82, v87);
    }

    else
    {
      *(v21 + 32) = sub_100F3CE70();
    }

    *(v21 + 40) = [objc_opt_self() flexibleSpaceItem];
    v30 = [v5 mainBundle];
    v31 = String._bridgeToObjectiveC()();
    v32 = String._bridgeToObjectiveC()();
    v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v80.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v70.value._countAndFlagsBits = v34;
    v70.value._object = v36;
    v80.value.super.isa = 0;
    v85.value.super.super.isa = 0;
    *(v21 + 48) = UIBarButtonItem.init(title:image:primaryAction:menu:)(v70, v80, v85, v90);
    v71.super.isa = Array._bridgeToObjectiveC()().super.isa;
    goto LABEL_26;
  }

  if (_UISolariumEnabled())
  {
    v62 = [v1 navigationItem];
    v63 = [v62 searchBarPlacementBarButtonItem];

    v75[5] = v63;
    v64 = objc_opt_self();
    v65 = v63;
    v75[6] = [v64 flexibleSpaceItem];
    v66 = 0;
    v75[7] = sub_10006F798();
    v75[0] = _swiftEmptyArrayStorage;
LABEL_14:
    if (v66 <= 3)
    {
      v67 = 3;
    }

    else
    {
      v67 = v66;
    }

    while (1)
    {
      if (v66 == 3)
      {
        sub_1005B981C(&unk_1019F6BE0, &qword_10146F9A0);
        swift_arrayDestroy();
        v73 = Array._bridgeToObjectiveC()().super.isa;

        [v1 setToolbarItems:v73];

        goto LABEL_28;
      }

      if (v67 == v66)
      {
        break;
      }

      v68 = v75[v66++ + 5];
      if (v68)
      {
        v69 = v68;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_10146CE00;
  *(v72 + 32) = [objc_opt_self() flexibleSpaceItem];
  *(v72 + 40) = sub_10006F798();
  v71.super.isa = Array._bridgeToObjectiveC()().super.isa;
LABEL_26:

  [v1 setToolbarItems:v71.super.isa];

LABEL_28:
  v74 = [v1 navigationController];
  if (v74)
  {
    v61 = v74;
    [v74 setToolbarHidden:0];
    goto LABEL_30;
  }
}

uint64_t sub_10006F658(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D4C8;

  return sub_100F5095C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

objc_class *sub_10006F798()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToAddBoard;
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToAddBoard);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToAddBoard);
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_opt_self() systemImageNamed:v15];

    sub_100006370(0, &qword_1019F6190, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
    v18 = v16;
    v19 = v17;
    v20.value._countAndFlagsBits = v12;
    v20.value._object = v14;
    v28.value.super.isa = v16;
    v28.is_nil = v17;
    v29.value.super.super.isa = 0;
    v21.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v20, v28, v29, v30).super.super.isa;
    sub_1000652DC(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v22 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    v23 = (*(*(v22 - 8) + 48))(v4, 5, v22);
    if (v23 != 5)
    {
      sub_10000BBC4(v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    }

    [(objc_class *)v21.super.super.isa setEnabled:v23 != 5];

    v24 = *(v1 + v5);
    *(v1 + v5) = v21;
    v7 = v21.super.super.isa;

    v6 = 0;
  }

  v25 = v6;
  return v7;
}

void sub_10006FAD4()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  if (qword_1019F2748 != -1)
  {
    swift_once();
  }

  [v3 addObserver:v1 selector:? name:? object:?];

  if (qword_1019F14B0 != -1)
  {
    swift_once();
  }

  v4 = qword_101AD6200;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 mainQueue];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CRLiOSFolderGridViewController.NotificationObserver();
  v9 = swift_allocObject();
  sub_100070160(v6, v17, v7, sub_100F78F18, v8);
  *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver) = v9;

  v10 = [v2 defaultCenter];
  [v10 addObserver:v1 selector:"reloadAllItems" name:NSCurrentLocaleDidChangeNotification object:0];

  v11 = [v2 defaultCenter];
  [v11 addObserver:v1 selector:"reloadAllItems" name:NSSystemClockDidChangeNotification object:0];

  v12 = [v2 defaultCenter];
  v13 = [v5 mainQueue];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = sub_100F78F20;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = *"";
  v17[2] = sub_100059694;
  v17[3] = &unk_1018AA108;
  v15 = _Block_copy(v17);

  v16 = [v12 addObserverForName:NSCalendarDayChangedNotification object:0 queue:v13 usingBlock:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();
}

id sub_10006FE30(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = a1[2];
  if (v5)
  {
    v6 = [NSString stringWithCString:v5 encoding:4];
    [v4 setObject:v6 forKey:@"nodeName"];
  }

  if ((a1[10] + 1) >= 2)
  {
    v20 = [NSString stringWithCString:"stringWithCString:encoding:" encoding:?];
    v21 = [v4 objectForKey:@"nodeName"];
    v22 = [v21 isEqual:@"text"];

    if (v3 && v22)
    {
      v23 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v24 = [v20 stringByTrimmingCharactersInSet:v23];

      v25 = [v3 objectForKey:@"nodeContent"];
      v26 = v25;
      if (v25)
      {
        v27 = [v25 stringByAppendingString:v24];
      }

      else
      {
        v27 = v24;
      }

      v28 = v27;
      [v3 setObject:v27 forKey:@"nodeContent"];

      v18 = 0;
      goto LABEL_22;
    }

    [v4 setObject:v20 forKey:@"nodeContent"];
  }

  v7 = a1[11];
  if (v7)
  {
    v29 = v3;
    v8 = +[NSMutableDictionary dictionary];
    do
    {
      v9 = +[NSMutableDictionary dictionary];
      v10 = [NSString stringWithCString:v7[2] encoding:4];
      v11 = v7[3];
      if (v11)
      {
        v12 = sub_10006FE30(v11, v9);
      }

      if (v10)
      {
        v13 = [v9 objectForKey:@"nodeContent"];

        if (v13)
        {
          v14 = [v9 objectForKey:@"nodeContent"];
          [v8 setObject:v14 forKey:v10];
        }
      }

      v7 = v7[6];
    }

    while (v7);
    [v4 setObject:v8 forKey:@"nodeAttributes"];

    v3 = v29;
  }

  v15 = a1[3];
  if (v15)
  {
    v16 = +[NSMutableArray array];
    do
    {
      v17 = sub_10006FE30(v15, v4);
      if (v17)
      {
        [v16 addObject:v17];
      }

      v15 = v15[6];
    }

    while (v15);
    if ([v16 count])
    {
      [v4 setObject:v16 forKey:@"nodeChildArray"];
    }
  }

  v18 = v4;
LABEL_22:

  return v18;
}

void *sub_100070160(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = _swiftEmptyArrayStorage;
  v12 = [objc_opt_self() defaultCenter];
  v38 = a2;
  sub_10000BE14(a2, &aBlock, &unk_1019F4D00, &unk_10146E7F0);
  v13 = v42;
  if (v42)
  {
    v14 = sub_100020E58(&aBlock, v42);
    v37 = &v37;
    v15 = v12;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = *(v13 - 1);
    v20 = __chkstk_darwin(v14);
    v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    v23 = a1;
    v24 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v19 + 8))(v22, v13);
    a5 = v18;
    a4 = v17;
    a3 = v16;
    v12 = v15;
    sub_100005070(&aBlock);
  }

  else
  {
    v25 = a1;
    v24 = 0;
  }

  v26 = swift_allocObject();
  swift_weakInit();
  v43 = sub_100F78F28;
  v44 = v26;
  aBlock = _NSConcreteStackBlock;
  v40 = *"";
  v41 = sub_100059694;
  v42 = &unk_1018AA158;
  v27 = _Block_copy(&aBlock);

  v28 = [v12 addObserverForName:a1 object:v24 queue:a3 usingBlock:v27];
  _Block_release(v27);

  swift_unknownObjectRelease();
  v6[3] = v28;
  swift_unknownObjectRelease();
  aBlock = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  aBlock = 0xD00000000000001ALL;
  v40 = 0x80000001015B41A0;
  v29._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 34;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);

  v31 = aBlock;
  v32 = v40;
  sub_10000CAAC(v38, &unk_1019F4D00, &unk_10146E7F0);
  v33 = swift_allocObject();
  swift_weakInit();

  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = a4;
  v34[4] = a5;
  type metadata accessor for CRLiOSFolderGridViewController.RefreshLimiter();
  v35 = swift_allocObject();
  *(v35 + 32) = 0;
  *(v35 + 40) = 1;
  *(v35 + 72) = 0;
  *(v35 + 88) = 0;
  *(v35 + 96) = 0;
  *(v35 + 80) = 0;
  *(v35 + 16) = v31;
  *(v35 + 24) = v32;
  *(v35 + 48) = _swiftEmptySetSingleton;
  *(v35 + 56) = sub_100F78F84;
  *(v35 + 64) = v34;
  v6[2] = v35;

  return v6;
}

uint64_t sub_100070538()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10007060C(char a1)
{
  v2 = v1;
  v78.receiver = v2;
  v78.super_class = type metadata accessor for CRLiOSFolderGridViewController(0);
  objc_msgSendSuper2(&v78, "viewWillAppear:", a1 & 1);
  v4 = objc_opt_self();
  v5 = [v4 sharedApplication];
  v6 = [v5 isRunningTest];

  if (v6)
  {
    v7 = [v4 sharedApplication];
    v8 = [v7 delegate];

    if (!v8)
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRelease();
    v9 = qword_101AD75D0;
    if (qword_101AD75D0)
    {
      v10 = qword_101AD75E0;
      ObjectType = swift_getObjectType();
      aBlock = v9;
      v12 = *(v10 + 24);
      swift_unknownObjectRetain();
      v12(v2, ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }

  v13 = [v2 navigationController];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 navigationBar];

    if (v15)
    {
      v16 = v15;
      [v16 setPrefersLargeTitles:1];
      sub_1005B981C(&unk_101A11100, &unk_101471490);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v18 = NSForegroundColorAttributeName;
      sub_10006E0EC();
      v20 = v19;
      *(inited + 64) = sub_100006370(0, &qword_101A11110, UIColor_ptr);
      *(inited + 40) = v20;
      sub_10006E310(inited);
      swift_setDeallocating();
      sub_10000CAAC(inited + 32, &unk_101A0DE70, "nd%");
      type metadata accessor for Key(0);
      sub_10006852C(&qword_1019F34A0, type metadata accessor for Key, byte_101467F70);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 setLargeTitleTextAttributes:isa];
    }
  }

  sub_10006E75C();
  v22 = *(sub_100070F30() + 48);

  if (*(v22 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(3uLL), v23 = Hasher._finalize()(), v24 = -1 << *(v22 + 32), v25 = v23 & ~v24, ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
  {
    v26 = ~v24;
    while (1)
    {
      v27 = *(v22 + 48) + 16 * v25;
      if (*(v27 + 8) >= 3u && *v27 == 0)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v38 = *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter];

    sub_100F5FB78(0, 3u, 0);
    v39 = *(v38 + 48);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(3uLL);
    v40 = Hasher._finalize()();
    v41 = -1 << *(v39 + 32);
    v42 = v40 & ~v41;
    if ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
    {
      v43 = ~v41;
      while (1)
      {
        v44 = *(v39 + 48) + 16 * v42;
        if (*(v44 + 8) >= 3u && *v44 == 0)
        {
          break;
        }

        v42 = (v42 + 1) & v43;
        if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      aBlock = v39;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_100E85E84();
        v39 = aBlock;
      }

      v53 = *(v39 + 48) + 16 * v42;
      v54 = *v53;
      v55 = *(v53 + 8);
      sub_100F65BD4(v42);
      sub_1007A98C8(v54, v55);
      v39 = aBlock;
    }

    else
    {
LABEL_35:
    }

    v56 = *(v38 + 48);

    sub_100F5DE4C(v39);
    *(v38 + 48) = v39;

    sub_100F5E170(v56);
  }

  else
  {
LABEL_16:
  }

  v29 = *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver];
  if (v29)
  {
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = *(v30 + 48);
      if (*(v31 + 16))
      {
        Hasher.init(_seed:)();
        Hasher._combine(_:)(3uLL);
        v32 = Hasher._finalize()();
        v33 = -1 << *(v31 + 32);
        v34 = v32 & ~v33;
        if ((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
        {
          v35 = ~v33;
          while (1)
          {
            v36 = *(v31 + 48) + 16 * v34;
            if (*(v36 + 8) >= 3u && *v36 == 0)
            {
              break;
            }

            v34 = (v34 + 1) & v35;
            if (((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          sub_100F5FB78(0, 3u, 0);
          v46 = *(v30 + 48);
          Hasher.init(_seed:)();
          Hasher._combine(_:)(3uLL);
          v47 = Hasher._finalize()();
          v48 = -1 << *(v46 + 32);
          v49 = v47 & ~v48;
          if ((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
          {
            v50 = ~v48;
            while (1)
            {
              v51 = *(v46 + 48) + 16 * v49;
              if (*(v51 + 8) >= 3u && *v51 == 0)
              {
                break;
              }

              v49 = (v49 + 1) & v50;
              if (((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            aBlock = v46;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_100E85E84();
              v46 = aBlock;
            }

            v57 = *(v46 + 48) + 16 * v49;
            v58 = *v57;
            v59 = *(v57 + 8);
            sub_100F65BD4(v49);
            sub_1007A98C8(v58, v59);
            v46 = aBlock;
          }

          else
          {
LABEL_43:
          }

          v60 = *(v30 + 48);

          sub_100F5DE4C(v46);
          *(v30 + 48) = v46;

          sub_100F5E170(v60);
        }
      }
    }
  }

LABEL_52:
  v61 = objc_opt_self();
  v62 = [v61 defaultCenter];
  if (qword_1019F2568 != -1)
  {
    swift_once();
  }

  v63 = qword_101AD86A0;
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = sub_100F78D40;
  v77 = v64;
  aBlock = _NSConcreteStackBlock;
  v73 = *"";
  v74 = sub_100059694;
  v75 = &unk_1018AA068;
  v65 = _Block_copy(&aBlock);

  v66 = [v62 addObserverForName:v63 object:0 queue:0 usingBlock:v65];
  _Block_release(v65);

  *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidBeginObserver] = v66;
  swift_unknownObjectRelease();
  v67 = [v61 defaultCenter];
  if (qword_1019F2560 != -1)
  {
    swift_once();
  }

  v68 = qword_101AD8698;
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = sub_100F78D78;
  v77 = v69;
  aBlock = _NSConcreteStackBlock;
  v73 = *"";
  v74 = sub_100059694;
  v75 = &unk_1018AA090;
  v70 = _Block_copy(&aBlock);

  v71 = [v67 addObserverForName:v68 object:0 queue:0 usingBlock:v70];
  _Block_release(v70);

  *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidEndObserver] = v71;
  swift_unknownObjectRelease();
}

uint64_t sub_100070F30()
{
  v1 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter;
  if (*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for CRLiOSFolderGridViewController.RefreshLimiter();
    v2 = swift_allocObject();
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
    *(v2 + 72) = 0;
    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    *(v2 + 80) = 0;
    *(v2 + 16) = 0xD00000000000001DLL;
    *(v2 + 24) = 0x80000001015B39B0;
    *(v2 + 48) = _swiftEmptySetSingleton;
    *(v2 + 56) = sub_100F772B8;
    *(v2 + 64) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

NSString sub_100071020()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD86A0 = result;
  return result;
}

NSString sub_10007105C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8698 = result;
  return result;
}

uint64_t sub_1000710F8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    v12 = [v11 collectionView];

    if (v12)
    {
      v13 = v12;
      [v13 bounds];
      v15 = v14;
      v17 = v16;

      if (v15 != a3 || v17 != a4)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v20.receiver = v4;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);
}

void sub_100071220()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    type metadata accessor for CRLiOSAppDelegate();
    v2 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibraryCommandController);
    if (v2)
    {
      v3 = v2;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = objc_opt_self();
      v4 = [v26 _atomicIncrementAssertCount];
      v27[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v27, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("boardLibraryCommandController", 29, 2);
      v25 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
      v5 = String._bridgeToObjectiveC()();

      v6 = [v5 lastPathComponent];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v9 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v11 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v11;
      v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v12;
      *(inited + 72) = v25;
      *(inited + 136) = &type metadata for String;
      v13 = sub_1000053B0();
      *(inited + 112) = v24;
      *(inited + 120) = v8;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v13;
      *(inited + 152) = 56;
      v14 = v27[0];
      *(inited + 216) = v11;
      *(inited + 224) = v12;
      *(inited + 192) = v14;
      v15 = v25;
      v16 = v14;
      v17 = static os_log_type_t.error.getter();
      sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v18 = static os_log_type_t.error.getter();
      sub_100005404(v9, &_mh_execute_header, v18, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v19 = swift_allocObject();
      v19[2] = 8;
      v19[3] = 0;
      v19[4] = 0;
      v19[5] = 0;
      v20 = __VaListBuilder.va_list()();
      StaticString.description.getter("boardLibraryCommandController", 29, 2);
      v21 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
      v22 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v23 = String._bridgeToObjectiveC()();

      [v26 handleFailureInFunction:v21 file:v22 lineNumber:56 isFatal:0 format:v23 args:v20];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000716D0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000717B4(const CGPath *a1)
{
  info = 0;
  CGPathApply(a1, &info, sub_1000718C0);
  return info;
}

uint64_t sub_100071834(void *a1)
{
  v1 = type metadata accessor for ScrollView();

  return swift_getWitnessTable(&protocol conformance descriptor for ScrollView<A>, v1);
}

CGPath *sub_10007187C(const CGPath *a1, const CGAffineTransform *a2)
{
  Mutable = CGPathCreateMutable();
  CGPathAddPath(Mutable, a2, a1);
  return Mutable;
}

uint64_t storeEnumTagSinglePayload for CRLRectData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100071910@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CRLEmptyFolderViewDataSource(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100071950@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100071E40(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLEmptyFolderView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100071EA8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CRLEmptyFolderView);
  *a2 = sub_100072318;
  a2[1] = v7;
  return result;
}

uint64_t sub_100071A64()
{
  v1 = v0;
  v2 = type metadata accessor for CRLEmptyFolderView(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v1 + v4;
  v7 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  if (!(*(*(v7 - 8) + 48))(v1 + v4, 5, v7))
  {
    v22 = v1;
    v23 = v5;
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 8);
    v9(v6, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v6 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v9(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v6 + v13, v14);
    v15(v6 + v10[9], v14);
    v16 = v6 + v10[14];
    v17 = _s5BoardV13ShareMetadataVMa(0);
    v1 = v22;
    v5 = v23;
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      v18 = *(v17 + 20);
      v19 = type metadata accessor for URL();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v16 + v18, 1, v19))
      {
        (*(v20 + 8))(v16 + v18, v19);
      }

      v5 = v23;
    }
  }

  sub_1008B531C(*(v6 + *(v2 + 20)), *(v6 + *(v2 + 20) + 8));

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_100071E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100071EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_100071F10(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

__n128 sub_100072118@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1005B981C(&qword_101A06730, &qword_101484EF0);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_1005B981C(&qword_101A06738, &qword_101484EF8);
  sub_10007246C(a1, &v7[*(v8 + 44)]);
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003DFF8(v7, a3, &qword_101A06730, &qword_101484EF0);
  v9 = a3 + *(sub_1005B981C(&qword_101A06740, &qword_101484F00) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

double sub_100072318@<D0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for CRLEmptyFolderView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  *&result = sub_100072118(v5, a2).n128_u64[0];
  return result;
}

__n128 sub_10007246C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_101A06748, &qword_101484F08);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = sub_1005B981C(&qword_101A06750, &qword_101484F10);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v20 - v9;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = sub_1005B981C(&qword_101A06758, &qword_101484F18);
  sub_100072758(a1, &v6[*(v11 + 44)]);
  GeometryProxy.size.getter();
  sub_100074ECC();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003DFF8(v6, v10, &qword_101A06748, &qword_101484F08);
  v12 = &v10[*(v8 + 44)];
  v13 = v20[5];
  *(v12 + 4) = v20[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v20[6];
  v14 = v20[1];
  *v12 = v20[0];
  *(v12 + 1) = v14;
  v15 = v20[3];
  *(v12 + 2) = v20[2];
  *(v12 + 3) = v15;
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003DFF8(v10, a2, &qword_101A06750, &qword_101484F10);
  v16 = a2 + *(sub_1005B981C(&qword_101A06760, &unk_101484F20) + 36);
  v17 = v20[12];
  *(v16 + 64) = v20[11];
  *(v16 + 80) = v17;
  *(v16 + 96) = v20[13];
  v18 = v20[8];
  *v16 = v20[7];
  *(v16 + 16) = v18;
  result = v20[10];
  *(v16 + 32) = v20[9];
  *(v16 + 48) = result;
  return result;
}

uint64_t sub_100072758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = sub_1005B981C(&qword_101A06768, &qword_101484F30);
  __chkstk_darwin(v3 - 8);
  v128 = v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v124 = v117 - v6;
  v129 = sub_1005B981C(&qword_101A06770, &qword_101484F38);
  __chkstk_darwin(v129);
  v126 = v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v123 = v117 - v9;
  v122 = sub_1005B981C(&qword_101A06778, &qword_101484F40);
  __chkstk_darwin(v122);
  v125 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v131 = v117 - v12;
  v13 = sub_1005B981C(&qword_101A06780, &qword_101484F48);
  __chkstk_darwin(v13 - 8);
  v132 = v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v117 - v16;
  v133 = a1;
  sub_1000733A0();
  v130 = Image.init(systemName:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = v144;
  v19 = v145;
  v20 = v147;
  v120 = v148;
  v121 = v146;
  v119 = v149;
  if (qword_1019F18C8 != -1)
  {
    swift_once();
  }

  v21 = qword_101A06638;
  KeyPath = swift_getKeyPath();
  LOBYTE(v150[0]) = v19;
  LOBYTE(v134) = v20;
  v23 = qword_1019F18D0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_101A06640;
  v25 = swift_getKeyPath();

  v26 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v143 = 0;
  *&v134 = v130;
  *(&v134 + 1) = v18;
  LOBYTE(v135) = v19;
  *(&v135 + 1) = v121;
  LOBYTE(v136) = v20;
  *(&v136 + 1) = v120;
  *&v137 = v119;
  *(&v137 + 1) = KeyPath;
  *&v138 = v21;
  *(&v138 + 1) = v25;
  *&v139 = v24;
  BYTE8(v139) = v26;
  *&v140 = v27;
  *(&v140 + 1) = v28;
  *&v141 = v29;
  *(&v141 + 1) = v30;
  v142 = 0;
  sub_1005B981C(&qword_101A06788, &qword_101484FB0);
  sub_1000739E4();
  View.accessibilityHidden(_:)();
  v150[6] = v140;
  v150[7] = v141;
  v151 = v142;
  v150[2] = v136;
  v150[3] = v137;
  v150[4] = v138;
  v150[5] = v139;
  v150[0] = v134;
  v150[1] = v135;
  sub_10000CAAC(v150, &qword_101A06788, &qword_101484FB0);
  *&v134 = sub_100073BAC();
  *(&v134 + 1) = v31;
  v121 = sub_100017CD8();
  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  if (qword_1019F18D8 != -1)
  {
    swift_once();
  }

  v37 = Text.font(_:)();
  v39 = v38;
  v41 = v40;
  sub_10007441C(v32, v34, v36 & 1);

  if (qword_1019F18E0 != -1)
  {
    swift_once();
  }

  v130 = v17;
  v42 = Text.fontWeight(_:)();
  v44 = v43;
  v46 = v45;
  sub_10007441C(v37, v39, v41 & 1);

  if (qword_1019F18E8 != -1)
  {
    swift_once();
  }

  v117[0] = Text.foregroundColor(_:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_10007441C(v42, v44, v46 & 1);

  v53 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v50 & 1;
  LOBYTE(v134) = v50 & 1;
  v143 = 0;
  v63 = swift_getKeyPath();
  v64 = v131;
  v65 = (v131 + *(v129 + 36));
  v120 = sub_1005B981C(&qword_101A067D8, &qword_101485010);
  v66 = *(v120 + 28);
  v67 = enum case for Text.TruncationMode.middle(_:);
  v68 = type metadata accessor for Text.TruncationMode();
  v69 = *(v68 - 8);
  v118 = *(v69 + 104);
  v119 = v68;
  v117[1] = v69 + 104;
  v118(v65 + v66, v67);
  *v65 = swift_getKeyPath();
  *v64 = v117[0];
  *(v64 + 8) = v48;
  *(v64 + 16) = v62;
  *(v64 + 24) = v52;
  *(v64 + 32) = v53;
  *(v64 + 40) = v55;
  *(v64 + 48) = v57;
  *(v64 + 56) = v59;
  *(v64 + 64) = v61;
  *(v64 + 72) = 0;
  *(v64 + 80) = v63;
  *(v64 + 88) = 1;
  v70 = swift_getKeyPath();
  v71 = v64 + *(v122 + 36);
  *v71 = v70;
  *(v71 + 8) = 3;
  *(v71 + 16) = 0;
  *&v134 = sub_100074460();
  *(&v134 + 1) = v72;
  v73 = Text.init<A>(_:)();
  v75 = v74;
  v77 = v76;
  if (qword_1019F18F0 != -1)
  {
    swift_once();
  }

  v78 = Text.font(_:)();
  v80 = v79;
  v82 = v81;
  sub_10007441C(v73, v75, v77 & 1);

  if (qword_1019F18F8 != -1)
  {
    swift_once();
  }

  v83 = Text.fontWeight(_:)();
  v85 = v84;
  v87 = v86;
  sub_10007441C(v78, v80, v82 & 1);

  if (qword_1019F1900 != -1)
  {
    swift_once();
  }

  v88 = Text.foregroundColor(_:)();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  sub_10007441C(v83, v85, v87 & 1);

  v95 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v92 & 1;
  LOBYTE(v134) = v92 & 1;
  v143 = 0;
  v105 = swift_getKeyPath();
  v106 = v123;
  v107 = &v123[*(v129 + 36)];
  (v118)(v107 + *(v120 + 28), enum case for Text.TruncationMode.tail(_:), v119);
  *v107 = swift_getKeyPath();
  *v106 = v88;
  *(v106 + 8) = v90;
  *(v106 + 16) = v104;
  *(v106 + 24) = v94;
  *(v106 + 32) = v95;
  *(v106 + 40) = v97;
  *(v106 + 48) = v99;
  *(v106 + 56) = v101;
  *(v106 + 64) = v103;
  *(v106 + 72) = 0;
  *(v106 + 80) = v105;
  *(v106 + 88) = 1;
  v108 = v124;
  sub_100074B2C(v124);
  v109 = v132;
  sub_10000BE14(v130, v132, &qword_101A06780, &qword_101484F48);
  v110 = v131;
  v111 = v125;
  sub_10000BE14(v131, v125, &qword_101A06778, &qword_101484F40);
  v112 = v126;
  sub_10000BE14(v106, v126, &qword_101A06770, &qword_101484F38);
  v113 = v128;
  sub_10000BE14(v108, v128, &qword_101A06768, &qword_101484F30);
  v114 = v127;
  sub_10000BE14(v109, v127, &qword_101A06780, &qword_101484F48);
  v115 = sub_1005B981C(&qword_101A067E0, &qword_101485078);
  sub_10000BE14(v111, v114 + v115[12], &qword_101A06778, &qword_101484F40);
  sub_10000BE14(v112, v114 + v115[16], &qword_101A06770, &qword_101484F38);
  sub_10000BE14(v113, v114 + v115[20], &qword_101A06768, &qword_101484F30);
  sub_10000CAAC(v108, &qword_101A06768, &qword_101484F30);
  sub_10000CAAC(v106, &qword_101A06770, &qword_101484F38);
  sub_10000CAAC(v110, &qword_101A06778, &qword_101484F40);
  sub_10000CAAC(v130, &qword_101A06780, &qword_101484F48);
  sub_10000CAAC(v113, &qword_101A06768, &qword_101484F30);
  sub_10000CAAC(v112, &qword_101A06770, &qword_101484F38);
  sub_10000CAAC(v111, &qword_101A06778, &qword_101484F40);
  return sub_10000CAAC(v132, &qword_101A06780, &qword_101484F48);
}

uint64_t sub_100073238@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000732C8@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void *sub_10007332C(void *result, const char *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return [result lineToPoint:{**(a2 + 1), *(*(a2 + 1) + 8)}];
      }
    }

    else
    {
      return [result moveToPoint:{**(a2 + 1), *(*(a2 + 1) + 8)}];
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return [result curveToPoint:*(*(a2 + 1) + 16) controlPoint:{*(*(a2 + 1) + 24), **(a2 + 1), *(*(a2 + 1) + 8)}];
      case 3:
        v3 = *(a2 + 1);
        return [result curveToPoint:v3[4] controlPoint1:v3[5] controlPoint2:{*v3, v3[1], v3[2], v3[3]}];
      case 4:
        return [result closePath];
    }
  }

  return result;
}

uint64_t sub_1000733A0()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v19 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v18 - v4;
  type metadata accessor for CRLEmptyFolderView(0);
  v20 = v0;
  type metadata accessor for CRLEmptyFolderViewDataSource(0);
  v6 = sub_10006BD28();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v21;
  v7 = v22;

  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    return 0x697966696E67616DLL;
  }

  v18[1] = v6;
  v11 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  v12 = *(v11 - 8);
  (*(v12 + 56))(v5, 4, 5, v11);
  v13 = v20;
  v14 = sub_100068604(v20, v5);
  sub_10005105C(v5, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (v14)
  {
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v21 != 1)
    {
      return 0xD00000000000001BLL;
    }
  }

  v15 = v19;
  sub_100071E40(v13, v19, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v16 = (*(v12 + 48))(v15, 5, v11);
  if (v16 <= 2)
  {
    if (!v16)
    {
      sub_10005105C(v15, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      return 0x7265646C6F66;
    }

    if (v16 == 1)
    {
      return 0xD000000000000020;
    }

    v17 = 0x2E6B636F6C63;
    return v17 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
  }

  if (v16 == 3)
  {
    v17 = 0x2E7472616568;
    return v17 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
  }

  if (v16 == 4)
  {
    return 0x322E6E6F73726570;
  }

  else
  {
    return 0x69662E6873617274;
  }
}

uint64_t sub_100073788()
{
  v0 = sub_1005B981C(qword_101A067F0, &qword_101485168);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  static Font.Weight.bold.getter();
  v3 = enum case for Font.Design.rounded(_:);
  v4 = type metadata accessor for Font.Design();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = static Font.system(size:weight:design:)();
  result = sub_10000CAAC(v2, qword_101A067F0, &qword_101485168);
  qword_101A06638 = v6;
  return result;
}

uint64_t sub_1000738D0(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(_:)();
  *a3 = result;
  return result;
}

unint64_t sub_10007392C()
{
  result = qword_101A06798;
  if (!qword_101A06798)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A067A0, &qword_101484FB8);
    v4[0] = sub_100073A70();
    v4[1] = sub_10001A2F8(&qword_1019FEA88, &qword_1019FEA90, &qword_10147A680, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A06798);
  }

  return result;
}

unint64_t sub_1000739E4()
{
  result = qword_101A06790;
  if (!qword_101A06790)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A06788, &qword_101484FB0);
    v4[0] = sub_10007392C();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A06790);
  }

  return result;
}

unint64_t sub_100073A70()
{
  result = qword_101A067A8;
  if (!qword_101A067A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A067B0, &unk_101484FC0);
    v4[0] = sub_100073B28();
    v4[1] = sub_10001A2F8(&qword_101A067C8, &qword_101A067D0, &unk_101484FD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A067A8);
  }

  return result;
}

unint64_t sub_100073B28()
{
  result = qword_101A067B8;
  if (!qword_101A067B8)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_1005C4E5C(&qword_101A067C0, &unk_101487B60);
    v4[0] = &protocol witness table for Image;
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A067B8);
  }

  return result;
}

uint64_t sub_100073BAC()
{
  v34 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v34);
  v33 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLEmptyFolderView(0);
  v35 = v0;
  type metadata accessor for CRLEmptyFolderViewDataSource(0);
  sub_10006BD28();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v36;
  v5 = v37;

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v11 = v33;
    v10 = v34;
    sub_100071E40(v35, v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v12 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    v13 = (*(*(v12 - 8) + 48))(v4, 5, v12);
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        goto LABEL_17;
      }

      if (v13 != 4)
      {
        return 0;
      }

      StateObject.wrappedValue.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v36 != 1)
      {
LABEL_17:
        v28 = [objc_opt_self() mainBundle];
        v29 = String._bridgeToObjectiveC()();
        v30 = String._bridgeToObjectiveC()();
        v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v22;
      }

      v24 = [objc_opt_self() mainBundle];
      v25 = String._bridgeToObjectiveC()();
      v26 = String._bridgeToObjectiveC()();
      v27 = [v24 localizedStringForKey:v25 value:v26 table:0];
    }

    else
    {
      if (!v13)
      {
        sub_100071EA8(v4, v11, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v22 = *(v11 + *(v10 + 24));

        sub_10005105C(v11, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        return v22;
      }

      v14 = [objc_opt_self() mainBundle];
      v15 = String._bridgeToObjectiveC()();
      v16 = String._bridgeToObjectiveC()();
      v27 = [v14 localizedStringForKey:v15 value:v16 table:0];
    }

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v22;
  }

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v8 localizedStringForKey:v9 value:v17 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10146C6B0;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v36;
  v21 = v37;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000053B0();
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  v22 = String.init(format:_:)();

  return v22;
}

uint64_t sub_1000743EC()
{
  result = static Font.title2.getter();
  qword_101A06648 = result;
  return result;
}

void sub_10007441C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100074460()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLEmptyFolderView(0);
  type metadata accessor for CRLEmptyFolderViewDataSource(0);
  sub_10006BD28();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v25;
  v4 = v26;

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    sub_100071E40(v0, v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v11 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    v12 = (*(*(v11 - 8) + 48))(v3, 5, v11);
    if (v12 <= 1)
    {
      if (!v12)
      {
        sub_10005105C(v3, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        return 0;
      }
    }

    else
    {
      if ((v12 - 2) < 2 || v12 != 4)
      {
        return 0;
      }

      StateObject.wrappedValue.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v25 != 1)
      {
        v27 = &type metadata for CRLAppleAccountFeatureFlags;
        v28 = sub_1008B57B8();
        isFeatureEnabled(_:)();
        sub_100005070(&v25);
        v18 = [objc_opt_self() mainBundle];
        v19 = String._bridgeToObjectiveC()();
        v20 = String._bridgeToObjectiveC()();
        v21 = [v18 localizedStringForKey:v19 value:v20 table:0];
        goto LABEL_19;
      }
    }

    v18 = [objc_opt_self() mainBundle];
    v19 = String._bridgeToObjectiveC()();
    v20 = String._bridgeToObjectiveC()();
    v21 = [v18 localizedStringForKey:v19 value:v20 table:0];
LABEL_19:
    v22 = v21;

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v17;
  }

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25 == 1)
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146C6B0;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v25;
  v16 = v26;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_1000053B0();
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v17 = String.init(format:_:)();

  return v17;
}

uint64_t sub_100074AD8()
{
  result = static Font.footnote.getter();
  qword_101A06660 = result;
  return result;
}

uint64_t sub_100074B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071E40(v1, v5, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v6 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  if ((*(*(v6 - 8) + 48))(v5, 5, v6) == 4)
  {
    type metadata accessor for CRLEmptyFolderView(0);
    type metadata accessor for CRLEmptyFolderViewDataSource(0);
    sub_10006BD28();
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (LOBYTE(v16[0]) == 1)
    {
      goto LABEL_6;
    }

    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = v16[0];
    v7 = v16[1];

    v9 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
LABEL_6:
      v10 = sub_1005B981C(&qword_1019FEA78, &qword_101485080);
      return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    }

    else
    {
      if (qword_1019F1908 != -1)
      {
        swift_once();
      }

      v13 = sub_1005B981C(&qword_1019FEA78, &qword_101485080);
      v14 = sub_1005EB3DC(v13, qword_101A06678);
      v15 = *(v13 - 8);
      (*(v15 + 16))(a1, v14, v13);
      return (*(v15 + 56))(a1, 0, 1, v13);
    }
  }

  else
  {
    v12 = sub_1005B981C(&qword_1019FEA78, &qword_101485080);
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    return sub_10005105C(v5, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  }
}

uint64_t sub_100074ECC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_10000CAAC(v9, &unk_1019F4D00, &unk_10146E7F0);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

  if (v5 == 0x737961776C41 && v6 == 0xE600000000000000)
  {

    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

uint64_t sub_100075034(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t sub_1000752FC(uint64_t a1)
{
  static Axis.Set.vertical.getter();
  ScrollView.init(_:showsIndicators:content:)();
  Axis.Set.init(rawValue:)();
  type metadata accessor for ScrollView();
  return ScrollView._alwaysBounceAxes.setter();
}

uint64_t sub_100075394(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100075470(v6);
  sub_100075470(v5);
  return (*(v3 + 8))(v5, a2);
}

void sub_100075478(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = _s13ItemViewModelVMa(0);
  v24 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_1009AD564(a3 + v14 + v15 * v12, v11, _s13ItemViewModelVMa);
      v16 = a1(v11);
      if (v3)
      {
        sub_1009AD6B8(v11, _s13ItemViewModelVMa);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_1009ACC04(v11, v23, _s13ItemViewModelVMa);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776C44(0, v13[2] + 1, 1);
          v13 = v25;
        }

        v19 = v13[2];
        v18 = v13[3];
        if (v19 >= v18 >> 1)
        {
          sub_100776C44((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        v13[2] = v19 + 1;
        sub_1009ACC04(v23, v13 + v14 + v19 * v15, _s13ItemViewModelVMa);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_1009AD6B8(v11, _s13ItemViewModelVMa);
      }

      if (v22 == ++v12)
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

void sub_1000757A8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *(a2 + 56) = &off_101883FA8;
  swift_unknownObjectWeakAssign();
  v7 = *(a1 + OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_footerViewHeight);
  *(a2 + 24) = v7;
  *(a2 + 16) = v7 > 0.0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v10.receiver = a3;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "prepareLayout");
  sub_10007722C();
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
}

id sub_100075840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

id sub_1000758BC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1005B981C(&unk_101A23860, qword_10147BC00);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v130 - v12;
  v143 = sub_100076898(a2);
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v142 = v10;
  v14 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_93;
  }

  v15 = *(v14 + 16);
  if (v15 <= a1)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v144 = v13;
  v140 = v11;
  v141 = a4;
  v131 = a2;
  v16 = v14 + 32 + 56 * a1;
  v17 = *v16;
  v18 = *(v16 + 16);
  v19 = *(v16 + 32);
  v158 = *(v16 + 48);
  v156 = v18;
  v157 = v19;
  v155 = v17;
  if (a1 + 1 >= v15)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v10 = 0;
    v26 = -2;
  }

  else
  {
    v20 = v14 + 32 + 56 * (a1 + 1);
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    v10 = *(v20 + 40);
    v26 = *(v20 + 48);
    sub_100076F8C(*v20, v22, v23, v24, v25, v10, v26);
  }

  v138 = v22;
  v139 = v21;
  *&v149 = v21;
  *(&v149 + 1) = v22;
  v136 = v25;
  v137 = v23;
  v150 = v23;
  v151 = v24;
  v152 = v25;
  v153 = v10;
  v135 = v10;
  v154 = v26;
  sub_1000693DC(&v155, &v145);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a1 = v24;
  LOBYTE(v10) = v26;
  if (Strong)
  {
    result = [Strong view];
    if (!result)
    {
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v29 = result;
    [result directionalLayoutMargins];
    leading = v30;
    trailing = v31;
    swift_unknownObjectRelease();
  }

  else
  {
    leading = NSDirectionalEdgeInsetsZero.leading;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
  }

  swift_beginAccess();
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    goto LABEL_22;
  }

  result = [v32 view];
  if (!result)
  {
    goto LABEL_96;
  }

  v33 = result;
  v34 = [result insetsLayoutMarginsFromSafeArea];
  swift_unknownObjectRelease();

  if (!v34)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (!v35)
  {
    goto LABEL_22;
  }

  result = [v35 view];
  if (!result)
  {
LABEL_97:
    __break(1u);
    return result;
  }

  v36 = result;
  [result safeAreaInsets];
  v38 = v37;
  v40 = v39;
  swift_unknownObjectRelease();

  v43 = sub_100076BAC(v41, v42);
  if (v43)
  {
    v45 = v38;
  }

  else
  {
    v45 = v40;
  }

  leading = leading - v45;
  if (sub_100076BAC(v43, v44))
  {
    v46 = v40;
  }

  else
  {
    v46 = v38;
  }

  trailing = trailing - v46;
LABEL_22:
  if (v158 >= 0xC0u)
  {
    v47 = vorrq_s8(v156, v157);
    v48 = *&vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL)) | *(&v155 + 1);
    if (v158 != 192 || v48 | v155)
    {
      if (v158 == 192 && v155 == 1 && !v48)
      {
        v49 = 0;
        v51 = 0;
        v50 = 1;
        LOBYTE(a2) = 1;
        goto LABEL_39;
      }

      v50 = 0;
      if (v158 == 192 && v155 == 2 && !v48)
      {
        v49 = 1;
        LOBYTE(a2) = 0;
        v51 = 0;
        goto LABEL_39;
      }

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    goto LABEL_38;
  }

  v49 = 0;
  if (v158 > 0x3Fu || (v50 = 0, LOBYTE(a2) = 0, v51 = 0, *(&v155 + 1)))
  {
LABEL_38:
    LOBYTE(a2) = 0;
    v51 = v49;
    v50 = 1;
    v49 = 0;
  }

LABEL_39:
  v134 = v49;
  v145 = v155;
  v146 = v156;
  v147 = v157;
  v148 = v158;
  dispatch thunk of UICollectionViewDiffableDataSource.index(for:)();
  LODWORD(v141) = v51;
  v133 = v50;
  if (v52)
  {
    if (qword_1019F2128 == -1)
    {
LABEL_41:
      v53 = static OS_os_log.crlFolderUI;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v55 = sub_100068F28();
      v57 = v56;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v55;
      *(inited + 40) = v57;
      v58 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v58, "snapshot contains section identifier (%@) that is unknown to data source", 72, 2, inited);
      sub_1000698D0(&v155);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      v59 = 0;
      v51 = v141;
      goto LABEL_43;
    }

LABEL_94:
    swift_once();
    goto LABEL_41;
  }

  v145 = v155;
  v146 = v156;
  v147 = v157;
  v148 = v158;
  v60 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  sub_1000698D0(&v155);
  v61 = *(v60 + 16);

  v59 = v61 != 0;
LABEL_43:
  v62 = sub_100076FFC(&v149);
  sub_1000771A8(v139, v138, v137, a1, v136, v135, v10);
  v132 = v62;
  if (v51)
  {
    v63 = a2;
    if (qword_1019F1368 != -1)
    {
      swift_once();
    }

    v64 = &qword_1019F7710;
  }

  else
  {
    v63 = a2;
    if (qword_1019F1360 != -1)
    {
      swift_once();
    }

    v64 = &qword_1019F7708;
  }

  v65 = *v64;
  *&v145 = _swiftEmptyArrayStorage;
  v66 = v65;
  v67 = v143;
  v68 = [v143 isAbsolute];
  v69 = objc_opt_self();
  v70 = [v69 sizeWithWidthDimension:v67 heightDimension:v66];
  v71 = [objc_opt_self() itemWithLayoutSize:v70];

  if (v68)
  {
    v72 = objc_opt_self();
    v73 = objc_opt_self();
    v74 = [v73 fractionalWidthDimension:1.0];
    v75 = [v69 sizeWithWidthDimension:v74 heightDimension:v66];

    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_101465920;
    *(v76 + 32) = v71;
    sub_100006370(0, &qword_1019F77C8, NSCollectionLayoutItem_ptr);
    v77 = v71;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v79 = [v72 horizontalGroupWithLayoutSize:v75 subitems:isa];

    v80 = [objc_opt_self() flexibleSpacing:16.0];
    [v79 setInterItemSpacing:v80];

    v81 = [objc_opt_self() sectionWithGroup:v79];
    v82 = v141;
    if (v141)
    {
      v83 = 18.0;
    }

    else
    {
      v83 = 32.0;
    }

    v84 = v81;
    [v84 setInterGroupSpacing:v83];
    v85 = v63 | v82;
    v86 = v133;
    if ((v85 & 1) == 0 && qword_1019F1390 != -1)
    {
      swift_once();
    }

    if (qword_1019F1388 != -1)
    {
      swift_once();
    }

    [v84 setContentInsets:{*&qword_1019F7730, leading}];
    v87 = [v73 fractionalWidthDimension:1.0];
    v88 = v144;
  }

  else
  {
    [v71 setContentInsets:{0.0, 8.0, 0.0, 8.0}];
    v89 = objc_opt_self();
    v90 = objc_opt_self();
    v91 = [v90 fractionalWidthDimension:1.0];
    v92 = [v69 sizeWithWidthDimension:v91 heightDimension:v66];

    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_101465920;
    *(v93 + 32) = v71;
    sub_100006370(0, &qword_1019F77C8, NSCollectionLayoutItem_ptr);
    v94 = v71;
    v95 = Array._bridgeToObjectiveC()().super.isa;

    v79 = [v89 horizontalGroupWithLayoutSize:v92 subitems:v95];

    v96 = [objc_opt_self() sectionWithGroup:v79];
    v97 = v141;
    v98 = 18.0;
    if (v141)
    {
      v99 = 18.0;
    }

    else
    {
      v99 = 32.0;
    }

    v84 = v96;
    [v84 setInterGroupSpacing:v99];
    if (qword_1019F1388 != -1)
    {
      swift_once();
    }

    v100 = leading + -8.0;
    v101 = trailing + -8.0;
    v102 = *&qword_1019F7730;
    v103 = v131;
    if ((v97 & 1) == 0)
    {
      if (qword_1019F1390 != -1)
      {
        v129 = qword_1019F7730;
        swift_once();
        v102 = *&v129;
      }

      v98 = *&qword_1019F7738;
    }

    [v84 setContentInsets:{v102, v100, v98, v101}];
    [objc_msgSend(v103 "container")];
    v105 = v104;
    swift_unknownObjectRelease();
    v106 = 1.0;
    if (v105 != 0.0)
    {
      v106 = (v105 - (v101 + v100)) / v105;
    }

    v87 = [v90 fractionalWidthDimension:v106];
    v88 = v144;
    v86 = v133;
  }

  v107 = v59 && v132;
  v108 = v87;

  if (v86)
  {
    if (qword_1019F1370 != -1)
    {
      swift_once();
    }

    v109 = qword_1019F7718;
    v110 = objc_opt_self();
    v111 = v109;
    v112 = [v110 sizeWithWidthDimension:v108 heightDimension:v111];
    v113 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v112 elementKind:UICollectionElementKindSectionHeader alignment:1];

    v114 = v113;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    if (!v107)
    {
      goto LABEL_85;
    }

    goto LABEL_80;
  }

  if (v107)
  {
LABEL_80:
    v115 = qword_1019F1378;
    v116 = v108;
    if (v115 != -1)
    {
      swift_once();
    }

    v117 = [objc_opt_self() sizeWithWidthDimension:v116 heightDimension:qword_1019F7720];

    v118 = String._bridgeToObjectiveC()();
    v119 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v117 elementKind:v118 alignment:5];

    [v119 setPinToVisibleBounds:0];
    v120 = v119;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

LABEL_85:
  v121 = v140;
  if (v134)
  {
    v122 = qword_1019F1398;
    v123 = v108;
    if (v122 != -1)
    {
      swift_once();
    }

    v124 = [objc_opt_self() sizeWithWidthDimension:v123 heightDimension:qword_1019F7740];

    v125 = String._bridgeToObjectiveC()();
    v126 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v124 elementKind:v125 alignment:5];

    v127 = v126;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100006370(0, &qword_1019F6768, NSCollectionLayoutBoundarySupplementaryItem_ptr);
  v128 = Array._bridgeToObjectiveC()().super.isa;

  [v84 setBoundarySupplementaryItems:v128];

  (*(v121 + 8))(v88, v142);
  return v84;
}

id sub_100076898(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [a1 container];
  v4 = [v3 effectiveContentSize];
  v7 = v6;
  if (qword_1019F13B0 != -1)
  {
    v4 = swift_once();
  }

  v8 = *&qword_101AD5FB0;
  v9 = qword_101AD5FC0;
  v10 = sub_100076BAC(v4, v5);
  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = *&v9;
  }

  v13 = sub_100076BAC(v10, v11);
  if (v13)
  {
    v15 = *&v9;
  }

  else
  {
    v15 = v8;
  }

  v16 = sub_100076BAC(v13, v14);
  if (v16)
  {
    v18 = v8;
  }

  else
  {
    v18 = *&v9;
  }

  if (sub_100076BAC(v16, v17))
  {
    v19 = *&v9;
  }

  else
  {
    v19 = v8;
  }

  if (v12 + 169.0 + v15 + 16.0 + v18 + 169.0 + v19 > v7)
  {
    v20 = objc_opt_self();
    v21 = "fractionalWidthDimension:";
    goto LABEL_17;
  }

  if (([v2 crl_isCompactWidth] & 1) == 0)
  {
    v23 = [v2 crl_isCompactHeight];
    if (!v23)
    {
      v31 = sub_100076BAC(v23, v24);
      if (v31)
      {
        v33 = v8;
      }

      else
      {
        v33 = *&v9;
      }

      if (sub_100076BAC(v31, v32))
      {
        v8 = *&v9;
      }

      v20 = objc_opt_self();
      v22 = v33 + 169.0 + v8;
      v21 = "absoluteDimension:";
      goto LABEL_30;
    }
  }

  [v3 effectiveContentSize];
  v26 = v25;
  [v3 effectiveContentSize];
  if (v27 >= v26)
  {
    [v3 effectiveContentSize];
    v30 = v29;
    v20 = objc_opt_self();
    v21 = "fractionalWidthDimension:";
    if (v30 > 590.0)
    {
      v22 = 0.333333333;
      goto LABEL_30;
    }

LABEL_17:
    v22 = 0.5;
LABEL_30:
    v28 = [v20 v21];
    goto LABEL_31;
  }

  v28 = [objc_opt_self() fractionalWidthDimension:0.25];
LABEL_31:
  v34 = v28;
  swift_unknownObjectRelease();

  return v34;
}

void sub_100076AF0(uint64_t a1, uint64_t a2)
{
  qword_101AD5FA8 = sub_100076B60(8.0, a1, a2);
  qword_101AD5FB0 = v2;
  qword_101AD5FB8 = v3;
  qword_101AD5FC0 = v4;
}

BOOL sub_100076BAC(uint64_t a1, uint64_t a2)
{
  if (qword_101A351F0 != -1)
  {
    sub_100076BEC();
  }

  return (byte_101A351E8 & 1) == 0;
}

BOOL sub_100076C00()
{
  v0 = +[UIApplication sharedApplication];
  v1 = [v0 userInterfaceLayoutDirection] == 1;

  return v1;
}

void sub_100076F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >> 6)
  {
    if (a7 >> 6 != 2)
    {
      return;
    }
  }
}

BOOL sub_100076FFC(__int128 *a1)
{
  if (*(a1 + 48) > 0xFDu)
  {
    return 0;
  }

  dispatch thunk of UICollectionViewDiffableDataSource.index(for:)();
  if (v2)
  {
    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.crlFolderUI;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v5 = sub_100068F28();
    v7 = v6;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v5;
    *(inited + 40) = v7;
    v8 = static os_log_type_t.error.getter();
    sub_100005404(v3, &_mh_execute_header, v8, "snapshot contains section identifier (%@) that is unknown to data source", 72, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    return 0;
  }

  else
  {
    sub_1005B981C(&unk_101A23860, qword_10147BC00);
    v9 = *(NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)() + 16);

    return v9 != 0;
  }
}

uint64_t sub_1000771A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 0xFDu)
  {
    return sub_1000771BC(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1000771BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >> 6)
  {
    if (a7 >> 6 != 2)
    {
      return result;
    }
  }
}

void sub_10007722C()
{
  if (*(v0 + 16) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong collectionView];
      if (v3)
      {
        v4 = v3;
        v5 = type metadata accessor for CRLCollectionViewCompositionalLayout();
        v30.receiver = v2;
        v30.super_class = v5;
        objc_msgSendSuper2(&v30, "collectionViewContentSize");
        v6 = v4;
        v7 = [v6 superview];
        [v6 bounds];
        v9 = v8;

        v29.receiver = v2;
        v29.super_class = v5;
        objc_msgSendSuper2(&v29, "collectionViewContentSize");
        v11 = v10;
        v12 = [v6 numberOfSections];
        if ((v12 & 0x8000000000000000) != 0)
        {
LABEL_23:
          __break(1u);
        }

        else
        {
          v13 = v12;
          v14 = 0;
          do
          {
            v15 = v14;
            if (v13 == v14)
            {
              break;
            }

            if (__OFADD__(v14, 1))
            {
              __break(1u);
              goto LABEL_23;
            }

            v16 = [v6 numberOfItemsInSection:v14];
            v14 = v15 + 1;
          }

          while (v16 < 1);
          if (v7)
          {
            [v7 bounds];
            if (v13 == v15)
            {
              v18 = v17;
            }

            else
            {
              v18 = v11;
            }

            if (v17 < v9)
            {
              v11 = v18;
            }

            else
            {
              v11 = v17;
            }
          }

          v28.receiver = v2;
          v28.super_class = v5;
          objc_msgSendSuper2(&v28, "collectionViewContentSize");
          v20 = v19;
          [v6 _effectiveContentInset];
          v22 = v21;
          [v6 safeAreaInsets];
          v24 = v11 - (v22 + v23);
          v31.origin.x = sub_100077470();
          MinY = CGRectGetMinY(v31);
          v32.origin.x = 0.0;
          v32.origin.y = 0.0;
          v32.size.width = v20;
          v26 = v24;
          v32.size.height = v24;
          if (MinY >= CGRectGetMaxY(v32) || (v33.origin.x = sub_100077470(), MaxY = CGRectGetMaxY(v33), v34.origin.x = 0.0, v34.origin.y = 0.0, v34.size.width = v20, v34.size.height = v26, CGRectGetMaxY(v34) >= MaxY))
          {
          }

          else
          {
            v35.origin.x = sub_100077470();
            CGRectGetHeight(v35);
          }
        }
      }

      else
      {
      }
    }
  }
}

double sub_100077470()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v4.receiver = Strong;
    v4.super_class = type metadata accessor for CRLCollectionViewCompositionalLayout();
    objc_msgSendSuper2(&v4, "collectionViewContentSize");
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
  }

  return 0.0;
}

void sub_10007752C()
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3.receiver = Strong;
    v3.super_class = ObjectType;
    v2 = Strong;

    objc_msgSendSuper2(&v3, "collectionViewContentSize");
  }
}

unint64_t sub_10007775C()
{
  result = qword_1019FCA68;
  if (!qword_1019FCA68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019FCA68);
  }

  return result;
}

unint64_t sub_1000777A8(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1)
  {
    if (*(v2 + 16) == 1)
    {
      v37 = _swiftEmptyArrayStorage;
      v4 = (a1 & 0xFFFFFFFFFFFFFF8);
      if (a1 >> 62)
      {
        goto LABEL_48;
      }

      for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {

        v34 = v3;
        if (i)
        {
          break;
        }

        v3 = _swiftEmptyArrayStorage;
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

LABEL_27:
        if ((v3 & 0x4000000000000000) != 0)
        {
LABEL_49:
          v20 = _CocoaArrayWrapper.endIndex.getter();
          if (!v20)
          {
LABEL_50:

            return v34;
          }
        }

        else
        {
          v20 = *(v3 + 16);
          if (!v20)
          {
            goto LABEL_50;
          }
        }

        v21 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v21 >= *(v3 + 16))
            {
              goto LABEL_47;
            }

            v30 = *(v3 + 8 * v21 + 32);
          }

          v4 = v30;
          v31 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v22 = Strong;
            v23 = type metadata accessor for CRLCollectionViewCompositionalLayout();
            v36.receiver = v22;
            v36.super_class = v23;
            objc_msgSendSuper2(&v36, "collectionViewContentSize");
            v25 = v24;
            v27 = v26;

            if (*(v2 + 32) > v25)
            {
              v28 = *(v2 + 32);
            }

            else
            {
              v28 = v25;
            }

            if (*(v2 + 40) > v27)
            {
              v29 = *(v2 + 40);
            }

            else
            {
              v29 = v27;
            }
          }

          else
          {
            v28 = 0.0;
            v29 = 0.0;
          }

          [v4 setFrame:{0.0, v29 - *(v2 + 24), v28}];

          ++v21;
          if (v31 == v20)
          {
            goto LABEL_50;
          }
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        ;
      }

      v6 = 0;
      v35 = v3 & 0xC000000000000001;
      v7 = 0x800000010155BCA0;
      while (1)
      {
        if (v35)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= v4[2])
          {
            goto LABEL_45;
          }

          v8 = *(v3 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v11 = [v8 representedElementKind];
        if (v11)
        {
          v12 = v11;
          v13 = v7;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          v17 = v14;
          v7 = v13;
          if (v17 == 0xD00000000000001DLL && v13 == v16)
          {

LABEL_21:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v3 = v34;
            goto LABEL_8;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_21;
          }

          v3 = v34;
        }

        else
        {
        }

LABEL_8:
        ++v6;
        if (v10 == i)
        {
          v3 = v37;
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_49;
        }
      }
    }
  }

  return v3;
}

unint64_t sub_100077AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1005B981C(&unk_101A23860, qword_10147BC00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v51.i8[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v13 = Strong;
  v14 = sub_10005AFE0();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v15 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v9 + 8))(v11, v8);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v15 + 16))
  {
    v17 = (v15 + 56 * result);
    v18 = v17[2];
    v19 = v17[3];
    v20 = v17[4];
    v56 = v17[5].i8[0];
    v55[1] = v19;
    v55[2] = v20;
    v55[0] = v18;
    v21 = v17[2];
    v53 = v17[3];
    v51 = v21;
    v22 = v17[4].i64[0];
    v23 = v17[4].i64[1];
    v52 = v17[5].u8[0];
    sub_1000693DC(v55, v54);

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v24 == a3)
    {

      goto LABEL_8;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
LABEL_8:
      v26 = String._bridgeToObjectiveC()();
      v54[0] = _s13SectionHeaderCMa();
      sub_1005B981C(&qword_101A23CA8, &qword_1014B98C8);
      String.init<A>(describing:)();
      v27 = String._bridgeToObjectiveC()();

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v29 = [a1 dequeueReusableSupplementaryViewOfKind:v26 withReuseIdentifier:v27 forIndexPath:isa];

      v30 = swift_dynamicCastClass();
      v31 = v30;
      if (v30)
      {
        *(v30 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_delegate + 8) = &off_1018A9068;
        swift_unknownObjectWeakAssign();
        v32 = &v31[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier];
        v33 = *&v31[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier];
        v34 = *&v31[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier + 8];
        v35 = *&v31[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier + 16];
        v36 = *&v31[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier + 24];
        v37 = *&v31[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier + 32];
        v38 = *&v31[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier + 40];
        v39 = v53;
        *v32 = v51;
        v32[1] = v39;
        v32[2].i64[0] = v22;
        v32[2].i64[1] = v23;
        v40 = v32[3].u8[0];
        v32[3].i8[0] = v52;
        sub_1000693DC(v55, v54);
        sub_1000771A8(v33, v34, v35, v36, v37, v38, v40);
        sub_1005EB544();
        v41 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections;
        swift_beginAccess();
        v42 = *&v13[v41];

        LOBYTE(v34) = sub_100069438(v55, v42);

        sub_1000698D0(v55);
        v43 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_shouldAnimateNextCollapseStateToggle;
        v31[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_shouldAnimateNextCollapseStateToggle] = 0;
        v31[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_isCollapsed] = v34 & 1;
        sub_1005EB6D8();

        v31[v43] = 0;
      }

      else
      {

        sub_1000698D0(v55);
      }

      return v31;
    }

    sub_1000698D0(v55);
    if (a2 == 0xD00000000000001BLL && 0x800000010155BCC0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v44 = String._bridgeToObjectiveC()();
      v54[0] = _s13GridSeparatorCMa();
      sub_1005B981C(&qword_101A23CB0, &qword_1014B98D0);
      String.init<A>(describing:)();
      v45 = String._bridgeToObjectiveC()();

      v46 = IndexPath._bridgeToObjectiveC()().super.isa;
      v31 = [a1 dequeueReusableSupplementaryViewOfKind:v44 withReuseIdentifier:v45 forIndexPath:v46];

      return v31;
    }

    if (a2 == 0xD00000000000001DLL && 0x800000010155BCA0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v47 = String._bridgeToObjectiveC()();
      v54[0] = _s18iCloudStatusFooterCMa();
      sub_1005B981C(&qword_101A23CB8, &qword_1014B98D8);
      String.init<A>(describing:)();
      v48 = String._bridgeToObjectiveC()();

      v49 = IndexPath._bridgeToObjectiveC()().super.isa;
      v50 = [a1 dequeueReusableSupplementaryViewOfKind:v47 withReuseIdentifier:v48 forIndexPath:v49];

      v31 = swift_dynamicCastClass();
      if (!v31)
      {
      }

      return v31;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_100078050(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_iCloudStatusLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_syncDidEndObserver] = 0;
  *&v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_syncDidBeginObserver] = 0;
  v57.receiver = v4;
  v57.super_class = _s18iCloudStatusFooterCMa();
  v10 = objc_msgSendSuper2(&v57, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_iCloudStatusLabel;
  v12 = *&v10[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_iCloudStatusLabel];
  v13 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v10[v11] setNumberOfLines:1];
  [*&v10[v11] setTextAlignment:1];
  v14 = *&v10[v11];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  [v16 setText:v20];

  v21 = *&v10[v11];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 preferredFontForTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:0];
  [v23 setFont:v24];

  [*&v10[v11] setAdjustsFontForContentSizeCategory:1];
  v25 = *&v10[v11];
  v26 = v13;
  [v26 addSubview:v25];
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10146CE00;
  v29 = [v26 centerXAnchor];
  v30 = [*&v10[v11] centerXAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v28 + 32) = v31;
  v32 = [v26 bottomAnchor];

  v33 = [*&v10[v11] lastBaselineAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:24.0];

  *(v28 + 40) = v34;
  sub_100078784();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];

  v36 = objc_opt_self();
  v37 = [v36 defaultCenter];
  if (qword_1019F2568 != -1)
  {
    swift_once();
  }

  v38 = qword_101AD86A0;
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = sub_1005ED080;
  v56 = v39;
  v51 = _NSConcreteStackBlock;
  v52 = *"";
  v53 = sub_100059694;
  v54 = &unk_10187C5A0;
  v40 = _Block_copy(&v51);
  v41 = v26;

  v42 = [v37 addObserverForName:v38 object:0 queue:0 usingBlock:v40];
  _Block_release(v40);

  *&v41[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_syncDidBeginObserver] = v42;
  swift_unknownObjectRelease();
  v43 = [v36 defaultCenter];
  if (qword_1019F2560 != -1)
  {
    swift_once();
  }

  v44 = qword_101AD8698;
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v55 = sub_1005ED0B8;
  v56 = v45;
  v51 = _NSConcreteStackBlock;
  v52 = *"";
  v53 = sub_100059694;
  v54 = &unk_10187C5C8;
  v46 = _Block_copy(&v51);

  v47 = [v43 addObserverForName:v44 object:0 queue:0 usingBlock:v46];
  _Block_release(v46);

  *&v41[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_syncDidEndObserver] = v47;
  swift_unknownObjectRelease();
  v48 = [objc_opt_self() sharedApplication];
  v49 = [v48 delegate];

  if (v49)
  {
    type metadata accessor for CRLiOSAppDelegate();
    swift_dynamicCastClassUnconditional();
    v50 = sub_10006D030();
    swift_unknownObjectRelease();
    [*&v10[v11] setHidden:(v50 & 1) == 0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100078728()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100078784()
{
  result = qword_1019F4D70;
  if (!qword_1019F4D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F4D70);
  }

  return result;
}

double sub_1000787D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = *(v5 + 80);
    v7 = *(*(v5 + 72) + 16);
    os_unfair_lock_lock(v7);
    os_unfair_lock_unlock(v7);
    swift_endAccess();
    swift_beginAccess();
    v8 = *(*(v5 + 72) + 16);

    os_unfair_lock_lock(v8);
    *(v5 + 80) = a2;
    os_unfair_lock_unlock(v8);
    swift_endAccess();

    sub_1000788C4(v6);
  }

  return result;
}

void sub_1000788C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v20 = *(v8 - 8);
  v21 = v8;
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v2 + 80);
  v12 = *(*(v2 + 72) + 16);

  os_unfair_lock_lock(v12);
  os_unfair_lock_unlock(v12);

  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v11;
  v15 = static os_log_type_t.default.getter();
  sub_100005404(v13, &_mh_execute_header, v15, "Cached device to device encryption availability: %d", 51, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  if (v11 != a1)
  {
    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v19 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = v11;
    aBlock[4] = sub_100C5DFD0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10189C970;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100006448(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_1000067A8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v19;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    (*(v20 + 8))(v10, v21);
    sub_100684000(v11);
  }
}

uint64_t sub_100078CB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100078D10(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() defaultCenter];
  if (qword_1019F1F48 != -1)
  {
    swift_once();
  }

  v5 = qword_101AD7950;
  sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for CRLiCloudConnectionStatus;
  *(inited + 72) = a2;
  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0, &unk_101471280);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 postNotificationName:v5 object:a1 userInfo:isa];
}

unint64_t sub_100078EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F030, &qword_101492670);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, v13, &unk_1019FB8B0, &unk_101471280);
      result = sub_1000640CC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000BF3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void sub_1000791C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1005B981C(&qword_101A12AA8, &unk_10149FAD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x800000010155F8C0;
  v11 = sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
  *(inited + 48) = a1;
  *(inited + 72) = v11;
  *(inited + 80) = 0xD000000000000022;
  *(inited + 88) = 0x80000001015971B0;
  *(inited + 96) = a2;
  *(inited + 120) = v11;
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x80000001015A4B60;
  *(inited + 144) = a3;
  *(inited + 168) = v11;
  *(inited + 176) = 0x446C61636F4C7369;
  *(inited + 184) = 0xEF6E6F6974656C65;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = a4;

  v12 = sub_10000BCE4(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_101A2F5D0, &qword_10149E8C0);
  swift_arrayDestroy();
  v13 = [objc_opt_self() defaultCenter];
  if (qword_1019F2520 != -1)
  {
    swift_once();
  }

  v14 = qword_101AD8568;
  sub_10007941C(v12);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v13 postNotificationName:v14 object:a5 userInfo:isa];
}

uint64_t sub_10007941C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1005B981C(&qword_101A0F030, &qword_101492670);
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100064288(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000BF3C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000BF3C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000BF3C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000BF3C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1000796E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v2 = Notification.userInfo.getter();
  if (!v2)
  {

    v11 = 0u;
    v12 = 0u;
    goto LABEL_13;
  }

  v3 = v2;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_1000640CC(v10), (v5 & 1) == 0))
  {

    sub_100064234(v10);
    v11 = 0u;
    v12 = 0u;
    goto LABEL_11;
  }

  sub_100064288(*(v3 + 56) + 32 * v4, &v11);
  sub_100064234(v10);

  if (!*(&v12 + 1))
  {
LABEL_11:

LABEL_13:
    sub_10000CAAC(&v11, &unk_1019F4D00, &unk_10146E7F0);
    return;
  }

  sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    return;
  }

  v6 = v10[0];
  v7 = sub_10004B56C(_swiftEmptySetSingleton, 0);
  v8 = sub_10004B56C(v6, 1);

  v10[0] = v7;
  sub_10004B92C(v8);
  v9 = sub_10004B958(v10[0]);

  if (*(v9 + 16))
  {
    v10[0] = v9;
    PassthroughSubject.send(_:)();

    goto LABEL_9;
  }
}

void *sub_100079914(void *a1, int64_t a2, char a3)
{
  result = sub_1000798EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10007995C(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  __chkstk_darwin(v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B150(v1, v7, type metadata accessor for CRLSpotlightManager.ChangeType);
  v8 = swift_getEnumCaseMultiPayload() == 1;
  sub_100025598(v7, v4, type metadata accessor for CRLBoardIdentifier);
  Hasher._combine(_:)(v8);
  type metadata accessor for UUID();
  sub_100042818(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  return sub_100025FC8(v4, type metadata accessor for CRLBoardIdentifier);
}

uint64_t sub_100079B0C(uint64_t a1, unint64_t a2, char a3)
{
  v58 = a1;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v6 - 8);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = sub_1005B981C(&qword_101A00148, &qword_1014A8A90);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v52 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v50 - v18;
  __chkstk_darwin(v20);
  v22 = &v50 - v21;
  v23 = *(*v3 + 16);
  v24 = *(*v3 + 24);
  v50 = v3;
  if (v24 <= v23 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100E79E48(v23 + 1);
    }

    else
    {
      if (v24 > v23)
      {
        sub_100E86128();
        goto LABEL_33;
      }

      sub_100E8CBD8(v23 + 1);
    }

    v25 = *v3;
    Hasher.init(_seed:)();
    sub_10007995C(v59);
    v26 = Hasher._finalize()();
    v27 = -1 << *(v25 + 32);
    a2 = v26 & ~v27;
    v57 = v25 + 56;
    if ((*(v25 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v51 = v10;
      v56 = ~v27;
      v28 = *(v52 + 72);
      v54 = v11;
      v55 = v28;
      do
      {
        sub_10000C83C(*(v25 + 48) + v55 * a2, v22, type metadata accessor for CRLSpotlightManager.ChangeType);
        v29 = *(v11 + 48);
        sub_10000C83C(v22, v13, type metadata accessor for CRLSpotlightManager.ChangeType);
        sub_10000C83C(v58, &v13[v29], type metadata accessor for CRLSpotlightManager.ChangeType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_10000C83C(v13, v16, type metadata accessor for CRLSpotlightManager.ChangeType);
          v30 = v16;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v11 = v53;
            sub_100025668(&v13[v29], v53, type metadata accessor for CRLBoardIdentifier);
            if ((static UUID.== infix(_:_:)() & 1) == 0)
            {
              sub_100026028(v22, type metadata accessor for CRLSpotlightManager.ChangeType);
              sub_100026028(v11, type metadata accessor for CRLBoardIdentifier);
              v44 = v16;
              goto LABEL_31;
            }

            v31 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
            v32 = *&v16[v31];
            v33 = *&v16[v31 + 8];
            v34 = (v11 + v31);
            if (v32 == *v34 && v33 == v34[1])
            {
              goto LABEL_36;
            }

            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_100026028(v22, type metadata accessor for CRLSpotlightManager.ChangeType);
            sub_100026028(v11, type metadata accessor for CRLBoardIdentifier);
            sub_100026028(v16, type metadata accessor for CRLBoardIdentifier);
            if (v36)
            {
              goto LABEL_38;
            }

LABEL_32:
            sub_100026028(v13, type metadata accessor for CRLSpotlightManager.ChangeType);
            v11 = v54;
            goto LABEL_11;
          }
        }

        else
        {
          sub_10000C83C(v13, v19, type metadata accessor for CRLSpotlightManager.ChangeType);
          v30 = v19;
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v37 = v51;
            sub_100025668(&v13[v29], v51, type metadata accessor for CRLBoardIdentifier);
            if (static UUID.== infix(_:_:)())
            {
              v38 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
              v39 = *&v19[v38];
              v40 = *&v19[v38 + 8];
              v41 = (v37 + v38);
              if (v39 == *v41 && v40 == v41[1])
              {
                goto LABEL_37;
              }

              v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_100026028(v22, type metadata accessor for CRLSpotlightManager.ChangeType);
              sub_100026028(v37, type metadata accessor for CRLBoardIdentifier);
              sub_100026028(v19, type metadata accessor for CRLBoardIdentifier);
              if (v43)
              {
                goto LABEL_38;
              }

              goto LABEL_32;
            }

            sub_100026028(v22, type metadata accessor for CRLSpotlightManager.ChangeType);
            sub_100026028(v37, type metadata accessor for CRLBoardIdentifier);
            v44 = v19;
LABEL_31:
            sub_100026028(v44, type metadata accessor for CRLBoardIdentifier);
            goto LABEL_32;
          }
        }

        sub_100026028(v22, type metadata accessor for CRLSpotlightManager.ChangeType);
        sub_100026028(v30, type metadata accessor for CRLBoardIdentifier);
        sub_10000CAAC(v13, &qword_101A00148, &qword_1014A8A90);
LABEL_11:
        a2 = (a2 + 1) & v56;
      }

      while (((*(v57 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_33:
  v45 = *v50;
  *(*v50 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(v58, *(v45 + 48) + *(v52 + 72) * a2, type metadata accessor for CRLSpotlightManager.ChangeType);
  v47 = *(v45 + 16);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
    __break(1u);
LABEL_36:
    v51 = v11;
    v19 = v16;
LABEL_37:
    sub_100026028(v22, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_100026028(v51, type metadata accessor for CRLBoardIdentifier);
    sub_100026028(v19, type metadata accessor for CRLBoardIdentifier);
LABEL_38:
    sub_100026028(v13, type metadata accessor for CRLSpotlightManager.ChangeType);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v45 + 16) = v49;
  }

  return result;
}

uint64_t sub_10007A1BC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_10002640C(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10007A214()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10007A274()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_boardLibrary];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  if (*(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating) == 1)
  {
    sub_1006E6C8C(v0);
  }

  else
  {
    v3 = objc_opt_self();
    v4 = v0;
    v5 = [v3 defaultCenter];
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    if (qword_1019F2748 != -1)
    {
      swift_once();
    }

    v7 = qword_101AD8948;
    v8 = [objc_opt_self() mainQueue];
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v5;
    v9[4] = sub_1006EED44;
    v9[5] = v2;
    v13[4] = sub_1006EF73C;
    v13[5] = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = *"";
    v13[2] = sub_100059694;
    v13[3] = &unk_1018824E8;
    v10 = _Block_copy(v13);

    v11 = v5;

    v12 = [v11 addObserverForName:v7 object:v1 queue:v8 usingBlock:v10];

    _Block_release(v10);

    swift_beginAccess();
    *(v6 + 16) = v12;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10007A504()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A53C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A584()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10007EE50;

  return sub_10007A630();
}

uint64_t sub_10007A630()
{
  v1[16] = v0;
  type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v3;
  v1[19] = v2;

  return _swift_task_switch(sub_10007A6C8, v3, v2);
}

uint64_t sub_10007A6C8()
{
  v1 = v0[16];
  if (*(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating) & 1) != 0 || (*(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didCallStartUpdating))
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didCallStartUpdating) = 1;
    v4 = [objc_opt_self() standardUserDefaults];
    v0[14] = v4;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v6 = *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_userDataDeletionRequestObserver);
    *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_userDataDeletionRequestObserver) = v5;

    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_10007CD44;

    return sub_10007A9C4();
  }
}

uint64_t sub_10007A88C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10007A8C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 CRLSyncDataWasRemovedUserDefault];
  *a2 = result;
  return result;
}

uint64_t sub_10007A9C4()
{
  v1[12] = v0;
  v1[13] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[16] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[17] = v3;
  v1[18] = v2;

  return _swift_task_switch(sub_10007AAC0, v3, v2);
}

uint64_t sub_10007AB58()
{
  v1 = v0[19];
  v2 = swift_task_alloc();
  v0[20] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[21] = v3;
  v4 = sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
  *v3 = v0;
  v3[1] = sub_10007C3BC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 11, 0, 0, 0xD000000000000022, 0x80000001015C3080, sub_10007AD8C, v2, v4);
}

uint64_t sub_10007AE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  a3();
  sub_1005B981C(a4, a5);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10007AF24()
{
  v97 = type metadata accessor for UUID();
  v88 = *(v97 - 8);
  __chkstk_darwin(v97);
  v3 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v96);
  v95 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v94 = &v85 - v6;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v93 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v92 = &v85 - v10;
  __chkstk_darwin(v11);
  v91 = &v85 - v12;
  __chkstk_darwin(v13);
  v90 = &v85 - v14;
  __chkstk_darwin(v15);
  v89 = &v85 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = (&v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v21 = v22;
  v24 = v18 + 104;
  v23 = *(v18 + 104);
  v100 = enum case for DispatchPredicate.onQueue(_:);
  v101 = v23;
  v23(v21, v19);
  v25 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v28 = *(v18 + 8);
  v26 = v18 + 8;
  v27 = v28;
  v28(v21, v17);
  if ((v22 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v105 = v27;
  v99 = v3;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v30 = sub_10001CC04(v29, 0xD000000000000058, 0x80000001015A5500);
  v104 = v1;
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v31 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v33 = v104;
      swift_getErrorValue();
      v34 = Error.localizedDescription.getter();
      v36 = v35;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v34;
      *(inited + 40) = v36;
      v37 = static os_log_type_t.error.getter();
      sub_100005404(v31, &_mh_execute_header, v37, "Failed to fetch list of discardable boards with error %@", 56, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      v104 = v33;
      return v31;
    }

LABEL_32:
    swift_once();
    goto LABEL_4;
  }

  v38 = v30;

  v106 = _swiftEmptySetSingleton;
  v39 = *(*(v38 + 16) + 32);
  *v21 = v39;
  v40 = v100;
  v41 = v101;
  v101(v21, v100, v17);
  v42 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  v43 = v105;
  v105(v21, v17);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for SQLiteRowIterator();
  v44 = swift_initStackObject();
  v44[3] = 0;
  v102 = v44 + 3;
  v44[4] = 0;
  v86 = v44 + 4;
  v44[5] = 1;
  v103 = v44;
  v44[2] = v38;

  swift_beginAccess();
  v45 = *(*(v38 + 16) + 32);
  *v21 = v45;
  v41(v21, v40, v17);
  v46 = v45;
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  v43(v21, v17);
  if ((v45 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v88 += 4;
  v98 = v26;
  v87 = v24;
  while (1)
  {
    v61 = v102;
    *v102 = 0;
    v61[1] = 0;
    v103[5] = 1;
    v62 = sqlite3_step(*(v38 + 24));
    if (v62 != 100)
    {
      break;
    }

    v63 = *(*(v38 + 16) + 32);
    *v21 = v63;
    v41(v21, v40, v17);

    v64 = v63;
    LOBYTE(v63) = _dispatchPreconditionTest(_:)();
    v65 = v105;
    v105(v21, v17);
    if ((v63 & 1) == 0)
    {
      goto LABEL_29;
    }

    v66 = *(*(v38 + 16) + 32);
    *v21 = v66;
    v41(v21, v40, v17);
    v67 = v66;
    LOBYTE(v66) = _dispatchPreconditionTest(_:)();
    v65(v21, v17);
    if ((v66 & 1) == 0)
    {
      goto LABEL_30;
    }

    if (sqlite3_column_type(*(v38 + 24), 0) == 5)
    {
      goto LABEL_17;
    }

    v68 = sqlite3_column_blob(*(v38 + 24), 0);
    if (!v68)
    {
      goto LABEL_17;
    }

    v69 = v68;
    v70 = sqlite3_column_bytes(*(v38 + 24), 0);
    v71 = sub_100024DD4(v69, v70);
    v73 = v72;
    sub_100024E98(v71, v72);
    v74 = v99;
    v75 = v104;
    sub_100024EEC(v99, v71, v73);
    if (v75)
    {

      sub_10002640C(v71, v73);
      sub_10002640C(v71, v73);
      v104 = 0;
      v40 = v100;
      v41 = v101;
LABEL_17:
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v78 = static OS_os_log.boardStore;
      v79 = static os_log_type_t.error.getter();
      sub_100005404(v78, &_mh_execute_header, v79, "Failure reading board identifier data.", 38, 2, _swiftEmptyArrayStorage);

      goto LABEL_9;
    }

    v47 = v76;
    v48 = v77;
    v104 = 0;
    sub_10002640C(v71, v73);
    v49 = v95;
    (*v88)(v95, v74, v97);
    v50 = &v49[*(v96 + 20)];
    *v50 = v47;
    *(v50 + 1) = v48;
    v51 = v49;
    v52 = v94;
    sub_100025668(v51, v94, type metadata accessor for CRLBoardIdentifierStorage);
    v53 = v91;
    sub_100025668(v52, v91, type metadata accessor for CRLBoardIdentifierStorage);
    v54 = v53;
    v55 = v90;
    sub_100025668(v54, v90, type metadata accessor for CRLBoardIdentifier);
    v56 = v89;
    sub_100025668(v55, v89, type metadata accessor for CRLBoardIdentifier);
    v57 = v93;
    sub_10000C83C(v56, v93, type metadata accessor for CRLBoardIdentifier);
    v58 = v92;
    sub_100031F10(v92, v57);

    sub_10002640C(v71, v73);
    sub_100026028(v58, type metadata accessor for CRLBoardIdentifier);
    sub_100026028(v56, type metadata accessor for CRLBoardIdentifier);
    v40 = v100;
    v41 = v101;
LABEL_9:
    v59 = *(*(v38 + 16) + 32);
    *v21 = v59;
    v41(v21, v40, v17);
    v60 = v59;
    LOBYTE(v59) = _dispatchPreconditionTest(_:)();
    v105(v21, v17);
    if ((v59 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v62 && v62 != 101)
  {
    *v102 = v62;
    v80 = v86;
    *v86 = 0;
    v80[1] = 0;
  }

  v31 = v106;
  v81 = *(*(v38 + 16) + 32);
  *v21 = v81;
  v101(v21, v40, v17);
  v82 = v81;
  LOBYTE(v81) = _dispatchPreconditionTest(_:)();
  v105(v21, v17);
  if ((v81 & 1) == 0)
  {
LABEL_34:
    __break(1u);
  }

  v83 = *(v38 + 24);
  if (v83)
  {
    sqlite3_finalize(v83);
    *(v38 + 24) = 0;
  }

  return v31;
}

void sub_10007B9F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10007BC04(&v5);
    if (!v5)
    {
LABEL_5:

      return;
    }

    v8 = v5;
    v9 = v6;
    v10 = v7;
    if (sub_10007C308())
    {
      v12 = v8;
      sub_10000CAAC(&v12, &unk_1019FB880, &unk_101474EC0);
      v13 = v9;
      sub_10000CAAC(&v13, &unk_101A22E80, &unk_1014A08B0);
      v14 = *(&v9 + 1);
      sub_10000CAAC(&v14, &unk_101A22E80, &unk_1014A08B0);
      v15 = v10;
      sub_10000CAAC(&v15, &qword_1019FB890, &qword_101474ED0);
      *&v4 = *(&v10 + 1);
      sub_10000CAAC(&v4, &qword_1019FB890, &qword_101474ED0);
      goto LABEL_5;
    }

    PassthroughSubject.send(_:)();

    v11 = v8;
    sub_10000CAAC(&v11, &unk_1019FB880, &unk_101474EC0);
    v12 = v9;
    sub_10000CAAC(&v12, &unk_101A22E80, &unk_1014A08B0);
    v13 = *(&v9 + 1);
    sub_10000CAAC(&v13, &unk_101A22E80, &unk_1014A08B0);
    v14 = v10;
    sub_10000CAAC(&v14, &qword_1019FB890, &qword_101474ED0);
    v15 = *(&v10 + 1);
    sub_10000CAAC(&v15, &qword_1019FB890, &qword_101474ED0);
  }
}

uint64_t sub_10007BC04@<X0>(void *a1@<X8>)
{
  v2 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v28[-v3 - 8];
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v11 = &v28[-v10 - 8];
  __chkstk_darwin(v12);
  v14 = &v28[-v13 - 8];
  result = Notification.userInfo.getter();
  if (result)
  {
    v16 = sub_10007C02C(result);

    if (v16)
    {
      v29 = _swiftEmptySetSingleton;
      if (*(v16 + 16))
      {
        v17 = sub_10000BE7C(0xD000000000000010, 0x800000010155F8A0);
        if (v18)
        {
          sub_100064288(*(v16 + 56) + 32 * v17, v28);
          sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
          if (swift_dynamicCast())
          {
            sub_100636CB4(v27);
          }
        }
      }

      if (*(v16 + 16) && (v19 = sub_10000BE7C(0x6564496472616F62, 0xEF7265696669746ELL), (v20 & 1) != 0))
      {
        sub_100064288(*(v16 + 56) + 32 * v19, v28);
        v21 = swift_dynamicCast();
        (*(v6 + 56))(v4, v21 ^ 1u, 1, v5);
        if ((*(v6 + 48))(v4, 1, v5) != 1)
        {
          sub_1006EEE5C(v4, v14, type metadata accessor for CRLBoardIdentifier);
          sub_1006EEEC4(v14, v8, type metadata accessor for CRLBoardIdentifier);
          sub_100031F10(v11, v8);
          sub_100025BA8(v11, type metadata accessor for CRLBoardIdentifier);
          sub_100025BA8(v14, type metadata accessor for CRLBoardIdentifier);
          if (!*(v16 + 16))
          {
            goto LABEL_18;
          }

LABEL_15:
          v25 = sub_10000BE7C(0xD000000000000017, 0x800000010155F8C0);
          if (v26)
          {
            sub_100064288(*(v16 + 56) + 32 * v25, v28);

            sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
            result = swift_dynamicCast();
            if (result)
            {
              v24 = v27;
LABEL_20:
              v23 = v29;
              v22 = _swiftEmptySetSingleton;
              goto LABEL_21;
            }

LABEL_19:
            v24 = _swiftEmptySetSingleton;
            goto LABEL_20;
          }

LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        (*(v6 + 56))(v4, 1, 1, v5);
      }

      sub_10000CAAC(v4, &unk_1019F52D0, &unk_10147C1C0);
      if (!*(v16 + 16))
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
LABEL_21:
  *a1 = v22;
  a1[1] = v23;
  a1[2] = v24;
  a1[3] = v22;
  a1[4] = v22;
  return result;
}

unint64_t sub_10007C02C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1005B981C(&qword_101A0BA60, &unk_10148CE80);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100064110(*(a1 + 48) + 40 * v12, v27);
        sub_100064288(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100064110(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100064288(v25 + 8, v20);
        sub_10000CAAC(v24, &unk_101A15AE8, &unk_1014A0D70);
        v21 = v18;
        sub_10000BF3C(v20, v22);
        v13 = v21;
        sub_10000BF3C(v22, v23);
        sub_10000BF3C(v23, &v21);
        result = sub_10000BE7C(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100005070(v10);
          result = sub_10000BF3C(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_10000BF3C(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_10000CAAC(v24, &unk_101A15AE8, &unk_1014A0D70);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}