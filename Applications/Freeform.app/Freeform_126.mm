void sub_100F558C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_100F8A1C8(a1);
  v11 = sub_10004B3DC(v10);

  type metadata accessor for CRLBoardLibrary();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    if (*(v11 + 16))
    {
      v13 = v12;
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain_n();
      v15 = v3;
      sub_10002E7A8(a2, a3);

      v16 = static MainActor.shared.getter();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = &protocol witness table for MainActor;
      v17[4] = v15;
      v17[5] = v11;
      v17[6] = v13;
      v17[7] = a2;
      v17[8] = a3;
      v17[9] = a1;
      sub_10064191C(0, 0, v9, &unk_1014B9870, v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v40 = objc_opt_self();
    v18 = [v40 _atomicIncrementAssertCount];
    v41 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v41, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("delete(items:deletionHandler:)", 30, 2);
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v18;
    v27 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v27;
    v28 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v28;
    *(inited + 72) = v19;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v22;
    *(inited + 120) = v24;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 2632;
    v30 = v41;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v30;
    v31 = v19;
    v32 = v30;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v34, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v35 = swift_allocObject();
    v35[2] = 8;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
    v36 = __VaListBuilder.va_list()();
    StaticString.description.getter("delete(items:deletionHandler:)", 30, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v39 = String._bridgeToObjectiveC()();

    [v40 handleFailureInFunction:v37 file:v38 lineNumber:2632 isFatal:0 format:v39 args:v36];
  }
}

uint64_t sub_100F55E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[63] = a8;
  v8[64] = v14;
  v8[61] = a6;
  v8[62] = a7;
  v8[59] = a4;
  v8[60] = a5;
  v9 = sub_1005B981C(&qword_101A23C20, &qword_101498378);
  v8[65] = v9;
  v8[66] = *(v9 - 8);
  v8[67] = swift_task_alloc();
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = _s5BoardVMa(0);
  v8[74] = swift_task_alloc();
  v8[75] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  sub_1005B981C(&qword_101A23C28, &qword_1014B9880);
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[81] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[82] = v11;
  v8[83] = v10;

  return _swift_task_switch(sub_100F56080, v11, v10);
}

uint64_t sub_100F56080()
{
  v1 = type metadata accessor for CRLBoardLibrary();
  v2 = swift_task_alloc();
  *(v0 + 672) = v2;
  *v2 = v0;
  v2[1] = sub_100F561C8;
  v3 = *(v0 + 480);

  return (sub_1010D556C)(v3, v1, &off_1018B0AB8);
}

uint64_t sub_100F561C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 680) = a1;
  *(v4 + 688) = v1;

  v5 = *(v3 + 664);
  v6 = *(v3 + 656);
  if (v1)
  {
    v7 = sub_100F57528;
  }

  else
  {
    v7 = sub_100F56310;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100F56310()
{
  v144 = v0;
  v1 = v0[85];
  v131 = v0[73];
  v132 = v0[75];
  v136 = v0[66];
  v137 = v0[65];
  v130 = v0[61];

  v2 = 0;
  v128 = swift_allocObject();
  *(v128 + 16) = _swiftEmptySetSingleton;
  v3 = v1 + 64;
  v133 = v1;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v129 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController;
  v7 = (63 - v5) >> 6;
  v8 = v0[86];
  v140 = _swiftEmptyArrayStorage;
  v134 = v1 + 64;
  while (1)
  {
    v139 = v8;
    if (!v6)
    {
      break;
    }

    v11 = v2;
LABEL_16:
    v14 = v0[79];
    v15 = v0[78];
    v16 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = v16 | (v11 << 6);
    sub_1000652DC(*(v133 + 48) + *(v132 + 72) * v17, v15, type metadata accessor for CRLBoardIdentifier);
    LOBYTE(v17) = *(*(v133 + 56) + v17);
    v18 = sub_1005B981C(&unk_101A23C30, &qword_1014C6070);
    v19 = *(v18 + 48);
    sub_100065D50(v15, v14, type metadata accessor for CRLBoardIdentifier);
    *(v14 + v19) = v17;
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
LABEL_17:
    v20 = v0[80];
    sub_10003DFF8(v0[79], v20, &qword_101A23C28, &qword_1014B9880);
    v21 = sub_1005B981C(&unk_101A23C30, &qword_1014C6070);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
    {

      v40 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_90;
      }

      v41 = v140;
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        sub_1005EE0B8(v40);
      }

      while (v41[2])
      {
        v135 = v41[2];
        v42 = 0;
        v40 = _swiftEmptyArrayStorage;
        do
        {
          if (v42 >= v41[2])
          {
            __break(1u);
            goto LABEL_88;
          }

          v43 = v0[71];
          v44 = (*(v136 + 80) + 32) & ~*(v136 + 80);
          v45 = *(v136 + 72);
          sub_10000BE14(v41 + v44 + v45 * v42, v43, &qword_101A23C20, &qword_101498378);
          v46 = v0[71];
          if (*(v43 + *(v137 + 48)) - 1 > 1)
          {
            sub_10000CAAC(v46, &qword_101A23C20, &qword_101498378);
          }

          else
          {
            sub_10003DFF8(v46, v0[70], &qword_101A23C20, &qword_101498378);
            v143 = v40;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100776D04(0, v40[2] + 1, 1);
              v40 = v143;
            }

            v48 = v40[2];
            v47 = v40[3];
            if (v48 >= v47 >> 1)
            {
              sub_100776D04((v47 > 1), v48 + 1, 1);
              v40 = v143;
            }

            v49 = v0[70];
            v40[2] = v48 + 1;
            sub_10003DFF8(v49, v40 + v44 + v48 * v45, &qword_101A23C20, &qword_101498378);
            v41 = v140;
          }

          ++v42;
        }

        while (v135 != v42);
        v50 = v41;
        v51 = 0;
        v136 = v44;
        v52 = v50 + v44;
        v53 = _swiftEmptyArrayStorage;
        v54 = v135;
        while (v51 < v140[2])
        {
          v55 = v0[69];
          sub_10000BE14(v52, v55, &qword_101A23C20, &qword_101498378);
          v56 = v0[69];
          if (*(v55 + *(v137 + 48)) == 3)
          {
            sub_10003DFF8(v56, v0[68], &qword_101A23C20, &qword_101498378);
            v143 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100776D04(0, v53[2] + 1, 1);
              v53 = v143;
            }

            v58 = v53[2];
            v57 = v53[3];
            if (v58 >= v57 >> 1)
            {
              sub_100776D04((v57 > 1), v58 + 1, 1);
              v53 = v143;
            }

            v59 = v0[68];
            v53[2] = v58 + 1;
            sub_10003DFF8(v59, v53 + v44 + v58 * v45, &qword_101A23C20, &qword_101498378);
            v54 = v135;
          }

          else
          {
            sub_10000CAAC(v56, &qword_101A23C20, &qword_101498378);
          }

          ++v51;
          v52 += v45;
          if (v54 == v51)
          {
            v60 = v40[2];

            if (v60 == v54)
            {

              v61 = v140;
              v62 = v140 + v44;
              v63 = -v140[2];
              v64 = -1;
              v40 = &qword_101498378;
              while (v63 + v64 != -1)
              {
                if (++v64 >= v61[2])
                {
                  goto LABEL_89;
                }

                v65 = v62 + v45;
                v66 = v0[67];
                sub_10000BE14(v62, v66, &qword_101A23C20, &qword_101498378);
                v67 = *(v66 + *(v137 + 48));
                sub_10000CAAC(v66, &qword_101A23C20, &qword_101498378);
                v62 = v65;
                v61 = v140;
                if (v67 == 1)
                {
                  v138 = 0;
                  v68 = 1;
                  goto LABEL_69;
                }
              }

              v138 = 2;
              v68 = 2;
LABEL_69:
              v54 = v135;
            }

            else
            {
              v75 = v53[2];

              if (v75 == v54)
              {
                v68 = 3;
              }

              else
              {
                if (!v60 || !v75)
                {
                  goto LABEL_84;
                }

                v68 = 4;
              }

              v138 = 2;
            }

            if (v54 == 1)
            {
              sub_100F7BB70(v68);
              sub_100F7C224(v68);
            }

            else
            {
              sub_100F7BA78(v68);
              sub_100F7C028(v68);
            }

            v76 = v0[63];
            v77 = v0[64];
            v78 = v0[62];
            v79 = v0[59];
            v80 = String._bridgeToObjectiveC()();

            v81 = String._bridgeToObjectiveC()();

            v82 = [objc_opt_self() alertControllerWithTitle:v80 message:v81 preferredStyle:1];

            sub_100F7C6F8();
            v83 = swift_allocObject();
            v83[2] = v140;
            v83[3] = v79;
            v141 = v68;
            v83[4] = v128;
            v83[5] = v78;
            v83[6] = v76;
            v83[7] = v77;
            v84 = v79;

            sub_10002E7A8(v78, v76);
            v85 = String._bridgeToObjectiveC()();

            v0[44] = sub_100F76F40;
            v0[45] = v83;
            v0[40] = _NSConcreteStackBlock;
            v0[41] = *"";
            v0[42] = sub_10068B39C;
            v0[43] = &unk_1018A9370;
            v86 = _Block_copy(v0 + 40);

            v87 = objc_opt_self();
            v88 = [v87 actionWithTitle:v85 style:v138 handler:v86];
            _Block_release(v86);

            [v82 addAction:v88];
            sub_100F7C7E0(v141);
            if (v89)
            {
              v91 = v0[63];
              v90 = v0[64];
              v92 = v0[62];
              v142 = v87;
              v93 = v88;
              v94 = v82;
              v95 = v0[59];
              v96 = swift_allocObject();
              v96[2] = v95;
              v96[3] = v128;
              v96[4] = v92;
              v96[5] = v91;
              v96[6] = v90;
              v97 = v95;
              v82 = v94;
              v88 = v93;

              sub_10002E7A8(v92, v91);
              v98 = String._bridgeToObjectiveC()();

              v0[50] = sub_100F76F50;
              v0[51] = v96;
              v0[46] = _NSConcreteStackBlock;
              v0[47] = *"";
              v0[48] = sub_10068B39C;
              v0[49] = &unk_1018A93C0;
              v99 = _Block_copy(v0 + 46);

              v100 = [v142 actionWithTitle:v98 style:1 handler:v99];
              _Block_release(v99);

              [v82 addAction:v100];
            }

            [v0[59] presentViewController:v82 animated:1 completion:0];

            goto LABEL_80;
          }
        }

LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        v41 = v140;
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_35;
        }
      }

      v69 = v0[62];
      v70 = v0[59];

      swift_beginAccess();

      sub_100F5772C(v71, 1, v70);

      if (v69)
      {
        v72 = v0[63];
        v73 = v0[64];
        v74 = v0[62];

        sub_100F8A554(v73, (v128 + 16));
        v74();

        sub_1000C1014(v74, v72);
      }

LABEL_80:

      v101 = v0[1];

      return v101();
    }

    v22 = v0[80];
    v23 = v0[77];
    v24 = v0[74];
    v25 = *(v22 + *(v21 + 48));
    sub_100065D50(v22, v23, type metadata accessor for CRLBoardIdentifier);
    sub_1010AB99C(v23, v24);
    if (v139)
    {

      v3 = v134;
LABEL_26:
      if (v25)
      {
        v33 = v0[72];
        v34 = *(v137 + 48);
        sub_1000652DC(v0[77], v33, type metadata accessor for CRLBoardIdentifier);
        *(v33 + v34) = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_100B39108(0, v140[2] + 1, 1, v140);
        }

        v36 = v140[2];
        v35 = v140[3];
        if (v36 >= v35 >> 1)
        {
          v140 = sub_100B39108((v35 > 1), v36 + 1, 1, v140);
        }

        v37 = v0[72];
        v140[2] = v36 + 1;
        sub_10003DFF8(v37, v140 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v36, &qword_101A23C20, &qword_101498378);
        v8 = 0;
      }

      else
      {
        v9 = v0[78];
        v10 = v0[76];
        sub_1000652DC(v0[77], v10, type metadata accessor for CRLBoardIdentifier);
        sub_100031F10(v9, v10);
        sub_10000BBC4(v9, type metadata accessor for CRLBoardIdentifier);
        v8 = 0;
      }

      goto LABEL_5;
    }

    v26 = v0[74];
    v27 = *(v26 + *(v131 + 60));
    sub_10000BBC4(v26, _s5BoardVMa);
    v3 = v134;
    if ((v27 & 1) == 0)
    {
      goto LABEL_26;
    }

    v28 = v0[77];
    v29 = *(*(v130 + v129) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
    v30 = swift_task_alloc();
    *(v30 + 16) = v28;

    v31 = sub_101107CA8(sub_1008F65DC, v30, v29);
    v8 = 0;

    if (v31)
    {
      v32 = v31;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

LABEL_5:
    sub_10000BBC4(v0[77], type metadata accessor for CRLBoardIdentifier);
  }

  if (v7 <= v2 + 1)
  {
    v12 = v2 + 1;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v38 = v0[79];
      v39 = sub_1005B981C(&unk_101A23C30, &qword_1014C6070);
      (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
      v6 = 0;
      v2 = v13;
      goto LABEL_17;
    }

    v6 = *(v3 + 8 * v11);
    ++v2;
    if (v6)
    {
      v2 = v11;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_84:
  v103 = objc_opt_self();
  v104 = [v103 _atomicIncrementAssertCount];
  v143 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v143, "should be impossible to get here. file a bug", 44, 2u);
  StaticString.description.getter("delete(items:deletionHandler:)", 30, 2);
  v105 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
  v106 = String._bridgeToObjectiveC()();

  v107 = [v106 lastPathComponent];

  v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v110 = v109;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v111 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v104;
  v113 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v113;
  v114 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v114;
  *(inited + 72) = v105;
  *(inited + 136) = &type metadata for String;
  v115 = sub_1000053B0();
  *(inited + 112) = v108;
  *(inited + 120) = v110;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v115;
  *(inited + 152) = 2742;
  v116 = v143;
  *(inited + 216) = v113;
  *(inited + 224) = v114;
  *(inited + 192) = v116;
  v117 = v105;
  v118 = v116;
  v119 = static os_log_type_t.error.getter();
  sub_100005404(v111, &_mh_execute_header, v119, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v120 = static os_log_type_t.error.getter();
  sub_100005404(v111, &_mh_execute_header, v120, "should be impossible to get here. file a bug", 44, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "should be impossible to get here. file a bug");
  type metadata accessor for __VaListBuilder();
  v121 = swift_allocObject();
  v121[2] = 8;
  v121[3] = 0;
  v121[4] = 0;
  v121[5] = 0;
  v122 = __VaListBuilder.va_list()();
  StaticString.description.getter("delete(items:deletionHandler:)", 30, 2);
  v123 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
  v124 = String._bridgeToObjectiveC()();

  StaticString.description.getter("should be impossible to get here. file a bug", 44, 2);
  v125 = String._bridgeToObjectiveC()();

  [v103 handleFailureInFunction:v123 file:v124 lineNumber:2742 isFatal:1 format:v125 args:v122];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v126, v127);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100F57528()
{

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "Error getting delete confirmation types: %@", 43, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));

  v7 = *(v0 + 8);

  return v7();
}

void sub_100F5772C(uint64_t a1, char a2, char *a3)
{
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v111 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s5BoardVMa(0);
  __chkstk_darwin(v9 - 8);
  v11 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s4NodeVMa(0);
  v117 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v116 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v120 = *(v14 - 8);
  __chkstk_darwin(v14);
  v112 = v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v118 = v100 - v17;
  __chkstk_darwin(v18);
  v127 = v100 - v19;
  __chkstk_darwin(v20);
  v115 = v100 - v21;
  __chkstk_darwin(v22);
  v24 = v100 - v23;
  v128 = type metadata accessor for UUID();
  v25 = *(v128 - 8);
  __chkstk_darwin(v128);
  v27 = v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1005B981C(&unk_101A23860, qword_10147BC00);
  __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  v109 = v100 - v30;
  __chkstk_darwin(v31);
  v37 = v100 - v36;
  if (*(a1 + 16))
  {
    v114 = v24;
    v105 = v35;
    v106 = v34;
    v107 = v33;
    v108 = v32;
    v38 = a3;
    v39 = sub_10005AFE0();
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    if ((a2 & 1) == 0)
    {
      v61 = sub_100F584D4(v38, a1, 0, v37);
      (*(v107 + 8))(v37, v108, v61);
      return;
    }

    v129 = a1;
    v130 = v11;
    v40 = *(v107 + 16);
    v103 = v37;
    v102 = v107 + 16;
    v101 = v40;
    v40(v109, v37, v108);
    v104 = v38;
    v41 = *&v38[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider];
    v42 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    v43 = *(v42 + 16);
    v113 = v14;
    if (v43)
    {
      v44 = (v41 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
      v46 = *(v25 + 16);
      v45 = v25 + 16;
      v123 = v46;
      v47 = (*(v45 + 64) + 32) & ~*(v45 + 64);
      v100[1] = v42;
      v48 = v42 + v47;
      v49 = *(v45 + 56);
      v124 = v45;
      v121 = (v45 - 8);
      v122 = v49;
      v126 = _swiftEmptyArrayStorage;
      v119 = v8;
      v110 = v27;
      v46(v27, v42 + v47, v128);
      while (1)
      {
        v50 = v44[3];
        if (!*(v50 + 16))
        {
          break;
        }

        v51 = *v44;

        v125 = v51;

        v52 = sub_10003E994(v27);
        if ((v53 & 1) == 0)
        {

          v8 = v119;
          goto LABEL_6;
        }

        v54 = v116;
        sub_1000652DC(*(v50 + 56) + *(v117 + 72) * v52, v116, _s4NodeVMa);
        (*v121)(v27, v128);

        v55 = v115;
        sub_1000652DC(v54, v115, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000BBC4(v54, _s4NodeVMa);
        v56 = v114;
        sub_100065D50(v55, v114, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v57 = v126;
        }

        else
        {
          v57 = sub_100B3648C(0, v126[2] + 1, 1, v126);
        }

        v59 = v57[2];
        v58 = v57[3];
        v8 = v119;
        v27 = v110;
        if (v59 >= v58 >> 1)
        {
          v57 = sub_100B3648C((v58 > 1), v59 + 1, 1, v57);
        }

        v57[2] = v59 + 1;
        v60 = (*(v120 + 80) + 32) & ~*(v120 + 80);
        v126 = v57;
        sub_100065D50(v56, v57 + v60 + *(v120 + 72) * v59, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_7:
        v48 += v122;
        if (!--v43)
        {

          v62 = v126;
          goto LABEL_21;
        }

        v123(v27, v48, v128);
      }

LABEL_6:

      (*v121)(v27, v128);
      goto LABEL_7;
    }

    v62 = _swiftEmptyArrayStorage;
LABEL_21:
    v63 = v129;
    v64 = v130;
    v65 = v120;
    v66 = v118;
    v123 = v62[2];
    if (v123)
    {
      v67 = 0;
      v68 = v129 + 56;
      v122 = _swiftEmptyArrayStorage;
      v126 = v62;
      while (1)
      {
        if (v67 >= v62[2])
        {
          __break(1u);
          return;
        }

        v125 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v124 = *(v65 + 72);
        v71 = v127;
        sub_1000652DC(v62 + v125 + v124 * v67, v127, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_1000652DC(v71, v66, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          v69 = type metadata accessor for CRLBoardLibraryViewModel.Item;
          v70 = v66;
LABEL_24:
          sub_10000BBC4(v70, v69);
LABEL_25:
          sub_10000BBC4(v127, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_26;
        }

        sub_100065D50(v66, v64, _s5BoardVMa);
        if (!*(v63 + 16))
        {
          v69 = _s5BoardVMa;
          v70 = v64;
          goto LABEL_24;
        }

        Hasher.init(_seed:)();
        sub_10006852C(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v72 = type metadata accessor for CRLBoardIdentifierStorage(0);
        v73 = (v64 + *(v72 + 20));
        v75 = *v73;
        v74 = v73[1];
        String.hash(into:)();
        v76 = Hasher._finalize()();
        v77 = -1 << *(v63 + 32);
        v78 = v76 & ~v77;
        if (((*(v68 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
        {
          sub_10000BBC4(v64, _s5BoardVMa);
LABEL_44:
          v65 = v120;
          v66 = v118;
          goto LABEL_25;
        }

        v79 = ~v77;
        v80 = *(v111 + 72);
        while (1)
        {
          sub_1000652DC(*(v129 + 48) + v80 * v78, v8, type metadata accessor for CRLBoardIdentifier);
          if ((static UUID.== infix(_:_:)() & 1) == 0)
          {
            sub_10000BBC4(v8, type metadata accessor for CRLBoardIdentifier);
            goto LABEL_33;
          }

          v81 = &v8[*(v72 + 20)];
          if (*v81 == v75 && *(v81 + 1) == v74)
          {
            break;
          }

          v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10000BBC4(v8, type metadata accessor for CRLBoardIdentifier);
          if (v83)
          {
            goto LABEL_46;
          }

LABEL_33:
          v78 = (v78 + 1) & v79;
          if (((*(v68 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
          {
            v64 = v130;
            sub_10000BBC4(v130, _s5BoardVMa);
            v63 = v129;
            goto LABEL_44;
          }
        }

        sub_10000BBC4(v8, type metadata accessor for CRLBoardIdentifier);
LABEL_46:
        v64 = v130;
        sub_10000BBC4(v130, _s5BoardVMa);
        sub_100065D50(v127, v112, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v84 = v122;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v132 = v84;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776764(0, *(v84 + 16) + 1, 1);
          v84 = v132;
        }

        v63 = v129;
        v86 = v125;
        v88 = *(v84 + 16);
        v87 = *(v84 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_100776764((v87 > 1), v88 + 1, 1);
          v84 = v132;
        }

        *(v84 + 16) = v88 + 1;
        v122 = v84;
        sub_100065D50(v112, v84 + v86 + v88 * v124, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v65 = v120;
        v66 = v118;
LABEL_26:
        ++v67;
        v62 = v126;
        if (v67 == v123)
        {
          goto LABEL_52;
        }
      }
    }

    v122 = _swiftEmptyArrayStorage;
LABEL_52:

    v131 = _swiftEmptySetSingleton;
    v89 = sub_100F35F5C(v122, &v131);

    v90 = v108;
    v91 = v109;
    NSDiffableDataSourceSnapshot.deleteItems(_:)(v89);

    v92 = v106;
    v93 = v103;
    v101(v106, v103, v90);
    v94 = v107;
    v95 = (*(v107 + 80) + 33) & ~*(v107 + 80);
    v96 = swift_allocObject();
    v97 = v104;
    *(v96 + 16) = v104;
    *(v96 + 24) = v63;
    *(v96 + 32) = 1;
    (*(v94 + 32))(v96 + v95, v92, v90);
    v98 = v97;

    sub_100069924(v91, 1, sub_100F76F60, v96);

    v99 = *(v94 + 8);
    v99(v91, v90);
    v99(v93, v90);
  }
}

double sub_100F584D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_1005B981C(&unk_101A23860, qword_10147BC00);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v10, a4, v7);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = (*(v8 + 80) + 49) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = &protocol witness table for MainActor;
  *(v18 + 32) = v15;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  (*(v8 + 32))(v18 + v17, v10, v7);

  sub_100796D54(0, 0, v13, &unk_1014B9890, v18);

  return result;
}

uint64_t sub_100F58724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = a7;
  *(v7 + 152) = a6;
  *(v7 + 40) = a4;
  v8 = type metadata accessor for IndexPath();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 88) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 96) = v10;
  *(v7 + 104) = v9;

  return _swift_task_switch(sub_100F58820, v10, v9);
}

void sub_100F58820()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    objc_allocWithZone(type metadata accessor for CRLBoardDeleteCommand());

    v3 = sub_100FAC088(v2);
    v0[15] = v3;
    sub_100071220();
    v0[16] = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      v0[17] = v5;
      *v5 = v0;
      v5[1] = sub_100F58960;

      sub_100FAEB7C(v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v6 = v0[1];

    v6();
  }
}

uint64_t sub_100F58960()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100F58C58;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100F58A7C;
  }

  return _swift_task_switch(v5, v3, v4);
}

void sub_100F58A7C()
{
  v1 = [*(v0 + 112) collectionView];
  if (!v1)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v2 = v1;

  v3 = [v2 indexPathsForSelectedItems];

  if (v3)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = *(v0 + 72);
      while (v6 < *(v4 + 16))
      {
        v8 = *(v0 + 112);
        (*(v7 + 16))(*(v0 + 80), v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, *(v0 + 64));
        v9 = [v8 collectionView];
        if (!v9)
        {
          goto LABEL_13;
        }

        v10 = v9;
        v11 = *(v0 + 80);
        v12 = *(v0 + 64);
        ++v6;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v10 deselectItemAtIndexPath:isa animated:0];

        (*(v7 + 8))(v11, v12);
        if (v5 == v6)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_8:
  }

  v15 = *(v0 + 112);
  v14 = *(v0 + 120);
  sub_10006D850();

  v16 = *(v0 + 8);

  v16();
}

uint64_t sub_100F58C58()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 152);

  if (v3 == 1)
  {
    sub_100069924(*(v0 + 56), 1, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0);
  }

  v4 = *(v0 + 112);
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

double sub_100F58D20(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7)
{
  v40 = a7;
  v41 = a3;
  v42 = a4;
  v10 = sub_1005B981C(&unk_101A23860, qword_10147BC00);
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v37 = &v35 - v11;
  v12 = sub_1005B981C(&qword_101A23C20, &qword_101498378);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v19 = type metadata accessor for CRLBoardIdentifier(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19 - 8);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 16);
  v24 = _swiftEmptyArrayStorage;
  if (v23)
  {
    v35 = a5;
    v36 = a6;
    v44 = _swiftEmptyArrayStorage;
    sub_10004B394(0, v23, 0);
    v24 = v44;
    v25 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v43 = *(v13 + 72);
    do
    {
      sub_10000BE14(v25, v18, &qword_101A23C20, &qword_101498378);
      sub_10003DFF8(v18, v15, &qword_101A23C20, &qword_101498378);
      sub_100065D50(v15, v22, type metadata accessor for CRLBoardIdentifier);
      v44 = v24;
      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        sub_10004B394((v26 > 1), v27 + 1, 1);
        v24 = v44;
      }

      v24[2] = v27 + 1;
      sub_100065D50(v22, v24 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v27, type metadata accessor for CRLBoardIdentifier);
      v25 += v43;
      --v23;
    }

    while (v23);
    a5 = v35;
    a6 = v36;
  }

  v28 = sub_10004B3DC(v24);

  v29 = v41;
  if (*(v28 + 16))
  {
    v30 = sub_10005AFE0();
    v31 = v37;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    sub_100F584D4(v29, v28, 0, v31);

    (*(v38 + 8))(v31, v39);
  }

  else
  {
  }

  v32 = v42;
  swift_beginAccess();

  sub_100F5772C(v33, 1, v29);

  if (a5)
  {

    sub_100F8A554(v40, (v32 + 16));
    a5();

    return sub_1000C1014(a5, a6);
  }

  return result;
}

double sub_100F59118(uint64_t a1, char *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();

  sub_100F5772C(v11, 1, a2);

  if (a4)
  {

    sub_100F8A554(a6, (a3 + 16));
    a4();

    return sub_1000C1014(a4, a5);
  }

  return result;
}

uint64_t sub_100F591CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_100F59264, v7, v6);
}

void sub_100F59264()
{
  objc_allocWithZone(type metadata accessor for CRLBoardUndeleteCommand());

  v2 = sub_100FAC8C4(v1);
  v0[10] = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100071220();
    v6 = v5;
    v0[11] = v5;

    if (v6)
    {
      v7 = swift_task_alloc();
      v0[12] = v7;
      *v7 = v0;
      v7[1] = sub_100F593AC;

      sub_100FAEB7C(v2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v8 = v0[1];

    v8();
  }
}

uint64_t sub_100F593AC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100F59534;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100F594C8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100F594C8()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100F59534()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

void sub_100F595A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    v12[5] = a3;

    sub_100796D54(0, 0, v6, &unk_1014B9860, v12);
  }
}

