uint64_t type metadata accessor for TTRIAccountsListsRecentlyDeletedCell(uint64_t a1)
{
  result = qword_10077D8A0;
  if (!qword_10077D8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_10031F0B8(uint64_t a1)
{
  v3 = sub_100058000(&qword_10077DC28, &qword_10063B050);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + 16);
  sub_100058000(&unk_100771E10, &qword_100634270);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10062D400;
  type metadata accessor for TTRReminderCopyPasteItem();
  *(v7 + 32) = static TTRReminderCopyPasteItem.pasteboardTypeString.getter();
  *(v7 + 40) = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  LODWORD(v6) = [v6 containsPasteboardTypes:isa];

  if (!v6)
  {
    return 0;
  }

  sub_10031F9AC(a1, v5);
  v10 = type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget(0);
  v11 = (*(*(v10 - 8) + 48))(v5, 1, v10) != 1;
  sub_1000079B4(v5, &qword_10077DC28, &qword_10063B050);
  return v11;
}

void sub_10031F238(uint64_t a1)
{
  v3 = sub_100058000(&qword_10077DC28, &qword_10063B050);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - v4;
  v6 = type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  sub_1003204A4();
  if (v13)
  {
    v14 = v13;
    sub_10031F9AC(a1, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000079B4(v5, &qword_10077DC28, &qword_10063B050);
      if (qword_1007671B8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100003E30(v15, qword_10077DB60);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136315138;
        type metadata accessor for TTRRemindersListViewModel.Item();
        v20 = Array.description.getter();
        v22 = sub_100004060(v20, v21, aBlock);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "TTRIRemindersListPasteRequest: failed to determine paste target {items: %s}", v18, 0xCu);
        sub_100004758(v19);
      }
    }

    else
    {
      sub_100320E54(v5, v12);
      type metadata accessor for TTRReminderCopyPasteItem();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_100320EB8(v12, v9);
      v31 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v1;
      sub_100320E54(v9, v32 + v31);
      aBlock[4] = sub_100320F1C;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100320D1C;
      aBlock[3] = &unk_1007205D8;
      v33 = _Block_copy(aBlock);

      v34 = [v14 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v33];
      _Block_release(v33);

      sub_100321074(v12, type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget);
    }
  }

  else
  {
    if (qword_1007671B8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003E30(v23, qword_10077DB60);

    v37 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315138;
      type metadata accessor for TTRRemindersListViewModel.Item();
      v27 = Array.description.getter();
      v29 = sub_100004060(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v37, v24, "TTRIRemindersListPasteRequest: eligible NSItemProvider not found {items: %s}", v25, 0xCu);
      sub_100004758(v26);
    }

    else
    {
      v35 = v37;
    }
  }
}

void sub_10031F774(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D420;
  *(inited + 32) = a1;
  v5 = a1;
  v6 = sub_10001D5F8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = sub_1002E28FC(v6);

  if (v7[2] && (v8 = sub_1002613B0(v5), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = v7[7];
    v12 = type metadata accessor for TTRSectionID();
    (*(*(v12 - 8) + 16))(a2, v11 + *(*(v12 - 8) + 72) * v10, v12);
  }

  else
  {

    v13 = enum case for TTRSectionID.sectionless(_:);
    v14 = type metadata accessor for TTRSectionID();
    (*(*(v14 - 8) + 104))(a2, v13, v14);
  }
}

uint64_t sub_10031F8E4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077DB60);
  v1 = sub_100003E30(v0, qword_10077DB60);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10031F9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v4 = type metadata accessor for TTRSectionID();
  v94 = *(v4 - 8);
  v95 = v4;
  __chkstk_darwin(v4);
  v89 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = &v82 - v7;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v98 = *(v8 - 8);
  __chkstk_darwin(v8);
  v92 = (&v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = sub_100058000(&qword_10077DC30, &unk_10063B058);
  __chkstk_darwin(v87);
  v11 = (&v82 - v10);
  v12 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v12 - 8);
  v93 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v82 - v15;
  __chkstk_darwin(v17);
  v99 = &v82 - v18;
  v19 = sub_100058000(&qword_10077DC28, &qword_10063B050);
  __chkstk_darwin(v19 - 8);
  v90 = (&v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v23 = &v82 - v22;
  v24 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v25 = v24 - 8;
  __chkstk_darwin(v24);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v2 + 32);
  v96 = v2;
  ObjectType = swift_getObjectType();
  v30 = *(v28 + 16);
  v97 = ObjectType;
  v30(ObjectType, v28);
  v31 = v27[*(v25 + 36)];
  sub_100321074(v27, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  v32 = type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget(0);
  v33 = *(v32 - 8);
  v36 = *(v33 + 56);
  v35 = v33 + 56;
  v34 = v36;
  if (v31)
  {
    return v34(a2, 1, 1, v32);
  }

  v38 = 1;
  v85 = v34;
  v86 = v32;
  v84 = v35;
  (v34)(v23, 1, 1);
  v39 = *(v100 + 16);
  v40 = v23;
  v88 = a2;
  v42 = v98;
  v41 = v99;
  if (v39)
  {
    (*(v98 + 16))(v99, v100 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * (v39 - 1), v8);
    v38 = 0;
  }

  (*(v42 + 56))(v41, v38, 1, v8);
  sub_1003210D4(v41, v16);
  v43 = *(v42 + 48);
  if (v43(v16, 1, v8) == 1)
  {
    sub_1000079B4(v16, &qword_100772140, &qword_10062D9F0);
    v44 = type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem();
    (*(*(v44 - 8) + 56))(v11, 1, 1, v44);
    v45 = v88;
    v46 = v97;
    goto LABEL_7;
  }

  v51 = v43;
  v83 = v40;
  TTRRemindersListViewModel.Item.editableCasesOnly.getter();
  v52 = *(v42 + 8);
  v53 = v8;
  v82 = v52;
  v52(v16, v8);
  v54 = type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem();
  v55 = *(v54 - 8);
  (*(v55 + 56))(v11, 0, 1, v54);
  v56 = (*(v55 + 88))(v11, v54);
  if (v56 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.reminder(_:) || v56 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedReminder(_:) || v56 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.placeholderReminder(_:))
  {
    (*(v55 + 8))(v11, v54);
    v63 = v99;
    v64 = v93;
    sub_1003210D4(v99, v93);
    v65 = v51(v64, 1, v8);
    v66 = v97;
    if (v65 == 1)
    {
      sub_1000079B4(v63, &qword_100772140, &qword_10062D9F0);
      v67 = v64;
LABEL_26:
      sub_1000079B4(v67, &qword_100772140, &qword_10062D9F0);
      v45 = v88;
      goto LABEL_28;
    }

    v11 = v92;
    (*(v98 + 32))(v92, v64, v53);
    v68 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
    if (v68)
    {
      v69 = v68;
      v70 = [v68 list];
      if ((*(v28 + 104))(v66, v28))
      {
        v71 = [v69 objectID];
        v72 = v89;
        sub_10031F774(v71, v89);

        swift_unknownObjectRelease();
        v82(v11, v53);
        sub_1000079B4(v99, &qword_100772140, &qword_10062D9F0);
        v73 = v83;
        sub_1000079B4(v83, &qword_10077DC28, &qword_10063B050);
        v74 = v95;
        v75 = *(v94 + 32);
        v76 = v91;
        v75(v91, v72, v95);
      }

      else
      {
        v82(v11, v53);
        sub_1000079B4(v99, &qword_100772140, &qword_10062D9F0);
        v73 = v83;
        sub_1000079B4(v83, &qword_10077DC28, &qword_10063B050);
        v79 = v94;
        v74 = v95;
        v76 = v91;
        (*(v94 + 104))(v91, enum case for TTRSectionID.sectionless(_:), v95);
        v75 = *(v79 + 32);
      }

      v80 = v90;
      *v90 = v70;
      v81 = v86;
      v75((v80 + *(v86 + 20)), v76, v74);
      *(v80 + *(v81 + 24)) = v69;
      v85(v80, 0, 1, v81);
      sub_100321148(v80, v73);
      v45 = v88;
      v40 = v73;
      return sub_100321148(v40, v45);
    }

LABEL_25:
    v82(v11, v53);
    v67 = v99;
    goto LABEL_26;
  }

  v46 = v97;
  if (v56 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.editableSection(_:))
  {
    v57 = v97;
    (*(v55 + 96))(v11, v54);
    v58 = *v11;
    v59 = (*(v28 + 288))(v100, sub_10032169C, v96, v57, v28);
    sub_1000079B4(v99, &qword_100772140, &qword_10062D9F0);
    v45 = v88;
    if (v59)
    {
      v60 = v83;
      sub_1000079B4(v83, &qword_10077DC28, &qword_10063B050);
      v61 = v86;
      v62 = *(v86 + 20);
      *(v60 + v62) = v58;
      v40 = v60;
      (*(v94 + 104))(v60 + v62, enum case for TTRSectionID.sectioned(_:), v95);
      *v60 = v59;
      *(v60 + *(v61 + 24)) = 0;
      v49 = v60;
      v50 = v61;
      goto LABEL_9;
    }

LABEL_28:
    v40 = v83;
    return sub_100321148(v40, v45);
  }

  v45 = v88;
  if (v56 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedEditingSection(_:))
  {
    v77 = v54;
    v78 = v97;
    (*(v55 + 8))(v11, v77);
    v46 = v78;
    v40 = v83;
    v41 = v99;
    goto LABEL_7;
  }

  v40 = v83;
  v41 = v99;
  if (v56 != enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.nonEditable(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_25;
  }

LABEL_7:
  v47 = (*(v28 + 288))(v100, sub_100321144, v96, v46, v28);
  sub_1000079B4(v41, &qword_100772140, &qword_10062D9F0);
  if (v47)
  {
    sub_1000079B4(v40, &qword_10077DC28, &qword_10063B050);
    v48 = v86;
    (*(v94 + 104))(v40 + *(v86 + 20), enum case for TTRSectionID.sectionless(_:), v95);
    *v40 = v47;
    *(v40 + *(v48 + 24)) = 0;
    v49 = v40;
    v50 = v48;
LABEL_9:
    v85(v49, 0, 1, v50);
  }

  return sub_100321148(v40, v45);
}

void sub_1003204A4()
{
  v1 = [*(v0 + 16) itemProviders];
  sub_100003540(0, &unk_10076C570, NSItemProvider_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      type metadata accessor for TTRReminderCopyPasteItem();
      if ([v6 canLoadObjectOfClass:swift_getObjCClassFromMetadata()])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_24;
    }
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
LABEL_24:

    return;
  }

  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_24;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v8 = _swiftEmptyArrayStorage[4];
    goto LABEL_24;
  }

  __break(1u);
}

void sub_1003206A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v34 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  if (a1 && (type metadata accessor for TTRReminderCopyPasteItem(), (v16 = swift_dynamicCastClass()) != 0))
  {
    v17 = v16;
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v18 = v7;
    swift_unknownObjectRetain();
    v32 = static OS_dispatch_queue.main.getter();
    sub_100320EB8(v33, &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v34;
    *(v20 + 24) = v17;
    sub_100320E54(&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    aBlock[4] = sub_100320FA0;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001047C;
    aBlock[3] = &unk_100720628;
    v21 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10001A4CC();
    sub_100058000(&qword_100780A50, &qword_100635D30);
    sub_10001A524();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v32;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    swift_unknownObjectRelease();

    (*(v18 + 8))(v9, v6);
    (*(v35 + 8))(v12, v36);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_1007671B8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003E30(v23, qword_10077DB60);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = sub_100004060(v28, v29, aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "error decoding pasteboard %s", v26, 0xCu);
      sub_100004758(v27);
    }

    else
    {
    }
  }
}

uint64_t sub_100320B98(uint64_t a1, uint64_t a2, char *a3)
{
  v12[1] = a2;
  v5 = sub_100058000(&qword_1007758D0, &unk_100634F80);
  __chkstk_darwin(v5 - 8);
  v7 = v12 - v6;
  v12[0] = *(a1 + 48);
  swift_getObjectType();
  v8 = *(type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget(0) + 20);
  v9 = type metadata accessor for TTRSectionID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, &a3[v8], v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  dispatch thunk of TTRRemindersListInteractorType.paste(_:in:after:with:updateProperties:)();
  return sub_1000079B4(v7, &qword_1007758D0, &unk_100634F80);
}

uint64_t sub_100320D1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100320D9C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget(uint64_t a1)
{
  result = qword_10077DC90;
  if (!qword_10077DC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100320E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100320EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100320F1C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_1003206A4(a1, a2, v6, v7);
}

uint64_t sub_100320FA0()
{
  v1 = *(type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return sub_100320B98(v2, v3, v4);
}

uint64_t sub_100321004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  return (*(v7 + 296))(a1, a2, a3, ObjectType, v7);
}

uint64_t sub_100321074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003210D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100321148(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10077DC28, &qword_10063B050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void **sub_1003211F4(void **a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v9 = type metadata accessor for TTRSectionID();
    v10 = *(*(v9 - 8) + 16);
    v11 = v4;
    v10(v6 + v7, a2 + v7, v9);
    v12 = *(a3 + 24);
    v13 = *(a2 + v12);
    *(v6 + v12) = v13;
    v14 = v13;
  }

  return v6;
}

void sub_1003212E0(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for TTRSectionID();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + *(a2 + 24));
}

void **sub_100321368(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRSectionID();
  v9 = *(*(v8 - 8) + 16);
  v10 = v6;
  v9(a1 + v7, a2 + v7, v8);
  v11 = *(a3 + 24);
  v12 = *(a2 + v11);
  *(a1 + v11) = v12;
  v13 = v12;
  return a1;
}

void **sub_10032140C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = type metadata accessor for TTRSectionID();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  *(a1 + v11) = v13;
  v14 = v13;

  return a1;
}

char *sub_1003214AC(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TTRSectionID();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

void **sub_100321534(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRSectionID();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = *(a3 + 24);
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  return a1;
}

uint64_t sub_1003215F4(uint64_t a1)
{
  result = type metadata accessor for TTRSectionID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1003216A4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v55 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v5 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = (v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for REMRemindersListDataView.SectionLite();
  __chkstk_darwin(v8);
  v56 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v39 - v13;
  v54 = *(a1 + 16);
  if (!v54)
  {
    return;
  }

  v15 = 0;
  v17 = *(v11 + 16);
  v16 = v11 + 16;
  v48 = (*(v16 + 64) + 32) & ~*(v16 + 64);
  v51 = a1 + v48;
  v52 = v17;
  v57 = *(v16 + 56);
  v50 = (v5 + 88);
  v49 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
  v46 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
  v18 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v18 = a2;
  }

  v39[1] = v18;
  v40 = a2 & 0xC000000000000001;
  v47 = a2;
  v44 = a2 + 56;
  v45 = (v5 + 96);
  v19 = (v16 + 16);
  v41 = (v16 - 8);
  v20 = _swiftEmptyArrayStorage;
  v21 = v55;
  v53 = v16;
  while (1)
  {
    v52(v14, v51 + v57 * v15, v8, v12);
    REMRemindersListDataView.SectionLite.type.getter();
    v22 = (*v50)(v7, v21);
    if (v22 != v49)
    {
      break;
    }

    (*v45)(v7, v21);
    v23 = *v7;

    if ((REMRemindersListDataView.SectionLite.isEmpty.getter() & 1) == 0)
    {
      goto LABEL_23;
    }

    if (v47)
    {
      if (v40)
      {
        v24 = v23;
        v25 = __CocoaSet.contains(_:)();

        if (v25)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v47[2])
        {
          v43 = sub_10001DF64();
          v26 = v47;
          v27 = NSObject._rawHashValue(seed:)(v47[5]);
          v28 = -1 << *(v26 + 32);
          v29 = v27 & ~v28;
          if ((*(v44 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v42 = ~v28;
            while (1)
            {
              v30 = *(v47[6] + 8 * v29);
              v31 = static NSObject.== infix(_:_:)();

              if (v31)
              {
                break;
              }

              v29 = (v29 + 1) & v42;
              if (((*(v44 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_5;
              }
            }

LABEL_23:

LABEL_24:
            v32 = *v19;
            (*v19)(v56, v14, v8);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v58 = v20;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1004A1B84(0, v20[2] + 1, 1);
              v20 = v58;
            }

            v35 = v20[2];
            v34 = v20[3];
            if (v35 >= v34 >> 1)
            {
              sub_1004A1B84((v34 > 1), v35 + 1, 1);
              v20 = v58;
            }

            v20[2] = v35 + 1;
            v32(v20 + v48 + v35 * v57, v56, v8);
            goto LABEL_7;
          }
        }

LABEL_5:
      }

      (*v41)(v14, v8);
    }

    else
    {
      (*v41)(v14, v8);
    }

LABEL_7:
    ++v15;
    v21 = v55;
    if (v15 == v54)
    {
      return;
    }
  }

  if (v22 == v46)
  {
    goto LABEL_24;
  }

  if (qword_1007671C0 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100003E30(v36, qword_10077DCD0);
  v37 = sub_100008E04(_swiftEmptyArrayStorage);
  v38 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown section type", 20, 2uLL, v37, v38);
  __break(1u);
}

uint64_t sub_100321BAC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077DCD0);
  v1 = sub_100003E30(v0, qword_10077DCD0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *assignWithCopy for TTRRemoveEmptySectionFilter(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for TTRRemoveEmptySectionFilter(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_100321CF4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077DCE8);
  v1 = sub_100003E30(v0, qword_10077DCE8);
  if (qword_100767280 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_100321DBC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_100323268;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_1007206E0;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_10001A4CC();
  sub_100058000(&qword_100780A50, &qword_100635D30);
  sub_10001A524();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);

  return result;
}

void sub_100322010(uint64_t a1)
{
  if (*(a1 + 24))
  {
    if (qword_1007671C8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003E30(v1, qword_10077DCE8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Update in progress, skipping", v3, 2u);
    }
  }

  else
  {
    *(a1 + 24) = 1;
    sub_100322124();
    *(a1 + 24) = 0;
  }
}

void sub_100322124()
{
  v114 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v144 = *(v114 - 8);
  __chkstk_darwin(v114);
  v149 = (&v103 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = type metadata accessor for REMAccountsListDataView.Model.Group();
  v2 = *(v126 - 8);
  __chkstk_darwin(v126);
  v135 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for CharacterSet();
  v4 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
  v6 = *(v127 - 8);
  __chkstk_darwin(v127);
  v8 = (&v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = type metadata accessor for REMAccountsListDataView.Model.Account();
  v124 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v0 + 16);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10, v12);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
LABEL_62:
    __break(1u);
    swift_once();
    v20 = type metadata accessor for Logger();
    sub_100003E30(v20, qword_10077DCE8);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v21, v22))
    {

      return;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v150 = v24;
    *v23 = 136315138;
    swift_getErrorValue();
    v25 = Error.localizedDescription.getter();
    v27 = sub_100004060(v25, v26, &v150);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Unexpected error when submitting vocabulary: %s", v23, 0xCu);
    sub_100004758(v24);

    goto LABEL_58;
  }

  v17 = [objc_opt_self() sharedVocabulary];
  v18 = [objc_allocWithZone(REMStore) init];
  type metadata accessor for REMAccountsListDataView();
  v19 = static REMAccountsListDataView.fetchAccounts(store:diffingAgainst:)();
  v104 = v18;
  v105 = v17;
  v121 = *(v19 + 16);
  if (!v121)
  {

    v87 = _swiftEmptyArrayStorage;
    v29 = _swiftEmptyArrayStorage;
    v86 = v105;
LABEL_47:
    if (qword_1007671C8 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_100003E30(v88, qword_10077DCE8);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v89, v90, "Clearing vocab from Siri", v91, 2u);
    }

    [v86 removeAllVocabularyStrings];

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 134217984;
      *(v94 + 4) = *(v87 + 2);

      _os_log_impl(&_mh_execute_header, v92, v93, "Submitting vocab to Siri {groupNames.count: %ld}", v94, 0xCu);
    }

    else
    {
    }

    sub_1003E0D84(v87);

    v95 = objc_allocWithZone(NSOrderedSet);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v97 = [v95 initWithArray:isa];

    [v86 setVocabularyStrings:v97 ofType:501];

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 134217984;
      *(v100 + 4) = *(v29 + 2);

      _os_log_impl(&_mh_execute_header, v98, v99, "Submitting vocab to Siri {listNames.count: %ld}", v100, 0xCu);
    }

    else
    {
    }

    sub_1003E0D84(v29);

    v101 = objc_allocWithZone(NSOrderedSet);
    v102 = Array._bridgeToObjectiveC()().super.isa;

    v21 = [v101 initWithArray:v102];

    [v86 setVocabularyStrings:v21 ofType:500];
LABEL_58:

    return;
  }

  v28 = 0;
  v120 = v19 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
  v119 = v124 + 16;
  v118 = v124 + 8;
  v133 = v6 + 88;
  v148 = enum case for REMAccountsListDataView.Model.AccountChild.list(_:);
  v147 = enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:);
  v146 = (v6 + 8);
  v125 = (v6 + 96);
  v128 = (v4 + 8);
  v109 = enum case for REMAccountsListDataView.Model.AccountChild.group(_:);
  v108 = (v2 + 32);
  v142 = v144 + 88;
  v143 = v144 + 16;
  v141 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
  v139 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
  v138 = (v144 + 8);
  v106 = (v144 + 96);
  v29 = _swiftEmptyArrayStorage;
  v107 = (v2 + 8);
  v132 = _swiftEmptyArrayStorage;
  v30 = v127;
  v117 = v19;
  v134 = v6 + 16;
  while (1)
  {
    if (v28 >= *(v19 + 16))
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v31 = v124;
    v32 = *(v124 + 72);
    v136 = v28;
    v33 = v120 + v32 * v28;
    v34 = v122;
    v35 = v123;
    (*(v124 + 16))(v122, v33, v123);
    v36 = REMAccountsListDataView.Model.Account.children.getter();
    (*(v31 + 8))(v34, v35);
    v37 = *(v36 + 16);
    if (v37)
    {
      break;
    }

LABEL_7:
    v28 = v136 + 1;

    v19 = v117;
    if (v28 == v121)
    {

      v86 = v105;
      v87 = v132;
      goto LABEL_47;
    }
  }

  v38 = 0;
  v131 = v37 - 1;
LABEL_11:
  v39 = v38;
  while (1)
  {
    if (v39 >= *(v36 + 16))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v38 = v39 + 1;
    (*(v6 + 16))(v8, v36 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v39, v30);
    v40 = (*(v6 + 88))(v8, v30);
    if (v40 == v148)
    {
      (*v125)(v8, v30);
      v145 = *v8;
      v41 = [v145 displayName];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v150 = v42;
      v151 = v44;
      v45 = v129;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10007D420();
      v140 = StringProtocol.trimmingCharacters(in:)();
      v47 = v46;
      (*v128)(v45, v130);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_100546970(0, *(v29 + 2) + 1, 1, v29);
      }

      v49 = *(v29 + 2);
      v48 = *(v29 + 3);
      if (v49 >= v48 >> 1)
      {
        v29 = sub_100546970((v48 > 1), v49 + 1, 1, v29);
      }

      *(v29 + 2) = v49 + 1;
      v50 = &v29[16 * v49];
      *(v50 + 4) = v140;
      *(v50 + 5) = v47;
      v51 = v131 == v39;
LABEL_41:
      v30 = v127;
      if (v51)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    if (v40 != v147)
    {
      break;
    }

    (*v146)(v8, v30);
    ++v39;
    if (v37 == v38)
    {
      goto LABEL_7;
    }
  }

  v145 = v37;
  if (v40 == v109)
  {
    (*v125)(v8, v30);
    (*v108)(v135, v8, v126);
    v52 = REMAccountsListDataView.Model.Group.list.getter();
    v53 = [v52 name];

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v150 = v54;
    v151 = v56;
    v57 = v129;
    static CharacterSet.whitespacesAndNewlines.getter();
    v116 = sub_10007D420();
    v58 = StringProtocol.trimmingCharacters(in:)();
    v60 = v59;
    v115 = *v128;
    v115(v57, v130);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v137 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v132 = sub_100546970(0, *(v132 + 2) + 1, 1, v132);
    }

    v63 = *(v132 + 2);
    v62 = *(v132 + 3);
    v37 = v145;
    if (v63 >= v62 >> 1)
    {
      v132 = sub_100546970((v62 > 1), v63 + 1, 1, v132);
    }

    v64 = v132;
    *(v132 + 2) = v63 + 1;
    v65 = &v64[16 * v63];
    *(v65 + 4) = v58;
    *(v65 + 5) = v60;
    v66 = REMAccountsListDataView.Model.Group.lists.getter();
    v67 = *(v66 + 16);
    if (v67)
    {
      v68 = 0;
      v140 = *(v66 + 16);
      v113 = v67 - 1;
      v69 = v114;
LABEL_29:
      v70 = v68;
      while (v70 < *(v66 + 16))
      {
        v68 = v70 + 1;
        v71 = v144;
        v72 = v149;
        (*(v144 + 16))(v149, v66 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v70, v69);
        v73 = (*(v71 + 88))(v72, v69);
        if (v73 == v141)
        {
          v74 = v149;
          (*v106)(v149, v69);
          v110 = *v74;
          v75 = [v110 displayName];
          v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v78 = v77;

          v150 = v76;
          v151 = v78;
          v79 = v129;
          static CharacterSet.whitespacesAndNewlines.getter();
          v112 = StringProtocol.trimmingCharacters(in:)();
          v111 = v80;
          v115(v79, v130);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = sub_100546970(0, *(v137 + 2) + 1, 1, v137);
          }

          v37 = v145;
          v82 = *(v137 + 2);
          v81 = *(v137 + 3);
          if (v82 >= v81 >> 1)
          {
            v137 = sub_100546970((v81 > 1), v82 + 1, 1, v137);
          }

          v83 = v137;
          *(v137 + 2) = v82 + 1;
          v84 = &v83[16 * v82];
          v85 = v111;
          *(v84 + 4) = v112;
          *(v84 + 5) = v85;
          v69 = v114;
          if (v113 != v70)
          {
            goto LABEL_29;
          }

          goto LABEL_40;
        }

        v37 = v145;
        if (v73 != v139)
        {
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          goto LABEL_64;
        }

        (*v138)(v149, v69);
        ++v70;
        if (v140 == v68)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_60;
    }

LABEL_40:
    v38 = v39 + 1;
    (*v107)(v135, v126);

    v51 = v131 == v39;
    v29 = v137;
    goto LABEL_41;
  }

