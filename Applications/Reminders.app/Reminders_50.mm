void sub_1005671EC()
{
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_timeZoneOverrideChangedObserver) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_timeZoneOverrideTipController) = 0;
  v1 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dragAndDropController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dragAndDropCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController) = 0;
  v4 = (v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_pendingSearchTerm);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addListButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addReminderButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___searchButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___timeZoneOverrideButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addGroupButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___editButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___actionMenuButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___actionMenuWithBadgeButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_accountSpinnerVisibleByAccountID) = &_swiftEmptyDictionarySingleton;
  v5 = v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_currentBarButtonItemConfiguration;
  *(v5 + 2) = -2;
  *v5 = -258;
  v6 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dropExceedsMaximumNumberOfPinnedListsTracker;
  type metadata accessor for TTRIAccountsListsDropExceedsMaximumNumberOfPinnedListsTracker();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v0 + v6) = v7;
  v3(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_lastAppliedSelection, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_itemCollapsedStatesOverrideCancellable) = 0;
  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_10078D290);
  v9 = sub_100008E04(_swiftEmptyArrayStorage);
  v10 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("init(coder:) has not been implemented", 37, 2uLL, v9, v10);
  __break(1u);
}

void sub_100567430(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = *&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (v14)
  {
    v15 = v14;
    TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

    v16 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v10, 1, v16) == 1)
    {
      sub_1000079B4(v10, &unk_100771B40, &unk_10062FB70);
      (*(v17 + 56))(v13, 1, 1, v16);
      sub_1000079B4(v13, &unk_100771B40, &unk_10062FB70);
      v18 = (*(v5 + 104))(v7, enum case for TTRICollectionViewCellSelectionOption.disallowed(_:), v4);
    }

    else
    {
      (*(v17 + 32))(v13, v10, v16);
      sub_100437844(v13, [v2 isEditing], v7);
      (*(v17 + 56))(v13, 0, 1, v16);
      v18 = sub_1000079B4(v13, &unk_100771B40, &unk_10062FB70);
    }

    a2(v18);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_10056771C(uint64_t a1)
{
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v2);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (v12)
  {
    v13 = v12;
    TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000079B4(v7, &unk_100771B40, &unk_10062FB70);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      if (([v1 isEditing] & 1) == 0)
      {
        sub_100058000(&unk_10076BAA0, &unk_10062FD90);
        v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_10062D400;
        (*(v9 + 16))(v15 + v14, v11, v8);
        *v4 = v15;
        swift_storeEnumTagMultiPayload();
        sub_10055DF60(v4, 1, 0);
        sub_10056B948(v4, type metadata accessor for TTRIAccountsListsSelection);
      }

      (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1005679D8(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v30 - v10);
  v12 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v12 - 8);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  v33 = v1;
  v20 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (v20)
  {
    v21 = v20;
    TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

    v31 = *(v3 + 48);
    if (v31(v16, 1, v2) == 1)
    {
      sub_1000079B4(v16, &unk_100771B40, &unk_10062FB70);
      v22 = v3;
      (*(v3 + 56))(v19, 1, 1, v2);
      v23 = enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
      (*(v6 + 104))(v11, enum case for TTRICollectionViewCellSelectionOption.disallowed(_:), v5);
    }

    else
    {
      (*(v3 + 32))(v19, v16, v2);
      sub_100437844(v19, [v33 isEditing], v11);
      v22 = v3;
      (*(v3 + 56))(v19, 0, 1, v2);
      v23 = enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
    }

    (*(v6 + 16))(v8, v11, v5);
    v24 = (*(v6 + 88))(v8, v5);
    if (v24 == v23 || v24 == enum case for TTRICollectionViewCellSelectionOption.selectItem(_:) || v24 == enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:))
    {
      goto LABEL_12;
    }

    if (v24 == enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:))
    {
      v25 = v32;
      sub_10000794C(v19, v32, &unk_100771B40, &unk_10062FB70);
      if (v31(v25, 1, v2) == 1)
      {
        (*(v6 + 8))(v11, v5);
        sub_1000079B4(v19, &unk_100771B40, &unk_10062FB70);
        v19 = v25;
LABEL_13:
        sub_1000079B4(v19, &unk_100771B40, &unk_10062FB70);
        return;
      }

      v26 = v30;
      (*(v22 + 32))(v30, v25, v2);
      sub_10042B5DC(v26);
      (*(v22 + 8))(v26, v2);
LABEL_12:
      (*(v6 + 8))(v11, v5);
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100003E30(v27, qword_10078D290);
  v28 = sub_100008E04(_swiftEmptyArrayStorage);
  v29 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown cell selection option", 29, 2uLL, v28, v29);
  __break(1u);
}

void sub_100567F10(uint64_t a1)
{
  v2 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = v12;
  TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &unk_100771B40, &unk_10062FB70);
    return;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v14 = (*(v6 + 88))(v8, v5);
  if (v14 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v6 + 8))(v11, v5);
    (*(v6 + 96))(v8, v5);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(v8, v15);
    return;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_8;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    goto LABEL_10;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_8;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    goto LABEL_10;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
  {
LABEL_8:
    v16 = *(v6 + 8);
    v16(v11, v5);
    v16(v8, v5);
    return;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_10:
    (*(v6 + 8))(v8, v5);
LABEL_11:
    [v1 isEditing];
    (*(v6 + 8))(v11, v5);
    return;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
  {
    (*(v6 + 8))(v11, v5);
    return;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    goto LABEL_11;
  }

  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003E30(v17, qword_10078D290);
  v18 = sub_100008E04(_swiftEmptyArrayStorage);
  v19 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown item type", 17, 2uLL, v18, v19);
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1005683E4(uint64_t a1)
{
  v3 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (*(a1 + 16) == 1)
  {
    result = (*(v11 + 16))(v14, a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10, v12);
    v16 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
    if (v16)
    {
      v17 = v16;
      TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        (*(v11 + 8))(v14, v10);
        sub_1000079B4(v5, &unk_100771B40, &unk_10062FB70);
        return 0;
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        sub_10043CD94(v9);
        v19 = v18;
        (*(v7 + 8))(v9, v6);
        (*(v11 + 8))(v14, v10);
        return v19;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10056869C(uint64_t a1)
{
  v2 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v9)
  {
    v10 = v9;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1000079B4(v4, &unk_100771B40, &unk_10062FB70);
      return;
    }

    (*(v6 + 32))(v8, v4, v5);
    sub_100454D4C(v8);
    if (v11 >> 62)
    {
      v13 = v11;
      v14 = _CocoaArrayWrapper.endIndex.getter();
      v11 = v13;
      if (!v14)
      {
        goto LABEL_10;
      }
    }

    else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:

      (*(v6 + 8))(v8, v5);
      return;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_10;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 32);
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1005688D4(uint64_t a1)
{
  v2 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v9)
  {
    v10 = v9;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1000079B4(v4, &unk_100771B40, &unk_10062FB70);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      sub_1004380BC();
      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100568AA4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  sub_100562C24(a2, v2, a1, &v4);
  if (v3 == 1)
  {
    *(*&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dropExceedsMaximumNumberOfPinnedListsTracker] + 16) = (*(*&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dropExceedsMaximumNumberOfPinnedListsTracker] + 16) | v4) & 1;
  }
}

void sub_100568B00(uint64_t a1)
{
  v172 = a1;
  v167 = sub_100058000(&qword_10078D488, &qword_100646870);
  v162 = *(v167 - 8);
  __chkstk_darwin(v167);
  v163 = &v142 - v2;
  v171 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v147 = *(v171 - 8);
  __chkstk_darwin(v171);
  v143 = &v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v161 = &v142 - v5;
  v146 = sub_100058000(&unk_10078D490, &unk_100646878);
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v142 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v144 = &v142 - v8;
  v152 = sub_100058000(&qword_1007819C0, &qword_10062FE60);
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v150 = &v142 - v9;
  v153 = type metadata accessor for Logger();
  v159 = *(v153 - 8);
  __chkstk_darwin(v153);
  v158 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v11 - 8);
  v156 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v154 = &v142 - v14;
  __chkstk_darwin(v15);
  v149 = &v142 - v16;
  __chkstk_darwin(v17);
  v160 = &v142 - v18;
  v165 = sub_100058000(&qword_10078D4A0, &qword_100646888);
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v148 = (&v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v157 = (&v142 - v21);
  v22 = sub_100058000(&unk_10078D4A8, &unk_100646890);
  __chkstk_darwin(v22 - 8);
  v24 = &v142 - v23;
  v155 = sub_100058000(&qword_1007721C0, &qword_100634538);
  __chkstk_darwin(v155);
  v26 = &v142 - v25;
  v169 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v170 = *(v169 - 8);
  __chkstk_darwin(v169);
  v168 = &v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v166 = &v142 - v29;
  v30 = sub_100058000(&qword_10078D4B8, &qword_1006468A0);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v142 - v32;
  v34 = sub_100058000(&qword_10078D4C0, &qword_1006468A8);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v142 - v36;
  v38 = v1;
  *(*&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dropExceedsMaximumNumberOfPinnedListsTracker] + 16) = 0;
  TTRICollectionViewDropCommitCoordinator.destination.getter();
  v39 = (*(v35 + 88))(v37, v34);
  if (v39 == enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    (*(v35 + 96))(v37, v34);
    (*(v31 + 32))(v33, v37, v30);
    v40 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
    if (v40)
    {
      v41 = v40;
      TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)();

      v42 = sub_100058000(&qword_10078D4C8, &unk_1006468B0);
      if ((*(*(v42 - 8) + 48))(v24, 1, v42) == 1)
      {
        (*(v31 + 8))(v33, v30);
        v43 = &unk_10078D4A8;
        v44 = &unk_100646890;
        v45 = v24;
LABEL_9:
        sub_1000079B4(v45, v43, v44);
        return;
      }

      v156 = v33;
      v162 = v31;
      v163 = v30;
      v58 = *&v24[*(v42 + 48)];
      v59 = v38;
      v60 = v155;
      v61 = *(v155 + 48);
      v62 = v170;
      v63 = *(v170 + 32);
      v64 = v169;
      v63(v26, v24, v169);
      *&v26[v61] = v58;
      v65 = v59;
      v66 = *&v26[*(v60 + 48)];
      v67 = v166;
      v68 = (v63)(v166, v26, v64);
      __chkstk_darwin(v68);
      *(&v142 - 2) = v65;
      v69 = v157;
      TTRICollectionViewDropCommitCoordinator.draggedItemsForCommitting<A>(transformItemID:)();
      v70 = v164;
      v71 = v165;
      v72 = (*(v164 + 88))(v69, v165);
      if (v72 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.local<A><A1>(_:))
      {
        (*(v70 + 96))(v69, v71);
        v165 = *v69;
        v73 = v67;
        v74 = v69[1];
        v168 = *&v65[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter];
        v75 = v160;
        (*(v62 + 16))(v160, v73, v64);
        (*(v62 + 56))(v75, 0, 1, v64);
        v76 = v62;
        if (qword_1007672D8 != -1)
        {
          swift_once();
        }

        v77 = v153;
        v78 = sub_100003E30(v153, qword_100782E90);
        (*(v159 + 16))(v158, v78, v77);
        sub_100058000(&unk_100775610, &unk_1006323A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062F800;
        *(inited + 32) = 1835365481;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = Array.description.getter();
        *(inited + 56) = v80;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 49;
        *(inited + 88) = 0xE100000000000000;
        v81 = v75;
        v82 = v149;
        sub_10000794C(v81, v149, &unk_100771B40, &unk_10062FB70);
        if ((*(v76 + 48))(v82, 1, v64) == 1)
        {
          sub_1000079B4(v82, &unk_100771B40, &unk_10062FB70);
          v83 = (inited + 96);
          *(inited + 120) = &type metadata for String;
        }

        else
        {
          v96 = v74;
          v97 = v66;
          sub_100014F04(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item, &protocol conformance descriptor for TTRAccountsListsViewModel.Item);
          v98 = v82;
          v99 = TTRTreeStorageItem.treeItemDescription.getter();
          v101 = v100;
          (*(v76 + 8))(v98, v64);
          v83 = (inited + 96);
          *(inited + 120) = &type metadata for String;
          if (v101)
          {
            *v83 = v99;
            v66 = v97;
            v74 = v96;
            goto LABEL_46;
          }

          v66 = v97;
          v74 = v96;
        }

        *v83 = 7104878;
        v101 = 0xE300000000000000;
LABEL_46:
        *(inited + 104) = v101;
        *(inited + 128) = 50;
        *(inited + 136) = 0xE100000000000000;
        *(inited + 168) = &type metadata for Int;
        *(inited + 144) = v66;
        v123 = sub_100008E04(inited);
        swift_setDeallocating();
        sub_100058000(&unk_10076BA70, &qword_10062FD60);
        swift_arrayDestroy();
        v124 = v158;
        sub_10000FD44("Accounts Lists move item {item: %@, to (%@, %d)}", 48, 2, v123);

        (*(v159 + 8))(v124, v77);
        v125 = v160;
        v126 = v154;
        sub_10000794C(v160, v154, &unk_100771B40, &unk_10062FB70);
        sub_100014F04(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item, &protocol conformance descriptor for TTRAccountsListsViewModel.Item);
        v127 = v150;
        TTRTreeLocation.init(parent:index:)();
        v128 = v152;
        TTRTreeLocation.parent.getter();
        v129 = TTRTreeLocation.index.getter();
        sub_100439410(v74, v126, v129, 0, 0);
        LOBYTE(v124) = v130;

        sub_1000079B4(v126, &unk_100771B40, &unk_10062FB70);
        (*(v151 + 8))(v127, v128);
        sub_1000079B4(v125, &unk_100771B40, &unk_10062FB70);
        if ((v124 & 1) != 0 && (v131 = *(v165 + 16)) != 0)
        {
          v168 = *(v145 + 16);
          v132 = v165 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
          v167 = *(v145 + 72);
          v133 = (v145 + 8);
          v134 = (v147 + 8);
          v135 = v161;
          v136 = v146;
          v137 = v144;
          do
          {
            (v168)(v137, v132, v136);
            v138 = TTRICollectionViewDropCommitCoordinator.LocalDropItem.dragItem.getter();
            TTRICollectionViewDropCommitCoordinator.LocalDropItem.sourceItemID.getter();
            (*v133)(v137, v136);
            TTRICollectionViewDropCommitCoordinator.drop(_:toItem:)();

            (*v134)(v135, v171);
            v132 += v167;
            --v131;
          }

          while (v131);

          v64 = v169;
          v76 = v170;
        }

        else
        {
        }

        (*(v76 + 8))(v166, v64);
        (*(v162 + 8))(v156, v163);
        return;
      }

      if (v72 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.external<A><A1>(_:))
      {
        (*(v170 + 8))(v67, v64);
        (*(v162 + 8))(v156, v163);
        (*(v70 + 8))(v69, v71);
        return;
      }

      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (v39 == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
  {
    (*(v35 + 96))(v37, v34);
    v46 = v162;
    v47 = v163;
    (*(v162 + 32))(v163, v37, v167);
    v48 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
    if (!v48)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v49 = v1;
    v50 = v48;
    v51 = v156;
    TTRICollectionViewTreeBackedDiffableDataSource.targetParent(for:)();

    v52 = v170;
    v53 = v169;
    v54 = (*(v170 + 48))(v51, 1, v169);
    v55 = v171;
    v56 = v161;
    v57 = v168;
    if (v54 == 1)
    {
      (*(v46 + 8))(v47, v167);
      v43 = &unk_100771B40;
      v44 = &unk_10062FB70;
      v45 = v51;
      goto LABEL_9;
    }

    v88 = (*(v52 + 32))(v168, v51, v53);
    __chkstk_darwin(v88);
    *(&v142 - 2) = v49;
    v89 = v148;
    TTRICollectionViewDropCommitCoordinator.draggedItemsForCommitting<A>(transformItemID:)();
    v90 = v164;
    v91 = v165;
    v92 = (*(v164 + 88))(v89, v165);
    if (v92 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.local<A><A1>(_:))
    {
      (*(v90 + 96))(v89, v91);
      v93 = *v89;
      v94 = v89[1];
      sub_1004382F0(v94, v57);
      if (v95)
      {

        (*(v170 + 8))(v57, v169);
LABEL_54:
        (*(v46 + 8))(v163, v167);
        return;
      }

      v160 = v93;
      v104 = v170;
      v105 = v154;
      v106 = v169;
      (*(v170 + 16))(v154, v57, v169);
      (*(v104 + 56))(v105, 0, 1, v106);
      sub_100439410(v94, v105, 0, 1, 0);
      v108 = v107;

      sub_1000079B4(v105, &unk_100771B40, &unk_10062FB70);
      if ((v108 & 1) == 0)
      {

        (*(v104 + 8))(v57, v106);
        goto LABEL_54;
      }

      v109 = *(v160 + 16);
      if (v109)
      {
        v166 = *(v145 + 16);
        v110 = v160 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
        v165 = *(v145 + 72);
        v164 = v145 + 8;
        v111 = (v147 + 8);
        v112 = v146;
        v113 = v143;
        v114 = v142;
        do
        {
          (v166)(v114, v110, v112);
          v115 = TTRICollectionViewDropCommitCoordinator.LocalDropItem.dragItem.getter();
          TTRICollectionViewDropCommitCoordinator.LocalDropItem.sourceItemID.getter();
          (*v164)(v114, v112);
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          TTRICollectionViewDropCommitCoordinator.drop(_:toItem:orIntoCenterOfItem:)();

          v116 = *v111;
          v117 = v171;
          (*v111)(v113, v171);
          v116(v56, v117);
          v110 += v165;
          --v109;
        }

        while (v109);

        v118 = v167;
        v46 = v162;
        v57 = v168;
        goto LABEL_61;
      }

      goto LABEL_59;
    }

    if (v92 != enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.external<A><A1>(_:))
    {
LABEL_66:
      if (qword_100767460 != -1)
      {
        swift_once();
      }

      sub_100003E30(v153, qword_10078D290);
      v84 = sub_100008E04(_swiftEmptyArrayStorage);
      v85 = sub_100008E04(_swiftEmptyArrayStorage);
      v86 = "Unknown dragged items";
      v87 = 21;
LABEL_69:
      sub_1003F9818(v86, v87, 2uLL, v84, v85);
      __break(1u);
      return;
    }

    (*(v90 + 96))(v89, v91);
    v102 = *v89;
    if (sub_1004B1A10(v102))
    {
      v103 = sub_10043ABFC(v102, v57);
    }

    else
    {
      v103 = sub_10043A364(v102, v57);
    }

    v119 = v103;

    if (v119 >> 62)
    {
      v120 = _CocoaArrayWrapper.endIndex.getter();
      if (v120)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v120)
      {
LABEL_39:
        if (v120 < 1)
        {
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if ((v119 & 0xC000000000000001) != 0)
        {
          v121 = 0;
          v122 = (v147 + 8);
          do
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            ++v121;
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            TTRICollectionViewDropCommitCoordinator.drop(_:intoCenterOfItem:)();
            swift_unknownObjectRelease();
            (*v122)(v56, v55);
          }

          while (v120 != v121);
        }

        else
        {
          v139 = (v147 + 8);
          v140 = 32;
          do
          {
            v141 = *(v119 + v140);
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            TTRICollectionViewDropCommitCoordinator.drop(_:intoCenterOfItem:)();

            (*v139)(v56, v55);
            v140 += 8;
            --v120;
          }

          while (v120);
        }

        v46 = v162;
        goto LABEL_60;
      }
    }

LABEL_59:

LABEL_60:
    v118 = v167;
LABEL_61:
    (*(v170 + 8))(v57, v169);
    (*(v46 + 8))(v163, v118);
    return;
  }

  if (v39 == enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
  {
    (*(v35 + 8))(v37, v34);
    return;
  }

  if (v39 != enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
  {
    if (qword_100767460 != -1)
    {
      swift_once();
    }

    sub_100003E30(v153, qword_10078D290);
    v84 = sub_100008E04(_swiftEmptyArrayStorage);
    v85 = sub_100008E04(_swiftEmptyArrayStorage);
    v86 = "Unknown drop destination";
    v87 = 24;
    goto LABEL_69;
  }
}

void sub_10056A27C()
{
  v1 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dropExceedsMaximumNumberOfPinnedListsTracker;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dropExceedsMaximumNumberOfPinnedListsTracker);
  if (*(v2 + 16) == 1)
  {
    sub_10043FA6C();
    v2 = *(v0 + v1);
  }

  *(v2 + 16) = 0;
}

void sub_10056A2D8(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Tip();
  v88 = *(v2 - 8);
  __chkstk_darwin(v2);
  v87 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v93 = *(v4 - 8);
  v94 = v4;
  __chkstk_darwin(v4);
  v92 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v96 = *(v6 - 8);
  v97 = v6;
  __chkstk_darwin(v6);
  v95 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v100 = *(v8 - 8);
  v101 = v8;
  __chkstk_darwin(v8);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v98 = *(v11 - 8);
  v99 = v11;
  __chkstk_darwin(v11);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v85 = *(v14 - 8);
  v86 = v14;
  __chkstk_darwin(v14);
  v84 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRPermissionConfiguration.Header();
  v90 = *(v16 - 8);
  v91 = v16;
  __chkstk_darwin(v16);
  v89 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v18 - 8);
  v20 = &v83 - v19;
  v21 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  __chkstk_darwin(v28);
  v102 = &v83 - v29;
  v31 = __chkstk_darwin(v30);
  v103 = &v83 - v32;
  v33 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (!v33)
  {
    __break(1u);
LABEL_38:
    (*(v24 + 1))(v27, v1, v31);
    goto LABEL_39;
  }

  v34 = v33;
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000079B4(v20, &unk_100771B40, &unk_10062FB70);
    return;
  }

  v83 = v2;
  v35 = v103;
  (*(v22 + 32))(v103, v20, v21);
  v36 = v21;
  v37 = *(v22 + 16);
  v38 = v102;
  v37(v102, v35, v36);
  v39 = (*(v22 + 88))(v38, v36);
  if (v39 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    v40 = *(v22 + 8);
    v40(v35, v36);
    v37(v24, v38, v36);
    (*(v22 + 96))(v24, v36);
    v41 = type metadata accessor for UUID();
    (*(*(v41 - 8) + 8))(v24, v41);
LABEL_9:
    v40(v38, v36);
    return;
  }

  v42 = v36;
  if (v39 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v39 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
LABEL_8:
    v40 = *(v22 + 8);
    v40(v103, v36);
    goto LABEL_9;
  }

  if (v39 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    v37(v24, v38, v36);
    (*(v22 + 96))(v24, v36);
    v44 = v98;
    v43 = v99;
    (*(v98 + 32))(v13, v24, v99);
    TTRAccountsListsViewModel.SmartList.type.getter();
    TTRListType.PredefinedSmartListType.longTitle.getter();
    (*(v100 + 8))(v10, v101);
    (*(v44 + 8))(v13, v43);
    v45 = *(v22 + 8);
    v45(v103, v36);
    v45(v38, v36);
    return;
  }

  if (v39 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_8;
  }

  if (v39 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v39 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    v46 = v103;
    v37(v24, v38, v36);
    v47 = v22;
    (*(v22 + 96))(v24, v36);
    v49 = v95;
    v48 = v96;
    v50 = v97;
    (*(v96 + 32))(v95, v24, v97);
    TTRAccountsListsViewModel.List.name.getter();
    (*(v48 + 8))(v49, v50);
    v51 = *(v47 + 8);
    v51(v46, v36);
    v51(v38, v36);
    return;
  }

  if (v39 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    v52 = v38;
    v53 = v36;
    v37(v24, v52, v36);
    v54 = v22;
    (*(v22 + 96))(v24, v36);
    v55 = v92;
    v56 = v93;
    v57 = v94;
    (*(v93 + 32))(v92, v24, v94);
    static TTRAccesibility.AccountsList.Format.GroupName.getter();
    sub_100058000(&unk_100786CB0, &qword_100636EF0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_10062D400;
    v59 = TTRAccountsListsViewModel.Group.name.getter();
    v61 = v60;
    *(v58 + 56) = &type metadata for String;
    *(v58 + 64) = sub_10005C390();
    *(v58 + 32) = v59;
    *(v58 + 40) = v61;
    String.init(format:_:)();

    (*(v56 + 8))(v55, v57);
    v62 = *(v54 + 8);
    v62(v103, v53);
    v62(v102, v53);
    return;
  }

  if (v39 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:))
  {
    goto LABEL_8;
  }

  if (v39 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:))
  {
    v63 = v36;
    v37(v27, v38, v36);
    (*(v22 + 96))(v27, v36);
    v1 = type metadata accessor for TTRAccountsListsViewModel.PermissionRequest();
    v24 = *(v1 - 8);
    v64 = (*(v24 + 11))(v27, v1);
    if (v64 == enum case for TTRAccountsListsViewModel.PermissionRequest.header(_:))
    {
      (*(v24 + 12))(v27, v1);
      v66 = v89;
      v65 = v90;
      v67 = v91;
      (*(v90 + 32))(v89, v27, v91);
      TTRPermissionConfiguration.Header.title.getter();
      (*(v65 + 8))(v66, v67);
      v68 = *(v22 + 8);
      v68(v103, v63);
      v68(v38, v63);
      return;
    }

    if (v64 == enum case for TTRAccountsListsViewModel.PermissionRequest.primaryButton(_:))
    {
      (*(v24 + 12))(v27, v1);
      v76 = v84;
      v75 = v85;
      v77 = v86;
      (*(v85 + 32))(v84, v27, v86);
      TTRPermissionConfiguration.PrimaryButton.title.getter();
      (*(v75 + 8))(v76, v77);
      v72 = *(v22 + 8);
      v72(v103, v42);
      v73 = v38;
      v74 = v42;
      goto LABEL_28;
    }

    if (v64 == enum case for TTRAccountsListsViewModel.PermissionRequest.combined(_:))
    {
      v40 = *(v22 + 8);
      v40(v103, v42);
      v79 = v1;
      v36 = v42;
      (*(v24 + 1))(v27, v79);
      goto LABEL_9;
    }

    goto LABEL_38;
  }

  if (v39 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:))
  {
    goto LABEL_8;
  }

  if (v39 == enum case for TTRAccountsListsViewModel.Item.tip(_:))
  {
    v37(v24, v38, v36);
    (*(v22 + 96))(v24, v36);
    v70 = v87;
    v69 = v88;
    v71 = v83;
    (*(v88 + 32))(v87, v24, v83);
    TTRAccountsListsViewModel.Tip.name.getter();
    (*(v69 + 8))(v70, v71);
    v72 = *(v22 + 8);
    v72(v103, v36);
    v73 = v38;
    v74 = v36;
LABEL_28:
    v72(v73, v74);
    return;
  }

  if (v39 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
  {
    goto LABEL_8;
  }

  if (v39 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v39 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:) || v39 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v39 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    v78 = *(v22 + 8);
    v78(v103, v36);
    v78(v102, v36);
    return;
  }