uint64_t sub_100F59738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return _swift_task_switch(sub_100F597D0, v7, v6);
}

uint64_t sub_100F597D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v0[13] = *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider);
    v2 = Strong;
    swift_unknownObjectRetain();

    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_100F59914;
    v4 = v0[9];

    return sub_1010CA038(v4);
  }

  else
  {

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_10006D850();
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100F59914()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_100F59B00;
  }

  else
  {
    v5 = sub_100F59A6C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100F59A6C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10006D850();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100F59B00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F59B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 112) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return _swift_task_switch(sub_100F59C00, v8, v7);
}

void sub_100F59C00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 112);
    objc_allocWithZone(type metadata accessor for CRLBoardFavoriteCommand());

    v4 = sub_100FAAC84(v3, v2);
    *(v0 + 88) = v4;
    sub_100071220();
    *(v0 + 96) = v5;
    if (v5)
    {
      v6 = swift_task_alloc();
      *(v0 + 104) = v6;
      *v6 = v0;
      v6[1] = sub_100F59D48;

      sub_100FAEB7C(v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v7 = *(v0 + 8);

    v7();
  }
}

uint64_t sub_100F59D48()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 96);
  if (v0)
  {

    v5 = *(v3 + 64);
    v6 = *(v3 + 72);
    v7 = sub_100F794E4;
  }

  else
  {

    v5 = *(v3 + 64);
    v6 = *(v3 + 72);
    v7 = sub_100F59E84;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100F59E84()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100F59EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[40] = a4;
  sub_1005B981C(&unk_101A23C40, &unk_10146F200);
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v7 = type metadata accessor for IndexPath();
  v6[45] = v7;
  v6[46] = *(v7 - 8);
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = *(_s5BoardVMa(0) - 8);
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[52] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[53] = v9;
  v6[54] = v8;

  return _swift_task_switch(sub_100F5A09C, v9, v8);
}

void sub_100F5A09C()
{
  v74 = v0;
  v1 = *(v0 + 320);
  v2 = type metadata accessor for CRLBoardDuplicateCommand();
  v3 = objc_allocWithZone(v2);
  v4 = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform24CRLBoardDuplicateCommand_duplicateBoardIdentifiers] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform24CRLBoardDuplicateCommand_duplicateBoardViewModels] = _swiftEmptyArrayStorage;
  v5 = *(v1 + 16);
  if (v5)
  {
    v68 = v2;
    v6 = *(v0 + 320);
    v4 = sub_100B39DB4(v5, 0);
    v7 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
    sub_100B3C5AC(&v73, v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6);
    v71 = v8;
    v9 = v73;

    sub_100035F90(v9);
    if (v71 != v5)
    {
      goto LABEL_47;
    }

    v2 = v68;
  }

  *&v3[OBJC_IVAR____TtC8Freeform24CRLBoardDuplicateCommand_sourceBoardIdentifiers] = v4;
  *(v0 + 304) = v3;
  *(v0 + 312) = v2;
  v10 = objc_msgSendSuper2((v0 + 304), "init");
  *(v0 + 440) = v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_100071220();
    v14 = v13;
    *(v0 + 448) = v13;

    if (!v14)
    {
      goto LABEL_48;
    }

    v15 = swift_task_alloc();
    *(v0 + 456) = v15;
    *v15 = v0;
    v15[1] = sub_100F5A994;

    sub_100FAEB7C(v10);
    return;
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
    v19 = *(v0 + 440);
    goto LABEL_27;
  }

  v17 = v16;
  v18 = [v16 isEditing];

  v19 = *(v0 + 440);
  if ((v18 & 1) == 0)
  {
LABEL_27:

    goto LABEL_43;
  }

  v20 = *&v19[OBJC_IVAR____TtC8Freeform24CRLBoardDuplicateCommand_duplicateBoardViewModels];
  v72 = *(v20 + 16);
  if (!v72)
  {

LABEL_29:
    v39 = *(v0 + 336);
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = *(v0 + 392);
      v42 = *(v0 + 368);
      v43 = v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      swift_beginAccess();
      swift_beginAccess();
      v44 = (v42 + 48);
      v65 = (v42 + 8);
      v67 = (v42 + 32);
      v70 = (v42 + 56);
      v45 = *(v41 + 72);
      while (1)
      {
        sub_1000652DC(v43, *(v0 + 400), _s5BoardVMa);
        v46 = swift_unknownObjectWeakLoadStrong();
        if (!v46)
        {
          break;
        }

        v47 = v46;
        v48 = *(v0 + 360);
        v49 = *(v0 + 344);
        v50 = sub_10005AFE0();

        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
        if ((*v44)(v49, 1, v48) == 1)
        {
          goto LABEL_39;
        }

        (*v67)(*(v0 + 376), *(v0 + 344), *(v0 + 360));
        v51 = swift_unknownObjectWeakLoadStrong();
        if (v51)
        {
          v52 = v51;
          v53 = [v51 collectionView];

          if (!v53)
          {
            goto LABEL_49;
          }

          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v53 deselectItemAtIndexPath:isa animated:0];
        }

        (*v65)(*(v0 + 376), *(v0 + 360));
LABEL_32:
        sub_10000BBC4(*(v0 + 400), _s5BoardVMa);
        v43 += v45;
        if (!--v40)
        {
          goto LABEL_42;
        }
      }

      (*v70)(*(v0 + 344), 1, 1, *(v0 + 360));
LABEL_39:
      sub_10000CAAC(*(v0 + 344), &unk_101A23C40, &unk_10146F200);
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v55 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v57 = UUID.uuidString.getter();
      v59 = v58;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v57;
      *(inited + 40) = v59;
      v60 = static os_log_type_t.default.getter();
      sub_100005404(v55, &_mh_execute_header, v60, "Could not de-select an original board following its duplication (no IndexPath found for identifier %{public}@)", 110, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      goto LABEL_32;
    }

LABEL_42:

LABEL_43:

    v61 = *(v0 + 8);

    v61();
    return;
  }

  v21 = *(v0 + 368);
  v69 = *(v0 + 392);
  v66 = v20 + ((*(v69 + 80) + 32) & ~*(v69 + 80));

  swift_beginAccess();
  swift_beginAccess();
  v22 = 0;
  v23 = (v21 + 48);
  v62 = (v21 + 8);
  v63 = (v21 + 32);
  v64 = (v21 + 56);
  while (v22 < *(v20 + 16))
  {
    sub_1000652DC(v66 + *(v69 + 72) * v22, *(v0 + 408), _s5BoardVMa);
    v25 = swift_unknownObjectWeakLoadStrong();
    if (!v25)
    {
      (*v64)(*(v0 + 352), 1, 1, *(v0 + 360));
LABEL_23:
      sub_10000CAAC(*(v0 + 352), &unk_101A23C40, &unk_10146F200);
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v33 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_10146C6B0;
      v35 = UUID.uuidString.getter();
      v37 = v36;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_1000053B0();
      *(v34 + 32) = v35;
      *(v34 + 40) = v37;
      v38 = static os_log_type_t.default.getter();
      sub_100005404(v33, &_mh_execute_header, v38, "Could not select a new board which resulted from duplicating an existing board (no IndexPath found for identifier %{public}@)", 125, 2, v34);
      swift_setDeallocating();
      sub_100005070((v34 + 32));
      goto LABEL_15;
    }

    v26 = v25;
    v28 = *(v0 + 352);
    v27 = *(v0 + 360);
    v29 = sub_10005AFE0();

    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
    if ((*v23)(v28, 1, v27) == 1)
    {
      goto LABEL_23;
    }

    (*v63)(*(v0 + 384), *(v0 + 352), *(v0 + 360));
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = [v30 collectionView];

      if (!v32)
      {
        goto LABEL_50;
      }

      v24 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v32 selectItemAtIndexPath:v24 animated:0 scrollPosition:1];
    }

    (*v62)(*(v0 + 384), *(v0 + 360));
LABEL_15:
    ++v22;
    sub_10000BBC4(*(v0 + 408), _s5BoardVMa);
    if (v72 == v22)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_100F5A994()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 448);
  if (v0)
  {

    v5 = *(v3 + 424);
    v6 = *(v3 + 432);
    v7 = sub_100F795B4;
  }

  else
  {

    v5 = *(v3 + 424);
    v6 = *(v3 + 432);
    v7 = sub_100F5AAD0;
  }

  return _swift_task_switch(v7, v5, v6);
}

void sub_100F5AAD0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v4 = *(v0 + 440);
    goto LABEL_19;
  }

  v2 = Strong;
  v3 = [Strong isEditing];

  v4 = *(v0 + 440);
  if ((v3 & 1) == 0)
  {
LABEL_19:

    goto LABEL_35;
  }

  v5 = *&v4[OBJC_IVAR____TtC8Freeform24CRLBoardDuplicateCommand_duplicateBoardViewModels];
  v55 = *(v5 + 16);
  if (!v55)
  {

LABEL_21:
    v24 = *(v0 + 336);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = *(v0 + 392);
      v27 = *(v0 + 368);
      v28 = v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      swift_beginAccess();
      swift_beginAccess();
      v29 = (v27 + 48);
      v50 = (v27 + 8);
      v52 = (v27 + 32);
      v54 = (v27 + 56);
      v30 = *(v26 + 72);
      while (1)
      {
        sub_1000652DC(v28, *(v0 + 400), _s5BoardVMa);
        v31 = swift_unknownObjectWeakLoadStrong();
        if (!v31)
        {
          break;
        }

        v32 = v31;
        v33 = *(v0 + 360);
        v34 = *(v0 + 344);
        v35 = sub_10005AFE0();

        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
        if ((*v29)(v34, 1, v33) == 1)
        {
          goto LABEL_31;
        }

        (*v52)(*(v0 + 376), *(v0 + 344), *(v0 + 360));
        v36 = swift_unknownObjectWeakLoadStrong();
        if (v36)
        {
          v37 = v36;
          v38 = [v36 collectionView];

          if (!v38)
          {
            goto LABEL_39;
          }

          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v38 deselectItemAtIndexPath:isa animated:0];
        }

        (*v50)(*(v0 + 376), *(v0 + 360));
LABEL_24:
        sub_10000BBC4(*(v0 + 400), _s5BoardVMa);
        v28 += v30;
        if (!--v25)
        {
          goto LABEL_34;
        }
      }

      (*v54)(*(v0 + 344), 1, 1, *(v0 + 360));
LABEL_31:
      sub_10000CAAC(*(v0 + 344), &unk_101A23C40, &unk_10146F200);
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v40 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v42 = UUID.uuidString.getter();
      v44 = v43;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v42;
      *(inited + 40) = v44;
      v45 = static os_log_type_t.default.getter();
      sub_100005404(v40, &_mh_execute_header, v45, "Could not de-select an original board following its duplication (no IndexPath found for identifier %{public}@)", 110, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      goto LABEL_24;
    }

LABEL_34:

LABEL_35:

    v46 = *(v0 + 8);

    v46();
    return;
  }

  v6 = *(v0 + 368);
  v53 = *(v0 + 392);
  v51 = v5 + ((*(v53 + 80) + 32) & ~*(v53 + 80));

  swift_beginAccess();
  swift_beginAccess();
  v7 = 0;
  v8 = (v6 + 48);
  v47 = (v6 + 8);
  v48 = (v6 + 32);
  v49 = (v6 + 56);
  while (v7 < *(v5 + 16))
  {
    sub_1000652DC(v51 + *(v53 + 72) * v7, *(v0 + 408), _s5BoardVMa);
    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
      (*v49)(*(v0 + 352), 1, 1, *(v0 + 360));
LABEL_15:
      sub_10000CAAC(*(v0 + 352), &unk_101A23C40, &unk_10146F200);
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v18 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_10146C6B0;
      v20 = UUID.uuidString.getter();
      v22 = v21;
      *(v19 + 56) = &type metadata for String;
      *(v19 + 64) = sub_1000053B0();
      *(v19 + 32) = v20;
      *(v19 + 40) = v22;
      v23 = static os_log_type_t.default.getter();
      sub_100005404(v18, &_mh_execute_header, v23, "Could not select a new board which resulted from duplicating an existing board (no IndexPath found for identifier %{public}@)", 125, 2, v19);
      swift_setDeallocating();
      sub_100005070((v19 + 32));
      goto LABEL_7;
    }

    v11 = v10;
    v13 = *(v0 + 352);
    v12 = *(v0 + 360);
    v14 = sub_10005AFE0();

    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
    if ((*v8)(v13, 1, v12) == 1)
    {
      goto LABEL_15;
    }

    (*v48)(*(v0 + 384), *(v0 + 352), *(v0 + 360));
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 collectionView];

      if (!v17)
      {
        goto LABEL_40;
      }

      v9 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v17 selectItemAtIndexPath:v9 animated:0 scrollPosition:1];
    }

    (*v47)(*(v0 + 384), *(v0 + 360));
LABEL_7:
    ++v7;
    sub_10000BBC4(*(v0 + 408), _s5BoardVMa);
    if (v55 == v7)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_100F5B1F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver;
  v9 = *(a3 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver);
  if (v9)
  {
    v10 = objc_opt_self();
    swift_unknownObjectRetain();
    v11 = [v10 defaultCenter];
    [v11 removeObserver:v9];

    v12 = *(a3 + v8);
    *(a3 + v8) = 0;
    sub_100F36EC8(v12);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (a2)
  {
    sub_100F5B378(a4, a1, a2);
  }
}