LABEL_64:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10032320C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100323270()
{
  v0 = sub_100058000(&qword_10077E850, &unk_10063B170);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  if (qword_1007674F0 != -1)
  {
    swift_once();
  }

  v7 = qword_1007A8A40;
  v27 = qword_1007A8A40;
  v24[0] = 0;
  sub_100323ED4();

  AnyHashable.init<A>(_:)();
  v26 = 1;
  *v6 = 1;
  v6[40] = 0;
  v23 = *(v1 + 104);
  v23(v6, enum case for TTRRelativeInsertionPosition.after<A>(_:), v0);
  v21 = sub_100058000(&qword_100774070, &unk_10063B4E0);
  inited = swift_initStackObject();
  v20 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  sub_100233FB0(v25, inited + 32);
  v22 = sub_100323F28();
  v9 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v10)
  {
    v11 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v24, &qword_10077E868, &qword_10063B180);
    if (v11)
    {
      v9 = *(v7 + 16);
    }

    else
    {
      v9 = 0;
    }
  }

  sub_1000FE4D8(v9, v9, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = *(v1 + 8);
  v12(v6, v0);
  sub_10023400C(v25);
  swift_getObjectType();
  dispatch thunk of TTRShowTodayGroupsDataModelSourceType.todaySectionsContext.getter();
  v13 = v25[3];
  sub_1000079B4(v25, &qword_10077E870, &qword_10063B188);
  if (v13)
  {
    v24[0] = 1;
    AnyHashable.init<A>(_:)();
    v26 = 1;
    v24[0] = 0;
    AnyHashable.init<A>(_:)();
    v3[40] = 1;
    v23(v3, enum case for TTRRelativeInsertionPosition.before<A>(_:), v0);
    v14 = swift_initStackObject();
    *(v14 + 16) = v20;
    sub_100233FB0(v25, v14 + 32);
    v15 = v27;
    v16 = Array<A>.index<A>(forInsertingAt:where:)();
    if (v17)
    {
      v18 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
      sub_1000079B4(v24, &qword_10077E868, &qword_10063B180);
      if (v18)
      {
        v16 = *(v15 + 16);
      }

      else
      {
        v16 = 0;
      }
    }

    sub_1000FE4D8(v16, v16, v14);
    swift_setDeallocating();
    swift_arrayDestroy();
    v12(v3, v0);
    sub_10023400C(v25);
  }

  return v27;
}

void *sub_1003236A4()
{
  v0 = type metadata accessor for TTRRemindersListLayout();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AnyHashable.base.getter();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (v9[15] == 1)
  {
    sub_100323E20();
    (*(v1 + 104))(v3, enum case for TTRRemindersListLayout.list(_:), v0);
    static TTRLocalizableStrings.RemindersList.editSectionsActionText(listLayout:)();
    (*(v1 + 8))(v3, v0);
    static TTRCommonAsset.Image.renameIcon.getter();
    swift_allocObject();
    swift_weakInit();
    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() _systemImageNamed:v5];

    sub_100323E20();
    static TTRLocalizableStrings.TodayList.groupByTime.getter();
    swift_allocObject();
    swift_weakInit();
    v7 = v6;
    v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    swift_getObjectType();
    [v8 setState:dispatch thunk of TTRShowTodayGroupsDataModelSourceType.grouped.getter() & 1];

    return v8;
  }
}

void *sub_100323988(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v4 = dispatch thunk of TTRRemindersListInteractorType.store.getter();
    swift_unknownObjectRelease();
    v5 = sub_100323E7C();

    sub_100134CE4(v4, v3, v5);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100323A5C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    [a1 state];
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of TTRShowTodayGroupsDataModelSourceType.grouped.setter();
    swift_unknownObjectRelease();
    type metadata accessor for TTRUserDefaults();
    v3 = static TTRUserDefaults.appUserDefaults.getter();
    TTRUserDefaults.todayListIsGrouped.setter();
  }
}

uint64_t sub_100323B78(uint64_t a1)
{
  type metadata accessor for TTRUserDefaults();
  v1 = static TTRUserDefaults.appUserDefaults.getter();
  TTRUserDefaults.todayListIsGrouped.setter();

  swift_getObjectType();
  return dispatch thunk of TTRShowTodayGroupsDataModelSourceType.grouped.setter();
}

uint64_t sub_100323BFC()
{
  sub_1001E6A30();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowTodayPresenter(uint64_t a1)
{
  result = qword_10077DE00;
  if (!qword_10077DE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100323D08()
{
  v1 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  return (*(v1 + 576))(ObjectType, v1);
}

uint64_t sub_100323D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v5 = __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a3, v5);
  return sub_1001F7B6C(v7);
}

unint64_t sub_100323E20()
{
  result = qword_10076BA60;
  if (!qword_10076BA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076BA60);
  }

  return result;
}

unint64_t sub_100323E7C()
{
  result = qword_10077E848;
  if (!qword_10077E848)
  {
    type metadata accessor for TTRIShowTodayPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E848);
  }

  return result;
}

unint64_t sub_100323ED4()
{
  result = qword_10077E858;
  if (!qword_10077E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E858);
  }

  return result;
}

unint64_t sub_100323F28()
{
  result = qword_10077E860;
  if (!qword_10077E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E860);
  }

  return result;
}

unint64_t sub_100323F90()
{
  result = qword_10077E878;
  if (!qword_10077E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E878);
  }

  return result;
}

id sub_100323FE4(uint64_t *a1, id *a2, void *a3)
{
  v117 = a3;
  v124 = a1;
  v125 = type metadata accessor for TTRRemindersListLayout();
  v122 = *(v125 - 8);
  __chkstk_darwin(v125);
  v104 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v123 = &v102 - v6;
  __chkstk_darwin(v7);
  v103 = &v102 - v8;
  __chkstk_darwin(v9);
  v119 = &v102 - v10;
  v11 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v11 - 8);
  v115 = (&v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v116 = &v102 - v14;
  v114 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0);
  __chkstk_darwin(v114);
  v130 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRListType.SortingCapability();
  v128 = *(v16 - 8);
  v129 = v16;
  __chkstk_darwin(v16);
  v110 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v127 = &v102 - v19;
  v112 = type metadata accessor for TTRRemindersListDefaultListType();
  v109 = *(v112 - 1);
  __chkstk_darwin(v112);
  v108 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v21 - 8);
  v107 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v23 - 8);
  v111 = (&v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v131 = *(v126 - 8);
  __chkstk_darwin(v126);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v132 = &v102 - v28;
  v29 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v30 + 104);
  LODWORD(v121) = enum case for TTRListType.PredefinedSmartListType.today(_:);
  v34(v33, v31);
  v113 = a2;
  v105 = *a2;
  v35 = TTRListType.PredefinedSmartListType.smartList(in:)();
  v36 = *(v30 + 8);
  v36(v33, v29);
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
    v139[2] = 0;
    v139[1] = 0;
  }

  v139[4] = v38;
  v106 = v35 != 0;
  v139[3] = v37;
  v139[0] = v35;
  (v34)(v33, v121, v29);
  v40 = v39;
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  v36(v33, v29);
  v41 = v132;
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v42 = v131;
  v43 = v126;
  v120 = *(v131 + 8);
  v121 = v131 + 8;
  v120(v26, v126);
  sub_1000079B4(v139, &unk_100775680, &qword_10062E3B0);
  type metadata accessor for TTRUserDefaults();
  v118 = v40;
  v44 = v105;
  v45 = static TTRUserDefaults.appUserDefaults.getter();
  TTRUserDefaults.todayListIsGrouped.getter();

  v46 = *(v42 + 16);
  v46(v26, v41, v43);
  type metadata accessor for TTRShowTodayGroupsDataModelSource();
  swift_allocObject();
  v131 = TTRShowTodayGroupsDataModelSource.init(store:smartList:grouped:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v47 = v113;
  v48 = v111;
  sub_10010BD5C(v113, v111, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v49 = v107;
  static REMSuggestedAttributesElector.ExcludedAttributes.dueDates.getter();
  v50 = v108;
  (*(v109 + 104))(v108, enum case for TTRRemindersListDefaultListType.any(_:), v112);
  v51 = sub_10007786C(v48, v49, v50, v139);
  (v46)(v26, v132, v43, v51);
  v52 = v127;
  TTRListType.SortingCapability.init(canChangeSortingStyle:canSortByManual:initialSortingStyle:)();
  v53 = v139[0];
  v54 = v110;
  (*(v128 + 16))(v110, v52, v129);
  type metadata accessor for TTRShowTodayViewModelSource(0);
  v55 = swift_allocObject();
  v56 = v131;

  v112 = v53;
  v57 = sub_100324F40(v56, v112, v54, v55);
  sub_10010BD5C(v47, v48, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v139, v136);
  v58 = sub_1003253E8(&qword_10077E8A8, type metadata accessor for TTRShowTodayViewModelSource, &unk_100646FD0);
  v59 = v130;
  sub_10010BD5C(v48, v130, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v60 = v114;
  sub_10010BCAC(v136, v59 + *(v114 + 20));
  v61 = (v59 + *(v60 + 24));
  *v61 = v57;
  v61[1] = v58;
  v62 = v136[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v138, v135, &qword_100769608, &unk_1006302F0);
  v64 = *(v135[5] + 8);
  *(v63 + 32) = v135[4];
  *(v63 + 40) = v64;
  sub_10000794C(&v137, v133, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v65 = v62;
  swift_unknownObjectRelease();
  *(v63 + 48) = v134;
  sub_100004758(v133);
  sub_100004758(v135);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v66 = swift_allocObject();
  v67 = sub_1003A8324(v65, v57, v63, v66);
  v113 = v57;

  sub_10010BD08(v136);
  sub_10010BE0C(v48, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v68 = *(v60 + 28);
  v111 = v67;
  *(v59 + v68) = v67;
  v69 = v116;
  sub_100078BBC(v116);
  v114 = type metadata accessor for TTRIShowTodayPresenter(0);
  v70 = swift_allocObject();
  v71 = (v70 + OBJC_IVAR____TtC9Reminders22TTRIShowTodayPresenter_dataModelSource);
  *v71 = v131;
  v71[1] = &protocol witness table for TTRShowTodayGroupsDataModelSource;
  v72 = v115;
  sub_10010BD5C(v69, v115, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);

  v73 = v117;
  swift_unknownObjectRetain();
  v74 = sub_1003A56E4(v72, v73, v70);
  sub_10010BE0C(v69, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v75 = *(v74 + 144);
  ObjectType = swift_getObjectType();
  v77 = *(v75 + 112);

  if (v77(ObjectType, v75))
  {
    swift_getObjectType();
    v78 = v103;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v79 = v122;
    v80 = v119;
    v81 = v125;
    (*(v122 + 32))(v119, v78, v125);
  }

  else
  {
    v79 = v122;
    v80 = v119;
    v81 = v125;
    (*(v122 + 104))(v119, enum case for TTRRemindersListLayout.list(_:), v125);
  }

  v117 = sub_1003A4A1C(v80, v74);
  v119 = v82;
  v84 = v83;
  v86 = v85;
  (*(v79 + 8))(v80, v81);
  v122 = swift_getObjectType();
  *(v74 + 24) = *(v86 + 8);
  v125 = v84;
  swift_unknownObjectWeakAssign();
  v87 = *(v74 + 144);
  v88 = swift_getObjectType();
  v89 = *(v87 + 112);

  if (v89(v88, v87))
  {
    swift_getObjectType();
    v90 = v104;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v91 = v123;
    (*(v79 + 32))(v123, v90, v81);
  }

  else
  {

    v91 = v123;
    (*(v79 + 104))(v123, enum case for TTRRemindersListLayout.list(_:), v81);
  }

  v92 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v93 = v117;
  v94 = sub_1003A8358(v74, v93, v119, v91, 0, 1, 0, v92);

  v95 = *(v86 + 32);
  v96 = v94;
  v95(v94, &off_100723D78, v122, v86);
  sub_1003253E8(&qword_10077E8B0, type metadata accessor for TTRIShowTodayPresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_1003253E8(&qword_10077E8B8, type metadata accessor for TTRShowTodayViewModelSource, &unk_1006370E4);

  v97 = v96;
  dispatch thunk of TTRShowTodayGroupsDataModelSource.delegate.setter();

  sub_10056FEB0(v98, &off_10071A9B0);

  v111[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v140, v136, &qword_100769600, &qword_10062E0A0);
  v99 = v136[4];
  swift_unknownObjectRelease();
  *(v99 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v136);
  sub_10000794C(&v141, v136, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_1003253E8(&qword_10077E8C0, type metadata accessor for TTRIShowTodayPresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v136);
  v100 = v124;
  v124[3] = v114;
  v100[4] = &off_1007207C0;

  swift_unknownObjectRelease();
  *v100 = v74;
  (*(v128 + 8))(v127, v129);
  v120(v132, v126);
  sub_10010BE0C(v130, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v139);
  return v97;
}

id TTRIShowTodayAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowTodayAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowTodayAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowTodayAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100324F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = a3;
  v35 = a2;
  v38 = *a4;
  v39 = type metadata accessor for REMAnalyticsEvent();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for TTRListType.SortingCapability();
  v36 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_smartList;
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_smartList) = 0;
  v16 = (a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_groupDataModelSource);
  *v16 = 0;
  v16[1] = 0;
  v17 = a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_completedRemindersCount;
  *v17 = 0;
  v17[8] = 1;
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_currentLocation) = 0;
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_sectionHeadersNeedingPlaceholderReminderItems) = &_swiftEmptySetSingleton;
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_tappedSectionHeaders) = &_swiftEmptySetSingleton;
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_lastSectionsSnapshot) = 0;
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  type metadata accessor for TTRShowTodayGroupsDataModelSource();
  v18 = dispatch thunk of TTRShowTodayGroupsDataModelSourceType.smartList.getter();
  v19 = *(a4 + v15);
  *(a4 + v15) = v18;

  *v16 = a1;
  v16[1] = &protocol witness table for TTRShowTodayGroupsDataModelSource;

  swift_unknownObjectRelease();
  (*(v12 + 16))(v14, v40, v11);
  v20 = sub_1003A649C(a1, v35, v14, a4);

  sub_10027B544(v10);
  v21 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  sub_10056F540(v10);
  sub_1000079B4(v10, &unk_10078A380, &qword_10062DE60);
  type metadata accessor for TTRUserDefaults();
  v22 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v23 = sub_100058000(&qword_100770980, &unk_1006339B0);
  v24 = &v7[*(v23 + 48)];
  v25 = &v7[*(v23 + 80)];
  v26 = enum case for REMRemindersOpenUserOperation.SmartListType.today(_:);
  v27 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v27 - 8) + 104))(v7, v26, v27);
  v28 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v29 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v29 - 8) + 104))(v7, v28, v29);
  *v24 = TTRUserDefaults.activitySessionId.getter();
  v24[1] = v30;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v25 = _typeName(_:qualified:)();
  v25[1] = v31;
  v32 = v37;
  v33 = v39;
  (*(v37 + 104))(v7, enum case for REMAnalyticsEvent.openListUserOperation(_:), v39);
  REMAnalyticsManager.post(event:)();

  (*(v12 + 8))(v40, v36);
  (*(v32 + 8))(v7, v33);
  return v20;
}

uint64_t sub_1003253E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100325430()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077E8C8);
  v1 = sub_100003E30(v0, qword_10077E8C8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100325674()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077E908);
  v1 = sub_100003E30(v0, qword_10077E908);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_10032573C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1007671D8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_10077E908);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100004060(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "PencilAutoCommitTracker will begin writing in %s", v9, 0xCu);
    sub_100004758(v10);
  }

  v3[4] = a1;
  v3[5] = a2;

  if (v3[2])
  {

    swift_unknownObjectRetain();
    sub_1004F46FC();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1003258FC(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v57 = a1;
  v56 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v56 - 8);
  __chkstk_darwin(v56);
  v48[0] = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100058000(&qword_10076DCB8, &qword_100631830);
  __chkstk_darwin(v51);
  v52 = v48 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v48 - v11;
  v13 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v13 - 8);
  v49 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v55 = v48 - v16;
  v19 = __chkstk_darwin(v17);
  v20 = v48 - v18;
  v54 = v2;
  v21 = *(v2 + 16);
  if (v21)
  {
    v22 = *(v7 + 16);
    v22(v12, v21 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_item, v6, v19);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v7 + 8))(v12, v6);
    v23 = *(v3 + 56);
    (v23)(v20, 0, 1, v56);
  }

  else
  {
    v23 = *(v3 + 56);
    v23(v48 - v18, 1, 1, v56, v19);
    v22 = *(v7 + 16);
  }

  v48[1] = OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_item;
  (v22)(v9, v57 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_item, v6);
  v24 = v55;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v25 = *(v7 + 8);
  v50 = v6;
  v25(v9, v6);
  v26 = v56;
  (v23)(v24, 0, 1, v56);
  v27 = v52;
  v28 = *(v51 + 48);
  sub_100326354(v20, v52);
  sub_100326354(v24, v27 + v28);
  v29 = v3;
  v30 = *(v3 + 48);
  if (v30(v27, 1, v26) == 1)
  {
    sub_1000079B4(v24, &unk_10076BB50, &unk_10062DEA0);
    sub_1000079B4(v20, &unk_10076BB50, &unk_10062DEA0);
    v31 = v30(v27 + v28, 1, v26);
    v32 = v57;
    if (v31 == 1)
    {
      sub_1000079B4(v27, &unk_10076BB50, &unk_10062DEA0);
      goto LABEL_15;
    }
  }

  else
  {
    v33 = v49;
    sub_100326354(v27, v49);
    if (v30(v27 + v28, 1, v26) != 1)
    {
      v45 = v48[0];
      (*(v29 + 32))(v48[0], v27 + v28, v26);
      sub_1003263C4(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *(v29 + 8);
      v47(v45, v26);
      sub_1000079B4(v55, &unk_10076BB50, &unk_10062DEA0);
      sub_1000079B4(v20, &unk_10076BB50, &unk_10062DEA0);
      v47(v33, v26);
      sub_1000079B4(v27, &unk_10076BB50, &unk_10062DEA0);
      v32 = v57;
      if (v46)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    sub_1000079B4(v55, &unk_10076BB50, &unk_10062DEA0);
    sub_1000079B4(v20, &unk_10076BB50, &unk_10062DEA0);
    (*(v29 + 8))(v33, v26);
    v32 = v57;
  }

  sub_1000079B4(v27, &qword_10076DCB8, &qword_100631830);
LABEL_10:
  if (qword_1007671D8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100003E30(v34, qword_10077E908);
  swift_unknownObjectRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v58 = v38;
    *v37 = 136315138;
    sub_1003263C4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v39 = TTRTreeStorageItem.treeItemDescription.getter();
    v41 = sub_100004060(v39, v40, &v58);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "PencilAutoCommitTracker got pencilWritingStateReporter for %s", v37, 0xCu);
    sub_100004758(v38);
  }

LABEL_15:
  v43 = v53;
  v42 = v54;
  *(v54 + 16) = v32;
  *(v42 + 24) = v43;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

void sub_100326040(uint64_t a1, unint64_t a2)
{
  if (qword_1007671D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_10077E908);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100004060(a1, a2, v20);
    _os_log_impl(&_mh_execute_header, v6, v7, "PencilAutoCommitTracker did finish writing in %s", v8, 0xCu);
    sub_100004758(v9);
  }

  v10 = v2[5];
  v11 = v2 + 4;
  if (!v10 || (v2[4] != a1 || v10 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      *v20 = *v11;
      sub_100058000(qword_100771B80, &unk_10063B2E0);
      v16 = Optional.descriptionOrNil.getter();
      v18 = sub_100004060(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "PencilAutoCommitTracker: not getting didFinish first for %s", v14, 0xCu);
      sub_100004758(v15);
    }
  }

  *v11 = 0;
  v2[5] = 0;

  if (v2[2])
  {
    v19 = *&qword_10077E920;
    swift_unknownObjectRetain();
    sub_1004F3C70(v19);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1003262F0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100326354(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003263C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100326598@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = result;
    v6 = v3;
    if (![v5 _isKeyWindowScene])
    {

      goto LABEL_7;
    }

    v7 = [v5 delegate];

    if (!v7)
    {
LABEL_7:
      result = 0;
      goto LABEL_8;
    }

    type metadata accessor for TTRIWindowSceneController(0);
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      goto LABEL_7;
    }
  }

LABEL_8:
  *a2 = result;
  return result;
}

