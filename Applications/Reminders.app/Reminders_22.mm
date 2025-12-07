void *sub_1002521EC(uint64_t a1)
{
  v51 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v41 - v6;
  v54 = _swiftEmptyArrayStorage;
  v8 = *(a1 + 16);
  v42 = v3;
  v43 = v1;
  v44 = a1;
  v45 = v8;
  if (v8)
  {
    v9 = *(v1 + 64);
    v49 = *(v1 + 72);
    v50 = v9;
    ObjectType = swift_getObjectType();
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v47 = v12;
    v48 = ObjectType;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v14 = *(v11 + 56);
    v15 = _swiftEmptyArrayStorage;
    v16 = v51;
    v12(v7, v13, v51);
    while (1)
    {
      v17 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      (*(v11 - 8))(v7, v16);
      if (v17)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v41 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v15 = v54;
      }

      v13 += v14;
      if (!--v8)
      {
        break;
      }

      v47(v7, v13, v16);
    }
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v18 = v15;
  if (v15 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v45;
  v21 = v46;
  v22 = v44;
  if (v19 != v45)
  {

    v23 = *(v43 + 72);
    v24 = swift_getObjectType();
    v25 = (*(v23 + 264))(v22, 0, v24, v23);
    v54 = _swiftEmptyArrayStorage;
    v46 = v25;
    if (v20)
    {
      v26 = *(v42 + 16);
      v27 = v22 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v28 = *(v42 + 72);
      v49 = v25 & 0xC000000000000001;
      v50 = v26;
      v29 = v25 & 0xFFFFFFFFFFFFFF8;
      if (v25 < 0)
      {
        v29 = v25;
      }

      v47 = v29;
      v30 = (v42 + 8);
      v48 = _swiftEmptyArrayStorage;
      v31 = v51;
      while (1)
      {
        v50(v21, v27, v31);
        v32 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
        if (v32)
        {
          break;
        }

        (*v30)(v21, v31);
LABEL_18:
        v27 += v28;
        if (!--v20)
        {
          goto LABEL_33;
        }
      }

      v33 = v32;
      if (v49)
      {
        v34 = __CocoaDictionary.lookup(_:)();
        if (v34)
        {
          v52 = v34;
          sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
          swift_dynamicCast();
          v35 = v53;
LABEL_26:

          goto LABEL_28;
        }
      }

      else
      {
        v36 = v46;
        if (*(v46 + 2))
        {
          v37 = sub_1002613B0(v32);
          if (v38)
          {
            v35 = *(*(v36 + 7) + 8 * v37);
            v39 = v35;
            goto LABEL_26;
          }
        }
      }

      v35 = 0;
LABEL_28:
      (*v30)(v21, v31);
      if (v35)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v48 = v54;
      }

      goto LABEL_18;
    }

    v48 = _swiftEmptyArrayStorage;
LABEL_33:

    return v48;
  }

  return v18;
}

void sub_100252618(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = type metadata accessor for REMAnalyticsEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v35 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(a1 + 32);
  }

  v33 = v5;
  v34 = v6;
  v32 = v10;
  v11 = [v10 account];
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x7265646E696D6572;
  *(inited + 40) = 0xE900000000000073;
  v14 = sub_100058000(&qword_10076BB08, &unk_10062FDB0);
  *(inited + 48) = a1;
  *(inited + 72) = v14;
  *(inited + 80) = 0x49746E756F636361;
  *(inited + 88) = 0xE900000000000044;

  v15 = [v11 objectID];
  *(inited + 120) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 96) = v15;
  v16 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminder List permanently hide deleted reminders {reminders: %@, accountID: %@}", 79, 2, v16);

  type metadata accessor for TTRUserDefaults();
  v17 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v18 = sub_100058000(&qword_1007757E8, &unk_100635E60);
  v19 = &v9[*(v18 + 48)];
  v20 = &v9[*(v18 + 80)];
  sub_10000794C(v35, v9, &qword_100775608, &qword_1006367C0);
  v21 = enum case for REMUserOperation.permanentlyDeleteReminder(_:);
  v22 = type metadata accessor for REMUserOperation();
  (*(*(v22 - 8) + 104))(v9, v21, v22);
  *v19 = TTRUserDefaults.activitySessionId.getter();
  v19[1] = v23;
  TTRUserDefaults.activitySessionBeginTime.getter();
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v24 = _typeName(_:qualified:)();
  v26 = v25;

  v36 = v24;
  v37 = v26;
  v27._object = 0x8000000100679500;
  v27._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v27);
  v28 = v37;
  *v20 = v36;
  *(v20 + 1) = v28;
  v29 = v31;
  v30 = v34;
  (*(v31 + 104))(v9, enum case for REMAnalyticsEvent.userOperation(_:), v34);
  REMAnalyticsManager.post(event:)();

  (*(v29 + 8))(v9, v30);
  swift_getObjectType();
  dispatch thunk of TTRRemindersListInteractorType.permanentlyHide(_:account:)();
}

id sub_100252AB8(uint64_t a1)
{
  v2 = sub_100058000(&qword_100775920, &qword_100635F60);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_100058000(&qword_100776328, &qword_1006368F8);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  sub_10025B7B4(a1, v4);
  v8 = sub_100058000(&qword_100775928, &qword_100635F68);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_1000079B4(v4, &qword_100775920, &qword_100635F60);
    return 0;
  }

  else
  {
    v10 = *&v4[*(v8 + 48)];
    v11 = *(v5 + 48);
    v12 = type metadata accessor for TTRRemindersListViewModel.Item();
    v13 = *(v12 - 8);
    (*(v13 + 32))(v7, v4, v12);
    *&v7[v11] = v10;
    v14 = *&v7[*(v5 + 48)];
    (*(v13 + 8))(v7, v12);
    v15 = [v14 store];
    v16 = [objc_allocWithZone(REMSaveRequest) initWithStore:v15];

    if (*(a1 + 16) == 1)
    {
      v17 = [v16 updateReminder:v14];

      return v17;
    }

    else
    {
      v18 = [v14 list];
      v19 = [v16 updateList:v18];

      v20 = String._bridgeToObjectiveC()();
      v21 = [v16 addReminderWithTitle:v20 toListChangeItem:v19];

      return v21;
    }
  }
}

uint64_t sub_100252DAC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100776068);
  v1 = sub_100003E30(v0, qword_100776068);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100252E78(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1 && *(a2 + 8) == 1)
    {
      v2 = *a1;
      v3 = *a2;

      sub_1000E8E80(v2, v3);
    }
  }

  else if (!*(a2 + 8))
  {
    sub_100003540(0, &qword_100775690, NSObject_ptr);
    static NSObject.== infix(_:_:)();
  }
}

uint64_t sub_100252F2C@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v81 = a2;
  v82 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v75 = *(v5 - 8);
  v76 = v5;
  __chkstk_darwin(v5);
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin(v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100776338, &qword_100636908);
  __chkstk_darwin(v10);
  v86 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v87 = &v71 - v13;
  __chkstk_darwin(v14);
  v16 = &v71 - v15;
  v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v90 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRSectionID();
  v83 = *(v20 - 8);
  v84 = v20;
  __chkstk_darwin(v20);
  v88 = (&v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = a1;
  sub_10000794C(a1, v16, &qword_100776338, &qword_100636908);
  v22 = *(v10 + 48);
  v23 = *(v10 + 64);
  v85 = v10;

  v24 = type metadata accessor for TTRRemindersListViewModel.Item();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 88))(v16, v24);
  v78 = v3;
  v79 = v25;
  v80 = v24;
  if (v26 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v27 = v24;
    v28 = v81;
    (*(v25 + 96))(v16, v27);
    (*(v90 + 32))(v19, v16, v17);
    v29 = *(v3 + 8);
    v92 = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = &v16[v23];
    v31 = v82;
    v29(v30, v82);
    v29(&v16[v22], v31);
    TTRRemindersListViewModel.SectionHeader.id.getter();
    v32 = v72;
    TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
    (*(v73 + 8))(v9, v74);
    v34 = v75;
    v33 = v76;
    v35 = (*(v75 + 88))(v32, v76);
    v89 = v29;
    if (v35 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
    {
      (*(v90 + 8))(v19, v17);
      (*(v34 + 96))(v32, v33);
      *v88 = *v32;
      v43 = &enum case for TTRSectionID.sectioned(_:);
      v38 = v28;
    }

    else
    {
      if (v35 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:) || v35 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {
        v38 = v28;
        (*(v90 + 8))(v19, v17);
        (*(v34 + 8))(v32, v33);
      }

      else
      {
        if (v35 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
        {
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        v38 = v28;
        (*(v90 + 8))(v19, v17);
      }

      v43 = &enum case for TTRSectionID.sectionless(_:);
    }

    v42 = v92;
  }

  else
  {
    v36 = v3;
    v38 = v81;
    v37 = v82;
    v39 = v23;
    v40 = v22;
    v41 = *(v36 + 8);
    v42 = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v41(&v16[v39], v82);
    v89 = v41;
    v41(&v16[v40], v37);
    (*(v25 + 8))(v16, v24);
    v43 = &enum case for TTRSectionID.sectionless(_:);
  }

  (*(v83 + 104))(v88, *v43, v84);
  v44 = v91;
  v45 = v87;
  sub_10000794C(v91, v87, &qword_100776338, &qword_100636908);
  v46 = v85;
  v47 = *(v85 + 64);

  *v38 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v48 = v45 + v47;
  v49 = v82;
  v50 = v89;
  v89(v48, v82);
  v51 = v86;
  sub_10000794C(v44, v86, &qword_100776338, &qword_100636908);
  v52 = *(v46 + 48);

  *(v38 + 1) = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v50(v51 + v52, v49);
  v53 = *&v44[*(v46 + 80)];
  v54 = *(v53 + 16);
  v55 = _swiftEmptyArrayStorage;
  v92 = v42;
  if (v54)
  {
    v93 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v56 = v77;
    v57 = *(v78 + 16);
    v58 = v53 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v90 = *(v78 + 72);
    v91 = v57;
    v59 = v89;
    do
    {
      (v91)(v56, v58, v49);
      TTRRemindersListViewModel.ReminderID.objectID.getter();
      v59(v56, v49);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v58 += v90;
      --v54;
    }

    while (v54);
    v55 = v93;
    v38 = v81;
  }

  v60 = *(sub_100058000(&qword_100776330, &qword_100636900) + 80);
  v61 = v84;
  v62 = *(v85 + 48);
  v63 = *(v85 + 64);
  *(v38 + 2) = v55;
  (*(v83 + 32))(&v38[v60], v88, v61);
  v64 = v86;
  v65 = v89;
  v89(v86 + v63, v49);
  v66 = *(v79 + 8);
  v67 = v64;
  v68 = v80;
  v66(v67, v80);
  v69 = v87;
  v65(v87 + v62, v49);
  return (v66)(v69, v68);
}

uint64_t sub_1002537A4(uint64_t a1)
{
  v36 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v24 - v5;
  v33 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = &v24 - v9;
  result = TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter();
  v37 = v11;
  v38 = result;
  if (result)
  {
    v12 = 0;
    v13 = *(a1 + 16);
    v29 = a1;
    v30 = v13;
    v27 = v6 + 16;
    v28 = v6;
    v25 = (v2 + 8);
    v26 = v6 + 8;
    v15 = v33;
    v14 = v34;
    while (v30 != v12)
    {
      v16 = v28;
      v17 = v31;
      (*(v28 + 16))(v31, v29 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12++, v15);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      swift_getObjectType();
      v18 = v32;
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.item.getter();
      v19 = v35;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      v20 = *(v16 + 8);
      v20(v18, v15);
      v39 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
      v21 = *v25;
      v22 = v19;
      v23 = v36;
      (*v25)(v22, v36);
      v21(v14, v23);
      v20(v17, v15);
      if (v39)
      {
        dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestAbortEditing()();
        return swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_100253A84(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  __chkstk_darwin(v2 - 8);
  v134 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v133 = &v128 - v5;
  __chkstk_darwin(v6);
  v132 = &v128 - v7;
  v153 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v8 = *(v153 - 8);
  __chkstk_darwin(v153);
  v152 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076E900, &qword_100631E10);
  __chkstk_darwin(v10 - 8);
  v12 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v128 - v14;
  v16 = sub_100058000(&qword_100776288, &unk_100636840);
  __chkstk_darwin(v16);
  v151 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v154 = &v128 - v19;
  v20 = sub_100058000(&unk_100775960, &unk_100634F40);
  __chkstk_darwin(v20 - 8);
  v160 = &v128 - v21;
  v161 = type metadata accessor for TTRSection();
  v22 = *(v161 - 8);
  __chkstk_darwin(v161);
  v148 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v147 = &v128 - v25;
  v158 = type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem();
  v26 = *(v158 - 8);
  __chkstk_darwin(v158);
  v28 = (&v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v175 = type metadata accessor for TTRRemindersListViewModel.Item();
  __chkstk_darwin(v175);
  __chkstk_darwin(v29);
  v146 = &v128 - v30;
  __chkstk_darwin(v31);
  v172 = &v128 - v32;
  __chkstk_darwin(v33);
  v166 = &v128 - v34;
  v38 = __chkstk_darwin(v35);
  v40 = &v128 - v39;
  v182 = _swiftEmptyArrayStorage;
  v183 = _swiftEmptyArrayStorage;
  v41 = *(a1 + 16);
  if (!v41)
  {
    v150 = 0;
    v155 = _swiftEmptyArrayStorage;
    v171 = _swiftEmptyArrayStorage;
    v164 = _swiftEmptyArrayStorage;
    v159 = _swiftEmptyArrayStorage;
    v163 = _swiftEmptyArrayStorage;
LABEL_4:
    type metadata accessor for TTRListEditor();
    v48 = static TTRListEditor.filterOutSubtasksWithParents(in:)();

    if (v48 >> 62)
    {
      v49 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v150;
    v51 = v171;
    v52 = v159;
    if (v164 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v53 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = v51[2];
    v55 = (v52[2] != 0) | v50;
    v181 = v155[2];
    if (v49)
    {

      if (!v53 && !v54 && (v55 & 1) == 0 && !v181)
      {
        v56 = *(v174 + 72);
        ObjectType = swift_getObjectType();
        v58 = v132;
        (*(v56 + 16))(ObjectType, v56);
        LODWORD(v56) = *v58;
        sub_100262C74(v58, type metadata accessor for TTRRemindersListEditingInteractionOptions);
        if (v56 <= 1)
        {
          return v48;
        }
      }

      goto LABEL_104;
    }

    if (v53)
    {

      if (v54 || (v55 & 1) != 0 || v181 || (v62 = *(v174 + 72), v63 = swift_getObjectType(), v64 = v133, (*(v62 + 16))(v63, v62), LODWORD(v62) = *v64, sub_100262C74(v64, type metadata accessor for TTRRemindersListEditingInteractionOptions), v62 > 1))
      {
LABEL_104:

LABEL_105:

        return 0;
      }

      return v164;
    }

    else
    {

      if (!v54)
      {

        v48 = v155;
        if ((v55 & 1) == 0)
        {

          if (v181)
          {
            return v48;
          }

          goto LABEL_105;
        }

        if (!v181)
        {
          return v52;
        }

        goto LABEL_104;
      }

      if (v55)
      {
        goto LABEL_105;
      }

      if (v181)
      {
        goto LABEL_105;
      }

      v59 = *(v174 + 72);
      v60 = swift_getObjectType();
      v61 = v134;
      (*(v59 + 16))(v60, v59);
      LODWORD(v59) = *v61;
      sub_100262C74(v61, type metadata accessor for TTRRemindersListEditingInteractionOptions);
      if (v59 > 1)
      {
        goto LABEL_105;
      }

      return v51;
    }
  }

  v130 = v37;
  v128 = v16;
  v144 = v15;
  v150 = 0;
  v43 = *(v36 + 16);
  v42 = v36 + 16;
  v180 = v43;
  v168 = (*(v42 + 64) + 32) & ~*(v42 + 64);
  v44 = a1 + v168;
  v178 = (v26 + 88);
  v177 = enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.reminder(_:);
  v170 = enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedReminder(_:);
  v169 = enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.placeholderReminder(_:);
  v165 = enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.editableSection(_:);
  v157 = enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedEditingSection(_:);
  v143 = enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.nonEditable(_:);
  v142 = (v8 + 8);
  v176 = (v42 - 8);
  v167 = (v42 + 16);
  v173 = (v26 + 8);
  v156 = (v26 + 96);
  v140 = (v22 + 48);
  v139 = (v22 + 32);
  v136 = (v22 + 16);
  v135 = (v22 + 8);
  v137 = v22;
  v149 = (v22 + 56);
  v141 = enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:);
  v138 = enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:);
  v131 = enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:);
  v164 = _swiftEmptyArrayStorage;
  v129 = enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:);
  v45 = _swiftEmptyArrayStorage;
  v171 = _swiftEmptyArrayStorage;
  v155 = _swiftEmptyArrayStorage;
  v163 = _swiftEmptyArrayStorage;
  v159 = _swiftEmptyArrayStorage;
  v179 = *(v42 + 56);
  v46 = v158;
  v47 = v175;
  v145 = v12;
  v181 = v42;
  (v43)(v40, a1 + v168, v175, v38);
  while (1)
  {
    TTRRemindersListViewModel.Item.editableCasesOnly.getter();
    v66 = (*v178)(v28, v46);
    if (v66 == v177)
    {
      swift_getObjectType();
      v67 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      if (v67)
      {
        v68 = v67;
        v69 = v45;
        v70 = REMReminder.isSiriFoundInApps.getter();
        v71 = v68;
        if (v70)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v164 = v182;
          v45 = v69;
        }

        else
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v45 = v69;
          if (*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v183 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v163 = v183;
        }

        v180(v172, v40, v175);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_100547094(0, v45[2] + 1, 1, v45);
        }

        v88 = v45[2];
        v87 = v45[3];
        if (v88 >= v87 >> 1)
        {
          v45 = sub_100547094((v87 > 1), v88 + 1, 1, v45);
        }

        v47 = v175;
        (*v176)(v40, v175);
        v45[2] = v88 + 1;
        (*v167)(v45 + v168 + v88 * v179, v172, v47);
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (v66 != v170 && v66 != v169)
    {
      break;
    }

    (*v173)(v28, v46);
    swift_getObjectType();
    v73 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.reminderChangeItem(forEditing:)();
    if (!v73)
    {
      goto LABEL_101;
    }

    v180(v166, v40, v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v171 = sub_100547094(0, v171[2] + 1, 1, v171);
    }

    v75 = v171[2];
    v74 = v171[3];
    if (v75 >= v74 >> 1)
    {
      v171 = sub_100547094((v74 > 1), v75 + 1, 1, v171);
    }

    (*v176)(v40, v47);
    v76 = v171;
    v171[2] = v75 + 1;
    (*v167)(&v76[v168 + v75 * v179], v166, v47);
LABEL_31:
    v44 += v179;
    if (!--v41)
    {
      goto LABEL_4;
    }

    (v180)(v40, v44, v47, v65);
  }

  if (v66 == v165)
  {
    v162 = v45;
    (*v156)(v28, v46);
    v77 = *v28;
    v78 = *(v174 + 72);
    v79 = swift_getObjectType();
    v80 = (*(v78 + 104))(v79, v78);
    if (!v80)
    {
      v47 = v175;
      (*v176)(v40, v175);

      v85 = v160;
      (*v149)(v160, 1, 1, v161);
      v45 = v162;
LABEL_77:
      sub_1000079B4(v85, &unk_100775960, &unk_100634F40);
      goto LABEL_31;
    }

    v81 = v80;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();

      v85 = v160;
      (*v149)(v160, 1, 1, v161);
      goto LABEL_76;
    }

    v82 = *(v81 + 64);
    v83 = swift_getObjectType();
    (*(v82 + 16))(v83, v82);
    swift_unknownObjectRelease();
    v84 = v77;
    v85 = v160;
    TTRSection.init(with:store:)();
    swift_unknownObjectRelease();
    v86 = v161;
    if ((*v140)(v85, 1, v161) == 1)
    {

LABEL_76:
      v45 = v162;
      v47 = v175;
      (*v176)(v40, v175);
      goto LABEL_77;
    }

    v112 = *v139;
    v113 = v147;
    (*v139)(v147, v85, v86);
    (*v136)(v148, v113, v86);
    v114 = v159;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = sub_100547428(0, v114[2] + 1, 1, v114);
    }

    v159 = v114;
    v116 = v114[2];
    v115 = v114[3];
    v117 = v137;
    v46 = v158;
    if (v116 >= v115 >> 1)
    {
      v126 = sub_100547428((v115 > 1), v116 + 1, 1, v159);
      v117 = v137;
      v159 = v126;
    }

    v118 = v159;
    v159[2] = v116 + 1;
    v112(&v118[((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v116], v148, v161);
    v180(v146, v40, v175);
    v45 = v162;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_100547094(0, v45[2] + 1, 1, v45);
    }

    v120 = v45[2];
    v119 = v45[3];
    if (v120 >= v119 >> 1)
    {
      v45 = sub_100547094((v119 > 1), v120 + 1, 1, v45);
    }

    (*v135)(v147, v161);
    v121 = v175;
    (*v176)(v40, v175);
    v45[2] = v120 + 1;
    v47 = v121;
    (*v167)(v45 + v168 + v120 * v179, v146, v121);
    goto LABEL_31;
  }

  if (v66 == v157)
  {
    TTRRemindersListViewModel.Item.sectionHeader.getter();
    v89 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
    v90 = *(v89 - 8);
    if ((*(v90 + 48))(v12, 1, v89) == 1)
    {
      v47 = v175;
      (*v176)(v40, v175);
      sub_1000079B4(v12, &qword_10076E900, &qword_100631E10);
      v91 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
      (*(*(v91 - 8) + 56))(v151, 1, 1, v91);
      goto LABEL_30;
    }

    v96 = v12;
    v97 = v152;
    TTRRemindersListViewModel.SectionHeader.id.getter();
    (*(v90 + 8))(v96, v89);
    v98 = v151;
    TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
    v99 = v97;
    v100 = v98;
    (*v142)(v99, v153);
    v101 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
    v102 = *(v101 - 8);
    (*(v102 + 56))(v100, 0, 1, v101);
    v103 = (*(v102 + 88))(v100, v101);
    if (v103 == v141)
    {
      v47 = v175;
      v104 = v176;
    }

    else
    {
      v47 = v175;
      if (v103 != v138)
      {
        if (v103 == v131)
        {
          (*(v102 + 8))(v100, v101);
          v180(v130, v40, v47);
          v122 = v155;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v122 = sub_100547094(0, v122[2] + 1, 1, v122);
          }

          v12 = v145;
          v155 = v122;
          v124 = v122[2];
          v123 = v122[3];
          if (v124 >= v123 >> 1)
          {
            v155 = sub_100547094((v123 > 1), v124 + 1, 1, v155);
          }

          (*v176)(v40, v47);
          v125 = v155;
          v155[2] = v124 + 1;
          (*v167)(&v125[v168 + v124 * v179], v130, v47);
          goto LABEL_30;
        }

        v12 = v145;
        if (v103 != v129)
        {
          goto LABEL_113;
        }

LABEL_29:
        (*v176)(v40, v47);
LABEL_30:
        (*v173)(v28, v46);
        goto LABEL_31;
      }

      v104 = v176;
    }

    (*v104)(v40, v47);
    (*(v102 + 8))(v100, v101);
    v12 = v145;
    goto LABEL_30;
  }

  if (v66 != v143)
  {
    goto LABEL_113;
  }

  v92 = v144;
  TTRRemindersListViewModel.Item.sectionHeader.getter();
  v93 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v94 = *(v93 - 8);
  if ((*(v94 + 48))(v92, 1, v93) == 1)
  {
    v47 = v175;
    (*v176)(v40, v175);
    sub_1000079B4(v92, &qword_10076E900, &qword_100631E10);
    v95 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
    (*(*(v95 - 8) + 56))(v154, 1, 1, v95);
LABEL_74:
    v46 = v158;
    goto LABEL_31;
  }

  v105 = v152;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  (*(v94 + 8))(v92, v93);
  v106 = v154;
  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
  (*v142)(v105, v153);
  v107 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v108 = *(v107 - 8);
  (*(v108 + 56))(v106, 0, 1, v107);
  v109 = (*(v108 + 88))(v106, v107);
  if (v109 == v141)
  {
    v110 = v175;
    (*v176)(v40, v175);
    v111 = v106;
    v47 = v110;
    (*(v108 + 8))(v111, v107);
    v12 = v145;
    goto LABEL_74;
  }

  v12 = v145;
  v46 = v158;
  if (v109 == v138)
  {
    v47 = v175;
    (*v176)(v40, v175);
    (*(v108 + 8))(v154, v107);
    v150 = 1;
    goto LABEL_31;
  }

  v47 = v175;
  if (v109 == v131)
  {
    (*v176)(v40, v175);
    (*(v108 + 8))(v154, v107);
    goto LABEL_31;
  }

  if (v109 == v129)
  {
LABEL_101:
    (*v176)(v40, v47);
    goto LABEL_31;
  }

LABEL_113:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002552B0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 56) = a2;
  *(v5 + 64) = v4;
  *(v5 + 145) = a4;
  *(v5 + 144) = a3;
  *(v5 + 48) = a1;
  type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  *(v5 + 72) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 80) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 88) = v7;
  *(v5 + 96) = v6;

  return _swift_task_switch(sub_100255380, v7, v6);
}