LABEL_39:
  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  sub_100003E30(v80, qword_10078D290);
  v81 = sub_100008E04(_swiftEmptyArrayStorage);
  v82 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown item type", 17, 2uLL, v81, v82);
  __break(1u);
}

void sub_10056B138(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v31 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v19)
  {
    v20 = v19;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1000079B4(v11, &unk_100771B40, &unk_10062FB70);
      return;
    }

    (*(v13 + 32))(v18, v11, v12);
    (*(v13 + 16))(v15, v18, v12);
    v21 = (*(v13 + 88))(v15, v12);
    if (v21 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
    {
      (*(v13 + 8))(v18, v12);
      (*(v13 + 96))(v15, v12);
      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 8))(v15, v22);
      return;
    }

    if (v21 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_10;
    }

    if (v21 == enum case for TTRAccountsListsViewModel.Item.list(_:))
    {
      (*(v13 + 96))(v15, v12);
      v11 = v32;
      a1 = v33;
      (*(v32 + 4))(v8, v15, v33);
      TTRAccountsListsViewModel.List.pinState.getter();
      v24 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
      (*(v31 + 8))(v5, v3);
      if (v24)
      {
        (*(v11 + 1))(v8, a1);
LABEL_14:
        (*(v13 + 8))(v18, v12);
        return;
      }
    }

    else
    {
      if (v21 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
      {
LABEL_10:
        v23 = *(v13 + 8);
        v23(v18, v12);
        v23(v15, v12);
        return;
      }

      if (v21 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
      {
        goto LABEL_14;
      }

      if (qword_100767460 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100003E30(v25, qword_10078D290);
      v12 = _swiftEmptyArrayStorage;
      v26 = sub_100008E04(_swiftEmptyArrayStorage);
      v27 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2uLL, v26, v27);
      __break(1u);
    }

    v28._object = 0x8000000100671790;
    v29._countAndFlagsBits = 0xD000000000000035;
    v29._object = 0x80000001006717B0;
    v28._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v28, v29);
    (*(v11 + 1))(v8, a1);
    (*(v13 + 8))(v18, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10056B878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10056B8E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10056B948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10056B9A8(uint64_t a1)
{
  v55 = a1;
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
  v54 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  v59 = *(v56 - 8);
  __chkstk_darwin(v56);
  v57 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v47 - v10;
  v11 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v47 - v12);
  v14 = type metadata accessor for REMHashtagLabelSpecifier();
  v60 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  __chkstk_darwin(v20);
  v22 = &v47 - v21;
  v53 = v1;
  sub_10055A0F4(v13);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    sub_1000079B4(v13, &unk_10076B7C0, &unk_10062FBA0);
    return;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10056B948(v13, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  v23 = v60;
  (*(v60 + 32))(v22, v13, v14);
  v24 = *(v23 + 16);
  v24(v19, v22, v14);
  v25 = (*(v23 + 88))(v19, v14);
  if (v25 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    if (v25 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v25 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      (*(v23 + 8))(v22, v14);
      return;
    }

    if (qword_100767460 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100003E30(v42, qword_10078D290);
    v43 = sub_100008E04(_swiftEmptyArrayStorage);
    v44 = sub_100008E04(_swiftEmptyArrayStorage);
    v45 = "Unknown selection type";
    goto LABEL_23;
  }

  v48 = v25;
  v49 = v24;
  (*(v23 + 96))(v19, v14);
  v26 = *v19;
  v50 = *(v19 + 1);
  v51 = v26;
  v47 = sub_100058000(&qword_10076B830, &qword_100630550);
  v27 = v56;
  (*(v59 + 32))(v58, &v19[*(v47 + 64)], v56);
  v28 = v54;
  (*(v54 + 16))(v7, v55, v5);
  v29 = (*(v28 + 88))(v7, v5);
  if (v29 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.any(_:))
  {
    v30 = &enum case for REMHashtagLabelSpecifier.Operation.or(_:);
    v31 = v59;
    v32 = v57;
    goto LABEL_13;
  }

  v32 = v57;
  if (v29 != enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.all(_:))
  {
    if (qword_100767460 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100003E30(v46, qword_10078D290);
    v43 = sub_100008E04(_swiftEmptyArrayStorage);
    v44 = sub_100008E04(_swiftEmptyArrayStorage);
    v45 = "Unknown operation type";
LABEL_23:
    sub_1003F9818(v45, 22, 2uLL, v43, v44);
    __break(1u);
    return;
  }

  v30 = &enum case for REMHashtagLabelSpecifier.Operation.and(_:);
  v31 = v59;
LABEL_13:
  v33 = v58;
  (*(v31 + 104))(v32, *v30, v27);
  sub_100014F04(&qword_10076B838, &type metadata accessor for REMHashtagLabelSpecifier.Operation, &protocol conformance descriptor for REMHashtagLabelSpecifier.Operation);
  v34 = v33;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {

    v35 = *(v31 + 8);
    v35(v32, v27);
    v35(v33, v27);
    (*(v60 + 8))(v22, v14);
  }

  else
  {
    v36 = *(v47 + 64);
    v37 = v50;
    *v16 = v51;
    *(v16 + 1) = v37;
    (*(v31 + 16))(&v16[v36], v32, v27);
    v38 = v60;
    (*(v60 + 104))(v16, v48, v14);
    v39 = v52;
    v49(v52, v16, v14);
    swift_storeEnumTagMultiPayload();
    sub_10055DF60(v39, 16, 0);
    sub_10056B948(v39, type metadata accessor for TTRIAccountsListsSelection);
    v40 = *(v38 + 8);
    v40(v16, v14);
    v41 = *(v31 + 8);
    v41(v57, v27);
    v41(v34, v27);
    v40(v22, v14);
  }
}

uint64_t sub_10056C318()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_10056C3F0()
{
  result = qword_10078D628;
  if (!qword_10078D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078D628);
  }

  return result;
}

uint64_t sub_10056C470@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1000046FC(a1, v8);
  if (!swift_dynamicCast())
  {
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  AnyHashable.base.getter();

  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_10056C570(uint64_t a1)
{
  swift_getObjectType();
  sub_1001AAABC(a1, v5);
  if (!v6)
  {
    sub_10000B070(v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = static AnyHashable.== infix(_:_:)();

  return v2 & 1;
}

id sub_10056C780(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleInteraction] = 0;
  v10 = OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleElementIdentifier;
  *&v4[v10] = [objc_allocWithZone(NSUUID) init];
  *&v4[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_ovalLayer] = 0;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_10056C864();

  return v11;
}

void sub_10056C864()
{
  v6 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"tapGestureAction:"];
  [v6 setDelegate:v0];
  [v0 addGestureRecognizer:v6];
  v1 = [objc_allocWithZone(PKScribbleInteraction) init];
  v2 = OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleInteraction;
  v3 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleInteraction];
  *&v0[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleInteraction] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v4 setDelegate:v0];

  v5 = *&v0[v2];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v5 setElementSource:v0];
  if (!*&v0[v2])
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v0 addInteraction:?];
}

id sub_10056C9A8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleInteraction] = 0;
  v4 = OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleElementIdentifier;
  *&v1[v4] = [objc_allocWithZone(NSUUID) init];
  *&v1[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_ovalLayer] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_10056C864();
  }

  return v6;
}

BOOL sub_10056CFF0(void *a1)
{
  if ([a1 type] == 2)
  {
    return 0;
  }

  sub_100003540(0, &qword_10078D788, UIScrollView_ptr);
  UIView.ancestorView<A>(ofType:)();
  if (!v26)
  {
    return 1;
  }

  v3 = v26;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 safeAreaInsets];
  v14 = sub_100068328(v5, v7, v9, v11, v12, v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [a1 locationInView:v3];
  v22 = v21;
  v24 = v23;

  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  v27.x = v22;
  v27.y = v24;
  v25 = CGRectContainsPoint(v28, v27);

  return v25;
}

double sub_10056D130(uint64_t a1)
{
  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleElementIdentifier];
    sub_100003540(0, &qword_10078D778, NSUUID_ptr);
    v7 = v6;
    swift_unknownObjectRetain();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      [v2 bounds];
      return v9;
    }
  }

  return v4;
}

double sub_10056D21C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = *(a2 + OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleElementIdentifier);
    sub_100003540(0, &qword_10078D778, NSUUID_ptr);
    swift_unknownObjectRetain();
    _Block_copy(a3);
    v9 = v8;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      v11 = a2 + OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        (*(v12 + 16))(a2, ObjectType, v12);
        swift_unknownObjectRelease();
        v14 = swift_allocObject();
        *(v14 + 16) = sub_10056D4A0;
        *(v14 + 24) = v5;

        v15 = zalgo.getter();
        dispatch thunk of Promise.then<A>(on:closure:)();

        v16 = swift_allocObject();
        *(v16 + 16) = sub_10056D4A0;
        *(v16 + 24) = v5;

        v18 = zalgo.getter();
        dispatch thunk of Promise.error(on:closure:)();

        return result;
      }
    }
  }

  else
  {
    _Block_copy(a3);
  }

  a3[2](a3, 0);

  return result;
}

id sub_10056D524(uint64_t *a1, void **a2, void *a3, uint64_t a4)
{
  v88 = a4;
  v90 = a1;
  v6 = type metadata accessor for TTRRemindersListLayout();
  v94 = *(v6 - 8);
  v95 = v6;
  __chkstk_darwin(v6);
  v82 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v81 - v9;
  __chkstk_darwin(v10);
  v81 = &v81 - v11;
  __chkstk_darwin(v12);
  v91 = &v81 - v13;
  v14 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v14 - 8);
  v86 = (&v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v84 = &v81 - v17;
  v85 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v85);
  v93 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for TTRRemindersListDefaultListType();
  v83 = *(v87 - 1);
  __chkstk_darwin(v87);
  v20 = (&v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v21);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v24 - 8);
  v26 = (&v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v28 = __chkstk_darwin(v27);
  v30 = *a2;
  (*(v31 + 104))(&v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for REMRemindersListDataView.SortingStyle.default(_:), v28);
  type metadata accessor for TTRShowRecentlyDeletedDataModelSource();
  swift_allocObject();
  v32 = v30;
  v33 = a3;
  v92 = TTRShowRecentlyDeletedDataModelSource.init(store:account:sortingStyle:)();
  sub_10010BD5C(a2, v26, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v102[0] = _swiftEmptyArrayStorage;
  sub_10056E4B0(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes, &protocol conformance descriptor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218, &unk_1006302E0);
  sub_10010BA44();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *v20 = [v33 remObjectID];
  (v83[13])(v20, enum case for TTRRemindersListDefaultListType.cloudKitListWithAccountID(_:), v87);
  sub_10007786C(v26, v23, v20, v102);
  v34 = v102[0];
  type metadata accessor for TTRShowRecentlyDeletedViewModelSource(0);
  v35 = swift_allocObject();
  v36 = v92;

  v87 = v34;
  v37 = sub_10056E0EC(v36, v87, v35);
  sub_10010BD5C(a2, v26, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v102, v99);
  v38 = sub_10056E4B0(&qword_100781108, type metadata accessor for TTRShowRecentlyDeletedViewModelSource, &unk_100646FD0);
  v39 = v93;
  sub_10010BD5C(v26, v93, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v40 = v85;
  sub_10010BCAC(v99, v39 + *(v85 + 28));
  v41 = (v39 + *(v40 + 32));
  *v41 = v37;
  v41[1] = v38;
  v42 = v99[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v101, v98, &qword_100769608, &unk_1006302F0);
  v44 = *(v98[5] + 8);
  *(v43 + 32) = v98[4];
  *(v43 + 40) = v44;
  sub_10000794C(&v100, v96, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v45 = v42;
  swift_unknownObjectRelease();
  *(v43 + 48) = v97;
  sub_100004758(v96);
  sub_100004758(v98);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v46 = swift_allocObject();
  v47 = sub_1003A7BC8(v45, v37, v43, v46);

  sub_10010BD08(v99);
  sub_10010BE0C(v26, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v48 = *(v40 + 36);
  v83 = v47;
  *(v39 + v48) = v47;
  v49 = v84;
  sub_100078BBC(v84);
  v85 = type metadata accessor for TTRIShowRecentlyDeletedPresenter(0);
  v50 = swift_allocObject();
  v51 = (v50 + OBJC_IVAR____TtC9Reminders32TTRIShowRecentlyDeletedPresenter_dataModelSource);
  *v51 = v36;
  v51[1] = &protocol witness table for TTRShowRecentlyDeletedDataModelSource;
  v52 = v86;
  sub_10010BD5C(v49, v86, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);

  v53 = v88;
  swift_unknownObjectRetain();
  v54 = sub_1003A56E4(v52, v53, v50);
  sub_10010BE0C(v49, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v55 = *(v54 + 144);
  ObjectType = swift_getObjectType();
  v57 = *(v55 + 112);

  if (v57(ObjectType, v55))
  {
    swift_getObjectType();
    v58 = v81;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v59 = v91;
    (*(v94 + 32))(v91, v58, v95);
  }

  else
  {
    v59 = v91;
    (*(v94 + 104))(v91, enum case for TTRRemindersListLayout.list(_:), v95);
  }

  v60 = sub_1003A4A1C(v59, v54);
  v86 = v61;
  v63 = v62;
  v65 = v64;
  (*(v94 + 8))(v59, v95);
  v88 = swift_getObjectType();
  *(v54 + 24) = *(v65 + 8);
  v91 = v63;
  swift_unknownObjectWeakAssign();
  v66 = *(v54 + 144);
  v67 = swift_getObjectType();
  v68 = *(v66 + 112);

  if (v68(v67, v66))
  {
    swift_getObjectType();
    v69 = v82;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v70 = v89;
    (*(v94 + 32))(v89, v69, v95);
  }

  else
  {

    v70 = v89;
    (*(v94 + 104))(v89, enum case for TTRRemindersListLayout.list(_:), v95);
  }

  v71 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v72 = v60;
  v73 = sub_1003A7BFC(v54, v72, v86, v70, 0, 1, 0, v71);

  v74 = *(v65 + 32);
  v75 = v73;
  v74(v73, &off_100723D78, v88, v65);
  sub_10056E4B0(&qword_10078D790, type metadata accessor for TTRIShowRecentlyDeletedPresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10056E4B0(&qword_10078D798, type metadata accessor for TTRShowRecentlyDeletedViewModelSource, &unk_100647480);

  v76 = v75;
  dispatch thunk of TTRShowRecentlyDeletedDataModelSource.delegate.setter();

  sub_10056FEB0(v77, &off_10071A9B0);

  v83[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v103, v99, &qword_100769600, &qword_10062E0A0);
  v78 = v99[4];
  swift_unknownObjectRelease();
  *(v78 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v99);
  sub_10000794C(&v104, v99, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_10056E4B0(&qword_10078D7A0, type metadata accessor for TTRIShowRecentlyDeletedPresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v99);
  dispatch thunk of TTRShowRecentlyDeletedDataModelSource.start()();
  v79 = v90;
  v90[3] = v85;
  v79[4] = &off_10072EC98;
  swift_unknownObjectRelease();

  *v79 = v54;
  sub_10010BE0C(v93, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v102);
  return v76;
}

uint64_t sub_10056E0EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v32[0] = a2;
  v32[1] = v5;
  v6 = type metadata accessor for REMAnalyticsEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v10 - 8);
  v12 = v32 - v11;
  v13 = type metadata accessor for TTRListType.SortingCapability();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource_listRepresentation) = 0;
  v17 = a3 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource_remindersCount;
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  *(a3 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  v18 = (a3 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource_recentlyDeletedDataModelSource);
  *v18 = a1;
  v18[1] = &protocol witness table for TTRShowRecentlyDeletedDataModelSource;
  v19 = enum case for REMRemindersListDataView.SortingStyle.default(_:);
  v20 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  (*(*(v20 - 8) + 104))(v16, v19, v20);
  (*(v14 + 104))(v16, enum case for TTRListType.SortingCapability.notSupported(_:), v13);

  v22 = sub_1003A649C(v21, v32[0], v16, a3);

  sub_10059F6F0(v12);
  sub_10056F540(v12);
  sub_10010BE6C(v12);
  type metadata accessor for TTRUserDefaults();
  v23 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v24 = sub_100058000(&qword_100770980, &unk_1006339B0);
  v25 = &v9[*(v24 + 48)];
  v26 = &v9[*(v24 + 80)];
  v27 = enum case for REMRemindersOpenUserOperation.recentlyDeleted(_:);
  v28 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v28 - 8) + 104))(v9, v27, v28);
  *v25 = TTRUserDefaults.activitySessionId.getter();
  v25[1] = v29;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v26 = _typeName(_:qualified:)();
  v26[1] = v30;
  (*(v7 + 104))(v9, enum case for REMAnalyticsEvent.openListUserOperation(_:), v6);
  REMAnalyticsManager.post(event:)();

  (*(v7 + 8))(v9, v6);
  return v22;
}

uint64_t sub_10056E4B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10056E4F8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = sub_100058000(&qword_100775FD8, &qword_100637450);
  __chkstk_darwin(v10 - 8);
  v12 = v43 - v11;
  v13 = type metadata accessor for TTRIEditSectionsRouter();
  v44[3] = v13;
  v44[4] = &off_100731E98;
  v44[0] = a3;
  type metadata accessor for TTRIEditSectionsPresenter(0);
  v14 = swift_allocObject();
  v15 = sub_10000AE84(v44, v13);
  v16 = __chkstk_darwin(v15);
  v18 = (v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = *v18;
  v43[3] = v13;
  v43[4] = &off_100731E98;
  v43[0] = v20;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 40) = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_viewModel;
  type metadata accessor for TTREditSectionsViewModel();
  *(v14 + v21) = TTREditSectionsViewModel.__allocating_init(shouldHideEmptySections:sections:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:)();
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentRemListSection) = 0;
  v22 = (v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentCanonicalName);
  *v22 = 0;
  v22[1] = 0;
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_hideEmptySectionsToggleChanged) = 0;
  v23 = (v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentSectionDisplayName);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionDisplayName);
  *v24 = 0;
  v24[1] = 0;
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionOrdering) = 0;
  v25 = sub_100058000(&qword_100775FE0, &unk_1006364D0);
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  sub_10023F1A0(_swiftEmptyArrayStorage);
  TTREditSectionsViewModel.OptimisticApply.init(sectionOrdering:renamedSections:)();
  v26 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_list;
  v27 = type metadata accessor for TTRListOrCustomSmartList();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v14 + v26, a1, v27);
  sub_10000B0D8(a2, v14 + 88);
  sub_10000B0D8(v43, v14 + 48);
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_store) = a4;
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_undoManager) = a5;
  v29 = a4;
  v30 = a5;
  v31 = TTRListOrCustomSmartList.groceryContext.getter();
  if (v31)
  {
    v32 = v31;
    v33 = [v31 shouldCategorizeGroceryItems];
  }

  else
  {
    v33 = 0;
  }

  v34 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_shouldCategorizeGroceryItems;
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_shouldCategorizeGroceryItems) = v33;
  v35 = TTRListOrCustomSmartList.autoCategorizationContext.getter();
  if (v35)
  {
    v36 = v35;
    v37 = [v35 shouldAutoCategorizeItems];
  }

  else
  {
    v37 = 0;
  }

  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_shouldAutoCategorizeItems) = v37;
  if ((*(v14 + v34) & 1) != 0 || v37)
  {
    type metadata accessor for TTRUserDefaults();
    v38 = static TTRUserDefaults.appUserDefaults.getter();
    v39 = TTRListOrCustomSmartList.objectID.getter();
    v40 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)();

    *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_shouldHideEmptySections) = v40 & 1;
  }

  else
  {
    *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_shouldHideEmptySections) = 0;
  }

  type metadata accessor for TTRMainActorDeferredAction();
  swift_allocObject();
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_deferredAction) = TTRMainActorDeferredAction.init()();
  sub_10056F1F4(&qword_10078D7D0, &unk_100636468);

  TTRMainActorDeferredAction.delegate.setter();

  v41 = sub_10023D61C();

  sub_100004758(a2);
  (*(v28 + 8))(a1, v27);
  sub_100004758(v43);
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_viewModel) = v41;

  sub_100004758(v44);
  return v14;
}

