uint64_t sub_10016EF24(void *a1)
{
  v61 = sub_100058000(&qword_100770910, &unk_100632FE0);
  __chkstk_darwin(v61);
  v3 = v55 - v2;
  v4 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v66 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = v55 - v11;
  v63 = type metadata accessor for REMHashtagLabelCollection();
  v13 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v69 = v55 - v16;
  __chkstk_darwin(v17);
  v19 = v55 - v18;
  sub_10000C36C(a1, a1[3]);
  dispatch thunk of TTRReminderProtocol.ttrHashtagContext.getter();
  if (!v71)
  {
    sub_1000079B4(&v70, &qword_100769998, &qword_10062E3C0);
    v31 = 0;
    return v31 & 1;
  }

  sub_10000C36C(&v70, v71);
  v20 = dispatch thunk of TTRReminderHashtagContextProtocol.hashtags.getter();
  sub_100004758(&v70);
  v70 = v20;

  sub_100058000(&qword_100775900, &unk_100632FF0);
  v65 = v7;
  sub_10000E188(&qword_100770918, &qword_100775900, &unk_100632FF0, &protocol conformance descriptor for Set<A>);
  v60 = v19;
  REMHashtagLabelCollection.init<A>(hashtags:)();
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v21 = v65;
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  (*(v21 + 16))(v9, v12, v6);
  v22 = (*(v21 + 88))(v9, v6);
  if (v22 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    if (v22 == enum case for REMHashtagLabelSpecifier.allLabels(_:))
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v32 = __CocoaSet.count.getter();

        (*(v21 + 8))(v12, v6);
        (*(v13 + 8))(v60, v63);
      }

      else
      {
        (*(v21 + 8))(v12, v6);
        (*(v13 + 8))(v60, v63);
        v32 = *(v20 + 16);
      }

      v31 = v32 != 0;
      return v31 & 1;
    }

    if (v22 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v33 = __CocoaSet.count.getter();

        (*(v21 + 8))(v12, v6);
        (*(v13 + 8))(v60, v63);
      }

      else
      {
        (*(v21 + 8))(v12, v6);
        (*(v13 + 8))(v60, v63);
        v33 = *(v20 + 16);
      }

      v31 = v33 == 0;
      return v31 & 1;
    }

    goto LABEL_43;
  }

  v58 = v3;
  (*(v21 + 96))(v9, v6);
  v23 = *v9;
  v24 = v9[1];
  v25 = sub_100058000(&qword_10076B830, &qword_100630550);
  (*(v67 + 32))(v66, v9 + *(v25 + 64), v68);
  v26 = *(v23 + 16);
  v59 = v6;
  v56 = v12;
  v57 = v13;
  v55[1] = v23;
  v64 = v24;
  if (v26)
  {
    v27 = sub_1003AC440(v26, 0);
    v28 = sub_1003B2F84(&v70, v27 + 4, v26, v23);
    v29 = v70;

    sub_10008BA48(v29);
    if (v28 != v26)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_44;
    }

    v30 = v58;
    v6 = v59;
    v24 = v64;
    v21 = v65;
  }

  else
  {
    v30 = v58;
  }

  REMHashtagLabelCollection.init(labels:)();
  v34 = *(v24 + 16);
  if (v34)
  {
    v35 = sub_1003AC440(*(v24 + 16), 0);
    v36 = sub_1003B2F84(&v70, v35 + 4, v34, v24);
    v37 = v70;

    sub_10008BA48(v37);
    if (v36 == v34)
    {
      v6 = v59;
      v21 = v65;
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_17:
  REMHashtagLabelCollection.init(labels:)();
  v38 = REMHashtagLabelCollection.isEmpty.getter();
  v39 = REMHashtagLabelCollection.isEmpty.getter();
  v40 = *(v61 + 48);
  v41 = *(v61 + 64);
  v42 = v67;
  v43 = v68;
  (*(v67 + 16))(v30, v66, v68);
  v30[v40] = (v38 & 1) == 0;
  v30[v41] = (v39 & 1) == 0;
  v44 = (*(v42 + 88))(v30, v43);
  if (v44 == enum case for REMHashtagLabelSpecifier.Operation.or(_:))
  {

    v45 = v57;
    if ((v38 & 1) == 0)
    {
      v46 = v60;
      v48 = REMHashtagLabelCollection.isDisjoint(with:)();
      if ((v39 & 1) == 0)
      {
        v50 = v56;
        if (v48)
        {
          v47 = v62;
          v31 = REMHashtagLabelCollection.isDisjoint(with:)() ^ 1;
        }

        else
        {
          v31 = 1;
          v47 = v62;
        }

        goto LABEL_32;
      }

      v31 = v48 ^ 1;
      goto LABEL_29;
    }

    v46 = v60;
    if ((v39 & 1) == 0)
    {
      v47 = v62;
      v31 = REMHashtagLabelCollection.isDisjoint(with:)() ^ 1;
LABEL_31:
      v50 = v56;
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  v45 = v57;
  if (v44 == enum case for REMHashtagLabelSpecifier.Operation.and(_:))
  {

    if (v38)
    {
      v46 = v60;
      if (v39)
      {
LABEL_24:
        v31 = 0;
LABEL_29:
        v50 = v56;
        v47 = v62;
LABEL_32:
        v51 = *(v45 + 8);
        v52 = v47;
        v53 = v63;
        v51(v52, v63);
        v51(v69, v53);
        (*(v67 + 8))(v66, v68);
        (*(v21 + 8))(v50, v6);
        v51(v46, v53);
        return v31 & 1;
      }
    }

    else
    {
      v46 = v60;
      v49 = REMHashtagLabelCollection.isSuperset(of:)();
      if (v39 & 1 | ((v49 & 1) == 0))
      {
        v31 = v39 & v49;
        goto LABEL_29;
      }
    }

    v47 = v62;
    v31 = REMHashtagLabelCollection.isDisjoint(with:)();
    goto LABEL_31;
  }

LABEL_44:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

double sub_10016F854@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10016E8DC();
  sub_1001D6AC0(a1, a2, a3);

  return result;
}

uint64_t sub_10016F8B0()
{
  v0 = type metadata accessor for TTRUserActivityListPayload.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  (*(v5 + 16))(v3, v7, v4);
  (*(v1 + 104))(v3, enum case for TTRUserActivityListPayload.State.tagged(_:), v0);
  v10[3] = type metadata accessor for TTRUserActivityListPayload();
  v10[4] = &protocol witness table for TTRUserActivityListPayload;
  sub_1000317B8(v10);
  TTRUserActivityListPayload.init(state:)();
  NSUserActivity.setPayload(_:)();
  (*(v5 + 8))(v7, v4);
  return sub_100004758(v10);
}

uint64_t sub_10016FAE0()
{
  v0 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v15 = *(v0 - 8);
  v16 = v0;
  __chkstk_darwin(v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMHashtagLabelSpecifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  sub_100003540(0, &qword_1007865E0, NSUserActivity_ptr);
  v11 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  (*(v8 + 16))(v2, v10, v7);
  (*(v15 + 104))(v2, enum case for TTRUserActivityWindowSceneRestorationPayload.State.tagged(_:), v16);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v17[3] = v3;
  v17[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v12 = sub_1000317B8(v17);
  (*(v4 + 16))(v12, v6, v3);
  NSUserActivity.setPayload(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  sub_100004758(v17);
  return v11;
}

id sub_10016FDD0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_smartList);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListSortingStyleSaveTarget.smartList(_:);
    v10 = v3;
    v5 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v7 = v10;
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10016FF08()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  sub_100003E68(v0, qword_100770218);
  v1 = sub_100003E30(v0, qword_100770218);
  v2 = enum case for TTRRemindersListViewModel.SectionID.NamedID.taggedSection(_:);
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = enum case for TTRRemindersListViewModel.SectionID.named(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_10016FFE8()
{
  v1 = v0;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;

    v8 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
    v9 = *(v7 + 16);

    v10 = v9 != 0;
    v11 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v11 - 8) + 8))(&v5[v8], v11);
    v12 = v10;
  }

  else
  {
    if (v6 != enum case for REMHashtagLabelSpecifier.allLabels(_:) && v6 != enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v10 = 0;
    v12 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_hasDefaultNewReminderButtonWhenSelectingAllTags);
  }

  if (v12)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  return v14 | v10;
}

uint64_t sub_10017020C()
{
  v0 = type metadata accessor for REMHashtagLabelSpecifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v1 + 96))(v3, v0);
    v5 = *(v3 + 1);
    v6 = *(*v3 + 16);

    if (v6)
    {

      v7 = 1;
    }

    else
    {
      v9 = *(v5 + 16);

      v7 = v9 != 0;
    }

    v10 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
    v11 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v11 - 8) + 8))(&v3[v10], v11);
  }

  else
  {
    if (v4 != enum case for REMHashtagLabelSpecifier.allLabels(_:) && v4 != enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    return 0;
  }

  return v7;
}

uint64_t sub_100170420()
{
  v0 = type metadata accessor for REMHashtagLabelSpecifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v1 + 96))(v3, v0);
    v5 = *v3;
    v6 = v3[1];
    v7 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
    sub_10057D0C0(v6, v5);
    if (*(v8 + 16) == 1)
    {
      sub_1000A9A4C(v8);
      v10 = v9;

      if (v10)
      {
        countAndFlagsBits = String.addingHashtagPrefix()()._countAndFlagsBits;

        v12 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
        (*(*(v12 - 8) + 8))(v3 + v7, v12);
        return countAndFlagsBits;
      }
    }

    else
    {
    }

    v14 = static TTRLocalizableStrings.Hashtags.taggedListName(forSelectedLabelCount:)();
    v15 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v15 - 8) + 8))(v3 + v7, v15);
    return v14;
  }

  else if (v4 == enum case for REMHashtagLabelSpecifier.allLabels(_:))
  {
    return static TTRLocalizableStrings.Hashtags.taggedListNameForAllTags.getter();
  }

  else if (v4 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {
    return static TTRLocalizableStrings.Hashtags.taggedListNameForUntagged.getter();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001706BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&unk_100792BA0, &unk_100632FA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_1007708D8, &qword_100633D90);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_100170A54(&v21 - v15);
  if ((*(v1 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_canShowHashtagLabelSelector) & 1) != 0 || (v17 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription(), v18 = 1, (*(*(v17 - 8) + 48))(v16, 1, v17) != 1))
  {
    v21 = v13;
    swift_getObjectType();
    v22 = a1;
    swift_unknownObjectRetain();
    dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
    swift_unknownObjectRelease();
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.allHashtagLabels.getter();
    a1 = v22;
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
    TTRRemindersListViewModel.HashtagLabelSelectorState.init(labels:selection:)();
    (*(v8 + 16))(v5, v10, v7);
    (*(v8 + 56))(v5, 0, 1, v7);
    sub_10000794C(v16, v21, &qword_1007708D8, &qword_100633D90);
    TTRRemindersListViewModel.HashtagsState.init(selectorState:selectionDescription:)();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v10, v7);
    v18 = 0;
  }

  v19 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v19 - 8) + 56))(a1, v18, 1, v19);
  return sub_1000079B4(v16, &qword_1007708D8, &qword_100633D90);
}

uint64_t sub_100170A54@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for REMHashtagLabelCollection();
  v82 = *(v3 - 8);
  __chkstk_darwin(v3);
  countAndFlagsBits = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v71 - v6;
  __chkstk_darwin(v8);
  v81 = &v71 - v9;
  v10 = type metadata accessor for REMHashtagLabelSpecifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    goto LABEL_5;
  }

  (*(v11 + 96))(v13, v10);
  v16 = *v13;
  v15 = v13[1];
  v17 = *(*v13 + 16);
  if (v17)
  {
    v18 = sub_1003AC440(*(*v13 + 16), 0);
    v19 = sub_1003B2F84(&v89, v18 + 4, v17, v16);
    sub_10008BA48(v89);
    if (v19 != v17)
    {
      __break(1u);
LABEL_5:
      if (v14 == enum case for REMHashtagLabelSpecifier.allLabels(_:))
      {
        static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionAllTags.getter();
LABEL_9:
        TTRRemindersListViewModel.HashtagSelectionDescription.init(generic:preferred:)();
        v20 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
        return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
      }

      if (v14 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
      {
        static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionUntagged.getter();
        goto LABEL_9;
      }

      goto LABEL_37;
    }
  }

  else
  {
  }

  REMHashtagLabelCollection.init(labels:)();
  v22 = *(v15 + 16);
  v88 = v15;
  v78 = v13;
  v79 = a1;
  v80 = v3;
  if (v22)
  {
    v23 = sub_1003AC440(v22, 0);
    v24 = sub_1003B2F84(&v89, v23 + 4, v22, v15);
    v25 = v89;

    sub_10008BA48(v25);
    if (v24 != v22)
    {
      __break(1u);
LABEL_37:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v13 = v78;
    v3 = v80;
  }

  v26 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
  v27 = countAndFlagsBits;
  REMHashtagLabelCollection.init(labels:)();
  v28 = v81;
  REMHashtagLabelCollection.union(_:)();
  v30 = v82 + 8;
  v29 = *(v82 + 8);
  v29(v27, v3);
  v29(v7, v3);
  v31 = *(REMHashtagLabelCollection.labels.getter() + 16);

  v77 = static TTRLocalizableStrings.Hashtags.genericHashtagSelectionWithMenuDescription(forLabelCount:)();
  if (v31 == 2)
  {
    v75 = v29;
    v76 = v26;
    v74 = v32;
    v50 = static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionWithMenuForTwoTagsFormat.getter();
    v73 = v51;
    v89 = REMHashtagLabelCollection.labels.getter();
    sub_100058000(&unk_100781F20, &unk_10062D7E0);
    sub_10000E188(&qword_10076DB20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
    v52 = static REMHashtagLabelCollection.sortedLabels<A>(from:)();

    v53 = *(v52 + 16);
    if (!v53)
    {

      v37 = v79;
      goto LABEL_32;
    }

    v72 = v50;
    v82 = v30;
    v89 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v71 = v52;
    v54 = (v52 + 40);
    v85 = NSStrikethroughStyleAttributeName;
    v84 = xmmword_10062D400;
    v83 = xmmword_10062D3F0;
    v55 = v88;
    do
    {
      v60 = *(v54 - 1);
      v59 = *v54;

      v86 = sub_1000AA9A4(v60, v59, v55);
      countAndFlagsBits = String.addingHashtagPrefix()()._countAndFlagsBits;
      sub_100058000(&qword_1007708E0, &qword_100632FB0);
      inited = swift_initStackObject();
      *(inited + 16) = v84;
      *(inited + 32) = static NSAttributedStringKey.ttrHashtagSelectionDescriptionEmphasized.getter();
      *(inited + 40) = 1;
      v62 = sub_100461778(inited);
      swift_setDeallocating();
      sub_1000079B4(inited + 32, &qword_1007708E8, &qword_100632FB8);
      sub_100058000(&unk_100776BD0, &unk_100632860);
      v63 = swift_initStackObject();
      *(v63 + 16) = v83;
      *(v63 + 32) = static NSAttributedStringKey.ttrHashtagSelectionDescriptionEmphasized.getter();
      *(v63 + 40) = 1;
      v64 = v85;
      *(v63 + 64) = &type metadata for Bool;
      *(v63 + 72) = v64;
      *(v63 + 104) = &type metadata for Int;
      *(v63 + 80) = 1;
      v65 = v64;
      sub_100460A28(v63);
      swift_setDeallocating();
      sub_100058000(&unk_100776BE0, &unk_10062D7F0);
      swift_arrayDestroy();
      if ((v86 & 1) == 0)
      {

        sub_1001716E8(v62);
      }

      v56 = objc_allocWithZone(NSAttributedString);
      v57 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100173810(&qword_100778A60, type metadata accessor for Key, &unk_10062D39C);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v56 initWithString:v57 attributes:{isa, v71}];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v54 += 2;
      --v53;
      v55 = v88;
    }

    while (v53);
    goto LABEL_26;
  }

  if (v31 == 1)
  {
    v75 = v29;
    v76 = v26;
    v74 = v32;
    v33 = static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionWithMenuForOneTagFormat.getter();
    v73 = v34;
    v89 = REMHashtagLabelCollection.labels.getter();
    sub_100058000(&unk_100781F20, &unk_10062D7E0);
    sub_10000E188(&qword_10076DB20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
    v35 = static REMHashtagLabelCollection.sortedLabels<A>(from:)();

    v36 = *(v35 + 16);
    v37 = v79;
    if (!v36)
    {

      goto LABEL_32;
    }

    v72 = v33;
    v82 = v30;
    v89 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v71 = v35;
    v38 = (v35 + 40);
    v85 = NSStrikethroughStyleAttributeName;
    v84 = xmmword_10062D400;
    v83 = xmmword_10062D3F0;
    v39 = v88;
    do
    {
      v44 = *(v38 - 1);
      v43 = *v38;

      v86 = sub_1000AA9A4(v44, v43, v39);
      countAndFlagsBits = String.addingHashtagPrefix()()._countAndFlagsBits;
      sub_100058000(&qword_1007708E0, &qword_100632FB0);
      v45 = swift_initStackObject();
      *(v45 + 16) = v84;
      *(v45 + 32) = static NSAttributedStringKey.ttrHashtagSelectionDescriptionEmphasized.getter();
      *(v45 + 40) = 1;
      v46 = sub_100461778(v45);
      swift_setDeallocating();
      sub_1000079B4(v45 + 32, &qword_1007708E8, &qword_100632FB8);
      sub_100058000(&unk_100776BD0, &unk_100632860);
      v47 = swift_initStackObject();
      *(v47 + 16) = v83;
      *(v47 + 32) = static NSAttributedStringKey.ttrHashtagSelectionDescriptionEmphasized.getter();
      *(v47 + 40) = 1;
      v48 = v85;
      *(v47 + 64) = &type metadata for Bool;
      *(v47 + 72) = v48;
      *(v47 + 104) = &type metadata for Int;
      *(v47 + 80) = 1;
      v49 = v48;
      sub_100460A28(v47);
      swift_setDeallocating();
      sub_100058000(&unk_100776BE0, &unk_10062D7F0);
      swift_arrayDestroy();
      if ((v86 & 1) == 0)
      {

        sub_1001716E8(v46);
      }

      v40 = objc_allocWithZone(NSAttributedString);
      v41 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100173810(&qword_100778A60, type metadata accessor for Key, &unk_10062D39C);
      v42 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v40 initWithString:v41 attributes:{v42, v71}];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v38 += 2;
      --v36;
      v39 = v88;
    }

    while (v36);
LABEL_26:

    v13 = v78;
    v37 = v79;
LABEL_32:
    sub_100003540(0, &qword_1007708F0, NSAttributedString_ptr);
    sub_100460A28(_swiftEmptyArrayStorage);
    v67 = static NSAttributedString.formattedString(format:formatAttributes:attributedStringsToInsert:)();
    v3 = v80;
    v28 = v81;

    v68 = v67;
    v29 = v75;
    v26 = v76;
    goto LABEL_33;
  }

  v37 = v79;
  if (v31 > 2)
  {
    v67 = 0;
LABEL_33:
    TTRRemindersListViewModel.HashtagSelectionDescription.init(generic:preferred:)();

    v29(v28, v3);
    v69 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
    (*(*(v69 - 8) + 56))(v37, 0, 1, v69);
    goto LABEL_34;
  }

  v29(v28, v3);

  v66 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  (*(*(v66 - 8) + 56))(v37, 1, 1, v66);
LABEL_34:
  v70 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  return (*(*(v70 - 8) + 8))(v13 + v26, v70);
}

void sub_1001716E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100058000(&qword_1007708F8, &unk_100632FC0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_dynamicCast();
    sub_100007DD8((v24 + 8), v22);
    sub_100007DD8(v22, v24);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();

    v14 = -1 << v1[32];
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*&v6[8 * (v15 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *&v6[8 * v16];
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~*&v6[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v8) = v12;
    sub_100007DD8(v24, (*(v1 + 7) + 32 * v8));
    ++*(v1 + 2);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100171980(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMRemindersListDataView.Diff();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100770908, &qword_100632FD8);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for REMRemindersListDataView.TaggedModel();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100766FA0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v39 = sub_100003E30(v14, qword_100770200);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v12;
    v18 = v17;
    v19 = swift_slowAlloc();
    v37 = v4;
    v38 = v7;
    v35 = v2;
    v20 = v19;
    v41 = v19;
    *v18 = 136315138;
    if (a1)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    v22 = v11;
    v23 = v5;
    if (a1)
    {
      v24 = 0xE400000000000000;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    v25 = a1;
    v26 = sub_100004060(v21, v24, &v41);
    v5 = v23;
    v11 = v22;

    *(v18 + 4) = v26;
    a1 = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "TTRShowTaggedViewModelSource: canShowHashtagLabelSelector did change {newValue: %s}", v18, 0xCu);
    sub_100004758(v20);
    v2 = v35;
    v4 = v37;
    v7 = v38;

    v12 = v36;
  }

  if (*(v2 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_canShowHashtagLabelSelector) != (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_canShowHashtagLabelSelector) = a1 & 1;
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of TTRShowTaggedDataModelSourceType.latestResult.getter();
    swift_unknownObjectRelease();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1000079B4(v10, &qword_100770908, &qword_100632FD8);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "TTRShowTaggedViewModelSource: skip refreshing view model; missing last fetch result.", v29, 2u);
      }
    }

    else
    {
      (*(v12 + 32))(v40, v10, v11);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "TTRShowTaggedViewModelSource: refreshing view model due to canShowHashtagLabelSelector change", v32, 2u);
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
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

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }
      }

      REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
      v33 = v40;
      sub_100171F44(v40, v7, 1);
      (*(v5 + 8))(v7, v4);
      (*(v12 + 8))(v33, v11);
    }
  }
}