uint64_t sub_100255380()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 64) + 72);
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(ObjectType, v2);
  v4 = *v1;
  sub_100262C74(v1, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = 1;
LABEL_5:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v0 + 64);
      v7 = *(v6 + 24);
      v8 = swift_getObjectType();
      v9 = (*(v7 + 32))(v6, v8, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0;
    }

    *(v0 + 104) = v9;
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    v15 = sub_10026268C(_swiftEmptyArrayStorage);
    *(v0 + 120) = v15;
    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *v16 = v0;
    v16[1] = sub_1002555AC;
    v17 = *(v0 + 145);
    v18 = *(v0 + 144);
    v19 = *(v0 + 48);

    return TTRDeleteRemindersPresenterCapability.deleteReminders(_:areSiriSuggestions:dueDateOfRecurrenceInstanceByRecurrentReminderID:requiresConfirmationForRemindersWithSubtasks:shouldNotPrompt:performOptimisticDeletion:alertPresenter:)(v19, v18, v15, v5, v17, sub_100262684, v14, v9);
  }

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_1002555AC(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = *(v4 + 88);
    v6 = *(v4 + 96);
    v7 = sub_100255760;
  }

  else
  {

    *(v4 + 146) = a1 & 1;

    v5 = *(v4 + 88);
    v6 = *(v4 + 96);
    v7 = sub_1002556E4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1002556E4()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 146);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100255760()
{
  v12 = v0;

  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100776068);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "TTRRemindersListPresenterCapability: error deleting reminders {error: %{public}s}", v4, 0xCu);
    sub_100004758(v5);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_100255964@<X0>(uint64_t *a1@<X8>)
{
  result = REMReminder.accountCapabilities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002559A0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 288) = a2;
  *(v4 + 72) = a1;
  *(v4 + 96) = *v3;
  v5 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  v6 = type metadata accessor for REMRemindersListDataView.SectionLite();
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  v7 = type metadata accessor for TTRSectionID();
  *(v4 + 152) = v7;
  *(v4 + 160) = *(v7 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  v8 = type metadata accessor for TTRSection();
  *(v4 + 184) = v8;
  *(v4 + 192) = *(v8 - 8);
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 216) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 224) = v10;
  *(v4 + 232) = v9;

  return _swift_task_switch(sub_100255BF0, v10, v9);
}

void sub_100255BF0()
{
  v103 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0[9] + 16);
  v0[30] = v2;
  v91 = v2;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (v3)
  {

LABEL_41:
    v43 = 0;
    goto LABEL_42;
  }

  v4 = v0[11];
  v0[31] = *(v4 + 64);
  v5 = *(v4 + 72);
  v0[32] = v5;
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 104);

  v99 = ObjectType;
  v8 = v7(ObjectType, v5);
  v0[33] = v8;
  if (!v8)
  {

    if (qword_100767028 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100003E30(v34, qword_100776068);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v0[12];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v101 = v39;
      v102 = v37;
      *v38 = 136446210;
      swift_getMetatypeMetadata();
      v40 = String.init<A>(describing:)();
      v42 = sub_100004060(v40, v41, &v101);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s#request(sections:completion:) 'viewModelSource.sectionsContext' is nil unexpectedly.", v38, 0xCu);
      sub_100004758(v39);
    }

    goto LABEL_41;
  }

  v82 = v0 + 8;
  v0[8] = _swiftEmptyArrayStorage;
  v101 = _swiftEmptyArrayStorage;
  v92 = v0;
  if (v91)
  {
    v9 = 0;
    v10 = v0[24];
    v11 = *(v10 + 16);
    v10 += 16;
    v89 = v11;
    aBlock = (v0[9] + ((*(v10 + 64) + 32) & ~*(v10 + 64)));
    v84 = v0[17];
    v95 = v0[14] + 8;
    v83 = v0[14];
    v86 = (v0[20] + 8);
    v87 = *(v10 + 56);
    v90 = v10;
    v85 = (v10 - 8);
    (v11)(v0[26], aBlock, v0[23]);
    while (2)
    {
      TTRSection.sectionID.getter();
      v14 = sub_1002E39E0();
      if (v14[2] && (v15 = sub_1003AB5F4(v0[21]), (v16 & 1) != 0))
      {
        (*(v84 + 16))(v0[18], v14[7] + *(v84 + 72) * v15, v0[16]);

        v17 = REMRemindersListDataView.SectionLite.reminders.getter();
        v102 = _swiftEmptyArrayStorage;
        v18 = *(v17 + 16);
        if (v18)
        {
          v93 = v9;
          v19 = v17 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
          v97 = *(v83 + 72);
          v20 = *(v83 + 16);
          do
          {
            v20(v92[15], v19, v92[13]);
            REMRemindersListDataView.ReminderLite.objectID.getter();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v21 = v92[15];
            v22 = v92[13];
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v23 = v102;
            (*v95)(v21, v22);
            v19 += v97;
            --v18;
          }

          while (v18);

          v9 = v93;
        }

        else
        {

          v23 = _swiftEmptyArrayStorage;
        }

        v26 = v92[21];
        v27 = v92[19];
        (*(v84 + 8))(v92[18], v92[16]);
        (*v86)(v26, v27);
      }

      else
      {
        v24 = v0[21];
        v25 = v0[19];

        (*v86)(v24, v25);
        v23 = _swiftEmptyArrayStorage;
      }

      v102 = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v28 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = 0;
      v94 = v9 + 1;
      v98 = _swiftEmptyArrayStorage;
      while (v28 != v29)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v29 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v30 = *(v23 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v33 = (*(v5 + 256))(v30, v99, v5);

        ++v29;
        if (v33)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v98 = v102;
          v29 = v32;
        }
      }

      v0 = v92;
      v12 = v92[26];
      v13 = v92[23];

      sub_100081874(v98);
      (*v85)(v12, v13);
      ++v9;
      if (v94 != v91)
      {
        (v89)(v92[26], &aBlock[v94 * v87], v92[23]);
        continue;
      }

      break;
    }

    v95 = v101;
  }

  else
  {
    v95 = _swiftEmptyArrayStorage;
  }

  aBlock = (v0 + 2);
  v45 = v0[22];
  v46 = v0[19];
  v47 = v0[20];
  v90 = enum case for TTRSectionID.sectionless(_:);
  v89 = *(v47 + 104);
  v89(v45);
  v29 = sub_1002E3A40(v45, 0);
  v98 = *(v47 + 8);
  v98(v45, v46);
  v102 = _swiftEmptyArrayStorage;
  if (v29 >> 62)
  {
LABEL_67:
    v100 = v29 & 0xFFFFFFFFFFFFFF8;
    v48 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v100 = v29 & 0xFFFFFFFFFFFFFF8;
    v48 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = 0;
  v96 = _swiftEmptyArrayStorage;
  while (v48 != v49)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v49 >= *(v100 + 16))
      {
        goto LABEL_66;
      }

      v50 = *(v29 + 8 * v49 + 32);
    }

    v51 = v50;
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_65;
    }

    v53 = swift_getObjectType();
    v54 = (*(v5 + 256))(v51, v53, v5);

    ++v49;
    if (v54)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v96 = v102;
      v49 = v52;
    }
  }

  if (v95 >> 62)
  {
    v55 = v92;
    v56 = v96;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_62;
    }
  }

  else
  {
    v55 = v92;
    v56 = v96;
    if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_62:
      sub_100081874(v95);
      goto LABEL_70;
    }
  }

LABEL_70:
  if (*(v55 + 288) != 1)
  {
    goto LABEL_75;
  }

  if (v56 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_73;
    }

LABEL_75:

    goto LABEL_76;
  }

  if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_75;
  }

LABEL_73:
  sub_100081874(v56);
LABEL_76:
  v57 = v55[8];
  v55[34] = v57;
  if (v57 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_78:
      v58 = 0;
      v59 = v55[24];
      do
      {
        v60 = v58;
        if (v91 == v58)
        {
          break;
        }

        v61 = v92[25];
        v63 = v92[22];
        v62 = v92[23];
        v64 = v92[19];
        (*(v59 + 16))(v61, v92[9] + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v58++, v62);
        TTRSection.sectionID.getter();
        v65 = sub_1002E3E88(v63);
        v98(v63, v64);
        (*(v59 + 8))(v61, v62);
      }

      while ((v65 & 1) == 0);
      v66 = v92[22];
      v67 = v92[19];
      (v89)(v66, v90, v67);
      v68 = sub_1002E3E88(v66);
      v98(v66, v67);
      v69 = swift_task_alloc();
      v92[35] = v69;
      *v69 = v92;
      v69[1] = sub_10025688C;

      sub_10025E5C0(v91 > 1, (v91 != v60) | v68 & 1);
      return;
    }
  }

  else if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_78;
  }

  v70 = v55[32];
  v72 = v55[10];
  v71 = v55[11];
  v73 = v55[9];
  v74 = swift_getObjectType();
  (*(v70 + 344))(v72, 1, v74, v70);
  static TTRLocalizableStrings.UndoAction.deleteSection.getter();
  v75 = objc_opt_self();
  v76 = String._bridgeToObjectiveC()();

  v77 = swift_allocObject();
  v77[2] = v71;
  v77[3] = v73;
  v77[4] = v82;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_1002628D0;
  *(v78 + 24) = v77;
  v55[6] = sub_100068444;
  v55[7] = v78;
  v55[2] = _NSConcreteStackBlock;
  v55[3] = 1107296256;
  v55[4] = sub_100026440;
  v55[5] = &unk_10071CE58;
  v79 = _Block_copy(aBlock);
  v0 = v55;

  [v75 withActionName:v76 block:v79];

  _Block_release(v79);
  LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

  if (v71)
  {
    __break(1u);
    return;
  }

  if (v55[30] || !*(v55 + 288))
  {
    swift_unknownObjectRelease();

    v43 = 1;
  }

  else
  {
    v81 = sub_1002E58D8(0, v55[33], v80);
    swift_unknownObjectRelease();
    v43 = v81 ^ 1;
  }

LABEL_42:

  v44 = v0[1];

  v44(v43 & 1);
}

uint64_t sub_10025688C(char a1)
{
  v2 = *v1;
  *(*v1 + 289) = a1;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);

  return _swift_task_switch(sub_1002569B4, v4, v3);
}

void sub_1002569B4()
{
  v1 = *(v0 + 289);

  if (v1)
  {
    v2 = *(v0 + 256);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 72);
    ObjectType = swift_getObjectType();
    (*(v2 + 344))(v4, 1, ObjectType, v2);
    static TTRLocalizableStrings.UndoAction.deleteSection.getter();
    v7 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();

    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v5;
    v9[4] = v0 + 64;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1002628D0;
    *(v10 + 24) = v9;
    *(v0 + 48) = sub_100068444;
    *(v0 + 56) = v10;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100026440;
    *(v0 + 40) = &unk_10071CE58;
    v11 = _Block_copy((v0 + 16));

    [v7 withActionName:v8 block:v11];

    _Block_release(v11);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
      return;
    }

    if (*(v0 + 240) || !*(v0 + 288))
    {
      swift_unknownObjectRelease();

      v14 = 1;
    }

    else
    {
      v13 = sub_1002E58D8(0, *(v0 + 264), v12);
      swift_unknownObjectRelease();
      v14 = v13 ^ 1;
    }
  }

  else
  {

    swift_unknownObjectRelease();
    v14 = 0;
  }

  v15 = *(v0 + 8);

  v15(v14 & 1);
}

void sub_100256C8C(void *a1)
{
  v27[1] = *v1;
  v28 = type metadata accessor for REMAnalyticsEvent();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x49746E756F636361;
  *(inited + 40) = 0xE900000000000044;
  v8 = [a1 objectID];
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v8;
  v9 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminder List permanently hide all deleted reminders {items: %@, accountID: %@}", 79, 2, v9);

  type metadata accessor for TTRUserDefaults();
  v10 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v11 = sub_100058000(&qword_1007757E8, &unk_100635E60);
  v12 = &v5[*(v11 + 48)];
  v13 = *(v11 + 80);
  v27[0] = a1;
  v14 = &v5[v13];
  v15 = enum case for REMRDLUserOperationDetail.rdl_permanentlyDeleteAll(_:);
  v16 = type metadata accessor for REMRDLUserOperationDetail();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v5, v15, v16);
  (*(v17 + 56))(v5, 0, 1, v16);
  v18 = enum case for REMUserOperation.permanentlyDeleteReminder(_:);
  v19 = type metadata accessor for REMUserOperation();
  (*(*(v19 - 8) + 104))(v5, v18, v19);
  *v12 = TTRUserDefaults.activitySessionId.getter();
  v12[1] = v20;
  TTRUserDefaults.activitySessionBeginTime.getter();
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v21 = _typeName(_:qualified:)();
  v23 = v22;

  v29 = v21;
  v30 = v23;
  v24._object = 0x8000000100679500;
  v24._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v24);
  v25 = v30;
  *v14 = v29;
  *(v14 + 1) = v25;
  v26 = v28;
  (*(v3 + 104))(v5, enum case for REMAnalyticsEvent.userOperation(_:), v28);
  REMAnalyticsManager.post(event:)();

  (*(v3 + 8))(v5, v26);
  swift_getObjectType();
  dispatch thunk of TTRRemindersListInteractorType.permanentlyHideAllInRecentlyDeletedList(in:)();
}

uint64_t sub_1002570A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = a2;
  v4 = sub_100058000(&qword_100776298, &qword_100636860);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = *(a1 + 72);
  ObjectType = swift_getObjectType();
  (*(v14 + 576))(ObjectType, v14);
  (*(v8 + 104))(v10, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v7);
  v16 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v13, v7);
  if (v16)
  {
    v18 = v24;
    (*(v14 + 608))(ObjectType, v14);
  }

  else
  {
    v19 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
    v18 = v24;
    (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  }

  sub_10000794C(v18, v6, &qword_10076DF30, &qword_100631A00);
  v20 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
  v21 = v25;
  swift_beginAccess();
  return sub_10000D184(v6, v21, &qword_100776298, &qword_100636860);
}

uint64_t sub_100257370(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v62 = a3;
  v53 = a1;
  v7 = sub_100058000(&qword_100775928, &qword_100635F68);
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v58 = &v43 - v8;
  v9 = type metadata accessor for TTRRemindersListSetCompletedResult();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TTRRemindersListSetCompletedOptions();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  v50 = a2;
  if (v17)
  {
    v19 = *(v13 + 16);
    v18 = v13 + 16;
    v63 = v19;
    v20 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v21 = *(v18 + 56);
    v22 = _swiftEmptyArrayStorage;
    v54 = v12;
    v55 = a4;
    v59 = v21;
    v60 = v18;
    (v19)(v16, v20, v12, v14);
    while (1)
    {
      if (v62)
      {
        v24 = *(a4 + 72);
        ObjectType = swift_getObjectType();
        v25 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
        if (v25)
        {
          v26 = v25;
          if ([v25 isRecurrent])
          {
            v27 = *(v57 + 48);
            v28 = v12;
            v29 = v22;
            v30 = v58;
            v63(v58, v16, v28);
            *(v30 + v27) = v26;
            v22 = v29;
            v31 = v26;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_1005480F0(0, v29[2] + 1, 1, v29);
            }

            v33 = v22[2];
            v32 = v22[3];
            v34 = v33 + 1;
            v12 = v54;
            if (v33 >= v32 >> 1)
            {
              v44 = v33 + 1;
              v35 = sub_1005480F0((v32 > 1), v33 + 1, 1, v22);
              v34 = v44;
              v22 = v35;
            }

            v22[2] = v34;
            sub_100016588(v58, v22 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v33, &qword_100775928, &qword_100635F68);
            a4 = v55;
          }

          (*(v24 + 456))(v16, v26, ObjectType, v24);
        }

        v21 = v59;
      }

      (*(v18 - 8))(v16, v12);
      v20 += v21;
      if (!--v17)
      {
        break;
      }

      (v63)(v16, v20, v12, v23);
    }
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v36 = swift_allocObject();
  v37 = v47;
  v36[2] = a4;
  v36[3] = v37;
  v36[4] = a4;
  v36[5] = v22;
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = v22;
  v38[4] = v37;
  v38[5] = a4;
  v39 = swift_allocObject();
  *(v39 + 16) = v22;
  *(v39 + 24) = a4;
  *(v39 + 32) = v62 & 1;
  *(v39 + 40) = v50;
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  v40 = v45;
  TTRRemindersListSetCompletedOptions.init(afterDateProviderForAdvancingForwardRecurrence:editBeforeAdvancingForwardRecurrence:orderClonedInSmartList:updateClonedMemberships:concludeEditing:)();
  sub_10000C36C(v53, v53[3]);
  v41 = v49;
  dispatch thunk of TTRRemindersListAttributeEditing.setCompleted(_:options:)();
  (*(v51 + 8))(v41, v52);
  return (*(v46 + 8))(v40, v48);
}

