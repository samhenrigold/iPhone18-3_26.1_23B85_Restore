uint64_t sub_100090D40(void *a1)
{
  if (a1)
  {
    v1 = [a1 tocAssets];
    if (v1)
    {
      v2 = sub_10009515C(v1, &selRef_symbolSize);
      if (v3)
      {
        v4 = v2;
        v5 = v3;
        v6 = v2 == 0x656772616CLL && v3 == 0xE500000000000000;
        if (v6 || (sub_100096DE8(0x656772616CLL) & 1) != 0 || (v4 == 0x6C6C616D73 ? (v10 = v5 == 0xE500000000000000) : (v10 = 0), v10))
        {
        }

        else
        {
          sub_100096DE8(0x6C6C616D73);
        }
      }
    }
  }

  type metadata accessor for Image.Scale();
  sub_10000AF7C();
  v7 = sub_10000AFAC();

  return v8(v7);
}

uint64_t sub_100090E74(void *a1)
{
  if (!a1 || (result = sub_10005CD84(a1, &selRef_title), !v2))
  {

    return 0;
  }

  return result;
}

uint64_t sub_100090EB8(void *a1, SEL *a2)
{
  if (!a1 || (result = sub_10009515C([a1 tileContent], a2), !v3))
  {

    return 0;
  }

  return result;
}

void sub_100090F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100096D74();
  v5 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v5);
  sub_10000ED78();
  __chkstk_darwin(v6);
  sub_100096A30();
  v7 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  __chkstk_darwin(v8);
  sub_10000C30C();
  sub_100096914();
  sub_10008BCE0();
  if (sub_10000E5F0(v4, 1, v7) == 1)
  {
    sub_10000ABCC(v4, &unk_10018A300, &unk_1001241E0);
  }

  else
  {
    v9 = sub_100096A5C();
    v10(v9);
    SupportFlowIdentifier.rawValue.getter();
    sub_10008C8BC();
    sub_100025A88();
    v11 = sub_100083BC4();

    if (v11)
    {
      v12 = v11;
      sub_100090EB8(v11, &selRef_title);
    }

    v13 = sub_100096908();
    v14(v13);
  }

  sub_100053050();
}

uint64_t sub_1000910DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v5);
  sub_10000ED78();
  __chkstk_darwin(v6);
  sub_1000968C0();
  v7 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100096D94();
  SupportFlowIdentifier.init(rawValue:)();
  type metadata accessor for SupportFlowIdentifier();
  v8 = sub_100096D24();
  sub_100096960(v8);
  if (v9)
  {
    sub_10000ABCC(v2, &unk_10018A300, &unk_1001241E0);
    v12 = 1;
  }

  else
  {
    sub_100012448();
    v10 = sub_10000AFAC();
    v11(v10);
    v12 = 0;
  }

  return sub_100003CE8(a2, v12, 1, v7);
}

void sub_1000911FC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 trustedPhoneNumbersForAccount:v3];

  if (v5)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6[2])
    {
      v8 = v6[4];
      v7 = v6[5];
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    *a2 = v8;
    a2[1] = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t sub_1000912CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100096D94();
  v5 = sub_100003768(v3, v4);
  sub_10000ED84(v5);
  sub_10000ED78();
  __chkstk_darwin(v6);
  sub_1000968C0();
  sub_100096BC4();
  sub_100096BE8();
  sub_10000AB80(v7, v8, v9, v10);
  sub_100003768(&qword_10018E458, &qword_100129E90);
  v11 = sub_100096D24();
  if (sub_10000E5F0(v11, 2, v1))
  {
    v12 = &qword_10018DA20;
    v13 = &qword_100129760;
  }

  else
  {
    sub_100052F8C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100093EC8(v1, a1);
      goto LABEL_6;
    }

    v12 = &qword_10018E458;
    v13 = &qword_100129E90;
  }

  sub_10000ABCC(v1, v12, v13);
LABEL_6:
  type metadata accessor for SupportSolutions(0);
  v14 = sub_10000AFAC();
  return sub_100003CE8(v14, v15, 1, v16);
}

uint64_t sub_1000913E4@<X0>(uint64_t a1@<X8>)
{
  v111 = type metadata accessor for URLQueryItem();
  v108 = *(v111 - 8);
  v2 = __chkstk_darwin(v111);
  v103 = v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v98 = v91 - v5;
  v6 = __chkstk_darwin(v4);
  v107 = v91 - v7;
  v8 = __chkstk_darwin(v6);
  v101 = v91 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = v91 - v11;
  __chkstk_darwin(v10);
  v102 = v91 - v13;
  v14 = sub_100003768(&qword_100188EE8, &unk_10012A330);
  __chkstk_darwin(v14 - 8);
  v16 = v91 - v15;
  v106 = type metadata accessor for URLComponents();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v18 - 8);
  v20 = v91 - v19;
  v21 = type metadata accessor for SupportFlowIdentifier();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v100 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v91 - v25;
  sub_10008BCE0();
  if (sub_10000E5F0(v20, 1, v21) == 1)
  {
    v27 = &unk_10018A300;
    v28 = &unk_1001241E0;
    v29 = v20;
LABEL_3:
    sub_10000ABCC(v29, v27, v28);
    goto LABEL_20;
  }

  v30 = *(v22 + 32);
  v97 = v21;
  v30(v26, v20, v21);
  v99 = v26;
  SupportFlowIdentifier.rawValue.getter();
  sub_10008C8BC();
  v31 = sub_100083BC4();

  if (!v31 || (v32 = sub_10009515C(v31, &selRef_supportID), !v33))
  {
LABEL_19:
    (*(v22 + 8))(v99, v97);
    goto LABEL_20;
  }

  v34 = v32;
  v35 = v33;
  v109 = 0;
  v110 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v109 = 0xD000000000000016;
  v110 = 0x8000000100137B30;
  v36._countAndFlagsBits = v34;
  v36._object = v35;
  String.append(_:)(v36);

  URLComponents.init(string:)();

  v37 = v106;
  if (sub_10000E5F0(v16, 1, v106) == 1)
  {
    (*(v22 + 8))(v99, v97);
    v27 = &qword_100188EE8;
    v28 = &unk_10012A330;
    v29 = v16;
    goto LABEL_3;
  }

  v38 = v104;
  v39 = v105;
  (*(v104 + 32))(v105, v16, v37);
  result = URLComponents.queryItems.getter();
  if (!result)
  {
    (*(v38 + 8))(v39, v37);
    goto LABEL_19;
  }

  v41 = result;
  v93 = a1;
  v94 = v22;
  v42 = 0;
  v43 = *(result + 16);
  v95 = v108 + 16;
  v96 = (v108 + 8);
  while (1)
  {
    if (v43 == v42)
    {
LABEL_38:

      (*(v104 + 8))(v105, v106);
      (*(v94 + 8))(v99, v97);
      goto LABEL_20;
    }

    if (v42 >= *(v41 + 16))
    {
      break;
    }

    v44 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v45 = *(v108 + 72);
    v46 = *(v108 + 16);
    v46(v12, v41 + v44 + v45 * v42, v111);
    if (URLQueryItem.name.getter() == 7627107 && v47 == 0xE300000000000000)
    {

LABEL_24:

      v51 = v108 + 32;
      v52 = v102;
      v53 = v111;
      v92 = *(v108 + 32);
      v92(v102, v12, v111);
      v54 = URLQueryItem.value.getter();
      v56 = v55;
      v108 = v51;
      v102 = *(v51 - 24);
      (v102)(v52, v53);
      v57 = v94;
      v58 = v105;
      if (v56)
      {
        result = URLComponents.queryItems.getter();
        if (result)
        {
          v59 = result;
          v91[1] = v54;
          v91[2] = v56;
          v60 = 0;
          v61 = *(result + 16);
          v62 = result + v44;
          while (1)
          {
            if (v61 == v60)
            {

              goto LABEL_38;
            }

            if (v60 >= *(v59 + 16))
            {
              goto LABEL_63;
            }

            v46(v107, v62, v111);
            if (URLQueryItem.name.getter() == 7174515 && v63 == 0xE300000000000000)
            {
              break;
            }

            v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v65)
            {
              goto LABEL_41;
            }

            result = (v102)(v107, v111);
            v62 += v45;
            ++v60;
          }

LABEL_41:

          v66 = v101;
          v67 = v111;
          v92(v101, v107, v111);
          v68 = URLQueryItem.value.getter();
          v70 = v69;
          (v102)(v66, v67);
          v72 = v104;
          v71 = v105;
          v73 = v106;
          v74 = v99;
          v107 = v70;
          if (v70)
          {
            v101 = v68;
            result = URLComponents.queryItems.getter();
            if (result)
            {
              v75 = result;
              v76 = 0;
              v77 = *(result + 16);
              v78 = result + v44;
              while (1)
              {
                if (v77 == v76)
                {

                  v108 = 0;
                  goto LABEL_57;
                }

                if (v76 >= *(v75 + 16))
                {
                  goto LABEL_64;
                }

                v46(v103, v78, v111);
                if (URLQueryItem.name.getter() == 7303792 && v79 == 0xE300000000000000)
                {
                  break;
                }

                v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v81)
                {
                  goto LABEL_56;
                }

                result = (v102)(v103, v111);
                v78 += v45;
                ++v76;
              }

LABEL_56:

              v83 = v98;
              v84 = v111;
              v92(v98, v103, v111);
              v108 = URLQueryItem.value.getter();
              (v102)(v83, v84);
LABEL_57:
              v82 = v97;
              v72 = v104;
            }

            else
            {
              v108 = 0;
              v82 = v97;
            }

            v85 = v94;
            v86 = v100;
            (*(v94 + 104))(v100, enum case for SupportFlowIdentifier.battery(_:), v82);
            v87 = v99;
            v88 = sub_1000E4C44();
            v89 = *(v85 + 8);
            v89(v86, v82);
            if (v88)
            {
              v90 = 4;
            }

            else
            {
              v90 = 1;
            }

            BatteryDiagnosticsReport.ServiceLevel.rawValue.getter(v90, 1);
            SupportSymptomInfo.init(categoryId:symptomId:productId:batteryServiceLevel:)();
            (*(v72 + 8))(v105, v106);
            return (v89)(v87, v82);
          }

          (*(v72 + 8))(v71, v73);
          (*(v94 + 8))(v74, v97);
LABEL_20:
          sub_10009614C();
          swift_allocError();
          *v50 = 0;
          return swift_willThrow();
        }
      }

      (*(v104 + 8))(v58, v106);
      (*(v57 + 8))(v99, v97);
      goto LABEL_20;
    }

    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v49)
    {
      goto LABEL_24;
    }

    result = (*v96)(v12, v111);
    ++v42;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t *sub_100091E98(uint64_t a1, void *a2, void *a3)
{
  result = sub_100025734((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1000CAC1C();
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1000CAC18(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100091F28(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10005CD84(a2, &selRef_language);
  if (!v6)
  {
    v5 = sub_10008AAA4();
  }

  sub_100089A3C(v5, v6);
  v7 = sub_10008C6FC();
  v8 = sub_100114850(v7);

  if (v8)
  {
    v9 = [a2 mainCollectionSection];
  }

  else
  {
    v9 = 0;
  }

  sub_10008C468(v9);
  v10 = sub_1000951C4(a2, &selRef_featuredCollections, &qword_10018E470, TPSCollection_ptr);
  if (v10)
  {
    v11 = v10;
    v12 = objc_allocWithZone(TPSCollectionSection);
    v13 = sub_100094A54(0x6574736567677553, 0xE900000000000064, v11);
    sub_10008C590(v13);
    v14 = sub_10008C4CC();
    if (v14)
    {
      v15 = v14;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v16 = String.init(localized:table:bundle:locale:comment:)();
      sub_1000952B8(v16, v17, v15);
    }
  }

  else
  {
    sub_10008C590(0);
  }

  v18 = sub_1000951C4(a2, &selRef_collectionSections, &qword_10018B770, TPSCollectionSection_ptr);
  if (!v18)
  {
    v18 = _swiftEmptyArrayStorage;
  }

  sub_100089FD4(v18);
  v19 = sub_100095238();
  if (!v19)
  {
    sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
    v19 = Dictionary.init(dictionaryLiteral:)();
  }

  sub_10008A010(v19);
  v20 = sub_100095238();
  if (!v20)
  {
    sub_100025778(0, &qword_10018E478, TPSTip_ptr);
    v20 = Dictionary.init(dictionaryLiteral:)();
  }

  sub_10008A130(v20);
  sub_10008A474(0);
  return sub_10008A274(0, 0);
}

uint64_t sub_100092244(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10008FFE8(a2);
  sub_10008A474(v8);
  swift_errorRetain();
  sub_10008A274(a2, 1);
  static Logger.supportFlowApp.getter();
  v9 = a2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17[1] = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v9;
    *v14 = a2;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Flow content fetch failed due to error: %@", v13, 0xCu);
    sub_10000ABCC(v14, &qword_100189390, &qword_1001241D0);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10009241C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_errorRetain();
  sub_10008A294(a2, 1);
  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Service status fetch failed due to error: %@", v9, 0xCu);
    sub_10000ABCC(v10, &qword_100189390, &qword_1001241D0);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1000925F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  sub_10000ED84(v4);
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_100017BAC();
  v6 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v6);
  sub_10000ED78();
  __chkstk_darwin(v7);
  sub_1000968C0();
  v8 = type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C();
  (*(v9 + 16))(v1, a1, v8);
  sub_100096B34();
  sub_100003CE8(v10, v11, v12, v8);
  sub_10008BD9C(v1);
  sub_100050C10();
  *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_1000927B0(a1);
  sub_10008CA6C();
  sub_100096D18();
  if (!v16 & v15)
  {
    sub_1000955BC(v13, v14);
  }

  else if (v14)
  {
    sub_1000955BC(v13, v14);
    type metadata accessor for TaskPriority();
    v17 = sub_1000967B8();
    sub_100003CE8(v17, v18, v19, v20);
    type metadata accessor for MainActor();
    sub_10006F37C();

    v21 = static MainActor.shared.getter();
    sub_1000969E8();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v2;
    sub_100096B60();
    sub_100085200();
  }
}

uint64_t sub_1000927B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_10007A1C0(a1);
  sub_10008C088(v7);
  sub_10008C2B0();
  result = sub_100093460();
  if ((result & 1) == 0)
  {
    v9 = type metadata accessor for TaskPriority();
    sub_100003CE8(v6, 1, 1, v9);
    type metadata accessor for MainActor();

    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v2;
    sub_100085200();
  }

  return result;
}

uint64_t sub_1000928F0()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10009299C;

  return sub_10008FB58();
}

uint64_t sub_10009299C()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v3 = sub_100062F00();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100092ABC()
{
  v1 = v0;
  v2 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  sub_10000ED84(v2);
  sub_10000ED78();
  __chkstk_darwin(v3);
  sub_100017BAC();
  type metadata accessor for TaskPriority();
  v4 = sub_1000967B8();
  sub_100003CE8(v4, v5, v6, v7);
  type metadata accessor for MainActor();
  sub_10006F37C();

  v8 = static MainActor.shared.getter();
  sub_1000969E8();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v1;
  sub_100096B60();
  sub_100085200();
}

uint64_t sub_100092B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100092C2C, v6, v5);
}

uint64_t sub_100092C2C()
{
  sub_100025A94();
  v1 = static MainActor.shared.getter();
  v0[8] = v1;
  swift_task_alloc();
  sub_10004F4B0();
  v0[9] = v2;
  *v2 = v3;
  v2[1] = sub_100092CFC;
  v4 = v0[2];
  v5 = v0[3];

  return withDiscardingTaskGroup<A>(returning:isolation:body:)(v4, &type metadata for ()[1], v1, &protocol witness table for MainActor, &unk_10012A420, v5, &type metadata for ()[1]);
}

uint64_t sub_100092CFC()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;

  sub_100096D54();
  v5 = *(v4 + 56);
  v6 = *(v0 + 48);

  return _swift_task_switch(sub_100092E2C, v6, v5);
}

uint64_t sub_100092E2C()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_100092E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_100003768(&unk_10018A300, &unk_1001241E0);
  v3[4] = swift_task_alloc();
  sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v3[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100092F8C, v5, v4);
}

uint64_t sub_100092F8C()
{
  sub_10004F4F8();
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  v4 = type metadata accessor for TaskPriority();
  sub_100053004();
  sub_100003CE8(v5, v6, v7, v4);
  sub_1000969E8();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;

  sub_10008F344(v1, &unk_10012A430, v8);
  sub_10000ABCC(v1, &qword_1001888B0, &qword_1001228F0);
  sub_10008BCE0();
  v9 = type metadata accessor for SupportFlowIdentifier();
  v10 = sub_10000E5F0(v2, 1, v9);
  sub_10000ABCC(v2, &unk_10018A300, &unk_1001241E0);
  if (v10 != 1)
  {
    v11 = v0[5];
    v12 = v0[3];
    sub_100053004();
    sub_100003CE8(v13, v14, v15, v4);
    sub_1000969E8();
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v12;

    sub_10008F344(v11, &unk_10012A440, v16);
    sub_10000ABCC(v11, &qword_1001888B0, &qword_1001228F0);
  }

  sub_10000875C();

  return v17();
}

uint64_t sub_100093140()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100045AB0;

  return sub_100087D1C();
}

uint64_t sub_1000931D0()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10009327C;

  return sub_100087D1C();
}

uint64_t sub_10009327C()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v3 = sub_100062F00();

  return _swift_task_switch(v3, v4, v5);
}

void sub_10009339C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100096D74();
  sub_100096B04();
  v4 = sub_100025A88();
  v6 = sub_100003768(v4, v5);
  sub_10000ED84(v6);
  sub_10000ED78();
  __chkstk_darwin(v7);
  sub_1000967F8();
  sub_10008BCE0();
  SupportFlowBiomeManager.sessionId.getter();
  static URL.deepLink(_:stepId:sessionId:referrer:)();

  sub_100096C50();
  sub_100053050();
}

uint64_t sub_100093460()
{
  swift_getKeyPath();
  v1 = sub_10009531C(&qword_10018E460, type metadata accessor for FlowViewDataProvider.FirstLaunchWelcomeProvider, &unk_100129E4C);
  v9 = sub_100096938(v1, v2, v3, v4, v5, v6, v7, v8, v13, v0);
  sub_100096E80(v9, v10, v11);

  return *(v0 + 16);
}

uint64_t sub_1000934F4(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = v2;
  }

  else
  {
    swift_getKeyPath();
    sub_100096B40();
    __chkstk_darwin(v3);
    sub_100096768();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_100093748(v5, sub_100093F78, v6, &OBJC_IVAR____TtCC11SupportFlow20FlowViewDataProvider26FirstLaunchWelcomeProvider___observationRegistrar, &qword_10018E460, type metadata accessor for FlowViewDataProvider.FirstLaunchWelcomeProvider, &unk_100129E4C);
  }

  return result;
}

void sub_1000935C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100096D74();
  type metadata accessor for Logger();
  sub_100008780();
  __chkstk_darwin(v5);
  sub_10000C30C();
  ObservationRegistrar.init()();
  sub_1000961EC();
  *(v4 + 16) = WelcomeContent.shouldShow.getter() & 1;
  static Logger.supportFlowApp.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = sub_100093460() & 1;

    _os_log_impl(&_mh_execute_header, v6, v7, "Should Show Welcome: %{BOOL}d", v8, 8u);
    sub_100008744(v8);
  }

  else
  {
  }

  v9 = sub_100096B28();
  v10(v9);
  sub_100053050();
}