id sub_10056E9CC(uint64_t a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_dataSource] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_lastConsumedViewModel] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController____lazy_storage___cancelButton] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController____lazy_storage___doneButton] = 0;
  v15 = &a3[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_presenter];
  *v15 = a1;
  *(v15 + 1) = &off_10071CBC0;
  *&a3[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_localUndoManager] = a2;
  sub_10056F1A8();
  (*(v8 + 104))(v10, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v7);
  v16 = a2;
  UICollectionLayoutListConfiguration.init(appearance:)();
  v17 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v12 + 8))(v14, v11);
  v20.receiver = a3;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, "initWithCollectionViewLayout:", v17);

  return v18;
}

id sub_10056EC00(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v62 = a4;
  v8 = type metadata accessor for TTRListOrCustomSmartList();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = (&v55 - v13);
  v58 = *(v9 + 16);
  v59 = a1;
  v58(&v55 - v13, a1, v8, v12);
  v15 = (*(v9 + 88))(v14, v8);
  v57 = a3;
  if (v15 == enum case for TTRListOrCustomSmartList.list(_:))
  {
    (*(v9 + 96))(v14, v8);
    v16 = *v14;
    v17 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
    v18 = v16;
    v19 = static TTRInteractorEditsCommitting<>.async.getter();
    v67 = v17;
    v68 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
    v66[0] = v19;
    v20 = type metadata accessor for TTRUserDefaults();
    v21 = static TTRUserDefaults.appUserDefaults.getter();
    v64 = v20;
    v65 = &protocol witness table for TTRUserDefaults;
    v63[0] = v21;
    type metadata accessor for TTREditSectionsListEditor();
    swift_allocObject();
    v22 = a3;
    v23 = TTREditSectionsListEditor.init(list:undoManager:committer:userDefaults:)();

    v24 = static TTRInteractorEditsCommitting<>.async.getter();
    v67 = v17;
    v68 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
    v66[0] = v24;
    v63[0] = v23;
    v25 = &qword_100646BE8;
    v26 = sub_100058000(&qword_10078D7C0, &qword_100646BE8);
    swift_allocObject();
    v27 = v22;
    v28 = a2;
    v29 = v18;
    v30 = v28;
    v31 = TTREditSectionsInteractor.init(editSectionsEditor:store:undoManager:committer:)();
    v67 = v26;
    v32 = &unk_10078D7C8;
    v33 = &qword_10078D7C0;
LABEL_5:
    v68 = sub_10056F154(v32, v33, v25);

    v66[0] = v31;
    type metadata accessor for TTRIEditSectionsRouter();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v46 = v60;
    (v58)(v60, v59, v8);
    sub_10000B0D8(v66, v63);
    v47 = v57;
    v48 = v28;

    v49 = sub_10056E4F8(v46, v63, v45, v48, v47);
    v50 = objc_allocWithZone(type metadata accessor for TTRIEditSectionsViewController());
    v51 = v47;

    v53 = sub_10056E9CC(v52, v51, v50);
    sub_10056F1F4(&qword_10078D7B8, &unk_100636490);
    sub_10000AE84(v66, v67);

    dispatch thunk of TTREditSectionsInteractorType.delegate.setter();
    *(v49 + 24) = &off_10071F620;
    swift_unknownObjectWeakAssign();
    *(v49 + 40) = v61;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    sub_10000C36C(v66, v67);
    dispatch thunk of TTREditSectionsInteractorType.start()();

    sub_100004758(v66);
    return v53;
  }

  v56 = a2;
  if (v15 == enum case for TTRListOrCustomSmartList.customSmartList(_:))
  {
    (*(v9 + 96))(v14, v8);
    v34 = *v14;
    v35 = type metadata accessor for TTRUserDefaults();
    v29 = v34;
    v36 = static TTRUserDefaults.appUserDefaults.getter();
    v67 = v35;
    v68 = &protocol witness table for TTRUserDefaults;
    v66[0] = v36;
    v37 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
    v38 = static TTRInteractorEditsCommitting<>.async.getter();
    v64 = v37;
    v65 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
    v63[0] = v38;
    type metadata accessor for TTREditSectionsSmartListEditor();
    swift_allocObject();
    v39 = a3;
    v40 = TTREditSectionsSmartListEditor.init(list:undoManager:committer:userDefaults:)();

    v41 = static TTRInteractorEditsCommitting<>.async.getter();
    v67 = v37;
    v68 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
    v66[0] = v41;
    v63[0] = v40;
    v25 = &qword_100646BE0;
    v42 = sub_100058000(&qword_10078D7A8, &qword_100646BE0);
    swift_allocObject();
    v43 = v39;
    v28 = v56;
    v44 = v56;
    v31 = TTREditSectionsInteractor.init(editSectionsEditor:store:undoManager:committer:)();
    v67 = v42;
    v32 = &unk_10078D7B0;
    v33 = &qword_10078D7A8;
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10056F154(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10005D20C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10056F1A8()
{
  result = qword_10077BFE0;
  if (!qword_10077BFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10077BFE0);
  }

  return result;
}

uint64_t sub_10056F1F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRIEditSectionsPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10056F238(uint64_t a1)
{
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v28 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v25 = result;
    v26 = v4;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v28 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v25 = result;
  v26 = v5;
  v27 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v25;
    v9 = v26;
    v11 = v27;
    sub_10057E72C(v25, v26, v27, a1);
    v13 = v12;
    REMObjectID.codable.getter();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v23)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_100058000(&qword_10078E070, &qword_100647030);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v24, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_10000FBA0(v25, v26, v27);
        return v28;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v14 = (1 << *(a1 + 32));
      if (v10 >= v14)
      {
        goto LABEL_32;
      }

      v15 = v10 >> 6;
      v16 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v16 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v10 & 0x3F));
      if (v17)
      {
        v14 = (__clz(__rbit64(v17)) | v10 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (a1 + 64 + 8 * v15);
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_10000FBA0(v10, v9, 0);
            v14 = (__clz(__rbit64(v21)) + v18);
            goto LABEL_27;
          }
        }

        result = sub_10000FBA0(v10, v9, 0);
      }

LABEL_27:
      v25 = v14;
      v26 = v9;
      v27 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10056F540(uint64_t a1)
{
  v62 = sub_100058000(&qword_10078E078, &qword_100647038);
  __chkstk_darwin(v62);
  v64 = &v52 - v2;
  v3 = sub_100058000(&qword_100769E98, &unk_100640890);
  __chkstk_darwin(v3 - 8);
  v61 = &v52 - v4;
  v5 = type metadata accessor for TTRRemindersListLayout();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v52 - v9;
  v11 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v11 - 8);
  v58 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v57 = &v52 - v14;
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  __chkstk_darwin(v21);
  v56 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v52 - v24;
  v26 = a1;
  v28 = v27;
  sub_10000794C(v26, v20, &unk_10078A380, &qword_10062DE60);
  v29 = *(v28 + 48);
  if (v29(v20, 1, v21) == 1)
  {
    return sub_1000079B4(v20, &unk_10078A380, &qword_10062DE60);
  }

  v65 = v28;
  v31 = *(v28 + 32);
  v63 = v25;
  v53 = v31;
  v54 = v28 + 32;
  v31(v25, v20, v21);
  v32 = v66;
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.layoutContext.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v59[4](v10, v7, v60);
  }

  else
  {
    v59[13](v10, enum case for TTRRemindersListLayout.list(_:), v60);
  }

  v33 = v63;
  TTRRemindersListViewModel.ListInfo.listLayout.setter();

  TTRRemindersListCurrentTipCapability.visibleTip.getter();

  TTRRemindersListViewModel.ListInfo.tip.setter();
  v34 = v65;
  v35 = *(v65 + 16);
  v61 = (v65 + 16);
  v59 = v35;
  (v35)(v17, v33, v21);
  v36 = *(v34 + 56);
  v60 = v34 + 56;
  v55 = v36;
  v36(v17, 0, 1, v21);
  v37 = v32;
  v38 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  v39 = *(v62 + 48);
  v40 = v64;
  sub_10000794C(v17, v64, &unk_10078A380, &qword_10062DE60);
  v62 = v38;
  sub_10000794C(v37 + v38, v40 + v39, &unk_10078A380, &qword_10062DE60);
  if (v29(v40, 1, v21) == 1)
  {
    sub_1000079B4(v17, &unk_10078A380, &qword_10062DE60);
    if (v29((v40 + v39), 1, v21) == 1)
    {
      sub_1000079B4(v40, &unk_10078A380, &qword_10062DE60);
      return (*(v65 + 8))(v63, v21);
    }

    goto LABEL_11;
  }

  v41 = v57;
  sub_10000794C(v40, v57, &unk_10078A380, &qword_10062DE60);
  if (v29((v40 + v39), 1, v21) == 1)
  {
    sub_1000079B4(v17, &unk_10078A380, &qword_10062DE60);
    (*(v65 + 8))(v41, v21);
LABEL_11:
    sub_1000079B4(v40, &qword_10078E078, &qword_100647038);
    goto LABEL_12;
  }

  v49 = v56;
  v53(v56, v40 + v39, v21);
  sub_10059A488(&qword_10078E080, &type metadata accessor for TTRRemindersListViewModel.ListInfo, &protocol conformance descriptor for TTRRemindersListViewModel.ListInfo);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v65 + 8);
  v51(v49, v21);
  sub_1000079B4(v17, &unk_10078A380, &qword_10062DE60);
  v51(v41, v21);
  sub_1000079B4(v40, &unk_10078A380, &qword_10062DE60);
  if (v50)
  {
    return (v51)(v63, v21);
  }

LABEL_12:
  v42 = v58;
  v43 = v63;
  (v59)(v58, v63, v21);
  v55(v42, 0, 1, v21);
  v44 = v66;
  v45 = v62;
  swift_beginAccess();
  sub_10059A418(v42, v44 + v45);
  swift_endAccess();
  v46 = v44 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v47 = *(v46 + 8);
    ObjectType = swift_getObjectType();
    (*(v47 + 56))(v43, ObjectType, v47);
    swift_unknownObjectRelease();
  }

  return (*(v65 + 8))(v43, v21);
}

uint64_t sub_10056FD38()
{

  v1 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  v2 = type metadata accessor for TTRListType.SortingCapability();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10003B788(v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate);

  v3 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_listMessaging;
  v4 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo, &unk_10078A380, &qword_10062DE60);

  v5(v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedEmptyListMessaging, v4);

  return v0;
}

