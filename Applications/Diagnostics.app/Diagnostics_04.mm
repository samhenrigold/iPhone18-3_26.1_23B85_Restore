void sub_100089964(uint64_t *a1)
{
  if (*(a1 + 48) >= 2u)
  {
    v2 = a1[3];
    v3 = *a1;
    v4 = a1[4] | a1[5];
    v5 = a1[2] | a1[1];
    if (!(v4 | *a1 | v2 | v5))
    {
      sub_1000F6FF8(25);
      return;
    }

    v6 = v4 | v2 | v5;
    if (v3 == 1 && !v6)
    {
      sub_1000F6FF8(24);
      return;
    }

    v7 = (v3 & 0xFFFFFFFFFFFFFFFELL) == 2 || v3 == 4;
    v1 = 26;
    if (!v7 || v6 != 0)
    {
      if (v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = v3 == 5;
      }

      if (v9)
      {
        sub_1000F6FF8(27);
        return;
      }

      v1 = 26;
    }
  }

  else
  {
    v1 = 27;
  }

  sub_1000F6FF8(v1);
}

BOOL sub_1000899E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (*(a1 + 48) == 1)
    {
      return v2 == 1;
    }

    v4 = *a2;
    v3 = a2[1];
    v6 = a2[2];
    v5 = a2[3];
    v8 = a2[4];
    v7 = a2[5];
    v9 = a1[3];
    v10 = *a1;
    v11 = a1[4] | a1[5];
    v12 = a1[2] | a1[1];
    if (!(v11 | v10 | v9 | v12))
    {
      return v2 == 2 && !(v6 | v3 | v4 | v5 | v8 | v7);
    }

    v13 = v11 | v9 | v12;
    if (v10 != 1 || v13)
    {
      if (v10 != 2 || v13)
      {
        if (v10 != 3 || v13)
        {
          if (v10 != 4 || v13)
          {
            if (v10 != 5 || v13)
            {
              if (v2 != 2 || v4 != 6)
              {
                return 0;
              }
            }

            else if (v2 != 2 || v4 != 5)
            {
              return 0;
            }
          }

          else if (v2 != 2 || v4 != 4)
          {
            return 0;
          }
        }

        else if (v2 != 2 || v4 != 3)
        {
          return 0;
        }
      }

      else if (v2 != 2 || v4 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 2 || v4 != 1)
    {
      return 0;
    }

    if (!(v6 | v3 | v5 | v8 | v7))
    {
      return 1;
    }
  }

  else if (!*(a2 + 48))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100089B48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100089B60()
{
  v1.n128_f64[0] = sub_10007D4DC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 65, 7, v1);
}

uint64_t sub_100089BAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100089C00(void *(*a1)(uint64_t *__return_ptr, uint64_t), __n128 a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a4 + 16);
  if (v7)
  {
    v12[2] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(type metadata accessor for URL() - 8);
    v10 = a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(v12, v10);
      if (v5)
      {
        break;
      }

      v5 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      if (!--v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

char *sub_100089D44(uint64_t a1, uint64_t a2)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v8 = [objc_opt_self() sharedManager];
    v9 = [v8 snapshot];

    v10 = [v9 retriesRemaining];
    v11 = 0xD000000000000029;
    if (wapiCapability)
    {
      v11 = 0xD00000000000002ELL;
      v12 = "_READY_SEND_NO_OCCUR_BODY";
    }

    else
    {
      v12 = "_READY_SEND_BODY_WLAN";
    }

    v13 = 0xD000000000000025;
    if (wapiCapability)
    {
      v14 = "_READY_SEND_TITLE";
    }

    else
    {
      v13 = 0xD000000000000020;
      v14 = "s";
    }

    if (v10)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }

    if (v10)
    {
      v16 = v14;
    }

    else
    {
      v16 = v12;
    }

    v17 = objc_allocWithZone(v2);
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000021, 0x800000010018D600);
    v19 = v18;
    v20 = String._bridgeToObjectiveC()();
    v19, v21, v22, v23, v24, v25, v26, v27;
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v15, (v16 | 0x8000000000000000));
    v29 = v28;
    (v16 | 0x8000000000000000), v28, v30, v31, v32, v33, v34, v35;
    v36 = String._bridgeToObjectiveC()();
    v29, v37, v38, v39, v40, v41, v42, v43;
    v44 = [v17 initWithTitle:v20 detailText:v36 symbolName:0 contentLayout:3];

    v45 = &v44[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion];
    v46 = *&v44[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion];
    v47 = *&v44[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion + 8];
    *v45 = a1;
    *(v45 + 1) = a2;
    v48 = v44;
    sub_10003E418(a1, a2);
    v49 = sub_10003C52C(v46, v47);
    v50 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
    [*&v48[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView] setSeparatorStyle:{0, v49}];
    v51 = *&v48[v50];

    [v51 setDataSource:v48];
    sub_10003C52C(a1, a2);

    return v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100089FB4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FileReviewingTableViewController();
  v67.receiver = v2;
  v67.super_class = v14;
  objc_msgSendSuper2(&v67, "viewWillAppear:", a1 & 1);
  v15 = v2[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_activationReason];
  v16 = [v2 navigationController];
  v64 = v4;
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v16 viewControllers];

  sub_10003E110(0, &qword_1001FDE30, UIViewController_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = v19;
  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:
    v27, v20, v21, v22, v23, v24, v25, v26;
    if (v15)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v29 = _CocoaArrayWrapper.endIndex.getter();
  v27 = v19;
  if (!v29)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v38 = v27;
    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    v38, v40, v41, v42, v43, v44, v45, v46;
    if (v39 == v2 || (v15 & 1) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v27 + 32);
    v27, v20, v21, v22, v23, v24, v25, v26;
    if (v28 == v2)
    {
      goto LABEL_16;
    }

LABEL_7:
    if (v15)
    {
LABEL_16:
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = &v2[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
      v49 = *&v2[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
      v50 = *&v2[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction + 8];
      *v48 = sub_10008D07C;
      v48[1] = v47;
      swift_retain_n();
      v51 = sub_10003C52C(v49, v50);
      v52 = *v48;
      v53 = [v2 navigationItem];
      v36 = v53;
      if (v52)
      {
        v54 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v2 action:"cancelButtonPressed:"];
        [v36 setLeftBarButtonItem:v54];

        v36 = v54;
      }

      else
      {
        [v53 setLeftBarButtonItem:0];
      }

LABEL_19:

      sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
      (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
      v55 = static OS_dispatch_queue.global(qos:)();
      (*(v11 + 8))(v13, v10);
      v56 = swift_allocObject();
      *(v56 + 16) = v2;
      aBlock[4] = sub_10008D054;
      aBlock[5] = v56;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C27A0;
      v57 = _Block_copy(aBlock);
      v58 = v2;
      static DispatchQoS.unspecified.getter();
      v65 = &_swiftEmptyArrayStorage;
      sub_10008CE64(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
      sub_10003E278(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0);
      v59 = v64;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v57);

      (*(v63 + 8))(v6, v59);
      (*(v61 + 8))(v9, v62);

      return;
    }

LABEL_11:
    v30 = &v2[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
    v31 = *&v2[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
    v32 = *&v2[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction + 8];
    *v30 = 0;
    *(v30 + 1) = 0;
    v33 = sub_10003C52C(v31, v32);
    v34 = *v30;
    v35 = [v2 navigationItem];
    v36 = v35;
    if (v34)
    {
      v37 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v2 action:"cancelButtonPressed:"];
      [v36 setLeftBarButtonItem:v37];

      v36 = v37;
    }

    else
    {
      [v35 setLeftBarButtonItem:0];
    }

    goto LABEL_19;
  }

  __break(1u);
}

void sub_10008A634(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = v2;
    v5 = [v4 navigationItem];
    v6 = [v5 leftBarButtonItem];

    v7 = sub_1000BC190(sub_10008D084, v3, 0, 0, v6);

    [v4 presentViewController:v7 animated:1 completion:0];
  }
}

uint64_t sub_10008A790()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_10008CE0C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2728;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10008CE64(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_10008AA70()
{
  v1 = v0;
  v162 = type metadata accessor for UploadConsentItem();
  isa = v162[-1].isa;
  __chkstk_darwin(v162);
  v3 = &v143 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TargetDevice();
  v153 = *(v4 - 1);
  __chkstk_darwin(v4);
  v6 = (&v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = &v143 - v8;
  if (qword_1001FC7E8 != -1)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v10 = SessionManager.currentSession.getter();
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = Session.targetedDevices.getter();
    v164 = v12;

    sub_1000C6404(sub_100124B0C, 0);
    v12, v13, v14, v15, v16, v17, v18, v19;
    v20 = OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_targetedDevices;
    v21 = *(v1 + OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_targetedDevices);
    *(v1 + OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_targetedDevices) = v164;
    v21, v22, v23, v24, v25, v26, v27, v28;
    v29 = *(v1 + v20);
    v152 = *(v29 + 16);
    if (!v152)
    {

      return;
    }

    v151 = v29 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
    v157 = OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_files;
    v161 = isa + 16;
    v159 = v153 + 16;
    v160 = (isa + 8);
    v148 = (v153 + 8);

    v31 = 0;
    v146 = v1;
    v145 = v4;
    v144 = v6;
    v143 = v9;
    v149 = v30;
    v150 = v11;
    while (1)
    {
      if (v31 >= *&v30->hostAppBundleIdentifier[8])
      {
        goto LABEL_57;
      }

      v155 = *(v153 + 72);
      v156 = v31;
      v158 = *(v153 + 16);
      v158(v9, v151 + v155 * v31, v4);
      v42 = Session.uploadConsentItems.getter();
      v43 = TargetDevice.id.getter();
      v51 = v44;
      if (*(v42 + 16))
      {
        v52 = sub_100064AFC(v43, v44);
        v54 = v53;
        v51, v53, v55, v56, v57, v58, v59, v60;
        if (v54)
        {
          v68 = *(*(v42 + 56) + 8 * v52);

          v42, v69, v70, v71, v72, v73, v74, v75;
          goto LABEL_14;
        }

        v76 = v42;
      }

      else
      {
        v42, v44, v45, v46, v47, v48, v49, v50;
        v76 = v51;
      }

      v76, v61, v62, v63, v64, v65, v66, v67;
      v68 = &_swiftEmptyArrayStorage;
LABEL_14:
      v158(v6, v9, v4);
      v84 = *&v68->hostAppBundleIdentifier[8];
      if (v84)
      {
        break;
      }

      v68, v77, v78, v79, v80, v81, v82, v83;
      v87 = &_swiftEmptyArrayStorage;
LABEL_33:
      v118 = v157;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v163 = *(v1 + v118);
      v120 = v163;
      *(v1 + v118) = 0x8000000000000000;
      v121 = sub_100064C6C(v6);
      v129 = v120[2];
      v130 = (v122 & 1) == 0;
      v116 = __OFADD__(v129, v130);
      v131 = v129 + v130;
      if (v116)
      {
        goto LABEL_58;
      }

      v132 = v122;
      if (v120[3] >= v131)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v137 = v121;
          sub_100143278();
          v121 = v137;
        }
      }

      else
      {
        sub_100140394(v131, isUniquelyReferenced_nonNull_native);
        v121 = sub_100064C6C(v6);
        if ((v132 & 1) != (v122 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);

          __break(1u);
          return;
        }
      }

      v133 = v163;
      if (v132)
      {
        v32 = v163[7];
        v33 = *(v32 + 8 * v121);
        *(v32 + 8 * v121) = v87;
        v33, v122, v123, v124, v125, v126, v127, v128;
      }

      else
      {
        v163[(v121 >> 6) + 8] |= 1 << v121;
        v134 = v121;
        v158((v133[6] + v121 * v155), v6, v4);
        *(v133[7] + 8 * v134) = v87;
        v135 = v133[2];
        v116 = __OFADD__(v135, 1);
        v136 = v135 + 1;
        if (v116)
        {
          goto LABEL_59;
        }

        v133[2] = v136;
      }

      v31 = v156 + 1;
      v34 = *v148;
      (*v148)(v6, v4);
      *(v1 + v157) = v133;
      swift_endAccess();
      v34(v9, v4);
      v30 = v149;
      if (v31 == v152)
      {
        v149, v35, v36, v37, v38, v39, v40, v41;

        return;
      }
    }

    v85 = *(isa + 80);
    v154 = v68;
    v86 = v68 + ((v85 + 32) & ~v85);
    v9 = *(isa + 9);
    v4 = *(isa + 2);
    v87 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v95 = v162;
      (v4)(v3, v86, v162);
      v6 = UploadConsentItem.files.getter();
      (*v160)(v3, v95);
      v96 = *&v6->hostAppBundleIdentifier[8];
      v1 = *&v87->hostAppBundleIdentifier[8];
      v97 = v1 + v96;
      if (__OFADD__(v1, v96))
      {
        break;
      }

      v98 = swift_isUniquelyReferenced_nonNull_native();
      if (v98 && v97 <= *v87->responder >> 1)
      {
        if (*&v6->hostAppBundleIdentifier[8])
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v1 <= v97)
        {
          v106 = v1 + v96;
        }

        else
        {
          v106 = v1;
        }

        v87 = sub_1000D4EA4(v98, v106, 1, v87);
        if (*&v6->hostAppBundleIdentifier[8])
        {
LABEL_27:
          v1 = *&v87->hostAppBundleIdentifier[8];
          v107 = (*v87->responder >> 1) - v1;
          type metadata accessor for URL();
          if (v107 < v96)
          {
            goto LABEL_55;
          }

          swift_arrayInitWithCopy();
          v6, v108, v109, v110, v111, v112, v113, v114;
          if (v96)
          {
            v115 = *&v87->hostAppBundleIdentifier[8];
            v116 = __OFADD__(v115, v96);
            v117 = v115 + v96;
            if (v116)
            {
              goto LABEL_56;
            }

            *&v87->hostAppBundleIdentifier[8] = v117;
          }

          goto LABEL_17;
        }
      }

      v6, v99, v100, v101, v102, v103, v104, v105;
      if (v96)
      {
        goto LABEL_54;
      }

LABEL_17:
      v86 = &v9[v86];
      if (!--v84)
      {
        v154, v88, v89, v90, v91, v92, v93, v94;
        v1 = v146;
        v4 = v145;
        v6 = v144;
        v9 = v143;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
  }

  if (qword_1001FC7D0 != -1)
  {
    swift_once();
  }

  v138 = type metadata accessor for Logger();
  sub_10003DAAC(v138, qword_10020A528);
  v162 = Logger.logObject.getter();
  v139 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v162, v139))
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v164 = v141;
    *v140 = 136315138;
    *(v140 + 4) = sub_100056B7C(0xD000000000000014, 0x800000010018D7E0, &v164);
    _os_log_impl(&_mh_execute_header, v162, v139, "%s No active enhanced logging session", v140, 0xCu);
    sub_100044554(v141);
  }

  else
  {
    v142 = v162;
  }
}

void sub_10008B2B4()
{
  sub_100101C50();
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView];
  type metadata accessor for DeviceFileReviewCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = v1;
  v4 = String._bridgeToObjectiveC()();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  v5 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001ALL, 0x800000010018D6E0);
  v6 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle];
  v7 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle + 8];
  *v6 = v5;
  v6[1] = v8;
  v7, v8, v9, v10, v11, v12, v13, v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v16 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
  v17 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
  v18 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction + 8];
  *v16 = sub_10008CD40;
  v16[1] = v15;
  v19 = v0;
  sub_10003C52C(v17, v18);
  v20 = MobileGestalt_get_current_device();
  if (v20)
  {
    v21 = v20;
    containsCellularRadioCapability = MobileGestalt_get_containsCellularRadioCapability();

    if (containsCellularRadioCapability)
    {
      v23 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001ELL, 0x800000010018D700);
      v24 = &v19[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle];
      v25 = *&v19[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle + 8];
      *v24 = v23;
      v24[1] = v26;
      v25, v26, v27, v28, v29, v30, v31, v32;
      v33 = swift_allocObject();
      *(v33 + 16) = v19;
      v34 = &v19[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
      v35 = *&v19[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
      v36 = *&v19[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction + 8];
      *v34 = sub_10008CD68;
      v34[1] = v33;
      v37 = v19;

      sub_10003C52C(v35, v36);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10008B4D0(void *a1)
{
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = v2;
  wapiCapability = MobileGestalt_get_wapiCapability();

  if (wapiCapability)
  {
    v5 = 0xD00000000000002BLL;
  }

  else
  {
    v5 = 0xD000000000000026;
  }

  if (wapiCapability)
  {
    v6 = "_CELLULAR_WARNING_USE";
  }

  else
  {
    v6 = "ENHANCED_LOGGING_SEND_CELLULAR";
  }

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000027, 0x800000010018D750);
  v8 = v7;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v5, (v6 | 0x8000000000000000));
  v10 = v9;
  (v6 | 0x8000000000000000), v9, v11, v12, v13, v14, v15, v16;
  v17 = String._bridgeToObjectiveC()();
  v8, v18, v19, v20, v21, v22, v23, v24;
  v25 = String._bridgeToObjectiveC()();
  v10, v26, v27, v28, v29, v30, v31, v32;
  v33 = [objc_opt_self() alertControllerWithTitle:v17 message:v25 preferredStyle:0];

  v34 = [v33 popoverPresentationController];
  if (!v34)
  {
    goto LABEL_20;
  }

  v35 = v34;
  v36 = [a1 buttonTray];
  v37 = [v36 allButtons];

  sub_10003E110(0, &qword_1001FEE40, OBTrayButton_ptr);
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v38 >> 62))
  {
    v46 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_11;
    }

LABEL_18:
    v50 = 0;
    goto LABEL_19;
  }

  v46 = _CocoaArrayWrapper.endIndex.getter();
  if (!v46)
  {
    goto LABEL_18;
  }

LABEL_11:
  v47 = __OFSUB__(v46, 1);
  v48 = v46 - 1;
  if (v47)
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_16;
  }

  if ((v48 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v48 < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v49 = *(v38 + 8 * v48 + 32);
LABEL_16:
    v50 = v49;
LABEL_19:
    v38, v39, v40, v41, v42, v43, v44, v45;
    [v35 setSourceItem:v50];

    swift_unknownObjectRelease();
LABEL_20:
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000025, 0x800000010018D780);
    v52 = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = a1;
    v54 = a1;
    v55 = String._bridgeToObjectiveC()();
    v52, v56, v57, v58, v59, v60, v61, v62;
    v65[4] = sub_10008CD70;
    v65[5] = v53;
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 1107296256;
    v65[2] = sub_100072168;
    v65[3] = &unk_1001C26B0;
    v63 = _Block_copy(v65);

    v64 = [objc_opt_self() actionWithTitle:v55 style:0 handler:v63];
    _Block_release(v63);

    [v33 addAction:v64];
    [v33 setPreferredAction:v64];
    [v54 presentViewController:v33 animated:1 completion:0];

    return;
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_10008B8AC(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    containsCellularRadioCapability = MobileGestalt_get_containsCellularRadioCapability();

    return containsCellularRadioCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10008B934(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Session.UploadOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = v1[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_activationReason];
  if (v11 != 2 && (v11 & 1) == 0)
  {
    if (qword_1001FC7E8 != -1)
    {
      swift_once();
    }

    if (SessionManager.currentSession.getter())
    {
      v23 = v5;
      Session.issueOccurred()();
      v14 = v13;
      if (v13)
      {

        goto LABEL_20;
      }

      v5 = v23;
    }
  }

  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (!SessionManager.currentSession.getter())
  {
    sub_10008CDB0();
    v14 = swift_allocError();
    swift_willThrow();
LABEL_20:
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    v16 = v2;
    v17 = sub_1000B99C8(v14, sub_10008CE04, v15);

    [v16 presentViewController:v17 animated:1 completion:0];

    return result;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      static Session.UploadOptions.allowCellular.getter();
      Session.startUploading(options:)();
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      if (qword_1001FC6C8 != -1)
      {
        swift_once();
      }

      sub_100066800(3, 0);
      Session.cancel()();
    }
  }

  else
  {
    v24 = &_swiftEmptyArrayStorage;
    sub_10008CE64(&qword_1001FEE48, &type metadata accessor for Session.UploadOptions, &protocol conformance descriptor for Session.UploadOptions);
    sub_10003C49C(&qword_1001FEE50, &unk_100181330);
    sub_10003E278(&qword_1001FEE58, &qword_1001FEE50, &unk_100181330);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    Session.startUploading(options:)();
    (*(v5 + 8))(v10, v4);
  }

  v19 = *&v1[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion];
  if (v19)
  {
    v20 = *&v1[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion + 8];

    v19(v21);
    sub_10003C52C(v19, v20);
  }

  return result;
}

double sub_10008BD5C(uint64_t a1)
{
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_100066800(3, 0);
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  v3 = a1 + OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion;
  v4 = *(a1 + OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion);
  if (v4)
  {
    v5 = *(v3 + 8);

    v4(v6);

    return sub_10003C52C(v4, v5);
  }

  return result;
}

uint64_t sub_10008BE70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = TargetDevice.isLocal.getter();
  type metadata accessor for ReviewableFile(0);
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___fileExists) = 2;
  *(v10 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___isDirectory) = 2;
  result = (*(v5 + 32))(v10 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile_url, v8, v4);
  *(v10 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile_isOnRemoteDevice) = (v9 & 1) == 0;
  *a2 = v10;
  return result;
}

void sub_10008BFD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000AD8E4();
    v5 = v4;
    v6 = [v3 navigationController];
    if (v6)
    {
      v7 = v6;
      [v6 pushViewController:v5 animated:1];
    }
  }
}