uint64_t sub_1000937D8()
{
  v1 = OBJC_IVAR____TtCC11SupportFlow20FlowViewDataProvider26FirstLaunchWelcomeProvider___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_10000AF7C();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_10009386C()
{
  sub_1000934F4(0);
  sub_100089838(1);
  sub_1000961EC();
  WelcomeContent.markAsViewed()();

  return sub_100092ABC();
}

uint64_t sub_1000938D4()
{
  v1 = [v0 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_100052F8C();
}

uint64_t sub_100093928@<X0>(uint64_t *a1@<X8>)
{
  result = TPSCollection.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100093958@<X0>(uint64_t *a1@<X8>)
{
  result = URL.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1000939A8(uint64_t a1)
{
  type metadata accessor for SupportFlowBiomeManager();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DeviceEventCoordinator();
    if (v2 <= 0x3F)
    {
      sub_100093D94(319, &qword_10018DC28, &type metadata accessor for SupportFlowSession, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100093D94(319, &qword_10018DC30, &type metadata accessor for EntryPoint, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100093D94(319, &unk_100189188, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            type metadata accessor for NavigationPath();
            if (v6 <= 0x3F)
            {
              sub_100093D94(319, &qword_100188F60, &type metadata accessor for SupportFlowIdentifier, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_100093D94(319, &unk_10018DC38, type metadata accessor for SupportSolutions, type metadata accessor for LoadingState);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for ObservationRegistrar();
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100093D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100093E20(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100093EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportSolutions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100093F2C()
{
  sub_10006F388();
  v0 = sub_100093460();
  return sub_100096CE8(v0);
}

uint64_t sub_100093F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  sub_10008C8BC();

  v3 = sub_100083BC4();

  return v3;
}

uint64_t sub_10009401C(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018E4A8, &qword_10012A098);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for SearchResult.Item.Value();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  sub_100003CE8(v4, 0, 1, v5);
  sub_100094114(v4);
  return sub_10000ABCC(v4, &qword_10018E4A8, &qword_10012A098);
}

uint64_t sub_100094114(uint64_t a1)
{
  v2 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v2 - 8);
  v60 = &v57 - v3;
  v4 = type metadata accessor for SupportFlowIdentifier();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v57 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v7 = __chkstk_darwin(v6 - 8);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v62 = &v57 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v57 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v57 - v15;
  __chkstk_darwin(v14);
  v63 = &v57 - v17;
  v18 = sub_100003768(&qword_10018E4A8, &qword_10012A098);
  __chkstk_darwin(v18 - 8);
  v20 = &v57 - v19;
  v21 = type metadata accessor for SearchResult.Item.Value();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = (&v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = &v57 - v26;
  sub_10000AB80(a1, v20, &qword_10018E4A8, &qword_10012A098);
  if (sub_10000E5F0(v20, 1, v21) == 1)
  {
    v28 = &qword_10018E4A8;
    v29 = &qword_10012A098;
    v30 = v20;
    return sub_10000ABCC(v30, v28, v29);
  }

  (*(v22 + 32))(v27, v20, v21);
  (*(v22 + 16))(v25, v27, v21);
  v32 = (*(v22 + 88))(v25, v21);
  if (v32 == enum case for SearchResult.Item.Value.topic(_:))
  {
    (*(v22 + 96))(v25, v21);
    v33 = *v25;
    v34 = [*v25 supportSiteURL];
    if (v34)
    {
      v35 = v34;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v45 = type metadata accessor for URL();
    sub_100003CE8(v13, v36, 1, v45);
    sub_10000AB34(v13, v16, &qword_100188EE0, &unk_100122AE0);
    if (sub_10000E5F0(v16, 1, v45) == 1)
    {
      sub_10000ABCC(v16, &qword_100188EE0, &unk_100122AE0);
      v46 = 1;
      v47 = v63;
    }

    else
    {
      v47 = v63;
      URL.appendingSupportArticleQueryParam()();
      (*(*(v45 - 8) + 8))(v16, v45);
      v46 = 0;
    }

    sub_100003CE8(v47, v46, 1, v45);
    sub_10008AEE0(v47, v48, v49, v50);
  }

  else if (v32 == enum case for SearchResult.Item.Value.supportArticle(_:))
  {
    (*(v22 + 96))(v25, v21);
    SupportArticle.supportSiteURLString.getter();
    if (!v37)
    {
      (*(v22 + 8))(v27, v21);
    }

    v38 = v61;
    URL.init(string:)();

    v39 = type metadata accessor for URL();
    if (sub_10000E5F0(v38, 1, v39) == 1)
    {
      sub_10000ABCC(v38, &qword_100188EE0, &unk_100122AE0);
      v40 = 1;
      v41 = v62;
    }

    else
    {
      v41 = v62;
      URL.appendingSupportArticleQueryParam()();
      (*(*(v39 - 8) + 8))(v38, v39);
      v40 = 0;
    }

    sub_100003CE8(v41, v40, 1, v39);
    sub_10008AEE0(v41, v52, v53, v54);
  }

  else
  {
    if (v32 != enum case for SearchResult.Item.Value.supportFlow(_:))
    {
      v51 = *(v22 + 8);
      v51(v27, v21);
      return (v51)(v25, v21);
    }

    (*(v22 + 96))(v25, v21);
    v42 = *v25;
    type metadata accessor for FlowViewDataProvider(0);
    v43 = v60;
    sub_1000910DC(v42, v60);
    v44 = v59;
    if (sub_10000E5F0(v43, 1, v59) == 1)
    {
      (*(v22 + 8))(v27, v21);

      v28 = &unk_10018A300;
      v29 = &unk_1001241E0;
      v30 = v43;
      return sub_10000ABCC(v30, v28, v29);
    }

    v56 = v57;
    v55 = v58;
    (*(v58 + 32))(v57, v43, v44);
    sub_10008D4A8(v56);

    (*(v55 + 8))(v56, v44);
  }

  return (*(v22 + 8))(v27, v21);
}

uint64_t sub_100094840(uint64_t a1, uint64_t a2)
{
  v2 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    URL.appendingSupportArticleQueryParam()();
    v6 = type metadata accessor for URL();
    sub_100003CE8(v4, 0, 1, v6);
    sub_10008AEE0(v4, v7, v8, v9);
  }

  return result;
}

void sub_10009491C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003768(&qword_10018E4A0, &qword_10012A090);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = sub_10008A9A0();
    v7 = type metadata accessor for SearchResult.Item.Category();
    (*(*(v7 - 8) + 16))(v5, a1, v7);
    sub_100003CE8(v5, 0, 1, v7);
    dispatch thunk of SearchResultsViewModel.seeAllResultsCategory.setter();

    v8 = sub_10008A9A0();
    dispatch thunk of SearchResultsViewModel.showAllResults.setter();
  }
}

id sub_100094A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  if (a3)
  {
    sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithIdentifier:v5 collections:v6.super.isa];

  return v7;
}

uint64_t sub_100094AF4()
{
  sub_10003DCD8();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = sub_100096790(v3);
  *v4 = v5;
  v4[1] = sub_1000966FC;

  return v7(v1);
}

uint64_t sub_100094BE0(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100094CC8;

  return v4();
}

uint64_t sub_100094CC8()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  sub_10000875C();

  return v3();
}

uint64_t sub_100094DAC()
{
  sub_10003DCD8();
  sub_100096B04();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v1[1] = sub_100046160;
  sub_10000DF20();

  return sub_10008E8A0(v3, v4, v5);
}

uint64_t sub_100094E48()
{
  sub_10003DCD8();
  sub_100096B88();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100096778(v1);

  return sub_10008EAF0();
}

uint64_t sub_100094ED4()
{
  sub_10003DCD8();
  sub_100096B88();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100096778(v1);

  return sub_10008F538();
}

uint64_t sub_100094F60()
{
  sub_10003DCD8();
  sub_100096B88();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100096778(v1);

  return sub_10008FAC8();
}

uint64_t sub_100094FEC()
{

  sub_100096BD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100095020()
{
  sub_10003DCD8();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  v1[1] = sub_100045AB0;
  v3 = sub_10000AFAC();

  return v4(v3);
}

unint64_t sub_1000950F0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

id sub_100095114(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 openApplicationWithBundleID:v4];

  return v5;
}

uint64_t sub_10009515C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100052F8C();
}

uint64_t sub_1000951C4(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_100025778(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t sub_100095238()
{
  sub_100096DA0();
  v4 = [v3 *v2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  sub_100025778(0, v1, v0);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_1000952B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setTitle:v4];
}

uint64_t sub_10009531C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009538C()
{
  sub_10003DCD8();
  sub_1000969D8();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000967CC(v1);

  return sub_10008D0E4(v3, v4, v5, v6);
}

uint64_t sub_100095418()
{
  sub_10003DCD8();
  sub_100096D0C();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000569D8(v1);

  return v4(v3);
}

uint64_t sub_10009553C()
{
  sub_10006F388();
  result = sub_10008CA6C();
  *v0 = result;
  *(v0 + 8) = v2;
  return result;
}

uint64_t sub_1000955BC(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_1000955D4(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1000955D4(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1000955E0(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_1000955F8(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1000955F8(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_100095604()
{
  sub_10006F388();
  result = sub_10008CA58();
  *v0 = result;
  *(v0 + 8) = v2;
  return result;
}

uint64_t sub_100095684()
{
  sub_10006F388();
  result = sub_10008CA44();
  *v0 = result;
  *(v0 + 8) = v2;
  return result;
}

uint64_t sub_100095704(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000957F8;

  return v5(v2 + 32);
}

uint64_t sub_1000957F8()
{
  sub_100025A94();
  sub_10004622C();
  v2 = v1;
  sub_100052FD4();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  sub_10000870C();
  *v7 = v6;

  *v5 = *(v2 + 32);
  sub_10000875C();

  return v8();
}

uint64_t sub_1000958F0()
{
  sub_10006F388();
  result = sub_10008C948();
  *v0 = result;
  return result;
}

uint64_t sub_100095940()
{
  sub_10006F388();
  result = sub_10008C8BC();
  *v0 = result;
  return result;
}

uint64_t sub_100095988()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000959E0()
{
  sub_10006F388();
  result = sub_10008C6FC();
  *v0 = result;
  return result;
}

void *sub_100095A30()
{
  sub_10006F388();
  result = sub_10008C4CC();
  *v0 = result;
  return result;
}

void *sub_100095A78()
{
  sub_10006F388();
  result = sub_10008C424();
  *v0 = result;
  return result;
}

uint64_t sub_100095AC0()
{
  sub_10006F388();
  result = sub_10008C1D4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_100095B0C()
{
  sub_10006F388();
  result = sub_10008BFCC();
  *v0 = result;
  return result;
}

uint64_t sub_100095BD0()
{
  sub_10006F388();
  result = sub_10008B67C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_100095C4C()
{
  sub_10006F388();
  v0 = sub_10008B570();
  return sub_100096CE8(v0);
}

void *sub_100095D78()
{
  sub_10006F388();
  result = sub_10008ADF0();
  *v0 = result;
  return result;
}

uint64_t sub_100095DC0()
{
  sub_10006F388();
  result = sub_10008AB00();
  *v0 = result;
  v0[1] = v2;
  return result;
}

id sub_100095E3C()
{
  sub_10006F388();
  result = sub_10008A9A0();
  *v0 = result;
  return result;
}

uint64_t sub_100095E84()
{
  sub_10006F388();
  v0 = sub_10008A98C();
  return sub_100096CE8(v0);
}

uint64_t sub_100095EE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000AF8C(a1, a2, a3, a4);
  sub_10000AF7C();
  v5 = sub_10000AFAC();
  v6(v5);
  return v4;
}

void *sub_100095F34()
{
  sub_10006F388();
  result = sub_10008A430();
  *v0 = result;
  return result;
}

uint64_t sub_100095FA4()
{
  sub_10003DCD8();
  sub_100096D0C();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000569D8(v1);

  return v4(v3);
}

uint64_t sub_100096034()
{
  sub_10003DCD8();
  sub_1000969D8();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  sub_1000967CC(v1);

  return sub_1000928F0();
}

uint64_t sub_1000960C0()
{
  sub_10003DCD8();
  sub_1000969D8();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  sub_1000967CC(v1);

  return sub_1000931D0();
}

unint64_t sub_10009614C()
{
  result = qword_10018E4C8;
  if (!qword_10018E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E4C8);
  }

  return result;
}

uint64_t sub_1000961A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000AF8C(a1, a2, a3, a4);
  sub_10000AF7C();
  v5 = sub_10000AFAC();
  v6(v5);
  return v4;
}

unint64_t sub_1000961EC()
{
  result = qword_10018E4D0;
  if (!qword_10018E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E4D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlowViewDataProviderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10009630CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100096348()
{
  result = qword_10018E4D8;
  if (!qword_10018E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E4D8);
  }

  return result;
}

uint64_t sub_10009639C()
{
  sub_10003DCD8();
  sub_1000969D8();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000967CC(v1);

  return sub_100092B90(v3, v4, v5, v6);
}

uint64_t sub_100096428()
{
  sub_10003DCD8();
  sub_100096B04();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v1[1] = sub_100046160;
  sub_10000DF20();

  return sub_100092E84(v3, v4, v5);
}

uint64_t sub_1000964C0()
{
  sub_10003DCD8();
  sub_100096B88();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100096778(v1);

  return sub_10008FAC8();
}

uint64_t sub_10009654C()
{
  swift_unknownObjectRelease();

  sub_1000969E8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100096588()
{
  sub_10003DCD8();
  sub_100096B88();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100096778(v1);

  return sub_100093140();
}

uint64_t sub_100096614(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000AF7C();
  v4 = sub_10000AFAC();
  v5(v4);
  return a2;
}

uint64_t sub_100096670(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000AF7C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009681C(uint64_t a1, uint64_t a2, ...)
{

  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10009683C()
{
}

uint64_t sub_1000968D0()
{
}

uint64_t sub_1000968EC()
{
}

uint64_t sub_100096944()
{

  return swift_slowAlloc();
}

void sub_100096980(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_1000969A0()
{

  return sub_100096670(v0, type metadata accessor for FlowStepContentOption);
}

void sub_100096A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12[12] = a11;
  v12[13] = v14;
  v12[14] = v15;
  v12[15] = a9;
  v12[16] = a10;
  v12[17] = v16;
  v12[18] = v17;
  v12[19] = v18;
  v12[20] = v13;
  v12[21] = v11;
}

uint64_t sub_100096A88(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_100096AAC()
{

  return swift_storeEnumTagMultiPayload();
}

void sub_100096ACC()
{
}

void sub_100096B70(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

unint64_t sub_100096BF4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_10009CACC(v3, v2, va);
}

uint64_t sub_100096C18(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

uint64_t sub_100096C34@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_1000955BC(v4, v5);
}

uint64_t sub_100096C50()
{

  return sub_10000ABCC(v2, v0, v1);
}

uint64_t sub_100096C6C()
{

  return sub_10000ABCC(v0, v1, v2);
}

uint64_t sub_100096C88(float a1)
{
  *v1 = a1;

  return swift_errorRetain();
}

uint64_t sub_100096CA0(uint64_t a1)
{

  return swift_getKeyPath();
}

uint64_t sub_100096CB8()
{
}

double sub_100096D60()
{
  result = 0.0;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  v0[6] = 0u;
  return result;
}

uint64_t sub_100096DE8(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100096E08()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);

  return sub_100093EC8(v2, v3);
}

uint64_t sub_100096E28(uint64_t a1, uint64_t a2)
{

  return SupportFlowBiomeManager.eventPublisher(for:type:interaction:session:)(a1, a2, 1, 0, 0);
}

uint64_t sub_100096E48()
{
  *(v1 + 192) = v0;
  v3 = *(v1 + 80);

  return sub_1000913E4(v3);
}

uint64_t sub_100096E68(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100096E80(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

BOOL sub_100096E98()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_100096EB0(uint64_t a1)
{

  return static Logger.supportFlowApp.getter();
}

uint64_t sub_100096EC8()
{
  sub_100003CE8(v0, 0, 2, v1);

  return sub_10008A374(v0);
}

uint64_t sub_100096F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_10018E4E8, &unk_10012A470);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return sub_10000E5F0(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100096FE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_10018E4E8, &unk_10012A470);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return sub_100003CE8(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for PurchaseHistoryView(uint64_t a1)
{
  result = qword_10018E548;
  if (!qword_10018E548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000970F0(uint64_t a1)
{
  sub_1000971A4(319);
  if (v1 <= 0x3F)
  {
    sub_100044C7C();
    if (v2 <= 0x3F)
    {
      sub_1000971FC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000971A4(uint64_t a1)
{
  if (!qword_10018E558)
  {
    type metadata accessor for PurchasesFlowViewModel(255);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10018E558);
    }
  }
}

void sub_1000971FC(uint64_t a1)
{
  if (!qword_10018E560)
  {
    sub_100004D48(&qword_100188EE0, &unk_100122AE0);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_10018E560);
    }
  }
}

uint64_t sub_10009727C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1000973BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v4 = sub_100052F6C(v3);
  v40 = v5;
  v39 = *(v6 + 64);
  v7 = __chkstk_darwin(v4);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v35 - v9;
  v10 = type metadata accessor for PurchaseHistoryView(0);
  v11 = v10 - 8;
  v36 = *(v10 - 8);
  v12 = *(v36 + 64);
  __chkstk_darwin(v10);
  v13 = sub_100003768(&qword_10018E5A0, &qword_10012A4F0);
  sub_10000AF7C();
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = (v1 + *(v11 + 36));
  v18 = *v17;
  v19 = v17[1];

  v20 = sub_1000977A4();
  v21 = *(v2 + *(v11 + 40));
  *(v16 + 5) = &type metadata for PurchasesStepProvider;
  v22 = sub_1000258DC();
  v16[16] = v21;
  *v16 = v18;
  *(v16 + 1) = v19;
  *(v16 + 6) = v22;
  *(v16 + 7) = 0;
  *(v16 + 8) = 0;
  *(v16 + 9) = v20;
  *(v16 + 10) = 0;
  *(v16 + 11) = 0;
  sub_100098744(v2, &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  swift_allocObject();
  sub_100098F08();
  sub_100098BD8(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, v25);
  v26 = &v16[*(v13 + 36)];
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v26 = &unk_10012A500;
  *(v26 + 1) = v20;
  v27 = *(v2 + 24);
  v42 = *(v2 + 16);
  v43 = v27;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.projectedValue.getter();
  sub_100003768(&qword_10018E4E8, &unk_10012A470);
  v28 = v37;
  State.wrappedValue.getter();
  v29 = *(sub_10009727C() + qword_1001A5808);

  v30 = v38;
  sub_100082604(v28, v38);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = (v39 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_100082604(v30, v33 + v31);
  *(v33 + v32) = v29;
  sub_100003768(&qword_10018E5A8, &unk_10012A510);
  sub_100098A1C();
  sub_100098AD8();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_10000ABCC(v16, &qword_10018E5A0, &qword_10012A4F0);
}

uint64_t sub_1000977A4()
{
  v1 = type metadata accessor for PurchaseHistoryView(0);
  v2 = sub_100052F6C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  type metadata accessor for ActionInfoType(0);
  sub_10000AF7C();
  __chkstk_darwin(v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionInfo(0);
  *v9 = 2;
  swift_storeEnumTagMultiPayload();
  sub_100098744(v0, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  swift_allocObject();
  sub_100098F08();
  sub_100098BD8(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, v12);
  return sub_1000ED69C(v9, 1, sub_100098DF4, v0);
}

uint64_t sub_100097910(uint64_t a1)
{
  v1[19] = a1;
  v2 = type metadata accessor for URL();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = type metadata accessor for PurchaseHistoryView(0);
  v1[24] = swift_task_alloc();
  sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[28] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[29] = v4;
  v1[30] = v3;

  return _swift_task_switch(sub_100097A84, v4, v3);
}

uint64_t sub_100097A84()
{
  sub_10009727C();
  sub_1000C98F0(AMSBagKeyPurchaseHistoryURL);

  v1 = *(sub_10009727C() + qword_1001A5808);

  sub_10009727C();
  v2 = sub_1000C984C();

  v3 = [v1 URLForKey:v2];

  v4 = [v3 valuePromise];
  v0[31] = v4;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100097C64;
  v5 = swift_continuation_init();
  v0[17] = sub_100003768(qword_10018E5D0, &qword_10012A558);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100091E98;
  v0[13] = &unk_10017C3D8;
  v0[14] = v5;
  [v4 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100097C64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_100098078;
  }

  else
  {
    v5 = sub_100097D94;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100097D94()
{
  v29 = v0;
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[26];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];

  v7 = v0[18];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100003CE8(v2, 0, 1, v5);
  sub_10001BDA0(v2, v3);
  sub_100003768(&qword_10018E4E8, &unk_10012A470);
  State.wrappedValue.setter();
  sub_10000ABCC(v2, &qword_100188EE0, &unk_100122AE0);

  if (qword_100188280 != -1)
  {
    sub_100098EE8(&qword_100188280);
  }

  v8 = v0[24];
  v9 = v0[19];
  v10 = type metadata accessor for Logger();
  sub_10000C2D4(v10, qword_1001A57F0);
  sub_100098744(v9, v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_100098F5C();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    sub_100003768(&qword_10018E4E8, &unk_10012A470);
    State.wrappedValue.getter();
    v15 = sub_10000E5F0(v4, 1, v6);
    v16 = v0[25];
    if (v15)
    {
      sub_10000ABCC(v0[25], &qword_100188EE0, &unk_100122AE0);
      v17 = 0xE300000000000000;
      v4 = 7104878;
    }

    else
    {
      v19 = sub_100098F24();
      v20(v19);
      sub_10000ABCC(v16, &qword_100188EE0, &unk_100122AE0);
      v17 = v6;
      URL.absoluteString.getter();
      v21 = sub_100098F44();
      v22(v21);
    }

    sub_100098C50(v0[24]);
    v23 = sub_10009CACC(v4, v17, &v28);

    *(v13 + 4) = v23;
    sub_100098F80(&_mh_execute_header, v24, v25, "Recieved URL: %s");
    sub_1000086BC(v14);
    sub_1000968EC();
  }

  else
  {
    v18 = v0[24];

    sub_100098C50(v18);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_100098078()
{
  v28 = v0;
  v2 = v0[31];

  swift_willThrow();

  p_base_prots = &Defaults.base_prots;
  if (qword_100188280 != -1)
  {
    sub_100098EE8(&qword_100188280);
  }

  v4 = type metadata accessor for Logger();
  sub_10000C2D4(v4, qword_1001A57F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get purchaseHistoryURL", v7, 2u);
    sub_1000968EC();
  }

  if (qword_100188280 != -1)
  {
    sub_100098EE8(&qword_100188280);
  }

  v8 = v0[24];
  v9 = v0[19];
  sub_10000C2D4(v4, qword_1001A57F0);
  sub_100098744(v9, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_100098F5C();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    sub_100003768(&qword_10018E4E8, &unk_10012A470);
    State.wrappedValue.getter();
    v14 = sub_10000E5F0(&Defaults.base_prots, 1, v1);
    v15 = v0[25];
    if (v14)
    {
      sub_10000ABCC(v0[25], &qword_100188EE0, &unk_100122AE0);
      v16 = 0xE300000000000000;
      p_base_prots = 7104878;
    }

    else
    {
      v18 = sub_100098F24();
      v19(v18);
      sub_10000ABCC(v15, &qword_100188EE0, &unk_100122AE0);
      v16 = v1;
      URL.absoluteString.getter();
      v20 = sub_100098F44();
      v21(v20);
    }

    sub_100098C50(v0[24]);
    v22 = sub_10009CACC(p_base_prots, v16, &v27);

    *(v12 + 4) = v22;
    sub_100098F80(&_mh_execute_header, v23, v24, "Recieved URL: %s");
    sub_1000086BC(v13);
    sub_1000968EC();
  }

  else
  {
    v17 = v0[24];

    sub_100098C50(v17);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_100098380@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30[0] = a3;
  v5 = type metadata accessor for AMSWebView(0);
  __chkstk_darwin(v5);
  v7 = (v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  __chkstk_darwin(v8 - 8);
  v10 = v30 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v30 - v17;
  __chkstk_darwin(v16);
  v20 = v30 - v19;
  sub_10001BDA0(a1, v10);
  if (sub_10000E5F0(v10, 1, v11) == 1)
  {
    sub_10000ABCC(v10, &qword_100188EE0, &unk_100122AE0);
    v21 = 1;
    v22 = v30[0];
  }

  else
  {
    (*(v12 + 32))(v20, v10, v11);
    v23 = *(v12 + 16);
    v23(v18, v20, v11);
    *v7 = swift_getKeyPath();
    sub_100003768(&qword_10018B310, &qword_10012A550);
    swift_storeEnumTagMultiPayload();
    v23(v15, v18, v11);
    type metadata accessor for AMSWebViewModel(0);
    swift_allocObject();
    v24 = sub_1000CB4D8(a2, v15);
    v25 = (v7 + *(v5 + 20));
    v30[1] = v24;
    State.init(wrappedValue:)();
    v26 = *(v12 + 8);
    v26(v18, v11);
    v26(v20, v11);
    v27 = v30[3];
    *v25 = v30[2];
    v25[1] = v27;
    v28 = v30[0];
    sub_100098BD8(v7, v30[0], type metadata accessor for AMSWebView);
    v21 = 0;
    v22 = v28;
  }

  return sub_100003CE8(v22, v21, 1, v5);
}

uint64_t sub_1000986A8(uint64_t a1)
{

  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_100098744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseHistoryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000987AC()
{
  v2 = *(type metadata accessor for PurchaseHistoryView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000D870;

  return sub_100097910(v0 + v3);
}

uint64_t sub_100098878()
{
  v1 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_100052F6C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for URL();
  if (!sub_10000E5F0(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  v8 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_10009897C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_100052F6C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100098380(v1 + v8, v9, a1);
}

unint64_t sub_100098A1C()
{
  result = qword_10018E5B0;
  if (!qword_10018E5B0)
  {
    sub_100004D48(&qword_10018E5A0, &qword_10012A4F0);
    sub_100004CE4();
    sub_100098B8C(&qword_10018E5B8, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E5B0);
  }

  return result;
}

unint64_t sub_100098AD8()
{
  result = qword_10018E5C0;
  if (!qword_10018E5C0)
  {
    sub_100004D48(&qword_10018E5A8, &unk_10012A510);
    sub_100098B8C(&qword_10018E5C8, type metadata accessor for AMSWebView, &unk_10012DA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E5C0);
  }

  return result;
}

uint64_t sub_100098B8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100098BD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000AF7C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100098C50(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseHistoryView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100098CAC()
{
  v1 = type metadata accessor for PurchaseHistoryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 24);
  v6 = type metadata accessor for URL();
  if (!sub_10000E5F0(v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  sub_100003768(&qword_10018E4E8, &unk_10012A470);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100098DF4()
{
  v1 = *(type metadata accessor for PurchaseHistoryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000986A8(v2);
}

uint64_t sub_100098E54()
{
  sub_100004D48(&qword_10018E5A0, &qword_10012A4F0);
  sub_100004D48(&qword_10018E5A8, &unk_10012A510);
  sub_100098A1C();
  sub_100098AD8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100098EE8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100098F5C()
{

  return swift_slowAlloc();
}

void sub_100098F80(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100098FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100098FDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009901C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000990D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v63 = sub_100003768(&qword_10018A530, &qword_100124440);
  sub_10000AF7C();
  __chkstk_darwin(v4);
  sub_100012454();
  v62 = v5 - v6;
  __chkstk_darwin(v7);
  v9 = &v59 - v8;
  v10 = sub_100003768(&qword_10018E658, &qword_10012A688);
  sub_10000AF7C();
  __chkstk_darwin(v11);
  sub_100012454();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  v18 = *(a1 + 24);
  v65 = *(a1 + 16);
  v64 = v18;
  v20 = type metadata accessor for FlowStepStackView(0, v65, v18, v19);
  sub_100008780();
  v66 = v21;
  __chkstk_darwin(v22);
  sub_100012454();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = &v59 - v27;
  v67 = v10;
  type metadata accessor for _ConditionalContent();
  sub_100008780();
  v68 = v30;
  v69 = v29;
  __chkstk_darwin(v29);
  v32 = &v59 - v31;
  v33 = v2[10];
  if (v33)
  {
    v34 = v2[11];
    v35 = v2[1];
    v63 = *v2;
    v36 = v2[8];
    v62 = v2[7];
    v37 = v2[9];
    sub_10000EC9C((v2 + 2), v79, &qword_100189310, &qword_1001221A0);
    sub_100006568(v33, v34);
    sub_100006568(v33, v34);

    sub_100035B04(v63, v35, v62, v36, v37, v79, v33, v34, v25, v65, v64);
    sub_100006A88();
    swift_getWitnessTable();
    sub_100096DAC();
    sub_1000C6A00();
    v38 = *(v66 + 1);
    v39 = sub_100096DAC();
    v38(v39);
    sub_1000C6A00();
    sub_1000997A4();
    sub_100096DAC();
    sub_1000C2A90();
    sub_1000068F8(v33, v34);
    v40 = sub_100096DAC();
    v38(v40);
    (v38)(v28, v20);
    v41 = v32;
  }

  else
  {
    v65 = v17;
    v66 = &v59 - v31;
    v42 = v2[1];
    v61 = *v2;
    v43 = v2[8];
    v60 = v2[7];
    v44 = v2[9];
    sub_10000EC9C((v2 + 2), v79, &qword_100189310, &qword_1001221A0);
    sub_10000EC9C(v79, v77, &qword_100189310, &qword_1001221A0);
    type metadata accessor for FlowViewDataProvider(0);
    sub_10000B550();

    v64 = v44;

    *v14 = Environment.init<A>(_:)();
    *(v14 + 8) = v45 & 1;
    v46 = v67;
    v41 = *(v67 + 56);
    v47 = type metadata accessor for HandoffBundle(0);
    sub_100003CE8(v9, 1, 1, v47);
    sub_10000EC9C(v9, v62, &qword_10018A530, &qword_100124440);
    State.init(wrappedValue:)();
    sub_10000ABCC(v9, &qword_10018A530, &qword_100124440);
    v48 = v14 + *(v46 + 60);
    v73 = 0;
    v74 = 0;
    sub_100003768(&qword_10018A518, &qword_100124920);
    State.init(wrappedValue:)();
    v49 = v76;
    *v48 = v75;
    *(v48 + 16) = v49;
    v50 = (v14 + *(v46 + 64));
    v73 = 0;
    State.init(wrappedValue:)();
    v51 = *(&v75 + 1);
    *v50 = v75;
    v50[1] = v51;
    *(v14 + 16) = v61;
    *(v14 + 24) = v42;
    if (v43)
    {
      sub_1000998A4();
      v52 = v60;
    }

    else
    {
      v43 = sub_1000FF880(_swiftEmptyArrayStorage);
      v52 = 0;
      sub_1000998A4();
    }

    sub_10000ABCC(v79, &qword_100189310, &qword_1001221A0);
    *(v14 + 32) = v52;
    *(v14 + 40) = v43;
    *(v14 + 48) = v64;
    v53 = v77[1];
    *(v14 + 56) = v77[0];
    *(v14 + 72) = v53;
    v54 = v78;
    *(v14 + 96) = 0;
    *(v14 + 104) = 0;
    *(v14 + 88) = v54;
    sub_100099734(v14, &qword_100124440);
    sub_100006A88();
    swift_getWitnessTable();
    sub_1000997A4();
    sub_1000C2B40();
    sub_10000ABCC(&qword_100124440, &qword_10018E658, &qword_10012A688);
  }

  sub_100006A88();
  WitnessTable = swift_getWitnessTable();
  v56 = sub_1000997A4();
  v71 = WitnessTable;
  v72 = v56;
  sub_10009988C();
  v57 = v69;
  swift_getWitnessTable();
  sub_1000C6A00();
  return (*(v68 + 8))(v41, v57);
}

uint64_t sub_100099734(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018E658, &qword_10012A688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000997A4()
{
  result = qword_10018E660;
  if (!qword_10018E660)
  {
    sub_100004D48(&qword_10018E658, &qword_10012A688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E660);
  }

  return result;
}

uint64_t sub_100099808(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowStepStackView(255, *a1, a1[1], a4);
  sub_100004D48(&qword_10018E658, &qword_10012A688);
  type metadata accessor for _ConditionalContent();
  sub_100006A88();
  swift_getWitnessTable();
  sub_1000997A4();
  sub_10009988C();
  return swift_getWitnessTable();
}

uint64_t sub_1000998C4(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v29 = type metadata accessor for Logger();
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.supportFlowApp.getter();
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  if (v8 & 1) != 0 || (v30 = *a1, (v7))
  {
    v30 = *(a1 + 16);
  }

  sub_10004B340(a1, &v32);
  sub_10004B340(a1, &v32);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315394;
    if (v8)
    {
      v14 = 0;
    }

    else
    {
      v14 = v6;
    }

    v31 = v12;
    v32 = v14;
    v33 = (v8 | v7) & 1;
    sub_100003768(&qword_10018E670, &unk_10012A838);
    v15 = String.init<A>(describing:)();
    v17 = sub_10009CACC(v15, v16, &v31);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2048;
    sub_10004B378(a1);
    *(v11 + 14) = *(a1 + 16);
    sub_10004B378(a1);
    _os_log_impl(&_mh_execute_header, v9, v10, "Battery Config Max Capacity: %s. Raw Max Battery Capacity: %ld", v11, 0x16u);
    sub_1000086BC(v13);
    sub_100008744(v13);
    sub_100008744(v11);
  }

  else
  {
    sub_10004B378(a1);
    sub_10004B378(a1);
  }

  sub_10004B340(a1, &v32);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 134218754;
    *(v20 + 4) = *(a1 + 10) - 1;
    *(v20 + 12) = 2048;
    *(v20 + 14) = *(a1 + 11) - 1;
    sub_10004B378(a1);
    *(v20 + 22) = 2048;
    *(v20 + 24) = 2;
    *(v20 + 32) = 2080;
    v31 = v30;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = sub_10009CACC(v22, v23, &v32);

    *(v20 + 34) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Service warning: %ld, performanceMitigation: %ld, override performance mitigation: %ld, maxCapacity: %s", v20, 0x2Au);
    sub_1000086BC(v21);
    sub_100008744(v21);
    sub_100008744(v20);
  }

  else
  {
    sub_10004B378(a1);
  }

  (*(v3 + 8))(v5, v29);
  if (*(a1 + 10) == 6)
  {
    v25 = 0;
  }

  else
  {
    if ((v30 & ~(v30 >> 63)) >= 100)
    {
      v26 = 100;
    }

    else
    {
      v26 = v30 & ~(v30 >> 63);
    }

    v25 = sub_100099E00(a1, v26, v28);
  }

  sub_10004B378(a1);
  return v25;
}

uint64_t BatteryDiagnosticsReport.ServiceLevel.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_10012A848[result];
  }

  return result;
}

uint64_t BatteryDiagnosticsReport.serviceLevel.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t BatteryDiagnosticsReport.maxCapacity.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t BatteryDiagnosticsReport.isGenuine.getter(unint64_t a1, char a2, uint64_t a3, unsigned __int16 a4)
{
  v4 = (a4 > 0xFFu) | a4 ^ 1;
  if (a1 < 8)
  {
    v4 = 1;
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_100099E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 10);
  result = 4;
  switch(v3)
  {
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
    case 7:
      return result;
    case 5:
      if (a2 >= a3)
      {
        result = 3;
      }

      else
      {
        result = 4;
      }

      break;
    case 6:
    case 8:
    case 9:
      result = 8;
      break;
    case 10:
      result = 5;
      break;
    case 11:
      result = 6;
      break;
    case 12:
      result = 7;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

BOOL static BatteryDiagnosticsReport.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, __int16 a4, unint64_t a5, char a6, uint64_t a7, __int16 a8)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 1)
        {
          goto LABEL_8;
        }

        break;
      case 2:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 2)
        {
          goto LABEL_8;
        }

        break;
      case 3:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 3)
        {
          goto LABEL_8;
        }

        break;
      case 4:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 4)
        {
          goto LABEL_8;
        }

        break;
      case 5:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 5)
        {
          goto LABEL_8;
        }

        break;
      case 6:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 6)
        {
          goto LABEL_8;
        }

        break;
      case 7:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 7)
        {
          goto LABEL_8;
        }

        break;
      case 8:
        result = 0;
        if ((a6 & 1) != 0 && a5 > 7)
        {
          goto LABEL_8;
        }

        break;
      default:
        result = 0;
        if ((a6 & 1) != 0 && !a5)
        {
          goto LABEL_8;
        }

        break;
    }
  }

  else
  {
    result = 0;
    if ((a6 & 1) == 0 && a1 == a5)
    {
LABEL_8:
      if (a4)
      {
        if ((a8 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if ((a8 & 1) != 0 || a3 != a7)
        {
          return result;
        }
      }

      return (a8 ^ a4) < 0x100u;
    }
  }

  return result;
}

uint64_t BatteryDiagnosticsReport.ServiceLevel.init(rawValue:)(uint64_t a1)
{
  result = sub_10004A990(a1);
  switch(result)
  {
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      result = 8;
      break;
    case 10:
      result = 5;
      break;
    case 11:
      result = 6;
      break;
    case 12:
      result = 7;
      break;
    case 13:
      if (a1 == -99)
      {
        result = 8;
      }

      else
      {
        result = a1;
      }

      break;
    default:
      return result;
  }

  return result;
}

BOOL static BatteryDiagnosticsReport.ServiceLevel.__derived_enum_equals(_:_:)(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        if ((a4 & 1) == 0 || a3 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if ((a4 & 1) == 0 || a3 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if ((a4 & 1) == 0 || a3 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if ((a4 & 1) == 0 || a3 != 4)
        {
          return 0;
        }

        break;
      case 5:
        if ((a4 & 1) == 0 || a3 != 5)
        {
          return 0;
        }

        break;
      case 6:
        if ((a4 & 1) == 0 || a3 != 6)
        {
          return 0;
        }

        break;
      case 7:
        if ((a4 & 1) == 0 || a3 != 7)
        {
          return 0;
        }

        break;
      case 8:
        if ((a4 & 1) == 0 || a3 <= 7)
        {
          return 0;
        }

        break;
      default:
        if ((a4 & 1) == 0 || a3)
        {
          return 0;
        }

        break;
    }

    return 1;
  }

  else
  {
    return (a4 & 1) == 0 && a1 == a3;
  }
}

unint64_t sub_10009A230()
{
  result = qword_10018E668;
  if (!qword_10018E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E668);
  }

  return result;
}

uint64_t sub_10009A284(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 26))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 25);
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009A2C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 4;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for BatteryDiagnosticsReport.ServiceLevel(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10009A344(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009A360(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for BatteryDiagnosticsReport.PerformanceMitigation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10009A458);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10009A4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContactType();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10009A560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContactType();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for HandoffBundle(uint64_t a1)
{
  result = qword_10018E6D0;
  if (!qword_10018E6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009A654(uint64_t a1)
{
  type metadata accessor for ContactType();
  if (v1 <= 0x3F)
  {
    sub_10009A7EC(319, &qword_10018E6E0, &type metadata for HandoffBundle.AppleAccountInfo, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10009A7EC(319, &qword_10018E6E8, &type metadata for HandoffBundle.UserAction, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_10009A7EC(319, &qword_10018E6F0, &type metadata for HandoffBundle.Article, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_10009A7EC(319, &qword_10018E6F8, &type metadata for HandoffBundle.Setting, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_10009A7EC(319, &unk_10018E700, &type metadata for HandoffBundle.UserSelection, &type metadata accessor for Array);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10009A7EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10009A860(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009A8A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009A904(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009A944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10009A9A8(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10009A9FC(char a1)
{
  result = 0x6B636F4C6F747561;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x676972426F747561;
      break;
    case 3:
      result = 0x7461745369666977;
      break;
    case 4:
      result = 0x6E6E6F4369666977;
      break;
    case 5:
      result = 0x656E6E6F436E7076;
      break;
    case 6:
      result = 0x75746174536E7076;
      break;
    case 7:
      result = 0x616C696176417573;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x616470556F747561;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6567617373654D69;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0x6F6363416C69616DLL;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HandoffBundle.Interaction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10009AD50);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10009AD8C()
{
  result = qword_10018E750;
  if (!qword_10018E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E750);
  }

  return result;
}

uint64_t sub_10009AE14(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_10009AF54@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v9 = type metadata accessor for ActionInfoType(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v30 - v15;
  __chkstk_darwin(v14);
  v18 = &v30 - v17;

  v19 = sub_10009AE14(a1, a2 & 1);
  sub_10008E36C(v19, v20, v21, v22);

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_100003768(&qword_10018C108, &unk_10012AB40);
  v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100121620;
  sub_10003F5BC(v18, v24 + v23);
  sub_10000B4E0(v34, v33);
  sub_10000B4E0(v33, v32);
  v31 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for ActionInfo(0);
  sub_10003F5BC(v24 + v23, v16);
  swift_setDeallocating();
  sub_10006EB94();
  sub_10003F5BC(v16, v13);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1000ED69C(v13, 1, sub_10005A438, v25);
  sub_10003F620(v16);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v26 = v31;
  sub_10000B4E0(v32, a5 + 56);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v27 = Environment.init<A>(_:)();
  LOBYTE(v24) = v28;
  sub_10001035C(v32);
  sub_10001035C(v33);
  sub_10001035C(v34);
  result = sub_10003F620(v18);
  *a5 = v27;
  *(a5 + 8) = v24 & 1;
  *(a5 + 16) = v30;
  *(a5 + 24) = a4;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = v26;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  return result;
}

uint64_t sub_10009B258()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009B298()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A57D0 = result;
  *algn_1001A57D8 = v3;
  return result;
}

uint64_t sub_10009B3B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageResource();

  return sub_10000E5F0(a1, a2, v4);
}

uint64_t sub_10009B410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageResource();

  return sub_100003CE8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FlowAsset(uint64_t a1)
{
  result = qword_10018E7B0;
  if (!qword_10018E7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009B4A8(uint64_t a1)
{
  type metadata accessor for ImageResource();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_10009B550(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001767B8, v2);

  return v3 != 0;
}

BOOL sub_10009B5C0@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009B550(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10009B5F4@<X0>(void *a1@<X8>)
{
  result = sub_10009B598();
  *a1 = 0xD000000000000011;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PurchasesOptionOverride(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10009B6F0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009B770()
{
  result = qword_10018E7F0;
  if (!qword_10018E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E7F0);
  }

  return result;
}

unint64_t sub_10009B7C4()
{
  result = qword_10018E7F8;
  if (!qword_10018E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E7F8);
  }

  return result;
}

uint64_t sub_10009B880(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018E808, &qword_10012AC08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009B8FC()
{
  result = qword_10018E850;
  if (!qword_10018E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E850);
  }

  return result;
}

unint64_t sub_10009B950()
{
  result = qword_10018E858;
  if (!qword_10018E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E858);
  }

  return result;
}

uint64_t sub_10009B9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10009BA10()
{
  result = qword_10018E860;
  if (!qword_10018E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E860);
  }

  return result;
}

unint64_t sub_10009BA64()
{
  result = qword_10018E868;
  if (!qword_10018E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E868);
  }

  return result;
}

unint64_t sub_10009BABC()
{
  result = qword_10018E870;
  if (!qword_10018E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E870);
  }

  return result;
}

uint64_t static WiFiDiagnosticsDataProvider.turnOnWiFi()()
{
  sub_100025A94();

  return _swift_task_switch(sub_10009BBC4, 0, 0);
}

uint64_t sub_10009BBC4()
{
  v20 = v0;
  v1 = [objc_allocWithZone(CWFInterface) initWithServiceType:1];
  v0[23] = v1;
  [v1 activate];
  v0[10] = 0;
  v2 = (v0 + 10);
  v3 = [v1 setPower:1 error:v0 + 10];
  v4 = v0[10];
  if (v3 && (*v2 = 0, v5 = v4, v6 = [v1 setUserAutoJoinDisabled:0 error:v0 + 10], v4 = *v2, v6))
  {
    v7 = v4;
  }

  else
  {
    v8 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1001881E0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C2D4(v9, qword_1001A5760);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_10009CACC(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Setting Wi-Fi power: %s", v12, 0xCu);
      sub_1000086BC(v13);
    }

    else
    {
    }
  }

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10009BF0C;
  v17 = swift_continuation_init();
  v0[17] = sub_100003768(&qword_10018E878, &qword_10012ADF8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10009C540;
  v0[13] = &unk_10017CB70;
  v0[14] = v17;
  [v1 performAutoJoinWithParameters:0 reply:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10009BF0C()
{
  sub_100025A94();

  return _swift_task_switch(sub_10009C014, 0, 0);
}

uint64_t sub_10009C014()
{
  sub_100025A94();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009C0C8()
{
  sub_100025A94();
  v1 = v0[14];
  sub_10009C13C(v0 + 2);
  memcpy(v1, v0 + 2, 0x5BuLL);
  v2 = v0[1];

  return v2();
}

void *sub_10009C13C@<X0>(void *a1@<X8>)
{
  v1 = [objc_allocWithZone(CWFInterface) initWithServiceType:1];
  [v1 activate];
  v2 = [v1 powerOn];
  v3 = [v1 userAutoJoinDisabled];
  v4 = [v1 RSSI];
  v68 = 0;
  v5 = [v1 noise];
  v66 = 0;
  [v1 txRate];
  v7 = v6;
  v64 = 0;
  [v1 rxRate];
  v9 = v8;
  v62 = 0;
  v10 = sub_10009D284(v1);
  v34 = v11;
  v35 = v10;
  v12 = [v1 currentScanResult];
  if (v12)
  {
    v13 = v12;
    if ([v12 isOpen])
    {
      v14 = 1;
    }

    else
    {
      v14 = [v13 isOWE];
    }

    v37 = v14;
    v18 = [v13 isPersonalHotspot];
    v19 = [v1 knownNetworkProfileMatchingScanResult:v13];
    if (v19)
    {
      v20 = v19;
      if ([v19 lowDataMode] == 1)
      {

        v17 = 1;
LABEL_14:
        v15 = v37;
        v16 = v18;
        goto LABEL_15;
      }

      if (v18)
      {
        v21 = [v20 lowDataMode];

        v17 = v21 == 0;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v17 = 0;
    goto LABEL_14;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
LABEL_15:
  v38 = v15;
  v32 = v17;
  v33 = v16;
  v71[0] = v2;
  v71[1] = v3;
  v71[2] = 0;
  v72 = v69;
  v73 = v70;
  v74 = v4;
  v30 = v3;
  v22 = v68;
  v75 = v68;
  *v76 = *v67;
  *&v76[3] = *&v67[3];
  v77 = v5;
  v29 = v4;
  v23 = v66;
  v78 = v66;
  v79 = v7;
  v31 = v5;
  v24 = v2;
  v25 = v64;
  v80 = v64;
  v81 = v9;
  v26 = v62;
  v82 = v62;
  v83 = v35;
  v84 = v34;
  v85 = v15;
  v86 = v16;
  v87 = v17;
  sub_10006292C(v71, v41);
  v27 = sub_10009C7CC(v71);

  LOBYTE(__src[0]) = v24;
  BYTE1(__src[0]) = v30;
  BYTE2(__src[0]) = v27;
  *(__src + 3) = v69;
  HIBYTE(__src[0]) = v70;
  __src[1] = v29;
  LOBYTE(__src[2]) = v22;
  *(&__src[2] + 1) = *v67;
  HIDWORD(__src[2]) = *&v67[3];
  __src[3] = v31;
  LOBYTE(__src[4]) = v23;
  HIDWORD(__src[4]) = *&v65[3];
  *(&__src[4] + 1) = *v65;
  __src[5] = v7;
  LOBYTE(__src[6]) = v25;
  HIDWORD(__src[6]) = *&v63[3];
  *(&__src[6] + 1) = *v63;
  __src[7] = v9;
  LOBYTE(__src[8]) = v26;
  *(&__src[8] + 1) = *v61;
  HIDWORD(__src[8]) = *&v61[3];
  __src[9] = v35;
  __src[10] = v34;
  LOBYTE(__src[11]) = v38;
  BYTE1(__src[11]) = v33;
  BYTE2(__src[11]) = v32;
  v41[0] = v24;
  v41[1] = v30;
  v41[2] = v27;
  v42 = v69;
  v43 = v70;
  v44 = v29;
  v45 = v22;
  *v46 = *v67;
  *&v46[3] = *&v67[3];
  v47 = v31;
  v48 = v23;
  *v49 = *v65;
  *&v49[3] = *&v65[3];
  v50 = v7;
  v51 = v25;
  *&v52[3] = *&v63[3];
  *v52 = *v63;
  v53 = v9;
  v54 = v26;
  *&v55[3] = *&v61[3];
  *v55 = *v61;
  v56 = v35;
  v57 = v34;
  v58 = v38;
  v59 = v33;
  v60 = v32;
  sub_10006292C(__src, v39);
  sub_10009D2E8(v41);
  return memcpy(a1, __src, 0x5BuLL);
}

uint64_t sub_10009C540(uint64_t a1, void *a2)
{
  v3 = *sub_100025734((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_10009C5A4(v3, v4);
}

uint64_t WiFiDiagnosticsData.rssi.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t WiFiDiagnosticsData.noise.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t WiFiDiagnosticsData.txRate.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t WiFiDiagnosticsData.rxRate.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t WiFiDiagnosticsData.networkName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t WiFiDiagnosticsData.networkName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_10009C7CC(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 2 || (v2 & 1) != 0)
  {
    v3 = *(a1 + 10);
    if (!v3)
    {
      return 2;
    }

    v4 = *(a1 + 9);
    sub_10009D2E8(a1);
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      if (*(a1 + 1) <= -70)
      {
        v6 = 3;
      }

      else
      {
        v6 = 4;
      }

      if (a1[16])
      {
        return 0;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_10009D2E8(a1);
    return 1;
  }
}

uint64_t sub_10009C860(char a1)
{
  result = 0x6E776F6E6B6E55;
  switch(a1)
  {
    case 1:
      result = 0x64656C6261736944;
      break;
    case 2:
      result = 0x656E6E6F63736944;
      break;
    case 3:
      result = 0x6E67695320776F4CLL;
      break;
    case 4:
      result = 0x6C616D726F4ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static WiFiDiagnosticsData.__derived_struct_equals(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v6 = 0;
    if (v5 == 2 || ((v5 ^ v4) & 1) != 0)
    {
      return v6 & 1;
    }
  }

  v7 = a1[1];
  v8 = a2[1];
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      goto LABEL_47;
    }

LABEL_11:
    if (a1[2] == a2[2])
    {
      v6 = a2[16];
      if (a1[16])
      {
        if (!a2[16])
        {
          return v6 & 1;
        }
      }

      else
      {
        if (*(a1 + 1) != *(a2 + 1))
        {
          v6 = 1;
        }

        if (v6)
        {
          goto LABEL_47;
        }
      }

      v6 = a2[32];
      if (a1[32])
      {
        if (!a2[32])
        {
          return v6 & 1;
        }
      }

      else
      {
        if (*(a1 + 3) != *(a2 + 3))
        {
          v6 = 1;
        }

        if (v6)
        {
          goto LABEL_47;
        }
      }

      v6 = a2[48];
      if (a1[48])
      {
        if (!a2[48])
        {
          return v6 & 1;
        }
      }

      else
      {
        if (*(a1 + 5) != *(a2 + 5))
        {
          v6 = 1;
        }

        if (v6)
        {
          goto LABEL_47;
        }
      }

      v6 = a2[64];
      if (a1[64])
      {
        if (!a2[64])
        {
          return v6 & 1;
        }
      }

      else
      {
        if (*(a1 + 7) != *(a2 + 7))
        {
          v6 = 1;
        }

        if (v6)
        {
          goto LABEL_47;
        }
      }

      v9 = *(a1 + 10);
      v10 = *(a2 + 10);
      if (v9)
      {
        if (!v10)
        {
          goto LABEL_47;
        }

        v11 = *(a1 + 9) == *(a2 + 9) && v9 == v10;
        if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_45:
        if (((a1[88] ^ a2[88]) & 1) == 0 && ((a1[89] ^ a2[89]) & 1) == 0)
        {
          v6 = a1[90] ^ a2[90] ^ 1;
          return v6 & 1;
        }

        goto LABEL_47;
      }

      if (!v10)
      {
        goto LABEL_45;
      }
    }

LABEL_47:
    v6 = 0;
    return v6 & 1;
  }

  v6 = 0;
  if (v8 != 2 && ((v8 ^ v7) & 1) == 0)
  {
    goto LABEL_11;
  }

  return v6 & 1;
}

unint64_t sub_10009CACC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10009CB90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10001E894(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000086BC(v11);
  return v7;
}

unint64_t sub_10009CB90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10009CC90(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id *sub_10009CC90(uint64_t a1, unint64_t a2)
{
  v3 = sub_10009CCDC(a1, a2);
  sub_10009CDF4(&off_100174D98);
  return v3;
}

id *sub_10009CCDC(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10009CED8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10009CDF4(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_10009CF48(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id *sub_10009CED8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003768(&qword_10018E888, &qword_10012AF38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

id *sub_10009CF48(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003768(&qword_10018E888, &qword_10012AF38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10009D054(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 91))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009D0A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 91) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 91) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WiFiDiagnosticsData.ServiceLevel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10009D1F4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10009D230()
{
  result = qword_10018E880;
  if (!qword_10018E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E880);
  }

  return result;
}

uint64_t sub_10009D284(void *a1)
{
  v1 = [a1 networkName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for ForgotPasswordStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10009D3E4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10009D438(char a1)
{
  result = 0x6944206F72746E49;
  switch(a1)
  {
    case 1:
      result = 0x6150207465736552;
      break;
    case 2:
      result = 0x657453207478654ELL;
      break;
    case 3:
      result = 0x41206B636F6C6E55;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009D4F0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176818, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10009D53C(char a1)
{
  result = 0x676F6C616964;
  switch(a1)
  {
    case 1:
      result = 0x7361507465736572;
      break;
    case 2:
      result = 0x706574537478656ELL;
      break;
    case 3:
      result = 0x63416B636F6C6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009D60C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009D4F0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009D63C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009D53C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10009D6AC()
{
  result = qword_10018E890;
  if (!qword_10018E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E890);
  }

  return result;
}

unint64_t sub_10009D700()
{
  result = qword_10018E898;
  if (!qword_10018E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E898);
  }

  return result;
}

uint64_t sub_10009D7BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018E8A8, &qword_10012AFD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009D838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10009D874()
{
  result = qword_10018E8F0;
  if (!qword_10018E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E8F0);
  }

  return result;
}

unint64_t sub_10009D8C8()
{
  result = qword_10018E8F8;
  if (!qword_10018E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E8F8);
  }

  return result;
}

unint64_t sub_10009D920()
{
  result = qword_10018E900;
  if (!qword_10018E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E900);
  }

  return result;
}

void sub_10009D978(char a1)
{
  switch(a1)
  {
    case 2:
      sub_10009E06C();
      break;
    default:
      return;
  }
}

unint64_t sub_10009DA0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176200, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_10009DA58(char a1)
{
  switch(a1)
  {
    case 2:
      sub_10009E06C();
      break;
    default:
      return;
  }
}

unint64_t sub_10009DB0C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DA0C(*a1);
  *a2 = result;
  return result;
}

void sub_10009DB3C(unint64_t *a1@<X8>)
{
  sub_10009DA58(*v1);
  *a1 = v3;
  a1[1] = v4;
}

_BYTE *storeEnumTagSinglePayload for SoftwareUpdateOptionsOverride(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10009DC34);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10009DCCC()
{
  result = qword_10018E908;
  if (!qword_10018E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E908);
  }

  return result;
}

unint64_t sub_10009DD20()
{
  result = qword_10018E910;
  if (!qword_10018E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E910);
  }

  return result;
}

uint64_t sub_10009DDDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018E920, &qword_10012B160);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009DE58()
{
  result = qword_10018E968;
  if (!qword_10018E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E968);
  }

  return result;
}

unint64_t sub_10009DEAC()
{
  result = qword_10018E970;
  if (!qword_10018E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E970);
  }

  return result;
}

uint64_t sub_10009DF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10009DF6C()
{
  result = qword_10018E978;
  if (!qword_10018E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E978);
  }

  return result;
}

unint64_t sub_10009DFC0()
{
  result = qword_10018E980;
  if (!qword_10018E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E980);
  }

  return result;
}

unint64_t sub_10009E018()
{
  result = qword_10018E988;
  if (!qword_10018E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E988);
  }

  return result;
}

uint64_t sub_10009E0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_100188388;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1001A5990;
  v7 = *algn_1001A5998;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 48) = 0;
  *(a3 + 56) = v8;
  *(a3 + 64) = v7;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
}

uint64_t sub_10009E15C(void *a1)
{
  type metadata accessor for ModifiedContent();
  sub_10005D6CC();
  return swift_getWitnessTable();
}

uint64_t sub_10009E1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003768(&qword_10018E990, &qword_10012B3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = a2 + *(sub_100003768(&qword_10018E998, &qword_10012B3A8) + 36);
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  static Color.clear.getter();
  v6 = AnyView.init<A>(_:)();
  result = sub_100003768(&qword_10018E9A0, &unk_10012B3B0);
  *(a2 + *(result + 36)) = v6;
  return result;
}

unint64_t sub_10009E2D0()
{
  result = qword_10018E9A8;
  if (!qword_10018E9A8)
  {
    sub_100004D48(&qword_10018E9A0, &unk_10012B3B0);
    sub_10009E388();
    sub_10000AAEC(&qword_10018ABE0, &qword_10018ABE8, &qword_1001252B0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9A8);
  }

  return result;
}

unint64_t sub_10009E388()
{
  result = qword_10018E9B0;
  if (!qword_10018E9B0)
  {
    sub_100004D48(&qword_10018E998, &qword_10012B3A8);
    sub_10000AAEC(&qword_10018E9B8, &qword_10018E990, &qword_10012B3A0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10000AAEC(&qword_100188910, &qword_100188918, &unk_100127450, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirPodsStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10009E538);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

void *sub_10009E58C@<X0>(char a1@<W0>, void *a2@<X8>)
{
  switch(a1)
  {
    case 1:
      sub_1000A03E4();
      *&v208[8] = v98;
      *&v208[16] = 0uLL;
      *&v208[32] = 1;
      sub_10009FC94();
      v99 = sub_10009FCE8();
      sub_1000A037C(v99, &type metadata for AirPodsStepBluetoothDisabled, &type metadata for AirPodsStepNoDevicesFound, v100, v99, v101, v102, v103, v192, v200, 18);
      _ConditionalContent<>.init(storage:)();
      sub_1000A0368();
      sub_100003768(&qword_10018EA88, &qword_10012B578);
      sub_100003768(&qword_10018EAA8, &qword_10012B580);
      sub_10009FC08();
      v104 = sub_10009FD3C();
      v112 = sub_1000A02D4(v104, v105, v106, v107, v108, v109, v110, v111, v199, v207, v208[0]);
      sub_10001B42C(v112);
      sub_1000A04AC();
      sub_1000A046C();
      goto LABEL_13;
    case 2:
      type metadata accessor for AirPodsFlowViewModel(0);
      v78 = sub_1000699F4();
      sub_100005914(v78);
      sub_1000A034C();
      *&v208[16] = v80 | 1;
      *&v208[24] = v79;
      *&v208[32] = 256;
      sub_10009FDC8();
      sub_10009FE1C();
      v81 = sub_10001B448();
      sub_1000A02E4(v81, &type metadata for AirPodsStepDeviceListView, &type metadata for AirPodsStepIssueListView);
      sub_1000A0368();
      goto LABEL_10;
    case 3:
      type metadata accessor for AirPodsFlowViewModel(0);
      v82 = sub_1000699F4();
      sub_100005914(v82);
      sub_1000A034C();
      *&v208[16] = v84;
      *&v208[24] = v83;
      *&v208[32] = 257;
      sub_10009FDC8();
      sub_10009FE1C();
      v85 = sub_10001B448();
      sub_1000A02E4(v85, &type metadata for AirPodsStepDeviceListView, &type metadata for AirPodsStepIssueListView);
      sub_1000A0368();
      goto LABEL_10;
    case 4:
      *&v208[8] = 0;
      sub_10009FF88();
      v38 = sub_10009FFDC();
      sub_1000A037C(v38, &type metadata for AirPodsStepIssueHardwareView, &type metadata for AirPodsStepIssueAudioView, v39, v38, v40, v41, v42, v192, v200, 0);
      _ConditionalContent<>.init(storage:)();
      sub_1000A0424();
      sub_1000A0498();
      sub_100003768(&qword_10018EAD8, &qword_10012B590);
      sub_100003768(&qword_10018EAF8, &qword_10012B598);
      sub_10009FEFC();
      v43 = sub_1000A0030();
      v51 = sub_1000A02D4(v43, v44, v45, v46, v47, v48, v49, v50, v196, v204, v208[0]);
      sub_10001B42C(v51);
      sub_1000A03C4();
      sub_1000A04CC();
      v208[34] = 1;
LABEL_13:
      sub_100003768(&qword_10018EA78, &qword_10012B570);
      sub_100003768(&qword_10018EAC8, &qword_10012B588);
      sub_10009FB7C();
      v113 = sub_10009FE70();
      v121 = sub_1000A02D4(v113, v114, v115, v116, v117, v118, v119, v120, v197, v205, v208[0]);
      sub_10001B42C(v121);
      *v208 = sub_1000A040C();
      *&v208[16] = v122;
      *&v208[32] = v123;
      v208[34] = v124;
      v208[93] = 0;
      goto LABEL_27;
    case 5:
      type metadata accessor for AirPodsFlowViewModel(0);
      v125 = sub_1000699F4();
      *v208 = sub_100005914(v125);
      v208[8] = v126 & 1;
      v208[9] = 1;
      sub_10009FF88();
      sub_10009FFDC();
      v127 = sub_10001B448();
      sub_1000A02E4(v127, &type metadata for AirPodsStepIssueHardwareView, &type metadata for AirPodsStepIssueAudioView);
      sub_1000A0424();
      sub_1000A0498();
      goto LABEL_19;
    case 6:
      type metadata accessor for AirPodsFlowViewModel(0);
      v141 = sub_1000699F4();
      *v208 = sub_100005914(v141);
      *&v208[8] = v142 & 1;
      v208[10] = 0;
      sub_1000A00BC();
      sub_1000A0110();
      v143 = sub_10001B448();
      sub_1000A02E4(v143, &type metadata for AirPodsStepIssueCleaningView, &type metadata for AirPodsStepIssueANCView);
      sub_1000A043C();
      sub_1000A0484();
      goto LABEL_18;
    case 7:
      type metadata accessor for AirPodsFlowViewModel(0);
      v95 = sub_1000699F4();
      *v208 = sub_100005914(v95);
      *&v208[8] = v96 & 1 | 0x900;
      v208[10] = 1;
      sub_1000A00BC();
      sub_1000A0110();
      v97 = sub_10001B448();
      sub_1000A02E4(v97, &type metadata for AirPodsStepIssueCleaningView, &type metadata for AirPodsStepIssueANCView);
      sub_1000A043C();
      sub_1000A0484();
LABEL_18:
      v208[11] = 1;
LABEL_19:
      sub_100003768(&qword_10018EAD8, &qword_10012B590);
      sub_100003768(&qword_10018EAF8, &qword_10012B598);
      sub_10009FEFC();
      v144 = sub_1000A0030();
      v152 = sub_1000A02D4(v144, v145, v146, v147, v148, v149, v150, v151, v192, v200, v208[0]);
      sub_1000A03A8(v152);
      sub_1000A03C4();
      sub_1000A04CC();
      v208[34] = 1;
      goto LABEL_20;
    case 8:
      sub_1000A03E4();
      BYTE6(v200) = 0;
      *&__dst[0] = 0xD000000000000013;
      *(&__dst[0] + 1) = v171;
      WORD5(__dst[5]) = 0;
      sub_10009F888();
      sub_10009F8DC();
      _ConditionalContent<>.init(storage:)();
      v172 = sub_1000A04C0();
      memcpy(v172, v173, 0x5BuLL);
      v210 = 0;
      sub_100003768(&qword_10018EA18, &qword_10012B550);
      sub_100003768(&qword_10018EA38, &qword_10012B558);
      sub_10009F7FC();
      sub_10009F930();
      v174 = sub_1000A0304();
      sub_1000A03F0(v174, v175, v176, v177, v178, v179, v180, v181, v192, v200);
      v211 = 0;
      BYTE12(__dst[5]) = 0;
      sub_100003768(&qword_10018E9F8, &qword_10012B540);
      sub_100003768(&qword_10018EA00, &qword_10012B548);
      sub_10009F770();
      sub_10009FA64();
      sub_1000A032C();
      memcpy(v208, v209, 0x5DuLL);
      __src[0] = 1;
      v208[93] = 1;
      goto LABEL_27;
    case 9:
      sub_1000698C8(__src);
      memcpy(__dst, __src, 0x5AuLL);
      BYTE4(v200) = 1;
      BYTE10(__dst[5]) = 1;
      sub_100069D2C(__src, v208);
      sub_10009F888();
      sub_10009F8DC();
      _ConditionalContent<>.init(storage:)();
      v66 = sub_1000A04C0();
      memcpy(v66, v67, 0x5BuLL);
      BYTE6(v200) = 0;
      BYTE11(__dst[5]) = 0;
      sub_100003768(&qword_10018EA18, &qword_10012B550);
      sub_100003768(&qword_10018EA38, &qword_10012B558);
      sub_10009F7FC();
      sub_10009F930();
      v68 = sub_1000A0304();
      sub_1000A03F0(v68, v69, v70, v71, v72, v73, v74, v75, v192, v200);
      v210 = 0;
      BYTE12(__dst[5]) = 0;
      sub_100003768(&qword_10018E9F8, &qword_10012B540);
      sub_100003768(&qword_10018EA00, &qword_10012B548);
      sub_10009F770();
      sub_10009FA64();
      sub_1000A032C();
      v76 = sub_1000A04C0();
      memcpy(v76, v77, 0x5DuLL);
      v211 = 1;
      BYTE13(__dst[5]) = 1;
      sub_100003768(&qword_10018EA58, &qword_10012B560);
      sub_100003768(&qword_10018EA60, &qword_10012B568);
      sub_10009FAF0();
      sub_1000A0164();
      sub_1000A0304();
      sub_1000A01F0(__src);
      goto LABEL_22;
    case 10:
      *&v208[8] = 0;
      *&v208[16] = 256;
      sub_100003768(&qword_10018E9E0, &qword_10012B538);
      v165 = sub_10009F690();
      sub_1000A037C(v165, v166, &type metadata for EmptyView, v165, &protocol witness table for EmptyView, v167, v168, v169, v192, v200, 0);
      _ConditionalContent<>.init(storage:)();
      v19 = sub_1000A0388();
      v211 = v170;
      goto LABEL_24;
    case 11:
      sub_1000A03E4();
      *&v208[8] = v21;
      *&v208[16] = 12;
      sub_10009F9BC();
      v22 = sub_10009FA10();
      sub_1000A037C(v22, &type metadata for AirPodsStepFirmwareUpdatesView, &type metadata for AirPodsStepResetDeviceView, v23, v22, v24, v25, v26, v192, v200, 24);
      _ConditionalContent<>.init(storage:)();
      v27 = sub_1000A0388();
      v210 = v28;
      BYTE6(v203) = 1;
      sub_1000A0398(v29, v27);
      *(&__dst[5] + 11) = 1;
      sub_100003768(&qword_10018EA18, &qword_10012B550);
      sub_100003768(&qword_10018EA38, &qword_10012B558);
      sub_10009F7FC();
      sub_10009F930();
      v30 = sub_1000A0304();
      sub_1000A03F0(v30, v31, v32, v33, v34, v35, v36, v37, v195, v203);
      v211 = 0;
      goto LABEL_25;
    case 12:
      type metadata accessor for AirPodsFlowViewModel(0);
      v52 = sub_1000699F4();
      *v208 = sub_100005914(v52);
      *&v208[8] = v53 & 1 | 0xD00;
      *&v208[16] = 256;
      sub_10009F9BC();
      sub_10009FA10();
      v54 = sub_10001B448();
      sub_1000A02E4(v54, &type metadata for AirPodsStepFirmwareUpdatesView, &type metadata for AirPodsStepResetDeviceView);
      v55 = sub_1000A0388();
      v210 = v56;
      BYTE6(v200) = 1;
      sub_1000A0398(v57, v55);
      BYTE11(__dst[5]) = 1;
      sub_100003768(&qword_10018EA18, &qword_10012B550);
      sub_100003768(&qword_10018EA38, &qword_10012B558);
      sub_10009F7FC();
      sub_10009F930();
      v58 = sub_1000A03A8(__dst);
      sub_1000A03F0(v58, v59, v60, v61, v62, v63, v64, v65, v192, v200);
      v211 = 0;
      BYTE12(__dst[5]) = 0;
      goto LABEL_16;
    case 13:
      type metadata accessor for AirPodsFlowViewModel(0);
      v128 = sub_1000699F4();
      v208[0] = sub_100005914(v128);
      *&v208[8] = v129 & 1 | 0xE00;
      v208[16] = 0;
      sub_10009F71C();
      sub_10001B21C();
      v130 = sub_10001B448();
      sub_1000A02E4(v130, &type metadata for AirPodsStepReconnectDeviceView, &_s18ContactSupportViewVN);
      sub_1000A0454();
      sub_100003768(&qword_10018E9E0, &qword_10012B538);
      v131 = sub_10009F690();
      sub_1000A037C(v131, v132, &type metadata for EmptyView, v131, &protocol witness table for EmptyView, v133, v134, v135, v192, v200, v208[0]);
      _ConditionalContent<>.init(storage:)();
      v136 = sub_1000A0388();
      v211 = v137;
      v210 = 1;
      sub_1000A0398(v138, v136);
      BYTE12(__dst[5]) = 1;
LABEL_16:
      sub_100003768(&qword_10018E9F8, &qword_10012B540);
      sub_100003768(&qword_10018EA00, &qword_10012B548);
      sub_10009F770();
      sub_10009FA64();
      sub_1000A03A8(__dst);
      v139 = sub_1000A04C0();
      memcpy(v139, v140, 0x5DuLL);
      __src[0] = 1;
      BYTE13(__dst[5]) = 1;
      goto LABEL_21;
    case 14:
      sub_1000A03E4();
      *&v208[8] = v7;
      v208[16] = 1;
      sub_10009F71C();
      v8 = sub_10001B21C();
      sub_1000A037C(v8, &type metadata for AirPodsStepReconnectDeviceView, &_s18ContactSupportViewVN, v9, v8, v10, v11, v12, v192, v200, 23);
      _ConditionalContent<>.init(storage:)();
      sub_1000A0454();
      sub_100003768(&qword_10018E9E0, &qword_10012B538);
      v13 = sub_10009F690();
      sub_1000A037C(v13, v14, &type metadata for EmptyView, v13, &protocol witness table for EmptyView, v15, v16, v17, v193, v201, v208[0]);
      _ConditionalContent<>.init(storage:)();
      v19 = sub_1000A0388();
      v211 = v20;
LABEL_24:
      v210 = 1;
      sub_1000A0398(v18, v19);
      BYTE12(__dst[5]) = 1;
LABEL_25:
      sub_100003768(&qword_10018E9F8, &qword_10012B540);
      sub_100003768(&qword_10018EA00, &qword_10012B548);
      sub_10009F770();
      sub_10009FA64();
      sub_1000A032C();
      memcpy(v208, v209, 0x5DuLL);
      __src[0] = 1;
      v208[93] = 1;
LABEL_27:
      sub_100003768(&qword_10018EA58, &qword_10012B560);
      sub_100003768(&qword_10018EA60, &qword_10012B568);
      sub_10009FAF0();
      v182 = sub_1000A0164();
      v190 = sub_1000A02D4(v182, v183, v184, v185, v186, v187, v188, v189, v194, v202, v208[0]);
      sub_10001B42C(v190);
      return memcpy(a2, __dst, 0x5EuLL);
    default:
      type metadata accessor for AirPodsFlowViewModel(0);
      v3 = sub_1000699F4();
      sub_100005914(v3);
      sub_1000A034C();
      *&v208[16] = v5 | 8;
      *&v208[24] = v4;
      *&v208[32] = 0;
      sub_10009FC94();
      sub_10009FCE8();
      v6 = sub_10001B448();
      sub_1000A02E4(v6, &type metadata for AirPodsStepBluetoothDisabled, &type metadata for AirPodsStepNoDevicesFound);
      sub_1000A0368();
LABEL_10:
      sub_100003768(&qword_10018EA88, &qword_10012B578);
      sub_100003768(&qword_10018EAA8, &qword_10012B580);
      sub_10009FC08();
      v86 = sub_10009FD3C();
      v94 = sub_1000A02D4(v86, v87, v88, v89, v90, v91, v92, v93, v192, v200, v208[0]);
      sub_1000A03A8(v94);
      sub_1000A04AC();
      sub_1000A046C();
LABEL_20:
      sub_100003768(&qword_10018EA78, &qword_10012B570);
      sub_100003768(&qword_10018EAC8, &qword_10012B588);
      sub_10009FB7C();
      v153 = sub_10009FE70();
      v161 = sub_1000A02D4(v153, v154, v155, v156, v157, v158, v159, v160, v198, v206, v208[0]);
      sub_1000A03A8(v161);
      __dst[0] = sub_1000A040C();
      __dst[1] = v162;
      LOWORD(__dst[2]) = v163;
      BYTE2(__dst[2]) = v164;
      BYTE13(__dst[5]) = 0;
LABEL_21:
      sub_100003768(&qword_10018EA58, &qword_10012B560);
      sub_100003768(&qword_10018EA60, &qword_10012B568);
      sub_10009FAF0();
      sub_1000A0164();
      sub_1000A03A8(__dst);

LABEL_22:
      memcpy(__dst, v208, 0x5EuLL);
      return memcpy(a2, __dst, 0x5EuLL);
  }
}

unint64_t sub_10009F23C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176910, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10009F288(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000012;
      break;
    case 2:
    case 8:
      result = 0xD000000000000013;
      break;
    case 4:
    case 6:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 9:
    case 12:
      result = 0xD000000000000014;
      break;
    case 10:
    case 11:
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009F418@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009F23C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10009F448@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10009F288(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10009F474@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000E738C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10009F4D4()
{
  result = qword_10018E9C0;
  if (!qword_10018E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9C0);
  }

  return result;
}

uint64_t sub_10009F554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10009F590()
{
  result = qword_10018E9C8;
  if (!qword_10018E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9C8);
  }

  return result;
}

unint64_t sub_10009F5E4()
{
  result = qword_10018E9D0;
  if (!qword_10018E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9D0);
  }

  return result;
}

unint64_t sub_10009F63C()
{
  result = qword_10018E9D8;
  if (!qword_10018E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9D8);
  }

  return result;
}

unint64_t sub_10009F690()
{
  result = qword_10018E9E8;
  if (!qword_10018E9E8)
  {
    sub_100004D48(&qword_10018E9E0, &qword_10012B538);
    sub_10009F71C();
    sub_10001B21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9E8);
  }

  return result;
}

unint64_t sub_10009F71C()
{
  result = qword_10018E9F0;
  if (!qword_10018E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9F0);
  }

  return result;
}

unint64_t sub_10009F770()
{
  result = qword_10018EA08;
  if (!qword_10018EA08)
  {
    sub_100004D48(&qword_10018E9F8, &qword_10012B540);
    sub_10009F7FC();
    sub_10009F930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA08);
  }

  return result;
}

unint64_t sub_10009F7FC()
{
  result = qword_10018EA10;
  if (!qword_10018EA10)
  {
    sub_100004D48(&qword_10018EA18, &qword_10012B550);
    sub_10009F888();
    sub_10009F8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA10);
  }

  return result;
}

unint64_t sub_10009F888()
{
  result = qword_10018EA20;
  if (!qword_10018EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA20);
  }

  return result;
}

unint64_t sub_10009F8DC()
{
  result = qword_10018EA28;
  if (!qword_10018EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA28);
  }

  return result;
}

unint64_t sub_10009F930()
{
  result = qword_10018EA30;
  if (!qword_10018EA30)
  {
    sub_100004D48(&qword_10018EA38, &qword_10012B558);
    sub_10009F9BC();
    sub_10009FA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA30);
  }

  return result;
}

unint64_t sub_10009F9BC()
{
  result = qword_10018EA40;
  if (!qword_10018EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA40);
  }

  return result;
}

unint64_t sub_10009FA10()
{
  result = qword_10018EA48;
  if (!qword_10018EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA48);
  }

  return result;
}

unint64_t sub_10009FA64()
{
  result = qword_10018EA50;
  if (!qword_10018EA50)
  {
    sub_100004D48(&qword_10018EA00, &qword_10012B548);
    sub_10009F690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA50);
  }

  return result;
}

unint64_t sub_10009FAF0()
{
  result = qword_10018EA68;
  if (!qword_10018EA68)
  {
    sub_100004D48(&qword_10018EA58, &qword_10012B560);
    sub_10009FB7C();
    sub_10009FE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA68);
  }

  return result;
}

unint64_t sub_10009FB7C()
{
  result = qword_10018EA70;
  if (!qword_10018EA70)
  {
    sub_100004D48(&qword_10018EA78, &qword_10012B570);
    sub_10009FC08();
    sub_10009FD3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA70);
  }

  return result;
}

unint64_t sub_10009FC08()
{
  result = qword_10018EA80;
  if (!qword_10018EA80)
  {
    sub_100004D48(&qword_10018EA88, &qword_10012B578);
    sub_10009FC94();
    sub_10009FCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA80);
  }

  return result;
}

unint64_t sub_10009FC94()
{
  result = qword_10018EA90;
  if (!qword_10018EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA90);
  }

  return result;
}

unint64_t sub_10009FCE8()
{
  result = qword_10018EA98;
  if (!qword_10018EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA98);
  }

  return result;
}

unint64_t sub_10009FD3C()
{
  result = qword_10018EAA0;
  if (!qword_10018EAA0)
  {
    sub_100004D48(&qword_10018EAA8, &qword_10012B580);
    sub_10009FDC8();
    sub_10009FE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAA0);
  }

  return result;
}

unint64_t sub_10009FDC8()
{
  result = qword_10018EAB0;
  if (!qword_10018EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAB0);
  }

  return result;
}

unint64_t sub_10009FE1C()
{
  result = qword_10018EAB8;
  if (!qword_10018EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAB8);
  }

  return result;
}

unint64_t sub_10009FE70()
{
  result = qword_10018EAC0;
  if (!qword_10018EAC0)
  {
    sub_100004D48(&qword_10018EAC8, &qword_10012B588);
    sub_10009FEFC();
    sub_1000A0030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAC0);
  }

  return result;
}

unint64_t sub_10009FEFC()
{
  result = qword_10018EAD0;
  if (!qword_10018EAD0)
  {
    sub_100004D48(&qword_10018EAD8, &qword_10012B590);
    sub_10009FF88();
    sub_10009FFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAD0);
  }

  return result;
}

unint64_t sub_10009FF88()
{
  result = qword_10018EAE0;
  if (!qword_10018EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAE0);
  }

  return result;
}

unint64_t sub_10009FFDC()
{
  result = qword_10018EAE8;
  if (!qword_10018EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAE8);
  }

  return result;
}

unint64_t sub_1000A0030()
{
  result = qword_10018EAF0;
  if (!qword_10018EAF0)
  {
    sub_100004D48(&qword_10018EAF8, &qword_10012B598);
    sub_1000A00BC();
    sub_1000A0110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAF0);
  }

  return result;
}

unint64_t sub_1000A00BC()
{
  result = qword_10018EB00;
  if (!qword_10018EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EB00);
  }

  return result;
}

unint64_t sub_1000A0110()
{
  result = qword_10018EB08;
  if (!qword_10018EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EB08);
  }

  return result;
}

unint64_t sub_1000A0164()
{
  result = qword_10018EB10;
  if (!qword_10018EB10)
  {
    sub_100004D48(&qword_10018EA60, &qword_10012B568);
    sub_10009F770();
    sub_10009FA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EB10);
  }

  return result;
}

unint64_t sub_1000A0248()
{
  result = qword_10018EB18;
  if (!qword_10018EB18)
  {
    sub_100004D48(qword_10018EB20, &unk_10012B5A0);
    sub_10009FAF0();
    sub_1000A0164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EB18);
  }

  return result;
}

uint64_t sub_1000A02E4(uint64_t a1, uint64_t a2, ...)
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000A0304()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000A032C()
{

  return _ConditionalContent<>.init(storage:)();
}

void sub_1000A0398(char a1@<W8>, __n128 a2@<Q0>)
{
  *v3 = a2;
  *(v4 - 144) = a1;
  *(v4 - 143) = v2;
}

uint64_t sub_1000A03A8(uint64_t a1)
{

  return _ConditionalContent<>.init(storage:)();
}

void *sub_1000A03F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(__srca, a10);
  __src = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);

  return memcpy((v10 - 160), __srca, 0x5CuLL);
}

uint64_t sub_1000A050C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_100188370;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1001A5960;
  v7 = *algn_1001A5968;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 48) = 0;
  *(a3 + 56) = v8;
  *(a3 + 64) = v7;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
}

uint64_t sub_1000A05B4(uint64_t a1)
{
  result = type metadata accessor for SupportFlowIdentifier();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ObservationRegistrar();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

char *sub_1000A0738()
{
  v1 = *v0;
  v2 = qword_1001A57E0;
  type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C();
  (*(v3 + 8))(&v0[v2]);
  sub_1000A3190();
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(v4 + 128)]);
  sub_1000A3190();

  sub_1000A3190();

  sub_1000A3190();

  sub_1000A3190();

  sub_1000A3190();

  sub_1000A3190();
  v6 = *(v5 + 184);
  type metadata accessor for Optional();
  sub_10000AF7C();
  (*(v7 + 8))(&v0[v6]);
  sub_1000A3190();

  sub_1000A3190();
  v9 = *(v8 + 200);
  type metadata accessor for ObservationRegistrar();
  sub_10000AF7C();
  (*(v10 + 8))(&v0[v9]);
  return v0;
}

uint64_t sub_1000A091C()
{
  sub_1000A31DC();
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  sub_1000A3190();
  return *(v0 + *(v2 + 144));
}

uint64_t sub_1000A099C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v13 = *(v1 + v3);
  v4 = a1 & 1;
  v12 = a1;
  result = sub_1000A1F1C(&v13, &v12, &type metadata for Bool, &protocol witness table for Bool);
  if (result)
  {
    __chkstk_darwin(result);
    sub_1000A319C();
    v6 = *(v2 + 96);
    *(v7 - 32) = *(v2 + 80);
    *(v7 - 16) = v6;
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    v10[2] = v1;
    v11 = v4;
    sub_1000A31E8(v9, v10, type metadata for ());
  }

  else
  {
    *(v1 + v3) = v4;
  }

  return result;
}

uint64_t sub_1000A0ACC(uint64_t a1)
{
  sub_1000A3190();
  sub_1000A3204();
  return v1;
}

uint64_t sub_1000A0B04(uint64_t a1)
{
  sub_1000A3190();
  v3 = (v1 + *(v2 + 152));
  *v3 = v4;
  v3[1] = v5;

  return sub_1000A1F48();
}

uint64_t sub_1000A0B4C()
{
  sub_1000A31DC();
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  return sub_1000A0ACC(v1);
}

uint64_t sub_1000A0BBC(uint64_t a1, uint64_t a2)
{
  sub_1000A3190();
  v5 = v4;
  v18[0] = sub_1000A0ACC(v6);
  v18[1] = v7;
  v17[0] = a1;
  v17[1] = a2;
  v8 = sub_100003768(&qword_10018A518, &qword_100124920);
  v9 = sub_10003BF10();
  LOBYTE(v8) = sub_1000A1F1C(v18, v17, v8, v9);

  if ((v8 & 1) == 0)
  {
    return sub_1000A0B04(a1);
  }

  __chkstk_darwin(v10);
  sub_1000A319C();
  v11 = *(v5 + 96);
  *(v12 - 32) = *(v5 + 80);
  *(v12 - 16) = v11;
  swift_getKeyPath();
  sub_1000A31C8();
  __chkstk_darwin(v13);
  sub_100025A0C();
  sub_1000A31E8(v14, v15, type metadata for ());
}

uint64_t sub_1000A0CF4()
{
  sub_1000A31DC();
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  sub_1000A3190();
  sub_1000A3204();
  return KeyPath;
}

uint64_t sub_1000A0D7C()
{
  sub_1000A3268();
  v4 = v3;
  sub_1000A3220(v5, v6, *(v3 + 160));
  sub_100003768(&qword_10018A518, &qword_100124920);
  v7 = sub_10003BF10();
  v8 = sub_1000A327C(v7);

  if (v8)
  {
    __chkstk_darwin(v9);
    sub_1000A319C();
    v10 = *(v4 + 96);
    *(v11 - 32) = *(v4 + 80);
    *(v11 - 16) = v10;
    swift_getKeyPath();
    sub_1000A31C8();
    __chkstk_darwin(v12);
    sub_100025A0C();
    sub_1000A31E8(v13, v14, type metadata for ());
  }

  else
  {
    *v2 = v1;
    v2[1] = v0;
  }
}

uint64_t sub_1000A0EB0()
{
  sub_1000A31DC();
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  sub_1000A3190();
  sub_1000A3204();
  return KeyPath;
}

uint64_t sub_1000A0F38()
{
  sub_1000A3268();
  v4 = v3;
  sub_1000A3220(v5, v6, *(v3 + 168));
  sub_100003768(&qword_10018A518, &qword_100124920);
  v7 = sub_10003BF10();
  v8 = sub_1000A327C(v7);

  if (v8)
  {
    __chkstk_darwin(v9);
    sub_1000A319C();
    v10 = *(v4 + 96);
    *(v11 - 32) = *(v4 + 80);
    *(v11 - 16) = v10;
    swift_getKeyPath();
    sub_1000A31C8();
    __chkstk_darwin(v12);
    sub_100025A0C();
    sub_1000A31E8(v13, v14, type metadata for ());
  }

  else
  {
    *v2 = v1;
    v2[1] = v0;
  }
}

uint64_t sub_1000A106C()
{
  sub_1000A31DC();
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  sub_1000A3190();
}

uint64_t sub_1000A1158@<X0>(uint64_t a1@<X8>)
{
  sub_1000A325C();
  v4 = *(v3 + 184);
  swift_beginAccess();
  sub_1000A325C();
  type metadata accessor for Optional();
  sub_10000AF7C();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1000A11F4(uint64_t a1)
{
  sub_1000A325C();
  v4 = *(v3 + 184);
  swift_beginAccess();
  sub_1000A325C();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  v7 = swift_endAccess();
  sub_1000A23BC(v7);
  return (*(v6 + 8))(a1, v5);
}

uint64_t sub_1000A12DC@<X0>(uint64_t a1@<X8>)
{
  sub_1000A31DC();
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  return sub_1000A1158(a1);
}

uint64_t sub_1000A135C(char *a1)
{
  v21 = *v1;
  v3 = v21;
  v4 = *(v21 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_1000A1158(&v20 - v7);
  v9 = *(v3 + 96);
  v22 = *(*(*(v9 + 8) + 8) + 8);
  WitnessTable = swift_getWitnessTable();
  LOBYTE(v3) = sub_1000A1F1C(v8, a1, v5, WitnessTable);
  v11 = *(v6 + 8);
  v12 = v11(v8, v5);
  if (v3)
  {
    __chkstk_darwin(v12);
    sub_1000A319C();
    v13 = v21;
    v14 = *(v21 + 88);
    *(v15 - 32) = v4;
    *(v15 - 24) = v14;
    v16 = *(v13 + 104);
    *(v15 - 16) = v9;
    *(v15 - 8) = v16;
    KeyPath = swift_getKeyPath();
    v18 = __chkstk_darwin(KeyPath);
    *(&v20 - 2) = v1;
    *(&v20 - 1) = a1;
    sub_1000A31E8(v18, (&v20 - 4), type metadata for ());
  }

  else
  {
    (*(v6 + 16))(v8, a1, v5);
    sub_1000A11F4(v8);
  }

  return v11(a1, v5);
}

uint64_t sub_1000A15B0()
{
  sub_1000A31DC();
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  sub_1000A3190();
}

uint64_t sub_1000A1654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*v3 + 96);
  v12 = *(*v3 + 80);
  v13 = v6;
  KeyPath = swift_getKeyPath();
  v10 = v3;
  v11 = a1;
  sub_1000A1E4C(KeyPath, a3, &v9, &type metadata for ()[1]);
}

uint64_t sub_1000A1708()
{
  sub_100025A94();
  v1[167] = v0;
  v2 = type metadata accessor for MainActor();
  v3 = sub_10006F3C8(v2);
  v1[173] = v3;
  v5 = sub_1000A3244(v3, &protocol witness table for MainActor);
  v1[179] = v5;
  v1[185] = v4;

  return _swift_task_switch(sub_1000A1790, v5, v4);
}

uint64_t sub_1000A1790()
{
  sub_10003DCD8();
  v1 = *(v0 + 1336);
  v2 = *(v1 + *(*v1 + 136));
  sub_1000925F0(v1 + qword_1001A57E0);
  *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_delegate + 8) = &off_10017D108;
  swift_unknownObjectWeakAssign();
  swift_asyncLet_begin();
  v3 = swift_task_alloc();
  *(v0 + 1488) = v3;
  *(v3 + 16) = &unk_10012B738;
  *(v3 + 24) = v1;

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16);
}

uint64_t sub_1000A18C8()
{
  sub_100025A94();
  if (v0)
  {

    v3 = *(v1 + 1480);
    v4 = *(v1 + 1432);

    return _swift_task_switch(sub_1000A1B8C, v4, v3);
  }

  else
  {

    return _swift_asyncLet_get(v1 + 656, v2, sub_1000A1968, v1 + 1440);
  }
}

uint64_t sub_1000A1984()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *v0;
  sub_10000870C();
  *v3 = v2;

  v4 = *(v1 + 1480);
  v5 = *(v1 + 1432);

  return _swift_task_switch(sub_1000A1A98, v5, v4);
}