uint64_t sub_1002578F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v94 = a6;
  v81 = a3;
  v85 = a2;
  v99 = a1;
  v80 = sub_100058000(&unk_100775620, &unk_1006305B0);
  v77 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = (&v72 - v9);
  v97 = sub_100058000(&qword_100775928, &qword_100635F68);
  v90 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v72 - v12;
  __chkstk_darwin(v13);
  v95 = &v72 - v14;
  v15 = sub_100058000(&qword_100776298, &qword_100636860);
  __chkstk_darwin(v15 - 8);
  v17 = &v72 - v16;
  v18 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v72 - v20;
  v22 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v84 = *(v22 - 8);
  __chkstk_darwin(v22);
  v86 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a4 + 72);
  v82 = a4;
  ObjectType = swift_getObjectType();
  if (!(*(v24 + 40))(ObjectType, v24) || (swift_getObjectType(), v26 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter(), result = swift_unknownObjectRelease(), (v26 & 1) == 0))
  {
    v28 = swift_projectBox();
    swift_beginAccess();
    sub_10000794C(v28, v17, &qword_100776298, &qword_100636860);
    v29 = *(v19 + 48);
    if (v29(v17, 1, v18) == 1)
    {
      sub_1002570A4(v94, v28, v21);
      v30 = v29(v17, 1, v18);
      v31 = v84;
      if (v30 != 1)
      {
        sub_1000079B4(v17, &qword_100776298, &qword_100636860);
      }
    }

    else
    {
      sub_100016588(v17, v21, &qword_10076DF30, &qword_100631A00);
      v31 = v84;
    }

    if ((*(v31 + 48))(v21, 1, v22) == 1)
    {
      return sub_1000079B4(v21, &qword_10076DF30, &qword_100631A00);
    }

    v32 = *(v31 + 32);
    v73 = v22;
    v32(v86, v21, v22);
    v94 = *(a7 + 16);
    if (v94)
    {
      v93 = *(v97 + 48);
      v33 = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v34 = 0;
      v92 = v99 & 0xC000000000000001;
      v91 = a7 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v35 = *(v90 + 72);
      v36 = v99 & 0xFFFFFFFFFFFFFF8;
      if (v99 < 0)
      {
        v36 = v99;
      }

      v89 = v36;
      v90 = v35;
      v88 = v85 & 0xC000000000000001;
      v37 = v85 & 0xFFFFFFFFFFFFFF8;
      if (v85 < 0)
      {
        v37 = v85;
      }

      v83 = v37;
      v76 = enum case for TTRRelativeInsertionPosition.before<A>(_:);
      v75 = (v77 + 104);
      v74 = (v77 + 8);
      v38 = &qword_100635F68;
      v78 = v33;
      v87 = v99 + 56;
      do
      {
        v40 = v95;
        sub_10000794C(v91 + v90 * v34, v95, &qword_100775928, v38);
        v41 = *(v40 + v93);
        v42 = v97;
        v43 = *(v97 + 48);
        v44 = type metadata accessor for TTRRemindersListViewModel.Item();
        v45 = *(v44 - 8);
        v46 = v38;
        v47 = v98;
        (*(v45 + 32))(v98, v40, v44);
        *(v47 + v43) = v41;
        v48 = v47;
        v38 = v46;
        v49 = v96;
        sub_10000794C(v48, v96, &qword_100775928, v46);
        v50 = *(v49 + *(v42 + 48));
        (*(v45 + 8))(v49, v44);
        v51 = [v50 objectID];
        v39 = v51;
        if (v92)
        {
          v52 = v51;
          v53 = __CocoaSet.contains(_:)();

          if ((v53 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v58 = v99;
          if (!*(v99 + 16))
          {
            goto LABEL_16;
          }

          v59 = NSObject._rawHashValue(seed:)(*(v99 + 40));
          v60 = -1 << *(v58 + 32);
          v61 = v59 & ~v60;
          if (((*(v87 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
          {
            goto LABEL_16;
          }

          v62 = ~v60;
          v63 = v87;
          while (1)
          {
            v64 = *(*(v58 + 48) + 8 * v61);
            v65 = static NSObject.== infix(_:_:)();

            if (v65)
            {
              break;
            }

            v61 = (v61 + 1) & v62;
            v58 = v99;
            if (((*(v63 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
            {
              goto LABEL_16;
            }
          }
        }

        v54 = [v50 objectID];
        v39 = v54;
        if (v88)
        {
          v55 = v54;
          v56 = __CocoaDictionary.lookup(_:)();

          if (!v56)
          {
            v39 = v55;
LABEL_16:

            goto LABEL_17;
          }

          v100 = v56;
          sub_100003540(0, &qword_1007756E0, REMReminderChangeItem_ptr);
          swift_dynamicCast();
          v57 = v101;

          if (v57)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v66 = v85;
          if (!*(v85 + 16))
          {
            goto LABEL_16;
          }

          v67 = sub_1002613B0(v54);
          if ((v68 & 1) == 0)
          {
            goto LABEL_16;
          }

          v57 = *(*(v66 + 56) + 8 * v67);

          if (v57)
          {
LABEL_34:
            v77 = *(v82 + 56);
            swift_getObjectType();
            v69 = v79;
            *v79 = v50;
            v70 = v80;
            (*v75)(v69, v76, v80);
            v71 = v50;
            dispatch thunk of TTRRemindersListInteractorType.updateManualOrdering(completedRecurrentReminderChangeItem:position:paramsForREMManualOrdering:saveRequest:)();

            (*v74)(v69, v70);
            sub_1000079B4(v98, &qword_100775928, v38);
            goto LABEL_18;
          }
        }

LABEL_17:
        sub_1000079B4(v98, &qword_100775928, v38);

LABEL_18:
        ++v34;
      }

      while (v34 != v94);
    }

    return (*(v84 + 8))(v86, v73);
  }

  return result;
}

uint64_t sub_1002581F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v118 = a6;
  v130 = a5;
  v121 = a2;
  v139 = a1;
  v8 = type metadata accessor for TTRRemindersListREMManualOrderingSaveTarget();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v119 = &v101[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100058000(&qword_100776298, &qword_100636860);
  __chkstk_darwin(v11 - 8);
  v131 = &v101[-v12];
  v13 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  v128 = *(v13 - 8);
  v129 = v13;
  __chkstk_darwin(v13);
  v132 = &v101[-v14];
  v15 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v16 = *(v15 - 8);
  v135 = v15;
  v136 = v16;
  __chkstk_darwin(v15);
  v125 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for TTRListOrCustomSmartList();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v120 = &v101[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = type metadata accessor for TTRSectionID();
  v134 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v101[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v112 = &v101[-v23];
  __chkstk_darwin(v24);
  v126 = &v101[-v25];
  v140 = sub_100058000(&qword_100775928, &qword_100635F68);
  v127 = *(v140 - 8);
  __chkstk_darwin(v140);
  v27 = &v101[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v30 = &v101[-v29];
  v31 = *(a3 + 72);
  ObjectType = swift_getObjectType();
  result = (*(v31 + 104))(ObjectType, v31);
  v137 = result;
  if (!result)
  {
    return result;
  }

  v113 = v19;
  v114 = v9;
  v115 = v18;
  v116 = v8;
  v117 = a3;
  v142 = _swiftEmptyArrayStorage;
  v34 = *(a4 + 16);
  v110 = a4;
  v111 = v34;
  if (v34)
  {
    v35 = a4 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
    v36 = *(v127 + 72);
    v141 = _swiftEmptyArrayStorage;
    do
    {
      sub_10000794C(v35, v30, &qword_100775928, &qword_100635F68);
      sub_10000794C(v30, v27, &qword_100775928, &qword_100635F68);
      v37 = *&v27[*(v140 + 48)];
      v38 = [v37 objectID];

      sub_1000079B4(v30, &qword_100775928, &qword_100635F68);
      v39 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v39 - 8) + 8))(v27, v39);
      if (v38)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v141 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v141 = v142;
      }

      v35 += v36;
      --v34;
    }

    while (v34);
  }

  else
  {
    v141 = _swiftEmptyArrayStorage;
  }

  v40 = v141;

  v42 = sub_10001D5F8(v41);

  v124 = sub_1002E28FC(v42);

  if (v40 >> 62)
  {
LABEL_64:
    v43 = v40 & 0xFFFFFFFFFFFFFF8;
    v44 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v43 = v40 & 0xFFFFFFFFFFFFFF8;
    v44 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v136;
  v46 = v139 & 0xFFFFFFFFFFFFFF8;
  if (v139 < 0)
  {
    v46 = v139;
  }

  v138 = v46;
  if (!v44)
  {
    v133 = &_swiftEmptyDictionarySingleton;
    goto LABEL_48;
  }

  v47 = 0;
  v48 = v40 & 0xC000000000000001;
  v49 = v139 & 0xC000000000000001;
  v109 = (v134 + 16);
  v107 = v134 + 32;
  v106 = enum case for TTRSectionID.sectionless(_:);
  v105 = (v134 + 104);
  v108 = v134 + 8;
  v104 = v134 + 40;
  v133 = &_swiftEmptyDictionarySingleton;
  while (2)
  {
    v50 = v47;
    while (1)
    {
      if (v48)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v50 >= *(v43 + 16))
        {
          goto LABEL_63;
        }

        v51 = *(v40 + 8 * v50 + 32);
      }

      v52 = v51;
      v47 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      if (v49)
      {
        v53 = v51;
        v54 = __CocoaDictionary.lookup(_:)();

        if (!v54)
        {
          goto LABEL_18;
        }

        v143 = v54;
        sub_100003540(0, &qword_1007756E0, REMReminderChangeItem_ptr);
        swift_dynamicCast();
        v55 = v142;
      }

      else
      {
        if (!*(v139 + 16))
        {
          goto LABEL_18;
        }

        v56 = sub_1002613B0(v51);
        if ((v57 & 1) == 0)
        {
          goto LABEL_18;
        }

        v55 = *(*(v139 + 56) + 8 * v56);
      }

      if (v55)
      {
        break;
      }

LABEL_18:

      ++v50;
      v40 = v141;
      if (v47 == v44)
      {
        v45 = v136;
        goto LABEL_48;
      }
    }

    v58 = v124;
    if (v124[2] && (v59 = sub_1002613B0(v52), (v60 & 1) != 0))
    {
      v61 = v134;
      v62 = v58[7] + *(v134 + 72) * v59;
      v63 = v123;
      (*(v134 + 16))(v112, v62, v123);
      (*(v61 + 32))(v126, v112, v63);
    }

    else
    {
      v63 = v123;
      (*v105)(v126, v106, v123);
    }

    v64 = [v55 remObjectID];
    (*v109)(v122, v126, v63);
    v65 = v133;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v142 = v65;
    v103 = v64;
    v67 = sub_1002613B0(v64);
    v68 = v65[2];
    v69 = (v66 & 1) == 0;
    v70 = v68 + v69;
    if (__OFADD__(v68, v69))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v65[3] < v70)
    {
      LODWORD(v133) = v66;
      sub_100549434(v70, isUniquelyReferenced_nonNull_native);
      v71 = sub_1002613B0(v103);
      v72 = v66 & 1;
      LOBYTE(v66) = v133;
      if ((v133 & 1) == v72)
      {
        v67 = v71;
        goto LABEL_40;
      }

LABEL_67:
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_68:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      LODWORD(v133) = v66;
      sub_1003AE274();
      LOBYTE(v66) = v133;
    }

LABEL_40:
    v73 = v142;
    v133 = v142;
    if ((v66 & 1) == 0)
    {
      *(v142 + 8 * (v67 >> 6) + 64) |= 1 << v67;
      *(v73[6] + 8 * v67) = v103;
      v77 = v73[7] + *(v134 + 72) * v67;
      v78 = v123;
      (*(v134 + 32))(v77, v122, v123);

      (*(v134 + 8))(v126, v78);
      v79 = v73[2];
      v80 = __OFADD__(v79, 1);
      v81 = v79 + 1;
      if (!v80)
      {
        v73[2] = v81;
        goto LABEL_44;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v74 = v134;
    v75 = *(v142 + 56) + *(v134 + 72) * v67;
    v76 = v123;
    (*(v134 + 40))(v75, v122, v123);

    (*(v74 + 8))(v126, v76);
LABEL_44:
    v45 = v136;
    v40 = v141;

    if (v47 != v44)
    {
      continue;
    }

    break;
  }

LABEL_48:
  v82 = swift_projectBox();
  swift_beginAccess();
  v83 = v131;
  sub_10000794C(v82, v131, &qword_100776298, &qword_100636860);
  v84 = v129;
  v85 = *(v128 + 48);
  if (v85(v83, 1, v129) == 1)
  {
    v86 = v132;
    sub_1002570A4(v118, v82, v132);
    v87 = v85(v83, 1, v84);
    v88 = v116;
    v89 = v115;
    v90 = v114;
    v91 = v113;
    if (v87 != 1)
    {
      sub_1000079B4(v83, &qword_100776298, &qword_100636860);
    }
  }

  else
  {
    v86 = v132;
    sub_100016588(v83, v132, &qword_10076DF30, &qword_100631A00);
    v88 = v116;
    v89 = v115;
    v90 = v114;
    v91 = v113;
  }

  v92 = v135;
  if ((*(v45 + 48))(v86, 1, v135) == 1)
  {

    sub_1000079B4(v86, &qword_10076DF30, &qword_100631A00);
    if (!v111)
    {
      swift_unknownObjectRelease();
    }

    sub_10000794C(v110 + ((*(v127 + 80) + 32) & ~*(v127 + 80)), v27, &qword_100775928, &qword_100635F68);
    v93 = *&v27[*(v140 + 48)];
    v94 = [v93 list];

    v95 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v95 - 8) + 8))(v27, v95);
    v96 = &enum case for TTRListOrCustomSmartList.list(_:);
LABEL_57:
    v100 = v120;
    *v120 = v94;
    (*(v91 + 104))(v100, *v96, v89);
    swift_getObjectType();
    dispatch thunk of TTRRemindersListInteractorType.updateMembershipsOfReminders(with:sectionIDByClonedReminderIDs:saveRequest:)();
    swift_unknownObjectRelease();

    return (*(v91 + 8))(v100, v89);
  }

  v97 = v125;
  (*(v45 + 32))(v125, v86, v92);
  v98 = v119;
  TTRRemindersMovingParamsForREMManualOrdering.saveTarget.getter();
  v99 = (*(v90 + 88))(v98, v88);
  if (v99 == enum case for TTRRemindersListREMManualOrderingSaveTarget.smartList(_:))
  {
    (*(v45 + 8))(v97, v92);

    (*(v90 + 96))(v98, v88);
    v94 = *v98;
    v96 = &enum case for TTRListOrCustomSmartList.customSmartList(_:);
    goto LABEL_57;
  }

  if (v99 != enum case for TTRRemindersListREMManualOrderingSaveTarget.template(_:))
  {
    goto LABEL_68;
  }

  (*(v45 + 8))(v125, v135);
  swift_unknownObjectRelease();

  return (*(v90 + 8))(v98, v88);
}

void sub_1002590BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v55 = a5;
  v56 = a3;
  v58 = a4;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100775920, &qword_100635F60);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v57 = TTRRemindersListSetCompletedResult.editedObjectIDs.getter();
  v16 = TTRRemindersListSetCompletedResult.clonedRecurrentReminders.getter();
  v62 = a2;
  v17 = *(a2 + 16);
  v59 = sub_100548114(0, v17, 0, _swiftEmptyArrayStorage);
  v69 = 0;
  v66 = v16 & 0xC000000000000001;
  v67 = (v7 + 32);
  v19 = v16 & 0xFFFFFFFFFFFFFF8;
  if (v16 < 0)
  {
    v19 = v16;
  }

  v63 = v19;
  v64 = v16;
  v65 = (v7 + 8);
  v20 = v6;
  *&v18 = 138412290;
  v60 = v18;
  v61 = v15;
  v68 = v17;
  while (1)
  {
    if (v69 == v17)
    {
      v27 = sub_100058000(&qword_100775928, &qword_100635F68);
      (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
      v69 = v17;
    }

    else
    {
      if (v69 >= v17)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      v28 = sub_100058000(&qword_100775928, &qword_100635F68);
      v29 = *(v28 - 8);
      v30 = v69;
      sub_10000794C(v62 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v69, v12, &qword_100775928, &qword_100635F68);
      v69 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_31;
      }

      (*(v29 + 56))(v12, 0, 1, v28);
    }

    sub_100016588(v12, v15, &qword_100775920, &qword_100635F60);
    v31 = sub_100058000(&qword_100775928, &qword_100635F68);
    if ((*(*(v31 - 8) + 48))(v15, 1, v31) == 1)
    {
      break;
    }

    v32 = *&v15[*(v31 + 48)];
    (*v67)(v9, v15, v20);
    v33 = [v32 objectID];
    v34 = v33;
    if (v66)
    {
      v35 = v33;
      v36 = __CocoaDictionary.lookup(_:)();

      if (!v36)
      {
        goto LABEL_22;
      }

      v70 = v36;
      sub_100003540(0, &qword_1007756E0, REMReminderChangeItem_ptr);
      swift_dynamicCast();
      v37 = v71;

      if (!v37)
      {
        goto LABEL_23;
      }

LABEL_19:
      v54 = v20;
      v40 = v59[2];
      v41 = v59[3];
      v42 = v32;
      v43 = v37;
      if (v40 >= v41 >> 1)
      {
        v59 = sub_100548114((v41 > 1), v40 + 1, 1, v59);
      }

      v44 = v59;
      v59[2] = v40 + 1;
      v45 = &v44[2 * v40];
      v45[4] = v42;
      v45[5] = v43;
      v46 = *(v56 + 72);
      ObjectType = swift_getObjectType();
      (*(v46 + 464))(v9, v43, ObjectType, v46);

      v20 = v54;
      (*v65)(v9, v54);
      v17 = v68;
    }

    else
    {
      if (!*(v64 + 16) || (v38 = sub_1002613B0(v33), (v39 & 1) == 0))
      {
LABEL_22:

        goto LABEL_23;
      }

      v37 = *(*(v64 + 56) + 8 * v38);

      if (v37)
      {
        goto LABEL_19;
      }

LABEL_23:
      if (qword_100767028 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_100003E30(v48, qword_100776068);
      v49 = v32;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v21 = swift_slowAlloc();
        v22 = v9;
        v23 = v20;
        v24 = swift_slowAlloc();
        *v21 = v60;
        v25 = [v49 objectID];
        *(v21 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v50, v51, "Missing cloned reminder change item {original: %@}", v21, 0xCu);
        sub_1000079B4(v24, &unk_10076DF80, &qword_10062F730);
        v20 = v23;
        v9 = v22;
        v15 = v61;

        v26 = v49;
      }

      else
      {
        v26 = v50;
        v50 = v49;
      }

      v17 = v68;

      (*v65)(v9, v20);
    }
  }

  if (v58)
  {
    v52 = *(v56 + 72);
    v53 = swift_getObjectType();
    (*(v52 + 472))(v57, v59, v53, v52);

    sub_100245068(v55);
  }

  else
  {
  }
}

void sub_1002597AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v16 = 0;
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = swift_allocObject();
  v12[2] = &v16;
  v12[3] = v6;
  v12[4] = a1;
  v12[5] = a4;
  v12[6] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100262938;
  *(v13 + 24) = v12;
  aBlock[4] = sub_100068444;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10071CF70;
  v14 = _Block_copy(aBlock);

  [v10 withActionName:v11 block:v14];

  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_100259968(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(a1, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002599EC(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v157 = a2;
  v148 = a5;
  v149 = a4;
  v147 = a3;
  v155 = a1;
  v5 = sub_100058000(&qword_100775970, &qword_100632680);
  __chkstk_darwin(v5 - 8);
  v141 = &v131 - v6;
  v7 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v142 = *(v7 - 8);
  v143 = v7;
  __chkstk_darwin(v7);
  v135 = (&v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v136 = &v131 - v10;
  v11 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v11 - 8);
  v152 = &v131 - v12;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(v13 - 8);
  v150 = v13;
  v151 = v14;
  __chkstk_darwin(v13);
  v154 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for REMManualOrdering.ChangeReason();
  v139 = *(v16 - 8);
  v140 = v16;
  __chkstk_darwin(v16);
  v138 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  __chkstk_darwin(v18 - 8);
  v132 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v131 = &v131 - v21;
  __chkstk_darwin(v22);
  v153 = &v131 - v23;
  __chkstk_darwin(v24);
  v137 = &v131 - v25;
  __chkstk_darwin(v26);
  v28 = &v131 - v27;
  v29 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v145 = *(v29 - 8);
  v146 = v29;
  __chkstk_darwin(v29);
  v134 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v133 = &v131 - v32;
  __chkstk_darwin(v33);
  v35 = &v131 - v34;
  __chkstk_darwin(v36);
  v38 = &v131 - v37;
  v39 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v144 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for TTRSection();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v45 = (&v131 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v46);
  v48 = &v131 - v47;
  v49 = type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType(0);
  __chkstk_darwin(v49 - 8);
  v51 = &v131 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100262D10(v157, v51, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
  v52 = sub_100058000(&qword_100776320, &qword_1006368F0);
  v53 = (*(*(v52 - 8) + 48))(v51, 2, v52);
  if (!v53)
  {
    v152 = v35;
    v67 = v153;
    v154 = v38;
    v43[4](v48, v51, v42);
    v68 = v43[2];
    v157 = v48;
    v68(v45, v48, v42);
    v69 = (v43[11])(v45, v42);
    if (v69 != enum case for TTRSection.listSection(_:))
    {
      if (v69 == enum case for TTRSection.smartListSection(_:))
      {
        v75 = v43[12];
        v153 = v42;
        (v75)(v45, v42);
        v76 = *v45;
        v77 = *(v156 + 72);
        ObjectType = swift_getObjectType();
        v79 = *(v77 + 608);
        v80 = v137;
        v151 = ObjectType;
        v79(ObjectType, v77);
        v82 = v145;
        v81 = v146;
        v83 = *(v145 + 48);
        v84 = v83(v80, 1, v146);
        v152 = v76;
        if (v84 == 1)
        {
          v85 = [v76 smartList];
          v86 = v28;
          (*(v77 + 616))();

          v81 = v146;
          if (v83(v80, 1, v146) != 1)
          {
            sub_1000079B4(v80, &qword_10076DF30, &qword_100631A00);
          }
        }

        else
        {
          v86 = v28;
          (*(v82 + 32))(v28, v80, v81);
          (*(v82 + 56))(v28, 0, 1, v81);
        }

        v106 = v83(v86, 1, v81);
        v107 = v154;
        if (v106 != 1)
        {
          v108 = v145;
          (*(v145 + 32))(v154, v86, v81);
          v109 = v43;
          swift_getObjectType();
          v111 = v138;
          v110 = v139;
          v112 = v140;
          (*(v139 + 104))(v138, enum case for REMManualOrdering.ChangeReason.moveWithinList(_:), v140);
          v113 = v152;
          dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)();

          (*(v110 + 8))(v111, v112);
          (*(v108 + 8))(v107, v81);
          (v109[1])(v157, v153);
          return 1;
        }

        (v43[1])(v157, v153);

        v65 = &qword_10076DF30;
        v66 = &qword_100631A00;
        v105 = v86;
        goto LABEL_40;
      }

      v97 = v42;
      v98 = v145;
      if (v69 == enum case for TTRSection.templateSection(_:))
      {
        (v43[12])(v45, v97);
        v154 = *v45;
        v99 = v43;
        v100 = *(v156 + 72);
        v101 = swift_getObjectType();
        (*(v100 + 608))(v101, v100);
        v102 = v146;
        v103 = (*(v98 + 48))(v67, 1, v146);
        v104 = v152;
        if (v103 != 1)
        {
          (*(v98 + 32))(v152, v67, v102);
          swift_getObjectType();
          v115 = v139;
          v114 = v140;
          v116 = *(v139 + 104);
          v153 = v97;
          v117 = v138;
          v116(v138, enum case for REMManualOrdering.ChangeReason.moveWithinList(_:), v140);
          v118 = v154;
          dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)();

          (*(v115 + 8))(v117, v114);
          (*(v98 + 8))(v104, v102);
          (v99[1])(v157, v153);
          return 1;
        }

        (v99[1])(v157, v97);

        v65 = &qword_10076DF30;
        v66 = &qword_100631A00;
        v105 = v67;
        goto LABEL_40;
      }

      goto LABEL_59;
    }

    v154 = v43;
    (v43[12])(v45, v42);
    v70 = *v45;
    v71 = [*v45 list];
    v72 = v144;
    (*(v144 + 104))(v41, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v39);
    v73 = v149;
    v74 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    (*(v72 + 8))(v41, v39);
    if (v74)
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:)();
    }

    else
    {
      v94 = *(v156 + 72);
      v95 = swift_getObjectType();
      if (!(*(v94 + 624))(v71, v73, v95, v94))
      {
        (*(v154 + 1))(v157, v42);

        return 0;
      }

      swift_getObjectType();
      dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:initialUncompletedRemindersInTargetList:)();
    }

    v96 = v157;

    (*(v154 + 1))(v96, v42);
    return 1;
  }

  if (v53 != 1)
  {
    return 0;
  }

  v54 = v155;
  if (v155 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v154;
  v57 = v152;
  if (result)
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
      v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }

    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v58 = *(v54 + 32);
LABEL_9:
      v59 = v58;
      v60 = *(v156 + 72);
      v61 = swift_getObjectType();
      v62 = [v59 objectID];
      (*(v60 + 248))();

      v64 = v150;
      v63 = v151;
      if ((*(v151 + 48))(v57, 1, v150) == 1)
      {

        v65 = &qword_100772140;
        v66 = &qword_10062D9F0;
LABEL_39:
        v105 = v57;
LABEL_40:
        sub_1000079B4(v105, v65, v66);
        return 0;
      }

      (*(v63 + 32))(v56, v57, v64);
      v87 = (*(v60 + 104))(v61, v60);
      if (!v87)
      {
        (*(v63 + 8))(v56, v64);

        v57 = v141;
        (*(v142 + 56))(v141, 1, 1, v143);
LABEL_38:
        v65 = &qword_100775970;
        v66 = &qword_100632680;
        goto LABEL_39;
      }

      v88 = v87;
      Strong = swift_unknownObjectWeakLoadStrong();
      v90 = v142;
      if (!Strong)
      {
        swift_unknownObjectRelease();

        v57 = v141;
        (*(v90 + 56))(v141, 1, 1, v143);
        goto LABEL_37;
      }

      v91 = *(v88 + 64);
      swift_unknownObjectRelease();
      v92 = swift_getObjectType();
      v57 = v141;
      (*(v91 + 32))(v154, v92, v91);
      swift_unknownObjectRelease();
      v93 = v143;
      if ((*(v90 + 48))(v57, 1, v143) == 1)
      {

LABEL_37:
        (*(v151 + 8))(v154, v150);
        goto LABEL_38;
      }

      v119 = v136;
      (*(v90 + 32))(v136, v57, v93);
      v120 = v135;
      (*(v90 + 16))(v135, v119, v93);
      v121 = (*(v90 + 88))(v120, v93);
      if (v121 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.list(_:))
      {
        (*(v90 + 96))(v120, v93);
        v122 = *v120;
        swift_getObjectType();
        dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:)();

        (*(v90 + 8))(v119, v93);
LABEL_55:
        (*(v151 + 8))(v154, v150);
        return 1;
      }

      if (v121 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.smartList(_:))
      {
        (*(v90 + 96))(v120, v93);
        v123 = *v120;
        v57 = v131;
        (*(v60 + 608))(v61, v60);
        v124 = v145;
        v125 = v146;
        if ((*(v145 + 48))(v57, 1, v146) == 1)
        {

          (*(v90 + 8))(v119, v143);
LABEL_51:
          (*(v151 + 8))(v154, v150);
          v65 = &qword_10076DF30;
          v66 = &qword_100631A00;
          goto LABEL_39;
        }

        (*(v124 + 32))(v133, v57, v125);
        v156 = *(v156 + 56);
        v157 = swift_getObjectType();
        v128 = v138;
        v127 = v139;
        v129 = v140;
        (*(v139 + 104))(v138, enum case for REMManualOrdering.ChangeReason.moveWithinList(_:), v140);
        v130 = v133;
        dispatch thunk of TTRRemindersListInteractorType.move(reminders:toBeSectionlessInSmartList:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)();
        goto LABEL_54;
      }

      v126 = v145;
      if (v121 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.template(_:))
      {
        (*(v90 + 96))(v120, v93);
        v123 = *v120;
        v57 = v132;
        (*(v60 + 608))(v61, v60);
        v124 = v126;
        v125 = v146;
        if ((*(v126 + 48))(v57, 1, v146) == 1)
        {

          (*(v90 + 8))(v136, v143);
          goto LABEL_51;
        }

        (*(v126 + 32))(v134, v57, v125);
        v156 = *(v156 + 56);
        v157 = swift_getObjectType();
        v128 = v138;
        v127 = v139;
        v129 = v140;
        (*(v139 + 104))(v138, enum case for REMManualOrdering.ChangeReason.moveWithinList(_:), v140);
        v130 = v134;
        dispatch thunk of TTRRemindersListInteractorType.move(reminders:toBeSectionlessInTemplate:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)();
LABEL_54:

        (*(v127 + 8))(v128, v129);
        (*(v124 + 8))(v130, v125);
        (*(v90 + 8))(v136, v143);
        goto LABEL_55;
      }

LABEL_60:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_59:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_60;
  }

  return result;
}

double sub_10025AD2C(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076C938, &qword_1006308B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_100058000(&qword_100776200, &qword_100636788);
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_100058000(&qword_100776208, &qword_100636790);
  *&result = __chkstk_darwin(v14).n128_u64[0];
  v19 = &v29 - v18;
  if (!*(v2 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_fetchSuggestedSectionsCancellable))
  {
    v35 = v5;
    v42 = *(v2 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_fetchSuggestedSectionsPassthroughSubject);
    v37 = v15;
    v38 = v16;
    v39 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_fetchSuggestedSectionsCancellable;
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v34 = v4;

    v36 = v3;
    v30 = static OS_dispatch_queue.main.getter();
    v41 = v30;
    v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v33 = v11;
    v21 = v20;
    v22 = *(v20 - 8);
    v31 = *(v22 + 56);
    v32 = v22 + 56;
    v31(v10, 1, 1, v20);
    sub_100058000(&unk_1007755A0, &qword_100635CF0);
    v29 = v7;
    sub_10000E188(&qword_100776210, &unk_1007755A0, &qword_100635CF0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    sub_1000072CC(&qword_10076C960, &qword_100777780, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    Publisher.receive<A>(on:options:)();
    sub_1000079B4(v10, &qword_10076C938, &qword_1006308B0);

    v23 = v29;
    static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
    v24 = static OS_dispatch_queue.main.getter();
    v42 = v24;
    v31(v10, 1, 1, v21);
    sub_10000E188(&qword_100776218, &qword_100776200, &qword_100636788, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v25 = v23;
    v26 = v33;
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_1000079B4(v10, &qword_10076C938, &qword_1006308B0);

    (*(v35 + 8))(v25, v34);
    (*(v40 + 8))(v13, v26);
    sub_10000E188(&qword_100776220, &qword_100776208, &qword_100636790, &protocol conformance descriptor for Publishers.Debounce<A, B>);
    v27 = v37;
    v28 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v38 + 8))(v19, v27);
    *(v2 + v39) = v28;
  }

  return result;
}

uint64_t sub_10025B268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[0] = a6;
  v12[1] = a7;
  v7 = type metadata accessor for REMManualOrdering.ChangeReason();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v8 + 104))(v10, enum case for REMManualOrdering.ChangeReason.moveWithinList(_:), v7);
  dispatch thunk of TTRRemindersListInteractorType.move(reminders:position:initialSectionIDByReminderID:makeTopLevelInParentREMList:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10025B3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v13[0] = a5;
  v13[1] = a6;
  v8 = type metadata accessor for REMManualOrdering.ChangeReason();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v9 + 104))(v11, *a7, v8);
  dispatch thunk of TTRRemindersListInteractorType.move(reminders:position:initialSectionIDByReminderID:makeTopLevelInParentREMList:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10025B500(_BYTE *a1, __n128 a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRSection();
  (*(*(v17 - 8) + 16))(v16, a5, v17);
  v18 = sub_100058000(&qword_100776320, &qword_1006368F0);
  (*(*(v18 - 8) + 56))(v16, 0, 2, v18);
  LOBYTE(a8) = sub_1002599EC(a4, v16, a6, a7, a8);
  result = sub_100262C74(v16, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
  *a1 = a8 & 1;
  return result;
}

uint64_t sub_10025B664(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned int *a6)
{
  v15 = a1;
  v8 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  *v11 = a4;
  (*(v9 + 104))(v11, *a6, v8);
  v12 = a4;
  LOBYTE(a6) = dispatch thunk of TTRRemindersListInteractorType.move(sections:to:position:)();
  result = (*(v9 + 8))(v11, v8);
  *v15 = a6 & 1;
  return result;
}

uint64_t sub_10025B7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100775920, &qword_100635F60);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 64);
  v16 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 16);
  v38 = v16;
  v39 = v15;
  v37 = ObjectType;
  v18(ObjectType, v16);
  LOBYTE(v12) = v14[*(v12 + 52)];
  sub_100262C74(v14, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if ((v12 & 1) != 0 || (v36 = *(a1 + 16)) == 0)
  {
    v30 = sub_100058000(&qword_100775928, &qword_100635F68);
    return (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
  }

  else
  {
    v35 = a1;
    v32 = a2;
    v19 = sub_100058000(&qword_100775928, &qword_100635F68);
    v20 = *(v19 - 8);
    v21 = *(v20 + 56);
    v33 = v20 + 56;
    v34 = v21;
    v21(v10, 1, 1, v19);
    v22 = 0;
    v23 = (v40 + 8);
    while (1)
    {
      if (v36 == v22)
      {
        return sub_100016588(v10, v32, &qword_100775920, &qword_100635F60);
      }

      v24 = *(v40 + 16);
      v24(v7, v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v22, v5);
      v25 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      sub_1000079B4(v10, &qword_100775920, &qword_100635F60);
      if (!v25)
      {
        break;
      }

      ++v22;
      v26 = *(v19 + 48);
      v24(v10, v7, v5);
      *&v10[v26] = v25;
      v34(v10, 0, 1, v19);
      v27 = v25;
      v28 = REMReminder.accountCapabilities.getter();
      LOBYTE(v26) = [v28 supportsHourlyRecurrence];

      (*v23)(v7, v5);
      if ((v26 & 1) == 0)
      {
        return sub_100016588(v10, v32, &qword_100775920, &qword_100635F60);
      }
    }

    (*v23)(v7, v5);
    return v34(v32, 1, 1, v19);
  }
}

uint64_t sub_10025BB7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 72);
  ObjectType = swift_getObjectType();
  (*(v3 + 208))(ObjectType, v3);
  swift_getObjectType();
  dispatch thunk of TTRRemindersListTreeContentsQueryable.firstReminderItem(with:in:)();
  return swift_unknownObjectRelease();
}

