uint64_t sub_1001DACDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_100773358, &qword_100634F20);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___actualInsertionLocation;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_100773358, &qword_100634F20);
  v10 = sub_100058000(&qword_10076C6F8, &qword_10063E530);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100016588(v8, a1, &qword_10076C6F8, &qword_10063E530);
  }

  sub_1000079B4(v8, &qword_100773358, &qword_100634F20);
  sub_1001DAF30(v1, a1);
  sub_10000794C(a1, v5, &qword_10076C6F8, &qword_10063E530);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10000D184(v5, v1 + v9, &qword_100773358, &qword_100634F20);
  return swift_endAccess();
}

uint64_t sub_1001DAEEC()
{
  v1 = OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___isAfterPlaceholderReminder;
  v2 = *(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___isAfterPlaceholderReminder);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1001DB4CC(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1001DAF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = type metadata accessor for TTRRemindersListViewModel.Item();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = sub_100058000(&qword_10076FA28, &unk_1006327A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_100058000(&qword_100773318, &unk_100634EF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_100058000(&qword_100773320, &unk_100638D00);
  v42 = *(v16 - 8);
  __chkstk_darwin(v16);
  v39 = &v37 - v17;
  v18 = *(a1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);
  if (sub_1001D6FFC())
  {
    v20 = v19;
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(v18, ObjectType, v20);
    swift_unknownObjectRelease();
    sub_10000794C(a1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_parent, v8, &qword_100772140, &qword_10062D9F0);
    sub_1001DDF28(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v22 = v43;
    TTRDerivedTreeLocation.init(parent:index:)();
    TTRRemindersListTreeViewModel.actualInsertionLocation(at:)();
    (*(v10 + 8))(v12, v9);
    v23 = v42;
    if ((*(v42 + 48))(v15, 1, v16) == 1)
    {

      v24 = &qword_100773318;
      v25 = &unk_100634EF0;
      v26 = v15;
    }

    else
    {
      v27 = v39;
      (*(v23 + 32))(v39, v15, v16);
      v28 = v40;
      TTRBaseTreeLocation.parent.getter();
      v29 = v41;
      if ((*(v41 + 48))(v28, 1, v22) != 1)
      {
        v32 = v38;
        (*(v29 + 32))(v38, v28, v22);
        v33 = sub_100058000(&qword_10076C708, &unk_1006305C0);
        v34 = v23;
        v40 = *(v33 + 48);
        v35 = v44;
        (*(v29 + 16))(v44, v32, v22);
        v36 = TTRBaseTreeLocation.index.getter();

        (*(v29 + 8))(v32, v22);
        (*(v34 + 8))(v27, v16);
        *&v40[v35] = v36;
        return (*(*(v33 - 8) + 56))(v35, 0, 1, v33);
      }

      (*(v23 + 8))(v27, v16);

      v24 = &qword_100772140;
      v25 = &qword_10062D9F0;
      v26 = v28;
    }

    sub_1000079B4(v26, v24, v25);
  }

  v30 = sub_100058000(&qword_10076C708, &unk_1006305C0);
  return (*(*(v30 - 8) + 56))(v44, 1, 1, v30);
}

BOOL sub_1001DB4CC(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  if (*(a1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_childIndex) < 1)
  {
    return 0;
  }

  v12 = *(a1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);
  if (!sub_1001D6FFC())
  {
    return 0;
  }

  v14 = v13;
  ObjectType = swift_getObjectType();
  (*(v14 + 8))(v12, ObjectType, v14);
  swift_unknownObjectRelease();
  v16 = TTRRemindersListTreeViewModel.presentationTree.getter();

  swift_getObjectType();
  v20[1] = v16;
  dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
  swift_unknownObjectRelease();
  v17 = *(v3 + 32);
  v17(v11, v8, v2);
  v17(v5, v11, v2);
  v18 = (*(v3 + 88))(v5, v2) == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:);
  (*(v3 + 8))(v5, v2);
  return v18;
}

uint64_t sub_1001DB708()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_parent, &qword_100772140, &qword_10062D9F0);

  sub_1000301AC(*(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_additionalSubjectFilter), *(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_additionalSubjectFilter + 8));
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___creationTarget, &qword_100773370, &qword_100634F38);
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___actualInsertionLocation, &qword_100773358, &qword_100634F20);

  return swift_deallocClassInstance();
}

uint64_t sub_1001DB828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = (*v2 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_additionalSubjectFilter);
  v6 = *v5;
  v7 = v5[1];
  v8 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.RemindersInsertionPlan(0);
  swift_allocObject();

  sub_10003BE34(v6, v7);

  v10 = sub_1001DDF70(v9, a1, v6, v7);
  sub_1000301AC(v6, v7);

  a2[3] = v8;
  a2[4] = &off_10071A498;
  *a2 = v10;
  return result;
}

uint64_t sub_1001DB8F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_100773380, &qword_100634F58);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan____lazy_storage___position;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_100773380, &qword_100634F58);
  v10 = sub_100058000(&qword_10076C700, &qword_100634E00);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100016588(v8, a1, &qword_10076C700, &qword_100634E00);
  }

  sub_1000079B4(v8, &qword_100773380, &qword_100634F58);
  sub_1001DBB00(v1, a1);
  sub_10000794C(a1, v5, &qword_10076C700, &qword_100634E00);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10000D184(v5, v1 + v9, &qword_100773380, &qword_100634F58);
  return swift_endAccess();
}

uint64_t sub_1001DBB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v43 = &v40 - v4;
  v47 = sub_100058000(&qword_100773320, &unk_100638D00);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v40 - v5;
  v6 = sub_100058000(&qword_100773388, &qword_100634F60);
  __chkstk_darwin(v6 - 8);
  v46 = &v40 - v7;
  v8 = sub_100058000(&qword_100773390, &qword_100634F68);
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v42 = &v40 - v9;
  v10 = sub_100058000(&qword_10076C6F8, &qword_10063E530);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_100058000(&unk_100781910, &unk_1006305A0);
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v20 = *(*(a1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest) + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);

  if (sub_1001D6FFC())
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(v20, ObjectType, v22);

    swift_unknownObjectRelease();
    sub_1001DACDC(v12);
    v24 = sub_100058000(&qword_10076C708, &unk_1006305C0);
    if ((*(*(v24 - 8) + 48))(v12, 1, v24) == 1)
    {

      v25 = &qword_10076C6F8;
      v26 = &qword_10063E530;
      v27 = v12;
    }

    else
    {
      v28 = *&v12[*(v24 + 48)];
      v29 = *(v13 + 48);
      v41 = v17;
      v30 = *(v17 + 32);
      v30(v15, v12, v16);
      *&v15[v29] = v28;
      v30(v19, v15, v16);
      v31 = v41;
      v32 = v43;
      (*(v41 + 16))(v43, v19, v16);
      (*(v31 + 56))(v32, 0, 1, v16);
      sub_1001DDF28(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v33 = v44;
      TTRBaseTreeLocation.init(parent:index:)();

      v34 = v46;
      TTRRemindersListTreeViewModel.relativeInsertionPosition(forInsertingAt:skipping:)();

      (*(v45 + 8))(v33, v47);
      v36 = v48;
      v35 = v49;
      if ((*(v48 + 48))(v34, 1, v49) != 1)
      {
        v39 = v42;
        (*(v36 + 32))(v42, v34, v35);
        sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
        TTRRelativeInsertionPosition.optionalMapSibling<A>(_:)();

        (*(v36 + 8))(v39, v35);
        return (*(v31 + 8))(v19, v16);
      }

      (*(v31 + 8))(v19, v16);

      v25 = &qword_100773388;
      v26 = &qword_100634F60;
      v27 = v34;
    }

    sub_1000079B4(v27, v25, v26);
  }

  else
  {
  }

  v37 = sub_100058000(&unk_100775620, &unk_1006305B0);
  return (*(*(v37 - 8) + 56))(v51, 1, 1, v37);
}

void sub_1001DC1A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(*(a2 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest) + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);

  if (sub_1001D6FFC())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24))(v5, a1, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
}

uint64_t sub_1001DC250(uint64_t a1)
{
  v62 = sub_100058000(&qword_100773328, &unk_100642620);
  v58 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v54 - v3;
  v4 = sub_100058000(&qword_10076C6F8, &qword_10063E530);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - v5;
  v59 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v59 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v59);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v54 - v10;
  __chkstk_darwin(v12);
  v56 = &v54 - v13;
  v14 = swift_allocObject();
  v63 = a1;
  *(v14 + 16) = a1;
  sub_100058000(&qword_100773330, &unk_100634F00);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D400;
  *(v15 + 32) = sub_1001DE068;
  *(v15 + 40) = v14;
  v64 = v15;
  v60 = v1;
  v16 = *(*(v1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest) + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);
  Strong = swift_unknownObjectWeakLoadStrong();
  v57 = v14;
  if (!Strong)
  {

LABEL_5:
    sub_1001DACDC(v6);
    v27 = sub_100058000(&qword_10076C708, &unk_1006305C0);
    v28 = (*(*(v27 - 8) + 48))(v6, 1, v27);
    v26 = v64;
    if (v28)
    {
      sub_1000079B4(v6, &qword_10076C6F8, &qword_10063E530);
      v25 = v60;
    }

    else
    {
      v29 = *(v7 + 16);
      v30 = v59;
      v29(v11, v6, v59);
      sub_1000079B4(v6, &qword_10076C6F8, &qword_10063E530);
      v54 = *(v7 + 32);
      v31 = v56;
      v54(v56, v11, v30);
      v32 = swift_allocObject();
      v25 = v60;
      swift_weakInit();
      v33 = v55;
      v29(v55, v31, v30);
      v34 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = v32;
      v54((v35 + v34), v33, v30);
      v26 = v64;
      v37 = v64[2];
      v36 = v64[3];
      if (v37 >= v36 >> 1)
      {
        v26 = sub_100547370((v36 > 1), v37 + 1, 1, v64);
      }

      (*(v7 + 8))(v56, v59);
      v26[2] = v37 + 1;
      v38 = &v26[2 * v37];
      v38[4] = sub_1001DE070;
      v38[5] = v35;
    }

    goto LABEL_10;
  }

  v18 = *(v16 + 24);
  ObjectType = swift_getObjectType();
  v54 = v8;
  v20 = v11;
  v21 = v6;
  v22 = v7;
  v23 = *(v18 + 48);

  v24 = v23(ObjectType, v18);
  v7 = v22;
  v6 = v21;
  v11 = v20;
  LOBYTE(v18) = v24;
  swift_unknownObjectRelease();
  if (v18)
  {
    goto LABEL_5;
  }

  v25 = v60;
  v26 = v64;
LABEL_10:
  v39 = *(v25 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_additionalSubjectFilter);
  if (v39)
  {
    v40 = *(v25 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_additionalSubjectFilter + 8);
    v41 = v26[2];
    v42 = v26[3];

    if (v41 >= v42 >> 1)
    {
      v26 = sub_100547370((v42 > 1), v41 + 1, 1, v26);
    }

    v26[2] = v41 + 1;
    v43 = &v26[2 * v41];
    v43[4] = v39;
    v43[5] = v40;
  }

  type metadata accessor for TTRProcessMoveSubjects();
  *&v71 = v63;
  v44 = sub_100058000(&qword_100773338, &qword_100638D50);
  v45 = sub_10011763C(&qword_100773340, &qword_100773338, &qword_100638D50);
  static TTRProcessMoveSubjects.process<A>(moveSubjects:disallowOverride:moveFilters:)();
  *(v25 + 24) = TTRProcessMoveSubjects.MoveResults.shouldDisallow.getter() & 1;
  *(v25 + 16) = TTRProcessMoveSubjects.MoveResults.moveSubjects.getter();

  v63 = *(v25 + 16);
  v46 = *(v63 + 16);
  if (!v46)
  {
    v48 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v55 = v45;
  v56 = v44;
  v64 = v26;
  v47 = v63 + 32;

  v48 = _swiftEmptyArrayStorage;
  do
  {
    sub_10000794C(v47, &v71, &qword_100773348, &unk_100634F10);
    *&v66[9] = *&v72[9];
    v65 = v71;
    *v66 = *v72;
    v49 = v72[24];
    sub_100005FD0(&v65, v67);
    if ((v49 & 1) == 0)
    {
      sub_100004758(v67);
      v70 = 0;
      v68 = 0u;
      v69 = 0u;
LABEL_17:
      sub_1000079B4(&v68, &qword_100773350, &unk_100642630);
      goto LABEL_18;
    }

    sub_100005FD0(v67, &v68);
    if (!*(&v69 + 1))
    {
      goto LABEL_17;
    }

    sub_100005FD0(&v68, &v65);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_10054734C(0, v48[2] + 1, 1, v48);
    }

    v51 = v48[2];
    v50 = v48[3];
    if (v51 >= v50 >> 1)
    {
      v48 = sub_10054734C((v50 > 1), v51 + 1, 1, v48);
    }

    v48[2] = v51 + 1;
    sub_100005FD0(&v65, &v48[5 * v51 + 4]);
LABEL_18:
    v47 += 48;
    --v46;
  }

  while (v46);

  v25 = v60;
LABEL_28:
  *(v25 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_filteredMoveSubjects) = v48;

  *&v71 = v48;
  v52 = Sequence.completeCompactMap<A>(_:)();

  (*(v58 + 8))(v61, v62);

  *(v25 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_filteredLocalItems) = v52;
}

void sub_1001DCB14(uint64_t *a1@<X8>)
{
  v49 = type metadata accessor for TTRSection();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v46 = &v46 - v5;
  v53 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v53);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100058000(&qword_10076C700, &qword_100634E00);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  v11 = sub_100058000(&unk_100775620, &unk_1006305B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v15 = *(v1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_filteredMoveSubjects);
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = _swiftEmptyArrayStorage;
  v58 = _swiftEmptyArrayStorage;
  v17 = *(v15 + 16);
  if (v17)
  {
    v50 = v1;
    v51 = v12;
    v52 = v7;
    v54 = &v46 - v13;
    v18 = v11;
    v19 = a1;
    v20 = v15 + 32;

    do
    {
      sub_10000B0D8(v20, v55);
      v22 = v56;
      v21 = v57;
      sub_10000C36C(v55, v56);
      v23 = (*(v21 + 8))(v22, v21);
      sub_100004758(v55);
      if (v23)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v58;
      }

      v20 += 40;
      --v17;
    }

    while (v17);

    a1 = v19;
    v11 = v18;
    v14 = v54;
    v12 = v51;
    v7 = v52;
    v1 = v50;
  }

  if (v16 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_23;
    }
  }

  else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  sub_1001DB8F0(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_1000079B4(v10, &qword_10076C700, &qword_100634E00);
LABEL_24:
    v32 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
    (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
    return;
  }

  v24 = v12;
  v25 = *(v12 + 32);
  v25(v14, v10, v11);
  v26 = *(v1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest);
  sub_1001D9D88(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_21;
    }

    (*(v12 + 8))(v14, v11);
LABEL_23:

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1001DE17C(v7, type metadata accessor for TTRRemindersListReminderActionTarget);
      v28 = *(v26 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);
      v29 = v11;
      v30 = v46;
      sub_10000794C(v26 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_parent, v46, &qword_100772140, &qword_10062D9F0);
      v31 = *(*v28 + 208);

      v31(v30, v16, v14);

      sub_1000079B4(v30, &qword_100772140, &qword_10062D9F0);
      (*(v24 + 8))(v14, v29);
      return;
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 5)
  {
LABEL_21:
    (*(v12 + 8))(v14, v11);

    sub_1001DE17C(v7, type metadata accessor for TTRRemindersListReminderActionTarget);
    goto LABEL_24;
  }

  v53 = v11;
  v54 = v14;
  v52 = a1;
  v33 = *(v47 + 32);
  v33(v48, v7, v49);
  v55[0] = v16;
  sub_100058000(&qword_10076BB08, &unk_10062FDB0);
  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  sub_10011763C(&unk_1007758B0, &qword_10076BB08, &unk_10062FDB0);
  sub_1001288B4();
  v34 = Sequence.mapToSet<A>(_:)();
  v35 = *(v26 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);

  if (sub_1001D6FFC())
  {
    v37 = v36;
    ObjectType = swift_getObjectType();
    v39 = (*(v37 + 32))(v35, v34, ObjectType, v37);
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0;
  }

  v40 = sub_100058000(&qword_100773378, &qword_100634F50);
  v41 = v40[12];
  v42 = v40[16];
  v43 = v40[20];
  v44 = v52;
  *v52 = v16;
  v33(v44 + v41, v48, v49);
  v25(v44 + v42, v54, v53);
  *(v44 + v43) = v39;
  v45 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
}

uint64_t sub_1001DD284()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_100058000(&qword_10076FA28, &unk_1006327A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  if (*(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_filteredLocalItems))
  {
    v8 = *(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest);
    v9 = *(v8 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);

    if (sub_1001D6FFC())
    {
      v11 = v10;
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(v9, ObjectType, v11);

      swift_unknownObjectRelease();
      sub_10000794C(v8 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_parent, v3, &qword_100772140, &qword_10062D9F0);
      type metadata accessor for TTRRemindersListViewModel.Item();
      sub_1001DDF28(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      TTRDerivedTreeLocation.init(parent:index:)();
      v13 = TTRRemindersListTreeViewModel.steps(forMoving:to:)();

      (*(v5 + 8))(v7, v4);
      return v13;
    }
  }

  return 0;
}

uint64_t sub_1001DD4F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000C36C(a1, v5);
  v7 = (*(v6 + 24))(v5, v6);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = *(a2 + 16);
  if (!v9)
  {
LABEL_10:

LABEL_11:
    v18 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.accept(_:);
    goto LABEL_12;
  }

  v10 = a2 + 32;
  while (1)
  {
    sub_10000B0D8(v10, v22);
    v11 = v23;
    v12 = v24;
    sub_10000C36C(v22, v23);
    v13 = (*(v12 + 8))(v11, v12);
    if (v13)
    {
      v14 = v13;
      v15 = [v13 objectID];

      if (v15)
      {
        break;
      }
    }

    sub_100004758(v22);
LABEL_5:
    v10 += 40;
    if (!--v9)
    {
      goto LABEL_10;
    }
  }

  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v16 = v8;
  v17 = static NSObject.== infix(_:_:)();

  sub_100004758(v22);
  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.discard(_:);
LABEL_12:
  v19 = *v18;
  v20 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
  return (*(*(v20 - 8) + 104))(a3, v19, v20);
}

uint64_t sub_1001DD6A4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v8 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.accept(_:);
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest);

    if (sub_1001DAEEC())
    {

      v8 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.reject(_:);
    }

    else
    {
      v10 = (*(**(v9 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability) + 176))(a1, a3);

      if ((v10 & 1) == 0)
      {
        v8 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.reject(_:);
      }
    }
  }

  v11 = *v8;
  v12 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
  return (*(*(v12 - 8) + 104))(a4, v11, v12);
}

uint64_t sub_1001DD7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  type metadata accessor for TTRSmartListDragAndDropPresenterCapability();
  sub_1001D7B8C(a1, v6);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
    type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability();
    return sub_1004B7B98(a1, a2);
  }

  else
  {
    (*(v8 + 32))(a2, v6, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }
}

uint64_t sub_1001DD964()
{

  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan____lazy_storage___position, &qword_100773380, &qword_100634F58);
  sub_1000301AC(*(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_additionalSubjectFilter), *(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_additionalSubjectFilter + 8));

  return swift_deallocClassInstance();
}

void sub_1001DDAF4(uint64_t a1)
{
  sub_1001DDD64(319, &qword_100780930, &type metadata accessor for TTRRemindersListViewModel.Item);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001DDBE4(uint64_t a1)
{
  sub_1001DDD64(319, &qword_100780930, &type metadata accessor for TTRRemindersListViewModel.Item);
  if (v1 <= 0x3F)
  {
    sub_1001DDD64(319, &qword_100773130, type metadata accessor for TTRRemindersListReminderActionTarget);
    if (v2 <= 0x3F)
    {
      sub_100014068(319, &unk_100773138, &qword_10076C6F8, &qword_10063E530);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001DDD64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1001DDDE0(uint64_t a1)
{
  sub_100014068(319, &unk_100773248, &qword_10076C700, &qword_100634E00);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1001DDED4()
{
  result = qword_1007732F8;
  if (!qword_1007732F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007732F8);
  }

  return result;
}

uint64_t sub_1001DDF28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001DDF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = _swiftEmptyArrayStorage;
  *(v4 + 24) = 1;
  v9 = OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan____lazy_storage___position;
  v10 = sub_100058000(&qword_10076C700, &qword_100634E00);
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_filteredMoveSubjects) = 0;
  *(v4 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_filteredLocalItems) = 0;
  *(v4 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest) = a1;
  v11 = (v4 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_additionalSubjectFilter);
  *v11 = a3;
  v11[1] = a4;

  sub_10003BE34(a3, a4);
  sub_1001DC250(a2);
  return v4;
}

uint64_t sub_1001DE070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1001DD6A4(a1, v6, a2);
}

uint64_t sub_1001DE114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001DE17C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001DE1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DE248@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001D7630(a1, v2 + v6, v7, a2);
}

void *sub_1001DE2F4(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v8) = *(a2 + v8);
  }

  return a1;
}

double sub_1001DE3C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v3 - 8) + 8))(a1, v3);

  return result;
}

