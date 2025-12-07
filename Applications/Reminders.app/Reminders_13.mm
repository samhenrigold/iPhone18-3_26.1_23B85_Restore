uint64_t sub_100155444()
{
  result = sub_100155350();
  if (result)
  {
    v1 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 64);
      ObjectType = swift_getObjectType();
      v4 = (*(v2 + 8))(ObjectType, v2);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001554CC()
{
  v1 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest____lazy_storage___hasValidInsertionLocation;
  v2 = *(v0 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest____lazy_storage___hasValidInsertionLocation);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_100155834(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_100155510@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_10076F9E8, &qword_100632750);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest____lazy_storage___creationTarget;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_10076F9E8, &qword_100632750);
  v10 = sub_100058000(&qword_100775970, &qword_100632680);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100016588(v8, a1, &qword_100775970, &qword_100632680);
  }

  sub_1000079B4(v8, &qword_10076F9E8, &qword_100632750);
  sub_100155720(v1, a1);
  sub_10000794C(a1, v5, &qword_100775970, &qword_100632680);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10000D184(v5, v1 + v9, &qword_10076F9E8, &qword_100632750);
  return swift_endAccess();
}

uint64_t sub_100155720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_parent;
  v5 = sub_100155350();
  if (v5)
  {
    v6 = v5;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 64);
      ObjectType = swift_getObjectType();
      (*(v7 + 40))(a1 + v4, ObjectType, v7);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v10 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v11 = *(*(v10 - 8) + 56);

  return v11(a2, 1, 1, v10);
}

uint64_t sub_100155834(uint64_t a1)
{
  v2 = sub_100058000(&unk_100775960, &unk_100634F40);
  __chkstk_darwin(v2 - 8);
  v4 = &v41 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v51 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v52 = *(v15 - 8);
  v53 = v15;
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&qword_100775970, &qword_100632680);
  __chkstk_darwin(v18 - 8);
  v20 = &v41 - v19;
  sub_100155510(&v41 - v19);
  v21 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
  sub_1000079B4(v20, &qword_100775970, &qword_100632680);
  if (v22 == 1)
  {
    return 0;
  }

  v23 = *(a1 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_dragAndDropCapability);
  result = sub_100155444();
  if (!result)
  {
    return result;
  }

  v42 = v4;
  v25 = TTRRemindersListTreeViewModel.presentationTree.getter();
  swift_getObjectType();
  v54 = v25;
  v26 = dispatch thunk of TTRTreeContentsQueryable.numberOfChildren(of:)();
  swift_unknownObjectRelease();
  if (*(a1 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_childIndex) < v26)
  {
    v41 = v23;
    v27 = TTRRemindersListTreeViewModel.presentationTree.getter();
    swift_getObjectType();
    v54 = v27;
    dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
    swift_unknownObjectRelease();
    TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
    v28 = v51;
    v29 = (*(v51 + 88))(v14, v12);
    if (v29 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.section(_:))
    {
      (*(v28 + 96))(v14, v12);
      v31 = v45;
      v30 = v46;
      v32 = v47;
      (*(v46 + 32))(v45, v14, v47);
      TTRRemindersListViewModel.SectionHeader.id.getter();
      v33 = v48;
      TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
      (*(v43 + 8))(v9, v44);
      v35 = v49;
      v34 = v50;
      v36 = (*(v49 + 88))(v33, v50);
      if (v36 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
      {
        (*(v35 + 8))(v33, v34);
        if (sub_100155350())
        {
          v37 = v42;
          sub_1002E8008(v17, v42);
          swift_unknownObjectRelease();

          (*(v30 + 8))(v31, v32);
          (*(v52 + 8))(v17, v53);
          v38 = type metadata accessor for TTRSection();
          v39 = 1;
          if ((*(*(v38 - 8) + 48))(v37, 1, v38) != 1)
          {
            goto LABEL_20;
          }
        }

        else
        {

          (*(v30 + 8))(v31, v32);
          (*(v52 + 8))(v17, v53);
          v40 = type metadata accessor for TTRSection();
          v37 = v42;
          (*(*(v40 - 8) + 56))(v42, 1, 1, v40);
        }

        v39 = 0;
LABEL_20:
        sub_1000079B4(v37, &unk_100775960, &unk_100634F40);
        return v39;
      }

      if (v36 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
      {

        (*(v30 + 8))(v31, v32);
        (*(v52 + 8))(v17, v53);
        (*(v35 + 8))(v33, v34);
        return 1;
      }

      if (v36 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {

        (*(v30 + 8))(v31, v32);
        (*(v52 + 8))(v17, v53);
        (*(v35 + 8))(v33, v34);
        return 0;
      }

      if (v36 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
      {

        (*(v30 + 8))(v31, v32);
        (*(v52 + 8))(v17, v53);
        return 0;
      }

LABEL_24:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    if (v29 != enum case for TTRRemindersListViewModel.Item.SectionCasesItem.unknown(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_24;
    }

    (*(v52 + 8))(v17, v53);
  }

  return 0;
}

uint64_t sub_100156054()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_parent, &qword_100772140, &qword_10062D9F0);

  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest____lazy_storage___creationTarget, &qword_10076F9E8, &qword_100632750);

  return swift_deallocClassInstance();
}

uint64_t sub_1001560F8@<X0>(char *a1@<X8>)
{
  v3 = sub_100058000(&qword_10076FA00, &unk_100632770);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan____lazy_storage___position;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_10076FA00, &unk_100632770);
  v10 = sub_100058000(&unk_100775A30, &qword_1006326E0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100016588(v8, a1, &unk_100775A30, &qword_1006326E0);
  }

  sub_1000079B4(v8, &qword_10076FA00, &unk_100632770);
  sub_100156308(v1, a1);
  sub_10000794C(a1, v5, &unk_100775A30, &qword_1006326E0);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10000D184(v5, v1 + v9, &qword_10076FA00, &unk_100632770);
  return swift_endAccess();
}

uint64_t sub_100156308@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100058000(&unk_100775960, &unk_100634F40);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for TTRSection();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v63 = *(v12 - 8);
  v64 = v12;
  __chkstk_darwin(v12);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v68 = *(v14 - 8);
  v69 = v14;
  __chkstk_darwin(v14);
  v65 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v72 = *(v16 - 8);
  v73 = v16;
  __chkstk_darwin(v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRRemindersListViewModel.Item();
  v74 = *(v19 - 8);
  v75 = v19;
  __chkstk_darwin(v19);
  v76 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v21 - 8);
  v23 = &v57 - v22;
  v24 = *(a1 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_insertionRequest);
  v61 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_dragAndDropCapability;

  v25 = sub_100155444();

  if (!v25)
  {
    goto LABEL_11;
  }

  v57 = v10;
  v58 = v8;
  v59 = v7;
  v60 = v6;
  v71 = a2;
  v26 = TTRRemindersListTreeViewModel.presentationTree.getter();
  swift_getObjectType();
  v77 = v26;
  v27 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_parent;
  sub_10000794C(v24 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_parent, v23, &qword_100772140, &qword_10062D9F0);
  v28 = dispatch thunk of TTRTreeContentsQueryable.numberOfChildren(of:)();
  sub_1000079B4(v23, &qword_100772140, &qword_10062D9F0);
  swift_unknownObjectRelease();
  if (*(v24 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_childIndex) >= v28)
  {

    a2 = v71;
    goto LABEL_11;
  }

  v29 = TTRRemindersListTreeViewModel.presentationTree.getter();
  swift_getObjectType();
  v77 = v29;
  sub_10000794C(v24 + v27, v23, &qword_100772140, &qword_10062D9F0);
  dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
  sub_1000079B4(v23, &qword_100772140, &qword_10062D9F0);
  swift_unknownObjectRelease();
  TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
  v30 = v72;
  v31 = v73;
  v32 = (*(v72 + 88))(v18, v73);
  if (v32 != enum case for TTRRemindersListViewModel.Item.SectionCasesItem.section(_:))
  {
    a2 = v71;
    if (v32 != enum case for TTRRemindersListViewModel.Item.SectionCasesItem.unknown(_:))
    {
      goto LABEL_22;
    }

    (*(v74 + 8))(v76, v75);

LABEL_11:
    v53 = sub_100058000(&qword_10076FA08, &qword_100632780);
    return (*(*(v53 - 8) + 56))(a2, 1, 1, v53);
  }

  (*(v30 + 96))(v18, v31);
  v33 = v68;
  v34 = v65;
  v35 = v18;
  v36 = v69;
  (*(v68 + 32))(v65, v35, v69);
  v37 = v62;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v38 = v66;
  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
  (*(v63 + 8))(v37, v64);
  v39 = v67;
  v40 = v70;
  v41 = (*(v67 + 88))(v38, v70);
  if (v41 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
  {
    if (v41 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
    {

      (*(v33 + 8))(v34, v36);
      (*(v74 + 8))(v76, v75);
      (*(v39 + 8))(v38, v40);
      v55 = enum case for TTRRelativeInsertionPosition.afterAll<A>(_:);
      v51 = sub_100058000(&qword_10076FA08, &qword_100632780);
      v52 = *(v51 - 8);
      v49 = v71;
      (*(v52 + 104))(v71, v55, v51);
      return (*(v52 + 56))(v49, 0, 1, v51);
    }

    a2 = v71;
    if (v41 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
    {

      (*(v33 + 8))(v34, v36);
      (*(v74 + 8))(v76, v75);
      (*(v39 + 8))(v38, v40);
      goto LABEL_11;
    }

    if (v41 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
    {

      (*(v33 + 8))(v34, v36);
      (*(v74 + 8))(v76, v75);
      goto LABEL_11;
    }

LABEL_22:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v39 + 96))(v38, v40);
  v42 = *v38;

  if (sub_100155350())
  {
    v43 = v60;
    v44 = v76;
    sub_1002E8008(v76, v60);

    swift_unknownObjectRelease();

    (*(v33 + 8))(v34, v36);
    (*(v74 + 8))(v44, v75);
    v46 = v58;
    v45 = v59;
    if ((*(v58 + 48))(v43, 1, v59) != 1)
    {
      v47 = *(v46 + 32);
      v48 = v57;
      v47(v57, v43, v45);
      v49 = v71;
      v47(v71, v48, v45);
      v50 = enum case for TTRRelativeInsertionPosition.before<A>(_:);
      v51 = sub_100058000(&qword_10076FA08, &qword_100632780);
      v52 = *(v51 - 8);
      (*(v52 + 104))(v49, v50, v51);
      return (*(v52 + 56))(v49, 0, 1, v51);
    }
  }

  else
  {

    (*(v33 + 8))(v34, v36);
    (*(v74 + 8))(v76, v75);
    v43 = v60;
    (*(v58 + 56))(v60, 1, 1, v59);
  }

  sub_1000079B4(v43, &unk_100775960, &unk_100634F40);
  v56 = sub_100058000(&qword_10076FA08, &qword_100632780);
  return (*(*(v56 - 8) + 56))(v71, 1, 1, v56);
}

uint64_t sub_100156D70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076F9C8, &qword_100632730);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v32 - v6;
  if (sub_1001554CC())
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = sub_1005473B8(0, 1, 1, _swiftEmptyArrayStorage);
    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1005473B8((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    v12 = &v9[2 * v11];
    v12[4] = sub_100158700;
    v12[5] = v8;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for TTRProcessMoveSubjects();
  *&v45 = a1;
  v13 = sub_100058000(&qword_10076F9D0, &qword_100632738);
  v14 = sub_100158618();
  v38 = v13;
  v37 = v14;
  static TTRProcessMoveSubjects.process<A>(moveSubjects:disallowOverride:moveFilters:)();
  *(v2 + 24) = TTRProcessMoveSubjects.MoveResults.shouldDisallow.getter() & 1;
  *(v2 + 16) = TTRProcessMoveSubjects.MoveResults.moveSubjects.getter();

  v15 = *(v2 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    v32[2] = v9;
    v33 = v7;
    v34 = v5;
    v35 = v4;
    v36 = v2;
    v17 = v15 + 32;
    v32[1] = v15;

    v18 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_10000794C(v17, &v45, &qword_10076F9E0, &unk_100632740);
      *&v40[9] = *&v46[9];
      v39 = v45;
      *v40 = *v46;
      v19 = v46[24];
      sub_100005FD0(&v39, v41);
      if (v19)
      {
        sub_100005FD0(v41, &v42);
        if (*(&v43 + 1))
        {
          sub_100005FD0(&v42, &v39);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_100547394(0, v18[2] + 1, 1, v18);
          }

          v21 = v18[2];
          v20 = v18[3];
          if (v21 >= v20 >> 1)
          {
            v18 = sub_100547394((v20 > 1), v21 + 1, 1, v18);
          }

          v22 = sub_10000AE84(&v39, *&v40[8]);
          v23 = __chkstk_darwin(v22);
          v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v26 + 16))(v25, v23);
          *(&v43 + 1) = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem(0);
          v44 = &off_100718370;
          v27 = sub_1000317B8(&v42);
          sub_10015869C(v25, v27);
          v18[2] = v21 + 1;
          sub_100005FD0(&v42, &v18[5 * v21 + 4]);
          sub_100004758(&v39);
          goto LABEL_10;
        }
      }

      else
      {
        sub_100004758(v41);
        v44 = 0;
        v42 = 0u;
        v43 = 0u;
      }

      sub_1000079B4(&v42, &qword_100775A40, &qword_100636040);
LABEL_10:
      v17 += 48;
      if (!--v16)
      {

        v2 = v36;
        v4 = v35;
        v5 = v34;
        v7 = v33;
        goto LABEL_20;
      }
    }
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_20:
  v28 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredMoveSubjects;
  swift_beginAccess();
  *(v2 + v28) = v18;

  swift_beginAccess();
  v29 = *(v2 + v28);
  if (v29)
  {
    swift_endAccess();
    *&v39 = v29;
    type metadata accessor for TTRRemindersListViewModel.Item();

    v30 = Sequence.completeCompactMap<A>(_:)();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    swift_endAccess();

    v30 = 0;
  }

  *(v2 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredLocalItems) = v30;
}

uint64_t sub_10015733C()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_100058000(&qword_10076FA28, &unk_1006327A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = sub_100058000(&unk_100775A30, &qword_1006326E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  sub_1001560F8(&v17 - v9);
  v11 = sub_100058000(&qword_10076FA08, &qword_100632780);
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  sub_1000079B4(v10, &unk_100775A30, &qword_1006326E0);
  if (v12 != 1 && *(v0 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredLocalItems))
  {
    v13 = *(v0 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_insertionRequest);

    v14 = sub_100155444();

    if (v14)
    {
      sub_10000794C(v13 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_parent, v3, &qword_100772140, &qword_10062D9F0);
      type metadata accessor for TTRRemindersListViewModel.Item();
      sub_10015A208(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      TTRDerivedTreeLocation.init(parent:index:)();
      v15 = TTRRemindersListTreeViewModel.steps(forMoving:to:)();

      (*(v5 + 8))(v7, v4);
      return v15;
    }
  }

  return 0;
}

uint64_t sub_10015762C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = sub_100058000(&unk_100775A30, &qword_1006326E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v62 - v4;
  v6 = sub_100058000(&qword_10076FA08, &qword_100632780);
  v70 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v62 - v7;
  v9 = sub_100058000(&unk_100775960, &unk_100634F40);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = type metadata accessor for TTRSection();
  v74 = *(v12 - 8);
  __chkstk_darwin(v12);
  v75 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_100775970, &qword_100632680);
  __chkstk_darwin(v14 - 8);
  v16 = &v62 - v15;
  v17 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v69 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v71 = &v62 - v21;
  v22 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredMoveSubjects;
  swift_beginAccess();
  v23 = *(v2 + v22);
  if (!v23)
  {
    goto LABEL_4;
  }

  v68 = v2;
  v24 = v23;

  sub_100155510(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    sub_1000079B4(v16, &qword_100775970, &qword_100632680);
LABEL_4:
    v25 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
    v26 = *(*(v25 - 8) + 56);
    v27 = v72;
    return v26(v27, 1, 1, v25);
  }

  v63 = v5;
  v62 = v8;
  v64 = v6;
  v66 = v18;
  v67 = v17;
  (*(v18 + 32))(v71, v16, v17);
  v28 = *(v24 + 16);
  v65 = v24;
  if (v28)
  {
    v29 = v24 + 32;
    v30 = (v74 + 16);
    v31 = (v74 + 56);
    v32 = (v74 + 48);
    v33 = (v74 + 32);
    v76 = _swiftEmptyArrayStorage;
    v73 = (v74 + 32);
    do
    {
      sub_10000B0D8(v29, v77);
      v34 = sub_10000C36C(v77, v77[3]);
      v35 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem(0);
      (*v30)(v11, &v34[*(v35 + 20)], v12);
      (*v31)(v11, 0, 1, v12);
      sub_100004758(v77);
      if ((*v32)(v11, 1, v12) == 1)
      {
        sub_1000079B4(v11, &unk_100775960, &unk_100634F40);
      }

      else
      {
        v36 = *v33;
        (*v33)(v75, v11, v12);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v37 = v76;
        }

        else
        {
          v37 = sub_100547428(0, v76[2] + 1, 1, v76);
        }

        v39 = v37[2];
        v38 = v37[3];
        if (v39 >= v38 >> 1)
        {
          v37 = sub_100547428((v38 > 1), v39 + 1, 1, v37);
        }

        v37[2] = v39 + 1;
        v40 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v76 = v37;
        v41 = v37 + v40 + *(v74 + 72) * v39;
        v33 = v73;
        v36(v41, v75, v12);
      }

      v29 += 40;
      --v28;
    }

    while (v28);
  }

  else
  {
    v76 = _swiftEmptyArrayStorage;
  }

  if (!v76[2])
  {
    (*(v66 + 8))(v71, v67);

    v46 = v72;
    goto LABEL_21;
  }

  v42 = v63;
  sub_1001560F8(v63);
  v43 = v70;
  v44 = v64;
  v45 = (*(v70 + 48))(v42, 1, v64);
  v47 = v71;
  v46 = v72;
  if (v45 == 1)
  {
    (*(v66 + 8))(v71, v67);

    sub_1000079B4(v42, &unk_100775A30, &qword_1006326E0);
LABEL_21:
    v25 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
    v26 = *(*(v25 - 8) + 56);
    v27 = v46;
    return v26(v27, 1, 1, v25);
  }

  v49 = *(v43 + 32);
  v50 = v62;
  v49(v62, v42, v44);
  v52 = v66;
  v51 = v67;
  v53 = v69;
  (*(v66 + 16))(v69, v47, v67);
  v54 = (*(v52 + 88))(v53, v51);
  if (v54 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.list(_:))
  {
    (*(v52 + 8))(v47, v51);

    (*(v52 + 96))(v53, v51);
    v55 = *v53;
    v56 = *(sub_100058000(&qword_10076FA20, &qword_100632798) + 64);
    *v46 = v76;
    v46[1] = v55;
    v49(v46 + v56, v50, v44);
    v57 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
LABEL_29:
    swift_storeEnumTagMultiPayload();
    return (*(*(v57 - 8) + 56))(v46, 0, 1, v57);
  }

  if (v54 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.smartList(_:))
  {
    (*(v52 + 8))(v47, v51);

    (*(v52 + 96))(v53, v51);
    v58 = *v53;
    v59 = *(sub_100058000(&qword_10076FA18, &qword_100632790) + 64);
    *v46 = v76;
    v46[1] = v58;
    v49(v46 + v59, v50, v44);
    v57 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
    goto LABEL_29;
  }

  if (v54 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.template(_:))
  {
    (*(v52 + 8))(v47, v51);

    (*(v52 + 96))(v53, v51);
    v60 = *v53;
    v61 = *(sub_100058000(&qword_10076FA10, &qword_100632788) + 64);
    *v46 = v76;
    v46[1] = v60;
    v49(v46 + v61, v50, v44);
    v57 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
    goto LABEL_29;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100157F3C@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_10000C36C(a1, a1[3]);

    LOBYTE(v5) = sub_100158708(v5);

    v6 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
    if (v5)
    {
      v7 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.accept(_:);
    }

    else
    {
      v7 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.reject(_:);
    }

    return (*(*(v6 - 8) + 104))(a3, *v7, v6);
  }

  else
  {
    v8 = enum case for TTRProcessMoveSubjects.MoveFilterStatus.accept(_:);
    v9 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
    return (*(*(v9 - 8) + 104))(a3, v8, v9);
  }
}

uint64_t sub_10015806C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_10076F9F0, &qword_100632758);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000B0D8(a1, v18);
  sub_100058000(&qword_10076F9F8, &unk_100632760);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_10015869C(v6, v10);
    v13 = type metadata accessor for TTRRemindersListViewModel.Item();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a2, v10, v13);
    sub_100158F18(v10, type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem);
    return (*(v14 + 56))(a2, 0, 1, v13);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_1000079B4(v6, &qword_10076F9F0, &qword_100632758);
    v16 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_1001582EC()
{

  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan____lazy_storage___position, &qword_10076FA00, &unk_100632770);

  return swift_deallocClassInstance();
}

void sub_1001583E4(uint64_t a1)
{
  sub_1001592D4(319, &qword_100780930, &type metadata accessor for TTRRemindersListViewModel.Item, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100014068(319, &unk_10076F828, &qword_100775970, &qword_100632680);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100158540(uint64_t a1)
{
  sub_100014068(319, &unk_10076F920, &unk_100775A30, &qword_1006326E0);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_100158618()
{
  result = qword_10076F9D8;
  if (!qword_10076F9D8)
  {
    sub_10005D20C(&qword_10076F9D0, &qword_100632738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076F9D8);
  }

  return result;
}

uint64_t sub_10015869C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100158708(uint64_t a1)
{
  v2 = type metadata accessor for TTRSection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100775970, &qword_100632680);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-1] - v7;
  v9 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem(0);
  v22 = v13;
  v23 = &off_100718370;
  v14 = sub_1000317B8(v21);
  sub_10015A1A0(a1, v14, type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem);
  if (sub_1001554CC())
  {
    sub_100155510(v8);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      sub_100093330();
      v16 = TTRRemindersListInteractorSectionsCapabilityTarget.objectID.getter();
      v17 = sub_10000C36C(v21, v22);
      (*(v3 + 16))(v5, &v17[*(v13 + 20)], v2);
      v18 = TTRSection.parentID.getter();
      (*(v3 + 8))(v5, v2);
      v15 = static NSObject.== infix(_:_:)();

      (*(v10 + 8))(v12, v9);
      goto LABEL_6;
    }

    sub_1000079B4(v8, &qword_100775970, &qword_100632680);
  }

  v15 = 0;
LABEL_6:
  sub_100004758(v21);
  return v15 & 1;
}