void sub_10025BC0C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a8;
  v62 = a2;
  v58 = a5;
  v59 = a7;
  v56 = a1;
  v57 = a6;
  v63 = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    swift_errorRetain();
    if (qword_100767028 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003E30(v20, qword_100776068);
    swift_errorRetain();
    v21 = v63;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v24 = 138412546;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2080;
      swift_getErrorValue();
      v27 = v21;
      v28 = Error.localizedDescription.getter();
      v30 = sub_100004060(v28, v29, aBlock);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error retrieving foundInString {sgObjectID: %@, error: %s}", v24, 0x16u);
      sub_1000079B4(v25, &unk_10076DF80, &qword_10062F730);

      sub_100004758(v26);
    }

    else
    {
    }
  }

  else
  {
    v31 = v61;
    v52 = v15;
    v53 = v13;
    v54 = v11;
    v55 = v12;
    v32 = v62;
    if (v62)
    {
      sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);

      v51 = static OS_dispatch_queue.main.getter();
      (*(v17 + 16))(&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v16);
      v33 = (*(v17 + 80) + 64) & ~*(v17 + 80);
      v34 = swift_allocObject();
      v36 = v56;
      v35 = v57;
      *(v34 + 2) = v58;
      *(v34 + 3) = v36;
      v37 = v63;
      *(v34 + 4) = v32;
      *(v34 + 5) = v37;
      v38 = v59;
      *(v34 + 6) = v35;
      *(v34 + 7) = v38;
      (*(v17 + 32))(&v34[v33], v19, v16);
      aBlock[4] = sub_100263258;
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001047C;
      aBlock[3] = &unk_10071D330;
      v39 = _Block_copy(aBlock);
      v40 = v37;

      v41 = v52;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10026263C(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100058000(&qword_100780A50, &qword_100635D30);
      sub_10000E188(&qword_10076B7E0, &qword_100780A50, &qword_100635D30, &protocol conformance descriptor for [A]);
      v42 = v54;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v43 = v51;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v39);

      (*(v60 + 8))(v42, v9);
      (*(v53 + 8))(v41, v55);
    }

    else
    {
      if (qword_100767028 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100003E30(v44, qword_100776068);
      v45 = v63;
      v63 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v63, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        *(v47 + 4) = v45;
        *v48 = v45;
        v49 = v45;
        _os_log_impl(&_mh_execute_header, v63, v46, "Found nil foundInString, skipping. {sgObjectID: %@}", v47, 0xCu);
        sub_1000079B4(v48, &unk_10076DF80, &qword_10062F730);
      }

      v50 = v63;
    }
  }
}

uint64_t sub_10025C35C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_10025C3F4(uint64_t *a1, void (*a2)(char *))
{
  v4 = sub_100058000(&qword_100775700, &unk_10062E390);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = type metadata accessor for TTRSharedWithYouHighlight();
  v10 = *(v9 - 8);
  v11 = v10;
  if (v8)
  {
    (*(v10 + 16))(v6, v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);
    (*(v11 + 56))(v6, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v6, 1, 1, v9);
  }

  a2(v6);
  return sub_1000079B4(v6, &qword_100775700, &unk_10062E390);
}

uint64_t sub_10025C54C()
{
  v1 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v1 - 8);
  v3 = v10 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.DeleteCompletedMenuItem.completeBeforeDateFromNow()();
  if (v0)
  {

    (*(v5 + 56))(v3, 1, 1, v4);
  }

  else if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    v8 = REMRemindersListBatchDeleteInvocation.CompletionDatePredicate.hasReminders(completedBefore:)();
    (*(v5 + 8))(v7, v4);
    return v8 & 1;
  }

  sub_1000079B4(v3, &qword_1007757F0, &unk_10062DE70);
  v8 = 0;
  return v8 & 1;
}

void *sub_10025C730(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v19[-v9];
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  (*(v5 + 16))(v7, v10, v4);
  v11 = (*(v5 + 88))(v7, v4);
  if (v11 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:) || v11 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:))
  {
    v13 = *(v5 + 8);
    v13(v7, v4);
    v14 = *(v2 + 72);
    ObjectType = swift_getObjectType();
    v16 = (*(v14 + 200))(ObjectType, v14);
    __chkstk_darwin(v16);
    *&v19[-32] = v2;
    *&v19[-24] = a1;
    *&v19[-16] = v10;
    v17 = sub_10023FFA0(sub_100262BD4, &v19[-48], v16);

LABEL_11:
    v13(v10, v4);
    return v17;
  }

  if (v11 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    v13 = *(v5 + 8);
    v13(v7, v4);
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  if (v11 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    v13 = *(v5 + 8);
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10025C9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v88 = a3;
  v86 = a4;
  v87 = a5;
  v85 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  __chkstk_darwin(v85);
  v84 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100780960, &unk_1006368B0);
  __chkstk_darwin(v8 - 8);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v82 = &v78 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v78 - v17;
  v19 = type metadata accessor for TTRRemindersListViewModel.LeadingActionConfiguration();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a1, v19, v21);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 == enum case for TTRRemindersListViewModel.LeadingActionConfiguration.indentation(_:))
  {
    sub_100058000(&qword_1007762E8, &unk_1006368C0);
    v25 = *(sub_100058000(&qword_100769A08, &unk_10062E440) - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v85 = *(v25 + 72);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10062D3F0;
    v86 = v27;
    v84 = (v27 + v26);
    v28 = *(a2 + 72);
    ObjectType = swift_getObjectType();
    v30 = sub_100058000(&qword_100772150, &unk_100635D00);
    v31 = type metadata accessor for TTRRemindersListViewModel.Item();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v80 = *(v32 + 72);
    v81 = v30;
    v34 = swift_allocObject();
    v78 = xmmword_10062D400;
    *(v34 + 16) = xmmword_10062D400;
    v35 = *(v32 + 16);
    v82 = v31;
    v79 = v35;
    v35(v34 + v33, v88, v31);
    v36 = *(v28 + 536);
    v83 = ObjectType;
    v37 = v36(v34, ObjectType, v28);
    v39 = v38;

    if (v37 && (, , v39 >= 1))
    {
      v40 = enum case for TTRReminderSwipeAction.indent(_:);
      v41 = type metadata accessor for TTRReminderSwipeAction();
      v42 = *(v41 - 8);
      v43 = v84;
      (*(v42 + 104))(v84, v40, v41);
      (*(v42 + 56))(v43, 0, 1, v41);
    }

    else
    {
      v53 = type metadata accessor for TTRReminderSwipeAction();
      v43 = v84;
      (*(*(v53 - 8) + 56))(v84, 1, 1, v53);
    }

    v54 = swift_allocObject();
    *(v54 + 16) = v78;
    v79(v54 + v33, v88, v82);
    v55 = (*(v28 + 544))(v54, v83, v28);
    v57 = v56;

    if (v55 && (, , v57 >= 1))
    {
      v58 = enum case for TTRReminderSwipeAction.outdent(_:);
      v59 = type metadata accessor for TTRReminderSwipeAction();
      v60 = *(v59 - 8);
      v61 = v85;
      (*(v60 + 104))(&v43[v85], v58, v59);
      (*(v60 + 56))(&v43[v61], 0, 1, v59);
    }

    else
    {
      v62 = type metadata accessor for TTRReminderSwipeAction();
      (*(*(v62 - 8) + 56))(&v43[v85], 1, 1, v62);
    }

    v89 = v86;
    sub_100058000(&qword_1007762F0, &qword_1006368D0);
    type metadata accessor for TTRReminderSwipeAction();
    sub_10000E188(&qword_1007762F8, &qword_1007762F0, &qword_1006368D0, &protocol conformance descriptor for [A]);
    v63 = Sequence.removingNils<A>()();

    goto LABEL_22;
  }

  v44 = v88;
  if (v24 == enum case for TTRRemindersListViewModel.LeadingActionConfiguration.postpone(_:))
  {
    (*(v13 + 16))(v18, v86, v12);
    v45 = (*(v13 + 88))(v18, v12);
    v46 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
    result = (*(v13 + 8))(v18, v12);
    if (v45 != v46)
    {
      v63 = _swiftEmptyArrayStorage;
      goto LABEL_22;
    }

    v48 = *(a2 + 72);
    v49 = swift_getObjectType();
    v50 = v84;
    (*(v48 + 16))(v49, v48);
    LODWORD(v48) = *(v50 + *(v85 + 44));
    sub_100262C74(v50, type metadata accessor for TTRRemindersListEditingInteractionOptions);
    if (v48 != 1)
    {
      v70 = v82;
      v71 = TTRRemindersListPresenterCapabilityCore.canPostpone(_:)();
      result = sub_1000079B4(v70, &qword_100780960, &unk_1006368B0);
      if (v71)
      {
        v72 = TTRRemindersListPresenterCapabilityCore.allowedPostponementTypes(relativeToDueDateOf:)();
        __chkstk_darwin(v72);
        *(&v78 - 2) = a2;
        *(&v78 - 1) = v44;
        v63 = sub_10007E078(sub_100262BF4, (&v78 - 2), v72);

        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v51 = type metadata accessor for TTRRemindersListPostponeType();
    v52 = v82;
    (*(*(v51 - 8) + 56))(v82, 1, 1, v51);
    goto LABEL_19;
  }

  if (v24 == enum case for TTRRemindersListViewModel.LeadingActionConfiguration.customDueDate(_:))
  {
    (*(v13 + 16))(v15, v86, v12);
    v64 = (*(v13 + 88))(v15, v12);
    v65 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
    result = (*(v13 + 8))(v15, v12);
    if (v64 != v65)
    {
LABEL_20:
      v63 = _swiftEmptyArrayStorage;
LABEL_22:
      *v87 = v63;
      return result;
    }

    v66 = *(a2 + 72);
    v67 = swift_getObjectType();
    v68 = v84;
    (*(v66 + 16))(v67, v66);
    LODWORD(v66) = *(v68 + *(v85 + 44));
    sub_100262C74(v68, type metadata accessor for TTRRemindersListEditingInteractionOptions);
    if (v66 != 1)
    {
      v73 = v83;
      v74 = TTRRemindersListPresenterCapabilityCore.canPostpone(_:)();
      result = sub_1000079B4(v73, &qword_100780960, &unk_1006368B0);
      if (v74)
      {
        sub_100058000(&qword_1007762E0, &unk_100645CB0);
        v75 = type metadata accessor for TTRReminderSwipeAction();
        v76 = *(v75 - 8);
        v77 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        v63 = swift_allocObject();
        *(v63 + 1) = xmmword_10062D400;
        result = (*(v76 + 104))(&v63[v77], enum case for TTRReminderSwipeAction.setCustomDateAndTime(_:), v75);
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v69 = type metadata accessor for TTRRemindersListPostponeType();
    v52 = v83;
    (*(*(v69 - 8) + 56))(v83, 1, 1, v69);
LABEL_19:
    result = sub_1000079B4(v52, &qword_100780960, &unk_1006368B0);
    goto LABEL_20;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_10025D4DC(uint64_t a1)
{
  v3 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v3 - 8);
  v92 = v83 - v4;
  v87 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  __chkstk_darwin(v87);
  v6 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchFlagParams();
  v88 = *(v7 - 8);
  v89 = v7;
  __chkstk_darwin(v7);
  v91 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRReminderSwipeAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v85 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v84 = v83 - v13;
  __chkstk_darwin(v14);
  v86 = v83 - v15;
  __chkstk_darwin(v16);
  v83[1] = v83 - v17;
  __chkstk_darwin(v18);
  v83[0] = v83 - v19;
  __chkstk_darwin(v20);
  v22 = v83 - v21;
  v23 = sub_100058000(&qword_100772150, &unk_100635D00);
  v24 = type metadata accessor for TTRRemindersListViewModel.Item();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v99 = *(v25 + 80);
  v100 = v26;
  v101 = v23;
  v28 = swift_allocObject();
  v96 = xmmword_10062D400;
  *(v28 + 16) = xmmword_10062D400;
  v29 = *(v25 + 16);
  v104 = a1;
  v97 = v29;
  v98 = v25 + 16;
  v29(v28 + v27, a1, v24);
  v95 = v1;
  v30 = sub_100241BB8(v28);
  swift_setDeallocating();
  v31 = *(v25 + 8);
  v102 = v27;
  v103 = v24;
  v93 = v25 + 8;
  v94 = v31;
  v31(v28 + v27, v24);
  swift_deallocClassInstance();
  if (v30)
  {
    v32 = v10;
    (*(v10 + 104))(v22, enum case for TTRReminderSwipeAction.delete(_:), v9);
    v33 = sub_100547CB8(0, 1, 1, _swiftEmptyArrayStorage);
    v35 = v33[2];
    v34 = v33[3];
    if (v35 >= v34 >> 1)
    {
      v33 = sub_100547CB8((v34 > 1), v35 + 1, 1, v33);
    }

    v36 = v91;
    v33[2] = v35 + 1;
    v37 = v22;
    v38 = v9;
    (*(v10 + 32))(v33 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v35, v37, v9);
  }

  else
  {
    v32 = v10;
    v38 = v9;
    v33 = _swiftEmptyArrayStorage;
    v36 = v91;
  }

  v39 = v102;
  v40 = swift_allocObject();
  *(v40 + 16) = v96;
  v97(v40 + v39, v104, v103);
  v41 = *(v95 + 64);
  v42 = *(v95 + 72);
  ObjectType = swift_getObjectType();
  v44 = *(v42 + 16);
  v90 = ObjectType;
  v91 = v41;
  v44(ObjectType, v42);
  LODWORD(v41) = v6[*(v87 + 44)];
  sub_100262C74(v6, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v41 == 1)
  {

    v46 = v88;
    v45 = v89;
    (*(v88 + 104))(v36, enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.disallowed(_:), v89);
LABEL_11:
    (*(v46 + 8))(v36, v45);
    v49 = v38;
    v48 = v32;
    goto LABEL_18;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchFlag(_:)();

  v46 = v88;
  v45 = v89;
  if ((*(v88 + 88))(v36, v89) != enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.allowed(_:))
  {
    goto LABEL_11;
  }

  (*(v46 + 96))(v36, v45);
  v47 = *v36;
  v48 = v32;
  v49 = v38;
  if (v47 == 1)
  {
    v50 = enum case for TTRReminderSwipeAction.flag(_:);
    v51 = &v105;
  }

  else
  {
    v50 = enum case for TTRReminderSwipeAction.unflag(_:);
    v51 = &v106;
  }

  v52 = *(v51 - 32);
  (*(v32 + 104))(v52, v50, v38);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_100547CB8(0, v33[2] + 1, 1, v33);
  }

  v54 = v33[2];
  v53 = v33[3];
  if (v54 >= v53 >> 1)
  {
    v33 = sub_100547CB8((v53 > 1), v54 + 1, 1, v33);
  }

  v33[2] = v54 + 1;
  (*(v32 + 32))(v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v54, v52, v38);
LABEL_18:
  v55 = v102;
  v56 = swift_allocObject();
  *(v56 + 16) = v96;
  v57 = v103;
  v97(v56 + v55, v104, v103);
  v58 = sub_100245568(v56);
  swift_setDeallocating();
  v94(v56 + v55, v57);
  swift_deallocClassInstance();
  if (v58)
  {
    v59 = v86;
    (*(v48 + 104))(v86, enum case for TTRReminderSwipeAction.showDetails(_:), v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v92;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_100547CB8(0, v33[2] + 1, 1, v33);
    }

    v63 = v33[2];
    v62 = v33[3];
    if (v63 >= v62 >> 1)
    {
      v33 = sub_100547CB8((v62 > 1), v63 + 1, 1, v33);
    }

    v33[2] = v63 + 1;
    (*(v48 + 32))(v33 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v63, v59, v49);
  }

  else
  {
    v61 = v92;
  }

  (*(v42 + 152))(v90, v42);
  v64 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v65 = *(v64 - 8);
  if ((*(v65 + 48))(v61, 1, v64) == 1)
  {
    sub_1000079B4(v61, &unk_10078A380, &qword_10062DE60);
  }

  else
  {
    v66 = TTRRemindersListViewModel.ListInfo.isRecentlyDeletedList.getter();
    (*(v65 + 8))(v61, v64);
    if (v66)
    {
      v67 = v102;
      v68 = swift_allocObject();
      *(v68 + 16) = v96;
      v69 = v103;
      v70.n128_f64[0] = v97(v68 + v67, v104, v103);
      v71 = sub_100250F84(v68, v70);
      swift_setDeallocating();
      v94(v68 + v67, v69);
      swift_deallocClassInstance();
      if (v71)
      {
        v72 = v84;
        (*(v48 + 104))(v84, enum case for TTRReminderSwipeAction.permanentlyHide(_:), v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_100547CB8(0, v33[2] + 1, 1, v33);
        }

        v74 = v33[2];
        v73 = v33[3];
        if (v74 >= v73 >> 1)
        {
          v33 = sub_100547CB8((v73 > 1), v74 + 1, 1, v33);
        }

        v33[2] = v74 + 1;
        (*(v48 + 32))(v33 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v74, v72, v49);
      }

      v75 = v102;
      v76 = swift_allocObject();
      *(v76 + 16) = v96;
      v77 = v103;
      v97(v76 + v75, v104, v103);
      v78 = sub_10024DEE4(v76);
      swift_setDeallocating();
      v94(v76 + v75, v77);
      swift_deallocClassInstance();
      if (v78)
      {

        v79 = v85;
        (*(v48 + 104))(v85, enum case for TTRReminderSwipeAction.moveToAnyList(_:), v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_100547CB8(0, v33[2] + 1, 1, v33);
        }

        v81 = v33[2];
        v80 = v33[3];
        if (v81 >= v80 >> 1)
        {
          v33 = sub_100547CB8((v80 > 1), v81 + 1, 1, v33);
        }

        v33[2] = v81 + 1;
        (*(v48 + 32))(v33 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v81, v79, v49);
      }
    }
  }

  return v33;
}

uint64_t sub_10025E048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a3;
  v7 = type metadata accessor for TTRReminderEditor.WeekendType();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100776300, &qword_1006368D8);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for TTRPostponementWeekend();
  v37 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRRemindersListPostponeType();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == enum case for TTRRemindersListPostponeType.none(_:) || v21 == enum case for TTRRemindersListPostponeType.today(_:))
  {
    goto LABEL_6;
  }

  if (v21 == enum case for TTRRemindersListPostponeType.tomorrow(_:))
  {
    v25 = enum case for TTRReminderSwipeAction.postponeToTomorrow(_:);
    v26 = type metadata accessor for TTRReminderSwipeAction();
    v27 = *(v26 - 8);
    (*(v27 + 104))(a4, v25, v26);
    return (*(v27 + 56))(a4, 0, 1, v26);
  }

  if (v21 == enum case for TTRRemindersListPostponeType.weekend(_:))
  {
    TTRRemindersListPresenterCapabilityCore.postponementWeekendType(relativeToDueDateOf:)();
    v16 = v37;
    if ((*(v37 + 48))(v12, 1, v13) == 1)
    {
      sub_1000079B4(v12, &qword_100776300, &qword_1006368D8);
LABEL_6:
      v23 = type metadata accessor for TTRReminderSwipeAction();
      return (*(*(v23 - 8) + 56))(a4, 1, 1, v23);
    }
  }

  else
  {
    if (v21 == enum case for TTRRemindersListPostponeType.startOfWeekday(_:) || v21 == enum case for TTRRemindersListPostponeType.custom(_:))
    {
      goto LABEL_6;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  (*(v16 + 32))(v15, v12, v13);
  TTRPostponementWeekend.weekendType.getter();
  v29 = (*(v33 + 88))(v9, v34);
  if (v29 == enum case for TTRReminderEditor.WeekendType.thisWeekend(_:))
  {
    (*(v16 + 8))(v15, v13);
    v30 = &enum case for TTRReminderSwipeAction.postponeToThisWeekend(_:);
  }

  else
  {
    if (v29 != enum case for TTRReminderEditor.WeekendType.nextWeekend(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v16 + 8))(v15, v13);
    v30 = &enum case for TTRReminderSwipeAction.postponeToNextWeekend(_:);
  }

  v31 = *v30;
  v26 = type metadata accessor for TTRReminderSwipeAction();
  v27 = *(v26 - 8);
  (*(v27 + 104))(a4, v31, v26);
  return (*(v27 + 56))(a4, 0, 1, v26);
}

uint64_t sub_10025E55C(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    v2 = result;
    v3 = *(a2 + 72);
    ObjectType = swift_getObjectType();
    return (*(v3 + 344))(v2, 1, ObjectType, v3);
  }

  return result;
}

uint64_t sub_10025E5C0(char a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 204) = a2;
  *(v3 + 203) = a1;
  sub_100058000(&qword_100776250, &qword_100636800);
  *(v3 + 56) = swift_task_alloc();
  v4 = sub_100058000(&qword_100776258, &qword_100636808);
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  sub_100058000(&qword_100776260, &qword_100636810);
  *(v3 + 88) = swift_task_alloc();
  v5 = sub_100058000(&qword_100776268, &qword_100636818);
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 - 8);
  *(v3 + 112) = swift_task_alloc();
  v6 = type metadata accessor for TTRRemindersListLayout();
  *(v3 + 120) = v6;
  *(v3 + 128) = *(v6 - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 152) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 160) = v8;
  *(v3 + 168) = v7;

  return _swift_task_switch(sub_10025E808, v8, v7);
}

uint64_t sub_10025E808()
{
  if (swift_unknownObjectWeakLoadStrong() && (v1 = *(v0 + 48), v2 = *(v1 + 24), v3 = swift_getObjectType(), v4 = (*(v2 + 32))(v1, v3, v2), v6 = v5, swift_unknownObjectRelease(), (*(v0 + 176) = v4) != 0))
  {
    v28 = v6;
    v7 = *(*(v0 + 48) + 72);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 112))(ObjectType, v7);
    v10 = *(v0 + 144);
    if (v9)
    {
      v11 = *(v0 + 128);
      v12 = *(v0 + 136);
      v13 = *(v0 + 120);
      swift_getObjectType();
      dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
      swift_unknownObjectRelease();
      (*(v11 + 32))(v10, v12, v13);
    }

    else
    {
      (*(*(v0 + 128) + 104))(*(v0 + 144), enum case for TTRRemindersListLayout.list(_:), *(v0 + 120));
    }

    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v19 = *(v0 + 64);
    v18 = *(v0 + 72);
    v27 = *(v0 + 56);
    static TTRLocalizableStrings.RemindersList.confirmationAlertTitleForDeletingSections(isDeletingMoreThanOneSection:currentLayout:)();
    static TTRLocalizableStrings.RemindersList.confirmationAlertMessageForDeletingSections(isDeletingMoreThanOneSection:hasCompletedReminders:currentLayout:)();
    v20 = sub_100058000(&qword_100776270, &qword_100636820);
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    sub_100058000(&qword_100776278, &qword_100636828);
    sub_100058000(&qword_100776280, &unk_100636830);
    *(swift_allocObject() + 16) = xmmword_10062D3F0;
    static TTRLocalizableStrings.Common.deleteButton.getter();
    v21 = *(v18 + 104);
    v22 = v19;
    v21(v17, enum case for TTRAlertSpecification.ActionStyle.destructive<A>(_:), v19);
    v21(v27, enum case for TTRAlertSpecification.ActionStyle.default<A>(_:), v19);
    v23 = *(v18 + 56);
    v23(v27, 0, 1, v22);
    *(v0 + 200) = 1;
    TTRAlertSpecification.Action.init(title:style:macOSStyle:value:)();
    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    v21(v17, enum case for TTRAlertSpecification.ActionStyle.cancel<A>(_:), v22);
    v23(v27, 1, 1, v22);
    *(v0 + 201) = 0;
    TTRAlertSpecification.Action.init(title:style:macOSStyle:value:)();
    TTRAlertSpecification.init(title:message:macOSAlertStyle:actions:)();
    v24 = swift_getObjectType();
    v25 = swift_task_alloc();
    *(v0 + 184) = v25;
    *v25 = v0;
    v25[1] = sub_10025ECE0;
    v26 = *(v0 + 112);

    return dispatch thunk of TTRAlertSpecificationPresenting.presentAlert<A>(with:)(v0 + 202, v26, &type metadata for Bool, v24, v28);
  }

  else
  {

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_10025ECE0()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_10025EF20;
  }

  else
  {
    v5 = sub_10025EE1C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10025EE1C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = *(v0 + 202);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_10025EF20()
{
  v22 = v0;

  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100776068);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  if (v4)
  {
    v20 = v0[15];
    v11 = swift_slowAlloc();
    v19 = v8;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = Error.rem_errorDescription.getter();
    v18 = v10;
    v15 = sub_100004060(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "TTRRemindersListPresenterCapability: failed to present alert {error: %s}", v11, 0xCu);
    sub_100004758(v12);

    swift_unknownObjectRelease();

    (*(v9 + 8))(v19, v18);
    (*(v7 + 8))(v5, v20);
  }

  else
  {

    swift_unknownObjectRelease();

    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v5, v6);
  }

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_10025F1BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_getObjectType();

  dispatch thunk of TTRRemindersListInteractorType.delete(sections:andReminders:)();
}

double sub_10025F238(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_10000B0D8(a2, v12);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  sub_100005FD0(v12, (v9 + 5));
  sub_100084EC0(0, 0, v6, &unk_1006367A0, v9);

  return result;
}

uint64_t sub_10025F380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10025F43C;

  return sub_10025F660(a5);
}

uint64_t sub_10025F43C()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10025F5FC;
  }

  else
  {
    v4 = sub_10025F598;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10025F598()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10025F5FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10025F660(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  sub_100058000(&unk_10078A380, &qword_10062DE60);
  v2[34] = swift_task_alloc();
  v3 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[38] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[39] = v5;
  v2[40] = v4;

  return _swift_task_switch(sub_10025F78C, v5, v4);
}

uint64_t sub_10025F78C()
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100776068);
  sub_10000B0D8(v1, (v0 + 8));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    sub_10000C36C(v0 + 8, v0[11]);
    v7 = dispatch thunk of TTRReminderProtocol.objectID.getter();
    sub_100004758(v0 + 8);
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "FetchSuggestedSection: reminderID:%@", v5, 0xCu);
    sub_1000079B4(v6, &unk_10076DF80, &qword_10062F730);
  }

  else
  {

    sub_100004758(v0 + 8);
  }

  v8 = v0[35];
  v9 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[32];
  sub_10000C36C(v12, v12[3]);
  v13 = dispatch thunk of TTRReminderProtocol.objectID.getter();
  v0[41] = v13;
  v14 = *(v11 + 72);
  ObjectType = swift_getObjectType();
  (*(v14 + 152))(ObjectType, v14);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v16 = v0[34];

    sub_1000079B4(v16, &unk_10078A380, &qword_10062DE60);
