id sub_100048AFC(void *a1)
{
  v4 = sub_1000573D8(a1);
  if (!v2)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(HFActionSetBuilder) initWithExistingObject:v4 inHome:a1];
    v1 = [objc_allocWithZone(HUSceneActionEditorViewController) initWithActionSetBuilder:v6 mode:0];
    [v1 setModalPresentationStyle:2];
  }

  return v1;
}

void sub_100048BA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    v10 = [v8 tableView];
    if (v10)
    {
      v11 = v10;
      v12 = sub_100070AEC(a3);
      v24 = sub_100077518(v12, v13, v11, a4, 0);

      v23 = [v24 asGeneric];

      return;
    }

    sub_100057794();
    v14 = swift_allocError();
    *v22 = 0x656956656C626174;
    *(v22 + 8) = 0xE900000000000077;
    *(v22 + 16) = v8;
    *(v22 + 48) = 0;
  }

  else
  {
    sub_100057794();
    v14 = swift_allocError();
    v16 = v15;
    _StringGuts.grow(_:)(48);

    v17 = [a1 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    *v16 = 0xD00000000000002ELL;
    *(v16 + 8) = 0x800000010009A240;
    *(v16 + 48) = 4;
  }

  swift_willThrow();
  swift_errorRetain();
  sub_10007095C(a3, v14);
}

BOOL sub_100048E18(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 hf_affectedServices];
  sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
  sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v5 + 16);
  }

  v7 = [v3 hf_affectedServices];
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  if (v6 != v9)
  {
    return v9 < v6;
  }

  v10 = [v2 name];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [v3 name];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == v11 && v17 == v13)
  {

    return 0;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v19 & 1;
  }
}

id sub_100049010(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 topViewController];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

LABEL_6:
    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 hf_errorWithCode:30 description:v19];

    v21 = _convertErrorToNSError(_:)();
    v22 = [objc_opt_self() futureWithError:v21];

    return v22;
  }

  v9 = [v8 itemManager];
  v10 = [v9 home];

  if (v10)
  {
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = v10;
    v11[5] = a1;
    v28[4] = sub_100057CC8;
    v28[5] = v11;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 1107296256;
    v28[2] = sub_100077B88;
    v28[3] = &unk_1000C5BC0;
    v12 = _Block_copy(v28);
    v13 = objc_opt_self();

    v14 = v10;
    v15 = a1;
    v16 = [v13 futureWithBlock:v12];

    _Block_release(v12);

    return v16;
  }

  else
  {
    v23 = objc_opt_self();
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 hf_errorWithCode:59 description:v24];

    v26 = _convertErrorToNSError(_:)();
    v27 = [objc_opt_self() futureWithError:v26];

    return v27;
  }
}

uint64_t sub_1000492E8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = [objc_opt_self() mainThreadScheduler];
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a1;
  v18[4] = sub_100057D24;
  v18[5] = v11;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100077B44;
  v18[3] = &unk_1000C5C10;
  v12 = _Block_copy(v18);

  v13 = a4;
  v14 = a5;
  v15 = a1;

  v16 = [v10 afterDelay:v12 performBlock:0.3];
  _Block_release(v12);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_100049444(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a1(a3);
  v8 = [a4 hu_presentPreloadableViewController:v7 animated:1];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a5;
    *(v10 + 24) = v7;
    aBlock[4] = sub_100057D74;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100073438;
    aBlock[3] = &unk_1000C5C60;
    v11 = _Block_copy(aBlock);
    v12 = a5;
    v13 = v7;

    v14 = [v9 addCompletionBlock:v11];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

id sub_1000495E4(int a1, uint64_t a2, id a3, uint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    v5 = _convertErrorToNSError(_:)();
    [a3 finishWithError:v5];
  }

  else
  {

    return [a3 finishWithResult:a4];
  }
}

void sub_1000496D4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = [a1 topViewController];
  if (v7 && (v8 = v7, objc_opt_self(), v9 = swift_dynamicCastObjCClass(), v8, v9))
  {
    sub_100070AEC(a3);
    v10 = String._bridgeToObjectiveC()();

    [a2 startedTest:v10];

    v11 = [a4 firstReadCompleteFuture];
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v26 = sub_10005D7AC;
    v27 = v12;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10005D794;
    v25 = &unk_1000C4DB0;
    v13 = _Block_copy(&aBlock);
    v14 = a2;

    v15 = [v11 addSuccessBlock:v13];
    _Block_release(v13);

    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = a3;
    v26 = sub_10005D77C;
    v27 = v16;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100047498;
    v25 = &unk_1000C4E00;
    v17 = _Block_copy(&aBlock);
    v18 = v14;

    v19 = [v15 addFailureBlock:v17];
    _Block_release(v17);
  }

  else
  {
    sub_100057794();
    v20 = swift_allocError();
    *v21 = 0xD000000000000024;
    *(v21 + 8) = 0x8000000100099FF0;
    *(v21 + 48) = 4;
    swift_willThrow();
    swift_errorRetain();
    sub_10007095C(a3, v20);
  }
}

void sub_1000499C0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = 1;
    *(v8 + 32) = a2;
    *(v8 + 40) = a1;
    v13[4] = sub_100057820;
    v13[5] = v8;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10005D794;
    v13[3] = &unk_1000C4E50;
    v9 = _Block_copy(v13);
    v10 = v3;

    v11 = a1;

    v12 = [v7 addSuccessBlock:v9];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_100049B04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 topViewController];
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v11 = sub_10007739C(v8, a3, a4);

      return;
    }
  }

  sub_100057794();
  v9 = swift_allocError();
  *v10 = 0xD000000000000024;
  *(v10 + 8) = 0x8000000100099FF0;
  *(v10 + 48) = 4;
  swift_willThrow();
  swift_errorRetain();
  sub_10007095C(a3, v9);
}

id sub_100049C54(int a1, id a2)
{
  v2 = [a2 selectTabWithIdentifier:HFHomeAppTabIdentifierTriggers];
  v3 = [v2 asGeneric];

  return v3;
}

id sub_100049CB8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_100049D20(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  v8 = objc_opt_self();
  v9 = a2;
  v10 = a4;
  v11 = [v8 mainThreadScheduler];
  v15[4] = sub_1000582FC;
  v15[5] = v7;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100077B88;
  v15[3] = &unk_1000C5F08;
  v12 = _Block_copy(v15);
  v13 = [objc_opt_self() futureWithBlock:v12 scheduler:v11];
  swift_unknownObjectRelease();
  _Block_release(v12);

  return v13;
}

uint64_t sub_100049E5C(void *a1, void *a2, char a3, void *a4)
{
  v8 = [objc_opt_self() mainThreadScheduler];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 40) = a1;
  v16[4] = sub_100058354;
  v16[5] = v9;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100077B44;
  v16[3] = &unk_1000C5F58;
  v10 = _Block_copy(v16);
  v11 = a2;
  v12 = a4;
  v13 = a1;

  v14 = [v8 afterDelay:v10 performBlock:0.5];
  _Block_release(v10);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_100049F9C(void *a1, uint64_t a2, void *a3, void *a4)
{
  sub_100070AEC(a2);
  v7 = String._bridgeToObjectiveC()();

  [a1 startedTest:v7];

  v8 = [a3 selectTabWithIdentifier:HFHomeAppTabIdentifierHome];
  v9 = [v8 asGeneric];

  v10 = [a4 completionHandlerAdapter];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10005839C;
  *(v12 + 24) = v11;
  v15[4] = sub_1000583A4;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100073438;
  v15[3] = &unk_1000C5FD0;
  v13 = _Block_copy(v15);

  v14 = [v9 addCompletionBlock:v13];
  _Block_release(v13);
}

void sub_10004A150(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10005D10C(a1, v11, &qword_1000D9D88, &qword_100093400);
  v5 = v12;
  if (!v12)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = sub_1000583BC(v11, v12);
  v7 = *(v5 - 8);
  __chkstk_darwin(v6, v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v7 + 8))(v9, v5);
  sub_1000578FC(v11);
  if (a2)
  {
LABEL_3:
    a2 = _convertErrorToNSError(_:)();
  }

LABEL_4:
  (*(a3 + 16))(a3, v10, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_10004A2C4(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t))
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    *&v7 = a1;
    sub_1000583AC(&v7, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  swift_unknownObjectRetain();
  a3(v9, a2);
  return sub_10005C664(v9, &qword_1000D9D88, &qword_100093400);
}

void sub_10004A35C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [a1 topViewController];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_beginAccess();
      v13 = *(a4 + 16);
      if (v13)
      {
        v14 = v13;
        v15 = sub_10006EA70(v14);

        v16 = swift_allocObject();
        *(v16 + 16) = a5;
        *(v16 + 24) = a6;
        v29 = sub_100058F30;
        v30 = v16;
        aBlock = _NSConcreteStackBlock;
        v26 = 1107296256;
        v27 = sub_10005D794;
        v28 = &unk_1000C60C0;
        v17 = _Block_copy(&aBlock);

        v18 = [v15 addSuccessBlock:v17];
        _Block_release(v17);

        v19 = swift_allocObject();
        *(v19 + 16) = a2;
        *(v19 + 24) = a3;
        v29 = sub_10005D77C;
        v30 = v19;
        aBlock = _NSConcreteStackBlock;
        v26 = 1107296256;
        v27 = sub_100047498;
        v28 = &unk_1000C6110;
        v20 = _Block_copy(&aBlock);
        v21 = a2;

        v22 = [v18 addFailureBlock:v20];
        _Block_release(v20);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  sub_100057794();
  v23 = swift_allocError();
  *v24 = 0xD000000000000024;
  *(v24 + 8) = 0x8000000100099FF0;
  *(v24 + 48) = 4;
  sub_10007095C(a3, v23);
}