uint64_t sub_10056FEB0(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  *(v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = a1;
    v16 = *(v15 + 8);
    v17 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
    swift_beginAccess();
    sub_10000794C(v2 + v17, v10, &unk_10078A380, &qword_10062DE60);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1000079B4(v10, &unk_10078A380, &qword_10062DE60);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      ObjectType = swift_getObjectType();
      (*(v16 + 56))(v14, ObjectType, v16);
      (*(v12 + 8))(v14, v11);
    }

    v20 = swift_getObjectType();
    v21 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_listMessaging;
    swift_beginAccess();
    v22 = v2 + v21;
    v23 = v25;
    (*(v5 + 16))(v7, v22, v25);
    (*(v16 + 64))(v7, v20, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v7, v23);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100570224()
{
  sub_100058000(&qword_10076F6F0, &unk_100647170);
  type metadata accessor for TTRRemindersListViewModel.AssignmentData.VisibleElements();
  *(swift_allocObject() + 16) = xmmword_10062D400;
  static TTRRemindersListViewModel.AssignmentData.VisibleElements.avatar.getter();
  sub_10059A488(&qword_10076F6F8, &type metadata accessor for TTRRemindersListViewModel.AssignmentData.VisibleElements, &protocol conformance descriptor for TTRRemindersListViewModel.AssignmentData.VisibleElements);
  sub_100058000(&qword_10076F700, &unk_1006324F0);
  sub_10000E188(&qword_10076F708, &qword_10076F700, &unk_1006324F0, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

BOOL sub_100570398()
{
  swift_getObjectType();
  v0 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter();
  if (v0)
  {
    swift_unknownObjectRelease();
  }

  return v0 != 0;
}

uint64_t sub_1005703EC@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle.subtaskCount(_:);
  v4 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle();
  (*(*(v4 - 8) + 104))(a1, v3, v4);
  v5 = enum case for TTRRemindersListSubtaskDisplayStyle.fixed(_:);
  v6 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

void sub_1005704AC(uint64_t a1, __n128 a2)
{
  v32 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v6 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _swiftEmptyArrayStorage;
  v8 = *(a1 + 16);
  sub_1000C416C();
  if (!v8)
  {
LABEL_16:
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceBaseType.prefetchReminders(with:)();

    return;
  }

  v9 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v10 = (v3 + 88);
  v11 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
  v12 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
  v13 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
  v29 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
  v27 = (v6 + 32);
  v28 = (v3 + 96);
  v26 = (v6 + 8);
  v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v15 = *(v9 + 72);
  v25 = v15;
  while (1)
  {
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v16 = v32;
    v17 = (*v10)(v5, v32);
    if (v17 == v11 || v17 == v12 || v17 == v13)
    {
      v20 = v12;
      v21 = v11;
      (*v28)(v5, v16);
      v22 = v30;
      v23 = v31;
      (*v27)(v30, v5, v31);
      TTRRemindersListViewModel.ReminderID.objectID.getter();
      (*v26)(v22, v23);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24[1] = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v11 = v21;
      v12 = v20;
      v15 = v25;
      goto LABEL_4;
    }

    if (v17 != v29)
    {
      break;
    }

LABEL_4:
    v14 += v15;
    if (!--v8)
    {
      goto LABEL_16;
    }
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_100570810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v3 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle();
  v147 = *(v3 - 8);
  v148 = v3;
  __chkstk_darwin(v3);
  v144 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle();
  v145 = *(v5 - 8);
  v146 = v5;
  __chkstk_darwin(v5);
  v142 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100778EE8, &qword_100647150);
  __chkstk_darwin(v7 - 8);
  v143 = &v121 - v8;
  v9 = type metadata accessor for TTRReminderCellStyle();
  __chkstk_darwin(v9 - 8);
  v123 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for TTRRemindersListViewModel.Item();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v12 - 8);
  v122 = &v121 - v13;
  v14 = sub_100058000(&qword_10078E130, &qword_100647158);
  __chkstk_darwin(v14 - 8);
  v132 = &v121 - v15;
  v131 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v17 - 8);
  v138 = &v121 - v18;
  v19 = sub_100058000(&qword_10078E138, &unk_100647160);
  __chkstk_darwin(v19 - 8);
  v127 = &v121 - v20;
  v128 = type metadata accessor for TTRReminderAndComputedProperties();
  v136 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100058000(&unk_100786490, qword_100642278);
  __chkstk_darwin(v22 - 8);
  v139 = &v121 - v23;
  v141 = type metadata accessor for TTRReminderProtocolWithPendingMove();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v124 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v125 = &v121 - v26;
  __chkstk_darwin(v27);
  v121 = &v121 - v28;
  __chkstk_darwin(v29);
  v31 = &v121 - v30;
  __chkstk_darwin(v32);
  v137 = &v121 - v33;
  v34 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v121 - v43;
  v45 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v150 = *(v45 - 8);
  v151 = v45;
  __chkstk_darwin(v45);
  v149 = &v121 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v48 = (*(v35 + 88))(v37, v34);
  if (v48 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    v60 = v153;
    if (v48 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) && v48 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      if (v48 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
LABEL_12:
        v81 = 1;
        v83 = v151;
        v82 = v152;
        v84 = v150;
        return (*(v84 + 56))(v82, v81, 1, v83);
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    (*(v35 + 96))(v37, v34);
    (*(v39 + 32))(v44, v37, v38);
    v61 = v60;

    v62 = TTRRemindersListTreeViewModel.editingSessionState(for:)();

    if (v62)
    {
      (*(v39 + 8))(v44, v38);
      v63 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
      v156 = sub_100003540(0, &qword_1007756E0, REMReminderChangeItem_ptr);
      v157 = &protocol witness table for REMReminderChangeItem;
      v155 = v63;
      TTRRemindersListEditingSessionState.pendingMoveTargetList.getter();
      v64 = v124;
      TTRReminderProtocolWithPendingMove.init(reminder:pendingMoveTargetList:)();

      v65 = v140;
      v66 = v125;
      v67 = v64;
      v68 = v141;
      (*(v140 + 32))(v125, v67, v141);
      v69 = type metadata accessor for TTRReminderViewModelComputedProperties();
      v70 = v139;
      (*(*(v69 - 8) + 56))(v139, 1, 1, v69);
      v59 = v149;
      sub_10057FAF0(v66, v70, v61, v47, v149);
      sub_1000079B4(v70, &unk_100786490, qword_100642278);
      (*(v65 + 8))(v66, v68);
      v71 = v134;
      v72 = *(v134 + 16);
      v73 = v47;
      v50 = v61;
      v74 = v135;
    }

    else
    {
      v85 = v134;
      v72 = *(v134 + 16);
      v86 = v122;
      v74 = v135;
      v72(v122, v47, v135);
      (*(v85 + 56))(v86, 0, 1, v74);
      TTRRemindersListViewModel.ReminderID.objectID.getter();
      (*(v39 + 8))(v44, v38);
      v71 = v85;
      v59 = v149;
      TTRRemindersListViewModel.Reminder.init(item:objectID:)();
      v73 = v47;
      v50 = v153;
    }

    v87 = v133;
    v72(v133, v73, v74);
    v88 = (*(v71 + 88))(v87, v74);
    v89 = enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:);
    (*(v71 + 8))(v87, v74);
    if (v88 == v89)
    {
      static TTRReminderCellStyle.placeholder.getter();
      v90 = TTRRemindersListViewModel.Reminder.style.setter();
      (*(*v50 + 576))(v90);
      TTRRemindersListViewModel.Reminder.ttrAccessibilitySectionHeaderType.setter();
    }

    goto LABEL_30;
  }

  (*(v35 + 96))(v37, v34);
  v134 = v39;
  v49 = *(v39 + 32);
  v135 = v38;
  v49(v41, v37, v38);
  v50 = v153;

  v51 = TTRRemindersListTreeViewModel.editingSessionState(for:)();

  v52 = v47;
  if (v51)
  {
    v53 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
    v156 = sub_100003540(0, &qword_1007756E0, REMReminderChangeItem_ptr);
    v157 = &protocol witness table for REMReminderChangeItem;
    v155 = v53;
    TTRRemindersListEditingSessionState.pendingMoveTargetList.getter();
    TTRReminderProtocolWithPendingMove.init(reminder:pendingMoveTargetList:)();

    v54 = v140;
    v55 = v137;
    v56 = v141;
    (*(v140 + 32))(v137, v31, v141);
    v57 = type metadata accessor for TTRReminderViewModelComputedProperties();
    v58 = v139;
    (*(*(v57 - 8) + 56))(v139, 1, 1, v57);
    v59 = v149;
    sub_10057FAF0(v55, v58, v50, v47, v149);
    sub_1000079B4(v58, &unk_100786490, qword_100642278);
    (*(v54 + 8))(v55, v56);
    goto LABEL_25;
  }

  swift_getObjectType();
  v75 = v41;
  v76 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v77 = v127;
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.reminderAndComputedProperties(with:)();
  v78 = v77;

  v79 = v136;
  v80 = v128;
  if ((*(v136 + 48))(v78, 1, v128) == 1)
  {
    (*(v134 + 8))(v75, v135);
    sub_1000079B4(v78, &qword_10078E138, &unk_100647160);
    goto LABEL_12;
  }

  (*(v79 + 32))(v126, v78, v80);
  v91 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v92 = TTRReminderAndComputedProperties.reminder.getter();
  v93 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
  swift_beginAccess();
  v94 = *(v50 + v93);
  v41 = v75;
  if ((v94 & 0xC000000000000001) == 0)
  {
    v59 = v149;
    goto LABEL_24;
  }

  if (v94 < 0)
  {
    v95 = *(v50 + v93);
  }

  else
  {
    v95 = v94 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaDictionary.count.getter();
  v59 = v149;
  if (!__OFADD__(result, 1))
  {
    *(v50 + v93) = sub_100548B40(v95, result + 1);
LABEL_24:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154 = *(v50 + v93);
    sub_100126D9C(v92, v91, isUniquelyReferenced_nonNull_native);
    *(v50 + v93) = v154;

    swift_endAccess();
    v98 = v126;
    v99 = TTRReminderAndComputedProperties.reminder.getter();
    v156 = sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
    v157 = &protocol witness table for REMReminder;
    v155 = v99;
    v100 = v121;
    TTRReminderProtocolWithPendingMove.init(reminder:pendingMoveTargetList:)();
    v101 = v139;
    TTRReminderAndComputedProperties.computedProperties.getter();
    v102 = type metadata accessor for TTRReminderViewModelComputedProperties();
    (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
    sub_10057FAF0(v100, v101, v50, v52, v59);
    sub_1000079B4(v101, &unk_100786490, qword_100642278);
    (*(v140 + 8))(v100, v141);
    (*(v136 + 8))(v98, v80);
LABEL_25:

    TTRRemindersListTreeViewModel.subtaskDisplayCount(of:)();

    v103 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
    swift_beginAccess();
    v104 = v50 + v103;
    v105 = v138;
    sub_10000794C(v104, v138, &unk_10078A380, &qword_10062DE60);
    v106 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v107 = *(v106 - 8);
    if ((*(v107 + 48))(v105, 1, v106) == 1)
    {
      (*(v134 + 8))(v41, v135);
      sub_1000079B4(v105, &unk_10078A380, &qword_10062DE60);
    }

    else
    {
      v108 = v41;
      v109 = v129;
      TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
      (*(v107 + 8))(v105, v106);
      v110 = TTRRemindersListViewModel.SupportsEditableSections.isSupported.getter();
      v111 = (*(v130 + 8))(v109, v131);
      if (v110)
      {
        (*(*v50 + 576))(v111);
        TTRRemindersListViewModel.Reminder.ttrAccessibilitySectionHeaderType.setter();
      }

      (*(v134 + 8))(v108, v135);
    }

LABEL_30:
    v112 = TTRRemindersListViewModel.Reminder.subtaskCount.getter();
    if (v113)
    {
      v112 = TTRRemindersListViewModel.Reminder.subtaskCount.setter();
    }

    v114 = v144;
    (*(*v50 + 488))(v112);
    v115 = v142;
    TTRRemindersListSubtaskDisplayStyle.resolvedStyle(for:)();
    (*(v147 + 8))(v114, v148);
    v116 = v143;
    TTRRemindersListSubtaskDisplayStyle.ResolvedStyle.subtaskCountDisplayStyle.getter();
    (*(v145 + 8))(v115, v146);
    v117 = type metadata accessor for TTRRemindersListViewModel.SubtaskCountDisplayStyle();
    (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
    v118 = TTRRemindersListViewModel.Reminder.subtaskCountDisplayStyle.setter();
    (*(*v50 + 464))(v118);
    v119 = TTRRemindersListViewModel.Reminder.showingLargeAttachments.setter();
    if ((*(*v50 + 424))(v119))
    {
      swift_unknownObjectRelease();
    }

    v120 = TTRRemindersListViewModel.Reminder.iOS.modify();
    TTRRemindersListViewModel.Reminder.IOS.baseIndentationLevel.setter();
    v120(&v155, 0);
    v84 = v150;
    v83 = v151;
    v82 = v152;
    (*(v150 + 32))(v152, v59, v151);
    v81 = 0;
    return (*(v84 + 56))(v82, v81, 1, v83);
  }

  __break(1u);
  return result;
}

uint64_t sub_100571BE0@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;

  v13 = TTRRemindersListTreeViewModel.existingReminderIDs(having:)();

  if (*(v13 + 16))
  {
    (*(v7 + 16))(v9, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    v14 = *(v7 + 32);
    v14(v12, v9, v6);
    v14(v5, v12, v6);
    (*(v18 + 104))(v5, enum case for TTRRemindersListViewModel.Item.reminder(_:), v3);
    (*(v18 + 32))(a2, v5, v3);
    return (*(v18 + 56))(a2, 0, 1, v3);
  }

  else
  {

    v16 = *(v18 + 56);

    return v16(a2, 1, 1, v3);
  }
}

void *sub_100571E9C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v1 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_10057211C(uint64_t a1, int a2)
{
  v35 = a2;
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = v30 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v45 = _swiftEmptyArrayStorage;
  v30[1] = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
  v31 = v2;

  v41 = TTRRemindersListTreeViewModel.presentationTree.getter();
  v30[0] = v14;

  v34 = *(a1 + 16);
  if (!v34)
  {
LABEL_19:
    swift_getObjectType();
    v29 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.reminders(with:)();

    swift_beginAccess();
    sub_100058000(&qword_10078E128, &qword_100647148);
    Dictionary.merge(takingValuesIn:)(v29);
    swift_endAccess();
    swift_unknownObjectRelease();
    return v29;
  }

  v15 = 0;
  v17 = *(v8 + 16);
  v16 = v8 + 16;
  v33 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v40 = (v16 + 40);
  v42 = (v16 - 8);
  v43 = v17;
  v32 = *(v16 + 56);
  while (1)
  {
    v36 = v15;
    v43(v13, v33 + v32 * v15, v7);
    v18 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
    if (v18)
    {
      v19 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if ((v35 & 1) == 0)
    {
      goto LABEL_3;
    }

    v20 = TTRRemindersListTreeViewModel.hasSubtasks.getter();

    if ((v20 & 1) == 0)
    {
      goto LABEL_3;
    }

    v21 = v41;
    ObjectType = swift_getObjectType();
    v44 = v21;
    v43(v6, v13, v7);
    v38 = *v40;
    v38(v6, 0, 1, v7);
    v23 = *(v30[0] + 8);
    v39 = ObjectType;
    v37 = v23;
    v24 = dispatch thunk of TTRTreeContentsQueryable.numberOfChildren(of:)();
    result = sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
    if (v24 < 0)
    {
      break;
    }

    if (v24)
    {
      for (i = 0; i != v24; ++i)
      {
        v44 = v41;
        v43(v6, v13, v7);
        v38(v6, 0, 1, v7);
        dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
        sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
        v27 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
        if (v27)
        {
          v28 = v27;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          (*v42)(v10, v7);
        }

        else
        {
          (*v42)(v10, v7);
        }
      }
    }

LABEL_3:
    v15 = v36 + 1;
    (*v42)(v13, v7);
    if (v15 == v34)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

id sub_100572610(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return a2(v8);
  }

  v24[2] = a3;
  v25 = a2;
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a1 + v12 + *(v7 + 72) * (v11 - 1);
  sub_100058000(&qword_100772150, &unk_100635D00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  v15 = *(v7 + 16);
  v15(v14 + v12, v13, v6);
  v26 = _swiftEmptyArrayStorage;

  v24[1] = TTRRemindersListTreeViewModel.presentationTree.getter();

  v15(v10, v14 + v12, v6);

  v16 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
  (*(v7 + 8))(v10, v6);
  if (v16)
  {
    v17 = v16;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  swift_getObjectType();
  v18._rawValue = dispatch thunk of TTRRemindersListDataModelSourceBaseType.reminders(with:)();

  swift_beginAccess();
  sub_100058000(&qword_10078E128, &qword_100647148);
  Dictionary.merge(takingValuesIn:)(v18);
  swift_endAccess();
  swift_unknownObjectRelease();
  v19 = sub_1000A9888(v18._rawValue);
  v21 = v20;

  a2 = v25;
  if (!v19)
  {
    return a2(v8);
  }

  v22 = [v21 list];
  return v22;
}

uint64_t sub_100572904@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = TTRRemindersListTreeViewModel.editingSessionState(for:)();

  if (v12)
  {
    v13 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();

    *a2 = v13;
    v14 = enum case for Either.right<A, B>(_:);
    v15 = sub_100058000(&qword_100782828, &qword_100647140);
    v32 = *(v15 - 8);
    (*(v32 + 104))(a2, v14, v15);
    v16 = *(v32 + 56);

    return v16(a2, 0, 1, v15);
  }

  else
  {
    v18 = a2;
    v19 = v32;
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v20 = (*(v9 + 88))(v11, v8);
    if (v20 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
    {
      (*(v9 + 96))(v11, v8);
      v21 = v19;
      (*(v19 + 32))(v7, v11, v5);
      v22 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      v23 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
      swift_beginAccess();
      v24 = *(v3 + v23);

      v25 = sub_10013F404(v22, v24);

      (*(v21 + 8))(v7, v5);
      v26 = v18;
      if (v25)
      {
        *v18 = v25;
        v27 = enum case for Either.left<A, B>(_:);
        v28 = sub_100058000(&qword_100782828, &qword_100647140);
        v29 = *(v28 - 8);
        (*(v29 + 104))(v18, v27, v28);
        return (*(v29 + 56))(v18, 0, 1, v28);
      }
    }

    else if (v20 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v20 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      (*(v9 + 8))(v11, v8);
      v26 = v18;
    }

    else
    {
      v26 = v18;
      if (v20 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }

    v31 = sub_100058000(&qword_100782828, &qword_100647140);
    return (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
  }
}

uint64_t sub_100572D80@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0);
  v3 = &a1[*(result + 20)];
  *v3 = sub_10057F4D0;
  v3[1] = 0;
  return result;
}

uint64_t sub_100572DE0@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100572E28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_10076FA28, &unk_1006327A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = sub_100058000(&qword_10078E120, &unk_100647130);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;

  TTRRemindersListTreeViewModel.locationAfterLastTopLevelItemInLastSection(passing:)();

  sub_10000794C(v11, v8, &qword_10078E120, &unk_100647130);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1000079B4(v11, &qword_10078E120, &unk_100647130);
    v12 = sub_100058000(&qword_1007827E0, &qword_10063E548);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v14 = sub_100058000(&qword_1007827E0, &qword_10063E548);
    v15 = *(v14 + 48);
    TTRDerivedTreeLocation.parent.getter();
    v16 = TTRDerivedTreeLocation.index.getter();
    (*(v3 + 8))(v5, v2);
    sub_1000079B4(v11, &qword_10078E120, &unk_100647130);
    *(a1 + v15) = v16;
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }
}

uint64_t sub_1005730FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v80 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v82 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = (&v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v81 = (&v70 - v6);
  v74 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v76 = (&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v70 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v78 = *(v11 - 8);
  v79 = v11;
  __chkstk_darwin(v11);
  v75 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v70 - v14;
  v15 = sub_100058000(&qword_100788B60, &qword_1006442B0);
  __chkstk_darwin(v15 - 8);
  v71 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v70 - v18;
  v20 = sub_100058000(&qword_10078E0B8, &qword_100647098);
  __chkstk_darwin(v20 - 8);
  v22 = &v70 - v21;
  v23 = sub_100058000(&qword_10078E0C0, &unk_1006470A0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v70 - v25;

  TTRRemindersListTreeViewModel.resolve(_:)();

  if ((v24[6])(v22, 1, v23) != 1)
  {
    v24[4](v26, v22, v23);
    v41 = type metadata accessor for TTRRemindersListUncommittedReminder();
    (*(*(v41 - 8) + 56))(v19, 1, 1, v41);

    TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(at:)();

    v42 = v78;
    v43 = v79;
    if ((*(v78 + 6))(v10, 1, v79) == 1)
    {
      (v24[1])(v26, v23);
      sub_1000079B4(v10, &qword_100772140, &qword_10062D9F0);
      return sub_100016588(v19, v83, &qword_100788B60, &qword_1006442B0);
    }

    v81 = v24;
    v82 = v23;
    v46 = v42;
    v47 = v77;
    (*(v42 + 4))(v77, v10, v43);
    v48 = v76;
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v49 = v72;
    v50 = v74;
    v51 = (*(v72 + 88))(v48, v74);
    if (v51 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
    {
      (*(v49 + 8))(v48, v50);
      v52 = v75;
    }

    else
    {
      v52 = v75;
      if (v51 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v51 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
      {
        (*(v49 + 8))(v76, v50);

        v67 = TTRRemindersListTreeViewModel.uncommittedReminders.getter();

        __chkstk_darwin(v68);
        *(&v70 - 2) = v47;
        v69 = v71;
        sub_1002EC898(sub_10059C384, v67, v71);

        sub_1000079B4(v19, &qword_100788B60, &qword_1006442B0);
        v81[1](v26, v82);
        sub_100016588(v69, v19, &qword_100788B60, &qword_1006442B0);
        (*(v46 + 1))(v47, v43);
        return sub_100016588(v19, v83, &qword_100788B60, &qword_1006442B0);
      }

      if (v51 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }

    v80 = v26;
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100003E30(v53, qword_10078D7D8);
    (*(v46 + 2))(v52, v47, v43);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v52;
      v57 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v84 = v76;
      *v57 = 136315138;
      sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v58 = TTRTreeStorageItem.treeItemDescription.getter();
      v59 = v43;
      v61 = v60;
      v62 = *(v46 + 1);
      v78 = v19;
      v62(v56, v59);
      v63 = sub_100004060(v58, v61, &v84);
      v64 = v59;
      v65 = v77;

      *(v57 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v54, v55, "Unexpected item type {item: %s}", v57, 0xCu);
      sub_100004758(v76);

      v81[1](v80, v82);
      v19 = v78;
      v62(v65, v64);
    }

    else
    {

      v66 = *(v46 + 1);
      v66(v52, v43);
      v81[1](v80, v82);
      v66(v47, v43);
    }

    return sub_100016588(v19, v83, &qword_100788B60, &qword_1006442B0);
  }

  sub_1000079B4(v22, &qword_10078E0B8, &qword_100647098);
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100003E30(v27, qword_10078D7D8);
  v29 = v81;
  v28 = v82;
  v30 = *(v82 + 16);
  v31 = a1;
  v32 = v80;
  v30(v81, v31, v80);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v84 = v36;
    *v35 = 136315138;
    v30(v73, v29, v32);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    (*(v28 + 8))(v29, v32);
    v40 = sub_100004060(v37, v39, &v84);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "Cannot resolve ReminderCreationLocation {location: %s}", v35, 0xCu);
    sub_100004758(v36);
  }

  else
  {

    (*(v28 + 8))(v29, v32);
  }

  v44 = type metadata accessor for TTRRemindersListUncommittedReminder();
  return (*(*(v44 - 8) + 56))(v83, 1, 1, v44);
}

uint64_t sub_100573BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, void (*a6)(char *, char *, uint64_t)@<X5>, void (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v184 = a7;
  v183 = a6;
  v191 = a5;
  v192 = a4;
  v185 = a3;
  v180 = a2;
  v202 = a8;
  v171 = type metadata accessor for TTREditingStateOption.InputType();
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v169 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for TTREditingStateOption();
  v179 = *(v181 - 8);
  __chkstk_darwin(v181);
  v178 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v12 - 8);
  v182 = &v162 - v13;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v203 = *(v14 - 8);
  __chkstk_darwin(v14);
  v174 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v197 = &v162 - v17;
  __chkstk_darwin(v18);
  v164 = &v162 - v19;
  v198 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v190 = *(v198 - 1);
  __chkstk_darwin(v198);
  v194 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v166 = &v162 - v22;
  v23 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v195 = *(v23 - 8);
  v196 = v23;
  __chkstk_darwin(v23);
  v193 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v188 = &v162 - v26;
  v27 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v27 - 8);
  v29 = &v162 - v28;
  v173 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v175 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v200 = *(v31 - 8);
  v201 = v31;
  __chkstk_darwin(v31);
  v177 = &v162 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v199 = &v162 - v34;
  v35 = sub_100058000(&qword_10078E0B8, &qword_100647098);
  __chkstk_darwin(v35 - 8);
  v168 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v162 - v38;
  v40 = sub_100058000(&qword_10078E0C0, &unk_1006470A0);
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v176 = &v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v165 = &v162 - v44;
  __chkstk_darwin(v45);
  v47 = &v162 - v46;
  v48 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;

  TTRRemindersListTreeViewModel.resolve(_:)();

  v167 = *(v41 + 48);
  if (v167(v39, 1, v40) == 1)
  {
    sub_1000079B4(v39, &qword_10078E0B8, &qword_100647098);
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100003E30(v49, qword_10078D7D8);
    v51 = v195;
    v50 = v196;
    v52 = *(v195 + 16);
    v53 = v193;
    v52(v193, a1, v196);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v204 = v203;
      *v56 = 136315138;
      v52(v188, v53, v50);
      v57 = String.init<A>(describing:)();
      v59 = v58;
      (*(v51 + 8))(v53, v50);
      v60 = sub_100004060(v57, v59, &v204);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "Cannot resolve ReminderCreationLocation {location: %s}", v56, 0xCu);
      sub_100004758(v203);
    }

    else
    {

      (*(v51 + 8))(v53, v50);
    }

LABEL_30:
    v117 = sub_100058000(&qword_1007860B0, &unk_100641E70);
    return (*(*(v117 - 8) + 56))(v202, 1, 1, v117);
  }

  v189 = v41;
  v162 = *(v41 + 32);
  v162(v47, v39, v40);
  v186 = v8;

  v187 = v47;
  TTRRemindersListTreeViewModel.sectionForlocationIfLastChild(_:)();

  v61 = v203;
  v62 = (v203[6])(v29, 1, v14);
  v193 = v40;
  v163 = v14;
  if (v62 == 1)
  {
    sub_1000079B4(v29, &qword_100772140, &qword_10062D9F0);
  }

  else if ((v61[11])(v29, v14) == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (v61[12])(v29, v14);
    v63 = v172;
    v64 = v175;
    v65 = v173;
    (*(v172 + 32))(v175, v29, v173);
    v66 = *&v186[v48];
    v67 = *(*v186 + 904);

    LOBYTE(v64) = v67(v64, v66, &protocol witness table for TTRRemindersListTreeViewModel, 1);

    if (v64)
    {

      v68 = v188;
      v69 = v175;
      TTRRemindersListViewModel.SectionHeader.id.getter();
      v71 = v195;
      v70 = v196;
      (*(v195 + 104))(v68, enum case for TTRRemindersListReminderCreationLocation.endOfSection(_:), v196);
      v72 = v168;
      TTRRemindersListTreeViewModel.resolve(_:)();

      (*(v71 + 8))(v68, v70);
      v73 = v167(v72, 1, v193);
      v74 = v198;
      v75 = v199;
      if (v73 == 1)
      {
        sub_1000079B4(v72, &qword_10078E0B8, &qword_100647098);
        v76 = v187;
        if (qword_100767468 != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        sub_100003E30(v77, qword_10078D7D8);
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.fault.getter();
        v80 = os_log_type_enabled(v78, v79);
        v81 = v172;
        v82 = v173;
        if (v80)
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v78, v79, "Cannot obtain tree location for placeholderReminder", v83, 2u);
        }

        (*(v81 + 8))(v69, v82);
        (*(v189 + 8))(v76, v193);
        goto LABEL_30;
      }

      v140 = v165;
      v162(v165, v72, v193);
      v141 = v166;
      sub_10057C9B8(v166);
      v142 = v190;
      v143 = v164;
      (*(v190 + 16))(v164, v141, v74);
      v144 = v203;
      v145 = v163;
      (v203[13])(v143, enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:), v163);
      v146 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      v147 = v74;
      v148 = v192();

      v149 = v187;
      if (!v148)
      {
        v153 = v147;
        if (qword_100767468 != -1)
        {
          swift_once();
        }

        v154 = type metadata accessor for Logger();
        sub_100003E30(v154, qword_10078D7D8);
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.error.getter();
        v157 = os_log_type_enabled(v155, v156);
        v158 = v165;
        if (v157)
        {
          v159 = swift_slowAlloc();
          *v159 = 0;
          _os_log_impl(&_mh_execute_header, v155, v156, "cannot create placeholderReminder, createReminderChangeItem returns nil.", v159, 2u);
          v141 = v166;
        }

        (v203[1])(v143, v145);
        (*(v142 + 8))(v141, v153);
        v160 = *(v189 + 8);
        v161 = v193;
        v160(v158, v193);
        (*(v172 + 8))(v175, v173);
        v160(v149, v161);
        goto LABEL_30;
      }

      v150 = v144[2];
      v151 = v197;
      v150(v197, v143, v145);
      type metadata accessor for TTRRemindersListEditingSessionState();
      swift_allocObject();
      v152 = v148;
      TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)();
      (*(v189 + 16))(v176, v140, v193);
      v150(v151, v143, v163);

      v96 = v75;
      TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)();
      v196 = [v152 remObjectID];

      v192 = v144[1];
      (v192)(v143, v163);
      (*(v190 + 8))(v166, v198);
      v97 = v163;
      (*(v189 + 8))(v140, v193);
      (*(v172 + 8))(v175, v173);
      v98 = v200;
      goto LABEL_21;
    }

    (*(v63 + 8))(v175, v65);
  }

  else
  {
    (v61[1])(v29, v14);
  }

  v84 = (v192)(0);
  v85 = v187;
  if (!v84)
  {
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    sub_100003E30(v113, qword_10078D7D8);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "cannot create uncommittedReminder, createReminderChangeItem returns nil.", v116, 2u);
    }

    (*(v189 + 8))(v85, v193);
    goto LABEL_30;
  }

  v86 = v84;
  v87 = [v84 objectID];
  v88 = v194;
  sub_10057C4B4(v87, v194);

  v89 = v190;
  v90 = v197;
  (*(v190 + 16))(v197, v88, v198);
  v91 = v203;
  v92 = v163;
  (v203[13])(v90, enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:), v163);
  v93 = v91[2];
  v94 = v174;
  v93(v174, v90, v92);
  type metadata accessor for TTRRemindersListEditingSessionState();
  swift_allocObject();
  v95 = v86;
  TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)();
  (*(v189 + 16))(v176, v85, v193);
  v93(v94, v90, v92);

  v96 = v199;
  v97 = v92;
  TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)();
  v196 = [v95 remObjectID];

  v98 = v200;
  v192 = v203[1];
  (v192)(v90, v97);
  (*(v89 + 8))(v194, v198);
LABEL_21:
  v99 = v201;
  v100 = v177;
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v101 = type metadata accessor for Logger();
  sub_100003E30(v101, qword_10078D7D8);
  v102 = v96;
  v195 = *(v98 + 16);
  (v195)(v100, v96, v99);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v204 = v106;
    *v105 = 136315138;
    v107 = v197;
    TTRRemindersListUncommittedReminder.item.getter();
    sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v108 = TTRTreeStorageItem.treeItemDescription.getter();
    v110 = v109;
    v111 = v107;
    v102 = v199;
    (v192)(v111, v97);
    v198 = *(v200 + 8);
    (v198)(v100, v201);
    v112 = sub_100004060(v108, v110, &v204);
    v98 = v200;

    *(v105 + 4) = v112;
    _os_log_impl(&_mh_execute_header, v103, v104, "Inserting UncommittedReminder {item: %s}", v105, 0xCu);
    sub_100004758(v106);
    v99 = v201;
  }

  else
  {

    v198 = *(v98 + 8);
    (v198)(v100, v99);
  }

  v119 = v181;
  sub_100058000(&qword_1007860A0, &qword_100641E60);
  v120 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_10062D400;
  (v195)(v121 + v120, v102, v99);
  v122 = v179;
  v123 = v178;
  (*(v179 + 16))(v178, v180, v119);
  v124 = (*(v122 + 88))(v123, v119);
  if (v124 == enum case for TTREditingStateOption.startsEditing(_:))
  {
    (*(v122 + 96))(v123, v119);
    v125 = *(v170 + 32);
    v126 = v169;
    v127 = v171;
    v125(v169, v123, v171);
    v128 = v197;
    TTRRemindersListUncommittedReminder.item.getter();
    v129 = sub_100058000(&unk_1007756F0, &unk_100631C00);
    v130 = *(v129 + 48);
    v131 = v182;
    (v203[4])(v182, v128, v163);
    v132 = v127;
    v99 = v201;
    v125(&v131[v130], v126, v132);
    v102 = v199;
    v133 = (*(*(v129 - 8) + 56))(v131, 0, 1, v129);
LABEL_36:
    v135 = v186;
    __chkstk_darwin(v133);
    *(&v162 - 4) = v121;
    *(&v162 - 3) = v135;
    v136 = v184;
    *(&v162 - 2) = v183;
    *(&v162 - 1) = v136;
    sub_100581B80(v131, v185 & 1, sub_10059F0C4, (&v162 - 6), static TTRSmartListFilterEditorViewModel.HelpTopic.__derived_enum_equals(_:_:), 0);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000079B4(v131, &qword_10076E0D0, &unk_100635D70);
    v137 = sub_100058000(&qword_1007860B0, &unk_100641E70);
    v138 = *(v137 + 48);
    v139 = v202;
    TTRRemindersListUncommittedReminder.item.getter();
    (v198)(v102, v99);
    (*(v189 + 8))(v187, v193);
    *(v139 + v138) = v196;
    return (*(*(v137 - 8) + 56))(v139, 0, 1, v137);
  }

  v131 = v182;
  if (v124 == enum case for TTREditingStateOption.doesNotStartEditing(_:))
  {
    v134 = sub_100058000(&unk_1007756F0, &unk_100631C00);
    v133 = (*(*(v134 - 8) + 56))(v131, 1, 1, v134);
    goto LABEL_36;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_100575430(unint64_t a1, uint64_t a2, int a3, int a4, char *a5, uint64_t a6, __n128 a7)
{
  v171 = a6;
  v172 = a5;
  v154 = a4;
  v153 = a3;
  v192 = a2;
  v190 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v187 = *(v190 - 8);
  __chkstk_darwin(v190);
  v170 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v173 = &v151 - v11;
  v178 = sub_100058000(&qword_10078E118, &unk_100647110);
  __chkstk_darwin(v178);
  v188 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v177 = &v151 - v14;
  v175 = sub_100058000(&qword_1007860B0, &unk_100641E70);
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v176 = &v151 - v15;
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v191 = *(v16 - 8);
  __chkstk_darwin(v16);
  v152 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v183 = (&v151 - v19);
  __chkstk_darwin(v20);
  v156 = &v151 - v21;
  v182 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v169 = *(v182 - 8);
  __chkstk_darwin(v182);
  v184 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v185 = *(v189 - 8);
  __chkstk_darwin(v189);
  v181 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v179 = &v151 - v25;
  v26 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v26 - 8);
  v186 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v151 - v29;
  v168 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v166 = &v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100058000(&qword_10078E0B8, &qword_100647098);
  __chkstk_darwin(v32 - 8);
  v34 = &v151 - v33;
  v35 = sub_100058000(&qword_10078E0C0, &unk_1006470A0);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v180 = &v151 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v151 - v39;

  TTRRemindersListTreeViewModel.resolve(_:)();

  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_1000079B4(v34, &qword_10078E0B8, &qword_100647098);
    if (qword_100767468 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_83;
  }

  v151 = v36;
  (*(v36 + 32))(v40, v34, v35);

  TTRRemindersListTreeViewModel.sectionForlocationIfLastChild(_:)();

  v54 = v191;
  v55 = v16;
  if ((*(v191 + 48))(v30, 1, v16) != 1)
  {
    if ((*(v54 + 88))(v30, v16) != enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v54 + 8))(v30, v16);
      goto LABEL_13;
    }

    v173 = v7;
    (*(v54 + 96))(v30, v16);
    v56 = v167;
    v57 = v166;
    v58 = v30;
    v59 = v168;
    v60 = (*(v167 + 32))(v166, v58, v168);
    if (v192 < 0)
    {
      __break(1u);
    }

    else
    {
      __chkstk_darwin(v60);
      *(&v151 - 2) = v173;
      *(&v151 - 1) = v57;
      sub_100398A0C(sub_10059C364, (&v151 - 4), 0, v61);
      (v172)(&v193);

      if (v194)
      {
        sub_100005FD0(&v193, &v195);
        sub_100005FD0(&v195, &v196);
        (*(v56 + 8))(v57, v59);
        goto LABEL_15;
      }

      sub_1000079B4(&v193, &qword_10076C710, &unk_100647120);
      if (qword_100767468 == -1)
      {
LABEL_71:
        v145 = type metadata accessor for Logger();
        sub_100003E30(v145, qword_10078D7D8);
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          *v148 = 0;
          _os_log_impl(&_mh_execute_header, v146, v147, "cannot create changeItemGroup, createRemindersListChangeItemGroup returns nil.", v148, 2u);
        }

        (*(v56 + 8))(v57, v59);
        goto LABEL_74;
      }
    }

    swift_once();
    goto LABEL_71;
  }

  sub_1000079B4(v30, &qword_100772140, &qword_10062D9F0);