id sub_10008C1A0(uint64_t a1, DARootViewController *a2, uint64_t a3, DARootViewController *a4, uint64_t a5, DARootViewController *a6, uint64_t a7)
{
  v7[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_activationReason] = 2;
  *&v7[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_targetedDevices] = &_swiftEmptyArrayStorage;
  *&v7[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_files] = _swiftEmptyDictionarySingleton;
  v12 = &v7[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion];
  *v12 = 0;
  v12[1] = 0;
  v13 = String._bridgeToObjectiveC()();
  a2, v14, v15, v16, v17, v18, v19, v20;
  if (!a4)
  {
    v21 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v29 = 0;
    goto LABEL_6;
  }

  v21 = String._bridgeToObjectiveC()();
  a4, v22, v23, v24, v25, v26, v27, v28;
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v29 = String._bridgeToObjectiveC()();
  a6, v30, v31, v32, v33, v34, v35, v36;
LABEL_6:
  v39.receiver = v7;
  v39.super_class = type metadata accessor for FileReviewingTableViewController();
  v37 = objc_msgSendSuper2(&v39, "initWithTitle:detailText:symbolName:contentLayout:", v13, v21, v29, a7);

  return v37;
}

id sub_10008C378(uint64_t a1, DARootViewController *a2, uint64_t a3, DARootViewController *a4, void *a5, uint64_t a6)
{
  v6[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_activationReason] = 2;
  *&v6[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_targetedDevices] = &_swiftEmptyArrayStorage;
  *&v6[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_files] = _swiftEmptyDictionarySingleton;
  v11 = &v6[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion];
  *v11 = 0;
  v11[1] = 0;
  v12 = String._bridgeToObjectiveC()();
  a2, v13, v14, v15, v16, v17, v18, v19;
  if (a4)
  {
    v20 = String._bridgeToObjectiveC()();
    a4, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    v20 = 0;
  }

  v30.receiver = v6;
  v30.super_class = type metadata accessor for FileReviewingTableViewController();
  v28 = objc_msgSendSuper2(&v30, "initWithTitle:detailText:icon:contentLayout:", v12, v20, a5, a6);

  return v28;
}

double sub_10008C514(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_targetedDevices), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_files), v9, v10, v11, v12, v13, v14, v15;
  v16 = *(v8 + OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion);
  v17 = *(v8 + OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion + 8);

  return sub_10003C52C(v16, v17);
}

id sub_10008C568(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FileReviewingTableViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10008C634()
{
  result = qword_1001FEE38;
  if (!qword_1001FEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FEE38);
  }

  return result;
}

unint64_t sub_10008C688()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  __chkstk_darwin(v2 - 8);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v81 - v6;
  v8 = type metadata accessor for TargetDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = *&v0[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_targetedDevices];
  if (result >= *(v13 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v83 = v7;
  v84 = v4;
  v14 = v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * result;
  v15 = v8;
  v82 = *(v9 + 16);
  v82(v11, v14, v8);
  v16 = *&v0[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView];
  v17 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [v16 dequeueReusableCellWithIdentifier:v17 forIndexPath:isa];

  v20 = type metadata accessor for DeviceFileReviewCell(0);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {

    v22 = objc_allocWithZone(v20);
    v23 = String._bridgeToObjectiveC()();
    v21 = [v22 initWithStyle:0 reuseIdentifier:v23];
  }

  v24 = OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_files;
  swift_beginAccess();
  v25 = *&v1[v24];
  v26 = v8;
  if (*(v25 + 16))
  {

    v27 = sub_100064C6C(v11);
    if (v28)
    {
      v35 = *(*(v25 + 56) + 8 * v27);

      v25, v36, v37, v38, v39, v40, v41, v42;
      v43 = v83;
      v82(v83, v11, v15);
      (*(v9 + 56))(v43, 0, 1, v15);
      v44 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_device;
      swift_beginAccess();
      v45 = v84;
      sub_10008CEAC(&v21[v44], v84);
      swift_beginAccess();
      sub_10008CF1C(v43, &v21[v44]);
      swift_endAccess();
      sub_100110CC8(v45);
      sub_10008CF8C(v45);
      v46 = sub_10008CF8C(v43);
      v47 = __chkstk_darwin(v46);
      *(&v81 - 2) = v11;
      sub_100089C00(sub_10008CFF4, v47, (&v81 - 4), v35);
      v49 = v48;
      v35, v50, v51, v52, v53, v54, v55, v56;
      v57 = *&v21[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files];
      *&v21[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files] = v49;

      LOBYTE(v43) = sub_10011291C(v58, v57);
      v49, v59, v60, v61, v62, v63, v64, v65;
      v57, v66, v67, v68, v69, v70, v71, v72;
      if ((v43 & 1) == 0)
      {
        sub_1001110D4();
      }

      v73 = *&v21[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView];
      v74 = &v73[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_expansionDelegate];
      *v74 = v1;
      *(v74 + 1) = &off_1001C2620;
      v75 = v73;
      v76 = v1;

      swift_unknownObjectRelease();
      v77 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v78 = &v21[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL];
      v79 = *&v21[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL];
      v80 = *&v21[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL + 8];
      *v78 = sub_10008D04C;
      v78[1] = v77;

      sub_10003C52C(v79, v80);
    }

    else
    {
      v25, v28, v29, v30, v31, v32, v33, v34;
    }
  }

  (*(v9 + 8))(v11, v26);
  return v21;
}

double sub_10008CB7C@<D0>(uint64_t a1@<X8>)
{
  sub_10014FFA0(&off_1001BDBD8);
  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithSymbolicTraits:2];

  if (!v7)
  {
    v7 = [v5 fontDescriptor];
  }

  [v5 pointSize];
  v8 = [v4 fontWithDescriptor:v7 size:?];

  v9 = objc_opt_self();
  v10 = [v9 labelColor];
  v11 = [v4 preferredFontForTextStyle:UIFontTextStyleBody];
  v12 = [v9 labelColor];
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = xmmword_100181240;
  result = 1.0;
  *(a1 + 56) = xmmword_100181250;
  return result;
}

uint64_t sub_10008CD08()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_10008CD98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10008CDB0()
{
  result = qword_1001FFE50;
  if (!qword_1001FFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FFE50);
  }

  return result;
}

id sub_10008CE0C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  [*(v1 + OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView) reloadData];
  v3 = *(v1 + v2);

  return [v3 invalidateIntrinsicContentSize];
}

uint64_t sub_10008CE64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008CEAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008CF1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008CF8C(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008D014()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

void sub_10008D0DC(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for EnhancedLoggingCompletedNavigationController();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  [v1 setModalPresentationStyle:2];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v2 = [v1 navigationBar];
    v3 = [objc_allocWithZone(UIImage) init];
    [v2 setBackgroundImage:v3 forBarMetrics:0];

    v4 = [v1 navigationBar];
    v5 = [objc_allocWithZone(UIImage) init];
    [v4 setShadowImage:v5];

    v6 = [v1 navigationBar];
    [v6 setAlpha:0.0];
  }

  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10017EBF0;
  v8 = *&v1[OBJC_IVAR____TtC11Diagnostics44EnhancedLoggingCompletedNavigationController_enhancedLoggingCompletedViewController];
  *(v7 + 32) = v8;
  sub_100045CC4();
  v9 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7, v11, v12, v13, v14, v15, v16, v17;
  [v1 setViewControllers:isa];
}

id sub_10008D55C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EnhancedLoggingCompletedNavigationController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10008D5C4(char a1)
{
  v2 = sub_10003C49C(&qword_1001FDF40, &qword_10017F858);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      v9 = 0xEF494649573D746FLL;
    }

    else
    {
      v9 = 0x800000010018D890;
    }
  }

  else
  {
    v9 = 0x800000010018D8B0;
  }

  URL.init(string:)();
  v9, v10, v11, v12, v13, v14, v15, v16;
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10008D844(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v19 = result;
    URL._bridgeToObjectiveC()(v18);
    v21 = v20;
    v22 = sub_1000D59EC(&_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v22, v24, v25, v26, v27, v28, v29, v30;
    [v19 openSensitiveURL:v21 withOptions:isa];

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008D844(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FDF40, &qword_10017F858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008D8AC()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1001FEE90 = v4;
    *algn_1001FEE98 = v6;
  }

  return result;
}

uint64_t sub_10008D9BC()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1001FEEA0 = v4;
    *algn_1001FEEA8 = v6;
  }

  return result;
}

uint64_t sub_10008DACC()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *&xmmword_1001FEEB0 = v4;
    *(&xmmword_1001FEEB0 + 1) = v6;
  }

  return result;
}

void sub_10008DBDC()
{
  v1 = sub_10003C49C(&unk_1001FEEC0, &qword_100181390);
  __chkstk_darwin(v1 - 8);
  v114 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v113 = &v107 - v4;
  __chkstk_darwin(v5);
  v116 = &v107 - v6;
  __chkstk_darwin(v7);
  v123 = &v107 - v8;
  __chkstk_darwin(v9);
  v121 = &v107 - v10;
  __chkstk_darwin(v11);
  v120 = &v107 - v12;
  __chkstk_darwin(v13);
  v126 = &v107 - v14;
  __chkstk_darwin(v15);
  v125 = &v107 - v16;
  __chkstk_darwin(v17);
  v129 = &v107 - v18;
  __chkstk_darwin(v19);
  v128 = &v107 - v20;
  __chkstk_darwin(v21);
  v130 = &v107 - v22;
  __chkstk_darwin(v23);
  v132 = &v107 - v24;
  __chkstk_darwin(v25);
  v27 = &v107 - v26;
  __chkstk_darwin(v28);
  v30 = &v107 - v29;
  v31 = type metadata accessor for DispatchData();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v109 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v112 = &v107 - v35;
  __chkstk_darwin(v36);
  v115 = &v107 - v37;
  __chkstk_darwin(v38);
  v122 = &v107 - v39;
  __chkstk_darwin(v40);
  v124 = &v107 - v41;
  __chkstk_darwin(v42);
  v127 = &v107 - v43;
  v45 = __chkstk_darwin(v44);
  v47 = &v107 - v46;
  v136 = v0;
  v48 = *v0;
  v49 = v0[1];
  v50 = v32 + 7;
  v138 = v32[7];
  v138(v30, 1, 1, v31, v45);
  v118 = v48;
  v117 = v49;
  sub_10008EBC8(v48, v49, v30);
  sub_10008F3F0(v30, v27);
  v52 = v32 + 6;
  v51 = v32[6];
  if (v51(v27, 1, v31) == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v137 = v32[4];
  v134 = v32 + 4;
  v137(v47, v27, v31);
  sub_10008F460(v30);
  v119 = DispatchData._bridgeToObjectiveC()();
  v54 = v32[1];
  v53 = (v32 + 1);
  v131 = v54;
  v54(v47, v31);
  v55 = v136[2];
  v56 = v136[3];
  v57 = v132;
  (v138)(v132, 1, 1, v31);
  v111 = v55;
  v110 = v56;
  sub_10008EBC8(v55, v56, v57);
  v58 = v130;
  sub_10008F3F0(v57, v130);
  v59 = v51(v58, 1, v31);
  v135 = v50;
  if (v59 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v60 = v127;
  v137(v127, v58, v31);
  sub_10008F460(v132);
  v132 = DispatchData._bridgeToObjectiveC()();
  v61 = v131;
  v131(v60, v31);
  v62 = v136[4];
  v63 = v136[5];
  v64 = v128;
  (v138)(v128, 1, 1, v31);
  v127 = v62;
  v108 = v63;
  v65 = v63;
  v66 = v64;
  sub_10008EBC8(v62, v65, v64);
  v67 = v129;
  sub_10008F3F0(v64, v129);
  if (v51(v67, 1, v31) == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v68 = v52;
  v69 = v61;
  v70 = v51;
  v71 = v124;
  v137(v124, v67, v31);
  sub_10008F460(v66);
  v130 = DispatchData._bridgeToObjectiveC()();
  v69(v71, v31);
  v72 = v136[6];
  v73 = v136[7];
  v74 = v125;
  (v138)(v125, 1, 1, v31);
  sub_10008EBC8(v72, v73, v74);
  v136 = 0;
  v75 = v126;
  sub_10008F3F0(v74, v126);
  v76 = v68;
  v133 = v70;
  if (v70(v75, 1, v31) == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v77 = v122;
  v137(v122, v75, v31);
  sub_10008F460(v74);
  v78 = DispatchData._bridgeToObjectiveC()();
  v129 = v53;
  v69(v77, v31);
  v79 = v119;
  v80 = v132;
  v81 = v130;
  client_SPAKE2PLUSV1_identity = sec_identity_create_client_SPAKE2PLUSV1_identity();

  v83 = v123;
  if (!client_SPAKE2PLUSV1_identity)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v84 = sec_identity_copy_SPAKE2PLUSV1_server_password_verifier();
  v86 = v120;
  v85 = v121;
  v87 = v133;
  v132 = v84;
  if (!v84)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v128 = client_SPAKE2PLUSV1_identity;
  v88 = sec_identity_copy_SPAKE2PLUSV1_registration_record();
  v89 = v138;
  v130 = v88;
  if (!v88)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  (v138)(v86, 1, 1, v31);
  sub_10008EBC8(v118, v117, v86);
  sub_10008F3F0(v86, v85);
  v90 = v87(v85, 1, v31);
  v136 = v76;
  if (v90 == 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v91 = v115;
  v92 = v137;
  v137(v115, v85, v31);
  sub_10008F460(v86);
  v126 = DispatchData._bridgeToObjectiveC()();
  v93 = v91;
  v94 = v131;
  v131(v93, v31);
  v89(v83, 1, 1, v31);
  sub_10008EBC8(v111, v110, v83);
  v95 = v116;
  sub_10008F3F0(v83, v116);
  if (v133(v95, 1, v31) == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v96 = v112;
  v92(v112, v95, v31);
  sub_10008F460(v83);
  v97 = DispatchData._bridgeToObjectiveC()();
  v94(v96, v31);
  v98 = v113;
  v89(v113, 1, 1, v31);
  sub_10008EBC8(v127, v108, v98);
  v99 = v98;
  v100 = v114;
  sub_10008F3F0(v98, v114);
  if (v133(v100, 1, v31) == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v101 = v109;
  v92(v109, v100, v31);
  sub_10008F460(v99);
  v102 = DispatchData._bridgeToObjectiveC()();
  v94(v101, v31);
  v103 = v126;
  v104 = v132;
  v105 = v130;
  server_SPAKE2PLUSV1_identity = sec_identity_create_server_SPAKE2PLUSV1_identity();

  if (server_SPAKE2PLUSV1_identity)
  {
    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_10008E61C()
{
  v1 = sub_10003C49C(&unk_1001FEEC0, &qword_100181390);
  __chkstk_darwin(v1 - 8);
  v59 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v58 = &v54 - v4;
  __chkstk_darwin(v5);
  v61 = &v54 - v6;
  __chkstk_darwin(v7);
  v60 = &v54 - v8;
  __chkstk_darwin(v9);
  v63 = &v54 - v10;
  __chkstk_darwin(v11);
  v62 = &v54 - v12;
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = type metadata accessor for DispatchData();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v56 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v57 = &v54 - v23;
  __chkstk_darwin(v24);
  v26 = &v54 - v25;
  v28 = __chkstk_darwin(v27);
  v30 = &v54 - v29;
  v31 = *v0;
  v32 = v0[1];
  v33 = v20[7];
  v67 = v20 + 7;
  v68 = v0;
  v66 = v33;
  (v33)(v18, 1, 1, v19, v28);
  sub_10008EBC8(v31, v32, v18);
  sub_10008F3F0(v18, v15);
  v65 = v20[6];
  if (v65(v15, 1, v19) == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v64 = v20[4];
  v64(v30, v15, v19);
  sub_10008F460(v18);
  v55 = DispatchData._bridgeToObjectiveC()();
  v34 = v20[1];
  v34(v30, v19);
  v35 = v68[2];
  v36 = v68[3];
  v37 = v62;
  v66(v62, 1, 1, v19);
  sub_10008EBC8(v35, v36, v37);
  v38 = v63;
  sub_10008F3F0(v37, v63);
  if (v65(v38, 1, v19) == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v64(v26, v38, v19);
  sub_10008F460(v37);
  v63 = DispatchData._bridgeToObjectiveC()();
  v34(v26, v19);
  v39 = v68[4];
  v40 = v68[5];
  v41 = v60;
  v66(v60, 1, 1, v19);
  sub_10008EBC8(v39, v40, v41);
  v42 = v61;
  sub_10008F3F0(v41, v61);
  if (v65(v42, 1, v19) == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v43 = v57;
  v64(v57, v42, v19);
  sub_10008F460(v41);
  v44 = DispatchData._bridgeToObjectiveC()();
  v34(v43, v19);
  v45 = v68[6];
  v46 = v68[7];
  v47 = v58;
  v66(v58, 1, 1, v19);
  sub_10008EBC8(v45, v46, v47);
  v48 = v59;
  sub_10008F3F0(v47, v59);
  if (v65(v48, 1, v19) == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v49 = v56;
  v64(v56, v48, v19);
  sub_10008F460(v47);
  v50 = DispatchData._bridgeToObjectiveC()();
  v34(v49, v19);
  v51 = v55;
  v52 = v63;
  client_SPAKE2PLUSV1_identity = sec_identity_create_client_SPAKE2PLUSV1_identity();

  if (!client_SPAKE2PLUSV1_identity)
  {
LABEL_11:
    __break(1u);
  }
}

uint64_t sub_10008EBC8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10003C49C(&unk_1001FEEC0, &qword_100181390);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      memset(&v14[1], 0, 14);
      goto LABEL_9;
    }

    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    return sub_10008EDB8(v10, v11, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v9)
  {
    v10 = a1;
    v11 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10008EDB8(v10, v11, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v14[1] = a1;
  LOWORD(v14[2]) = a2;
  BYTE2(v14[2]) = BYTE2(a2);
  BYTE3(v14[2]) = BYTE3(a2);
  BYTE4(v14[2]) = BYTE4(a2);
  BYTE5(v14[2]) = BYTE5(a2);
LABEL_9:
  DispatchData.init(bytes:)();
  v13 = type metadata accessor for DispatchData();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  return sub_10008F4C8(v8, a3);
}

uint64_t sub_10008EDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10003C49C(&unk_1001FEEC0, &qword_100181390);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      DispatchData.init(bytes:)();
      v11 = type metadata accessor for DispatchData();
      (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
      return sub_10008F4C8(v9, a4);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008EEF0(uint64_t a1, unint64_t a2)
{
  if (qword_1001FC718 != -1)
  {
    swift_once();
  }

  v4 = qword_1001FEE90;
  v5 = *algn_1001FEE98;
  sub_10005FC70(qword_1001FEE90, *algn_1001FEE98);
  if (qword_1001FC720 != -1)
  {
    swift_once();
  }

  v6 = qword_1001FEEA0;
  v7 = *algn_1001FEEA8;
  sub_10005FC70(qword_1001FEEA0, *algn_1001FEEA8);
  if (qword_1001FC728 != -1)
  {
    swift_once();
  }

  v14[0] = v4;
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v15 = xmmword_1001FEEB0;
  v16 = a1;
  v17 = a2;
  sub_10005FC70(xmmword_1001FEEB0, *(&xmmword_1001FEEB0 + 1));
  sub_10005FC70(a1, a2);
  sub_10008DBDC();
  v9 = v8;
  type metadata accessor for NWProtocolTCP.Options();
  swift_allocObject();
  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
  type metadata accessor for NWProtocolTLS.Options();
  nw_swift_tls_record_create_options();
  v10 = static NWProtocolOptions.fromNW(_:)();
  swift_unknownObjectRelease();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_12:
    sub_10008F3C0(v14);

    return 0;
  }

  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();

    goto LABEL_12;
  }

  v11 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_local_identity(v11, v9);
  swift_unknownObjectRelease();
  type metadata accessor for NWParameters();

  v12 = NWParameters.__allocating_init(tls:tcp:)();
  NWParameters.includePeerToPeer.setter();
  swift_unknownObjectRelease();

  sub_10008F3C0(v14);
  return v12;
}

uint64_t sub_10008F14C(uint64_t a1, unint64_t a2)
{
  if (qword_1001FC718 != -1)
  {
    swift_once();
  }

  v4 = qword_1001FEE90;
  v5 = *algn_1001FEE98;
  sub_10005FC70(qword_1001FEE90, *algn_1001FEE98);
  if (qword_1001FC720 != -1)
  {
    swift_once();
  }

  v6 = qword_1001FEEA0;
  v7 = *algn_1001FEEA8;
  sub_10005FC70(qword_1001FEEA0, *algn_1001FEEA8);
  if (qword_1001FC728 != -1)
  {
    swift_once();
  }

  v14[0] = v4;
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v15 = xmmword_1001FEEB0;
  v16 = a1;
  v17 = a2;
  sub_10005FC70(xmmword_1001FEEB0, *(&xmmword_1001FEEB0 + 1));
  sub_10005FC70(a1, a2);
  sub_10008E61C();
  v9 = v8;
  type metadata accessor for NWProtocolTCP.Options();
  swift_allocObject();
  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
  type metadata accessor for NWProtocolTLS.Options();
  nw_swift_tls_record_create_options();
  v10 = static NWProtocolOptions.fromNW(_:)();
  swift_unknownObjectRelease();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_12:
    sub_10008F3C0(v14);

    return 0;
  }

  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();

    goto LABEL_12;
  }

  v11 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_local_identity(v11, v9);
  swift_unknownObjectRelease();
  type metadata accessor for NWParameters();

  v12 = NWParameters.__allocating_init(tls:tcp:)();
  NWParameters.includePeerToPeer.setter();
  NWParameters.nw.getter();
  nw_parameters_set_indefinite();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10008F3C0(v14);
  return v12;
}

uint64_t sub_10008F3F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_1001FEEC0, &qword_100181390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008F460(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FEEC0, &qword_100181390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008F4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_1001FEEC0, &qword_100181390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008F538(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_10008F554(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10008F568(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10008F5BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_10008F62C(int a1, id a2, void (*a3)(void))
{
  v4 = [a2 identifier];
  a3();
}

double sub_10008F698(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a4;
  v32 = a6;
  v33 = a3;
  v30 = a5;
  v31 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v16, v13);
  v18 = swift_allocObject();
  v19 = v31;
  v21 = v32;
  v20 = v33;
  v18[2] = v30;
  v18[3] = v21;
  v22 = v34;
  v23 = v35;
  v18[4] = a2;
  v18[5] = v23;
  v18[6] = v20;
  v18[7] = v22;
  v18[8] = v19;
  aBlock[4] = sub_100099DD4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2BB0;
  v24 = _Block_copy(aBlock);
  v25 = a2;
  v26 = v23;

  v27 = v19;
  static DispatchQoS.unspecified.getter();
  v38 = &_swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v37 + 8))(v9, v7);
  (*(v10 + 8))(v12, v36);

  return result;
}

double sub_10008FA64(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = &_swiftEmptyArrayStorage;
  v14 = [a1 imageLocators];
  if (v14)
  {
    v15 = a3;
    v16 = v14;
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_1001FC820 != -1)
    {
      swift_once();
    }

    v18 = sub_100107734(v17);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v13 + 16) = v18;
    &_swiftEmptyArrayStorage, v26, v27, v28, v29, v30, v31, v32;
    a3 = v15;
  }

  if (_UISolariumEnabled())
  {
    v33 = 2;
  }

  else
  {
    v33 = 3;
  }

  v34 = swift_allocObject();
  v34[2] = a6;
  v34[3] = a7;
  v34[4] = v13;
  v34[5] = a1;
  v34[6] = a2;
  v34[7] = v33;
  v34[8] = a3;
  v34[9] = a4;
  swift_retain_n();

  v35 = a2;
  v36 = a1;
  v37 = [v36 iconLocator];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (qword_1001FC820 != -1)
    {
      swift_once();
    }

    v42 = qword_10020A588;

    sub_10010D858(v39, v41, v42, sub_100099E70, v34);
    v41, v43, v44, v45, v46, v47, v48, v49;

LABEL_12:

    return result;
  }

  v99 = a3;
  v100 = a6;
  v51 = (*(a7 + 24))(a6, a7);
  v52 = qword_1001FC738;
  v53 = swift_retain_n();
  if (v52 != -1)
  {
    v53 = swift_once();
    v98 = v35;
    if (v51)
    {
      goto LABEL_15;
    }

LABEL_28:
    sub_100099EA4();
    swift_allocError();
    *v82 = 0;
    swift_errorRetain();
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v97 = qword_10020A4F8;
    LODWORD(v96) = static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    v84 = Error.localizedDescription.getter();
    v86 = v85;
    *(v83 + 56) = &type metadata for String;
    *(v83 + 64) = sub_10003DFBC();
    *(v83 + 32) = v84;
    *(v83 + 40) = v86;
    os_log(_:dso:log:type:_:)("Instructional prompt icon loading error: %@", 43, 2, &_mh_execute_header, v97, v96, v83);
    v83, v87, v88, v89, v90, v91, v92, v93;

    sub_100090200(0, v13, v36, v98, v33, v99, a4, v100, a7);

    return result;
  }

  v98 = v35;
  if (!v51)
  {
    goto LABEL_28;
  }

LABEL_15:
  if (qword_1001FEED8)
  {
    v96 = &v94;
    __chkstk_darwin(v53);
    v97 = v51;
    sub_10003C49C(&qword_1001FDF90, &unk_10017FE20);
    OS_dispatch_queue.sync<A>(execute:)();
    v54 = v101;
    if (v101)
    {
      if (qword_1001FC820 != -1)
      {
        swift_once();
      }

      v55 = qword_10020A588;
      v56 = [v54 primaryAssetLocator];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      sub_10010D800(v57, v59, v55, sub_100099E70, v34);

      v59, v60, v61, v62, v63, v64, v65, v66;

      v67 = v97;

      goto LABEL_12;
    }

    sub_100099EA4();
    swift_allocError();
    *v70 = 2;
    swift_errorRetain();
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v96 = qword_10020A4F8;
    v95 = static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
  }

  else
  {
    sub_100099EA4();
    swift_allocError();
    *v68 = 1;
    v97 = v51;
    swift_errorRetain();
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v96 = qword_10020A4F8;
    v95 = static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
  }

  v71 = Error.localizedDescription.getter();
  v73 = v72;
  *(v69 + 56) = &type metadata for String;
  *(v69 + 64) = sub_10003DFBC();
  *(v69 + 32) = v71;
  *(v69 + 40) = v73;
  os_log(_:dso:log:type:_:)("Instructional prompt icon loading error: %@", 43, 2, &_mh_execute_header, v96, v95, v69);
  v69, v74, v75, v76, v77, v78, v79, v80;

  sub_100090200(0, v13, v36, v98, v33, v99, a4, v100, a7);

  v81 = v97;

  return result;
}

uint64_t sub_100090200(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a8;
  v31 = a5;
  v32 = a6;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v34 = *(v17 - 8);
  v35 = v17;
  __chkstk_darwin(v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v33 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  v21 = v31;
  v20[2] = v30;
  v20[3] = a9;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = a1;
  v22 = v32;
  v20[8] = v21;
  v20[9] = v22;
  v20[10] = a7;
  aBlock[4] = sub_100099F50;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2C50;
  v23 = _Block_copy(aBlock);
  v24 = a1;

  v25 = a3;
  v26 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v33;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v36 + 8))(v16, v14);
  return (*(v34 + 8))(v19, v35);
}

void sub_100090528(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  v14 = *(a1 + 16);

  v15 = [a2 instructions];
  v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v69 = [a2 instructionsStyle];
  v16 = [a2 localizedTitle];
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    (*(a9 + 16))(a8);
    if (v20)
    {
      v19 = v20;
    }

    else
    {
      v19 = 0xE000000000000000;
    }
  }

  v73 = a3;
  v75 = a6;
  v21 = [a2 localizedSubtitle];
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v25 = [a2 options];
  sub_10003C49C(&unk_1001FDF80, &qword_10017FE10);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = [a2 navigationBarActions];
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = type metadata accessor for SelfServiceInstructionsViewController();
  v30 = objc_allocWithZone(v29);
  *&v30[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_navigationBarActionsMaxCount] = 2;
  *&v30[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_defaultTransitionDuration] = 0x3FC999999999999ALL;
  v31 = _UISolariumEnabled();
  v32 = 15.0;
  if (v31)
  {
    v32 = 0.0;
  }

  *&v30[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_instructionsViewHorizontalSpacing] = v32;
  v33 = &v30[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_answer];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v30[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onButtonPress];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v30[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onDismiss];
  *v35 = 0;
  *(v35 + 1) = 0;
  *&v30[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_images] = v14;
  *&v30[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_instructions] = v70;
  *&v30[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_style] = v69;
  *&v30[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_options] = v26;
  if (*(v28 + 16) >= 3uLL)
  {
    sub_100098AE8(v28, v28 + 32, 0, 5uLL);
    v37 = v36;
    v28, v38, v39, v40, v41, v42, v43, v44;
    v28 = v37;
  }

  *&v30[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_navigationBarActions] = v28;
  v45 = String._bridgeToObjectiveC()();
  v19, v46, v47, v48, v49, v50, v51, v52;
  v53 = String._bridgeToObjectiveC()();
  v24, v54, v55, v56, v57, v58, v59, v60;
  v76.receiver = v30;
  v76.super_class = v29;
  v61 = objc_msgSendSuper2(&v76, "initWithTitle:detailText:icon:contentLayout:", v45, v53, a4, a5);

  v62 = swift_allocObject();
  *(v62 + 2) = v75;
  *(v62 + 3) = a7;
  *(v62 + 4) = a2;
  v63 = &v61[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onButtonPress];
  v64 = *&v61[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onButtonPress];
  v65 = *&v61[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onButtonPress + 8];
  *v63 = sub_100099FC8;
  v63[1] = v62;

  v66 = a2;
  v67 = [v73 navigationController];
  if (v67)
  {
    v68 = v67;
    [v67 pushViewController:v61 animated:1];
  }

  else
  {
    v68 = [v66 identifier];
    v75();
  }
}

uint64_t sub_100090948(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = a1;
    swift_errorRetain();
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v5 = qword_10020A4F8;
    v6 = static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_10003DFBC();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:type:_:)("Instructional prompt icon loading error: %@", 43, 2, &_mh_execute_header, v5, v6, v7);
    v7, v11, v12, v13, v14, v15, v16, v17;

    a1 = v4;
  }

  return a3(a1);
}

uint64_t sub_100090A9C()
{
  sub_10003C52C(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

id sub_100090B08()
{
  result = [objc_allocWithZone(type metadata accessor for SuiteManager()) init];
  qword_10020A3C8 = result;
  return result;
}

void sub_100090B38(uint64_t a1)
{
  v1 = MobileGestalt_get_current_device();
  if (v1)
  {
    v2 = v1;
    v3 = MobileGestalt_copy_serialNumber_obj();

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    qword_1001FEED0 = v4;
    qword_1001FEED8 = v6;
  }

  else
  {
    __break(1u);
  }
}

void sub_100090BB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_6;
  }

  v10 = sub_100064AFC(a2, a3);
  if ((v11 & 1) == 0)
  {
    v9, v11, v12, v13, v14, v15, v16, v17;
    goto LABEL_6;
  }

  v18 = *(*(v9 + 56) + 8 * v10);

  v9, v19, v20, v21, v22, v23, v24, v25;
  v26 = *(v18 + 24);
  v27 = v26;

  if (!v26)
  {
LABEL_6:
    v28 = 0;
    goto LABEL_7;
  }

  v28 = [v27 suiteID];

LABEL_7:
  *a4 = v28;
}

DARootViewController *sub_100090CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, DARootViewController **a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_6;
  }

  v10 = sub_100064AFC(a2, a3);
  if ((v11 & 1) == 0)
  {
    v9, v11, v12, v13, v14, v15, v16, v17;
    goto LABEL_6;
  }

  v18 = *(*(v9 + 56) + 8 * v10);

  v9, v19, v20, v21, v22, v23, v24, v25;
  v26 = *(v18 + 24);
  v27 = v26;

  if (!v26)
  {
LABEL_6:
    result = &_swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v28 = [v27 history];

  sub_10003E110(0, &qword_1001FDEB8, &off_1001BA128);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_100090DD0(v29);
LABEL_7:
  *a4 = result;
  return result;
}

unint64_t sub_100090DD0(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v1 = a1;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      v27 = v19;
      v2 = sub_100068EB4(v19, 0);
      v28 = sub_100065C5C(v2 + 32, v27, v1);
      v1 = v29;
      v28, v30, v29, v31, v32, v33, v34, v35;
      if (v1 != v27)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {
      v1, v20, v21, v22, v23, v24, v25, v26;
      v2 = &_swiftEmptyArrayStorage;
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v3 = *(v2 + 16);
        v4 = v3 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v3 = a1;
    v4 = a1 / 2;
LABEL_6:
    if (v3 + 1 < 3)
    {
      return v2;
    }

    v6 = -v4;
    v7 = 4;
    while (1)
    {
      v8 = v3 - (v7 - 3);
      if (__OFSUB__(v3, v7 - 3))
      {
        break;
      }

      a1 = v7 - 4;
      if (v7 - 4 != v8)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v9)
          {
            goto LABEL_32;
          }

          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          v10 = *(v2 + 8 * v8 + 32);
          v11 = *(v2 + 8 * v7);
          v12 = v10;
        }

        v13 = v12;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_10003E3D8();
          v14 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v2 & 0xFFFFFFFFFFFFFF8;
        v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v7);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v7) = v13;

        if ((v2 & 0x8000000000000000) != 0 || v14)
        {
          a1 = sub_10003E3D8();
          v2 = a1;
          v15 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v8 >= *(v15 + 16))
        {
          goto LABEL_34;
        }

        v17 = v15 + 8 * v8;
        v18 = *(v17 + 32);
        *(v17 + 32) = v11;
      }

      ++v7;
      if (v6 + v7 == 4)
      {
        return v2;
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
  }
}

