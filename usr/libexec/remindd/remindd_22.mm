uint64_t REMGroceryClassifier.shouldSuggestConvertToGrocery(titles:listName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_100251B94, 0, 0);
}

uint64_t sub_100251B94(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = *(v7 + 80);
  v9 = *(*(v7 + 56) + 16);
  if (v9 > 4)
  {
    v10 = *(v8 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_groceryListScoreThreshold);
LABEL_10:
    v37 = *(v8 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_groceryListScoreExcludedCategories);
    v38 = *(v37 + 16);
    if (v38)
    {
      v63 = v9;
      v64 = v7;
      v39 = *(v8 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_labels);
      a1 = sub_100026EF4(0, v38, 0);
      v40 = (v37 + 32);
      while (1)
      {
        v42 = *v40++;
        v41 = v42;
        if ((v42 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v41 >= *(v39 + 16))
        {
          goto LABEL_29;
        }

        v43 = (v39 + 32 + 16 * v41);
        v45 = *v43;
        v44 = v43[1];
        v47 = *_swiftEmptyArrayStorage.clientIdentity;
        v46 = *&_swiftEmptyArrayStorage.clientIdentity[8];

        if (v47 >= v46 >> 1)
        {
          a1 = sub_100026EF4((v46 > 1), v47 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v47 + 1;
        v48 = &_swiftEmptyArrayStorage + 16 * v47;
        *(v48 + 4) = v45;
        *(v48 + 5) = v44;
        if (!--v38)
        {
          v9 = v63;
          v7 = v64;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
    }

    else
    {
LABEL_18:
      *(v7 + 88) = &_swiftEmptyArrayStorage;
      v49 = ceilf(v10 * v9);
      *(v7 + 112) = v49;
      if ((LODWORD(v49) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v49 > -9.2234e18)
        {
          if (v49 < 9.2234e18)
          {
            v50 = *(v7 + 80);
            *(v7 + 40) = *(v7 + 56);
            *(v7 + 48) = 0;
            v51 = swift_task_alloc();
            *(v7 + 96) = v51;
            *(v51 + 16) = v50;
            *(v51 + 24) = &_swiftEmptyArrayStorage;
            v52 = swift_task_alloc();
            *(v7 + 104) = v52;
            v53 = sub_1000F5104(&unk_10093B300, &unk_100797780);
            a7 = sub_10000CB48(&unk_100945250, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
            *v52 = v7;
            v52[1] = sub_100251F30;
            a6 = &type metadata for Int;
            a3 = &unk_10079D0A0;
            a1 = (v7 + 32);
            a2 = v7 + 48;
            a4 = v51;
            a5 = v53;

            return Sequence.asyncReduce<A>(_:_:)(a1, a2, a3, a4, a5, a6, a7);
          }

LABEL_32:
          __break(1u);
          return Sequence.asyncReduce<A>(_:_:)(a1, a2, a3, a4, a5, a6, a7);
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v10 = 1.0;
  if (!*(v7 + 72))
  {
    goto LABEL_10;
  }

  *(v7 + 16) = 0x65697265636F7247;
  *(v7 + 24) = 0xE900000000000073;
  sub_10013BCF4();
  v11 = StringProtocol.localizedLowercase.getter();
  v13 = v12;
  v20 = String.lowercased()();
  if (v11 == v20._countAndFlagsBits && v13 == v20._object)
  {
    v20._object, v20._object, v14, v15, v16, v17, v18, v19;
    v13, v54, v55, v56, v57, v58, v59, v60;
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20._object, v23, v24, v25, v26, v27, v28, v29;
    v13, v30, v31, v32, v33, v34, v35, v36;
    if ((v22 & 1) == 0)
    {
      v8 = *(v7 + 80);
      goto LABEL_10;
    }
  }

  v61 = *(v7 + 8);

  return v61(1);
}

uint64_t sub_100251F30()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    *(v2 + 88), v3, v4, v5, v6, v7, v8, v9;

    return _swift_task_switch(sub_100252074, 0, 0);
  }
}

uint64_t sub_1002520A0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v8 = swift_task_alloc();
  v9 = *a2;
  v5[5] = v8;
  v5[6] = v9;
  v10 = a3[1];
  v5[7] = *a3;
  v5[8] = v10;

  return _swift_task_switch(sub_100252154, 0, 0);
}

uint64_t sub_100252154()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v2;
  v8[6] = v1;
  v8[7] = v5;
  v8[8] = v4;
  v9 = v6;

  v10 = sub_1001958C4(0, 0, v3, &unk_10079D5F8, v8);
  v0[9] = v10;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1002522C8;
  v12 = v0[2];

  return Task<>.value.getter(v12, v10, &type metadata for Int);
}

uint64_t sub_1002522C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002523F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[8] = a1;
  v11 = swift_task_alloc();
  v8[11] = v11;
  *v11 = v8;
  v11[1] = sub_1002524FC;

  return REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(a5, a6, 0x100000000, 1, 0, 0, 0, 0xD000000000000017);
}

uint64_t sub_1002524FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_10025271C;
  }

  else
  {
    v4 = sub_100252610;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100252610(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 96);
  if (!*(v9 + 16))
  {
    goto LABEL_6;
  }

  v10 = *(v8 + 72);
  v12 = *(v9 + 40);
  v11 = *(v9 + 48);

  v9, v13, v14, v15, v16, v17, v18, v19;
  *(v8 + 40) = v12;
  *(v8 + 48) = v11;
  v9 = swift_task_alloc();
  *(v9 + 16) = v8 + 40;
  LOBYTE(v10) = sub_100040A74(sub_100040B20, v9, v10);
  v11, v20, v21, v22, v23, v24, v25, v26;

  v27 = *(v8 + 80);
  if ((v10 & 1) == 0 && __OFADD__(v27++, 1))
  {
    __break(1u);
LABEL_6:
    v9, a2, a3, a4, a5, a6, a7, a8;
    v27 = *(v8 + 80);
  }

  **(v8 + 64) = v27;
  v29 = *(v8 + 8);

  return v29();
}

uint64_t sub_10025271C()
{
  v20 = v0;
  if (qword_100935D70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093EB60);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v19);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "REMGroceryClassifier.shouldSuggestConvertToGrocery: predict failed with {error: %s}", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }

  **(v0 + 64) = *(v0 + 80);
  v17 = *(v0 + 8);

  return v17();
}

uint64_t REMGroceryClassifier.modelTypesDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelTypes);
  v2 = *(v1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100026EF4(0, v2, 0);
    v4 = (v1 + 32);
    v3 = &_swiftEmptyArrayStorage;
    v5 = 0x796D6D7564;
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = v7 == 3;
      if (v7 == 3)
      {
        v9 = v5;
      }

      else
      {
        v9 = 0x6C774F69726973;
      }

      if (v8)
      {
        v10 = 0xE500000000000000;
      }

      else
      {
        v10 = 0xE700000000000000;
      }

      if (v6 == 2)
      {
        v9 = 0x7865676572;
        v10 = 0xE500000000000000;
      }

      if (v6)
      {
        v11 = 0x6465726F68636E61;
      }

      else
      {
        v11 = 1953654114;
      }

      if (v6)
      {
        v12 = 0xEE00656C62627542;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      if (v6 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v6 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      v28 = v3;
      v16 = *v3->clientIdentity;
      v15 = *&v3->clientIdentity[8];
      if (v16 >= v15 >> 1)
      {
        v18 = v5;
        sub_100026EF4((v15 > 1), v16 + 1, 1);
        v5 = v18;
        v3 = v28;
      }

      *v3->clientIdentity = v16 + 1;
      v17 = v3 + 16 * v16;
      *(v17 + 4) = v13;
      *(v17 + 5) = v14;
      --v2;
    }

    while (v2);
  }

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
  v19 = BidirectionalCollection<>.joined(separator:)();
  v3, v20, v21, v22, v23, v24, v25, v26;
  return v19;
}

char *REMGroceryClassifier.__allocating_init(baseURL:modelLocale:trialDeploymentID:)(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5)
{
  v21 = a4;
  v22 = a5;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13, v14);
  v17 = &v21 - v16;
  v18 = *(v9 + 16);
  v18(&v21 - v16, a1, v8, v15);
  (v18)(v12, a1, v8);
  v19 = sub_100258DC0(v17, v12, a2, a3, v21, v22);
  (*(v9 + 8))(a1, v8);
  return v19;
}