uint64_t sub_1000A1A98()
{
  sub_100025A94();
  sub_1000A099C(1);

  return _swift_asyncLet_finish(v0 + 656, v1, sub_1000A1B00, v0 + 1344);
}

uint64_t sub_1000A1B1C()
{
  sub_100025A94();

  return _swift_asyncLet_finish(v0 + 16, v1, sub_10005F0B0, v0 + 1392);
}

uint64_t sub_1000A1B8C()
{
  sub_10003DCD8();
  sub_1000A3190();
  (*(v1 + 600))();
  sub_1000A3190();
  v5 = (*(v2 + 608) + **(v2 + 608));
  v3 = swift_task_alloc();
  *(v0 + 1496) = v3;
  *v3 = v0;
  v3[1] = sub_1000A1984;

  return v5();
}

uint64_t sub_1000A1CCC()
{
  sub_100025A94();
  v1 = type metadata accessor for MainActor();
  v2 = sub_10006F3C8(v1);
  *(v0 + 16) = v2;
  sub_1000A3244(v2, &protocol witness table for MainActor);
  sub_100062F98();
  v3 = sub_100062F00();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000A1D40()
{
  sub_100025A94();
  v1 = type metadata accessor for MainActor();
  v2 = sub_10006F3C8(v1);
  *(v0 + 16) = v2;
  sub_1000A3244(v2, &protocol witness table for MainActor);
  sub_100062F98();
  v3 = sub_100062F00();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000A1DB4(uint64_t a1)
{
  sub_1000A31AC();
  swift_getWitnessTable();
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000A1E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000A31AC();
  swift_getWitnessTable();
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000A1F48()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v3 = sub_1000A0B4C();
  if (v2)
  {
    v4 = v2;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_100003768(&qword_100188810, &unk_100121780);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100121620;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100017A18();
    *(v5 + 32) = v3;
    *(v5 + 40) = v4;
    String.init(format:_:)();

    sub_1000A0D7C();
    if (qword_100188238 != -1)
    {
      swift_once();
    }

    return sub_1000A0F38();
  }

  else
  {
    sub_1000A0D7C();

    return sub_1000A0F38();
  }
}

uint64_t sub_1000A2168()
{
  sub_10006F388();
  result = sub_1000A0B4C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1000A21F8()
{
  sub_10006F388();
  result = sub_1000A0CF4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1000A2238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + *(*a1 + 160));
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1000A228C()
{
  sub_10006F388();
  result = sub_1000A0EB0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1000A22CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1000A2314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + *(*a1 + 168));
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1000A2368()
{
  sub_10006F388();
  result = sub_1000A106C();
  *v0 = result;
  return result;
}

uint64_t sub_1000A23BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  sub_1000A12DC(&v31 - v14);
  v16 = sub_10000E5F0(v15, 1, v3);
  v31 = v10;
  if (v16)
  {
    v17 = v2;
    v18 = v4;
    v19 = *(v10 + 8);
    v19(v15, v9);
    v20 = 0;
    v21 = v17;
  }

  else
  {
    (*(v4 + 16))(v8, v15, v3);
    v19 = *(v10 + 8);
    v19(v15, v9);
    v20 = sub_1000C2D64(v3, *(*(*(v2 + 96) + 8) + 16));
    v22 = v2;
    v18 = v4;
    (*(v4 + 8))(v8, v3);
    v21 = v22;
  }

  sub_1000A1634(v20);
  sub_1000A12DC(v13);
  if (sub_10000E5F0(v13, 1, v3) == 1)
  {
    return (v19)(v13, v9);
  }

  v24 = v18;
  v25 = *(v18 + 32);
  v26 = v32;
  v25(v32, v13, v3);
  v27 = sub_10008A620(v33);
  v29 = v28;
  v30 = type metadata accessor for SupportFlowSession();
  if (!sub_10000E5F0(v29, 1, v30))
  {
    (*(*(v21 + 96) + 24))(v3);
    SupportFlowSession.currentStepId.setter();
  }

  (v27)(v33, 0);
  return (*(v24 + 8))(v26, v3);
}

uint64_t sub_1000A274C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Optional();
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a2);
  return sub_1000A11F4(v5);
}