DARootViewController *sub_100090FE0()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  *&v0[OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager;
  *&v0[v7] = [objc_allocWithZone(type metadata accessor for DeviceManager()) init];
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  *&v0[v8] = sub_1000D5B1C(&_swiftEmptyArrayStorage);
  v40 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registryUpdateQueue;
  v39[1] = sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10003E230(&unk_1001FD740, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10003C49C(&unk_1001FCEA0, &unk_10017ED50);
  sub_10003E278(&qword_1001FD750, &unk_1001FCEA0, &unk_10017ED50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v41 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v42);
  *&v0[v40] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics12SuiteManager_accessoryViewSymbolPointSize] = 0x403E000000000000;
  v9 = &v0[OBJC_IVAR____TtC11Diagnostics12SuiteManager_diagnosticEventID];
  v10 = type metadata accessor for SuiteManager();
  *v9 = 0;
  *(v9 + 1) = 0;
  v49.receiver = v1;
  v49.super_class = v10;
  v42 = v10;
  v11 = objc_msgSendSuper2(&v49, "init");
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  if (qword_1001FC810 != -1)
  {
    swift_once();
  }

  v15 = qword_10020A578;
  v16 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager;
  v17 = *(&v13->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 mainQueue];
  v21 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v47 = sub_10009A4C0;
  v48 = v21;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100060B2C;
  v46 = &unk_1001C3060;
  v22 = _Block_copy(&aBlock);

  v23 = [v14 addObserverForName:v15 object:v19 queue:v20 usingBlock:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();

  v24 = [v12 defaultCenter];
  if (qword_1001FC818 != -1)
  {
    swift_once();
  }

  v25 = qword_10020A580;
  v26 = *(&v13->super.super.super.super.isa + v16);
  v27 = [v18 mainQueue];
  v28 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v47 = sub_10009A4C8;
  v48 = v28;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100060B2C;
  v46 = &unk_1001C3088;
  v29 = _Block_copy(&aBlock);

  v30 = [v24 addObserverForName:v25 object:v26 queue:v27 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();

  v31 = *(&v13->super.super.super.super.isa + v16);
  v46 = v42;
  v47 = &off_1001C2908;
  aBlock = v13;
  v32 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate;
  swift_beginAccess();
  v33 = v31;
  sub_10009A4D0(&aBlock, v31 + v32);
  swift_endAccess();

  LODWORD(v31) = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v31)
  {
    v34 = objc_opt_self();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = sub_10009A540;
    v48 = v35;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100031FA8;
    v46 = &unk_1001C30B0;
    v36 = _Block_copy(&aBlock);

    v37 = String._bridgeToObjectiveC()();
    [v34 addShutdownTask:v36 forReason:v37];

    _Block_release(v36);
  }

  return v13;
}

void sub_100091738(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Notification.userInfo.getter();
  if (v11)
  {
    v12 = v11;
    strcpy(v69, "deviceStateKey");
    HIBYTE(v69[1]) = -18;
    AnyHashable.init<A>(_:)();
    if (*(v12 + 16) && (v20 = sub_100064B74(aBlock), (v13 & 1) != 0))
    {
      sub_10003E010(*(v12 + 56) + 32 * v20, v70);
      sub_10003DB48(aBlock);
      v12, v21, v22, v23, v24, v25, v26, v27;
      sub_10003E110(0, &qword_1001FF0E0, off_1001BA118);
      if (swift_dynamicCast())
      {
        v65 = v8;
        v66 = v4;
        v64 = v69[0];
        v28 = [v69[0] serialNumber];
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        if (qword_1001FC7B0 != -1)
        {
          swift_once();
        }

        v31 = qword_10020A4F8;
        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_10017EC00;
        *(v32 + 56) = &type metadata for String;
        *(v32 + 64) = sub_10003DFBC();
        v33 = v67;
        *(v32 + 32) = v67;
        *(v32 + 40) = v30;

        v34 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("[SuiteManager] Device with %@ serial number has been added", 58, 2, &_mh_execute_header, v31, v34, v32);
        v32, v35, v36, v37, v38, v39, v40, v41;
        Strong = swift_unknownObjectUnownedLoadStrong();
        v43 = *&Strong[OBJC_IVAR____TtC11Diagnostics12SuiteManager_registryUpdateQueue];

        v63 = &v63;
        __chkstk_darwin(v44);
        *(&v63 - 4) = a2;
        *(&v63 - 3) = v33;
        *(&v63 - 2) = v30;
        type metadata accessor for SuiteManagerRegistryEntry();
        OS_dispatch_queue.sync<A>(execute:)();

        v45 = aBlock[0];
        v46 = *(aBlock[0] + 24);
        v47 = v64;
        *(aBlock[0] + 24) = v64;
        v64 = v47;

        v48 = swift_unknownObjectUnownedLoadStrong();
        v49 = *&v48[OBJC_IVAR____TtC11Diagnostics12SuiteManager_registryUpdateQueue];

        static DispatchWorkItemFlags.barrier.getter();
        v50 = swift_allocObject();
        v50[2] = a2;
        v50[3] = v33;
        v50[4] = v30;
        v50[5] = v45;
        aBlock[4] = sub_10009A5B8;
        aBlock[5] = v50;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031FA8;
        aBlock[3] = &unk_1001C3150;
        v51 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v51);

        (*(v66 + 8))(v6, v3);
        (*(v65 + 8))(v10, v7);

        v52 = *(v45 + 32);
        if (v52)
        {
          v53 = *(v45 + 40);

          v52(v54);
          sub_10003C52C(v52, v53);
        }

        v55 = swift_unknownObjectUnownedLoadStrong();
        sub_1000935DC(v67, v30);

        v30, v56, v57, v58, v59, v60, v61, v62;
      }
    }

    else
    {
      v12, v13, v14, v15, v16, v17, v18, v19;
      sub_10003DB48(aBlock);
    }
  }
}

void sub_100091C6C(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v9 = *&Strong[v8];

  if (*(v9 + 16) && (v10 = sub_100064AFC(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    type metadata accessor for SuiteManagerRegistryEntry();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
  }

  v9, v13, v14, v15, v16, v17, v18, v19;
  *a4 = v12;
}

void sub_100091D4C(uint64_t a1, uint64_t a2, DARootViewController *a3, uint64_t a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *&Strong[v8];
  *&Strong[v8] = 0x8000000000000000;
  sub_100142594(a4, a2, a3, isUniquelyReferenced_nonNull_native);
  a3, v10, v11, v12, v13, v14, v15, v16;
  *&Strong[v8] = v17;
  swift_endAccess();
}

double sub_100091E10(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Notification.userInfo.getter();
  if (v10)
  {
    v12 = v10;
    strcpy(v103, "deviceStateKey");
    HIBYTE(v103[1]) = -18;
    AnyHashable.init<A>(_:)();
    if (*(v12 + 16) && (v20 = sub_100064B74(aBlock), (v13 & 1) != 0))
    {
      sub_10003E010(*(v12 + 56) + 32 * v20, v104);
      sub_10003DB48(aBlock);
      v12, v21, v22, v23, v24, v25, v26, v27;
      sub_10003E110(0, &qword_1001FF0E0, off_1001BA118);
      if (swift_dynamicCast())
      {
        v99 = v7;
        v100 = v3;
        v101 = v103[0];
        v28 = [v103[0] serialNumber];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        if (qword_1001FC7B0 != -1)
        {
          swift_once();
        }

        v32 = qword_10020A4F8;
        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_10017EC00;
        *(v33 + 56) = &type metadata for String;
        *(v33 + 64) = sub_10003DFBC();
        *(v33 + 32) = v29;
        *(v33 + 40) = v31;

        v34 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("[SuiteManager] Device with %@ serial number has been removed", 60, 2, &_mh_execute_header, v32, v34, v33);
        v33, v35, v36, v37, v38, v39, v40, v41;
        Strong = swift_unknownObjectUnownedLoadStrong();
        sub_100093C8C(v29, v31);

        v31, v43, v44, v45, v46, v47, v48, v49;
        v50 = swift_unknownObjectUnownedLoadStrong();
        v51 = *&v50[OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager];

        v52 = [v101 serialNumber];
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v56 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
        swift_beginAccess();
        v57 = *&v51[v56];
        if (*(v57 + 16))
        {

          v58 = sub_100064AFC(v53, v55);
          if (v59)
          {
            v60 = *(*(v57 + 56) + 8 * v58);
            swift_unknownObjectRetain();
            v57, v61, v62, v63, v64, v65, v66, v67;
            [v60 end];

            v55, v68, v69, v70, v71, v72, v73, v74;
            swift_unknownObjectRelease();
LABEL_15:
            v90 = swift_unknownObjectUnownedLoadStrong();
            v91 = *&v90[OBJC_IVAR____TtC11Diagnostics12SuiteManager_registryUpdateQueue];

            static DispatchWorkItemFlags.barrier.getter();
            v92 = swift_allocObject();
            v93 = swift_unknownObjectUnownedLoadStrong();
            swift_unknownObjectWeakInit();

            v94 = swift_allocObject();
            v95 = v101;
            *(v94 + 16) = v92;
            *(v94 + 24) = v95;
            aBlock[4] = sub_10009A548;
            aBlock[5] = v94;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100031FA8;
            aBlock[3] = &unk_1001C3100;
            v96 = _Block_copy(aBlock);

            v97 = v95;
            static DispatchQoS.unspecified.getter();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v96);

            (*(v100 + 8))(v5, v2);
            (*(v99 + 8))(v9, v6);

            return result;
          }

          v55, v83, v84, v85, v86, v87, v88, v89;
          v82 = v57;
        }

        else
        {

          v82 = v55;
        }

        v82, v75, v76, v77, v78, v79, v80, v81;
        goto LABEL_15;
      }
    }

    else
    {
      v12, v13, v14, v15, v16, v17, v18, v19;
      sub_10003DB48(aBlock);
    }
  }

  return result;
}

void sub_100092388(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 serialNumber];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    swift_beginAccess();
    sub_10013C38C(0, v6, v8);
    swift_endAccess();
  }
}

void sub_100092448(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v3 = qword_10020A4F8;
    v4 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("[SuiteManager] Archiving for CheckerBoard shutdown", 50, 2, &_mh_execute_header, v3, v4, &_swiftEmptyArrayStorage);
    if (qword_1001FC738 != -1)
    {
      swift_once();
    }

    sub_10009617C(qword_1001FEED0, qword_1001FEED8);
    v5 = objc_opt_self();
    v6 = String._bridgeToObjectiveC()();
    [v5 removeShutdownTask:v6];
  }
}