void sub_1003269BC(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TTRIAppDelegate();
  objc_msgSendSuper2(&v12, "buildMenuWithBuilder:", a1);
  sub_100003540(0, &qword_10077EB98, UIMenuSystem_ptr);
  v3 = [a1 system];
  v4 = [objc_opt_self() mainSystem];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    [a1 removeMenuForIdentifier:UIMenuFormat];
    sub_10028ED88(a1);
    sub_100508B90(a1);
    if (UIApp)
    {
      v6 = [UIApp connectedScenes];
      sub_100003540(0, &qword_10077EB68, UIScene_ptr);
      sub_1000072CC(&qword_10077EB70, &qword_10077EB68, UIScene_ptr, &protocol conformance descriptor for NSObject);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100058000(&qword_10077EB78, &unk_100649000);
      type metadata accessor for TTRIWindowSceneController(0);
      sub_10000E188(&qword_10077EB80, &qword_10077EB78, &unk_100649000, &protocol conformance descriptor for Set<A>);
      Sequence.firstMap<A>(_:)();

      if (v11)
      {
        v7 = &v11[OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface];
        swift_beginAccess();
        v8 = *(v7 + 3);
        if (v8)
        {
          v9 = sub_10000C36C(v7, v8);
          sub_10000C36C((*v9 + 48), *(*v9 + 72));
          swift_unknownObjectRetain();
          v10 = sub_10044CE40();
          swift_unknownObjectRelease();
        }

        else
        {
          v10 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v10 = _swiftEmptyArrayStorage;
      }

      sub_10005BAA8(a1, v10);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100326CE4()
{
  v1 = OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___siriVocabularyUpdater;
  if (*(v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___siriVocabularyUpdater))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___siriVocabularyUpdater);
  }

  else
  {
    v3 = v0;
    type metadata accessor for RDIDispatchQueue();
    v4 = static RDIDispatchQueue.backgroundQueue.getter();
    type metadata accessor for TTRSiriVocabularyUpdater();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    *(v2 + 16) = v4;
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_100326D8C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100326E84(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_store);
    v4 = Strong;
    type metadata accessor for TTRUserDefaults();
    v5 = v3;
    v6 = static TTRUserDefaults.appUserDefaults.getter();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    type metadata accessor for TTRStoreReviewController();
    v8 = swift_allocObject();
    sub_100079270(v5, v6, sub_100079600, v7, v8);
    sub_10046791C();
  }

  return result;
}

double sub_100326F78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1007671E0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_10077E9D0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Donating list names to Siri", v8, 2u);
    }

    sub_100326CE4();
    sub_100321DBC();
  }

  return result;
}

void sub_1003270DC(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v12, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_1003271F4()
{
  sub_10000927C();
  v1 = [objc_opt_self() sharedApplication];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_100328190;
  v10[5] = v2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10001047C;
  v10[3] = &unk_100720840;
  v3 = _Block_copy(v10);

  v4 = [v1 beginBackgroundTaskWithExpirationHandler:v3];
  _Block_release(v3);

  v5 = v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_backgroundTaskIdentifierForApplicationVisibilityChangeHandler;
  *v5 = v4;
  *(v5 + 8) = 0;
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_10077E9D0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "application did set up background task for application visibility change handler", v9, 2u);
  }
}

double sub_1003273C4(uint64_t a1)
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10077E9D0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "application will expire background task for application visibility change handler", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1000090D0();

    sub_100010360();
    sub_1000093DC(1, 0);
  }

  return result;
}

uint64_t sub_1003274F4(uint64_t a1, uint64_t a2)
{
  result = UIApp;
  if (UIApp)
  {
    v5 = [UIApp connectedScenes];
    sub_100003540(0, &qword_10077EB68, UIScene_ptr);
    sub_1000072CC(&qword_10077EB70, &qword_10077EB68, UIScene_ptr, &protocol conformance descriptor for NSObject);
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    *&v16 = v6;
    sub_100058000(&qword_10077EB78, &unk_100649000);
    type metadata accessor for TTRIWindowSceneController(0);
    sub_10000E188(&qword_10077EB80, &qword_10077EB78, &unk_100649000, &protocol conformance descriptor for Set<A>);
    Sequence.firstMap<A>(_:)();

    v7 = v18[0];
    if (v18[0])
    {
      v8 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
      swift_beginAccess();
      sub_10000794C(v18[0] + v8, &v16, &qword_10077EBB0, qword_10064A5C0);
      if (v17)
      {
        sub_100005FD0(&v16, v18);
        if (*(a2 + 16) && (v9 = sub_1003B3EE0(), (v10 & 1) != 0) && (sub_1000046FC(*(a2 + 56) + 32 * v9, &v16), swift_dynamicCast()))
        {
          if (v14 == 0xD000000000000023 && 0x80000001006821E0 == v15)
          {

            v11 = 2;
          }

          else
          {
            v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v13)
            {
              v11 = 2;
            }

            else
            {
              v11 = 0;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        sub_10000C36C(v18, v18[3]);
        v12 = sub_100341B68(a1, v11);
        sub_100004758(v18);

        return v12;
      }

      sub_1000079B4(&v16, &qword_10077EBB0, qword_10064A5C0);
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1003277D0(void *a1, void (**aBlock)(void, void))
{
  if (UIApp)
  {
    v4 = [UIApp connectedScenes];
    sub_100003540(0, &qword_10077EB68, UIScene_ptr);
    sub_1000072CC(&qword_10077EB70, &qword_10077EB68, UIScene_ptr, &protocol conformance descriptor for NSObject);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100058000(&qword_10077EB78, &unk_100649000);
    type metadata accessor for TTRIWindowSceneController(0);
    sub_10000E188(&qword_10077EB80, &qword_10077EB78, &unk_100649000, &protocol conformance descriptor for Set<A>);
    Sequence.firstMap<A>(_:)();

    if (v6)
    {
      v5 = sub_100608F88(a1);
    }

    else
    {
      v5 = 0;
    }

    (aBlock)[2](aBlock, v5);
  }

  else
  {
    _Block_release(aBlock);
    __break(1u);
  }
}

uint64_t sub_100327974(uint64_t a1, unint64_t a2)
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10077E9D0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004060(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "UNEXPECTED: application willContinueUserActivityWithType {userActivityType: %s}", v7, 0xCu);
    sub_100004758(v8);
  }

  return 0;
}

void sub_100327AC0(void *a1)
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10077E9D0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = NSUserActivity.ttrDescription.getter();
    v9 = sub_100004060(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "application didUpdate userActivity {userActivity: %s}", v5, 0xCu);
    sub_100004758(v6);
  }
}

uint64_t sub_100327C20(void *a1)
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10077E9D0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = NSUserActivity.ttrDescription.getter();
    v10 = sub_100004060(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "UNEXPECTED: application continue userActivity {userActivity: %s}", v6, 0xCu);
    sub_100004758(v7);
  }

  return 0;
}

void sub_100327D74(void *a1)
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10077E9D0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "UNEXPECTED: application userDidAcceptCloudKitShareWith {cloudKitShareMetadata: %@}", v5, 0xCu);
    sub_1000079B4(v6, &unk_10076DF80, &qword_10062F730);
  }
}

double sub_100327EC0()
{
  v1 = type metadata accessor for TTRAppDelegateUtils.TriggerSyncReason();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_10077E9D0);
  v6 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("WindowScene did enter background", 32, 2, v6);

  v7 = *(v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_store);
  (*(v2 + 104))(v4, enum case for TTRAppDelegateUtils.TriggerSyncReason.appDeactivation(_:), v1);
  v8 = v7;
  static TTRAppDelegateUtils.triggerSync(store:reason:)();

  (*(v2 + 8))(v4, v1);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Update AppShortcut parameters", v11, 2u);
  }

  sub_10032813C();
  static AppShortcutsProvider.updateAppShortcutParameters()();
  TTRWidgetRefresher.tearDownSubscriptionToReloadWidgetTimelinesUponStoreChange()();
  TTRWidgetRefresher.reloadWidgetTimelines()();
  v12 = sub_1000090D0();
  v13 = [objc_opt_self() sharedApplication];
  v14 = [v13 applicationState];

  v15 = *(v12 + 32);
  *(v12 + 32) = v14 == 0;
  sub_10001012C(v15);

  return result;
}

unint64_t sub_10032813C()
{
  result = qword_10077EB50;
  if (!qword_10077EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB50);
  }

  return result;
}

uint64_t sub_1003281A0(void *a1, uint64_t a2)
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10077E9D0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = [v5 request];
    v11 = [v10 content];

    v12 = [v11 body];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100004060(v13, v15, &v19);

    *(v8 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "App willPresent notification: %s", v8, 0xCu);
    sub_100004758(v9);
  }

  v17 = *(a2 + 16);

  return v17(a2, 27);
}

void sub_100328388(void *a1, void (**a2)(void, __n128))
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10077E9D0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v5 actionIdentifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_100004060(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "App did receive UNNotificationResponse: {actionIdentifier=%s}", v8, 0xCu);
    sub_100004758(v9);
  }

  if (UIApp)
  {
    v15 = [UIApp connectedScenes];
    sub_100003540(0, &qword_10077EB68, UIScene_ptr);
    sub_1000072CC(&qword_10077EB70, &qword_10077EB68, UIScene_ptr, &protocol conformance descriptor for NSObject);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100058000(&qword_10077EB78, &unk_100649000);
    type metadata accessor for TTRIWindowSceneController(0);
    sub_10000E188(&qword_10077EB80, &qword_10077EB78, &unk_100649000, &protocol conformance descriptor for Set<A>);
    Sequence.firstMap<A>(_:)();

    v16 = v17;
    if (v17)
    {
      sub_1006095D4(v5);
    }

    (a2[2])(a2);
  }

  else
  {
    _Block_release(a2);
    __break(1u);
  }
}

void sub_100328668(void *a1)
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10077E9D0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = [v3 request];
      v8 = [v7 content];

      v9 = [v8 body];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = sub_100004060(v10, v12, &v15);

    *(v5 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v4, "App openSettingsFor: %s", v5, 0xCu);
    sub_100004758(v6);
  }
}

