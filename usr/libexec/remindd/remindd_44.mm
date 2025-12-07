uint64_t sub_10041D2A8(uint64_t a1)
{
  result = sub_10042252C(&qword_100946718, &type metadata accessor for REMSuggestedAttributesHarvester.Invocation, &protocol conformance descriptor for REMSuggestedAttributesHarvester.Invocation);
  *(a1 + 8) = result;
  return result;
}

void sub_10041D300(id *a1@<X0>, uint64_t a2@<X1>, _TtC7remindd19RDXPCStorePerformer **a3@<X8>)
{
  v6 = *a1;
  v7 = [*a1 objectID];
  v8 = sub_10035386C(v7, a2);

  if (v8)
  {
    v9 = [v8 givenName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v20 = (v12 >> 56) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v20 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      sub_1000F5104(&unk_100936FD0, &unk_100795D40);
      v21 = swift_allocObject();
      *v21->clientIdentity = xmmword_100791300;
      *&v21->clientIdentity[16] = v10;
      *&v21->clientIdentity[24] = v12;
      goto LABEL_18;
    }

    v12, v13, v14, v15, v16, v17, v18, v19;
  }

  v22 = [(RDXPCStorePerformer *)v6 firstName];
  if (v22 || (v22 = [(RDXPCStorePerformer *)v6 displayName]) != 0)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v42 = v24;
    v43 = v26;
    if (v26)
    {
      v44 = v3;

      v21 = &_swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100365788(0, *_swiftEmptyArrayStorage.clientIdentity + 1, 1, &_swiftEmptyArrayStorage, v27, v28, v29, v30);
      }

      v32 = *v21->clientIdentity;
      v31 = *&v21->clientIdentity[8];
      if (v32 >= v31 >> 1)
      {
        v21 = sub_100365788((v31 > 1), v32 + 1, 1, v21, v27, v28, v29, v30);
      }

      *v21->clientIdentity = v32 + 1;
      v33 = v21 + 16 * v32;
      *(v33 + 4) = v24;
      *(v33 + 5) = v26;
      goto LABEL_17;
    }
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v21 = &_swiftEmptyArrayStorage;
LABEL_17:
  sub_1000050A4(&v42, &unk_100939E40, &qword_100791BD0);
LABEL_18:

  if (*v21->clientIdentity)
  {
    *a3 = v21;
    a3[1] = v6;
    v41 = v6;
  }

  else
  {
    v21, v34, v35, v36, v37, v38, v39, v40;
    *a3 = 0;
    a3[1] = 0;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10041D538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = sub_10041EE28(a2, a3);
    v7 = v6;
    v9 = v8;
    v10 = objc_allocWithZone(NSRegularExpression);
    v11 = sub_10031B768(0x4029775C213C3F28, 0xED00002A5D405E5BLL, 0);
    if (v11)
    {
      v66 = v9;
      v34 = v11;
      v35 = String._bridgeToObjectiveC()();
      v67 = v5;
      v65 = v7;

      sub_1000F5104(&qword_100946808, &qword_1007A8AB0);
      sub_10000CB48(&qword_100946810, &qword_100946808, &qword_1007A8AB0, &protocol conformance descriptor for PartialRangeFrom<A>);
      sub_10013BCF4();
      v36 = _NSRange.init<A, B>(_:in:)();
      v64 = v34;
      v38 = [v34 matchesInString:v35 options:0 range:{v36, v37}];

      sub_1000060C8(0, &qword_100946818, NSTextCheckingResult_ptr);
      v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v39 >> 62)
      {
        v40 = _CocoaArrayWrapper.endIndex.getter();
        if (v40)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v40)
        {
LABEL_9:
          result = sub_100253B94(0, v40 & ~(v40 >> 63), 0);
          if (v40 < 0)
          {
            __break(1u);
            return result;
          }

          v41 = 0;
          do
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v42 = *(v39 + 8 * v41 + 32);
            }

            v43 = v42;
            v44 = [v42 range];
            v46 = v45;

            v67 = &_swiftEmptyArrayStorage;
            v55 = *_swiftEmptyArrayStorage.clientIdentity;
            v54 = *&_swiftEmptyArrayStorage.clientIdentity[8];
            if (v55 >= v54 >> 1)
            {
              sub_100253B94((v54 > 1), v55 + 1, 1);
            }

            ++v41;
            *_swiftEmptyArrayStorage.clientIdentity = v55 + 1;
            v56 = &_swiftEmptyArrayStorage + 16 * v55;
            *(v56 + 4) = v44;
            *(v56 + 5) = v46;
          }

          while (v40 != v41);
          v39, v47, v48, v49, v50, v51, v52, v53;

          v7 = v65;
          v9 = v66;
          goto LABEL_3;
        }
      }

      v39, v57, v58, v59, v60, v61, v62, v63;
      v7 = v65;
      v9 = v66;
    }

LABEL_3:
    __chkstk_darwin(v11, v12);
    sub_1000F5104(&qword_1009467F0, &qword_1007A8AA0);
    sub_1000F5104(&qword_1009467F8, &qword_1007A8AA8);
    sub_10000CB48(&qword_100946800, &qword_1009467F0, &qword_1007A8AA0, &protocol conformance descriptor for [A]);
    Sequence.firstMap<A>(_:)();
    v7, v13, v14, v15, v16, v17, v18, v19;
    &_swiftEmptyArrayStorage, v20, v21, v22, v23, v24, v25, v26;
    v9, v27, v28, v29, v30, v31, v32, v33;
    result = &_swiftEmptyArrayStorage;
    if (v67)
    {
      return v67;
    }
  }

  return result;
}

uint64_t sub_10041D94C(char **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_1000F5104(&qword_1009467D8, &qword_1007A8A78);
  __chkstk_darwin(v9 - 8, v10);
  v11 = sub_100420E70(*a1, a4, a5);
  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = v11;
  }

  sub_1000F5104(&qword_1009467E0, &qword_1007A8A80);
  Result.eraseToCodableError()();
  REMSuggestedAttributesHarvester.MentionsExtractionResponse.init(result:)();
  return sub_10042251C(v12, v5 != 0, &_swift_bridgeObjectRelease);
}

uint64_t sub_10041DA60(uint64_t a1)
{
  result = sub_10042252C(&qword_100946740, &type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionInvocation, &protocol conformance descriptor for REMSuggestedAttributesHarvester.MentionsExtractionInvocation);
  *(a1 + 8) = result;
  return result;
}