double sub_100F5B2C0()
{
  v1 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver:v2];

    v5 = *(v0 + v1);
    *(v0 + v1) = 0;
    sub_100F36EC8(v5);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_100F5B378(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v7 - 8);
  v141 = &v124 - v8;
  v9 = type metadata accessor for UUID();
  v135 = *(v9 - 8);
  v136 = v9;
  __chkstk_darwin(v9);
  v11 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_101A23C40, &unk_10146F200);
  __chkstk_darwin(v12 - 8);
  v142 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v137 = &v124 - v15;
  v16 = type metadata accessor for IndexPath();
  v143 = *(v16 - 8);
  v144 = v16;
  __chkstk_darwin(v16);
  v140 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v133 = *(v18 - 8);
  __chkstk_darwin(v18);
  v139 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v19;
  __chkstk_darwin(v20);
  v22 = &v124 - v21;
  v23 = _s5BoardVMa(0);
  v131 = *(v23 - 8);
  __chkstk_darwin(v23);
  v138 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v24;
  __chkstk_darwin(v25);
  v27 = &v124 - v26;
  v145 = a1;
  sub_1000652DC(a1, v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_100065D50(v22, v27, _s5BoardVMa);
    v28 = &v27[*(v23 + 24)];
    v29 = *v28;
    v30 = *(v28 + 1);
    v31 = *v28 == a2 && v30 == a3;
    v32 = v27;
    if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v33 = v29;
      v34 = qword_1019F2098;

      if (v34 != -1)
      {
        swift_once();
      }

      v35 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v33;
      *(inited + 40) = v30;
      v37 = static os_log_type_t.default.getter();
      sub_100005404(v35, &_mh_execute_header, v37, "Skipping rename because there was no change: %@", 47, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return sub_10000BBC4(v27, _s5BoardVMa);
    }

    v125 = v29;
    v126 = v30;
    v128 = a2;

    v127 = v3;
    v45 = sub_10005AFE0();
    sub_100F87E04(v11);
    v46 = v142;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    (v135)[1](v11, v136);
    v47 = *(v143 + 48);
    v48 = v46;
    v49 = v144;
    v50 = v47(v48, 1, v144);
    v129 = a3;
    v130 = v27;
    if (v50 == 1)
    {
      v136 = v47;
      v135 = objc_opt_self();
      v51 = [v135 _atomicIncrementAssertCount];
      v146 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v146, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("finishRenaming(item:to:)", 24, 2);
      v52 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
      v53 = String._bridgeToObjectiveC()();

      v54 = [v53 lastPathComponent];

      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v124 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v58 = swift_initStackObject();
      *(v58 + 16) = xmmword_10146CA70;
      *(v58 + 56) = &type metadata for Int32;
      *(v58 + 64) = &protocol witness table for Int32;
      *(v58 + 32) = v51;
      v59 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v58 + 96) = v59;
      v60 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v58 + 104) = v60;
      *(v58 + 72) = v52;
      *(v58 + 136) = &type metadata for String;
      v61 = sub_1000053B0();
      *(v58 + 112) = v55;
      *(v58 + 120) = v57;
      *(v58 + 176) = &type metadata for UInt;
      *(v58 + 184) = &protocol witness table for UInt;
      *(v58 + 144) = v61;
      *(v58 + 152) = 2923;
      v62 = v146;
      *(v58 + 216) = v59;
      *(v58 + 224) = v60;
      *(v58 + 192) = v62;
      v63 = v52;
      v64 = v62;
      v65 = static os_log_type_t.error.getter();
      v66 = v124;
      sub_100005404(v124, &_mh_execute_header, v65, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v58);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v67 = static os_log_type_t.error.getter();
      sub_100005404(v66, &_mh_execute_header, v67, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v68 = swift_allocObject();
      v68[2] = 8;
      v68[3] = 0;
      v68[4] = 0;
      v68[5] = 0;
      v69 = __VaListBuilder.va_list()();
      StaticString.description.getter("finishRenaming(item:to:)", 24, 2);
      v70 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
      v71 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v72 = String._bridgeToObjectiveC()();

      [v135 handleFailureInFunction:v70 file:v71 lineNumber:2923 isFatal:0 format:v72 args:v69];

      a3 = v129;
      v32 = v130;
      v47 = v136;
      v49 = v144;
    }

    v73 = v137;
    sub_10003DFF8(v142, v137, &unk_101A23C40, &unk_10146F200);
    if (v47(v73, 1, v49) == 1)
    {
      sub_10000BBC4(v32, _s5BoardVMa);

      return sub_10000CAAC(v73, &unk_101A23C40, &unk_10146F200);
    }

    (*(v143 + 32))(v140, v73, v49);
    result = [v127 collectionView];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v74 = result;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v76 = [v74 cellForItemAtIndexPath:isa];

    if (v76)
    {
      swift_getObjectType();
      v77 = swift_conformsToProtocol2();
      if (v77)
      {
        v78 = v77;
LABEL_27:
        v101 = v128;
        v102 = String.count.getter();

        v103 = a3;
        if (v102 >= 256)
        {
          sub_10105235C(255, v128, a3);

          v101 = static String._fromSubstring(_:)();
          v103 = v104;
        }

        v142 = v78;
        v137 = v76;
        if (v76)
        {
          ObjectType = swift_getObjectType();
          v106 = *(v78 + 19);
          swift_unknownObjectRetain();
          v106(v101, v103, ObjectType, v78);
          swift_unknownObjectRelease();
          v107 = v76;
        }

        else
        {

          v107 = 0;
        }

        v136 = v107;
        v108 = type metadata accessor for TaskPriority();
        (*(*(v108 - 8) + 56))(v141, 1, 1, v108);
        v109 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1000652DC(v130, v138, _s5BoardVMa);
        sub_1000652DC(v145, v139, type metadata accessor for CRLBoardLibraryViewModel.Item);
        type metadata accessor for MainActor();

        swift_unknownObjectRetain();

        v110 = static MainActor.shared.getter();
        v111 = (*(v131 + 80) + 32) & ~*(v131 + 80);
        v112 = (v132 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
        v113 = (v112 + 23) & 0xFFFFFFFFFFFFFFF8;
        v114 = (v113 + 15) & 0xFFFFFFFFFFFFFFF8;
        v115 = (v114 + 23) & 0xFFFFFFFFFFFFFFF8;
        v116 = (*(v133 + 80) + v115 + 16) & ~*(v133 + 80);
        v117 = swift_allocObject();
        *(v117 + 16) = v110;
        *(v117 + 24) = &protocol witness table for MainActor;
        sub_100065D50(v138, v117 + v111, _s5BoardVMa);
        v118 = (v117 + v112);
        v119 = v129;
        *v118 = v128;
        v118[1] = v119;
        *(v117 + v113) = v109;
        v120 = (v117 + v114);
        v121 = v142;
        *v120 = v137;
        v120[1] = v121;
        v122 = (v117 + v115);
        v123 = v126;
        *v122 = v125;
        v122[1] = v123;
        sub_100065D50(v139, v117 + v116, type metadata accessor for CRLBoardLibraryViewModel.Item);

        sub_10064191C(0, 0, v141, &unk_1014B9938, v117);
        swift_unknownObjectRelease();

        (*(v143 + 8))(v140, v144);
        return sub_10000BBC4(v130, _s5BoardVMa);
      }
    }

    v142 = objc_opt_self();
    v79 = [v142 _atomicIncrementAssertCount];
    v146 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v146, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("finishRenaming(item:to:)", 24, 2);
    v80 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v81 = String._bridgeToObjectiveC()();

    v82 = [v81 lastPathComponent];

    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v86 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_10146CA70;
    *(v87 + 56) = &type metadata for Int32;
    *(v87 + 64) = &protocol witness table for Int32;
    *(v87 + 32) = v79;
    v88 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v87 + 96) = v88;
    v89 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v87 + 104) = v89;
    *(v87 + 72) = v80;
    *(v87 + 136) = &type metadata for String;
    v90 = sub_1000053B0();
    *(v87 + 112) = v83;
    *(v87 + 120) = v85;
    *(v87 + 176) = &type metadata for UInt;
    *(v87 + 184) = &protocol witness table for UInt;
    *(v87 + 144) = v90;
    *(v87 + 152) = 2927;
    v91 = v146;
    *(v87 + 216) = v88;
    *(v87 + 224) = v89;
    *(v87 + 192) = v91;
    v92 = v80;
    v93 = v91;
    v94 = static os_log_type_t.error.getter();
    sub_100005404(v86, &_mh_execute_header, v94, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v87);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v95 = static os_log_type_t.error.getter();
    sub_100005404(v86, &_mh_execute_header, v95, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v96 = swift_allocObject();
    v96[2] = 8;
    v96[3] = 0;
    v96[4] = 0;
    v96[5] = 0;
    v97 = __VaListBuilder.va_list()();
    StaticString.description.getter("finishRenaming(item:to:)", 24, 2);
    v98 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v99 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v100 = String._bridgeToObjectiveC()();

    [v142 handleFailureInFunction:v98 file:v99 lineNumber:2927 isFatal:0 format:v100 args:v97];

    v76 = 0;
    v78 = 0;
    a3 = v129;
    goto LABEL_27;
  }

  sub_10000BBC4(v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v39 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_10146C6B0;
  v41 = sub_100F88220();
  v43 = v42;
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = sub_1000053B0();
  *(v40 + 32) = v41;
  *(v40 + 40) = v43;
  v44 = static os_log_type_t.default.getter();
  sub_100005404(v39, &_mh_execute_header, v44, "Cannot rename item %@ (only board renaming is currently supported)", 66, 2, v40);
  swift_setDeallocating();
  return sub_100005070((v40 + 32));
}

uint64_t sub_100F5C50C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s5BoardVMa(0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10098EABC(&_mh_execute_header, "beginRenaming(item:)", 20, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2, 2899);
  v12 = Notification.userInfo.getter();
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  v23[1] = 0xD000000000000017;
  v23[2] = 0x800000010155F8C0;
  AnyHashable.init<A>(_:)();
  if (!*(v13 + 16) || (v14 = sub_1000640CC(v24), (v15 & 1) == 0))
  {

    sub_100064234(v24);
LABEL_13:
    v25 = 0u;
    v26 = 0u;
    return sub_10000CAAC(&v25, &unk_1019F4D00, &unk_10146E7F0);
  }

  sub_100064288(*(v13 + 56) + 32 * v14, &v25);
  sub_100064234(v24);

  if (!*(&v26 + 1))
  {
    return sub_10000CAAC(&v25, &unk_1019F4D00, &unk_10146E7F0);
  }

  sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
  result = swift_dynamicCast();
  if (result)
  {
    v17 = v24[0];
    sub_1000652DC(a2, v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100065D50(v8, v11, _s5BoardVMa);
      v18 = sub_10079DDA0(v11, v17);

      if (v18)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          sub_100F5B2C0();
        }

        [a4 dismissViewControllerAnimated:1 completion:0];
      }

      v21 = _s5BoardVMa;
      v22 = v11;
    }

    else
    {

      v21 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v22 = v8;
    }

    return sub_10000BBC4(v22, v21);
  }

  return result;
}

uint64_t sub_100F5C7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v14;
  *(v8 + 296) = v15;
  *(v8 + 272) = v13;
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 240) = a5;
  *(v8 + 248) = a6;
  *(v8 + 232) = a4;
  type metadata accessor for CRLBoardIdentifier(0);
  *(v8 + 304) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 312) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 320) = v10;
  *(v8 + 328) = v9;

  return _swift_task_switch(sub_100F5C8DC, v10, v9);
}

void sub_100F5C8DC()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 248);
  v3 = *(v0 + 240);
  sub_1000652DC(*(v0 + 232), v1, type metadata accessor for CRLBoardIdentifier);
  v4 = type metadata accessor for CRLSetBoardTitleCommand(0);
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_previousBoardTitle];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_1000652DC(v1, &v5[OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_boardIdentifier], type metadata accessor for CRLBoardIdentifier);
  v7 = &v5[OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_boardTitle];
  *v7 = v3;
  *(v7 + 1) = v2;
  *(v0 + 200) = v5;
  *(v0 + 208) = v4;

  v8 = objc_msgSendSuper2((v0 + 200), "init");
  *(v0 + 336) = v8;
  sub_10000BBC4(v1, type metadata accessor for CRLBoardIdentifier);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_100071220();
    v12 = v11;
    *(v0 + 344) = v11;

    if (v12)
    {
      v13 = swift_task_alloc();
      *(v0 + 352) = v13;
      *v13 = v0;
      v13[1] = sub_100F5CAE8;

      sub_100FAEB7C(v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v14 = *(v0 + 8);

    v14();
  }
}

uint64_t sub_100F5CAE8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_100F5CC74;
  }

  else
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_100F5CC04;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100F5CC04()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100F5CC74()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 264);

  if (v3)
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 288);
    v6 = *(v0 + 272);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 152);

    v8(v4, v5, ObjectType, v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    *(v0 + 224) = *(v0 + 360);
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 176);
      v12 = *(v0 + 184);
      v13 = *(v0 + 192);
      sub_1007B0838(v11, v12, v13);
      if (v14)
      {
        sub_1007B0970(v11, v12, v13);
        v16 = v15;
        sub_10070C20C(v11, v12, v13);
        if (v16)
        {
          v17 = String._bridgeToObjectiveC()();

          v18 = String._bridgeToObjectiveC()();

          v19 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

          v20 = [objc_opt_self() mainBundle];
          v21 = String._bridgeToObjectiveC()();
          v22 = String._bridgeToObjectiveC()();
          v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = String._bridgeToObjectiveC()();

          v25 = [objc_opt_self() actionWithTitle:v24 style:0 handler:0];

          [v19 addAction:v25];
          [v10 presentViewController:v19 animated:1 completion:0];

          goto LABEL_14;
        }
      }

      else
      {
        sub_10070C20C(v11, v12, v13);
      }
    }
  }

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 360);
  v27 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v29 = sub_100F88220();
  v31 = v30;
  *(inited + 56) = &type metadata for String;
  v32 = sub_1000053B0();
  *(inited + 64) = v32;
  *(inited + 32) = v29;
  *(inited + 40) = v31;
  *(v0 + 216) = v26;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v33 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v32;
  *(inited + 72) = v33;
  *(inited + 80) = v34;
  v35 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v35, "Error renaming item (%@): %@", 28, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
LABEL_14:

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_100F5D0E4(void *a1)
{
  v2 = [a1 searchBar];
  v3 = [v2 text];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = (v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString);
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString);
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString + 8);
  *v7 = v4;
  v7[1] = v6;
  sub_100F372FC(v8, v9);
}

