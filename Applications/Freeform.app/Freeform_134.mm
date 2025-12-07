void sub_10101F654(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10101F6C4();
  }
}

void sub_10101F6C4()
{
  v1 = [objc_allocWithZone(HLPHelpViewController) init];
  [v1 setShowTopicViewOnLoad:1];
  v2 = String._bridgeToObjectiveC()();
  [v1 setSelectedHelpTopicID:v2];

  v3 = objc_allocWithZone(UINavigationController);
  v4 = v1;
  v5 = [v3 initWithRootViewController:v4];
  [v4 setModalPresentationStyle:1];

  [v0 presentViewController:v5 animated:1 completion:0];
}

void sub_10101F7C8()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = type metadata accessor for CRLiOSBoardViewController(0);
  objc_msgSendSuper2(&v26, "viewDidLayoutSubviews");
  if ((v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] & 1) == 0)
  {
    sub_101025F4C();
  }

  v23 = &type metadata for CRLFeatureFlags;
  v24 = sub_100004D60();
  LOBYTE(v22[0]) = 20;
  v2 = isFeatureEnabled(_:)();
  sub_100005070(v22);
  if (v2)
  {
    v3 = v1;
    v4 = v3;
    while (1)
    {
      v5 = v4;
      v4 = [v4 presentedViewController];

      if (!v4)
      {
        break;
      }

      type metadata accessor for CRLScenesViewController_iv();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for CRLCompactScenesViewController_i();
        if (!swift_dynamicCastClass())
        {
          continue;
        }
      }

      v6 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      v24 = sub_10105AE64;
      v25 = v7;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = *"";
      v22[2] = sub_100007638;
      v23 = &unk_1018AF038;
      v8 = _Block_copy(v22);
      v9 = v3;

      [v6 performBlockOnMainThreadAfterLayoutIfNecessary:v8];
      _Block_release(v8);
      break;
    }
  }

  v10 = [v1 presentedViewController];
  v11 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController;
  v12 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController];
  if (v10)
  {
    v13 = v10;
    if (!v12)
    {
      v20 = 0;

      goto LABEL_19;
    }

    sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
    v14 = v12;
    v15 = static NSObject.== infix(_:_:)();

    if ((v15 & 1) == 0)
    {
LABEL_19:
      v12 = *&v1[v11];
      if (!v12)
      {
        return;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (v12)
    {
LABEL_20:
      v21 = v12;
      sub_100F239FC();

      return;
    }

    v16 = 0;
  }

  v17 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v17;
  static Published.subscript.getter();

  if (v22[0])
  {
    goto LABEL_19;
  }

  v19 = *&v1[v11];
  if (v19)
  {
    [v19 dismissViewControllerAnimated:0 completion:0];
  }
}

uint64_t sub_10101FA98(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) visibleUnscaledRect];
  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState);
  v6 = v4 / v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v3;
  static Published.subscript.getter();

  result = sub_1007C87EC(v6, v11);
  if ((result & 1) == 0)
  {
    v9 = *(a1 + v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    return static Published.subscript.setter();
  }

  return result;
}

void sub_10101FBE4(uint64_t a1, char a2, uint64_t (*a3)(), uint64_t a4)
{
  v9 = sub_100D1D100();
  type metadata accessor for CRLScenesNavigatorViewController();
  if (swift_dynamicCastClass())
  {
    v10 = 1;
  }

  else
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass() != 0;
  }

  v11 = [v4 presentedViewController];
  v236 = v4;
  if (!v11)
  {
LABEL_7:
    if (a3)
    {
      v241 = a3;
      v242 = a4;
      aBlock = _NSConcreteStackBlock;
      v238 = *"";
      v239 = sub_100007638;
      v240 = &unk_1018AEF48;
      v13 = _Block_copy(&aBlock);
    }

    else
    {
      v13 = 0;
    }

    v14 = type metadata accessor for CRLiOSBoardViewController(0);
    v243.receiver = v4;
    v243.super_class = v14;
    objc_msgSendSuper2(&v243, "presentViewController:animated:completion:", a1, a2 & 1, v13);
    goto LABEL_14;
  }

  v12 = v11;
  if ([v11 isBeingDismissed])
  {

    goto LABEL_7;
  }

  if (v10)
  {
    if (a3)
    {
      v241 = a3;
      v242 = a4;
      aBlock = _NSConcreteStackBlock;
      v238 = *"";
      v239 = sub_100007638;
      v240 = &unk_1018AEFC0;
      v13 = _Block_copy(&aBlock);
    }

    else
    {
      v13 = 0;
    }

    [v9 presentViewController:a1 animated:1 completion:v13];
  }

  else
  {
    v126 = swift_allocObject();
    *(v126 + 16) = v4;
    *(v126 + 24) = a1;
    *(v126 + 32) = a2 & 1;
    *(v126 + 40) = a3;
    *(v126 + 48) = a4;
    v241 = sub_10105AE34;
    v242 = v126;
    aBlock = _NSConcreteStackBlock;
    v238 = *"";
    v239 = sub_100007638;
    v240 = &unk_1018AEF98;
    v13 = _Block_copy(&aBlock);
    sub_10067F2EC(a3, a4);
    v127 = v4;
    v128 = a1;

    [v127 dismissViewControllerAnimated:a2 & 1 completion:v13];
  }

LABEL_14:
  _Block_release(v13);
  v15 = sub_101012FD4();
  v16 = [v15 mode];

  LODWORD(v15) = [v16 wantsToEndForNonPopoverPresentations];
  v17 = &selRef_p_writingDirectionForCharAtIndex_;
  p_class_meths = &OBJC_PROTOCOL___UIWritingToolsCoordinatorDelegate.class_meths;
  if (!v15)
  {
    goto LABEL_89;
  }

  v19 = [a1 presentationController];
  if (!v19)
  {
    v235 = v9;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v234 = a1;
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v82 = NSStringFromClass(ObjCClassFromMetadata);
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    *(inited + 56) = &type metadata for String;
    v86 = sub_1000053B0();
    *(inited + 32) = v83;
    v87 = inited + 32;
    v232 = v86;
    *(inited + 64) = v86;
    *(inited + 40) = v85;
    v231 = objc_opt_self();
    v88 = [v231 _atomicIncrementAssertCount];
    aBlock = [objc_allocWithZone(NSString) init];
    v233 = inited;
    sub_100604538(inited, &aBlock, "Presentation controller should not be nil when presenting view controller (%{public}@).", 87, 2u);
    StaticString.description.getter("present(_:animated:completion:)", 31, 2);
    v89 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v90 = String._bridgeToObjectiveC()();

    v91 = [v90 lastPathComponent];

    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v95 = static OS_os_log.crlAssert;
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_10146CA70;
    *(v96 + 56) = &type metadata for Int32;
    *(v96 + 64) = &protocol witness table for Int32;
    *(v96 + 32) = v88;
    v97 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v96 + 96) = v97;
    v98 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v96 + 72) = v89;
    *(v96 + 136) = &type metadata for String;
    *(v96 + 144) = v232;
    *(v96 + 104) = v98;
    *(v96 + 112) = v92;
    *(v96 + 120) = v94;
    *(v96 + 176) = &type metadata for UInt;
    *(v96 + 184) = &protocol witness table for UInt;
    *(v96 + 152) = 1032;
    v99 = v89;
    v100 = aBlock;
    *(v96 + 216) = v97;
    *(v96 + 224) = v98;
    *(v96 + 192) = v100;
    v101 = v99;
    v102 = v100;
    v103 = static os_log_type_t.error.getter();
    sub_100005404(v95, &_mh_execute_header, v103, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v96);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v104 = static os_log_type_t.error.getter();
    v105 = v233;
    sub_100005404(v95, &_mh_execute_header, v104, "Presentation controller should not be nil when presenting view controller (%{public}@).", 87, 2, v233);

    type metadata accessor for __VaListBuilder();
    a1 = swift_allocObject();
    *(a1 + 16) = 8;
    *(a1 + 24) = 0;
    v20 = (a1 + 24);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v106 = v233[2];
    if (!v106)
    {
LABEL_80:
      v122 = __VaListBuilder.va_list()();
      StaticString.description.getter("present(_:animated:completion:)", 31, 2);
      v123 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
      v124 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Presentation controller should not be nil when presenting view controller (%{public}@).", 87, 2);
      v125 = String._bridgeToObjectiveC()();

      [v231 handleFailureInFunction:v123 file:v124 lineNumber:1032 isFatal:0 format:v125 args:v122];

      swift_setDeallocating();
      swift_arrayDestroy();
      v4 = v236;
      [*(v236 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) resetToDefaultModeAnimated:1];
      goto LABEL_81;
    }

    v63 = 0;
    p_class_meths = 40;
    while (1)
    {
      sub_100020E58((v87 + 40 * v63), *(v87 + 40 * v63 + 24));
      v107 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v67 = *v20;
      v108 = *(v107 + 16);
      v69 = __OFADD__(*v20, v108);
      v109 = *v20 + v108;
      if (v69)
      {
        goto LABEL_161;
      }

      v110 = *(a1 + 32);
      if (v110 >= v109)
      {
        goto LABEL_72;
      }

      if (v110 + 0x4000000000000000 < 0)
      {
        goto LABEL_164;
      }

      v111 = *(a1 + 40);
      if (2 * v110 > v109)
      {
        v109 = 2 * v110;
      }

      *(a1 + 32) = v109;
      if ((v109 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        swift_once();
LABEL_122:
        v189 = static OS_os_log.crlAssert;
        v190 = swift_initStackObject();
        *(v190 + 16) = xmmword_10146CA70;
        *(v190 + 56) = &type metadata for Int32;
        *(v190 + 64) = &protocol witness table for Int32;
        *(v190 + 32) = v63;
        v191 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v190 + 96) = v191;
        v192 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(v190 + 72) = v234;
        v193 = aBlock;
        *(v190 + 136) = &type metadata for String;
        *(v190 + 144) = v236;
        *(v190 + 104) = v192;
        *(v190 + 112) = p_class_meths;
        *(v190 + 120) = v20;
        *(v190 + 176) = &type metadata for UInt;
        *(v190 + 184) = &protocol witness table for UInt;
        *(v190 + 152) = 1060;
        *(v190 + 216) = v191;
        *(v190 + 224) = v192;
        *(v190 + 192) = v193;
        v194 = v234;
        v195 = v193;
        v196 = static os_log_type_t.error.getter();
        sub_100005404(v189, &_mh_execute_header, v196, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v190);
        swift_setDeallocating();
        v236 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v197 = static os_log_type_t.error.getter();
        sub_100005404(v189, &_mh_execute_header, v197, "Presentation controller should not be nil when presenting view controller (%{public}@).", 87, 2, a1);

        type metadata accessor for __VaListBuilder();
        p_class_meths = swift_allocObject();
        *(p_class_meths + 16) = 8;
        *(p_class_meths + 24) = 0;
        v20 = (p_class_meths + 24);
        *(p_class_meths + 32) = 0;
        *(p_class_meths + 40) = 0;
        v63 = *(a1 + 16);
        v198 = a1;
        if (!v63)
        {
LABEL_147:
          v214 = __VaListBuilder.va_list()();
          StaticString.description.getter("present(_:animated:completion:)", 31, 2);
          v215 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
          v216 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Presentation controller should not be nil when presenting view controller (%{public}@).", 87, 2);
          v217 = String._bridgeToObjectiveC()();

          [v233 handleFailureInFunction:v215 file:v216 lineNumber:1060 isFatal:0 format:v217 args:v214];

          swift_setDeallocating();
          swift_arrayDestroy();

          return;
        }

        v9 = 0;
        a1 = 40;
        while (2)
        {
          v4 = sub_100020E58((v67 + 40 * v9), *(v67 + 40 * v9 + 24));
          v199 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v200 = *v20;
          v201 = *(v199 + 16);
          v69 = __OFADD__(*v20, v201);
          v202 = *v20 + v201;
          if (v69)
          {
            goto LABEL_160;
          }

          v203 = *(p_class_meths + 32);
          if (v203 >= v202)
          {
LABEL_139:
            v208 = *(p_class_meths + 40);
            if (!v208)
            {
              goto LABEL_146;
            }
          }

          else
          {
            if (v203 + 0x4000000000000000 < 0)
            {
              goto LABEL_162;
            }

            v4 = *(p_class_meths + 40);
            if (2 * v203 > v202)
            {
              v202 = 2 * v203;
            }

            *(p_class_meths + 32) = v202;
            if ((v202 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_163;
            }

            v204 = v67;
            v205 = v198;
            v206 = v199;
            v207 = swift_slowAlloc();
            v208 = v207;
            *(p_class_meths + 40) = v207;
            if (v4)
            {
              if (v207 != v4 || v207 >= &v4[v200])
              {
                memmove(v207, v4, 8 * v200);
              }

              v4 = p_class_meths;
              __VaListBuilder.deallocStorage(wordCount:storage:)();
              v199 = v206;
              v198 = v205;
              v67 = v204;
              a1 = 40;
              goto LABEL_139;
            }

            v199 = v206;
            v198 = v205;
            v67 = v204;
            a1 = 40;
            if (!v208)
            {
LABEL_146:
              __break(1u);
              goto LABEL_147;
            }
          }

          v210 = *(v199 + 16);
          if (v210)
          {
            v211 = (v199 + 32);
            v212 = *v20;
            while (1)
            {
              v213 = *v211++;
              v208[v212] = v213;
              v212 = *v20 + 1;
              if (__OFADD__(*v20, 1))
              {
                break;
              }

              *v20 = v212;
              if (!--v210)
              {
                goto LABEL_124;
              }
            }

            __break(1u);
            goto LABEL_154;
          }

LABEL_124:

          v9 = v9 + 1;
          if (v9 == v63)
          {
            goto LABEL_147;
          }

          continue;
        }
      }

      v112 = v87;
      v113 = v105;
      v114 = v107;
      v115 = swift_slowAlloc();
      v116 = v115;
      *(a1 + 40) = v115;
      if (v111)
      {
        break;
      }

      v107 = v114;
      v105 = v113;
      v87 = v112;
      p_class_meths = 40;
      if (!v116)
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

LABEL_73:
      v118 = *(v107 + 16);
      if (v118)
      {
        v119 = (v107 + 32);
        v120 = *v20;
        while (1)
        {
          v121 = *v119++;
          *&v116[8 * v120] = v121;
          v120 = *v20 + 1;
          if (__OFADD__(*v20, 1))
          {
            break;
          }

          *v20 = v120;
          if (!--v118)
          {
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_157:
        v222 = __VaListBuilder.va_list()();
        StaticString.description.getter("present(_:animated:completion:)", 31, 2);
        v223 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
        v224 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Board view controller can't become presentation delegate (of %{public}@ presenting %{public}@) if it's already set (%{public}@).", 128, 2);
        v225 = String._bridgeToObjectiveC()();

        [v227 handleFailureInFunction:v223 file:v224 lineNumber:1024 isFatal:0 format:v225 args:v222];

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v4 = v236;
        v226 = *(v236 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController);
        [v226 resetToDefaultModeAnimated:1];
        swift_unknownObjectRelease();

LABEL_81:
        a1 = v234;
        v9 = v235;
LABEL_88:
        v17 = &selRef_p_writingDirectionForCharAtIndex_;
        p_class_meths = &OBJC_PROTOCOL___UIWritingToolsCoordinatorDelegate.class_meths;
LABEL_89:
        if (*(v4 + *(p_class_meths + 184)))
        {
          v130 = [a1 v17[360]];
          if (!v130)
          {
LABEL_121:
            v235 = v9;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            a1 = swift_initStackObject();
            *(a1 + 16) = xmmword_10146C6B0;
            swift_getObjectType();
            v181 = swift_getObjCClassFromMetadata();
            v182 = NSStringFromClass(v181);
            v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v63 = v184;

            *(a1 + 56) = &type metadata for String;
            v185 = sub_1000053B0();
            *(a1 + 32) = v183;
            v67 = a1 + 32;
            v236 = v185;
            *(a1 + 64) = v185;
            *(a1 + 40) = v63;
            v233 = objc_opt_self();
            LODWORD(v63) = [v233 _atomicIncrementAssertCount];
            aBlock = [objc_allocWithZone(NSString) init];
            sub_100604538(a1, &aBlock, "Presentation controller should not be nil when presenting view controller (%{public}@).", 87, 2u);
            StaticString.description.getter("present(_:animated:completion:)", 31, 2);
            v234 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
            v186 = String._bridgeToObjectiveC()();

            v187 = [v186 lastPathComponent];

            p_class_meths = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v20 = v188;

            if (qword_1019F20A0 != -1)
            {
              goto LABEL_170;
            }

            goto LABEL_122;
          }

          v20 = v130;
          v131 = [v130 presentationStyle];
          v132 = [v4 traitCollection];
          v133 = [v20 adaptivePresentationStyleForTraitCollection:v132];

          sub_101021A10(v131, v133);
          if ([v20 delegate])
          {
            swift_unknownObjectRelease();
            v134 = [v20 delegate];
            if (v134)
            {
              v135 = v134;
              v136 = [v236 traitCollection];
              v137 = [v136 userInterfaceIdiom];

              if (v137 && v135 != v236)
              {
                v235 = v9;
                sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                v138 = swift_initStackObject();
                *(v138 + 16) = xmmword_10146C4D0;
                swift_getObjectType();
                v139 = swift_getObjCClassFromMetadata();
                v140 = NSStringFromClass(v139);
                v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v143 = v142;

                *(v138 + 56) = &type metadata for String;
                v144 = sub_1000053B0();
                *(v138 + 32) = v141;
                v236 = (v138 + 32);
                *(v138 + 64) = v144;
                *(v138 + 40) = v143;
                swift_getObjectType();
                v145 = swift_getObjCClassFromMetadata();
                v146 = NSStringFromClass(v145);
                v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v149 = v148;

                *(v138 + 96) = &type metadata for String;
                *(v138 + 104) = v144;
                *(v138 + 72) = v147;
                *(v138 + 80) = v149;
                v63 = v138;
                swift_getObjectType();
                v150 = swift_getObjCClassFromMetadata();
                v151 = NSStringFromClass(v150);
                v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v71 = v153;

                *(v138 + 136) = &type metadata for String;
                *(v138 + 144) = v144;
                v234 = v144;
                *(v138 + 112) = v152;
                *(v138 + 120) = v71;
                v230 = objc_opt_self();
                LODWORD(v71) = [v230 _atomicIncrementAssertCount];
                aBlock = [objc_allocWithZone(NSString) init];
                sub_100604538(v138, &aBlock, "Board view controller can't become presentation delegate (of %{public}@ presenting %{public}@) if it's already set (%{public}@).", 128, 2u);
                StaticString.description.getter("present(_:animated:completion:)", 31, 2);
                v233 = String._bridgeToObjectiveC()();

                StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
                v154 = String._bridgeToObjectiveC()();

                v155 = [v154 lastPathComponent];

                v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v65 = v156;

                if (qword_1019F20A0 == -1)
                {
                  goto LABEL_96;
                }

                goto LABEL_173;
              }

              swift_unknownObjectRelease();
            }
          }

          else
          {
            [v20 setDelegate:v236];
          }
        }

        return;
      }

LABEL_57:

      if (++v63 == v106)
      {
        goto LABEL_80;
      }
    }

    if (v115 != v111 || v115 >= &v111[8 * v67])
    {
      memmove(v115, v111, 8 * v67);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v107 = v114;
    v105 = v113;
    v87 = v112;
    p_class_meths = 40;
LABEL_72:
    v116 = *(a1 + 40);
    if (!v116)
    {
      goto LABEL_79;
    }

    goto LABEL_73;
  }

  v20 = v19;
  v21 = [v19 presentationStyle];
  v22 = [v4 traitCollection];
  v23 = [v20 adaptivePresentationStyleForTraitCollection:v22];

  if (!*(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController))
  {
    v24 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController;
    v25 = [*(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) mode];
    v26 = [v25 wantsToEndForNonPopoverPresentations];

    if (v26)
    {
      if (v21 != 7 && v23 != 7 || v23 != -1 && v23 != 7)
      {
        v129 = *(v4 + v24);
        [v129 resetToDefaultModeAnimated:1];

        goto LABEL_87;
      }
    }
  }

  if (![v20 delegate])
  {
    [v20 setDelegate:v4];
    goto LABEL_87;
  }

  swift_unknownObjectRelease();
  if ([v20 crl_willOnlyEverBePresentedAsAPopover])
  {
LABEL_87:

    goto LABEL_88;
  }

  v27 = [v20 delegate];
  p_class_meths = 0x101A28000;
  if (!v27)
  {
LABEL_155:

    v17 = &selRef_p_writingDirectionForCharAtIndex_;
    goto LABEL_89;
  }

  v28 = v27;
  v29 = [v4 traitCollection];
  v30 = [v29 userInterfaceIdiom];

  if (!v30 || v28 == v4)
  {
LABEL_154:
    swift_unknownObjectRelease();
    goto LABEL_155;
  }

  v235 = v9;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10146C4D0;
  swift_getObjectType();
  v32 = swift_getObjCClassFromMetadata();
  v33 = NSStringFromClass(v32);
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *(v31 + 56) = &type metadata for String;
  v37 = sub_1000053B0();
  *(v31 + 32) = v34;
  v233 = (v31 + 32);
  v234 = a1;
  *(v31 + 64) = v37;
  *(v31 + 40) = v36;
  swift_getObjectType();
  v38 = swift_getObjCClassFromMetadata();
  v39 = NSStringFromClass(v38);
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  *(v31 + 96) = &type metadata for String;
  *(v31 + 104) = v37;
  *(v31 + 72) = v40;
  *(v31 + 80) = v42;
  swift_getObjectType();
  v43 = swift_getObjCClassFromMetadata();
  v44 = NSStringFromClass(v43);
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  *(v31 + 136) = &type metadata for String;
  *(v31 + 144) = v37;
  v229 = v37;
  *(v31 + 112) = v45;
  *(v31 + 120) = v47;
  v227 = objc_opt_self();
  v48 = [v227 _atomicIncrementAssertCount];
  aBlock = [objc_allocWithZone(NSString) init];
  sub_100604538(v31, &aBlock, "Board view controller can't become presentation delegate (of %{public}@ presenting %{public}@) if it's already set (%{public}@).", 128, 2u);
  StaticString.description.getter("present(_:animated:completion:)", 31, 2);
  v228 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
  v49 = String._bridgeToObjectiveC()();

  v50 = [v49 lastPathComponent];

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v54 = static OS_os_log.crlAssert;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_10146CA70;
  *(v55 + 56) = &type metadata for Int32;
  *(v55 + 64) = &protocol witness table for Int32;
  *(v55 + 32) = v48;
  v56 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v55 + 96) = v56;
  v57 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(v55 + 72) = v228;
  *(v55 + 136) = &type metadata for String;
  *(v55 + 144) = v229;
  *(v55 + 104) = v57;
  *(v55 + 112) = v51;
  *(v55 + 120) = v53;
  *(v55 + 176) = &type metadata for UInt;
  *(v55 + 184) = &protocol witness table for UInt;
  *(v55 + 152) = 1024;
  v58 = aBlock;
  *(v55 + 216) = v56;
  *(v55 + 224) = v57;
  *(v55 + 192) = v58;
  v59 = v228;
  v60 = v58;
  v61 = static os_log_type_t.error.getter();
  sub_100005404(v54, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v55);
  swift_setDeallocating();
  v230 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62 = static os_log_type_t.error.getter();
  sub_100005404(v54, &_mh_execute_header, v62, "Board view controller can't become presentation delegate (of %{public}@ presenting %{public}@) if it's already set (%{public}@).", 128, 2, v31);

  type metadata accessor for __VaListBuilder();
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  *(v63 + 24) = 0;
  a1 = v63 + 24;
  *(v63 + 32) = 0;
  *(v63 + 40) = 0;
  v64 = *(v31 + 16);
  if (!v64)
  {
    goto LABEL_157;
  }

  p_class_meths = 0;
  v65 = 0xF000000000000000;
  while (1)
  {
    sub_100020E58(&v233[5 * p_class_meths], v233[5 * p_class_meths + 3]);
    v66 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v67 = *a1;
    v68 = *(v66 + 16);
    v69 = __OFADD__(*a1, v68);
    v70 = *a1 + v68;
    if (v69)
    {
      goto LABEL_169;
    }

    v71 = v66;
    v72 = *(v63 + 32);
    if (v72 >= v70)
    {
      goto LABEL_46;
    }

    if (v72 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      swift_once();
LABEL_96:
      v157 = static OS_os_log.crlAssert;
      v158 = swift_initStackObject();
      *(v158 + 16) = xmmword_10146CA70;
      *(v158 + 56) = &type metadata for Int32;
      *(v158 + 64) = &protocol witness table for Int32;
      *(v158 + 32) = v71;
      v159 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v158 + 96) = v159;
      v160 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v158 + 72) = v233;
      *(v158 + 136) = &type metadata for String;
      *(v158 + 144) = v234;
      *(v158 + 104) = v160;
      *(v158 + 112) = v64;
      *(v158 + 120) = v65;
      *(v158 + 176) = &type metadata for UInt;
      *(v158 + 184) = &protocol witness table for UInt;
      *(v158 + 152) = 1054;
      v161 = aBlock;
      *(v158 + 216) = v159;
      *(v158 + 224) = v160;
      *(v158 + 192) = v161;
      v162 = v233;
      v163 = v161;
      v164 = static os_log_type_t.error.getter();
      sub_100005404(v157, &_mh_execute_header, v164, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v158);
      swift_setDeallocating();
      v234 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v165 = static os_log_type_t.error.getter();
      sub_100005404(v157, &_mh_execute_header, v165, "Board view controller can't become presentation delegate (of %{public}@ presenting %{public}@) if it's already set (%{public}@).", 128, 2, v63);

      type metadata accessor for __VaListBuilder();
      a1 = swift_allocObject();
      *(a1 + 16) = 8;
      *(a1 + 24) = 0;
      v166 = (a1 + 24);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v9 = *(v63 + 16);
      if (!v9)
      {
LABEL_152:
        v218 = __VaListBuilder.va_list()();
        StaticString.description.getter("present(_:animated:completion:)", 31, 2);
        v219 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
        v220 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Board view controller can't become presentation delegate (of %{public}@ presenting %{public}@) if it's already set (%{public}@).", 128, 2);
        v221 = String._bridgeToObjectiveC()();

        [v230 handleFailureInFunction:v219 file:v220 lineNumber:1054 isFatal:0 format:v221 args:v218];

        swift_setDeallocating();
        swift_arrayDestroy();

        swift_unknownObjectRelease();
        return;
      }

      p_class_meths = 0;
      while (1)
      {
        sub_100020E58(&v236[5 * p_class_meths], v236[5 * p_class_meths + 3]);
        v167 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v67 = *v166;
        v168 = *(v167 + 16);
        v69 = __OFADD__(*v166, v168);
        v169 = *v166 + v168;
        if (v69)
        {
          goto LABEL_166;
        }

        v170 = *(a1 + 32);
        if (v170 >= v169)
        {
          goto LABEL_113;
        }

        if (v170 + 0x4000000000000000 < 0)
        {
          goto LABEL_167;
        }

        v171 = *(a1 + 40);
        if (2 * v170 > v169)
        {
          v169 = 2 * v170;
        }

        *(a1 + 32) = v169;
        if ((v169 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_168;
        }

        v172 = v63;
        v173 = v167;
        v174 = swift_slowAlloc();
        v175 = v174;
        *(a1 + 40) = v174;
        if (v171)
        {
          break;
        }

        v167 = v173;
        v63 = v172;
        if (!v175)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

LABEL_114:
        v177 = *(v167 + 16);
        if (v177)
        {
          v178 = (v167 + 32);
          v179 = *v166;
          while (1)
          {
            v180 = *v178++;
            *&v175[8 * v179] = v180;
            v179 = *v166 + 1;
            if (__OFADD__(*v166, 1))
            {
              break;
            }

            *v166 = v179;
            if (!--v177)
            {
              goto LABEL_98;
            }
          }

          __break(1u);
          goto LABEL_159;
        }

LABEL_98:

        if (++p_class_meths == v9)
        {
          goto LABEL_152;
        }
      }

      if (v174 != v171 || v174 >= &v171[8 * v67])
      {
        memmove(v174, v171, 8 * v67);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v167 = v173;
      v63 = v172;
LABEL_113:
      v175 = *(a1 + 40);
      if (!v175)
      {
        goto LABEL_120;
      }

      goto LABEL_114;
    }

    v73 = *(v63 + 40);
    if (2 * v72 > v70)
    {
      v70 = 2 * v72;
    }

    *(v63 + 32) = v70;
    if ((v70 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_172;
    }

    v74 = swift_slowAlloc();
    *(v63 + 40) = v74;
    if (v73)
    {
      if (v74 != v73 || v74 >= &v73[8 * v67])
      {
        memmove(v74, v73, 8 * v67);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_46:
      v74 = *(v63 + 40);
    }

    if (!v74)
    {
      break;
    }

    v76 = *(v71 + 16);
    if (v76)
    {
      v77 = (v71 + 32);
      v78 = *a1;
      while (1)
      {
        v79 = *v77++;
        *&v74[8 * v78] = v79;
        v78 = *a1 + 1;
        if (__OFADD__(*a1, 1))
        {
          break;
        }

        *a1 = v78;
        if (!--v76)
        {
          goto LABEL_31;
        }
      }

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
LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

LABEL_31:

    if (++p_class_meths == v64)
    {
      goto LABEL_157;
    }
  }

  __break(1u);
}

void sub_101021928(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10[4] = a4;
    v10[5] = a5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = *"";
    v10[2] = sub_100007638;
    v10[3] = &unk_1018AEFE8;
    v8 = _Block_copy(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for CRLiOSBoardViewController(0);
  v11.receiver = a1;
  v11.super_class = v9;
  objc_msgSendSuper2(&v11, "presentViewController:animated:completion:", a2, a3 & 1, v8);
  _Block_release(v8);
}

void sub_101021A10(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomToolTray);
  if (!v3)
  {
    *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isSuppressingBottomToolTrayForPresentationController) = 0;
    return;
  }

  v6 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isSuppressingBottomToolTrayForPresentationController;
  v7 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isSuppressingBottomToolTrayForPresentationController);
  swift_unknownObjectRetain();
  if ((v7 & 1) != 0 || ([v3 hidden] & 1) == 0)
  {
    if (!*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController) || (a1 == 7 || a2 == 7) && (a2 == -1 || a2 == 7))
    {
      if (v7)
      {
        [v3 setToolTrayHidden:0 animated:1];
        swift_unknownObjectRelease();
        *(v2 + v6) = 0;
        return;
      }
    }

    else if ((v7 & 1) == 0)
    {
      [v3 setToolTrayHidden:1 animated:1];
      swift_unknownObjectRelease();
      *(v2 + v6) = 1;
      return;
    }
  }

  swift_unknownObjectRelease();
}

void sub_101021C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_101023CD0();
  }
}