uint64_t sub_10032884C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077EBC0);
  v1 = sub_100003E30(v0, qword_10077EBC0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10032892C()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10078D450, &qword_10062FBC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.List();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_list;
  swift_beginAccess();
  v15 = v1 + v14;
  v16 = v10;
  sub_10000794C(v15, v9, &unk_10078D450, &qword_10062FBC0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000079B4(v9, &unk_10078D450, &qword_10062FBC0);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    TTRAccountsListsViewModel.List.pinState.getter();
    v18 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
    (*(v34 + 8))(v6, v35);
    if ((v18 & 1) != 0 || ![v1 indentationLevel])
    {
      v19 = 0;
      v21 = 0;
    }

    else
    {
      v19 = TTRAccountsListsViewModel.List.groupName.getter();
      v21 = v20;
    }

    if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
    {
      sub_100058000(&unk_100771E10, &qword_100634270);
      v22 = swift_allocObject();
      *(v22 + 1) = xmmword_10062D400;
      v22[4] = static TTRAccesibility.AccountsList.Label.SmartList.getter();
      v22[5] = v23;
    }

    else
    {
      v22 = _swiftEmptyArrayStorage;
    }

    v35 = v11;
    v24 = v36;
    sub_10003139C(v36);
    v25 = sub_10016D594(v24, v22);
    v27 = v26;

    (*(v37 + 8))(v24, v38);
    v28 = TTRAccountsListsViewModel.List.count.getter();
    if (v21)
    {
      static TTRAccesibility.AccountsList.Format.GroupMemberName_ItemCount.getter();
      sub_100058000(&unk_100786CB0, &qword_100636EF0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10062F800;
      v38 = v16;
      *(v29 + 56) = &type metadata for String;
      v30 = sub_10005C390();
      *(v29 + 32) = v25;
      *(v29 + 40) = v27;
      *(v29 + 96) = &type metadata for Int;
      *(v29 + 104) = &protocol witness table for Int;
      *(v29 + 64) = v30;
      *(v29 + 72) = v28;
      *(v29 + 136) = &type metadata for String;
      *(v29 + 144) = v30;
      *(v29 + 112) = v19;
      *(v29 + 120) = v21;
      v31 = String.init(format:_:)();

      (*(v35 + 8))(v13, v38);
    }

    else
    {
      static TTRAccesibility.AccountsList.Format.Name_ItemCount.getter();
      sub_100058000(&unk_100786CB0, &qword_100636EF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10062D3F0;
      *(v32 + 56) = &type metadata for String;
      v33 = sub_10005C390();
      *(v32 + 32) = v25;
      *(v32 + 40) = v27;
      *(v32 + 96) = &type metadata for Int;
      *(v32 + 104) = &protocol witness table for Int;
      *(v32 + 64) = v33;
      *(v32 + 72) = v28;
      v31 = String.init(format:_:)();

      (*(v35 + 8))(v13, v16);
    }

    return v31;
  }
}

id sub_100328E54(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100328ED4()
{
  v1 = [v0 isEditing];
  if (v1)
  {
    v2 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = static TTRAccesibility.AccountsList.Hint.List.getter();
    v5 = v4;

    v2 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100546970((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = v3;
    *(v8 + 5) = v5;
  }

  v9 = static TTRAccesibility.AccountsList.Hint.DragAndDrop.getter();
  v11 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100546970(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100546970((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = v9;
  *(v14 + 5) = v11;
  static TTRAccesibility.General.Label.SentenceEnd.getter();
  sub_100058000(&unk_100781F20, &unk_10062D7E0);
  sub_10006089C();
  v15 = BidirectionalCollection<>.joined(separator:)();

  if ((v1 & 1) == 0)
  {
  }

  return v15;
}

void *sub_100329108()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&unk_10078D450, &qword_10062FBC0);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_list;
  swift_beginAccess();
  sub_10000794C(v1 + v10, v5, &unk_10078D450, &qword_10062FBC0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000079B4(v5, &unk_10078D450, &qword_10062FBC0);
    return _swiftEmptyArrayStorage;
  }

  (*(v7 + 32))(v9, v5, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_8:
    v44.receiver = v1;
    v44.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v44, "accessibilityCustomActions");
    if (v16)
    {
      v17 = v16;
      sub_100003540(0, &qword_10076BCE0, UIAccessibilityCustomAction_ptr);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v45 = v15;
    v18 = static TTRAccesibility.AccountsList.Action.ListInfo.getter();
    if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
    {
      v37 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v36 = v18;
      if (TTRAccountsListsViewModel.List.isShared.getter())
      {
        v20 = static TTRAccesibility.AccountsList.Action.ManageSharedList.getter();
        v21 = v22;
        v19 = 0x8000000100672620;
        v37 = 0xD000000000000022;
      }

      else
      {
        v37 = 0xD000000000000013;
        v20 = static TTRAccesibility.AccountsList.Action.ShareList.getter();
        v21 = v23;
        v19 = 0x8000000100672650;
      }
    }

    if ([v1 isEditing])
    {
      v35[0] = v19;
      v35[1] = v20;
      v36 = v21;
      sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
      v24 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = objc_allocWithZone(UIAccessibilityCustomAction);

      v27 = String._bridgeToObjectiveC()();

      v42 = sub_100329E28;
      v43 = v25;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_10044E9F0;
      v41 = &unk_100720930;
      v28 = _Block_copy(&aBlock);
      [v26 initWithName:v27 image:v24 actionHandler:v28];

      _Block_release(v28);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v45;
      v19 = v35[0];
      if (!v36)
      {
        goto LABEL_26;
      }
    }

    else
    {

      if (!v21)
      {
        goto LABEL_26;
      }
    }

    if (v19)
    {
      sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
      v29 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();

      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = objc_allocWithZone(UIAccessibilityCustomAction);

      v32 = String._bridgeToObjectiveC()();

      v42 = sub_100329E20;
      v43 = v30;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_10044E9F0;
      v41 = &unk_100720908;
      v33 = _Block_copy(&aBlock);
      [v31 initWithName:v32 image:v29 actionHandler:v33];

      _Block_release(v33);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v45;
      if (v45 >> 62)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

LABEL_26:

    if (v15 >> 62)
    {
LABEL_24:
      v34 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_28;
    }

LABEL_27:
    v34 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
    (*(v7 + 8))(v9, v6);
    if (!v34)
    {

      return 0;
    }

    return v15;
  }

  result = [Strong collectionView];
  if (result)
  {
    v13 = result;
    v14 = [result hasActiveDrag];
    swift_unknownObjectRelease();

    if (v14)
    {
      (*(v7 + 8))(v9, v6);
      return _swiftEmptyArrayStorage;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

BOOL sub_10032989C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10048B088(v4);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        swift_unknownObjectRelease();
        sub_1000079B4(v4, &unk_100771B40, &unk_10062FB70);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        sub_10042BF78(v8);

        (*(v6 + 8))(v8, v5);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return Strong != 0;
}

BOOL sub_100329AA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10048B088(v4);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        swift_unknownObjectRelease();
        sub_1000079B4(v4, &unk_100771B40, &unk_10062FB70);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        sub_10042F45C(v8, 0);

        (*(v6 + 8))(v8, v5);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return Strong != 0;
}

void sub_100329E38(uint64_t a1)
{
  v3 = [v1 containerView];
  *&v3[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v1[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

  v4 = [v1 containerView];
  if (v4)
  {
    v5 = v4;
    *&v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedLists] = a1;

    sub_1000265C4();
  }

  else
  {
    __break(1u);
  }
}

void sub_100329F14(char a1)
{
  v3 = [v1 containerView];
  *&v3[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v1[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

  v4 = [v1 containerView];
  if (v4)
  {
    v5 = v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedStateShowsPinnedListColor];
    v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedStateShowsPinnedListColor] = a1 & 1;
    if (v5 != (a1 & 1))
    {
      v6 = v4;
      sub_1000265C4();
      v4 = v6;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100329FF4(uint64_t a1, char a2)
{
  v5 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C688(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10032B068(v7);
    v12 = [v2 containerView];
    *&v12[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v2[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

    v13 = [v2 containerView];
    if (v13)
    {
      v14 = v13;
      sub_10002F124(a2 & 1);

      return;
    }

    __break(1u);
    goto LABEL_8;
  }

  (*(v9 + 32))(v11, v7, v8);
  v15 = [v2 containerView];
  *&v15[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v2[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

  v16 = [v2 containerView];
  if (!v16)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v18 = v16;
  sub_1003176FC(v11, a2 & 1, v17);

  (*(v9 + 8))(v11, v8);
}

id sub_10032A290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache] = 0;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = v8;
  sub_10032A35C();

  return v9;
}

void sub_10032A35C()
{
  v1 = [v0 containerView];
  [v1 setPreservesSuperviewLayoutMargins:0];

  v2 = [v0 containerView];
  [v2 setLayoutMargins:{16.0, 0.0, 0.0, 0.0}];

  v3 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v3];

  [v0 _setContinuousCornerRadius:0.0];
  [v0 setSelectionStyle:0];
  v4 = [v0 containerView];
  *&v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v0[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

  v5 = [v0 containerView];
  if (v5)
  {
    v6 = v5;
    *&v5[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate + 8] = &off_100720958;
    swift_unknownObjectWeakAssign();

    sub_10032A5C0();
  }

  else
  {
    __break(1u);
  }
}

void sub_10032A5C0()
{
  v1 = [v0 containerView];
  *&v1[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v0[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

  v9 = [v0 containerView];
  if (v9)
  {
    [v0 directionalLayoutMargins];
    v2 = v9;
    v4 = *&v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 16];
    v3 = *&v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 32];
    v5 = v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 48];
    v6 = *&v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 8];
    *&v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 8] = v7;
    if (v7 != v6 || (v8 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v4, v4), vceqq_f64(v3, v3)))), v8.i16[0] = vmaxv_u16(v8), ((v5 ^ 1) & v8.i32[0] & 1) != 0))
    {
      sub_1000265C4();
      v2 = v9;
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_10032A858()
{
  v1 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 containerView];
  v10 = OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache;
  *&v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v0[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

  result = [v0 containerView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = result;
  v13 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedPinnedList;
  swift_beginAccess();
  sub_10002C688(v12 + v13, v3);

  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v8, v3, v4);
    v14 = [v0 containerView];
    *&v14[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v0[v10];

    result = [v0 containerView];
    if (result)
    {
      v15 = result;
      v16 = sub_100027EE8();
      __chkstk_darwin(v16);
      *(&v19 - 2) = v8;
      v17 = sub_1002ECA94(sub_1001C5E40, (&v19 - 4), v16);

      if (v17)
      {
        sub_100058000(&qword_10076B780, &qword_10062D7C0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_10062D420;
        *(v18 + 32) = v17;
        (*(v5 + 8))(v8, v4);
        return v18;
      }

      (*(v5 + 8))(v8, v4);
      return _swiftEmptyArrayStorage;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  sub_10032B068(v3);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10032AD80(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000FD9F8(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10032ADE0(uint64_t a1, uint64_t a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100455928(a2);
  v4 = v3;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_10032AE3C(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = sub_100454688(a2);
    swift_unknownObjectRelease();
    return v4 & 1;
  }

  return result;
}

id sub_10032AE8C(uint64_t a1, uint64_t a2, void *a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = sub_1000FDEBC(a2, a3);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    v7 = objc_allocWithZone(UIDropProposal);

    return [v7 initWithDropOperation:0];
  }
}

uint64_t sub_10032AF28(uint64_t a1, uint64_t a2, void *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000FE03C(a2, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10032AFA0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100432D0C(a2);
    v5 = v4;
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

uint64_t sub_10032B004(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1004344B8(a2);
    v5 = v4;
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

uint64_t sub_10032B068(uint64_t a1)
{
  v2 = sub_100058000(&qword_100771DD0, qword_100634780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10032B0D0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077ED10);
  v1 = sub_100003E30(v0, qword_10077ED10);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10032B198()
{
  v0 = sub_100058000(&qword_10077E850, &unk_10063B170);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v20 - v4;
  if (qword_1007674F0 != -1)
  {
    swift_once();
  }

  v6 = qword_1007A8A40;
  v26 = qword_1007A8A40;
  v20[1] = sub_100058000(&qword_100774070, &unk_10063B4E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  LOBYTE(v24[0]) = 0;
  sub_10032D514();

  AnyHashable.init<A>(_:)();
  *(inited + 72) = 1;
  LOBYTE(v24[0]) = 1;
  AnyHashable.init<A>(_:)();
  *(inited + 120) = 1;
  *v5 = 5;
  v5[40] = 0;
  v22 = v1;
  v8 = *(v1 + 104);
  v8(v5, enum case for TTRRelativeInsertionPosition.after<A>(_:), v0);
  sub_100323F28();
  v9 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v10)
  {
    v11 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v24, &qword_10077E868, &qword_10063B180);
    if (v11)
    {
      v9 = *(v6 + 16);
    }

    else
    {
      v9 = 0;
    }
  }

  sub_1000FE4D8(v9, v9, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = *(v22 + 8);
  v12(v5, v0);
  v23[0] = 2;
  AnyHashable.init<A>(_:)();
  v25 = 1;
  v13 = v21;
  v8(v21, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v0);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_10062D400;
  sub_100233FB0(v24, v14 + 32);
  v15 = v26;
  v16 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v17)
  {
    v18 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v23, &qword_10077E868, &qword_10063B180);
    if (v18)
    {
      v16 = *(v15 + 16);
    }

    else
    {
      v16 = 0;
    }
  }

  sub_1000FE4D8(v16, v16, v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12(v13, v0);
  sub_10023400C(v24);
  return v26;
}

uint64_t sub_10032B57C()
{
  v1 = v0;
  v2 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v2 - 8);
  v4 = &v45[-v3];
  v5 = sub_100058000(&unk_100776650, &unk_100636AF0);
  __chkstk_darwin(v5);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v45[-v9];
  AnyHashable.base.getter();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v11 = v45[15];
  v12 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  if (v11)
  {
    if (v11 != 1)
    {
      (*(v12 + 152))(ObjectType, v12);
      v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
      v7 = *(v5 - 8);
      if ((*(v7 + 6))(v4, 1, v5) == 1)
      {
        sub_1000079B4(v4, &unk_10078A380, &qword_10062DE60);
        return 0;
      }

      goto LABEL_21;
    }

    if (!(*(v12 + 80))(ObjectType, v12))
    {
      v41 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v41 - 8) + 56))(v7, 1, 1, v41);
      return 0;
    }

    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
    swift_unknownObjectRelease();
    v14 = type metadata accessor for REMHashtagLabelSpecifier();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v7, 0, 1, v14);
    v16 = (*(v15 + 88))(v7, v14);
    if (v16 == enum case for REMHashtagLabelSpecifier.labels(_:))
    {
      (*(v15 + 96))(v7, v14);
      v17 = *v7;

      v18 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
      if (*(v17 + 16))
      {
        v19 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
        (*(*(v19 - 8) + 8))(&v7[v18], v19);
        v20 = *(v1 + OBJC_IVAR____TtC9Reminders23TTRIShowTaggedPresenter_hashtagAssociationModule + 8);
        v21 = swift_getObjectType();
        (*(v20 + 8))(v21, v20);
        sub_100323E20();
        static TTRLocalizableStrings.Hashtags.deleteTagMenuItem(tagCount:)();
        v22 = String._bridgeToObjectiveC()();
        [objc_opt_self() _systemImageNamed:v22];

        v23 = swift_allocObject();
        swift_weakInit();
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = v17;
        return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      }

      v43 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
      (*(*(v43 - 8) + 8))(&v7[v18], v43);
      return 0;
    }

LABEL_16:
    if (v16 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v16 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      return 0;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_21:
    CustomSmartListForHashtags = TTRRemindersListViewModel.ListInfo.canCreateCustomSmartListForHashtagsState.getter();
    (*(v7 + 1))(v4, v5);
    if (CustomSmartListForHashtags)
    {
      v39 = String._bridgeToObjectiveC()();
      [objc_opt_self() _systemImageNamed:v39];

      sub_100323E20();
      static TTRLocalizableStrings.RemindersList.createSmartList.getter();
      swift_allocObject();
      swift_weakInit();
      return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    }

    return 0;
  }

  if (!(*(v12 + 80))(ObjectType, v12))
  {
    v42 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
    return 0;
  }

  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  v25 = type metadata accessor for REMHashtagLabelSpecifier();
  v7 = *(v25 - 8);
  (*(v7 + 7))(v10, 0, 1, v25);
  v16 = (*(v7 + 11))(v10, v25);
  if (v16 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    goto LABEL_16;
  }

  (*(v7 + 12))(v10, v25);
  v26 = *v10;

  v27 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
  if (*(v26 + 16))
  {
    v28 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v28 - 8) + 8))(v10 + v27, v28);
    v29 = *(v1 + OBJC_IVAR____TtC9Reminders23TTRIShowTaggedPresenter_hashtagAssociationModule + 8);
    v30 = swift_getObjectType();
    (*(v29 + 8))(v30, v29);
    if (*(v26 + 16) == 1)
    {
      v31 = sub_1000A9A4C(v26);
      v33 = v32;

      if (v33)
      {
        sub_100323E20();
        static TTRLocalizableStrings.Hashtags.renameTagMenuItem.getter();
        v34 = String._bridgeToObjectiveC()();
        [objc_opt_self() _systemImageNamed:v34];

        v35 = swift_allocObject();
        swift_weakInit();
        v36 = swift_allocObject();
        v36[2] = v35;
        v36[3] = v31;
        v36[4] = v33;
        return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      }
    }

    else
    {
    }
  }

  else
  {

    v44 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v44 - 8) + 8))(v10 + v27, v44);
  }

  return 0;
}

uint64_t sub_10032BE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v5 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v5 - 8);
  v7 = v42 - v6;
  v8 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  __chkstk_darwin(v8 - 8);
  v44 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v42 - v12;
  v14 = type metadata accessor for TTRHashtagAssociationOperation();
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  __chkstk_darwin(v14);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (v42 - v18);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v43 = v9;
    v21 = result;
    v45 = v7;
    if (qword_1007671F0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_10077ED10);
    v23 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Reminders list show rename tag UI", 33, 2, v23);

    v24 = v21;
    v25 = *(v21 + 88);
    v26 = v47;
    *v19 = v46;
    v19[1] = a4;
    (*(v26 + 104))(v19, enum case for TTRHashtagAssociationOperation.renameHashtagLabel(_:), v14);
    v27 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
    v46 = v25;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      v30 = type metadata accessor for TaskPriority();
      (*(*(v30 - 8) + 56))(v45, 1, 1, v30);
      (*(v26 + 16))(v16, v19, v14);
      v31 = v44;
      sub_1001626EC(v13, v44);
      v32 = *(v47 + 80);
      v42[0] = a4;
      v42[1] = v24;
      v33 = (v32 + 40) & ~v32;
      v34 = v43[80];
      v43 = v13;
      v35 = (v15 + v34 + v33) & ~v34;
      v36 = (v10 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      *(v37 + 2) = 0;
      *(v37 + 3) = 0;
      v38 = v47;
      *(v37 + 4) = v46;
      (*(v38 + 32))(&v37[v33], v16, v14);
      v39 = &v37[v35];
      v13 = v43;
      v40 = v31;
      v26 = v47;
      sub_100275BC8(v40, v39);
      *&v37[v36] = v29;
      swift_unknownObjectRetain_n();

      v41 = v29;
      sub_10009E31C(0, 0, v45, &unk_10063B4C8, v37);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1000079B4(v13, &unk_10076FCD0, &unk_1006304D0);
    return (*(v26 + 8))(v19, v14);
  }

  return result;
}

uint64_t sub_10032C2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v4 - 8);
  v6 = v40 - v5;
  v7 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  __chkstk_darwin(v7 - 8);
  v43 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v40 - v11;
  v13 = type metadata accessor for TTRHashtagAssociationOperation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = (v40 - v18);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v42 = v8;
    v20 = result;
    v44 = v6;
    if (qword_1007671F0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003E30(v21, qword_10077ED10);
    v22 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Reminders list delete tag", 25, 2, v22);

    v23 = v20;
    v24 = *(v20 + 88);
    v25 = v45;
    *v45 = a3;
    (*(v14 + 104))(v25, enum case for TTRHashtagAssociationOperation.deleteHashtagLabels(_:), v13);
    v26 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    v41 = v24;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v29 = type metadata accessor for TaskPriority();
      (*(*(v29 - 8) + 56))(v44, 1, 1, v29);
      (*(v14 + 16))(v16, v25, v13);
      v30 = v43;
      sub_1001626EC(v12, v43);
      v31 = *(v14 + 80);
      v40[0] = a3;
      v40[1] = v23;
      v32 = (v31 + 40) & ~v31;
      v33 = v42[80];
      v42 = v12;
      v34 = (v15 + v33 + v32) & ~v33;
      v35 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      *(v36 + 2) = 0;
      *(v36 + 3) = 0;
      *(v36 + 4) = v41;
      (*(v14 + 32))(&v36[v32], v16, v13);
      v37 = &v36[v34];
      v12 = v42;
      v38 = v30;
      v25 = v45;
      sub_100275BC8(v38, v37);
      *&v36[v35] = v28;
      swift_unknownObjectRetain_n();

      v39 = v28;
      sub_10009E31C(0, 0, v44, &unk_10063B4D0, v36);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1000079B4(v12, &unk_10076FCD0, &unk_1006304D0);
    return (*(v14 + 8))(v25, v13);
  }

  return result;
}

double sub_10032C7AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001EAE00();
  }

  return result;
}

uint64_t sub_10032C804(uint64_t a1)
{
  sub_1001F6B24(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10000C36C((v3 + 48), *(v3 + 72));
      sub_100396340(a1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10032C89C()
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_10032C8DC()
{
  sub_1001E6A30();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowTaggedPresenter(uint64_t a1)
{
  result = qword_10077ED60;
  if (!qword_10077ED60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10032CA0C(int a1)
{
  LODWORD(v47) = a1;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v46 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v43[-v6];
  __chkstk_darwin(v8);
  v10 = &v43[-v9];
  v11 = type metadata accessor for REMHashtagLabelCollection();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = v1;
  swift_getObjectType();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.allHashtagLabels.getter();
  REMHashtagLabelCollection.init(labels:)();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  v50 = v13;
  REMHashtagLabelSpecifier.adjusted(toBeCompatibleWith:allowsLenientFallback:)();
  v14 = v2;
  v49 = *(v3 + 8);
  v49(v7, v2);
  if (REMHashtagLabelSpecifier.isEmpty.getter())
  {
    if (qword_1007671F0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_10077ED10);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "TTRIShowTaggedPresenter: represented list was deleted", v18, 2u);
    }

    [v48 representedListWasDeleted];
    goto LABEL_12;
  }

  if ((v47 & 1) == 0)
  {
LABEL_12:
    swift_unknownObjectRelease();
    v49(v10, v2);
    return (*(v51 + 8))(v50, v52);
  }

  if (qword_1007671F0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003E30(v19, qword_10077ED10);
  v20 = v46;
  (*(v3 + 16))(v46, v10, v14);
  swift_unknownObjectRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v45 = v21;
    v24 = v20;
    v25 = v23;
    v47 = swift_slowAlloc();
    v53 = v47;
    *v25 = 136315394;
    v44 = v22;
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
    v26 = REMHashtagLabelSpecifier.description.getter();
    v28 = v27;
    v29 = v7;
    v30 = v14;
    v31 = v14;
    v32 = v49;
    v49(v29, v30);
    v33 = sub_100004060(v26, v28, &v53);

    *(v25 + 4) = v33;
    *(v25 + 12) = 2080;
    v34 = REMHashtagLabelSpecifier.description.getter();
    v36 = v35;
    v32(v24, v31);
    v37 = sub_100004060(v34, v36, &v53);

    *(v25 + 14) = v37;
    v38 = v45;
    _os_log_impl(&_mh_execute_header, v45, v44, "TTRIShowTaggedPresenter: adjust current selection {from: %s, to: %s}", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v40 = v14;
    v31 = v14;
    v32 = v49;
    v49(v20, v40);
  }

  sub_1001F6B24(v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_20:
    swift_unknownObjectRelease();
    v32(v10, v31);
    return (*(v51 + 8))(v50, v52);
  }

  v42 = Strong;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  sub_10000C36C((v42 + 48), *(v42 + 72));
  sub_100396340(v10);
  swift_unknownObjectRelease();
  v32(v10, v31);
  (*(v51 + 8))(v50, v52);
  return swift_unknownObjectRelease();
}

uint64_t sub_10032D01C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRHashtagAssociationOperation() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100058000(&unk_10076FCD0, &unk_1006304D0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001AA38;

  return sub_100134A9C(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_10032D1B8()
{
  v1 = type metadata accessor for TTRHashtagAssociationOperation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_100058000(&unk_10076FCD0, &unk_1006304D0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for TTRIPopoverAnchor();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v12 + 8, v3 | v7 | 7);
}

uint64_t sub_10032D378(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRHashtagAssociationOperation() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100058000(&unk_10076FCD0, &unk_1006304D0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001AA3C;

  return sub_100134A9C(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

unint64_t sub_10032D514()
{
  result = qword_10077F7B0;
  if (!qword_10077F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F7B0);
  }

  return result;
}

unint64_t sub_10032D57C()
{
  result = qword_10077F7B8;
  if (!qword_10077F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F7B8);
  }

  return result;
}

uint64_t sub_10032D5D0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077F7C0);
  v1 = sub_100003E30(v0, qword_10077F7C0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10032D698(uint64_t a1, void *a2)
{
  v3 = static TTRLocalizableStrings.Hashtags.deletingTagMessage(hashtags:)();
  v5 = v4;
  sub_10000C36C(a2, a2[3]);
  v6 = sub_1005DE1F4();
  sub_10048DE3C(v3, v5, v6);
}

uint64_t sub_10032D728(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10032D7C0, v3, v2);
}

uint64_t sub_10032D7C0()
{
  sub_10000C36C(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10032D85C;

  return sub_1005DE37C();
}

uint64_t sub_10032D85C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10001E8F0, v3, v2);
}

uint64_t sub_10032D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[6] = a2;
  v5 = type metadata accessor for TTRHashtagAssociationDeleteTagPreferences();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_10032DA74, v7, v6);
}

uint64_t sub_10032DA74()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = *(v0[6] + 40);
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(v1, v4, v3);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_10032DB6C;
  v8 = v0[11];
  v9 = v0[7];

  return dispatch thunk of TTRHashtagAssociationInteractorType.removeReminderAssociationWithHashtagLabels(_:preferences:)(v9, v8, ObjectType, v5);
}

uint64_t sub_10032DB6C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_10032DD6C;
  }

  else
  {
    v8 = sub_10032DD04;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10032DD04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032DD6C()
{
  v12 = v0;

  if (qword_1007671F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10077F7C0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "TTRIHashtagAssociationPresenter: failed to start deleting tags {error: %s}", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10032DF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  v8 = type metadata accessor for Locale();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v9 = type metadata accessor for TTRHashtagAssociationAffectedObjectCounts();
  v7[18] = v9;
  v7[19] = *(v9 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[22] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[23] = v11;
  v7[24] = v10;

  return _swift_task_switch(sub_10032E0A4, v11, v10);
}

uint64_t sub_10032E0A4()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v17 = v0[14];
  v16 = v0[9];
  v15 = v0[8];
  static TTRLocalizableStrings.Hashtags.renameTagMenuItem.getter();
  TTRHashtagAssociationRenameTagConfirmationMessage.affectedObjectCounts.getter();
  TTRHashtagAssociationAffectedObjectCounts.reminders.getter();
  v5 = *(v3 + 8);
  v5(v1, v4);
  TTRHashtagAssociationRenameTagConfirmationMessage.affectedObjectCounts.getter();
  TTRHashtagAssociationAffectedObjectCounts.customSmartLists.getter();
  v5(v2, v4);
  static TTRLocalizableStrings.Hashtags.renameTagConfirmationMessage(hashtag:numberOfRemindersToBeUpdated:numberOfCustomSmartListsToBeUpdated:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  v0[25] = v8;

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v15;
  v10[4] = v16;
  v0[6] = sub_1003338D4;
  v0[7] = v10;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1001762CC;
  v0[5] = &unk_100720C40;
  v11 = _Block_copy(v0 + 2);

  [v8 addTextFieldWithConfigurationHandler:v11];
  _Block_release(v11);
  sub_100058000(&qword_10076B260, &unk_10062F6F0);
  sub_100058000(&unk_100775890, &qword_10063B690);
  v12 = swift_allocObject();
  v0[26] = v12;
  *(v12 + 16) = xmmword_10062D3F0;
  static TTRLocalizableStrings.Common.alertOKButton.getter();
  *(v0 + 224) = 1;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  *(v0 + 225) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  sub_10000C36C(v17, v17[3]);
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_10032E44C;

  return sub_100330184(v8, v12);
}

uint64_t sub_10032E44C(char a1)
{
  v2 = *v1;
  *(*v1 + 226) = a1;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);

  return _swift_task_switch(sub_10032E598, v4, v3);
}

uint64_t sub_10032E598()
{
  v1 = *(v0 + 226);

  if (v1 == 2)
  {

LABEL_13:
    v14 = 0;
    v16 = 0;
    goto LABEL_17;
  }

  v2 = *(v0 + 200);
  if ((*(v0 + 226) & 1) == 0)
  {

    goto LABEL_13;
  }

  v3 = [v2 textFields];
  if (!v3)
  {
LABEL_16:

    v14 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_17;
  }

  v4 = v3;
  sub_100003540(0, &qword_100771E60, UITextField_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_7:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;

  v9 = [v8 text];

  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = *(v0 + 200);
  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  v13 = *(v0 + 120);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static Locale.current.getter();
  v14 = String.safeNameForHashtag(locale:)();
  v16 = v15;

  (*(v12 + 8))(v11, v13);

LABEL_17:

  v17 = *(v0 + 8);

  return v17(v14, v16);
}

double sub_10032E7B8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = String._bridgeToObjectiveC()();
      [a1 setText:v6];

      [a1 setClearButtonMode:3];
      [a1 addTarget:v5 action:"renameTagAlertTextFieldDidChange:" forControlEvents:0x20000];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10032E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for TTRHashtagAssociationAffectedObjectCounts();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[13] = v9;
  v6[14] = v8;

  return _swift_task_switch(sub_10032E9B0, v9, v8);
}

uint64_t sub_10032E9B0(uint64_t a1)
{
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v13 = *(v1 + 56);
  TTRHashtagAssociationRenameTagConfirmationMessage.affectedObjectCounts.getter();
  TTRHashtagAssociationAffectedObjectCounts.reminders.getter();
  v6 = *(v5 + 8);
  v6(v2, v4);
  TTRHashtagAssociationRenameTagConfirmationMessage.affectedObjectCounts.getter();
  TTRHashtagAssociationAffectedObjectCounts.customSmartLists.getter();
  v6(v3, v4);
  static TTRLocalizableStrings.Hashtags.tagAlreadyExistsMessage(from:to:numberOfRemindersToBeUpdated:numberOfCustomSmartListsToBeUpdated:)();
  static TTRLocalizableStrings.Hashtags.tagAlreadyExistsAlertTitle.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];
  *(v1 + 120) = v9;

  sub_100058000(&qword_10076B260, &unk_10062F6F0);
  sub_100058000(&unk_100775890, &qword_10063B690);
  v10 = swift_allocObject();
  *(v1 + 128) = v10;
  *(v10 + 16) = xmmword_10062D3F0;
  static TTRLocalizableStrings.Hashtags.tagAlreadyExistsAlertReplaceButton.getter();
  *(v1 + 144) = 1;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Hashtags.tagAlreadyExistsAlertDiscardButton.getter();
  *(v1 + 145) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  sub_10000C36C(v13, v13[3]);
  v11 = swift_task_alloc();
  *(v1 + 136) = v11;
  *v11 = v1;
  v11[1] = sub_10032EC70;

  return sub_100330184(v9, v10);
}

uint64_t sub_10032EC70(char a1)
{
  v2 = *v1;
  *(*v1 + 146) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return _swift_task_switch(sub_10032EDBC, v4, v3);
}

uint64_t sub_10032EDBC()
{
  v1 = *(v0 + 146);

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

void sub_10032EE4C(void *a1)
{
  v2 = static TTRLocalizableStrings.Hashtags.renamingTagMessage.getter();
  v4 = v3;
  sub_10000C36C(a1, a1[3]);
  v5 = sub_1005DE1F4();
  sub_10048DE3C(v2, v4, v5);
}

uint64_t sub_10032EEDC(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10032EF74, v3, v2);
}

uint64_t sub_10032EF74()
{
  sub_10000C36C(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1002DDB08;

  return sub_1005DE37C();
}

uint64_t sub_10032F010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[6] = a2;
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v8;
  v6[13] = v7;

  return _swift_task_switch(sub_10032F0B0, v8, v7);
}

uint64_t sub_10032F0B0()
{
  v1 = *(v0[6] + 40);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10032F170;
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  return dispatch thunk of TTRHashtagAssociationInteractorType.replaceReminderAssociationWithHashtagLabel(from:to:)(v7, v6, v4, v5, ObjectType, v1);
}

uint64_t sub_10032F170()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_10032F30C;
  }

  else
  {
    v5 = sub_10032F2AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10032F2AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032F30C()
{
  v12 = v0;

  if (qword_1007671F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10077F7C0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "TTRIHashtagAssociationPresenter: failed to start renaming tag {error: %s}", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10032F4D4()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders31TTRIHashtagAssociationPresenter_currentOperation, &qword_10077F8B0, &qword_10063B668);

  return swift_deallocClassInstance();
}

uint64_t sub_10032F568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = type metadata accessor for TTRHashtagAssociationOperation();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  v4[18] = swift_task_alloc();
  sub_100058000(&qword_10077F8B0, &qword_10063B668);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v7;
  v4[23] = v6;

  return _swift_task_switch(sub_10032F6DC, v7, v6);
}

uint64_t sub_10032F6DC()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = OBJC_IVAR____TtC9Reminders31TTRIHashtagAssociationPresenter_currentOperation;
  v0[24] = OBJC_IVAR____TtC9Reminders31TTRIHashtagAssociationPresenter_currentOperation;
  swift_beginAccess();
  sub_10000794C(v4 + v5, v1, &qword_10077F8B0, &qword_10063B668);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = v0[19];
    v7 = v0[18];
    v8 = v0[15];
    v9 = v0[16];
    v32 = v0[13];
    v33 = v0[17];
    v31 = v0[12];
    v10 = v0[11];
    sub_1000079B4(v0[20], &qword_10077F8B0, &qword_10063B668);
    v11 = *(v9 + 16);
    v11(v6, v10, v8);
    v12 = *(v9 + 56);
    v0[25] = v12;
    v0[26] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 0, 1, v8);
    swift_beginAccess();
    sub_100330114(v6, v4 + v5);
    swift_endAccess();
    sub_10000794C(v31, v7, &unk_10076FCD0, &unk_1006304D0);
    type metadata accessor for TTRIHashtagAssociationRouter(0);
    swift_allocObject();
    v13 = sub_1005DE0F4(v32, v7);
    v0[27] = v13;
    v11(v33, v10, v8);
    v14 = (*(v9 + 88))(v33, v8);
    if (v14 == enum case for TTRHashtagAssociationOperation.deleteHashtagLabels(_:))
    {
      v15 = v0[17];
      (*(v0[16] + 96))(v15, v0[15]);
      v16 = *v15;
      v0[28] = v16;

      v17 = swift_task_alloc();
      v0[29] = v17;
      *v17 = v0;
      v17[1] = sub_10032FBA8;
      v18 = v0[14];

      return sub_100330764(v16, v13, v18);
    }

    else if (v14 == enum case for TTRHashtagAssociationOperation.renameHashtagLabel(_:))
    {
      v26 = v0[17];
      (*(v0[16] + 96))(v26, v0[15]);
      v28 = *v26;
      v27 = v26[1];
      v0[30] = v27;

      v29 = swift_task_alloc();
      v0[31] = v29;
      *v29 = v0;
      v29[1] = sub_10032FDF8;
      v30 = v0[14];

      return sub_100332510(v28, v27, v13, v30);
    }

    else
    {

      return _diagnoseUnexpectedEnumCase<A>(type:)();
    }
  }

  else
  {
    v20 = v0[20];

    sub_1000079B4(v20, &qword_10077F8B0, &qword_10063B668);
    if (qword_1007671F8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003E30(v21, qword_10077F7C0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "TTRIHashtagAssociationPresenter: start() called while busy", v24, 2u);
    }

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10032FBA8()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_10032FD08, v3, v2);
}

uint64_t sub_10032FD08()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[19];
  v5 = v0[14];
  v4 = v0[15];

  v1(v3, 1, 1, v4);
  swift_beginAccess();
  sub_100330114(v3, v5 + v2);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10032FDF8()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_1003338E0, v3, v2);
}

