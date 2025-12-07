void sub_1001F1B38(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_100009F1C(0, &qword_10057A130, off_1004D1B30);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

uint64_t sub_1001F1C2C()
{
  v1 = v0;
  v2 = type metadata accessor for MediaRequest.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v13 - v6;
  v8 = OBJC_IVAR___MTNetworkMediaManifest_contentType;
  swift_beginAccess();
  (*(v3 + 16))(v7, v1 + v8, v2);
  (*(v3 + 104))(v5, enum case for MediaRequest.ContentType.podcastEpisode(_:), v2);
  sub_1001F6DC8(&qword_100576A00, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v13[3] == v13[1] && v13[4] == v13[2])
  {
    v9 = *(v3 + 8);
    v9(v5, v2);
    v9(v7, v2);
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v7, v2);

  if (v10)
  {
  }

  return 0;
}

uint64_t sub_1001F1F0C()
{
  v1 = v0;
  v2 = type metadata accessor for MediaRequest.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v15 - v6;
  v8 = OBJC_IVAR___MTNetworkMediaManifest_contentType;
  swift_beginAccess();
  (*(v3 + 16))(v7, v1 + v8, v2);
  (*(v3 + 104))(v5, enum case for MediaRequest.ContentType.podcast(_:), v2);
  sub_1001F6DC8(&qword_100576A00, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v15[3] == v15[1] && v15[4] == v15[2])
  {
    v9 = *(v3 + 8);
    v9(v5, v2);
    v9(v7, v2);
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v11 = *(v3 + 8);
    v11(v5, v2);
    v11(v7, v2);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(v1 + OBJC_IVAR___MTNetworkMediaManifest_initialIds);
  if (v12 && *(v12 + 16))
  {
    v13 = *(v12 + 32);

    return v13;
  }

  return 0;
}

void sub_1001F2190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    static String.Encoding.utf8.getter();
    v8 = String.data(using:allowLossyConversion:)();
    v10 = v9;
    (*(v5 + 8))(v7, v4);
    if (v10 >> 60 != 15)
    {
      v11 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v27[0] = 0;
      v13 = [v11 JSONObjectWithData:isa options:0 error:v27];

      if (v13)
      {
        v14 = v27[0];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100168088(&qword_1005769E0, &unk_100403DE8);
        if (swift_dynamicCast())
        {
          type metadata accessor for MediaRequestResponseParser();
          type metadata accessor for ServerPodcastStation();
          sub_1001F6DC8(&qword_1005769F8, &type metadata accessor for ServerPodcastStation, &protocol conformance descriptor for ServerPodcastStation);
          v15 = static MediaRequestResponseParser.parseContainerResponse<A>(containerType:_:)();

          if (v15)
          {
            if (v15 >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_8;
              }
            }

            else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_8:
              if ((v15 & 0xC000000000000001) != 0)
              {
                v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                }

                v16 = *(v15 + 32);
              }

              v17 = v16;

              v18 = v17;
              sub_1001F5C7C(v18);

              sub_100009F1C(0, &qword_10057A130, off_1004D1B30);
              v19 = Array._bridgeToObjectiveC()().super.isa;

              [v2 setItems:v19];

              v20 = _MTLogCategoryPlayback();
              if (!v20)
              {
                __break(1u);
                return;
              }

              v21 = v20;

              v26 = static os_log_type_t.default.getter();
              sub_100168088(&unk_100574670, &qword_100400AB0);
              v22 = swift_allocObject();
              *(v22 + 16) = xmmword_100400790;
              v23 = sub_1001F564C();
              *(v22 + 56) = sub_100168088(&qword_100573BD8, &qword_1004012A0);
              *(v22 + 64) = sub_100009FAC(&qword_1005769C8, &qword_100573BD8, &qword_1004012A0, &protocol conformance descriptor for [A]);
              *(v22 + 32) = v23;
              os_log(_:dso:log:type:_:)("NetworkMediaManifest: Loaded items from asset info %@", 53, 2, &_mh_execute_header, v21, v26, v22);

              goto LABEL_14;
            }
          }

          sub_1001F6D60(v8, v10);

          return;
        }
      }

      else
      {
        v24 = v27[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

LABEL_14:
      sub_1001F6D60(v8, v10);
    }
  }
}

void *sub_1001F260C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  static String.Encoding.utf8.getter();
  v8 = String.data(using:allowLossyConversion:)();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v35[0] = 0;
  v13 = [v11 JSONObjectWithData:isa options:0 error:v35];

  if (!v13)
  {
    v29 = v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return sub_1001F6D60(v8, v10);
  }

  v14 = v35[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100168088(&qword_1005769E0, &unk_100403DE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  type metadata accessor for MediaRequestResponseParser();
  v15 = static MediaRequestResponseParser.parsePodcastEpisodeResponse(_:)();
  v16 = v15;
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_17:
    sub_1001F6D60(v8, v10);

    return _swiftEmptyArrayStorage;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_17;
  }

LABEL_7:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v17 = *(v16 + 32);
  }

  v18 = v17;

  v19 = [objc_allocWithZone(MTPlayerItem) initWithPodcastEpisode:v18 podcast:0];
  if (!v19)
  {

LABEL_15:
    sub_1001F6D60(v8, v10);
    return _swiftEmptyArrayStorage;
  }

  v20 = v19;
  v34 = v18;
  v33 = sub_100168088(&unk_100574680, &qword_100401740);
  v21 = swift_allocObject();
  v32 = xmmword_1004007B0;
  *(v21 + 16) = xmmword_1004007B0;
  *(v21 + 32) = v20;
  sub_100009F1C(0, &qword_10057A130, off_1004D1B30);
  v31 = v20;
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setItems:v22];

  result = _MTLogCategoryPlayback();
  if (result)
  {
    v24 = result;

    v25 = static os_log_type_t.default.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100400790;
    v27 = sub_1001F564C();
    *(v26 + 56) = sub_100168088(&qword_100573BD8, &qword_1004012A0);
    *(v26 + 64) = sub_100009FAC(&qword_1005769C8, &qword_100573BD8, &qword_1004012A0, &protocol conformance descriptor for [A]);
    *(v26 + 32) = v27;
    os_log(_:dso:log:type:_:)("NetworkMediaManifest: Loaded items from asset info %@", 53, 2, &_mh_execute_header, v24, v25, v26);

    v28 = swift_allocObject();
    *(v28 + 16) = v32;
    *(v28 + 32) = v34;

    sub_1001F6D60(v8, v10);
    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001F2BCC(uint64_t a1, uint64_t a2)
{
  v87 = type metadata accessor for PriceType();
  v82 = *(v87 - 8);
  __chkstk_darwin();
  v83 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100168088(&qword_1005769D0, &qword_100403DD8);
  __chkstk_darwin();
  v86 = &v64 - v5;
  sub_100168088(&qword_1005769D8, &qword_100403DE0);
  __chkstk_darwin();
  v84 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v64 - v7;
  __chkstk_darwin();
  v10 = &v64 - v9;
  v11 = type metadata accessor for String.Encoding();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return;
  }

  static String.Encoding.utf8.getter();
  v15 = String.data(using:allowLossyConversion:)();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  if (v17 >> 60 == 15)
  {
    return;
  }

  v18 = objc_opt_self();
  v19 = v17;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v89[0] = 0;
  v21 = [v18 JSONObjectWithData:isa options:0 error:v89];

  v22 = v15;
  if (!v21)
  {
    v41 = v89[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1001F6D60(v15, v19);
    return;
  }

  v23 = v89[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100168088(&qword_1005769E0, &unk_100403DE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v40 = v15;
LABEL_25:
    sub_1001F6D60(v40, v19);
    return;
  }

  v81 = v2;
  v24 = v88;
  type metadata accessor for MediaRequestResponseParser();
  type metadata accessor for ServerPodcast();
  sub_1001F6DC8(&qword_1005769E8, &type metadata accessor for ServerPodcast, &protocol conformance descriptor for ServerPodcastBase);
  v25 = static MediaRequestResponseParser.parseContainerResponse<A>(containerType:_:)();

  if (!v25)
  {
LABEL_48:
    sub_1001F6D60(v22, v19);

    return;
  }

  if (!(v25 >> 62))
  {
    v26 = v81;
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

  v63 = _CocoaArrayWrapper.endIndex.getter();
  v26 = v81;
  if (!v63)
  {
LABEL_47:

    goto LABEL_48;
  }

LABEL_8:
  v80 = v22;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_52;
    }

    v27 = *(v25 + 32);
  }

  v28 = v27;

  v29 = v28;
  sub_1001F5E0C(v29);

  sub_100009F1C(0, &qword_10057A130, off_1004D1B30);
  v30 = Array._bridgeToObjectiveC()().super.isa;

  [v26 setItems:v30];

  v22 = v29;
  if (!ServerPodcastBase.relationships.getter() || (v31 = PodcastRelationships.channel.getter(), , !v31))
  {
LABEL_20:

    goto LABEL_21;
  }

  v26 = PodcastChannelRelationshipContainer.data.getter();

  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_53:

    goto LABEL_21;
  }

LABEL_52:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_53;
  }

LABEL_15:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    v32 = *(v26 + 32);
  }

  v33 = v32;

  ServerChannel.attributes.getter();

  v34 = ChannelAttributes.isSubscribed.getter();

  if (v34 == 2 || (v34 & 1) != 0)
  {
    goto LABEL_20;
  }

  v42 = ServerPodcastBase.attributes.getter();

  if (!v42)
  {
    goto LABEL_21;
  }

  v43 = PodcastAttributes.offers.getter();
  v44 = v81;
  v45 = v43;

  if (!v45)
  {
    goto LABEL_21;
  }

  v46 = v45 & 0xFFFFFFFFFFFFFF8;
  v69 = v45 & 0xFFFFFFFFFFFFFF8;
  if (v45 >> 62)
  {
    v47 = _CocoaArrayWrapper.endIndex.getter();
    v46 = v69;
    if (v47)
    {
      goto LABEL_30;
    }

LABEL_59:
    v62 = 1;
    goto LABEL_60;
  }

  v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v47)
  {
    goto LABEL_59;
  }

LABEL_30:
  v48 = 0;
  v77 = v45 & 0xC000000000000001;
  v73 = (v82 + 104);
  v72 = enum case for PriceType.psub(_:);
  v71 = (v82 + 56);
  v70 = (v82 + 48);
  v65 = (v82 + 32);
  v66 = (v82 + 8);
  v75 = v22;
  v76 = v24;
  v74 = v45;
  v68 = v47;
  while (1)
  {
    if (v77)
    {
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v48 >= *(v46 + 16))
      {
        goto LABEL_57;
      }
    }

    v78 = v48 + 1;
    v79 = v48;
    if (__OFADD__(v48, 1))
    {
      goto LABEL_56;
    }

    v52 = v51;
    dispatch thunk of PodcastShowOffer.typeResolved.getter();
    v53 = v87;
    (*v73)(v8, v72, v87);
    (*v71)(v8, 0, 1, v53);
    v54 = v86;
    v55 = *(v85 + 48);
    sub_100010430(v10, v86, &qword_1005769D8, &qword_100403DE0);
    v82 = v55;
    v56 = v54 + v55;
    v57 = v53;
    sub_100010430(v8, v56, &qword_1005769D8, &qword_100403DE0);
    v58 = *v70;
    if ((*v70)(v54, 1, v53) == 1)
    {

      sub_100009104(v8, &qword_1005769D8, &qword_100403DE0);
      sub_100009104(v10, &qword_1005769D8, &qword_100403DE0);
      v49 = v58(v54 + v82, 1, v53) == 1;
      v50 = v54;
      if (!v49)
      {
        goto LABEL_45;
      }

      sub_100009104(v54, &qword_1005769D8, &qword_100403DE0);
      v44 = v81;
      v22 = v75;
      goto LABEL_34;
    }

    v67 = v52;
    v59 = v84;
    sub_100010430(v54, v84, &qword_1005769D8, &qword_100403DE0);
    if (v58(v54 + v82, 1, v53) == 1)
    {
      break;
    }

    v60 = v83;
    (*v65)(v83, v54 + v82, v53);
    sub_1001F6DC8(&qword_1005769F0, &type metadata accessor for PriceType, &protocol conformance descriptor for PriceType);
    LODWORD(v82) = dispatch thunk of static Equatable.== infix(_:_:)();

    v61 = *v66;
    (*v66)(v60, v57);
    sub_100009104(v8, &qword_1005769D8, &qword_100403DE0);
    sub_100009104(v10, &qword_1005769D8, &qword_100403DE0);
    v61(v84, v57);
    sub_100009104(v54, &qword_1005769D8, &qword_100403DE0);
    v44 = v81;
    v22 = v75;
    if ((v82 & 1) == 0)
    {
      v62 = 0;
      goto LABEL_60;
    }

LABEL_34:
    v48 = v79 + 1;
    v46 = v69;
    if (v78 == v68)
    {
      goto LABEL_59;
    }
  }

  sub_100009104(v8, &qword_1005769D8, &qword_100403DE0);
  sub_100009104(v10, &qword_1005769D8, &qword_100403DE0);
  (*v66)(v59, v53);
  v50 = v54;
LABEL_45:
  sub_100009104(v50, &qword_1005769D0, &qword_100403DD8);
  v62 = 0;
  v44 = v81;
  v22 = v75;
LABEL_60:

  *(v44 + OBJC_IVAR___MTNetworkMediaManifest_hasOnlyPaidEpisodesWithoutSubscription) = v62;
LABEL_21:
  v35 = _MTLogCategoryPlayback();
  if (v35)
  {
    v36 = v35;

    v37 = static os_log_type_t.default.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100400790;
    v39 = sub_1001F564C();
    *(v38 + 56) = sub_100168088(&qword_100573BD8, &qword_1004012A0);
    *(v38 + 64) = sub_100009FAC(&qword_1005769C8, &qword_100573BD8, &qword_1004012A0, &protocol conformance descriptor for [A]);
    *(v38 + 32) = v39;
    os_log(_:dso:log:type:_:)("NetworkMediaManifest: Loaded items from asset info %@", 53, 2, &_mh_execute_header, v36, v37, v38);

    v40 = v80;
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_1001F3784(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a1;
  a5(v7, v9);

  return 1;
}

void sub_1001F392C(unint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR___MTNetworkMediaManifest_inProgressRefreshHandlers;
    swift_beginAccess();
    v10 = *&v8[v9];
    v11 = *(v10 + 16);
    if (v11)
    {

      v12 = (v10 + 40);
      do
      {
        v13 = *(v12 - 1);
        if (v13)
        {
          v14 = *v12;

          v13(v15);
          sub_1000112B4(v13, v14);
        }

        v12 += 2;
        --v11;
      }

      while (v11);
    }

    *&v8[v9] = _swiftEmptyArrayStorage;

    v8[OBJC_IVAR___MTNetworkMediaManifest_refreshInProgress] = 0;
    if (a1)
    {
      v16 = sub_1001F47F8(a1);
    }

    v8[OBJC_IVAR___MTNetworkMediaManifest_hasOnlyPaidEpisodesWithoutSubscription] = a2 & 1;
    if (a4)
    {
      a4(v16);
    }
  }
}

id sub_1001F3A80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char *a17)
{
  v90 = a8;
  v91 = a7;
  v89 = a9;
  v92 = a10;
  v20 = type metadata accessor for PriceType();
  v88 = *(v20 - 1);
  __chkstk_darwin();
  v22 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100168088(&qword_1005769D0, &qword_100403DD8);
  __chkstk_darwin();
  v25 = v86 - v24;
  sub_100168088(&qword_1005769D8, &qword_100403DE0);
  __chkstk_darwin();
  v27 = v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = v86 - v28;
  __chkstk_darwin();
  v31 = v86 - v30;
  if (!a5)
  {
    if (!a1)
    {
      goto LABEL_90;
    }

    goto LABEL_9;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

  if (a1 >> 62)
  {
    goto LABEL_59;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
LABEL_5:
    result = _MTLogCategoryPlayback();
    if (result)
    {
      v33 = result;
      v34 = static os_log_type_t.error.getter();
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100400790;
      v36 = _convertErrorToNSError(_:)();
      *(v35 + 56) = sub_100009F1C(0, &qword_100573598, NSError_ptr);
      *(v35 + 64) = sub_1001F6F40();
      *(v35 + 32) = v36;
      os_log(_:dso:log:type:_:)("NetworkMediaManifest: Failed to refresh episodes for podcast with error %@", 74, 2, &_mh_execute_header, v33, v34, v35);

      if (a6)
      {
        return (a6)(0, 0);
      }

      return result;
    }

    goto LABEL_101;
  }

LABEL_9:
  v37 = sub_10037FC18(a1);
  if (!v37)
  {
    goto LABEL_15;
  }

  if (!v37[2])
  {

LABEL_15:
    v43 = sub_10037FDBC(a1);
    if (!v43)
    {
      goto LABEL_90;
    }

    v31 = v43;
    v87 = a6;
    v93 = _swiftEmptyArrayStorage;
    a6 = v43 & 0xFFFFFFFFFFFFFF8;
    if (v43 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = 0;
    v25 = (v31 & 0xC000000000000001);
    v88 = _swiftEmptyArrayStorage;
    if (!v23)
    {
LABEL_19:
      swift_beginAccess();
      v29 = v88;

      sub_1001C4074(v44);
      swift_endAccess();
      result = _MTLogCategoryPlayback();
      if (result)
      {
        v45 = result;

        static os_log_type_t.default.getter();
        sub_100168088(&unk_100574670, &qword_100400AB0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_100400790;
        a6 = v87;
        if (v29 >> 62)
        {
          v47 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v47 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v46 + 56) = &type metadata for Int;
        *(v46 + 64) = &protocol witness table for Int;
        *(v46 + 32) = v47;
        os_log(_:dso:log:type:_:)("NetworkMediaManifest: Performed fetch for library episodes, added %d episodes", LODWORD(v86[0]));
        goto LABEL_89;
      }

      goto LABEL_103;
    }

    while (1)
    {
      if (v25)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *(a6 + 16))
        {
          goto LABEL_57;
        }

        v48 = *(v31 + 8 * a1 + 32);
      }

      v22 = v48;
      v29 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        if (_CocoaArrayWrapper.endIndex.getter() <= 0)
        {
          goto LABEL_5;
        }

        goto LABEL_9;
      }

      v49 = dispatch thunk of ServerPodcastEpisode.relationships.getter();
      if (v49)
      {
        v50 = v49;
        v27 = PodcastEpisodeRelationships.podcast.getter();

        if (v27)
        {
          break;
        }
      }

      v20 = 0;
LABEL_24:
      v27 = [objc_allocWithZone(MTPlayerItem) initWithPodcastEpisode:v22 podcast:v20];

      ++a1;
      if (v27)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v88 = v93;
        a1 = v29;
        if (v23 == v29)
        {
          goto LABEL_19;
        }
      }

      else if (v23 == a1)
      {
        goto LABEL_19;
      }
    }

    v51 = PodcastRelationshipContainer.data.getter();

    if (v51 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_34;
      }
    }

    else if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_34:
      if ((v51 & 0xC000000000000001) != 0)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v52 = *(v51 + 32);
      }

      v20 = v52;
      goto LABEL_45;
    }

    v20 = 0;
