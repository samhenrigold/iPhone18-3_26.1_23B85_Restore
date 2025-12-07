uint64_t type metadata accessor for TTRIRemindersListDiffableDataSource(uint64_t a1)
{
  result = qword_100784270;
  if (!qword_100784270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004710BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_1007842C0, &qword_100640650);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TTRIRemindersListPresentationTree(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_1007842C0, &qword_100640650);
    static TTRIRemindersListItemIntermediateViewModel.placeholder(itemID:)();
  }

  else
  {
    sub_100472DF8(v6, v10);
    sub_1001303F0(a1, a2);
    sub_10030C380(v10);
  }

  v11 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel();
  return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
}

uint64_t sub_100471278(uint64_t a1, __n128 a2)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v20 = &unk_10076BB50;
    v21 = &unk_10062DEA0;
    v22 = v15;
LABEL_5:
    sub_1000079B4(v22, v20, v21);
LABEL_6:
    v23 = 0;
    return v23 & 1;
  }

  (*(v17 + 32))(v19, v15, v16);
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v17 + 8))(v19, v16);
    v20 = &qword_100772140;
    v21 = &qword_10062D9F0;
    v22 = v8;
    goto LABEL_5;
  }

  (*(v10 + 32))(v12, v8, v9);
  v25 = v36;
  TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
  v27 = v37;
  v26 = v38;
  v28 = (*(v37 + 88))(v25, v38);
  if (v28 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:) || v28 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:))
  {
    (*(v27 + 96))(v25, v26);
    v29 = v33;
    v30 = v34;
    v31 = v25;
    v32 = v35;
    (*(v34 + 32))(v33, v31, v35);
    v23 = TTRRemindersListViewModel.SectionHeader.isVisible.getter();
    (*(v30 + 8))(v29, v32);
    (*(v10 + 8))(v12, v9);
    (*(v17 + 8))(v19, v16);
    return v23 & 1;
  }

  if (v28 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:))
  {
    (*(v10 + 8))(v12, v9);
    (*(v17 + 8))(v19, v16);
    goto LABEL_6;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100471774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = sub_100058000(&qword_1007842C8, &qword_100640658);
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_100058000(&qword_1007842D0, &qword_100640660);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v18 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v8 + 8))(v10, v7);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v29;
    (*(v12 + 16))(v14, v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * (v19 - 1), v11);

    (*(v12 + 32))(v17, v14, v11);
    if (sub_100471B50(v28))
    {
      (*(v12 + 8))(v17, v11);
      v21 = enum case for TTRRelativeInsertionPosition.afterAll<A>(_:);
      v22 = sub_100058000(&qword_100769530, &unk_10062DFE0);
      v23 = *(v22 - 8);
      (*(v23 + 104))(v20, v21, v22);
      return (*(v23 + 56))(v20, 0, 1, v22);
    }

    else
    {
      UICollectionViewDiffableDataSource.snapshot(for:)();
      sub_100472024(v6, v3, v20);
      (*(v26 + 8))(v6, v27);
      return (*(v12 + 8))(v17, v11);
    }
  }

  else
  {

    v25 = sub_100058000(&qword_100769530, &unk_10062DFE0);
    return (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
  }
}

uint64_t sub_100471B50(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v30 = sub_100058000(&qword_100777F28, &unk_100637D40);
  __chkstk_darwin(v30);
  v6 = &v29 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v36 = v8 + 16;
  v32 = enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:);
  v33 = enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:);
  v31 = enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:);
  v37 = v8;
  v35 = (v8 + 8);
  v38 = a1;

  v16 = 0;
  v34 = v7;
  while (v14)
  {
    v18 = v6;
    v19 = v16;
LABEL_11:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v37 + 16))(v10, *(v38 + 48) + *(v37 + 72) * (v20 | (v19 << 6)), v7);
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();
    v21 = v7;
    v22 = type metadata accessor for TTRRemindersListViewModel.Item();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v4, 1, v22) == 1)
    {
      sub_1000079B4(v4, &qword_100772140, &qword_10062D9F0);
      v17 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
      v6 = v18;
      (*(*(v17 - 8) + 56))(v18, 1, 1, v17);
      (*v35)(v10, v21);
      v16 = v19;
      v7 = v21;
    }

    else
    {
      TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
      (*(v23 + 8))(v4, v22);
      v6 = v18;
      v24 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v18, 0, 1, v24);
      v26 = (*(v25 + 88))(v18, v24);
      if (v26 == v33)
      {
        v27 = v34;
        (*v35)(v10, v34);
        (*(v25 + 8))(v6, v24);
        v7 = v27;
        v16 = v19;
      }

      else
      {
        if (v26 == v32)
        {

          (*v35)(v10, v34);
          (*(v25 + 8))(v18, v24);
          return 1;
        }

        if (v26 != v31)
        {
          goto LABEL_21;
        }

        v7 = v34;
        (*v35)(v10, v34);
        v16 = v19;
      }
    }
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return 0;
    }

    v14 = *(v11 + 8 * v19);
    ++v16;
    if (v14)
    {
      v18 = v6;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_21:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100472024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v58 = a2;
  v5 = sub_100058000(&qword_1007842C8, &qword_100640658);
  v50 = *(v5 - 8);
  __chkstk_darwin(v5);
  v49 = &v47 - v6;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v57 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v54 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v47 - v20;
  v51 = a1;
  v52 = v5;
  v22 = NSDiffableDataSourceSectionSnapshot.rootItems.getter();
  v23 = *(v22 + 16);
  if (!v23)
  {

    goto LABEL_5;
  }

  v53 = a3;
  (*(v16 + 16))(v18, v22 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * (v23 - 1), v15);

  v24 = *(v16 + 32);
  v24(v21, v18, v15);
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v29 = v12;
    v30 = *(v13 + 32);
    v31 = v54;
    v48 = v29;
    v30(v54, v11);
    v32 = v57;
    TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
    v33 = v55;
    v34 = v56;
    v35 = (*(v55 + 88))(v32, v56);
    if (v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
    {
      (*(v33 + 8))(v32, v34);
      v40 = v49;
      v41 = v52;
      NSDiffableDataSourceSectionSnapshot.snapshot(of:includingParent:)();
      sub_100472024(v40, v58, v53);
      (*(v50 + 8))(v40, v41);
      (*(v13 + 8))(v31, v48);
      return (*(v16 + 8))(v21, v15);
    }

    if (v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:))
    {
      (*(v13 + 8))(v31, v48);
      (*(v16 + 8))(v21, v15);
      (*(v33 + 8))(v32, v34);
    }

    else
    {
      if (v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
      {
        (*(v13 + 8))(v31, v48);
        v42 = v53;
        v24(v53, v21, v15);
        v43 = enum case for TTRRelativeInsertionPosition.before<A>(_:);
        v44 = v33;
        v45 = sub_100058000(&qword_100769530, &unk_10062DFE0);
        v46 = *(v45 - 8);
        (*(v46 + 104))(v42, v43, v45);
        (*(v46 + 56))(v42, 0, 1, v45);
        return (*(v44 + 8))(v57, v34);
      }

      if (v35 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:))
      {
        v36 = v53;
        if (v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
        {
          (*(v13 + 8))(v31, v48);
          (*(v16 + 8))(v21, v15);
          (*(v33 + 8))(v57, v34);
        }

        else
        {
          if (v35 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) && v35 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) && v35 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
          {
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }

          (*(v13 + 8))(v31, v48);
          (*(v16 + 8))(v21, v15);
        }

LABEL_13:
        v37 = enum case for TTRRelativeInsertionPosition.afterAll<A>(_:);
        v38 = sub_100058000(&qword_100769530, &unk_10062DFE0);
        v39 = *(v38 - 8);
        (*(v39 + 104))(v36, v37, v38);
        return (*(v39 + 56))(v36, 0, 1, v38);
      }

      (*(v13 + 8))(v31, v48);
      (*(v16 + 8))(v21, v15);
      (*(v33 + 8))(v57, v34);
    }

    v36 = v53;
    goto LABEL_13;
  }

  (*(v16 + 8))(v21, v15);
  sub_1000079B4(v11, &qword_100772140, &qword_10062D9F0);
  a3 = v53;
LABEL_5:
  v25 = enum case for TTRRelativeInsertionPosition.afterAll<A>(_:);
  v26 = sub_100058000(&qword_100769530, &unk_10062DFE0);
  v27 = *(v26 - 8);
  (*(v27 + 104))(a3, v25, v26);
  return (*(v27 + 56))(a3, 0, 1, v26);
}

void *sub_1004728D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = v35 - v5;
  v7 = sub_100058000(&qword_100777F28, &unk_100637D40);
  __chkstk_darwin(v7);
  v9 = v35 - v8;
  v10 = sub_100058000(&qword_1007842D8, &qword_100640668);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v45 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v47 = v35 - v14;
  v44 = sub_100471B50(a2);
  v15 = *(a1 + 16);
  if (v15)
  {
    v35[1] = v7;
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v43 = v17;
    v40 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v18 = a1 + v40;
    v19 = *(v16 + 56);
    v39 = enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:);
    v37 = enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:);
    v36 = enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:);
    v42 = (v16 + 16);
    v38 = (v16 - 8);
    v20 = _swiftEmptyArrayStorage;
    v41 = v16;
    v46 = v19;
    v17(v47, a1 + v40, v10);
    while (1)
    {
      TTRTreeLocation.parent.getter();
      v21 = type metadata accessor for TTRRemindersListViewModel.Item();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v6, 1, v21) == 1)
      {
        break;
      }

      TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
      (*(v22 + 8))(v6, v21);
      v25 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
      v26 = *(v25 - 8);
      (*(v26 + 56))(v9, 0, 1, v25);
      v27 = (*(v26 + 88))(v9, v25);
      if (v27 != v39)
      {
        if (v27 == v37)
        {
          (*(v26 + 8))(v9, v25);
LABEL_8:
          v24 = v46;
        }

        else
        {
          v24 = v46;
          if (v27 != v36)
          {
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }
        }

        if (v44)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      (*(v26 + 8))(v9, v25);
      v24 = v46;
      if ((v44 & 1) == 0)
      {
LABEL_3:
        (*v38)(v47, v10);
        goto LABEL_4;
      }

LABEL_13:
      v28 = v6;
      v29 = v9;
      v30 = *v42;
      (*v42)(v45, v47, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004A25F4(0, v20[2] + 1, 1);
        v24 = v46;
        v20 = v48;
      }

      v33 = v20[2];
      v32 = v20[3];
      if (v33 >= v32 >> 1)
      {
        sub_1004A25F4((v32 > 1), v33 + 1, 1);
        v24 = v46;
        v20 = v48;
      }

      v20[2] = v33 + 1;
      v30(v20 + v40 + v33 * v24, v45, v10);
      v9 = v29;
      v6 = v28;
LABEL_4:
      v18 += v24;
      if (!--v15)
      {
        return v20;
      }

      v43(v47, v18, v10);
    }

    sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
    v23 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    goto LABEL_8;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100472DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListPresentationTree(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100472E60(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders26TTRIWhatsNewViewController____lazy_storage___continueButton] = 0;
  v4 = &v1[OBJC_IVAR____TtC9Reminders26TTRIWhatsNewViewController_presenter];
  *v4 = a1;
  *(v4 + 1) = &off_10071EDA0;

  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    v5 = 0xD000000000000021;
    v6 = 0x8000000100688210;
    v7 = 0x8000000100688240;
    v8 = 0x100000000000005CLL;
    v9 = 0x8000000100688260;
  }

  else
  {
    v6 = 0x80000001006881B0;
    v7 = 0x80000001006881D0;
    v8 = 0x100000000000001CLL;
    v9 = 0x80000001006881F0;
    v5 = 0xD000000000000016;
  }

  v10 = 0x1000000000000019;
  TTRLocalizedString(_:value:comment:)(*&v5, *(&v7 - 1), *&v8);
  v11 = String._bridgeToObjectiveC()();

  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithTitle:detailText:icon:contentLayout:", v11, 0, 0, 2);

  return v12;
}

void sub_100472FB8()
{
  v46.receiver = v0;
  v46.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v46, "viewDidLoad");
  if (UIViewController.isIPadIdiom.getter())
  {
    v2._countAndFlagsBits = 0xD000000000000014;
    v2._object = 0x8000000100688560;
    v3._object = 0x8000000100688240;
    v4._countAndFlagsBits = 0x100000000000001CLL;
    v4._object = 0x80000001006881F0;
    v3._countAndFlagsBits = 0x1000000000000019;
    TTRLocalizedString(_:value:comment:)(v2, v3, v4);
    v5 = [v0 headerView];
    v6 = String._bridgeToObjectiveC()();

    [v5 setTitle:v6];
  }

  v7 = sub_1004738B4(v1);
  v8 = *&v0[OBJC_IVAR____TtC9Reminders26TTRIWhatsNewViewController_presenter];
  v9 = objc_opt_self();
  v10 = [*(*(v8 + 48) + 32) isIntelligentFeaturesSupportedInCurrentAppVersionWithIntelligentFeature:0 isInternalInstall:{objc_msgSend(v9, "isInternalInstall")}];
  v11 = [*(*(v8 + 48) + 32) isIntelligentFeaturesSupportedInCurrentAppVersionWithIntelligentFeature:1 isInternalInstall:{objc_msgSend(v9, "isInternalInstall")}];
  if (v7)
  {
    if (v10)
    {
      v12 = v11;
      static TTRLocalizableStrings.WhatsNew.autoCategorizeTitle.getter();
      v13 = String._bridgeToObjectiveC()();

      static TTRLocalizableStrings.WhatsNew.autoCategorizeDescription.getter();
      v14 = String._bridgeToObjectiveC()();

      v15 = static TTRIAsset.Image.WhatsNewBullet.autoCategorize.getter();
      [v0 addBulletedListItemWithTitle:v13 description:v14 image:v15];

      v11 = v12;
    }

    if (v11)
    {
      static TTRLocalizableStrings.WhatsNew.suggestedRemindersTitle.getter();
      v16 = String._bridgeToObjectiveC()();

      static TTRLocalizableStrings.WhatsNew.suggestedRemindersDescription.getter();
      v17 = String._bridgeToObjectiveC()();

      v18 = static TTRIAsset.Image.WhatsNewBullet.share.getter();
      [v0 addBulletedListItemWithTitle:v16 description:v17 image:v18];
    }
  }

  v19._countAndFlagsBits = 0xD00000000000001FLL;
  v20._countAndFlagsBits = 0x6552206B63697551;
  v20._object = 0xEF737265646E696DLL;
  v19._object = 0x80000001006882F0;
  v21._object = 0x8000000100688310;
  v21._countAndFlagsBits = 0xD000000000000020;
  TTRLocalizedString(_:value:comment:)(v19, v20, v21);
  if (UIViewController.isIPadIdiom.getter())
  {
    v22 = "reminders_ipad_content";
    v23 = 0xD000000000000026;
    v24 = 0x80000001006884F0;
    v25 = 0xD00000000000003ALL;
  }

  else
  {
    v22 = "reminders_iphone_content";
    v23 = 0xD000000000000028;
    v24 = 0x8000000100688340;
    v25 = 0xD00000000000004CLL;
  }

  v26 = v22 | 0x8000000000000000;
  v27._object = 0x80000001006883C0;
  v27._countAndFlagsBits = 0xD000000000000027;
  TTRLocalizedString(_:value:comment:)(*&v23, *&v25, v27);
  v28 = String._bridgeToObjectiveC()();

  v29 = String._bridgeToObjectiveC()();

  v30 = static TTRIAsset.Image.WhatsNewBullet.quickReminder.getter();
  [v0 addBulletedListItemWithTitle:v28 description:v29 image:v30];

  if ((v7 & 1) == 0)
  {
    static TTRLocalizableStrings.WhatsNew.richerSharingTitle.getter();
    v31 = String._bridgeToObjectiveC()();

    static TTRLocalizableStrings.WhatsNew.richerSharingDescription.getter();
    v32 = String._bridgeToObjectiveC()();

    v33 = static TTRIAsset.Image.WhatsNewBullet.share.getter();
    [v0 addBulletedListItemWithTitle:v31 description:v32 image:v33];
  }

  if (UIViewController.isIPadIdiom.getter())
  {
    static TTRLocalizableStrings.WhatsNew.timeZonesTitle.getter();
    v34 = String._bridgeToObjectiveC()();

    static TTRLocalizableStrings.WhatsNew.timeZonesDescription.getter();
    v35 = String._bridgeToObjectiveC()();

    v36 = static TTRIAsset.Image.WhatsNewBullet.timeZone.getter();
  }

  else
  {
    v37._countAndFlagsBits = 0xD000000000000018;
    v38._countAndFlagsBits = 0x65726F4D20646E41;
    v37._object = 0x80000001006883F0;
    v39._object = 0x8000000100688410;
    v38._object = 0xE800000000000000;
    v39._countAndFlagsBits = 0xD000000000000020;
    TTRLocalizedString(_:value:comment:)(v37, v38, v39);
    v40._countAndFlagsBits = 0xD00000000000001ALL;
    v40._object = 0x8000000100688440;
    v41._countAndFlagsBits = 0xD00000000000005ELL;
    v41._object = 0x8000000100688460;
    v42._object = 0x80000001006884C0;
    v42._countAndFlagsBits = 0xD000000000000027;
    TTRLocalizedString(_:value:comment:)(v40, v41, v42);
    v34 = String._bridgeToObjectiveC()();

    v35 = String._bridgeToObjectiveC()();

    v36 = static TTRIAsset.Image.WhatsNewBullet.andMore.getter();
  }

  v43 = v36;
  [v0 addBulletedListItemWithTitle:v34 description:v35 image:v36];

  v44 = [v0 buttonTray];
  v45 = sub_100473510();
  [v44 addButton:v45];
}