char *sub_100158A14(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;

    v8 = v7;
    v9 = sub_100058000(&qword_10076FA08, &qword_100632780);
    v10 = *(*(v9 - 8) + 16);
    if (EnumCaseMultiPayload == 2)
    {
      v13 = sub_100058000(&qword_10076FA10, &qword_100632788);
      v10(&a1[*(v13 + 64)], &a2[*(v13 + 64)], v9);
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = sub_100058000(&qword_10076FA18, &qword_100632790);
      }

      else
      {
        v11 = sub_100058000(&qword_10076FA20, &qword_100632798);
      }

      v10(&a1[*(v11 + 64)], &a2[*(v11 + 64)], v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100158BC8(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {

    v4 = &qword_10076FA10;
    v5 = &qword_100632788;
  }

  else if (result == 1)
  {

    v4 = &qword_10076FA18;
    v5 = &qword_100632790;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v4 = &qword_10076FA20;
    v5 = &qword_100632798;
  }

  v6 = *(sub_100058000(v4, v5) + 64);
  v7 = sub_100058000(&qword_10076FA08, &qword_100632780);
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *sub_100158CCC(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = v6;
  v8 = sub_100058000(&qword_10076FA08, &qword_100632780);
  v9 = *(*(v8 - 8) + 16);
  if (EnumCaseMultiPayload == 2)
  {
    v10 = &qword_10076FA10;
    v11 = &qword_100632788;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v10 = &qword_10076FA18;
    v11 = &qword_100632790;
  }

  else
  {
    v10 = &qword_10076FA20;
    v11 = &qword_100632798;
  }

  v12 = sub_100058000(v10, v11);
  v9(&a1[*(v12 + 64)], &a2[*(v12 + 64)], v8);
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_100158DDC(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_100158F18(a1, type metadata accessor for TTRRemindersListMovingSectionsParams);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    v6 = *(a2 + 1);
    *(a1 + 1) = v6;

    v7 = v6;
    v8 = sub_100058000(&qword_10076FA08, &qword_100632780);
    v9 = *(*(v8 - 8) + 16);
    if (EnumCaseMultiPayload == 2)
    {
      v10 = &qword_10076FA10;
      v11 = &qword_100632788;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v10 = &qword_10076FA18;
      v11 = &qword_100632790;
    }

    else
    {
      v10 = &qword_10076FA20;
      v11 = &qword_100632798;
    }

    v12 = sub_100058000(v10, v11);
    v9(&a1[*(v12 + 64)], &a2[*(v12 + 64)], v8);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100158F18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_100158F78(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = sub_100058000(&qword_10076FA08, &qword_100632780);
  v8 = *(*(v7 - 8) + 32);
  if (EnumCaseMultiPayload == 2)
  {
    v9 = &qword_10076FA10;
    v10 = &qword_100632788;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v9 = &qword_10076FA18;
    v10 = &qword_100632790;
  }

  else
  {
    v9 = &qword_10076FA20;
    v10 = &qword_100632798;
  }

  v11 = sub_100058000(v9, v10);
  v8(&a1[*(v11 + 64)], &a2[*(v11 + 64)], v7);
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_100159080(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_100158F18(a1, type metadata accessor for TTRRemindersListMovingSectionsParams);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    v7 = sub_100058000(&qword_10076FA08, &qword_100632780);
    v8 = *(*(v7 - 8) + 32);
    if (EnumCaseMultiPayload == 2)
    {
      v9 = &qword_10076FA10;
      v10 = &qword_100632788;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v9 = &qword_10076FA18;
      v10 = &qword_100632790;
    }

    else
    {
      v9 = &qword_10076FA20;
      v10 = &qword_100632798;
    }

    v11 = sub_100058000(v9, v10);
    v8(&a1[*(v11 + 64)], &a2[*(v11 + 64)], v7);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_1001591AC(uint64_t a1)
{
  sub_1001592D4(319, &unk_10076FAB0, &type metadata accessor for TTRSection, &type metadata accessor for TTRRelativeInsertionPosition);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v5 = &v4;
    swift_getTupleTypeLayout3();
    v6 = &v3;
    swift_getTupleTypeLayout3();
    v7 = &v2;
    swift_initEnumMetadataMultiPayload();
  }
}

void sub_1001592D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

char *sub_100159338(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for TTRSection();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_100159434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for TTRSection();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_1001594D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRSection();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_100159588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRSection();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_100159638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRSection();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1001596E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRSection();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1001597C0(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRSection();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100159888(uint64_t a1, char *a2)
{
  v95 = a2;
  v3 = sub_100058000(&qword_10076FA08, &qword_100632780);
  v4 = *(v3 - 8);
  v96 = v3;
  v97 = v4;
  __chkstk_darwin(v3);
  v92 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v94 = &v90 - v7;
  __chkstk_darwin(v8);
  v91 = &v90 - v9;
  __chkstk_darwin(v10);
  v93 = &v90 - v11;
  __chkstk_darwin(v12);
  v14 = &v90 - v13;
  __chkstk_darwin(v15);
  v17 = &v90 - v16;
  v18 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
  __chkstk_darwin(v18);
  v20 = (&v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v23 = (&v90 - v22);
  __chkstk_darwin(v24);
  v26 = (&v90 - v25);
  v27 = sub_100058000(&qword_10076FB70, &qword_100632838);
  __chkstk_darwin(v27 - 8);
  v29 = &v90 - v28;
  v31 = (&v90 + *(v30 + 56) - v28);
  sub_10015A1A0(a1, &v90 - v28, type metadata accessor for TTRRemindersListMovingSectionsParams);
  sub_10015A1A0(v95, v31, type metadata accessor for TTRRemindersListMovingSectionsParams);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v94 = v17;
    sub_10015A1A0(v29, v26, type metadata accessor for TTRRemindersListMovingSectionsParams);
    v52 = *v26;
    v34 = v26[1];
    v53 = *(sub_100058000(&qword_10076FA20, &qword_100632798) + 64);
    v36 = v26 + v53;
    if (!swift_getEnumCaseMultiPayload())
    {
      v95 = v29;
      v90 = v34;
      v70 = *v31;
      v71 = v31[1];
      v72 = v97;
      v73 = *(v97 + 32);
      v74 = v36;
      v75 = v96;
      v73(v94, v74, v96);
      v76 = v31 + v53;
      v77 = v14;
      v73(v14, v76, v75);
      v78 = sub_100125DF4(v52, v70);

      if ((v78 & 1) == 0)
      {

        v85 = *(v72 + 8);
        v85(v14, v75);
        v85(v94, v75);
        goto LABEL_25;
      }

      sub_100093330();
      v79 = v90;
      v80 = static NSObject.== infix(_:_:)();
      v67 = v95;
      if (v80)
      {
        type metadata accessor for TTRSection();
        sub_10015A208(&qword_10076D1D8, &type metadata accessor for TTRSection, &protocol conformance descriptor for TTRSection);
        v81 = v94;
        v49 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

        v82 = *(v97 + 8);
        v82(v77, v75);
        v82(v81, v75);
        goto LABEL_18;
      }

      v88 = *(v97 + 8);
      v88(v77, v75);
      v88(v94, v75);
LABEL_29:
      v86 = v67;
      goto LABEL_30;
    }

    v38 = v97;
LABEL_14:
    (*(v38 + 8))(v36, v96);

    sub_1000079B4(v29, &qword_10076FB70, &qword_100632838);
LABEL_31:
    v49 = 0;
    return v49 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10015A1A0(v29, v20, type metadata accessor for TTRRemindersListMovingSectionsParams);
    v54 = *v20;
    v34 = v20[1];
    v55 = *(sub_100058000(&qword_10076FA10, &qword_100632788) + 64);
    v36 = v20 + v55;
    v56 = swift_getEnumCaseMultiPayload();
    v38 = v97;
    if (v56 == 2)
    {
      v95 = v29;
      v90 = v34;
      v57 = *v31;
      v58 = v31[1];
      v59 = *(v97 + 32);
      v42 = v94;
      v60 = v36;
      v43 = v96;
      v59(v94, v60, v96);
      v61 = v31 + v55;
      v62 = v92;
      v59(v92, v61, v43);
      v63 = sub_100125DF4(v54, v57);

      if ((v63 & 1) == 0)
      {

        v83 = *(v38 + 8);
        v83(v62, v43);
        goto LABEL_22;
      }

      sub_100093330();
      v64 = v90;
      v65 = v58;
      v66 = static NSObject.== infix(_:_:)();
      v67 = v95;
      if (v66)
      {
        type metadata accessor for TTRSection();
        sub_10015A208(&qword_10076D1D8, &type metadata accessor for TTRSection, &protocol conformance descriptor for TTRSection);
        v68 = v94;
        v49 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

        v69 = *(v38 + 8);
        v69(v62, v43);
        v69(v68, v43);
LABEL_18:
        v51 = v67;
        goto LABEL_19;
      }

      v87 = *(v38 + 8);
      v87(v62, v43);
      v87(v94, v43);
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v95 = v29;
  sub_10015A1A0(v29, v23, type metadata accessor for TTRRemindersListMovingSectionsParams);
  v33 = *v23;
  v34 = v23[1];
  v35 = *(sub_100058000(&qword_10076FA18, &qword_100632790) + 64);
  v36 = v23 + v35;
  v37 = swift_getEnumCaseMultiPayload();
  v38 = v97;
  if (v37 != 1)
  {
    v29 = v95;
    goto LABEL_14;
  }

  v90 = v34;
  v39 = *v31;
  v40 = v31[1];
  v41 = *(v97 + 32);
  v42 = v93;
  v43 = v96;
  v41(v93, v23 + v35, v96);
  v44 = v31 + v35;
  v45 = v91;
  v41(v91, v44, v43);
  v46 = sub_100125DF4(v33, v39);

  if ((v46 & 1) == 0)
  {

    v83 = *(v38 + 8);
    v83(v45, v43);
LABEL_22:
    v84 = v42;
LABEL_23:
    v83(v84, v43);
LABEL_25:
    v86 = v95;
LABEL_30:
    sub_100158F18(v86, type metadata accessor for TTRRemindersListMovingSectionsParams);
    goto LABEL_31;
  }

  sub_100093330();
  v47 = v90;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    v83 = *(v38 + 8);
    v83(v45, v43);
    v84 = v93;
    goto LABEL_23;
  }

  type metadata accessor for TTRSection();
  sub_10015A208(&qword_10076D1D8, &type metadata accessor for TTRSection, &protocol conformance descriptor for TTRSection);
  v48 = v93;
  v49 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

  v50 = *(v38 + 8);
  v50(v45, v43);
  v50(v48, v43);
  v51 = v95;
LABEL_19:
  sub_100158F18(v51, type metadata accessor for TTRRemindersListMovingSectionsParams);
  return v49 & 1;
}

uint64_t sub_10015A1A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015A208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10015A250(uint64_t a1, void *a2, void *a3)
{
  sub_100058000(&unk_100776BD0, &unk_100632860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = NSFontAttributeName;
  v6 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  *(inited + 40) = a2;
  *(inited + 64) = v6;
  *(inited + 72) = NSForegroundColorAttributeName;
  *(inited + 104) = sub_100003540(0, &qword_100772610, UIColor_ptr);
  *(inited + 80) = a3;
  v7 = NSFontAttributeName;
  v8 = a2;
  v9 = NSForegroundColorAttributeName;
  v10 = a3;
  v11 = sub_100460A28(inited);
  swift_setDeallocating();
  sub_100058000(&unk_100776BE0, &unk_10062D7F0);
  swift_arrayDestroy();
  NSMutableAttributedString.formatHashtags(with:)(v11);
}

id sub_10015A3AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = [a1 mutableString];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  [v8 replaceOccurrencesOfString:v9 withString:v10];

  result = [a1 string];
  if (result)
  {
    v12 = result;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 rangeOfString:v13];
    v16 = v15;

    result = NSNotFound.getter();
    if (v14 != result)
    {
      v17 = String._bridgeToObjectiveC()();
      [a1 addAttribute:NSLinkAttributeName value:v17 range:{v14, v16}];

      return [a1 addAttribute:NSForegroundColorAttributeName value:a6 range:{v14, v16}];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t destroy for TextViewAction(id *a1)
{
}

uint64_t initializeWithCopy for TextViewAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for TextViewAction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

__n128 initializeWithTake for TextViewAction(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TextViewAction(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextViewAction(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for TextViewAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIAddReminderBarButtonModule.Title(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIAddReminderBarButtonModule.Title(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10015A884()
{
  result = qword_10076FB78;
  if (!qword_10076FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076FB78);
  }

  return result;
}

void *sub_10015A8D8(uint64_t a1, uint64_t a2)
{
  v300 = a2;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v6 - 8);
  v295 = &v287 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v297 = &v287 - v9;
  __chkstk_darwin(v10);
  v296 = &v287 - v11;
  __chkstk_darwin(v12);
  v298 = &v287 - v13;
  v14 = *((v5 & v4) + 0x58);
  v336 = v2;
  v15 = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v332 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v304 = &v287 - v17;
  v333 = v18;
  v19 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v314 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v307 = &v287 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v318 = &v287 - v22;
  v329 = v19;
  v327 = *(v19 - 8);
  __chkstk_darwin(v23);
  v305 = &v287 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v315 = &v287 - v26;
  __chkstk_darwin(v27);
  v326 = &v287 - v28;
  __chkstk_darwin(v29);
  v306 = &v287 - v30;
  __chkstk_darwin(v31);
  v325 = &v287 - v32;
  __chkstk_darwin(v33);
  v331 = &v287 - v34;
  updated = type metadata accessor for TTRITreeViewDropUpdateCoordinator.Hit(0, v15, v14, v35);
  v323 = *(updated - 1);
  __chkstk_darwin(updated);
  v322 = &v287 - v36;
  v320 = swift_getTupleTypeMetadata2();
  v312 = type metadata accessor for Optional();
  v311 = *(v312 - 1);
  __chkstk_darwin(v312);
  v319 = &v287 - v37;
  v310 = swift_getTupleTypeMetadata2();
  __chkstk_darwin(v310);
  v309 = &v287 - v38;
  v39 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v39 - 8);
  v321 = &v287 - v40;
  v41 = type metadata accessor for Optional();
  v338 = *(v41 - 8);
  v339 = v41;
  __chkstk_darwin(v41);
  v303 = &v287 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v302 = &v287 - v44;
  __chkstk_darwin(v45);
  v313 = &v287 - v46;
  __chkstk_darwin(v47);
  v317 = &v287 - v48;
  __chkstk_darwin(v49);
  v316 = &v287 - v50;
  __chkstk_darwin(v51);
  v334 = &v287 - v52;
  __chkstk_darwin(v53);
  v335 = &v287 - v54;
  __chkstk_darwin(v55);
  v57 = &v287 - v56;
  v341 = *(v15 - 8);
  __chkstk_darwin(v58);
  v299 = &v287 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v301 = &v287 - v61;
  __chkstk_darwin(v62);
  v308 = &v287 - v63;
  __chkstk_darwin(v64);
  v337 = &v287 - v65;
  v340 = v15;
  v328 = v14;
  v67 = type metadata accessor for TTRITreeViewDropUpdateCoordinator.HitTestResult(255, v15, v14, v66);
  v68 = type metadata accessor for Optional();
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v287 - v70;
  v72 = *(v67 - 8);
  __chkstk_darwin(v73);
  v75 = &v287 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v78 = &v287 - v77;
  v79 = *(*a1 + 120);
  swift_beginAccess();
  (*(v69 + 16))(v71, a1 + v79, v68);
  if ((*(v72 + 48))(v71, 1, v67) == 1)
  {
    return (*(v69 + 8))(v71, v68);
  }

  (*(v72 + 32))(v78, v71, v67);
  v81 = sub_1001ABC10();
  if (v82)
  {

    return (*(v72 + 8))(v78, v67);
  }

  v292 = v78;
  v293 = v72;
  v294 = v67;
  v342 = v81;
  v83 = v340;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
  v84 = v341;
  v85 = v341 + 48;
  v86 = *(v341 + 48);
  if (v86(v57, 1, v83) == 1)
  {
    (*(v293 + 8))(v292, v294);
    (*(v338 + 8))(v57, v339);
  }

  v291 = v86;
  v290 = v85;
  v87 = v337;
  v289 = *(v84 + 32);
  v289(v337, v57, v83);
  v88 = sub_10015CC3C();
  v288 = sub_10052A7B4(v87);
  v90 = v89;

  if ((v90 & 1) == 0)
  {
    v287 = v84 + 32;
    v93 = sub_10015CC3C();
    sub_10052A73C(v87, v335);

    v94 = v292;
    (*(v293 + 16))(v75, v292, v294);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v96 = v339;
      if (EnumCaseMultiPayload != 1)
      {

        (*(v338 + 8))(v335, v96);
        (*(v84 + 8))(v87, v83);
LABEL_21:
        v91 = *(v293 + 8);
        v92 = v94;
        return v91(v92, v294);
      }

      v97 = v321;
      sub_10015D7F4(v75, v321);
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
LABEL_115:
        __break(1u);
        return result;
      }

      v98 = result;

      v99 = sub_1001ABC10();
      v101 = v319;
      sub_100188D74(v99, v100 & 1, v97, v319);

      sub_10008B860(v97);
      v102 = v320;
      if ((*(*(v320 - 8) + 48))(v101, 1, v320) == 1)
      {
        (*(v311 + 8))(v101, v312);
        (*(v338 + 8))(v335, v339);
        goto LABEL_9;
      }

      v108 = *&v101[*(v102 + 48)];
      v109 = v310;
      v110 = *(v310 + 48);
      v111 = v309;
      v112 = v289;
      v289(v309, v101, v83);
      *&v111[v110] = v108;
      v84 = v341;
      v113 = *(v109 + 48);
      v106 = v334;
      v320 = *&v111[v113];
      v114 = v308;
      v112(v308, v111, v83);
      v112(v106, v114, v83);
      LODWORD(v321) = 0;
      v107 = v338;
      v94 = v292;
    }

    else
    {

      v103 = v323;
      v104 = v322;
      v105 = updated;
      (*(v323 + 32))(v322, v75, updated);
      v106 = v334;
      (*(v84 + 16))(v334, &v104[*(v105 + 9)], v83);
      (*(v103 + 8))(v104, v105);
      v320 = 0;
      LODWORD(v321) = 1;
      v107 = v338;
    }

    v115 = v339;
    (*(v84 + 56))(v106, 0, 1, v83);
    v116 = sub_10015CC3C();
    v117 = sub_10052A84C(v106);
    v118 = v84;
    v120 = v119;

    if (v120)
    {
      v121 = *(v107 + 8);
      v121(v106, v115);
      v121(v335, v115);
      (*(v118 + 8))(v87, v83);
      goto LABEL_21;
    }

    v311 = v117;
    v122 = *(v107 + 16);
    v123 = v316;
    v323 = v107 + 16;
    v322 = v122;
    (v122)(v316, v335, v115);
    v124 = 1;
    if (v291(v123, 1, v83) == 1)
    {
      v125 = v107;
      v126 = v115;
      v127 = v333;
      v128 = v328;
      v129 = v331;
    }

    else
    {
      v128 = v328;
      v129 = v331;
      (*(v328 + 24))(v83, v328);
      v124 = 0;
      v125 = v341;
      v126 = v83;
      v127 = v333;
    }

    v130 = v115;
    (*(v125 + 8))(v123, v126);
    v131 = (v332 + 56);
    v132 = 1;
    updated = *(v332 + 56);
    (updated)(v129, v124, 1, v127);
    v133 = v317;
    (v322)(v317, v106, v130);
    if (v291(v133, 1, v83) == 1)
    {
      v134 = v338;
      v135 = v130;
      v136 = v325;
    }

    else
    {
      v136 = v325;
      (*(v128 + 24))(v83, v128);
      v132 = 0;
      v134 = v341;
      v135 = v83;
    }

    (*(v134 + 8))(v133, v135);
    v319 = v131;
    (updated)(v136, v132, 1, v127);
    v137 = v331;
    v138 = *(TupleTypeMetadata2 + 48);
    v139 = v327;
    v141 = (v327 + 16);
    v140 = *(v327 + 16);
    v142 = v318;
    v143 = v329;
    v140(v318, v331, v329);
    v317 = v138;
    v140(&v138[v142], v136, v143);
    v144 = v332 + 48;
    v145 = *(v332 + 48);
    v146 = v145(v142, 1, v127);
    v316 = v141;
    v312 = v140;
    if (v146 == 1)
    {
      v147 = *(v139 + 8);
      v147(v136, v143);
      v147(v137, v143);
      if (v145(&v317[v142], 1, v333) == 1)
      {
        v147(v142, v143);
        v148 = v338;
        v149 = v334;
LABEL_49:
        if (v321)
        {
          v194 = *(v148 + 8);
          v195 = v339;
          v194(v149, v339);
          v194(v335, v195);
          (*(v341 + 8))(v337, v340);
          goto LABEL_10;
        }

        v198 = v148;
        v199 = v320;
        v200 = v288;
        v201 = v340;
        v202 = v294;
        v203 = v292;
        v204 = v337;
        if (v288 == v320)
        {
          sub_10015CC88(0, 0, 255);
          v205 = *(v198 + 8);
          v206 = v339;
          v205(v334, v339);
          v205(v335, v206);
          (*(v341 + 8))(v204, v201);
          return (*(v293 + 8))(v203, v202);
        }

        result = (v320 - 1);
        if (!__OFSUB__(v320, 1))
        {
          v214 = v334;
          v215 = sub_10015CE28(result, v334);
          if (v216)
          {
            v217 = v215;
          }

          else
          {
            v217 = 0;
          }

          if (v216)
          {
            v218 = v216;
          }

          else
          {
            v218 = 0xE000000000000000;
          }

          v219 = sub_10015CE28(v199, v214);
          if (v220)
          {
            v221 = v219;
          }

          else
          {
            v221 = 0;
          }

          if (v220)
          {
            v222 = v220;
          }

          else
          {
            v222 = 0xE000000000000000;
          }

          if (v199 < v200 || !v217 && v218 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v223 = 0;
            v224 = v222;
          }

          else
          {
            v223 = 1;
            v221 = v217;
            v224 = v218;
          }

          sub_10015D7EC(v221, v224);

          sub_10015CC88(v221, v224, v223);
          sub_10015D724(v221, v224);
          v225 = *(v198 + 8);
          v226 = v339;
          v225(v334, v339);
          v225(v335, v226);
          (*(v341 + 8))(v204, v201);
          goto LABEL_10;
        }

        goto LABEL_114;
      }

      v310 = v144;
      v156 = v313;
      v155 = v145;
    }

    else
    {
      v150 = v139;
      v151 = v306;
      v140(v306, v142, v143);
      v152 = v317;
      v153 = v333;
      v310 = v144;
      v154 = v145(&v317[v142], 1, v333);
      v148 = v338;
      v155 = v145;
      if (v154 != 1)
      {
        v190 = v332;
        v191 = &v152[v142];
        v192 = v304;
        (*(v332 + 32))(v304, v191, v153);
        swift_getAssociatedConformanceWitness();
        LODWORD(v317) = dispatch thunk of static Equatable.== infix(_:_:)();
        v193 = *(v190 + 8);
        v193(v192, v153);
        v147 = *(v150 + 8);
        v147(v325, v329);
        v147(v331, v329);
        v193(v151, v153);
        v147(v142, v329);
        v156 = v313;
        v149 = v334;
        if (v317)
        {
          goto LABEL_49;
        }

LABEL_37:
        v331 = v147;
        v157 = v328;
        v158 = *(v328 + 24);
        v159 = v326;
        v160 = v340;
        v158(v340, v328);
        v161 = 1;
        (updated)(v159, 0, 1, v333);
        v162 = v149;
        v163 = v339;
        (v322)(v156, v162, v339);
        v164 = v291(v156, 1, v160);
        v309 = v155;
        if (v164 == 1)
        {
          v165 = v338;
          v166 = v163;
          v167 = v315;
        }

        else
        {
          v167 = v315;
          v158(v160, v157);
          v161 = 0;
          v165 = v341;
          v166 = v160;
        }

        (*(v165 + 8))(v156, v166);
        v168 = v333;
        (updated)(v167, v161, 1, v333);
        v169 = v329;
        v170 = *(TupleTypeMetadata2 + 48);
        v171 = v307;
        v172 = v167;
        v173 = v326;
        v174 = v312;
        v312(v307, v326, v329);
        v174(&v171[v170], v167, v169);
        v175 = v309;
        if ((v309)(v171, 1, v168) == 1)
        {
          v176 = v331;
          (v331)(v172, v169);
          v176(v173, v169);
          v177 = v175(&v171[v170], 1, v168);
          v178 = v340;
          v94 = v292;
          v179 = v337;
          if (v177 == 1)
          {
            v176(v171, v169);
LABEL_57:
            sub_10015CC88(0, 0, 255);
            v212 = v339;
            v213 = *(v338 + 8);
            v213(v334, v339);
            v213(v335, v212);
            (*(v341 + 8))(v179, v178);
            goto LABEL_21;
          }
        }

        else
        {
          v180 = v305;
          v174(v305, v171, v169);
          v181 = v175(&v171[v170], 1, v168);
          v94 = v292;
          if (v181 != 1)
          {
            v207 = v332;
            v208 = v304;
            (*(v332 + 32))(v304, &v171[v170], v168);
            v178 = v340;
            swift_getAssociatedConformanceWitness();
            v209 = dispatch thunk of static Equatable.== infix(_:_:)();
            v210 = *(v207 + 8);
            v210(v208, v168);
            v211 = v331;
            (v331)(v315, v169);
            v211(v326, v169);
            v210(v305, v168);
            v211(v171, v169);
            v179 = v337;
            if (v209)
            {
              goto LABEL_57;
            }

LABEL_46:
            v183 = v339;
            v184 = v334;
            if (v321)
            {
              v185 = 0;
              v186 = 0;
              v187 = 255;
              v188 = v303;
              v189 = v311;
            }

            else
            {
              v196 = v320;
              result = sub_10015CE28(v320, v334);
              v186 = v197;
              v189 = v311;
              if (v197)
              {
                v188 = v303;
                if (__OFSUB__(v311, 1))
                {
                  __break(1u);
LABEL_114:
                  __break(1u);
                  goto LABEL_115;
                }

                v185 = result;
                v187 = v311 - 1 <= v196;
                sub_10015D7EC(result, v197);
              }

              else
              {
                v185 = 0;
                v187 = 255;
                v188 = v303;
              }
            }

            if (v189 >= 1)
            {
              v227 = v302;
              (v322)(v302, v184, v183);
              if (v291(v227, 1, v178) == 1)
              {
                (*(v338 + 8))(v227, v183);
LABEL_90:
                if (v187 != 255)
                {
                  sub_10015CC88(v185, v186, v187);
                }

                sub_10015D70C(v185, v186, v187);
                v258 = *(v338 + 8);
                v258(v184, v183);
                v258(v335, v183);
                (*(v341 + 8))(v179, v178);
                goto LABEL_10;
              }

              v229 = v301;
              v289(v301, v227, v178);
              v230 = v178;
              v231 = *(v336 + qword_100780CC8);
              v232 = sub_10015CC3C();
              v333 = v231(v232, v229);
              v234 = v233;

              if (!v234)
              {
                (*(v341 + 8))(v229, v230);
                v178 = v230;
                v183 = v339;
                v184 = v334;
                goto LABEL_90;
              }

              v332 = v185;
              v235 = *(type metadata accessor for TTRITreeViewDropProposal(0) + 20);
              v236 = v300;
              v237 = v298;
              sub_10015D72C(v300 + v235, v298);
              v238 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
              v239 = *(*(v238 - 8) + 48);
              v240 = v239(v237, 4, v238);
              sub_10015D790(v237);
              if (v240 == 3)
              {
                v241 = v332;
                sub_10015D0A4(v333, v234, v332, v186, v187, 0, 0);

                sub_10015D70C(v241, v186, v187);
                v242 = v340;
                v243 = v294;
              }

              else
              {
                v259 = v236 + v235;
                v260 = v296;
                sub_10015D72C(v259, v296);
                v261 = v239(v260, 4, v238);
                sub_10015D790(v260);
                v262 = v261 == 4;
                v242 = v340;
                v243 = v294;
                if (!v262)
                {
                  v265 = v337;
                  v264 = v338;
                  v279 = v301;
                  if (v187 == 255)
                  {
                  }

                  else
                  {
                    v280 = v332;
                    sub_10015D0A4(v333, v234, v332, v186, v187, 0, 0);

                    sub_10015D70C(v280, v186, v187);
                  }

                  v266 = v279;
                  goto LABEL_111;
                }

                v263 = v332;
                sub_10015D0A4(v333, v234, v332, v186, v187, 0, 0);

                sub_10015D70C(v263, v186, v187);
              }

              v265 = v337;
              v264 = v338;
              v266 = v301;
LABEL_111:
              v281 = *(v341 + 8);
              v281(v266, v242);
              v285 = *(v264 + 8);
              v286 = v339;
              v285(v334, v339);
              v285(v335, v286);
              v284 = v265;
              goto LABEL_112;
            }

            (v322)(v188, v184, v183);
            if (v291(v188, 1, v178) == 1)
            {
              sub_10015D70C(v185, v186, v187);
              v228 = *(v338 + 8);
              v228(v184, v183);
              v228(v335, v183);
              (*(v341 + 8))(v179, v178);
              (*(v293 + 8))(v292, v294);
              return (v228)(v188, v183);
            }

            v244 = v299;
            v289(v299, v188, v178);
            v245 = *(v336 + qword_100780CC8);
            v246 = v178;
            v247 = sub_10015CC3C();
            v248 = v245(v247, v244);
            v250 = v249;

            if (!v250)
            {
              v267 = *(v341 + 8);
              v267(v244, v246);
              sub_10015D70C(v185, v186, v187);
              v268 = v339;
              v269 = *(v338 + 8);
              v269(v334, v339);
              v269(v335, v268);
              v267(v179, v246);
              goto LABEL_10;
            }

            v333 = v248;
            v337 = v250;
            v251 = v185;
            v252 = *(type metadata accessor for TTRITreeViewDropProposal(0) + 20);
            v253 = v300;
            v254 = v297;
            sub_10015D72C(v300 + v252, v297);
            v255 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
            v256 = *(*(v255 - 8) + 48);
            if (v256(v254, 4, v255) == 3)
            {
              sub_10015D70C(v185, v186, v187);
              v257 = v254;
            }

            else
            {
              sub_10015D790(v254);
              v270 = v253 + v252;
              v271 = v295;
              sub_10015D72C(v270, v295);
              if (v256(v271, 4, v255) != 4)
              {

                sub_10015D790(v271);
                v242 = v340;
                v243 = v294;
                v278 = v338;
                v274 = v299;
                if (v187 != 255)
                {
                  sub_10015CC88(v251, v186, v187);
                }

                sub_10015D70C(v251, v186, v187);
                goto LABEL_108;
              }

              sub_10015D70C(v185, v186, v187);
              v257 = v271;
            }

            sub_10015D790(v257);
            v272 = *(v336 + qword_100780CD0);
            v273 = sub_10015CC3C();
            v274 = v299;
            v275 = v272(v273, v299);
            v277 = v276;

            sub_10015D0A4(v333, v337, 0, 0, 255, v275, v277);

            v242 = v340;
            v243 = v294;
            v278 = v338;
LABEL_108:
            v281 = *(v341 + 8);
            v281(v274, v242);
            v282 = *(v278 + 8);
            v283 = v339;
            v282(v334, v339);
            v282(v335, v283);
            v284 = v179;
LABEL_112:
            v281(v284, v242);
            return (*(v293 + 8))(v292, v243);
          }

          v182 = v331;
          (v331)(v315, v169);
          v182(v326, v169);
          (*(v332 + 8))(v180, v168);
          v178 = v340;
          v179 = v337;
        }

        (*(v314 + 8))(v171, TupleTypeMetadata2);
        goto LABEL_46;
      }

      v147 = *(v150 + 8);
      v147(v325, v143);
      v147(v331, v143);
      (*(v332 + 8))(v151, v153);
      v156 = v313;
    }

    v149 = v334;
    (*(v314 + 8))(v142, TupleTypeMetadata2);
    goto LABEL_37;
  }

LABEL_9:
  (*(v84 + 8))(v87, v83);
LABEL_10:
  v91 = *(v293 + 8);
  v92 = v292;
  return v91(v92, v294);
}

void *sub_10015CC3C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1001893F4();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015CC88(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == -1)
  {
    v9._object = 0x8000000100674830;
    v10._countAndFlagsBits = 0xD00000000000004DLL;
    v10._object = 0x8000000100674850;
    v9._countAndFlagsBits = 0xD000000000000013;
    v12 = TTRLocalizedString(_:comment:)(v9, v10);
    countAndFlagsBits = v12._countAndFlagsBits;
    object = v12._object;
  }

  else
  {
    if (a3)
    {
      v5 = " the same place it was before";
      sub_10015D7EC(a1, a2);
      v6 = 0x6C65622065766F4DLL;
      v7 = 0xED0000402520776FLL;
      v8 = 0xD00000000000003ALL;
    }

    else
    {
      v5 = "ving an item below another";
      sub_10015D7EC(a1, a2);
      v6 = 0x6F62612065766F4DLL;
      v7 = 0xED00004025206576;
      v8 = 0xD00000000000003BLL;
    }

    v14 = v5 | 0x8000000000000000;
    TTRLocalizedString(_:comment:)(*&v6, *&v8);
    sub_100058000(&unk_100786CB0, &qword_100636EF0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10062D400;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10005C390();
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;
    v16 = String.init(format:_:)();
    object = v17;

    countAndFlagsBits = v16;
  }

  sub_10015D36C(countAndFlagsBits, object);
}

uint64_t sub_10015CE28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *((swift_isaMask & *v2) + 0x50);
  v7 = type metadata accessor for Optional();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = *(v6 - 8);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = sub_10015CC3C();
  v15 = sub_10052A84C(a2);
  v17 = v16;

  result = 0;
  if ((v17 & 1) == 0)
  {
    v19 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      __break(1u);
    }

    else
    {
      if (v19 >= a1)
      {
        v19 = a1;
      }

      v20 = v19 & ~(v19 >> 63);
      v21 = sub_10015CC3C();
      sub_10052A7CC(v20, a2, v9);

      if ((*(v10 + 48))(v9, 1, v6) == 1)
      {
        (*(v25 + 8))(v9, v26);
        return 0;
      }

      else
      {
        (*(v10 + 32))(v13, v9, v6);
        v22 = *(v3 + qword_100780CC8);
        v23 = sub_10015CC3C();
        v24 = v22(v23, v13);

        (*(v10 + 8))(v13, v6);
        return v24;
      }
    }
  }

  return result;
}

uint64_t sub_10015D0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a5 == -1)
  {
    v19._countAndFlagsBits = 0x736E692065766F4DLL;
    v19._object = 0xEE00402520656469;
    v20._countAndFlagsBits = 0xD00000000000003DLL;
    v20._object = 0x8000000100674920;
    TTRLocalizedString(_:comment:)(v19, v20);
    sub_100058000(&unk_100786CB0, &qword_100636EF0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10062D400;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_10005C390();
    *(v21 + 32) = a1;
    *(v21 + 40) = a2;
  }

  else
  {
    if (a5)
    {
      v11 = "oving an item inside a parent";
    }

    else
    {
      v11 = "side a parent, below another";
    }

    if (a5)
    {
      v12 = "Move inside %@, below %@";
    }

    else
    {
      v12 = "Move inside %@, above %@";
    }

    sub_10015D7EC(a3, a4);
    v15._object = (v11 | 0x8000000000000000);
    v16._countAndFlagsBits = 0xD00000000000004CLL;
    v16._object = (v12 | 0x8000000000000000);
    v15._countAndFlagsBits = 0xD000000000000018;
    TTRLocalizedString(_:comment:)(v15, v16);
    sub_100058000(&unk_100786CB0, &qword_100636EF0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10062D3F0;
    *(v17 + 56) = &type metadata for String;
    v18 = sub_10005C390();
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v18;
    *(v17 + 64) = v18;
    *(v17 + 72) = a3;
    *(v17 + 80) = a4;
  }

  v22 = String.init(format:_:)();
  v24 = v23;

  if (a7)
  {
    sub_100058000(&unk_100771E10, &qword_100634270);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10062D3F0;
    *(v25 + 32) = v22;
    *(v25 + 40) = v24;
    *(v25 + 48) = a6;
    *(v25 + 56) = a7;

    static TTRAccesibility.General.Label.SentenceEnd.getter();
    sub_100058000(&unk_100781F20, &unk_10062D7E0);
    sub_10000E188(&qword_100771E20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
    v22 = BidirectionalCollection<>.joined(separator:)();
    v24 = v26;
  }

  sub_10015D36C(v22, v24);
}

uint64_t sub_10015D36C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A96A0();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_10015D864;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_1007184C0;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001A4CC();
  sub_100058000(&qword_100780A50, &qword_100635D30);
  sub_10000E188(&qword_10076B7E0, &qword_100780A50, &qword_100635D30, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v17 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v16);
}

void sub_10015D634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + qword_100780CD8);
  v6 = *(a1 + qword_100780CD8 + 8);
  if (!v6 || (*v5 == a2 ? (v7 = v6 == a3) : (v7 = 0), !v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    *v5 = a2;
    v5[1] = a3;

    v8 = UIAccessibilityAnnouncementNotification;

    v9 = String._bridgeToObjectiveC()();
    UIAccessibilityPostNotification(v8, v9);
  }
}

uint64_t sub_10015D70C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10015D724(result, a2);
  }

  return result;
}

uint64_t sub_10015D72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015D790(uint64_t a1)
{
  v2 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10015D7F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100771B10, qword_10062E540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015D870(void *a1)
{
}

uint64_t sub_10015D8B4(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t *sub_10015D90C(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t sub_10015D98C(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

double sub_10015DA28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return result;
}

uint64_t sub_10015DA7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRITreeViewNode(0, *(*a1 + 80), *(*a1 + 88), a4);

  swift_getWitnessTable();
  Dictionary.subscript.getter();

  return v5;
}

uint64_t sub_10015DB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  swift_getAssociatedTypeWitness();
  type metadata accessor for TTRITreeViewNode(255, v4, v3, v5);
  swift_getWitnessTable();
  type metadata accessor for Set();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  LOBYTE(v3) = Sequence.contains(where:)();

  return v3 & 1;
}

uint64_t sub_10015DCCC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  sub_10015DA7C(a1, a2, a3, a4);
  if (v6)
  {
    return 0;
  }

  type metadata accessor for TTRITreeViewSectionsMetadata.Section(0, *(v4 + 80), *(v4 + 88), v5);
  Array.subscript.getter();
  v7 = v9;

  return v7;
}

uint64_t sub_10015DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a1;
  v18[1] = a2;
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  type metadata accessor for TTRITreeViewSectionsMetadata.Section(255, v8, v9, a4);
  type metadata accessor for Array();

  Array.insert(_:at:)();
  v18[0] = a3;
  v10 = sub_100058000(&qword_10076FC00, &unk_100632970);
  v11 = sub_10000E188(&qword_10076FC08, &qword_10076FC00, &unk_100632970, &protocol conformance descriptor for PartialRangeFrom<A>);
  sub_10015DF18(v18, 1, a4, v10, v11);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  swift_allocObject();
  v12 = static Array._adoptStorage(_:count:)();
  *v13 = a1;
  type metadata accessor for TTRITreeViewNode(0, v8, v9, v14);
  v15 = type metadata accessor for Array();
  v18[0] = v12;

  WitnessTable = swift_getWitnessTable();
  sub_10015E0B4(v18, a3, a4, v15, WitnessTable);

  v18[0] = a2;
  return sub_10015E0B4(v18, a3, a4, v15, WitnessTable);
}

void sub_10015DF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 16);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return;
    }

    v10 = *(v7 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v15 = *(*(v7 + 56) + ((v13 << 9) | (8 * v14)));

        if (dispatch thunk of RangeExpression.contains(_:)())
        {
          if (__OFADD__(v15, a2))
          {
            goto LABEL_16;
          }

          type metadata accessor for TTRITreeViewNode(255, *(a3 + 16), *(a3 + 24), v16);
          swift_getWitnessTable();
          type metadata accessor for Dictionary();
          Dictionary.subscript.setter();
          v12 = v13;
          if (!v10)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v12 = v13;
          if (!v10)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v13 = v12;
      }
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_10015E0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v30 = a3;
  v7 = *(a3 + 24);
  v27 = *(a3 + 16);
  v28 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v24 - v9;
  v11 = *(a4 - 8);
  __chkstk_darwin(v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v26 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v24 - v17;
  (*(v11 + 16))(v14, a1, a4, v16);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  v19 = dispatch thunk of IteratorProtocol.next()();
  v20 = v32;
  if (v32)
  {
    v21 = (v25 + 8);
    do
    {
      sub_10023A594(v19);
      sub_10015F39C(v10, v20, v30);
      (*v21)(v10, AssociatedTypeWitness);
      v31 = v20;
      v32 = v29;
      v33 = 0;
      type metadata accessor for TTRITreeViewNode(255, v27, v28, v22);
      swift_getWitnessTable();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      v19 = dispatch thunk of IteratorProtocol.next()();
      v20 = v32;
    }

    while (v32);
  }

  return (*(v26 + 8))(v18, v15);
}

uint64_t sub_10015E3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRITreeViewSectionsMetadata.Section(0, *(a3 + 16), *(a3 + 24), a4);
  v7 = Array.count.getter();

  return sub_10015DD60(a1, a2, v7, a3);
}

uint64_t sub_10015E454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for TTRITreeViewSectionsMetadata.Section(255, v6, v7, a4);
  type metadata accessor for Array();
  Array.remove(at:)();
  v8 = v18[0];
  v9 = v18[1];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  swift_allocObject();
  v10 = static Array._adoptStorage(_:count:)();
  *v11 = v18[0];
  type metadata accessor for TTRITreeViewNode(0, v6, v7, v12);
  v13 = type metadata accessor for Array();
  v18[0] = v10;

  WitnessTable = swift_getWitnessTable();
  sub_10015E5E8(v18, a2, v13, WitnessTable);

  v18[0] = v9;
  sub_10015E5E8(v18, a2, v13, WitnessTable);
  v18[0] = a1;
  v15 = sub_100058000(&qword_10076FC00, &unk_100632970);
  v16 = sub_10000E188(&qword_10076FC08, &qword_10076FC00, &unk_100632970, &protocol conformance descriptor for PartialRangeFrom<A>);
  sub_10015DF18(v18, -1, a2, v15, v16);
  return v8;
}

uint64_t sub_10015E5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v28 = a2;
  v26 = v6;
  v27 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v24 - v9;
  v11 = *(a3 - 8);
  __chkstk_darwin(v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v25 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v24 - v17;
  (*(v11 + 16))(v14, a1, a3, v16);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  v19 = dispatch thunk of IteratorProtocol.next()();
  v20 = v30;
  if (v30)
  {
    v21 = (v24 + 8);
    do
    {
      sub_10023A594(v19);
      sub_10015F0F4(v10, v20, v28);
      (*v21)(v10, AssociatedTypeWitness);
      v29 = v20;
      type metadata accessor for TTRITreeViewNode(255, v26, v27, v22);
      swift_getWitnessTable();
      type metadata accessor for Dictionary();
      Dictionary.removeValue(forKey:)();

      v19 = dispatch thunk of IteratorProtocol.next()();
      v20 = v30;
    }

    while (v30);
  }

  return (*(v25 + 8))(v18, v15);
}

uint64_t sub_10015E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    type metadata accessor for TTRITreeViewSectionsMetadata.Section(0, *(a3 + 16), *(a3 + 24), a4);
    Array.subscript.getter();
    return v22;
  }

  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  type metadata accessor for TTRITreeViewSectionsMetadata.Section(255, v7, v8, a4);
  type metadata accessor for Array();
  Array.remove(at:)();
  v5 = v22;
  v9 = v23;

  result = Array.insert(_:at:)();
  if (a1 < a2)
  {
    v11 = a1 + 1;
    v12 = -1;
    v13 = a2;
LABEL_8:
    v22 = v11;
    v23 = v13;
    v14 = sub_100058000(&qword_10076FC18, qword_100632990);
    v15 = sub_10000E188(qword_10076FC20, &qword_10076FC18, qword_100632990, &protocol conformance descriptor for ClosedRange<A>);
    sub_10015DF18(&v22, v12, a3, v14, v15);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    swift_allocObject();
    v16 = static Array._adoptStorage(_:count:)();
    *v17 = v5;
    type metadata accessor for TTRITreeViewNode(0, v7, v8, v18);
    v19 = type metadata accessor for Array();
    v22 = v16;

    WitnessTable = swift_getWitnessTable();
    sub_10015E0B4(&v22, a2, a3, v19, WitnessTable);

    v22 = v9;
    sub_10015E0B4(&v22, a2, a3, v19, WitnessTable);
    return v5;
  }

  v13 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }

  else if (v13 >= a2)
  {
    v12 = 1;
    v11 = a2;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10015EB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = IndexPath.section.getter();
  v16 = a1;

  IndexPath.row.getter();
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v10 = type metadata accessor for TTRITreeViewSectionsMetadata.Section(255, v7, v8, v9);
  type metadata accessor for Array();
  Array._makeMutableAndUnique()();
  sub_100160D68(v6, *v3, v10);
  type metadata accessor for TTRITreeViewNode(255, v7, v8, v11);
  v12 = type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection.insert<A>(contentsOf:at:)();
  v16 = a1;
  v13 = IndexPath.section.getter();
  WitnessTable = swift_getWitnessTable();
  return sub_10015E0B4(&v16, v13, a3, v12, WitnessTable);
}