void *sub_10041DAB8@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v65 = a2;
  v83 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v3 = *(v83 - 8);
  __chkstk_darwin(v83, v4);
  v80 = &v63[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6, v7);
  v76 = &v63[-v8];
  v9 = sub_1000F5104(&qword_1009467C8, &qword_1007A8A58);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13, v14);
  v16 = &v63[-v15];
  v17 = type metadata accessor for REMSuggestedAttributeOutput.Source();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v21 = &v63[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100247474(v88);
  v92 = 0;
  v68 = a1;
  REMSuggestedAttributesHarvester.FeedbackRequest.source.getter();
  v22 = REMSuggestedAttributeOutput.Source.predictors.getter();
  (*(v18 + 8))(v21, v17);
  v23 = 0;
  v24 = *(v22 + 64);
  v71 = v22 + 64;
  v78 = v22;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v73 = v3 + 16;
  v82 = (v3 + 32);
  v77 = v3;
  v79 = (v3 + 88);
  v91 = enum case for REMSuggestedAttributeOutput.Pipeline.nlQueryParser(_:);
  v72 = enum case for REMSuggestedAttributeOutput.Pipeline.kNN(_:);
  v70 = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
  v67 = enum case for REMSuggestedAttributeOutput.Pipeline.heuristic(_:);
  v66 = enum case for REMSuggestedAttributeOutput.Pipeline.anchoredBubble(_:);
  v64 = enum case for REMSuggestedAttributeOutput.Pipeline.spotlight(_:);
  v75 = v12;
  v74 = v16;
  for (i = v28; ; v28 = i)
  {
    if (!v27)
    {
      if (v28 <= v23 + 1)
      {
        v30 = v23 + 1;
      }

      else
      {
        v30 = v28;
      }

      v31 = v30 - 1;
      while (1)
      {
        v29 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v29 >= v28)
        {
          v61 = sub_1000F5104(&qword_1009467D0, &unk_1007A8A60);
          (*(*(v61 - 8) + 56))(v12, 1, 1, v61);
          v27 = 0;
          goto LABEL_16;
        }

        v27 = *(v71 + 8 * v29);
        ++v23;
        if (v27)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v29 = v23;
LABEL_15:
    v32 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v78;
    v35 = v77;
    (*(v77 + 16))(v76, *(v78 + 48) + *(v77 + 72) * v33, v83);
    v36 = *(*(v34 + 56) + 8 * v33);
    v37 = sub_1000F5104(&qword_1009467D0, &unk_1007A8A60);
    v38 = *(v37 + 48);
    v12 = v75;
    (*(v35 + 32))();
    *&v12[v38] = v36;
    (*(*(v37 - 8) + 56))(v12, 0, 1, v37);

    v31 = v29;
    v16 = v74;
LABEL_16:
    sub_10041FA34(v12, v16);
    v39 = sub_1000F5104(&qword_1009467D0, &unk_1007A8A60);
    if ((*(*(v39 - 8) + 48))(v16, 1, v39) == 1)
    {
      goto LABEL_26;
    }

    v40 = *&v16[*(v39 + 48)];
    v41 = v83;
    v42 = v80;
    (*v82)(v80, v16, v83);
    v43 = (*v79)(v42, v41);
    if (v43 == v91 || v43 == v72)
    {
      goto LABEL_4;
    }

    if (v43 != v70)
    {
      break;
    }

    v69 = v63;
    v51 = v89;
    v52 = v90;
    v84 = v89;
    v85 = v90;
    __chkstk_darwin(v43, v44);
    v53 = v68;
    *&v63[-32] = v40;
    *&v63[-24] = v53;
    *&v63[-16] = &v92;
    sub_1002490E8(v51, v52);
    sub_1000F5104(&qword_10093E9A8, &qword_1007A8A70);
    Result<>.tryMap<A>(transform:)();
    v40, v54, v55, v56, v57, v58, v59, v60;
    sub_10042251C(v51, v52, &_swift_release);
    sub_100138D4C(v86, v87);
LABEL_5:
    v23 = v31;
  }

  if (v43 == v67 || v43 == v66 || v43 == v64)
  {
LABEL_4:
    v40, v44, v45, v46, v47, v48, v49, v50;
    goto LABEL_5;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_26:

  if (v92 != 1)
  {
    goto LABEL_29;
  }

  if (qword_100935D08 != -1)
  {
LABEL_31:
    swift_once();
  }

  sub_1000F5104(&unk_10093E978, &qword_1007A1070);
  sub_10000CB48(&qword_100941350, &unk_10093E978, &qword_1007A1070, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Subject<>.send()();
LABEL_29:
  REMSuggestedAttributesHarvester.BooleanResponse.init(result:)();
  return sub_1002497E0(v88);
}

void sub_10041E248(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; *a4 = 1)
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (*(a2 + 48) + ((v11 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];

    REMSuggestedAttributesHarvester.FeedbackRequest.feedbackFactor.getter();
    sub_1004C7804(v14, v15, v16);
    v15, v17, v18, v19, v20, v21, v22, v23;
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++i;
    if (v8)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10041E38C(uint64_t a1)
{
  result = sub_10042252C(&qword_100946768, &type metadata accessor for REMSuggestedAttributesHarvester.FeedbackInvocation, &protocol conformance descriptor for REMSuggestedAttributesHarvester.FeedbackInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10041E3E4()
{
  v0 = sub_1000F5104(&qword_1009467C0, &qword_1007A8A50);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v9 - v3;
  if (qword_1009360C8 != -1)
  {
    swift_once();
  }

  v5 = qword_100974E40;
  v6 = REMSuggestedAttributesHarvester.PostSuggestionAnalyticsRequest.reminder.getter();
  (*(v1 + 104))(v4, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v0);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  dispatch thunk of REMCache.performReadOnly(_:operations:)();

  (*(v1 + 8))(v4, v0);
  return REMSuggestedAttributesHarvester.BooleanResponse.init(result:)();
}

uint64_t sub_10041E5A0(uint64_t a1)
{
  result = sub_10042252C(&qword_100946790, &type metadata accessor for REMSuggestedAttributesHarvester.PostSuggestionAnalyticsInvocation, &protocol conformance descriptor for REMSuggestedAttributesHarvester.PostSuggestionAnalyticsInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10041E5F8@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v1 = sub_1000F5104(&qword_1009467C0, &qword_1007A8A50);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v94[-v4];
  v97 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v117 = *(v97 - 8);
  __chkstk_darwin(v97, v6);
  v116 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8, v9);
  v103 = &v94[-v10];
  v107 = v11;
  __chkstk_darwin(v12, v13);
  v15 = &v94[-v14];
  v16 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v119 = *(v16 - 8);
  __chkstk_darwin(v16, v17);
  v114 = &v94[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19, v20);
  v22 = &v94[-v21];
  v105 = v23;
  __chkstk_darwin(v24, v25);
  v27 = &v94[-v26];
  if (qword_1009360C8 != -1)
  {
    swift_once();
  }

  v106 = qword_100974E40;
  v113 = REMSuggestedAttributesHarvester.RecordSuggestionRequest.suggestionValue.getter();
  v29 = v28;
  REMSuggestedAttributesHarvester.RecordSuggestionRequest.suggestionType.getter();
  REMSuggestedAttributesHarvester.RecordSuggestionRequest.pipeline.getter();
  v104 = REMSuggestedAttributesHarvester.RecordSuggestionRequest.reminderID.getter();
  v108 = v5;
  v109 = v2;
  (*(v2 + 104))(v5, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v1);
  if (qword_1009360C0 != -1)
  {
    swift_once();
  }

  v110 = v1;
  v30 = type metadata accessor for Logger();
  sub_100006654(v30, qword_100946628);
  v31 = *(v119 + 16);
  v115 = v27;
  v100 = v31;
  v31(v22, v27, v16);
  v120 = v16;
  v32 = v117;
  v33 = *(v117 + 16);
  v34 = v103;
  v118 = v15;
  v35 = v15;
  v36 = v97;
  v99 = v33;
  v33(v103, v35, v97);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v29, v39, v40, v41, v42, v43, v44, v45;
  v46 = os_log_type_enabled(v37, v38);
  v112 = v29;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v121 = v96;
    *v47 = 136446722;
    v95 = v38;
    v48 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
    v49 = v36;
    v51 = v50;
    v52 = *(v119 + 8);
    v101 = (v119 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v102 = v52;
    v52(v22, v120);
    v53 = sub_10000668C(v48, v51, &v121);
    v51, v54, v55, v56, v57, v58, v59, v60;
    *(v47 + 4) = v53;
    *(v47 + 12) = 2082;
    v61 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
    v63 = v62;
    v64 = *(v117 + 8);
    v98 = (v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v103 = v64;
    (v64)(v34, v49);
    v65 = sub_10000668C(v61, v63, &v121);
    v63, v66, v67, v68, v69, v70, v71, v72;
    *(v47 + 14) = v65;
    *(v47 + 22) = 2080;
    *(v47 + 24) = sub_10000668C(v113, v112, &v121);
    _os_log_impl(&_mh_execute_header, v37, v95, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v47, 0x20u);
    swift_arrayDestroy();

    v32 = v117;

    v73 = v49;
    v74 = v119;
  }

  else
  {

    v75 = *(v32 + 8);
    v98 = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v103 = v75;
    (v75)(v34, v36);
    v74 = v119;
    v76 = *(v119 + 8);
    v101 = (v119 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v102 = v76;
    v76(v22, v120);
    v73 = v36;
  }

  v100(v114, v115, v120);
  v99(v116, v118, v73);
  v77 = (*(v74 + 80) + 24) & ~*(v74 + 80);
  v78 = (v105 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = (*(v32 + 80) + v78 + 16) & ~*(v32 + 80);
  v80 = (v107 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = v32;
  v82 = swift_allocObject();
  v83 = v104;
  *(v82 + 16) = v104;
  v84 = v82 + v77;
  v85 = v120;
  (*(v74 + 32))(v84, v114, v120);
  v86 = (v82 + v78);
  v87 = v112;
  *v86 = v113;
  v86[1] = v87;
  v88 = v82 + v79;
  v89 = v73;
  (*(v81 + 32))(v88, v116, v73);
  v90 = (v82 + v80);
  *v90 = REMCDList.cleanUpAfterLocalObjectMerge();
  v90[1] = 0;
  v91 = v83;
  v92 = v108;
  dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

  (*(v109 + 8))(v92, v110);
  (v103)(v118, v89);
  v102(v115, v85);
  return REMSuggestedAttributesHarvester.BooleanResponse.init(result:)();
}

uint64_t sub_10041ED60(uint64_t a1)
{
  result = sub_10042252C(&qword_1009467B8, &type metadata accessor for REMSuggestedAttributesHarvester.RecordSuggestionInvocation, &protocol conformance descriptor for REMSuggestedAttributesHarvester.RecordSuggestionInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_10041EDBC(_TtC7remindd19RDXPCStorePerformer **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1004364DC(v2);
  }

  v3 = *v2->clientIdentity;
  v4[0] = &v2->clientIdentity[16];
  v4[1] = v3;
  sub_10041FAC4(v4);
  *a1 = v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_10041EE28(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(NSRegularExpression);
  v4 = sub_10031B768(2847580, 0xE300000000000000, 0);
  v12 = v4;
  if (!v4)
  {

    sub_10041F8B8(&_swiftEmptyArrayStorage, v5, v6, v7, v8, v9, v10, v11);
    return a1;
  }

  sub_1000F5104(&qword_100946808, &qword_1007A8AB0);
  sub_10000CB48(&qword_100946810, &qword_100946808, &qword_1007A8AB0, &protocol conformance descriptor for PartialRangeFrom<A>);
  sub_10013BCF4();
  v13 = _NSRange.init<A, B>(_:in:)();
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  v17 = [v12 matchesInString:v16 options:0 range:{v13, v15}];

  sub_1000060C8(0, &qword_100946818, NSTextCheckingResult_ptr);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v18 >> 62))
  {
    v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_6;
    }

LABEL_16:
    v18, v19, v20, v21, v22, v23, v24, v25;
LABEL_17:
    v44 = String._bridgeToObjectiveC()();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v12 stringByReplacingMatchesInString:v44 options:0 range:v13 withTemplate:{v15, v45}];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10041F8B8(&_swiftEmptyArrayStorage, v47, v48, v49, v50, v51, v52, v53);

    return a1;
  }

  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (!v26)
  {
    goto LABEL_16;
  }

LABEL_6:
  v54 = v15;
  v55 = v13;
  result = sub_100253B94(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v18 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = [v29 range];
      v33 = v32;

      v42 = *_swiftEmptyArrayStorage.clientIdentity;
      v41 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      if (v42 >= v41 >> 1)
      {
        sub_100253B94((v41 > 1), v42 + 1, 1);
      }

      ++v28;
      *_swiftEmptyArrayStorage.clientIdentity = v42 + 1;
      v43 = &_swiftEmptyArrayStorage + 16 * v42;
      *(v43 + 4) = v31;
      *(v43 + 5) = v33;
    }

    while (v26 != v28);
    v18, v34, v35, v36, v37, v38, v39, v40;
    v13 = v55;
    v15 = v54;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10041F16C(_TtC7remindd19RDXPCStorePerformer *result, uint64_t a2, void *a3, void *a4, void *a5, void **a6, void *a7, void *a8)
{
  v9 = v8;
  if (a2 != 1)
  {
    v45 = result;
    if (a2 > 1)
    {
      v23 = a6[2];
      if (v23)
      {
        v24 = a6 + 5;
        v14 = &_swiftEmptyArrayStorage;
        do
        {
          v26 = *(v24 - 1);
          v25 = *v24;

          v27 = v25;
          v28 = v9;
          v29 = sub_10041F4D0(v26, v27, a3, a4, a5, v45, a2, a7);
          v31 = v30;
          v33 = v32;

          v26, v34, v35, v36, v37, v38, v39, v40;
          if (v28)
          {
            v33 = v51;
            v31 = v52;
          }

          v41 = v53;
          if (!v28)
          {
            v41 = v29;
          }

          v52 = v31;
          v53 = v41;
          v51 = v33;
          if (v41)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_100368190(0, (*v14->clientIdentity + 1), 1, v14);
            }

            v9 = v28;
            v43 = *v14->clientIdentity;
            v42 = *&v14->clientIdentity[8];
            if (v43 >= v42 >> 1)
            {
              v14 = sub_100368190((v42 > 1), (v43 + 1), 1, v14);
            }

            *v14->clientIdentity = v43 + 1;
            v44 = &v14->super.isa + 3 * v43;
            v44[4] = v41;
            v44[5] = v31;
            v44[6] = v33;
          }

          else
          {
            v9 = v28;
          }

          v24 += 2;
          --v23;
        }

        while (v23);
      }

      else
      {
        v14 = &_swiftEmptyArrayStorage;
      }

      if (*v14->clientIdentity)
      {
        return v14;
      }

      v14, a2, a3, a4, a5, a6, a7, a8;
    }

    return 0;
  }

  v11 = &result->super.isa + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v11 < result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = result;
  if (v11 == result)
  {
LABEL_8:
    v13 = a6[2];
    v14 = &_swiftEmptyArrayStorage;
    if (v13)
    {
      sub_100253C08(0, v13, 0);
      v14 = &_swiftEmptyArrayStorage;
      v15 = a6 + 5;
      v16 = v12;
      do
      {
        v17 = *_swiftEmptyArrayStorage.clientIdentity;
        v18 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        v19 = *v15;
        if (v17 >= v18 >> 1)
        {
          v21 = v18 > 1;
          v22 = v19;
          sub_100253C08(v21, v17 + 1, 1);
          v19 = v22;
        }

        *_swiftEmptyArrayStorage.clientIdentity = v17 + 1;
        v20 = &_swiftEmptyArrayStorage.super.isa + 3 * v17;
        v20[4] = v19;
        v20[5] = v16;
        v20[6] = 1;
        v15 += 2;
        --v13;
      }

      while (v13);
    }

    return v14;
  }

  if (v11 > result)
  {
    if (a5[2])
    {
      sub_100364364(result);
    }

    goto LABEL_8;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10041F400(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result + a2;
  if (__OFADD__(result, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = result;
  if (v3 < result)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v3 == result)
  {
    return v4;
  }

  if (v3 <= result)
  {
    goto LABEL_19;
  }

  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a2 - 1;
  v9 = result + 1;
  v10 = result;
  while (1)
  {
    if (v7)
    {
      result = sub_100364364(v10);
      if (v11)
      {
        v12 = *(*(a3 + 56) + 8 * result);
        v13 = __OFADD__(v6, v12);
        v6 += v12;
        if (v13)
        {
          __break(1u);
          goto LABEL_17;
        }
      }
    }

    if (!v8)
    {
      break;
    }

    --v8;
    v13 = __OFADD__(v9, v6);
    v10 = v9 + v6;
    ++v9;
    if (v13)
    {
      __break(1u);
      break;
    }
  }

  if (__OFSUB__(v10, v4))
  {
    goto LABEL_20;
  }

  if (!__OFADD__(v10 - v4, 1))
  {
    return v4;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *sub_10041F4D0(_TtC7remindd19RDXPCStorePerformer *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  type metadata accessor for _NSRange(0);
  sub_10000CB48(&unk_100945250, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
  Sequence.firstMap<A>(_:)();
  a1, v11, v12, v13, v14, v15, v16, v17;
  result = 0;
  if ((v22 & 1) == 0)
  {
    sub_10041F400(v20, v21, a5);
    v19 = a2;
    return a2;
  }

  return result;
}

unint64_t sub_10041F600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Range<>.init(_:in:)();
  if ((v8 & 1) == 0)
  {
    String.subscript.getter();
    v10 = v9;
    v12 = v11;
    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v14)
    {
      result = v10;
    }

    if (v10 >> 14 < result >> 14)
    {
      __break(1u);
      return result;
    }

    v68 = a6;
    Substring.subscript.getter();
    v16 = v15;
    v12, v17, v18, v15, v19, v20, v21, v22;
    sub_1001BBAF8();
    sub_10013BCF4();
    v23 = StringProtocol.commonPrefix<A>(with:options:)();
    v25 = v24;
    v16, v24, v26, v27, v28, v29, v30, v31;
    v39 = (v25 >> 56) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v39 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v40 = objc_opt_self();
      v41 = String._bridgeToObjectiveC()();
      v25, v42, v43, v44, v45, v46, v47, v48;
      v49 = [v40 escapedPatternForString:v41];

      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53._countAndFlagsBits = v50;
      v53._object = v52;
      String.append(_:)(v53);
      v52, v54, v55, v56, v57, v58, v59, v60;
      v61._countAndFlagsBits = 25180;
      v61._object = 0xE200000000000000;
      String.append(_:)(v61);
      v62 = objc_allocWithZone(NSRegularExpression);
      v63 = sub_10031B768(16478, 0xE200000000000000, 0);
      v64 = v63;
      if (v63)
      {
        v65 = String._bridgeToObjectiveC()();
        v66 = [v64 firstMatchInString:v65 options:0 range:{a5, v68}];

        if (v66)
        {
          v67 = [v66 range];

          return v67;
        }
      }
    }

    else
    {
      v25, v32, v33, v34, v35, v36, v37, v38;
    }
  }

  return 0;
}

void *sub_10041F8B8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 40);
    v11 = &_swiftEmptyArrayStorage;
    do
    {
      v13 = *v10;
      if (*v10 >= 2)
      {
        v14 = *(v10 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100368080(0, *v11->clientIdentity + 1, 1, v11, a5, a6, a7, a8);
        }

        v16 = *v11->clientIdentity;
        v15 = *&v11->clientIdentity[8];
        if (v16 >= v15 >> 1)
        {
          v11 = sub_100368080((v15 > 1), v16 + 1, 1, v11, a5, a6, a7, a8);
        }

        *v11->clientIdentity = v16 + 1;
        v12 = v11 + 16 * v16;
        *(v12 + 4) = v14;
        *(v12 + 5) = v13 - 1;
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  a1, a2, a3, a4, a5, a6, a7, a8;
  if (*v11->clientIdentity)
  {
    sub_1000F5104(&unk_100943F40, &qword_1007A46A0);
    v17 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v17 = _swiftEmptyDictionarySingleton;
  }

  v32 = v17;

  sub_1004206DC(v18, 1, &v32, v19, v20, v21, v22, v23);
  v11, v24, v25, v26, v27, v28, v29, v30;
  return v32;
}

uint64_t sub_10041FA34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_1009467C8, &qword_1007A8A58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10041FAC4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      if (v2 <= 1)
      {
        v9 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F5104(&unk_100943F50, &unk_10079D570);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *v9->clientIdentity = v2 / 2;
      }

      v18[0] = &v9->clientIdentity[16];
      v18[1] = (v2 / 2);
      v10 = v9;
      sub_10041FCE8(v18, v19, a1, v8, v4, v5, v6, v7);
      *v10->clientIdentity = 0;
      v10, v11, v12, v13, v14, v15, v16, v17;
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
    sub_10041FBCC(0, v2, 1, a1);
  }
}

void sub_10041FBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = a1 - a3;
LABEL_5:
    v35 = a3;
    v7 = *(v4 + 16 * a3);
    v32 = v6;
    v33 = v5;
    while (1)
    {
      v34 = *(&v7 + 1);
      v9 = *v5;
      v8 = *(v5 + 8);
      v10 = v7;

      v11 = v34;

      v12 = v8;
      v13 = NSObject.hashValue.getter();
      v14 = NSObject.hashValue.getter();

      v10, v15, v16, v17, v18, v19, v20, v21;
      v9, v22, v23, v24, v25, v26, v27, v28;
      if (v13 >= v14)
      {
LABEL_4:
        a3 = v35 + 1;
        v5 = v33 + 16;
        v6 = v32 - 1;
        if (v35 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v29 = *v5;
      v7 = *(v5 + 16);
      *v5 = v7;
      *(v5 + 16) = v29;
      v5 -= 16;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10041FCE8(id *a1, const char *a2, uint64_t *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v10 = a3;
  v11 = a1;
  v12 = a3[1];
  if (v12 < 1)
  {
    v14 = &_swiftEmptyArrayStorage;
LABEL_89:
    v13 = *v11;
    if (!*v11)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_123:
      v14 = sub_1004361F4(v14, a2, a3, a4, a5, a6, a7, a8);
    }

    v144 = *v14->clientIdentity;
    if (v144 >= 2)
    {
      while (*v10)
      {
        v145 = v14;
        v14 = (v144 - 1);
        v146 = *(&v145->super.isa + 2 * v144);
        v147 = *&v145->clientIdentity[16 * v144 + 8];
        sub_1004203BC((*v10 + 16 * v146), (*v10 + 16 * *&v145->clientIdentity[16 * v144]), (*v10 + 16 * v147), v13);
        if (v9)
        {
          v14 = v145;
          goto LABEL_101;
        }

        if (v147 < v146)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_1004361F4(v145, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v144 - 2 >= *v145->clientIdentity)
        {
          goto LABEL_117;
        }

        v148 = &v145->super.isa + 2 * v144;
        *v148 = v146;
        v148[1] = v147;
        sub_100436168(v144 - 1);
        v14 = v145;
        v144 = *v145->clientIdentity;
        if (v144 <= 1)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_127;
    }

LABEL_101:
    v14, a2, a3, a4, a5, a6, a7, a8;
    return;
  }

  v13 = 0;
  v14 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v15 = v13;
    v156 = v13;
    if (v13 + 1 >= v12)
    {
      v12 = v13 + 1;
    }

    else
    {
      v151 = v14;
      v153 = v9;
      v16 = *v10;
      v17 = *v10 + 16 * (v13 + 1);
      v19 = *v17;
      v18 = *(v17 + 8);
      v20 = v13;
      v158 = 16 * v13;
      v21 = v16 + 16 * v13;
      v23 = *v21;
      v22 = *(v21 + 8);

      v13 = v18;

      v24 = v22;
      v164 = NSObject.hashValue.getter();
      v160 = NSObject.hashValue.getter();

      v19, v25, v26, v27, v28, v29, v30, v31;
      v23, v32, v33, v34, v35, v36, v37, v38;
      v39 = v20 + 2;
      v40 = v21 + 24;
      v162 = v12;
      while (v12 != v39)
      {
        v41 = *v40;
        v42 = *(v40 + 8);
        v44 = v40 + 16;
        v43 = *(v40 + 16);
        v13 = *(v40 - 8);

        v45 = v43;

        v46 = v41;
        v47 = NSObject.hashValue.getter();
        v48 = NSObject.hashValue.getter();

        v42, v49, v50, v51, v52, v53, v54, v55;
        v13, v56, v57, v58, v59, v60, v61, v62;
        ++v39;
        v40 = v44;
        v12 = v162;
        if (v164 < v160 == v47 >= v48)
        {
          v12 = v39 - 1;
          break;
        }
      }

      v63 = v158;
      v14 = v151;
      v9 = v153;
      v10 = a3;
      v11 = a1;
      v15 = v156;
      if (v164 < v160)
      {
        if (v12 < v156)
        {
          goto LABEL_120;
        }

        if (v156 < v12)
        {
          v64 = 16 * v12 - 16;
          v65 = v12;
          v66 = v156;
          do
          {
            if (v66 != --v65)
            {
              v68 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v67 = *(v68 + v63);
              *(v68 + v63) = *(v68 + v64);
              *(v68 + v64) = v67;
            }

            ++v66;
            v64 -= 16;
            v63 += 16;
          }

          while (v66 < v65);
        }
      }
    }

    v69 = v10[1];
    if (v12 < v69)
    {
      if (__OFSUB__(v12, v15))
      {
        goto LABEL_119;
      }

      if (v12 - v15 < a4)
      {
        if (__OFADD__(v15, a4))
        {
          goto LABEL_121;
        }

        if (&a4[v15] >= v69)
        {
          v13 = v10[1];
        }

        else
        {
          v13 = &a4[v15];
        }

        if (v13 < v15)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v12 != v13)
        {
          break;
        }
      }
    }

    v13 = v12;
    if (v12 < v15)
    {
      goto LABEL_118;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1003658B8(0, *v14->clientIdentity + 1, 1, v14, a5, a6, a7, a8);
    }

    v71 = *v14->clientIdentity;
    v70 = *&v14->clientIdentity[8];
    v72 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      v14 = sub_1003658B8((v70 > 1), v71 + 1, 1, v14, a5, a6, a7, a8);
    }

    *v14->clientIdentity = v72;
    v73 = v14 + 16 * v71;
    *(v73 + 4) = v156;
    *(v73 + 5) = v13;
    v74 = *v11;
    if (!*v11)
    {
      goto LABEL_128;
    }

    if (v71)
    {
      while (1)
      {
        v75 = v72 - 1;
        if (v72 >= 4)
        {
          break;
        }

        if (v72 == 3)
        {
          v76 = *&v14->clientIdentity[16];
          v77 = *&v14->clientIdentity[24];
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_48:
          if (v79)
          {
            goto LABEL_107;
          }

          v92 = &v14->super.isa + 2 * v72;
          v94 = *v92;
          v93 = v92[1];
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_110;
          }

          v98 = &v14->clientIdentity[16 * v75 + 16];
          v100 = *v98;
          v99 = *(v98 + 1);
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v96, v101))
          {
            goto LABEL_114;
          }

          if (v96 + v101 >= v78)
          {
            if (v78 < v101)
            {
              v75 = v72 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v102 = &v14->super.isa + 2 * v72;
        v104 = *v102;
        v103 = v102[1];
        v86 = __OFSUB__(v103, v104);
        v96 = v103 - v104;
        v97 = v86;
LABEL_62:
        if (v97)
        {
          goto LABEL_109;
        }

        v105 = v14 + 16 * v75;
        v107 = *(v105 + 4);
        v106 = *(v105 + 5);
        v86 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v86)
        {
          goto LABEL_112;
        }

        if (v108 < v96)
        {
          goto LABEL_3;
        }

LABEL_69:
        v113 = v75 - 1;
        if (v75 - 1 >= v72)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*v10)
        {
          goto LABEL_125;
        }

        v114 = *&v14->clientIdentity[16 * v113 + 16];
        v115 = *&v14->clientIdentity[16 * v75 + 24];
        sub_1004203BC((*v10 + 16 * v114), (*v10 + 16 * *&v14->clientIdentity[16 * v75 + 16]), (*v10 + 16 * v115), v74);
        if (v9)
        {
          goto LABEL_101;
        }

        if (v115 < v114)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1004361F4(v14, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v113 >= *v14->clientIdentity)
        {
          goto LABEL_104;
        }

        v116 = v14 + 16 * v113;
        *(v116 + 4) = v114;
        *(v116 + 5) = v115;
        sub_100436168(v75);
        v72 = *v14->clientIdentity;
        if (v72 <= 1)
        {
          goto LABEL_3;
        }
      }

      v80 = &v14->clientIdentity[16 * v72 + 16];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_105;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_106;
      }

      v87 = &v14->super.isa + 2 * v72;
      v89 = *v87;
      v88 = v87[1];
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_108;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_111;
      }

      if (v91 >= v83)
      {
        v109 = &v14->clientIdentity[16 * v75 + 16];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_115;
        }

        if (v78 < v112)
        {
          v75 = v72 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v12 = v10[1];
    v11 = a1;
    if (v13 >= v12)
    {
      goto LABEL_89;
    }
  }

  v152 = v14;
  v154 = v9;
  v117 = *v10;
  v118 = v117 + 16 * v12 - 16;
  v119 = v15 - v12;
  v157 = v13;
LABEL_80:
  v161 = v118;
  v163 = v12;
  v120 = *(v117 + 16 * v12);
  v159 = v119;
  while (1)
  {
    v165 = *(&v120 + 1);
    v121 = *v118;
    v122 = *(v118 + 8);
    v123 = v120;

    v124 = v165;

    v125 = v122;
    v126 = NSObject.hashValue.getter();
    v127 = NSObject.hashValue.getter();

    v123, v128, v129, v130, v131, v132, v133, v134;
    v121, v135, v136, v137, v138, v139, v140, v141;
    if (v126 >= v127)
    {
LABEL_79:
      v12 = v163 + 1;
      v118 = v161 + 16;
      v13 = v157;
      v119 = v159 - 1;
      if ((v163 + 1) != v157)
      {
        goto LABEL_80;
      }

      v14 = v152;
      v9 = v154;
      v10 = a3;
      v11 = a1;
      if (v157 < v156)
      {
        goto LABEL_118;
      }

      goto LABEL_29;
    }

    if (!v117)
    {
      break;
    }

    v142 = *v118;
    v120 = *(v118 + 16);
    *v118 = v120;
    *(v118 + 16) = v142;
    v118 -= 16;
    if (__CFADD__(v119++, 1))
    {
      goto LABEL_79;
    }
  }

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
}

uint64_t sub_1004203BC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - __src;
  v11 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != __src || &__src[16 * v12] <= a4)
    {
      v39 = a4;
      memmove(a4, __src, 16 * v12);
      a4 = v39;
    }

    v72 = &a4[16 * v12];
    v13 = a4;
    if (v10 >= 16 && v5 > v6)
    {
      v69 = a4;
      v67 = v6;
LABEL_27:
      v68 = v5 - 16;
      v40 = v4 - 16;
      v41 = v72;
      do
      {
        v42 = v40;
        v43 = v40 + 16;
        v44 = *(v41 - 2);
        v45 = *(v41 - 1);
        v41 -= 16;
        v47 = *(v5 - 2);
        v46 = *(v5 - 1);
        v48 = v5;

        v49 = v45;

        v50 = v46;
        v71 = NSObject.hashValue.getter();
        v51 = NSObject.hashValue.getter();

        v44, v52, v53, v54, v55, v56, v57, v58;
        v47, v59, v60, v61, v62, v63, v64, v65;
        if (v71 < v51)
        {
          v38 = v43 == v48;
          v4 = v42;
          if (!v38)
          {
            *v42 = *v68;
          }

          v13 = v69;
          if (v72 <= v69 || (v5 = v68, v68 <= v67))
          {
            v5 = v68;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v43 != v72)
        {
          *v42 = *v41;
        }

        v40 = v42 - 16;
        v72 = v41;
        v5 = v48;
      }

      while (v41 > v69);
      v72 = v41;
      v13 = v69;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[16 * v9] <= a4)
    {
      memmove(a4, __dst, 16 * v9);
    }

    v72 = &v13[16 * v9];
    if (v7 >= 16 && v5 < v4)
    {
      v70 = v4;
      while (1)
      {
        v15 = *v5;
        v14 = *(v5 + 1);
        v16 = v5;
        v18 = *v13;
        v17 = *(v13 + 1);

        v19 = v14;

        v20 = v17;
        v21 = NSObject.hashValue.getter();
        v22 = NSObject.hashValue.getter();

        v15, v23, v24, v25, v26, v27, v28, v29;
        v18, v30, v31, v32, v33, v34, v35, v36;
        if (v21 >= v22)
        {
          break;
        }

        v37 = v16;
        v5 = v16 + 16;
        if (v6 != v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 += 16;
        if (v13 >= v72 || v5 >= v70)
        {
          goto LABEL_19;
        }
      }

      v37 = v13;
      v38 = v6 == v13;
      v13 += 16;
      v5 = v16;
      if (v38)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v37;
      goto LABEL_17;
    }

LABEL_19:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v13 || v5 >= &v13[(v72 - v13 + (v72 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v5, v13, 16 * ((v72 - v13) / 16));
  }

  return 1;
}

void sub_1004206DC(_TtC7remindd19RDXPCStorePerformer *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *a1->clientIdentity;
  if (!v9)
  {
    goto LABEL_6;
  }

  v11 = a2;
  v13 = *&a1->clientIdentity[16];
  v12 = *&a1->clientIdentity[24];
  v14 = *a3;
  v15 = sub_100364364(v13);
  v23 = v14[2];
  v24 = (v16 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = v16;
  if (v14[3] < v26)
  {
    sub_1003703C4(v26, v11 & 1);
    v15 = sub_100364364(v13);
    if ((v27 & 1) != (v16 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_6:
      a1, a2, a3, a4, a5, a6, a7, a8;
      return;
    }

LABEL_8:
    if (v27)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_8;
  }

  v35 = v15;
  sub_1003765CC();
  v15 = v35;
  if (v27)
  {
LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      a1, v28, v29, v30, v31, v32, v33, v34;

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v36 = *a3;
  *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
  *(v36[6] + 8 * v15) = v13;
  *(v36[7] + 8 * v15) = v12;
  v37 = v36[2];
  v25 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (v25)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    _StringGuts.grow(_:)(30);
    v52._object = 0x80000001007F8340;
    v52._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v52);
    _print_unlocked<A, B>(_:_:)();
    v53._countAndFlagsBits = 39;
    v53._object = 0xE100000000000000;
    String.append(_:)(v53);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v36[2] = v38;
  if (v9 != 1)
  {
    v39 = &a1->clientIdentity[40];
    v40 = 1;
    while (v40 < *a1->clientIdentity)
    {
      v41 = *(v39 - 1);
      v42 = *v39;
      v43 = *a3;
      v44 = sub_100364364(v41);
      v45 = v43[2];
      v46 = (v16 & 1) == 0;
      v25 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v25)
      {
        goto LABEL_24;
      }

      v48 = v16;
      if (v43[3] < v47)
      {
        sub_1003703C4(v47, 1);
        v44 = sub_100364364(v41);
        if ((v48 & 1) != (v16 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v49 = *a3;
      *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      *(v49[6] + 8 * v44) = v41;
      *(v49[7] + 8 * v44) = v42;
      v50 = v49[2];
      v25 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      ++v40;
      v49[2] = v51;
      v39 += 16;
      if (v9 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
  a1, v16, v17, v18, v19, v20, v21, v22;
}

_TtC7remindd19RDXPCStorePerformer *sub_100420A2C()
{
  v0 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  sub_1000F5104(&qword_100946828, &unk_1007A8AC0);
  PartialOverride.subscript.getter();

  if (v10[15] != 1)
  {
    return &_swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  if (v10[14])
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000F5104(&qword_10093EDB8, &qword_10079D548);
  v6 = type metadata accessor for REMSuggestedAttributeOutput();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100791300;
  (*(v1 + 104))(v4, enum case for REMSuggestedAttributeOutput.Pipeline.heuristic(_:), v0);
  REMSuggestedAttributeOutput.Source.init(pipeline:)();
  (*(v7 + 104))(v9 + v8, enum case for REMSuggestedAttributeOutput.pasteboardURL(_:), v6);
  return v9;
}

BOOL sub_100420C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    if (qword_1009360D8 != -1)
    {
      swift_once();
    }

    v12 = qword_1009466F0;
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 baseLanguageFromLanguage:v14];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    LOBYTE(v16) = sub_100240BDC(v16, v18, v12);
    v18, v19, v20, v21, v22, v23, v24, v25;
    if ((v16 & 1) == 0 && String.count.getter() < 5)
    {
      return 0;
    }
  }

  v38[0] = a1;
  v38[1] = a2;
  static CharacterSet.whitespaces.getter();
  sub_10013BCF4();
  v27 = StringProtocol.trimmingCharacters(in:)();
  v29 = v28;
  (*(v8 + 8))(v11, v7);
  v29, v30, v31, v32, v33, v34, v35, v36;
  v37 = (v29 >> 56) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v37 = v27 & 0xFFFFFFFFFFFFLL;
  }

  return v37 != 0;
}

_TtC7remindd19RDXPCStorePerformer *sub_100420E70(char *a1, void *a2, uint64_t a3)
{
  v292 = a2;
  v299 = a1;
  v294 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v296 = *(v294 - 8);
  __chkstk_darwin(v294, v4);
  v293 = &v282 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = type metadata accessor for REMSuggestedAttributeOutput();
  v295 = *(v286 - 8);
  __chkstk_darwin(v286, v6);
  v304 = &v282 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest();
  v300 = *&v8[-1].shareRecordIDToRootRecordIDLock[2];
  v301 = v8;
  __chkstk_darwin(v8, v9);
  v11 = (&v282 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12, v13);
  v288 = &v282 - v14;
  __chkstk_darwin(v15, v16);
  v287 = &v282 - v17;
  v18 = type metadata accessor for UUID();
  v297 = *(v18 - 8);
  v298 = v18;
  __chkstk_darwin(v18, v19);
  v289 = (&v282 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v21, v22);
  v24 = &v282 - v23;
  v25 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v25 - 8, v26);
  v291 = (&v282 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28, v29);
  v290 = (&v282 - v30);
  __chkstk_darwin(v31, v32);
  v34 = &v282 - v33;
  v303 = a3;
  v35 = REMSuggestedAttributesHarvester.MentionsExtractionRequest.listID.getter();
  v36 = [v35 entityName];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = [objc_opt_self() cdEntityName];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (v37 == v41 && v39 == v43)
  {
    v39, v44, v45, v46, v47, v48, v49, v50;
    v43, v51, v52, v53, v54, v55, v56, v57;
LABEL_5:
    if (qword_1009360D0 != -1)
    {
LABEL_68:
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100006654(v73, qword_1009466D8);
    v75 = v300;
    v74 = v301;
    (*(v300 + 16))(v11, v303, v301);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138543362;
      v80 = REMSuggestedAttributesHarvester.MentionsExtractionRequest.listID.getter();
      (*(v75 + 8))(v11, v74);
      *(v78 + 4) = v80;
      *v79 = v80;
      _os_log_impl(&_mh_execute_header, v76, v77, "REMSuggestedAttributesHarvester.MentionsExtractionInvocation should not be called with 'parameters.listID', which belongs to list representation of a template. {parameters.listID: %{public}@}", v78, 0xCu);
      sub_1000050A4(v79, &unk_100938E70, &unk_100797230);
    }

    else
    {

      (*(v75 + 8))(v11, v74);
    }

    return &_swiftEmptyArrayStorage;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v39, v59, v60, v61, v62, v63, v64, v65;
  v43, v66, v67, v68, v69, v70, v71, v72;
  if (v58)
  {
    goto LABEL_5;
  }

  REMSuggestedAttributesHarvester.MentionsExtractionRequest.editingSessionID.getter();
  v82 = v297;
  v81 = v298;
  v83 = *(v297 + 56);
  v284 = v297 + 56;
  v283 = v83;
  v83(v34, 0, 1, v298);
  v84 = OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedEditingSessionID;
  v85 = v24;
  v86 = v299;
  swift_beginAccess();
  v87 = *(v21 + 48);
  sub_100010364(v34, v85, &unk_100939D90, "8\n\r");
  v285 = v84;
  v88 = &v86[v84];
  v89 = v85;
  v90 = v81;
  sub_100010364(v88, v89 + v87, &unk_100939D90, "8\n\r");
  v91 = *(v82 + 48);
  v92 = v91(v89, 1, v81);
  v11 = &OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList;
  v282 = v91;
  if (v92 != 1)
  {
    v94 = v290;
    sub_100010364(v89, v290, &unk_100939D90, "8\n\r");
    if (v91(v89 + v87, 1, v81) != 1)
    {
      v95 = v297;
      v96 = v289;
      (*(v297 + 32))(v289, v89 + v87, v90);
      sub_10042252C(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v97 = dispatch thunk of static Equatable.== infix(_:_:)();
      v98 = *(v95 + 8);
      v98(v96, v298);
      sub_1000050A4(v34, &unk_100939D90, "8\n\r");
      v98(v94, v298);
      v11 = &OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList;
      v93 = v299;
      sub_1000050A4(v89, &unk_100939D90, "8\n\r");
      if ((v97 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    sub_1000050A4(v34, &unk_100939D90, "8\n\r");
    (*(v297 + 8))(v94, v81);
LABEL_14:
    sub_1000050A4(v89, &unk_10093A3D0, &qword_100795770);
    v93 = v299;
    goto LABEL_23;
  }

  sub_1000050A4(v34, &unk_100939D90, "8\n\r");
  if (v91(v89 + v87, 1, v81) != 1)
  {
    goto LABEL_14;
  }

  sub_1000050A4(v89, &unk_100939D90, "8\n\r");
  v93 = v299;
LABEL_16:
  v99 = *&v93[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList];
  if (v99)
  {
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    v11 = v99;
    v100 = REMSuggestedAttributesHarvester.MentionsExtractionRequest.listID.getter();
    v101 = [v11 remObjectID];
    v102 = static NSObject.== infix(_:_:)();

    if (v102)
    {
      if (qword_1009360D0 != -1)
      {
        swift_once();
      }

      v103 = type metadata accessor for Logger();
      sub_100006654(v103, qword_1009466D8);
      v105 = v300;
      v104 = v301;
      v106 = *(v300 + 16);
      v107 = v287;
      v108 = v303;
      v106(v287, v303, v301);
      v109 = v288;
      v106(v288, v108, v104);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = v109;
        v113 = swift_slowAlloc();
        v292 = swift_slowAlloc();
        *&v306 = v292;
        *v113 = 136315394;
        v290 = v110;
        v114 = REMSuggestedAttributesHarvester.MentionsExtractionRequest.listID.getter();
        LODWORD(v291) = v111;
        v115 = v114;
        v116 = [v114 description];

        v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v119 = v118;

        v120 = *(v105 + 8);
        v120(v107, v104);
        v121 = sub_10000668C(v117, v119, &v306);
        v119, v122, v123, v124, v125, v126, v127, v128;
        *(v113 + 4) = v121;
        *(v113 + 12) = 2080;
        v129 = v289;
        REMSuggestedAttributesHarvester.MentionsExtractionRequest.editingSessionID.getter();
        v130 = UUID.description.getter();
        v132 = v131;
        (*(v297 + 8))(v129, v298);
        v120(v112, v104);
        v133 = sub_10000668C(v130, v132, &v306);
        v132, v134, v135, v136, v137, v138, v139, v140;
        *(v113 + 14) = v133;
        v141 = v290;
        _os_log_impl(&_mh_execute_header, v290, v291, "Loading cached list: %s for session: %s", v113, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v266 = *(v105 + 8);
        v266(v109, v104);
        v266(v107, v104);
      }

      v184 = v11;
      v188 = v302;
      goto LABEL_36;
    }

    v93 = v299;
    v11 = &OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList;
  }

LABEL_23:
  if (qword_1009360D0 != -1)
  {
    swift_once();
  }

  v142 = type metadata accessor for Logger();
  sub_100006654(v142, qword_1009466D8);
  v143 = v93;
  v144 = Logger.logObject.getter();
  v145 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = v93;
    v301 = swift_slowAlloc();
    *&v306 = v301;
    *v146 = 136315394;
    v148 = v285;
    v149 = &v93[v285];
    v150 = v298;
    if (v282(v149, 1, v298))
    {
      v151 = 0xE300000000000000;
      v152 = 7104878;
    }

    else
    {
      v153 = v297;
      v154 = &v147[v148];
      v155 = v289;
      (*(v297 + 16))(v289, v154, v150);
      v156 = UUID.description.getter();
      v151 = v157;
      (*(v153 + 8))(v155, v150);
      v152 = v156;
    }

    v158 = sub_10000668C(v152, v151, &v306);
    v151, v159, v160, v161, v162, v163, v164, v165;
    *(v146 + 4) = v158;
    *(v146 + 12) = 2080;
    v11 = &OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList;
    v166 = *&v143[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList];
    v167 = 7104878;
    if (v166)
    {
      v168 = [v166 remObjectID];
      v169 = [v168 description];

      v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v171 = v170;
    }

    else
    {
      v171 = 0xE300000000000000;
    }

    v172 = sub_10000668C(v167, v171, &v306);
    v171, v173, v174, v175, v176, v177, v178, v179;
    *(v146 + 14) = v172;
    _os_log_impl(&_mh_execute_header, v144, v145, "No cached value found for session: %s list: %s", v146, 0x16u);
    swift_arrayDestroy();

    v93 = v299;
  }

  else
  {
  }

  v180 = REMSuggestedAttributesHarvester.MentionsExtractionRequest.listID.getter();
  *&v306 = 0;
  v181 = [v292 fetchListWithObjectID:v180 error:&v306];

  v182 = v306;
  if (!v181)
  {
    v221 = v306;
    v222 = _convertNSErrorToError(_:)();

    *&v302 = v222;
    swift_willThrow();
    return v181;
  }

  v183 = *&v143[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList];
  *&v143[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList] = v181;
  v184 = v181;
  v185 = v182;

  v186 = v291;
  REMSuggestedAttributesHarvester.MentionsExtractionRequest.editingSessionID.getter();
  v283(v186, 0, 1, v298);
  v187 = v285;
  swift_beginAccess();
  sub_1004222F8(v186, &v93[v187]);
  swift_endAccess();
  v188 = v302;
LABEL_36:
  v189 = [v184 account];

  v190 = [v189 capabilities];
  LODWORD(v189) = [v190 supportsAssignments];

  if (!v189)
  {
    goto LABEL_71;
  }

  v191 = [v184 shareeContext];
  if (!v191)
  {
    goto LABEL_71;
  }

  v192 = v191;
  v193 = [v191 sharees];

  sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
  v194 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v194 >> 62)
  {
    v202 = _CocoaArrayWrapper.endIndex.getter();
    if (v202)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

  v202 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v202)
  {
LABEL_70:
    v194, v195, v196, v197, v198, v199, v200, v201;
LABEL_71:

    return &_swiftEmptyArrayStorage;
  }

LABEL_40:
  v291 = v184;
  v300 = v202;
  v203 = sub_1002481DC(v194);
  v204 = v300;
  v301 = v203;
  v205 = 0;
  v206 = &_swiftEmptyArrayStorage;
  do
  {
    if ((v194 & 0xC000000000000001) != 0)
    {
      v207 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v205 >= *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v207 = *(v194 + 8 * v205 + 32);
    }

    v11 = v207;
    v208 = v205 + 1;
    if (__OFADD__(v205, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v305 = v207;
    v209 = v188;
    sub_10041D300(&v305, v301, &v306);

    if (v306)
    {
      v302 = v306;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v206 = sub_1003681B4(0, (*v206->clientIdentity + 1), 1, v206, v213, v214, v215, v216);
      }

      v218 = *v206->clientIdentity;
      v217 = *&v206->clientIdentity[8];
      v11 = (v218 + 1);
      v219 = v302;
      if (v218 >= v217 >> 1)
      {
        v220 = sub_1003681B4((v217 > 1), (v218 + 1), 1, v206, v213, v214, v215, v216);
        v219 = v302;
        v206 = v220;
      }

      *v206->clientIdentity = v11;
      *&v206->clientIdentity[16 * v218 + 16] = v219;
      v188 = v209;
      v204 = v300;
    }

    ++v205;
  }

  while (v208 != v204);
  v194, v210, v211, v212, v213, v214, v215, v216;
  v301, v223, v224, v225, v226, v227, v228, v229;
  *&v306 = v206;

  sub_10041EDBC(&v306);
  v237 = v291;
  if (!v188)
  {
    *&v302 = 0;
    v206, v230, v231, v232, v233, v234, v235, v236;
    v238 = v306;
    if (!*(v306 + 16))
    {

      return &_swiftEmptyArrayStorage;
    }

    sub_1000F5104(&qword_1009467E8, &qword_1007A8A88);
    inited = swift_initStackObject();
    v240 = REMSuggestedAttributesHarvester.MentionsExtractionRequest.reminderTitle.getter();
    v242 = v241;
    v243 = sub_10041D538(v238, v240, v241);
    v242, v244, v245, v246, v247, v248, v249, v250;

    v251 = *v243->clientIdentity;
    if (!v251)
    {

      v243, v274, v275, v276, v277, v278, v279, v280;
      return &_swiftEmptyArrayStorage;
    }

    v290 = inited;
    *&v306 = &_swiftEmptyArrayStorage;
    sub_100253BC4(0, v251, 0);
    v181 = v306;
    v300 = *(v296 + 104);
    v296 += 104;
    LODWORD(v299) = enum case for REMSuggestedAttributeOutput.Pipeline.heuristic(_:);
    LODWORD(v298) = enum case for REMSuggestedAttributeOutput.assignee(_:);
    v297 = v295 + 104;
    v292 = (v295 + 32);
    v289 = v243;
    v252 = &v243->clientIdentity[32];
    v253 = v286;
    do
    {
      v254 = *(v252 - 2);
      v303 = *(v252 - 1);
      v301 = *v252;
      v255 = sub_1000F5104(&qword_1009413E0, &unk_1007A8A90);
      v256 = *(v255 + 48);
      v257 = &v304[*(v255 + 64)];
      (v300)(v293, v299, v294);
      v258 = v254;
      REMSuggestedAttributeOutput.Source.init(pipeline:)();
      v259 = [v258 objectID];
      v260 = REMObjectID.codable.getter();

      v261 = v303;
      *&v304[v256] = v260;
      v262 = v301;
      *v257 = v261;
      *(v257 + 1) = v262;
      v263 = v304;
      (*v297)(v304, v298, v253);
      *&v306 = v181;
      v265 = v181[2];
      v264 = v181[3];
      if (v265 >= v264 >> 1)
      {
        sub_100253BC4((v264 > 1), v265 + 1, 1);
        v181 = v306;
      }

      v252 += 3;
      v181[2] = v265 + 1;
      (*(v295 + 32))(v181 + ((*(v295 + 80) + 32) & ~*(v295 + 80)) + *(v295 + 72) * v265, v263, v253);
      --v251;
    }

    while (v251);

    v289, v267, v268, v269, v270, v271, v272, v273;

    return v181;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004222F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_TtC7remindd19RDXPCStorePerformer *sub_100422368@<X0>(_TtC7remindd19RDXPCStorePerformer **a1@<X0>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>, void *a3@<X7>)
{
  result = sub_10041F16C(*a1, a1[1], *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), a3);
  if (!v4)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1004223A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10041F600(*a1, a1[1], v2[2], v2[3], v2[5], v2[6]);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

unint64_t sub_1004223F0()
{
  result = qword_100946830;
  if (!qword_100946830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946830);
  }

  return result;
}

unint64_t sub_100422444()
{
  result = qword_100946838;
  if (!qword_100946838)
  {
    sub_1000F514C(&qword_100946840, &qword_1007A8B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946838);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004224E8@<X0>(_TtC7remindd19RDXPCStorePerformer **a1@<X0>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  result = sub_100422574(*a1, *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10042251C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
  }

  else
  {
    return a3(a1);
  }
}

uint64_t sub_10042252C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_TtC7remindd19RDXPCStorePerformer *sub_100422574(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v135 = a1;
  v6 = sub_1000F5104(&qword_1009467C0, &qword_1007A8A50);
  v137 = *(v6 - 8);
  v138 = v6;
  __chkstk_darwin(v6, v7);
  v136 = &v116 - v8;
  v9 = type metadata accessor for REMSuggestedAttributesHarvester.Request();
  v128 = *(v9 - 8);
  v129 = v9;
  __chkstk_darwin(v9, v10);
  v12 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v143 = *(v13 - 8);
  v144 = v13;
  __chkstk_darwin(v13, v14);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v132 = &v116 - v19;
  v134 = v20;
  __chkstk_darwin(v21, v22);
  v140 = &v116 - v23;
  v24 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v141 = *(v24 - 8);
  __chkstk_darwin(v24, v25);
  v133 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v130 = v30;
  v131 = &v116 - v29;
  __chkstk_darwin(v31, v32);
  v142 = &v116 - v33;
  v34 = sub_1000F5104(&qword_100946860, &qword_1007A8BB0);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34, v36);
  v38 = &v116 - v37;
  if (!a2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v146 = v24;
  v139 = v16;
  v126 = v3;
  swift_getKeyPath();

  sub_1000F5104(&qword_100946828, &unk_1007A8AC0);
  v124 = a3;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  (*(v35 + 8))(v38, v34);
  v125 = a2;
  v39 = REMkNNByTitleEmbedding.predict(for:neighborCountToConsider:)();
  if (v40)
  {
    v135 = v40;
    v127 = v39;
    if (qword_1009360C8 != -1)
    {
      swift_once();
    }

    v120 = qword_100974E40;
    v41 = v142;
    v42 = v146;
    (*(v141 + 104))(v142, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.list(_:), v146);
    v43 = v143;
    v44 = *(v143 + 104);
    v45 = v140;
    v122 = enum case for REMSuggestedAttributeOutput.Pipeline.kNN(_:);
    v46 = v144;
    v123 = v143 + 104;
    v121 = v44;
    v44(v140);
    PartialOverride._full.getter();
    REMSuggestedAttributesHarvester.Request.reminder.getter();
    (*(v128 + 8))(v12, v129);
    v129 = REMSuggestedAttributeInput.reminderID.getter();

    (*(v137 + 104))(v136, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v138);
    v47 = v131;
    if (qword_1009360C0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_100946628);
    v124 = *(v141 + 16);
    v124(v47, v41, v42);
    v49 = *(v43 + 16);
    v50 = v132;
    v119 = v49;
    v49(v132, v45, v46);
    v51 = v47;
    v52 = v46;
    v53 = v135;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v53, v56, v57, v58, v59, v60, v61, v62;
    v117 = v55;
    if (os_log_type_enabled(v54, v55))
    {
      v63 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v63 = 136446722;
      v116 = v54;
      v64 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
      v66 = v65;
      v67 = v141;
      v68 = *(v141 + 8);
      v128 = (v141 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v131 = v68;
      (v68)(v51, v146);
      v69 = sub_10000668C(v64, v66, &v145);
      v66, v70, v71, v72, v73, v74, v75, v76;
      *(v63 + 4) = v69;
      *(v63 + 12) = 2082;
      v77 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
      v79 = v78;
      v80 = *(v143 + 8);
      v118 = (v143 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v132 = v80;
      (v80)(v50, v144);
      v81 = sub_10000668C(v77, v79, &v145);
      v82 = v79;
      v45 = v140;
      v82, v83, v84, v85, v86, v87, v88, v89;
      *(v63 + 14) = v81;
      *(v63 + 22) = 2080;
      *(v63 + 24) = sub_10000668C(v127, v135, &v145);
      v90 = v116;
      _os_log_impl(&_mh_execute_header, v116, v117, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v63, 0x20u);
      swift_arrayDestroy();

      v52 = v144;

      v91 = v67;
    }

    else
    {

      v93 = *(v143 + 8);
      v118 = (v143 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v132 = v93;
      (v93)(v50, v52);
      v91 = v141;
      v94 = *(v141 + 8);
      v128 = (v141 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v131 = v94;
      (v94)(v51, v146);
    }

    v95 = v133;
    v124(v133, v142, v146);
    v119(v139, v45, v52);
    v96 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v97 = (v130 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = v143;
    v99 = (*(v143 + 80) + v97 + 16) & ~*(v143 + 80);
    v100 = (v134 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
    v101 = swift_allocObject();
    v102 = v129;
    *(v101 + 16) = v129;
    v103 = v95;
    v104 = v146;
    (*(v91 + 32))(v101 + v96, v103, v146);
    v105 = (v101 + v97);
    v106 = v135;
    *v105 = v127;
    v105[1] = v106;
    v107 = v144;
    (*(v98 + 32))(v101 + v99, v139, v144);
    v108 = (v101 + v100);
    *v108 = REMCDList.cleanUpAfterLocalObjectMerge();
    v108[1] = 0;

    v109 = v102;
    v110 = v136;
    dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

    (*(v137 + 8))(v110, v138);
    (v132)(v140, v107);
    (v131)(v142, v104);
    sub_1000F5104(&qword_10093EDB8, &qword_10079D548);
    v111 = type metadata accessor for REMSuggestedAttributeOutput();
    v112 = *(v111 - 8);
    v113 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v92 = swift_allocObject();
    *v92->clientIdentity = xmmword_100791300;
    v114 = *(sub_1000F5104(&qword_1009413F8, &qword_1007A13C0) + 48);
    v121(v139, v122, v107);
    REMSuggestedAttributeOutput.Source.init(pipeline:)();
    type metadata accessor for REMSuggestedList();
    *(&v92->super.isa + v113 + v114) = REMSuggestedList.__allocating_init(stringLiteral:)();
    (*(v112 + 104))(v92 + v113, enum case for REMSuggestedAttributeOutput.list(_:), v111);
  }

  else
  {
    v92 = &_swiftEmptyArrayStorage;
  }

  return v92;
}

uint64_t sub_1004230BC(uint64_t a1)
{
  v3 = *(type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for REMSuggestedAttributeOutput.Pipeline() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);
  v11 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_100416AE0(a1, v8, v1 + v4, v9, v10, v1 + v7, v12, v13);
}

Class sub_100423204(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v3 = v2;
  v5 = _s10PredicatesOMa(0);
  *&v7 = __chkstk_darwin(v5, v6).n128_u64[0];
  v9 = (&v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [v1 listIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v9 = v11;
  swift_storeEnumTagMultiPayload();
  v12 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v76 = qword_100974E30;
    v13 = sub_100043AA8();
    v14 = [objc_allocWithZone(NSFetchRequest) init];
    v15 = [swift_getObjCClassFromMetadata() entity];
    [v14 setEntity:v15];

    [v14 setAffectedStores:0];
    [v14 setPredicate:v13];

    [v14 setFetchLimit:0];
    v77 = v14;
    [v14 setFetchOffset:0];
    v81 = &_swiftEmptyArrayStorage;
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v84 = sub_1003EBAD0();
    sub_100271EA8(&_swiftEmptyArrayStorage);
    v17 = sub_100235FA0(Predicate);
    Predicate, v18, v19, v20, v21, v22, v23, v24;
    v25 = sub_100277CC0(v17);
    v17, v26, v27, v28, v29, v30, v31, v32;

    v33 = *v25->clientIdentity;
    if (!v33)
    {
      goto LABEL_21;
    }

LABEL_5:
    v83 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      __break(1u);
LABEL_27:
      v81 = 0;
      v82 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v71._object = 0x80000001007EC120;
      v71._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v71);
      v80 = v3;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v72 = v12;
    v73 = v3;
    v74 = a1;
    v75 = v9;
    v34 = 0;
    v35 = v83;
    v78 = v33;
    v79 = v25 & 0xC000000000000001;
    while (1)
    {
      v12 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v79)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v34 >= *v25->clientIdentity)
        {
          goto LABEL_18;
        }

        v3 = *&v25->clientIdentity[8 * v34 + 16];
      }

      v36 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v37)
      {
        goto LABEL_27;
      }

      v9 = v36;
      v38 = v37;

      v83 = v35;
      a1 = *v35->clientIdentity;
      v39 = *&v35->clientIdentity[8];
      v3 = &a1->super.isa + 1;
      if (a1 >= v39 >> 1)
      {
        sub_100026EF4((v39 > 1), &a1->super.isa + 1, 1);
        v35 = v83;
      }

      *v35->clientIdentity = v3;
      v40 = v35 + 16 * a1;
      *(v40 + 4) = v9;
      *(v40 + 5) = v38;
      ++v34;
      if (v12 == v78)
      {

        a1 = v74;
        v9 = v75;
        v3 = v73;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v33 = _CocoaArrayWrapper.endIndex.getter();
  if (v33)
  {
    goto LABEL_5;
  }

LABEL_21:

  v35 = &_swiftEmptyArrayStorage;
LABEL_22:
  sub_100271EA8(v35);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v41 = v84;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v41, v43, v44, v45, v46, v47, v48, v49;
  v50 = v77;
  [v77 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v51.super.isa = Array._bridgeToObjectiveC()().super.isa;
  [v50 setSortDescriptors:v51.super.isa];

  v52 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    sub_1004258C8(v9, _s10PredicatesOMa);
  }

  else
  {
    v53 = v52;
    v54 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v52);
    v53, v55, v56, v57, v58, v59, v60, v61;

    v62 = [objc_opt_self() defaultFetchOptions];
    v51.super.isa = sub_10048A0EC(v54, v62, a1);
    sub_1004258C8(v9, _s10PredicatesOMa);
    v54, v63, v64, v65, v66, v67, v68, v69;
  }

  return v51.super.isa;
}

void *sub_10042382C(uint64_t a1)
{
  v160 = a1;
  v2 = v1;
  v169 = _s10PredicatesOMa(0);
  __chkstk_darwin(v169, v3);
  v163 = (&v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v154 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v156 = &v153 - v10;
  __chkstk_darwin(v11, v12);
  v14 = &v153 - v13;
  __chkstk_darwin(v15, v16);
  v18 = &v153 - v17;
  __chkstk_darwin(v19, v20);
  v162 = &v153 - v21;
  __chkstk_darwin(v22, v23);
  v25 = &v153 - v24;
  __chkstk_darwin(v26, v27);
  v29 = &v153 - v28;
  *&v32 = __chkstk_darwin(v30, v31).n128_u64[0];
  v166 = &v153 - v33;
  v167 = v2;
  v34 = [v2 startDate];
  if (v34)
  {
    v35 = v34;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = type metadata accessor for Date();
    (*(*(v36 - 8) + 56))(v25, 0, 1, v36);
  }

  else
  {
    v36 = type metadata accessor for Date();
    (*(*(v36 - 8) + 56))(v25, 1, 1, v36);
  }

  sub_10012F7FC(v25, v29);
  type metadata accessor for Date();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if (v38(v29, 1, v36) == 1)
  {
    sub_1000050A4(v29, &unk_100938850, qword_100795AE0);
    v39 = 1;
    v40 = v166;
  }

  else
  {
    v40 = v166;
    Date.addingTimeInterval(_:)();
    (*(v37 + 8))(v29, v36);
    v39 = 0;
  }

  v41 = *(v37 + 56);
  v42 = 1;
  v161 = v36;
  v164 = v41;
  v165 = v37 + 56;
  v41(v40, v39, 1, v36);
  v43 = v167;
  v44 = [v167 endDate];
  if (v44)
  {
    v45 = v44;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = 0;
  }

  v46 = v161;
  v164(v14, v42, 1, v161);
  sub_10012F7FC(v14, v18);
  if (v38(v18, 1, v46) == 1)
  {
    sub_1000050A4(v18, &unk_100938850, qword_100795AE0);
    v47 = 1;
    v48 = v162;
  }

  else
  {
    v48 = v162;
    Date.addingTimeInterval(_:)();
    v43 = v167;
    (*(v37 + 8))(v18, v46);
    v47 = 0;
  }

  v164(v48, v47, 1, v46);
  v49 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
  v50 = *(v49 + 48);
  v51 = *(v49 + 64);
  v52 = [v43 listIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = v163;
  *v163 = v53;
  sub_10012F78C(v166, v54 + v50);
  sub_10012F78C(v48, v54 + v51);
  swift_storeEnumTagMultiPayload();
  v55 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
LABEL_30:
    swift_once();
  }

  v56 = qword_100974E30;
  v57 = sub_100043AA8();
  v58 = [objc_allocWithZone(NSFetchRequest) init];
  v59 = [swift_getObjCClassFromMetadata() entity];
  [v58 setEntity:v59];

  [v58 setAffectedStores:0];
  [v58 setPredicate:v57];

  [v58 setFetchLimit:0];
  [v58 setFetchOffset:0];
  v171 = &_swiftEmptyArrayStorage;
  sub_1000F5104(&qword_100949370, &unk_100797770);
  sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
  Predicate = Sequence<>.postFetchPredicateTypes.getter();
  v171 = sub_1003EBAD0();
  sub_100271EA8(&_swiftEmptyArrayStorage);
  v174 = v171;
  v61 = sub_100235FA0(Predicate);
  Predicate, v62, v63, v64, v65, v66, v67, v68;
  v69 = sub_100277CC0(v61);
  v61, v70, v71, v72, v73, v74, v75, v76;
  if ((v69 & 0x8000000000000000) == 0 && (v69 & 0x4000000000000000) == 0)
  {
    v77 = *v69->clientIdentity;
    v157 = v56;
    v158 = v58;
    if (v77)
    {
      goto LABEL_16;
    }

LABEL_32:

    v80 = &_swiftEmptyArrayStorage;
LABEL_33:
    sub_100271EA8(v80);
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    Array<A>.removeDuplicates()();
    v89 = v174;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v89, v91, v92, v93, v94, v95, v96, v97;
    v98 = v158;
    [v158 setRelationshipKeyPathsForPrefetching:isa];

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v99 = Array._bridgeToObjectiveC()().super.isa;
    [v98 setSortDescriptors:v99];

    v101 = v159;
    v100 = v160;
    v102 = NSManagedObjectContext.fetch<A>(_:)();
    v36 = v101;
    if (v101)
    {

      goto LABEL_62;
    }

    v103 = v102;
    v169 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v102);
    v103, v104, v105, v106, v107, v108, v109, v110;

    v111 = v167;
    v112 = [v167 startDate];
    if (v112)
    {
      v113 = v156;
      v114 = v161;
      v115 = v164;
    }

    else
    {
      v116 = v156;
      v114 = v161;
      v115 = v164;
      v164(v156, 1, 1, v161);
      sub_1000050A4(v116, &unk_100938850, qword_100795AE0);
      v112 = [v111 endDate];
      if (!v112)
      {
        v133 = v154;
        v115(v154, 1, 1, v114);
        sub_1000050A4(v133, &unk_100938850, qword_100795AE0);
        v132 = v169;
LABEL_60:
        v134 = [objc_opt_self() defaultFetchOptions];
        v135 = sub_10048A0EC(v132, v134, v100);
        if (!v36)
        {
          v143 = v135;
          v132, v136, v137, v138, v139, v140, v141, v142;

          sub_1004258C8(v163, _s10PredicatesOMa);
          sub_1000050A4(v162, &unk_100938850, qword_100795AE0);
          sub_1000050A4(v166, &unk_100938850, qword_100795AE0);
          return v143;
        }

        v132, v136, v137, v138, v139, v140, v141, v142;

LABEL_62:
        sub_1004258C8(v163, _s10PredicatesOMa);
        v143 = &unk_100938850;
        sub_1000050A4(v162, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v166, &unk_100938850, qword_100795AE0);
        return v143;
      }

      v113 = v154;
    }

    v117 = v112;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v115(v113, 0, 1, v114);
    sub_1000050A4(v113, &unk_100938850, qword_100795AE0);
    v171 = &_swiftEmptyArrayStorage;
    v55 = v169;
    v78 = v167;
    if (v169 >> 62)
    {
      goto LABEL_57;
    }

    for (i = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v126 = 0;
      v127 = v55 & 0xC000000000000001;
      v128 = v55 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v127)
        {
          v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v126 >= *(v128 + 16))
          {
            goto LABEL_55;
          }

          v129 = *(v55 + 8 * v126 + 32);
        }

        v79 = v129;
        v130 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          break;
        }

        v174 = v129;
        v131 = sub_1004244E4(&v174, v78);
        if (v36)
        {
          goto LABEL_66;
        }

        if (v131)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v55 = v169;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v78 = v167;
        }

        else
        {
        }

        ++v126;
        if (v130 == i)
        {
          v132 = v171;
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      ;
    }

    v132 = &_swiftEmptyArrayStorage;
LABEL_59:
    v55, v118, v119, v120, v121, v122, v123, v124;
    v100 = v160;
    goto LABEL_60;
  }

  v77 = _CocoaArrayWrapper.endIndex.getter();
  v157 = v56;
  v158 = v58;
  if (!v77)
  {
    goto LABEL_32;
  }

LABEL_16:
  v173 = &_swiftEmptyArrayStorage;
  v78 = &v173;
  sub_100026EF4(0, v77 & ~(v77 >> 63), 0);
  if (v77 < 0)
  {
    goto LABEL_56;
  }

  v155 = v55;
  v79 = 0;
  v80 = v173;
  v168 = v77;
  v169 = v69 & 0xC000000000000001;
  while (1)
  {
    v55 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v169)
    {
      v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v79 >= *v69->clientIdentity)
      {
        goto LABEL_29;
      }

      v81 = *&v69->clientIdentity[8 * v79 + 16];
    }

    v82 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v83)
    {
      break;
    }

    v84 = v82;
    v85 = v83;

    v173 = v80;
    v87 = *v80->clientIdentity;
    v86 = *&v80->clientIdentity[8];
    v36 = v87 + 1;
    if (v87 >= v86 >> 1)
    {
      sub_100026EF4((v86 > 1), v87 + 1, 1);
      v80 = v173;
    }

    *v80->clientIdentity = v36;
    v88 = v80 + 16 * v87;
    *(v88 + 4) = v84;
    *(v88 + 5) = v85;
    ++v79;
    if (v55 == v168)
    {

      goto LABEL_33;
    }
  }

  v171 = 0;
  v172 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v145._object = 0x80000001007EC120;
  v145._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v145);
  v170 = v81;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_66:

  v55, v146, v147, v148, v149, v150, v151, v152;

  __break(1u);
  return result;
}

uint64_t sub_1004244E4(void **a1, void *a2)
{
  v114 = a2;
  v113 = type metadata accessor for Date();
  v116 = *(v113 - 8);
  __chkstk_darwin(v113, v3);
  v104 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v109 = &v104 - v7;
  __chkstk_darwin(v8, v9);
  v115 = &v104 - v10;
  __chkstk_darwin(v11, v12);
  v105 = &v104 - v13;
  __chkstk_darwin(v14, v15);
  v108 = &v104 - v16;
  __chkstk_darwin(v17, v18);
  v111 = &v104 - v19;
  v20 = type metadata accessor for DateComponents();
  v118 = *(v20 - 8);
  v119 = v20;
  __chkstk_darwin(v20, v21);
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v117 = &v104 - v26;
  v27 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v27 - 8, v28);
  v106 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v110 = &v104 - v32;
  __chkstk_darwin(v33, v34);
  v107 = &v104 - v35;
  __chkstk_darwin(v36, v37);
  v112 = &v104 - v38;
  v39 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v39 - 8, v40);
  v42 = &v104 - v41;
  v43 = type metadata accessor for TimeZone();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43, v45);
  v47 = &v104 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v50 = __chkstk_darwin(v48, v49).n128_u64[0];
  v52 = &v104 - v51;
  v53 = *a1;
  v54 = [v53 timeZone];
  v121 = v52;
  v120 = v44;
  if (v54)
  {
    v55 = v54;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v43;
    v58 = v57;

    TimeZone.init(identifier:)();
    v58, v59, v60, v61, v62, v63, v64, v65;
    v66 = *(v44 + 48);
    if (v66(v42, 1, v56) == 1)
    {
      static TimeZone.current.getter();
      v67 = v66(v42, 1, v56);
      v68 = v116;
      v43 = v56;
      if (v67 != 1)
      {
        sub_1000050A4(v42, &qword_10093F970, &unk_1007A7670);
      }
    }

    else
    {
      (*(v44 + 32))(v47, v42, v56);
      v68 = v116;
      v43 = v56;
    }

    (*(v120 + 32))(v121, v47, v43);
  }

  else
  {
    static TimeZone.current.getter();
    v68 = v116;
  }

  v69 = v113;
  v70 = [v53 dueDateComponents];
  v71 = v112;
  v72 = v110;
  if (v70)
  {
    v73 = v43;
    v74 = v70;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v118 + 32))(v117, v23, v119);
    v75 = objc_opt_self();
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    v77 = TimeZone._bridgeToObjectiveC()().super.isa;
    v78 = [v75 rem_dateWithDateComponents:isa timeZone:v77];

    if (v78)
    {
      v79 = v107;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v80 = 0;
      v81 = v111;
    }

    else
    {
      v80 = 1;
      v81 = v111;
      v79 = v107;
    }

    (*(v118 + 8))(v117, v119);
    (*(v68 + 56))(v79, v80, 1, v69);
    sub_10012F7FC(v79, v71);
    v43 = v73;
  }

  else
  {
    (*(v68 + 56))(v112, 1, 1, v69);
    v81 = v111;
  }

  v82 = v114;
  v83 = [v114 startDate];
  if (v83)
  {
    v119 = v43;
    v84 = v71;
    v85 = v108;
    v86 = v83;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v87 = *(v68 + 32);
    v88 = v85;
    v71 = v84;
    v87(v81, v88, v69);
    sub_10012F78C(v84, v72);
    if ((*(v68 + 48))(v72, 1, v69) == 1)
    {
      (*(v68 + 8))(v81, v69);
      sub_1000050A4(v72, &unk_100938850, qword_100795AE0);
      v89 = 0;
    }

    else
    {
      v90 = v105;
      v87(v105, v72, v69);
      v89 = static Date.< infix(_:_:)();
      v91 = v81;
      v92 = *(v68 + 8);
      v93 = v90;
      v71 = v84;
      v92(v93, v69);
      v92(v91, v69);
    }

    v43 = v119;
  }

  else
  {
    v89 = 1;
  }

  v94 = [v82 endDate];
  v95 = v115;
  if (!v94)
  {
    goto LABEL_27;
  }

  v96 = v109;
  v97 = v94;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v98 = *(v68 + 32);
  v98(v95, v96, v69);
  if ((v89 & 1) == 0)
  {
    (*(v68 + 8))(v95, v69);
    sub_1000050A4(v71, &unk_100938850, qword_100795AE0);
    (*(v120 + 8))(v121, v43);
    goto LABEL_25;
  }

  v99 = v106;
  sub_10012F78C(v71, v106);
  if ((*(v68 + 48))(v99, 1, v69) != 1)
  {
    v100 = v99;
    v101 = v104;
    v98(v104, v100, v69);
    sub_1002CDF34();
    v89 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
    v102 = *(v68 + 8);
    v102(v101, v69);
    v102(v95, v69);
LABEL_27:
    sub_1000050A4(v71, &unk_100938850, qword_100795AE0);
    (*(v120 + 8))(v121, v43);
    return v89 & 1;
  }

  (*(v68 + 8))(v95, v69);
  sub_1000050A4(v71, &unk_100938850, qword_100795AE0);
  (*(v120 + 8))(v121, v43);
  sub_1000050A4(v99, &unk_100938850, qword_100795AE0);
LABEL_25:
  v89 = 0;
  return v89 & 1;
}

Class sub_100424E6C(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = v88 - v10;
  v12 = _s10PredicatesOMa(0);
  *&v14 = __chkstk_darwin(v12, v13).n128_u64[0];
  v16 = (v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [v2 listIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16->super.isa = v18;
  v19 = [v2 startDate];
  if (v19)
  {
    v20 = v19;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  }

  else
  {
    v22 = type metadata accessor for Date();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  }

  v23 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
  sub_10012F7FC(v11, v16 + *(v23 + 48));
  v24 = [v2 endDate];
  if (v24)
  {
    v25 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 56))(v7, v26, 1, v27);
  sub_10012F7FC(v7, v16 + *(v23 + 64));
  swift_storeEnumTagMultiPayload();
  v28 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v88[1] = qword_100974E30;
    v92 = v16;
    v29 = sub_100043AA8();
    v30 = [objc_allocWithZone(NSFetchRequest) init];
    v90 = v28;
    v31 = [swift_getObjCClassFromMetadata() entity];
    [v30 setEntity:v31];

    [v30 setAffectedStores:0];
    [v30 setPredicate:v29];

    [v30 setFetchLimit:0];
    v89 = v30;
    [v30 setFetchOffset:0];
    v96 = &_swiftEmptyArrayStorage;
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v99 = sub_1003EBAD0();
    sub_100271EA8(&_swiftEmptyArrayStorage);
    v33 = sub_100235FA0(Predicate);
    Predicate, v34, v35, v36, v37, v38, v39, v40;
    v41 = sub_100277CC0(v33);
    v33, v42, v43, v44, v45, v46, v47, v48;

    v28 = *v41->clientIdentity;
    if (!v28)
    {
      goto LABEL_27;
    }

LABEL_11:
    v98 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v28 & ~(v28 >> 63), 0);
    if (v28 < 0)
    {
      __break(1u);
LABEL_33:
      v96 = 0;
      v97 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v87._object = 0x80000001007EC120;
      v87._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v87);
      v95 = v11;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v88[0] = a1;
    v49 = 0;
    v16 = v98;
    v93 = v28;
    v94 = v41 & 0xC000000000000001;
    while (1)
    {
      a1 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v94)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v49 >= *v41->clientIdentity)
        {
          goto LABEL_24;
        }

        v11 = *&v41->clientIdentity[8 * v49 + 16];
      }

      v50 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v51)
      {
        goto LABEL_33;
      }

      v52 = v50;
      v28 = v51;

      v98 = v16;
      v54 = *v16->clientIdentity;
      v53 = *&v16->clientIdentity[8];
      v11 = (v54 + 1);
      if (v54 >= v53 >> 1)
      {
        sub_100026EF4((v53 > 1), v54 + 1, 1);
        v16 = v98;
      }

      *v16->clientIdentity = v11;
      v55 = v16 + 16 * v54;
      *(v55 + 4) = v52;
      *(v55 + 5) = v28;
      ++v49;
      if (a1 == v93)
      {

        a1 = v88[0];
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (v28)
  {
    goto LABEL_11;
  }

LABEL_27:

  v16 = &_swiftEmptyArrayStorage;
LABEL_28:
  sub_100271EA8(v16);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v56 = v99;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v56, v58, v59, v60, v61, v62, v63, v64;
  v65 = v89;
  [v89 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v66.super.isa = Array._bridgeToObjectiveC()().super.isa;
  [v65 setSortDescriptors:v66.super.isa];

  v67 = v91;
  v68 = NSManagedObjectContext.fetch<A>(_:)();
  if (v67)
  {

    sub_1004258C8(v92, _s10PredicatesOMa);
  }

  else
  {
    v69 = v68;
    v70 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v68);
    v69, v71, v72, v73, v74, v75, v76, v77;

    v78 = [objc_opt_self() defaultFetchOptions];
    v66.super.isa = sub_10048A0EC(v70, v78, a1);
    sub_1004258C8(v92, _s10PredicatesOMa);
    v70, v79, v80, v81, v82, v83, v84, v85;
  }

  return v66.super.isa;
}

id sub_100425650(void *a1)
{
  v3 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v3, v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  if (qword_100936528 != -1)
  {
    swift_once();
  }

  v6 = qword_100975238;
  v7 = sub_10001F6F4();
  v8 = sub_100405438(0, v6, 0, v7);

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [(RDXPCStorePerformer *)v8 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v10 = a1;
  v11 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    sub_1004258C8(v5, _s10PredicatesOMa_1);
  }

  else
  {
    v29[1] = v11;
    v12 = v11;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v13 = Sequence.elements<A>(ofType:)();
    v12, v14, v15, v16, v17, v18, v19, v20;

    v10 = sub_1001E0B24(v13);
    sub_1004258C8(v5, _s10PredicatesOMa_1);
    v13, v21, v22, v23, v24, v25, v26, v27;
  }

  return v10;
}

uint64_t sub_1004258C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100425928()
{
  v1 = [v0 fileName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100425990(double a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  if (a3)
  {
    v12 = String._bridgeToObjectiveC()();
    a3, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v12 = 0;
  }

  [v3 setSha512Sum:v12];
}

id sub_1004259FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 template];
  *a2 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100425A50(unint64_t a1, char a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v34 - v11;
  v37 = &_swiftEmptyArrayStorage;
  if (a2 < 0)
  {
    KeyPath = swift_getKeyPath();
    if (a1 >> 62)
    {
      v33 = KeyPath;
      v17 = _CocoaArrayWrapper.endIndex.getter();
      KeyPath = v33;
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = &_swiftEmptyArrayStorage;
    if (v17)
    {
      v35 = KeyPath;
      v36 = &_swiftEmptyArrayStorage;
      result = sub_100253218(0, v17 & ~(v17 >> 63), 0);
      if (v17 < 0)
      {
        __break(1u);
        return result;
      }

      v20 = 0;
      v18 = v36;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v21 = *(a1 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = [v21 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v24 = type metadata accessor for UUID();
        (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
        v36 = v18;
        v26 = *v18->clientIdentity;
        v25 = *&v18->clientIdentity[8];
        if (v26 >= v25 >> 1)
        {
          sub_100253218((v25 > 1), v26 + 1, 1);
          v18 = v36;
        }

        ++v20;
        *v18->clientIdentity = v26 + 1;
        sub_100100FB4(v8, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26);
      }

      while (v17 != v20);
      KeyPath = v35;
    }

    sub_1003EDDB8(KeyPath, v18);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v37->clientIdentity >= *&v37->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v13 = swift_getKeyPath();
    v14 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
    sub_1003918E4(v13, v12);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v37->clientIdentity >= *&v37->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  sub_100023B44(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v37->clientIdentity >= *&v37->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000F5104(&qword_100946878, qword_1007A8EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  v28 = swift_getKeyPath();
  v29 = sub_1003EDDDC(v28);

  *(inited + 32) = v29;
  v30 = swift_getKeyPath();
  v31 = sub_1003EDE08(v30);

  *(inited + 40) = v31;
  sub_100025060(inited);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v37->clientIdentity >= *&v37->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_26:
  v32 = swift_getKeyPath();
  sub_1003EDE08(v32);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v37->clientIdentity >= *&v37->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0();
}

void sub_100425F68(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

uint64_t sub_1004260A4()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_10012DF40();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100974E58 = v0;
  return result;
}

uint64_t sub_10042611C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  sub_10012DF40();
  swift_getKeyPath();
  *(v0 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 40) = result;
  qword_100974E60 = v0;
  return result;
}

uint64_t sub_1004261AC@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_100426264(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreationDate:isa];
}

_TtC7remindd19RDXPCStorePerformer *sub_1004263A0()
{
  sub_100026EF4(0, 5, 0);
  result = &_swiftEmptyArrayStorage;
  v2 = *_swiftEmptyArrayStorage.clientIdentity;
  v1 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100026EF4((v1 > 1), v2 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v3;
  v4 = &_swiftEmptyArrayStorage + 16 * v2;
  *(v4 + 4) = 0xD000000000000023;
  *(v4 + 5) = 0x80000001007F2430;
  v5 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    sub_100026EF4((v5 > 1), v6, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v6;
  v7 = &_swiftEmptyArrayStorage + 16 * v3;
  *(v7 + 4) = 0x696669746E656469;
  *(v7 + 5) = 0xEA00000000007265;
  v9 = *_swiftEmptyArrayStorage.clientIdentity;
  v8 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_100026EF4((v8 > 1), v9 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v10;
  v11 = &_swiftEmptyArrayStorage + 16 * v9;
  *(v11 + 4) = 0xD00000000000001ALL;
  *(v11 + 5) = 0x80000001007EA730;
  v12 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v13 = v9 + 2;
  if (v10 >= v12 >> 1)
  {
    sub_100026EF4((v12 > 1), v13, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v13;
  v14 = &_swiftEmptyArrayStorage + 16 * v10;
  *(v14 + 4) = 0xD00000000000001ELL;
  *(v14 + 5) = 0x80000001007EC560;
  v16 = *_swiftEmptyArrayStorage.clientIdentity;
  v15 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v16 >= v15 >> 1)
  {
    sub_100026EF4((v15 > 1), v16 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v16 + 1;
  v17 = &_swiftEmptyArrayStorage + 16 * v16;
  *(v17 + 4) = 0x4E79616C70736964;
  *(v17 + 5) = 0xEB00000000656D61;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004267FC()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

  while (1)
  {
    v1 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v2)
    {
      goto LABEL_21;
    }

    v3 = v1;
    v4 = v2;

    v5 = &_swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100365788(0, *_swiftEmptyArrayStorage.clientIdentity + 1, 1, &_swiftEmptyArrayStorage, v6, v7, v8, v9);
    }

    v11 = *v5->clientIdentity;
    v10 = *&v5->clientIdentity[8];
    if (v11 >= v10 >> 1)
    {
      v5 = sub_100365788((v10 > 1), v11 + 1, 1, v5, v6, v7, v8, v9);
    }

    *v5->clientIdentity = v11 + 1;
    v12 = v5 + 16 * v11;
    *(v12 + 4) = v3;
    *(v12 + 5) = v4;
    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {

      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
  v13 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v14)
  {
LABEL_21:
    _StringGuts.grow(_:)(46);
    v25._object = 0x80000001007EC120;
    v25._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v25);
    sub_1000F5104(&unk_100943040, &unk_1007A3AC0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v15 = v13;
  v16 = v14;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100365788(0, *v5->clientIdentity + 1, 1, v5, v17, v18, v19, v20);
  }

  v22 = *v5->clientIdentity;
  v21 = *&v5->clientIdentity[8];
  if (v22 >= v21 >> 1)
  {
    v5 = sub_100365788((v21 > 1), v22 + 1, 1, v5, v17, v18, v19, v20);
  }

  *v5->clientIdentity = v22 + 1;
  v23 = v5 + 16 * v22;
  *(v23 + 4) = v15;
  *(v23 + 5) = v16;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}

_TtC7remindd19RDXPCStorePerformer *sub_100426AE4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v33 - v9;
  v36 = &_swiftEmptyArrayStorage;
  if (a3 < 0)
  {
    KeyPath = swift_getKeyPath();
    if (a1)
    {
      sub_1003EF6B4(KeyPath);
    }

    else
    {
      sub_1003EF644(KeyPath);
    }

LABEL_30:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v36->clientIdentity >= *&v36->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return sub_10000C2B0();
  }

  if (a3)
  {
    v11 = swift_getKeyPath();
    sub_1003EF644(v11);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v36->clientIdentity >= *&v36->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v12 = swift_getKeyPath();
  v13 = *(a1 + 16);
  v14 = &_swiftEmptyArrayStorage;
  if (v13)
  {
    v35 = &_swiftEmptyArrayStorage;
    sub_100016ED8(0, v13, 0);
    v14 = v35;
    v15 = (a1 + 32);
    v16 = *v35->clientIdentity;
    do
    {
      v18 = *v15++;
      v17 = v18;
      v35 = v14;
      v19 = *&v14->clientIdentity[8];
      if (v16 >= v19 >> 1)
      {
        sub_100016ED8((v19 > 1), v16 + 1, 1);
        v14 = v35;
      }

      *v14->clientIdentity = v16 + 1;
      *&v14->clientIdentity[2 * v16++ + 16] = v17 + 1;
      --v13;
    }

    while (v13);
  }

  sub_1003EF66C(v12, v14);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v36->clientIdentity >= *&v36->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (!a2)
  {
    return sub_10000C2B0();
  }

  v20 = swift_getKeyPath();
  if (a2 >> 62)
  {
    v32 = v20;
    v21 = _CocoaArrayWrapper.endIndex.getter();
    v20 = v32;
  }

  else
  {
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = &_swiftEmptyArrayStorage;
  if (!v21)
  {
LABEL_28:
    sub_1003EF690(v20, v22);
    goto LABEL_30;
  }

  v34 = v20;
  v35 = &_swiftEmptyArrayStorage;
  result = sub_100253218(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v22 = v35;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(a2 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = [v25 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 56))(v10, 0, 1, v28);
      v35 = v22;
      v30 = *v22->clientIdentity;
      v29 = *&v22->clientIdentity[8];
      if (v30 >= v29 >> 1)
      {
        sub_100253218((v29 > 1), v30 + 1, 1);
        v22 = v35;
      }

      ++v24;
      *v22->clientIdentity = v30 + 1;
      sub_100100FB4(v10, v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30);
    }

    while (v21 != v24);
    v20 = v34;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void sub_100426F14(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setTemplateIdentifier:isa];
}

_TtC7remindd19RDXPCStorePerformer *sub_100427050(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [objc_allocWithZone(NSBatchUpdateRequest) initWithEntity:v3];

  v5 = sub_100426AE4(0, 0, 128);
  [v4 setPredicate:v5];

  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *&v55 = 0x656C706D6F437369;
  *(&v55 + 1) = 0xEB00000000646574;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  v7 = sub_10038ED74(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7, v9, v10, v11, v12, v13, v14, v15;
  [v4 setPropertiesToUpdate:isa];

  [v4 setResultType:1];
  v53 = 0;
  v16 = [(RDXPCStorePerformer *)a1 executeRequest:v4 error:&v53];
  v17 = v53;
  if (v16)
  {
    v18 = v16;
    *(&v56 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
    *&v55 = v18;
    sub_1000060C8(0, &qword_1009465A0, NSBatchUpdateResult_ptr);
    v19 = v17;
    throwingCast<A>(_:as:failureMessage:)();
    if (v1)
    {

      sub_10000607C(&v55);
    }

    else
    {
      sub_10000607C(&v55);
      v20 = v54;
      if ([v54 result])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(&v54, &v55);
      }

      else
      {
        v55 = 0u;
        v56 = 0u;
      }

      v21 = sub_1000F5104(&qword_100937028, &qword_100791C10);
      throwingCast<A>(_:as:failureMessage:)();
      sub_1000050A4(&v55, &qword_100939ED0, &qword_100791B10);
      v23 = v53;
      v24 = objc_opt_self();
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_100791300;
      *&v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v55 + 1) = v26;
      AnyHashable.init<A>(_:)();
      *(v25 + 96) = v21;
      *(v25 + 72) = v23;

      v27 = sub_10038ED74(v25);
      swift_setDeallocating();
      sub_1000050A4(v25 + 32, &unk_100946590, &qword_100796FF0);
      v28 = Dictionary._bridgeToObjectiveC()().super.isa;
      v27, v29, v30, v31, v32, v33, v34, v35;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1007953F0;
      *(v36 + 32) = a1;
      sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
      v37 = a1;
      v38 = Array._bridgeToObjectiveC()().super.isa;
      v36, v39, v40, v41, v42, v43, v44, v45;
      [v24 mergeChangesFromRemoteContextSave:v28 intoContexts:v38];

      if (v23 >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a1 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23, v46, v47, v48, v49, v50, v51, v52;
    }
  }

  else
  {
    a1 = v53;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_100427578()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v0 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 40) = result;
  qword_100946880 = v0;
  return result;
}

void sub_100427618(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreationDate:isa];
}

uint64_t sub_100427754(_TtC7remindd19RDXPCStorePerformer *a1, void *a2)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = a2;

  v5 = a2;
  v6 = sub_100426AE4(a1, inited, 1);
  a1, v7, v8, v9, v10, v11, v12, v13;
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for REMCDTemplateOperationQueueItem();
  v14 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [v14 setEntity:v15];

  [v14 setAffectedStores:0];
  [v14 setPredicate:v6];

  if (qword_1009360F0 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v14 setSortDescriptors:isa];

  [v14 setReturnsObjectsAsFaults:0];
  v17 = NSManagedObjectContext.fetch<A>(_:)();

  return v17;
}

_TtC7remindd19RDXPCStorePerformer *sub_100427964(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v3 = sub_100426AE4(1, 0, 128);
  type metadata accessor for REMCDTemplateOperationQueueItem();
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];
  *(&v49 + 1) = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
  *&v48 = v4;
  v6 = v4;
  throwingCast<A>(_:as:failureMessage:)();
  if (v1)
  {

    sub_10000607C(&v48);
  }

  else
  {

    sub_10000607C(&v48);
    v8 = v47;
    v9 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v47];
    [v9 setResultType:1];
    v46 = 0;
    v10 = [(RDXPCStorePerformer *)a1 executeRequest:v9 error:&v46];
    v11 = v46;
    if (v10)
    {
      v12 = v10;
      *(&v49 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
      *&v48 = v12;
      sub_1000060C8(0, &qword_100939EC8, NSBatchDeleteResult_ptr);
      v13 = v11;
      throwingCast<A>(_:as:failureMessage:)();
      sub_10000607C(&v48);
      v14 = v47;
      if ([v47 result])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(&v47, &v48);
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      v15 = sub_1000F5104(&qword_100937028, &qword_100791C10);
      throwingCast<A>(_:as:failureMessage:)();
      sub_1000050A4(&v48, &qword_100939ED0, &qword_100791B10);
      v16 = v46;
      v45 = objc_opt_self();
      sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      *&v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v48 + 1) = v18;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = v15;
      *(inited + 72) = v16;

      v19 = sub_10038ED74(inited);
      swift_setDeallocating();
      sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v19, v21, v22, v23, v24, v25, v26, v27;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1007953F0;
      *(v28 + 32) = a1;
      sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
      v29 = a1;
      v30 = Array._bridgeToObjectiveC()().super.isa;
      v28, v31, v32, v33, v34, v35, v36, v37;
      [v45 mergeChangesFromRemoteContextSave:isa intoContexts:v30];

      if (v16 >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a1 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16, v38, v39, v40, v41, v42, v43, v44;
    }

    else
    {
      a1 = v46;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return a1;
}

uint64_t sub_100427E68()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946888);
  v1 = sub_100006654(v0, qword_100946888);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100427F30(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v81 = a3;
  v82 = a1;
  v79 = a2;
  v7 = *v4;
  v85 = type metadata accessor for UUID();
  v78 = *(v85 - 8);
  v8 = *(v78 + 64);
  __chkstk_darwin(v85, v9);
  v77 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Date();
  v80 = *(v84 - 8);
  v10 = *(v80 + 64);
  __chkstk_darwin(v84, v11);
  v83 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v86 = &v70 - v14;
  v15 = OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicLinkURLUUID;
  v16 = sub_10013FBFC(v4 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicLinkURLUUID);
  if (qword_1009360F8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100946888);
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v75 = v18;
  v76 = v7;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v87[0] = swift_slowAlloc();
    v87[1] = v7;
    *v22 = 136446466;
    swift_getMetatypeMetadata();
    v23 = String.init<A>(describing:)();
    v74 = v15;
    v25 = v24;
    v26 = sub_10000668C(v23, v24, v87);
    v25, v27, v28, v29, v30, v31, v32, v33;
    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v34 = [(objc_class *)v18 recordName];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v8;
    v38 = v37;

    v39 = v35;
    v15 = v74;
    v40 = sub_10000668C(v39, v38, v87);
    v41 = v38;
    v8 = v36;
    v41, v42, v43, v44, v45, v46, v47, v48;
    *(v22 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s: Start execution {recordName: %{public}s}", v22, 0x16u);
    swift_arrayDestroy();
  }

  v49 = v86;
  Date.init()();
  v50 = *(v5 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicCloudDatabaseController + 32);
  v74 = *(v5 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicCloudDatabaseController + 24);
  v71 = v50;
  v73 = sub_10000F61C((v5 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicCloudDatabaseController), v74);
  v72 = type metadata accessor for RDPublicTemplate(0);
  v51 = v80;
  v52 = v84;
  (*(v80 + 16))(v83, v49, v84);
  v53 = v78;
  v54 = v5 + v15;
  v55 = v77;
  (*(v78 + 16))(v77, v54, v85);
  v56 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v57 = (v10 + *(v53 + 80) + v56) & ~*(v53 + 80);
  v58 = (v8 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v58 + 23) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v75;
  *(v59 + 16) = v75;
  (*(v51 + 32))(v59 + v56, v83, v52);
  (*(v53 + 32))(v59 + v57, v55, v85);
  v61 = (v59 + v58);
  v62 = v81;
  v63 = v82;
  *v61 = v79;
  v61[1] = v62;
  v64 = v71;
  v65 = v59 + v70;
  *v65 = v63;
  *(v65 + 8) = 0;
  *(v59 + ((v58 + 39) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v66 = *(v64 + 24);
  v67 = v60;

  v68 = v63;
  v66(v67, v72, sub_100429FD8, v59, v72, &off_1008E60A0, v74, v64, a4);

  return (*(v51 + 8))(v86, v84);
}

uint64_t sub_100428450(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v57 = a1;
  v58 = a6;
  v56 = a2;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v55 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = &v53 - v17;
  if (qword_1009360F8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100946888);
  (*(v12 + 16))(v18, a4, v11);
  v20 = a3;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v54 = a5;
    v24 = v23;
    v59[0] = swift_slowAlloc();
    v59[1] = a7;
    *v24 = 136446722;
    swift_getMetatypeMetadata();
    v25 = String.init<A>(describing:)();
    v27 = v26;
    v28 = sub_10000668C(v25, v26, v59);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    v36 = [v20 recordName];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = sub_10000668C(v37, v39, v59);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v24 + 14) = v40;
    *(v24 + 22) = 2048;
    v48 = v55;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v50 = v49;
    v51 = *(v12 + 8);
    v51(v48, v11);
    v51(v18, v11);
    *(v24 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s: Finished execution {recordName: %{public}s, elapsedSeconds: %f}", v24, 0x20u);
    swift_arrayDestroy();

    a5 = v54;
  }

  else
  {

    (*(v12 + 8))(v18, v11);
  }

  return a5(v57, v56 & 1);
}

uint64_t sub_10042878C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6, void *a7, int a8, void **a9)
{
  v175 = a8;
  v183 = a7;
  v185 = a5;
  v186 = a6;
  v179 = a4;
  v190 = a3;
  v184 = a2;
  v188 = a9;
  v182 = type metadata accessor for UUID();
  v174 = *(v182 - 8);
  __chkstk_darwin(v182, v10);
  v173 = v11;
  v181 = &v167[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v12 - 8, v13);
  v177 = &v167[-v14];
  v191 = type metadata accessor for Date();
  v189 = *(v191 - 8);
  v15 = *(v189 + 64);
  __chkstk_darwin(v191, v16);
  v17 = &v167[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18, v19);
  v178 = &v167[-v20];
  __chkstk_darwin(v21, v22);
  v187 = &v167[-v23];
  __chkstk_darwin(v24, v25);
  v27 = &v167[-v26];
  v176 = type metadata accessor for RDPublicTemplate(0);
  v172 = *(v176 - 8);
  v28 = *(v172 + 64);
  __chkstk_darwin(v176, v29);
  v180 = &v167[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30, v31);
  v33 = &v167[-v32];
  v34 = sub_1000F5104(&qword_100946978, &qword_1007A9248);
  __chkstk_darwin(v34, v35);
  v37 = &v167[-v36];
  sub_100010364(a1, &v167[-v36], &qword_100946978, &qword_1007A9248);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *v37;
    if (qword_1009360F8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_100946888);
    v40 = v189;
    v41 = v191;
    (*(v189 + 16))(v17, v190, v191);
    v42 = v184;
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v198 = v184;
      *v45 = 136446978;
      aBlock = v188;
      swift_getMetatypeMetadata();
      v46 = String.init<A>(describing:)();
      v48 = v47;
      v49 = sub_10000668C(v46, v47, &v198);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      v57 = [v42 recordName];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v42;
      v61 = v60;

      v62 = sub_10000668C(v58, v61, &v198);
      v63 = v61;
      v42 = v59;
      v63, v64, v65, v66, v67, v68, v69, v70;
      *(v45 + 14) = v62;
      *(v45 + 22) = 2082;
      swift_getErrorValue();
      v71 = Error.rem_errorDescription.getter();
      v73 = v72;
      v74 = sub_10000668C(v71, v72, &v198);
      v73, v75, v76, v77, v78, v79, v80, v81;
      *(v45 + 24) = v74;
      *(v45 + 32) = 2048;
      v82 = v187;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v84 = v83;
      v85 = *(v40 + 8);
      v86 = v82;
      v87 = v191;
      v85(v86, v191);
      v85(v17, v87);
      *(v45 + 34) = v84;
      _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s: Failed to download public template {recordName: %{public}s, error: %{public}s, elapsedSeconds: %f}", v45, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v40 + 8))(v17, v41);
    }

    v128 = v186;
    aBlock = v38;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v129 = v198;
      aBlock = v198;
      sub_10042A100();
      _BridgedStoredNSError.code.getter();
      if (v198 == 4)
      {
        v134 = [objc_opt_self() internetNotReachableError];

        goto LABEL_28;
      }

      if (v198 == 11)
      {
        v130 = objc_opt_self();
        type metadata accessor for REMCDTemplate();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v133 = [ObjCClassFromMetadata objectIDWithUUID:isa];

        v134 = [v130 noSuchObjectErrorWithObjectID:v133];
LABEL_28:
        swift_errorRetain();
        sub_100428450(v134, 1, v42, v190, v185, v128, v188);
      }
    }

    v134 = v38;
    goto LABEL_28;
  }

  sub_10042A158(v37, v33);
  v88 = v33;
  if (qword_1009360F8 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  sub_100006654(v89, qword_100946888);
  v90 = v189;
  v91 = *(v189 + 16);
  v92 = v191;
  v171 = v189 + 16;
  v170 = v91;
  v91(v27, v190, v191);
  v93 = v184;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();

  v96 = os_log_type_enabled(v94, v95);
  v184 = v93;
  if (v96)
  {
    v97 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v198 = v169;
    *v97 = 136446722;
    aBlock = v188;
    swift_getMetatypeMetadata();
    v98 = String.init<A>(describing:)();
    v168 = v95;
    v100 = v99;
    v101 = sub_10000668C(v98, v99, &v198);
    v100, v102, v103, v104, v105, v106, v107, v108;
    *(v97 + 4) = v101;
    *(v97 + 12) = 2082;
    v109 = [v93 recordName];
    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v88;
    v113 = v112;

    v114 = v110;
    v90 = v189;
    v115 = sub_10000668C(v114, v113, &v198);
    v113, v116, v117, v118, v119, v120, v121, v122;
    *(v97 + 14) = v115;
    *(v97 + 22) = 2048;
    v123 = v187;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v125 = v124;
    v126 = *(v90 + 8);
    v127 = v123;
    v88 = v111;
    v126(v127, v191);
    v126(v27, v191);
    *(v97 + 24) = v125;
    _os_log_impl(&_mh_execute_header, v94, v168, "%{public}s: Downloaded public template {recordName: %{public}s, elapsedSeconds: %f}", v97, 0x20u);
    swift_arrayDestroy();

    v92 = v191;
  }

  else
  {

    v126 = *(v90 + 8);
    v126(v27, v92);
  }

  v135 = v178;
  v136 = v177;
  sub_100010364(v88 + *(v176 + 36), v177, &unk_100938850, qword_100795AE0);
  if ((*(v90 + 48))(v136, 1, v92) == 1)
  {
    v137 = v92;
    sub_1001AAD5C(v136);
  }

  else
  {
    (*(v90 + 32))(v135, v136, v92);
    v138 = v187;
    static Date.now.getter();
    v139 = static Date.< infix(_:_:)();
    v126(v138, v92);
    if (v139)
    {
      v140 = objc_opt_self();
      type metadata accessor for REMCDTemplate();
      v141 = swift_getObjCClassFromMetadata();
      v142 = UUID._bridgeToObjectiveC()().super.isa;
      v143 = [v141 objectIDWithUUID:v142];

      v144 = [v140 noSuchObjectErrorWithObjectID:v143];
      v145 = v144;
      sub_100428450(v144, 1, v184, v190, v185, v186, v188);

      v126(v135, v92);
      return sub_1003B52F4(v88);
    }

    v137 = v92;
    v126(v135, v92);
  }

  v147 = v174;
  (*(v174 + 16))(v181, v179, v182);
  sub_10042A1BC(v88, v180);
  v170(v187, v190, v137);
  v148 = (*(v147 + 80) + 16) & ~*(v147 + 80);
  v149 = (v173 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
  v150 = (*(v172 + 80) + v149 + 8) & ~*(v172 + 80);
  v151 = (v28 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
  v152 = v189;
  v153 = *(v189 + 80);
  v190 = v88;
  v154 = (v153 + v151 + 8) & ~v153;
  v155 = (v15 + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
  v156 = swift_allocObject();
  (*(v147 + 32))(v156 + v148, v181, v182);
  *(v156 + v149) = v183;
  sub_10042A158(v180, v156 + v150);
  v157 = v184;
  *(v156 + v151) = v184;
  (*(v152 + 32))(v156 + v154, v187, v191);
  v158 = (v156 + v155);
  v159 = v186;
  *v158 = v185;
  v158[1] = v159;
  *(v156 + ((v155 + 23) & 0xFFFFFFFFFFFFFFF8)) = v188;
  if (v175)
  {
    v160 = swift_allocObject();
    *(v160 + 16) = sub_10042A220;
    *(v160 + 24) = v156;
    v196 = sub_1000529DC;
    v197 = v160;
    aBlock = _NSConcreteStackBlock;
    v193 = 1107296256;
    v194 = sub_10000F160;
    v195 = &unk_1008F1638;
    v161 = _Block_copy(&aBlock);
    v162 = v157;
    v163 = v183;

    [v163 performBlockAndWait:v161];
    _Block_release(v161);

    sub_1003B52F4(v190);
    LOBYTE(v161) = swift_isEscapingClosureAtFileLocation();

    if ((v161 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v196 = sub_10042A220;
  v197 = v156;
  aBlock = _NSConcreteStackBlock;
  v193 = 1107296256;
  v194 = sub_100019200;
  v195 = &unk_1008F15E8;
  v164 = _Block_copy(&aBlock);
  v165 = v157;
  v166 = v183;

  [v166 performBlock:v164];
  _Block_release(v164);

  return sub_1003B52F4(v190);
}

void sub_1004296A4(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(void, void), uint64_t a7, void *a8)
{
  v122 = a6;
  v123 = a8;
  v121 = a7;
  v124 = a5;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v120 = &v117 - v19;
  __chkstk_darwin(v20, v21);
  v23 = &v117 - v22;
  v24 = sub_10041621C(a1, a2);
  sub_1006E8AFC(a3);
  v119 = v24;
  v125 = 0;
  if ([a2 save:&v125])
  {
    v25 = qword_1009360F8;
    v26 = v125;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_100946888);
    (*(v13 + 16))(v23, v124, v12);
    v28 = a4;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v118 = v28;

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v31 = 136446722;
      v125 = v123;
      swift_getMetatypeMetadata();
      v32 = String.init<A>(describing:)();
      v34 = v33;
      v35 = sub_10000668C(v32, v33, &v126);
      v34, v36, v37, v38, v39, v40, v41, v42;
      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      v43 = [v118 recordName];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_10000668C(v44, v46, &v126);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v31 + 14) = v47;
      *(v31 + 22) = 2048;
      v55 = v120;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v57 = v56;
      v58 = *(v13 + 8);
      v58(v55, v12);
      v58(v23, v12);
      *(v31 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s: Saved public template in cache {recordName: %{public}s, elapsedSeconds: %f}", v31, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v23, v12);
    }

    v109 = v119;
    v110 = sub_1006E8E28();
    if (v110)
    {
      v111 = v110;
      v112 = v110;
      sub_100428450(v111, 0, v118, v124, v122, v121, v123);
    }

    else
    {
      type metadata accessor for REMCDPublicTemplate();
      v113 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v115 = String._bridgeToObjectiveC()();
      v116 = [v113 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v115];

      sub_100428450(v116, 1, v118, v124, v122, v121, v123);
    }
  }

  else
  {
    v59 = v125;
    v60 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v61 = v13;
    if (qword_1009360F8 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100006654(v62, qword_100946888);
    (*(v13 + 16))(v16, v124, v12);
    v63 = a4;
    swift_errorRetain();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v126 = v119;
      *v66 = 136446978;
      v125 = v123;
      swift_getMetatypeMetadata();
      v67 = String.init<A>(describing:)();
      LODWORD(v118) = v65;
      v69 = v68;
      v70 = sub_10000668C(v67, v68, &v126);
      v117 = v12;
      v71 = v70;
      v69, v72, v73, v74, v75, v76, v77, v78;
      *(v66 + 4) = v71;
      *(v66 + 12) = 2082;
      v79 = [v63 recordName];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v61;
      v83 = v82;

      v84 = sub_10000668C(v80, v83, &v126);
      v83, v85, v86, v87, v88, v89, v90, v91;
      *(v66 + 14) = v84;
      *(v66 + 22) = 2082;
      swift_getErrorValue();
      v92 = Error.rem_errorDescription.getter();
      v94 = v93;
      v95 = sub_10000668C(v92, v93, &v126);
      v94, v96, v97, v98, v99, v100, v101, v102;
      *(v66 + 24) = v95;
      *(v66 + 32) = 2048;
      v103 = v120;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v105 = v104;
      v106 = *(v81 + 8);
      v107 = v103;
      v108 = v117;
      v106(v107, v117);
      v106(v16, v108);
      *(v66 + 34) = v105;
      _os_log_impl(&_mh_execute_header, v64, v118, "%{public}s: Failed to save public template in cache {recordName: %{public}s, error: %{public}s, elapsedSeconds: %f}", v66, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    swift_errorRetain();
    sub_100428450(v60, 1, v63, v124, v122, v121, v123);
  }
}

uint64_t sub_100429E34()
{
  v1 = OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicLinkURLUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000607C((v0 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicCloudDatabaseController));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDTemplateOperationDownloadPublicTemplate(uint64_t a1)
{
  result = qword_1009468E0;
  if (!qword_1009468E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100429F34(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100429FD8(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10042878C(a1, *(v1 + 16), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v8 + 8), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_10042A100()
{
  result = qword_1009371E8;
  if (!qword_1009371E8)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009371E8);
  }

  return result;
}

uint64_t sub_10042A158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDPublicTemplate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042A1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDPublicTemplate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10042A220()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for RDPublicTemplate(0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for Date() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v3);
  v12 = *(v0 + v6);
  v13 = v0 + v9;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v0 + v10);

  sub_1004296A4((v0 + v2), v11, (v0 + v5), v12, v0 + v8, v14, v15, v16);
}

uint64_t sub_10042A3B4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946980);
  v1 = sub_100006654(v0, qword_100946980);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDRecurrenceRule.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDRecurrenceRule.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v9 = String._bridgeToObjectiveC()();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v19 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v19)
  {
    v20 = [a2 ckIdentifier];
    if (v20)
    {
      v21 = v20;
      [v19 mergeDataFromRecord:a1 accountID:v20];

      v22 = v19;
      [v22 setCkServerRecord:a1];
      [v22 setInCloud:1];

      [v22 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100936100 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_100946980);
      v24 = a2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v4;
        *v27 = 136446466;
        swift_getMetatypeMetadata();
        v28 = String.init<A>(describing:)();
        v30 = v29;
        v31 = sub_10000668C(v28, v29, &v54);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        v39 = [v24 remObjectID];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 description];

          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        v45 = sub_10000668C(v42, v44, &v54);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v27 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v25, v26, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v27, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v19;
}

Swift::String __swiftcall REMCDRecurrenceRule.recordType()()
{
  v0 = 0x6E65727275636552;
  v1 = 0xEE00656C75526563;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDRecurrenceRule.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v55 - v7;
  v9 = String._bridgeToObjectiveC()();
  v58.receiver = v3;
  v58.super_class = REMCDRecurrenceRule;
  objc_msgSendSuper2(&v58, "mergeDataFromRecord:accountID:", from.super.isa, v9);

  v10 = [(objc_class *)from.super.isa recordID];
  v11 = [v10 recordName];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    v11 = String._bridgeToObjectiveC()();
    v13, v14, v15, v16, v17, v18, v19, v20;
  }

  v21 = [v3 ckIdentifierFromRecordName:v11];

  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    v21 = String._bridgeToObjectiveC()();
    v23, v24, v25, v26, v27, v28, v29, v30;
  }

  [v3 setCkIdentifier:v21];

  v31 = 0;
  v55[1] = "nDownloadPublicTemplate";
  do
  {
    v32 = *(&off_1008E33E8 + v31 + 32);
    if (v32 > 5)
    {
      if (*(&off_1008E33E8 + v31 + 32) > 8u)
      {
        if (v32 == 9)
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          isa = 0;
          v46 = v57;
          if (v57 >> 60 != 15)
          {
            v47 = v56;
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v47, v46);
          }

          [v3 setMonthsOfTheYear:isa];
          goto LABEL_7;
        }

        if (v32 == 10)
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          isa = 0;
          v39 = v57;
          if (v57 >> 60 != 15)
          {
            v40 = v56;
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v40, v39);
          }

          [v3 setWeeksOfTheYear:isa];
          goto LABEL_7;
        }

        if (CKRecord.subscript.getter())
        {
          objc_opt_self();
          v52 = swift_dynamicCastObjCClass();
          if (!v52)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v52 = 0;
        }

        v53 = sub_1001287DC(v52);

        if (v53)
        {
          objc_opt_self();
          v54 = swift_dynamicCastObjCClass();
          if (!v54)
          {
          }
        }

        else
        {
          v54 = 0;
        }

        [v3 setReminder:v54];
      }

      else
      {
        if (v32 == 6)
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          isa = 0;
          v43 = v57;
          if (v57 >> 60 != 15)
          {
            v44 = v56;
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v44, v43);
          }

          [v3 setDaysOfTheWeek:isa];
          goto LABEL_7;
        }

        if (v32 == 7)
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          isa = 0;
          v35 = v57;
          if (v57 >> 60 != 15)
          {
            v36 = v56;
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v36, v35);
          }

          [v3 setDaysOfTheYear:isa];
          goto LABEL_7;
        }

        sub_10018E134();
        CKRecordKeyValueSetting.subscript.getter();
        if (BYTE2(v56))
        {
          v49 = 0;
        }

        else
        {
          v49 = v56;
        }

        [v3 setFirstDayOfTheWeek:v49];
      }
    }

    else if (*(&off_1008E33E8 + v31 + 32) > 2u)
    {
      if (v32 != 3)
      {
        if (v32 == 4)
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          isa = 0;
          v37 = v57;
          if (v57 >> 60 != 15)
          {
            v38 = v56;
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v38, v37);
          }

          [v3 setSetPositions:isa];
        }

        else
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          isa = 0;
          v50 = v57;
          if (v57 >> 60 != 15)
          {
            v51 = v56;
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v51, v50);
          }

          [v3 setDaysOfTheMonth:isa];
        }

        goto LABEL_7;
      }

      sub_10018E134();
      CKRecordKeyValueSetting.subscript.getter();
      if (v57)
      {
        v45 = 0;
      }

      else
      {
        v45 = v56;
      }

      [v3 setOccurrenceCount:v45];
    }

    else
    {
      if (!*(&off_1008E33E8 + v31 + 32))
      {
        sub_10018E134();
        v41 = type metadata accessor for Date();
        CKRecordKeyValueSetting.subscript.getter();
        v42 = *(v41 - 8);
        isa = 0;
        if ((*(v42 + 48))(v8, 1, v41) != 1)
        {
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v42 + 8))(v8, v41);
        }

        [v3 setEndDate:isa];
LABEL_7:

        goto LABEL_8;
      }

      if (v32 == 1)
      {
        sub_10018E134();
        CKRecordKeyValueSetting.subscript.getter();
        if (BYTE2(v56))
        {
          v33 = 0;
        }

        else
        {
          v33 = v56;
        }

        [v3 setFrequency:v33];
      }

      else
      {
        sub_10018E134();
        CKRecordKeyValueSetting.subscript.getter();
        if (BYTE2(v56))
        {
          v48 = 0;
        }

        else
        {
          v48 = v56;
        }

        [v3 setInterval:v48];
      }
    }

LABEL_8:
    ++v31;
  }

  while (v31 != 12);
}

CKRecord_optional __swiftcall REMCDRecurrenceRule.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v6, v7).n128_u64[0];
  v10 = v34 - v9;
  v38.receiver = v0;
  v38.super_class = REMCDRecurrenceRule;
  v12 = objc_msgSendSuper2(&v38, "newlyCreatedRecord", v8);
  if (v12)
  {
    v13 = 0;
    v34[1] = "nDownloadPublicTemplate";
    do
    {
      v14 = *(&off_1008E33E8 + v13 + 32);
      if (v14 > 5)
      {
        if (*(&off_1008E33E8 + v13 + 32) > 8u)
        {
          if (v14 == 9)
          {
            v16 = [v1 monthsOfTheYear];
            if (!v16)
            {
              v37 = 0;
              v35 = 0u;
              v36 = 0u;
              goto LABEL_45;
            }
          }

          else
          {
            if (v14 != 10)
            {
              v26 = [v1 reminder];
              if (v26)
              {
                v27 = v26;
                v28 = [v26 recordID];
              }

              else
              {
                v28 = 0;
              }

              v32 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v28];

              CKRecord.subscript.setter();
              goto LABEL_47;
            }

            v16 = [v1 weeksOfTheYear];
            if (!v16)
            {
              v37 = 0;
              v35 = 0u;
              v36 = 0u;
              goto LABEL_45;
            }
          }

LABEL_32:
          v22 = v16;
          v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          *(&v36 + 1) = &type metadata for Data;
          v37 = &protocol witness table for Data;
          *&v35 = v23;
          *(&v35 + 1) = v25;
          goto LABEL_45;
        }

        if (v14 == 6)
        {
          v16 = [v1 daysOfTheWeek];
          if (!v16)
          {
            v37 = 0;
            v35 = 0u;
            v36 = 0u;
            goto LABEL_45;
          }

          goto LABEL_32;
        }

        if (v14 == 7)
        {
          v16 = [v1 daysOfTheYear];
          if (v16)
          {
            goto LABEL_32;
          }

          v37 = 0;
          v35 = 0u;
          v36 = 0u;
          goto LABEL_45;
        }

        v21 = [v1 firstDayOfTheWeek];
        *(&v36 + 1) = &type metadata for Int16;
        v37 = &protocol witness table for Int16;
        LOWORD(v35) = v21;
        sub_10018E134();
      }

      else
      {
        if (*(&off_1008E33E8 + v13 + 32) <= 2u)
        {
          if (*(&off_1008E33E8 + v13 + 32))
          {
            if (v14 == 1)
            {
              v15 = [v1 frequency];
            }

            else
            {
              v15 = [v1 interval];
            }

            *(&v36 + 1) = &type metadata for Int16;
            v37 = &protocol witness table for Int16;
            LOWORD(v35) = v15;
            sub_10018E134();
            goto LABEL_46;
          }

          v17 = [v1 endDate];
          if (v17)
          {
            v18 = v17;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v19 = 0;
          }

          else
          {
            v19 = 1;
          }

          v29 = type metadata accessor for Date();
          v30 = *(v29 - 8);
          (*(v30 + 56))(v5, v19, 1, v29);
          sub_10012F7FC(v5, v10);
          if ((*(v30 + 48))(v10, 1, v29) == 1)
          {
            sub_1001AAD5C(v10);
            v35 = 0u;
            v36 = 0u;
            v37 = 0;
          }

          else
          {
            *(&v36 + 1) = v29;
            v37 = &protocol witness table for Date;
            v31 = sub_1000103CC(&v35);
            (*(v30 + 32))(v31, v10, v29);
          }

          goto LABEL_45;
        }

        if (v14 != 3)
        {
          if (v14 == 4)
          {
            v16 = [v1 setPositions];
            if (v16)
            {
              goto LABEL_32;
            }

            v37 = 0;
            v35 = 0u;
            v36 = 0u;
          }

          else
          {
            v16 = [v1 daysOfTheMonth];
            if (v16)
            {
              goto LABEL_32;
            }

            v37 = 0;
            v35 = 0u;
            v36 = 0u;
          }

LABEL_45:
          sub_10018E134();
          goto LABEL_46;
        }

        v20 = [v1 occurrenceCount];
        v37 = &protocol witness table for Int64;
        *(&v36 + 1) = &type metadata for Int64;
        *&v35 = v20;
        sub_10018E134();
      }

LABEL_46:
      CKRecordKeyValueSetting.subscript.setter();
LABEL_47:
      ++v13;
    }

    while (v13 != 12);
  }

  v33 = v12;
  result.value.super.isa = v33;
  result.is_nil = v11;
  return result;
}

Swift::Void __swiftcall REMCDRecurrenceRule.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100936100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100946980);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946998, &qword_1007A9250);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