LABEL_13:
  sub_10059A228(0, v192);
  (v172)(&v193);

  if (!v194)
  {
    sub_1000079B4(&v193, &qword_10076C710, &unk_100647120);
    if (qword_100767468 == -1)
    {
LABEL_25:
      v73 = type metadata accessor for Logger();
      sub_100003E30(v73, qword_10078D7D8);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v74, v75, "cannot create changeItemGroup, createRemindersListChangeItemGroup returns nil.", v76, 2u);
      }

LABEL_74:
      (*(v151 + 8))(v40, v35);
      return _swiftEmptyArrayStorage;
    }

LABEL_86:
    swift_once();
    goto LABEL_25;
  }

  v173 = v7;
  sub_100005FD0(&v193, &v195);
  sub_100005FD0(&v195, &v196);
LABEL_15:
  TTRTreeStorageTemporaryNodeLocation.parent.getter();
  v62 = TTRTreeStorageTemporaryNodeLocation.index.getter();
  if (v63)
  {
    v64 = 0;
  }

  else
  {
    v64 = v62;
  }

  v170 = v64;
  sub_10000C36C(&v196, v197);
  v65 = dispatch thunk of TTRRemindersListChangeItemGroup.reminderChangeItems.getter();
  v66 = v65 >> 62;
  if (v65 >> 62)
  {
    v150 = v65;
    a1 = _CocoaArrayWrapper.endIndex.getter();
    v65 = v150;
  }

  else
  {
    a1 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v171 = v35;
  v172 = v40;
  v192 = v55;
  if (a1)
  {
    v67 = v65;
    *&v195 = _swiftEmptyArrayStorage;
    sub_1004A1C8C(0, a1 & ~(a1 >> 63), 0);
    v68 = v156;
    if ((a1 & 0x8000000000000000) == 0)
    {
      v69 = v182;
      v70 = v184;
      v71 = v67;
      v190 = v195;
      v155 = v67 & 0xFFFFFFFFFFFFFF8;
      if (v66)
      {
        v72 = _CocoaArrayWrapper.endIndex.getter();
        v71 = v67;
      }

      else
      {
        v72 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v78 = 0;
      v168 = v71 & 0xC000000000000001;
      v167 = v169 + 16;
      LODWORD(v166) = enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:);
      v165 = (v191 + 104);
      v79 = (v191 + 16);
      v161 = (v151 + 104);
      v160 = enum case for TTRTreeStorageTemporaryNodeLocation.atIndexOfParent<A>(_:);
      v159 = (v191 + 8);
      v158 = (v169 + 8);
      v157 = v185 + 32;
      v169 = v72 & ~(v72 >> 63);
      v80 = v183;
      v164 = v71;
      v163 = a1;
      v162 = (v191 + 16);
      v81 = v180;
      while (v169 != v78)
      {
        v187 = v78;
        if (v168)
        {
          v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v78 >= *(v155 + 16))
          {
            goto LABEL_82;
          }

          v82 = *(v71 + 8 * v78 + 32);
        }

        v83 = v82;
        v84 = [v82 objectID];
        sub_10057C4B4(v84, v70);

        (*v167)(v68, v70, v69);
        v85 = v192;
        (*v165)(v68, v166, v192);
        a1 = *v79;
        (*v79)(v80, v68, v85);
        type metadata accessor for TTRRemindersListEditingSessionState();
        swift_allocObject();
        v86 = v83;
        TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)();
        v87 = *(sub_100058000(&qword_10078E110, &qword_100647108) + 48);
        sub_10000794C(v186, v81, &qword_100772140, &qword_10062D9F0);
        if (__OFADD__(v170, v187))
        {
          goto LABEL_78;
        }

        v88 = v187;
        *(v81 + v87) = &v170[v187];
        (*v161)(v81, v160, v171);
        (a1)(v80, v68, v85);
        v89 = v179;
        TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)();
        (*v159)(v68, v85);
        v70 = v184;
        v69 = v182;
        (*v158)(v184, v182);

        v90 = v190;
        *&v195 = v190;
        a1 = *(v190 + 16);
        v91 = *(v190 + 24);
        if (a1 >= v91 >> 1)
        {
          sub_1004A1C8C((v91 > 1), a1 + 1, 1);
          v70 = v184;
          v90 = v195;
        }

        v78 = v88 + 1;
        *(v90 + 16) = a1 + 1;
        v92 = (*(v185 + 80) + 32) & ~*(v185 + 80);
        v190 = v90;
        (*(v185 + 32))(v90 + v92 + *(v185 + 72) * a1, v89, v189);
        v80 = v183;
        v71 = v164;
        v79 = v162;
        if (v163 == v78)
        {

          v77 = v190;
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    __break(1u);
    goto LABEL_86;
  }

  v77 = _swiftEmptyArrayStorage;
LABEL_41:
  v93 = v77[2];
  v94 = _swiftEmptyArrayStorage;
  v190 = v77;
  if (v93)
  {
    *&v195 = _swiftEmptyArrayStorage;
    sub_1004A1C48(0, v93, 0);
    v94 = v195;
    v95 = v185 + 16;
    v187 = *(v185 + 16);
    v96 = v77 + ((*(v185 + 80) + 32) & ~*(v185 + 80));
    v185 = *(v185 + 72);
    v97 = (v95 - 8);
    v98 = v152;
    do
    {
      v99 = v181;
      v100 = v189;
      (v187)(v181, v96, v189);
      TTRRemindersListUncommittedReminder.item.getter();
      (*v97)(v99, v100);
      *&v195 = v94;
      v102 = *(v94 + 2);
      v101 = *(v94 + 3);
      if (v102 >= v101 >> 1)
      {
        sub_1004A1C48((v101 > 1), v102 + 1, 1);
        v94 = v195;
      }

      *(v94 + 2) = v102 + 1;
      (*(v191 + 32))(&v94[((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v102], v98, v192);
      v96 += v185;
      --v93;
    }

    while (v93);
  }

  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v103 = type metadata accessor for Logger();
  sub_100003E30(v103, qword_10078D7D8);

  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.debug.getter();

  v106 = os_log_type_enabled(v104, v105);
  v107 = v190;
  if (v106)
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v110 = v109;
    *&v195 = v109;
    *v108 = 136315138;
    v111 = *(v94 + 2);
    if (v111)
    {
      v180 = v109;
      v181 = v108;
      LODWORD(v182) = v105;
      v183 = v104;
      *&v193 = _swiftEmptyArrayStorage;
      sub_1004A1CD0(0, v111, 0);
      v112 = v193;
      v187 = *(v191 + 16);
      v113 = &v94[(*(v191 + 80) + 32) & ~*(v191 + 80)];
      v185 = *(v191 + 72);
      v189 = v191 + 16;
      v114 = (v191 + 8);
      do
      {
        v115 = v156;
        v116 = v192;
        (v187)(v156, v113, v192);
        sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
        v117 = TTRTreeStorageItem.treeItemDescription.getter();
        v119 = v118;
        (*v114)(v115, v116);
        *&v193 = v112;
        v121 = *(v112 + 16);
        v120 = *(v112 + 24);
        if (v121 >= v120 >> 1)
        {
          sub_1004A1CD0((v120 > 1), v121 + 1, 1);
          v112 = v193;
        }

        *(v112 + 16) = v121 + 1;
        v122 = v112 + 16 * v121;
        *(v122 + 32) = v117;
        *(v122 + 40) = v119;
        v113 += v185;
        --v111;
      }

      while (v111);
      v107 = v190;
      v104 = v183;
      LOBYTE(v105) = v182;
      v108 = v181;
      v110 = v180;
    }

    v123 = Array.description.getter();
    v125 = v124;

    v126 = sub_100004060(v123, v125, &v195);

    *(v108 + 4) = v126;
    _os_log_impl(&_mh_execute_header, v104, v105, "Inserting UncommittedReminders {items: %s}", v108, 0xCu);
    sub_100004758(v110);
  }

  sub_100580D50(v107, v153 & 1, v154 & 1);

  v127 = *(v94 + 2);
  if (v127)
  {
    *&v195 = _swiftEmptyArrayStorage;
    sub_1004A1C08(0, v127, 0);
    a1 = 0;
    v128 = v195;
    v189 = &v94[(*(v191 + 80) + 32) & ~*(v191 + 80)];
    v187 = v191 + 16;
    v185 = v191 + 32;
    v190 = *(v94 + 2);
    v184 = v94;
    v183 = v127;
    v129 = v191;
    v130 = v188;
    while (v190 != a1)
    {
      if (a1 >= *(v94 + 2))
      {
        goto LABEL_80;
      }

      v131 = v178;
      v132 = *(v178 + 48);
      v133 = *(v129 + 16);
      v134 = v177;
      v135 = v192;
      v133(&v177[v132], v189 + *(v129 + 72) * a1, v192);
      *v130 = a1;
      v136 = *(v131 + 48);
      (*(v129 + 32))(&v130[v136], &v134[v132], v135);
      v137 = v176;
      v133(v176, &v130[v136], v135);
      sub_10000C36C(&v196, v197);
      v138 = dispatch thunk of TTRRemindersListChangeItemGroup.reminderChangeItems.getter();
      if ((v138 & 0xC000000000000001) != 0)
      {
        v139 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v139 = *(v138 + 8 * a1 + 32);
      }

      v140 = v139;

      v141 = *(v175 + 48);
      v142 = [v140 remObjectID];

      *(v137 + v141) = v142;
      sub_1000079B4(v188, &qword_10078E118, &unk_100647110);
      *&v195 = v128;
      v144 = v128[2];
      v143 = v128[3];
      if (v144 >= v143 >> 1)
      {
        sub_1004A1C08((v143 > 1), v144 + 1, 1);
        v128 = v195;
      }

      ++a1;
      v128[2] = v144 + 1;
      sub_100016588(v137, v128 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v144, &qword_1007860B0, &unk_100641E70);
      v94 = v184;
      if (v183 == a1)
      {

        goto LABEL_69;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
LABEL_3:
    v41 = type metadata accessor for Logger();
    sub_100003E30(v41, qword_10078D7D8);
    v42 = v187;
    v43 = *(v187 + 16);
    v44 = v173;
    v45 = v190;
    v43(v173, a1, v190);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v196 = v49;
      *v48 = 136315138;
      v43(v170, v44, v45);
      v50 = String.init<A>(describing:)();
      v52 = v51;
      (*(v42 + 8))(v44, v45);
      v53 = sub_100004060(v50, v52, &v196);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "Cannot resolve ReminderCreationLocation {location: %s}", v48, 0xCu);
      sub_100004758(v49);
    }

    else
    {

      (*(v42 + 8))(v44, v45);
    }

    return _swiftEmptyArrayStorage;
  }

  v128 = _swiftEmptyArrayStorage;
LABEL_69:
  sub_1000079B4(v186, &qword_100772140, &qword_10062D9F0);
  sub_100004758(&v196);
  (*(v151 + 8))(v172, v171);
  return v128;
}

void *sub_100576CBC(uint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = v2;
  sub_100398B5C(sub_10059C338, v29, a2);
  v12 = v11;
  sub_100580D50(v11, 0, 1);
  v13 = *(v12 + 16);
  if (v13)
  {
    v32 = _swiftEmptyArrayStorage;
    sub_1004A1C48(0, v13, 0);
    v14 = v32;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v24 = *(v15 + 56);
    v25 = v16;
    v26 = v15;
    v18 = (v15 - 8);
    v23[1] = v12;
    v23[2] = v8 + 32;
    do
    {
      v19 = v28;
      v25(v7, v17, v28);
      TTRRemindersListUncommittedReminder.item.getter();
      (*v18)(v7, v19);
      v32 = v14;
      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        sub_1004A1C48((v20 > 1), v21 + 1, 1);
        v14 = v32;
      }

      v14[2] = v21 + 1;
      (*(v8 + 32))(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, v10, v27);
      v17 += v24;
      --v13;
    }

    while (v13);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v14;
}

void sub_100576F6C(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076E900, &qword_100631E10);
  __chkstk_darwin(v2 - 8);
  v4 = &v112 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v117 = *(v5 - 8);
  v118 = v5;
  __chkstk_darwin(v5);
  v116 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v112 - v8;
  v10 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v10 - 8);
  v121 = &v112 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v123 = *(v12 - 8);
  v124 = v12;
  __chkstk_darwin(v12);
  v120 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v112 - v15;
  __chkstk_darwin(v17);
  v119 = (&v112 - v18);
  __chkstk_darwin(v19);
  v21 = &v112 - v20;
  __chkstk_darwin(v22);
  v24 = &v112 - v23;
  v25 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v30 = v25;
  v31 = (*(v26 + 88))(v28, v25);
  if (v31 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v26 + 8))(v28, v25);
    v32 = v29;
    v33 = v123;
    v34 = v124;
LABEL_3:
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100003E30(v35, qword_10078D7D8);
    (*(v33 + 16))(v24, v32, v34);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v125 = v39;
      *v38 = 136315138;
      sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v40 = TTRTreeStorageItem.treeItemDescription.getter();
      v42 = v41;
      (*(v33 + 8))(v24, v34);
      v43 = sub_100004060(v40, v42, &v125);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "Invalid item type {item: %s}", v38, 0xCu);
      sub_100004758(v39);
    }

    else
    {

      (*(v33 + 8))(v24, v34);
    }

    return;
  }

  v114 = v28;
  v115 = v26;
  if (v31 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:))
  {
    v32 = v29;
    if (v31 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      v113 = v30;
      v24 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;

      TTRRemindersListTreeViewModel.sectionItem(containing:allowsSelf:)();

      v33 = v123;
      v34 = v124;
      if ((*(v123 + 48))(v9, 1, v124) == 1)
      {
        sub_1000079B4(v9, &qword_100772140, &qword_10062D9F0);
        goto LABEL_28;
      }
    }

    else
    {
      v33 = v123;
      v34 = v124;
      if (v31 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        goto LABEL_3;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    v63 = v119;
    (*(v33 + 32))(v119, v9, v34);
    TTRRemindersListViewModel.Item.sectionHeader.getter();
    v65 = v117;
    v64 = v118;
    if ((*(v117 + 48))(v4, 1, v118) == 1)
    {
      (*(v33 + 8))(v63, v34);
      sub_1000079B4(v4, &qword_10076E900, &qword_100631E10);
    }

    else
    {
      v66 = v116;
      (*(v65 + 32))(v116, v4, v64);
      v67 = *&v24[v122];
      v68 = *(*v122 + 904);

      v69 = v68(v66, v67, &protocol witness table for TTRRemindersListTreeViewModel, 0);

      if (v69)
      {
        if (qword_100767468 != -1)
        {
          swift_once();
        }

        v70 = type metadata accessor for Logger();
        sub_100003E30(v70, qword_10078D7D8);
        v71 = v124;
        (*(v33 + 16))(v16, v32, v124);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v125 = v75;
          *v74 = 136315138;
          sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
          v76 = TTRTreeStorageItem.treeItemDescription.getter();
          v78 = v77;
          v79 = *(v33 + 8);
          v79(v16, v124);
          v80 = sub_100004060(v76, v78, &v125);
          v71 = v124;

          *(v74 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v72, v73, "Removing editingSessionState for placeholderReminder {item: %s}", v74, 0xCu);
          sub_100004758(v75);
        }

        else
        {

          v79 = *(v33 + 8);
          v79(v16, v71);
        }

        v102 = v116;
        v103 = v119;
        v104 = v122 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
        Strong = swift_unknownObjectWeakLoadStrong();
        v106 = v114;
        v101 = v115;
        if (Strong)
        {
          v107 = *(v104 + 8);
          ObjectType = swift_getObjectType();
          (*(v107 + 80))(v32, ObjectType, v107);
          swift_unknownObjectRelease();
        }

        v109 = sub_100058000(&unk_1007756F0, &unk_100631C00);
        v110 = v121;
        v111 = (*(*(v109 - 8) + 56))(v121, 1, 1, v109);
        __chkstk_darwin(v111);
        *(&v112 - 2) = v32;
        sub_100581774(v110, 1, sub_10059C2CC, (&v112 - 4), v122);
        sub_1000079B4(v110, &qword_10076E0D0, &unk_100635D70);
        (*(v117 + 8))(v102, v118);
        v79(v103, v71);
        v100 = v106;
        goto LABEL_34;
      }

      (*(v65 + 8))(v66, v64);
      v34 = v124;
      (*(v33 + 8))(v119, v124);
    }

LABEL_28:
    v81 = v120;
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_100003E30(v82, qword_10078D7D8);
    v83 = *(v33 + 16);
    v83(v81, v32, v34);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v119 = v83;
      v87 = v86;
      v88 = swift_slowAlloc();
      v125 = v88;
      *v87 = 136315138;
      sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v89 = TTRTreeStorageItem.treeItemDescription.getter();
      v91 = v90;
      (*(v33 + 8))(v81, v124);
      v92 = sub_100004060(v89, v91, &v125);
      v34 = v124;

      *(v87 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v84, v85, "Discarding placeholderReminder {item: %s}", v87, 0xCu);
      sub_100004758(v88);

      v83 = v119;
    }

    else
    {

      (*(v33 + 8))(v81, v34);
    }

    sub_100058000(&qword_100772150, &unk_100635D00);
    v93 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_10062D400;
    v83((v94 + v93), v32, v34);
    v95 = sub_100058000(&unk_1007756F0, &unk_100631C00);
    v96 = v121;
    v97 = (*(*(v95 - 8) + 56))(v121, 1, 1, v95);
    __chkstk_darwin(v97);
    *(&v112 - 2) = v94;
    __chkstk_darwin(v98);
    *(&v112 - 2) = v94;
    sub_100581B80(v96, 1, sub_10059F0D0, v99, sub_10059F0CC, (&v112 - 4));

    sub_1000079B4(v96, &qword_10076E0D0, &unk_100635D70);
    v100 = v114;
    v101 = v115;
LABEL_34:
    (*(v101 + 8))(v100, v113);
    return;
  }

  v113 = v25;
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100003E30(v44, qword_10078D7D8);
  v46 = v123;
  v45 = v124;
  v47 = *(v123 + 16);
  v47(v21, v29, v124);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v120 = v47;
    v51 = v50;
    v119 = swift_slowAlloc();
    v125 = v119;
    *v51 = 136315138;
    sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v52 = TTRTreeStorageItem.treeItemDescription.getter();
    v54 = v53;
    (*(v46 + 8))(v21, v45);
    v55 = sub_100004060(v52, v54, &v125);

    *(v51 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v48, v49, "Discarding uncommittedReminder {item: %s}", v51, 0xCu);
    sub_100004758(v119);

    v47 = v120;
  }

  else
  {

    (*(v46 + 8))(v21, v45);
  }

  sub_100058000(&qword_100772150, &unk_100635D00);
  v56 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_10062D400;
  v47((v57 + v56), v29, v45);
  v58 = sub_100058000(&unk_1007756F0, &unk_100631C00);
  v59 = v121;
  v60 = (*(*(v58 - 8) + 56))(v121, 1, 1, v58);
  __chkstk_darwin(v60);
  *(&v112 - 2) = v57;
  __chkstk_darwin(v61);
  *(&v112 - 2) = v57;
  sub_100581B80(v59, 1, sub_10059F0D0, v62, sub_10059F0CC, (&v112 - 4));

  sub_1000079B4(v59, &qword_10076E0D0, &unk_100635D70);
  (*(v115 + 8))(v114, v113);
}

void sub_10057802C()
{
  v64 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
  v1 = *(v64 - 8);
  __chkstk_darwin(v64);
  v66 = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v65 = v57 - v4;
  v5 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v67 = v57 - v9;
  __chkstk_darwin(v10);
  v73 = v57 - v11;
  __chkstk_darwin(v12);
  v14 = v57 - v13;
  v57[2] = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
  v58 = v0;

  v15 = TTRRemindersListTreeViewModel.uncommittedReminders.getter();

  v75 = &_swiftEmptySetSingleton;
  v16 = *(v15 + 16);
  v72 = v6;
  if (v16)
  {
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v57[1] = v15;
    v20 = v15 + v19;
    v69 = *(v17 + 56);
    v70 = v18;
    v62 = enum case for TTRRemindersListEditingSessionState.SaveState.notSaved(_:);
    v60 = (v1 + 8);
    v61 = (v1 + 104);
    v71 = v17;
    v68 = (v17 - 8);
    v63 = v5;
    v21 = v65;
    (v18)(v14, v15 + v19, v5);
    while (1)
    {
      if (TTRRemindersListUncommittedReminder.editingSessionState.getter())
      {
        TTRRemindersListEditingSessionState.saveState.getter();
        v22 = v66;
        v23 = v64;
        (*v61)(v66, v62, v64);
        sub_10059A488(&qword_10078E100, &type metadata accessor for TTRRemindersListEditingSessionState.SaveState, &protocol conformance descriptor for TTRRemindersListEditingSessionState.SaveState);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = *v60;
        (*v60)(v22, v23);
        v25(v21, v23);
        if (v24)
        {
          v5 = v63;
          (*v68)(v14, v63);
        }

        else
        {
          v26 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
          v27 = [v26 saveRequest];

          sub_10058BC9C(v74, v27);

          v5 = v63;
          (*v68)(v14, v63);
        }
      }

      else
      {
        (*v68)(v14, v5);
      }

      v20 += v69;
      if (!--v16)
      {
        break;
      }

      (v70)(v14, v20, v5);
    }

    v28 = v75;
  }

  else
  {

    v28 = &_swiftEmptySetSingleton;
  }

  v70 = v28;

  v29 = TTRRemindersListTreeViewModel.uncommittedReminders.getter();

  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = 0;
    v71 = v72 + 16;
    v32 = v70 + 56;
    v68 = (v72 + 32);
    v33 = (v72 + 8);
    v69 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v31 >= *(v29 + 16))
      {
        __break(1u);
        return;
      }

      v34 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v35 = *(v72 + 72);
      (*(v72 + 16))(v73, v29 + v34 + v35 * v31, v5);
      if (TTRRemindersListUncommittedReminder.editingSessionState.getter())
      {
        v36 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();

        v37 = [v36 saveRequest];

        if (v37)
        {
          if (*(v70 + 2))
          {
            v38 = v70;
            v39 = static Hasher._hash(seed:_:)();
            v40 = -1 << v38[32];
            v41 = v39 & ~v40;
            if ((*&v32[(v41 >> 3) & 0xFFFFFFFFFFFFFF8] >> v41))
            {
              v42 = ~v40;
              while (*(*(v70 + 6) + 8 * v41) != v37)
              {
                v41 = (v41 + 1) & v42;
                if (((*&v32[(v41 >> 3) & 0xFFFFFFFFFFFFFF8] >> v41) & 1) == 0)
                {
                  goto LABEL_22;
                }
              }

              v66 = *v68;
              (v66)(v59, v73, v5);
              v43 = v69;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v75 = v43;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1004A1C8C(0, v43[2] + 1, 1);
                v43 = v75;
              }

              v46 = v43[2];
              v45 = v43[3];
              v47 = v46 + 1;
              if (v46 >= v45 >> 1)
              {
                v69 = v46 + 1;
                sub_1004A1C8C((v45 > 1), v46 + 1, 1);
                v47 = v69;
                v43 = v75;
              }

              v43[2] = v47;
              v69 = v43;
              (v66)(v43 + v34 + v46 * v35, v59, v5);
              goto LABEL_24;
            }
          }

LABEL_22:
        }
      }

      (*v33)(v73, v5);