uint64_t sub_100171F44(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v89 = a3;
  v90 = a2;
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v88 = &v75 - v7;
  v8 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v8 - 8);
  v86 = &v75 - v9;
  v87 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v96 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v11 - 8);
  v82 = &v75 - v12;
  v79 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v80 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v84 = *(v95 - 8);
  __chkstk_darwin(v95);
  v81 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v93 = &v75 - v16;
  v94 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v83 = *(v94 - 8);
  __chkstk_darwin(v94);
  v98 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v19 = *(v99 - 8);
  __chkstk_darwin(v99);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v75 - v23;
  v25 = sub_100058000(&qword_100769378, &qword_10062DE80);
  *&v26 = __chkstk_darwin(v25 - 8).n128_u64[0];
  v28 = &v75 - v27;
  v29 = OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_smartList;
  v30 = *(v4 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_smartList);
  v92 = v4;
  if (v30)
  {
    v31 = v19;
    v32 = [v30 sortingStyle];
    v33 = REMRemindersListDataView.TaggedModel.taggedSmartList.getter();
    if (!v33)
    {
      if (!v32)
      {
        v91 = 1;
        v19 = v31;
        goto LABEL_21;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v33 = REMRemindersListDataView.TaggedModel.taggedSmartList.getter();
    if (!v33)
    {
      v91 = 1;
      goto LABEL_21;
    }

    v31 = v19;
    v32 = 0;
  }

  v34 = v33;
  v35 = [v33 sortingStyle];

  if (v32)
  {
    if (!v35)
    {
      v4 = v92;
LABEL_15:
      v91 = 0;
      v35 = v32;
LABEL_20:
      v19 = v31;

      goto LABEL_21;
    }

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
    if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
    {
      v91 = 1;
    }

    else
    {
      v91 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

LABEL_19:
    v4 = v92;
    goto LABEL_20;
  }

  if (v35)
  {
    v91 = 0;
    goto LABEL_19;
  }

  v91 = 1;
  v4 = v92;
  v19 = v31;
LABEL_21:
  v40 = REMRemindersListDataView.TaggedModel.taggedSmartList.getter();
  v41 = *(v4 + v29);
  v42 = v4;
  *(v4 + v29) = v40;

  v97 = a1;
  REMRemindersListDataView.TaggedModel.flatModel.getter();
  REMRemindersListDataView.FlatModel.remindersCount.getter();
  v43 = *(v19 + 8);
  v43(v24, v99);
  v44 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 48))(v28, 1, v44);
  if (v46 == 1)
  {
    sub_1000079B4(v28, &qword_100769378, &qword_10062DE80);
    v47 = 0;
  }

  else
  {
    v47 = REMRemindersListDataView.CountByCompleted.completed.getter();
    (*(v45 + 8))(v28, v44);
  }

  v48 = v42 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_completedRemindersCount;
  *v48 = v47;
  *(v48 + 8) = v46 == 1;
  v49 = v98;
  REMRemindersListDataView.TaggedModel.flatModel.getter();
  v50 = REMRemindersListDataView.FlatModel.hasIncompleteOrCompletedReminders.getter();
  v43(v21, v99);
  *(v42 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_hasIncompleteOrCompletedReminders) = v50;
  if ((v91 & 1) != 0 || (v51 = *(v42 + v29)) == 0)
  {
    sub_10016D8C4(v49);
    if (qword_100766FA8 != -1)
    {
      swift_once();
    }

    v57 = v79;
    v58 = sub_100003E30(v79, qword_100770218);
    (*(v78 + 16))(v80, v58, v57);
    v59 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
    (*(*(v59 - 8) + 56))(v82, 1, 1, v59);
    v60 = v93;
    TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
    v61 = v84;
    (*(v84 + 16))(v81, v60, v95);
    REMRemindersListDataView.TaggedModel.flatModel.getter();
    REMRemindersListDataView.FlatModel.reminders.getter();
    v43(v21, v99);
    v62 = v96;
    TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
    v63 = v83;
    v64 = v86;
    v65 = v94;
    (*(v83 + 16))(v86, v49, v94);
    (*(v63 + 56))(v64, 0, 1, v65);
    sub_100058000(&qword_100770900, &qword_100632FD0);
    v66 = v85;
    v67 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_10062D400;
    v69 = v87;
    (*(v66 + 16))(v68 + v67, v62, v87);
    v70 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
    v71 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
    v72 = type metadata accessor for TTRRemindersListViewModel.Item();
    v73 = v88;
    (*(*(v72 - 8) + 56))(v88, 1, 1, v72);
    v101[3] = v70;
    v101[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
    v101[0] = v71;
    sub_10000B0D8(v101, v100);
    v74 = swift_allocObject();
    *(v74 + 16) = v68;
    sub_100005FD0(v100, v74 + 24);
    *(v74 + 64) = v92;

    sub_100586238(1, v64, sub_100070528, v74, v90, v89 & 1, v73);

    sub_1000079B4(v73, &qword_100772140, &qword_10062D9F0);
    sub_1000079B4(v64, &unk_10078A380, &qword_10062DE60);
    (*(v66 + 8))(v96, v69);
    (*(v61 + 8))(v93, v95);
    (*(v63 + 8))(v98, v94);

    return sub_100004758(v101);
  }

  else
  {
    v52 = v51;
    v53 = [v52 sortingStyle];
    v54 = v75;
    REMSortingStyle.dataViewSortingStyle.getter();

    sub_10057A85C(v54, 1, v55);
    return (*(v76 + 8))(v54, v77);
  }
}

uint64_t sub_100172AD8()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_100172B28()
{
  v0 = sub_10056FD38();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowTaggedViewModelSource(uint64_t a1)
{
  result = qword_100770290;
  if (!qword_100770290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100172C94(uint64_t a1)
{

  sub_100058000(&qword_100769360, &unk_10062DE50);
  sub_10000E188(&qword_100769368, &qword_100769360, &unk_10062DE50, &protocol conformance descriptor for [A]);
  v2 = TTRRemindersListTreeViewModel.reminderItemsToUpdate<A>(forUpdated:)();

  v3 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v4 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  (*(v4 + 48))(v2, ObjectType, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_100172DBC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10032CA0C(*(v0 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_canShowHashtagLabelSelector));
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100172E48()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRListType.SortingCapability();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v9 + 16))(v11, v0 + v12, v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v2 + 32))(v7, v11, v1);
    (*(v2 + 104))(v4, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v1);
    v14 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v15 = *(v2 + 8);
    v15(v4, v1);
    v15(v7, v1);
    return v14 & 1;
  }

  if (v13 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    (*(v9 + 96))(v11, v8);
    v14 = *v11;
    return v14 & 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001730F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (qword_100766FA8 != -1)
  {
    swift_once();
  }

  sub_100003E30(v2, qword_100770218);
  v6 = static TTRRemindersListViewModel.SectionID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
    swift_unknownObjectRelease();
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
    swift_unknownObjectRelease();
    v7 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_100173314()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001733BC(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v3 + 16))(v5, a1, v2);
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1001734CC(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  *v4 = v5;
  v6 = *(v5 - 8);
  v4[1] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(v6 + 64));
    v4[3] = malloc(v7);
    v8 = malloc(v7);
  }

  v4[4] = v8;
  v4[5] = *(v1 + 16);
  v4[6] = *(v1 + 24);
  v4[7] = swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  return sub_100173610;
}

void sub_100173610(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[1] + 16);
  v4((*a1)[3], v3[4], *v3);
  v5 = v3[4];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *v3;
  v9 = v3[1];
  if (a2)
  {
    v4(v3[2], v3[3], v8);
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.setter();
    v10 = *(v9 + 8);
    v10(v7, v8);
    v10(v5, v8);
  }

  else
  {
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.setter();
    (*(v9 + 8))(v5, v8);
  }

  free(v5);
  free(v7);
  free(v6);

  free(v3);
}

uint64_t sub_100173770(uint64_t a1)
{
  result = sub_100173810(&qword_1007708C8, type metadata accessor for ShowTaggedViewModelSourceHashtagContext, &unk_100632EE8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100173810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100173858()
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

unint64_t sub_100173AD8()
{
  result = qword_100770920;
  if (!qword_100770920)
  {
    sub_100003540(255, &unk_1007758F0, REMHashtag_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100770920);
  }

  return result;
}

id sub_100173B4C(uint64_t *a1, id *a2, uint64_t a3)
{
  v115 = a3;
  v122 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v119 = *(v4 - 8);
  v120 = v4;
  __chkstk_darwin(v4);
  v101 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v121 = &v99 - v7;
  __chkstk_darwin(v8);
  v100 = &v99 - v9;
  __chkstk_darwin(v10);
  v116 = &v99 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v113 = (&v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0);
  __chkstk_darwin(v111);
  v129 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRListType.SortingCapability();
  v127 = *(v15 - 8);
  v128 = v15;
  __chkstk_darwin(v15);
  v112 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v126 = &v99 - v18;
  v114 = type metadata accessor for TTRRemindersListDefaultListType();
  v110 = *(v114 - 8);
  __chkstk_darwin(v114);
  v108 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v20 - 8);
  v107 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v22 - 8);
  v109 = (&v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v106 = *(v125 - 8);
  __chkstk_darwin(v125);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v124 = &v99 - v27;
  v28 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = enum case for TTRListType.PredefinedSmartListType.assigned(_:);
  v34 = *(v29 + 104);
  (v34)(v32, enum case for TTRListType.PredefinedSmartListType.assigned(_:), v28, v30);
  v123 = a2;
  v103 = *a2;
  v35 = TTRListType.PredefinedSmartListType.smartList(in:)();
  v36 = *(v29 + 8);
  v36(v32, v28);
  if (v35)
  {
    v37 = sub_100174F2C();
    v38 = &protocol witness table for REMSmartList;
    v39 = v35;
  }

  else
  {
    v39 = 0;
    v37 = 0;
    v38 = 0;
    v136[2] = 0;
    v136[1] = 0;
  }

  v105 = v39;
  v136[4] = v38;
  v102 = v39 != 0;
  v136[3] = v37;
  v136[0] = v39;
  v34(v32, v33, v28);
  v104 = v35;
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  v36(v32, v28);
  v40 = v124;
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v41 = v106;
  v42 = v125;
  v117 = *(v106 + 8);
  v118 = v106 + 8;
  v117(v25, v125);
  sub_1000079B4(v136, &unk_100775680, &qword_10062E3B0);
  v43 = *(v41 + 16);
  v43(v25, v40, v42);
  type metadata accessor for TTRShowAssignedDataModelSource();
  swift_allocObject();
  v44 = v103;
  v45 = TTRShowAssignedDataModelSource.init(store:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v46 = v109;
  sub_1001749C4(v123, v109);
  v47 = v107;
  static REMSuggestedAttributesElector.ExcludedAttributes.nonAssignableLists.getter();
  v48 = v108;
  (*(v110 + 104))(v108, enum case for TTRRemindersListDefaultListType.cloudKitOnly(_:), v114);
  v49 = sub_10007786C(v46, v47, v48, v136);
  (v43)(v25, v40, v42, v49);
  v50 = v126;
  TTRListType.SortingCapability.init(canChangeSortingStyle:canSortByManual:initialSortingStyle:)();
  v51 = v136[0];
  v52 = v112;
  (*(v127 + 16))(v112, v50, v128);
  type metadata accessor for TTRShowAssignedViewModelSource(0);
  v53 = swift_allocObject();
  v54 = v104;

  v55 = v51;
  v114 = v45;
  v108 = v55;
  v56 = sub_100174A28(v105, v45, v55, v52, 0, v53);
  v112 = v54;

  sub_1001749C4(v123, v46);
  sub_10010BCAC(v136, v133);
  v57 = sub_100174E84(&qword_100770958, type metadata accessor for TTRShowAssignedViewModelSource, &unk_100646FD0);
  v58 = v129;
  sub_1001749C4(v46, v129);
  v59 = v111;
  sub_10010BCAC(v133, v58 + *(v111 + 20));
  v60 = (v58 + *(v59 + 24));
  *v60 = v56;
  v60[1] = v57;
  v61 = v133[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v135, v132, &qword_100769608, &unk_1006302F0);
  v63 = *(v132[5] + 8);
  *(v62 + 32) = v132[4];
  *(v62 + 40) = v63;
  sub_10000794C(&v134, v130, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v64 = v61;
  swift_unknownObjectRelease();
  *(v62 + 48) = v131;
  sub_100004758(v130);
  sub_100004758(v132);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v65 = swift_allocObject();
  v66 = sub_1003A7F90(v64, v56, v62, v65);
  v110 = v56;

  sub_10010BD08(v133);
  sub_100174ECC(v46, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v67 = *(v59 + 28);
  v109 = v66;
  *(v58 + v67) = v66;
  v68 = v113;
  sub_100078BBC(v113);
  v111 = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v69 = swift_allocObject();
  v70 = v115;
  swift_unknownObjectRetain();
  v71 = sub_1003A56E4(v68, v70, v69);
  v72 = *(v71 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v72 + 112))(ObjectType, v72))
  {
    swift_getObjectType();
    v74 = v100;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v75 = v119;
    v76 = v116;
    v77 = v74;
    v78 = v120;
    (*(v119 + 32))(v116, v77, v120);
  }

  else
  {
    v75 = v119;
    v78 = v120;
    v76 = v116;
    (*(v119 + 104))(v116, enum case for TTRRemindersListLayout.list(_:), v120);
  }

  v116 = sub_1003A4A1C(v76, v71);
  v119 = v79;
  v81 = v80;
  v83 = v82;
  (*(v75 + 8))(v76, v78);
  v120 = swift_getObjectType();
  *(v71 + 24) = *(v83 + 8);
  v123 = v81;
  swift_unknownObjectWeakAssign();
  v84 = *(v71 + 144);
  v85 = swift_getObjectType();
  v86 = *(v84 + 112);

  if (v86(v85, v84))
  {
    swift_getObjectType();
    v87 = v101;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v88 = v121;
    (*(v75 + 32))(v121, v87, v78);
  }

  else
  {
    v88 = v121;
    (*(v75 + 104))(v121, enum case for TTRRemindersListLayout.list(_:), v78);
  }

  v89 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v90 = v116;
  v121 = v90;
  v91 = sub_1003A7DE0(v71, v90, v119, v88, 0, 1, 0, v89);

  v92 = *(v83 + 32);
  v93 = v91;
  v92(v91, &off_100723D78, v120, v83);
  sub_100174E84(&qword_100770960, type metadata accessor for TTRIRemindersCommonPresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_100174E84(&qword_100770968, type metadata accessor for TTRShowAssignedViewModelSource, &unk_100632480);

  v94 = v93;
  dispatch thunk of TTRShowAssignedDataModelSource.delegate.setter();

  sub_10056FEB0(v95, &off_10071A9B0);

  v109[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v137, v133, &qword_100769600, &qword_10062E0A0);
  v96 = v133[4];
  swift_unknownObjectRelease();
  *(v96 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v133);
  sub_10000794C(&v138, v133, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_100174E84(&qword_100770970, type metadata accessor for TTRIRemindersCommonPresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v133);
  v97 = v122;
  v122[3] = v111;
  v97[4] = &off_1007189D8;

  swift_unknownObjectRelease();
  *v97 = v71;
  (*(v127 + 8))(v126, v128);
  v117(v124, v125);
  sub_100174ECC(v129, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v136);
  return v94;
}

id TTRIShowAssignedAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowAssignedAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowAssignedAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowAssignedAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001749C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100174A28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v42 = a3;
  v11 = *a6;
  v44 = a4;
  v45 = v11;
  v46 = type metadata accessor for REMAnalyticsEvent();
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v43 = type metadata accessor for TTRListType.SortingCapability();
  v18 = *(v43 - 8);
  v19 = __chkstk_darwin(v43);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_smartList;
  *(a6 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_smartList) = 0;
  v23 = a6 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_completedRemindersCount;
  *v23 = 0;
  v23[8] = 1;
  *(a6 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_hasCompletedReminders) = 2;
  *(a6 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  *(a6 + v22) = a1;
  v24 = (a6 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_assignedDataModelSource);
  *v24 = a2;
  v24[1] = &protocol witness table for TTRShowAssignedDataModelSource;
  *(a6 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_hasDefaultNewReminderButton) = a5;
  (*(v18 + 16))(v21, a4, v19);
  v25 = a1;

  v27 = sub_1003A649C(v26, v42, v21, a6);

  sub_10015026C(v17);
  v28 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v28 - 8) + 56))(v17, 0, 1, v28);
  sub_10056F540(v17);
  sub_1000079B4(v17, &unk_10078A380, &qword_10062DE60);
  type metadata accessor for TTRUserDefaults();
  v29 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v30 = sub_100058000(&qword_100770980, &unk_1006339B0);
  v31 = &v14[*(v30 + 48)];
  v32 = &v14[*(v30 + 80)];
  v33 = enum case for REMRemindersOpenUserOperation.SmartListType.assigned(_:);
  v34 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v34 - 8) + 104))(v14, v33, v34);
  v35 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v36 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v36 - 8) + 104))(v14, v35, v36);
  *v31 = TTRUserDefaults.activitySessionId.getter();
  v31[1] = v37;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v32 = _typeName(_:qualified:)();
  v32[1] = v38;
  v39 = v46;
  (*(v12 + 104))(v14, enum case for REMAnalyticsEvent.openListUserOperation(_:), v46);
  REMAnalyticsManager.post(event:)();

  (*(v18 + 8))(v44, v43);
  (*(v12 + 8))(v14, v39);
  return v27;
}

uint64_t sub_100174E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100174ECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100174F2C()
{
  result = qword_100770978;
  if (!qword_100770978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100770978);
  }

  return result;
}

double sub_100174F78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_100174FCC()
{
  v1 = sub_100058000(&qword_100770AA8, &unk_100633130);
  __chkstk_darwin(v1 - 8);
  v3 = &v14[-v2];
  v4 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5];
  v7 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityMostRecentChangeSummary;
  swift_beginAccess();
  sub_10000794C(v0 + v7, v3, &qword_100770AA8, &unk_100633130);
  v8 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  v9 = 1;
  v10 = (*(*(v8 - 8) + 48))(v3, 1, v8);
  sub_1000079B4(v3, &qword_100770AA8, &unk_100633130);
  if (v10 != 1)
  {
    static Date.now.getter();
    v9 = 0;
  }

  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v6, v9, 1, v11);
  v12 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityTimeOfMostRecentChange;
  swift_beginAccess();
  sub_10017734C(v6, v0 + v12);
  return swift_endAccess();
}

uint64_t sub_1001751B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49[1] = a2;
  v5 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v49[6] = v7;
  v51 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAutoCategorizationOverlayView();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v49[0] = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = v49 - v11;
  v12 = type metadata accessor for TTRRemindersListLayout();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_100770AA8, &unk_100633130);
  __chkstk_darwin(v16 - 8);
  v18 = v49 - v17;
  v19 = sub_10057E4BC();
  v49[4] = v20;
  v49[5] = v19;
  v49[2] = v22;
  v49[3] = v21;
  v52 = a1;
  sub_1001770EC(a1, v18);
  v50 = v6;
  (*(v6 + 56))(v18, 0, 1, v5);
  v23 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityMostRecentChangeSummary;
  swift_beginAccess();
  sub_100177150(v18, v3 + v23);
  swift_endAccess();
  sub_100174FCC();
  sub_1000079B4(v18, &qword_100770AA8, &unk_100633130);
  (*(v13 + 104))(v15, enum case for TTRRemindersListLayout.list(_:), v12);
  sub_1001771C0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock != v61)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v13 + 8))(v15, v12);

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v51;
  sub_1001770EC(v52, v51);
  v26 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  sub_100177218(v25, v27 + v26);
  v28 = v53;
  TTRAutoCategorizationOverlayView.init(titleString:subtitleString:shouldShowArrow:tapHandler:)();
  v29 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController;
  v30 = *(v3 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
  if (v30)
  {
    v32 = v54;
    v31 = v55;
    (*(v54 + 16))(v49[0], v28, v55);
    v33 = v30;
    dispatch thunk of UIHostingController.rootView.setter();
  }

  else
  {
    v34 = sub_100175B10(v28);
    v35 = *(v3 + v29);
    *(v3 + v29) = v34;

    v36 = objc_opt_self();
    v59 = sub_1001772E0;
    v60 = v3;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v57 = sub_10001047C;
    v58 = &unk_100718A38;
    v37 = _Block_copy(&aBlock);

    [v36 animateWithDuration:0 delay:v37 usingSpringWithDamping:0 initialSpringVelocity:0.24 options:0.0 animations:0.2 completion:0.0];
    _Block_release(v37);
    v32 = v54;
    v31 = v55;
  }

  v38 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayTimer;
  v39 = *(v3 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayTimer);
  if (v39)
  {
    [v39 invalidate];
  }

  v40 = 10.0;
  if (!UIAccessibilityIsSwitchControlRunning() && (static UIAccessibility.ttriIsVoiceControlRunning.getter() & 1) == 0)
  {
    if (static UIAccessibility.ttriIsFullKeyboardAccessRunning.getter())
    {
      v40 = 10.0;
    }

    else
    {
      v40 = 3.0;
    }
  }

  v41 = swift_allocObject();
  swift_weakInit();
  v59 = sub_1001772E8;
  v60 = v41;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v57 = sub_1001762CC;
  v58 = &unk_100718A60;
  v42 = _Block_copy(&aBlock);
  v43 = objc_opt_self();

  v44 = [v43 timerWithTimeInterval:0 repeats:v42 block:v40];
  _Block_release(v42);

  v45 = *(v3 + v38);
  *(v3 + v38) = v44;
  v46 = v44;

  v47 = [objc_opt_self() currentRunLoop];
  [v47 addTimer:v46 forMode:NSRunLoopCommonModes];

  return (*(v32 + 8))(v28, v31);
}