LABEL_45:

    goto LABEL_24;
  }

  v39 = v37[4];
  v38 = v37[5];
  v86[3] = v37;
  type metadata accessor for ServerPodcast();
  v40 = swift_dynamicCastClass();
  if (!v40)
  {
    swift_unknownObjectRetain();
    goto LABEL_85;
  }

  v86[1] = v40;
  v86[2] = v38;
  v41 = v90;
  swift_beginAccess();
  LOBYTE(v41) = *(v41 + 16);
  swift_unknownObjectRetain();
  if ((v41 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v53 = ServerPodcastBase.attributes.getter();
    v87 = a6;
    if (v53)
    {
      v54 = PodcastAttributes.offers.getter();
      v86[0] = v39;
      v55 = v54;

      v56 = v55;
      v39 = v86[0];
      if (v56)
      {
        v57 = v56 & 0xFFFFFFFFFFFFFF8;
        if (v56 >> 62)
        {
          v59 = v56;
          v60 = _CocoaArrayWrapper.endIndex.getter();
          v56 = v59;
          v39 = v86[0];
          if (v60)
          {
            goto LABEL_52;
          }
        }

        else if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_52:
          if ((v56 & 0xC000000000000001) != 0)
          {
            v86[0] = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*(v57 + 16))
            {
              __break(1u);
              goto LABEL_97;
            }

            v86[0] = *(v56 + 32);
          }

          dispatch thunk of PodcastShowOffer.typeResolved.getter();

          v58 = v88;
LABEL_66:
          (v58[13])(v29, enum case for PriceType.psub(_:), v20);
          (v58[7])(v29, 0, 1, v20);
          v61 = *(v23 + 48);
          sub_100010430(v31, v25, &qword_1005769D8, &qword_100403DE0);
          v86[0] = v61;
          sub_100010430(v29, &v25[v61], &qword_1005769D8, &qword_100403DE0);
          v62 = v58[6];
          if (v62(v25, 1, v20) == 1)
          {
            sub_100009104(v29, &qword_1005769D8, &qword_100403DE0);
            sub_100009104(v31, &qword_1005769D8, &qword_100403DE0);
            if (v62(&v25[v86[0]], 1, v20) == 1)
            {
              sub_100009104(v25, &qword_1005769D8, &qword_100403DE0);
              a6 = v87;
LABEL_73:
              if (ServerPodcastBase.relationships.getter())
              {
                v66 = PodcastRelationships.channel.getter();

                if (v66)
                {
                  v23 = PodcastChannelRelationshipContainer.data.getter();

                  if (!(v23 >> 62))
                  {
                    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (result)
                    {
                      goto LABEL_77;
                    }

                    goto LABEL_98;
                  }

LABEL_97:
                  result = _CocoaArrayWrapper.endIndex.getter();
                  if (result)
                  {
LABEL_77:
                    if ((v23 & 0xC000000000000001) != 0)
                    {
                      v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        __break(1u);
LABEL_101:
                        __break(1u);
                        goto LABEL_102;
                      }

                      v67 = *(v23 + 32);
                    }

                    v68 = v67;

                    ServerChannel.attributes.getter();

                    v69 = ChannelAttributes.isSubscribed.getter();

                    swift_unknownObjectRelease();
                    if (v69 != 2)
                    {
                      v42 = v69 ^ 1;
                      goto LABEL_84;
                    }

LABEL_83:
                    v42 = 0;
                    goto LABEL_84;
                  }

LABEL_98:
                  swift_unknownObjectRelease();

                  goto LABEL_83;
                }
              }

LABEL_82:
              swift_unknownObjectRelease();
              goto LABEL_83;
            }
          }

          else
          {
            sub_100010430(v25, v27, &qword_1005769D8, &qword_100403DE0);
            v63 = v86[0];
            if (v62(&v25[v86[0]], 1, v20) != 1)
            {
              v64 = v88;
              (v88[4])(v22, &v25[v63], v20);
              sub_1001F6DC8(&qword_1005769F0, &type metadata accessor for PriceType, &protocol conformance descriptor for PriceType);
              LODWORD(v86[0]) = dispatch thunk of static Equatable.== infix(_:_:)();
              v65 = v64[1];
              v65(v22, v20);
              sub_100009104(v29, &qword_1005769D8, &qword_100403DE0);
              sub_100009104(v31, &qword_1005769D8, &qword_100403DE0);
              v65(v27, v20);
              sub_100009104(v25, &qword_1005769D8, &qword_100403DE0);
              a6 = v87;
              if ((v86[0] & 1) == 0)
              {
                goto LABEL_82;
              }

              goto LABEL_73;
            }

            sub_100009104(v29, &qword_1005769D8, &qword_100403DE0);
            sub_100009104(v31, &qword_1005769D8, &qword_100403DE0);
            (v88[1])(v27, v20);
          }

          sub_100009104(v25, &qword_1005769D0, &qword_100403DD8);
          a6 = v87;
          goto LABEL_82;
        }
      }
    }

    v58 = v88;
    (v88[7])(v31, 1, 1, v20);
    goto LABEL_66;
  }

  v42 = 1;
LABEL_84:
  v70 = v90;
  swift_beginAccess();
  *(v70 + 16) = v42 & 1;
LABEL_85:
  swift_getObjectType();
  v71 = swift_unknownObjectRetain();
  v72 = sub_1001F5F9C(v71);
  swift_unknownObjectRelease();
  swift_beginAccess();

  sub_1001C4074(v73);
  swift_endAccess();
  result = _MTLogCategoryPlayback();
  if (!result)
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    return result;
  }

  v45 = result;

  v29 = static os_log_type_t.default.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1004007C0;
  v75 = [v39 id];
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  *(v74 + 56) = &type metadata for String;
  *(v74 + 64) = sub_100022C18();
  *(v74 + 32) = v76;
  *(v74 + 40) = v78;
  if (v72 >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    *(v74 + 96) = &type metadata for Int;
    *(v74 + 104) = &protocol witness table for Int;
    *(v74 + 72) = i;
    os_log(_:dso:log:type:_:)("NetworkMediaManifest: Performed fetch for Podcast %@, added %d episodes", 71, 2, &_mh_execute_header, v45, v29, v74);
    swift_unknownObjectRelease();
LABEL_89:

LABEL_90:
    v74 = a12;
    swift_beginAccess();
    v80 = *(*(a12 + 16) + 16);
    v45 = (a11 + v80);
    if (!__OFADD__(a11, v80))
    {
      break;
    }

    __break(1u);
LABEL_94:
    ;
  }

  v81 = v92;
  swift_beginAccess();
  v82 = *(v81 + 16);
  v83 = v90;
  swift_beginAccess();
  v84 = a6;
  v85 = *(v83 + 16);

  sub_1001EF530(v45, a13, a14, a15, a16, a17, v82, v85, v84, v91);
}

uint64_t sub_1001F47F8(unint64_t a1)
{
  v2 = v1;
  result = _MTLogCategoryPlayback();
  if (!result)
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    return result;
  }

  v5 = result;
  static os_log_type_t.default.getter();
  v6 = sub_100168088(&unk_100574670, &qword_100400AB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100400790;
  v8 = a1 >> 62;
  v101 = v2;
  if (a1 >> 62)
  {
    goto LABEL_105;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v7 + 56) = &type metadata for Int;
    *(v7 + 64) = &protocol witness table for Int;
    *(v7 + 32) = v9;
    os_log(_:dso:log:type:_:)("NetworkMediaManifest: Got %d results from Media API", v97);

    if (!v9)
    {
      return v9;
    }

    v99 = v9;
    v9 = &selRef_isPartiallyPlayedBackCatalogItem;
    result = [v2 items];
    if (!result)
    {
      goto LABEL_181;
    }

    v10 = result;
    v5 = sub_100009F1C(0, &qword_10057A130, off_1004D1B30);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      v2 = v101;
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v12)
    {
      break;
    }

    v100 = v8;
    v13 = &selRef_application_willFinishLaunchingWithOptions_;
    v14 = [v2 currentIndex];
    result = [v2 items];
    if (!result)
    {
      goto LABEL_182;
    }

    v15 = result;
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v2 = v101;
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v100;
    if (v17 >= 1 && v14 < v17)
    {
      result = _MTLogCategoryPlayback();
      if (!result)
      {
        goto LABEL_183;
      }

      v12 = result;
      static os_log_type_t.default.getter();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100400790;
      v9 = &selRef_isPartiallyPlayedBackCatalogItem;
      result = [v2 items];
      if (!result)
      {
        goto LABEL_184;
      }

      v18 = result;
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v19 >> 62))
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_18;
      }

LABEL_111:
      v20 = _CocoaArrayWrapper.endIndex.getter();
      v2 = v101;
LABEL_18:

      v21 = [v2 currentIndex];
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        v52 = _CocoaArrayWrapper.endIndex.getter();
        if (!v52)
        {
          goto LABEL_118;
        }

LABEL_66:
        v23 = __OFSUB__(v52, 1);
        v53 = v52 - 1;
        if (v23)
        {
          goto LABEL_170;
        }

        if ((v12 & 0xC000000000000001) != 0)
        {
          goto LABEL_171;
        }

        if ((v53 & 0x8000000000000000) == 0)
        {
          if (v53 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_173;
          }

          v54 = *(v12 + 8 * v53 + 32);
          goto LABEL_71;
        }

        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
        goto LABEL_175;
      }

      v22 = v20 - v21;
      if (__OFSUB__(v20, v21))
      {
        goto LABEL_113;
      }

      v23 = __OFSUB__(v22, 1);
      v24 = v22 - 1;
      if (v23)
      {
        goto LABEL_114;
      }

      *(v8 + 56) = &type metadata for Int;
      *(v8 + 64) = &protocol witness table for Int;
      *(v8 + 32) = v24;
      os_log(_:dso:log:type:_:)("NetworkMediaManifest: Removed %d stale items from end of queue", v97);

      v25 = [v2 currentIndex];
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_115;
      }

      v26 = v25;
      result = [v2 *(v9 + 664)];
      if (!result)
      {
        goto LABEL_186;
      }

      v27 = result;
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
LABEL_157:
        __break(1u);
LABEL_158:
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_78;
      }

      if (v28 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result < 0)
        {
          goto LABEL_191;
        }

        if (_CocoaArrayWrapper.endIndex.getter() < v29)
        {
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }
      }

      else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < v29)
      {
        goto LABEL_161;
      }

      if (v29 < 0)
      {
        goto LABEL_163;
      }

      v30 = v6;

      if ((v28 & 0xC000000000000001) != 0)
      {
        v31 = 0;
        do
        {
          v32 = v31 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v31);
          v31 = v32;
        }

        while (v29 != v32);
      }

      if (v28 >> 62)
      {
        v34 = _CocoaArrayWrapper.subscript.getter();
        v35 = v43;
        v33 = v44;
        v36 = v45;
      }

      else
      {
        v33 = 0;
        v34 = v28 & 0xFFFFFFFFFFFFFF8;
        v35 = (v28 & 0xFFFFFFFFFFFFFF8) + 32;
        v36 = (2 * v29) | 1;
      }

      v6 = v30;
      v2 = v101;
      if ((v36 & 1) == 0)
      {
LABEL_53:
        sub_1002750B4(v34, v35, v33, v36);
        v9 = v100;
        v13 = &selRef_application_willFinishLaunchingWithOptions_;
        goto LABEL_59;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v46 = swift_dynamicCastClass();
      if (!v46)
      {
        swift_unknownObjectRelease();
        v46 = _swiftEmptyArrayStorage;
      }

      v47 = v46[2];

      if (__OFSUB__(v36 >> 1, v33))
      {
        __break(1u);
      }

      else if (v47 == (v36 >> 1) - v33)
      {
        v48 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v2 = v101;
        v9 = v100;
        v13 = &selRef_application_willFinishLaunchingWithOptions_;
        if (!v48)
        {
LABEL_59:
          swift_unknownObjectRelease();
        }

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v2 setItems:isa];

        goto LABEL_61;
      }

      swift_unknownObjectRelease_n();
      v2 = v101;
      goto LABEL_53;
    }

LABEL_61:
    v12 = [v2 v13[439]];
    v50 = NSNotFound.getter();
    if ((v50 & 0x8000000000000000) == 0 && v12 == v50)
    {
      result = [v2 items];
      if (!result)
      {
        goto LABEL_185;
      }

      v51 = result;
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v12 >> 62))
      {
        v52 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v52)
        {
          goto LABEL_66;
        }

LABEL_118:

        v56 = 0;
        v57 = 0;
        v58 = a1 & 0xFFFFFFFFFFFFFF8;
        if (!v9)
        {
          goto LABEL_79;
        }

        goto LABEL_119;
      }

      goto LABEL_117;
    }

    v59 = [v2 v13[439]];
    if ((v59 & 0x8000000000000000) != 0)
    {
      goto LABEL_116;
    }

    v60 = v59;
    result = [v2 items];
    if (!result)
    {
      goto LABEL_187;
    }

    v61 = result;
    v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v62 & 0xC000000000000001) != 0)
    {
      goto LABEL_158;
    }

    if (v60 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_162;
    }

    v63 = *(v62 + 8 * v60 + 32);
LABEL_78:
    v64 = v63;

    v56 = [v64 episodeStoreId];

    v57 = 1;
    v9 = v100;
    v58 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v100)
    {
LABEL_79:
      v7 = *(v58 + 16);
      if (v7)
      {
        goto LABEL_80;
      }

      goto LABEL_120;
    }

LABEL_119:
    while (1)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (v7)
      {
        break;
      }

LABEL_120:
      v8 = 0;
LABEL_121:
      v77 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_157;
      }

      if (v77 >= v99)
      {
        return 0;
      }

      v78 = *&v101[OBJC_IVAR___MTNetworkMediaManifest_forwardItemCount];
      v23 = __OFADD__(v77, v78);
      v79 = v77 + v78;
      if (v23)
      {
        goto LABEL_164;
      }

      if (v99 >= v79)
      {
        v9 = v79;
      }

      else
      {
        v9 = v99;
      }

      if (v9 < v77)
      {
        goto LABEL_165;
      }

      if (v100)
      {
        v80 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v80 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v80 < v77)
      {
        goto LABEL_166;
      }

      if (v77 < 0)
      {
        goto LABEL_167;
      }

      if (v100)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (result < v9)
      {
        goto LABEL_168;
      }

      if ((a1 & 0xC000000000000001) == 0 || v77 == v9)
      {

        if (!v100)
        {
          goto LABEL_144;
        }
      }

      else
      {
        if (v77 >= v9)
        {
          __break(1u);
          goto LABEL_180;
        }

        v81 = v8 + 1;
        do
        {
          v82 = v81 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v81);
          v81 = v82;
        }

        while (v9 != v82);
        if (!v100)
        {
LABEL_144:
          v83 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
          v84 = (2 * v9) | 1;
          goto LABEL_147;
        }
      }

      _CocoaArrayWrapper.subscript.getter();
      v83 = v85;
      v77 = v86;
      v84 = v87;
LABEL_147:
      result = [v101 items];
      if (!result)
      {
        goto LABEL_188;
      }

      v88 = result;
      v89 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v90 = swift_unknownObjectRetain();
      sub_1001CCA5C(v90, v83, v77, v84);
      swift_unknownObjectRelease();
      if (v89)
      {
        v91.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v91.super.isa = 0;
      }

      [v101 setItems:v91.super.isa];

      [v101 postLoadedAdditionalItemsNotification];
      [v101 postManifestDidChangeNotification];
      result = _MTLogCategoryPlayback();
      if (!result)
      {
        goto LABEL_189;
      }

      a1 = result;
      v5 = static os_log_type_t.default.getter();
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_100400790;
      v23 = __OFSUB__(v84 >> 1, v77);
      v9 = (v84 >> 1) - v77;
      if (!v23)
      {
        *(v92 + 56) = &type metadata for Int;
        *(v92 + 64) = &protocol witness table for Int;
        *(v92 + 32) = v9;
        os_log(_:dso:log:type:_:)("NetworkMediaManifest: Added %d items to the end of the queue", v97);

        result = _MTLogCategoryPlayback();
        if (!result)
        {
          goto LABEL_190;
        }

        v93 = result;
        v94 = static os_log_type_t.default.getter();
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_100400790;
        v96 = sub_1001F564C();
        *(v95 + 56) = sub_100168088(&qword_100573BD8, &qword_1004012A0);
        *(v95 + 64) = sub_100009FAC(&qword_1005769C8, &qword_100573BD8, &qword_1004012A0, &protocol conformance descriptor for [A]);
        *(v95 + 32) = v96;
        os_log(_:dso:log:type:_:)("NetworkMediaManifest: Queue is now: %@", 38, 2, &_mh_execute_header, v93, v94, v95);
        swift_unknownObjectRelease();

        return v9;
      }

LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_71:
      v55 = v54;

      v56 = [v55 episodeStoreId];

      v57 = 1;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v9)
      {
        goto LABEL_79;
      }
    }

LABEL_80:
    v98 = v6;
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v9)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_104;
        }

        v65 = *(a1 + 8 * v8 + 32);
      }

      v66 = v65;
      v67 = [v65 episodeStoreId];

      if (v67 == v56)
      {
        v68 = v57;
      }

      else
      {
        v68 = 0;
      }

      if (v68)
      {
        goto LABEL_92;
      }

      v69 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      ++v8;
      if (v69 == v7)
      {
        v8 = 0;
LABEL_92:
        v6 = v98;
        goto LABEL_121;
      }
    }

    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v101;
  }

  v37 = *&v2[OBJC_IVAR___MTNetworkMediaManifest_forwardItemCount];
  v23 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (v23)
  {
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (v38 >= v99)
  {
    v9 = v99;
  }

  else
  {
    v9 = v38;
  }

  if (v9 < 0)
  {
    goto LABEL_109;
  }

  if (v8)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_174;
    }

    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v39 < v9)
  {
    goto LABEL_110;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {

    if (v9)
    {
      v40 = 0;
      do
      {
        v41 = v40 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v40);
        v40 = v41;
      }

      while (v9 != v41);
    }

    if (!v8)
    {
LABEL_50:
      v6 = 0;
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
      v42 = a1 + 32;
      v12 = (2 * v9) | 1;
      goto LABEL_96;
    }
  }

  else
  {

    if (!v8)
    {
      goto LABEL_50;
    }
  }

  a1 = _CocoaArrayWrapper.subscript.getter();
  v6 = v70;
  v12 = v71;
  if ((v71 & 1) == 0)
  {
LABEL_95:
    sub_1002750B4(a1, v42, v6, v12);
    v72 = v101;
    goto LABEL_101;
  }

LABEL_96:
  v2 = v42;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v73 = swift_dynamicCastClass();
  if (!v73)
  {
    swift_unknownObjectRelease();
    v73 = _swiftEmptyArrayStorage;
  }

  v74 = v73[2];

  if (__OFSUB__(v12 >> 1, v6))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (v74 != (v12 >> 1) - v6)
  {
LABEL_176:
    swift_unknownObjectRelease();
    v42 = v2;
    goto LABEL_95;
  }

  v75 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v72 = v101;
  if (!v75)
  {
LABEL_101:
    swift_unknownObjectRelease();
  }

  v76 = Array._bridgeToObjectiveC()().super.isa;

  [v72 setItems:v76];

  return v9;
}