uint64_t sub_1000A2830(uint64_t a1, uint64_t a2)
{
  *(a1 + *(*a1 + 192)) = a2;
}

uint64_t sub_1000A2880()
{
  sub_100025A94();
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000A2938, 0, 0);
}

uint64_t sub_1000A2938()
{
  sub_10003DCD8();
  static Bool.disableMinimumLoadTime.getter();
  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000A2A20;

  return sub_100111FB4();
}

uint64_t sub_1000A2A20()
{
  sub_10004622C();
  v3 = v2;
  v4 = v2[4];
  v5 = v2[3];
  v6 = v2[2];
  v7 = *v1;
  sub_10000870C();
  *v8 = v7;
  v3[6] = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1000A2BB8, 0, 0);
  }

  else
  {

    sub_10000875C();

    return v9();
  }
}

uint64_t sub_1000A2BB8()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_1000A2C14(uint64_t a1)
{
  v4 = (*(*a1 + 592) + **(*a1 + 592));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100045AB0;

  return v4();
}

uint64_t sub_1000A2D30()
{
  sub_1000A0738();
  sub_1000A31DC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t sub_1000A2D9C()
{
  v4 = (*(*v0 + 608) + **(*v0 + 608));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100046160;

  return v4();
}

uint64_t sub_1000A2EB4()
{
  sub_100025A94();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100045AB0;

  return sub_1000A2C14(v0);
}

__n128 sub_1000A2F4C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1000A2F9C()
{
  sub_10006F388();
  result = sub_1000A106C();
  *v0 = result;
  return result;
}

uint64_t sub_1000A2FCC()
{
  sub_10006F388();
  result = sub_1000A0EB0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1000A3044()
{
  sub_10006F388();
  result = sub_1000A0CF4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1000A30BC()
{
  sub_10006F388();
  result = sub_1000A0B4C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1000A31E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  return sub_1000A1E4C(a1, v3, a2, a3 + 8);
}

uint64_t sub_1000A3204()
{
}

uint64_t sub_1000A3220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + a3 + 8);
  *(v4 - 80) = *(v3 + a3);
  *(v4 - 72) = v6;
  *(v4 - 96) = a1;
  *(v4 - 88) = a2;
}

uint64_t sub_1000A3244(uint64_t a1, uint64_t a2)
{

  return dispatch thunk of Actor.unownedExecutor.getter();
}

BOOL sub_1000A327C(uint64_t a1)
{

  return sub_1000A1F1C(v2 - 80, v2 - 96, v1, a1);
}

uint64_t getEnumTagSinglePayload for FlowListOverrideProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FlowListOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000A33F0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000A3444(char a1)
{
  result = 0x2065636976726553;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x65745320776F6853;
      break;
    case 3:
      result = 45;
      break;
    case 4:
      result = 0x20746C7561666544;
      break;
    case 5:
      result = 0x73646F50726941;
      break;
    case 6:
      result = 0x79726574746142;
      break;
    case 7:
      result = 0x736567617373654DLL;
      break;
    case 8:
      result = 0x6573616863727550;
      break;
    case 9:
      result = 0x6572617774666F53;
      break;
    default:
      result = 0xD000000000000022;
      break;
  }

  return result;
}