LABEL_18:
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "FetchSuggestedSection: Don't fetch in a list that doesn't support categorization of grocery items", v36, 2u);
    }

    goto LABEL_37;
  }

  (*(v0[36] + 32))(v0[37], v0[34], v0[35]);
  if ((TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter() & 1) == 0)
  {
    (*(v0[36] + 8))(v0[37], v0[35]);

    goto LABEL_18;
  }

  sub_10000C36C(v0[32], v12[3]);
  v17 = dispatch thunk of TTRReminderProtocol.titleAsString.getter();
  v0[42] = v17;
  v0[43] = v18;
  if (!v18)
  {
LABEL_28:

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v50 = v0[36];
    v49 = v0[37];
    v51 = v0[35];
    if (v48)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "FetchSuggestedSection: Cannot fetch for empty reminder title";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v46, v47, v53, v52, 2u);
    }

LABEL_36:

    (*(v50 + 8))(v49, v51);
    goto LABEL_37;
  }

  v19 = v17;
  v20 = v18;
  v21 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v21 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    goto LABEL_28;
  }

  v22 = v0[33];
  v23 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderTitle;
  v0[44] = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderTitle;
  swift_beginAccess();
  v24 = *(v22 + v23);
  if (v24)
  {
    if (*(v24 + 16))
    {
      v25 = sub_100009044(v19, v20);
      if (v26)
      {
        v57 = v0[37];
        v28 = v0[35];
        v27 = v0[36];
        v30 = v0[32];
        v29 = v0[33];
        v31 = (*(v24 + 56) + 16 * v25);
        v32 = *v31;
        v33 = v31[1];
        swift_endAccess();

        sub_10026046C(v32, v33, v29, v13, v30);

        (*(v27 + 8))(v57, v28);
LABEL_37:

        v55 = v0[1];

        return v55();
      }
    }
  }

  v37 = v0[32];
  swift_endAccess();
  sub_10000C36C(v37, v12[3]);
  dispatch thunk of TTRReminderProtocol.ttrList.getter();
  if (!v0[21])
  {

    sub_1000079B4((v0 + 18), &unk_100775680, &qword_10062E3B0);
    goto LABEL_33;
  }

  sub_10000C36C(v0 + 18, v0[21]);
  dispatch thunk of TTRListProtocol.ttrGroceryContext.getter();
  if (!v0[16])
  {

    sub_100004758(v0 + 18);
    sub_1000079B4((v0 + 13), &qword_1007757E0, &qword_100636780);
    goto LABEL_33;
  }

  sub_10000C36C(v0 + 13, v0[16]);
  v38 = dispatch thunk of TTRListGroceryContextProtocol.ttrGroceryLocaleID.getter();
  v40 = v39;
  v0[45] = v39;
  sub_100004758(v0 + 13);
  sub_100004758(v0 + 18);
  if (!v40)
  {

LABEL_33:
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v54 = os_log_type_enabled(v46, v47);
    v50 = v0[36];
    v49 = v0[37];
    v51 = v0[35];
    if (v54)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "FetchSuggestedSection: Cannot fetch for list without groceryLocaleID";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v41 = *(v0[33] + 56);
  v42 = swift_getObjectType();
  sub_100058000(&unk_100771E10, &qword_100634270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = v19;
  *(inited + 40) = v20;

  v44 = sub_1004B61FC(inited);
  v0[46] = v44;
  swift_setDeallocating();
  sub_100007E80(inited + 32);
  v45 = swift_task_alloc();
  v0[47] = v45;
  *v45 = v0;
  v45[1] = sub_10025FEE4;

  return dispatch thunk of TTRRemindersListInteractorType.fetchSuggestedSectionsForReminders(withReminderTitles:fromGroceryClassifierWithGroceryLocaleID:maxSuggestionsCountPerReminderTitle:)(v44, v38, v40, 1, v42, v41);
}

uint64_t sub_10025FEE4(uint64_t a1)
{
  v3 = *v2;
  v3[48] = a1;
  v3[49] = v1;

  if (v1)
  {

    v4 = v3[39];
    v5 = v3[40];
    v6 = sub_1002603C0;
  }

  else
  {
    v4 = v3[39];
    v5 = v3[40];
    v6 = sub_100260054;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100260054()
{
  v1 = *(v0 + 384);

  v2 = [v1 suggestedSectionsByReminderTitle];
  sub_100058000(&qword_100776228, &qword_1006367B8);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v3 + 16) || (v4 = sub_100009044(*(v0 + 336), *(v0 + 344)), (v5 & 1) == 0))
  {
    v26 = *(v0 + 384);
    v28 = *(v0 + 288);
    v27 = *(v0 + 296);
    v29 = *(v0 + 280);

    (*(v28 + 8))(v27, v29);
    goto LABEL_17;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_16:
    v35 = *(v0 + 384);
    v36 = *(v0 + 328);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));

    goto LABEL_17;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;
  v10 = *(v0 + 352);
  v11 = *(v0 + 264);

  v12 = [v9 sectionCanonicalName];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (!*(v11 + v10))
  {
    v16 = *(v0 + 352);
    v17 = *(v0 + 264);
    v18 = sub_100460914(_swiftEmptyArrayStorage);
    swift_beginAccess();
    *(v17 + v16) = v18;
  }

  v19 = *(v0 + 352);
  v20 = *(v0 + 264);
  swift_beginAccess();
  if (*(v20 + v19))
  {
    v21 = *(v0 + 344);
    v22 = *(v0 + 352);
    v23 = *(v0 + 336);
    v24 = *(v0 + 264);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v24 + v22);
    *(v24 + v22) = 0x8000000000000000;
    sub_10012806C(v13, v15, v23, v21, isUniquelyReferenced_nonNull_native);

    *(v24 + v22) = v38;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  v30 = *(v0 + 384);
  v31 = *(v0 + 328);
  v33 = *(v0 + 288);
  v32 = *(v0 + 296);
  v34 = *(v0 + 280);
  sub_10026046C(v13, v15, *(v0 + 264), v31, *(v0 + 256));

  (*(v33 + 8))(v32, v34);
LABEL_17:

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1002603C0()
{
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[36];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

void sub_10026046C(uint64_t a1, NSObject *a2, uint64_t a3, void *a4, void *a5)
{
  v95 = a5;
  v102 = a2;
  v88 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v9 - 8);
  v85 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v94 = &v81 - v12;
  v97 = type metadata accessor for TTRRemindersListViewModel.Item();
  v101 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRSectionID();
  v92 = *(v14 - 8);
  v93 = v14;
  __chkstk_darwin(v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&qword_10076DF38, &qword_100631A08);
  __chkstk_darwin(v17 - 8);
  v19 = &v81 - v18;
  v20 = type metadata accessor for TTRSectionLite();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a3 + 64);
  v25 = *(a3 + 72);
  ObjectType = swift_getObjectType();
  v27 = *(v25 + 104);
  v98 = ObjectType;
  v99 = v24;
  v100 = v25;
  v28 = v27(ObjectType, v25);
  if (v28)
  {
    v29 = v28;
    v91 = v23;
    v30 = v102;
    sub_1002E4288(a1, v102, v19);
    v31 = (*(v21 + 48))(v19, 1, v20);
    v89 = a3;
    v90 = v29;
    if (v31 == 1)
    {
      sub_1000079B4(v19, &qword_10076DF38, &qword_100631A08);
      v32 = v30;
LABEL_22:
      v44 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderID;
      swift_beginAccess();
      v45 = a4;
      v46 = v97;
      if (!*(a3 + v44))
      {
        *(a3 + v44) = sub_10023F1A0(_swiftEmptyArrayStorage);
      }

      swift_beginAccess();
      v47 = *(a3 + v44);
      if (v47)
      {
        if (*(v47 + 16))
        {
          sub_1002613B0(a4);
          if (v48)
          {
            swift_endAccess();
LABEL_40:
            swift_unknownObjectRelease();
            return;
          }
        }
      }

      swift_endAccess();
      swift_beginAccess();
      if (*(a3 + v44))
      {
        v49 = a4;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = *(a3 + v44);
        *(a3 + v44) = 0x8000000000000000;
        sub_100127168(a1, v32, v49, isUniquelyReferenced_nonNull_native);

        *(a3 + v44) = v103;
      }

      swift_endAccess();
      v51 = v94;
      v102 = *(v100 + 248);
      (v102)(a4, v98);
      v52 = v101;
      if ((*(v101 + 48))(v51, 1, v46) == 1)
      {
        sub_1000079B4(v51, &qword_100772140, &qword_10062D9F0);
      }

      else
      {
        v84 = a1;
        v53 = v96;
        (*(v52 + 32))(v96, v51, v46);
        sub_100058000(&qword_100772150, &unk_100635D00);
        v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_10062D400;
        (*(v52 + 16))(v55 + v54, v53, v46);
        v56 = v86;
        static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
        sub_1004F1000(v56, v55);
        swift_setDeallocating();
        v57 = *(v52 + 8);
        v101 = v52 + 8;
        v57(v55 + v54, v46);
        v58 = v57;
        swift_deallocClassInstance();
        v59 = v56;
        v45 = a4;
        (*(v87 + 8))(v59, v88);
        swift_beginAccess();
        sub_10001DFB0(&v103, a4);
        swift_endAccess();

        if (qword_100767028 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_100003E30(v60, qword_100776068);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v61, v62, "FetchSuggestedSection: refreshing cell", v63, 2u);
        }

        v58(v96, v46);
        a1 = v84;
      }

      sub_10000C36C(v95, v95[3]);
      v64 = dispatch thunk of TTRReminderProtocol.titleAsString.getter();
      if (!v65)
      {
        goto LABEL_40;
      }

      v66 = v64;
      v67 = v65;
      v68 = v89;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v69 = *(v68 + 24);
        v70 = swift_getObjectType();
        v71 = v45;
        v72 = a1;
        v73 = v70;
        v74 = v85;
        (v102)(v71, v98, v100);
        (*(v69 + 40))(v74, v66, v67, v72, v32, v73, v69);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_1000079B4(v74, &qword_100772140, &qword_10062D9F0);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v84 = a1;
      v82 = v21;
      v37 = *(v21 + 32);
      v83 = v20;
      v37(v91, v19, v20);
      TTRSectionLite.sectionID.getter();
      v38 = sub_1002E3A40(v16, 1);
      (*(v92 + 8))(v16, v93);
      if (v38 >> 62)
      {
        v39 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = 0;
      do
      {
        if (v39 == v40)
        {

          (*(v82 + 8))(v91, v83);
          v32 = v102;
          a1 = v84;
          a3 = v89;
          goto LABEL_22;
        }

        if ((v38 & 0xC000000000000001) != 0)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v41 = *(v38 + 8 * v40 + 32);
        }

        v42 = v41;
        if (__OFADD__(v40, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_100003540(0, &qword_100775690, NSObject_ptr);
        v43 = static NSObject.== infix(_:_:)();

        ++v40;
      }

      while ((v43 & 1) == 0);

      if (qword_100767028 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_100003E30(v75, qword_100776068);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.info.getter();
      v78 = os_log_type_enabled(v76, v77);
      v79 = v83;
      if (v78)
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "FetchSuggestedSection: don't add suggested section for reminder already in correct canonical section", v80, 2u);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      (*(v82 + 8))(v91, v79);
    }
  }

  else
  {
    if (qword_100767028 != -1)
    {
LABEL_50:
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100003E30(v33, qword_100776068);
    v102 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v102, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v102, v34, "FetchSuggestedSection: missing sectionsContext", v35, 2u);
    }

    v36 = v102;
  }
}

uint64_t sub_100260FF4()
{
  sub_10003B788(v0 + 16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_100004758((v0 + 88));
  swift_unknownObjectRelease();
  sub_100004758((v0 + 144));
  sub_100004758((v0 + 184));

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_currentShareURL, &unk_100775660, &qword_10062F6B0);

  return v0;
}

uint64_t sub_1002610E4()
{
  sub_100260FF4();

  return swift_deallocClassInstance();
}

void sub_100261164(uint64_t a1)
{
  sub_100261264(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100261264(uint64_t a1)
{
  if (!qword_100777750)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100777750);
    }
  }
}

uint64_t sub_1002612BC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100261344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002E562C(v5);
  sub_10000C36C(v5, v5[3]);
  sub_10015511C(a1, a2);
  return sub_100004758(v5);
}

unint64_t sub_1002613B0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1002613F4(a1, v4);
}

unint64_t sub_1002613F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1002614C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  static TTRLocalizableStrings.UndoAction.moveReminders(count:)();
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_100068444;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100026440;
  v9[3] = &unk_10071D150;
  v8 = _Block_copy(v9);

  [v5 withActionName:v6 block:v8];

  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

void sub_100261648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static TTRLocalizableStrings.UndoAction.moveReminders(count:)();
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_100068444;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100026440;
  v9[3] = &unk_10071D290;
  v8 = _Block_copy(v9);

  [v5 withActionName:v6 block:v8];

  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

uint64_t sub_1002617A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_1007764C0, &qword_100636A48);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v15 = *(v14 + 56);
  sub_100262D10(a1, &v22 - v12, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
  sub_100262D10(a2, &v13[v15], type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
  v16 = sub_100058000(&qword_100776320, &qword_1006368F0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v13, 2, v16);
  if (!v18)
  {
    sub_100262D10(v13, v10, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
    if (!v17(&v13[v15], 2, v16))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v19 = static TTRSection.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_100262C74(v13, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v18 == 1)
  {
    if (v17(&v13[v15], 2, v16) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v17(&v13[v15], 2, v16) != 2)
  {
LABEL_9:
    sub_1000079B4(v13, &qword_1007764C0, &qword_100636A48);
    v19 = 0;
    return v19 & 1;
  }

  sub_100262C74(v13, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_100261AE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_10025F380(a1, v4, v5, v6, (v1 + 5));
}

void sub_100261BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v45 = a3;
  v4 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  __chkstk_darwin(v4 - 8);
  v46 = &v45 - v5;
  v62 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v6 = *(v62 - 8);
  __chkstk_darwin(v62);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100058000(&qword_100776348, &unk_100636910);
  __chkstk_darwin(v61);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v53 = &v45 - v12;
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v52 = *(a2 + 16);
  if (v52)
  {
    v17 = 0;
    v18 = *(v14 + 80);
    v50 = *(v14 + 72);
    v51 = a2 + ((v18 + 32) & ~v18);
    v60 = (v6 + 8);
    v56 = v6 + 16;
    v19 = _swiftEmptyArrayStorage;
    v57 = &v45 - v15;
    v49 = v6;
    do
    {
      sub_10000794C(v51 + v50 * v17, v16, &qword_100776348, &unk_100636910);
      v20 = v53;
      sub_10000794C(v16, v53, &qword_100776348, &unk_100636910);
      v21 = *v60;
      v22 = v20;
      v23 = *(v20 + *(v61 + 48));
      (*v60)(v22, v62);
      v24 = *(v23 + 16);
      if (v24)
      {
        v54 = v23;
        v55 = v17;
        v25 = v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v26 = *(v6 + 72);
        v58 = *(v6 + 16);
        v59 = v26;
        do
        {
          v27 = v62;
          v58(v8, v25, v62);
          sub_10000794C(v16, v10, &qword_100776348, &unk_100636910);

          v28 = TTRRemindersListViewModel.ReminderID.objectID.getter();
          v21(v10, v27);
          v29 = TTRRemindersListViewModel.ReminderID.objectID.getter();
          v21(v8, v27);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1005480CC(0, v19[2] + 1, 1, v19);
          }

          v31 = v19[2];
          v30 = v19[3];
          if (v31 >= v30 >> 1)
          {
            v19 = sub_1005480CC((v30 > 1), v31 + 1, 1, v19);
          }

          v19[2] = v31 + 1;
          v32 = &v19[2 * v31];
          v32[4] = v28;
          v32[5] = v29;
          v25 += v59;
          --v24;
          v16 = v57;
        }

        while (v24);

        v6 = v49;
        v17 = v55;
      }

      else
      {
      }

      ++v17;
      sub_1000079B4(v16, &qword_100776348, &unk_100636910);
    }

    while (v17 != v52);
  }

  v33 = v47;
  v63 = v47;
  sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  sub_10000E188(&qword_100776340, &qword_10076E0B0, &unk_100631BD0, &protocol conformance descriptor for [A]);
  v34 = Collection<>.isSingleUncommittedReminder.getter();
  v35 = v48;
  if ((v34 & 1) != 0 && v45 == 1 && *(v33 + 16) && (type metadata accessor for TTRRemindersListViewModel.Item(), v36 = *(v35 + 72), v37 = swift_getObjectType(), (v38 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.reminderChangeItem(forEditing:)()) != 0))
  {
    v39 = v38;
    v62 = *(v35 + 56);
    swift_getObjectType();
    v40 = v46;
    (*(v36 + 608))(v37, v36);
    dispatch thunk of TTRRemindersListInteractorType.indentUncommittedReminder(with:changes:paramsForREMManualOrdering:)();
  }

  else
  {
    swift_getObjectType();
    v41 = *(v35 + 72);
    ObjectType = swift_getObjectType();
    v43 = *(v41 + 608);
    v44 = v41;
    v40 = v46;
    v43(ObjectType, v44);
    dispatch thunk of TTRRemindersListInteractorType.makeSubtask(_:paramsForREMManualOrdering:)();
  }

  sub_1000079B4(v40, &qword_10076DF30, &qword_100631A00);
  sub_100245068(v33);
}

uint64_t sub_100262188(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  __chkstk_darwin(v6 - 8);
  v32 = &v29 - v7;
  v8 = sub_100058000(&qword_100776330, &qword_100636900);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v29 = a3;
    v30 = a1;
    v33 = _swiftEmptyArrayStorage;
    sub_1004A20B4(0, v12, 0);
    v13 = v33;
    v14 = *(sub_100058000(&qword_100776338, &qword_100636908) - 8);
    v15 = (a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)));
    v16 = *(v14 + 72);
    do
    {
      sub_100252F2C(v15, v11);
      v33 = v13;
      v18 = v13[2];
      v17 = v13[3];
      if (v18 >= v17 >> 1)
      {
        sub_1004A20B4((v17 > 1), v18 + 1, 1);
        v13 = v33;
      }

      v13[2] = v18 + 1;
      sub_100016588(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, &qword_100776330, &qword_100636900);
      v15 += v16;
      --v12;
    }

    while (v12);
    a3 = v29;
    a1 = v30;
  }

  v33 = a1;
  sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  sub_10000E188(&qword_100776340, &qword_10076E0B0, &unk_100631BD0, &protocol conformance descriptor for [A]);
  v19 = Collection<>.isSingleUncommittedReminder.getter();
  v20 = v31;
  v21 = v32;
  if ((v19 & 1) != 0 && a3 == 1 && a1[2] && (type metadata accessor for TTRRemindersListViewModel.Item(), v22 = *(v20 + 72), v23 = swift_getObjectType(), (v24 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.reminderChangeItem(forEditing:)()) != 0))
  {
    v25 = v24;
    swift_getObjectType();
    (*(v22 + 608))(v23, v22);
    dispatch thunk of TTRRemindersListInteractorType.outdentUncommittedReminder(with:changes:paramsForREMManualOrdering:)();
  }

  else
  {
    swift_getObjectType();
    v26 = *(v20 + 72);
    ObjectType = swift_getObjectType();
    (*(v26 + 608))(ObjectType, v26);
    dispatch thunk of TTRRemindersListInteractorType.makeTask(_:paramsForREMManualOrdering:)();
  }

  return sub_1000079B4(v21, &qword_10076DF30, &qword_100631A00);
}

uint64_t sub_1002625C0(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return v4;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a4 != 3)
  {
    if (a4 != 2)
    {
      return v4;
    }

LABEL_7:
  }

LABEL_8:
}