uint64_t sub_1000925B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_sync_enter(v4);
  if (a2)
  {
    v24[1] = *&v4[OBJC_IVAR____TtC11Diagnostics12SuiteManager_registryUpdateQueue];

    static DispatchWorkItemFlags.barrier.getter();
    v16 = swift_allocObject();
    v24[0] = v8;
    v17 = a3;
    v18 = v16;
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    v19[5] = v17;
    aBlock[4] = sub_10009A418;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C2F98;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v9 + 8))(v11, v24[0]);
    (*(v13 + 8))(v15, v12);

    return objc_sync_exit(v4);
  }

  else
  {
    v22 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v23 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "[SuiteManager] Unable to start suite manager, serial number is nil", 66, 2, &_swiftEmptyArrayStorage);

    return objc_sync_exit(v4);
  }
}

double sub_1000928DC(uint64_t a1, uint64_t a2, DARootViewController *a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v7 - 8);
  __chkstk_darwin(v7);
  v67 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v70 = a2;
    v65 = a4;
    v18 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
    swift_beginAccess();
    v19 = *&v17[v18];
    v20 = *(v19 + 16);

    v64 = v7;
    if (v20 && (v21 = sub_100064AFC(v70, a3), (v22 & 1) != 0))
    {
      v23 = *(*(v19 + 56) + 8 * v21);
    }

    else
    {
      type metadata accessor for SuiteManagerRegistryEntry();
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0u;
      *(v23 + 40) = 0u;
    }

    v19, v24, v25, v26, v27, v28, v29, v30;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = *&v17[v18];
    *&v17[v18] = 0x8000000000000000;
    v32 = v70;
    sub_100142594(v23, v70, a3, isUniquelyReferenced_nonNull_native);
    a3, v33, v34, v35, v36, v37, v38, v39;
    *&v17[v18] = v72;
    swift_endAccess();
    if (*(v23 + 24))
    {
      sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
      (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
      v63 = static OS_dispatch_queue.global(qos:)();
      (*(v12 + 8))(v14, v11);
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      v41[2] = v40;
      v41[3] = v32;
      v42 = v65;
      v41[4] = a3;
      v41[5] = v42;
      aBlock[4] = sub_10009A47C;
      aBlock[5] = v41;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C3010;
      v43 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v72 = &_swiftEmptyArrayStorage;
      sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
      sub_10003E278(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0);
      v44 = v67;
      v45 = v64;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v46 = v63;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v43);

      (*(v69 + 8))(v44, v45);
      (*(v66 + 8))(v10, v68);
    }

    else
    {
      v47 = static os_log_type_t.error.getter();
      sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
      v48 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "[SuiteManager] Unable to start suite manager, state for a serial number is not available", 88, 2, &_swiftEmptyArrayStorage);

      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_10017EC00;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_10003DFBC();
      v50 = v70;
      *(v49 + 32) = v70;
      *(v49 + 40) = a3;

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("[SuiteManager] Setting availability handler for %s", v63);
      v49, v51, v52, v53, v54, v55, v56, v57;
      v58 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v59 = swift_allocObject();
      v59[2] = v58;
      v59[3] = v50;
      v60 = v65;
      v59[4] = a3;
      v59[5] = v60;
      v61 = *(v23 + 32);
      v62 = *(v23 + 40);
      *(v23 + 32) = sub_10009A424;
      *(v23 + 40) = v59;

      sub_10003C52C(v61, v62);
    }
  }

  return result;
}

void sub_100092FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1000925B4(a2, a3, a4);
  }
}

void sub_10009302C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10017EC00;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_10003DFBC();
    *(v9 + 32) = a2;
    *(v9 + 40) = a3;

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("[SuiteManager] Starting device %s", v18);
    v9, v10, v11, v12, v13, v14, v15, v16;
    v17 = *&v8[OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager];
    sub_100102FA4(a2, a3, a4);
  }
}

void sub_100093180(uint64_t a1, DARootViewController *a2, unint64_t a3)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = v4;
  if (!v4 || (v6 = [v4 getPairedDevices]) == 0)
  {
LABEL_42:
    v70 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v71 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v71, v70))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v82[0] = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_100056B7C(a1, a2, v82);
      _os_log_impl(&_mh_execute_header, v71, v70, "[SuiteManager] Unable to find the paired device with serial number: %s", v72, 0xCu);
      sub_100044554(v73);
    }

    return;
  }

  v7 = v6;
  sub_10003E110(0, &unk_1001FF0D0, NRDevice_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v83 = &_swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v74 = a3;
    v75 = v5;
    v17 = 0;
    a3 = v8 & 0xC000000000000001;
    v18 = v8 & 0xFFFFFFFFFFFFFF8;
    v19 = NRDevicePropertySerialNumber;
    v76 = NRDevicePropertySerialNumber;
    while (1)
    {
      if (a3)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v18 + 16))
        {
          goto LABEL_31;
        }

        v28 = *(v8 + 8 * v17 + 32);
      }

      v29 = v28;
      v5 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if ([v28 valueForProperty:v19])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v80 = 0u;
        v81 = 0u;
      }

      v82[0] = v80;
      v82[1] = v81;
      if (!*(&v81 + 1))
      {
        sub_10003DD84(v82, &unk_1001FD720, &unk_10017ED20);
LABEL_7:
        object = String.lowercased()()._object;
        goto LABEL_8;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_7;
      }

      v30 = i;
      v31 = v18;
      v32 = a3;
      v33 = String.lowercased()();
      v79, v33._object, v34, v35, v36, v37, v38, v39;
      v45 = String.lowercased()();
      object = v45._object;
      if (v33._object)
      {
        if (v33._countAndFlagsBits == v45._countAndFlagsBits && v33._object == v45._object)
        {
          v33._object, v45._object, v45._countAndFlagsBits, v40, v41, v42, v43, v44;
          v45._object, v46, v47, v48, v49, v50, v51, v52;
          goto LABEL_25;
        }

        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v33._object, v54, v55, v56, v57, v58, v59, v60;
        v45._object, v61, v62, v63, v64, v65, v66, v67;
        if (v53)
        {
LABEL_25:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        a3 = v32;
        v18 = v31;
        i = v30;
        v19 = v76;
        goto LABEL_9;
      }

      v18 = v31;
      i = v30;
      v19 = v76;
LABEL_8:

      object, v21, v22, v23, v24, v25, v26, v27;
LABEL_9:
      ++v17;
      if (v5 == i)
      {
        v68 = v83;
        v5 = v75;
        a3 = v74;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v68 = &_swiftEmptyArrayStorage;
LABEL_34:
  v8, v9, v10, v11, v12, v13, v14, v15;
  if ((v68 & 0x8000000000000000) != 0 || (v68 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (!*&v68->hostAppBundleIdentifier[8])
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_37:
  if ((v68 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();

    goto LABEL_39;
  }

  v69 = *&v68->hostAppBundleIdentifier[8];

  if (v69)
  {
LABEL_39:
    sub_1000925B4(a1, a2, a3);

    return;
  }

  __break(1u);
}

void sub_1000935DC(uint64_t a1, DARootViewController *a2)
{
  v5 = type metadata accessor for DispatchQoS();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v26 = a1;
  v27 = a2;
  sub_10003C49C(&unk_1001FF0B0, qword_1001816E0);
  OS_dispatch_queue.sync<A>(execute:)();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = *(aBlock[0] + 24);
    if (v13)
    {
      v14 = v13;
      static DispatchWorkItemFlags.barrier.getter();
      v15 = swift_allocObject();
      v15[2] = v12;
      v15[3] = v14;
      v15[4] = v2;
      aBlock[4] = sub_10009A3A0;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C2F20;
      v16 = _Block_copy(aBlock);
      v17 = v14;

      v18 = v2;
      static DispatchQoS.unspecified.getter();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v16);

      (*(v24 + 8))(v7, v5);
      (*(v9 + 8))(v11, v8);

      return;
    }
  }

  v19 = static os_log_type_t.error.getter();
  sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  v20 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100056B7C(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v20, v19, "[SuiteManager] Unable to find entry or state matching the serial number: %s", v21, 0xCu);
    sub_100044554(v22);
  }
}

void sub_100093964(uint64_t a1, void *a2, void *a3)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a2;
  v7 = a3;
  v8 = a2;
  v9 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v10 = *(a1 + 48);
  *(a1 + 48) = v9;
}

void sub_100093A2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10003C49C(&qword_1001FF0C8, &qword_100181728);
  NSKeyValueObservedChange.newValue.getter();
  v6 = v37;
  if (v37 >= 2)
  {
    v7 = v37;
    if (([v7 integerValue] & 0x8000000000000000) == 0)
    {
      v8 = a3 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 8);
        ObjectType = swift_getObjectType();
        v11 = [a4 serialNumber];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = [a4 suiteID];
        (*(v9 + 32))(a3, v7, v12, v14, v15, ObjectType, v9);
        v14, v16, v17, v18, v19, v20, v21, v22;

        swift_unknownObjectRelease();
      }

      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10017EC10;
      v24 = [a4 serialNumber];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_10003DFBC();
      *(v23 + 32) = v25;
      *(v23 + 40) = v27;
      v28 = [v7 integerValue];
      *(v23 + 96) = &type metadata for Int;
      *(v23 + 104) = &protocol witness table for Int;
      *(v23 + 72) = v28;
      os_log(_:dso:log:type:_:)("[%s] Progress updated to %d", v36, v37);
      v23, v29, v30, v31, v32, v33, v34, v35;
    }

    sub_100079A54(v6);
    sub_100079A54(v6);
  }
}

double sub_100093C8C(uint64_t a1, uint64_t a2)
{
  v16 = type metadata accessor for DispatchQoS();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_10009A34C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2ED0;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v6, v16);
  (*(v8 + 8))(v10, v7);

  return result;
}

void sub_100093EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
    v7 = Strong;
    swift_beginAccess();
    v8 = *&v7[v6];

    if (*(v8 + 16) && (v16 = sub_100064AFC(a2, a3), (v9 & 1) != 0))
    {
      v17 = *(*(v8 + 56) + 8 * v16);

      v8, v18, v19, v20, v21, v22, v23, v24;
      v25 = *(v17 + 48);
      *(v17 + 48) = 0;
    }

    else
    {
      v8, v9, v10, v11, v12, v13, v14, v15;
    }
  }
}

void sub_100093FD8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = *(v2 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_registryUpdateQueue);

    static DispatchWorkItemFlags.barrier.getter();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a1;
    v14[4] = a2;
    aBlock[4] = sub_10009A340;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C2E80;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v16 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v19 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v19, "[SuiteManager] Unable to reset state, serial number is nil", 58, 2, &_swiftEmptyArrayStorage);
    v17 = v19;
  }
}

void sub_1000942DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
    v7 = Strong;
    swift_beginAccess();
    v8 = *&v7[v6];

    if (*(v8 + 16) && (v16 = sub_100064AFC(a2, a3), (v9 & 1) != 0))
    {
      v17 = *(*(v8 + 56) + 8 * v16);

      v8, v18, v19, v20, v21, v22, v23, v24;
      v25 = *(v17 + 24);

      [v25 resetState];
    }

    else
    {
      v8, v9, v10, v11, v12, v13, v14, v15;
    }
  }

  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
    v28 = v26;
    swift_beginAccess();
    v29 = *&v28[v27];

    if (*(v29 + 16) && (v37 = sub_100064AFC(a2, a3), (v30 & 1) != 0))
    {
      v38 = *(*(v29 + 56) + 8 * v37);

      v29, v39, v40, v41, v42, v43, v44, v45;
      v46 = *(v38 + 24);
      v47 = v46;

      if (v46)
      {
        [v47 setPhase:0];
      }
    }

    else
    {
      v29, v30, v31, v32, v33, v34, v35, v36;
    }
  }
}

void sub_100094488(uint64_t a1, DARootViewController *a2, void *a3, char a4)
{
  if (a2)
  {
    __chkstk_darwin(a1);

    sub_10003C49C(&unk_1001FF0B0, qword_1001816E0);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v37)
    {
      v9 = *(v37 + 24);
      if (v9)
      {
        v10 = &v4[OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v10 + 1);
          ObjectType = swift_getObjectType();
          v12 = swift_allocObject();
          v12[2] = v4;
          v12[3] = v9;
          v12[4] = a3;
          v12[5] = v37;
          v12[6] = a1;
          v12[7] = a2;
          v13 = *(v11 + 56);
          v14 = v9;
          v15 = v4;
          v16 = a3;

          v13(v15, v16, a4 & 1, sub_10009A2B4, v12, ObjectType, v11);

          swift_unknownObjectRelease();
        }

        else
        {

          a2, v27, v28, v29, v30, v31, v32, v33;
        }

        return;
      }
    }

    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10017EC00;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_10003DFBC();
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v19 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("[SuiteManager] Unable to obtain device state for serial number %s, suite won't be started", v34);
    v18, v20, v21, v22, v23, v24, v25, v26;

    return;
  }

  v17 = static os_log_type_t.error.getter();
  sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  v36 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v36, "[SuiteManager] Unable to start suite, serial number is nil", 58, 2, &_swiftEmptyArrayStorage);
}

double sub_100094794(char *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  if (qword_1001FC738 != -1)
  {
    a1 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(a1);
    sub_10003C49C(&unk_1001FF0A0, &qword_10017FE18);
    OS_dispatch_queue.sync<A>(execute:)();
    if (aBlock[0])
    {

      return result;
    }
  }

  v13 = *&v11[OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager];
  v14 = [a2 serialNumber];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v19 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
  swift_beginAccess();
  v20 = *(v13 + v19);
  v21 = *(v20 + 16);

  v22 = v11;
  if (v21)
  {

    v23 = sub_100064AFC(v15, v17);
    if (v24)
    {
      v31 = *(*(v20 + 56) + 8 * v23);
      swift_unknownObjectRetain();
      v20, v32, v33, v34, v35, v36, v37, v38;
      if ([v31 respondsToSelector:"requestSuiteStart:completionHandler:"])
      {
        aBlock[4] = sub_10009A30C;
        aBlock[5] = v18;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10009898C;
        aBlock[3] = &unk_1001C2E30;
        v39 = _Block_copy(aBlock);
        [v31 requestSuiteStart:a3 completionHandler:v39];
        swift_unknownObjectRelease();
        v17, v40, v41, v42, v43, v44, v45, v46;
        _Block_release(v39);
      }

      else
      {
        swift_unknownObjectRelease();
        v17, v79, v80, v81, v82, v83, v84, v85;
      }

      return result;
    }

    v20, v24, v25, v26, v27, v28, v29, v30;
  }

  sub_10009A1F4();
  v47 = swift_allocError();
  *v48 = v15;
  v48[1] = v17;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_10017EC00;
  swift_getErrorValue();

  swift_errorRetain();
  v50 = Error.localizedDescription.getter();
  v52 = v51;
  *(v49 + 56) = &type metadata for String;
  *(v49 + 64) = sub_10003DFBC();
  *(v49 + 32) = v50;
  *(v49 + 40) = v52;
  sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  v53 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("[SuiteManager] Error occurred upon suite start %s", v86);
  v49, v54, v55, v56, v57, v58, v59, v60;

  v61 = &v22[OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v62 = *(v61 + 1);
    ObjectType = swift_getObjectType();
    v64 = *(v62 + 24);
    swift_errorRetain();
    v64(v22, a3, 0, v47, ObjectType, v62);

    swift_unknownObjectRelease();
    v17, v65, v66, v67, v68, v69, v70, v71;
  }

  else
  {

    v17, v72, v73, v74, v75, v76, v77, v78;
  }

  return result;
}

void sub_100094C0C(void *a1, const char *a2, char *a3, uint64_t a4, void *a5, uint64_t a6, char *a7, _BYTE *a8, const char *a9, char *a10)
{
  if (a6)
  {
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    swift_errorRetain();
    v14 = Error.localizedDescription.getter();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_10003DFBC();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v17 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("[SuiteManager] Error occurred upon suite start %s", v38);
    v13, v18, v19, v20, v21, v22, v23, v24;

    v25 = &a7[OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 1);
      ObjectType = swift_getObjectType();
      v28 = *(v26 + 24);
      swift_errorRetain();
      v28(a7, a1, 0, a6, ObjectType, v26);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v30 = &a7[OBJC_IVAR____TtC11Diagnostics12SuiteManager_diagnosticEventID];
    v31 = *&a7[OBJC_IVAR____TtC11Diagnostics12SuiteManager_diagnosticEventID + 8];
    *v30 = a2;
    *(v30 + 1) = a3;
    v31, a2, a3, a4, a5, 0, a7, a8;
    if (a8[16])
    {
      sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);

      v32 = a1;
      v33 = static OS_os_log.default.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        *(v35 + 4) = v32;
        *v36 = v32;
        v37 = v32;
        _os_log_impl(&_mh_execute_header, v33, v34, "[SuiteManager] Suite cancellation was pending at the time %@ was started. Cancelling now.", v35, 0xCu);
        sub_10003DD84(v36, &qword_1001FF0C0, &unk_10017ED00);
      }

      sub_100094F00(a9, a10);
    }

    else
    {
    }
  }
}

double sub_100094F00(const char *a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v10);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v95 = v12;
    v96 = v7;
    v97 = v11;
    __chkstk_darwin(v11);
    *(&v94 - 4) = v2;
    *(&v94 - 3) = a1;
    *(&v94 - 2) = a2;

    sub_10003C49C(&unk_1001FF0B0, qword_1001816E0);
    OS_dispatch_queue.sync<A>(execute:)();
    v15 = aBlock;
    if (aBlock)
    {
      v16 = aBlock[3];
      if (v16)
      {
        v17 = v16;
        a2, v18, v19, v20, v21, v22, v23, v24;
        v25 = sub_100089BF8(v2[OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint], &off_1001BDC00);
        if (v25)
        {
          if (qword_1001FC738 != -1)
          {
            v25 = swift_once();
          }

          if (!qword_1001FEED8 || (__chkstk_darwin(v25), *(&v94 - 4) = v2, *(&v94 - 3) = v26, *(&v94 - 2) = v27, sub_10003C49C(&unk_1001FF0A0, &qword_10017FE18), OS_dispatch_queue.sync<A>(execute:)(), !aBlock))
          {
            sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
            v75 = static OS_os_log.default.getter();
            v76 = static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)("[SuiteManager] Suite cancelled, but current suite ID is nil. Cancellation is pending suite start.", 97, 2, &_mh_execute_header, v75, v76, &_swiftEmptyArrayStorage);

            static DispatchWorkItemFlags.barrier.getter();
            v102 = sub_10009A248;
            v103 = v15;
            aBlock = _NSConcreteStackBlock;
            v99 = 1107296256;
            v100 = sub_100031FA8;
            v101 = &unk_1001C2D90;
            v77 = _Block_copy(&aBlock);

            static DispatchQoS.unspecified.getter();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v77);

            (*(v96 + 8))(v9, v6);
            (*(v95 + 8))(v14, v97);
LABEL_23:

            return result;
          }
        }

        v28 = *&v2[OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager];
        v29 = [v17 serialNumber];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = swift_allocObject();
        v33[2] = v3;
        v33[3] = v17;
        v33[4] = v15;
        v34 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
        swift_beginAccess();
        v35 = *(v28 + v34);
        v36 = *(v35 + 16);
        v37 = v17;

        v38 = v3;
        if (v36)
        {

          v39 = sub_100064AFC(v30, v32);
          if (v40)
          {
            v47 = *(*(v35 + 56) + 8 * v39);
            swift_unknownObjectRetain();
            v35, v48, v49, v50, v51, v52, v53, v54;
            if ([v47 respondsToSelector:"requestSuiteFinishWithCompletionHandler:"])
            {
              v102 = sub_10009A1E8;
              v103 = v33;
              aBlock = _NSConcreteStackBlock;
              v99 = 1107296256;
              v100 = sub_100098A7C;
              v101 = &unk_1001C2D68;
              v55 = _Block_copy(&aBlock);
              [v47 requestSuiteFinishWithCompletionHandler:v55];
              swift_unknownObjectRelease();

              v32, v56, v57, v58, v59, v60, v61, v62;
              _Block_release(v55);
            }

            else
            {
              swift_unknownObjectRelease();

              v32, v87, v88, v89, v90, v91, v92, v93;
            }

            goto LABEL_23;
          }

          v35, v40, v41, v42, v43, v44, v45, v46;
        }

        sub_10009A1F4();
        v78 = swift_allocError();
        *v79 = v30;
        v79[1] = v32;

        sub_10009565C(v78, v38, v37, v15);

        v32, v80, v81, v82, v83, v84, v85, v86;

        return result;
      }
    }

    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_10017EC00;
    *(v66 + 56) = &type metadata for String;
    *(v66 + 64) = sub_10003DFBC();
    *(v66 + 32) = a1;
    *(v66 + 40) = a2;
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v67 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("[SuiteManager] Unable to obtain device state for serial number %s, suite won't be canceled", v94);
    v66, v68, v69, v70, v71, v72, v73, v74;

    return result;
  }

  v63 = static os_log_type_t.error.getter();
  sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  v97 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v97, "[SuiteManager] Unable to cancel suite, serial number is nil", 59, 2, &_swiftEmptyArrayStorage);
  v64 = v97;

  return result;
}

double sub_10009565C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v32 = a4;
  v30 = a3;
  v33 = type metadata accessor for DispatchQoS();
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    swift_errorRetain();
    v13 = Error.localizedDescription.getter();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_10003DFBC();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("[SuiteManager] Error occurred upon suite cancellation %s", v30);
    v12, v17, v18, v19, v20, v21, v22, v23;
  }

  v24 = a2 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 8);
    ObjectType = swift_getObjectType();
    v27 = [v30 suiteID];
    (*(v25 + 24))(a2, v27, 0, a1, ObjectType, v25);

    swift_unknownObjectRelease();
  }

  static DispatchWorkItemFlags.barrier.getter();
  aBlock[4] = sub_10009A254;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2DB8;
  v28 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  (*(v6 + 8))(v8, v33);
  (*(v9 + 8))(v11, v31);

  return result;
}