Swift::Void __swiftcall REMCDRecurrenceRule.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100936100 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_100946980);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v73 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v75);
  v14, v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v23 = [v4 reminder];
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v23 remObjectID];
  if (!v25)
  {

LABEL_12:
    v29 = 0xE300000000000000;
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

LABEL_13:
  v30 = sub_10000668C(v7, v29, &v75);
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(v8 + 14) = v30;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for recurrence rule {recurrenceRuleID: %{public}s, reminderID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v38 = [v4 reminder];
  if (v38)
  {
    v74 = v38;
    if ([v38 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
    {
      v39 = v4;
      v40 = v74;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v43 = 136446466;
        v44 = &selRef_persistentStoreForIdentifier_;
        v45 = [v39 remObjectID];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 description];

          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v44 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v50 = 0xE300000000000000;
          v48 = 7104878;
        }

        v51 = sub_10000668C(v48, v50, &v75);
        v50, v52, v53, v54, v55, v56, v57, v58;
        *(v43 + 4) = v51;
        *(v43 + 12) = 2082;
        v59 = [v40 v44[106]];
        if (v59)
        {
          v60 = v59;
          v61 = [v59 description];

          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
        }

        else
        {
          v64 = 0xE300000000000000;
          v62 = 7104878;
        }

        v65 = sub_10000668C(v62, v64, &v75);
        v64, v66, v67, v68, v69, v70, v71, v72;
        *(v43 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v41, v42, "Reminder is marked for deletion but recurrence rule is not {recurrenceRuleID: %{public}s, reminderID: %{public}s}", v43, 0x16u);
        swift_arrayDestroy();
      }

      [v39 markForDeletion];
    }

    [v74 forcePushToCloud];
  }
}