uint64_t sub_10026263C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10026268C(uint64_t a1)
{
  v2 = sub_100058000(&qword_100776240, &qword_1006367E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100058000(&qword_100776248, &qword_1006367F0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000794C(v9, v5, &qword_100776240, &qword_1006367E8);
      v11 = *v5;
      result = sub_1002613B0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for Date();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100262874(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100262938()
{
  v1 = *(v0 + 16);
  swift_getObjectType();
  result = dispatch thunk of TTRRemindersListPresenterCapabilityCoreEditingPresenterType.edit(_:with:)();
  *v1 = result;
  return result;
}

uint64_t sub_1002629A8(void (*a1)(void, __n128), void (*a2)(void, __n128))
{

  (a1)(*(v2 + 24));

  (a2)(*(v2 + 40));

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_100262A98()
{
  v1 = v0;
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100776068);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRRemindersListPresenterCapability completed reminders cleanup action", v5, 2u);
  }

  v6 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  result = (*(v6 + 40))(ObjectType, v6);
  if (result)
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.clearAllowlistCompletedReminderIDs()();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100262C10(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100262C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100262D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100262DE4()
{
  v1 = type metadata accessor for DateComponents();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100262EB0(uint64_t (*a1)(uint64_t, unint64_t, void, void, uint64_t, uint64_t))
{
  v3 = *(type metadata accessor for DateComponents() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 24);
  v6 = *(*(v1 + 16) + 56);
  ObjectType = swift_getObjectType();
  return a1(v5, v1 + v4, 0, 0, ObjectType, v6);
}

uint64_t sub_100263108(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(v3 + 56);
  ObjectType = swift_getObjectType();
  return a1(v4, v5, v6, v7, ObjectType, v8);
}

void sub_1002631C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  sub_10025BC0C(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t sub_100263258()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(*(v0 + 2) + 240);
  v6 = String._bridgeToObjectiveC()();
  [v5 setObject:v6 forKey:v3];

  return v4(&v0[v2]);
}

uint64_t *sub_100263328(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = sub_100058000(&qword_100776320, &qword_1006368F0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 2, v7))
  {
    v12 = type metadata accessor for TTRSection();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1002634B8(uint64_t a1)
{
  v2 = sub_100058000(&qword_100776320, &qword_1006368F0);
  result = (*(*(v2 - 8) + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = type metadata accessor for TTRSection();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *sub_100263574(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100776320, &qword_1006368F0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for TTRSection();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *sub_1002636C8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100776320, &qword_1006368F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for TTRSection();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for TTRSection();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      return a1;
    }

    sub_1000079B4(a1, &qword_100776320, &qword_1006368F0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *sub_1002638A4(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100776320, &qword_1006368F0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for TTRSection();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *sub_1002639F8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100776320, &qword_1006368F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for TTRSection();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for TTRSection();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      return a1;
    }

    sub_1000079B4(a1, &qword_100776320, &qword_1006368F0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_100263BFC(uint64_t a1)
{
  v2 = sub_100058000(&qword_100776320, &qword_1006368F0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t sub_100263C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100776320, &qword_1006368F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t sub_100263CEC(uint64_t a1)
{
  result = type metadata accessor for TTRSection();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_100263D74(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    v8 = a2[2];
    *(a1 + 8) = a2[1];
    v9 = *(a2 + 24);

    sub_100263EE8(v8, v9);
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 25) = *(a2 + 25);
    v10 = a3[9];
    v11 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
    v12 = a3[11];
    *(a1 + a3[10]) = *(a2 + a3[10]);
    v13 = (a1 + v12);
    v14 = (a2 + v12);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
    v16 = a3[12];
    v17 = (a1 + v16);
    v18 = a2 + v16;
    v19 = *(a2 + v16);

    if (v19)
    {
      v20 = *(v18 + 1);
      *v17 = v19;
      v17[1] = v20;
    }

    else
    {
      *v17 = *v18;
    }

    v21 = a3[13];
    v22 = (a1 + v21);
    v23 = (a2 + v21);
    if (*v23)
    {
      v24 = v23[1];
      *v22 = *v23;
      v22[1] = v24;
    }

    else
    {
      *v22 = *v23;
    }
  }

  return a1;
}

double sub_100263EE8(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
    v2 = a1;
  }

  return result;
}

double sub_100263F04(uint64_t a1, int *a2)
{

  sub_100263FE4(*(a1 + 16), *(a1 + 24));
  v4 = a2[9];
  v5 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  if (*(a1 + a2[12]))
  {
  }

  if (*(a1 + a2[13]))
  {
  }

  return result;
}

void sub_100263FE4(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_100264000(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = a2[2];
  v8 = *(a2 + 24);

  sub_100263EE8(v7, v8);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 25) = *(a2 + 25);
  v9 = a3[9];
  v10 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
  v11 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = a3[12];
  v16 = (a1 + v15);
  v17 = a2 + v15;
  v18 = *(a2 + v15);

  if (v18)
  {
    v19 = *(v17 + 1);
    *v16 = v18;
    v16[1] = v19;
  }

  else
  {
    *v16 = *v17;
  }

  v20 = a3[13];
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  if (*v22)
  {
    v23 = v22[1];
    *v21 = *v22;
    v21[1] = v23;
  }

  else
  {
    *v21 = *v22;
  }

  return a1;
}

uint64_t *sub_10026412C(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v6 = a2[2];
  v7 = *(a2 + 24);
  sub_100263EE8(v6, v7);
  v8 = a1[2];
  a1[2] = v6;
  v9 = *(a1 + 24);
  *(a1 + 24) = v7;
  sub_100263FE4(v8, v9);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  v10 = a3[9];
  v11 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v12 = a3[11];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = v14[1];
  *v13 = *v14;
  v13[1] = v15;

  v16 = a3[12];
  v17 = (a1 + v16);
  v18 = a2 + v16;
  v19 = *(a1 + v16);
  v20 = *(a2 + v16);
  if (v19)
  {
    if (v20)
    {
      v21 = *(v18 + 1);
      *v17 = v20;
      v17[1] = v21;

      goto LABEL_8;
    }
  }

  else if (v20)
  {
    v22 = *(v18 + 1);
    *v17 = v20;
    v17[1] = v22;

    goto LABEL_8;
  }

  *v17 = *v18;
LABEL_8:
  v23 = a3[13];
  v24 = (a1 + v23);
  v25 = (a2 + v23);
  v26 = *(a1 + v23);
  v27 = *v25;
  if (!v26)
  {
    if (v27)
    {
      v29 = v25[1];
      *v24 = v27;
      v24[1] = v29;

      return a1;
    }

LABEL_14:
    *v24 = *v25;
    return a1;
  }

  if (!v27)
  {

    goto LABEL_14;
  }

  v28 = v25[1];
  *v24 = v27;
  v24[1] = v28;

  return a1;
}

uint64_t sub_1002642F8(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  v6 = a3[9];
  v7 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v9) = *(a2 + v9);
  return a1;
}

uint64_t *sub_1002643B4(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v6 = *(a2 + 24);
  v7 = a1[2];
  a1[2] = a2[2];
  v8 = *(a1 + 24);
  *(a1 + 24) = v6;
  sub_100263FE4(v7, v8);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  v9 = a3[9];
  v10 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v11) = *(a2 + v11);

  v12 = a3[12];
  v13 = (a1 + v12);
  v14 = a2 + v12;
  v15 = *(a1 + v12);
  v16 = *(a2 + v12);
  if (v15)
  {
    if (v16)
    {
      v17 = *(v14 + 1);
      *v13 = v16;
      v13[1] = v17;

      goto LABEL_8;
    }
  }

  else if (v16)
  {
    v18 = *(v14 + 1);
    *v13 = v16;
    v13[1] = v18;
    goto LABEL_8;
  }

  *v13 = *v14;
LABEL_8:
  v19 = a3[13];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  v22 = *(a1 + v19);
  v23 = *v21;
  if (!v22)
  {
    if (v23)
    {
      v25 = v21[1];
      *v20 = v23;
      v20[1] = v25;
      return a1;
    }

LABEL_14:
    *v20 = *v21;
    return a1;
  }

  if (!v23)
  {

    goto LABEL_14;
  }

  v24 = v21[1];
  *v20 = v23;
  v20[1] = v24;

  return a1;
}

uint64_t sub_100264584(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListLayout();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t assignWithCopy for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration.InitialSections(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_100263EE8(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_100263FE4(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration.InitialSections(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_100263FE4(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration.InitialSections(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration.InitialSections(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100264790(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1002647A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100264870()
{

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection, &qword_100776648, &qword_100636AE8);

  return swift_deallocClassInstance();
}

uint64_t *sub_100264904(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for REMHashtagLabelSpecifier();
    }

    else
    {
      v6 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    }

    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100264A30(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for REMHashtagLabelSpecifier();
  }

  else
  {
    v3 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  }

  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t sub_100264AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for REMHashtagLabelSpecifier();
  }

  else
  {
    v5 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  }

  (*(*(v5 - 8) + 16))(a1, a2);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_100264B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_100019998(a1, type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for REMHashtagLabelSpecifier();
    }

    else
    {
      v5 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    }

    (*(*(v5 - 8) + 16))(a1, a2);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100264C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for REMHashtagLabelSpecifier();
  }

  else
  {
    v5 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  }

  (*(*(v5 - 8) + 32))(a1, a2);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_100264CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_100019998(a1, type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for REMHashtagLabelSpecifier();
    }

    else
    {
      v5 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    }

    (*(*(v5 - 8) + 32))(a1, a2);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100264DA4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100776660);
  v1 = sub_100003E30(v0, qword_100776660);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100264F88()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [v0 navigationItem];
  v2._countAndFlagsBits = 0x737265746C6946;
  v3._object = 0x800000010067B710;
  v2._object = 0xE700000000000000;
  v3._countAndFlagsBits = 0xD00000000000003ELL;
  TTRLocalizedString(_:comment:)(v2, v3);
  v4 = String._bridgeToObjectiveC()();

  [v1 setTitle:v4];

  v5 = [v0 navigationItem];
  v6 = objc_allocWithZone(UIBarButtonItem);
  v7 = v0;
  v8 = [v6 initWithBarButtonSystemItem:1 target:v7 action:"cancelButtonAction:"];
  [v5 setLeftBarButtonItem:v8];

  v9 = [v7 navigationItem];
  v10 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v7 action:"doneButtonAction:"];

  [v9 setRightBarButtonItem:v10];
  sub_100265134();
}

void sub_100265134()
{
  v1 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRTableViewAnimations();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_tableDataController;
  if (!*&v0[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_tableDataController])
  {
    v24 = [v0 view];
    if (v24)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v23 = v0;
        v13 = sub_1002715F4();
        v26 = sub_100003540(0, &qword_100771B60, UITableView_ptr);
        v27 = &protocol witness table for UITableView;
        v25 = v12;
        v24 = v24;
        sub_1003E09F0(v13);

        (*(v6 + 104))(v9, enum case for TTRTableViewAnimations.middle(_:), v5);
        v14 = objc_allocWithZone(type metadata accessor for TTRITableDataController());
        v15 = TTRITableDataController.init(tableView:sections:rowInsertionAnimationType:collapseSectionIfItemsAreHidden:)();
        TTRITableDataController.customSectionSpacing.setter();
        v16 = v23;
        v17 = *&v23[v10];
        *&v23[v10] = v15;
        v18 = v16;
        v19 = v15;

        [v12 setDataSource:v19];
        [v12 setDelegate:v19];
        v20 = (*(v2 + 104))(v4, enum case for TTRITableDataController.BatchUpdatesApplication.reload(_:), v1);
        __chkstk_darwin(v20);
        *(&v22 - 2) = v18;
        TTRITableDataController.performBatchUpdates(by:updates:)();

        (*(v2 + 8))(v4, v1);
      }

      else
      {
        v21 = v24;
      }
    }
  }
}

uint64_t sub_100265670(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  if (qword_100767030 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100776660);
  sub_1003F99F4(0xD000000000000012, 0x800000010067B6F0);
  UIViewController.endFirstResponderEditing()();
  [v2 resignFirstResponder];
  if ([v2 isMovingFromParentViewController])
  {
    sub_1003EB81C();
  }

  sub_10027602C(&qword_100776B28, v5, type metadata accessor for TTRISmartListFilterEditorViewController, &unk_100636CB0);
  result = TTRKeyboardAvoidance<>.stopAvoidingKeyboard()();
  *(v2 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_ttrAccessibilityShouldAnnounceOptionChanges) = 0;
  return result;
}

unint64_t sub_10026580C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9Reminders33TTRSmartListFilterEditorViewModelV11TimeOptionsO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100265838()
{
  v1 = *v0;
  v2 = 0x7367617468736168;
  v3 = 0x797469726F697270;
  if (v1 != 5)
  {
    v3 = 0x737473696CLL;
  }

  v4 = 0x6E6F697461636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x64656767616C66;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 1)
  {
    v5 = 1701669236;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void *sub_100265960()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___enabledFilters))
  {
    v1 = *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___enabledFilters);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___enabledFilters) = &_swiftEmptySetSingleton;
  }

  return v1;
}

uint64_t sub_1002659A8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a3(v3, a2);
    *(v3 + v4) = v6;
  }

  return v6;
}

uint64_t sub_100265A10()
{
  v1 = v0;
  v2 = type metadata accessor for TTRILocationCellContentState();
  v4 = __chkstk_darwin(v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationDetailCell;
  if (*(v1 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationDetailCell))
  {
    v8 = *(v1 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationDetailCell);
  }

  else
  {
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    (*(v3 + 104))(v6, enum case for TTRILocationCellContentState.plainText(_:), v4);
    v9 = objc_allocWithZone(type metadata accessor for TTRILocationCellContent());
    TTRILocationCellContent.init(state:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    TTRILocationCellContent.action.setter();

    sub_100058000(&qword_100776968, &qword_100636DF8);
    swift_allocObject();
    v8 = TTRITableCell.init(_:)();
    *(v1 + v7) = v8;
  }

  return v8;
}

uint64_t sub_100265BB8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v7 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = *a1;
  if (*(v3 + *a1))
  {
    v14 = *(v3 + *a1);
  }

  else
  {
    v15 = type metadata accessor for TTRITableSectionHeaderFooter();
    v16 = *(*(v15 - 8) + 56);
    v16(v12, 1, 1, v15);
    v16(v9, 1, 1, v15);
    sub_100058000(&qword_1007768B0, &qword_1006338A0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10062D400;
    *(v17 + 32) = sub_100266794(a2, a3);
    *(v17 + 40) = &protocol witness table for TTRITableGroup;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v14 = TTRITableSection.init(header:footer:items:)();
    *(v3 + v13) = v14;
  }

  return v14;
}

uint64_t sub_100265D7C()
{
  v0 = *(sub_100265960() + 2);

  if (v0)
  {
    v1 = 0x694620726568744FLL;
    v2 = 0xED0000737265746CLL;
    v3 = 0xD00000000000001FLL;
    v4 = 0x8000000100673830;
    v5 = 0x8000000100673850;
    v6 = 0xD000000000000019;
  }

  else
  {
    v1 = 0x46207463656C6553;
    v2 = 0xEE00737265746C69;
    v3 = 0xD00000000000002ALL;
    v4 = 0x8000000100673940;
    v6 = 0xD00000000000002CLL;
    v5 = 0x8000000100673970;
  }

  return TTRLocalizedString(_:value:comment:)(*&v3, *&v1, *&v6)._countAndFlagsBits;
}

void sub_100265E58()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___disabledFiltersGroup))
  {

    return;
  }

  v21 = OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___disabledFiltersGroup;
  v2 = sub_1002662F4();
  v3 = v2;
  v4 = v2[2];
  if (v4)
  {
    v5 = sub_1003AC658(v2[2], 0);
    v6 = sub_1003B34B0(&v22, v5 + 32, v4, v3);
    v7 = v22;

    sub_10008BA48(v7);
    if (v6 != v4)
    {
      __break(1u);

      __break(1u);
      return;
    }
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v22 = v5;
  sub_100272C34(&v22);
  v8 = v22;
  v9 = *(v22 + 2);
  if (v9)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_1004A2470(0, v9, 0);
    v10 = 32;
    v11 = v22;
    do
    {
      v12 = v8[v10];
      if (v12 <= 2)
      {
        if (v8[v10])
        {
          if (v12 == 1)
          {
            v13 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateOptionsCell, sub_100269054);
            v14 = &qword_100776918;
            v15 = &qword_100776920;
            v16 = &qword_100636DC8;
          }

          else
          {
            v13 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___timeOptionsCell, sub_10026A94C);
            v14 = &qword_100776908;
            v15 = &qword_100776910;
            v16 = &qword_100636DC0;
          }
        }

        else
        {
          v13 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagOptionsCell, sub_10026C658);
          v14 = &qword_100776870;
          v15 = &qword_100776878;
          v16 = &unk_100636D60;
        }
      }

      else if (v8[v10] > 4u)
      {
        if (v12 == 5)
        {
          v13 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___priorityOptionsCell, sub_10026B13C);
          v14 = &qword_1007769B0;
          v15 = &qword_1007769B8;
          v16 = &qword_100636E30;
        }

        else
        {
          v13 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listsOptionsCell, sub_10026D6D0);
          v14 = &qword_1007769D0;
          v15 = &qword_1007769D8;
          v16 = &qword_100636E40;
        }
      }

      else if (v12 == 3)
      {
        v13 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationOptionsCell, sub_10026BE08);
        v14 = &qword_100776970;
        v15 = &qword_100776978;
        v16 = &qword_100636E00;
      }

      else
      {
        v13 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedOptionsCell, sub_10026B894);
        v14 = &qword_1007769C0;
        v15 = &qword_1007769C8;
        v16 = &qword_100636E38;
      }

      v17 = sub_10000E188(v14, v15, v16, &protocol conformance descriptor for TTRITableCell<A>);
      v22 = v11;
      v19 = *(v11 + 2);
      v18 = *(v11 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1004A2470((v18 > 1), v19 + 1, 1);
        v11 = v22;
      }

      *(v11 + 2) = v19 + 1;
      v20 = &v11[16 * v19];
      *(v20 + 4) = v13;
      *(v20 + 5) = v17;
      ++v10;
      --v9;
    }

    while (v9);
  }

  type metadata accessor for TTRITableGroup();
  swift_allocObject();
  *(v1 + v21) = TTRITableGroup.init(cells:)();
}

void *sub_1002662F4()
{
  v0 = sub_1004B6430(&off_100712780);
  v1 = sub_100265960();
  if (v1[2] <= v0[2] >> 3)
  {
    sub_1000EBFD8(v1);
  }

  else
  {
    v0 = sub_1001D0360(v1, v0);
  }

  return v0;
}

uint64_t sub_100266378(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v1 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateOptionsCell, sub_100269054);
        v2 = &qword_100776918;
        v3 = &qword_100776920;
        v4 = &qword_100636DC8;
      }

      else
      {
        v1 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___timeOptionsCell, sub_10026A94C);
        v2 = &qword_100776908;
        v3 = &qword_100776910;
        v4 = &qword_100636DC0;
      }
    }

    else
    {
      v1 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagOptionsCell, sub_10026C658);
      v2 = &qword_100776870;
      v3 = &qword_100776878;
      v4 = &unk_100636D60;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v1 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___priorityOptionsCell, sub_10026B13C);
      v2 = &qword_1007769B0;
      v3 = &qword_1007769B8;
      v4 = &qword_100636E30;
    }

    else
    {
      v1 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listsOptionsCell, sub_10026D6D0);
      v2 = &qword_1007769D0;
      v3 = &qword_1007769D8;
      v4 = &qword_100636E40;
    }
  }

  else if (a1 == 3)
  {
    v1 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationOptionsCell, sub_10026BE08);
    v2 = &qword_100776970;
    v3 = &qword_100776978;
    v4 = &qword_100636E00;
  }

  else
  {
    v1 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedOptionsCell, sub_10026B894);
    v2 = &qword_1007769C0;
    v3 = &qword_1007769C8;
    v4 = &qword_100636E38;
  }

  sub_10000E188(v2, v3, v4, &protocol conformance descriptor for TTRITableCell<A>);
  return v1;
}

uint64_t sub_1002665A0()
{
  v1 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___filterOperatorSection;
  if (*(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___filterOperatorSection))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___filterOperatorSection);
  }

  else
  {
    v9 = type metadata accessor for TTRITableSectionHeaderFooter();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 1, 1, v9);
    v10(v3, 1, 1, v9);
    sub_100058000(&qword_1007768B0, &qword_1006338A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    v12 = v0;
    v13 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___filterOperatorCell, sub_10026E668);
    v14 = sub_10000E188(&unk_100776B30, &unk_100776B18, qword_100636F48, &protocol conformance descriptor for TTRITableCell<A>);
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v8 = TTRITableSection.init(header:footer:items:)();
    *(v12 + v7) = v8;
  }

  return v8;
}

uint64_t sub_100266794(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

void sub_1002667FC(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_100265960();
  v22 = sub_1000AAA9C(a1, v3);

  v4 = sub_1002662F4();
  v5 = v4;
  if (v2 == 2)
  {
    v6 = v4[2];
    if (!v6)
    {

      v7 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v7 = sub_1003AC658(v4[2], 0);
    v8 = sub_1003B34B0(&v23, v7 + 32, v6, v5);
    v9 = v23;

    sub_10008BA48(v9);
    if (v8 == v6)
    {

LABEL_9:
      v23 = v7;
      sub_100272C34(&v23);
      v14 = *(v23 + 2);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          if (v23[i + 32] == 2)
          {
            break;
          }
        }
      }

      sub_100265E58();
      v16 = TTRITableGroup.cells.getter();

      v17 = *(v16 + 16);

      v23 = 0;
      v24 = v17;
      sub_100275B6C();
      Strideable<>.clamped(to:)();
      if (v22)
      {
        sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateGroup, sub_100274FC4);
        TTRITableGroup.cells.getter();
      }

      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);

    __break(1u);
    return;
  }

  v10 = v4[2];
  if (v10)
  {
    v11 = sub_1003AC658(v10, 0);
    v12 = sub_1003B34B0(&v23, v11 + 32, v10, v5);
    v13 = v23;

    sub_10008BA48(v13);
    if (v12 != v10)
    {
      goto LABEL_23;
    }
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  v23 = v11;
  sub_100272C34(&v23);
  v18 = *(v23 + 2);
  if (v18)
  {
    for (j = 0; j != v18; ++j)
    {
      if (v23[j + 32] == a1)
      {
        break;
      }
    }
  }

  sub_100265E58();
  v20 = TTRITableGroup.cells.getter();

  v21 = *(v20 + 16);

  v23 = 0;
  v24 = v21;
  sub_100275B6C();
  Strideable<>.clamped(to:)();
}

uint64_t sub_100266B50(uint64_t a1)
{
  v3 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v3 - 8);
  v5 = v37 - v4;
  v6 = sub_1002662F4();
  v7 = sub_1000AAA9C(a1, v6);

  v38 = sub_100265960();
  sub_10058CFD4(&v39, a1);
  *(v1 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___enabledFilters) = v38;

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      v10 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedSection;
      v11 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedGroup;
      v12 = sub_1002748C4;
    }

    else if (a1 == 5)
    {
      v10 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___prioritySection;
      v11 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___priorityGroup;
      v12 = sub_10027458C;
    }

    else
    {
      v10 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listsSection;
      v11 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listsGroup;
      v12 = sub_100274BFC;
    }
  }

  else
  {
    if (a1 - 1 < 2)
    {
      sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateSection, sub_100275784);
      v8 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateGroup;
      v9 = sub_100274FC4;
      goto LABEL_13;
    }

    if (!a1)
    {
      sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagsSection, sub_100273EE8);
      v8 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagsGroup;
      v9 = sub_100273A48;
      goto LABEL_13;
    }

    v10 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationSection;
    v11 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationGroup;
    v12 = sub_1002741BC;
  }

  v13 = v12;
  sub_100265BB8(v10, v11, v12);
  v8 = v11;
  v9 = v13;
LABEL_13:
  v14 = sub_100266794(v8, v9);
  v15 = type metadata accessor for TTRITableSectionHeaderFooter();
  v16 = *(*(v15 - 8) + 56);
  v16(v5, 1, 1, v15);
  TTRITableSection.header.setter();
  v16(v5, 1, 1, v15);
  TTRITableSection.footer.setter();
  sub_100266378(a1);
  v18 = v17;
  sub_1002667FC(a1);
  if (v7)
  {
    v20 = v19;
    v37[1] = v14;
    sub_100267078();
    if (qword_100767030 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003E30(v21, qword_100776660);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v37[0] = v18;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      v26 = 0xE800000000000000;
      v27 = 0x7367617468736168;
      *v24 = 136315394;
      v28 = 0xE800000000000000;
      v29 = 0x797469726F697270;
      if (a1 != 5)
      {
        v29 = 0x737473696CLL;
        v28 = 0xE500000000000000;
      }

      v30 = 0xE800000000000000;
      v31 = 0x6E6F697461636F6CLL;
      if (a1 != 3)
      {
        v31 = 0x64656767616C66;
        v30 = 0xE700000000000000;
      }

      if (a1 <= 4u)
      {
        v29 = v31;
        v28 = v30;
      }

      v32 = 1702125924;
      if (a1 != 1)
      {
        v32 = 1701669236;
      }

      if (a1)
      {
        v27 = v32;
        v26 = 0xE400000000000000;
      }

      if (a1 <= 2u)
      {
        v33 = v27;
      }

      else
      {
        v33 = v29;
      }

      if (a1 <= 2u)
      {
        v34 = v26;
      }

      else
      {
        v34 = v28;
      }

      v35 = sub_100004060(v33, v34, &v38);

      *(v24 + 4) = v35;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      sub_100004758(v25);
    }

    else
    {
    }

    sub_100265E58();
    TTRITableGroup.move(_:to:at:)();
  }

  return swift_unknownObjectRelease();
}

void sub_100267078()
{
  v0 = sub_100265960();
  v1 = v0;
  v2 = v0[2];
  if (v2)
  {
    v3 = sub_1003AC658(v0[2], 0);
    v4 = sub_1003B34B0(&v23, v3 + 32, v2, v1);
    v5 = v23;

    sub_10008BA48(v5);
    if (v4 != v2)
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
  }

  v23 = v3;
  sub_100272C34(&v23);
  v6 = sub_1002662F4();
  v7 = v6[2];
  if (!v7)
  {

    v8 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  v8 = sub_1003AC658(v7, 0);
  v9 = sub_1003B34B0(&v23, v8 + 32, v7, v6);
  v10 = v23;

  sub_10008BA48(v10);
  if (v9 != v7)
  {
LABEL_18:
    __break(1u);

    __break(1u);
    return;
  }

LABEL_9:
  v23 = v8;
  sub_100272C34(&v23);
  if (qword_100767030 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100776660);

  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = Array.description.getter();
    v16 = v15;

    v17 = sub_100004060(v14, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = Array.description.getter();
    v20 = v19;

    v21 = sub_100004060(v18, v20, &v23);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, oslog, v12, "TTRISmartListFilterEditor {enabled: %s, disabled: %s}", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_1002673E0(unsigned __int8 a1)
{
  v3 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v3 - 8);
  v5 = v38 - v4;
  v6 = sub_100265960();
  v7 = sub_1000AAA9C(a1, v6);

  v8 = OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___enabledFilters;
  v39 = *(v1 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___enabledFilters);

  sub_1000EA7FC(a1);
  *(v1 + v8) = v39;

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      v11 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedSection;
      v12 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedGroup;
      v13 = sub_1002748C4;
    }

    else if (a1 == 5)
    {
      v11 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___prioritySection;
      v12 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___priorityGroup;
      v13 = sub_10027458C;
    }

    else
    {
      v11 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listsSection;
      v12 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listsGroup;
      v13 = sub_100274BFC;
    }
  }

  else
  {
    if (a1 - 1 < 2)
    {
      sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateSection, sub_100275784);
      v9 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateGroup;
      v10 = sub_100274FC4;
      goto LABEL_13;
    }

    if (!a1)
    {
      sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagsSection, sub_100273EE8);
      v9 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagsGroup;
      v10 = sub_100273A48;
      goto LABEL_13;
    }

    v11 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationSection;
    v12 = &OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationGroup;
    v13 = sub_1002741BC;
  }

  v14 = v13;
  sub_100265BB8(v11, v12, v13);
  v9 = v12;
  v10 = v14;
LABEL_13:
  v15 = sub_100266794(v9, v10);
  v16 = type metadata accessor for TTRITableSectionHeaderFooter();
  v17 = *(*(v16 - 8) + 56);
  v17(v5, 1, 1, v16);
  TTRITableSection.header.setter();
  v17(v5, 1, 1, v16);
  TTRITableSection.footer.setter();
  sub_100266378(a1);
  v19 = v18;
  sub_1002667FC(a1);
  if (v7)
  {
    v21 = v20;
    v38[2] = v15;
    sub_100267078();
    if (qword_100767030 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_100776660);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v38[1] = v19;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      v27 = 0xE800000000000000;
      v28 = 0x7367617468736168;
      *v25 = 136315394;
      v29 = 0xE800000000000000;
      v30 = 0x797469726F697270;
      if (a1 != 5)
      {
        v30 = 0x737473696CLL;
        v29 = 0xE500000000000000;
      }

      v31 = 0xE800000000000000;
      v32 = 0x6E6F697461636F6CLL;
      if (a1 != 3)
      {
        v32 = 0x64656767616C66;
        v31 = 0xE700000000000000;
      }

      if (a1 <= 4u)
      {
        v30 = v32;
        v29 = v31;
      }

      v33 = 1702125924;
      if (a1 != 1)
      {
        v33 = 1701669236;
      }

      if (a1)
      {
        v28 = v33;
        v27 = 0xE400000000000000;
      }

      if (a1 <= 2u)
      {
        v34 = v28;
      }

      else
      {
        v34 = v30;
      }

      if (a1 <= 2u)
      {
        v35 = v27;
      }

      else
      {
        v35 = v29;
      }

      v36 = sub_100004060(v34, v35, &v39);

      *(v25 + 4) = v36;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v21;
      sub_100004758(v26);
    }

    else
    {
    }

    sub_100265E58();
    TTRITableGroup.move(_:to:at:)();
  }

  return swift_unknownObjectRelease();
}