void sub_1000959E0(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, id))
{
  if (a3)
  {
    __chkstk_darwin(a1);
    sub_10003C49C(&unk_1001FF0B0, qword_1001816E0);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v45)
    {
      v7 = *(v45 + 24);
      if (v7 && (a1 >= 3 ? (v8 = 0) : (v8 = qword_100181800[a1]), v8 == *(v4 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint)))
      {
        v10 = v7;
        v11 = [v10 suitesAvailable];
        sub_10003E110(0, &unk_1001FF070, ASTSuite_ptr);
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v12 >> 62)
        {
          v20 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12, v13, v14, v15, v16, v17, v18, v19;
        if (v20 == 1)
        {
          v21 = [v10 suitesAvailable];
          v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v22;
          if (v22 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_16:

              if ((v30 & 0xC000000000000001) == 0)
              {
                if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return;
                }

                v31 = *(v30 + 32);
                goto LABEL_19;
              }

LABEL_30:
              v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:
              v39 = v31;
              v30, v32, v33, v34, v35, v36, v37, v38;
              v40 = [v39 suiteID];

              if (a4)
              {
                v41 = v40;
                a4(1, v40);
              }

              else
              {
              }

              return;
            }
          }

          else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v30, v23, v24, v25, v26, v27, v28, v29;
          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v42 = static OS_os_log.default.getter();
    v43 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("[SuiteManager] Unable to run a single suite - conditions were not met", 69, 2, &_mh_execute_header, v42, v43, &_swiftEmptyArrayStorage);

    if (a4)
    {
      a4(0, 0);
    }
  }

  else
  {
    v9 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v44 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v44, "[SuiteManager] Unable check starting conditions, serial number is nil", 69, 2, &_swiftEmptyArrayStorage);
  }
}

void sub_100095D84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_100064AFC(a2, a3);
    if (v11)
    {
      v18 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v18 = 0;
    }

    v9, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {
    v18 = 0;
  }

  *a4 = v18;
}

void sub_100095E3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  v9 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v10 = *(a1 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_16;
  }

  v11 = sub_100064AFC(a2, a3);
  if ((v12 & 1) == 0)
  {
    v10, v12, v13, v14, v15, v16, v17, v18;
    goto LABEL_16;
  }

  v19 = *(*(v10 + 56) + 8 * v11);

  v10, v20, v21, v22, v23, v24, v25, v26;
  v27 = *(v19 + 24);
  v28 = v27;

  if (!v27)
  {
LABEL_16:
    v41 = 0;
    goto LABEL_17;
  }

  v29 = [v28 suitesAvailable];

  sub_10003E110(0, &unk_1001FF070, ASTSuite_ptr);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = a5;
  if (v30 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v39 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v39 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v40 = *(v30 + 8 * v39 + 32);
      }

      v41 = v40;
      v42 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      sub_10003E110(0, &qword_1001FCE88, NSObject_ptr);
      v43 = [v41 suiteID];
      v44 = static NSObject.== infix(_:_:)();

      if (v44)
      {
        v30, v45, v46, v47, v48, v49, v50, v51;
        goto LABEL_23;
      }

      ++v39;
      if (v42 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:
  v30, v31, v32, v33, v34, v35, v36, v37;
  v41 = 0;
LABEL_23:
  a5 = v52;
LABEL_17:
  *a5 = v41;
}

uint64_t sub_100096060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    __chkstk_darwin(a1);
    sub_10003C49C(&qword_1001FDF90, &unk_10017FE20);
    OS_dispatch_queue.sync<A>(execute:)();
    if (!v15)
    {
      return 0;
    }

    v4 = [v15 estimatedCompletionTimeLocalizedString];
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v13 = (v6 >> 56) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v13 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {
      v6, v6, v7, v8, v9, v10, v11, v12;
      return 0;
    }
  }

  return a2;
}

void sub_10009617C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = *(v2 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager);
    v6 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
    swift_beginAccess();
    v7 = *(v5 + v6);
    if (*(v7 + 16))
    {

      sub_100064AFC(a1, a2);
      if (v8)
      {
        swift_unknownObjectRetain();
        v7, v15, v16, v17, v18, v19, v20, v21;
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          [v22 archiveConnection];
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v7, v8, v9, v10, v11, v12, v13, v14;
      }
    }
  }

  else
  {
    v23 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v24 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Unable to archive device, serial number is nil", 46, 2, &_swiftEmptyArrayStorage);
  }
}

id sub_1000962D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuiteManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *sub_1000963B4(void *a1, void *a2)
{
  v3 = v2;
  v5 = String._bridgeToObjectiveC()();
  v6 = [a1 dequeueReusableCellWithIdentifier:v5];

  if (v6)
  {
    type metadata accessor for SelfServiceViewCell();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for SelfServiceViewCell();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_5:
  v7[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleTruncated] = 1;
  v8 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel;
  v9 = [*&v7[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel] setNumberOfLines:2];
  if (qword_1001FC738 != -1)
  {
    v9 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(v9);
    sub_10003C49C(&qword_1001FDF90, &unk_10017FE20);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v91)
    {
      v89 = v8;
      v90 = v3;
      v10 = [v91 suiteID];
      v11 = qword_1001FC820;
      v12 = v7;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = qword_10020A588;
      v14 = [v91 primaryAssetLocator];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      sub_10010DCF4(v15, v17, v13, v12);
      v17, v18, v19, v20, v21, v22, v23, v24;

      __chkstk_darwin(v25);
      v26 = v10;
      OS_dispatch_queue.sync<A>(execute:)();
      v27 = [v91 suiteNameLocalizedString];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = &v12[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText];
      v32 = *&v12[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText + 8];
      *v31 = v28;
      v31[1] = v30;
      v32, v33, v34, v35, v36, v37, v38, v39;
      if (v30)
      {
        v41 = *&v12[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel];

        v42 = v41;
        v43 = String._bridgeToObjectiveC()();
        v30, v44, v45, v46, v47, v48, v49, v50;
        [v42 setText:v43];
      }

      __chkstk_darwin(v40);
      v51 = v26;
      OS_dispatch_queue.sync<A>(execute:)();
      v52 = [v91 suiteDescriptionLocalizedString];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = &v12[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText];
      v57 = *&v12[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText + 8];
      *v56 = v53;
      v56[1] = v55;
      v57, v58, v59, v60, v61, v62, v63, v64;
      if (v55)
      {
        v65 = *&v7[v89];

        v66 = v65;
        v67 = String._bridgeToObjectiveC()();
        v55, v68, v69, v70, v71, v72, v73, v74;
        [v66 setText:v67];
      }

      v12[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreEnabled] = 1;
      v75 = *&v12[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreLabel];
      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x4F4D5F4E5241454CLL, 0xEA00000000004552);
      v77 = v76;
      v78 = String._bridgeToObjectiveC()();
      v77, v79, v80, v81, v82, v83, v84, v85;
      [v75 setText:v78];

      v86 = v12;
      v87 = sub_100096EBC(v90, v51);
      [v86 setAccessoryView:v87];
    }
  }

  return v7;
}

void sub_100096958(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_10;
  }

  v10 = sub_100064AFC(a2, a3);
  if ((v11 & 1) == 0)
  {
    v9, v11, v12, v13, v14, v15, v16, v17;
LABEL_10:
    v26 = 0;
    goto LABEL_11;
  }

  v18 = *(*(v9 + 56) + 8 * v10);

  v9, v19, v20, v21, v22, v23, v24, v25;
  v26 = *(v18 + 24);
  v27 = v26;

  if (!v26)
  {
LABEL_11:
    *a4 = v26;
    return;
  }

  v28 = IndexPath.section.getter();
  v29 = [v27 suitesAvailable];

  sub_10003E110(0, &unk_1001FF070, ASTSuite_ptr);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v28 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v30 + 8 * v28 + 32);
LABEL_8:
    v26 = v31;
    v30, v32, v33, v34, v35, v36, v37, v38;
    goto LABEL_11;
  }

  __break(1u);
}

void sub_100096AD8(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v36 = v12;
    v37 = v11;
    sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
    v15 = a1;
    v35 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = v15;
    aBlock[4] = sub_10009A130;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C2D18;
    v17 = _Block_copy(aBlock);
    v18 = v15;
    v19 = a3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_10003E278(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v35;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v7 + 8))(v9, v6);
    (*(v36 + 8))(v14, v37);
  }

  else if (a2)
  {
    swift_errorRetain();
    v21 = static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_10003DFBC();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v26 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v26, "Icon loading error occurred: %@", 31, 2, v22);
    v22, v27, v28, v29, v30, v31, v32, v33;
  }
}

id sub_100096EBC(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = [v3 configurationWithPointSize:30.0];
  v5 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  v6 = [v3 configurationWithHierarchicalColor:v5];

  v7 = [v6 configurationByApplyingConfiguration:v4];
  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  if (v10)
  {
    v11 = [v10 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_opt_self() buttonWithType:0];
  [v12 setFrame:{0.0, 0.0, 30.0, 30.0}];
  [v12 setClipsToBounds:1];
  [v12 setImage:v11 forState:0];
  sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a2;
  v15 = a2;
  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v12 addAction:v16 forControlEvents:{64, 0, 0, 0, sub_10009A0E8, v14}];

  return v12;
}

void sub_100097178(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1001FC738 != -1)
    {
      swift_once();
    }

    sub_100094488(qword_1001FEED0, qword_1001FEED8, a3, 0);
  }
}

void sub_100097328(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_8;
  }

  v10 = sub_100064AFC(a2, a3);
  if ((v11 & 1) == 0)
  {
    v9, v11, v12, v13, v14, v15, v16, v17;
    goto LABEL_8;
  }

  v18 = *(*(v9 + 56) + 8 * v10);

  v9, v19, v20, v21, v22, v23, v24, v25;
  v26 = *(v18 + 24);
  v27 = v26;

  if (!v26)
  {
LABEL_8:
    v38 = 0;
    goto LABEL_9;
  }

  v28 = [v27 suitesAvailable];

  sub_10003E110(0, &unk_1001FF070, ASTSuite_ptr);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v29;
  if (v29 >> 62)
  {
    v39 = v29;
    v38 = _CocoaArrayWrapper.endIndex.getter();
    v37 = v39;
  }

  else
  {
    v38 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37, v30, v31, v32, v33, v34, v35, v36;
LABEL_9:
  *a4 = v38;
}

void sub_10009756C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_10;
  }

  v10 = sub_100064AFC(a2, a3);
  if ((v11 & 1) == 0)
  {
    v9, v11, v12, v13, v14, v15, v16, v17;
    goto LABEL_10;
  }

  v18 = *(*(v9 + 56) + 8 * v10);

  v9, v19, v20, v21, v22, v23, v24, v25;
  v26 = *(v18 + 24);
  v27 = v26;

  if (!v26)
  {
LABEL_10:
    v40 = 0;
    goto LABEL_11;
  }

  v28 = IndexPath.section.getter();
  v29 = [v27 suitesAvailable];

  sub_10003E110(0, &unk_1001FF070, ASTSuite_ptr);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v28 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v30 + 8 * v28 + 32);
LABEL_8:
    v39 = v31;
    v30, v32, v33, v34, v35, v36, v37, v38;
    v40 = [v39 suiteID];

LABEL_11:
    *a4 = v40;
    return;
  }

  __break(1u);
}

uint64_t getEnumTagSinglePayload for SuiteManagerEndpoint(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SuiteManagerEndpoint(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100097958()
{
  result = qword_1001FF058;
  if (!qword_1001FF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF058);
  }

  return result;
}

void sub_1000979AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_100064AFC(a2, a3);
  if ((v11 & 1) == 0)
  {
    v9, v11, v12, v13, v14, v15, v16, v17;
LABEL_5:
    v26 = 0;
    goto LABEL_6;
  }

  v18 = *(*(v9 + 56) + 8 * v10);

  v9, v19, v20, v21, v22, v23, v24, v25;
  v26 = *(v18 + 24);
  v27 = v26;

LABEL_6:
  *a4 = v26;
}

void sub_100097A74(id a1)
{
  if (qword_1001FC820 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A588;
  v3 = [a1 primaryAssetLocator];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_100107B14(v4, v6, v2);
  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = [a1 secondaryAssetLocator];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  sub_100107B48(v15, v17, v2);

  v17, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t sub_100097B70(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = &a2[OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = a3;
    v12[5] = a4;
    v13 = *(v10 + 16);

    v14 = a2;

    v13(v14, a1, sub_10009A680, v12, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100097C90(id a1, unint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5)
{
  v25 = a5;
  if (a2 >> 62)
  {
LABEL_24:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_25:
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v26 = static OS_os_log.default.getter();
    v24 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Unable to find a matching destination for the endpoint", 54, 2, &_mh_execute_header, v26, v24, &_swiftEmptyArrayStorage);
    goto LABEL_26;
  }

  v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_3:
  v10 = 0;
  while ((a2 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v26 = v11;
    if ([v11 endpoint] == a1)
    {
      goto LABEL_13;
    }

    ++v10;
    if (v12 == v9)
    {
      goto LABEL_25;
    }
  }

  if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v11 = *(a2 + 8 * v10 + 32);
  v12 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v13 = [v26 endpoint];
  if (v13 == 2)
  {
    *(a3 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint) = 2;
    v14 = a4;
    if (qword_1001FC6D8 != -1)
    {
      swift_once();
    }

    type metadata accessor for DKViewControllerDelegateResponder();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRetain();
      v18 = sub_1000462E8(16, 0);
      v19 = v17 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__presentationTransitionStyle;
      *v19 = v18;
      *(v19 + 8) = v20 & 1;
      v21 = sub_1000462E8(16, 0);
      v22 = v17 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__dismissalTransitionStyle;
      *v22 = v21;
      *(v22 + 8) = v23 & 1;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v14 = a4;
    if (v13 == 1)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    *(a3 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint) = v15;
  }

  v14(a1);
LABEL_26:
}

void sub_100097F0C(uint64_t a1, uint64_t a2)
{
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000002ELL, 0x800000010018DBB0);
  v5 = v4;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000030, 0x800000010018DBE0);
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  v5, v9, v10, v11, v12, v13, v14, v15;
  v16 = String._bridgeToObjectiveC()();
  v7, v17, v18, v19, v20, v21, v22, v23;
  v24 = [objc_opt_self() alertControllerWithTitle:v8 message:v16 preferredStyle:1];

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x5952544552, 0xE500000000000000);
  v26 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;

  v28 = String._bridgeToObjectiveC()();
  v26, v29, v30, v31, v32, v33, v34, v35;
  v56 = sub_100099CEC;
  v57 = v27;
  v52 = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_100072168;
  v55 = &unk_1001C2A48;
  v36 = _Block_copy(&v52);

  v37 = objc_opt_self();
  v38 = [v37 actionWithTitle:v28 style:0 handler:v36];
  _Block_release(v36);

  [v24 addAction:v38];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018DC20);
  v40 = v39;
  v41 = swift_allocObject();
  *(v41 + 16) = a1;
  *(v41 + 24) = a2;

  v42 = String._bridgeToObjectiveC()();
  v40, v43, v44, v45, v46, v47, v48, v49;
  v56 = sub_100099D1C;
  v57 = v41;
  v52 = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_100072168;
  v55 = &unk_1001C2A98;
  v50 = _Block_copy(&v52);

  v51 = [v37 actionWithTitle:v42 style:2 handler:v50];
  _Block_release(v50);

  [v24 addAction:v51];
  [v24 showOnTopWithAnimated:1 completion:0];
}

double sub_100098288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  v6 = swift_allocObject();
  if (v5)
  {
    v7 = sub_1000983A4;
  }

  else
  {
    v7 = sub_10009856C;
  }

  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_100088E48(1, 0);
  sub_10003C52C(v7, 0);

  return result;
}

void sub_1000983A4(uint64_t a1)
{
  if (qword_1001FC730 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A3C8;
  if (qword_1001FC738 != -1)
  {
    swift_once();
  }

  v2 = qword_1001FEED8;
  if (qword_1001FEED8)
  {
    v3 = qword_1001FEED0;
    v4 = *(v1 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager);
    v5 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (*(v6 + 16))
    {

      sub_100064AFC(v3, v2);
      if (v7)
      {
        swift_unknownObjectRetain();
        v6, v14, v15, v16, v17, v18, v19, v20;
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          [v21 archiveConnection];
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v6, v7, v8, v9, v10, v11, v12, v13;
      }
    }
  }

  else
  {
    v22 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v23 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Unable to archive device, serial number is nil", 46, 2, &_swiftEmptyArrayStorage);
  }
}

void sub_10009856C()
{
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A368;
  v1 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100099D24;
  *(v3 + 24) = v2;
  v11[4] = sub_10003DAA4;
  v11[5] = v3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100060C48;
  v11[3] = &unk_1001C2B38;
  v4 = _Block_copy(v11);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
    v5[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = (v5[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] & 1) == 0;
    v7 = sub_100050814();
    [v7 setNearbySharingEnabled:(v5[v6] & 1) == 0];

    v8 = sub_100050814();
    [v8 setDiscoverableMode:*&v5[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting]];

    v9 = OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion;
    v10 = *&v5[OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion];
    if (v10)
    {
      [v10 invalidate];
    }

    *&v5[v9] = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000987EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = *v5 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 40))(v9, a3, a4, a5, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000988A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = *v5 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(v9, a3, a4, a5, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10009898C(uint64_t a1, void *a2, uint64_t a3, DARootViewController *a4, void *a5)
{
  v6 = a4;
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v6)
    {
LABEL_3:
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:

  v14 = a2;
  v15 = a5;
  v8(v14, v9, v11, v12, v6, a5);

  v6, v16, v17, v18, v19, v20, v21, v22;

  v11, v23, v24, v25, v26, v27, v28, v29;
}

void sub_100098A7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100098AE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_10003C49C(&unk_1001FDF80, &qword_10017FE10);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10003C49C(&qword_1001FF088, &qword_1001816D8);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100098BFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        sub_10003E110(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_100098CF8(uint64_t a1)
{
  if (qword_1001FC738 != -1)
  {
    a1 = swift_once();
  }

  if (!qword_1001FEED8)
  {
    return 0;
  }

  __chkstk_darwin(a1);
  OS_dispatch_queue.sync<A>(execute:)();
  v1 = v13;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = v13;
  sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  v3 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("[SuiteManager] Suites available: %d", v12);
  v2, v4, v5, v6, v7, v8, v9, v10;

  return v1;
}

void sub_100098E80(uint64_t a1)
{
  v2 = v1;
  if (qword_1001FC738 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(a1);
    sub_10003C49C(&unk_1001FF0A0, &qword_10017FE18);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v7)
    {
      v3 = v2 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 8);
        ObjectType = swift_getObjectType();
        (*(v4 + 48))(v2, v7, ObjectType, v4);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_100098FDC(id a1, unint64_t a2, unint64_t a3, char *a4)
{
  v126 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for DispatchQoS();
  v10 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC738 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    if (!qword_1001FEED8)
    {
      goto LABEL_21;
    }

    v119 = v12;
    __chkstk_darwin(v13);
    v109 = v15;
    *(&v102 - 4) = v15;
    *(&v102 - 3) = v16;
    *(&v102 - 2) = v17;
    sub_10003C49C(&qword_1001FF068, &qword_1001816D0);
    OS_dispatch_queue.sync<A>(execute:)();
    v18 = aBlock;
    if (!aBlock)
    {
      goto LABEL_21;
    }

    v120 = a2;
    v106 = a3;
    v107 = a4;
    v105 = v10;
    v19 = [a1 state];
    v20 = [v19 serialNumber];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v108 = v18;
    v24 = [(DARootViewController *)v18 serialNumber];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v21 == v25 && v23 == v27)
    {
      v23, v28, v29, v30, v31, v32, v33, v34;
      v27, v35, v36, v37, v38, v39, v40, v41;
      a2 = v120;
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v23, v43, v44, v45, v46, v47, v48, v49;
      v27, v50, v51, v52, v53, v54, v55, v56;
      a2 = v120;
      if ((v42 & 1) == 0)
      {

        a3 = v106;
LABEL_21:
        sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
        v61 = static OS_os_log.default.getter();
        v62 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Ignoring didRequestRepairSuiteRunConfirmationWithConfirmation request as the serial number doesn't match or is nil", 114, 2, &_mh_execute_header, v61, v62, &_swiftEmptyArrayStorage);

        (a3)(0);
        return;
      }
    }

    a3 = v108;
    a4 = a2 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v104 = a4;
    if (!a4)
    {
      break;
    }

    v57 = 0;
    v12 = a2 & 0xC000000000000001;
    a1 = (a2 & 0xFFFFFFFFFFFFFF8);
    v10 = &selRef_btManagerAvailableSemaphore;
    while (1)
    {
      if (v12)
      {
        v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v57 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v58 = *(a2 + 8 * v57 + 32);
      }

      v59 = v58;
      v60 = (v57 + 1);
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if ([v58 endpoint] == 1)
      {
        v63 = [v59 suites];

        sub_10003E110(0, &unk_1001FF070, ASTSuite_ptr);
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v103 = v8;
        if (v12 >> 62)
        {
          v71 = _CocoaArrayWrapper.endIndex.getter();
          v72 = v119;
          if (v71)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v71 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v72 = v119;
          if (v71)
          {
LABEL_24:
            a3 = 0;
            v118 = v12 & 0xFFFFFFFFFFFFFF8;
            v119 = v12 & 0xC000000000000001;
            v115 = enum case for DispatchQoS.QoSClass.default(_:);
            v114 = (v72 + 104);
            v113 = (v72 + 8);
            v112 = &v130;
            v111 = (v103 + 8);
            v110 = (v105 + 1);
            v116 = v71;
            v117 = v12;
            do
            {
              if (v119)
              {
                v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (a3 >= *(v118 + 16))
                {
                  goto LABEL_35;
                }

                v73 = *(v12 + 8 * a3 + 32);
              }

              a1 = v73;
              v10 = (a3 + 1);
              if (__OFADD__(a3, 1))
              {
                goto LABEL_34;
              }

              sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
              v75 = v121;
              v74 = v122;
              (*v114)(v121, v115, v122);
              v76 = static OS_dispatch_queue.global(qos:)();
              (*v113)(v75, v74);
              v77 = swift_allocObject();
              *(v77 + 16) = a1;
              v132 = sub_100099C30;
              v133 = v77;
              aBlock = _NSConcreteStackBlock;
              v129 = 1107296256;
              v130 = sub_100031FA8;
              v131 = &unk_1001C2958;
              v78 = _Block_copy(&aBlock);
              a1 = a1;
              a4 = v123;
              static DispatchQoS.unspecified.getter();
              v127 = &_swiftEmptyArrayStorage;
              sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
              sub_10003E278(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0);
              v8 = v124;
              v79 = v126;
              v12 = v117;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              v80 = v116;
              v81 = v78;
              a2 = v120;
              _Block_release(v81);

              (*v111)(v8, v79);
              (*v110)(a4, v125);

              ++a3;
            }

            while (v10 != v80);
          }
        }

        v12, v64, v65, v66, v67, v68, v69, v70;
        v8 = v103;
        a3 = v108;
        goto LABEL_40;
      }

      ++v57;
      if (v60 == a4)
      {
        goto LABEL_40;
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
    v13 = swift_once();
  }

LABEL_40:
  v82 = swift_allocObject();
  v83 = v109;
  v84 = v106;
  v82[2] = v109;
  v82[3] = v84;
  v82[4] = v107;

  v85 = v83;
  if ([a3 phase] == 1)
  {
    if (!v104)
    {
      goto LABEL_46;
    }

LABEL_45:
    v87 = static os_log_type_t.debug.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v88 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v87, &_mh_execute_header, v88, "Unexpected session phase, destinations will be ignored", 54, 2, &_swiftEmptyArrayStorage);

    sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
    v122 = static OS_dispatch_queue.main.getter();
    v89 = swift_allocObject();
    *(v89 + 16) = sub_100099C90;
    *(v89 + 24) = v82;
    v132 = sub_100099CE4;
    v133 = v89;
    aBlock = _NSConcreteStackBlock;
    v129 = 1107296256;
    v130 = sub_100031FA8;
    v131 = &unk_1001C29F8;
    v90 = v8;
    v91 = _Block_copy(&aBlock);

    v92 = v123;
    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_10003E278(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0);
    v93 = v124;
    v94 = v126;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v95 = v122;
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v91);

    v90[1](v93, v94);
    (v105[1])(v92, v125);
    return;
  }

  v86 = [a3 phase];
  if (v104 && v86 == 5)
  {
    goto LABEL_45;
  }

LABEL_46:
  v96 = &v85[OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v97 = *(v96 + 1);
    ObjectType = swift_getObjectType();
    v99 = swift_allocObject();
    v99[2] = a2;
    v99[3] = v85;
    v99[4] = v106;
    v99[5] = v107;
    v100 = *(v97 + 16);

    v101 = v85;

    v100(v101, a2, sub_100099CA0, v99, ObjectType, v97);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100099BF8()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_100099C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100099C50()
{

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_100099CAC()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_100099D3C(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 48, 7, v9);
}

uint64_t sub_100099D84()
{

  return _swift_deallocObject(v0, 72, 7, v1);
}

uint64_t sub_100099DE8(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 24, 7, v9);
}

uint64_t sub_100099E20()
{

  return _swift_deallocObject(v0, 80, 7, v1);
}

unint64_t sub_100099EA4()
{
  result = qword_1001FF080;
  if (!qword_1001FF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF080);
  }

  return result;
}

uint64_t sub_100099EF8()
{

  return _swift_deallocObject(v0, 88, 7, v1);
}

uint64_t sub_100099F88()
{

  return _swift_deallocObject(v0, 40, 7, v1);
}

void sub_100099FC8()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 32) identifier];
  v1();
}

uint64_t sub_10009A0AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_10009A0F0()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

void sub_10009A130()
{
  v1 = *(v0 + 24);
  v2 = v1;
  sub_1000BB560(v1);
}

uint64_t sub_10009A1A0()
{

  return _swift_deallocObject(v0, 40, 7, v1);
}

unint64_t sub_10009A1F4()
{
  result = qword_1002018F0;
  if (!qword_1002018F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002018F0);
  }

  return result;
}