uint64_t _sSo19REMCDRecurrenceRuleC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100936100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100946980);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946998, &qword_1007A9250);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo19REMCDRecurrenceRuleC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100936100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100946980);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946998, &qword_1007A9250);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

void sub_10042C5D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v36 = a4;
  v5 = v4;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v11)) | (v14 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(*(a1 + 56) + 8 * v15);
      v35[0] = *v16;
      v35[1] = v17;
      v35[2] = v18;

      v19 = v18;
      sub_10042D348(v35, a2, a3, v36);
      if (v5)
      {
        break;
      }

      v11 &= v11 - 1;

      v17, v20, v21, v22, v23, v24, v25, v26;
      v13 = v14;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v17, v27, v28, v29, v30, v31, v32, v33;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_10042C740(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 hashtags];
  if (v3)
  {
    v4 = v3;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_10026E1F4();
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_10042C7CC(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_10026E1F4();
    v3.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setHashtags:?];
}

uint64_t sub_10042C868@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100260B5C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10042C970@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100260B98(v5, v7, v8, v9, v10, v11, v12, v13);
    v5 = result;
  }

  v14 = *(v5 + 16);
  if (v14 <= a1)
  {
    __break(1u);
  }

  else
  {
    v15 = v14 - 1;
    v16 = v5 + 48 * a1;
    v17 = *(v16 + 32);
    v16 += 32;
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = *(v16 + 32);
    v21 = *(v16 + 40);
    result = memmove(v16, (v16 + 48), 48 * (v14 - 1 - a1));
    *(v5 + 16) = v15;
    *v2 = v5;
    *a2 = v17;
    *(a2 + 16) = v18;
    *(a2 + 24) = v19;
    *(a2 + 32) = v20;
    *(a2 + 40) = v21;
  }

  return result;
}