uint64_t sub_1001DE438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1001DE4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_1001DE558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_1001DE5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_1001DE694(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1001DE7C0(uint64_t a1)
{
  v2 = type metadata accessor for TTRListBadgeView.ColorInfo();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100773560, &unk_1006350C0);
  __chkstk_darwin(v4 - 8);
  v46 = &v43 - v5;
  v6 = type metadata accessor for TTRListBadgeView.Shape();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRIListDetailBadgeCellContentState(0);
  __chkstk_darwin(v13);
  v48 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  __chkstk_darwin(v18);
  v43 = &v43 - v19;
  __chkstk_darwin(v20);
  v22 = (&v43 - v21);
  __chkstk_darwin(v23);
  v25 = &v43 - v24;
  v47 = *(a1 + OBJC_IVAR____TtC9Reminders32TTRIListDetailBadgeCellTableCell_badgeView);
  TTRITableCellContent.state.getter();
  v49 = v13;
  (*(v10 + 16))(v12, &v25[*(v13 + 32)], v9);
  v26 = (*(v10 + 88))(v12, v9);
  if (v26 == enum case for TTRListDetailViewModelBadgeDisplayStyle.list(_:))
  {
    sub_1001DFC30(v25);
    (*(v44 + 104))(v8, enum case for TTRListBadgeView.Shape.round(_:), v45);
  }

  else
  {
    if (v26 != enum case for TTRListDetailViewModelBadgeDisplayStyle.smartList(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    sub_1001DFC30(v25);
    static TTRListBadgeView.Shape.customSmartListInListDetailView.getter();
  }

  dispatch thunk of TTRListBadgeView.shape.setter();
  TTRITableCellContent.state.getter();
  v27 = *v22;
  v28 = *v22;
  sub_1001DFC30(v22);
  if (v27)
  {
    v29 = v28;
    dispatch thunk of TTRListBadgeView.image.setter();
    static TTRListBadgeView.ShadowParams.defaultShadowOpacity.getter();
    v30 = v46;
    TTRListBadgeView.ShadowParams.init(offset:radius:opacity:)();
    v31 = type metadata accessor for TTRListBadgeView.ShadowParams();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    dispatch thunk of TTRListBadgeView.shadowParams.setter();
  }

  else
  {
    v32 = v43;
    TTRITableCellContent.state.getter();
    v33 = *(v32 + 16);

    sub_1001DFC30(v32);
    if (v33)
    {
      dispatch thunk of TTRListBadgeView.emoji.setter();
      v34 = type metadata accessor for TTRListBadgeView.ShadowParams();
      (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
      dispatch thunk of TTRListBadgeView.shadowParams.setter();
    }
  }

  TTRITableCellContent.state.getter();
  v35 = v49;
  v36 = *(v49 + 24);
  v37 = type metadata accessor for TTRListColors.Color();
  v38 = &v17[v36];
  v39 = v50;
  (*(*(v37 - 8) + 16))(v50, v38, v37);
  sub_1001DFC30(v17);
  (*(v51 + 104))(v39, enum case for TTRListBadgeView.ColorInfo.listColor(_:), v52);
  dispatch thunk of TTRListBadgeView.listColorInfo.setter();
  TTRITableCellContent.state.getter();

  sub_1001DFC30(v17);
  dispatch thunk of TTRListBadgeView.ttrAccessibilityName.setter();
  v40 = v48;
  TTRITableCellContent.state.getter();
  v41 = *(v40 + *(v35 + 28) + 8);

  sub_1001DFC30(v40);
  if (v41)
  {
  }

  return dispatch thunk of TTRListBadgeView.ttrAccessibilityShouldIgnoreAccessibilityName.setter();
}

id sub_1001DEE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(type metadata accessor for TTRListBadgeView()) initWithFrame:{0.0, 0.0, 96.0, 96.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  dispatch thunk of TTRListBadgeView.emojiFontSize.setter();
  v9 = dispatch thunk of TTRListBadgeView.backgroundParams.modify();
  TTRListBadgeView.BackgroundParams.gradientVisibilityOverride.setter();
  v9(v37, 0);
  [v8 setAccessibilityRespondsToUserInteraction:0];
  v10 = String._bridgeToObjectiveC()();
  [v8 setAccessibilityIdentifier:v10];

  *&v4[OBJC_IVAR____TtC9Reminders32TTRIListDetailBadgeCellTableCell_badgeView] = v8;
  v11 = v8;
  if (a3)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v36.receiver = v4;
  v36.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v36, "initWithStyle:reuseIdentifier:", a1, v12);

  v14 = v13;
  v15 = [v14 contentView];
  [v15 addSubview:v8];

  v16 = objc_opt_self();
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100634FC0;
  v18 = [v14 contentView];
  v19 = [v18 centerXAnchor];

  v20 = [v8 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v17 + 32) = v21;
  v22 = [v14 contentView];
  v23 = [v22 topAnchor];

  v24 = [v8 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-20.0];

  *(v17 + 40) = v25;
  v26 = [v14 contentView];

  v27 = [v26 bottomAnchor];
  v28 = [v8 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:20.0];

  *(v17 + 48) = v29;
  v30 = [v8 widthAnchor];
  v31 = [v30 constraintEqualToConstant:96.0];

  *(v17 + 56) = v31;
  v32 = [v8 heightAnchor];

  v33 = [v32 constraintEqualToConstant:96.0];
  *(v17 + 64) = v33;
  sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 activateConstraints:isa];

  return v14;
}

char *sub_1001DF3B4(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a1;
    v6 = a2[2];
    *(a1 + 1) = a2[1];
    *(a1 + 2) = v6;
    v7 = a3[6];
    v10 = type metadata accessor for TTRListColors.Color();
    v11 = *(*(v10 - 8) + 16);
    v12 = v4;

    v11(&v5[v7], a2 + v7, v10);
    v13 = a3[7];
    v14 = a3[8];
    v15 = &v5[v13];
    v16 = (a2 + v13);
    v17 = v16[1];
    *v15 = *v16;
    *(v15 + 1) = v17;
    v18 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
    v19 = *(*(v18 - 8) + 16);

    v19(&v5[v14], a2 + v14, v18);
  }

  return v5;
}

uint64_t sub_1001DF504(id *a1, int *a2)
{

  v4 = a2[6];
  v5 = type metadata accessor for TTRListColors.Color();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = a2[8];
  v7 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *sub_1001DF5D4(char *a1, uint64_t a2, int *a3)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  *(a1 + 2) = *(a2 + 16);
  v8 = a3[6];
  v9 = type metadata accessor for TTRListColors.Color();
  v10 = *(*(v9 - 8) + 16);
  v11 = v7;

  v10(&a1[v8], a2 + v8, v9);
  v12 = a3[7];
  v13 = a3[8];
  v14 = &a1[v12];
  v15 = (a2 + v12);
  v16 = v15[1];
  *v14 = *v15;
  *(v14 + 1) = v16;
  v17 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  v18 = *(*(v17 - 8) + 16);

  v18(&a1[v13], a2 + v13, v17);
  return a1;
}

uint64_t sub_1001DF6DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a1;
  v7 = *a2;
  *a1 = *a2;
  v8 = v7;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v9 = a3[6];
  v10 = type metadata accessor for TTRListColors.Color();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = a3[7];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  *v12 = *v13;
  v12[1] = v13[1];

  v14 = a3[8];
  v15 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  (*(*(v15 - 8) + 24))(a1 + v14, a2 + v14, v15);
  return a1;
}

uint64_t sub_1001DF7F0(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[6];
  v7 = type metadata accessor for TTRListColors.Color();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[7];
  v9 = a3[8];
  *(a1 + v8) = *(a2 + v8);
  v10 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  return a1;
}

uint64_t sub_1001DF8BC(uint64_t a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a2 + 2);
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = v7;

  v8 = a3[6];
  v9 = type metadata accessor for TTRListColors.Color();
  (*(*(v9 - 8) + 40))(a1 + v8, &a2[v8], v9);
  v10 = a3[7];
  v11 = (a1 + v10);
  v12 = &a2[v10];
  v14 = *v12;
  v13 = *(v12 + 1);
  *v11 = v14;
  v11[1] = v13;

  v15 = a3[8];
  v16 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  (*(*(v16 - 8) + 40))(a1 + v15, &a2[v15], v16);
  return a1;
}

uint64_t sub_1001DF9F4(uint64_t a1)
{
  result = type metadata accessor for TTRListColors.Color();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001DFAD0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
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

  v11 = type metadata accessor for TTRIListDetailBadgeCellContentState(0);
  if ((static TTRListColors.Color.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v11 + 28);
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (!v14)
  {
    if (!v16)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  v17 = *v13 == *v15 && v14 == v16;
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v18 = *(v11 + 32);

  return static TTRListDetailViewModelBadgeDisplayStyle.== infix(_:_:)(a1 + v18, a2 + v18);
}

uint64_t sub_1001DFC30(uint64_t a1)
{
  v2 = type metadata accessor for TTRIListDetailBadgeCellContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001DFC8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1001DFD28, v5, v4);
}

uint64_t sub_1001DFD28()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1001DFE2C;
    v3 = v0[2];
    v4 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 10, v3, v4, 0, 0, 1, &type metadata for TTRIRemindersCommonPresenter.RemoveSectionsFromListConfirmationAlertResponse);
  }

  else
  {

    v5 = v0[1];

    return v5(3);
  }
}

uint64_t sub_1001DFE2C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  *(v1 + 81) = *(v1 + 80);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return _swift_task_switch(sub_1001DFF70, v4, v3);
}

uint64_t sub_1001DFF70()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 81);

  return v1(v2);
}

uint64_t sub_1001DFFD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1001E0070, v5, v4);
}

uint64_t sub_1001E0070()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1000A8258;
    v3 = v0[2];
    v4 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 10, v3, v4, 0, 0, 1, &type metadata for Bool);
  }

  else
  {

    v5 = v0[1];

    return v5(2);
  }
}

uint64_t sub_1001E0174()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100773568);
  v1 = sub_100003E30(v0, qword_100773568);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001E0254@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for TTRIShowTemplatePresenter(0);
  a2[4] = a1;
  *a2 = v2;
}

uint64_t sub_1001E02A4()
{
  sub_100058000(&qword_100774070, &unk_10063B4E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10062EDD0;
  sub_1001E4CC4();
  AnyHashable.init<A>(_:)();
  *(v0 + 72) = 1;
  AnyHashable.init<A>(_:)();
  *(v0 + 120) = 1;
  AnyHashable.init<A>(_:)();
  *(v0 + 168) = 1;
  *(v0 + 176) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 2;
  *(v0 + 264) = 0;
  *(v0 + 272) = 4;
  *(v0 + 312) = 0;
  AnyHashable.init<A>(_:)();
  *(v0 + 360) = 1;
  return v0;
}

Class sub_1001E03B4()
{
  v0 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v0 - 8);
  v2 = &v17[-v1];
  v3 = type metadata accessor for TTRTemplatePublicLinkData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AnyHashable.base.getter();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (v18 > 1u)
  {
    if (v18 == 2)
    {
      swift_getObjectType();
      dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
      v12 = type metadata accessor for Date();
      (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
      TTRTemplatePublicLinkData.init(template:now:)();
      v13 = swift_allocObject();
      swift_weakInit();

      v14 = sub_10014E6B8(v6, 0, sub_1001E4878, v13);

      (*(v4 + 8))(v6, v3);

      return v14;
    }

    v16 = String._bridgeToObjectiveC()();
    [objc_opt_self() _systemImageNamed:v16];

    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    static TTRLocalizableStrings.Templates.deleteTemplate.getter();
    swift_allocObject();
    swift_weakInit();
  }

  else
  {
    if (v18)
    {
      v15 = String._bridgeToObjectiveC()();
      [objc_opt_self() _systemImageNamed:v15];

      sub_100003540(0, &qword_10076BA60, UIAction_ptr);
      v8 = 0xD000000000000019;
      v9 = 0x8000000100676EC0;
    }

    else
    {
      v7 = String._bridgeToObjectiveC()();
      [objc_opt_self() _systemImageNamed:v7];

      sub_100003540(0, &qword_10076BA60, UIAction_ptr);
      v8 = 0xD000000000000012;
      v9 = 0x8000000100676F10;
    }

    v10._object = 0x8000000100676EE0;
    v10._countAndFlagsBits = 0xD000000000000020;
    TTRLocalizedString(_:comment:)(*&v8, v10);
    swift_allocObject();
    swift_weakInit();
  }

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

double sub_1001E08C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3();
  }

  return result;
}

double sub_1001E0924(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001E26D0(a1);
  }

  return result;
}

double sub_1001E0984(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    sub_10009E31C(0, 0, v4, &unk_100635198, v9);
  }

  return result;
}

uint64_t sub_1001E0AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100058000(&qword_10076BE10, &qword_10062FF90);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001E0B78, v6, v5);
}

uint64_t sub_1001E0B78()
{

  if (qword_100767000 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100773568);
  v4 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Template Editor Delete Template", 31, 2, v4);

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v2;
  sub_10009E31C(0, 0, v1, &unk_1006351A8, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001E0D30()
{
  v27 = type metadata accessor for TTRTemplateSharingAction();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRTemplatePublicLinkData.Capabilities();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v28 = type metadata accessor for TTRTemplatePublicLinkData();
  v13 = *(v28 - 8);
  __chkstk_darwin(v28);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v0;
  swift_getObjectType();
  dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  TTRTemplatePublicLinkData.init(template:now:)();
  TTRTemplatePublicLinkData.capabilities.getter();
  static TTRTemplatePublicLinkData.Capabilities.createLink.getter();
  sub_10014EE2C();
  v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v18 = *(v4 + 8);
  v18(v6, v3);
  if (v17)
  {
    v19 = &enum case for TTRTemplateSharingAction.createLink(_:);
LABEL_7:
    v21 = v25;
    v22 = v27;
    (*(v25 + 104))(v2, *v19, v27);
    v23 = sub_1001E26D0(v2);
    (*(v21 + 8))(v2, v22, v23);
    goto LABEL_8;
  }

  static TTRTemplatePublicLinkData.Capabilities.updateLink.getter();
  v20 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v18(v6, v3);
  if (v20)
  {
    v19 = &enum case for TTRTemplateSharingAction.updateLink(_:);
    goto LABEL_7;
  }

  if (TTRTemplatePublicLinkData.hasPublicLink.getter())
  {
    v19 = &enum case for TTRTemplateSharingAction.sendLink(_:);
    goto LABEL_7;
  }

LABEL_8:
  v18(v9, v3);
  return (*(v13 + 8))(v15, v28);
}

double sub_1001E10EC()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (qword_100767000 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100773568);
  v6 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Template Editor Done", 20, 2, v6);

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;

  sub_10009E31C(0, 0, v4, &unk_100635180, v8);

  return result;
}

uint64_t sub_1001E1270()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001AA3C;

  return sub_1001E311C();
}

uint64_t sub_1001E1300()
{
  v0 = type metadata accessor for TTRTemplatePublicLinkData.Capabilities();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TTRTemplatePublicLinkData();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  TTRTemplatePublicLinkData.init(template:now:)();
  TTRTemplatePublicLinkData.capabilities.getter();
  static TTRTemplatePublicLinkData.Capabilities.updateLink.getter();
  sub_10014EE2C();
  v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v16 = *(v1 + 8);
  v16(v3, v0);
  v16(v6, v0);
  (*(v11 + 8))(v13, v10);
  return v15 & 1;
}

void sub_1001E1588()
{
  if (qword_100767000 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100773568);
  v2 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Template Editor Show Template Info", 34, 2, v2);

  swift_getObjectType();
  swift_getObjectType();
  v3 = dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
  v4 = dispatch thunk of TTRRemindersListInteractorType.changeItem(for:)();

  sub_1001E44B8(v4, v0, *(v0 + 88));
}

uint64_t sub_1001E16A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1001E177C, v6, v5);
}

uint64_t sub_1001E177C()
{
  v1 = v0[3];
  v2 = v0[2];
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for TTRPotentiallyLongOperationPerformer();
  swift_allocObject();
  v0[8] = TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)();
  v0[9] = *(v2 + OBJC_IVAR____TtC9Reminders25TTRIShowTemplatePresenter_removeTemplateCapability);
  swift_getObjectType();
  v0[10] = dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
  v3 = type metadata accessor for TTRIPopoverAnchor();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v0[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v5;
  v0[13] = v4;

  return _swift_task_switch(sub_1001E1934, v5, v4);
}

uint64_t sub_1001E1934()
{
  v1 = v0[10];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[14] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = &unk_1006351D0;
  v4[5] = v3;
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1001E1A20;
  v6 = v0[10];
  v7 = v0[8];

  return TTRRemoveTemplatePresenterCapability.deleteTemplate(_:potentiallyLongOperationPerformer:presentAlert:)(v6, v7, &unk_100637480, v4);
}

uint64_t sub_1001E1A20()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1001E1B64, v3, v2);
}

uint64_t sub_1001E1B64()
{
  v1 = v0[10];
  v2 = v0[3];

  sub_1000079B4(v2, &unk_10076FCD0, &unk_1006304D0);
  v3 = v0[6];
  v4 = v0[7];

  return _swift_task_switch(sub_1001E1BE8, v3, v4);
}

uint64_t sub_1001E1BE8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001E1C60(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    v1 = static TTRLocalizableStrings.Templates.publicTemplateDeleting.getter();
    v3 = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v5 = Strong, v6 = [Strong navigationController], v5, !v6))
    {
      v6 = swift_unknownObjectWeakLoadStrong();
    }

    sub_10048DE3C(v1, v3, v6);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1001E1D40(uint64_t a1)
{
  v1[5] = a1;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_1001E1DD8, v3, v2);
}

uint64_t sub_1001E1DD8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 72) = *(Strong + 88);
    swift_unknownObjectRetain();

    return _swift_task_switch(sub_1001E1EB0, 0, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1001E1EB0()
{
  v1 = *(v0[9] + 80);
  v0[10] = v1;
  v2 = *(v1 + 16);
  v0[11] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_1001E1FA4;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = v0[7];
    v5 = v0[8];

    return _swift_task_switch(sub_1001E2124, v4, v5);
  }
}

uint64_t sub_1001E1FA4()
{

  return _swift_task_switch(sub_1001E20A0, 0, 0);
}

uint64_t sub_1001E20A0()
{
  v1 = *(v0 + 80);

  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  swift_unknownObjectRelease();

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  return _swift_task_switch(sub_1001E2124, v3, v4);
}

uint64_t sub_1001E2124()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E2184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1001E2220, v5, v4);
}

uint64_t sub_1001E2220()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1001E22D0;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1001DFFD4(v3, v2);
}

uint64_t sub_1001E22D0(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1001E23F8, v4, v3);
}

uint64_t sub_1001E23F8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

void sub_1001E245C()
{
  v0 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  if (qword_100767000 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100773568);
  v4 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Template Editor Create List from Template", 41, 2, v4);

  swift_getObjectType();
  v13 = dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      *(v6 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) = 1;
      v7 = type metadata accessor for TaskPriority();
      (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v8 = v13;
      v9 = static MainActor.shared.getter();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = &protocol witness table for MainActor;
      v10[4] = v6;
      v10[5] = v8;
      sub_10009E31C(0, 0, v2, &unk_100635208, v10);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v11 = v13;
  }
}

double sub_1001E26D0(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplateSharingAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v20[1] = v4;
  v21 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  if (qword_100767000 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100773568);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = v2;
  v10 = sub_1000317B8((inited + 48));
  v11 = *(v3 + 16);
  v11(v10, a1, v2);
  v12 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Templates Editor Perform Sharing Action {action: %@}", 52, 2, v12);

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = v21;
  v11(v21, a1, v2);
  type metadata accessor for MainActor();
  v15 = v22;

  v16 = static MainActor.shared.getter();
  v17 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = v15;
  (*(v3 + 32))(&v18[v17], v14, v2);
  sub_10009E31C(0, 0, v7, &unk_1006351F8, v18);

  return result;
}

uint64_t sub_1001E29E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1001E2A80, v7, v6);
}

uint64_t sub_1001E2A80()
{
  v0[8] = *(v0[2] + 88);
  swift_getObjectType();
  v0[9] = dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
  v0[10] = swift_allocObject();
  swift_weakInit();

  v0[11] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v2;
  v0[13] = v1;

  return _swift_task_switch(sub_1001E2B74, v2, v1);
}

uint64_t sub_1001E2B74()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    *(v0 + 120) = sub_10016D29C(*(v0 + 72), Strong, sub_1001E4E10, *(v0 + 80));
    v2 = type metadata accessor for TTRITemplateSharingPresenter(0);
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_1001E2D44;
    v4 = *(v0 + 24);

    return (sub_1000A7B00)(v4, 1, v2, &off_100714A98);
  }

  else
  {
    v6 = *(v0 + 72);

    v7 = *(v0 + 48);
    v8 = *(v0 + 56);

    return _swift_task_switch(sub_1000A7E20, v7, v8);
  }
}

uint64_t sub_1001E2D44()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1001E2E64, v3, v2);
}

uint64_t sub_1001E2E64()
{
  v1 = v0[14];
  v2 = v0[9];

  swift_unknownObjectRelease();

  v3 = v0[6];
  v4 = v0[7];

  return _swift_task_switch(sub_1000A7E20, v3, v4);
}

uint64_t sub_1001E2EF4@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  sub_1001E4E18(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar, v18);

  sub_100004758(v18);
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v16 = type metadata accessor for TTRIPopoverAnchor();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  v5 = v4;
  v6 = sub_10010DF8C();

  v8 = *(v5 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_navigationItem);
  if (v8 && (v9 = [v8 rightBarButtonItems]) != 0 && (v10 = v9, sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr), v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v10, v18[0] = v6, __chkstk_darwin(v12), v17[2] = v18, LOBYTE(v10) = sub_10000C108(sub_1000386DC, v17, v11), , (v10 & 1) != 0))
  {
    static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = type metadata accessor for TTRIPopoverAnchor();
  (*(*(v14 - 8) + 56))(a2, v13, 1, v14);

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1001E311C()
{
  v1[7] = v0;
  v2 = type metadata accessor for TTRTemplateSharingAction();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v4;
  v1[14] = v3;

  return _swift_task_switch(sub_1001E3214, v4, v3);
}

uint64_t sub_1001E3214()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC9Reminders25TTRIShowTemplatePresenter_isConfirmingUpdate;
  *(v0 + 120) = OBJC_IVAR____TtC9Reminders25TTRIShowTemplatePresenter_isConfirmingUpdate;
  if (*(v1 + v2))
  {

    if (qword_100767000 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100773568);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "TTRIShowTemplatePresenter: confirmUpdateAndDismiss called twice with the first one still in progress.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    *(v1 + v2) = 1;
    v9 = sub_1001E1300();
    v10 = *(v0 + 56);
    if (v9)
    {
      static TTRLocalizableStrings.Templates.updateSharedTemplateAlertTitle.getter();
      static TTRLocalizableStrings.Templates.updateSharedTemplateAlertMessage.getter();
      v11 = String._bridgeToObjectiveC()();

      v12 = String._bridgeToObjectiveC()();

      v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];
      *(v0 + 128) = v13;

      *(v0 + 136) = *(v10 + 88);
      sub_100058000(&qword_10076B260, &unk_10062F6F0);
      sub_100058000(&unk_100775890, &qword_10063B690);
      v14 = swift_allocObject();
      *(v0 + 144) = v14;
      *(v14 + 16) = xmmword_10062D3F0;
      static TTRLocalizableStrings.Common.updateButton.getter();
      *(v0 + 264) = 1;
      TTRIValueBasedAlertAction.init(title:style:value:)();
      static TTRLocalizableStrings.Common.notNowButton.getter();
      *(v0 + 265) = 0;
      TTRIValueBasedAlertAction.init(title:style:value:)();
      v15 = swift_task_alloc();
      *(v0 + 152) = v15;
      *v15 = v0;
      v15[1] = sub_1001E35E0;

      return sub_1001DFFD4(v13, v14);
    }

    else
    {
      *(v0 + 216) = *(v10 + 88);
      *(v0 + 224) = static MainActor.shared.getter();
      v17 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 232) = v17;
      *(v0 + 240) = v16;

      return _swift_task_switch(sub_1001E3D2C, v17, v16);
    }
  }
}

uint64_t sub_1001E35E0(char a1)
{
  v2 = *v1;
  *(*v1 + 266) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return _swift_task_switch(sub_1001E372C, v4, v3);
}

uint64_t sub_1001E372C()
{
  v1 = *(v0 + 266);

  if (v1 == 2 || (*(v0 + 266) & 1) == 0)
  {
    *(v0 + 216) = *(*(v0 + 56) + 88);
    *(v0 + 224) = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    *(v0 + 232) = v7;
    *(v0 + 240) = v11;
    v10 = sub_1001E3D2C;
  }

  else
  {
    if (qword_100767000 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 80);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_100773568);
    v6 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Templates Editor Update Link And Dismiss", 40, 2, v6);

    swift_getObjectType();
    *(v0 + 160) = dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
    (*(v4 + 104))(v2, enum case for TTRTemplateSharingAction.updateLink(_:), v3);
    *(v0 + 168) = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    *(v0 + 176) = v7;
    *(v0 + 184) = v8;
    v10 = sub_1001E3900;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_1001E3900()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    *(v0 + 200) = sub_10016D29C(*(v0 + 160), Strong, sub_1001E40D0, 0);
    v2 = type metadata accessor for TTRITemplateSharingPresenter(0);
    v3 = swift_task_alloc();
    *(v0 + 208) = v3;
    *v3 = v0;
    v3[1] = sub_1001E3ADC;
    v4 = *(v0 + 80);

    return (sub_1000A7B00)(v4, 0, v2, &off_100714A98);
  }

  else
  {
    v6 = *(v0 + 160);

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);

    return _swift_task_switch(sub_1001E3C94, v7, v8);
  }
}

uint64_t sub_1001E3ADC()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_1001E3BFC, v3, v2);
}

uint64_t sub_1001E3BFC()
{
  v1 = v0[24];
  v2 = v0[20];

  swift_unknownObjectRelease();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v3 = v0[13];
  v4 = v0[14];

  return _swift_task_switch(sub_1001E3C94, v3, v4);
}

uint64_t sub_1001E3C94(uint64_t a1)
{
  v1[27] = *(v1[7] + 88);
  v1[28] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[29] = v3;
  v1[30] = v2;

  return _swift_task_switch(sub_1001E3D2C, v3, v2);
}

uint64_t sub_1001E3D2C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[31] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[32] = v2;
    *v2 = v0;
    v2[1] = sub_1001E3E14;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v3 = v0[13];
    v4 = v0[14];

    return _swift_task_switch(sub_1001E3FB8, v3, v4);
  }
}

uint64_t sub_1001E3E14()
{
  v1 = *v0;
  v2 = *(*v0 + 248);

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return _swift_task_switch(sub_1001E3F54, v4, v3);
}