uint64_t (*sub_1000A35A4(uint64_t a1))@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003768(&qword_10018EC20, &qword_10012BA20);
  __chkstk_darwin(v2 - 8);
  v4 = &v57 - v3;
  v5 = sub_100003768(&qword_10018EC28, &qword_10012BA28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v57 - v7;
  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (!qword_1001A5950)
  {
    return 0;
  }

  v9 = type metadata accessor for FlowDebugCoordinator(0);
  sub_1000AA668(&qword_10018EC30, type metadata accessor for FlowDebugCoordinator, &unk_100131208);
  swift_retain_n();
  Bindable<A>.init(_:)();
  switch(a1)
  {
    case 1:
      KeyPath = swift_getKeyPath();
      sub_1000AACA8(KeyPath);

      sub_1000AAD0C();
      v38 = sub_1000AAD00();
      v58 = sub_100003768(v38, v39);
      v40 = sub_1000AAC40(&qword_10018ED18);
      v41 = sub_1000AACC4(v40);
      __chkstk_darwin(v41);
      sub_1000AAC6C();
      *(v42 - 16) = 1;
      goto LABEL_13;
    case 2:
      v25 = swift_getKeyPath();
      sub_1000AACA8(v25);

      sub_1000AAD0C();
      v26 = sub_1000AAD00();
      v58 = sub_100003768(v26, v27);
      v28 = sub_1000AAC40(&qword_10018ED18);
      v29 = sub_1000AACC4(v28);
      __chkstk_darwin(v29);
      sub_1000AAC6C();
      *(v30 - 16) = 2;
      goto LABEL_13;
    case 3:
      v58 = type metadata accessor for Divider();
      v31 = sub_1000AA668(&qword_10018ED08, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
      sub_1000AACC4(v31);
      Divider.init()();
      goto LABEL_17;
    case 4:
      swift_getKeyPath();
      Bindable<A>.subscript.getter();

      v17 = sub_100003768(&qword_10018ECE0, &qword_10012BBC8);
      sub_100003CE8(v4, 0, 1, v17);
      v58 = sub_100003768(&qword_10018ECE8, &qword_10012BBD0);
      v18 = sub_1000AA2F8();
      sub_1000AACC4(v18);
      sub_1000A3DA8(0, v4, 4);

      sub_1000AA8C8(v4, &qword_10018EC20);
      break;
    case 5:
      sub_100003768(&qword_10018EC38, &qword_10012BA30);
      sub_1000AAC80();
      *(swift_allocObject() + 16) = xmmword_100121620;
      v43 = swift_getKeyPath();
      sub_1000AAC8C(v43);

      swift_getKeyPath();
      Bindable<A>.subscript.getter();

      v44 = *(&v59 + 1);
      v45 = v60;
      v58 = sub_100003768(&qword_10018ECC0, &qword_10012BB90);
      v46 = sub_1000AA208();
      sub_1000AACC4(v46);
      v47 = sub_1000AACDC();
      sub_1000A3F9C(v47, v48, v44, v45, 5);
      goto LABEL_15;
    case 6:
      v49 = swift_getKeyPath();
      sub_1000AACA8(v49);

      sub_1000AAD0C();
      v58 = sub_100003768(&qword_10018ECA0, &qword_10012BB30);
      v50 = sub_1000AA110();
      sub_1000AACC4(v50);
      sub_1000A41A4(0, v4, a1, v9, 6);

      goto LABEL_17;
    case 7:
      sub_100003768(&qword_10018EC38, &qword_10012BA30);
      sub_1000AAC80();
      *(swift_allocObject() + 16) = xmmword_100121620;
      v32 = swift_getKeyPath();
      sub_1000AAC8C(v32);

      v58 = sub_100003768(&qword_10018EC80, &qword_10012BAF8);
      v33 = sub_1000AA020();
      sub_1000AACC4(v33);
      v34 = sub_1000AACEC();
      sub_1000A43AC(v34, v35, v36, 7);
      goto LABEL_19;
    case 8:
      sub_100003768(&qword_10018EC38, &qword_10012BA30);
      sub_1000AAC80();
      *(swift_allocObject() + 16) = xmmword_100121620;
      v51 = swift_getKeyPath();
      sub_1000AAC8C(v51);

      v58 = sub_100003768(&qword_10018EC60, &qword_10012BAC0);
      v52 = sub_1000A9F30();
      sub_1000AACC4(v52);
      v53 = sub_1000AACEC();
      sub_1000A45AC(v53, v54, v55, 8);
LABEL_19:

      break;
    case 9:
      sub_100003768(&qword_10018EC38, &qword_10012BA30);
      sub_1000AAC80();
      *(swift_allocObject() + 16) = xmmword_100121620;
      v19 = swift_getKeyPath();
      sub_1000AAC8C(v19);

      swift_getKeyPath();
      Bindable<A>.subscript.getter();

      v20 = *(&v59 + 1);
      v21 = v60;
      v58 = sub_100003768(&qword_10018EC40, &qword_10012BA88);
      v22 = sub_1000A9E00();
      sub_1000AACC4(v22);
      v23 = sub_1000AACDC();
      sub_1000A47AC(v23, v24, v20, v21, 9);
LABEL_15:

LABEL_17:

      break;
    default:
      v10 = swift_getKeyPath();
      sub_1000AACA8(v10);

      sub_1000AAD0C();
      v11 = sub_1000AAD00();
      v58 = sub_100003768(v11, v12);
      v13 = sub_1000AAC40(&qword_10018ED18);
      v14 = sub_1000AACC4(v13);
      __chkstk_darwin(v14);
      sub_1000AAC6C();
      *(v15 - 16) = 0;
LABEL_13:
      sub_1000AACDC();
      Toggle.init(isOn:label:)();

      break;
  }

  (*(v6 + 8))(v8, v5);
  sub_10003C91C(&v57, &v59);
  sub_10003C91C(&v59, &v57);
  sub_1000AAC80();
  v56 = swift_allocObject();
  sub_10003C91C(&v57, v56 + 16);
  return sub_1000A9F1C;
}

uint64_t sub_1000A3DA8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_100003768(&qword_10018ED00, &qword_10012BBD8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  v12 = a1;
  v13 = a3;
  v14 = a2;
  v11[16] = a3;
  sub_100003768(&qword_10018ED20, &qword_10012BC60);
  sub_1000AABC8(&qword_10018ED28, &qword_10018ED20, &qword_10012BC60, &protocol conformance descriptor for TupleView<A>);
  Menu.init(content:label:)();
  static String.overrideMenuSubContentMenu.getter();
  sub_1000AABC8(&qword_10018ECF8, &qword_10018ED00, &qword_10012BBD8, &protocol conformance descriptor for Menu<A, B>);
  View.accessibilityIdentifier(_:)();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000A3F9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v10 = sub_100003768(&qword_10018ECD8, &qword_10012BB98);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15[-v12];
  v19[0] = a2;
  v19[1] = a3;
  v20 = a4;
  v16 = a1;
  v17 = a5;
  v18 = v19;
  v15[16] = a5;
  sub_100003768(&qword_10018ED98, &qword_10012BCD0);
  sub_1000AABC8(&qword_10018EDA0, &qword_10018ED98, &qword_10012BCD0, &protocol conformance descriptor for TupleView<A>);
  Menu.init(content:label:)();
  static String.overrideMenuSubContentMenu.getter();
  sub_1000AABC8(&qword_10018ECD0, &qword_10018ECD8, &qword_10012BB98, &protocol conformance descriptor for Menu<A, B>);
  View.accessibilityIdentifier(_:)();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1000A41A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v10 = sub_100003768(&qword_10018ECB8, &qword_10012BB38);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15[-v12];
  v19[0] = a2;
  v19[1] = a3;
  v20 = a4;
  v16 = a1;
  v17 = a5;
  v18 = v19;
  v15[16] = a5;
  sub_100003768(&qword_10018EE38, &qword_10012BD40);
  sub_1000AABC8(&qword_10018EE40, &qword_10018EE38, &qword_10012BD40, &protocol conformance descriptor for TupleView<A>);
  Menu.init(content:label:)();
  static String.overrideMenuSubContentMenu.getter();
  sub_1000AABC8(&qword_10018ECB0, &qword_10018ECB8, &qword_10012BB38, &protocol conformance descriptor for Menu<A, B>);
  View.accessibilityIdentifier(_:)();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1000A43AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_100003768(&qword_10018EC98, &qword_10012BB00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13[-v10];
  v17[0] = a2;
  v17[1] = a3;
  v14 = a1;
  v15 = a4;
  v16 = v17;
  v13[16] = a4;
  sub_100003768(&qword_10018EEA8, &qword_10012BD88);
  sub_1000AABC8(&qword_10018EEB0, &qword_10018EEA8, &qword_10012BD88, &protocol conformance descriptor for TupleView<A>);
  Menu.init(content:label:)();
  static String.overrideMenuSubContentMenu.getter();
  sub_1000AABC8(&qword_10018EC90, &qword_10018EC98, &qword_10012BB00, &protocol conformance descriptor for Menu<A, B>);
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000A45AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_100003768(&qword_10018EC78, &qword_10012BAC8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13[-v10];
  v17[0] = a2;
  v17[1] = a3;
  v14 = a1;
  v15 = a4;
  v16 = v17;
  v13[16] = a4;
  sub_100003768(&qword_10018EF28, &qword_10012BDE0);
  sub_1000AABC8(&qword_10018EF30, &qword_10018EF28, &qword_10012BDE0, &protocol conformance descriptor for TupleView<A>);
  Menu.init(content:label:)();
  static String.overrideMenuSubContentMenu.getter();
  sub_1000AABC8(&qword_10018EC70, &qword_10018EC78, &qword_10012BAC8, &protocol conformance descriptor for Menu<A, B>);
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000A47AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v10 = sub_100003768(&qword_10018EC58, &qword_10012BA90);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15[-v12];
  v19[0] = a2;
  v19[1] = a3;
  v20 = a4;
  v16 = a1;
  v17 = a5;
  v18 = v19;
  v15[16] = a5;
  sub_100003768(&qword_10018EFA8, &qword_10012BE38);
  sub_1000AABC8(&qword_10018EFB0, &qword_10018EFA8, &qword_10012BE38, &protocol conformance descriptor for TupleView<A>);
  Menu.init(content:label:)();
  static String.overrideMenuSubContentMenu.getter();
  sub_1000AABC8(&qword_10018EC50, &qword_10018EC58, &qword_10012BA90, &protocol conformance descriptor for Menu<A, B>);
  View.accessibilityIdentifier(_:)();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1000A49B4@<X0>(uint64_t a4@<X8>)
{
  sub_10000AC24();

  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_1000A4B84@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v67 = a5;
  v11 = type metadata accessor for InlinePickerStyle();
  v72 = *(v11 - 8);
  v73 = v11;
  __chkstk_darwin(v11);
  v71 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003768(&qword_10018EFB8, &qword_10012BE40);
  v69 = *(v13 - 8);
  v70 = v13;
  __chkstk_darwin(v13);
  v68 = v61 - v14;
  v15 = sub_100003768(&qword_10018EFC0, &qword_10012BE48);
  v16 = __chkstk_darwin(v15 - 8);
  v76 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v75 = v61 - v18;
  v19 = sub_100003768(&qword_10018EDB8, &qword_10012BCE8);
  v20 = __chkstk_darwin(v19 - 8);
  v66 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v61 - v22;
  v24 = sub_100003768(&qword_10018EFC8, &qword_10012BE50);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v65 = v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v61 - v28;
  v30 = sub_100003768(&qword_10018EFD0, &qword_10012BE58);
  v31 = __chkstk_darwin(v30 - 8);
  v74 = v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = v61 - v33;
  if (a1 && *(a1 + 16) == 1)
  {

    sub_10002C334(&off_100176A98);
    v62 = a3;
    v77 = v35;
    __chkstk_darwin(v35);
    v63 = a4;
    v64 = a6;
    sub_1000AAB24();
    v61[1] = swift_getKeyPath();
    v36 = swift_allocObject();
    *(v36 + 16) = a2;
    *(v36 + 24) = a1;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1000AAB78;
    *(v37 + 24) = v36;
    sub_100003768(&qword_10018F010, &qword_10012BE80);
    sub_100003768(&qword_10018EE10, &qword_10012BD28);
    sub_1000AABC8(&qword_10018F018, &qword_10018F010, &qword_10012BE80, &protocol conformance descriptor for [A]);
    sub_10009DCCC();
    sub_1000AA79C();
    ForEach<>.init(_:id:content:)();
    Divider.init()();
    v38 = type metadata accessor for Divider();
    sub_100003CE8(v23, 0, 1, v38);
    v39 = *(v25 + 16);
    v40 = v65;
    v39(v65, v29, v24);
    v41 = v66;
    sub_10002BE60(v23, v66, &qword_10018EDB8, &qword_10012BCE8);
    v39(v34, v40, v24);
    a6 = v64;
    v42 = sub_100003768(&qword_10018F020, &qword_10012BE88);
    sub_10002BE60(v41, &v34[*(v42 + 48)], &qword_10018EDB8, &qword_10012BCE8);
    sub_1000AA8C8(v23, &qword_10018EDB8);
    v43 = *(v25 + 8);
    v43(v29, v24);
    v44 = v41;
    a3 = v62;
    a4 = v63;
    sub_1000AA8C8(v44, &qword_10018EDB8);
    v43(v40, v24);
    v45 = sub_100003768(&qword_10018EFD8, &qword_10012BE60);
    v46 = v34;
    v47 = 0;
  }

  else
  {
    v45 = sub_100003768(&qword_10018EFD8, &qword_10012BE60);
    v46 = v34;
    v47 = 1;
  }

  v48 = sub_100003CE8(v46, v47, 1, v45);
  if (a4)
  {
    v80 = 0;
    v81 = 0xE000000000000000;
    v82 = &off_1001768C0;
    v77 = a3;
    v78 = a4;
    v79 = v67;
    __chkstk_darwin(v48);

    sub_100003768(&qword_10018EFF0, &qword_10012BE78);
    sub_10009DCCC();
    sub_1000AAABC(&qword_10018EFF8, &qword_10018EFF0);
    sub_10000AC24();
    v49 = v68;
    Picker<>.init<A>(_:selection:content:)();
    v50 = v71;
    InlinePickerStyle.init()();
    sub_1000AABC8(&qword_10018F000, &qword_10018EFB8, &qword_10012BE40, &protocol conformance descriptor for Picker<A, B, C>);
    v51 = v75;
    v52 = v70;
    v53 = v73;
    View.pickerStyle<A>(_:)();
    (*(v72 + 8))(v50, v53);
    (*(v69 + 8))(v49, v52);
    v54 = sub_100003768(&qword_10018EFE0, &qword_10012BE68);
    v55 = v51;
    v56 = 0;
  }

  else
  {
    v54 = sub_100003768(&qword_10018EFE0, &qword_10012BE68);
    v51 = v75;
    v55 = v75;
    v56 = 1;
  }

  sub_100003CE8(v55, v56, 1, v54);
  v57 = v74;
  sub_10002BE60(v34, v74, &qword_10018EFD0, &qword_10012BE58);
  v58 = v76;
  sub_10002BE60(v51, v76, &qword_10018EFC0, &qword_10012BE48);
  sub_10002BE60(v57, a6, &qword_10018EFD0, &qword_10012BE58);
  v59 = sub_100003768(&qword_10018EFE8, &qword_10012BE70);
  sub_10002BE60(v58, a6 + *(v59 + 48), &qword_10018EFC0, &qword_10012BE48);
  sub_1000AA8C8(v51, &qword_10018EFC0);
  sub_1000AA8C8(v34, &qword_10018EFD0);
  sub_1000AA8C8(v58, &qword_10018EFC0);
  return sub_1000AA8C8(v57, &qword_10018EFD0);
}

uint64_t sub_1000A5478@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a5;
  v9 = type metadata accessor for InlinePickerStyle();
  v68 = *(v9 - 8);
  v69 = v9;
  __chkstk_darwin(v9);
  v67 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003768(&qword_10018EF38, &qword_10012BDE8);
  v65 = *(v11 - 8);
  v66 = v11;
  __chkstk_darwin(v11);
  v64 = v59 - v12;
  v13 = sub_100003768(&qword_10018EF40, &qword_10012BDF0);
  v14 = __chkstk_darwin(v13 - 8);
  v72 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = v59 - v16;
  v17 = sub_100003768(&qword_10018EDB8, &qword_10012BCE8);
  v18 = __chkstk_darwin(v17 - 8);
  v63 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v59 - v20;
  v22 = sub_100003768(&qword_10018EF48, &qword_10012BDF8);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v62 = v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = v59 - v26;
  v28 = sub_100003768(&qword_10018EF50, &qword_10012BE00);
  v29 = __chkstk_darwin(v28 - 8);
  v71 = v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = v59 - v31;
  if (a1 && *(a1 + 16) == 1)
  {

    sub_10002C348(&off_100176AC0);
    v60 = a3;
    v76 = v33;
    __chkstk_darwin(v33);
    v61 = a4;
    sub_1000AAA44();
    v59[1] = swift_getKeyPath();
    v34 = swift_allocObject();
    *(v34 + 16) = a2;
    *(v34 + 24) = a1;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1000AAA98;
    *(v35 + 24) = v34;
    sub_100003768(&qword_10018EF90, &qword_10012BE28);
    sub_100003768(&qword_10018EE10, &qword_10012BD28);
    sub_1000AABC8(&qword_10018EF98, &qword_10018EF90, &qword_10012BE28, &protocol conformance descriptor for [A]);
    sub_10009B770();
    sub_1000AA79C();
    ForEach<>.init(_:id:content:)();
    Divider.init()();
    v36 = type metadata accessor for Divider();
    sub_100003CE8(v21, 0, 1, v36);
    v37 = *(v23 + 16);
    v38 = v62;
    v37(v62, v27, v22);
    v39 = v63;
    sub_10002BE60(v21, v63, &qword_10018EDB8, &qword_10012BCE8);
    v37(v32, v38, v22);
    v40 = sub_100003768(&qword_10018EFA0, &qword_10012BE30);
    sub_10002BE60(v39, &v32[*(v40 + 48)], &qword_10018EDB8, &qword_10012BCE8);
    sub_1000AA8C8(v21, &qword_10018EDB8);
    v41 = *(v23 + 8);
    v41(v27, v22);
    a3 = v60;
    a4 = v61;
    sub_1000AA8C8(v39, &qword_10018EDB8);
    v41(v38, v22);
    v42 = sub_100003768(&qword_10018EF58, &qword_10012BE08);
    v43 = v32;
    v44 = 0;
  }

  else
  {
    v42 = sub_100003768(&qword_10018EF58, &qword_10012BE08);
    v43 = v32;
    v44 = 1;
  }

  v45 = sub_100003CE8(v43, v44, 1, v42);
  v46 = v70;
  if (a4)
  {
    v75 = a4;
    v76 = 0;
    v77 = 0xE000000000000000;
    v78 = &off_100176AE8;
    v74 = a3;
    __chkstk_darwin(v45);

    sub_100003768(&qword_10018EF70, &qword_10012BE20);
    sub_10009B770();
    sub_1000AAABC(&qword_10018EF78, &qword_10018EF70);
    sub_10000AC24();
    v47 = v64;
    Picker<>.init<A>(_:selection:content:)();
    v48 = v67;
    InlinePickerStyle.init()();
    sub_1000AABC8(&qword_10018EF80, &qword_10018EF38, &qword_10012BDE8, &protocol conformance descriptor for Picker<A, B, C>);
    v49 = v66;
    v50 = v69;
    View.pickerStyle<A>(_:)();
    (*(v68 + 8))(v48, v50);
    (*(v65 + 8))(v47, v49);
    v51 = sub_100003768(&qword_10018EF60, &qword_10012BE10);
    v52 = v46;
    v53 = 0;
  }

  else
  {
    v51 = sub_100003768(&qword_10018EF60, &qword_10012BE10);
    v52 = v46;
    v53 = 1;
  }

  sub_100003CE8(v52, v53, 1, v51);
  v54 = v71;
  sub_10002BE60(v32, v71, &qword_10018EF50, &qword_10012BE00);
  v55 = v72;
  sub_10002BE60(v46, v72, &qword_10018EF40, &qword_10012BDF0);
  v56 = v73;
  sub_10002BE60(v54, v73, &qword_10018EF50, &qword_10012BE00);
  v57 = sub_100003768(&qword_10018EF68, &qword_10012BE18);
  sub_10002BE60(v55, v56 + *(v57 + 48), &qword_10018EF40, &qword_10012BDF0);
  sub_1000AA8C8(v46, &qword_10018EF40);
  sub_1000AA8C8(v32, &qword_10018EF50);
  sub_1000AA8C8(v55, &qword_10018EF40);
  return sub_1000AA8C8(v54, &qword_10018EF50);
}

uint64_t sub_1000A5D50@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a5;
  v9 = type metadata accessor for InlinePickerStyle();
  v68 = *(v9 - 8);
  v69 = v9;
  __chkstk_darwin(v9);
  v67 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003768(&qword_10018EEB8, &qword_10012BD90);
  v65 = *(v11 - 8);
  v66 = v11;
  __chkstk_darwin(v11);
  v64 = v59 - v12;
  v13 = sub_100003768(&qword_10018EEC0, &qword_10012BD98);
  v14 = __chkstk_darwin(v13 - 8);
  v72 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = v59 - v16;
  v17 = sub_100003768(&qword_10018EDB8, &qword_10012BCE8);
  v18 = __chkstk_darwin(v17 - 8);
  v63 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v59 - v20;
  v22 = sub_100003768(&qword_10018EEC8, &qword_10012BDA0);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v62 = v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = v59 - v26;
  v28 = sub_100003768(&qword_10018EED0, &qword_10012BDA8);
  v29 = __chkstk_darwin(v28 - 8);
  v71 = v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = v59 - v31;
  if (a1 && *(a1 + 16) == 1)
  {

    sub_10002C35C(&off_100176B10);
    v60 = a3;
    v76 = v33;
    __chkstk_darwin(v33);
    v61 = a4;
    sub_1000AA9A0();
    v59[1] = swift_getKeyPath();
    v34 = swift_allocObject();
    *(v34 + 16) = a2;
    *(v34 + 24) = a1;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1000AA9F4;
    *(v35 + 24) = v34;
    sub_100003768(&qword_10018EF10, &qword_10012BDD0);
    sub_100003768(&qword_10018EE10, &qword_10012BD28);
    sub_1000AABC8(&qword_10018EF18, &qword_10018EF10, &qword_10012BDD0, &protocol conformance descriptor for [A]);
    sub_100006D24();
    sub_1000AA79C();
    ForEach<>.init(_:id:content:)();
    Divider.init()();
    v36 = type metadata accessor for Divider();
    sub_100003CE8(v21, 0, 1, v36);
    v37 = *(v23 + 16);
    v38 = v62;
    v37(v62, v27, v22);
    v39 = v63;
    sub_10002BE60(v21, v63, &qword_10018EDB8, &qword_10012BCE8);
    v37(v32, v38, v22);
    v40 = sub_100003768(&qword_10018EF20, &qword_10012BDD8);
    sub_10002BE60(v39, &v32[*(v40 + 48)], &qword_10018EDB8, &qword_10012BCE8);
    sub_1000AA8C8(v21, &qword_10018EDB8);
    v41 = *(v23 + 8);
    v41(v27, v22);
    a3 = v60;
    a4 = v61;
    sub_1000AA8C8(v39, &qword_10018EDB8);
    v41(v38, v22);
    v42 = sub_100003768(&qword_10018EED8, &qword_10012BDB0);
    v43 = v32;
    v44 = 0;
  }

  else
  {
    v42 = sub_100003768(&qword_10018EED8, &qword_10012BDB0);
    v43 = v32;
    v44 = 1;
  }

  v45 = sub_100003CE8(v43, v44, 1, v42);
  v46 = v70;
  if (a4)
  {
    v75 = a4;
    v76 = 0;
    v77 = 0xE000000000000000;
    v78 = &off_100176B38;
    v74 = a3;
    __chkstk_darwin(v45);

    sub_100003768(&qword_10018EEF0, &qword_10012BDC8);
    sub_100006D24();
    sub_1000AAABC(&qword_10018EEF8, &qword_10018EEF0);
    sub_10000AC24();
    v47 = v64;
    Picker<>.init<A>(_:selection:content:)();
    v48 = v67;
    InlinePickerStyle.init()();
    sub_1000AABC8(&qword_10018EF00, &qword_10018EEB8, &qword_10012BD90, &protocol conformance descriptor for Picker<A, B, C>);
    v49 = v66;
    v50 = v69;
    View.pickerStyle<A>(_:)();
    (*(v68 + 8))(v48, v50);
    (*(v65 + 8))(v47, v49);
    v51 = sub_100003768(&qword_10018EEE0, &qword_10012BDB8);
    v52 = v46;
    v53 = 0;
  }

  else
  {
    v51 = sub_100003768(&qword_10018EEE0, &qword_10012BDB8);
    v52 = v46;
    v53 = 1;
  }

  sub_100003CE8(v52, v53, 1, v51);
  v54 = v71;
  sub_10002BE60(v32, v71, &qword_10018EED0, &qword_10012BDA8);
  v55 = v72;
  sub_10002BE60(v46, v72, &qword_10018EEC0, &qword_10012BD98);
  v56 = v73;
  sub_10002BE60(v54, v73, &qword_10018EED0, &qword_10012BDA8);
  v57 = sub_100003768(&qword_10018EEE8, &qword_10012BDC0);
  sub_10002BE60(v55, v56 + *(v57 + 48), &qword_10018EEC0, &qword_10012BD98);
  sub_1000AA8C8(v46, &qword_10018EEC0);
  sub_1000AA8C8(v32, &qword_10018EED0);
  sub_1000AA8C8(v55, &qword_10018EEC0);
  return sub_1000AA8C8(v54, &qword_10018EED0);
}

uint64_t sub_1000A6628@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  LODWORD(v40) = a3;
  v7 = type metadata accessor for InlinePickerStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003768(&qword_10018EE48, &qword_10012BD48);
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v41 = &v36 - v12;
  v13 = sub_100003768(&qword_10018EE50, &qword_10012BD50);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v19 = sub_100003768(&qword_10018EE58, &qword_10012BD58);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v36 - v23;
  v25 = sub_100003768(&qword_10018EE60, &qword_10012BD60);
  v26 = sub_100003CE8(v24, 1, 1, v25);
  if (a2)
  {
    v38 = &v36;
    v47 = 0;
    v48 = 0xE000000000000000;
    v49 = &off_1001765A0;
    v44 = a1;
    v45 = a2;
    v46 = v40;
    __chkstk_darwin(v26);
    v39 = v24;
    v27 = v8;

    sub_100003768(&qword_10018EE78, &qword_10012BD78);
    v40 = v22;
    v37 = v7;
    sub_10006F790();
    sub_1000AAABC(&qword_10018EE80, &qword_10018EE78);
    sub_10000AC24();
    v28 = v41;
    Picker<>.init<A>(_:selection:content:)();
    InlinePickerStyle.init()();
    sub_1000AABC8(&qword_10018EE88, &qword_10018EE48, &qword_10012BD48, &protocol conformance descriptor for Picker<A, B, C>);
    v29 = v43;
    v30 = v37;
    View.pickerStyle<A>(_:)();
    v22 = v40;
    (*(v27 + 8))(v10, v30);
    v24 = v39;
    (*(v42 + 8))(v28, v29);
    v31 = sub_100003768(&qword_10018EE68, &qword_10012BD68);
    v32 = v18;
    v33 = 0;
  }

  else
  {
    v31 = sub_100003768(&qword_10018EE68, &qword_10012BD68);
    v32 = v18;
    v33 = 1;
  }

  sub_100003CE8(v32, v33, 1, v31);
  sub_10002BE60(v24, v22, &qword_10018EE58, &qword_10012BD58);
  sub_10002BE60(v18, v16, &qword_10018EE50, &qword_10012BD50);
  sub_10002BE60(v22, a4, &qword_10018EE58, &qword_10012BD58);
  v34 = sub_100003768(&qword_10018EE70, &qword_10012BD70);
  sub_10002BE60(v16, a4 + *(v34 + 48), &qword_10018EE50, &qword_10012BD50);
  sub_1000AA8C8(v18, &qword_10018EE50);
  sub_1000AA8C8(v24, &qword_10018EE58);
  sub_1000AA8C8(v16, &qword_10018EE50);
  return sub_1000AA8C8(v22, &qword_10018EE58);
}

uint64_t sub_1000A6B50@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v67 = a5;
  v11 = type metadata accessor for InlinePickerStyle();
  v72 = *(v11 - 8);
  v73 = v11;
  __chkstk_darwin(v11);
  v71 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003768(&qword_10018EDA8, &qword_10012BCD8);
  v69 = *(v13 - 8);
  v70 = v13;
  __chkstk_darwin(v13);
  v68 = v61 - v14;
  v15 = sub_100003768(&qword_10018EDB0, &qword_10012BCE0);
  v16 = __chkstk_darwin(v15 - 8);
  v76 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v75 = v61 - v18;
  v19 = sub_100003768(&qword_10018EDB8, &qword_10012BCE8);
  v20 = __chkstk_darwin(v19 - 8);
  v66 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v61 - v22;
  v24 = sub_100003768(&qword_10018EDC0, &qword_10012BCF0);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v65 = v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v61 - v28;
  v30 = sub_100003768(&qword_10018EDC8, &qword_10012BCF8);
  v31 = __chkstk_darwin(v30 - 8);
  v74 = v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = v61 - v33;
  if (a1 && *(a1 + 16) == 1)
  {

    sub_10002C4B8(&off_100176B60);
    v62 = a3;
    v77 = v35;
    __chkstk_darwin(v35);
    v63 = a4;
    v64 = a6;
    sub_1000AA6C8();
    v61[1] = swift_getKeyPath();
    v36 = swift_allocObject();
    *(v36 + 16) = a2;
    *(v36 + 24) = a1;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1000AA754;
    *(v37 + 24) = v36;
    sub_100003768(&qword_10018EE08, &qword_10012BD20);
    sub_100003768(&qword_10018EE10, &qword_10012BD28);
    sub_1000AABC8(&qword_10018EE18, &qword_10018EE08, &qword_10012BD20, &protocol conformance descriptor for [A]);
    sub_10006417C();
    sub_1000AA79C();
    ForEach<>.init(_:id:content:)();
    Divider.init()();
    v38 = type metadata accessor for Divider();
    sub_100003CE8(v23, 0, 1, v38);
    v39 = *(v25 + 16);
    v40 = v65;
    v39(v65, v29, v24);
    v41 = v66;
    sub_10002BE60(v23, v66, &qword_10018EDB8, &qword_10012BCE8);
    v39(v34, v40, v24);
    a6 = v64;
    v42 = sub_100003768(&qword_10018EE28, &qword_10012BD30);
    sub_10002BE60(v41, &v34[*(v42 + 48)], &qword_10018EDB8, &qword_10012BCE8);
    sub_1000AA8C8(v23, &qword_10018EDB8);
    v43 = *(v25 + 8);
    v43(v29, v24);
    v44 = v41;
    a3 = v62;
    a4 = v63;
    sub_1000AA8C8(v44, &qword_10018EDB8);
    v43(v40, v24);
    v45 = sub_100003768(&qword_10018EDD0, &qword_10012BD00);
    v46 = v34;
    v47 = 0;
  }

  else
  {
    v45 = sub_100003768(&qword_10018EDD0, &qword_10012BD00);
    v46 = v34;
    v47 = 1;
  }

  v48 = sub_100003CE8(v46, v47, 1, v45);
  if (a4)
  {
    v80 = 0;
    v81 = 0xE000000000000000;
    v82 = &off_100176390;
    v77 = a3;
    v78 = a4;
    v79 = v67;
    __chkstk_darwin(v48);

    sub_100003768(&qword_10018EDE8, &qword_10012BD18);
    sub_10006417C();
    sub_1000AAABC(&qword_10018EDF0, &qword_10018EDE8);
    sub_10000AC24();
    v49 = v68;
    Picker<>.init<A>(_:selection:content:)();
    v50 = v71;
    InlinePickerStyle.init()();
    sub_1000AABC8(&qword_10018EDF8, &qword_10018EDA8, &qword_10012BCD8, &protocol conformance descriptor for Picker<A, B, C>);
    v51 = v75;
    v52 = v70;
    v53 = v73;
    View.pickerStyle<A>(_:)();
    (*(v72 + 8))(v50, v53);
    (*(v69 + 8))(v49, v52);
    v54 = sub_100003768(&qword_10018EDD8, &qword_10012BD08);
    v55 = v51;
    v56 = 0;
  }

  else
  {
    v54 = sub_100003768(&qword_10018EDD8, &qword_10012BD08);
    v51 = v75;
    v55 = v75;
    v56 = 1;
  }

  sub_100003CE8(v55, v56, 1, v54);
  v57 = v74;
  sub_10002BE60(v34, v74, &qword_10018EDC8, &qword_10012BCF8);
  v58 = v76;
  sub_10002BE60(v51, v76, &qword_10018EDB0, &qword_10012BCE0);
  sub_10002BE60(v57, a6, &qword_10018EDC8, &qword_10012BCF8);
  v59 = sub_100003768(&qword_10018EDE0, &qword_10012BD10);
  sub_10002BE60(v58, a6 + *(v59 + 48), &qword_10018EDB0, &qword_10012BCE0);
  sub_1000AA8C8(v51, &qword_10018EDB0);
  sub_1000AA8C8(v34, &qword_10018EDC8);
  sub_1000AA8C8(v58, &qword_10018EDB0);
  return sub_1000AA8C8(v57, &qword_10018EDC8);
}