uint64_t sub_10042CA3C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100260BC0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(sub_1000F5104(&qword_100944128, &qword_1007A4890) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100431CA8(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10042CB80(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_10042CC18()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009469A0);
  v1 = sub_100006654(v0, qword_1009469A0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10042CCE0()
{
  sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
  swift_getKeyPath();
  v0 = NSExpression.init<A, B>(forKeyPath:)();
  v1 = [v0 keyPath];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = String._bridgeToObjectiveC()();
  v3, v6, v7, v8, v9, v10, v11, v12;
  v13 = [v4 initWithKey:v5 ascending:1 selector:"localizedStandardCompare:"];

  qword_100974E68 = v13;
}

void sub_10042CDC0()
{
  sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
  swift_getKeyPath();
  v0 = NSExpression.init<A, B>(forKeyPath:)();
  v1 = [v0 keyPath];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = String._bridgeToObjectiveC()();
  v3, v6, v7, v8, v9, v10, v11, v12;
  v13 = [v4 initWithKey:v5 ascending:0];

  qword_100974E70 = v13;
}

uint64_t sub_10042CE94@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 recencyDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_10042CF38(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_10012F78C(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setRecencyDate:isa];
}

unint64_t sub_10042D064(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_10042D174(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (1)
  {
    v9 = String.subscript.getter();
    v17 = v10;
    if (v9 == a1 && v10 == a2)
    {
      break;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v17, v19, v20, v21, v22, v23, v24, v25;
    if (v18)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  v10, v10, v11, v12, v13, v14, v15, v16;
  return v8;
}

void sub_10042D264(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    v8 = objc_opt_self();
    sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = String._bridgeToObjectiveC()();
    [v8 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v10];

    swift_willThrow();
  }
}

void sub_10042D348(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a2;
  if (*(*a2 + 16) && (v6 = *a1, v7 = a1[1], v8 = sub_100005F4C(*a1, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v4 + 56) + 8 * v8);
    v11 = [v10 name];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (*(*a4 + 16) && (sub_100005F4C(v6, v7), (v16 & 1) != 0))
      {
      }

      else
      {
        v17 = 0;
      }

      sub_10031DACC(v17, v13, v15);
    }

    else
    {
      if (qword_100936108 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006654(v21, qword_1009469A0);
      v10 = v10;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138543362;
        v26 = [v10 objectID];
        *(v24 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&_mh_execute_header, v22, v23, "Skipping HashtagLabel with nil name in reminderIDsByHashtagLabelNames(from:) {mid: %{public}@}", v24, 0xCu);
        sub_1000050A4(v25, &unk_100938E70, &unk_100797230);
      }

      else
      {

        v10 = v22;
      }
    }
  }

  else
  {
    if (qword_100936108 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_1009469A0);
    v10 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v10, v19, "Skipping nil HashtagLabel in reminderIDsByHashtagLabelNames(from:)", v20, 2u);
    }
  }
}

uint64_t sub_10042D618(uint64_t a1, uint64_t a2)
{
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v4 = 136446722;
    sub_1000F5104(&qword_100940958, &qword_1007A0260);
    sub_1000F5104(&qword_100946A10, &qword_1007A9320);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    v8 = sub_10000668C(v5, v6, &v39);
    v7, v9, v10, v11, v12, v13, v14, v15;
    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
    sub_1000F5104(&qword_100946A18, &qword_1007A9328);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    v19 = sub_10000668C(v16, v17, &v39);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v4 + 14) = v19;
    *(v4 + 22) = 2080;
    swift_getErrorValue();
    v27 = Error.localizedDescription.getter();
    v29 = v28;
    v30 = sub_10000668C(v27, v28, &v39);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v4 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v4, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_10042D85C(unint64_t a1)
{
  v187 = type metadata accessor for UUID();
  v2 = *(v187 - 8);
  __chkstk_darwin(v187, v3);
  v186 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v171 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v169 = &v164 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v168 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v172 = &v164 - v17;
  __chkstk_darwin(v18, v19);
  v178 = &v164 - v20;
  v21 = &_swiftEmptyArrayStorage;
  v197[0] = sub_10038E5F0(&_swiftEmptyArrayStorage);
  v22 = sub_10038E5F0(&_swiftEmptyArrayStorage);
  v196 = v22;
  v188 = sub_10038E604(&_swiftEmptyArrayStorage);
  v195 = v188;
  if (a1 >> 62)
  {
    goto LABEL_86;
  }

  v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v24)
  {
    while (2)
    {
      v25 = 0;
      v183 = a1 & 0xC000000000000001;
      v174 = a1 & 0xFFFFFFFFFFFFFF8;
      v173 = a1 + 32;
      v170 = v12 + 4;
      v177 = v12 + 7;
      v165 = &v12[6];
      v167 = v12 + 1;
      v185 = (v2 + 8);
      *&v23 = 138543362;
      v166 = v23;
      v179 = v21 >> 62;
      v175 = v11;
      v182 = v24;
      v176 = a1;
      while (1)
      {
        if (v183)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *(v174 + 16))
          {
            goto LABEL_84;
          }

          v36 = *(v173 + 8 * v25);
        }

        v2 = v36;
        v37 = __OFADD__(v25++, 1);
        if (v37)
        {
          goto LABEL_82;
        }

        v38 = [v36 canonicalName];
        if (v38)
        {
          break;
        }

        if (qword_100936108 != -1)
        {
          swift_once();
        }

        v67 = type metadata accessor for Logger();
        sub_100006654(v67, qword_1009469A0);
        v2 = v2;
        v12 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v12, v21))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v68 = v166;
          v70 = [v2 objectID];
          *(v68 + 4) = v70;
          *v69 = v70;
          _os_log_impl(&_mh_execute_header, v12, v21, "Skipping HashtagLabel with nil canonicalName in reminderIDsByHashtagLabelNames(from:) {mid: %{public}@}", v68, 0xCu);
          sub_1000050A4(v69, &unk_100938E70, &unk_100797230);

          v24 = v182;

LABEL_76:
          goto LABEL_5;
        }