BOOL sub_10032FF58()
{
  v1 = sub_100058000(&qword_10077F8B0, &qword_10063B668);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRIHashtagAssociationPresenter_currentOperation;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &qword_10077F8B0, &qword_10063B668);
  v5 = type metadata accessor for TTRHashtagAssociationOperation();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000079B4(v3, &qword_10077F8B0, &qword_10063B668);
  return v6;
}

uint64_t sub_100330068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001AA3C;

  return sub_10032F568(a1, a2, a3);
}

uint64_t sub_100330114(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10077F8B0, &qword_10063B668);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100330184(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for TTRIPopoverAnchor();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[10] = v6;
  v3[11] = v5;

  return _swift_task_switch(sub_1003302B4, v6, v5);
}

uint64_t sub_1003302B4()
{
  v1 = sub_1005DE1F4();
  *(v0 + 96) = v1;
  if (v1)
  {
    if (![*(v0 + 16) preferredStyle])
    {
      v2 = *(v0 + 48);
      v3 = *(v0 + 56);
      v4 = *(v0 + 40);
      sub_10000794C(*(v0 + 32) + OBJC_IVAR____TtC9Reminders28TTRIHashtagAssociationRouter_popoverAnchor, v4, &unk_10076FCD0, &unk_1006304D0);
      if ((*(v3 + 48))(v4, 1, v2) == 1)
      {
        sub_1000079B4(*(v0 + 40), &unk_10076FCD0, &unk_1006304D0);
        v5 = [objc_opt_self() currentDevice];
        v6 = [v5 userInterfaceIdiom];

        if (v6 == 1)
        {
          [*(v0 + 16) setPreferredStyle:1];
        }
      }

      else
      {
        v14 = *(v0 + 56);
        v13 = *(v0 + 64);
        v15 = *(v0 + 48);
        (*(v14 + 32))(v13, *(v0 + 40), v15);
        UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
        (*(v14 + 8))(v13, v15);
      }
    }

    v16 = swift_task_alloc();
    *(v0 + 104) = v16;
    *v16 = v0;
    v16[1] = sub_1003305B4;
    v17 = *(v0 + 16);
    v18 = *(v0 + 24);

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 112, v17, v18, 0, 0, 1, &type metadata for Bool);
  }

  else
  {

    if (qword_1007674E0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003E30(v7, qword_100791440);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "TTRIHashtagAssociationRouter: failed to present alert; missing a presentingViewController", v10, 2u);
    }

    v11 = *(v0 + 8);

    return v11(2);
  }
}

uint64_t sub_1003305B4()
{
  v1 = *v0;

  *(v1 + 113) = *(v1 + 112);
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1003306E0, v3, v2);
}

uint64_t sub_1003306E0()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 113);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100330764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a1;
  v3[26] = a3;
  v5 = type metadata accessor for TTRHashtagAssociationDeleteTagPreferences.DeletableCustomSmartListIntent();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  sub_100058000(&qword_10077F8B8, &unk_10063B680);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v6 = type metadata accessor for TTRHashtagAssociationDeleteTagPreferences();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();
  v7 = type metadata accessor for TTRHashtagAssociationAffectedObjectCounts();
  v3[35] = v7;
  v3[36] = *(v7 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v8 = type metadata accessor for TTRHashtagAssociationDeleteTagConfirmationMessage();
  v3[39] = v8;
  v3[40] = *(v8 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[5] = type metadata accessor for TTRIHashtagAssociationRouter(0);
  v3[6] = &off_100732898;
  v3[2] = a2;
  type metadata accessor for MainActor();

  v3[43] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[44] = v10;
  v3[45] = v9;

  return _swift_task_switch(sub_1003309EC, v10, v9);
}

uint64_t sub_1003309EC()
{
  v1 = *(v0[26] + 40);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_100330AAC;
  v4 = v0[41];
  v5 = v0[25];

  return dispatch thunk of TTRHashtagAssociationInteractorType.confirmationMessage(forRemovingHashtagLabels:)(v4, v5, ObjectType, v1);
}

uint64_t sub_100330AAC()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_10033176C;
  }

  else
  {
    v5 = sub_100330BE8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100330BE8()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  (*(*(v0 + 320) + 32))(*(v0 + 336), *(v0 + 328), *(v0 + 312));
  static TTRLocalizableStrings.Hashtags.deleteTagMenuItem(tagCount:)();
  TTRHashtagAssociationDeleteTagConfirmationMessage.affectedObjectCounts.getter();
  TTRHashtagAssociationAffectedObjectCounts.reminders.getter();
  v5 = *(v4 + 8);
  v5(v1, v3);
  TTRHashtagAssociationDeleteTagConfirmationMessage.affectedObjectCounts.getter();
  TTRHashtagAssociationAffectedObjectCounts.customSmartLists.getter();
  v5(v2, v3);
  static TTRLocalizableStrings.Hashtags.deleteTagConfirmationMessage(hashtags:numberOfRemindersToBeUpdated:numberOfCustomSmartListsToBeUpdated:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = objc_opt_self();
  *(v0 + 384) = v8;
  v9 = [v8 alertControllerWithTitle:v6 message:v7 preferredStyle:0];
  *(v0 + 392) = v9;

  *(v0 + 400) = sub_100058000(&qword_10076B260, &unk_10062F6F0);
  v10 = *(sub_100058000(&unk_100775890, &qword_10063B690) - 8);
  *(v0 + 408) = *(v10 + 72);
  *(v0 + 480) = *(v10 + 80);
  v11 = swift_allocObject();
  *(v0 + 416) = v11;
  *(v11 + 16) = xmmword_10062D3F0;
  static TTRLocalizableStrings.Common.alertDeleteButton.getter();
  *(v0 + 484) = 1;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  *(v0 + 485) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  sub_10000C36C((v0 + 16), *(v0 + 40));
  v12 = swift_task_alloc();
  *(v0 + 424) = v12;
  *v12 = v0;
  v12[1] = sub_100330ED0;

  return sub_100330184(v9, v11);
}

uint64_t sub_100330ED0(char a1)
{
  v2 = *v1;
  *(*v1 + 488) = a1;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);

  return _swift_task_switch(sub_10033101C, v4, v3);
}

uint64_t sub_10033101C()
{
  v1 = *(v0 + 488);

  if (v1 != 2 && (*(v0 + 488) & 1) != 0)
  {
    sub_100333198(_swiftEmptyArrayStorage);
    TTRHashtagAssociationDeleteTagPreferences.init(intentBySmartListID:)();
    v2 = TTRHashtagAssociationDeleteTagConfirmationMessage.deletableCustomSmartLists.getter();
    if (v2 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();

      if (v22)
      {
LABEL_5:
        if (TTRHashtagAssociationDeleteTagConfirmationMessage.deletableCustomSmartLists.getter() >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        static TTRLocalizableStrings.Hashtags.deleteSmartListAlertTitle(smartListCount:)();
        v4 = TTRHashtagAssociationDeleteTagConfirmationMessage.deletableCustomSmartLists.getter();
        if (v4 >> 62)
        {
          v30 = v4;
          v5 = _CocoaArrayWrapper.endIndex.getter();
          v4 = v30;
          if (v5)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v5)
          {
LABEL_9:
            v6 = v4;
            sub_1004A1CD0(0, v5 & ~(v5 >> 63), 0);
            if ((v5 & 0x8000000000000000) == 0)
            {
              v7 = 0;
              v8 = v6;
              v37 = v6 & 0xC000000000000001;
              v9 = v6;
              v10 = v5;
              do
              {
                if (v37)
                {
                  v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v11 = *(v8 + 8 * v7 + 32);
                }

                v12 = v11;
                v13 = [v11 name];
                v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v16 = v15;

                v18 = _swiftEmptyArrayStorage[2];
                v17 = _swiftEmptyArrayStorage[3];
                if (v18 >= v17 >> 1)
                {
                  sub_1004A1CD0((v17 > 1), v18 + 1, 1);
                }

                ++v7;
                _swiftEmptyArrayStorage[2] = v18 + 1;
                v19 = &_swiftEmptyArrayStorage[2 * v18];
                v19[4] = v14;
                v19[5] = v16;
                v8 = v9;
              }

              while (v10 != v7);
              goto LABEL_27;
            }

            __break(1u);
            goto LABEL_33;
          }
        }

LABEL_27:

        static TTRLocalizableStrings.Hashtags.deleteSmartListAlertMessage(hashtagCount:smartListNames:)();

        if (TTRHashtagAssociationDeleteTagConfirmationMessage.deletableCustomSmartLists.getter() >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        v31 = *(v0 + 384);

        static TTRLocalizableStrings.Hashtags.deleteSmartListAlertDeleteButton(hashtagCount:smartListCount:)();
        v32 = String._bridgeToObjectiveC()();

        v33 = String._bridgeToObjectiveC()();

        v34 = [v31 alertControllerWithTitle:v32 message:v33 preferredStyle:1];
        *(v0 + 456) = v34;

        v35 = swift_allocObject();
        *(v0 + 464) = v35;
        *(v35 + 16) = xmmword_10062D3F0;
        *(v0 + 486) = 1;
        TTRIValueBasedAlertAction.init(title:style:value:)();
        static TTRLocalizableStrings.Common.alertCancelButton.getter();
        *(v0 + 487) = 0;
        TTRIValueBasedAlertAction.init(title:style:value:)();
        sub_10000C36C((v0 + 16), *(v0 + 40));
        v36 = swift_task_alloc();
        *(v0 + 472) = v36;
        *v36 = v0;
        v36[1] = sub_100331BF8;

        return sub_100330184(v34, v35);
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v3)
      {
        goto LABEL_5;
      }
    }

    if (qword_1007671F8 == -1)
    {
LABEL_23:
      v23 = *(v0 + 272);
      v24 = type metadata accessor for Logger();
      v38 = *(v0 + 200);
      sub_100003E30(v24, qword_10077F7C0);
      v25 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_10000FD44("Hashtag management confirm delete tags", 38, 2, v25);

      type metadata accessor for TTRHashtagAssociationPresenterCapability();
      static TTRHashtagAssociationPresenterCapability.longOperationDurationThreshold.getter();
      sub_10000B0D8(v0 + 16, v0 + 56);
      v26 = swift_allocObject();
      *(v26 + 16) = v38.i64[0];
      sub_100005FD0((v0 + 56), v26 + 24);
      sub_10000B0D8(v0 + 16, v0 + 96);
      v27 = swift_allocObject();
      sub_100005FD0((v0 + 96), v27 + 16);
      type metadata accessor for TTRPotentiallyLongOperationPerformer();
      swift_allocObject();

      *(v0 + 432) = TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)();
      v28 = swift_task_alloc();
      *(v0 + 440) = v28;
      v28[1] = vextq_s8(v38, v38, 8uLL);
      v28[2].i64[0] = v23;
      v29 = swift_task_alloc();
      *(v0 + 448) = v29;
      *v29 = v0;
      v29[1] = sub_100331998;

      return TTRPotentiallyLongOperationPerformer.perform<A>(_:)(v29, &unk_10063B6B8, v28, &type metadata for () + 8);
    }

LABEL_33:
    swift_once();
    goto LABEL_23;
  }

  (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));

  sub_100004758((v0 + 16));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10033176C()
{
  v12 = v0;

  if (qword_1007671F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10077F7C0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "TTRIHashtagAssociationPresenter: failed to fetch confirmation message {error: %s}", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  sub_100004758((v0 + 16));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100331998()
{
  v1 = *v0;

  v2 = *(v1 + 360);
  v3 = *(v1 + 352);

  return _swift_task_switch(sub_100331ADC, v3, v2);
}

uint64_t sub_100331ADC()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);
  sub_100004758(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100331BF8(char a1)
{
  v2 = *v1;
  *(*v1 + 489) = a1;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);

  return _swift_task_switch(sub_100331D44, v4, v3);
}

uint64_t sub_100331D44(uint64_t a1)
{
  v2 = *(v1 + 489);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    v3 = TTRHashtagAssociationDeleteTagConfirmationMessage.deletableCustomSmartLists.getter();
    v4 = v3;
    if (v3 >> 62)
    {
LABEL_41:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_5:
        v6 = 0;
        v7 = *(v1 + 224);
        v60 = v4 & 0xC000000000000001;
        v52 = v4 & 0xFFFFFFFFFFFFFF8;
        v59 = (v7 + 104);
        v58 = enum case for TTRHashtagAssociationDeleteTagPreferences.DeletableCustomSmartListIntent.delete(_:);
        v61 = (v7 + 56);
        v56 = (v7 + 32);
        v57 = (v7 + 48);
        v53 = v7;
        v54 = v4;
        v55 = v5;
        do
        {
          if (v60)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v11 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              goto LABEL_37;
            }
          }

          else
          {
            if (v6 >= *(v52 + 16))
            {
              goto LABEL_39;
            }

            v10 = *(v4 + 8 * v6 + 32);
            v11 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }
          }

          v12 = *(v1 + 248);
          v13 = *(v1 + 216);
          v63 = v10;
          v14 = [v10 objectID];
          (*v59)(v12, v58, v13);
          v15 = *v61;
          (*v61)(v12, 0, 1, v13);
          v62 = TTRHashtagAssociationDeleteTagPreferences.intentBySmartListID.modify();
          v17 = v16;
          if ((*v57)(v12, 1, v13) == 1)
          {
            sub_1000079B4(*(v1 + 248), &qword_10077F8B8, &unk_10063B680);
            v18 = sub_1002613B0(v14);
            if (v19)
            {
              v20 = v18;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v65 = *v17;
              *v17 = 0x8000000000000000;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1003B0278();
              }

              v22 = *(v1 + 240);
              v23 = *(v1 + 216);

              (*(v53 + 32))(v22, *(v65 + 56) + *(v53 + 72) * v20, v23);
              sub_1003ADBEC(v20, v65);

              *v17 = v65;

              v8 = 0;
              v4 = v54;
            }

            else
            {

              v8 = 1;
            }

            v9 = *(v1 + 240);
            v15(v9, v8, 1, *(v1 + 216));
            sub_1000079B4(v9, &qword_10077F8B8, &unk_10063B680);
          }

          else
          {
            v24 = *v56;
            (*v56)(*(v1 + 232), *(v1 + 248), *(v1 + 216));
            v4 = swift_isUniquelyReferenced_nonNull_native();
            v25 = *v17;
            v66 = *v17;
            *v17 = 0x8000000000000000;
            v27 = sub_1002613B0(v14);
            v28 = *(v25 + 16);
            v29 = (v26 & 1) == 0;
            v30 = v28 + v29;
            if (__OFADD__(v28, v29))
            {
              goto LABEL_38;
            }

            v31 = v26;
            if (*(v25 + 24) >= v30)
            {
              if ((v4 & 1) == 0)
              {
                sub_1003B0278();
              }
            }

            else
            {
              sub_10054D4CC(v30, v4);
              v32 = sub_1002613B0(v14);
              if ((v31 & 1) != (v33 & 1))
              {
                sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);

                return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              }

              v27 = v32;
            }

            v34 = *(v1 + 232);
            v35 = *(v1 + 216);
            v4 = v54;
            if (v31)
            {
              (*(v53 + 40))(v66[7] + *(v53 + 72) * v27, v34, v35);
            }

            else
            {
              v66[(v27 >> 6) + 8] |= 1 << v27;
              *(v66[6] + 8 * v27) = v14;
              v24(v66[7] + *(v53 + 72) * v27, v34, v35);
              v36 = v66[2];
              v37 = __OFADD__(v36, 1);
              v38 = v36 + 1;
              if (v37)
              {
                goto LABEL_40;
              }

              v66[2] = v38;
            }

            *v17 = v66;
          }

          v62(v1 + 136, 0);

          ++v6;
        }

        while (v11 != v55);
      }
    }

    if (qword_1007671F8 != -1)
    {
      swift_once();
    }

    v45 = *(v1 + 272);
    v46 = type metadata accessor for Logger();
    v64 = *(v1 + 200);
    sub_100003E30(v46, qword_10077F7C0);
    v47 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Hashtag management confirm delete tags", 38, 2, v47);

    type metadata accessor for TTRHashtagAssociationPresenterCapability();
    static TTRHashtagAssociationPresenterCapability.longOperationDurationThreshold.getter();
    sub_10000B0D8(v1 + 16, v1 + 56);
    v48 = swift_allocObject();
    *(v48 + 16) = v64.i64[0];
    sub_100005FD0((v1 + 56), v48 + 24);
    sub_10000B0D8(v1 + 16, v1 + 96);
    v49 = swift_allocObject();
    sub_100005FD0((v1 + 96), v49 + 16);
    type metadata accessor for TTRPotentiallyLongOperationPerformer();
    swift_allocObject();

    *(v1 + 432) = TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)();
    v50 = swift_task_alloc();
    *(v1 + 440) = v50;
    v50[1] = vextq_s8(v64, v64, 8uLL);
    v50[2].i64[0] = v45;
    v51 = swift_task_alloc();
    *(v1 + 448) = v51;
    *v51 = v1;
    v51[1] = sub_100331998;

    return TTRPotentiallyLongOperationPerformer.perform<A>(_:)(v51, &unk_10063B6B8, v50, &type metadata for () + 8);
  }

  v39 = *(v1 + 456);
  v41 = *(v1 + 264);
  v40 = *(v1 + 272);
  v42 = *(v1 + 256);
  (*(*(v1 + 320) + 8))(*(v1 + 336), *(v1 + 312));

  (*(v41 + 8))(v40, v42);
  sub_100004758((v1 + 16));

  v43 = *(v1 + 8);

  return v43();
}

uint64_t sub_100332510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a2;
  v4[23] = a4;
  v4[21] = a1;
  v6 = type metadata accessor for TTRHashtagAssociationRenameTagConfirmationMessage();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[5] = type metadata accessor for TTRIHashtagAssociationRouter(0);
  v4[6] = &off_100732898;
  v4[2] = a3;
  type metadata accessor for MainActor();

  v4[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[29] = v8;
  v4[30] = v7;

  return _swift_task_switch(sub_100332638, v8, v7);
}

uint64_t sub_100332638()
{
  v1 = *(v0[23] + 40);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_1003326F8;
  v4 = v0[26];
  v5 = v0[21];
  v6 = v0[22];

  return dispatch thunk of TTRHashtagAssociationInteractorType.confirmationMessage(forRenamingHashtagLabel:)(v4, v5, v6, ObjectType, v1);
}

uint64_t sub_1003326F8()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_100332DA8;
  }

  else
  {
    v5 = sub_100332834;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100332834()
{
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  (*(v0[25] + 32))(v1, v0[26], v0[24]);
  v5 = swift_task_alloc();
  v0[33] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v1;
  v5[5] = v2;
  v5[6] = v0 + 2;
  v6 = swift_task_alloc();
  v0[34] = v6;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v1;
  v6[5] = v0 + 2;
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_100332974;
  v9 = v0[21];
  v8 = v0[22];

  return TTRHashtagAssociationPresenterCapability.obtainNewHashtagNameFromUser(srcLabel:showInputUI:showMergeUI:)(v9, v8, &unk_10063B6D8, v5, &unk_10063B6E8, v6);
}

uint64_t sub_100332974(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 288) = a1;
  *(v4 + 296) = a2;

  v5 = *(v3 + 240);
  v6 = *(v3 + 232);

  return _swift_task_switch(sub_100332ADC, v6, v5);
}