void sub_10004A630(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10004A69C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  swift_beginAccess();
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = [v12 asGeneric];
    v14 = [objc_allocWithZone(HUTriggerSummaryViewController) initWithTriggerBuilder:v13 mode:0 isPresentedModally:1 delegate:0];

    v15 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v14];
    v16 = [a1 topViewController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 hu_presentPreloadableViewController:v15 animated:1];

      if (v18)
      {
        v19 = swift_allocObject();
        v19[2] = a3;
        v19[3] = a4;
        v19[4] = v14;
        v31 = sub_100059F40;
        v32 = v19;
        aBlock = _NSConcreteStackBlock;
        v28 = 1107296256;
        v29 = sub_10005D79C;
        v30 = &unk_1000C6318;
        v20 = _Block_copy(&aBlock);
        v21 = v18;

        v22 = v14;

        v14 = [v21 addSuccessBlock:v20];
        _Block_release(v20);

        v23 = swift_allocObject();
        *(v23 + 16) = a5;
        *(v23 + 24) = a6;
        v31 = sub_10005D77C;
        v32 = v23;
        aBlock = _NSConcreteStackBlock;
        v28 = 1107296256;
        v29 = sub_100047498;
        v30 = &unk_1000C6368;
        v24 = _Block_copy(&aBlock);
        v25 = a5;

        v26 = [v14 addFailureBlock:v24];

        _Block_release(v24);
        v15 = v26;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10004A964(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a3;
  sub_100070AEC(a3);
  v13 = String._bridgeToObjectiveC()();

  [a2 startedTest:v13];

  swift_beginAccess();
  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = [v14 home];
    v16 = [v15 areAutomationBuildersSupported];

    v17 = [a1 commitChanges];
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    *(v18 + 32) = v10;
    *(v18 + 33) = v16;
    *(v18 + 40) = a4;
    aBlock[4] = a6;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005D79C;
    aBlock[3] = a7;
    v19 = _Block_copy(aBlock);
    v20 = a1;
    v21 = a2;

    v22 = [v17 addSuccessBlock:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004AB18(int a1, id a2, void *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  [a2 dismissViewControllerAnimated:1 completion:0];
  sub_1000578B4(&qword_1000D9D90, &qword_1000931B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100093140;
  strcpy(&aBlock, "usingBuilders");
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = a5;
  sub_100058F7C(inited);
  swift_setDeallocating();
  sub_10005C664(inited + 32, &qword_1000D9D98, &qword_1000931B8);
  sub_100070AEC(v12);
  swift_retain_n();
  v15 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v21 = a7;
  v22 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v19 = sub_100077B44;
  v20 = a8;
  v17 = _Block_copy(&aBlock);

  [a3 finishedTest:v15 waitForCommit:1 extraResults:isa withTeardownBlock:v17];

  _Block_release(v17);
}

void *sub_10004AD30(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {

    return sleep(3u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10004AD98(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10004AE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  *(a3 + 16) = a2;
  swift_errorRetain();

  if (a1)
  {
    sub_10005B9DC(0, &qword_1000D9DB8, HRERecommendation_ptr);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  swift_beginAccess();
  *(a4 + 16) = _swiftEmptyArrayStorage;
}

id sub_10004AEFC(int a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v65 = a3;
  v66 = a2;
  v10 = sub_1000578B4(&qword_1000D9E28, &unk_1000931D0);
  v62 = *(v10 - 8);
  __chkstk_darwin(v10 - 8, v11);
  v63 = &v59 - v12;
  v13 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v17 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v20 = &v59 - v19;
  v21 = static os_log_type_t.default.getter();
  sub_10005B9DC(0, &qword_1000D9D80, OS_os_log_ptr);
  v22 = static OS_os_log.default.getter();
  v23 = os_log_type_enabled(v22, v21);
  v67 = v20;
  v64 = a1;
  if (v23)
  {
    v59 = a5;
    v60 = v6;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock = v25;
    *v24 = 136315138;
    v26 = 0xEC00000079726F73;
    v27 = 0x7365636341796E61;
    v28 = 0x8000000100099AF0;
    v29 = 0x617373696D736964;
    if (a1 == 2)
    {
      v29 = 0xD000000000000015;
    }

    else
    {
      v28 = 0xE90000000000006CLL;
    }

    if (a1)
    {
      v27 = 0xD000000000000016;
      v26 = 0x8000000100099AD0;
    }

    if (a1 <= 1u)
    {
      v30 = v27;
    }

    else
    {
      v30 = v29;
    }

    if (a1 <= 1u)
    {
      v31 = v26;
    }

    else
    {
      v31 = v28;
    }

    v32 = sub_10006B744(v30, v31, &aBlock);

    *(v24 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v22, v21, "PPT - Launching quick controls for %s", v24, 0xCu);
    sub_1000578FC(v25);

    v20 = v67;
    v6 = v60;
    a5 = v59;
  }

  else
  {
  }

  v74 = 0x726F737365636361;
  v75 = 0xEB00000000444979;
  AnyHashable.init<A>(_:)();
  if (*(a4 + 16) && (v33 = sub_10007C3AC(&aBlock), (v34 & 1) != 0))
  {
    sub_10005A46C(*(a4 + 56) + 32 * v33, v76);
    sub_10005A088(&aBlock);
    if ((swift_dynamicCast() & 1) != 0 && v75)
    {
      UUID.init(uuidString:)();
      goto LABEL_22;
    }
  }

  else
  {
    sub_10005A088(&aBlock);
  }

  v35 = type metadata accessor for UUID();
  (*(*(v35 - 8) + 56))(v20, 1, 1, v35);
LABEL_22:
  result = [v6 _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
  if (result)
  {
    v37 = result;

    sub_10005D10C(v20, v17, &unk_1000D9E30, &qword_1000933F0);
    v38 = a5;
    v39 = v63;
    sub_10005D10C(v38, v63, &qword_1000D9E28, &unk_1000931D0);
    v40 = (*(v61 + 80) + 25) & ~*(v61 + 80);
    v41 = (v14 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (*(v62 + 80) + v41 + 9) & ~*(v62 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v6;
    *(v43 + 24) = v64;
    sub_10005A2F8(v17, v43 + v40, &unk_1000D9E30, &qword_1000933F0);
    v44 = v43 + v41;
    v45 = v65;
    *v44 = v65;
    v46 = v66;
    *(v44 + 8) = v66;
    sub_10005A2F8(v39, v43 + v42, &qword_1000D9E28, &unk_1000931D0);
    v72 = sub_10005A360;
    v73 = v43;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_10005D798;
    v71 = &unk_1000C6480;
    v47 = _Block_copy(&aBlock);
    v48 = v6;
    v49 = v45;

    v50 = [v37 flatMap:v47];
    _Block_release(v47);

    v51 = swift_allocObject();
    *(v51 + 16) = v49;
    *(v51 + 24) = v46;
    v72 = sub_10005D7A4;
    v73 = v51;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_10005D79C;
    v71 = &unk_1000C64D0;
    v52 = _Block_copy(&aBlock);
    v53 = v49;

    v54 = [v50 addSuccessBlock:v52];
    _Block_release(v52);

    v55 = swift_allocObject();
    *(v55 + 16) = v53;
    *(v55 + 24) = v46;
    v72 = sub_10005D77C;
    v73 = v55;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_100047498;
    v71 = &unk_1000C6520;
    v56 = _Block_copy(&aBlock);
    v57 = v53;

    v58 = [v54 addFailureBlock:v56];
    _Block_release(v56);

    return sub_10005C664(v67, &unk_1000D9E30, &qword_1000933F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004B648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = type metadata accessor for MainActor();
  v6[4] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_10004B71C;

  return sub_10005AAA8(a6);
}

uint64_t sub_10004B71C()
{
  *(*v1 + 48) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10004B878;
  }

  else
  {
    v4 = sub_10005D7B4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10004B878()
{
  v1 = *(v0 + 48);

  swift_errorRetain();
  sub_10007095C(30, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004B904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = type metadata accessor for MainActor();
  v6[4] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_10004B9D8;

  return sub_10005BA24(a6);
}

uint64_t sub_10004B9D8()
{
  *(*v1 + 48) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10004BB34;
  }

  else
  {
    v4 = sub_10005D7B4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10004BB34()
{
  v1 = *(v0 + 48);

  swift_errorRetain();
  sub_10007095C(31, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004BBC0()
{
  v1[3] = v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10004BC58, v3, v2);
}

uint64_t sub_10004BC58()
{
  v1 = [*(v0 + 24) _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
  *(v0 + 56) = v1;
  if (v1)
  {
    v3 = v1;
    v4 = swift_task_alloc();
    *(v0 + 64) = v4;
    v2 = sub_10005B9DC(0, &qword_1000D9FA0, UINavigationController_ptr);
    *v4 = v0;
    v4[1] = sub_10004BD40;
    v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return static NAFutureHelper.continuation<A>(_:)(v1, v2);
}

uint64_t sub_10004BD40(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
    v6 = sub_10004C030;
  }

  else
  {

    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
    v6 = sub_10004BE5C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10004BE5C()
{
  v1 = *(v0 + 72);

  v2 = [v1 topViewController];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;

      v6 = *(v0 + 8);

      return v6(v5);
    }
  }

  v8 = *(v0 + 72);
  sub_100057794();
  swift_allocError();
  v10 = v9;
  _StringGuts.grow(_:)(83);
  v11._object = 0x800000010009A320;
  v11._countAndFlagsBits = 0xD000000000000051;
  String.append(_:)(v11);
  *(v0 + 16) = [v8 topViewController];
  sub_1000578B4(&unk_1000DA8B0, &unk_1000931E0);
  v12._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v12);

  *v10 = 0;
  *(v10 + 8) = 0xE000000000000000;
  *(v10 + 48) = 4;
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10004C030()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004C09C(uint64_t a1)
{
  v1 = type metadata accessor for Device.Control.Kind.Primitive();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v36 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v6);
  v35 = &v25 - v7;
  v33 = type metadata accessor for Device.Control.Kind();
  v8 = *(v33 - 8);
  __chkstk_darwin(v33, v9);
  v32 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Device.ControlModule.controls(in:)();
  v17 = 0;
  v34 = *(result + 16);
  v29 = (v8 + 8);
  v30 = v12 + 16;
  v28 = enum case for Device.Control.Kind.Primitive.incremental(_:);
  v18 = (v2 + 8);
  v26 = (v12 + 8);
  v27 = (v2 + 104);
  v31 = result;
  while (1)
  {
    v21 = v17;
    if (v34 == v17)
    {
LABEL_9:
      v24 = v34 != v21;

      return v24;
    }

    if (v17 >= *(result + 16))
    {
      break;
    }

    v22 = v11;
    (*(v12 + 16))(v15, result + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v17, v11);
    v23 = v32;
    Device.Control.kind.getter();
    Device.Control.Kind.primitive.getter();
    (*v29)(v23, v33);
    (*v27)(v36, v28, v1);
    sub_10005A6F4(&unk_1000D9EA0, &type metadata accessor for Device.Control.Kind.Primitive, &protocol conformance descriptor for Device.Control.Kind.Primitive);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v39 == v37 && v40 == v38)
    {
      v19 = 1;
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v20 = *v18;
    (*v18)(v36, v1);
    v20(v35, v1);
    v11 = v22;
    (*v26)(v15, v22);

    v17 = v21 + 1;
    result = v31;
    if (v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C488(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000015;
      v4 = 0x8000000100099AF0;
    }

    else
    {
      v3 = 0x617373696D736964;
      v4 = 0xE90000000000006CLL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x7365636341796E61;
    }

    if (v2)
    {
      v4 = 0x8000000100099AD0;
    }

    else
    {
      v4 = 0xEC00000079726F73;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x8000000100099AF0;
      if (v3 != 0xD000000000000015)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE90000000000006CLL;
      if (v3 != 0x617373696D736964)
      {
LABEL_26:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x7365636341796E61;
    }

    if (a2)
    {
      v6 = 0x8000000100099AD0;
    }

    else
    {
      v6 = 0xEC00000079726F73;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

id sub_10004C5F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v40 = a3;
  v41 = a4;
  v7 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v11 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v39 - v14;
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v39 - v18;
  __chkstk_darwin(v17, v20);
  v22 = &v39 - v21;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v42 = v5;
  v24 = [v5 homeKitObjectIDFrom:isa userDefaultsEnabled:1];

  if (v24)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
  }

  else
  {
    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  }

  sub_10005A2F8(v19, v22, &unk_1000D9E30, &qword_1000933F0);
  v26 = [a2 itemManager];
  sub_10005D10C(v22, v15, &unk_1000D9E30, &qword_1000933F0);
  type metadata accessor for UUID();
  v27 = *(v25 - 8);
  v28 = 0;
  if ((*(v27 + 48))(v15, 1, v25) != 1)
  {
    v28 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v27 + 8))(v15, v25);
  }

  sub_10005D10C(v22, v11, &unk_1000D9E30, &qword_1000933F0);
  v29 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v30 = (v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_10005A2F8(v11, v31 + v29, &unk_1000D9E30, &qword_1000933F0);
  v32 = (v31 + v30);
  v33 = v41;
  *v32 = v40;
  v32[1] = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_10005B920;
  *(v34 + 24) = v31;
  aBlock[4] = sub_10005D7B0;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004DAF0;
  aBlock[3] = &unk_1000C6868;
  v35 = _Block_copy(aBlock);

  v36 = [v42 findAccessoryWithItemManager:v26 accessoryID:v28 testBlock:v35];
  _Block_release(v35);

  sub_10005C664(v22, &unk_1000D9E30, &qword_1000933F0);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004CAB0(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControl.ViewSize();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2, v3);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for AccessoryControl.ViewSizeConstraint();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50, v5);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000578B4(&qword_1000D9EB0, &qword_100093250);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for ControlViewType();
  v53 = *(v11 - 8);
  v13 = __chkstk_darwin(v11, v12);
  v46 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v45 = &v45 - v16;
  v17 = type metadata accessor for Device.Control.Kind.Primitive();
  v18 = *(v17 - 8);
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v25 = &v45 - v24;
  v26 = type metadata accessor for Device.Control.Kind();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26, v28);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  Device.Control.kind.getter();
  Device.Control.Kind.primitive.getter();
  (*(v27 + 8))(v30, v26);
  (*(v18 + 104))(v22, enum case for Device.Control.Kind.Primitive.binary(_:), v17);
  sub_10005A6F4(&unk_1000D9EA0, &type metadata accessor for Device.Control.Kind.Primitive, &protocol conformance descriptor for Device.Control.Kind.Primitive);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v57 == v55 && v58 == v56)
  {
    v31 = *(v18 + 8);
    v31(v22, v17);
    v31(v25, v17);
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v33 = *(v18 + 8);
    v33(v22, v17);
    v33(v25, v17);

    if ((v32 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  Device.Control.preferredViewType.getter();
  v34 = v53;
  if ((*(v53 + 48))(v10, 1, v11) != 1)
  {
    v35 = v45;
    (*(v34 + 32))(v45, v10, v11);
    v36 = v46;
    (*(v34 + 104))(v46, enum case for ControlViewType.largeSwitch(_:), v11);
    sub_10005A6F4(&qword_1000D9EB8, &type metadata accessor for ControlViewType, &protocol conformance descriptor for ControlViewType);
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    v38 = *(v34 + 8);
    v38(v36, v11);
    v38(v35, v11);
    if (v37)
    {
      goto LABEL_8;
    }

LABEL_9:
    v43 = 0;
    return v43 & 1;
  }

  sub_10005C664(v10, &qword_1000D9EB0, &qword_100093250);
LABEL_8:
  v39 = v47;
  Device.Control.sizeConstraint.getter();
  v41 = v51;
  v40 = v52;
  v42 = v49;
  (*(v51 + 104))(v49, enum case for AccessoryControl.ViewSize.large(_:), v52);
  v43 = AccessoryControl.ViewSizeConstraint.allows(size:)();
  (*(v41 + 8))(v42, v40);
  (*(v48 + 8))(v39, v50);
  return v43 & 1;
}

uint64_t sub_10004D104(uint64_t a1)
{
  v1 = type metadata accessor for Device.Control();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Device.ControlModule.controls(in:)();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  while (1)
  {
    v10 = v8;
    if (v9 == v8)
    {
LABEL_5:

      return v9 != v10;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    (*(v2 + 16))(v5, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8++, v1);
    v11 = sub_10004CAB0(v5);
    result = (*(v2 + 8))(v5, v1);
    if (v11)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004D268(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v28 - v10;
  v32 = &OBJC_PROTOCOL___HFAccessoryRepresentableItem;
  v12 = swift_dynamicCastObjCProtocolConditional();
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  v28 = a4;
  v29 = a3;
  v30 = a1;
  v14 = [v13 accessoryRepresentableObject];
  swift_getObjectType();
  v15 = HFAccessoryRepresentable.containedServices.getter();
  swift_unknownObjectRelease();
  v16 = sub_10004D58C(v15);

  sub_1000578B4(&unk_1000DA8A0, &qword_100093230);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100093140;
  v20 = [objc_msgSend(v13 "homeKitObject")];
  swift_unknownObjectRelease();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = v16;
  sub_100053B30(v19);
  v21 = v31;
  v22 = *(v18 + 48);
  if (v22(a2, 1, v17) == 1)
  {

LABEL_6:
    type metadata accessor for AccessoryControlsHelper();
    v25 = [v13 accessoryRepresentableObject];
    v26 = static AccessoryControlsHelper.controlModules(for:)();
    swift_unknownObjectRelease();
    v27 = v29(v26);

    return v27 & 1;
  }

  sub_10005D10C(a2, v11, &unk_1000D9E30, &qword_1000933F0);
  result = (v22)(v11, 1, v17);
  if (result != 1)
  {
    v24 = sub_10004D998(v11, v21);

    (*(v18 + 8))(v11, v17);
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_8:
    v27 = 0;
    return v27 & 1;
  }

  __break(1u);
  return result;
}

void *sub_10004D58C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  __chkstk_darwin(v3, v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_100053C5C(0, v8 & ~(v8 >> 63), 0);
    v45 = v50;
    if (v44)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v10 = *(a1 + 36);
    }

    v47 = result;
    v48 = v10;
    v49 = v44 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v40 = v8;
      v41 = v43 + 32;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v38 = a1 + 56;
      v39 = v12;
      v36[1] = v1;
      v37 = a1 + 64;
      while (v11 < v8)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_37;
        }

        v15 = v47;
        v16 = v48;
        v17 = v49;
        v18 = a1;
        sub_10007CCB0(v47, v48, v49, a1);
        v20 = v19;
        v21 = [v19 uniqueIdentifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = v45;
        v50 = v45;
        v24 = v45[2];
        v23 = v45[3];
        if (v24 >= v23 >> 1)
        {
          sub_100053C5C((v23 > 1), v24 + 1, 1);
          v22 = v50;
        }

        v22[2] = v24 + 1;
        v25 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v45 = v22;
        result = (*(v43 + 32))(v22 + v25 + *(v43 + 72) * v24, v7, v42);
        if (v44)
        {
          if (!v17)
          {
            goto LABEL_42;
          }

          a1 = v18;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v40;
          sub_1000578B4(&qword_1000D9E98, &qword_100093238);
          v13 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v13(v46, 0);
          if (v11 == v8)
          {
LABEL_34:
            sub_10005B9CC(v47, v48, v49);
            return v45;
          }
        }

        else
        {
          if (v17)
          {
            goto LABEL_43;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v18;
          v26 = (1 << *(v18 + 32));
          if (v15 >= v26)
          {
            goto LABEL_38;
          }

          v27 = v15 >> 6;
          v28 = *(v38 + 8 * (v15 >> 6));
          if (((v28 >> v15) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v18 + 36) != v16)
          {
            goto LABEL_40;
          }

          v29 = v28 & (-2 << (v15 & 0x3F));
          if (v29)
          {
            v26 = (__clz(__rbit64(v29)) | v15 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v37 + 8 * v27);
            while (v31 < (v26 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                result = sub_10005B9CC(v15, v16, 0);
                v26 = (__clz(__rbit64(v33)) + v30);
                goto LABEL_33;
              }
            }

            result = sub_10005B9CC(v15, v16, 0);
          }

LABEL_33:
          v35 = *(v18 + 36);
          v47 = v26;
          v48 = v35;
          v49 = 0;
          v8 = v40;
          if (v11 == v40)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

BOOL sub_10004D998(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for UUID();
    ++v2;
    sub_10005A6F4(&qword_1000D9E90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_10004DAF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_10004DB34(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  [swift_unknownObjectRetain() tap:{a2, a3}];
  [a1 dragWithStartPoint:a2 endPoint:a3 duration:{a4, a5, 2.0}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 2.0}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.5}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.5}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.5}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.5}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.5}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.5}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.5}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.5}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.5}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.5}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  for (i = 0; i != 11; ++i)
  {
    v25.origin.x = a8;
    v25.origin.y = a9;
    v25.size.width = a10;
    v25.size.height = a11;
    MinY = CGRectGetMinY(v25);
    v26.origin.x = a8;
    v26.origin.y = a9;
    v26.size.width = a10;
    v26.size.height = a11;
    v20 = MinY + CGRectGetHeight(v26) / 10.0 * i;
    v27.origin.x = a8;
    v27.origin.y = a9;
    v27.size.width = a10;
    v27.size.height = a11;
    [a1 tap:{CGRectGetMidX(v27), v20}];
    [a1 advanceTime:0.2];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10004E114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a5;
  *(v7 + 16) = a6;
  *(v7 + 56) = a5;
  *(v7 + 24) = type metadata accessor for MainActor();
  *(v7 + 32) = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  *(v7 + 40) = v11;
  *v11 = v7;
  v11[1] = sub_10004E1F0;

  return sub_10004E34C(v10, a6, a7);
}

uint64_t sub_10004E1F0()
{
  *(*v1 + 48) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10005D610;
  }

  else
  {
    v4 = sub_10005D7B4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10004E34C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  *(v4 + 128) = a2;
  *(v4 + 288) = a1;
  sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  *(v4 + 152) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 160) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 168) = v6;
  *(v4 + 176) = v5;

  return _swift_task_switch(sub_10004E424, v6, v5);
}

uint64_t sub_10004E424(uint64_t a1)
{
  v22 = v1;
  v2 = static os_log_type_t.default.getter();
  *(v1 + 184) = sub_10005B9DC(0, &qword_1000D9D80, OS_os_log_ptr);
  v3 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v1 + 288);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v7 = sub_100070AEC(v4);
    v9 = sub_10006B744(v7, v8, &v21);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v2, "PPT - Launching accessory settings for %s", v5, 0xCu);
    sub_1000578FC(v6);
  }

  v10 = *(v1 + 136);
  *(v1 + 88) = 0x726F737365636361;
  *(v1 + 96) = 0xEB00000000444979;
  AnyHashable.init<A>(_:)();
  if (*(v10 + 16) && (v11 = sub_10007C3AC(v1 + 16), (v12 & 1) != 0))
  {
    sub_10005A46C(*(*(v1 + 136) + 56) + 32 * v11, v1 + 56);
    sub_10005A088(v1 + 16);
    if (swift_dynamicCast())
    {
      v13 = *(v1 + 112);
      if (v13)
      {
        UUID.init(uuidString:)();
        goto LABEL_10;
      }
    }
  }

  else
  {
    sub_10005A088(v1 + 16);
  }

  v14 = *(v1 + 152);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v13 = 0;
LABEL_10:
  *(v1 + 192) = v13;
  v16 = [*(v1 + 144) _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
  *(v1 + 200) = v16;
  if (v16)
  {
    v18 = v16;
    v19 = swift_task_alloc();
    *(v1 + 208) = v19;
    v17 = sub_10005B9DC(0, &qword_1000D9FA0, UINavigationController_ptr);
    *v19 = v1;
    v19[1] = sub_10004E714;
    v16 = v18;
  }

  else
  {
    __break(1u);
  }

  return static NAFutureHelper.continuation<A>(_:)(v16, v17);
}

uint64_t sub_10004E714(uint64_t a1)
{
  v3 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {

    v4 = v3[21];
    v5 = v3[22];
    v6 = sub_10004F2F0;
  }

  else
  {
    v4 = v3[21];
    v5 = v3[22];
    v6 = sub_10004E830;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10004E830()
{
  v1 = [*(v0 + 216) topViewController];
  *(v0 + 232) = v1;
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  *(v0 + 240) = v3;
  if (!v3)
  {

LABEL_11:

    v17 = *(v0 + 216);
    v2 = *(v0 + 200);
    sub_100057794();
    swift_allocError();
    v19 = v18;
    _StringGuts.grow(_:)(83);
    v20._countAndFlagsBits = 0xD000000000000051;
    v20._object = 0x800000010009A320;
    String.append(_:)(v20);
    *(v0 + 120) = [v17 topViewController];
    sub_1000578B4(&unk_1000DA8B0, &unk_1000931E0);
    v21._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v21);

    *v19 = 0;
    *(v19 + 8) = 0xE000000000000000;
    *(v19 + 48) = 4;
    swift_willThrow();
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [*(v0 + 144) appNavigator];
  *(v0 + 248) = v5;
  if (v5)
  {
    v6 = v5;
    static os_log_type_t.default.getter();
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v8 = [v4 collectionView];
    if (!v8)
    {
      __break(1u);
      return static NAFutureHelper.continuation<A>(_:)(v8, v9);
    }

    v10 = v8;
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 288);

    v14 = [v4 itemManager];
    v15 = sub_10005C6C4(v13, v14, v12, v11, &off_1000C4658);
    *(v0 + 256) = v15;

    if (v15)
    {
      if (sub_100070AEC(*(v0 + 288)) == 0xD000000000000018 && 0x8000000100099E70 == v16)
      {
        goto LABEL_8;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_18;
      }

      if (sub_100070AEC(*(v0 + 288)) == 0xD000000000000015 && 0x8000000100099EF0 == v33)
      {
LABEL_8:
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0)
        {
LABEL_19:
          v31 = [v6 showAccessory:v15 secondaryDestination:1];
          *(v0 + 264) = v31;
          v32 = swift_task_alloc();
          *(v0 + 272) = v32;
          *v32 = v0;
          v32[1] = sub_10004ED60;
          v9 = &type metadata for Swift.AnyObject + 8;
          v8 = v31;

          return static NAFutureHelper.continuation<A>(_:)(v8, v9);
        }
      }

LABEL_18:
      v29 = *(v0 + 128);
      sub_100070AEC(*(v0 + 288));
      v30 = String._bridgeToObjectiveC()();

      [v29 startedTest:v30];

      goto LABEL_19;
    }

    v26 = *(v0 + 216);
    v17 = *(v0 + 200);

    sub_100057794();
    swift_allocError();
    *v27 = 0xD000000000000031;
    *(v27 + 8) = 0x800000010009A590;
    *(v27 + 48) = 4;
    swift_willThrow();
  }

  else
  {
    v24 = *(v0 + 216);
    v17 = *(v0 + 200);

    sub_100057794();
    swift_allocError();
    *v25 = 1;
    *(v25 + 8) = 0u;
    *(v25 + 24) = 0u;
    *(v25 + 40) = 0;
    *(v25 + 48) = 5;
    swift_willThrow();
  }

LABEL_12:

  sub_10005C664(*(v0 + 152), &unk_1000D9E30, &qword_1000933F0);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10004ED60(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v4 = *(v3 + 168);
    v5 = *(v3 + 176);
    v6 = sub_10004F380;
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = *(v3 + 168);
    v5 = *(v3 + 176);
    v6 = sub_10004EE8C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10004EE8C()
{
  v1 = *(v0 + 288);

  if (sub_100070AEC(v1) == 0xD000000000000018 && 0x8000000100099E70 == v2)
  {
LABEL_8:

    goto LABEL_9;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v4 & 1) == 0)
  {
    if (sub_100070AEC(*(v0 + 288)) != 0xD000000000000015 || 0x8000000100099EF0 != v5)
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v49 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  v6 = *(v0 + 128);
  sub_100070AEC(*(v0 + 288));
  v7 = String._bridgeToObjectiveC()();

  [v6 finishedTest:v7 waitForCommit:1 extraResults:0];

LABEL_10:
  if (sub_100070AEC(*(v0 + 288)) == 0xD000000000000017 && 0x8000000100099E90 == v8)
  {
    goto LABEL_12;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    if (sub_100070AEC(*(v0 + 288)) == 0xD00000000000001ELL && 0x8000000100099EB0 == v41)
    {
LABEL_12:

      goto LABEL_14;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v42 & 1) == 0)
    {
      v43 = *(v0 + 256);
      v44 = *(v0 + 264);
      v45 = *(v0 + 248);
      v46 = *(v0 + 232);
      v47 = *(v0 + 216);
      v48 = *(v0 + 200);
      sub_10005C664(*(v0 + 152), &unk_1000D9E30, &qword_1000933F0);

      goto LABEL_35;
    }
  }

LABEL_14:
  v10 = *(v0 + 240);
  v11 = *(v0 + 232);
  v12 = [v10 presentedViewController];
  if (!v12)
  {
LABEL_22:
    v30 = *(v0 + 256);
    v31 = *(v0 + 264);
    v32 = *(v0 + 240);
    v33 = *(v0 + 248);
    v34 = *(v0 + 232);
    v35 = *(v0 + 216);
    v51 = *(v0 + 200);
    sub_100057794();
    swift_allocError();
    v37 = v36;
    v38 = [v32 presentedViewController];

    *v37 = 0xD00000000000001ELL;
    *(v37 + 8) = 0x800000010009A5D0;
    v24 = v34;
    *(v37 + 16) = v38;
    *(v37 + 48) = 0;
    swift_willThrow();

    goto LABEL_23;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14 || (v15 = [v14 topViewController]) == 0)
  {
    v16 = v13;
LABEL_21:

    goto LABEL_22;
  }

  v16 = v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

    goto LABEL_21;
  }

  v18 = v17;
  v19 = *(v0 + 280);
  v20 = *(v0 + 136);
  v21 = *(v0 + 288);

  v22 = sub_1000780FC(v18, v21, v20);
  v23 = v19;
  v24 = *(v0 + 256);
  v25 = *(v0 + 264);
  v26 = *(v0 + 248);
  v27 = *(v0 + 232);
  v28 = *(v0 + 216);
  v29 = *(v0 + 200);
  if (v23)
  {

LABEL_23:
    sub_10005C664(*(v0 + 152), &unk_1000D9E30, &qword_1000933F0);

    v39 = *(v0 + 8);
    goto LABEL_24;
  }

  v50 = *(v0 + 152);

  sub_10005C664(v50, &unk_1000D9E30, &qword_1000933F0);
LABEL_35:

  v39 = *(v0 + 8);
LABEL_24:

  return v39();
}

uint64_t sub_10004F2F0()
{
  v1 = v0[25];

  sub_10005C664(v0[19], &unk_1000D9E30, &qword_1000933F0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10004F380()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[25];

  sub_10005C664(v0[19], &unk_1000D9E30, &qword_1000933F0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10004F444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a6;
  *(v7 + 56) = a5;
  *(v7 + 24) = type metadata accessor for MainActor();
  *(v7 + 32) = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  *(v7 + 40) = v11;
  *v11 = v7;
  v11[1] = sub_10004F520;

  return sub_10004E34C(a5, a6, a7);
}

uint64_t sub_10004F520()
{
  *(*v1 + 48) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10004F6DC;
  }

  else
  {
    v4 = sub_10004F67C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10004F67C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004F6DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);

  sub_100070AEC(v2);
  v3 = String._bridgeToObjectiveC()();

  [v1 failedTest:v3 withFailure:0];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10004F790(void *a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = a1;
  v7 = [v5 mediaAccessoryItemType];
  v8 = *(a2 + 16);
  v9 = (a2 + 32);
  do
  {
    v10 = v8-- != 0;
    v11 = v10;
    if (!v10)
    {
      break;
    }

    v12 = *v9++;
  }

  while (v12 != v7);

  return v11;
}

BOOL sub_10004F824(void *a1)
{
  v1 = [a1 services];
  sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
  sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return v3 == 1;
}

Swift::Int sub_10004F8F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004F9C0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10004FA7C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10004FB48@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005D0B8(*a1);
  *a2 = result;
  return result;
}

void sub_10004FB78(unint64_t *a1@<X8>)
{
  v2 = 0xEC00000079726F73;
  v3 = 0x7365636341796E61;
  v4 = 0x8000000100099AF0;
  v5 = 0x617373696D736964;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v4 = 0xE90000000000006CLL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x8000000100099AD0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10004FC04(void *a1, void *a2, unsigned __int8 a3, uint64_t a4, void *a5, unsigned int a6, uint64_t a7)
{
  v108 = a7;
  v111 = a6;
  v112 = a5;
  v11 = sub_1000578B4(&qword_1000D9E28, &unk_1000931D0);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v99 - v13;
  v15 = type metadata accessor for DispatchTimeInterval();
  v109 = *(v15 - 8);
  v110 = v15;
  v16 = *(v109 + 64);
  v18 = __chkstk_darwin(v15, v17);
  v106 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v107 = &v99 - v20;
  v21 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v23 = __chkstk_darwin(v21 - 8, v22);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v28 = &v99 - v27;
  v29 = [a1 topViewController];
  if (!v29)
  {
    goto LABEL_13;
  }

  v30 = v29;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  v32 = v30;
  if (!v31)
  {

LABEL_13:
    sub_100057794();
    swift_allocError();
    v57 = v56;
    aBlock = 0;
    v114 = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    v58._countAndFlagsBits = 0xD000000000000051;
    v58._object = 0x800000010009A320;
    String.append(_:)(v58);
    v119 = [a1 topViewController];
    sub_1000578B4(&unk_1000DA8B0, &unk_1000931E0);
    v59._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v59);

    v60 = v114;
    *v57 = aBlock;
    *(v57 + 8) = v60;
    *(v57 + 48) = 4;
    v61 = _convertErrorToNSError(_:)();
    v62 = [objc_opt_self() futureWithError:v61];

    return v62;
  }

  v33 = v31;
  v105 = v32;
  v34 = [a2 appNavigator];
  if (!v34)
  {
LABEL_16:
    sub_100057794();
    swift_allocError();
    *v63 = 1;
    *(v63 + 8) = 0u;
    *(v63 + 24) = 0u;
    *(v63 + 40) = 0;
    *(v63 + 48) = 5;
    v64 = _convertErrorToNSError(_:)();
    v65 = [objc_opt_self() futureWithError:v64];

    return v65;
  }

  v35 = v34;
  v36 = [a2 baseViewController];
  if (!v36)
  {

    goto LABEL_16;
  }

  v102 = v36;
  v104 = v35;
  v37 = a3;
  static os_log_type_t.default.getter();
  sub_10005B9DC(0, &qword_1000D9D80, OS_os_log_ptr);
  v38 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v103 = v37;
  v39 = [v33 itemManager];
  v40 = v39;
  if ((v37 - 1) >= 2)
  {
    sub_10005D10C(a4, v28, &unk_1000D9E30, &qword_1000933F0);
    v66 = type metadata accessor for UUID();
    v67 = *(v66 - 8);
    isa = 0;
    if ((*(v67 + 48))(v28, 1, v66) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v67 + 8))(v28, v66);
    }

    v117 = sub_100050A8C;
    v118 = 0;
    aBlock = _NSConcreteStackBlock;
    v114 = 1107296256;
    v115 = sub_100050A90;
    v116 = &unk_1000C6660;
    v69 = _Block_copy(&aBlock);

    v51 = [a2 findPreferredAccessoryWithItemManager:v40 accessoryID:isa with:v69];

    _Block_release(v69);
    result = swift_isEscapingClosureAtFileLocation();
    v54 = v104;
    if ((result & 1) == 0)
    {
      v55 = 0;
      v45 = 0;
      v46 = v103;
      if (v51)
      {
LABEL_10:
        v100 = v45;
        if (v46 <= 1 || v46 == 2)
        {
          v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v75 & 1) == 0)
          {
            sub_100070AEC(v111);
            v76 = String._bridgeToObjectiveC()();

            [v112 startedTest:v76];
          }
        }

        else
        {
        }

        v77 = [v54 showAccessory:v51 secondaryDestination:0];
        sub_10005D10C(v108, v14, &qword_1000D9E28, &unk_1000931D0);
        v79 = v109;
        v78 = v110;
        if ((*(v109 + 48))(v14, 1, v110) == 1)
        {
          sub_10005C664(v14, &qword_1000D9E28, &unk_1000931D0);
        }

        else
        {
          v80 = *(v79 + 32);
          v101 = v55;
          v81 = v107;
          v80(v107, v14, v78);
          v82 = v51;
          v83 = v106;
          (*(v79 + 16))(v106, v81, v78);
          v84 = (*(v79 + 80) + 16) & ~*(v79 + 80);
          v85 = v78;
          v86 = swift_allocObject();
          v87 = v83;
          v51 = v82;
          v80((v86 + v84), v87, v85);
          v46 = v103;
          v117 = sub_10005A57C;
          v118 = v86;
          aBlock = _NSConcreteStackBlock;
          v114 = 1107296256;
          v115 = sub_100077BF0;
          v116 = &unk_1000C6638;
          v88 = _Block_copy(&aBlock);

          v89 = [v77 flatMap:v88];
          _Block_release(v88);

          v90 = v81;
          v55 = v101;
          (*(v79 + 8))(v90, v85);
          v77 = v89;
        }

        v91 = v100;
        if (v46 > 2)
        {
        }

        else
        {
          v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v92 & 1) == 0)
          {

            sub_10005A51C(v55, v91);
            return v77;
          }
        }

        v93 = swift_allocObject();
        v94 = v102;
        v95 = v112;
        *(v93 + 16) = v102;
        *(v93 + 24) = v95;
        *(v93 + 32) = v111;
        v117 = sub_10005A56C;
        v118 = v93;
        aBlock = _NSConcreteStackBlock;
        v114 = 1107296256;
        v115 = sub_100077BF0;
        v116 = &unk_1000C65E8;
        v96 = _Block_copy(&aBlock);
        v97 = v94;
        v98 = v95;

        v62 = [v77 flatMap:v96];

        _Block_release(v96);
        sub_10005A51C(v55, v91);
        return v62;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v41 = v39;
    sub_10005D10C(a4, v25, &unk_1000D9E30, &qword_1000933F0);
    v42 = type metadata accessor for UUID();
    v43 = *(v42 - 8);
    v44 = 0;
    if ((*(v43 + 48))(v25, 1, v42) != 1)
    {
      v44 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v43 + 8))(v25, v42);
    }

    v45 = swift_allocObject();
    v46 = v103;
    *(v45 + 16) = v103;
    v47 = swift_allocObject();
    v101 = sub_10005A4D8;
    *(v47 + 16) = sub_10005A4D8;
    *(v47 + 24) = v45;
    v117 = sub_10005A4F0;
    v118 = v47;
    aBlock = _NSConcreteStackBlock;
    v114 = 1107296256;
    v115 = sub_10004DAF0;
    v116 = &unk_1000C6598;
    v48 = _Block_copy(&aBlock);

    v49 = a2;
    v50 = v41;
    v51 = [v49 findAccessoryWithItemManager:v41 accessoryID:v44 testBlock:v48];

    _Block_release(v48);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v54 = v104;
      v55 = v101;
      if (v51)
      {
        goto LABEL_10;
      }

LABEL_22:
      sub_100057794();
      swift_allocError();
      v71 = v70;
      aBlock = 0;
      v114 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);
      v72._countAndFlagsBits = 0xD00000000000002ALL;
      v72._object = 0x800000010009A3D0;
      String.append(_:)(v72);
      LOBYTE(v119) = v46;
      _print_unlocked<A, B>(_:_:)();
      v73 = v114;
      *v71 = aBlock;
      *(v71 + 8) = v73;
      *(v71 + 48) = 4;
      v74 = _convertErrorToNSError(_:)();
      v65 = [objc_opt_self() futureWithError:v74];

      sub_10005A51C(v55, v45);
      return v65;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_100050964(void *a1, void *a2)
{
  v3 = [a1 services];
  sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
  sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  v6 = [a2 services];
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(v7 + 16);
  }

  return v8 < v5;
}

uint64_t sub_100050A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6 & 1;
}

BOOL sub_100050AF8(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = [a1 accessories];
      sub_10005B9DC(0, &unk_1000DA2C0, HMAccessory_ptr);
      sub_100057D7C(&qword_1000D9E70, &unk_1000DA2C0, HMAccessory_ptr);
      v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *(v7 + 16);
      }

      if (v8 != 1)
      {
        return 0;
      }

      v14 = [a1 services];
      sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
      sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
      v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = __CocoaSet.count.getter();
      }

      else
      {
        v16 = *(v15 + 16);
      }

      v12 = v16 <= 1;
      return !v12;
    }

LABEL_8:
    v9 = [a1 services];
    sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
    sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
    v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *(v10 + 16);
    }

    v12 = v11 <= 0;
    return !v12;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v2 = [a1 services];
  sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
  sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *(v3 + 16);
  }

  return v4 == 1;
}

id sub_100050DC0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_10005A674;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100077B88;
  aBlock[3] = &unk_1000C66B0;
  v9 = _Block_copy(aBlock);
  v10 = [objc_opt_self() futureWithBlock:v9];
  _Block_release(v9);

  v11 = [v10 asGeneric];

  return v11;
}

uint64_t sub_100050F90(void *a1, uint64_t a2)
{
  v26 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v25 - v17;
  sub_10005B9DC(0, &qword_1000D9E40, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  DispatchTime.advanced(by:)();
  v27 = *(v11 + 8);
  v27(v15, v10);
  v20 = swift_allocObject();
  v21 = v26;
  *(v20 + 16) = v26;
  aBlock[4] = sub_10005A6E4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100077B44;
  aBlock[3] = &unk_1000C6700;
  v22 = _Block_copy(aBlock);
  v23 = v21;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005A6F4(&qword_1000D9E48, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000578B4(&qword_1000D9E50, &qword_1000931F0);
  sub_10005A73C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v30 + 8))(v5, v2);
  (*(v28 + 8))(v9, v29);
  return (v27)(v18, v10);
}

id sub_100051340(int a1, id a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v7 = [a2 presentedViewController];
  if (v7)
  {
    v8 = v7;
    sub_1000578B4(&unk_1000D9E60, &qword_1000931F8);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      sub_100070AEC(v4);
      v11 = String._bridgeToObjectiveC()();

      [a3 startedTest:v11];

      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      aBlock[4] = sub_10005A7E8;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100077B88;
      aBlock[3] = &unk_1000C6750;
      v13 = _Block_copy(aBlock);
      v14 = objc_opt_self();
      v15 = v8;
      v16 = [v14 futureWithBlock:v13];
      _Block_release(v13);

      v17 = [v16 asGeneric];

      return v17;
    }
  }

  sub_100057794();
  swift_allocError();
  v20 = v19;
  _StringGuts.grow(_:)(57);
  v21._object = 0x800000010009A440;
  v21._countAndFlagsBits = 0xD000000000000037;
  String.append(_:)(v21);
  [a2 presentedViewController];
  sub_1000578B4(&unk_1000DA8B0, &unk_1000931E0);
  v22._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v22);

  *v20 = 0;
  *(v20 + 8) = 0xE000000000000000;
  *(v20 + 48) = 4;
  v23 = _convertErrorToNSError(_:)();
  v24 = [objc_opt_self() futureWithError:v23];

  return v24;
}