uint64_t sub_10015ECD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = IndexPath.row.getter();
  result = IndexPath.row.getter();
  v8 = __OFADD__(result, a2);
  v9 = result + a2;
  if (v8)
  {
    __break(1u);
  }

  else if (v9 >= v6)
  {
    v10 = IndexPath.section.getter();
    v11 = a3;
    v26 = a3;
    v12 = *(a3 + 16);
    v13 = *(v11 + 24);
    v15 = type metadata accessor for TTRITreeViewSectionsMetadata.Section(0, v12, v13, v14);
    Array.subscript.getter();
    type metadata accessor for TTRITreeViewNode(0, v12, v13, v16);
    v17 = Array.subscript.getter();
    v19 = v18;
    v24 = v21;
    v25 = v20;

    v27 = v6;
    v28 = v9;
    type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    sub_100160D68(v10, *v3, v15);
    type metadata accessor for Array();
    swift_getWitnessTable();
    RangeReplaceableCollection.removeSubrange(_:)();
    v27 = v17;
    v28 = v19;
    v29 = v25;
    v30 = v24;
    v22 = type metadata accessor for ArraySlice();
    WitnessTable = swift_getWitnessTable();
    sub_10015E5E8(&v27, v26, v22, WitnessTable);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10015EEAC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = *(a6 + 16);
  v12 = *(a6 + 24);
  v13 = type metadata accessor for TTRITreeViewSectionsMetadata.Section(0, v11, v12, a4);
  Array.subscript.getter();
  type metadata accessor for TTRITreeViewNode(0, v11, v12, v14);
  v15 = Array.subscript.getter();
  v17 = v16;
  v24 = v18;
  v25 = v19;

  v27 = a1;
  v28 = a2;
  type metadata accessor for Array();
  Array._makeMutableAndUnique()();
  sub_100160D68(a3, *v7, v13);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RangeReplaceableCollection.removeSubrange(_:)();
  v27 = v15;
  v28 = v17;
  v29 = v24;
  v30 = v25;
  swift_unknownObjectRetain();
  Array._makeMutableAndUnique()();
  sub_100160D68(a4, *v7, v13);
  v20 = type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  RangeReplaceableCollection.insert<A>(contentsOf:at:)();
  if (a3 != a4)
  {
    v27 = v15;
    v28 = v17;
    v29 = v24;
    v30 = v25;
    WitnessTable = swift_getWitnessTable();
    sub_10015E0B4(&v27, a4, a6, v20, WitnessTable);
  }

  return v15;
}