id sub_100473510()
{
  v1 = OBJC_IVAR____TtC9Reminders26TTRIWhatsNewViewController____lazy_storage___continueButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders26TTRIWhatsNewViewController____lazy_storage___continueButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders26TTRIWhatsNewViewController____lazy_storage___continueButton);
  }

  else
  {
    v4._countAndFlagsBits = 0x65756E69746E6F43;
    v5._object = 0x8000000100688580;
    v6._countAndFlagsBits = 0xD000000000000020;
    v6._object = 0x80000001006885A0;
    v5._countAndFlagsBits = 0xD00000000000001FLL;
    v4._object = 0xE800000000000000;
    TTRLocalizedString(_:value:comment:)(v5, v4, v6);
    v7 = [objc_opt_self() boldButton];
    v8 = String._bridgeToObjectiveC()();

    [v7 setTitle:v8 forState:0];

    [v7 addTarget:v0 action:"didTapContinueButton:" forControlEvents:64];
    v9 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_100473688()
{
  v0 = type metadata accessor for TTRUserDefaults.WelcomeScreenVersion();
  __chkstk_darwin(v0 - 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    type metadata accessor for TTRUserDefaults();
    v3 = static TTRUserDefaults.appUserDefaults.getter();
    static TTRUserDefaults.WelcomeScreenVersion.current.getter();
    TTRUserDefaults.lastSeenWelcomeScreenVersion.setter();

    sub_10000C36C((v2 + 72), *(v2 + 96));
    swift_unknownObjectRetain();
    sub_100502974(sub_10014E5B0, v2);
  }

  return result;
}

uint64_t sub_1004738B4(__n128 a1)
{
  v1 = type metadata accessor for REMGenerativeModelsFeature();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMGenerativeModelsAvailabilityManager();
  v11 = static REMGenerativeModelsAvailabilityManager.shared.getter();
  v5 = *(v2 + 104);
  v5(v4, enum case for REMGenerativeModelsFeature.autoCategorization(_:), v1);
  v6 = REMGenerativeModelsAvailabilityManagerType.supportsFeature(_:)();
  v7 = *(v2 + 8);
  v7(v4, v1);

  if (v6)
  {
    v11 = static REMGenerativeModelsAvailabilityManager.shared.getter();
    v5(v4, enum case for REMGenerativeModelsFeature.intelligentReminderExtraction(_:), v1);
    v8 = REMGenerativeModelsAvailabilityManagerType.supportsFeature(_:)();
    v7(v4, v1);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100473A68()
{
  v1 = objc_opt_self();
  v2 = [v1 daemonUserDefaults];
  v3 = [v2 forceShowWelcomeScreen];

  if (v3)
  {
    return 2;
  }

  v5 = [v1 daemonUserDefaults];
  v6 = [v5 forceShowWhatsNewScreen];

  if (v6)
  {
    return 1;
  }

  v7 = *(v0 + 16);
  v24 = 0;
  v8 = [v7 fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:&v24];
  if (v8)
  {
    v9 = v8;
    v10 = v24;

    return 1;
  }

  else
  {
    v11 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100767328 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_100784318);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      swift_errorRetain();
      sub_100058000(&qword_1007699F0, &qword_10062E420);
      v17 = String.init<A>(describing:)();
      v19 = sub_100004060(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "TTRWelcomeStyle:preferredWelcomeStyle(): Could not find or return any primary active CK account {error: %s}", v15, 0xCu);
      sub_100004758(v16);
    }

    else
    {
    }

    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v20 = result;
      v21 = ACAccountStore.rem_migrationSets()();

      sub_100474068(v21);
      if (v22)
      {

        return 2;
      }

      else if (sub_10042254C())
      {
        v23 = *(v21 + 16);

        return v23 == 0;
      }

      else
      {

        return 3;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100473D8C()
{
  sub_100474818();
  if ((sub_10042254C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TTRUserDefaults();
  v0 = static TTRUserDefaults.appUserDefaults.getter();
  v1 = TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.getter();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = sub_100473A68();
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 == 1)
  {
    if (qword_100767328 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100784318);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "TTRWelcomeStyle:shouldShowUpgradeScreen(): Account does not need upgrade after iCloud sync enabled.", v6, 2u);
    }

    v7 = static TTRUserDefaults.appUserDefaults.getter();
    TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.setter();
    sub_10012EDC8(1);

    return 0;
  }

  v9 = v2;
  if (qword_100767328 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003E30(v10, qword_100784318);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "TTRWelcomeStyle:shouldShowUpgradeScreen(): Will show upgrade screen after iCloud sync enabled.", v13, 2u);
  }

  sub_10012EDC8(v9);
  return 1;
}

uint64_t sub_100473FA0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100784318);
  v1 = sub_100003E30(v0, qword_100784318);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100474068(uint64_t a1)
{
  v3 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ACAccountStore.MigrationSet();
  __chkstk_darwin(v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v19 = __chkstk_darwin(v16);
  v20 = *(a1 + 16);
  if (v20)
  {
    v42 = v1;
    v43 = v5;
    v47 = v18;
    v48 = &v42 - v17;
    v44 = v9;
    v45 = v7;
    v46 = v6;
    v21 = *(v18 + 16);
    v22 = (v18 + 8);
    v23 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v24 = *(v18 + 72);
    while (1)
    {
      v21(v12, v23, v10, v19);
      if (ACAccountStore.MigrationSet.eligibleForAutoCloudKitMigration.getter())
      {
        break;
      }

      (*v22)(v12, v10);
      v23 += v24;
      if (!--v20)
      {
        return;
      }
    }

    v25 = *(v47 + 32);
    v25(v15, v12, v10);
    v26 = v48;
    v25(v48, v15, v10);
    v27 = ACAccountStore.MigrationSet.calDAV.getter();
    v28 = [v27 identifier];

    if (v28)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = v43;
      UUID.init(uuidString:)();

      v31 = v45;
      v30 = v46;
      v32 = (*(v45 + 48))(v29, 1, v46);
      v33 = v44;
      if (v32 == 1)
      {
        (*v22)(v26, v10);
        sub_1004747B0(v29);
        return;
      }

      (*(v31 + 32))(v44, v29, v30);
      v34 = *(v42 + 16);
      v35 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v37 = [v35 objectIDWithUUID:isa];

      v49 = 0;
      v38 = [v34 fetchAccountWithObjectID:v37 error:&v49];

      if (v38)
      {
        v39 = v49;
        if (([v38 inactive] & 1) == 0)
        {
          REMAccount.isConsideredEmpty()();
          if (!v40)
          {

            (*(v31 + 8))(v33, v30);
            (*v22)(v26, v10);
            return;
          }
        }
      }

      else
      {
        v41 = v49;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      (*(v31 + 8))(v33, v30);
      (*v22)(v26, v10);
    }

    else
    {
      __break(1u);
    }
  }
}

void destroy for TTRWelcomeContentStyle(void **a1)
{
  v1 = *a1;
  v2 = -1;
  if (v1 < 0xFFFFFFFF)
  {
    v2 = v1;
  }

  if (v2 - 1 < 0)
  {
  }
}

void **assignWithCopy for TTRWelcomeContentStyle(void **result, void **a2)
{
  v2 = *result;
  LODWORD(v3) = -1;
  if (*result >= 0xFFFFFFFF)
  {
    LODWORD(v4) = -1;
  }

  else
  {
    v4 = *result;
  }

  v5 = v4 - 1;
  v6 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v3 = *a2;
  }

  v7 = v3 - 1;
  if (v5 < 0)
  {
    if (v7 < 0)
    {
      *result = v6;
      v12 = result;
      v13 = v6;

      return v12;
    }

    else
    {
      v8 = result;

      result = v8;
      *v8 = *a2;
    }
  }

  else
  {
    *result = v6;
    if (v7 < 0)
    {
      v10 = result;
      v11 = v6;
      return v10;
    }
  }

  return result;
}

void **assignWithTake for TTRWelcomeContentStyle(void **result, void **a2)
{
  v2 = *result;
  LODWORD(v3) = -1;
  if (*result < 0xFFFFFFFF)
  {
    v3 = *result;
  }

  v4 = *a2;
  if (v3 - 1 < 0)
  {
    LODWORD(v5) = -1;
    if (v4 < 0xFFFFFFFF)
    {
      v5 = *a2;
    }

    if (v5 - 1 < 0)
    {
      *result = v4;
      v7 = result;

      return v7;
    }

    else
    {
      v6 = result;

      result = v6;
      *v6 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRWelcomeContentStyle(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
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

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRWelcomeContentStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_100474754(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *sub_100474778(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t sub_1004747B0(uint64_t a1)
{
  v2 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100474818()
{
  if ((sub_10042254C() & 1) == 0)
  {
    type metadata accessor for TTRUserDefaults();
    v0 = static TTRUserDefaults.appUserDefaults.getter();
    v1 = TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.getter();

    if ((v1 & 1) == 0)
    {
      if (qword_100767328 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_100003E30(v2, qword_100784318);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "TTRWelcomeStyle:checkICloudUpgradeState(): Setting showUpgradeWhenICloudSyncEnabled to true.", v5, 2u);
      }

      v6 = static TTRUserDefaults.appUserDefaults.getter();
      TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.setter();
    }
  }
}

uint64_t sub_100474998()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007843D0);
  v1 = sub_100003E30(v0, qword_1007843D0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100474A88()
{
  v1 = &v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_initialFrameForLoadingView];
  if (v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_initialFrameForLoadingView + 32])
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = v1[2];
    v10 = v1[3];
    v4 = *v1;
    v6 = v1[1];
  }

  v11 = [objc_allocWithZone(UIView) initWithFrame:{v4, v6, v8, v10}];
  [v0 setView:v11];
}

void sub_100474BBC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&qword_1007845D8, &qword_1006408C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v110 - v5;
  v7 = sub_100058000(&qword_1007845E0, &qword_1006408D0);
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v110 - v10;
  v125.receiver = v1;
  v125.super_class = ObjectType;
  objc_msgSendSuper2(&v125, "viewDidLoad", v9);
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_26;
  }

  v13 = v12;
  [v12 setInsetsLayoutMarginsFromSafeArea:0];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v14;
  [v14 setPreservesSuperviewLayoutMargins:0];

  v16 = [v1 view];
  if (!v16)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = v16;
  v113 = v6;
  v114 = v4;
  v115 = v8;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = sub_100475AC8();
  v27 = [objc_allocWithZone(type metadata accessor for TTRIRemindersBoardMainCollectionView()) initWithFrame:v26 collectionViewLayout:{v19, v21, v23, v25}];

  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 systemBackgroundColor];
  [v29 setBackgroundColor:v30];

  v31 = v29;
  [v31 setDelegate:v1];
  v32 = v31;
  [v32 setAlwaysBounceVertical:0];
  [v32 setAutoresizingMask:18];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v32 setPreservesSuperviewLayoutMargins:1];

  [v32 setAllowsFocus:0];
  [v32 setContentInsetAdjustmentBehavior:1];

  type metadata accessor for TTRIRemindersBoardBackgroundView();
  v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v33[OBJC_IVAR____TtC9Reminders32TTRIRemindersBoardBackgroundView_delegate + 8] = &off_10072A0F8;
  swift_unknownObjectWeakAssign();
  [v32 setBackgroundView:v33];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v35 = v34;
  [v34 addSubview:v32];

  v36 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView];
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView] = v32;
  v37 = v32;

  v122 = 2uLL;
  v123 = 0uLL;
  sub_100058000(&qword_1007845E8, &qword_1006408D8);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableScrollViewInsets] = TTRObservableViewModel.init(value:)();

  v122 = 0u;
  v123 = 0u;
  LOBYTE(v124) = 1;
  sub_100058000(&qword_1007845F0, &unk_1006408E0);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableColumnContentInsets] = TTRObservableViewModel.init(value:)();

  sub_100475C04();
  v118 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource;
  v38 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource];
  if (!v38)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v117 = v33;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRRemindersBoardPresentationTreesManagementViewCapability();
  swift_allocObject();
  v39 = v38;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability] = TTRRemindersBoardPresentationTreesManagementViewCapability.init(mainDataSource:makeUpdatesForReloadingView:)();

  if (![v1 view])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v112 = v3;
  type metadata accessor for TTRDeferredViewActionProvider();
  swift_allocObject();
  v40 = TTRDeferredViewActionProvider.init(view:)();
  v41 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_deferredViewActionProvider;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_deferredViewActionProvider] = v40;

  v42 = v118;
  v43 = *&v1[v118];
  if (!v43)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v111 = v7;
  type metadata accessor for TTRIRemindersBoardItemLookupController();
  v44 = swift_allocObject();
  *(v44 + 16) = v37;
  *(v44 + 24) = v43;
  v45 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController] = v44;
  v116 = v37;
  v46 = v43;

  v47 = *&v1[v42];
  if (!v47)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  type metadata accessor for TTRIRemindersBoardSelectionController();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController] = sub_100502F40(v47);

  sub_100502A68();

  v48 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24];
  v49 = sub_10000C36C(&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter], v48);
  v50 = swift_allocObject();
  v51 = swift_unknownObjectWeakInit();
  v52 = __chkstk_darwin(v51);
  v54 = (&v110 - v53);
  (*(v55 + 16))(&v110 - v53, v49, v48, v52);
  v56 = *v54;
  *(&v123 + 1) = type metadata accessor for TTRIRemindersBoardPresenter();
  v124 = &off_100717868;
  *&v122 = v56;
  type metadata accessor for TTRIRemindersListAutomaticSubtaskSelectionController(0);
  v57 = swift_allocObject();
  v58 = OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession;
  v59 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
  (*(*(v59 - 8) + 56))(v57 + v58, 1, 1, v59);
  sub_100005FD0(&v122, v57 + 16);
  *(v57 + 56) = sub_100489068;
  *(v57 + 64) = v50;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_automaticSubtaskSelectionController] = v57;

  v60 = *&v1[v45];
  if (!v60)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for TTRIRemindersBoardFocusController(0);
  v61 = swift_allocObject();
  v62 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_currentFocusedItem;
  v63 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  (*(*(v63 - 8) + 56))(v61 + v62, 1, 1, v63);
  v64 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_lastFocusedItemID;
  v65 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v65 - 8) + 56))(v61 + v64, 1, 1, v65);
  *(v61 + OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_itemLookupController) = v60;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_focusController] = v61;

  v66 = [v1 view];
  if (!v66)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v67 = v66;
  type metadata accessor for TTRIRemindersBoardDragAndDropCoordinator(0);
  swift_allocObject();
  v68 = sub_1000706B4(v67);
  v69 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator] = v68;

  v68[3] = &off_10072A128;
  swift_unknownObjectWeakAssign();

  v70 = [objc_allocWithZone(type metadata accessor for TTRIRemindersBoardRootViewDragInteractionHandler()) init];
  v71 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_rootViewDragInteractionHandler;
  v72 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_rootViewDragInteractionHandler];
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_rootViewDragInteractionHandler] = v70;
  v73 = v70;

  if (!v73)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v74 = &off_100713A58;
  if (!*&v1[v69])
  {
    v74 = 0;
  }

  *&v73[OBJC_IVAR____TtC9Reminders48TTRIRemindersBoardRootViewDragInteractionHandler_delegate + 8] = v74;
  swift_unknownObjectWeakAssign();

  v75 = [v1 view];
  if (!v75)
  {
    goto LABEL_36;
  }

  v76 = *&v1[v71];
  v77 = v118;
  if (!v76)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v78 = v75;
  v79 = [objc_allocWithZone(UIDragInteraction) initWithDelegate:v76];
  [v78 addInteraction:v79];

  v80 = *&v1[v77];
  if (!v80)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v81 = type metadata accessor for TTRIRemindersBoardColumnReorderingController(0);
  v82 = objc_allocWithZone(v81);
  *&v82[OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v83 = v116;
  v84 = v80;
  UUID.init()();
  *&v82[OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_debugOverlayView] = 0;
  *&v82[OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext] = 0;
  *&v82[OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView] = v83;
  *&v82[OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_dataSource] = v84;
  v121.receiver = v82;
  v121.super_class = v81;
  v85 = objc_msgSendSuper2(&v121, "init");
  v86 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController];
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController] = v85;
  v87 = v85;

  *&v87[OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_delegate + 8] = &off_10072A108;
  swift_unknownObjectWeakAssign();

  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
LABEL_23:
    v103 = *&v1[v118];
    if (v103)
    {
      *&v122 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_eventPublishers];
      v104 = v103;
      sub_100058000(&qword_100772768, &qword_100634AF0);
      sub_10000E188(&unk_100772770, &qword_100772768, &qword_100634AF0, &protocol conformance descriptor for PassthroughSubject<A, B>);
      v105 = Publisher.eraseToAnyPublisher()();
      v106 = type metadata accessor for TTRIRemindersBoardScrollingController();
      v107 = objc_allocWithZone(v106);
      *&v107[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_pendingStartEditingTask] = 0;
      *&v107[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainCollectionView] = v83;
      *&v107[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainDataSource] = v104;
      *&v107[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_willDisplayCell] = v105;
      v119.receiver = v107;
      v119.super_class = v106;
      v108 = objc_msgSendSuper2(&v119, "init");
      v109 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController];
      *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController] = v108;

      type metadata accessor for TTRIRemindersBoardHeaderViewController(0);
      swift_allocObject();
      *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController] = sub_10008E718(v1);

      sub_100476100();
      sub_100476440();
      sub_100476A68();

      return;
    }

    goto LABEL_39;
  }

  v88 = *&v1[v41];
  v89 = v118;
  if (v88)
  {
    type metadata accessor for TTRIRemindersBoardChromelessBarsController();
    v90 = swift_allocObject();
    *(v90 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v90 + 48) = &_swiftEmptyDictionarySingleton;
    *(v90 + 56) = &_swiftEmptySetSingleton;
    *(v90 + 64) = 514;
    v91 = qword_100766F90;

    if (v91 != -1)
    {
      swift_once();
    }

    v116 = v83;
    v92 = qword_10076FFA8;
    v93 = word_10076FFB0;
    v94 = HIBYTE(word_10076FFB0);
    *(v90 + 72) = byte_10076FFA0;
    *(v90 + 80) = v92;
    *(v90 + 88) = v93;
    *(v90 + 89) = v94;
    *(v90 + 32) = v88;
    *(v90 + 40) = &protocol witness table for TTRDeferredViewActionProvider;
    *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_chromelessBarsController] = v90;

    *(v90 + 24) = &off_10072A188;
    swift_unknownObjectWeakAssign();
    v95 = *&v1[v89];
    if (!v95)
    {
      goto LABEL_41;
    }

    v96 = v95;
    v97 = TTRRemindersBoardMainDiffableDataSource.allColumnIDsPublisher.getter();

    v98 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_eventPublishers + 8];
    *&v122 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_eventPublishers];
    v120 = v98;

    sub_100058000(&qword_100772768, &qword_100634AF0);
    sub_10000E188(&unk_100772770, &qword_100772768, &qword_100634AF0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v99 = v113;
    Publisher.merge(with:)();
    sub_10000E188(&qword_1007845F8, &qword_1007845D8, &qword_1006408C8, &protocol conformance descriptor for Publishers.MergeMany<A>);
    v100 = v112;
    Publisher.map<A>(_:)();
    (*(v114 + 8))(v99, v100);
    sub_10000E188(&qword_100784600, &qword_1007845E0, &qword_1006408D0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v101 = v111;
    v102 = Publisher.eraseToAnyPublisher()();
    (*(v115 + 8))(v11, v101);

    sub_100167358(v97, v102);

    v83 = v116;
    goto LABEL_23;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

id sub_100475AC8()
{
  v0 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  [v0 setScrollDirection:1];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v6[4] = sub_100489050;
  v6[5] = v1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10001F170;
  v6[3] = &unk_10072A4E0;
  v3 = _Block_copy(v6);

  v4 = [v2 initWithSectionProvider:v3 configuration:v0];

  _Block_release(v3);

  return v4;
}

void sub_100475C04()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100784608, &qword_1006408F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v19[-v7];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIBoardColumnCollectionViewCell();
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  UICollectionView.CellRegistration.init(handler:)();
  v9 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView);
  if (v9)
  {
    (*(v3 + 16))(v5, v8, v2);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    (*(v3 + 32))(v11 + v10, v5, v2);
    v12 = objc_allocWithZone(type metadata accessor for TTRRemindersBoardMainDiffableDataSource());
    v13 = v9;
    v14 = TTRRemindersBoardMainDiffableDataSource.init(collectionView:cellProvider:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = v14;
    v16 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
    sub_100058000(&qword_100784610, &unk_1006408F8);
    UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.setter();
    v16(v19, 0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
    UICollectionViewDiffableDataSource.ReorderingHandlers.didReorder.setter();
    v17(v19, 0);

    (*(v3 + 8))(v8, v2);
    v18 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
    *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource) = v15;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100475F2C@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10000B0D8(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v8);

    sub_10000C36C(v8, v8[3]);
    TTRRemindersBoardPresentationTreesManagementPresenterCapability.makeUpdatesForReloadingView()();
    v5 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates();
    (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
    return sub_100004758(v8);
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates();
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }
}

void sub_100476038(uint64_t a1, char a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController);
    if (a2)
    {
      if (v9)
      {

        sub_100502B38(a1, a3 & 1);
LABEL_7:

        return;
      }

      __break(1u);
    }

    else if (v9)
    {

      sub_100502CAC(a1, a3 & 1);
      goto LABEL_7;
    }

    __break(1u);
  }
}

void sub_100476100()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100784550, &unk_100631BF0);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v38 - v7;
  if ([v0 isViewLoaded])
  {
    v9 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_completedRemindersState;
    swift_beginAccess();
    sub_10000794C(&v0[v9], v8, &qword_100784550, &unk_100631BF0);
    v10 = (*(v2 + 48))(v8, 1, v1);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (v10 != 1)
    {
      (*(v2 + 32))(v4, v8, v1);
      sub_10047B60C(v4, v0, v50);
      v18 = *(v2 + 8);
      v2 += 8;
      v18(v4, v1);
      v17 = v50[0];
      v16 = v50[1];
      v15 = v50[2];
      v14 = v50[3];
      v13 = v50[4];
      v12 = v50[5];
      v11 = v50[6];
    }

    v19 = *&v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController];
    if (v19)
    {
      v20 = v19[3];
      v40 = v19[2];
      v21 = v40;
      v42 = v20;
      v22 = v19[5];
      v39 = v19[4];
      v23 = v39;
      v24 = v19[6];
      v25 = v19[7];
      v41 = v19[8];
      v19[2] = v17;
      v19[3] = v16;
      v19[4] = v15;
      v19[5] = v14;
      v19[6] = v13;
      v19[7] = v12;
      v19[8] = v11;
      v48 = v12;
      v49 = v11;
      v47 = v13;
      v26 = v14;
      v27 = v15;
      v28 = v16;
      v29 = v17;

      v30 = v21;
      v31 = v42;
      v32 = v23;
      v33 = v41;
      sub_10008E1B8(v30, v42, v32, v22, v24, v25, v41);
      v43 = v29;
      v44 = v28;
      v34 = v29;
      v45 = v27;
      v46 = v26;
      v35 = v26;
      v36 = v39;
      v37 = v40;
      sub_10008E1B8(v34, v28, v27, v35, v47, v48, v49);
      sub_10008E274(v37, v31, v36, v22, v24, v25, v33);
      if (v31 | v19[3])
      {
        sub_10008CDD0();
        sub_10008E274(v37, v31, v36, v22, v24, v25, v33);
      }

      sub_10008E274(v43, v44, v45, v46, v47, v48, v49);
    }

    else
    {
      __break(1u);
      (*(v2 + 8))(v4, v1);
      __break(1u);
    }
  }
}

void sub_100476440()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListTip();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = sub_100058000(&unk_100784570, &qword_100640888);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = sub_100058000(&qword_100769E98, &unk_100640890);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v41 - v20;
  if ([v1 isViewLoaded])
  {
    v43 = v8;
    v22 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_listInfo;
    swift_beginAccess();
    v23 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v24 = (*(*(v23 - 8) + 48))(&v1[v22], 1, v23);
    v45 = v3;
    if (v24)
    {
      swift_endAccess();
      (*(v3 + 56))(v21, 1, 1, v2);
    }

    else
    {
      TTRRemindersListViewModel.ListInfo.tip.getter();
      swift_endAccess();
    }

    v46 = v21;
    v42 = v5;
    v44 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController;
    v25 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController];
    if (!v25)
    {
      __break(1u);
      goto LABEL_22;
    }

    v26 = OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_tip;
    swift_beginAccess();
    v27 = *(v9 + 48);
    sub_10000794C(v25 + v26, v11, &qword_100769E98, &unk_100640890);
    sub_10000794C(v46, &v11[v27], &qword_100769E98, &unk_100640890);
    v28 = v45;
    v29 = *(v45 + 48);
    if (v29(v11, 1, v2) == 1)
    {
      if (v29(&v11[v27], 1, v2) == 1)
      {
        sub_1000079B4(v11, &qword_100769E98, &unk_100640890);
        v30 = v46;
LABEL_19:
        sub_1000079B4(v30, &qword_100769E98, &unk_100640890);
        return;
      }
    }

    else
    {
      sub_10000794C(v11, v17, &qword_100769E98, &unk_100640890);
      if (v29(&v11[v27], 1, v2) != 1)
      {
        (*(v28 + 32))(v43, &v11[v27], v2);
        sub_1004891CC(&unk_100784580, &type metadata accessor for TTRRemindersListTip, &protocol conformance descriptor for TTRRemindersListTip);
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        v40 = *(v28 + 8);
        v40(v43, v2);
        v40(v17, v2);
        sub_1000079B4(v11, &qword_100769E98, &unk_100640890);
        v30 = v46;
        if (v39)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      (*(v28 + 8))(v17, v2);
    }

    sub_1000079B4(v11, &unk_100784570, &qword_100640888);
    v30 = v46;
LABEL_12:
    sub_10000794C(v30, v14, &qword_100769E98, &unk_100640890);
    if (v29(v14, 1, v2) != 1)
    {
      v35 = v45;
      v36 = v42;
      (*(v45 + 32))(v42, v14, v2);
      v38 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24];
      v37 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32];
      sub_10000C36C(&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter], v38);
      (*(*(v37 + 8) + 1104))(v47, v36, v38);
      if (*&v1[v44])
      {

        sub_10008D0E0(v36, v47);

        sub_100004758(v47);
        (*(v35 + 8))(v36, v2);
        goto LABEL_19;
      }

LABEL_23:
      __break(1u);
      return;
    }

    sub_1000079B4(v14, &qword_100769E98, &unk_100640890);
    v31 = *&v1[v44];
    if (v31)
    {
      v32 = OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_tipView;
      v33 = *(v31 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_tipView);
      if (v33)
      {

        [v33 removeFromSuperview];
        sub_1000079B4(v30, &qword_100769E98, &unk_100640890);
        v34 = *(v31 + v32);
        *(v31 + v32) = 0;

        return;
      }

      goto LABEL_19;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

void sub_100476A68()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 directionalLayoutMargins];

  v4 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableColumnContentInsets;
  if (!*&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableColumnContentInsets])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  TTRObservableViewModel.value.getter();

  if ((v5 & 1) != 0 || (NSDirectionalEdgeInsets.isAlmostEqual(to:)() & 1) == 0)
  {
    if (*&v1[v4])
    {

      TTRObservableViewModel.updateAndPublish(_:)();

      return;
    }

LABEL_10:
    __break(1u);
  }
}

void sub_100476C28(void *a1, double a2, double a3)
{
  v23.receiver = v3;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v24.origin.x = v10;
    v24.origin.y = v12;
    v24.size.width = v14;
    v24.size.height = v16;
    Width = CGRectGetWidth(v24);
    if (sub_10002E9C4(a2, 0.0000000149011612, Width))
    {
LABEL_5:
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22[4] = sub_100489058;
      v22[5] = v20;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 1107296256;
      v22[2] = sub_1002FB78C;
      v22[3] = &unk_10072A508;
      v21 = _Block_copy(v22);

      [a1 animateAlongsideTransition:0 completion:v21];
      _Block_release(v21);
      return;
    }

    v18 = *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView];
    if (v18)
    {
      v19 = [v18 collectionViewLayout];
      [v19 invalidateLayout];

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100476DFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*&Strong[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_chromelessBarsController])
    {

      sub_10016931C();
    }

    else
    {
    }
  }
}