uint64_t sub_1001E3F54()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_1001E3FB8, v1, v2);
}

uint64_t sub_1001E3FB8()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v2;
      v4 = v0[7];
      v0[5] = type metadata accessor for TTRIShowTemplatePresenter(0);
      v0[6] = &off_10071AA88;
      v0[2] = v4;
      (*(v3 + 16))(v0 + 2, ObjectType, v3);

      swift_unknownObjectRelease();
      sub_100004758(v0 + 2);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  *(v0[7] + v0[15]) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001E40D0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRIPopoverAnchor();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 1, 1, v3);
}

double sub_1001E413C()
{
  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_1001E417C()
{
  sub_1001E6A30();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowTemplatePresenter(uint64_t a1)
{
  result = qword_1007735C0;
  if (!qword_1007735C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E42C4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10001EFA4;

  return sub_1001E311C();
}

uint64_t sub_1001E4370(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for TTRUndoNavigationEditingTarget();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  TTRListDetailSavedObjectID.undoNavigationEditingTarget.getter(a2, a3);
  ObjectType = swift_getObjectType();
  v13 = (*(a5 + 16))(ObjectType, a5);
  dispatch thunk of TTRRemindersListInteractorType.registerUndo(forEditing:byDraining:)();

  return (*(v9 + 8))(v11, v8);
}

void sub_1001E44B8(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TTRListDetailAssembly.TemplateComponentsCreator();
  swift_initStackObject();
  v5 = [a1 saveRequest];
  v6 = [v5 store];

  v7 = sub_10044E4F8(v6, a1, 1, a2, &off_10071A600);
  v9 = v8;

  v10 = v7;

  v11 = sub_10045A1AC(v10, v9, 0, 0, 0);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong presentViewController:v11 animated:1 completion:0];
  }
}

void sub_1001E45E4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  static TTRLocalizableStrings.UndoAction.changeTemplate.getter();
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();

  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1001E47AC;
  *(v13 + 24) = v12;
  v16[4] = sub_100026410;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100026440;
  v16[3] = &unk_10071A6B0;
  v14 = _Block_copy(v16);

  v15 = a3;
  swift_unknownObjectRetain();

  [v10 withActionName:v11 block:v14];

  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }
}

uint64_t sub_1001E47BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001AA38;

  return sub_1001E1270();
}

uint64_t sub_1001E48E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_1001E0AA4(a1, v4, v5, v6);
}

uint64_t sub_1001E4994()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001E49D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_1001E16A8(a1, v4, v5, v6);
}

uint64_t sub_1001E4A90()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001AA38;

  return sub_1001E1D40(v0);
}

uint64_t sub_1001E4B20(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1001E4BC8;

  return sub_1001E2184(a1, a2, v2);
}

uint64_t sub_1001E4BC8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_1001E4CC4()
{
  result = qword_100774078;
  if (!qword_100774078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100774078);
  }

  return result;
}

uint64_t sub_1001E4D18(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRTemplateSharingAction() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_1001E29E4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1001E4E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100775590, &qword_100635200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E4E88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_100289540(a1, v4, v5, v7, v6);
}

uint64_t getEnumTagSinglePayload for TTRIShowTemplatePresenter.ActionMenuCustomItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIShowTemplatePresenter.ActionMenuCustomItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001E509C()
{
  result = qword_100774080;
  if (!qword_100774080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100774080);
  }

  return result;
}

id TTRIDebugMenuAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIDebugMenuAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIDebugMenuAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIDebugMenuAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001E51BC()
{
  type metadata accessor for TTRIDebugMenuDataManager();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(REMStore) init];
  type metadata accessor for TTRIDebugMenuInteractor();
  v1 = swift_allocObject();
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v1[4] = v0;
  v1[5] = &off_100725AE0;
  v2 = type metadata accessor for TTRIDebugMenuRouter();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[3] = v2;
  v17[4] = &off_10072ABF0;
  v17[0] = v3;
  type metadata accessor for TTRIDebugMenuEventHandler();
  v4 = swift_allocObject();
  v5 = sub_10000AE84(v17, v2);
  v6 = __chkstk_darwin(v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = *v8;
  v15 = v2;
  v16 = &off_10072ABF0;
  *&v14 = v10;
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[4] = v1;
  v4[5] = &off_1007164C0;
  sub_100005FD0(&v14, (v4 + 6));
  v1[3] = &off_10072CCD8;
  swift_unknownObjectWeakAssign();

  sub_100004758(v17);
  type metadata accessor for TTRIDebugMenuViewController();
  v17[0] = v4;
  v17[1] = &off_10072CCE0;
  sub_1001E5440();
  static TTRTypedController<>.instantiateFromStoryboard(with:)();
  v11 = v14;
  v12 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v14];

  swift_unknownObjectWeakAssign();

  return v12;
}

unint64_t sub_1001E5440()
{
  result = qword_100771270;
  if (!qword_100771270)
  {
    type metadata accessor for TTRIDebugMenuViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100771270);
  }

  return result;
}

uint64_t *sub_1001E5498(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1001E5620(uint64_t a1)
{
  type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v3 = type metadata accessor for TTRRemindersListViewModel.Item();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *sub_1001E56AC(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v7 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v5 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1001E57D4(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1001E590C(a1);
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v5 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v7);
}

uint64_t sub_1001E590C(uint64_t a1)
{
  v2 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1001E5968(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v7 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v5 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1001E5A90(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1001E590C(a1);
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v5 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v7);
}

uint64_t sub_1001E5C10(uint64_t a1)
{
  result = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1001E5C9C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v5 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1001E5DFC(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v4 = type metadata accessor for TTRRemindersListViewModel.Item();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *sub_1001E5E78(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1001E5F98(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1001E590C(a1);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void *sub_1001E60C8(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1001E61E8(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1001E590C(a1);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_1001E6318(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1001E63A0(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  __chkstk_darwin(v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E668C(v2, v16);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      sub_1001E590C(v2);
      (*(v11 + 16))(v2, v20, v10);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (result)
  {
    sub_1001E590C(v2);
    swift_storeEnumTagMultiPayload();
    return sub_1001E590C(v16);
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    sub_1001E66F0();
    LODWORD(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v4 + 8);
    v18(v6, v3);
    v18(v9, v3);
    result = (*(v11 + 8))(v13, v10);
    if ((v20 & 1) == 0)
    {
      sub_1001E590C(v2);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_1001E668C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001E66F0()
{
  result = qword_10076BB60;
  if (!qword_10076BB60)
  {
    type metadata accessor for TTRRemindersListViewModel.ItemID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076BB60);
  }

  return result;
}

uint64_t sub_1001E6748(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  __chkstk_darwin(v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E668C(v2, v16);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    sub_1001E590C(v2);
    (*(v11 + 16))(v2, v20, v10);
    return swift_storeEnumTagMultiPayload();
  }

  if (!result)
  {
    sub_1001E590C(v2);
    swift_storeEnumTagMultiPayload();
    return sub_1001E590C(v16);
  }

  (*(v11 + 32))(v13, v16, v10);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  sub_1001E66F0();
  LODWORD(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v6, v3);
  v18(v9, v3);
  result = (*(v11 + 8))(v13, v10);
  if ((v20 & 1) == 0)
  {
    sub_1001E590C(v2);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void *sub_1001E6A30()
{
  sub_10003B788(v0 + 16);
  sub_100004758((v0 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10003B788(v0 + 152);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_sharingInfo, &unk_100780980, &unk_100631DD0);
  sub_100004758((v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_titleAttributesInteractor));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar, &unk_100775590, &qword_100635200);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar, &qword_100769608, &unk_1006302F0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100053470(*(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext), *(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext + 8));

  swift_unknownObjectRelease();

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_userDefaults, &qword_1007755C8, &qword_100635CF8);

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_firstVisibleItemIDToRestore, &unk_10076BB50, &unk_10062DEA0);

  return v0;
}

uint64_t sub_1001E6C48(uint64_t a1)
{
  v24 = a1;
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchFlagParams();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 104);
  sub_100058000(&qword_100772150, &unk_100635D00);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D400;
  (*(v11 + 16))(v13 + v12, v24, v10);
  v14 = *(v9 + 72);
  ObjectType = swift_getObjectType();
  (*(v14 + 16))(ObjectType, v14);
  LODWORD(v12) = v5[*(v3 + 52)];
  sub_10022E05C(v5, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v12 == 1)
  {

    (*(v6 + 104))(v8, enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.disallowed(_:), v25);
    goto LABEL_6;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchFlag(_:)();

  v16 = v25;
  v17 = (*(v6 + 88))(v8, v25);
  if (v17 == enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.allowed(_:))
  {
    (*(v6 + 96))(v8, v16);
    return *v8;
  }

  if (v17 == enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.disallowed(_:))
  {
LABEL_6:
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_1007741F0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v18 = 2;
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Item can't be flagged", v22, 2u);
    }

    else
    {

      return 2;
    }

    return v18;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1001E6FE0(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v45 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = v5;
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100775718, &qword_100635D88);
  __chkstk_darwin(v6 - 8);
  *&v43 = &v41 - v7;
  v8 = sub_100058000(&qword_100775720, &unk_100635D90);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for TTRLocationQuickPickItem();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  sub_10000794C(a1, v10, &qword_100775720, &unk_100635D90);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000079B4(v10, &qword_100775720, &unk_100635D90);
    sub_100058000(&qword_100772150, &unk_100635D00);
    v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v19 = swift_allocObject();
    v43 = xmmword_10062D400;
    *(v19 + 16) = xmmword_10062D400;
    v20 = *(v4 + 16);
    v21 = v44;
    v22 = v45;
    v20(v19 + v18, v44, v45);
    sub_100242E78(0, v19);

    v23 = swift_allocObject();
    *(v23 + 16) = v43;
    v20(v23 + v18, v21, v22);
    sub_100243084(0, v23);

    return;
  }

  v24 = v4;
  (*(v12 + 32))(v17, v10, v11);
  (*(v12 + 16))(v14, v17, v11);
  v25 = (*(v12 + 88))(v14, v11);
  if (v25 != enum case for TTRLocationQuickPickItem.current(_:) && v25 != enum case for TTRLocationQuickPickItem.home(_:) && v25 != enum case for TTRLocationQuickPickItem.work(_:) && v25 != enum case for TTRLocationQuickPickItem.gettingInCar(_:) && v25 != enum case for TTRLocationQuickPickItem.gettingOutOfCar(_:))
  {
    if (v25 == enum case for TTRLocationQuickPickItem.custom(_:))
    {
      goto LABEL_14;
    }

    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    v2 = sub_100003E30(v26, qword_1007741F0);
    v27 = sub_100008E04(_swiftEmptyArrayStorage);
    v28 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unsupported location quick pick item", 36, 2uLL, v27, v28);
    __break(1u);
  }

  swift_getObjectType();
  v29 = sub_100058000(&qword_100775728, &unk_10063D860);
  v30 = v43;
  (*(*(v29 - 8) + 56))(v43, 1, 1, v29);
  v31 = dispatch thunk of TTRLocationQuickPicksInteractorType.locationTrigger(for:togglingProximityForCurrentSelection:)();
  sub_1000079B4(v30, &qword_100775718, &qword_100635D88);
  if (v31)
  {
    v46 = v31;
    v32 = swift_allocObject();
    *&v43 = v17;
    v33 = v2;
    swift_weakInit();
    v34 = v24;
    v35 = *(v24 + 16);
    v36 = v42;
    v37 = v45;
    v35(v42, v44, v45);
    v38 = (*(v34 + 80) + 24) & ~*(v34 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v32;
    (*(v34 + 32))(v39 + v38, v36, v37);
    sub_100058000(&qword_100775730, &unk_100635DA0);
    sub_10000E188(&qword_100775738, &qword_100775730, &unk_100635DA0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v40 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v12 + 8))(v43, v11);

    *(v33 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_locationTriggerCancellable) = v40;

    return;
  }

LABEL_14:
  (*(v12 + 8))(v17, v11);
}

void sub_1001E7684()
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_1007741F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reminders List Dismiss Reminder Details", v3, 2u);
  }

  sub_100133054(1, 0, 0);
}

void sub_1001E7774(uint64_t a1)
{
  v3 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_100058000(&unk_100775640, &unk_10062DED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for REMAnalyticsEvent();
  v48 = *(v9 - 8);
  v49 = v9;
  __chkstk_darwin(v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v50 = a1;
  v14 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  v16 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List Show Subtasks In Parent List {item: %@}", 54, 2, v16);

  type metadata accessor for TTRUserDefaults();
  v17 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  v46 = static REMAnalyticsManager.shared.getter();
  v18 = sub_100058000(&qword_1007757E8, &unk_100635E60);
  v19 = &v11[*(v18 + 48)];
  v20 = &v11[*(v18 + 80)];
  v21 = enum case for REMUserOperation.showSubtasksInParentList(_:);
  v22 = type metadata accessor for REMUserOperation();
  (*(*(v22 - 8) + 104))(v11, v21, v22);
  *v19 = TTRUserDefaults.activitySessionId.getter();
  v19[1] = v23;
  v47 = v17;
  TTRUserDefaults.activitySessionBeginTime.getter();
  v24 = *(v1 + 144);
  v51 = v1;
  ObjectType = swift_getObjectType();
  (*(v24 + 152))(ObjectType, v24);
  v26 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v5, 1, v26) == 1)
  {
    v28 = &unk_10078A380;
    v29 = &qword_10062DE60;
    v30 = v5;
LABEL_7:
    sub_1000079B4(v30, v28, v29);
    *v20 = 0;
    v20[1] = 0;
    goto LABEL_9;
  }

  TTRRemindersListViewModel.ListInfo.listType.getter();
  (*(v27 + 8))(v5, v26);
  v31 = type metadata accessor for TTRListType();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v8, 1, v31) == 1)
  {
    v28 = &unk_100775640;
    v29 = &unk_10062DED0;
    v30 = v8;
    goto LABEL_7;
  }

  v33 = TTRListType.description.getter();
  v34 = v8;
  v36 = v35;
  (*(v32 + 8))(v34, v31);
  *v20 = v33;
  v20[1] = v36;
LABEL_9:
  v37 = v51;
  v39 = v48;
  v38 = v49;
  (*(v48 + 104))(v11, enum case for REMAnalyticsEvent.userOperation(_:), v49);
  REMAnalyticsManager.post(event:)();

  (*(v39 + 8))(v11, v38);
  v40 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
  if (v40)
  {
    v41 = v40;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v42 = *(v37 + 160);
      if ((*(v24 + 40))(ObjectType, v24))
      {
        swift_getObjectType();
        v43 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0;
      }

      v44 = swift_getObjectType();
      v52[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
      v52[4] = &off_10071AA88;
      v52[0] = v51;
      v45 = *(v42 + 32);

      v45(v41, v43 & 1, v52, v44, v42);

      swift_unknownObjectRelease();
      sub_100004758(v52);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_1001E7D9C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentedViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

double sub_1001E7E34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v41 = a2;
  v36 = a4;
  v42 = a3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v37 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = v6;
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v39 = v5;
  v16 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v16;
  *(inited + 56) = v17;
  v18 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List Show Reminder Details {item: %@}", 47, 2, v18);

  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v19 = (*(v11 + 88))(v13, v10);
  if (v19 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:) && v19 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) && v19 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    if (v19 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      return result;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  (*(v11 + 8))(v13, v10);
  v21 = type metadata accessor for TaskPriority();
  v22 = *(*(v21 - 8) + 56);
  v34 = v9;
  v22(v9, 1, 1, v21);
  v24 = v37;
  v23 = v38;
  v25 = a1;
  v26 = v39;
  (*(v37 + 16))(v38, v25, v39);
  type metadata accessor for MainActor();
  v27 = v42;

  v36 = v36;
  v28 = v40;

  v29 = static MainActor.shared.getter();
  v30 = (*(v24 + 80) + 40) & ~*(v24 + 80);
  v31 = (v35 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 2) = v29;
  *(v32 + 3) = &protocol witness table for MainActor;
  *(v32 + 4) = v28;
  (*(v24 + 32))(&v32[v30], v23, v26);
  v33 = &v32[v31];
  *v33 = v41;
  v33[1] = v27;
  *&v32[(v31 + 23) & 0xFFFFFFFFFFFFFFF8] = v36;
  sub_10009E31C(0, 0, v34, &unk_1006360B8, v32);

  return result;
}

uint64_t sub_1001E8320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, unsigned int *a7, ...)
{
  v31 = a7;
  v32 = a2;
  v28 = a5;
  v29 = a6;
  v34 = a4;
  v33 = a3;
  v8 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v30 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection();
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  v27 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v17 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  v19 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44(v28, v29, 2, v19);

  sub_100058000(&qword_100772150, &unk_100635D00);
  v20 = *(v16 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v27;
  (*(v20 + 16))(v22 + v21, a1, v16);
  v23 = v30;
  (*(v11 + 104))(v13, *v31, v30);
  v24 = type metadata accessor for TTRIPopoverAnchor();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v10, v32, v24);
  (*(v25 + 56))(v10, 0, 1, v24);
  sub_1001FB6DC(v22, v13, v10, v33, v34);

  sub_1000079B4(v10, &unk_10076FCD0, &unk_1006304D0);
  return (*(v11 + 8))(v13, v23);
}

uint64_t sub_1001E86F4(uint64_t a1, char *a2, __n128 a3)
{
  v40 = a2;
  v4 = type metadata accessor for TTRIPopoverAnchor();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v41 = v6;
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v39 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v39);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration();
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v37 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100775720, &unk_100635D90);
  __chkstk_darwin(v12 - 8);
  v44 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  swift_getObjectType();
  v38 = a1;
  v17 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.reminderChangeItem(forEditing:)();
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v33 = v7;
  swift_getObjectType();
  v32 = v4;
  v45[3] = sub_100003540(0, &qword_1007756E0, REMReminderChangeItem_ptr);
  v45[4] = &protocol witness table for REMReminderChangeItem;
  v45[0] = v18;
  v35 = v18;
  dispatch thunk of TTRLocationQuickPicksInteractorType.quickPickItems(matchingAlarmTriggersIn:)();
  sub_100004758(v45);
  v34 = dispatch thunk of TTRLocationQuickPicksInteractorType.quickPickItems.getter();
  sub_10000794C(v16, v44, &qword_100775720, &unk_100635D90);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v36;
  v21 = v39;
  (*(v8 + 16))(v36, v38, v39);
  v22 = *(v5 + 16);
  v23 = v33;
  v24 = v40;
  v40 = v16;
  v25 = v32;
  v22(v33, v24, v32);
  v26 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v27 = (v9 + *(v5 + 80) + v26) & ~*(v5 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v19;
  (*(v8 + 32))(v28 + v26, v20, v21);
  (*(v5 + 32))(v28 + v27, v23, v25);
  v29 = v37;
  TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration.init(availableQuickPickItems:selectedQuickPickItem:handleSelection:)();
  v30 = static TTRIRemindersListContextualMenuAssembly.makeLocationContextMenu(configuration:)();

  (*(v42 + 8))(v29, v43);
  sub_1000079B4(v40, &qword_100775720, &unk_100635D90);
  return v30;
}

void sub_1001E8B5C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v77 = v4;
  v78 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v76 = &v69 - v6;
  v7 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.CustomTagsOption();
  v74 = *(v7 - 1);
  v75 = v7;
  __chkstk_darwin(v7);
  v85 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration();
  v82 = *(v9 - 8);
  v83 = v9;
  __chkstk_darwin(v9);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams();
  v15 = *(v87 - 8);
  __chkstk_darwin(v87);
  v17 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100058000(&qword_100772150, &unk_100635D00);
  v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v86 = *(v3 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10062D400;
  v79 = v3;
  v20 = v3 + 16;
  v21 = *(v3 + 16);
  v22 = a1;
  v81 = v2;
  v84 = v20;
  v73 = v21;
  v21((v19 + v18), a1, v2);
  v23 = *(*(v88 + 104) + 72);
  ObjectType = swift_getObjectType();
  (*(v23 + 16))(ObjectType, v23);
  LODWORD(v23) = v14[*(v12 + 52)];
  sub_10022E05C(v14, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v23 == 1)
  {
    (*(v15 + 104))(v17, enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:), v87);
LABEL_17:

    return;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchAddHashtag(_:fetchAllHashtagLabels:)();
  v25 = v87;
  v26 = (*(v15 + 88))(v17, v87);
  if (v26 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.allowed(_:))
  {
    v71 = v19;
    v72 = ~v86;
    (*(v15 + 96))(v17, v25);
    v28 = *v17;
    v27 = v17[1];
    sub_100058000(&qword_1007758E8, &unk_100635F10);
    v29 = static _DictionaryStorage.copy(original:)();
    v30 = v29;
    v31 = 0;
    v32 = 1 << *(v28 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v28 + 64);
    v35 = (v32 + 63) >> 6;
    v36 = v29 + 64;
    if (v34)
    {
      while (1)
      {
        v37 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
LABEL_13:
        v40 = v37 | (v31 << 6);
        v41 = (*(v28 + 48) + 16 * v40);
        v43 = *v41;
        v42 = v41[1];
        v44 = *(*(*(v28 + 56) + 8 * v40) + 16);
        *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        v45 = (v30[6] + 16 * v40);
        *v45 = v43;
        v45[1] = v42;
        *(v30[7] + 8 * v40) = v44;
        v46 = v30[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          break;
        }

        v30[2] = v48;

        if (!v34)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v38 = v31;
      while (1)
      {
        v31 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v31 >= v35)
        {
          v49 = [v27 hashtags];
          sub_100003540(0, &unk_1007758F0, REMHashtag_ptr);
          sub_1000072CC(&qword_100770920, &unk_1007758F0, REMHashtag_ptr, &protocol conformance descriptor for NSObject);
          v50 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v89 = v50;
          sub_100058000(&qword_100775900, &unk_100632FF0);
          sub_10000E188(&qword_100775908, &qword_100775900, &unk_100632FF0, &protocol conformance descriptor for Set<A>);
          LOBYTE(v49) = Collection<>.contains(hashtagOfType:)();

          *v85 = v49 & 1;
          (*(v74 + 104))();
          v51 = swift_allocObject();
          swift_weakInit();
          v52 = swift_allocObject();
          v87 = v52;
          *(v52 + 16) = v51;
          *(v52 + 24) = v28;
          v53 = swift_allocObject();
          swift_weakInit();
          v54 = v76;
          v70 = v22;
          v75 = v27;
          v55 = v81;
          v56 = v73;
          v73(v76, v22, v81);
          v57 = (v86 + 24) & v72;
          v58 = swift_allocObject();
          v74 = v58;
          *(v58 + 16) = v53;
          v79 = *(v79 + 32);
          (v79)(v58 + v57, v54, v55);
          v59 = swift_allocObject();
          swift_weakInit();
          v60 = v78;
          v56(v78, v70, v55);
          v61 = swift_allocObject();
          *(v61 + 16) = v59;
          (v79)(v61 + v57, v60, v55);
          v62 = swift_allocObject();
          swift_weakInit();
          v63 = swift_allocObject();
          v64 = v71;
          *(v63 + 16) = v62;
          *(v63 + 24) = v64;
          v65 = v80;
          TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.init(showsMenuTitle:itemCount:customTagsOption:itemCountByHashtagLabel:fetchAllHashtagLabels:handleCustomTags:handleTagSelection:handleClearTags:)();
          static TTRIRemindersListContextualMenuAssembly.createHashtagsContextMenu(configuration:)();

          (*(v82 + 8))(v65, v83);
          return;
        }

        v39 = *(v28 + 64 + 8 * v31);
        ++v38;
        if (v39)
        {
          v37 = __clz(__rbit64(v39));
          v34 = (v39 - 1) & v39;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else if (v26 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:))
  {
    goto LABEL_17;
  }

  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_100003E30(v66, qword_1007741F0);
  v67 = sub_100008E04(_swiftEmptyArrayStorage);
  v68 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("unknown batchAddHashtag result", 30, 2uLL, v67, v68);
  __break(1u);
}

void sub_1001E949C(uint64_t a1)
{
  swift_getObjectType();
  v1 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
  if (v1)
  {
    v2 = v1;
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_1007741F0);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v5 = [v2 objectID];
    *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    *(inited + 48) = v5;
    v6 = sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
    sub_10000FD44("Reminders List Launch User Activity {objectID: %@}", 50, 2, v6);

    v7 = [v2 userActivity];
    if (v7)
    {
      v8 = v7;
      REMUserActivity.launch()();
    }
  }
}

UIMenu sub_1001E9644()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.DeleteCompletedMenuItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  __chkstk_darwin(v5);
  v7 = &v38 - v6;
  v8 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_1002435DC();
  v12 = *(v11 + 16);
  if (v12)
  {
    v39 = v10;
    v51 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v47 = v15;
    v48 = v13;
    v16 = *(v14 + 64);
    v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = v16;
    v38 = v11;
    v17 = v11 + ((v16 + 32) & ~v16);
    v18 = *(v14 + 56);
    v43 = (v16 + 24) & ~v16;
    v44 = v18;
    v41 = (v14 + 16);
    v42 = v4;
    v49 = v14;
    v50 = v0;
    v40 = (v14 - 8);
    v19 = v45;
    do
    {
      v20 = v47;
      v47(v7, v17, v2);
      TTRRemindersListViewModel.DeleteCompletedMenuItem.title.getter();
      v21 = swift_allocObject();
      swift_weakInit();
      v20(v19, v7, v2);
      v22 = v43;
      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      (*v41)(v23 + v22, v19, v2);

      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      (*v40)(v7, v2);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 += v44;
      --v12;
    }

    while (v12);

    v1 = v50;
    v24 = v51;
    v10 = v39;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  v25 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  (*(v25 + 152))(ObjectType, v25);
  v27 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v10, 1, v27) == 1)
  {
    sub_1000079B4(v10, &unk_10078A380, &qword_10062DE60);
  }

  else
  {
    v29 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    (*(v28 + 8))(v10, v27);
    if (v29)
    {
      v30 = 0x8000000100678C40;
      v31 = 0xD00000000000002ELL;
      v32 = 0x8000000100678C60;
      v33 = 0xD000000000000015;
      goto LABEL_11;
    }
  }

  v33 = 0xD000000000000019;
  v30 = 0x8000000100678BE0;
  v31 = 0xD000000000000032;
  v32 = 0x8000000100678C00;
LABEL_11:
  v34 = TTRLocalizedString(_:comment:)(*&v33, *&v31);
  if (v24 >> 62)
  {
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);

    v35 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
    v35 = v24;
  }

  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v52.value.super.isa = 0;
  v52.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v34, 0, v52, 0, 0xFFFFFFFFFFFFFFFFLL, v35, v37);
}

uint64_t sub_1001E9B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v45 = a2;
  v5 = sub_100058000(&unk_100775660, &qword_10062F6B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v47 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v38 - v12;
  v13 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _swiftEmptyArrayStorage;
  v52 = _swiftEmptyArrayStorage;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v50 = *(v20 + 56);
    v51 = v21;
    v42 = (v9 + 16);
    v43 = (v9 + 32);
    v41 = (v9 + 8);
    v48 = (v20 - 8);
    v49 = (v9 + 48);
    v44 = v20;
    v21(v17, v22, v13, v15);
    while (1)
    {
      TTRRemindersListViewModel.ImageAttachment.fileURL.getter();
      if ((*v49)(v7, 1, v8) == 1)
      {
        (*v48)(v17, v13);
        sub_1000079B4(v7, &unk_100775660, &qword_10062F6B0);
      }

      else
      {
        v24 = v13;
        v25 = v8;
        v26 = v46;
        (*v43)(v46, v7, v25);
        TTRRemindersListViewModel.ImageAttachment.attachmentID.getter();
        (*v42)(v47, v26, v25);
        v27 = objc_allocWithZone(type metadata accessor for TTRIQuickLookImageAttachmentPreviewItem());
        TTRIQuickLookImageAttachmentPreviewItem.init(attachmentID:fileURL:)();
        v28 = v26;
        v8 = v25;
        v13 = v24;
        (*v41)(v28, v8);
        (*v48)(v17, v24);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v18 = v52;
      }

      v22 += v50;
      if (!--v19)
      {
        break;
      }

      v51(v17, v22, v13, v23);
    }
  }

  v29 = v18 >> 62;
  if (v18 >> 62)
  {
LABEL_30:
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (!v30)
    {
    }
  }

  else
  {
    v30 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
    }
  }

  v51 = v29;
  v29 = 0;
  while (v30 != v29)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v31 = *(v18 + 8 * v29 + 32);
    }

    v32 = v31;
    sub_100003540(0, &qword_100775690, NSObject_ptr);
    v33 = TTRIQuickLookImageAttachmentPreviewItem.attachmentID.getter();
    v34 = static NSObject.== infix(_:_:)();

    if (v34)
    {
      goto LABEL_23;
    }

    if (__OFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  v29 = 0;
LABEL_23:
  if (v51)
  {

    sub_100058000(&unk_100775810, &qword_100635E80);
    v36 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v36 = v18;
  }

  sub_100133418(v36, v29, v39, v40);
}

uint64_t sub_1001EA0A8(uint64_t a1)
{
  v57 = a1;
  v2 = type metadata accessor for TTRRemindersListEditingAttribute();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100775AB0, &unk_1006360A0);
  __chkstk_darwin(v4 - 8);
  v51 = &v44 - v5;
  v52 = sub_100058000(&qword_100775AB8, &unk_10063C7B0);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v44 - v6;
  v54 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  __chkstk_darwin(v54);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v44 - v9;
  v10 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams();
  v14 = *(v56 - 8);
  __chkstk_darwin(v56);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v1;
  v17 = *(v1 + 104);
  sub_100058000(&qword_100772150, &unk_100635D00);
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10062D400;
  (*(v19 + 16))(v21 + v20, v57, v18);
  v22 = *(v17 + 72);
  ObjectType = swift_getObjectType();
  (*(v22 + 16))(ObjectType, v22);
  LODWORD(v19) = v13[*(v11 + 52)];
  sub_10022E05C(v13, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v19 == 1)
  {

    (*(v14 + 104))(v16, enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:), v56);
    return 2;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchAddHashtag(_:fetchAllHashtagLabels:)();

  v25 = v56;
  v26 = (*(v14 + 88))(v16, v56);
  if (v26 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.allowed(_:))
  {
    (*(v14 + 96))(v16, v25);
    v27 = *(v16 + 1);

    v28 = *(v55 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    v29 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
    swift_beginAccess();
    v30 = v53;
    sub_100233874(v28 + v29, v53, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
    sub_10022DFF4(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState, &unk_1006440F8);
    v31 = TTRRemindersListEditingState.isEditingItem.getter();
    sub_10022E05C(v30, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
    if (v31)
    {
      v32 = v49;
      sub_100233874(v28 + v29, v49, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      v33 = v51;
      sub_100016588(v32, v51, &qword_100775AB0, &unk_1006360A0);
      if ((*(v50 + 48))(v33, 1, v52) == 1)
      {
        v34 = &qword_100775AB0;
        v35 = &unk_1006360A0;
        v36 = v33;
      }

      else
      {
        v37 = v48;
        sub_100016588(v33, v48, &qword_100775AB8, &unk_10063C7B0);
        if (static TTRRemindersListViewModel.Item.== infix(_:_:)())
        {
          v39 = v45;
          v38 = v46;
          v40 = v47;
          (*(v46 + 104))(v45, enum case for TTRRemindersListEditingAttribute.hashtags(_:), v47);
          sub_10022DFF4(&qword_100775AC0, &type metadata accessor for TTRRemindersListEditingAttribute, &protocol conformance descriptor for TTRRemindersListEditingAttribute);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v60 == v58 && v61 == v59)
          {
            (*(v38 + 8))(v39, v40);
            sub_1000079B4(v37, &qword_100775AB8, &unk_10063C7B0);
          }

          else
          {
            v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
            (*(v38 + 8))(v39, v40);
            sub_1000079B4(v37, &qword_100775AB8, &unk_10063C7B0);

            if ((v43 & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          return 2;
        }

        v34 = &qword_100775AB8;
        v35 = &unk_10063C7B0;
        v36 = v37;
      }

      sub_1000079B4(v36, v34, v35);
    }

LABEL_15:
    v41 = [v27 hashtags];
    sub_100003540(0, &unk_1007758F0, REMHashtag_ptr);
    sub_1000072CC(&qword_100770920, &unk_1007758F0, REMHashtag_ptr, &protocol conformance descriptor for NSObject);
    v42 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v60 = v42;
    sub_100058000(&qword_100775900, &unk_100632FF0);
    sub_10000E188(&qword_100775908, &qword_100775900, &unk_100632FF0, &protocol conformance descriptor for Set<A>);
    LOBYTE(v41) = Collection<>.contains(hashtagOfType:)();

    return v41 & 1;
  }

  if (v26 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:))
  {
    return 2;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001EA920(uint64_t a1)
{
  v2 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  v17 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v8 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v10 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List show hashtag editor {item: %@}", 45, 2, v10);

  sub_100058000(&qword_100772150, &unk_100635D00);
  v11 = *(v7 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v17;
  (*(v11 + 16))(v13 + v12, a1, v7);
  v14 = type metadata accessor for TTRIPopoverAnchor();
  v15.n128_f64[0] = (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1001FC3E0(v13, v4, v15);

  return sub_1000079B4(v4, &unk_10076FCD0, &unk_1006304D0);
}

uint64_t sub_1001EAC00(uint64_t a1)
{
  v3 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 224))(a1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  sub_100058000(&qword_100772150, &unk_100635D00);
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D400;
  (*(v10 + 16))(v12 + v11, a1, v9);
  v13 = sub_100200EA8(v12, 1, v5);

  sub_1000079B4(v5, &unk_10076FCD0, &unk_1006304D0);
  return v13;
}

uint64_t sub_1001EAE00()
{
  v1 = v0;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  __chkstk_darwin(v8);
  v29 = &v29 - v9;
  v10 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_1007741F0);
  v14 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Reminders list create custom smart list from current hashtags state", 67, 2, v14);

  v15 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v15 + 152))(ObjectType, v15);
  v17 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    return sub_1000079B4(v12, &unk_10078A380, &qword_10062DE60);
  }

  CustomSmartListForHashtags = TTRRemindersListViewModel.ListInfo.canCreateCustomSmartListForHashtagsState.getter();
  result = (*(v18 + 8))(v12, v17);
  if (CustomSmartListForHashtags)
  {
    result = (*(v15 + 80))(ObjectType, v15);
    if (result)
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
      swift_unknownObjectRelease();
      v22 = v29;
      v21 = v30;
      v23 = v31;
      (*(v30 + 32))(v29, v7, v31);
      (*(v21 + 104))(v4, enum case for REMHashtagLabelSpecifier.allLabels(_:), v23);
      sub_10022DFF4(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier, &protocol conformance descriptor for REMHashtagLabelSpecifier);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v21 + 8);
      v25(v4, v23);
      if ((v24 & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
      {
        return (v25)(v22, v23);
      }

      else
      {
        v26 = *(v1 + 160);
        v27 = swift_getObjectType();
        v32[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
        v32[4] = &off_10071AA88;
        v32[0] = v1;
        v28 = *(v26 + 40);

        v28(v32, v22, v27, v26);
        swift_unknownObjectRelease();
        v25(v22, v23);
        return sub_100004758(v32);
      }
    }
  }

  return result;
}

uint64_t sub_1001EB230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15[3] = a1;
  v15[4] = a4;
  v15[1] = a3;
  v15[2] = a2;
  v15[5] = a5;
  v6 = type metadata accessor for TTRIReminderCellModuleOwnerModuleType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(v5 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar, v18, &qword_100769608, &unk_1006302F0);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v10 = (*(v7 + 104))(v9, enum case for TTRIReminderCellModuleOwnerModuleType.remindersList(_:), v6);
  (*(*v5 + 1424))(v10);
  swift_unknownObjectRetain();
  v11 = static TTRIReminderCellTitleAssembly.createViewController(item:titleAttributesInteractor:quickBar:augmentationSplitter:ownerModule:hostViewController:inCellPresenterManager:isSingleReminderEditingMode:returnKeyType:moduleDelegate:)();
  v13 = v12;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
  sub_1000079B4(v16, &qword_100775A98, &unk_100636090);
  sub_100004758(v18);
  *&v16[0] = v11;
  *(&v16[0] + 1) = v13;
  sub_1000046FC(v19, v18);
  sub_100058000(&unk_100775AA0, &unk_100638960);
  TTRRemindersListInCellModule.init(interface:controller:)();
  return sub_100004758(v19);
}

uint64_t sub_1001EB484@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14[0] = a4;
  v14[1] = a5;
  v6 = type metadata accessor for TTRIReminderCellModuleOwnerModuleType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(v5 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar, v15, &qword_100769608, &unk_1006302F0);
  (*(v7 + 104))(v9, enum case for TTRIReminderCellModuleOwnerModuleType.remindersList(_:), v6);
  swift_unknownObjectRetain();
  v10 = static TTRIReminderCellNotesAssembly.createViewController(item:isSingleReminderEditingMode:quickBar:ownerModule:hostViewController:inCellPresenterManager:moduleDelegate:)();
  v12 = v11;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
  sub_100004758(v15);
  v14[2] = v10;
  v14[3] = v12;
  sub_1000046FC(v16, v15);
  sub_100058000(&qword_100775A90, &qword_100647540);
  TTRRemindersListInCellModule.init(interface:controller:)();
  return sub_100004758(v16);
}

uint64_t sub_1001EB668@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14[0] = a4;
  v14[1] = a5;
  v6 = type metadata accessor for TTRIReminderCellModuleOwnerModuleType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(v5 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar, v15, &qword_100769608, &unk_1006302F0);
  (*(v7 + 104))(v9, enum case for TTRIReminderCellModuleOwnerModuleType.remindersList(_:), v6);
  swift_unknownObjectRetain();
  v10 = static TTRIReminderCellHashtagAssembly.createViewController(item:quickBar:ownerModule:hostViewController:inCellPresenterManager:moduleDelegate:)();
  v12 = v11;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
  sub_100004758(v15);
  v14[2] = v10;
  v14[3] = v12;
  sub_1000046FC(v16, v15);
  sub_100058000(&qword_100775A88, &unk_100636080);
  TTRRemindersListInCellModule.init(interface:controller:)();
  return sub_100004758(v16);
}

uint64_t sub_1001EB844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a2;
  v49 = a4;
  v47 = a3;
  v43 = a1;
  v50 = a5;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TTRRemindersListLayout();
  v8 = *(v52 - 8);
  __chkstk_darwin(v52);
  v45 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  __chkstk_darwin(v13);
  v51 = &v39 - v14;
  swift_getObjectType();
  v39 = dispatch thunk of TTRRemindersListInteractorType.store.getter();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v5 + 160);
    ObjectType = swift_getObjectType();
    v56 = type metadata accessor for TTRIRemindersCommonPresenter(0);
    v57 = &off_10071AA88;
    v55[0] = v5;
    v17 = v8;
    v18 = *(v15 + 8);

    v19 = v18(v55, ObjectType, v15);
    v8 = v17;
    v20 = v19;
    swift_unknownObjectRelease();
    sub_100004758(v55);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v5 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  v22 = *(v5 + 144);
  v23 = swift_getObjectType();
  v24 = *(v22 + 112);
  v46 = v21;
  swift_unknownObjectRetain();
  if (v24(v23, v22))
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v25 = v51;
    v26 = v12;
    v27 = v52;
    (*(v8 + 32))(v51, v26, v52);
  }

  else
  {
    v25 = v51;
    v27 = v52;
    (*(v8 + 104))(v51, enum case for TTRRemindersListLayout.list(_:), v52);
  }

  v28 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v29 = static TTRInteractorEditsCommitting<>.async.getter();
  v56 = v28;
  v57 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  v55[0] = v29;
  type metadata accessor for TTRRemindersListEditableSectionNameInteractor();
  swift_allocObject();
  v40 = v20;
  v39 = v39;
  v30 = TTRRemindersListEditableSectionNameInteractor.init(store:undoManager:committer:)();
  type metadata accessor for TTRIRemindersListEditableSectionNameRouter();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v41 + 16))(v44, v43, v42);
  type metadata accessor for TTRRemindersListEditableSectionNameEditingPresenter();
  swift_allocObject();
  swift_unknownObjectRetain();

  v32 = TTRRemindersListEditableSectionNameEditingPresenter.init(item:interactor:presenterManager:)();
  v33 = v45;
  (*(v8 + 16))(v45, v25, v27);

  v34 = sub_10022E1BC(v30, v31, v32, v33);
  v45 = type metadata accessor for TTRIRemindersListEditableSectionNameViewController();
  v35 = objc_allocWithZone(v45);

  v37 = sub_10022E0BC(v36, v35);
  sub_10022DFF4(&qword_100775A60, type metadata accessor for TTRIRemindersListEditableSectionNamePresenter, &unk_100643B28);

  dispatch thunk of TTRRemindersListEditableSectionNameInteractorType.delegate.setter();
  *(v34 + 3) = sub_10022DFF4(&qword_100775A68, type metadata accessor for TTRIRemindersListEditableSectionNameViewController, &unk_100636FD4);
  swift_unknownObjectWeakAssign();
  *(v34 + 7) = v47;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  sub_10022DFF4(&qword_100775A70, type metadata accessor for TTRIRemindersListEditableSectionNamePresenter, &unk_100643AD8);

  TTRRemindersListEditableSectionNameEditingPresenter.delegate.setter();

  swift_unknownObjectRelease();

  (*(v8 + 8))(v51, v52);
  v53 = v34;
  v54 = &off_10072C5A8;
  v56 = v45;
  v55[0] = v37;
  sub_100058000(&qword_100775A78, &qword_100636078);
  return TTRRemindersListInCellModule.init(interface:controller:)();
}