void sub_101021C6C(uint64_t a1, uint64_t a2)
{
  v7[3] = &type metadata for CRLFeatureFlags;
  v7[4] = sub_100004D60();
  LOBYTE(v7[0]) = 20;
  v2 = isFeatureEnabled(_:)();
  sub_100005070(v7);
  if (v2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1010193C0();
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_101023CD0();
  }
}

uint64_t sub_101021D20()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_viewScaleObservation);
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_viewScaleObservation) = 0;

  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollObserver;
  swift_beginAccess();
  sub_10000BE14(v0 + v2, &v5, &unk_1019F4D00, &unk_10146E7F0);
  if (!*(&v6 + 1))
  {
    return sub_10000CAAC(&v5, &unk_1019F4D00, &unk_10146E7F0);
  }

  sub_10000BF3C(&v5, &v7);
  v3 = [objc_opt_self() defaultCenter];
  sub_100020E58(&v7, v8);
  [v3 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  v5 = 0u;
  v6 = 0u;
  swift_beginAccess();
  sub_10002C638(&v5, v0 + v2, &unk_1019F4D00, &unk_10146E7F0);
  swift_endAccess();
  return sub_100005070(&v7);
}

uint64_t sub_101021E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[18] = v7;
  v5[19] = v6;

  return _swift_task_switch(sub_101021F08, v7, v6);
}

uint64_t sub_101021F08()
{
  v1 = *(*(v0[15] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v0[20] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_101021FD0;
  v3 = v0[16];

  return sub_100ED0DE8(v3);
}

uint64_t sub_101021FD0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_10102214C;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_1010220EC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1010220EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10102214C()
{

  return _swift_task_switch(sub_1010221C0, 0, 0);
}

uint64_t sub_1010221C0()
{
  if (qword_1019F2250 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.contentState;
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
  sub_100005404(v1, &_mh_execute_header, v6, "Failed to archive view state in database. %@", 44, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  v7 = *(v0 + 8);

  return v7();
}

void sub_10102231C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v5 = [v4 versionFidelityAlertWasShownIsValid];
  if (v5)
  {
    v6 = [v4 versionFidelityAlertWasShown];
  }

  else
  {
    v6 = 0;
  }

  [v4 viewScale];
  v8 = v7;
  [v4 contentOffset];
  v10 = v9;
  v12 = v11;
  v13 = v5 ^ 1;
  v14 = [v4 freehandDrawingToolkit];
  v73 = v6;
  v72 = v5 ^ 1;
  if (v14)
  {
    v15 = v14;
    v16 = [v14 toolkitUIState];
    v17 = sub_100C9D938();
    v19 = v18;

    sub_100025870(0, 0xF000000000000000);
  }

  else
  {
    v70 = v2;
    v68 = objc_opt_self();
    v20 = [v68 _atomicIncrementAssertCount];
    v74[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v74, "Freehand toolkit should not be nil while saving view state.", 59, 2u);
    StaticString.description.getter("viewState", 9, 2);
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v22 = String._bridgeToObjectiveC()();

    v23 = [v22 lastPathComponent];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v20;
    v29 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v29;
    v30 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v30;
    *(inited + 72) = v21;
    *(inited + 136) = &type metadata for String;
    v31 = sub_1000053B0();
    *(inited + 112) = v24;
    *(inited + 120) = v26;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v31;
    *(inited + 152) = 1119;
    v32 = v74[0];
    *(inited + 216) = v29;
    *(inited + 224) = v30;
    *(inited + 192) = v32;
    v33 = v21;
    v34 = v32;
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v36, "Freehand toolkit should not be nil while saving view state.", 59, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v37 = swift_allocObject();
    v37[2] = 8;
    v37[3] = 0;
    v37[4] = 0;
    v37[5] = 0;
    v38 = __VaListBuilder.va_list()();
    StaticString.description.getter("viewState", 9, 2);
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Freehand toolkit should not be nil while saving view state.", 59, 2);
    v41 = String._bridgeToObjectiveC()();

    [v68 handleFailureInFunction:v39 file:v40 lineNumber:1119 isFatal:0 format:v41 args:v38];

    v17 = 0;
    v19 = 0xF000000000000000;
    v6 = v73;
    v13 = v72;
    v2 = v70;
  }

  if ([*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) pencilMediator])
  {
    type metadata accessor for CRLiOSPencilMediator();
    if (swift_dynamicCastClass())
    {
      v42 = sub_100F96228();
      v44 = v43;
      swift_unknownObjectRelease();
      sub_100025870(0, 0xF000000000000000);
      goto LABEL_16;
    }

    swift_unknownObjectRelease();
  }

  v69 = v19;
  v71 = v17;
  v67 = objc_opt_self();
  v45 = [v67 _atomicIncrementAssertCount];
  v74[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v74, "invalid nil found when unwrapping value", 39, 2u);
  StaticString.description.getter("viewState", 9, 2);
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
  v47 = String._bridgeToObjectiveC()();

  v48 = [v47 lastPathComponent];

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v52 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_10146CA70;
  *(v53 + 56) = &type metadata for Int32;
  *(v53 + 64) = &protocol witness table for Int32;
  *(v53 + 32) = v45;
  v54 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v53 + 96) = v54;
  v55 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(v53 + 104) = v55;
  *(v53 + 72) = v46;
  *(v53 + 136) = &type metadata for String;
  v56 = sub_1000053B0();
  *(v53 + 112) = v49;
  *(v53 + 120) = v51;
  *(v53 + 176) = &type metadata for UInt;
  *(v53 + 184) = &protocol witness table for UInt;
  *(v53 + 144) = v56;
  *(v53 + 152) = 1122;
  v57 = v74[0];
  *(v53 + 216) = v54;
  *(v53 + 224) = v55;
  *(v53 + 192) = v57;
  v58 = v46;
  v59 = v57;
  v60 = static os_log_type_t.error.getter();
  sub_100005404(v52, &_mh_execute_header, v60, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v53);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v61 = static os_log_type_t.error.getter();
  sub_100005404(v52, &_mh_execute_header, v61, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v62 = swift_allocObject();
  v62[2] = 8;
  v62[3] = 0;
  v62[4] = 0;
  v62[5] = 0;
  v63 = __VaListBuilder.va_list()();
  StaticString.description.getter("viewState", 9, 2);
  v64 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
  v65 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
  v66 = String._bridgeToObjectiveC()();

  [v67 handleFailureInFunction:v64 file:v65 lineNumber:1122 isFatal:0 format:v66 args:v63];

  v42 = 0;
  v44 = 0xF000000000000000;
  v6 = v73;
  v13 = v72;
  v19 = v69;
  v17 = v71;
LABEL_16:
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12;
  *(a1 + 24) = v6;
  *(a1 + 32) = v13;
  *(a1 + 40) = v17;
  *(a1 + 48) = v19;
  *(a1 + 56) = v42;
  *(a1 + 64) = v44;
  *(a1 + 72) = 0;
}

void sub_101022C00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((*(a2 + 72) & 1) == 0)
    {
      [*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) setViewScale:*a2];
      v5 = *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController];
      if (v5)
      {
        v6 = v5;
        sub_1006A8220();
      }
    }

    v7 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController;
    [*&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] growCanvasAsNeededToRestoreContentOffset:{*(a2 + 8), *(a2 + 16)}];
    sub_101022DF4(a2);
    sub_1010236F0(a2);
    v8 = *&v4[v7];
    LOBYTE(v20) = 1;
    v21[0] = 0x3FF0000000000000;
    memset(&v21[1], 0, 24);
    v22 = 1;
    v23 = xmmword_101486780;
    v24 = xmmword_101486780;
    v25 = 0;
    v9 = sub_1006D5B34(a2, v21);
    sub_1006D62E4(v21);
    if (v9)
    {
      v10 = [v8 canvas];
      [v10 unscaledRectOfLayouts];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v27.origin.x = 0.0;
      v27.origin.y = 0.0;
      v27.size.width = 0.0;
      v27.size.height = 0.0;
      v26.origin.x = v12;
      v26.origin.y = v14;
      v26.size.width = v16;
      v26.size.height = v18;
      if (!CGRectEqualToRect(v26, v27))
      {
        [v8 scrollRectToVisible:96 scrollOptions:{v12, v14, v16, v18}];
      }
    }

    v19 = *(a2 + 32);
    if ((v19 & 1) == 0)
    {
      [*&v4[v7] setVersionFidelityAlertWasShown:*(a2 + 24)];
    }

    [*&v4[v7] setVersionFidelityAlertWasShownIsValid:{(v19 & 1) == 0, v20}];
  }
}

void sub_101022DF4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 >> 60 == 15)
  {
    if (qword_1019F2250 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.contentState;
    v4 = static os_log_type_t.info.getter();

    sub_100005404(v3, &_mh_execute_header, v4, "View state to restore does not contain freehand drawing toolkit UI state. Skipping restoration of it.", 101, 2, _swiftEmptyArrayStorage);
    return;
  }

  v5 = v1;
  v6 = *(a1 + 40);
  sub_100006370(0, &qword_101A28708, off_10182F838);
  sub_100024E98(v6, v2);
  v7 = sub_100CA40E4(v6, v2);
  if (!v7)
  {
    v62 = v6;
    v60 = objc_opt_self();
    v16 = [v60 _atomicIncrementAssertCount];
    v63[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v63, "Unable to deserialize/unarchive freehand toolkit UI state from view state.", 74, 2u);
    StaticString.description.getter("restoreFreehandDrawingUIState(viewState:)", 41, 2);
    v17 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v18 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v16;
    v25 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v25;
    v26 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v26;
    *(inited + 72) = v17;
    *(inited + 136) = &type metadata for String;
    v27 = sub_1000053B0();
    *(inited + 112) = v20;
    *(inited + 120) = v22;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v27;
    *(inited + 152) = 1167;
    v28 = v63[0];
    *(inited + 216) = v25;
    *(inited + 224) = v26;
    *(inited + 192) = v28;
    v29 = v17;
    v30 = v28;
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v32, "Unable to deserialize/unarchive freehand toolkit UI state from view state.", 74, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v33 = swift_allocObject();
    v33[2] = 8;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0;
    v34 = __VaListBuilder.va_list()();
    StaticString.description.getter("restoreFreehandDrawingUIState(viewState:)", 41, 2);
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unable to deserialize/unarchive freehand toolkit UI state from view state.", 74, 2);
    v37 = String._bridgeToObjectiveC()();

    [v60 handleFailureInFunction:v35 file:v36 lineNumber:1167 isFatal:0 format:v37 args:v34];

    goto LABEL_20;
  }

  v8 = v7;
  v9 = [*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) freehandDrawingToolkit];
  if (!v9)
  {
    v62 = v6;
    v61 = objc_opt_self();
    v38 = [v61 _atomicIncrementAssertCount];
    v63[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v63, "Freehand toolkit should not be nil while restoring view state.", 62, 2u);
    StaticString.description.getter("restoreFreehandDrawingUIState(viewState:)", 41, 2);
    v59 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v39 = String._bridgeToObjectiveC()();

    v40 = [v39 lastPathComponent];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v44 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_10146CA70;
    *(v45 + 56) = &type metadata for Int32;
    *(v45 + 64) = &protocol witness table for Int32;
    *(v45 + 32) = v38;
    v46 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v45 + 96) = v46;
    v47 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v45 + 104) = v47;
    *(v45 + 72) = v59;
    *(v45 + 136) = &type metadata for String;
    v48 = sub_1000053B0();
    *(v45 + 112) = v41;
    *(v45 + 120) = v43;
    *(v45 + 176) = &type metadata for UInt;
    *(v45 + 184) = &protocol witness table for UInt;
    *(v45 + 144) = v48;
    *(v45 + 152) = 1164;
    v49 = v63[0];
    *(v45 + 216) = v46;
    *(v45 + 224) = v47;
    *(v45 + 192) = v49;
    v50 = v59;
    v51 = v49;
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v45);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v53, "Freehand toolkit should not be nil while restoring view state.", 62, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v54 = swift_allocObject();
    v54[2] = 8;
    v54[3] = 0;
    v54[4] = 0;
    v54[5] = 0;
    v55 = __VaListBuilder.va_list()();
    StaticString.description.getter("restoreFreehandDrawingUIState(viewState:)", 41, 2);
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Freehand toolkit should not be nil while restoring view state.", 62, 2);
    v58 = String._bridgeToObjectiveC()();

    [v61 handleFailureInFunction:v56 file:v57 lineNumber:1164 isFatal:0 format:v58 args:v55];

LABEL_20:
    sub_100025870(v62, v2);
    return;
  }

  v10 = v9;
  [v9 setUpdatedToolkitUIStateFromArchive:v8];
  v11 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray;
  v12 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray);
  if (v12)
  {
    v13 = v12;
    sub_100F08C7C();
  }

  v14 = sub_101023BFC();

  sub_100025870(v6, v2);
  v15 = *(v5 + v11);
  *(v5 + v11) = v14;
}

void sub_1010236F0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 >> 60 == 15)
  {
    return;
  }

  v3 = *(a1 + 56);
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController);
  sub_100024E98(v3, v2);
  if ([v4 pencilMediator])
  {
    type metadata accessor for CRLiOSPencilMediator();
    if (swift_dynamicCastClass())
    {
      sub_100F96D9C(v3, v2);
      sub_100025870(v3, v2);

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  v28 = v3;
  v27 = objc_opt_self();
  v5 = [v27 _atomicIncrementAssertCount];
  v29 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v29, "invalid nil found when unwrapping value", 39, 2u);
  StaticString.description.getter("restorePencilMediatorUIState(viewState:)", 40, 2);
  v6 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v7 lastPathComponent];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v5;
  v14 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v14;
  v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v15;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for String;
  v16 = sub_1000053B0();
  *(inited + 112) = v9;
  *(inited + 120) = v11;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v16;
  *(inited + 152) = 1176;
  v17 = v29;
  *(inited + 216) = v14;
  *(inited + 224) = v15;
  *(inited + 192) = v17;
  v18 = v6;
  v19 = v17;
  v20 = static os_log_type_t.error.getter();
  sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v22 = swift_allocObject();
  v22[2] = 8;
  v22[3] = 0;
  v22[4] = 0;
  v22[5] = 0;
  v23 = __VaListBuilder.va_list()();
  StaticString.description.getter("restorePencilMediatorUIState(viewState:)", 40, 2);
  v24 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
  v26 = String._bridgeToObjectiveC()();

  [v27 handleFailureInFunction:v24 file:v25 lineNumber:1176 isFatal:0 format:v26 args:v23];

  sub_100025870(v28, v2);
}

