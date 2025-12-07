id sub_100001870(int a1, id a2)
{
  v2 = [a2 role];
  v3 = objc_allocWithZone(UISceneConfiguration);
  return sub_100001B3C(0xD000000000000015, 0x8000000100014230, v2);
}

id sub_1000019EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_100001A44()
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v1) = UIApplicationMain(_:_:_:_:)();

  exit(v1);
}

id sub_100001AD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100001B3C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithName:v5 sessionRole:a3];

  return v6;
}

unint64_t sub_100001BAC()
{
  result = qword_1000218C0;
  if (!qword_1000218C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000218C0);
  }

  return result;
}

void type metadata accessor for LaunchOptionsKey()
{
  if (!qword_1000218D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000218D8);
    }
  }
}

uint64_t sub_100001C48()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100001C88(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100001CE4(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100001D68(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001DE4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100001E64@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100001E8C(a2);
  *a1 = result;
  return result;
}

NSString sub_100001E8C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

uint64_t sub_100001ED0@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100001F18@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100001F48(uint64_t a1)
{
  v2 = sub_1000020DC(&qword_1000218D0, type metadata accessor for LaunchOptionsKey, &unk_100013884);
  v3 = sub_1000020DC(&qword_1000218F8, type metadata accessor for LaunchOptionsKey, &unk_1000137D8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000020DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002124(uint64_t a1)
{
  URL.host.getter();
  if (v2)
  {
    String.lowercased()();

    sub_1000048C0();
    v3 = StringProtocol.contains<A>(_:)();

    type metadata accessor for URL();
    sub_100004FAC();
    (*(v4 + 8))(a1);
    v5 = v3 ^ 1;
  }

  else
  {
    type metadata accessor for URL();
    sub_100004FAC();
    (*(v6 + 8))(a1);
    v5 = 1;
  }

  return v5 & 1;
}

id sub_100002230@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002838(&qword_100021960, &unk_100013900);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v41 = v36 - v15;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    result = [objc_opt_self() createBagForSubProfile];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    v19 = [objc_allocWithZone(AMSEngagementOfflineBag) initWithUnderlyingBag:result];

    v16 = v19;
  }

  swift_unknownObjectRetain_n();
  v20 = String._bridgeToObjectiveC()();
  sub_100002880(a4, 1, 1, v8);
  v42 = v20;
  v21 = [v16 dictionaryForKey:v20];
  swift_unknownObjectRelease();
  v22 = [v21 valuePromise];

  v23 = [v22 promiseWithTimeout:0.1];
  v43[0] = 0;
  v24 = [v23 resultWithError:v43];

  if (v24)
  {
    v25 = v43[0];
    v26 = v41;
    sub_1000028A8(a1, a2, v41);

    sub_100004974(a4, &qword_100021960, &unk_100013900);
    sub_100004794(v26, a4);
  }

  else
  {
    v38 = a1;
    v27 = v43[0];
    v28 = _convertNSErrorToError(_:)();

    v36[1] = v28;
    swift_willThrow();
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v37 = v9;
    v39 = a2;
    v29 = type metadata accessor for Log();
    v36[0] = sub_1000046E8(v29, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1000138D0;
    v44 = &type metadata for DeepLinkUtil;
    v30 = AMSLogKey();
    if (v30)
    {
      v31 = v30;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v43);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v32 = Error.localizedDescription.getter();
    v44 = &type metadata for String;
    v43[0] = v32;
    v43[1] = v33;
    static LogInterpolation.safe(_:)();
    sub_100004974(v43, &qword_100021D00, &unk_100013910);
    Log.error(_:)();

    a1 = v38;
    a2 = v39;
    v9 = v37;
  }

  sub_100004860(a4, v14, &qword_100021960, &unk_100013900);
  if (sub_10000476C(v14, 1, v8) == 1)
  {
    sub_100004974(v14, &qword_100021960, &unk_100013900);
    v34 = v40;
    (*(v9 + 16))(v40, a1, v8);
    if (sub_100002124(v34))
    {

      return swift_unknownObjectRelease();
    }

    else
    {
      v35 = v41;
      sub_100003D28(a1, a2, v41);
      swift_unknownObjectRelease();

      sub_100004974(a4, &qword_100021960, &unk_100013900);
      return sub_100004794(v35, a4);
    }
  }

  else
  {

    swift_unknownObjectRelease();
    return sub_100004974(v14, &qword_100021960, &unk_100013900);
  }
}

uint64_t sub_100002838(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000028A8@<X0>(uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v124 = a3;
  v6 = sub_100002838(&qword_100021960, &unk_100013900);
  __chkstk_darwin(v6 - 8);
  v117 = v106 - v7;
  v129 = type metadata accessor for Log();
  v122 = *(v129 - 8);
  __chkstk_darwin(v129);
  v9 = v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for URLQueryItem();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v120 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002838(&qword_100021F40, &qword_1000141B0);
  __chkstk_darwin(v11 - 8);
  v119 = v106 - v12;
  v123 = type metadata accessor for URLComponents();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v118 = v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for CharacterSet();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002838(&qword_100021968, &qword_100013920);
  __chkstk_darwin(v15 - 8);
  v133 = v106 - v16;
  v17 = sub_100002838(&qword_100021970, &qword_100013928);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v131 = v106 - v23;
  __chkstk_darwin(v22);
  v130 = (v106 - v24);
  v25 = type metadata accessor for URL();
  count = v25[-1].count;
  __chkstk_darwin(v25);
  v28 = v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v142 = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  v29 = v142;
  if (v142)
  {
    v107 = count;
    v31 = *(count + 16);
    v30 = count + 16;
    v110 = v31;
    v31(v28, a2, v25);
    if (sub_100002124(v28))
    {
      sub_100002880(a4, 1, 1, v25);
    }

    v106[1] = v30;
    v128 = a2;
    v106[0] = v9;
    v108 = v25;
    v109 = a4;
    v33 = v29 + 64;
    v34 = 1 << *(v29 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v29 + 64);
    v37 = (v34 + 63) >> 6;
    v113 = (v18 + 8);
    v112 = (v18 + 32);

    v38 = 0;
    v111 = v21;
    v132 = v29;
    if (!v36)
    {
LABEL_10:
      while (1)
      {
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v39 >= v37)
        {

          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          goto LABEL_18;
        }

        v36 = *(v33 + 8 * v39);
        ++v38;
        if (v36)
        {
          v38 = v39;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

LABEL_14:
    while (1)
    {
      v40 = __clz(__rbit64(v36)) | (v38 << 6);
      v41 = *(v29 + 56);
      v42 = (*(v29 + 48) + 16 * v40);
      v44 = *v42;
      v43 = v42[1];
      sub_100004804(v41 + 32 * v40, &v140);
      *&v139 = v44;
      *(&v139 + 1) = v43;
      v136 = v139;
      v137 = v140;
      v138 = v141;

      Regex<A>.init(_:)();
      v45 = v131;
      Regex.ignoresCase(_:)();
      v114 = *v113;
      v114(v21, v17);
      v25 = v130;
      (*v112)(v130, v45, v17);
      URL.absoluteString.getter();
      Regex.firstMatch(in:)();
      v114(v25, v17);

      v46 = sub_100002838(&qword_100021980, &qword_100013938);
      v47 = v133;
      if (sub_10000476C(v133, 1, v46) != 1)
      {
        break;
      }

      sub_100004974(v47, &qword_100021968, &qword_100013920);
      v21 = v111;
      v36 &= v36 - 1;
      sub_100004974(&v136, &qword_100021978, &qword_100013930);
      v29 = v132;
      if (!v36)
      {
        goto LABEL_10;
      }
    }

    sub_100004974(v47, &qword_100021968, &qword_100013920);

    v142 = v136;
    v143 = v137;
    v144 = v138;
LABEL_18:

    sub_100004860(&v142, &v136, &qword_100021988, &qword_100013940);
    v48 = v109;
    v49 = v129;
    v50 = v108;
    if (*(&v136 + 1))
    {
      v139 = v136;
      v140 = v137;
      v141 = v138;
      sub_100004860(&v139, &v136, &qword_100021978, &qword_100013930);

      sub_100002838(&qword_100021990, &qword_100013948);
      if (swift_dynamicCast())
      {
        v51 = v134;
        v52 = URL.absoluteString.getter();
        v54 = v53;
        v55 = v125;
        static CharacterSet.urlQueryAllowed.getter();
        v56._countAndFlagsBits = 0x2B3D26403A3F2F3BLL;
        v56._object = 0xEB00000000202C24;
        CharacterSet.remove(charactersIn:)(v56);
        *&v136 = v52;
        *(&v136 + 1) = v54;
        sub_1000048C0();
        v57 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
        v59 = v58;
        (*(v126 + 8))(v55, v127);

        if (v59)
        {
          v126 = v57;
          v127 = v59;
          if (qword_100021710 != -1)
          {
            swift_once();
          }

          v133 = sub_1000046E8(v49, qword_100022D00);
          v60 = sub_100002838(&qword_100021CF0, &unk_100013EB0);
          v61 = *(type metadata accessor for LogInterpolation() - 8);
          v62 = *(v61 + 72);
          v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
          v130 = *(v61 + 80);
          v132 = v60;
          *(swift_allocObject() + 16) = xmmword_1000138E0;
          v131 = v63;
          *(&v137 + 1) = &type metadata for DeepLinkUtil;
          v64 = AMSLogKey();
          if (v64)
          {
            v65 = v64;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          v69 = 0xEB000000006E6F69;
          v70 = 0x74616E6974736564;
          static LogInterpolation.prefix(_:_:)();

          sub_100004720(&v136);
          LogInterpolation.init(stringLiteral:)();
          *(&v137 + 1) = v50;
          v71 = sub_100004914(&v136);
          v110(v71, v128, v50);
          static LogInterpolation.safe(_:)();
          sub_100004974(&v136, &qword_100021D00, &unk_100013910);
          v128 = 3 * v62;
          LogInterpolation.init(stringLiteral:)();
          sub_100004860(&v139, &v136, &qword_100021978, &qword_100013930);
          v135 = &type metadata for String;
          v134 = v136;
          static LogInterpolation.safe(_:)();
          sub_100004974(&v134, &qword_100021D00, &unk_100013910);
          sub_100004720(&v137);
          Log.default(_:)();

          v72 = v124;
          if (v124)
          {
            v25 = &AppDelegate;
            v73 = v124;
          }

          else
          {
            v74 = [objc_opt_self() ams_sharedAccountStore];
            v25 = &AppDelegate;
            v73 = [v74 ams_activeiCloudAccount];

            if (!v73)
            {
              v33 = v108;
              goto LABEL_38;
            }
          }

          v33 = v108;
          v75 = v72;
          v76 = v73;
          if ([v76 isActive])
          {
            v77 = [v76 aa_needsToVerifyTerms];

            if ((v77 & 1) == 0)
            {
              v70 = 0xD00000000000001DLL;
              v69 = 0x8000000100014320;
            }
          }

          else
          {
          }

LABEL_38:
          sub_100004448(v51, &v136, v70, v69);

          if (*(&v137 + 1))
          {
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_45;
            }

            v78 = v119;
            URLComponents.init(string:)();

            v79 = v123;
            if (sub_10000476C(v78, 1, v123) != 1)
            {
              (*(v121 + 32))(v118, v78, v79);
              v86 = v124;
              if (v124)
              {
                v87 = v124;
                goto LABEL_54;
              }

LABEL_52:
              v88 = [objc_opt_self() ams_sharedAccountStore];
              v87 = [v88 v25[375].count];

              if (!v87)
              {
                goto LABEL_58;
              }

              v86 = v124;
LABEL_54:
              v89 = v86;
              v90 = v87;
              if ([v90 isActive])
              {
                v91 = [v90 aa_needsToVerifyTerms];

                v92 = v118;
                if ((v91 & 1) == 0)
                {
                  goto LABEL_60;
                }

                goto LABEL_59;
              }

LABEL_58:
              v92 = v118;
LABEL_59:
              v90 = v87;
LABEL_60:

              v93 = URLComponents.queryItems.getter();
              if (v93)
              {
                v94 = v93;
              }

              else
              {
                v94 = &_swiftEmptyArrayStorage;
              }

              URLQueryItem.init(name:value:)();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = sub_100004A88(0, *(v94 + 2) + 1, 1, v94);
              }

              v95 = v116;
              v97 = *(v94 + 2);
              v96 = *(v94 + 3);
              if (v97 >= v96 >> 1)
              {
                v94 = sub_100004A88((v96 > 1), v97 + 1, 1, v94);
              }

              *(v94 + 2) = v97 + 1;
              (*(v115 + 32))(&v94[((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v97], v120, v95);
              URLComponents.queryItems.setter();
              (*(v122 + 16))(v106[0], v133, v129);
              *(swift_allocObject() + 16) = xmmword_1000138D0;
              *(&v137 + 1) = &type metadata for DeepLinkUtil;
              v98 = AMSLogKey();
              if (v98)
              {
                v99 = v98;
                static String._unconditionallyBridgeFromObjectiveC(_:)();
              }

              v100 = v107;
              static LogInterpolation.prefix(_:_:)();

              sub_100004720(&v136);
              LogInterpolation.init(stringLiteral:)();
              v101 = v117;
              URLComponents.url.getter();
              if (sub_10000476C(v101, 1, v33) == 1)
              {
                sub_100004974(v101, &qword_100021960, &unk_100013900);
                v136 = 0u;
                v137 = 0u;
              }

              else
              {
                *(&v137 + 1) = v33;
                v102 = sub_100004914(&v136);
                (*(v100 + 32))(v102, v101, v33);
              }

              v103 = v129;
              v104 = v122;
              static LogInterpolation.safe(_:)();
              sub_100004974(&v136, &qword_100021D00, &unk_100013910);
              v105 = v106[0];
              Log.default(_:)();

              (*(v104 + 8))(v105, v103);
              URLComponents.url.getter();
              (*(v121 + 8))(v92, v123);
              sub_100004974(&v139, &qword_100021978, &qword_100013930);
              return sub_100004974(&v142, &qword_100021988, &qword_100013940);
            }

            v80 = &qword_100021F40;
            v81 = &qword_1000141B0;
            v82 = v78;
          }

          else
          {

            v80 = &qword_100021D00;
            v81 = &unk_100013910;
            v82 = &v136;
          }

          sub_100004974(v82, v80, v81);
LABEL_45:
          *(swift_allocObject() + 16) = xmmword_1000138F0;
          *(&v137 + 1) = &type metadata for DeepLinkUtil;
          v83 = AMSLogKey();
          v84 = v109;
          if (v83)
          {
            v85 = v83;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          static LogInterpolation.prefix(_:_:)();

          sub_100004720(&v136);
          LogInterpolation.init(stringLiteral:)();
          Log.error(_:)();

          sub_100004974(&v139, &qword_100021978, &qword_100013930);
          sub_100004974(&v142, &qword_100021988, &qword_100013940);
          v67 = v84;
          v68 = v33;
          return sub_100002880(v67, 1, 1, v68);
        }
      }

      sub_100004974(&v139, &qword_100021978, &qword_100013930);
      v66 = &v142;
    }

    else
    {
      sub_100004974(&v142, &qword_100021988, &qword_100013940);
      v66 = &v136;
    }

    sub_100004974(v66, &qword_100021988, &qword_100013940);
    v67 = v48;
    v68 = v50;
    return sub_100002880(v67, 1, 1, v68);
  }

  return sub_100002880(a4, 1, 1, v25);
}

uint64_t sub_100003D28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v10 + 16);
  v34(v12, a1, v9);
  if (sub_100002124(v12))
  {
    v13 = a1;
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Log();
    sub_1000046E8(v14, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1000138D0;
    v38 = &type metadata for DeepLinkUtil;
    v15 = AMSLogKey();
    if (!v15)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v33 = a2;
  v16 = URL.absoluteString.getter();
  v18 = v17;
  static CharacterSet.urlQueryAllowed.getter();
  v19._countAndFlagsBits = 0x2B3D26403A3F2F3BLL;
  v19._object = 0xEB00000000202C24;
  CharacterSet.remove(charactersIn:)(v19);
  v36 = v16;
  v37 = v18;
  sub_1000048C0();
  v20 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v22 = v21;
  (*(v6 + 8))(v8, v5);

  if (!v22)
  {
    v13 = a1;
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Log();
    sub_1000046E8(v27, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1000138D0;
    v38 = &type metadata for DeepLinkUtil;
    v15 = AMSLogKey();
    if (!v15)
    {
      goto LABEL_17;
    }

LABEL_15:
    v28 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_17:
    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&v36);
    LogInterpolation.init(stringLiteral:)();
    v38 = v9;
    v31 = sub_100004914(&v36);
    v34(v31, v13, v9);
    static LogInterpolation.sensitive(_:)();
    sub_100004974(&v36, &qword_100021D00, &unk_100013910);
    Log.error(_:)();

    return sub_100002880(v35, 1, 1, v9);
  }

  v23 = v20;
  if (qword_100021710 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Log();
  sub_1000046E8(v24, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  type metadata accessor for LogInterpolation();
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  v38 = &type metadata for DeepLinkUtil;
  v25 = AMSLogKey();
  if (v25)
  {
    v26 = v25;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(&v36);
  LogInterpolation.init(stringLiteral:)();
  v36 = v23;
  v37 = v22;

  v29._countAndFlagsBits = 46;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v38 = &type metadata for String;
  static LogInterpolation.sensitive(_:)();
  sub_100004974(&v36, &qword_100021D00, &unk_100013910);
  Log.default(_:)();

  sub_100004510(v23, v22, v33);
}

double sub_100004448@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_1000049CC(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_100004804(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1000044AC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_100004A44(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_100004804(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_100004510(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v6 = a3;
    v17 = a3;
  }

  else
  {
    v7 = [objc_opt_self() ams_sharedAccountStore];
    v17 = [v7 ams_activeiCloudAccount];

    if (!v17)
    {
      v17 = 0;
      goto LABEL_10;
    }

    v6 = v17;
  }

  v8 = a3;
  v9 = v6;
  if ([v9 isActive])
  {
    v10 = [v9 aa_needsToVerifyTerms];

    if ((v10 & 1) == 0)
    {
      v11 = 0xED00004C5255534DLL;
      v12 = 0x416465646F636E65;
      goto LABEL_11;
    }
  }

  else
  {
  }

LABEL_10:
  v11 = 0xEA00000000004C52;
  v12 = 0x556465646F636E65;
LABEL_11:
  v13._countAndFlagsBits = 63;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v12;
  v14._object = v11;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 61;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = a1;
  v16._object = a2;
  String.append(_:)(v16);
  URL.init(string:)();
}

uint64_t sub_1000046E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004720(void *a1)
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

uint64_t sub_100004794(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002838(&qword_100021960, &unk_100013900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004804(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100002838(a3, a4);
  sub_100004FAC();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1000048C0()
{
  result = qword_100021998;
  if (!qword_100021998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021998);
  }

  return result;
}

uint64_t *sub_100004914(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100004974(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100002838(a2, a3);
  sub_100004FAC();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1000049CC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100004D74(a1, a2, v4);
}

unint64_t sub_100004A44(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100004E28(a1, v4);
}

char *sub_100004A88(char *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_100004B74(v8, v7);
  v10 = *(type metadata accessor for URLQueryItem() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_100004C70(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_100004B74(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002838(&qword_1000219A0, qword_100013950);
  v4 = *(type metadata accessor for URLQueryItem() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100004C70(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for URLQueryItem(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for URLQueryItem();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

char *sub_100004D48(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[8 * a2] <= __dst)
  {
    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
}

unint64_t sub_100004D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100004E28(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100004EEC(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100004F48(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

Swift::Int sub_100004FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  URL.scheme.getter();
  if (!v6)
  {
    return 0;
  }

  v7 = sub_100005654();

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  v8 = sub_100005320(a1, a2, a3);
  v9 = sub_10000505C(v8);

  return v9;
}

Swift::Int sub_10000505C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002838(&qword_100021A70, "v6");
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

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
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100004804(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000577C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000577C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000577C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_10000577C(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_100005320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002838(&qword_100021A60, "t6");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100013980;
  strcpy((inited + 32), "nativeHandling");
  *(inited + 47) = -18;
  v6 = URL.scheme.getter();
  v8 = sub_1000055C0(v6, v7);

  *(inited + 48) = v8 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x656372756F73;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD000000000000018;
  *(inited + 104) = 0x8000000100013970;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x707954746E657665;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = 1802398060;
  *(inited + 152) = 0xE400000000000000;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 7107189;
  *(inited + 184) = 0xE300000000000000;
  v9 = URL.absoluteString.getter();
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v9;
  *(inited + 200) = v10;
  v11 = Dictionary.init(dictionaryLiteral:)();
  if (a3)
  {
    *(&v21 + 1) = &type metadata for String;
    *&v20 = a2;
    *(&v20 + 1) = a3;
    sub_10000577C(&v20, v19);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000578C(v19, 0x7250656372756F73, 0xED0000737365636FLL, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    sub_100005714(&v20);
    v13 = sub_1000049CC(0x7250656372756F73, 0xED0000737365636FLL);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v11 + 24);
      sub_100002838(&qword_100021A68, "r6");
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v16, v17);

      sub_10000577C((*(v11 + 56) + 32 * v15), v19);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      memset(v19, 0, sizeof(v19));
    }

    sub_100005714(v19);
  }

  return v11;
}

uint64_t sub_1000055C0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_100005954();
  v5 = v5 && v4 == 0xE600000000000000;
  if (v5)
  {
    return 0;
  }

  sub_100005940();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  if (v2 == 0x69752D736D61 && a2 == 0xE600000000000000)
  {
    return 1;
  }

  sub_100005940();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100005654()
{
  sub_100005954();
  v2 = v2 && v1 == 0xE600000000000000;
  if (v2)
  {
    return 1;
  }

  v3 = v1;
  sub_100005940();
  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5 = v0 == 0x69752D736D61 && v3 == 0xE600000000000000;
  v6 = v5;
  if ((v4 & 1) != 0 || v6)
  {
    return 1;
  }

  sub_100005940();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100005714(uint64_t a1)
{
  v2 = sub_100002838(&qword_100021D00, &unk_100013910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_10000577C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_10000578C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000049CC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100002838(&qword_100021A68, "r6");
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_1000049CC(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = (v20[7] + 32 * v16);
    sub_100004720(v21);

    return sub_10000577C(a1, v21);
  }

  else
  {
    sub_1000058D4(v16, a2, a3, a1, v20);
  }
}

_OWORD *sub_1000058D4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000577C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_10000596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(_UIContentUnavailableView);
  result = sub_100006770();
  if (result)
  {
    *&v3[OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_contentUnavailableView] = result;
    *&v3[OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_error] = a1;
    v10 = &v3[OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_retryAction];
    *v10 = a2;
    *(v10 + 1) = a3;
    swift_errorRetain();
    sub_1000066F8(a2, a3);
    v11 = type metadata accessor for ErrorViewController();
    v22.receiver = v4;
    v22.super_class = v11;
    v12 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0);
    v13 = qword_100021710;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Log();
    sub_1000046E8(v15, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1000138D0;
    v21 = v11;
    v20[0] = v14;
    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v20);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v21 = &type metadata for String;
    v20[0] = v18;
    v20[1] = v19;
    static LogInterpolation.safe(_:)();
    sub_100005714(v20);
    Log.error(_:)();

    sub_100006708(a2, a3);

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100005C10()
{
  v1 = objc_allocWithZone(_UIContentUnavailableView);
  v2 = sub_100006770();
  if (!v2)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_contentUnavailableView) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100005CF8()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationItem];

    return v3;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for ErrorViewController();
    v5 = objc_msgSendSuper2(&v6, "navigationItem");

    return v5;
  }
}

void sub_100005D98(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v4, "loadView");
  v2 = [v1 view];
  v3 = [objc_opt_self() ams_defaultPlatformBackgroundColor];
  sub_1000067A0(v3, "setBackgroundColor:");
}

void sub_100005E70(uint64_t a1)
{
  v2.receiver = v1;
  v2.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  sub_100005FEC();
}

id sub_100005EF0(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v13, "viewWillLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_contentUnavailableView];
  v3 = [v1 view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  return [v2 setFrame:{v5, v7, v9, v11}];
}

void sub_100005FEC()
{
  v1 = [v0 navigationItem];
  [v1 ams_configureWithTransparentBackground];

  sub_100006044();
}

void sub_100006044()
{
  type metadata accessor for Localizations();
  v1 = sub_1000067B8(0xD000000000000015, 0x8000000100014530);
  v3 = v2;
  v4 = sub_1000067B8(0xD000000000000014, 0x8000000100014550);
  sub_100006148(v1, v3, 0, 0, v4, v5);

  v6 = [v0 view];
  [v6 addSubview:*&v0[OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_contentUnavailableView]];
}

void sub_100006148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_contentUnavailableView);
  v13 = [v12 buttonTitle];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (!a6)
    {
LABEL_31:

      goto LABEL_32;
    }

    if (v15 == a5 && v17 == a6)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (a6)
  {
    goto LABEL_32;
  }

  v20 = [v12 message];
  if (!v20)
  {
    if (!a4)
    {
      goto LABEL_23;
    }

LABEL_32:
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100006750;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000EB54;
    aBlock[3] = &unk_10001CBD8;
    v35 = _Block_copy(aBlock);

    sub_1000067A0(v36, "setButtonAction:");
    _Block_release(v35);
    if (a6)
    {
      v37 = String._bridgeToObjectiveC()();
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    sub_1000067A0(v37, "setButtonTitle:");

    if (a4)
    {
      v39 = String._bridgeToObjectiveC()();
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    sub_1000067A0(v39, "setMessage:");

    if (a2)
    {
      v41 = String._bridgeToObjectiveC()();
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    sub_1000067A0(v41, "setTitle:");

    return;
  }

  v21 = v20;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (!a4)
  {
    goto LABEL_31;
  }

  if (v22 == a3 && v24 == a4)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_23:
  v27 = [v12 title];
  if (!v27)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (!a2)
  {
    goto LABEL_31;
  }

  if (v29 != a1 || v31 != a2)
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      return;
    }

    goto LABEL_32;
  }
}

void sub_100006480(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_retryAction);
    v4 = *(Strong + OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_retryAction + 8);
    sub_1000066F8(v3, v4);

    if (v3)
    {
      v3();
      sub_100006708(v3, v4);
    }
  }
}

id sub_1000065A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ErrorViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10000665C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithFrame:v13 title:a7 style:{a1, a2, a3, a4}];

  return v14;
}

uint64_t sub_1000066F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006708(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006718()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100006770()
{

  return sub_10000665C(0.0, 0.0, 0.0, 0.0, 0, 0xE000000000000000, 0);
}

id sub_1000067A0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1000067B8(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v9._object = 0xE000000000000000;
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100006874()
{
  v0 = type metadata accessor for Log();
  sub_1000068EC(v0, qword_100022D00);
  sub_1000046E8(v0, qword_100022D00);
  return Log.init(subsystem:category:)();
}

uint64_t *sub_1000068EC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100006950(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

Swift::Int sub_100006A08(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100006A60(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100006AB4()
{
  result = qword_100021B50;
  if (!qword_100021B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B50);
  }

  return result;
}

unint64_t sub_100006B1C()
{
  result = qword_100021B58;
  if (!qword_100021B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B58);
  }

  return result;
}

Swift::Int sub_100006B70(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t sub_100006BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100006C14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006C3C();
  *a1 = result;
  return result;
}

uint64_t sub_100006C50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100006C80(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100006C88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100007008(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100006CB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100006CE8(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_100006CF8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_100006D24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100006D58(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100006D58(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_100006D7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100006DB0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100006DB0(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_100006E00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100006E30(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_100006EA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100006EBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100006BB4(a1);
  *a2 = result;
  return result;
}

unint64_t sub_100006F00()
{
  result = qword_100021B60;
  if (!qword_100021B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B60);
  }

  return result;
}

unint64_t sub_100006F58()
{
  result = qword_100021B68;
  if (!qword_100021B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B68);
  }

  return result;
}

unint64_t sub_100006FB0()
{
  result = qword_100021B70;
  if (!qword_100021B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B70);
  }

  return result;
}

Swift::Int sub_100007070(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000070F0(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100007154(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000071DC(uint64_t a1)
{
  if (!a1)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v3 = 0;
LABEL_5:
    v4 = 1;
    return v3 | (v4 << 8);
  }

  v5 = qword_100021710;

  if (v5 != -1)
  {
    sub_100009190(&qword_100021710);
  }

  v6 = type metadata accessor for Log();
  sub_1000046E8(v6, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v7 = type metadata accessor for LogInterpolation();
  sub_1000091B0(v7);
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  v12 = type metadata accessor for RemoteEngagementPresenter();
  v11[0] = v1;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v11);
  LogInterpolation.init(stringLiteral:)();
  v12 = sub_100002838(&qword_100021D48, &qword_100013ED0);
  v11[0] = a1;
  static LogInterpolation.safe(_:)();
  sub_100005714(v11);
  Log.default(_:)();

  v3 = 0;
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_1000073E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Log();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v9 = 1;
    v8 = 3;
    return v8 | (v9 << 8);
  }

  if (a1 == 1)
  {
    v8 = 1;
LABEL_4:
    v9 = 1;
    return v8 | (v9 << 8);
  }

  v48[0] = 0xD000000000000015;
  v48[1] = 0x8000000100014870;
  sub_10000923C();
  sub_1000091EC();
  sub_100004F48(&v49);
  if (!v54)
  {
    sub_100005714(v53);
    goto LABEL_10;
  }

  sub_100009230();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v9 = 1;
    v8 = 2;
    return v8 | (v9 << 8);
  }

  v10 = v48[0];
  v11 = v48[1];
  v12 = sub_100008CB8(0, &qword_100021D28, NSKeyedUnarchiver_ptr);
  v13 = sub_100008CB8(0, &qword_100021D30, AMSEngagementRequest_ptr);
  v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v43 = v13;
  v44 = v12;
  v47 = v11;
  if (!v14)
  {
    sub_100008C60(v10, v47);
    goto LABEL_10;
  }

  v45 = v14;
  strcpy(v48, "bagData");
  v48[1] = 0xE700000000000000;
  sub_10000923C();
  sub_1000091EC();
  sub_100004F48(&v49);
  if (!v54)
  {
    sub_100005714(v53);
LABEL_19:
    v46 = [objc_opt_self() createBagForSubProfile];
    goto LABEL_20;
  }

  sub_100009230();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v16 = v48[0];
  v17 = v48[1];
  sub_100008CB8(0, &qword_100021D40, AMSSnapshotBag_ptr);
  v46 = sub_100007BEC(v16, v17);
  if (!v46)
  {
    goto LABEL_19;
  }

LABEL_20:
  strcpy(v48, "clientInfoData");
  HIBYTE(v48[1]) = -18;
  sub_10000923C();
  sub_1000091EC();
  sub_100004F48(&v49);
  v42 = v10;
  if (!v54)
  {
    sub_100005714(v53);
    goto LABEL_24;
  }

  sub_100009230();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v38 = 0;
    goto LABEL_25;
  }

  v18 = v48[0];
  v19 = v48[1];
  sub_100008CB8(0, &qword_100021D38, AMSProcessInfo_ptr);
  v41 = v18;
  v44 = v19;
  v38 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  sub_100008C60(v41, v44);
  if (!v38)
  {
    sub_100008C60(v42, v47);

    swift_unknownObjectRelease();
    v8 = 0;
    goto LABEL_4;
  }

  v39 = v38;
LABEL_25:
  strcpy(v48, "attachedToApp");
  HIWORD(v48[1]) = -4864;
  sub_10000923C();
  sub_1000091EC();
  sub_100004F48(&v49);
  if (!v54)
  {
    sub_100005714(v53);
    goto LABEL_29;
  }

  sub_100008CB8(0, &qword_100021D20, NSNumber_ptr);
  sub_100009230();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    LODWORD(v44) = 0;
    goto LABEL_30;
  }

  v20 = v48[0];
  LODWORD(v44) = [v48[0] BOOLValue];

LABEL_30:
  if (qword_100021710 != -1)
  {
    sub_100009190(&qword_100021710);
  }

  v21 = v38;
  v22 = sub_1000046E8(v4, qword_100022D00);
  (*(v5 + 16))(v7, v22, v4);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v23 = type metadata accessor for LogInterpolation();
  sub_1000091B0(v23);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100013CE0;
  v41 = v24;
  v52 = type metadata accessor for RemoteEngagementPresenter();
  v49 = v2;

  v25 = AMSLogKey();
  if (v25)
  {
    v26 = v25;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v27 = v47;
  static LogInterpolation.prefix(_:_:)();

  sub_100004720(&v49);
  LogInterpolation.init(stringLiteral:)();
  LogInterpolation.init(stringLiteral:)();
  v52 = v43;
  v49 = v45;
  v28 = v45;
  static LogInterpolation.safe(_:)();
  sub_100005714(&v49);
  LogInterpolation.init(stringLiteral:)();
  v29 = v46;
  if (v46)
  {
    ObjectType = swift_getObjectType();
    v31 = v29;
  }

  else
  {
    v31 = 0;
    ObjectType = 0;
    v50 = 0;
    v51 = 0;
  }

  v49 = v31;
  v52 = ObjectType;
  swift_unknownObjectRetain();
  static LogInterpolation.safe(_:)();
  sub_100005714(&v49);
  LogInterpolation.init(stringLiteral:)();
  if (v38)
  {
    v32 = sub_100008CB8(0, &qword_100021D38, AMSProcessInfo_ptr);
    v33 = v38;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v50 = 0;
    v51 = 0;
  }

  v49 = v33;
  v52 = v32;
  v34 = v33;
  static LogInterpolation.safe(_:)();
  sub_100005714(&v49);
  LogInterpolation.init(stringLiteral:)();
  v52 = &type metadata for Bool;
  v35 = v44;
  LOBYTE(v49) = v44;
  static LogInterpolation.safe(_:)();
  sub_100005714(&v49);
  Log.default(_:)();
  sub_100008C60(v42, v27);

  (*(v5 + 8))(v7, v4);
  *(v2 + 24) = v35;
  *(v2 + 32) = v46;
  swift_unknownObjectRelease();
  v36 = *(v2 + 40);
  *(v2 + 40) = v21;

  v37 = *(v2 + 56);
  *(v2 + 56) = v45;

  v8 = 0;
  v9 = 0;
  return v8 | (v9 << 8);
}

id sub_100007BEC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  sub_100008C60(a1, a2);
  return v6;
}

uint64_t sub_100007C64(uint64_t a1)
{
  v2 = v1;
  if (qword_100021710 != -1)
  {
LABEL_23:
    sub_100009190(&qword_100021710);
  }

  v4 = type metadata accessor for Log();
  v106 = sub_1000046E8(v4, qword_100022D00);
  v5 = sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v6 = type metadata accessor for LogInterpolation();
  sub_1000091B0(v6);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v105 = *(v7 + 72);
  v101 = *(v8 + 80);
  v102 = v5;
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  v104 = v9;
  v100 = type metadata accessor for RemoteEngagementPresenter();
  v109 = v100;
  v107 = v2;
  v108[0] = v2;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v108);
  LogInterpolation.init(stringLiteral:)();
  v109 = sub_100002838(&unk_100021D10, &unk_100013EC0);
  v108[0] = a1;

  static LogInterpolation.safe(_:)();
  sub_100005714(v108);
  Log.default(_:)();

  v2 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v99 = v104 + 2 * v105;
  v68 = "Home button tapped";
  v88 = "riggered. Button actions:";
  v82 = "Home button action triggered";
  v85 = AMSErrorDomain;
  v79 = "View Service Failed";
  v76 = AMSErrorUserInfoKeyEngagementPresented;

  v16 = 0;
  v94 = xmmword_1000138F0;
  v71 = xmmword_100013CF0;
  v17 = v107;
  v91 = a1;
  while (v14)
  {
LABEL_12:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    if ((*(*(a1 + 48) + ((v16 << 9) | (8 * v19))) & 0x10) != 0)
    {
      v20 = *(v17 + 24);
      if (v20 == 2 || (v20 & 1) == 0)
      {
        v38 = swift_allocObject();
        sub_1000091C0(v38, v39, v40, v41, v42, v43, v44, v45, v65, v68, v71, *(&v71 + 1), v76, v79, v82, v85, v88, v91, v94);
        v46 = AMSLogKey();
        if (v46)
        {
          v54 = v46;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_100009208(v46, v47, v48, v49, v50, v51, v52, v53, v67, v70, v73, v75, v78, v81, v84, v87, v90, v93, v96, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]);

        sub_100004720(v108);
        LogInterpolation.init(stringLiteral:)();
        Log.default(_:)();

        v103 = v85;
        v55 = String._bridgeToObjectiveC()();
        v56 = String._bridgeToObjectiveC()();
        sub_100002838(&qword_100021A60, "t6");
        inited = swift_initStackObject();
        *(inited + 16) = v71;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v58;
        v59 = sub_100008CB8(0, &qword_100021D20, NSNumber_ptr);
        v60.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
        *(inited + 72) = v59;
        *(inited + 48) = v60;
        Dictionary.init(dictionaryLiteral:)();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v62 = AMSCustomError();

        v17 = v107;
        v108[0] = 0;
        v108[1] = v62;
        v109 = 0;
        v110 = 0;
        v108[2] = 0;
        v111 = 0;
        v63 = v62;
        SyncEvent.post(_:)();

        a1 = v91;
      }

      else
      {
        v21 = swift_allocObject();
        sub_1000091C0(v21, v22, v23, v24, v25, v26, v27, v28, v65, v68, v71, *(&v71 + 1), v76, v79, v82, v85, v88, v91, v94);
        v29 = AMSLogKey();
        if (v29)
        {
          v37 = v29;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_100009208(v29, v30, v31, v32, v33, v34, v35, v36, v66, v69, v72, v74, v77, v80, v83, v86, v89, v92, v95, v97, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]);

        sub_100004720(v108);
        LogInterpolation.init(stringLiteral:)();
        Log.default(_:)();

        v17 = v107;
      }
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v18 >= v15)
    {
    }

    v14 = *(v2 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_12;
    }
  }
}

void sub_100008208()
{
  v1 = v0[4];
  if (v1 && (v2 = v0[7]) != 0)
  {
    v3 = v0[5];
    v4 = swift_allocObject();
    swift_weakInit();
    v14 = v2;
    v15 = v1;
    v16 = v3;
    v17 = sub_100008C58;
    v18 = v4;
    v19 = 1;
    v5 = v3;

    swift_unknownObjectRetain();
    v6 = v2;
    SyncEvent.post(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100021710 != -1)
    {
      sub_100009190(&qword_100021710);
    }

    v7 = type metadata accessor for Log();
    sub_1000046E8(v7, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v8 = type metadata accessor for LogInterpolation();
    sub_1000091B0(v8);
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v17 = type metadata accessor for RemoteEngagementPresenter();
    v14 = v0;

    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&v14);
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    sub_100008BC4();
    v11 = swift_allocError();
    *v12 = 1;
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = v11;
    v15 = sub_100008C50;
    v16 = v13;
    v17 = 0;
    v18 = 0;
    v19 = 2;

    SyncEvent.post(_:)();
  }
}

uint64_t sub_1000084E0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100008BC4();
    swift_allocError();
    *v2 = 1;
    SyncEvent.post(_:)();
  }

  return result;
}

uint64_t sub_100008588(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Log();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v26 = a1;
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v27 = a2;
    v11 = sub_1000046E8(v5, qword_100022D00);
    (*(v6 + 16))(v8, v11, v5);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1000138E0;
    *(&v31 + 1) = type metadata accessor for RemoteEngagementPresenter();
    *&v30 = v10;

    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&v30);
    LogInterpolation.init(stringLiteral:)();
    v14 = v26;
    if (v26)
    {
      v15 = sub_100008CB8(0, &qword_100021D08, AMSEngagementResult_ptr);
      v16 = v14;
    }

    else
    {
      v16 = 0;
      v15 = 0;
      *(&v30 + 1) = 0;
      *&v31 = 0;
    }

    *&v30 = v16;
    *(&v31 + 1) = v15;
    v17 = v14;
    static LogInterpolation.safe(_:)();
    sub_100005714(&v30);
    LogInterpolation.init(stringLiteral:)();
    v18 = v27;
    if (v27)
    {
      swift_getErrorValue();
      v19 = v28;
      v20 = v29;
      *(&v31 + 1) = v29;
      v21 = sub_100004914(&v30);
      v22 = *(*(v20 - 8) + 16);
      v23 = v19;
      v24 = v20;
      v14 = v26;
      v18 = v27;
      v22(v21, v23, v24);
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    static LogInterpolation.safe(_:)();
    sub_100005714(&v30);
    Log.default(_:)();

    (*(v6 + 8))(v8, v5);
    *&v30 = v14;
    *(&v30 + 1) = v18;
    v32 = 0;
    v31 = 0uLL;
    v33 = 0;
    v25 = v17;
    swift_errorRetain();
    SyncEvent.post(_:)();
  }

  return result;
}

uint64_t sub_100008958()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100008990()
{
  sub_100008958();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_1000089E8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100008A0C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100008A20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100008A60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_100008ACC()
{
  result = qword_100021CE0;
  if (!qword_100021CE0)
  {
    type metadata accessor for RemoteEngagementPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021CE0);
  }

  return result;
}

uint64_t sub_100008B20()
{
  sub_100002838(&qword_100021CE8, &qword_100013EA8);
  swift_allocObject();
  *(v0 + 16) = SyncEvent.init()();
  *(v0 + 24) = 2;
  *(v0 + 56) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  return v0;
}

void sub_100008B84()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    sub_100008208();
    *(v0 + 48) = 1;
  }
}

unint64_t sub_100008BC4()
{
  result = qword_100021CF8;
  if (!qword_100021CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021CF8);
  }

  return result;
}

uint64_t sub_100008C18()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008C60(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100008CB8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100008D34(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100008DBC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100008E88);
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

uint64_t getEnumTagSinglePayload for RemoteEngagementPresenter.ActivationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RemoteEngagementPresenter.ActivationError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100009014);
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

unint64_t sub_100009058()
{
  result = qword_100021D50;
  if (!qword_100021D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D50);
  }

  return result;
}

unint64_t sub_1000090B0()
{
  result = qword_100021D58;
  if (!qword_100021D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D58);
  }

  return result;
}

unint64_t sub_100009108()
{
  result = qword_100021D60;
  if (!qword_100021D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D60);
  }

  return result;
}

uint64_t sub_100009190(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000091C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *(a1 + 16) = a19;
}

double sub_1000091EC()
{

  return sub_1000044AC(v0, (v1 - 128), v1 - 168);
}

uint64_t sub_100009208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000923C()
{

  return AnyHashable.init<A>(_:)(v0 - 184);
}

uint64_t sub_100009258()
{
  v1 = *&v0[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection];
  if (!v1)
  {
    return 0;
  }

  sub_10000EBA8();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  aBlock[4] = sub_10000E010;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000095C8;
  aBlock[3] = &unk_10001D188;
  v3 = _Block_copy(aBlock);
  v4 = v1;
  v5 = v0;

  v6 = [v4 remoteObjectProxyWithErrorHandler:v3];
  _Block_release(v3);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100002838(&qword_100021E60, &qword_100014178);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000093AC(uint64_t a1, void *a2)
{
  if (qword_100021710 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Log();
  sub_1000046E8(v3, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  type metadata accessor for LogInterpolation();
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  v11 = type metadata accessor for RemoteEngagementViewController();
  v10[0] = a2;
  v4 = a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v10);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v11 = v9;
  v7 = sub_100004914(v10);
  (*(*(v9 - 8) + 16))(v7);
  static LogInterpolation.safe(_:)();
  sub_100005714(v10);
  Log.error(_:)();
}

void sub_1000095C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100009630()
{
  sub_10000EBA8();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v11 = sub_10000E008;
  v12 = v1;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v10 = sub_100009A6C;
  *(&v10 + 1) = &unk_10001D138;
  v2 = _Block_copy(&aBlock);
  v3 = v0;

  v4 = [v3 _remoteViewControllerProxyWithErrorHandler:v2];
  _Block_release(v2);
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  aBlock = v7;
  v10 = v8;
  if (*(&v8 + 1))
  {
    sub_100002838(&qword_100021E58, &unk_100014168);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100005714(&aBlock);
    return 0;
  }
}

uint64_t sub_100009794(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Log();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100021710 != -1)
  {
    swift_once();
  }

  v8 = sub_1000046E8(v4, qword_100022D00);
  (*(v5 + 16))(v7, v8, v4);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  type metadata accessor for LogInterpolation();
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  *(&v19 + 1) = type metadata accessor for RemoteEngagementViewController();
  *&v18 = a2;
  v9 = a2;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(&v18);
  LogInterpolation.init(stringLiteral:)();
  if (a1)
  {
    swift_getErrorValue();
    v12 = v16;
    v13 = v17;
    *(&v19 + 1) = v17;
    v14 = sub_100004914(&v18);
    (*(*(v13 - 8) + 16))(v14, v12, v13);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  static LogInterpolation.safe(_:)();
  sub_100005714(&v18);
  Log.error(_:)();

  return (*(v5 + 8))(v7, v4);
}

void sub_100009A6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100009AD8(void *a1, void (*a2)(void))
{
  v3 = v2;
  if (a1 && (v6 = [a1 xpcEndpoint]) != 0)
  {
    v7 = v6;
    v8 = sub_10000EA68(a1);
    v9 = sub_1000071DC(v8);

    if ((v9 & 0x100) != 0)
    {
      if (qword_100021710 != -1)
      {
        sub_100009190(&qword_100021710);
      }

      v21 = type metadata accessor for Log();
      sub_1000046E8(v21, qword_100022D00);
      sub_100002838(&qword_100021CF0, &unk_100013EB0);
      v22 = type metadata accessor for LogInterpolation();
      sub_1000091B0(v22);
      sub_10000EC10();
      *(swift_allocObject() + 16) = xmmword_1000138D0;
      v27 = type metadata accessor for RemoteEngagementViewController();
      v26[0] = v3;
      v23 = v3;
      v24 = AMSLogKey();
      if (v24)
      {
        v25 = v24;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004720(v26);
      LogInterpolation.init(stringLiteral:)();
      v27 = &type metadata for RemoteEngagementPresenter.ConfigurationError;
      LOBYTE(v26[0]) = v9 & 1;
      static LogInterpolation.safe(_:)();
      sub_100005714(v26);
      Log.error(_:)();
    }

    else
    {
      if (qword_100021710 != -1)
      {
        sub_100009190(&qword_100021710);
      }

      v10 = type metadata accessor for Log();
      sub_1000046E8(v10, qword_100022D00);
      sub_100002838(&qword_100021CF0, &unk_100013EB0);
      v11 = type metadata accessor for LogInterpolation();
      sub_1000091B0(v11);
      sub_10000EC10();
      *(swift_allocObject() + 16) = xmmword_1000138F0;
      v27 = type metadata accessor for RemoteEngagementViewController();
      v26[0] = v3;
      v12 = v3;
      v13 = AMSLogKey();
      if (v13)
      {
        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004720(v26);
      LogInterpolation.init(stringLiteral:)();
      Log.default(_:)();
    }

    sub_10000B72C(v7);
    sub_10000B1A8();
    sub_10000B33C();
    if (a2)
    {
      a2();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100021710 != -1)
    {
      sub_100009190(&qword_100021710);
    }

    v15 = type metadata accessor for Log();
    sub_1000046E8(v15, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    sub_10000EC8C();
    v16 = type metadata accessor for LogInterpolation();
    sub_1000091B0(v16);
    sub_10000EC10();
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v27 = type metadata accessor for RemoteEngagementViewController();
    v26[0] = v3;
    v17 = v3;
    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v26);
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    if (a2)
    {
      return (a2)(result);
    }
  }

  return result;
}

uint64_t sub_10000A0A0(void *a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  if (a1)
  {
    v5 = sub_10000EA68(a1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000073E4(v5);

  if ((v6 & 0x100) != 0)
  {
    if (qword_100021710 != -1)
    {
      sub_100009190(&qword_100021710);
    }

    v12 = type metadata accessor for Log();
    sub_1000046E8(v12, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    sub_10000EC8C();
    v13 = type metadata accessor for LogInterpolation();
    sub_1000091B0(v13);
    sub_10000EC10();
    *(swift_allocObject() + 16) = xmmword_1000138D0;
    v19 = type metadata accessor for RemoteEngagementViewController();
    v18[0] = v3;
    v14 = v3;
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v18);
    LogInterpolation.init(stringLiteral:)();
    v19 = &type metadata for RemoteEngagementPresenter.ActivationError;
    LOBYTE(v18[0]) = v6;
    static LogInterpolation.safe(_:)();
    sub_100005714(v18);
    Log.error(_:)();
  }

  else
  {
    if (qword_100021710 != -1)
    {
      sub_100009190(&qword_100021710);
    }

    v7 = type metadata accessor for Log();
    sub_1000046E8(v7, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    sub_10000EC8C();
    v8 = type metadata accessor for LogInterpolation();
    sub_1000091B0(v8);
    sub_10000EC10();
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v19 = type metadata accessor for RemoteEngagementViewController();
    v18[0] = v3;
    v9 = v3;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v18);
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_10000A4D8(uint64_t result)
{
  if (result)
  {
    sub_10000A540(result);
    v2 = sub_10000A848(v1);
    sub_100007C64(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10000A540(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = &_swiftEmptyArrayStorage;
    sub_10000E950(0, v2 & ~(v2 >> 63), 0);
    v33 = &_swiftEmptyArrayStorage;
    v35 = sub_100011BDC(v1);
    v36 = v3;
    v37 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v8 = v35;
        v7 = v36;
        v9 = v37;
        v10 = v1;
        sub_100011C94(v35, v36, v37, v1);
        v12 = v11;
        v13 = [v11 events];

        v14 = v33;
        v38 = v33;
        v16 = v33[2];
        v15 = v33[3];
        if (v16 >= v15 >> 1)
        {
          sub_10000E950((v15 > 1), v16 + 1, 1);
          v14 = v38;
        }

        v14[2] = v16 + 1;
        v14[v16 + 4] = v13;
        v33 = v14;
        if (v32)
        {
          if (!v9)
          {
            goto LABEL_36;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v21 = v31;
          sub_100002838(&qword_100021E90, &qword_100014188);
          v22 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v22(v34, 0);
        }

        else
        {
          if (v9)
          {
            goto LABEL_37;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v10;
          v17 = 1 << *(v10 + 32);
          if (v8 >= v17)
          {
            goto LABEL_32;
          }

          v18 = v8 >> 6;
          v19 = *(v30 + 8 * (v8 >> 6));
          if (((v19 >> v8) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v10 + 36) != v7)
          {
            goto LABEL_34;
          }

          v20 = v19 & (-2 << (v8 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v21 = v31;
          }

          else
          {
            v23 = v18 << 6;
            v24 = v18 + 1;
            v25 = (v29 + 8 * v18);
            v21 = v31;
            while (v24 < (v17 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_10000EAD4(v8, v7, 0);
                v17 = __clz(__rbit64(v26)) + v23;
                goto LABEL_27;
              }
            }

            sub_10000EAD4(v8, v7, 0);
          }

LABEL_27:
          v28 = *(v1 + 36);
          v35 = v17;
          v36 = v28;
          v37 = 0;
        }

        if (v5 == v21)
        {
          sub_10000EAD4(v35, v36, v37);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_10000A848(uint64_t a1)
{
  sub_10000E0C8();
  v2 = Set.init(minimumCapacity:)();
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_10000E180(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void sub_10000A974()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v4, "loadView");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_10000AA5C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v3, "viewDidLoad");
  sub_10000AFA0();
  type metadata accessor for RemoteEngagementPresenter();
  sub_10000EB7C();
  sub_10000E018(v1, v2, &unk_100013E30);
  ViewControllerPresenter.viewDidLoad()();
}

void sub_10000AB9C(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v3, "viewDidAppear:", a1 & 1);
  sub_10000B4D0();
  sub_100008B84();
}

uint64_t sub_10000AC48(char a1)
{
  v3 = type metadata accessor for ViewWillDisappearReason();
  sub_10000EB94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000EC1C();
  v9 = v8 - v7;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v13, "viewWillDisappear:", a1 & 1);
  static ViewWillDisappearReason.inferred(for:)();
  type metadata accessor for RemoteEngagementPresenter();
  sub_10000EB7C();
  sub_10000E018(v10, v11, &unk_100013E30);
  ViewControllerPresenter.viewWillDisappear(forReason:)();
  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_10000ADC8(uint64_t a1, SEL *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = a1;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v12, *a2, v6 & 1);
  v7 = type metadata accessor for RemoteEngagementPresenter();
  sub_10000EB7C();
  v10 = sub_10000E018(v8, v9, &unk_100013E30);
  return a3(v7, v10);
}

void sub_10000AED4(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v4, "didReceiveMemoryWarning");
  type metadata accessor for RemoteEngagementPresenter();
  sub_10000EB7C();
  sub_10000E018(v2, v3, &unk_100013E30);
  ViewControllerPresenter.viewDidReceiveMemoryWarning()();
}

uint64_t sub_10000AFA0()
{
  v0 = sub_100002838(&unk_100021E40, qword_100014150);
  sub_10000EB94();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v9[-1] - v4;
  sub_10000EBA8();
  v6 = swift_allocObject();
  sub_10000EC3C(v6);
  sub_100002838(&qword_100021CE8, &qword_100013EA8);
  sub_10000DFC0(&qword_100021E50, &qword_100021CE8, &qword_100013EA8, &protocol conformance descriptor for SyncEvent<A>);

  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  EventEmitter.addObserver(on:singleUse:_:)();

  sub_100004720(v9);
  return (*(v2 + 8))(v5, v0);
}

void sub_10000B140(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10000D704(&v5);
  }
}

void sub_10000B1A8()
{
  v0 = sub_100009630();
  if (v0)
  {
    [v0 setAllowsAlertStacking:1];
    sub_10000ECA4();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100021710 != -1)
    {
      sub_100009190(&qword_100021710);
    }

    v2 = type metadata accessor for Log();
    sub_1000046E8(v2, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v3 = sub_10000EC74();
    sub_1000091B0(v3);
    *(sub_10000EBB4() + 16) = xmmword_1000138F0;
    type metadata accessor for RemoteEngagementViewController();
    sub_10000ECBC();
    v4 = AMSLogKey();
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000EC58(v6);

    sub_100004720(v6);
    sub_10000EC2C();
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    sub_10000ECA4();
  }
}

void sub_10000B33C()
{
  v0 = sub_100009630();
  if (v0)
  {
    [v0 setDesiredHardwareButtonEvents:16];
    sub_10000ECA4();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100021710 != -1)
    {
      sub_100009190(&qword_100021710);
    }

    v2 = type metadata accessor for Log();
    sub_1000046E8(v2, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v3 = sub_10000EC74();
    sub_1000091B0(v3);
    *(sub_10000EBB4() + 16) = xmmword_1000138F0;
    type metadata accessor for RemoteEngagementViewController();
    sub_10000ECBC();
    v4 = AMSLogKey();
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000EC58(v6);

    sub_100004720(v6);
    sub_10000EC2C();
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    sub_10000ECA4();
  }
}

void sub_10000B4D0()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  v3 = [v1 window];

  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 systemBlueColor];
    [v5 setTintColor:v6];

    v7 = [v5 _rootSheetPresentationController];
    if (v7)
    {
      v13 = v7;
      [v7 _setShouldScaleDownBehindDescendantSheets:0];

      return;
    }

LABEL_13:
    __break(1u);
    return;
  }

  if (qword_100021710 != -1)
  {
    sub_100009190(&qword_100021710);
  }

  v8 = type metadata accessor for Log();
  sub_1000046E8(v8, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v9 = sub_10000EC74();
  sub_1000091B0(v9);
  *(sub_10000EBB4() + 16) = xmmword_1000138F0;
  v14[3] = type metadata accessor for RemoteEngagementViewController();
  v14[0] = v0;
  v10 = v0;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000EC58(v14);

  sub_100004720(v14);
  sub_10000EC2C();
  LogInterpolation.init(stringLiteral:)();
  Log.error(_:)();
}

void sub_10000B72C(uint64_t a1)
{
  v3 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
  [v3 _setEndpoint:a1];
  v4 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:v3];
  v5 = OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection;
  v6 = *(v1 + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection);
  *(v1 + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection) = v4;
  v7 = v4;

  if (v7)
  {
    v8 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___AMSSystemEngagementTaskRemoteInterface];
    [v7 setExportedInterface:v8];
  }

  v9 = *(v1 + v5);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL___AMSSystemEngagementTaskClientInterface];
  [v11 setRemoteObjectInterface:v12];

  v13 = *(v1 + v5);
  if (!v13)
  {
    goto LABEL_9;
  }

  [v13 setExportedObject:v1];
  v14 = *(v1 + v5);
  if (v14 && (sub_10000EBA8(), v15 = swift_allocObject(), swift_unknownObjectWeakInit(), v27 = sub_10000DFA8, v28 = v15, v23 = _NSConcreteStackBlock, v24 = 1107296256, v25 = sub_10000EB54, v26 = &unk_10001D0C0, v16 = _Block_copy(&v23), v17 = v14, , [v17 setInvalidationHandler:v16], _Block_release(v16), v17, (v18 = *(v1 + v5)) != 0))
  {
    sub_10000EBA8();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = sub_10000DFB0;
    v28 = v19;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10000EB54;
    v26 = &unk_10001D0E8;
    v20 = _Block_copy(&v23);
    v21 = v18;

    [v21 setInterruptionHandler:v20];
    _Block_release(v20);

    v13 = *(v1 + v5);
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

LABEL_9:
  [v13 resume];
  v22 = sub_100009258();
  if (v22)
  {
    [v22 initializeClientToViewServiceConnection];
    swift_unknownObjectRelease();
  }
}

void sub_10000BA48(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Log();
    sub_1000046E8(v3, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v8[3] = type metadata accessor for RemoteEngagementViewController();
    v8[0] = v2;
    v4 = v2;
    v5 = AMSLogKey();
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v8);
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    v7 = *&v4[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection];
    *&v4[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection] = 0;
  }
}

void sub_10000BC34(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Log();
    sub_1000046E8(v3, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v9[3] = type metadata accessor for RemoteEngagementViewController();
    v9[0] = v2;
    v4 = v2;
    v5 = AMSLogKey();
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v9);
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    v7 = OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection;
    [*&v4[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection] invalidate];
    v8 = *&v4[v7];
    *&v4[v7] = 0;
  }
}

id sub_10000BE30()
{
  v1 = *&v0[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task];
  if (v1)
  {
    [v1 cancel];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for RemoteEngagementViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10000BF04(char a1, void *a2, uint64_t a3)
{
  v7 = [v3 presentedViewController];
  if (v7)
  {
    v8 = v7;
    if (a2)
    {
      v10[4] = a2;
      v10[5] = a3;
      sub_10000EBDC();
      v10[1] = 1107296256;
      sub_10000EBFC();
      v10[2] = v9;
      v10[3] = &unk_10001D098;
      a2 = _Block_copy(v10);
    }

    [v8 dismissViewControllerAnimated:a1 & 1 completion:a2];
    _Block_release(a2);
  }

  else if (a2)
  {
    (a2)();
  }
}

uint64_t sub_10000BFE4(char a1)
{
  if (qword_100021710 != -1)
  {
    sub_100009190(&qword_100021710);
  }

  v2 = type metadata accessor for Log();
  sub_1000046E8(v2, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v3 = sub_10000EC74();
  sub_1000091B0(v3);
  sub_10000EC10();
  *(swift_allocObject() + 16) = xmmword_1000138F0;
  type metadata accessor for RemoteEngagementViewController();
  sub_10000ECBC();
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v10);
  v10[3] = &type metadata for String;
  v10[0] = 0xD000000000000026;
  v10[1] = 0x8000000100014A20;
  static LogInterpolation.safe(_:)();
  sub_100005714(v10);
  Log.info(_:)();

  sub_10000EBA8();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a1 & 1;
  *(v7 + 24) = v8;

  sub_10000BF04(v8, sub_10000DF94, v7);
}

void sub_10000C210(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Log();
    sub_1000046E8(v5, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v13 = type metadata accessor for RemoteEngagementViewController();
    aBlock[0] = v4;
    v6 = v4;
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(aBlock);
    LogInterpolation.init(stringLiteral:)();
    Log.info(_:)();

    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v14 = sub_10000DFA0;
    v15 = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000EB54;
    v13 = &unk_10001D070;
    v10 = _Block_copy(aBlock);
    v11 = v6;

    [v11 dismissViewControllerAnimated:a2 & 1 completion:v10];
    _Block_release(v10);
  }
}

void *sub_10000C4A4(void *a1)
{
  if (qword_100021710 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Log();
  sub_1000046E8(v2, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  type metadata accessor for LogInterpolation();
  *(swift_allocObject() + 16) = xmmword_1000138F0;
  v7[3] = type metadata accessor for RemoteEngagementViewController();
  v7[0] = a1;
  a1;
  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v7);
  LogInterpolation.init(stringLiteral:)();
  Log.info(_:)();

  v5 = sub_100009630();
  if (v5)
  {
    [v5 dismiss];
    swift_unknownObjectRelease();
  }

  result = sub_100009630();
  if (result)
  {
    [result invalidate];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10000C69C(uint64_t a1, void *a2)
{
  v6 = sub_100009258();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      a2 = _convertErrorToNSError(_:)();
    }

    sub_10000EBA8();
    v8 = swift_allocObject();
    sub_10000EC3C(v8);
    v11[4] = sub_10000DF54;
    v11[5] = v3;
    sub_10000EBDC();
    v11[1] = 1107296256;
    v11[2] = sub_10000EB54;
    v11[3] = &unk_10001CFF8;
    v9 = _Block_copy(v11);

    [v7 engagementTaskDidFinishWithResult:a1 error:a2 completion:v9];
    swift_unknownObjectRelease();
    _Block_release(v9);

    v10 = *(v2 + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task);
    *(v2 + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task) = 0;
  }

  else
  {

    sub_10000C860();
  }
}

void sub_10000C7C8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10000C860();
  }
}

uint64_t sub_10000C81C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000C860()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000EB94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000EC1C();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchQoS();
  sub_10000EB94();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000EC1C();
  v15 = v14 - v13;
  if ([objc_opt_self() isMainThread])
  {

    return sub_10000BFE4(1);
  }

  else
  {
    sub_100008CB8(0, &qword_100021DC0, OS_dispatch_queue_ptr);
    v21 = static OS_dispatch_queue.main.getter();
    sub_10000EBA8();
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    aBlock[4] = sub_10000DF04;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    sub_10000EBFC();
    aBlock[2] = v18;
    aBlock[3] = &unk_10001CFD0;
    v19 = _Block_copy(aBlock);
    v20 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000E018(&qword_100021DC8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100002838(&qword_100021DD0, &qword_100014148);
    sub_10000DFC0(&qword_100021DD8, &qword_100021DD0, &qword_100014148, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v4 + 8))(v8, v2);
    return (*(v11 + 8))(v15, v9);
  }
}

uint64_t sub_10000CB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000EBA8();
  v7 = swift_allocObject();
  sub_10000EC3C(v7);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;

  swift_errorRetain();
  sub_1000066F8(a2, a3);
  sub_10000BF04(1, sub_10000DEC4, v8);
}

void sub_10000CC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    objc_allocWithZone(type metadata accessor for ErrorViewController());
    swift_errorRetain();
    sub_1000066F8(a3, a4);
    v9 = sub_10000596C(a2, a3, a4);
    [v8 presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_10000CD20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  sub_10000EC8C();
  v9 = type metadata accessor for URL();
  sub_10000EB94();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v33 - v17;
  __chkstk_darwin(v16);
  v20 = &v33 - v19;
  v21 = [v5 URL];
  if (v21)
  {
    v22 = v21;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 32))(v20, v18, v9);
    (*(v11 + 16))(v15, v20, v9);
    v23 = objc_allocWithZone(AMSCampaignAttributionTask);
    swift_unknownObjectRetain();
    v25 = sub_10000DD6C(v15, a2, v24);
    [v25 setClientInfo:a3];
    v26 = [v5 account];
    [v25 setAccount:v26];

    v27 = [v25 perform];
    (*(v11 + 8))(v20, v9);
  }

  sub_10000EBA8();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000EC98();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v5;
  v29[4] = a2;
  v29[5] = a3;
  v29[6] = v33;
  v29[7] = a5;
  swift_unknownObjectRetain();

  v30 = v5;
  v31 = a3;

  sub_10000BF04(1, sub_10000DD5C, v29);
}

void sub_10000CFD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task;
    v14 = *(Strong + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task);
    v36 = a5;
    v37 = a6;
    if (v14)
    {
      v15 = qword_100021710;
      v16 = v14;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Log();
      sub_1000046E8(v17, qword_100022D00);
      sub_100002838(&qword_100021CF0, &unk_100013EB0);
      type metadata accessor for LogInterpolation();
      *(swift_allocObject() + 16) = xmmword_1000138F0;
      v39 = type metadata accessor for RemoteEngagementViewController();
      aBlock[0] = v12;
      v18 = v12;
      v19 = AMSLogKey();
      if (v19)
      {
        v20 = v19;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004720(aBlock);
      LogInterpolation.init(stringLiteral:)();
      Log.default(_:)();

      v24 = v16;
    }

    else
    {
      if (qword_100021710 != -1)
      {
        swift_once();
      }

      v35 = a4;
      v21 = type metadata accessor for Log();
      sub_1000046E8(v21, qword_100022D00);
      sub_100002838(&qword_100021CF0, &unk_100013EB0);
      type metadata accessor for LogInterpolation();
      *(swift_allocObject() + 16) = xmmword_1000138F0;
      v39 = type metadata accessor for RemoteEngagementViewController();
      aBlock[0] = v12;
      v34 = v12;
      v22 = AMSLogKey();
      if (v22)
      {
        v23 = v22;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004720(aBlock);
      LogInterpolation.init(stringLiteral:)();
      Log.default(_:)();

      sub_100008CB8(0, &qword_100021DB0, AMSUIEngagementTask_ptr);
      v25 = v34;
      v26 = a2;
      swift_unknownObjectRetain();
      v27 = sub_10000D4F0(v26, a3, v25);
      [v27 setAllowMultiplePresentations:1];
      v24 = v27;
      [v24 setClientInfo:v35];
      v28 = *&v12[v13];
      *&v12[v13] = v24;

      v16 = 0;
    }

    v29 = v16;
    v30 = [v24 presentEngagement];
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = v24;
    v32[4] = v36;
    v32[5] = v37;
    v40 = sub_10000DE50;
    v41 = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D678;
    v39 = &unk_10001CF58;
    v33 = _Block_copy(aBlock);

    [v30 addFinishBlock:v33];

    _Block_release(v33);
  }
}

id sub_10000D4F0(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 bag:a2 presentingViewController:a3];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_10000D55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task);
    v11 = v10;

    if (v10)
    {
      sub_100008CB8(0, &qword_100021DB8, NSObject_ptr);
      if ((static NSObject.== infix(_:_:)() & 1) == 0)
      {
LABEL_6:

        return a5(a1, a2);
      }

      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();

      if (v12)
      {
        v11 = *&v12[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task];
        *&v12[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task] = 0;

        goto LABEL_6;
      }
    }
  }

  return a5(a1, a2);
}

void sub_10000D678(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10000D704(uint64_t a1)
{
  if (qword_100021710 != -1)
  {
    sub_100009190(&qword_100021710);
  }

  v2 = type metadata accessor for Log();
  sub_1000046E8(v2, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v3 = sub_10000EC74();
  sub_1000091B0(v3);
  sub_10000EC10();
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  type metadata accessor for RemoteEngagementViewController();
  sub_10000ECBC();
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v11);
  LogInterpolation.init(stringLiteral:)();
  v12[3] = &type metadata for RemoteEngagementPresenter.State;
  v6 = swift_allocObject();
  v12[0] = v6;
  v7 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v7;
  *(v6 + 41) = *(a1 + 25);
  sub_10000DC78(a1, v11);
  static LogInterpolation.safe(_:)();
  sub_100005714(v12);
  Log.default(_:)();

  v8 = *a1;
  v9 = *(a1 + 8);
  if (*(a1 + 40))
  {
    v10 = *(a1 + 16);
    if (*(a1 + 40) == 1)
    {
      sub_10000CD20(v8, v9, v10, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      sub_10000CB94(v8, v9, v10);
    }
  }

  else
  {
    sub_10000C69C(v8, v9);
  }
}

id sub_10000D934(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection] = 0;
  v7 = OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_presenter;
  type metadata accessor for RemoteEngagementPresenter();
  sub_10000EC98();
  swift_allocObject();
  *&v3[v7] = sub_100008B20();
  *&v3[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for RemoteEngagementViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10000DA68(void *a1)
{
  *&v1[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection] = 0;
  v3 = OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_presenter;
  type metadata accessor for RemoteEngagementPresenter();
  sub_10000EC98();
  swift_allocObject();
  *&v1[v3] = sub_100008B20();
  *&v1[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RemoteEngagementViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_10000DB5C()
{
  sub_10000DBA0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

void sub_10000DBA0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 2:

      sub_100006708(a2, a3);
      break;
    case 1:

      swift_unknownObjectRelease();

      break;
    case 0:

      break;
  }
}

uint64_t sub_10000DCD4()
{
  swift_unknownObjectWeakDestroy();
  sub_10000EBA8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000DD08()
{

  swift_unknownObjectRelease();

  sub_10000EC98();

  return _swift_deallocObject(v1, v2, v3);
}

id sub_10000DD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSURL *a3@<X8>)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(a3);
  v8 = v7;
  v9 = [v4 initWithURL:v7 bag:a2];
  swift_unknownObjectRelease();

  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

uint64_t sub_10000DE08()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000DE5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DE74()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000DED0()
{
  sub_10000EBA8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000DF0C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000DF5C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000DFC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000DF0C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000E018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000E060()
{
  result = qword_100021E78;
  if (!qword_100021E78)
  {
    sub_100008CB8(255, &qword_100021E70, SBUIRemoteAlertButtonAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021E78);
  }

  return result;
}

unint64_t sub_10000E0C8()
{
  result = qword_100021E80;
  if (!qword_100021E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021E80);
  }

  return result;
}

uint64_t sub_10000E11C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100014110;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_10000E180(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_10000E4BC(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

Swift::Int sub_10000E270(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002838(&qword_100021E88, &qword_100014180);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_10000E11C(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v16);
    result = Hasher._finalize()();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_10000E4BC(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10000E270(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_10000E734(v6 + 1);
LABEL_10:
      v12 = *v3;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v5);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_10000E5F4();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_10000E5F4()
{
  v1 = v0;
  sub_100002838(&qword_100021E88, &qword_100014180);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_10000E734(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002838(&qword_100021E88, &qword_100014180);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v15);
        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

char *sub_10000E950(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000E970(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000E970(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100002838(&qword_100021E98, &qword_100014190);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_100004D48((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000EA68(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10000EAD4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10000EAE0()
{
  _Block_release(*(v0 + 16));
  sub_10000EBA8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000EBB4()
{

  return swift_allocObject();
}

uint64_t sub_10000EC3C(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t sub_10000EC58(uint64_t a1)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000EC74()
{

  return type metadata accessor for LogInterpolation();
}

id sub_10000ECBC()
{

  return v0;
}

void *sub_10000ED08()
{
  v1 = *(v0 + OBJC_IVAR____TtC24AMSEngagementViewService13SceneDelegate_window);
  v2 = v1;
  return v1;
}

void sub_10000EDA8(int a1, int a2, id a3)
{
  v4 = [a3 URLContexts];
  sub_100008CB8(0, &qword_100021F58, UIOpenURLContext_ptr);
  sub_100011B14(&qword_100021F60, &qword_100021F58, UIOpenURLContext_ptr);
  sub_100012028();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_10000EF70(v5);

  if (v6 < 1)
  {
    v11 = [a3 userActivities];
    sub_100012028();
    sub_100008CB8(v12, v13, v14);
    sub_100012028();
    sub_100011B14(v15, v16, v17);
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = sub_10000EF90(v18);

    if (v21)
    {
      sub_100010CE8(v21);
      sub_100012004();
    }

    else
    {
      sub_100012004();
    }
  }

  else
  {
    v7 = [a3 URLContexts];
    sub_100012028();
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000F108(v9, v8);
    sub_100012004();
  }
}

uint64_t sub_10000EF70(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_10000EF90(uint64_t a1)
{
  v2 = sub_100011BE0(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_100011C40(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_100011E94(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_10000EAD4(v7, v9, v11 & 1);
  if (v12)
  {
    sub_10000EAD4(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    sub_100011CA8(v2, v4, v6 & 1, a1, &unk_100021F68);
    v13 = v14;
    sub_10000EAD4(v2, v4, v6 & 1);
  }

  return v13;
}

void *sub_10000F108(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for URL();
  sub_10000EB94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000EC1C();
  v8 = v7 - v6;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008CB8(0, &qword_100021F58, UIOpenURLContext_ptr);
    sub_100011B14(&qword_100021F60, &qword_100021F58, UIOpenURLContext_ptr);
    result = Set.Iterator.init(_cocoa:)();
    a2 = v29;
    v10 = v30;
    v11 = v31;
    v12 = v32;
    v13 = v33;
  }

  else
  {
    v14 = -1 << *(a2 + 32);
    v10 = a2 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a2 + 56);

    v12 = 0;
  }

  v17 = (v11 + 64) >> 6;
  v26 = (v4 + 8);
  if (a2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    v22 = *(*(a2 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      return sub_100011B64(a2);
    }

    while (1)
    {
      v23 = [v22 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = sub_100011B6C([v22 options]);
      sub_10000F530(v8, v24, v25);

      result = (*v26)(v8, v27);
      v12 = v20;
      v13 = v21;
      if ((a2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100008CB8(0, &qword_100021F58, UIOpenURLContext_ptr);
        swift_dynamicCast();
        v22 = v28;
        v20 = v12;
        v21 = v13;
        if (v28)
        {
          continue;
        }
      }

      return sub_100011B64(a2);
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      return sub_100011B64(a2);
    }

    v19 = *(v10 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

CFNotificationCenterRef sub_10000F530(uint64_t a1, uint64_t a2, id a3)
{
  v4 = v3;
  v161 = a3;
  *&v152 = a2;
  v165 = a1;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100011FEC(v5);
  __chkstk_darwin(v6);
  sub_10000EC1C();
  sub_100012040(v8 - v7);
  v164 = type metadata accessor for URLQueryItem();
  sub_10000EB94();
  v153 = v9;
  __chkstk_darwin(v10);
  sub_100011F44();
  v163 = v11;
  sub_100011F58();
  __chkstk_darwin(v12);
  sub_100011F90();
  v145 = v13;
  sub_100011F58();
  __chkstk_darwin(v14);
  sub_100012040(&v142 - v15);
  v16 = sub_100002838(&qword_100021F40, &qword_1000141B0);
  v17 = sub_100011FEC(v16);
  __chkstk_darwin(v17);
  sub_100012040(&v142 - v18);
  v150 = type metadata accessor for URLComponents();
  sub_10000EB94();
  v148 = v19;
  __chkstk_darwin(v20);
  sub_10000EC1C();
  sub_100012040(v22 - v21);
  v23 = sub_100002838(&qword_100021960, &unk_100013900);
  v24 = sub_100011FEC(v23);
  __chkstk_darwin(v24);
  v26 = &v142 - v25;
  v27 = type metadata accessor for URL();
  sub_10000EB94();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_10000EC1C();
  v33 = v32 - v31;
  v34 = type metadata accessor for Log();
  sub_10000EB94();
  v36 = v35;
  v38 = __chkstk_darwin(v37);
  v40 = &v142 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v142 - v41;
  if (qword_100021710 != -1)
  {
    sub_100009190(&qword_100021710);
  }

  v151 = v33;
  v43 = sub_1000046E8(v34, qword_100022D00);
  v162 = v36;
  v44 = *(v36 + 16);
  v155 = v43;
  v156 = v34;
  v144 = v36 + 16;
  v143 = v44;
  (v44)(v42);
  v45 = sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v46 = type metadata accessor for LogInterpolation();
  sub_1000091B0(v46);
  v49 = *(v48 + 80);
  v50 = (v49 + 32) & ~v49;
  v166 = *(v47 + 72);
  v157 = v49;
  v158 = v45;
  *(swift_allocObject() + 16) = xmmword_1000138E0;
  v160 = v50;
  v159 = type metadata accessor for SceneDelegate();
  v172 = v159;
  aBlock = v4;
  v154 = v4;
  v51 = AMSLogKey();
  if (v51)
  {
    v52 = v51;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(&aBlock);
  v53 = v166;
  LogInterpolation.init(stringLiteral:)();
  v172 = v27;
  v54 = sub_100004914(&aBlock);
  (*(v29 + 16))(v54, v165, v27);
  static LogInterpolation.safe(_:)();
  sub_100011A50(&aBlock, &qword_100021D00, &unk_100013910);
  v55 = 3 * v53;
  LogInterpolation.init(stringLiteral:)();
  v146 = v40;
  if (v161)
  {
    v56 = &type metadata for String;
    v57 = v152;
    v58 = v161;
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v56 = 0;
    v171 = 0;
  }

  v59 = 2 * v166;
  aBlock = v57;
  v170 = v58;
  v172 = v56;

  static LogInterpolation.safe(_:)();
  sub_100011A50(&aBlock, &qword_100021D00, &unk_100013910);
  Log.default(_:)();

  v60 = v162 + 8;
  v61 = *(v162 + 8);
  v61(v42, v156);
  v62 = v165;
  sub_100002230(v165, 0, 0, v26);
  sub_100011F70(v26);
  if (!v65)
  {
    (*(v29 + 32))(v151, v26, v27);
    *(sub_100011EC8() + 16) = xmmword_1000138F0;
    sub_100011F1C();
    v71 = AMSLogKey();
    if (v71)
    {
      v72 = v71;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&aBlock);
    sub_100011F64();
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    sub_1000116E4();
    v73 = sub_10001204C();
    return v74(v73);
  }

  sub_100011A50(v26, &qword_100021960, &unk_100013900);
  v63 = URL.scheme.getter();
  if (!v64)
  {
    goto LABEL_16;
  }

  v65 = v63 == 0x7564732D736D61 && v64 == 0xE700000000000000;
  if (v65)
  {

LABEL_23:
    v162 = v60;
    v76 = sub_100011EC8();
    v152 = xmmword_1000138F0;
    *(v76 + 16) = xmmword_1000138F0;
    v161 = sub_100011F1C();
    v77 = AMSLogKey();
    if (v77)
    {
      v78 = v77;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100011FF8();
    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&aBlock);
    sub_100011F64();
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    result = CFNotificationCenterGetDistributedCenter();
    if (result)
    {
      v89 = result;
      v90 = v89;

      v91 = v89;
      v92 = String._bridgeToObjectiveC()();
      sub_100002838(&qword_100021F50, &qword_1000141B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100013CF0;
      *(inited + 32) = 7107189;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = URL.absoluteString.getter();
      *(inited + 56) = v94;
      Dictionary.init(dictionaryLiteral:)();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      CFNotificationCenterPostNotification(v91, v92, 0, isa, 1u);

      v96 = v149;
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      v97 = v150;
      if (sub_10000476C(v96, 1, v150) == 1)
      {
        sub_100011A50(v96, &qword_100021F40, &qword_1000141B0);
LABEL_47:
        *(sub_100011EC8() + 16) = v152;
        sub_100011FAC();
        v114 = AMSLogKey();
        if (v114)
        {
          v115 = v114;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100004720(&aBlock);
        sub_100011F64();
        LogInterpolation.init(stringLiteral:)();
        goto LABEL_50;
      }

      sub_10001201C();
      v98();
      v99 = URLComponents.queryItems.getter();
      if (!v99)
      {
LABEL_46:
        v112 = sub_100011FD4();
        v113(v112, v97);
        goto LABEL_47;
      }

      v100 = v99;
      v165 = v59;
      v101 = 0;
      v102 = *(v99 + 16);
      v103 = (v153 + 8);
      while (1)
      {
        if (v102 == v101)
        {

          v97 = v150;
          goto LABEL_46;
        }

        if (v101 >= *(v100 + 16))
        {
          __break(1u);
        }

        (*(v153 + 16))(v163, v100 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v101, v164);
        if (URLQueryItem.name.getter() == 0x656C646E7562 && v104 == 0xE600000000000000)
        {
          break;
        }

        v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v106)
        {
          goto LABEL_53;
        }

        (*v103)(v163, v164);
        ++v101;
      }

LABEL_53:

      v116 = *(v153 + 32);
      v116(v145, v163, v164);
      v117 = v147;
      v118 = sub_100012034();
      (v116)(v118);
      v119 = v146;
      v120 = v143(v146, v155, v156);
      v121 = sub_100011EF8(v120, v160 + v165);
      *(v121 + 16) = v152;
      v122 = sub_100011FAC();
      v123 = AMSLogKey();
      if (v123)
      {
        v124 = v123;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004720(&aBlock);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v128._object = 0x8000000100014F00;
      v128._countAndFlagsBits = 0xD000000000000027;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v128);
      v129 = URLQueryItem.value.getter();
      v131 = v156;
      if (v130)
      {
        v132 = &type metadata for String;
      }

      else
      {
        v129 = 0;
        v132 = 0;
        v171 = 0;
      }

      aBlock = v129;
      v170 = v130;
      v172 = v132;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100011A50(&aBlock, &qword_100021D00, &unk_100013910);
      v133._countAndFlagsBits = 0;
      v133._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v133);
      sub_100011F64();
      LogInterpolation.init(stringInterpolation:)();
      Log.default(_:)();

      v61(v119, v131);
      result = [objc_opt_self() defaultWorkspace];
      if (result)
      {
        v134 = result;
        URLQueryItem.value.getter();
        if (v135)
        {
          v136 = String._bridgeToObjectiveC()();
        }

        else
        {
          v136 = 0;
        }

        v137 = swift_allocObject();
        *(v137 + 16) = v122;
        v173 = sub_100011AF4;
        v174 = v137;
        aBlock = _NSConcreteStackBlock;
        v170 = 1107296256;
        v171 = sub_100010C70;
        v172 = &unk_10001D228;
        v138 = _Block_copy(&aBlock);
        v139 = v122;

        [(__CFNotificationCenter *)v134 openApplicationWithBundleIdentifier:v136 usingConfiguration:0 completionHandler:v138];
        _Block_release(v138);

        (*v103)(v117, v164);
        v140 = sub_100011FD4();
        return v141(v140, v150);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v66)
  {
    goto LABEL_23;
  }

LABEL_16:
  type metadata accessor for EngagementDeepLinkController();
  swift_initStackObject();
  v67 = sub_100004FBC(v62, v152, v161);
  if (v68)
  {
    *(sub_100011EC8() + 16) = xmmword_1000138F0;
    sub_100011F1C();
    v69 = AMSLogKey();
    if (v69)
    {
      v70 = v69;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100011F9C();
    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&aBlock);
    sub_100011F64();
    LogInterpolation.init(stringLiteral:)();
LABEL_50:
    Log.error(_:)();
  }

  v79 = v67;
  v80 = [objc_allocWithZone(AMSEngagement) init];
  v81 = Dictionary._bridgeToObjectiveC()().super.isa;
  sub_100011AB0(v79, 0);
  v82 = [v80 enqueueData:v81];

  aBlock = 0;
  v83 = [v82 resultWithError:&aBlock];

  v85 = aBlock;
  if (v83)
  {
    *(sub_100011EF8(v84, v160 + v55) + 16) = xmmword_1000138D0;
    sub_100011F1C();
    v86 = v85;
    v87 = AMSLogKey();
    if (v87)
    {
      v88 = v87;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100011F9C();
    sub_100011FF8();
    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&aBlock);
    sub_100011F64();
    LogInterpolation.init(stringLiteral:)();
    v172 = sub_100008CB8(0, &qword_100021F48, AMSEngagementEnqueueResult_ptr);
    aBlock = v83;
    v111 = v83;
    static LogInterpolation.safe(_:)();
    sub_100011A50(&aBlock, &qword_100021D00, &unk_100013910);
    Log.default(_:)();
  }

  v107 = aBlock;
  _convertNSErrorToError(_:)();

  v108 = swift_willThrow();
  *(sub_100011EF8(v108, v160 + v55) + 16) = xmmword_1000138D0;
  sub_100011F1C();
  v109 = AMSLogKey();
  if (v109)
  {
    v110 = v109;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100011F9C();
  sub_100011FF8();
  static LogInterpolation.prefix(_:_:)();

  sub_100004720(&aBlock);
  sub_100011F64();
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v125 = v167;
  v126 = v168;
  v172 = v168;
  v127 = sub_100004914(&aBlock);
  (*(*(v126 - 1) + 16))(v127, v125, v126);
  static LogInterpolation.safe(_:)();
  sub_100011A50(&aBlock, &qword_100021D00, &unk_100013910);
  Log.error(_:)();
}

uint64_t sub_10001084C(char a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (a2 && (a1 & 1) == 0)
  {
    swift_errorRetain();
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Log();
    sub_1000046E8(v11, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v21 = type metadata accessor for SceneDelegate();
    v20[0] = a3;
    v12 = a3;
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v20);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._object = 0x8000000100014FB0;
    v16._countAndFlagsBits = 0xD00000000000002DLL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    swift_getErrorValue();
    v21 = v19;
    v17 = sub_100004914(v20);
    (*(*(v19 - 8) + 16))(v17);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100011A50(v20, &qword_100021D00, &unk_100013910);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();
  }

  else
  {
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Log();
    sub_1000046E8(v7, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v21 = type metadata accessor for SceneDelegate();
    v20[0] = a3;
    v8 = a3;
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v20);
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();
  }
}

void sub_100010C70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_100010CE8(void *a1)
{
  v2 = sub_100002838(&qword_100021960, &unk_100013900);
  v3 = sub_100011FEC(v2);
  __chkstk_darwin(v3);
  sub_100011F44();
  v107 = v4;
  sub_100011F58();
  __chkstk_darwin(v5);
  sub_100011F90();
  v108 = v6;
  sub_100011F58();
  __chkstk_darwin(v7);
  sub_100011F90();
  v111 = v8;
  sub_100011F58();
  __chkstk_darwin(v9);
  sub_100011F90();
  v114 = v10;
  sub_100011F58();
  v12 = __chkstk_darwin(v11);
  v14 = v104 - v13;
  __chkstk_darwin(v12);
  v16 = v104 - v15;
  type metadata accessor for Log();
  sub_10000EB94();
  v116 = v18;
  v117 = v17;
  __chkstk_darwin(v17);
  sub_10000EC1C();
  v115 = v20 - v19;
  v21 = sub_100002838(&qword_100021F40, &qword_1000141B0);
  v22 = sub_100011FEC(v21);
  __chkstk_darwin(v22);
  v24 = v104 - v23;
  v120 = type metadata accessor for URLComponents();
  sub_10000EB94();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_100011F44();
  v112 = v28;
  sub_100011F58();
  __chkstk_darwin(v29);
  v118 = v104 - v30;
  v31 = type metadata accessor for URL();
  sub_10000EB94();
  v119 = v32;
  __chkstk_darwin(v33);
  sub_100011F44();
  v106 = v34;
  sub_100011F58();
  __chkstk_darwin(v35);
  sub_100011F90();
  v110 = v36;
  sub_100011F58();
  __chkstk_darwin(v37);
  sub_100011F90();
  v109 = v38;
  sub_100011F58();
  v40 = __chkstk_darwin(v39);
  v42 = v104 - v41;
  __chkstk_darwin(v40);
  v44 = v104 - v43;
  v121 = a1;
  v45 = [a1 activityType];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  v50 = v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49;
  if (v50)
  {

LABEL_8:
    result = [v121 webpageURL];
    if (!result)
    {
      return result;
    }

    v53 = result;
    v105 = v26;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = *(v119 + 32);
    v54(v44, v42, v31);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v55 = v120;
    if (sub_10000476C(v24, 1, v120) == 1)
    {
      v56 = sub_10001204C();
      v57(v56);
      v58 = &qword_100021F40;
      v59 = &qword_1000141B0;
      v60 = v24;
      return sub_100011A50(v60, v58, v59);
    }

    v104[2] = v54;
    (*(v105 + 32))(v118, v24, v55);
    if (qword_100021710 != -1)
    {
      sub_100009190(&qword_100021710);
    }

    v61 = v117;
    v62 = sub_1000046E8(v117, qword_100022D00);
    (*(v116 + 16))(v115, v62, v61);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v63 = type metadata accessor for LogInterpolation();
    sub_1000091B0(v63);
    v104[1] = *(v64 + 72);
    *(swift_allocObject() + 16) = xmmword_1000138D0;
    *(&v123 + 1) = type metadata accessor for SceneDelegate();
    *&v122 = v113;
    v113 = v113;
    v65 = AMSLogKey();
    if (v65)
    {
      v66 = v65;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&v122);
    LogInterpolation.init(stringLiteral:)();
    v67 = [v121 webpageURL];
    v68 = v119;
    if (v67)
    {
      v69 = v67;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v70 = 0;
    }

    else
    {
      v70 = 1;
    }

    v71 = v120;
    sub_100002880(v14, v70, 1, v31);
    sub_100004794(v14, v16);
    sub_100011F70(v16);
    if (v50)
    {
      sub_100011A50(v16, &qword_100021960, &unk_100013900);
      v122 = 0u;
      v123 = 0u;
    }

    else
    {
      *(&v123 + 1) = v31;
      sub_100004914(&v122);
      sub_100011F64();
      v72();
    }

    v73 = v118;
    static LogInterpolation.safe(_:)();
    sub_100011A50(&v122, &qword_100021D00, &unk_100013910);
    v74 = v115;
    Log.default(_:)();

    (*(v116 + 8))(v74, v117);
    v75 = v114;
    sub_100002230(v44, 0, 0, v114);
    sub_100011F70(v75);
    if (v50)
    {
      sub_100011A50(v75, &qword_100021960, &unk_100013900);
      v76 = v105;
      v77 = v112;
      (*(v105 + 16))(v112, v73, v71);
      URLComponents.scheme.setter();
      v78 = v111;
      URLComponents.url.getter();
      sub_100011F70(v78);
      if (v50)
      {
        v79 = *(v76 + 8);
        v79(v77, v71);
        v80 = sub_100012034();
        (v79)(v80);
        v81 = sub_10001204C();
        v82(v81);
        v58 = &qword_100021960;
        v59 = &unk_100013900;
        v60 = v78;
        return sub_100011A50(v60, v58, v59);
      }

      sub_10001201C();
      sub_100011F64();
      v88();
      v89 = [v121 referrerURL];
      if (v89)
      {
        v90 = v89;
        v91 = v107;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v92 = 0;
        v93 = v105;
      }

      else
      {
        v92 = 1;
        v93 = v105;
        v91 = v107;
      }

      sub_100002880(v91, v92, 1, v31);
      v94 = v108;
      sub_100004794(v91, v108);
      if (sub_10000476C(v94, 1, v31))
      {
        sub_100011A50(v94, &qword_100021960, &unk_100013900);
        v95 = 0;
        v96 = 0;
      }

      else
      {
        v97 = v106;
        sub_10001201C();
        v98();
        sub_100011A50(v94, &qword_100021960, &unk_100013900);
        v95 = URL.absoluteString.getter();
        v96 = v99;
        (*(v68 + 8))(v97, v31);
      }

      v100 = v110;
      sub_10000F530(v110, v95, v96);

      v85 = *(v68 + 8);
      v85(v100, v31);
      v101 = *(v93 + 8);
      v101(v77, v71);
      v102 = sub_100012034();
      (v101)(v102);
    }

    else
    {
      v83 = v109;
      sub_10001201C();
      sub_100011F64();
      v84();
      sub_1000116E4();
      v85 = *(v68 + 8);
      v85(v83, v31);
      v86 = sub_100012034();
      v87(v86);
    }

    v103 = sub_10001204C();
    return (v85)(v103);
  }

  v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v51)
  {
    goto LABEL_8;
  }

  return result;
}

id sub_1000116E4()
{
  if (qword_100021710 != -1)
  {
    sub_100009190(&qword_100021710);
  }

  v1 = type metadata accessor for Log();
  sub_1000046E8(v1, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v2 = type metadata accessor for LogInterpolation();
  sub_1000091B0(v2);
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  v15 = type metadata accessor for SceneDelegate();
  v14[0] = v0;
  v3 = v0;
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v14);
  LogInterpolation.init(stringLiteral:)();
  type metadata accessor for URL();
  sub_1000119F8();
  v14[0] = dispatch thunk of CustomStringConvertible.description.getter();
  v14[1] = v6;
  v7._countAndFlagsBits = 46;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v15 = &type metadata for String;
  static LogInterpolation.sensitive(_:)();
  sub_100011A50(v14, &qword_100021D00, &unk_100013910);
  Log.default(_:)();

  v8 = objc_opt_self();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v8 openStandardURL:v10];

  return v12;
}

id sub_10001192C()
{
  *&v0[OBJC_IVAR____TtC24AMSEngagementViewService13SceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100011990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000119F8()
{
  result = qword_100021F38;
  if (!qword_100021F38)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021F38);
  }

  return result;
}

uint64_t sub_100011A50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002838(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100011AB0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_100011ABC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011AFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011B14(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008CB8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011B6C(void *a1)
{
  v2 = [a1 sourceApplication];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100011BE0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

uint64_t sub_100011C40(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void sub_100011CA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100011FF8();
      sub_100008CB8(v7, v8, v9);
      swift_dynamicCast();
      sub_100012004();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100011FF8();
    sub_100008CB8(v10, v11, v12);
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      a5 = v21;
      v13 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v14 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v15 = v13 & v14;
        if (((*(a4 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v16 = *(*(a4 + 48) + 8 * v15);
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {
          goto LABEL_15;
        }

        v13 = v15 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  sub_100012004();

  v20 = v18;
}

uint64_t sub_100011E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
}

uint64_t sub_100011EC8()
{

  return swift_allocObject();
}

uint64_t sub_100011EF8(uint64_t a1, uint64_t a2)
{

  return swift_allocObject();
}

id sub_100011F1C()
{
  *(v0 - 184) = *(v0 - 328);
  v2 = *(v0 - 368);
  *(v0 - 208) = v2;

  return v2;
}

id sub_100011FAC()
{
  *(v0 - 184) = *(v0 - 328);
  v2 = *(v0 - 312);
  *(v0 - 208) = v2;

  return v2;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}