uint64_t sub_1000515F0(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  dispatch thunk of AccessoryControlViewController.dismissControlView(animated:completion:)();
}

id sub_100051670(void *a1, uint64_t a2)
{
  v5 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5 - 8, v8);
  v10 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v13 = &aBlock - v12;
  sub_100051AF8(a2, &aBlock - v12);
  sub_10005D10C(v13, v10, &unk_1000D9E30, &qword_1000933F0);
  v14 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  sub_10005A2F8(v10, v15 + v14, &unk_1000D9E30, &qword_1000933F0);
  v16 = v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v16 = a1;
  *(v16 + 8) = 35;
  v17 = HFHomeAppTabIdentifierHome;
  v18 = v2;
  v19 = a1;
  result = [v18 _selectAndFinishFirstReadForTabWithIdentifier:v17];
  if (result)
  {
    v21 = result;
    v40 = sub_10007A0C8;
    v41 = 0;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_10005D798;
    v39 = &unk_1000C69A8;
    v22 = _Block_copy(&aBlock);
    v23 = [v21 flatMap:v22];
    _Block_release(v22);

    v24 = swift_allocObject();
    v24[2] = v18;
    v24[3] = sub_10005CFB0;
    v24[4] = v15;
    v40 = sub_10005D614;
    v41 = v24;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_10005D798;
    v39 = &unk_1000C69F8;
    v25 = _Block_copy(&aBlock);
    v26 = v18;

    v27 = [v23 flatMap:v25];
    _Block_release(v25);

    v28 = swift_allocObject();
    *(v28 + 16) = v19;
    *(v28 + 24) = 35;
    v40 = sub_10005D7A4;
    v41 = v28;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_10005D79C;
    v39 = &unk_1000C6A48;
    v29 = _Block_copy(&aBlock);
    v30 = v19;

    v31 = [v27 addSuccessBlock:v29];
    _Block_release(v29);

    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = 35;
    v40 = sub_10005D77C;
    v41 = v32;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_100047498;
    v39 = &unk_1000C6A98;
    v33 = _Block_copy(&aBlock);
    v34 = v30;

    v35 = [v31 addFailureBlock:v33];
    _Block_release(v33);

    return sub_10005C664(v13, &unk_1000D9E30, &qword_1000933F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100051AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v4 = sub_10007C3AC(v8), (v5 & 1) != 0))
  {
    sub_10005A46C(*(a1 + 56) + 32 * v4, v9);
    sub_10005A088(v8);
    if (swift_dynamicCast())
    {
      UUID.init(uuidString:)();
    }
  }

  else
  {
    sub_10005A088(v8);
  }

  v7 = type metadata accessor for UUID();
  return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
}