unint64_t sub_1001F5550()
{
  v1 = [v0 currentIndex];
  v2 = [v0 count];
  result = [v0 count];
  if (v2 >= 1 && v1 < v2)
  {
    v5 = result;
    result = [v0 currentIndex];
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v6 = v5 - result;
      if (!__OFSUB__(v5, result))
      {
        result = v6 - 1;
        if (!__OFSUB__(v6, 1))
        {
          return result;
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

char *sub_1001F564C()
{
  result = [v0 items];
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  sub_100009F1C(0, &qword_10057A130, off_1004D1B30);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_14:

    return _swiftEmptyArrayStorage;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_4:
  result = sub_1001A73C8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      v8 = [v6 episodeStoreId];

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1001A73C8((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      _swiftEmptyArrayStorage[v10 + 4] = v8;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

id sub_1001F5848()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkMediaManifest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001F5934(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a1)
  {
    v24 = a1;
    v5 = [v24 uuid];
    if (v5)
    {
      v6 = v5;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      sub_100168088(&unk_100574670, &qword_100400AB0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100400790;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_100022C18();
      *(v10 + 32) = v7;
      *(v10 + 40) = v9;
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);

      v11 = static OS_os_log.default.getter();
      v12 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("NetworkMediaManifest: Returning MTEpisodeManifest with UUID %{public}s.", 71, 2, &_mh_execute_header, v11, v12, v10);

      v13 = objc_allocWithZone(MTEpisodeManifest);
      v14 = String._bridgeToObjectiveC()();

      v23 = [v13 initWithEpisodeUuid:v14];

      a4(v23);
      v15 = v23;
    }

    else
    {
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v21 = static OS_os_log.default.getter();
      v22 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("NetworkMediaManifest: No UUID found on returned episode, returning nil.", 71, 2, &_mh_execute_header, v21, v22, _swiftEmptyArrayStorage);

      a4(0);
      v15 = v24;
    }
  }

  else
  {
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100400790;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100022C18();
    *(v18 + 32) = a2;
    *(v18 + 40) = a3;
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);

    v19 = static OS_os_log.default.getter();
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("NetworkMediaManifest: No episode found with GUID: %{public}s, returning nil.", 76, 2, &_mh_execute_header, v19, v20, v18);

    a4(0);
  }
}

void *sub_1001F5C7C(void *a1)
{
  v1 = a1;
  v2 = dispatch thunk of ServerPodcastStation.episodes.getter();
  if (v2)
  {
    v3 = v2;
    v12 = v1;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_19;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = [objc_allocWithZone(MTPlayerItem) initWithPodcastEpisode:v7 podcast:{0, v12}];

      ++v6;
      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v9;
      }
    }
  }

  else
  {
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1001F5E0C(void *a1)
{
  v1 = a1;
  v2 = dispatch thunk of ServerPodcast.episodes.getter();
  if (v2)
  {
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_19;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = [objc_allocWithZone(MTPlayerItem) initWithPodcastEpisode:v7 podcast:v1];

      ++v6;
      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v9;
      }
    }
  }

  else
  {
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1001F5F9C(uint64_t a1)
{
  type metadata accessor for ServerPodcast();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    type metadata accessor for ServerPodcastStation();
    v12 = swift_dynamicCastClass();
    result = _swiftEmptyArrayStorage;
    if (!v12)
    {
      return result;
    }

    swift_unknownObjectRetain();
    v14 = dispatch thunk of ServerPodcastStation.episodes.getter();
    if (v14)
    {
      v2 = v14;
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v14 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v4 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = 0;
      v5 = v2 & 0xC000000000000001;
      while (v4 != v16)
      {
        if (v5)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *(v15 + 16))
          {
            goto LABEL_38;
          }

          v17 = *(v2 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v20 = [objc_allocWithZone(MTPlayerItem) initWithPodcastEpisode:v17 podcast:0];

        ++v16;
        if (v20)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v16 = v19;
        }
      }

      goto LABEL_33;
    }

LABEL_32:
    swift_unknownObjectRelease();
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  swift_unknownObjectRetain();
  v3 = dispatch thunk of ServerPodcast.episodes.getter();
  if (!v3)
  {
    goto LABEL_32;
  }

  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_39:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_36;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v11 = [objc_allocWithZone(MTPlayerItem) initWithPodcastEpisode:v8 podcast:v2];

    ++v7;
    if (v11)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v10;
    }
  }

LABEL_33:
  swift_unknownObjectRelease();

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001F62C0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR___MTNetworkMediaManifest_manifestWorkQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1001F6E10;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E4248;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  sub_100013CB4(a1, a2);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1001F6DC8(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0, &unk_100400B50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1001F65A8(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for MediaRequest.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR___MTNetworkMediaManifest_refreshInProgress))
  {
    if (a1)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = a1;
      *(v9 + 24) = a2;
      v10 = sub_10002D7F0;
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v22 = OBJC_IVAR___MTNetworkMediaManifest_inProgressRefreshHandlers;
    swift_beginAccess();
    v23 = *(v2 + v22);
    sub_100013CB4(a1, a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v22) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1002437D4(0, v23[2] + 1, 1, v23);
      *(v2 + v22) = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_1002437D4((v25 > 1), v26 + 1, 1, v23);
    }

    v23[2] = v26 + 1;
    v27 = &v23[2 * v26];
    v27[4] = v10;
    v27[5] = v9;
    *(v2 + v22) = v23;
    return swift_endAccess();
  }

  else
  {
    *(v2 + OBJC_IVAR___MTNetworkMediaManifest_refreshInProgress) = 1;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a1;
    v12[4] = a2;

    sub_100013CB4(a1, a2);
    v13 = sub_1001F5550();
    v14 = OBJC_IVAR___MTNetworkMediaManifest_forwardItemCount;
    if (v13 >= *(v2 + OBJC_IVAR___MTNetworkMediaManifest_forwardItemCount))
    {
      sub_1001F392C(0, 0, v11, a1);
    }

    else
    {

      v15 = *(v2 + OBJC_IVAR___MTNetworkMediaManifest_initialIds);
      swift_getObjectType();
      if (v15)
      {
        v16 = *(v2 + OBJC_IVAR___MTNetworkMediaManifest_mediaRequestController);
        v17 = OBJC_IVAR___MTNetworkMediaManifest_contentType;
        swift_beginAccess();
        (*(v6 + 16))(v8, v2 + v17, v5);
        v18 = *(v2 + v14);
        v19 = *(v2 + OBJC_IVAR___MTNetworkMediaManifest_episodeFetchLimit);

        v20 = v16;

        sub_1001EF530(0, v15, v20, v8, v18, v19, _swiftEmptyArrayStorage, 0, sub_1001F6E3C, v12);
      }

      else
      {
        v28 = *(v2 + OBJC_IVAR___MTNetworkMediaManifest_mediaRequestController);
        v29 = OBJC_IVAR___MTNetworkMediaManifest_contentType;
        swift_beginAccess();
        (*(v6 + 16))(v8, v2 + v29, v5);
        v30 = *(v2 + v14);
        v31 = *(v2 + OBJC_IVAR___MTNetworkMediaManifest_episodeFetchLimit);

        v32 = v28;
        sub_1001EF530(0, _swiftEmptyArrayStorage, v32, v8, v30, v31, _swiftEmptyArrayStorage, 0, sub_1001F6E3C, v12);
      }

      return (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_1001F69FC(void *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  _Block_copy(a2);
  v5 = a1;
  v6 = static OS_os_log.default.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v27 = v4;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136446210;
    v10 = [v5 itemIdentifier];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E4C494E3CLL;
    }

    v15 = sub_1000153E0(v12, v14, &v28);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "NetworkMediaManifest: Attempting to restore activity with identifier: %{public}s", v8, 0xCu);
    sub_100004590(v9);

    v4 = v27;
  }

  else
  {
  }

  v16 = [v5 itemIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [v5 containerIdentifier];
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for CoreDataFetcher();
    v26 = swift_allocObject();
    v26[2] = v18;
    v26[3] = v20;
    v26[4] = sub_1001F6D40;
    v26[5] = v4;

    static CoreDataFetcher.fetchEpisode(for:on:completion:)();
  }

  else
  {
    v23 = static OS_os_log.default.getter();
    v24 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("NetworkMediaManifest: No GUID found, retuning nil.", 50, 2, &_mh_execute_header, v23, v24, _swiftEmptyArrayStorage);

    a2[2](a2, 0);
  }
}

uint64_t sub_1001F6D60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001F6D74(a1, a2);
  }

  return a1;
}

uint64_t sub_1001F6D74(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1001F6DC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1001F6E48(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for MediaRequest.ContentType() - 8);
  v12 = (*(v11 + 80) + 88) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001F3A80(a1, a2, a3, a4, a5, *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1001F6F40()
{
  result = qword_100576A38;
  if (!qword_100576A38)
  {
    sub_100009F1C(255, &qword_100573598, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576A38);
  }

  return result;
}

uint64_t sub_1001F6FB4()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001F6FFC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t CategoryIngester.__deallocating_deinit()
{
  sub_100004590((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1001F7098(uint64_t a1, unsigned __int8 a2, __int16 a3, uint64_t a4)
{
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      if ((a3 & 1) == 0)
      {
LABEL_20:
        result = 1;
        if (a4 != 1)
        {
          v8 = a1;
          sub_100168088(&qword_100576AF8, &unk_100403EB0);
          v9 = swift_allocObject();
          result = 1;
          *(v9 + 16) = xmmword_100400790;
          *(v9 + 32) = v8;
          *(v9 + 40) = 1;
        }

        return result;
      }

      if ((a3 & 0x100) == 0)
      {
        result = 2;
        if (a4 != 1)
        {
          v12 = a1;
          sub_100168088(&qword_100576AF8, &unk_100403EB0);
          v13 = swift_allocObject();
          result = 2;
          *(v13 + 16) = xmmword_1004007C0;
          *(v13 + 32) = 1;
          *(v13 + 40) = 2;
          *(v13 + 48) = v12;
          *(v13 + 56) = 1;
        }

        return result;
      }

      if (a4 != 1)
      {
        sub_100168088(&qword_100576AF8, &unk_100403EB0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_100400790;
        *(v15 + 32) = a1;
        *(v15 + 40) = 1;
      }
    }

    else
    {
      if (a2 != 4)
      {
        return 1;
      }

      if (a1 > 4)
      {
        if ((a1 == 5 || a1 == 6) && (a3 & 0x100) != 0)
        {
          return 1;
        }

        return 1;
      }

      if (a1 != 1 && a1 != 2 || (a3 & 1) == 0)
      {
        return 1;
      }

      if ((a3 & 0x100) == 0)
      {
        return 2;
      }
    }

    return 3;
  }

  if (a2)
  {
    if (a2 != 2)
    {
      return 1;
    }

    goto LABEL_20;
  }

  if ((a3 & 0x100) != 0)
  {
    if (a4)
    {
      sub_100168088(&qword_100576AF8, &unk_100403EB0);
      v11 = swift_allocObject();
      result = 0;
      *(v11 + 16) = xmmword_100400790;
      *(v11 + 32) = a1;
      *(v11 + 40) = 0;
    }

    else
    {
      return 0;
    }
  }

  else if (a4)
  {
    sub_100168088(&qword_100576AF8, &unk_100403EB0);
    v7 = swift_allocObject();
    result = 0;
    *(v7 + 16) = xmmword_1004007C0;
    *(v7 + 32) = a1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 2;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1001F7344(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v8 = *(type metadata accessor for Logger() - 8);
  __chkstk_darwin();
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v42 - v11;
  __chkstk_darwin();
  v14 = &v42 - v13;
  __chkstk_darwin();
  v17 = &v42 - v16;
  if (!a2)
  {
    if (!a4)
    {
      return 0;
    }

    sub_100168088(&qword_100576AF8, &unk_100403EB0);
    v22 = swift_allocObject();
    v23 = 0;
    *(v22 + 16) = xmmword_1004007E0;
    *(v22 + 32) = 0;
    *(v22 + 40) = 2;
    *(v22 + 48) = a1;
    *(v22 + 56) = 0;
    goto LABEL_15;
  }

  if (a2 != 2)
  {
    if (a2 == 4)
    {
      if (a1 <= 6)
      {
        if (a1)
        {
          if (a1 != 4)
          {
            return 2;
          }

          return 3;
        }

        if ((a3 & 1) == 0)
        {
          return 1;
        }

        goto LABEL_26;
      }

      switch(a1)
      {
        case 7:
          if (a3)
          {
            return 3;
          }

          break;
        case 8:
          if (a4 != 2)
          {
            v33 = v15;
            static Logger.podcastsStatesCoordination.getter();
            v34 = Logger.logObject.getter();
            v35 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              v37 = swift_slowAlloc();
              v43 = v37;
              *v36 = 136315138;
              v38 = PodcastsStateChangeOrigin.description.getter();
              v40 = sub_1000153E0(v38, v39, &v43);

              *(v36 + 4) = v40;
              sub_100004590(v37);
            }

            (*(v8 + 8))(v12, v33);
          }

          return 2;
        case 9:
          v24 = v15;
          static Logger.podcastsStatesCoordination.getter();
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v25, v26))
          {
            v23 = 2;
            v27 = swift_slowAlloc();
            *v27 = 0;

            (*(v8 + 8))(v10, v24);
            return v23;
          }

          (*(v8 + 8))(v10, v24);
          break;
      }
    }

    return 2;
  }

  if (a3)
  {
    if (a4 == 1)
    {
LABEL_26:
      v29 = v15;
      static Logger.podcastsStatesCoordination.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Somehow we end up with an Implicit Follow that does NOT have any play state, that doesn't make sense.", v32, 2u);
      }

      (*(v8 + 8))(v14, v29);
      return 1;
    }

    v18 = v15;
    static Logger.podcastsStatesCoordination.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Somehow we end up with an Implicit Follow that does NOT have any play state, that doesn't make sense.", v21, 2u);
    }

    (*(v8 + 8))(v17, v18);
    sub_100168088(&qword_100576AF8, &unk_100403EB0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1004007E0;
    *(v22 + 32) = 0;
    *(v22 + 40) = 2;
    *(v22 + 48) = a1;
    v23 = 1;
    *(v22 + 56) = 1;
LABEL_15:
    *(v22 + 64) = 4;
    *(v22 + 72) = 2;
    return v23;
  }

  v23 = 1;
  if (a4 != 1)
  {
    sub_100168088(&qword_100576AF8, &unk_100403EB0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1004007C0;
    *(v28 + 32) = a1;
    *(v28 + 40) = 1;
    *(v28 + 48) = 4;
    *(v28 + 56) = 2;
  }

  return v23;
}

uint64_t sub_1001F794C(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v8 = *(type metadata accessor for Logger() - 8);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v26 - v12;
  if (a2)
  {
    if (a2 == 2)
    {
      v14 = 1;
      if (a4 != 1)
      {
        sub_100168088(&qword_100576AF8, &unk_100403EB0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_100400790;
        *(v15 + 32) = a1;
        *(v15 + 40) = 1;
      }
    }

    else
    {
      if (a2 != 4)
      {
        return 3;
      }

      if (a1 <= 4)
      {
        if (!a1)
        {
          return 1;
        }

        if (a1 == 3)
        {
          return 2;
        }

        return 3;
      }

      if (a1 == 5)
      {
        v18 = v11;
        static Logger.podcastsStatesCoordination.getter();
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v14 = 2;
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "Somehow we end up with an Implicit Follow that does NOT have any play state, that doesn't make sense.", v21, 2u);

          (*(v8 + 8))(v13, v18);
        }

        else
        {

          (*(v8 + 8))(v13, v18);
          return 2;
        }
      }

      else
      {
        if (a1 != 6)
        {
          return 3;
        }

        if (a3)
        {
          return 2;
        }

        else
        {
          v22 = v11;
          static Logger.podcastsStatesCoordination.getter();
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v23, v24, "The show has play state but for some reason it's in Store state. This doesn't make any sense, with playState a show should be at least Implicitly Followed. Figure out what's going on.", v25, 2u);
          }

          (*(v8 + 8))(v10, v22);
          return 2;
        }
      }
    }
  }

  else if (a4)
  {
    sub_100168088(&qword_100576AF8, &unk_100403EB0);
    v16 = swift_allocObject();
    v14 = 0;
    *(v16 + 16) = xmmword_100400790;
    *(v16 + 32) = a1;
    *(v16 + 40) = 0;
  }

  else
  {
    return 0;
  }

  return v14;
}

uint64_t sub_1001F7D14(uint64_t a1, char a2, __int16 a3, uint64_t a4)
{
  if (a2 == 3 || a2 == 2)
  {
    if (a4 != 1)
    {
      sub_100168088(&qword_100576AF8, &unk_100403EB0);
      v7 = swift_allocObject();
      result = 0;
      *(v7 + 16) = xmmword_100400790;
      *(v7 + 32) = a1;
      *(v7 + 40) = 1;
      return result;
    }

    return 0;
  }

  if (a2 != 1)
  {
    return 0;
  }

  if (a3)
  {
    if ((a3 & 0x100) != 0)
    {
      if (a4)
      {
        sub_100168088(&qword_100576AF8, &unk_100403EB0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_100400790;
        *(v9 + 32) = a1;
        *(v9 + 40) = 0;
      }

      return 3;
    }

    else
    {
      result = 2;
      if (a4)
      {
        sub_100168088(&qword_100576AF8, &unk_100403EB0);
        v6 = swift_allocObject();
        result = 2;
        *(v6 + 16) = xmmword_1004007E0;
        *(v6 + 32) = a1;
        *(v6 + 40) = 0;
        *(v6 + 48) = 1;
        *(v6 + 56) = 2;
        *(v6 + 64) = 0;
        *(v6 + 72) = 2;
      }
    }
  }

  else if ((a3 & 0x100) != 0)
  {
    if (a4)
    {
      sub_100168088(&qword_100576AF8, &unk_100403EB0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100400790;
      *(v10 + 32) = a1;
      *(v10 + 40) = 0;
    }

    return 1;
  }

  else
  {
    if (a4)
    {
      sub_100168088(&qword_100576AF8, &unk_100403EB0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1004007C0;
      *(v8 + 32) = a1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 2;
    }

    return 1;
  }

  return result;
}

_BYTE *sub_1001F7F3C(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v97 = a5;
  v98 = a3;
  v99 = a4;
  v7 = type metadata accessor for Logger();
  v95 = *(v7 - 8);
  v96 = v7;
  __chkstk_darwin();
  v100 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for PodcastStateModel();
  v102 = *(v9 - 8);
  __chkstk_darwin();
  v94 = &v83[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v12 = &v83[-v11];
  PodcastStateModel.uuid.getter();
  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 predicateForLibraryEpisodesOnPodcastUuid:v14];

  v16 = kMTEpisodeEntityName;
  v93 = [a2 hasAnyObjectsInEntity:kMTEpisodeEntityName satisfyingPredicate:v15];

  PodcastStateModel.uuid.getter();
  v17 = [v13 predicateForHasAnyVisualPlayState];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v13 predicateForAllEpisodesOnPodcastUuid:v18];

  v20 = [v17 AND:v19];
  v21 = v102;

  v22 = [a2 hasAnyObjectsInEntity:v16 satisfyingPredicate:v20];

  v23 = *(v21 + 16);
  v23(v12, a1, v9);
  v24 = v101;
  v25 = PodcastStateModel.sanitizedState()();
  if (v24)
  {
    (*(v21 + 8))(v12, v9);
  }

  else
  {
    v92 = a1;
    v26 = v94;
    v27 = v97;
    v90 = v93 ^ 1;
    v91 = v22 ^ 1;
    v28 = v21 + 8;
    v29 = *(v21 + 8);
    v30 = v25;
    v102 = v28;
    v89 = v29;
    v29(v12, v9);
    v88 = v30;
    if (v30 > 1u)
    {
      if (v30 == 2)
      {
        v32 = sub_1001F7344(v98, v99, v91, v27);
      }

      else
      {
        v32 = sub_1001F794C(v98, v99, v91, v27);
      }
    }

    else if (v30)
    {
      if (v22)
      {
        v35 = 0;
      }

      else
      {
        v35 = 256;
      }

      v32 = sub_1001F7098(v98, v99, v35 | v90, v27);
    }

    else
    {
      if (v22)
      {
        v31 = 0;
      }

      else
      {
        v31 = 256;
      }

      v32 = sub_1001F7D14(v98, v99, v31 | v90, v27);
    }

    v12 = v32;
    v101 = v33;
    v93 = v34;
    v36 = v100;
    static Logger.podcastsStatesCoordination.getter();
    v37 = static os_log_type_t.default.getter();
    v23(v26, v92, v9);
    v38 = Logger.logObject.getter();
    LODWORD(v92) = v37;
    if (os_log_type_enabled(v38, v37))
    {
      v86 = v38;
      v87 = 0;
      v39 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v107 = v85;
      *v39 = 136382211;
      v40 = PodcastStateModel.id.getter();
      v42 = v41;
      v44 = v43;
      v45 = PodcastIdentifier.description.getter();
      v84 = v12;
      v46 = v45;
      v48 = v47;
      sub_1001F876C(v40, v42, v44);
      v89(v26, v9);
      v49 = sub_1000153E0(v46, v48, &v107);

      *(v39 + 4) = v49;
      *(v39 + 12) = 2080;
      LOBYTE(v105) = v88;
      sub_1001F8788();
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = sub_1000153E0(v50, v51, &v107);

      *(v39 + 14) = v52;
      *(v39 + 22) = 2080;
      v53 = sub_1002C99B4(v98, v99);
      v55 = sub_1000153E0(v53, v54, &v107);

      *(v39 + 24) = v55;
      *(v39 + 32) = 2080;
      LOBYTE(v105) = v90;
      sub_1001F87DC();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = sub_1000153E0(v56, v57, &v107);

      *(v39 + 34) = v58;
      *(v39 + 42) = 2080;
      LOBYTE(v105) = v91;
      sub_1001F8830();
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = sub_1000153E0(v59, v60, &v107);

      *(v39 + 44) = v61;
      *(v39 + 52) = 2080;
      v62 = PodcastsStateChangeOrigin.description.getter();
      v64 = sub_1000153E0(v62, v63, &v107);

      *(v39 + 54) = v64;
      *(v39 + 62) = 2080;
      v65 = 0x697469736E617254;
      if (v93)
      {
        v65 = 0x3A6E6F28706F6F6CLL;
      }

      v66 = 0xEF203A6F74286E6FLL;
      if (v93)
      {
        v66 = 0xE900000000000020;
      }

      v105 = v65;
      v106 = v66;
      object = 0xE100000000000000;
      v104._countAndFlagsBits = 46;
      v104._object = 0xE100000000000000;
      v68 = v84;
      v103 = v84;
      v69 = v101;

      v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v70);

      String.append(_:)(v104);

      if (v69)
      {
        v104._countAndFlagsBits = 0x746365666665202CLL;
        v104._object = 0xEB00000000203A73;

        v71 = Array.description.getter();
        v73 = v72;

        v74._countAndFlagsBits = v71;
        v74._object = v73;
        String.append(_:)(v74);

        v75._countAndFlagsBits = 41;
        v75._object = 0xE100000000000000;
        String.append(_:)(v75);
        countAndFlagsBits = v104._countAndFlagsBits;
        object = v104._object;
      }

      else
      {
        countAndFlagsBits = 41;
      }

      v78 = v95;
      v77 = v96;
      v79 = object;
      String.append(_:)(*&countAndFlagsBits);

      v80 = sub_1000153E0(v105, v106, &v107);

      *(v39 + 64) = v80;
      v81 = v86;
      _os_log_impl(&_mh_execute_header, v86, v92, "Show with %{private}s; State: .%s; Event: (.%s, .%s, .%s, from: .%s) ==> %s", v39, 0x48u);
      swift_arrayDestroy();

      (*(v78 + 8))(v100, v77);
      return v68;
    }

    else
    {

      v89(v26, v9);
      (*(v95 + 8))(v36, v96);
    }
  }

  return v12;
}

uint64_t sub_1001F876C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

unint64_t sub_1001F8788()
{
  result = qword_100576AE0;
  if (!qword_100576AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576AE0);
  }

  return result;
}