void sub_100F5D1F8(uint64_t a1)
{
  sub_10000BE14(a1, v68, &unk_1019F4D00, &unk_10146E7F0);
  if (!v68[3])
  {
    sub_10000CAAC(v68, &unk_1019F4D00, &unk_10146E7F0);
    goto LABEL_15;
  }

  type metadata accessor for CRLiOSFolderGridViewController.SingleContinuousTouchGestureRecognizer();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v21 = objc_opt_self();
    v22 = [v21 _atomicIncrementAssertCount];
    v68[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v68, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("didRecognizeSingleContinuousTouchGesture(_:)", 44, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 lastPathComponent];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v22;
    v31 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v31;
    v32 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v32;
    *(inited + 72) = v23;
    *(inited + 136) = &type metadata for String;
    v33 = sub_1000053B0();
    *(inited + 112) = v26;
    *(inited + 120) = v28;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v33;
    *(inited + 152) = 3050;
    v34 = v68[0];
    *(inited + 216) = v31;
    *(inited + 224) = v32;
    *(inited + 192) = v34;
    v35 = v23;
    v36 = v34;
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v38, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v39 = swift_allocObject();
    v39[2] = 8;
    v39[3] = 0;
    v39[4] = 0;
    v39[5] = 0;
    v40 = __VaListBuilder.va_list()();
    StaticString.description.getter("didRecognizeSingleContinuousTouchGesture(_:)", 44, 2);
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v43 = String._bridgeToObjectiveC()();

    [v21 handleFailureInFunction:v41 file:v42 lineNumber:3050 isFatal:0 format:v43 args:v40];

    return;
  }

  v1 = v69;
  v2 = *&v69[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController38SingleContinuousTouchGestureRecognizer_trackedTouch];
  if (!v2)
  {
    v67 = v69;
    v66 = objc_opt_self();
    v44 = [v66 _atomicIncrementAssertCount];
    v68[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v68, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("didRecognizeSingleContinuousTouchGesture(_:)", 44, 2);
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v46 = String._bridgeToObjectiveC()();

    v47 = [v46 lastPathComponent];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v51 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_10146CA70;
    *(v52 + 56) = &type metadata for Int32;
    *(v52 + 64) = &protocol witness table for Int32;
    *(v52 + 32) = v44;
    v53 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v52 + 96) = v53;
    v54 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v52 + 104) = v54;
    *(v52 + 72) = v45;
    *(v52 + 136) = &type metadata for String;
    v55 = sub_1000053B0();
    *(v52 + 112) = v48;
    *(v52 + 120) = v50;
    *(v52 + 176) = &type metadata for UInt;
    *(v52 + 184) = &protocol witness table for UInt;
    *(v52 + 144) = v55;
    *(v52 + 152) = 3051;
    v56 = v68[0];
    *(v52 + 216) = v53;
    *(v52 + 224) = v54;
    *(v52 + 192) = v56;
    v57 = v45;
    v58 = v56;
    v59 = static os_log_type_t.error.getter();
    sub_100005404(v51, &_mh_execute_header, v59, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v52);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v60 = static os_log_type_t.error.getter();
    sub_100005404(v51, &_mh_execute_header, v60, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v61 = swift_allocObject();
    v61[2] = 8;
    v61[3] = 0;
    v61[4] = 0;
    v61[5] = 0;
    v62 = __VaListBuilder.va_list()();
    StaticString.description.getter("didRecognizeSingleContinuousTouchGesture(_:)", 44, 2);
    v63 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v64 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v3 = String._bridgeToObjectiveC()();

    [v66 handleFailureInFunction:v63 file:v64 lineNumber:3051 isFatal:0 format:v3 args:v62];

LABEL_24:

    return;
  }

  v3 = v2;
  v4 = [v1 state];
  if ((v4 - 3) >= 3)
  {
    if (v4 == 1)
    {
      sub_100070F30();
      v65 = v3;
      sub_100F5E980(v2, 0);

      return;
    }

    goto LABEL_24;
  }

  v5 = sub_100070F30();
  v6 = v3;
  sub_100F5FB78(v2, 0, 0);
  v7 = *(v5 + 48);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);

  NSObject.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << v7[32];
  v10 = v8 & ~v9;
  if ((*&v7[((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v7 + 6) + 16 * v10;
      if (!*(v12 + 8))
      {
        v13 = *v12;
        sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
        v14 = v13;
        v15 = static NSObject.== infix(_:_:)();
        sub_1007A98C8(v13, 0);
        if (v15)
        {
          break;
        }
      }

      v10 = (v10 + 1) & v11;
      if (((*&v7[((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v10) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = v7;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100E85E84();
      v7 = v68[0];
    }

    v17 = *(v7 + 6) + 16 * v10;
    v18 = *v17;
    v19 = *(v17 + 8);
    sub_100F65BD4(v10);
    sub_1007A98C8(v18, v19);
    v7 = v68[0];
  }

LABEL_13:
  v20 = *(v5 + 48);

  sub_100F5DE4C(v7);
  *(v5 + 48) = v7;

  sub_100F5E170(v20);
}

Swift::Int sub_100F5DC40()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 <= 1)
  {
    v3 = v2 != 0;
LABEL_5:
    Hasher._combine(_:)(v3);
    NSObject.hash(into:)();
    return Hasher._finalize()();
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_5;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }
  }

  else
  {
    v4 = 3;
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_100F5DCF0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 <= 1)
  {
    v4 = v3 != 0;
LABEL_5:
    Hasher._combine(_:)(v4);
    NSObject.hash(into:)();
    return;
  }

  if (v3 == 2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }
  }

  else
  {
    v5 = 3;
  }

  Hasher._combine(_:)(v5);
}

Swift::Int sub_100F5DD88(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3 <= 1)
  {
    v4 = v3 != 0;
LABEL_5:
    Hasher._combine(_:)(v4);
    NSObject.hash(into:)();
    return Hasher._finalize()();
  }

  if (v3 == 2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }
  }

  else
  {
    v5 = 3;
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

double sub_100F5DE4C(uint64_t a1)
{
  v3 = *(v1 + 48);

  v4 = sub_100BC6368(a1, v3);

  if ((v4 & 1) == 0)
  {
    v6 = *(a1 + 16);
    if (*(*(v1 + 48) + 16))
    {
      if (!v6)
      {
        if (qword_1019F2128 != -1)
        {
          swift_once();
        }

        v7 = static OS_os_log.crlFolderUI;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146BDE0;
        v9 = sub_100F5F970();
        v11 = v10;
        *(inited + 56) = &type metadata for String;
        v12 = sub_1000053B0();
        *(inited + 32) = v9;
        *(inited + 40) = v11;
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v12;
        *(inited + 64) = v12;
        *(inited + 72) = 0xD000000000000026;
        *(inited + 80) = 0x80000001015B2920;
        v13 = static os_log_type_t.info.getter();
        sub_100005404(v7, &_mh_execute_header, v13, "%@: %@", 6, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        sub_100F5EA3C();
      }
    }

    else if (v6 && *(v1 + 72) == 1)
    {
      if (qword_1019F2128 != -1)
      {
        swift_once();
      }

      v14 = static OS_os_log.crlFolderUI;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_10146BDE0;
      v16 = sub_100F5F970();
      v18 = v17;
      *(v15 + 56) = &type metadata for String;
      v19 = sub_1000053B0();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      *(v15 + 96) = &type metadata for String;
      *(v15 + 104) = v19;
      *(v15 + 64) = v19;
      *(v15 + 72) = 0xD000000000000047;
      *(v15 + 80) = 0x80000001015B2950;
      v20 = static os_log_type_t.info.getter();
      sub_100005404(v14, &_mh_execute_header, v20, "%@: %@", 6, 2, v15);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      *(v1 + 72) = 0;
      if (*(v1 + 80))
      {

        sub_1005B981C(&qword_1019FFCD8, &unk_1014B97A0);
        sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
        Task.cancel()();
      }

      *(v1 + 80) = 0;
    }
  }

  return result;
}

double sub_100F5E170(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);

  v5 = sub_100BC6368(a1, v4);

  if ((v5 & 1) == 0)
  {
    v7 = *(a1 + 16);
    if (v7 && (Hasher.init(_seed:)(), Hasher._combine(_:)(5uLL), v8 = Hasher._finalize()(), v9 = a1 + 56, v10 = -1 << *(a1 + 32), v11 = v8 & ~v10, ((*(a1 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
    {
      v12 = ~v10;
      v13 = *(a1 + 48);
      do
      {
        v14 = v13 + 16 * v11;
        v15 = *(v14 + 8) > 2u && *v14 > 1uLL;
        v16 = v15;
        if (v15)
        {
          break;
        }

        v11 = (v11 + 1) & v12;
      }

      while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    else
    {
      v16 = 0;
    }

    v17 = *(v2 + 48);
    if (*(v17 + 16))
    {
      Hasher.init(_seed:)();
      Hasher._combine(_:)(5uLL);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v17 + 32);
      v20 = v18 & ~v19;
      if ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = *(v17 + 48) + 16 * v20;
          if (*(v22 + 8) >= 3u && *v22 > 1uLL)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        if ((v16 & 1) == 0)
        {
          if (qword_1019F2128 != -1)
          {
            swift_once();
          }

          v24 = static OS_os_log.crlFolderUI;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146BDE0;
          v33 = sub_100F5F970();
          v35 = v34;
          *(inited + 56) = &type metadata for String;
          v29 = sub_1000053B0();
          *(inited + 32) = v33;
          *(inited + 40) = v35;
          v30 = 0x80000001015B28E0;
          *(inited + 96) = &type metadata for String;
          *(inited + 104) = v29;
          v31 = 0xD000000000000017;
          goto LABEL_30;
        }
      }
    }

LABEL_25:
    if (!v7 && *(*(v2 + 48) + 16))
    {
      if (qword_1019F2128 != -1)
      {
        swift_once();
      }

      v24 = static OS_os_log.crlFolderUI;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v26 = sub_100F5F970();
      v28 = v27;
      *(inited + 56) = &type metadata for String;
      v29 = sub_1000053B0();
      *(inited + 32) = v26;
      *(inited + 40) = v28;
      v30 = 0x80000001015B2900;
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v29;
      v31 = 0xD000000000000019;
LABEL_30:
      *(inited + 64) = v29;
      *(inited + 72) = v31;
      *(inited + 80) = v30;
      v32 = static os_log_type_t.info.getter();
      sub_100005404(v24, &_mh_execute_header, v32, "%@: %@", 6, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
    }
  }

  return result;
}

void sub_100F5E4DC()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (!*(v2 + 16))
  {
    if ((*(v0 + 72) & 1) == 0)
    {
      if (qword_1019F2128 != -1)
      {
        swift_once();
      }

      v23 = static OS_os_log.crlFolderUI;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v25 = sub_100F5F970();
      v27 = v26;
      *(inited + 56) = &type metadata for String;
      v28 = sub_1000053B0();
      *(inited + 32) = v25;
      *(inited + 40) = v27;
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v28;
      *(inited + 64) = v28;
      *(inited + 72) = 0xD000000000000028;
      *(inited + 80) = 0x80000001015B2E80;
      v29 = static os_log_type_t.info.getter();
      sub_100005404(v23, &_mh_execute_header, v29, "%@: %@", 6, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      *(v1 + 72) = 0;
      if (*(v1 + 80))
      {

        sub_1005B981C(&qword_1019FFCD8, &unk_1014B97A0);
        sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
        Task.cancel()();
      }

      *(v1 + 80) = 0;

      *(v1 + 41) = 0;
      (*(v1 + 56))(v30);
      return;
    }

LABEL_11:
    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlFolderUI;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_10146BDE0;
    v11 = sub_100F5F970();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    v14 = sub_1000053B0();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v14;
    *(v10 + 64) = v14;
    *(v10 + 72) = 0xD00000000000004ALL;
    *(v10 + 80) = 0x80000001015B2E30;
    v15 = static os_log_type_t.info.getter();
    sub_100005404(v9, &_mh_execute_header, v15, "%@: %@", 6, 2, v10);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    *(v1 + 41) = 1;
    return;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(5uLL);
  v3 = Hasher._finalize()();
  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    goto LABEL_11;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = *(v2 + 48) + 16 * v5;
    if (*(v7 + 8) >= 3u && *v7 > 1uLL)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (qword_1019F2128 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.crlFolderUI;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_10146BDE0;
  v18 = sub_100F5F970();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  v21 = sub_1000053B0();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v21;
  *(v17 + 64) = v21;
  *(v17 + 72) = 0xD000000000000054;
  *(v17 + 80) = 0x80000001015B2DD0;
  v22 = static os_log_type_t.info.getter();
  sub_100005404(v16, &_mh_execute_header, v22, "%@: %@", 6, 2, v17);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
}

uint64_t sub_100F5E980(void *a1, uint64_t a2)
{
  sub_100F5FB78(a1, a2, 1);
  v7 = *(v2 + 48);

  sub_10089D774(a1, a2);
  sub_100E71AD0(&v8, a1, a2);
  sub_1007A98C8(v8, v9);
  v5 = *(v2 + 48);

  sub_100F5DE4C(v7);
  *(v2 + 48) = v7;

  sub_100F5E170(v5);
}

void sub_100F5EA3C()
{
  v1 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  if (*(v0 + 40))
  {

    sub_100F5F68C();
  }

  else if (*(v0 + 72) == 1)
  {
    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.crlFolderUI;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v6 = sub_100F5F970();
    v8 = v7;
    *(inited + 56) = &type metadata for String;
    v9 = sub_1000053B0();
    *(inited + 32) = v6;
    *(inited + 40) = v8;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v9;
    *(inited + 64) = v9;
    *(inited + 72) = 0xD000000000000044;
    *(inited + 80) = 0x80000001015B2D40;
    v10 = static os_log_type_t.info.getter();
    sub_100005404(v4, &_mh_execute_header, v10, "%@: %@", 6, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
  }

  else
  {
    v11 = *(v0 + 32);
    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlFolderUI;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_10146BDE0;
    v14 = v0;
    v15 = sub_100F5F970();
    v17 = v16;
    *(v13 + 56) = &type metadata for String;
    v18 = sub_1000053B0();
    *(v13 + 64) = v18;
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);
    v19._countAndFlagsBits = 0x676E697472617453;
    v19._object = 0xEB00000000206120;
    String.append(_:)(v19);
    Double.write<A>(to:)();
    v20._object = 0x80000001015B2CA0;
    v20._countAndFlagsBits = 0xD000000000000022;
    String.append(_:)(v20);
    v21 = v30;
    v22 = v31;
    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v18;
    *(v13 + 72) = v21;
    *(v13 + 80) = v22;
    v23 = static os_log_type_t.info.getter();
    sub_100005404(v12, &_mh_execute_header, v23, "%@: %@", 6, 2, v13);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    *(v14 + 72) = 1;
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v25;
    v26[5] = v11;
    v27 = sub_100797320(0, 0, v3, &unk_1014B97C8, v26);
    v28 = *(v14 + 80);
    *(v14 + 80) = v27;
    if (v28)
    {

      if (swift_task_isCancelled())
      {
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }
  }
}

uint64_t sub_100F5EED4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 464) = a2;
  *(v5 + 448) = a1;
  *(v5 + 456) = a5;
  return _swift_task_switch(sub_100F5EEF8, 0, 0);
}

uint64_t sub_100F5EEF8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 80);
    *(v0 + 472) = v2;

    if (v2)
    {
      v4 = *(v0 + 464) * 1000000000.0;
      if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v4 > -1.0)
      {
        if (v4 < 1.84467441e19)
        {
          v5 = v4;
          v6 = swift_task_alloc();
          *(v0 + 480) = v6;
          *v6 = v0;
          v6[1] = sub_100F5F0A0;
          v3 = v5;

          return static Task<>.sleep(nanoseconds:)(v3);
        }

LABEL_16:
        __break(1u);
        return static Task<>.sleep(nanoseconds:)(v3);
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  *(*(v0 + 448) + 24) = &type metadata for () + 8;
  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  if (v7)
  {
    *(v7 + 80) = 0;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100F5F0A0()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_100F5F5F0;
  }

  else
  {
    v2 = sub_100F5F1B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F5F1B4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 72) = 0;
  }

  if (swift_task_isCancelled())
  {
    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v2 = static OS_os_log.crlFolderUI;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v4 = sub_100F5F970();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    *(inited + 56) = &type metadata for String;
    v12 = sub_1000053B0();
    if (v6)
    {
      v13 = v4;
    }

    else
    {
      v13 = 0;
    }

    v14 = 0xE000000000000000;
    if (v6)
    {
      v14 = v6;
    }

    *(inited + 32) = v13;
    *(inited + 40) = v14;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v12;
    *(inited + 64) = v12;
    *(inited + 72) = 0xD000000000000010;
    *(inited + 80) = 0x80000001015B2DB0;
    v15 = static os_log_type_t.info.getter();
    sub_100005404(v2, &_mh_execute_header, v15, "%@: %@", 6, 2, inited);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v7 = static OS_os_log.crlFolderUI;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_10146BDE0;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v9 = sub_100F5F970();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    *(v8 + 56) = &type metadata for String;
    v16 = sub_1000053B0();
    *(v8 + 64) = v16;
    if (v11)
    {
      v17 = v9;
    }

    else
    {
      v17 = 0;
    }

    if (v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    *(v8 + 32) = v17;
    *(v8 + 40) = v18;
    _StringGuts.grow(_:)(19);
    v0[54] = 0;
    v0[55] = 0xE000000000000000;
    Double.write<A>(to:)();
    v19._countAndFlagsBits = 0xD000000000000011;
    v19._object = 0x80000001015B2D90;
    String.append(_:)(v19);
    v20 = v0[54];
    v21 = v0[55];
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v16;
    *(v8 + 72) = v20;
    *(v8 + 80) = v21;
    v22 = static os_log_type_t.info.getter();
    sub_100005404(v7, &_mh_execute_header, v22, "%@: %@", 6, 2, v8);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100F5F68C();
    }
  }

  *(v0[56] + 24) = &type metadata for () + 8;
  swift_beginAccess();
  v23 = swift_weakLoadStrong();
  if (v23)
  {
    *(v23 + 80) = 0;
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_100F5F5F0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 80) = 0;
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_100F5F68C()
{
  if (*(v0 + 41) == 1)
  {
    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v1 = static OS_os_log.crlFolderUI;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v3 = sub_100F5F970();
    v5 = v4;
    *(inited + 56) = &type metadata for String;
    v6 = sub_1000053B0();
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v6;
    *(inited + 64) = v6;
    *(inited + 72) = 0xD000000000000035;
    *(inited + 80) = 0x80000001015B2C60;
    v7 = static os_log_type_t.info.getter();
    sub_100005404(v1, &_mh_execute_header, v7, "%@: %@", 6, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    *(v0 + 72) = 0;
    if (*(v0 + 80))
    {

      sub_1005B981C(&qword_1019FFCD8, &unk_1014B97A0);
      sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
      Task.cancel()();
    }

    *(v0 + 80) = 0;

    *(v0 + 41) = 0;
    (*(v0 + 56))(v15);
  }

  else
  {
    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.crlFolderUI;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_10146BDE0;
    v10 = sub_100F5F970();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    v13 = sub_1000053B0();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v13;
    *(v9 + 64) = v13;
    *(v9 + 72) = 0xD00000000000001DLL;
    *(v9 + 80) = 0x80000001015B2C40;
    v14 = static os_log_type_t.info.getter();
    sub_100005404(v8, &_mh_execute_header, v14, "%@: %@", 6, 2, v9);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
  }
}

uint64_t sub_100F5F970()
{
  if (v0[12])
  {
    v1 = v0[11];
  }

  else
  {
    v1 = sub_100F5FA0C(v0, *v0);
    v0[11] = v1;
    v0[12] = v2;
  }

  return v1;
}

uint64_t sub_100F5FA0C(uint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  v3 = 0xE100000000000000;
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  swift_getMetatypeMetadata();
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  _print_unlocked<A, B>(_:_:)();
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = *(a1 + 16);
    _StringGuts.grow(_:)(17);

    strcpy(v14, ", identifier: ");
    HIBYTE(v14[1]) = -18;
    v9._countAndFlagsBits = v8;
    v9._object = v7;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 62;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11 = v14[0];
    v3 = v14[1];
  }

  else
  {
    v11 = 62;
  }

  v12._countAndFlagsBits = v11;
  v12._object = v3;
  String.append(_:)(v12);

  return 0;
}

double sub_100F5FB78(void *a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0xEA0000000000676ELL;
      v9 = 0x696C6C6F7263732ELL;
    }

    else
    {
      v8 = 0xE600000000000000;
      v9 = 0x6863756F742ELL;
    }

    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v8 = 0xEC000000756E654DLL;
    v9 = 0x747865746E6F632ELL;
LABEL_7:
    swift_getObjectType();
    sub_10089D774(a1, a2);
    sub_10089D774(a1, a2);
    sub_1005B981C(&unk_101A23BF0, &unk_1014B97B0);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    v13 = String.init<A>(describing:)();
    v15 = v14;
    v16._countAndFlagsBits = 15392;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = v10;
    v17._object = v12;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 8250;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = v13;
    v19._object = v15;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 62;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    sub_1007A98C8(a1, a2);
    v22 = v9;
    v21 = v8;
    goto LABEL_16;
  }

  v23 = 0x80000001015B2BF0;
  v24 = 0xD000000000000026;
  if (a1 != 1)
  {
    v24 = 0xD000000000000016;
    v23 = 0x80000001015B2B10;
  }

  if (a1)
  {
    v22 = v24;
  }

  else
  {
    v22 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v21 = v23;
  }

  else
  {
    v21 = 0x80000001015B2C20;
  }

LABEL_16:
  v25 = *(v4 + 48);

  v26 = sub_10079FB58(a1, a2, v25);

  if (a3)
  {
    if (v26)
    {
      if (qword_1019F2128 != -1)
      {
        swift_once();
      }

      v27 = static OS_os_log.crlFolderUI;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v29 = sub_100F5F970();
      v31 = v30;
      *(inited + 56) = &type metadata for String;
      v32 = sub_1000053B0();
      *(inited + 32) = v29;
      *(inited + 64) = v32;
      *(inited + 40) = v31;
      _StringGuts.grow(_:)(55);
      v33._countAndFlagsBits = 0xD00000000000001DLL;
      v33._object = 0x80000001015B2BB0;
      String.append(_:)(v33);
      v34._countAndFlagsBits = v22;
      v34._object = v21;
      String.append(_:)(v34);

      v35 = 0xD000000000000018;
      v36 = 0x80000001015B2BD0;
LABEL_32:
      String.append(_:)(*&v35);
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v32;
      *(inited + 72) = 0;
      *(inited + 80) = 0xE000000000000000;
      v47 = static os_log_type_t.error.getter();
      goto LABEL_33;
    }

    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.crlFolderUI;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v43 = sub_100F5F970();
    v45 = v44;
    *(inited + 56) = &type metadata for String;
    v40 = sub_1000053B0();
    *(inited + 32) = v43;
    *(inited + 64) = v40;
    *(inited + 40) = v45;
    _StringGuts.grow(_:)(25);

    v41 = 0x80000001015B2B90;
    v42 = 0xD000000000000017;
  }

  else
  {
    if ((v26 & 1) == 0)
    {
      if (qword_1019F2128 != -1)
      {
        swift_once();
      }

      v27 = static OS_os_log.crlFolderUI;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v48 = sub_100F5F970();
      v50 = v49;
      *(inited + 56) = &type metadata for String;
      v32 = sub_1000053B0();
      *(inited + 32) = v48;
      *(inited + 64) = v32;
      *(inited + 40) = v50;
      _StringGuts.grow(_:)(53);
      v51._countAndFlagsBits = 0xD00000000000001FLL;
      v51._object = 0x80000001015B2B30;
      String.append(_:)(v51);
      v52._countAndFlagsBits = v22;
      v52._object = v21;
      String.append(_:)(v52);

      v36 = 0x80000001015B2B50;
      v35 = 0xD000000000000014;
      goto LABEL_32;
    }

    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.crlFolderUI;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v37 = sub_100F5F970();
    v39 = v38;
    *(inited + 56) = &type metadata for String;
    v40 = sub_1000053B0();
    *(inited + 32) = v37;
    *(inited + 64) = v40;
    *(inited + 40) = v39;
    _StringGuts.grow(_:)(27);

    v41 = 0x80000001015B2B70;
    v42 = 0xD000000000000019;
  }

  v54 = v42;
  v55 = v41;
  v46._countAndFlagsBits = v22;
  v46._object = v21;
  String.append(_:)(v46);

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v40;
  *(inited + 72) = v54;
  *(inited + 80) = v55;
  v47 = static os_log_type_t.info.getter();
LABEL_33:
  sub_100005404(v27, &_mh_execute_header, v47, "%@: %@", 6, 2, inited);
  swift_unknownObjectRelease();
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  return result;
}

uint64_t sub_100F601D0()
{

  return swift_deallocClassInstance();
}

double sub_100F60228(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100F606D0(a1);
  }

  return result;
}

void sub_100F60288(uint64_t a1, void (*a2)(char *))
{
  v26 = a2;
  v2 = sub_1005B981C(&unk_101A0A390, &unk_101489F80);
  __chkstk_darwin(v2 - 8);
  v27 = &v23 - v3;
  v4 = type metadata accessor for Notification();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 32);
    v25 = *(v9 + 16);
    if (v25)
    {
      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v31 = v8;
      v24 = v9 + v30;
      v23 = (v28 + 56);
      v29 = (v28 + 8);

      v10 = 0;
      while (v10 < *(v9 + 16))
      {
        v11 = *(v28 + 72);
        v12 = *(v28 + 16);
        v13 = v6;
        v12(v6, v24 + v11 * v10, v4);
        v14 = v31;
        swift_beginAccess();
        v15 = *(v14 + 32);
        if (!*(v15 + 2))
        {
          goto LABEL_20;
        }

        v16 = v9;
        v17 = v27;
        v12(v27, &v15[v30], v4);
        (*v23)(v17, 0, 1, v4);
        sub_10000CAAC(v17, &unk_101A0A390, &unk_101489F80);
        v18 = *(v15 + 2);
        if (!v18)
        {
          goto LABEL_21;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v31;
        *(v31 + 32) = v15;
        if (!isUniquelyReferenced_nonNull_native || (v18 - 1) > *(v15 + 3) >> 1)
        {
          v15 = sub_100B3912C(isUniquelyReferenced_nonNull_native, v18, 1, v15);
          *(v20 + 32) = v15;
        }

        v21 = &v15[v30];
        v22 = *v29;
        (*v29)(&v15[v30], v4);
        if (v11 > 0 || v21 >= v21 + v11 + (*(v15 + 2) - 1) * v11)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v11)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        ++v10;
        --*(v15 + 2);
        *(v31 + 32) = v15;
        swift_endAccess();
        v6 = v13;
        v26(v13);
        v22(v13, v4);
        v9 = v16;
        if (v25 == v10)
        {

          return;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_100F6060C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  *(v0 + 24) = 0;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_100F606D0(uint64_t a1)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v7 = *(v1 + 32);

  v8 = sub_1012CDFF8(a1, v7);

  if (!v8)
  {
    (*(v4 + 16))(v6, a1, v3);
    swift_beginAccess();
    v10 = *(v1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 32) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_100B3912C(0, v10[2] + 1, 1, v10);
      *(v1 + 32) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_100B3912C((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    (*(v4 + 32))(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v6, v3);
    *(v1 + 32) = v10;
    swift_endAccess();
  }

  if (*(v1 + 16))
  {

    sub_100F5E4DC();
  }

  return result;
}

void sub_100F608BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v5 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16) == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (__CocoaSet.count.getter() != 1)
  {
LABEL_3:
    [v3 setState:5];
  }

LABEL_4:
  v27 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController38SingleContinuousTouchGestureRecognizer_trackedTouch;
  if (!*(v3 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController38SingleContinuousTouchGestureRecognizer_trackedTouch))
  {
    v10 = sub_100BC1BBC(v4);
    if (v10)
    {
      v11 = *&v27[v3];
      *&v27[v3] = v10;
      v28 = v10;

      [v3 setState:1];
    }

    return;
  }

  if (v5)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_101A23BE0, UITouch_ptr);
    sub_10000FDE0(&qword_101A23BE8, &qword_101A23BE0, UITouch_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v4 = v30;
    v6 = v31;
    v7 = v32;
    v8 = v33;
    v9 = v34;
  }

  else
  {
    v12 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v7 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v9 = v14 & *(v4 + 56);

    v8 = 0;
  }

  v25 = v7;
  v15 = (v7 + 64) >> 6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100006370(0, &qword_101A23BE0, UITouch_ptr), swift_dynamicCast(), v20 = v29, v18 = v8, v19 = v9, !v29))
    {
LABEL_32:
      sub_100035F90(v4);
      return;
    }

LABEL_29:
    v21 = *&v27[v3];
    if (!v21 || (sub_100006370(0, &qword_101A23BE0, UITouch_ptr), v22 = v20, v23 = v21, v24 = static NSObject.== infix(_:_:)(), v22, v23, (v24 & 1) == 0))
    {
      [v3 ignoreTouch:v20 forEvent:{a2, v25}];
    }

    v8 = v18;
    v9 = v19;
  }

  v16 = v8;
  v17 = v9;
  v18 = v8;
  if (v9)
  {
LABEL_25:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v4 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_32;
    }

    v17 = *(v6 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
}

id sub_100F60D14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSFolderGridViewController.SingleContinuousTouchGestureRecognizer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100F60DD0(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_100070F30();
    sub_100F5FB78(a1, 1u, 0);
    v4 = *(v3 + 48);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(1uLL);

    NSObject.hash(into:)();
    v5 = Hasher._finalize()();
    v6 = -1 << *(v4 + 32);
    v7 = v5 & ~v6;
    if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v15 = v3;
      v8 = ~v6;
      while (1)
      {
        v9 = *(v4 + 48) + 16 * v7;
        if (*(v9 + 8) == 1)
        {
          v10 = *v9;
          sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
          v11 = v10;
          v12 = static NSObject.== infix(_:_:)();
          sub_1007A98C8(v10, 1u);
          if (v12)
          {
            break;
          }
        }

        v7 = (v7 + 1) & v8;
        if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_100E85E84();
      }

      sub_1007A98C8(*(*(v4 + 48) + 16 * v7), *(*(v4 + 48) + 16 * v7 + 8));
      sub_100F65BD4(v7);
LABEL_10:
      v3 = v15;
    }

    v13 = *(v3 + 48);

    sub_100F5DE4C(v4);
    *(v3 + 48) = v4;

    sub_100F5E170(v13);
  }

  return result;
}

double sub_100F61040(void *a1)
{
  v2 = sub_100070F30();
  sub_100F5FB78(a1, 1u, 0);
  v3 = *(v2 + 48);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1uLL);

  NSObject.hash(into:)();
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v14 = v2;
    v7 = ~v5;
    while (1)
    {
      v8 = *(v3 + 48) + 16 * v6;
      if (*(v8 + 8) == 1)
      {
        v9 = *v8;
        sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
        v10 = v9;
        v11 = static NSObject.== infix(_:_:)();
        sub_1007A98C8(v9, 1u);
        if (v11)
        {
          break;
        }
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_100E85E84();
    }

    sub_1007A98C8(*(*(v3 + 48) + 16 * v6), *(*(v3 + 48) + 16 * v6 + 8));
    sub_100F65BD4(v6);
LABEL_9:
    v2 = v14;
  }

  v12 = *(v2 + 48);

  sub_100F5DE4C(v3);
  *(v2 + 48) = v3;

  sub_100F5E170(v12);

  return result;
}