uint64_t sub_1000A7444@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v46 = a1;
  v48 = a2;
  v2 = type metadata accessor for InlinePickerStyle();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003768(&qword_10018ED30, &qword_10012BC68);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v40 - v6;
  v8 = sub_100003768(&qword_10018EC20, &qword_10012BA20);
  __chkstk_darwin(v8 - 8);
  v10 = v40 - v9;
  v11 = sub_100003768(&qword_10018ECE0, &qword_10012BBC8);
  v12 = __chkstk_darwin(v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v40 - v15;
  v17 = sub_100003768(&qword_10018ED38, &qword_10012BC70);
  v18 = __chkstk_darwin(v17 - 8);
  v47 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v40 - v20;
  v22 = sub_100003768(&qword_10018ED40, &qword_10012BC78);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v40 - v26;
  v28 = sub_100003768(&qword_10018ED48, &qword_10012BC80);
  sub_100003CE8(v27, 1, 1, v28);
  sub_10002BE60(v46, v10, &qword_10018EC20, &qword_10012BA20);
  if (sub_10000E5F0(v10, 1, v11) == 1)
  {
    sub_1000AA8C8(v10, &qword_10018EC20);
    v29 = sub_100003768(&qword_10018ED50, &qword_10012BC88);
    sub_100003CE8(v21, 1, 1, v29);
  }

  else
  {
    v42 = v16;
    sub_1000AA41C(v10, v16);
    v46 = sub_100067958();
    v49 = 0;
    v50 = 0xE000000000000000;
    v51 = v46;
    v40[3] = v14;
    v30 = sub_10002BE60(v16, v14, &qword_10018ECE0, &qword_10012BBC8);
    v40[4] = v40;
    __chkstk_darwin(v30);
    v40[2] = type metadata accessor for DefaultFlowOverride(0);
    v41 = v5;
    v32 = v43;
    v31 = v44;
    v40[1] = sub_100003768(&qword_10018ED60, &unk_10012BC98);
    sub_1000AA668(&qword_10018CAD0, type metadata accessor for DefaultFlowOverride, &unk_1001281BC);
    sub_1000AAABC(&qword_10018ED68, &qword_10018ED60);
    sub_10000AC24();
    Picker<>.init<A>(_:selection:content:)();
    InlinePickerStyle.init()();
    sub_1000AABC8(&qword_10018ED78, &qword_10018ED30, &qword_10012BC68, &protocol conformance descriptor for Picker<A, B, C>);
    v33 = v41;
    v34 = v45;
    View.pickerStyle<A>(_:)();
    (*(v31 + 8))(v4, v34);
    (*(v32 + 8))(v7, v33);
    sub_1000AA8C8(v42, &qword_10018ECE0);
    v35 = sub_100003768(&qword_10018ED50, &qword_10012BC88);
    sub_100003CE8(v21, 0, 1, v35);
  }

  sub_10002BE60(v27, v25, &qword_10018ED40, &qword_10012BC78);
  v36 = v47;
  sub_10002BE60(v21, v47, &qword_10018ED38, &qword_10012BC70);
  v37 = v48;
  sub_10002BE60(v25, v48, &qword_10018ED40, &qword_10012BC78);
  v38 = sub_100003768(&qword_10018ED58, &qword_10012BC90);
  sub_10002BE60(v36, v37 + *(v38 + 48), &qword_10018ED38, &qword_10012BC70);
  sub_1000AA8C8(v21, &qword_10018ED38);
  sub_1000AA8C8(v27, &qword_10018ED40);
  sub_1000AA8C8(v36, &qword_10018ED38);
  return sub_1000AA8C8(v25, &qword_10018ED40);
}