LABEL_24:
      if (++v31 == v30)
      {
        goto LABEL_32;
      }
    }
  }

  v69 = _swiftEmptyArrayStorage;
LABEL_32:

  v48 = TTRRemindersListTreeViewModel.sortUncommittedRemindersByLocation(_:)();

  v75 = _swiftEmptyArrayStorage;
  v49 = *(v48 + 16);
  if (v49)
  {
    v51 = v72 + 16;
    v50 = *(v72 + 16);
    v52 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v73 = v48;
    v53 = v48 + v52;
    v54 = *(v72 + 72);
    v55 = (v72 + 8);
    v56 = v67;
    v50(v67, v53, v5);
    while (1)
    {
      if (TTRRemindersListUncommittedReminder.editingSessionState.getter())
      {
        TTRRemindersListEditingSessionState.reminderChangeItem.getter();

        (*v55)(v56, v5);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v72 = v51;
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v51 = v72;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v56 = v67;
      }

      else
      {
        (*v55)(v56, v5);
      }

      v53 += v54;
      if (!--v49)
      {
        break;
      }

      v50(v56, v53, v5);
    }
  }
}

void *sub_100578800()
{
  v30 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
  v0 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v28 = &v21 - v3;
  v4 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = TTRRemindersListTreeViewModel.uncommittedReminders.getter();

  v34 = _swiftEmptyArrayStorage;
  v9 = *(v8 + 16);
  if (v9)
  {
    v11 = *(v5 + 16);
    v10 = v5 + 16;
    v12 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v21 = v8;
    v13 = v8 + v12;
    v32 = *(v10 + 56);
    v33 = v11;
    v26 = enum case for TTRRemindersListEditingSessionState.SaveState.notSaved(_:);
    v24 = (v0 + 8);
    v25 = (v0 + 104);
    v31 = (v10 - 8);
    v22 = _swiftEmptyArrayStorage;
    v23 = v7;
    v27 = v10;
    v11(v7, v8 + v12, v4);
    while (1)
    {
      if (TTRRemindersListUncommittedReminder.editingSessionState.getter())
      {
        v14 = v4;
        v15 = v28;
        TTRRemindersListEditingSessionState.saveState.getter();
        v17 = v29;
        v16 = v30;
        (*v25)(v29, v26, v30);
        v18 = static TTRRemindersListEditingSessionState.SaveState.== infix(_:_:)();
        v19 = *v24;
        (*v24)(v17, v16);
        v19(v15, v16);
        if (v18)
        {
          TTRRemindersListEditingSessionState.reminderChangeItem.getter();

          v7 = v23;
          v4 = v14;
          (*v31)(v23, v14);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v22 = v34;
        }

        else
        {
          v7 = v23;
          v4 = v14;
          (*v31)(v23, v14);
        }
      }

      else
      {
        (*v31)(v7, v4);
      }

      v13 += v32;
      if (!--v9)
      {
        break;
      }

      v33(v7, v13, v4);
    }

    return v22;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

double sub_100578B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_10078D7D8);
  (*(v5 + 16))(v7, a2, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = v2;
    v12 = v11;
    v19 = swift_slowAlloc();
    v21 = v19;
    *v12 = 136315138;
    sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v13 = TTRTreeStorageItem.treeItemDescription.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_100004060(v13, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Setting editingSessionState for editing item {item: %s}", v12, 0xCu);
    sub_100004758(v19);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  TTRRemindersListTreeViewModel.setEditingSessionState(_:for:)();

  return result;
}

double sub_100578E40(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_10078D7D8);
  (*(v4 + 16))(v6, a1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v13 = TTRTreeStorageItem.treeItemDescription.getter();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v16 = sub_100004060(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Removing editingSessionState {item: %s}", v11, 0xCu);
    sub_100004758(v12);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  TTRRemindersListTreeViewModel.removeEditingSessionState(for:)();

  return result;
}

double sub_1005790DC(uint64_t a1, void *a2)
{
  v3 = v2;
  v81 = a2;
  v5 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v5 - 8);
  v73 = &v69 - v6;
  v7 = sub_100058000(&qword_100778FB0, &unk_1006470F0);
  __chkstk_darwin(v7 - 8);
  v74 = &v69 - v8;
  v9 = type metadata accessor for TTRRemindersListViewModel.DisplayDate();
  v10 = *(v9 - 8);
  v76 = v9;
  v77 = v10;
  __chkstk_darwin(v9);
  v78 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.Reminder.Override();
  v13 = *(v12 - 8);
  v79 = v12;
  v80 = v13;
  __chkstk_darwin(v12);
  v72 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v75 = &v69 - v16;
  __chkstk_darwin(v17);
  v19 = &v69 - v18;
  __chkstk_darwin(v20);
  v22 = (&v69 - v21);
  v23 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v23 - 8);
  v25 = &v69 - v24;
  v26 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    v30 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
    if (v30)
    {
      return result;
    }
  }

  v32 = REMReminder.accountCapabilities.getter();
  v33 = [v32 insertsCompletedRecurrentCloneAtTail];

  if (v33)
  {
    return result;
  }

  sub_100570810(a1, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1000079B4(v25, &qword_100772738, &unk_10063D2B0);
  }

  else
  {
    (*(v27 + 32))(v29, v25, v26);
    v34 = TTRRemindersListViewModel.Reminder.subtaskCount.getter();
    if ((v35 & 1) == 0)
    {
      *v22 = v34;
      (*(v80 + 104))(v22, enum case for TTRRemindersListViewModel.Reminder.Override.subtaskCount(_:), v79);
      v36 = sub_100547260(0, 1, 1, _swiftEmptyArrayStorage);
      v39 = *(v36 + 2);
      v38 = *(v36 + 3);
      if (v39 >= v38 >> 1)
      {
        v36 = sub_100547260((v38 > 1), v39 + 1, 1, v36);
      }

      (*(v27 + 8))(v29, v26);
      *(v36 + 2) = v39 + 1;
      v40 = v22;
      v37 = v79;
      (*(v80 + 32))(&v36[((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v39], v40, v79);
      goto LABEL_12;
    }

    (*(v27 + 8))(v29, v26);
  }

  v36 = _swiftEmptyArrayStorage;
  v37 = v79;
LABEL_12:
  v41 = [v81 isRecurrent];
  v42 = v78;
  if (v41)
  {
    *v19 = 1;
    v71 = *(v80 + 104);
    v71(v19, enum case for TTRRemindersListViewModel.Reminder.Override.isCompleted(_:), v37);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547260(0, *(v36 + 2) + 1, 1, v36);
    }

    v44 = *(v36 + 2);
    v43 = *(v36 + 3);
    if (v44 >= v43 >> 1)
    {
      v36 = sub_100547260((v43 > 1), v44 + 1, 1, v36);
    }

    *(v36 + 2) = v44 + 1;
    v45 = *(v80 + 32);
    v69 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v46 = *(v80 + 72);
    v80 += 32;
    v70 = v45;
    v45(&v36[v69 + v46 * v44], v19, v37);
    v84 = sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
    v85 = &protocol witness table for REMReminder;
    v82[4] = &protocol witness table for REMReminder;
    v83[0] = v81;
    v82[3] = v84;
    v82[0] = v81;
    v47 = *(*v3 + 248);
    v48 = v81;
    v47(v82);
    sub_100004758(v82);
    v49 = v74;
    static TTRRemindersListViewModel.Reminder.displayDate(from:dateHidden:)();
    sub_100004758(v83);
    v51 = v76;
    v50 = v77;
    if ((*(v77 + 48))(v49, 1, v76) == 1)
    {
      sub_1000079B4(v49, &qword_100778FB0, &unk_1006470F0);
    }

    else
    {
      (*(v50 + 32))(v42, v49, v51);
      v52 = v75;
      (*(v50 + 16))(v75, v42, v51);
      (*(v50 + 56))(v52, 0, 1, v51);
      v71(v52, enum case for TTRRemindersListViewModel.Reminder.Override.displayDate(_:), v37);
      v54 = *(v36 + 2);
      v53 = *(v36 + 3);
      if (v54 >= v53 >> 1)
      {
        v36 = sub_100547260((v53 > 1), v54 + 1, 1, v36);
      }

      *(v36 + 2) = v54 + 1;
      v70(&v36[v69 + v54 * v46], v75, v79);
      v55 = [v48 recurrenceRules];
      if (v55)
      {
        v56 = v55;
        sub_100003540(0, &unk_100775670, REMRecurrenceRule_ptr);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v57 = v73;
      TTRRemindersListViewModel.DisplayDate.date.getter();
      v58 = type metadata accessor for Date();
      (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
      v59 = static TTRRemindersListViewModel.Reminder.recurrenceDescription(from:displayDate:)();
      v61 = v60;

      sub_1000079B4(v57, &qword_1007757F0, &unk_10062DE70);
      if (v61)
      {
        v62 = v72;
        *v72 = v59;
        v62[1] = v61;
        v63 = v79;
        v71(v62, enum case for TTRRemindersListViewModel.Reminder.Override.recurrenceDescription(_:), v79);
        v65 = *(v36 + 2);
        v64 = *(v36 + 3);
        if (v65 >= v64 >> 1)
        {
          v36 = sub_100547260((v64 > 1), v65 + 1, 1, v36);
        }

        (*(v77 + 8))(v42, v51);
        *(v36 + 2) = v65 + 1;
        v70(&v36[v69 + v65 * v46], v62, v63);
      }

      else
      {
        (*(v77 + 8))(v42, v51);
      }
    }
  }

  v66 = [v81 objectID];
  v67 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_reminderCompletionViewModelOverrides;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = *(v3 + v67);
  *(v3 + v67) = 0x8000000000000000;
  sub_100127020(v36, v66, isUniquelyReferenced_nonNull_native);

  *(v3 + v67) = v82[0];
  swift_endAccess();
  return result;
}

void sub_100579AA0(uint64_t a1, void *a2)
{
  v3 = v2;
  v65 = a1;
  v5 = type metadata accessor for TTRRemindersListTreeViewModel.RecurrentReminderReplacement();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v61 = &v54 - v9;
  v10 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v67 = *(v11 - 8);
  __chkstk_darwin(v11);
  v60 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  __chkstk_darwin(v16);
  v64 = &v54 - v17;
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v62 = *(v21 - 8);
  v63 = v21;
  __chkstk_darwin(v21);
  v66 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (!dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter() || (swift_getObjectType(), v23 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter(), swift_unknownObjectRelease(), (v23 & 1) == 0))
  {
    v24 = [a2 accountCapabilities];
    v25 = [v24 insertsCompletedRecurrentCloneAtTail];

    if ((v25 & 1) == 0)
    {
      v57 = v5;
      v58 = v6;
      v26 = v67;
      v56 = *(v67 + 16);
      v56(v20, v65, v11);
      v27 = (*(v26 + 88))(v20, v11);
      if (v27 != enum case for TTRRemindersListViewModel.Item.reminder(_:))
      {
        (*(v26 + 8))(v20, v11);
        return;
      }

      v28 = v27;
      (*(v26 + 96))(v20, v11);
      (*(v62 + 32))(v66, v20, v63);
      v55 = a2;
      v29 = [a2 objectID];
      v30 = v11;
      v31 = v3;
      v32 = v26;
      TTRRemindersListViewModel.ReminderID.groupID.getter();
      v33 = v64;
      TTRRemindersListViewModel.ReminderID.init(objectID:groupID:)();
      v34 = v32;
      v35 = v31;
      v36 = v30;
      (*(v34 + 104))(v33, v28, v30);
      v37 = v56;
      v56(v15, v33, v30);
      v37(v60, v65, v30);
      v38 = v61;
      TTRRemindersListTreeViewModel.RecurrentReminderReplacement.init(cloned:original:)();
      v39 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_recurrentReminderReplacements;
      swift_beginAccess();
      v40 = *(v35 + v39);

      LOBYTE(v33) = sub_10010D110(v38, v40);

      v41 = v57;
      if ((v33 & 1) == 0)
      {
        v42 = v59;
        (*(v58 + 16))(v59, v38, v57);
        swift_beginAccess();
        v43 = *(v35 + v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v35 + v39) = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v43 = sub_1005472AC(0, v43[2] + 1, 1, v43);
          *(v35 + v39) = v43;
        }

        v46 = v43[2];
        v45 = v43[3];
        if (v46 >= v45 >> 1)
        {
          v43 = sub_1005472AC((v45 > 1), v46 + 1, 1, v43);
        }

        v43[2] = v46 + 1;
        (*(v58 + 32))(v43 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v46, v42, v41);
        *(v35 + v39) = v43;
        swift_endAccess();
      }

      v47 = [v55 objectID];
      v48 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      v49 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_reminderCompletionViewModelOverrides;
      swift_beginAccess();
      v50 = *(v35 + v49);
      if (*(v50 + 16))
      {

        v51 = sub_1002613B0(v48);
        if (v52)
        {
          v53 = *(*(v50 + 56) + 8 * v51);

LABEL_18:
          swift_beginAccess();
          sub_1002EA0E4(v53, v47);
          swift_endAccess();
          (*(v58 + 8))(v38, v41);
          (*(v67 + 8))(v64, v36);
          (*(v62 + 8))(v66, v63);
          return;
        }
      }

      else
      {
      }

      v53 = 0;
      goto LABEL_18;
    }
  }
}

double sub_10057A174(void *a1, uint64_t a2)
{
  swift_getObjectType();
  if (!dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter() || (swift_getObjectType(), v4 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter(), swift_unknownObjectRelease(), (v4 & 1) == 0))
  {
    v15[2] = a1;

    sub_100058000(&qword_100775570, &unk_1006470E0);
    Set.removeAll(where:)();
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = (a2 + 40);
      do
      {
        v10 = *v7;
        v11 = *(v7 - 1);
        v12 = v10;
        v13 = REMReminder.accountCapabilities.getter();
        v14 = [v13 insertsCompletedRecurrentCloneAtTail];

        if (v14)
        {
          v8 = [v11 objectID];
          v9 = sub_1000E9C18(v8);
        }

        else
        {
          sub_10001DFB0(v15, [v11 objectID]);

          sub_10001DFB0(v15, [v12 objectID]);
        }

        v7 += 2;
        --v6;
      }

      while (v6);
    }

    if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.insertAllowlistCompletedReminderIDs(_:)();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_10057A3A0(uint64_t a1)
{
  v3 = sub_100058000(&qword_10076FA28, &unk_1006327A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v35 = &v31 - v7;
  v8 = sub_100058000(&qword_100781860, &qword_10063D2E0);
  __chkstk_darwin(v8 - 8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v32 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
  v33 = v1;

  v13 = TTRRemindersListTreeViewModel.copy()();

  v14 = 0;
  v34 = a1;
  v38 = *(a1 + 16);
  v15 = (v4 + 32);
  v16 = (v4 + 8);
  while (1)
  {
    v17 = v38;
    if (v14 == v38)
    {
      v18 = sub_100058000(&qword_100781868, &qword_10063D2E8);
      v19 = v37;
      (*(*(v18 - 8) + 56))(v37, 1, 1, v18);
      v14 = v17;
      goto LABEL_7;
    }

    if (v14 >= v38)
    {
      break;
    }

    v20 = sub_100058000(&qword_100781868, &qword_10063D2E8);
    v21 = *(v20 - 8);
    v19 = v37;
    sub_10000794C(v34 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v14, v37, &qword_100781868, &qword_10063D2E8);
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_11;
    }

    (*(v21 + 56))(v19, 0, 1, v20);
LABEL_7:
    sub_100016588(v19, v12, &qword_100781860, &qword_10063D2E0);
    v23 = sub_100058000(&qword_100781868, &qword_10063D2E8);
    if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
    {
      *(v33 + v32) = v13;

      return;
    }

    v24 = *(v23 + 48);
    v25 = *(v23 + 64);
    v26 = *v15;
    v27 = v35;
    (*v15)(v35, &v12[v24], v3);
    v28 = v36;
    v26(v36, &v12[v25], v3);
    TTRRemindersListTreeViewModel.moveItem(from:to:)();
    v29 = *v16;
    (*v16)(v28, v3);
    v29(v27, v3);
    v30 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v30 - 8) + 8))(v12, v30);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_10057A7B4(uint64_t a1)
{
  swift_getObjectType();
  if (!dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    return 1;
  }

  swift_getObjectType();
  v1 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)();
  swift_unknownObjectRelease();
  return v1 & 1;
}

void sub_10057A85C(uint64_t a1, char a2, __n128 a3)
{
  v4 = type metadata accessor for TTRListType.SortingCapability();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v5 + 16))(v7, v3 + v8, v4);
  v9 = (*(v5 + 88))(v7, v4);
  if (v9 == enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    (*(v5 + 96))(v7, v4);
    v10 = type metadata accessor for REMRemindersListDataView.SortingStyle();
    (*(*(v10 - 8) + 8))(v7, v10);
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_10078D7D8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Illegal attempt to change sorting style.", v14, 2u);
    }
  }

  else if (v9 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceBaseType.update(_:shouldReloadList:)();
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

uint64_t sub_10057AADC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_10057AB60(uint64_t a1, __n128 a2)
{
  v156 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v160 = *(v156 - 8);
  __chkstk_darwin(v156);
  v4 = &v109[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v161 = *(v119 - 8);
  __chkstk_darwin(v119);
  v118 = &v109[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100058000(&qword_100773318, &unk_100634EF0);
  __chkstk_darwin(v6 - 8);
  v140 = &v109[-v7];
  v139 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v149 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v109[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v9 - 8);
  v137 = &v109[-v10];
  v11 = sub_100058000(&qword_1007693B0, &unk_100631DC0);
  __chkstk_darwin(v11 - 8);
  v136 = &v109[-v12];
  v153 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v124 = *(v153 - 8);
  __chkstk_darwin(v153);
  v135 = &v109[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v152 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v144 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v109[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100058000(&qword_10078E0B8, &qword_100647098);
  __chkstk_darwin(v15 - 8);
  v150 = &v109[-v16];
  v158 = sub_100058000(&qword_10078E0C0, &unk_1006470A0);
  v122 = *(v158 - 8);
  __chkstk_darwin(v158);
  v134 = &v109[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v157 = &v109[-v19];
  v20 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v20 - 8);
  v165 = &v109[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v155 = &v109[-v23];
  v24 = sub_100058000(&qword_10076E900, &qword_100631E10);
  __chkstk_darwin(v24 - 8);
  v26 = &v109[-v25];
  v176 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v27 = *(v176 - 8);
  __chkstk_darwin(v176);
  v133 = &v109[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v31 = &v109[-v30];
  v32 = type metadata accessor for TTRRemindersListViewModel.Item();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v159 = &v109[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v132 = &v109[-v36];
  __chkstk_darwin(v37);
  v131 = &v109[-v38];
  __chkstk_darwin(v39);
  v41 = &v109[-v40];
  v42 = TTRRemindersListTreeViewModel.sectionItems.getter();
  v43 = v42;
  v173 = *(v42 + 16);
  if (!v173)
  {

LABEL_43:

    return;
  }

  v154 = v4;
  v172 = v42 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v130 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  v44 = 0;
  v174 = v33 + 16;
  v171 = (v27 + 48);
  v163 = (v33 + 48);
  v164 = (v27 + 32);
  v148 = (v33 + 32);
  v147 = (v160 + 88);
  v146 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
  v170 = (v33 + 8);
  v166 = (v27 + 8);
  v129 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
  v141 = (v160 + 8);
  v145 = (v144 + 13);
  v117 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
  ++v144;
  v143 = (v122 + 6);
  v110 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
  v128 = (v122 + 4);
  v127 = (v124 + 2);
  v126 = (v122 + 2);
  v142 = enum case for TTRRemindersListReminderCreationLocation.endOfSection(_:);
  v125 = (v149 + 8);
  ++v124;
  v123 = enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:);
  ++v122;
  v121 = (v27 + 16);
  v116 = (v161 + 8);
  *&v45 = 136315138;
  v115 = v45;
  v120 = (v33 + 104);
  v160 = a1;
  v175 = v31;
  v149 = v33;
  v161 = v43;
  v46 = v155;
  v162 = v26;
  v168 = v32;
  v169 = v41;
  while (v44 < *(v43 + 16))
  {
    v47 = *(v33 + 16);
    v47(v41, v172 + *(v33 + 72) * v44, v32);
    TTRRemindersListViewModel.Item.sectionHeader.getter();
    v48 = v176;
    if ((*v171)(v26, 1, v176) != 1)
    {
      v49 = v26;
      v50 = v46;
      v51 = v175;
      (*v164)(v175, v49, v48);
      if ((*(*v167 + 904))(v51, a1, &protocol witness table for TTRRemindersListTreeViewModel, 0))
      {
        v46 = v50;
        v41 = v169;
        TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(atTheEndOfSection:)();
        v32 = v168;
        if ((*v163)(v50, 1, v168) == 1)
        {
          sub_1000079B4(v50, &qword_100772140, &qword_10062D9F0);
          v52 = v151;
          TTRRemindersListViewModel.SectionHeader.id.getter();
          v53 = v152;
          (*v145)(v52, v142, v152);
          v54 = v150;
          TTRRemindersListTreeViewModel.resolve(_:)();
          (*v144)(v52, v53);
          v55 = v158;
          v56 = (*v143)(v54, 1, v158);
          v26 = v162;
          if (v56 == 1)
          {
            sub_1000079B4(v54, &qword_10078E0B8, &qword_100647098);
            v32 = v168;
            if (qword_100767468 != -1)
            {
              swift_once();
            }

            v57 = type metadata accessor for Logger();
            sub_100003E30(v57, qword_10078D7D8);
            v58 = v133;
            v59 = v175;
            v60 = v176;
            (*v121)(v133, v175, v176);
            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.fault.getter();
            v63 = os_log_type_enabled(v61, v62);
            v41 = v169;
            if (v63)
            {
              v64 = swift_slowAlloc();
              v112 = v64;
              v114 = swift_slowAlloc();
              v177 = v114;
              *v64 = v115;
              v65 = v118;
              v113 = v62;
              TTRRemindersListViewModel.SectionHeader.id.getter();
              sub_10059A488(&qword_10078E0F8, &type metadata accessor for TTRRemindersListViewModel.SectionID, &protocol conformance descriptor for TTRRemindersListViewModel.SectionID);
              v66 = v58;
              v67 = v119;
              v68 = dispatch thunk of CustomStringConvertible.description.getter();
              v111 = v61;
              v70 = v69;
              (*v116)(v65, v67);
              v71 = *v166;
              (*v166)(v66, v60);
              v72 = sub_100004060(v68, v70, &v177);

              v73 = v112;
              *(v112 + 1) = v72;
              v74 = v111;
              _os_log_impl(&_mh_execute_header, v111, v113, "Unable to resolve ReminderCreationLocation endOfSection for id %s", v73, 0xCu);
              sub_100004758(v114);

              v71(v175, v60);
            }

            else
            {

              v89 = *v166;
              (*v166)(v58, v60);
              v89(v59, v60);
            }

            (*v170)(v41, v32);
            a1 = v160;
          }

          else
          {
            (*v128)(v157, v54, v55);
            v81 = v137;
            sub_10000794C(v167 + v130, v137, &unk_10078A380, &qword_10062DE60);
            v82 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
            v83 = *(v82 - 8);
            v84 = (*(v83 + 48))(v81, 1, v82);
            v32 = v168;
            if (v84 == 1)
            {
              sub_1000079B4(v81, &unk_10078A380, &qword_10062DE60);
              v85 = type metadata accessor for TTRTemplatePublicLinkData();
              v86 = v136;
              (*(*(v85 - 8) + 56))(v136, 1, 1, v85);
              v87 = &selRef_newObjectID;
            }

            else
            {
              v86 = v136;
              TTRRemindersListViewModel.ListInfo.templateStatus.getter();
              (*(v83 + 8))(v81, v82);
              v90 = type metadata accessor for TTRTemplatePublicLinkData();
              if ((*(*(v90 - 8) + 48))(v86, 1, v90) == 1)
              {
                v87 = &selRef_newObjectID;
              }

              else
              {
                v87 = &selRef_newObjectIDForSavedReminder;
              }
            }

            v41 = v169;
            sub_1000079B4(v86, &qword_1007693B0, &unk_100631DC0);
            v91 = [objc_opt_self() *v87];
            v92 = v135;
            v93 = v157;
            sub_10057C4B4(v91, v135);

            v94 = v131;
            (*v127)(v131, v92, v153);
            (*v120)(v94, v123, v32);
            v47(v132, v94, v32);
            v95 = v93;
            v96 = v158;
            (*v126)(v134, v95, v158);
            v97 = v138;
            TTRRemindersListUncommittedReminder.init(placeholderReminder:location:)();
            v98 = v140;
            v99 = v160;
            TTRRemindersListTreeViewModel.insert(_:)();
            sub_1000079B4(v98, &qword_100773318, &unk_100634EF0);
            (*v125)(v97, v139);
            v100 = *v170;
            (*v170)(v94, v32);
            (*v124)(v92, v153);
            (*v122)(v157, v96);
            (*v166)(v175, v176);
            v100(v41, v32);
            a1 = v99;
          }

          v46 = v155;
          v33 = v149;
          v43 = v161;
          goto LABEL_4;
        }

        (*v166)(v175, v176);
        (*v170)(v41, v32);
        sub_1000079B4(v50, &qword_100772140, &qword_10062D9F0);
        goto LABEL_25;
      }

      v75 = v165;
      v41 = v169;
      TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(atTheEndOfSection:)();
      v32 = v168;
      if ((*v163)(v75, 1, v168) == 1)
      {
        (*v166)(v175, v176);
        (*v170)(v41, v32);
        sub_1000079B4(v165, &qword_100772140, &qword_10062D9F0);
      }

      else
      {
        v76 = v159;
        (*v148)(v159, v165, v32);
        v77 = v154;
        TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
        v78 = v156;
        v79 = (*v147)(v77, v156);
        if (v79 == v146)
        {
          v80 = *v170;
          (*v170)(v76, v32);
          (*v166)(v175, v176);
          v41 = v169;
          v80(v169, v32);
          a1 = v160;
          (*v141)(v77, v78);
        }

        else
        {
          if (v79 != v129)
          {
            v101 = v159;
            if (v79 == v117)
            {
              v102 = TTRRemindersListTreeViewModel.editingSessionState(for:)();
              v103 = v175;
              v46 = v50;
              if (v102)
              {
              }

              else
              {
                v106 = v140;
                TTRRemindersListTreeViewModel.delete(_:)();
                v107 = v106;
                v103 = v175;
                sub_1000079B4(v107, &qword_100773318, &unk_100634EF0);
              }

              v26 = v162;
              v108 = *v170;
              v32 = v168;
              (*v170)(v101, v168);
              (*v166)(v103, v176);
              v41 = v169;
              v108(v169, v32);
              (*v141)(v154, v156);
              a1 = v160;
              v43 = v161;
              goto LABEL_4;
            }

            v104 = v176;
            v43 = v161;
            if (v79 != v110)
            {
              goto LABEL_45;
            }

            v105 = *v170;
            v32 = v168;
            (*v170)(v159, v168);
            (*v166)(v175, v104);
            v41 = v169;
            v105(v169, v32);
            a1 = v160;
            goto LABEL_24;
          }

          v88 = *v170;
          v32 = v168;
          (*v170)(v159, v168);
          (*v166)(v175, v176);
          v41 = v169;
          v88(v169, v32);
          a1 = v160;
          (*v141)(v154, v156);
        }

        v43 = v161;
      }

LABEL_24:
      v46 = v50;
LABEL_25:
      v26 = v162;
      goto LABEL_4;
    }

    (*v170)(v41, v32);
    sub_1000079B4(v26, &qword_10076E900, &qword_100631E10);
LABEL_4:
    if (v173 == ++v44)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_45:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10057C1B0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v8);
  v11 = &v21[-v10];
  (*(v5 + 104))(&v21[-v10], enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:), v4, v9);
  if (*(v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_receivedFirstUpdateFromDataModelSource) == 1)
  {

    v12 = TTRRemindersListTreeViewModel.isEffectivelyEmpty.getter();

    if (v12)
    {
      (*(*v1 + 560))(v13);
      (*(v5 + 8))(v11, v4);
      (*(v5 + 32))(v11, v7, v4);
    }
  }

  v14 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_listMessaging;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v14, v4);
  sub_10059A488(&qword_100777948, &type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType, &protocol conformance descriptor for TTRRemindersListViewModel.EmptyListMessagingType);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v5 + 8);
  v16(v7, v4);
  if (v15)
  {
    if ((a1 & 1) == 0)
    {
      return (v16)(v11, v4);
    }
  }

  else
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v14, v11, v4);
    swift_endAccess();
  }

  v17 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 64))(v11, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  return (v16)(v11, v4);
}

uint64_t sub_10057C4B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v2 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v31 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_10078E0C0, &unk_1006470A0);
  TTRTreeStorageTemporaryNodeLocation.parent.getter();
  v18 = *(v15 + 48);
  if (v18(v13, 1, v14) == 1)
  {
    sub_1000079B4(v13, &qword_100772140, &qword_10062D9F0);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);

    TTRRemindersListTreeViewModel.sectionItem(containing:allowsSelf:)();

    if (v18(v10, 1, v14) == 1)
    {
      (*(v15 + 8))(v17, v14);
      sub_1000079B4(v10, &qword_100772140, &qword_10062D9F0);
    }

    else
    {
      if ((*(v15 + 88))(v10, v14) == enum case for TTRRemindersListViewModel.Item.section(_:))
      {
        (*(v15 + 96))(v10, v14);
        v20 = v26;
        v19 = v27;
        (*(v27 + 32))(v26, v10, v29);

        TTRRemindersListTreeViewModel.reminderIDProvider.getter();

        v30 = v34[4];
        sub_10000C36C(v34, v34[3]);
        v21 = v28;
        TTRRemindersListViewModel.SectionHeader.id.getter();
        dispatch thunk of TTRRemindersListReminderIDProviding.makeReminderID(objectID:sectionID:)();
        (*(v5 + 8))(v21, v31);
        (*(v19 + 8))(v20, v29);
        (*(v15 + 8))(v17, v14);
        return sub_100004758(v34);
      }

      v23 = *(v15 + 8);
      v23(v17, v14);
      v23(v10, v14);
    }
  }

  (*(v5 + 56))(v4, 1, 1, v31);
  v24 = v32;
  return TTRRemindersListViewModel.ReminderID.init(objectID:groupID:)();
}