void sub_100476EF8(char a1, char a2)
{
  v3 = v2;
  v6 = a1 & 1;
  ObjectType = swift_getObjectType();
  updated = type metadata accessor for TTRRemindersBoardPresentationTreesManagementPresenterCapability.DeferredUpdateFlags();
  v9 = *(updated - 8);
  *&v10 = __chkstk_darwin(updated).n128_u64[0];
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v3 isEditing] == v6)
  {
    return;
  }

  v20.receiver = v3;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "setEditing:animated:", v6, a2 & 1);
  v13 = *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController];
  if (!v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = *(v13 + 16);
  v15 = a1 & 1;
  *(v13 + 16) = a1 & 1;
  if (v14 != v15)
  {
    if (a1)
    {
    }

    else
    {
      swift_beginAccess();
      *(v13 + 48) = &_swiftEmptySetSingleton;
    }

    if (*(v13 + 32))
    {
      __chkstk_darwin(v16);
      *(&v19 - 2) = v13;
      *(&v19 - 1) = v17;

      TTRObservableViewModelCollection.updateAndPublishAll(using:)();

      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_9:
  v18 = sub_10000C36C(&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter], *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24]);
  if (*(*v18 + 120) != v15)
  {
    *(*v18 + 120) = v15;
    TTRRemindersBoardCellPresentationStatesPresenterCapability.isMultiSelectMode.setter();
    static TTRRemindersBoardPresentationTreesManagementPresenterCapability.DeferredUpdateFlags.placeholderReminderVisibilityChange.getter();
    TTRRemindersBoardPresentationTreesManagementPresenterCapability.scheduleUpdate(for:)();
    (*(v9 + 8))(v12, updated);
  }

  sub_100476100();
}

uint64_t sub_100477384(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100784550, &unk_100631BF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_completedRemindersState;
  swift_beginAccess();
  sub_100019180(a1, &v1[v10], &qword_100784550, &unk_100631BF0);
  swift_endAccess();
  if (![v1 isViewLoaded])
  {
    return sub_1000079B4(a1, &qword_100784550, &unk_100631BF0);
  }

  sub_10000794C(&v1[v10], v9, &qword_100784550, &unk_100631BF0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_10047B60C(v6, v1, v33);
    v11 = *(v4 + 8);
    v4 += 8;
    v11(v6, v3);
    v28 = v33[0];
    v29 = v33[2];
    v26 = v33[1];
    v27 = v33[3];
    v30 = v33[4];
    v31 = v33[5];
    v32 = v33[6];
  }

  v25 = a1;
  v12 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController];
  if (v12)
  {
    v14 = v12[2];
    v13 = v12[3];
    v15 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    v18 = v12[7];
    v19 = v12[8];
    v20 = v29;
    v22 = v26;
    v21 = v27;
    v12[2] = v28;
    v12[3] = v22;
    v12[4] = v20;
    v12[5] = v21;
    v23 = v31;
    v12[6] = v30;
    v12[7] = v23;
    v12[8] = v32;

    sub_10008E1B8(v14, v13, v15, v16, v17, v18, v19);
    sub_10008E1B8(v28, v22, v29, v21, v30, v31, v32);
    sub_10008E274(v14, v13, v15, v16, v17, v18, v19);
    if (v13 | v12[3])
    {
      sub_10008CDD0();
      sub_10008E274(v14, v13, v15, v16, v17, v18, v19);
    }

    sub_10008E274(v28, v26, v29, v27, v30, v31, v32);

    a1 = v25;
    return sub_1000079B4(a1, &qword_100784550, &unk_100631BF0);
  }

  __break(1u);
  result = (*(v4 + 8))(v6, v3);
  __break(1u);
  return result;
}

void sub_1004776D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability))
    {

      v8 = TTRRemindersBoardPresentationTreesManagementViewCapability.observableColumnPresentationTrees.getter();

      if (v8)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        v9 = *&v7[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController];
        if (v9)
        {
          if (*(v9 + 32))
          {

            TTRObservableViewModelCollection.observableViewModel(forItemID:)();

            v10 = *&v7[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator];
            if (v10)
            {
              v11 = *&v7[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController];
              if (v11)
              {
                v12 = v11;

                sub_100482B30(a3, v10, v12, a1);

                *(a1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_delegate + 8) = &off_10072A1B0;
                swift_unknownObjectWeakAssign();
                v13 = *(a1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_contentInsetsController);
                if (v13)
                {
                  v14 = *&v7[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableColumnContentInsets];
                  if (!v14)
                  {
LABEL_32:
                    __break(1u);
                    goto LABEL_33;
                  }

                  *(v13 + 40) = v14;

                  if (*(v13 + 32) == 1)
                  {
                    *(v13 + 40) = 0;
                    if (!*(v13 + 24))
                    {
LABEL_33:
                      __break(1u);
                      return;
                    }

                    TTRViewModelObserver.subscribeIfNeeded(to:)();
                  }
                }

                if (*(a1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_presentationTreesCapability))
                {

                  v15 = TTRBoardColumnPresentationTreesManagementViewCapability.presentationTreesObserver.getter();

                  if (v15)
                  {
                    TTRViewModelObserver.subscribeIfNeeded(to:)();

                    if (*(a1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollViewInsetsObserver))
                    {
                      if (*&v7[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableScrollViewInsets])
                      {

                        TTRViewModelObserver.subscribeIfNeeded(to:)();

                        if (*(a1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_selectionRequestObserver))
                        {

                          TTRViewModelObserver.subscribeIfNeeded(to:)();

                          return;
                        }

                        goto LABEL_31;
                      }

LABEL_30:
                      __break(1u);
LABEL_31:
                      __break(1u);
                      goto LABEL_32;
                    }

LABEL_29:
                    __break(1u);
                    goto LABEL_30;
                  }

LABEL_28:
                  __break(1u);
                  goto LABEL_29;
                }

LABEL_27:
                __break(1u);
                goto LABEL_28;
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
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t sub_1004779D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a3, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  type metadata accessor for TTRIBoardColumnCollectionViewCell();
  v10 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_1000079B4(v7, &unk_10076BB50, &unk_10062DEA0);
  return v10;
}

char *sub_100477B24(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *&result[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource];
    if (v11)
    {
      v12 = v11;
      TTRRemindersBoardMainDiffableDataSource.item(withID:)();

      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        sub_1000079B4(v4, &qword_100772140, &qword_10062D9F0);
        return 0;
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        v13 = *&v10[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24];
        v14 = *&v10[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32];
        sub_10000C36C(&v10[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter], v13);
        v15 = (*(*(v14 + 8) + 552))(v8, v13);
        if (v15 >> 62)
        {
          v16 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        (*(v6 + 8))(v8, v5);
        return (v16 != 0);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100477D80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100478204(a1);
  }
}

uint64_t sub_100478204(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v70 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v71 = &v64 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin(v6);
  v69 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100784618, &qword_100640908);
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v76 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v64 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v14 = *(v13 - 8);
  v78 = v13;
  v79 = v14;
  __chkstk_darwin(v13);
  v75 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v82 = &v64 - v17;
  v18 = sub_100058000(&qword_100784620, &qword_100640910);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v77 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v64 - v22;
  __chkstk_darwin(v24);
  v26 = &v64 - v25;
  if (qword_100767330 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100003E30(v27, qword_1007843D0);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "TTRIRemindersBoardMainViewController: handle reordering transaction", v30, 2u);
  }

  sub_100058000(&qword_100784628, &qword_100640918);
  NSDiffableDataSourceTransaction.difference.getter();
  sub_10000E188(&qword_100784630, &qword_100784620, &qword_100640910, &protocol conformance descriptor for CollectionDifference<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v31 = dispatch thunk of Collection.distance(from:to:)();
  v32 = *(v19 + 8);
  v32(v26, v18);
  if (v31 != 2)
  {
    goto LABEL_19;
  }

  v68 = a1;
  NSDiffableDataSourceTransaction.difference.getter();
  v33 = CollectionDifference.removals.getter();
  v32(v23, v18);
  if (!*(v33 + 16))
  {

    goto LABEL_19;
  }

  v34 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  sub_10000794C(v33 + v34, v12, &qword_100784618, &qword_100640908);

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000079B4(v12, &qword_100784618, &qword_100640908);
    goto LABEL_19;
  }

  v80 = v34;
  v65 = sub_100058000(&qword_100784638, &qword_100640920);
  v35 = v79;
  v36 = &v12[*(v65 + 48)];
  v37 = v78;
  v66 = *(v79 + 32);
  v67 = v79 + 32;
  v66(v82, v36, v78);
  v38 = v77;
  NSDiffableDataSourceTransaction.difference.getter();
  v39 = CollectionDifference.insertions.getter();
  v32(v38, v18);
  if (!*(v39 + 16))
  {

    (*(v35 + 8))(v82, v37);
    goto LABEL_19;
  }

  v40 = v76;
  sub_10000794C(v80 + v39, v76, &qword_100784618, &qword_100640908);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v79 + 8))(v82, v37);
    sub_1000079B4(v40, &qword_100784618, &qword_100640908);
LABEL_19:
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  v41 = *v40;
  v42 = v75;
  v66(v75, v40 + *(v65 + 48), v37);
  sub_1004891CC(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v43 = v82;
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v79 + 8);
  result = v45(v42, v37);
  if ((v44 & 1) == 0)
  {
    v45(v43, v37);
    goto LABEL_19;
  }

  v81 = v41;
  v47 = v72;
  v48 = *(v72 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (v48)
  {
    v49 = v48;
    v50 = v71;
    TTRRemindersBoardMainDiffableDataSource.item(withID:)();

    v51 = v73;
    v52 = v74;
    if ((*(v73 + 48))(v50, 1, v74) == 1)
    {
      sub_1000079B4(v50, &qword_100772140, &qword_10062D9F0);
      v53 = objc_opt_self();
      v54 = String._bridgeToObjectiveC()();
      [v53 internalErrorWithDebugDescription:v54];

      swift_willThrow();
      return v45(v43, v37);
    }

    else
    {
      v57 = v69;
      (*(v51 + 32))(v69, v50, v52);
      v58 = (v47 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
      v59 = *(v47 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v60 = v58[4];
      v80 = sub_10000C36C(v58, v59);
      sub_100058000(&qword_100772150, &unk_100635D00);
      v61 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_10062D400;
      (*(v51 + 16))(v62 + v61, v57, v52);
      v63 = v70;
      (*(v51 + 56))(v70, 1, 1, v52);
      (*(*(v60 + 8) + 600))(v62, v63, v81, 1, 1, v59);

      sub_1000079B4(v63, &qword_100772140, &qword_10062D9F0);
      (*(v51 + 8))(v57, v52);
      return v45(v82, v78);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100478BE8(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability))
  {

    TTRRemindersBoardPresentationTreesManagementViewCapability.reload()();
  }

  else
  {
    __break(1u);
  }
}

id sub_100478C38(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = type metadata accessor for TTRRemindersBoardColumnWidthCalculator.WidthClass();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersBoardColumnWidthCalculator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v58 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14 = Strong, v15 = [Strong view], v14, v15))
  {
    [v15 directionalLayoutMargins];
    v17 = v16;
    v19 = v18;
    v64 = v15;
    [v15 safeAreaInsets];
  }

  else
  {
    v64 = 0;
    v17 = 16.0;
    v19 = 16.0;
  }

  [objc_msgSend(a2 "container")];
  swift_unknownObjectRelease();
  v20 = [a2 traitCollection];
  [v20 horizontalSizeClass];

  v21 = [a2 traitCollection];
  [v21 displayScale];

  TTRRemindersBoardColumnWidthCalculator.init(contentSize:edgeInsets:interColumnSpacing:displayScale:columnWidthRange:peekPercentage:)();
  if (qword_100767330 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100003E30(v22, qword_1007843D0);
  v23 = v12;
  (*(v7 + 16))(v9, v12, v6);
  v24 = Logger.logObject.getter();
  v25 = v6;
  v26 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v24, v26);
  v58 = v25;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v65 = v29;
    *v28 = 136315138;
    v30 = TTRRemindersBoardColumnWidthCalculator.description.getter();
    v32 = v31;
    v33 = *(v7 + 8);
    v59 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60 = v33;
    v33(v9, v25);
    v34 = sub_100004060(v30, v32, &v65);

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v24, v26, "[TTRIRemindersBoard] Column Width Calculation: %s", v28, 0xCu);
    sub_100004758(v29);
  }

  else
  {

    v35 = *(v7 + 8);
    v59 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60 = v35;
    v35(v9, v25);
  }

  v37 = v61;
  v36 = v62;
  v38 = v63;
  (*(v62 + 104))(v61, enum case for TTRRemindersBoardColumnWidthCalculator.WidthClass.medium(_:), v63);
  v39 = v23;
  TTRRemindersBoardColumnWidthCalculator.columnWidth(for:)();
  v41 = v40;
  (*(v36 + 8))(v37, v38);
  v42 = objc_opt_self();
  v43 = [v42 fractionalWidthDimension:1.0];
  v44 = [v42 fractionalHeightDimension:1.0];
  v45 = objc_opt_self();
  v46 = [v45 sizeWithWidthDimension:v43 heightDimension:v44];

  v47 = [objc_opt_self() itemWithLayoutSize:v46];
  v48 = [v42 absoluteDimension:v17 + v41];
  v49 = [v42 fractionalHeightDimension:1.0];
  v50 = [v45 sizeWithWidthDimension:v48 heightDimension:v49];

  v51 = objc_opt_self();
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10062D420;
  *(v52 + 32) = v47;
  sub_100003540(0, &qword_100772750, NSCollectionLayoutItem_ptr);
  v53 = v47;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v55 = [v51 horizontalGroupWithLayoutSize:v50 subitems:isa];

  type metadata accessor for TTRIRemindersBoardMainViewController.LayoutSection();
  v56 = [swift_getObjCClassFromMetadata() sectionWithGroup:v55];
  [v56 setInterGroupSpacing:0.0];
  [v56 setContentInsets:{0.0, v17 - v17 * 0.5, 0.0, v19 - v17 * 0.5}];
  [v56 setContentInsetsReference:1];

  v60(v39, v58);
  return v56;
}

uint64_t sub_1004793BC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19[-1] - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
  v15 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
  v14 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
  sub_10000C36C(v13, v15);
  (*(*(v14 + 8) + 296))(v19, v15);
  sub_10000C36C(v19, v19[3]);
  TTRRemindersListEditingState.editingItem.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
    sub_100004758(v19);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_100004758(v19);
    result = TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    if (*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
    {

      v17 = sub_100495DBC(v5);

      (*(v3 + 8))(v5, v2);
      (*(v10 + 8))(v12, v9);
      return v17;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10047968C(uint64_t a1, id a2)
{
  v3 = v2;
  v37 = a2;
  v5 = type metadata accessor for TTREditingStateOption.InputType();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v36 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v31);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v32 = v3;
  if (*&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController])
  {

    v16 = sub_100495DBC(v15);

    (*(v13 + 8))(v15, v12);
    if (v16)
    {
      if (qword_100767330 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100003E30(v17, qword_1007843D0);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "TTRIRemindersBoardMainViewController: Begin editing title of cell of item-to-edit", v20, 2u);
      }

      v21 = [v16 contentView];
      type metadata accessor for TTRIBoardReminderCellContentView(0);
      if (swift_dynamicCastClass())
      {
        sub_1004C1558(v37);
      }

      else
      {
      }
    }

    else
    {
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
      v23 = v31;
      (*(v7 + 16))(v35, a1, v31);
      v25 = v33;
      v24 = v34;
      (*(v33 + 16))(v36, v37, v34);
      type metadata accessor for MainActor();
      v37 = v32;
      v26 = static MainActor.shared.getter();
      v27 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v28 = (v8 + *(v25 + 80) + v27) & ~*(v25 + 80);
      v29 = swift_allocObject();
      *(v29 + 2) = v26;
      *(v29 + 3) = &protocol witness table for MainActor;
      *(v29 + 4) = v37;
      (*(v7 + 32))(&v29[v27], v35, v23);
      (*(v25 + 32))(&v29[v28], v36, v24);
      sub_10009E31C(0, 0, v11, &unk_100640880, v29);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100479B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for TTREditingStateOption.InputType();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6[9] = v9;
  v6[10] = *(v9 - 8);
  v6[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[12] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[13] = v11;
  v6[14] = v10;

  return _swift_task_switch(sub_100479CAC, v11, v10);
}

void sub_100479CAC()
{
  if (qword_100767330 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_1007843D0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "TTRIRemindersBoardMainViewController: scrolling cell of item-to-edit to visible", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(v5 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController);
  v0[15] = v6;
  if (v6)
  {
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[6];
    v10 = v0[4];
    v6;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v9 + 16))(v7, v10, v8);
    v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v12 = swift_allocObject();
    v0[16] = v12;
    (*(v9 + 32))(v12 + v11, v7, v8);
    v13 = swift_task_alloc();
    v0[17] = v13;
    *v13 = v0;
    v13[1] = sub_100479EC8;
    v14 = v0[11];

    sub_1004162A8(v14, sub_1004832AC, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100479EC8(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 112);
  v9 = *(v3 + 104);

  return _swift_task_switch(sub_10047A090, v9, v8);
}

uint64_t sub_10047A090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10047A104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100767330 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_1007843D0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "TTRIRemindersBoardMainViewController: Begin editing title of cell of item-to-edit", v6, 2u);
  }

  swift_getObjectType();
  return dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();
}

uint64_t sub_10047A20C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 304) = a3;
  *(v4 + 48) = a1;
  v5 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  v6 = sub_100058000(&unk_100772740, &unk_100634AD0);
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  *(v4 + 120) = v7;
  *(v4 + 128) = *(v7 - 8);
  *(v4 + 136) = swift_task_alloc();
  sub_100058000(&qword_100772140, &qword_10062D9F0);
  *(v4 + 144) = swift_task_alloc();
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(v4 + 152) = v8;
  *(v4 + 160) = *(v8 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  v9 = type metadata accessor for TTRRemindersBoardPresentationTrees();
  *(v4 + 184) = v9;
  *(v4 + 192) = *(v9 - 8);
  *(v4 + 200) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 208) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 216) = v11;
  *(v4 + 224) = v10;

  return _swift_task_switch(sub_10047A4C8, v11, v10);
}

uint64_t sub_10047A4C8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v40 = *(v0 + 144);
  v41 = *(v0 + 152);
  sub_10000C36C((*(v0 + 64) + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(*(v0 + 64) + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
  TTRRemindersBoardPresentationTreesManagementPresenterCapability.presentationTree.getter();
  v5 = TTRRemindersBoardPresentationTrees.ancestorsToExpand(forRevealing:isCollapsed:)();
  (*(v1 + 8))(v2, v3);
  *(v0 + 40) = v5;
  type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();
  sub_100058000(&unk_1007821D0, &unk_100631C10);
  sub_10000E188(&unk_100784540, &unk_1007821D0, &unk_100631C10, &protocol conformance descriptor for [A]);
  dispatch thunk of TTRRemindersBoardItemCollapsedStates.expand<A>(_:)();

  TTRRemindersBoardPresentationTreesManagementPresenterCapability.performPendingUpdatesImmediately()();
  TTRRemindersListHighlightTarget.firstItem.getter();
  if ((*(v4 + 48))(v40, 1, v41) == 1)
  {
    v6 = *(v0 + 144);

    sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
    v7 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    [v7 internalErrorWithDebugDescription:v8];

    swift_willThrow();
LABEL_6:

    v25 = *(v0 + 8);

    return v25();
  }

  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  (*(v12 + 32))(v10, *(v0 + 144), v11);
  (*(v12 + 16))(v9, v10, v11);
  result = (*(v12 + 88))(v9, v11);
  if (result == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    goto LABEL_4;
  }

  if (result == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v26 = *(*(v0 + 64) + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController);
    *(v0 + 232) = v26;
    if (v26)
    {
      v26;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      v27 = swift_task_alloc();
      *(v0 + 240) = v27;
      *v27 = v0;
      v27[1] = sub_10047ABAC;
      v28 = *(v0 + 136);
      v29 = *(v0 + 304);

      return sub_100419210(v28, 0, v29);
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (result == enum case for TTRRemindersListViewModel.Item.reminder(_:) || result == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || result == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:))
  {
    v31 = *(v0 + 160);
    v30 = *(v0 + 168);
    v32 = *(v0 + 152);
    v33 = *(v0 + 64);
    v34 = *(v31 + 8);
    *(v0 + 248) = v34;
    *(v0 + 256) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    result = v34(v30, v32);
    v35 = *(v33 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController);
    *(v0 + 264) = v35;
    if (!v35)
    {
      goto LABEL_32;
    }

    v35;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v36 = swift_task_alloc();
    *(v0 + 272) = v36;
    *v36 = v0;
    v36[1] = sub_10047AE48;
    v37 = *(v0 + 136);
    v38 = *(v0 + 304);
    v39 = *(v0 + 56);

    return sub_100418040(v37, v39, v38);
  }

  else
  {
    if (result == enum case for TTRRemindersListViewModel.Item.completed(_:) || result == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || result == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || result == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
LABEL_4:
      v15 = *(v0 + 160);
      v14 = *(v0 + 168);
      v16 = *(v0 + 152);

      (*(v15 + 8))(v14, v16);
LABEL_5:
      v17 = *(v0 + 176);
      v18 = *(v0 + 152);
      v19 = *(v0 + 160);
      v20 = objc_opt_self();
      _StringGuts.grow(_:)(54);
      v21._countAndFlagsBits = 0xD000000000000033;
      v21._object = 0x8000000100688920;
      String.append(_:)(v21);
      sub_1004891CC(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v22._countAndFlagsBits = TTRTreeStorageItem.treeItemDescription.getter();
      String.append(_:)(v22);

      v23._countAndFlagsBits = 125;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24 = String._bridgeToObjectiveC()();

      [v20 internalErrorWithDebugDescription:v24];

      swift_willThrow();
      (*(v19 + 8))(v17, v18);
      goto LABEL_6;
    }

    if (result == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || result == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
    {

      goto LABEL_5;
    }

    return _diagnoseUnexpectedEnumCase<A>(type:)();
  }
}

uint64_t sub_10047ABAC(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 120);

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 224);
  v9 = *(v3 + 216);

  return _swift_task_switch(sub_10047AD58, v9, v8);
}

uint64_t sub_10047AD58()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];

  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10047AE48(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  *(*v1 + 280) = a1;

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 224);
  v8 = *(v2 + 216);

  return _swift_task_switch(sub_10047AFEC, v8, v7);
}

uint64_t sub_10047AFEC()
{
  v1 = v0[35];
  if (!v1)
  {
    v7 = v0[31];
    v8 = v0[22];
    v9 = v0[19];

    v10 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();
    [v10 internalErrorWithDebugDescription:v11];

    swift_willThrow();
    v7(v8, v9);

    v6 = v0[1];
    goto LABEL_5;
  }

  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  swift_beginAccess();
  (*(v3 + 16))(v2, &v1[v5], v4);
  LOBYTE(v5) = TTRLazilyLoadedViewModelState.isValid.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    (v0[31])(v0[22], v0[19]);

    v6 = v0[1];
LABEL_5:

    return v6();
  }

  (*(v0[10] + 104))(v0[11], enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v0[9]);
  v13 = swift_task_alloc();
  v0[36] = v13;
  *v13 = v0;
  v13[1] = sub_10047B2C4;
  v14 = v0[22];
  v15 = v0[11];

  return TTRRemindersListItemStateTracker.waitFor(_:of:cancelsExistingPromise:)(v15, v14, 1);
}