char *sub_101023BFC()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  v2 = sub_101012FD4();
  v3 = objc_allocWithZone(type metadata accessor for CRLiOSPencilTray());
  v4 = v0;
  v5 = sub_10104F25C(v4, v1, v2, v3);
  result = [v4 view];
  if (result)
  {
    v7 = result;
    v8 = [result window];

    if (v8)
    {
      v9 = v8;
      sub_100F09EB4();
      sub_100F095C8();
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_101023CD0()
{
  v2 = v0;
  v3 = sub_1010243F4();
  if (!v3)
  {
    v4 = objc_opt_self();
    LODWORD(v2) = [v4 _atomicIncrementAssertCount];
    v30 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v30, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("updateUserActivities()", 22, 2);
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v13;

    if (qword_1019F20A0 == -1)
    {
LABEL_8:
      v14 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v2;
      v16 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v16;
      v17 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v17;
      *(inited + 72) = v6;
      *(inited + 136) = &type metadata for String;
      v18 = sub_1000053B0();
      *(inited + 112) = v1;
      *(inited + 120) = v7;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v18;
      *(inited + 152) = 1216;
      v19 = v30;
      *(inited + 216) = v16;
      *(inited + 224) = v17;
      *(inited + 192) = v19;
      v20 = v6;
      v21 = v19;
      v22 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v23, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v24 = swift_allocObject();
      v24[2] = 8;
      v24[3] = 0;
      v24[4] = 0;
      v24[5] = 0;
      v25 = __VaListBuilder.va_list()();
      StaticString.description.getter("updateUserActivities()", 22, 2);
      v26 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
      v27 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v28 = String._bridgeToObjectiveC()();

      [v4 handleFailureInFunction:v26 file:v27 lineNumber:1216 isFatal:0 format:v28 args:v25];

      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  v4 = v3;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_10146CE00;
  v6 = v4;
  *(v5 + 32) = sub_100C13ED8();
  *(v5 + 40) = sub_1000801B8();
  v7 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v5 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_14;
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v9 = v8;
  [v2 loadViewIfNeeded];
  sub_100D2D20C(v9);
  [v9 setNeedsSave:1];

  if (v7)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
    v29 = v10;

    [v2 loadViewIfNeeded];
    sub_100D2D20C(v29);
    [v29 setNeedsSave:1];

    return;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v10 = *(v5 + 40);
    goto LABEL_11;
  }

  __break(1u);
}

id sub_1010241BC(uint64_t a1)
{
  v2 = v1;
  [v2 loadViewIfNeeded];
  sub_100D2C8D0(v19);
  v4 = v23;
  if (v23 != 2)
  {
    v6 = *(&v21 + 1);
    v5 = v22;
    v8 = *(&v20 + 1);
    v7 = v21;
    v9 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    v12 = v19[0];
    *(v11 + 40) = v19[1];
    v13 = v21;
    *(v11 + 56) = v20;
    *(v11 + 72) = v13;
    *(v11 + 16) = v10;
    *(v11 + 88) = v22;
    *(v11 + 24) = v12;
    *(v11 + 96) = v4;
    v17[4] = sub_10105B42C;
    v17[5] = v11;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = *"";
    v17[2] = sub_100007638;
    v17[3] = &unk_1018AEEF8;
    v14 = _Block_copy(v17);
    sub_100024E84(v8, v7);
    sub_100024E84(v6, v5);

    [v9 performBlockOnMainThreadAfterLayoutIfNecessary:v14];
    sub_10000CAAC(v19, &qword_1019FE618, &qword_1014B6B70);
    _Block_release(v14);
    v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_didRestoreCanvasViewState] = 1;
  }

  v15 = type metadata accessor for CRLiOSBoardViewController(0);
  v18.receiver = v2;
  v18.super_class = v15;
  return objc_msgSendSuper2(&v18, "restoreUserActivityState:", a1);
}

id sub_1010243F4()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result window];

  if (v3)
  {
    v4 = [v3 windowScene];

    if (v4)
    {
      v5 = [v4 delegate];

      if (v5)
      {
        type metadata accessor for CRLiOSSceneDelegate(0);
        result = swift_dynamicCastClass();
        if (result)
        {
          return result;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  return 0;
}

void sub_1010244C0(char a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = *(*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  sub_1008FEE94(0);

  v8 = objc_opt_self();
  v9 = [v8 sharedApplication];
  v10 = [v9 isRunningTest];

  if (v10)
  {
    v11 = [v8 sharedApplication];
    v12 = [v11 delegate];

    if (!v12)
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRelease();
    v13 = qword_101AD75D0;
    if (qword_101AD75D0)
    {
      v14 = qword_101AD75E0;
      ObjectType = swift_getObjectType();
      v29[0] = v13;
      v16 = *(v14 + 40);
      swift_unknownObjectRetain();
      v16(v2, ObjectType, v14);
      swift_unknownObjectRelease();
    }
  }

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertingCancellableToken;
  v19 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertingCancellableToken];
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v19;
  sub_100641C1C(0, 0, v6, &unk_1014C23F0, v21);

  *&v2[v18] = 0;

  sub_101021D20();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = *(Strong + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers);
    if ([v24 containsObject:v2])
    {
      [v24 removeObject:v2];
    }
  }

  v29[3] = &type metadata for CRLFeatureFlags;
  v29[4] = sub_100004D60();
  LOBYTE(v29[0]) = 0;
  v25 = isFeatureEnabled(_:)();
  sub_100005070(v29);
  if (v25)
  {
    sub_101011590(0, 1);
  }

  v26 = type metadata accessor for CRLiOSBoardViewController(0);
  v28.receiver = v2;
  v28.super_class = v26;
  objc_msgSendSuper2(&v28, "viewWillDisappear:", a1 & 1);
}

void sub_101024838(char a1)
{
  v2 = v1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CRLiOSBoardViewController(0);
  objc_msgSendSuper2(&v20, "viewDidDisappear:", a1 & 1);
  v4 = [objc_opt_self() defaultCenter];
  if (qword_1019F16E8 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    [v4 removeObserver:v2 name:qword_101AD6870 object:*(*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController)];

    v5 = objc_opt_self();
    v6 = [v5 sharedApplication];
    v7 = [v6 isRunningTest];

    if (v7)
    {
      v8 = [v5 sharedApplication];
      v9 = [v8 delegate];

      if (!v9)
      {
        __break(1u);
        return;
      }

      swift_unknownObjectRelease();
      v10 = qword_101AD75D0;
      if (qword_101AD75D0)
      {
        v11 = qword_101AD75E0;
        ObjectType = swift_getObjectType();
        v19[0] = v10;
        v13 = *(v11 + 48);
        swift_unknownObjectRetain();
        v13(v2, ObjectType, v11);
        swift_unknownObjectRelease();
      }
    }

    v19[3] = &type metadata for CRLFeatureFlags;
    v19[4] = sub_100004D60();
    LOBYTE(v19[0]) = 0;
    v14 = isFeatureEnabled(_:)();
    sub_100005070(v19);
    if ((v14 & 1) == 0)
    {
      break;
    }

    v15 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipObservation;
    swift_beginAccess();
    v4 = *&v2[v15];
    if (!v4)
    {
      goto LABEL_13;
    }

    v16 = v4[2];

    if (!v16)
    {
LABEL_12:

LABEL_13:
      *&v2[v15] = 0;

      break;
    }

    v17 = 0;
    while (v17 < v4[2])
    {
      v18 = v17 + 1;

      Task.cancel()();

      v17 = v18;
      if (v16 == v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  if (*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_traitChangeRegistration])
  {
    swift_unknownObjectRetain();
    UIViewController.unregisterForTraitChanges(_:)();
    swift_unknownObjectRelease();
  }

  sub_10101DAB8(0);
}

id sub_101024B7C(uint64_t a1, double a2, double a3)
{
  v7 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  if ([objc_opt_self() crl_padUI])
  {
    v10 = [v3 presentedViewController];
    if (v10)
    {
      v11 = v10;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();

      if (v12)
      {
        v13 = [v3 presentedViewController];
        if (v13)
        {
          v14 = v13;
          [v13 dismissViewControllerAnimated:0 completion:0];
        }
      }
    }
  }

  v15 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState];
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = 0;
  v16 = v15;
  static Published.subscript.setter();
  sub_1010193C0();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  type metadata accessor for MainActor();
  v18 = v3;
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v18;
  sub_10064191C(0, 0, v9, &unk_1014C23E0, v20);

  v21 = type metadata accessor for CRLiOSBoardViewController(0);
  v24.receiver = v18;
  v24.super_class = v21;
  return objc_msgSendSuper2(&v24, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

uint64_t sub_101024DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_101024E60, v6, v5);
}

uint64_t sub_101024E60()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter();

  v3 = sub_100E9523C(v0[2]);
  v0[7] = v3;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_101024F74;

  return sub_1010250B8(v3);
}

uint64_t sub_101024F74()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100658F10, v3, v2);
}

uint64_t sub_1010250B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_101025154, v4, v3);
}

uint64_t sub_101025154()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_101051ABC(v1, v2);

  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
    return _swift_task_switch(v4, v5, v6);
  }

  v7 = v4;
  v8 = [v4 window];

  if (v8)
  {
    v9 = [v8 windowScene];

    if (v9)
    {
      v10 = [v9 delegate];
      *(v0 + 64) = v10;

      if (v10)
      {
        type metadata accessor for CRLiOSSceneDelegate(0);
        v11 = swift_dynamicCastClass();
        *(v0 + 72) = v11;
        if (v11)
        {
          swift_unknownObjectRetain();
          *(v0 + 80) = sub_100E94184(v3);

          *(v0 + 88) = static MainActor.shared.getter();
          v12 = dispatch thunk of Actor.unownedExecutor.getter();
          v6 = v13;
          *(v0 + 96) = v12;
          *(v0 + 104) = v13;
          v4 = sub_10102532C;
          v5 = v12;

          return _swift_task_switch(v4, v5, v6);
        }

        swift_unknownObjectRelease();
      }
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

void sub_10102532C()
{
  sub_1000505F0();
  v0[14] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_1010253D8;
    v3 = v0[10];

    sub_1006DED74(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1010253D8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return _swift_task_switch(sub_101025534, v4, v3);
}

uint64_t sub_101025534()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_1010255A4, v1, v2);
}

uint64_t sub_1010255A4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

id sub_101025690(uint64_t a1, uint64_t a2)
{
  v13[3] = &type metadata for CRLFeatureFlags;
  v13[4] = sub_100004D60();
  LOBYTE(v13[0]) = 20;
  v5 = isFeatureEnabled(_:)();
  sub_100005070(v13);
  if ((v5 & 1) != 0 && [objc_opt_self() crl_padUI])
  {
    v6 = v2;
    v7 = v6;
    while (1)
    {
      v8 = v7;
      v7 = [v7 presentedViewController];

      if (!v7)
      {
        break;
      }

      type metadata accessor for CRLScenesViewController_iv();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for CRLCompactScenesViewController_i();
        if (!swift_dynamicCastClass())
        {
          continue;
        }
      }

      v9 = [v6 presentedViewController];
      if (v9)
      {
        v10 = v9;
        [v9 dismissViewControllerAnimated:0 completion:0];
      }

      break;
    }
  }

  v12.receiver = v2;
  v12.super_class = type metadata accessor for CRLiOSBoardViewController(0);
  return objc_msgSendSuper2(&v12, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
}

uint64_t sub_101025860()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1005F1164;

  return sub_100664A0C();
}

id sub_1010259A4()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = result;
  v3 = sub_101014120();
  [v2 addLayoutGuide:v3];

  v4 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___keyboardFrameLayoutGuide;
  v5 = [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___keyboardFrameLayoutGuide] leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = [result leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [*&v0[v4] trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  v11 = [result trailingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [*&v0[v4] bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = result;
  v15 = [result bottomAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [*&v0[v4] topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = result;
  v19 = [result bottomAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  v21 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_keyboardTopEdgeLayoutGuideConstraint];
  *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_keyboardTopEdgeLayoutGuideConstraint] = v20;
  v22 = v20;

  [v22 setActive:1];
  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = result;
  v24 = sub_101014114();
  [v23 addLayoutGuide:v24];

  v25 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___unobscuredRectLayout;
  v26 = [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___unobscuredRectLayout] leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = result;
  v28 = [result leadingAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  v30 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_leadingUnobscuredRectLayoutGuideConstraint;
  v31 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_leadingUnobscuredRectLayoutGuideConstraint];
  *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_leadingUnobscuredRectLayoutGuideConstraint] = v29;

  v32 = [*&v0[v25] trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v33 = result;
  v34 = [result trailingAnchor];

  v35 = [v32 constraintEqualToAnchor:v34];
  v36 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_trailingUnobscuredRectLayoutGuideConstraint;
  v37 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_trailingUnobscuredRectLayoutGuideConstraint];
  *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_trailingUnobscuredRectLayoutGuideConstraint] = v35;

  v38 = [*&v0[v25] topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v39 = result;
  v40 = [result topAnchor];

  v41 = [v38 constraintEqualToAnchor:v40];
  v42 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_topUnobscuredRectLayoutGuideConstraint;
  v43 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_topUnobscuredRectLayoutGuideConstraint];
  *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_topUnobscuredRectLayoutGuideConstraint] = v41;

  v44 = [*&v0[v25] bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v45 = result;
  v46 = [result bottomAnchor];

  v47 = [v44 constraintEqualToAnchor:v46];
  v48 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomUnobscuredRectLayoutGuideConstraint;
  v49 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomUnobscuredRectLayoutGuideConstraint];
  *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomUnobscuredRectLayoutGuideConstraint] = v47;

  [*&v0[v30] setActive:1];
  [*&v0[v36] setActive:1];
  [*&v0[v42] setActive:1];
  v50 = *&v0[v48];

  return [v50 setActive:1];
}

void sub_101025F4C()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_81;
  }

  v2 = v1;
  [v1 safeAreaInsets];
  v4 = v3;
  v147 = v6;
  v148 = v5;
  v8 = v7;

  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v13 = [v0 presentedViewController];
  if (!v13 || (v14 = v13, v15 = [v13 isBeingDismissed], v14, v16 = bottom, v15))
  {
    v17 = [objc_opt_self() sharedKeyboardMonitor];
    [v17 onScreenHeight];
    v19 = v18;

    if (bottom >= v19)
    {
      v16 = bottom;
    }

    else
    {
      v16 = v19;
    }
  }

  if (left <= 0.0)
  {
    v20 = left;
  }

  else
  {
    v20 = left - v148;
  }

  v21 = right - v147;
  if (right <= 0.0)
  {
    v21 = right;
  }

  v150 = v21;
  if (UIEdgeInsetsZero.top <= 0.0)
  {
    v22 = UIEdgeInsetsZero.top;
  }

  else
  {
    v22 = UIEdgeInsetsZero.top - v4;
  }

  v23 = bottom;
  if (v16 > 0.0)
  {
    v23 = v16 - v8;
    v24 = [v0 traitCollection];
    v25 = [v24 horizontalSizeClass];

    if (v25 == 1 || [objc_opt_self() crl_phoneUI])
    {
      v26 = [objc_opt_self() sharedKeyboardMonitor];
      [v26 keyboardFrame];
      v28 = v27;
      v142 = v30;
      v144 = v29;
      v141 = v31;

      v32 = [v0 view];
      if (v32)
      {
        v33 = v32;
        v34 = [v32 window];
        if (v34 && (v35 = v34, v36 = [v34 screen], v35, v37 = objc_msgSend(v36, "coordinateSpace"), v36, v37))
        {
          [v33 convertRect:v37 fromCoordinateSpace:{v28, v144, v142, v141}];
          MaxY = CGRectGetMaxY(v153);
          [v33 bounds];
          v38 = v23;
          v39 = CGRectGetMaxY(v154);
          swift_unknownObjectRelease();

          v23 = v38 + v39 - MaxY;
        }

        else
        {
        }
      }
    }
  }

  v40 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasScrollViewController;
  v41 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasScrollViewController];
  if (v41)
  {
    [v41 additionalSafeAreaInsets];
    top = v42;
    left = v43;
    bottom = v44;
    right = v45;
  }

  v46 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView];
  if (top != v22 || left != v20 || bottom != v23 || right != v150)
  {
    v50 = v23;
    v51 = v20;
    [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView] safeAreaInsets];
    v53 = v52;
    v55 = v54;
    v141 = v56;
    [v46 contentOffset];
    v58 = v57;
    v60 = v59;
    [v46 contentSize];
    v143 = v62;
    v146 = v61;
    [*&v0[v40] setAdditionalSafeAreaInsets:{v22, v51, v50, v150}];
    v63 = [v46 safeAreaInsets];
    v68 = v66;
    if (v53 != v65)
    {
      v72 = v65 < fabs(v60) && v60 < 0.0;
      v73 = -v65;
      if (v72)
      {
        v60 = v73;
      }

      goto LABEL_51;
    }

    if (v55 == v66)
    {
      v69 = v141;
      if (v141 == v67)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v69 = v141;
      if (v141 == v67)
      {
        goto LABEL_51;
      }
    }

    v63 = [v46 contentOffset];
    v60 = v74;
LABEL_51:
    if (v58 < 0.0 && v68 < fabs(v58) && sub_100076BAC(v63, v64))
    {
      v58 = -v68;
    }

    [v46 setContentOffset:v58 relativeToOriginalSize:{v60, v146, v143}];
    goto LABEL_56;
  }

  v70 = [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView] delegate];
  if (v70)
  {
    v71 = v70;
    if ([v70 respondsToSelector:"scrollViewDidChangeAdjustedContentInset:"])
    {
      [v71 scrollViewDidChangeAdjustedContentInset:v46];
    }

    swift_unknownObjectRelease();
  }

LABEL_56:
  v75 = *&v0[v40];
  v151 = v75;
  [v46 contentInset];
  if (v75)
  {
    v77 = v76;
    [v151 additionalSafeAreaInsets];
    v78 = 0.0;
    v79 = 0.0;
    if (v80 == 0.0)
    {
      v81 = [v0 view];
      if (!v81)
      {
LABEL_84:
        __break(1u);
        return;
      }

      v82 = v81;
      [v81 safeAreaInsets];
      v84 = v83;

      v79 = -v84;
    }

    [v151 additionalSafeAreaInsets];
    if (v85 == 0.0)
    {
      v86 = -v148;
    }

    else
    {
      v86 = 0.0;
    }

    [v151 additionalSafeAreaInsets];
    if (v87 == 0.0)
    {
      v78 = -v147;
    }

    v76 = v77;
  }

  else
  {
    v78 = 0.0;
    v86 = 0.0;
    v79 = 0.0;
  }

  [v46 setContentInset:{v76, v86, v79, v78, *&v141}];
  sub_1010549A0();
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  if (sub_1004A48FC())
  {
    v96 = v95;
    v97 = [v0 view];
    if (!v97)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v98 = v97;
    [v97 frame];
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v106 = v105;

    v155.origin.x = v100;
    v155.origin.y = v102;
    v155.size.width = v104;
    v155.size.height = v106;
    MaxX = CGRectGetMaxX(v155);
    v108 = v89;
    v156.origin.x = v89;
    v109 = v91;
    v156.origin.y = v91;
    v110 = v93;
    v156.size.width = v93;
    v111 = v96;
    v156.size.height = v96;
    v112 = MaxX - CGRectGetMaxX(v156);
    v157.origin.x = v108;
    v157.origin.y = v109;
    v157.size.width = v110;
    v157.size.height = v96;
    MinX = CGRectGetMinX(v157);
  }

  else
  {
    v158.origin.x = v89;
    v158.origin.y = v91;
    v158.size.width = v93;
    v158.size.height = v95;
    v149 = CGRectGetMinX(v158);
    v114 = [v0 view];
    if (!v114)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v115 = v114;
    [v114 frame];
    v117 = v116;
    v119 = v118;
    v121 = v120;
    v123 = v122;

    v159.origin.x = v117;
    v159.origin.y = v119;
    v159.size.width = v121;
    v159.size.height = v123;
    v124 = CGRectGetMaxX(v159);
    v160.origin.x = v89;
    v160.origin.y = v91;
    v160.size.width = v93;
    v160.size.height = v95;
    MinX = v124 - CGRectGetMaxX(v160);
    v108 = v89;
    v109 = v91;
    v110 = v93;
    v111 = v95;
    v112 = v149;
  }

  v125 = -MinX;
  [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_leadingUnobscuredRectLayoutGuideConstraint] setConstant:v112];
  [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_trailingUnobscuredRectLayoutGuideConstraint] setConstant:v125];
  v126 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_topUnobscuredRectLayoutGuideConstraint];
  if (v126)
  {
    v127 = v126;
    v161.origin.x = v108;
    v161.origin.y = v109;
    v161.size.width = v110;
    v161.size.height = v111;
    [v127 setConstant:CGRectGetMinY(v161)];
  }

  v128 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomUnobscuredRectLayoutGuideConstraint];
  if (!v128)
  {
    goto LABEL_77;
  }

  v129 = v128;
  v130 = [v0 view];
  if (!v130)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v131 = v130;
  [v130 frame];
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;

  v162.origin.x = v133;
  v162.origin.y = v135;
  v162.size.width = v137;
  v162.size.height = v139;
  v140 = CGRectGetMaxY(v162);
  v163.origin.x = v108;
  v163.origin.y = v109;
  v163.size.width = v110;
  v163.size.height = v111;
  [v129 setConstant:-(v140 - CGRectGetMaxY(v163))];

LABEL_77:
}