uint64_t sub_10015F0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v15 = &v15 - v8;
  type metadata accessor for TTRITreeViewNode(255, v6, v5, v9);
  swift_getWitnessTable();
  type metadata accessor for Set();
  swift_getAssociatedConformanceWitness();
  Dictionary.subscript.getter();
  if (!v17[0])
  {
    return 0;
  }

  v17[0] = a2;
  if ((Set.contains(_:)() & 1) == 0)
  {

    return 0;
  }

  if (Set.count.getter() == 1)
  {

    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();

    return 1;
  }

  else
  {
    v17[4] = a2;
    v11 = v15;
    v12 = v16;
    (*(v16 + 16))(v15, a1, AssociatedTypeWitness);
    type metadata accessor for Dictionary._Variant();
    result = Dictionary._Variant.subscript.modify();
    if (*v13)
    {
      v14 = result;

      Set.remove(_:)();

      v14(v17, 0);
      (*(v12 + 8))(v11, AssociatedTypeWitness);
      return 1;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void (*sub_10015F39C(uint64_t a1, uint64_t a2, uint64_t a3))(void *, void)
{
  v24 = a1;
  v25 = a2;
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v12 = type metadata accessor for TTRITreeViewNode(255, v3, v4, v11);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Set();
  v14 = v24;
  swift_getAssociatedConformanceWitness();
  Dictionary.subscript.getter();
  if (v26[0])
  {

    v26[4] = v25;
    (*(v6 + 16))(v10, v14, AssociatedTypeWitness);

    type metadata accessor for Dictionary._Variant();
    result = Dictionary._Variant.subscript.modify();
    if (*v16)
    {
      v17 = result;
      Set.insert(_:)();

      v17(v26, 0);
      return (*(v6 + 8))(v10, AssociatedTypeWitness);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v22 = WitnessTable;
    (*(v6 + 16))(v23, v14, AssociatedTypeWitness);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    swift_initStackObject();
    v18 = static Array._adoptStorage(_:count:)();
    *v19 = v25;
    type metadata accessor for Array();

    if (Array._getCount()())
    {
      v20 = sub_100160DBC(v18, v12, v22);
    }

    else
    {
      v20 = &_swiftEmptySetSingleton;
    }

    v26[0] = v20;
    type metadata accessor for Dictionary();
    return Dictionary.subscript.setter();
  }

  return result;
}

uint64_t sub_10015F6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for TTRITreeViewSectionsMetadata.Section(255, a6, a7, a4);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  IndexPath.section.getter();
  sub_100058000(&qword_10076FC10, &unk_100632980);
  v9 = Range.contains(_:)();
  result = 0;
  if (v9)
  {
    IndexPath.section.getter();
    Array.subscript.getter();
    type metadata accessor for TTRITreeViewNode(255, a6, a7, v11);
    type metadata accessor for Array();
    swift_getWitnessTable();
    RandomAccessCollection<>.indices.getter();
    IndexPath.row.getter();
    if (Range.contains(_:)())
    {
      IndexPath.row.getter();
      Array.subscript.getter();

      return v12;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10015F890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for TTRITreeViewSectionsMetadata.Section(255, a6, a7, a4);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  sub_100058000(&qword_10076FC10, &unk_100632980);
  v7 = 0;
  if (Range.contains(_:)())
  {
    Array.subscript.getter();
    v7 = v9;
  }

  return v7;
}

uint64_t sub_10015F984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = __chkstk_darwin(AssociatedTypeWitness);
  v13 = v16 - v12;
  (*(a7 + 24))(a6, a7, v11);
  type metadata accessor for TTRITreeViewNode(255, a6, a7, v14);
  swift_getWitnessTable();
  type metadata accessor for Set();
  swift_getAssociatedConformanceWitness();
  Dictionary.subscript.getter();
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  if (!v17)
  {
    return 0;
  }

  v16[2] = v17;
  swift_getWitnessTable();
  Collection.first.getter();

  return v16[1];
}

uint64_t sub_10015FB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for TTRITreeViewNode(255, a6, a7, v9);
  swift_getWitnessTable();
  type metadata accessor for Set();
  swift_getAssociatedConformanceWitness();
  Dictionary.subscript.getter();
  if (!v12)
  {
    return 0;
  }

  swift_getWitnessTable();
  Collection.first.getter();

  return v11;
}

uint64_t sub_10015FCAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a2;
  v7 = *a1;
  sub_10015DA7C(a1, a2, a3, a4);
  if (v9)
  {
    goto LABEL_2;
  }

  if ((v5 & 1) == 0)
  {
    v19 = *(v7 + 80);
    v20 = *(v7 + 88);
    type metadata accessor for TTRITreeViewSectionsMetadata.Section(0, v19, v20, v8);
    Array.subscript.getter();

    type metadata accessor for TTRITreeViewNode(255, v19, v20, v21);
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.firstIndex(where:)();

    if (v24)
    {
      v22 = type metadata accessor for IndexPath();
      return (*(*(v22 - 8) + 56))(a5, 1, 1, v22);
    }

    else
    {
      IndexPath.init(row:section:)();
      v23 = type metadata accessor for IndexPath();
      return (*(*(v23 - 8) + 56))(a5, 0, 1, v23);
    }
  }

  sub_10023A6E8();
  v16 = v15;

  result = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
    return result;
  }

  if (result < 0)
  {
LABEL_2:
    v10 = type metadata accessor for IndexPath();
    v11 = *(*(v10 - 8) + 56);
    v12 = v10;
    v13 = a5;
    v14 = 1;
  }

  else
  {
    IndexPath.init(row:section:)();
    v18 = type metadata accessor for IndexPath();
    v11 = *(*(v18 - 8) + 56);
    v12 = v18;
    v13 = a5;
    v14 = 0;
  }

  return v11(v13, v14, 1, v12);
}

void sub_10015FF3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = sub_10015F984(a1, a2, a3, a4, 0, a6, a7);
  if (v12)
  {
    sub_10015FCAC(v12, a5 & 1, a2, a4, a8);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    v14 = *(*(v13 - 8) + 56);

    v14(a8, 1, 1, v13);
  }
}

uint64_t *sub_1001600A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_10015DCCC(a1, a2, a3, a4);
  if (result)
  {
    v6 = result;

    return (v6 == a1);
  }

  return result;
}

void (*sub_1001600E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, char *a5@<X8>))(_BYTE *, void)
{
  v10 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for IndexPath();
  v27 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1001600A8(a1, a2, v16, a3))
  {
    sub_10015DA7C(a1, v17, v18, a3);
    if (v19)
    {
      v20 = *(v27 + 56);
      v21 = a5;
      v22 = 1;
    }

    else
    {
      IndexPath.init(row:section:)();
      v20 = *(v27 + 56);
      v21 = a5;
      v22 = 0;
    }

    return v20(v21, v22, 1, v13);
  }

  else
  {
    sub_10015FCAC(a1, a4 & 1, a2, a3, v12);
    if ((*(v27 + 48))(v12, 1, v13) == 1)
    {
      sub_10008B860(v12);
      return (*(v27 + 56))(a5, 1, 1, v13);
    }

    else
    {
      v24 = *(v27 + 32);
      v24(v15, v12, v13);
      result = IndexPath.row.modify();
      if (__OFADD__(*v25, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v25;
        result(v28, 0);
        v24(a5, v15, v13);
        return (*(v27 + 56))(a5, 0, 1, v13);
      }
    }
  }

  return result;
}

uint64_t sub_1001603A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRITreeViewSectionsMetadata.Section(0, a1, a2, a4);
  v6 = Array.init()();
  swift_getAssociatedTypeWitness();
  type metadata accessor for TTRITreeViewNode(255, a1, a2, v7);
  swift_getWitnessTable();
  type metadata accessor for Set();
  swift_getAssociatedConformanceWitness();
  Dictionary.init()();
  Dictionary.init()();
  return v6;
}