double sub_1001EBE1C()
{
  v1 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 160))(ObjectType, v1);
  (*(v1 + 168))((v3 & 1) == 0, ObjectType, v1);
  v4 = (*(v1 + 216))(ObjectType, v1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v0 + 24);
    v6 = swift_getObjectType();
    (*(v5 + 120))(v4, v6, v5);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

void sub_1001EBF2C(char a1, void (*a2)(void), uint64_t a3)
{
  v7 = sub_100058000(&qword_100775698, &unk_100635D50);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  v15 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  swift_beginAccess();
  sub_100233874(v14 + v15, v13, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  LOBYTE(v11) = v13[*(v11 + 28)];
  sub_10022E05C(v13, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  if (v11 & 1) != 0 || swift_unknownObjectWeakLoadStrong() && (v16 = *(v3 + 24), ObjectType = swift_getObjectType(), LOBYTE(v16) = (*(v16 + 64))(ObjectType, v16), swift_unknownObjectRelease(), (v16))
  {
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_1007741F0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "TTRIRemindersCommonPresenter: cannot perform requestNewReminderInDefaultSection", v21, 2u);
    }
  }

  else
  {
    if (a1)
    {
      v22 = 68;
    }

    else
    {
      v22 = 8;
    }

    sub_1004E8E18(v22, a2, a3, v9);
    sub_1000079B4(v9, &qword_100775698, &unk_100635D50);
  }
}

void sub_1001EC1B4(char *a1@<X8>)
{
  v4 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  v9 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  swift_beginAccess();
  sub_100233874(v8 + v9, v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  LOBYTE(v5) = v7[*(v5 + 28)];
  sub_10022E05C(v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  if (v5 & 1) != 0 || swift_unknownObjectWeakLoadStrong() && (v10 = *(v2 + 24), ObjectType = swift_getObjectType(), LOBYTE(v10) = (*(v10 + 64))(ObjectType, v10), swift_unknownObjectRelease(), (v10))
  {
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_1007741F0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "TTRIRemindersCommonPresenter: cannot perform requestNewReminderInDefaultSectionForPencilInput", v15, 2u);
    }

    v16 = sub_100058000(&qword_100775A58, &qword_100636070);
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else
  {
    sub_1004E8E18(0x31uLL, 0, 0, a1);
  }
}

uint64_t sub_1001EC400@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v47 = a3;
  v6 = sub_100058000(&qword_100775A50, &qword_100636068);
  __chkstk_darwin(v6 - 8);
  v46 = &v39[-v7];
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v42 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v41 = &v39[-v11];
  v12 = type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems(0);
  v43 = *(v12 - 8);
  v44 = v12;
  __chkstk_darwin(v12);
  v45 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v39[-v15];
  v17 = *(v3 + 144);
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 208);
  v19(ObjectType, v17);
  swift_getObjectType();
  v48 = a1;
  v20 = dispatch thunk of TTRRemindersListTreeContentsQueryable.isReminderWithSubtasks(_:)();
  swift_unknownObjectRelease();
  if (v20)
  {
    v21 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v21 - 8) + 56))(v16, 2, 2, v21);
  }

  else
  {
    v40 = a2;
    if ((a2 & 1) != 0 || (v19(ObjectType, v17), swift_getObjectType(), v22 = dispatch thunk of TTRRemindersListTreeContentsQueryable.isSubtask(_:)(), swift_unknownObjectRelease(), (v22 & 1) == 0))
    {
      v21 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v21 - 8) + 56))(v16, 1, 2, v21);
      LOBYTE(a2) = v40;
    }

    else
    {
      v19(ObjectType, v17);
      swift_getObjectType();
      v23 = v41;
      dispatch thunk of TTRRemindersListTreeContentsQueryable.parentOfSubtask(_:)();
      swift_unknownObjectRelease();
      v24 = v42;
      sub_100016588(v23, v42, &qword_100772140, &qword_10062D9F0);
      v21 = type metadata accessor for TTRRemindersListViewModel.Item();
      v25 = *(v21 - 8);
      v26 = 1;
      v27 = (*(v25 + 48))(v24, 1, v21);
      v28 = v46;
      if (v27 != 1)
      {
        (*(v25 + 32))(v46, v24, v21);
        (*(v25 + 56))(v28, 0, 2, v21);
        v26 = 0;
      }

      v30 = v43;
      v29 = v44;
      (*(v43 + 56))(v28, v26, 1, v44);
      v31 = *(v30 + 48);
      v32 = v31(v28, 1, v29);
      v33 = v45;
      if (v32 == 1)
      {
        (*(v25 + 56))(v45, 1, 2, v21);
        v34 = v31(v28, 1, v29);
        LOBYTE(a2) = v40;
        if (v34 != 1)
        {
          sub_1000079B4(v28, &qword_100775A50, &qword_100636068);
        }
      }

      else
      {
        sub_10023409C(v28, v45, type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems);
        LOBYTE(a2) = v40;
      }

      sub_10023409C(v33, v16, type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems);
    }
  }

  v35 = type metadata accessor for TTRIRemindersListItemAdjustedSelection(0);
  v36 = *(v35 + 20);
  type metadata accessor for TTRRemindersListViewModel.Item();
  v37 = v47;
  (*(*(v21 - 8) + 16))(&v47[v36], v48, v21);
  *v37 = a2 & 1;
  return sub_10023409C(v16, &v37[*(v35 + 24)], type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems);
}