void sub_1001758A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
    if (v4)
    {
      v5 = Strong;
      v6 = v4;
      v7 = [v6 view];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 isHidden];

        if ((v9 & 1) == 0)
        {
          v10 = swift_unknownObjectWeakLoadStrong();
          if (v10)
          {
            v11 = *(v10 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
            v12 = *(v10 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
            sub_10000C36C((v10 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v11);
            (*(v12 + 1128))(a2, v11, v12);
            swift_unknownObjectRelease();
          }

          v13 = objc_opt_self();
          v21 = sub_10017743C;
          v22 = v5;
          v14 = v5;
          aBlock = _NSConcreteStackBlock;
          v18 = 1107296256;
          v19 = sub_10001047C;
          v20 = &unk_100718AD8;
          v15 = _Block_copy(&aBlock);

          v21 = sub_100177454;
          v22 = v14;
          aBlock = _NSConcreteStackBlock;
          v18 = 1107296256;
          v19 = sub_100174F78;
          v20 = &unk_100718B00;
          v16 = _Block_copy(&aBlock);

          [v13 animateWithDuration:0 delay:v15 usingSpringWithDamping:v16 initialSpringVelocity:0.24 options:0.0 animations:0.2 completion:0.0];
          _Block_release(v16);
          _Block_release(v15);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

id sub_100175B10(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for TTRAutoCategorizationOverlayView();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = Strong;
  (*(v6 + 16))(v8, a1, v5);
  v11 = objc_allocWithZone(sub_100058000(&qword_100770AC0, &qword_100633148));
  v12 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  UIHostingController.safeAreaRegions.setter();
  v13 = v12;
  result = [v13 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v13 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = result;
  [result setAlpha:0.0];

  result = [v13 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = result;
  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor:v18];

  [v10 addChildViewController:v13];
  result = [v10 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = result;
  result = [v13 view];
  if (result)
  {
    v20 = result;
    [v19 addSubview:result];

    [v13 didMoveToParentViewController:v10];
    v21 = [v13 view];

    if (v21)
    {
      v22 = [v10 view];
      if (v22)
      {
        v23 = v22;
        v24 = *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_alreadyAppliedWorkaround);
        v25 = [v21 bottomAnchor];
        if (v24)
        {
          v26 = [v23 keyboardLayoutGuide];
          v27 = [v26 topAnchor];

          v28 = [v25 constraintEqualToAnchor:v27 constant:-10.0];
        }

        else
        {
          v29 = [v23 layoutMarginsGuide];
          v27 = [v29 bottomAnchor];

          v28 = [v25 constraintEqualToAnchor:v27 constant:-10.0 - *(v2 + 32)];
        }

        v30 = v28;

        v31 = *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_workaroundOverlayBottomConstraint);
        *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_workaroundOverlayBottomConstraint) = v30;
        v32 = v30;

        v48 = objc_opt_self();
        sub_100058000(&qword_10076B780, &qword_10062D7C0);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_10062D450;
        *(v33 + 32) = v32;
        v34 = [v21 centerXAnchor];
        v35 = [v23 layoutMarginsGuide];
        v36 = [v35 centerXAnchor];

        v37 = [v34 constraintEqualToAnchor:v36];
        *(v33 + 40) = v37;
        v38 = [v21 leadingAnchor];
        v39 = [v23 layoutMarginsGuide];
        v40 = [v39 leadingAnchor];

        v41 = [v38 constraintGreaterThanOrEqualToAnchor:v40];
        *(v33 + 48) = v41;
        v42 = [v21 trailingAnchor];
        v43 = [v23 layoutMarginsGuide];
        v44 = [v43 trailingAnchor];

        v45 = [v42 constraintLessThanOrEqualToAnchor:v44];
        *(v33 + 56) = v45;
        sub_100177300();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v48 activateConstraints:isa];

        swift_unknownObjectRelease();
        return v13;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_10017612C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = objc_opt_self();
    v11 = sub_1001772F0;
    v12 = v3;
    aBlock = _NSConcreteStackBlock;
    v8 = 1107296256;
    v9 = sub_10001047C;
    v10 = &unk_100718A88;
    v5 = _Block_copy(&aBlock);

    v11 = sub_1001772F8;
    v12 = v3;
    aBlock = _NSConcreteStackBlock;
    v8 = 1107296256;
    v9 = sub_100174F78;
    v10 = &unk_100718AB0;
    v6 = _Block_copy(&aBlock);

    [v4 animateWithDuration:0 delay:v5 usingSpringWithDamping:v6 initialSpringVelocity:0.24 options:0.0 animations:0.2 completion:0.0];
    _Block_release(v6);
    _Block_release(v5);
  }
}

void sub_1001762CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100176334()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayTimer);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController;
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      [v5 setHidden:1];

      v7 = [v4 view];
      if (v7)
      {
        [v7 removeFromSuperview];

        [v4 willMoveToParentViewController:0];
        [v4 removeFromParentViewController];

        v8 = *(v0 + v2);
        *(v0 + v2) = 0;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100176458()
{
  v1 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_alreadyAppliedWorkaround;
  if ((*(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_alreadyAppliedWorkaround) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
    if (v2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = v2;
        v6 = [v4 view];
        if (v6)
        {
          v19 = v6;
          v7 = *(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_workaroundOverlayBottomConstraint);
          if (v7)
          {
            v8 = v7;
            [v8 setActive:0];
            v9 = [v5 view];
            if (v9)
            {
              v10 = v9;
              v11 = [v9 bottomAnchor];

              v12 = [v19 keyboardLayoutGuide];
              v13 = [v12 topAnchor];

              v14 = [v11 constraintEqualToAnchor:v13 constant:-10.0];
              [v14 setActive:1];
              v15 = objc_opt_self();
              v16 = swift_allocObject();
              *(v16 + 16) = v19;
              aBlock[4] = sub_100177418;
              aBlock[5] = v16;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_10001047C;
              aBlock[3] = &unk_100718B50;
              v17 = _Block_copy(aBlock);
              v18 = v19;

              [v15 animateWithDuration:v17 animations:0.2];

              swift_unknownObjectRelease();
              _Block_release(v17);
              *(v0 + v1) = 1;
            }

            else
            {
              __break(1u);
            }
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_100176730()
{
  v1 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - v2;
  v4 = type metadata accessor for Date();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  __chkstk_darwin(v9);
  v40 = &v36 - v10;
  v11 = sub_100058000(&qword_100770AA8, &unk_100633130);
  __chkstk_darwin(v11 - 8);
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityMostRecentChangeSummary;
  swift_beginAccess();
  sub_10000794C(v0 + v20, v15, &qword_100770AA8, &unk_100633130);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000079B4(v15, &qword_100770AA8, &unk_100633130);
LABEL_11:
    v34 = 0;
    return v34 & 1;
  }

  sub_100177218(v15, v19);
  v21 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityTimeOfMostRecentChange;
  swift_beginAccess();
  sub_10000794C(v0 + v21, v3, &qword_1007757F0, &unk_10062DE70);
  v23 = v41;
  v22 = v42;
  if ((*(v41 + 48))(v3, 1, v42) == 1)
  {
    sub_1001773BC(v19);
    sub_1000079B4(v3, &qword_1007757F0, &unk_10062DE70);
    goto LABEL_11;
  }

  v24 = v40;
  (*(v23 + 32))(v40, v3, v22);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v23 + 8))(v24, v22);
LABEL_10:
    sub_1001773BC(v19);
    goto LABEL_11;
  }

  v37 = Strong;
  static Date.+ infix(_:_:)();
  v26 = v39;
  static Date.now.getter();
  v27 = static Date.> infix(_:_:)();
  v28 = v26;
  v29 = *(v23 + 8);
  v29(v28, v22);
  v29(v8, v22);
  if ((v27 & 1) == 0)
  {
    swift_unknownObjectRelease();
    v29(v40, v22);
    goto LABEL_10;
  }

  v30 = v38;
  (*(v17 + 56))(v38, 1, 1, v16);
  swift_beginAccess();
  sub_100177150(v30, v0 + v20);
  swift_endAccess();
  sub_100174FCC();
  sub_1000079B4(v30, &qword_100770AA8, &unk_100633130);
  v31 = v22;
  v32 = *(v37 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v33 = *(v37 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v37 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v32);
  v34 = (*(v33 + 1128))(v19, v32, v33);
  swift_unknownObjectRelease();
  v29(v40, v31);
  sub_1001773BC(v19);
  return v34 & 1;
}

void sub_100176C30(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setHidden:0];

  v5 = [v2 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v5 setAlpha:1.0];
}

void sub_100176D14(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      [v2 setAlpha:0.0];
    }
  }
}

void sub_100176D8C(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController;
  v3 = *(a2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
  if (!v3)
  {
    return;
  }

  v5 = v3;
  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  [v6 setHidden:1];

  v8 = [v5 view];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  [v8 removeFromSuperview];

  [v5 willMoveToParentViewController:0];
  [v5 removeFromParentViewController];

  v9 = *(a2 + v2);
  *(a2 + v2) = 0;
}

uint64_t sub_100176E9C()
{
  sub_10003B788(v0 + 16);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityTimeOfMostRecentChange, &qword_1007757F0, &unk_10062DE70);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityMostRecentChangeSummary, &qword_100770AA8, &unk_100633130);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIAutoCategorizationOverlayController(uint64_t a1)
{
  result = qword_1007709E0;
  if (!qword_1007709E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100176FBC(uint64_t a1)
{
  sub_100004B08(319, &qword_100792E60, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_100004B08(319, &unk_1007709F0, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1001770EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100177150(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100770AA8, &unk_100633130);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001771C0()
{
  result = qword_100770AB0;
  if (!qword_100770AB0)
  {
    type metadata accessor for TTRRemindersListLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100770AB0);
  }

  return result;
}

uint64_t sub_100177218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10017727C()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1001758A0(v2, v3);
}

unint64_t sub_100177300()
{
  result = qword_10076BAD0;
  if (!qword_10076BAD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076BAD0);
  }

  return result;
}

uint64_t sub_10017734C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001773BC(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10017747C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100770AC8);
  v1 = sub_100003E30(v0, qword_100770AC8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void (*TTRListDetailInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100117B50;
}

char *TTRListDetailInteractor.__allocating_init(editor:undoManager:)(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = sub_10017B700(a1, a2);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v6;
}

char *TTRListDetailInteractor.init(editor:undoManager:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = sub_10017B700(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_1001776DC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void TTRListDetailInteractor.deinit()
{
  v1 = *v0;
  if (*(v0 + *(*v0 + 112)))
  {
    sub_100003540(0, &qword_100788D40, NSUndoManager_ptr);

    static NSUndoManager.removeObserver(with:)();

    sub_10003B788((v0 + 2));
    (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t TTRListDetailInteractor.__deallocating_deinit()
{
  TTRListDetailInteractor.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRListDetailInteractor.hasUnsavedChanges.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = v15 - v6;
  v8 = *(v0 + *(v1 + 120));
  v9 = *(v2 + 24);
  swift_unknownObjectRetain();
  v9(v3, v2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  if (v8)
  {
    v15[0] = v11;
    v15[1] = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v13 = v12 ^ 1;
  }

  else
  {
    swift_unknownObjectRelease();
    v13 = 1;
  }

  return v13 & 1;
}

Swift::Void __swiftcall TTRListDetailInteractor.update(name:)(Swift::String name)
{
  v2 = v1;
  v3 = *v1;
  v4 = String.validatedListName()();
  (*(*(v3 + 88) + 56))(v4);

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = v2[3];
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

uint64_t TTRListDetailInteractor.update(color:)(uint64_t a1)
{
  (*(*(*v1 + 88) + 64))(a1, *(*v1 + 80));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = v1[3];
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTRListDetailInteractor.update(badgeEmblem:)(__C::REMListBadgeEmblem badgeEmblem)
{
  (*(*(*v1 + 88) + 72))(badgeEmblem._rawValue, *(*v1 + 80));
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1[3];
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRListDetailInteractor.update(badgeEmoji:)(Swift::String badgeEmoji)
{
  (*(*(*v1 + 88) + 80))(badgeEmoji._countAndFlagsBits, badgeEmoji._object, *(*v1 + 80));
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1[3];
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

void TTRListDetailInteractor.update(filter:)(uint64_t a1)
{
  (*(*(*v1 + 88) + 32))(&v11, *(*v1 + 80));
  if (v12)
  {
    sub_100005FD0(&v11, v13);
    v3 = v14;
    v4 = v15;
    sub_10000C36C(v13, v14);
    (*(v4 + 8))(a1, v3, v4);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v1[3];
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    sub_100004758(v13);
  }

  else
  {
    sub_1000079B4(&v11, &qword_100770AE0, &qword_100633150);
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003E30(v7, qword_100770AC8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "TTRListDetailInteractor: failed to update filter; missing editor.filterEditingContext", v10, 2u);
    }
  }
}

void TTRListDetailInteractor.update(listType:)(uint64_t a1)
{
  (*(*(*v1 + 88) + 40))(&v11, *(*v1 + 80));
  if (v12)
  {
    sub_100005FD0(&v11, v13);
    v3 = v14;
    v4 = v15;
    sub_10000C36C(v13, v14);
    (*(v4 + 8))(a1, v3, v4);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v1[3];
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    sub_100004758(v13);
  }

  else
  {
    sub_1000079B4(&v11, &qword_100770AE8, &qword_100633158);
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003E30(v7, qword_100770AC8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "TTRListDetailInteractor: failed to update filter; missing editor.listTypeEditingContext", v10, 2u);
    }
  }
}

Swift::Void __swiftcall TTRListDetailInteractor.removeExistingSections()()
{
  (*(*(*v0 + 88) + 48))(&v7, *(*v0 + 80));
  if (v8)
  {
    sub_100005FD0(&v7, v9);
    v1 = v10;
    v2 = v11;
    sub_10000C36C(v9, v10);
    (*(v2 + 8))(v1, v2);
    sub_100004758(v9);
  }

  else
  {
    sub_1000079B4(&v7, &qword_100770AF0, &unk_100633160);
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100770AC8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "TTRListDetailInteractor: failed to remove existing sections; missing editor.sectionsEditingContext", v6, 2u);
    }
  }
}

Swift::Int TTRListDetailSavedObjectID.ObjectType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t TTRListDetailSavedObjectID.undoNavigationEditingTarget.getter(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = &qword_100770978;
      v4 = REMSmartList_ptr;
    }

    else
    {
      v3 = &qword_100770AF8;
      v4 = REMTemplate_ptr;
    }
  }

  else
  {
    v3 = &qword_10076ABC0;
    v4 = REMList_ptr;
  }

  sub_100003540(0, v3, v4);
  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  swift_getMetatypeMetadata();
  v5 = a1;
  return TTRUndoNavigationEditingTarget.init(id:itemType:)();
}

void TTRListEditor.listTypeEditingContext.getter(uint64_t **a1@<X8>)
{
  v4 = *v2;
  v5 = TTRListEditor.changeItem.getter();
  v6 = [v5 accountCapabilities];
  v7 = [v6 supportsGroceriesList];

  if (v7)
  {

    v8 = &protocol witness table for TTRListEditor;
  }

  else
  {
    v4 = 0;
    v8 = 0;
    v2 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v4;
  a1[4] = v8;
  *a1 = v2;
}

id REMListChangeItem.canMakeIntoGroceriesList.getter()
{
  v1 = [v0 accountCapabilities];
  v2 = [v1 supportsGroceriesList];

  return v2;
}

void TTRListEditor.sectionsEditingContext.getter(uint64_t **a1@<X8>)
{
  v4 = *v2;
  v5 = TTRListEditor.changeItem.getter();
  v6 = [v5 accountCapabilities];

  LODWORD(v5) = [v6 supportsSections];
  if (v5)
  {

    v7 = &protocol witness table for TTRListEditor;
  }

  else
  {
    v4 = 0;
    v7 = 0;
    v2 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v4;
  a1[4] = v7;
  *a1 = v2;
}

id TTRListEditor.listDetailSave(completion:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = TTRListEditor.changeItem.getter();
  v6 = [v5 saveRequest];

  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v13[4] = sub_10017BC44;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100009DE4;
  v13[3] = &unk_100718BA0;
  v9 = _Block_copy(v13);
  sub_10008E7EC(a1, a2);

  [v6 saveWithQueue:v7 completion:v9];
  _Block_release(v9);

  v10 = TTRListEditor.changeItem.getter();
  v11 = [v10 objectID];

  return v11;
}

void TTRListEditor.edit(listType:)()
{
  v0 = TTRRemindersListListType.shouldCategorizeGroceryItems.getter() & 1;

  TTRListEditor.edit(shouldCategorizeGroceryItems:)(v0);
}

uint64_t sub_100178A4C@<X0>(uint64_t *a1@<X8>)
{
  result = TTRListEditor.changeItem.getter();
  *a1 = result;
  return result;
}

void sub_100178A78(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *v3;
  v7 = TTRListEditor.changeItem.getter();
  v8 = [v7 accountCapabilities];
  v9 = [v8 supportsGroceriesList];

  if (v9)
  {

    v10 = &protocol witness table for TTRListEditor;
  }

  else
  {
    a1 = 0;
    v10 = 0;
    v6 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = a1;
  a2[4] = v10;
  *a2 = v6;
}

void sub_100178B18(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *v3;
  v7 = TTRListEditor.changeItem.getter();
  v8 = [v7 accountCapabilities];

  LODWORD(v7) = [v8 supportsSections];
  if (v7)
  {

    v9 = &protocol witness table for TTRListEditor;
  }

  else
  {
    a1 = 0;
    v9 = 0;
    v6 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = a1;
  a2[4] = v9;
  *a2 = v6;
}

uint64_t REMListChangeItem.shouldUseItemWording.getter()
{
  REMListChangeItem.ttrGroceryContext.getter();
  ShouldCategorizeGrocery = v3;
  if (v3)
  {
    sub_10000C36C(v2, v3);
    ShouldCategorizeGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();
    sub_100004758(v2);
  }

  else
  {
    sub_1000079B4(v2, &qword_1007757E0, &qword_100636780);
  }

  return ShouldCategorizeGrocery & 1;
}

id REMListChangeItem.hasExistingSections.getter()
{
  v1 = v0;
  result = [v0 sectionsContextChangeItem];
  if (result)
  {
    v3 = result;
    v4 = [v1 saveRequest];
    v5 = [v4 store];

    v19 = 0;
    v6 = [v5 fetchListSectionsForListSectionContextChangeItem:v3 error:&v19];

    v7 = v19;
    if (v6)
    {
      sub_100003540(0, &qword_10076E8E8, REMListSection_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v7;

      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return (v10 != 0);
    }

    else
    {
      v11 = v19;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100766FB0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100003E30(v12, qword_100770AC8);
      v13 = v1;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = [v13 objectID];
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "REMListChangeItem#hasExistingSections : Failed to fetch sections in list {listID: %@}", v16, 0xCu);
        sub_1000079B4(v17, &unk_10076DF80, &qword_10062F730);
      }

      return 0;
    }
  }

  return result;
}

id sub_10017902C()
{
  v1 = [*v0 accountCapabilities];
  v2 = [v1 supportsGroceriesList];

  return v2;
}

uint64_t sub_10017907C()
{
  REMListChangeItem.ttrGroceryContext.getter();
  ShouldCategorizeGrocery = v3;
  if (v3)
  {
    sub_10000C36C(v2, v3);
    ShouldCategorizeGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();
    sub_100004758(v2);
  }

  else
  {
    sub_1000079B4(v2, &qword_1007757E0, &qword_100636780);
  }

  return ShouldCategorizeGrocery & 1;
}

void TTRSmartListEditor.filterEditingContext.getter(uint64_t **a1@<X8>)
{
  v3 = *v1;
  v4 = TTRSmartListEditor.changeItem.getter();
  v5 = [v4 customContext];

  if (v5)
  {

    v6 = &protocol witness table for TTRSmartListEditor;
  }

  else
  {
    v1 = 0;
    v3 = 0;
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v1;
  a1[3] = v3;
  a1[4] = v6;
}

id TTRSmartListEditor.listDetailSave(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = TTRSmartListEditor.changeItem.getter();
  v5 = [v4 saveRequest];

  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v12[4] = sub_10017C0F4;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100009DE4;
  v12[3] = &unk_100718BF0;
  v8 = _Block_copy(v12);
  sub_10008E7EC(a1, a2);

  [v5 saveWithQueue:v6 completion:v8];
  _Block_release(v8);

  v9 = TTRSmartListEditor.changeItem.getter();
  v10 = [v9 objectID];

  return v10;
}

void sub_100179368(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100770AC8);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = sub_100004060(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error saving list: %s", v6, 0xCu);
      sub_100004758(v7);
    }

    if (a2)
    {
LABEL_7:
      a2();
    }
  }

  else
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100770AC8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "List saved!", v14, 2u);
    }

    if (a2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1001795A8@<X0>(uint64_t *a1@<X8>)
{
  result = TTRSmartListEditor.changeItem.getter();
  *a1 = result;
  return result;
}

void sub_1001795D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = TTRSmartListEditor.changeItem.getter();
  v7 = [v6 customContext];

  if (v7)
  {

    v8 = &protocol witness table for TTRSmartListEditor;
  }

  else
  {
    v5 = 0;
    a1 = 0;
    v8 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v5;
  a2[3] = a1;
  a2[4] = v8;
}

uint64_t REMSmartListChangeItem.name.getter()
{
  v1 = [v0 customContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 name];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_100179808(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  v5 = [v4 *a2];

  return v5;
}

uint64_t sub_100179880()
{
  v1 = [*v0 customContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 name];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_100179930(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = [*v4 *a3];
  v7 = [v6 *a4];

  return v7;
}

void TTRListDetailInteractor<>.update(hashtags:)(uint64_t a1)
{
  v32 = a1;
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076D088, &qword_100630D00);
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  v9 = sub_100058000(&qword_10076D038, &qword_100630CE0);
  __chkstk_darwin(v9 - 8);
  v30 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  v31 = v1;
  v29[1] = *(v1 + 32);
  v17 = TTRSmartListEditor.changeItem.getter();
  v18 = [v17 customContext];

  if (!v18 || (v19 = REMSmartListCustomContextChangeItem.filter.getter(), v18, !v19))
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v19 = REMCustomSmartListFilterDescriptor.__allocating_init()();
  }

  REMCustomSmartListFilterDescriptor.hashtags.getter();
  v20 = *(v6 + 48);
  sub_10000794C(v16, v8, &qword_10076D038, &qword_100630CE0);
  sub_10000794C(v32, &v8[v20], &qword_10076D038, &qword_100630CE0);
  v21 = *(v3 + 48);
  if (v21(v8, 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D038, &qword_100630CE0);
    if (v21(&v8[v20], 1, v2) == 1)
    {

      sub_1000079B4(v8, &qword_10076D038, &qword_100630CE0);
      return;
    }

    goto LABEL_9;
  }

  sub_10000794C(v8, v13, &qword_10076D038, &qword_100630CE0);
  if (v21(&v8[v20], 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D038, &qword_100630CE0);
    (*(v3 + 8))(v13, v2);
LABEL_9:
    sub_1000079B4(v8, &qword_10076D088, &qword_100630D00);
    goto LABEL_10;
  }

  (*(v3 + 32))(v5, &v8[v20], v2);
  sub_10017BC60(&qword_10076D090, &type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.FilterHashtags);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v3 + 8);
  v28(v5, v2);
  sub_1000079B4(v16, &qword_10076D038, &qword_100630CE0);
  v28(v13, v2);
  sub_1000079B4(v8, &qword_10076D038, &qword_100630CE0);
  if (v27)
  {

    return;
  }

LABEL_10:
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  sub_10000794C(v32, v30, &qword_10076D038, &qword_100630CE0);
  v22 = v19;
  v23 = REMCustomSmartListFilterDescriptor.__allocating_init(source:hashtags:)();
  TTRSmartListEditor.edit(filter:)();
  v24 = v31;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 24);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(ObjectType, v25);
    swift_unknownObjectRelease();
  }
}

void TTRListDetailInteractor<>.update(date:)(uint64_t a1)
{
  v32 = a1;
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076D098, &qword_100630D08);
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  v9 = sub_100058000(&qword_10076D030, &unk_100633170);
  __chkstk_darwin(v9 - 8);
  v30 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  v31 = v1;
  v29[1] = *(v1 + 32);
  v17 = TTRSmartListEditor.changeItem.getter();
  v18 = [v17 customContext];

  if (!v18 || (v19 = REMSmartListCustomContextChangeItem.filter.getter(), v18, !v19))
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v19 = REMCustomSmartListFilterDescriptor.__allocating_init()();
  }

  REMCustomSmartListFilterDescriptor.date.getter();
  v20 = *(v6 + 48);
  sub_10000794C(v16, v8, &qword_10076D030, &unk_100633170);
  sub_10000794C(v32, &v8[v20], &qword_10076D030, &unk_100633170);
  v21 = *(v3 + 48);
  if (v21(v8, 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D030, &unk_100633170);
    if (v21(&v8[v20], 1, v2) == 1)
    {

      sub_1000079B4(v8, &qword_10076D030, &unk_100633170);
      return;
    }

    goto LABEL_9;
  }

  sub_10000794C(v8, v13, &qword_10076D030, &unk_100633170);
  if (v21(&v8[v20], 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D030, &unk_100633170);
    (*(v3 + 8))(v13, v2);
LABEL_9:
    sub_1000079B4(v8, &qword_10076D098, &qword_100630D08);
    goto LABEL_10;
  }

  (*(v3 + 32))(v5, &v8[v20], v2);
  sub_10017BC60(&qword_10076D0A0, &type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.FilterDate);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v3 + 8);
  v28(v5, v2);
  sub_1000079B4(v16, &qword_10076D030, &unk_100633170);
  v28(v13, v2);
  sub_1000079B4(v8, &qword_10076D030, &unk_100633170);
  if (v27)
  {

    return;
  }

LABEL_10:
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  sub_10000794C(v32, v30, &qword_10076D030, &unk_100633170);
  v22 = v19;
  v23 = REMCustomSmartListFilterDescriptor.__allocating_init(source:date:)();
  TTRSmartListEditor.edit(filter:)();
  v24 = v31;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 24);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(ObjectType, v25);
    swift_unknownObjectRelease();
  }
}

void TTRListDetailInteractor<>.update(time:)(uint64_t a1)
{
  v32 = a1;
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076D0A8, &qword_100630D10);
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  v9 = sub_100058000(&qword_10076D028, &unk_100630CD0);
  __chkstk_darwin(v9 - 8);
  v30 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  v31 = v1;
  v29[1] = *(v1 + 32);
  v17 = TTRSmartListEditor.changeItem.getter();
  v18 = [v17 customContext];

  if (!v18 || (v19 = REMSmartListCustomContextChangeItem.filter.getter(), v18, !v19))
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v19 = REMCustomSmartListFilterDescriptor.__allocating_init()();
  }

  REMCustomSmartListFilterDescriptor.time.getter();
  v20 = *(v6 + 48);
  sub_10000794C(v16, v8, &qword_10076D028, &unk_100630CD0);
  sub_10000794C(v32, &v8[v20], &qword_10076D028, &unk_100630CD0);
  v21 = *(v3 + 48);
  if (v21(v8, 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D028, &unk_100630CD0);
    if (v21(&v8[v20], 1, v2) == 1)
    {

      sub_1000079B4(v8, &qword_10076D028, &unk_100630CD0);
      return;
    }

    goto LABEL_9;
  }

  sub_10000794C(v8, v13, &qword_10076D028, &unk_100630CD0);
  if (v21(&v8[v20], 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D028, &unk_100630CD0);
    (*(v3 + 8))(v13, v2);
LABEL_9:
    sub_1000079B4(v8, &qword_10076D0A8, &qword_100630D10);
    goto LABEL_10;
  }

  (*(v3 + 32))(v5, &v8[v20], v2);
  sub_10017BC60(&qword_10076D0B0, &type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.FilterTime);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v3 + 8);
  v28(v5, v2);
  sub_1000079B4(v16, &qword_10076D028, &unk_100630CD0);
  v28(v13, v2);
  sub_1000079B4(v8, &qword_10076D028, &unk_100630CD0);
  if (v27)
  {

    return;
  }

LABEL_10:
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  sub_10000794C(v32, v30, &qword_10076D028, &unk_100630CD0);
  v22 = v19;
  v23 = REMCustomSmartListFilterDescriptor.__allocating_init(source:time:)();
  TTRSmartListEditor.edit(filter:)();
  v24 = v31;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 24);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(ObjectType, v25);
    swift_unknownObjectRelease();
  }
}