uint64_t sub_1001604BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  __chkstk_darwin(a1);
  v67 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = _swiftEmptyArrayStorage;
  v76 = v8;
  v69 = v9;
  v70 = v10;
  type metadata accessor for TTRITreeViewSectionsMetadata.Section(255, v11, v12, v13);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.enumerated()();
  v72[0] = v74[0];
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v66 = type metadata accessor for EnumeratedSequence.Iterator();
  EnumeratedSequence.Iterator.next()();
  v14 = v74[1];
  if (v74[1])
  {
    v15 = v74[0];
    v16 = v75;
    v17 = 1702195828;
    if ((a4 & 1) == 0)
    {
      v17 = 0x65736C6166;
    }

    v64 = v17;
    v65 = 0x8000000100674A40;
    v18 = 0xE500000000000000;
    if (a4)
    {
      v18 = 0xE400000000000000;
    }

    v63 = v18;
    v62 = (v6 + 16);
    v61 = v70 + 32;
    v60 = (v6 + 8);
    v59 = 0x8000000100674A60;
    v19 = v69;
    do
    {
      v73 = v15;
      strcpy(v74, "Section ");
      BYTE1(v74[1]) = 0;
      WORD1(v74[1]) = 0;
      HIDWORD(v74[1]) = -402653184;
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      v21 = v74[0];
      v22 = v74[1];
      v23 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100546970(0, *(v23 + 2) + 1, 1, v23);
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_100546970((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[16 * v25];
      *(v26 + 4) = v21;
      *(v26 + 5) = v22;
      v74[0] = 0;
      v74[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v27._countAndFlagsBits = v64;
      v74[0] = 0xD000000000000013;
      v74[1] = v65;
      v27._object = v63;
      String.append(_:)(v27);

      v28 = v74[0];
      v29 = v74[1];
      v31 = *(v23 + 2);
      v30 = *(v23 + 3);
      if (v31 >= v30 >> 1)
      {
        v23 = sub_100546970((v30 > 1), v31 + 1, 1, v23);
      }

      *(v23 + 2) = v31 + 1;
      v32 = &v23[16 * v31];
      *(v32 + 4) = v28;
      *(v32 + 5) = v29;
      strcpy(v74, "\tRoot node: ");
      BYTE5(v74[1]) = 0;
      HIWORD(v74[1]) = -5120;
      v33 = *(*v14 + 144);
      swift_beginAccess();
      v34 = v14 + v33;
      v35 = v67;
      v36 = v69;
      (*v62)(v67, v34, v69);
      v37 = (*(v70 + 32))(v36);
      v39 = v38;
      (*v60)(v35, v36);
      v40._countAndFlagsBits = v37;
      v40._object = v39;
      String.append(_:)(v40);

      v42 = v74[0];
      v43 = v74[1];
      v45 = *(v23 + 2);
      v44 = *(v23 + 3);
      v46 = v44 >> 1;
      v47 = v45 + 1;
      if (v44 >> 1 <= v45)
      {
        v23 = sub_100546970((v44 > 1), v45 + 1, 1, v23);
        v44 = *(v23 + 3);
        v46 = v44 >> 1;
      }

      *(v23 + 2) = v47;
      v48 = &v23[16 * v45];
      *(v48 + 4) = v42;
      *(v48 + 5) = v43;
      v49 = v45 + 2;
      if (v46 < v49)
      {
        v23 = sub_100546970((v44 > 1), v49, 1, v23);
      }

      *(v23 + 2) = v49;
      v50 = &v23[16 * v47];
      *(v50 + 4) = 0xD000000000000011;
      *(v50 + 5) = v59;
      v77 = v23;
      v73 = v16;
      v68 = v16;
      v51 = v70;
      type metadata accessor for TTRITreeViewNode(255, v19, v70, v41);
      type metadata accessor for Array();
      swift_getWitnessTable();
      v52 = Sequence.enumerated()();
      v73 = v74[0];
      __chkstk_darwin(v52);
      *(&v59 - 4) = v19;
      *(&v59 - 3) = v51;
      *(&v59 - 2) = sub_100161198;
      *(&v59 - 1) = 0;
      v53 = type metadata accessor for EnumeratedSequence();
      WitnessTable = swift_getWitnessTable();
      v54 = swift_getWitnessTable();
      v56 = sub_1000868E8(sub_10016119C, (&v59 - 6), v53, &type metadata for String, &type metadata for Never, v54, &protocol witness table for Never, v55);

      sub_100081340(v56);

      EnumeratedSequence.Iterator.next()();
      v15 = v74[0];
      v14 = v74[1];
      v16 = v75;
    }

    while (v74[1]);
  }

  v76 = v77;
  sub_100058000(&unk_100781F20, &unk_10062D7E0);
  sub_10000E188(&qword_100771E20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
  v57 = BidirectionalCollection<>.joined(separator:)();

  return v57;
}

uint64_t sub_100160B70(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = v17 - v6;
  v18 = 2313;
  v19 = 0xE200000000000000;
  v17[1] = v8;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 8238;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11 = *(*a2 + 144);
  swift_beginAccess();
  (*(v5 + 16))(v7, &a2[v11], v4);
  v12 = (*(*(v3 + 88) + 32))(v4);
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  return v18;
}

uint64_t sub_100160D68(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

_BYTE *sub_100160DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v38 - v10;
  v39 = v11;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  if (Array.count.getter())
  {
    type metadata accessor for _SetStorage();
    v15 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v43 = Array._getCount()();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v22 = v15;
    v23 = -1 << v15[32];
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *&v49[8 * (v24 >> 6)];
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (v22[6] + v28 * v24), a2);
        v30 = a3;
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *&v49[8 * (v24 >> 6)];
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *&v49[8 * v25] = v27 | v26;
    v34 = v22[6] + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = v22[2];
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    v22[2] = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10016119C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1, a1[1]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t *TTRListSharingUtilities.excludedShareActivityTypes.unsafeMutableAddressor()
{
  if (qword_100766F80 != -1)
  {
    swift_once();
  }

  return &static TTRListSharingUtilities.excludedShareActivityTypes;
}

id sub_100161240@<X0>(void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }
  }

  *(a3 + 24) = sub_100003540(0, &qword_10076FCC0, LPLinkMetadata_ptr);
  *a3 = a2;

  return a2;
}

id sub_100161338(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v15, a2, v6);

  v7 = v16;
  if (v16)
  {
    v8 = sub_10000C36C(v15, v16);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin(v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    sub_100004758(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_1001614A0@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }
  }

  *(a3 + 24) = sub_100003540(0, &qword_10076FCC0, LPLinkMetadata_ptr);
  *a3 = a2;

  return a2;
}

id sub_100161598(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(v13);

  v5 = v14;
  if (v14)
  {
    v6 = sub_10000C36C(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100004758(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1001616F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_10016268C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_100718610;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001A4CC();
  sub_100058000(&qword_100780A50, &qword_100635D30);
  sub_10001A524();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return 0;
}

id sub_100161994(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_100162684, v4);

  return v5;
}

void sub_100161A34(uint64_t a1, uint64_t a2, uint64_t a3)
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

NSString sub_100161AA4()
{
  sub_100058000(&qword_10076FCB8, &qword_1006329E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006329D0;
  v1 = UIActivityTypeCreateReminder;
  *(v0 + 32) = UIActivityTypeAirDrop;
  *(v0 + 40) = v1;
  *(v0 + 48) = UIActivityTypeAddToReadingList;
  *(v0 + 56) = UIActivityTypePostToFlickr;
  *(v0 + 64) = UIActivityTypePostToVimeo;
  *(v0 + 72) = UIActivityTypeCopyToPasteboard;
  *(v0 + 80) = UIActivityTypePrint;
  v2 = UIActivityTypeAirDrop;
  v3 = v1;
  v4 = UIActivityTypeAddToReadingList;
  v5 = UIActivityTypePostToFlickr;
  v6 = UIActivityTypePostToVimeo;
  v7 = UIActivityTypeCopyToPasteboard;
  v8 = UIActivityTypePrint;
  result = String._bridgeToObjectiveC()();
  *(v0 + 88) = result;
  static TTRListSharingUtilities.excludedShareActivityTypes = v0;
  return result;
}

double static TTRListSharingUtilities.excludedShareActivityTypes.getter()
{
  if (qword_100766F80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static TTRListSharingUtilities.excludedShareActivityTypes.setter(uint64_t a1)
{
  if (qword_100766F80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TTRListSharingUtilities.excludedShareActivityTypes = a1;
}

uint64_t (*static TTRListSharingUtilities.excludedShareActivityTypes.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100766F80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id _s9Reminders23TTRListSharingUtilitiesC20imageForLinkMetadataSo7LPImageCvgZ_0()
{
  v0 = [objc_allocWithZone(NSItemProvider) init];
  sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6[4] = sub_1001616F4;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100161994;
  v6[3] = &unk_100718598;
  v2 = _Block_copy(v6);
  [v0 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v2];
  _Block_release(v2);
  v3 = [objc_allocWithZone(LPImageProperties) init];
  [v3 setType:1];
  v4 = [objc_allocWithZone(LPImage) initWithItemProvider:v0 properties:v3 placeholderImage:0];

  return v4;
}

id _s9Reminders23TTRListSharingUtilitiesC26activityItemsConfiguration3forSo010UIActivityfG0CSo7REMListC_tFZ_0(void *a1)
{
  v2 = _s9Reminders23TTRListSharingUtilitiesC17shareItemProvider3forSo06NSItemG0CSo7REMListC_tFZ_0(a1);
  v3 = [objc_allocWithZone(LPLinkMetadata) init];
  v4 = [a1 displayName];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  [v3 setTitle:v4];

  static TTRLocalizableStrings.Sharing.sharedListSummaryForShareSheet.getter();
  v5 = String._bridgeToObjectiveC()();

  [v3 setSummary:v5];

  v6 = _s9Reminders23TTRListSharingUtilitiesC20imageForLinkMetadataSo7LPImageCvgZ_0();
  [v3 setImage:v6];

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10062D420;
  *(v7 + 32) = v2;
  v8 = objc_allocWithZone(UIActivityItemsConfiguration);
  sub_100003540(0, &unk_10076C570, NSItemProvider_ptr);
  v9 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithItemProviders:isa];

  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  v23 = sub_1001626DC;
  v24 = v12;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100161338;
  v22 = &unk_100718660;
  v13 = _Block_copy(&v19);
  v14 = v3;

  [v11 setPerItemMetadataProvider:v13];
  _Block_release(v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v23 = sub_1001626E4;
  v24 = v15;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100161598;
  v22 = &unk_1007186B0;
  v16 = _Block_copy(&v19);
  v17 = v14;

  [v11 setMetadataProvider:v16];
  _Block_release(v16);

  return v11;
}

id _s9Reminders23TTRListSharingUtilitiesC32shareSheetActivityViewController3for13popoverAnchorSo010UIActivityhI0CSo7REMListC_0A6UICore011TTRIPopoverL0VSgtFZ_0(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076FCC8, &unk_1006329F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for TTRIPopoverAnchor();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s9Reminders23TTRListSharingUtilitiesC26activityItemsConfiguration3forSo010UIActivityfG0CSo7REMListC_tFZ_0(a1);
  v15 = [objc_allocWithZone(UIActivityViewController) initWithActivityItemsConfiguration:v14];
  if (qword_100766F80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for ActivityType(0);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setExcludedActivityTypes:isa];

  sub_1001626EC(a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_1000079B4(v9, &unk_10076FCD0, &unk_1006304D0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v17 = [v15 popoverPresentationController];
    if (v17)
    {
      v18 = v17;
      TTRIPopoverAnchor.source.getter();
      v19 = type metadata accessor for TTRIPopoverAnchor.Source();
      (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
      UIPopoverPresentationController.setPopoverAnchorSource(_:)();

      sub_1000079B4(v6, &qword_10076FCC8, &unk_1006329F0);
      (*(v11 + 8))(v13, v10);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }
  }

  return v15;
}

id _s9Reminders23TTRListSharingUtilitiesC8appImageSo7UIImageCSgvgZ_0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = [v0 mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v3 scale:{v5, v8}];
  v10 = _s9Reminders23TTRListSharingUtilitiesC17remindersAppImage3forSo7IFImageCSgSo17ISImageDescriptorC_tFZ_0(v9);
  if (v10)
  {
    v11 = v10;
    result = [v10 CGImage];
    if (result)
    {
      v13 = result;
      [v11 scale];
      v15 = [objc_allocWithZone(UIImage) initWithCGImage:v13 scale:0 orientation:v14];

      return v15;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
    type metadata accessor for RemindersUICoreBundleLookupObject();
    v16 = static RemindersUICoreBundleLookupObject.bundle.getter();
    v17 = static UIImage.ttr_image(named:in:)();

    return v17;
  }

  return result;
}

void sub_10016268C()
{
  v1 = *(v0 + 16);
  v2 = _s9Reminders23TTRListSharingUtilitiesC8appImageSo7UIImageCSgvgZ_0();
  v1(v2, 0);
}

uint64_t sub_1001626EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100162774()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076FCE0);
  v1 = sub_100003E30(v0, qword_10076FCE0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10016283C()
{
  v1 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_10076FE00, &qword_10062DFB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem(0);
  v44 = *(v10 - 8);
  v45 = v10;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v0;
  v14 = [*(v0 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator) items];
  sub_100058000(&qword_10076FE08, &qword_100632A68);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = v15;
    v50[0] = _swiftEmptyArrayStorage;
    v15 = v50;
    result = sub_1004A1DF8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v19 = 0;
    v20 = v50[0];
    v21 = v17;
    v43 = v17 & 0xC000000000000001;
    v40 = 0x800000010066F5E0;
    v41 = i;
    v35 = OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dragAndDropCoordinatorID;
    v34 = v17 & 0xFFFFFFFFFFFFFF8;
    v46 = (v2 + 56);
    v38 = v6;
    v39 = (v2 + 48);
    v42 = v17;
    while (1)
    {
      if (v43)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_10;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v19 >= *(v34 + 16))
      {
        goto LABEL_20;
      }

      v22 = *(v21 + 8 * v19 + 32);
      swift_unknownObjectRetain();
LABEL_10:
      v23 = *v46;
      (*v46)(v9, 1, 1, v1);
      v24 = [v22 dragItem];
      v47 = 0xD000000000000022;
      v48 = v40;
      AnyHashable.init<A>(_:)();
      UIDragItem.localObject<A>(ofType:forKey:)();

      sub_100077654(v49);
      if ((*v39)(v6, 1, v1) == 1)
      {
        sub_1000079B4(v6, &qword_10076FE00, &qword_10062DFB8);
      }

      else
      {
        v25 = v36;
        sub_100165290(v6, v36, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        if (static UUID.== infix(_:_:)())
        {
          sub_1000079B4(v9, &qword_10076FE00, &qword_10062DFB8);
          sub_100165290(v25, v9, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
          v23(v9, 0, 1, v1);
        }

        else
        {
          sub_1001652F8(v25, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        }
      }

      v15 = [v22 dragItem];
      v26 = v45;
      sub_10000794C(v9, v13 + *(v45 + 20), &qword_10076FE00, &qword_10062DFB8);
      [v22 previewSize];
      v28 = v27;
      v30 = v29;
      sub_1000079B4(v9, &qword_10076FE00, &qword_10062DFB8);
      swift_unknownObjectRelease();
      *v13 = v15;
      v31 = (v13 + *(v26 + 24));
      *v31 = v28;
      v31[1] = v30;
      v50[0] = v20;
      v33 = *(v20 + 16);
      v32 = *(v20 + 24);
      v2 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v15 = v50;
        sub_1004A1DF8((v32 > 1), v33 + 1, 1);
        v20 = v50[0];
      }

      ++v19;
      *(v20 + 16) = v2;
      sub_100165290(v13, v20 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v33, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
      v21 = v42;
      v6 = v38;
      if (v41 == v19)
      {

        return v20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100162DFC()
{
  v0 = sub_100058000(&qword_10076FE00, &qword_10062DFB8);
  __chkstk_darwin(v0 - 8);
  v2 = &v29 - v1;
  v38 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem(0);
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v29 - v8;
  v9 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10016283C();
  v14 = v13[2];
  if (v14)
  {
    v15 = *(v9 + 20);
    v16 = *(v10 + 80);
    v29 = v13;
    v17 = v13 + ((v16 + 32) & ~v16);
    v18 = *(v10 + 72);
    v19 = (v3 + 48);
    v20 = _swiftEmptyArrayStorage;
    v31 = v18;
    v32 = v15;
    v30 = v19;
    do
    {
      sub_10016522C(v17, v12);
      sub_10000794C(v12 + v15, v2, &qword_10076FE00, &qword_10062DFB8);
      if ((*v19)(v2, 1, v38) == 1)
      {
        sub_1001652F8(v12, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
        sub_1000079B4(v2, &qword_10076FE00, &qword_10062DFB8);
      }

      else
      {
        v21 = v2;
        v22 = v36;
        sub_100165290(v2, v36, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        v23 = *v12;
        sub_1001652F8(v12, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
        v24 = v33;
        v25 = v37;
        sub_100165290(v22, &v33[*(v35 + 20)], type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        *v24 = v23;
        sub_100165290(v24, v25, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100547400(0, v20[2] + 1, 1, v20);
        }

        v27 = v20[2];
        v26 = v20[3];
        v2 = v21;
        v15 = v32;
        if (v27 >= v26 >> 1)
        {
          v20 = sub_100547400((v26 > 1), v27 + 1, 1, v20);
        }

        v20[2] = v27 + 1;
        sub_100165290(v37, v20 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
        v19 = v30;
        v18 = v31;
      }

      v17 += v18;
      --v14;
    }

    while (v14);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v20;
}

uint64_t sub_10016324C@<X0>(char *a1@<X8>)
{
  v153 = a1;
  v1 = sub_100058000(&unk_10076FE10, &unk_10062E020);
  __chkstk_darwin(v1 - 8);
  v134 = &v124 - v2;
  v133 = sub_100058000(&unk_100784640, &unk_100644F70);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v124 - v3;
  v139 = type metadata accessor for IndexPath();
  v141 = *(v139 - 8);
  __chkstk_darwin(v139);
  v128 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v140 = &v124 - v6;
  __chkstk_darwin(v7);
  v131 = &v124 - v8;
  __chkstk_darwin(v9);
  v136 = &v124 - v10;
  v11 = sub_100058000(&unk_10076FE20, &unk_10062E030);
  __chkstk_darwin(v11 - 8);
  v127 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v146 = &v124 - v14;
  v15 = sub_100058000(&unk_100784660, &unk_100644FA0);
  v147 = *(v15 - 8);
  v148 = v15;
  __chkstk_darwin(v15);
  v126 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v137 = &v124 - v18;
  v143 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v20 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for TTRUnadjustedIndexPath();
  v149 = *(v152 - 8);
  __chkstk_darwin(v152);
  v135 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v129 = &v124 - v23;
  __chkstk_darwin(v24);
  v138 = &v124 - v25;
  __chkstk_darwin(v26);
  v145 = &v124 - v27;
  v151 = type metadata accessor for TTRAdjustedIndexPath();
  v144 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TTRICollectionViewDropIntent();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100058000(&unk_10076FE30, &unk_100632A70);
  __chkstk_darwin(v33 - 8);
  v35 = &v124 - v34;
  v36 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v124 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(v154 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_lastDropProposal, v35, &unk_10076FE30, &unk_100632A70);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_1000079B4(v35, &unk_10076FE30, &unk_100632A70);
LABEL_22:
    v102 = enum case for TTRTreeViewDropDestination.unknown<A, B>(_:);
    v103 = sub_100058000(&qword_100769548, &qword_100640970);
    return (*(*(v103 - 8) + 104))(v153, v102, v103);
  }

  sub_100165290(v35, v39, type metadata accessor for TTRIRemindersBoardDropProposal);
  (*(v30 + 16))(v32, &v39[*(v36 + 24)], v29);
  v40 = (*(v30 + 88))(v32, v29);
  if (v40 == enum case for TTRICollectionViewDropIntent.insertAtDestinationIndexPath(_:))
  {
    (*(v30 + 96))(v32, v29);
    v141 = *(sub_100058000(&qword_10076FE60, &unk_10062E010) + 48);
    v41 = v144;
    v42 = v150;
    v43 = v151;
    (*(v144 + 32))(v150, v32, v151);
    v125 = v39;
    v44 = *(v39 + 1);
    (*(v41 + 16))(v20, v42, v43);
    v45 = v142;
    v46 = v143;
    (*(v142 + 104))(v20, enum case for TTRICollectionViewInsertAtIndexPathOption.at(_:), v143);
    v47 = v145;
    sub_1005D0F7C(v20, v44, v145);
    (*(v45 + 8))(v20, v46);
    v155 = v44;

    sub_1000815A4(v48);
    sub_100058000(&unk_10076FE40, &qword_10062E040);
    type metadata accessor for TTRRemindersListViewModel.ItemID();
    sub_100165358();
    sub_1001653BC(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
    Sequence.mapToSet<A>(_:)();

    v49 = v146;
    TTRBoardColumnDiffableDataSource.itemLocation(forInsertingAt:localItemIDsToBeMoved:)();

    (*(v149 + 8))(v47, v152);
    (*(v41 + 8))(v150, v151);
    sub_1001652F8(v125, type metadata accessor for TTRIRemindersBoardDropProposal);
    v51 = v147;
    v50 = v148;
    if ((*(v147 + 48))(v49, 1, v148) == 1)
    {
      sub_1000079B4(v49, &unk_10076FE20, &unk_10062E030);
      v52 = enum case for TTRTreeViewDropDestination.unknown<A, B>(_:);
      v53 = sub_100058000(&qword_100769548, &qword_100640970);
      (*(*(v53 - 8) + 104))(v153, v52, v53);
    }

    else
    {
      v79 = *(v51 + 32);
      v80 = v137;
      v79(v137, v49, v50);
      v81 = v153;
      v79(v153, v80, v50);
      v82 = enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:);
      v83 = sub_100058000(&qword_100769548, &qword_100640970);
      (*(*(v83 - 8) + 104))(v81, v82, v83);
    }

    v84 = type metadata accessor for TTRICollectionViewDropIntent.TargetType();
    return (*(*(v84 - 8) + 8))(&v32[v141], v84);
  }

  if (v40 != enum case for TTRICollectionViewDropIntent.insertIntoDestinationIndexPath(_:))
  {
    if (v40 != enum case for TTRICollectionViewDropIntent.unspecified(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v86 = v154;
    v87 = *(v154 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator);
    v88 = [v87 proposal];
    v89 = [v88 operation];

    v90 = v141;
    v91 = v140;
    if (v89 != 2)
    {
LABEL_21:
      sub_1001652F8(v39, type metadata accessor for TTRIRemindersBoardDropProposal);
      goto LABEL_22;
    }

    v92 = [v87 destinationIndexPath];
    if (v92)
    {
      v93 = v128;
      v94 = v92;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v154 = *(v86 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_column);
      v95 = v139;
      (*(v90 + 16))(v91, v93, v139);
      v96 = v135;
      TTRUnadjustedIndexPath.init(_:)();
      v155 = *(v39 + 1);

      sub_1000815A4(v97);
      sub_100058000(&unk_10076FE40, &qword_10062E040);
      type metadata accessor for TTRRemindersListViewModel.ItemID();
      sub_100165358();
      v98 = v39;
      sub_1001653BC(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      Sequence.mapToSet<A>(_:)();

      v99 = v127;
      TTRBoardColumnDiffableDataSource.itemLocation(forInsertingAt:localItemIDsToBeMoved:)();

      (*(v149 + 8))(v96, v152);
      (*(v90 + 8))(v93, v95);
      sub_1001652F8(v98, type metadata accessor for TTRIRemindersBoardDropProposal);
      v101 = v147;
      v100 = v148;
      if ((*(v147 + 48))(v99, 1, v148) != 1)
      {
        v120 = *(v101 + 32);
        v121 = v126;
        v120(v126, v99, v100);
        v118 = v153;
        v120(v153, v121, v100);
        v119 = &enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:);
        goto LABEL_32;
      }

      sub_1000079B4(v99, &unk_10076FE20, &unk_10062E030);
    }

    else
    {
      sub_1001652F8(v39, type metadata accessor for TTRIRemindersBoardDropProposal);
    }

    v118 = v153;
    v119 = &enum case for TTRTreeViewDropDestination.unknown<A, B>(_:);
LABEL_32:
    v122 = *v119;
    v123 = sub_100058000(&qword_100769548, &qword_100640970);
    return (*(*(v123 - 8) + 104))(v118, v122, v123);
  }

  (*(v30 + 96))(v32, v29);
  v54 = v149;
  v55 = v138;
  v56 = v152;
  (*(v149 + 32))(v138, v32, v152);
  v57 = [*(v154 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator) destinationIndexPath];
  if (!v57)
  {
    (*(v54 + 8))(v55, v56);
    goto LABEL_21;
  }

  v58 = v131;
  v59 = v57;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = v141;
  v61 = v136;
  v62 = v139;
  (*(v141 + 32))(v136, v58, v139);
  v63 = v140;
  TTRUnadjustedIndexPath.indexPath.getter();
  sub_1001653BC(&unk_100772710, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  LOBYTE(v59) = dispatch thunk of static Equatable.== infix(_:_:)();
  v150 = *(v60 + 8);
  v151 = v60 + 8;
  (v150)(v63, v62);
  if ((v59 & 1) == 0)
  {
    if (qword_100766F88 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100003E30(v64, qword_10076FCE0);
    v65 = v129;
    v66 = v152;
    (*(v54 + 16))(v129, v55, v152);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v125 = v39;
      v148 = v70;
      v155 = v70;
      *v69 = 136315394;
      v61 = v136;
      swift_beginAccess();
      sub_1001653BC(&qword_1007720C0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v65;
      v74 = sub_100004060(v71, v72, &v155);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      v63 = v140;
      TTRUnadjustedIndexPath.indexPath.getter();
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      (v150)(v63, v139);
      (*(v149 + 8))(v73, v152);
      v78 = sub_100004060(v75, v77, &v155);
      v62 = v139;

      *(v69 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v67, v68, "TTRIRemindersBoardDropCommitCoordinator: unexpected dropCoordinator.destinationIndexPath {given: %s, expected: %s}", v69, 0x16u);
      swift_arrayDestroy();
      v39 = v125;

      v54 = v149;
    }

    else
    {

      (*(v54 + 8))(v65, v66);
      v61 = v136;
      v63 = v140;
    }

    TTRUnadjustedIndexPath.indexPath.getter();
    swift_beginAccess();
    v60 = v141;
    (*(v141 + 40))(v61, v63, v62);
  }

  swift_beginAccess();
  (*(v60 + 16))(v63, v61, v62);
  v104 = v55;
  v105 = v135;
  TTRUnadjustedIndexPath.init(_:)();
  v106 = v134;
  TTRBoardColumnDiffableDataSource.itemLocation(forItemAt:)();
  v107 = *(v54 + 8);
  v108 = v152;
  v107(v105, v152);
  v107(v104, v108);
  sub_1001652F8(v39, type metadata accessor for TTRIRemindersBoardDropProposal);
  v109 = v132;
  v110 = v133;
  if ((*(v132 + 48))(v106, 1, v133) == 1)
  {
    sub_1000079B4(v106, &unk_10076FE10, &unk_10062E020);
    v111 = enum case for TTRTreeViewDropDestination.unknown<A, B>(_:);
    v112 = sub_100058000(&qword_100769548, &qword_100640970);
    (*(*(v112 - 8) + 104))(v153, v111, v112);
  }

  else
  {
    v113 = *(v109 + 32);
    v114 = v130;
    v113(v130, v106, v110);
    v115 = v153;
    v113(v153, v114, v110);
    v116 = enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:);
    v117 = sub_100058000(&qword_100769548, &qword_100640970);
    (*(*(v117 - 8) + 104))(v115, v116, v117);
  }

  return (v150)(v61, v62);
}

void sub_100164774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v3 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_column) + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = [v10 layoutAttributesForItemAtIndexPath:isa];

  if (v12)
  {
    [v12 bounds];

    v13 = *(v3 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator);
    v25 = IndexPath._bridgeToObjectiveC()().super.isa;
    CGRect.center.getter();
    v14 = [v13 dropItem:a1 intoItemAtIndexPath:v25 rect:?];
    swift_unknownObjectRelease();
    v15 = v25;
  }

  else
  {
    if (qword_100766F88 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_10076FCE0);
    (*(v7 + 16))(v9, a2, v6);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      sub_1001653BC(&qword_1007720C0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v7 + 8))(v9, v6);
      v24 = sub_100004060(v21, v23, &v26);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "TTRIRemindersBoardDropCommitCoordinator: layout attributes for the item doesn't exist. {indexPath: %s}", v19, 0xCu);
      sub_100004758(v20);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_100164AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v45 = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v6 - 8);
  v43 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v38 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v39 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v38 - v15;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    v38[1] = v3;
    v18 = v45;
    sub_1000079B4(v10, &unk_100771B10, qword_10062E540);
    v20 = v43;
    v19 = v44;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
    if (v17(v20, 1, v11) == 1)
    {
      sub_1000079B4(v20, &unk_100771B10, qword_10062E540);
      if (qword_100766F88 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100003E30(v21, qword_10076FCE0);
      v23 = v40;
      v22 = v41;
      v24 = v19;
      v25 = v42;
      (*(v41 + 16))(v40, v24, v42);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v46 = v29;
        *v28 = 136315138;
        sub_1001653BC(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;
        (*(v22 + 8))(v23, v25);
        v33 = sub_100004060(v30, v32, &v46);

        *(v28 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v26, v27, "TTRIRemindersBoardDropCommitCoordinator: row for the fallbackItemID doesn't exist. {itemID: %s}", v28, 0xCu);
        sub_100004758(v29);
      }

      else
      {

        (*(v22 + 8))(v23, v25);
      }
    }

    else
    {
      v37 = v39;
      (*(v12 + 32))(v39, v20, v11);
      sub_100164774(v18, v37);
      (*(v12 + 8))(v37, v11);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    v34 = *(v3 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v36 = [v34 dropItem:v45 toItemAtIndexPath:isa];
    swift_unknownObjectRelease();

    (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_100164FF0()
{
  v1 = OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dragAndDropCoordinatorID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_lastDropProposal, &unk_10076FE30, &unk_100632A70);

  return swift_deallocClassInstance();
}

void sub_1001650F4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100166C78(319, &unk_10076FD50, type metadata accessor for TTRIRemindersBoardDropProposal);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10016522C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100165290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001652F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100165358()
{
  result = qword_100769550;
  if (!qword_100769550)
  {
    sub_10005D20C(&unk_10076FE40, &qword_10062E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769550);
  }

  return result;
}

uint64_t sub_1001653BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void **sub_100165404(void **a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a1;
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 16);
    v11 = v4;
    v10(v7, v8, v9);
    v12 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
    v13 = v12[5];
    v14 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v15 = *(*(v14 - 8) + 16);
    v15(&v7[v13], &v8[v13], v14);
    v16 = v12[6];
    v17 = type metadata accessor for IndexPath();
    (*(*(v17 - 8) + 16))(&v7[v16], &v8[v16], v17);
    v15(&v7[v12[7]], &v8[v12[7]], v14);
    v7[v12[8]] = v8[v12[8]];
  }

  return v5;
}

uint64_t sub_100165598(id *a1, uint64_t a2)
{
  v4 = a1 + *(a2 + 20);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v7 = v6[5];
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v13 = *(*(v8 - 8) + 8);
  (v13)((v8 - 8), &v4[v7], v8);
  v9 = v6[6];
  v10 = type metadata accessor for IndexPath();
  (*(*(v10 - 8) + 8))(&v4[v9], v10);
  v11 = &v4[v6[7]];

  return v13(v11, v8);
}

void **sub_1001656CC(void **a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 16);
  v10 = v4;
  v9(v6, v7, v8);
  v11 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v12 = v11[5];
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v14 = *(*(v13 - 8) + 16);
  v14(&v6[v12], &v7[v12], v13);
  v15 = v11[6];
  v16 = type metadata accessor for IndexPath();
  (*(*(v16 - 8) + 16))(&v6[v15], &v7[v15], v16);
  v14(&v6[v11[7]], &v7[v11[7]], v13);
  v6[v11[8]] = v7[v11[8]];
  return a1;
}

void **sub_100165818(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 24))(v10, v11, v12);
  v13 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v14 = v13[5];
  v15 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v16 = *(*(v15 - 8) + 24);
  v16(&v10[v14], &v11[v14], v15);
  v17 = v13[6];
  v18 = type metadata accessor for IndexPath();
  (*(*(v18 - 8) + 24))(&v10[v17], &v11[v17], v18);
  v16(&v10[v13[7]], &v11[v13[7]], v15);
  v10[v13[8]] = v11[v13[8]];
  return a1;
}

void *sub_100165970(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 32))(v5, v6, v7);
  v8 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v9 = v8[5];
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v11 = *(*(v10 - 8) + 32);
  v11(&v5[v9], &v6[v9], v10);
  v12 = v8[6];
  v13 = type metadata accessor for IndexPath();
  (*(*(v13 - 8) + 32))(&v5[v12], &v6[v12], v13);
  v11(&v5[v8[7]], &v6[v8[7]], v10);
  v5[v8[8]] = v6[v8[8]];
  return a1;
}

void **sub_100165AB4(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 40))(v8, v9, v10);
  v11 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v12 = v11[5];
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v14 = *(*(v13 - 8) + 40);
  v14(&v8[v12], &v9[v12], v13);
  v15 = v11[6];
  v16 = type metadata accessor for IndexPath();
  (*(*(v16 - 8) + 40))(&v8[v15], &v9[v15], v16);
  v14(&v8[v11[7]], &v9[v11[7]], v13);
  v8[v11[8]] = v9[v11[8]];
  return a1;
}

uint64_t sub_100165C30(uint64_t a1)
{
  result = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **sub_100165CCC(void **a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = *(a3 + 20);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
    v22 = *(v11 - 1);
    v12 = *(v22 + 48);
    v13 = v4;
    if (v12(v10, 1, v11))
    {
      v14 = sub_100058000(&qword_10076FE00, &qword_10062DFB8);
      memcpy(v9, v10, *(*(v14 - 8) + 64));
    }

    else
    {
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 16))(v9, v10, v15);
      v16 = v11[5];
      v17 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v18 = *(*(v17 - 8) + 16);
      v18(&v9[v16], &v10[v16], v17);
      v19 = v11[6];
      v20 = type metadata accessor for IndexPath();
      (*(*(v20 - 8) + 16))(&v9[v19], &v10[v19], v20);
      v18(&v9[v11[7]], &v10[v11[7]], v17);
      v9[v11[8]] = v10[v11[8]];
      (*(v22 + 56))(v9, 0, 1, v11);
    }

    *(v7 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  }

  return v7;
}

uint64_t sub_100165F40(id *a1, uint64_t a2)
{
  v4 = a1 + *(a2 + 20);
  v5 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  result = (*(*(v5 - 1) + 48))(v4, 1, v5);
  if (!result)
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v4, v7);
    v8 = v5[5];
    v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v13 = *(*(v9 - 8) + 8);
    (v13)((v9 - 8), &v4[v8], v9);
    v10 = v5[6];
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
    v12 = &v4[v5[7]];

    return v13(v12, v9);
  }

  return result;
}

void **sub_1001660C0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v11 = *(v10 - 1);
  v12 = *(v11 + 48);
  v13 = v6;
  if (v12(v9, 1, v10))
  {
    v14 = sub_100058000(&qword_10076FE00, &qword_10062DFB8);
    memcpy(v8, v9, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 16))(v8, v9, v15);
    v16 = v10[5];
    v17 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v18 = *(*(v17 - 8) + 16);
    v18(&v8[v16], &v9[v16], v17);
    v19 = v10[6];
    v20 = type metadata accessor for IndexPath();
    (*(*(v20 - 8) + 16))(&v8[v19], &v9[v19], v20);
    v18(&v8[v10[7]], &v9[v10[7]], v17);
    v8[v10[8]] = v9[v10[8]];
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void **sub_1001662D8(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v13 = *(v12 - 1);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  v16 = v14(v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 24))(v10, v11, v28);
      v29 = v12[5];
      v30 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v31 = *(*(v30 - 8) + 24);
      v31(&v10[v29], &v11[v29], v30);
      v32 = v12[6];
      v33 = type metadata accessor for IndexPath();
      (*(*(v33 - 8) + 24))(&v10[v32], &v11[v32], v33);
      v31(&v10[v12[7]], &v11[v12[7]], v30);
      v10[v12[8]] = v11[v12[8]];
      goto LABEL_7;
    }

    sub_1001652F8(v10, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
    goto LABEL_6;
  }

  if (v16)
  {
LABEL_6:
    v23 = sub_100058000(&qword_10076FE00, &qword_10062DFB8);
    memcpy(v10, v11, *(*(v23 - 8) + 64));
    goto LABEL_7;
  }

  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 16))(v10, v11, v17);
  v18 = v12[5];
  v19 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v20 = *(*(v19 - 8) + 16);
  v20(&v10[v18], &v11[v18], v19);
  v21 = v12[6];
  v22 = type metadata accessor for IndexPath();
  (*(*(v22 - 8) + 16))(&v10[v21], &v11[v21], v22);
  v20(&v10[v12[7]], &v11[v12[7]], v19);
  v10[v12[8]] = v11[v12[8]];
  (*(v13 + 56))(v10, 0, 1, v12);
LABEL_7:
  v24 = *(a3 + 24);
  v25 = (a1 + v24);
  v26 = (a2 + v24);
  *v25 = *v26;
  v25[1] = v26[1];
  return a1;
}

void *sub_100166634(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v10 = *(v9 - 1);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    v11 = sub_100058000(&qword_10076FE00, &qword_10062DFB8);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 32))(v7, v8, v12);
    v13 = v9[5];
    v14 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v15 = *(*(v14 - 8) + 32);
    v15(&v7[v13], &v8[v13], v14);
    v16 = v9[6];
    v17 = type metadata accessor for IndexPath();
    (*(*(v17 - 8) + 32))(&v7[v16], &v8[v16], v17);
    v15(&v7[v9[7]], &v8[v9[7]], v14);
    v7[v9[8]] = v8[v9[8]];
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void **sub_100166848(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v11 = *(v10 - 1);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  v14 = v12(v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      v23 = type metadata accessor for UUID();
      (*(*(v23 - 8) + 40))(v8, v9, v23);
      v24 = v10[5];
      v25 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v26 = *(*(v25 - 8) + 40);
      v26(&v8[v24], &v9[v24], v25);
      v27 = v10[6];
      v28 = type metadata accessor for IndexPath();
      (*(*(v28 - 8) + 40))(&v8[v27], &v9[v27], v28);
      v26(&v8[v10[7]], &v9[v10[7]], v25);
      v8[v10[8]] = v9[v10[8]];
      goto LABEL_7;
    }

    sub_1001652F8(v8, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v21 = sub_100058000(&qword_10076FE00, &qword_10062DFB8);
    memcpy(v8, v9, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 32))(v8, v9, v15);
  v16 = v10[5];
  v17 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v18 = *(*(v17 - 8) + 32);
  v18(&v8[v16], &v9[v16], v17);
  v19 = v10[6];
  v20 = type metadata accessor for IndexPath();
  (*(*(v20 - 8) + 32))(&v8[v19], &v9[v19], v20);
  v18(&v8[v10[7]], &v9[v10[7]], v17);
  v8[v10[8]] = v9[v10[8]];
  (*(v11 + 56))(v8, 0, 1, v10);
LABEL_7:
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void sub_100166BB8(uint64_t a1)
{
  sub_100166C78(319, &unk_10076FF60, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_100166C78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_100166CCC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v5 = static UIFont.roundedSystemFont(ofSize:weight:)();
  v6 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  [v6 scaledFontForFont:v5];
  sub_10008CD14();
  AttributeContainer.subscript.setter();
}

uint64_t sub_100166DE0(void *a1)
{
  v23 = a1;
  v1 = sub_100058000(&qword_100769CF8, &qword_10062E8F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  static UIButton.Configuration.filled()();
  v15 = objc_opt_self();
  v16 = [v15 tintColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v17 = [v15 whiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.contentInsets.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v18 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  static TTRLocalizableStrings.AccountsList.upgradeButtonTitle.getter();
  UIButton.Configuration.title.setter();
  sub_100003540(0, &unk_10077A690, UIButton_ptr);
  (*(v9 + 16))(v11, v14, v8);
  v19 = v23;
  v20 = UIButton.init(configuration:primaryAction:)();
  (*(v9 + 8))(v14, v8);
  return v20;
}

uint64_t (*sub_1001670F4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10016A6D4(v3, v8);
  return sub_10016720C;
}

void sub_10016720C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t (*sub_100167284(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10016A8A8(v6, a2, a3);
  return sub_10016730C;
}

void sub_10016730C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

double sub_100167358(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  dispatch thunk of TTRDeferredViewActionScheduling.trigger.getter();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10016A3D8;
  *(v3 + 24) = v2;
  sub_100058000(&qword_100769510, &unk_10062DFC0);
  sub_10000E1D0(&unk_100784590, &qword_100769510, &unk_10062DFC0);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_100058000(&unk_100781750, &qword_100632C80);
  sub_10000E1D0(&qword_100770088, &unk_100781750, &qword_100632C80);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10016A3F0;
  *(v5 + 24) = v4;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return result;
}

double sub_100167624(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10016767C();
  }

  return result;
}

uint64_t sub_10016767C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v208 = *(v1 - 8);
  __chkstk_darwin(v1);
  v192 = &v191 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v191 - v4;
  __chkstk_darwin(v6);
  v198 = &v191 - v7;
  __chkstk_darwin(v8);
  v194 = &v191 - v9;
  __chkstk_darwin(v10);
  v193 = &v191 - v11;
  __chkstk_darwin(v12);
  v195 = &v191 - v13;
  __chkstk_darwin(v14);
  v205 = &v191 - v15;
  __chkstk_darwin(v16);
  v201 = &v191 - v17;
  __chkstk_darwin(v18);
  v212 = &v191 - v19;
  swift_beginAccess();
  if (*(v0 + 88) == 1)
  {
    swift_beginAccess();

    v21 = sub_1004B538C(v20);
  }

  else
  {
  }

  v221 = v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  v210 = v1;
  *&v211 = Strong;
  v204 = v0;
  v202 = v5;
  if (!Strong)
  {
    v28 = _swiftEmptyArrayStorage;
    v38 = _swiftEmptyArrayStorage[2];
    if (!v38)
    {
      goto LABEL_27;
    }

LABEL_155:
    v165 = 0;
    v166 = v28 + 4;
    v209 = (v208 + 16);
    v207 = v208 + 8;
    v39 = &_swiftEmptyDictionarySingleton;
    v206 = v28;
    v203 = v28 + 4;
    while (v165 < v28[2])
    {
      v167 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_columnID;
      v211 = *&v166[2 * v165];
      v168 = v211;
      swift_beginAccess();
      v169 = *v209;
      v170 = v168 + v167;
      v171 = v212;
      (*v209)(v212, v170, v1);
      swift_unknownObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v222.i64[0] = v39;
      v173 = sub_1003AB294(v171);
      v175 = v39;
      v176 = v173;
      v177 = v39[2];
      v178 = (v174 & 1) == 0;
      v179 = v177 + v178;
      if (__OFADD__(v177, v178))
      {
        goto LABEL_169;
      }

      v180 = v174;
      if (v175[3] >= v179)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003B0790();
        }
      }

      else
      {
        sub_10054DC1C(v179, isUniquelyReferenced_nonNull_native);
        v181 = sub_1003AB294(v212);
        if ((v180 & 1) != (v182 & 1))
        {
          goto LABEL_174;
        }

        v176 = v181;
      }

      v1 = v210;
      v183 = v222.i64[0];
      if (v180)
      {
        *(*(v222.i64[0] + 56) + 16 * v176) = v211;
        v39 = v183;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*v207)(v212, v1);
      }

      else
      {
        v184 = v38;
        v39 = v222.i64[0];
        *(v222.i64[0] + 8 * (v176 >> 6) + 64) |= 1 << v176;
        v185 = v208;
        v186 = v1;
        v187 = v212;
        v169(v39[6] + *(v208 + 72) * v176, v212, v186);
        *(v39[7] + 16 * v176) = v211;
        swift_unknownObjectRelease();
        v188 = v187;
        v1 = v186;
        (*(v185 + 8))(v188, v186);
        v189 = v39[2];
        v123 = __OFADD__(v189, 1);
        v190 = v189 + 1;
        if (v123)
        {
          goto LABEL_170;
        }

        v39[2] = v190;
        v38 = v184;
        v166 = v203;
      }

      ++v165;
      v28 = v206;
      if (v38 == v165)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v23 = *(v211 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView);
  if (!v23)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_175:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v24 = [v23 visibleCells];
  sub_10016A474();
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_153:
    v28 = _swiftEmptyArrayStorage;
    goto LABEL_154;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_153;
  }

LABEL_8:
  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  do
  {
    v29 = v27;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_149;
        }

        v30 = *(v25 + 8 * v29 + 32);
      }

      v31 = v30;
      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_148;
      }

      type metadata accessor for TTRIBoardColumnCollectionViewCell();
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        break;
      }

LABEL_11:
      ++v29;
      if (v27 == v26)
      {
        goto LABEL_154;
      }
    }

    v33 = *(v32 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_chromelessBarsStateContributor);

    if (!v33)
    {
      goto LABEL_11;
    }

    v34 = swift_isUniquelyReferenced_nonNull_native();
    if ((v34 & 1) == 0)
    {
      v28 = sub_100547E24(0, v28[2] + 1, 1, v28);
    }

    v36 = v28[2];
    v35 = v28[3];
    if (v36 >= v35 >> 1)
    {
      v28 = sub_100547E24((v35 > 1), v36 + 1, 1, v28);
    }

    v28[2] = v36 + 1;
    v37 = &v28[2 * v36];
    v37[4] = v33;
    v37[5] = &off_10072E500;
  }

  while (v27 != v26);
LABEL_154:

  swift_unknownObjectRelease();
  v1 = v210;
  v38 = v28[2];
  if (v38)
  {
    goto LABEL_155;
  }

LABEL_27:
  v39 = &_swiftEmptyDictionarySingleton;
LABEL_28:

  v40 = v204;
  swift_beginAccess();

  v42 = sub_1004B538C(v41);

  v206 = v39;
  sub_10057D1C4(v43, v42);
  v45 = 0;
  v47 = v44 + 56;
  v46 = *(v44 + 56);
  v207 = v44;
  v48 = 1 << *(v44 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v46;
  v51 = (v48 + 63) >> 6;
  v212 = v208 + 16;
  *&v211 = v208 + 32;
  v52 = (v208 + 8);
  v197 = xmmword_10062E1C0;
  v209 = (v208 + 8);
  v199 = v51;
  v200 = v44 + 56;
  if (v50)
  {
    while (1)
    {
LABEL_37:
      v59 = v208;
      v60 = *(v208 + 16);
      v61 = v201;
      v60(v201, *(v207 + 48) + *(v208 + 72) * (__clz(__rbit64(v50)) | (v45 << 6)), v1);
      v62 = v205;
      (*(v59 + 32))(v205, v61, v1);
      v63 = v206;
      if (v206[2] && (v64 = sub_1003AB294(v62), (v65 & 1) != 0))
      {
        v66 = (v63[7] + 16 * v64);
        v67 = *v66;
        v68 = v66[1];
        swift_unknownObjectRetain();
      }

      else
      {
        v67 = 0;
        v68 = 0;
      }

      swift_beginAccess();
      v69 = *(v40 + 48);
      v70 = *(v69 + 16);
      if (v70)
      {
        v71 = sub_1003AB294(v205);
        if (v72)
        {
          sub_10016A5B4(*(v69 + 56) + 32 * v71, &v222);
          LOBYTE(v70) = v222.i64[1] != 1;
          if (v222.i64[0] != 1)
          {
            goto LABEL_49;
          }

          goto LABEL_47;
        }

        LOBYTE(v70) = 0;
      }

      v222 = vdupq_n_s64(1uLL);
      *&v223 = 0;
      WORD4(v223) = 0;
LABEL_47:
      if ((v70 & 1) == 0)
      {
        sub_1000079B4(&v222, &qword_100770090, &qword_100632C88);
        swift_endAccess();
        v216 = v197;
        v217 = 0;
        goto LABEL_50;
      }

LABEL_49:
      sub_10000794C(&v222, &v216, &qword_1007700A0, &qword_100632C90);
      sub_1000079B4(&v222, &qword_100770090, &qword_100632C88);
      swift_endAccess();
LABEL_50:
      v50 &= v50 - 1;
      if (!v67)
      {
        sub_10000794C(&v216, &v222, &qword_1007700A0, &qword_100632C90);
        if (*&v222 == __PAIR128__(1, 0))
        {
          sub_1000079B4(&v222, &qword_1007700A0, &qword_100632C90);
        }

        else
        {
          v88 = v223;

          sub_10016A00C(&v222);
          if (v88)
          {
            AnyCancellable.cancel()();
          }
        }

        v60(v194, v205, v1);
        swift_beginAccess();
        v90 = sub_1001670F4(v222.i64);
        if (*v89 == 1 && v89[1] == 1)
        {
          (v90)(&v222, 0);
          swift_endAccess();
          v91 = *v52;
          (*v52)(v194, v1);
        }

        else
        {
          v92 = v89;
          sub_1000079B4(v89, &qword_1007700A0, &qword_100632C90);
          *v92 = v197;
          v92[2] = 0;
          (v90)(&v222, 0);
          swift_endAccess();
          v91 = *v52;
          (*v52)(v194, v1);
        }

        sub_1000079B4(&v216, &qword_1007700A0, &qword_100632C90);
        v91(v205, v1);
        goto LABEL_74;
      }

      sub_10000794C(&v216, &v213, &qword_1007700A0, &qword_100632C90);
      if (!v213 && v214 == 1)
      {
        swift_unknownObjectRetain();
        sub_1000079B4(&v213, &qword_1007700A0, &qword_100632C90);
        goto LABEL_59;
      }

      sub_10016A578(&v213, &v222);
      v73 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRetain();
      if (!v73 || (swift_unknownObjectRelease(), v73 != v67))
      {
        sub_10016A00C(&v222);
        goto LABEL_59;
      }

      v93 = v223;

      sub_10016A00C(&v222);
      if (v93)
      {
        swift_unknownObjectRelease_n();

        sub_1000079B4(&v216, &qword_1007700A0, &qword_100632C90);
        (*v52)(v205, v1);
LABEL_74:
        v51 = v199;
        v47 = v200;
        if (!v50)
        {
          goto LABEL_33;
        }
      }

      else
      {
LABEL_59:
        v203 = v60;
        v196 = v68;
        type metadata accessor for TTRIBoardColumnChromelessBarsStateContributor(0);
        v74 = sub_1005552D0();
        v75 = v204;
        v222.i64[0] = v74;
        swift_allocObject();
        swift_weakInit();
        sub_100058000(&qword_1007700A8, &qword_100632C98);
        sub_10000E1D0(&qword_1007700B0, &qword_1007700A8, &qword_100632C98);
        v76 = Publisher<>.sink(receiveValue:)();

        v214 = v196;
        v196 = v67;
        swift_unknownObjectWeakInit();
        v215 = v76;
        sub_10016A4C8(&v213, v220);
        swift_beginAccess();
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v222.i64[0] = *(v75 + 48);
        v78 = v222.i64[0];
        *(v75 + 48) = 0x8000000000000000;
        v80 = sub_1003AB294(v205);
        v81 = v78[2];
        v82 = (v79 & 1) == 0;
        v83 = v81 + v82;
        if (__OFADD__(v81, v82))
        {
          goto LABEL_150;
        }

        v84 = v79;
        if (v78[3] >= v83)
        {
          v1 = v210;
          if ((v77 & 1) == 0)
          {
            sub_1003B050C();
            v78 = v222.i64[0];
          }
        }

        else
        {
          sub_10054D840(v83, v77);
          v78 = v222.i64[0];
          v85 = sub_1003AB294(v205);
          v1 = v210;
          if ((v84 & 1) != (v86 & 1))
          {
            goto LABEL_175;
          }

          v80 = v85;
        }

        *(v204 + 48) = v78;
        if ((v84 & 1) == 0)
        {
          v222 = v197;
          *&v223 = 0;
          WORD4(v223) = 0;
          v87 = v195;
          (v203)(v195, v205, v1);
          sub_10054F974(v80, v87, &v222, v78);
        }

        sub_10016A508(v220, v78[7] + 32 * v80);
        swift_endAccess();
        v53 = v193;
        v54 = v205;
        (v203)(v193, v205, v1);
        v55 = v195;
        sub_10058B6B8(v195, v53);
        swift_unknownObjectRelease_n();
        v56 = *v209;
        v57 = v55;
        v52 = v209;
        (*v209)(v57, v1);
        sub_10016A00C(&v213);
        sub_1000079B4(&v216, &qword_1007700A0, &qword_100632C90);
        (v56)(v54, v1);
        v51 = v199;
        v47 = v200;
        v40 = v204;
        if (!v50)
        {
          goto LABEL_33;
        }
      }
    }
  }

  while (1)
  {
LABEL_33:
    v58 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_145;
    }

    if (v58 >= v51)
    {
      break;
    }

    v50 = *(v47 + 8 * v58);
    ++v45;
    if (v50)
    {
      v45 = v58;
      goto LABEL_37;
    }
  }

  v94 = v221 + 56;
  v95 = 1 << *(v221 + 32);
  v96 = -1;
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  v97 = v96 & *(v221 + 56);
  v98 = (v95 + 63) >> 6;
  v207 = v221;

  v99 = 0;
  while (v97)
  {
LABEL_87:
    while (1)
    {
      v101 = __clz(__rbit64(v97));
      v97 &= v97 - 1;
      v102 = v208;
      v103 = *(v207 + 48);
      v206 = *(v208 + 72);
      v104 = *(v208 + 16);
      v105 = v198;
      v106 = v210;
      v104(v198, v103 + v206 * (v101 | (v99 << 6)), v210);
      v107 = *(v102 + 32);
      v108 = v202;
      v107(v202, v105, v106);
      swift_beginAccess();
      v109 = *(v40 + 48);
      if (*(v109 + 16))
      {
        v110 = sub_1003AB294(v108);
        if (v111)
        {
          break;
        }
      }

      swift_endAccess();
      (*v209)(v108, v210);
      if (!v97)
      {
        goto LABEL_83;
      }
    }

    sub_10016A5B4(*(v109 + 56) + 32 * v110, &v213);
    sub_10016A43C(&v213, &v216);
    swift_endAccess();
    if (v216 == __PAIR128__(1, 0) || (v112 = swift_unknownObjectWeakLoadStrong()) == 0)
    {
      (*v209)(v202, v210);
    }

    else
    {
      v205 = v112;
      v113 = *(v112 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_chromelessBarsContributorConfiguration + 32);
      v114 = *(v112 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_chromelessBarsContributorConfiguration + 16);
      v222 = *(v112 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_chromelessBarsContributorConfiguration);
      v223 = v114;
      v224 = v113;
      v115 = v222.i64[0];
      v218 = sub_1001698C0(&v222) & 0x101;
      v116 = v192;
      v104(v192, v202, v210);
      swift_beginAccess();
      sub_10016A5B4(&v216, &v213);
      v117 = swift_isUniquelyReferenced_nonNull_native();
      v219 = *(v40 + 48);
      v118 = v219;
      *(v40 + 48) = 0x8000000000000000;
      v119 = sub_1003AB294(v116);
      v121 = v118[2];
      v122 = (v120 & 1) == 0;
      v123 = __OFADD__(v121, v122);
      v124 = v121 + v122;
      if (v123)
      {
        goto LABEL_171;
      }

      v125 = v120;
      if (v118[3] >= v124)
      {
        if ((v117 & 1) == 0)
        {
          v136 = v119;
          sub_1003B050C();
          v119 = v136;
        }
      }

      else
      {
        sub_10054D840(v124, v117);
        v119 = sub_1003AB294(v192);
        if ((v125 & 1) != (v126 & 1))
        {
          goto LABEL_174;
        }
      }

      v127 = v219;
      v128 = v209;
      v203 = (v209 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      if (v125)
      {
        sub_10016A648(&v213, v219[7] + 32 * v119);
        v129 = *v128;
        v130 = v210;
        (*v128)(v192, v210);
      }

      else
      {
        v219[(v119 >> 6) + 8] |= 1 << v119;
        v131 = v119;
        v132 = v210;
        v104((v127[6] + v119 * v206), v192, v210);
        sub_10016A43C(&v213, v127[7] + 32 * v131);
        v129 = *v128;
        (*v128)(v192, v132);
        v133 = v127[2];
        v123 = __OFADD__(v133, 1);
        v134 = v133 + 1;
        if (v123)
        {
          goto LABEL_172;
        }

        v127[2] = v134;
        v130 = v210;
      }

      v135 = v204;
      *(v204 + 48) = v127;

      swift_endAccess();
      sub_10016A61C(&v222);
      swift_unknownObjectRelease();
      v129(v202, v130);
      v40 = v135;
    }

    sub_10016A5EC(&v216);
  }

LABEL_83:
  while (1)
  {
    v100 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      break;
    }

    if (v100 >= v98)
    {

      v137 = *(v40 + 48);
      v138 = 1 << *(v137 + 32);
      v139 = -1;
      if (v138 < 64)
      {
        v139 = ~(-1 << v138);
      }

      v140 = v139 & *(v137 + 64);
      v141 = (v138 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v142 = 0;
      while (v140)
      {
        v143 = v142;
LABEL_114:
        v144 = __clz(__rbit64(v140));
        v140 &= v140 - 1;
        sub_10016A5B4(*(v137 + 56) + ((v143 << 11) | (32 * v144)), &v216);
        v145 = v218;
        sub_10016A5EC(&v216);
        if (v145 == 1)
        {
          v146 = 1;
LABEL_117:

          v147 = *(v204 + 48);
          v148 = 1 << *(v147 + 32);
          v149 = -1;
          if (v148 < 64)
          {
            v149 = ~(-1 << v148);
          }

          v150 = v149 & *(v147 + 64);
          v151 = (v148 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v152 = 0;
          do
          {
            if (!v150)
            {
              while (1)
              {
                v153 = v152 + 1;
                if (__OFADD__(v152, 1))
                {
                  goto LABEL_147;
                }

                if (v153 >= v151)
                {
                  v156 = 0;
                  goto LABEL_129;
                }

                v150 = *(v147 + 64 + 8 * v153);
                ++v152;
                if (v150)
                {
                  v152 = v153;
                  goto LABEL_126;
                }
              }
            }

            v153 = v152;
LABEL_126:
            v154 = __clz(__rbit64(v150));
            v150 &= v150 - 1;
            sub_10016A5B4(*(v147 + 56) + ((v153 << 11) | (32 * v154)), &v216);
            v155 = HIBYTE(v218);
            sub_10016A5EC(&v216);
          }

          while (v155 != 1);
          v156 = 1;
LABEL_129:

          v157 = *(v204 + 64);
          if (v157 == 2 || ((v146 ^ v157) & 1) != 0)
          {
            *(v204 + 64) = v146;
            if (swift_unknownObjectWeakLoadStrong())
            {
              TTRObservableViewModel.value.getter();
              v158 = BYTE1(v216) & 1;
              if (v216 == 2)
              {
                LOBYTE(v158) = 0;
              }

              LOBYTE(v216) = v146;
              BYTE1(v216) = v158;
              sub_10016A680();
              TTRObservableViewModel<A>.update(with:forcePublish:)();
              swift_unknownObjectRelease();
            }
          }

          v159 = *(v204 + 65);
          if (v159 == 2 || ((v156 ^ v159) & 1) != 0)
          {
            *(v204 + 65) = v156;
            if (swift_unknownObjectWeakLoadStrong())
            {
              TTRObservableViewModel.value.getter();
              LOBYTE(v216) = (v216 != 2) & v216;
              BYTE1(v216) = v156 ^ 1;
              sub_10016A680();
              TTRObservableViewModel<A>.update(with:forcePublish:)();
              swift_unknownObjectRelease();
            }
          }

          if (qword_100766F90 != -1)
          {
            goto LABEL_151;
          }

          goto LABEL_140;
        }
      }

      while (1)
      {
        v143 = v142 + 1;
        if (__OFADD__(v142, 1))
        {
          goto LABEL_146;
        }

        if (v143 >= v141)
        {
          v146 = 0;
          goto LABEL_117;
        }

        v140 = *(v137 + 64 + 8 * v143);
        ++v142;
        if (v140)
        {
          v142 = v143;
          goto LABEL_114;
        }
      }
    }

    v97 = *(v94 + 8 * v100);
    ++v99;
    if (v97)
    {
      v99 = v100;
      goto LABEL_87;
    }
  }

LABEL_145:
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
  __break(1u);
LABEL_151:
  swift_once();
LABEL_140:
  v160 = byte_10076FFA0;
  v161 = qword_10076FFA8;
  v162 = word_10076FFB0;
  if (HIBYTE(word_10076FFB0))
  {
    v163 = 256;
  }

  else
  {
    v163 = 0;
  }

  return sub_1001694B4(v160, v161, v163 | v162);
}

double sub_100168BB0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100168C10(v2);
  }

  return result;
}

void sub_100168C10(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  __chkstk_darwin(v10);
  v57 = &v48 - v11;
  __chkstk_darwin(v12);
  v60.i64[0] = &v48 - v13;
  swift_beginAccess();
  v14 = *(v2 + 48);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v58 = a1 + 7;
  v59 = a1;
  v61 = v5 + 16;
  v62 = (v5 + 8);
  v55 = v5;
  v52 = (v5 + 32);
  v54 = v14;

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v50 = v15;
  v49 = v19;
  v51 = v2;
LABEL_5:
  v22 = v20;
  v56 = v21;
  if (!v18)
  {
    goto LABEL_7;
  }

  do
  {
    v20 = v22;
LABEL_10:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = *(v55 + 72);
    v25 = *(v55 + 16);
    v25(v60.i64[0], *(v54 + 48) + v24 * (v23 | (v20 << 6)), v4);
    if (!v59[2] || (v26 = v59, sub_10016A3F8(&qword_10076FE50, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID), v27 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = -1 << *(v26 + 32), v29 = v27 & ~v28, ((*(v58 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0))
    {
LABEL_18:
      v33 = *v52;
      (*v52)(v53, v60.i64[0], v4);
      v21 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64.i64[0] = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004A2324(0, v21[2] + 1, 1);
        v21 = v64.i64[0];
      }

      v2 = v51;
      v36 = v21[2];
      v35 = v21[3];
      if (v36 >= v35 >> 1)
      {
        sub_1004A2324((v35 > 1), v36 + 1, 1);
        v21 = v64.i64[0];
      }

      v21[2] = v36 + 1;
      v33(v21 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + v36 * v24, v53, v4);
      v15 = v50;
      v19 = v49;
      goto LABEL_5;
    }

    v30 = ~v28;
    while (1)
    {
      v25(v9, v59[6] + v29 * v24, v4);
      sub_10016A3F8(&qword_10076BB60, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *v62;
      (*v62)(v9, v4);
      if (v31)
      {
        break;
      }

      v29 = (v29 + 1) & v30;
      if (((*(v58 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v32(v60.i64[0], v4);
    v22 = v20;
    v2 = v51;
    v21 = v56;
    v15 = v50;
    v19 = v49;
  }

  while (v18);
  while (1)
  {
LABEL_7:
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      return;
    }

    if (v20 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v20);
    ++v22;
    if (v18)
    {
      goto LABEL_10;
    }
  }

  v37 = v21[2];
  if (v37)
  {
    v38 = v21 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v39 = *(v55 + 72);
    v40 = *(v55 + 16);
    v60 = vdupq_n_s64(1uLL);
    v41 = v57;
    v40(v57, v38, v4);
    while (1)
    {
      swift_beginAccess();
      v42 = sub_1003AB294(v41);
      v44 = v43;
      v45 = *v62;
      (*v62)(v41, v4);
      if (v44)
      {
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v47 = *(v2 + 48);
        v63 = v47;
        *(v2 + 48) = 0x8000000000000000;
        if (!v46)
        {
          sub_1003B050C();
          v47 = v63;
        }

        v45((*(v47 + 48) + v42 * v39), v4);
        sub_10016A43C(*(v47 + 56) + 32 * v42, &v64);
        sub_1003ADDB4(v42, v47);
        *(v2 + 48) = v47;
      }

      else
      {
        v64 = v60;
        v65 = 0;
        v66 = 0;
      }

      swift_endAccess();
      sub_1000079B4(&v64, &qword_100770090, &qword_100632C88);
      v38 += v39;
      if (!--v37)
      {
        break;
      }

      v40(v41, v38, v4);
    }
  }
}

double sub_1001691E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    *(v3 + 72) = 1;
    v4 = *(v3 + 80);
    v5 = *(v3 + 88);
    v6 = *(v3 + 89);
    v7 = qword_100766F90;

    if (v7 != -1)
    {
      swift_once();
    }

    if (byte_10076FFA0 == 1)
    {
      v8 = HIBYTE(word_10076FFB0);
      v9 = word_10076FFB0;
      sub_1000E8AD0(v4, qword_10076FFA8);
      v11 = v10;

      if ((v11 & 1) != 0 && ((v5 ^ v9) & 1) == 0 && ((v6 ^ v8) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    swift_getObjectType();
    dispatch thunk of TTRDeferredViewActionScheduling.schedule()();
LABEL_11:
  }

  return result;
}

uint64_t sub_10016931C()
{
  swift_beginAccess();
  *(v0 + 88) = 1;
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 89);
  v4 = qword_100766F90;

  if (v4 != -1)
  {
    swift_once();
  }

  if (v1 != byte_10076FFA0)
  {

LABEL_5:
    swift_getObjectType();
    return dispatch thunk of TTRDeferredViewActionScheduling.schedule()();
  }

  v6 = HIBYTE(word_10076FFB0);
  v7 = word_10076FFB0;
  sub_1000E8AD0(v2, qword_10076FFA8);
  v9 = v8;

  if (v9 & 1) == 0 || !v7 || ((v3 ^ v6))
  {
    goto LABEL_5;
  }

  return result;
}

void sub_10016941C()
{
  byte_10076FFA0 = 0;
  qword_10076FFA8 = &_swiftEmptySetSingleton;
  word_10076FFB0 = 0;
}

uint64_t sub_10016943C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[17];
  v4 = a2[17];
  v5 = a2[16];
  v6 = a1[16];
  sub_1000E8AD0(*(a1 + 1), *(a2 + 1));
  if ((v5 ^ v6))
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 ^ v4 ^ 1;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001694B4(char a1, uint64_t a2, int a3)
{
  swift_beginAccess();
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3 & 1;
  *(v3 + 89) = BYTE1(a3) & 1;

  if (qword_100766F90 != -1)
  {
    swift_once();
  }

  if (byte_10076FFA0 != (a1 & 1))
  {

LABEL_5:
    swift_getObjectType();
    return dispatch thunk of TTRDeferredViewActionScheduling.schedule()();
  }

  v8 = HIBYTE(word_10076FFB0);
  v9 = word_10076FFB0;
  sub_1000E8AD0(a2, qword_10076FFA8);
  v11 = v10;

  if (v11 & 1) == 0 || ((v9 ^ a3) & 1) != 0 || ((((a3 & 0x100) != 0) ^ v8))
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1001695E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100058000(&qword_1007700B8, &qword_100632CA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25[-v8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v11 = sub_100058000(&unk_1007700C0, qword_100632CA8);
  v12 = v11;
  if (Strong)
  {
    v13 = *(v11 + 48);
    (*(v4 + 16))(v6, a1, v3);
    swift_beginAccess();
    v14 = sub_10058B6B8(&v9[v13], v6);
    swift_endAccess();
    v15 = *(Strong + 72);
    v16 = *(Strong + 80);
    v17 = *(Strong + 88);
    v18 = *(Strong + 89);
    v19 = qword_100766F90;

    if (v19 != -1)
    {
      swift_once();
    }

    if (v15 == byte_10076FFA0)
    {
      v20 = HIBYTE(word_10076FFB0);
      v21 = word_10076FFB0;
      sub_1000E8AD0(v16, qword_10076FFA8);
      v23 = v22;

      if ((v23 & 1) != 0 && ((v17 ^ v21) & 1) == 0 && ((v18 ^ v20) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    swift_getObjectType();
    dispatch thunk of TTRDeferredViewActionScheduling.schedule()();
LABEL_11:

    *v9 = v14 & 1;
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
    return sub_1000079B4(v9, &qword_1007700B8, &qword_100632CA0);
  }

  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  return sub_1000079B4(v9, &qword_1007700B8, &qword_100632CA0);
}

uint64_t sub_1001698C0(uint64_t a1)
{
  v2 = *a1;
  [*a1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 safeAreaInsets];
  rect1_8 = v11;
  v13 = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v15 = [Strong parentViewController];
  if (!v15)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v16 = v15;
  swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (!v17)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v18 = sub_10037BD64(v17);
  swift_unknownObjectRelease();

  if (!v18)
  {
    goto LABEL_14;
  }

  v16 = v18;
  if ([v16 isHidden])
  {

LABEL_9:
    goto LABEL_14;
  }

  [v16 bounds];
  v20 = v19;
  v22 = v21;

  [v2 convertPoint:v16 fromCoordinateSpace:{v20, v22}];
  v24 = v23;
  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v10;
  MaxY = CGRectGetMaxY(v45);

  v26 = MaxY - v24;
  if (MaxY - v24 < 0.0)
  {
    v26 = 0.0;
  }

  if (v13 <= v26)
  {
    v13 = v26;
  }

LABEL_14:
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  Width = CGRectGetWidth(v46);
  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  rect1 = CGRectGetMinX(v47);
  v48.origin.x = v4;
  v48.origin.y = v6;
  v48.size.width = v8;
  v48.size.height = v10;
  v28 = CGRectGetMaxY(v48) - v13;
  v49.origin.x = v4;
  v49.origin.y = v6;
  v49.size.width = v8;
  v49.size.height = v10;
  v29 = CGRectGetWidth(v49);
  [v2 contentSize];
  v32 = sub_100068328(0.0, 0.0, v30, v31, *(a1 + 8), *(a1 + 16));
  v33 = v13;
  v35 = v34;
  v50.origin.x = v4;
  v37 = v36;
  v50.origin.y = v6;
  v39 = v38;
  v50.size.width = Width;
  v50.size.height = rect1_8;
  v52.origin.x = v32;
  v52.origin.y = v35;
  v52.size.width = v37;
  v52.size.height = v39;
  v40 = CGRectIntersectsRect(v50, v52);
  v51.origin.x = rect1;
  v51.origin.y = v28;
  v51.size.width = v29;
  v51.size.height = v33;
  v53.origin.x = v32;
  v53.origin.y = v35;
  v53.size.width = v37;
  v53.size.height = v39;
  if (CGRectIntersectsRect(v51, v53))
  {
    v41 = 256;
  }

  else
  {
    v41 = 0;
  }

  return v41 | v40;
}

uint64_t sub_100169B5C()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shadow(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shadow(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shadow(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t sub_100169CD4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersBoardChromelessBarsController.InvalidationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

__n128 initializeWithTake for TTRIRemindersBoardChromelessBarsController.InvalidationContext(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRIRemindersBoardChromelessBarsController.InvalidationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersBoardChromelessBarsController.InvalidationContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersBoardChromelessBarsController.InvalidationContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for TTRIRemindersBoardChromelessBarsController.ColumnState(void *a1)
{
  if (*a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1[1] == 1;
  }

  if (!v2)
  {
    swift_unknownObjectWeakDestroy();
  }

  return result;
}

uint64_t initializeWithCopy for TTRIRemindersBoardChromelessBarsController.ColumnState(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8) == 1;
  }

  if (v4)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    swift_unknownObjectWeakCopyInit();
    v5 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v5;
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for TTRIRemindersBoardChromelessBarsController.ColumnState(uint64_t a1, __int128 *a2)
{
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 1) == 1;
  }

  v5 = v4;
  if (*a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 8) == 1;
  }

  if (v6)
  {
    if (v5)
    {
      v8 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v8;
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 2);
    }
  }

  else if (v5)
  {
    sub_10016A00C(a1);
    v7 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 16) = v7;
  }

  else
  {
    swift_unknownObjectWeakCopyAssign();
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 16) = *(a2 + 2);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t sub_10016A00C(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();

  return a1;
}

uint64_t initializeWithTake for TTRIRemindersBoardChromelessBarsController.ColumnState(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a2 + 8) == 1;
  }

  if (v3)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    result = swift_unknownObjectWeakTakeInit();
    v4 = *(a2 + 16);
    *(result + 8) = *(a2 + 8);
    *(result + 16) = v4;
  }

  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t assignWithTake for TTRIRemindersBoardChromelessBarsController.ColumnState(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8) == 1;
  }

  v5 = v4;
  if (*a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 8) == 1;
  }

  if (v6)
  {
    if ((v5 & 1) == 0)
    {
      swift_unknownObjectWeakTakeInit();
      v7 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v7;
      goto LABEL_17;
    }
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      swift_unknownObjectWeakTakeAssign();
      *(a1 + 8) = *(a2 + 8);

      goto LABEL_17;
    }

    sub_10016A00C(a1);
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
LABEL_17:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersBoardChromelessBarsController.ColumnState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v3 = (*a1 & 0x7FFFFFFF) - 1;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersBoardChromelessBarsController.ColumnState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2;
      *(result + 8) = 1;
    }
  }

  return result;
}

double destroy for TTRIRemindersBoardChromelessBarsController.TrackingContext(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();

  return result;
}

uint64_t initializeWithCopy for TTRIRemindersBoardChromelessBarsController.TrackingContext(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersBoardChromelessBarsController.TrackingContext(uint64_t a1, uint64_t a2)
{
  *(swift_unknownObjectWeakCopyAssign() + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithTake for TTRIRemindersBoardChromelessBarsController.TrackingContext(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  v4 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v4;
  return result;
}

uint64_t assignWithTake for TTRIRemindersBoardChromelessBarsController.TrackingContext(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersBoardChromelessBarsController.TrackingContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersBoardChromelessBarsController.TrackingContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10016A3F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRRemindersListViewModel.ItemID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016A474()
{
  result = qword_100770098;
  if (!qword_100770098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100770098);
  }

  return result;
}

uint64_t sub_10016A4C8(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  v4 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v4;

  return a2;
}

uint64_t sub_10016A508(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007700A0, &qword_100632C90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016A578(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeInit();
  v4 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v4;
  return a2;
}

unint64_t sub_10016A680()
{
  result = qword_1007817B0;
  if (!qword_1007817B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007817B0);
  }

  return result;
}

void (*sub_10016A6D4(uint64_t *a1, uint64_t a2))(uint64_t a1)
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
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  *(v5 + 72) = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  *(v5 + 80) = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  *(v5 + 88) = sub_10016B0F8(v5);
  *(v5 + 96) = sub_10016A9B4((v5 + 32), v10, isUniquelyReferenced_nonNull_native);
  return sub_10016A810;
}

void sub_10016A810(uint64_t a1)
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

void (*sub_10016A8A8(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v7[8] = sub_10016B12C(v7);
  v7[9] = sub_10016AD78(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10016A954;
}

void sub_10016A954(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10016A9B4(int64x2_t **a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x110uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[14].i64[0] = a2;
  v8[14].i64[1] = v3;
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9[15].i64[0] = v10;
  v11 = *(v10 - 8);
  v9[15].i64[1] = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[16].i64[0] = v12;
  v13 = *v3;
  v14 = sub_1003AB294(a2);
  v9[1].i8[10] = v15 & 1;
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
      sub_1003B050C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_10054D840(v19, a3 & 1);
    v14 = sub_1003AB294(a2);
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
  v9[16].i64[1] = v14;
  if (v20)
  {
    sub_10016A43C(*(*v4 + 56) + 32 * v14, v9);
  }

  else
  {
    *v9 = vdupq_n_s64(1uLL);
    v9[1].i64[0] = 0;
    v9[1].i16[4] = 0;
  }

  return sub_10016AB78;
}

void sub_10016AB78(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    sub_10000794C(*a1, v2 + 160, &qword_100770090, &qword_100632C88);
    v8 = *(v2 + 26);
    if (*(v2 + 160) != 1 || *(v2 + 168) != 1)
    {
      v10 = *(v2 + 232);
      sub_10016A43C(v2 + 160, v2 + 128);
      v6 = *v10;
      v7 = *(v2 + 264);
      if (v8)
      {
        sub_10016A43C(v2 + 128, v6[7] + 32 * v7);
        goto LABEL_21;
      }

      v13 = *(v2 + 256);
      (*(*(v2 + 248) + 16))(v13, *(v2 + 224), *(v2 + 240));
      sub_10016A43C(v2 + 128, v2 + 192);
      v14 = v2 + 192;
      goto LABEL_20;
    }

    sub_1000079B4(v2 + 160, &qword_100770090, &qword_100632C88);
    if ((v8 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_17:
    v11 = *(v2 + 264);
    v12 = **(v2 + 232);
    (*(*(v2 + 248) + 8))(*(v12 + 48) + *(*(v2 + 248) + 72) * v11, *(v2 + 240));
    sub_1003ADDB4(v11, v12);
    goto LABEL_21;
  }

  sub_10000794C(*a1, v2 + 64, &qword_100770090, &qword_100632C88);
  v3 = *(v2 + 26);
  if (*(v2 + 64) != 1 || *(v2 + 72) != 1)
  {
    v5 = *(v2 + 232);
    sub_10016A43C(v2 + 64, v2 + 32);
    v6 = *v5;
    v7 = *(v2 + 264);
    if (v3)
    {
      sub_10016A43C(v2 + 32, v6[7] + 32 * v7);
      goto LABEL_21;
    }

    v13 = *(v2 + 256);
    (*(*(v2 + 248) + 16))(v13, *(v2 + 224), *(v2 + 240));
    sub_10016A43C(v2 + 32, v2 + 96);
    v14 = v2 + 96;
LABEL_20:
    sub_10054F974(v7, v13, v14, v6);
    goto LABEL_21;
  }

  sub_1000079B4(v2 + 64, &qword_100770090, &qword_100632C88);
  if (v3)
  {
    goto LABEL_17;
  }

LABEL_21:
  v15 = *(v2 + 256);
  sub_1000079B4(v2, &qword_100770090, &qword_100632C88);
  free(v15);

  free(v2);
}

void (*sub_10016AD78(void *a1, uint64_t a2, uint64_t a3, char a4))(char **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0xD0uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[22] = a3;
  v10[23] = v4;
  v10[21] = a2;
  v12 = *v4;
  v13 = sub_100009044(a2, a3);
  *(v11 + 200) = v14 & 1;
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
      sub_1003AF8E0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10054C540(v18, a4 & 1);
    v13 = sub_100009044(a2, a3);
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
  v11[24] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 56 * v13;
    v24 = *v23;
    v25 = *(v23 + 16);
    v26 = *(v23 + 24);
    v27 = *(v23 + 32);
    v28 = *(v23 + 48);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v28 = 0;
    v24 = 0uLL;
    v27 = 0uLL;
  }

  *(v11 + 7) = v24;
  v11[16] = v25;
  v11[17] = v26;
  *(v11 + 9) = v27;
  v11[20] = v28;
  return sub_10016AF00;
}

void sub_10016AF00(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 14);
  v4 = *(*a1 + 15);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 17);
  v7 = *(*a1 + 18);
  v8 = *(*a1 + 19);
  v9 = *(*a1 + 20);
  v10 = (*a1)[200];
  if ((a2 & 1) == 0)
  {
    if (!v5)
    {
      if (((*a1)[200] & 1) == 0)
      {
        goto LABEL_15;
      }

      v26 = v2[24];
      v27 = *v2[23];
      v28 = *(*a1 + 14);
      v29 = *(*a1 + 15);
      v16 = *(*a1 + 17);
      v30 = *(*a1 + 18);
      v31 = *(*a1 + 19);
      sub_100007E80(*(v27 + 48) + 16 * v26);
      sub_1003AD6E4(v26, v27);
      goto LABEL_14;
    }

    v11 = v2[24];
    v12 = *v2[23];
    if ((v10 & 1) == 0)
    {
      v13 = v2[21];
      v32 = v2[22];
      v2[7] = v3;
      v2[8] = v4;
      v2[9] = v5;
      v2[10] = v6;
      v2[11] = v7;
      v2[12] = v8;
      v2[13] = v9;
      v16 = v6;
      v17 = (v2 + 7);
      v15 = v32;
      goto LABEL_13;
    }

LABEL_7:
    v18 = (v12[7] + 56 * v11);
    *v18 = v3;
    v18[1] = v4;
    v18[2] = v5;
    v18[3] = v6;
    v18[4] = v7;
    v18[5] = v8;
    v18[6] = v9;
    goto LABEL_15;
  }

  if (v5)
  {
    v11 = v2[24];
    v12 = *v2[23];
    if ((v10 & 1) == 0)
    {
      v13 = v2[21];
      v14 = v2[22];
      *v2 = v3;
      v2[1] = v4;
      v2[2] = v5;
      v2[3] = v6;
      v2[4] = v7;
      v2[5] = v8;
      v2[6] = v9;
      v15 = v14;
      v16 = v6;
      v17 = v2;
LABEL_13:
      v28 = v3;
      v29 = v4;
      v30 = v7;
      v31 = v8;
      sub_10054F708(v11, v13, v15, v17, v12);

LABEL_14:
      v8 = v31;
      v7 = v30;
      v6 = v16;
      v4 = v29;
      v3 = v28;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if ((*a1)[200])
  {
    v19 = v2[24];
    v20 = *v2[23];
    v21 = *(*a1 + 14);
    v22 = *(*a1 + 15);
    v23 = *(*a1 + 17);
    v24 = *(*a1 + 18);
    v25 = *(*a1 + 19);
    sub_100007E80(*(v20 + 48) + 16 * v19);
    sub_1003AD6E4(v19, v20);
    v8 = v25;
    v7 = v24;
    v6 = v23;
    v4 = v22;
    v3 = v21;
  }

LABEL_15:
  v33 = v2[14];
  v34 = v2[15];
  v35 = v2[16];
  v36 = v2[17];
  v37 = v2[18];
  v38 = v2[19];
  v39 = v2[20];
  sub_10016B154(v3, v4, v5, v6, v7, v8, v9);
  sub_10016B1B8(v33, v34, v35, v36, v37, v38, v39);

  free(v2);
}

uint64_t (*sub_10016B0F8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10016B120;
}

uint64_t (*sub_10016B12C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10016B218;
}

void sub_10016B154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a3)
  {

    v7 = a6;
  }
}

void sub_10016B1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a3)
  {
  }
}

uint64_t sub_10016B224()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007700D0);
  v1 = sub_100003E30(v0, qword_1007700D0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_10016B2EC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100058000(&qword_1007701A0, &qword_100631A50);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_1007701A8, &unk_100632D70);
  v8 = *(v7 - 8);
  v20 = v7;
  v21 = v8;
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v24 = *(v0 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_didScroll);

  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v11 = [objc_opt_self() mainRunLoop];
  v23 = v11;
  v12 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  sub_100058000(&unk_1007701B0, &qword_100644F50);
  sub_100003540(0, &qword_10076DFB0, NSRunLoop_ptr);
  sub_10000E188(&unk_1007701C0, &unk_1007701B0, &qword_100644F50, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_100139DF0();
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000079B4(v3, &qword_1007701A0, &qword_100631A50);

  (*(v18 + 8))(v6, v19);

  sub_10000E188(&unk_1007701D0, &qword_1007701A8, &unk_100632D70, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v13 = v17;
  v14 = v20;
  v15 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v21 + 8))(v10, v14);
  *(v13 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_didStopScrollingCancellable) = v15;

  return result;
}

void sub_10016B6A0(uint64_t Strong)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_contentScrollViewNeedsAdjustmentAfterScrollingAnimation) == 1)
  {
    *(v1 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_contentScrollViewNeedsAdjustmentAfterScrollingAnimation) = 0;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      UIViewController.scrollContentScrollViewToAvoidPartiallyCollapsedNavBarIfNeeded(_:animated:wantsDispatchAsync:)(*(v2 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_collectionView), 1, 0);
    }
  }

  v5 = *(*(v2 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController) + 24);
  if (!v5 || (*(v5 + 24) & 1) == 0)
  {
    (*(v2 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_processPendingReminderViewModelUpdates))();
  }

  sub_10016C28C();
}

uint64_t sub_10016B750(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_100770180, &qword_100632D50);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_100058000(&qword_100790EE0, &qword_100632D58);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_pendingStartEditingItem;
  swift_beginAccess();
  sub_10016CDBC(v2 + v13, v9);
  v14 = sub_100058000(&unk_100770170, &qword_100632D10);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1000079B4(v9, &unk_100770180, &qword_100632D50);
  }

  else
  {
    v16 = *&v9[*(v14 + 48)];
    v30 = *(v10 + 48);
    v31 = v16;
    v17 = type metadata accessor for TTRRemindersListViewModel.Item();
    v32 = a1;
    v18 = v17;
    v19 = v2;
    v20 = *(v17 - 8);
    (*(v20 + 32))(v12, v9, v17);
    *&v12[v30] = v31;
    v21 = v18;
    a1 = v32;
    (*(v20 + 8))(v12, v21);
    v2 = v19;
    v22 = type metadata accessor for PromiseError();
    sub_10016CE9C();
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, enum case for PromiseError.cancelled(_:), v22);
    DeferredPromise.reject(_:)();
  }

  sub_100058000(&unk_100770190, &unk_100632D60);
  swift_allocObject();
  v24 = DeferredPromise.init()();
  v25 = *(v14 + 48);
  v26 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v26 - 8) + 16))(v6, a1, v26);
  *&v6[v25] = v24;
  (*(v15 + 56))(v6, 0, 1, v14);
  swift_beginAccess();

  sub_10016CE2C(v6, v2 + v13);
  swift_endAccess();
  result = DeferredPromise.promise.getter();
  if (result)
  {
    v28 = result;

    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10016BB00(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *&result[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_diffableDataSource];
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_1000079B4(v8, &unk_100771B10, qword_10062E540);
      return 0;
    }

    else
    {
      v16 = (*(v10 + 32))(v12, v8, v9);
      if ((a2 & 1) == 0)
      {
        v17 = *(*&v14[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController] + 24);
        if (!v17 || (*(v17 + 24) & 1) == 0)
        {
          (*&v14[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_processPendingReminderViewModelUpdates])(v16);
        }
      }

      v18 = OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_collectionView;
      v19 = *&v14[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_collectionView];
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v19 scrollToItemAtIndexPath:isa atScrollPosition:a4 animated:a2 & 1];

      v21 = [*&v14[v18] isScrollAnimating];
      (*(v10 + 8))(v12, v9);

      return v21;
    }
  }

  return result;
}