void sub_100267908(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v106 = *(v4 - 8);
  v107 = v4;
  __chkstk_darwin(v4);
  v105 = (&v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v113 = v6;
  v114 = v7;
  __chkstk_darwin(v6);
  v108 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v111 = &v102 - v10;
  __chkstk_darwin(v11);
  v110 = &v102 - v12;
  __chkstk_darwin(v13);
  v112 = &v102 - v14;
  __chkstk_darwin(v15);
  v104 = (&v102 - v16);
  __chkstk_darwin(v17);
  v103 = (&v102 - v18);
  __chkstk_darwin(v19);
  v109 = &v102 - v20;
  v21 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  __chkstk_darwin(v21);
  v23 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v102 - v25;
  __chkstk_darwin(v27);
  v29 = &v102 - v28;
  v30 = *(type metadata accessor for TTRSmartListFilterEditorViewModel(0) + 20);
  swift_storeEnumTagMultiPayload();
  v31 = _s9Reminders33TTRSmartListFilterEditorViewModelV11DateOptionsO21__derived_enum_equalsySbAE_AEtFZ_0(a1 + v30, v29);
  sub_100275ECC(v29, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  if (v31)
  {
    sub_1002673E0(1u);
  }

  else
  {
    sub_100266B50(1);
  }

  sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateOptionsCell, sub_100269054);
  v32 = TTRITableCell.content.getter();

  v115[39] = sub_10049CCBC();
  v33 = TTRITableCellContent.state.modify();
  sub_100058000(&qword_100776928, &qword_100636DD0);
  TTRIOptionMenuCellContentState.selectedItem.setter();
  v33(v115, 0);

  if ((UIViewController.isIPadIdiom.getter() & 1) == 0)
  {
    sub_100275F2C(a1 + v30, v23, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if ((EnumCaseMultiPayload - 6) >= 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v66 = sub_100058000(&qword_100776AE0, &qword_10063D830);
          v67 = v66[12];
          v104 = *&v23[v66[16] + 16];
          v68 = &v23[v66[20]];
          v69 = *v68;
          v106 = *(v68 + 1);
          v107 = v69;
          v70 = *(v68 + 2);
          v109 = *(v68 + 3);
          v110 = v70;
          v71 = v113;
          v72 = v114[4];
          v72(v111, v23, v113);
          v72(v108, &v23[v67], v71);
          v105 = sub_100269E0C;
          sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell1, sub_100275754, sub_100269E0C);
          v73 = TTRITableCell.content.getter();

          v74 = TTRITableCellContent.state.modify();
          TTRIDetailCellState.title.setter();
          v74(v115, 0);

          v75 = TTRITableCell.content.getter();

          v76 = TTRITableCellContent.state.modify();
          TTRIDetailCellState.detailText.setter();
          v76(v115, 0);

          v104 = sub_10026A11C;
          sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDatePickerCell1, sub_100275720, sub_10026A11C);
          v77 = TTRITableCell.content.getter();

          v103 = v114[2];
          v103(v112, v111, v71);
          v78 = TTRITableCellContent.state.modify();
          TTRICalendarPickerCellContentState.date.setter();
          v78(v115, 0);

          v102 = *(v2 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_presenter);
          sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell2, sub_1002756E8, v105);
          v79 = TTRITableCell.content.getter();

          v80 = TTRITableCellContent.state.modify();
          TTRIDetailCellState.title.setter();
          v80(v115, 0);

          v81 = TTRITableCell.content.getter();

          v82 = TTRITableCellContent.state.modify();
          TTRIDetailCellState.detailText.setter();
          v82(v115, 0);

          sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDatePickerCell2, sub_1002756B4, v104);
          v83 = TTRITableCell.content.getter();

          v84 = v113;
          v85 = v108;
          v103(v112, v108, v113);
          v86 = TTRITableCellContent.state.modify();
          TTRICalendarPickerCellContentState.date.setter();
          v86(v115, 0);

          v87 = v114[1];
          v87(v85, v84);
          v87(v111, v84);
          LODWORD(v114) = 1;
          LODWORD(v113) = 1;
          goto LABEL_20;
        }

        v114 = *&v23[*(sub_100058000(&qword_100776AD8, &unk_100636F10) + 48) + 8];
        v91 = v105;
        v92 = v106;
        v93 = *(v106 + 32);
        v94 = v105;
        v95 = v23;
LABEL_23:
        v96 = v107;
        v93(v94, v95, v107);
        sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___relativeRangeCell, sub_10026992C);
        v97 = TTRITableCell.content.getter();

        v98 = TTRITableCellContent.state.modify();
        (*(v92 + 24))(v99, v91, v96);
        v98(v115, 0);

        sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell1, sub_100275754, sub_100269E0C);
        v100 = TTRITableCell.content.getter();

        v101 = TTRITableCellContent.state.modify();
        TTRIDetailCellState.detailText.setter();
        v101(v115, 0);

        (*(v92 + 8))(v91, v96);
        LODWORD(v114) = 1;
        LODWORD(v113) = 1;
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    if ((EnumCaseMultiPayload - 1) < 3)
    {
      sub_100058000(&qword_100776AE8, &qword_100636F20);
      (v114[4])(v110, v23, v113);
      sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell1, sub_100275754, sub_100269E0C);
      v62 = TTRITableCell.content.getter();

      v63 = TTRITableCellContent.state.modify();
      TTRIDetailCellState.detailText.setter();
      v63(v115, 0);

      sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDatePickerCell1, sub_100275720, sub_10026A11C);
      v64 = TTRITableCell.content.getter();

      v65 = TTRITableCellContent.state.modify();
      TTRICalendarPickerCellContentState.date.setter();
      v65(v115, 0);

      LODWORD(v114) = 1;
      LODWORD(v113) = 1;
      goto LABEL_20;
    }

LABEL_18:
    sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___includePastDueRemindersCell, sub_10026A62C);
    v88 = TTRITableCell.content.getter();

    v89 = TTRITableCellContent.state.modify();
    TTRIToggleCellContentState.isOn.setter();
    v89(v115, 0);

    LODWORD(v114) = 0;
    goto LABEL_19;
  }

  sub_100275F2C(a1 + v30, v26, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  v34 = swift_getEnumCaseMultiPayload();
  if (v34 <= 3)
  {
    if ((v34 - 1) < 3)
    {
      sub_100058000(&qword_100776AE8, &qword_100636F20);

      (v114[4])(v109, v26, v113);
      sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___regularWidthDatePickerCell1, sub_100275680, sub_10026A3E8);
      v58 = TTRITableCell.content.getter();

      v59 = TTRITableCellContent.state.modify();
      TTRITitledDatePickerCellContentState.title.setter();
      v59(v115, 0);

      v60 = TTRITableCell.content.getter();

      v61 = TTRITableCellContent.state.modify();
      TTRITitledDatePickerCellContentState.date.setter();
      v61(v115, 0);

      LODWORD(v114) = 1;
      LODWORD(v113) = 1;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if ((v34 - 6) < 3)
  {
LABEL_11:
    LODWORD(v114) = 1;
LABEL_19:
    LODWORD(v113) = 1;
    goto LABEL_20;
  }

  if (v34 != 4)
  {
    v114 = *&v26[*(sub_100058000(&qword_100776AD8, &unk_100636F10) + 48) + 8];
    v91 = v105;
    v92 = v106;
    v93 = *(v106 + 32);
    v94 = v105;
    v95 = v26;
    goto LABEL_23;
  }

  v35 = sub_100058000(&qword_100776AE0, &qword_10063D830);
  v36 = v35[12];
  v37 = *&v26[v35[16]];
  v38 = &v26[v35[20]];
  v39 = *v38;
  v110 = *(v38 + 1);
  v111 = v39;
  v40 = *(v38 + 3);
  v108 = v37;
  v109 = v40;
  v41 = v113;
  v42 = v114[4];
  v43 = v103;
  v42(v103, v26, v113);
  v42(v104, &v26[v36], v41);
  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___regularWidthDatePickerCell1, sub_100275680, sub_10026A3E8);
  v44 = TTRITableCell.content.getter();

  v45 = TTRITableCellContent.state.modify();
  TTRITitledDatePickerCellContentState.title.setter();
  v45(v115, 0);

  v46 = TTRITableCell.content.getter();

  v47 = v114[2];
  v48 = v112;
  v47(v112, v43, v41);
  v49 = TTRITableCellContent.state.modify();
  TTRITitledDatePickerCellContentState.date.setter();
  v49(v115, 0);

  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___regularWidthDatePickerCell2, sub_10027564C, sub_10026A3E8);
  v50 = TTRITableCell.content.getter();

  v51 = TTRITableCellContent.state.modify();
  TTRITitledDatePickerCellContentState.title.setter();
  v51(v115, 0);

  v52 = TTRITableCell.content.getter();

  v53 = v104;
  v54 = v113;
  v47(v48, v104, v113);
  v55 = TTRITableCellContent.state.modify();
  TTRITitledDatePickerCellContentState.date.setter();
  v55(v115, 0);

  v56 = v114[1];
  v56(v53, v54);
  v56(v103, v54);
  LODWORD(v113) = 0;
  LODWORD(v114) = 1;
LABEL_20:
  v90 = sub_100268C60();
  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDatePickerCell1, sub_100275720, sub_10026A11C);
  TTRITableCell.isHidden.setter();

  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDatePickerCell2, sub_1002756B4, sub_10026A11C);
  TTRITableCell.isHidden.setter();

  sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___relativeRangeCell, sub_10026992C);
  TTRITableCell.isHidden.setter();

  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell1, sub_100275754, sub_100269E0C);
  TTRITableCell.isHidden.setter();

  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell2, sub_1002756E8, sub_100269E0C);
  TTRITableCell.isHidden.setter();

  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___regularWidthDatePickerCell1, sub_100275680, sub_10026A3E8);
  TTRITableCell.isHidden.setter();

  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___regularWidthDatePickerCell2, sub_10027564C, sub_10026A3E8);
  TTRITableCell.isHidden.setter();

  sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___includePastDueRemindersCell, sub_10026A62C);
  TTRITableCell.isHidden.setter();

  sub_100268F6C(v90);
}

uint64_t sub_100268C60()
{
  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDatePickerCell1, sub_100275720, sub_10026A11C);
  v0 = TTRITableCell.isHidden.getter();

  v1 = ~v0;
  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDatePickerCell2, sub_1002756B4, sub_10026A11C);
  v2 = TTRITableCell.isHidden.getter();

  if (v2)
  {
    v3 = v1 & 1;
  }

  else
  {
    v3 = v1 & 1 | 2;
  }

  sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___relativeRangeCell, sub_10026992C);
  v4 = TTRITableCell.isHidden.getter();

  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = v3 | 4;
  }

  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell1, sub_100275754, sub_100269E0C);
  v6 = TTRITableCell.isHidden.getter();

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 | 8;
  }

  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell2, sub_1002756E8, sub_100269E0C);
  v8 = TTRITableCell.isHidden.getter();

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 | 0x10;
  }

  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___regularWidthDatePickerCell1, sub_100275680, sub_10026A3E8);
  v10 = TTRITableCell.isHidden.getter();

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 | 0x80;
  }

  sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___regularWidthDatePickerCell2, sub_10027564C, sub_10026A3E8);
  v12 = TTRITableCell.isHidden.getter();

  if ((v12 & 1) == 0)
  {
    v11 |= 0x100uLL;
  }

  sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationQuickPicksCell, sub_10026C3A0);
  v13 = TTRITableCell.isHidden.getter();

  if ((v13 & 1) == 0)
  {
    v11 |= 0x20uLL;
  }

  sub_100265A10();
  v14 = TTRITableCell.isHidden.getter();

  if (v14)
  {
    v15 = v11;
  }

  else
  {
    v15 = v11 | 0x40;
  }

  sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___includePastDueRemindersCell, sub_10026A62C);
  v16 = TTRITableCell.isHidden.getter();

  if (v16)
  {
    return v15;
  }

  else
  {
    return v15 | 0x200;
  }
}

void sub_100268F6C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_ttrAccessibilityShouldAnnounceOptionChanges) == 1)
  {
    v3 = sub_100268C60();
    v4 = v3 & a1;
    if (v3 == a1 || v4 != a1)
    {
      if (v3 == a1 || v4 != v3)
      {
        if (v3 == a1)
        {
          return;
        }

        v5 = UIAccessibilityAnnouncementNotification;
        static TTRAccesibility.General.Announcements.OptionsChanged.getter();
      }

      else
      {
        v5 = UIAccessibilityAnnouncementNotification;
        static TTRAccesibility.General.Announcements.FewerOptionsShown.getter();
      }
    }

    else
    {
      v5 = UIAccessibilityAnnouncementNotification;
      static TTRAccesibility.General.Announcements.MoreOptionsShown.getter();
    }

    argument = String._bridgeToObjectiveC()();

    UIAccessibilityPostNotification(v5, argument);
  }
}

uint64_t sub_100269054(uint64_t a1)
{
  v51[3] = a1;
  v1 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v1 - 8);
  v51[0] = v51 - v2;
  v3 = sub_100058000(&qword_100776928, &qword_100636DD0);
  __chkstk_darwin(v3 - 8);
  v51[2] = v51 - v4;
  sub_100058000(&qword_100776930, &qword_100636DD8);
  v5 = sub_100058000(&qword_100776938, &qword_100636DE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v51[1] = v9;
  *(v9 + 16) = xmmword_100636B00;
  v10 = v9 + v8;
  v11._object = 0x800000010067A610;
  v12._countAndFlagsBits = 0xD00000000000002ALL;
  v12._object = 0x800000010067A630;
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  v13._countAndFlagsBits = 6710863;
  v13._object = 0xE300000000000000;
  TTRLocalizedString(_:value:comment:)(v11, v13, v12);
  v61 = 0;
  sub_1002755B0();
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v14 = enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:);
  v15 = *(v6 + 104);
  v15(v10, enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:), v5);
  v15(v10 + v7, enum case for TTRIOptionMenuCellContentState.Option.separator<A>(_:), v5);
  v16._object = 0x800000010067A660;
  v17._countAndFlagsBits = 0xD00000000000002ALL;
  v17._object = 0x800000010067A680;
  v16._countAndFlagsBits = 0xD00000000000001BLL;
  v18._countAndFlagsBits = 7958081;
  v18._object = 0xE300000000000000;
  TTRLocalizedString(_:value:comment:)(v16, v18, v17);
  v60 = 1;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 2 * v7, v14, v5);
  v19._countAndFlagsBits = 0x7961646F54;
  v20._countAndFlagsBits = 0xD00000000000001DLL;
  v20._object = 0x800000010067A6B0;
  v21._countAndFlagsBits = 0xD00000000000002CLL;
  v21._object = 0x800000010067A6D0;
  v19._object = 0xE500000000000000;
  TTRLocalizedString(_:value:comment:)(v20, v19, v21);
  v59 = 2;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 3 * v7, v14, v5);
  v22._countAndFlagsBits = 0x7461442061206E4FLL;
  v23._countAndFlagsBits = 0xD00000000000001FLL;
  v23._object = 0x800000010067A700;
  v24._countAndFlagsBits = 0xD000000000000030;
  v24._object = 0x800000010067A720;
  v22._object = 0xE900000000000065;
  TTRLocalizedString(_:value:comment:)(v23, v22, v24);
  v58 = 3;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 4 * v7, v14, v5);
  v25._countAndFlagsBits = 0x612065726F666542;
  v25._object = 0xED00006574614420;
  v26._countAndFlagsBits = 0xD000000000000023;
  v26._object = 0x800000010067A760;
  v27._countAndFlagsBits = 0xD000000000000034;
  v27._object = 0x800000010067A790;
  TTRLocalizedString(_:value:comment:)(v26, v25, v27);
  v57 = 4;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 5 * v7, v14, v5);
  v28._countAndFlagsBits = 0x2061207265746641;
  v28._object = 0xEC00000065746144;
  v29._countAndFlagsBits = 0xD000000000000022;
  v29._object = 0x800000010067A7D0;
  v30._countAndFlagsBits = 0xD000000000000033;
  v30._object = 0x800000010067A800;
  TTRLocalizedString(_:value:comment:)(v29, v28, v30);
  v56 = 5;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 6 * v7, v14, v5);
  v31._countAndFlagsBits = 0x6569666963657053;
  v31._object = 0xEF65676E61522064;
  v32._countAndFlagsBits = 0xD000000000000027;
  v32._object = 0x800000010067A840;
  v33._countAndFlagsBits = 0xD000000000000036;
  v33._object = 0x800000010067A870;
  TTRLocalizedString(_:value:comment:)(v32, v31, v33);
  v55 = 6;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 7 * v7, v14, v5);
  v34._countAndFlagsBits = 0x65766974616C6552;
  v34._object = 0xEE0065676E615220;
  v35._countAndFlagsBits = 0xD000000000000026;
  v35._object = 0x800000010067A8B0;
  v36._countAndFlagsBits = 0xD000000000000035;
  v36._object = 0x800000010067A8E0;
  TTRLocalizedString(_:value:comment:)(v35, v34, v36);
  v54 = 7;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 8 * v7, v14, v5);
  v37._countAndFlagsBits = 0x65746144206F4ELL;
  v38._countAndFlagsBits = 0xD00000000000001FLL;
  v38._object = 0x800000010067A920;
  v39._countAndFlagsBits = 0xD00000000000002ELL;
  v39._object = 0x800000010067A940;
  v37._object = 0xE700000000000000;
  TTRLocalizedString(_:value:comment:)(v38, v37, v39);
  v53 = 8;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 9 * v7, v14, v5);
  v40 = String._bridgeToObjectiveC()();
  v41 = [objc_opt_self() _systemImageNamed:v40];

  static TTRListColors.SmartList.scheduled.getter();
  v42 = v51[0];
  TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)();
  v43 = enum case for TTRIStaticTableViewStandardCell.Icon.roundRectIcon(_:);
  v44 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v45 = *(v44 - 8);
  (*(v45 + 104))(v42, v43, v44);
  (*(v45 + 56))(v42, 0, 1, v44);
  v46._countAndFlagsBits = 0xD000000000000017;
  v47._countAndFlagsBits = 0x6E207265746C6946;
  v47._object = 0xEB00000000656D61;
  v46._object = 0x800000010067A970;
  v48._countAndFlagsBits = 1702125892;
  v48._object = 0xE400000000000000;
  TTRLocalizedString(_:value:comment:)(v46, v48, v47);
  v52 = 0;
  TTRIOptionMenuCellContentState.init(icon:title:ttriAccessibilitySubtitle:menuOptions:selectedItem:isSeparatorHidden:)();
  v49 = objc_allocWithZone(sub_100058000(&qword_100776948, &qword_100636DE8));
  TTRIOptionMenuCellContent.init(state:menuImageProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  TTRIOptionMenuCellContent.stateChangeBlock.setter();
  sub_100058000(&qword_100776920, &qword_100636DC8);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_10026992C(uint64_t a1)
{
  v26[1] = a1;
  v26[0] = type metadata accessor for TTRITableCellContentPrototypeCellView();
  v1 = *(v26[0] - 8);
  __chkstk_darwin(v26[0]);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRISmartListFilterEditorRelativeRangeContentState(0);
  __chkstk_darwin(v12 - 8);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = v26 - v17;
  (*(v9 + 104))(v11, enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:), v8, v16);
  (*(v5 + 104))(v7, enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.day(_:), v4);
  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
  v19 = objc_allocWithZone(type metadata accessor for TTRISmartListFilterEditorRelativeRangeContent(0)) + qword_10077C0E8;
  *v19 = 0;
  v19[1] = 0;
  sub_100275F2C(v18, v14, type metadata accessor for TTRISmartListFilterEditorRelativeRangeContentState);
  (*(v1 + 104))(v3, enum case for TTRITableCellContentPrototypeCellView.cellClass(_:), v26[0]);
  v20 = TTRITableCellContent.init(state:prototypeCellView:reuseIdentifier:)();
  sub_100275ECC(v18, type metadata accessor for TTRISmartListFilterEditorRelativeRangeContentState);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = (v20 + qword_10077C0E8);
  v23 = *(v20 + qword_10077C0E8);
  v24 = *(v20 + qword_10077C0E8 + 8);
  *v22 = sub_100275718;
  v22[1] = v21;

  sub_1000301AC(v23, v24);

  sub_100058000(&qword_1007768E0, &qword_100636DA8);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void sub_100269CE0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField(0);
  __chkstk_darwin(updated);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    (*(*(v8 - 8) + 16))(v5, a1, v8);
    swift_storeEnumTagMultiPayload();
    sub_1003E36E8(v5);
    sub_100275ECC(v5, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
  }
}