uint64_t sub_100252C70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, _TtC7remindd19RDXPCStorePerformer **a7, uint64_t a8, uint64_t a9)
{
  if ((a4 & 1) == 0 || !a1)
  {
    goto LABEL_8;
  }

  v10 = a5;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v15;
  if (v11 == v14 && v13 == v15)
  {
    v13, v15, v16, v17, v18, v19, v20, v21;
    v22, v60, v61, v62, v63, v64, v65, v66;
    return 1;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v13, v25, v26, v27, v28, v29, v30, v31;
  v22, v32, v33, v34, v35, v36, v37, v38;
  a5 = v10;
  if ((v24 & 1) == 0)
  {
LABEL_8:
    if (a5)
    {
      v39 = NLTagger.tags(in:unit:scheme:options:)();
      if (*(v39 + 16))
      {
        v47 = *(v39 + 32);
        v48 = v39;
        v49 = v47;
        v48, v50, v51, v52, v53, v54, v55, v56;
        if (v47)
        {
          v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;

LABEL_15:
          v76 = *a7;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a7 = v76;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v76 = sub_100365788(0, *v76->clientIdentity + 1, 1, v76, v78, v79, v80, v81);
            *a7 = v76;
          }

          v83 = *v76->clientIdentity;
          v82 = *&v76->clientIdentity[8];
          if (v83 >= v82 >> 1)
          {
            v76 = sub_100365788((v82 > 1), v83 + 1, 1, v76, v78, v79, v80, v81);
            *a7 = v76;
          }

          *v76->clientIdentity = v83 + 1;
          v84 = v76 + 16 * v83;
          *(v84 + 4) = v57;
          *(v84 + 5) = v59;
          return 1;
        }
      }

      else
      {
        v39, v40, v41, v42, v43, v44, v45, v46;
      }
    }

    String.subscript.getter();
    v68 = v67;
    v57 = static String._fromSubstring(_:)();
    v59 = v69;
    v68, v69, v70, v71, v72, v73, v74, v75;
    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_100252F80()
{
  v1 = sub_10025B218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100253068(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002530F8(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100254A30(a1, a2, a3, *v3, &qword_10093EEA0, &qword_10079D668, &qword_10093EEA8, &qword_10079D670);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253138(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100253E24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253158(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100254A30(a1, a2, a3, *v3, &qword_10093EC70, &qword_10079D3A8, &qword_10093EC78, &qword_10079D3B0);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253198(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100253F90(a1, a2, a3, *v3, &unk_1009439E0, &unk_1007A11F0, &qword_10093EC60, &unk_10079D390);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002531D8(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002540D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002531F8(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100254200(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253218(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002562E4(a1, a2, a3, *v3, &qword_10093EC20, &unk_10079D338, &unk_100939D90, "8\n\r");
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253258(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093D000, &qword_10079D320, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025329C(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100254320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002532BC(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100254420(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002532DC(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093B448, &qword_10079D400, &type metadata accessor for REMRemindersListDataView.SectionLite);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253320(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100254A30(a1, a2, a3, *v3, &qword_10093ECD0, &qword_10079D408, &qword_10093ECD8, &qword_10079D410);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253360(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ED68, &qword_10079D4E0, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002533A4(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ED60, &qword_1007A4560, &type metadata accessor for REMAccountsListDataView.Model.PinnedList);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002533E8(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002562E4(a1, a2, a3, *v3, &qword_10093EDA0, &qword_10079D528, &qword_10093EDA8, &qword_10079D530);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253428(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_100943D40, &qword_10079D538, &type metadata accessor for REMRemindersListDataView.ListsModel.Sublist);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025346C(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002562E4(a1, a2, a3, *v3, &unk_100943AB0, &unk_1007A4320, &qword_100939860, &unk_10079D480);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002534AC(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ED50, &unk_10079D4C0, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002534F0(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002562E4(a1, a2, a3, *v3, &qword_10093ED40, &qword_10079D4B0, &qword_10093ED48, &qword_10079D4B8);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253530(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &unk_1009430D0, &qword_10079D4F0, &type metadata accessor for REMRemindersListDataView.ReminderLite);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253574(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &unk_1009431B0, &qword_10079D490, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002535B8(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10025457C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002535D8(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093EDB0, &qword_10079D540, &type metadata accessor for REMSmartListSection.PredefinedSectionType.Today);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025361C(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10025492C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025363C(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002555F0(a1, a2, a3, *v3, &qword_10093EDE8, &unk_10079D590, &qword_10094EC10, &qword_1007AD5B0);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025367C(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002555F0(a1, a2, a3, *v3, &unk_1009439D0, &unk_10079D5A0, &qword_10093EDF0, &qword_10079E620);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002536BC(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100254A30(a1, a2, a3, *v3, &qword_10093ED38, &qword_10079D4A0, &unk_10093F690, &qword_10079D4A8);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002536FC(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100254B78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025371C(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100254CA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025373C(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100254DC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025375C(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002562E4(a1, a2, a3, *v3, &unk_100942E80, &unk_10079D310, &qword_10093A700, &qword_100797B40);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025379C(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &unk_100943C70, &qword_10079D498, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002537E0(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100254EE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253800(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100255AB0(a1, a2, a3, *v3, &qword_10093ECF8, &qword_10079D430);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253830(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002561E8(a1, a2, a3, *v3, &unk_100943FC0, &unk_10079D380);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253860(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ECE8, &qword_10079D420, &type metadata accessor for REMManualOrdering.PinnedList);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002538A4(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100254FE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002538C4(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10025511C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002538E4(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10025521C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253904(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_100942E90, &qword_10079D620, type metadata accessor for RDXPCEventStream.AlarmHandler);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253948(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10025533C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253968(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100255484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253988(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002555F0(a1, a2, a3, *v3, &qword_10093EE78, &qword_10079D628, &qword_10093EE80, &unk_10079D630);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002539C8(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_100944150, &qword_10079D658, type metadata accessor for RDTimelineEngineReminder);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253A0C(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093EE98, &qword_10079D650, type metadata accessor for RDTimelineEngineDueReminder);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253A50(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093EE90, &qword_1007A48A0, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253A94(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002555F0(a1, a2, a3, *v3, &qword_10093EE08, &qword_10079D5B8, &qword_10093EE10, &qword_10079D5C0);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253AD4(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100255724(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253AF4(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002561E8(a1, a2, a3, *v3, &qword_10093E1A0, &qword_10079D450);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253B24(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10025585C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253B44(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100255AB0(a1, a2, a3, *v3, &qword_10093ED10, &qword_10079D448);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253B74(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100255990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253B94(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100255AB0(a1, a2, a3, *v3, &qword_10093EDC0, &qword_10079D550);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253BC4(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093EDB8, &qword_10079D548, &type metadata accessor for REMSuggestedAttributeOutput);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253C08(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100255BAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253C28(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100255E28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253C48(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002560A0(a1, a2, a3, *v3, &qword_10093ED20, &unk_10079D460, &unk_10093F810, &qword_10079CAB0);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253C88(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &unk_10093F800, &qword_1007A48D0, &type metadata accessor for REMAccountsListDataView.Model.GroupChild);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253CCC(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093EC48, &qword_1007B1D60, &type metadata accessor for Locale);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253D10(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100255F94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253D30(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002560A0(a1, a2, a3, *v3, &qword_10093ED78, &qword_10079D4F8, &qword_10093ED80, &unk_10079D500);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253D70(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002561E8(a1, a2, a3, *v3, &unk_100944050, &unk_1007A4780);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253DA0(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002562E4(a1, a2, a3, *v3, &qword_10093ECB0, &qword_10079D3D8, &qword_1009431C0, &qword_10079D3E0);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253DE0(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ECA8, &qword_10079D3D0, &type metadata accessor for REMRemindersListDataView.DatesModel.Group);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253E24(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_100936E88, &unk_100791AC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &v10->clientIdentity[16] >= &a4->clientIdentity[40 * v8 + 16])
    {
      memmove(&v10->clientIdentity[16], &a4->clientIdentity[16], 40 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(&unk_10093F7E0, &qword_10079D618);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100253F90(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *&a4->clientIdentity[8];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *a4->clientIdentity;
  if (v13 <= v14)
  {
    v15 = *a4->clientIdentity;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F5104(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    *v16->clientIdentity = v14;
    *&v16->clientIdentity[8] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || &v16->clientIdentity[16] >= &a4->clientIdentity[24 * v14 + 16])
    {
      memmove(&v16->clientIdentity[16], &a4->clientIdentity[16], 24 * v14);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002540D8(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EC30, &unk_1007B60C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &v10->clientIdentity[16] >= &a4->clientIdentity[8 * v8 + 16])
    {
      memmove(&v10->clientIdentity[16], &a4->clientIdentity[16], 8 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    type metadata accessor for NLLanguage(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100254200(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EE18, &qword_10079D5C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = &v10->clientIdentity[16];
  v13 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100254320(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EC28, &unk_10079D350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = &v10->clientIdentity[16];
  v14 = &a4->clientIdentity[16];
  v15 = 4 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100254420(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_100942E70, &qword_10079D348);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &v10->clientIdentity[16] >= &a4->clientIdentity[16 * v8 + 16])
    {
      memmove(&v10->clientIdentity[16], &a4->clientIdentity[16], 16 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025457C(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EDD8, &qword_10079D580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &v10->clientIdentity[16] >= &a4->clientIdentity[16 * v8 + 16])
    {
      memmove(&v10->clientIdentity[16], &a4->clientIdentity[16], 16 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(&qword_10093EDE0, &qword_10079D588);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002546B0(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_100943E90, &qword_1007A4620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &v10->clientIdentity[16] >= &a4->clientIdentity[24 * v8 + 16])
    {
      memmove(&v10->clientIdentity[16], &a4->clientIdentity[16], 24 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(&qword_10093ED98, &qword_10079D520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002547F8(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ED88, &qword_1007A45B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &v10->clientIdentity[16] >= &a4->clientIdentity[16 * v8 + 16])
    {
      memmove(&v10->clientIdentity[16], &a4->clientIdentity[16], 16 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(&qword_10093ED90, &unk_10079D510);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025492C(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ED18, &qword_10079D458);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = &v10->clientIdentity[16];
  v14 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100254A30(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *&a4->clientIdentity[8];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *a4->clientIdentity;
  if (v13 <= v14)
  {
    v15 = *a4->clientIdentity;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F5104(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    *v16->clientIdentity = v14;
    *&v16->clientIdentity[8] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || &v16->clientIdentity[16] >= &a4->clientIdentity[40 * v14 + 16])
    {
      memmove(&v16->clientIdentity[16], &a4->clientIdentity[16], 40 * v14);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

_TtC7remindd19RDXPCStorePerformer *sub_100254B78(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ED00, &qword_10079D438);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = &v10->clientIdentity[16];
  v13 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100254CA0(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ECF0, &qword_10079D428);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = &v10->clientIdentity[16];
  v13 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100254DC0(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ED08, &qword_10079D440);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = &v10->clientIdentity[16];
  v13 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100254EE0(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ECB8, &qword_10079D3E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = &v10->clientIdentity[16];
  v13 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100254FE8(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EE20, &qword_10079D5D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &v10->clientIdentity[16] >= &a4->clientIdentity[32 * v8 + 16])
    {
      memmove(&v10->clientIdentity[16], &a4->clientIdentity[16], 32 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(&qword_1009440E0, &qword_10079D5D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025511C(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EE28, &unk_10079D5E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = &v10->clientIdentity[16];
  v14 = &a4->clientIdentity[16];
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025521C(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093F7B0, &unk_10079D600);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = &v10->clientIdentity[16];
  v13 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025533C(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EE88, &unk_1007A3940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &v10->clientIdentity[16] >= &a4->clientIdentity[24 * v8 + 16])
    {
      memmove(&v10->clientIdentity[16], &a4->clientIdentity[16], 24 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(&unk_100942EA0, &unk_10079D640);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100255484(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EC18, &unk_10079D328);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = &v10->clientIdentity[16];
  v13 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002555F0(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *&a4->clientIdentity[8];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *a4->clientIdentity;
  if (v13 <= v14)
  {
    v15 = *a4->clientIdentity;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F5104(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    *v16->clientIdentity = v14;
    *&v16->clientIdentity[8] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || &v16->clientIdentity[16] >= &a4->clientIdentity[8 * v14 + 16])
    {
      memmove(&v16->clientIdentity[16], &a4->clientIdentity[16], 8 * v14);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

_TtC7remindd19RDXPCStorePerformer *sub_100255724(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&unk_100943F80, &unk_1007A46D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = &v10->clientIdentity[16];
  v13 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_10025585C(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ECC0, &unk_10079D3F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &v10->clientIdentity[16] >= &a4->clientIdentity[32 * v8 + 16])
    {
      memmove(&v10->clientIdentity[16], &a4->clientIdentity[16], 32 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(&qword_10093ECC8, &qword_1007B4CD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100255990(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ED30, &qword_10079D478);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = &v10->clientIdentity[16];
  v13 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100255AB0(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *&a4->clientIdentity[8];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *a4->clientIdentity;
  if (v9 <= v10)
  {
    v11 = *a4->clientIdentity;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000F5104(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *v12->clientIdentity = v10;
    *&v12->clientIdentity[8] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v15 = &v12->clientIdentity[16];
  v16 = &a4->clientIdentity[16];
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

_TtC7remindd19RDXPCStorePerformer *sub_100255BAC(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EDC8, &qword_10079D558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &v10->clientIdentity[16] >= &a4->clientIdentity[24 * v8 + 16])
    {
      memmove(&v10->clientIdentity[16], &a4->clientIdentity[16], 24 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(&qword_100943F30, &qword_10079D560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100255CF4(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EDD0, &qword_10079D568);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &v10->clientIdentity[16] >= &a4->clientIdentity[16 * v8 + 16])
    {
      memmove(&v10->clientIdentity[16], &a4->clientIdentity[16], 16 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(&unk_100943F50, &unk_10079D570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100255E28(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093EC38, &qword_10079D368);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = &v10->clientIdentity[16];
  v13 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100255F94(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ECE0, &qword_10079D418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = &v10->clientIdentity[16];
  v14 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002560A0(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *&a4->clientIdentity[8];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *a4->clientIdentity;
  if (v13 <= v14)
  {
    v15 = *a4->clientIdentity;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F5104(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    *v16->clientIdentity = v14;
    *&v16->clientIdentity[8] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || &v16->clientIdentity[16] >= &a4->clientIdentity[16 * v14 + 16])
    {
      memmove(&v16->clientIdentity[16], &a4->clientIdentity[16], 16 * v14);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    sub_1000F5104(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002561E8(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *&a4->clientIdentity[8];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *a4->clientIdentity;
  if (v9 <= v10)
  {
    v11 = *a4->clientIdentity;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000F5104(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *v12->clientIdentity = v10;
    *&v12->clientIdentity[8] = 2 * (v14 >> 3);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v15 = &v12->clientIdentity[16];
  v16 = &a4->clientIdentity[16];
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002562E4(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *&a4->clientIdentity[8];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *a4->clientIdentity;
  if (v13 <= v14)
  {
    v15 = *a4->clientIdentity;
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000F5104(a5, a6);
  v16 = *(sub_1000F5104(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  *v19->clientIdentity = v14;
  *&v19->clientIdentity[8] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1000F5104(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1002564CC(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_10025655C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, int a3, int a4)
{
  v125 = a4;
  LODWORD(v133) = a3;
  v134 = a1;
  v128 = type metadata accessor for URL();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128, v5);
  v129 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v131 = &v118 - v9;
  v10 = type metadata accessor for REMGroceryLocaleMapping.LocaleSetting();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for REMGroceryLocaleMapping();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935D70 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_100006654(v20, qword_10093EB60);

  v126 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  a2, v24, v25, v26, v27, v28, v29, v30;
  v31 = os_log_type_enabled(v22, v23);
  v132 = v14;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v130 = v19;
    v33 = v10;
    v34 = v16;
    v35 = v15;
    v36 = v32;
    v37 = v11;
    v38 = swift_slowAlloc();
    *&v137 = v38;
    *v36 = 136446466;
    *(v36 + 4) = sub_10000668C(v134, a2, &v137);
    *(v36 + 12) = 1026;
    *(v36 + 14) = v133 & 1;
    _os_log_impl(&_mh_execute_header, v22, v23, "loading category names from Trial assets for {locale: %{public}s, includeMisc: %{BOOL,public}d}", v36, 0x12u);
    sub_10000607C(v38);
    v11 = v37;

    v15 = v35;
    v16 = v34;
    v10 = v33;
    v19 = v130;
  }

  type metadata accessor for REMTrialClient();
  swift_allocObject();
  v39 = v135;
  v40 = REMTrialClient.init()();
  if (!v39)
  {
    v41 = v40;
    dispatch thunk of REMTrialClient.loadGroceryLocaleMapping()();
    REMGroceryLocaleMapping.localeSetting(for:)();
    REMGroceryLocaleMapping.LocaleSetting.meta.getter();
    v42 = v41;
    v44 = v43;
    dispatch thunk of REMTrialClient.groceryDirectoryURL(for:)();
    v135 = v42;
    v130 = v19;
    v44, v45, v46, v47, v48, v49, v50, v51;
    URL.appendingPathComponent(_:)();
    v52 = Data.init(contentsOf:options:)();
    v54 = v53;
    v124 = v11;
    v55 = v52;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10025C18C();
    v56 = v55;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v134 = 0;
    v122 = v10;
    v123 = v15;
    v57 = *(v127 + 8);
    v57(v129, v128);

    result = sub_10001BBA0(v56, v54);
    v10 = v138;
    v66 = v134;
    if (v133)
    {

      sub_10025C33C(&v137, v67, v68, v69, v70, v71, v72, v73);
      v74 = v123;
    }

    else
    {
      v75 = *(v138 + 16);
      v74 = v123;
      if (v75)
      {
        v76 = 0;
        v61 = 0xED000073756F656ELL;
        v60 = 0x616C6C656373694DLL;
        v77 = v138 + 40;
        v120 = v75 - 1;
        v78 = &_swiftEmptyArrayStorage;
        v129 = v57;
        v134 = v75;
        v121 = v138 + 40;
        do
        {
          v133 = v78;
          v79 = (v77 + 16 * v76);
          v80 = v76;
          while (1)
          {
            if (v80 >= *(v10 + 16))
            {
              __break(1u);
              return result;
            }

            v82 = *(v79 - 1);
            v81 = *v79;
            v83 = v82 == v60 && v81 == v61;
            if (!v83)
            {
              v84 = v66;
              v85 = v61;
              v86 = v60;
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              v75 = v134;
              v60 = v86;
              v61 = v85;
              v66 = v84;
              if ((result & 1) == 0)
              {
                break;
              }
            }

            ++v80;
            v79 += 2;
            if (v75 == v80)
            {
              v74 = v123;
              v57 = v129;
              v78 = v133;
              goto LABEL_29;
            }
          }

          v78 = v133;
          result = swift_isUniquelyReferenced_nonNull_native();
          v136 = v78;
          if ((result & 1) == 0)
          {
            result = sub_100026EF4(0, *v78->clientIdentity + 1, 1);
            v78 = v136;
          }

          v66 = v84;
          v88 = *v78->clientIdentity;
          v87 = *&v78->clientIdentity[8];
          v89 = (v88 + 1);
          if (v88 >= v87 >> 1)
          {
            v133 = (v88 + 1);
            v119 = v88;
            result = sub_100026EF4((v87 > 1), v88 + 1, 1);
            v89 = v133;
            v88 = v119;
            v66 = v84;
            v78 = v136;
          }

          v76 = v80 + 1;
          *v78->clientIdentity = v89;
          v90 = v78 + 16 * v88;
          *(v90 + 4) = v82;
          *(v90 + 5) = v81;
          v83 = v120 == v80;
          v74 = v123;
          v61 = v85;
          v57 = v129;
          v60 = v86;
          v75 = v134;
          v77 = v121;
        }

        while (!v83);
      }

      else
      {
        v78 = &_swiftEmptyArrayStorage;
      }

LABEL_29:
      v134 = v66;
      sub_10025C33C(&v137, v59, v60, v61, v62, v63, v64, v65);
      v10 = v78;
    }

    v91 = v124;
    if (v125)
    {
      v92 = Array<A>.removingDuplicates()();
      v10, v93, v94, v95, v96, v97, v98, v99;
      v10 = v92;
    }

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v109 = swift_slowAlloc();
      *v109 = 134349056;
      *(v109 + 4) = *(v10 + 16);
      v10, v110, v111, v112, v113, v114, v115, v116;
      _os_log_impl(&_mh_execute_header, v100, v101, "Number of category names loaded {count: %{public}ld}", v109, 0xCu);
    }

    else
    {
      v10, v102, v103, v104, v105, v106, v107, v108;
    }

    v117 = v131;

    v57(v117, v128);
    (*(v91 + 8))(v132, v122);
    (*(v16 + 8))(v130, v74);
  }

  return v10;
}

unint64_t _s7remindd19REMGroceryModelTypeO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1002571D8(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = 0x80000001007F2710;
  if (a1 == 0xD000000000000010 && 0x80000001007F2710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x6974636572726F63 && a2 == 0xEB00000000736E6FLL)
  {
    0xEB00000000736E6FLL, 0xEB00000000736E6FLL, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100257300(void *a1)
{
  v2 = sub_1000F5104(&qword_10093EC80, &qword_10079D3B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v9[-v5];
  sub_10000F61C(a1, a1[3]);
  sub_10025C264();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9[31] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v9[30] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000F5104(&qword_10093EC90, &qword_10079D3C0);
  v9[15] = 2;
  sub_10025C2B8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000607C(a1);
  return v7;
}

uint64_t sub_1002574FC(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000001007F2730;
    if (a1 == 0xD000000000000010 && 0x80000001007F2730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x7079546C65646F6DLL && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = 0xEE006874676E654CLL;
      if (a1 == 0x6E656B6F5478616DLL && a2 == 0xEE006874676E654CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = 0xEA00000000007364;
        if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else if (a1 == 1315991412 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 5;
        }

        else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 6;
        }

        else
        {
          v15 = 0x80000001007F2550;
          if (a1 == 0xD000000000000019 && 0x80000001007F2550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 7;
          }

          else
          {
            v16 = 0x80000001007F2590;
            if (a1 == 0xD000000000000022 && 0x80000001007F2590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 8;
            }

            else if (a1 == 0x6C6E4F6969637361 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 9;
            }

            else
            {
              v17 = 0x80000001007F2750;
              if (a1 == 0xD000000000000014 && 0x80000001007F2750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                a2, v17, a3, a4, a5, a6, a7, a8;
                return 10;
              }

              else
              {
                v18 = 0x80000001007F2770;
                if (a1 == 0xD000000000000013 && 0x80000001007F2770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  a2, v18, a3, a4, a5, a6, a7, a8;
                  return 11;
                }

                else
                {
                  v19 = 0x80000001007F25C0;
                  if (a1 == 0xD000000000000014 && 0x80000001007F25C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    a2, v19, a3, a4, a5, a6, a7, a8;
                    return 12;
                  }

                  else if (a1 == 0xD000000000000016 && 0x80000001007F25E0 == a2)
                  {
                    a2, 0x80000001007F25E0, a3, a4, a5, a6, a7, a8;
                    return 13;
                  }

                  else
                  {
                    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    a2, v21, v22, v23, v24, v25, v26, v27;
                    if (v20)
                    {
                      return 13;
                    }

                    else
                    {
                      return 14;
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
}

void sub_100257968(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F5104(&qword_10093EEC8, &qword_10079D7F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v33 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_10025CDC8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000607C(a1);
  }

  else
  {
    LOBYTE(v54[0]) = 0;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v54[0]) = 1;
    v45 = KeyedDecodingContainer.decode(_:forKey:)();
    v44 = a2;
    sub_1000F5104(&qword_10094EC10, &qword_1007AD5B0);
    LOBYTE(v46) = 2;
    sub_10025CE1C(&qword_10093EED8, &qword_10094EC10, &qword_1007AD5B0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = v54[0];
    LOBYTE(v54[0]) = 3;
    v39 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000F5104(&qword_10093EEE0, &qword_10079D800);
    LOBYTE(v46) = 4;
    sub_10025CE1C(&qword_10093EEE8, &qword_10093EEE0, &qword_10079D800);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = v54[0];
    LOBYTE(v54[0]) = 5;
    v37 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    LOBYTE(v46) = 6;
    sub_10025CE1C(&qword_10093EEF0, &unk_10093B300, &unk_100797780);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v54[0];
    LOBYTE(v54[0]) = 7;
    KeyedDecodingContainer.decode(_:forKey:)();
    v35 = v11;
    LOBYTE(v46) = 8;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v42 = v54[0];
    LOBYTE(v54[0]) = 9;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v54[0]) = 10;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v14;
    v15 = v13;
    LOBYTE(v54[0]) = 11;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v16;
    LOBYTE(v54[0]) = 12;
    HIDWORD(v33) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v64 = 13;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *&v46 = v10;
    *(&v46 + 1) = v45;
    v18 = v43;
    *&v47 = v43;
    *(&v47 + 1) = v39;
    v19 = v38;
    *&v48 = v38;
    *(&v48 + 1) = v37;
    v20 = v36;
    *&v49 = v36;
    v21 = v35;
    DWORD2(v49) = v35;
    *&v50 = v42;
    BYTE8(v50) = v12;
    *&v51 = v15;
    *(&v51 + 1) = v41;
    *&v52 = v34;
    *(&v52 + 1) = v40;
    LOBYTE(v53) = BYTE4(v33);
    HIBYTE(v53) = v17;
    sub_10025CE84(&v46, v54);
    sub_10000607C(a1);
    v54[0] = v10;
    v54[1] = v45;
    v54[2] = v18;
    v54[3] = v39;
    v54[4] = v19;
    v54[5] = v37;
    v54[6] = v20;
    v55 = v21;
    v56 = v42;
    v57 = v12;
    v58 = v15;
    v59 = v41;
    v60 = v34;
    v61 = v40;
    v62 = BYTE4(v33);
    v63 = v17;
    sub_10025C33C(v54, v22, v23, v24, v25, v26, v27, v28);
    v29 = v51;
    v30 = v44;
    *(v44 + 64) = v50;
    *(v30 + 80) = v29;
    *(v30 + 96) = v52;
    *(v30 + 112) = v53;
    v31 = v47;
    *v30 = v46;
    *(v30 + 16) = v31;
    v32 = v49;
    *(v30 + 32) = v48;
    *(v30 + 48) = v32;
  }
}

uint64_t sub_1002581D4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x7079546C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = 0xEE006874676E654CLL;
    if (a1 == 0x6E656B6F5478616DLL && a2 == 0xEE006874676E654CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 1315991412 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else
    {
      v13 = 0xEA00000000007365;
      if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 5;
      }

      else
      {
        v14 = 0x80000001007F2550;
        if (a1 == 0xD000000000000019 && 0x80000001007F2550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 6;
        }

        else
        {
          v15 = 0x80000001007F2590;
          if (a1 == 0xD000000000000022 && 0x80000001007F2590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 7;
          }

          else if (a1 == 0x6C6E4F6969637361 && a2 == 0xE900000000000079)
          {
            0xE900000000000079, 0xE900000000000079, a3, a4, a5, a6, a7, a8;
            return 8;
          }

          else
          {
            v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
            a2, v17, v18, v19, v20, v21, v22, v23;
            if (v16)
            {
              return 8;
            }

            else
            {
              return 9;
            }
          }
        }
      }
    }
  }
}

void sub_1002584D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F5104(&qword_10093EEF8, &qword_10079D808);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v32 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_10025CEBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000607C(a1);
  }

  else
  {
    LOBYTE(v43[0]) = 0;
    v37 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v43[0]) = 1;
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v43[0]) = 2;
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000F5104(&qword_10093EEE0, &qword_10079D800);
    LOBYTE(v38) = 3;
    sub_10025CE1C(&qword_10093EEE8, &qword_10093EEE0, &qword_10079D800);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v43[0];
    LOBYTE(v43[0]) = 4;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = v10;
    v33 = v11;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    LOBYTE(v38) = 5;
    sub_10025CE1C(&qword_10093EEF0, &unk_10093B300, &unk_100797780);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v43[0];
    LOBYTE(v43[0]) = 6;
    KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    sub_1000F5104(&qword_10094EC10, &qword_1007AD5B0);
    LOBYTE(v38) = 7;
    sub_10025CE1C(&qword_10093EED8, &qword_10094EC10, &qword_1007AD5B0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v43[0];
    v47[0] = 8;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32[1] = 0;
    v17 = v34;
    v18 = v16;
    (*(v6 + 8))(v9, v5);
    v20 = v36;
    v19 = v37;
    *&v38 = v37;
    *(&v38 + 1) = v36;
    v21 = v35;
    *&v39 = v35;
    *(&v39 + 1) = v17;
    v22 = v33;
    *&v40 = v33;
    *(&v40 + 1) = v12;
    LODWORD(v41) = v14;
    *(&v41 + 1) = v15;
    v42 = v18;
    sub_10025CF10(&v38, v43);
    sub_10000607C(a1);
    v43[0] = v19;
    v43[1] = v20;
    v43[2] = v21;
    v43[3] = v34;
    v43[4] = v22;
    v43[5] = v12;
    v44 = v14;
    v45 = v15;
    v46 = v18;
    sub_10025C234(v43, v23, v24, v25, v26, v27, v28, v29);
    v30 = v41;
    *(a2 + 32) = v40;
    *(a2 + 48) = v30;
    *(a2 + 64) = v42;
    v31 = v39;
    *a2 = v38;
    *(a2 + 16) = v31;
  }
}

uint64_t sub_1002589E8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  __chkstk_darwin(v3, v4);
  v6 = v11 - v5;
  URL.appendingPathComponent(_:isDirectory:)();
  v7 = Data.init(contentsOf:options:)();
  v9 = v8;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10025C3C0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  (*(v1 + 8))(v6, v0);

  sub_10001BBA0(v7, v9);
  return v11[4];
}

char *sub_100258DC0(char *a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t a5, _TtC7remindd19RDXPCStorePerformer *a6)
{
  v687 = a6;
  v682 = a5;
  v692 = a4;
  v699 = a1;
  v700 = a3;
  v695 = type metadata accessor for URL();
  v690 = *(v695 - 8);
  __chkstk_darwin(v695, v8);
  v705 = &v657 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v683 = &v657 - v12;
  __chkstk_darwin(v13, v14);
  v684 = &v657 - v15;
  __chkstk_darwin(v16, v17);
  v702 = &v657 - v18;
  __chkstk_darwin(v19, v20);
  v689 = &v657 - v21;
  __chkstk_darwin(v22, v23);
  v685 = &v657 - v24;
  __chkstk_darwin(v25, v26);
  v28 = &v657 - v27;
  __chkstk_darwin(v29, v30);
  v32 = &v657 - v31;
  __chkstk_darwin(v33, v34);
  v36 = &v657 - v35;
  __chkstk_darwin(v37, v38);
  v40 = &v657 - v39;
  __chkstk_darwin(v41, v42);
  v44 = &v657 - v43;
  v45 = a2;
  URL.appendingPathComponent(_:)();
  v46 = Data.init(contentsOf:options:)();
  v703 = v47;
  v704 = v46;
  if (v6)
  {
    v692, v47, v48, v49, v50, v51, v52, v53;
    v687, v54, v55, v56, v57, v58, v59, v60;
    v61 = *(v690 + 8);
    v62 = v695;
    v61(v45, v695);
    v61(v699, v62);
    v61(v44, v62);
    return v62;
  }

  v701 = v44;
  v673 = v32;
  v674 = v36;
  v679 = v40;
  v680 = v28;
  v693 = a2;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10025C18C();
  v64 = v703;
  v63 = v704;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v688 = 0;
  v65 = v690;
  v66 = v701;
  v701 = *(v690 + 8);
  v701(v66, v695);

  sub_10001BBA0(v63, v64);
  v67 = v711;
  v68 = v714;
  v69 = v715;
  v70 = v716;
  v71 = v719;
  v72 = v713;
  v73 = v705;
  v62 = v702;
  v666 = v710;
  v667 = v718;
  v675 = v712;
  v672 = v713;
  v669 = v717;
  v668 = v720;
  v660 = v723;
  v661 = v722;
  v677 = v721;

  v686 = v68;

  v665 = v70;

  v681 = v71;

  sub_10025C33C(&v710, v74, v75, v76, v77, v78, v79, v80);
  v659 = sub_1002589E8();
  v89 = v81;
  v676 = v82;
  v90 = v67;
  v698 = *(v67 + 16);
  if (v698)
  {
    v658 = v72;
    v91 = 0;
    v694 = (v65 + 16);
    v697 = v65 + 8;
    v664 = "siriOwlHeader.mlmodelc";
    v662 = "SupportedAppVersion";
    v663 = "GroceryBubbles.json";
    *&v88 = 134218242;
    v678 = v88;
    v703 = &_swiftEmptyArrayStorage;
    v704 = &_swiftEmptyArrayStorage;
    v92 = v695;
    v93 = v700;
    v691 = v67;
    v696 = v81;
    while (1)
    {
      if (v91 >= *v90->clientIdentity)
      {
        __break(1u);
      }

      v94 = *&v90->clientIdentity[8 * v91 + 16];
      if (v94 >= 5)
      {
        if (qword_100935D70 != -1)
        {
          swift_once();
        }

        v113 = type metadata accessor for Logger();
        sub_100006654(v113, qword_10093EB60);
        (*v694)(v73, v693, v92);
        v114 = Logger.logObject.getter();
        v115 = v92;
        v116 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v114, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          *&v707 = v118;
          *v117 = v678;
          *(v117 + 4) = v94;
          *(v117 + 12) = 2080;
          v119 = URL.description.getter();
          v121 = v120;
          v701(v705, v115);
          v122 = sub_10000668C(v119, v121, &v707);
          v121, v123, v124, v125, v126, v127, v128, v129;
          *(v117 + 14) = v122;
          _os_log_impl(&_mh_execute_header, v114, v116, "Invalid model type value %ld found in model info file %s}.", v117, 0x16u);
          sub_10000607C(v118);
          v73 = v705;

          v90 = v691;
        }

        else
        {

          v701(v73, v115);
        }

        v92 = v115;
        v93 = v700;
        goto LABEL_7;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v704 = sub_1003669A8(0, *v704->clientIdentity + 1, 1, v704, v98, v99, v100, v101);
      }

      v103 = *v704->clientIdentity;
      v102 = *&v704->clientIdentity[8];
      if (v103 >= v102 >> 1)
      {
        v704 = sub_1003669A8((v102 > 1), v103 + 1, 1, v704, v98, v99, v100, v101);
      }

      v104 = v704;
      *v704->clientIdentity = v103 + 1;
      v104->clientIdentity[v103 + 16] = v94;
      v105 = v94;
      if (v94 <= 1u)
      {
        break;
      }

      v106 = v689;
      if (v94 == 2)
      {
        URL.appendingPathComponent(_:isDirectory:)();
        v150 = type metadata accessor for REMRegExTextClassifier();
        (*v694)(v62, v106, v92);

        v151 = v688;
        v152 = REMRegExTextClassifier.__allocating_init(modelURL:numOfClasses:labels:)();
        v688 = v151;
        if (v151)
        {
          v691, v153, v154, v155, v156, v157, v158, v159;
          v686, v229, v230, v231, v232, v233, v234, v235;
          v658, v236, v237, v238, v239, v240, v241, v242;
          v665, v243, v244, v245, v246, v247, v248, v249;
          v681, v250, v251, v252, v253, v254, v255, v256;
          v677, v257, v258, v259, v260, v261, v262, v263;
          v692, v264, v265, v266, v267, v268, v269, v270;
          v687, v271, v272, v273, v274, v275, v276, v277;
          v676, v278, v279, v280, v281, v282, v283, v284;
          v285 = v701;
          v62 = v106;
          v701(v693, v92);
          v285(v699, v92);
          v285(v106, v92);
          v703, v286, v287, v288, v289, v290, v291, v292;
          v704, v293, v294, v295, v296, v297, v298, v299;
          return v62;
        }

        v160 = v152;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v703 = sub_100366984(0, (*v703->clientIdentity + 1), 1, v703);
        }

        v162 = *v703->clientIdentity;
        v161 = *&v703->clientIdentity[8];
        if (v162 >= v161 >> 1)
        {
          v703 = sub_100366984((v161 > 1), (v162 + 1), 1, v703);
        }

        v701(v689, v92);
        v708 = v150;
        v709 = sub_10025C528(&qword_10093EE48, &type metadata accessor for REMRegExTextClassifier, &protocol conformance descriptor for REMRegExTextClassifier);
        *&v707 = v160;
        v163 = v703;
        *v703->clientIdentity = v162 + 1;
        v164 = v163 + 40 * v162;
        goto LABEL_56;
      }

      if (v94 == 3)
      {
        if (!v676)
        {
          v703, v95, v96, v97, v98, v99, v100, v101;
          v704, v300, v301, v302, v303, v304, v305, v306;
          v90, v307, v308, v309, v310, v311, v312, v313;
          v686, v314, v315, v316, v317, v318, v319, v320;
          v658, v321, v322, v323, v324, v325, v326, v327;
          v665, v328, v329, v330, v331, v332, v333, v334;
          v681, v335, v336, v337, v338, v339, v340, v341;
          v677, v342, v343, v344, v345, v346, v347, v348;
          v692, v349, v350, v351, v352, v353, v354, v355;
          v687, v356, v357, v358, v359, v360, v361, v362;
          v363 = 0x80000001007F2630;
          sub_10025C36C();
          swift_allocError();
          *v364 = 3;
          v365 = 0xD000000000000026;
LABEL_69:
          *(v364 + 8) = v365;
          *(v364 + 16) = v363;
          swift_willThrow();
          v513 = v701;
          v701(v693, v92);
          v514 = v699;
          goto LABEL_70;
        }

        v107 = type metadata accessor for REMGroceryDummyModel();
        v108 = objc_allocWithZone(v107);

        v109 = REMGroceryDummyModel.init(labels:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v703 = sub_100366984(0, (*v703->clientIdentity + 1), 1, v703);
        }

        v111 = *v703->clientIdentity;
        v110 = *&v703->clientIdentity[8];
        v112 = v111 + 1;
        if (v111 >= v110 >> 1)
        {
          v703 = sub_100366984((v110 > 1), (v111 + 1), 1, v703);
        }

        v708 = v107;
        v709 = &protocol witness table for REMGroceryDummyModel;
        *&v707 = v109;
LABEL_55:
        v164 = v703 + 40 * v111;
        *v703->clientIdentity = v112;
LABEL_56:
        sub_100054B6C(&v707, (v164 + 32));
LABEL_57:
        v73 = v705;
        v90 = v691;
        goto LABEL_7;
      }

      v165 = v692;
      if (!v681)
      {
        v703, v95, v96, v97, v98, v99, v100, v101;
        v704, v515, v516, v517, v518, v519, v520, v521;
        v90, v522, v523, v524, v525, v526, v527, v528;
        v165, v529, v530, v531, v532, v533, v534, v535;
        v686, v536, v537, v538, v539, v540, v541, v542;
        v658, v543, v544, v545, v546, v547, v548, v549;
        v665, v550, v551, v552, v553, v554, v555, v556;
        v677, v557, v558, v559, v560, v561, v562, v563;
        v676, v564, v565, v566, v567, v568, v569, v570;
        v687, v571, v572, v573, v574, v575, v576, v577;
        v363 = 0x80000001007F2600;
        sub_10025C36C();
        swift_allocError();
        *v364 = 4;
        v365 = 0xD000000000000028;
        goto LABEL_69;
      }

      v166 = v684;
      URL.appendingPathComponent(_:isDirectory:)();
      v167 = v668;
      v168 = v677;
      if (!v677)
      {

        v167 = v93;
        v168 = v165;
      }

      v670 = v167;
      v169 = v683;
      (*v694)(v683, v166, v92);
      v170 = v686;
      v671 = *v686->clientIdentity;
      v171 = objc_allocWithZone(MLModelConfiguration);

      v172 = [v171 init];
      [v172 setComputeUnits:2];
      v62 = v172;
      URL._bridgeToObjectiveC()(v173);
      v175 = v174;
      v176 = objc_opt_self();
      *&v707 = 0;
      v177 = [v176 modelWithContentsOfURL:v175 configuration:v62 error:&v707];

      if (!v177)
      {
        v578 = v707;
        v691, v579, v580, v581, v582, v583, v584, v585;
        v170, v586, v587, v588, v589, v590, v591, v592;
        v658, v593, v594, v595, v596, v597, v598, v599;
        v665, v600, v601, v602, v603, v604, v605, v606;
        v677, v607, v608, v609, v610, v611, v612, v613;
        v692, v614, v615, v616, v617, v618, v619, v620;
        v168, v621, v622, v623, v624, v625, v626, v627;
        swift_bridgeObjectRelease_n();

        v687, v628, v629, v630, v631, v632, v633, v634;
        v676, v635, v636, v637, v638, v639, v640, v641;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v642 = v701;
        v701(v693, v92);
        v642(v699, v92);
        v642(v169, v92);
        v642(v684, v92);
        v703, v643, v644, v645, v646, v647, v648, v649;
        v704, v650, v651, v652, v653, v654, v655, v656;
        return v62;
      }

      v178 = v707;

      v179 = v92;
      v180 = type metadata accessor for REMOwlEmbeddingClassifier(0);
      v181 = swift_allocObject();
      v181[3] = [objc_allocWithZone(CDMClient) init];
      Locale.init(identifier:)();

      v701(v683, v179);
      v182 = (v181 + OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_embeddingVersion);
      v183 = v681;
      *v182 = v667;
      v182[1] = v183;
      v184 = v671;
      v181[4] = v177;
      v181[5] = v184;
      v181[2] = v170;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v703 = sub_100366984(0, (*v703->clientIdentity + 1), 1, v703);
      }

      v90 = v691;
      v186 = *v703->clientIdentity;
      v185 = *&v703->clientIdentity[8];
      if (v186 >= v185 >> 1)
      {
        v703 = sub_100366984((v185 > 1), (v186 + 1), 1, v703);
      }

      v701(v684, v179);
      v708 = v180;
      v92 = v179;
      v709 = sub_10025C528(&qword_10093EE40, type metadata accessor for REMOwlEmbeddingClassifier, &protocol conformance descriptor for REMOwlEmbeddingClassifier);
      *&v707 = v181;
      v187 = v703;
      *v703->clientIdentity = v186 + 1;
      sub_100054B6C(&v707, &v187->clientIdentity[40 * v186 + 16]);
      v93 = v700;
      v73 = v705;
LABEL_7:
      v89 = v696;
      ++v91;
      v62 = v702;
      if (v698 == v91)
      {
        goto LABEL_59;
      }
    }

    v130 = v680;
    if (v105)
    {
      URL.appendingPathComponent(_:isDirectory:)();
      v188 = type metadata accessor for REMAnchoredBubbleModel();
      v189 = static REMAnchoredBubbleModel.loadGroceryModel(from:labels:)();
      if (!v189)
      {
        v703, v190, v191, v192, v193, v194, v195, v196;
        v704, v442, v443, v444, v445, v446, v447, v448;
        v90, v449, v450, v451, v452, v453, v454, v455;
        v692, v456, v457, v458, v459, v460, v461, v462;
        v686, v463, v464, v465, v466, v467, v468, v469;
        v658, v470, v471, v472, v473, v474, v475, v476;
        v665, v477, v478, v479, v480, v481, v482, v483;
        v681, v484, v485, v486, v487, v488, v489, v490;
        v677, v491, v492, v493, v494, v495, v496, v497;
        v676, v498, v499, v500, v501, v502, v503, v504;
        v687, v505, v506, v507, v508, v509, v510, v511;
        sub_10025C36C();
        swift_allocError();
        *v512 = 1;
        *(v512 + 8) = 0xD000000000000025;
        *(v512 + 16) = 0x80000001007F2660;
        swift_willThrow();
        v513 = v701;
        v701(v693, v92);
        v513(v699, v92);
        v514 = v685;
LABEL_70:
        v513(v514, v92);
        return v62;
      }

      v197 = v189;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v703 = sub_100366984(0, (*v703->clientIdentity + 1), 1, v703);
      }

      v111 = *v703->clientIdentity;
      v198 = *&v703->clientIdentity[8];
      v112 = v111 + 1;
      if (v111 >= v198 >> 1)
      {
        v703 = sub_100366984((v198 > 1), (v111 + 1), 1, v703);
      }

      (v701)();
      v708 = v188;
      v709 = &protocol witness table for REMAnchoredBubbleModel;
      *&v707 = v197;
      goto LABEL_55;
    }

    v131 = v679;
    URL.appendingPathComponent(_:isDirectory:)();
    v132 = v674;
    URL.appendingPathComponent(_:isDirectory:)();
    v133 = *v694;
    (*v694)(v673, v132, v92);
    v133(v130, v131, v92);
    v134 = type metadata accessor for REMBertTextClassifier();

    v135 = v688;
    v136 = REMBertTextClassifier.__allocating_init(vocabURL:modelURL:numOfClasses:maxLength:labels:asciiOnly:)();
    v688 = v135;
    if (v135)
    {
      v703, v137, v138, v139, v140, v141, v142, v143;
      v704, v366, v367, v368, v369, v370, v371, v372;
      v691, v373, v374, v375, v376, v377, v378, v379;
      v692, v380, v381, v382, v383, v384, v385, v386;
      v686, v387, v388, v389, v390, v391, v392, v393;
      v658, v394, v395, v396, v397, v398, v399, v400;
      v665, v401, v402, v403, v404, v405, v406, v407;
      v681, v408, v409, v410, v411, v412, v413, v414;
      v677, v415, v416, v417, v418, v419, v420, v421;
      v676, v422, v423, v424, v425, v426, v427, v428;
      v687, v429, v430, v431, v432, v433, v434, v435;
      swift_getErrorValue();
      v436 = Error.rem_errorDescription.getter();
      v437 = v131;
      v439 = v438;
      sub_10025C36C();
      swift_allocError();
      *v440 = 0;
      *(v440 + 8) = v436;
      *(v440 + 16) = v439;
      swift_willThrow();

      v62 = v695;
      v441 = v701;
      v701(v693, v695);
      v441(v699, v62);
      v441(v132, v62);
      v441(v437, v62);
      return v62;
    }

    v144 = v136;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v703 = sub_100366984(0, (*v703->clientIdentity + 1), 1, v703);
    }

    v92 = v695;
    v146 = *v703->clientIdentity;
    v145 = *&v703->clientIdentity[8];
    if (v146 >= v145 >> 1)
    {
      v703 = sub_100366984((v145 > 1), (v146 + 1), 1, v703);
    }

    v147 = v132;
    v148 = v701;
    v701(v147, v92);
    v148(v679, v92);
    v708 = v134;
    v709 = &protocol witness table for REMBertTextClassifier;
    *&v707 = v144;
    v149 = v703 + 40 * v146;
    *v703->clientIdentity = v146 + 1;
    sub_100054B6C(&v707, (v149 + 32));
    v93 = v700;
    goto LABEL_57;
  }

  v703 = &_swiftEmptyArrayStorage;
  v704 = &_swiftEmptyArrayStorage;
  v92 = v695;
  v93 = v700;
LABEL_59:
  v681, v81, v82, v83, v84, v85, v86, v87;
  v677, v199, v200, v201, v202, v203, v204, v205;
  v90, v206, v207, v208, v209, v210, v211, v212;
  v213 = v676;
  if (v676)
  {
    v214 = v659;
    v215 = v687;
    v216 = v682;
    v217 = v89;
  }

  else
  {
    v213 = sub_10038F94C(&_swiftEmptyArrayStorage);
    v217 = 0;
    v215 = v687;
    v216 = v682;
    v214 = v666;
  }

  v218 = type metadata accessor for REMGroceryClassifier();
  v219 = objc_allocWithZone(v218);
  v220 = OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireLemmatization;
  v219[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireLemmatization] = 2;
  v221 = OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireRemovingNumbers;
  v219[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireRemovingNumbers] = 2;
  *&v219[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_models] = v703;
  *&v219[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelTypes] = v704;
  *&v219[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_labels] = v686;
  v222 = &v219[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_corrections];
  *v222 = v214;
  v222[1] = v217;
  v222[2] = v213;
  v223 = *(&v672 + 1);
  *&v219[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_thresholds] = v672;
  *&v219[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_topN] = v223;
  *&v219[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_groceryListScoreThreshold] = v69;
  *&v219[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_groceryListScoreExcludedCategories] = v665;
  v224 = &v219[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale];
  v225 = v692;
  *v224 = v93;
  v224[1] = v225;
  v226 = &v219[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID];
  *v226 = v216;
  v226[1] = v215;
  v219[v220] = v661;
  v219[v221] = v660;
  v706.receiver = v219;
  v706.super_class = v218;
  v62 = objc_msgSendSuper2(&v706, "init");
  v227 = v701;
  v701(v693, v92);
  v227(v699, v92);
  return v62;
}

char *sub_10025A4E4(NSObject *a1, void (*a2)(char *, uint64_t), char *a3)
{
  v149 = a1;
  v150 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v141 = v5;
  v142 = v6;
  __chkstk_darwin(v5, v7);
  v139 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v138 = &v129 - v11;
  __chkstk_darwin(v12, v13);
  v140 = &v129 - v14;
  __chkstk_darwin(v15, v16);
  v18 = &v129 - v17;
  __chkstk_darwin(v19, v20);
  v143 = &v129 - v21;
  __chkstk_darwin(v22, v23);
  v146 = &v129 - v24;
  v25 = type metadata accessor for REMGroceryLocaleMapping.LocaleSetting();
  v144 = *(v25 - 8);
  v145 = v25;
  __chkstk_darwin(v25, v26);
  v151 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for REMGroceryLocaleMapping();
  v147 = *(v28 - 8);
  v148 = v28;
  __chkstk_darwin(v28, v29);
  v31 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for REMTrialNamespace();
  v33 = *(v32 - 8);
  v35 = __chkstk_darwin(v32, v34);
  v37 = &v129 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v137 = v18;
    v38 = a3;
  }

  else
  {
    type metadata accessor for REMTrialClient();
    v39 = swift_allocObject();
    v50 = REMTrialClient.init()();
    if (v3)
    {
      return v39;
    }

    v38 = v50;
    v137 = v18;
  }

  (*(v33 + 104))(v37, enum case for REMTrialNamespace.grocery(_:), v32, v35);

  v39 = v38;
  v40 = dispatch thunk of REMTrialClient.deploymentId(for:)();
  v42 = v41;
  (*(v33 + 8))(v37, v32);
  dispatch thunk of REMTrialClient.loadGroceryLocaleMapping()();
  if (v3)
  {

    v42, v43, v44, v45, v46, v47, v48, v49;
  }

  else
  {
    v136 = v40;
    REMGroceryLocaleMapping.localeSetting(for:)();
    REMGroceryLocaleMapping.LocaleSetting.base.getter();
    v52 = v51;
    dispatch thunk of REMTrialClient.groceryDirectoryURL(for:)();
    v52, v53, v54, v55, v56, v57, v58, v59;
    REMGroceryLocaleMapping.LocaleSetting.meta.getter();
    v61 = v60;
    dispatch thunk of REMTrialClient.groceryDirectoryURL(for:)();
    v61, v62, v63, v64, v65, v66, v67, v68;
    v70 = v142;
    if (qword_100935D70 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_100006654(v71, qword_10093EB60);
    v72 = *(v70 + 16);
    v73 = v141;
    v72(v137, v146, v141);
    v134 = v72;
    v135 = v70 + 16;
    v72(v140, v143, v73);

    v74 = v150;

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();
    v74, v77, v78, v79, v80, v81, v82, v83;
    v42, v84, v85, v86, v87, v88, v89, v90;
    v91 = os_log_type_enabled(v75, v76);
    v133 = v42;
    if (v91)
    {
      v92 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v152 = v132;
      *v92 = 136446978;
      *(v92 + 4) = sub_10000668C(v136, v42, &v152);
      *(v92 + 12) = 2082;
      *(v92 + 14) = sub_10000668C(v149, v74, &v152);
      *(v92 + 22) = 2082;
      v149 = v75;
      v93 = v137;
      v150 = URL.absoluteString.getter();
      v95 = v94;
      v131 = v76;
      v96 = *(v142 + 8);
      v96(v93, v141);
      v97 = sub_10000668C(v150, v95, &v152);
      v98 = v95;
      v73 = v141;
      v98, v99, v100, v101, v102, v103, v104, v105;
      v130 = v92;
      *(v92 + 24) = v97;
      *(v92 + 32) = 2082;
      v106 = v140;
      v107 = URL.absoluteString.getter();
      v109 = v108;
      v150 = v96;
      v96(v106, v73);
      v110 = sub_10000668C(v107, v109, &v152);
      v109, v111, v112, v113, v114, v115, v116, v117;
      v118 = v130;
      *(v130 + 34) = v110;
      v119 = v149;
      _os_log_impl(&_mh_execute_header, v149, v131, "loading model from Trial {deploymentId: %{public}s, locale: %{public}s, base directory: %{public}s, meta directory: %{public}s}", v118, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v120 = *(v70 + 8);
      v120(v140, v73);
      v150 = v120;
      v120(v137, v73);
    }

    v121 = v138;
    v122 = v134;
    v134(v138, v146, v73);
    v123 = v139;
    v124 = v143;
    v122(v139, v143, v73);
    v125 = v151;
    v126 = REMGroceryLocaleMapping.LocaleSetting.meta.getter();
    v39 = sub_100258DC0(v121, v123, v126, v127, v136, v133);

    v128 = v150;
    v150(v124, v73);
    v128(v146, v73);
    (*(v144 + 8))(v125, v145);
    (*(v147 + 8))(v31, v148);
  }

  return v39;
}

void _s7remindd20REMGroceryClassifierC26requestNLAssetsIfNecessary11modelLocaleySS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Locale.Components();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  Locale.Components.init(identifier:)();
  v41 = v6;
  v7._rawValue = Locale.Components.rem_language()()._rawValue;
  v8 = objc_opt_self();
  v9 = [v8 availableTagSchemesForUnit:0 language:v7._rawValue];
  type metadata accessor for NLTagScheme(0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  p_aBlock = &aBlock;
  aBlock = NLTagSchemeNameTypeOrLexicalClass;
  v11 = sub_1003377DC(sub_10025C570, v42, v10);
  v10, v12, v13, v14, v15, v16, v17, v18;
  if ((v11 & 1) == 0)
  {
    v19 = swift_allocObject();
    v19[2]._rawValue = v7._rawValue;
    v48 = sub_10025C590;
    v49 = v19;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_10024E2C0;
    v47 = &unk_1008EBB38;
    v20 = _Block_copy(&aBlock);
    v21 = v3;
    v22 = v2;
    v23 = v7._rawValue;

    v24 = v23;
    v2 = v22;
    v3 = v21;
    [v8 requestAssetsForLanguage:v24 tagScheme:NLTagSchemeNameTypeOrLexicalClass completionHandler:v20];
    _Block_release(v20);
  }

  v25 = [v8 availableTagSchemesForUnit:0 language:v7._rawValue];
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock = NLTagSchemeLemma;
  __chkstk_darwin(v27, v28);
  *(&v40 - 2) = &aBlock;
  v29 = sub_1003377DC(sub_10025D2F0, (&v40 - 4), v26);
  v26, v30, v31, v32, v33, v34, v35, v36;
  if (v29)
  {
    (*(v3 + 8))(v41, v2);
  }

  else
  {
    v37 = swift_allocObject();
    v37[2]._rawValue = v7._rawValue;
    v48 = sub_10025C5CC;
    v49 = v37;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_10024E2C0;
    v47 = &unk_1008EBB88;
    v38 = _Block_copy(&aBlock);
    v39 = v7._rawValue;

    [v8 requestAssetsForLanguage:v39 tagScheme:NLTagSchemeLemma completionHandler:v38];
    _Block_release(v38);

    (*(v3 + 8))(v41, v2);
  }
}

uint64_t sub_10025B154(uint64_t a1, uint64_t *a2, void *a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000FCBFC;

  return sub_1002520A0(a1, a2, a3, v9, v8);
}

_TtC7remindd19RDXPCStorePerformer *sub_10025B218()
{
  v2 = REMRegExTextClassifier.predictIndices(_:)();
  if (!v0)
  {
    v10 = *(v2 + 16);
    if (v10)
    {
      v1 = &_swiftEmptyArrayStorage;
      v11 = 32;
      v31 = v2;
      do
      {
        v13 = *(v2 + v11);
        v34 = REMRegExTextClassifier.labels.getter();
        sub_1000F5104(&unk_10093B300, &unk_100797780);
        sub_10000CB48(&qword_10093EE30, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
        Collection.subscript.getter();
        v34, v14, v15, v16, v17, v18, v19, v20;
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_100366AE4(0, (*v1->clientIdentity + 1), 1, v1, v24, v25, v26, v27);
          }

          v29 = *v1->clientIdentity;
          v28 = *&v1->clientIdentity[8];
          if (v29 >= v28 >> 1)
          {
            v1 = sub_100366AE4((v28 > 1), (v29 + 1), 1, v1, v24, v25, v26, v27);
          }

          *v1->clientIdentity = v29 + 1;
          v12 = v1 + 32 * v29;
          *(v12 + 4) = v13;
          *(v12 + 5) = v32;
          *(v12 + 6) = v33;
          *(v12 + 14) = 1065353216;
        }

        v11 += 8;
        --v10;
        v2 = v31;
      }

      while (v10);
      v31, v21, v22, v23, v24, v25, v26, v27;
    }

    else
    {
      v2, v3, v4, v5, v6, v7, v8, v9;
      return &_swiftEmptyArrayStorage;
    }
  }

  return v1;
}

unint64_t sub_10025B3BC()
{
  result = qword_10093EBC8;
  if (!qword_10093EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EBC8);
  }

  return result;
}

double sub_10025B410(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

double sub_10025B438(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3 <= 2u)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }

  return result;
}

uint64_t sub_10025B450(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_10025B410(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for REMGroceryClassifierError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_10025B410(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_10025B438(v6, v7, v8, v9, v10, v11, v12, v13);
  return a1;
}

uint64_t assignWithTake for REMGroceryClassifierError(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a2 + 16);
  v10 = *a1;
  v11 = *(a1 + 8);
  *a1 = *a2;
  v12 = *(a1 + 16);
  *(a1 + 16) = v9;
  sub_10025B438(v10, v11, v12, a4, a5, a6, a7, a8);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMGroceryClassifierError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for REMGroceryClassifierError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10025B5F0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for REMGroceryClassifierLoadingError(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v3, v4, v5, v6, v7, v8, v9, v10;
  return a1;
}

uint64_t assignWithTake for REMGroceryClassifierLoadingError(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v9;
  v10, a2, a3, a4, a5, a6, a7, a8;
  return a1;
}

double destroy for REMGroceryClassifier.PredictionResult(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 16), a2, a3, a4, a5, a6, a7, a8;
  v16 = *(a1 + 40);

  v16, v9, v10, v11, v12, v13, v14, v15;
  return result;
}

uint64_t initializeWithCopy for REMGroceryClassifier.PredictionResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

uint64_t assignWithCopy for REMGroceryClassifier.PredictionResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v4, v5, v6, v7, v8, v9, v10, v11;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a1 + 40);
  *(a1 + 40) = v12;

  v13, v14, v15, v16, v17, v18, v19, v20;
  return a1;
}

__n128 initializeWithTake for REMGroceryClassifier.PredictionResult(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for REMGroceryClassifier.PredictionResult(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = *a2;
  v10 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v10, a2, a3, a4, a5, a6, a7, a8;
  *(a1 + 24) = *(a2 + 24);
  v11 = *(a2 + 40);
  v12 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v11;
  v12, v13, v14, v15, v16, v17, v18, v19;
  return a1;
}

uint64_t getEnumTagSinglePayload for REMGroceryClassifier.PredictionResult(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for REMGroceryClassifier.PredictionResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10025B910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v75 = a1;
  v77 = a3;
  v3 = type metadata accessor for URL();
  v73 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v6 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = v65 - v9;
  v11 = type metadata accessor for REMGroceryLocaleMapping.LocaleSetting();
  v74 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v14 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for REMGroceryLocaleMapping();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMTrialClient();
  swift_allocObject();
  v20 = v78;
  result = REMTrialClient.init()();
  if (!v20)
  {
    v69 = v6;
    v71 = v10;
    *&v78 = v14;
    v68 = v3;
    v70 = v11;
    v72 = v15;
    v22 = v77;
    dispatch thunk of REMTrialClient.loadGroceryLocaleMapping()();
    REMGroceryLocaleMapping.localeSetting(for:)();
    REMGroceryLocaleMapping.LocaleSetting.base.getter();
    v24 = v23;
    dispatch thunk of REMTrialClient.groceryDirectoryURL(for:)();
    v75 = v16;
    v24, v25, v26, v27, v28, v29, v30, v31;
    URL.appendingPathComponent(_:)();
    v67 = Data.init(contentsOf:options:)();
    v66 = v32;
    v76 = 0;
    v33 = v70;
    v34 = v74;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10025C18C();
    v35 = v67;
    v36 = v66;
    v37 = v76;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v76 = v37;

    if (v37)
    {
      swift_allocObject();
      JSONDecoder.init()();
      sub_10025C1E0();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v38 = v69;
      v39 = v75;
      v65[1] = 0;

      v79 = v84;
      v80 = *v85;
      v81 = *&v85[16];
      v82 = v86;
      v83 = v87;
      v65[0] = v84;
      sub_1000F5104(&unk_100943FC0, &unk_10079D380);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_100791300;
      *(v42 + 32) = *(&v79 + 1);
      sub_10001BBA0(v67, v36);

      v43 = *(v73 + 8);
      v44 = v38;
      v45 = v68;
      v43(v44, v68);
      v43(v71, v45);
      (*(v34 + 8))(v78, v33);
      (*(v39 + 8))(v19, v72);
      v78 = v80;
      v46 = *(&v81 + 1);
      v47 = v81;
      v48 = v82;
      v49 = *(&v82 + 1);

      result = sub_10025C234(&v79, v50, v51, v52, v53, v54, v55, v56);
      v57 = v78;
      v58 = v65[0];
      v59 = v83;
      v60 = 0uLL;
      v61 = 2;
      v62 = 3;
      v63 = 2;
      v64 = 0uLL;
    }

    else
    {
      sub_10001BBA0(v35, v36);

      v40 = *(v73 + 8);
      v41 = v68;
      v40(v69, v68);
      v40(v71, v41);
      (*(v34 + 8))(v78, v33);
      result = (*(v75 + 8))(v19, v72);
      v62 = *(&v84 + 1);
      v58 = v84;
      v42 = *v85;
      v57 = *&v85[8];
      v47 = *&v85[24];
      v46 = v86;
      v48 = DWORD2(v86);
      v49 = v87;
      v59 = v88;
      v60 = v89;
      v64 = v90;
      v61 = v91;
      v63 = v92;
    }

    *v22 = v58;
    *(v22 + 8) = v62;
    *(v22 + 16) = v42;
    *(v22 + 24) = v57;
    *(v22 + 40) = v47;
    *(v22 + 48) = v46;
    *(v22 + 56) = v48;
    *(v22 + 64) = v49;
    *(v22 + 72) = v59;
    *(v22 + 80) = v60;
    *(v22 + 96) = v64;
    *(v22 + 112) = v61;
    *(v22 + 113) = v63;
  }

  return result;
}

unint64_t sub_10025C18C()
{
  result = qword_10093EC50;
  if (!qword_10093EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EC50);
  }

  return result;
}

unint64_t sub_10025C1E0()
{
  result = qword_10093EC58;
  if (!qword_10093EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EC58);
  }

  return result;
}

unint64_t sub_10025C264()
{
  result = qword_10093EC88;
  if (!qword_10093EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EC88);
  }

  return result;
}

unint64_t sub_10025C2B8()
{
  result = qword_10093EC98;
  if (!qword_10093EC98)
  {
    sub_1000F514C(&qword_10093EC90, &qword_10079D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EC98);
  }

  return result;
}

unint64_t sub_10025C36C()
{
  result = qword_10093EE38;
  if (!qword_10093EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EE38);
  }

  return result;
}

unint64_t sub_10025C3C0()
{
  result = qword_10093EE50;
  if (!qword_10093EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EE50);
  }

  return result;
}

uint64_t sub_10025C414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000FCBFC;

  return sub_1002523F8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10025C528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10025C608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDTimelineEngineDueReminder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double destroy for REMGroceryClassifier.ModelInfoV2(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  a1[3], a2, a3, a4, a5, a6, a7, a8;
  a1[5], v9, v10, v11, v12, v13, v14, v15;
  v23 = a1[7];

  v23, v16, v17, v18, v19, v20, v21, v22;
  return result;
}

uint64_t initializeWithCopy for REMGroceryClassifier.ModelInfoV2(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for REMGroceryClassifier.ModelInfoV2(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v4, v5, v6, v7, v8, v9, v10, v11;
  *(a1 + 32) = *(a2 + 32);
  v12 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v12, v13, v14, v15, v16, v17, v18, v19;
  *(a1 + 48) = *(a2 + 48);
  v20 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  v20, v21, v22, v23, v24, v25, v26, v27;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

__n128 initializeWithTake for REMGroceryClassifier.ModelInfoV2(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for REMGroceryClassifier.ModelInfoV2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = *a2;
  v10 = *(a1 + 24);
  v11 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v11;
  v10, a2, a3, a4, a5, a6, a7, a8;
  v12 = *(a2 + 40);
  v13 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v12;
  v13, v14, v15, v16, v17, v18, v19, v20;
  *(a1 + 48) = *(a2 + 48);
  v21 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  v21, v22, v23, v24, v25, v26, v27, v28;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMGroceryClassifier.ModelInfoV2(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for REMGroceryClassifier.ModelInfoV2(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for REMGroceryClassifier.ModelInfo(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  a1[2], a2, a3, a4, a5, a6, a7, a8;
  a1[4], v9, v10, v11, v12, v13, v14, v15;
  a1[6], v16, v17, v18, v19, v20, v21, v22;
  a1[8], v23, v24, v25, v26, v27, v28, v29;
  a1[11], v30, v31, v32, v33, v34, v35, v36;
  v44 = a1[13];

  v44, v37, v38, v39, v40, v41, v42, v43;
  return result;
}

uint64_t initializeWithCopy for REMGroceryClassifier.ModelInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;
  v6 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t assignWithCopy for REMGroceryClassifier.ModelInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v4, v5, v6, v7, v8, v9, v10, v11;
  *(a1 + 24) = *(a2 + 24);
  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v12, v13, v14, v15, v16, v17, v18, v19;
  *(a1 + 40) = *(a2 + 40);
  v20 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v20, v21, v22, v23, v24, v25, v26, v27;
  *(a1 + 56) = *(a2 + 56);
  v28 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  v28, v29, v30, v31, v32, v33, v34, v35;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v36 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  v36, v37, v38, v39, v40, v41, v42, v43;
  *(a1 + 96) = *(a2 + 96);
  v44 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  v44, v45, v46, v47, v48, v49, v50, v51;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  return a1;
}

__n128 initializeWithTake for REMGroceryClassifier.ModelInfo(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for REMGroceryClassifier.ModelInfo(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = *a2;
  v10 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v10, a2, a3, a4, a5, a6, a7, a8;
  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v12;
  v11, v13, v14, v15, v16, v17, v18, v19;
  v20 = *(a2 + 48);
  v21 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v20;
  v21, v22, v23, v24, v25, v26, v27, v28;
  *(a1 + 56) = *(a2 + 56);
  v29 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  v29, v30, v31, v32, v33, v34, v35, v36;
  *(a1 + 72) = *(a2 + 72);
  v37 = *(a2 + 88);
  v38 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v37;
  v38, v39, v40, v41, v42, v43, v44, v45;
  v46 = *(a2 + 104);
  v47 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v46;
  v47, v48, v49, v50, v51, v52, v53, v54;
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMGroceryClassifier.ModelInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for REMGroceryClassifier.ModelInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10025CCC4()
{
  result = qword_10093EEB0;
  if (!qword_10093EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EEB0);
  }

  return result;
}

unint64_t sub_10025CD1C()
{
  result = qword_10093EEB8;
  if (!qword_10093EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EEB8);
  }

  return result;
}

unint64_t sub_10025CD74()
{
  result = qword_10093EEC0;
  if (!qword_10093EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EEC0);
  }

  return result;
}

unint64_t sub_10025CDC8()
{
  result = qword_10093EED0;
  if (!qword_10093EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EED0);
  }

  return result;
}

uint64_t sub_10025CE1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10025CEBC()
{
  result = qword_10093EF00;
  if (!qword_10093EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMGroceryClassifier.ModelInfoV2.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMGroceryClassifier.ModelInfoV2.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10025D0AC()
{
  result = qword_10093EF08;
  if (!qword_10093EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF08);
  }

  return result;
}

unint64_t sub_10025D104()
{
  result = qword_10093EF10;
  if (!qword_10093EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF10);
  }

  return result;
}

unint64_t sub_10025D15C()
{
  result = qword_10093EF18;
  if (!qword_10093EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF18);
  }

  return result;
}

unint64_t sub_10025D1B4()
{
  result = qword_10093EF20;
  if (!qword_10093EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF20);
  }

  return result;
}

unint64_t sub_10025D20C()
{
  result = qword_10093EF28;
  if (!qword_10093EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF28);
  }

  return result;
}

unint64_t sub_10025D264()
{
  result = qword_10093EF30;
  if (!qword_10093EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF30);
  }

  return result;
}

void *sub_10025D324()
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100791300;
  v2._object = 0x80000001007E8D70;
  v2._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  Date.timeIntervalSinceReferenceDate.getter();
  Double.write<A>(to:)();
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *&v40 = 0xD000000000000018;
  *(&v40 + 1) = 0x80000001007F2790;
  v4._countAndFlagsBits = sub_10025D5A0(*(v0 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales));
  object = v4._object;
  String.append(_:)(v4);
  object, v6, v7, v8, v9, v10, v11, v12;
  v41 = &type metadata for String;
  v18 = *(v1 + 16);
  v17 = *(v1 + 24);
  if (v18 >= v17 >> 1)
  {
    v1 = sub_1003658F0((v17 > 1), v18 + 1, 1, v1, v13, v14, v15, v16);
  }

  *(v1 + 16) = v18 + 1;
  sub_100005EE0(&v40, (v1 + 32 * v18 + 32));
  v19 = objc_autoreleasePoolPush();
  v20 = objc_opt_self();

  isa = Array._bridgeToObjectiveC()().super.isa;
  v1, v22, v23, v24, v25, v26, v27, v28;
  *&v40 = 0;
  v29 = [v20 dataWithJSONObject:isa options:0 error:&v40];

  v30 = v40;
  if (v29)
  {
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v31 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  objc_autoreleasePoolPop(v19);
  v1, v32, v33, v34, v35, v36, v37, v38;
  return v31;
}

uint64_t sub_10025D5A0(uint64_t a1)
{
  v2 = 0xD000000000000012;
  v75 = type metadata accessor for Locale();
  v3 = *(v75 - 8);
  __chkstk_darwin(v75, v4);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = *(a1 + 16);
    v12 = &_swiftEmptyArrayStorage;
    if (v11)
    {
      v76 = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, v11, 0);
      v12 = v76;
      v14 = *(v3 + 16);
      v13 = v3 + 16;
      v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v72 = *(v13 + 56);
      v73 = v14;
      v74 = v13;
      v16 = (v13 - 8);
      do
      {
        v17 = v75;
        v73(v10, v15, v75);
        v18 = Locale.identifier.getter();
        v20 = v19;
        (*v16)(v10, v17);
        v76 = v12;
        v22 = *v12->clientIdentity;
        v21 = *&v12->clientIdentity[8];
        if (v22 >= v21 >> 1)
        {
          sub_100026EF4((v21 > 1), v22 + 1, 1);
          v12 = v76;
        }

        *v12->clientIdentity = v22 + 1;
        v23 = v12 + 16 * v22;
        *(v23 + 4) = v18;
        *(v23 + 5) = v20;
        v15 += v72;
        --v11;
      }

      while (v11);
    }

    v28 = sub_100365788(0, 1, 1, &_swiftEmptyArrayStorage, v5, v6, v7, v8);
    v30 = *v28->clientIdentity;
    v29 = *&v28->clientIdentity[8];
    if (v30 >= v29 >> 1)
    {
      v28 = sub_100365788((v29 > 1), v30 + 1, 1, v28, v24, v25, v26, v27);
    }

    *v28->clientIdentity = v30 + 1;
    v31 = v28 + 16 * v30;
    *(v31 + 4) = 0xD000000000000013;
    *(v31 + 5) = 0x80000001007F27B0;
    v76 = 0x3A73656C61636F6CLL;
    v77 = 0xE800000000000000;
    v32 = Array.description.getter();
    v34 = v33;
    v12, v33, v35, v36, v37, v38, v39, v40;
    v41._countAndFlagsBits = v32;
    v41._object = v34;
    String.append(_:)(v41);
    v34, v42, v43, v44, v45, v46, v47, v48;
    v2 = v76;
    v53 = v77;
    v55 = *v28->clientIdentity;
    v54 = *&v28->clientIdentity[8];
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v28 = sub_100365788((v54 > 1), v55 + 1, 1, v28, v49, v50, v51, v52);
    }
  }

  else
  {
    v28 = sub_100365788(0, 1, 1, &_swiftEmptyArrayStorage, v5, v6, v7, v8);
    v55 = *v28->clientIdentity;
    v61 = *&v28->clientIdentity[8];
    v56 = v55 + 1;
    if (v55 >= v61 >> 1)
    {
      v28 = sub_100365788((v61 > 1), v55 + 1, 1, v28, v57, v58, v59, v60);
    }

    v53 = 0x80000001007F27D0;
  }

  *v28->clientIdentity = v56;
  v62 = v28 + 16 * v55;
  *(v62 + 4) = v2;
  *(v62 + 5) = v53;
  v76 = v28;
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10025D9A0();
  v63 = BidirectionalCollection<>.joined(separator:)();
  v28, v64, v65, v66, v67, v68, v69, v70;
  return v63;
}

uint64_t sub_10025D92C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for REMChecksumAlgorithm.sha512(_:);
  v3 = type metadata accessor for REMChecksumAlgorithm();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_10025D9A0()
{
  result = qword_10093D0F0;
  if (!qword_10093D0F0)
  {
    sub_1000F514C(&unk_10093B300, &unk_100797780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D0F0);
  }

  return result;
}

uint64_t sub_10025DA04()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093EF38);
  v1 = sub_100006654(v0, qword_10093EF38);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10025DB14()
{
  if (*(v0 + 24))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v1 = v0;
    *(v0 + 24) = 1;
    if (qword_100935D80 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_10093EFF0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Starting XPC Event Stream", v5, 2u);
    }

    v6 = *(v1 + 16);
    v7 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100261464;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000EBA84;
    aBlock[3] = &unk_1008EBEF0;
    v8 = _Block_copy(aBlock);
    swift_retain_n();

    v9 = String.utf8CString.getter();
    xpc_set_event_stream_handler((v9 + 32), v6, v8);

    _Block_release(v8);
  }

  return result;
}

uint64_t sub_10025DD4C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_10025DE3C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093EFF0);
  v1 = sub_100006654(v0, qword_10093EFF0);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_10025DF08()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1002612F0(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10025DF90(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1002612F0(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10025E014(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1002612F0(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_10025E098()
{
  _StringGuts.grow(_:)(26);
  0xE000000000000000, v0, v1, v2, v3, v4, v5, v6;
  type metadata accessor for UUID();
  sub_1002612F0(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v7._object;
  String.append(_:)(v7);
  object, v9, v10, v11, v12, v13, v14, v15;
  v16._countAndFlagsBits = 62;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return 0xD000000000000017;
}

uint64_t sub_10025E178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a3;
  v36 = a4;
  v34 = a1;
  v8 = type metadata accessor for RDXPCEventStream.AlarmHandler(0);
  v37 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v5 + 16);
  v21->super.isa = v22;
  (*(v17 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v16, v19);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v21, v16);
  if (v22)
  {
    UUID.init()();
    sub_1002600B0(a5, v15, type metadata accessor for RDXPCEventStream.Token);
    v24 = &v15[*(v8 + 20)];
    v25 = v35;
    *v24 = v34;
    v24[1] = a2;
    v26 = &v15[*(v8 + 24)];
    v27 = v36;
    *v26 = v25;
    *(v26 + 1) = v27;
    sub_1002600B0(v15, v11, type metadata accessor for RDXPCEventStream.AlarmHandler);
    swift_beginAccess();
    v21 = *(v5 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v21;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v21 = sub_100365760(0, *v21->clientIdentity + 1, 1, v21);
  *(v5 + 32) = v21;
LABEL_3:
  v29 = v37;
  v31 = *v21->clientIdentity;
  v30 = *&v21->clientIdentity[8];
  if (v31 >= v30 >> 1)
  {
    v21 = sub_100365760((v30 > 1), v31 + 1, 1, v21);
  }

  *v21->clientIdentity = v31 + 1;
  sub_100260118(v11, v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v31);
  *(v5 + 32) = v21;
  swift_endAccess();
  return sub_10026121C(v15, type metadata accessor for RDXPCEventStream.AlarmHandler);
}

uint64_t sub_10025E480(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 16);
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v12 = (*(v5 + 8))(v9, v4);
  if (v10)
  {
    __chkstk_darwin(v12, v13);
    *(&v17 - 2) = a1;
    swift_beginAccess();
    v14 = sub_100260510(sub_10026017C, (&v17 - 4));
    v15 = *(*(v2 + 32) + 16);
    if (v15 >= v14)
    {
      sub_100261124(v14, v15, sub_100365760, type metadata accessor for RDXPCEventStream.AlarmHandler);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void sub_10025E654(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RDXPCEventStream.Alarm(0);
  __chkstk_darwin(v4, v5);
  v7 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v2 + 16);
  *v13 = v14;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v8, v11);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  Date.timeIntervalSince1970.getter();
  v17 = ceil(v16);
  if (v17 >= 9.22337204e18)
  {
    if (qword_100935D80 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
LABEL_10:
    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_10093EFF0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Not scheduling alarm because timeIntervalInSeconds > Int64.max";
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  if (v17 <= -9.22337204e18)
  {
    __break(1u);
LABEL_24:
    swift_once();
LABEL_7:
    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_10093EFF0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Not scheduling alarm because dateInNanoSeconds > Int64.max";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v20, v21, v23, v22, 2u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v18 = 1000000000 * v17;
  if ((v17 * 1000000000) >> 64 != v18 >> 63)
  {
    if (qword_100935D80 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

  v25 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_date(v25, "Date", v18);
  xpc_dictionary_set_BOOL(v25, "UserVisible", *(a1 + 16));
  xpc_copy_description(v25);
  if (qword_100935D80 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006654(v26, qword_10093EFF0);
  sub_1002600B0(a1, v7, type metadata accessor for RDXPCEventStream.Alarm);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57[0] = v56;
    *v29 = 136315394;
    v30 = String.init(cString:)();
    v55 = v28;
    v32 = v31;
    v33 = sub_10000668C(v30, v31, v57);
    v32, v34, v35, v36, v37, v38, v39, v40;
    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    v41 = Date.description.getter();
    v43 = v42;
    sub_10026121C(v7, type metadata accessor for RDXPCEventStream.Alarm);
    v44 = sub_10000668C(v41, v43, v57);
    v43, v45, v46, v47, v48, v49, v50, v51;
    *(v29 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v27, v55, "Setting xpc event {xpc_event: %s, date: %s}", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10026121C(v7, type metadata accessor for RDXPCEventStream.Alarm);
  }

  v52 = *a1;
  v53 = a1[1];

  swift_unknownObjectRetain();
  sub_10025EBC0(v52, v53, v2, v25);
  swift_unknownObjectRelease();
}

uint64_t sub_10025EBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    String.utf8CString.getter();
    xpc_set_event();

LABEL_5:

    return swift_unknownObjectRelease();
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v4)
  {
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
}

void sub_10025ECFC(_TtC7remindd19RDXPCStorePerformer *a1, unint64_t a2)
{
  v171 = type metadata accessor for RDXPCEventStream.AlarmHandler(0);
  v167 = *(v171 - 8);
  __chkstk_darwin(v171, v4);
  v6 = (&v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7, v8);
  v172 = &v162 - v9;
  __chkstk_darwin(v10, v11);
  v13 = &v162 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = (&v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  xpc_copy_description(a1);
  v164 = String.init(cString:)();
  v20 = v19;

  if (qword_100935D80 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v21 = type metadata accessor for Logger();
    v22 = sub_100006654(v21, qword_10093EFF0);

    v166 = v22;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v20, v25, v26, v27, v28, v29, v30, v31;
    v32 = os_log_type_enabled(v23, v24);
    v163 = v6;
    v165 = v20;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v170 = a2;
      v34 = a1;
      v35 = v14;
      v36 = v33;
      v37 = swift_slowAlloc();
      *&v175 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_10000668C(v164, v20, &v175);
      _os_log_impl(&_mh_execute_header, v23, v24, "Received xpc event {xpc_event: %s}", v36, 0xCu);
      sub_10000607C(v37);

      v14 = v35;
      a1 = v34;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      v165, v39, v40, v41, v42, v43, v44, v45;
      return;
    }

    v46 = Strong;
    v47 = *(Strong + 16);
    v18->super.isa = v47;
    (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
    v48 = v47;
    LOBYTE(v47) = _dispatchPreconditionTest(_:)();
    (*(v15 + 8))(v18, v14);
    if (v47)
    {
      if (qword_100935FC8 == -1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_7:
    v15 = 0xEF6D72616C612E65;
    a2 = 0x6C7070612E6D6F63;
    v175 = xmmword_10079DA70;
    v177 = 0;
    v178[0] = 0;
    v176 = 0;
    *(v178 + 6) = 0;
    sub_1000081D8(&v175, 0x6C7070612E6D6F63, 0xEF6D72616C612E65);
    if (!xpc_dictionary_get_string(a1, _xpc_event_key_name))
    {
      v56 = v165;

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.fault.getter();
      v56, v59, v60, v61, v62, v63, v64, v65;
      if (os_log_type_enabled(v57, v58))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v174[0] = v74;
        *v73 = 136315138;
        v75 = sub_10000668C(v164, v56, v174);
        v56, v76, v77, v78, v79, v80, v81, v82;
        *(v73 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v57, v58, "Received xpc_event missing name {xpc_event: %s}", v73, 0xCu);
        sub_10000607C(v74);
      }

      else
      {
        v56, v66, v67, v68, v69, v70, v71, v72;
      }

      goto LABEL_47;
    }

    v14 = String.init(cString:)();
    v18 = v49;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    v52 = os_log_type_enabled(v50, v51);
    v170 = v14;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v54 = v50;
      v55 = swift_slowAlloc();
      v174[0] = v55;
      *v53 = 136315138;
      *(v53 + 4) = sub_10000668C(v170, v18, v174);
      _os_log_impl(&_mh_execute_header, v54, v51, "Unsetting alarm {eventName: %s}", v53, 0xCu);
      sub_10000607C(v55);

      v14 = v170;

      v15 = 0xEF6D72616C612E65;
    }

    else
    {
    }

    v168 = a1;
    String.utf8CString.getter();
    xpc_set_event();

    swift_beginAccess();
    v162 = v46;
    v83 = *(v46 + 32);
    v20 = *(v83 + 16);

    if (!v20)
    {
      break;
    }

    a1 = 0;
    v6 = &_swiftEmptyArrayStorage;
    v91 = v167;
    v169 = v18;
    while (a1 < *(v83 + 16))
    {
      a2 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v15 = *(v91 + 72);
      sub_1002600B0(v83 + a2 + v15 * a1, v13, type metadata accessor for RDXPCEventStream.AlarmHandler);
      v92 = &v13[*(v171 + 20)];
      v93 = *v92 == v14 && *(v92 + 1) == v18;
      if (v93 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100260118(v13, v172);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v173 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100253904(0, *v6->clientIdentity + 1, 1);
          v91 = v167;
          v6 = v173;
        }

        v96 = *v6->clientIdentity;
        v95 = *&v6->clientIdentity[8];
        if (v96 >= v95 >> 1)
        {
          sub_100253904((v95 > 1), v96 + 1, 1);
          v91 = v167;
          v6 = v173;
        }

        *v6->clientIdentity = v96 + 1;
        sub_100260118(v172, v6 + a2 + v96 * v15);
        v18 = v169;
        v14 = v170;
      }

      else
      {
        sub_10026121C(v13, type metadata accessor for RDXPCEventStream.AlarmHandler);
      }

      a1 = (a1 + 1);
      if (v20 == a1)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_49:
    swift_once();
  }

  v6 = &_swiftEmptyArrayStorage;
LABEL_30:
  v83, v84, v85, v86, v87, v88, v89, v90;
  v18, v97, v98, v99, v100, v101, v102, v103;
  if (!*v6->clientIdentity)
  {

    v114 = v165;

    v57 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    v114, v116, v117, v118, v119, v120, v121, v122;
    if (os_log_type_enabled(v57, v115))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v173 = v131;
      *v130 = 136315138;
      v132 = sub_10000668C(v164, v114, &v173);
      v114, v133, v134, v135, v136, v137, v138, v139;
      *(v130 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v57, v115, "Received xpc_event with no handlers -- Dropping {xpc_event: %s}", v130, 0xCu);
      sub_10000607C(v131);
    }

    else
    {
      v114, v123, v124, v125, v126, v127, v128, v129;
    }

LABEL_47:

    return;
  }

  v165, v104, v105, v106, v107, v108, v109, v110;

  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 134217984;
    *(v113 + 4) = *v6->clientIdentity;

    _os_log_impl(&_mh_execute_header, v111, v112, "Delivering xpc_event to handlers {handlers.count: %ld}", v113, 0xCu);
  }

  else
  {
  }

  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    *v142 = 0;
    _os_log_impl(&_mh_execute_header, v140, v141, "os_transaction INIT {name: com.apple.remindd.xpcalarm}", v142, 2u);
  }

  v143 = os_transaction_create();
  v144 = *v6->clientIdentity;
  if (v144)
  {
    v170 = v143;
    v145 = v163;
    v146 = (v163 + *(v171 + 24));
    v147 = (v163 + *(v171 + 20));
    v148 = v6 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
    v172 = *(v167 + 72);
    do
    {
      sub_1002600B0(v148, v145, type metadata accessor for RDXPCEventStream.AlarmHandler);
      isa = v146->super.isa;
      v150 = *v147;
      v151 = v147[1];

      sub_10026121C(v145, type metadata accessor for RDXPCEventStream.AlarmHandler);
      isa(v150, v151, v168);

      v151, v152, v153, v154, v155, v156, v157, v158;
      v148 += v172;
      --v144;
    }

    while (v144);
  }

  v159 = Logger.logObject.getter();
  v160 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = swift_slowAlloc();
    *v161 = 0;
    _os_log_impl(&_mh_execute_header, v159, v160, "os_transaction RELEASE {name: com.apple.remindd.xpcalarm}", v161, 2u);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_10025F844()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  sub_10000607C((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_10025F8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_10025F940(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_10025F9A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_10025FA08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_10025FA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_10025FAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_10025FB7C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_10025FC08(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    v4 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = (v4 + v8);
    v11 = (a2 + v8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = (v4 + v9);
    v14 = (a2 + v9);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
  }

  return v4;
}

uint64_t sub_10025FCF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  *(a1 + *(a2 + 20) + 8), v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_10025FD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = (a1 + v8);
  v13 = (a2 + v8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

uint64_t sub_10025FE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v10 = v8[1];
  v8[1] = v9[1];

  v10, v11, v12, v13, v14, v15, v16, v17;
  v18 = *(a3 + 24);
  v19 = (a1 + v18);
  v20 = (a2 + v18);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  return a1;
}

uint64_t sub_10025FED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  v12 = v8[1];
  *v8 = v11;
  v8[1] = v10;
  v12, v13, v14, v15, v16, v17, v18, v19;
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t sub_10025FFC4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1002600B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100260118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDXPCEventStream.AlarmHandler(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002601AC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v35 - v13;
  __chkstk_darwin(v15, v16);
  v18 = &v35 - v17;
  v19 = *v2;
  result = sub_10025DD4C(a1, a2, *v2, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  if (!v3)
  {
    if (v21)
    {
      return *(v19 + 16);
    }

    v39 = v18;
    v40 = a1;
    v36 = v14;
    v37 = v10;
    v41 = a2;
    v35 = v2;
    v43 = result;
    v22 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v24 = (v19 + 16);
      v23 = *(v19 + 16);
      if (v22 == v23)
      {
        return v43;
      }

      v38 = v7;
      while (v22 < v23)
      {
        v25 = v19;
        v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v26 = v19 + v42;
        v27 = *(v7 + 72);
        v28 = v39;
        sub_1002600B0(v26 + v27 * v22, v39, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
        v29 = v40(v28);
        result = sub_10026121C(v28, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
        if (v29)
        {
          v7 = v38;
          v19 = v25;
        }

        else
        {
          v30 = v43;
          if (v22 == v43)
          {
            v7 = v38;
            v19 = v25;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v31 = *v24;
            if (v43 >= *v24)
            {
              goto LABEL_25;
            }

            v32 = v27 * v43;
            result = sub_1002600B0(v26 + v27 * v43, v36, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
            if (v22 >= v31)
            {
              goto LABEL_26;
            }

            v33 = v27 * v22;
            sub_1002600B0(v26 + v27 * v22, v37, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
            v19 = v25;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_100260B48(v25);
            }

            v7 = v38;
            v34 = v19 + v42;
            result = sub_100261338(v37, v19 + v42 + v32, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
            if (v22 >= *(v19 + 16))
            {
              goto LABEL_27;
            }

            result = sub_100261338(v36, v34 + v33, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
            *v35 = v19;
            v30 = v43;
          }

          v43 = v30 + 1;
        }

        ++v22;
        v24 = (v19 + 16);
        v23 = *(v19 + 16);
        if (v22 == v23)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100260510(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for RDXPCEventStream.AlarmHandler(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v35 - v13;
  __chkstk_darwin(v15, v16);
  v18 = &v35 - v17;
  v19 = *v2;
  result = sub_10025DD4C(a1, a2, *v2, type metadata accessor for RDXPCEventStream.AlarmHandler);
  if (!v3)
  {
    if (v21)
    {
      return *(v19 + 16);
    }

    v39 = v18;
    v40 = a1;
    v36 = v14;
    v37 = v10;
    v41 = a2;
    v35 = v2;
    v43 = result;
    v22 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v24 = (v19 + 16);
      v23 = *(v19 + 16);
      if (v22 == v23)
      {
        return v43;
      }

      v38 = v7;
      while (v22 < v23)
      {
        v25 = v19;
        v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v26 = v19 + v42;
        v27 = *(v7 + 72);
        v28 = v39;
        sub_1002600B0(v26 + v27 * v22, v39, type metadata accessor for RDXPCEventStream.AlarmHandler);
        v29 = v40(v28);
        result = sub_10026121C(v28, type metadata accessor for RDXPCEventStream.AlarmHandler);
        if (v29)
        {
          v7 = v38;
          v19 = v25;
        }

        else
        {
          v30 = v43;
          if (v22 == v43)
          {
            v7 = v38;
            v19 = v25;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v31 = *v24;
            if (v43 >= *v24)
            {
              goto LABEL_25;
            }

            v32 = v27 * v43;
            result = sub_1002600B0(v26 + v27 * v43, v36, type metadata accessor for RDXPCEventStream.AlarmHandler);
            if (v22 >= v31)
            {
              goto LABEL_26;
            }

            v33 = v27 * v22;
            sub_1002600B0(v26 + v27 * v22, v37, type metadata accessor for RDXPCEventStream.AlarmHandler);
            v19 = v25;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_100260BAC(v25);
            }

            v7 = v38;
            v34 = v19 + v42;
            result = sub_100261338(v37, v19 + v42 + v32, type metadata accessor for RDXPCEventStream.AlarmHandler);
            if (v22 >= *(v19 + 16))
            {
              goto LABEL_27;
            }

            result = sub_100261338(v36, v34 + v33, type metadata accessor for RDXPCEventStream.AlarmHandler);
            *v35 = v19;
            v30 = v43;
          }

          v43 = v30 + 1;
        }

        ++v22;
        v24 = (v19 + 16);
        v23 = *(v19 + 16);
        if (v22 == v23)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100260874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (a3 >= 1 && v18 >= 1)
  {
    result = (*(v11 + 16))(v16, v25, v14);
    if (v12 < v18)
    {
      goto LABEL_25;
    }
  }

  return sub_1002613A0(v25);
}

unint64_t sub_100260A0C(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 48 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_20;
  }

  result = &v10[3 * a3];
  v15 = (v9 + 32 + 48 * a2);
  if (result != v15 || result >= v15 + 48 * v14)
  {
    result = memmove(result, v15, 48 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
    v19 = *(a4 + 8);
    v21 = a4[1];
    v23 = a4[2];
    v20 = v23;
    v24 = v19;
    v10[1] = v21;
    v10[2] = v20;
    *v10 = *a4;
    if (a3 == 1)
    {
      return result;
    }

    sub_100261408(&v24, v22);
    sub_100261408(&v23, v22);
    __break(1u);
  }

  v24 = *(a4 + 8);
  sub_100034610(&v24);
  v23 = a4[2];
  return sub_100034610(&v23);
}

uint64_t sub_100260BFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_100260CB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_1000060C8(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_100260DE4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  if (a5 >> 1 != a4)
  {
    v7 = a4;
    if (a4 <= v6)
    {
      v10 = a5 >> 1;
    }

    else
    {
      v10 = a4;
    }

    while (v10 != v7)
    {
      v13 = *(a3 + 8 * v7);
      v11 = v13;
      v12 = a1(&v13);

      if (!v5 && (v12 & 1) == 0 && v6 != ++v7)
      {
        continue;
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_100260EE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v8 = a4;
    v11 = a3;
    v9 = a2;
    v10 = a1;
    v12 = *v7;
    v13 = *v7 >> 62;
    if (!v13)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v9, v10))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10 - v9;
  if (__OFSUB__(0, v9 - v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (!v17)
  {
    v11(result, 1);
    return sub_100260CB4(v10, v9, 0, v8, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_100260FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_100261124(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_100260FD8(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

uint64_t sub_10026121C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10026127C(uint64_t a1)
{
  String.utf8CString.getter();
  xpc_set_event();
}

uint64_t sub_1002612F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100261338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002613A0(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10093F2B0, &qword_10079DBD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10026146C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v5;
    *(a1 + 16) = *(a2 + 16);
    v6 = *(a3 + 24);
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], a2 + v6, v8);
  }

  return v3;
}

uint64_t sub_100261554(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 8), a2, a3, a4, a5, a6, a7, a8;
  v10 = *(a2 + 24);
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 8);

  return v12(a1 + v10, v11);
}

uint64_t sub_1002615C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t sub_100261664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v6, v7, v8, v9, v10, v11, v12, v13;
  *(a1 + 16) = *(a2 + 16);
  v14 = *(a3 + 24);
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 24))(a1 + v14, a2 + v14, v15);
  return a1;
}

uint64_t sub_100261700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_100261780(uint64_t a1, uint64_t a2, int *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = *(a2 + 8);
  v12 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v11;
  v12, a2, a3, a4, a5, a6, a7, a8;
  *(a1 + 16) = *(a2 + 16);
  v13 = a3[6];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 40))(a1 + v13, a2 + v13, v14);
  return a1;
}

uint64_t sub_100261834(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t (*sub_1002618D8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_1002662CC(v3, v8);
  return sub_1002619F0;
}

uint64_t (*sub_1002619F4(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10026640C(v4, a2);
  return sub_10026AE80;
}

uint64_t (*sub_100261A6C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1002664B0(v6, a2, a3);
  return sub_10026AE80;
}

uint64_t (*sub_100261AF4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10026655C(v6, a2, a3);
  return sub_100261B7C;
}

void sub_100261B80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t (*sub_100261BCC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10026666C(v3, v8);
  return sub_10026AE84;
}

void sub_100261CE4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_100261D5C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093F350);
  v1 = sub_100006654(v0, qword_10093F350);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100261E24(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  v215 = a2;
  v218 = a1;
  v199 = a4;
  v4 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v4 - 8, v5);
  v193 = &v187 - v6;
  v7 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  __chkstk_darwin(v7 - 8, v8);
  v206 = (&v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = type metadata accessor for REMRemindersListDataView.TemplateSectionsModel();
  v198 = *(v204 - 8);
  __chkstk_darwin(v204, v10);
  v197 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v208 = &v187 - v14;
  v210 = type metadata accessor for REMRemindersListDataView.Diff();
  v195 = *(v210 - 8);
  __chkstk_darwin(v210, v15);
  v196 = &v187 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v194 = &v187 - v19;
  __chkstk_darwin(v20, v21);
  v200 = &v187 - v22;
  __chkstk_darwin(v23, v24);
  v209 = &v187 - v25;
  v26 = type metadata accessor for UUID();
  v202 = *(v26 - 8);
  v203 = v26;
  __chkstk_darwin(v26, v27);
  v201 = &v187 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  __chkstk_darwin(v29 - 8, v30);
  v192 = &v187 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v33);
  v207 = &v187 - v34;
  v35 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v35 - 8, v36);
  v212 = (&v187 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v211 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v211, v38);
  v40 = &v187 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41, v42);
  v214 = &v187 - v43;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v213 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v45);
  v217 = &v187 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration();
  v48 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v49);
  v51 = &v187 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52, v53);
  v55 = &v187 - v54;
  v56 = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.templateObjectID.getter();
  v57 = v216;
  sub_100262C94(v56, v218, v215);
  if (v57)
  {
  }

  else
  {
    v191 = Subtasks;
    v215 = 0;
    v216 = v58;
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.fetchSubtasks.getter();
    v60 = *(v48 + 8);
    v59 = v48 + 8;
    v60(v55, Configuration);
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.configuration.getter();
    v61 = v212;
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.sortingStyle.getter();
    v190 = v60;
    v60(v51, Configuration);
    v62 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
    v63 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v63 - 8) + 104))(v40, v62, v63);
    swift_storeEnumTagMultiPayload();
    v64 = v214;
    sub_1005368D8(v61, v40, v214);
    v65 = v218;
    v66 = v215;
    v67 = sub_100268564(v56, v218, v217, v64);
    if (v66)
    {

      sub_1001EB4C4(v214, v69);
      (*v213->storeController)(v217, v191);
    }

    else
    {
      v188 = v51;
      v189 = v59;
      v211 = Configuration;
      v212 = v67;
      sub_1001EB4C4(v214, v68);
      (*v213->storeController)(v217, v191);
      v70 = [v216 accountID];
      v71 = [v65 persistentStoreOfAccountWithAccountID:v70];
      if (v71)
      {
        v73 = v71;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v74 = swift_allocObject();
        v72 = xmmword_1007953F0;
        *(v74 + 16) = xmmword_1007953F0;
        *(v74 + 32) = v73;
      }

      else
      {
        v74 = 0;
      }

      v75 = sub_10026A52C(v72);
      v74, v76, v77, v78, v79, v80, v81, v82;
      v83 = sub_100270BA0(v75);
      v75, v84, v85, v86, v87, v88, v89, v90;
      v213 = sub_1001BD57C(v83, v212);
      v217 = v56;
      v215 = 0;
      v83, v91, v92, v93, v94, v95, v96, v97;
      v98 = v188;
      REMRemindersListDataView.TemplateSectionsInvocation.Parameters.configuration.getter();
      LOBYTE(v83) = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.shouldFetchManualOrderingID.getter();
      v190(v98, v211);
      v214 = v70;
      if (v83)
      {
        v99 = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.templateObjectID.getter();
        v100 = [v99 uuid];

        v101 = v201;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v102 = UUID.uuidString.getter();
        v104 = v103;
        (*(v202 + 8))(v101, v203);
        sub_10053F868(6, v102, v104, v70, v218);
        v106 = v210;
        if (!v105)
        {
          v105 = [objc_opt_self() newObjectID];
        }

        v107 = v105;
        REMObjectID.codable.getter();
        v108 = v207;
        REMManualOrdering.ManualOrderingID.init(objectID:listType:listID:)();

        v109 = 0;
        v110 = v106;
      }

      else
      {
        v109 = 1;
        v108 = v207;
        v110 = v210;
      }

      v111 = type metadata accessor for REMManualOrdering.ManualOrderingID();
      (*(*(v111 - 8) + 56))(v108, v109, 1, v111);
      v112 = [v205 fetchResultTokenToDiffAgainst];
      v113 = v215;
      sub_100262FE8(v112, v209);
      if (v113)
      {
        sub_1000050A4(v108, &qword_100938A68, &unk_10079DDF0);

        v213, v114, v115, v116, v117, v118, v119, v120;
        v212, v121, v122, v123, v124, v125, v126, v127;
      }

      else
      {
        v215 = 0;

        v128 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
        (*(*(v128 - 8) + 56))(v193, 1, 1, v128);
        REMRemindersListDataView.SectionsModel.init(sections:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
        sub_100010364(v108, v192, &qword_100938A68, &unk_10079DDF0);
        v218 = v216;
        REMRemindersListDataView.TemplateSectionsModel.init(sectionsModel:listRepresentationOfTemplate:manualOrderingID:)();
        if (qword_100935D88 != -1)
        {
          swift_once();
        }

        v129 = type metadata accessor for Logger();
        sub_100006654(v129, qword_10093F350);
        v130 = v195;
        v131 = (v195 + 16);
        v132 = *(v195 + 16);
        v133 = v200;
        v134 = v209;
        (v132)(v200, v209, v110);
        v135 = v194;
        v216 = v131;
        v213 = v132;
        (v132)(v194, v134, v110);
        v136 = v110;
        v137 = v212;

        v138 = Logger.logObject.getter();
        v139 = static os_log_type_t.default.getter();
        v140 = os_log_type_enabled(v138, v139);
        v141 = v204;
        if (v140)
        {
          v142 = swift_slowAlloc();
          *v142 = 134218496;
          v143 = *v137->clientIdentity;
          v137, v144, v145, v146, v147, v148, v149, v150;
          *(v142 + 4) = v143;
          v137, v151, v152, v153, v154, v155, v156, v157;
          *(v142 + 12) = 2048;
          v158 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
          LODWORD(v205) = v139;
          if ((v158 & 0xC000000000000001) != 0)
          {
            v166 = v158;
            v167 = __CocoaSet.count.getter();
            v158 = v166;
            v133 = v200;
          }

          else
          {
            v167 = *(v158 + 16);
          }

          v170 = v196;
          v158, v159, v160, v161, v162, v163, v164, v165;
          v171 = *(v130 + 8);
          v211 = (v130 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v171(v133, v210);
          *(v142 + 14) = v167;
          *(v142 + 22) = 2048;
          v172 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
          if ((v172 & 0xC000000000000001) != 0)
          {
            v180 = v172;
            v181 = __CocoaSet.count.getter();
            v172 = v180;
          }

          else
          {
            v181 = *(v172 + 16);
          }

          v141 = v204;
          v172, v173, v174, v175, v176, v177, v178, v179;
          v182 = v210;
          v206 = v171;
          v171(v135, v210);
          *(v142 + 24) = v181;
          _os_log_impl(&_mh_execute_header, v138, v205, "REMRemindersListDataView.TemplateSectionsInvocation: reminders %ld updated %ld inserted %ld", v142, 0x20u);

          v169 = v182;
        }

        else
        {
          v168 = *(v130 + 8);
          v211 = (v130 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v168(v135, v136);
          v206 = v168;
          v168(v133, v136);

          swift_bridgeObjectRelease_n();
          v169 = v136;
          v170 = v196;
        }

        v183 = v198;
        v184 = v208;
        (*(v198 + 16))(v197, v208, v141);
        v185 = v170;
        v186 = v209;
        (v213)(v185, v209, v169);
        sub_10026A4E4(&qword_10093F3D0, &type metadata accessor for REMRemindersListDataView.TemplateSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.TemplateSectionsModel);
        sub_10026A4E4(&qword_10093F3D8, &type metadata accessor for REMRemindersListDataView.TemplateSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.TemplateSectionsModel);
        REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

        (*(v183 + 8))(v184, v141);
        v206(v186, v210);
        sub_1000050A4(v207, &qword_100938A68, &unk_10079DDF0);
      }
    }
  }
}

void sub_100262C94(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(REMListsDataViewInvocation_fetchByTemplateObjectID) initWithTemplateObjectID:a1];
  sub_1001DF87C(a2);
  v9 = v8;

  if (v3)
  {
    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    [objc_opt_self() noSuchObjectErrorWithObjectID:a1];
    swift_willThrow();
LABEL_18:

    return;
  }

  v11 = v10;
  v59 = v9;
  isa = [v11 accountStorages];
  if (!isa)
  {
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v13, v14, v15, v16, v17, v18, v19, v20;
  }

  v21 = [v11 listStorages];
  if (!v21)
  {
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = Array._bridgeToObjectiveC()().super.isa;
    v22, v23, v24, v25, v26, v27, v28, v29;
  }

  v30 = objc_opt_self();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1007953F0;
  *(v31 + 32) = a1;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v32 = a1;
  v33 = Array._bridgeToObjectiveC()().super.isa;
  v31, v34, v35, v36, v37, v38, v39, v40;
  v41 = [v30 listsFromAccountStorages:isa listStorages:v21 store:a3 requestedListIDs:v33];

  if (!v41)
  {
LABEL_17:
    [objc_opt_self() noSuchObjectErrorWithObjectID:v32];
    swift_willThrow();

    goto LABEL_18;
  }

  sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v42 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    v42, v43, v44, v45, v46, v47, v48, v49;
    goto LABEL_17;
  }

LABEL_10:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v50 = *(v42 + 32);
LABEL_13:
    v58 = v50;
    v42, v51, v52, v53, v54, v55, v56, v57;
    REMList.codable.getter();

    return;
  }

  __break(1u);
}

void sub_100262FE8(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_90:
      REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
      return;
    }

LABEL_95:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(&_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(&_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(&_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(&_swiftEmptyArrayStorage);
    }

    goto LABEL_90;
  }

  v115 = a2;
  v128[6] = _swiftEmptySetSingleton;
  v128[2] = _swiftEmptySetSingleton;
  v128[3] = _swiftEmptySetSingleton;
  v128[1] = _swiftEmptySetSingleton;
  v3 = a1;
  v4 = sub_10003B8F0(v3, &_swiftEmptyArrayStorage);
  if (!v2)
  {
    v12 = v4;
    if (v4 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (v13)
      {
LABEL_5:
        v14 = 0;
        v121 = v12 & 0xC000000000000001;
        v116 = &v12->clientIdentity[16];
        v117 = v12 & 0xFFFFFFFFFFFFFF8;
        v15 = &selRef_accountStatusWithCompletionHandler_;
        v119 = v12;
        v120 = v3;
        v118 = v13;
        while (1)
        {
          if (v121)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v31 = __OFADD__(v14, 1);
            v32 = v14 + 1;
            if (v31)
            {
              goto LABEL_92;
            }
          }

          else
          {
            if (v14 >= *(v117 + 16))
            {
              goto LABEL_94;
            }

            v30 = *&v116[8 * v14];
            v31 = __OFADD__(v14, 1);
            v32 = v14 + 1;
            if (v31)
            {
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }
          }

          v122 = v30;
          v123 = v32;
          v33 = [v30 changes];
          if (!v33)
          {
            if (qword_100935D88 != -1)
            {
              swift_once();
            }

            v101 = type metadata accessor for Logger();
            sub_100006654(v101, qword_10093F350);
            v102 = v122;
            v103 = Logger.logObject.getter();
            v104 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v103, v104))
            {
              v105 = swift_slowAlloc();
              v106 = swift_slowAlloc();
              *v105 = 138412290;
              *(v105 + 4) = v102;
              *v106 = v102;
              v107 = v102;
              _os_log_impl(&_mh_execute_header, v103, v104, "Skipping transaction because it contains no changes {transaction: %@}", v105, 0xCu);
              sub_1000050A4(v106, &unk_100938E70, &unk_100797230);
              v15 = &selRef_accountStatusWithCompletionHandler_;
            }

            else
            {
            }

            goto LABEL_7;
          }

          v34 = v33;
          sub_1000060C8(0, &qword_10093F3C8, NSPersistentHistoryChange_ptr);
          v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (!(v35 >> 62))
          {
            v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v36)
            {
              break;
            }

            goto LABEL_88;
          }

          v36 = _CocoaArrayWrapper.endIndex.getter();
          if (v36)
          {
            break;
          }

LABEL_88:

          v35, v108, v109, v110, v111, v112, v113, v114;
LABEL_7:
          v14 = v123;
          if (v123 == v13)
          {
            v12, v23, v24, v25, v26, v27, v28, v29;
LABEL_99:
            REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
            goto LABEL_100;
          }
        }

        type metadata accessor for REMCDSavedReminder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
        if (v36 >= 1)
        {
          v37 = 0;
          v125 = v35 & 0xC000000000000001;
          v124 = v35;
          v126 = v36;
          while (1)
          {
            v38 = v125 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v35 + 8 * v37 + 32);
            v39 = v38;
            v40 = [v38 changedObjectID];
            v41 = [v40 v15[395]];
            v42 = [ObjCClassFromMetadata v15[395]];
            v43 = static NSObject.== infix(_:_:)();

            if ((v43 & 1) == 0)
            {
              break;
            }

            v44 = sub_1005AFD38(v40);
            if (!v44)
            {
              goto LABEL_19;
            }

            v45 = v44;
            v46 = swift_dynamicCastClass();
            if (v46)
            {
              v47 = v46;
              v45 = v45;
              v48 = [v47 remObjectID];
              if (v48)
              {
                v49 = v48;
                if ([v39 changeType] <= 1)
                {
                  v95 = REMObjectID.codable.getter();
                  sub_100379240(v128, v95);

LABEL_81:
                  goto LABEL_20;
                }

                goto LABEL_61;
              }

              if (qword_100935D88 != -1)
              {
                swift_once();
              }

              v79 = type metadata accessor for Logger();
              sub_100006654(v79, qword_10093F350);
              v73 = v40;
              v74 = Logger.logObject.getter();
              v80 = static os_log_type_t.error.getter();

              if (!os_log_type_enabled(v74, v80))
              {
LABEL_57:

                goto LABEL_20;
              }

              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              *v81 = 138412290;
              *(v81 + 4) = v73;
              *v82 = v73;
              v78 = v73;
              _os_log_impl(&_mh_execute_header, v74, v80, "Failed to get remObjectID from REMCDSavedReminder {objectID: %@}", v81, 0xCu);
              sub_1000050A4(v82, &unk_100938E70, &unk_100797230);
              v35 = v124;
            }

            else
            {
              if (qword_100935D88 != -1)
              {
                swift_once();
              }

              v72 = type metadata accessor for Logger();
              sub_100006654(v72, qword_10093F350);
              v73 = v40;
              v74 = Logger.logObject.getter();
              v75 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v74, v75))
              {
                goto LABEL_57;
              }

              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              *v76 = 138412290;
              *(v76 + 4) = v73;
              *v77 = v73;
              v78 = v73;
              _os_log_impl(&_mh_execute_header, v74, v75, "Failed to cast managedObject to REMCDSavedReminder {objectID: %@}", v76, 0xCu);
              sub_1000050A4(v77, &unk_100938E70, &unk_100797230);

              v35 = v124;
            }

LABEL_20:
            v15 = &selRef_accountStatusWithCompletionHandler_;
LABEL_21:
            if (v126 == ++v37)
            {

              v35, v16, v17, v18, v19, v20, v21, v22;
              v12 = v119;
              v3 = v120;
              v13 = v118;
              goto LABEL_7;
            }
          }

          type metadata accessor for REMCDTemplate();
          v50 = swift_getObjCClassFromMetadata();
          v51 = v41;
          v52 = v15;
          v53 = [v50 v15[395]];
          LOBYTE(v50) = static NSObject.== infix(_:_:)();

          if (v50)
          {

            v54 = sub_1005AFD38(v40);
            if (!v54)
            {

LABEL_59:
              v15 = &selRef_accountStatusWithCompletionHandler_;
              v35 = v124;
              goto LABEL_21;
            }

            v45 = v54;
            v55 = swift_dynamicCastClass();
            v35 = v124;
            if (!v55)
            {
              if (qword_100935D88 != -1)
              {
                swift_once();
              }

              v83 = type metadata accessor for Logger();
              sub_100006654(v83, qword_10093F350);
              v84 = v40;
              v85 = Logger.logObject.getter();
              v86 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v85, v86))
              {
                goto LABEL_79;
              }

              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              *v87 = 138412290;
              *(v87 + 4) = v84;
              *v88 = v84;
              v89 = v84;
              v90 = v86;
              v91 = v85;
              v92 = "Failed to cast managedObject to REMCDTemplate {objectID: %@}";
              goto LABEL_78;
            }

            v56 = v55;
            v45 = v45;
            v57 = [v56 remObjectID];
            if (!v57)
            {

              if (qword_100935D88 != -1)
              {
                swift_once();
              }

              v93 = type metadata accessor for Logger();
              sub_100006654(v93, qword_10093F350);
              v84 = v40;
              v85 = Logger.logObject.getter();
              v94 = static os_log_type_t.error.getter();

              if (!os_log_type_enabled(v85, v94))
              {
                goto LABEL_79;
              }

              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              *v87 = 138412290;
              *(v87 + 4) = v84;
              *v88 = v84;
              v89 = v84;
              v90 = v94;
              v91 = v85;
              v92 = "Failed to get remObjectID from REMCDTemplate {objectID: %@}";
LABEL_78:
              _os_log_impl(&_mh_execute_header, v91, v90, v92, v87, 0xCu);
              sub_1000050A4(v88, &unk_100938E70, &unk_100797230);

              v35 = v124;

              goto LABEL_20;
            }

            v58 = v57;
            if ([v39 changeType] == 1)
            {
              goto LABEL_80;
            }

LABEL_42:

LABEL_61:
            goto LABEL_20;
          }

          type metadata accessor for REMCDTemplateSection();
          v59 = [swift_getObjCClassFromMetadata() v52[395]];
          v60 = static NSObject.== infix(_:_:)();

          if ((v60 & 1) == 0)
          {
            if (qword_100935D88 != -1)
            {
              swift_once();
            }

            v65 = type metadata accessor for Logger();
            sub_100006654(v65, qword_10093F350);
            v66 = v40;
            v67 = Logger.logObject.getter();
            v68 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              *v69 = 138412290;
              *(v69 + 4) = v66;
              *v70 = v66;
              v71 = v66;
              _os_log_impl(&_mh_execute_header, v67, v68, "Skipping change unhandled type {objectID: %@}", v69, 0xCu);
              sub_1000050A4(v70, &unk_100938E70, &unk_100797230);
            }

            else
            {
            }

            goto LABEL_59;
          }

          v61 = sub_1005AFD38(v40);
          v35 = v124;
          if (v61)
          {
            v45 = v61;
            v62 = swift_dynamicCastClass();
            if (!v62)
            {
              if (qword_100935D88 != -1)
              {
                swift_once();
              }

              v96 = type metadata accessor for Logger();
              sub_100006654(v96, qword_10093F350);
              v84 = v40;
              v85 = Logger.logObject.getter();
              v97 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v85, v97))
              {
LABEL_79:

                goto LABEL_20;
              }

              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              *v87 = 138412290;
              *(v87 + 4) = v84;
              *v88 = v84;
              v89 = v84;
              v90 = v97;
              v91 = v85;
              v92 = "Failed to cast managedObject to REMCDTemplateSection {objectID: %@}";
              goto LABEL_78;
            }

            v63 = v62;
            v45 = v45;
            v64 = [v63 remObjectID];
            if (!v64)
            {

              if (qword_100935D88 != -1)
              {
                swift_once();
              }

              v98 = type metadata accessor for Logger();
              sub_100006654(v98, qword_10093F350);
              v84 = v40;
              v85 = Logger.logObject.getter();
              v99 = static os_log_type_t.error.getter();

              if (!os_log_type_enabled(v85, v99))
              {
                goto LABEL_79;
              }

              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              *v87 = 138412290;
              *(v87 + 4) = v84;
              *v88 = v84;
              v89 = v84;
              v90 = v99;
              v91 = v85;
              v92 = "Failed to get remObjectID from REMCDTemplateSection {objectID: %@}";
              goto LABEL_78;
            }

            v58 = v64;
            if ([v39 changeType] == 1)
            {
LABEL_80:
              v100 = REMObjectID.codable.getter();
              sub_100379240(v128, v100);

              goto LABEL_81;
            }

            goto LABEL_42;
          }

LABEL_19:

          goto LABEL_20;
        }

LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_5;
      }
    }

    v12, v5, v6, v7, v8, v9, v10, v11;
    goto LABEL_99;
  }

LABEL_100:
}

uint64_t sub_100263F14(uint64_t a1)
{
  result = sub_10026A4E4(&qword_10093F398, &type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation, &protocol conformance descriptor for REMRemindersListDataView.TemplateSectionsInvocation);
  *(a1 + 8) = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100263F6C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, enum case for REMRemindersListDataView.SortingDirection.ascending(_:), v2, v5);
  sub_10026A4E4(&qword_100939858, &type metadata accessor for REMRemindersListDataView.SortingDirection, &protocol conformance descriptor for REMRemindersListDataView.SortingDirection);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v3 + 8))(v7, v2);
  if (v12 == v11[2])
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  v12 = sub_100436338(v9);
  sub_100266138(&v12, v8);
  return v12;
}

void sub_100264108(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v6 = *a2;

  v7 = sub_100263F6C(a3, v5);
  v5, v8, v9, v10, v11, v12, v13, v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *a1;
  sub_1002C77C0(v7, v6, isUniquelyReferenced_nonNull_native);

  *a1 = v16;
}

uint64_t sub_1002641A8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, _TtC7remindd19RDXPCStorePerformer *a3@<X2>, _TtC7remindd19RDXPCStorePerformer *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v303 = a5;
  v305 = a4;
  v309 = a3;
  v10 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v310 = &v302 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v314 = &v302 - v16;
  v304 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v304, v17);
  v306 = (&v302 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v20 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v21);
  v23 = &v302 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v311 = [v24 remObjectID];
  if (!v311)
  {

    return (*(v11 + 56))(a6, 1, 1, v10);
  }

  v312 = v10;
  v313 = v11;
  v307 = a6;
  v308 = v6;
  (*(v20 + 16))(v23, a2, Subtasks);
  v25 = (*(v20 + 88))(v23, Subtasks);
  if (v25 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:))
  {

    v26 = v307;
    v28 = v311;
    v27 = v312;
LABEL_58:
    REMObjectID.codable.getter();
    REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtaskCount:subtasks:)();

    return (*(v313 + 56))(v26, 0, 1, v27);
  }

  v28 = v311;
  v27 = v312;
  if (v25 == enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
  {
    isa = v309->super.isa;
    if (!*(v309->super.isa + 2) || (v31 = sub_10002B924(v311), (v33 & 1) == 0))
    {

      v26 = v307;
      goto LABEL_58;
    }

    v34 = *(*(isa + 7) + 8 * v31);
    if (v34 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      v287 = _CocoaArrayWrapper.endIndex.getter();
      v36 = v306;
      if (v287)
      {
LABEL_10:
        sub_1001A4ED8(v305, v36, v32);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v302 = v35;
        if (EnumCaseMultiPayload != 4)
        {
          v121 = v34;

          sub_1001EB4C4(v36, v181);
          v120 = v313;
          goto LABEL_38;
        }

        v38 = v36;
        v40 = v36->super.isa;
        v39 = *v36->storeController;
        v41 = *v38->clientIdentity;
        v42 = *&v38->clientIdentity[8];
        v44 = *&v38->clientIdentity[16];
        v43 = *&v38->clientIdentity[24];

        if (v40)
        {
          if (v303)
          {
            v304 = v44;
            v305 = v42;
            v306 = v41;
            v309 = v39;
            v52 = v303;
            sub_1006B038C();
            v54 = v53;
            v55 = type metadata accessor for RDManualSortIDCache();
            v57 = v55;
            if (qword_100936508 != -1)
            {
              v55 = swift_once();
            }

            v58 = qword_10094C220;
            __chkstk_darwin(v55, v56);
            *(&v302 - 4) = v57;
            *(&v302 - 3) = v54;
            *(&v302 - 2) = v58;
            v59 = v308;
            OS_dispatch_queue.sync<A>(execute:)();
            v308 = v59;
            v60 = v315;
            type metadata accessor for RDManualSortIDAdapter();
            swift_allocObject();
            sub_100214ECC(v60, v54, 0);
            v61 = [v24 remObjectID];
            if (v61)
            {
              v62 = v61;
              sub_1000F5104(&unk_100939D60, &unk_1007959E0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1007953F0;
              *(inited + 32) = v24;
              v64 = sub_1001A618C(inited);
              swift_setDeallocating();
              swift_arrayDestroy();
              sub_1002173A0(v64);
              v66 = v65;
              v64, v67, v68, v69, v70, v71, v72, v73;
              v74 = sub_100353598(v62, v66);

              v66, v75, v76, v77, v78, v79, v80, v81;
              if (v74)
              {
                v82 = v309;
                sub_1002CE6A8(v74, v309);
                v84 = v83;
                v304, v85, v86, v87, v88, v89, v90, v91;
                v305, v92, v93, v94, v95, v96, v97, v98;
                v306, v99, v100, v101, v102, v103, v104, v105;
                v82, v106, v107, v108, v109, v110, v111, v112;
                v40, v113, v114, v115, v116, v117, v118, v119;
                v27 = v312;
                v120 = v313;
                v121 = v34;
                if (v84)
                {
                  if (*(v84 + 16))
                  {

                    v123 = sub_1001A595C(v122);
                    v34, v124, v125, v126, v127, v128, v129, v130;
                    sub_100394B34(v123);
                    v132 = v131;
                    v123, v133, v134, v135, v136, v137, v138, v139;
                    sub_1002173A0(v132);
                    v141 = v140;
                    v132, v142, v143, v144, v145, v146, v147, v148;
                    v121 = sub_100267E88(v84, v141, v34);
                    v34, v149, v150, v151, v152, v153, v154, v155;
                    v84, v156, v157, v158, v159, v160, v161, v162;

                    v163 = v141;
                    v27 = v312;
                    v163, v164, v165, v166, v167, v168, v169, v170;
LABEL_38:
                    if (v121 >> 62)
                    {
                      goto LABEL_56;
                    }

                    for (i = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
                    {
                      v289 = 0;
                      v305 = (v121 & 0xFFFFFFFFFFFFFF8);
                      v306 = (v121 & 0xC000000000000001);
                      v309 = (v120 + 32);
                      v290 = &_swiftEmptyArrayStorage;
                      while (1)
                      {
                        if (v306)
                        {
                          v291 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        }

                        else
                        {
                          if (v289 >= *v305->clientIdentity)
                          {
                            goto LABEL_55;
                          }

                          v291 = *(v121 + 8 * v289 + 32);
                        }

                        v292 = v291;
                        v293 = v289 + 1;
                        if (__OFADD__(v289, 1))
                        {
                          break;
                        }

                        v294 = [v291 remObjectID];
                        if (v294)
                        {
                          v295 = v294;
                          v120 = i;
                          v296 = v121;
                          REMObjectID.codable.getter();
                          v297 = v310;
                          REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtasks:)();

                          v298 = v309->super.isa;
                          (v309->super.isa)(v314, v297, v27);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v290 = sub_100365A24(0, *v290->clientIdentity + 1, 1, v290);
                          }

                          v300 = *v290->clientIdentity;
                          v299 = *&v290->clientIdentity[8];
                          v121 = v296;
                          if (v300 >= v299 >> 1)
                          {
                            v290 = sub_100365A24((v299 > 1), v300 + 1, 1, v290);
                          }

                          i = v120;
                          *v290->clientIdentity = v300 + 1;
                          v301 = v290 + ((*(v313 + 80) + 32) & ~*(v313 + 80)) + *(v313 + 72) * v300;
                          v27 = v312;
                          (v298)(v301, v314, v312);
                        }

                        else
                        {
                        }

                        ++v289;
                        if (v293 == i)
                        {
                          goto LABEL_57;
                        }
                      }

                      __break(1u);
LABEL_55:
                      __break(1u);
LABEL_56:
                      ;
                    }

LABEL_57:
                    v121, v171, v172, v173, v174, v175, v176, v177;
                    v26 = v307;
                    v28 = v311;
                    goto LABEL_58;
                  }

                  v84, v280, v281, v282, v283, v284, v285, v286;
                }

                else
                {
                }

                goto LABEL_38;
              }

              v304, v245, v246, v247, v248, v249, v250, v251;
              v305, v252, v253, v254, v255, v256, v257, v258;
              v306, v259, v260, v261, v262, v263, v264, v265;
              v309, v266, v267, v268, v269, v270, v271, v272;
              v40, v273, v274, v275, v276, v277, v278, v279;
              v27 = v312;
            }

            else
            {

              v304, v210, v211, v212, v213, v214, v215, v216;
              v305, v217, v218, v219, v220, v221, v222, v223;
              v306, v224, v225, v226, v227, v228, v229, v230;
              v309, v231, v232, v233, v234, v235, v236, v237;
              v40, v238, v239, v240, v241, v242, v243, v244;

              v27 = v312;
            }

LABEL_37:
            v120 = v313;
            v121 = v34;
            goto LABEL_38;
          }

          v44, v45, v46, v47, v48, v49, v50, v51;
          v42, v182, v183, v184, v185, v186, v187, v188;
          v41, v189, v190, v191, v192, v193, v194, v195;
          v39, v196, v197, v198, v199, v200, v201, v202;
          v40, v203, v204, v205, v206, v207, v208, v209;
        }

LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = v306;
      if (v35)
      {
        goto LABEL_10;
      }
    }

    v302 = v35;

    goto LABEL_36;
  }

  if (v25 == enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
  {

    v178 = v309->super.isa;
    v26 = v307;
    if (*(v309->super.isa + 2))
    {
      v179 = sub_10002B924(v28);
      if (v180)
      {
        if (*(*(v178 + 7) + 8 * v179) >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }
      }
    }

    goto LABEL_58;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}