void *sub_1001EC96C(void *a1)
{
  v3 = (*(*v1 + 1616))();
  v4 = v1[18];
  ObjectType = swift_getObjectType();
  if ((*(v4 + 104))(ObjectType, v4) && (v7 = sub_1002E2EA8(v6), swift_unknownObjectRelease(), v8 = v7[2], , v8))
  {
    v9 = *(v3 + 16);
    if (!v9)
    {
LABEL_4:

      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v9 = *(v3 + 16);
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  sub_1004A1B24(0, v9, 0);
  v10 = _swiftEmptyArrayStorage;
  v12 = (v3 + 40);
  do
  {
    v13 = sub_1001FE94C(*(v12 - 1), *v12, a1, v11);
    v21 = v10;
    v16 = v10[2];
    v15 = v10[3];
    if (v16 >= v15 >> 1)
    {
      v20 = v13;
      v18 = v14;
      sub_1004A1B24((v15 > 1), v16 + 1, 1);
      v13 = v20;
      v14 = v18;
      v10 = v21;
    }

    v12 += 16;
    v10[2] = v16 + 1;
    v17 = &v10[2 * v16];
    v17[4] = v13;
    *(v17 + 40) = v14;
    *(v17 + 41) = BYTE1(v14) & 1;
    *(v17 + 42) = BYTE2(v14) & 1;
    --v9;
  }

  while (v9);

  return v10;
}

void *sub_1001ECB38(char *a1, int a2, __n128 a3)
{
  v36 = a2;
  v43 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v4 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v12 = 0;
  v44 = a1;
  v13 = *(a1 + 2);
  v42 = v8 + 16;
  v14 = (v4 + 88);
  v41 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
  v40 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
  v15 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
  v39 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
  v16 = (v8 + 8);
  v35 = (v4 + 8);
  while (2)
  {
    if (v12 != v13)
    {
      while (1)
      {
        if (v12 >= v13)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        (*(v8 + 16))(v11, &v44[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12], v7, v9);
        v17 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_27;
        }

        TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
        v18 = (*v14)(v6, v43);
        v19 = v18 == v41 || v18 == v40;
        if (v19 || v18 == v15)
        {
          break;
        }

        if (v18 != v39)
        {
          goto LABEL_28;
        }

        (*v16)(v11, v7);
        ++v12;
        if (v17 == v13)
        {
          goto LABEL_18;
        }
      }

      (*v16)(v11, v7);
      (*v35)(v6, v43);
      ++v12;
      if (!__OFADD__(v38++, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_18:
  v22 = (*(*v37 + 1624))(v44);
  v23 = *(v22 + 16);
  if (v23)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_1004A1B24(0, v23, 0);
    v25 = v45;
    v26 = (v22 + 40);
    do
    {
      v27 = sub_1001FE94C(*(v26 - 1), *v26, v44, v24);
      v45 = v25;
      v30 = v25[2];
      v29 = v25[3];
      if (v30 >= v29 >> 1)
      {
        v32 = v27;
        v33 = v28;
        sub_1004A1B24((v29 > 1), v30 + 1, 1);
        v27 = v32;
        v28 = v33;
        v25 = v45;
      }

      v26 += 16;
      v25[2] = v30 + 1;
      v31 = &v25[2 * v30];
      v31[4] = v27;
      *(v31 + 40) = v28;
      *(v31 + 41) = BYTE1(v28) & 1;
      *(v31 + 42) = BYTE2(v28) & 1;
      --v23;
    }

    while (v23);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v25;
}

uint64_t sub_1001ECF24@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100058000(&qword_1007758D0, &unk_100634F80);
  __chkstk_darwin(v6 - 8);
  v154 = &v149 - v7;
  v168 = sub_100058000(&qword_1007758D8, &qword_100635F08);
  __chkstk_darwin(v168);
  v167 = (&v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v166 = &v149 - v10;
  v11 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v171 = *(v11 - 8);
  __chkstk_darwin(v11);
  v161 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for TTRRemindersListLayout();
  v13 = *(v163 - 8);
  __chkstk_darwin(v163);
  v155 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v162 = &v149 - v16;
  v187 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v158 = *(v187 - 1);
  __chkstk_darwin(v187);
  v186 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for TTRRemindersListViewModel.Item();
  v189 = *(v196 - 8);
  __chkstk_darwin(v196);
  v188 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v157 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v156 = (&v149 - v21);
  v197 = type metadata accessor for TTRSectionID();
  v22 = *(v197 - 8);
  __chkstk_darwin(v197);
  v153 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v170 = &v149 - v25;
  __chkstk_darwin(v26);
  v165 = &v149 - v27;
  __chkstk_darwin(v28);
  v193 = &v149 - v29;
  __chkstk_darwin(v30);
  v181 = &v149 - v31;
  __chkstk_darwin(v32);
  v194 = &v149 - v33;
  v190 = type metadata accessor for TTRSectionLite();
  v184 = *(v190 - 8);
  __chkstk_darwin(v190);
  v172 = &v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v149 - v36;
  __chkstk_darwin(v38);
  v169 = &v149 - v39;
  __chkstk_darwin(v40);
  v182 = &v149 - v41;
  v42 = sub_100243BE4(a1);
  v192 = v44;
  v173 = v45;
  if (!v42)
  {
    v59 = *(v171 + 56);

    return v59(a2, 1, 1, v11);
  }

  v46 = v42;
  v152 = v43;
  v174 = v22;
  v185 = a1;
  *&v198 = a1;
  v47 = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
  sub_10000E188(&unk_100784560, &qword_10076E0B0, &unk_100631BD0, &protocol conformance descriptor for [A]);
  Sequence.firstMap<A>(_:)();
  if (!v200[0])
  {

    return (*(v171 + 56))(a2, 1, 1, v11);
  }

  v151 = v200[0];
  v48 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_userDefaults;
  swift_beginAccess();
  v164 = v3;
  sub_10000794C(v48 + v3, &v198, &qword_1007755C8, &qword_100635CF8);
  if (!v199)
  {

    sub_1000079B4(&v198, &qword_1007755C8, &qword_100635CF8);
    return (*(v171 + 56))(a2, 1, 1, v11);
  }

  v149 = v37;
  v150 = v13;
  sub_100005FD0(&v198, v200);
  v49 = 0;
  v180 = v46;
  v179 = v46[2];
  v183 = v184 + 16;
  v176 = enum case for TTRSectionID.sectionless(_:);
  v175 = (v174 + 104);
  v195 = (v174 + 8);
  v178 = (v184 + 8);
  v177 = a2;
  v50 = v194;
  v51 = (v174 + 8);
  while (v179 != v49)
  {
    v52 = *(v180 + 16);
    if (v49 >= v52)
    {
      goto LABEL_43;
    }

    v37 = v184;
    v48 = v182;
    v53 = v190;
    (*(v184 + 2))(v182, v180 + ((v37[80] + 32) & ~v37[80]) + *(v37 + 9) * v49++, v190);
    TTRSectionLite.sectionID.getter();
    v54 = v11;
    v55 = v181;
    v56 = v197;
    (*v175)(v181, v176, v197);
    LODWORD(v191) = static TTRSectionID.== infix(_:_:)();
    v47 = *v51;
    v57 = v55;
    v11 = v54;
    (*v51)(v57, v56);
    (v47)(v50, v56);
    v58 = v53;
    a2 = v177;
    (*(v37 + 1))(v48, v58);
    if ((v191 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v61 = v164[18];
  ObjectType = swift_getObjectType();
  v49 = v156;
  (*(v61 + 192))(ObjectType, v61);
  LOBYTE(v61) = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v159 + 8))(v49, v160);
  if ((v61 & 1) == 0)
  {

    (*(v171 + 56))(a2, 1, 1, v11);
    return sub_100004758(v200);
  }

LABEL_16:
  v156 = v11;
  v175 = 0;
  v50 = 0;
  v63 = v185;
  v37 = *(v185 + 16);
  v191 = v189 + 16;
  v64 = (v158 + 11);
  LODWORD(v182) = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
  v51 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
  v47 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
  v65 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
  a2 = v189 + 8;
  ++v158;
  v48 = v188;
  v52 = &v202;
  v66 = v186;
  while (2)
  {
    if (v50 == v37)
    {
      goto LABEL_33;
    }

    while (1)
    {
      if (v50 >= v37)
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      (*(v189 + 16))(v48, v63 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v50, v196);
      v49 = (v50 + 1);
      if (__OFADD__(v50, 1))
      {
        goto LABEL_42;
      }

      TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
      v67 = (*v64)(v66, v187);
      v68 = v67 == v182 || v67 == v51;
      if (v68 || v67 == v47)
      {
        break;
      }

      if (v67 != v65)
      {
        goto LABEL_88;
      }

      v48 = v188;
      (*a2)(v188, v196);
      ++v50;
      v52 = &v201;
      v63 = v185;
      if (v49 == v37)
      {
        goto LABEL_33;
      }
    }

    v48 = v188;
    (*a2)(v188, v196);
    (*v158)(v186, v187);
    ++v50;
    v70 = __OFADD__(v175++, 1);
    v52 = &v201;
    v63 = v185;
    if (!v70)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_33:
  if ((v152 & 1) == 0)
  {

    v158 = _swiftEmptyArrayStorage;
    v191 = v180;
    v51 = v164;
LABEL_62:
    v89 = v51[18];
    v90 = swift_getObjectType();
    v91 = v157;
    (*(v89 + 192))(v90, v89);
    v92 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
    (*(v159 + 8))(v91, v160);
    v93 = (*(v89 + 112))(v90, v89);
    v94 = v156;
    v95 = v161;
    v96 = v162;
    LODWORD(v196) = v92;
    if (v93)
    {
      swift_getObjectType();
      v97 = v155;
      dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
      swift_unknownObjectRelease();
      (*(v150 + 32))(v96, v97, v163);
    }

    else
    {
      (*(v150 + 104))(v162, enum case for TTRRemindersListLayout.list(_:), v163);
    }

    v98 = swift_allocObject();
    swift_weakInit();
    v99 = swift_allocObject();
    v100 = v185;
    *(v99 + 2) = v98;
    *(v99 + 3) = v100;
    v101 = v100;
    v102 = v173;
    *(v99 + 4) = v173;
    v103 = swift_allocObject();
    swift_weakInit();
    v104 = swift_allocObject();
    *(v104 + 2) = v103;
    *(v104 + 3) = v101;
    *(v104 + 4) = v102;
    v105 = swift_allocObject();
    swift_weakInit();
    v106 = swift_allocObject();
    v107 = v151;
    *(v106 + 16) = v105;
    *(v106 + 24) = v107;
    v108 = v158;
    *v95 = v191;
    *(v95 + 1) = v108;
    v95[25] = v152 & 1;
    v95[26] = v196 & 1;
    (*(v150 + 16))(&v95[v94[9]], v162, v163);
    *&v95[v94[10]] = v175;
    v109 = &v95[v94[11]];
    *v109 = sub_100236984;
    v109[1] = v99;
    v110 = &v95[v94[12]];
    *v110 = sub_1002369D8;
    v110[1] = v104;
    v111 = &v95[v94[13]];
    *v111 = sub_1002369E4;
    *(v111 + 1) = v106;
    *&v198 = &_swiftEmptySetSingleton;
    v112 = *(v102 + 64);
    v192 = v102 + 64;
    v113 = 1 << *(v102 + 32);
    v114 = -1;
    if (v113 < 64)
    {
      v114 = ~(-1 << v113);
    }

    v115 = v114 & v112;
    v191 = (v113 + 63) >> 6;
    v116 = v174;
    v196 = v174 + 16;
    v193 = (v174 + 32);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v190 = v98;

    v189 = v103;

    v188 = v105;

    v187 = v107;
    v117 = 0;
    while (1)
    {
      v118 = v170;
      if (!v115)
      {
        break;
      }

      v119 = v117;
LABEL_74:
      v120 = __clz(__rbit64(v115));
      v115 &= v115 - 1;
      v121 = v120 | (v119 << 6);
      v122 = *(*(v173 + 48) + 8 * v121);
      v123 = *(v173 + 56) + *(v116 + 72) * v121;
      v124 = v168;
      v125 = *(v174 + 16);
      v126 = v166;
      v127 = v197;
      v125(&v166[*(v168 + 48)], v123, v197);
      *v126 = v122;
      v128 = v167;
      sub_10000794C(v126, v167, &qword_1007758D8, &qword_100635F08);
      v129 = *v128;
      v130 = v122;

      v131 = v128 + *(v124 + 48);
      v132 = v194;
      (*(v174 + 32))(v194, v131, v127);
      v133 = v165;
      v125(v165, v132, v127);
      v116 = v174;
      v134 = v181;
      sub_10058B9BC(v181, v133);
      v135 = *(v116 + 8);
      v135(v134, v127);
      v135(v132, v127);
      sub_1000079B4(v126, &qword_1007758D8, &qword_100635F08);
    }

    while (1)
    {
      v119 = v117 + 1;
      if (__OFADD__(v117, 1))
      {
        __break(1u);
        goto LABEL_87;
      }

      if (v119 >= v191)
      {
        break;
      }

      v115 = *(v192 + 8 * v119);
      ++v117;
      if (v115)
      {
        v117 = v119;
        goto LABEL_74;
      }
    }

    v136 = v198;
    if (*(v198 + 16) != 1)
    {
      (*(v150 + 8))(v162, v163);

      v141 = v177;
      v142 = v156;
      v143 = v161;
LABEL_79:
      v146 = 1;
LABEL_80:
      *(v143 + 16) = v136;
      *(v143 + 24) = v146;
      sub_10023409C(v143, v141, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);

      (*(v171 + 56))(v141, 0, 1, v142);
      return sub_100004758(v200);
    }

    v137 = v154;
    sub_1000A97CC(v198, v154);
    v138 = v197;
    v139 = (*(v116 + 48))(v137, 1, v197);
    v140 = v116;
    v141 = v177;
    v142 = v156;
    v143 = v161;
    v144 = v163;
    v145 = v162;
    if (v139 == 1)
    {
      (*(v150 + 8))(v162, v163);

      sub_1000079B4(v137, &qword_1007758D0, &unk_100634F80);
      goto LABEL_79;
    }

    (*(v140 + 32))(v118, v137, v138);
    v147 = v153;
    (*(v140 + 16))(v153, v118, v138);
    v148 = (*(v140 + 88))(v147, v138);
    if (v148 == enum case for TTRSectionID.sectioned(_:))
    {

      (*(v140 + 8))(v118, v138);
      (*(v150 + 8))(v145, v144);
      (*(v140 + 96))(v147, v138);
      v146 = 0;
      v136 = *v147;
      goto LABEL_80;
    }

    if (v148 == v176)
    {

      (*v195)(v118, v138);
      (*(v150 + 8))(v145, v144);
      v136 = 0;
      v146 = 2;
      goto LABEL_80;
    }

    goto LABEL_89;
  }

  sub_10000C36C(v200, v200[3]);
  v71 = [v151 list];
  v72 = [v71 objectID];

  v73 = dispatch thunk of TTRListEditorGroceryListUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)();
  v51 = v164;
  if ((v73 & 1) == 0)
  {

    v158 = _swiftEmptyArrayStorage;
    v191 = v180;
    goto LABEL_62;
  }

  v74 = v180;
  if (!v179)
  {

    v158 = _swiftEmptyArrayStorage;
    v191 = _swiftEmptyArrayStorage;
    goto LABEL_62;
  }

  a2 = 0;
  v187 = ((v184[80] + 32) & ~v184[80]);
  v186 = v187 + v180;
  v50 = (v192 + 56);
  v196 = v174 + 16;
  v182 = v184 + 32;
  v158 = _swiftEmptyArrayStorage;
  v191 = _swiftEmptyArrayStorage;
  v47 = v169;
  while (a2 < *(v74 + 16))
  {
    v189 = *(v184 + 9);
    v188 = *(v184 + 2);
    (v188)(v47, &v186[v189 * a2], v190);
    TTRSectionLite.sectionID.getter();
    if (*(v192 + 16) && (v77 = v192, sub_10022DFF4(&qword_1007758E0, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID), v78 = dispatch thunk of Hashable._rawHashValue(seed:)(), v79 = -1 << *(v77 + 32), v80 = v78 & ~v79, ((*&v50[(v80 >> 3) & 0xFFFFFFFFFFFFFF8] >> v80) & 1) != 0))
    {
      v81 = ~v79;
      v82 = *(v174 + 72);
      v83 = *(v174 + 16);
      while (1)
      {
        v84 = v194;
        v85 = v197;
        v83(v194, *(v192 + 48) + v82 * v80, v197);
        sub_10022DFF4(&qword_10076BE70, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
        v86 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87 = *v195;
        (*v195)(v84, v85);
        if (v86)
        {
          break;
        }

        v80 = (v80 + 1) & v81;
        if (((*&v50[(v80 >> 3) & 0xFFFFFFFFFFFFFF8] >> v80) & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      v87(v193, v197);
      v47 = v169;
      (v188)(v149, v169, v190);
      v48 = v158;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1005470BC(0, v48[2] + 1, 1, v48);
      }

      v51 = v164;
      v49 = v48[2];
      v88 = v48[3];
      v37 = (v49 + 1);
      if (v49 >= v88 >> 1)
      {
        v48 = sub_1005470BC((v88 > 1), v49 + 1, 1, v48);
        v75 = v149;
        v158 = v48;
      }

      else
      {
        v158 = v48;
        v75 = v149;
      }
    }

    else
    {
LABEL_52:
      (*v195)(v193, v197);
      v47 = v169;
      (v188)(v172, v169, v190);
      v48 = v191;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1005470BC(0, v48[2] + 1, 1, v48);
      }

      v49 = v48[2];
      v52 = v48[3];
      v37 = (v49 + 1);
      v51 = v164;
      if (v49 >= v52 >> 1)
      {
LABEL_44:
        v48 = sub_1005470BC((v52 > 1), v37, 1, v48);
        v75 = v172;
        v191 = v48;
      }

      else
      {
        v75 = v172;
        v191 = v48;
      }
    }

    ++a2;
    v76 = v190;
    (*v178)(v47, v190);
    v48[2] = v37;
    (*v182)(v187 + v48 + v49 * v189, v75, v76);
    v74 = v180;
    if (a2 == v179)
    {

      goto LABEL_62;
    }
  }

LABEL_87:
  __break(1u);
LABEL_88:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_89:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1001EE984(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v145 = a4;
  v143 = a2;
  v147 = a1;
  v5 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  __chkstk_darwin(v5 - 8);
  v135 = &v126 - v6;
  v7 = sub_100058000(&qword_10076DF38, &qword_100631A08);
  __chkstk_darwin(v7 - 8);
  v134 = &v126 - v8;
  v137 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v133 = *(v137 - 8);
  __chkstk_darwin(v137);
  v132 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for TTRIReminderDetailStyle();
  v131 = *(v136 - 8);
  __chkstk_darwin(v136);
  v129 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for TTRReminderDetailSubject();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v127 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  __chkstk_darwin(v139);
  v138 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchAssignParams();
  v141 = *(v13 - 8);
  v142 = v13;
  __chkstk_darwin(v13);
  v140 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v15 - 8);
  v17 = &v126 - v16;
  v18 = type metadata accessor for REMRDLUserOperationDetail();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100058000(&qword_100775608, &qword_1006367C0);
  __chkstk_darwin(v22 - 8);
  v24 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v126 - v26;
  v28 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v28 - 8);
  v126 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v144 = &v126 - v31;
  v32 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection();
  v34 = __chkstk_darwin(v32);
  v36 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v41 = v147;
    v42 = v147[2];
    if (v42)
    {
    }

    else
    {
      v41 = sub_1001F89F0();
      v42 = v41[2];
    }

    *v27 = v42 > 1;
    (*(v19 + 104))(v27, enum case for REMRDLUserOperationDetail.rdl_multiSelectRecover(_:), v18);
    (*(v19 + 56))(v27, 0, 1, v18);
    v52 = type metadata accessor for TTRIPopoverAnchor();
    v53 = *(v52 - 8);
    v54 = v144;
    (*(v53 + 16))(v144, v145, v52);
    (*(v53 + 56))(v54, 0, 1, v52);
    sub_10022F72C(v41, v27, v54);

    v55 = v54;
    goto LABEL_18;
  }

  if (a3 == 1)
  {
    v37 = v147;
    v38 = v147[2];
    if (v38)
    {
      *v21 = v38 != 1;
      v39 = enum case for REMRDLUserOperationDetail.rdl_multiSelectPermanentlyDelete(_:);
      v40 = *(v19 + 104);

      v40(v21, v39, v18);
    }

    else
    {
      v37 = sub_1001F89F0();
      (*(v19 + 104))(v21, enum case for REMRDLUserOperationDetail.rdl_permanentlyDeleteAll(_:), v18);
    }

    (*(v19 + 16))(v24, v21, v18);
    (*(v19 + 56))(v24, 0, 1, v18);
    if (v37[2])
    {
      v49 = type metadata accessor for TTRIPopoverAnchor();
      v50 = *(v49 - 8);
      v51 = v144;
      (*(v50 + 16))(v144, v145, v49);
      (*(v50 + 56))(v51, 0, 1, v49);
      sub_10020D648(v37, 0, v24, v51, 0, 0);

      sub_1000079B4(v51, &unk_10076FCD0, &unk_1006304D0);
    }

    else
    {
    }

    sub_1000079B4(v24, &qword_100775608, &qword_1006367C0);
    (*(v19 + 8))(v21, v18);
    return;
  }

  v43 = a3 & 0x10000;
  if (v143 <= 2)
  {
    v59 = v147;
    if (!v143)
    {
      v78 = v33;
      if (qword_100767008 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_100003E30(v79, qword_1007741F0);
      sub_100058000(&unk_100775610, &unk_1006323A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = 0x6E756F436D657469;
      v81 = inited + 32;
      *(inited + 40) = 0xE900000000000074;
      v82 = v59[2];
      *(inited + 72) = &type metadata for Int;
      *(inited + 48) = v82;
      v83 = sub_100008E04(inited);
      swift_setDeallocating();
      sub_1000079B4(v81, &unk_10076BA70, &qword_10062FD60);
      sub_10000FD44("Reminders List batch set due date {itemCount: %d}", 49, 2, v83);

      (*(v78 + 104))(v36, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection.date(_:), v32);
      v84 = type metadata accessor for TTRIPopoverAnchor();
      v85 = *(v84 - 8);
      v86 = v144;
      (*(v85 + 16))(v144, v145, v84);
      (*(v85 + 56))(v86, 0, 1, v84);
      sub_1001FB6DC(v59, v36, v86, 0, 0);
      sub_1000079B4(v86, &unk_10076FCD0, &unk_1006304D0);
      (*(v78 + 8))(v36, v32);
      return;
    }

    if (v143 != 1)
    {
      v87 = v147;
      v88 = v145;

      sub_1001FF034(v87, v88);
      return;
    }

    (*(v19 + 56))(v27, 1, 1, v18, v34);
    v60 = type metadata accessor for TTRIPopoverAnchor();
    v61 = *(v60 - 8);
    v62 = v144;
    (*(v61 + 16))(v144, v145, v60);
    (*(v61 + 56))(v62, 0, 1, v60);
    sub_10022F72C(v59, v27, v62);
    v55 = v62;
LABEL_18:
    sub_1000079B4(v55, &unk_10076FCD0, &unk_1006304D0);
    v56 = &qword_100775608;
    v57 = &qword_1006367C0;
    v58 = v27;
LABEL_19:
    sub_1000079B4(v58, v56, v57);
    return;
  }

  if (v143 <= 5)
  {
    if ((v143 - 3) < 2)
    {
      v44 = type metadata accessor for TaskPriority();
      (*(*(v44 - 8) + 56))(v17, 1, 1, v44);
      type metadata accessor for MainActor();
      v45 = v147;

      v47 = static MainActor.shared.getter();
      v48 = swift_allocObject();
      *(v48 + 16) = v47;
      *(v48 + 24) = &protocol witness table for MainActor;
      *(v48 + 32) = v46;
      *(v48 + 40) = BYTE2(v43);
      *(v48 + 48) = v45;
      sub_10009E31C(0, 0, v17, &unk_100636050, v48);

      return;
    }

    if (qword_100767008 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_46;
  }

  if (v143 == 6)
  {
    v63 = v43 != 0;
    v65 = v146;
    v64._rawValue = v147;
    sub_100242CC8(v63, v64);
    v66 = *(v65 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v66, v67);
  }

  else
  {
    v89 = v146;
    v90 = v147;
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_100003E30(v91, qword_1007741F0);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    v92 = swift_initStackObject();
    *(v92 + 16) = xmmword_10062D400;
    *(v92 + 32) = 0x6E756F436D657469;
    v93 = v92 + 32;
    *(v92 + 40) = 0xE900000000000074;
    v94 = v90[2];
    *(v92 + 72) = &type metadata for Int;
    *(v92 + 48) = v94;
    v95 = sub_100008E04(v92);
    swift_setDeallocating();
    sub_1000079B4(v93, &unk_10076BA70, &qword_10062FD60);
    sub_10000FD44("Reminder List batch add tag {itemCount: %d}", 43, 2, v95);

    v96 = *(*(v89 + 104) + 72);
    ObjectType = swift_getObjectType();
    v98 = v138;
    (*(v96 + 16))(ObjectType, v96);
    v99 = *(v98 + *(v139 + 44));
    sub_10022E05C(v98, type metadata accessor for TTRRemindersListEditingInteractionOptions);
    if (v99 == 1)
    {
      (*(v141 + 104))(v140, enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.disallowed(_:), v142);
      return;
    }

    v100 = v140;
    TTRRemindersListPresenterCapabilityCore.paramsForBatchAssign(_:pendingMoveTargetListForHostingReminder:)();
    v102 = v141;
    v101 = v142;
    v103 = (*(v141 + 88))(v100, v142);
    if (v103 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.allowed(_:))
    {
      (*(v102 + 96))(v100, v101);
      v142 = *(v100 + 1);

      v104 = type metadata accessor for TTRIPopoverAnchor();
      v105 = *(v104 - 8);
      v106 = v144;
      (*(v105 + 16))(v144, v145, v104);
      (*(v105 + 56))(v106, 0, 1, v104);
      sub_10000794C(v106, v126, &unk_10076FCD0, &unk_1006304D0);
      v107 = v89;
      v108 = type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider();
      swift_allocObject();
      v145 = v94;

      v109 = TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)();
      TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()();
      sub_1000079B4(v106, &unk_10076FCD0, &unk_1006304D0);
      type metadata accessor for BatchAssignPickerDetailModuleDelegate();
      v110 = swift_allocObject();
      swift_weakInit();
      swift_unknownObjectWeakInit();
      swift_weakAssign();
      v111 = v142;
      swift_unknownObjectWeakAssign();
      *(v110 + 32) = v90;
      v112 = sub_10022DFF4(&qword_100775A48, type metadata accessor for BatchAssignPickerDetailModuleDelegate, &unk_100635B70);
      v144 = v112;
      v113 = (v107 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
      *v113 = v110;
      v113[1] = v112;

      swift_unknownObjectRelease();
      v146 = *(v107 + 88);
      v148[3] = v108;
      v148[4] = &protocol witness table for TTRIRemindersListDetailPopoverAnchorProvider;
      v143 = v109;
      v148[0] = v109;

      v147 = v111;
      v114 = v127;
      TTRReminderDetailSubject.init(reminderChangeItem:)();
      v115 = v131;
      v116 = v129;
      (*(v131 + 104))(v129, enum case for TTRIReminderDetailStyle.assignmentPicker(_:), v136);
      v117 = v132;
      v118 = v133;
      (*(v133 + 104))(v132, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.assignments(_:), v137);
      v119 = type metadata accessor for TTRSectionLite();
      v120 = v134;
      (*(*(v119 - 8) + 56))(v134, 1, 1, v119);
      v121 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
      v122 = v135;
      v123 = (*(*(v121 - 8) + 56))(v135, 1, 1, v121);
      __chkstk_darwin(v123);
      v124 = v146;
      *(&v126 - 12) = v114;
      *(&v126 - 11) = v124;
      *(&v126 - 10) = v117;
      *(&v126 - 9) = v110;
      v125 = v145;
      *(&v126 - 8) = v144;
      *(&v126 - 7) = v116;
      *(&v126 - 48) = 0;
      *(&v126 - 5) = v125;
      *(&v126 - 4) = v120;
      *(&v126 - 3) = v122;
      *(&v126 - 2) = v148;
      *(&v126 - 4) = 1;
      firstly<A>(closure:)();

      sub_1000079B4(v122, &qword_10076DF30, &qword_100631A00);
      sub_1000079B4(v120, &qword_10076DF38, &qword_100631A08);
      (*(v118 + 8))(v117, v137);
      (*(v115 + 8))(v116, v136);
      (*(v128 + 8))(v114, v130);
      sub_100004758(v148);
      return;
    }

    if (v103 != enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.disallowed(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_46:
      swift_once();
LABEL_31:
      v68 = type metadata accessor for Logger();
      sub_100003E30(v68, qword_1007741F0);
      sub_100058000(&unk_100775610, &unk_1006323A0);
      v69 = swift_initStackObject();
      *(v69 + 16) = xmmword_10062D400;
      *(v69 + 32) = 0x6E756F436D657469;
      v70 = v69 + 32;
      *(v69 + 40) = 0xE900000000000074;
      v71 = v147;
      v72 = v147[2];
      *(v69 + 72) = &type metadata for Int;
      *(v69 + 48) = v72;
      v73 = sub_100008E04(v69);
      swift_setDeallocating();
      sub_1000079B4(v70, &unk_10076BA70, &qword_10062FD60);
      sub_10000FD44("Reminder List batch add tag {itemCount: %d}", 43, 2, v73);

      v74 = type metadata accessor for TTRIPopoverAnchor();
      v75 = *(v74 - 8);
      v76 = v144;
      (*(v75 + 16))(v144, v145, v74);
      v77.n128_f64[0] = (*(v75 + 56))(v76, 0, 1, v74);
      sub_1001FC3E0(v71, v76, v77);
      v56 = &unk_10076FCD0;
      v57 = &unk_1006304D0;
      v58 = v76;
      goto LABEL_19;
    }
  }
}

uint64_t sub_1001EFE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = *(v2 + 144);
  ObjectType = swift_getObjectType();
  (*(v9 + 240))(a1, ObjectType, v9);
  v11 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_1000079B4(v8, &qword_100772738, &unk_10063D2B0);
    v13 = 1;
  }

  else
  {
    v14 = *(v12 + 32);
    v22 = v11;
    v14(a2, v8, v11);
    TTRRemindersListPresenterCapabilityCore.decorateWithLocationPermissions(_:for:)();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v3 + 24);
      v16 = swift_getObjectType();
      (*(v15 + 8))(v16, v15);
      swift_unknownObjectRelease();
    }

    swift_allocObject();
    swift_weakInit();

    TTRRemindersListPresenterCapabilityCore.decorateWithImageAttachments(_:for:viewScale:thumbnailDidLoad:)();

    swift_allocObject();
    swift_weakInit();

    TTRRemindersListPresenterCapabilityCore.decorateWithLinkAttachments(_:for:linkDidLoad:)();

    v17 = swift_allocObject();
    swift_weakInit();

    sub_10024C3EC(a2, a1, sub_10023A454, v17);

    swift_allocObject();
    swift_weakInit();

    TTRRemindersListPresenterCapabilityCore.decorateWithPerson(_:for:personDidLoad:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v3 + 24);
      v19 = swift_getObjectType();
      (*(v18 + 8))(v19, v18);
      swift_unknownObjectRelease();
    }

    swift_allocObject();
    swift_weakInit();

    TTRRemindersListPresenterCapabilityCore.decorateWithAppLink(_:for:viewScale:appLinkDidLoad:)();

    sub_1001F8798(a2, a1);
    sub_10024C804(a2);
    v13 = 0;
    v11 = v22;
  }

  return (*(v12 + 56))(a2, v13, 1, v11);
}

uint64_t sub_1001F027C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  (*(v13 + 16))(ObjectType, v13);
  v15 = v12[*(v10 + 32)];
  sub_10022E05C(v12, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v15)
  {
    return 0;
  }

  v16 = *(v2 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  v17 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  swift_beginAccess();
  sub_100233874(v16 + v17, v8, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  sub_10022DFF4(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState, &unk_1006440F8);
  LOBYTE(v16) = TTRRemindersListEditingState.isEditing(_:)();
  sub_10022E05C(v8, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  if (v16)
  {
    return 0;
  }

  TTRRemindersListViewModel.Item.editableCasesOnly.getter();
  v19 = v23;
  v20 = (*(v23 + 88))(v5, v3);
  if (v20 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.reminder(_:))
  {
    goto LABEL_5;
  }

  v21 = 0;
  if (v20 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedReminder(_:) || v20 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.placeholderReminder(_:))
  {
    goto LABEL_6;
  }

  if (v20 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.editableSection(_:))
  {
LABEL_5:
    v21 = 1;
LABEL_6:
    v22 = v21;
    (*(v19 + 8))(v5, v3);
    return v22;
  }

  if (v20 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedEditingSection(_:))
  {
    v21 = 0;
    goto LABEL_6;
  }

  if (v20 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.nonEditable(_:))
  {
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_1001F05C8(uint64_t a1)
{
  v3 = sub_100058000(&unk_100775960, &unk_100634F40);
  __chkstk_darwin(v3 - 8);
  v5 = &v56 - v4;
  v6 = type metadata accessor for TTRSection();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_1001F027C(a1) & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  TTRRemindersListViewModel.Item.editableCasesOnly.getter();
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 != enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.reminder(_:))
  {
    if (v19 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedReminder(_:) || v19 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.placeholderReminder(_:))
    {
      goto LABEL_8;
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.editableSection(_:))
    {
      (*(v16 + 96))(v18, v15);
      v16 = *v18;
      v36 = *(v1 + 144);
      ObjectType = swift_getObjectType();
      v38 = (*(v36 + 104))(ObjectType, v36);
      if (!v38)
      {
LABEL_23:

        return _swiftEmptyArrayStorage;
      }

      v39 = v38;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v40 = *(v39 + 64);
        v41 = swift_getObjectType();
        (*(v40 + 16))(v41, v40);
        swift_unknownObjectRelease();
        v42 = v16;
        TTRSection.init(with:store:)();
        v43 = v57;
        v44 = v58;
        if ((*(v57 + 48))(v5, 1, v58) != 1)
        {
          (*(v43 + 32))(v11, v5, v44);
          v45 = *(v43 + 16);
          v45(v8, v11, v44);
          v46 = type metadata accessor for TTRIRemindersListDragSection(0);
          v47 = objc_allocWithZone(v46);
          v56 = v42;
          v48 = v43;
          v49 = v47;
          v45(&v47[OBJC_IVAR____TtC9Reminders28TTRIRemindersListDragSection_section], v8, v44);
          v65.receiver = v49;
          v65.super_class = v46;
          v50 = objc_msgSendSuper2(&v65, "init");
          v51 = *(v48 + 8);
          v51(v8, v44);
          v52 = [objc_allocWithZone(NSItemProvider) initWithObject:v50];
          v53 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v52];
          v64 = v46;
          v63[0] = v50;
          v60 = 0xD000000000000027;
          v61 = 0x8000000100677BB0;
          v54 = v50;
          AnyHashable.init<A>(_:)();
          UIDragItem.setLocalObject(_:forKey:)();
          sub_100077654(v62);
          sub_1000079B4(v63, &qword_10076AE40, &qword_10062EE50);
          sub_100058000(&qword_10076B780, &qword_10062D7C0);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_10062D420;
          *(v55 + 32) = v53;

          swift_unknownObjectRelease();
          v51(v11, v44);
          return v55;
        }

        swift_unknownObjectRelease();
        goto LABEL_22;
      }
    }

    else
    {
      if (v19 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedEditingSection(_:))
      {
        goto LABEL_8;
      }

      if (v19 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.nonEditable(_:))
      {
        return _swiftEmptyArrayStorage;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    swift_unknownObjectRelease();
    (*(v57 + 56))(v5, 1, 1, v58);
LABEL_22:
    sub_1000079B4(v5, &unk_100775960, &unk_100634F40);
    goto LABEL_23;
  }

  v20 = *(v1 + 144);
  v21 = swift_getObjectType();
  v22 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
  if (!v22)
  {
LABEL_8:
    (*(v16 + 8))(v18, v15);
    return _swiftEmptyArrayStorage;
  }

  v23 = v22;
  (*(v20 + 152))(v21, v20);
  v24 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v14, 1, v24) == 1)
  {
    sub_1000079B4(v14, &unk_10078A380, &qword_10062DE60);
    v26 = 0;
  }

  else
  {
    v26 = TTRRemindersListViewModel.ListInfo.isRecentlyDeletedList.getter();
    (*(v25 + 8))(v14, v24);
  }

  v28 = type metadata accessor for TTRIRemindersListDragReminder();
  v29 = objc_allocWithZone(v28);
  v29[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder____lazy_storage___hasSubtasks] = 2;
  *&v29[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder] = v23;
  v29[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList] = v26 & 1;
  v59.receiver = v29;
  v59.super_class = v28;
  v30 = v23;
  v31 = objc_msgSendSuper2(&v59, "init");
  v32 = [objc_allocWithZone(NSItemProvider) initWithObject:v31];
  v33 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v32];
  v64 = v28;
  v63[0] = v31;
  v60 = 0xD000000000000029;
  v61 = 0x8000000100677B80;
  v34 = v31;
  AnyHashable.init<A>(_:)();
  UIDragItem.setLocalObject(_:forKey:)();
  sub_100077654(v62);
  sub_1000079B4(v63, &qword_10076AE40, &qword_10062EE50);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10062D420;
  *(v35 + 32) = v33;

  (*(v16 + 8))(v18, v15);
  return v35;
}

uint64_t sub_1001F0DE0(uint64_t a1)
{
  v3 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  (*(v3 + 480))(v9, a1, ObjectType, v3);
  v5 = v10;
  sub_1000079B4(v9, &qword_100773350, &unk_100642630);
  if (v5)
  {
    return 1;
  }

  result = (*(v3 + 104))(ObjectType, v3);
  if (result)
  {
    sub_1002E562C(v8);
    sub_10000C36C(v8, v8[3]);
    sub_10015511C(a1, v9);
    swift_unknownObjectRelease();
    sub_100004758(v8);
    v7 = v10 != 0;
    sub_1000079B4(v9, &qword_100775A40, &qword_100636040);
    return v7;
  }

  return result;
}

void sub_1001F0F00(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v6 = v5;
  v124 = a5;
  LODWORD(v127) = a4;
  v130 = a1;
  v9 = sub_100058000(&qword_100775A18, &qword_100636028);
  __chkstk_darwin(v9 - 8);
  v11 = (&v116 - v10);
  v12 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
  v118 = *(v12 - 8);
  v119 = v12;
  __chkstk_darwin(v12);
  v117 = (&v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100058000(&qword_100775A08, &qword_100636018);
  __chkstk_darwin(v14 - 8);
  v125 = &v116 - v15;
  v16 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  v122 = *(v16 - 8);
  v123 = v16;
  __chkstk_darwin(v16);
  v121 = (&v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v18 - 8);
  v20 = &v116 - v19;
  sub_10000794C(a2, &v116 - v19, &qword_100772140, &qword_10062D9F0);
  v21 = type metadata accessor for TTRRemindersListViewModel.Item();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000079B4(v20, &qword_100772140, &qword_10062D9F0);
    v23 = 0xE300000000000000;
    v129 = 7104878;
  }

  else
  {
    sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v129 = TTRTreeStorageItem.treeItemDescription.getter();
    v23 = v24;
    (*(v22 + 8))(v20, v21);
  }

  v120 = v11;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_100003E30(v25, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062F800;
  *(inited + 32) = 0x736D657469;
  *(inited + 40) = 0xE500000000000000;
  v28 = v130;
  v29 = sub_10020C668(v130);
  v30 = sub_100058000(&unk_100781F20, &unk_10062D7E0);
  *(inited + 48) = v29;
  *(inited + 72) = v30;
  *(inited + 80) = 0x746E657261506F74;
  v31 = v129;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v31;
  *(inited + 104) = v23;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 29793;
  *(inited + 168) = &type metadata for Int;
  *(inited + 136) = 0xE200000000000000;
  *(inited + 144) = a3;

  v32 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  v126 = v26;
  sub_10000FD44("Reminder list move items {items: %@, toParent: %@, at: %d}", 58, 2, v32);

  v128 = v23;
  v33 = v6;
  if (v127)
  {
    v34 = *(v6 + 144);
    ObjectType = swift_getObjectType();
    a3 = (*(v34 + 520))(a3, a2, v28, ObjectType, v34);
  }

  v36 = *(v6 + 144);
  v37 = swift_getObjectType();
  (*(v36 + 496))(&v132, a2, a3, v37, v36);
  if (v133)
  {
    sub_100005FD0(&v132, v135);
    v38 = sub_10057EEDC(v130, v37, v36);
    if (v38)
    {
      v39 = v38;
      v40 = v136;
      v41 = v137;
      sub_10000C36C(v135, v136);
      (*(v41 + 32))(&v132, v39, v40, v41);

      v42 = v133;
      v43 = v134;
      sub_10000C36C(&v132, v133);
      v44 = (v43[4])(v42, v43);
      if (!v44)
      {
        v89 = v128;

        v90 = v130;

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v131[0] = swift_slowAlloc();
          *v56 = 136315394;
          sub_10020C668(v90);
          v91 = Array.description.getter();
          v93 = v92;

          v94 = sub_100004060(v91, v93, v131);

          *(v56 + 4) = v94;
          *(v56 + 12) = 2080;
          v95 = sub_100004060(v129, v89, v131);

          *(v56 + 14) = v95;
          v62 = "Failed to commit move. Cannot get optimistic moves {items: %s, newParent: %s}";
          goto LABEL_33;
        }

LABEL_35:

        goto LABEL_48;
      }

      if (*(v44 + 16))
      {
        v45 = v44;
        (*(v36 + 352))();
        if ((v124 & 1) == 0)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v46 = *(v33 + 24);
            v47 = swift_getObjectType();
            (*(v46 + 128))(v45, v47, v46);
            swift_unknownObjectRelease();
          }
        }

        v48 = v133;
        v49 = v134;
        sub_10000C36C(&v132, v133);
        v50 = v125;
        (v49[5])(v48, v49);
        v51 = (*(v122 + 48))(v50, 1, v123);
        v52 = v128;
        if (v51 == 1)
        {
          sub_1000079B4(v125, &qword_100775A08, &qword_100636018);

          v53 = v130;

          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v131[0] = swift_slowAlloc();
            *v56 = 136315394;
            sub_10020C668(v53);
            v57 = Array.description.getter();
            v59 = v58;

            v60 = sub_100004060(v57, v59, v131);

            *(v56 + 4) = v60;
            *(v56 + 12) = 2080;
            v61 = sub_100004060(v129, v52, v131);

            *(v56 + 14) = v61;
            v62 = "Failed to commit move. Cannot get params for saving {items: %s, newParent: %s}";
LABEL_33:
            _os_log_impl(&_mh_execute_header, v54, v55, v62, v56, 0x16u);
            swift_arrayDestroy();

LABEL_48:

LABEL_53:
            sub_100004758(&v132);
            sub_100004758(v135);
            return;
          }

          goto LABEL_35;
        }

        v106 = v121;
        sub_10023409C(v125, v121, type metadata accessor for TTRRemindersListMovingRemindersParams);
        sub_100245068(v130);
        sub_1002458E8(v106);
        v107 = type metadata accessor for TTRRemindersListMovingRemindersParams;
LABEL_52:
        sub_10022E05C(v106, v107);
        goto LABEL_53;
      }

LABEL_50:

      goto LABEL_53;
    }

    sub_100004758(v135);
  }

  else
  {
    sub_1000079B4(&v132, &qword_100775A10, &qword_100636020);
  }

  v63 = (*(v36 + 104))(v37, v36);
  if (v63)
  {
    v64 = v63;
    sub_1002E5744(a2, a3, &v132);
    if (v133)
    {
      sub_100005FD0(&v132, v135);
      *&v132 = v130;
      v65 = v64;
      sub_100058000(&qword_10076E0B0, &unk_100631BD0);
      sub_100058000(&qword_10076F9F8, &unk_100632760);
      sub_10000E188(&unk_100784560, &qword_10076E0B0, &unk_100631BD0, &protocol conformance descriptor for [A]);
      v66 = Sequence.completeCompactMap<A>(_:)();
      if (v66)
      {
        v67 = v66;
        v127 = v65;
        v68 = *sub_10000C36C(v135, v136);
        v69 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.SectionsInsertionPlan(0);
        v70 = swift_allocObject();
        *(v70 + 16) = _swiftEmptyArrayStorage;
        *(v70 + 24) = 1;
        v71 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan____lazy_storage___position;
        v72 = sub_100058000(&unk_100775A30, &qword_1006326E0);
        (*(*(v72 - 8) + 56))(v70 + v71, 1, 1, v72);
        *(v70 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredMoveSubjects) = 0;
        *(v70 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredLocalItems) = 0;
        *(v70 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_insertionRequest) = v68;

        sub_100156D70(v67);

        v133 = v69;
        v134 = &off_1007182F0;
        *&v132 = v70;
        sub_10000C36C(&v132, v69);
        v73 = sub_10015733C();
        if (v73)
        {
          if (!*(v73 + 16))
          {

            swift_unknownObjectRelease();
            goto LABEL_50;
          }

          v74 = v73;
          (*(v36 + 352))();
          if ((v124 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
          {
            v75 = *(v33 + 24);
            v76 = swift_getObjectType();
            (*(v75 + 128))(v74, v76, v75);
            swift_unknownObjectRelease();
          }

          sub_10000C36C(&v132, v133);
          v77 = v120;
          sub_10015762C(v120);
          v78 = (*(v118 + 48))(v77, 1, v119);
          v79 = v128;
          if (v78 != 1)
          {

            v115 = v77;
            v106 = v117;
            sub_10023409C(v115, v117, type metadata accessor for TTRRemindersListMovingSectionsParams);
            sub_100247324(v106);
            swift_unknownObjectRelease();
            v107 = type metadata accessor for TTRRemindersListMovingSectionsParams;
            goto LABEL_52;
          }

          sub_1000079B4(v77, &qword_100775A18, &qword_100636028);

          v80 = v130;

          v54 = Logger.logObject.getter();
          v81 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v54, v81))
          {
            v82 = swift_slowAlloc();
            v131[0] = swift_slowAlloc();
            *v82 = 136315394;
            sub_10020C668(v80);
            v83 = Array.description.getter();
            v85 = v84;

            v86 = sub_100004060(v83, v85, v131);

            *(v82 + 4) = v86;
            *(v82 + 12) = 2080;
            v87 = sub_100004060(v129, v79, v131);

            *(v82 + 14) = v87;
            v88 = "Failed to commit move. Cannot get params for saving {items: %s, newParent: %s}";
LABEL_45:
            _os_log_impl(&_mh_execute_header, v54, v81, v88, v82, 0x16u);
            swift_arrayDestroy();

LABEL_47:
            swift_unknownObjectRelease();
            goto LABEL_48;
          }
        }

        else
        {
          v108 = v128;

          v109 = v130;

          v54 = Logger.logObject.getter();
          v81 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v54, v81))
          {
            v82 = swift_slowAlloc();
            v131[0] = swift_slowAlloc();
            *v82 = 136315394;
            sub_10020C668(v109);
            v110 = Array.description.getter();
            v112 = v111;

            v113 = sub_100004060(v110, v112, v131);

            *(v82 + 4) = v113;
            *(v82 + 12) = 2080;
            v114 = sub_100004060(v129, v108, v131);

            *(v82 + 14) = v114;
            v88 = "Failed to commit move. Cannot get optimistic moves {items: %s, newParent: %s}";
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      swift_unknownObjectRelease();
      sub_100004758(v135);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1000079B4(&v132, &unk_100775A20, &unk_100636030);
    }
  }

  v96 = v128;

  v97 = v130;

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v135[0] = swift_slowAlloc();
    *v100 = 136315394;
    sub_10020C668(v97);
    v101 = Array.description.getter();
    v103 = v102;

    v104 = sub_100004060(v101, v103, v135);

    *(v100 + 4) = v104;
    *(v100 + 12) = 2080;
    v105 = sub_100004060(v129, v96, v135);

    *(v100 + 14) = v105;
    _os_log_impl(&_mh_execute_header, v98, v99, "Failed to commit move. Cannot get params for moving {items: %s, newParent: %s}", v100, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_1001F1FE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v78 = *(v6 - 8);
  __chkstk_darwin(v6);
  v76 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v70 - v9;
  v11 = sub_100058000(&qword_100775A08, &qword_100636018);
  __chkstk_darwin(v11 - 8);
  v13 = &v70 - v12;
  v74 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_100003E30(v15, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x736D657469;
  *(inited + 40) = 0xE500000000000000;
  v18 = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 48) = a1;
  *(inited + 72) = v18;
  *(inited + 80) = 1869901417;
  *(inited + 88) = 0xE400000000000000;
  v19 = sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);

  v79 = v6;
  v75 = v19;
  v20 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v20;
  *(inited + 104) = v21;
  v22 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  v77 = v16;
  sub_10000FD44("Reminders List drop item(s) into item {items: %@, into: %@}", 59, 2, v22);

  v72 = v3;
  v23 = *(v3 + 144);
  ObjectType = swift_getObjectType();
  (*(v23 + 504))(&v81, a2, ObjectType, v23);
  if (!v82)
  {
    sub_1000079B4(&v81, &qword_100775A10, &qword_100636020);
    goto LABEL_10;
  }

  sub_100005FD0(&v81, v84);
  v25 = sub_10057EEDC(a1, ObjectType, v23);
  if (!v25)
  {
    sub_100004758(v84);
LABEL_10:
    v46 = v78;
    v47 = v76;
    v48 = v79;
    (*(v78 + 16))(v76, a2, v79);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v84[0] = swift_slowAlloc();
      *v51 = 136315394;
      sub_10020C668(a1);
      v52 = Array.description.getter();
      v54 = v53;

      v55 = sub_100004060(v52, v54, v84);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      v56 = TTRTreeStorageItem.treeItemDescription.getter();
      v58 = v57;
      (*(v46 + 8))(v47, v48);
      v59 = sub_100004060(v56, v58, v84);

      *(v51 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed to commit drop into. Cannot get params for dropping {items: %s, target: %s}", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v46 + 8))(v47, v48);
    }

LABEL_18:
    v68 = 0;
    return v68 & 1;
  }

  v26 = v25;
  v76 = v10;
  v28 = v85;
  v27 = v86;
  sub_10000C36C(v84, v85);
  (*(v27 + 32))(&v81, v26, v28, v27);

  v29 = v82;
  v30 = v83;
  sub_10000C36C(&v81, v82);
  (*(v30 + 40))(v29, v30);
  if ((*(v73 + 48))(v13, 1, v74) == 1)
  {
    sub_1000079B4(v13, &qword_100775A08, &qword_100636018);
    v31 = v78;
    v32 = v76;
    v33 = a2;
    v34 = v79;
    (*(v78 + 16))(v76, v33, v79);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v37 = 136315394;
      sub_10020C668(a1);
      v38 = Array.description.getter();
      v40 = v39;

      v41 = sub_100004060(v38, v40, &v80);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v42 = TTRTreeStorageItem.treeItemDescription.getter();
      v44 = v43;
      (*(v31 + 8))(v32, v34);
      v45 = sub_100004060(v42, v44, &v80);

      *(v37 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to commit drop into. Cannot get params for saving {items: %s, target: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v31 + 8))(v32, v34);
    }

    sub_100004758(&v81);
    sub_100004758(v84);
    goto LABEL_18;
  }

  v60 = v71;
  sub_10023409C(v13, v71, type metadata accessor for TTRRemindersListMovingRemindersParams);
  v61 = v72;
  sub_100245068(a1);
  v62 = v82;
  v63 = v83;
  sub_10000C36C(&v81, v82);
  v64 = (*(v63 + 32))(v62, v63);
  if (v64)
  {
    v65 = v64;
    (*(v23 + 352))(v64, ObjectType, v23);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v66 = *(v61 + 24);
      v67 = swift_getObjectType();
      (*(v66 + 128))(v65, v67, v66);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v68 = sub_100247638(v60);
  sub_10022E05C(v60, type metadata accessor for TTRRemindersListMovingRemindersParams);
  sub_100004758(&v81);
  sub_100004758(v84);
  return v68 & 1;
}

double sub_1001F2980@<D0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 136);
  v11 = *(v3 + 144);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 16);
  v57 = ObjectType;
  v59 = v11;
  v13(ObjectType, v11);
  LOBYTE(v7) = v9[*(v7 + 36)];
  sub_10022E05C(v9, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v7)
  {
    v14 = type metadata accessor for TTRIRemindersListUnsupportedDropRequest();
    v15 = swift_allocObject();
    v17 = &off_100726B00;
    a2[3] = v14;
LABEL_31:
    a2[4] = v17;
    *a2 = v15;
    return result;
  }

  v56 = v10;
  v58 = a1;
  if (a1 >> 62)
  {
LABEL_36:
    *&v62[0] = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    *&v62[0] = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v18 != 0;
  if (!v18)
  {
    v54 = _swiftEmptyArrayStorage;
    v37 = v56;
    if (!v19)
    {
      goto LABEL_33;
    }

LABEL_27:
    *v62 = *(v3 + 72);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v38 = *(v3 + 160);
      v39 = swift_getObjectType();
      v66[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
      v66[4] = &off_10071AA88;
      v66[0] = v3;
      v40 = *(v38 + 8);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v41 = v40(v66, v39, v38);
      swift_unknownObjectRelease();
      sub_100004758(v66);
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v41 = 0;
    }

    v42 = type metadata accessor for TTRIRemindersListInAppDragReminderDropRequest();
    v15 = swift_allocObject();
    *(v15 + 16) = v54;
    *(v15 + 24) = v37;
    *(v15 + 32) = v59;
    result = v62[0];
    *(v15 + 40) = *v62;
    *(v15 + 56) = v41;
    v17 = &off_100726AA8;
    a2[3] = v42;
    goto LABEL_31;
  }

  v51 = 1;
  v52 = v3;
  v53 = a2;
  v3 = 0;
  v20 = 0;
  a2 = v58;
  v60 = 0x8000000100677B80;
  v61 = v58 & 0xC000000000000001;
  v55 = v59 + 488;
  v54 = _swiftEmptyArrayStorage;
  while (2)
  {
    v21 = v20;
    while (1)
    {
      if (v61)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *(*&v62[0] + 16))
        {
          goto LABEL_35;
        }

        v22 = a2[v21 + 4];
      }

      v23 = v22;
      v20 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v24 = type metadata accessor for TTRIRemindersListDragReminder();
      v64 = 0xD000000000000029;
      v65 = v60;
      v25 = v23;
      AnyHashable.init<A>(_:)();
      UIDragItem.localObject<A>(ofType:forKey:)();
      sub_100077654(v66);
      a1 = v67;
      if (v67)
      {
        break;
      }

LABEL_9:
      ++v21;
      if (v20 == v18)
      {
        v36 = v3;
        a2 = v53;
        v3 = v52;
        v37 = v56;
        if (v36)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }
    }

    v26 = *(v67 + OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder);
    v27 = *(v67 + OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList);
    v28 = objc_allocWithZone(v24);
    v28[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder____lazy_storage___hasSubtasks] = 2;
    *&v28[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder] = v26;
    v28[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList] = v27;
    v63.receiver = v28;
    v63.super_class = v24;
    v29 = v26;
    v30 = objc_msgSendSuper2(&v63, "init");

    a1 = *(v59 + 488);
    v31 = *&v30[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];
    v32 = (a1)();

    if ((v32 & 1) == 0)
    {

      v3 = 1;
      a2 = v58;
      goto LABEL_9;
    }

    a1 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1005473DC(0, *(a1 + 16) + 1, 1, a1);
    }

    a2 = v58;
    v34 = *(a1 + 16);
    v33 = *(a1 + 24);
    if (v34 >= v33 >> 1)
    {
      a1 = sub_1005473DC((v33 > 1), v34 + 1, 1, a1);
    }

    *(a1 + 16) = v34 + 1;
    v54 = a1;
    v35 = a1 + 16 * v34;
    *(v35 + 32) = v30;
    *(v35 + 40) = v25;
    v3 = 1;
    if (v20 != v18)
    {
      continue;
    }

    break;
  }

  a2 = v53;
  v3 = v52;
  v37 = v56;
  if (v51)
  {
    goto LABEL_27;
  }