LABEL_5:
        if (v25 == v24)
        {
          goto LABEL_87;
        }
      }

      v39 = v38;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = v188;
      v44 = *(v188 + 16);
      v190 = v2;
      v191 = v42;
      v189 = v40;
      if (v44)
      {
        v45 = sub_100005F4C(v40, v42);
        if (v46)
        {
          v47 = *(*(v43 + 56) + 8 * v45);
          v48 = [v47 firstOccurrenceCreationDate];
          if (v48)
          {
            v49 = v172;
            v50 = v48;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            isa = v170->isa;
            v52 = v169;
            (v170->isa)(v169, v49, v11);
            v53 = v177->isa;
            (v177->isa)(v52, 0, 1, v11);
            isa(v178, v52, v11);
          }

          else
          {
            v53 = v177->isa;
            v74 = v169;
            (v177->isa)(v169, 1, 1, v11);
            static Date.distantFuture.getter();
            if ((*v165)(v74, 1, v11) != 1)
            {
              sub_1000050A4(v74, &unk_100938850, qword_100795AE0);
            }
          }

          v75 = [v190 firstOccurrenceCreationDate];
          if (v75)
          {
            v76 = v172;
            v77 = v75;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v78 = v170->isa;
            v79 = v171;
            (v170->isa)(v171, v76, v11);
            v53(v79, 0, 1, v11);
            v80 = v168;
            v78(v168, v79, v11);
          }

          else
          {
            v81 = v171;
            v53(v171, 1, 1, v11);
            v80 = v168;
            static Date.distantFuture.getter();
            if ((*v165)(v81, 1, v11) != 1)
            {
              sub_1000050A4(v171, &unk_100938850, qword_100795AE0);
            }
          }

          v82 = v178;
          v83 = static Date.> infix(_:_:)();
          v84 = v80;
          v85 = v167->isa;
          (v167->isa)(v84, v11);
          v85(v82, v11);
          v2 = v190;
          if (v83)
          {
            v86 = v190;
          }

          else
          {
            v86 = v47;
          }

          v87 = v86;
          v88 = v191;

          v89 = v195;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v194[0] = v89;
          v12 = v194;
          sub_1002C72A0(v87, v189, v88, isUniquelyReferenced_nonNull_native);

          v88, v91, v92, v93, v94, v95, v96, v97;
          v73 = v194[0];
          v195 = v194[0];
          goto LABEL_41;
        }
      }

      v21 = v2;
      v12 = v195;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v194[0] = v12;
      v55 = sub_100005F4C(v40, v42);
      v63 = v12[2].isa;
      v64 = (v56 & 1) == 0;
      v37 = __OFADD__(v63, v64);
      v65 = v63 + v64;
      if (v37)
      {
        goto LABEL_83;
      }

      v66 = v56;
      if (v12[3].isa >= v65)
      {
        if ((v54 & 1) == 0)
        {
          v2 = v55;
          sub_100373650();
          v55 = v2;
          v12 = v194[0];
          if (v66)
          {
            goto LABEL_26;
          }

          break;
        }
      }

      else
      {
        sub_10036A8DC(v65, v54);
        v55 = sub_100005F4C(v40, v191);
        if ((v66 & 1) != (v56 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v12 = v194[0];
      if (v66)
      {
LABEL_26:
        v71 = v12[7].isa;
        v72 = *(v71 + v55);
        *(v71 + v55) = v21;
        v191, v56, v57, v58, v59, v60, v61, v62;

        v195 = v12;
        v2 = v190;
        v73 = v12;
LABEL_41:
        v102 = *(v22 + 16);
        v188 = v73;
        if (v102 && (v12 = v22, v103 = sub_100005F4C(v189, v191), (v104 & 1) != 0))
        {
          v21 = *(*(v22 + 56) + 8 * v103);
          v194[0] = v21;
        }

        else
        {
          if (v179)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
              sub_100391990(&_swiftEmptyArrayStorage);
              v21 = v138;
            }

            else
            {
              v21 = _swiftEmptySetSingleton;
            }

            v2 = v190;
          }

          else
          {
            v21 = _swiftEmptySetSingleton;
          }

          v194[0] = v21;
        }

        v105 = [v2 hashtags];
        if (v105)
        {
          v113 = v105;
          v181 = v22;
          v114 = sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
          v12 = sub_10026E1F4();
          v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v184 = v114;
          if ((v22 & 0xC000000000000001) != 0)
          {
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v22 = v197[1];
            a1 = v197[2];
            v115 = v197[3];
            v2 = v197[4];
            v116 = v197[5];
          }

          else
          {
            v2 = 0;
            v117 = -1 << *(v22 + 32);
            a1 = v22 + 56;
            v115 = ~v117;
            v118 = -v117;
            if (v118 < 64)
            {
              v119 = ~(-1 << v118);
            }

            else
            {
              v119 = -1;
            }

            v116 = (v119 & *(v22 + 56));
          }

          v180 = v115;
          v11 = (v115 + 64) >> 6;
LABEL_58:
          if (v22 < 0)
          {
            v12 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
            v124 = __CocoaSet.Iterator.next()();
            if (!v124 || (v192 = v124, swift_dynamicCast(), v123 = v193, v122 = v2, v21 = v116, !v193))
            {
LABEL_70:
              sub_10001B860(v22);
              v21 = v194[0];
              a1 = v176;
              v11 = v175;
              v22 = v181;
              v2 = v190;
              goto LABEL_71;
            }
          }

          else
          {
            v120 = v2;
            v121 = v116;
            v122 = v2;
            if (!v116)
            {
              while (1)
              {
                v122 = (v120 + 1);
                if (__OFADD__(v120, 1))
                {
                  break;
                }

                if (v122 >= v11)
                {
                  goto LABEL_70;
                }

                v121 = *(a1 + 8 * v122);
                ++v120;
                if (v121)
                {
                  goto LABEL_63;
                }
              }

              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              v24 = _CocoaArrayWrapper.endIndex.getter();
              if (!v24)
              {
                goto LABEL_87;
              }

              continue;
            }

LABEL_63:
            v21 = (v121 - 1) & v121;
            v123 = *(*(v22 + 48) + ((v122 << 9) | (8 * __clz(__rbit64(v121)))));
            if (!v123)
            {
              goto LABEL_70;
            }
          }

          v125 = [v123 reminderIdentifier];
          if (v125)
          {
            v126 = v186;
            v12 = v125;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            if (([v123 isConcealed] & 1) == 0)
            {
              sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v128 = UUID._bridgeToObjectiveC()().super.isa;
              v129 = [ObjCClassFromMetadata objectIDWithUUID:v128];

              v12 = v194;
              sub_100378D70(&v193, v129);

              (*v185)(v126, v187);
              goto LABEL_57;
            }

            (*v185)(v126, v187);
          }

LABEL_57:
          v2 = v122;
          v116 = v21;
          goto LABEL_58;
        }

LABEL_71:
        if ((v21 & 0xC000000000000001) != 0)
        {
          v130 = __CocoaSet.count.getter();
        }

        else
        {
          v130 = *(v21 + 16);
        }

        v24 = v182;
        if (!v130)
        {
          v21, v106, v107, v108, v109, v110, v111, v112;
          v191, v131, v132, v133, v134, v135, v136, v137;
          goto LABEL_76;
        }

        v26 = v196;
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v193 = v26;
        v12 = &v193;
        v28 = v21;
        v21 = v191;
        sub_1002C7600(v28, v189, v191, v27);

        v21, v29, v30, v31, v32, v33, v34, v35;
        v22 = v193;
        v196 = v193;
        goto LABEL_5;
      }

      break;
    }

    v12[(v55 >> 6) + 8].isa = (v12[(v55 >> 6) + 8].isa | (1 << v55));
    v98 = (v12[6].isa + 16 * v55);
    v99 = v191;
    *v98 = v40;
    v98[1] = v99;
    *(v12[7].isa + v55) = v21;
    v100 = v12[2].isa;
    v37 = __OFADD__(v100, 1);
    v101 = (v100 + 1);
    if (v37)
    {
      goto LABEL_85;
    }

    v73 = v12;
    v12[2].isa = v101;
    v195 = v12;
    v2 = v190;
    goto LABEL_41;
  }