void sub_100051C14(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = a7;
  v12 = sub_10007CF40(a3, a5);
  if (!v7)
  {
    if (v12)
    {
      v13 = v12;
      v14 = [a4 baseViewController];
      if (v14)
      {
        v15 = v14;
        sub_100070AEC(v8);
        v16 = String._bridgeToObjectiveC()();

        [a6 startedTest:v16];

        v17 = [a2 showCameraProfile:v13 clipID:0];
        v18 = swift_allocObject();
        *(v18 + 16) = v15;
        v23[4] = sub_10005D104;
        v23[5] = v18;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 1107296256;
        v23[2] = sub_100077BF0;
        v23[3] = &unk_1000C6AE8;
        v19 = _Block_copy(v23);
        v20 = v15;

        [v17 flatMap:v19];
        _Block_release(v19);
      }

      else
      {
        sub_100057794();
        swift_allocError();
        *v22 = 1;
        *(v22 + 8) = 0u;
        *(v22 + 24) = 0u;
        *(v22 + 40) = 0;
        *(v22 + 48) = 5;
        swift_willThrow();
      }
    }

    else
    {
      sub_100057794();
      swift_allocError();
      strcpy(v21, "cameraProfile");
      *(v21 + 7) = -4864;
      v21[48] = 2;
      swift_willThrow();
    }
  }
}

id sub_100051E70(int a1, id a2)
{
  v2 = [a2 hu_dismissViewControllerAnimated:1];
  v3 = [v2 asGeneric];

  return v3;
}

void sub_100051ECC(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  sub_100070AEC(a3);
  v6 = String._bridgeToObjectiveC()();

  [a2 finishedTest:v6 waitForCommit:a4 & 1 extraResults:0];
}

uint64_t sub_100051F4C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10007EAB8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100052580(v6);
  return specialized ContiguousArray._endMutation()();
}

id sub_100051FC8(void *a1, id a2, uint64_t (*a3)(void *, void *, id))
{
  v5 = [a2 appNavigator];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 itemManager];
    v8 = [v7 home];

    if (!v8)
    {
      v11 = objc_opt_self();
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 hf_errorWithCode:30 description:v12];

      v14 = _convertErrorToNSError(_:)();
      v15 = [objc_opt_self() futureWithError:v14];

      return v15;
    }

    v17 = a3(a1, v6, v8);
    v18 = [v17 asGeneric];
  }

  else
  {
    sub_100057794();
    swift_allocError();
    *v9 = 1;
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
    *(v9 + 40) = 0;
    *(v9 + 48) = 5;
    v10 = _convertErrorToNSError(_:)();
    v18 = [objc_opt_self() futureWithError:v10];
  }

  return v18;
}

id sub_100052220(void *a1)
{
  v24 = &OBJC_PROTOCOL___HUPerformanceTestableViewController;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 hu_performanceTestReadyFuture];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v21 = sub_10005D7A0;
    v22 = v6;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_10005D798;
    v20 = &unk_1000C50F8;
    v7 = _Block_copy(&v17);
    v8 = v4;

    v9 = [v5 flatMap:v7];
LABEL_6:
    v15 = v9;
    _Block_release(v7);

    return v15;
  }

  v23 = &OBJC_PROTOCOL___HUPreloadableViewController;
  v10 = swift_dynamicCastObjCProtocolConditional();
  if (v10)
  {
    v11 = v10;
    v12 = a1;
    result = [v11 hu_preloadContent];
    if (result)
    {
      v5 = result;
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      v21 = sub_100057948;
      v22 = v14;
      v17 = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_10005D798;
      v20 = &unk_1000C50A8;
      v7 = _Block_copy(&v17);
      v8 = v12;

      v9 = [v5 flatMap:v7];
      goto LABEL_6;
    }

    __break(1u);
  }

  else
  {
    v16 = [objc_opt_self() futureWithResult:a1];

    return v16;
  }

  return result;
}