void sub_100F61284(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Notification.userInfo.getter();
    if (v4)
    {
      v5 = v4;
      AnyHashable.init<A>(_:)();
      if (*(v5 + 16) && (v6 = sub_1000640CC(v8), (v7 & 1) != 0))
      {
        sub_100064288(*(v5 + 56) + 32 * v6, &v9);
        sub_100064234(v8);

        if (*(&v10 + 1))
        {
          sub_1005B981C(&qword_1019FB8A8, &qword_101474F00);
          if (swift_dynamicCast())
          {
            sub_100F3A24C(v8[0]);
          }

          else
          {
          }

          return;
        }
      }

      else
      {

        sub_100064234(v8);
        v9 = 0u;
        v10 = 0u;
      }
    }

    else
    {

      v9 = 0u;
      v10 = 0u;
    }

    sub_10000CAAC(&v9, &unk_1019F4D00, &unk_10146E7F0);
  }
}

void sub_100F61400(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong calendarDayDidChange];
  }
}

void sub_100F61484(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v11[4] = a4;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = *"";
  v11[2] = sub_100007638;
  v11[3] = a5;
  v9 = _Block_copy(v11);
  v10 = a1;

  sub_10091E6A4(v9);

  _Block_release(v9);
}

id sub_100F61548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a2;
  v67 = a1;
  v64 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v3 = *(v64 - 8);
  __chkstk_darwin(v64);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v69 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v55 - v10;
  v12 = type metadata accessor for UICollectionLayoutListConfiguration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v68 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_100006370(0, &unk_101A23C80, NSCollectionLayoutSection_ptr);
    (*(v7 + 104))(v11, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v6);
    UICollectionLayoutListConfiguration.init(appearance:)();
    v32 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    (*(v13 + 8))(v17, v12);
    return v32;
  }

  v19 = Strong;
  v58 = v13;
  v57 = v12;
  v65 = v6;
  v20 = sub_10005AFE0();
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  v56 = v72;
  v61 = v73;
  v60 = v74;
  v59 = v75;
  LODWORD(v67) = v76;
  if ((v19[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2] & 1) != 0 && v19[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions])
  {
    v21 = 1;
    v22 = &enum case for UICollectionLayoutListConfiguration.Appearance.grouped(_:);
  }

  else
  {
    v21 = 0;
    v22 = &enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:);
  }

  v23 = v65;
  v24 = v7;
  v62 = v71;
  v63 = v70;
  v25 = *(v7 + 104);
  v26 = v69;
  v25(v69, *v22, v65);
  (*(v24 + 16))(v11, v26, v23);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v27 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:);
  if (!v21)
  {
    v27 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
  }

  (*(v3 + 104))(v5, *v27, v64);
  UICollectionLayoutListConfiguration.headerMode.setter();
  v28 = [objc_opt_self() systemBackgroundColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = v19;
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v21;
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  sub_100006370(0, &unk_101A23C80, NSCollectionLayoutSection_ptr);
  v32 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  v33 = v56;
  v34 = v61;
  v35 = v60;
  v36 = v59;
  if ((v67 + 64) <= 0x3Du && v67 == 192 && v63 == 2 && !(v56 | v62 | v61 | v60 | v59))
  {
    v37 = objc_opt_self();
    sub_100076F8C(2, 0, v33, v34, v35, v36, 0xC0u);
    v38 = [v37 fractionalWidthDimension:1.0];
    v39 = [v37 absoluteDimension:102.0];
    v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

    v41 = v40;
    v42 = String._bridgeToObjectiveC()();
    v43 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v41 elementKind:v42 alignment:5];

    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_101465920;
    *(v44 + 32) = v43;
    sub_100006370(0, &qword_1019F6768, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v45 = v43;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v35 = v60;

    [v32 setBoundarySupplementaryItems:isa];

    v36 = v59;
    v34 = v61;
  }

  result = [v29 view];
  v48 = v57;
  v49 = v58;
  if (result)
  {
    v50 = result;
    sub_1000771A8(v63, v62, v33, v34, v35, v36, v67);
    [v50 directionalLayoutMargins];
    v52 = v51;
    v54 = v53;

    [v32 setContentInsets:{0.0, v52, 16.0, v54}];
    (*(v49 + 8))(v68, v48);
    (*(v24 + 8))(v69, v65);
    return v32;
  }

  __break(1u);
  return result;
}

id sub_100F61CF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v3 - 8);
  v5 = &aBlock[-1] - v4;
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &aBlock[-1] - v11;
  __chkstk_darwin(v13);
  v15 = &aBlock[-1] - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = sub_10005AFE0();
    sub_10079330C(a1, v5);

    v19 = _s4NodeVMa(0);
    if ((*(*(v19 - 8) + 48))(v5, 1, v19) == 1)
    {

      sub_10000CAAC(v5, &unk_1019FB770, &unk_10146FA30);
      return 0;
    }

    else
    {
      sub_1000652DC(v5, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v5, _s4NodeVMa);
      sub_100065D50(v12, v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1000652DC(v15, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v21 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      sub_100065D50(v9, v22 + v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
      aBlock[4] = sub_100F772DC;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100F625B8;
      aBlock[3] = &unk_1018A9730;
      v23 = _Block_copy(aBlock);
      v24 = objc_opt_self();

      v25 = [v24 contextualActionWithStyle:1 title:0 handler:v23];
      _Block_release(v23);

      v26 = [objc_opt_self() mainBundle];
      v27 = String._bridgeToObjectiveC()();
      v28 = String._bridgeToObjectiveC()();
      v29 = [v26 localizedStringForKey:v27 value:v28 table:0];

      v30 = v29;
      v31 = v29;
      if (!v29)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = String._bridgeToObjectiveC()();

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = String._bridgeToObjectiveC()();
      }

      v32 = v29;
      if (_UISolariumEnabled())
      {

        v33 = String._bridgeToObjectiveC()();
        v34 = [objc_opt_self() systemImageNamed:v33];

        [v25 setImage:v34];
        v35 = v25;
        [v35 setAccessibilityLabel:v31];
      }

      else
      {

        [v25 setTitle:v30];
        v31 = v30;
      }

      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_101465920;
      *(v36 + 32) = v25;
      sub_100006370(0, &qword_101A23C90, UIContextualAction_ptr);
      v37 = v25;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v39 = [objc_opt_self() configurationWithActions:isa];

      sub_10000BBC4(v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
      return v39;
    }
  }

  return result;
}

void sub_100F622A4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
    v19 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    (*(*(v19 - 8) + 56))(v15, 5, 5, v19);
    LOBYTE(v18) = sub_100068604(v17 + v18, v15);
    sub_10000BBC4(v15, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_1005B981C(&qword_101A23C10, &unk_10146F210);
    v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10146C6B0;
    sub_1000652DC(a6, v21 + v20, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (v18)
    {
      sub_100F549A8(v21);
      swift_setDeallocating();
      sub_10000BBC4(v21 + v20, type metadata accessor for CRLBoardLibraryViewModel.Item);
      swift_deallocClassInstance();
      (a3)(0);
    }

    else
    {
      sub_1000652DC(a6, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardLibraryViewModel.Item);
      v22 = swift_allocObject();
      *(v22 + 16) = a3;
      *(v22 + 24) = a4;
      sub_100065D50(v12, v22 + v20, type metadata accessor for CRLBoardLibraryViewModel.Item);

      sub_100F558C0(v21, sub_100F77378, v22);
    }
  }

  else
  {
    a3();
  }
}

void sub_100F625B8(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_100B00328, v8);
}

void sub_100F6268C(uint64_t a1@<X1>, char a3@<W3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v23 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIListSeparatorConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = *(v11 + 16);
  if (!Strong)
  {
    v15(a4, a1, v10);
    return;
  }

  v16 = Strong;
  v22 = a4;
  v15(v13, a1, v10);
  if (!IndexPath.item.getter() && (a3 & 1) == 0)
  {
    (*(v23 + 104))(v9, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v7);
    UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  }

  v17 = IndexPath.item.getter();
  v18 = [v16 collectionView];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = [v18 numberOfItemsInSection:IndexPath.section.getter()];

  if (__OFSUB__(v20, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v17 == v20 - 1)
  {
    (*(v23 + 104))(v9, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v7);
    UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
  }

  (*(v11 + 32))(v22, v13, v10);
}

void sub_100F62938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, char *, void, void, void, char *))
{
  v9 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v27 = a1;
    v28 = a2;
    v29 = a5;
    v26 = (Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider);
    v18 = (*(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
    v19 = v18[1];
    v32 = *v18;
    v33 = v19;
    v34 = v18[2];
    v35 = v32;
    v36 = v19;
    v37 = v34;
    sub_10000BE14(&v35, v31, &unk_101A23CC0, &unk_1014712F0);
    sub_10000BE14(&v35 + 8, v31, &unk_101A23CC0, &unk_1014712F0);
    sub_10000BE14(&v36, v31, &qword_1019F66A8, &unk_10146F220);
    sub_10000BE14(&v36 + 8, v31, &unk_101A23CD0, &unk_101471300);
    sub_10000BE14(&v37, v31, &qword_1019FFF30, &unk_10146F230);
    sub_10000BE14(&v37 + 8, v31, &unk_101A23CE0, &qword_101471310);
    v30 = a3;
    sub_100825120(a3, v11);
    sub_10000CAAC(&v35, &unk_101A23CC0, &unk_1014712F0);
    sub_10000CAAC(&v35 + 8, &unk_101A23CC0, &unk_1014712F0);
    sub_10000CAAC(&v36, &qword_1019F66A8, &unk_10146F220);
    sub_10000CAAC(&v36 + 8, &unk_101A23CD0, &unk_101471300);
    sub_10000CAAC(&v37, &qword_1019FFF30, &unk_10146F230);
    sub_10000CAAC(&v37 + 8, &unk_101A23CE0, &qword_101471310);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10000CAAC(v11, &unk_101A15B20, &qword_10146F1E0);
      if (qword_1019F2128 != -1)
      {
        swift_once();
      }

      v20 = static OS_os_log.crlFolderUI;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      type metadata accessor for UUID();
      sub_10006852C(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v22;
      *(inited + 40) = v24;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v25, "Tried to configure a collection view item for view model identifier %@, but could not find that view model in the library.", 122, 2, inited);

      swift_setDeallocating();
      sub_100005070((inited + 32));
    }

    else
    {
      sub_100065D50(v11, v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v29(v27, v28, v15, *v26, v26[1], *&v17[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_boardPreviewImageCache], v17);
      sub_10000BBC4(v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }
  }
}

uint64_t sub_100F62E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v11 = Strong;
  v12 = *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v9, a3, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  if (v12 == 1)
  {
    _s8GridItemCMa(0);
  }

  else
  {
    _s11iOSListItemCMa(0);
  }

  v15 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  sub_10000CAAC(v9, &qword_1019F6990, &qword_10146D2F0);
  return v15;
}

void sub_100F62FD0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = Strong, v6 = [Strong menu], v5, v6))
  {
    v7 = [v6 children];
    sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        goto LABEL_5;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_5:
      a1(v8);

      return;
    }

    v56 = a1;

    v54 = objc_opt_self();
    v32 = [v54 _atomicIncrementAssertCount];
    v57 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v57, "No menu elements present to be represented in overflow as inline menu elements ", 79, 2u);
    StaticString.description.getter("configureOverflowRepresentationAsInlineMenu()", 45, 2);
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v34 = String._bridgeToObjectiveC()();

    v35 = [v34 lastPathComponent];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v39 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v32;
    v41 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v41;
    v42 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v42;
    *(inited + 72) = v33;
    *(inited + 136) = &type metadata for String;
    v43 = sub_1000053B0();
    *(inited + 112) = v36;
    *(inited + 120) = v38;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v43;
    *(inited + 152) = 3678;
    v44 = v57;
    *(inited + 216) = v41;
    *(inited + 224) = v42;
    *(inited + 192) = v44;
    v45 = v33;
    v46 = v44;
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v48 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v48, "No menu elements present to be represented in overflow as inline menu elements ", 79, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v49 = swift_allocObject();
    v49[2] = 8;
    v49[3] = 0;
    v49[4] = 0;
    v49[5] = 0;
    v50 = __VaListBuilder.va_list()();
    StaticString.description.getter("configureOverflowRepresentationAsInlineMenu()", 45, 2);
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter("No menu elements present to be represented in overflow as inline menu elements ", 79, 2);
    v53 = String._bridgeToObjectiveC()();

    [v54 handleFailureInFunction:v51 file:v52 lineNumber:3678 isFatal:0 format:v53 args:v50];

    v56(_swiftEmptyArrayStorage);
  }

  else
  {
    v55 = a1;
    v9 = objc_opt_self();
    v10 = [v9 _atomicIncrementAssertCount];
    v57 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v57, "No menu present to be represented in overflow as inline menu elements", 69, 2u);
    StaticString.description.getter("configureOverflowRepresentationAsInlineMenu()", 45, 2);
    v11 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_10146CA70;
    *(v18 + 56) = &type metadata for Int32;
    *(v18 + 64) = &protocol witness table for Int32;
    *(v18 + 32) = v10;
    v19 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v18 + 96) = v19;
    v20 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v18 + 104) = v20;
    *(v18 + 72) = v11;
    *(v18 + 136) = &type metadata for String;
    v21 = sub_1000053B0();
    *(v18 + 112) = v14;
    *(v18 + 120) = v16;
    *(v18 + 176) = &type metadata for UInt;
    *(v18 + 184) = &protocol witness table for UInt;
    *(v18 + 144) = v21;
    *(v18 + 152) = 3672;
    v22 = v57;
    *(v18 + 216) = v19;
    *(v18 + 224) = v20;
    *(v18 + 192) = v22;
    v23 = v11;
    v24 = v22;
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v18);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v26, "No menu present to be represented in overflow as inline menu elements", 69, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v27 = swift_allocObject();
    v27[2] = 8;
    v27[3] = 0;
    v27[4] = 0;
    v27[5] = 0;
    v28 = __VaListBuilder.va_list()();
    StaticString.description.getter("configureOverflowRepresentationAsInlineMenu()", 45, 2);
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter("No menu present to be represented in overflow as inline menu elements", 69, 2);
    v31 = String._bridgeToObjectiveC()();

    [v9 handleFailureInFunction:v29 file:v30 lineNumber:3672 isFatal:0 format:v31 args:v28];

    v55(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100F63834(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v30 - v15;
  v17 = [a2 zoneID];
  sub_100EE9190(v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000CAAC(v8, &unk_1019F52D0, &unk_10147C1C0);
  }

  sub_100065D50(v8, v16, type metadata accessor for CRLBoardIdentifier);
  v19 = sub_100F378A4();
  v20 = sub_100F8A1C8(v19);

  v21 = v20[2];
  if (!v21)
  {
LABEL_14:

    return sub_10000BBC4(v16, type metadata accessor for CRLBoardIdentifier);
  }

  v22 = v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v23 = *(v10 + 72);
  while (1)
  {
    sub_1000652DC(v22, v12, type metadata accessor for CRLBoardIdentifier);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      sub_10000BBC4(v12, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_6;
    }

    v24 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
    v25 = *&v12[v24];
    v26 = *&v12[v24 + 8];
    v27 = &v16[v24];
    if (v25 == *v27 && v26 == *(v27 + 1))
    {
      break;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10000BBC4(v12, type metadata accessor for CRLBoardIdentifier);
    if (v29)
    {
      goto LABEL_16;
    }

LABEL_6:
    v22 += v23;
    if (!--v21)
    {
      goto LABEL_14;
    }
  }

  sub_10000BBC4(v12, type metadata accessor for CRLBoardIdentifier);
LABEL_16:

  sub_100F74038(a1, v3);
  return sub_10000BBC4(v16, type metadata accessor for CRLBoardIdentifier);
}

void sub_100F63C24(uint64_t a1)
{
  v1 = Notification.userInfo.getter();
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v3 = sub_1000640CC(v29), (v4 & 1) != 0))
    {
      sub_100064288(*(v2 + 56) + 32 * v3, v30);
      sub_100064234(v29);

      type metadata accessor for CGRect(0);
      if (swift_dynamicCast())
      {
        sub_100F46A04(v28);
      }
    }

    else
    {

      sub_100064234(v29);
    }
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v29[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v29, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("keyboardWillShowOrDock(_:)", 26, 2);
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v15;
    v16 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 3720;
    v18 = v29[0];
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter("keyboardWillShowOrDock(_:)", 26, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v27 = String._bridgeToObjectiveC()();

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:3720 isFatal:0 format:v27 args:v24];
  }
}