LABEL_87:
  v139 = v188;

  sub_10042C5D8(v140, &v195, v197, &v196);
  v139, v141, v142, v143, v144, v145, v146, v147;
  v148 = v197[0];
  v22, v149, v150, v151, v152, v153, v154, v155;
  v139, v156, v157, v158, v159, v160, v161, v162;
  return v148;
}

uint64_t sub_10042E5D4(unint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = sub_10038E5F0(&_swiftEmptyArrayStorage);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_59:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

    return v2;
  }

  v4 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v2;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v85 = isUniquelyReferenced_nonNull_native + 32;
    *&v3 = 138543362;
    v84 = v3;
    v88 = isUniquelyReferenced_nonNull_native;
    v86 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v87 = v4;
    while (1)
    {
      if (v6)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v85 + 8 * v5);
      }

      v24 = v23;
      v25 = [v23 canonicalName];
      if (v25)
      {
        v26 = v25;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        if (*(v2 + 16) && (v30 = sub_100005F4C(v27, v29), (v31 & 1) != 0))
        {
          v96 = *(*(v2 + 56) + 8 * v30);
        }

        else
        {
          if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
          {
            sub_100391990(&_swiftEmptyArrayStorage);
          }

          else
          {
            v32 = _swiftEmptySetSingleton;
          }

          v96 = v32;
        }

        v33 = [v24 hashtags];
        v93 = v27;
        v94 = v29;
        if (v33)
        {
          v34 = v33;
          v90 = v24;
          v91 = v2;
          sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
          sub_10026E1F4();
          v35 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          isUniquelyReferenced_nonNull_native = &_swiftEmptyArrayStorage;
          if ((v35 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v36 = v97;
            v37 = v98;
            v38 = v99;
            v2 = v100;
            v39 = v101;
          }

          else
          {
            v50 = -1 << *(v35 + 32);
            v37 = v35 + 56;
            v38 = ~v50;
            v51 = -v50;
            if (v51 < 64)
            {
              v52 = ~(-1 << v51);
            }

            else
            {
              v52 = -1;
            }

            v39 = v52 & *(v35 + 56);

            v2 = 0;
            v36 = v35;
          }

          v89 = v35;
          v92 = v5;
          v53 = (v38 + 64) >> 6;
LABEL_31:
          v54 = v2;
          v55 = v39;
          while (1)
          {
            if (v36 < 0)
            {
              if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v56 = v95, v2 = v54, v39 = v55, !v95))
              {
LABEL_46:
                sub_10001B860(v36);
                v89, v60, v61, v62, v63, v64, v65, v66;
                v4 = v87;
                v49 = v88;
                v2 = v91;
                v5 = v92;
                v6 = v86;
                v24 = v90;
                goto LABEL_47;
              }
            }

            else
            {
              v58 = v54;
              v59 = v55;
              v2 = v54;
              if (!v55)
              {
                while (1)
                {
                  v2 = v58 + 1;
                  if (__OFADD__(v58, 1))
                  {
                    break;
                  }

                  if (v2 >= v53)
                  {
                    goto LABEL_46;
                  }

                  v59 = *(v37 + 8 * v2);
                  ++v58;
                  if (v59)
                  {
                    goto LABEL_32;
                  }
                }

                __break(1u);
                goto LABEL_58;
              }

LABEL_32:
              v39 = (v59 - 1) & v59;
              v56 = *(*(v36 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v59)))));
              if (!v56)
              {
                goto LABEL_46;
              }
            }

            v57 = [v56 remObjectID];

            v54 = v2;
            v55 = v39;
            if (v57)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              isUniquelyReferenced_nonNull_native = &_swiftEmptyArrayStorage;
              goto LABEL_31;
            }
          }
        }

        v49 = isUniquelyReferenced_nonNull_native;