uint64_t sub_10009A25C()
{

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 64, 7, v8);
}

uint64_t sub_10009A2C4()
{

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 48, 7, v8);
}

uint64_t sub_10009A358()
{

  return _swift_deallocObject(v0, 40, 7, v1);
}

id sub_10009A3B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 progress];
  *a2 = result;
  return result;
}

uint64_t sub_10009A430(uint64_t a1)
{

  *(v1 + 32), v3, v4, v5, v6, v7, v8, v9;

  return _swift_deallocObject(v1, a1, 7, v10);
}

uint64_t sub_10009A488()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_10009A4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_100201810, &unk_100181730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009A570()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 48, 7, v8);
}

unint64_t sub_10009A5D8()
{
  result = qword_1001FF0E8;
  if (!qword_1001FF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF0E8);
  }

  return result;
}

id sub_10009A744(char a1)
{
  v1[OBJC_IVAR____TtC11Diagnostics32AssessmentCompleteViewController_layoutType] = a1;
  v3 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  v4 = [objc_opt_self() configurationWithHierarchicalColor:v3];

  if (a1)
  {
    if (a1 == 1)
    {
      DeviceClass = GestaltGetDeviceClass();
      sub_100100580(DeviceClass);
      v6 = 0xD00000000000001ALL;
      v8 = v7;
      v9 = "E_CHECK_CANCELLED_SUBTITLE";
      v10 = "ASSESSMENT_THANK_YOU_TITLE";
      v11 = 0xD00000000000001DLL;
    }

    else
    {
      _StringGuts.grow(_:)(24);
      v12 = GestaltGetDeviceClass();
      v13 = sub_100100580(v12);
      v8 = v14;
      0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
      v67 = v13;
      v68 = v8;
      v21._countAndFlagsBits = 0xD000000000000016;
      v21._object = 0x8000000100189E10;
      String.append(_:)(v21);
      v6 = 0xD000000000000027;
      v9 = "pleteViewController";
      v10 = "E_CHECK_CANCELLED_TITLE";
      v11 = 0xD00000000000002ALL;
    }
  }

  else
  {
    v8 = 0x800000010018E470;
    v6 = 0xD000000000000019;
    v9 = "ASSESSMENT_THANK_YOU_SUBTITLE";
    v10 = "ASSESSMENT_COMPLETE_TITLE";
    v11 = 0xD00000000000001CLL;
  }

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v6, (v9 | 0x8000000000000000));
  v23 = v22;
  (v9 | 0x8000000000000000), v22, v24, v25, v26, v27, v28, v29;
  v30 = String._bridgeToObjectiveC()();
  v23, v31, v32, v33, v34, v35, v36, v37;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v11, (v10 | 0x8000000000000000));
  v39 = v38;
  (v10 | 0x8000000000000000), v38, v40, v41, v42, v43, v44, v45;
  v46 = String._bridgeToObjectiveC()();
  v39, v47, v48, v49, v50, v51, v52, v53;
  v54 = String._bridgeToObjectiveC()();
  v8, v55, v56, v57, v58, v59, v60, v61;
  v62 = [objc_opt_self() _systemImageNamed:v54];

  if (v62)
  {
    v63 = [v62 imageWithConfiguration:v4];
  }

  else
  {
    v63 = 0;
  }

  v66.receiver = v1;
  v66.super_class = type metadata accessor for AssessmentCompleteViewController();
  v64 = objc_msgSendSuper2(&v66, "initWithTitle:detailText:icon:contentLayout:", v30, v46, v63, 3);

  return v64;
}

void sub_10009AA34(uint64_t a1)
{
  v27.receiver = v1;
  v27.super_class = type metadata accessor for AssessmentCompleteViewController();
  objc_msgSendSuper2(&v27, "viewDidLoad");
  v2 = [v1 navigationItem];
  [v2 setHidesBackButton:1];

  v3 = [v1 buttonTray];
  v4 = [objc_opt_self() boldButton];
  if (*(v1 + OBJC_IVAR____TtC11Diagnostics32AssessmentCompleteViewController_layoutType))
  {
    v5 = 0x45534F4C43;
  }

  else
  {
    v5 = 1162760004;
  }

  if (*(v1 + OBJC_IVAR____TtC11Diagnostics32AssessmentCompleteViewController_layoutType))
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = v4;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v5, v6);
  v9 = v8;
  v6, v8, v10, v11, v12, v13, v14, v15;
  v16 = String._bridgeToObjectiveC()();
  v9, v17, v18, v19, v20, v21, v22, v23;
  [v7 setTitle:v16 forState:0];

  sub_10006D004();
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  v25 = v1;
  v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v7 addAction:v26 forControlEvents:{64, 0, 0, 0, sub_10009ADE8, v24}];

  [v3 addButton:v7];
}

id sub_10009ACF0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AssessmentCompleteViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10009AD5C()
{
  result = qword_1001FF120;
  if (!qword_1001FF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF120);
  }

  return result;
}

uint64_t sub_10009ADB0()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

void sub_10009ADE8()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics32AssessmentCompleteViewController_layoutType) == 2)
  {
    sub_1000F74E8(14);
  }

  else
  {
    sub_1000F74E8(15);
  }
}

uint64_t sub_10009AE08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009AE50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10009AEC4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = [a1 name];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v103 = v6;
  v104 = v8;
  sub_100079A64();
  v9 = Text.init<A>(_:)();
  v94 = v10;
  v95 = v9;
  v93 = v11;
  v96 = v12;
  v13 = [v3 value];
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v104 = v16;
    v88 = v3;
    v17 = Text.init<A>(_:)();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [objc_opt_self() systemGrayColor];
    v103 = Color.init(uiColor:)();
    v25 = Text.foregroundStyle<A>(_:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = v17;
    v3 = v88;
    sub_10007C874(v32, v19, (v21 & 1), v30, v33, v34, v35, v36);

    v23, v37, v38, v39, v40, v41, v42, v43;
    v44 = v25;
    v92 = v27;
    v90 = v29 & 1;
    sub_10007C884(v25, v27, v29 & 1);
    v91 = v31;
  }

  else
  {
    v44 = 0;
    v91 = 0;
    v92 = 0;
    v90 = 0;
  }

  v45 = [v3 status];
  if (v45)
  {
    v46 = v45;
    sub_1000B7164(v45, &v103);

    v48 = v103;
    v47 = v104;
    v49 = v105;
    v50 = v106;
    v51 = v107;
    v52 = BYTE2(v107);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v103) = v52;
    v53 = v114;
    v54 = v115;
    v55 = v116;
    v56 = v117;
    v57 = v118;
    v58 = v119;
    v59 = v51 | (v52 << 16);
  }

  else
  {
    v48 = 0;
    v47 = 0;
    v49 = 0;
    v50 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 16711680;
  }

  v82 = v59;
  v83 = v53;
  v84 = v54;
  v85 = v55;
  v86 = v56;
  v87 = v57;
  v89 = v58;
  *&v97 = v48;
  *(&v97 + 1) = v47;
  *&v98 = v49;
  *(&v98 + 1) = v50;
  *&v99 = v59;
  *(&v99 + 1) = v53;
  *&v100 = v54;
  *(&v100 + 1) = v55;
  *&v101 = v56;
  *(&v101 + 1) = v57;
  v102 = v58;
  sub_10007C884(v95, v94, v93 & 1);

  sub_10009DE94(v44, v92, v90, v91);
  sub_100044704(&v97, &v103, &qword_1001FF310, &qword_100181BF8);
  sub_10009DED8(v44, v92, v90, v91, v60, v61, v62, v63);
  *a2 = v95;
  *(a2 + 8) = v94;
  *(a2 + 16) = v93 & 1;
  *(a2 + 24) = v96;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v44;
  *(a2 + 56) = v92;
  *(a2 + 64) = v90;
  *(a2 + 72) = v91;
  v64 = v100;
  *(a2 + 112) = v99;
  *(a2 + 128) = v64;
  *(a2 + 144) = v101;
  *(a2 + 160) = v102;
  v65 = v98;
  *(a2 + 80) = v97;
  *(a2 + 96) = v65;
  v103 = v48;
  v104 = v47;
  v105 = v49;
  v106 = v50;
  v107 = v82;
  v108 = v83;
  v109 = v84;
  v110 = v85;
  v111 = v86;
  v112 = v87;
  v113 = v89;
  sub_10003DD84(&v103, &qword_1001FF310, &qword_100181BF8);
  sub_10009DED8(v44, v92, v90, v91, v66, v67, v68, v69);
  sub_10007C874(v95, v94, (v93 & 1), v70, v71, v72, v73, v74);
  v96, v75, v76, v77, v78, v79, v80, v81;
}

double sub_10009B2A8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = static VerticalAlignment.center.getter();
  v25 = 1;
  sub_10009AEC4(v3, &v13);
  v34 = v21;
  v35 = v22;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v37[8] = v21;
  v37[9] = v22;
  v37[4] = v17;
  v37[5] = v18;
  v37[6] = v19;
  v37[7] = v20;
  v37[0] = v13;
  v37[1] = v14;
  v36 = v23;
  v38 = v23;
  v37[2] = v15;
  v37[3] = v16;
  sub_100044704(&v26, v12, &qword_1001FF308, &qword_100181BF0);
  sub_10003DD84(v37, &qword_1001FF308, &qword_100181BF0);
  *(&v24[7] + 7) = v33;
  *(&v24[8] + 7) = v34;
  *(&v24[9] + 7) = v35;
  *(&v24[10] + 7) = v36;
  *(&v24[3] + 7) = v29;
  *(&v24[4] + 7) = v30;
  *(&v24[5] + 7) = v31;
  *(&v24[6] + 7) = v32;
  *(v24 + 7) = v26;
  *(&v24[1] + 7) = v27;
  *(&v24[2] + 7) = v28;
  v5 = v24[6];
  *(a1 + 129) = v24[7];
  v6 = v24[9];
  *(a1 + 145) = v24[8];
  *(a1 + 161) = v6;
  *(a1 + 176) = *(&v24[9] + 15);
  v7 = v24[2];
  *(a1 + 65) = v24[3];
  v8 = v24[5];
  *(a1 + 81) = v24[4];
  *(a1 + 97) = v8;
  *(a1 + 113) = v5;
  result = *v24;
  v10 = v24[1];
  *(a1 + 17) = v24[0];
  *(a1 + 33) = v10;
  v11 = v25;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 49) = v7;
  return result;
}

uint64_t sub_10009B48C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v101 = a2;
  v100 = type metadata accessor for ScrollBounceBehavior();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for ScrollIndicatorVisibility();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v81 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for InsetGroupedListStyle();
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListSectionSpacing();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10003C49C(&qword_1001FF130, &qword_1001819C0);
  __chkstk_darwin(v10);
  v12 = &v76 - v11;
  v79 = sub_10003C49C(&qword_1001FF138, &qword_1001819C8);
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v76 - v13;
  v86 = sub_10003C49C(&qword_1001FF140, &qword_1001819D0);
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v102 = &v76 - v14;
  v89 = sub_10003C49C(&qword_1001FF148, &qword_1001819D8);
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v76 - v15;
  v95 = sub_10003C49C(&qword_1001FF150, &qword_1001819E0);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v92 = &v76 - v19;
  v20 = [*(a1 + 32) name];
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v21;

  v88 = static Font.title.getter();
  v103 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v110) = 0;
  v104 = a1;
  sub_10003C49C(&qword_1001FF158, &qword_1001819E8);
  sub_10009D404(&qword_1001FF160, &qword_1001FF158, &qword_1001819E8, sub_10009D1C8);
  List<>.init(content:)();
  LOBYTE(v20) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v12[*(sub_10003C49C(&qword_1001FF220, &qword_100181A48) + 36)];
  *v38 = v20;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  static ListSectionSpacing.custom(_:)();
  v39 = *(sub_10003C49C(&qword_1001FF228, &qword_100181A50) + 36);
  (*(v7 + 16))(&v12[v39], v9, v6);
  v40 = *(v7 + 56);
  v40(&v12[v39], 0, 1, v6);
  KeyPath = swift_getKeyPath();
  v42 = &v12[*(v10 + 36)];
  v43 = *(sub_10003C49C(&qword_1001FF230, &qword_100181A88) + 28);
  (*(v7 + 32))(v42 + v43, v9, v6);
  v40(v42 + v43, 0, 1, v6);
  *v42 = KeyPath;
  v44 = v81;
  v45 = v78;
  InsetGroupedListStyle.init()();
  v46 = sub_10009D884();
  v47 = v77;
  v48 = v82;
  View.listStyle<A>(_:)();
  (*(v83 + 8))(v45, v48);
  sub_10009DAAC(v12);
  *&v105 = static Color.clear.getter();
  v110 = v10;
  v111 = v48;
  v112 = v46;
  v113 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v79;
  View.scrollContentBackground<A>(_:)();

  (*(v80 + 8))(v47, v50);
  static ScrollIndicatorVisibility.never.getter();
  sub_10003C49C(&qword_1001FF278, &qword_100181AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC10;
  LOBYTE(v43) = static Axis.Set.vertical.getter();
  *(inited + 32) = v43;
  v52 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v52;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v43)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v52)
  {
    Axis.Set.init(rawValue:)();
  }

  v53 = v98;
  v54 = v86;
  v110 = v50;
  v111 = &type metadata for Color;
  v112 = OpaqueTypeConformance2;
  v113 = &protocol witness table for Color;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v85;
  v57 = v102;
  View.scrollIndicators(_:axes:)();
  (*(v96 + 8))(v44, v97);
  (*(v84 + 8))(v57, v54);
  static ScrollBounceBehavior.basedOnSize.getter();
  v58 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v58)
  {
    Axis.Set.init(rawValue:)();
  }

  v110 = v54;
  v111 = v55;
  swift_getOpaqueTypeConformance2();
  v59 = v92;
  v60 = v89;
  View.scrollBounceBehavior(_:axes:)();
  (*(v99 + 8))(v53, v100);
  (*(v87 + 8))(v56, v60);
  v61 = v94;
  v62 = *(v94 + 16);
  v63 = v93;
  v64 = v95;
  v62(v93, v59, v95);
  v65 = v91;
  *&v105 = v91;
  v66 = v90;
  *(&v105 + 1) = v90;
  v67 = v88;
  *&v106 = v88;
  BYTE8(v106) = v103;
  *(&v106 + 9) = *v119;
  HIDWORD(v106) = *&v119[3];
  *&v107 = v23;
  *(&v107 + 1) = v25;
  *&v108 = v27;
  *(&v108 + 1) = v29;
  v109 = 0;
  v68 = v105;
  v69 = v106;
  v70 = v107;
  v71 = v108;
  v72 = v101;
  v101[64] = 0;
  *(v72 + 2) = v70;
  *(v72 + 3) = v71;
  *v72 = v68;
  *(v72 + 1) = v69;
  v73 = sub_10003C49C(&qword_1001FF280, &qword_100181AA8);
  v62(&v72[*(v73 + 48)], v63, v64);
  sub_100044704(&v105, &v110, &qword_1001FF288, &qword_100181AB0);
  v74 = *(v61 + 8);
  v74(v59, v64);
  v74(v63, v64);
  v110 = v65;
  v111 = v66;
  v112 = v67;
  LOBYTE(v113) = v103;
  *(&v113 + 1) = *v119;
  HIDWORD(v113) = *&v119[3];
  v114 = v23;
  v115 = v25;
  v116 = v27;
  v117 = v29;
  v118 = 0;
  return sub_10003DD84(&v110, &qword_1001FF288, &qword_100181AB0);
}