uint64_t sub_10047B2C4()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  v3 = v2[28];
  v4 = v2[27];
  if (v0)
  {
    v5 = sub_10047B528;
  }

  else
  {
    v5 = sub_10047B44C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10047B44C()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[22];
  v4 = v0[19];

  v2(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10047B528()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[22];
  v4 = v0[19];

  v2(v3, v4);

  v5 = v0[1];

  return v5();
}

id sub_10047B60C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  v7 = __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1, v7);
  sub_1004D2BE8(v9, &v20);
  v12 = v24;
  v11 = v25;
  v14 = v22;
  v13 = v23;
  *a3 = v20;
  *(a3 + 16) = v21;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000301AC(v14, v13);
  *(a3 + 24) = sub_10048313C;
  *(a3 + 32) = v15;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_1000301AC(v12, v11);
  *(a3 + 40) = sub_100483144;
  *(a3 + 48) = v16;
  result = [a2 isEditing];
  *(a3 + 18) = result ^ 1;
  return result;
}

void *sub_10047B7B8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_10000B0D8(result + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v5);

    v3 = v5[4];
    sub_10000C36C(v5, v5[3]);
    v4 = static TTRITipKitSignalContext.RemindersList.keyboardShortcut.getter();
    (*(*(v3 + 8) + 968))(v4);

    return sub_100004758(v5);
  }

  return result;
}

uint64_t sub_10047B86C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  sub_10000B0D8(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v7);

  v3 = v8;
  v4 = v9;
  sub_10000C36C(v7, v8);
  v5 = (*(*(v4 + 8) + 216))(v3);
  sub_100004758(v7);
  return v5;
}

uint64_t type metadata accessor for TTRIRemindersBoardMainViewController(uint64_t a1)
{
  result = qword_1007844E8;
  if (!qword_1007844E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10047BB8C(uint64_t a1)
{
  sub_10047BD00(319, &qword_1007844F8, &type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState);
  if (v1 <= 0x3F)
  {
    sub_10047BD00(319, &qword_100784500, &type metadata accessor for TTRRemindersListViewModel.ListInfo);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10047BD00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_10047BD54()
{
  v1 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_1007837A0, &qword_1006408A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_focusController);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_currentFocusedItem;
    swift_beginAccess();
    sub_10000794C(v8 + v9, v7, &qword_1007837A0, &qword_1006408A0);
    if ((*(v2 + 48))(v7, 1, v1) == 1)
    {
      sub_1000079B4(v7, &qword_1007837A0, &qword_1006408A0);
    }

    else
    {
      sub_10048927C(v7, v4, type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1004892E4(v4, type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem);
        sub_1004892E4(v7, type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem);
      }

      else
      {
        sub_100058000(&unk_1007845A0, &qword_10063F7B8);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID();
        (*(*(v10 - 8) + 8))(v4, v10);
        sub_1004892E4(v7, type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem);
        sub_1004891CC(&qword_100778ED0, type metadata accessor for TTRIBoardReminderCell, &unk_100638830);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10047BFF4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController);
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v3 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  if (*(v2 + v3))
  {
    return;
  }

  v4 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator;
  if (!*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator))
  {
    goto LABEL_11;
  }

  active = TTRICollectionViewDragAndDropActivityTracker.hasActiveDrag.getter();

  if (active)
  {
    return;
  }

  if (!*(v1 + v4))
  {
    goto LABEL_12;
  }

  v6 = TTRICollectionViewDragAndDropActivityTracker.hasActiveDrop.getter();

  if ((v6 & 1) == 0 && !*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController))
  {
    goto LABEL_13;
  }
}

void sub_10047C0F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController);
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v2 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    return;
  }

  v3 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator;
  if (!*(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator))
  {
    goto LABEL_9;
  }

  v4 = v0;

  active = TTRICollectionViewDragAndDropActivityTracker.hasActiveDrag.getter();

  if ((active & 1) == 0)
  {
    if (*(v4 + v3))
    {

      TTRICollectionViewDragAndDropActivityTracker.hasActiveDrop.getter();

      return;
    }

    goto LABEL_10;
  }
}

void sub_10047C1DC()
{
  v1 = v0;
  if (qword_100767330 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_1007843D0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIRemindersBoardMainViewController: perform initial reload", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability))
  {

    TTRRemindersBoardPresentationTreesManagementViewCapability.reload()();
  }

  else
  {
    __break(1u);
  }
}

void sub_10047C2EC(void *a1)
{
  v2 = v1;
  if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dummyContentScrollView;
    v6 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dummyContentScrollView];
    if (v6)
    {
      v7 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dummyContentScrollView];
    }

    else
    {
      v8 = [v2 view];
      if (!v8)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v9 = v8;
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = [objc_allocWithZone(UIScrollView) initWithFrame:{v11, v13, v15, v17}];
      [v18 setAutoresizingMask:16];
      [v18 setContentInsetAdjustmentBehavior:3];
      [v18 setHidden:1];

      v19 = [v2 view];
      if (!v19)
      {
LABEL_16:
        __break(1u);
        return;
      }

      v20 = v19;
      [v19 insertSubview:v18 atIndex:0];

      v21 = *&v2[v5];
      *&v2[v5] = v18;
      v7 = v18;

      v6 = 0;
    }

    v22 = v6;
    [a1 setContentScrollView:v7 forEdge:15];
    v23 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_deferredViewActionProvider;
    if (*&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_deferredViewActionProvider])
    {

      TTRDeferredViewActionProvider.trigger.getter();

      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = sub_100483380;
      *(v25 + 24) = v24;
      sub_100058000(&qword_100769510, &unk_10062DFC0);
      sub_10000E188(&unk_100784590, &qword_100769510, &unk_10062DFC0, &protocol conformance descriptor for AnyPublisher<A, B>);
      v26 = Publisher<>.sink(receiveValue:)();

      *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_scrollToTopCancellable] = v26;

      if (*&v2[v23])
      {

        TTRDeferredViewActionProvider.schedule()();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  v4 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView];

  [a1 setContentScrollView:v4 forEdge:15];
}

void sub_10047C60C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_scrollToTopCancellable) = 0;

    v3 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dummyContentScrollView];
    if (v3)
    {
      [v3 _scrollToTopIfPossible:0];
    }
  }
}

uint64_t sub_10047C690(uint64_t a1)
{
  v3 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v13, &qword_100772140, &qword_10062D9F0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1000079B4(v13, &qword_100772140, &qword_10062D9F0);
  }

  result = (*(v15 + 32))(v17, v13, v14);
  if (*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
  {

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    TTRRemindersBoardMainDiffableDataSource.columnID(containingItemID:)();
    v20 = v26;
    v19 = v27;
    if ((*(v26 + 48))(v5, 1, v27) == 1)
    {

      (*(v20 + 8))(v10, v19);
      sub_1000079B4(v5, &unk_10076BB50, &unk_10062DEA0);
    }

    else
    {
      v21 = v25;
      (*(v20 + 32))(v25, v5, v19);
      v22 = sub_100495F7C(v21);

      v23 = *(v20 + 8);
      v23(v21, v19);
      v23(v10, v19);
      if (v22)
      {
        [v22 frame];
        CGRectGetHeight(v28);

        return (*(v15 + 8))(v17, v14);
      }
    }

    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10047CA70(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource;
  v4 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!*(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  swift_beginAccess();
  v5 = v4;

  sub_100058000(&unk_10076BBD0, &qword_1006340A0);
  Set.removeAll(where:)();
  swift_endAccess();
  swift_beginAccess();
  Set.removeAll(where:)();
  swift_endAccess();

  sub_10000E188(&unk_100772700, &unk_10076BBD0, &qword_1006340A0, &protocol conformance descriptor for Set<A>);
  TTRRemindersBoardMainDiffableDataSource.items<A>(withIDs:)();

  if ((a1 & 1) == 0)
  {
    return;
  }

  v6 = *(v2 + v3);
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = v6;
  sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  sub_10000E188(&unk_100784560, &qword_10076E0B0, &unk_100631BD0, &protocol conformance descriptor for [A]);
  TTRRemindersBoardMainDiffableDataSource.sortByItemVisualLocation<A, B>(_:itemID:)();
}

void sub_10047CCB4(char a1, char a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView);
  if (v5)
  {
    v10 = v5;
    sub_1005036D0();
    sub_1005F55D8(a1 & 1, a2 & 1, a3, a4);

    if (*(v4 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableScrollViewInsets))
    {
      sub_10048332C();

      TTRObservableViewModel<A>.update(with:forcePublish:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_10047CDA0(uint64_t a1, void (*a2)(void, void, void, void, void))
{
  v34 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v12 = v9;
    v27 = v2;
    v28 = a2;
    v35 = _swiftEmptyArrayStorage;
    sub_1004A2324(0, v10, 0);
    v11 = v35;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v30 = *(v13 + 56);
    v31 = v14;
    v16 = (v13 - 8);
    v29 = v7 + 32;
    do
    {
      v17 = v32;
      v18 = v34;
      v19 = v13;
      v31(v32, v15, v34);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*v16)(v17, v18);
      v35 = v11;
      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        sub_1004A2324((v20 > 1), v21 + 1, 1);
        v11 = v35;
      }

      v11[2] = v21 + 1;
      (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v12, v33);
      v15 += v30;
      --v10;
      v13 = v19;
    }

    while (v10);
    v2 = v27;
    a2 = v28;
  }

  sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
  v35 = v11;
  v22 = type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();

  v23 = sub_100058000(&unk_1007821D0, &unk_100631C10);
  v24 = sub_10000E188(&unk_100784540, &unk_1007821D0, &unk_100631C10, &protocol conformance descriptor for [A]);
  a2(&v35, v23, v24, v22, &protocol witness table for TTRRemindersBoardCollapsedStatesPresenterCapability);

  return result;
}

__n128 sub_10047D0B4(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_initialFrameForLoadingView;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_10047D0E8()
{
  result = sub_1004793BC();
  if (result)
  {
    v1 = result;
    sub_1004891CC(&qword_100778ED0, type metadata accessor for TTRIBoardReminderCell, &unk_100638830);
    return v1;
  }

  return result;
}

uint64_t sub_10047D178(uint64_t a1)
{
  v3 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_listInfo;
  swift_beginAccess();
  sub_100019180(v5, v1 + v8, &unk_10078A380, &qword_10062DE60);
  swift_endAccess();
  sub_100476440();
  return sub_1000079B4(v5, &unk_10078A380, &qword_10062DE60);
}

void sub_10047D2D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController);
  if (v4)
  {
    v8 = v4;
    sub_10041A9B0(a1, a2, a3 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_10047D354(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView);
  if (v2)
  {
    v3 = v2;
    UIScrollView.bottomInsetRelativeToBounds(forAvoidingKeyboardWith:)();
  }

  else
  {
    __break(1u);
  }
}

double sub_10047D3B8()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_chromelessBarsController))
  {

    sub_10016931C();
  }

  return result;
}

BOOL sub_10047D410()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();
  v5 = dispatch thunk of TTRRemindersBoardItemCollapsedStates.isCollapsed(_:)();

  (*(v2 + 8))(v4, v1);
  return (v5 & 1) == 0;
}

double sub_10047D590()
{
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
  type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();

  dispatch thunk of TTRRemindersBoardItemCollapsedStates.collapsedStatesPersistence.setter();

  return result;
}

void sub_10047D828(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v94 = a3;
  v79 = type metadata accessor for TTRAdjustedIndexPath();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TTRUnadjustedIndexPath();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v11 - 8);
  v87 = &v72 - v12;
  v86 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v91 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_1007845C0, &qword_1006460F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v72 - v18;
  v20 = sub_100058000(&qword_10077CFF0, &qword_1006408C0);
  v95 = *(v20 - 8);
  v96 = v20;
  __chkstk_darwin(v20);
  v73 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v82 = &v72 - v23;
  v24 = type metadata accessor for IndexPath();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v75 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v74 = &v72 - v28;
  __chkstk_darwin(v29);
  v92 = &v72 - v30;
  v31 = type metadata accessor for TTRIRemindersBoardColumnReorderingContext.TargetIndexPathForMoveOfItemInput(0);
  v33 = __chkstk_darwin(v31);
  v34 = *(v5 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController);
  if (!v34)
  {
    __break(1u);
    return;
  }

  v85 = v16;
  v89 = v25;
  v90 = a4;
  v35 = *(v25 + 16);
  v36 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  v35(v36, a1, v24, v33);
  v37 = a2;
  (v35)(&v36[*(v31 + 20)], a2, v24);
  v38 = *(v31 + 24);
  v93 = v36;
  v97 = v35;
  (v35)(&v36[v38], v94, v24);
  v39 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  v88 = v39;
  v40 = *&v34[v39];
  if (!v40)
  {
    (*(v95 + 56))(v19, 1, 1, v96);
    goto LABEL_9;
  }

  v41 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_lastTargetIndexPathForMoveOfItem;
  swift_beginAccess();
  sub_10000794C(v40 + v41, v19, &unk_1007845C0, &qword_1006460F0);
  if ((*(v95 + 48))(v19, 1, v96) == 1)
  {
LABEL_9:
    v49 = v34;
    sub_1000079B4(v19, &unk_1007845C0, &qword_1006460F0);
    v45 = v37;
    goto LABEL_11;
  }

  v42 = v19;
  v43 = v82;
  sub_100016588(v42, v82, &qword_10077CFF0, &qword_1006408C0);
  v44 = v34;
  v45 = v37;
  if (static IndexPath.== infix(_:_:)() & 1) != 0 && (static IndexPath.== infix(_:_:)() & 1) != 0 && (static IndexPath.== infix(_:_:)())
  {
    v46 = v73;
    sub_100016588(v43, v73, &qword_10077CFF0, &qword_1006408C0);
    v47 = v89;
    v48 = v92;
    (*(v89 + 32))(v92, v46 + *(v96 + 48), v24);
    sub_1004892E4(v46, type metadata accessor for TTRIRemindersBoardColumnReorderingContext.TargetIndexPathForMoveOfItemInput);
    goto LABEL_19;
  }

  sub_1000079B4(v43, &qword_10077CFF0, &qword_1006408C0);
LABEL_11:
  Strong = swift_unknownObjectWeakLoadStrong();
  v47 = v89;
  v51 = v91;
  v48 = v92;
  v52 = v87;
  if (Strong)
  {
    v82 = v45;
    v53 = v83;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
    v54 = v86;
    if ((*(v51 + 48))(v52, 1, v86) != 1)
    {
      (*(v51 + 32))(v84, v52, v54);
      v55 = v74;
      v97(v74, v94, v24);
      v56 = v76;
      TTRAdjustedIndexPath.init(_:)();
      sub_100058000(&qword_1007845D0, &qword_10062EAB0);
      v57 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_10062D400;
      v97((v58 + v57), v53, v24);
      v59 = v77;
      TTRAdjustedIndexPath.unadjusted(forOriginalItemIndexPaths:)();

      (*(v78 + 8))(v56, v79);
      TTRUnadjustedIndexPath.indexPath.getter();
      v60 = IndexPath.item.getter();
      v61 = v55;
      v48 = v92;
      (*(v47 + 8))(v61, v24);
      v62 = v84;
      sub_100488874(v84, v60);
      LOBYTE(v60) = v63;
      swift_unknownObjectRelease();
      (*(v80 + 8))(v59, v81);
      (*(v91 + 8))(v62, v86);
      if (v60)
      {
        v64 = v94;
      }

      else
      {
        v64 = v82;
      }

      v65 = v75;
      v97(v75, v64, v24);
      (*(v47 + 32))(v48, v65, v24);
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
    sub_1000079B4(v52, &unk_10076BB50, &unk_10062DEA0);
    v45 = v82;
  }

  v97(v48, v45, v24);
LABEL_19:
  v66 = v88;
  swift_beginAccess();
  v67 = *&v34[v66];
  if (v67)
  {
    swift_endAccess();
    v68 = v96;
    v69 = *(v96 + 48);
    v70 = v85;
    sub_100489214(v93, v85, type metadata accessor for TTRIRemindersBoardColumnReorderingContext.TargetIndexPathForMoveOfItemInput);
    v97((v70 + v69), v48, v24);
    (*(v95 + 56))(v70, 0, 1, v68);
    v71 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_lastTargetIndexPathForMoveOfItem;
    swift_beginAccess();

    sub_10000D184(v70, v67 + v71, &unk_1007845C0, &qword_1006460F0);
    swift_endAccess();
  }

  else
  {
    sub_1004892E4(v93, type metadata accessor for TTRIRemindersBoardColumnReorderingContext.TargetIndexPathForMoveOfItemInput);
    swift_endAccess();
  }

  (*(v47 + 32))(v90, v48, v24);
}