LABEL_47:
        sub_100392144(&_swiftEmptyArrayStorage);
        &_swiftEmptyArrayStorage, v67, v68, v69, v70, v71, v72, v73;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = sub_100005F4C(v93, v94);
        v76 = *(v2 + 16);
        v77 = (v75 & 1) == 0;
        v78 = __OFADD__(v76, v77);
        v79 = v76 + v77;
        if (v78)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v80 = v75;
        if (*(v2 + 24) >= v79)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v82 = v74;
            sub_100373988();
            v74 = v82;
          }
        }

        else
        {
          sub_10036AEBC(v79, isUniquelyReferenced_nonNull_native);
          v74 = sub_100005F4C(v93, v94);
          if ((v80 & 1) != (v81 & 1))
          {
            goto LABEL_62;
          }
        }

        isUniquelyReferenced_nonNull_native = v49;
        if (v80)
        {
          v7 = *(v2 + 56);
          v8 = *(v7 + 8 * v74);
          *(v7 + 8 * v74) = v96;

          v94, v9, v10, v11, v12, v13, v14, v15;
          v8, v16, v17, v18, v19, v20, v21, v22;
        }

        else
        {
          sub_1002CB9B4(v74, v93, v94, v96, v2);
        }
      }

      else
      {
        if (qword_100936108 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_100006654(v40, qword_1009469A0);
        v41 = v24;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = isUniquelyReferenced_nonNull_native;
          v45 = swift_slowAlloc();
          v46 = v2;
          v47 = swift_slowAlloc();
          *v45 = v84;
          v48 = [v41 objectID];
          *(v45 + 4) = v48;
          *v47 = v48;
          _os_log_impl(&_mh_execute_header, v42, v43, "Skipping HashtagLabel with nil canonicalName in hashtagIDsByCanonicalNames(from:) {mid: %{public}@}", v45, 0xCu);
          sub_1000050A4(v47, &unk_100938E70, &unk_100797230);
          v2 = v46;

          isUniquelyReferenced_nonNull_native = v44;
        }

        else
        {
        }
      }

      if (++v5 == v4)
      {
        return v2;
      }
    }
  }

  __break(1u);
LABEL_62:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10042EC48(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v44 = &_swiftEmptyArrayStorage;
  sub_100010D04(0, 1, 0);
  v8 = &_swiftEmptyArrayStorage;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  v9 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v10)
  {
LABEL_20:
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v38._object = 0x80000001007EC120;
    v38._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = v9;
  v12 = v10;
  v43 = &type metadata for String;

  *&v42 = v11;
  *(&v42 + 1) = v12;
  v14 = *_swiftEmptyArrayStorage.clientIdentity;
  v13 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v14 >= v13 >> 1)
  {
    sub_100010D04((v13 > 1), v14 + 1, 1);
    v8 = v44;
  }

  *v8->clientIdentity = v14 + 1;
  sub_100005EE0(&v42, &v8->clientIdentity[32 * v14 + 16]);
  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1007953F0;
  *(v15 + 32) = swift_getKeyPath();
  v44 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v16 = v44;
  if ((v15 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_12:
  v41 = a5;
  v17 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = v17;
  v20 = v18;

  v22 = *v16->clientIdentity;
  v21 = *&v16->clientIdentity[8];
  if (v22 >= v21 >> 1)
  {
    sub_100026EF4((v21 > 1), v22 + 1, 1);
    v16 = v44;
  }

  *v16->clientIdentity = v22 + 1;
  v23 = v16 + 16 * v22;
  *(v23 + 4) = v19;
  *(v23 + 5) = v20;
  swift_setDeallocating();
  swift_arrayDestroy();
  v24 = sub_100034664(a1, a2);
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v25 = [objc_allocWithZone(NSFetchRequest) init];
  v26 = [swift_getObjCClassFromMetadata() entity];
  [v25 setEntity:v26];

  [v25 setAffectedStores:0];
  [v25 setPredicate:v24];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v25 setPropertiesToFetch:isa];

  v28 = Array._bridgeToObjectiveC()().super.isa;
  [v25 setRelationshipKeyPathsForPrefetching:v28];

  v29 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v5)
  {
    v25 = v41(v29);
    v29, v30, v31, v32, v33, v34, v35, v36;
  }

  return v25;
}

uint64_t sub_10042F0DC(char a1)
{
  v2 = sub_10003450C(&off_1008DD458);
  sub_100034610(&unk_1008DD478);
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setAffectedStores:0];
  [v3 setPredicate:0];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 setPropertiesToFetch:isa];

  v6 = Array._bridgeToObjectiveC()().super.isa;
  [v3 setRelationshipKeyPathsForPrefetching:v6];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  if ((a1 & 1) == 0)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007953F0;
    v9 = (v7 + 32);
    if (qword_100936110 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100796900;
  if (qword_100936118 != -1)
  {
    swift_once();
  }

  v8 = qword_100974E70;
  *(v7 + 32) = qword_100974E70;
  v9 = (v7 + 40);
  v10 = qword_100936110;
  v11 = v8;
  if (v10 != -1)
  {
LABEL_5:
    swift_once();
  }

LABEL_7:
  v12 = qword_100974E68;
  *v9 = qword_100974E68;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v13 = v12;
  v14 = Array._bridgeToObjectiveC()().super.isa;
  v7, v15, v16, v17, v18, v19, v20, v21;
  [v3 setSortDescriptors:v14];

  v22 = NSManagedObjectContext.fetch<A>(_:)();
  v2, v23, v24, v25, v26, v27, v28, v29;

  return v22;
}

void *sub_10042F390(uint64_t a1, char a2)
{
  v3 = sub_100034664(a1, a2);
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];
  v6 = sub_10003450C(&off_1008E3478);
  sub_100034610(&unk_1008E3498);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6, v8, v9, v10, v11, v12, v13, v14;
  [v4 setPropertiesToFetch:isa];

  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
  }

  else
  {
    v16 = v15;
    v17 = sub_100034C08(v15);
    v16, v18, v19, v20, v21, v22, v23, v24;

    v3 = *(v17 + 16);
    v17, v25, v26, v27, v28, v29, v30, v31;
  }

  return v3;
}

uint64_t sub_10042F520(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    sub_1000F5104(&qword_100946A28, &qword_1007A9338);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_1000F5104(&qword_100946A30, &qword_1007A9340);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_10042F71C(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    sub_1000F5104(&qword_100946A38, &qword_1007A9348);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    sub_1000F5104(&qword_100946A40, &qword_1007A9350);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_10042F918(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    sub_1000F5104(&unk_10094F1B0, &qword_1007A4840);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    sub_1000F5104(&qword_1009469F8, &qword_1007A9308);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_10042FB38(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    sub_1000F5104(&qword_100946A50, &qword_1007A9360);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_10042FD30(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
    sub_1000F5104(&qword_1009469B8, &qword_1007A9258);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000F5104(&qword_1009469C0, qword_1007A9260);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_10042FF1C(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
    sub_1000F5104(&qword_100946A58, &unk_1007A9368);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100430118(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    type metadata accessor for REMCDListSection();
    sub_1000F5104(&qword_100946A80, &qword_1007A93F8);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &qword_100939BD0, REMListSectionStorage_ptr);
    sub_1000F5104(&qword_100946A88, &unk_1007A9400);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100430304(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    sub_1000F5104(&qword_1009469E8, &qword_1007A92F8);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &qword_10094F170, REMCalDAVNotification_ptr);
    sub_1000F5104(&qword_1009469F0, &qword_1007A9300);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100430500(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_1000F5104(&qword_1009469D8, &qword_1007A92E8);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
    sub_1000F5104(&qword_1009469E0, &qword_1007A92F0);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004306FC(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    type metadata accessor for REMCDSavedReminder();
    sub_1000F5104(&qword_1009446C8, &qword_1007A5230);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    sub_1000F5104(&qword_100946A40, &qword_1007A9350);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004308E8(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    type metadata accessor for REMCDTemplate();
    sub_1000F5104(&unk_10093F4C0, &qword_10079DF80);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    sub_1000F5104(&qword_1009469F8, &qword_1007A9308);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100430AD4(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_1000F5104(&qword_10093E858, qword_10079CB30);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
    sub_1000F5104(&qword_100946A00, &qword_1007A9310);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100430CD0(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    sub_1000060C8(0, &unk_100938870, off_1008D4128);
    sub_1000F5104(&unk_10093BA58, &unk_100799158);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
    sub_1000F5104(&qword_100946A08, &qword_1007A9318);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100430ECC(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    sub_1000F5104(&qword_100946998, &qword_1007A9250);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
    sub_1000F5104(&qword_100946A20, &qword_1007A9330);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004310EC(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v12 = 136446722;
    sub_1000060C8(0, a3, a4);
    sub_1000F5104(a5, a6);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    v16 = sub_10000668C(v13, v14, &v47);
    v15, v17, v18, v19, v20, v21, v22, v23;
    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v27 = sub_10000668C(v24, v25, &v47);
    v26, v28, v29, v30, v31, v32, v33, v34;
    *(v12 + 14) = v27;
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v35 = Error.localizedDescription.getter();
    v37 = v36;
    v38 = sub_10000668C(v35, v36, &v47);
    v37, v39, v40, v41, v42, v43, v44, v45;
    *(v12 + 24) = v38;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v12, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004312CC(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    type metadata accessor for REMCDSmartListSection();
    sub_1000F5104(&qword_100946A70, &qword_1007A93E8);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &qword_1009405A0, REMSmartListSectionStorage_ptr);
    sub_1000F5104(&qword_100946A78, &qword_1007A93F0);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004314B8(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    type metadata accessor for REMCDTemplate();
    sub_1000F5104(&unk_10093F4C0, &qword_10079DF80);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &qword_10093C668, REMTemplateStorage_ptr);
    sub_1000F5104(&qword_100946A60, &qword_1007A93D8);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004316A4(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    type metadata accessor for REMCDTemplateSection();
    sub_1000F5104(&qword_10093A368, &qword_100797540);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &qword_1009429C8, REMTemplateSectionStorage_ptr);
    sub_1000F5104(&qword_100946A68, &qword_1007A93E0);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004318B4(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
    sub_1000F5104(&qword_100940990, &qword_1007A0290);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100431AB0(uint64_t a1)
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v3 = 136446722;
    type metadata accessor for REMCDSavedAttachment();
    sub_1000F5104(&qword_100946A48, &qword_1007A9358);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    v7 = sub_10000668C(v4, v5, &v38);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
    sub_1000F5104(&qword_100946A18, &qword_1007A9328);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v38);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + 14) = v18;
    *(v3 + 22) = 2080;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v3 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v3, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100431CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100431D18()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946A90);
  v1 = sub_100006654(v0, qword_100946A90);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100431DE0(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for OSSignpostID();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OSSignposter();
  v12 = *(v26 - 8);
  __chkstk_darwin(v26, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936120 != -1)
  {
    swift_once();
  }

  v16 = sub_100006654(v7, qword_100946A90);
  (*(v8 + 16))(v11, v16, v7);
  OSSignposter.init(logger:)();
  static OSSignpostID.exclusive.getter();
  v17 = swift_slowAlloc();
  *v17 = 0;
  v18 = OSSignposter.logHandle.getter();
  v19 = static os_signpost_type_t.begin.getter();
  v20 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v20, "RDAnalyticsActivity.execute", "", v17, 2u);
  v21 = v25;
  sub_100432108(a2);
  if (v21)
  {
  }

  else
  {
    v22 = static os_signpost_type_t.end.getter();
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v22, v23, "RDAnalyticsActivity.execute", "", v17, 2u);
  }

  (*(v3 + 8))(v6, v27);
  return (*(v12 + 8))(v15, v26);
}

uint64_t sub_100432108(uint64_t a1)
{
  v158 = sub_1000F5104(&qword_100946C30, &qword_1007A2530);
  v2 = *(v158 - 8);
  __chkstk_darwin(v158, v3);
  v156 = &v146 - v4;
  v5 = type metadata accessor for REMAccountSnapshotSummary();
  v164 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v153 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v159 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v155 = &v146 - v14;
  __chkstk_darwin(v15, v16);
  v18 = &v146 - v17;
  v19 = *(a1 + OBJC_IVAR____TtCC7remindd19RDAnalyticsActivityP33_35FD618111A9B708721C682F761C56BE29RDAnalyticsActivityExecutable_name + 8);
  v160 = *(a1 + OBJC_IVAR____TtCC7remindd19RDAnalyticsActivityP33_35FD618111A9B708721C682F761C56BE29RDAnalyticsActivityExecutable_name);
  v20 = qword_100936120;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100006654(v21, qword_100946A90);

  v161 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v19, v25, v26, v27, v28, v29, v30, v31;
  v32 = os_log_type_enabled(v23, v24);
  v157 = v2;
  v154 = v5;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = v8;
    v35 = v19;
    v36 = swift_slowAlloc();
    v166 = v36;
    *v33 = 136446210;
    *(v33 + 4) = sub_10000668C(v160, v35, &v166);
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] start execute()", v33, 0xCu);
    sub_10000607C(v36);
    v19 = v35;
    v8 = v34;
  }

  Date.init()();
  v167[0] = 0xD000000000000013;
  v167[1] = 0x80000001007A9510;
  v167[3] = 0;
  v168[0] = 0;
  v167[2] = 0;
  *(v168 + 6) = 0;
  v37 = v165;
  v38 = sub_1003FE534(v167, sub_1004339E0, 0);
  if (v37)
  {
    v19, v39, v40, v41, v42, v43, v44, v45;
    return (*(v9 + 8))(v18, v8);
  }

  else
  {
    v149 = 0;
    v47 = *(v38 + 16);
    v150 = v9;
    v152 = v8;
    v151 = v18;
    if (v47)
    {
      v147 = v19;
      v48 = v38;
      v49 = type metadata accessor for Analytics();
      v50 = v164 + 16;
      v164 = *(v164 + 16);
      v165 = v49;
      v51 = (*(v50 + 64) + 32) & ~*(v50 + 64);
      v148 = v48;
      v52 = v48 + v51;
      v162 = *(v50 + 56);
      v163 = "RDAnalyticsActivity.execute";
      v54 = v153;
      v53 = v154;
      do
      {
        (v164)(v54, v52, v53);
        v55 = REMAccountSnapshotSummary.nsPayload.getter();
        (*(v50 - 8))(v54, v53);
        v56 = sub_1004646CC();
        v55, v57, v58, v59, v60, v61, v62, v63;
        static Analytics.postEvent(_:payload:duration:)();
        v56, v64, v65, v66, v67, v68, v69, v70;
        v52 += v162;
        --v47;
      }

      while (v47);
      v148, v71, v72, v73, v74, v75, v76, v77;
      v8 = v152;
      v18 = v151;
      v9 = v150;
      v19 = v147;
    }

    else
    {
      v38, v39, v40, v41, v42, v43, v44, v45;
    }

    v78 = v155;
    v164 = *(v9 + 16);
    (v164)(v155, v18, v8);

    v79 = Logger.logObject.getter();
    v80 = v9;
    v81 = static os_log_type_t.default.getter();
    v19, v82, v83, v84, v85, v86, v87, v88;
    if (os_log_type_enabled(v79, v81))
    {
      v89 = v78;
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v166 = v91;
      *v90 = 136446466;
      *(v90 + 4) = sub_10000668C(v160, v19, &v166);
      *(v90 + 12) = 2050;
      Date.rem_elapsedInMilliseconds.getter();
      v93 = v92;
      v165 = *(v80 + 8);
      v165(v89, v8);
      *(v90 + 14) = v93;
      _os_log_impl(&_mh_execute_header, v79, v81, "[%{public}s] posted CA data, elapsedSeconds: %{public}f ms", v90, 0x16u);
      sub_10000607C(v91);
    }

    else
    {

      v165 = *(v80 + 8);
      v165(v78, v8);
    }

    v94 = v159;

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.default.getter();
    v19, v97, v98, v99, v100, v101, v102, v103;
    v104 = os_log_type_enabled(v95, v96);
    v105 = v151;
    if (v104)
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v166 = v107;
      *v106 = 136446210;
      v108 = v19;
      *(v106 + 4) = sub_10000668C(v160, v19, &v166);
      _os_log_impl(&_mh_execute_header, v95, v96, "[%{public}s] start posting grocery correction to CA", v106, 0xCu);
      sub_10000607C(v107);
    }

    else
    {
      v108 = v19;
    }

    v110 = v156;
    v109 = v157;
    if (qword_100935E40 != -1)
    {
      swift_once();
    }

    v111 = v158;
    (*(v109 + 104))(v110, enum case for REMCache.ExecutionMode.synchronously<A, B>(_:), v158);
    sub_1002C600C(v110);
    (*(v109 + 8))(v110, v111);
    v112 = v152;
    (v164)(v94, v105, v152);
    v113 = v108;

    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    v108, v116, v117, v118, v119, v120, v121, v122;
    if (os_log_type_enabled(v114, v115))
    {
      v130 = v105;
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v166 = v132;
      *v131 = 136446466;
      v133 = sub_10000668C(v160, v113, &v166);
      v113, v134, v135, v136, v137, v138, v139, v140;
      *(v131 + 4) = v133;
      *(v131 + 12) = 2050;
      Date.rem_elapsedInMilliseconds.getter();
      v142 = v141;
      v143 = v94;
      v144 = v165;
      v165(v143, v112);
      *(v131 + 14) = v142;
      _os_log_impl(&_mh_execute_header, v114, v115, "[%{public}s] end execute(), elapsedSeconds: %{public}f ms", v131, 0x16u);
      sub_10000607C(v132);

      return v144(v130, v112);
    }

    else
    {
      v108, v123, v124, v125, v126, v127, v128, v129;

      v145 = v165;
      v165(v94, v112);
      return v145(v105, v112);
    }
  }
}

id sub_100432AEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDAnalyticsActivity.RDAnalyticsActivityExecutable();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100432B78()
{
  v1 = *v0;
  if (qword_100936120 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_100946A90);
  sub_10014D938(0xD000000000000030, 0x80000001007F8560, v3, v1);
}

uint64_t sub_100432C18()
{
  v1 = *(*v0 + OBJC_IVAR____TtCC7remindd19RDAnalyticsActivityP33_35FD618111A9B708721C682F761C56BE29RDAnalyticsActivityExecutable_name);

  return v1;
}

unint64_t sub_100432C58()
{
  _StringGuts.grow(_:)(31);
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  v8 = *(v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_identifier);
  v9 = *(v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_identifier + 8);

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18._countAndFlagsBits = 0x746973796261622ELL;
  v18._object = 0xEB00000000726574;
  String.append(_:)(v18);
  return 0xD000000000000012;
}

double sub_100432D80()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000F61C(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

uint64_t sub_100432DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A87C(a1, v30);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDAnalyticsActivity();
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    sub_10000A87C(v2 + 16, v26);
    v5 = v27;
    v6 = v28;
    sub_10000F61C(v26, v27);
    (*(v6 + 8))(v5, v6);
    sub_10000607C(v26);
    return sub_10000607C(v30);
  }

  else
  {
    if (qword_100936120 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100946A90);
    sub_10000A87C(a1, v26);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136446210;
      sub_10000A87C(v26, &v25);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      sub_10000607C(v26);
      v16 = sub_10000668C(v13, v15, &v29);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "RDAnalyticsExecutionDateStorage.lastExecutedDate(for:) must work with RDAnalyticsActivity only {executable: %{public}s}", v11, 0xCu);
      sub_10000607C(v12);
    }

    else
    {

      sub_10000607C(v26);
    }

    sub_10000607C(v30);
    v24 = type metadata accessor for Date();
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }
}

uint64_t sub_100433080(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v30 - v7;
  sub_10000A87C(a1, v33);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDAnalyticsActivity();
  if (swift_dynamicCast())
  {

    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a2, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    swift_beginAccess();
    v11 = *(v2 + 40);
    v12 = *(v2 + 48);
    sub_10000C9DC(v2 + 16, v11);
    (*(v12 + 16))(v8, v11, v12);
    swift_endAccess();
  }

  else
  {
    if (qword_100936120 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100946A90);
    sub_10000A87C(a1, v32);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446210;
      sub_10000A87C(v32, v30);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      sub_10000607C(v32);
      v21 = sub_10000668C(v18, v20, &v31);
      v20, v22, v23, v24, v25, v26, v27, v28;
      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "RDAnalyticsExecutionDateStorage.updateLastExecutedDate(for:) must work with RDAnalyticsActivity only {executable: %{public}s}", v16, 0xCu);
      sub_10000607C(v17);
    }

    else
    {

      sub_10000607C(v32);
    }
  }

  return sub_10000607C(v33);
}

id sub_1004334D0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_executable);
  a1[3] = type metadata accessor for RDAnalyticsActivity.RDAnalyticsActivityExecutable();
  a1[4] = &off_1008F16E0;
  a1[5] = &off_1008F16F0;
  *a1 = v4;

  return v4;
}

uint64_t sub_100433540()
{
  v1 = (v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations);
  v2 = *(v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 24);
  v3 = *(v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 32);
  sub_10000F61C(v1, v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_1004335CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_babysitter;
  swift_beginAccess();
  return sub_100010364(v1 + v3, a1, &unk_10093D8F0, &unk_10079B600);
}

char *sub_100433634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 24);
  v5 = *(*v2 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 32);
  sub_10000F61C(&v11[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations], *&v11[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 24]);
  v7 = (*(*(v5 + 16) + 8))(v6);
  v13 = a1;
  v14 = &off_1008F1730;
  *&v12 = v11;
  v8 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v9 = swift_allocObject();
  sub_100054B6C(&v12, v9 + 16);
  *(v9 + 56) = v7;
  a2[3] = v8;
  a2[4] = &off_1008F5B28;
  *a2 = v9;

  return v11;
}

uint64_t sub_100433718()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_identifier);

  return v1;
}

uint64_t sub_100433784@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 analyticsActivityLastExecutionDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}