BOOL sub_10016BD80(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_diffableDataSource);
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v8, v4, v5);
      v13 = [*&v10[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_collectionView] indexPathsForVisibleItems];
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = sub_10010D158(v8, v14);

      (*(v6 + 8))(v8, v5);
      return v12;
    }

    sub_1000079B4(v4, &unk_100771B10, qword_10062E540);
  }

  return 0;
}

uint64_t sub_10016BFAC(uint64_t a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  if (qword_100766F98 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_1007700D0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100004060(v9, v10, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100004060(0xD00000000000002ALL, 0x8000000100674E00, &v16);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = TTRIShowRemindersEditableCellScrollingTarget.resolvedTargetsToTry.getter();
  __chkstk_darwin(v12);
  v15[2] = v13;
  v15[3] = a2;
  sub_10016C1B0(sub_10016CEF4, v15, a3 & 1);
}

void sub_10016C1B0(uint64_t (*a1)(void), uint64_t a2, char a3)
{
  v4.super.super.super.isa = *(v3 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_collectionView);
  if (a3)
  {
    v5._rawValue = a1(*(v3 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_collectionView));
    UIScrollView.scrollRectToFullyVisibleAnimated(_:)(v5);

    *(v3 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_contentScrollViewNeedsAdjustmentAfterScrollingAnimation) = 1;
  }

  else
  {
    UIScrollView.iterativelyScrollRectToFullyVisible(with:)();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      UIViewController.scrollContentScrollViewToAvoidPartiallyCollapsedNavBarIfNeeded(_:animated:wantsDispatchAsync:)(v4, 0, 1);
    }
  }
}

void sub_10016C28C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v58 = *(v1 - 8);
  __chkstk_darwin(v1);
  v57 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v3 - 8);
  v59 = &v47 - v4;
  v5 = type metadata accessor for IndexPath();
  v56 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_100770180, &qword_100632D50);
  __chkstk_darwin(v8 - 8);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v55 = sub_100058000(&qword_100790EE0, &qword_100632D58);
  __chkstk_darwin(v55);
  v14 = &v47 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_pendingStartEditingItem;
  swift_beginAccess();
  v52 = v19;
  sub_10016CDBC(v0 + v19, v12);
  v20 = sub_100058000(&unk_100770170, &qword_100632D10);
  v51 = *(v20 - 8);
  if ((*(v51 + 48))(v12, 1, v20) == 1)
  {
    v21 = &unk_100770180;
    v22 = &qword_100632D50;
    v23 = v12;
LABEL_5:
    sub_1000079B4(v23, v21, v22);
    return;
  }

  v47 = v20;
  v48 = v7;
  v24 = v5;
  v25 = *&v12[*(v20 + 48)];
  v49 = v1;
  v50 = v16;
  v26 = v15;
  v54 = v18;
  v27 = v55;
  v28 = *(v55 + 48);
  v29 = *(v16 + 32);
  v29(v14, v12, v15);
  *&v14[v28] = v25;
  v30 = v56;
  v31 = v54;
  v32 = v0;
  v33 = *&v14[*(v27 + 48)];
  v29(v54, v14, v15);
  v34 = v24;
  v35 = v57;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v36 = v59;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  (*(v58 + 8))(v35, v49);
  if ((*(v30 + 48))(v36, 1, v34) == 1)
  {
    (*(v50 + 8))(v31, v26);

    v21 = &unk_100771B10;
    v22 = qword_10062E540;
    v23 = v36;
    goto LABEL_5;
  }

  v58 = v33;
  v37 = v50;
  v38 = v48;
  (*(v30 + 32))(v48, v36, v34);
  v39 = UICollectionView.visibleCellForItem(at:)();
  v40 = v30;
  if (v39)
  {
    v41 = v39;
    swift_getObjectType();
    v42 = swift_conformsToProtocol2();
    if (v42)
    {
      v43 = v42;
      v44 = v53;
      (*(v51 + 56))(v53, 1, 1, v47);
      v45 = v34;
      v46 = v52;
      swift_beginAccess();
      sub_10016CE2C(v44, v32 + v46);
      swift_endAccess();
      v60 = v41;
      v61 = v43;
      DeferredPromise.resolve(_:)();

      (*(v40 + 8))(v38, v45);
      (*(v37 + 8))(v54, v26);

      return;
    }
  }

  else
  {
  }

  (*(v30 + 8))(v38, v34);
  (*(v37 + 8))(v54, v26);
}