uint64_t sub_101026768(uint64_t a1)
{
  v55 = a1;
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_101027A80();
  v54 = v1;
  v15 = *(*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v16 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v17 = *&v15[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v18 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_100050004(v17 + v18, v8, type metadata accessor for CRLBoardCRDTData);
  v19 = v15;
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D7BC(v8, type metadata accessor for CRLBoardCRDTData);
  v20 = (*&v15[v16] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v21 = *v20;
  v22 = v20[1];

  sub_10084BD4C(v11, v21, v22, v14);

  v23 = v14;
  (*(v3 + 16))(v5, v55, v2);
  sub_100F7CC80(v5, v59);
  if (!v59[0])
  {
    return sub_10003D7BC(v23, type metadata accessor for CRLBoardIdentifier);
  }

  v25 = v59[3];
  v24 = v59[4];
  v26 = v59[1];
  v27 = v59[2];
  v61 = v59[0];
  sub_10000CAAC(&v61, &unk_1019FB880, &unk_101474EC0);
  v62 = v27;
  sub_10000CAAC(&v62, &unk_101A22E80, &unk_1014A08B0);
  v63 = v25;
  sub_10000CAAC(&v63, &qword_1019FB890, &qword_101474ED0);
  v64 = v24;
  sub_10000CAAC(&v64, &qword_1019FB890, &qword_101474ED0);
  LOBYTE(v25) = sub_10079DDA0(v14, v26);

  if ((v25 & 1) == 0)
  {
    return sub_10003D7BC(v23, type metadata accessor for CRLBoardIdentifier);
  }

  v28 = v54;
  if (v54[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_skipNextToolbarUpdate])
  {
    v54[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_skipNextToolbarUpdate] = 0;
  }

  else if (v54[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] == 1)
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlDefault;
    v30 = static os_log_type_t.info.getter();
    sub_100005404(v29, &_mh_execute_header, v30, "Skipping request to update toolbar buttons after teardown.", 58, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v31 = [v54 traitCollection];
    sub_100642864(v31, [*&v28[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly], v60);
    sub_100642CDC(v60, 0);
    sub_1005EB2D4(v60);
  }

  v32 = sub_10102983C();
  v33 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled;
  v34 = v28[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled];
  if (v34 == 2)
  {
    LOBYTE(v34) = sub_10102983C();
    v28[v33] = v34 & 1;
  }

  if ((v32 & 1) != (v34 & 1))
  {
    v28[v33] = v32 & 1;
    [*&v28[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] updateCanvasDotGridVisibilityIfNeeded];
    v57 = &type metadata for CRLFeatureFlags;
    v58 = sub_100004D60();
    LOBYTE(v56[0]) = 10;
    v35 = isFeatureEnabled(_:)();
    sub_100005070(v56);
    if (v35)
    {
      v36 = *&v28[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
      if (v36)
      {
        v37 = v36;
        sub_100ACD8C0(0);
      }
    }
  }

  v57 = &type metadata for CRLFeatureFlags;
  v38 = sub_100004D60();
  v58 = v38;
  LOBYTE(v56[0]) = 10;
  v39 = isFeatureEnabled(_:)();
  sub_100005070(v56);
  if (v39)
  {
    v40 = sub_10102A558();
    v41 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled;
    v42 = v28[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled];
    if (v42 == 2)
    {
      LOBYTE(v42) = sub_10102A558();
      v28[v41] = v42 & 1;
    }

    if ((v40 & 1) != (v42 & 1))
    {
      v28[v41] = v40 & 1;
      sub_10102A85C();
    }
  }

  v57 = &type metadata for CRLFeatureFlags;
  v58 = v38;
  LOBYTE(v56[0]) = 20;
  v43 = isFeatureEnabled(_:)();
  sub_100005070(v56);
  if ((v43 & 1) == 0)
  {
    return sub_10003D7BC(v23, type metadata accessor for CRLBoardIdentifier);
  }

  v44 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState;
  v45 = *&v28[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
  v46 = *(v45 + OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_toggledOpenStateLocallySinceLastLibrarySnapshotUpdate);
  *(v45 + OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_toggledOpenStateLocallySinceLastLibrarySnapshotUpdate) = 0;
  v47 = sub_10102AA70();
  v48 = *&v28[v44];
  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v48;
  static Published.subscript.getter();

  if (((v47 ^ LOBYTE(v56[0])) & 1) != 0 && (v46 & 1) == 0)
  {
    v50 = *&v28[v44];
    sub_10091FD94(v47 & 1);
  }

  sub_1010193C0();
  v51 = sub_10064E0E4();
  sub_10003D7BC(v23, type metadata accessor for CRLBoardIdentifier);
  *&v28[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem] = v51;
}

uint64_t sub_101026F10()
{
  v1[21] = v0;
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v3;
  v1[24] = v2;

  return _swift_task_switch(sub_101026FA8, v3, v2);
}

uint64_t sub_101026FA8()
{
  v1 = sub_101027840();
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = objc_opt_self();
  if ([v6 crl_iPadDevice])
  {
    if (v1)
    {
      goto LABEL_5;
    }
  }

  else if (v1)
  {
LABEL_5:
    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    goto LABEL_7;
  }

  [v6 crl_iPadDevice];
  v7 = [objc_opt_self() mainBundle];
  v8 = String._bridgeToObjectiveC()();
LABEL_7:
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];
  v11 = v0[21];
  v12 = v10;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];
  v0[25] = v15;

  v16 = [objc_opt_self() mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  v21 = v11;
  v22 = String._bridgeToObjectiveC()();

  v0[15] = sub_100ABD590;
  v0[16] = v20;
  v0[11] = _NSConcreteStackBlock;
  v0[12] = *"";
  v0[13] = sub_10068B39C;
  v0[14] = &unk_1018AEC28;
  v23 = _Block_copy(v0 + 11);

  v24 = [objc_opt_self() actionWithTitle:v22 style:1 handler:v23];
  v0[26] = v24;
  _Block_release(v23);

  [v15 addAction:v24];
  v25 = swift_task_alloc();
  v0[27] = v25;
  *v25 = v0;
  v25[1] = sub_101027518;

  return sub_100D1C8E8(v15, 1);
}

uint64_t sub_101027518()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1010276C8;
  }

  else
  {
    v5 = sub_101027654;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_101027654()
{
  v2 = v0[25];
  v1 = v0[26];

  sub_1011047E4(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1010276C8()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[26];
  v3 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v5 = Error.localizedDescription.getter();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v8 = static os_log_type_t.error.getter();
  sub_100005404(v3, &_mh_execute_header, v8, "Caught error trying to present alert for handling unsupported board: %@", 71, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  v9 = v0[1];

  return v9();
}

uint64_t sub_101027840()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 dictionaryForKey:v2];

  if (v3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = sub_100078EA4(_swiftEmptyArrayStorage);
  }

  v5 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_CRLUnsupportedDevicesKey + 8);
  v16 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_CRLUnsupportedDevicesKey);
  v17 = v5;

  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v6 = sub_1000640CC(v18), (v7 & 1) == 0))
  {

    sub_100064234(v18);
    goto LABEL_9;
  }

  sub_100064288(*(v4 + 56) + 32 * v6, v19);
  sub_100064234(v18);

  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v13 = 1;
    return v13 & 1;
  }

  v8 = [objc_opt_self() crl_platformString];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v18[0] = v9;
  v18[1] = v11;
  __chkstk_darwin(v12);
  v15[2] = v18;
  LOBYTE(v8) = sub_100C08644(sub_1008335B4, v15, v16);

  v13 = v8 ^ 1;
  return v13 & 1;
}

uint64_t sub_101027A80()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v34 = _s4NodeVMa(0);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v17 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v18 = *&v16[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v19 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_100050004(v18 + v19, v9, type metadata accessor for CRLBoardCRDTData);
  v20 = v16;
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D7BC(v9, type metadata accessor for CRLBoardCRDTData);
  v21 = (*&v16[v17] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v22 = *v21;
  v23 = v21[1];

  sub_10084BD4C(v12, v22, v23, v15);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = *(Strong + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
    v26 = Strong;

    __chkstk_darwin(v27);
    *(&v32 - 2) = v15;
    sub_10003CF3C(1, sub_1006EEE54, (&v32 - 4), v25, v4);

    if ((*(v5 + 48))(v4, 1, v34) != 1)
    {
      v28 = v33;
      sub_100046238(v4, v33, _s4NodeVMa);
      v29 = sub_100F88220();
      sub_10064253C(v29, v30);

      sub_10003D7BC(v28, _s4NodeVMa);
      return sub_10003D7BC(v15, type metadata accessor for CRLBoardIdentifier);
    }
  }

  else
  {
    (*(v5 + 56))(v4, 1, 1, v34);
  }

  sub_10003D7BC(v15, type metadata accessor for CRLBoardIdentifier);
  return sub_10000CAAC(v4, &unk_1019FB770, &unk_10146FA30);
}

double sub_101027EC0(uint64_t a1, unint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_100050004(v11 + v12, v10, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  CRRegister.wrappedValue.getter();
  sub_10003D7BC(v10, type metadata accessor for CRLBoardCRDTData);
  v14 = v25[1];
  v13 = v25[2];
  v15 = String.count.getter();

  v16 = a1;
  v17 = a2;
  if (v15 >= 256)
  {
    sub_10105235C(255, a1, a2);

    v16 = static String._fromSubstring(_:)();
    v17 = v18;
  }

  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19 || v16 == v14 && v17 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = &protocol witness table for MainActor;
    v24[4] = v22;
    v24[5] = v16;
    v24[6] = v17;
    v24[7] = v14;
    v24[8] = v13;
    v24[9] = a1;
    v24[10] = a2;

    sub_10064191C(0, 0, v7, &unk_1014C22C8, v24);
  }

  return result;
}

uint64_t sub_10102820C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = v13;
  v8[35] = v14;
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[29] = a4;
  type metadata accessor for CRLBoardCRDTData(0);
  v8[36] = swift_task_alloc();
  type metadata accessor for UUID();
  v8[37] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v8[38] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[39] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[40] = v10;
  v8[41] = v9;

  return _swift_task_switch(sub_10102833C, v10, v9);
}

void sub_10102833C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 336) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 296);
    v2 = *(v0 + 304);
    v4 = *(v0 + 288);
    v6 = *(v0 + 240);
    v5 = *(v0 + 248);
    v7 = *(*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v8 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v9 = *&v7[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v10 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_100050004(v9 + v10, v4, type metadata accessor for CRLBoardCRDTData);
    v11 = v7;
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    CRRegister.wrappedValue.getter();
    sub_10003D7BC(v4, type metadata accessor for CRLBoardCRDTData);
    v12 = (*&v7[v8] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v13 = *v12;
    v14 = v12[1];

    sub_10084BD4C(v3, v13, v14, v2);

    v15 = type metadata accessor for CRLSetBoardTitleCommand(0);
    v16 = objc_allocWithZone(v15);
    v17 = &v16[OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_previousBoardTitle];
    *v17 = 0;
    *(v17 + 1) = 0;
    sub_100050004(v2, &v16[OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_boardIdentifier], type metadata accessor for CRLBoardIdentifier);
    v18 = &v16[OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_boardTitle];
    *v18 = v6;
    *(v18 + 1) = v5;
    *(v0 + 200) = v16;
    *(v0 + 208) = v15;

    v19 = objc_msgSendSuper2((v0 + 200), "init");
    *(v0 + 344) = v19;
    sub_10003D7BC(v2, type metadata accessor for CRLBoardIdentifier);
    sub_101052810();
    *(v0 + 352) = v20;
    if (v20)
    {
      v21 = swift_task_alloc();
      *(v0 + 360) = v21;
      *v21 = v0;
      v21[1] = sub_101028630;

      sub_100FAEB7C(v19);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v22 = *(v0 + 8);

    v22();
  }
}

uint64_t sub_101028630()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_1010289EC;
  }

  else
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_10102874C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10102874C()
{
  *(v0 + 376) = [*(v0 + 336) navigationItem];
  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  *v1 = v0;
  v1[1] = sub_1010287F8;

  return sub_100645E0C();
}

uint64_t sub_1010287F8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 392) = a1;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);

  return _swift_task_switch(sub_101028920, v4, v3);
}

uint64_t sub_101028920()
{
  v1 = v0[49];
  v2 = v0[47];
  v3 = v0[42];
  v4 = v0[43];
  v6 = v0[30];
  v5 = v0[31];

  [v2 setDocumentProperties:v1];

  sub_10064253C(v6, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1010289EC()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);

  sub_10064253C(v5, v4);
  *(v0 + 216) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 184);
    v8 = *(v0 + 192);
    sub_1007B0838(v6, v7, v8);
    if (v9)
    {
      sub_1007B0970(v6, v7, v8);
      v11 = v10;
      sub_10070C20C(v6, v7, v8);
      if (v11)
      {
        v12 = *(v0 + 336);
        v13 = String._bridgeToObjectiveC()();

        v14 = String._bridgeToObjectiveC()();

        v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

        v16 = [objc_opt_self() mainBundle];
        v17 = String._bridgeToObjectiveC()();
        v18 = String._bridgeToObjectiveC()();
        v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = String._bridgeToObjectiveC()();

        v21 = [objc_opt_self() actionWithTitle:v20 style:0 handler:0];

        [v15 addAction:v21];
        [v12 presentViewController:v15 animated:1 completion:0];

        goto LABEL_10;
      }
    }

    else
    {
      sub_10070C20C(v6, v7, v8);
    }
  }

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 368);
  v33 = *(v0 + 336);
  v24 = *(v0 + 272);
  v23 = *(v0 + 280);
  v25 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for String;
  v27 = sub_1000053B0();
  *(inited + 64) = v27;
  *(inited + 32) = v24;
  *(inited + 40) = v23;
  *(v0 + 224) = v22;
  swift_errorRetain();

  v28 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v27;
  *(inited + 72) = v28;
  *(inited + 80) = v29;
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v30, "Error renaming item (%@): %@", 28, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
LABEL_10:

  v31 = *(v0 + 8);

  return v31();
}

void sub_101028E9C(char a1)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17[-1] - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a1 & 1;
    v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled] = a1 & 1;
    v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_skipNextToolbarUpdate] = 1;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v1;
    *(v10 + 48) = v8;
    v11 = v7;
    v12 = v1;
    sub_100CA64C8(0, 0, v5, &unk_1014C22B0, v10);

    sub_10000CAAC(v5, &qword_1019FB750, &qword_10146F1B0);
    [*&v12[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] updateCanvasDotGridVisibilityIfNeeded];
    v17[3] = &type metadata for CRLFeatureFlags;
    v17[4] = sub_100004D60();
    LOBYTE(v17[0]) = 10;
    v13 = isFeatureEnabled(_:)();
    sub_100005070(v17);
    if (v13)
    {
      v14 = *&v12[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
      if (v14)
      {
        v15 = v14;
        sub_100ACD8C0(0);
      }
    }
  }
}

uint64_t sub_101029084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 188) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  type metadata accessor for CRLBoardCRDTData(0);
  *(v6 + 96) = swift_task_alloc();
  type metadata accessor for UUID();
  *(v6 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_101029144, 0, 0);
}

uint64_t sub_101029144()
{
  sub_1005B981C(&qword_101A28700, &unk_101494A70);
  v1 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  *(v0 + 112) = v1;
  *(v0 + 184) = *(*(v1 - 8) + 80);
  v2 = swift_allocObject();
  *(v0 + 120) = v2;
  *(v2 + 16) = xmmword_10146C6B0;
  *(v0 + 128) = type metadata accessor for MainActor();
  *(v0 + 136) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101029274, v4, v3);
}

uint64_t sub_101029274()
{
  v1 = *(v0 + 88);

  v2 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  *(v0 + 144) = v2;
  v3 = v2;

  return _swift_task_switch(sub_101029308, 0, 0);
}

uint64_t sub_101029308()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v16 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 188);
  v6 = v2 + ((*(v0 + 184) + 32) & ~*(v0 + 184));
  v7 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v8 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_100050004(v8 + v9, v3, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D7BC(v3, type metadata accessor for CRLBoardCRDTData);
  v10 = (*&v1[v7] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v11 = *v10;
  v12 = v10[1];

  sub_10084BD4C(v4, v11, v12, v6);

  *(v6 + *(v16 + 20)) = v5;
  v13 = sub_1005BFFE8(v2);
  *(v0 + 152) = v13;
  swift_setDeallocating();
  sub_10003D7BC(v6, type metadata accessor for CRLBoardIdentifierAndValue);
  swift_deallocClassInstance();
  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  *v14 = v0;
  v14[1] = sub_1010294F0;

  return sub_1010B5C4C(v13);
}

uint64_t sub_1010294F0()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10102963C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10102963C()
{

  *(v0 + 176) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010296D0, v2, v1);
}

uint64_t sub_1010296D0()
{
  v1 = *(v0 + 188);
  v2 = *(v0 + 88);

  *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled) = (v1 & 1) == 0;
  [*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) updateCanvasDotGridVisibilityIfNeeded];
  *(v0 + 40) = &type metadata for CRLFeatureFlags;
  v3 = sub_100004D60();
  *(v0 + 16) = 10;
  *(v0 + 48) = v3;
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100005070((v0 + 16));
  if (v2)
  {
    v4 = *(*(v0 + 88) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController);
    if (v4)
    {
      v5 = v4;
      sub_100ACD8C0(0);
    }
  }

  return _swift_task_switch(sub_1010297CC, 0, 0);
}

uint64_t sub_1010297CC()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10102983C()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s5BoardVMa(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v16 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v17 = *&v15[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v18 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_100050004(v17 + v18, v3, type metadata accessor for CRLBoardCRDTData);
    v19 = v15;
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    CRRegister.wrappedValue.getter();
    sub_10003D7BC(v3, type metadata accessor for CRLBoardCRDTData);
    v20 = (*&v15[v16] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v21 = *v20;
    v22 = v20[1];

    sub_10084BD4C(v6, v21, v22, v9);

    sub_1010AB99C(v9, v12);
    sub_10003D7BC(v9, type metadata accessor for CRLBoardIdentifier);

    v23 = v12[*(v10 + 44)];
    sub_10003D7BC(v12, _s5BoardVMa);
    return v23;
  }

  return result;
}

uint64_t sub_101029B48(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a3;
  v5 = a1[*a3];
  if (v5 == 2)
  {
    v8 = a1;
    LOBYTE(v5) = a4();
    a1[v4] = v5 & 1;
  }

  return v5 & 1;
}

void sub_101029C04(char a1)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a1 & 1;
    v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled] = a1 & 1;
    v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_skipNextToolbarUpdate] = 1;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v1;
    *(v10 + 48) = v8;
    v11 = v7;
    v12 = v1;
    sub_100CA64C8(0, 0, v5, &unk_1014C2298, v10);

    sub_10000CAAC(v5, &qword_1019FB750, &qword_10146F1B0);
    v13 = [v12 traitCollection];
    if ([v13 horizontalSizeClass] == 1)
    {
    }

    else
    {
      v14 = [objc_opt_self() crl_phoneUI];

      if ((v14 & 1) == 0)
      {
        v15 = [*&v12[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] miniFormatterPresenter];
        if (v15)
        {
          [v15 dismissMiniFormatter];
          swift_unknownObjectRelease();
        }
      }
    }

    sub_10102A85C();
  }
}

uint64_t sub_101029E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 148) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  type metadata accessor for CRLBoardCRDTData(0);
  *(v6 + 56) = swift_task_alloc();
  type metadata accessor for UUID();
  *(v6 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_101029ED4, 0, 0);
}

uint64_t sub_101029ED4()
{
  sub_1005B981C(&qword_101A28700, &unk_101494A70);
  v1 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  *(v0 + 72) = v1;
  *(v0 + 144) = *(*(v1 - 8) + 80);
  v2 = swift_allocObject();
  *(v0 + 80) = v2;
  *(v2 + 16) = xmmword_10146C6B0;
  *(v0 + 88) = type metadata accessor for MainActor();
  *(v0 + 96) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10102A004, v4, v3);
}

uint64_t sub_10102A004()
{
  v1 = *(v0 + 48);

  v2 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  *(v0 + 104) = v2;
  v3 = v2;

  return _swift_task_switch(sub_10102A098, 0, 0);
}

uint64_t sub_10102A098()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v16 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 148);
  v6 = v2 + ((*(v0 + 144) + 32) & ~*(v0 + 144));
  v7 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v8 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_100050004(v8 + v9, v3, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D7BC(v3, type metadata accessor for CRLBoardCRDTData);
  v10 = (*&v1[v7] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v11 = *v10;
  v12 = v10[1];

  sub_10084BD4C(v4, v11, v12, v6);

  *(v6 + *(v16 + 20)) = v5;
  v13 = sub_1005BFFE8(v2);
  *(v0 + 112) = v13;
  swift_setDeallocating();
  sub_10003D7BC(v6, type metadata accessor for CRLBoardIdentifierAndValue);
  swift_deallocClassInstance();
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_10102A280;

  return sub_1010B5FA4(v13);
}

uint64_t sub_10102A280()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10102A3CC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10102A3CC()
{

  *(v0 + 136) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10102A460, v2, v1);
}

uint64_t sub_10102A460()
{
  v1 = *(v0 + 148);
  v2 = *(v0 + 48);

  *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled) = (v1 & 1) == 0;
  sub_10102A85C();

  return _swift_task_switch(sub_10102A4E8, 0, 0);
}

uint64_t sub_10102A4E8()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10102A558()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s5BoardVMa(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v16 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v17 = *&v15[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v18 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_100050004(v17 + v18, v3, type metadata accessor for CRLBoardCRDTData);
    v19 = v15;
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    CRRegister.wrappedValue.getter();
    sub_10003D7BC(v3, type metadata accessor for CRLBoardCRDTData);
    v20 = (*&v15[v16] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v21 = *v20;
    v22 = v20[1];

    sub_10084BD4C(v6, v21, v22, v9);

    sub_1010AB99C(v9, v12);
    sub_10003D7BC(v9, type metadata accessor for CRLBoardIdentifier);

    v23 = v12[*(v10 + 48)];
    sub_10003D7BC(v12, _s5BoardVMa);
    return v23;
  }

  return result;
}

void sub_10102A85C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled);
  if (v3 == 2)
  {
    LOBYTE(v3) = sub_10102A558();
    *(v0 + v2) = v3 & 1;
  }

  v4 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewState;
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewState);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  static Published.subscript.getter();

  v7 = *(v0 + v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  static Published.subscript.setter();
  if ((v3 & 1) != v15)
  {
    if ((v3 & 1) == 0)
    {
      v9 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
      v10 = *(v1 + v4);
      [v9 anyConnectorKnobVisible];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }

    v11 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    [v11 updateConnectorKnobVisibilityIfNeeded];
    v12 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController);
    if (v12)
    {
      v13 = v12;
      sub_100ACE1DC(0);
    }

    if (v3)
    {
      v14 = *(v1 + v4);
      [v11 anyConnectorKnobVisible];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }
  }
}

void *sub_10102AA70()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s5BoardVMa(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v16 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v17 = *&v15[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v18 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_100050004(v17 + v18, v3, type metadata accessor for CRLBoardCRDTData);
    v19 = v15;
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    CRRegister.wrappedValue.getter();
    sub_10003D7BC(v3, type metadata accessor for CRLBoardCRDTData);
    v20 = (*&v15[v16] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v21 = *v20;
    v22 = v20[1];

    sub_10084BD4C(v6, v21, v22, v9);

    sub_1010AB99C(v9, v12);
    sub_10003D7BC(v9, type metadata accessor for CRLBoardIdentifier);

    v23 = v12[*(v10 + 64)];
    sub_10003D7BC(v12, _s5BoardVMa);
    return v23;
  }

  return result;
}

void sub_10102ADC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  __chkstk_darwin(v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v17 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v18 = *&v16[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v19 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_100050004(v18 + v19, v9, type metadata accessor for CRLBoardCRDTData);
  v20 = v16;
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D7BC(v9, type metadata accessor for CRLBoardCRDTData);
  v21 = (*&v16[v17] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v22 = *v21;
  v23 = v21[1];

  sub_10084BD4C(v12, v22, v23, v15);

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    sub_10003D7BC(v15, type metadata accessor for CRLBoardIdentifier);
    return;
  }

  v24 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v25 = *&v15[v24];
  v26 = *&v15[v24 + 8];
  v27 = (a1 + v24);
  if (v25 == *v27 && v26 == v27[1])
  {
    sub_10003D7BC(v15, type metadata accessor for CRLBoardIdentifier);
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10003D7BC(v15, type metadata accessor for CRLBoardIdentifier);
    if ((v28 & 1) == 0)
    {
      return;
    }
  }

  v29 = sub_1010243F4();
  if (v29)
  {
    v30 = v29;
    v31 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window;
    v32 = *&v29[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window];
    if (v32 && [v32 isUserInteractionEnabled])
    {
      v33 = *&v30[v31];
      if (!v33 || (v34 = [v33 rootViewController]) == 0 || (v35 = v34, v36 = objc_msgSend(v34, "crl_windowWrapper"), v35, !v36) || (v37 = objc_msgSend(v36, "newWrapperBeginningIgnoringUserInteractionSafely"), v36, !v37))
      {
        if (qword_1019F20A8 != -1)
        {
          swift_once();
        }

        v38 = static OS_os_log.crlError;
        v39 = static os_log_type_t.error.getter();
        sub_100005404(v38, &_mh_execute_header, v39, "Could not create token for ignoring user interaction; view hierarchy may not be set up yet", 90, 2, _swiftEmptyArrayStorage);
        v37 = 0;
      }

      v40 = type metadata accessor for TaskPriority();
      (*(*(v40 - 8) + 56))(v6, 1, 1, v40);
      type metadata accessor for MainActor();
      v41 = v37;
      v42 = v30;
      v43 = v2;
      v44 = static MainActor.shared.getter();
      v45 = swift_allocObject();
      v45[2] = v44;
      v45[3] = &protocol witness table for MainActor;
      v45[4] = v42;
      v45[5] = v43;
      v45[6] = v37;
      sub_10064191C(0, 0, v6, &unk_1014B2410, v45);
    }

    else
    {
    }
  }
}

void sub_10102B288(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(*(*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState);
  v10 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];

  [v10 documentIsSharedReadOnly];
  sub_100F7B278(v9);
  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  v14 = [v4 mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v38;
  *(v18 + 24) = a2;

  v19 = String._bridgeToObjectiveC()();

  v43 = sub_10002AAEC;
  v44 = v18;
  aBlock = _NSConcreteStackBlock;
  v40 = *"";
  v41 = sub_10068B39C;
  v42 = &unk_1018AEAE8;
  v20 = _Block_copy(&aBlock);

  v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v13 addAction:v21];
  v22 = [v2 presentedViewController];
  if (v22)
  {
    v23 = v22;
    v24 = [v2 presentedViewController];
    if (v24)
    {
      v25 = v24;
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass() == 0;
    }

    else
    {
      v26 = 1;
    }

    [v23 dismissViewControllerAnimated:v26 completion:{0, v38}];
  }

  v27 = [v10 layerHost];
  if (v27)
  {
    v28 = [v27 miniFormatterPresenter];
    swift_unknownObjectRelease();
    if (v28)
    {
      [v28 dismissPresentedMenus];
      swift_unknownObjectRelease();
    }
  }

  v29 = [v10 tmCoordinator];
  v30 = [v29 controllingTM];

  if (v30)
  {
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      [v31 setState:4];
    }
  }

  v32 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
  [v32 resetGesturesForContextSwitch];
  v33 = [v10 isInDynamicOperation];
  if (v30 || v33)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v2;
    *(v34 + 24) = v13;
    v43 = sub_10105A630;
    v44 = v34;
    aBlock = _NSConcreteStackBlock;
    v40 = *"";
    v41 = sub_100007638;
    v42 = &unk_1018AEB38;
    v35 = _Block_copy(&aBlock);
    v36 = v2;
    v37 = v13;

    sub_10016A460(v35);

    swift_unknownObjectRelease();
    _Block_release(v35);
  }

  else
  {
    [v32 presentViewController:v13 animated:1 completion:0];
  }
}