uint64_t sub_1000A7AC4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v35 = a2;
  v8 = type metadata accessor for MenuActionDismissBehavior();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003768(&qword_10018ED10, &qword_10012BC08);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v16 = sub_100003768(&qword_10018EE30, &qword_10012BD38);
  v17 = __chkstk_darwin(v16);
  v20 = &v27 - v19;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(a4 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    JUMPOUT(0x1000A7F38);
  }

  v28 = v13;
  v29 = v9;
  v30 = v8;
  v31 = v18;
  v21 = 0xE900000000000072;
  v32 = v17;
  v33 = a1;
  v34 = a5;
  switch(v35)
  {
    case 1:
      v21 = 0xE400000000000000;
      break;
    case 2:
      v21 = 0x8000000100137C20;
      break;
    case 3:
      v21 = 0x8000000100137C00;
      break;
    default:
      break;
  }

  __chkstk_darwin(v17);
  *(&v27 - 4) = v22;
  *(&v27 - 3) = v21;
  *(&v27 - 16) = v36;

  Toggle.init(isOn:label:)();

  static MenuActionDismissBehavior.disabled.getter();
  v23 = sub_1000AABC8(&qword_10018ED18, &qword_10018ED10, &qword_10012BC08, &protocol conformance descriptor for Toggle<A>);
  View.menuActionDismissBehavior(_:)();
  (*(v29 + 8))(v11, v30);
  (*(v28 + 8))(v15, v12);
  static String.overrideMenuSubContentMenuToggleFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100121620;
  *(v24 + 56) = &type metadata for Int;
  *(v24 + 64) = &protocol witness table for Int;
  *(v24 + 32) = v33;
  String.init(format:_:)();

  v37 = v12;
  v38 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  View.accessibilityIdentifier(_:)();

  return (*(v31 + 8))(v20, v25);
}