LABEL_33:

  v43 = *(v3 + 72);
  v44 = *(v3 + 80);
  v45 = *(v3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  v46 = type metadata accessor for TTRIRemindersListOutOfAppDragItemDropRequest();
  v47 = swift_allocObject();
  v48 = v59;
  v47[2] = v58;
  v47[3] = v37;
  v47[4] = v48;
  v47[5] = v43;
  v47[6] = v44;
  type metadata accessor for TTRRemindersListOutOfAppDragItemDropUtils();
  v49 = swift_allocObject();
  v49[2] = v37;
  v49[3] = v48;
  v49[4] = v43;
  v49[5] = v44;
  v49[6] = v45;
  v49[7] = &off_10072C878;
  v47[7] = v49;
  a2[3] = v46;
  a2[4] = &off_100726A38;
  *a2 = v47;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();

  return result;
}

double sub_1001F2F44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_100249258(a1);
  v8 = [objc_opt_self() generalPasteboard];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10062D420;
  *(v9 + 32) = v7;
  v10 = v7;
  sub_100058000(&qword_100775870, &qword_100635EC8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setObjects:isa];

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v2;
  v14[5] = a1;
  sub_10009E31C(0, 0, v6, &unk_100636010, v14);

  return result;
}

void sub_1001F3140(uint64_t a1, __n128 a2)
{
  v2 = sub_100249258(a1);
  v3 = [objc_opt_self() generalPasteboard];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10062D420;
  *(v4 + 32) = v2;
  v5 = v2;
  sub_100058000(&qword_100775870, &qword_100635EC8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setObjects:isa];
}