void sub_10102B848()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v6 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v9 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v0;
  v10 = *(*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v11 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v12 = *&v10[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v13 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_100050004(v12 + v13, v3, type metadata accessor for CRLBoardCRDTData);
  v14 = v10;
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D7BC(v3, type metadata accessor for CRLBoardCRDTData);
  v15 = (*&v10[v11] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v16 = *v15;
  v17 = v15[1];

  sub_10084BD4C(v6, v16, v17, v9);

  v18 = &v9[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
  v20 = *v18;
  v19 = *(v18 + 1);

  sub_10003D7BC(v9, type metadata accessor for CRLBoardIdentifier);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19 == 0xE000000000000000;
  }

  if (v21)
  {

    v70 = _swiftEmptyArrayStorage;
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v70 = _swiftEmptyArrayStorage;
    if ((v22 & 1) == 0)
    {
      v23 = objc_opt_self();
      v24 = [v23 mainBundle];
      v25 = String._bridgeToObjectiveC()();
      v26 = String._bridgeToObjectiveC()();
      v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = [v23 mainBundle];
      v29 = String._bridgeToObjectiveC()();
      v30 = String._bridgeToObjectiveC()();
      v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = [v23 mainBundle];
      v33 = String._bridgeToObjectiveC()();
      v34 = String._bridgeToObjectiveC()();
      v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

      if (!v35)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = String._bridgeToObjectiveC()();
      }

      [objc_opt_self() actionWithTitle:v35 style:1 handler:0];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      goto LABEL_20;
    }
  }

  v36 = objc_opt_self();
  v37 = [v36 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = String._bridgeToObjectiveC()();
  v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = [v36 mainBundle];
  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  v44 = [v41 localizedStringForKey:v42 value:v43 table:0];

  v66[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = [v36 mainBundle];
  v46 = String._bridgeToObjectiveC()();
  v47 = String._bridgeToObjectiveC()();
  v48 = [v45 localizedStringForKey:v46 value:v47 table:0];

  if (!v48)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = String._bridgeToObjectiveC()();
  }

  v49 = objc_opt_self();
  v50 = [v49 actionWithTitle:v48 style:1 handler:0];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v51 = [v36 mainBundle];
  v52 = String._bridgeToObjectiveC()();
  v53 = String._bridgeToObjectiveC()();
  v54 = [v51 localizedStringForKey:v52 value:v53 table:0];

  if (!v54)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = String._bridgeToObjectiveC()();
  }

  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10105A628;
  aBlock[5] = v55;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_1018AEA98;
  v56 = _Block_copy(aBlock);

  [v49 actionWithTitle:v54 style:0 handler:v56];
  _Block_release(v56);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_20:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v57 = v70;
  v58 = String._bridgeToObjectiveC()();

  v59 = String._bridgeToObjectiveC()();

  v60 = [objc_opt_self() alertControllerWithTitle:v58 message:v59 preferredStyle:1];

  if (v57 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v62 = 0;
    while (1)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v62 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v63 = *(v57 + 8 * v62 + 32);
      }

      v64 = v63;
      v65 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      [v60 addAction:v63];

      ++v62;
      if (v65 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  [v68 presentViewController:v60 animated:1 completion:0];
}

void *sub_10102C254(uint64_t a1, uint64_t a2)
{
  v2 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_101012178(v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      return sub_10000CAAC(v4, &unk_1019F33C0, &unk_101468A60);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      sub_100878B04(v8);
      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_10102C400(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v14 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v15 = *&v13[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_100050004(v15 + v16, v6, type metadata accessor for CRLBoardCRDTData);
  v17 = v13;
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D7BC(v6, type metadata accessor for CRLBoardCRDTData);
  v18 = (*&v13[v14] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v19 = *v18;
  v20 = v18[1];

  sub_10084BD4C(v9, v19, v20, v12);

  v111 = v2;
  if (!sub_100C86910(a1, v12))
  {
    return sub_10003D7BC(v12, type metadata accessor for CRLBoardIdentifier);
  }

  v109 = v12;
  sub_100C873EC(a1, v12);
  v21 = [a1 reason];
  v110 = a1;
  if (!v21)
  {
    goto LABEL_7;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {

    goto LABEL_10;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
LABEL_7:
    v108 = objc_opt_self();
    v28 = [v108 _atomicIncrementAssertCount];
    v112 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v112, "expected cloud quota message for alert to be quota almost full", 62, 2u);
    StaticString.description.getter("promptCloudQuotaMessage(_:)", 27, 2);
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v30 = String._bridgeToObjectiveC()();

    v31 = [v30 lastPathComponent];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v35 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v28;
    v37 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v37;
    v38 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v38;
    *(inited + 72) = v29;
    *(inited + 136) = &type metadata for String;
    v39 = sub_1000053B0();
    *(inited + 112) = v32;
    *(inited + 120) = v34;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 144) = v39;
    *(inited + 152) = 1932;
    v40 = v112;
    *(inited + 216) = v37;
    *(inited + 224) = v38;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 192) = v40;
    v41 = v29;
    v42 = v40;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v44, "expected cloud quota message for alert to be quota almost full", 62, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v45 = swift_allocObject();
    v45[2] = 8;
    v45[3] = 0;
    v45[4] = 0;
    v45[5] = 0;
    v46 = __VaListBuilder.va_list()();
    StaticString.description.getter("promptCloudQuotaMessage(_:)", 27, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected cloud quota message for alert to be quota almost full", 62, 2);
    v49 = String._bridgeToObjectiveC()();

    [v108 handleFailureInFunction:v47 file:v48 lineNumber:1932 isFatal:0 format:v49 args:v46];

    a1 = v110;
  }

LABEL_10:
  v50 = [a1 actions];
  sub_100006370(0, &qword_101A286F8, ICQInAppAction_ptr);
  v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v51 >> 62)
  {
    v52 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v52 != 1)
  {
    v108 = objc_opt_self();
    v53 = [v108 _atomicIncrementAssertCount];
    v112 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v112, "expected only one action for quota almost full message", 54, 2u);
    StaticString.description.getter("promptCloudQuotaMessage(_:)", 27, 2);
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v55 = String._bridgeToObjectiveC()();

    v56 = [v55 lastPathComponent];

    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v60 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_10146CA70;
    *(v61 + 56) = &type metadata for Int32;
    *(v61 + 64) = &protocol witness table for Int32;
    *(v61 + 32) = v53;
    v62 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v61 + 96) = v62;
    v63 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v61 + 104) = v63;
    *(v61 + 72) = v54;
    *(v61 + 136) = &type metadata for String;
    v64 = sub_1000053B0();
    *(v61 + 112) = v57;
    *(v61 + 120) = v59;
    *(v61 + 176) = &type metadata for UInt;
    *(v61 + 144) = v64;
    *(v61 + 152) = 1933;
    v65 = v112;
    *(v61 + 216) = v62;
    *(v61 + 224) = v63;
    *(v61 + 184) = &protocol witness table for UInt;
    *(v61 + 192) = v65;
    v66 = v54;
    v67 = v65;
    v68 = static os_log_type_t.error.getter();
    sub_100005404(v60, &_mh_execute_header, v68, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v61);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v69 = static os_log_type_t.error.getter();
    sub_100005404(v60, &_mh_execute_header, v69, "expected only one action for quota almost full message", 54, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v70 = swift_allocObject();
    v70[2] = 8;
    v70[3] = 0;
    v70[4] = 0;
    v70[5] = 0;
    v71 = __VaListBuilder.va_list()();
    StaticString.description.getter("promptCloudQuotaMessage(_:)", 27, 2);
    v72 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v73 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected only one action for quota almost full message", 54, 2);
    v74 = String._bridgeToObjectiveC()();

    [v108 handleFailureInFunction:v72 file:v73 lineNumber:1933 isFatal:0 format:v74 args:v71];

    a1 = v110;
  }

  v75 = [a1 title];
  if (v75)
  {
    v76 = v75;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;
  }

  else
  {
    v78 = 0;
  }

  v79 = [a1 subTitle];
  if (v79)
  {
    v80 = v79;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    if (v78)
    {
      goto LABEL_21;
    }

LABEL_24:
    v83 = 0;
    if (v82)
    {
      goto LABEL_22;
    }

LABEL_25:
    v84 = 0;
    goto LABEL_26;
  }

  v82 = 0;
  if (!v78)
  {
    goto LABEL_24;
  }

LABEL_21:
  v83 = String._bridgeToObjectiveC()();

  if (!v82)
  {
    goto LABEL_25;
  }

LABEL_22:
  v84 = String._bridgeToObjectiveC()();

LABEL_26:
  v85 = [objc_opt_self() alertControllerWithTitle:v83 message:v84 preferredStyle:1];

  v86 = objc_opt_self();
  v87 = [v86 mainBundle];
  v88 = String._bridgeToObjectiveC()();
  v89 = String._bridgeToObjectiveC()();
  v90 = [v87 localizedStringForKey:v88 value:v89 table:0];

  if (!v90)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = String._bridgeToObjectiveC()();
  }

  v116 = sub_10102D2BC;
  v117 = 0;
  v112 = _NSConcreteStackBlock;
  v113 = *"";
  v114 = sub_10068B39C;
  v115 = &unk_1018AEA20;
  v91 = _Block_copy(&v112);

  v92 = objc_opt_self();
  v93 = [v92 actionWithTitle:v90 style:0 handler:v91];
  _Block_release(v91);

  [v85 addAction:v93];
  v94 = [v86 mainBundle];
  v95 = String._bridgeToObjectiveC()();
  v96 = String._bridgeToObjectiveC()();
  v97 = [v94 localizedStringForKey:v95 value:v96 table:0];

  v98 = v97;
  if (!v97)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = String._bridgeToObjectiveC()();
  }

  v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v101 = v100;
  v102 = swift_allocObject();
  v103 = v111;
  swift_unknownObjectWeakInit();
  v104 = swift_allocObject();
  v104[2] = v102;
  v104[3] = v99;
  v104[4] = v101;
  v116 = sub_10105A61C;
  v117 = v104;
  v112 = _NSConcreteStackBlock;
  v113 = *"";
  v114 = sub_10068B39C;
  v115 = &unk_1018AEA70;
  v105 = _Block_copy(&v112);

  v106 = [v92 actionWithTitle:v98 style:0 handler:v105];
  _Block_release(v105);

  [v85 addAction:v106];
  [v103 presentViewController:v85 animated:1 completion:0];
  sub_1011047E4(v85);

  v12 = v109;
  return sub_10003D7BC(v12, type metadata accessor for CRLBoardIdentifier);
}

uint64_t sub_10102D2BC(uint64_t a1)
{
  if (qword_1019F21F0 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlCloudQuotaMessaging;
  v2 = static os_log_type_t.default.getter();

  return sub_100005404(v1, &_mh_execute_header, v2, "performing cloud quota message alert action Dismiss", 53, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_10102D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_101012178(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_10000CAAC(v8, &unk_1019F33C0, &unk_101468A60);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      sub_100878B04(v12);
      (*(v10 + 8))(v12, v9);
    }
  }

  if (qword_1019F21F0 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.crlCloudQuotaMessaging;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = a3;
  *(inited + 40) = a4;

  v16 = static os_log_type_t.default.getter();
  sub_100005404(v14, &_mh_execute_header, v16, "performing cloud quota message alert action %@", 48, 2, inited);
  swift_setDeallocating();
  return sub_100005070((inited + 32));
}

uint64_t sub_10102D7D8()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10102D874, v3, v2);
}

uint64_t sub_10102D874()
{
  v1 = [*(v0 + 16) presentedViewController];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 16);
    v4 = static MainActor.shared.getter();
    *(v0 + 64) = v4;
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_10102D9E4;

    return withCheckedContinuation<A>(isolation:function:_:)(v6, v4, &protocol witness table for MainActor, 0xD000000000000020, 0x80000001015BB360, sub_10105A614, v5, &type metadata for () + 8);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10102D9E4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10102DB44, v3, v2);
}

uint64_t sub_10102DB44()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10102DBB0(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1005B981C(&qword_101A15A30, &qword_1014B6A70);
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = aBlock - v9;
  v11 = [a2 presentedViewController];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass() == 0;
  }

  else
  {
    v13 = 1;
  }

  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  aBlock[4] = sub_100994B54;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018AE9F8;
  v16 = _Block_copy(aBlock);

  [a3 dismissViewControllerAnimated:v13 completion:v16];
  _Block_release(v16);
}

double sub_10102DDB4(uint64_t a1, void *a2, int a3)
{
  HIDWORD(v25) = a3;
  v26 = a1;
  v4 = sub_1005B981C(&qword_101A15A30, &qword_1014B6A70);
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v25 - v7;
  v9 = [a2 traitCollection];
  v10 = [v9 crl_isCompactWidth];

  if (v10)
  {
    v11 = a2;
    while (1)
    {
      v12 = v11;
      v11 = [v11 presentedViewController];

      if (!v11)
      {
        break;
      }

      type metadata accessor for CRLScenesViewController_iv();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for CRLCompactScenesViewController_i();
        if (!swift_dynamicCastClass())
        {
          continue;
        }
      }

      goto LABEL_10;
    }
  }

  v13 = [a2 traitCollection];
  v14 = [v13 crl_isCompactWidth];

  if ((v14 & 1) == 0)
  {
    v21 = a2;
    while (1)
    {
      v22 = v21;
      v21 = [v21 presentedViewController];

      if (!v21)
      {
        break;
      }

      type metadata accessor for CRLScenesViewController_iv();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for CRLCompactScenesViewController_i();
        if (!swift_dynamicCastClass())
        {
          continue;
        }
      }

      (*(v5 + 16))(v8, v26, v4);
      v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v24 = swift_allocObject();
      (*(v5 + 32))(v24 + v23, v8, v4);
      sub_10102E160(BYTE4(v25) & 1, sub_10105B420, v24);

      return result;
    }
  }

  v15 = [a2 presentedViewController];
  if (v15)
  {
    v16 = v15;
    (*(v5 + 16))(v8, v26, v4);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    (*(v5 + 32))(v18 + v17, v8, v4);
    aBlock[4] = sub_10105B420;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018AE160;
    v19 = _Block_copy(aBlock);

    [v16 dismissViewControllerAnimated:BYTE4(v25) & 1 completion:v19];
    _Block_release(v19);
  }

  else
  {
LABEL_10:
    CheckedContinuation.resume(returning:)();
  }

  return result;
}

void sub_10102E160(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v4 traitCollection];
  if ([v8 horizontalSizeClass] == 1)
  {

    goto LABEL_4;
  }

  v9 = [objc_opt_self() crl_phoneUI];

  if (v9)
  {
LABEL_4:
    v10 = *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesPresenter];
    if (!v10)
    {
      return;
    }

    v13 = v10;
    if (![v13 isBeingDismissed])
    {
      if (a2)
      {
        v18 = a2;
        v19 = a3;
        aBlock = _NSConcreteStackBlock;
        v15 = *"";
        v11 = &unk_1018AE0E8;
LABEL_15:
        v16 = sub_100007638;
        v17 = v11;
        a2 = _Block_copy(&aBlock);

        goto LABEL_16;
      }

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v12 = *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPresenter];
  if (!v12)
  {
    return;
  }

  v13 = v12;
  if (![v13 isBeingDismissed])
  {
    if (a2)
    {
      v18 = a2;
      v19 = a3;
      aBlock = _NSConcreteStackBlock;
      v15 = *"";
      v11 = &unk_1018AE0C0;
      goto LABEL_15;
    }

LABEL_16:
    [v13 dismissViewControllerAnimated:a1 & 1 completion:a2];

    _Block_release(a2);
    return;
  }

LABEL_10:
}

void sub_10102E35C(void (*a1)(void), uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
  v6 = [v5 presentedViewController];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for CRLiOSMiniShapePickerHostingController();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      if (([v8 isBeingDismissed] & 1) == 0)
      {
        v23 = swift_allocObject();
        *(v23 + 16) = a1;
        *(v23 + 24) = a2;
        v30 = sub_10105B424;
        v31 = v23;
        v26 = _NSConcreteStackBlock;
        v27 = *"";
        v24 = &unk_1018AE9A8;
        goto LABEL_26;
      }
    }
  }

  v10 = [v5 presentedViewController];
  if (!v10)
  {
    goto LABEL_10;
  }

  v7 = v10;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v9 = v11;
    if (([v11 showLinesInLibrary] & 1) == 0 && (objc_msgSend(v9, "isBeingDismissed") & 1) == 0)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = a1;
      *(v25 + 24) = a2;
      v30 = sub_10105A610;
      v31 = v25;
      v26 = _NSConcreteStackBlock;
      v27 = *"";
      v24 = &unk_1018AE958;
LABEL_26:
      v28 = sub_100007638;
      v29 = v24;
      v22 = _Block_copy(&v26);
      sub_10067F2EC(a1, a2);

      [v9 dismissViewControllerAnimated:1 completion:{v22, v26, v27}];
LABEL_27:
      _Block_release(v22);

      return;
    }
  }

LABEL_10:
  v12 = v2;
  v13 = v12;
  while (1)
  {
    v14 = v13;
    v13 = [v13 presentedViewController];

    if (!v13)
    {
      break;
    }

    type metadata accessor for CRLScenesViewController_iv();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for CRLCompactScenesViewController_i();
      if (!swift_dynamicCastClass())
      {
        continue;
      }
    }

    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    sub_10067F2EC(a1, a2);
    sub_10102E160(1, sub_10105B424, v15);

    return;
  }

  v16 = *&v12[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController];
  if (v16)
  {
    v17 = v16;
    v18 = [v12 presentedViewController];
    if (v18)
    {
      v19 = v18;
      sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
      v7 = v17;
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        v21 = swift_allocObject();
        *(v21 + 16) = a1;
        *(v21 + 24) = a2;
        v30 = sub_10105B424;
        v31 = v21;
        v26 = _NSConcreteStackBlock;
        v27 = *"";
        v28 = sub_100007638;
        v29 = &unk_1018AE8E0;
        v22 = _Block_copy(&v26);
        sub_10067F2EC(a1, a2);

        [v7 dismissViewControllerAnimated:0 completion:{v22, v26, v27}];
        goto LABEL_27;
      }
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_10102E794()
{
  v1 = sub_101012FD4();
  v2 = [v1 mode];

  v3 = [v2 pencilModeType];
  if (v3 != 2)
  {
    v4 = [v0 interactiveCanvasControllerForFreehandDrawingTools];
    v5 = type metadata accessor for CRLiOSDocumentModeHandwriting();
    v6 = objc_allocWithZone(v5);
    v6[OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_currentlyChangingModes] = 0;
    v6[OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_stayInHandwritingModeForSelectionChange] = 0;
    v6[OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_endModeCheckQueuedAfterTextGestures] = 0;
    *&v6[OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_subscriptions] = _swiftEmptySetSingleton;
    swift_unknownObjectUnownedInit();
    v8.receiver = v6;
    v8.super_class = v5;
    v7 = objc_msgSendSuper2(&v8, "initWithBoardViewController:", v0);

    [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController] setMode:v7 animated:1];
  }
}

id sub_10102EAFC(uint64_t a1)
{
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v43 = sub_100006370(0, &qword_1019F8508, off_10182F8A8);
  sub_1005B981C(&qword_101A286F0, qword_1014C2228);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v3;
  v4 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v2;
  v5 = inited + 32;
  v6 = inited;
  *(inited + 64) = v4;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v41 = objc_opt_self();
    LODWORD(v7) = [v41 _atomicIncrementAssertCount];
    v43 = [objc_allocWithZone(NSString) init];
    sub_100604538(v6, &v43, "expected equality between two values of type %{public}@", 55, 2u);
    StaticString.description.getter("editorController(for:)", 22, 2);
    v42 = v6;
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v14 = static OS_os_log.crlAssert;
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_10146CA70;
      *(v15 + 56) = &type metadata for Int32;
      *(v15 + 64) = &protocol witness table for Int32;
      *(v15 + 32) = v7;
      *(v15 + 96) = v3;
      *(v15 + 104) = v4;
      *(v15 + 72) = v8;
      *(v15 + 136) = &type metadata for String;
      v16 = sub_1000053B0();
      *(v15 + 112) = v11;
      *(v15 + 120) = v13;
      *(v15 + 176) = &type metadata for UInt;
      *(v15 + 184) = &protocol witness table for UInt;
      *(v15 + 144) = v16;
      *(v15 + 152) = 2087;
      v17 = v43;
      *(v15 + 216) = v3;
      *(v15 + 224) = v4;
      *(v15 + 192) = v17;
      v18 = v8;
      v19 = v17;
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v15);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v21, "expected equality between two values of type %{public}@", 55, 2, v42);

      type metadata accessor for __VaListBuilder();
      v22 = swift_allocObject();
      v22[2] = 8;
      v22[3] = 0;
      v3 = v22 + 3;
      v22[4] = 0;
      v22[5] = 0;
      v4 = *(v42 + 16);
      if (!v4)
      {
LABEL_29:
        v36 = __VaListBuilder.va_list()();
        StaticString.description.getter("editorController(for:)", 22, 2);
        v37 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
        v38 = String._bridgeToObjectiveC()();

        StaticString.description.getter("expected equality between two values of type %{public}@", 55, 2);
        v39 = String._bridgeToObjectiveC()();

        [v41 handleFailureInFunction:v37 file:v38 lineNumber:2087 isFatal:0 format:v39 args:v36];

        return sub_101012B64();
      }

      v8 = 0;
      while (1)
      {
        v23 = (v5 + 40 * v8);
        v13 = v23[3];
        LODWORD(v7) = sub_100020E58(v23, v13);
        v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v11 = *v3;
        v25 = *(v24 + 16);
        v26 = __OFADD__(*v3, v25);
        v27 = *v3 + v25;
        if (v26)
        {
          break;
        }

        v13 = v22[4];
        if (v13 >= v27)
        {
          goto LABEL_21;
        }

        if (v13 + 0x4000000000000000 < 0)
        {
          goto LABEL_33;
        }

        v7 = v22[5];
        if (2 * v13 > v27)
        {
          v27 = 2 * v13;
        }

        v22[4] = v27;
        if ((v27 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_34;
        }

        v28 = v24;
        v29 = swift_slowAlloc();
        v30 = v29;
        v22[5] = v29;
        if (v7)
        {
          if (v29 != v7 || v29 >= &v7[8 * v11])
          {
            memmove(v29, v7, 8 * v11);
          }

          LODWORD(v7) = v22;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v24 = v28;
LABEL_21:
          v30 = v22[5];
          if (!v30)
          {
            goto LABEL_28;
          }

          goto LABEL_22;
        }

        v24 = v28;
        if (!v30)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_22:
        v32 = *(v24 + 16);
        if (v32)
        {
          v33 = (v24 + 32);
          v34 = *v3;
          while (1)
          {
            v35 = *v33++;
            *&v30[8 * v34] = v35;
            v34 = *v3 + 1;
            if (__OFADD__(*v3, 1))
            {
              break;
            }

            *v3 = v34;
            if (!--v32)
            {
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }

LABEL_6:

        v8 = v8 + 1;
        if (v8 == v4)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }

  return sub_101012B64();
}

char *sub_10102F450(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_mediaReplacer;
  v4 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_mediaReplacer];
  if (v4)
  {
    sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
    v5 = *&v4[OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_interactiveCanvasController];
    v6 = v4;
    v7 = v5;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v6;
    }

    v38 = v6;
    v37 = objc_opt_self();
    v10 = [v37 _atomicIncrementAssertCount];
    v39 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v39, "Existing media replacer is for a different ICC. Replacing it with a new instance.", 81, 2u);
    StaticString.description.getter("mediaReplacer(for:)", 19, 2);
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v10;
    v17 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v17;
    v18 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v18;
    *(inited + 72) = v36;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v35;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 2290;
    v20 = v39;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v36;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "Existing media replacer is for a different ICC. Replacing it with a new instance.", 81, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter("mediaReplacer(for:)", 19, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Existing media replacer is for a different ICC. Replacing it with a new instance.", 81, 2);
    v29 = String._bridgeToObjectiveC()();

    [v37 handleFailureInFunction:v27 file:v28 lineNumber:2290 isFatal:0 format:v29 args:v26];
  }

  v30 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  v31 = objc_allocWithZone(type metadata accessor for CRLiOSMediaReplacer());
  v32 = sub_100AF4ACC(v30, v2);
  v33 = *&v2[v3];
  *&v2[v3] = v32;
  v34 = v32;

  return v34;
}