void sub_10047E630(uint64_t a1)
{
  v81 = a1;
  v2 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v2 - 8);
  v60 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v73 = &v55 - v5;
  v74 = type metadata accessor for IndexPath();
  v80 = *(v74 - 8);
  __chkstk_darwin(v74);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v68 = &v55 - v9;
  v10 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v83 = type metadata accessor for TTRRemindersListViewModel.Item();
  v20 = *(v83 - 8);
  *&v21 = __chkstk_darwin(v83).n128_u64[0];
  v82 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1;
  v24 = [v1 viewIfLoaded];
  if (!v24)
  {
    return;
  }

  v25 = v24;
  v26 = UIView.firstResponderDescendant.getter();

  v57 = v26;
  if (!v26)
  {
    return;
  }

  v56 = v7;
  v27 = *(v81 + 16);
  if (!v27)
  {
LABEL_28:

    return;
  }

  v29 = *(v20 + 16);
  v28 = v20 + 16;
  v79 = v29;
  v30 = v81 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
  v31 = *(v28 + 56);
  v77 = (v14 + 48);
  v78 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController;
  v72 = (v80 + 48);
  v67 = (v80 + 32);
  v66 = (v80 + 8);
  v80 = v28;
  v81 = v14 + 8;
  v75 = v31;
  v76 = (v28 - 8);
  v69 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v70 = (v14 + 32);
  v58 = v23;
  v62 = v12;
  v61 = v13;
  v63 = v16;
  v71 = v19;
  v29(v82, v30, v83);
  while (1)
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    if (!*&v23[v78])
    {
      break;
    }

    TTRRemindersBoardMainDiffableDataSource.columnID(containingItemID:)();
    if ((*v77)(v12, 1, v13) == 1)
    {

      (*v81)(v19, v13);
      (*v76)(v82, v83);
      sub_1000079B4(v12, &unk_10076BB50, &unk_10062DEA0);
      goto LABEL_6;
    }

    (*v70)(v16, v12, v13);
    v32 = v73;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
    v33 = v32;
    v34 = *v72;
    v35 = v32;
    v36 = v74;
    if ((*v72)(v35, 1, v74) == 1)
    {

      v37 = *v81;
      (*v81)(v16, v13);
      sub_1000079B4(v33, &unk_100771B10, qword_10062E540);
      goto LABEL_20;
    }

    v38 = v68;
    v65 = *v67;
    v65(v68, v33, v36);
    v39 = UICollectionView.visibleCellForItem(at:)();
    v64 = *v66;
    v64(v38, v36);
    v37 = *v81;
    (*v81)(v16, v13);
    if (!v39)
    {

LABEL_19:
      v12 = v62;
      v13 = v61;
      v16 = v63;
LABEL_20:
      v19 = v71;
      v37(v71, v13);
LABEL_21:
      (*v76)(v82, v83);
      goto LABEL_6;
    }

    type metadata accessor for TTRIBoardColumnCollectionViewCell();
    v40 = swift_dynamicCastClass();
    if (!v40)
    {

      v23 = v58;
      goto LABEL_19;
    }

    v41 = v40;
    v59 = v39;
    v42 = *(v40 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
    if (!v42)
    {
      goto LABEL_31;
    }

    v43 = v42;
    v44 = v60;
    v45 = v71;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    v46 = v44;
    v47 = v44;
    v48 = v74;
    if (v34(v47, 1, v74) == 1)
    {

      v13 = v61;
      v37(v45, v61);
      sub_1000079B4(v46, &unk_100771B10, qword_10062E540);
      v23 = v58;
      v12 = v62;
      v19 = v45;
      v16 = v63;
      goto LABEL_21;
    }

    v49 = v56;
    v65(v56, v46, v48);
    v50 = *(v41 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
    v16 = v63;
    if (!v50)
    {
      goto LABEL_32;
    }

    v51 = v50;
    v52 = UICollectionView.visibleCellForItem(at:)();

    v64(v49, v48);
    v19 = v71;
    v13 = v61;
    v37(v71, v61);
    v23 = v58;
    v12 = v62;
    if (!v52)
    {
      goto LABEL_21;
    }

    type metadata accessor for TTRIBoardReminderCell(0);
    v53 = swift_dynamicCastClass();
    if (!v53)
    {

      goto LABEL_21;
    }

    v54 = [v57 isDescendantOfView:v53];

    (*v76)(v82, v83);
    if (v54)
    {
      [v57 resignFirstResponder];
      goto LABEL_28;
    }

LABEL_6:
    v30 += v75;
    if (!--v27)
    {
      goto LABEL_28;
    }

    v79(v82, v30, v83);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_10047EE54@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  if (*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
  {

    v8 = sub_100495DBC(v6);

    (*(v4 + 8))(v6, v3);
    if (!v8)
    {
      v12 = 1;
LABEL_9:
      v13 = type metadata accessor for TTRIPopoverAnchor();
      return (*(*(v13 - 8) + 56))(a1, v12, 1, v13);
    }

    v9 = [v8 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView(0);
    result = swift_dynamicCastClass();
    if (!result)
    {
      v12 = 1;
      goto LABEL_8;
    }

    if (*(result + qword_100786CF0))
    {
      v10 = v8;
      v14[15] = 4;
      __chkstk_darwin(result);
      *&v14[-16] = v11;

      v8 = TTRGridViewPredefinedContentPopulator.makeViewHiddenOnRemoval(for:createIfNeeded:)();

      static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
      v12 = 0;
      v9 = v10;
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10047F094(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListHighlightTarget();
  v32 = *(v6 - 1);
  __chkstk_darwin(v6);
  v33 = v7;
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v34 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = TTRRemindersListHighlightTarget.targetItems.getter();
  if (*(v15 + 16))
  {
    v30 = a2;
    v16 = *(v10 + 80);
    v28 = v3;
    v31 = sub_100058000(&unk_10078A2F0, &unk_100631BC0);
    v17 = type metadata accessor for TaskPriority();
    v18 = *(*(v17 - 8) + 56);
    v29 = v14;
    v18(v14, 1, 1, v17);
    (*(v10 + 16))(v34, v15 + ((v16 + 32) & ~v16), v9);
    v19 = v32;
    (*(v32 + 16))(v8, a1, v6);
    type metadata accessor for MainActor();
    v20 = v28;
    v21 = static MainActor.shared.getter();
    v27 = v8;
    v28 = v6;
    v22 = (v16 + 41) & ~v16;
    v23 = (v22 + v11 + *(v19 + 80)) & ~*(v19 + 80);
    v24 = (v33 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = &protocol witness table for MainActor;
    *(v25 + 32) = v20;
    *(v25 + 40) = v30 & 1;
    (*(v10 + 32))(v25 + v22, v34, v9);
    (*(v19 + 32))(v25 + v23, v27, v28);
    *(v25 + v24) = v15;
    sub_100084EC0(0, 0, v29, &unk_100640848, v25);
    return Promise.__allocating_init(task:)();
  }

  else
  {

    sub_100058000(&unk_10078A2F0, &unk_100631BC0);
    swift_allocObject();
    return Promise.init(value:)();
  }
}

uint64_t sub_10047F410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 376) = a5;
  *(v8 + 136) = a4;
  *(v8 + 144) = a6;
  v9 = sub_100058000(&unk_100772740, &unk_100634AD0);
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock();
  *(v8 + 264) = v12;
  *(v8 + 272) = *(v12 - 8);
  *(v8 + 280) = swift_task_alloc();
  v13 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  *(v8 + 288) = v13;
  *(v8 + 296) = *(v13 - 8);
  *(v8 + 304) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 312) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 320) = v15;
  *(v8 + 328) = v14;

  return _swift_task_switch(sub_10047F6AC, v15, v14);
}

uint64_t sub_10047F6AC()
{
  sub_100476EF8(0, *(v0 + 376));
  if (TTRRemindersListHighlightTarget.TargetItem.includesChildren.getter())
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *v2 = v0;
  v2[1] = sub_10047F770;
  v3 = *(v0 + 152);
  v4 = *(v0 + 376);

  return sub_10047A20C(v3, v1, v4);
}

uint64_t sub_10047F770()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_10048020C;
  }

  else
  {
    v5 = sub_10047F8AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_10047F8AC()
{
  v1 = v0[20];
  v2 = *(v1 + 16);
  v31 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController;
  v32 = v0[17];
  v0[44] = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController;
  v30 = v2;
  if (v2)
  {
    v3 = 0;
    v4 = v0[37];
    v5 = *(v4 + 16);
    v4 += 16;
    v29 = v5;
    v24 = v0[25];
    v25 = (v4 - 8);
    v26 = (v0[30] + 8);
    v28 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v27 = *(v4 + 56);
    while (1)
    {
      v29(v0[38], v28 + v3 * v27, v0[36]);
      v6 = *(v32 + v31);
      if (!v6)
      {
        break;
      }

      v7 = v0[31];

      TTRRemindersListHighlightTarget.TargetItem.item.getter();
      v8 = TTRRemindersListHighlightTarget.TargetItem.includesChildren.getter();
      v9 = sub_100503140(v7, v8 & 1);
      swift_beginAccess();
      sub_100058000(&unk_10076BBD0, &qword_1006340A0);
      Set.removeAll(where:)();
      swift_endAccess();
      swift_beginAccess();
      Set.removeAll(where:)();
      swift_endAccess();
      v10 = *(v6 + 56);
      v11 = *(v9 + 16);
      if (v11)
      {
        v33 = v6;
        v34 = v3;
        v12 = v9 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v13 = *(v24 + 72);
        v14 = *(v24 + 16);

        do
        {
          v16 = v0[26];
          v15 = v0[27];
          v17 = v0[24];
          v14(v15, v12, v17);
          sub_10058B6B8(v16, v15);
          (*(v24 + 8))(v16, v17);
          v12 += v13;
          --v11;
        }

        while (v11);

        v3 = v34;
        v6 = v33;
      }

      else
      {
      }

      *(v6 + 56) = v10;

      if (!*(v6 + 32))
      {
        goto LABEL_15;
      }

      ++v3;
      v18 = v0[38];
      v19 = v0[36];
      v20 = v0[31];
      v21 = v0[29];
      v22 = swift_task_alloc();
      *(v22 + 16) = v6;
      *(v22 + 24) = 7;

      TTRObservableViewModelCollection.updateAndPublishAll(using:)();

      (*v26)(v20, v21);
      (*v25)(v18, v19);
      if (v3 == v30)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_11:
    static Clock<>.continuous.getter();
    v23 = swift_task_alloc();
    v0[45] = v23;
    *v23 = v0;
    v23[1] = sub_10047FC90;

    sub_100482668(1000000000000000000, 0, 0, 0, 1);
  }
}

uint64_t sub_10047FC90()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  (*(v2[34] + 8))(v2[35], v2[33]);
  v3 = v2[41];
  v4 = v2[40];
  if (v0)
  {
    v5 = sub_10048013C;
  }

  else
  {
    v5 = sub_10047FE18;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_10047FE18(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[17];
  TTRRemindersListHighlightTarget.TargetItem.item.getter();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  (*(v4 + 8))(v2, v3);
  if (!*(v5 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v1[28];
  v7 = v1[24];
  v8 = v1[25];

  v9 = sub_100495DBC(v6);

  (*(v8 + 8))(v6, v7);
  if (v9)
  {
    v11 = v1[22];
    v10 = v1[23];
    v12 = v1[21];
    v13 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
    swift_beginAccess();
    (*(v11 + 16))(v10, &v9[v13], v12);
    LOBYTE(v13) = TTRLazilyLoadedViewModelState.isValid.getter();
    (*(v11 + 8))(v10, v12);
    if (v13)
    {
      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v9);
    }
  }

  v14 = *(v1[17] + v1[44]);
  if (!v14)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  sub_100058000(&unk_10076BBD0, &qword_1006340A0);
  Set.removeAll(where:)();
  swift_endAccess();
  swift_beginAccess();
  Set.removeAll(where:)();
  *(v14 + 56) = &_swiftEmptySetSingleton;
  swift_endAccess();

  if (!*(v14 + 32))
  {
LABEL_13:
    __break(1u);
    return;
  }

  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  *(v15 + 24) = 7;

  TTRObservableViewModelCollection.updateAndPublishAll(using:)();

  v16 = v1[1];

  v16();
}

uint64_t sub_10048013C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10048020C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004802DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 136) = a7;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a4;
  v8 = type metadata accessor for TTRRemindersListHighlightTarget();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 72) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 80) = v10;
  *(v7 + 88) = v9;

  return _swift_task_switch(sub_1004803D8, v10, v9);
}

uint64_t sub_1004803D8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(v0 + 96) = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  *(v0 + 104) = v7;
  *(v0 + 112) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for TTRRemindersListHighlightTarget.item(_:), v3);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_1004804FC;
  v9 = *(v0 + 64);
  v10 = *(v0 + 136);
  v11 = *(v0 + 40);

  return sub_10047A20C(v9, v11, v10);
}