unint64_t sub_1001F87DC()
{
  result = qword_100576AE8;
  if (!qword_100576AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576AE8);
  }

  return result;
}

unint64_t sub_1001F8830()
{
  result = qword_100576AF0;
  if (!qword_100576AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576AF0);
  }

  return result;
}

uint64_t Migration.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts9Migration_date;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001F8AC8()
{
  if (*v0)
  {
    return 0x7364697575;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1001F8AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7364697575 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001F8BDC(uint64_t a1)
{
  v2 = sub_1001F8F44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F8C18(uint64_t a1)
{
  v2 = sub_1001F8F44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for Migration(uint64_t a1)
{
  result = qword_100576B68;
  if (!qword_100576B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Migration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100168088(&qword_100576B08, &unk_100403EC0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_1000044A0(a1, a1[3]);
  sub_1001F8F44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for Date();
  sub_1001F9384(&qword_100576B18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC8Podcasts9Migration_uuids);
    v10[15] = 1;
    sub_100168088(&qword_10057C9C0, &qword_100403E20);
    sub_1001F93CC(&qword_100576B20, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1001F8F44()
{
  result = qword_100576B10;
  if (!qword_100576B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576B10);
  }

  return result;
}

char *Migration.init(from:)(void *a1)
{
  v3 = v1;
  v18 = type metadata accessor for Date();
  v16 = *(v18 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100168088(&qword_100576B28, &qword_100403ED0);
  v7 = *(v17 - 8);
  __chkstk_darwin();
  v9 = &v14 - v8;
  sub_1000044A0(a1, a1[3]);
  sub_1001F8F44();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004590(a1);
    type metadata accessor for Migration(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v7;
    v10 = v16;
    LOBYTE(v21) = 0;
    sub_1001F9384(&qword_100576B30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v11 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v10 + 32))(v1 + OBJC_IVAR____TtC8Podcasts9Migration_date, v6, v18);
    sub_100168088(&qword_10057C9C0, &qword_100403E20);
    v20 = 1;
    sub_1001F93CC(&qword_100576B38, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC8Podcasts9Migration_uuids) = v21;
    v13 = type metadata accessor for Migration(0);
    v19.receiver = v1;
    v19.super_class = v13;
    v3 = objc_msgSendSuper2(&v19, "init");
    (*(v15 + 8))(v9, v11);
    sub_100004590(a1);
  }

  return v3;
}

uint64_t sub_1001F9384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F93CC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100168310(&qword_10057C9C0, &qword_100403E20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1001F9438@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Migration(0));
  result = Migration.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001F94B4()
{
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v5 - 8);
  __chkstk_darwin();
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v4[1] = sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v6 = _swiftEmptyArrayStorage;
  sub_1001F9384(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0, &unk_1003FEB50);
  sub_100015E58(&qword_1005743C0, &unk_1005729E0, &unk_1003FEB50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100576B00 = result;
  return result;
}

uint64_t sub_1001F9718(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v27 - v11;
  __chkstk_darwin();
  v14 = &v27 - v13;
  v15 = [objc_opt_self() sharedDocumentsDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = 118;
  v34 = 0xE100000000000000;
  v32 = a1;
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x6974617267696D2DLL;
  v17._object = 0xEA00000000006E6FLL;
  String.append(_:)(v17);
  v29 = v14;
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v18 = *(v8 + 8);
  v30 = v7;
  v18(v10, v7);
  Date.init()();
  v19 = type metadata accessor for Migration(0);
  v20 = objc_allocWithZone(v19);
  (*(v4 + 16))(&v20[OBJC_IVAR____TtC8Podcasts9Migration_date], v6, v3);
  *&v20[OBJC_IVAR____TtC8Podcasts9Migration_uuids] = v28;
  v31.receiver = v20;
  v31.super_class = v19;

  v21 = objc_msgSendSuper2(&v31, "init");
  (*(v4 + 8))(v6, v3);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v33 = v21;
  sub_1001F9384(&unk_100576BC0, type metadata accessor for Migration, &protocol conformance descriptor for Migration);
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v24 = v23;
  Data.write(to:options:)();
  sub_1001F6D74(v22, v24);

  v25 = v30;
  v18(v12, v30);
  return (v18)(v29, v25);
}

id BookmarksMigrationRegistry.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookmarksMigrationRegistry();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001F9CDC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void _s8Podcasts26BookmarksMigrationRegistryC08registerC02of2atySaySSG_SitFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for DispatchQoS() - 8);
  __chkstk_darwin();
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v17 = v9;
    if (qword_100572760 != -1)
    {
      swift_once();
    }

    v16[1] = qword_100576B00;
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a1;
    aBlock[4] = sub_1001FA8F8;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004E4568;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v18 = _swiftEmptyArrayStorage;
    sub_1001F9384(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100168088(&unk_100575CD0, &unk_100400B50);
    sub_100015E58(&qword_10057D390, &unk_100575CD0, &unk_100400B50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);
    (*(v5 + 8))(v7, v4);
    (*(v8 + 8))(v11, v17);
  }

  else
  {
    v14 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v17 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v17, "No UUIDs migrated to bookmarks, nothing to register.", 52, 2, _swiftEmptyArrayStorage);
    v15 = v17;
  }
}

uint64_t _s8Podcasts26BookmarksMigrationRegistryC19migrationRegistered2atAA0C0CSgSi_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v18 - v6;
  __chkstk_darwin();
  v9 = v18 - v8;
  v10 = [objc_opt_self() sharedDocumentsDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = 118;
  v20 = 0xE100000000000000;
  v18[1] = a1;
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6974617267696D2DLL;
  v12._object = 0xEA00000000006E6FLL;
  String.append(_:)(v12);
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v13 = *(v3 + 8);
  v13(v5, v2);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v14 = Data.init(contentsOf:options:)();
  v16 = v15;
  type metadata accessor for Migration(0);
  sub_1001F9384(&qword_100576BB8, type metadata accessor for Migration, &protocol conformance descriptor for Migration);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_1001F6D74(v14, v16);

  v13(v7, v2);
  v13(v9, v2);
  return v19;
}

uint64_t _s8Podcasts26BookmarksMigrationRegistryC06deletecD02atySi_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v25 - v6;
  __chkstk_darwin();
  v9 = v25 - v8;
  v10 = [objc_opt_self() sharedDocumentsDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v26[0] = 118;
  v26[1] = 0xE100000000000000;
  v25[2] = a1;
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6974617267696D2DLL;
  v12._object = 0xEA00000000006E6FLL;
  String.append(_:)(v12);
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v13 = *(v3 + 8);
  v13(v5, v2);
  v14 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  v26[0] = 0;
  LODWORD(v10) = [v14 removeItemAtURL:v16 error:v26];

  if (v10)
  {
    v18 = v26[0];
  }

  else
  {
    v19 = v26[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = static os_log_type_t.error.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100400790;
    v22 = _convertErrorToNSError(_:)();
    *(v21 + 56) = sub_100009F1C(0, &qword_100573598, NSError_ptr);
    *(v21 + 64) = sub_1001F6F40();
    *(v21 + 32) = v22;
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v23 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v23, "Error deleting migration register file %@.", 42, 2, v21);
  }

  v13(v7, v2);
  return (v13)(v9, v2);
}

uint64_t sub_1001FA744(uint64_t a1)
{
  result = type metadata accessor for Date();
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

unint64_t sub_1001FA7F4()
{
  result = qword_100576BA0;
  if (!qword_100576BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576BA0);
  }

  return result;
}

unint64_t sub_1001FA84C()
{
  result = qword_100576BA8;
  if (!qword_100576BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576BA8);
  }

  return result;
}

unint64_t sub_1001FA8A4()
{
  result = qword_100576BB0;
  if (!qword_100576BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576BB0);
  }

  return result;
}

void sub_1001FA904(unint64_t a1, void *a2, int a3)
{
  v33 = a3;
  v32 = a2;
  v5 = *v3;
  v37 = swift_isaMask & *v3;
  v34 = v3;
  v6 = *((swift_isaMask & v5) + 0x50);
  type metadata accessor for Optional();
  __chkstk_darwin();
  v8 = &v27 - v7;
  v29 = a1;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    return;
  }

  while (1)
  {
    v10 = 0;
    v30 = v9;
    v31 = v29 & 0xC000000000000001;
    v27 = v29 + 32;
    v28 = v29 & 0xFFFFFFFFFFFFFF8;
LABEL_4:
    if (v31)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (!v11)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

    if (v10 < *(v28 + 16))
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      return;
    }
  }

  v39 = *(v27 + 8 * v10);
  swift_unknownObjectRetain();
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_10:
  v38 = v32;
  if (v33)
  {
    v38 = [v39 phase];
  }

  v36 = v12;
  v13 = qword_100576BD0;
  v14 = v34;
  swift_beginAccess();
  v15 = *(v14 + v13);
  if ((v15 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v15 = v40;
    v16 = v41;
    v18 = v42;
    v17 = v43;
    v19 = v44;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v18 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);

    v17 = 0;
  }

  v35 = v18;
  while (2)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (!v19)
      {
        v26 = v17;
        while (1)
        {
          v23 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v23 >= ((v18 + 64) >> 6))
          {
            goto LABEL_31;
          }

          v19 = *(v16 + 8 * v23);
          ++v26;
          if (v19)
          {
            v17 = v23;
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

      v23 = v17;
LABEL_20:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = *(v6 - 8);
      (*(v25 + 16))(v8, *(v15 + 48) + *(v25 + 72) * (v24 | (v23 << 6)), v6);
      goto LABEL_21;
    }

    if (__CocoaSet.Iterator.next()())
    {
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v25 = *(v6 - 8);
LABEL_21:
      (*(v25 + 56))(v8, 0, 1, v6);
      (*(*(v37 + 88) + 16))(v38, v39, v6);
      (*(v25 + 8))(v8, v6);
      continue;
    }

    break;
  }

LABEL_31:
  swift_unknownObjectRelease();
  (*(*(v6 - 8) + 56))(v8, 1, 1, v6);
  sub_1000319D8(v15);
  v10 = v36;
  if (v36 != v30)
  {
    goto LABEL_4;
  }
}

void sub_1001FAD8C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1001FAE10(uint64_t a1, void *a2, int a3)
{
  sub_100168088(&unk_100574680, &qword_100401740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007B0;
  *(inited + 32) = a1;
  swift_unknownObjectRetain();
  sub_1001FA904(inited, a2, a3);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_1001FAEE0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100168088(&unk_100576C80, &qword_1004040F0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = a1;
  sub_1001FAED4(v4);
}

id sub_1001FAF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DownloadManagerObserver(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1001FAFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_100404108, v12);
}

uint64_t sub_1001FB128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v8 = type metadata accessor for CarPlayController();
  v9 = swift_task_alloc();
  v7[8] = v9;
  *v9 = v7;
  v9[1] = sub_1001FB1FC;

  return BaseObjectGraph.inject<A>(_:)(v7 + 2, v8, v8);
}

uint64_t sub_1001FB1FC()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1001FB3F4;
  }

  else
  {
    v4 = sub_1001FB358;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1001FB358()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v4 = v0[2];
  ObjectType = swift_getObjectType();
  sub_1001CB60C(v3, v1, v2, v4, ObjectType);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001FB3F4()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1001FB458(uint64_t a1, void *a2)
{
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v6 = v40 - v5;
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v8 = v40 - v7;
  sub_100168088(&qword_100576C90, &qword_1004040F8);
  __chkstk_darwin();
  v10 = v40 - v9;
  type metadata accessor for ArtworkModel();
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a2 metadataObject];
  if (result)
  {
    v15 = result;
    v16 = [result podcastEpisode];

    if (!v16)
    {
      return 0;
    }

    v17 = [v16 title];
    if (!v17)
    {

      return 0;
    }

    v18 = v17;
    v41 = a1;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {

      return 0;
    }

    v40[2] = v2;
    MPModelPodcastEpisode.showArtworkData.getter();
    v23 = type metadata accessor for NowPlayingArtwork.Data();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v10, 1, v23) == 1)
    {

      sub_1001FBA78(v10);
      return 0;
    }

    if ((*(v24 + 88))(v10, v23) != enum case for NowPlayingArtwork.Data.model(_:))
    {

      (*(v24 + 8))(v10, v23);
      return 0;
    }

    (*(v24 + 96))(v10, v23);
    sub_1001FBAE0(v10, v13);
    type metadata accessor for CarPlayPageLoadCoordinator(0);
    BaseObjectGraph.inject<A>(_:)();
    v40[1] = aBlock[0];
    v25 = [v16 podcast];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 author];

      if (v27)
      {
        v28 = [v27 name];

        if (v28)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
          v28 = v30;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v31 = String._bridgeToObjectiveC()();

    if (v28)
    {
      v32 = String._bridgeToObjectiveC()();
    }

    else
    {
      v32 = 0;
    }

    v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v31 detailText:v32 image:0 accessoryImage:0 accessoryType:0];

    CarPlayPageLoadCoordinator.loadImage(for:into:)(v13, v33);
    [v33 setExplicitContent:{objc_msgSend(v16, "isExplicitEpisode")}];
    *v6 = a2;
    v6[40] = 1;
    v34 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    swift_storeEnumTagMultiPayload();
    v35 = *(*(v34 - 8) + 56);
    v35(v6, 0, 1, v34);
    v35(v8, 1, 1, v34);
    v36 = type metadata accessor for CarPlayTemplateInfo(0);
    v37 = *(v36 + 20);
    v38 = a2;
    sub_1001FBB44(v6, v8);
    v8[v37] = 12;
    (*(*(v36 - 8) + 56))(v8, 0, 1, v36);
    sub_1001D2AD4(v8);
    aBlock[4] = sub_1001FBBB4;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100372F30;
    aBlock[3] = &unk_1004E4648;
    v39 = _Block_copy(aBlock);

    [v33 setHandler:v39];

    _Block_release(v39);

    sub_1001A0664(v13);
    return v33;
  }

  return result;
}

uint64_t sub_1001FBA78(uint64_t a1)
{
  v2 = sub_100168088(&qword_100576C90, &qword_1004040F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001FBAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001FBB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&unk_100575AE0, &unk_100405E80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001FBBBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001C51C;

  return sub_1001FB128(a1, v4, v5, v6, v7, v9, v8);
}

BOOL sub_1001FBC90()
{
  v1 = v0;
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractionContext();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 16) && (, dispatch thunk of ContextActionsConfiguration.context.getter(), , InteractionContext.page.getter(), (*(v5 + 8))(v7, v4), v8 = InteractionContext.Page.isShowPage.getter(), sub_1001B84E0(v3), (v8 & 1) != 0))
  {
    return 0;
  }

  else
  {
    return *(v1 + 24) != 0;
  }
}

void sub_1001FBE08()
{
  v1 = v0;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v3 = &v39 - v2;
  v4 = type metadata accessor for URL();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin();
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PreviewingPresentationHint();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ShowOffer();
  v42 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v16 = &v39 - v15;
  v17 = v0[3];
  if (v17)
  {
    swift_beginAccess();
    if (v0[2])
    {
      v40 = v9;

      v18 = ContextActionsConfiguration.objectGraph.getter();

      if (!v0[2])
      {
        goto LABEL_7;
      }

      v41 = v18;

      dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

      v19 = type metadata accessor for PresentationSource();
      if ((*(*(v19 - 8) + 48))(v16, 1, v19))
      {

        v20 = &unk_10057BB90;
        v21 = &unk_100402D60;
        v22 = v16;
LABEL_6:
        sub_100009104(v22, v20, v21);
        return;
      }

      v23 = PresentationSource.viewController.getter();
      sub_100009104(v16, &unk_10057BB90, &unk_100402D60);
      if (v23)
      {
        v39 = v23;
        v24 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
        swift_beginAccess();
        sub_1001A1560(v17 + v24, v11, v25);
        type metadata accessor for PodcastContextActionDataType.Kind(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v26 = v42;
          (*(v42 + 32))(v14, v11, v12);
          ShowOffer.storeUrl.getter();
          (*(v26 + 8))(v14, v12);
          v28 = v43;
          v27 = v44;
          v29 = (*(v43 + 48))(v3, 1, v44);
          v30 = v40;
          if (v29 == 1)
          {

            v20 = &qword_100574040;
            v21 = &unk_100400AD0;
            v22 = v3;
            goto LABEL_6;
          }

          (*(v28 + 32))(v6, v3, v27);
          v36 = v1[7];
          v42 = v1[8];
          sub_1000044A0(v1 + 4, v36);
          v37 = v45;
          (*(v45 + 104))(v30, enum case for PreviewingPresentationHint.push(_:), v46);
          v38 = v39;
          dispatch thunk of EpisodeControllerProtocol.presentStorePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

          (*(v37 + 8))(v30, v46);
          (*(v28 + 8))(v6, v27);
        }

        else
        {
          v31 = v1[7];
          v44 = v1[8];
          sub_1000044A0(v1 + 4, v31);
          v33 = v45;
          v32 = v46;
          v34 = v40;
          (*(v45 + 104))(v40, enum case for PreviewingPresentationHint.push(_:), v46);
          v35 = v39;
          dispatch thunk of EpisodeControllerProtocol.presentShowPage(asPartOf:for:from:presentationHint:suppressMetrics:)();

          (*(v33 + 8))(v34, v32);
        }
      }

      else
      {
LABEL_7:
      }
    }
  }
}