uint64_t sub_10102FA64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void))
{
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v58 = sub_100006370(0, &qword_1019F8508, off_10182F8A8);
  sub_1005B981C(&qword_101A286F0, qword_1014C2228);
  String.init<A>(describing:)();
  v7 = String._bridgeToObjectiveC()();

  v8 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v8;
  v9 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v7;
  v10 = inited + 32;
  v11 = inited;
  *(inited + 64) = v9;
  if (static NSObject.== infix(_:_:)())
  {

    goto LABEL_30;
  }

  v50 = objc_opt_self();
  LODWORD(v12) = [v50 _atomicIncrementAssertCount];
  v58 = [objc_allocWithZone(NSString) init];
  sub_100604538(v11, &v58, "expected equality between two values of type %{public}@", 55, 2u);
  StaticString.description.getter(a2, a3, 2);
  v13 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
  v51 = v11;
  v14 = String._bridgeToObjectiveC()();

  v15 = [v14 lastPathComponent];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_37;
  }

LABEL_4:
  v19 = static OS_os_log.crlAssert;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_10146CA70;
  *(v20 + 56) = &type metadata for Int32;
  *(v20 + 64) = &protocol witness table for Int32;
  *(v20 + 32) = v12;
  *(v20 + 96) = v8;
  *(v20 + 104) = v9;
  *(v20 + 72) = v13;
  *(v20 + 136) = &type metadata for String;
  v21 = sub_1000053B0();
  *(v20 + 112) = v16;
  *(v20 + 120) = v18;
  *(v20 + 176) = &type metadata for UInt;
  *(v20 + 184) = &protocol witness table for UInt;
  *(v20 + 144) = v21;
  *(v20 + 152) = a4;
  v22 = v58;
  *(v20 + 216) = v8;
  *(v20 + 224) = v9;
  *(v20 + 192) = v22;
  v23 = v13;
  v24 = v22;
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v19, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v20);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v26 = static os_log_type_t.error.getter();
  sub_100005404(v19, &_mh_execute_header, v26, "expected equality between two values of type %{public}@", 55, 2, v51);

  type metadata accessor for __VaListBuilder();
  v27 = swift_allocObject();
  v27[2] = 8;
  v27[3] = 0;
  v13 = v27 + 3;
  v27[4] = 0;
  v27[5] = 0;
  v28 = *(v51 + 16);
  v9 = a3;
  if (v28)
  {
    v29 = 0;
    v16 = 40;
    while (1)
    {
      v30 = (v10 + 40 * v29);
      v18 = v30[3];
      LODWORD(v12) = sub_100020E58(v30, v18);
      v31 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v8 = *v13;
      v32 = *(v31 + 16);
      v33 = __OFADD__(*v13, v32);
      v34 = *v13 + v32;
      if (v33)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        swift_once();
        goto LABEL_4;
      }

      v18 = v27[4];
      if (v18 >= v34)
      {
        goto LABEL_21;
      }

      if (v18 + 0x4000000000000000 < 0)
      {
        goto LABEL_35;
      }

      v12 = v27[5];
      if (2 * v18 > v34)
      {
        v34 = 2 * v18;
      }

      v27[4] = v34;
      if ((v34 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_36;
      }

      v35 = v31;
      v36 = swift_slowAlloc();
      v37 = v36;
      v27[5] = v36;
      if (v12)
      {
        break;
      }

      v31 = v35;
      v9 = a3;
      if (!v37)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_22:
      v39 = *(v31 + 16);
      if (v39)
      {
        v40 = (v31 + 32);
        v41 = *v13;
        while (1)
        {
          v42 = *v40++;
          *&v37[8 * v41] = v42;
          v41 = *v13 + 1;
          if (__OFADD__(*v13, 1))
          {
            break;
          }

          *v13 = v41;
          if (!--v39)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

LABEL_6:

      if (++v29 == v28)
      {
        goto LABEL_29;
      }
    }

    if (v36 != v12 || v36 >= &v12[8 * v8])
    {
      memmove(v36, v12, 8 * v8);
    }

    LODWORD(v12) = v27;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v31 = v35;
    v9 = a3;
LABEL_21:
    v37 = v27[5];
    if (!v37)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_29:
  v43 = __VaListBuilder.va_list()();
  StaticString.description.getter(a2, v9, 2);
  v44 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
  v45 = String._bridgeToObjectiveC()();

  StaticString.description.getter("expected equality between two values of type %{public}@", 55, 2);
  v46 = String._bridgeToObjectiveC()();

  [v50 handleFailureInFunction:v44 file:v45 lineNumber:a4 isFatal:0 format:v46 args:v43];

LABEL_30:
  v47 = *a5;
  v48 = *(v56 + *a5);
  if (v48 == 2)
  {
    LOBYTE(v48) = a6();
    *(v56 + v47) = v48 & 1;
  }

  return v48 & 1;
}

void sub_101030138()
{
  if ((*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_willPresentCompactScenesNavigator) & 1) == 0 && (*(*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState) + OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_captureIsAnimating) & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState);
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    static Published.subscript.getter();

    v5 = sub_101066A04();
    v6 = v5;
    if (v10)
    {
      if (v5)
      {
        type metadata accessor for CRLSceneInfo(0);
        v7 = static NSObject.== infix(_:_:)();

        if (v7)
        {
          return;
        }

LABEL_11:
        v8 = *(v2 + v1);
        swift_getKeyPath();
        swift_getKeyPath();
        v9 = v8;
        static Published.subscript.setter();
        return;
      }

      v6 = v10;
LABEL_10:

      goto LABEL_11;
    }

    if (v5)
    {
      goto LABEL_10;
    }
  }
}

id sub_1010302F8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  v2 = a1;
  if ([v1 editingDisabled])
  {
    v3 = 0;
  }

  else
  {
    v3 = [*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] allowUndoRedoOperations];
  }

  return v3;
}

id sub_1010303AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_selectionModelTranslator);
  v2 = type metadata accessor for CRLSelectionPathValidator();
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator] = v1;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = v1;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1010304A0()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 keyWindow];

  result = [v0 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (v2)
    {
      if (v5)
      {
        sub_100006370(0, &unk_101A286E0, UIWindow_ptr);
        v2 = v2;
        v6 = static NSObject.== infix(_:_:)();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      if (!v5)
      {
        v6 = 1;
        return (v6 & 1);
      }

      v6 = 0;
      v2 = v5;
    }

    return (v6 & 1);
  }

  __break(1u);
  return result;
}

void sub_101030634(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = a1;
    v4 = sub_101012FD4();
    v5 = [v4 mode];

    v6 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_selectionModelTranslator);
    v7 = type metadata accessor for CRLSelectionPathValidator();
    v8 = objc_allocWithZone(v7);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *&v8[OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator] = v6;
    v20.receiver = v8;
    v20.super_class = v7;
    v9 = v6;
    v10 = objc_msgSendSuper2(&v20, "init");
    v11 = [v5 validateSelectionPathIfNeededFromPersistableSelectionPath:v3 withSelectionPathValidator:v10];

    v12 = v11;
    if (!v11)
    {
      v13 = objc_allocWithZone(v7);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      *&v13[OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator] = v9;
      v19.receiver = v13;
      v19.super_class = v7;
      v14 = v9;
      v15 = objc_msgSendSuper2(&v19, "init");
      v16 = sub_1006D2420(v3, 0);

      v12 = v16;
    }

    v17 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    v18 = v11;
    [v17 setSelectionPath:v12 withSelectionFlags:3200];
  }
}

void sub_101030890(uint64_t a1)
{
  if (v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown])
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v2 = static OS_os_log.crlDefault;
    v3 = static os_log_type_t.info.getter();

    sub_100005404(v2, &_mh_execute_header, v3, "Skipping request to update toolbar buttons after teardown.", 58, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v4 = [v1 traitCollection];
    sub_100642864(v4, [*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly], v5);
    sub_100642CDC(v5, 0);
    sub_1005EB2D4(v5);
  }
}

void sub_1010309F0(void *a1)
{
  sub_101030B04(a1);
  sub_101030C98(a1);
  sub_10103139C();
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = sub_1010136B4();
  [v4 bringSubviewToFront:v5];

  v6 = [*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] presentedHUDView];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = [v1 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 bringSubviewToFront:v7];
}

void sub_101030B04(void *a1)
{
  if ([a1 horizontalSizeClass] == 1 || objc_msgSend(objc_opt_self(), "crl_phoneUI"))
  {
    v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController;
    v3 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController];
    if (!v3)
    {
      return;
    }

    v4 = v3;
    [v4 removeFromParentViewController];
    [v4 didMoveToParentViewController:0];
    v5 = [v4 view];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    [v5 removeFromSuperview];

    v7 = *&v1[v2];
    *&v1[v2] = 0;
  }

  else
  {
    v8 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController;
    if (*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController])
    {
      return;
    }

    type metadata accessor for CRLiOSCanvasZoomControlViewController();
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v9[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_viewScaleDetents] = &off_101877818;

    *&v9[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_delegate + 8] = &off_1018ADD68;
    swift_unknownObjectWeakAssign();
    [v1 addChildViewController:v9];
    [v9 didMoveToParentViewController:v1];
    v7 = *&v1[v8];
    *&v1[v8] = v9;
  }
}

void sub_101030C98(void *a1)
{
  if ([a1 horizontalSizeClass] != 1 && !objc_msgSend(objc_opt_self(), "crl_phoneUI"))
  {
    v26 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController;
    if (!*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController])
    {
      v27 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState;
      v28 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
      v29 = sub_10102AA70();
      sub_10091FD94(v29 & 1);

      v30 = *&v1[v27];
      v31 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState];
      v51 = type metadata accessor for CRLScenesNavigatorViewController();
      v32 = objc_allocWithZone(v51);
      v33 = &v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_delegate];
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorStatePassthroughObserver] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_notificationObservers] = _swiftEmptyDictionarySingleton;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatingTopCaptureSnapshotView] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatingBottomCaptureSnapshotView] = 0;
      v34 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_floatingView;
      type metadata accessor for CRLShadowView();
      v35 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v36 = v30;
      v37 = v31;
      *&v32[v34] = [v35 init];
      v38 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_bezelView;
      *&v32[v38] = [objc_allocWithZone(UIView) init];
      v39 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_drawerView;
      *&v32[v39] = [objc_allocWithZone(UIView) init];
      v40 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_backdropView;
      *&v32[v40] = [objc_allocWithZone(UIView) init];
      v41 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_leadingSeparatorView;
      *&v32[v41] = [objc_allocWithZone(UIView) init];
      v42 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_trailingSeparatorView;
      *&v32[v42] = [objc_allocWithZone(UIView) init];
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___grabberButton] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___previousSceneButton] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___nextSceneButton] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___popoverButton] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___navigationButtons] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___drawerWidthConstraint] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___baseConstraints] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___grabberConstraints] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___separatorHeightConstraints] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___noGrabberConstraints] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatsCenterAlignedConstraints] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatsTrailingAlignedConstraints] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___attachedToZoomControlConstraints] = 0;
      v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle] = 0;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState] = v36;
      *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesPopoverState] = v37;
      *(v33 + 1) = &off_1018ADCE0;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();
      v53.receiver = v32;
      v53.super_class = v51;
      v43 = objc_msgSendSuper2(&v53, "initWithNibName:bundle:", 0, 0);
      [v1 addChildViewController:v43];
      [v43 didMoveToParentViewController:v1];
      v44 = *&v1[v26];
      *&v1[v26] = v43;
    }

    v45 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController;
    v46 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController];
    if (!v46)
    {
      return;
    }

    [v46 removeFromParentViewController];
    v47 = *&v1[v45];
    if (!v47)
    {
      return;
    }

    [v47 didMoveToParentViewController:0];
    v48 = *&v1[v45];
    if (!v48)
    {
      return;
    }

    v49 = [v48 view];
    if (v49)
    {
      v25 = v49;
      [v49 removeFromSuperview];
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
    return;
  }

  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController];
  if (!v3)
  {
    goto LABEL_10;
  }

  [v3 removeFromParentViewController];
  v4 = *&v1[v2];
  if (!v4 || ([v4 didMoveToParentViewController:0], (v5 = *&v1[v2]) == 0))
  {
    v8 = 0;
    goto LABEL_9;
  }

  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = v6;
  [v6 removeFromSuperview];

  v8 = *&v1[v2];
LABEL_9:
  *&v1[v2] = 0;

LABEL_10:
  v9 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController;
  if (!*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController])
  {
    v10 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
    v11 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState];
    v50 = type metadata accessor for CRLScenesNavigatorViewController();
    v12 = objc_allocWithZone(v50);
    v13 = &v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_delegate];
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorStatePassthroughObserver] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_notificationObservers] = _swiftEmptyDictionarySingleton;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatingTopCaptureSnapshotView] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatingBottomCaptureSnapshotView] = 0;
    v14 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_floatingView;
    type metadata accessor for CRLShadowView();
    v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v16 = v10;
    v17 = v11;
    *&v12[v14] = [v15 init];
    v18 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_bezelView;
    *&v12[v18] = [objc_allocWithZone(UIView) init];
    v19 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_drawerView;
    *&v12[v19] = [objc_allocWithZone(UIView) init];
    v20 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_backdropView;
    *&v12[v20] = [objc_allocWithZone(UIView) init];
    v21 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_leadingSeparatorView;
    *&v12[v21] = [objc_allocWithZone(UIView) init];
    v22 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_trailingSeparatorView;
    *&v12[v22] = [objc_allocWithZone(UIView) init];
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___grabberButton] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___previousSceneButton] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___nextSceneButton] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___popoverButton] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___navigationButtons] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___drawerWidthConstraint] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___baseConstraints] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___grabberConstraints] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___separatorHeightConstraints] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___noGrabberConstraints] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatsCenterAlignedConstraints] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatsTrailingAlignedConstraints] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___attachedToZoomControlConstraints] = 0;
    v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle] = 1;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState] = v16;
    *&v12[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesPopoverState] = v17;
    *(v13 + 1) = &off_1018ADCE0;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    v52.receiver = v12;
    v52.super_class = v50;
    v23 = objc_msgSendSuper2(&v52, "initWithNibName:bundle:", 0, 0);
    v24 = *&v1[v9];
    *&v1[v9] = v23;
    v25 = v23;

    [v25 setModalPresentationStyle:6];
LABEL_12:
  }
}

void sub_10103139C()
{
  v1 = type metadata accessor for _Glass._GlassVariant();
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v3 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v4 view];
  if (!v5)
  {
    v6 = v4;
    goto LABEL_10;
  }

  v6 = v5;
  v7 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController];
  if (!v7 || (v8 = [v7 view]) == 0)
  {

LABEL_10:
LABEL_11:
    v19 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomAndScenesContainerView;
    v20 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomAndScenesContainerView];
    if (!v20)
    {
      return;
    }

    [v20 removeFromSuperview];
    v18 = *&v0[v19];
    *&v0[v19] = 0;
    goto LABEL_13;
  }

  v9 = v8;
  v79 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomAndScenesContainerView;
  v10 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomAndScenesContainerView];
  if (!v10)
  {
    goto LABEL_17;
  }

  v77 = v10;
  v11 = [v77 subviews];
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10146CE00;
  *(v13 + 32) = v6;
  *(v13 + 40) = v9;
  v14 = v6;
  v15 = v9;
  v16 = v9;
  v17 = sub_1006749FC(v12, v13);

  if ((v17 & 1) == 0)
  {
    [v77 removeFromSuperview];

    v21 = *&v0[v79];
    *&v0[v79] = 0;

    v9 = v15;
LABEL_17:
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    type metadata accessor for CRLShadowView();
    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = objc_opt_self();
    v24 = [v23 clearColor];
    [v22 setBackgroundColor:v24];

    v25 = [v22 layer];
    v26 = _UISolariumEnabled();
    v27 = 10.0;
    if (v26)
    {
      v27 = 22.0;
    }

    [v25 setCornerRadius:v27];

    v28 = [v22 layer];
    [v28 setCornerCurve:kCACornerCurveContinuous];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v29 = [v22 layer];
      [v29 setShadowOffset:{0.0, 3.0}];

      v30 = [v22 layer];
      LODWORD(v31) = 1034147594;
      [v30 setShadowOpacity:v31];

      v32 = [v22 layer];
      [v32 setShadowRadius:7.0];

      v33 = [v22 layer];
      [v33 setBorderWidth:0.5];

      v34 = [v22 layer];
      v35 = [v23 blackColor];
      v36 = [v35 colorWithAlphaComponent:0.08];

      v37 = [v36 CGColor];
      [v34 setBorderColor:v37];
    }

    if (_UISolariumEnabled())
    {
      static _Glass._GlassVariant.regular.getter();
      v80[3] = type metadata accessor for _Glass();
      v80[4] = &protocol witness table for _Glass;
      sub_10002C58C(v80);
      _Glass.init(_:smoothness:)();
      UIView._background.setter();
    }

    [v22 addSubview:v9];
    [v22 addSubview:v6];
    v38 = [v0 view];
    if (v38)
    {
      v39 = v38;
      v78 = v9;
      [v38 addSubview:v22];

      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1014C1BF0;
      v41 = [v22 leadingAnchor];
      v42 = [v0 view];
      if (v42)
      {
        v43 = v42;
        v44 = [v42 leadingAnchor];

        v45 = [v41 constraintEqualToAnchor:v44 constant:20.0];
        *(v40 + 32) = v45;
        v46 = [v22 bottomAnchor];
        v47 = [v0 view];
        if (v47)
        {
          v48 = v47;
          v76 = objc_opt_self();
          v49 = [v48 bottomAnchor];

          v50 = [v46 constraintEqualToAnchor:v49 constant:-20.0];
          *(v40 + 40) = v50;
          v51 = [v6 topAnchor];
          v52 = [v22 topAnchor];
          v53 = [v51 constraintEqualToAnchor:v52];

          *(v40 + 48) = v53;
          v54 = [v6 bottomAnchor];
          v55 = [v22 bottomAnchor];
          v56 = [v54 constraintEqualToAnchor:v55];

          *(v40 + 56) = v56;
          v57 = [v6 leadingAnchor];
          v58 = [v22 leadingAnchor];
          v59 = [v57 constraintEqualToAnchor:v58];

          *(v40 + 64) = v59;
          v60 = [v6 trailingAnchor];
          v61 = [v78 leadingAnchor];
          v62 = [v60 constraintEqualToAnchor:v61];

          *(v40 + 72) = v62;
          v63 = [v78 topAnchor];
          v64 = [v22 topAnchor];
          v65 = [v63 constraintEqualToAnchor:v64];

          *(v40 + 80) = v65;
          v66 = [v78 bottomAnchor];
          v67 = [v22 bottomAnchor];
          v68 = [v66 constraintEqualToAnchor:v67];

          *(v40 + 88) = v68;
          v69 = [v78 trailingAnchor];
          v70 = [v22 trailingAnchor];
          v71 = [v69 constraintEqualToAnchor:v70];

          *(v40 + 96) = v71;
          sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v76 activateConstraints:isa];

          v73 = *&v0[v79];
          *&v0[v79] = v22;

          swift_unknownObjectWeakAssign();
          v74 = sub_1006A4738();
          Strong = swift_unknownObjectWeakLoadStrong();

          swift_unknownObjectWeakAssign();
          return;
        }

LABEL_30:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v18 = v77;
LABEL_13:
}