uint64_t type metadata accessor for TTRIRemindersListScrollingController_collectionView(uint64_t a1)
{
  result = qword_100770158;
  if (!qword_100770158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016C9D0(uint64_t a1)
{
  sub_10016CAAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10016CAAC(uint64_t a1)
{
  if (!qword_100770168)
  {
    sub_10005D20C(&unk_100770170, &qword_100632D10);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100770168);
    }
  }
}

uint64_t sub_10016CDBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100770180, &qword_100632D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016CE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100770180, &qword_100632D50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10016CE9C()
{
  result = qword_1007817D0;
  if (!qword_1007817D0)
  {
    type metadata accessor for PromiseError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007817D0);
  }

  return result;
}

uint64_t sub_10016CEF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4[2] = *(v1 + 24);
  v4[3] = a1;
  return sub_10007DEE4(sub_10016CF40, v4, v2);
}

double sub_10016CF40@<D0>(uint64_t a2@<X8>)
{
  sub_10000C36C(*(v2 + 16), *(*(v2 + 16) + 24));
  dispatch thunk of TTRIShowRemindersEditableCellScrollingTargetProviding.rect(for:in:)();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_10016CFC8(uint64_t result)
{
  if ((result & 1) == 0)
  {
    v2 = *(*(v1 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController) + 24);
    if (!v2 || (*(v2 + 24) & 1) == 0)
    {
      return (*(v1 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_processPendingReminderViewModelUpdates))();
    }
  }

  return result;
}

uint64_t sub_10016D01C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController) + 24);
  if (!v1 || (*(v1 + 24) & 1) == 0)
  {
    return (*(v0 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_processPendingReminderViewModelUpdates))();
  }

  return result;
}