uint64_t sub_1001FC420()
{

  sub_100004590((v0 + 32));
  v1 = OBJC_IVAR____TtC8Podcasts28GoToShowPodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GoToShowPodcastContextAction(uint64_t a1)
{
  result = qword_100576CC0;
  if (!qword_100576CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001FC528(uint64_t a1)
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_1001FC5D0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x8000000100468210;
  v1._countAndFlagsBits = 0x6853206F74206F47;
  v1._object = 0xEA0000000000776FLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001FC6A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28GoToShowPodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001FC71C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.presentPodcast(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1001FC834(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1001FC8D8(uint64_t a1)
{
  result = sub_1001FC960(&qword_100576D60, &unk_100404190);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FC91C(uint64_t a1)
{
  result = sub_1001FC960(&qword_100576D68, &unk_1004041E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FC960(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GoToShowPodcastContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001FC9A4()
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v22 - v3;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = __chkstk_darwin();
  v9 = &v22 - v8;
  sub_100353EF8(v7);

  v11 = sub_1001FCD50(v10);

  if (v11)
  {
    v12 = [v11 shortURL];
    if (v12)
    {
      v13 = v12;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
    }

    else
    {
      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    }

    sub_1001B8A3C(v4, v6);
    type metadata accessor for URL();
    v16 = *(v14 - 8);
    if ((*(v16 + 48))(v6, 1, v14) != 1)
    {

      (*(v16 + 32))(v9, v6, v14);
      (*(v16 + 56))(v9, 0, 1, v14);
      goto LABEL_14;
    }

    v17 = [v11 shareURL];
    if (v17)
    {
      v18 = v17;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = 0;
      v11 = v18;
    }

    else
    {
      v19 = 1;
    }

    (*(v16 + 56))(v2, v19, 1, v14);
    sub_1001B8A3C(v2, v9);
  }

  else
  {
    v14 = type metadata accessor for URL();
    v15 = *(*(v14 - 8) + 56);
    v15(v6, 1, 1, v14);
    v15(v9, 1, 1, v14);
  }

  type metadata accessor for URL();
  if ((*(*(v14 - 8) + 48))(v6, 1, v14) != 1)
  {
    sub_1001FDD40(v6);
  }

LABEL_14:
  v20 = OBJC_IVAR____TtC8Podcasts28CopyLinkEpisodeContextAction_shareLink;
  swift_beginAccess();
  sub_1001FDDA8(v9, v0 + v20);
  return swift_endAccess();
}

id sub_1001FCD50(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin();
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EpisodeOffer();
  v61 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v59 - v9;
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v12 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v59 - v13;
  __chkstk_darwin();
  v16 = &v59 - v15;
  if (!a1)
  {
    return 0;
  }

  v60 = v2;
  v17 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  v18 = a1 + v17;
  v19 = v16;
  sub_1001EAFE4(v18, v14, v20);
  sub_1001EB048(v14, v16, type metadata accessor for EpisodeContextActionDataType);
  sub_1001EAFE4(v16, v12, v21);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      if (result != 3)
      {
        sub_1001EB048(v12, v5, type metadata accessor for EpisodeContextActionDataType.Reference);
        sub_1003979DC();
        v47 = v46;
        v48 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v46 selectedReferenceTime:0.0 selectedPlayerTime:0.0 currentPlayerTime:0.0];

        sub_1001EB0B0(v5, type metadata accessor for EpisodeContextActionDataType.Reference);
        sub_1001EB0B0(v19, type metadata accessor for EpisodeContextActionDataType);
        return v48;
      }

      v23 = sub_10039779C(*v12);

      if (v23 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result)
        {
          goto LABEL_7;
        }
      }

      else
      {
        result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_7:
          if ((v23 & 0xC000000000000001) != 0)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_10;
          }

          if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v24 = *(v23 + 32);
LABEL_10:
            v25 = v24;

            if (*(v60 + 40))
            {
              v26 = 0.0;
            }

            else
            {
              v26 = *(v60 + 32);
            }

            if (*(v60 + 56))
            {
              v27 = 0.0;
            }

            else
            {
              v27 = *(v60 + 48);
            }

            [v25 playhead];
            v29 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v25 selectedReferenceTime:v26 selectedPlayerTime:v27 currentPlayerTime:v28];

            goto LABEL_57;
          }

          goto LABEL_70;
        }
      }

      goto LABEL_59;
    }

    v38 = *v12;
    if (*v12 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v39 = v60;
      if (result)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v39 = v60;
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_29:
        if ((v38 & 0xC000000000000001) != 0)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (*(v39 + 40))
          {
            v34 = 0.0;
          }

          else
          {
            v34 = *(v39 + 32);
          }

          if (*(v39 + 56))
          {
            v35 = 0.0;
          }

          else
          {
            v35 = *(v39 + 48);
          }

          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_70:
            __break(1u);
            return result;
          }

          v34 = *(v39 + 32);
          v40 = v39;
          v41 = *(v39 + 40);
          v35 = *(v40 + 48);
          v42 = *(v40 + 56);
          v33 = *(v38 + 32);
          if (v42)
          {
            v35 = 0.0;
          }

          if (v41)
          {
            v34 = 0.0;
          }

          v43 = *(v38 + 32);
        }

        v44 = v43;

        [v44 playhead];
        v37 = v45;

        v19 = v16;
LABEL_56:
        v29 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v33 selectedReferenceTime:v34 selectedPlayerTime:v35 currentPlayerTime:v37];

LABEL_57:
        sub_1001EB0B0(v19, type metadata accessor for EpisodeContextActionDataType);
        return v29;
      }
    }

    v37 = 0.0;
    if (*(v39 + 40))
    {
      v34 = 0.0;
    }

    else
    {
      v34 = *(v39 + 32);
    }

    v35 = *(v39 + 48);
    v57 = *(v39 + 56);

    v33 = 0;
    v58 = v57 == 0;
    v19 = v16;
    if (!v58)
    {
      v35 = 0.0;
    }

    goto LABEL_56;
  }

  if (!result)
  {
    v30 = *v12;

    if (!*(v30 + 16))
    {
LABEL_59:
      sub_1001EB0B0(v16, type metadata accessor for EpisodeContextActionDataType);

      return 0;
    }

    v31 = objc_opt_self();
    v32 = String._bridgeToObjectiveC()();

    v33 = [v31 mediaItemForEpisodeWithUUID:v32];

    if (v33)
    {
      if (*(v60 + 40))
      {
        v34 = 0.0;
      }

      else
      {
        v34 = *(v60 + 32);
      }

      if (*(v60 + 56))
      {
        v35 = 0.0;
      }

      else
      {
        v35 = *(v60 + 48);
      }

      [v33 playhead];
      v37 = v36;
      goto LABEL_56;
    }

LABEL_49:
    sub_1001EB0B0(v16, type metadata accessor for EpisodeContextActionDataType);
    return 0;
  }

  if (!*(*v12 + 16))
  {

    goto LABEL_49;
  }

  v49 = v60;
  v50 = v61;
  (*(v61 + 16))(v8, *v12 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v6);

  (*(v50 + 32))(v10, v8, v6);
  v51 = sub_100294534();
  if (!v51)
  {
    (*(v50 + 8))(v10, v6);
    goto LABEL_49;
  }

  if (*(v49 + 40))
  {
    v52 = 0.0;
  }

  else
  {
    v52 = *(v49 + 32);
  }

  if (*(v49 + 56))
  {
    v53 = 0.0;
  }

  else
  {
    v53 = *(v49 + 48);
  }

  v54 = v51;
  [v51 playhead];
  v56 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v54 selectedReferenceTime:v52 selectedPlayerTime:v53 currentPlayerTime:v55];

  (*(v50 + 8))(v10, v6);
  sub_1001EB0B0(v19, type metadata accessor for EpisodeContextActionDataType);
  return v56;
}

uint64_t sub_1001FD4E0()
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v2 = &v11 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8Podcasts28CopyLinkEpisodeContextAction_shareLink;
  swift_beginAccess();
  sub_1001BB0E0(v0 + v7, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1001FDD40(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  v9 = [objc_opt_self() generalPasteboard];
  URL.absoluteString.getter();
  v10 = String._bridgeToObjectiveC()();

  [v9 setString:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001FD6C8()
{

  v1 = OBJC_IVAR____TtC8Podcasts28CopyLinkEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1001FDD40(v0 + OBJC_IVAR____TtC8Podcasts28CopyLinkEpisodeContextAction_shareLink);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CopyLinkEpisodeContextAction(uint64_t a1)
{
  result = qword_100576D98;
  if (!qword_100576D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001FD7E0(uint64_t a1)
{
  type metadata accessor for MetricsLabel();
  if (v1 <= 0x3F)
  {
    sub_100012E4C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1001FD8D8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x80000001004692A0;
  v1._countAndFlagsBits = 0x6E694C2079706F43;
  v1._object = 0xE90000000000006BLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000012;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001FD988()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1001FD9B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28CopyLinkEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001FDA30@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.copyEpisodeLink(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1001FDB10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1001FDB70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1001FDBD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1001FDC30(uint64_t a1)
{
  result = sub_1001FDCFC(&unk_100582230, &unk_1004042C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FDC74(uint64_t a1)
{
  result = sub_1001FDCFC(&qword_100576F00, &unk_100404358);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FDCB8(uint64_t a1)
{
  result = sub_1001FDCFC(&qword_100576F08, &unk_100404320);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FDCFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CopyLinkEpisodeContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001FDD40(uint64_t a1)
{
  v2 = sub_100168088(&qword_100574040, &unk_100400AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001FDDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574040, &unk_100400AD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1001FDE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a2;
  v70 = a3;
  v71 = a1;
  v4 = type metadata accessor for FlowPresentationHints();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin();
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for FlowDestination();
  v59 = *(v61 - 8);
  __chkstk_darwin();
  v58 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v80._object = 0xE000000000000000;
  v9._object = 0x80000001004692F0;
  v9._countAndFlagsBits = 0xD000000000000025;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v80._countAndFlagsBits = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v80);
  countAndFlagsBits = v11._countAndFlagsBits;

  v12 = [v7 mainBundle];
  v81._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD00000000000002ELL;
  v13._object = 0x8000000100469320;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v81._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v81);

  v73 = sub_100168088(&unk_100574670, &qword_100400AB0);
  v15 = swift_allocObject();
  v72 = xmmword_100400790;
  *(v15 + 16) = xmmword_100400790;
  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  *(v15 + 32) = a1;
  static String.localizedStringWithFormat(_:_:)();
  v17 = v16;

  v18 = [v7 mainBundle];
  v82._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000033;
  v19._object = 0x8000000100469350;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v82);
  v65 = v21._countAndFlagsBits;

  v22 = [v7 mainBundle];
  v83._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD000000000000036;
  v23._object = 0x8000000100469390;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v83._countAndFlagsBits = 0;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v83);
  object = v25._object;
  v68 = v25._countAndFlagsBits;

  countAndFlagsBits = v11._object;
  v26 = String._bridgeToObjectiveC()();
  v64 = v17;
  v27 = String._bridgeToObjectiveC()();
  v28 = [objc_opt_self() alertControllerWithTitle:v26 message:v27 preferredStyle:1];

  v29 = swift_allocObject();
  v31 = v69;
  v30 = v70;
  *(v29 + 16) = v69;
  *(v29 + 24) = v30;

  v65 = v21._object;
  v32 = String._bridgeToObjectiveC()();
  v78 = sub_1001FE6D0;
  v79 = v29;
  aBlock = _NSConcreteStackBlock;
  v75 = 1107296256;
  v76 = sub_1002E8240;
  v77 = &unk_1004E4840;
  v33 = _Block_copy(&aBlock);

  v34 = objc_opt_self();
  v35 = [v34 actionWithTitle:v32 style:0 handler:v33];
  _Block_release(v33);

  [v28 addAction:v35];
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v30;

  v37 = String._bridgeToObjectiveC()();
  v78 = sub_1001FE6FC;
  v79 = v36;
  aBlock = _NSConcreteStackBlock;
  v75 = 1107296256;
  v76 = sub_1002E8240;
  v77 = &unk_1004E4890;
  v38 = _Block_copy(&aBlock);

  v39 = [v34 actionWithTitle:v37 style:0 handler:v38];
  _Block_release(v38);

  [v28 addAction:v39];
  v40 = static os_log_type_t.default.getter();
  sub_1001FE728();
  v41 = static OS_os_log.restore.getter();
  v42 = swift_allocObject();
  *(v42 + 16) = v72;
  *(v42 + 56) = &type metadata for Int;
  *(v42 + 64) = &protocol witness table for Int;
  *(v42 + 32) = v71;
  os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v41, "Presenting alert to user for %d items", v58);

  if (UIApp)
  {
    v43 = UIApp;

    v44 = UIResponder.nearestFlowController.getter();

    if (v44)
    {
      v45 = v58;
      *v58 = v28;
      v46 = v59;
      v47 = v61;
      (*(v59 + 104))(v45, enum case for FlowDestination.viewController(_:), v61);
      swift_getObjectType();
      v48 = v28;
      v49 = v60;
      static FlowPresentationHints.default.getter();
      dispatch thunk of FlowController.show(destination:hints:referrer:)();

      swift_unknownObjectRelease();
      (*(v62 + 8))(v49, v63);
      (*(v46 + 8))(v45, v47);
    }

    else
    {
      v50 = [objc_opt_self() sharedApplication];
      v51 = [v50 delegate];

      if (v51)
      {
        if ([v51 respondsToSelector:"window"])
        {
          v52 = [v51 window];
          swift_unknownObjectRelease();
          v51 = [v52 rootViewController];
        }

        else
        {
          swift_unknownObjectRelease();
          v51 = 0;
        }
      }

      v53 = [v51 presentedViewController];
      if (!v53)
      {
        v54 = v51;
        v53 = v51;
      }

      v55 = static os_log_type_t.error.getter();
      v56 = static OS_os_log.restore.getter();
      os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v56, "No flow controller found! Attempting to present directly on UIVC heirarchy", 74, 2, _swiftEmptyArrayStorage);

      if (v53)
      {
        v57 = v53;
        [v57 presentViewController:v28 animated:1 completion:0];
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1001FE728()
{
  result = qword_1005748A0;
  if (!qword_1005748A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005748A0);
  }

  return result;
}

void sub_1001FE774()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[10];
    type metadata accessor for EpisodeOfferStateCenter();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v0[3] = v3;
  }
}

uint64_t sub_1001FE7F8()
{
  if (*(v0 + 24) && *(v0 + 16))
  {

    if ((sub_100396F64() & 1) == 0)
    {
      result = sub_1001EA484();
      v2 = result;
      v3 = *(result + 16);
      if (v3)
      {
        v4 = 0;
        v5 = result + 48;
        v6 = _swiftEmptyArrayStorage;
        v20 = result + 48;
        do
        {
          v21 = v6;
          v7 = (v5 + 24 * v4);
          v8 = v4;
          while (1)
          {
            if (v8 >= *(v2 + 16))
            {
              __break(1u);
              return result;
            }

            v9 = *(v7 - 2);
            v10 = *(v7 - 1);
            v4 = v8 + 1;
            v11 = *v7;
            sub_100200164(v9, v10, *v7);
            if (static ModernEpisodeDownloadState.== infix(_:_:)())
            {
              break;
            }

            result = sub_10020017C(v9, v10, v11);
            v7 += 24;
            ++v8;
            if (v3 == v4)
            {
              v6 = v21;
              goto LABEL_19;
            }
          }

          v6 = v21;
          result = swift_isUniquelyReferenced_nonNull_native();
          v23 = v21;
          if ((result & 1) == 0)
          {
            result = sub_1001A7598(0, v21[2] + 1, 1);
            v6 = v21;
          }

          v13 = v6[2];
          v12 = v6[3];
          v14 = v13 + 1;
          if (v13 >= v12 >> 1)
          {
            v22 = v13 + 1;
            v19 = v6[2];
            result = sub_1001A7598((v12 > 1), v13 + 1, 1);
            v13 = v19;
            v14 = v22;
            v6 = v23;
          }

          v6[2] = v14;
          v15 = &v6[3 * v13];
          v15[4] = v9;
          v15[5] = v10;
          *(v15 + 48) = v11;
          v5 = v20;
        }

        while (v3 - 1 != v8);
      }

      else
      {
        v6 = _swiftEmptyArrayStorage;
      }

LABEL_19:

      v16 = v6[2];

      if (v16)
      {
        v18 = sub_100397D28(v17);

        return v18;
      }
    }
  }

  else
  {
    *(v0 + 128) = 0;
  }

  return 0;
}

void sub_1001FEA14()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin();
  v4 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v6 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v8 = (&v65 - v7);
  __chkstk_darwin();
  v10 = &v65 - v9;
  v11 = v0[2];
  if (!v11)
  {
    return;
  }

  v12 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(&v11[v12], v10, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_1001EB0B0(v10, type metadata accessor for EpisodeContextActionDataType);
      sub_1000044A0(v0 + 5, v0[8]);
      sub_1003982E0(0);
      dispatch thunk of LibraryActionControllerProtocol.download(episodeOffers:)();
    }

    else
    {

      sub_1001EB0B0(v10, type metadata accessor for EpisodeContextActionDataType);
      sub_1000044A0(v0 + 5, v0[8]);
      sub_100398118(0, v26);
      dispatch thunk of LibraryActionControllerProtocol.download(episodes:)();
    }

    return;
  }

  v68 = v0;
  if (EnumCaseMultiPayload == 2)
  {

    sub_1001EB0B0(v10, type metadata accessor for EpisodeContextActionDataType);
    sub_1001EAFE4(&v11[v12], v8, v27);
    v28 = swift_getEnumCaseMultiPayload();
    v66 = v11;
    if (v28 != 2)
    {
      sub_1001EB0B0(v8, type metadata accessor for EpisodeContextActionDataType);
      v38 = _swiftEmptyArrayStorage;
      goto LABEL_64;
    }

    v17 = *v8;
    v72[0] = _swiftEmptyArrayStorage;
    if (!(v17 >> 62))
    {
      v29 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_27;
      }

      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_100200004(v10, v4);
    type metadata accessor for RestrictionsController();

    if ((static RestrictionsController.isExplicitContentAllowed.getter() & 1) != 0 || *(v4 + *(v2 + 28)) == 2)
    {
      goto LABEL_40;
    }

    v40 = ContentRating.rawValue.getter();
    v42 = v41;
    if (v40 == ContentRating.rawValue.getter() && v42 == v43)
    {
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v45 & 1) == 0)
      {
LABEL_40:
        sub_100200068((v0 + 11), &v69);
        if (v70)
        {
          sub_1000109E4(&v69, v72);
          sub_1000044A0(v72, v73);
          sub_100168088(&unk_10057A0B0, &unk_100401C70);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_100400790;
          *(v34 + 32) = *v4;
          dispatch thunk of StoreDataProvider.fetchEpisodeOffers(with:)();

          sub_100004428((v0 + 5), &v69);
          v35 = swift_allocObject();
          sub_1000109E4(&v69, v35 + 16);
          v36 = sub_10002BD04();
          v37 = static OS_dispatch_queue.main.getter();
          v70 = v36;
          v71 = &protocol witness table for OS_dispatch_queue;
          *&v69 = v37;
          Promise.then(perform:orCatchError:on:)();

          sub_1001EB0B0(v4, type metadata accessor for EpisodeContextActionDataType.Reference);
          sub_100004590(&v69);
          sub_100004590(v72);
        }

        else
        {
          sub_1001EB0B0(v4, type metadata accessor for EpisodeContextActionDataType.Reference);

          sub_1002000D8(&v69);
        }

        return;
      }
    }

    sub_1001EB0B0(v4, type metadata accessor for EpisodeContextActionDataType.Reference);

    return;
  }

  sub_1001EB0B0(v10, type metadata accessor for EpisodeContextActionDataType);
  sub_1001EAFE4(&v11[v12], v6, v15);
  v16 = swift_getEnumCaseMultiPayload();
  v66 = v11;
  if (v16 == 3)
  {
    v17 = *v6;
    v72[0] = _swiftEmptyArrayStorage;
    if (v17 >> 62)
    {
      goto LABEL_78;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v19 = 0;
      v1 = (v17 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v20;
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v23 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (v23)
        {
          v24 = v23;
          if (([v23 isExplicitEpisode] & 1) == 0)
          {

LABEL_20:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            goto LABEL_10;
          }

          type metadata accessor for RestrictionsController();
          v25 = static RestrictionsController.isExplicitContentAllowed.getter();

          if (v25)
          {
            goto LABEL_20;
          }
        }

LABEL_10:
        ++v19;
        if (v22 == i)
        {
          v39 = v72[0];
          v1 = v68;
          goto LABEL_80;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        v29 = _CocoaArrayWrapper.endIndex.getter();
        if (!v29)
        {
          break;
        }

LABEL_27:
        v30 = 0;
        v1 = &selRef_handleNotification_;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v30 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_59;
            }

            v31 = *(v17 + 8 * v30 + 32);
          }

          v32 = v31;
          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if ([v31 isExplicit] & 1) == 0 || (type metadata accessor for RestrictionsController(), (static RestrictionsController.isExplicitContentAllowed.getter()))
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v30;
          if (v33 == v29)
          {
            v38 = v72[0];
            goto LABEL_63;
          }
        }

        __break(1u);
      }

LABEL_62:
      v38 = _swiftEmptyArrayStorage;
LABEL_63:

LABEL_64:
      if (v38 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
        if (!v17)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v17 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_97;
        }
      }

      if (v17 >= 1)
      {
        v46 = 0;
        v67 = xmmword_100400790;
        v47 = v68;
        do
        {
          if ((v38 & 0xC000000000000001) != 0)
          {
            v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v51 = *(v38 + 8 * v46 + 32);
          }

          v52 = v51;
          sub_100200068((v47 + 11), v72);
          if (v73)
          {
            sub_1000044A0(v72, v73);
            sub_100168088(&unk_10057A0B0, &unk_100401C70);
            v48 = swift_allocObject();
            *(v48 + 16) = v67;
            [v52 episodeStoreId];
            *(v48 + 32) = AdamID.init(rawValue:)();
            dispatch thunk of StoreDataProvider.fetchEpisodeOffers(with:)();

            swift_allocObject();
            swift_weakInit();
            v49 = sub_10002BD04();
            v50 = static OS_dispatch_queue.main.getter();
            v70 = v49;
            v71 = &protocol witness table for OS_dispatch_queue;
            *&v69 = v50;
            Promise.then(perform:orCatchError:on:)();

            sub_100004590(&v69);
            sub_100004590(v72);
          }

          else
          {

            sub_1002000D8(v72);
          }

          ++v46;
        }

        while (v17 != v46);
LABEL_97:

        return;
      }

      __break(1u);
LABEL_78:
      ;
    }

    v39 = _swiftEmptyArrayStorage;
LABEL_80:
  }

  else
  {
    sub_1001EB0B0(v6, type metadata accessor for EpisodeContextActionDataType);
    v39 = _swiftEmptyArrayStorage;
  }

  if (v39 >> 62)
  {
    v53 = _CocoaArrayWrapper.endIndex.getter();
    if (!v53)
    {
      goto LABEL_97;
    }
  }

  else
  {
    v53 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v53)
    {
      goto LABEL_97;
    }
  }

  if (v53 >= 1)
  {
    v54 = 0;
    v67 = xmmword_100400790;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v55 = *(v39 + 8 * v54 + 32);
      }

      v56 = v55;
      v57 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (!v57 || (v58 = v57, v59 = MPModelObject.adamID.getter(), v61 = v60, v58, (v61 & 1) != 0))
      {
      }

      else
      {
        sub_100200068((v1 + 11), v72);
        if (v73)
        {
          sub_1000044A0(v72, v73);
          sub_100168088(&unk_10057A0B0, &unk_100401C70);
          v62 = swift_allocObject();
          *(v62 + 16) = v67;
          *(v62 + 32) = v59;
          dispatch thunk of StoreDataProvider.fetchEpisodeOffers(with:)();
          v1 = v68;

          swift_allocObject();
          swift_weakInit();
          v63 = sub_10002BD04();
          v64 = static OS_dispatch_queue.main.getter();
          v70 = v63;
          v71 = &protocol witness table for OS_dispatch_queue;
          *&v69 = v64;
          Promise.then(perform:orCatchError:on:)();

          sub_100004590(&v69);
          sub_100004590(v72);
        }

        else
        {

          sub_1002000D8(v72);
        }
      }

      ++v54;
    }

    while (v53 != v54);
    goto LABEL_97;
  }

  __break(1u);
}