uint64_t sub_1000A7F48@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v29) = a2;
  v7 = type metadata accessor for MenuActionDismissBehavior();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003768(&qword_10018ED10, &qword_10012BC08);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v14 = sub_100003768(&qword_10018EE30, &qword_10012BD38);
  v15 = *(v14 - 8);
  result = __chkstk_darwin(v14);
  v18 = &v25 - v17;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a1)
  {
    v25 = v7;
    v26 = v10;
    v28 = a4;
    v19 = __chkstk_darwin(result);
    v27 = a1;
    *(&v25 - 4) = 0xD000000000000013;
    *(&v25 - 3) = v20;
    *(&v25 - 16) = v29;
    v29 = v19;

    Toggle.init(isOn:label:)();
    static MenuActionDismissBehavior.disabled.getter();
    v21 = sub_1000AABC8(&qword_10018ED18, &qword_10018ED10, &qword_10012BC08, &protocol conformance descriptor for Toggle<A>);
    v22 = v26;
    View.menuActionDismissBehavior(_:)();
    (*(v30 + 8))(v9, v25);
    (*(v11 + 8))(v13, v22);
    static String.overrideMenuSubContentMenuToggleFormat.getter();
    sub_100003768(&qword_100188810, &unk_100121780);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100121620;
    *(v23 + 56) = &type metadata for Int;
    *(v23 + 64) = &protocol witness table for Int;
    *(v23 + 32) = v27;
    String.init(format:_:)();

    v31 = v22;
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    v24 = v29;
    View.accessibilityIdentifier(_:)();

    return (*(v15 + 8))(v18, v24);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A8340@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v29) = a2;
  v7 = type metadata accessor for MenuActionDismissBehavior();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003768(&qword_10018ED10, &qword_10012BC08);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v14 = sub_100003768(&qword_10018EE30, &qword_10012BD38);
  v15 = *(v14 - 8);
  result = __chkstk_darwin(v14);
  v18 = &v25 - v17;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a1)
  {
    v25 = v7;
    v26 = v10;
    v28 = a4;
    v19 = __chkstk_darwin(result);
    v27 = a1;
    *(&v25 - 4) = 0xD000000000000011;
    *(&v25 - 3) = v20;
    *(&v25 - 16) = v29;
    v29 = v19;

    Toggle.init(isOn:label:)();
    static MenuActionDismissBehavior.disabled.getter();
    v21 = sub_1000AABC8(&qword_10018ED18, &qword_10018ED10, &qword_10012BC08, &protocol conformance descriptor for Toggle<A>);
    v22 = v26;
    View.menuActionDismissBehavior(_:)();
    (*(v30 + 8))(v9, v25);
    (*(v11 + 8))(v13, v22);
    static String.overrideMenuSubContentMenuToggleFormat.getter();
    sub_100003768(&qword_100188810, &unk_100121780);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100121620;
    *(v23 + 56) = &type metadata for Int;
    *(v23 + 64) = &protocol witness table for Int;
    *(v23 + 32) = v27;
    String.init(format:_:)();

    v31 = v22;
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    v24 = v29;
    View.accessibilityIdentifier(_:)();

    return (*(v15 + 8))(v18, v24);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A8738@<X0>(unint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = type metadata accessor for MenuActionDismissBehavior();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003768(&qword_10018ED10, &qword_10012BC08);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v28 - v15;
  v17 = sub_100003768(&qword_10018EE30, &qword_10012BD38);
  result = __chkstk_darwin(v17);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a4 + 16) > a1)
  {
    v30 = v13;
    v31 = v9;
    v28[1] = *(a4 + 24 * a1 + 48);
    v33 = result;
    v34 = v20;
    v29 = v28 - v19;
    v21 = sub_100063DA4(a2);
    v32 = a1;
    *&v28[-8] = __chkstk_darwin(v21);
    *&v28[-6] = v22;
    LOBYTE(v28[-4]) = a3;

    Toggle.init(isOn:label:)();

    static MenuActionDismissBehavior.disabled.getter();
    v23 = sub_1000AABC8(&qword_10018ED18, &qword_10018ED10, &qword_10012BC08, &protocol conformance descriptor for Toggle<A>);
    v25 = v29;
    v24 = v30;
    View.menuActionDismissBehavior(_:)();
    (*(v10 + 8))(v12, v31);
    (*(v14 + 8))(v16, v24);
    static String.overrideMenuSubContentMenuToggleFormat.getter();
    sub_100003768(&qword_100188810, &unk_100121780);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100121620;
    *(v26 + 56) = &type metadata for Int;
    *(v26 + 64) = &protocol witness table for Int;
    *(v26 + 32) = v32;
    String.init(format:_:)();

    v36 = v24;
    v37 = v23;
    swift_getOpaqueTypeConformance2();
    v27 = v33;
    View.accessibilityIdentifier(_:)();

    return (*(v34 + 8))(v25, v27);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A8B3C(uint64_t a1)
{
  sub_10002C334(a1);
  sub_1000AAB24();
  swift_getKeyPath();
  sub_100003768(&qword_10018F010, &qword_10012BE80);
  sub_100003768(&qword_100189580, &qword_100123A50);
  sub_1000AABC8(&qword_10018F018, &qword_10018F010, &qword_10012BE80, &protocol conformance descriptor for [A]);
  sub_10009DCCC();
  sub_1000AA5AC();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000A8C50(uint64_t a1)
{
  sub_10002C348(a1);
  sub_1000AAA44();
  swift_getKeyPath();
  sub_100003768(&qword_10018EF90, &qword_10012BE28);
  sub_100003768(&qword_100189580, &qword_100123A50);
  sub_1000AABC8(&qword_10018EF98, &qword_10018EF90, &qword_10012BE28, &protocol conformance descriptor for [A]);
  sub_10009B770();
  sub_1000AA5AC();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000A8D64(uint64_t a1)
{
  sub_10002C35C(a1);
  sub_1000AA9A0();
  swift_getKeyPath();
  sub_100003768(&qword_10018EF10, &qword_10012BDD0);
  sub_100003768(&qword_100189580, &qword_100123A50);
  sub_1000AABC8(&qword_10018EF18, &qword_10018EF10, &qword_10012BDD0, &protocol conformance descriptor for [A]);
  sub_100006D24();
  sub_1000AA5AC();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000A8E78(uint64_t a1)
{
  sub_10002C4A4(a1);
  sub_1000AA934();
  swift_getKeyPath();
  sub_100003768(&qword_10018EE98, &qword_10012BD80);
  sub_100003768(&qword_100189580, &qword_100123A50);
  sub_1000AABC8(&qword_10018EEA0, &qword_10018EE98, &qword_10012BD80, &protocol conformance descriptor for [A]);
  sub_10006F790();
  sub_1000AA5AC();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000A8F8C(uint64_t a1)
{
  sub_10002C4B8(a1);
  sub_1000AA6C8();
  swift_getKeyPath();
  sub_100003768(&qword_10018EE08, &qword_10012BD20);
  sub_100003768(&qword_100189580, &qword_100123A50);
  sub_1000AABC8(&qword_10018EE18, &qword_10018EE08, &qword_10012BD20, &protocol conformance descriptor for [A]);
  sub_10006417C();
  sub_1000AA5AC();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000A90A0()
{
  sub_10002C618();
  type metadata accessor for DefaultFlowOverride(0);
  sub_1000AA668(&qword_10018ED80, type metadata accessor for DefaultFlowOverride, &unk_1001282C4);
  swift_getKeyPath();
  sub_100003768(&qword_10018ED88, &qword_10012BCC8);
  sub_100003768(&qword_100189580, &qword_100123A50);
  sub_1000AABC8(&qword_10018ED90, &qword_10018ED88, &qword_10012BCC8, &protocol conformance descriptor for [A]);
  sub_1000AA668(&qword_10018CAD0, type metadata accessor for DefaultFlowOverride, &unk_1001281BC);
  sub_1000AA5AC();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000A9210(uint64_t a1, char a2)
{
  sub_10000AC24();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6 & 1;
  static String.overrideMenuSubContentMenuPickerFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100121620;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = a1;
  String.init(format:_:)();

  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v3, v5, v7);
}