void sub_101031D9C(void *a1)
{
  if ([a1 horizontalSizeClass] != 1 && !objc_msgSend(objc_opt_self(), "crl_phoneUI"))
  {
    v8 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController;
    if (*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController])
    {
      return;
    }

    type metadata accessor for CRLiOSCanvasZoomControlViewController();
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v9[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_viewScaleDetents] = &off_101877870;

    *&v9[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_delegate + 8] = &off_1018ADD68;
    swift_unknownObjectWeakAssign();
    v10 = v9;
    [v1 addChildViewController:v10];
    [v10 didMoveToParentViewController:v1];
    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 view];
      if (v13)
      {
        v14 = v13;
        [v12 addSubview:v13];

        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_10146CE00;
        v16 = [v10 view];

        if (v16)
        {
          v17 = [v16 leadingAnchor];

          v18 = [v1 view];
          if (v18)
          {
            v19 = v18;
            v20 = [v18 leadingAnchor];

            v21 = [v17 constraintEqualToAnchor:v20 constant:20.0];
            *(v15 + 32) = v21;
            v22 = [v10 view];

            if (v22)
            {
              v23 = [v22 bottomAnchor];

              v24 = [v1 view];
              if (v24)
              {
                v25 = v24;
                v26 = objc_opt_self();
                v27 = [v25 bottomAnchor];

                v28 = [v23 constraintEqualToAnchor:v27 constant:-20.0];
                *(v15 + 40) = v28;
                sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v26 activateConstraints:isa];

                v30 = [v1 view];
                if (v30)
                {
                  v31 = v30;
                  v32 = [v10 view];

                  if (v32)
                  {
                    [v31 bringSubviewToFront:v32];

                    v33 = *&v1[v8];
                    *&v1[v8] = v10;
                    v38 = v10;

                    v34 = [*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] presentedHUDView];
                    if (v34)
                    {
                      v35 = v34;
                      v36 = [v1 view];
                      if (!v36)
                      {
LABEL_32:
                        __break(1u);
                        return;
                      }

                      v37 = v36;
                      [v36 bringSubviewToFront:v35];
                    }

                    v7 = v38;
                    goto LABEL_6;
                  }

LABEL_31:
                  __break(1u);
                  goto LABEL_32;
                }

LABEL_30:
                __break(1u);
                goto LABEL_31;
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

  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  [v4 removeFromParentViewController];
  [v4 didMoveToParentViewController:0];
  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = v5;
  [v5 removeFromSuperview];

  v7 = *&v1[v2];
  *&v1[v2] = 0;
LABEL_6:
}

void sub_101032280()
{
  v1 = v0;
  v2 = type metadata accessor for CRLScenesPopoverUI(0);
  __chkstk_darwin(v2);
  v4 = (v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPresenter;
  if (!*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPresenter])
  {
    v47 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
    v6 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState];
    v7 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
    v46 = type metadata accessor for CRLScenesViewController_iv();
    v8 = objc_allocWithZone(v46);
    v9 = &v8[OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_scenesDelegate];
    *&v8[OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_scenesDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v8[OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_isTornDown] = 0;
    v4[1] = &off_1018ADCE0;
    swift_unknownObjectWeakInit();
    v44[1] = type metadata accessor for CRLScenesPopoverState(0);
    sub_100006760(&qword_101A10C98, type metadata accessor for CRLScenesPopoverState, byte_1014953B0);
    v10 = v7;
    v11 = v6;
    v12 = v1;
    v45 = v10;
    v13 = v12;
    v14 = v11;
    v4[2] = ObservedObject.init(wrappedValue:)();
    v4[3] = v15;
    v16 = *(v2 + 24);
    *(v4 + v16) = swift_getKeyPath();
    sub_1005B981C(&unk_101A286B0, &qword_1014C2180);
    swift_storeEnumTagMultiPayload();
    v17 = *(v2 + 28);
    *(v4 + v17) = swift_getKeyPath();
    sub_1005B981C(&qword_101A0A8A0, &qword_101495510);
    swift_storeEnumTagMultiPayload();
    v18 = objc_allocWithZone(sub_1005B981C(&qword_101A286C0, &qword_1014C21C0));
    *&v8[OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_hostingController] = UIHostingController.init(rootView:)();
    *&v8[OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_scenesPopoverState] = v14;
    v19 = v45;
    *&v8[OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_icc] = v45;
    *(v9 + 1) = &off_1018ADCE0;
    swift_unknownObjectWeakAssign();
    v20 = v19;
    v21 = v14;

    v49.receiver = v8;
    v49.super_class = v46;
    v22 = objc_msgSendSuper2(&v49, "initWithNibName:bundle:", 0, 0);

    v23 = *&v1[v5];
    *&v1[v5] = v22;

    v24 = v47;
    v25 = *&v1[v47];
    v26 = objc_allocWithZone(type metadata accessor for CRLCompactScenesViewController_i());
    v27 = v13;
    v28 = v24;
    v29 = v27;
    v30 = sub_1010545D8(v27, v25, v20, v26);

    v31 = *&v29[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesPresenter];
    *&v29[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesPresenter] = v30;

    v32 = *(*&v29[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v33 = *&v1[v28];
    v34 = v32;
    v35 = sub_100EC8784();

    sub_100B03B88(v35);
    v36 = *&v1[v28];
    LOBYTE(v33) = [v20 documentIsSharedReadOnly];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v48) = v33;
    static Published.subscript.setter();
    [v20 visibleUnscaledRect];
    x = v50.origin.x;
    y = v50.origin.y;
    width = v50.size.width;
    height = v50.size.height;
    if (!CGRectIsEmpty(v50))
    {
      v41 = *&v1[v28];
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v42 = CGRectGetWidth(v51);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v43 = v42 / CGRectGetHeight(v52);
      swift_getKeyPath();
      swift_getKeyPath();
      v48 = v43;
      static Published.subscript.setter();
    }
  }
}

void sub_1010326E8(void *a1)
{
  if ([a1 horizontalSizeClass] != 1 && !objc_msgSend(objc_opt_self(), "crl_phoneUI"))
  {
    v8 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController;
    if (*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController])
    {
      return;
    }

    v9 = objc_allocWithZone(type metadata accessor for CRLiOSFloatingBoardViewControlsViewController());
    v10 = v1;
    v11 = sub_1010548E8(v10, v9);

    v12 = v11;
    [v10 addChildViewController:v12];
    [v12 didMoveToParentViewController:v10];
    v13 = [v10 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v12 view];
      if (v15)
      {
        v16 = v15;
        [v14 addSubview:v15];

        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_10146CE00;
        v18 = [v12 view];

        if (v18)
        {
          v19 = [v18 trailingAnchor];

          v20 = [v10 view];
          if (v20)
          {
            v21 = v20;
            v22 = [v20 trailingAnchor];

            v23 = [v19 constraintEqualToAnchor:v22 constant:-20.0];
            *(v17 + 32) = v23;
            v24 = [v12 view];

            if (v24)
            {
              v25 = [v24 bottomAnchor];

              v26 = [v10 view];
              if (v26)
              {
                v27 = v26;
                v28 = objc_opt_self();
                v29 = [v27 bottomAnchor];

                v30 = [v25 constraintEqualToAnchor:v29 constant:-20.0];
                *(v17 + 40) = v30;
                sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v28 activateConstraints:isa];

                v32 = [v10 view];
                if (v32)
                {
                  v33 = v32;
                  v34 = [v12 view];

                  if (v34)
                  {
                    [v33 bringSubviewToFront:v34];

                    v35 = *&v1[v8];
                    *&v1[v8] = v12;
                    v40 = v12;

                    v36 = [*&v10[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] presentedHUDView];
                    if (v36)
                    {
                      v37 = v36;
                      v38 = [v10 view];
                      if (!v38)
                      {
LABEL_32:
                        __break(1u);
                        return;
                      }

                      v39 = v38;
                      [v38 bringSubviewToFront:v37];
                    }

                    v7 = v40;
                    goto LABEL_6;
                  }

LABEL_31:
                  __break(1u);
                  goto LABEL_32;
                }

LABEL_30:
                __break(1u);
                goto LABEL_31;
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

  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  [v4 removeFromParentViewController];
  [v4 didMoveToParentViewController:0];
  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = v5;
  [v5 removeFromSuperview];

  v7 = *&v1[v2];
  *&v1[v2] = 0;
LABEL_6:
}

void sub_101032B94()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewController;
  if (!*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewController])
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewState;
    v4 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewState];
    v5 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled;
    v6 = v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled];
    if (v6 == 2)
    {
      v7 = v4;
      v8 = sub_10102A558() & 1;
      v0[v5] = v8;
    }

    else
    {
      v8 = v6 & 1;
      v9 = v4;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v55[0]) = v8;
    static Published.subscript.setter();
    v10 = *&v0[v3];
    sub_1008DCA8C(v55);
    v11 = objc_allocWithZone(sub_1005B981C(&unk_101A286A0, &qword_1014C2148));
    v12 = UIHostingController.init(rootView:)();
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

      v15 = [v12 view];
      if (v15)
      {
        v16 = v15;
        v17 = [objc_opt_self() clearColor];
        [v16 setBackgroundColor:v17];

        v18 = [v12 view];
        if (v18)
        {
          v19 = v18;
          [v18 setUserInteractionEnabled:0];

          v20 = [v2 view];
          if (v20)
          {
            v21 = v20;
            v22 = [v12 view];
            if (v22)
            {
              v23 = v22;
              [v21 addSubview:v22];

              [v2 addChildViewController:v12];
              [v12 didMoveToParentViewController:v2];
              v24 = swift_allocObject();
              *(v24 + 16) = xmmword_10146E8B0;
              v25 = [v12 view];
              if (v25)
              {
                v26 = v25;
                v27 = [v25 leftAnchor];

                v28 = [v2 view];
                if (v28)
                {
                  v29 = v28;
                  v30 = [v28 leftAnchor];

                  v31 = [v27 constraintEqualToAnchor:v30];
                  *(v24 + 32) = v31;
                  v32 = [v12 view];
                  if (v32)
                  {
                    v33 = v32;
                    v34 = [v32 rightAnchor];

                    v35 = [v2 view];
                    if (v35)
                    {
                      v36 = v35;
                      v37 = [v35 rightAnchor];

                      v38 = [v34 constraintEqualToAnchor:v37];
                      *(v24 + 40) = v38;
                      v39 = [v12 view];
                      if (v39)
                      {
                        v40 = v39;
                        v41 = [v39 topAnchor];

                        v42 = [v2 view];
                        if (v42)
                        {
                          v43 = v42;
                          v44 = [v42 topAnchor];

                          v45 = [v41 constraintEqualToAnchor:v44];
                          *(v24 + 48) = v45;
                          v46 = [v12 view];

                          if (v46)
                          {
                            v47 = [v46 bottomAnchor];

                            v48 = [v2 view];
                            if (v48)
                            {
                              v49 = v48;
                              v50 = objc_opt_self();
                              v51 = [v49 bottomAnchor];

                              v52 = [v47 constraintEqualToAnchor:v51];
                              *(v24 + 56) = v52;
                              sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
                              isa = Array._bridgeToObjectiveC()().super.isa;

                              [v50 activateConstraints:isa];

                              v54 = *&v2[v1];
                              *&v2[v1] = v12;

                              return;
                            }

LABEL_32:
                            __break(1u);
                            return;
                          }

LABEL_31:
                          __break(1u);
                          goto LABEL_32;
                        }

LABEL_30:
                        __break(1u);
                        goto LABEL_31;
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

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }
}

uint64_t sub_101033130()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController);
  if (!v1)
  {
    return 1;
  }

  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 sharedKeyboardMonitor];
  [v4 keyboardFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  result = [v3 view];
  if (result)
  {
    v14 = result;
    [result frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    v25.origin.x = v16;
    v25.origin.y = v18;
    v25.size.width = v20;
    v25.size.height = v22;
    v23 = CGRectContainsRect(v24, v25);

    return v23;
  }

  __break(1u);
  return result;
}

double sub_1010332F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
  v38 = v4;
  v39 = v8;
  sub_10000BE14(a2, &v41, &unk_1019F4D00, &unk_10146E7F0);
  v9 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v10 = sub_100020E58(&v41, *(&v42 + 1));
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    sub_100005070(&v41);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v39 canPerformAction:a1 withSender:{v15, v38}];
  swift_unknownObjectRelease();
  if (v16)
  {
    *(a3 + 24) = sub_100006370(0, &qword_101A34200, off_10182FA38);
    v17 = v39;
LABEL_11:
    *a3 = v17;

    v26 = v17;
    return result;
  }

  sub_10000BE14(a2, &v41, &unk_1019F4D00, &unk_10146E7F0);
  v18 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v19 = sub_100020E58(&v41, *(&v42 + 1));
    v20 = *(v18 - 8);
    v21 = __chkstk_darwin(v19);
    v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23, v21);
    v24 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v20 + 8))(v23, v18);
    sub_100005070(&v41);
  }

  else
  {
    v24 = 0;
  }

  v25 = [v38 canPerformAction:a1 withSender:v24];
  swift_unknownObjectRelease();
  if (v25)
  {
    *(a3 + 24) = type metadata accessor for CRLiOSBoardViewController(0);
    v17 = v38;
    goto LABEL_11;
  }

  sub_10000BE14(a2, &v41, &unk_1019F4D00, &unk_10146E7F0);
  v28 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v29 = sub_100020E58(&v41, *(&v42 + 1));
    v30 = *(v28 - 8);
    v31 = __chkstk_darwin(v29);
    v33 = &v38 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v33, v31);
    v34 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v30 + 8))(v33, v28);
    sub_100005070(&v41);
  }

  else
  {
    v34 = 0;
  }

  v35 = type metadata accessor for CRLiOSBoardViewController(0);
  v40.receiver = v38;
  v40.super_class = v35;
  v36 = objc_msgSendSuper2(&v40, "targetForAction:withSender:", a1, v34);
  swift_unknownObjectRelease();
  if (v36)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  result = *&v41;
  v37 = v42;
  *a3 = v41;
  *(a3 + 16) = v37;
  return result;
}

uint64_t sub_1010338FC(uint64_t a1, uint64_t a2)
{
  v5 = String._bridgeToObjectiveC()();
  NSSelectorFromString(v5);

  if (static Selector.== infix(_:_:)())
  {
    return 1;
  }

  if (static Selector.== infix(_:_:)())
  {

    return sub_101035D60();
  }

  else
  {
    if (static Selector.== infix(_:_:)())
    {
      return [*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly] ^ 1;
    }

    if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
    {
      v7 = *(*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
      v8 = sub_100EC8784();

      if (v8 >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v9 != 0;
    }

    else
    {
      if (static Selector.== infix(_:_:)())
      {
        return 1;
      }

      if (static Selector.== infix(_:_:)())
      {
        v22 = &type metadata for CRLFeatureFlags;
        v23 = sub_100004D60();
        LOBYTE(v21[0]) = 14;
        v10 = isFeatureEnabled(_:)();
        sub_100005070(v21);
        if (v10)
        {
          return [type metadata accessor for ImagePlaygroundViewController() available];
        }

        else
        {
          return 0;
        }
      }

      else
      {
        sub_10000BE14(a2, v21, &unk_1019F4D00, &unk_10146E7F0);
        v11 = v22;
        if (v22)
        {
          v12 = sub_100020E58(v21, v22);
          Description = v11[-1].Description;
          v14 = __chkstk_darwin(v12);
          v16 = &v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
          Description[2](v16, v14);
          v17 = _bridgeAnythingToObjectiveC<A>(_:)();
          (Description[1])(v16, v11);
          sub_100005070(v21);
        }

        else
        {
          v17 = 0;
        }

        v18 = type metadata accessor for CRLiOSBoardViewController(0);
        v24.receiver = v2;
        v24.super_class = v18;
        v19 = objc_msgSendSuper2(&v24, "canPerformAction:withSender:", a1, v17);
        swift_unknownObjectRelease();
        return v19;
      }
    }
  }
}

void sub_101033D0C(void *a1)
{
  v21.receiver = v1;
  v21.super_class = type metadata accessor for CRLiOSBoardViewController(0);
  objc_msgSendSuper2(&v21, "validateCommand:", a1);
  [a1 action];
  v3 = String._bridgeToObjectiveC()();
  NSSelectorFromString(v3);

  if (static Selector.== infix(_:_:)())
  {
    goto LABEL_2;
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_101034298();
    sub_1006796F8();
LABEL_5:
    v4 = String._bridgeToObjectiveC()();

    [a1 setTitle:v4];

    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    v5 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled;
    if (v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled] == 2)
    {
      v1[v5] = sub_10102A558() & 1;
    }

    sub_1006797E8();
    v6 = String._bridgeToObjectiveC()();

    [a1 setTitle:v6];

    goto LABEL_11;
  }

  if (static Selector.== infix(_:_:)())
  {
    v7 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled;
    if (v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled] == 2)
    {
      v1[v7] = sub_10102983C() & 1;
    }

    sub_1006798DC();
    goto LABEL_5;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0)
  {
    if ((static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0)
    {
      if (static Selector.== infix(_:_:)())
      {
        v10 = [objc_opt_self() shouldSnapToGrid];
      }

      else
      {
        if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
        {
          v11 = objc_opt_self();
          v12 = @"CRLDisplayCenterGuides";
          v13 = [v11 standardUserDefaults];
        }

        else if (static Selector.== infix(_:_:)())
        {
          v14 = objc_opt_self();
          v12 = @"CRLDisplayEdgeGuides";
          v13 = [v14 standardUserDefaults];
        }

        else if (static Selector.== infix(_:_:)())
        {
          v15 = objc_opt_self();
          v12 = @"CRLDisplaySizingGuides";
          v13 = [v15 standardUserDefaults];
        }

        else if (static Selector.== infix(_:_:)())
        {
          v16 = objc_opt_self();
          v12 = @"CRLDisplaySpacingGuides";
          v13 = [v16 standardUserDefaults];
        }

        else
        {
          if ((static Selector.== infix(_:_:)() & 1) == 0)
          {
            return;
          }

          v17 = objc_opt_self();
          v12 = @"CRLUseHapticFeedbackWhenSnapping";
          v13 = [v17 standardUserDefaults];
        }

        v18 = v13;
        v19 = [v18 BOOLForKey:v12];

        v10 = v19;
      }

      [a1 setState:v10];
      return;
    }

LABEL_11:
    if (![*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly])
    {
      return;
    }

LABEL_2:
    [a1 setAttributes:1];
    return;
  }

  v8 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v8;
  static Published.subscript.getter();

  if ((v20 & 1) == 0)
  {
    goto LABEL_2;
  }
}

uint64_t sub_101034298()
{
  v1 = v0;
  v2 = _s5BoardVMa(0);
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v15 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v16 = *&v14[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_100050004(v16 + v17, v7, type metadata accessor for CRLBoardCRDTData);
  v18 = v14;
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D7BC(v7, type metadata accessor for CRLBoardCRDTData);
  v19 = (*&v14[v15] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v20 = *v19;
  v21 = v19[1];

  sub_10084BD4C(v10, v20, v21, v13);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_1010AB99C(v13, v4);
    sub_10003D7BC(v13, type metadata accessor for CRLBoardIdentifier);

    v24 = v4[*(v2 + 56)];
    sub_10003D7BC(v4, _s5BoardVMa);
    return v24;
  }

  else
  {
    sub_10003D7BC(v13, type metadata accessor for CRLBoardIdentifier);
    return 2;
  }
}

double sub_1010346B0()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v6 = sub_100EC8784();

  [*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] endEditing];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v1;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  *(v10 + 32) = v8;
  *(v10 + 40) = 0;
  *(v10 + 48) = v6;
  sub_10064191C(0, 0, v4, &unk_1014C2360, v10);

  return result;
}

uint64_t sub_10103483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 328) = a5;
  *(v6 + 192) = a4;
  *(v6 + 200) = a6;
  sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = type metadata accessor for MainActor();
  *(v6 + 240) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 248) = v8;
  *(v6 + 256) = v7;

  return _swift_task_switch(sub_10103492C, v8, v7);
}

uint64_t sub_10103492C(uint64_t a1)
{
  if (qword_1019F1910 != -1)
  {
    swift_once();
  }

  if (*(qword_101AD6B18 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_isPresenting) == 1)
  {
    v2 = *(qword_101AD6B18 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_parentViewController);
    if (v2)
    {
      v3 = *(v1 + 192);
      sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
      v4 = v2;
      v5 = v3;
      v6 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v6 = 0;
    }

    *(v1 + 329) = v6 & 1;
    v9 = [objc_opt_self() sharedPrintController];
    *(v1 + 264) = v9;
    *(v1 + 16) = v1;
    *(v1 + 24) = sub_101034B88;
    v10 = swift_continuation_init();
    *(v1 + 136) = sub_1005B981C(&qword_101A14AA0, &unk_10148DF50);
    *(v1 + 80) = _NSConcreteStackBlock;
    *(v1 + 88) = *"";
    *(v1 + 96) = sub_100675B28;
    *(v1 + 104) = &unk_1018AE110;
    *(v1 + 112) = v10;
    [v9 dismissAnimated:1 completionHandler:v1 + 80];

    return _swift_continuation_await(v1 + 16);
  }

  else
  {
    *(v1 + 272) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v1 + 280) = v8;
    *(v1 + 288) = v7;

    return _swift_task_switch(sub_101034FB8, v8, v7);
  }
}

uint64_t sub_101034B88()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return _swift_task_switch(sub_101034C90, v2, v1);
}

uint64_t sub_101034C90()
{
  v1 = *(v0 + 329);

  if (v1)
  {
    goto LABEL_2;
  }

  v4 = *(v0 + 224);
  v5 = *(v0 + 192);
  v6 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastPrintContentDate;
  swift_beginAccess();
  sub_10000BE14(v5 + v6, v4, &qword_101A0A320, &qword_10146D650);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(v4, 1, v7);
  sub_10000CAAC(v4, &qword_101A0A320, &qword_10146D650);
  if (v10 == 1)
  {
    goto LABEL_8;
  }

  v11 = *(v0 + 216);
  sub_10000BE14(v5 + v6, v11, &qword_101A0A320, &qword_10146D650);
  result = v9(v11, 1, v7);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v12 = *(v0 + 216);
  Date.timeIntervalSinceNow.getter();
  v14 = v13;
  (*(v8 + 8))(v12, v7);
  if (fabs(v14) <= 1.5)
  {
LABEL_2:

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
LABEL_8:
    v15 = *(v0 + 208);
    static Date.now.getter();
    (*(v8 + 56))(v15, 0, 1, v7);
    swift_beginAccess();
    sub_10002C638(v15, v5 + v6, &qword_101A0A320, &qword_10146D650);
    swift_endAccess();
    v16 = sub_101012FD4();
    v17 = [v16 mode];

    LODWORD(v16) = [v17 wantsToEndForNonPopoverPresentations];
    if (v16)
    {
      [*(*(v0 + 192) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) resetToDefaultModeAnimated:1];
    }

    v18 = swift_task_alloc();
    *(v0 + 320) = v18;
    *v18 = v0;
    v18[1] = sub_1010355A4;
    v19 = *(v0 + 328);
    v20 = *(v0 + 200);

    return sub_101035740(v19, v20);
  }
}

uint64_t sub_101034FB8(uint64_t a1)
{
  v2 = v1[24];
  v3 = static MainActor.shared.getter();
  v1[37] = v3;
  v4 = swift_task_alloc();
  v1[38] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = 1;
  v5 = swift_task_alloc();
  v1[39] = v5;
  *v5 = v1;
  v5[1] = sub_1010350C8;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, &protocol witness table for MainActor, 0xD000000000000048, 0x80000001015BA8D0, sub_101052DEC, v4, &type metadata for () + 8);
}

uint64_t sub_1010350C8()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_101035228, v3, v2);
}

uint64_t sub_101035228()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_10103528C, v1, v2);
}

uint64_t sub_10103528C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastPrintContentDate;
  swift_beginAccess();
  sub_10000BE14(v2 + v3, v1, &qword_101A0A320, &qword_10146D650);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  sub_10000CAAC(v1, &qword_101A0A320, &qword_10146D650);
  if (v7 == 1)
  {
    goto LABEL_4;
  }

  v8 = *(v0 + 216);
  sub_10000BE14(v2 + v3, v8, &qword_101A0A320, &qword_10146D650);
  result = v6(v8, 1, v4);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v10 = *(v0 + 216);
  Date.timeIntervalSinceNow.getter();
  v12 = v11;
  (*(v5 + 8))(v10, v4);
  if (fabs(v12) > 1.5)
  {
LABEL_4:
    v13 = *(v0 + 208);
    static Date.now.getter();
    (*(v5 + 56))(v13, 0, 1, v4);
    swift_beginAccess();
    sub_10002C638(v13, v2 + v3, &qword_101A0A320, &qword_10146D650);
    swift_endAccess();
    v14 = sub_101012FD4();
    v15 = [v14 mode];

    LODWORD(v14) = [v15 wantsToEndForNonPopoverPresentations];
    if (v14)
    {
      [*(*(v0 + 192) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) resetToDefaultModeAnimated:1];
    }

    v16 = swift_task_alloc();
    *(v0 + 320) = v16;
    *v16 = v0;
    v16[1] = sub_1010355A4;
    v17 = *(v0 + 328);
    v18 = *(v0 + 200);

    return sub_101035740(v17, v18);
  }

  else
  {

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1010355A4()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return _swift_task_switch(sub_1010356C4, v3, v2);
}

uint64_t sub_1010356C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101035740(char a1, uint64_t a2)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  *(v3 + 160) = a1;
  type metadata accessor for MainActor();
  *(v3 + 112) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 120) = v5;
  *(v3 + 128) = v4;

  return _swift_task_switch(sub_1010357DC, v5, v4);
}