void TTRListDetailInteractor<>.update(priorities:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = TTRSmartListEditor.changeItem.getter();
  v6 = [v5 customContext];

  if (!v6 || (v14 = REMSmartListCustomContextChangeItem.filter.getter(), v6, (v7 = v14) == 0))
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v7 = REMCustomSmartListFilterDescriptor.__allocating_init()();
  }

  v15 = v7;
  v8 = REMCustomSmartListFilterDescriptor.priorities.getter();
  if (!v8)
  {
    if (!a1)
    {
      goto LABEL_9;
    }

LABEL_13:
    type metadata accessor for REMCustomSmartListFilterDescriptor();

    v10 = v15;
    v11 = REMCustomSmartListFilterDescriptor.__allocating_init(source:priorities:)();
    TTRSmartListEditor.edit(filter:)();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      (*(v12 + 8))(ObjectType, v12);
      swift_unknownObjectRelease();
    }

    return;
  }

  if (!a1)
  {

    goto LABEL_13;
  }

  v9 = sub_100126864(v8, a1);

  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
}

void TTRListDetailInteractor<>.update(flagged:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = a1;
  v5 = TTRSmartListEditor.changeItem.getter();
  v6 = [v5 customContext];

  if (!v6 || (v13 = REMSmartListCustomContextChangeItem.filter.getter(), v6, (v7 = v13) == 0))
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v7 = REMCustomSmartListFilterDescriptor.__allocating_init()();
  }

  v14 = v7;
  v8 = REMCustomSmartListFilterDescriptor.flagged.getter();
  if (v8 == 2)
  {
    if (v4 == 2)
    {
      goto LABEL_12;
    }
  }

  else if (v4 != 2 && ((v8 ^ v4) & 1) == 0)
  {
LABEL_12:

    return;
  }

  type metadata accessor for REMCustomSmartListFilterDescriptor();
  v9 = v14;
  v10 = REMCustomSmartListFilterDescriptor.__allocating_init(source:flagged:)();
  TTRSmartListEditor.edit(filter:)();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(ObjectType, v11);
    swift_unknownObjectRelease();
  }
}

void TTRListDetailInteractor<>.update(location:)(uint64_t a1)
{
  v32 = a1;
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076D0B8, &qword_100630D18);
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  v9 = sub_100058000(&qword_10076D020, &qword_100633180);
  __chkstk_darwin(v9 - 8);
  v30 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  v31 = v1;
  v29[1] = *(v1 + 32);
  v17 = TTRSmartListEditor.changeItem.getter();
  v18 = [v17 customContext];

  if (!v18 || (v19 = REMSmartListCustomContextChangeItem.filter.getter(), v18, !v19))
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v19 = REMCustomSmartListFilterDescriptor.__allocating_init()();
  }

  REMCustomSmartListFilterDescriptor.location.getter();
  v20 = *(v6 + 48);
  sub_10000794C(v16, v8, &qword_10076D020, &qword_100633180);
  sub_10000794C(v32, &v8[v20], &qword_10076D020, &qword_100633180);
  v21 = *(v3 + 48);
  if (v21(v8, 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D020, &qword_100633180);
    if (v21(&v8[v20], 1, v2) == 1)
    {

      sub_1000079B4(v8, &qword_10076D020, &qword_100633180);
      return;
    }

    goto LABEL_9;
  }

  sub_10000794C(v8, v13, &qword_10076D020, &qword_100633180);
  if (v21(&v8[v20], 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D020, &qword_100633180);
    (*(v3 + 8))(v13, v2);
LABEL_9:
    sub_1000079B4(v8, &qword_10076D0B8, &qword_100630D18);
    goto LABEL_10;
  }

  (*(v3 + 32))(v5, &v8[v20], v2);
  sub_10017BC60(&qword_10076D0C0, &type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.FilterLocation);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v3 + 8);
  v28(v5, v2);
  sub_1000079B4(v16, &qword_10076D020, &qword_100633180);
  v28(v13, v2);
  sub_1000079B4(v8, &qword_10076D020, &qword_100633180);
  if (v27)
  {

    return;
  }

LABEL_10:
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  sub_10000794C(v32, v30, &qword_10076D020, &qword_100633180);
  v22 = v19;
  v23 = REMCustomSmartListFilterDescriptor.__allocating_init(source:location:)();
  TTRSmartListEditor.edit(filter:)();
  v24 = v31;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 24);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(ObjectType, v25);
    swift_unknownObjectRelease();
  }
}

double sub_10017AF98@<D0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_100766FB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100770AC8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id TTRTemplateEditor.listDetailSave(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = TTRTemplateEditor.changeItem.getter();
  v5 = [v4 saveRequest];

  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v12[4] = sub_10017BCA8;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100009DE4;
  v12[3] = &unk_100718C40;
  v8 = _Block_copy(v12);
  sub_10008E7EC(a1, a2);

  [v5 saveWithQueue:v6 completion:v8];
  _Block_release(v8);

  v9 = TTRTemplateEditor.changeItem.getter();
  v10 = [v9 objectID];

  return v10;
}

void sub_10017B204(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100770AC8);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.rem_errorDescription.getter();
      v10 = sub_100004060(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save template: {error: %s}", v6, 0xCu);
      sub_100004758(v7);

      if (!a2)
      {
        return;
      }
    }

    else
    {

      if (!a2)
      {
        return;
      }
    }

    goto LABEL_12;
  }

  if (qword_100766FB0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100770AC8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Template saved!", v14, 2u);
  }

  if (a2)
  {
LABEL_12:
    a2();
  }
}

uint64_t sub_10017B474@<X0>(uint64_t *a1@<X8>)
{
  result = TTRTemplateEditor.changeItem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10017B594()
{
  v1 = [*v0 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_10017B5EC()
{
  v1 = [*v0 badge];

  return v1;
}

uint64_t sub_10017B624(const char *a1)
{
  if (qword_100766FB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100770AC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, a1, v5, 2u);
  }

  return 0;
}

char *sub_10017B700(uint64_t a1, void *a2)
{
  v3 = v2;
  v36 = *v3;
  v6 = *(v36 + 88);
  v7 = *(v36 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  *(v3 + 3) = 0;
  swift_unknownObjectWeakInit();
  *&v3[*(*v3 + 112)] = 0;
  (*(v6 + 24))(v7, v6);
  (*(*(v7 - 8) + 16))(&v3[*(*v3 + 104)], a1, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = AssociatedConformanceWitness[7](AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = &v3[*(*v3 + 128)];
  *v16 = v15;
  v16[1] = v17;
  v3[*(*v3 + 136)] = AssociatedConformanceWitness[11](AssociatedTypeWitness, AssociatedConformanceWitness) & 1;
  [AssociatedConformanceWitness[4](AssociatedTypeWitness AssociatedConformanceWitness)];
  swift_unknownObjectRelease();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCast())
  {
    v18 = v37;
  }

  else
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_100770AC8);
    v20 = v35;
    (*(v9 + 16))(v35, v13, AssociatedTypeWitness);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = v9;
      v24 = v20;
      v25 = v23;
      v26 = swift_slowAlloc();
      v34 = a2;
      v27 = v26;
      *v25 = 138412290;
      v28 = AssociatedConformanceWitness[5](AssociatedTypeWitness, AssociatedConformanceWitness);
      v29 = v33;
      (*(v33 + 8))(v24, AssociatedTypeWitness);
      *(v25 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to set initialListStorage by copying REMListStorage {listID: %@}", v25, 0xCu);
      sub_1000079B4(v27, &unk_10076DF80, &qword_10062F730);
      a2 = v34;

      v18 = 0;
      v9 = v29;
    }

    else
    {

      (*(v9 + 8))(v20, AssociatedTypeWitness);
      v18 = 0;
    }
  }

  *&v3[*(*v3 + 120)] = v18;
  v30 = NSUndoManager.observeChanges<A>(target:handler:)();

  (*(v9 + 8))(v13, AssociatedTypeWitness);
  *&v3[*(*v3 + 112)] = v30;

  return v3;
}

uint64_t sub_10017BC60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10017BCCC()
{
  result = qword_100770B78;
  if (!qword_100770B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100770B78);
  }

  return result;
}

uint64_t sub_10017BEB8(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t assignWithCopy for TTRListDetailSavedObjectID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for TTRListDetailSavedObjectID(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListDetailSavedObjectID(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for TTRListDetailSavedObjectID(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10017C0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v10 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v28 - v15;
  v17 = sub_1000AA040(a1, a2);
  result = 0;
  if (v17)
  {
    v19 = REMRemindersListDataView.SortingStyle.labelTextForSortingStyle()();
    object = v19._object;
    countAndFlagsBits = v19._countAndFlagsBits;
    LOBYTE(v29) = REMRemindersListDataView.SortingStyle.isEqualIgnoringDirection(_:)() & 1;
    v29 = v29;
    v28[1] = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v32 = v6;
    v20 = *(v11 + 16);
    v20(v16, a3, v10);
    v20(v13, a1, v10);
    v21 = *(v11 + 80);
    v22 = (v21 + 16) & ~v21;
    v23 = (v12 + v21 + v22) & ~v21;
    v24 = swift_allocObject();
    v25 = *(v11 + 32);
    v25(v24 + v22, v16, v10);
    v25(v24 + v23, v13, v10);
    v26 = (v24 + ((v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    v27 = v34;
    *v26 = v33;
    v26[1] = v27;

    result = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  *v35 = result;
  return result;
}

uint64_t sub_10017C34C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v19 = a3;
  v7 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *a6, v11, v13);
  sub_10017D308(&qword_100770EA8, &protocol conformance descriptor for REMRemindersListDataView.SortingDirection);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    REMRemindersListDataView.SortingStyle.flipped()();
    v19(v10);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

UIMenu sub_10017C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100058000(&qword_100770EB0, &unk_100633550);
  v4 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = 4 * v6;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100633540;
  v8 = *(v5 + 104);
  v8(v18 + v7, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v4);
  v9 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v10 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v11 = *(*(v10 - 8) + 104);
  v11(v18 + v7 + v6, v9, v10);
  v8(v18 + v7 + v6, enum case for REMRemindersListDataView.SortingStyle.displayDate(_:), v4);
  v11(v18 + v7 + 2 * v6, v9, v10);
  v8(v18 + v7 + 2 * v6, enum case for REMRemindersListDataView.SortingStyle.creationDate(_:), v4);
  v6 *= 3;
  v11(v18 + v7 + v6, enum case for REMRemindersListDataView.SortingDirection.descending(_:), v10);
  v8(v18 + v7 + v6, enum case for REMRemindersListDataView.SortingStyle.priority(_:), v4);
  v11(v18 + v7 + v17, v9, v10);
  v8(v18 + v7 + v17, enum case for REMRemindersListDataView.SortingStyle.title(_:), v4);
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v12 = sub_10007D894(sub_10017D34C, v23, v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v12 >> 62)
  {
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
    preferredElementSize = v12;
  }

  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v28.value.super.isa = 0;
  v28.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v28, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v16);
}

Class sub_10017C8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = a3;
  v102 = a4;
  v6 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v104 = *(v6 - 8);
  v7 = *(v104 + 64);
  __chkstk_darwin(v6);
  v100 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = v73 - v9;
  __chkstk_darwin(v10);
  v12 = v73 - v11;
  v13 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v97 = *(v13 - 8);
  v14 = *(v97 + 64);
  __chkstk_darwin(v13);
  v15 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v73 - v17;
  v19 = a2;
  if (sub_1000AA040(a2, a1))
  {
    v20 = v104;
    v98 = *(v104 + 16);
    v99 = v104 + 16;
    v98(v12, a2, v6);
    v22 = *(v20 + 88);
    v21 = v20 + 88;
    v94 = v22;
    v23 = v22(v12, v6);
    if (v23 == enum case for REMRemindersListDataView.SortingStyle.displayDate(_:) || v23 == enum case for REMRemindersListDataView.SortingStyle.priority(_:) || v23 == enum case for REMRemindersListDataView.SortingStyle.creationDate(_:) || v23 == enum case for REMRemindersListDataView.SortingStyle.title(_:))
    {
      v27 = *(v104 + 96);
      v95 = v6;
      v85 = enum case for REMRemindersListDataView.SortingStyle.priority(_:);
      v27(v12, v6);
      v28 = v97;
      v29 = *(v97 + 32);
      v90 = v97 + 32;
      v91 = v29;
      v86 = v18;
      v29(v18, v12, v13);
      v84 = v21;
      LODWORD(v87) = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
      v30 = *(v28 + 104);
      v89 = v28 + 104;
      v30(v15);
      v82 = v30;
      v31 = v103;
      v96 = v19;
      REMRemindersListDataView.SortingStyle.cloned(withSortingDirection:)();
      v32 = *(v28 + 8);
      v88 = v28 + 8;
      v32(v15, v13);
      v75 = v32;
      v33 = REMRemindersListDataView.SortingStyle.labelTextForSortingDirection()();
      countAndFlagsBits = v33._countAndFlagsBits;
      object = v33._object;
      v34 = *(v104 + 8);
      v92 = v104 + 8;
      v93 = v34;
      v34(v31, v95);
      (v30)(v15, v87, v13);
      v83 = sub_10017D308(&qword_100770EA0, &protocol conformance descriptor for REMRemindersListDataView.SortingDirection);
      v35 = v86;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v32(v15, v13);
      v73[1] = v106 == v105;
      v87 = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
      (*(v28 + 16))(v15, v35, v13);
      v36 = v103;
      v37 = v95;
      v98(v103, v96, v95);
      v38 = *(v28 + 80);
      v39 = (v38 + 16) & ~v38;
      v78 = v39;
      v40 = (v14 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = v104;
      v42 = *(v104 + 80);
      v43 = v40;
      v79 = v40;
      v77 = v38 | v42;
      v44 = (v42 + v40 + 16) & ~v42;
      v74 = v44;
      v45 = swift_allocObject();
      v91(v45 + v39, v15, v13);
      v46 = (v45 + v43);
      v47 = v102;
      *v46 = v101;
      v46[1] = v47;
      v48 = *(v41 + 32);
      v104 = v41 + 32;
      v76 = v48;
      v48(v45 + v44, v36, v37);

      v97 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v49 = enum case for REMRemindersListDataView.SortingDirection.descending(_:);
      v50 = v82;
      (v82)(v15, enum case for REMRemindersListDataView.SortingDirection.descending(_:), v13);
      v51 = v36;
      REMRemindersListDataView.SortingStyle.cloned(withSortingDirection:)();
      v52 = v75;
      v75(v15, v13);
      v53 = REMRemindersListDataView.SortingStyle.labelTextForSortingDirection()();
      countAndFlagsBits = v53._countAndFlagsBits;
      object = v53._object;
      v54 = v51;
      v55 = v95;
      v93(v54, v95);
      v50(v15, v49, v13);
      v56 = v86;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v52(v15, v13);
      v89 = v106 == v105;
      v57 = v91;
      v91(v15, v56, v13);
      v58 = v103;
      v98(v103, v96, v55);
      v59 = v74;
      v60 = swift_allocObject();
      v57(v60 + v78, v15, v13);
      v61 = (v60 + v79);
      v62 = v102;
      *v61 = v101;
      v61[1] = v62;
      v76(v60 + v59, v58, v55);

      v63 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v64 = v100;
      v98(v100, v96, v55);
      v65 = v94(v64, v55);
      if (v65 == v85)
      {
        v66 = v63;
      }

      else
      {
        v66 = v97;
      }

      if (v65 == v85)
      {
        v63 = v97;
      }

      v93(v64, v55);
      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_10062D410;
      *(v67 + 32) = v66;
      *(v67 + 40) = v63;
      if (!(v67 >> 62))
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }

    if (v23 != enum case for REMRemindersListDataView.SortingStyle.default(_:) && v23 != enum case for REMRemindersListDataView.SortingStyle.manual(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }
  }

  v67 = _swiftEmptyArrayStorage;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
LABEL_26:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
    v68 = v67;
    goto LABEL_27;
  }

LABEL_19:
  sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);

  v68 = _bridgeCocoaArray<A>(_:)();

LABEL_27:

  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  v107.value.super.isa = 0;
  v107.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v70, 0, v107, 1, 0xFFFFFFFFFFFFFFFFLL, v68, v72).super.super.isa;
}

uint64_t sub_10017D21C(uint64_t a1, unsigned int *a2)
{
  v5 = *(type metadata accessor for REMRemindersListDataView.SortingDirection() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for REMRemindersListDataView.SortingStyle() - 8);
  return sub_10017C34C(a1, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), v2 + ((v7 + *(v8 + 80) + 16) & ~*(v8 + 80)), a2);
}

uint64_t sub_10017D308(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for REMRemindersListDataView.SortingDirection();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10017D36C()
{
  v1 = *(type metadata accessor for REMRemindersListDataView.SortingStyle() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v3 + v2 + ((v2 + 16) & ~v2)) & ~v2;
  v5 = *(v0 + ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  result = REMRemindersListDataView.SortingStyle.isEqualIgnoringDirection(_:)();
  if ((result & 1) == 0)
  {
    return v5(v0 + v4);
  }

  return result;
}

uint64_t sub_10017D430()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100770EB8);
  v1 = sub_100003E30(v0, qword_100770EB8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRHashtagLabelInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRHashtagLabelInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10017D654;
}

void sub_10017D654(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *TTRHashtagLabelInteractor.init(store:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TTRDataViewMonitorEnvironmentInfo();
  __chkstk_darwin(v5 - 8);
  *&v2[OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_dataViewMonitor] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_store] = a1;
  type metadata accessor for TTRHashtagLabelMonitorableDataView();
  *(swift_allocObject() + 16) = a1;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, "init");
  sub_1000A96A0();
  v8 = v7;

  static OS_dispatch_queue.main.getter();
  type metadata accessor for RDIDispatchQueue();
  static RDIDispatchQueue.storeQueue.getter();
  static RDIDispatchQueue.storeUserInteractiveQueue.getter();
  TTRDataViewMonitorEnvironmentInfo.init()();
  sub_100058000(&qword_100770EE8, &qword_100633560);
  swift_allocObject();
  sub_10017E154(&qword_100770EF0, type metadata accessor for TTRHashtagLabelInteractor, &protocol conformance descriptor for TTRHashtagLabelInteractor);
  *&v8[OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_dataViewMonitor] = TTRDataViewMonitor.init<A>(initialData:dataView:delegate:queue:backgroundQueue:userInteractiveBackgroundQueue:environmentInfo:)();

  TTRDataViewMonitor.resume(userInteractive:)(1);

  return v8;
}

uint64_t TTRHashtagLabelMonitorableDataView.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_10017DA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return TTRDataViewMonitorDelegate.monitorWillFetch(_:)(a1, ObjectType, a3);
}

uint64_t TTRHashtagLabelMonitorableDataView.fetchData(from:userInteractive:)(__n128 a1)
{
  v1 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMHashtagLabelDataView();
  (*(v2 + 104))(v4, enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:), v1);
  v5 = static REMHashtagLabelDataView.fetchAllHashtagLabels(store:sortingStyle:includeDetails:)();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t TTRHashtagLabelMonitorableDataView.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10017DC78(uint64_t *a1, __n128 a2)
{
  v4 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMHashtagLabelDataView();
  (*(v5 + 104))(v7, enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:), v4);
  v8 = static REMHashtagLabelDataView.fetchAllHashtagLabels(store:sortingStyle:includeDetails:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = v8;
  result = (*(v5 + 8))(v7, v4);
  *a1 = v10;
  return result;
}

uint64_t sub_10017DDC8(uint64_t a1)
{
  v2 = v1;
  if (qword_100766FB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100770EB8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "TTRAccountListsMonitorableDataView did fetch data", v7, 2u);
  }

  v8 = v2 + OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v2, a1, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10017DF1C(uint64_t a1)
{
  if (qword_100766FB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100770EB8);
  swift_errorRetain();
  v3 = v1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v5 = 136315394;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100004060(v8, v9, &v13);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    *(v5 + 14) = v3;
    *v6 = v3;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "TTRAccountListsMonitorableDataView did hit error {error: %s, interactor: %@}", v5, 0x16u);
    sub_100094164(v6);

    sub_100004758(v7);
  }

  else
  {
  }
}

uint64_t sub_10017E154(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10017E1FC(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v4 - 8);
  sub_10017EBBC(a2, &v10 - v5);
  dispatch thunk of TTRIStaticTableViewStandardCell.icon.setter();
  v6 = TTRIDetailListTableViewCell.listNameLabel.getter();
  type metadata accessor for TTRIListDetailEditFiltersCellStateAdaptor.State(0);
  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];

  v8 = String._bridgeToObjectiveC()();
  [a1 setAccessibilityLabel:v8];

  v9 = String._bridgeToObjectiveC()();
  [a1 setAccessibilityValue:v9];
}

uint64_t sub_10017E32C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10017E394(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t *sub_10017E44C(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v7 = type metadata accessor for TTRITableCellContentPrototypeCellView();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  return a1;
}

uint64_t sub_10017E520(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t sub_10017E598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t sub_10017E620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];

  return a1;
}

uint64_t sub_10017E6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_10017E738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  *v8 = v11;
  v8[1] = v10;

  return a1;
}

uint64_t sub_10017E88C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100058000(&qword_1007710B0, &qword_1006337B8);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v15 = *(v14 + 56);
  sub_10017EBBC(a1, &v25 - v12);
  sub_10017EBBC(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10017EBBC(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_10017EC2C(&qword_1007710B8, &type metadata accessor for TTRIStaticTableViewStandardCell.Icon, &protocol conformance descriptor for TTRIStaticTableViewStandardCell.Icon);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000079B4(v13, &qword_100776880, &qword_1006337B0);
      if (v18)
      {
        goto LABEL_9;
      }

LABEL_7:
      v17 = 0;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1000079B4(v13, &qword_1007710B0, &qword_1006337B8);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000079B4(v13, &qword_100776880, &qword_1006337B0);
LABEL_9:
  v20 = *(type metadata accessor for TTRIListDetailEditFiltersCellStateAdaptor.State(0) + 20);
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if (v21 == *v23 && v22 == v23[1])
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

uint64_t sub_10017EBBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100776880, &qword_1006337B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017EC2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_10017EC7C(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v7 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_100058000(&qword_100776880, &qword_1006337B0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
  }

  return a1;
}

uint64_t sub_10017EE04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 8))(a1, v3);
  }
}

char *sub_10017EED4(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100776880, &qword_1006337B0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v12;

  return a1;
}

char *sub_10017F010(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = sub_100058000(&qword_100776880, &qword_1006337B0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  *(v13 + 1) = *(v14 + 1);

  return a1;
}

char *sub_10017F1C4(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100776880, &qword_1006337B0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *sub_10017F2F4(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = sub_100058000(&qword_100776880, &qword_1006337B0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = &a1[v12];
  v14 = &a2[v12];
  v16 = *v14;
  v15 = *(v14 + 1);
  *v13 = v16;
  *(v13 + 1) = v15;

  return a1;
}

uint64_t sub_10017F4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_10017F570(uint64_t a1)
{
  if (!qword_100771128)
  {
    type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100771128);
    }
  }
}

char *sub_10017F5C8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_tableDataController] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___deferredUpdateAction] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___nukeCell] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___populateCell] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___animationSlowModeCell] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___pencilAutoCommitDelayCell] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___suggestedAttributeModelCells] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___accountsListsCollectionViewEnabledCell] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___collectionViewEnabledCell] = 1;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___dragAndDropDebugOverlayEnabledCell] = 0;
  sub_100182CE0(&qword_100771270, &unk_100633844);
  static TTRTypedController.currentArgument.getter();
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_eventHandler] = v7[1];
  v7[0].receiver = v2;
  v7[0].super_class = ObjectType;
  swift_unknownObjectRetain();
  v5 = [(objc_super *)v7 initWithCoder:a1];
  swift_unknownObjectRelease();

  if (v5)
  {
    *(*&v5[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_eventHandler] + 24) = &off_100718F10;
    swift_unknownObjectWeakAssign();
  }

  return v5;
}