uint64_t sub_100269E0C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TTRIDetailCellState.CheckmarkState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TTRIDetailCellState();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v3 + 104))(v5, enum case for TTRIDetailCellState.CheckmarkState.notSupported(_:), v2);
  TTRIDetailCellState.init(icon:title:titleTextColor:subtitle:detailText:detailTextColor:shortenedDetailText:checkmarkState:accessibilityLabel:accessibilityValue:accessibilityHint:accessibilityDifferentiateWithoutColorsIcon:)();
  v11 = objc_allocWithZone(type metadata accessor for TTRIDetailCellContent());
  v12 = TTRIDetailCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = v12;

  dispatch thunk of TTRIGenericCellContent.action.setter();

  sub_100058000(&qword_1007768C0, &qword_100636D98);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void *sub_10026A09C(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = swift_unknownObjectRetain();
    a2(v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10026A11C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TimeZone();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Date();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for TTRICalendarPickerCellContentState();
  __chkstk_darwin(v4 - 8);
  Date.init()();
  static TimeZone.ttr_default.getter();
  TTRICalendarPickerCellContentState.init(date:timeZone:)();
  v5 = objc_allocWithZone(type metadata accessor for TTRICalendarPickerCellContent());
  TTRICalendarPickerCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRICalendarPickerCellContent.stateChangeBlock.setter();

  sub_100058000(&qword_1007768D0, &qword_100636DA0);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void sub_10026A2CC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  updated = type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField(0);
  __chkstk_darwin(updated);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    UIViewController.endFirstResponderEditing()();
    a3();
    swift_storeEnumTagMultiPayload();
    sub_1003E36E8(v7);
    sub_100275ECC(v7, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
  }
}

uint64_t sub_10026A3E8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TTRITitledDatePickerCellContentState();
  __chkstk_darwin(v6 - 8);
  v7 = enum case for TTRIStaticTableViewStandardCell.Icon.blank(_:);
  v8 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v5, v7, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  Date.init()();
  TTRITitledDatePickerCellContentState.init(icon:title:date:datePickerMode:)();
  v10 = objc_allocWithZone(type metadata accessor for TTRITitledDatePickerCellContent());
  TTRITitledDatePickerCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRITitledDatePickerCellContent.stateChangeBlock.setter();

  sub_100058000(&qword_1007768F0, &unk_100636DB0);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_10026A62C()
{
  v0 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TTRIToggleCellContentState();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5._object = 0x800000010067A990;
  v6._countAndFlagsBits = 0xD000000000000037;
  v6._object = 0x800000010067A9B0;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  TTRLocalizedString(_:comment:)(v5, v6);
  TTRIToggleCellContentState.init(icon:title:subtitle:ttriAccessibilitySubtitle:isOn:isSelectable:isControlHidden:isSeparatorHidden:ttriAccessibilitySimulatesExpandAndCollapse:ttriAccessibilityIsInSimulatedExpandedState:)();
  v7 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent());
  TTRIToggleCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRIToggleCellContent.stateChangeBlock.setter();

  sub_100058000(&qword_100776900, &unk_1006377A0);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void sub_10026A840(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField(0);
  __chkstk_darwin(updated);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    UIViewController.endFirstResponderEditing()();
    *v4 = TTRIToggleCellContentState.isOn.getter() & 1;
    swift_storeEnumTagMultiPayload();
    sub_1003E36E8(v4);
    sub_100275ECC(v4, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
  }
}

uint64_t sub_10026A94C(uint64_t a1)
{
  v52 = a1;
  v1 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v1 - 8);
  v49 = &v46[-v2];
  v3 = sub_100058000(&qword_100776808, &qword_100636D18);
  __chkstk_darwin(v3 - 8);
  v51 = &v46[-v4];
  sub_100058000(&qword_100776AB8, &qword_100636EF8);
  v5 = sub_100058000(&qword_100776AC0, &qword_100636F00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v48 = 8 * v7;
  v9 = swift_allocObject();
  v50 = v9;
  *(v9 + 16) = xmmword_100636B10;
  v10 = v9 + v8;
  v11._object = 0x800000010067B100;
  v12._object = 0x800000010067B120;
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  v13._countAndFlagsBits = 6710863;
  v13._object = 0xE300000000000000;
  v12._countAndFlagsBits = 0xD00000000000002ALL;
  TTRLocalizedString(_:value:comment:)(v11, v13, v12);
  v60 = 0;
  sub_100275E38();
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v14 = enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:);
  v15 = *(v6 + 104);
  (v15)(v10, enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:), v5);
  v47 = enum case for TTRIOptionMenuCellContentState.Option.separator<A>(_:);
  v15(v10 + v7);
  v16._object = 0x800000010067B150;
  v17._object = 0x800000010067B170;
  v16._countAndFlagsBits = 0xD00000000000001BLL;
  v18._countAndFlagsBits = 7958081;
  v18._object = 0xE300000000000000;
  v17._countAndFlagsBits = 0xD00000000000002ALL;
  TTRLocalizedString(_:value:comment:)(v16, v18, v17);
  v59 = 1;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + 2 * v7, v14, v5);
  v19._countAndFlagsBits = 0x676E696E726F4DLL;
  v20._object = 0x800000010067B1A0;
  v21._object = 0x800000010067B1C0;
  v20._countAndFlagsBits = 0xD00000000000001FLL;
  v19._object = 0xE700000000000000;
  v21._countAndFlagsBits = 0xD00000000000002ELL;
  TTRLocalizedString(_:value:comment:)(v20, v19, v21);
  v58 = 2;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + 3 * v7, v14, v5);
  v22._countAndFlagsBits = 0xD000000000000021;
  v23._countAndFlagsBits = 0x6F6F6E7265746641;
  v22._object = 0x800000010067B1F0;
  v24._countAndFlagsBits = 0xD000000000000030;
  v24._object = 0x800000010067B220;
  v23._object = 0xE90000000000006ELL;
  TTRLocalizedString(_:value:comment:)(v22, v23, v24);
  v57 = 3;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + 4 * v7, v14, v5);
  v25._countAndFlagsBits = 0x676E696E657645;
  v26._object = 0x800000010067B260;
  v27._object = 0x800000010067B280;
  v26._countAndFlagsBits = 0xD00000000000001FLL;
  v25._object = 0xE700000000000000;
  v27._countAndFlagsBits = 0xD00000000000002ELL;
  TTRLocalizedString(_:value:comment:)(v26, v25, v27);
  v56 = 4;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + 5 * v7, v14, v5);
  v28._countAndFlagsBits = 0xD00000000000001DLL;
  v29._countAndFlagsBits = 0xD00000000000002CLL;
  v30._countAndFlagsBits = 0x746867694ELL;
  v28._object = 0x800000010067B2B0;
  v29._object = 0x800000010067B2D0;
  v30._object = 0xE500000000000000;
  TTRLocalizedString(_:value:comment:)(v28, v30, v29);
  v55 = 5;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + 6 * v7, v14, v5);
  v31 = v48;
  (v15)(v10 + v48 - v7, v47, v5);
  v32._countAndFlagsBits = 0xD00000000000001ELL;
  v33._countAndFlagsBits = 0x656D6954206F4ELL;
  v32._object = 0x800000010067B300;
  v34._object = 0x800000010067B320;
  v33._object = 0xE700000000000000;
  v34._countAndFlagsBits = 0xD00000000000002ELL;
  TTRLocalizedString(_:value:comment:)(v32, v33, v34);
  v54 = 6;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + v31, v14, v5);
  v35 = String._bridgeToObjectiveC()();
  v36 = [objc_opt_self() _systemImageNamed:v35];

  static TTRListColors.SmartList.today.getter();
  v37 = v49;
  TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)();
  v38 = enum case for TTRIStaticTableViewStandardCell.Icon.roundRectIcon(_:);
  v39 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v37, v38, v39);
  (*(v40 + 56))(v37, 0, 1, v39);
  v41._countAndFlagsBits = 0xD000000000000017;
  v42._countAndFlagsBits = 0x6E207265746C6946;
  v42._object = 0xEB00000000656D61;
  v41._object = 0x800000010067B350;
  v43._countAndFlagsBits = 1701669204;
  v43._object = 0xE400000000000000;
  TTRLocalizedString(_:value:comment:)(v41, v43, v42);
  v53 = 0;
  TTRIOptionMenuCellContentState.init(icon:title:ttriAccessibilitySubtitle:menuOptions:selectedItem:isSeparatorHidden:)();
  v44 = objc_allocWithZone(sub_100058000(&qword_100776AD0, &qword_100636F08));
  TTRIOptionMenuCellContent.init(state:menuImageProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  TTRIOptionMenuCellContent.stateChangeBlock.setter();
  sub_100058000(&qword_100776910, &qword_100636DC0);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_10026B13C(uint64_t a1)
{
  v49 = a1;
  v1 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v1 - 8);
  v46 = &v43[-v2];
  v3 = sub_100058000(&qword_100776818, &unk_100636D28);
  __chkstk_darwin(v3 - 8);
  v48 = &v43[-v4];
  sub_100058000(&qword_100776A58, &qword_100636EA0);
  v5 = sub_100058000(&qword_100776A60, &qword_100636EA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v45 = 8 * v7;
  v9 = swift_allocObject();
  v47 = v9;
  *(v9 + 16) = xmmword_1006329D0;
  v10 = v9 + v8;
  v11._object = 0x800000010067AD10;
  v12._countAndFlagsBits = 0xD000000000000030;
  v12._object = 0x800000010067AD40;
  v11._countAndFlagsBits = 0xD000000000000021;
  v13._countAndFlagsBits = 6710863;
  v13._object = 0xE300000000000000;
  TTRLocalizedString(_:value:comment:)(v11, v13, v12);
  v56 = 0;
  sub_100275C58();
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v14 = enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:);
  v15 = *(v6 + 104);
  (v15)(v10, enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:), v5);
  v44 = enum case for TTRIOptionMenuCellContentState.Option.separator<A>(_:);
  v15(v10 + v7);
  v16._object = 0x800000010067AD80;
  v17._countAndFlagsBits = 0xD000000000000030;
  v17._object = 0x800000010067ADB0;
  v16._countAndFlagsBits = 0xD000000000000021;
  v18._countAndFlagsBits = 7958081;
  v18._object = 0xE300000000000000;
  TTRLocalizedString(_:value:comment:)(v16, v18, v17);
  v55 = 1;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + 2 * v7, v14, v5);
  v19._object = 0x800000010067ADF0;
  v20._countAndFlagsBits = 0xD000000000000030;
  v20._object = 0x800000010067AE20;
  v19._countAndFlagsBits = 0xD000000000000021;
  v21._countAndFlagsBits = 7827276;
  v21._object = 0xE300000000000000;
  TTRLocalizedString(_:value:comment:)(v19, v21, v20);
  v54 = 2;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + 3 * v7, v14, v5);
  v22._countAndFlagsBits = 0x6D756964654DLL;
  v23._countAndFlagsBits = 0xD000000000000024;
  v23._object = 0x800000010067AE60;
  v24._countAndFlagsBits = 0xD000000000000033;
  v24._object = 0x800000010067AE90;
  v22._object = 0xE600000000000000;
  TTRLocalizedString(_:value:comment:)(v23, v22, v24);
  v53 = 3;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + 4 * v7, v14, v5);
  v25._countAndFlagsBits = 0xD000000000000022;
  v25._object = 0x800000010067AED0;
  v26._countAndFlagsBits = 0xD000000000000031;
  v26._object = 0x800000010067AF00;
  v27._countAndFlagsBits = 1751607624;
  v27._object = 0xE400000000000000;
  TTRLocalizedString(_:value:comment:)(v25, v27, v26);
  v52 = 4;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + 5 * v7, v14, v5);
  (v15)(v10 + 6 * v7, v44, v5);
  v28 = v45 - v7;
  v29._countAndFlagsBits = 0x726F697250206F4ELL;
  v29._object = 0xEB00000000797469;
  v30._countAndFlagsBits = 0xD000000000000029;
  v30._object = 0x800000010067AF40;
  v31._countAndFlagsBits = 0xD000000000000038;
  v31._object = 0x800000010067AF70;
  TTRLocalizedString(_:value:comment:)(v30, v29, v31);
  v51 = 5;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + v28, v14, v5);
  v32 = String._bridgeToObjectiveC()();
  v33 = [objc_opt_self() _systemImageNamed:v32];

  static TTRCommonAsset.Color.remindersColor1.getter();
  v34 = v46;
  TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)();
  v35 = enum case for TTRIStaticTableViewStandardCell.Icon.roundRectIcon(_:);
  v36 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v34, v35, v36);
  (*(v37 + 56))(v34, 0, 1, v36);
  v38._countAndFlagsBits = 0xD00000000000001BLL;
  v39._countAndFlagsBits = 0x797469726F697250;
  v40._countAndFlagsBits = 0x6E207265746C6946;
  v40._object = 0xEB00000000656D61;
  v38._object = 0x800000010067AFB0;
  v39._object = 0xE800000000000000;
  TTRLocalizedString(_:value:comment:)(v38, v39, v40);
  v50 = 0;
  TTRIOptionMenuCellContentState.init(icon:title:ttriAccessibilitySubtitle:menuOptions:selectedItem:isSeparatorHidden:)();
  v41 = objc_allocWithZone(sub_100058000(&qword_100776A70, &qword_100636EB0));
  TTRIOptionMenuCellContent.init(state:menuImageProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  TTRIOptionMenuCellContent.stateChangeBlock.setter();
  sub_100058000(&qword_1007769B8, &qword_100636E30);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_10026B894(uint64_t a1)
{
  v37 = a1;
  v1 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v1 - 8);
  v34 = &v33 - v2;
  v3 = sub_100058000(&qword_100776810, &qword_100636D20);
  __chkstk_darwin(v3 - 8);
  v36 = &v33 - v4;
  sub_100058000(&qword_100776A78, &qword_100636EB8);
  v5 = sub_100058000(&qword_100776A80, &qword_100636EC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v35 = v9;
  *(v9 + 16) = xmmword_1006337E0;
  v10 = v9 + v8;
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  v11._object = 0x800000010067AFD0;
  v12._countAndFlagsBits = 0xD00000000000002DLL;
  v12._object = 0x800000010067AFF0;
  v13._countAndFlagsBits = 6710863;
  v13._object = 0xE300000000000000;
  TTRLocalizedString(_:value:comment:)(v11, v13, v12);
  v41 = 0;
  sub_100275CEC();
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v14 = enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:);
  v15 = *(v6 + 104);
  v15(v10, enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:), v5);
  v15(v10 + v7, enum case for TTRIOptionMenuCellContentState.Option.separator<A>(_:), v5);
  v16._countAndFlagsBits = 0x64656767616C46;
  v17._countAndFlagsBits = 0xD000000000000022;
  v17._object = 0x800000010067B020;
  v18._countAndFlagsBits = 0xD000000000000031;
  v18._object = 0x800000010067B050;
  v16._object = 0xE700000000000000;
  TTRLocalizedString(_:value:comment:)(v17, v16, v18);
  v40 = 1;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 2 * v7, v14, v5);
  v19._countAndFlagsBits = 0x67616C4620746F4ELL;
  v19._object = 0xEB00000000646567;
  v20._countAndFlagsBits = 0xD000000000000026;
  v20._object = 0x800000010067B090;
  v21._countAndFlagsBits = 0xD000000000000035;
  v21._object = 0x800000010067B0C0;
  TTRLocalizedString(_:value:comment:)(v20, v19, v21);
  v39 = 2;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 3 * v7, v14, v5);
  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() _systemImageNamed:v22];

  static TTRListColors.SmartList.flagged.getter();
  v24 = v34;
  TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)();
  v25 = enum case for TTRIStaticTableViewStandardCell.Icon.roundRectIcon(_:);
  v26 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v24, v25, v26);
  (*(v27 + 56))(v24, 0, 1, v26);
  v28._countAndFlagsBits = 0x6E207265746C6946;
  v28._object = 0xEB00000000656D61;
  v29._object = 0x8000000100673810;
  v29._countAndFlagsBits = 0xD000000000000017;
  v30._countAndFlagsBits = 1734437958;
  v30._object = 0xE400000000000000;
  TTRLocalizedString(_:value:comment:)(v29, v30, v28);
  v38 = 0;
  TTRIOptionMenuCellContentState.init(icon:title:ttriAccessibilitySubtitle:menuOptions:selectedItem:isSeparatorHidden:)();
  v31 = objc_allocWithZone(sub_100058000(&qword_100776A90, &qword_100636EC8));
  TTRIOptionMenuCellContent.init(state:menuImageProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  TTRIOptionMenuCellContent.stateChangeBlock.setter();
  sub_100058000(&qword_1007769C8, &qword_100636E38);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_10026BE08(uint64_t a1)
{
  v38 = a1;
  v1 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v1 - 8);
  v35 = &v34 - v2;
  v3 = sub_100058000(&qword_100776980, &qword_100636E08);
  __chkstk_darwin(v3 - 8);
  v37 = &v34 - v4;
  sub_100058000(&qword_100776988, &qword_100636E10);
  v5 = sub_100058000(&qword_100776990, &qword_100636E18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v36 = v9;
  *(v9 + 16) = xmmword_1006337E0;
  v10 = v9 + v8;
  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v11._object = 0x800000010067AA10;
  v12._countAndFlagsBits = 0xD00000000000002ELL;
  v12._object = 0x800000010067AA30;
  v13._countAndFlagsBits = 6710863;
  v13._object = 0xE300000000000000;
  TTRLocalizedString(_:value:comment:)(v11, v13, v12);
  v42 = 0;
  sub_100275A6C();
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v14 = enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:);
  v15 = *(v6 + 104);
  v15(v10, enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:), v5);
  v15(v10 + v7, enum case for TTRIOptionMenuCellContentState.Option.separator<A>(_:), v5);
  v16._countAndFlagsBits = 0x6369666963657053;
  v17._countAndFlagsBits = 0xD000000000000024;
  v17._object = 0x800000010067AA60;
  v18._countAndFlagsBits = 0xD000000000000033;
  v18._object = 0x800000010067AA90;
  v16._object = 0xE800000000000000;
  TTRLocalizedString(_:value:comment:)(v17, v16, v18);
  v41 = 1;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 2 * v7, v14, v5);
  v19._countAndFlagsBits = 0x7461636F4C206F4ELL;
  v19._object = 0xEB000000006E6F69;
  v20._countAndFlagsBits = 0xD000000000000027;
  v20._object = 0x800000010067AAD0;
  v21._countAndFlagsBits = 0xD000000000000036;
  v21._object = 0x800000010067AB00;
  TTRLocalizedString(_:value:comment:)(v20, v19, v21);
  v40 = 2;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 3 * v7, v14, v5);
  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() _systemImageNamed:v22];

  v24 = [objc_opt_self() ttr_systemBlueColor];
  v25 = v35;
  TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)();
  v26 = enum case for TTRIStaticTableViewStandardCell.Icon.roundRectIcon(_:);
  v27 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v25, v26, v27);
  (*(v28 + 56))(v25, 0, 1, v27);
  v29._countAndFlagsBits = 0x6E207265746C6946;
  v29._object = 0xEB00000000656D61;
  v30._object = 0x800000010067AB40;
  v30._countAndFlagsBits = 0xD00000000000001BLL;
  v31._countAndFlagsBits = 0x6E6F697461636F4CLL;
  v31._object = 0xE800000000000000;
  TTRLocalizedString(_:value:comment:)(v30, v31, v29);
  v39 = 0;
  TTRIOptionMenuCellContentState.init(icon:title:ttriAccessibilitySubtitle:menuOptions:selectedItem:isSeparatorHidden:)();
  v32 = objc_allocWithZone(sub_100058000(&unk_1007769A0, &unk_100636E20));
  TTRIOptionMenuCellContent.init(state:menuImageProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  TTRIOptionMenuCellContent.stateChangeBlock.setter();
  sub_100058000(&qword_100776978, &qword_100636E00);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_10026C3A0()
{
  v0 = sub_100058000(&qword_100775720, &unk_100635D90);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TTRILocationQuickPickersCellContentState();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for TTRLocationQuickPickItem();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  TTRILocationQuickPickersCellContentState.init(items:selected:ttriAccessiblityProximity:ttriAccessibilityCurrentLocation:)();
  v5 = objc_allocWithZone(type metadata accessor for TTRILocationQuickPickersCellContent());
  TTRILocationQuickPickersCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRILocationQuickPickersCellContent.action.setter();

  sub_100058000(&qword_100776958, &qword_100636DF0);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void *sub_10026C55C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    UIViewController.endFirstResponderEditing()();
    swift_unknownObjectRetain();
    sub_1003E7134(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10026C5E4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();
    sub_1003E751C(1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10026C658(uint64_t a1)
{
  v44 = a1;
  v1 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v1 - 8);
  v41 = &v39[-v2];
  v3 = sub_100058000(&qword_100776888, &qword_100636D70);
  __chkstk_darwin(v3 - 8);
  v43 = &v39[-v4];
  sub_100058000(&qword_100776890, &qword_100636D78);
  v5 = sub_100058000(&qword_100776898, &qword_100636D80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v42 = v9;
  *(v9 + 16) = xmmword_10062EDD0;
  v10 = v9 + v8;
  v11._countAndFlagsBits = 0xD00000000000001ALL;
  v11._object = 0x800000010067A3B0;
  v12._countAndFlagsBits = 0xD000000000000029;
  v12._object = 0x800000010067A3D0;
  v13._countAndFlagsBits = 6710863;
  v13._object = 0xE300000000000000;
  TTRLocalizedString(_:value:comment:)(v11, v13, v12);
  v50 = 0;
  sub_100273E34();
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v14 = enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:);
  v15 = *(v6 + 104);
  (v15)(v10, enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:), v5);
  v40 = enum case for TTRIOptionMenuCellContentState.Option.separator<A>(_:);
  v15(v10 + v7);
  v16._countAndFlagsBits = 0x67615420796E41;
  v17._countAndFlagsBits = 0xD00000000000001ALL;
  v17._object = 0x800000010067A400;
  v18._countAndFlagsBits = 0xD00000000000002DLL;
  v18._object = 0x800000010067A420;
  v16._object = 0xE700000000000000;
  TTRLocalizedString(_:value:comment:)(v17, v16, v18);
  v49 = 1;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + 2 * v7, v14, v5);
  v19._countAndFlagsBits = 0xD000000000000023;
  v19._object = 0x800000010067A450;
  v20._object = 0x800000010067A480;
  v21._countAndFlagsBits = 0xD000000000000037;
  v21._object = 0x800000010067A4A0;
  v20._countAndFlagsBits = 0xD000000000000011;
  TTRLocalizedString(_:value:comment:)(v19, v20, v21);
  v48 = 2;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + 3 * v7, v14, v5);
  v22._countAndFlagsBits = 0xD000000000000023;
  v22._object = 0x800000010067A4E0;
  v23._object = 0x800000010067A510;
  v24._countAndFlagsBits = 0xD000000000000037;
  v24._object = 0x800000010067A530;
  v23._countAndFlagsBits = 0xD000000000000011;
  TTRLocalizedString(_:value:comment:)(v22, v23, v24);
  v47 = 3;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + 4 * v7, v14, v5);
  (v15)(v10 + 5 * v7, v40, v5);
  v25._countAndFlagsBits = 0x73676154206F4ELL;
  v26._countAndFlagsBits = 0xD00000000000001FLL;
  v26._object = 0x800000010067A570;
  v27._countAndFlagsBits = 0xD00000000000002DLL;
  v27._object = 0x800000010067A590;
  v25._object = 0xE700000000000000;
  TTRLocalizedString(_:value:comment:)(v26, v25, v27);
  v46 = 4;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  (v15)(v10 + 6 * v7, v14, v5);
  v28 = String._bridgeToObjectiveC()();
  v29 = [objc_opt_self() _systemImageNamed:v28];

  static TTRCommonAsset.Color.hashtagTokenTextColor.getter();
  v30 = v41;
  TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)();
  v31 = enum case for TTRIStaticTableViewStandardCell.Icon.roundRectIcon(_:);
  v32 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v30, v31, v32);
  (*(v33 + 56))(v30, 0, 1, v32);
  v34._countAndFlagsBits = 0x6E207265746C6946;
  v34._object = 0xEB00000000656D61;
  v35._countAndFlagsBits = 0xD00000000000001BLL;
  v35._object = 0x800000010067A5C0;
  v36._countAndFlagsBits = 1936154964;
  v36._object = 0xE400000000000000;
  TTRLocalizedString(_:value:comment:)(v35, v36, v34);
  v45 = 0;
  TTRIOptionMenuCellContentState.init(icon:title:ttriAccessibilitySubtitle:menuOptions:selectedItem:isSeparatorHidden:)();
  v37 = objc_allocWithZone(sub_100058000(&qword_1007768A8, &unk_100636D88));
  TTRIOptionMenuCellContent.init(state:menuImageProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  TTRIOptionMenuCellContent.stateChangeBlock.setter();
  sub_100058000(&qword_100776878, &unk_100636D60);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void sub_10026CD0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    UIViewController.endFirstResponderEditing()();
    sub_100058000(a3, a4);
    TTRIOptionMenuCellContentState.selectedItem.getter();
    a5(v10);
  }
}

uint64_t sub_10026CDC0(uint64_t a1)
{
  v20[1] = a1;
  v1 = type metadata accessor for TTRHashtagCollectionViewAddTagButtonState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRHashtagCollectionViewAllTagsButtonState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMHashtagLabelSpecifier();
  __chkstk_darwin(v9 - 8);
  v20[0] = type metadata accessor for TTRIHashtagCollectionCellContentState();
  v10 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v20 - v14;
  static REMHashtagLabelSpecifier.labels(_:)();
  (*(v6 + 104))(v8, enum case for TTRHashtagCollectionViewAllTagsButtonState.hidden(_:), v5);
  (*(v2 + 104))(v4, enum case for TTRHashtagCollectionViewAddTagButtonState.shown(_:), v1);
  TTRIHashtagCollectionCellContentState.init(selection:hashtagLabels:allTagsButtonState:addTagButtonState:allowsExcludedSelection:maxRowCount:)();
  v16 = v20[0];
  (*(v10 + 16))(v12, v15, v20[0]);
  v17 = objc_allocWithZone(type metadata accessor for TTRIHashtagCollectionCellContent());
  TTRIHashtagCollectionCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRIHashtagCollectionCellContent.stateChangeBlock.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRIHashtagCollectionCellContent.layoutResultDidChange.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRIHashtagCollectionCellContent.requestAddTag.setter();

  sub_100058000(&qword_100776840, &unk_100636D40);
  swift_allocObject();
  v18 = TTRITableCell.init(_:)();
  (*(v10 + 8))(v15, v16);
  return v18;
}

void *sub_10026D1D4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_unknownObjectRetain();

    TTRIHashtagCollectionCellContentState.selection.getter();
    sub_1003E8514(v5);
    swift_unknownObjectRelease();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void *sub_10026D2F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRetain();

    sub_1003E8CA4(a1, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10026D378(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();

    sub_1003EA640();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10026D3E8()
{
  v0 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TTRIActionCellStateAdaptor.State();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  TTRIActionCellStateAdaptor.State.init(title:titleIsTinted:detailText:icon:)();
  v5 = objc_allocWithZone(type metadata accessor for TTRIActionCellContent());
  v6 = TTRIActionCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = v6;

  dispatch thunk of TTRIGenericCellContent.action.setter();

  sub_100058000(&qword_100776850, &qword_1006338A8);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

char *sub_10026D5AC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_presenter];
    v3 = result;
    swift_unknownObjectRetain();

    if (qword_100767250 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_100781AA0);
    v5 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("List Detail toggle show all hashtags", 36, 2, v5);

    *(v2 + OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_showsAllHashtagLabels) = (*(v2 + OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_showsAllHashtagLabels) & 1) == 0;
    v6._object = 0x8000000100670CE0;
    v6._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10026D6D0(uint64_t a1)
{
  v38 = a1;
  v1 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v1 - 8);
  v35 = &v34 - v2;
  v3 = sub_100058000(&qword_1007769E0, &qword_100636E48);
  __chkstk_darwin(v3 - 8);
  v37 = &v34 - v4;
  sub_100058000(&qword_1007769E8, &qword_100636E50);
  v5 = sub_100058000(&qword_1007769F0, &qword_100636E58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v36 = v9;
  *(v9 + 16) = xmmword_1006337E0;
  v10 = v9 + v8;
  v11._countAndFlagsBits = 0xD00000000000001CLL;
  v11._object = 0x800000010067AB60;
  v12._countAndFlagsBits = 0xD00000000000002BLL;
  v12._object = 0x800000010067AB80;
  v13._countAndFlagsBits = 6710863;
  v13._object = 0xE300000000000000;
  TTRLocalizedString(_:value:comment:)(v11, v13, v12);
  v42 = 0;
  sub_100275B10();
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v14 = enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:);
  v15 = *(v6 + 104);
  v15(v10, enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:), v5);
  v15(v10 + v7, enum case for TTRIOptionMenuCellContentState.Option.separator<A>(_:), v5);
  v16._countAndFlagsBits = 0x6564756C636E49;
  v17._object = 0x800000010067ABB0;
  v18._countAndFlagsBits = 0xD00000000000002FLL;
  v18._object = 0x800000010067ABE0;
  v17._countAndFlagsBits = 0xD000000000000020;
  v16._object = 0xE700000000000000;
  TTRLocalizedString(_:value:comment:)(v17, v16, v18);
  v41 = 1;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 2 * v7, v14, v5);
  v19._object = 0x800000010067AC10;
  v20._countAndFlagsBits = 0x6564756C637845;
  v21._countAndFlagsBits = 0xD00000000000002FLL;
  v21._object = 0x800000010067AC40;
  v19._countAndFlagsBits = 0xD000000000000020;
  v20._object = 0xE700000000000000;
  TTRLocalizedString(_:value:comment:)(v19, v20, v21);
  v40 = 2;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v15(v10 + 3 * v7, v14, v5);
  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() _systemImageNamed:v22];

  v24 = [objc_opt_self() systemCyanColor];
  v25 = v35;
  TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)();
  v26 = enum case for TTRIStaticTableViewStandardCell.Icon.roundRectIcon(_:);
  v27 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v25, v26, v27);
  (*(v28 + 56))(v25, 0, 1, v27);
  v29._countAndFlagsBits = 0xD000000000000018;
  v30._countAndFlagsBits = 0x737473694CLL;
  v31._countAndFlagsBits = 0x6E207265746C6946;
  v31._object = 0xEB00000000656D61;
  v29._object = 0x800000010067AC70;
  v30._object = 0xE500000000000000;
  TTRLocalizedString(_:value:comment:)(v29, v30, v31);
  v39 = 0;
  TTRIOptionMenuCellContentState.init(icon:title:ttriAccessibilitySubtitle:menuOptions:selectedItem:isSeparatorHidden:)();
  v32 = objc_allocWithZone(sub_100058000(&unk_100776A00, &unk_100636E60));
  TTRIOptionMenuCellContent.init(state:menuImageProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  TTRIOptionMenuCellContent.stateChangeBlock.setter();
  sub_100058000(&qword_1007769D8, &qword_100636E40);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void sub_10026DC84(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    UIViewController.endFirstResponderEditing()();
    v7 = UIViewController.isIPadIdiom.getter();

    sub_100058000(&qword_1007769E0, &qword_100636E48);
    TTRIOptionMenuCellContentState.selectedItem.getter();
    if (v7)
    {
      v8 = HIBYTE(v15);
      v9 = type metadata accessor for TTRIPopoverAnchor();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      v10 = v8;
      v11 = v4;
      v12 = 0;
    }

    else
    {
      v13 = HIBYTE(v15);
      v14 = type metadata accessor for TTRIPopoverAnchor();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
      v10 = v13;
      v11 = v4;
      v12 = 1;
    }

    sub_1003E9174(v10, v11, v12);
    sub_1000079B4(v4, &unk_10076FCD0, &unk_1006304D0);
  }
}

uint64_t sub_10026DE54()
{
  v0 = sub_100058000(&qword_100776A28, &qword_100636E78);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TTRIListCellStateAdaptor.State();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  TTRIListCellStateAdaptor.State.init(title:listName:listColorName:listBadge:)();
  v5 = objc_allocWithZone(type metadata accessor for TTRIListCellContent());
  v6 = TTRIListCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = v6;

  dispatch thunk of TTRIGenericCellContent.action.setter();

  sub_100058000(&qword_100776A20, &qword_100636E70);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void sub_10026E01C(uint64_t a1)
{
  v1 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_1003E9174(3, v3, 1);
    sub_1000079B4(v3, &unk_10076FCD0, &unk_1006304D0);
  }
}

uint64_t sub_10026E134()
{
  v0 = sub_100058000(&qword_100776A28, &qword_100636E78);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for TTRIListCellStateAdaptor.State();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  TTRIListCellStateAdaptor.State.init(title:listName:listColorName:listBadge:)();
  v5 = objc_allocWithZone(type metadata accessor for TTRIListCellContent());
  v6 = TTRIListCellContent.init(state:)();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v10 = v6;

  dispatch thunk of TTRIGenericCellContent.action.setter();

  sub_100058000(&qword_100776A20, &qword_100636E70);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}