uint64_t sub_100332ADC()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    if (qword_1007671F8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 288);
    v3 = *(v0 + 184);
    v15 = *(v0 + 168);
    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_10077F7C0);
    v5 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Hashtag management confirm delete tags", 38, 2, v5);

    type metadata accessor for TTRHashtagAssociationPresenterCapability();
    static TTRHashtagAssociationPresenterCapability.longOperationDurationThreshold.getter();
    sub_10000B0D8(v0 + 16, v0 + 56);
    v6 = swift_allocObject();
    sub_100005FD0((v0 + 56), v6 + 16);
    sub_10000B0D8(v0 + 16, v0 + 96);
    v7 = swift_allocObject();
    sub_100005FD0((v0 + 96), v7 + 16);
    type metadata accessor for TTRPotentiallyLongOperationPerformer();
    swift_allocObject();
    *(v0 + 304) = TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)();
    v8 = swift_task_alloc();
    *(v0 + 312) = v8;
    *(v8 + 16) = v3;
    *(v8 + 24) = v15;
    *(v8 + 40) = v2;
    *(v8 + 48) = v1;
    v9 = swift_task_alloc();
    *(v0 + 320) = v9;
    *v9 = v0;
    v9[1] = sub_100332F8C;

    return TTRPotentiallyLongOperationPerformer.perform<A>(_:)(v9, &unk_10063B708, v8, &type metadata for () + 8);
  }

  else
  {
    v10 = *(v0 + 216);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);

    (*(v12 + 8))(v10, v11);
    sub_100004758((v0 + 16));

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100332DA8()
{
  v12 = v0;

  if (qword_1007671F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10077F7C0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "TTRIHashtagAssociationPresenter: failed to fetch confirmation message {error: %s}", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  sub_100004758((v0 + 16));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100332F8C()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1003330EC, v3, v2);
}

uint64_t sub_1003330EC()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];

  (*(v3 + 8))(v1, v2);
  sub_100004758(v0 + 2);

  v4 = v0[1];

  return v4();
}

unint64_t sub_100333198(uint64_t a1)
{
  v2 = sub_100058000(&qword_10077F8C0, &unk_10063B6C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100058000(&qword_10077F8C8, &unk_10063CE70);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000794C(v9, v5, &qword_10077F8C0, &unk_10063B6C0);
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
      v16 = type metadata accessor for TTRHashtagAssociationDeleteTagPreferences.DeletableCustomSmartListIntent();
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

uint64_t sub_10033338C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001AA38;

  return sub_10032D728(v0 + 16);
}

uint64_t sub_100333420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_10032D97C(a1, v4, v5, v6);
}

uint64_t sub_1003334D4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1003335A8;

  return sub_10032DF3C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1003335A8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1003336AC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1001E4BC8;

  return sub_10032E8A8(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100333778()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001AA3C;

  return sub_10032EEDC(v0 + 16);
}

uint64_t sub_10033380C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_10032F010(a1, v4, v5, v6, v7, v8);
}

id sub_1003338E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = a3[3];
  if (v7)
  {
    v8 = sub_10000C36C(a3, a3[3]);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin(v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    sub_100004758(a3);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v6 target:v13 selector:a4];

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_100333A5C(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_100337B00(&qword_10077F958, &type metadata accessor for TTRCloudKitMigrationManager.MigrationState, &protocol conformance descriptor for TTRCloudKitMigrationManager.MigrationState);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_100336E24();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

uint64_t sub_100333C6C(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_networkActivityState;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_100337B00(&qword_10077F950, &type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity, &protocol conformance descriptor for TTRCloudKitNetworkActivityMonitor.Activity);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_100333E7C();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void sub_100333E7C()
{
  v1 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v21[-v10];
  v12 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_networkActivityState;
  swift_beginAccess();
  (*(v6 + 16))(v11, v0 + v12, v5);
  (*(v6 + 104))(v8, enum case for TTRCloudKitNetworkActivityMonitor.Activity.some(_:), v5);
  v13 = static TTRCloudKitNetworkActivityMonitor.Activity.== infix(_:_:)();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);
  v15 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v15, v1);
  v16 = (*(v2 + 88))(v4, v1);
  if (v16 != enum case for TTRCloudKitMigrationManager.MigrationState.notStarted(_:) && v16 != enum case for TTRCloudKitMigrationManager.MigrationState.notAvailable(_:))
  {
    if (v16 == enum case for TTRCloudKitMigrationManager.MigrationState.inProgress(_:))
    {
      goto LABEL_9;
    }

    if (v16 != enum case for TTRCloudKitMigrationManager.MigrationState.error(_:) && v16 != enum case for TTRCloudKitMigrationManager.MigrationState.finished(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_14;
    }
  }

  if ((v13 & 1) == 0)
  {
    [*(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner) stopAnimating];
    return;
  }

LABEL_9:
  v18 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner);
  if (!v18)
  {
LABEL_14:
    v19 = sub_100334194(v0);
    v18 = 0;
    goto LABEL_15;
  }

  v19 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner);
LABEL_15:
  v20 = v18;
  [v19 startAnimating];
}

id sub_100334194(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v2 setHidesWhenStopped:1];
  [v2 frame];
  v4 = v3;
  LODWORD(v3) = 1148846080;
  [v2 setLayoutSize:v4 withContentPriority:{v5, v3}];
  [*(a1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView) addArrangedSubview:v2];
  v6 = *(a1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner);
  *(a1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner) = v2;
  v7 = v2;

  return v7;
}

uint64_t sub_100334258(uint64_t a1)
{
  v69 = type metadata accessor for TTRITreeViewExpandedState();
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = &v59 - v5;
  v66 = sub_100058000(&unk_100771B50, &unk_10062FCE0);
  __chkstk_darwin(v66);
  v68 = &v59 - v6;
  v7 = sub_100058000(&qword_10076B9C0, &unk_10063B820);
  __chkstk_darwin(v7 - 8);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v59 - v10;
  __chkstk_darwin(v11);
  v70 = &v59 - v12;
  v13 = type metadata accessor for TTRITreeViewCellModel();
  v73 = *(v13 - 8);
  __chkstk_darwin(v13);
  v72 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_1007884E0, &unk_10062FC40);
  __chkstk_darwin(v15 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v59 - v19;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  __chkstk_darwin(v24);
  v26 = &v59 - v25;
  v27 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewModel;
  swift_beginAccess();
  sub_10000794C(v1 + v27, v26, &unk_1007884E0, &unk_10062FC40);
  sub_10000794C(a1, v23, &unk_1007884E0, &unk_10062FC40);
  swift_beginAccess();
  v63 = v1;
  sub_100337758(v23, v1 + v27);
  swift_endAccess();
  v28 = v73;
  sub_10000794C(a1, v20, &unk_1007884E0, &unk_10062FC40);
  v29 = *(v28 + 48);
  if (v29(v20, 1, v13) != 1)
  {
    (*(v28 + 32))(v72, v20, v13);
    v60 = v26;
    sub_10000794C(v26, v17, &unk_1007884E0, &unk_10062FC40);
    v31 = v29(v17, 1, v13);
    v61 = v13;
    if (v31 == 1)
    {
      sub_1000079B4(v17, &unk_1007884E0, &unk_10062FC40);
      v32 = 1;
      v33 = v69;
      v34 = v70;
    }

    else
    {
      v34 = v70;
      TTRITreeViewCellModel.expandedState.getter();
      (*(v28 + 8))(v17, v13);
      v32 = 0;
      v33 = v69;
    }

    v35 = v71;
    v36 = *(v71 + 56);
    v36(v34, v32, 1, v33);
    v37 = v67;
    TTRITreeViewCellModel.expandedState.getter();
    v36(v37, 0, 1, v33);
    v38 = *(v66 + 48);
    v39 = v68;
    sub_10000794C(v34, v68, &qword_10076B9C0, &unk_10063B820);
    sub_10000794C(v37, v39 + v38, &qword_10076B9C0, &unk_10063B820);
    v40 = *(v35 + 48);
    if (v40(v39, 1, v33) == 1)
    {
      sub_1000079B4(v37, &qword_10076B9C0, &unk_10063B820);
      sub_1000079B4(v34, &qword_10076B9C0, &unk_10063B820);
      v41 = v40(v39 + v38, 1, v33);
      v42 = v61;
      if (v41 == 1)
      {
        sub_1000079B4(v39, &qword_10076B9C0, &unk_10063B820);
        v43 = v72;
LABEL_16:
        v52 = v73;
LABEL_17:
        (*(v52 + 8))(v43, v42);
        v30 = v60;
        return sub_1000079B4(v30, &unk_1007884E0, &unk_10062FC40);
      }
    }

    else
    {
      v44 = v62;
      sub_10000794C(v39, v62, &qword_10076B9C0, &unk_10063B820);
      if (v40(v39 + v38, 1, v33) != 1)
      {
        v53 = v37;
        v54 = v44;
        v55 = v71;
        v45 = v65;
        (*(v71 + 32))(v65, v39 + v38, v33);
        sub_100337B00(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState, &protocol conformance descriptor for TTRITreeViewExpandedState);
        v56 = dispatch thunk of static Equatable.== infix(_:_:)();
        v57 = *(v55 + 8);
        v57(v45, v33);
        sub_1000079B4(v53, &qword_10076B9C0, &unk_10063B820);
        sub_1000079B4(v70, &qword_10076B9C0, &unk_10063B820);
        v57(v54, v33);
        sub_1000079B4(v39, &qword_10076B9C0, &unk_10063B820);
        v42 = v61;
        v43 = v72;
        if (v56)
        {
          goto LABEL_16;
        }

LABEL_12:
        v46 = *(v63 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView);
        TTRITreeViewCellModel.expandedState.getter();
        v47 = v71;
        v48 = v64;
        (*(v71 + 104))(v64, enum case for TTRITreeViewExpandedState.expanded(_:), v33);
        v49 = static TTRITreeViewExpandedState.== infix(_:_:)();
        v50 = *(v47 + 8);
        v50(v48, v33);
        v50(v45, v33);
        v51 = *(v46 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_isExpanded);
        *(v46 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_isExpanded) = v49 & 1;
        if ((v49 & 1) != v51)
        {
          sub_1004B2404();
        }

        v43 = v72;
        v52 = v73;
        goto LABEL_17;
      }

      sub_1000079B4(v37, &qword_10076B9C0, &unk_10063B820);
      sub_1000079B4(v34, &qword_10076B9C0, &unk_10063B820);
      (*(v71 + 8))(v44, v33);
      v42 = v61;
    }

    sub_1000079B4(v39, &unk_100771B50, &unk_10062FCE0);
    v45 = v65;
    goto LABEL_12;
  }

  sub_1000079B4(v26, &unk_1007884E0, &unk_10062FC40);
  v30 = v20;
  return sub_1000079B4(v30, &unk_1007884E0, &unk_10062FC40);
}

char *sub_100334A98(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = &v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_identifier];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  v6 = enum case for TTRCloudKitMigrationManager.MigrationState.notAvailable(_:);
  v7 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  (*(*(v7 - 8) + 104))(&v2[v5], v6, v7);
  v8 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_networkActivityState;
  v9 = enum case for TTRCloudKitNetworkActivityMonitor.Activity.none(_:);
  v10 = type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
  (*(*(v10 - 8) + 104))(&v2[v8], v9, v10);
  v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl] = 1;
  v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount] = 0;
  v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_upgradeHintCardShowingForAccount] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID] = 0;
  v11 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewModel;
  v12 = type metadata accessor for TTRITreeViewCellModel();
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  *&v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_outerStackView;
  *&v2[v13] = [objc_allocWithZone(NUIContainerStackView) init];
  v14 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView;
  *&v2[v14] = [objc_allocWithZone(NUIContainerStackView) init];
  v15 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView;
  *&v2[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton;
  *&v2[v16] = sub_100166DE0(0);
  *&v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner] = 0;
  v17 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView;
  type metadata accessor for TTRIAccountsListsCellAccessoryView();
  *&v2[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_collapseGestureRecognizers] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted] = 0;
  v18 = objc_allocWithZone(NSUserDefaults);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 initWithSuiteName:v19];

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 BOOLForKey:v21];
  }

  else
  {
    v22 = 0;
  }

  v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isStoreDemoMode] = v22;
  if (a2)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v85.receiver = v2;
  v85.super_class = type metadata accessor for TTRIAccountsListsSectionHeaderView(0);
  v24 = objc_msgSendSuper2(&v85, "initWithReuseIdentifier:", v23);

  v25 = v24;
  [v25 setUserInteractionEnabled:1];
  v26 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_outerStackView;
  v27 = *&v25[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_outerStackView];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10062D410;
  v29 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView;
  v30 = *&v25[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView];
  *(v28 + 32) = v30;
  v83 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView;
  v31 = *&v25[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView];
  *(v28 + 40) = v31;
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  v32 = v27;
  v33 = v30;
  v34 = v31;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 setArrangedSubviews:isa];

  [*&v25[v26] setUserInteractionEnabled:1];
  v36 = *&v25[v26];
  [v25 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  [v36 setFrame:{v38, v40, v42, v44}];
  [*&v25[v26] setAutoresizingMask:18];
  [*&v25[v26] setPreservesSuperviewLayoutMargins:0];
  [*&v25[v26] setLayoutMarginsRelativeArrangement:1];
  [*&v25[v26] setDebugBoundingBoxesEnabled:0];
  [*&v25[v26] setDirectionalLayoutMargins:{12.0, 12.0, 8.0, 16.0}];
  v45 = v25;
  v46 = [v45 contentView];
  [v46 addSubview:*&v25[v26]];

  v47 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v45 action:"toggleExpandState"];
  v48 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v45 action:"handleLongPressGesture:"];
  [v48 setMinimumPressDuration:0.2];
  v49 = v47;
  [v45 addGestureRecognizer:v49];
  v50 = v48;
  [v45 addGestureRecognizer:v50];
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10062D410;
  v81 = v50;
  v82 = v49;
  *(v51 + 32) = v49;
  *(v51 + 40) = v50;
  *&v45[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_collapseGestureRecognizers] = v51;

  v52 = *&v25[v29];
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_10062D410;
  v54 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView;
  v55 = *&v45[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView];
  *(v53 + 32) = v55;
  v56 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton;
  v57 = *&v45[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton];
  *(v53 + 40) = v57;
  v58 = v52;
  v59 = v55;
  v60 = v57;
  v61 = Array._bridgeToObjectiveC()().super.isa;

  [v58 setArrangedSubviews:v61];

  [*&v25[v29] setUserInteractionEnabled:1];
  [*&v25[v29] setDebugBoundingBoxesEnabled:0];
  v62 = *&v45[v54];
  v63 = objc_opt_self();
  v64 = v62;
  v65 = [v63 labelColor];
  [v64 setTextColor:v65];

  v66 = *&v45[v54];
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v67 = v66;
  v68 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  [v67 setFont:v68];

  LODWORD(v69) = 1144750080;
  [*&v45[v54] setLayoutSize:NUIContainerViewSizeUnbounded[0] withContentPriority:{NUIContainerViewSizeUnbounded[1], v69}];
  [*&v45[v54] setAdjustsFontForContentSizeCategory:1];
  v70 = NUIContainerViewSizeUseDefault[0];
  v71 = NUIContainerViewSizeUseDefault[1];
  LODWORD(v72) = 1148846080;
  [*&v25[v83] setLayoutSize:NUIContainerViewSizeUseDefault[0] withContentPriority:{v71, v72}];
  result = *(*&v25[v83] + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView);
  if (result)
  {
    [result setMinimumLayoutSize:{22.0, 32.0}];
    v74 = *&v25[v83];
    v75 = [v63 tintColor];
    sub_1004B32C8(v75);

    v76 = *&v45[v56];
    type metadata accessor for UILayoutPriority(0);
    sub_100337B00(&unk_10077A6B0, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
    v77 = v76;
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v78) = v84;
    [v77 setLayoutSize:v70 withContentPriority:{v71, v78}];

    [*&v45[v56] addTarget:v45 action:"migrateButtonAction:" forControlEvents:0x2000];
    [*&v45[v56] setHidden:1];
    sub_100058000(&unk_10076BD70, &unk_10062FF20);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_10062D400;
    *(v79 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v79 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    (*((swift_isaMask & *v45) + 0x250))(v80);
    [*&v25[v83] setIsAccessibilityElement:1];

    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100335620(void *a1)
{
  v3 = [a1 state];
  if ((v3 - 4) < 2)
  {
    v8 = v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted];
    v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted] = 0;
    if (v8 != 1)
    {
      return;
    }

    v5 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    __asm { FMOV            V0.2D, #1.0 }

    *(v9 + 24) = _Q0;
    v35 = sub_1003376EC;
    v36 = v9;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v7 = &unk_100720C90;
    goto LABEL_13;
  }

  if (v3 == 3)
  {
    [v1 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [a1 locationInView:v1];
    v37.x = v23;
    v37.y = v24;
    v38.origin.x = v16;
    v38.origin.y = v18;
    v38.size.width = v20;
    v38.size.height = v22;
    if (CGRectContainsPoint(v38, v37))
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v34 = type metadata accessor for TTRIAccountsListsSectionHeaderView(0);
        v35 = sub_100337B00(&qword_10077F948, type metadata accessor for TTRIAccountsListsSectionHeaderView, &unk_10063B7D8);
        aBlock = v1;
        v25 = v1;
        dispatch thunk of TTRITreeViewCellDelegate.treeCellViewToggleExpandState(_:)();
        swift_unknownObjectRelease();
        sub_100004758(&aBlock);
      }
    }

    v26 = v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted];
    v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted] = 0;
    if (v26 == 1)
    {
      v5 = objc_opt_self();
      v27 = swift_allocObject();
      *(v27 + 16) = v1;
      __asm { FMOV            V0.2D, #1.0 }

      *(v27 + 24) = _Q0;
      v35 = sub_100337B50;
      v36 = v27;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v7 = &unk_100720CE0;
      goto LABEL_13;
    }
  }

  else if (v3 == 1)
  {
    v4 = v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted];
    v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted] = 1;
    if ((v4 & 1) == 0)
    {
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      *(v6 + 24) = xmmword_10063B710;
      v35 = sub_100337B50;
      v36 = v6;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v7 = &unk_100720D30;
LABEL_13:
      v33 = sub_10001047C;
      v34 = v7;
      v29 = _Block_copy(&aBlock);
      v30 = v1;

      [v5 animateWithDuration:v29 animations:0.2];
      _Block_release(v29);
    }
  }
}

void sub_100335A24()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID);
  if (v1 && swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount);
    v3 = qword_100766F00;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_10076B2A0);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x49746E756F636361;
    *(inited + 40) = 0xE900000000000044;
    *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    *(inited + 48) = v4;
    v7 = v4;
    v8 = sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
    sub_10000FD44("User tapped migrate button. Presenting CK migration prompt to user. {accountID: %@}", 83, 2, v8);

    sub_100426100(v7, v2);

    swift_unknownObjectRelease();
  }
}

id sub_100335C30()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  [v4 setAxis:v3 & 1];

  return [v4 setAlignment:v5];
}

uint64_t sub_1003360C0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRITreeViewExpandedState();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_1007884E0, &unk_10062FC40);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for TTRITreeViewCellModel();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewModel;
  swift_beginAccess();
  sub_10000794C(v1 + v15, v10, &unk_1007884E0, &unk_10062FC40);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
    swift_beginAccess();
    (*(v5 + 16))(v7, v1 + v16, v4);
    v17 = TTRCloudKitMigrationManager.MigrationState.isNotStarted.getter();
    (*(v5 + 8))(v7, v4);
    if (v17)
    {
      v18 = static TTRAccesibility.AccountsList.Hint.HeadingUpgrade.getter();
    }

    else
    {
      if (*(v1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl) != 1 || (v21 = v24, TTRITreeViewCellModel.expandedState.getter(), v22 = (*(v25 + 88))(v21, v26), v22 == enum case for TTRITreeViewExpandedState.notExpandable(_:)))
      {
        (*(v12 + 8))(v14, v11);
        return 0;
      }

      if (v22 == enum case for TTRITreeViewExpandedState.collapsed(_:))
      {
        v18 = static TTRAccesibility.AccountsList.Hint.HeadingExpand.getter();
      }

      else
      {
        if (v22 != enum case for TTRITreeViewExpandedState.expanded(_:))
        {
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        v18 = static TTRAccesibility.AccountsList.Hint.HeadingCollapse.getter();
      }
    }

    v19 = v18;
    (*(v12 + 8))(v14, v11);
    return v19;
  }

  sub_1000079B4(v10, &unk_1007884E0, &unk_10062FC40);
  return 0;
}

void sub_1003364B4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a1;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for TTRIAccountsListsSectionHeaderView(0);
  objc_msgSendSuper2(&v9, *a4, v7);
}

uint64_t sub_100336548()
{
  v1 = v0[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl];
  if (v1 == 1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v4[3] = type metadata accessor for TTRIAccountsListsSectionHeaderView(0);
      v4[4] = sub_100337B00(&qword_10077F948, type metadata accessor for TTRIAccountsListsSectionHeaderView, &unk_10063B7D8);
      v4[0] = v0;
      v2 = v0;
      dispatch thunk of TTRITreeViewCellDelegate.treeCellViewToggleExpandState(_:)();
      swift_unknownObjectRelease();
      sub_100004758(v4);
    }
  }

  return v1;
}

uint64_t sub_1003366F4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v6], v2);
  LOBYTE(v6) = TTRCloudKitMigrationManager.MigrationState.isNotStarted.getter();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0 && v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount] != 1)
  {
    return 0;
  }

  v7 = static TTRLocalizableStrings.AccountsList.upgradeButtonTitle.getter();
  v9 = v8;
  sub_100003540(0, &qword_10076BCE0, UIAccessibilityCustomAction_ptr);
  v14[3] = type metadata accessor for TTRIAccountsListsSectionHeaderView(0);
  v14[0] = v1;
  v10 = v1;
  v11 = sub_1003338E4(v7, v9, v14, "migrateButtonAction:");
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  result = swift_allocObject();
  *(result + 16) = xmmword_10062D420;
  *(result + 32) = v11;
  return result;
}