uint64_t sub_1001FF58C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(v2 + 16))
    {
      v4 = result;
      v5 = type metadata accessor for EpisodeOffer();
      v6 = *(v5 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_1000044A0((v4 + 40), *(v4 + 64));
      sub_100168088(&qword_10057BBA0, qword_100404540);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100400790;
      (*(v6 + 16))(v8 + v7, v2 + v7, v5);
      dispatch thunk of LibraryActionControllerProtocol.download(episodeOffers:)();
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_1001FF6F0(uint64_t *result, void *a2)
{
  v2 = *result;
  if (*(*result + 16))
  {
    v4 = type metadata accessor for EpisodeOffer();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    sub_1000044A0(a2, a2[3]);
    sub_100168088(&qword_10057BBA0, qword_100404540);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100400790;
    (*(v5 + 16))(v7 + v6, v2 + v6, v4);
    dispatch thunk of LibraryActionControllerProtocol.download(episodeOffers:)();
  }

  return result;
}

uint64_t sub_1001FF83C()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v12._object = 0xE000000000000000;
  v3._object = 0x80000001004694D0;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v12)._countAndFlagsBits;

  v6 = [v1 mainBundle];
  v13._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000027;
  v7._object = 0x80000001004694F0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v13)._countAndFlagsBits;

  if (*(v0 + 16))
  {

    v10 = sub_1003987E8();

    if (v10 != 1)
    {
      countAndFlagsBits = v9;
    }
  }

  return countAndFlagsBits;
}