void sub_10017F760()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v73 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for TTRTableViewAnimations();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v86 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v5 - 8);
  v88 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v71 - v8;
  __chkstk_darwin(v9);
  v11 = &v71 - v10;
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v71 - v14;
  v96.receiver = v0;
  v96.super_class = ObjectType;
  objc_msgSendSuper2(&v96, "viewDidLoad", v13);
  v89 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_tableView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = Strong;
  UITableView.fixUpBackgroundColorLoadedFromNibIfNeeded_workaroundRdar108920406()();

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006337D0;
  TTRITableSectionHeaderFooter.init(title:height:)();
  v18 = type metadata accessor for TTRITableSectionHeaderFooter();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v19 + 56;
  v20(v15, 0, 1, v18);
  v20(v11, 1, 1, v18);
  v80 = sub_100058000(&qword_1007768B0, &qword_1006338A0);
  v22 = swift_allocObject();
  v79 = xmmword_10062D3F0;
  *(v22 + 16) = xmmword_10062D3F0;
  v23 = sub_10018086C(&OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___nukeCell, sub_100180FFC);
  v24 = sub_10000E188(&qword_1007711F8, &qword_100776850, &qword_1006338A8, &protocol conformance descriptor for TTRITableCell<A>);
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  v25 = sub_10018086C(&OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___populateCell, sub_10018123C);
  v26 = sub_10000E188(&qword_100771200, &qword_100771208, &qword_1006338B0, &protocol conformance descriptor for TTRITableCell<A>);
  *(v22 + 48) = v25;
  *(v22 + 56) = v26;
  type metadata accessor for TTRITableSection();
  swift_allocObject();
  v27 = TTRITableSection.init(header:footer:items:)();
  v28 = inited;
  *(inited + 32) = v27;
  v74 = v28 + 32;
  TTRITableSectionHeaderFooter.init(title:height:)();
  v76 = v20;
  v91 = v21;
  v20(v15, 0, 1, v18);
  v20(v11, 1, 1, v18);
  v75 = sub_100058000(&qword_100771210, &qword_1006338B8);
  v29 = swift_allocObject();
  v90 = xmmword_10062D400;
  *(v29 + 16) = xmmword_10062D400;
  v30 = sub_100180390();
  v31 = sub_10000E188(&qword_100771218, &qword_100771220, &qword_1006338C0, &protocol conformance descriptor for TTRITableCell<A>);
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  v93 = v29;
  v32 = sub_100058000(&qword_100771228, &qword_1006338C8);
  v33 = sub_100058000(&qword_100771230, &qword_1006338D0);
  sub_10000E188(&qword_100771238, &qword_100771228, &qword_1006338C8, &protocol conformance descriptor for [A]);
  v78 = v32;
  v77 = v33;
  Sequence.removingNils<A>()();

  swift_allocObject();
  v81 = v15;
  v83 = v11;
  *(inited + 40) = TTRITableSection.init(header:footer:items:)();
  v34 = v87;
  TTRITableSectionHeaderFooter.init(title:height:)();
  v35 = v76;
  v76(v34, 0, 1, v18);
  v82 = v18;
  v36 = v35;
  v35(v88, 1, 1, v18);
  v37 = swift_allocObject();
  *(v37 + 16) = v79;
  v38 = sub_1001803F4();
  v39 = v38;
  if (v38)
  {
    v38 = sub_10000E188(&qword_100777BD0, &qword_100776900, &unk_1006377A0, &protocol conformance descriptor for TTRITableCell<A>);
  }

  *(v37 + 32) = v39;
  *(v37 + 40) = v38;
  v40 = sub_100180460();
  *&v79 = &protocol conformance descriptor for TTRITableCell<A>;
  v41 = sub_10000E188(&qword_100777BD0, &qword_100776900, &unk_1006377A0, &protocol conformance descriptor for TTRITableCell<A>);
  v75 = v41;
  *(v37 + 48) = v40;
  *(v37 + 56) = v41;
  v93 = v37;
  Sequence.removingNils<A>()();

  swift_allocObject();
  *(inited + 48) = TTRITableSection.init(header:footer:items:)();
  v42 = v81;
  TTRITableSectionHeaderFooter.init(title:height:)();
  v43 = v82;
  v44 = v36;
  v36(v42, 0, 1, v82);
  v45 = v83;
  v44(v83, 1, 1, v43);
  v46 = swift_allocObject();
  *(v46 + 16) = v90;
  v47 = sub_100180660();
  v48 = v75;
  *(v46 + 32) = v47;
  *(v46 + 40) = v48;
  swift_allocObject();
  *(inited + 56) = TTRITableSection.init(header:footer:items:)();
  TTRITableSectionHeaderFooter.init(title:height:)();
  v44(v42, 0, 1, v43);
  v44(v45, 1, 1, v43);
  v49 = swift_allocObject();
  *(v49 + 16) = v90;
  v50 = sub_10018086C(&OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___pencilAutoCommitDelayCell, sub_100181990);
  v51 = sub_10000E188(&qword_100771240, &qword_1007711E8, &qword_100633888, v79);
  *(v49 + 32) = v50;
  *(v49 + 40) = v51;
  swift_allocObject();
  v52 = inited;
  *(v52 + 64) = TTRITableSection.init(header:footer:items:)();
  TTRITableSectionHeaderFooter.init(title:height:)();
  v44(v42, 0, 1, v43);
  v44(v45, 1, 1, v43);
  v53 = sub_1001808D4();
  sub_1003E07FC(v53);

  swift_allocObject();
  *(v52 + 72) = TTRITableSection.init(header:footer:items:)();
  v54 = swift_unknownObjectWeakLoadStrong();
  if (!v54)
  {
    goto LABEL_12;
  }

  v55 = v54;
  v94 = sub_100003540(0, &qword_100771B60, UITableView_ptr);
  v95 = &protocol witness table for UITableView;
  v93 = v55;
  sub_1003E09F0(v52);
  (*(v84 + 104))(v86, enum case for TTRTableViewAnimations.middle(_:), v85);
  v56 = objc_allocWithZone(type metadata accessor for TTRITableDataController());
  v57 = TTRITableDataController.init(tableView:sections:rowInsertionAnimationType:collapseSectionIfItemsAreHidden:)();
  v58 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_tableDataController;
  v59 = *&v1[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_tableDataController];
  *&v1[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_tableDataController] = v57;
  v60 = v57;

  v61 = swift_unknownObjectWeakLoadStrong();
  if (!v61)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v62 = v61;
  [v61 setDataSource:v60];

  v63 = swift_unknownObjectWeakLoadStrong();
  if (!v63)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v64 = v63;
  swift_setDeallocating();
  swift_arrayDestroy();
  [v64 setDelegate:v60];

  v65 = *&v1[v58];
  if (v65)
  {
    v66 = v71;
    *v71 = 1;
    v67 = v72;
    v68 = v73;
    v69 = (*(v72 + 104))(v66, enum case for TTRITableDataController.BatchUpdatesApplication.incremental(_:), v73);
    __chkstk_darwin(v69);
    *(&v71 - 2) = v1;
    v70 = v65;
    TTRITableDataController.performBatchUpdates(by:updates:)();

    (*(v67 + 8))(v66, v68);
  }

  else
  {
  }
}

uint64_t sub_100180390()
{
  v1 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___accountsListsCollectionViewEnabledCell;
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___accountsListsCollectionViewEnabledCell))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___accountsListsCollectionViewEnabledCell);
  }

  else
  {
    v2 = sub_10018203C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001803F4()
{
  v1 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___collectionViewEnabledCell;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___collectionViewEnabledCell);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1001824C4();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_100182C28(v4);
  }

  sub_100182C38(v2);
  return v3;
}

uint64_t sub_100180460()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TTRIToggleCellContentState();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___dragAndDropDebugOverlayEnabledCell;
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___dragAndDropDebugOverlayEnabledCell))
  {
    v7 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___dragAndDropDebugOverlayEnabledCell);
  }

  else
  {
    type metadata accessor for TTRIDebugDropIndicatorView();
    static TTRIDebugDropIndicatorView.isEnabled.getter();
    v8 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    TTRIToggleCellContentState.init(icon:title:subtitle:ttriAccessibilitySubtitle:isOn:isSelectable:isControlHidden:isSeparatorHidden:ttriAccessibilitySimulatesExpandAndCollapse:ttriAccessibilityIsInSimulatedExpandedState:)();
    v9 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent());
    TTRIToggleCellContent.init(state:)();
    TTRIToggleCellContent.stateChangeBlock.setter();
    sub_100058000(&qword_100776900, &unk_1006377A0);
    swift_allocObject();
    v7 = TTRITableCell.init(_:)();
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100180660()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for TTRIToggleCellContentState();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___animationSlowModeCell;
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___animationSlowModeCell))
  {
    v7 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___animationSlowModeCell);
  }

  else
  {
    v8 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    type metadata accessor for TTRUserDefaults();
    v9 = static TTRUserDefaults.appUserDefaults.getter();
    TTRUserDefaults.animationSlowModeEnabled.getter();

    TTRIToggleCellContentState.init(icon:title:subtitle:ttriAccessibilitySubtitle:isOn:isSelectable:isControlHidden:isSeparatorHidden:ttriAccessibilitySimulatesExpandAndCollapse:ttriAccessibilityIsInSimulatedExpandedState:)();
    v10 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent());
    TTRIToggleCellContent.init(state:)();
    TTRIToggleCellContent.stateChangeBlock.setter();
    sub_100058000(&qword_100776900, &unk_1006377A0);
    swift_allocObject();
    v7 = TTRITableCell.init(_:)();
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t sub_10018086C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

void *sub_1001808D4()
{
  v1 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___suggestedAttributeModelCells;
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___suggestedAttributeModelCells))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___suggestedAttributeModelCells);
  }

  else
  {
    v2 = sub_100181BFC();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001809C8()
{
  v1 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___deferredUpdateAction;
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___deferredUpdateAction))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___deferredUpdateAction);
  }

  else
  {
    v3 = v0;
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.main.getter();
    type metadata accessor for TTRDeferredAction();
    swift_allocObject();
    v2 = TTRDeferredAction.init(queue:)();
    sub_100182CE0(&qword_1007711F0, &unk_10063380C);
    swift_unknownObjectRetain();
    TTRDeferredAction.delegate.setter();
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_100180AA8(uint64_t a1)
{
  v1 = qword_10077E920;
  sub_10018086C(&OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___pencilAutoCommitDelayCell, sub_100181990);
  v2 = TTRITableCell.content.getter();

  v3 = TTRITableCellContent.state.modify();
  TTRISliderCellContentState.value.setter();
  v3(v7, 0);

  v4 = TTRITableCell.content.getter();

  sub_100058000(&unk_100786CB0, &qword_100636EF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D400;
  *(v5 + 56) = &type metadata for Double;
  *(v5 + 64) = &protocol witness table for Double;
  *(v5 + 32) = v1;
  String.init(format:_:)();
  v6 = TTRITableCellContent.state.modify();
  TTRISliderCellContentState.subtitle.setter();
  v6(v7, 0);
}

void sub_100180C24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = *(*(a1 + 32) + 32);
  if (a3 <= 1u)
  {
    if (a3)
    {
      v4 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(v3 + 16)];
      static TTRDebugExampleInserts.makeSomeExampleInserts(saveRequest:accounts:lists:reminders:subtasks:)();
      sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
      v5 = static OS_dispatch_queue.main.getter();
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      v16 = sub_100182D50;
      v17 = v10;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v7 = &unk_1007190F8;
    }

    else
    {
      v4 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(v3 + 16)];
      static TTRDebugExampleInserts.makeSomeExampleInserts(saveRequest:accounts:lists:reminders:subtasks:)();
      sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
      v5 = static OS_dispatch_queue.main.getter();
      v8 = swift_allocObject();
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      v16 = sub_100182D50;
      v17 = v8;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v7 = &unk_100719148;
    }
  }

  else if (a3 == 2)
  {
    v4 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(v3 + 16)];
    static TTRDebugExampleInserts.makeSomeExampleInserts(saveRequest:accounts:lists:reminders:subtasks:)();
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v5 = static OS_dispatch_queue.main.getter();
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    v16 = sub_100182D50;
    v17 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v7 = &unk_1007190A8;
  }

  else
  {
    if (a3 != 3)
    {
      sub_1003E0238(2, 10, 0, 0);
      return;
    }

    v4 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(v3 + 16)];
    static TTRDebugExampleInserts.makeSomeExampleInserts(saveRequest:accounts:lists:reminders:subtasks:)();
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v5 = static OS_dispatch_queue.main.getter();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    v16 = sub_100182CD0;
    v17 = v6;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v7 = &unk_100719058;
  }

  v14 = sub_100009DE4;
  v15 = v7;
  v11 = _Block_copy(&v12);

  [v4 saveWithQueue:v5 completion:{v11, v12, v13}];
  _Block_release(v11);
}

uint64_t sub_100180FFC(uint64_t a1)
{
  v1 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for TTRIActionCellStateAdaptor.State();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  TTRIActionCellStateAdaptor.State.init(title:titleIsTinted:detailText:icon:)();
  v6 = objc_allocWithZone(type metadata accessor for TTRIActionCellContent());
  v7 = TTRIActionCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v7;

  dispatch thunk of TTRIGenericCellContent.action.setter();

  sub_100058000(&qword_100776850, &qword_1006338A8);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void sub_1001811C4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(*(*(*(Strong + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_eventHandler) + 32) + 32) + 16) nukeDatabase];
  }
}

uint64_t sub_10018123C(uint64_t a1)
{
  v1 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for TTRIMenuCellContentState();
  __chkstk_darwin(v4 - 8);
  v26 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 1;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = 2;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = 3;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = 4;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v15 = v26;
  if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
  {
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);

    v16 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
    v16 = v15;
  }

  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v17, 0, v27, 0, 0xFFFFFFFFFFFFFFFFLL, v16, v24).super.super.isa;
  v19 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  v20 = isa;
  TTRIMenuCellContentState.init(icon:title:titleIsTinted:menu:)();
  v21 = objc_allocWithZone(type metadata accessor for TTRIMenuCellContent());
  TTRIMenuCellContent.init(state:)();
  sub_100058000(&qword_100771208, &qword_1006338B0);
  swift_allocObject();
  v22 = TTRITableCell.init(_:)();

  return v22;
}

void *sub_1001818AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_unknownObjectRetain();
    sub_100180C24(v6, v7, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10018192C()
{
  type metadata accessor for TTRUserDefaults();
  v0 = static TTRUserDefaults.appUserDefaults.getter();
  TTRIToggleCellContentState.isOn.getter();
  TTRUserDefaults.animationSlowModeEnabled.setter();
}

uint64_t sub_100181990(uint64_t a1)
{
  v1 = sub_100058000(&qword_1007711E0, &qword_100633880);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TTRISliderCellContentState();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for TTRIStaticTableViewStandardCell.RoundRectIcon();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  TTRISliderCellContentState.init(icon:title:subtitle:minimumValue:maximumValue:value:)();
  v6 = objc_allocWithZone(type metadata accessor for TTRISliderCellContent());
  TTRISliderCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRISliderCellContent.stateChangeBlock.setter();

  sub_100058000(&qword_1007711E8, &qword_100633888);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

double sub_100181B68(uint64_t a1, uint64_t a2)
{
  TTRISliderCellContentState.value.getter();
  *&qword_10077E920 = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1001809C8();
    v6._object = 0x80000001006755C0;
    v6._countAndFlagsBits = 0xD000000000000018;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v6);
  }

  return result;
}

void *sub_100181BFC()
{
  v0 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v0 - 8);
  v2 = v28 - v1;
  v3 = type metadata accessor for TTRIToggleCellContentState();
  __chkstk_darwin(v3 - 8);
  v39 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  v11 = static REMSuggestedAttributeOutput.Pipeline.allCases.getter();
  v12 = *(v11 + 16);
  if (v12)
  {
    v40 = _swiftEmptyArrayStorage;
    v37 = v7;
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = type metadata accessor for REMSuggestedAttributesHarvester();
    v15 = *(v6 + 16);
    v14 = v6 + 16;
    v35 = v15;
    v36 = v13;
    v16 = *(v14 + 64);
    v17 = v11 + ((v16 + 32) & ~v16);
    v33 = *(v14 + 56);
    v34 = v16;
    v32 = (v16 + 16) & ~v16;
    v30 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = (v14 + 16);
    v38 = v14;
    v28[1] = v11;
    v29 = (v14 - 8);
    do
    {
      v18 = v35;
      v35(v10, v17, v5);
      static REMSuggestedAttributesHarvester.modelPipelineValueFromUserDefaults(for:)();
      v19 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
      (*(*(v19 - 8) + 56))(v2, 1, 1, v19);
      REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
      TTRIToggleCellContentState.init(icon:title:subtitle:ttriAccessibilitySubtitle:isOn:isSelectable:isControlHidden:isSeparatorHidden:ttriAccessibilitySimulatesExpandAndCollapse:ttriAccessibilityIsInSimulatedExpandedState:)();
      v20 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent());
      TTRIToggleCellContent.init(state:)();
      v21 = v10;
      v22 = v5;
      v23 = v30;
      v18(v30, v21, v22);
      v24 = v32;
      v25 = swift_allocObject();
      v26 = v23;
      v5 = v22;
      v10 = v21;
      (*v31)(v25 + v24, v26, v5);
      TTRIToggleCellContent.stateChangeBlock.setter();
      sub_100058000(&qword_100776900, &unk_1006377A0);
      swift_allocObject();
      TTRITableCell.init(_:)();
      (*v29)(v21, v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 += v33;
      --v12;
    }

    while (v12);

    return v40;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_100181FF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for REMSuggestedAttributesHarvester();
  TTRIToggleCellContentState.isOn.getter();
  return static REMSuggestedAttributesHarvester.setModelPipelineValueInUserDefaults(for:value:)();
}

uint64_t sub_10018203C()
{
  v0 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v0 - 8);
  v17 = &v16 - v1;
  v2 = sub_100058000(&qword_100771248, &qword_1006338D8);
  __chkstk_darwin(v2 - 8);
  v18 = &v16 - v3;
  sub_100058000(&qword_100771250, &qword_1006338E0);
  v4 = sub_100058000(&qword_100771258, &unk_1006338E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006337E0;
  v9 = v8 + v7;
  v22 = 2;
  sub_100058000(&qword_10076B298, &qword_10062F7E0);
  sub_100182C48();
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v10 = enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:);
  v11 = *(v5 + 104);
  v11(v9, enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:), v4);
  v11(v9 + v6, enum case for TTRIOptionMenuCellContentState.Option.separator<A>(_:), v4);
  v21 = 0;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v11(v9 + 2 * v6, v10, v4);
  v20 = 1;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v11(v9 + 3 * v6, v10, v4);
  type metadata accessor for TTRUserDefaults();
  v12 = static TTRUserDefaults.appUserDefaults.getter();
  LOBYTE(v9) = TTRUserDefaults.legacyTableViewBasedAccountsListsEnabled.getter();

  v13 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
  v19 = v9;
  TTRIOptionMenuCellContentState.init(icon:title:ttriAccessibilitySubtitle:menuOptions:selectedItem:isSeparatorHidden:)();
  v14 = objc_allocWithZone(sub_100058000(&qword_100771268, &qword_1006338F8));
  TTRIOptionMenuCellContent.init(state:menuImageProvider:)();
  TTRIOptionMenuCellContent.stateChangeBlock.setter();
  sub_100058000(&qword_100771220, &qword_1006338C0);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void sub_100182450()
{
  type metadata accessor for TTRUserDefaults();
  v0 = static TTRUserDefaults.appUserDefaults.getter();
  sub_100058000(&qword_100771248, &qword_1006338D8);
  TTRIOptionMenuCellContentState.selectedItem.getter();
  TTRUserDefaults.legacyTableViewBasedAccountsListsEnabled.setter();
}

uint64_t sub_1001824C4()
{
  v0 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14[-v1];
  v3 = type metadata accessor for TTRIToggleCellContentState();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for REMFeatureFlags();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 104))(v8, enum case for REMFeatureFlags.collectionView(_:), v4, v6);
  v9 = REMFeatureFlags.isEnabled.getter();
  (*(v5 + 8))(v8, v4);
  result = 0;
  if (v9)
  {
    type metadata accessor for TTRUserDefaults();
    v11 = static TTRUserDefaults.appUserDefaults.getter();
    TTRUserDefaults.observablePropertyForLegacyTableViewBasedRemindersListEnabled.getter();

    TTRUserDefaultsObservableProperty.value.getter();

    v12 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
    TTRIToggleCellContentState.init(icon:title:subtitle:ttriAccessibilitySubtitle:isOn:isSelectable:isControlHidden:isSeparatorHidden:ttriAccessibilitySimulatesExpandAndCollapse:ttriAccessibilityIsInSimulatedExpandedState:)();
    v13 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent());
    TTRIToggleCellContent.init(state:)();
    TTRIToggleCellContent.stateChangeBlock.setter();
    sub_100058000(&qword_100776900, &unk_1006377A0);
    swift_allocObject();
    return TTRITableCell.init(_:)();
  }

  return result;
}

double sub_100182778()
{
  type metadata accessor for TTRUserDefaults();
  v0 = static TTRUserDefaults.appUserDefaults.getter();
  TTRUserDefaults.observablePropertyForLegacyTableViewBasedRemindersListEnabled.getter();

  TTRIToggleCellContentState.isOn.getter();
  TTRUserDefaultsObservableProperty.value.setter();

  return result;
}

uint64_t sub_1001827EC()
{
  type metadata accessor for TTRIDebugDropIndicatorView();
  TTRIToggleCellContentState.isOn.getter();
  return static TTRIDebugDropIndicatorView.isEnabled.setter();
}