uint64_t sub_10016D06C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17[3] = type metadata accessor for TTRITemplateSharingRouter();
  v17[4] = &off_10071D758;
  v17[0] = a2;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 40) = 0;
  swift_unknownObjectWeakInit();
  TTRTemplateSharingViewModel.init()();
  v8 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_previewUndoManager;
  v9 = objc_allocWithZone(TTRUndoManager);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithDebugIdentifier:v10];

  *(a4 + v8) = v11;
  *(a4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_allowsShareSheets) = 1;
  v12 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_continuationForPerformAction;
  v13 = sub_100058000(&unk_10076B170, &qword_10062F5D0);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  v14 = (a4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_interactor);
  *v14 = a1;
  v14[1] = &protocol witness table for TTRTemplateSharingInteractor;
  sub_10000B0D8(v17, a4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router);
  *(a4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_undoManager) = a3;
  type metadata accessor for TTRTemplateSharingPresenterCapability();
  swift_allocObject();

  v15 = a3;
  *(a4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_presenterCapability) = TTRTemplateSharingPresenterCapability.init(interactor:)();
  type metadata accessor for TTRMainActorDeferredAction();
  swift_allocObject();
  *(a4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_deferredAction) = TTRMainActorDeferredAction.init()();
  sub_10016D550(&qword_1007701F8, &unk_10062F5F8);

  TTRMainActorDeferredAction.delegate.setter();
  sub_100004758(v17);
  return a4;
}

uint64_t sub_10016D29C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(TTRUndoManager);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithDebugIdentifier:v8];

  type metadata accessor for TTRTemplateSharingInteractor();
  swift_allocObject();
  v10 = a1;
  v11 = TTRTemplateSharingInteractor.init(template:)();
  v12 = [v10 store];
  v13 = type metadata accessor for TTRITemplateSharingRouter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIActivityAlertRouterCapability();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 56) = v15;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v14 + 80) = 0;
  *(v14 + 16) = v12;
  swift_unknownObjectWeakAssign();
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = v9;
  v27[3] = v13;
  v27[4] = &off_10071D758;
  v27[0] = v14;
  type metadata accessor for TTRITemplateSharingPresenter(0);
  v16 = swift_allocObject();
  v17 = sub_10000AE84(v27, v13);
  v18 = __chkstk_darwin(v17);
  v20 = (&v27[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = *v20;
  v23 = v9;

  v24 = sub_10016D06C(v11, v22, v23, v16);

  sub_100004758(v27);
  sub_10016D550(&qword_1007701F0, &unk_10062F638);

  TTRTemplateSharingInteractor.delegate.setter();

  return v24;
}

uint64_t sub_10016D550(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRITemplateSharingPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10016D594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = UIListContentConfiguration.text.getter();
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v9;
  v12 = v10;
  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

LABEL_6:
    v11 = static TTRAccesibility.General.Label.Untitled.getter();
    v12 = v14;
  }

  sub_100058000(&unk_100771E10, &qword_100634270);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D400;
  *(v15 + 32) = v11;
  *(v15 + 40) = v12;
  v30 = v15;
  v16 = UIListContentConfiguration.secondaryText.getter();
  if (v17)
  {
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {

      if (!a2)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v20 >= v19 >> 1)
    {
      v28 = v16;
      v25 = v17;
      v26 = sub_100546970((v19 > 1), v20 + 1, 1, v15);
      v17 = v25;
      v15 = v26;
      v16 = v28;
    }

    *(v15 + 16) = v20 + 1;
    v21 = v15 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v17;
    v30 = v15;
  }

  if (a2)
  {
LABEL_15:

    sub_100081340(v22);
    v15 = v30;
  }

LABEL_16:
  v29 = v15;
  static TTRAccesibility.General.Label.Separator.getter();
  sub_100058000(&unk_100781F20, &unk_10062D7E0);
  sub_10006089C();
  v23 = BidirectionalCollection<>.joined(separator:)();

  (*(v5 + 8))(v8, v4);
  return v23;
}

uint64_t sub_10016D7FC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100770200);
  v1 = sub_100003E30(v0, qword_100770200);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10016D8C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v3 - 8);
  v54 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v5 - 8);
  v53 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_1007693B0, &unk_100631DC0);
  __chkstk_darwin(v7 - 8);
  v52 = v40 - v8;
  v9 = sub_100058000(&qword_1007693B8, &unk_10062DEC0);
  __chkstk_darwin(v9 - 8);
  v51 = v40 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v47 = *(v11 - 8);
  v48 = v11;
  __chkstk_darwin(v11);
  v56 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v13 = *(v45 - 8);
  __chkstk_darwin(v45);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&unk_100780980, &unk_100631DD0);
  __chkstk_darwin(v16 - 8);
  v18 = v40 - v17;
  v19 = sub_100058000(&unk_100775640, &unk_10062DED0);
  __chkstk_darwin(v19 - 8);
  v21 = v40 - v20;
  v22 = type metadata accessor for TTRListType.SortingCapability();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10016FFE8();
  v26 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v23 + 16))(v25, v2 + v26, v22);
  v27 = (*(v23 + 88))(v25, v22);
  v44 = enum case for TTRListType.SortingCapability.notSupported(_:);
  if (v27 != enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    if (v27 == enum case for TTRListType.SortingCapability.supported(_:))
    {
      goto LABEL_5;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  (*(v23 + 96))(v25, v22);
  v28 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  (*(*(v28 - 8) + 8))(v25, v28);
LABEL_5:
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  v29 = enum case for TTRListType.tagged(_:);
  v30 = type metadata accessor for TTRListType();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v21, v29, v30);
  v32 = *(v31 + 56);
  v49 = v21;
  v32(v21, 0, 1, v30);
  v43 = sub_100170420();
  v42 = v33;
  type metadata accessor for TTRListColors();
  v41 = static TTRListColors.tagged.getter();
  v34 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  v35 = *(*(v34 - 8) + 56);
  v50 = v18;
  v35(v18, 1, 1, v34);
  swift_getObjectType();
  v36 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter();
  if (v36)
  {
    swift_unknownObjectRelease();
  }

  TTRRemindersListSectionMenuCapabilities.init()();
  v40[1] = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v13 + 8))(v15, v45);
  v37 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter();
  if (v37)
  {
    swift_unknownObjectRelease();
  }

  (*(v47 + 104))(v56, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v48);
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
  sub_1000079B4(v57, &qword_1007693C0, &unk_100631DE0);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    LODWORD(v45) = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
  }

  else
  {
    LODWORD(v45) = 0;
  }

  LODWORD(v48) = v37 != 0;
  LODWORD(v47) = v36 != 0;
  sub_10017020C();
  sub_1001706BC(v51);
  v38 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v38 - 8) + 56))(v52, 1, 1, v38);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  return TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
}

void *sub_10016E114()
{
  v1 = v0;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v2 = dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  v4 = v3;
  swift_unknownObjectRelease();
  type metadata accessor for ShowTaggedViewModelSourceHashtagContext();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v1;
  sub_100173810(&qword_100770928, type metadata accessor for ShowTaggedViewModelSourceHashtagContext, &unk_100632F28);

  return v5;
}

uint64_t sub_10016E1E4()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.tagged(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_10016E2F4(uint64_t a1)
{
  v1 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v5 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v2 + 104))(v4, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.tagged(_:), v1);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10016E408()
{
  v1 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &unk_10078A380, &qword_10062DE60);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000079B4(v3, &unk_10078A380, &qword_10062DE60);
    return 0;
  }

  else
  {
    v8 = TTRRemindersListViewModel.ListInfo.color.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }
}

uint64_t sub_10016E564()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_hasIncompleteOrCompletedReminders) == 2)
  {
    return TTRRemindersListViewModel.EmptyListMessagingType.init(completedCount:)();
  }

  else
  {
    return TTRRemindersListViewModel.EmptyListMessagingType.init(hasIncompleteOrCompletedReminders:shouldCategorizeGroceryItems:)();
  }
}

uint64_t sub_10016E59C@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
  v4 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v4 - 8) + 104))(a1, v3, v4);
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  swift_storeEnumTagMultiPayload();
  v5 = (a1 + *(type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0) + 20));
  *v5 = sub_100173B40;
  v5[1] = v1;
}

double sub_10016E65C(uint64_t a1)
{

  TTRRemindersListTreeViewModel.primarySectionID.getter();

  return result;
}

uint64_t sub_10016E6B0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
  v3 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);

  return swift_storeEnumTagMultiPayload();
}

double sub_10016E73C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10016E8DC();
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = *(v5 + 88);
  v11 = (v5 + 8);
  if (v10(v7, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v11)(v7, v4);
    v12 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 24) = v12;
    *(a2 + 32) = &off_10071A5E0;
    v13 = sub_1000317B8(a2);
    v9(v13, a1, v4);
    *(v13 + *(v12 + 20)) = v8;
    *(v13 + *(v12 + 24)) = 0;
  }

  else
  {

    (*v11)(v7, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10016E8DC()
{
  v1 = OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    v3 = REMSmartListTypeTagged;
    type metadata accessor for TTRAttributeMatchingDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 40) = 1;
    *(v2 + 24) = &off_100718978;
    *(v2 + 32) = v3;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
    v4 = v3;
  }

  return v2;
}

void sub_10016E998()
{
  v0 = type metadata accessor for TTRHashtagSpecifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for REMHashtagLabelCollection();
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  __chkstk_darwin(v4);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v37 - v8;
  __chkstk_darwin(v9);
  v43 = &v37 - v10;
  v11 = type metadata accessor for REMHashtagLabelSpecifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  v17 = (*(v12 + 88))(v14, v11);
  if (v17 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    goto LABEL_6;
  }

  (*(v12 + 96))(v14, v11);
  v18 = *v14;

  v16 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
  v19 = TTRReminderEditor.changeItem.getter();
  v20 = [v19 hashtagContext];

  if (!v20)
  {
LABEL_11:

LABEL_17:
    v36 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v36 - 8) + 8))(v14 + v16, v36);
    return;
  }

  v21 = [v20 hashtags];

  sub_100003540(0, &unk_1007758F0, REMHashtag_ptr);
  sub_100173AD8();
  v38 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = *(v18 + 16);
  v39 = v16;
  v40 = v14;
  if (!v22)
  {

    goto LABEL_13;
  }

  v14 = sub_1003AC440(v22, 0);
  v23 = sub_1003B2F84(&v46, v14 + 4, v22, v18);
  sub_10008BA48(v46);
  if (v23 == v22)
  {
LABEL_13:
    v25 = v44;
    v26 = v45;
    v27 = v41;
    v28 = v42;
    v29 = v38;
    REMHashtagLabelCollection.init(labels:)();
    v46 = v29;
    sub_100058000(&qword_100775900, &unk_100632FF0);
    sub_10000E188(&qword_100770918, &qword_100775900, &unk_100632FF0, &protocol conformance descriptor for Set<A>);
    REMHashtagLabelCollection.init<A>(hashtags:)();
    REMHashtagLabelCollection.subtracting(_:)();
    v30 = *(v26 + 8);
    v30(v28, v25);
    v45 = v26 + 8;
    v41 = v30;
    v30(v27, v25);
    v42 = REMHashtagLabelCollection.labels.getter();
    v31 = *(v42 + 2);
    if (v31)
    {
      v32 = enum case for TTRHashtagSpecifier.named(_:);
      v33 = *(v1 + 104);
      v34 = (v42 + 40);
      do
      {
        v35 = *v34;
        *v3 = *(v34 - 1);
        v3[1] = v35;
        v3[2] = 0;
        v33(v3, v32, v0);

        (*(v1 + 8))(v3, v0);
        v34 += 2;
        --v31;
      }

      while (v31);
    }

    (v41)(v43, v44);
    v16 = v39;
    v14 = v40;
    goto LABEL_17;
  }

  __break(1u);
LABEL_6:
  if (v17 != enum case for REMHashtagLabelSpecifier.allLabels(_:) && v17 != enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_11;
  }
}