uint64_t sub_1001FF98C()
{

  sub_100004590((v0 + 40));

  sub_1002000D8(v0 + 88);
  v1 = OBJC_IVAR____TtC8Podcasts28DownloadEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DownloadEpisodeContextAction(uint64_t a1)
{
  result = qword_100576FE8;
  if (!qword_100576FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001FFAAC(uint64_t a1)
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_1001FFB98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28DownloadEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001FFC10@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.downloadEpisode(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

double sub_1001FFCF0@<D0>(uint64_t a1@<X8>)
{
  sub_1001FFF1C(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1001FFD30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1001FFD90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1001FFDF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1001FFE50(uint64_t a1)
{
  result = sub_1001FFED8(&unk_1005821B0, &unk_1004044A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FFE94(uint64_t a1)
{
  result = sub_1001FFED8(&qword_100577160, &unk_1004044F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FFED8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DownloadEpisodeContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1001FFF1C@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemBlueColor];
  v3 = [objc_opt_self() mainBundle];
  v8._object = 0xE800000000000000;
  v8._countAndFlagsBits = 0x64616F6C6E776F44;
  v4._object = 0x80000001004694B0;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v8);

  *a1 = v2;
  result = 3.82472648e228;
  *(a1 + 8) = xmmword_1004043C0;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_100200004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100200068(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100577168, &unk_100404530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002000D8(uint64_t a1)
{
  v2 = sub_100168088(&qword_100577168, &unk_100404530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100200164(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_10020017C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t KeyProcessorPair.key.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTKeyProcessorPair_key);

  return v1;
}

id KeyProcessorPair.__allocating_init(key:processor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___MTKeyProcessorPair_key];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___MTKeyProcessorPair_processor] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

id KeyProcessorPair.init(key:processor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___MTKeyProcessorPair_key];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR___MTKeyProcessorPair_processor] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

char *MultiKeySyncProcessor.init(keysAndProcessors:)(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_26:
    v23 = _swiftEmptyArrayStorage;
    *&v1[OBJC_IVAR___MTMultiKeySyncProcessor_orderedKeys] = _swiftEmptyArrayStorage;

LABEL_27:
    v43 = v23;
    sub_100168088(&qword_100577188, &qword_100404558);
    sub_100168088(&qword_100577190, &qword_100404560);
    sub_100201EEC();
    *&v2[OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey] = Dictionary.init<A>(probablyUniqueKeysWithValues:)();
    v42.receiver = v2;
    v42.super_class = ObjectType;
    return objc_msgSendSuper2(&v42, "init");
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_3:
  v43 = _swiftEmptyArrayStorage;
  result = sub_1001A7364(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v40 = ObjectType;
    v41 = v1;
    v7 = v43;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = *(v9 + OBJC_IVAR___MTKeyProcessorPair_key);
        v11 = *(v9 + OBJC_IVAR___MTKeyProcessorPair_key + 8);

        swift_unknownObjectRelease();
        v43 = v7;
        v13 = v7[2];
        v12 = v7[3];
        if (v13 >= v12 >> 1)
        {
          sub_1001A7364((v12 > 1), v13 + 1, 1);
          v7 = v43;
        }

        ++v8;
        v7[2] = v13 + 1;
        v14 = &v7[2 * v13];
        v14[4] = v10;
        v14[5] = v11;
      }

      while (v5 != v8);
    }

    else
    {
      v15 = (a1 + 32);
      v16 = v5;
      do
      {
        v17 = (*v15 + OBJC_IVAR___MTKeyProcessorPair_key);
        v19 = *v17;
        v18 = v17[1];
        v43 = v7;
        v21 = v7[2];
        v20 = v7[3];

        if (v21 >= v20 >> 1)
        {
          sub_1001A7364((v20 > 1), v21 + 1, 1);
          v7 = v43;
        }

        v7[2] = v21 + 1;
        v22 = &v7[2 * v21];
        v22[4] = v19;
        v22[5] = v18;
        ++v15;
        --v16;
      }

      while (v16);
    }

    *&v41[OBJC_IVAR___MTMultiKeySyncProcessor_orderedKeys] = v7;
    v43 = _swiftEmptyArrayStorage;
    sub_1001A7718(0, v5 & ~(v5 >> 63), 0);
    v23 = _swiftEmptyArrayStorage;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      do
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v26 = *(v25 + OBJC_IVAR___MTKeyProcessorPair_key);
        v27 = *(v25 + OBJC_IVAR___MTKeyProcessorPair_key + 8);
        v28 = *(v25 + OBJC_IVAR___MTKeyProcessorPair_processor);

        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v43 = v23;
        v30 = v23[2];
        v29 = v23[3];
        if (v30 >= v29 >> 1)
        {
          sub_1001A7718((v29 > 1), v30 + 1, 1);
          v23 = v43;
        }

        ++v24;
        v23[2] = v30 + 1;
        v31 = &v23[3 * v30];
        v31[4] = v26;
        v31[5] = v27;
        v31[6] = v28;
      }

      while (v5 != v24);
    }

    else
    {
      v32 = 32;
      do
      {
        v33 = *(a1 + v32);
        v35 = *(v33 + OBJC_IVAR___MTKeyProcessorPair_key);
        v34 = *(v33 + OBJC_IVAR___MTKeyProcessorPair_key + 8);
        v36 = *(v33 + OBJC_IVAR___MTKeyProcessorPair_processor);
        v43 = v23;
        v38 = v23[2];
        v37 = v23[3];

        swift_unknownObjectRetain();
        if (v38 >= v37 >> 1)
        {
          sub_1001A7718((v37 > 1), v38 + 1, 1);
          v23 = v43;
        }

        v23[2] = v38 + 1;
        v39 = &v23[3 * v38];
        v39[4] = v35;
        v39[5] = v34;
        v39[6] = v36;
        v32 += 8;
        --v5;
      }

      while (v5);
    }

    ObjectType = v40;
    v2 = v41;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *MultiKeySyncProcessor.dirtyKeys.getter()
{
  v0 = sub_100200B54();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([*&v5[OBJC_IVAR___MTKeyProcessorPair_processor] hasLocalChanges])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 = v1 & 0xC000000000000001;
      }

      else
      {
      }

      ++v3;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_14:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    v8 = _swiftEmptyArrayStorage[2];
    if (v8)
    {
      goto LABEL_17;
    }

LABEL_30:

    return _swiftEmptyArrayStorage;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_30;
  }

LABEL_17:
  result = sub_1001A7364(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = _swiftEmptyArrayStorage[v10 + 4];
      }

      v12 = v11;
      v14 = *&v11[OBJC_IVAR___MTKeyProcessorPair_key];
      v13 = *&v11[OBJC_IVAR___MTKeyProcessorPair_key + 8];

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_1001A7364((v15 > 1), v16 + 1, 1);
      }

      ++v10;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v14;
      v17[5] = v13;
    }

    while (v8 != v10);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

void *sub_100200B54()
{
  v1 = *(v0 + OBJC_IVAR___MTMultiKeySyncProcessor_orderedKeys);
  result = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  v3 = *(v1 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = v0;
  v5 = 0;
  v6 = OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey;
  v7 = v1 + 40;
  do
  {
    v19 = result;
    v8 = (v7 + 16 * v5);
    v9 = v5;
    while (1)
    {
      if (v9 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = *(v4 + v6);
      if (*(v10 + 16))
      {
        break;
      }

LABEL_5:
      ++v9;
      v8 += 2;
      if (v3 == v9)
      {
        return v19;
      }
    }

    v12 = *(v8 - 1);
    v11 = *v8;

    v13 = sub_10000F9C0(v12, v11, sub_10000FA44);
    if ((v14 & 1) == 0)
    {

      goto LABEL_5;
    }

    v15 = *(*(v10 + 56) + 8 * v13);
    v16 = type metadata accessor for KeyProcessorPair();
    v17 = objc_allocWithZone(v16);
    v18 = &v17[OBJC_IVAR___MTKeyProcessorPair_key];
    *v18 = v12;
    v18[1] = v11;
    *&v17[OBJC_IVAR___MTKeyProcessorPair_processor] = v15;
    v20.receiver = v17;
    v20.super_class = v16;
    swift_unknownObjectRetain();
    result = objc_msgSendSuper2(&v20, "init");
    if (!result)
    {
      goto LABEL_5;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v5 = v9 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v21;
    v7 = v1 + 40;
  }

  while (v3 - 1 != v9);
  return result;
}

Class sub_100200D24(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

char *MultiKeySyncProcessor.cleanKeys.getter()
{
  v0 = sub_100200B54();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_28;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = OBJC_IVAR___MTKeyProcessorPair_processor;
      if (([*&v5[OBJC_IVAR___MTKeyProcessorPair_processor] hasLocalChanges] & 1) != 0 || (objc_msgSend(*&v6[v8], "requiresNextGetTransaction") & 1) == 0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v1 & 0xFFFFFFFFFFFFFF8;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_15:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    v9 = _swiftEmptyArrayStorage[2];
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_31:

    return _swiftEmptyArrayStorage;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_18:
  result = sub_1001A7364(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = _swiftEmptyArrayStorage[v11 + 4];
      }

      v13 = v12;
      v15 = *&v12[OBJC_IVAR___MTKeyProcessorPair_key];
      v14 = *&v12[OBJC_IVAR___MTKeyProcessorPair_key + 8];

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_1001A7364((v16 > 1), v17 + 1, 1);
      }

      ++v11;
      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v17];
      v18[4] = v15;
      v18[5] = v14;
    }

    while (v9 != v11);
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t MultiKeySyncProcessor.processor(for:)(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey) + 16) && (sub_10000F9C0(a1, a2, sub_10000FA44), (v3 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002011F0(SEL *a1)
{
  v3 = *(v1 + OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  for (i = 0; v6; i |= result)
  {
    v11 = v9;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    result = [*(*(v3 + 56) + ((v11 << 9) | (8 * v12))) *a1];
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return i & 1;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall MultiKeySyncProcessor.version(forGetTransaction:key:)(MZKeyValueStoreTransaction *forGetTransaction, Swift::String key)
{
  v3 = *(v2 + OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey);
  if (*(v3 + 16) && (v5 = sub_10000F9C0(key._countAndFlagsBits, key._object, sub_10000FA44), (v6 & 1) != 0) && (v7 = *(*(v3 + 56) + 8 * v5), swift_unknownObjectRetain(), v8 = String._bridgeToObjectiveC()(), v9 = [v7 versionForGetTransaction:forGetTransaction key:v8], v8, swift_unknownObjectRelease(), v9))
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = v12;
    v14 = v10;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  result.value._object = v13;
  result.value._countAndFlagsBits = v14;
  return result;
}

uint64_t MultiKeySyncProcessor.data(forSetTransaction:key:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v8 = sub_10000F9C0(a2, a3, sub_10000FA44);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(*(v5 + 56) + 8 * v8);
  swift_unknownObjectRetain();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 dataForSetTransaction:a1 key:v11 version:a4];

  swift_unknownObjectRelease();
  if (!v12)
  {
    return 0;
  }

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v13;
}

uint64_t sub_1002016BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1002018E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSString a7, void *a8, uint64_t a9, uint64_t a10, SEL *a11)
{
  v12 = *(v11 + OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey);
  if (*(v12 + 16))
  {
    v17 = sub_10000F9C0(a4, a5, sub_10000FA44);
    if (v18)
    {
      v19 = *(*(v12 + 56) + 8 * v17);
      swift_unknownObjectRetain();
      if (a3 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
      }

      v21 = String._bridgeToObjectiveC()();
      if (a7)
      {
        a7 = String._bridgeToObjectiveC()();
      }

      if (a8)
      {
        v22[4] = a8;
        v22[5] = a9;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 1107296256;
        v22[2] = sub_1002016BC;
        v22[3] = a10;
        a8 = _Block_copy(v22);
      }

      [v19 *a11];
      swift_unknownObjectRelease();
      _Block_release(a8);
    }
  }
}

Swift::Void __swiftcall MultiKeySyncProcessor.transaction(_:didProcessResponseWithDomainVersion:)(MZKeyValueStoreTransaction *_, Swift::String_optional didProcessResponseWithDomainVersion)
{
  type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();

  SyncKeysRepository.podcastsDomainVersion.setter();
}

unint64_t sub_100201EEC()
{
  result = qword_100577198;
  if (!qword_100577198)
  {
    sub_100168310(&qword_100577190, &qword_100404560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100577198);
  }

  return result;
}

unint64_t sub_100201F98(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100202A40(a1, v2);
}

unint64_t sub_100202028(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1002023F0(a1, v4);
}

unint64_t sub_10020206C(uint64_t a1)
{
  type metadata accessor for MediaRequest.ContentType();
  sub_100202CC0(&unk_100579CA0, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1002024B8(a1, v2);
}

unint64_t sub_100202104(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100202CC0(&unk_100577210, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100202678(a1, v2);
}

unint64_t sub_1002021B8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100202974(a1, v4, &qword_100577208, AVURLAsset_ptr);
}

unint64_t sub_100202208(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100202974(a1, v4, &qword_100577200, AVAssetDownloadTask_ptr);
}

unint64_t sub_100202258(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100202974(a1, v4, &qword_1005748F0, NSURLSessionTask_ptr);
}

unint64_t sub_1002022A8(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  EpisodeStateIdentifier.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100202B44(a1, a2, a3 & 1, v6);
}

unint64_t sub_100202334(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100202974(a1, v4, &unk_100573F30, NSManagedObjectID_ptr);
}

unint64_t sub_100202384(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();

  return sub_100202C48(a1 & 1, v2);
}

unint64_t sub_1002023F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10016BE40(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10016BE9C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1002024B8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for MediaRequest.ContentType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_100202CC0(&qword_100577220, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100202678(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    v37 = a1 + 24;
    v38 = v8 + 24;
    do
    {
      sub_1001BE270(*(v2 + 48) + v12 * v10, v8);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v13 = v5[5];
      v14 = *&v8[v13];
      v15 = *&v8[v13 + 8];
      v16 = (a1 + v13);
      v17 = v14 == *v16 && v15 == v16[1];
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      if ((static Date.== infix(_:_:)() & 1) == 0 || *&v8[v5[7]] != *(a1 + v5[7]))
      {
        goto LABEL_4;
      }

      v18 = v5[8];
      v19 = *&v8[v18];
      v20 = *&v8[v18 + 8];
      v21 = v8[v18 + 16];
      v22 = a1 + v18;
      v23 = *(v22 + 16);
      if (v19 != *v22 || v20 != *(v22 + 8))
      {
        v25 = *(v22 + 16);
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v23 = v25;
        if ((v26 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (v21)
      {
        v27 = 1936484398;
      }

      else
      {
        v27 = 0x7261646E6174732ELL;
      }

      if (v21)
      {
        v28 = 0xE400000000000000;
      }

      else
      {
        v28 = 0xE900000000000064;
      }

      if (v23)
      {
        v29 = 1936484398;
      }

      else
      {
        v29 = 0x7261646E6174732ELL;
      }

      if (v23)
      {
        v30 = 0xE400000000000000;
      }

      else
      {
        v30 = 0xE900000000000064;
      }

      if (v27 == v29 && v28 == v30)
      {
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v39 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!sub_100210614(&v8[v5[9]], a1 + v5[9]))
      {
        goto LABEL_4;
      }

      v32 = v5[10];
      v33 = *&v38[v32];
      v34 = *(v37 + v32);
      if (v33 > 2)
      {
        if (v33 == 3)
        {
          if (v34 == 3)
          {
LABEL_50:
            sub_1001BE660(v8);
            return v10;
          }
        }

        else
        {
          if (v33 != 4)
          {
LABEL_3:
            if ((v34 - 1) >= 4)
            {
              goto LABEL_50;
            }

            goto LABEL_4;
          }

          if (v34 == 4)
          {
            goto LABEL_50;
          }
        }
      }

      else if (v33 == 1)
      {
        if (v34 == 1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v33 != 2)
        {
          goto LABEL_3;
        }

        if (v34 == 2)
        {
          goto LABEL_50;
        }
      }

LABEL_4:
      sub_1001BE660(v8);
      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100202974(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100009F1C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100202A40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100202B44(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      sub_1001C1A3C(*v8, v10, v11);
      v12 = static EpisodeStateIdentifier.== infix(_:_:)();
      sub_1001C1A4C(v9, v10, v11);
      if (v12)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100202C48(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100202CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CarPlayCyclePlaybackRateActionImplementation.perform(_:asPartOf:)(uint64_t a1)
{
  v1[8] = a1;
  v2 = type metadata accessor for PlaybackController.TransportCommand();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = type metadata accessor for PlaybackController();
  v4 = swift_task_alloc();
  v1[14] = v4;
  *v4 = v1;
  v4[1] = sub_100202E40;

  return BaseObjectGraph.inject<A>(_:)(v1 + 7, v3, v3);
}

uint64_t sub_100202E40()
{
  v2 = *v1;
  v2[15] = v0;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[16] = v4;
  v2[17] = v3;
  if (v0)
  {
    v5 = sub_1002032E0;
  }

  else
  {
    v5 = sub_100202FA0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100202FA0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v0[18] = v0[7];
  *v1 = 256;
  (*(v2 + 104))(v1, enum case for PlaybackController.TransportCommand.increasePlaybackSpeed(_:), v3);
  v0[5] = v3;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v4 = sub_10000E680(v0 + 2);
  (*(v2 + 16))(v4, v1, v3);
  v7 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1002030C4;

  return (v7)(v0 + 2, 0);
}

uint64_t sub_1002030C4(void *a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_10020334C;
  }

  else
  {

    sub_100004590(v4 + 2);
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_1002031F0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1002031F0()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  v5 = enum case for ActionOutcome.performed(_:);
  v6 = type metadata accessor for ActionOutcome();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002032E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020334C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  sub_100004590(v0 + 2);

  v4 = v0[1];

  return v4();
}

unint64_t sub_1002033F8()
{
  result = qword_100577228;
  if (!qword_100577228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100577228);
  }

  return result;
}

uint64_t sub_10020344C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001C51C;

  return CarPlayCyclePlaybackRateActionImplementation.perform(_:asPartOf:)(a1);
}

unint64_t sub_1002034F0()
{
  result = qword_100577230;
  if (!qword_100577230)
  {
    type metadata accessor for CarPlayCyclePlaybackRateAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100577230);
  }

  return result;
}

uint64_t sub_100203548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100203658();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

uint64_t initializeBufferWithCopyOfBuffer for CarPlayCyclePlaybackRateActionImplementation.PerformError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CarPlayCyclePlaybackRateActionImplementation.PerformError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CarPlayCyclePlaybackRateActionImplementation.PerformError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10020360C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100203628(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_100203658()
{
  result = qword_100577238;
  if (!qword_100577238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100577238);
  }

  return result;
}

void NowPlayingTabController.perform(testCase:runner:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PerformanceTestCase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = PerformanceTestCase.name.getter();
  v10 = v8;
  if (v9 == 0xD000000000000016 && 0x80000001004696B0 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9 == 0xD00000000000001FLL && 0x80000001004696D0 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v7, v4);
    *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
    v13 = v2;
    v14 = sub_100204EF8;
LABEL_8:
    sub_100204C6C(v14, v12, 3.0);

    return;
  }

  if (v9 == 0xD00000000000001BLL && 0x80000001004696F0 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9 == 0xD000000000000024 && 0x8000000100469710 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v15, v7, v4);
    *(v12 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
    v16 = v2;
    v14 = sub_100204224;
    goto LABEL_8;
  }

  if (UIApp)
  {
    v17 = UIApp;

    PerformanceTestCase.name.getter();
    v18 = String._bridgeToObjectiveC()();

    v21 = String._bridgeToObjectiveC()();
    [v17 failedTest:v18 withFailure:v21];

    v19 = v21;
  }

  else
  {
    __break(1u);
  }
}

void sub_100203A48(uint64_t a1, void *a2)
{
  sub_100168088(&unk_100577240, &unk_100410A90);
  __chkstk_darwin();
  v5 = &v10 - v4;
  if (UIApp)
  {
    v6 = UIApp;
    PerformanceTestCase.name.getter();
    v7 = String._bridgeToObjectiveC()();

    [v6 startedTest:v7];

    v8 = (*((swift_isaMask & *a2) + 0x158))();
    if (v8)
    {
      if (object_getClass(v8) == _TtC8Podcasts19NowPlayingBootstrap)
      {
        v9 = type metadata accessor for NowPlayingHostedContentID();
        (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
        sub_10002B22C();

        dispatch thunk of NowPlayingViewModel.updateContentSelection(_:animated:)();
        swift_unknownObjectRelease();

        sub_100204FB0(v5);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    sub_100203C30(a1, 0, 5);
  }

  else
  {
    __break(1u);
  }
}

void sub_100203C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PerformanceTestCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  if (a2 < a3)
  {
    v34 = a2;
    v35 = a3;
    v36 = v3;
    if (UIApp)
    {
      v10 = UIApp;
      v11 = String._bridgeToObjectiveC()();
      PerformanceTestCase.name.getter();
      v12 = String._bridgeToObjectiveC()();

      [v10 startedSubTest:v11 forTest:v12];

      v13 = UIApp;
      if (UIApp)
      {
        v32 = *(v8 + 16);
        v32(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
        v14 = *(v8 + 80);
        v15 = swift_allocObject();
        v33 = *(v8 + 32);
        v33(v15 + ((v14 + 16) & ~v14), &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        aBlock[4] = sub_100205018;
        aBlock[5] = v15;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000F038;
        aBlock[3] = &unk_1004E4BB8;
        v16 = _Block_copy(aBlock);
        v17 = v13;

        [v17 installCACommitCompletionBlock:v16];
        _Block_release(v16);

        v18 = v36;
        if ((*((swift_isaMask & *v36) + 0x158))())
        {
          v30 = v19;
          ObjectType = swift_getObjectType();
          v32(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
          v20 = (v14 + 24) & ~v14;
          v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
          v22 = swift_allocObject();
          *(v22 + 16) = v18;
          v33(v22 + v20, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          v23 = v35;
          *(v22 + v21) = v34;
          *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
          v24 = v30;
          v25 = *(v30 + 8);
          v26 = v18;
          v25(1, sub_100205044, v22, ObjectType, v24);

          swift_unknownObjectRelease();
        }

        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!UIApp)
  {
    goto LABEL_12;
  }

  v27 = UIApp;
  PerformanceTestCase.name.getter();
  v36 = String._bridgeToObjectiveC()();

  [v27 finishedTest:v36];

  v28 = v36;
}

void sub_100204034(uint64_t a1, void *a2)
{
  sub_100168088(&unk_100577240, &unk_100410A90);
  __chkstk_darwin();
  v5 = &v10 - v4;
  if (UIApp)
  {
    v6 = UIApp;
    PerformanceTestCase.name.getter();
    v7 = String._bridgeToObjectiveC()();

    [v6 startedTest:v7];

    v8 = (*((swift_isaMask & *a2) + 0x158))();
    if (v8)
    {
      if (object_getClass(v8) == _TtC8Podcasts19NowPlayingBootstrap)
      {
        static NowPlayingHostedContentID.queue.getter();
        v9 = type metadata accessor for NowPlayingHostedContentID();
        (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
        sub_10002B22C();

        dispatch thunk of NowPlayingViewModel.updateContentSelection(_:animated:)();
        swift_unknownObjectRelease();

        sub_100204FB0(v5);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    sub_100203C30(a1, 0, 5);
  }

  else
  {
    __break(1u);
  }
}

void sub_10020423C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v6 = type metadata accessor for PerformanceTestCase();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UIApp)
  {
    v10 = UIApp;
    v11 = String._bridgeToObjectiveC()();
    PerformanceTestCase.name.getter();
    v12 = String._bridgeToObjectiveC()();

    [v10 finishedSubTest:v11 forTest:v12 waitForCommit:1];

    (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = (v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    (*(v7 + 32))(v16 + v13, v9, v6);
    *(v16 + v14) = a2;
    v17 = v20;
    *(v16 + v15) = v19;
    *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
    v18 = a2;
    sub_100204C6C(sub_10020507C, v16, 0.5);
  }

  else
  {
    __break(1u);
  }
}

void sub_100204438(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v7 = type metadata accessor for PerformanceTestCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  if (!UIApp)
  {
    __break(1u);
    goto LABEL_7;
  }

  v32 = a3;
  v33 = a4;
  v10 = UIApp;
  v11 = String._bridgeToObjectiveC()();
  v35 = a1;
  PerformanceTestCase.name.getter();
  v12 = String._bridgeToObjectiveC()();

  [v10 startedSubTest:v11 forTest:v12];

  v13 = UIApp;
  if (!UIApp)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = *(v8 + 16);
  v14(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v7);
  v15 = *(v8 + 80);
  v16 = swift_allocObject();
  v31 = *(v8 + 32);
  v31(v16 + ((v15 + 16) & ~v15), &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_10020511C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E4C80;
  v17 = _Block_copy(aBlock);
  v18 = v13;

  [v18 installCACommitCompletionBlock:v17];
  _Block_release(v17);

  v19 = v34;
  if ((*((swift_isaMask & *v34) + 0x158))())
  {
    v29 = v20;
    ObjectType = swift_getObjectType();
    v14(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v7);
    v21 = (v15 + 24) & ~v15;
    v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    v31(v23 + v21, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v24 = v33;
    *(v23 + v22) = v32;
    *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
    v25 = v29;
    v26 = *(v29 + 16);
    v27 = v19;
    v26(1, sub_1002052C0, v23, ObjectType, v25);

    swift_unknownObjectRelease();
  }
}

void sub_1002047C8()
{
  if (!UIApp)
  {
    __break(1u);
    goto LABEL_7;
  }

  v0 = UIApp;
  v1 = String._bridgeToObjectiveC()();
  PerformanceTestCase.name.getter();
  v2 = String._bridgeToObjectiveC()();

  [v0 finishedSubTest:v1 forTest:v2];

  if (!UIApp)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = UIApp;
  v4 = String._bridgeToObjectiveC()();
  PerformanceTestCase.name.getter();
  v5 = String._bridgeToObjectiveC()();

  [v3 startedSubTest:v4 forTest:v5];
}

uint64_t sub_1002048F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  v21 = a6;
  v9 = type metadata accessor for PerformanceTestCase();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin();
  v13 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a2, v9, v12);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v14, v13, v9);
  *(v17 + v15) = a1;
  *(v17 + v16) = a3;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v18 = a1;
  sub_100204C6C(v21, v17, 0.5);
}

void sub_100204A64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v6 = type metadata accessor for PerformanceTestCase();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  if (UIApp)
  {
    v9 = UIApp;
    v10 = String._bridgeToObjectiveC()();
    PerformanceTestCase.name.getter();
    v11 = String._bridgeToObjectiveC()();

    [v9 finishedSubTest:v10 forTest:v11 waitForCommit:1];

    (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v12 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v13 = swift_allocObject();
    v14 = v17;
    *(v13 + 2) = v16;
    *(v13 + 3) = v14;
    *(v13 + 4) = a2;
    (*(v7 + 32))(&v13[v12], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v15 = a2;
    sub_100204C6C(sub_10020550C, v13, 0.5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100204C6C(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v14 - v9;
  sub_10002BD04();
  v14[0] = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v11 = *(v6 + 8);
  v11(v8, v5);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E4D20;
  _Block_copy(aBlock);
  v14[1] = _swiftEmptyArrayStorage;
  sub_1001D293C();

  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100182E30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  DispatchWorkItem.init(flags:block:)();

  v12 = v14[0];
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v11)(v10, v5);
}

uint64_t sub_100204F10(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PerformanceTestCase() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_100204FB0(uint64_t a1)
{
  v2 = sub_100168088(&unk_100577240, &unk_100410A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100205094()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002051E8()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1002052E0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PerformanceTestCase() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002048F0(*(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_100205390()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100205454(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PerformanceTestCase() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v4);
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v6, v7, v8);
}

void sub_10020550C()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v3 < v2)
  {
    sub_100203C30(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)), v3 + 1, v2);
  }
}

id sub_100205590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryViewControllerProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002055C8()
{
  sub_1001D4C68(2, 0xD000000000000018, 0x8000000100465C70, v2);
  v0 = objc_allocWithZone(sub_100168088(&qword_1005772D8, &qword_100404788));
  return UIHostingController.init(rootView:)();
}

void sub_100205638()
{
  v1 = *v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = objc_allocWithZone(MTiOSPlaylistSettingsViewController);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithPlaylistUuid:v4 library:v2];

  if (v5)
  {
    [v5 setDelegate:v1];
  }

  else
  {
    __break(1u);
  }
}

id sub_1002056F8(uint64_t a1)
{
  v1 = [objc_opt_self() defaultViewControllerWithLibraryActionControllerBridge:a1];

  return v1;
}

uint64_t sub_100205748(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ShowSettingsView(0);
  __chkstk_darwin();
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100205938();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v7 = [ObjCClassFromMetadata sharedInstance];
  v8 = sub_100021698();
  v15[3] = &type metadata for ShowSettingsController;
  v15[4] = &off_1004E9A68;
  v9 = swift_allocObject();
  v15[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v7;
  v9[5] = v8;

  v10 = v7;
  sub_100262390(v15, v5);
  v11 = objc_allocWithZone(sub_100168088(&unk_1005772E0, &unk_100404790));
  v12 = UIHostingController.init(rootView:)();

  return v12;
}

char *sub_100205890(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MTNotificationSettingsViewController();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = &v4[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid];
  *v5 = a1;
  *(v5 + 1) = a2;

  v6 = (*&v4[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_sectionedContentViewController] + OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid);
  *v6 = a1;
  v6[1] = a2;
  swift_bridgeObjectRetain_n();

  return v4;
}

unint64_t sub_100205938()
{
  result = qword_100573E00;
  if (!qword_100573E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100573E00);
  }

  return result;
}

uint64_t sub_100205984()
{
  sub_100168088(&qword_100574690, &unk_100401BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  *(inited + 32) = static String.pageHighlightShelfID.getter();
  *(inited + 40) = v1;
  *(inited + 48) = static String.loadingShelfID.getter();
  *(inited + 56) = v2;
  v3 = sub_10016B918(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_1005772F0 = v3;
  return result;
}

uint64_t sub_100205A24()
{
  sub_100168088(&qword_100577470, &unk_100404860);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004007C0;
  v1 = type metadata accessor for LegacyEpisodeLockup();
  v2 = sub_100208A80(&qword_100577478, &type metadata accessor for LegacyEpisodeLockup, &protocol conformance descriptor for LegacyLockup);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for ShowHeader();
  result = sub_100208A80(&unk_100577480, &type metadata accessor for ShowHeader, &protocol conformance descriptor for ShowHeader);
  *(v0 + 48) = v3;
  *(v0 + 56) = result;
  off_1005772F8 = v0;
  return result;
}

uint64_t sub_100205B00()
{

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_pageURL, &qword_100574040, &unk_100400AD0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CarPlayStoreShowProvider(uint64_t a1)
{
  result = qword_100577348;
  if (!qword_100577348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100205C00(uint64_t a1)
{
  sub_100012E4C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100205CA4()
{
  v1 = v0;
  v25 = *v0;
  v2 = v25;
  v26 = sub_100168088(&unk_100578D90, &qword_1004047F0);
  v3 = *(v26 - 8);
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = sub_100168088(&unk_100577400, &qword_1004047F8);
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  __chkstk_darwin();
  v9 = &v24 - v8;
  v32 = sub_100168088(&unk_100578DA0, &qword_100404800);
  v34 = *(v32 - 8);
  __chkstk_darwin();
  v27 = &v24 - v10;
  v31 = sub_100168088(&unk_100577410, &qword_100404808);
  v33 = *(v31 - 8);
  __chkstk_darwin();
  v28 = &v24 - v11;
  v35 = StorePageProvider.pageContent.getter();
  *(swift_allocObject() + 16) = v2;
  sub_100168088(&unk_100578DB0, &unk_100404810);
  sub_100009FAC(&unk_100574B00, &unk_100578DB0, &unk_100404810, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher.removeDuplicates(by:)();

  v35 = *(v0 + OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_updatePlayStateSubject);
  sub_100168088(&qword_100574B10, &unk_100401F50);
  sub_100009FAC(&unk_100577420, &unk_100578D90, &qword_1004047F0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_100009FAC(&unk_100574B20, &qword_100574B10, &unk_100401F50, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v12 = v26;
  Publisher.combineLatest<A>(_:)();
  (*(v3 + 8))(v5, v12);
  v13 = v0[2];
  v14 = *(v1 + OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_smartPlayButtonController);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v25;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100206794;
  *(v16 + 24) = v15;

  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100577430, &unk_100404820);
  sub_100009FAC(&unk_100578DC0, &unk_100577400, &qword_1004047F8, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  sub_100009FAC(&unk_100577440, &unk_100577430, &unk_100404820, &protocol conformance descriptor for Future<A, B>);
  v17 = v27;
  v18 = v29;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v30 + 8))(v9, v18);
  sub_100009FAC(&unk_100578DD0, &unk_100578DA0, &qword_100404800, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v19 = v28;
  v20 = v32;
  Publisher.compactMap<A>(_:)();
  (*(v34 + 8))(v17, v20);
  sub_100009FAC(&unk_100577450, &unk_100577410, &qword_100404808, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v21 = v31;
  v22 = Publisher.eraseToAnyPublisher()();
  (*(v33 + 8))(v19, v21);
  return v22;
}

uint64_t sub_1002062D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(type metadata accessor for PageContent() - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v10 = v17 - v9;
  type metadata accessor for SmartPlayButtonController();
  v17[1] = a3;
  v11 = BaseObjectGraph.satisfying<A>(_:with:)();
  sub_100168088(&unk_100577430, &unk_100404820);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_1001AB84C(a1, v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  sub_1001AD194(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, &type metadata accessor for PageContent);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_100404838;
  *(v15 + 24) = v14;
  return Future<>.init(priority:unwrapping:)();
}

uint64_t sub_100206500(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100206598, v4, v3);
}

uint64_t sub_100206598()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_100208684(v2, v1);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100206608(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1001AB680;

  return v5();
}

uint64_t sub_1002066F4@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100206724@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 8) = v2;
  v4 = *(a1 + 16);
  *(a2 + 16) = v4;
  return sub_1002067A0(v3, v2, v4);
}

uint64_t sub_1002067A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1002067B4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1002067B4(uint64_t result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 3:

    case 2:

    case 1:

      return sub_100013CB4(result, a2);
  }

  return result;
}

uint64_t sub_100206830()
{
  v2 = *(type metadata accessor for PageContent() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001AB9B8;

  return sub_100206500(v4, v0 + v3);
}

uint64_t sub_100206938(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C51C;

  return sub_100206608(a1, v4);
}

uint64_t sub_1002069F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v16 = a2;
  v19 = type metadata accessor for SmartPlayPlatformContext();
  v5 = *(v19 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SmartPlayContext();
  v8 = *(v17 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v12 = &v16 - v11;
  v13 = OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_updatePlayStateSubject;
  sub_100168088(&qword_100574B10, &unk_100401F50);
  swift_allocObject();
  *(v3 + v13) = CurrentValueSubject.init(_:)();
  *(v3 + 16) = a1;
  v14 = v16;
  sub_100010430(v16, v3 + OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_pageURL, &qword_100574040, &unk_100400AD0);
  sub_100010430(v14, v12, &qword_100574040, &unk_100400AD0);
  type metadata accessor for StorePageProvider();
  swift_allocObject();

  swift_retain_n();
  *(v3 + OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_provider) = StorePageProvider.init(asPartOf:pageURL:page:)();
  (*(v8 + 104))(v10, enum case for SmartPlayContext.showPage(_:), v17);
  (*(v5 + 104))(v7, enum case for SmartPlayPlatformContext.carPlay(_:), v19);
  type metadata accessor for SmartPlayButtonController();
  swift_allocObject();

  *(v3 + OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_smartPlayButtonController) = SmartPlayButtonController.init(button:context:platform:objectGraph:)();
  StorePageProvider.viewDidLoad()();
  sub_100009104(v14, &qword_100574040, &unk_100400AD0);
  return v3;
}

uint64_t sub_100206CF0(uint64_t a1, uint64_t a2)
{
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v63 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v54 - v5;
  __chkstk_darwin();
  v7 = &v54 - v6;
  v66 = type metadata accessor for ModernShelf();
  v62 = *(v66 - 8);
  __chkstk_darwin();
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v54 - v9;
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v54 - v12;
  v14 = type metadata accessor for ModernPage();
  __chkstk_darwin();
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v54 - v17;
  sub_1001AB84C(a1, v13);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v35 = v13;
LABEL_13:
    sub_1001AD1FC(v35, &type metadata accessor for PageContent);
    v36 = 0;
    return v36 & 1;
  }

  sub_1001AD194(v13, v18, &type metadata accessor for ModernPage);
  sub_1001AB84C(a2, v11);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1001AD1FC(v18, &type metadata accessor for ModernPage);
    v35 = v11;
    goto LABEL_13;
  }

  sub_1001AD194(v11, v16, &type metadata accessor for ModernPage);
  v19 = *(v14 + 24);
  v56 = v18;
  v20 = *&v18[v19];
  v21 = *(v20 + 16);
  v22 = _swiftEmptyArrayStorage;
  v57 = v16;
  if (v21)
  {
    v55 = v14;
    v67 = _swiftEmptyArrayStorage;
    sub_1001A7738(0, v21, 0);
    v22 = v67;
    v23 = *(v62 + 16);
    v24 = v20 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v58 = *(v62 + 72);
    v59 = v23;
    v60 = v62 + 16;
    v25 = (v62 + 8);
    do
    {
      (v59)(v64, v24, v66);
      ModernShelf.header.getter();
      v26 = type metadata accessor for Header();
      v27 = *(v26 - 8);
      v28 = 0;
      v29 = 0;
      if ((*(v27 + 48))(v7, 1, v26) != 1)
      {
        v30 = v61;
        sub_100010430(v7, v61, &qword_100577490, &qword_1004017A0);
        v28 = Header.title.getter();
        v29 = v31;
        (*(v27 + 8))(v30, v26);
      }

      sub_100009104(v7, &qword_100577490, &qword_1004017A0);
      (*v25)(v64, v66);
      v67 = v22;
      v33 = v22[2];
      v32 = v22[3];
      if (v33 >= v32 >> 1)
      {
        sub_1001A7738((v32 > 1), v33 + 1, 1);
        v22 = v67;
      }

      v22[2] = v33 + 1;
      v34 = &v22[2 * v33];
      v34[4] = v28;
      v34[5] = v29;
      v24 += v58;
      --v21;
    }

    while (v21);
    v19 = *(v55 + 24);
    v16 = v57;
  }

  v37 = *&v16[v19];
  v38 = *(v37 + 16);
  v39 = _swiftEmptyArrayStorage;
  if (v38)
  {
    v67 = _swiftEmptyArrayStorage;
    sub_1001A7738(0, v38, 0);
    v39 = v67;
    v64 = *(v62 + 16);
    v40 = v37 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v41 = *(v62 + 72);
    v62 += 16;
    v59 = (v62 - 8);
    v60 = v41;
    do
    {
      (v64)(v65, v40, v66);
      ModernShelf.header.getter();
      v42 = v63;
      v43 = type metadata accessor for Header();
      v44 = *(v43 - 8);
      v45 = 0;
      v46 = 0;
      if ((*(v44 + 48))(v42, 1, v43) != 1)
      {
        v47 = v61;
        sub_100010430(v42, v61, &qword_100577490, &qword_1004017A0);
        v48 = Header.title.getter();
        v42 = v63;
        v45 = v48;
        v46 = v49;
        (*(v44 + 8))(v47, v43);
      }

      sub_100009104(v42, &qword_100577490, &qword_1004017A0);
      (*v59)(v65, v66);
      v67 = v39;
      v51 = v39[2];
      v50 = v39[3];
      if (v51 >= v50 >> 1)
      {
        sub_1001A7738((v50 > 1), v51 + 1, 1);
        v39 = v67;
      }

      v39[2] = v51 + 1;
      v52 = &v39[2 * v51];
      v52[4] = v45;
      v52[5] = v46;
      v40 += v60;
      --v38;
    }

    while (v38);
    v16 = v57;
  }

  v36 = sub_100195FAC(v22, v39);

  sub_1001AD1FC(v16, &type metadata accessor for ModernPage);
  sub_1001AD1FC(v56, &type metadata accessor for ModernPage);
  return v36 & 1;
}

uint64_t sub_100207400(uint64_t a1, __n128 a2)
{
  v44 = type metadata accessor for ModernShelf.ItemPresentation();
  v3 = *(v44 - 8);
  __chkstk_darwin();
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ModernShelf();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = __chkstk_darwin();
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  v38 = v11;
  v39 = v7;
  v40 = &v37 - v10;
  v15 = *(v7 + 16);
  v14 = v7 + 16;
  v16 = (v3 + 8);
  v42 = (v14 - 8);
  v43 = v15;
  v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v41 = *(v14 + 56);
  while (1)
  {
    v18 = v6;
    v43(v9, v17, v6, v12);
    ModernShelf.itemPresentation.getter();
    ModernShelf.ItemPresentation.itemKind.getter();
    (*v16)(v5, v44);
    v19 = ModernShelf.ItemKind.rawValue.getter();
    v21 = v20;
    if (v19 == ModernShelf.ItemKind.rawValue.getter() && v21 == v22)
    {
      break;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_9;
    }

    v6 = v18;
    (*v42)(v9, v18);
    v17 += v41;
    if (!--v13)
    {
      return 0;
    }
  }

LABEL_9:
  v25 = v38;
  v26 = *(v39 + 32);
  v27 = v18;
  v26(v38, v9, v18);
  v28 = v40;
  v26(v40, v25, v18);
  result = ModernShelf.items.getter();
  v30 = result;
  v31 = *(result + 16);
  v32 = result + 32;
  if (v31)
  {
    v33 = 0;
    v34 = result + 32;
    while (1)
    {
      sub_100004428(v34, v45);
      sub_100168088(&qword_1005748E0, &qword_100401D88);
      type metadata accessor for ShowHeader();
      result = swift_dynamicCast();
      if (result)
      {
        v35 = v46;

        if (v35)
        {
          break;
        }
      }

      ++v33;
      v34 += 40;
      if (v31 == v33)
      {
        goto LABEL_15;
      }
    }

    v31 = v33;
  }

LABEL_15:
  v36 = *(v30 + 16);
  if (v31 == v36)
  {
    v24 = 0;
LABEL_20:

    (*v42)(v28, v27);
    return v24;
  }

  if (v31 >= v36)
  {
    __break(1u);
  }

  else
  {
    sub_100004428(v32 + 40 * v31, v45);
    sub_100168088(&qword_1005748E0, &qword_100401D88);
    type metadata accessor for ShowHeader();
    result = swift_dynamicCast();
    if (result)
    {
      v24 = v46;
      if (v46)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_100207818(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  HIDWORD(v48) = a4;
  v49 = a3;
  v53 = a1;
  v52 = type metadata accessor for ModernShelf();
  v6 = __chkstk_darwin();
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v50 = *(v11 + 56);
    v51 = v12;
    v14 = (v11 - 8);
    do
    {
      v15 = v52;
      v16 = v11;
      v51(v8, v13, v52, v6);
      v17 = ModernShelf.items.getter();
      (*v14)(v8, v15);
      v18 = *(v17 + 16);
      v19 = v10[2];
      v20 = v19 + v18;
      if (__OFADD__(v19, v18))
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v20 <= v10[3] >> 1)
      {
        if (*(v17 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v19 <= v20)
        {
          v22 = v19 + v18;
        }

        else
        {
          v22 = v19;
        }

        v10 = sub_100243520(isUniquelyReferenced_nonNull_native, v22, 1, v10);
        if (*(v17 + 16))
        {
LABEL_14:
          if ((v10[3] >> 1) - v10[2] < v18)
          {
            goto LABEL_45;
          }

          sub_100168088(&qword_1005748E0, &qword_100401D88);
          swift_arrayInitWithCopy();

          if (v18)
          {
            v23 = v10[2];
            v24 = __OFADD__(v23, v18);
            v25 = v23 + v18;
            if (v24)
            {
              goto LABEL_46;
            }

            v10[2] = v25;
          }

          goto LABEL_4;
        }
      }

      if (v18)
      {
        goto LABEL_43;
      }

LABEL_4:
      v13 += v50;
      --v9;
      v11 = v16;
    }

    while (v9);
  }

  v57 = _swiftEmptyArrayStorage;
  v26 = v10[2];
  if (v26)
  {
    v27 = (v10 + 4);
    v16 = _swiftEmptyArrayStorage;
    LOBYTE(v18) = BYTE4(v48);
    do
    {
      sub_100004428(v27, v56);
      sub_1000109E4(v56, v54);
      sub_100168088(&qword_1005748E0, &qword_100401D88);
      type metadata accessor for LegacyEpisodeLockup();
      if ((swift_dynamicCast() & 1) != 0 && v55)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v57;
      }

      v27 += 40;
      --v26;
    }

    while (v26);
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
    LOBYTE(v18) = BYTE4(v48);
  }

  *&v56[0] = _swiftEmptyArrayStorage;
  if (v16 >> 62)
  {
    goto LABEL_47;
  }

  v28 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v28)
  {
LABEL_30:
    v29 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v29 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          v28 = _CocoaArrayWrapper.endIndex.getter();
          if (!v28)
          {
            break;
          }

          goto LABEL_30;
        }
      }

      v31 = LegacyLockup.adamId.getter();
      if ((v18 & 1) != 0 || v31 != v49)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v29;
    }

    while (v30 != v28);
  }

  v32 = *&v56[0];
  *&v56[0] = _swiftEmptyArrayStorage;
  if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
  {
LABEL_69:
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *(v32 + 16);
  }

  v34 = 0;
  v52 = _swiftEmptyArrayStorage;
  while (v33 != v34)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v34 >= *(v32 + 16))
      {
        goto LABEL_68;
      }

      v35 = *(v32 + 8 * v34 + 32);

      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }
    }

    sub_100009F1C(0, &qword_100577460, CPListItem_ptr);
    v37 = sub_100355C6C(v53, v35, 0, 10);

    ++v34;
    if (v37)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v52 = *&v56[0];
      v34 = v36;
    }
  }

  v38 = v52;
  if (v52 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {

      sub_100168088(&unk_100574A00, &unk_100401EC0);
      v39 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_66;
    }

LABEL_72:

    return 0;
  }

  if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_72;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v39 = v38;
LABEL_66:

  v40 = [objc_opt_self() mainBundle];
  v58._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0x5345444F53495045;
  v41._object = 0xE800000000000000;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v58);

  v43 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v39);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v45 = String._bridgeToObjectiveC()();

  v46 = [v43 initWithItems:isa header:v45 sectionIndexTitle:0];

  return v46;
}

void *sub_100207EF8(unint64_t a1, uint64_t a2)
{
  v51 = a1;
  v50 = type metadata accessor for EpisodeOffer();
  v49 = *(v50 - 8);
  __chkstk_darwin();
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for ModernShelf.ItemPresentation();
  v5 = *(v63 - 8);
  __chkstk_darwin();
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ModernShelf();
  v8 = *(v56 - 8);
  __chkstk_darwin();
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v47 - v10;
  v12 = *(a2 + *(type metadata accessor for ModernPage() + 24));
  v14 = _swiftEmptyArrayStorage;
  v61 = *(v12 + 16);
  if (v61)
  {
    v15 = 0;
    v60 = v8 + 16;
    v57 = (v8 + 8);
    v16 = (v5 + 8);
    v52 = (v8 + 32);
    v17 = v56;
    v54 = v8;
    v59 = v12;
    while (v15 < *(v12 + 16))
    {
      v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v62 = *(v8 + 72);
      (*(v8 + 16))(v11, v12 + v18 + v62 * v15, v17);
      if (ModernShelf.hideFromCarPlay.getter())
      {
        (*v57)(v11, v17);
      }

      else
      {
        v55 = v18;
        v58 = v14;
        if (qword_100572778 != -1)
        {
          swift_once();
        }

        v19 = off_1005772F0;
        v20 = ModernShelf.id.getter();
        v22 = v21;
        if (v19[2] && (v23 = v20, Hasher.init(_seed:)(), String.hash(into:)(), v24 = Hasher._finalize()(), v25 = -1 << *(v19 + 32), v2 = v24 & ~v25, ((*(v19 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) != 0))
        {
          v26 = ~v25;
          while (1)
          {
            v27 = (v19[6] + 16 * v2);
            v28 = *v27 == v23 && v27[1] == v22;
            if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v2 = (v2 + 1) & v26;
            if (((*(v19 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:

          if (qword_100572780 != -1)
          {
            swift_once();
          }

          v17 = off_1005772F8;
          v29 = (off_1005772F8 + 32);
          v8 = -*(off_1005772F8 + 2);
          v30 = -1;
          while (v8 + v30 != -1)
          {
            if (++v30 >= v17[2])
            {
              __break(1u);
              goto LABEL_50;
            }

            v31 = v29 + 2;
            v2 = *v29;
            ModernShelf.itemPresentation.getter();
            ModernShelf.ItemPresentation.itemKind.getter();
            (*v16)(v7, v63);
            v32 = ModernShelf.ItemKind.modelType.getter();
            v29 = v31;
            if (v2 == v32)
            {
              v33 = *v52;
              (*v52)(v53, v11, v56);
              v14 = v58;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v65 = v14;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1001A7758(0, v14[2] + 1, 1);
                v14 = v65;
              }

              v36 = v14[2];
              v35 = v14[3];
              if (v36 >= v35 >> 1)
              {
                sub_1001A7758((v35 > 1), v36 + 1, 1);
                v14 = v65;
              }

              v14[2] = (v36 + 1);
              v17 = v56;
              v33(v14 + v55 + v36 * v62, v53, v56);
              goto LABEL_31;
            }
          }
        }

        v17 = v56;
        (*v57)(v11, v56);
        v14 = v58;
LABEL_31:
        v8 = v54;
      }

      ++v15;
      v12 = v59;
      if (v15 == v61)
      {
        goto LABEL_32;
      }
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_32:
  v37 = sub_100207400(v14, v13);
  if (!v37)
  {

    return _swiftEmptyArrayStorage;
  }

  v38 = v37;
  v64 = _swiftEmptyArrayStorage;
  if (ShowHeader.primaryButtonAction.getter())
  {
    type metadata accessor for PlayAction();
    v39 = swift_dynamicCastClass();
    v2 = v51;
    if (v39)
    {

      v40 = v48;
      PlayAction.episodeOffer.getter();

      v7 = EpisodeOffer.contentId.getter();
      (*(v49 + 8))(v40, v50);
      LODWORD(v8) = 0;
    }

    else
    {

      v7 = 0;
      LODWORD(v8) = 1;
    }
  }

  else
  {
    v7 = 0;
    LODWORD(v8) = 1;
    v2 = v51;
  }

  sub_100009F1C(0, &unk_100575B00, CPListSection_ptr);
  v42 = sub_1002CA624(v2, v38, 10);
  v17 = v42;
  if (v42)
  {
    v16 = v14;
    v43 = v42;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_41:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v41 = v64;
      v14 = v16;
      goto LABEL_43;
    }

LABEL_51:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_41;
  }

  v41 = _swiftEmptyArrayStorage;
LABEL_43:
  v44 = sub_100207818(v2, v14, v7, v8);

  if (v44)
  {
    v45 = v44;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v64;
  }

  else
  {
  }

  return v41;
}