void sub_1001829CC()
{
  sub_10000C36C((*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_eventHandler) + 48), *(*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_eventHandler) + 72));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100182A48()
{
  v1 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_tableDataController);
  if (v6)
  {
    *v5 = 1;
    v7 = (*(v2 + 104))(v5, enum case for TTRITableDataController.BatchUpdatesApplication.incremental(_:), v1, v3);
    __chkstk_darwin(v7);
    *(&v9 - 2) = v0;
    v8 = v6;
    TTRITableDataController.performBatchUpdates(by:updates:)();

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_100182BB8(uint64_t a1)
{
  v3 = *(type metadata accessor for REMSuggestedAttributeOutput.Pipeline() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100181FF0(a1, v4);
}

double sub_100182C28(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_100182C38(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_100182C48()
{
  result = qword_100771260;
  if (!qword_100771260)
  {
    sub_10005D20C(&qword_10076B298, &qword_10062F7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100771260);
  }

  return result;
}

uint64_t sub_100182CE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRIDebugMenuViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100182D54(uint64_t *a1, id *a2, uint64_t a3)
{
  v100 = a3;
  v107 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v110 = *(v4 - 1);
  v111 = v4;
  __chkstk_darwin(v4);
  v91 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v103 = &v89 - v7;
  __chkstk_darwin(v8);
  v90 = &v89 - v9;
  __chkstk_darwin(v10);
  v101 = &v89 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v99 = (&v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v97);
  v109 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for TTRListType.SortingCapability();
  v98 = *(v102 - 8);
  __chkstk_darwin(v102);
  v96 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for TTRRemindersListDefaultListType();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v95 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v17 - 8);
  v94 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v19 - 8);
  v108 = (&v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsStyle();
  v21 = *(v105 - 8);
  __chkstk_darwin(v105);
  v93 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v89 - v33;
  (*(v24 + 104))(v26, enum case for TTRListType.PredefinedSmartListType.scheduled(_:), v23, v32);
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  (*(v24 + 8))(v26, v23);
  v92 = *a2;
  (*(v21 + 104))(v93, enum case for REMRemindersListDataView.ScheduledByDateBucketsStyle.regular(_:), v105);
  v105 = v28;
  v35 = *(v28 + 16);
  v35(v30, v34, v27);
  type metadata accessor for TTRShowScheduledByDateBucketsDataModelSource();
  swift_allocObject();
  v36 = v92;
  v37 = TTRShowScheduledByDateBucketsDataModelSource.init(store:style:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v38 = v108;
  sub_1001749C4(a2, v108);
  v39 = v94;
  static REMSuggestedAttributesElector.ExcludedAttributes.dueDates.getter();
  v40 = v95;
  (*(v104 + 13))(v95, enum case for TTRRemindersListDefaultListType.any(_:), v106);
  v41 = sub_10007786C(v38, v39, v40, v118);
  v42 = v118[0];
  v43 = v96;
  v104 = v34;
  v106 = v27;
  (v35)(v96, v34, v27, v41);
  v44 = v43;
  (v98)[13](v43, enum case for TTRListType.SortingCapability.notSupported(_:), v102);
  type metadata accessor for TTRShowScheduledViewModelSource(0);
  v45 = swift_allocObject();

  v46 = v42;
  v102 = v37;
  v98 = v46;
  v47 = sub_100183B18(v37, v46, v44, 0, v45);
  v48 = v108;
  sub_1001749C4(a2, v108);
  sub_10010BCAC(v118, v115);
  v49 = sub_100183FE0(&qword_1007712A0, type metadata accessor for TTRShowScheduledViewModelSource, &unk_100646FD0);
  v50 = v109;
  sub_1001749C4(v48, v109);
  v51 = v97;
  sub_10010BCAC(v115, v50 + *(v97 + 28));
  v52 = (v50 + *(v51 + 32));
  *v52 = v47;
  v52[1] = v49;
  v53 = v115[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v117, v114, &qword_100769608, &unk_1006302F0);
  v55 = *(v114[5] + 8);
  *(v54 + 32) = v114[4];
  *(v54 + 40) = v55;
  sub_10000794C(&v116, v112, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v56 = v53;
  swift_unknownObjectRelease();
  *(v54 + 48) = v113;
  sub_100004758(v112);
  sub_100004758(v114);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v57 = swift_allocObject();
  v58 = sub_1003A8508(v56, v47, v54, v57);

  sub_10010BD08(v115);
  sub_100174ECC(v48, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v59 = *(v51 + 36);
  v96 = v58;
  *(v50 + v59) = v58;
  v60 = v99;
  sub_100078BBC(v99);
  v97 = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v61 = swift_allocObject();
  v62 = v100;
  swift_unknownObjectRetain();
  v63 = sub_1003A56E4(v60, v62, v61);
  v64 = *(v63 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v64 + 112))(ObjectType, v64))
  {
    swift_getObjectType();
    v66 = v90;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v67 = v101;
    (*(v110 + 32))(v101, v66, v111);
  }

  else
  {
    v67 = v101;
    (*(v110 + 104))(v101, enum case for TTRRemindersListLayout.list(_:), v111);
  }

  v68 = sub_1003A4A1C(v67, v63);
  v100 = v69;
  v71 = v70;
  v73 = v72;
  (*(v110 + 8))(v67, v111);
  v101 = swift_getObjectType();
  *(v63 + 24) = *(v73 + 8);
  v108 = v71;
  swift_unknownObjectWeakAssign();
  v74 = *(v63 + 144);
  v75 = swift_getObjectType();
  v76 = *(v74 + 112);

  if (v76(v75, v74))
  {
    swift_getObjectType();
    v77 = v91;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v78 = v103;
    (*(v110 + 32))(v103, v77, v111);
  }

  else
  {
    v78 = v103;
    (*(v110 + 104))(v103, enum case for TTRRemindersListLayout.list(_:), v111);
  }

  v79 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v80 = v68;
  v111 = v80;
  v81 = sub_1003A7DE0(v63, v80, v100, v78, 0, 1, 0, v79);

  v82 = *(v73 + 32);
  v83 = v81;
  v82(v81, &off_100723D78, v101, v73);
  sub_100183FE0(&qword_100770960, type metadata accessor for TTRIRemindersCommonPresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_100183FE0(&qword_1007712A8, type metadata accessor for TTRShowScheduledViewModelSource, &unk_100638C28);

  v84 = v83;
  dispatch thunk of TTRShowScheduledByDateBucketsDataModelSource.delegate.setter();

  sub_10056FEB0(v85, &off_10071A9B0);

  *(v96 + 3) = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v119, v115, &qword_100769600, &qword_10062E0A0);
  v86 = v115[4];
  swift_unknownObjectRelease();
  *(v86 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v115);
  sub_10000794C(&v120, v115, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_100183FE0(&qword_100770970, type metadata accessor for TTRIRemindersCommonPresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v115);
  v87 = v107;
  v107[3] = v97;
  v87[4] = &off_1007191F0;

  swift_unknownObjectRelease();
  *v87 = v63;
  (*(v105 + 8))(v104, v106);
  sub_100174ECC(v109, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v118);
  return v84;
}

id TTRIShowScheduledAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowScheduledAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowScheduledAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowScheduledAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100183B18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5)
{
  v42 = a3;
  v39 = a1;
  v40 = a2;
  v44 = *a5;
  v45 = type metadata accessor for REMAnalyticsEvent();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for TTRListType.SortingCapability();
  v41 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_cachedEmptyListMessaging;
  v18 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v19 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  (*(*(v19 - 8) + 104))(&a5[v17], v18, v19);
  v20 = &a5[OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_completedRemindersCount];
  *v20 = 0;
  v20[8] = 1;
  v21 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_defaultSectionID;
  v22 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  (*(*(v22 - 8) + 56))(&a5[v21], 1, 1, v22);
  *&a5[OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_sectionHeadersNeedingPlaceholderReminderItems] = &_swiftEmptySetSingleton;
  *&a5[OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_tappedSectionHeaders] = &_swiftEmptySetSingleton;
  *&a5[OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_lastSectionsSnapshot] = 0;
  a5[OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_hasDefaultNewReminderButton] = a4;
  (*(v14 + 16))(v16, a3, v13);
  v23 = sub_1003A649C(v39, v40, v16, a5);

  sub_1002CC038(v12);
  v24 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
  sub_10056F540(v12);
  sub_10010BE6C(v12);
  type metadata accessor for TTRUserDefaults();
  v25 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v26 = sub_100058000(&qword_100770980, &unk_1006339B0);
  v27 = &v9[*(v26 + 48)];
  v28 = &v9[*(v26 + 80)];
  v29 = enum case for REMRemindersOpenUserOperation.SmartListType.scheduled(_:);
  v30 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v30 - 8) + 104))(v9, v29, v30);
  v31 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v32 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v32 - 8) + 104))(v9, v31, v32);
  *v27 = TTRUserDefaults.activitySessionId.getter();
  v27[1] = v33;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v28 = _typeName(_:qualified:)();
  v28[1] = v34;
  v35 = v43;
  v36 = v45;
  (*(v43 + 104))(v9, enum case for REMAnalyticsEvent.openListUserOperation(_:), v45);
  REMAnalyticsManager.post(event:)();

  (*(v14 + 8))(v42, v41);
  (*(v35 + 8))(v9, v36);
  return v23;
}

uint64_t sub_100183FE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100184028()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007712B0);
  v1 = sub_100003E30(v0, qword_1007712B0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001840F0()
{
  v1 = v0;
  if (qword_100766FC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_1007712B0);
  v3 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Learn More done", 15, 2, v3);

  sub_10000C36C((v0 + 48), *(v0 + 72));
  if (qword_100766EE0 != -1)
  {
    swift_once();
  }

  sub_100003E30(v2, qword_10076AC70);
  sub_1003F99F4(0x6F4D206E7261654CLL, 0xEA00000000006572);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v1, &off_100719200, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100184290()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_100004758((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TTRApplicationRunProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[6])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRApplicationRunProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1001844D8(uint64_t a1)
{
  v2 = v1;
  sub_10008E6A8(a1, &v12);
  if (!v13)
  {
    sub_1001848DC(&v12);
    [*(v1 + OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentHostingView) setHostedView:0];
    v6 = (v1 + OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentView);
    v7 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentView);
    *v6 = 0;
    v6[1] = 0;

    return;
  }

  sub_100005FD0(&v12, v14);
  v3 = v1 + OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentView;
  v4 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentView);
  if (!v4)
  {
    goto LABEL_7;
  }

  swift_getObjectType();
  v5 = v4;
  if ((dispatch thunk of UIContentView.supports(_:)() & 1) == 0)
  {

LABEL_7:
    sub_10000C36C(v14, v14[3]);
    v8 = dispatch thunk of UIContentConfiguration.makeContentView()();
    v10 = v9;
    [*(v2 + OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentHostingView) setHostedView:v8];
    v11 = *v3;
    *v3 = v8;
    *(v3 + 8) = v10;

    goto LABEL_8;
  }

  sub_10000B0D8(v14, &v12);
  dispatch thunk of UIContentView.configuration.setter();

LABEL_8:
  sub_100004758(v14);
}

void sub_10018462C(void *a1, void *a2, void *a3)
{
  [a1 setDirectionalLayoutMargins:{8.0, 16.0, 8.0, 16.0}];
  [a1 setLayoutMarginsRelativeArrangement:0];
  [a1 setDebugBoundingBoxesEnabled:0];
  [a1 setEdgesPreservingSuperviewLayoutMargins:10];
  [a1 setHorizontalAlignment:0];
  [a1 setVerticalAlignment:0];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10062D410;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  sub_10014C480();
  v7 = a2;
  v8 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setArrangedSubviews:isa];
}

uint64_t sub_1001848DC(uint64_t a1)
{
  v2 = sub_100058000(&qword_100768868, &unk_10062D7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100184944()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentConfiguration];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v3 = &v0[OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentView];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = [objc_allocWithZone(UIView) init];
  v5 = static REMFeatureFlags.isSolariumEnabled.getter();
  v6 = objc_opt_self();
  v7 = &selRef_clearColor;
  if ((v5 & 1) == 0)
  {
    v7 = &selRef_systemBackgroundColor;
  }

  v8 = [v6 *v7];
  [v4 setBackgroundColor:v8];

  *&v0[OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_backgroundView] = v4;
  type metadata accessor for TTRIConstraintBasedLayoutHostingView();
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = v4;
  v11 = [v9 init];
  *&v0[OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentHostingView] = v11;
  v27.receiver = v0;
  v27.super_class = ObjectType;
  v12 = v11;
  v13 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D420;
  *(v14 + 32) = v12;
  v15 = objc_allocWithZone(NUIContainerBoxView);
  sub_10014C480();
  v16 = v13;
  v17 = v12;
  v18 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v15 initWithArrangedSubviews:isa];

  [v20 setPreservesSuperviewLayoutMargins:1];
  [v20 setLayoutMarginsRelativeArrangement:1];
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v10;
  v21[4] = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100184CA0;
  *(v22 + 24) = v21;
  v26[4] = sub_100026410;
  v26[5] = v22;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 1107296256;
  v26[2] = sub_100026440;
  v26[3] = &unk_100719318;
  v23 = _Block_copy(v26);
  v24 = v10;
  v25 = v20;

  [v18 performBatchUpdates:v23];

  _Block_release(v23);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }
}

uint64_t TTRITipContentConfiguration.init(tip:assetColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AnyTip();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for TTRITipContentConfiguration(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

id TTRITipContentConfiguration.makeContentView()()
{
  v1 = type metadata accessor for TTRITipContentConfiguration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100184E88(v0, v3);
  v4 = type metadata accessor for TipContentView(0);
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_tipView] = 0;
  sub_100184E88(v3, &v5[OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_internalConfiguration]);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setPreservesSuperviewLayoutMargins:1];
  sub_100185050(v3);

  sub_100185444(v3);
  sub_1001862CC(&qword_100771468, type metadata accessor for TipContentView, &unk_100633B68);
  return v6;
}

uint64_t sub_100184E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITipContentConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100184F18(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100184E88(v1, v3);
  v4 = type metadata accessor for TipContentView(0);
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_tipView] = 0;
  sub_100184E88(v3, &v5[OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_internalConfiguration]);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setPreservesSuperviewLayoutMargins:1];
  sub_100185050(v3);

  sub_100185444(v3);
  sub_1001862CC(&qword_100771468, type metadata accessor for TipContentView, &unk_100633B68);
  return v6;
}

void sub_100185050(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AnyTip();
  v33 = v4;
  v34 = sub_1001862CC(&qword_100771540, &type metadata accessor for AnyTip, &protocol conformance descriptor for AnyTip);
  v5 = sub_1000317B8(v32);
  (*(*(v4 - 8) + 16))(v5, a1, v4);
  v6 = objc_allocWithZone(type metadata accessor for TipUIView());
  v7 = TipUIView.init(_:arrowEdge:actionHandler:)();
  v8 = *(a1 + *(type metadata accessor for TTRITipContentConfiguration(0) + 20));
  if (v8)
  {
    v9 = &protocol witness table for Color;
    v10 = &type metadata for Color;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v32[1] = 0;
    v32[2] = 0;
  }

  v32[0] = v8;
  v33 = v10;
  v34 = v9;

  TipUIView.imageStyle.setter();
  [v7 setIsAccessibilityElement:0];
  v11 = v7;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:v11];
  v12 = objc_opt_self();
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D450;
  v14 = [v2 layoutMarginsGuide];
  v15 = [v14 leadingAnchor];

  v16 = [v11 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v13 + 32) = v17;
  v18 = [v2 layoutMarginsGuide];
  v19 = [v18 topAnchor];

  v20 = [v11 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v13 + 40) = v21;
  v22 = [v2 layoutMarginsGuide];
  v23 = [v22 trailingAnchor];

  v24 = [v11 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v13 + 48) = v25;
  v26 = [v2 layoutMarginsGuide];
  v27 = [v26 bottomAnchor];

  v28 = [v11 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v13 + 56) = v29;
  sub_100177300();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:isa];

  v31 = *&v2[OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_tipView];
  *&v2[OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_tipView] = v11;
}

uint64_t sub_100185444(uint64_t a1)
{
  v2 = type metadata accessor for TTRITipContentConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRITipContentConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for AnyTip();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

double destroy for TTRITipContentConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnyTip();
  (*(*(v3 - 8) + 8))(a1, v3);

  return result;
}