uint64_t sub_1010357DC()
{
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  *(v0 + 136) = v1;
  v2 = [v1 textInputResponder];
  if (v2)
  {
    v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_endTextInputWhenFirstResponderResigns] = 0;
  }

  if (qword_1019F1910 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 96);
  v4 = *(v0 + 160);
  v5 = qword_101AD6B18;
  v6 = *(*(*(v0 + 104) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardActor);

  v7 = sub_100D1D100();
  [v1 visibleUnscaledRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  *(v5 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_boardActor) = v6;

  v16 = *(v5 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_parentViewController);
  *(v5 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_parentViewController) = v7;

  *(v5 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_scenes) = v3;

  v17 = v5 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_deviceWindowSize;
  *v17 = v9;
  *(v17 + 8) = v11;
  *(v17 + 16) = v13;
  *(v17 + 24) = v15;
  *(v17 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_defaultToPrintScenes) = v4;

  v18 = swift_task_alloc();
  *(v0 + 144) = v18;
  *v18 = v0;
  v18[1] = sub_1010359E8;

  return sub_1008BCF6C();
}

uint64_t sub_1010359E8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_101035BB8;
  }

  else
  {
    v5 = sub_101035B24;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_101035B24()
{

  v1 = [*(v0 + 136) textInputResponder];
  if (v1)
  {
    v1[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_endTextInputWhenFirstResponderResigns] = 1;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_101035BB8()
{

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(v0 + 88) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error trying to show print UI. %@", 33, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  v8 = [*(v0 + 136) textInputResponder];
  if (v8)
  {
    v8[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_endTextInputWhenFirstResponderResigns] = 1;
  }

  v9 = *(v0 + 8);

  return v9();
}

id sub_101035D60()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s5BoardVMa(0);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v31 = v11;
    v16 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v17 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v18 = *&v16[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v19 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_100050004(v18 + v19, v4, type metadata accessor for CRLBoardCRDTData);
    v20 = v16;
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    CRRegister.wrappedValue.getter();
    sub_10003D7BC(v4, type metadata accessor for CRLBoardCRDTData);
    v21 = (*&v16[v17] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v22 = *v21;
    v23 = v21[1];

    sub_10084BD4C(v7, v22, v23, v10);

    sub_1010AB99C(v10, v13);
    sub_10003D7BC(v10, type metadata accessor for CRLBoardIdentifier);

    LOBYTE(v22) = v13[*(v31 + 52)];
    sub_10003D7BC(v13, _s5BoardVMa);
    v24 = v22 ^ 1;
  }

  else
  {
    v24 = 1;
  }

  v25 = [*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) documentIsSharedReadOnly];
  v26 = v25;
  result = (v25 ^ 1);
  if ((v26 & 1) == 0 && (v24 & 1) == 0)
  {
    v28 = sub_101013250();
    v29 = [v28 isEnabled];

    return v29;
  }

  return result;
}

void sub_1010360D0(uint64_t a1)
{
  sub_10000D990(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_101036390()
{
  v1 = v0;
  v2 = [v0 presentedViewController];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController];
    if (v4)
    {
      sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_willPresentCompactScenesNavigator];
}

void sub_10103658C(void *a1)
{
  v2 = v1;
  v4 = sub_101012FD4();
  [v4 resetToDefaultModeAnimated:1];

  [*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] leaveQuickSelectModeIfNeeded];
  v5 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController];
  if (v5)
  {
    [v5 dismissViewControllerAnimated:1 completion:0];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v6 = [a1 collaboratorColorForType:2];
    [v2 rectForBorder];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = type metadata accessor for CRLFollowBorderHighlightView();
    v16 = objc_allocWithZone(v15);
    swift_unknownObjectWeakInit();
    *&v16[OBJC_IVAR____TtC8Freeform28CRLFollowBorderHighlightView_defaultCornerRadius] = 0x4030000000000000;
    swift_unknownObjectWeakAssign();
    *&v16[OBJC_IVAR____TtC8Freeform28CRLFollowBorderHighlightView_color] = v6;
    *&v16[OBJC_IVAR____TtC8Freeform28CRLFollowBorderHighlightView_width] = 0x4020000000000000;
    v17 = &v16[OBJC_IVAR____TtC8Freeform28CRLFollowBorderHighlightView_canvasRect];
    *v17 = v8;
    *(v17 + 1) = v10;
    *(v17 + 2) = v12;
    *(v17 + 3) = v14;
    v87.receiver = v16;
    v87.super_class = v15;
    v18 = v6;
    v19 = objc_msgSendSuper2(&v87, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 clearColor];
    [v21 setBackgroundColor:v22];

    [v21 setUserInteractionEnabled:0];
    v23 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followBorderHighlightView];
    *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followBorderHighlightView] = v21;
  }

  v24 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followBorderHighlightView];
  if (!v24)
  {
    goto LABEL_12;
  }

  v25 = v24;
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [v2 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_23;
  }

  v27 = v26;
  [v26 addSubview:v25];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10146E8B0;
  v29 = [v25 topAnchor];
  v30 = [v2 view];
  if (!v30)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v31 = v30;
  v32 = [v30 safeAreaLayoutGuide];

  v33 = [v32 topAnchor];
  v34 = [v29 constraintEqualToAnchor:v33];

  *(v28 + 32) = v34;
  v35 = [v25 leadingAnchor];
  v36 = [v2 view];
  if (!v36)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = v36;
  v38 = [v36 leadingAnchor];

  v39 = [v35 constraintEqualToAnchor:v38];
  *(v28 + 40) = v39;
  v40 = [v25 trailingAnchor];
  v41 = [v2 view];
  if (!v41)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v42 = v41;
  v43 = [v41 trailingAnchor];

  v44 = [v40 constraintEqualToAnchor:v43];
  *(v28 + 48) = v44;
  v45 = [v25 bottomAnchor];

  v46 = [v2 view];
  if (!v46)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v47 = v46;
  v48 = objc_opt_self();
  v49 = [v47 bottomAnchor];

  v50 = [v45 constraintEqualToAnchor:v49];
  *(v28 + 56) = v50;
  sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v48 activateConstraints:isa];

LABEL_12:
  v52 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController];
  if (v52)
  {
    v53 = v52;
    v54 = sub_1006A4EF0();
    v55 = OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu;
    v56 = *&v53[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu];
    *&v53[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu] = v54;

    v57 = sub_1006A4738();
    v58 = *&v53[v55];
    [v57 setMenu:v58];
  }

  v59 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
  if (v59)
  {
    v60 = v59;
    sub_100ACD0A8();
  }

  *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem] = sub_10064E0E4();

  v61 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  v62 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_statusHUDManager];
  [v61 unobscuredScrollViewFrame];
  v64 = v63;
  v65 = *(*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  v66 = sub_10090E86C();

  v67 = swift_allocObject();
  *(v67 + 16) = v2;
  v68 = type metadata accessor for CRLPersistentFollowHUDController(0);
  v69 = objc_allocWithZone(v68);
  v70 = objc_allocWithZone(v68);
  v71 = a1;
  v72 = v2;
  v73 = v66;
  v74 = sub_101050AC0(v62, v71, 0, v66, v70);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v75 = &v74[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_canvasWidth];
  *v75 = v64;
  v75[8] = 0;
  v76 = &v74[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_stopButtonClickedHandler];
  v77 = *&v74[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_stopButtonClickedHandler];
  v78 = *&v74[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_stopButtonClickedHandler + 8];
  *v76 = sub_10105A5C8;
  v76[1] = v67;
  v79 = v74;

  sub_1000C1014(v77, v78);
  if ((v79[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_setupDone] & 1) == 0)
  {
    v79[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_setupDone] = 1;
    sub_10100E5B0(v80);
    [*&v79[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_containerView] addSubview:*&v79[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hudView]];
    sub_100A4D7F4();
  }

  v81 = sub_100A4C94C();
  v83 = v82;

  v84 = &v79[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_accessibilityAnnouncement];
  *v84 = v81;
  v84[1] = v83;

  swift_unknownObjectWeakAssign();
  v85 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followHUD;
  v86 = *&v72[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followHUD];
  if (v86)
  {
    swift_unknownObjectRetain();
    sub_10104E1D0(v86, v79, v62, &unk_1018AE878, sub_10105B434, &unk_1018AE890);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10104E784(v79, v62, &unk_1018AE878, sub_10105B434, &unk_1018AE890, 0.0);
  }

  *&v72[v85] = v79;
  swift_unknownObjectRelease();
}

void sub_101036E30(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  sub_1008FEE94(0);
}

double sub_101036F04(void *a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followBorderHighlightView;
  v7 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followBorderHighlightView];
  if (v7)
  {
    [v7 removeFromSuperview];
    v8 = *&v3[v6];
  }

  else
  {
    v8 = 0;
  }

  *&v3[v6] = 0;

  v9 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1006A4EF0();
    v12 = OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu;
    v13 = *&v10[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu];
    *&v10[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu] = v11;

    v14 = sub_1006A4738();
    v15 = *&v10[v12];
    [v14 setMenu:v15];
  }

  v16 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
  if (v16)
  {
    v17 = v16;
    sub_100ACD0A8();
  }

  *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem] = sub_10064E0E4();

  v19 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followHUD;
  if (*&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followHUD])
  {
    v20 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_statusHUDManager];
    if ((a2 & 1) != 0 && a1)
    {
      v21 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
      v22 = v20;
      v23 = a1;
      v24 = v22;
      v25 = v23;
      swift_unknownObjectRetain();
      [v21 unobscuredScrollViewFrame];
      v27 = v26;
      v28 = swift_allocObject();
      *(v28 + 16) = v3;
      *(v28 + 24) = v25;
      v29 = type metadata accessor for CRLTransientRefollowHUDController(0);
      v30 = objc_allocWithZone(v29);
      v31 = objc_allocWithZone(v29);
      v32 = v25;
      v3;
      v53 = v24;
      v33 = sub_101050F18(v24, v32, 0, v31);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v34 = &v33[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_canvasWidth];
      *v34 = v27;
      v34[8] = 0;
      v35 = &v33[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_refollowClickedHandler];
      v36 = *&v33[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_refollowClickedHandler];
      v37 = *&v33[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_refollowClickedHandler + 8];
      *v35 = sub_10105A5C0;
      v35[1] = v28;
      v38 = v33;

      sub_1000C1014(v36, v37);
      if ((v38[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_setupDone] & 1) == 0)
      {
        v38[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_setupDone] = 1;
        sub_10100E5B0(v39);
        [*&v38[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_containerView] addSubview:*&v38[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hudView]];
        sub_100B0A760();
      }

      v40 = [objc_opt_self() mainBundle];
      v41 = String._bridgeToObjectiveC()();
      v42 = String._bridgeToObjectiveC()();
      v43 = [v40 localizedStringForKey:v41 value:v42 table:0];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = &v38[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_accessibilityAnnouncement];
      *v47 = v44;
      v47[1] = v46;

      v48 = swift_unknownObjectRetain();
      sub_10104E1D0(v48, v38, v53, &unk_1018AE800, sub_10105B434, &unk_1018AE818);
      swift_unknownObjectRelease();
      *&v3[v19] = v38;
      v54 = v38;
      swift_unknownObjectRelease();
      v49 = *&v54[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hudView];
      CRLAccessibilityPostLayoutChangedNotification(v49, v50);

      swift_unknownObjectRelease();
      swift_unknownObjectWeakAssign();
    }

    else
    {
      v51 = v20;
      v52 = swift_unknownObjectRetain();
      CRLStatusHUDManager.hide(hudController:)(v52);

      swift_unknownObjectRelease();
      *&v3[v19] = 0;

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_101037408(uint64_t a1, char **a2)
{
  v3 = *(*(a1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  sub_100900650(a2, 1);
}

void sub_10103755C(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_statusHUDManager);
  v6 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v7 = v5;
  [v6 unobscuredScrollViewFrame];
  v9 = v8;
  started = type metadata accessor for CRLTransientStartEndFollowHUDController(0);
  objc_allocWithZone(started);
  v11 = objc_allocWithZone(started);
  v12 = a1;
  v21 = sub_101051384(v7, a1, 0, 0, v3, v11);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v13 = &v21[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_canvasWidth];
  *v13 = v9;
  v13[8] = 0;
  if (v21[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_setupDone] == 1)
  {
    v14 = v21;
  }

  else
  {
    v21[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_setupDone] = 1;
    v15 = v21;
    sub_10100E5B0(v15);
    [*&v15[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView] addSubview:*&v15[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView]];
    sub_100807FC4();
  }

  v16 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v21 action:"touchedHUDWithSender:"];
  [v16 setNumberOfTapsRequired:1];
  [*&v21[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView] addGestureRecognizer:v16];

  v17 = sub_100807914();
  v19 = v18;

  v20 = &v21[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_accessibilityAnnouncement];
  *v20 = v17;
  v20[1] = v19;

  sub_10104E784(v21, v7, &unk_1018AE788, sub_10105B434, &unk_1018AE7A0, 0.0);
}

void sub_1010378A8(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_statusHUDManager);
  v6 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v7 = v5;
  [v6 unobscuredScrollViewFrame];
  v9 = v8;
  started = type metadata accessor for CRLTransientStartEndFollowHUDController(0);
  objc_allocWithZone(started);
  v19 = sub_101051384(v7, a1, 1, 0, v3, objc_allocWithZone(started));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v11 = &v19[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_canvasWidth];
  *v11 = v9;
  v11[8] = 0;
  if (v19[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_setupDone] == 1)
  {
    v12 = v19;
  }

  else
  {
    v19[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_setupDone] = 1;
    v13 = v19;
    sub_10100E5B0(v13);
    [*&v13[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView] addSubview:*&v13[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView]];
    sub_100807FC4();
  }

  v14 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v19 action:"touchedHUDWithSender:"];
  [v14 setNumberOfTapsRequired:1];
  [*&v19[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView] addGestureRecognizer:v14];

  v15 = sub_100807914();
  v17 = v16;

  v18 = &v19[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_accessibilityAnnouncement];
  *v18 = v15;
  v18[1] = v17;

  sub_10104E784(v19, v7, &unk_1018AE788, sub_10105B434, &unk_1018AE7A0, 0.0);
}

void sub_101037B6C(unint64_t a1)
{
  sub_100F7B574(a1);
  sub_100F7B674(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() actionWithTitle:v9 style:0 handler:0];

  [v11 addAction:v10];
  [v1 presentViewController:v11 animated:1 completion:{0, sub_1011047E4(v11)}];
}

void sub_101037DA4(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100F7B790(a1, a2);
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v18 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v12 = [v5 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() actionWithTitle:v16 style:0 handler:0];

  [v18 addAction:v17];
  [v2 presentViewController:v18 animated:1 completion:{0, sub_1011047E4(v18)}];
}

void sub_101038090()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = [v1 mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v18 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v12 = [v1 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() actionWithTitle:v16 style:0 handler:0];

  [v18 addAction:v17];
  [v0 presentViewController:v18 animated:1 completion:{0, sub_1011047E4(v18)}];
}

void *sub_10103848C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(int a1), uint64_t a5)
{
  v6 = v5;
  v12 = String._bridgeToObjectiveC()();
  if (a4)
  {
    v59 = a4;
    v60 = a5;
    aBlock = _NSConcreteStackBlock;
    v56 = *"";
    v57 = sub_100007638;
    v58 = &unk_1018AE660;
    v13 = _Block_copy(&aBlock);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 beginModalOperationWithLocalizedMessage:v12 progress:a3 cancelHandler:v13];
  _Block_release(v13);

  if (v14)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      if (!a3)
      {
        return v16;
      }

      goto LABEL_12;
    }

    swift_unknownObjectRelease();
  }

  v50 = a1;
  v51 = a4;
  v52 = a5;
  v53 = v6;
  v54 = a2;
  v49 = objc_opt_self();
  v17 = [v49 _atomicIncrementAssertCount];
  aBlock = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &aBlock, "invalid nil found when unwrapping value", 39, 2u);
  StaticString.description.getter("beginModalOperation(withPresentedLocalizedMessage:progress:cancelHandler:)", 74, 2);
  v18 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v19 lastPathComponent];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v24 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v17;
  v26 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v26;
  v27 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v27;
  *(inited + 72) = v18;
  *(inited + 136) = &type metadata for String;
  v28 = sub_1000053B0();
  *(inited + 112) = v21;
  *(inited + 120) = v23;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v28;
  *(inited + 152) = 3101;
  v29 = aBlock;
  *(inited + 216) = v26;
  *(inited + 224) = v27;
  *(inited + 192) = v29;
  v30 = v18;
  v31 = v29;
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v33, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v34 = swift_allocObject();
  v34[2] = 8;
  v34[3] = 0;
  v34[4] = 0;
  v34[5] = 0;
  v35 = __VaListBuilder.va_list()();
  StaticString.description.getter("beginModalOperation(withPresentedLocalizedMessage:progress:cancelHandler:)", 74, 2);
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
  v38 = String._bridgeToObjectiveC()();

  [v49 handleFailureInFunction:v36 file:v37 lineNumber:3101 isFatal:0 format:v38 args:v35];

  v16 = 0;
  v6 = v53;
  a2 = v54;
  a4 = v51;
  a5 = v52;
  a1 = v50;
  if (a3)
  {
LABEL_12:
    v39 = objc_opt_self();
    v40 = swift_allocObject();
    v40[2] = a3;
    v40[3] = v6;
    v40[4] = a1;
    v40[5] = a2;
    v40[6] = a4;
    v40[7] = a5;
    v40[8] = v16;
    v59 = sub_10105A594;
    v60 = v40;
    aBlock = _NSConcreteStackBlock;
    v56 = *"";
    v57 = sub_10068B39C;
    v58 = &unk_1018AE638;
    v41 = _Block_copy(&aBlock);
    v42 = a3;
    sub_10067F2EC(a4, a5);
    v43 = v16;
    v44 = v42;
    v45 = v6;

    v46 = [v39 scheduledTimerWithTimeInterval:1 repeats:v41 block:1.0];

    _Block_release(v41);
    v47 = *&v45[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressTimer];
    *&v45[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressTimer] = v46;
  }

  return v16;
}

void sub_101038A88(int a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  [a2 value];
  if (v13 >= 0.0)
  {
    [a2 value];
    v15 = v14;
    [a2 maxValue];
    if (v15 < v16)
    {
      [*(a3 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressTimer) invalidate];
      if (a6)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = a6;
        *(v17 + 24) = a7;
        v18 = sub_10002AAEC;
      }

      else
      {
        v18 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
        v17 = 0;
      }

      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v17;
      sub_10067F2EC(a6, a7);
      v20 = String._bridgeToObjectiveC()();
      v33 = sub_10105A5A8;
      v34 = v19;
      v29 = _NSConcreteStackBlock;
      v30 = *"";
      v31 = sub_100007638;
      v32 = &unk_1018AE6B0;
      v21 = _Block_copy(&v29);
      v22 = [objc_opt_self() progressViewControllerWithTitle:v20 crlProgress:a2 cancelHandler:v21];

      _Block_release(v21);

      v23 = *(a3 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressViewController);
      *(a3 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressViewController) = v22;
      v24 = v22;

      v25 = *(a3 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController);
      v26 = swift_allocObject();
      *(v26 + 16) = a8;
      v33 = sub_10105A5B0;
      v34 = v26;
      v29 = _NSConcreteStackBlock;
      v30 = *"";
      v31 = sub_100007638;
      v32 = &unk_1018AE700;
      v27 = _Block_copy(&v29);
      v28 = a8;

      [v25 presentViewController:v24 animated:1 completion:v27];
      _Block_release(v27);
    }
  }
}

void sub_101038E3C(uint64_t a1)
{
  v2 = v1;
  if (a1 && (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    v4 = v3;
    swift_unknownObjectRetain();
    [v4 endIgnoringUserInteractionSafely];
    if (!*(*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator))
    {
      __break(1u);
      return;
    }

    sub_1008346E4(0xD000000000000012, 0x80000001015BB040);
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = objc_opt_self();
    v5 = [v32 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("endModalOperation(with:)", 24, 2);
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v14;
    v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 3126;
    v17 = v33;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter("endModalOperation(with:)", 24, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v26 = String._bridgeToObjectiveC()();

    [v32 handleFailureInFunction:v24 file:v25 lineNumber:3126 isFatal:0 format:v26 args:v23];
  }

  v27 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressTimer;
  [*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressTimer) invalidate];
  v28 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressViewController;
  v29 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressViewController);
  if (v29)
  {
    [v29 dismissViewControllerAnimated:1 completion:0];
  }

  v30 = *(v2 + v27);
  *(v2 + v27) = 0;

  v31 = *(v2 + v28);
  *(v2 + v28) = 0;
}

BOOL sub_101039428()
{
  v1 = v0;
  if ([v0 isInDrawingMode])
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v2 = static OS_os_log.crlDefault;
    v3 = static os_log_type_t.info.getter();
    sub_100005404(v2, &_mh_execute_header, v3, "attempting to present tip whilst in drawing mode!", 49, 2, _swiftEmptyArrayStorage);
    return 0;
  }

  v4 = sub_1010243F4();
  if (v4)
  {
    v5 = v4;
    v6 = sub_100C0BA2C();

    if (v6)
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v7 = static OS_os_log.crlDefault;
      v8 = static os_log_type_t.info.getter();
      sub_100005404(v7, &_mh_execute_header, v8, "attempting to present tip whilst welcome controller is visible", 62, 2, _swiftEmptyArrayStorage);
      return 0;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    return 0;
  }

  v11 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentlyPresentedTip;
  swift_beginAccess();
  sub_10000BE14(v1 + v11, v13, &unk_1019F6DA0, &unk_1014C20F0);
  v12 = v14 == 0;
  sub_10000CAAC(v13, &unk_1019F6DA0, &unk_1014C20F0);
  return v12;
}

void sub_1010395E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ValueMetadata *a5, uint64_t (*a6)())
{
  v36 = a2;
  Description = a5[-1].Description;
  v38 = a3;
  v11 = Description[8];
  __chkstk_darwin(a1);
  v40 = &type metadata for CRLFeatureFlags;
  v41 = sub_100004D60();
  LOBYTE(aBlock[0]) = 0;
  v12 = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if (v12)
  {
    v34 = a4;
    v35 = v6;
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v15 = dispatch thunk of Tip.id.getter();
    v17 = v16;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v15;
    *(inited + 40) = v17;
    v18 = static os_log_type_t.info.getter();
    sub_100005404(v13, &_mh_execute_header, v18, "presenting tip from a barButtonItem: %{public}@", 47, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v19 = v35;
    if (sub_101039428())
    {
      type metadata accessor for TipUIPopoverViewController();
      v40 = a5;
      v41 = a6;
      v20 = sub_10002C58C(aBlock);
      v21 = Description;
      v33 = a6;
      v22 = Description[2];
      v22(v20, a1, a5);
      swift_unknownObjectRetain();
      v23 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
      swift_unknownObjectRetain();
      TipUIPopoverViewController.presentationDelegate.setter();
      v22((&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a1, a5);
      v24 = (*(v21 + 80) + 48) & ~*(v21 + 80);
      v25 = swift_allocObject();
      v26 = v33;
      *(v25 + 2) = a5;
      *(v25 + 3) = v26;
      *(v25 + 4) = v19;
      *(v25 + 5) = v23;
      (v21[4])(&v25[v24], &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
      v27 = &v25[(v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8];
      v28 = v38;
      v29 = v34;
      *v27 = v38;
      v27[1] = v29;
      v41 = sub_10105B228;
      v42 = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      v40 = &unk_1018AF290;
      v30 = _Block_copy(aBlock);
      v31 = v19;
      v32 = v23;
      sub_10067F2EC(v28, v29);

      [v31 presentViewController:v32 animated:1 completion:v30];

      _Block_release(v30);
    }
  }
}