BOOL sub_1001F3234(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  sub_100058000(&qword_100772150, &unk_100635D00);
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D400;
  (*(v10 + 16))(v12 + v11, a1, v9);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v3;
  sub_10009E31C(0, 0, v8, &unk_100636000, v15);

  v16 = sub_100249E94(v12, a2);

  return v16 > 0;
}

uint64_t sub_1001F3444(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, __n128 a5)
{
  v6 = v5;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v15 - 8);
  v17 = v26 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v6;
  sub_10009E31C(0, 0, v17, &unk_100635FF8, v20);

  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v21 = (*(v12 + 88))(v14, v11);
  if (v21 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    swift_getObjectType();
    v22 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
    v23 = v22;
    if (v22 && (v26[1] = v22, sub_100003540(0, &qword_10076BB00, REMReminder_ptr), (TTRReminderProtocol.isRecurringReminderThatCanAdvanceForward.getter() & 1) != 0))
    {
      sub_10020CC08(a1, a2, a3, a4);
    }

    else
    {
      sub_10024A0F0(a1, a2);
      a3(1);
    }

    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    if (v21 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v21 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      (*(v12 + 8))(v14, v11);
    }

    else if (v21 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    return (a3)(0);
  }
}

BOOL sub_1001F376C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListPostponeType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v1;
  sub_10009E31C(0, 0, v8, &unk_100635FE8, v11);

  (*(v3 + 104))(v5, enum case for TTRRemindersListPostponeType.today(_:), v2);
  v12 = sub_10024A3F4(v5);
  (*(v3 + 8))(v5, v2);
  return v12 > 0;
}

BOOL sub_1001F3968(uint64_t a1)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x736D657469;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 48) = a1;

  v5 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminder list indent items (make subtasks) {items: %@}", 54, 2, v5);

  v6 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  v10 = (*(v6 + 536))(a1, ObjectType, v6);
  if (v10)
  {
    v11 = v8;
    v12 = v9;
    v13 = *(v6 + 352);

    v13(v14, ObjectType, v6);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v1 + 24);
      v16 = swift_getObjectType();
      (*(v15 + 128))(v10, v16, v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_100261BA4(a1, v11, v12);
  }

  return v10 != 0;
}

BOOL sub_1001F3B98(void *a1)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x736D657469;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 48) = a1;

  v5 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminder list outdent items (make tasks) {items: %@}", 52, 2, v5);

  v6 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  v10 = (*(v6 + 544))(a1, ObjectType, v6);
  if (v10)
  {
    v11 = v8;
    v12 = v9;
    v13 = *(v6 + 352);

    v13(v14, ObjectType, v6);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v1 + 24);
      v16 = swift_getObjectType();
      (*(v15 + 128))(v10, v16, v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_100262188(a1, v11, v12);
  }

  return v10 != 0;
}

void sub_1001F3DC8(uint64_t a1)
{
  v23 = a1;
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 104);
  sub_100058000(&qword_100772150, &unk_100635D00);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D400;
  (*(v11 + 16))(v13 + v12, v23, v10);
  v14 = *(v9 + 72);
  ObjectType = swift_getObjectType();
  (*(v14 + 16))(ObjectType, v14);
  LODWORD(v12) = v5[*(v3 + 52)];
  sub_10022E05C(v5, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v12 == 1)
  {

    (*(v6 + 104))(v8, enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.disallowed(_:), v24);
    return;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchSetPriorityLevel(for:)();

  v16 = v24;
  v17 = (*(v6 + 88))(v8, v24);
  if (v17 == enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.allowed(_:))
  {
    (*(v6 + 96))(v8, v16);
    v18 = sub_1000A99B8(*v8);
    if ((v19 & 1) == 0)
    {
      if (v18 > 1)
      {
        if (v18 == 2 || v18 == 3)
        {
          goto LABEL_7;
        }
      }

      else if (!v18 || v18 == 1)
      {
LABEL_7:

        return;
      }
    }
  }

  else if (v17 == enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.disallowed(_:))
  {
    return;
  }

  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003E30(v20, qword_1007741F0);
  v21 = sub_100008E04(_swiftEmptyArrayStorage);
  v22 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown priority level", 22, 2uLL, v21, v22);
  __break(1u);
}

void sub_1001F4174(uint64_t a1)
{
  v21 = a1;
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 104);
  sub_100058000(&qword_100772150, &unk_100635D00);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D400;
  (*(v11 + 16))(v13 + v12, v21, v10);
  v14 = *(v9 + 72);
  ObjectType = swift_getObjectType();
  (*(v14 + 16))(ObjectType, v14);
  LODWORD(v12) = v5[*(v3 + 52)];
  sub_10022E05C(v5, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v12 == 1)
  {

    (*(v6 + 104))(v8, enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.disallowed(_:), v22);
  }

  else
  {
    TTRRemindersListPresenterCapabilityCore.paramsForBatchSetPriorityLevel(for:)();

    v16 = v22;
    v17 = (*(v6 + 88))(v8, v22);
    if (v17 == enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.allowed(_:))
    {
      (*(v6 + 8))(v8, v16);
    }

    else if (v17 != enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.disallowed(_:))
    {
      if (qword_100767008 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100003E30(v18, qword_1007741F0);
      v19 = sub_100008E04(_swiftEmptyArrayStorage);
      v20 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown priority level", 22, 2uLL, v19, v20);
      __break(1u);
    }
  }
}

uint64_t sub_1001F44B8(uint64_t a1, uint64_t a2)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x6C6576656CLL;
  *(inited + 40) = 0xE500000000000000;
  type metadata accessor for REMReminderPriorityLevel(0);
  *(inited + 48) = a2;
  *(inited + 72) = v6;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(inited + 120) = v7;
  v8 = sub_1000317B8((inited + 96));
  v9 = *(v7 - 8);
  v10 = *(v9 + 16);
  v11 = v9 + 16;
  v10(v8, a1, v7);
  v12 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminder list set priority level {level %@} {items: %@}", 55, 2, v12);

  sub_100058000(&qword_100772150, &unk_100635D00);
  v13 = (*(v11 + 64) + 32) & ~*(v11 + 64);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  v10((v14 + v13), a1, v7);
  sub_10024A9F4(a2, v14);
}

objc_class *sub_1001F46C8()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin(v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRListType.SortingCapability();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v8 + 584))(ObjectType, v8);
  v10 = TTRListType.SortingCapability.supportedSortingStyles.getter();
  (*(v5 + 8))(v7, v4);
  (*(v8 + 576))(ObjectType, v8);
  v11 = swift_allocObject();
  swift_weakInit();

  isa = sub_10017C544(v10, v3, sub_100236258, v11).super.super.isa;
  v13 = sub_10017C8B0(v10, v3, sub_100236258, v11);

  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v14._countAndFlagsBits = 0x79422074726F53;
  v15._countAndFlagsBits = 0xD000000000000022;
  v15._object = 0x8000000100678920;
  v14._object = 0xE700000000000000;
  v16 = TTRLocalizedString(_:comment:)(v14, v15);
  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 __systemImageNamedSwift:v18];

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10062D410;
  *(v20 + 32) = isa;
  *(v20 + 40) = v13;
  v21 = isa;
  v22 = v13;
  v29.value.super.isa = v19;
  v29.is_nil = 0;
  v23 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v29, 0, 0xFFFFFFFFFFFFFFFFLL, v20, v26).super.super.isa;
  REMRemindersListDataView.SortingStyle.labelTextForSortingStyle()();
  v24 = String._bridgeToObjectiveC()();

  [(objc_class *)v23 setSubtitle:v24];

  (*(v27 + 8))(v3, v28);

  return v23;
}

uint64_t sub_1001F4A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v32 = a3;
  v30 = a2;
  v5 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v5 - 8);
  v34 = &v27 - v6;
  v7 = sub_100058000(&qword_100775608, &qword_1006367C0);
  __chkstk_darwin(v7 - 8);
  v31 = &v27 - v8;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  v29 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(inited + 72) = v11;
  v12 = sub_1000317B8((inited + 48));
  v13 = *(v11 - 8);
  v14 = *(v13 + 16);
  v14(v12, a1, v11);
  v15 = sub_100008E04(inited);
  v28 = a1;
  v16 = v15;
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminder list request permanently hide items in recently deleted list {items: %@}", 81, 2, v16);

  sub_100058000(&qword_100772150, &unk_100635D00);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v29;
  v14((v18 + v17), v28, v11);
  v19 = enum case for REMRDLUserOperationDetail.rdl_swipeToPermanentlyDelete(_:);
  v20 = type metadata accessor for REMRDLUserOperationDetail();
  v21 = *(v20 - 8);
  v22 = v31;
  (*(v21 + 104))(v31, v19, v20);
  (*(v21 + 56))(v22, 0, 1, v20);
  v23 = type metadata accessor for TTRIPopoverAnchor();
  v24 = *(v23 - 8);
  v25 = v34;
  (*(v24 + 16))(v34, v30, v23);
  (*(v24 + 56))(v25, 0, 1, v23);
  sub_10020D648(v18, 0, v22, v25, v32, v33);
  swift_setDeallocating();
  (*(v13 + 8))(v18 + v17, v11);
  swift_deallocClassInstance();
  sub_1000079B4(v25, &unk_10076FCD0, &unk_1006304D0);
  return sub_1000079B4(v22, &qword_100775608, &qword_1006367C0);
}

uint64_t sub_1001F4E98()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = v0[20];
    ObjectType = swift_getObjectType();
    v8[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
    v8[4] = &off_10071AA88;
    v8[0] = v0;
    v3 = *(v1 + 8);

    v4 = v3(v8, ObjectType, v1);
    swift_unknownObjectRelease();
    sub_100004758(v8);
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v5 = v0[7];
  v6 = v0[8];
  sub_10000AE84((v0 + 4), v5);
  (*(v6 + 24))(v4, v5, v6);
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();

  TTRUserDefaultsShowRemindersAsOverdueObserver.start(_:)();
}

id sub_1001F4FF8(char *a1, char *a2, uint64_t a3, char a4, __n128 a5, double a6)
{
  LOBYTE(v6) = a4;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v68 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v13 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v67 - v16;
  v17 = type metadata accessor for TTRRemindersListViewModel.Item();
  v83 = *(v17 - 1);
  __chkstk_darwin(v17);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v78 = &v67 - v21;
  if (qword_100767008 != -1)
  {
LABEL_33:
    swift_once();
  }

  v77 = v19;
  v73 = v12;
  v74 = v10;
  v69 = a2;
  v22 = type metadata accessor for Logger();
  sub_100003E30(v22, qword_1007741F0);
  v23 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Reminders List Request Context Menu", 35, 2, v23);

  v86 = v17;
  v82 = a1;
  v67 = v13;
  if ((v6 & 1) == 0)
  {
    sub_100058000(&qword_100772150, &unk_100635D00);
    a2 = v83;
    v27 = *(v83 + 80);
    v84 = *(v83 + 72);
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_10062D400;
    v85 = *(a2 + 2);
    v85(a3 + ((v27 + 32) & ~v27), a1, v17);
LABEL_8:
    v33 = *(a3 + 16);

    if (v33)
    {
      v12 = v33;
      a1 = 0;
      v78 = (v83 + 16);
      v17 = (v68 + 88);
      LODWORD(v76) = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
      LODWORD(v75) = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
      v83 += 8;
      v34 = (v68 + 8);
      v19 = (a3 + ((v27 + 32) & ~v27));
      v6 = v73;
      while (1)
      {
        if (a1 >= *(a3 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v13 = a3;
        a2 = v77;
        v35 = v86;
        v85(v77, v19, v86);
        TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
        v10 = v74;
        v36 = (*v17)(v6, v74);
        if (v36 != v76 && v36 != v75)
        {
          break;
        }

        ++a1;
        (*v83)(a2, v35);
        (*v34)(v6, v10);
        v19 += v84;
        a3 = v13;
        if (v12 == a1)
        {
          goto LABEL_17;
        }
      }

      if (v36 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
      {
        swift_bridgeObjectRelease_n();
        (*v83)(v77, v86);
        (*v34)(v6, v10);
        return 0;
      }

      v46 = v86;
      if (v36 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        swift_bridgeObjectRelease_n();
        (*v83)(v77, v46);
        return 0;
      }

      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

LABEL_17:

    v38 = v82;
    v39 = v69;
    if (*(a3 + 16) == 1)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (v39)
        {
          swift_getObjectType();
          v40 = v39;
          v41 = TTRIShowRemindersEditableCell.attachmentAndView(at:)();
          if (v41)
          {
            v43 = v42;
            v44 = v41;
            v45 = sub_1002041A8(v41, v38, v42);

            if (v45)
            {

              return v45;
            }

            v40 = v44;
          }
        }
      }
    }

    v48 = v80;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v49 = v67;
    v50 = v81;
    (*(v67 + 16))(v79, v48, v81);
    sub_10022DFF4(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
    v51 = a3;
    AnyHashable.init<A>(_:)();
    (*(v49 + 8))(v48, v50);
    v52 = type metadata accessor for TTRITreeViewContextMenuItemIdentifier();
    memset(v89, 0, sizeof(v89));
    v53 = objc_allocWithZone(v52);
    sub_1001D3A20(aBlock, v53 + OBJC_IVAR____TtC9Reminders37TTRITreeViewContextMenuItemIdentifier_itemID);
    sub_10000794C(v89, v53 + OBJC_IVAR____TtC9Reminders37TTRITreeViewContextMenuItemIdentifier_userInfo, &qword_10076AE40, &qword_10062EE50);
    v88.receiver = v53;
    v88.super_class = v52;
    v54 = objc_msgSendSuper2(&v88, "init");
    sub_1000079B4(v89, &qword_10076AE40, &qword_10062EE50);
    sub_100077654(aBlock);
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = swift_allocObject();
    v56[2] = v55;
    v56[3] = a3;
    v56[4] = v39;
    v57 = objc_opt_self();
    aBlock[4] = sub_100236220;
    aBlock[5] = v56;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10044EA48;
    aBlock[3] = &unk_10071C480;
    v58 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();
    v59 = v39;
    v60 = v54;

    v61 = [v57 configurationWithIdentifier:v60 previewProvider:0 actionProvider:v58];

    _Block_release(v58);
    aBlock[0] = v51;
    __chkstk_darwin(v62);
    *(&v67 - 2) = v38;
    __chkstk_darwin(v63);
    *(&v67 - 2) = sub_10023622C;
    *(&v67 - 1) = v64;
    v65 = v61;
    sub_100058000(&qword_10076E0B0, &unk_100631BD0);
    sub_10000E188(&unk_100784560, &qword_10076E0B0, &unk_100631BD0, &protocol conformance descriptor for [A]);
    Sequence.compactMapToSet<A>(_:)();

    isa = Set._bridgeToObjectiveC()().super.isa;

    [v65 setSecondaryItemIdentifiers:isa];

    v45 = v65;
    return v45;
  }

  v24 = 0;
  v75 = a3;
  v76 = *(a3 + 16);
  v72 = v83 + 16;
  v71 = (v13 + 8);
  v70 = v83 + 8;
  v25 = v78;
  while (v76 != v24)
  {
    v26 = v83;
    v27 = *(v83 + 80);
    v84 = *(v83 + 72);
    v28 = *(v83 + 16);
    v29 = v86;
    v28(v25, v75 + ((v27 + 32) & ~v27) + v84 * v24++, v86);
    v10 = v80;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v30 = v79;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    LODWORD(v85) = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
    a2 = v71;
    v31 = *v71;
    v32 = v30;
    v13 = v81;
    (*v71)(v32, v81);
    v31(v10, v13);
    (*(v26 + 8))(v25, v29);
    if (v85)
    {
      a3 = v75;

      v85 = v28;
      goto LABEL_8;
    }
  }

  return 0;
}

void sub_1001F5B30(void *a1, void *a2)
{
  v4 = [a1 identifier];
  ObjectType = swift_getObjectType();
  v9[0] = v4;
  v5 = sub_10020E568(v9);
  sub_100004758(v9);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;
    v11 = sub_1002361D0;
    v12 = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10001047C;
    ObjectType = &unk_10071C430;
    v7 = _Block_copy(v9);
    v8 = v5;

    [a2 addCompletion:v7];
    _Block_release(v7);
  }
}

uint64_t sub_1001F5C68()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  result = (*(v9 + 96))(ObjectType, v9);
  if (result)
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceTemplateContextType.sourceListForSavingAsTemplate.getter();
    swift_unknownObjectRelease();
    (*(v3 + 32))(v8, v5, v2);
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_1007741F0);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    strcpy((inited + 32), "sourceListID");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    v14 = TTRListOrCustomSmartList.objectID.getter();
    *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    *(inited + 48) = v14;
    v15 = sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
    sub_10000FD44("Reminders List Save List as Template {sourceListID: %@}", 55, 2, v15);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v1 + 24);
      v17 = swift_getObjectType();
      (*(v16 + 72))(v17, v16);
      v19 = v18;
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0;
    }

    v20 = type metadata accessor for TTRITemplateSavingDismissAnimationCoordinator();
    v21 = objc_allocWithZone(v20);
    v22 = &v21[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_presenter];
    *&v21[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_presenter + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v21[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_presentee + 8] = 0;
    swift_unknownObjectWeakInit();
    v23 = &v21[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_completion];
    *v23 = 0;
    *(v23 + 1) = 0;
    v24 = &v21[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_frameOfDestBarButtonInWindow];
    *v24 = 0u;
    *(v24 + 1) = 0u;
    v24[32] = 1;
    v25 = &v21[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView];
    *(v25 + 8) = 0;
    *(v25 + 2) = 0u;
    *(v25 + 3) = 0u;
    *v25 = 0u;
    *(v25 + 1) = 0u;
    *&v21[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceSnapshotView] = 0;
    *&v21[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_containerView] = 0;
    *&v21[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_destBarButtonView] = 0;
    *(v22 + 1) = v19;
    swift_unknownObjectWeakAssign();
    v38.receiver = v21;
    v38.super_class = v20;
    v26 = objc_msgSendSuper2(&v38, "init");
    swift_unknownObjectRelease();
    v27 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_activeTemplateSavingDismissAnimationCoordinator);
    *(v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_activeTemplateSavingDismissAnimationCoordinator) = v26;
    v28 = v26;

    v29 = swift_allocObject();
    swift_weakInit();
    v30 = &v28[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_completion];
    v31 = *&v28[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_completion];
    v32 = *&v28[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_completion + 8];
    *v30 = sub_1002361C8;
    v30[1] = v29;

    sub_1000301AC(v31, v32);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v34 = Strong, v35 = [Strong navigationController], v34, !v35))
    {
      v36 = swift_unknownObjectWeakLoadStrong();
      if (!v36)
      {
        v37 = v28;
        goto LABEL_13;
      }

      v35 = v36;
    }

    v37 = sub_1002A6970(v8, v26);
    sub_100066300();
    [v35 presentViewController:v37 animated:1 completion:0];

    v28 = v35;