uint64_t initializeWithCopy for TTRITipContentConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyTip();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t assignWithCopy for TTRITipContentConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyTip();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t initializeWithTake for TTRITipContentConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyTip();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for TTRITipContentConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyTip();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t sub_100185810(uint64_t a1)
{
  result = type metadata accessor for AnyTip();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10018590C(uint64_t a1)
{
  v3 = type metadata accessor for TTRITipContentConfiguration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v17[-v7];
  __chkstk_darwin(v9);
  v11 = &v17[-v10];
  v12 = OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_internalConfiguration;
  swift_beginAccess();
  sub_100184E88(v1 + v12, v11);
  swift_beginAccess();
  sub_1001863E0(a1, v1 + v12);
  swift_endAccess();
  sub_100184E88(v1 + v12, v8);
  v13 = sub_100186444(v11, v8);
  sub_100185444(v8);
  if (v13)
  {
    sub_100184E88(v1 + v12, v5);
    v14 = *(v1 + OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_tipView);
    if (v14)
    {
      [v14 removeFromSuperview];
    }

    sub_100185050(v5);
    sub_100185444(a1);
    v15 = v5;
  }

  else
  {
    v15 = a1;
  }

  sub_100185444(v15);
  return sub_100185444(v11);
}

uint64_t sub_100185B1C(uint64_t a1)
{
  result = type metadata accessor for TTRITipContentConfiguration(319);
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

uint64_t sub_100185BB8(void *a1)
{
  v2 = sub_100058000(&qword_100771538, &unk_100633BB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-v3 - 8];
  v5 = type metadata accessor for TTRITipContentConfiguration(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v11 = &v16[-v10 - 8];
  sub_10000B0D8(a1, v16);
  sub_100058000(&qword_10077A650, &qword_10063DD30);
  v12 = swift_dynamicCast();
  v13 = *(v6 + 56);
  if (v12)
  {
    v13(v4, 0, 1, v5);
    sub_10018637C(v4, v11);
    sub_100184E88(v11, v8);
    sub_10018590C(v8);
    sub_100004758(a1);
    return sub_100185444(v11);
  }

  else
  {
    v13(v4, 1, 1, v5);
    sub_100004758(a1);
    return sub_100186314(v4);
  }
}

void (*sub_100185D98(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  v5 = *(*(sub_100058000(&qword_100771538, &unk_100633BB0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[19] = v6;
  v7 = type metadata accessor for TTRITipContentConfiguration(0);
  v4[20] = v7;
  v8 = *(v7 - 8);
  v4[21] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[22] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[22] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v4[23] = v10;
  v11 = OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_internalConfiguration;
  swift_beginAccess();
  v4[3] = v7;
  v4[4] = sub_1001862CC(&qword_1007759D0, type metadata accessor for TTRITipContentConfiguration, &protocol conformance descriptor for TTRITipContentConfiguration);
  v12 = sub_1000317B8(v4);
  sub_100184E88(v1 + v11, v12);
  return sub_100185F48;
}

void sub_100185F48(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[22];
    v3 = v2[23];
    v5 = v2[19];
    sub_10000B0D8(*a1, (v2 + 5));
    sub_100185BB8(v2 + 5);
    sub_100004758(v2);
  }

  else
  {
    v6 = v2[21];
    sub_10000B0D8(*a1, (v2 + 10));
    sub_100058000(&qword_10077A650, &qword_10063DD30);
    v7 = swift_dynamicCast();
    v8 = *(v6 + 56);
    if (v7)
    {
      v10 = v2[22];
      v9 = v2[23];
      v11 = v2[19];
      v8(v11, 0, 1, v2[20]);
      sub_10018637C(v11, v9);
      sub_100184E88(v9, v10);
      sub_10018590C(v10);
      sub_100185444(v9);
      sub_100004758(v2);
    }

    else
    {
      v12 = v2[19];
      v8(v12, 1, 1, v2[20]);
      sub_100004758(v2);
      sub_100186314(v12);
    }

    v4 = v2[22];
    v3 = v2[23];
    v5 = v2[19];
  }

  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_1001860A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_internalConfiguration;
  swift_beginAccess();
  a1[3] = type metadata accessor for TTRITipContentConfiguration(0);
  a1[4] = sub_1001862CC(&qword_1007759D0, type metadata accessor for TTRITipContentConfiguration, &protocol conformance descriptor for TTRITipContentConfiguration);
  v4 = sub_1000317B8(a1);
  return sub_100184E88(v1 + v3, v4);
}

uint64_t (*sub_10018614C(uint64_t **a1))()
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
  v2[4] = sub_100185D98(v2);
  return sub_1001861BC;
}

void sub_1001861BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100186204(uint64_t a1)
{
  v2 = type metadata accessor for TTRITipContentConfiguration(0);
  __chkstk_darwin(v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000B0D8(a1, v8);
  sub_100058000(&qword_10077A650, &qword_10063DD30);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = result;
    sub_100185444(v4);
    return v6;
  }

  return result;
}

uint64_t sub_1001862CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100186314(uint64_t a1)
{
  v2 = sub_100058000(&qword_100771538, &unk_100633BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018637C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITipContentConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001863E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITipContentConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100186444(uint64_t a1, uint64_t a2)
{
  v4 = AnyTip.id.getter();
  v6 = v5;
  if (v4 == AnyTip.id.getter() && v6 == v7)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      v14 = 1;
      return v14 & 1;
    }
  }

  v9 = *(type metadata accessor for TTRITipContentConfiguration(0) + 20);
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  v12 = (v10 | v11) == 0;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {

    v12 = static Color.== infix(_:_:)();
  }

  v14 = v12 ^ 1;
  return v14 & 1;
}

void sub_1001865F0(Swift::OpaquePointer a1)
{
  swift_getObjectType();

  TTRAccessibilityReminderAutoCompleteAnnouncing.ttrAccessibilityAnnounceAutocompletionSuggestionChanges(_:)(a1);
}

void sub_100186640(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_100058000(&qword_100771588, &qword_1006388F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_autoCompleteStack;
  v11 = *(v1 + OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_autoCompleteStack);
  if (v11)
  {
    sub_100186D64(a1, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100186DD4(v5);
      v13 = *(v1 + v10);
      if (!v13)
      {
        return;
      }

      goto LABEL_9;
    }

    sub_100186E3C(v5, v9, v12);
    v15 = &v9[*(v6 + 24)];
    v16 = *(v15 + 1);
    if (v16)
    {
      v17._rawValue = *&v9[*(v6 + 28)];
      if (*(v17._rawValue + 2))
      {
        v18 = *v15;
        v19 = v11;
        __chkstk_darwin([v19 setHidden:0]);
        *(&v23 - 6) = v17._rawValue;
        *(&v23 - 5) = v19;
        *(&v23 - 4) = v18;
        *(&v23 - 3) = v16;
        *(&v23 - 2) = v1;
        TTRIRemindersListCellAutoCompleteSuggestionsStackView.performSubviewUpdates(block:)();
        sub_100186D10();
        TTRAccessibilityReminderAutoCompleteAnnouncing.ttrAccessibilityAnnounceAutocompletionSuggestionChanges(_:)(v17);

        sub_100186EA0(v9, v20);
        return;
      }
    }

    sub_100186EA0(v9, v14);
    v13 = *(v1 + v10);
    if (v13)
    {
LABEL_9:
      v21 = v13;
      TTRIRemindersListCellAutoCompleteSuggestionsStackView.setExclusiveHighlighted(on:)();

      v22 = *(v1 + v10);
      if (v22)
      {
        [v22 setHidden:1];
      }
    }
  }
}

void sub_1001868B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v45 = a4;
  v47 = a1;
  v6 = sub_100058000(&qword_100771590, &unk_100633C30);
  __chkstk_darwin(v6 - 8);
  v43 = &v30 - v7;
  v42 = type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView.RowConfiguration();
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAnyReminderTextEditingSuggestion();
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v41 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  type metadata accessor for TTRAutoCompleteReminderProvider();
  v15 = static TTRAutoCompleteReminderProvider.resultLimit.getter();
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = v15;
    if (v15)
    {
      v17 = 0;
      v38 = a5 + OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_presenter;
      v39 = v15;
      v18 = v46 + 16;
      v19 = *(v47 + 16);
      v34 = (v8 + 16);
      v35 = v19 - 1;
      v32 = (v8 + 8);
      v33 = (v8 + 56);
      v31 = (v46 + 8);
      v36 = v19;
      v37 = v10;
      do
      {
        if (v17 >= v19)
        {
          TTRIRemindersListCellAutoCompleteSuggestionsStackView.makeHidden(at:)(v17);
        }

        else
        {
          v20 = *(v46 + 16);
          v20(v14, v47 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v17, v10);
          type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row();
          v21 = TTRIRemindersListCellAutoCompleteSuggestionsStackView.cachedView<A>(ofType:at:)();
          if (v21)
          {
            v22 = v21;
            v23 = v21;
          }

          else
          {
            v23 = TTRIRemindersListCellAutoCompleteSuggestionsStackView.createRow()();
            v22 = 0;
          }

          v20(v41, v14, v10);
          v24 = v22;

          v25 = v18;
          v26 = v40;
          TTRIRemindersListCellAutoCompleteSuggestionsStackView.RowConfiguration.init(suggestion:query:isLast:leftInset:)();
          v28 = v42;
          v27 = v43;
          (*v34)(v43, v26, v42);
          (*v33)(v27, 0, 1, v28);
          TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.configuration.setter();
          swift_unknownObjectRetain();
          TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.suggestionDelegate.setter();
          TTRIRemindersListCellAutoCompleteSuggestionsStackView.makeVisible(_:at:alignment:beforeSpacing:bottomMarginIfLast:)();

          v10 = v37;
          v29 = v26;
          v18 = v25;
          (*v32)(v29, v28);
          (*v31)(v14, v10);
          v16 = v39;
          v19 = v36;
        }

        ++v17;
      }

      while (v16 != v17);
    }
  }
}

void sub_100186CA4(void *a1)
{
  swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_autoCompleteStack);
  *(v1 + OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_autoCompleteStack) = a1;

  sub_100186D10();
  v4 = a1;

  TTRAccessibilityReminderAutoCompleteAnnouncing.ttrAccessibilitySetUpAccessibilityStatusChangeObservationForAutoCompleteAnnouncements()();
}

unint64_t sub_100186D10()
{
  result = qword_100771580;
  if (!qword_100771580)
  {
    type metadata accessor for TTRIReminderCellAutoCompleteViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100771580);
  }

  return result;
}

uint64_t sub_100186D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100771588, &qword_1006388F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100186DD4(uint64_t a1)
{
  v2 = sub_100058000(&qword_100771588, &qword_1006388F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100186E3C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100186EA0(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001870F4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  swift_beginAccess();
  return sub_1001885B8(v5 + v3, a1);
}

uint64_t sub_1001871BC(uint64_t a1)
{
  v3 = sub_100058000(&qword_1007708D8, &qword_100633D90);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  swift_beginAccess();
  sub_1001885B8(v1 + v6, v5);
  v7 = sub_100188628(v5, a1);
  sub_1000079B4(v5, &qword_1007708D8, &qword_100633D90);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_100188918(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1000079B4(a1, &qword_1007708D8, &qword_100633D90);
}

uint64_t sub_1001873A0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  swift_beginAccess();
  sub_100188918(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100187458@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  swift_beginAccess();
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100187550(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_10001F0E0(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier, &protocol conformance descriptor for REMHashtagLabelSpecifier);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1001877D0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  swift_beginAccess();
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100187880(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void sub_100187948(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_100187AA8()
{
  swift_getKeyPath();
  sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

uint64_t sub_100187B54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels;
  if (!*(v1 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1 || (sub_1001268C0(*(v1 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels), a1) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_100187CB4()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription, &qword_1007708D8, &qword_100633D90);
  v1 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel(uint64_t a1)
{
  result = qword_100771620;
  if (!qword_100771620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100187E14(uint64_t a1)
{
  sub_100187F2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for REMHashtagLabelSpecifier();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100187F2C(uint64_t a1)
{
  if (!qword_100771630)
  {
    type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100771630);
    }
  }
}

uint64_t sub_100187FB8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels) = *(v0 + 24);
}

uint64_t sub_100187FFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_1007708D8, &qword_100633D90);
  __chkstk_darwin(v4 - 8);
  v44 = v38 - v5;
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = v38 - v10;
  __chkstk_darwin(v11);
  v40 = v38 - v12;
  v13 = sub_100058000(&unk_100792BA0, &unk_100632FA0);
  __chkstk_darwin(v13 - 8);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v38 - v17;
  v45 = a1;
  TTRRemindersListViewModel.HashtagsState.selectorState.getter();
  v19 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v21(v18, 1, v19);
  v41 = v8;
  if (v22 == 1)
  {
    sub_1000079B4(v18, &unk_100792BA0, &unk_100632FA0);
    v23 = 0;
  }

  else
  {
    v23 = TTRRemindersListViewModel.HashtagLabelSelectorState.labels.getter();
    (*(v20 + 8))(v18, v19);
  }

  swift_getKeyPath();
  v24 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel___observationRegistrar;
  v46 = v2;
  sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);

  v38[1] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v2 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels);

  if (v25)
  {
    if (v23)
    {
      v26 = sub_1001268C0(v25, v23);

      if (v26)
      {

        goto LABEL_12;
      }
    }

    else
    {
    }

    goto LABEL_11;
  }

  if (v23)
  {
LABEL_11:

    sub_100187B54(v23);
  }

LABEL_12:
  TTRRemindersListViewModel.HashtagsState.selectorState.getter();
  if (v21(v15, 1, v19) == 1)
  {
    sub_1000079B4(v15, &unk_100792BA0, &unk_100632FA0);
  }

  else
  {
    v27 = v39;
    TTRRemindersListViewModel.HashtagLabelSelectorState.selection.getter();
    (*(v20 + 8))(v15, v19);
    v29 = v42;
    v28 = v43;
    v30 = v40;
    (*(v42 + 32))(v40, v27, v43);
    swift_getKeyPath();
    v46 = v2;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
    swift_beginAccess();
    v32 = *(v29 + 16);
    v33 = v41;
    v32(v41, v2 + v31, v28);

    sub_10001F0E0(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier, &protocol conformance descriptor for REMHashtagLabelSpecifier);
    LOBYTE(v31) = dispatch thunk of static Equatable.== infix(_:_:)();
    v34 = *(v29 + 8);
    v34(v33, v28);
    if ((v31 & 1) == 0)
    {
      v32(v33, v30, v28);

      sub_100187550(v33);
    }

    v34(v30, v28);
  }

  KeyPath = swift_getKeyPath();
  v36 = v44;
  TTRRemindersListViewModel.HashtagsState.selectionDescription.getter();
  sub_1003F28C0(KeyPath, v36);

  return sub_1000079B4(v36, &qword_1007708D8, &qword_100633D90);
}

uint64_t sub_1001885B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007708D8, &qword_100633D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100188628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_1007708D8, &qword_100633D90);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100058000(&unk_100781FB0, &qword_100633DC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1001885B8(a1, &v21 - v12);
  sub_1001885B8(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1001885B8(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_10001F0E0(&unk_1007716E0, &type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription, &protocol conformance descriptor for TTRRemindersListViewModel.HashtagSelectionDescription);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000079B4(v13, &qword_1007708D8, &qword_100633D90);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000079B4(v13, &unk_100781FB0, &qword_100633DC0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000079B4(v13, &qword_1007708D8, &qword_100633D90);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100188918(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007708D8, &qword_100633D90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100188A78@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a2;
  v29 = a1;
  v26 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  __chkstk_darwin(v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23, v19);
  if ((*(v14 + 48))(v21, 1, v13) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v14 + 32))(v17, v21, v13);
  v29(v17, v11);
  result = (*(v14 + 8))(v17, v13);
  if (v6)
  {
    return (*(v26 + 32))(v27, v11, a3);
  }

  return result;
}

double sub_100188D20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_100188D74@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v66 = a1;
  v67 = a3;
  v65 = a2;
  v68 = a4;
  v5 = *v4;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v4) + 0x50);
  v8 = type metadata accessor for Optional();
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v61 - v12;
  inserted = type metadata accessor for TTRITreeViewTableAdapter.InsertDestination(0, v7, *((v6 & v5) + 0x58), v14);
  __chkstk_darwin(inserted);
  v17 = &v61 - v16;
  v18 = *(v7 - 8);
  __chkstk_darwin(v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v61 - v23;
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  __chkstk_darwin(v28);
  v62 = &v61 - v29;
  sub_10019CF8C(v66, v65 & 1, v67, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v41 = v18;
    v32 = *(v18 + 32);
    v32(v27, v17, v7);
    sub_100190AA0(v27, v13, v42, v43, v44);
    if ((*(v41 + 48))(v13, 1, v7) == 1)
    {
      (*(v63 + 8))(v13, v64);
    }

    else
    {
      v32(v24, v13, v7);
      v49 = sub_100190C84(v27, v46, v47, v48);
      v50 = *(v41 + 8);
      if ((v51 & 1) == 0)
      {
        v34 = v49;
        v50(v27, v7);
        v45 = v62;
        v32(v62, v24, v7);
        goto LABEL_21;
      }

      v50(v24, v7);
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100003E30(v52, qword_1007716F0);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Missing parent/childIndex", v55, 2u);
    }

    (*(v41 + 8))(v27, v7);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_19:
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v68, 1, 1, TupleTypeMetadata2);
  }

  v31 = v18;
  v32 = *(v18 + 32);
  v33 = v21;
  v32(v21, v17, v7);
  (*(v31 + 16))(v10, v21, v7);
  (*(v31 + 56))(v10, 0, 1, v7);
  v34 = sub_100191678(v10);
  v36 = v35;
  (*(v63 + 8))(v10, v64);
  if (v36)
  {
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
      _os_log_impl(&_mh_execute_header, v38, v39, "Missing parent child count", v40, 2u);
    }

    (*(v31 + 8))(v33, v7);
    goto LABEL_19;
  }

  v45 = v62;
  v32(v62, v33, v7);
LABEL_21:
  v58 = swift_getTupleTypeMetadata2();
  v59 = *(v58 + 48);
  v60 = v68;
  v32(v68, v45, v7);
  *&v60[v59] = v34;
  return (*(*(v58 - 8) + 56))(v60, 0, 1, v58);
}

unint64_t sub_100189404(unint64_t result, int64_t a2, uint64_t (*a3)(unint64_t), uint64_t (*a4)(int64_t, int64_t, unint64_t, uint64_t), void (*a5)(unint64_t, unint64_t, uint64_t), void (*a6)(uint64_t, int64_t))
{
  v7 = result;
  if (result == a2)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      if (*(*v6 + 16) > result)
      {
        v8 = *(*v6 + 16 * result + 32);

        return v8;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = a3(result);
  if (*(*v6 + 16) < a2)
  {
    goto LABEL_14;
  }

  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  v14 = v13;

  result = a4(a2, a2, v8, v14);
  if (v7 < a2)
  {
    v15 = v7 + 1;
    v16 = -1;
    v17 = a2;
LABEL_11:
    a5(v15, v17, v16);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D420;
    *(inited + 32) = v8;

    a6(inited, a2);
    swift_setDeallocating();
    swift_arrayDestroy();

    a6(v19, a2);

    return v8;
  }

  if (v7 > a2)
  {
    v17 = v7 - 1;
    v16 = 1;
    v15 = a2;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1001895B0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007716F0);
  v1 = sub_100003E30(v0, qword_1007716F0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100189678(void *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + *a1);
  if (v3)
  {

    if ((a2(v5) & 1) == 0)
    {

      return 0;
    }
  }

  return v3;
}

id sub_1001896C8(uint64_t *a1, void *a2, const char **a3)
{
  v5 = *a1;
  if (*(v3 + *a1))
  {
    swift_unknownObjectWeakAssign();
    v6 = *(v3 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + qword_100771730);
  v8 = *a3;

  return [v7 v8];
}

uint64_t sub_100189738(uint64_t (*a1)(void))
{
  if (!sub_100189678(&qword_100771758, sub_100128A14))
  {
    return 0;
  }

  v2 = a1();

  return v2;
}

uint64_t sub_1001897A4(uint64_t a1, int a2)
{
  v15 = a2;
  v3 = *v2;
  v4 = swift_isaMask;
  v5 = (v2 + qword_100771778);
  swift_beginAccess();
  v6 = v5[1];
  v7 = *((v4 & v3) + 0x50);
  v8 = *((v4 & v3) + 0x58);

  *v5 = sub_100489B50(v9, v7, v8);
  v5[1] = v6;

  if (v15)
  {
    *(v2 + qword_100771788) = 0;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();

    Set.subtracting(_:)();
    v10 = Set.subtracting(_:)();
    Set.subtracting(_:)();
    v11 = Set.subtracting(_:)();

    __chkstk_darwin(v12);
    v14[2] = v10;
    v14[3] = v2;
    v14[4] = v11;
    v17 = sub_1001A6134;
    v18 = v14;
    sub_10018B568(sub_1001A84C0, v16, 0, 0, 0, 0);

    *(v2 + qword_100771788) = 1;
  }

  else
  {
  }

  return result;
}

double sub_100189A00()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;

  TTRAnyTreeViewCollapsedStatesPersisting.collapsedTreeViewItemIDsChangePublisher.getter();

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = *((v3 & v2) + 0x50);
  v5[3] = *((v3 & v2) + 0x58);
  v5[4] = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  type metadata accessor for AnyPublisher();
  swift_getWitnessTable();
  v6 = Publisher.sink(receiveCompletion:receiveValue:)();

  *(v1 + qword_100771790) = v6;

  return result;
}

id sub_100189C20(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *v2;
  v8 = swift_isaMask;
  *&v3[qword_100771708] = 0;
  *&v3[qword_100771710] = 0;
  swift_unknownObjectWeakInit();
  v9 = qword_100771720;
  v10 = *((v8 & v7) + 0x58);
  v11 = *((v8 & v7) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TTRAnyTreeViewCollapsedStatesPersisting();
  type metadata accessor for TTRTreeViewCollapsedStatesInMemoryPersistence();
  v22 = TTRTreeViewCollapsedStatesInMemoryPersistence.__allocating_init()();
  swift_getWitnessTable();
  *&v3[v9] = TTRAnyTreeViewCollapsedStatesPersisting.__allocating_init<A>(base:)();
  *&v3[qword_100771740] = 0;
  *&v3[qword_100771748] = 0;
  *&v3[qword_100771750] = 0;
  *&v3[qword_100771758] = 0;
  v12 = &v3[qword_100771760];
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = 0;
  v12[24] = 0;
  v3[qword_100771768] = 0;
  *&v3[qword_100771770] = 0;
  v13 = &v3[qword_100771778];
  *v13 = sub_100489A84(v11, v10);
  v13[1] = v14;
  v15 = qword_100771780;
  *&v3[v15] = sub_100421968(v11, v10);
  v3[qword_100771788] = 1;
  *&v3[qword_100771790] = 0;
  v16 = qword_100771798;
  type metadata accessor for TTRListContentsPrefetchExtender();
  swift_allocObject();
  *&v3[v16] = TTRListContentsPrefetchExtender.init(prefetchCountNeeded:)();
  swift_unknownObjectUnownedInit();
  *&v3[qword_100771730] = a2;
  v17 = &v3[qword_100771738];
  v17[3] = sub_100003540(0, &qword_100771B60, UITableView_ptr);
  v17[4] = &off_1007320F8;
  *v17 = a2;
  v21.receiver = v3;
  v21.super_class = ObjectType;
  v18 = a2;
  v19 = objc_msgSendSuper2(&v21, "init");
  sub_100189A00();

  return v19;
}

id sub_100189F08()
{
  sub_1001A0254(0);
  *(v0 + qword_100771748) = 0;

  sub_1001A0318(0, &qword_100771750, sub_1002DF79C, &selRef_setPrefetchDataSource_);
  sub_1001A0318(0, &qword_100771758, sub_100128A14, &selRef_setDelegate_);
  sub_1001A03E4(0);

  return sub_1001A043C(0);
}

uint64_t sub_100189FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(v4 + qword_100771768) == 1)
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003E30(v6, qword_1007716F0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to read sectionMetadata while it is being modified", v9, 2u);
    }
  }

  v10 = *(v5 + qword_100771760);
  v11 = *(v5 + qword_100771760 + 8);
  v12 = *(v5 + qword_100771760 + 16);
  if (v10)
  {
    v13 = *(v5 + qword_100771760);
  }

  else
  {
    v13 = sub_10019A418(v5, a2, a3, a4);
  }

  sub_1001008E4(v10, v11, v12);
  return v13;
}

uint64_t sub_10018A118(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *((swift_isaMask & *a2) + 0x50);
  v10 = *((swift_isaMask & *a2) + 0x58);
  v11 = type metadata accessor for TTRITreeViewNodeReuseQueue(0, v9, v10, a4);
  v15 = sub_10059F120(v11, v12, v13, v14);
  v16 = sub_10018A2F8(a3, v15);

  v17 = sub_10023A8CC(v16);

  if (*(a2 + qword_100771788) == 1)
  {
    swift_beginAccess();
    v20 = type metadata accessor for TTRITreeViewCollapsedStates(0, v9, v10, v19);
    sub_1004893A0(a3, v20);
    swift_endAccess();
  }

  v21 = type metadata accessor for TTRITreeViewSectionsMetadata(0, v9, v10, v18);
  sub_10015EB58(v17, a4, v21);
  sub_100086F44(a3, 4, 0, 1);
  v27[0] = v17;
  type metadata accessor for TTRITreeViewNode(255, v9, v10, v22);
  v23 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  sub_1000872C8(v27, 0, a6, 0, v23, WitnessTable);
}

uint64_t sub_10018A2F8(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = *v2;
  v53 = swift_isaMask & *v2;
  v5 = *((swift_isaMask & v4) + 0x50);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = *(v5 - 8);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = *(*a1 + 144);
  swift_beginAccess();
  v47 = v10;
  v20 = *(v10 + 16);
  v19 = v10 + 16;
  v18 = v20;
  v59 = v5;
  v20(v16, (a1 + v17), v5);
  v21 = sub_100189678(&qword_100771740, sub_100128A14);
  if (v21)
  {
    v23 = v21;
    v56 = v16;
    v50 = qword_100771728;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v25 = v59;
    v51 = v18;
    v52 = v19;
    v18(v9, (a1 + v17), v59);
    v26 = v47;
    v27 = v25;
    v28 = v47 + 56;
    v46 = *(v47 + 56);
    v46(v9, 0, 1, v27);
    v29 = v23;
    v30 = sub_1002DF538();

    v31 = v58 + 8;
    v45 = *(v58 + 8);
    v45(v9, v57);
    v55 = v30;
    if (v30 < 1)
    {
      v42 = v59;
      type metadata accessor for TTRITreeViewNode(0, v59, *(v53 + 88), v32);
      v40 = static Array._allocateUninitialized(_:)();

      (*(v26 + 8))(v56, v42);
    }

    else
    {
      type metadata accessor for TTRITreeViewNode(0, v59, *(v53 + 88), v32);
      v58 = v31;
      v61 = Array.init()();
      v49 = type metadata accessor for Array();
      Array.reserveCapacity(_:)(v55);
      v33 = 0;
      v53 = v29;
      v47 = v28;
      v48 = a1;
      v34 = (v26 + 8);
      v36 = v45;
      v35 = v46;
      do
      {
        v37 = swift_unknownObjectUnownedLoadStrong();
        v38 = v59;
        v51(v9, v56, v59);
        v35(v9, 0, 1, v38);
        sub_1002DF4E4();

        v36(v9, v57);
        v60 = sub_10018BBC4(v13, v48, v54);
        Array.append(_:)();
        v39 = *v34;
        (*v34)(v13, v38);
        ++v33;
      }

      while (v55 != v33);

      v39(v56, v59);
      return v61;
    }
  }

  else
  {
    v41 = v59;
    type metadata accessor for TTRITreeViewNode(0, v59, *(v53 + 88), v22);
    v40 = static Array._allocateUninitialized(_:)();
    (*(v47 + 8))(v16, v41);
  }

  return v40;
}

uint64_t sub_10018A798(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v17 = sub_100189FAC(a1, a2, a3, a4);
  *(&v17 + 1) = v6;
  v18 = v7;
  v19 = v8 & 1;
  v9 = qword_100771768;
  *(v4 + qword_100771768) = 1;
  a1(&v17);
  v10 = v18;
  v11 = v19;
  v12 = v4 + qword_100771760;
  v13 = *(v4 + qword_100771760);
  v14 = *(v4 + qword_100771760 + 8);
  v15 = *(v4 + qword_100771760 + 16);
  *v12 = v17;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  result = sub_100100898(v13, v14, v15);
  *(v4 + v9) = 0;
  return result;
}

uint64_t sub_10018A844(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = sub_10023AD08();
  v12 = v11;
  if (*(a3 + qword_100771788) == 1)
  {
    swift_beginAccess();
    v14 = type metadata accessor for TTRITreeViewCollapsedStates(0, *(v10 + 80), *(v10 + 88), v13);
    sub_1004893A0(a2, v14);
    v11 = swift_endAccess();
  }

  __chkstk_darwin(v11);
  v18[2] = a4;
  v18[3] = v12;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a5;
  return sub_10018A798(sub_1001A6084, v18, v15, v16);
}

uint64_t sub_10018A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*a4 + 80);
  v11 = *(*a4 + 88);
  v12 = type metadata accessor for TTRITreeViewSectionsMetadata(0, v10, v11, a4);
  v13 = sub_10015ECD8(a2, a3, v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100086F44(a5, 4, 0, 1);
  v24[0] = v13;
  v24[1] = v15;
  v24[2] = v17;
  v24[3] = v19;
  type metadata accessor for TTRITreeViewNode(255, v10, v11, v20);
  v21 = type metadata accessor for ArraySlice();
  WitnessTable = swift_getWitnessTable();
  sub_1000872C8(v24, 1, a6, 0, v21, WitnessTable);
  return swift_unknownObjectRelease();
}

uint64_t sub_10018AAA4(uint64_t a1)
{
  v39 = a1;
  v2 = *v1;
  v3 = swift_isaMask;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100058000(&unk_100771B50, &unk_10062FCE0);
  __chkstk_darwin(v41);
  v7 = &v37 - v6;
  v8 = sub_100058000(&qword_10076B9C0, &unk_10063B820);
  __chkstk_darwin(v8 - 8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v20 = sub_100189FAC(v16, v17, v18, v19);
  v24 = sub_10015F984(v39, v20, v22, v23, v21 & 1, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58));

  if (v24)
  {
    v25 = qword_1007A84C0;
    swift_beginAccess();
    v26 = v40;
    (*(v40 + 16))(v15, v24 + v25, v4);

    v27 = *(v26 + 56);
    v27(v15, 0, 1, v4);
  }

  else
  {
    v26 = v40;
    v27 = *(v40 + 56);
    v27(v15, 1, 1, v4);
  }

  (*(v26 + 104))(v12, enum case for TTRITreeViewExpandedState.notExpandable(_:), v4);
  v27(v12, 0, 1, v4);
  v28 = *(v41 + 48);
  sub_10000794C(v15, v7, &qword_10076B9C0, &unk_10063B820);
  sub_10000794C(v12, &v7[v28], &qword_10076B9C0, &unk_10063B820);
  v29 = *(v26 + 48);
  if (v29(v7, 1, v4) != 1)
  {
    v31 = v38;
    sub_10000794C(v7, v38, &qword_10076B9C0, &unk_10063B820);
    if (v29(&v7[v28], 1, v4) != 1)
    {
      v32 = v37;
      (*(v26 + 32))(v37, &v7[v28], v4);
      sub_1001A670C(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState, &protocol conformance descriptor for TTRITreeViewExpandedState);
      v33 = v31;
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v26 + 8);
      v35(v32, v4);
      sub_1000079B4(v12, &qword_10076B9C0, &unk_10063B820);
      sub_1000079B4(v15, &qword_10076B9C0, &unk_10063B820);
      v35(v33, v4);
      sub_1000079B4(v7, &qword_10076B9C0, &unk_10063B820);
      v30 = v34 ^ 1;
      return v30 & 1;
    }

    sub_1000079B4(v12, &qword_10076B9C0, &unk_10063B820);
    sub_1000079B4(v15, &qword_10076B9C0, &unk_10063B820);
    (*(v26 + 8))(v31, v4);
    goto LABEL_9;
  }

  sub_1000079B4(v12, &qword_10076B9C0, &unk_10063B820);
  sub_1000079B4(v15, &qword_10076B9C0, &unk_10063B820);
  if (v29(&v7[v28], 1, v4) != 1)
  {
LABEL_9:
    sub_1000079B4(v7, &unk_100771B50, &unk_10062FCE0);
    v30 = 1;
    return v30 & 1;
  }

  sub_1000079B4(v7, &qword_10076B9C0, &unk_10063B820);
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_10018AFFC(uint64_t a1)
{
  v38 = a1;
  v2 = *v1;
  v3 = swift_isaMask;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100058000(&unk_100771B50, &unk_10062FCE0);
  __chkstk_darwin(v40);
  v7 = &v36 - v6;
  v8 = sub_100058000(&qword_10076B9C0, &unk_10063B820);
  __chkstk_darwin(v8 - 8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v20 = sub_100189FAC(v16, v17, v18, v19);
  v24 = sub_10015F984(v38, v20, v22, v23, v21 & 1, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58));

  if (v24)
  {
    v25 = qword_1007A84C0;
    swift_beginAccess();
    v26 = v39;
    (*(v39 + 16))(v15, v24 + v25, v4);

    v27 = *(v26 + 56);
    v27(v15, 0, 1, v4);
  }

  else
  {
    v26 = v39;
    v27 = *(v39 + 56);
    v27(v15, 1, 1, v4);
  }

  (*(v26 + 104))(v12, enum case for TTRITreeViewExpandedState.expanded(_:), v4);
  v27(v12, 0, 1, v4);
  v28 = *(v40 + 48);
  sub_10000794C(v15, v7, &qword_10076B9C0, &unk_10063B820);
  sub_10000794C(v12, &v7[v28], &qword_10076B9C0, &unk_10063B820);
  v29 = *(v26 + 48);
  if (v29(v7, 1, v4) != 1)
  {
    v31 = v37;
    sub_10000794C(v7, v37, &qword_10076B9C0, &unk_10063B820);
    if (v29(&v7[v28], 1, v4) != 1)
    {
      v32 = v36;
      (*(v26 + 32))(v36, &v7[v28], v4);
      sub_1001A670C(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState, &protocol conformance descriptor for TTRITreeViewExpandedState);
      v33 = v31;
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v26 + 8);
      v34(v32, v4);
      sub_1000079B4(v12, &qword_10076B9C0, &unk_10063B820);
      sub_1000079B4(v15, &qword_10076B9C0, &unk_10063B820);
      v34(v33, v4);
      sub_1000079B4(v7, &qword_10076B9C0, &unk_10063B820);
      return v30 & 1;
    }

    sub_1000079B4(v12, &qword_10076B9C0, &unk_10063B820);
    sub_1000079B4(v15, &qword_10076B9C0, &unk_10063B820);
    (*(v26 + 8))(v31, v4);
    goto LABEL_9;
  }

  sub_1000079B4(v12, &qword_10076B9C0, &unk_10063B820);
  sub_1000079B4(v15, &qword_10076B9C0, &unk_10063B820);
  if (v29(&v7[v28], 1, v4) != 1)
  {
LABEL_9:
    sub_1000079B4(v7, &unk_100771B50, &unk_10062FCE0);
    v30 = 0;
    return v30 & 1;
  }

  sub_1000079B4(v7, &qword_10076B9C0, &unk_10063B820);
  v30 = 1;
  return v30 & 1;
}

double sub_10018B568(void (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v66 = swift_isaMask & *v6;
  v67 = qword_100771770;
  v11 = *&v6[qword_100771770];
  if (!v11)
  {
    v12 = sub_10019A77C(v6, a3, a4, a4);
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v12 = *&v6[qword_100771770];
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_3:
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  swift_beginAccess();
  v14 = v12[8];

  sub_10003BE34(a5, a6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[8] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_100547070(0, v14[2] + 1, 1, v14);
    v12[8] = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_100547070((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = sub_1001A0210;
  v18[5] = v13;
  v12[8] = v14;
  swift_endAccess();
LABEL_10:
  a1(v12);
  if (!v11)
  {
    if (v12[9])
    {
    }

    else
    {
      if (sub_100086DDC())
      {
        v19 = v12[6];
        v20 = v12[7];
        v21 = &v6[qword_100771778];
        swift_beginAccess();
        v22 = *v21;
        v23 = v21[1];
        v24 = *(v66 + 80);
        v25 = *(v66 + 88);

        v66 = v24;
        LOBYTE(v19) = sub_100489DAC(v19, v20, v22, v23, v24, v25);

        if ((v19 & 1) == 0)
        {

          TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();
        }

        __chkstk_darwin(v26);
        v62[2] = v7;
        swift_beginAccess();
        v28 = type metadata accessor for TTRITreeViewSoftReloadContext(0, v66, v25, v27);
        sub_1004219EC(sub_1001A01B8, v62, v28);
        v29 = swift_endAccess();
        v33 = sub_100189FAC(v29, v30, v31, v32);
        v35 = v34;
        v37 = v36;
        v39 = v38;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v41 = _typeName(_:qualified:)();
        sub_1000874E4(v33, v35, v37, v39 & 1, v41, v42, &v71);

        v78[2] = v73;
        v78[3] = v74;
        v78[4] = v75;
        v65 = v77;
        v79 = v76;
        v78[0] = v71;
        v78[1] = v72;
        if (sub_100189678(&qword_100771748, sub_1002DF79C))
        {

          v43 = swift_allocObject();
          *(v43 + 16) = v7;
          *(v43 + 24) = v12;
          v64 = v43;
          v44 = v7;

          v45 = sub_1001A01D4;
        }

        else
        {
          v45 = 0;
          v64 = 0;
        }

        v49 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v50 = swift_allocObject();
        v50[2] = v66;
        v50[3] = v25;
        v50[4] = v49;
        v66 = qword_100771738;
        sub_10000B0D8(&v7[qword_100771738], v68);
        v51 = v69;
        v52 = v70;
        sub_10000C36C(v68, v69);
        v53 = *(v52 + 32);

        v63 = v45;
        v54 = v45;
        v55 = v64;
        v53(v78, sub_1001A01C0, v50, v54, v64, sub_1001A01CC, v12, v51, v52);
        sub_10008B800(&v71);

        sub_100004758(v68);
        v56 = v12[2];
        v57 = v12[3];
        v58 = v12[4];
        LOBYTE(v49) = *(v12 + 40);

        sub_10019B17C(v65, v56, v57, v58, v49);

        sub_10000B0D8(&v7[v66], v68);
        v59 = v69;
        v60 = v70;
        sub_10000C36C(v68, v69);
        (*(v60 + 24))(v59, v60);

        sub_1000301AC(v63, v55);

        v48 = v68;
      }

      else
      {
        sub_10000B0D8(&v6[qword_100771738], &v71);
        v46 = *(&v72 + 1);
        v47 = v73;
        sub_10000C36C(&v71, *(&v72 + 1));
        (*(v47 + 24))(v46, v47);

        v48 = &v71;
      }

      sub_100004758(v48);
    }

    *&v7[v67] = 0;
  }

  return result;
}

uint64_t *sub_10018BBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v47 = a1;
  v5 = *((swift_isaMask & *v3) + 0x58);
  v43 = *((swift_isaMask & *v3) + 0x50);
  v44 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  __chkstk_darwin(AssociatedTypeWitness);
  v40 = &v36 - v7;
  v8 = type metadata accessor for TTRITreeViewExpandedState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v39 = &v36 - v13;
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  v17 = sub_100189678(&qword_100771740, sub_100128A14);
  v45 = v3;
  if (v17 && (Strong = swift_unknownObjectUnownedLoadStrong(), v19 = sub_1002DF50C(), , Strong, (v19 & 1) != 0))
  {
    v20 = (v45 + qword_100771778);
    swift_beginAccess();
    v21 = v20[1];
    v37 = *v20;
    v38 = a2;
    v22 = v44;
    v36 = *(v44 + 24);

    v23 = v40;
    v24 = v43;
    v36(v43, v22);
    v25 = v22;
    a2 = v38;
    LOBYTE(v20) = sub_1004899B8(v23, v37, v21, v24, v25);

    (*(v41 + 8))(v23, v42);
    v26 = *(v9 + 104);
    v27 = &enum case for TTRITreeViewExpandedState.collapsed(_:);
    if ((v20 & 1) == 0)
    {
      v27 = &enum case for TTRITreeViewExpandedState.expanded(_:);
    }

    v28 = v39;
    v26(v39, *v27, v8);
    (*(v9 + 32))(v16, v28, v8);
  }

  else
  {
    v26 = *(v9 + 104);
    v26(v16, enum case for TTRITreeViewExpandedState.notExpandable(_:), v8);
  }

  v29 = sub_10059F1D4(v47, a2, v16);
  v26(v11, enum case for TTRITreeViewExpandedState.expanded(_:), v8);
  v30 = static TTRITreeViewExpandedState.== infix(_:_:)();
  v31 = *(v9 + 8);
  v31(v11, v8);
  if (v30)
  {
    v33 = sub_10018A2F8(v29, v46);
  }

  else
  {
    type metadata accessor for TTRITreeViewNode(0, v43, v44, v32);
    v33 = static Array._allocateUninitialized(_:)();
  }

  v34 = v33;
  v31(v16, v8);
  swift_beginAccess();
  v29[8] = v34;

  return v29;
}

void sub_10018C000(char *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v70 = a3;
  v72 = a2;
  v6 = *v3;
  v7 = swift_isaMask;
  v68 = swift_isaMask & v6;
  v8 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v8 - 8);
  v63 = &v62 - v9;
  v10 = type metadata accessor for IndexPath();
  v64 = *(v10 - 8);
  v65 = v10;
  __chkstk_darwin(v10);
  v62 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRITreeViewExpandedState();
  v66 = *(v12 - 8);
  v67 = v12;
  __chkstk_darwin(v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v62 - v16;
  v18 = *((v7 & v6) + 0x50);
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v62 - v21;
  v23 = *(v18 - 8);
  __chkstk_darwin(v24);
  v71 = &v62 - v25;
  v69 = a1;
  if ((IndexSet.isEmpty.getter() & 1) == 0)
  {
    (*(v20 + 16))(v22, v72, v19);
    if ((*(v23 + 48))(v22, 1, v18) == 1)
    {
      v26 = (*(v20 + 8))(v22, v19);
      __chkstk_darwin(v26);
      v28 = v69;
      v27 = v70;
      *(&v62 - 4) = v4;
      *(&v62 - 3) = v28;
      *(&v62 - 2) = v27;
      sub_10018B568(sub_1001A1574, (&v62 - 6), 0, 0, 0, 0);
    }

    else
    {
      v29 = v71;
      v30 = (*(v23 + 32))(v71, v22, v18);
      v34 = sub_100189FAC(v30, v31, v32, v33);
      v38 = sub_10015F984(v29, v34, v36, v37, v35 & 1, v18, *(v68 + 88));

      if (v38)
      {
        v39 = qword_1007A84C0;
        swift_beginAccess();
        v40 = v66;
        v41 = v67;
        (*(v66 + 16))(v17, v38 + v39, v67);
        (*(v40 + 104))(v14, enum case for TTRITreeViewExpandedState.expanded(_:), v41);
        LOBYTE(v39) = static TTRITreeViewExpandedState.== infix(_:_:)();
        v42 = *(v40 + 8);
        v42(v14, v41);
        v43 = (v42)(v17, v41);
        if (v39)
        {
          v47 = sub_100189FAC(v43, v44, v45, v46);
          v49 = v38;
          v50 = v63;
          sub_1001600E4(v49, v47, v51, v48 & 1, v63);

          v53 = v64;
          v52 = v65;
          if ((*(v64 + 48))(v50, 1, v65) == 1)
          {
            sub_1000079B4(v50, &unk_100771B10, qword_10062E540);
            if (qword_100766FC8 != -1)
            {
              swift_once();
            }

            v54 = type metadata accessor for Logger();
            sub_100003E30(v54, qword_1007716F0);
            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              *v57 = 0;
              _os_log_impl(&_mh_execute_header, v55, v56, "Unable to find childrenStartIndexPath", v57, 2u);
            }

            else
            {
            }

            (*(v23 + 8))(v71, v18);
          }

          else
          {
            v58 = v62;
            v59 = (*(v53 + 32))(v62, v50, v52);
            __chkstk_darwin(v59);
            v61 = v69;
            v60 = v70;
            *(&v62 - 6) = v4;
            *(&v62 - 5) = v61;
            *(&v62 - 4) = v49;
            *(&v62 - 3) = v58;
            *(&v62 - 2) = v60;
            sub_10018B568(sub_1001A15CC, (&v62 - 8), 0, 0, 0, 0);

            (*(v23 + 8))(v71, v18);
            (*(v53 + 8))(v58, v52);
          }
        }

        else
        {
          (*(v23 + 8))(v71, v18);
        }
      }

      else
      {
        (*(v23 + 8))(v29, v18);
      }
    }
  }
}

uint64_t (*sub_10018C748(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t *, void)
{
  v64 = a6;
  v65 = a7;
  v62 = a1;
  v63 = a5;
  v67 = a3;
  v68 = a4;
  v61 = *a3;
  v8 = type metadata accessor for IndexPath();
  v54 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for IndexSet.Index();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076BA30, &qword_10062FD38);
  __chkstk_darwin(v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_100058000(&qword_10076BA38, &qword_10062FD40);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v54 - v17;
  v19 = type metadata accessor for IndexSet();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v21(v14, a2, v19);
  v21(v18, v14, v19);
  v22 = *(v16 + 44);
  v23 = sub_1001A670C(&qword_10076BA20, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  dispatch thunk of Collection.endIndex.getter();
  (*(v20 + 8))(v14, v19);
  v56 = qword_100771778;
  ++v69;
  v66 = (v54 + 2);
  ++v54;
  v59 = v19;
  v60 = v18;
  v58 = v10;
  v57 = v23;
  v55 = v8;
  while (1)
  {
    v24 = v70;
    dispatch thunk of Collection.startIndex.getter();
    sub_1001A670C(&qword_10076BA28, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v25 = v71;
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v69)(v24, v25);
    if (v26)
    {
      return sub_1000079B4(v18, &qword_10076BA38, &qword_10062FD40);
    }

    sub_1001A670C(&qword_10076BA40, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v27 = dispatch thunk of Collection.subscript.read();
    v29 = *v28;
    v27(&v72, 0);
    sub_10023B340(v29);
    v31 = v30;
    v33 = v32;
    (*v66)(v10, v68, v8);
    result = IndexPath.row.modify();
    if (__OFADD__(*v35, v31))
    {
      break;
    }

    *v35 += v31;
    result = result(&v72, 0);
    if (__OFSUB__(v33, v31))
    {
      goto LABEL_8;
    }

    v37 = *(v61 + 80);
    v38 = *(v61 + 88);
    v39 = type metadata accessor for TTRITreeViewSectionsMetadata(0, v37, v38, v36);
    v40 = sub_10015ECD8(v10, v33 - v31, v39);
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v72 = v40;
    v73 = v41;
    v74 = v43;
    v75 = v45;
    swift_beginAccess();
    v48 = v22;
    v49 = type metadata accessor for TTRITreeViewCollapsedStates(0, v37, v38, v47);
    type metadata accessor for TTRITreeViewNode(255, v37, v38, v50);
    v51 = type metadata accessor for ArraySlice();
    WitnessTable = swift_getWitnessTable();
    v53 = v49;
    v22 = v48;
    sub_10048973C(&v72, v53, v51, WitnessTable);
    swift_endAccess();
    v72 = v40;
    v73 = v42;
    v8 = v55;
    v74 = v44;
    v75 = v46;
    v10 = v58;
    v18 = v60;
    sub_1000872C8(&v72, 1, v65, 0, v51, WitnessTable);
    (*v54)(v10, v8);
    swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10018CD5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v37 = a1;
  v38 = a3;
  v36 = swift_isaMask & *a3;
  v43 = type metadata accessor for IndexSet.Index();
  v6 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076BA30, &qword_10062FD38);
  __chkstk_darwin(v8 - 8);
  v10 = v35 - v9;
  v11 = sub_100058000(&qword_10076BA38, &qword_10062FD40);
  __chkstk_darwin(v11);
  v13 = v35 - v12;
  v14 = type metadata accessor for IndexSet();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v16(v10, a2, v14);
  v16(v13, v10, v14);
  sub_1001A670C(&qword_10076BA20, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  dispatch thunk of Collection.endIndex.getter();
  (*(v15 + 8))(v10, v14);
  v35[1] = qword_100771778;
  v41 = (v6 + 8);
  while (1)
  {
    v17 = v42;
    dispatch thunk of Collection.startIndex.getter();
    sub_1001A670C(&qword_10076BA28, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v18 = v43;
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v41)(v17, v18);
    if (v19)
    {
      break;
    }

    sub_1001A670C(&qword_10076BA40, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v20 = dispatch thunk of Collection.subscript.read();
    v22 = *v21;
    v20(v44, 0);
    v23 = *(v36 + 80);
    v24 = *(v36 + 88);
    v26 = type metadata accessor for TTRITreeViewSectionsMetadata(0, v23, v24, v25);
    v29 = sub_10015E454(v22, v26, v27, v28);
    v31 = v30;
    swift_beginAccess();
    v33 = type metadata accessor for TTRITreeViewCollapsedStates(0, v23, v24, v32);
    sub_10048992C(v29, v31, v33);
    swift_endAccess();
    sub_1000874D4(v29, v31, 1, v40, 0);
  }

  return sub_1000079B4(v13, &qword_10076BA38, &qword_10062FD40);
}

uint64_t sub_10018D1A4(void (*a1)(char *, void, uint64_t), void (*a2)(char *, void, uint64_t), uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  v172 = a4;
  v173 = a2;
  v156 = a1;
  v8 = *v5;
  v9 = swift_isaMask;
  v171 = (swift_isaMask & *v5);
  v10 = type metadata accessor for IndexSet();
  v165 = *(v10 - 1);
  v166 = v10;
  __chkstk_darwin(v10);
  v164 = (&v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v12 - 8);
  v158 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v159 = &v150 - v15;
  v161 = type metadata accessor for IndexPath();
  v162 = *(v161 - 8);
  __chkstk_darwin(v161);
  v157 = (&v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v160 = &v150 - v18;
  v19 = type metadata accessor for TTRITreeViewExpandedState();
  v20 = *(v19 - 8);
  v169 = v19;
  v170 = v20;
  __chkstk_darwin(v19);
  v168 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v167 = &v150 - v23;
  v178 = v5;
  v24 = *((v9 & v8) + 0x50);
  v25 = *(v24 - 8);
  __chkstk_darwin(v26);
  v174 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v175 = &v150 - v29;
  v30 = type metadata accessor for Optional();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v163 = &v150 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v150 - v34;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = __chkstk_darwin(TupleTypeMetadata2 - 8);
  v39 = &v150 - v38;
  v41 = *(v40 + 56);
  v176 = v31;
  v42 = *(v31 + 16);
  v42(&v150 - v38, a3, v30, v37);
  (v42)(&v39[v41], a5, v30);
  v43 = *(v25 + 48);
  v44 = v43(v39, 1, v24);
  v177 = v30;
  if (v44 != 1)
  {
    (v42)(v35, v39, v30);
    if (v43(&v39[v41], 1, v24) == 1)
    {
      (*(v25 + 8))(v35, v24);
      goto LABEL_35;
    }

    v50 = v25;
    v51 = *(v25 + 32);
    v52 = v175;
    v51(v175, v35, v24);
    v155 = v39;
    v53 = v174;
    v54 = (v51)(v174, &v39[v41], v24);
    v58 = sub_100189FAC(v54, v55, v56, v57);
    v59 = v171[11];
    v63 = sub_10015F984(v52, v58, v61, v62, v60 & 1, v24, v59);

    v49 = v176;
    if (!v63)
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      sub_100003E30(v94, qword_1007716F0);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.info.getter();
      v97 = os_log_type_enabled(v95, v96);
      v98 = v174;
      if (v97)
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&_mh_execute_header, v95, v96, "oldParentNode is not found, nothing to do.", v99, 2u);
      }

      v100 = *(v50 + 8);
      v100(v98, v24);
      v100(v175, v24);
      goto LABEL_28;
    }

    v171 = v63;
    v68 = sub_100189FAC(v64, v65, v66, v67);
    v154 = v24;
    v72 = sub_10015F984(v53, v68, v70, v71, v69 & 1, v24, v59);

    if (v72)
    {
      v73 = qword_1007A84C0;
      swift_beginAccess();
      v74 = v169;
      v75 = v170;
      v76 = *(v170 + 16);
      v77 = v167;
      v153 = v170 + 16;
      v152 = v76;
      v76(v167, v72 + v73, v169);
      v78 = v168;
      v150 = *(v75 + 104);
      v150(v168, enum case for TTRITreeViewExpandedState.expanded(_:), v74);
      LOBYTE(v73) = static TTRITreeViewExpandedState.== infix(_:_:)();
      v80 = *(v75 + 8);
      v79 = v75 + 8;
      v80(v78, v74);
      v151 = v80;
      v81 = (v80)(v77, v74);
      if (v73)
      {
        v166 = v72;
        v170 = v79;
        v85 = sub_100189FAC(v81, v82, v83, v84);
        v87 = v159;
        sub_1001600E4(v171, v85, v88, v86 & 1, v159);

        v89 = v162;
        v90 = *(v162 + 48);
        v91 = v161;
        if (v90(v87, 1, v161) == 1)
        {
          sub_1000079B4(v87, &unk_100771B10, qword_10062E540);
          v92 = v174;
          v93 = v154;
        }

        else
        {
          v164 = *(v89 + 32);
          v165 = v89 + 32;
          v113 = v164(v160, v87, v91);
          v117 = sub_100189FAC(v113, v114, v115, v116);
          v119 = v158;
          sub_1001600E4(v166, v117, v120, v118 & 1, v158);

          v121 = v90(v119, 1, v91);
          v93 = v154;
          if (v121 != 1)
          {
            v128 = v157;
            v164(v157, v119, v91);
            v129 = qword_1007A84C0;
            v130 = v171;
            swift_beginAccess();
            v131 = v167;
            v132 = v169;
            v152(v167, v130 + v129, v169);
            v133 = v168;
            v150(v168, enum case for TTRITreeViewExpandedState.collapsed(_:), v132);
            LOBYTE(v129) = static TTRITreeViewExpandedState.== infix(_:_:)();
            v134 = v151;
            v151(v133, v132);
            v135 = v134(v131, v132);
            v136 = v174;
            __chkstk_darwin(v135);
            if (v129)
            {
              v137 = v156;
              *(&v150 - 4) = v178;
              *(&v150 - 3) = v137;
              v148 = v166;
              v149 = v172;
              sub_10018B568(sub_1001A1D40, (&v150 - 6), 0, 0, 0, 0);

              v138 = *(v50 + 8);
              v139 = v154;
              v138(v136, v154);
              v138(v175, v139);
              v140 = *(v162 + 8);
              v141 = v161;
              v140(v128, v161);
              v142 = v160;
            }

            else
            {
              *(&v150 - 8) = v178;
              *(&v150 - 7) = v130;
              v143 = v172;
              v144 = v166;
              *(&v150 - 6) = v173;
              *(&v150 - 5) = v144;
              v145 = v160;
              *(&v150 - 4) = v143;
              *(&v150 - 3) = v145;
              v148 = v128;
              sub_10018B568(sub_1001A1CDC, (&v150 - 10), 0, 0, 0, 0);

              v146 = *(v50 + 8);
              v147 = v154;
              v146(v136, v154);
              v146(v175, v147);
              v140 = *(v162 + 8);
              v141 = v161;
              v140(v128, v161);
              v142 = v145;
            }

            v140(v142, v141);
LABEL_28:
            v39 = v155;
            return (*(v49 + 8))(v39, v177, v48);
          }

          sub_1000079B4(v119, &unk_100771B10, qword_10062E540);
          (*(v162 + 8))(v160, v91);
          v92 = v174;
        }

        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v122 = type metadata accessor for Logger();
        sub_100003E30(v122, qword_1007716F0);
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&_mh_execute_header, v123, v124, "Unable to find old/newChildrenStartIndexPath", v125, 2u);
        }

        v126 = *(v50 + 8);
        v126(v92, v93);
        v126(v175, v93);
        goto LABEL_28;
      }
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    sub_100003E30(v101, qword_1007716F0);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.info.getter();
    v104 = os_log_type_enabled(v102, v103);
    v105 = v154;
    if (v104)
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&_mh_execute_header, v102, v103, "newParentNode is not found or not expanded, treating this as a delete.", v106, 2u);
    }

    sub_100058000(&unk_10076B9F0, &qword_10062FD18);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_10062D400;
    *(v107 + 32) = v173;
    v179 = v107;
    sub_1001A670C(&unk_100771B20, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    sub_100058000(&unk_10076BA00, &qword_10062FD20);
    sub_10011763C(&qword_100771B30, &unk_10076BA00, &qword_10062FD20);
    v108 = v164;
    v109 = v166;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v110 = v163;
    v111 = v175;
    (*(v50 + 16))(v163, v175, v105);
    (*(v50 + 56))(v110, 0, 1, v105);
    sub_10018C000(v108, v110, 0x64);

    (*(v49 + 8))(v110, v177);
    (*(v165 + 8))(v108, v109);
    v112 = *(v50 + 8);
    v112(v174, v105);
    v112(v111, v105);
    goto LABEL_28;
  }

  v45 = v43(&v39[v41], 1, v24);
  if (v45 == 1)
  {
    __chkstk_darwin(v45);
    v46 = v172;
    v47 = v173;
    *(&v150 - 4) = v178;
    *(&v150 - 3) = v47;
    v148 = v46;
    v48.n128_f64[0] = sub_10018B568(sub_1001A1D98, (&v150 - 6), 0, 0, 0, 0);
    v49 = v176;
    return (*(v49 + 8))(v39, v177, v48);
  }

LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}