void sub_10009C114(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 sections];
  sub_10003E110(0, &qword_1001FF298, ASTSuiteResultSection_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v4, v5, v6, v7, v8, v9, v10, v11;
LABEL_3:
    swift_getKeyPath();
    v12 = swift_allocObject();
    v13 = *(a1 + 16);
    *(v12 + 16) = *a1;
    *(v12 + 32) = v13;
    *(v12 + 48) = *(a1 + 32);
    v14 = v2;
    sub_10003C49C(&qword_1001FF2A0, &qword_100181AE0);
    sub_10003C49C(&qword_1001FF170, &qword_1001819F0);
    sub_10009DB54();
    sub_10009D1C8();
    ForEach<>.init(_:id:content:)();
    return;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v4, v16, v17, v18, v19, v20, v21, v22;
  if ((v15 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
}

void sub_10009C294(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v59 = type metadata accessor for Prominence();
  v5 = *(v59 - 8);
  __chkstk_darwin(v59);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10003C49C(&qword_1001FF178, &qword_1001819F8);
  v57 = *(v63 - 8);
  __chkstk_darwin(v63);
  v9 = v55 - v8;
  v64 = sub_10003C49C(&qword_1001FF2B8, &qword_100181AE8);
  v60 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = v55 - v10;
  v61 = sub_10003C49C(&qword_1001FF2C0, &qword_100181AF0);
  __chkstk_darwin(v61);
  v62 = v55 - v11;
  v12 = sub_10003C49C(&qword_1001FF1A0, &qword_100181A08);
  v56 = *(v12 - 8);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = v55 - v14;
  v16 = *a1;
  v17 = *(a2 + 32);
  v18 = [v17 sections];
  sub_10003E110(0, &qword_1001FF298, ASTSuiteResultSection_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v19 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v19 + 8 * v16 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v28 = v20;
  v19, v21, v22, v23, v24, v25, v26, v27;
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v30 = *(a2 + 16);
  *(v29 + 24) = *a2;
  *(v29 + 40) = v30;
  *(v29 + 56) = *(a2 + 32);
  sub_10009DC80(a2, &v66);
  v31 = v28;
  v32 = [v31 title];
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v66 = v34;
    v67 = v36;
    sub_100079A64();
    v37 = Text.init<A>(_:)();
    v56 = v31;
    v38 = *(a2 + 16);
    v66 = v37;
    v67 = v39;
    v68 = v40 & 1;
    v69 = v41;
    v70 = -v38;
    v71 = 0;
    __chkstk_darwin(v37);
    sub_10003C49C(&qword_1001FF190, &qword_100181A00);
    sub_10009D380();
    sub_10009D404(&qword_1001FF198, &qword_1001FF1A0, &qword_100181A08, sub_10009D480);
    Section<>.init(header:content:)();
    v42 = v59;
    (*(v5 + 104))(v7, enum case for Prominence.increased(_:), v59);
    v43 = sub_10009D2BC();
    v55[1] = v29;
    v44 = v58;
    v45 = v63;
    View.headerProminence(_:)();
    (*(v5 + 8))(v7, v42);
    (*(v57 + 8))(v9, v45);
    v46 = v60;
    v47 = v64;
    (*(v60 + 16))(v62, v44, v64);
    swift_storeEnumTagMultiPayload();
    v66 = v45;
    v67 = v43;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();

    (*(v46 + 8))(v44, v47);
  }

  else
  {
    v48 = [v31 tests];
    sub_10003E110(0, &qword_1001FF2C8, ASTSuiteResultTest_ptr);
    v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = v49;
    swift_getKeyPath();
    v50 = swift_allocObject();
    v51 = *(a2 + 16);
    *(v50 + 16) = *a2;
    *(v50 + 32) = v51;
    *(v50 + 48) = *(a2 + 32);
    v52 = v17;
    sub_10003C49C(&qword_1001FF2D0, &qword_100181B10);
    sub_10003C49C(&qword_1001FF1B0, &qword_100181A10);
    sub_10005C71C(&qword_1001FF2D8, &qword_1001FF2D0, &qword_100181B10, &protocol conformance descriptor for [A]);
    sub_10009DCC0();
    sub_10009D480();
    ForEach<>.init(_:id:content:)();
    v53 = v56;
    (*(v56 + 2))(v62, v15, v12);
    swift_storeEnumTagMultiPayload();
    v54 = sub_10009D2BC();
    v66 = v63;
    v67 = v54;
    swift_getOpaqueTypeConformance2();
    sub_10009D404(&qword_1001FF198, &qword_1001FF1A0, &qword_100181A08, sub_10009D480);
    _ConditionalContent<>.init(storage:)();

    v53[1](v15, v12);
  }
}

uint64_t sub_10009CA88(void *a1, uint64_t a2)
{
  v3 = [a1 tests];
  sub_10003E110(0, &qword_1001FF2C8, ASTSuiteResultTest_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  v6 = *(a2 + 32);
  *(v4 + 48) = v6;
  v7 = v6;
  sub_10003C49C(&qword_1001FF2D0, &qword_100181B10);
  sub_10003C49C(&qword_1001FF1B0, &qword_100181A10);
  sub_10005C71C(&qword_1001FF2D8, &qword_1001FF2D0, &qword_100181B10, &protocol conformance descriptor for [A]);
  sub_10009DCC0();
  sub_10009D480();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10009CBFC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v82 = a3;
  v4 = sub_10003C49C(&qword_1001FF1F8, &qword_100181A30);
  __chkstk_darwin(v4);
  v6 = v79 - v5;
  v7 = sub_10003C49C(&qword_1001FF1E8, &qword_100181A28);
  __chkstk_darwin(v7);
  v9 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = v79 - v11;
  v12 = sub_10003C49C(&qword_1001FF2E8, &qword_100181B18);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = (v79 - v14);
  v16 = *a1;
  v17 = [v16 value];
  if (v17)
  {

    v18 = [v16 status];
    if (!v18)
    {
      goto LABEL_17;
    }

    v19 = v18;
    v20 = [v18 status];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v23, v24, v25, v26, v27, v28, v29, v30;
    v31 = (v23 >> 56) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v31 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v31)
    {
      goto LABEL_17;
    }
  }

  v32 = [v16 testDescription];
  if (!v32)
  {
    goto LABEL_17;
  }

  v33 = v32;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v36, v37, v38, v39, v40, v41, v42, v43;
  v44 = (v36 >> 56) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v44 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v44)
  {
    goto LABEL_17;
  }

  v45 = [v16 result];
  if (!v45)
  {
    goto LABEL_17;
  }

  v46 = v45;
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v49, v50, v51, v52, v53, v54, v55, v56;
  v58 = (v49 >> 56) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v58 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v58)
  {
    v79[1] = v79;
    *&v59 = __chkstk_darwin(v57).n128_u64[0];
    v79[0] = &v79[-4];
    v79[-2] = v16;
    v60 = [*(v80 + 32) name];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64 = v16;
    v65 = _UISolariumEnabled();
    v66 = 40.0;
    if (!v65)
    {
      v66 = 20.0;
    }

    v83 = *&v66;
    v84 = xmmword_100181900;
    v85 = 0x402A000000000000;
    v86 = v61;
    v87 = v63;
    v88 = v64;
    sub_10009D5C4();
    sub_10009DD60();
    NavigationLink.init(destination:label:)();
    v67 = static Color.black.getter();
    KeyPath = swift_getKeyPath();
    v69 = &v6[*(v4 + 36)];
    *v69 = KeyPath;
    v69[1] = v67;
    v70 = [objc_opt_self() secondarySystemBackgroundColor];
    v83 = Color.init(_:)();
    v71 = AnyView.init<A>(_:)();
    sub_10009DDBC(v6, v9, &qword_1001FF1F8, &qword_100181A30);
    *&v9[*(v7 + 36)] = v71;
    v72 = v9;
    v73 = v81;
    sub_10009DDBC(v72, v81, &qword_1001FF1E8, &qword_100181A28);
    sub_100044704(v73, v15, &qword_1001FF1E8, &qword_100181A28);
    swift_storeEnumTagMultiPayload();
    sub_10003C49C(&qword_1001FF1C0, &qword_100181A18);
    sub_10009D50C();
    sub_10009D618();
    _ConditionalContent<>.init(storage:)();
    return sub_10003DD84(v73, &qword_1001FF1E8, &qword_100181A28);
  }

  else
  {
LABEL_17:
    v75 = objc_opt_self();
    v76 = v16;
    v77 = [v75 secondarySystemBackgroundColor];
    v83 = Color.init(_:)();
    v78 = AnyView.init<A>(_:)();
    *v15 = 0x4036000000000000;
    v15[1] = v76;
    v15[2] = v78;
    swift_storeEnumTagMultiPayload();
    sub_10003C49C(&qword_1001FF1C0, &qword_100181A18);
    sub_10009D50C();
    sub_10009D618();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10009D154@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v8 = *(v2 + 32);
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_10003C49C(&qword_1001FF128, &qword_1001819B8);
  return sub_10009B48C(v7, (a2 + *(v5 + 44)));
}

unint64_t sub_10009D1C8()
{
  result = qword_1001FF168;
  if (!qword_1001FF168)
  {
    sub_10003C4E4(&qword_1001FF170, &qword_1001819F0);
    sub_10003C4E4(&qword_1001FF178, &qword_1001819F8);
    sub_10009D2BC();
    swift_getOpaqueTypeConformance2();
    sub_10009D404(&qword_1001FF198, &qword_1001FF1A0, &qword_100181A08, sub_10009D480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF168);
  }

  return result;
}

unint64_t sub_10009D2BC()
{
  result = qword_1001FF180;
  if (!qword_1001FF180)
  {
    sub_10003C4E4(&qword_1001FF178, &qword_1001819F8);
    sub_10009D380();
    sub_10009D404(&qword_1001FF198, &qword_1001FF1A0, &qword_100181A08, sub_10009D480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF180);
  }

  return result;
}

unint64_t sub_10009D380()
{
  result = qword_1001FF188;
  if (!qword_1001FF188)
  {
    sub_10003C4E4(&qword_1001FF190, &qword_100181A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF188);
  }

  return result;
}

uint64_t sub_10009D404(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003C4E4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009D480()
{
  result = qword_1001FF1A8;
  if (!qword_1001FF1A8)
  {
    sub_10003C4E4(&qword_1001FF1B0, &qword_100181A10);
    sub_10009D50C();
    sub_10009D618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF1A8);
  }

  return result;
}

unint64_t sub_10009D50C()
{
  result = qword_1001FF1B8;
  if (!qword_1001FF1B8)
  {
    sub_10003C4E4(&qword_1001FF1C0, &qword_100181A18);
    sub_10009D5C4();
    sub_10005C71C(&qword_1001FF1D0, &qword_1001FF1D8, &qword_100181A20, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF1B8);
  }

  return result;
}

unint64_t sub_10009D5C4()
{
  result = qword_1001FF1C8;
  if (!qword_1001FF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF1C8);
  }

  return result;
}

unint64_t sub_10009D618()
{
  result = qword_1001FF1E0;
  if (!qword_1001FF1E0)
  {
    sub_10003C4E4(&qword_1001FF1E8, &qword_100181A28);
    sub_10009D6D0();
    sub_10005C71C(&qword_1001FF1D0, &qword_1001FF1D8, &qword_100181A20, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF1E0);
  }

  return result;
}

unint64_t sub_10009D6D0()
{
  result = qword_1001FF1F0;
  if (!qword_1001FF1F0)
  {
    sub_10003C4E4(&qword_1001FF1F8, &qword_100181A30);
    sub_10005C71C(&qword_1001FF200, &qword_1001FF208, &qword_100181A38, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_10005C71C(&qword_1001FF210, &qword_1001FF218, &qword_100181A40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF1F0);
  }

  return result;
}

uint64_t sub_10009D7D8(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FF290, &unk_100181AB8);
  __chkstk_darwin(v2 - 8);
  sub_100044704(a1, &v5 - v3, &qword_1001FF290, &unk_100181AB8);
  return EnvironmentValues.listSectionSpacing.setter();
}

unint64_t sub_10009D884()
{
  result = qword_1001FF238;
  if (!qword_1001FF238)
  {
    sub_10003C4E4(&qword_1001FF130, &qword_1001819C0);
    sub_10009D93C();
    sub_10005C71C(&qword_1001FF270, &qword_1001FF230, &qword_100181A88, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF238);
  }

  return result;
}

unint64_t sub_10009D93C()
{
  result = qword_1001FF240;
  if (!qword_1001FF240)
  {
    sub_10003C4E4(&qword_1001FF228, &qword_100181A50);
    sub_10009D9F4();
    sub_10005C71C(&qword_1001FF260, &qword_1001FF268, &qword_100181A98, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF240);
  }

  return result;
}

unint64_t sub_10009D9F4()
{
  result = qword_1001FF248;
  if (!qword_1001FF248)
  {
    sub_10003C4E4(&qword_1001FF220, &qword_100181A48);
    sub_10005C71C(&qword_1001FF250, &qword_1001FF258, &qword_100181A90, &protocol conformance descriptor for List<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF248);
  }

  return result;
}

uint64_t sub_10009DAAC(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FF130, &qword_1001819C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009DB14()
{

  return _swift_deallocObject(v0, 56, 7, v1);
}

unint64_t sub_10009DB54()
{
  result = qword_1001FF2A8;
  if (!qword_1001FF2A8)
  {
    sub_10003C4E4(&qword_1001FF2A0, &qword_100181AE0);
    sub_10009DBE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF2A8);
  }

  return result;
}

unint64_t sub_10009DBE0()
{
  result = qword_1001FF2B0;
  if (!qword_1001FF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF2B0);
  }

  return result;
}

uint64_t sub_10009DC34()
{

  return _swift_deallocObject(v0, 64, 7, v1);
}

unint64_t sub_10009DCC0()
{
  result = qword_1001FF2E0;
  if (!qword_1001FF2E0)
  {
    sub_10003E110(255, &qword_1001FF2C8, ASTSuiteResultTest_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF2E0);
  }

  return result;
}

id sub_10009DD50@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = 0x4036000000000000;
  a1[1] = v2;
  return v2;
}

unint64_t sub_10009DD60()
{
  result = qword_1001FF2F0;
  if (!qword_1001FF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF2F0);
  }

  return result;
}

uint64_t sub_10009DDBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10003C49C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10009DE94(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10007C884(result, a2, a3 & 1);
  }

  return result;
}

void sub_10009DED8(uint64_t a1, DARootViewController *a2, char a3, DARootViewController *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a4)
  {
    sub_10007C874(a1, a2, (a3 & 1), a4, a5, a6, a7, a8);

    a4, v9, v10, v11, v12, v13, v14, v15;
  }
}

id sub_10009DF78()
{
  type metadata accessor for DeviceStateResponder();
  v0 = swift_allocObject();
  result = [objc_opt_self() sharedInstance];
  *(v0 + 16) = result;
  qword_10020A3D0 = v0;
  return result;
}

id sub_10009DFD4(void *a1)
{
  if ([a1 overrideTrueToneSettings] && (objc_msgSend(a1, "requestedTrueToneSetting") & 1) == 0)
  {
    if (qword_1001FC6B8 != -1)
    {
      swift_once();
    }

    sub_100050ADC();
  }

  else
  {
    if (qword_1001FC6B8 != -1)
    {
      swift_once();
    }

    if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_trueToneUserSetting) != 2)
    {
      v3 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_brightnessClient);
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v5 = String._bridgeToObjectiveC()();
      [v3 setProperty:isa forKey:v5];
    }
  }

  v6 = [a1 overrideDisplayBrightness];
  v7 = *(v1 + 16);
  if (v6)
  {
    [a1 requestedDisplayBrightness];
    v8 = "setScreenToBrightness:animate:";
    v9 = v7;
    v10 = 1;
  }

  else
  {
    v8 = "resetScreenBrightness:";
    v9 = v7;
    v10 = 0;
  }

  return [v9 v8];
}

void sub_10009E188()
{
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_trueToneUserSetting) != 2)
  {
    v1 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_brightnessClient);
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v3 = String._bridgeToObjectiveC()();
    [v1 setProperty:isa forKey:v3];
  }

  sub_1000F6DA8();
  v4 = *(v0 + 16);
  v6[4] = sub_10009E2D8;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100031FA8;
  v6[3] = &unk_1001C3470;
  v5 = _Block_copy(v6);
  [v4 resetScreenBrightness:v5];
  _Block_release(v5);
}

void sub_10009E2D8()
{
  if (qword_10020A548)
  {
    v0 = qword_10020A548;
    OS_dispatch_semaphore.signal()();
  }
}

uint64_t sub_10009E354(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10009E3AC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s10DiagnosticCMa();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10009E624()
{
  sub_10003C49C(&qword_1001FF400, &qword_100181C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  strcpy((inited + 32), "operationMode");
  *(inited + 46) = -4864;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  v1 = sub_1000D5C20(inited);
  swift_setDeallocating();
  sub_10009F404(inited + 32);
  return v1;
}

unint64_t sub_10009E8D4()
{
  sub_10003C49C(&qword_1001FF400, &qword_100181C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000010018E6B0;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  v1 = sub_1000D5C20(inited);
  swift_setDeallocating();
  sub_10009F404(inited + 32);
  return v1;
}

unint64_t sub_10009EA0C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10003C49C(&qword_1001FF400, &qword_100181C70);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_10017EF10;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  *(inited + 48) = a1;
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  if (a2)
  {
    v10 = a1;
    [a2 code];
    v9[9].super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
    v9[10].super.super.isa = 0x6D6F44726F727265;
    v9[11].super.super.isa = 0xEB000000006E6961;
    v11 = [a2 domain];
    if (!v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      v14 = String._bridgeToObjectiveC()();
      v13, v15, v16, v17, v18, v19, v20, v21;
      v11 = v14;
    }
  }

  else
  {
    *(inited + 72) = xmmword_100181C50;
    *(inited + 88) = 0xEB000000006E6961;
    v22 = a1;
    v11 = 0;
  }

  v9[12].super.super.isa = v11;
  v23 = sub_1000D5C20(v9);
  swift_setDeallocating();
  sub_10003C49C(&qword_1001FF408, qword_100181C78);
  swift_arrayDestroy();
  return v23;
}

unint64_t sub_10009EC44(void *a1)
{
  sub_10003C49C(&qword_1001FF400, &qword_100181C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x800000010018E630;
  *(inited + 48) = a1;
  v3 = a1;
  v4 = sub_1000D5C20(inited);
  swift_setDeallocating();
  sub_10009F404(inited + 32);
  return v4;
}

unint64_t sub_10009EE38(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10003C49C(&qword_1001FF400, &qword_100181C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a1;
  v7 = a1;
  v8 = sub_1000D5C20(inited);
  swift_setDeallocating();
  sub_10009F404(inited + 32);
  return v8;
}

Swift::Int sub_10009EFB0(uint64_t (*a1)(void))
{
  v1 = a1();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10009F010(v1);
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

Swift::Int sub_10009F010(uint64_t a1)
{
  v2 = a1 + 64;
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

  v8 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = v9 | (v8 << 6);
        v11 = *(*(a1 + 56) + 8 * v10);
        if (v11)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v13 = (*(a1 + 48) + 16 * v10);
      v28 = *v13;
      v29 = v13[1];
      v14 = _swiftEmptyDictionarySingleton[2];
      if (_swiftEmptyDictionarySingleton[3] <= v14)
      {
        v16 = v11;

        sub_100140CD8(v14 + 1, 1);
      }

      else
      {
        v15 = v11;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = &_swiftEmptyDictionarySingleton[8];
      v18 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~_swiftEmptyDictionarySingleton[(v19 >> 6) + 8]) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~_swiftEmptyDictionarySingleton[(v19 >> 6) + 8])) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v29;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (_swiftEmptyDictionarySingleton[6] + 16 * v21);
      *v27 = v28;
      v27[1] = v22;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v21) = v11;
      ++_swiftEmptyDictionarySingleton[2];
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
    v24 = (63 - v18) >> 6;
    v22 = v29;
    while (++v20 != v24 || (v23 & 1) == 0)
    {
      v25 = v20 == v24;
      if (v20 == v24)
      {
        v20 = 0;
      }

      v23 |= v25;
      v26 = v17[v20];
      if (v26 != -1)
      {
        v21 = __clz(__rbit64(~v26)) + (v20 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v12 >= v6)
      {

        return _swiftEmptyDictionarySingleton;
      }

      v5 = *(v2 + 8 * v12);
      ++v8;
      if (v5)
      {
        v8 = v12;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10009F260(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(24);
  0xE000000000000000, v8, v9, v10, v11, v12, v13, v14;
  v15._countAndFlagsBits = a1;
  v15._object = a2;
  String.append(_:)(v15);
  v16 = String._bridgeToObjectiveC()();
  0x800000010018E560, v17, v18, v19, v20, v21, v22, v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v26[4] = sub_10009F3E4;
  v26[5] = v24;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 1107296256;
  v26[2] = sub_1000EBD70;
  v26[3] = &unk_1001C34C0;
  v25 = _Block_copy(v26);

  AnalyticsSendEventLazy();
  _Block_release(v25);
}

uint64_t sub_10009F3AC()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_10009F3EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009F404(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FF408, qword_100181C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009F474()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_10009F530()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

void sub_10009F5E8()
{
  v1 = (v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction);
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instructionLabel;
    v5 = *(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instructionLabel);
    v25 = *v1;

    [v5 setTextAlignment:1];
    if (v3)
    {
      v6 = *(v0 + v4);
      v7 = v25;
      [v6 setTextAlignment:4];
      v8 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconImageView;
      [*(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconImageView) setImage:v7];
      [*(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView) insertArrangedSubview:*(v0 + v8) atIndex:0];
    }

    v9 = *(v0 + v4);

    v10 = String._bridgeToObjectiveC()();
    v2, v11, v12, v13, v14, v15, v16, v17;
    [v9 setText:v10];

    v2, v18, v19, v20, v21, v22, v23, v24;
  }
}

id sub_10009F754()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v1];

  [v0 setSelectionStyle:0];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView];

  return [v2 setSpacing:16.0];
}

void sub_10009F7E8()
{
  v1 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView;
  [*&v0[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView] addArrangedSubview:*&v0[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instructionLabel]];
  v2 = [v0 contentView];
  [v2 addSubview:*&v0[v1]];
}

void sub_10009F870()
{
  v1 = v0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for InstructionListCell();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  v2 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017EDB0;
  v4 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconImageView;
  v5 = [*&v1[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconImageView] widthAnchor];
  v6 = [v5 constraintEqualToConstant:40.0];

  *(v3 + 32) = v6;
  v7 = [*&v1[v4] heightAnchor];
  v8 = [v7 constraintEqualToConstant:40.0];

  *(v3 + 40) = v8;
  v9 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView;
  v10 = [*&v1[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView] topAnchor];
  v11 = [v1 contentView];
  v12 = [v11 topAnchor];

  v13 = [v10 constraintEqualToAnchor:v12];
  *(v3 + 48) = v13;
  v14 = [*&v1[v9] bottomAnchor];
  v15 = [v1 contentView];
  v16 = [v15 bottomAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  *(v3 + 56) = v17;
  v18 = [*&v1[v9] leadingAnchor];
  v19 = [v1 contentView];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v3 + 64) = v21;
  v22 = [*&v1[v9] trailingAnchor];
  v23 = [v1 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v3 + 72) = v25;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3, v27, v28, v29, v30, v31, v32, v33;
  [v2 activateConstraints:isa];
}

id sub_10009FC04(uint64_t a1, uint64_t a2, DARootViewController *a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconDimensionSize] = 0x4044000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_horizontalPadding] = 0x4030000000000000;
  v6 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView;
  v7 = [objc_allocWithZone(UIStackView) init];
  [v7 setAxis:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAlignment:3];
  [v7 setDistribution:0];
  *&v3[v6] = v7;
  v8 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconImageView;
  v9 = [objc_allocWithZone(UIImageView) init];
  [v9 setContentMode:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v3[v8] = v9;
  v10 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instructionLabel;
  v11 = [objc_allocWithZone(UILabel) init];
  v12 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v11 setFont:v12];

  [v11 setNumberOfLines:0];
  [v11 setAdjustsFontForContentSizeCategory:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v10] = v11;
  v13 = &v3[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction];
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *v13 = 0;
  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
    a3, v15, v16, v17, v18, v19, v20, v21;
  }

  else
  {
    v14 = 0;
  }

  v24.receiver = v3;
  v24.super_class = type metadata accessor for InstructionListCell();
  v22 = objc_msgSendSuper2(&v24, "initWithStyle:reuseIdentifier:", a1, v14);

  return v22;
}