void sub_10057C9B8(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_100058000(&qword_1007693B0, &unk_100631DC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v5, &unk_10078A380, &qword_10062DE60);
  v10 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_1000079B4(v5, &unk_10078A380, &qword_10062DE60);
    v12 = type metadata accessor for TTRTemplatePublicLinkData();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  else
  {
    TTRRemindersListViewModel.ListInfo.templateStatus.getter();
    (*(v11 + 8))(v5, v10);
    v13 = type metadata accessor for TTRTemplatePublicLinkData();
    if ((*(*(v13 - 8) + 48))(v8, 1, v13) != 1)
    {
      v14 = &selRef_newObjectIDForSavedReminder;
      goto LABEL_6;
    }
  }

  v14 = &selRef_newObjectID;
LABEL_6:
  sub_1000079B4(v8, &qword_1007693B0, &unk_100631DC0);
  v15 = [objc_opt_self() *v14];
  sub_10057C4B4(v15, a1);
}

void sub_10057CC60(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v16[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100058000(&qword_10076BB78, &qword_10062FDD0);
    sub_10000E188(&qword_10076BB80, &qword_10076BB78, &qword_10062FDD0, &unk_1006362F8);
    Set.Iterator.init(_cocoa:)();
    v2 = v16[2];
    v3 = v16[3];
    v4 = v16[4];
    v5 = v16[5];
    v6 = v16[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_10008BA48(v2);
      return;
    }

    while (1)
    {
      sub_10058C94C(v16, v15, &qword_100782430, &qword_10063E1C0, &qword_10076BB78, &qword_10062FDD0);

      v5 = v13;
      v6 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100058000(&qword_10076BB78, &qword_10062FDD0);
        swift_dynamicCast();
        v15 = v16[0];
        v13 = v5;
        v14 = v6;
        if (v16[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_18;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10057CE90(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v16[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100058000(&qword_10076B788, &unk_10062FB80);
    sub_10000E188(&unk_10076B910, &qword_10076B788, &unk_10062FB80, &unk_1006362F8);
    Set.Iterator.init(_cocoa:)();
    v2 = v16[2];
    v3 = v16[3];
    v4 = v16[4];
    v5 = v16[5];
    v6 = v16[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_10008BA48(v2);
      return;
    }

    while (1)
    {
      sub_10058C94C(v16, v15, &qword_100782418, &unk_100647040, &qword_10076B788, &unk_10062FB80);

      v5 = v13;
      v6 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100058000(&qword_10076B788, &unk_10062FB80);
        swift_dynamicCast();
        v15 = v16[0];
        v13 = v5;
        v14 = v6;
        if (v16[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_18;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10057D0C0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v15 = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_10058CBA4(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10057D1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v25 - v9;
  v12 = __chkstk_darwin(v11);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      sub_10058B6B8(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10057D3E0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v15 = a2;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_10058CBA4(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10057D4E4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100058000(&qword_10076BB78, &qword_10062FDD0);
    sub_10000E188(&qword_10076BB80, &qword_10076BB78, &qword_10062FDD0, &unk_1006362F8);
    Set.Iterator.init(_cocoa:)();
    v1 = v15[1];
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
  }

  v9 = (v3 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      sub_10008BA48(v1);
      return;
    }

    while (1)
    {
      sub_10058C94C(v15, v14, &qword_100782430, &qword_10063E1C0, &qword_10076BB78, &qword_10062FDD0);

      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100058000(&qword_10076BB78, &qword_10062FDD0);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v4;
        v13 = v5;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_18;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10057D710(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    sub_1000072CC(&qword_10076D1D0, &qword_10076BA50, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_10008BA48(v1);
      return;
    }

    while (1)
    {
      sub_10001DFB0(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10057D91C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100058000(&qword_10076B788, &unk_10062FB80);
    sub_10000E188(&unk_10076B910, &qword_10076B788, &unk_10062FB80, &unk_1006362F8);
    Set.Iterator.init(_cocoa:)();
    v1 = v15[1];
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
  }

  v9 = (v3 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      sub_10008BA48(v1);
      return;
    }

    while (1)
    {
      sub_10058C94C(v15, v14, &qword_100782418, &unk_100647040, &qword_10076B788, &unk_10062FB80);

      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100058000(&qword_10076B788, &unk_10062FB80);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v4;
        v13 = v5;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_18;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10057DBA0(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v26 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v25 - v9;
  v12 = __chkstk_darwin(v11);
  v14 = v25 - v13;
  v15 = 0;
  v27 = a1;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v27 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      v26(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10057DDC0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListTargetContainer();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TTRRemindersListReminderActionTarget(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTarget);
        v8 = &enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
LABEL_17:
        v17 = *v8;
        v18 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v18 - 8) + 104))(v6, v17, v18);
        v14 = &enum case for TTRRemindersListTargetContainer.targetList(_:);
        goto LABEL_19;
      }

      v15 = *a1;
      v16 = a1[1];

      *v6 = v16;
LABEL_16:
      v8 = &enum case for TTRRemindersListTargetContainer.TargetList.staleList(_:);
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 5)
    {
      v19 = type metadata accessor for TTRSection();
      (*(*(v19 - 8) + 32))(v6, a1, v19);
      v14 = &enum case for TTRRemindersListTargetContainer.targetSection(_:);
      goto LABEL_19;
    }

    v10 = *a1;
    v9 = a1[1];
    v11 = a1[2];

    *v6 = v10;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *v6 = *a1;
      goto LABEL_16;
    }

    *v6 = *a1;
LABEL_14:
    v6[1] = 0;
    v14 = &enum case for TTRRemindersListTargetContainer.targetReminder(_:);
LABEL_19:
    (*(v21 + 104))(v6, *v14, v4);
    (*(v21 + 32))(a2, v6, v4);
    return (*(v21 + 56))(a2, 0, 1, v4);
  }

  v12 = *(v21 + 56);

  return v12(a2, 1, 1, v4);
}

uint64_t sub_10057E068@<X0>(uint64_t a1@<X8>)
{
  if (qword_100767470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = sub_100003E30(v2, qword_1007A8920);
  return sub_10059A648(v3, a1, type metadata accessor for TTRRemindersListEditingInteractionOptions);
}

uint64_t sub_10057E0E8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v1 + v12, v7, &unk_10078A380, &qword_10062DE60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &unk_10078A380, &qword_10062DE60);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
    v13 = TTRRemindersListViewModel.SupportsEditableSections.isSupported.getter();
    (*(v2 + 8))(v4, v21);
    (*(v9 + 8))(v11, v8);
    if (v13)
    {
      v14 = enum case for TTRAccesibility.SectionHeaderType.other(_:);
      v15 = type metadata accessor for TTRAccesibility.SectionHeaderType();
      v16 = *(v15 - 8);
      v17 = v22;
      (*(v16 + 104))(v22, v14, v15);
      return (*(v16 + 56))(v17, 0, 1, v15);
    }
  }

  v19 = type metadata accessor for TTRAccesibility.SectionHeaderType();
  return (*(*(v19 - 8) + 56))(v22, 1, 1, v19);
}

uint64_t sub_10057E44C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_10057E4BC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRSection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  __chkstk_darwin(v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10059A648(v1, v8, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
      v13 = static TTRLocalizableStrings.AutoCategorization.multipleItemsTitle(withCount:shouldUseItemWording:)();
      static TTRLocalizableStrings.AutoCategorization.multipleItemsSubtitle.getter();
      return v13;
    }

    v10 = sub_100058000(&unk_1007759C0, &qword_100633140);
    (*(v3 + 32))(v5, v8 + *(v10 + 48), v2);
    type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
    v11 = static TTRLocalizableStrings.AutoCategorization.multipleItemsTitle(withCount:shouldUseItemWording:)();
  }

  else
  {

    v12 = sub_100058000(&qword_100770AB8, &unk_100646E60);
    (*(v3 + 32))(v5, v8 + *(v12 + 48), v2);
    v11 = static TTRLocalizableStrings.AutoCategorization.singleItemTitle.getter();
  }

  v13 = v11;
  TTRSection.displayName.getter();
  (*(v3 + 8))(v5, v2);
  return v13;
}

void sub_10057E72C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10057E950(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_10057E9B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100058000(a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __CocoaSet.Index.element.getter();
    sub_100058000(a5, a6);
    swift_dynamicCast();
    Hasher.init(_seed:)();
    Hasher._combine(_:)(*(v13 + 16));
    v9 = Hasher._finalize()();
    v10 = -1 << *(a4 + 32);
    v11 = v9 & ~v10;
    if ((*(a4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v12 = ~v10;
      while (*(*(*(a4 + 48) + 8 * v11) + 16) != *(v13 + 16))
      {
        v11 = (v11 + 1) & v12;
        if (((*(a4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_16;
    }

LABEL_10:

    __break(1u);
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }
}

uint64_t sub_10057EBB0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

void sub_10057EC9C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100003540(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100003540(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

uint64_t sub_10057EEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  sub_100058000(&qword_100773368, &qword_100634F30);
  sub_10000E188(&unk_100784560, &qword_10076E0B0, &unk_100631BD0, &protocol conformance descriptor for [A]);
  return Sequence.completeCompactMap<A>(_:)();
}

uint64_t sub_10057EFA4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRSection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v33 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  __chkstk_darwin(v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10059A648(v1, v11, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v11;
      v14 = sub_100058000(&unk_1007759C0, &qword_100633140);
      (*(v3 + 32))(v5, &v11[*(v14 + 48)], v2);
      if (*(v1 + *(type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0) + 20)) == 1)
      {
        static TTRAccesibility.RemindersList.AutoCategorization.MultipleItemsSingleSectionCategorizationFormat.getter();
      }

      else
      {
        static TTRAccesibility.RemindersList.AutoCategorization.MultipleRemindersSingleSectionCategorizationFormat.getter();
      }

      sub_100058000(&unk_100786CB0, &qword_100636EF0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10062D3F0;
      *(v27 + 56) = &type metadata for Int;
      *(v27 + 64) = &protocol witness table for Int;
      *(v27 + 32) = v13;
      v28 = TTRSection.displayName.getter();
      v30 = v29;
      *(v27 + 96) = &type metadata for String;
      *(v27 + 104) = sub_10005C390();
      *(v27 + 72) = v28;
      *(v27 + 80) = v30;
      v25 = static String.localizedStringWithFormat(_:_:)();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v26 = *v11;
      if (*(v1 + *(type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0) + 20)) == 1)
      {
        static TTRAccesibility.RemindersList.AutoCategorization.MultipleItemsMultipleSectionsCategorizationFormat.getter();
      }

      else
      {
        static TTRAccesibility.RemindersList.AutoCategorization.MultipleRemindersMultipleSectionsCategorizationFormat.getter();
      }

      sub_100058000(&unk_100786CB0, &qword_100636EF0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_10062D400;
      *(v31 + 56) = &type metadata for Int;
      *(v31 + 64) = &protocol witness table for Int;
      *(v31 + 32) = v26;
      v25 = static String.localizedStringWithFormat(_:_:)();
    }
  }

  else
  {
    v15 = *v11;
    v16 = sub_100058000(&qword_100770AB8, &unk_100646E60);
    (*(v3 + 32))(v8, &v11[*(v16 + 48)], v2);
    v17 = [v15 titleAsString];
    if (v17)
    {
      v18 = v17;
      v33[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v33[1] = static TTRAccesibility.RemindersList.AutoCategorization.SingleItemCategorizationFormat.getter();
      sub_100058000(&unk_100786CB0, &qword_100636EF0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10062D3F0;
      *(v21 + 56) = &type metadata for String;
      v22 = sub_10005C390();
      *(v21 + 64) = v22;
      *(v21 + 32) = v33[0];
      *(v21 + 40) = v20;
      v23 = TTRSection.displayName.getter();
      *(v21 + 96) = &type metadata for String;
      *(v21 + 104) = v22;
      *(v21 + 72) = v23;
      *(v21 + 80) = v24;
      v25 = static String.localizedStringWithFormat(_:_:)();

      (*(v3 + 8))(v8, v2);
    }

    else
    {
      (*(v3 + 8))(v8, v2);

      return 0;
    }
  }

  return v25;
}

uint64_t sub_10057F400()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078D7D8);
  v1 = sub_100003E30(v0, qword_10078D7D8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10057F4D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10057F568(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  sub_100003E68(v5, a2);
  v6 = sub_100003E30(v5, a2);
  v7 = v5[5];
  v8 = *a3;
  v9 = type metadata accessor for TTRReminderListCompletionBehavior();
  result = (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = 1;
  v6[v5[6]] = 0;
  v6[v5[7]] = 0;
  v6[v5[8]] = 0;
  v6[v5[9]] = 0;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  return result;
}

uint64_t sub_10057F644(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:) || v7 == enum case for TTRRemindersListViewModel.Item.section(_:) || v7 == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    goto LABEL_9;
  }

  if (v7 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v7 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:))
  {
    goto LABEL_15;
  }

  v13 = v7 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v7 == enum case for TTRRemindersListViewModel.Item.hashtags(_:);
  if (v13 || v7 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:))
  {
LABEL_9:
    v10 = 1;
LABEL_16:
    (*(v3 + 8))(v6, v2);
    return v10;
  }

  if (v7 == enum case for TTRRemindersListViewModel.Item.tip(_:))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  if (v7 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v7 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
  {
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

double sub_10057F828(uint64_t a1)
{
  v1 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v1 - 8);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
    swift_beginAccess();
    sub_10000794C(v13 + v14, v6, &unk_10078A380, &qword_10062DE60);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000079B4(v6, &unk_10078A380, &qword_10062DE60);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      (*(v8 + 16))(v3, v10, v7);
      (*(v8 + 56))(v3, 0, 1, v7);
      sub_10056F540(v3);
      sub_1000079B4(v3, &unk_10078A380, &qword_10062DE60);
      v15 = v13 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 8);
        ObjectType = swift_getObjectType();
        LOBYTE(v16) = (*(v16 + 32))(ObjectType, v16);
        swift_unknownObjectRelease();
        if (v16)
        {
          sub_1005820E8(1);
        }
      }

      (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

uint64_t sub_10057FAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v108 = a5;
  v109 = a4;
  v106 = a2;
  v8 = type metadata accessor for TTRReminderCellStyle();
  __chkstk_darwin(v8 - 8);
  v107 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100786490, qword_100642278);
  __chkstk_darwin(v10 - 8);
  v104 = &v96 - v11;
  v103 = type metadata accessor for TTRReminderProtocolWithPendingMove();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v13 - 8);
  v100 = &v96 - v14;
  v15 = type metadata accessor for TTRRemindersListViewModel.Reminder.Override();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v97 = (&v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v96 = &v96 - v19;
  __chkstk_darwin(v20);
  v99 = (&v96 - v21);
  __chkstk_darwin(v22);
  v98 = (&v96 - v23);
  __chkstk_darwin(v24);
  v26 = (&v96 - v25);
  __chkstk_darwin(v27);
  v29 = &v96 - v28;
  __chkstk_darwin(v30);
  v32 = &v96 - v31;
  v33 = sub_100058000(&qword_100778FB0, &unk_1006470F0);
  __chkstk_darwin(v33 - 8);
  v35 = &v96 - v34;
  v105 = a1;
  TTRReminderProtocolWithPendingMove.reminder.getter();
  v36 = _swiftEmptyArrayStorage;
  v110 = _swiftEmptyArrayStorage;
  if ((*(*a3 + 248))(v111))
  {
    static TTRRemindersListViewModel.Reminder.displayDate(from:dateHidden:)();
    sub_10000794C(v35, v32, &qword_100778FB0, &unk_1006470F0);
    (*(v16 + 104))(v32, enum case for TTRRemindersListViewModel.Reminder.Override.displayDate(_:), v15);
    v36 = sub_100547260(0, 1, 1, _swiftEmptyArrayStorage);
    v38 = v36[2];
    v37 = v36[3];
    if (v38 >= v37 >> 1)
    {
      v36 = sub_100547260((v37 > 1), v38 + 1, 1, v36);
    }

    sub_1000079B4(v35, &qword_100778FB0, &unk_1006470F0);
    v36[2] = v38 + 1;
    (*(v16 + 32))(v36 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v38, v32, v15);
    v110 = v36;
  }

  v39 = v109;
  if (((*(*a3 + 256))(v109) & 1) == 0)
  {
    v40 = type metadata accessor for TTRRemindersListViewModel.ListNameData();
    (*(*(v40 - 8) + 56))(v29, 1, 1, v40);
    (*(v16 + 104))(v29, enum case for TTRRemindersListViewModel.Reminder.Override.listNameData(_:), v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547260(0, v36[2] + 1, 1, v36);
    }

    v42 = v36[2];
    v41 = v36[3];
    if (v42 >= v41 >> 1)
    {
      v36 = sub_100547260((v41 > 1), v42 + 1, 1, v36);
    }

    v36[2] = v42 + 1;
    (*(v16 + 32))(v36 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v42, v29, v15);
    v110 = v36;
  }

  sub_10000C36C(v111, v111[3]);
  v43 = dispatch thunk of TTRReminderProtocol.objectID.getter();
  v44 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_reminderCompletionViewModelOverrides;
  swift_beginAccess();
  v45 = *(a3 + v44);
  if (*(v45 + 16))
  {

    v46 = sub_1002613B0(v43);
    v47 = v98;
    if (v48)
    {
      v49 = *(*(v45 + 56) + 8 * v46);

      v50 = sub_10008154C(v49);
    }

    else
    {
    }
  }

  else
  {

    v47 = v98;
  }

  v51 = (*(*a3 + 272))(v50);
  if (v51)
  {
    *v26 = v51;
    v52 = v51;
    (*(v16 + 104))(v26, enum case for TTRRemindersListViewModel.Reminder.Override.color(_:), v15);
    v53 = v110;
    v54 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_100547260(0, v53[2] + 1, 1, v53);
    }

    v56 = v53[2];
    v55 = v53[3];
    if (v56 >= v55 >> 1)
    {
      v53 = sub_100547260((v55 > 1), v56 + 1, 1, v53);
    }

    v53[2] = v56 + 1;
    (*(v16 + 32))(v53 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v56, v26, v15);
    v110 = v53;
  }

  v57 = (*(*a3 + 280))();
  v58 = v99;
  if (v57)
  {
    *v47 = v57;
    v59 = v57;
    (*(v16 + 104))(v47, enum case for TTRRemindersListViewModel.Reminder.Override.controlColor(_:), v15);
    v60 = v110;
    v61 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_100547260(0, v60[2] + 1, 1, v60);
    }

    v63 = v60[2];
    v62 = v60[3];
    if (v63 >= v62 >> 1)
    {
      v60 = sub_100547260((v62 > 1), v63 + 1, 1, v60);
    }

    v60[2] = v63 + 1;
    (*(v16 + 32))(v60 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v63, v47, v15);
    v110 = v60;
  }

  v64 = (*(*a3 + 296))();
  if (v64)
  {
    *v58 = v64;
    v65 = v64;
    (*(v16 + 104))(v58, enum case for TTRRemindersListViewModel.Reminder.Override.completedStateTextColor(_:), v15);
    v66 = v110;
    v67 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_100547260(0, v66[2] + 1, 1, v66);
    }

    v69 = v66[2];
    v68 = v66[3];
    if (v69 >= v68 >> 1)
    {
      v66 = sub_100547260((v68 > 1), v69 + 1, 1, v66);
    }

    v66[2] = v69 + 1;
    (*(v16 + 32))(v66 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v69, v58, v15);
    v110 = v66;
  }

  if ((*(*a3 + 512))())
  {
    static TTRRemindersListViewModel.Reminder.completionDateString(from:completionHidden:forAccessibility:)();
    if (v70)
    {
      v71 = static TTRRemindersListViewModel.Reminder.completionDateString(from:completionHidden:forAccessibility:)();
      if (v72)
      {
        v99 = v71;
        v73 = static TTRLocalizableStrings.CompletedList.completed(dateString:)();
        v75 = v74;

        v76 = v96;
        *v96 = v73;
        *(v76 + 1) = v75;
        v98 = *(v16 + 104);
        v98();
        v77 = v110;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_100547260(0, v77[2] + 1, 1, v77);
        }

        v79 = v77[2];
        v78 = v77[3];
        if (v79 >= v78 >> 1)
        {
          v77 = sub_100547260((v78 > 1), v79 + 1, 1, v77);
        }

        v77[2] = v79 + 1;
        v81 = *(v16 + 32);
        v80 = v16 + 32;
        v82 = (*(v80 + 48) + 32) & ~*(v80 + 48);
        v83 = *(v80 + 40);
        v84 = v96;
        v96 = v81;
        (v81)(v77 + v82 + v83 * v79, v84, v15);
        v85 = static TTRLocalizableStrings.CompletedList.completed(dateString:)();
        v87 = v86;

        v88 = v97;
        *v97 = v85;
        v88[1] = v87;
        v98();
        v90 = v77[2];
        v89 = v77[3];
        if (v90 >= v89 >> 1)
        {
          v77 = sub_100547260((v89 > 1), v90 + 1, 1, v77);
        }

        v77[2] = v90 + 1;
        (v96)(v77 + v82 + v90 * v83, v97, v15);
        v110 = v77;
        v39 = v109;
      }

      else
      {
      }
    }
  }

  v91 = type metadata accessor for TTRRemindersListViewModel.Item();
  v92 = *(v91 - 8);
  v93 = v100;
  (*(v92 + 16))(v100, v39, v91);
  (*(v92 + 56))(v93, 0, 1, v91);
  (*(v101 + 16))(v102, v105, v103);
  sub_10000794C(v106, v104, &unk_100786490, qword_100642278);
  v94 = TTRRemindersListViewModel.Reminder.init(item:reminderAndList:precomputedProperties:overrides:)();
  (*(*a3 + 264))(v94);
  TTRRemindersListViewModel.Reminder.style.setter();
  return sub_100004758(v111);
}

uint64_t sub_1005807E0(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:) || v7 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v3 + 8))(v6, v2);
    if (qword_100767468 == -1)
    {
LABEL_7:
      v9 = type metadata accessor for Logger();
      sub_100003E30(v9, qword_10078D7D8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected item type: section", v12, 2u);
      }

      return 0;
    }

LABEL_26:
    swift_once();
    goto LABEL_7;
  }

  if (v7 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v7 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:))
  {
    goto LABEL_13;
  }

  if (v7 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  if (v7 != enum case for TTRRemindersListViewModel.Item.completed(_:) && v7 != enum case for TTRRemindersListViewModel.Item.hashtags(_:) && v7 != enum case for TTRRemindersListViewModel.Item.templateStatus(_:) && v7 != enum case for TTRRemindersListViewModel.Item.tip(_:))
  {
    if (v7 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v7 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
    {
      return 1;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_26;
  }

LABEL_13:
  (*(v3 + 8))(v6, v2);
  return 1;
}

uint64_t sub_100580AB0()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListUncommittedReminder.item.getter();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  (*(v8 + 8))(v10, v7);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v11 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  return v11 & 1;
}

id sub_100580C88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree);
  v6 = *(*a1 + 904);

  v7 = v6(a2, v5, &protocol witness table for TTRRemindersListTreeViewModel, 1);

  if (v7)
  {
    result = [objc_opt_self() newObjectID];
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_100580D50(uint64_t a1, char a2, int a3)
{
  v48 = a3;
  v49 = a1;
  v46 = type metadata accessor for TTRRemindersListViewModel.Item();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v40 - v6;
  v7 = type metadata accessor for TTREditingStateOption.InputType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - v12;
  v14 = type metadata accessor for TTREditingStateOption();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v21 = &v40 - v19;
  if (a2)
  {
    (*(v8 + 104))(&v40 - v19, enum case for TTREditingStateOption.InputType.unspecified(_:), v7, v20);
    v22 = enum case for TTREditingStateOption.startsEditing(_:);
    (*(v15 + 104))(v21, enum case for TTREditingStateOption.startsEditing(_:), v14);
  }

  else
  {
    (*(v15 + 104))(&v40 - v19, enum case for TTREditingStateOption.doesNotStartEditing(_:), v14, v20);
    v22 = enum case for TTREditingStateOption.startsEditing(_:);
  }

  (*(v15 + 16))(v17, v21, v14);
  v23 = (*(v15 + 88))(v17, v14);
  if (v23 == v22)
  {
    (*(v15 + 96))(v17, v14);
    v42 = *(v8 + 32);
    v42(v10, v17, v7);
    v24 = v49;
    if (*(v49 + 16))
    {
      type metadata accessor for TTRRemindersListUncommittedReminder();
      v40 = v7;
      v41 = v10;
      v25 = v43;
      TTRRemindersListUncommittedReminder.item.getter();
      v26 = v45;
      v27 = *(v44 + 4);
      v44 = v21;
      v28 = v13;
      v29 = v46;
      v27(v45, v25, v46);
      v30 = sub_100058000(&unk_1007756F0, &unk_100631C00);
      v31 = *(v30 + 48);
      v32 = v28;
      v33 = v29;
      v13 = v28;
      v21 = v44;
      v27(v32, v26, v33);
      v34 = &v13[v31];
      v24 = v49;
      v42(v34, v41, v40);
      v35 = (*(*(v30 - 8) + 56))(v13, 0, 1, v30);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      v37 = sub_100058000(&unk_1007756F0, &unk_100631C00);
      v35 = (*(*(v37 - 8) + 56))(v13, 1, 1, v37);
    }

    goto LABEL_10;
  }

  if (v23 == enum case for TTREditingStateOption.doesNotStartEditing(_:))
  {
    v36 = sub_100058000(&unk_1007756F0, &unk_100631C00);
    v35 = (*(*(v36 - 8) + 56))(v13, 1, 1, v36);
    v24 = v49;
LABEL_10:
    __chkstk_darwin(v35);
    v38 = v47;
    *(&v40 - 4) = v24;
    *(&v40 - 3) = v38;
    *(&v40 - 2) = 0;
    *(&v40 - 1) = 0;
    sub_100581B80(v13, v48 & 1, sub_10059C358, (&v40 - 6), static TTRSmartListFilterEditorViewModel.HelpTopic.__derived_enum_equals(_:_:), 0);
    sub_1000079B4(v13, &qword_10076E0D0, &unk_100635D70);
    return (*(v15 + 8))(v21, v14);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100581360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v37 = a3;
  v35 = a2;
  v42 = type metadata accessor for TTRRemindersListViewModel.Item();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v38 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  __chkstk_darwin(v9);
  v40 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10078E0C0, &unk_1006470A0);
  v34 = *(v12 - 8);
  v13 = v34;
  __chkstk_darwin(v12);
  v36 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v19 = *a1;
  v18 = *(a1 + 8);
  v20 = *(sub_100058000(&qword_10078E110, &qword_100647108) + 48);
  sub_10000794C(v35, v17, &qword_100772140, &qword_10062D9F0);
  *&v17[v20] = v18;
  (*(v13 + 104))(v17, enum case for TTRTreeStorageTemporaryNodeLocation.atIndexOfParent<A>(_:), v12);
  v21 = v19;
  v22 = [v21 objectID];
  v23 = v40;
  v31 = v17;
  sub_10057C4B4(v22, v40);

  (*(v10 + 16))(v8, v23, v9);
  v24 = v41;
  v25 = v42;
  (*(v41 + 104))(v8, enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:), v42);
  v37 = *(v24 + 16);
  v26 = v38;
  v37(v38, v8, v25);
  type metadata accessor for TTRRemindersListEditingSessionState();
  swift_allocObject();
  v27 = v21;
  TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)();
  v28 = v34;
  (*(v34 + 16))(v36, v17, v12);
  v29 = v42;
  v37(v26, v8, v42);
  TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)();

  (*(v41 + 8))(v8, v29);
  (*(v33 + 8))(v40, v32);
  return (*(v28 + 8))(v31, v12);
}

double sub_100581774(void *a1, int a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v24 = a1;
  v7 = type metadata accessor for REMRemindersListDataView.Diff();
  __chkstk_darwin(v7 - 8);
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType();
  v25 = *(updated - 8);
  v26 = updated;
  __chkstk_darwin(updated);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
  v15 = *(a5 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree);
  swift_retain_n();
  v16 = TTRRemindersListTreeViewModel.copy()();

  *(a5 + v14) = v16;

  if (a3(v16))
  {
    sub_10000794C(v24, v13, &qword_10076E0D0, &unk_100635D70);
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
        v24 = v23;
      }

      else
      {
        v24 = &_swiftEmptySetSingleton;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }
    }

    else
    {
      v24 = &_swiftEmptySetSingleton;
    }

    v17 = *(sub_100058000(&qword_10078E048, &qword_100646FF8) + 48);
    REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();

    TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters.init(originalTree:diff:useReloadRecurrentAnimation:)();
    v10[v17] = v27 & 1;
    (*(v25 + 104))(v10, enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.incremental(_:), v26);
    type metadata accessor for TTRRemindersListTreeViewModelUpdateContext();
    swift_allocObject();

    v18 = TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)();
    v19 = a5 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v20 + 72))(v18, ObjectType, v20);
      swift_unknownObjectRelease();
    }

    sub_10057C1B0(0);
  }

  else
  {

    *(a5 + v14) = v15;
  }

  return result;
}