uint64_t sub_100F640C4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100F6429C(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

unint64_t sub_100F642CC()
{
  result = qword_101A23BC8;
  if (!qword_101A23BC8)
  {
    result = swift_getWitnessTable("ў7", &type metadata for CRLiOSFolderGridViewController.RefreshSuspensionReason, v0, v1);
    atomic_store(result, &qword_101A23BC8);
  }

  return result;
}

void sub_100F64320(int64_t a1)
{
  v31 = type metadata accessor for UUID();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  v6 = *v1 + 56;
  v7 = -1 << *(*v1 + 32);
  v8 = (a1 + 1) & ~v7;
  if (((1 << v8) & *(v6 + 8 * (v8 >> 6))) != 0)
  {
    v9 = ~v7;

    v10 = _HashTable.previousHole(before:)();
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
    {
      v26 = (v3 + 8);
      v27 = (v10 + 1) & v9;
      v28 = v5;
      v29 = v6;
      do
      {
        v11 = *(*(v5 + 48) + 8 * v8);
        Hasher.init(_seed:)();
        v12 = *(v11 + 24);
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 32);

        v15 = v30;
        v14(ObjectType, v12);
        sub_10006852C(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v16 = v31;
        dispatch thunk of Hashable.hash(into:)();
        (*v26)(v15, v16);
        v17 = Hasher._finalize()();

        v18 = v17 & v9;
        if (a1 >= v27)
        {
          if (v18 < v27)
          {
            v5 = v28;
            v6 = v29;
          }

          else
          {
            v5 = v28;
            v6 = v29;
            if (a1 >= v18)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v5 = v28;
          v6 = v29;
          if (v18 >= v27 || a1 >= v18)
          {
LABEL_12:
            v19 = *(v5 + 48);
            v20 = (v19 + 8 * a1);
            v21 = (v19 + 8 * v8);
            if (a1 != v8 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              a1 = v8;
            }
          }
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v5 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v24;
    ++*(v5 + 36);
  }
}

void sub_100F64668(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_100F6482C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v13 = 56 * v6;
        v14 = *(v3 + 48) + 56 * v6;
        v15 = *v14;
        v16 = *(v14 + 48);
        v17 = *(v14 + 32);
        v28[1] = *(v14 + 16);
        v28[2] = v17;
        v29 = v16;
        v28[0] = v15;
        Hasher.init(_seed:)();
        sub_1000693DC(v28, &v26);
        sub_100068D24(v27);
        v18 = Hasher._finalize()();
        sub_1000698D0(v28);
        v19 = v18 & v7;
        if (v2 >= v9)
        {
          if (v19 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v19)
        {
LABEL_11:
          v20 = *(v3 + 48);
          v21 = v20 + 56 * v2;
          v22 = (v20 + v13);
          if (56 * v2 < v13 || v21 >= v22 + 56 || v2 != v6)
          {
            v10 = *v22;
            v11 = v22[1];
            v12 = v22[2];
            *(v21 + 48) = *(v22 + 6);
            *(v21 + 16) = v11;
            *(v21 + 32) = v12;
            *v21 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }
}

void sub_100F64A38(int64_t a1)
{
  v24 = type metadata accessor for CRLBoardIdentifier(0);
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = _HashTable.previousHole(before:)();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v25 = (v11 + 1) & v10;
      v12 = *(v3 + 72);
      v13 = v10;
      do
      {
        v14 = v12;
        v15 = v12 * v9;
        sub_1000652DC(*(v6 + 48) + v12 * v9, v5, type metadata accessor for CRLBoardIdentifier);
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_10006852C(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v16 = v13;
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for CRLBoardIdentifierStorage(0);
        String.hash(into:)();
        v17 = Hasher._finalize()();
        sub_10000BBC4(v5, type metadata accessor for CRLBoardIdentifier);
        v18 = v17 & v16;
        v13 = v16;
        if (a1 >= v25)
        {
          if (v18 < v25)
          {
            v12 = v14;
            goto LABEL_5;
          }

          v12 = v14;
          if (a1 < v18)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = v14;
          if (v18 < v25 && a1 < v18)
          {
            goto LABEL_5;
          }
        }

        v19 = v12 * a1;
        if (v12 * a1 < v15 || *(v6 + 48) + v12 * a1 >= (*(v6 + 48) + v15 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v9;
        if (v19 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v9;
        }

LABEL_5:
        v9 = (v9 + 1) & v13;
      }

      while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v20 = *(v6 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v22;
    ++*(v6 + 36);
  }
}

void sub_100F64D6C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = *(v3 + 48) + 32 * v6;
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        v15 = *(v11 + 24);
        Hasher.init(_seed:)();
        if (v14 == 1)
        {
          v16 = dbl_1014B9A00[*&v12];
        }

        else
        {
          v16 = v12;
        }

        if (v16 == 0.0)
        {
          v16 = 0.0;
        }

        Hasher._combine(_:)(*&v16);
        if (v14)
        {
          v13 = dbl_1014B9A00[*&v12];
        }

        if (v13 == 0.0)
        {
          v17 = 0.0;
        }

        else
        {
          v17 = v13;
        }

        Hasher._combine(_:)(*&v17);
        if (v15 == 0.0)
        {
          v18 = 0.0;
        }

        else
        {
          v18 = v15;
        }

        Hasher._combine(_:)(*&v18);
        v19 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v19 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v9)
        {
          goto LABEL_24;
        }

        if (v2 >= v19)
        {
LABEL_24:
          v20 = *(v3 + 48);
          v21 = (v20 + 32 * v2);
          v22 = (v20 + 32 * v6);
          if (v2 != v6 || v21 >= v22 + 2)
          {
            v10 = v22[1];
            *v21 = *v22;
            v21[1] = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }
}

void sub_100F64F94(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for CalculateExpression();
      sub_10006852C(&qword_1019F37A0, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
      do
      {
        v10 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_100F65180(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_100F65370(int64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin(v4);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for UUID();
  v53 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v7 - 8);
  v56 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v9 - 8);
  v59 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v60 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v60);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v51 - v18;
  v20 = *v2;
  v21 = *v2 + 56;
  v22 = -1 << *(*v2 + 32);
  v23 = (a1 + 1) & ~v22;
  if (((1 << v23) & *(v21 + 8 * (v23 >> 6))) != 0)
  {
    v64 = v17;
    v51 = v4;
    v24 = ~v22;

    v25 = _HashTable.previousHole(before:)();
    v58 = v21;
    if ((*(v21 + 8 * (v23 >> 6)) & (1 << v23)) != 0)
    {
      v62 = (v25 + 1) & v24;
      v63 = v24;
      v26 = *(v64 + 72);
      v54 = (v53 + 4);
      v55 = v15 + 8;
      ++v53;
      v27 = v58;
      v64 = v26;
      while (1)
      {
        v28 = v26 * v23;
        sub_1000652DC(*(v20 + 48) + v26 * v23, v19, type metadata accessor for CRLSELibraryViewModel.Item);
        Hasher.init(_seed:)();
        sub_1000652DC(v19, v15, type metadata accessor for CRLSELibraryViewModel.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 2)
          {
            v37 = sub_1005B981C(&unk_101A14AE0, &unk_1014B99F0);

            v38 = *(v37 + 64);
            v39 = v57;
            v40 = v13;
            v41 = v61;
            (*v54)(v57, v15, v61);
            sub_10006852C(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            dispatch thunk of Hashable.hash(into:)();
            v42 = v41;
            v13 = v40;
            v27 = v58;
            (*v53)(v39, v42);
            sub_10000CAAC(&v15[v38], &qword_101A0A320, &qword_10146D650);
            goto LABEL_24;
          }

          v30 = v56;
          sub_100065D50(v15, v56, type metadata accessor for CRLSELibraryViewModel.Board);
          sub_10006852C(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          dispatch thunk of Hashable.hash(into:)();
          type metadata accessor for CRLSEBoardIdentifierStorage(0);
          String.hash(into:)();
          v31 = type metadata accessor for CRLSELibraryViewModel.Board;
          v32 = v30;
        }

        else
        {
          if (!EnumCaseMultiPayload)
          {
            Hasher._combine(_:)(*v15);
            goto LABEL_24;
          }

          sub_100065D50(v15, v13, type metadata accessor for CRLSELibraryViewModel.Filter);
          v33 = v59;
          sub_1000652DC(v13, v59, type metadata accessor for CRLSELibraryViewModel.Filter);
          v34 = sub_1005B981C(&unk_101A14B10, &qword_10147D2D0);
          v35 = (*(*(v34 - 8) + 48))(v33, 5, v34);
          if (v35 > 2)
          {
            if (v35 == 3)
            {
              v36 = 2;
            }

            else if (v35 == 4)
            {
              v36 = 3;
            }

            else
            {
              v36 = 4;
            }

            goto LABEL_22;
          }

          if (v35)
          {
            v36 = v35 != 1;
LABEL_22:
            Hasher._combine(_:)(v36);
            v31 = type metadata accessor for CRLSELibraryViewModel.Filter;
            v32 = v13;
            goto LABEL_23;
          }

          v43 = v52;
          sub_100065D50(v59, v52, type metadata accessor for CRLSELibraryViewModel.Folder);
          Hasher._combine(_:)(5uLL);
          sub_10006852C(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          dispatch thunk of Hashable.hash(into:)();
          type metadata accessor for CRLFolderIdentifierStorage(0);
          String.hash(into:)();
          String.hash(into:)();
          sub_10000BBC4(v13, type metadata accessor for CRLSELibraryViewModel.Filter);
          v31 = type metadata accessor for CRLSELibraryViewModel.Folder;
          v32 = v43;
        }

LABEL_23:
        sub_10000BBC4(v32, v31);
LABEL_24:
        v44 = Hasher._finalize()();
        sub_10000BBC4(v19, type metadata accessor for CRLSELibraryViewModel.Item);
        v45 = v44 & v63;
        v46 = v63;
        if (a1 >= v62)
        {
          v26 = v64;
          if (v45 < v62)
          {
            goto LABEL_6;
          }

LABEL_28:
          if (a1 < v45)
          {
            goto LABEL_6;
          }

          goto LABEL_29;
        }

        v26 = v64;
        if (v45 < v62)
        {
          goto LABEL_28;
        }

LABEL_29:
        v47 = v26 * a1;
        if (v26 * a1 < v28 || *(v20 + 48) + v26 * a1 >= (*(v20 + 48) + v28 + v26))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v23;
          if (v47 == v28)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v26 = v64;
        a1 = v23;
LABEL_6:
        v23 = (v23 + 1) & v46;
        if (((*(v27 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {

          goto LABEL_36;
        }
      }
    }

    v27 = v58;
LABEL_36:
    *(v27 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v21 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v48 = *(v20 + 16);
  v49 = __OFSUB__(v48, 1);
  v50 = v48 - 1;
  if (v49)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v50;
    ++*(v20 + 36);
  }
}

void sub_100F65BD4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      while (1)
      {
        v10 = 16 * v6;
        v11 = *(v3 + 48) + 16 * v6;
        v12 = *v11;
        v13 = *(v11 + 8);
        Hasher.init(_seed:)();
        if (v13 <= 1)
        {
          break;
        }

        if (v13 == 2)
        {
          v14 = 2;
          goto LABEL_10;
        }

        if (v12)
        {
          if (v12 == 1)
          {
            v16 = 4;
          }

          else
          {
            v16 = 5;
          }
        }

        else
        {
          v16 = 3;
        }

        Hasher._combine(_:)(v16);
LABEL_17:
        v17 = Hasher._finalize()();
        sub_1007A98C8(v12, v13);
        v18 = v17 & v7;
        if (v2 >= v9)
        {
          if (v18 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v18 >= v9)
        {
          goto LABEL_22;
        }

        if (v2 >= v18)
        {
LABEL_22:
          v19 = *(v3 + 48);
          v20 = (v19 + 16 * v2);
          v21 = (v19 + v10);
          if (16 * v2 != v10 || (v2 = v6, v20 >= v21 + 1))
          {
            *v20 = *v21;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v14 = v13 != 0;
LABEL_10:
      Hasher._combine(_:)(v14);
      v15 = v12;
      NSObject.hash(into:)();
      goto LABEL_17;
    }

LABEL_25:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v3 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v24;
    ++*(v3 + 36);
  }
}

void sub_100F65E04(unint64_t a1)
{
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v33 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = &v32 - v7;
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = *v1;
    v13 = ~v10;

    v14 = a1;
    v15 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v16 = (v15 + 1) & v13;
      v17 = *(v33 + 72);
      v18 = v13;
      v8 = v12;
      v33 = v17;
      v34 = v9;
      while (1)
      {
        v19 = v17 * v11;
        v20 = v36;
        sub_1000652DC(*(v8 + 48) + v17 * v11, v36, type metadata accessor for CRLSpotlightManager.ChangeType);
        v21 = v8;
        Hasher.init(_seed:)();
        v22 = v37;
        sub_1000652DC(v20, v37, type metadata accessor for CRLSpotlightManager.ChangeType);
        v23 = swift_getEnumCaseMultiPayload() == 1;
        v24 = v22;
        v25 = v35;
        sub_100065D50(v24, v35, type metadata accessor for CRLBoardIdentifier);
        Hasher._combine(_:)(v23);
        type metadata accessor for UUID();
        sub_10006852C(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for CRLBoardIdentifierStorage(0);
        String.hash(into:)();
        sub_10000BBC4(v25, type metadata accessor for CRLBoardIdentifier);
        v26 = Hasher._finalize()();
        sub_10000BBC4(v20, type metadata accessor for CRLSpotlightManager.ChangeType);
        v27 = v26 & v18;
        if (v14 >= v16)
        {
          if (v27 < v16)
          {
            v8 = v21;
            v17 = v33;
            goto LABEL_5;
          }

          v8 = v21;
          v17 = v33;
          if (v14 < v27)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v8 = v21;
          v17 = v33;
          if (v27 < v16 && v14 < v27)
          {
            goto LABEL_5;
          }
        }

        v28 = v17 * v14;
        if (v17 * v14 < v19 || *(v8 + 48) + v17 * v14 >= (*(v8 + 48) + v19 + v17))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        v14 = v11;
        if (v28 != v19)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          v14 = v11;
        }

LABEL_5:
        v11 = (v11 + 1) & v18;
        v9 = v34;
        if (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          goto LABEL_21;
        }
      }
    }

    v8 = v12;
LABEL_21:
    *(v9 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v14) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v8 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v31;
    ++*(v8 + 36);
  }
}

void sub_100F66238(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_100F66404(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), const char *a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = _HashTable.previousHole(before:)();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        sub_10006852C(v40, v41, v42);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

void sub_100F66700(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

Swift::Int sub_100F668A0(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v6 / 2;
      }

      v11[0] = v9 + 4;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_100F669A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v55 = _s5BoardVMa(0);
  __chkstk_darwin(v55);
  v56 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = &v43 - v12;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v13);
  v52 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  __chkstk_darwin(v21);
  v23 = &v43 - v22;
  __chkstk_darwin(v24);
  v60 = &v43 - v26;
  v45 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v28 = *(v25 + 72);
    v29 = v56;
    if (a5)
    {
      v30 = v59;
    }

    else
    {
      v30 = v56;
    }

    if ((a5 & 1) == 0)
    {
      v29 = v59;
    }

    v53 = v29;
    v54 = v30;
    v31 = v27 + v28 * (a3 - 1);
    v50 = -v28;
    v51 = v27;
    v32 = a1 - a3;
    v44 = v28;
    v33 = v27 + v28 * a3;
    while (2)
    {
      v48 = v31;
      v49 = a3;
      v46 = v33;
      v47 = v32;
      while (1)
      {
        v58 = v32;
        v35 = v60;
        sub_1000652DC(v33, v60, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_1000652DC(v31, v23, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_1000652DC(v35, v20, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          break;
        }

        sub_100065D50(v20, v59, _s5BoardVMa);
        sub_1000652DC(v23, v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_10000BBC4(v59, _s5BoardVMa);
          v34 = v17;
          goto LABEL_10;
        }

        v36 = v23;
        v37 = v56;
        sub_100065D50(v17, v56, _s5BoardVMa);
        v57 = static Date.< infix(_:_:)();
        v38 = v37;
        v39 = v59;
        sub_10000BBC4(v38, _s5BoardVMa);
        sub_10000BBC4(v39, _s5BoardVMa);
        sub_10000BBC4(v23, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000BBC4(v60, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v40 = v58;
        if ((v57 & 1) == 0)
        {
          goto LABEL_11;
        }

        if (!v51)
        {
          __break(1u);
          return;
        }

        v41 = v52;
        sub_100065D50(v33, v52, type metadata accessor for CRLBoardLibraryViewModel.Item);
        swift_arrayInitWithTakeFrontToBack();
        sub_100065D50(v41, v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v31 += v50;
        v33 += v50;
        v42 = __CFADD__(v40, 1);
        v32 = v40 + 1;
        v23 = v36;
        if (v42)
        {
          goto LABEL_11;
        }
      }

      v34 = v20;
LABEL_10:
      sub_10000BBC4(v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v23, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v60, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_11:
      a3 = v49 + 1;
      v31 = v48 + v44;
      v32 = v47 - 1;
      v33 = v46 + v44;
      if (v49 + 1 == v45)
      {
        return;
      }

      continue;
    }
  }
}

void sub_100F66E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v36 = a4;
  v35 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v35);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *v4;
    v18 = *(v14 + 72);
    v19 = *v4 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
LABEL_4:
    v30 = v19;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    v22 = v19;
    while (1)
    {
      sub_1000652DC(v21, v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_1000652DC(v22, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v23 = v36(v16, v12);
      sub_10000BBC4(v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (v5)
      {
        break;
      }

      if (v23)
      {
        if (!v33)
        {
          __break(1u);
          return;
        }

        v24 = v34;
        sub_100065D50(v21, v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
        swift_arrayInitWithTakeFrontToBack();
        sub_100065D50(v24, v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v22 += v32;
        v21 += v32;
        if (!__CFADD__(v20++, 1))
        {
          continue;
        }
      }

      a3 = v31 + 1;
      v19 = v30 + v26;
      v20 = v29 - 1;
      v21 = v28 + v26;
      if (v31 + 1 != v27)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_100F670AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v96 = type metadata accessor for Calendar.Component();
  v8 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v78[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = type metadata accessor for Date();
  v10 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v78[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v92 = &v78[-v13];
  v91 = type metadata accessor for Calendar();
  __chkstk_darwin(v91);
  v106 = &v78[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v90 = enum case for Calendar.Component.day(_:);
    v89 = (v8 + 104);
    v88 = (v8 + 8);
    v87 = (v10 + 8);
    v86 = (v14 + 8);
    v17 = v16 + 56 * a3 - 56;
    v18 = a1 - a3;
    v107 = v16;
LABEL_7:
    v98 = v17;
    v99 = a3;
    v97 = v18;
    while (1)
    {
      v20 = v17 + 56;
      v19 = *(v17 + 56);
      v22 = *(v17 + 64);
      v21 = *(v17 + 72);
      v24 = *(v17 + 80);
      v23 = *(v17 + 88);
      v25 = *(v17 + 96);
      v26 = *(v17 + 104);
      v27 = *v17;
      v28 = *(v17 + 8);
      v29 = *(v17 + 16);
      v30 = *(v17 + 24);
      v31 = *(v17 + 48);
      v32 = v31 >> 6;
      v33 = *(v17 + 32);
      v34 = *(v17 + 40);
      if (v31 >> 6 <= 1)
      {
        break;
      }

      if (v32 != 2)
      {
        if (v26 < 0x40)
        {
          goto LABEL_6;
        }

        if (!(v29 | v28 | v27 | v30 | v33 | v34) && v31 == 192)
        {
          v56 = 0;
LABEL_49:
          sub_100076F8C(v56, 0, v29, v30, v33, v34, 0xC0u);
          v16 = v107;
          goto LABEL_69;
        }

        if (v26 > 0xBF)
        {
          v57 = 1;
          goto LABEL_40;
        }

        v59 = 0;
LABEL_45:
        v60 = v29 | v28 | v30 | v33 | v34;
        if (v31 == 192 && v27 == 1 && !v60)
        {
          v56 = 1;
          goto LABEL_49;
        }

        if (v59)
        {
          LOBYTE(v59) = 0;
          v58 = v21 | v22;
          goto LABEL_52;
        }

LABEL_66:
        if (v31 == 192 && v27 == 2 && !v60)
        {
          sub_100076F8C(2, 0, v29, v30, v33, v34, 0xC0u);
LABEL_5:
          v16 = v107;
LABEL_6:
          a3 = v99 + 1;
          v17 = v98 + 56;
          v18 = v97 - 1;
          if (v99 + 1 == v79)
          {
            return;
          }

          goto LABEL_7;
        }

        goto LABEL_69;
      }

      if ((v26 & 0xC0) != 0x80)
      {
        goto LABEL_35;
      }

      if ((v31 & 1) == 0)
      {
        if (v26)
        {
          goto LABEL_6;
        }

        v85 = *(v17 + 32);
        v109 = v29;
        v84 = v30;
        v100 = v34;
        v108 = v27;
        if (!v28)
        {
          v27 = 0;
        }

        v44 = 0xE000000000000000;
        v83 = v28;
        if (v28)
        {
          v45 = v28;
        }

        else
        {
          v45 = 0xE000000000000000;
        }

        if (v22)
        {
          v46 = v19;
        }

        else
        {
          v46 = 0;
        }

        if (v22)
        {
          v44 = v22;
        }

        v104 = v25;
        v105 = v23;
        v110 = v24;
        v102 = v19;
        v103 = v21;
        v82 = v45;
        v81 = v44;
        if (v27 == v46 && v45 == v44)
        {
          sub_100076F8C(v19, v22, v21, v24, v23, v25, v26);
          v73 = v108;
          v72 = v109;
          v74 = v83;
          v75 = v84;
          v76 = v85;
          v77 = v100;
          sub_100076F8C(v108, v83, v109, v84, v85, v100, v31);

          sub_1000771BC(v73, v74, v72, v75, v76, v77, v31);
          sub_1000771BC(v102, v22, v103, v110, v105, v104, v26);
          goto LABEL_5;
        }

        v101 = v22;
        v47 = v23;
        v48 = v19;
        v49 = v25;
        v50 = v21;
        v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v51 = v48;
        v52 = v101;
        sub_100076F8C(v51, v101, v50, v110, v47, v49, v26);
        v53 = v83;
        v54 = v84;
        v55 = v85;
        sub_100076F8C(v108, v83, v109, v84, v85, v100, v31);

        sub_1000771BC(v108, v53, v109, v54, v55, v100, v31);
        sub_1000771BC(v102, v52, v103, v110, v105, v104, v26);
        v16 = v107;
        if ((v80 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

LABEL_69:
      if (!v16)
      {
        __break(1u);
        return;
      }

      v64 = *(v17 + 104);
      v65 = *(v17 + 72);
      v66 = *(v17 + 88);
      v67 = *v17;
      v68 = *(v17 + 16);
      *v17 = *(v17 + 56);
      *(v17 + 16) = v65;
      v69 = *(v17 + 32);
      v70 = *(v17 + 48);
      *(v17 + 32) = v66;
      *(v17 + 48) = v64;
      v17 -= 56;
      *v20 = v67;
      *(v20 + 16) = v68;
      *(v20 + 32) = v69;
      *(v20 + 48) = v70;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_6;
      }
    }

    if (!v32)
    {
      goto LABEL_69;
    }

    if ((v26 & 0xC0) == 0x40)
    {
      v108 = *v17;
      v109 = v29;
      v101 = v22;
      v102 = v19;
      v110 = v24;
      v35 = v30;
      v104 = v25;
      v105 = v23;
      v36 = v33;
      v37 = v34;
      v103 = v21;
      sub_100076F8C(v19, v22, v21, v24, v23, v25, v26);
      sub_100076F8C(v108, v28, v109, v35, v36, v37, v31);
      static Calendar.current.getter();
      v38 = v92;
      Date.init(timeIntervalSinceReferenceDate:)();
      v39 = v93;
      Date.init(timeIntervalSinceReferenceDate:)();
      v41 = v95;
      v40 = v96;
      (*v89)(v95, v90, v96);
      v109 = Calendar.compare(_:to:toGranularity:)();
      (*v88)(v41, v40);
      v42 = *v87;
      v43 = v94;
      (*v87)(v39, v94);
      v42(v38, v43);
      (*v86)(v106, v91);
      sub_1000771BC(v102, v101, v103, v110, v105, v104, v26);
      v16 = v107;
      if (v109 != -1)
      {
        goto LABEL_6;
      }

      goto LABEL_69;
    }

LABEL_35:
    if (v26 < 0x40)
    {
      goto LABEL_6;
    }

    if (v26 < 0xC0)
    {
      goto LABEL_69;
    }

    v57 = 0;
LABEL_40:
    v58 = v21 | v22;
    if (!(v21 | v22 | v19 | v24 | v23 | v25) && v26 == 192)
    {
      goto LABEL_6;
    }

    v59 = 1;
    if (v57)
    {
      goto LABEL_45;
    }

LABEL_52:
    v61 = v58 | v24 | v23 | v25;
    if (v26 == 192 && v19 == 1 && !v61)
    {
      goto LABEL_6;
    }

    if (v19 == 2 && v61 == 0 && v26 == 192)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      goto LABEL_69;
    }

    v60 = v29 | v28 | v30 | v33 | v34;
    goto LABEL_66;
  }
}

void sub_100F678D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v86 = type metadata accessor for Calendar.Component();
  v8 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Date();
  v10 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v82 = &v69 - v13;
  v81 = type metadata accessor for Calendar();
  __chkstk_darwin(v81);
  v96 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v80 = enum case for Calendar.Component.day(_:);
    v79 = (v8 + 104);
    v78 = (v8 + 8);
    v77 = (v10 + 8);
    v76 = (v14 + 8);
    v17 = v16 + 56 * a3 - 56;
    v18 = a1 - a3;
    v91 = v16;
LABEL_8:
    v88 = v17;
    v89 = a3;
    v87 = v18;
    while (1)
    {
      v21 = v17 + 56;
      v20 = *(v17 + 56);
      v23 = *(v17 + 64);
      v22 = *(v17 + 72);
      v25 = *(v17 + 80);
      v24 = *(v17 + 88);
      v26 = *(v17 + 96);
      v27 = *(v17 + 104);
      v28 = *v17;
      v29 = *(v17 + 8);
      v30 = *(v17 + 16);
      v31 = *(v17 + 24);
      v33 = *(v17 + 32);
      v32 = *(v17 + 40);
      v34 = v27 >> 6;
      v35 = *(v17 + 48);
      if (v27 >> 6 > 1)
      {
        if (v34 != 2)
        {
          if (v35 < 0x40)
          {
            goto LABEL_7;
          }

          v53 = 1;
          if (!(v22 | v23 | v20 | v25 | v24 | v26) && v27 == 192)
          {
            goto LABEL_58;
          }

          if (v35 < 0xC0)
          {
            goto LABEL_42;
          }

LABEL_40:
          if (!(v30 | v29 | v28 | v31 | v33 | v32) && v35 == 192)
          {
            v19 = 0;
LABEL_5:
            sub_100076F8C(v19, 0, v30, *(v17 + 24), *(v17 + 32), v32, 0xC0u);
LABEL_6:
            v16 = v91;
LABEL_7:
            a3 = v89 + 1;
            v17 = v88 + 56;
            v18 = v87 - 1;
            if (v89 + 1 == v70)
            {
              return;
            }

            goto LABEL_8;
          }

          goto LABEL_42;
        }

        if ((v35 & 0xC0) == 0x80)
        {
          if ((v27 & 1) == 0)
          {
            if (v35)
            {
              goto LABEL_7;
            }

            v97 = *(v17 + 16);
            v74 = v31;
            v75 = v33;
            v94 = v26;
            v95 = v32;
            if (v23)
            {
              v43 = v20;
            }

            else
            {
              v43 = 0;
            }

            v44 = 0xE000000000000000;
            if (v23)
            {
              v45 = v23;
            }

            else
            {
              v45 = 0xE000000000000000;
            }

            v90 = v28;
            if (v29)
            {
              v46 = v28;
            }

            else
            {
              v46 = 0;
            }

            if (v29)
            {
              v44 = v29;
            }

            v98 = v25;
            v99 = v24;
            v92 = v20;
            v93 = v22;
            v73 = v45;
            v72 = v44;
            if (v43 == v46 && v45 == v44)
            {
              v63 = v23;
              sub_100076F8C(v20, v23, v22, v25, v24, v26, v27);
              v64 = v90;
              v65 = v97;
              v66 = v74;
              v67 = v75;
              v68 = v95;
              sub_100076F8C(v90, v29, v97, v74, v75, v95, v35);

              sub_1000771BC(v64, v29, v65, v66, v67, v68, v35);
              sub_1000771BC(v92, v63, v93, v98, v99, v94, v27);
              goto LABEL_6;
            }

            v100 = v23;
            v47 = v26;
            v48 = v22;
            v49 = v20;
            v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_100076F8C(v49, v100, v48, v98, v99, v47, v27);
            v50 = v74;
            v51 = v75;
            v52 = v95;
            sub_100076F8C(v90, v29, v97, v74, v75, v95, v35);

            sub_1000771BC(v90, v29, v97, v50, v51, v52, v35);
            sub_1000771BC(v92, v100, v93, v98, v99, v94, v27);
            v16 = v91;
            if ((v71 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          goto LABEL_58;
        }
      }

      else
      {
        if (!v34)
        {
          goto LABEL_58;
        }

        if ((v35 & 0xC0) == 0x40)
        {
          v36 = *(v17 + 56);
          v100 = *(v17 + 64);
          v97 = v30;
          v98 = v25;
          v99 = v24;
          v94 = v26;
          v95 = v32;
          v92 = v20;
          v93 = v22;
          sub_100076F8C(v36, v100, v22, v25, v24, v26, v27);
          sub_100076F8C(v28, v29, v97, v31, v33, v95, v35);
          static Calendar.current.getter();
          v37 = v82;
          Date.init(timeIntervalSinceReferenceDate:)();
          v38 = v83;
          Date.init(timeIntervalSinceReferenceDate:)();
          v40 = v85;
          v39 = v86;
          (*v79)(v85, v80, v86);
          v97 = Calendar.compare(_:to:toGranularity:)();
          (*v78)(v40, v39);
          v41 = *v77;
          v42 = v84;
          (*v77)(v38, v84);
          v41(v37, v42);
          (*v76)(v96, v81);
          sub_1000771BC(v92, v100, v93, v98, v99, v94, v27);
          v16 = v91;
          if (v97 != -1)
          {
            goto LABEL_7;
          }

          goto LABEL_58;
        }
      }

      if (v35 < 0x40)
      {
        goto LABEL_7;
      }

      v53 = 0;
      if (v35 >= 0xC0)
      {
        goto LABEL_40;
      }

LABEL_42:
      if (!v53 || v27 != 192 || v20 != 1 || v22 | v23 | v25 | v24 | v26)
      {
        if (v35 < 0xC0)
        {
          goto LABEL_57;
        }

        v54 = v30 | v29 | v31 | v33 | v32;
        if (v35 == 192 && v28 == 1 && !v54)
        {
          v19 = 1;
          goto LABEL_5;
        }

        if (v35 == 192 && v28 == 2 && !v54)
        {
          sub_100076F8C(2, 0, v30, *(v17 + 24), *(v17 + 32), v32, 0xC0u);
          v16 = v91;
        }

        else
        {
LABEL_57:
          if (v53 && v27 == 192 && v20 == 2 && !(v22 | v23 | v25 | v24 | v26))
          {
            goto LABEL_7;
          }
        }
      }

LABEL_58:
      if (!v16)
      {
        __break(1u);
        return;
      }

      v55 = *(v17 + 104);
      v56 = *(v17 + 72);
      v57 = *(v17 + 88);
      v58 = *v17;
      v59 = *(v17 + 16);
      *v17 = *(v17 + 56);
      *(v17 + 16) = v56;
      v60 = *(v17 + 32);
      v61 = *(v17 + 48);
      *(v17 + 32) = v57;
      *(v17 + 48) = v55;
      v17 -= 56;
      *v21 = v58;
      *(v21 + 16) = v59;
      *(v21 + 32) = v60;
      *(v21 + 48) = v61;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_7;
      }
    }
  }
}

void sub_100F680D8(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v170 = a5;
  v156 = a1;
  v185 = _s5BoardVMa(0);
  __chkstk_darwin(v185);
  v10 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v150 - v12;
  __chkstk_darwin(v14);
  v16 = &v150 - v15;
  __chkstk_darwin(v17);
  v19 = &v150 - v18;
  v187 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v171 = *(v187 - 8);
  __chkstk_darwin(v187);
  v163 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v178 = &v150 - v22;
  __chkstk_darwin(v23);
  v183 = &v150 - v24;
  __chkstk_darwin(v25);
  v184 = &v150 - v26;
  __chkstk_darwin(v27);
  v186 = &v150 - v28;
  __chkstk_darwin(v29);
  v188 = &v150 - v30;
  __chkstk_darwin(v31);
  v162 = &v150 - v32;
  __chkstk_darwin(v33);
  v168 = &v150 - v34;
  __chkstk_darwin(v35);
  v174 = &v150 - v36;
  __chkstk_darwin(v37);
  v173 = &v150 - v38;
  __chkstk_darwin(v39);
  v154 = &v150 - v40;
  __chkstk_darwin(v41);
  v172 = a3;
  v43 = *(a3 + 8);
  if (v43 < 1)
  {
    v49 = _swiftEmptyArrayStorage;
LABEL_121:
    a3 = *v156;
    if (!*v156)
    {
      goto LABEL_163;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_123;
  }

  v153 = &v150 - v42;
  v44 = 0;
  if (v170)
  {
    v45 = v19;
  }

  else
  {
    v45 = v16;
  }

  v159 = v45;
  v152 = v16;
  v161 = v19;
  if (v170)
  {
    v46 = v16;
  }

  else
  {
    v46 = v19;
  }

  v158 = v46;
  if (v170)
  {
    v47 = v13;
  }

  else
  {
    v47 = v10;
  }

  v182 = v13;
  if (v170)
  {
    v48 = v10;
  }

  else
  {
    v48 = v13;
  }

  v179 = v48;
  v180 = v47;
  v49 = _swiftEmptyArrayStorage;
  v155 = a4;
  v181 = v10;
  v50 = v174;
  while (1)
  {
    v169 = v49;
    if (v44 + 1 >= v43)
    {
      v64 = v44 + 1;
      goto LABEL_43;
    }

    v175 = v43;
    v51 = *v172;
    v52 = *(v171 + 72);
    v53 = v44;
    v54 = *v172 + v52 * (v44 + 1);
    v177 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v55 = v153;
    sub_1000652DC(v54, v153, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v167 = v51;
    v157 = v53;
    v56 = v51 + v52 * v53;
    v57 = v154;
    sub_1000652DC(v56, v154, v177);
    LODWORD(v176) = sub_10075A97C(v55, v57, v170 & 1);
    if (v6)
    {
      sub_10000BBC4(v57, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v55, type metadata accessor for CRLBoardLibraryViewModel.Item);
      goto LABEL_135;
    }

    sub_10000BBC4(v57, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000BBC4(v55, type metadata accessor for CRLBoardLibraryViewModel.Item);
    a3 = v157 + 2;
    v58 = v167 + v52 * (v157 + 2);
    v59 = v152;
    v60 = v52;
    v177 = v52;
    v61 = v176;
    while (1)
    {
      v64 = v175;
      if (v175 == a3)
      {
        break;
      }

      v65 = v173;
      sub_1000652DC(v58, v173, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_1000652DC(v54, v50, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v66 = v50;
      v67 = v168;
      sub_1000652DC(v65, v168, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v68 = v67;
        v69 = v161;
        sub_100065D50(v68, v161, _s5BoardVMa);
        v70 = v66;
        v71 = v162;
        sub_1000652DC(v70, v162, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_100065D50(v71, v59, _s5BoardVMa);
          v63 = static Date.< infix(_:_:)();
          sub_10000BBC4(v59, _s5BoardVMa);
          sub_10000BBC4(v69, _s5BoardVMa);
          goto LABEL_21;
        }

        sub_10000BBC4(v69, _s5BoardVMa);
        v62 = v71;
      }

      else
      {
        v62 = v67;
      }

      sub_10000BBC4(v62, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v63 = 0;
LABEL_21:
      v50 = v174;
      sub_10000BBC4(v174, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v173, type metadata accessor for CRLBoardLibraryViewModel.Item);
      ++a3;
      v60 = v177;
      v58 += v177;
      v54 += v177;
      v49 = v169;
      if ((v61 & 1) != (v63 & 1))
      {
        v64 = a3 - 1;
        break;
      }
    }

    a4 = v155;
    v44 = v157;
    if ((v176 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (v64 < v157)
    {
      goto LABEL_156;
    }

    if (v157 < v64)
    {
      v72 = v64;
      a3 = v60 * (v64 - 1);
      v73 = v64 * v60;
      v175 = v64;
      v74 = v157;
      v75 = v157 * v60;
      do
      {
        if (v74 != --v72)
        {
          v76 = *v172;
          if (!*v172)
          {
            goto LABEL_160;
          }

          sub_100065D50(v76 + v75, v163, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (v75 < a3 || v76 + v75 >= v76 + v73)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v75 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_100065D50(v163, v76 + a3, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v60 = v177;
        }

        ++v74;
        a3 -= v60;
        v73 -= v60;
        v75 += v60;
      }

      while (v74 < v72);
      a4 = v155;
      v49 = v169;
      v50 = v174;
      v64 = v175;
      v44 = v157;
    }

LABEL_43:
    v77 = v172[1];
    if (v64 >= v77)
    {
LABEL_52:
      a3 = v64;
      if (v64 < v44)
      {
        goto LABEL_152;
      }

      goto LABEL_71;
    }

    v78 = v64;
    v114 = __OFSUB__(v64, v44);
    v79 = v64 - v44;
    if (v114)
    {
      goto LABEL_153;
    }

    if (v79 >= a4)
    {
      a3 = v78;
      if (v78 < v44)
      {
        goto LABEL_152;
      }

      goto LABEL_71;
    }

    if (__OFADD__(v44, a4))
    {
      goto LABEL_154;
    }

    if (v44 + a4 >= v77)
    {
      a3 = v172[1];
    }

    else
    {
      a3 = v44 + a4;
    }

    v80 = v184;
    if (a3 < v44)
    {
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      v49 = sub_10113DE48(v49);
LABEL_123:
      v189 = v49;
      v144 = *(v49 + 16);
      if (v144 >= 2)
      {
        v145 = v170;
        while (*v172)
        {
          v146 = *(v49 + 16 * v144);
          v147 = v49;
          v148 = *(v49 + 16 * (v144 - 1) + 32);
          v49 = *(v49 + 16 * (v144 - 1) + 40);
          sub_100F6BA5C(*v172 + *(v171 + 72) * v146, *v172 + *(v171 + 72) * v148, *v172 + *(v171 + 72) * v49, a3, v145 & 1);
          if (v6)
          {
            goto LABEL_135;
          }

          if (v49 < v146)
          {
            goto LABEL_150;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v147 = sub_10113DE48(v147);
          }

          if (v144 - 2 >= *(v147 + 2))
          {
            goto LABEL_151;
          }

          v149 = &v147[16 * v144];
          *v149 = v146;
          *(v149 + 1) = v49;
          v189 = v147;
          sub_10113DDBC(v144 - 1);
          v49 = v189;
          v144 = *(v189 + 16);
          if (v144 <= 1)
          {
            goto LABEL_135;
          }
        }

        goto LABEL_161;
      }

LABEL_135:

      return;
    }

    v64 = v78;
    if (v78 == a3)
    {
      goto LABEL_52;
    }

    v151 = v6;
    v81 = *v172;
    v82 = *(v171 + 72);
    v83 = *v172 + v82 * (v64 - 1);
    v176 = -v82;
    v157 = v44;
    v84 = v44 - v64;
    v160 = v82;
    v177 = v81;
    v85 = v81 + v64 * v82;
    v86 = v182;
    v164 = a3;
LABEL_60:
    v175 = v64;
    v165 = v85;
    v166 = v84;
    v167 = v83;
    v88 = v83;
LABEL_61:
    v89 = v188;
    sub_1000652DC(v85, v188, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v90 = v186;
    sub_1000652DC(v88, v186, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_1000652DC(v89, v80, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      break;
    }

    v87 = v80;
LABEL_58:
    sub_10000BBC4(v87, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000BBC4(v186, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000BBC4(v188, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_59:
    v64 = v175 + 1;
    v83 = v167 + v160;
    v84 = v166 - 1;
    v85 = v165 + v160;
    a3 = v164;
    if (v175 + 1 != v164)
    {
      goto LABEL_60;
    }

    v6 = v151;
    v49 = v169;
    v50 = v174;
    v44 = v157;
    if (v164 < v157)
    {
      goto LABEL_152;
    }

LABEL_71:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_100B355CC(0, *(v49 + 16) + 1, 1, v49);
    }

    a3 = *(v49 + 16);
    v98 = *(v49 + 24);
    v99 = a3 + 1;
    if (a3 >= v98 >> 1)
    {
      v49 = sub_100B355CC((v98 > 1), a3 + 1, 1, v49);
    }

    *(v49 + 16) = v99;
    v100 = v49 + 16 * a3;
    v101 = v164;
    *(v100 + 32) = v44;
    *(v100 + 40) = v101;
    v102 = *v156;
    if (!*v156)
    {
      goto LABEL_162;
    }

    if (a3)
    {
      while (1)
      {
        v103 = v99 - 1;
        if (v99 >= 4)
        {
          break;
        }

        if (v99 == 3)
        {
          v104 = *(v49 + 32);
          v105 = *(v49 + 40);
          v114 = __OFSUB__(v105, v104);
          v106 = v105 - v104;
          v107 = v114;
LABEL_90:
          if (v107)
          {
            goto LABEL_141;
          }

          v120 = (v49 + 16 * v99);
          v122 = *v120;
          v121 = v120[1];
          v123 = __OFSUB__(v121, v122);
          v124 = v121 - v122;
          v125 = v123;
          if (v123)
          {
            goto LABEL_144;
          }

          v126 = (v49 + 32 + 16 * v103);
          v128 = *v126;
          v127 = v126[1];
          v114 = __OFSUB__(v127, v128);
          v129 = v127 - v128;
          if (v114)
          {
            goto LABEL_147;
          }

          if (__OFADD__(v124, v129))
          {
            goto LABEL_148;
          }

          if (v124 + v129 >= v106)
          {
            if (v106 < v129)
            {
              v103 = v99 - 2;
            }

            goto LABEL_111;
          }

          goto LABEL_104;
        }

        v130 = (v49 + 16 * v99);
        v132 = *v130;
        v131 = v130[1];
        v114 = __OFSUB__(v131, v132);
        v124 = v131 - v132;
        v125 = v114;
LABEL_104:
        if (v125)
        {
          goto LABEL_143;
        }

        v133 = v49 + 16 * v103;
        v135 = *(v133 + 32);
        v134 = *(v133 + 40);
        v114 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v114)
        {
          goto LABEL_146;
        }

        if (v136 < v124)
        {
          goto LABEL_15;
        }

LABEL_111:
        a3 = v103 - 1;
        if (v103 - 1 >= v99)
        {
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
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
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        if (!*v172)
        {
          goto LABEL_159;
        }

        v141 = *(v49 + 32 + 16 * a3);
        v142 = *(v49 + 32 + 16 * v103 + 8);
        sub_100F6BA5C(*v172 + *(v171 + 72) * v141, *v172 + *(v171 + 72) * *(v49 + 32 + 16 * v103), *v172 + *(v171 + 72) * v142, v102, v170 & 1);
        if (v6)
        {
          goto LABEL_135;
        }

        if (v142 < v141)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_10113DE48(v49);
        }

        if (a3 >= *(v49 + 16))
        {
          goto LABEL_138;
        }

        v143 = v49 + 16 * a3;
        *(v143 + 32) = v141;
        *(v143 + 40) = v142;
        v189 = v49;
        sub_10113DDBC(v103);
        v49 = v189;
        v99 = *(v189 + 16);
        v50 = v174;
        if (v99 <= 1)
        {
          goto LABEL_15;
        }
      }

      v108 = v49 + 32 + 16 * v99;
      v109 = *(v108 - 64);
      v110 = *(v108 - 56);
      v114 = __OFSUB__(v110, v109);
      v111 = v110 - v109;
      if (v114)
      {
        goto LABEL_139;
      }

      v113 = *(v108 - 48);
      v112 = *(v108 - 40);
      v114 = __OFSUB__(v112, v113);
      v106 = v112 - v113;
      v107 = v114;
      if (v114)
      {
        goto LABEL_140;
      }

      v115 = (v49 + 16 * v99);
      v117 = *v115;
      v116 = v115[1];
      v114 = __OFSUB__(v116, v117);
      v118 = v116 - v117;
      if (v114)
      {
        goto LABEL_142;
      }

      v114 = __OFADD__(v106, v118);
      v119 = v106 + v118;
      if (v114)
      {
        goto LABEL_145;
      }

      if (v119 >= v111)
      {
        v137 = (v49 + 32 + 16 * v103);
        v139 = *v137;
        v138 = v137[1];
        v114 = __OFSUB__(v138, v139);
        v140 = v138 - v139;
        if (v114)
        {
          goto LABEL_149;
        }

        if (v106 < v140)
        {
          v103 = v99 - 2;
        }

        goto LABEL_111;
      }

      goto LABEL_90;
    }

LABEL_15:
    v43 = v172[1];
    v44 = v164;
    a4 = v155;
    if (v164 >= v43)
    {
      goto LABEL_121;
    }
  }

  sub_100065D50(v80, v86, _s5BoardVMa);
  v91 = v183;
  sub_1000652DC(v90, v183, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10000BBC4(v86, _s5BoardVMa);
    v87 = v91;
    v80 = v184;
    goto LABEL_58;
  }

  v92 = v181;
  sub_100065D50(v91, v181, _s5BoardVMa);
  v93 = static Date.< infix(_:_:)();
  v94 = v92;
  v86 = v182;
  sub_10000BBC4(v94, _s5BoardVMa);
  sub_10000BBC4(v86, _s5BoardVMa);
  sub_10000BBC4(v90, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10000BBC4(v188, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if ((v93 & 1) == 0)
  {
    v80 = v184;
    goto LABEL_59;
  }

  if (v177)
  {
    v95 = v178;
    sub_100065D50(v85, v178, type metadata accessor for CRLBoardLibraryViewModel.Item);
    swift_arrayInitWithTakeFrontToBack();
    sub_100065D50(v95, v88, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v88 += v176;
    v85 += v176;
    v96 = __CFADD__(v84++, 1);
    v80 = v184;
    if (v96)
    {
      goto LABEL_59;
    }

    goto LABEL_61;
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
}

void sub_100F69024(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v203 = a1;
  v225 = type metadata accessor for Calendar.Component();
  v8 = *(v225 - 8);
  __chkstk_darwin(v225);
  v224 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for Date();
  v10 = *(v223 - 8);
  __chkstk_darwin(v223);
  v222 = &v202 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v221 = &v202 - v13;
  v220 = type metadata accessor for Calendar();
  __chkstk_darwin(v220);
  v237 = &v202 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3[1];
  v207 = a3;
  if (v16 < 1)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_211:
    v244 = *v203;
    if (v244)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_245;
      }

      goto LABEL_213;
    }

LABEL_251:
    __break(1u);
    return;
  }

  v202 = a4;
  v17 = 0;
  v219 = enum case for Calendar.Component.day(_:);
  v218 = (v8 + 104);
  v217 = (v8 + 8);
  v216 = (v10 + 8);
  v215 = (v14 + 8);
  v18 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v17;
    v20 = v17 + 1;
    v206 = v18;
    v204 = v17;
    if (v17 + 1 >= v16)
    {
      goto LABEL_78;
    }

    v21 = *a3;
    v22 = *a3 + 56 * v20;
    v24 = *(v22 + 16);
    v23 = *(v22 + 32);
    v25 = *(v22 + 48);
    v242[0] = *v22;
    v243 = v25;
    v242[1] = v24;
    v242[2] = v23;
    v26 = v21 + 56 * v17;
    v28 = *(v26 + 16);
    v27 = *(v26 + 32);
    v29 = *v26;
    v241 = *(v26 + 48);
    v240[1] = v28;
    v240[2] = v27;
    v240[0] = v29;
    v244 = v16;
    sub_1000693DC(v242, v239);
    sub_1000693DC(v240, v239);
    LODWORD(v238) = sub_100D27DE4(v240, v242);
    sub_1000698D0(v240);
    sub_1000698D0(v242);
    v30 = v244;
    v20 = v19 + 2;
    if (v19 + 2 < v244)
    {
      break;
    }

    if (v238)
    {
LABEL_66:
      if (v20 < v19)
      {
        goto LABEL_244;
      }

      goto LABEL_67;
    }

LABEL_78:
    v82 = a3[1];
    if (v20 >= v82)
    {
      goto LABEL_158;
    }

    if (__OFSUB__(v20, v19))
    {
      goto LABEL_241;
    }

    if (v20 - v19 >= v202)
    {
      goto LABEL_158;
    }

    v83 = v19 + v202;
    if (__OFADD__(v19, v202))
    {
      goto LABEL_242;
    }

    if (v83 >= v82)
    {
      v83 = a3[1];
    }

    if (v83 < v19)
    {
LABEL_243:
      __break(1u);
      goto LABEL_244;
    }

    if (v20 == v83)
    {
      goto LABEL_158;
    }

    v226 = v5;
    v84 = *a3;
    v85 = *a3 + 56 * v20 - 56;
    v86 = v19 - v20;
    v236 = v84;
    v205 = v83;
    while (2)
    {
      v229 = v20;
      v213 = v86;
      v214 = v85;
      while (1)
      {
        v88 = v85 + 56;
        v87 = *(v85 + 56);
        v90 = *(v85 + 64);
        v89 = *(v85 + 72);
        v92 = *(v85 + 80);
        v91 = *(v85 + 88);
        v93 = *(v85 + 96);
        v94 = *(v85 + 104);
        v95 = *v85;
        v96 = *(v85 + 8);
        v97 = *(v85 + 16);
        v98 = *(v85 + 24);
        v99 = *(v85 + 48);
        v100 = v99 >> 6;
        v101 = *(v85 + 32);
        v102 = *(v85 + 40);
        if (v99 >> 6 <= 1)
        {
          if (!v100)
          {
            goto LABEL_152;
          }

          if ((v94 & 0xC0) == 0x40)
          {
            v238 = *v85;
            v230 = v90;
            v231 = v97;
            v235 = v92;
            v103 = v98;
            v244 = v91;
            v104 = v101;
            v234 = v93;
            v105 = v102;
            v232 = v87;
            v233 = v89;
            sub_100076F8C(v87, v90, v89, v92, v91, v93, v94);
            sub_100076F8C(v238, v96, v231, v103, v104, v105, v99);
            static Calendar.current.getter();
            v106 = v221;
            Date.init(timeIntervalSinceReferenceDate:)();
            v107 = v222;
            Date.init(timeIntervalSinceReferenceDate:)();
            v108 = v224;
            v109 = v225;
            (*v218)(v224, v219, v225);
            v238 = Calendar.compare(_:to:toGranularity:)();
            (*v217)(v108, v109);
            v110 = *v216;
            v111 = v223;
            (*v216)(v107, v223);
            v110(v106, v111);
            (*v215)(v237, v220);
            sub_1000771BC(v232, v230, v233, v235, v244, v234, v94);
            v84 = v236;
            if (v238 != -1)
            {
              goto LABEL_89;
            }

            goto LABEL_152;
          }

LABEL_118:
          if (v94 < 0x40)
          {
            goto LABEL_89;
          }

          if (v94 < 0xC0)
          {
            goto LABEL_152;
          }

          v125 = 0;
          goto LABEL_123;
        }

        if (v100 != 2)
        {
          break;
        }

        if ((v94 & 0xC0) != 0x80)
        {
          goto LABEL_118;
        }

        if ((v99 & 1) == 0)
        {
          if (v94)
          {
            goto LABEL_89;
          }

          v227 = *(v85 + 32);
          v231 = v97;
          v212 = v98;
          v228 = v102;
          v238 = v95;
          if (!v96)
          {
            v95 = 0;
          }

          v112 = 0xE000000000000000;
          v211 = v96;
          if (v96)
          {
            v113 = v96;
          }

          else
          {
            v113 = 0xE000000000000000;
          }

          if (v90)
          {
            v114 = v87;
          }

          else
          {
            v114 = 0;
          }

          if (v90)
          {
            v112 = v90;
          }

          v244 = v91;
          v235 = v92;
          v234 = v93;
          v233 = v89;
          v232 = v87;
          v210 = v113;
          v209 = v112;
          if (v95 == v114 && v113 == v112)
          {
            sub_100076F8C(v87, v90, v89, v92, v91, v93, v94);
            v140 = v238;
            v141 = v211;
            v142 = v231;
            v143 = v212;
            v144 = v227;
            v145 = v228;
            sub_100076F8C(v238, v211, v231, v212, v227, v228, v99);

            sub_1000771BC(v140, v141, v142, v143, v144, v145, v99);
            sub_1000771BC(v232, v90, v233, v235, v244, v234, v94);
            goto LABEL_88;
          }

          v230 = v90;
          v115 = v92;
          v116 = v87;
          v117 = v93;
          v118 = v89;
          v208 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v119 = v116;
          v120 = v230;
          sub_100076F8C(v119, v230, v118, v115, v244, v117, v94);
          v121 = v211;
          v122 = v231;
          v123 = v212;
          sub_100076F8C(v238, v211, v231, v212, v227, v228, v99);

          sub_1000771BC(v238, v121, v122, v123, v227, v228, v99);
          sub_1000771BC(v232, v120, v233, v235, v244, v234, v94);
          v84 = v236;
          if ((v208 & 1) == 0)
          {
            goto LABEL_89;
          }
        }

LABEL_152:
        if (!v84)
        {
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
          goto LABEL_250;
        }

        v132 = *(v85 + 104);
        v133 = *(v85 + 72);
        v134 = *(v85 + 88);
        v135 = *v85;
        v136 = *(v85 + 16);
        *v85 = *(v85 + 56);
        *(v85 + 16) = v133;
        v137 = *(v85 + 32);
        v138 = *(v85 + 48);
        *(v85 + 32) = v134;
        *(v85 + 48) = v132;
        v85 -= 56;
        *v88 = v135;
        *(v88 + 16) = v136;
        *(v88 + 32) = v137;
        *(v88 + 48) = v138;
        if (__CFADD__(v86++, 1))
        {
          goto LABEL_89;
        }
      }

      if (v94 < 0x40)
      {
        goto LABEL_89;
      }

      if (!(v97 | v96 | v95 | v98 | v101 | v102) && v99 == 192)
      {
        v124 = 0;
LABEL_132:
        sub_100076F8C(v124, 0, v97, v98, v101, v102, 0xC0u);
        v84 = v236;
        goto LABEL_152;
      }

      if (v94 <= 0xBF)
      {
        v127 = 0;
        goto LABEL_128;
      }

      v125 = 1;
LABEL_123:
      v126 = v89 | v90;
      if (!(v89 | v90 | v87 | v92 | v91 | v93) && v94 == 192)
      {
        goto LABEL_89;
      }

      v127 = 1;
      if (!v125)
      {
        goto LABEL_135;
      }

LABEL_128:
      v128 = v97 | v96 | v98 | v101 | v102;
      if (v99 == 192 && v95 == 1 && !v128)
      {
        v124 = 1;
        goto LABEL_132;
      }

      if (!v127)
      {
        goto LABEL_149;
      }

      LOBYTE(v127) = 0;
      v126 = v89 | v90;
LABEL_135:
      v129 = v126 | v92 | v91 | v93;
      if (v94 == 192 && v87 == 1 && !v129)
      {
        goto LABEL_89;
      }

      if (v87 == 2 && v129 == 0 && v94 == 192)
      {
        LOBYTE(v127) = 1;
      }

      if (v127)
      {
        goto LABEL_152;
      }

      v128 = v97 | v96 | v98 | v101 | v102;
LABEL_149:
      if (v99 != 192 || v95 != 2 || v128)
      {
        goto LABEL_152;
      }

      sub_100076F8C(2, 0, v97, v98, v101, v102, 0xC0u);
LABEL_88:
      v84 = v236;
LABEL_89:
      v20 = v229 + 1;
      v85 = v214 + 56;
      v86 = v213 - 1;
      if (v229 + 1 != v205)
      {
        continue;
      }

      break;
    }

    v20 = v205;
    v5 = v226;
    a3 = v207;
    v18 = v206;
    v19 = v204;
LABEL_158:
    if (v20 < v19)
    {
      goto LABEL_240;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_100B355CC(0, *(v18 + 16) + 1, 1, v18);
    }

    v147 = *(v18 + 16);
    v146 = *(v18 + 24);
    v148 = v147 + 1;
    if (v147 >= v146 >> 1)
    {
      v18 = sub_100B355CC((v146 > 1), v147 + 1, 1, v18);
    }

    *(v18 + 16) = v148;
    v149 = v18 + 32;
    v150 = (v18 + 32 + 16 * v147);
    *v150 = v204;
    v150[1] = v20;
    v244 = *v203;
    if (!v244)
    {
LABEL_250:
      __break(1u);
      goto LABEL_251;
    }

    v229 = v20;
    if (v147)
    {
      while (2)
      {
        v151 = v148 - 1;
        if (v148 >= 4)
        {
          v156 = v149 + 16 * v148;
          v157 = *(v156 - 64);
          v158 = *(v156 - 56);
          v162 = __OFSUB__(v158, v157);
          v159 = v158 - v157;
          if (v162)
          {
            goto LABEL_225;
          }

          v161 = *(v156 - 48);
          v160 = *(v156 - 40);
          v162 = __OFSUB__(v160, v161);
          v154 = v160 - v161;
          v155 = v162;
          if (v162)
          {
            goto LABEL_226;
          }

          v163 = (v18 + 16 * v148);
          v165 = *v163;
          v164 = v163[1];
          v162 = __OFSUB__(v164, v165);
          v166 = v164 - v165;
          if (v162)
          {
            goto LABEL_228;
          }

          v162 = __OFADD__(v154, v166);
          v167 = v154 + v166;
          if (v162)
          {
            goto LABEL_230;
          }

          if (v167 >= v159)
          {
            v185 = (v149 + 16 * v151);
            v187 = *v185;
            v186 = v185[1];
            v162 = __OFSUB__(v186, v187);
            v188 = v186 - v187;
            if (v162)
            {
              goto LABEL_236;
            }

            if (v154 < v188)
            {
              v151 = v148 - 2;
            }
          }

          else
          {
LABEL_178:
            if (v155)
            {
              goto LABEL_227;
            }

            v168 = (v18 + 16 * v148);
            v170 = *v168;
            v169 = v168[1];
            v171 = __OFSUB__(v169, v170);
            v172 = v169 - v170;
            v173 = v171;
            if (v171)
            {
              goto LABEL_229;
            }

            v174 = (v149 + 16 * v151);
            v176 = *v174;
            v175 = v174[1];
            v162 = __OFSUB__(v175, v176);
            v177 = v175 - v176;
            if (v162)
            {
              goto LABEL_232;
            }

            if (__OFADD__(v172, v177))
            {
              goto LABEL_234;
            }

            if (v172 + v177 < v154)
            {
              goto LABEL_193;
            }

            if (v154 < v177)
            {
              v151 = v148 - 2;
            }
          }
        }

        else
        {
          if (v148 == 3)
          {
            v152 = *(v18 + 32);
            v153 = *(v18 + 40);
            v162 = __OFSUB__(v153, v152);
            v154 = v153 - v152;
            v155 = v162;
            goto LABEL_178;
          }

          if (v148 < 2)
          {
            goto LABEL_235;
          }

          v178 = (v18 + 16 * v148);
          v180 = *v178;
          v179 = v178[1];
          v162 = __OFSUB__(v179, v180);
          v172 = v179 - v180;
          v173 = v162;
LABEL_193:
          if (v173)
          {
            goto LABEL_231;
          }

          v181 = (v149 + 16 * v151);
          v183 = *v181;
          v182 = v181[1];
          v162 = __OFSUB__(v182, v183);
          v184 = v182 - v183;
          if (v162)
          {
            goto LABEL_233;
          }

          if (v184 < v172)
          {
            break;
          }
        }

        if (v151 - 1 >= v148)
        {
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        v189 = *a3;
        if (!*a3)
        {
          goto LABEL_247;
        }

        v190 = v18;
        v191 = a3;
        v192 = v149 + 16 * (v151 - 1);
        a3 = *v192;
        v193 = (v149 + 16 * v151);
        v18 = v193[1];
        sub_100F6C3E8((v189 + 56 * *v192), (v189 + 56 * *v193), v189 + 56 * v18, v244);
        if (v5)
        {
          goto LABEL_220;
        }

        if (v18 < a3)
        {
          goto LABEL_222;
        }

        if (v151 > *(v190 + 16))
        {
          goto LABEL_223;
        }

        *v192 = a3;
        *(v192 + 8) = v18;
        a3 = *(v190 + 16);
        if (v151 >= a3)
        {
          goto LABEL_224;
        }

        v18 = v190;
        v148 = a3 - 1;
        memmove((v149 + 16 * v151), v193 + 2, 16 * (a3 - v151 - 1));
        *(v190 + 16) = a3 - 1;
        v194 = a3 > 2;
        a3 = v191;
        if (!v194)
        {
          break;
        }

        continue;
      }
    }

    v16 = a3[1];
    v17 = v229;
    if (v229 >= v16)
    {
      goto LABEL_211;
    }
  }

  v31 = (v21 + 56 * v19 + 80);
  v32 = v238;
  while (1)
  {
    v229 = v20;
    v226 = v5;
    v34 = v31;
    v35 = v31[4];
    v36 = v31[5];
    v37 = v31[6];
    v39 = v31[7];
    v31 += 7;
    v38 = v39;
    v41 = v34[8];
    v40 = v34[9];
    v42 = *(v34 + 80);
    v44 = *(v34 - 3);
    v43 = *(v34 - 2);
    v46 = *(v34 - 1);
    v45 = *v34;
    v47 = v34[1];
    v48 = v34[2];
    v49 = *(v34 + 24);
    v50 = v49 >> 6;
    if (v49 >> 6 > 1)
    {
      if (v50 != 2)
      {
        if (v42 < 0x40)
        {
          goto LABEL_61;
        }

        v64 = 1;
        if (!(v46 | v43 | v44 | v45 | v47 | v48) && v49 == 192)
        {
          v33 = 0;
LABEL_8:
          sub_100076F8C(v33, 0, v46, v45, v47, v48, 0xC0u);
          v30 = v244;
          v32 = v238;
LABEL_9:
          v5 = v226;
          a3 = v207;
          v18 = v206;
          v20 = v229;
          if ((v32 & 1) == 0)
          {
            v19 = v204;
            goto LABEL_78;
          }

          goto LABEL_10;
        }

        if (v42 >= 0xC0)
        {
          goto LABEL_42;
        }

        goto LABEL_44;
      }

      if ((v42 & 0xC0) == 0x80)
      {
        if (v49)
        {
          goto LABEL_9;
        }

        if ((v42 & 1) == 0)
        {
          v230 = v47;
          v228 = v48;
          if (v43)
          {
            v60 = v44;
          }

          else
          {
            v60 = 0;
          }

          v61 = 0xE000000000000000;
          if (v43)
          {
            v62 = v43;
          }

          else
          {
            v62 = 0xE000000000000000;
          }

          if (v36)
          {
            v63 = v35;
          }

          else
          {
            v63 = 0;
          }

          if (v36)
          {
            v61 = v36;
          }

          v236 = v35;
          v235 = v40;
          v234 = v37;
          v233 = v38;
          v232 = v41;
          v214 = v62;
          v213 = v61;
          if (v60 == v63 && v62 == v61)
          {
            LODWORD(v227) = 0;
          }

          else
          {
            v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v41 = v232;
            v38 = v233;
            v37 = v234;
            v40 = v235;
            v35 = v236;
            LODWORD(v227) = v66;
          }

          sub_100076F8C(v35, v36, v37, v38, v41, v40, v42);
          v67 = v228;
          sub_100076F8C(v44, v43, v46, v45, v230, v228, v49);

          sub_1000771BC(v44, v43, v46, v45, v230, v67, v49);
          sub_1000771BC(v236, v36, v234, v233, v232, v235, v42);
          v59 = v227;
LABEL_15:
          v32 = v238;
          v5 = v226;
          a3 = v207;
          v18 = v206;
          v20 = v229;
          v30 = v244;
          if ((v238 ^ v59))
          {
            goto LABEL_75;
          }

          goto LABEL_10;
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (!v50)
      {
        goto LABEL_9;
      }

      if ((v42 & 0xC0) == 0x40)
      {
        v231 = v36;
        v233 = v38;
        v232 = v41;
        v235 = v40;
        v236 = v35;
        v234 = v37;
        sub_100076F8C(v35, v36, v37, v38, v41, v40, v42);
        sub_100076F8C(v44, v43, v46, v45, v47, v48, v49);
        v51 = v237;
        static Calendar.current.getter();
        v52 = v221;
        Date.init(timeIntervalSinceReferenceDate:)();
        v53 = v222;
        Date.init(timeIntervalSinceReferenceDate:)();
        v54 = v224;
        v55 = v225;
        (*v218)(v224, v219, v225);
        v56 = Calendar.compare(_:to:toGranularity:)();
        (*v217)(v54, v55);
        v57 = *v216;
        v58 = v223;
        (*v216)(v53, v223);
        v57(v52, v58);
        (*v215)(v51, v220);
        sub_1000771BC(v236, v231, v234, v233, v232, v235, v42);
        v59 = v56 == -1;
        goto LABEL_15;
      }
    }

    if (v42 < 0x40)
    {
      goto LABEL_61;
    }

    v64 = 0;
    if (v42 >= 0xC0)
    {
LABEL_42:
      if (!(v37 | v36 | v35 | v38 | v41 | v40) && v42 == 192)
      {
        goto LABEL_61;
      }
    }

LABEL_44:
    if (v64 && v49 == 192 && v44 == 1 && !(v46 | v43 | v45 | v47 | v48))
    {
      v33 = 1;
      goto LABEL_8;
    }

    if (v42 >= 0xC0)
    {
      v65 = v37 | v36 | v38 | v41 | v40;
      if (v42 == 192 && v35 == 1 && !v65)
      {
        goto LABEL_61;
      }

      if (v42 == 192 && v35 == 2 && !v65)
      {
        goto LABEL_9;
      }
    }

    if (!v64 || v49 != 192 || v44 != 2 || v46 | v43 | v45 | v47 | v48)
    {
      goto LABEL_9;
    }

    sub_100076F8C(2, 0, v46, v45, v47, v48, 0xC0u);
    v32 = v238;
    v30 = v244;
LABEL_61:
    v5 = v226;
    a3 = v207;
    v18 = v206;
    v20 = v229;
    if (v32)
    {
      break;
    }

LABEL_10:
    if (v30 == ++v20)
    {
      v20 = v30;
LABEL_75:
      v19 = v204;
      if (v32)
      {
        goto LABEL_66;
      }

      goto LABEL_78;
    }
  }

  v19 = v204;
  if (v229 >= v204)
  {
LABEL_67:
    if (v19 < v20)
    {
      v68 = 56 * v20;
      v69 = v20;
      v70 = v19;
      v71 = 56 * v19;
      while (1)
      {
        if (v70 != --v69)
        {
          v81 = *a3;
          if (!*a3)
          {
            goto LABEL_248;
          }

          v72 = v81 + v71;
          v73 = *(v81 + v71 + 48);
          v74 = v81 + v68;
          v75 = *v72;
          v76 = *(v72 + 16);
          v77 = *(v72 + 32);
          v78 = *(v74 - 40);
          v79 = *(v74 - 24);
          v80 = *(v74 - 56);
          *(v72 + 48) = *(v74 - 8);
          *(v72 + 16) = v78;
          *(v72 + 32) = v79;
          *v72 = v80;
          *(v74 - 56) = v75;
          *(v74 - 40) = v76;
          *(v74 - 24) = v77;
          *(v74 - 8) = v73;
        }

        ++v70;
        v68 -= 56;
        v71 += 56;
        if (v70 >= v69)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_244:
  __break(1u);
LABEL_245:
  v18 = sub_10113DE48(v18);
LABEL_213:
  v195 = (v18 + 16);
  v196 = *(v18 + 16);
  if (v196 >= 2)
  {
    do
    {
      v197 = *a3;
      if (!*a3)
      {
        goto LABEL_249;
      }

      v198 = v18;
      a3 = (v18 + 16 * v196);
      v18 = *a3;
      v199 = &v195[2 * v196];
      v200 = v199[1];
      sub_100F6C3E8((v197 + 56 * *a3), (v197 + 56 * *v199), v197 + 56 * v200, v244);
      if (v5)
      {
        break;
      }

      if (v200 < v18)
      {
        goto LABEL_237;
      }

      if (v196 - 2 >= *v195)
      {
        goto LABEL_238;
      }

      *a3 = v18;
      a3[1] = v200;
      v201 = *v195 - v196;
      if (*v195 < v196)
      {
        goto LABEL_239;
      }

      v196 = *v195 - 1;
      memmove(v199, v199 + 2, 16 * v201);
      *v195 = v196;
      a3 = v207;
      v18 = v198;
    }

    while (v196 > 1);
  }

LABEL_220:
}