LABEL_13:

    return (*(v3 + 8))(v8, v2);
  }

  return result;
}

void sub_1001F6130()
{
  v1 = v0;
  v37 = *v0;
  v2 = type metadata accessor for REMAnalyticsEvent();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMGenerativeModelsFeature();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = v0[18];
  ObjectType = swift_getObjectType();
  if ((*(v12 + 128))(ObjectType, v12))
  {
    v35 = v4;
    v36 = v2;
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_1007741F0);
    v15 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Reminders List Performing Auto-Categorization", 45, 2, v15);

    swift_getObjectType();
    v16 = dispatch thunk of TTRRemindersListDataModelSourceAutoCategorizationContextType.sourceListForAutoCategorization.getter();
    if (dispatch thunk of TTRRemindersListDataModelSourceAutoCategorizationContextType.shouldAutoCategorizeItems.getter())
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
      type metadata accessor for MainActor();

      v18 = v16;
      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      v20[4] = v1;
      v20[5] = v18;
      sub_10009E31C(0, 0, v11, &unk_100635FD8, v20);
      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for REMGenerativeModelsAvailabilityManager();
      v39 = static REMGenerativeModelsAvailabilityManager.shared.getter();
      (*(v6 + 104))(v8, enum case for REMGenerativeModelsFeature.autoCategorization(_:), v5);
      v21 = REMGenerativeModelsAvailabilityManagerType.isRestrictedFeature(_:)();
      (*(v6 + 8))(v8, v5);

      if (v21)
      {
        sub_10020E9D4();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_getObjectType();
        v22 = v16;
        dispatch thunk of TTRRemindersListInteractorType.updateAutoCategorization(for:shouldAutoCategorizeItems:deleteExistingSections:)();
        type metadata accessor for TTRUserDefaults();
        v23 = static TTRUserDefaults.appUserDefaults.getter();
        type metadata accessor for REMAnalyticsManager();
        static REMAnalyticsManager.shared.getter();
        v24 = sub_100058000(&qword_1007757E8, &unk_100635E60);
        v25 = v35;
        v26 = &v35[*(v24 + 48)];
        v27 = &v35[*(v24 + 80)];
        v28 = enum case for REMUserOperation.autoCategorizeEnable(_:);
        v29 = type metadata accessor for REMUserOperation();
        (*(*(v29 - 8) + 104))(v25, v28, v29);
        *v26 = TTRUserDefaults.activitySessionId.getter();
        v26[1] = v30;
        TTRUserDefaults.activitySessionBeginTime.getter();
        *v27 = _typeName(_:qualified:)();
        v27[1] = v31;
        v32 = v38;
        v33 = v36;
        (*(v38 + 104))(v25, enum case for REMAnalyticsEvent.userOperation(_:), v36);
        REMAnalyticsManager.post(event:)();

        swift_unknownObjectRelease();

        (*(v32 + 8))(v25, v33);
      }
    }
  }
}

uint64_t sub_1001F6674()
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_1007741F0);
  v2 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Reminders List Performing Printing", 34, 2, v2);

  v3 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v3 + 88))(&v6, ObjectType, v3);
  if (!v7)
  {
    return sub_1000079B4(&v6, &qword_1007693C0, &unk_100631DE0);
  }

  sub_100005FD0(&v6, v8);
  sub_100133FF8(v8);
  return sub_100004758(v8);
}

uint64_t sub_1001F6788(uint64_t a1, void *a2)
{
  v18.value._countAndFlagsBits = a1;
  v18.value._object = a2;
  v3 = type metadata accessor for TTRITipKitSignal();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_1007741F0);
  v7 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Reminder list request toggling show completed reminders", 55, 2, v7);

  v8 = *(v2 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
    swift_unknownObjectRelease();
  }

  sub_1004EF1A4(v8, v9);
  v10 = *(v2 + 144);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 40);
  if (v12(ObjectType, v10))
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
  }

  if (v12(ObjectType, v10))
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.setter();
    swift_unknownObjectRelease();
  }

  result = v12(ObjectType, v10);
  if (result)
  {
    swift_getObjectType();
    v14 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    result = swift_unknownObjectRelease();
    if (v14)
    {
      v15 = v17;
      (*(v17 + 104))(v5, enum case for TTRITipKitSignal.tappedShowCompletedAction(_:), v3);
      TTRITipKitSignal.donate(signalContext:)(v18);
      return (*(v15 + 8))(v5, v3);
    }
  }

  return result;
}

void sub_1001F6A2C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong, v7 = [Strong navigationController], v2, !v7))
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      return;
    }

    v7 = v3;
  }

  sub_100003540(0, &qword_1007759E0, HLPHelpViewController_ptr);
  v4 = static HLPHelpViewController.viewController(forShowing:)();
  if (v4)
  {
    v5 = v4;
    [v7 presentViewController:v4 animated:1 completion:0];

    v6 = v5;
  }

  else
  {
    v6 = v7;
  }
}

uint64_t sub_1001F6B24(uint64_t a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  strcpy((inited + 32), "hashtagLabels");
  *(inited + 46) = -4864;
  v9 = REMHashtagLabelSpecifier.description.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v11 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List change hashtag label selection {hashtagLabels: %@}", 65, 2, v11);

  v12 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  result = (*(v12 + 80))(ObjectType, v12);
  if (result)
  {
    swift_getObjectType();
    (*(v4 + 16))(v6, a1, v3);
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.setter();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1001F6D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10024ABB8(a1);
  if (v7)
  {
    if (v7 == 1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v3 + 160);
        ObjectType = swift_getObjectType();
        v17[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
        v17[4] = &off_10071AA88;
        v17[0] = v3;
        v11 = *(v9 + 8);

        v12 = v11(v17, ObjectType, v9);
        swift_unknownObjectRelease();
        sub_100004758(v17);
      }

      else
      {
        v12 = 0;
      }

      sub_1004F6B60(a1, a2, a3);
    }

    else
    {
      v13 = v7;
      v14 = v8;
      v15 = *(v3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
      if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
      {
        swift_getObjectType();
        dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
        swift_unknownObjectRelease();
      }

      sub_1004EF1A4(v15, v16);
      sub_10024F488(v13, a2, a3, v14, 0, 0, 0, 0, 0);
    }
  }
}

uint64_t sub_1001F6F10(uint64_t a1)
{
  v3 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 104))(ObjectType, v3);
  if (result)
  {
    v6 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 64);
      v8 = swift_getObjectType();
      (*(v7 + 56))(a1, v8, v7);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001F6FCC()
{
  v1 = v0;
  v2 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v2 - 8);
  v4 = &v38[-1] - v3;
  v5 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRListOrCustomSmartList();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v38[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v37 = &v38[-1] - v14;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_1007741F0);
  v16 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Reminder list request section management", 40, 2, v16);

  v17 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v17 + 192))(ObjectType, v17);
  TTRRemindersListSectionMenuCapabilities.listOrCustomSmartList.getter();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    return sub_1000079B4(v4, &unk_10076DF20, &unk_10063BD50);
  }

  v20 = v37;
  (*(v10 + 32))(v37, v4, v9);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return (*(v10 + 8))(v20, v9);
  }

  v21 = *(v0 + 160);
  v22 = swift_getObjectType();
  v38[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v38[4] = &off_10071AA88;
  v38[0] = v0;
  v23 = *(v21 + 8);

  v24 = v23(v38, v22, v21);
  swift_unknownObjectRelease();
  sub_100004758(v38);
  swift_getObjectType();
  v25 = dispatch thunk of TTRRemindersListInteractorType.store.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v27 = Strong, v28 = [Strong navigationController], v27, !v28))
  {
    v29 = swift_unknownObjectWeakLoadStrong();
    if (!v29)
    {
      v28 = v24;
      v20 = v37;
      goto LABEL_18;
    }

    v28 = v29;
  }

  v20 = v37;
  (*(v10 + 16))(v12, v37, v9);
  v30 = (*(v10 + 88))(v12, v9);
  if (v30 == enum case for TTRListOrCustomSmartList.list(_:) || v30 == enum case for TTRListOrCustomSmartList.customSmartList(_:))
  {
    (*(v10 + 96))(v12, v9);
    v31 = *v12;
    v32 = [v31 sectionContext];

    if (v32)
    {

      v33 = sub_10056EC00(v20, v25, v24, v1, &off_10071A8D8);
      v34 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v33];
      [v34 setModalPresentationStyle:2];

      v35 = swift_unknownObjectWeakLoadStrong();
      if (v35)
      {
        v36 = v35;
        UIViewController.endFirstResponderEditing()();
      }

      [v28 presentViewController:v34 animated:1 completion:{0, v37}];

      return (*(v10 + 8))(v20, v9);
    }

    v25 = v24;
LABEL_18:

    return (*(v10 + 8))(v20, v9);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001F7540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  *(inited + 48) = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 56) = v8;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0x80000001006786F0;
  *(inited + 96) = a2;
  *(inited + 104) = a3;

  v9 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List request move item to section with canonicalName {item: %@}", 73, 2, v9);

  return sub_10024B534(a1, a2, a3);
}

void *sub_1001F771C(uint64_t a1)
{
  result = sub_10024BAEC(a1);
  if (result)
  {
    v4 = result;
    v5 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v5, v6);
    sub_10024F488(a1, 0, 0xE000000000000000, v4, 0, 1, 1, 0, 0);
  }

  return result;
}

uint64_t sub_1001F7800(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListLayout();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  result = (*(v7 + 112))(ObjectType, v7);
  if (result)
  {
    swift_getObjectType();
    TTRRemindersListDataModelSourceLayoutContextType.nextSelectableLayout.getter();
    sub_10022DFF4(&qword_100770AB0, &type metadata accessor for TTRRemindersListLayout, &protocol conformance descriptor for TTRRemindersListLayout);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v11[2] == v11[0] && v11[3] == v11[1])
    {
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v4 + 8))(v6, v3);

      if ((v10 & 1) == 0)
      {
        return swift_unknownObjectRelease();
      }
    }

    sub_1001F90B0(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001F7A04@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListLayout();
  v12 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v6 + 112))(ObjectType, v6))
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    return (*(v12 + 32))(a1, v5, v3);
  }

  else
  {
    v9 = enum case for TTRRemindersListLayout.list(_:);
    v10 = *(v12 + 104);

    return v10(a1, v9, v3);
  }
}

uint64_t sub_1001F7B6C(char *a1)
{
  v3 = sub_100058000(&qword_1007759D8, &unk_100635FC0);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v23 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 144);
  v22 = v1;
  ObjectType = swift_getObjectType();
  v20 = *(v12 + 576);
  v21 = v12 + 576;
  v20(ObjectType, v12);
  sub_10022DFF4(&qword_10076BE50, &type metadata accessor for REMRemindersListDataView.SortingStyle, &protocol conformance descriptor for REMRemindersListDataView.SortingStyle);
  v14 = a1;
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v9 + 8);
  v16(v11, v8);
  if (v15)
  {
    return (v16)(v14, v8);
  }

  (*(v12 + 592))(v14, 1, ObjectType, v12);
  (*(v12 + 600))(ObjectType, v12);
  if ((*(v24 + 48))(v5, 1, v25) == 1)
  {
    v16(v14, v8);
    return sub_1000079B4(v5, &qword_1007759D8, &unk_100635FC0);
  }

  else
  {
    (*(v24 + 32))(v23, v5, v25);
    v22 = *(v22 + 80);
    v19[1] = swift_getObjectType();
    v20(ObjectType, v12);
    v18 = v23;
    dispatch thunk of TTRRemindersListInteractorType.setSortingStyle(sortingStyle:for:)();
    v16(v14, v8);
    v16(v11, v8);
    return (*(v24 + 8))(v18, v25);
  }
}

double sub_1001F7EF8()
{
  if (qword_1007674F0 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_1001F7F70()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  *&result = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v11 - v4;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_hasPreparedForModalPresentation) == 1)
  {
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003E30(v6, qword_1007741F0);
    v7 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Reminders List Dismiss", 22, 2, v7);

    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v1;
    sub_10009E31C(0, 0, v5, &unk_100635FB8, v10);
  }

  return result;
}

uint64_t sub_1001F8120@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = type metadata accessor for TTRRemindersListTips.TipID();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListTips();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListTip();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  if ((*(v12 + 88))(v15, v11) == enum case for TTRRemindersListTip.tipKit(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    v16 = type metadata accessor for TTRITipContentConfiguration(0);
    a2[3] = v16;
    a2[4] = sub_10022DFF4(&qword_1007759D0, type metadata accessor for TTRITipContentConfiguration, &protocol conformance descriptor for TTRITipContentConfiguration);
    v17 = sub_1000317B8(a2);
    TTRRemindersListTips.tip.getter();
    TTRRemindersListTips.tipID.getter();
    v18 = TTRRemindersListTips.TipID.assetColor.getter();
    (*(v4 + 8))(v6, v21);
    result = (*(v8 + 8))(v10, v7);
    *(v17 + *(v16 + 20)) = v18;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F8418@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AnyTip();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1001F8484(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRSection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  __chkstk_darwin(v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100233874(a1, v10, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v13 = *v10;
    v7 = v10 + *(sub_100058000(&qword_100770AB8, &unk_100646E60) + 48);
    v16 = [v13 objectID];
    __chkstk_darwin(v16);
    *(&v20 - 4) = v2;
    *(&v20 - 3) = v17;
    *(&v20 - 16) = 0;
    __chkstk_darwin(v17);
    *(&v20 - 4) = v2;
    *(&v20 - 3) = sub_10023A3AC;
    *(&v20 - 2) = v18;
    *(&v20 - 8) = 1;
    firstly<A>(closure:)();

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_100058000(&unk_1007759C0, &qword_100633140);
    (*(v5 + 32))(v7, v10 + *(v12 + 48), v4);
    v13 = TTRSection.objectID.getter();
    __chkstk_darwin(v13);
    *(&v20 - 4) = v2;
    *(&v20 - 3) = v14;
    *(&v20 - 16) = 0;
    __chkstk_darwin(v14);
    *(&v20 - 4) = v2;
    *(&v20 - 3) = sub_10023A394;
    *(&v20 - 2) = v15;
    *(&v20 - 8) = 1;
    firstly<A>(closure:)();

LABEL_5:

    (*(v5 + 8))(v7, v4);
    return 1;
  }

  return 0;
}

double sub_1001F8798(uint64_t a1, uint64_t a2)
{
  v18[1] = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.AssignmentData.VisibleElements();
  v19 = *(v4 - 8);
  v20 = v4;
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = *(v2 + 104);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v8 + 32))(v13 + v12, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v14 = *(v10 + 72);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 24);

  v16(ObjectType, v14);
  TTRRemindersListPresenterCapabilityCore.decorateWithAssignment(_:for:pendingMoveTargetListForHostingReminder:visibleAssignmentElements:assignmentDidLoad:)();

  (*(v19 + 8))(v6, v20);

  return result;
}

uint64_t sub_1001F89F0()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v37 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v45 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v39 = &v30[-v7];
  v8 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v8 + 208))(ObjectType, v8);
  swift_getObjectType();
  v10 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v46 = v10;
  TTRTreeContentsQueryable.allItems.getter();
  swift_unknownObjectRelease();
  v11 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  v44 = *(v11 + 16);
  if (v44)
  {
    v12 = 0;
    v42 = (v2 + 88);
    v43 = v4 + 16;
    v41 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
    v34 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
    v33 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
    v31 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
    v38 = (v2 + 8);
    v32 = (v4 + 8);
    v40 = (v4 + 32);
    v13 = _swiftEmptyArrayStorage;
    v35 = v1;
    v15 = v36;
    v14 = v37;
    v16 = v4;
    v17 = v39;
    while (v12 < *(v11 + 16))
    {
      v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v19 = v11;
      v20 = v11 + v18;
      v21 = *(v16 + 72);
      v22 = v16;
      (*(v16 + 16))(v17, v20 + v21 * v12, v15);
      TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
      v23 = (*v42)(v14, v1);
      if (v23 == v41)
      {
        (*v38)(v14, v1);
        v24 = *v40;
        (*v40)(v45, v17, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1C48(0, v13[2] + 1, 1);
          v17 = v39;
          v13 = v46;
        }

        v27 = v13[2];
        v26 = v13[3];
        if (v27 >= v26 >> 1)
        {
          sub_1004A1C48((v26 > 1), v27 + 1, 1);
          v17 = v39;
          v13 = v46;
        }

        v13[2] = v27 + 1;
        v15 = v36;
        v24(v13 + v18 + v27 * v21, v45, v36);
        v1 = v35;
        v14 = v37;
        v11 = v19;
      }

      else
      {
        if (v23 == v34 || v23 == v33)
        {
          (*v38)(v14, v1);
          v11 = v19;
          v17 = v39;
        }

        else
        {
          v11 = v19;
          v17 = v39;
          if (v23 != v31)
          {
            goto LABEL_22;
          }
        }

        (*v32)(v17, v15);
      }

      ++v12;
      v16 = v22;
      if (v44 == v12)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_20:

    return v13;
  }

  return result;
}

uint64_t sub_1001F8E54(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003E30(v10, qword_1007741F0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100004060(a1, a2, &v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "TTRIRemindersCommonPresenter: refresh all items {reason: %s}", v13, 0xCu);
    sub_100004758(v14);
  }

  v15 = *(v3 + 144);
  ObjectType = swift_getObjectType();
  (*(v15 + 208))(ObjectType, v15);
  swift_getObjectType();
  v17 = TTRRemindersListTreeContentsQueryable.itemsToRefreshForViewModelRelatedSystemStateChanges.getter();
  swift_unknownObjectRelease();
  static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
  sub_1004F1000(v9, v17);

  return (*(v7 + 8))(v9, v6);
}

void sub_1001F90B0(uint64_t a1)
{
  v2 = v1;
  v42 = *v1;
  v4 = type metadata accessor for REMAnalyticsEvent();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListLayout();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = v40 - v10;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x74756F79616CLL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = v6;
  v13 = sub_1000317B8((inited + 48));
  v14 = *(v7 + 16);
  v14(v13, a1, v6);
  v15 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List Set Layout {layout: %@}", 38, 2, v15);

  v16 = v2[18];
  ObjectType = swift_getObjectType();
  if ((*(v16 + 112))(ObjectType, v16))
  {
    v40[1] = v18;
    type metadata accessor for TTRUserDefaults();
    v19 = static TTRUserDefaults.appUserDefaults.getter();
    v20 = v46;
    v41 = a1;
    v14(v46, a1, v6);
    v21 = *(v7 + 88);
    v46 = v6;
    v22 = v21(v20, v6);
    v23 = v14;
    if (v22 != enum case for TTRRemindersListLayout.list(_:))
    {
      v40[0] = v14;
      if (v22 != enum case for TTRRemindersListLayout.columns(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v24 = v19;
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v25 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v26 = v43;
      v27 = &v43[*(v25 + 48)];
      v28 = &v43[*(v25 + 80)];
      v29 = enum case for REMUserOperation.viewAsColumns(_:);
      v30 = type metadata accessor for REMUserOperation();
      (*(*(v30 - 8) + 104))(v26, v29, v30);
      *v27 = TTRUserDefaults.activitySessionId.getter();
      v27[1] = v31;
      TTRUserDefaults.activitySessionBeginTime.getter();
      *v28 = _typeName(_:qualified:)();
      v28[1] = v32;
      v19 = v24;
      v34 = v44;
      v33 = v45;
      (*(v44 + 104))(v26, enum case for REMAnalyticsEvent.userOperation(_:), v45);
      REMAnalyticsManager.post(event:)();

      (*(v34 + 8))(v26, v33);
      v23 = v40[0];
    }

    v35 = *(v2 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v35, v36);
    swift_getObjectType();
    v23(v47, v41, v46);
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.setter();

    swift_unknownObjectRelease();
  }

  else
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "TTRIRemindersCommonPresenter: missing layoutContext", v39, 2u);
    }
  }
}