char *sub_100336960()
{
  v1 = v0;
  v2 = type metadata accessor for TTRITreeViewExpandedState();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_1007884E0, &unk_10062FC40);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for TTRITreeViewCellModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  swift_beginAccess();
  (*(v12 + 16))(v14, v1 + v15, v11);
  LOBYTE(v15) = TTRCloudKitMigrationManager.MigrationState.isNotStarted.getter();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v36 = v2;
    v16 = static TTRAccesibility.AccountsList.Attributes.Upgradable.getter();
    v18 = v17;
    v19 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_100546970((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v22 = &v19[16 * v21];
    *(v22 + 4) = v16;
    *(v22 + 5) = v18;
    v2 = v36;
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  if (*(v1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl) == 1)
  {
    v23 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewModel;
    swift_beginAccess();
    sub_10000794C(v1 + v23, v6, &unk_1007884E0, &unk_10062FC40);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000079B4(v6, &unk_1007884E0, &unk_10062FC40);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v24 = v37;
      TTRITreeViewCellModel.expandedState.getter();
      v25 = v38;
      v26 = (*(v38 + 88))(v24, v2);
      if (v26 == enum case for TTRITreeViewExpandedState.collapsed(_:))
      {
        v27 = static TTRAccesibility.AccountsList.Attributes.Collapsed.getter();
      }

      else
      {
        if (v26 != enum case for TTRITreeViewExpandedState.expanded(_:))
        {
          (*(v8 + 8))(v10, v7);
          (*(v25 + 8))(v24, v2);
          return v19;
        }

        v27 = static TTRAccesibility.AccountsList.Attributes.Expanded.getter();
      }

      v29 = v27;
      v30 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100546970(0, *(v19 + 2) + 1, 1, v19);
      }

      v32 = *(v19 + 2);
      v31 = *(v19 + 3);
      if (v32 >= v31 >> 1)
      {
        v19 = sub_100546970((v31 > 1), v32 + 1, 1, v19);
      }

      (*(v8 + 8))(v10, v7);
      *(v19 + 2) = v32 + 1;
      v33 = &v19[16 * v32];
      *(v33 + 4) = v29;
      *(v33 + 5) = v30;
    }
  }

  return v19;
}

void sub_100336E24()
{
  v1 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == enum case for TTRCloudKitMigrationManager.MigrationState.notStarted(_:))
  {
LABEL_2:
    v7 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton);
    goto LABEL_5;
  }

  if (v6 != enum case for TTRCloudKitMigrationManager.MigrationState.notAvailable(_:))
  {
    if (v6 == enum case for TTRCloudKitMigrationManager.MigrationState.inProgress(_:))
    {
      v7 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton);
      [v7 setHidden:1];
      goto LABEL_7;
    }

    if (v6 == enum case for TTRCloudKitMigrationManager.MigrationState.error(_:))
    {
      goto LABEL_2;
    }

    if (v6 != enum case for TTRCloudKitMigrationManager.MigrationState.finished(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }
  }

  v7 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton);
  if (*(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount) != 1)
  {
    v8 = 1;
    goto LABEL_6;
  }

LABEL_5:
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_upgradeHintCardShowingForAccount);
LABEL_6:
  [v7 setHidden:v8];
LABEL_7:
  if (([v7 isHidden] & 1) == 0 && *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isStoreDemoMode) == 1)
  {
    [v7 setHidden:1];
  }

  sub_100333E7C();
}

id sub_10033704C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAccountsListsSectionHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TTRIAccountsListsSectionHeaderView(uint64_t a1)
{
  result = qword_10077F938;
  if (!qword_10077F938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100337258(uint64_t a1)
{
  type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
    if (v2 <= 0x3F)
    {
      sub_1003373BC(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1003373BC(uint64_t a1)
{
  if (!qword_100788230)
  {
    type metadata accessor for TTRITreeViewCellModel();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100788230);
    }
  }
}

uint64_t sub_100337414@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewModel;
  swift_beginAccess();
  return sub_10000794C(v3 + v4, a1, &unk_1007884E0, &unk_10062FC40);
}

uint64_t sub_1003374D4(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100337544(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  v6 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_10017D654;
}

void sub_10033760C(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;
  v6 = [a2 preferredContentSizeCategory];
  LODWORD(v5) = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;

  if (v4 != v5)
  {
    (*((swift_isaMask & *a1) + 0x250))();
  }
}

id sub_1003376F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  [*(v1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView) setAlpha:*(v0 + 24)];
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView);

  return [v3 setAlpha:v2];
}

uint64_t sub_100337758(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_1007884E0, &unk_10062FC40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1003377C8()
{
  v1 = (v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_identifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  v3 = enum case for TTRCloudKitMigrationManager.MigrationState.notAvailable(_:);
  v4 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  (*(*(v4 - 8) + 104))(v0 + v2, v3, v4);
  v5 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_networkActivityState;
  v6 = enum case for TTRCloudKitNetworkActivityMonitor.Activity.none(_:);
  v7 = type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl) = 1;
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_upgradeHintCardShowingForAccount) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID) = 0;
  v8 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewModel;
  v9 = type metadata accessor for TTRITreeViewCellModel();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_outerStackView;
  *(v0 + v10) = [objc_allocWithZone(NUIContainerStackView) init];
  v11 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView;
  *(v0 + v11) = [objc_allocWithZone(NUIContainerStackView) init];
  v12 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton;
  *(v0 + v13) = sub_100166DE0(0);
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner) = 0;
  v14 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView;
  type metadata accessor for TTRIAccountsListsCellAccessoryView();
  *(v0 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_collapseGestureRecognizers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted) = 0;
  v15 = objc_allocWithZone(NSUserDefaults);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithSuiteName:v16];

  if (v17)
  {
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 BOOLForKey:v18];
  }

  else
  {
    v19 = 0;
  }

  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isStoreDemoMode) = v19;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100337B00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100337B6C(uint64_t *a1, void **a2, uint64_t a3)
{
  v93 = a3;
  v96 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v102 = *(v4 - 8);
  v103 = v4;
  __chkstk_darwin(v4);
  v84 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v95 = &v83 - v7;
  __chkstk_darwin(v8);
  v83 = &v83 - v9;
  __chkstk_darwin(v10);
  v97 = &v83 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v92 = (&v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v90 = &v83 - v15;
  v89 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v89);
  v101 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v91 = *(v94 - 8);
  __chkstk_darwin(v94);
  v88 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRListType.SortingCapability();
  v99 = *(v18 - 8);
  v100 = v18;
  __chkstk_darwin(v18);
  v87 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v98 = &v83 - v21;
  v86 = type metadata accessor for TTRRemindersListDefaultListType();
  v22 = *(v86 - 8);
  __chkstk_darwin(v86);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v25);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v28 - 8);
  v30 = (&v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = a2;
  v31 = *a2;
  type metadata accessor for TTRShowCompletedByDateBucketsDataModelSource();
  swift_allocObject();
  v32 = v31;
  v33 = TTRShowCompletedByDateBucketsDataModelSource.init(store:countCompleted:)();
  sub_10010BD5C(a2, v30, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v110[0] = _swiftEmptyArrayStorage;
  sub_100338C14(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes, &protocol conformance descriptor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218, &unk_1006302E0);
  sub_10010BA44();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v22 + 104))(v24, enum case for TTRRemindersListDefaultListType.cloudKitOnly(_:), v86);
  v34 = sub_10007786C(v30, v27, v24, v110);
  v91[13](v88, enum case for REMRemindersListDataView.SortingStyle.default(_:), v94, v34);
  v35 = v98;
  TTRListType.SortingCapability.init(canChangeSortingStyle:canSortByManual:initialSortingStyle:)();
  v36 = v110[0];
  v37 = v87;
  (*(v99 + 16))(v87, v35, v100);
  type metadata accessor for TTRShowCompletedViewModelSource(0);
  v38 = swift_allocObject();

  v39 = v36;
  v94 = v33;
  v91 = v39;
  v40 = sub_1003387DC(v33, v39, v37, v38);
  sub_10010BD5C(v85, v30, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v110, v107);
  v41 = sub_100338C14(&qword_10077FA00, type metadata accessor for TTRShowCompletedViewModelSource, &unk_100646FD0);
  v42 = v101;
  sub_10010BD5C(v30, v101, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v43 = v89;
  sub_10010BCAC(v107, v42 + *(v89 + 28));
  v44 = (v42 + *(v43 + 32));
  *v44 = v40;
  v44[1] = v41;
  v45 = v107[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v109, v106, &qword_100769608, &unk_1006302F0);
  v47 = *(v106[5] + 8);
  *(v46 + 32) = v106[4];
  *(v46 + 40) = v47;
  sub_10000794C(&v108, v104, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v48 = v45;
  swift_unknownObjectRelease();
  *(v46 + 48) = v105;
  sub_100004758(v104);
  sub_100004758(v106);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v49 = swift_allocObject();
  v50 = sub_1003A8140(v48, v40, v46, v49);

  sub_10010BD08(v107);
  sub_10010BE0C(v30, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v51 = *(v43 + 36);
  v88 = v50;
  *(v42 + v51) = v50;
  v52 = v90;
  sub_100078BBC(v90);
  v89 = type metadata accessor for TTRIShowCompletedPresenter(0);
  v53 = swift_allocObject();
  v54 = v92;
  sub_10010BD5C(v52, v92, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v55 = v93;
  swift_unknownObjectRetain();
  v56 = sub_1003A56E4(v54, v55, v53);
  sub_10010BE0C(v52, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v57 = *(v56 + 144);
  ObjectType = swift_getObjectType();
  v59 = *(v57 + 112);

  if (v59(ObjectType, v57))
  {
    swift_getObjectType();
    v60 = v83;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v61 = v97;
    (*(v102 + 32))(v97, v60, v103);
  }

  else
  {
    v61 = v97;
    (*(v102 + 104))(v97, enum case for TTRRemindersListLayout.list(_:), v103);
  }

  v62 = sub_1003A4A1C(v61, v56);
  v92 = v63;
  v65 = v64;
  v67 = v66;
  (*(v102 + 8))(v61, v103);
  v93 = swift_getObjectType();
  *(v56 + 24) = *(v67 + 8);
  v97 = v65;
  swift_unknownObjectWeakAssign();
  v68 = *(v56 + 144);
  v69 = swift_getObjectType();
  v70 = *(v68 + 112);

  if (v70(v69, v68))
  {
    swift_getObjectType();
    v71 = v84;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v72 = v95;
    (*(v102 + 32))(v95, v71, v103);
  }

  else
  {

    v72 = v95;
    (*(v102 + 104))(v95, enum case for TTRRemindersListLayout.list(_:), v103);
  }

  v73 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v74 = v62;
  v75 = sub_1003A8174(v56, v74, v92, v72, 0, 1, 0, v73);

  v76 = *(v67 + 32);
  v77 = v75;
  v76(v75, &off_100723D78, v93, v67);
  sub_100338C14(&qword_10077FA08, type metadata accessor for TTRIShowCompletedPresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_100338C14(&qword_10077FA10, type metadata accessor for TTRShowCompletedViewModelSource, &unk_10062DE18);

  v78 = v77;
  dispatch thunk of TTRShowCompletedByDateBucketsDataModelSource.delegate.setter();

  sub_10056FEB0(v79, &off_10071A9B0);

  *(v88 + 3) = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v111, v107, &qword_100769600, &qword_10062E0A0);
  v80 = v107[4];
  swift_unknownObjectRelease();
  *(v80 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v107);
  sub_10000794C(&v112, v107, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_100338C14(&qword_10077FA18, type metadata accessor for TTRIShowCompletedPresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v107);
  v81 = v96;
  v96[3] = v89;
  v81[4] = &off_100720D58;

  swift_unknownObjectRelease();
  *v81 = v56;
  (*(v99 + 8))(v98, v100);
  sub_10010BE0C(v101, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v110);
  return v78;
}

uint64_t sub_1003387DC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v35 = a1;
  v36 = a2;
  v6 = *a4;
  v38 = a3;
  v39 = v6;
  v40 = type metadata accessor for REMAnalyticsEvent();
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for TTRListType.SortingCapability();
  v37 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9Reminders31TTRShowCompletedViewModelSource_cachedEmptyListMessaging;
  v18 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v19 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  (*(*(v19 - 8) + 104))(&a4[v17], v18, v19);
  v20 = &a4[OBJC_IVAR____TtC9Reminders31TTRShowCompletedViewModelSource_completedRemindersCount];
  *v20 = 0;
  v20[8] = 1;
  (*(v14 + 16))(v16, a3, v13);
  v21 = sub_1003A649C(v35, v36, v16, a4);

  sub_10006ADA4(v12);
  v22 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
  sub_10056F540(v12);
  sub_10010BE6C(v12);
  type metadata accessor for TTRUserDefaults();
  v23 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v24 = sub_100058000(&qword_100770980, &unk_1006339B0);
  v25 = &v9[*(v24 + 48)];
  v26 = &v9[*(v24 + 80)];
  v27 = enum case for REMRemindersOpenUserOperation.SmartListType.completed(_:);
  v28 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v28 - 8) + 104))(v9, v27, v28);
  v29 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v30 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v30 - 8) + 104))(v9, v29, v30);
  *v25 = TTRUserDefaults.activitySessionId.getter();
  v25[1] = v31;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v26 = _typeName(_:qualified:)();
  v26[1] = v32;
  v33 = v40;
  (*(v7 + 104))(v9, enum case for REMAnalyticsEvent.openListUserOperation(_:), v40);
  REMAnalyticsManager.post(event:)();

  (*(v14 + 8))(v38, v37);
  (*(v7 + 8))(v9, v33);
  return v21;
}

uint64_t sub_100338C14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100338C5C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077FA20);
  v1 = sub_100003E30(v0, qword_10077FA20);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100338DB8()
{
  ObjectType = swift_getObjectType();
  v20 = type metadata accessor for TTRTemplateSharingViewModel.Purpose();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRTemplateSharingViewModel();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v0;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewDidLoad", v7);
  result = [v0 view];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() systemBackgroundColor];
    [v11 setBackgroundColor:v12];

    v13 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v0 action:"didTapClose:"];
    v14 = [v0 navigationItem];
    [v14 setRightBarButtonItem:v13];

    v15 = [v0 navigationItem];
    [v15 setLargeTitleDisplayMode:2];

    [v0 ttr_setNeedsUpdateContentUnavailableConfiguration];
    v16 = *&v0[OBJC_IVAR____TtC9Reminders39TTRITemplateSharingOffineViewController_presenter];
    v17 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_viewModel;
    swift_beginAccess();
    (*(v6 + 16))(v9, v16 + v17, v5);
    v18 = [v0 navigationItem];
    TTRTemplateSharingViewModel.purpose.getter();
    TTRTemplateSharingViewModel.Purpose.viewTitle.getter();
    (*(v2 + 8))(v4, v20);
    v19 = String._bridgeToObjectiveC()();

    [v18 setTitle:v19];

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10033919C()
{
  v1 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders39TTRITemplateSharingOffineViewController_presenter);
  if (qword_100766EF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_10076B0D8);
  v6 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Template Sharing Close Offline Message", 38, 2, v6);

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v4;
  sub_10009E31C(0, 0, v3, &unk_10063B918, v9);

  return result;
}

uint64_t sub_1003394EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_1000A2D98(a1, v4, v5, v6);
}

void sub_1003395A0()
{
  v1 = v0;
  v14 = [objc_opt_self() emptyProminentConfiguration];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() _systemImageNamed:v2];

  [v14 setImage:v3];
  static TTRLocalizableStrings.Templates.publicTemplateSharingOfflineTitle.getter();
  v4 = String._bridgeToObjectiveC()();

  [v14 setText:v4];

  v5 = [v14 textProperties];
  v6 = [v14 textProperties];
  v7 = [v6 font];

  isa = UIFont.withRoundedDesign()().super.isa;
  [v5 setFont:isa];

  static TTRLocalizableStrings.Templates.publicTemplateSharingOfflineMessage.getter();
  v9 = String._bridgeToObjectiveC()();

  [v14 setSecondaryText:v9];

  v10 = [v14 secondaryTextProperties];
  v11 = [v14 secondaryTextProperties];
  v12 = [v11 font];

  v13 = UIFont.withRoundedDesign()().super.isa;
  [v10 setFont:v13];

  [v1 ttr_setContentUnavailableConfiguration:v14];
}

id sub_1003398CC(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders32TTRIRemindersBoardBackgroundView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  if (v4)
  {
    v5 = objc_allocWithZone(UITapGestureRecognizer);
    v6 = v4;
    v7 = [v5 initWithTarget:v6 action:"tapGestureAction:"];
    [v6 addGestureRecognizer:v7];

    a1 = v7;
  }

  return v4;
}

void sub_1003399D4(uint64_t a1)
{
  sub_1001AAABC(a1, v3);
  if (v4)
  {
    sub_100339B5C();
    if (swift_dynamicCast())
    {
      if (UIAccessibilityIsVoiceOverRunning() || ([v2 locationInView:v1], !swift_unknownObjectWeakLoadStrong()))
      {
      }

      else
      {
        sub_100482250(v1);

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_10000B070(v3);
  }
}

unint64_t sub_100339B5C()
{
  result = qword_10077FA98;
  if (!qword_10077FA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10077FA98);
  }

  return result;
}

uint64_t type metadata accessor for TTRIRemindersListPublicTemplatePreviewStatusCell(uint64_t a1)
{
  result = qword_10077FAA8;
  if (!qword_10077FAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100339C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(UILabel) init];
  static TTRLocalizableStrings.Templates.templatePreview.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setText:v9];

  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v10 = static UIFont.roundedBodyFont.getter();
  [v8 setFont:v10];

  v11 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor:v11];

  [v8 setAdjustsFontForContentSizeCategory:1];
  [v8 setNumberOfLines:0];
  v12 = v8;
  LODWORD(v13) = 1132068864;
  [v12 setContentCompressionResistancePriority:0 forAxis:v13];
  *&v4[qword_10077FAA0] = v12;
  v14 = v12;
  if (a3)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v23.receiver = v4;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, "initWithStyle:reuseIdentifier:", a1, v15);

  v17 = v16;
  v18 = TTRITableViewContainerCell.containerView.getter();
  [v18 setHorizontalAlignment:1];
  [v18 setVerticalAlignment:0];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10062D420;
  *(v19 + 32) = v12;
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  v20 = v18;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 setArrangedSubviews:isa];

  [v17 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();

  return v17;
}

id sub_100339F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100339C44(a3, a4, v6);
}

Class sub_10033A004(uint64_t a1)
{
  sub_100058000(&unk_100777760, &unk_1006372A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10062D400;
  v3 = *(a1 + qword_10077FAA0);
  *(v2 + 56) = sub_100003540(0, &qword_100776820, UILabel_ptr);
  *(v2 + 32) = v3;
  v4 = v3;
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t sub_10033A0E4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077FB00);
  v1 = sub_100003E30(v0, qword_10077FB00);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10033A2DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&qword_10077FBE0, &qword_10063A1C0);
  v74 = *(v3 - 8);
  v75 = v3;
  __chkstk_darwin(v3);
  v70 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v4;
  __chkstk_darwin(v5);
  v79 = v67 - v6;
  v78 = sub_100058000(&qword_10077FBE8, &qword_10063BA88);
  v73 = *(v78 - 8);
  __chkstk_darwin(v78);
  v68 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67[1] = v7;
  __chkstk_darwin(v8);
  v77 = v67 - v9;
  v76 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v10 = *(v76 - 1);
  __chkstk_darwin(v76);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UICollectionLayoutListConfiguration();
  v71 = *(v17 - 8);
  v72 = v17;
  __chkstk_darwin(v17);
  v80 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRTemplatesListStyle();
  v20 = *(v19 - 8);
  *&v21 = __chkstk_darwin(v19).n128_u64[0];
  v23 = v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82.receiver = v1;
  v82.super_class = ObjectType;
  objc_msgSendSuper2(&v82, "viewDidLoad", v21);
  v24 = [v1 navigationItem];
  (*(v20 + 16))(v23, &v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_style], v19);
  v25 = (*(v20 + 88))(v23, v19);
  if (v25 == enum case for TTRTemplatesListStyle.listCreation(_:))
  {
    v26._countAndFlagsBits = 0x7473694C2077654ELL;
    v27._object = 0x8000000100682BE0;
    v28._object = 0x8000000100682C00;
    v27._countAndFlagsBits = 0xD00000000000001ALL;
    v26._object = 0xE800000000000000;
    v28._countAndFlagsBits = 0xD00000000000001ALL;
    TTRLocalizedString(_:value:comment:)(v27, v26, v28);
  }

  else
  {
    if (v25 != enum case for TTRTemplatesListStyle.browser(_:))
    {
      goto LABEL_10;
    }

    static TTRLocalizableStrings.Templates.templatesListTitle.getter();
  }

  v29 = String._bridgeToObjectiveC()();

  [v24 setTitle:v29];

  (*(v14 + 104))(v16, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v13);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v10 + 104))(v12, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v76);
  UICollectionLayoutListConfiguration.footerMode.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter();
  sub_100003540(0, &qword_10077BFE0, UICollectionViewCompositionalLayout_ptr);
  v30 = static UICollectionViewCompositionalLayout.list(using:)();
  v31 = [v1 view];
  if (v31)
  {
    v32 = v31;
    [v31 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v41 = objc_allocWithZone(UICollectionView);
    v76 = v30;
    v42 = [v41 initWithFrame:v30 collectionViewLayout:{v34, v36, v38, v40}];
    [v42 setAutoresizingMask:18];
    v43 = [v1 view];
    if (v43)
    {
      v44 = v43;
      [v43 addSubview:v42];

      [v42 setDelegate:v1];
      [v42 setAllowsSelection:1];
      swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for TTRITemplatesListCell(0);
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v45 = v77;
      UICollectionView.CellRegistration.init(handler:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003540(0, &qword_10077FBF0, UICollectionViewListCell_ptr);
      v46 = v79;
      UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
      v47 = v73;
      v48 = v68;
      v49 = v78;
      (*(v73 + 16))(v68, v45, v78);
      v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v51 = swift_allocObject();
      (*(v47 + 32))(v51 + v50, v48, v49);
      v52 = objc_allocWithZone(sub_100058000(&qword_10077FBF8, &qword_10063BA90));
      v53 = v42;
      v54 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
      v55 = v74;
      v56 = v75;
      v57 = v70;
      (*(v74 + 16))(v70, v46, v75);
      v58 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v59 = swift_allocObject();
      (*(v55 + 32))(v59 + v58, v57, v56);
      dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
      v60 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
      sub_100058000(&qword_10077FC00, &qword_10063BA98);
      UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.setter();
      v60(v81, 0);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v61 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
      UICollectionViewDiffableDataSource.ReorderingHandlers.didReorder.setter();
      v61(v81, 0);
      v62 = *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView];
      *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView] = v53;
      v63 = v53;

      v64 = *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource];
      *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource] = v54;
      v65 = v54;

      sub_10033D258(0);
      sub_10033D6A0();

      (*(v55 + 8))(v79, v56);
      (*(v47 + 8))(v77, v78);
      return (*(v71 + 8))(v80, v72);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_10033AD5C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  static TTRLocalizableStrings.Templates.deleteTemplate.getter();
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v4 + 16))(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  (*(v4 + 32))(v9 + v8, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  v10 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100340D10;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100422764;
  aBlock[3] = &unk_100720F68;
  v11 = _Block_copy(aBlock);
  v12 = [objc_opt_self() contextualActionWithStyle:1 title:v10 handler:v11];

  _Block_release(v11);

  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() _systemImageNamed:v13];

    [v12 setImage:v14];
  }

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D420;
  *(v15 + 32) = v12;
  sub_100003540(0, &qword_10076BC40, UIContextualAction_ptr);
  v16 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = [objc_opt_self() configurationWithActions:isa];

  return v18;
}