uint64_t sub_1004804FC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_100480730;
  }

  else
  {
    v8 = sub_100480694;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100480694()
{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[4];
  v4 = v0[2];

  v1(v4, v3, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100480730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10048079C(uint64_t a1, UITableViewScrollPosition a2, int a3)
{
  v23 = a3;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = UICollectionViewScrollPosition.init(tableViewScrollPosition:)(a2);
  v22 = sub_100058000(&qword_1007845B0, &qword_10063D2C0);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  (*(v7 + 16))(v9, a1, v6);
  type metadata accessor for MainActor();
  v15 = v3;
  v16 = static MainActor.shared.getter();
  v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = v16;
  *(v19 + 3) = &protocol witness table for MainActor;
  *(v19 + 4) = v15;
  (*(v7 + 32))(&v19[v17], v9, v6);
  v20 = &v19[v18];
  *v20 = v13;
  v20[8] = v23;
  sub_10008516C(0, 0, v12, &unk_1006408B0, v19);
  return Promise.__allocating_init(task:)();
}

void sub_1004809F0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v66 = a1;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v62 - v16;
  __chkstk_darwin(v18);
  v20 = &v62 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.Item();
  v67 = *(v21 - 8);
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v25 = &v62 - v24;
  v26 = *(a2 + 16);
  if (v26 != 1)
  {
    if (v26)
    {
      return;
    }

    v65 = v4;
    v27 = *(v66 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
    if (v27)
    {
      v28 = v27;
      TTRBoardColumnDiffableDataSource.columnItem.getter();

      v29 = v67;
      v30 = v21;
      if ((*(v67 + 48))(v20, 1, v21) == 1)
      {
        v31 = v20;
LABEL_11:
        sub_1000079B4(v31, &qword_100772140, &qword_10062D9F0);
        return;
      }

      (*(v29 + 32))(v25, v20, v21);
      v42 = *(v65 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v43 = *(v65 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((v65 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v42);
      v44 = *(v29 + 16);
      v44(v17, v25, v30);
      (*(v29 + 56))(v17, 0, 1, v30);
      v45 = (*(*(v43 + 8) + 856))(v17, v42);
      sub_1000079B4(v17, &qword_100772140, &qword_10062D9F0);
      if (v45)
      {
        sub_100058000(&qword_100772150, &unk_100635D00);
        v46 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v47 = swift_allocObject();
        *(v47 + 1) = xmmword_10062D400;
        v44(&v47[v46], v25, v30);
        (*(v29 + 8))(v25, v30);
        goto LABEL_14;
      }

      (*(v29 + 8))(v25, v30);
      return;
    }

    __break(1u);
    goto LABEL_25;
  }

  v62 = v23;
  v63 = v11;
  v64 = v9;
  v65 = v4;
  v32 = *(v4 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController);
  if (!v32)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  swift_beginAccess();

  sub_100058000(&unk_10076BBD0, &qword_1006340A0);
  Set.removeAll(where:)();
  swift_endAccess();
  swift_beginAccess();
  Set.removeAll(where:)();
  swift_endAccess();
  v33 = *(v32 + 48);

  v34 = sub_1001CFC98(a2, v33)[2];

  if (v34)
  {
    return;
  }

  v35 = v21;
  v36 = v63;
  v37 = v64;
  v38 = v8;
  (*(v64 + 16))(v63, a2 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v8);
  v39 = *(v65 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v39)
  {
    goto LABEL_26;
  }

  v40 = v39;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  v41 = v67;
  if ((*(v67 + 48))(v14, 1, v21) == 1)
  {
    (*(v37 + 8))(v36, v8);
    v31 = v14;
    goto LABEL_11;
  }

  (*(v41 + 32))(v62, v14, v21);
  if (!*(v65 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
  {
    goto LABEL_27;
  }

  v48 = v36;
  v49 = sub_100495DBC(v36);

  if (v49)
  {
    [v49 convertPoint:v66 fromCoordinateSpace:{a3, a4}];
    v51 = v50;
    v53 = v52;
    v66 = v38;
    v54 = v37;
    v55 = *(v65 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v56 = *(v65 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C((v65 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v55);
    v57 = v62;
    v58 = (*(*(v56 + 8) + 840))(v62, v49, _swiftEmptyArrayStorage, 0, v55, v51, v53);
    v47 = v59;
    v61 = v60;

    (*(v41 + 8))(v57, v35);
    (*(v54 + 8))(v48, v66);
    if (v58)
    {
      if (v61)
      {
        sub_1003DE74C(v47, 1);
        *(v65 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_targetItemsForVisibleContextMenu) = _swiftEmptyArrayStorage;
        goto LABEL_15;
      }

LABEL_14:
      *(v65 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_targetItemsForVisibleContextMenu) = v47;
LABEL_15:
    }
  }

  else
  {
    (*(v41 + 8))(v62, v21);
    (*(v37 + 8))(v48, v38);
  }
}

uint64_t sub_10048112C(uint64_t a1, uint64_t a2)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v10);
  v4 = v11;
  v5 = v12;
  sub_10000C36C(v10, v11);
  v6 = [v2 parentViewController];
  if (!v6)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (!v7)
  {

    v6 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = *(v7 + 32);
LABEL_6:
  (*(*(v5 + 8) + 320))(a2, v6, v8, v2, v4);
  swift_unknownObjectRelease();
  return sub_100004758(v10);
}

uint64_t sub_100481230(uint64_t a1, uint64_t a2)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v10);
  v4 = v11;
  v5 = v12;
  sub_10000C36C(v10, v11);
  v6 = [v2 parentViewController];
  if (!v6)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (!v7)
  {

    v6 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = *(v7 + 24);
LABEL_6:
  (*(*(v5 + 8) + 328))(a2, v6, v8, v2, v4);
  swift_unknownObjectRelease();
  return sub_100004758(v10);
}

uint64_t sub_100481334(uint64_t a1, uint64_t a2)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v10);
  v4 = v11;
  v5 = v12;
  sub_10000C36C(v10, v11);
  v6 = [v2 parentViewController];
  if (!v6)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (!v7)
  {

    v6 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = *(v7 + 8);
LABEL_6:
  (*(*(v5 + 8) + 344))(a2, v6, v8, v2, v4);
  swift_unknownObjectRelease();
  return sub_100004758(v10);
}

void sub_100481438(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    sub_100058000(&unk_1007821D0, &unk_100631C10);
    sub_10000E188(&unk_100784540, &unk_1007821D0, &unk_100631C10, &protocol conformance descriptor for [A]);
    v6 = TTRRemindersBoardMainDiffableDataSource.items<A>(withIDs:)();

    v7 = (v4 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
    v8 = *(v4 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v9 = v7[4];
    sub_10000C36C(v7, v8);
    (*(*(v9 + 8) + 520))(v6, v8);
  }

  else
  {
    __break(1u);
  }
}

double sub_100481534(uint64_t a1, uint64_t a2)
{
  sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
  type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();

  TTRRemindersBoardItemCollapsedStates.toggleCollapsed(for:)();

  return result;
}

uint64_t sub_1004815B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_100481620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v30 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&unk_100784660, &unk_100644FA0);
  TTRNormalizedItemLocationForInsertAt.parentItemID.getter();
  v15 = *(v12 + 48);
  v16 = v15(v10, 1, v11);
  v29 = a1;
  if (v16 == 1)
  {
    TTRNormalizedItemLocationForInsertAt.sectionID.getter();
    result = v15(v10, 1, v11);
    if (result != 1)
    {
      result = sub_1000079B4(v10, &unk_10076BB50, &unk_10062DEA0);
    }
  }

  else
  {
    result = (*(v12 + 32))(v14, v10, v11);
  }

  v18 = *(v32 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (v18)
  {
    v19 = v18;
    TTRRemindersBoardMainDiffableDataSource.item(withID:)();

    v20 = v30;
    if ((*(v6 + 48))(v5, 1, v30) == 1)
    {
      (*(v12 + 8))(v14, v11);
      sub_1000079B4(v5, &qword_100772140, &qword_10062D9F0);
      v21 = sub_100058000(&qword_100784670, &unk_100644FB0);
      return (*(*(v21 - 8) + 56))(v31, 1, 1, v21);
    }

    else
    {
      v22 = v28;
      (*(v6 + 32))(v28, v5, v20);
      v23 = v20;
      v24 = sub_100058000(&qword_100784670, &unk_100644FB0);
      v32 = *(v24 + 48);
      v25 = v31;
      (*(v6 + 16))(v31, v22, v23);
      inserted = TTRNormalizedItemLocationForInsertAt.unadjustedChildIndex.getter();
      (*(v6 + 8))(v22, v23);
      (*(v12 + 8))(v14, v11);
      *(v25 + v32) = inserted;
      return (*(*(v24 - 8) + 56))(v25, 0, 1, v24);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100481A68()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v63 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v63 - 8);
  __chkstk_darwin(v63);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v53 = &v46 - v12;
  v13 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem(0);
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_100162DFC();
  if (!v18[2])
  {

    v41 = sub_10016283C();
    v42 = v41[2];
    if (v42)
    {
      v64 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v43 = v41 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v44 = *(v3 + 72);
      do
      {
        sub_10048927C(v43, v5, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
        v45 = *v5;
        sub_1004892E4(v5, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v43 += v44;
        --v42;
      }

      while (v42);
    }

LABEL_25:

    return;
  }

  v60 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource;
  v19 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (v19)
  {
    v64 = v18;
    v20 = v19;
    sub_100058000(&qword_100784678, &qword_100640978);
    sub_10000E188(&unk_100784680, &qword_100784678, &qword_100640978, &protocol conformance descriptor for [A]);
    v21 = TTRRemindersBoardMainDiffableDataSource.sortByItemVisualLocation<A, B>(_:itemID:)();

    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = 0;
      v59 = (v9 + 48);
      v50 = v9;
      v51 = (v9 + 32);
      v48 = (v9 + 8);
      v49 = (v9 + 16);
      v57 = _swiftEmptyArrayStorage;
      v58 = v22;
      v47 = v22 - 1;
      v56 = _swiftEmptyArrayStorage;
      do
      {
        v24 = v23;
        while (1)
        {
          if (v24 >= *(v21 + 16))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v25 = (*(v61 + 80) + 32) & ~*(v61 + 80);
          v26 = *(v61 + 72);
          sub_10048927C(v21 + v25 + v26 * v24, v17, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
          v27 = *(v1 + v60);
          if (!v27)
          {
            goto LABEL_29;
          }

          type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
          v28 = v27;
          TTRRemindersBoardMainDiffableDataSource.item(withID:)();

          if ((*v59)(v8, 1, v63) != 1)
          {
            break;
          }

          ++v24;
          sub_1004892E4(v17, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
          sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
          if (v58 == v24)
          {
            goto LABEL_25;
          }
        }

        v29 = v53;
        v30 = v63;
        v46 = *v51;
        v46(v53, v8, v63);
        (*v49)(v54, v29, v30);
        v31 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100547094(0, v31[2] + 1, 1, v31);
        }

        v32 = v31;
        v33 = v31[2];
        v57 = v32;
        v34 = v32[3];
        if (v33 >= v34 >> 1)
        {
          v57 = sub_100547094((v34 > 1), v33 + 1, 1, v57);
        }

        v35 = v46;
        v36 = v57;
        v57[2] = v33 + 1;
        v35(&v36[((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v33], v54, v63);
        sub_10048927C(v17, v52, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
        v37 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_100547400(0, v37[2] + 1, 1, v37);
        }

        v39 = v37[2];
        v38 = v37[3];
        v46 = (v39 + 1);
        if (v39 >= v38 >> 1)
        {
          v56 = sub_100547400((v38 > 1), v39 + 1, 1, v37);
        }

        else
        {
          v56 = v37;
        }

        v23 = v24 + 1;
        (*v48)(v53, v63);
        sub_1004892E4(v17, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
        v40 = v56;
        v56[2] = v46;
        sub_100489214(v52, v40 + v25 + v39 * v26, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
      }

      while (v47 != v24);
    }

    else
    {
      v56 = _swiftEmptyArrayStorage;
      v57 = _swiftEmptyArrayStorage;
    }

    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1004821C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem(0) + 20);
  v4 = *(type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0) + 28);
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

void sub_100482250(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView;
  v4 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView);
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v4 convertPoint:a1 fromCoordinateSpace:?];
  v6 = *(v1 + v3);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v5;
  [v6 contentSize];
  v16.size.width = v8;
  v16.size.height = v9;
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  if (CGRectGetMaxX(v16) <= v7)
  {
    v10 = sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
    v11 = *(*v10 + 72);
    v12 = *(*v10 + 88);
    v13 = sub_10000C36C((*v10 + 48), v11);
    v15[3] = v11;
    v15[4] = v12;
    v14 = sub_1000317B8(v15);
    (*(*(v11 - 8) + 16))(v14, v13, v11);
    (*(v12 + 384))(1, 0, 0, v11, v12);
    sub_100004758(v15);
  }
}

double destroy for TTRIRemindersBoardMainViewController.CompletedHeaderViewState(id *a1)
{

  return result;
}

uint64_t assignWithCopy for TTRIRemindersBoardMainViewController.CompletedHeaderViewState(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

id *assignWithTake for TTRIRemindersBoardMainViewController.CompletedHeaderViewState(id *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1004824A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRRemindersListHighlightTarget.TargetItem() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRRemindersListHighlightTarget() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10001AA3C;

  return sub_10047F410(a1, v10, v11, v12, v13, v1 + v6, v1 + v9, v14);
}

uint64_t sub_100482668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100482768, 0, 0);
}

uint64_t sub_100482768()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1004891CC(&qword_100784530, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1004891CC(&qword_100784538, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1004828F8;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1004828F8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100482AB4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100482AB4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100482B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v15 = &v52 - v13;
  v16 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dragAndDropController;
  v17 = *(a4 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dragAndDropController);
  v56 = v11;
  v58 = a1;
  if (v17)
  {
    v18 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
    swift_beginAccess();
    v19 = *(v9 + 24);
    v20 = v17;
    v19(&v17[v18], a1, v8);
    swift_endAccess();
LABEL_8:

    v31 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_chromelessBarsStateContributor;
    v32 = *(a4 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_chromelessBarsStateContributor);
    if (v32)
    {
      v33 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_columnID;
      swift_beginAccess();
      v34 = *(v9 + 24);

      v34(v32 + v33, v58, v8);
      swift_endAccess();

      return swift_unknownObjectWeakAssign();
    }

    v57 = a3;
    v35 = v56;
    result = (*(v9 + 16))(v56, v58, v8);
    v36 = *(a4 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
    if (v36)
    {
      type metadata accessor for TTRIBoardColumnChromelessBarsStateContributor(0);
      v37 = swift_allocObject();
      v38 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_stateChangeSubject;
      sub_100058000(&qword_10078C680, qword_100640928);
      swift_allocObject();
      v39 = v36;
      *(v37 + v38) = PassthroughSubject.init()();
      v40 = (v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_contentSizeObservation);
      *v40 = 0u;
      v40[1] = 0u;
      *(v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_scrollOffsetObserver) = 0;
      (*(v9 + 32))(v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_columnID, v35, v8);
      v41 = (v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_chromelessBarsContributorConfiguration);
      *v41 = v39;
      v41[1] = 0x3FF0000000000000;
      v41[3] = 0;
      v41[4] = 0;
      v41[2] = 0;
      *(v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_isActive) = 1;
      *(a4 + v31) = v37;

      v60[0] = *(v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_chromelessBarsContributorConfiguration);
      v42 = v60[0];
      swift_getKeyPath();
      swift_allocObject();
      swift_weakInit();
      v43 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      v60[3] = type metadata accessor for NSKeyValueObservation();
      v60[0] = v43;
      v44 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_contentSizeObservation;
      swift_beginAccess();
      sub_10000D184(v60, v37 + v44, &qword_10076AE40, &qword_10062EE50);
      swift_endAccess();
      v45 = swift_allocObject();
      swift_weakInit();
      v46 = type metadata accessor for ScrollOffsetObserver();
      v47 = objc_allocWithZone(v46);
      v48 = &v47[OBJC_IVAR____TtC9RemindersP33_F0C3DF1C7E2DDC19EDE9BABCDF547B2B20ScrollOffsetObserver_scrollViewDidScroll];
      *v48 = sub_100489138;
      v48[1] = v45;
      v59.receiver = v47;
      v59.super_class = v46;
      v49 = objc_msgSendSuper2(&v59, "init");
      v50 = *(v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_scrollOffsetObserver);
      *(v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_scrollOffsetObserver) = v49;
      v51 = v49;

      [v42 _addScrollViewScrollObserver:v51];

      return swift_unknownObjectWeakAssign();
    }

    goto LABEL_15;
  }

  v55 = a2;
  v53 = *(v9 + 16);
  result = v53(&v52 - v13, a1, v8, v14);
  v54 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView;
  v22 = *(a4 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
  if (!v22)
  {
    __break(1u);
    goto LABEL_14;
  }

  v57 = a3;
  v23 = *(a4 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
  if (!v23)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = type metadata accessor for TTRIBoardColumnDragAndDropController(0);
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_coordinator + 8] = 0;
  swift_unknownObjectWeakInit();
  (v53)(&v25[OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID], v15, v8);
  *&v25[OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView] = v22;
  *&v25[OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_dataSource] = v23;
  v61.receiver = v25;
  v61.super_class = v24;
  v26 = v22;
  v27 = v23;
  v28 = objc_msgSendSuper2(&v61, "init");
  (*(v9 + 8))(v15, v8);
  v29 = *(a4 + v16);
  *(a4 + v16) = v28;
  v20 = v28;

  *&v20[OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_coordinator + 8] = &off_100713A70;
  swift_unknownObjectWeakAssign();
  v30 = v54;
  result = *(a4 + v54);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [result setDragDelegate:v20];
  result = *(a4 + v30);
  a3 = v57;
  if (result)
  {
    [result setDropDelegate:v20];
    goto LABEL_8;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10048314C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTREditingStateOption.InputType() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10001AA3C;

  return sub_100479B50(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1004832AC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TTREditingStateOption.InputType() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10047A104(a1, a2, v6);
}

unint64_t sub_10048332C()
{
  result = qword_100784558;
  if (!qword_100784558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784558);
  }

  return result;
}

uint64_t sub_100483388(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
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
  v13[1] = sub_10001AA38;

  return sub_1004802DC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1004834C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t))
{
  v170 = a5;
  v154 = a4;
  v166 = a2;
  v167 = a3;
  v152 = a1;
  v160 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_100058000(&unk_100784640, &unk_100644F70);
  v168 = *(v165 - 8);
  __chkstk_darwin(v165);
  v164 = &v149 - v6;
  v7 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v157 = &v149 - v11;
  __chkstk_darwin(v12);
  v155 = &v149 - v13;
  __chkstk_darwin(v14);
  v16 = &v149 - v15;
  v17 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
  v18 = *(v17 - 8);
  v175 = v17;
  v176 = v18;
  __chkstk_darwin(v17);
  v20 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v149 - v22;
  v24 = sub_100058000(&unk_100784650, &unk_100644F90);
  __chkstk_darwin(v24 - 8);
  v153 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v169 = &v149 - v27;
  v162 = sub_100058000(&unk_100781910, &unk_1006305A0);
  __chkstk_darwin(v162);
  v150 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v161 = &v149 - v30;
  v178 = type metadata accessor for TTRRemindersListViewModel.Item();
  v172 = *(v178 - 8);
  __chkstk_darwin(v178);
  v151 = &v149 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v171 = &v149 - v33;
  __chkstk_darwin(v34);
  v163 = &v149 - v35;
  __chkstk_darwin(v36);
  v173 = &v149 - v37;
  __chkstk_darwin(v38);
  v174 = &v149 - v39;
  v40 = sub_100058000(&unk_100784660, &unk_100644FA0);
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v156 = &v149 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v149 - v44;
  v46 = sub_100058000(&qword_100769548, &qword_100640970);
  v47 = *(v46 - 8);
  v48 = __chkstk_darwin(v46);
  v50 = &v149 - v49;
  (*(v47 + 16))(&v149 - v49, v170, v46, v48);
  v51 = (*(v47 + 88))(v50, v46);
  if (v51 == enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    (*(v47 + 96))(v50, v46);
    (*(v41 + 32))(v45, v50, v40);
    v52 = v169;
    v53 = v177;
    sub_100481620(v45, v169);
    v54 = sub_100058000(&qword_100784670, &unk_100644FB0);
    if ((*(*(v54 - 8) + 48))(v52, 1, v54) == 1)
    {
      (*(v41 + 8))(v45, v40);
      sub_1000079B4(v52, &unk_100784650, &unk_100644F90);
      return 0;
    }

    v164 = v45;
    v165 = v41;
    v168 = v40;
    v69 = *(v52 + *(v54 + 48));
    v70 = v162;
    v71 = *(v162 + 48);
    v72 = (v172 + 32);
    v73 = *(v172 + 32);
    v74 = v161;
    v75 = v52;
    v76 = v178;
    v73(v161, v75, v178);
    *&v74[v71] = v69;
    v169 = *&v74[*(v70 + 48)];
    v170 = v73;
    v77 = v174;
    v78 = v74;
    v79 = v76;
    v171 = v72;
    v73(v174, v78, v76);
    v179[0] = v166;

    sub_1000815A4(v80);
    v81 = v179[0];
    v82 = *(v179[0] + 16);
    if (v82)
    {
      v83 = 0;
      v84 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource;
      v85 = (v172 + 48);
      v86 = _swiftEmptyArrayStorage;
      while (v83 < *(v81 + 16))
      {
        sub_10048927C(v81 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v83, v23, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
        v88 = *(v177 + v84);
        if (!v88)
        {
          goto LABEL_54;
        }

        v89 = v88;
        TTRRemindersBoardMainDiffableDataSource.item(withID:)();

        sub_1004892E4(v23, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
        v90 = v178;
        if ((*v85)(v16, 1, v178) == 1)
        {
          sub_1000079B4(v16, &qword_100772140, &qword_10062D9F0);
        }

        else
        {
          v170(v173, v16, v90);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v86 = sub_100547094(0, *(v86 + 2) + 1, 1, v86);
          }

          v92 = *(v86 + 2);
          v91 = *(v86 + 3);
          if (v92 >= v91 >> 1)
          {
            v86 = sub_100547094((v91 > 1), v92 + 1, 1, v86);
          }

          *(v86 + 2) = v92 + 1;
          v90 = v178;
          v170(&v86[((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v92], v173, v178);
        }

        v87 = v174;
        if (v82 == ++v83)
        {

          v99 = *(v177 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
          v98 = *(v177 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
          sub_10000C36C((v177 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v99);
          v100 = v90;
          v101 = v172;
          v102 = v155;
          (*(v172 + 16))(v155, v87, v90);
          (*(v101 + 56))(v102, 0, 1, v90);
          v103 = (*(*(v98 + 8) + 576))(v86, v102, v169, v99);

          sub_1000079B4(v102, &qword_100772140, &qword_10062D9F0);
          (*(v101 + 8))(v87, v100);
          (*(v165 + 8))(v164, v168);
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v117 = v77;
    v119 = *(v53 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v118 = *(v53 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C((v53 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v119);
    (*(*(v118 + 8) + 616))(v179, v154, v119);
    v120 = v180;
    v121 = v181;
    v122 = v172;
    sub_10000C36C(v179, v180);
    v123 = (*(v121 + 8))(v117, v169, v120, v121);
    (*(v122 + 8))(v117, v79);
    (*(v165 + 8))(v164, v168);
  }

  else
  {
    v55 = v177;
    if (v51 == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
    {
      (*(v47 + 96))(v50, v46);
      v57 = v164;
      v56 = v165;
      (*(v168 + 32))(v164, v50, v165);
      v174 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource;
      v58 = *(v55 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
      if (!v58)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v59 = v58;
      v60 = v158;
      TTRNormalizedItemLocation.itemID.getter();
      v61 = v157;
      TTRRemindersBoardMainDiffableDataSource.item(withID:)();

      v62 = v60;
      v63 = v61;
      (*(v159 + 8))(v62, v160);
      v64 = v172;
      v65 = v61;
      v66 = v178;
      v173 = *(v172 + 48);
      v67 = (v173)(v65, 1, v178);
      v68 = v163;
      if (v67 == 1)
      {
        (*(v168 + 8))(v57, v56);
        sub_1000079B4(v63, &qword_100772140, &qword_10062D9F0);
        return 0;
      }

      v105 = v64;
      v170 = *(v64 + 32);
      v170(v163, v63, v66);
      v179[0] = v166;

      sub_1000815A4(v106);
      v107 = v179[0];
      v108 = *(v179[0] + 16);
      if (v108)
      {
        v109 = 0;
        v110 = _swiftEmptyArrayStorage;
        while (v109 < *(v107 + 16))
        {
          sub_10048927C(v107 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v109, v20, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
          v111 = *&v174[v177];
          if (!v111)
          {
            goto LABEL_55;
          }

          v112 = v111;
          TTRRemindersBoardMainDiffableDataSource.item(withID:)();

          sub_1004892E4(v20, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
          v113 = v178;
          if ((v173)(v9, 1, v178) == 1)
          {
            sub_1000079B4(v9, &qword_100772140, &qword_10062D9F0);
          }

          else
          {
            v170(v171, v9, v113);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v110 = sub_100547094(0, v110[2] + 1, 1, v110);
            }

            v115 = v110[2];
            v114 = v110[3];
            if (v115 >= v114 >> 1)
            {
              v110 = sub_100547094((v114 > 1), v115 + 1, 1, v110);
            }

            v110[2] = v115 + 1;
            v116 = v110 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v115;
            v113 = v178;
            v170(v116, v171, v178);
          }

          if (v108 == ++v109)
          {

            v125 = *(v177 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
            v124 = *(v177 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
            sub_10000C36C((v177 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v125);
            v126 = *(*(v124 + 8) + 592);
            v127 = v163;
            v103 = v126(v110, v163, v125);

            (*(v172 + 8))(v127, v113);
            (*(v168 + 8))(v164, v165);
LABEL_40:
            if (v103)
            {
              return 3;
            }

            else
            {
              return 0;
            }
          }
        }

        goto LABEL_53;
      }

      v139 = v68;

      v141 = *(v177 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v140 = *(v177 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((v177 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v141);
      (*(*(v140 + 8) + 616))(v179, v154, v141);
      v142 = v180;
      v143 = v181;
      sub_10000C36C(v179, v180);
      v123 = (*(v143 + 16))(v139, v142, v143);
      (*(v105 + 8))(v139, v178);
      (*(v168 + 8))(v164, v165);
    }

    else
    {
      if (v51 != enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
      {
        if (v51 == enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
        {
          return 0;
        }

        goto LABEL_57;
      }

      (*(v47 + 96))(v50, v46);
      v93 = v41;
      v94 = v156;
      (*(v41 + 32))(v156, v50, v40);
      v95 = v153;
      v96 = v55;
      sub_100481620(v94, v153);
      v97 = sub_100058000(&qword_100784670, &unk_100644FB0);
      if ((*(*(v97 - 8) + 48))(v95, 1, v97) == 1)
      {
        (*(v41 + 8))(v94, v40);
        sub_1000079B4(v95, &unk_100784650, &unk_100644F90);
        return 0;
      }

      v168 = v40;
      v128 = *(v95 + *(v97 + 48));
      v129 = v162;
      v130 = *(v162 + 48);
      v131 = *(v172 + 32);
      v132 = v150;
      v133 = v95;
      v134 = v178;
      v131(v150, v133, v178);
      *&v132[v130] = v128;
      v135 = *&v132[*(v129 + 48)];
      v136 = v151;
      v131(v151, v132, v134);
      if (v152)
      {
        v137 = [v152 items];
        sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
        v138 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v138 = _swiftEmptyArrayStorage;
      }

      v145 = *(v96 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v144 = *(v96 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((v96 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v145);
      (*(*(v144 + 8) + 616))(v179, v138, v145);

      v146 = v180;
      v147 = v181;
      sub_10000C36C(v179, v180);
      v123 = (*(v147 + 32))(v136, v135, v146, v147);
      (*(v172 + 8))(v136, v178);
      (*(v93 + 8))(v156, v168);
    }
  }

  if (v123)
  {
    v148 = 2;
  }

  else
  {
    v148 = 0;
  }

  sub_100004758(v179);
  return v148;
}

void sub_100484754()
{
  v1 = v0;
  v2 = sub_100058000(&qword_1007845B8, &qword_1006408B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v32 = type metadata accessor for TTRIRemindersBoardDragItemInfo(0);
  v26 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v34 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController);
  if (!v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();

  sub_100058000(&unk_10076BBD0, &qword_1006340A0);
  Set.removeAll(where:)();
  swift_endAccess();
  swift_beginAccess();
  Set.removeAll(where:)();
  swift_endAccess();
  v9 = *(v8 + 48);

  v33 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource;
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (v10)
  {
    v35 = v9;
    sub_10000E188(&unk_100772700, &unk_10076BBD0, &qword_1006340A0, &protocol conformance descriptor for Set<A>);
    v11 = v10;
    v12 = TTRRemindersBoardMainDiffableDataSource.sortByItemVisualLocation<A, B>(_:itemID:)();

    v30 = *(v12 + 16);
    if (!v30)
    {
LABEL_15:

      return;
    }

    v13 = 0;
    v28 = v4;
    v29 = v34 + 16;
    v14 = (v34 + 8);
    v15 = v27;
    v16 = (v26 + 48);
    v17 = _swiftEmptyArrayStorage;
    v25 = v1;
    v18 = v4;
    while (v13 < *(v12 + 16))
    {
      (*(v34 + 16))(v7, v12 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v13, v15);
      v19 = *(v1 + v33);
      if (!v19)
      {
        goto LABEL_17;
      }

      v20 = v1;
      v21 = v15;
      v22 = v19;
      sub_100550EB8(v7, v18);

      (*v14)(v7, v21);
      if ((*v16)(v18, 1, v32) == 1)
      {
        v15 = v21;
        sub_1000079B4(v18, &qword_1007845B8, &qword_1006408B8);
        v1 = v20;
      }

      else
      {
        sub_100489214(v18, v31, type metadata accessor for TTRIRemindersBoardDragItemInfo);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1005472FC(0, v17[2] + 1, 1, v17);
        }

        v24 = v17[2];
        v23 = v17[3];
        if (v24 >= v23 >> 1)
        {
          v17 = sub_1005472FC((v23 > 1), v24 + 1, 1, v17);
        }

        v17[2] = v24 + 1;
        sub_100489214(v31, v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, type metadata accessor for TTRIRemindersBoardDragItemInfo);
        v1 = v25;
        v15 = v27;
      }

      if (v30 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

void sub_100484C34(uint64_t a1)
{
  v2 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v9)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &unk_100771B10, qword_10062E540);
    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [v12 cellForItemAtIndexPath:isa];

  (*(v6 + 8))(v8, v5);
  if (v14)
  {
    type metadata accessor for TTRIBoardColumnCollectionViewCell();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dragAndDropController);
    }

    else
    {
    }
  }
}

void sub_100484E8C(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v27 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  __chkstk_darwin(v27);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v16 = *(v15 - 8);
  *&v17 = __chkstk_darwin(v15).n128_u64[0];
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v2 isEditing])
  {
    return;
  }

  v28 = v16;
  v20 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource];
  if (!v20)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  v22 = v28;
  if ((*(v28 + 48))(v14, 1, v15) == 1)
  {
    sub_1000079B4(v14, &qword_100772140, &qword_10062D9F0);
    return;
  }

  (*(v22 + 32))(v19, v14, v15);
  v23 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController];
  if (!v23)
  {
    goto LABEL_15;
  }

  (*(v6 + 16))(v8, v29, v5);
  swift_beginAccess();

  sub_10058B6B8(v11, v8);
  swift_endAccess();
  v24 = (*(v6 + 8))(v11, v5);
  if (!*(v23 + 32))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __chkstk_darwin(v24);
  *(&v27 - 2) = v23;
  *(&v27 - 1) = 0;

  TTRObservableViewModelCollection.updateAndPublishAll(using:)();

  if (!*&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_automaticSubtaskSelectionController])
  {
LABEL_17:
    __break(1u);
    return;
  }

  (*(v28 + 16))(v4, v19, v15);
  swift_storeEnumTagMultiPayload();

  sub_100069304(v4);

  sub_1004892E4(v4, type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState);
  v25 = [v2 parentViewController];
  if (v25)
  {
    v26 = v25;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10037DD70(1, 0);
      sub_10037FFC0();
    }
  }

  (*(v28 + 8))(v19, v15);
}

void sub_100485300(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 isEditing])
  {
    return;
  }

  v18 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource];
  if (!v18)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000079B4(v12, &qword_100772140, &qword_10062D9F0);
    return;
  }

  (*(v14 + 32))(v17, v12, v13);
  v20 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController];
  if (!v20)
  {
    goto LABEL_15;
  }

  swift_beginAccess();

  sub_1000E992C(a1, v9);
  swift_endAccess();
  v21 = sub_1000079B4(v9, &unk_10076BB50, &unk_10062DEA0);
  if (!*(v20 + 32))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __chkstk_darwin(v21);
  *(&v24 - 2) = v20;
  *(&v24 - 1) = 0;

  TTRObservableViewModelCollection.updateAndPublishAll(using:)();

  if (!*&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_automaticSubtaskSelectionController])
  {
LABEL_17:
    __break(1u);
    return;
  }

  (*(v14 + 16))(v6, v17, v13);
  swift_storeEnumTagMultiPayload();

  sub_100069304(v6);

  sub_1004892E4(v6, type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState);
  v22 = [v2 parentViewController];
  if (v22)
  {
    v23 = v22;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10037DD70(1, 0);
      sub_10037FFC0();
    }
  }

  (*(v14 + 8))(v17, v13);
}

void sub_1004856FC()
{
  v1 = sub_100058000(qword_100784690, &unk_10062DDD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  UIViewController.endFirstResponderEditing()();
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_automaticSubtaskSelectionController);
  if (v4)
  {
    type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
    swift_storeEnumTagMultiPayload();
    v5 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession;
    swift_beginAccess();

    sub_10000D184(v3, v4 + v6, qword_100784690, &unk_10062DDD0);
    swift_endAccess();

    v7 = (v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v9 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C(v7, v8);
    (*(*(v9 + 8) + 352))(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10048586C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.BoardViewCasesInItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v15)
  {
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    TTRRemindersListViewModel.Item.boardViewCasesOnly.getter();
    v17 = (*(v5 + 88))(v7, v4);
    if (v17 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.section(_:))
    {
      (*(v12 + 8))(v14, v11);
      (*(v5 + 8))(v7, v4);
      return 0;
    }

    if (v17 != enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.reminder(_:) && v17 != enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.uncommittedReminder(_:) && v17 != enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.placeholderReminder(_:))
    {
      if (v17 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.unknown(_:))
      {
        (*(v12 + 8))(v14, v11);
        return 0;
      }

LABEL_26:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v5 + 8))(v7, v4);
    if (*(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
    {

      v20 = sub_100495DBC(a1);

      if (v20)
      {
        v21 = v20;
        v22 = UIView.firstResponderDescendant.getter();

        (*(v12 + 8))(v14, v11);
        if (v22)
        {

          return 0;
        }
      }

      else
      {
        (*(v12 + 8))(v14, v11);
      }

      return 1;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1000079B4(v10, &qword_100772140, &qword_10062D9F0);
  return 0;
}

void sub_100485C10(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-v5];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v11)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
    return;
  }

  (*(v8 + 32))(v10, v6, v7);
  if (!*(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
  {
    goto LABEL_13;
  }

  v13 = sub_100495DBC(a1);

  if (v13)
  {
    v14 = [v13 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView(0);
    v15 = swift_dynamicCastClass();
    if (!v15)
    {

      goto LABEL_10;
    }

    if (*(v15 + qword_100786CF0))
    {
      v21[15] = 4;
      __chkstk_darwin(v15);
      *&v21[-16] = v16;

      v17 = TTRGridViewPredefinedContentPopulator.makeViewHiddenOnRemoval(for:createIfNeeded:)();

      v18 = (v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
      v19 = *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v20 = v18[4];
      sub_10000C36C(v18, v19);
      (*(*(v20 + 8) + 120))(v10, v17, v19);

      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_10:
  (*(v8 + 8))(v10, v7);
}

void sub_100485F04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v13)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  if (!*(v3 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
  {
    goto LABEL_19;
  }

  v15 = sub_100495DBC(a1);

  if (!v15)
  {
    (*(v10 + 8))(v12, v9);
    return;
  }

  sub_10000B0D8(v3 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v30);
  v16 = v31;
  v17 = v32;
  sub_10000C36C(v30, v31);
  v18 = [v15 contentView];
  type metadata accessor for TTRIBoardReminderCellContentView(0);
  v19 = swift_dynamicCastClass();
  if (!v19)
  {

    v23 = 0;
    v24 = 0;
LABEL_17:
    (*(*(v17 + 8) + 152))(v12, v23, v24, a2, v16);

    (*(v10 + 8))(v12, v9);
    sub_100004758(v30);
    return;
  }

  v28 = v17;
  if (*(v19 + qword_100786CF0))
  {
    v27 = a2;
    v29 = 2;

    v20 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

    if (v20)
    {
      type metadata accessor for TTRIReminderTitleTextView();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22 = [v21 attributedText];

        if (v22)
        {
LABEL_16:

          v25 = [v22 string];
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v26;

          a2 = v27;
          v17 = v28;
          goto LABEL_17;
        }
      }

      else
      {
      }
    }

    v22 = [objc_allocWithZone(NSAttributedString) init];
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

void sub_1004862A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24];
  v7 = *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32];
  sub_10000C36C(&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter], v6);
  (*(*(v7 + 8) + 48))(a2, a1, v6);
  v8 = [v3 parentViewController];
  if (v8)
  {
    v9 = v8;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v10 = *&v9[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  [v10 impactOccurred];

  v11 = [v3 parentViewController];
  if (v11)
  {
    v14 = v11;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v12 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator];

      [v12 prepare];
      v13 = v12;
    }

    else
    {
      v13 = v14;
    }
  }
}

uint64_t sub_100486448(uint64_t a1)
{
  v2 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem(0);
  v242 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v243 = (&v241 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v257 = sub_100058000(&unk_100784640, &unk_100644F70);
  v260 = *(v257 - 8);
  __chkstk_darwin(v257);
  v256 = &v241 - v4;
  v5 = sub_100058000(&qword_1007818D8, &qword_10063D340);
  __chkstk_darwin(v5 - 8);
  *&v266 = &v241 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v273 = (&v241 - v8);
  v283 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  *&v259 = *(v283 - 8);
  __chkstk_darwin(v283);
  v270 = &v241 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v275 = &v241 - v11;
  __chkstk_darwin(v12);
  v253 = &v241 - v13;
  __chkstk_darwin(v14);
  *&v265 = &v241 - v15;
  __chkstk_darwin(v16);
  v278 = &v241 - v17;
  __chkstk_darwin(v18);
  v272 = &v241 - v19;
  v20 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v20 - 8);
  v269 = (&v241 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v277 = &v241 - v23;
  __chkstk_darwin(v24);
  v274 = (&v241 - v25);
  v281 = type metadata accessor for IndexPath();
  v251 = *(v281 - 8);
  __chkstk_darwin(v281);
  v261 = &v241 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v264 = &v241 - v28;
  __chkstk_darwin(v29);
  v271 = &v241 - v30;
  v280 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem(0);
  v245 = *(v280 - 8);
  __chkstk_darwin(v280);
  v262 = (&v241 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v34 = (&v241 - v33);
  v35 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v35 - 8);
  v252 = &v241 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v247 = &v241 - v38;
  v39 = sub_100058000(&unk_100784650, &unk_100644F90);
  __chkstk_darwin(v39 - 8);
  v246 = &v241 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v241 - v42;
  v255 = sub_100058000(&unk_100781910, &unk_1006305A0);
  __chkstk_darwin(v255);
  v244 = &v241 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v254 = &v241 - v46;
  v47 = type metadata accessor for TTRRemindersListViewModel.Item();
  v263 = *(v47 - 8);
  __chkstk_darwin(v47);
  v248 = &v241 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v276 = &v241 - v50;
  __chkstk_darwin(v51);
  v282 = &v241 - v52;
  __chkstk_darwin(v53);
  v258 = &v241 - v54;
  v55 = sub_100058000(&unk_100784660, &unk_100644FA0);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v250 = &v241 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v241 - v59;
  v61 = sub_100058000(&qword_100769548, &qword_100640970);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v241 - v63;
  sub_10016324C(&v241 - v63);
  result = (*(v62 + 88))(v64, v61);
  v279 = a1;
  v267 = v47;
  if (result != enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    v249 = v55;
    if (result == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
    {
      (*(v62 + 96))(v64, v61);
      v71 = v256;
      v72 = v257;
      result = (*(v260 + 32))(v256, v64, v257);
      v61 = v268;
      v73 = *(v268 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
      if (!v73)
      {
        goto LABEL_85;
      }

      v74 = v73;
      v56 = v253;
      TTRNormalizedItemLocation.itemID.getter();
      v64 = v252;
      TTRRemindersBoardMainDiffableDataSource.item(withID:)();

      v62 = v259 + 8;
      v55 = v283;
      v272 = *(v259 + 8);
      (v272)(v56, v283);
      a1 = v263;
      v75 = (*(v263 + 48))(v64, 1, v47);
      v34 = v279;
      if (v75 == 1)
      {
        (*(v260 + 8))(v71, v72);
        v68 = &qword_100772140;
        v69 = &qword_10062D9F0;
        v70 = v64;
        return sub_1000079B4(v70, v68, v69);
      }
    }

    else
    {
      if (result == enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
      {
        (*(v62 + 96))(v64, v61);
        v132 = v250;
        v133 = v249;
        (*(v56 + 32))(v250, v64, v249);
        v43 = v246;
        v134 = v268;
        sub_100481620(v132, v246);
        v135 = sub_100058000(&qword_100784670, &unk_100644FB0);
        if ((*(*(v135 - 8) + 48))(v43, 1, v135) == 1)
        {
          (*(v56 + 8))(v132, v133);
          goto LABEL_4;
        }

        v208 = *&v43[*(v135 + 48)];
        v209 = v255;
        v210 = *(v255 + 48);
        v211 = v263;
        v212 = *(v263 + 32);
        v213 = v244;
        v212(v244, v43, v47);
        *&v213[v210] = v208;
        v214 = *&v213[*(v209 + 48)];
        v212(v248, v213, v47);
        v215 = sub_10016283C();
        v216 = v215[2];
        if (v216)
        {
          v283 = v214;
          v285 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v217 = v215 + ((*(v242 + 80) + 32) & ~*(v242 + 80));
          v218 = *(v242 + 72);
          v219 = v243;
          do
          {
            sub_10048927C(v217, v219, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
            v220 = *v219;
            sub_1004892E4(v219, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v217 += v218;
            --v216;
          }

          while (v216);

          v221 = v285;
          v134 = v268;
          v222 = v250;
          v214 = v283;
        }

        else
        {

          v221 = _swiftEmptyArrayStorage;
          v222 = v250;
        }

        v235 = *(v134 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
        v236 = *(v134 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
        sub_10000C36C((v134 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v235);
        (*(*(v236 + 8) + 616))(&v285, v221, v235);

        v237 = v286;
        v238 = v287;
        sub_10000C36C(&v285, v286);
        v239 = v248;
        (*(v238 + 72))(v248, v214, v237, v238);
        (*(v211 + 8))(v239, v267);
        (*(v56 + 8))(v222, v249);
        return sub_100004758(&v285);
      }

      if (result == enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
      {
        return result;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    (*(a1 + 32))(v276, v64, v47);
    v100 = v34;
    sub_100481A68();
    v172 = v171;
    v174 = v173;
    if ((v175 & 1) == 0)
    {
      v223 = (v61 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
      v224 = *(v61 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v225 = *(v61 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C(v223, v224);
      v226 = (*(*(v225 + 8) + 608))(v174, v276, v224);

      if (v226)
      {
        v227 = *(v172 + 16);
        if (v227)
        {
          v228 = v172 + ((*(v245 + 80) + 32) & ~*(v245 + 80));
          v229 = *(v245 + 72);
          v281 = v172;
          v282 = v229;
          v230 = v272;
          v231 = v262;
          do
          {
            sub_10048927C(v228, v231, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
            v232 = *v231;
            v233 = v231 + *(v280 + 20);
            v234 = *(type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0) + 28);
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            sub_100164AF8(v232, &v233[v234], v56);
            v231 = v262;
            (v230)(v56, v283);
            sub_1004892E4(v231, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
            v228 += v282;
            --v227;
          }

          while (v227);
        }
      }

      (*(v263 + 8))(v276, v267);
      return (*(v260 + 8))(v256, v257);
    }

    v176 = (v61 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
    v177 = *(v61 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v178 = *(v61 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C(v176, v177);
    (*(*(v178 + 8) + 616))(&v285, v172, v177);
    sub_100489180(v172, v174, 1);
    v180 = v286;
    v179 = v287;
    sub_10000C36C(&v285, v286);
    v181 = (*(v179 + 56))(v276, v180, v179);
    v94 = v181;
    if (v181 >> 62)
    {
      goto LABEL_83;
    }

    result = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_46:
    v183 = v281;
    v184 = v272;
    v185 = v276;
    if (!result)
    {
      goto LABEL_72;
    }

    if (result >= 1)
    {
      v186 = 0;
      v187 = *(v100 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_column);
      v277 = (v94 & 0xC000000000000001);
      v278 = v187;
      v274 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_dataSource;
      v273 = (v251 + 48);
      v271 = (v251 + 32);
      v268 = (v251 + 8);
      *&v266 = v259 + 16;
      *&v182 = 136315138;
      v265 = v182;
      v282 = v94;
      v280 = result;
      do
      {
        if (v277)
        {
          v189 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v189 = *(v94 + 8 * v186 + 32);
        }

        v190 = v189;
        v191 = v275;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        v192 = v269;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
        v193 = v192;
        if ((*v273)(v192, 1, v183) == 1)
        {
          sub_1000079B4(v192, &unk_100771B10, qword_10062E540);
          if (qword_100766F88 != -1)
          {
            swift_once();
          }

          v194 = type metadata accessor for Logger();
          sub_100003E30(v194, qword_10076FCE0);
          v195 = v270;
          (*v266)(v270, v191, v55);
          v196 = Logger.logObject.getter();
          v197 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            v199 = swift_slowAlloc();
            v284 = v199;
            *v198 = v265;
            sub_1004891CC(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
            v200 = dispatch thunk of CustomStringConvertible.description.getter();
            v202 = v201;
            v203 = v62;
            v204 = v272;
            (v272)(v270, v283);
            v205 = sub_100004060(v200, v202, &v284);
            v191 = v275;

            *(v198 + 4) = v205;
            _os_log_impl(&_mh_execute_header, v196, v197, "TTRIRemindersBoardDropCommitCoordinator: row for the given item doesn't exist. {itemID: %s}", v198, 0xCu);
            sub_100004758(v199);

            v55 = v283;

            v184 = v204;
            v62 = v203;
          }

          else
          {

            v184 = v272;
            (v272)(v195, v55);
          }

          v183 = v281;
        }

        else
        {
          v188 = v261;
          (*v271)(v261, v193, v183);
          sub_100164774(v190, v188);
          (*v268)(v188, v183);
        }

        v185 = v276;
        ++v186;
        (v184)(v191, v55);
        v94 = v282;
      }

      while (v280 != v186);
LABEL_72:

      (*(v263 + 8))(v185, v267);
      (*(v260 + 8))(v256, v257);
      return sub_100004758(&v285);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    return result;
  }

  (*(v62 + 96))(v64, v61);
  (*(v56 + 32))(v60, v64, v55);
  v66 = v268;
  sub_100481620(v60, v43);
  v67 = sub_100058000(&qword_100784670, &unk_100644FB0);
  if ((*(*(v67 - 8) + 48))(v43, 1, v67) == 1)
  {
    (*(v56 + 8))(v60, v55);
LABEL_4:
    v68 = &unk_100784650;
    v69 = &unk_100644F90;
    v70 = v43;
    return sub_1000079B4(v70, v68, v69);
  }

  v256 = v60;
  v257 = v56;
  v249 = v55;
  v76 = *&v43[*(v67 + 48)];
  v77 = v255;
  v78 = *(v255 + 48);
  v79 = (v263 + 32);
  v80 = *(v263 + 32);
  v81 = v254;
  v80(v254, v43, v47);
  *&v81[v78] = v76;
  v82 = *&v81[*(v77 + 48)];
  v83 = v258;
  v275 = v80;
  v276 = v79;
  v80(v258, v81, v47);
  v84 = v279;
  sub_100481A68();
  v86 = v85;
  v88 = v87;
  if (v89)
  {
    v91 = *(v66 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v90 = *(v66 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C((v66 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v91);
    (*(*(v90 + 8) + 616))(&v285, v86, v91);
    sub_100489180(v86, v88, 1);
    v92 = v286;
    v93 = v287;
    sub_10000C36C(&v285, v286);
    v95 = (*(v93 + 48))(v83, v82, v92, v93);
    v55 = 0;
    v96 = *(v95 + 16);
    v269 = OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_column;
    v268 = (v251 + 48);
    v262 = (v251 + 32);
    v261 = OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator;
    v260 = v251 + 8;
    v270 = (v259 + 8);
    v274 = (v263 + 8);
    v97 = &unk_10063E550;
    v263 = v259 + 16;
    *&v98 = 136315138;
    v259 = v98;
    v99 = v266;
    v62 = v273;
    v100 = v278;
    v271 = v96;
    v272 = v95;
    while (1)
    {
      if (v55 == v96)
      {
        v106 = sub_100058000(&unk_1007818F0, v97);
        (*(*(v106 - 8) + 56))(v99, 1, 1, v106);
        v280 = v96;
      }

      else
      {
        if ((v55 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          v240 = v94;
          result = _CocoaArrayWrapper.endIndex.getter();
          v94 = v240;
          goto LABEL_46;
        }

        if (v55 >= *(v95 + 16))
        {
          goto LABEL_82;
        }

        v107 = sub_100058000(&unk_1007818F0, v97);
        v108 = *(v107 - 8);
        sub_10000794C(v95 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v55, v99, &unk_1007818F0, v97);
        v280 = v55 + 1;
        (*(v108 + 56))(v99, 0, 1, v107);
        v62 = v273;
      }

      sub_100016588(v99, v62, &qword_1007818D8, &qword_10063D340);
      v109 = v97;
      v110 = sub_100058000(&unk_1007818F0, v97);
      if ((*(*(v110 - 8) + 48))(v62, 1, v110) == 1)
      {

        (*v274)(v258, v47);
        (*(v257 + 8))(v256, v249);
        return sub_100004758(&v285);
      }

      v111 = *v62;
      v112 = v47;
      (v275)(v282, v62 + *(v110 + 48), v47);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      v113 = v84;
      v114 = v277;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
      v115 = v114;
      v116 = v281;
      if ((*v268)(v114, 1, v281) == 1)
      {
        sub_1000079B4(v114, &unk_100771B10, qword_10062E540);
        v117 = v283;
        if (qword_100766F88 != -1)
        {
          swift_once();
        }

        v118 = type metadata accessor for Logger();
        sub_100003E30(v118, qword_10076FCE0);
        v119 = v265;
        (*v263)(v265, v100, v117);
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v284 = v123;
          *v122 = v259;
          sub_1004891CC(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
          v124 = dispatch thunk of CustomStringConvertible.description.getter();
          v126 = v125;
          v127 = v119;
          v128 = *v270;
          (*v270)(v127, v283);
          v129 = sub_100004060(v124, v126, &v284);
          v62 = v273;

          *(v122 + 4) = v129;
          _os_log_impl(&_mh_execute_header, v120, v121, "TTRIRemindersBoardDropCommitCoordinator: row for the given item doesn't exist. {itemID: %s}", v122, 0xCu);
          sub_100004758(v123);
          v130 = v283;

          v117 = v130;
        }

        else
        {

          v131 = v119;
          v128 = *v270;
          (*v270)(v131, v117);
        }

        v96 = v271;
        v95 = v272;
        v100 = v278;
        v128(v278, v117);
        v84 = v279;
        v47 = v267;
        v99 = v266;
      }

      else
      {
        v101 = v264;
        (*v262)(v264, v115, v116);
        v102 = *&v261[v113];
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v104 = v102;
        v100 = v278;
        v105 = [v104 dropItem:v111 toItemAtIndexPath:isa];
        swift_unknownObjectRelease();

        (*v260)(v101, v116);
        (*v270)(v100, v283);
        v84 = v113;
        v47 = v112;
        v96 = v271;
        v95 = v272;
      }

      (*v274)(v282, v47);
      v97 = v109;
      v55 = v280;
    }
  }

  v136 = *(v66 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
  v137 = v47;
  v278 = *(v66 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
  v282 = sub_10000C36C((v66 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v136);
  v138 = v263;
  v139 = v82;
  v140 = v247;
  (*(v263 + 16))(v247, v83, v137);
  (*(v138 + 56))(v140, 0, 1, v137);
  (*(*(v278 + 1) + 600))(v88, v140, v139, 0, 0, v136);

  sub_1000079B4(v140, &qword_100772140, &qword_10062D9F0);
  v142 = *(v86 + 16);
  v143 = v86;
  v144 = v283;
  if (v142)
  {
    v145 = (*(v245 + 80) + 32) & ~*(v245 + 80);
    *&v265 = v143;
    v146 = v143 + v145;
    v282 = *(v84 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_column);
    v277 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_dataSource;
    v278 = (v251 + 48);
    v147 = *(v245 + 72);
    v275 = OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator;
    v276 = v147;
    v273 = (v251 + 32);
    v270 = (v251 + 8);
    v269 = (v259 + 16);
    v268 = (v259 + 8);
    *&v141 = 136315138;
    v266 = v141;
    v148 = v280;
    v149 = v272;
    do
    {
      sub_10048927C(v146, v34, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
      v154 = *v34;
      v155 = v34 + *(v148 + 20);
      v156 = *(type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0) + 28);
      v157 = v274;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
      v158 = v157;
      v159 = v157;
      v160 = v281;
      if ((*v278)(v159, 1, v281) == 1)
      {
        sub_1000079B4(v158, &unk_100771B10, qword_10062E540);
        if (qword_100766F88 != -1)
        {
          swift_once();
        }

        v161 = type metadata accessor for Logger();
        sub_100003E30(v161, qword_10076FCE0);
        (*v269)(v149, &v155[v156], v144);
        v162 = Logger.logObject.getter();
        v163 = v144;
        v164 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v162, v164))
        {
          v165 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          v285 = v166;
          *v165 = v266;
          sub_1004891CC(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
          v167 = dispatch thunk of CustomStringConvertible.description.getter();
          v169 = v168;
          (*v268)(v272, v163);
          v170 = sub_100004060(v167, v169, &v285);

          *(v165 + 4) = v170;
          _os_log_impl(&_mh_execute_header, v162, v164, "TTRIRemindersBoardDropCommitCoordinator: row for the given item doesn't exist. {itemID: %s}", v165, 0xCu);
          sub_100004758(v166);
          v149 = v272;
        }

        else
        {

          (*v268)(v149, v163);
        }

        v144 = v163;
      }

      else
      {
        v150 = v271;
        (*v273)(v271, v158, v160);
        v151 = *&v275[v279];
        v152 = IndexPath._bridgeToObjectiveC()().super.isa;
        v153 = [v151 dropItem:v154 toItemAtIndexPath:v152];
        swift_unknownObjectRelease();

        (*v270)(v150, v160);
      }

      v148 = v280;
      sub_1004892E4(v34, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
      v146 += v276;
      --v142;
    }

    while (v142);

    v206 = v267;
    v207 = v263;
    v83 = v258;
  }

  else
  {

    v206 = v267;
    v207 = v263;
  }

  (*(v207 + 8))(v83, v206);
  return (*(v257 + 8))(v256, v249);
}

void sub_1004885A4()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_initialFrameForLoadingView;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_preferredChromelessBarStates;
  sub_100058000(&unk_100781980, &unk_10063CC90);
  swift_allocObject();
  *(v0 + v3) = TTRObservableViewModel.init(value:)();
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_targetItemsForVisibleContextMenu) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource) = 0;
  v4 = (v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_eventPublishers);
  sub_100058000(&qword_100772768, &qword_100634AF0);
  swift_allocObject();
  v5 = PassthroughSubject.init()();
  swift_allocObject();
  v6 = PassthroughSubject.init()();
  *v4 = v5;
  v4[1] = v6;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_deferredViewActionProvider) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableScrollViewInsets) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableColumnContentInsets) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_automaticSubtaskSelectionController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_rootViewDragInteractionHandler) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_chromelessBarsController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController) = 0;
  v7 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemStateTracker;
  type metadata accessor for TTRRemindersListItemStateTracker();
  swift_allocObject();
  *(v0 + v7) = TTRRemindersListItemStateTracker.init()();
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_focusController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dummyContentScrollView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_scrollToTopCancellable) = 0;
  v8 = (v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_completedHeaderViewState);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_completedRemindersState;
  v10 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_listInfo;
  v12 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100488874(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (v14)
  {
    v15 = v14;
    TTRRemindersBoardMainDiffableDataSource.item(withID:)();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1000079B4(v9, &qword_100772140, &qword_10062D9F0);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      v16 = *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v17 = *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v16);
      sub_100058000(&qword_100772150, &unk_100635D00);
      v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10062D400;
      (*(v11 + 16))(v19 + v18, v13, v10);
      (*(v11 + 56))(v6, 1, 1, v10);
      (*(*(v17 + 8) + 576))(v19, v6, a2, v16);

      sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
      (*(v11 + 8))(v13, v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100488B48(uint64_t a1)
{
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v35 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_1007837A0, &qword_1006408A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController);
  if (!v19)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*(v19 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      return;
    }
  }

  else if (*(a1 + 16) != 1)
  {
    return;
  }

  v20 = sub_1000A9AC8(a1);
  if (v20)
  {
    v34 = v20;
    if ([v20 type] == 4)
    {
      v33 = v10;
      v21 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_focusController);
      if (v21)
      {
        v22 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_currentFocusedItem;
        swift_beginAccess();
        sub_10000794C(v21 + v22, v18, &qword_1007837A0, &qword_1006408A0);
        v23 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
        if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
        {

          return;
        }

        if (swift_getEnumCaseMultiPayload() == 1)
        {

          sub_1004892E4(v18, type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem);
          return;
        }

        v25 = v35;
        (*(v35 + 32))(v15, v18, v13);
        v26 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
        if (v26)
        {
          v27 = v1;
          v28 = v26;
          TTRRemindersBoardMainDiffableDataSource.item(withID:)();

          v29 = v33;
          if ((*(v33 + 48))(v8, 1, v9) == 1)
          {
            (*(v25 + 8))(v15, v13);

            sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
          }

          else
          {
            (*(v29 + 32))(v12, v8, v9);
            v30 = (v27 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
            v31 = *(v27 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
            v32 = *(v27 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
            sub_10000C36C(v30, v31);
            (*(*(v32 + 8) + 400))(v12, v31);

            sub_1000079B4(v5, &qword_100772140, &qword_10062D9F0);
            (*(v29 + 8))(v12, v9);
            (*(v25 + 8))(v15, v13);
          }

          return;
        }

LABEL_24:
        __break(1u);
        return;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v24 = v34;
  }
}

uint64_t sub_100489078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100058000(&qword_100784608, &qword_1006408F0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1004779D4(a1, a2, a3, v8);
}

double sub_100489140(void *a1)
{
  if (a1)
  {
  }

  return result;
}

double sub_100489180(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1004891CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100489214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10048927C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004892E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004893A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = type metadata accessor for Optional();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v21 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v9);
  v21 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = type metadata accessor for TTRITreeViewExpandedState();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_1007A84C0;
  swift_beginAccess();
  (*(v15 + 16))(v17, a1 + v18, v14);
  v19 = (*(v15 + 88))(v17, v14);
  if (v19 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
    goto LABEL_5;
  }

  if (v19 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    sub_10023A594(v19);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.insert(_:)();
    return (*(v8 + 8))(v13, AssociatedTypeWitness);
  }

  if (v19 == enum case for TTRITreeViewExpandedState.expanded(_:))
  {
LABEL_5:
    sub_10023A594(v19);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.remove(_:)();
    (*(v8 + 8))(v13, AssociatedTypeWitness);
    return (*(v5 + 8))(v7, v22);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10048973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v16 - v13;
  (*(v7 + 16))(v9, a1, a3, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v17)
    {
      break;
    }

    sub_100489BE0(v17, a2);
  }

  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_10048992C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100489BE0(a1, a3);
  v9 = a2;
  type metadata accessor for TTRITreeViewNode(255, *(a3 + 16), *(a3 + 24), v5);
  v6 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return sub_10048973C(&v9, a3, v6, WitnessTable);
}

uint64_t sub_1004899B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (Set.contains(_:)())
  {
    v5 = Set.contains(_:)() ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

_BYTE *sub_100489A84(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Set.init()();
  v4 = static Array._allocateUninitialized(_:)();
  if (Array._getCount()())
  {
    v5 = sub_100160DBC(v4, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  return v5;
}

uint64_t sub_100489B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  Set.init()();
  return a1;
}

uint64_t sub_100489BE0(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  sub_10023A594(v10);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  Set.remove(_:)();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100489DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if ((static Set.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Set.== infix(_:_:)();
}

void sub_100489EB0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a2;
  v34 = a3;
  v33 = type metadata accessor for TTRSectionLite();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v33);
  v32 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRSectionID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  TTRSectionLite.sectionID.getter();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for TTRSectionID.sectioned(_:))
  {
    (*(v10 + 96))(v12, v9);
    v14 = *v12;
    v15 = TTRSectionLite.displayName.getter();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0xE000000000000000;
    if (v16)
    {
      v18 = v16;
    }

    v29[1] = v18;
    v29[2] = v17;
    v19 = v31;
    if (!*(v31 + 24))
    {
      v20 = v31[2];
      sub_100003540(0, &qword_100775690, NSObject_ptr);
      v21 = v20;
      static NSObject.== infix(_:_:)();
      sub_100263FE4(v20, 0);
    }

    v29[0] = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    sub_10048AE00(v19, v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = *(v4 + 16);
    v23 = v32;
    v31 = v14;
    v24 = v33;
    v22(v32, a1, v33);
    v25 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v26 = (v7 + *(v4 + 80) + v25) & ~*(v4 + 80);
    v27 = swift_allocObject();
    sub_10048AE64(v8, v27 + v25);
    (*(v4 + 32))(v27 + v26, v23, v24);
    v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    goto LABEL_12;
  }

  if (v13 == enum case for TTRSectionID.sectionless(_:))
  {
    v28 = 0;
LABEL_12:
    *v34 = v28;
    return;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10048A26C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRSectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) + 44));
  TTRSectionLite.sectionID.getter();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10048A360(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRSectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) + 44));
  (*(v4 + 104))(v6, enum case for TTRSectionID.sectionless(_:), v3);
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

Class sub_10048A46C(uint64_t *a1)
{
  v59 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v61 = v2;
  v62 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRSectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v59 - v8;
  v64 = type metadata accessor for TTRSectionLite();
  __chkstk_darwin(v64);
  v77 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v11);
  v16 = &v59 - v13;
  v63 = a1;
  v17 = *a1;
  v76 = *(*a1 + 16);
  if (v76)
  {
    v18 = 0;
    v73 = v14 + 16;
    v72 = enum case for TTRSectionID.sectionless(_:);
    v70 = (v4 + 8);
    v71 = (v4 + 104);
    v69 = (v14 + 32);
    v65 = (v14 + 8);
    v19 = _swiftEmptyArrayStorage;
    v67 = v9;
    v68 = v6;
    v20 = v64;
    v66 = &v59 - v13;
    v74 = v17;
    v75 = v14;
    v21 = v70;
    while (v18 < *(v17 + 16))
    {
      v79 = (v14[80] + 32) & ~v14[80];
      v78 = *(v14 + 9);
      (*(v14 + 2))(v16, v17 + v79 + v78 * v18, v20, v15);
      TTRSectionLite.sectionID.getter();
      (*v71)(v6, v72, v3);
      sub_10048AD8C();
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v21;
      (*v21)(v6, v3);
      v23(v9, v3);
      if (v22)
      {
        v12 = (*v65)(v16, v20);
      }

      else
      {
        v24 = *v69;
        (*v69)(v77, v16, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1AE0(0, *(v19 + 2) + 1, 1);
          v20 = v64;
          v19 = v80;
        }

        v27 = *(v19 + 2);
        v26 = *(v19 + 3);
        if (v27 >= v26 >> 1)
        {
          sub_1004A1AE0((v26 > 1), v27 + 1, 1);
          v20 = v64;
          v19 = v80;
        }

        *(v19 + 2) = v27 + 1;
        v12 = v24(&v19[v79 + v27 * v78], v77, v20);
        v9 = v67;
        v6 = v68;
        v16 = v66;
      }

      ++v18;
      v14 = v75;
      v17 = v74;
      if (v76 == v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_13:
  __chkstk_darwin(v12);
  v57 = v63;
  v21 = sub_10007DC28(sub_10048ADE4, &v55, v19);

  v19 = (v21 >> 62);
  if (v21 >> 62)
  {
LABEL_28:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:

    return 0;
  }

LABEL_15:
  v75 = v19;
  v28 = v63;
  static TTRLocalizableStrings.Sections.newSectionWithSelection(listLayout:)();
  v29 = static TTRLocalizableStrings.Sections.moveToSectionText(withSelectedRemindersCount:listLayout:)();
  v78 = v30;
  v79 = v29;
  v77 = static TTRCommonAsset.Image.moveToSectionIcon.getter();
  sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  v31 = v62;
  sub_10048AE00(v28, v62);
  v32 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v33 = swift_allocObject();
  sub_10048AE64(v31, v33 + v32);
  v56 = sub_10048AEC8;
  v57 = v33;
  v55 = 0;
  v76 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v34._object = 0x8000000100688A10;
  v35._countAndFlagsBits = 1701736270;
  v35._object = 0xE400000000000000;
  v34._countAndFlagsBits = 0xD000000000000045;
  TTRLocalizedString(_:comment:)(v35, v34);
  sub_10048AE00(v28, v31);
  v36 = swift_allocObject();
  sub_10048AE64(v31, v36 + v32);
  v56 = sub_10048AF44;
  v57 = v36;
  v55 = 0;
  v37 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v37 setState:{*(v28 + 24) > 1u, v59}];
  v80 = _swiftEmptyArrayStorage;
  v38 = *(v28 + 26);
  if (v38 == 1)
  {
    sub_100003540(0, &unk_10076B890, UIMenu_ptr);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10062D420;
    *(v39 + 32) = v37;
    v40 = v37;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v81.value.super.isa = 0;
    v81.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v41, 0, v81, 1, 0xFFFFFFFFFFFFFFFFLL, v39, v58);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (v75)
  {
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);

    v42 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
    v42 = v21;
  }

  v44 = v78;
  v43 = v79;
  v46 = v76;
  v45 = v77;

  sub_1000815D0(v42);
  if (v38)
  {
    sub_100003540(0, &unk_10076B890, UIMenu_ptr);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10062D420;
    *(v47 + 32) = v46;
    v48 = v46;
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    v82.value.super.isa = 0;
    v82.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v49, 0, v82, 1, 0xFFFFFFFFFFFFFFFFLL, v47, v58);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v50 = v80;
  v51 = v45;
  v52._countAndFlagsBits = v43;
  v52._object = v44;
  v83.value.super.isa = v45;
  v83.is_nil = 0;
  v53.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v52, 0, v83, 0, 0xFFFFFFFFFFFFFFFFLL, v50, v58).super.super.isa;

  return v53.super.super.isa;
}

unint64_t sub_10048AD8C()
{
  result = qword_10076BE70;
  if (!qword_10076BE70)
  {
    type metadata accessor for TTRSectionID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076BE70);
  }

  return result;
}

uint64_t sub_10048AE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10048AE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10048AEC8()
{
  v1 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 56) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)(0, 0);
  }

  return result;
}

uint64_t sub_10048AF44(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10048A360(a1, v4);
}

uint64_t sub_10048AFB4(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for TTRSectionLite();

  return sub_10048A26C(a1, v1 + v4);
}

void sub_10048B088(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&unk_10077A660, &unk_100634770);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel(0);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100784758, qword_100640A40);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  if (*(v1 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
  {

    TTRViewModelObserver.localValue.getter();

    v12 = sub_100058000(&qword_10076EA28, &unk_100631EF0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v13 = &qword_100784758;
      v14 = qword_100640A40;
      v15 = v11;
    }

    else
    {
      TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
      sub_1000079B4(v11, &qword_100784758, qword_100640A40);
      sub_100029934(&v8[*(v6 + 20)], v5);
      v16 = sub_100058000(&qword_10077A670, &unk_100631300);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v5, 1, v16) != 1)
      {
        TTRDiffableEquatableWrapper.base.getter();
        sub_1000299A4(v8);
        (*(v17 + 8))(v5, v16);
        v18 = 0;
        goto LABEL_7;
      }

      sub_1000299A4(v8);
      v13 = &unk_10077A660;
      v14 = &unk_100634770;
      v15 = v5;
    }

    sub_1000079B4(v15, v13, v14);
    v18 = 1;
LABEL_7:
    v19 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v19 - 8) + 56))(a1, v18, 1, v19);
    return;
  }

  __break(1u);
}

id sub_10048B450()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAccountsListsCollectionListCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10048B494()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100784760);
  v1 = sub_100003E30(v0, qword_100784760);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10048B55C()
{
  v0 = sub_100058000(&qword_10077E850, &unk_10063B170);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v22 - v4;
  if (qword_1007674F0 != -1)
  {
    swift_once();
  }

  v6 = qword_1007A8A40;
  v29 = qword_1007A8A40;
  v26[0] = 0;
  v7 = sub_10048CB90();

  v23 = v7;
  AnyHashable.init<A>(_:)();
  v28 = 1;
  *v5 = 0;
  v5[40] = 0;
  v25 = v1;
  v8 = *(v1 + 104);
  v8(v5, enum case for TTRRelativeInsertionPosition.after<A>(_:), v0);
  sub_100058000(&qword_100774070, &unk_10063B4E0);
  inited = swift_initStackObject();
  v22 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  sub_100233FB0(v27, inited + 32);
  sub_100323F28();
  v10 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v11)
  {
    v12 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v26, &qword_10077E868, &qword_10063B180);
    if (v12)
    {
      v10 = *(v6 + 16);
    }

    else
    {
      v10 = 0;
    }
  }

  sub_1000FE4D8(v10, v10, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v13 = *(v25 + 8);
  v13(v5, v0);
  sub_10023400C(v27);
  v26[0] = 1;
  AnyHashable.init<A>(_:)();
  v28 = 1;
  v14 = v24;
  v8(v24, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v0);
  v15 = v14;
  v16 = swift_initStackObject();
  *(v16 + 16) = v22;
  sub_100233FB0(v27, v16 + 32);
  v17 = v29;
  v18 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v19)
  {
    v20 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v26, &qword_10077E868, &qword_10063B180);
    if (v20)
    {
      v18 = *(v17 + 16);
    }

    else
    {
      v18 = 0;
    }
  }

  sub_1000FE4D8(v18, v18, v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  v13(v15, v0);
  sub_10023400C(v27);
  return v29;
}

uint64_t sub_10048B930(uint64_t a1)
{
  AnyHashable.base.getter();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1];

  sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  if (v4)
  {
    static TTRLocalizableStrings.RemindersList.deleteCustomSmartListActionText.getter();
  }

  else
  {
    static TTRLocalizableStrings.AccountsList.showSmartListInfoText.getter();
  }

  swift_allocObject();
  swift_weakInit();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

double sub_10048BB30(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TTRITipKitSignal();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_getObjectType();
    v9 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    if (v9)
    {
      v10 = v9;
      swift_getObjectType();

      swift_unknownObjectRetain();
      v11 = dispatch thunk of TTRRemindersListInteractorType.changeItem(for:)();
      swift_unknownObjectRelease();
      v12 = *(v8 + 88);
      swift_unknownObjectRetain();

      sub_10048C87C(v11, v8, v12);
      swift_unknownObjectRelease();

      (*(v3 + 104))(v5, enum case for TTRITipKitSignal.tappedNameAndAppearanceAction(_:), v2);
      v13.value._countAndFlagsBits = static TTRITipKitSignalContext.RemindersList.MoreMenu.smartList.getter();
      TTRITipKitSignal.donate(signalContext:)(v13);

      (*(v3 + 8))(v5, v2);
    }

    else
    {
    }
  }

  return result;
}

double sub_10048BD20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10048BE08();
  }

  return result;
}

id sub_10048BD78()
{
  swift_getObjectType();
  result = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
  if (result)
  {
    v1 = result;
    v2 = [result customContext];

    if (v2)
    {
      v3 = [v2 account];

      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10048BE08()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  v6 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
  if (!v6)
  {
    return;
  }

  v38 = v6;
  v7 = [v6 smartListType];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      v14 = v38;

      return;
    }
  }

  v37 = v1;
  if (qword_100767338 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_100784760);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v17 = [v38 objectID];
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v17;
  v18 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List delete custom smart list {smartList.objectID: %@}", 64, 2, v18);

  *v5 = v38;
  v19 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
  v20 = *(v3 + 104);
  v20(v5, enum case for TTRListOrCustomSmartList.customSmartList(_:), v2);
  v21 = v38;
  sub_1002E91A0(v5);
  v22 = *(v3 + 8);
  v22(v5, v2);
  *v5 = v21;
  v20(v5, v19, v2);
  v23 = v21;
  sub_1002E950C(v5);
  v22(v5, v2);
  v24 = String._bridgeToObjectiveC()();

  v25 = String._bridgeToObjectiveC()();

  v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  v27 = String._bridgeToObjectiveC()();

  v28 = objc_opt_self();
  v29 = [v28 actionWithTitle:v27 style:1 handler:0];

  static TTRLocalizableStrings.Common.deleteButton.getter();
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v23;
  v38 = v23;

  v32 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10048CBE4;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001762CC;
  aBlock[3] = &unk_10072A848;
  v33 = _Block_copy(aBlock);

  v34 = [v28 actionWithTitle:v32 style:2 handler:v33];
  _Block_release(v33);

  [v26 addAction:v29];
  [v26 addAction:v34];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    [Strong presentViewController:v26 animated:1 completion:0];
  }
}

void sub_10048C3C0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    static TTRLocalizableStrings.RemindersList.deleteList.getter();
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();

    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = a3;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_10048CBEC;
    *(v9 + 24) = v8;
    aBlock[4] = sub_100068444;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10072A8C0;
    v10 = _Block_copy(aBlock);
    v11 = a3;

    [v6 withActionName:v7 block:v10];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        swift_unknownObjectRetain();
        v15 = [v14 presentedViewController];

        if (v15)
        {
          [v15 dismissViewControllerAnimated:1 completion:0];
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10048C624()
{
  sub_1001E6A30();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowCustomSmartListPresenter(uint64_t a1)
{
  result = qword_1007847A8;
  if (!qword_1007847A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10048C734(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
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

void sub_10048C87C(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TTRListDetailAssembly.CustomSmartListComponentsCreator();
  swift_initStackObject();
  v5 = [a1 saveRequest];
  v6 = [v5 store];

  v7 = sub_10044E000(v6, a1, 1, a2, &off_10072A740);
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

void sub_10048C9A8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  static TTRLocalizableStrings.UndoAction.changeList.getter();
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();

  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10048CB70;
  *(v13 + 24) = v12;
  v16[4] = sub_100026410;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100026440;
  v16[3] = &unk_10072A7D0;
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

unint64_t sub_10048CB90()
{
  result = qword_1007851F8;
  if (!qword_1007851F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007851F8);
  }

  return result;
}

unint64_t sub_10048CC44()
{
  result = qword_100785200;
  if (!qword_100785200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785200);
  }

  return result;
}

id sub_10048CCA8(uint64_t *a1, void **a2, uint64_t a3)
{
  v96 = a3;
  v102 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v105 = *(v4 - 8);
  v106 = v4;
  __chkstk_darwin(v4);
  v87 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v98 = &v86 - v7;
  __chkstk_darwin(v8);
  v86 = &v86 - v9;
  __chkstk_darwin(v10);
  v103 = &v86 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v95 = (&v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v93);
  v104 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for TTRListType.SortingCapability();
  v94 = *(v97 - 8);
  __chkstk_darwin(v97);
  v92 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for TTRRemindersListDefaultListType();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v91 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v90);
  v89 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v18 - 8);
  v20 = (&v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v29);
  v32 = &v86 - v31;
  (*(v22 + 104))(v24, enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:), v21, v30);
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  (*(v22 + 8))(v24, v21);
  v88 = a2;
  v33 = *a2;
  v100 = v26;
  v34 = *(v26 + 16);
  v34(v28, v32, v25);
  type metadata accessor for TTRShowSiriFoundInAppsDataModelSource();
  swift_allocObject();
  v35 = v33;
  v36 = TTRShowSiriFoundInAppsDataModelSource.init(store:sortingStyle:canChangeSortingStyle:)();
  sub_1001749C4(a2, v20);
  v113[0] = _swiftEmptyArrayStorage;
  sub_10048DDF4(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes, &protocol conformance descriptor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218, &unk_1006302E0);
  sub_10010BA44();
  v37 = v89;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = v91;
  (*(v99 + 13))(v91, enum case for TTRRemindersListDefaultListType.any(_:), v101);
  v39 = sub_10007786C(v20, v37, v38, v113);
  v40 = v113[0];
  v41 = v92;
  v99 = v32;
  v101 = v25;
  (v34)(v92, v32, v25, v39);
  v42 = v41;
  (v94)[13](v41, enum case for TTRListType.SortingCapability.notSupported(_:), v97);
  type metadata accessor for TTRShowSiriFoundInAppsViewModelSource(0);
  v43 = swift_allocObject();

  v44 = v40;
  v97 = v36;
  v94 = v44;
  v45 = sub_10048DA20(v36, v44, v42, v43);
  sub_1001749C4(v88, v20);
  sub_10010BCAC(v113, v110);
  v46 = sub_10048DDF4(&qword_100781118, type metadata accessor for TTRShowSiriFoundInAppsViewModelSource, &unk_100646FD0);
  v47 = v104;
  sub_1001749C4(v20, v104);
  v48 = v93;
  sub_10010BCAC(v110, v47 + *(v93 + 28));
  v49 = (v47 + *(v48 + 32));
  *v49 = v45;
  v49[1] = v46;
  v50 = v110[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v112, v109, &qword_100769608, &unk_1006302F0);
  v52 = *(v109[5] + 8);
  *(v51 + 32) = v109[4];
  *(v51 + 40) = v52;
  sub_10000794C(&v111, v107, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v53 = v50;
  swift_unknownObjectRelease();
  *(v51 + 48) = v108;
  sub_100004758(v107);
  sub_100004758(v109);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v54 = swift_allocObject();
  v55 = sub_1003A7DAC(v53, v45, v51, v54);

  sub_10010BD08(v110);
  sub_100174ECC(v20, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v56 = *(v48 + 36);
  v92 = v55;
  *(v47 + v56) = v55;
  v57 = v95;
  sub_100078BBC(v95);
  v93 = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v58 = swift_allocObject();
  v59 = v96;
  swift_unknownObjectRetain();
  v60 = sub_1003A56E4(v57, v59, v58);
  v61 = *(v60 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v61 + 112))(ObjectType, v61))
  {
    swift_getObjectType();
    v63 = v86;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v64 = v103;
    (*(v105 + 32))(v103, v63, v106);
  }

  else
  {
    v64 = v103;
    (*(v105 + 104))(v103, enum case for TTRRemindersListLayout.list(_:), v106);
  }

  v65 = sub_1003A4A1C(v64, v60);
  v95 = v66;
  v68 = v67;
  v70 = v69;
  (*(v105 + 8))(v64, v106);
  v96 = swift_getObjectType();
  *(v60 + 24) = *(v70 + 8);
  v103 = v68;
  swift_unknownObjectWeakAssign();
  v71 = *(v60 + 144);
  v72 = swift_getObjectType();
  v73 = *(v71 + 112);

  if (v73(v72, v71))
  {
    swift_getObjectType();
    v74 = v87;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v75 = v98;
    (*(v105 + 32))(v98, v74, v106);
  }

  else
  {
    v75 = v98;
    (*(v105 + 104))(v98, enum case for TTRRemindersListLayout.list(_:), v106);
  }

  v76 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v77 = v65;
  v78 = sub_1003A7DE0(v60, v77, v95, v75, 0, 1, 0, v76);

  v79 = *(v70 + 32);
  v80 = v78;
  v79(v78, &off_100723D78, v96, v70);
  sub_10048DDF4(&qword_100770960, type metadata accessor for TTRIRemindersCommonPresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10048DDF4(&qword_100785230, type metadata accessor for TTRShowSiriFoundInAppsViewModelSource, ")^\r");

  v81 = v80;
  dispatch thunk of TTRShowSiriFoundInAppsDataModelSource.delegate.setter();

  sub_10056FEB0(v82, &off_10071A9B0);

  *(v92 + 3) = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v114, v110, &qword_100769600, &qword_10062E0A0);
  v83 = v110[4];
  swift_unknownObjectRelease();
  *(v83 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v110);
  sub_10000794C(&v115, v110, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_10048DDF4(&qword_100770970, type metadata accessor for TTRIRemindersCommonPresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v110);
  v84 = v102;
  v102[3] = v93;
  v84[4] = &off_10072A978;

  swift_unknownObjectRelease();
  *v84 = v60;
  (*(v100 + 8))(v99, v101);
  sub_100174ECC(v104, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v113);
  return v81;
}

id TTRIShowSiriFoundInAppsAssembly.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIShowSiriFoundInAppsAssembly();
  return objc_msgSendSuper2(&v3, "init");
}

id TTRIShowSiriFoundInAppsAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowSiriFoundInAppsAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10048DA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v34 = a3;
  v35 = v8;
  v36 = type metadata accessor for REMAnalyticsEvent();
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v33 = type metadata accessor for TTRListType.SortingCapability();
  v15 = *(v33 - 8);
  v16 = __chkstk_darwin(v33);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a3, v16);
  v19 = sub_1003A649C(a1, a2, v18, a4);

  sub_1002F9294(v14);
  v20 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  sub_10056F540(v14);
  sub_10010BE6C(v14);
  type metadata accessor for TTRUserDefaults();
  v21 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v22 = sub_100058000(&qword_100770980, &unk_1006339B0);
  v23 = &v11[*(v22 + 48)];
  v24 = &v11[*(v22 + 80)];
  v25 = enum case for REMRemindersOpenUserOperation.SmartListType.siriFoundInApps(_:);
  v26 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v26 - 8) + 104))(v11, v25, v26);
  v27 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v28 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v28 - 8) + 104))(v11, v27, v28);
  *v23 = TTRUserDefaults.activitySessionId.getter();
  v23[1] = v29;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v24 = _typeName(_:qualified:)();
  v24[1] = v30;
  v31 = v36;
  (*(v9 + 104))(v11, enum case for REMAnalyticsEvent.openListUserOperation(_:), v36);
  REMAnalyticsManager.post(event:)();

  (*(v15 + 8))(v34, v33);
  (*(v9 + 8))(v11, v31);
  return v19;
}

uint64_t sub_10048DDF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10048DE3C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(v3 + 16))
  {
    if (qword_100767340 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_100785238);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "TTRIActivityAlertRouterCapability: trying to present activity alert twice";
LABEL_6:
      _os_log_impl(&_mh_execute_header, oslog, v5, v7, v6, 2u);
    }
  }

  else if (a3)
  {
    v8 = a3;
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() alertControllerWithTitle:v9 message:0 preferredStyle:1];

    type metadata accessor for TTRISpinnerAlertContentViewController();
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v10 setContentViewController:v11];
    v12 = *(v3 + 16);
    *(v3 + 16) = v10;
    v13 = v10;

    oslog = UIViewController.topPresentedViewController.getter();
    [oslog presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    if (qword_100767340 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100785238);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "TTRIActivityAlertRouterCapability: failed to present activity alert; missing a presentingViewController";
      goto LABEL_6;
    }
  }
}