id sub_100052498(uint64_t a1, void *a2)
{
  sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
  v4 = *(a1 + 32);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_100052520(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100052580(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10005B9DC(0, &qword_1000D9D68, HMActionSet_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100052928(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100052694(0, v2, 1, a1);
  }
}

void sub_100052694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v31 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v29 = v4;
    v30 = a3;
    v6 = *(v31 + 8 * a3);
    v28 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 hf_affectedServices];
      sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
      sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
      v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = (v11 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v11 + 16);

      v13 = [v9 hf_affectedServices];
      v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = (v14 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v14 + 16);

      if (v12 == v15)
      {
        v16 = [v8 name];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = [v9 name];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        if (v21 == v17 && v23 == v19)
        {

LABEL_5:
          a3 = v30 + 1;
          v4 = v29 + 8;
          v5 = v28 - 1;
          if (v30 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {

        if (v15 >= v12)
        {
          goto LABEL_5;
        }
      }

      if (!v31)
      {
        break;
      }

      v25 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v25;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_100052928(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      v11 = v9;
      if (v9 + 1 >= v8)
      {
        v19 = v9 + 1;
      }

      else
      {
        v130 = v8;
        v12 = *v7;
        v135 = *(*v7 + 8 * (v9 + 1));
        v13 = v9;
        v134 = *(v12 + 8 * v9);
        v14 = v134;
        v5 = v135;
        v15 = v14;
        v132 = sub_100048E18(&v135, &v134);
        if (v6)
        {

          return;
        }

        v16 = v13 + 2;
        v119 = v13;
        v125 = v10;
        v127 = 8 * v13;
        v17 = (v12 + 8 * v13 + 16);
        while (1)
        {
          v19 = v130;
          if (v130 == v16)
          {
            break;
          }

          v20 = *(v17 - 1);
          v5 = *v17;
          v21 = v20;
          v22 = [v5 hf_affectedServices];
          sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
          sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
          v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          if ((v23 & 0xC000000000000001) != 0)
          {
            v24 = __CocoaSet.count.getter();
          }

          else
          {
            v24 = *(v23 + 16);
          }

          v25 = [v21 hf_affectedServices];
          v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          if ((v26 & 0xC000000000000001) != 0)
          {
            v27 = __CocoaSet.count.getter();
          }

          else
          {
            v27 = *(v26 + 16);
          }

          if (v24 == v27)
          {
            v28 = [v5 name];
            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v30;

            v32 = [v21 name];
            v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v35 = v34;

            if (v33 == v29 && v35 == v31)
            {
              v18 = 0;
            }

            else
            {
              v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v10 = v125;
          }

          else
          {

            v18 = v27 < v24;
            v10 = v125;
          }

          ++v16;
          ++v17;
          if ((v132 ^ v18))
          {
            v19 = v16 - 1;
            break;
          }
        }

        v11 = v119;
        v6 = 0;
        v7 = a3;
        v36 = v127;
        if (v132)
        {
          if (v19 < v119)
          {
            goto LABEL_145;
          }

          if (v119 < v19)
          {
            v37 = 8 * v19 - 8;
            v38 = v19;
            v39 = v119;
            do
            {
              if (v39 != --v38)
              {
                v40 = *a3;
                if (!*a3)
                {
                  goto LABEL_149;
                }

                v41 = *(v40 + v36);
                *(v40 + v36) = *(v40 + v37);
                *(v40 + v37) = v41;
              }

              ++v39;
              v37 -= 8;
              v36 += 8;
            }

            while (v39 < v38);
          }
        }
      }

      v42 = v7[1];
      if (v19 >= v42)
      {
        goto LABEL_40;
      }

      if (__OFSUB__(v19, v11))
      {
        goto LABEL_142;
      }

      if (v19 - v11 >= a4)
      {
LABEL_40:
        v43 = v19;
        if (v19 < v11)
        {
          goto LABEL_141;
        }

        goto LABEL_41;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_143;
      }

      if (v11 + a4 < v42)
      {
        v42 = v11 + a4;
      }

      if (v42 < v11)
      {
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v128 = v42;
      if (v19 == v42)
      {
        goto LABEL_40;
      }

      v126 = v10;
      v120 = v11;
      v121 = v6;
      v133 = *v7;
      v90 = *v7 + 8 * v19 - 8;
      v91 = v11 - v19;
LABEL_93:
      v131 = v19;
      v92 = *(v133 + 8 * v19);
      v123 = v91;
      v124 = v90;
      while (1)
      {
        v93 = *v90;
        v94 = v92;
        v5 = v93;
        v95 = [v94 hf_affectedServices];
        sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
        sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
        v96 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v97 = (v96 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v96 + 16);

        v98 = [v5 hf_affectedServices];
        v99 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v100 = (v99 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v99 + 16);

        if (v97 == v100)
        {
          break;
        }

        if (v100 >= v97)
        {
          goto LABEL_92;
        }

LABEL_106:
        if (!v133)
        {
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        v110 = *v90;
        v92 = *(v90 + 8);
        *v90 = v92;
        *(v90 + 8) = v110;
        v90 -= 8;
        if (__CFADD__(v91++, 1))
        {
          goto LABEL_92;
        }
      }

      v101 = [v94 name];
      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;

      v105 = [v5 name];
      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;

      if (v106 != v102 || v108 != v104)
      {
        break;
      }

LABEL_92:
      v19 = v131 + 1;
      v90 = v124 + 8;
      v91 = v123 - 1;
      if (v131 + 1 != v128)
      {
        goto LABEL_93;
      }

      v11 = v120;
      v6 = v121;
      v7 = a3;
      v10 = v126;
      v43 = v128;
      if (v128 < v120)
      {
        goto LABEL_141;
      }

LABEL_41:
      v129 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10007A8A0(0, *(v10 + 2) + 1, 1, v10);
      }

      v45 = *(v10 + 2);
      v44 = *(v10 + 3);
      v46 = v45 + 1;
      v9 = v43;
      v47 = v7;
      if (v45 >= v44 >> 1)
      {
        v112 = sub_10007A8A0((v44 > 1), v45 + 1, 1, v10);
        v9 = v129;
        v10 = v112;
      }

      *(v10 + 2) = v46;
      v48 = &v10[16 * v45];
      *(v48 + 4) = v11;
      *(v48 + 5) = v9;
      v7 = *a1;
      if (!*a1)
      {
        goto LABEL_151;
      }

      if (v45)
      {
        while (2)
        {
          v5 = v46 - 1;
          if (v46 >= 4)
          {
            v53 = &v10[16 * v46 + 32];
            v54 = *(v53 - 64);
            v55 = *(v53 - 56);
            v59 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            if (v59)
            {
              goto LABEL_128;
            }

            v58 = *(v53 - 48);
            v57 = *(v53 - 40);
            v59 = __OFSUB__(v57, v58);
            v51 = v57 - v58;
            v52 = v59;
            if (v59)
            {
              goto LABEL_129;
            }

            v60 = &v10[16 * v46];
            v62 = *v60;
            v61 = *(v60 + 1);
            v59 = __OFSUB__(v61, v62);
            v63 = v61 - v62;
            if (v59)
            {
              goto LABEL_131;
            }

            v59 = __OFADD__(v51, v63);
            v64 = v51 + v63;
            if (v59)
            {
              goto LABEL_134;
            }

            if (v64 >= v56)
            {
              v82 = &v10[16 * v5 + 32];
              v84 = *v82;
              v83 = *(v82 + 1);
              v59 = __OFSUB__(v83, v84);
              v85 = v83 - v84;
              if (v59)
              {
                goto LABEL_138;
              }

              if (v51 < v85)
              {
                v5 = v46 - 2;
              }
            }

            else
            {
LABEL_60:
              if (v52)
              {
                goto LABEL_130;
              }

              v65 = &v10[16 * v46];
              v67 = *v65;
              v66 = *(v65 + 1);
              v68 = __OFSUB__(v66, v67);
              v69 = v66 - v67;
              v70 = v68;
              if (v68)
              {
                goto LABEL_133;
              }

              v71 = &v10[16 * v5 + 32];
              v73 = *v71;
              v72 = *(v71 + 1);
              v59 = __OFSUB__(v72, v73);
              v74 = v72 - v73;
              if (v59)
              {
                goto LABEL_136;
              }

              if (__OFADD__(v69, v74))
              {
                goto LABEL_137;
              }

              if (v69 + v74 < v51)
              {
                goto LABEL_74;
              }

              if (v51 < v74)
              {
                v5 = v46 - 2;
              }
            }
          }

          else
          {
            if (v46 == 3)
            {
              v49 = *(v10 + 4);
              v50 = *(v10 + 5);
              v59 = __OFSUB__(v50, v49);
              v51 = v50 - v49;
              v52 = v59;
              goto LABEL_60;
            }

            v75 = &v10[16 * v46];
            v77 = *v75;
            v76 = *(v75 + 1);
            v59 = __OFSUB__(v76, v77);
            v69 = v76 - v77;
            v70 = v59;
LABEL_74:
            if (v70)
            {
              goto LABEL_132;
            }

            v78 = &v10[16 * v5];
            v80 = *(v78 + 4);
            v79 = *(v78 + 5);
            v59 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v59)
            {
              goto LABEL_135;
            }

            if (v81 < v69)
            {
              break;
            }
          }

          v86 = v5 - 1;
          if (v5 - 1 >= v46)
          {
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
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
            goto LABEL_144;
          }

          if (!*v47)
          {
            goto LABEL_148;
          }

          v87 = *&v10[16 * v86 + 32];
          v88 = *&v10[16 * v5 + 40];
          sub_1000532E0((*v47 + 8 * v87), (*v47 + 8 * *&v10[16 * v5 + 32]), (*v47 + 8 * v88), v7);
          if (v6)
          {
            goto LABEL_123;
          }

          if (v88 < v87)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10007C398(v10);
          }

          if (v86 >= *(v10 + 2))
          {
            goto LABEL_127;
          }

          v89 = &v10[16 * v86];
          *(v89 + 4) = v87;
          *(v89 + 5) = v88;
          v136 = v10;
          sub_10007C30C(v5);
          v10 = v136;
          v46 = *(v136 + 2);
          v9 = v129;
          if (v46 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = v47;
      v8 = v47[1];
      if (v9 >= v8)
      {
        goto LABEL_113;
      }
    }

    v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v109 & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_106;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_113:
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_152;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_146:
    v10 = sub_10007C398(v10);
  }

  v136 = v10;
  v113 = *(v10 + 2);
  if (v113 < 2)
  {
LABEL_123:

    return;
  }

  while (*v7)
  {
    v114 = *&v10[16 * v113];
    v115 = *&v10[16 * v113 + 24];
    sub_1000532E0((*v7 + 8 * v114), (*v7 + 8 * *&v10[16 * v113 + 16]), (*v7 + 8 * v115), v5);
    if (v6)
    {
      goto LABEL_123;
    }

    if (v115 < v114)
    {
      goto LABEL_139;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10007C398(v10);
    }

    if (v113 - 2 >= *(v10 + 2))
    {
      goto LABEL_140;
    }

    v116 = &v10[16 * v113];
    *v116 = v114;
    *(v116 + 1) = v115;
    v136 = v10;
    sub_10007C30C(v113 - 1);
    v10 = v136;
    v113 = *(v136 + 2);
    if (v113 <= 1)
    {
      goto LABEL_123;
    }
  }

LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

uint64_t sub_1000532E0(id *__dst, id *__src, id *a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_100048E18(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= (v21 + (v44 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = (v21 + 1);
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = v16 - a4 + 7;
    if ((v16 - a4) >= 0)
    {
      v46 = v16 - a4;
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = v16 + v28;
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *--v31;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_100048E18(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = v6 + 1;
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= v51 + (v40 & 0xFFFFFFFFFFFFFFF8) || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

Swift::Int sub_10005367C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000578B4(&qword_1000D9C88, qword_100093190);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t *sub_1000538A4(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_10005568C(v7, a2, a3);
    v10 = v9;

    return v10;
  }

  return result;
}

Swift::Int sub_10005393C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000578B4(&qword_1000D9C88, qword_100093190);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100053B30(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10007A9A4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for UUID();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100053C5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100053C7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100053C7C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000578B4(&unk_1000DA8A0, &qword_100093230);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_100053E54(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 4;
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = sub_100057830;
  v4[4] = v3;
  v5 = HFHomeAppTabIdentifierHome;
  v6 = a1;
  v7 = v1;

  v8 = [v7 _selectAndFinishFirstReadForTabWithIdentifier:v5];
  if (v8)
  {
    v9 = v8;
    v28 = sub_10007A0C8;
    v29 = 0;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D798;
    v27 = &unk_1000C4EC8;
    v10 = _Block_copy(&v24);
    v11 = [v9 flatMap:v10];
    _Block_release(v10);

    v12 = swift_allocObject();
    v12[2] = v7;
    v12[3] = sub_100057850;
    v12[4] = v4;
    v28 = sub_100057870;
    v29 = v12;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D798;
    v27 = &unk_1000C4F18;
    v13 = _Block_copy(&v24);
    v14 = v7;

    v15 = [v11 flatMap:v13];
    _Block_release(v13);

    v16 = swift_allocObject();
    *(v16 + 16) = v6;
    *(v16 + 24) = 4;
    v28 = sub_100057890;
    v29 = v16;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D794;
    v27 = &unk_1000C4F68;
    v17 = _Block_copy(&v24);
    v18 = v6;

    v19 = [v15 addSuccessBlock:v17];
    _Block_release(v17);

    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = 4;
    v28 = sub_10005D77C;
    v29 = v20;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100047498;
    v27 = &unk_1000C4FB8;
    v21 = _Block_copy(&v24);
    v22 = v18;

    v23 = [v19 addFailureBlock:v21];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_100054208(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 5;
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = sub_10005D608;
  v4[4] = v3;
  v5 = a1;
  v6 = v1;

  v7 = sub_100047FC4(1, sub_10005D5EC, v4);

  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = 5;
  v20 = sub_10005D7A4;
  v21 = v8;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10005D794;
  v19 = &unk_1000C5198;
  v9 = _Block_copy(&v16);
  v10 = v5;

  v11 = [v7 addSuccessBlock:v9];
  _Block_release(v9);

  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = 5;
  v20 = sub_10005D77C;
  v21 = v12;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100047498;
  v19 = &unk_1000C51E8;
  v13 = _Block_copy(&v16);
  v14 = v10;

  v15 = [v11 addFailureBlock:v13];
  _Block_release(v13);
}

void sub_100054460(void *a1)
{
  v3 = [v1 appNavigator];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    v5[3] = 0;
    v5[4] = 0;
    v5[2] = v1;
    v6 = v1;
    v7 = sub_100047FC4(1, sub_10005D5EC, v5);

    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = 7;
    *(v8 + 32) = v4;
    v27 = sub_100057A10;
    v28 = v8;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10005D798;
    v26 = &unk_1000C5328;
    v9 = _Block_copy(&v23);
    v10 = a1;
    v11 = v4;

    v12 = [v7 flatMap:v9];
    _Block_release(v9);

    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = 7;
    v27 = sub_10005D7A4;
    v28 = v13;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10005D79C;
    v26 = &unk_1000C5378;
    v14 = _Block_copy(&v23);
    v15 = v10;

    v16 = [v12 addSuccessBlock:v14];
    _Block_release(v14);

    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = 7;
    v27 = sub_10005D77C;
    v28 = v17;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100047498;
    v26 = &unk_1000C53C8;
    v18 = _Block_copy(&v23);
    v19 = v15;

    v20 = [v16 addFailureBlock:v18];
    _Block_release(v18);
  }

  else
  {
    sub_100057794();
    v21 = swift_allocError();
    *v22 = 1;
    *(v22 + 8) = 0u;
    *(v22 + 24) = 0u;
    *(v22 + 40) = 0;
    *(v22 + 48) = 5;
    sub_10007095C(7, v21);
  }
}

void sub_1000547E0(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() lightAccessoryTypeGroup];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = 11;
  v6 = swift_allocObject();
  v6[2] = sub_10005D608;
  v6[3] = v5;
  v6[4] = v4;
  v7 = HFHomeAppTabIdentifierHome;
  v8 = a1;

  v25 = v4;
  v9 = [v2 _selectAndFinishFirstReadForTabWithIdentifier:v7];
  if (v9)
  {
    v10 = v9;
    v30 = sub_10007A0C8;
    v31 = 0;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10005D798;
    v29 = &unk_1000C5788;
    v11 = _Block_copy(&aBlock);
    v12 = [v10 flatMap:v11];
    _Block_release(v11);

    v13 = swift_allocObject();
    v13[2] = v2;
    v13[3] = sub_100057B04;
    v13[4] = v6;
    v30 = sub_10005D614;
    v31 = v13;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10005D798;
    v29 = &unk_1000C57D8;
    v14 = _Block_copy(&aBlock);
    v15 = v2;

    v16 = [v12 flatMap:v14];
    _Block_release(v14);

    v17 = swift_allocObject();
    *(v17 + 16) = v8;
    *(v17 + 24) = 11;
    v30 = sub_10005D7A4;
    v31 = v17;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10005D794;
    v29 = &unk_1000C5828;
    v18 = _Block_copy(&aBlock);
    v19 = v8;

    v20 = [v16 addSuccessBlock:v18];
    _Block_release(v18);

    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = 11;
    v30 = sub_10005D77C;
    v31 = v21;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100047498;
    v29 = &unk_1000C5878;
    v22 = _Block_copy(&aBlock);
    v23 = v19;

    v24 = [v20 addFailureBlock:v22];
    _Block_release(v22);
  }

  else
  {
    __break(1u);
  }
}

void sub_100054BC4(void *a1)
{
  v3 = [v1 appNavigator];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() lightAccessoryTypeGroup];
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v5;
    v7 = v5;
    v8 = sub_100047FC4(1, sub_10005D578, v6);

    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = 13;
    *(v9 + 32) = v4;
    v28 = sub_10005D618;
    v29 = v9;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D798;
    v27 = &unk_1000C59B8;
    v10 = _Block_copy(&v24);
    v11 = a1;
    v12 = v4;

    v13 = [v8 flatMap:v10];
    _Block_release(v10);

    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = 13;
    v28 = sub_10005D7A4;
    v29 = v14;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D79C;
    v27 = &unk_1000C5A08;
    v15 = _Block_copy(&v24);
    v16 = v11;

    v17 = [v13 addSuccessBlock:v15];
    _Block_release(v15);

    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = 13;
    v28 = sub_10005D77C;
    v29 = v18;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100047498;
    v27 = &unk_1000C5A58;
    v19 = _Block_copy(&v24);
    v20 = v16;

    v21 = [v17 addFailureBlock:v19];
    _Block_release(v19);
  }

  else
  {
    sub_100057794();
    v22 = swift_allocError();
    *v23 = 1;
    *(v23 + 8) = 0u;
    *(v23 + 24) = 0u;
    *(v23 + 40) = 0;
    *(v23 + 48) = 5;
    sub_10007095C(13, v22);
  }
}

void sub_100054F6C(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10005D608;
  *(v5 + 24) = v4;
  v6 = HFHomeAppTabIdentifierHome;
  v7 = a1;

  v8 = [v2 _selectAndFinishFirstReadForTabWithIdentifier:v6];
  if (v8)
  {
    v9 = v8;
    v28 = sub_10007A0C8;
    v29 = 0;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D798;
    v27 = &unk_1000C5440;
    v10 = _Block_copy(&v24);
    v11 = [v9 flatMap:v10];
    _Block_release(v10);

    v12 = swift_allocObject();
    v12[2] = v2;
    v12[3] = sub_100057A38;
    v12[4] = v5;
    v28 = sub_10005D614;
    v29 = v12;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D798;
    v27 = &unk_1000C5490;
    v13 = _Block_copy(&v24);
    v14 = v2;

    v15 = [v11 flatMap:v13];
    _Block_release(v13);

    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *(v16 + 24) = 8;
    v28 = sub_10005D7A4;
    v29 = v16;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D794;
    v27 = &unk_1000C54E0;
    v17 = _Block_copy(&v24);
    v18 = v7;

    v19 = [v15 addSuccessBlock:v17];
    _Block_release(v17);

    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = 8;
    v28 = sub_10005D77C;
    v29 = v20;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100047498;
    v27 = &unk_1000C5530;
    v21 = _Block_copy(&v24);
    v22 = v18;

    v23 = [v19 addFailureBlock:v21];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_100055318(void *a1)
{
  v3 = [v1 appNavigator];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v6 = sub_100047FC4(1, sub_10005D560, v5);

    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = 10;
    *(v7 + 32) = v4;
    v26 = sub_10005D618;
    v27 = v7;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10005D798;
    v25 = &unk_1000C5670;
    v8 = _Block_copy(&v22);
    v9 = a1;
    v10 = v4;

    v11 = [v6 flatMap:v8];
    _Block_release(v8);

    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = 10;
    v26 = sub_10005D7A4;
    v27 = v12;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10005D79C;
    v25 = &unk_1000C56C0;
    v13 = _Block_copy(&v22);
    v14 = v9;

    v15 = [v11 addSuccessBlock:v13];
    _Block_release(v13);

    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = 10;
    v26 = sub_10005D77C;
    v27 = v16;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100047498;
    v25 = &unk_1000C5710;
    v17 = _Block_copy(&v22);
    v18 = v14;

    v19 = [v15 addFailureBlock:v17];
    _Block_release(v17);
  }

  else
  {
    sub_100057794();
    v20 = swift_allocError();
    *v21 = 1;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0;
    *(v21 + 48) = 5;
    sub_10007095C(10, v20);
  }
}

void sub_10005568C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = dispatch thunk of DashboardContext.accessoryRepresentableHasStandardTileRepresentation(_:)();

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_15:

        sub_10005393C(a1, a2, v19, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int sub_1000557D8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v11 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = v7;
    v27 = v3;
    v25 = &v25;
    __chkstk_darwin(v9, v10);
    v28 = &v25 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v8);
    v29 = 0;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v8 = v14 & *(a1 + 56);
    v3 = (v13 + 63) >> 6;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v18 = v15 | (v12 << 6);
      v7 = *(*(a1 + 48) + 8 * v18);
      v19 = dispatch thunk of DashboardContext.accessoryRepresentableHasStandardTileRepresentation(_:)();

      if (v19)
      {
        *&v28[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v21 = sub_10005393C(v28, v26, v29, a1);

          return v21;
        }
      }
    }

    v16 = v12;
    while (1)
    {
      v12 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v12 >= v3)
      {
        goto LABEL_16;
      }

      v17 = *(a1 + 56 + 8 * v12);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = v11;
  v21 = sub_1000538A4(v23, v7, a1, v24);

  return v21;
}

Swift::Int sub_100055A40(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1000557D8(a1, a2);
  }

  v2 = a2;
  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    sub_10005B9DC(0, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
    do
    {
      swift_dynamicCast();
      if (dispatch thunk of DashboardContext.accessoryRepresentableHasStandardTileRepresentation(_:)())
      {
        v3 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v3)
        {
          sub_10005367C(v3 + 1);
        }

        result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
        v5 = &_swiftEmptySetSingleton + 56;
        v6 = -1 << *(&_swiftEmptySetSingleton + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7)) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v8 == v11;
            if (v8 == v11)
            {
              v8 = 0;
            }

            v10 |= v12;
            v13 = *&v5[8 * v8];
          }

          while (v13 == -1);
          v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        }

        *&v5[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v9) = v14;
        ++*(&_swiftEmptySetSingleton + 2);
      }

      else
      {
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100055C44(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 home];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for DashboardContext();
    v9 = dispatch thunk of static DashboardContext.roomDashboard(for:in:)();
    v10 = [a1 hf_accessoryLikeObjects];
    sub_10005B9DC(0, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
    sub_100057D7C(&qword_1000D9C80, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
    v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = v9;
    v13 = sub_100055A40(v11, v12);

    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = __CocoaSet.count.getter();

      return v14;
    }

    v24 = *(v13 + 16);
  }

  else
  {
    if (qword_1000D97E0 != -1)
    {
      swift_once();
    }

    v16 = qword_1000DB8A0;
    Logger.init(_:)();
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_10006B744(0xD000000000000024, 0x800000010009A100, &v26);
      *(v20 + 12) = 2112;
      *(v20 + 14) = v17;
      *v21 = v17;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s nil home for room %@", v20, 0x16u);
      sub_10005C664(v21, &qword_1000D9C70, &qword_1000936A0);

      sub_1000578FC(v22);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v24;
}

uint64_t sub_100055F90(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = sub_100055C44(v32);
          v35 = sub_100055C44(v33);

          if (v35 < v34)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = sub_100055C44(v17);
          v20 = sub_100055C44(v18);

          if (v20 >= v19)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

void sub_10005625C(char **a1, void **a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_10007C398(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __dst = (v9 + 8 * *v10);
      v23 = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_100055F90(__dst, v23, v14, a2);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_1000563F8(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void **a5)
{
  v158 = a4;
  v151 = a1;
  v167 = type metadata accessor for Logger();
  v8 = __chkstk_darwin(v167, v7);
  __chkstk_darwin(v8, v9);
  v174 = _swiftEmptyArrayStorage;
  v160 = a3;
  v13 = a3[1];
  if (v13 >= 1)
  {
    v163 = &v151 - v11;
    v164 = v12;
    v166 = (v10 + 8);
    v162 = "rom dashboard item manager";
    v154 = a5;
    v14 = _swiftEmptyArrayStorage;
    v15 = &selRef_hasOptedToHH2;
    *&v16 = 136315394;
    v17 = 0;
    v161 = v16;
    v157 = a5;
    v18 = v158;
    while (1)
    {
      v19 = v17 + 1;
      v165 = v14;
      v153 = v17;
      if (v17 + 1 < v13)
      {
        v20 = v17;
        v21 = 8 * v17;
        v22 = (*v160 + 8 * v17);
        v24 = *v22;
        v23 = v22 + 2;
        v25 = *(*v160 + 8 * v19);
        v26 = v24;
        v171 = sub_100055C44(v25);
        v170 = sub_100055C44(v26);

        v27 = v20 + 2;
        while (v13 != v27)
        {
          v28 = v170 < v171;
          v29 = *(v23 - 1);
          v30 = *v23;
          v31 = v29;
          v32 = sub_100055C44(v30);
          v33 = sub_100055C44(v31);

          ++v27;
          ++v23;
          if (((v28 ^ (v33 >= v32)) & 1) == 0)
          {
            v13 = v27 - 1;
            break;
          }
        }

        a5 = v157;
        v18 = v158;
        v15 = &selRef_hasOptedToHH2;
        if (v170 >= v171)
        {
          goto LABEL_19;
        }

        v34 = v153;
        if (v13 < v153)
        {
          goto LABEL_139;
        }

        if (v153 >= v13)
        {
LABEL_19:
          v19 = v13;
        }

        else
        {
          v35 = 8 * v13 - 8;
          v36 = v13;
          do
          {
            if (v34 != --v36)
            {
              v38 = *v160;
              if (!*v160)
              {
                goto LABEL_144;
              }

              v37 = *(v38 + v21);
              *(v38 + v21) = *(v38 + v35);
              *(v38 + v35) = v37;
            }

            ++v34;
            v35 -= 8;
            v21 += 8;
          }

          while (v34 < v36);
          v19 = v13;
        }
      }

      v39 = v160[1];
      if (v19 >= v39)
      {
        v43 = v19;
      }

      else
      {
        v40 = v19;
        v105 = __OFSUB__(v19, v153);
        v41 = v19 - v153;
        if (v105)
        {
          goto LABEL_138;
        }

        if (v41 >= v18)
        {
          v43 = v40;
        }

        else
        {
          v42 = v153 + v18;
          if (__OFADD__(v153, v18))
          {
            goto LABEL_140;
          }

          if (v42 >= v39)
          {
            v42 = v160[1];
          }

          if (v42 < v153)
          {
LABEL_141:
            __break(1u);
LABEL_142:
            v147 = v154;

            __break(1u);
LABEL_143:
            v148 = v154;

            __break(1u);
LABEL_144:
            v149 = v154;

            __break(1u);
LABEL_145:
            v150 = v154;

            __break(1u);
            goto LABEL_146;
          }

          if (v40 == v42)
          {
            v43 = v40;
          }

          else
          {
            v168 = *v160;
            a5 = (v168 + 8 * v40 - 8);
            v44 = (v153 - v40);
            v152 = v42;
            do
            {
              v159 = v40;
              v45 = v44;
              v46 = *(v168 + 8 * v40);
              v155 = v45;
              v156 = a5;
              v47 = v45;
              do
              {
                v171 = v47;
                v48 = *a5;
                v49 = v46;
                v50 = v48;
                v51 = [v49 v15[72]];
                v170 = v49;
                if (v51)
                {
                  v52 = v51;
                  type metadata accessor for DashboardContext();
                  v53 = dispatch thunk of static DashboardContext.roomDashboard(for:in:)();
                  v54 = [v49 hf_accessoryLikeObjects];
                  sub_10005B9DC(0, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
                  sub_100057D7C(&qword_1000D9C80, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
                  v55 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

                  v56 = v53;
                  v57 = v172;
                  v58 = sub_100055A40(v55, v56);
                  v172 = v57;

                  if ((v58 & 0xC000000000000001) != 0)
                  {
                    v169 = __CocoaSet.count.getter();
                  }

                  else
                  {

                    v169 = *(v58 + 16);
                  }
                }

                else
                {
                  if (qword_1000D97E0 != -1)
                  {
                    swift_once();
                  }

                  v59 = qword_1000DB8A0;
                  v60 = v163;
                  Logger.init(_:)();
                  v61 = v49;
                  v62 = Logger.logObject.getter();
                  v63 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v62, v63))
                  {
                    v64 = swift_slowAlloc();
                    v65 = swift_slowAlloc();
                    v66 = swift_slowAlloc();
                    v173[0] = v66;
                    *v64 = v161;
                    *(v64 + 4) = sub_10006B744(0xD000000000000024, v162 | 0x8000000000000000, v173);
                    *(v64 + 12) = 2112;
                    *(v64 + 14) = v61;
                    *v65 = v61;
                    v67 = v61;
                    _os_log_impl(&_mh_execute_header, v62, v63, "%s nil home for room %@", v64, 0x16u);
                    sub_10005C664(v65, &qword_1000D9C70, &qword_1000936A0);

                    sub_1000578FC(v66);
                  }

                  (*v166)(v60, v167);
                  v169 = 0;
                  v15 = &selRef_hasOptedToHH2;
                }

                v68 = [v50 v15[72]];
                if (v68)
                {
                  v69 = v68;
                  type metadata accessor for DashboardContext();
                  v70 = dispatch thunk of static DashboardContext.roomDashboard(for:in:)();
                  v71 = [v50 hf_accessoryLikeObjects];
                  sub_10005B9DC(0, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
                  sub_100057D7C(&qword_1000D9C80, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
                  v72 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

                  v73 = v70;
                  v74 = v172;
                  v75 = sub_100055A40(v72, v73);
                  v172 = v74;

                  if ((v75 & 0xC000000000000001) != 0)
                  {
                    v76 = __CocoaSet.count.getter();
                  }

                  else
                  {

                    v76 = *(v75 + 16);
                  }

                  v85 = v171;
                  if (v76 >= v169)
                  {
                    break;
                  }
                }

                else
                {
                  if (qword_1000D97E0 != -1)
                  {
                    swift_once();
                  }

                  v77 = qword_1000DB8A0;
                  v78 = v164;
                  Logger.init(_:)();
                  v79 = v50;
                  v80 = Logger.logObject.getter();
                  v81 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v80, v81))
                  {
                    v82 = swift_slowAlloc();
                    v83 = swift_slowAlloc();
                    v84 = swift_slowAlloc();
                    v173[0] = v84;
                    *v82 = v161;
                    *(v82 + 4) = sub_10006B744(0xD000000000000024, v162 | 0x8000000000000000, v173);
                    *(v82 + 12) = 2112;
                    *(v82 + 14) = v79;
                    *v83 = v79;
                    v79 = v79;
                    _os_log_impl(&_mh_execute_header, v80, v81, "%s nil home for room %@", v82, 0x16u);
                    sub_10005C664(v83, &qword_1000D9C70, &qword_1000936A0);

                    sub_1000578FC(v84);
                  }

                  (*v166)(v78, v167);
                  v85 = v171;
                  if (v169 < 1)
                  {
                    break;
                  }
                }

                if (!v168)
                {
                  goto LABEL_142;
                }

                v86 = *a5;
                v46 = a5[1];
                *a5 = v46;
                a5[1] = v86;
                --a5;
                v87 = __CFADD__(v85, 1);
                v47 = (v85 + 1);
              }

              while (!v87);
              v40 = v159 + 1;
              a5 = v156 + 1;
              v44 = (v155 - 1);
            }

            while (v159 + 1 != v152);
            v43 = v152;
            a5 = v157;
          }
        }
      }

      if (v43 < v153)
      {
        goto LABEL_137;
      }

      v159 = v43;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v14 = v165;
      }

      else
      {
        v14 = sub_10007A8A0(0, *(v165 + 2) + 1, 1, v165);
      }

      v89 = *(v14 + 2);
      v88 = *(v14 + 3);
      v90 = v89 + 1;
      if (v89 >= v88 >> 1)
      {
        v14 = sub_10007A8A0((v88 > 1), v89 + 1, 1, v14);
      }

      *(v14 + 2) = v90;
      v91 = (v14 + 32);
      v92 = &v14[16 * v89 + 32];
      v93 = v159;
      *v92 = v153;
      *(v92 + 1) = v93;
      v171 = *v151;
      if (!v171)
      {
        goto LABEL_145;
      }

      if (v89)
      {
        v18 = v158;
        v165 = v14;
        v15 = &selRef_hasOptedToHH2;
        v170 = (v14 + 32);
        while (1)
        {
          v94 = v90 - 1;
          if (v90 >= 4)
          {
            break;
          }

          if (v90 == 3)
          {
            v95 = *(v14 + 4);
            v96 = *(v14 + 5);
            v105 = __OFSUB__(v96, v95);
            v97 = v96 - v95;
            v98 = v105;
LABEL_81:
            if (v98)
            {
              goto LABEL_127;
            }

            v111 = &v165[16 * v90];
            v113 = *v111;
            v112 = *(v111 + 1);
            v114 = __OFSUB__(v112, v113);
            v115 = v112 - v113;
            v116 = v114;
            if (v114)
            {
              goto LABEL_129;
            }

            v117 = &v91[2 * v94];
            v119 = *v117;
            v118 = v117[1];
            v105 = __OFSUB__(v118, v119);
            v120 = v118 - v119;
            if (v105)
            {
              goto LABEL_132;
            }

            if (__OFADD__(v115, v120))
            {
              goto LABEL_134;
            }

            if (v115 + v120 >= v97)
            {
              if (v97 < v120)
              {
                v94 = v90 - 2;
              }

              goto LABEL_103;
            }

            goto LABEL_96;
          }

          if (v90 < 2)
          {
            goto LABEL_135;
          }

          v121 = &v14[16 * v90];
          v123 = *v121;
          v122 = *(v121 + 1);
          v105 = __OFSUB__(v122, v123);
          v115 = v122 - v123;
          v116 = v105;
LABEL_96:
          if (v116)
          {
            goto LABEL_131;
          }

          v124 = &v91[2 * v94];
          v126 = *v124;
          v125 = v124[1];
          v105 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v105)
          {
            goto LABEL_133;
          }

          if (v127 < v115)
          {
            v14 = v165;
            goto LABEL_4;
          }

LABEL_103:
          if (v94 - 1 >= v90)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          v132 = *v160;
          if (!*v160)
          {
            goto LABEL_143;
          }

          v133 = &v91[2 * v94 - 2];
          v134 = *v133;
          v135 = v94;
          a5 = &v91[2 * v94];
          v136 = a5[1];
          v137 = (v132 + 8 * *v133);
          v138 = (v132 + 8 * *a5);
          v139 = (v132 + 8 * v136);
          v140 = v154;
          v141 = v172;
          sub_100055F90(v137, v138, v139, v171);
          v172 = v141;
          if (v141)
          {

            v174 = v165;
            a5 = v157;
            goto LABEL_117;
          }

          if (v136 < v134)
          {
            goto LABEL_122;
          }

          v142 = *(v165 + 2);
          if (v135 > v142)
          {
            goto LABEL_123;
          }

          *v133 = v134;
          v133[1] = v136;
          if (v135 >= v142)
          {
            goto LABEL_124;
          }

          v90 = v142 - 1;
          memmove(a5, a5 + 2, 16 * (v142 - 1 - v135));
          v14 = v165;
          *(v165 + 2) = v142 - 1;
          a5 = v157;
          v18 = v158;
          v15 = &selRef_hasOptedToHH2;
          v91 = v170;
          if (v142 <= 2)
          {
            goto LABEL_4;
          }
        }

        v99 = &v91[2 * v90];
        v100 = *(v99 - 8);
        v101 = *(v99 - 7);
        v105 = __OFSUB__(v101, v100);
        v102 = v101 - v100;
        if (v105)
        {
          goto LABEL_125;
        }

        v104 = *(v99 - 6);
        v103 = *(v99 - 5);
        v105 = __OFSUB__(v103, v104);
        v97 = v103 - v104;
        v98 = v105;
        if (v105)
        {
          goto LABEL_126;
        }

        v106 = &v165[16 * v90];
        v108 = *v106;
        v107 = *(v106 + 1);
        v105 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v105)
        {
          goto LABEL_128;
        }

        v105 = __OFADD__(v97, v109);
        v110 = v97 + v109;
        if (v105)
        {
          goto LABEL_130;
        }

        if (v110 >= v102)
        {
          v128 = &v91[2 * v94];
          v130 = *v128;
          v129 = v128[1];
          v105 = __OFSUB__(v129, v130);
          v131 = v129 - v130;
          if (v105)
          {
            goto LABEL_136;
          }

          if (v97 < v131)
          {
            v94 = v90 - 2;
          }

          goto LABEL_103;
        }

        goto LABEL_81;
      }

      v18 = v158;
      v15 = &selRef_hasOptedToHH2;
LABEL_4:
      v17 = v159;
      v13 = v160[1];
      if (v159 >= v13)
      {
        v174 = v14;
        goto LABEL_114;
      }
    }
  }

  v143 = a5;
LABEL_114:
  v144 = *v151;
  if (*v151)
  {
    v145 = a5;
    v146 = v172;
    sub_10005625C(&v174, v144, v160, v145);
    if (v146)
    {

LABEL_117:
    }

    else
    {
    }
  }

  else
  {
LABEL_146:

    __break(1u);
  }
}

void sub_100057108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v18 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      v13 = sub_100055C44(v11);
      v14 = sub_100055C44(v12);

      if (v14 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v15;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1000571F4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10005B9DC(0, &qword_1000DA870, HMRoom_ptr);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_1000563F8(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    sub_100057108(0, v3, 1, a1);
  }
}

void sub_100057338(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_10007EAB8(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_1000571F4(v8, v7);

  specialized ContiguousArray._endMutation()();
}

id sub_1000573D8(void *a1)
{
  v2 = [a1 actionSets];
  sub_10005B9DC(0, &qword_1000D9D68, HMActionSet_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_10007C600(v3);
  sub_100051F4C(&v9);
  if (!v1)
  {

    v4 = v9;
    if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*(v9 + 16))
    {
LABEL_5:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_8;
      }

      if (*(v4 + 16))
      {
        v5 = *(v4 + 32);
LABEL_8:
        v6 = v5;

        return v6;
      }

      __break(1u);
      goto LABEL_13;
    }

    sub_100057794();
    swift_allocError();
    *v8 = 0x65536E6F69746361;
    *(v8 + 8) = 0xE900000000000074;
    *(v8 + 48) = 2;
    return swift_willThrow();
  }

LABEL_13:

  __break(1u);
  return result;
}

void sub_10005753C(void *a1)
{
  v3 = [v1 _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = 0;
    *(v5 + 32) = v1;
    v18 = sub_10005776C;
    v19 = v5;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_10005D794;
    v17 = &unk_1000C4D10;
    v6 = _Block_copy(&v14);
    v7 = a1;
    v8 = v1;

    v9 = [v4 addSuccessBlock:v6];
    _Block_release(v6);

    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = 0;
    v18 = sub_10005D77C;
    v19 = v10;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100047498;
    v17 = &unk_1000C4D60;
    v11 = _Block_copy(&v14);
    v12 = v7;

    v13 = [v9 addFailureBlock:v11];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005772C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005777C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100057794()
{
  result = qword_1000D9C60;
  if (!qword_1000D9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C60);
  }

  return result;
}

uint64_t sub_1000577E8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000578B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000578FC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_10005794C()
{
  v1 = [objc_opt_self() futureWithResult:*(v0 + 16)];

  return v1;
}

uint64_t sub_1000579C8()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057A54()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100057A94(uint64_t a1, id a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  if (v6)
  {
    v6(a1);
  }

  return [a2 showSpeakersAndTVsSectionWithTitle:0 forHome:a3 animated:1];
}

uint64_t sub_100057B1C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100057B64(uint64_t a1, id a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  if (v6)
  {
    v6(a1);
  }

  return [a2 showAccessoryTypeGroup:v7 forHome:a3 animated:1];
}

uint64_t sub_100057BDC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057C30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057C80()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057CD4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100057D34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057D7C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10005B9DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100057DE8()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100057E40(void *a1)
{
  v2 = v1;
  static os_log_type_t.default.getter();
  sub_10005B9DC(0, &qword_1000D9D80, OS_os_log_ptr);
  v4 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v5 = [v2 baseViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 firstReadCompleteFuture];
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v31 = sub_100058290;
    v32 = v8;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10005D798;
    v30 = &unk_1000C5DC8;
    v9 = _Block_copy(&v27);
    v10 = v6;

    v11 = [v7 flatMap:v9];
    _Block_release(v9);

    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = 17;
    *(v12 + 32) = v10;
    v31 = sub_100058298;
    v32 = v12;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100077BF0;
    v30 = &unk_1000C5E18;
    v13 = _Block_copy(&v27);
    v14 = v10;
    v15 = a1;

    v16 = [v11 flatMap:v13];
    _Block_release(v13);

    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = 17;
    v31 = sub_1000582A8;
    v32 = v17;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10005D79C;
    v30 = &unk_1000C5E68;
    v18 = _Block_copy(&v27);
    v19 = v15;

    v20 = [v16 addSuccessBlock:v18];
    _Block_release(v18);

    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = 17;
    v31 = sub_1000582CC;
    v32 = v21;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100047498;
    v30 = &unk_1000C5EB8;
    v22 = _Block_copy(&v27);
    v23 = v19;

    v24 = [v20 addFailureBlock:v22];
    _Block_release(v22);
  }

  else
  {
    sub_100057794();
    v25 = swift_allocError();
    *v26 = 1;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    *(v26 + 40) = 0;
    *(v26 + 48) = 5;
    sub_10007095C(17, v25);
  }
}

uint64_t sub_10005830C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100058364()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_1000583AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_1000583BC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_100058400(void *a1)
{
  v3 = type metadata accessor for UUID();
  v5 = __chkstk_darwin(v3, v4);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_100057794();
    swift_allocError();
    *v18 = 1701670760;
    *(v18 + 8) = 0xE400000000000000;
    *(v18 + 48) = 2;
    return swift_willThrow();
  }

  v57 = v1;
  v58 = v8;
  v59 = v6;
  v60 = v5;
  v9 = objc_allocWithZone(HRERecommendationEngine);
  v10 = a1;
  v11 = [v9 init];
  v12 = [v11 generateRecommendationsForHome:v10 options:113];

  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  aBlock[4] = sub_10005D4A0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004AD98;
  aBlock[3] = &unk_1000C6228;
  v16 = _Block_copy(aBlock);

  v17 = [v12 addCompletionBlock:v16];
  _Block_release(v16);

  swift_beginAccess();
  if (*(v14 + 16))
  {
    swift_willThrow();
    swift_errorRetain();
  }

  v62 = v14;
  v63 = v13;
  v61 = v12;
  v56 = v10;
  swift_beginAccess();
  v20 = *(v13 + 16);
  v66 = _swiftEmptyArrayStorage;
  v21 = (v20 & 0xFFFFFFFFFFFFFF8);
  if (v20 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v23 = 0;
      v24 = _swiftEmptyArrayStorage;
      do
      {
        v25 = v23;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v25 >= v21[2])
            {
              goto LABEL_56;
            }

            v26 = *(v20 + 8 * v25 + 32);
          }

          v27 = v26;
          v23 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v25;
          if (v23 == i)
          {
            goto LABEL_23;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v24 = v66;
      }

      while (v23 != i);
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }

LABEL_23:

    if (v24 >> 62)
    {
      break;
    }

    v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_62;
    }

LABEL_25:
    v29 = 0;
    v21 = (v24 & 0xC000000000000001);
    while (1)
    {
      if (v21)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v30 = *(v24 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = [v30 sourceTemplate];
      if (v33)
      {
        v20 = v33;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v34 = objc_allocWithZone(HFActionSetBuilder);
          v35 = v31;
          v36 = [v34 initWithHome:v56];
          v37 = v58;
          UUID.init()();
          UUID.uuidString.getter();
          (*(v59 + 8))(v37, v60);
          v38 = String._bridgeToObjectiveC()();

          v60 = v36;
          [v36 setName:v38];

          v58 = v35;
          v21 = [v35 actions];
          v39 = sub_10005B9DC(0, &qword_1000D9DA8, HFActionBuilder_ptr);
          sub_100057D7C(&qword_1000D9DB0, &qword_1000D9DA8, HFActionBuilder_ptr);
          v40 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v55[1] = v40;
          v59 = v39;
          if ((v40 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v40 = aBlock[6];
            v41 = aBlock[7];
            v42 = aBlock[8];
            v43 = aBlock[9];
            v20 = aBlock[10];
          }

          else
          {
            v44 = -1 << *(v40 + 32);
            v41 = v40 + 56;
            v42 = ~v44;
            v45 = -v44;
            if (v45 < 64)
            {
              v46 = ~(-1 << v45);
            }

            else
            {
              v46 = -1;
            }

            v20 = v46 & *(v40 + 56);

            v43 = 0;
          }

          v55[0] = v42;
          if (v40 < 0)
          {
LABEL_43:
            v47 = __CocoaSet.Iterator.next()();
            if (v47)
            {
              v64 = v47;
              swift_dynamicCast();
              v21 = v66;
              v48 = v43;
              v49 = v20;
              v50 = v61;
              if (v66)
              {
                goto LABEL_51;
              }
            }

            else
            {
              v50 = v61;
            }

LABEL_53:
            sub_100059150(v40);

            v53 = v58;

            return v60;
          }

          while (1)
          {
            v51 = v43;
            v52 = v20;
            v48 = v43;
            v50 = v61;
            if (!v20)
            {
              break;
            }

LABEL_50:
            v49 = (v52 - 1) & v52;
            v21 = *(*(v40 + 48) + ((v48 << 9) | (8 * __clz(__rbit64(v52)))));
            if (!v21)
            {
              goto LABEL_53;
            }

LABEL_51:
            HFActionSetBuilder.add(actionBuilder:)();

            v43 = v48;
            v20 = v49;
            if (v40 < 0)
            {
              goto LABEL_43;
            }
          }

          while (1)
          {
            v48 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_59;
            }

            if (v48 >= ((v42 + 64) >> 6))
            {
              goto LABEL_53;
            }

            v52 = *(v41 + 8 * v48);
            ++v51;
            if (v52)
            {
              goto LABEL_50;
            }
          }
        }
      }

      else
      {
        v20 = v31;
      }

      ++v29;
      if (v32 == v28)
      {
        goto LABEL_62;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (v28)
  {
    goto LABEL_25;
  }

LABEL_62:

  sub_100057794();
  swift_allocError();
  *v54 = 0xD000000000000031;
  *(v54 + 8) = 0x800000010009A2E0;
  *(v54 + 48) = 4;
  swift_willThrow();
}

void sub_100058C48(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = [objc_opt_self() sharedDispatcher];
  v6 = [v5 home];

  v7 = sub_100058400(v6);
  *(v4 + 16) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = 22;
  *(v8 + 32) = v4;
  v9 = HFHomeAppTabIdentifierHome;
  v10 = a1;

  v11 = [v2 _selectAndFinishFirstReadForTabWithIdentifier:v9];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = 22;
    *(v13 + 32) = v4;
    *(v13 + 40) = sub_100058E8C;
    *(v13 + 48) = v8;
    aBlock[4] = sub_100058F1C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005D794;
    aBlock[3] = &unk_1000C6070;
    v14 = _Block_copy(aBlock);
    v15 = v10;

    v16 = [v12 addSuccessBlock:v14];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100058ED4()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100058F7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000578B4(&qword_1000D9DA0, &qword_1000931C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10005D10C(v4, v13, &qword_1000D9D98, &qword_1000931B8);
      result = sub_10007C3AC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000583AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_1000590DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059114()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100059158(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000578B4(&qword_1000D9EC0, &unk_100093280);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10005D10C(v4, &v13, &qword_1000D9EC8, &qword_1000934F0);
      v5 = v13;
      v6 = v14;
      result = sub_10007C3F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000583AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

id sub_100059288(void *a1)
{
  v3 = type metadata accessor for Date();
  v5 = __chkstk_darwin(v3, v4);
  v7 = __chkstk_darwin(v5, v6);
  if (!a1)
  {
    sub_100057794();
    swift_allocError();
    *v20 = 1701670760;
    *(v20 + 8) = 0xE400000000000000;
    *(v20 + 48) = 2;
    return swift_willThrow();
  }

  v70 = v1;
  v71 = v10;
  v72 = v67 - v8;
  v73 = v9;
  v74 = v7;
  v11 = objc_allocWithZone(HRERecommendationEngine);
  v12 = a1;
  v13 = [v11 init];
  v14 = [v13 generateRecommendationsForHome:v12 options:114];

  v15 = swift_allocObject();
  *(v15 + 16) = _swiftEmptyArrayStorage;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  aBlock[4] = sub_10005A06C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004AD98;
  aBlock[3] = &unk_1000C6430;
  v18 = _Block_copy(aBlock);

  v19 = [v14 addCompletionBlock:v18];
  _Block_release(v18);

  swift_beginAccess();
  if (*(v16 + 16))
  {
    swift_willThrow();
    swift_errorRetain();

    goto LABEL_63;
  }

  v69 = v12;
  v75 = v16;
  v76 = v15;
  swift_beginAccess();
  v22 = *(v15 + 16);
  v80 = _swiftEmptyArrayStorage;
  v23 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v68 = v14;

    if (i)
    {
      v25 = 0;
      v26 = _swiftEmptyArrayStorage;
      v14 = &HFSymptomFixManagerStartSessionNotification_ptr;
      do
      {
        v27 = v25;
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v27 >= *(v23 + 16))
            {
              goto LABEL_56;
            }

            v28 = *(v22 + 8 * v27 + 32);
          }

          v29 = v28;
          v25 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v27;
          if (v25 == i)
          {
            goto LABEL_23;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v26 = v80;
      }

      while (v25 != i);
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
    }

LABEL_23:

    if (v26 >> 62)
    {
      break;
    }

    v30 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v75;
    if (!v30)
    {
      goto LABEL_62;
    }

LABEL_25:
    v31 = 0;
    v23 = v26 & 0xC000000000000001;
    v14 = &HFUserObserver__prots;
    while (1)
    {
      if (v23)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v33 = *(v26 + 8 * v31 + 32);
      }

      v34 = v33;
      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v36 = [v33 sourceTemplate];
      if (v36)
      {
        v32 = v36;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v37 = [v34 actions];
          v38 = sub_10005B9DC(0, &qword_1000D9DA8, HFActionBuilder_ptr);
          v39 = sub_100057D7C(&qword_1000D9DB0, &qword_1000D9DA8, HFActionBuilder_ptr);
          v67[3] = v38;
          v67[1] = v39;
          v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v40 = objc_allocWithZone(HUTriggerBuilderContext);
          v41 = v69;
          v42 = [v40 init];
          v43 = [objc_allocWithZone(HFEventTriggerBuilder) initWithHome:v41 context:v42];
          v69 = v41;

          v44 = [objc_allocWithZone(HFCalendarEventBuilder) init];
          v45 = v71;
          Date.init()();
          v46 = v72;
          Date.addingTimeInterval(_:)();
          v47 = v74;
          v48 = v73[1];
          v48(v45, v74);
          isa = Date._bridgeToObjectiveC()().super.isa;
          v48(v46, v47);
          [v44 setFireDate:isa];

          v74 = v43;
          v50 = [v43 timeInterface];
          v78 = &OBJC_PROTOCOL___HFTimeEventBuilder;
          v51 = v44;
          v52 = swift_dynamicCastObjCProtocolUnconditional();
          swift_getObjectType();
          sub_1000578B4(&qword_1000D9E20, &qword_1000931C8);
          result = swift_dynamicCastMetatype();
          if (!result)
          {
            __break(1u);
            return result;
          }

          [v50 setEventBuilder:v52];

          v67[2] = v22;
          v73 = v51;
          if ((v22 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v14 = aBlock[6];
            v53 = aBlock[7];
            v54 = aBlock[8];
            v55 = aBlock[9];
            v56 = aBlock[10];
          }

          else
          {
            v57 = -1 << *(v22 + 32);
            v53 = v22 + 56;
            v54 = ~v57;
            v58 = -v57;
            if (v58 < 64)
            {
              v59 = ~(-1 << v58);
            }

            else
            {
              v59 = -1;
            }

            v56 = v59 & *(v22 + 56);

            v55 = 0;
            v14 = v22;
          }

          v72 = v54;
          v23 = (v54 + 64) >> 6;
          if (v14 < 0)
          {
LABEL_44:
            v60 = __CocoaSet.Iterator.next()();
            if (v60)
            {
              v77 = v60;
              swift_dynamicCast();
              v61 = v80;
              v62 = v55;
              v22 = v56;
              if (v80)
              {
                goto LABEL_52;
              }
            }

LABEL_54:
            sub_100059150(v14);

            return v74;
          }

          while (1)
          {
            v63 = v55;
            v64 = v56;
            v62 = v55;
            if (!v56)
            {
              break;
            }

LABEL_51:
            v22 = (v64 - 1) & v64;
            v61 = *(*(v14 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v64)))));
            if (!v61)
            {
              goto LABEL_54;
            }

LABEL_52:
            v65 = [v74 triggerActionSets];
            [v65 addAnonymousActionBuilder:v61];

            v55 = v62;
            v56 = v22;
            if (v14 < 0)
            {
              goto LABEL_44;
            }
          }

          while (1)
          {
            v62 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              goto LABEL_59;
            }

            if (v62 >= v23)
            {
              goto LABEL_54;
            }

            v64 = *(v53 + 8 * v62);
            ++v63;
            if (v64)
            {
              goto LABEL_51;
            }
          }
        }
      }

      else
      {
        v32 = v34;
      }

      ++v31;
      v22 = v75;
      if (v35 == v30)
      {
        goto LABEL_62;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v30 = _CocoaArrayWrapper.endIndex.getter();
  v22 = v75;
  if (v30)
  {
    goto LABEL_25;
  }

LABEL_62:

  sub_100057794();
  swift_allocError();
  *v66 = 0xD000000000000031;
  *(v66 + 8) = 0x800000010009A2E0;
  *(v66 + 48) = 4;
  swift_willThrow();

LABEL_63:
}

void sub_100059C20(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = [objc_opt_self() sharedDispatcher];
  v6 = [v5 home];

  v7 = sub_100059288(v6);
  *(v4 + 16) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = 23;
  *(v8 + 32) = v4;
  v9 = HFHomeAppTabIdentifierTriggers;
  v10 = a1;

  v11 = [v2 _selectAndFinishFirstReadForTabWithIdentifier:v9];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v4;
    *(v13 + 24) = sub_100059E60;
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    *(v13 + 48) = 23;
    aBlock[4] = sub_100059EF0;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005D794;
    aBlock[3] = &unk_1000C62C8;
    v14 = _Block_copy(aBlock);
    v15 = v10;

    v16 = [v12 addSuccessBlock:v14];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100059EA8()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100059F00()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100059F70()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005A02C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005A0DC()
{
  v1 = *(sub_1000578B4(&unk_1000D9E30, &qword_1000933F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1000578B4(&qword_1000D9E28, &unk_1000931D0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 9) & ~v6;
  v8 = *(v5 + 64);

  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  return _swift_deallocObject(v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_10005A2F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000578B4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10005A360(void *a1)
{
  v3 = *(sub_1000578B4(&unk_1000D9E30, &qword_1000933F0) - 8);
  v4 = (*(v3 + 80) + 25) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1000578B4(&qword_1000D9E28, &unk_1000931D0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = *(v1 + 24);
  v11 = v1 + ((v5 + *(v6 + 80) + 9) & ~*(v6 + 80));

  return sub_10004FC04(a1, v7, v10, v1 + v4, v8, v9, v11);
}

uint64_t sub_10005A46C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10005A51C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10005A52C()
{

  return _swift_deallocObject(v0, 33, 7);
}

id sub_10005A57C(uint64_t a1)
{
  v3 = *(type metadata accessor for DispatchTimeInterval() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100050DC0(a1, v4);
}

uint64_t sub_10005A5EC()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005A674(void *a1)
{
  v3 = *(type metadata accessor for DispatchTimeInterval() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100050F90(a1, v4);
}

uint64_t sub_10005A6F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005A73C()
{
  result = qword_1000D9E58;
  if (!qword_1000D9E58)
  {
    sub_10005A7A0(&qword_1000D9E50, &qword_1000931F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E58);
  }

  return result;
}

uint64_t sub_10005A7A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_10005A7F0(uint64_t a1, uint64_t (*a2)(void *a1), uint64_t a3, __n128 a4, double a5, __n128 a6, double a7)
{
  v9 = a6.n128_f64[0];
  v10 = a4.n128_f64[0];
  v11 = a1;
  v12 = a5 + 5.0;
  v13 = a7 + -10.0;
  CGRect.center.getter();
  v15 = v14;
  v17 = v16;
  v35.origin.x = v10;
  v35.origin.y = v12;
  v35.size.width = v9;
  v35.size.height = v13;
  MinY = CGRectGetMinY(v35);
  v36.origin.x = v10;
  v36.origin.y = v12;
  v36.size.width = v9;
  v36.size.height = v13;
  MaxY = CGRectGetMaxY(v36);
  sub_100070AEC(v11);
  sub_1000578B4(&unk_1000D9F80, &unk_100093218);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100093150;
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v15;
  *(v21 + 40) = MinY;
  *(v21 + 48) = v15;
  *(v21 + 56) = MaxY;
  *(v21 + 64) = v10;
  *(v21 + 72) = v12;
  *(v21 + 80) = v9;
  *(v21 + 88) = v13;
  v22 = objc_allocWithZone(RPTBlockInteraction);
  v33 = sub_10005B7C4;
  v34 = v21;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10005D79C;
  v32 = &unk_1000C67C8;
  v23 = _Block_copy(&v29);
  v24 = [v22 initWithActions:v23];
  _Block_release(v23);

  *(v20 + 32) = v24;
  v25 = String._bridgeToObjectiveC()();

  sub_1000578B4(&unk_1000D9E80, &qword_100093228);
  v26.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a2)
  {
    v33 = a2;
    v34 = a3;
    v29 = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_100077B44;
    v32 = &unk_1000C67F0;
    a2 = _Block_copy(&v29);
  }

  v27 = [objc_allocWithZone(RPTInteractionTestParameters) initWithTestName:v25 interactions:v26.super.isa completionHandler:a2];
  _Block_release(a2);

  return v27;
}

uint64_t sub_10005AAA8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Device.Control.Kind.Primitive();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v5;
  v2[14] = v4;

  return _swift_task_switch(sub_10005AB9C, v5, v4);
}

uint64_t sub_10005AB9C()
{
  v1 = objc_opt_self();
  *(v0 + 120) = v1;
  if ([v1 isRecapAvailable])
  {
    v2 = [*(v0 + 64) appNavigator];
    *(v0 + 128) = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      *(v0 + 136) = v3;
      *v3 = v0;
      v3[1] = sub_10005AD08;

      return sub_10004BBC0();
    }

    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  sub_100057794();
  swift_allocError();
  *v6 = v5;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0;
  *(v6 + 48) = 5;
  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10005AD08(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 112);
  v6 = *(v3 + 104);
  if (v1)
  {
    v7 = sub_10005B61C;
  }

  else
  {
    v7 = sub_10005AE4C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005AE4C()
{
  v1 = sub_10004C5F0(*(v0 + 56), *(v0 + 144), sub_10004C09C, 0);
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 128);
    sub_1000578B4(&unk_1000D9E60, &qword_1000931F8);
    v4 = v2;
    static AccessoryControlViewController.test_prepareForPerformanceTesting()();
    v5 = [v3 showAccessory:v4 secondaryDestination:0];
    *(v0 + 168) = v5;
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_10005B078;

    return static NAFutureHelper.continuation<A>(_:)(v5, &type metadata for Swift.AnyObject + 8);
  }

  else
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 128);

    sub_100057794();
    swift_allocError();
    v10 = v9;
    _StringGuts.grow(_:)(69);
    v11._countAndFlagsBits = 0xD000000000000043;
    v11._object = 0x800000010009A480;
    String.append(_:)(v11);
    v12._object = 0x8000000100099E30;
    v12._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v12);
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 48) = 4;
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_10005B078(uint64_t a1)
{
  v3 = *v2;
  v3[23] = v1;

  if (v1)
  {
    v4 = v3[13];
    v5 = v3[14];

    return _swift_task_switch(sub_10005B690, v4, v5);
  }

  else
  {
    v6 = v3[21];
    swift_unknownObjectRelease();

    v7 = swift_task_alloc();
    v3[24] = v7;
    *v7 = v3;
    v7[1] = sub_10005B208;

    return static Task<>.sleep(nanoseconds:)(1000000000);
  }
}

uint64_t sub_10005B208()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_10005B724;
  }

  else
  {
    v5 = sub_10005B344;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10005B344()
{
  v1 = *(v0 + 144);

  v2 = [v1 presentedViewController];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  type metadata accessor for DataModelAccessoryControlViewController();
  if (!swift_dynamicCastClass())
  {

LABEL_6:
    v7 = *(v0 + 160);
    v8 = *(v0 + 144);
    v9 = *(v0 + 128);
    sub_100057794();
    swift_allocError();
    v14 = v13;
    v15 = [v8 presentedViewController];

    *v14 = 0xD00000000000001ELL;
    *(v14 + 8) = 0x800000010009A4D0;
    *(v14 + 16) = v15;
    *(v14 + 48) = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  (*(v5 + 104))(v4, enum case for Device.Control.Kind.Primitive.incremental(_:), v6);
  AccessoryControlViewController.test_firstControlFrame(for:)();
  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 160);
  v8 = *(v0 + 144);
  v9 = *(v0 + 128);
  if (*(v0 + 48))
  {
    sub_100057794();
    swift_allocError();
    v11 = v10;
    v12 = [v8 presentedViewController];

    *v11 = 0xD000000000000036;
    *(v11 + 8) = 0x800000010009A4F0;
    *(v11 + 16) = v12;
    *(v11 + 48) = 0;
    swift_willThrow();

LABEL_7:

    v16 = *(v0 + 8);
    goto LABEL_8;
  }

  v18 = *(v0 + 120);
  v20 = *(v0 + 32);
  v19 = *(v0 + 40);
  v22 = *(v0 + 16);
  v21 = *(v0 + 24);

  v23.n128_u64[0] = v22;
  v24.n128_u64[0] = v20;
  [v18 runTestWithParameters:{sub_10005A7F0(30, sub_10005D604, 0, v23, v21, v24, v19)}];
  swift_unknownObjectRelease();

  v16 = *(v0 + 8);
LABEL_8:

  return v16();
}

uint64_t sub_10005B61C()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005B690()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10005B724()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005B7FC()
{
  v1 = *(sub_1000578B4(&unk_1000D9E30, &qword_1000933F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10005B920(void *a1)
{
  v3 = *(sub_1000578B4(&unk_1000D9E30, &qword_1000933F0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_10004D268(a1, v1 + v4, v6, v7);
}

uint64_t sub_10005B9CC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10005B9DC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10005BA24(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v4;
  v2[11] = v3;

  return _swift_task_switch(sub_10005BABC, v4, v3);
}

uint64_t sub_10005BABC()
{
  v1 = objc_opt_self();
  *(v0 + 96) = v1;
  if ([v1 isRecapAvailable])
  {
    v2 = [*(v0 + 64) appNavigator];
    *(v0 + 104) = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      *(v0 + 112) = v3;
      *v3 = v0;
      v3[1] = sub_10005BC20;

      return sub_10004BBC0();
    }

    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  sub_100057794();
  swift_allocError();
  *v6 = v5;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0;
  *(v6 + 48) = 5;
  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10005BC20(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  if (v1)
  {
    v7 = sub_10005C4E4;
  }

  else
  {
    v7 = sub_10005BD64;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005BD64()
{
  v1 = sub_10004C5F0(*(v0 + 56), *(v0 + 120), sub_10004D104, 0);
  *(v0 + 136) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 104);
    sub_1000578B4(&unk_1000D9E60, &qword_1000931F8);
    v4 = v2;
    static AccessoryControlViewController.test_prepareForPerformanceTesting()();
    v5 = [v3 showAccessory:v4 secondaryDestination:0];
    *(v0 + 144) = v5;
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *v6 = v0;
    v6[1] = sub_10005BF88;

    return static NAFutureHelper.continuation<A>(_:)(v5, &type metadata for Swift.AnyObject + 8);
  }

  else
  {
    v7 = *(v0 + 120);
    v8 = *(v0 + 104);

    sub_100057794();
    swift_allocError();
    v10 = v9;
    _StringGuts.grow(_:)(64);
    v11._countAndFlagsBits = 0xD00000000000003ELL;
    v11._object = 0x800000010009A550;
    String.append(_:)(v11);
    v12._object = 0x8000000100099E50;
    v12._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v12);
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 48) = 4;
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_10005BF88(uint64_t a1)
{
  v3 = *v2;
  v3[20] = v1;

  if (v1)
  {
    v4 = v3[10];
    v5 = v3[11];

    return _swift_task_switch(sub_10005C550, v4, v5);
  }

  else
  {
    v6 = v3[18];
    swift_unknownObjectRelease();

    v7 = swift_task_alloc();
    v3[21] = v7;
    *v7 = v3;
    v7[1] = sub_10005C118;

    return static Task<>.sleep(nanoseconds:)(1000000000);
  }
}

uint64_t sub_10005C118()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_10005C5DC;
  }

  else
  {
    v5 = sub_10005C254;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10005C254()
{
  v1 = *(v0 + 120);

  v2 = [v1 presentedViewController];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  type metadata accessor for DataModelAccessoryControlViewController();
  if (!swift_dynamicCastClass())
  {

LABEL_6:
    v4 = *(v0 + 136);
    v5 = *(v0 + 120);
    v6 = *(v0 + 104);
    sub_100057794();
    swift_allocError();
    v11 = v10;
    v12 = [v5 presentedViewController];

    *v11 = 0xD00000000000001ELL;
    *(v11 + 8) = 0x800000010009A4D0;
    *(v11 + 16) = v12;
    *(v11 + 48) = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  AccessoryControlViewController.test_firstControlFrame(_:)();
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  if (*(v0 + 48))
  {
    sub_100057794();
    swift_allocError();
    v8 = v7;
    v9 = [v5 presentedViewController];

    *v8 = 0xD000000000000036;
    *(v8 + 8) = 0x800000010009A4F0;
    *(v8 + 16) = v9;
    *(v8 + 48) = 0;
    swift_willThrow();

LABEL_7:
    v13 = *(v0 + 8);
    goto LABEL_8;
  }

  v15 = *(v0 + 96);
  v17 = *(v0 + 32);
  v16 = *(v0 + 40);
  v19 = *(v0 + 16);
  v18 = *(v0 + 24);

  v20.n128_u64[0] = v19;
  v21.n128_u64[0] = v17;
  [v15 runTestWithParameters:{sub_10005A7F0(31, sub_10005D604, 0, v20, v18, v21, v16)}];
  swift_unknownObjectRelease();

  v13 = *(v0 + 8);
LABEL_8:

  return v13();
}

uint64_t sub_10005C4E4()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005C550()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10005C5DC()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005C664(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000578B4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_10005C6C4(uint64_t a1, uint64_t a2, void *a3, Class a4, uint64_t a5)
{
  v48 = a3;
  v8 = a1;
  v9 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v11 = __chkstk_darwin(v9 - 8, v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v47 - v16;
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v47 - v20;
  __chkstk_darwin(v19, v22);
  v24 = &v47 - v23;
  if (sub_100070AEC(v8) == 0xD00000000000001ELL && 0x8000000100099EB0 == v25)
  {

    goto LABEL_5;
  }

  v47 = a2;
  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  a2 = v47;

  if (v26)
  {
LABEL_5:
    sub_10005D10C(a4, v24, &unk_1000D9E30, &qword_1000933F0);
    v27 = type metadata accessor for UUID();
    v28 = *(v27 - 8);
    isa = 0;
    if ((*(v28 + 48))(v24, 1, v27) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v28 + 8))(v24, v27);
    }

    v30 = swift_allocObject();
    *(v30 + 16) = a5;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_10005CE74;
    *(v31 + 24) = v30;
    v53 = sub_10005D7B0;
    v54 = v31;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_10004DAF0;
    v52 = &unk_1000C6958;
    v32 = _Block_copy(&aBlock);

    v17 = [v48 findAccessoryWithItemManager:a2 accessoryID:isa testBlock:v32];

    _Block_release(v32);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if ((v32 & 1) == 0)
    {
      return v17;
    }

    goto LABEL_26;
  }

  if (sub_100070AEC(v8) == 0xD000000000000015 && 0x8000000100099EF0 == v34)
  {

    v35 = v48;
LABEL_13:
    sub_10005D10C(a4, v21, &unk_1000D9E30, &qword_1000933F0);
    v13 = type metadata accessor for UUID();
    v37 = *(v13 - 1);
    a4 = 0;
    if ((*(v37 + 48))(v21, 1, v13) != 1)
    {
      a4 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v37 + 8))(v21, v13);
    }

    v53 = sub_10004DAA4;
    v54 = 0;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_10004DAF0;
    v52 = &unk_1000C68E0;
    v38 = _Block_copy(&aBlock);

    v17 = [v35 findAccessoryWithItemManager:a2 accessoryID:a4 testBlock:v38];

    _Block_release(v38);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      return v17;
    }

    __break(1u);
    goto LABEL_17;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v35 = v48;
  if (v36)
  {
    goto LABEL_13;
  }

LABEL_17:
  sub_10005D10C(a4, v17, &unk_1000D9E30, &qword_1000933F0);
  v39 = type metadata accessor for UUID();
  v40 = *(v39 - 8);
  v41 = *(v40 + 48);
  v42 = 0;
  if (v41(v17, 1, v39) != 1)
  {
    v42 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v40 + 8))(v17, v39);
  }

  v53 = sub_10004DAE4;
  v54 = 0;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_10004DAF0;
  v52 = &unk_1000C6890;
  v43 = _Block_copy(&aBlock);

  v17 = [v35 findAccessoryWithItemManager:v47 accessoryID:v42 testBlock:v43];

  _Block_release(v43);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    goto LABEL_27;
  }

  if (v17)
  {
    return v17;
  }

  sub_10005D10C(a4, v13, &unk_1000D9E30, &qword_1000933F0);
  if (v41(v13, 1, v39) == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v40 + 8))(v13, v39);
  }

  v45 = v47;
  v53 = static BridgedNavigationError.__derived_enum_equals(_:_:);
  v54 = 0;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_10004DAF0;
  v52 = &unk_1000C68B8;
  v46 = _Block_copy(&aBlock);

  v17 = [v35 findAccessoryWithItemManager:v45 accessoryID:v44 testBlock:v46];

  _Block_release(v46);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v17;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10005CE7C()
{
  v1 = *(sub_1000578B4(&unk_1000D9E30, &qword_1000933F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 9, v2 | 7);
}

void sub_10005CFB0(uint64_t a1, void *a2, void *a3)
{
  v7 = *(sub_1000578B4(&unk_1000D9E30, &qword_1000933F0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_100051C14(a1, a2, a3, *(v3 + 16), v3 + v8, *v9, *(v9 + 8));
}

uint64_t sub_10005D078()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10005D0B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000C4688, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005D10C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000578B4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s25AccessoryControlsTestTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s25AccessoryControlsTestTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10005D2E8()
{
  result = qword_1000D9ED0;
  if (!qword_1000D9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9ED0);
  }

  return result;
}

void *sub_10005D7B8(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage;
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = type metadata accessor for SidebarTabElementBuilder();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t sub_10005D938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000578B4(&unk_1000DA580, &unk_100093370);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_10005D10C(a3, v26 - v11, &unk_1000DA580, &unk_100093370);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10005C664(v12, &unk_1000DA580, &unk_100093370);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10005C664(a3, &unk_1000DA580, &unk_100093370);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10005C664(a3, &unk_1000DA580, &unk_100093370);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10005DC38()
{
  v0 = type metadata accessor for Logger();
  sub_10006E590(v0, qword_1000D9EE0);
  sub_10006AF58(v0, qword_1000D9EE0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005DCC0(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 144) = a1;
  *(v2 + 88) = type metadata accessor for MainActor();
  *(v2 + 96) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 104) = v4;
  *(v2 + 112) = v3;

  return _swift_task_switch(sub_10005DD60, v4, v3);
}

uint64_t sub_10005DD60()
{
  v1 = *(v0 + 144);
  v2 = static MainActor.shared.getter();
  *(v0 + 120) = v2;
  v3 = swift_allocObject();
  *(v0 + 128) = v3;
  swift_unknownObjectWeakInit();
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  if (v2)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(sub_10005DE40, v5, v7);
}

uint64_t sub_10005DE40()
{
  v1 = v0[17];
  v0[2] = v0;
  v0[3] = sub_10005DEF0;
  v2 = swift_continuation_init();
  sub_10005E094(v2, *(v1 + 16), *(v1 + 24));

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10005DEF0()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10005E034, v3, v2);
}

uint64_t sub_10005E034()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10005E094(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    aBlock[4] = sub_10006E3C0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100077B44;
    aBlock[3] = &unk_1000C6CF0;
    v8 = _Block_copy(aBlock);

    [v6 dismissViewControllerAnimated:a3 & 1 completion:v8];
    _Block_release(v8);
  }
}

uint64_t static AdaptiveTabBarController.isAdaptiveTabBarEnabled.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for HomeAppFeatures();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIKitFeatures();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for UIKitFeatures.floatingTabBar(_:), v7);
  sub_10005E620(&qword_1000D9EF8, &type metadata accessor for UIKitFeatures, &protocol conformance descriptor for UIKitFeatures);
  v12 = FeatureFlagsKey.isEnabled.getter();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    (*(v3 + 104))(v6, enum case for HomeAppFeatures.adaptiveNavigation(_:), v2);
    sub_10005E620(&qword_1000D9F00, &type metadata accessor for HomeAppFeatures, &protocol conformance descriptor for HomeAppFeatures);
    v13 = FeatureFlagsKey.isEnabled.getter();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_10005E620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id AdaptiveTabBarController.baseController.getter()
{
  v1 = OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController;
  v2 = *(v0 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController);
  }

  else
  {
    v4 = [objc_allocWithZone(HOBaseController) initWithRootController:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0()
{
  v1 = OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___navigator;
  v2 = *(v0 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___navigator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___navigator);
  }

  else
  {
    v4 = AdaptiveTabBarController.baseController.getter();
    v5 = [objc_opt_self() navigatorWithRootViewController:v0 baseController:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *AdaptiveTabBarController.menuToolbarManager.getter()
{
  v1 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}