uint64_t sub_10033B0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v8 = type metadata accessor for IndexPath();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v35 = &v31 - v11;
  v36 = sub_100058000(&qword_10077FC30, &qword_10063BAC0);
  v13 = *(v36 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v36);
  v32 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v40 = sub_1001A0210;
  v41 = v18;

  sub_100058000(&qword_10077FC38, &qword_10063BAC8);
  v34 = v17;
  TTRUnsafeSendable.init(_:)();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v23 = v37;
  v22 = v38;
  (*(v37 + 16))(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v38);
  v24 = v36;
  (*(v13 + 16))(&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v36);
  type metadata accessor for MainActor();

  v25 = static MainActor.shared.getter();
  v26 = v23;
  v27 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v28 = (v9 + *(v13 + 80) + v27) & ~*(v13 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = v25;
  *(v29 + 3) = &protocol witness table for MainActor;
  *(v29 + 4) = v20;
  (*(v26 + 32))(&v29[v27], v33, v22);
  (*(v13 + 32))(&v29[v28], v32, v24);

  sub_10009E31C(0, 0, v35, &unk_10063BAD8, v29);

  return (*(v13 + 8))(v34, v24);
}

uint64_t sub_10033B49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  v6[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[16] = v8;
  v6[17] = v7;

  return _swift_task_switch(sub_10033B570, v8, v7);
}

void sub_10033B570()
{
  v15 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource);
    v3 = Strong;
    v4 = v2;

    if (!v2)
    {
      __break(1u);
      return;
    }

    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v5 = v0[10];
    v0[18] = v5;
    if (v5)
    {
      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v0[14];
        v0[19] = *(v6 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter);
        v8 = v6;
        swift_unknownObjectRetain();

        v9 = type metadata accessor for TTRIPopoverAnchor();
        (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
        v10 = swift_task_alloc();
        v0[20] = v10;
        *v10 = v0;
        v10[1] = sub_10033B798;
        v11 = v0[14];

        sub_1002852E8(v5, v11);
        return;
      }
    }
  }

  sub_100058000(&qword_10077FC30, &qword_10063BAC0);
  TTRUnsafeSendable.wrapped.getter();
  v12 = v0[8];
  v14 = 0;
  v12(&v14);

  v13 = v0[1];

  v13();
}

uint64_t sub_10033B798(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 168) = a1;

  swift_unknownObjectRelease();
  sub_1000079B4(v3, &unk_10076FCD0, &unk_1006304D0);
  v4 = *(v2 + 136);
  v5 = *(v2 + 128);

  return _swift_task_switch(sub_10033B910, v5, v4);
}

uint64_t sub_10033B910()
{
  v7 = v0;
  v1 = *(v0 + 144);

  v2 = *(v0 + 168);
  sub_100058000(&qword_10077FC30, &qword_10063BAC0);
  TTRUnsafeSendable.wrapped.getter();
  v3 = *(v0 + 64);
  v6 = v2;
  v3(&v6);

  v4 = *(v0 + 8);

  return v4();
}

char *sub_10033B9C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *&result[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource];
    if (v4)
    {
      v5 = v4;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if (v7)
      {
        swift_unknownObjectRetain();
        v6 = sub_100287C6C(v7);

        swift_unknownObjectRelease();
        return v6;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10033BA98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = a1;
  v5 = type metadata accessor for UICellAccessory.DeleteOptions();
  v82 = *(v5 - 8);
  v83 = v5;
  __chkstk_darwin(v5);
  v81 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10077FC20, &unk_100638BA0);
  __chkstk_darwin(v7 - 8);
  v79 = &v66 - v8;
  v75 = type metadata accessor for UICellAccessory.ReorderOptions();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for UICellAccessory.DisplayedState();
  v85 = *(v88 - 8);
  __chkstk_darwin(v88);
  v76 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UICellAccessory.Placement();
  v11 = *(v71 - 8);
  __chkstk_darwin(v71);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for UICellAccessory();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v87 = &v66 - v16;
  __chkstk_darwin(v17);
  v86 = &v66 - v18;
  v19 = type metadata accessor for TTRTemplatesListViewModel();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100058000(&unk_10077FBB0, &unk_1006374D0);
  v68 = *(v23 - 8);
  v24 = *(v68 + 64);
  __chkstk_darwin(v23 - 8);
  v69 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v66 - v26;
  swift_beginAccess();
  v72 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = v27;
    v31 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter);
    swift_unknownObjectRetain();

    v32 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
    swift_beginAccess();
    (*(v20 + 16))(v22, v31 + v32, v19);
    v27 = v30;
    swift_unknownObjectRelease();
    TTRTemplatesListViewModel.template(with:)();
    (*(v20 + 8))(v22, v19);
  }

  else
  {
    v33 = type metadata accessor for TTRTemplatesListViewModel.Template();
    (*(*(v33 - 8) + 56))(v27, 1, 1, v33);
  }

  sub_10048EE70(v27);
  v34 = &v13[*(sub_100058000(&qword_100779498, &unk_100638BB0) + 48)];
  v35 = v27;
  v70 = v27;
  v67 = *(v85 + 104);
  v84 = v85 + 104;
  v67(v13, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v88);
  *v34 = variable initialization expression of TTRSmartListFilterEditorInteractor.listFetchOperationManager;
  v34[1] = 0;
  v36 = v71;
  (*(v11 + 104))(v13, enum case for UICellAccessory.Placement.trailing(_:), v71);
  v37 = swift_allocObject();
  swift_beginAccess();
  v38 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v39 = v69;
  sub_10000794C(v35, v69, &unk_10077FBB0, &unk_1006374D0);
  v40 = (*(v68 + 80) + 24) & ~*(v68 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  sub_100340B64(v39, v41 + v40);

  sub_10048F1B0(v13, sub_100340BD4, v41, v86);

  (*(v11 + 8))(v13, v36);

  v42 = enum case for UICellAccessory.DisplayedState.whenEditing(_:);
  v43 = v76;
  v44 = v88;
  v45 = v67;
  v67(v76, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v88);
  v46 = type metadata accessor for UICellAccessory.LayoutDimension();
  v47 = *(*(v46 - 8) + 56);
  v48 = v79;
  v47(v79, 1, 1, v46);
  v49 = v73;
  UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
  static UICellAccessory.reorder(displayed:options:)();
  (*(v74 + 8))(v49, v75);
  v50 = *(v85 + 8);
  v50(v43, v44);
  v45(v43, v42, v44);
  v47(v48, 1, 1, v46);
  v51 = v81;
  UICellAccessory.DeleteOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
  v52 = v77;
  static UICellAccessory.delete(displayed:options:actionHandler:)();
  (*(v82 + 8))(v51, v83);
  v50(v43, v44);
  sub_100058000(&unk_10077C050, &unk_10063A220);
  v53 = v78;
  v54 = *(v78 + 72);
  v55 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v56 = 2 * v54;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_10062F800;
  v58 = v57 + v55;
  v59 = *(v53 + 16);
  v60 = v86;
  v61 = v80;
  v59(v57 + v55, v86, v80);
  v62 = v58 + v54;
  v63 = v87;
  v59(v62, v87, v61);
  v59(v58 + v56, v52, v61);
  UICollectionViewListCell.accessories.setter();
  v64 = *(v53 + 8);
  v64(v52, v61);
  v64(v63, v61);
  v64(v60, v61);
  return sub_1000079B4(v70, &unk_10077FBB0, &unk_1006374D0);
}

Class sub_10033C47C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&unk_10077FBB0, &unk_1006374D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_10000794C(a2, v5, &unk_10077FBB0, &unk_1006374D0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_1000079B4(v5, &unk_10077FBB0, &unk_1006374D0);
      return 0;
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v12 = sub_10033C658(v9);

      (*(v7 + 8))(v9, v6);
      return v12;
    }
  }

  return result;
}

Class sub_10033C658(uint64_t a1)
{
  v50 = a1;
  v2 = type metadata accessor for TTRTemplatePublicLinkData();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = v6;
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  v47 = static TTRLocalizableStrings.Templates.editTemplate.getter();
  v43 = v8;
  v9 = String._bridgeToObjectiveC()();
  v46 = objc_opt_self();
  v41 = [v46 _systemImageNamed:v9];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = *(v5 + 16);
  v39 = v4;
  v51(v7, a1, v4);
  v42 = v5 + 16;
  v11 = v5;
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = *(v11 + 32);
  v14(v13 + v12, v7, v4);
  v47 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v15 = v44;
  v16 = v50;
  TTRTemplatesListViewModel.Template.publicLinkData.getter();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v39;
  v51(v7, v16, v39);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v14(v19 + v12, v7, v18);

  v43 = sub_10014E6B8(v15, 1, sub_100340838, v19);

  (*(v48 + 8))(v15, v49);

  v20 = static TTRLocalizableStrings.Templates.deleteTemplate.getter();
  v48 = v21;
  v49 = v20;
  v22 = String._bridgeToObjectiveC()();
  v23 = [v46 _systemImageNamed:v22];

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51(v7, v50, v18);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v14(v25 + v12, v7, v18);
  v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  sub_100058000(&qword_100775868, &qword_10063BA50);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10062F800;
  v28 = v47;
  v29 = v43;
  *(v27 + 32) = v47;
  *(v27 + 40) = v29;
  *(v27 + 48) = v26;
  v52 = v27;
  v30 = v29;
  v31 = v26;
  v32 = v28;
  sub_100058000(&unk_10077FBC0, &qword_100635F00);
  sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
  sub_10034094C();
  v33 = Sequence.removingNils<A>()();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v53.value.super.isa = 0;
  v53.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v34, 0, v53, 0, 0xFFFFFFFFFFFFFFFFLL, v33, v37).super.super.isa;

  return isa;
}

void sub_10033CC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10033CC88();
  }
}

uint64_t sub_10033CC88()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10077FBD8, &unk_10063BA78);
  __chkstk_darwin(v2);
  v4 = &v18[-1] - v3;
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionViewListCell.defaultContentConfiguration()();
  v9 = *&v0[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource];
  if (v9)
  {
    v10 = v9;
    IndexPath.section.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

    v11 = type metadata accessor for TTRTemplatesListViewModel.SectionIdentifier();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v4, 1, v11) == 1)
    {
LABEL_7:
      v18[3] = v5;
      v18[4] = &protocol witness table for UIListContentConfiguration;
      v15 = sub_1000317B8(v18);
      (*(v6 + 16))(v15, v8, v5);
      UICollectionViewCell.contentConfiguration.setter();
      return (*(v6 + 8))(v8, v5);
    }

    if ((*(v12 + 88))(v4, v11) == enum case for TTRTemplatesListViewModel.SectionIdentifier.main(_:))
    {
      if (([v1 isEditing] & 1) == 0)
      {
        v13._countAndFlagsBits = 0xD000000000000023;
        v13._object = 0x8000000100682B80;
        v14._object = 0x8000000100682BB0;
        v14._countAndFlagsBits = 0xD000000000000020;
        TTRLocalizedString(_:comment:)(v13, v14);
      }

      UIListContentConfiguration.text.setter();
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10033CF30(__n128 a1, uint64_t a2, uint64_t a3, id *a4, uint64_t a5)
{
  v5 = *a4;
  type metadata accessor for TTRITemplatesListCell(0);
  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v6 = v5;
  v7 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  return v7;
}

void sub_10033CFD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&qword_10077FC08, &qword_10063BAA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = sub_100058000(&qword_10077FC10, &qword_10063BAA8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_100058000(&qword_10077FC18, &unk_10063BAB0);
    v15 = NSDiffableDataSourceTransaction.sectionTransactions.getter();
    if (*(v15 + 16))
    {
      (*(v7 + 16))(v9, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      (*(v7 + 32))(v12, v9, v6);
      NSDiffableDataSourceSectionTransaction.finalSnapshot.getter();
      v16 = NSDiffableDataSourceSectionSnapshot.items.getter();
      (*(v3 + 8))(v5, v2);
      sub_100287858(v16);

      (*(v7 + 8))(v12, v6);
    }

    else
    {
    }
  }
}

uint64_t sub_10033D258(int a1)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_100058000(&qword_10077FBA0, &qword_10063BA40);
  __chkstk_darwin(v3 - 8);
  v35 = &v29[-v4];
  v5 = sub_100058000(&qword_10077FBA8, &qword_10063BA48);
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v37 = &v29[-v6];
  v7 = type metadata accessor for TTRTemplatesListViewModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v29[-v12];
  v14 = *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter];
  v15 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
  swift_beginAccess();
  v16 = (v14 + v15);
  v17 = *(v8 + 16);
  v17(v13, v16, v7);
  v18 = OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_lastConsumedViewModel;
  swift_beginAccess();
  v19 = *(v8 + 48);
  v20 = v19(&v2[v18], 1, v7);
  v36 = v8;
  v31 = v17;
  if (v20)
  {
    v21 = v13;
    TTRTemplatesListViewModel.shouldShowContentUnavailableMessage.getter();
  }

  else
  {
    v17(v10, &v2[v18], v7);
    LOBYTE(v30) = TTRTemplatesListViewModel.shouldShowContentUnavailableMessage.getter() & 1;
    v30 = v30;
    (*(v8 + 8))(v10, v7);
    v21 = v13;
    if ((TTRTemplatesListViewModel.shouldShowContentUnavailableMessage.getter() & 1) == v30)
    {
      goto LABEL_5;
    }
  }

  [v2 ttr_setNeedsUpdateContentUnavailableConfiguration];
LABEL_5:
  v22 = v19(&v2[v18], 1, v7);
  v23 = v37;
  if (!v22)
  {
    v31(v10, &v2[v18], v7);
    TTRTemplatesListViewModel.isEmpty.getter();
    (*(v36 + 8))(v10, v7);
    v23 = v37;
  }

  v24 = v35;
  sub_10000794C(&v2[v18], v35, &qword_10077FBA0, &qword_10063BA40);
  TTRTemplatesListViewModel.snapshot(previousViewModel:)();
  result = sub_1000079B4(v24, &qword_10077FBA0, &qword_10063BA40);
  v26 = *&v2[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource];
  if (v26)
  {
    v27 = v26;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v32 + 8))(v23, v33);
    v28 = v36;
    (*(v36 + 32))(v24, v21, v7);
    (*(v28 + 56))(v24, 0, 1, v7);
    swift_beginAccess();
    sub_10033FB5C(v24, &v2[v18]);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10033D6A0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRTemplatesListViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRTemplatesListStyle();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, &v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_style], v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for TTRTemplatesListStyle.listCreation(_:))
  {
    v12 = [v1 navigationItem];
    v13 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___cancelButton, &selRef_didTapCancel_, 1);
    [v12 setLeftBarButtonItem:v13];

    v14 = [v1 navigationItem];
    v15 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___doneButton, &selRef_didTapDone_, 0);
    [v14 setRightBarButtonItem:v15];

    [*&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___doneButton] setEnabled:0];
    if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
    {
      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10062D410;
      *(v20 + 32) = [objc_opt_self() flexibleSpaceItem];
      *(v20 + 40) = [v1 editButtonItem];
    }

    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_14:
    [v1 setToolbarItems:v21.super.isa];

    return;
  }

  if (v11 == enum case for TTRTemplatesListStyle.browser(_:))
  {
    v16 = [v1 navigationItem];
    v17 = [v1 editButtonItem];
    [v16 setLeftBarButtonItem:v17];

    v18 = [v1 navigationItem];
    if ([v1 isEditing])
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___doneButton, &selRef_didTapDone_, 0);
    }

    [v18 setRightBarButtonItem:v19];

    v22 = [v1 editButtonItem];
    if ([v1 isEditing])
    {
      v23 = 1;
    }

    else
    {
      v24 = *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter];
      v25 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
      swift_beginAccess();
      (*(v3 + 16))(v5, v24 + v25, v2);
      LOBYTE(v24) = TTRTemplatesListViewModel.isEmpty.getter();
      (*(v3 + 8))(v5, v2);
      v23 = v24 ^ 1;
    }

    [v22 setEnabled:v23 & 1];

    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
    goto LABEL_14;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_10033DBD4(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TTRTemplatesListStyle();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v6);
  v9 = UIViewController.effectiveNavigationControllerForBars.getter();
  if (v9)
  {
    v10 = v9;
    (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_style, v4);
    v11 = (*(v5 + 88))(v8, v4);
    if (v11 == enum case for TTRTemplatesListStyle.listCreation(_:))
    {
      v12 = static REMFeatureFlags.isSolariumEnabled.getter();
    }

    else
    {
      if (v11 != enum case for TTRTemplatesListStyle.browser(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v12 = 1;
    }

    [v10 setToolbarHidden:v12 & 1 animated:a1 & 1];
  }
}

void sub_10033DED0(char a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v27 = type metadata accessor for IndexPath();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRTemplatesListViewModel.SectionIdentifier();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v3;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "setEditing:animated:", a1 & 1, a2 & 1, v12);
  v15 = OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView;
  v16 = *&v3[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView];
  if (!v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v16 setEditing:a1 & 1];
  sub_10033D6A0();
  v17 = *&v3[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  (*(v11 + 104))(v14, enum case for TTRTemplatesListViewModel.SectionIdentifier.main(_:), v10);
  v18 = v17;
  dispatch thunk of UICollectionViewDiffableDataSource.index(for:)();
  v20 = v19;

  (*(v11 + 8))(v14, v10);
  if (v20)
  {
    return;
  }

  IndexPath.init(row:section:)();
  v21 = *&v3[v15];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v22 = UICollectionElementKindSectionFooter;
  v23 = v21;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v25 = [v23 supplementaryViewForElementKind:v22 atIndexPath:isa];

  if (v25)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_10033CC88();
    }
  }

  (*(v7 + 8))(v9, v27);
}

void sub_10033E254(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter);
    v4 = Strong;
    swift_unknownObjectRetain();

    v5 = TTRTemplatesListViewModel.Template.objectID.getter();
    if (qword_100767098 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003E30(v6, qword_100777798);
    v7 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Templates List Show Editor", 26, 2, v7);

    if (*(v3 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) == 1 || (swift_getObjectType(), (v8 = TTRTemplatesListInteractorType.template(with:)()) == 0))
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v9 = v8;
      [*(v3 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_editorUndoManager) removeAllActions];
      v10 = sub_10000C36C((v3 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router), *(v3 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router + 24));
      v11 = dispatch thunk of TTRTemplatesListInteractorType.store.getter();
      sub_10033FBCC(v9, v11, v3, *v10);

      swift_unknownObjectRelease();
    }
  }
}

void *sub_10033E414(char *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRetain();

    v5 = TTRTemplatesListViewModel.Template.objectID.getter();
    sub_1002884FC(a1, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_10033E4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v5 + 16))(v7, a3, v4);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v14;
  *(v16 + 3) = &protocol witness table for MainActor;
  *(v16 + 4) = v12;
  (*(v5 + 32))(&v16[v15], v7, v4);

  sub_10009E31C(0, 0, v10, &unk_10063BA60, v16);

  return result;
}

uint64_t sub_10033E6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_100058000(&unk_100771B10, qword_10062E540);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for IndexPath();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_10033E860, v8, v7);
}

void *sub_10033E860()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = Strong;
    result = TTRTemplatesListViewModel.Template.objectID.getter();
    v4 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource);
    if (v4)
    {
      v5 = result;
      v6 = v0[9];
      v7 = v0[10];
      v8 = v0[8];
      v0[5] = result;
      v9 = v4;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

      if ((*(v7 + 48))(v8, 1, v6) == 1)
      {
        sub_1000079B4(v0[8], &unk_100771B10, qword_10062E540);
        goto LABEL_12;
      }

      result = (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView);
      if (v11)
      {
        v12 = v11;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v14 = [v12 cellForItemAtIndexPath:isa];

        if (v14)
        {
          v15 = v0[11];
          v16 = v0[9];
          v17 = v0[10];
          static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();

          (*(v17 + 8))(v15, v16);
          v18 = 0;
LABEL_13:
          v19 = v0[12];
          v20 = type metadata accessor for TTRIPopoverAnchor();
          (*(*(v20 - 8) + 56))(v19, v18, 1, v20);

          v21 = TTRTemplatesListViewModel.Template.objectID.getter();
          v0[17] = v21;
          v22 = swift_task_alloc();
          v0[18] = v22;
          *v22 = v0;
          v22[1] = sub_10033EB3C;
          v23 = v0[12];

          return sub_1002852E8(v21, v23);
        }

        (*(v0[10] + 8))(v0[11], v0[9]);
LABEL_12:
        v18 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10033EB3C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return _swift_task_switch(sub_10033EC7C, v4, v3);
}

uint64_t sub_10033EC7C()
{
  v1 = v0[16];
  v2 = v0[12];

  sub_1000079B4(v2, &unk_10076FCD0, &unk_1006304D0);

  v3 = v0[1];

  return v3();
}

void sub_10033ED18()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter);

  if (qword_100767098 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100777798);
  v3 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Templates List cancel", 21, 2, v3);

  if ((*(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004BE910();

      swift_unknownObjectRelease();
    }

    else
    {
      sub_100288C94();
      sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router), *(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router + 24));
      if (qword_1007674F8 != -1)
      {
        swift_once();
      }

      sub_100003E30(v2, qword_1007925F0);
      sub_1003F99F4(0x6574616C706D6554, 0xEE007473694C2073);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = [Strong presentingViewController];

        if (v6)
        {
          [v6 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }
}