id sub_10009FE84(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconDimensionSize] = 0x4044000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_horizontalPadding] = 0x4030000000000000;
  v3 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView;
  v4 = [objc_allocWithZone(UIStackView) init];
  [v4 setAxis:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setAlignment:3];
  [v4 setDistribution:0];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconImageView;
  v6 = [objc_allocWithZone(UIImageView) init];
  [v6 setContentMode:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v1[v5] = v6;
  v7 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instructionLabel;
  v8 = [objc_allocWithZone(UILabel) init];
  v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v8 setFont:v9];

  [v8 setNumberOfLines:0];
  [v8 setAdjustsFontForContentSizeCategory:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v7] = v8;
  v10 = &v1[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction];
  v11 = type metadata accessor for InstructionListCell();
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  v14.receiver = v1;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v12)
  {
  }

  return v12;
}

void sub_1000A00B8()
{
  v6 = *(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction);
  v7 = *(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 8);
  v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 16);

  sub_1000A01EC(v6, v7, v8, v1, v2, v3, v4, v5);
}

id sub_1000A0120(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InstructionListCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000A01EC(void *a1, const char *a2, DARootViewController *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3)
  {
    a3, a2, a3, a4, a5, a6, a7, a8;
  }
}

unint64_t sub_1000A0230@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A265C(*a1);
  *a2 = result;
  return result;
}

void sub_1000A0268()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 15.0;
  if (v1 == 1)
  {
    sub_1000A4918();
    v2 = v3 / 6.0;
  }

  qword_1001FF468 = *&v2;
}

void sub_1000A02DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel);
  if (*(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned) == 1)
  {
    if (v1)
    {
      [v1 setTextAlignment:1];
    }

    v2 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
    [*(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView) setAlignment:3];
    v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView);
    [v3 removeArrangedSubview:*(v0 + v2)];
    v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView);
    [v4 insertArrangedSubview:*(v0 + v2) atIndex:0];
    v5 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView);
    if (v5)
    {
      v6 = v5;
      [v3 removeArrangedSubview:v6];
      [v4 addArrangedSubview:v6];
    }

    v7 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint);
    if (v7)
    {
      v15 = v7;
      [v3 spacing];
      [v15 setConstant:-v8];
    }
  }

  else
  {
    if (v1)
    {
      [v1 setTextAlignment:4];
    }

    v9 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
    [*(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView) setAlignment:1];
    v10 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView);
    [v10 removeArrangedSubview:*(v0 + v9)];
    v11 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView);
    [v11 addArrangedSubview:*(v0 + v9)];
    v12 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView);
    if (v12)
    {
      v13 = v12;
      [v10 removeArrangedSubview:v13];
      [v11 addArrangedSubview:v13];
    }

    v14 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint);
    if (v14)
    {

      [v14 setConstant:0.0];
    }
  }
}

void sub_1000A06F4()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  sub_1000A4918();
  v4 = v3;
  if (v2 == 1)
  {
    sub_1000A4918();
    v6 = v5 / -3.0;
  }

  else
  {
    v6 = -30.0;
  }

  v7 = v4 + v6;
  v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView);
  [v8 setAxis:1];
  [v8 setDistribution:2];
  [v8 setAlignment:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView);
  [v9 setAxis:1];
  [v9 setDistribution:3];
  [v9 setAlignment:3];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel);
  v11 = &off_1001EE000;
  v12 = &off_1001EE000;
  if (v10)
  {
    v13 = objc_opt_self();
    v14 = v10;
    v15 = [v13 preferredFontForTextStyle:UIFontTextStyleBody];
    v16 = [v15 fontDescriptor];
    v17 = [v16 fontDescriptorWithSymbolicTraits:2];

    if (!v17)
    {
      v17 = [v15 fontDescriptor];
    }

    [v15 pointSize];
    v18 = [v13 fontWithDescriptor:v17 size:?];

    [v14 setFont:v18];
    v19 = objc_opt_self();
    v12 = &off_1001EE000;
    v20 = [v19 labelColor];
    [v14 setTextColor:v20];

    [v14 setTextAlignment:4];
    [v14 setNumberOfLines:0];
    v11 = &off_1001EE000;
    [v14 setPreferredMaxLayoutWidth:v7];
    v21 = [v19 labelColor];
    [v14 setTextColor:v21];

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v22 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel);
  if (v22)
  {
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 preferredFontForTextStyle:UIFontTextStyleBody];
    [v24 setFont:v25];

    v26 = [objc_opt_self() secondaryLabelColor];
    [v24 setTextColor:v26];

    [v24 setTextAlignment:4];
    [v24 setNumberOfLines:0];
    [v24 v11[386]];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v27 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  [*(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView) setAxis:1];
  [*(v0 + v27) setDistribution:4];
  [*(v0 + v27) setAlignment:3];
  [*(v0 + v27) setSpacing:8.0];
  [*(v0 + v27) setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView);
  v29 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  [v28 setTintColor:v29];

  v30 = objc_opt_self();
  v31 = [v30 opaqueSeparatorColor];
  [v28 setTrackTintColor:v31];

  [v28 setAlpha:0.0];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel);
  if (v32)
  {
    v33 = objc_opt_self();
    v34 = v32;
    v35 = [v33 preferredFontForTextStyle:UIFontTextStyleBody];
    [v34 setFont:v35];

    v36 = [v30 secondaryLabelColor];
    [v34 setTextColor:v36];

    [v34 setTextAlignment:1];
    [v34 setNumberOfLines:0];
    [v34 v11[386]];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v37 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView);
  [v37 setHidesWhenStopped:0];
  v38 = [v30 v12[356]];
  [v37 setColor:v38];

  [v37 startAnimating];
  [v37 setAlpha:0.0];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView);
  if (v39)
  {
    v40 = v39;
    [v40 setDistribution:3];
    [v40 setAlignment:3];
    v41 = [v40 axis];
    v42 = 50.0;
    if (v41)
    {
      v42 = 10.0;
    }

    [v40 setSpacing:v42];
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned) = 1;

  sub_1000A02DC();
}

void sub_1000A0E2C()
{
  v1 = sub_10003C49C(&qword_1001FD070, &unk_10017EF00);
  __chkstk_darwin(v1 - 8);
  v60 = &v51 - v2;
  v59 = type metadata accessor for UIButton.Configuration();
  v3 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v57 = &v51 - v7;
  v8 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView];
  [v0 addSubview:{v8, v6}];
  v9 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView];
  [v0 addSubview:v9];
  v10 = &off_1001EE000;
  if (*&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel])
  {
    [v8 addArrangedSubview:?];
  }

  if (*&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel])
  {
    [v8 addArrangedSubview:?];
  }

  v11 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
  if (v11)
  {
    v12 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
    v13 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView];
    v14 = v11;
    [v13 addArrangedSubview:v14];
    [v9 addArrangedSubview:*&v0[v12]];
  }

  v15 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView];
  if (v15)
  {
    v51 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView];
    v52 = v9;
    v16 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_actions];
    v17 = *(v16 + 16);
    if (v17)
    {
      v55 = (v3 + 16);
      v56 = UIFontTextStyleBody;
      v54 = (v3 + 8);
      v18 = v15;
      v19 = (v16 + 64);
      v20 = &off_1001EE000;
      v21 = &off_1001EE000;
      v53 = v18;
      do
      {
        v44 = *(v19 - 3);
        v45 = *(v19 - 16);
        v46 = *(v19 - 1);
        v47 = *v19;
        *&v63 = *(v19 - 4);
        *(&v63 + 1) = v44;
        LOBYTE(v64) = v45;
        *(&v64 + 1) = v46;
        v65 = v47;
        if (v45 == 7)
        {
          v61 = type metadata accessor for TextButton();
          v22 = objc_allocWithZone(v61);
          v23 = objc_opt_self();
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v24 = [v23 preferredFontForTextStyle:v56];
          v25 = v57;
          static UIButton.Configuration.plain()();
          *(swift_allocObject() + 16) = v24;
          v26 = v10;
          v27 = v24;
          v28 = v60;
          UIConfigurationTextAttributesTransformer.init(_:)();
          v29 = type metadata accessor for UIConfigurationTextAttributesTransformer();
          (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
          UIButton.Configuration.titleTextAttributesTransformer.setter();

          sub_10003E110(0, &qword_1001FD078, UIButton_ptr);
          v30 = v59;
          (*v55)(v58, v25, v59);
          v10 = v26;
          v20 = &off_1001EE000;
          *&v22[OBJC_IVAR____TtC11Diagnostics10TextButton_button] = UIButton.init(configuration:primaryAction:)();
          v31 = &v22[OBJC_IVAR____TtC11Diagnostics10TextButton_action];
          *(v31 + 4) = v65;
          v32 = v64;
          *v31 = v63;
          *(v31 + 1) = v32;
          v62.receiver = v22;
          v62.super_class = v61;
          v33 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
          v34 = v25;
          v21 = &off_1001EE000;
          v35 = v30;
          v18 = v53;
          (*v54)(v34, v35);
        }

        else
        {
          v48 = objc_allocWithZone(type metadata accessor for GlyphButton());
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v33 = sub_100085D80(&v63);
        }

        v36 = v33;
        [v36 v20[334]];
        [v36 v21[498]];
        [v18 v10[435]];

        v44, v37, v38, v39, v40, v41, v42, v43;

        v19 += 5;
        --v17;
      }

      while (v17);
    }

    else
    {
      v49 = v15;
    }

    v50 = v51;
    [v52 v10[435]];
  }
}

void sub_1000A131C()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView];
  v2 = [v1 bottomAnchor];
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView];
  v4 = [v3 topAnchor];
  [v1 spacing];
  v6 = [v2 constraintEqualToAnchor:v4 constant:-v5];

  v7 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = v6;
  v8 = v6;

  v38 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100181CB0;
  v10 = [v1 topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  *(v9 + 40) = v8;
  v13 = v8;
  v14 = [v1 leadingAnchor];
  v15 = [v0 leadingAnchor];
  if (qword_1001FC748 != -1)
  {
    swift_once();
  }

  v16 = *&qword_1001FF468;
  v17 = [v14 constraintEqualToAnchor:v15 constant:{*&qword_1001FF468, v38}];

  *(v9 + 48) = v17;
  v18 = [v1 trailingAnchor];
  v19 = [v0 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-v16];

  *(v9 + 56) = v20;
  v21 = [v3 bottomAnchor];
  v22 = [v0 bottomAnchor];
  [v3 spacing];
  v24 = [v21 constraintEqualToAnchor:v22 constant:-v23];

  *(v9 + 64) = v24;
  v25 = [v3 leadingAnchor];
  v26 = [v0 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:v16];

  *(v9 + 72) = v27;
  v28 = [v3 trailingAnchor];
  v29 = [v0 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-v16];

  *(v9 + 80) = v30;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9, v31, v32, v33, v34, v35, v36, v37;
  [v39 activateConstraints:isa];
}

void sub_1000A1730(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel);
  if (a2)
  {
    if (v3)
    {
      v4 = v3;
      v5 = String._bridgeToObjectiveC()();
      [v4 setText:v5];
    }
  }

  else
  {
    if (v3)
    {
      [v3 removeFromSuperview];
    }

    v6 = *(v2 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler);
    if (v6)
    {
      v7 = *(v2 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8);

      v6(v8);
      sub_10003C52C(v6, v7);
    }
  }

  v9 = *(v2 + OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView);
  if (v9)
  {
    v10 = [v9 subviews];
    sub_10003E110(0, &qword_1001FF090, UIView_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
      if (v19)
      {
LABEL_11:
        if (v19 < 1)
        {
          __break(1u);
        }

        else
        {
          for (i = 0; i != v19; ++i)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v30 = *(v11 + 8 * i + 32);
            }

            v34 = v30;
            v31 = v30;
            sub_10003C49C(&qword_1001FF518, &qword_100181D98);
            if (swift_dynamicCast())
            {
              sub_100049F74(v32, v35);
              v21 = v36;
              v22 = v37;
              sub_1000442A0(v35, v36);
              (*(v22 + 8))(v21, v22);

              sub_100044554(v35);
            }

            else
            {

              v33 = 0;
              memset(v32, 0, sizeof(v32));
              sub_1000A27BC(v32);
            }
          }

          v11, v23, v24, v25, v26, v27, v28, v29;
        }

        return;
      }
    }

    else
    {
      v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_11;
      }
    }

    v11, v12, v13, v14, v15, v16, v17, v18;
  }
}

void sub_1000A19FC()
{
  [*&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView] alpha];
  if (v1 == 0.0)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = objc_opt_self();
    v12 = sub_1000A2750;
    v13 = v2;
    v8 = _NSConcreteStackBlock;
    v9 = 1107296256;
    v10 = sub_100031FA8;
    v11 = &unk_1001C38D0;
    v5 = _Block_copy(&v8);
    v6 = v0;

    v12 = sub_1000A29C8;
    v13 = v3;
    v8 = _NSConcreteStackBlock;
    v9 = 1107296256;
    v10 = sub_100084F94;
    v11 = &unk_1001C38F8;
    v7 = _Block_copy(&v8);

    [v4 animateWithDuration:0x10000 delay:v5 options:v7 animations:0.375 completion:0.0];
    _Block_release(v7);
    _Block_release(v5);
  }
}

void sub_1000A1BD4()
{
  [*&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView] alpha];
  if (v1 == 1.0)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = objc_opt_self();
    v12 = sub_1000A26D0;
    v13 = v2;
    v8 = _NSConcreteStackBlock;
    v9 = 1107296256;
    v10 = sub_100031FA8;
    v11 = &unk_1001C3830;
    v5 = _Block_copy(&v8);
    v6 = v0;

    v12 = sub_1000A2734;
    v13 = v3;
    v8 = _NSConcreteStackBlock;
    v9 = 1107296256;
    v10 = sub_100084F94;
    v11 = &unk_1001C3858;
    v7 = _Block_copy(&v8);

    [v4 animateWithDuration:0x20000 delay:v5 options:v7 animations:0.125 completion:0.0];
    _Block_release(v7);
    _Block_release(v5);
  }
}

double sub_1000A1DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler);
  if (v2)
  {
    v3 = *(a2 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8);

    v2(v4);

    return sub_10003C52C(v2, v3);
  }

  return result;
}

void sub_1000A1E18(float a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView];
  [v3 alpha];
  if (v4 == 0.0)
  {
    *&v4 = a1;
    [v3 setProgress:0 animated:v4];
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = objc_opt_self();
    v12[4] = sub_1000A26C8;
    v12[5] = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100031FA8;
    v12[3] = &unk_1001C37B8;
    v7 = _Block_copy(v12);
    v8 = v1;

    [v6 animateWithDuration:0x10000 delay:v7 options:0 animations:0.375 completion:0.0];
    _Block_release(v7);

    v9 = *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
    if (v9)
    {
      v10 = *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8];

      v9(v11);
      sub_10003C52C(v9, v10);
    }
  }

  else
  {
    *&v4 = a1;

    [v3 setProgress:1 animated:v4];
  }
}

id sub_1000A1FDC(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView];
  [*&a1[OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView] insertArrangedSubview:v2 atIndex:0];
  v3 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10017ED90;
  v5 = [v2 leadingAnchor];
  v6 = [a1 leadingAnchor];
  if (qword_1001FC748 != -1)
  {
    swift_once();
  }

  v7 = *&qword_1001FF468 + 25.0;
  v8 = [v5 constraintEqualToAnchor:v6 constant:*&qword_1001FF468 + 25.0];

  *(v4 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [a1 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-v7];

  *(v4 + 40) = v11;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4, v13, v14, v15, v16, v17, v18, v19;
  [v3 activateConstraints:isa];

  return [v2 setAlpha:1.0];
}

double sub_1000A21F4()
{
  [*&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView] alpha];
  if (result == 1.0)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = objc_opt_self();
    v9[4] = sub_1000A26A4;
    v9[5] = v2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100031FA8;
    v9[3] = &unk_1001C3768;
    v4 = _Block_copy(v9);
    v5 = v0;

    [v3 animateWithDuration:0x20000 delay:v4 options:0 animations:0.125 completion:0.0];
    _Block_release(v4);

    v6 = *&v5[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
    if (v6)
    {
      v7 = *&v5[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8];

      v6(v8);
      return sub_10003C52C(v6, v7);
    }
  }

  return result;
}

void sub_1000A2390()
{
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler), *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8));
  v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_actions);

  v8, v1, v2, v3, v4, v5, v6, v7;
}

id sub_1000A2474()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromptView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000A25D0()
{
  result = qword_1001FF510;
  if (!qword_1001FF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF510);
  }

  return result;
}

double sub_1000A2638(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler);
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_10003C52C(v4, v5);
}

unint64_t sub_1000A265C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1000A266C()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000A26B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000A26DC(void *a1)
{
  v2 = *(*(v1 + 16) + *a1);
  [v2 removeFromSuperview];

  return [v2 setAlpha:0.0];
}

id sub_1000A2750()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView);
  [*(v1 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView) insertArrangedSubview:v2 atIndex:0];

  return [v2 setAlpha:1.0];
}

uint64_t sub_1000A27BC(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FF520, &unk_100181DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000A2824()
{
  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned) = 1;
  v1 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel) = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *(v0 + v4) = [objc_allocWithZone(UIProgressView) init];
  v5 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *(v0 + v5) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel) = 0;
  v6 = (v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000A29CC(uint64_t a1)
{
  result = _UISolariumEnabled();
  v2 = 12.0;
  if (result)
  {
    v2 = 26.0;
  }

  qword_10020A3D8 = *&v2;
  return result;
}

void sub_1000A2A0C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5);
  v9 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState];
  if (v9)
  {
    v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v8;
    v37 = v4;
    v38 = v6;
    v39 = v2;
    v40 = v1;

    sub_1000A3B88();
    v10 = objc_opt_self();
    v11 = [v10 defaultCenter];
    if (qword_1001FC6F0 != -1)
    {
      swift_once();
    }

    v12 = qword_10020A3A0;
    v13 = objc_opt_self();

    v14 = [v13 mainQueue];
    v15 = swift_allocObject();
    *(v15 + 16) = v0;
    v45 = sub_1000A48A8;
    v46 = v15;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100060B2C;
    v44 = &unk_1001C3948;
    v16 = _Block_copy(&aBlock);
    v17 = v0;

    v18 = [v11 addObserverForName:v12 object:v9 queue:v14 usingBlock:v16];
    _Block_release(v16);

    *&v17[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardStateNotificationToken] = v18;
    swift_unknownObjectRelease();
    v19 = [v10 defaultCenter];
    v20 = *(v9 + 40);
    v21 = @"com.apple.Diagnostics.deviceStateChangedNotification";
    v22 = v20;
    v23 = [v13 mainQueue];
    v24 = swift_allocObject();
    *(v24 + 16) = v17;
    v45 = sub_1000A48C8;
    v46 = v24;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100060B2C;
    v44 = &unk_1001C3998;
    v25 = _Block_copy(&aBlock);
    v26 = v17;

    v27 = [v19 addObserverForName:v21 object:v22 queue:v23 usingBlock:v25];
    _Block_release(v25);

    *&v26[OBJC_IVAR____TtC11Diagnostics12CardViewCell_deviceStateNotificationToken] = v27;
    swift_unknownObjectRelease();
    sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
    v28 = static OS_dispatch_queue.main.getter();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v9;
    v45 = sub_1000A4910;
    v46 = v29;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100031FA8;
    v44 = &unk_1001C39E8;
    v30 = _Block_copy(&aBlock);

    v31 = v26;

    v32 = v35;
    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_1000A4B64(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_1000446A0();
    v33 = v37;
    v34 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v39 + 8))(v33, v34);
    (*(v36 + 8))(v32, v38);
  }
}

void sub_1000A2FC0(uint64_t a1, void *a2)
{
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    strcpy(v20, "changeInfoKey");
    HIWORD(v20[1]) = -4864;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v12 = sub_100064B74(v21), (v5 & 1) != 0))
    {
      sub_10003E010(*(v4 + 56) + 32 * v12, v22);
      sub_10003DB48(v21);
      v4, v13, v14, v15, v16, v17, v18, v19;
      if (swift_dynamicCast())
      {
        if ((v20[1] & 0x20) != 0)
        {
          sub_1000A4104(*(v20[0] + 32));
        }

        if ((v20[1] & 8) != 0)
        {
          (*((swift_isaMask & *a2) + 0x178))(v20[0]);
        }

        if ((v20[1] & 0x10) != 0)
        {
          (*((swift_isaMask & *a2) + 0x180))(*(v20[0] + 24));
        }
      }
    }

    else
    {
      v4, v5, v6, v7, v8, v9, v10, v11;
      sub_10003DB48(v21);
    }
  }
}

void sub_1000A315C(uint64_t a1)
{
  v1 = Notification.userInfo.getter();
  if (v1)
  {
    v2 = v1;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v10 = sub_100064B74(v19), (v3 & 1) != 0))
    {
      sub_10003E010(*(v2 + 56) + 32 * v10, v20);
      sub_10003DB48(v19);
      v2, v11, v12, v13, v14, v15, v16, v17;
      sub_10003E110(0, &unk_100201860, off_1001BA120);
      if (swift_dynamicCast())
      {
        sub_1000A3E4C(v18);
      }
    }

    else
    {
      v2, v3, v4, v5, v6, v7, v8, v9;
      sub_10003DB48(v19);
    }
  }
}