double sub_100581B80(void *a1, int a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  v31 = a6;
  v32 = a5;
  v30 = a2;
  v27 = a1;
  v9 = type metadata accessor for REMRemindersListDataView.Diff();
  __chkstk_darwin(v9 - 8);
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType();
  v28 = *(updated - 8);
  v29 = updated;
  __chkstk_darwin(updated);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v16 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
  v17 = *(v6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree);
  swift_retain_n();
  v18 = TTRRemindersListTreeViewModel.copy()();

  *(v6 + v16) = v18;

  if (a3(v18))
  {
    sub_10000794C(v27, v15, &qword_10076E0D0, &unk_100635D70);
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
        v27 = v26;
      }

      else
      {
        v27 = &_swiftEmptySetSingleton;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }
    }

    else
    {
      v27 = &_swiftEmptySetSingleton;
    }

    v19 = *(sub_100058000(&qword_10078E048, &qword_100646FF8) + 48);
    REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();

    TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters.init(originalTree:diff:useReloadRecurrentAnimation:)();
    v12[v19] = v30 & 1;
    (*(v28 + 104))(v12, enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.incremental(_:), v29);
    type metadata accessor for TTRRemindersListTreeViewModelUpdateContext();
    swift_allocObject();

    v20 = TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)();
    v21 = v7 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = *(v21 + 8);
      ObjectType = swift_getObjectType();
      (*(v23 + 72))(v20, ObjectType, v23);
      Strong = swift_unknownObjectRelease();
    }

    if (v32(Strong))
    {
      sub_10057C1B0(0);
    }
  }

  else
  {

    *(v6 + v16) = v17;
  }

  return result;
}

BOOL sub_100581FA0(uint64_t *a1)
{

  v1 = TTRRemindersListTreeViewModel.hasLoadedReminderItems(with:)();

  return (v1 & 1) == 0;
}

uint64_t sub_100582000@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListTreeViewModel.RecurrentReminderReplacement.original.getter();
  v6 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t sub_1005820E8(char a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v4 - 8);
  v46 = &v41 - v5;
  v6 = type metadata accessor for REMRemindersListDataView.Diff();
  __chkstk_darwin(v6 - 8);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType();
  v9 = *(updated - 8);
  __chkstk_darwin(updated);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  if (qword_100767468 != -1)
  {
    v39 = v12;
    swift_once();
    v12 = v39;
  }

  v47 = v12;
  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_10078D7D8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = a1;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v48 = v20;
    *v19 = 136315138;
    v21 = _typeName(_:qualified:)();
    v23 = sub_100004060(v21, v22, &v48);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: recreating presentationTree", v19, 0xCu);
    sub_100004758(v20);

    a1 = v18;
  }

  v24 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;

  v25 = sub_100585DF8();
  v27 = v26;
  v28 = TTRRemindersListTreeViewModel.replacingPresentationTree(with:)();
  sub_1000301AC(v25, v27);

  sub_10057AB60(v28, v29);
  if (a1)
  {
    v44 = *(v2 + v24);
    v42 = v9;
    if (_swiftEmptyArrayStorage >> 62)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();

      if (v40)
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }
    }

    else
    {
    }

    v30 = *(sub_100058000(&qword_10078E048, &qword_100646FF8) + 48);
    REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
    TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters.init(originalTree:diff:useReloadRecurrentAnimation:)();
    v14[v30] = 1;
    v31 = enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.incremental(_:);
    v9 = v42;
  }

  else
  {
    v31 = enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.reload(_:);
  }

  v32 = v47;
  (*(v9 + 104))(v14, v31, v47);
  v33 = sub_100058000(&unk_1007756F0, &unk_100631C00);
  (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
  (*(v9 + 16))(v45, v14, v32);
  type metadata accessor for TTRRemindersListTreeViewModelUpdateContext();
  swift_allocObject();

  v34 = TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)();
  *(v2 + v24) = v28;

  v35 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = *(v35 + 8);
    ObjectType = swift_getObjectType();
    (*(v36 + 72))(v34, ObjectType, v36);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return (*(v9 + 8))(v14, v32);
}

uint64_t sub_1005826E8()
{
  sub_10056FD38();

  return swift_deallocClassInstance();
}

void sub_100582768(uint64_t a1, __n128 a2)
{
  type metadata accessor for TTRListType.SortingCapability();
  if (v2 <= 0x3F)
  {
    type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
    if (v3 <= 0x3F)
    {
      sub_1005828C8(319);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1005828C8(uint64_t a1)
{
  if (!qword_100784500)
  {
    type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100784500);
    }
  }
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModelSource.NextDataModelUpdateOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModelSource.NextDataModelUpdateOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

char *sub_100582A3C(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    switch(EnumCaseMultiPayload)
    {
      case 4:
        v12 = *a2;
        v13 = a2[1];
        *a1 = v12;
        *(a1 + 1) = v13;
        v14 = v12;
        v15 = v13;
        goto LABEL_19;
      case 5:
        v18 = *a2;
        v19 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v19;
        v20 = a2[2];
        *(a1 + 2) = v20;
        v21 = v18;
        v22 = v19;
        v23 = v20;
        goto LABEL_19;
      case 6:
        v11 = type metadata accessor for TTRSection();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        goto LABEL_19;
    }
  }

  else if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
LABEL_19:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(v6 + 64);

  return memcpy(a1, a2, v16);
}

void sub_100582C1C(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      return;
    }

    v4 = *a1;
    goto LABEL_15;
  }

  switch(EnumCaseMultiPayload)
  {
    case 4:

      v4 = *(a1 + 8);
LABEL_15:

      return;
    case 5:

      v4 = *(a1 + 16);
      goto LABEL_15;
    case 6:
      v5 = type metadata accessor for TTRSection();
      v6 = *(*(v5 - 8) + 8);

      v6(a1, v5);
      break;
  }
}

void **sub_100582D10(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    switch(EnumCaseMultiPayload)
    {
      case 4:
        v10 = *a2;
        v11 = a2[1];
        *a1 = v10;
        a1[1] = v11;
        v12 = v10;
        v13 = v11;
        goto LABEL_17;
      case 5:
        v16 = *a2;
        v17 = a2[1];
        *a1 = *a2;
        a1[1] = v17;
        v18 = a2[2];
        a1[2] = v18;
        v19 = v16;
        v20 = v17;
        v21 = v18;
        goto LABEL_17;
      case 6:
        v9 = type metadata accessor for TTRSection();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
        goto LABEL_17;
    }
  }

  else if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

void **sub_100582EB0(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    switch(EnumCaseMultiPayload)
    {
      case 4:
        v10 = *a2;
        *a1 = *a2;
        v11 = a2[1];
        a1[1] = v11;
        v12 = v10;
        v13 = v11;
        goto LABEL_18;
      case 5:
        v16 = *a2;
        *a1 = *a2;
        v17 = a2[1];
        a1[1] = v17;
        v18 = a2[2];
        a1[2] = v18;
        v19 = v16;
        v20 = v17;
        v21 = v18;
        goto LABEL_18;
      case 6:
        v9 = type metadata accessor for TTRSection();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
        goto LABEL_18;
    }
  }

  else if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

void *sub_1005830A4(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v6 = type metadata accessor for TTRSection();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_100583174(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTarget);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v6 = type metadata accessor for TTRSection();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_100583268(uint64_t a1)
{
  result = type metadata accessor for TTRSection();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_100583328(char *a1, char *a2, uint64_t a3, __n128 a4)
{
  v6 = *(*(a3 - 8) + 80);
  if ((v6 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v6 + 16) & ~v6));
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v15 = *(sub_100058000(&unk_1007759C0, &qword_100633140) + 48);
      v16 = type metadata accessor for TTRSection();
      (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      v10 = *a2;
      *a1 = *a2;
      v11 = v10;
      v12 = *(sub_100058000(&qword_100770AB8, &unk_100646E60) + 48);
      v13 = type metadata accessor for TTRSection();
      (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
      swift_storeEnumTagMultiPayload();
    }

    a1[*(a3 + 20)] = a2[*(a3 + 20)];
  }

  return a1;
}

uint64_t sub_100583504(id *a1)
{
  type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v3 = &unk_1007759C0;
    v4 = &qword_100633140;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v3 = &qword_100770AB8;
    v4 = &unk_100646E60;
  }

  v5 = *(sub_100058000(v3, v4) + 48);
  v6 = type metadata accessor for TTRSection();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

char *sub_1005835C8(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v12 = *(sub_100058000(&unk_1007759C0, &qword_100633140) + 48);
    v13 = type metadata accessor for TTRSection();
    (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
    v10 = *(sub_100058000(&qword_100770AB8, &unk_100646E60) + 48);
    v11 = type metadata accessor for TTRSection();
    (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
    swift_storeEnumTagMultiPayload();
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

char *sub_100583738(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1005838CC(a1, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
    v6 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v12 = *(sub_100058000(&unk_1007759C0, &qword_100633140) + 48);
      v13 = type metadata accessor for TTRSection();
      (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      v8 = *a2;
      *a1 = *a2;
      v9 = v8;
      v10 = *(sub_100058000(&qword_100770AB8, &unk_100646E60) + 48);
      v11 = type metadata accessor for TTRSection();
      (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
      swift_storeEnumTagMultiPayload();
    }
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

uint64_t sub_1005838CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_10058392C(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v10 = *(sub_100058000(&unk_1007759C0, &qword_100633140) + 48);
    v11 = type metadata accessor for TTRSection();
    (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    *a1 = *a2;
    v8 = *(sub_100058000(&qword_100770AB8, &unk_100646E60) + 48);
    v9 = type metadata accessor for TTRSection();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
    swift_storeEnumTagMultiPayload();
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

char *sub_100583A98(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1005838CC(a1, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
    v6 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v10 = *(sub_100058000(&unk_1007759C0, &qword_100633140) + 48);
      v11 = type metadata accessor for TTRSection();
      (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v8 = *(sub_100058000(&qword_100770AB8, &unk_100646E60) + 48);
      v9 = type metadata accessor for TTRSection();
      (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
      swift_storeEnumTagMultiPayload();
    }
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}