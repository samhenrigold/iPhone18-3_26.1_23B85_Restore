id sub_100001888(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100001DBC(&qword_100035CF0, &qword_100029288);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_100001DBC(&unk_100034B68, qword_1000298D0);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_homeManagerDidUpdateHomesContinuation;
  swift_beginAccess();
  sub_100001E04(v8, a2 + v11);
  swift_endAccess();
  v12 = sub_100001E74(a3, a3[3]);
  v13 = *v12;
  *(*v12 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin14HomeKitManager_homeManagerDelegate + 8) = &off_100031220;
  swift_unknownObjectWeakAssign();
  v14 = *(v13 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin14HomeKitManager_homeManager);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  return [v14 setDelegate:v13];
}

uint64_t sub_100001A28()
{
  sub_100001EB8(v0 + 2);
  sub_100001F04(v0 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_homeManagerDidUpdateHomesContinuation);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for HomeStore(uint64_t a1)
{
  result = qword_100034B50;
  if (!qword_100034B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001AF8(uint64_t a1)
{
  sub_100001B9C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100001B9C(uint64_t a1)
{
  if (!qword_100034B60)
  {
    sub_100001C00(&unk_100034B68, qword_1000298D0);
    v1 = sub_1000287BC();
    if (!v2)
    {
      atomic_store(v1, &qword_100034B60);
    }
  }
}

uint64_t sub_100001C00(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100001C74()
{
  v1 = *v0;
  sub_10002894C();
  sub_10002896C(v1);
  return sub_10002897C();
}

Swift::Int sub_100001CE8(uint64_t a1)
{
  v2 = *v1;
  sub_10002894C();
  sub_10002896C(v2);
  return sub_10002897C();
}

BOOL sub_100001D48(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_100001DA0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100001DBC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DBC(&qword_100035CF0, &qword_100029288);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_100001E74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001EB8(void *a1)
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

uint64_t sub_100001F04(uint64_t a1)
{
  v2 = sub_100001DBC(&qword_100035CF0, &qword_100029288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for FLOWSchemaFLOWStateType()
{
  if (!qword_100034C68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100034C68);
    }
  }
}

unint64_t sub_100001FC0()
{
  result = qword_100034C70;
  if (!qword_100034C70)
  {
    type metadata accessor for FLOWSchemaFLOWStateType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034C70);
  }

  return result;
}

id *sub_100002030(id *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = _swiftEmptyArrayStorage;
  for (i = a3 + 32; ; i += 40)
  {
    result = a1(&v17, i, a2);
    if (v3)
    {

      return v5;
    }

    v8 = v17;
    v9 = *(v17 + 16);
    v10 = v5[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= (v5[3] >> 1))
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_100026ED0(result, v12, 1, v5);
      v5 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if (((v5[3] >> 1) - v5[2]) < v9)
        {
          goto LABEL_24;
        }

        sub_100001DBC(&qword_100035D50, &qword_100029618);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v9);
          v15 = &v13[v9];
          if (v14)
          {
            goto LABEL_25;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000021E8()
{
  v1[6] = v0;
  v1[7] = *v0;
  v2 = sub_100027D7C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000022D0, 0, 0);
}

uint64_t sub_1000022D0()
{
  v1 = v0[6];
  sub_100027D5C();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100002380;
  v3 = v0[10];

  return sub_10000264C(v1 + 16, v1 + 56, v1 + 104, v1 + 144, v3);
}

uint64_t sub_100002380(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v6[2] = v3;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = v2;
  v7 = v5[10];
  v8 = v5[9];
  v9 = v5[8];
  v6[12] = v2;

  (*(v8 + 8))(v7, v9);
  if (v2)
  {
    v10 = sub_1000025E8;
  }

  else
  {
    v6[13] = a1;
    v10 = sub_100002514;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100002514()
{
  v1 = v0[13];
  if (v1)
  {
    sub_100001E74((v0[6] + 144), *(v0[6] + 168));
    v2 = v1;
    sub_10002812C();
  }

  v3 = v0[4];
  sub_10000D724(v3);
  sub_100004028(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000025E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  v6[23] = *(type metadata accessor for RequestLinkedModelUpdateStep(0) - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_100001DBC(&qword_100034E28, &qword_100029570);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v7 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v6[28] = v7;
  v6[29] = *(v7 - 8);
  v6[30] = swift_task_alloc();
  v8 = sub_100001DBC(&qword_100034E30, &qword_100029578);
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();
  v9 = sub_100001DBC(&qword_100034E38, &qword_100029580);
  v6[34] = v9;
  v6[35] = *(v9 - 8);
  v6[36] = swift_task_alloc();
  v10 = sub_100027D7C();
  v6[37] = v10;
  v6[38] = *(v10 - 8);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = sub_100001DBC(&qword_100034E40, &qword_100029588);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = sub_100001DBC(&qword_100034E48, &qword_100029590);
  v6[45] = swift_task_alloc();
  v6[46] = sub_100001DBC(&qword_100034E50, &qword_100029598);
  v6[47] = swift_task_alloc();
  v11 = sub_1000283CC();
  v6[48] = v11;
  v12 = *(v11 - 8);
  v6[49] = v12;
  v6[50] = *(v12 + 64);
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  sub_100001DBC(&qword_100034E58, &qword_1000295A0);
  v6[53] = swift_task_alloc();
  v13 = sub_100001DBC(&qword_100034E60, &qword_1000295A8);
  v6[54] = v13;
  v6[55] = *(v13 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v14 = sub_100001DBC(&qword_100034E68, &qword_1000295B0);
  v6[58] = v14;
  v6[59] = *(v14 - 8);
  v6[60] = swift_task_alloc();
  v15 = sub_100001DBC(&qword_100034E70, &qword_1000295B8);
  v6[61] = v15;
  v6[62] = *(v15 - 8);
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();

  return _swift_task_switch(sub_100002BAC, 0, 0);
}

uint64_t sub_100002BAC()
{
  sub_100001E74(*(v0 + 160), *(*(v0 + 160) + 24));
  v1 = sub_10002811C();
  if (v1)
  {
    v2 = v1;
    sub_100001E74(*(v0 + 144), *(*(v0 + 144) + 24));
    sub_1000282FC();
  }

  else
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v3 = sub_10002858C();
    sub_10000AEF4(v3, qword_100034C78);
    v4 = sub_10002856C();
    v5 = sub_10002875C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No existing turn bookmark found. A new bookmark will be created and only the last 24hrs of data will be reviewed.", v6, 2u);
    }

    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    v11 = *(v0 + 144);

    sub_100027D6C();
    sub_100027FBC();
    (*(v10 + 16))(v8, v7, v9);
    v12 = sub_100027FAC();
    sub_100001E74(v11, v11[3]);
    sub_1000282FC();

    (*(v10 + 8))(v7, v9);
  }

  v14 = *(v0 + 504);
  v13 = *(v0 + 512);
  v15 = *(v0 + 488);
  v16 = *(v0 + 496);
  v54 = *(v0 + 448);
  v49 = *(v0 + 440);
  v50 = *(v0 + 432);
  v51 = *(v0 + 424);
  v52 = *(v0 + 416);
  v44 = *(v0 + 408);
  v45 = *(v0 + 400);
  v43 = *(v0 + 392);
  v53 = *(v0 + 384);
  v47 = *(v0 + 344);
  v48 = *(v0 + 336);
  v46 = *(v0 + 176);
  v41 = *(v0 + 136);
  v42 = *(v0 + 152);
  v17 = swift_allocObject();
  *(v0 + 520) = v17;
  *(v17 + 16) = 0;
  (*(v16 + 16))(v14, v13, v15);
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_1000295C8;
  *(v18 + 24) = v17;
  sub_1000284AC();
  sub_10000EC9C(&qword_100034E78, &qword_100034E70, &qword_1000295B8, &protocol conformance descriptor for AnyAsyncSequence<A>);

  sub_1000288BC();
  sub_100027EFC();
  swift_allocObject();
  v19 = sub_100027EEC();
  sub_1000102B8(v41, v0 + 16);
  sub_1000283AC();
  sub_10000EC9C(&qword_100034E80, &qword_100034E68, &qword_1000295B0, &protocol conformance descriptor for AsyncMapSequence<A, B>);
  sub_10002870C();
  sub_1000102B8(v42, v0 + 56);
  (*(v43 + 16))(v44, v52, v53);
  v20 = (*(v43 + 80) + 72) & ~*(v43 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v46;
  sub_10000EB50((v0 + 56), v21 + 32);
  (*(v43 + 32))(v21 + v20, v44, v53);
  *(v21 + ((v45 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;
  sub_10000EC9C(&qword_100034E88, &qword_100034E48, &qword_100029590, &protocol conformance descriptor for WindowedAsyncSequence<A>);

  sub_10002891C();
  sub_10000EC9C(&qword_100034E90, &qword_100034E50, &qword_100029598, &protocol conformance descriptor for AsyncThrowingCompactMapSequence<A, B>);
  sub_1000280BC();
  (*(v49 + 16))(v47, v54, v50);
  sub_10000ED84(v47, v48, &qword_100034E40, &qword_100029588);
  sub_10000EC9C(&qword_100034E98, &qword_100034E40, &qword_100029588, &unk_100029F28);
  sub_1000280BC();

  sub_10000EDEC(v47, &qword_100034E40, &qword_100029588);
  v22 = *(v49 + 8);
  *(v0 + 528) = v22;
  *(v0 + 536) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v54, v50);
  (*(v43 + 8))(v52, v53);
  (*(v49 + 56))(v51, 0, 1, v50);
  if ((*(v49 + 48))(v51, 1, v50) == 1)
  {
    sub_10000EDEC(*(v0 + 424), &qword_100034E58, &qword_1000295A0);
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v23 = sub_10002858C();
    sub_10000AEF4(v23, qword_100034C78);
    v24 = sub_10002856C();
    v25 = sub_10002876C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to extract featurised turns", v26, 2u);
    }

    v27 = *(v0 + 512);
    v28 = *(v0 + 488);
    v29 = *(v0 + 496);
    v31 = *(v0 + 472);
    v30 = *(v0 + 480);
    v32 = *(v0 + 464);

    (*(v31 + 8))(v30, v32);
    (*(v29 + 8))(v27, v28);

    v33 = *(v0 + 8);

    return v33(0, _swiftEmptyArrayStorage);
  }

  else
  {
    v36 = *(v0 + 256);
    v35 = *(v0 + 264);
    v37 = *(v0 + 248);
    (*(*(v0 + 440) + 32))(*(v0 + 456), *(v0 + 424), *(v0 + 432));
    sub_10000EC9C(&qword_100034EA0, &qword_100034E60, &qword_1000295A8, &protocol conformance descriptor for AnyAsyncSequence<A>);
    sub_10002871C();
    sub_10002817C();
    (*(v36 + 8))(v35, v37);
    *(v0 + 544) = _swiftEmptyArrayStorage;
    v38 = sub_10000EC9C(&qword_100034EA8, &qword_100034E38, &qword_100029580, &protocol conformance descriptor for WindowedNAsyncSequence<A>.WindowedNAsyncSequenceIterator);
    v39 = swift_task_alloc();
    *(v0 + 552) = v39;
    *v39 = v0;
    v39[1] = sub_100003600;
    v40 = *(v0 + 272);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 120, v40, v38);
  }
}

uint64_t sub_100003600()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_100003D94;
  }

  else
  {
    v2 = sub_100003714;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003738()
{
  v1 = v0[71];
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(v1 + 16);
    if (!v3)
    {
      v22 = v2;

      if (qword_100034AA0 != -1)
      {
        swift_once();
      }

      v23 = sub_10002858C();
      sub_10000AEF4(v23, qword_100034C78);
      v24 = sub_10002856C();
      v25 = sub_10002876C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "The turn window received from the sequence is empty, skipping the current iteration", v26, 2u);
      }

      v27 = v0[68];
      v28 = v22;
      goto LABEL_21;
    }

    v49 = v2;
    v4 = *(v0[29] + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    sub_10000E558(v5, v0[30], type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v7 = v0[28];
    v6 = v0[29];
    v8 = v0[27];
    v9 = (v6 + 56);
    if (v3 == 1)
    {
      v10 = *v9;
      (*v9)(v0[27], 1, 1, v0[28]);
    }

    else
    {
      v29 = *(v6 + 72);
      sub_10000E558(v5 + v29, v0[27], type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v10 = *(v6 + 56);
      v10(v8, 0, 1, v7);
      if (v3 >= 3)
      {
        v30 = v0[28];
        v31 = v0[26];
        sub_10000E558(v5 + 2 * v29, v31, type metadata accessor for UniversalSuggestionsFeaturisedTurn);

        v10(v31, 0, 1, v30);
LABEL_16:
        v35 = v0[24];
        v34 = v0[25];
        sub_100004C08(v0[30], v0[27], v0[26], v0[17], v34);
        sub_10000E558(v34, v35, type metadata accessor for RequestLinkedModelUpdateStep);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v0[68];
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = sub_100026C9C(0, v27[2] + 1, 1, v0[68]);
        }

        v38 = v27[2];
        v37 = v27[3];
        if (v38 >= v37 >> 1)
        {
          v27 = sub_100026C9C((v37 > 1), v38 + 1, 1, v27);
        }

        v39 = v0[30];
        v41 = v0[26];
        v40 = v0[27];
        v42 = v0[24];
        v43 = v0[23];
        sub_10000E5C0(v0[25], type metadata accessor for RequestLinkedModelUpdateStep);
        sub_10000EDEC(v41, &qword_100034E28, &qword_100029570);
        sub_10000EDEC(v40, &qword_100034E28, &qword_100029570);
        sub_10000E5C0(v39, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        v27[2] = (v38 + 1);
        sub_10000E620(v42, v27 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v38, type metadata accessor for RequestLinkedModelUpdateStep);
        v28 = v49;
LABEL_21:
        objc_autoreleasePoolPop(v28);
        v0[68] = v27;
        v44 = sub_10000EC9C(&qword_100034EA8, &qword_100034E38, &qword_100029580, &protocol conformance descriptor for WindowedNAsyncSequence<A>.WindowedNAsyncSequenceIterator);
        v45 = swift_task_alloc();
        v0[69] = v45;
        *v45 = v0;
        v45[1] = sub_100003600;
        v46 = v0[34];

        return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 15, v46, v44);
      }
    }

    v32 = v0[28];
    v33 = v0[26];

    v10(v33, 1, 1, v32);
    goto LABEL_16;
  }

  v11 = v0[66];
  v12 = v0[65];
  v50 = v0[64];
  v13 = v0[62];
  v47 = v0[61];
  v14 = v0[59];
  v15 = v0[60];
  v17 = v0[57];
  v16 = v0[58];
  v18 = v0[54];
  (*(v0[35] + 8))(v0[36], v0[34]);
  v11(v17, v18);
  (*(v14 + 8))(v15, v16);
  (*(v13 + 8))(v50, v47);
  swift_beginAccess();
  v51 = *(v12 + 16);
  v19 = v51;

  v48 = v0[68];

  v20 = v0[1];

  return v20(v51, v48);
}

uint64_t sub_100003D94()
{
  *(v0 + 128) = *(v0 + 560);
  sub_100001DBC(&qword_100034EB0, &qword_1000295F0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100003E28, 0, 0);
}

uint64_t sub_100003E28()
{
  v1 = v0[66];
  v2 = v0[64];
  v3 = v0[62];
  v11 = v0[61];
  v5 = v0[59];
  v4 = v0[60];
  v6 = v0[57];
  v7 = v0[58];
  v8 = v0[54];
  (*(v0[35] + 8))();
  v1(v6, v8);
  (*(v5 + 8))(v4, v7);
  (*(v3 + 8))(v2, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100004028(uint64_t a1)
{
  v54 = sub_10002836C();
  v2 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000282EC();
  v4 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000280AC();
  v6 = *(v45 - 8);
  v7 = __chkstk_darwin(v45);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v38 - v9;
  updated = type metadata accessor for ModelUpdateStep(0);
  __chkstk_darwin(updated);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for RequestLinkedModelUpdateStep(0);
  result = __chkstk_darwin(v58);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = v55[23];
    v18 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v56 = *(v13 + 72);
    v57 = v17;
    v49 = (v4 + 32);
    v42 = enum case for UniversalSuggestionFeedbackAction.markSurfaced(_:);
    v47 = (v2 + 8);
    v48 = (v2 + 104);
    v46 = (v4 + 8);
    v41 = enum case for UniversalSuggestionFeedbackAction.demote(_:);
    v40 = enum case for UniversalSuggestionFeedbackAction.promote(_:);
    v38 = (v6 + 8);
    v39 = (v6 + 32);
    v50 = v11;
    do
    {
      sub_10000E558(v18, v15, type metadata accessor for RequestLinkedModelUpdateStep);
      v28 = v58;
      sub_10000DB04(v15, v57, &v15[*(v58 + 24)]);
      sub_10000E558(&v15[*(v28 + 20)], v11, type metadata accessor for ModelUpdateStep);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v31 = *(sub_100001DBC(&qword_100034E08, &unk_100029550) + 48);
          v32 = *v39;
          v33 = v43;
          v34 = v45;
          (*v39)(v43, v11, v45);
          v35 = v44;
          v32(v44, &v11[v31], v34);
          sub_100004630(v15, v33, v35);
          v36 = *v38;
          (*v38)(v35, v34);
          v36(v33, v34);
          goto LABEL_6;
        }

        v19 = v51;
        v37 = v11;
        v21 = v52;
        (*v49)(v51, v37, v52);
        sub_100001E74(v55 + 2, v55[5]);
        v23 = v53;
        v26 = v54;
        (*v48)(v53, v40, v54);
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v19 = v51;
          v20 = v11;
          v21 = v52;
          (*v49)(v51, v20, v52);
          sub_100001E74(v55 + 2, v55[5]);
          v22 = *v48;
          v23 = v53;
          v24 = v53;
          v25 = v41;
        }

        else
        {
          if (EnumCaseMultiPayload != 3)
          {
            goto LABEL_6;
          }

          v19 = v51;
          v30 = v11;
          v21 = v52;
          (*v49)(v51, v30, v52);
          sub_100001E74(v55 + 2, v55[5]);
          v22 = *v48;
          v23 = v53;
          v24 = v53;
          v25 = v42;
        }

        v26 = v54;
        v22(v24, v25, v54);
      }

      sub_10002824C();
      (*v47)(v23, v26);
      v27 = v21;
      v11 = v50;
      (*v46)(v19, v27);
LABEL_6:
      result = sub_10000E5C0(v15, type metadata accessor for RequestLinkedModelUpdateStep);
      v18 += v56;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_100004630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v20 = sub_10002830C();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002844C();
  v8 = __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  sub_100001E74((v3 + 16), *(v3 + 40));
  sub_10002823C();
  sub_10000E558(v12, v10, &type metadata accessor for UniversalSuggestionCandidateDonationResult);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v14 = sub_10002858C();
    sub_10000AEF4(v14, qword_100034C78);
    v15 = sub_10002856C();
    v16 = sub_10002876C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not donate suggestion to shared Universal Suggestions store", v17, 2u);
    }
  }

  else
  {
    v13 = v20;
    (*(v4 + 32))(v6, v10, v20);
    sub_1000283DC();
    (*(v4 + 8))(v6, v13);
  }

  return sub_10000E5C0(v12, &type metadata accessor for UniversalSuggestionCandidateDonationResult);
}

uint64_t sub_10000492C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_100004950, 0, 0);
}

uint64_t sub_100004950()
{
  v2 = v0[6];
  v1 = v0[7];
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;

  v7 = v0[1];

  v5 = v0[5];

  return v7(v5);
}

uint64_t sub_1000049F8(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100004AF8;

  return v8(v4, v5);
}

uint64_t sub_100004AF8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100004C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v127 = a4;
  v126 = a3;
  v133 = a5;
  v105 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
  __chkstk_darwin(v105);
  v104 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState(0);
  __chkstk_darwin(v8 - 8);
  v115 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100027DAC();
  v132 = *(v10 - 8);
  __chkstk_darwin(v10);
  v108 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1000282EC();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v116 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100001DBC(&qword_100034E10, &qword_100029AF0);
  __chkstk_darwin(v13 - 8);
  v120 = &v100 - v14;
  v121 = type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState(0);
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v107 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ModelUpdateStep(0);
  v16 = __chkstk_darwin(updated);
  v122 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v131 = &v100 - v18;
  v19 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  __chkstk_darwin(v19 - 8);
  v125 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000280AC();
  v113 = *(v114 - 8);
  v21 = __chkstk_darwin(v114);
  v112 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v111 = &v100 - v23;
  v124 = type metadata accessor for UniversalSuggestionRequestState(0);
  __chkstk_darwin(v124);
  v135 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for UniversalSuggestionRequestTaskState(0);
  __chkstk_darwin(v25);
  v129 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for UniversalSuggestionCorrectionDiscovered(0);
  __chkstk_darwin(v123);
  v138 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  __chkstk_darwin(v118);
  v117 = &v100 - v28;
  v29 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  v30 = __chkstk_darwin(v29 - 8);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v100 - v33;
  v137 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v35 = *(v137 - 8);
  __chkstk_darwin(v137);
  v37 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100034AA0 != -1)
  {
    swift_once();
  }

  v38 = sub_10002858C();
  v39 = sub_10000AEF4(v38, qword_100034C78);
  v136 = a1;
  sub_10000E558(a1, v37, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v128 = a2;
  sub_10000ED84(a2, v34, &qword_100034E28, &qword_100029570);
  v106 = v39;
  v40 = sub_10002856C();
  v41 = sub_10002875C();
  v42 = os_log_type_enabled(v40, v41);
  v134 = v10;
  if (v42)
  {
    v102 = v41;
    v103 = v25;
    v43 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *&v139 = v101;
    *v43 = 136315394;
    v44 = v137;
    sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v45 = sub_1000288EC();
    v47 = v46;
    sub_10000E5C0(v37, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v48 = sub_100027364(v45, v47, &v139);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    sub_10000ED84(v34, v32, &qword_100034E28, &qword_100029570);
    if ((*(v35 + 48))(v32, 1, v44) == 1)
    {
      sub_10000EDEC(v32, &qword_100034E28, &qword_100029570);
      v49 = 1;
      v50 = v132;
      v51 = v125;
      v52 = v117;
    }

    else
    {
      v54 = *(v44 + 20);
      v50 = v132;
      v52 = v117;
      (*(v132 + 16))(v117, &v32[v54], v10);
      sub_10000E5C0(v32, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v49 = 0;
      v51 = v125;
    }

    (*(v50 + 56))(v52, v49, 1, v10);
    v55 = sub_10002861C();
    v57 = v56;
    sub_10000EDEC(v34, &qword_100034E28, &qword_100029570);
    v58 = sub_100027364(v55, v57, &v139);

    *(v43 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v40, v102, "Analysing request pair: %s -> %s", v43, 0x16u);
    swift_arrayDestroy();

    v53 = v135;
    v25 = v103;
  }

  else
  {

    sub_10000EDEC(v34, &qword_100034E28, &qword_100029570);
    sub_10000E5C0(v37, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v50 = v132;
    v53 = v135;
    v51 = v125;
  }

  v59 = v138;
  v60 = v136;
  v61 = v128;
  sub_100005D94(v136, v128, v126, v138);
  sub_1000102B8(v127, &v139);
  type metadata accessor for UniversalSuggestionsRequestTaskStateExtractor();
  inited = swift_initStackObject();
  sub_10000EB50(&v139, inited + 16);
  v63 = v129;
  sub_100016EF0(v60, v61, v129);
  swift_setDeallocating();
  sub_100001EB8((inited + 16));
  sub_10000E558(v59, v53, type metadata accessor for UniversalSuggestionCorrectionDiscovered);
  v64 = v53 + *(v124 + 20);
  sub_10000E558(v63, v64, type metadata accessor for UniversalSuggestionRequestTaskState);
  sub_10000E558(v53 + *(v123 + 24), v51, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  v65 = sub_100001DBC(&qword_100034E08, &unk_100029550);
  v66 = (*(*(v65 - 8) + 48))(v51, 2, v65);
  v67 = v131;
  if (!v66)
  {
    sub_10000E5C0(v63, type metadata accessor for UniversalSuggestionRequestTaskState);
    sub_10000E5C0(v59, type metadata accessor for UniversalSuggestionCorrectionDiscovered);
    v70 = *(v65 + 48);
    v71 = *(v113 + 32);
    v72 = v111;
    v73 = v51;
    v74 = v51;
    v75 = v114;
    v71(v111, v73, v114);
    v76 = v112;
    v71(v112, v74 + v70, v75);
    v77 = type metadata accessor for RequestLinkedModelUpdateStep(0);
    v78 = v133;
    v79 = v133 + *(v77 + 20);
    v80 = *(v65 + 48);
    v71(v79, v72, v75);
    v71((v79 + v80), v76, v75);
    swift_storeEnumTagMultiPayload();
    (*(v50 + 16))(v78, v136 + *(v137 + 20), v134);
    v81 = type metadata accessor for UniversalSuggestionRequestState;
    v82 = v78 + *(v77 + 24);
    v83 = v135;
    return sub_10000E620(v83, v82, v81);
  }

  sub_10000E5C0(v51, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  swift_storeEnumTagMultiPayload();
  v68 = v120;
  sub_10000ED84(v64 + *(v25 + 20), v120, &qword_100034E10, &qword_100029AF0);
  v69 = v121;
  if ((*(v119 + 48))(v68, 1, v121) == 1)
  {
    sub_10000EDEC(v68, &qword_100034E10, &qword_100029AF0);
  }

  else
  {
    v84 = v107;
    sub_10000E620(v68, v107, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
    v85 = type metadata accessor for UniversalSuggestionItem(0);
    (*(v50 + 16))(v108, v84 + *(v85 + 24), v134);
    v86 = v116;
    sub_1000282CC();
    v87 = v115;
    sub_10000E558(v84 + *(v69 + 20), v115, type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState);
    sub_10000E5C0(v84, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
    v88 = sub_100001DBC(&qword_100034E18, &qword_100029560);
    v89 = (*(*(v88 - 8) + 48))(v87, 3, v88);
    if ((v89 - 2) >= 2)
    {
      if (v89)
      {
        (*(v109 + 8))(v86, v110);
        goto LABEL_19;
      }

      sub_10000E5C0(v67, type metadata accessor for ModelUpdateStep);
      v90 = v104;
      sub_10000E620(v115, v104, type metadata accessor for UniversalSuggestionDisambiguationOffered);
      sub_10000E5C0(v90, type metadata accessor for UniversalSuggestionDisambiguationOffered);
      (*(v109 + 32))(v67, v116, v110);
    }

    else
    {
      sub_10000E5C0(v67, type metadata accessor for ModelUpdateStep);
      (*(v109 + 32))(v67, v86, v110);
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_19:
  v91 = v122;
  swift_storeEnumTagMultiPayload();
  v92 = sub_10000B090(v67, v91);
  sub_10000E5C0(v91, type metadata accessor for ModelUpdateStep);
  v93 = v138;
  if (v92)
  {
    v94 = sub_10002856C();
    v95 = sub_10002875C();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "No learnable interactions found between these requests", v96, 2u);
      v93 = v138;
    }
  }

  sub_10000E5C0(v63, type metadata accessor for UniversalSuggestionRequestTaskState);
  sub_10000E5C0(v93, type metadata accessor for UniversalSuggestionCorrectionDiscovered);
  v97 = v133;
  (*(v50 + 16))(v133, v60 + *(v137 + 20), v134);
  v98 = type metadata accessor for RequestLinkedModelUpdateStep(0);
  sub_10000E620(v53, v97 + *(v98 + 24), type metadata accessor for UniversalSuggestionRequestState);
  v81 = type metadata accessor for ModelUpdateStep;
  v82 = v97 + *(v98 + 20);
  v83 = v67;
  return sub_10000E620(v83, v82, v81);
}

uint64_t sub_100005D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v283 = a3;
  v300 = a4;
  v6 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  __chkstk_darwin(v6 - 8);
  v301 = &v272 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
  __chkstk_darwin(v8 - 8);
  v285 = &v272 - v9;
  v284 = type metadata accessor for UniversalSuggestionsPromptState(0);
  v280 = *(v284 - 8);
  __chkstk_darwin(v284);
  v278 = &v272 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000280AC();
  v12 = *(v11 - 8);
  v288 = v11;
  v289 = v12;
  v13 = __chkstk_darwin(v11);
  v276 = (&v272 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v287 = &v272 - v15;
  v16 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  v17 = __chkstk_darwin(v16 - 8);
  v295 = (&v272 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v20 = &v272 - v19;
  v21 = sub_100027D7C();
  v22 = *(v21 - 8);
  v298 = v21;
  v299 = v22;
  v23 = __chkstk_darwin(v21);
  v292 = &v272 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v291 = &v272 - v26;
  v27 = __chkstk_darwin(v25);
  v294 = &v272 - v28;
  v29 = __chkstk_darwin(v27);
  v296 = &v272 - v30;
  __chkstk_darwin(v29);
  v297 = &v272 - v31;
  v32 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v279 = &v272 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v277 = &v272 - v37;
  v38 = __chkstk_darwin(v36);
  v275 = &v272 - v39;
  v40 = __chkstk_darwin(v38);
  v290 = &v272 - v41;
  v42 = __chkstk_darwin(v40);
  v286 = &v272 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v272 - v45;
  __chkstk_darwin(v44);
  v48 = &v272 - v47;
  v49 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  v50 = __chkstk_darwin(v49 - 8);
  v281 = &v272 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v54 = &v272 - v53;
  __chkstk_darwin(v52);
  v303 = &v272 - v55;
  sub_10000ED84(a2, &v272 - v55, &qword_100034E28, &qword_100029570);
  v302 = v48;
  sub_10000E558(a1, v48, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  sub_10000ED84(a2, v54, &qword_100034E28, &qword_100029570);
  v56 = *(v33 + 48);
  v293 = v32;
  v282 = v33 + 48;
  if (v56(v54, 1, v32) == 1)
  {
    sub_10000EDEC(v54, &qword_100034E28, &qword_100029570);
    if (qword_100034AA0 == -1)
    {
LABEL_3:
      v57 = sub_10002858C();
      sub_10000AEF4(v57, qword_100034C78);
      v58 = sub_10002856C();
      v59 = sub_10002875C();
      v60 = os_log_type_enabled(v58, v59);
      v61 = v303;
      v62 = v301;
      if (v60)
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Reached end of turn pairs, skipping.", v63, 2u);
      }

      v64 = sub_100001DBC(&qword_100034E08, &unk_100029550);
      (*(*(v64 - 8) + 56))(v62, 1, 2, v64);
      v65 = v302;
      sub_100008328(v62, v61, v302, v300);
      sub_10000E5C0(v62, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
      sub_10000E5C0(v65, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      return sub_10000EDEC(v61, &qword_100034E28, &qword_100029570);
    }

LABEL_92:
    swift_once();
    goto LABEL_3;
  }

  sub_10000E620(v54, v46, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v67 = a1;
  sub_10000ED84(a1, v20, &qword_100034ED0, &qword_100029610);
  v69 = v298;
  v68 = v299;
  v70 = *(v299 + 48);
  if (v70(v20, 1, v298) == 1)
  {
    v71 = v20;
    v72 = v303;
LABEL_10:
    v76 = v301;
    sub_10000EDEC(v71, &qword_100034ED0, &qword_100029610);
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v77 = sub_10002858C();
    sub_10000AEF4(v77, qword_100034C78);
    v78 = sub_10002856C();
    v79 = sub_10002876C();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "Skipping turn pair - missing timestamp(s)", v80, 2u);
    }

    v81 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    (*(*(v81 - 8) + 56))(v76, 1, 2, v81);
    v82 = v302;
    sub_100008328(v76, v72, v302, v300);
    sub_10000E5C0(v76, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    sub_10000E5C0(v82, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    sub_10000EDEC(v72, &qword_100034E28, &qword_100029570);
    v83 = v46;
    return sub_10000E5C0(v83, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  v273 = v67;
  v73 = *(v68 + 32);
  v74 = v297;
  v73(v297, v20, v69);
  v274 = v46;
  v71 = v295;
  sub_10000ED84(v46, v295, &qword_100034ED0, &qword_100029610);
  v75 = v69;
  if (v70(v71, 1, v69) == 1)
  {
    (*(v299 + 8))(v74, v69);
    v72 = v303;
    v46 = v274;
    goto LABEL_10;
  }

  v73(v296, v71, v69);
  v84 = v294;
  sub_100027D3C();
  sub_10000ED3C(&qword_100034ED8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v85 = sub_1000285DC();
  v86 = v299;
  v87 = *(v299 + 8);
  v87(v84, v69);
  if (v85)
  {
    v88 = v74;
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v89 = sub_10002858C();
    sub_10000AEF4(v89, qword_100034C78);
    v90 = *(v86 + 16);
    v91 = v291;
    v90(v291, v74, v75);
    v92 = v292;
    v90(v292, v296, v75);
    v93 = sub_10002856C();
    v94 = sub_10002876C();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v299 = swift_slowAlloc();
      v304 = v299;
      *v95 = 136315394;
      sub_10000ED3C(&qword_100034EE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v96 = v87;
      v97 = sub_1000288EC();
      v98 = v75;
      v100 = v99;
      v87(v91, v98);
      v101 = sub_100027364(v97, v100, &v304);
      v75 = v98;

      *(v95 + 4) = v101;
      *(v95 + 12) = 2080;
      v102 = sub_1000288EC();
      v104 = v103;
      v96(v92, v98);
      v105 = sub_100027364(v102, v104, &v304);
      v87 = v96;
      v88 = v297;

      *(v95 + 14) = v105;
      _os_log_impl(&_mh_execute_header, v93, v94, "Skipping turn pair as they are too far apart in time: %s -> %s", v95, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v87(v92, v75);
      v87(v91, v75);
    }

    v122 = v303;
    v123 = v274;
    v124 = v301;
    v125 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    (*(*(v125 - 8) + 56))(v124, 1, 2, v125);
    v126 = v302;
    sub_100008328(v124, v122, v302, v300);
    sub_10000E5C0(v124, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    v87(v296, v75);
    v87(v88, v75);
    sub_10000E5C0(v126, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    sub_10000EDEC(v122, &qword_100034E28, &qword_100029570);
    v83 = v123;
    return sub_10000E5C0(v83, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  v106 = *&v274[v293[7]];
  v295 = v87;
  if (v106 >> 62)
  {
    v107 = sub_1000288CC();
  }

  else
  {
    v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v108 = v290;
  v109 = 0;
  do
  {
    if (v107 == v109)
    {
      goto LABEL_33;
    }

    if ((v106 & 0xC000000000000001) != 0)
    {
      v110 = sub_10002883C();
      if (__OFADD__(v109, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        if (qword_100034AA0 != -1)
        {
          swift_once();
        }

        v112 = sub_10002858C();
        sub_10000AEF4(v112, qword_100034C78);
        v113 = sub_10002856C();
        v114 = sub_10002875C();
        v115 = os_log_type_enabled(v113, v114);
        v116 = v303;
        v117 = v274;
        v118 = v301;
        v119 = v298;
        if (v115)
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          v121 = "Next turn doesn't have a correction event, skipping pair...";
          goto LABEL_46;
        }

LABEL_47:

        v139 = sub_100001DBC(&qword_100034E08, &unk_100029550);
        (*(*(v139 - 8) + 56))(v118, 1, 2, v139);
        v140 = v302;
        sub_100008328(v118, v116, v302, v300);
        sub_10000E5C0(v118, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
        v141 = v295;
        v295(v296, v119);
        v141(v297, v119);
        sub_10000E5C0(v140, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        sub_10000EDEC(v116, &qword_100034E28, &qword_100029570);
        v83 = v117;
        return sub_10000E5C0(v83, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      }
    }

    else
    {
      if (v109 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_92;
      }

      v110 = *(v106 + 8 * v109 + 32);

      if (__OFADD__(v109, 1))
      {
        goto LABEL_32;
      }
    }

    v111 = sub_10000B7D8(v110);

    ++v109;
  }

  while ((v111 & 1) == 0);
  v127 = v293;
  v128 = *(v273 + v293[6]);
  if (!*(v128 + 16))
  {
    v117 = v274;
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v137 = sub_10002858C();
    sub_10000AEF4(v137, qword_100034C78);
    v113 = sub_10002856C();
    v114 = sub_10002875C();
    v138 = os_log_type_enabled(v113, v114);
    v116 = v303;
    v118 = v301;
    v119 = v298;
    if (v138)
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      v121 = "Skipping turn because a correction cannot exist as long as the previous turn doesn't have an entity";
LABEL_46:
      _os_log_impl(&_mh_execute_header, v113, v114, v121, v120, 2u);
    }

    goto LABEL_47;
  }

  v129 = *(v289 + 16);
  v129(v287, v128 + ((*(v289 + 80) + 32) & ~*(v289 + 80)), v288);
  v130 = v281;
  sub_10000ED84(v283, v281, &qword_100034E28, &qword_100029570);
  v131 = v56(v130, 1, v127);
  v132 = v274;
  if (v131 == 1)
  {
    sub_10000EDEC(v130, &qword_100034E28, &qword_100029570);
    v133 = v285;
    v134 = v286;
    v135 = v273;
    v136 = v284;
    goto LABEL_51;
  }

  sub_10000E620(v130, v108, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v135 = v273;
  v142 = sub_10000BA9C(v273, v132, v108);
  v133 = v285;
  v134 = v286;
  v136 = v284;
  if (v142)
  {
    sub_10000E620(v108, v286, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  else
  {
    sub_10000E5C0(v108, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
LABEL_51:
    sub_10000E558(v132, v134, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  if (*(v128 + 16) != 1)
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v145 = sub_10002858C();
    sub_10000AEF4(v145, qword_100034C78);
    v146 = v279;
    sub_10000E558(v135, v279, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v147 = sub_10002856C();
    v148 = sub_10002875C();
    v149 = os_log_type_enabled(v147, v148);
    v150 = v303;
    v151 = v301;
    v152 = v298;
    if (v149)
    {
      v153 = swift_slowAlloc();
      *v153 = 134217984;
      v154 = v146;
      v155 = *(*(v146 + v293[6]) + 16);
      sub_10000E5C0(v154, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      *(v153 + 4) = v155;
      _os_log_impl(&_mh_execute_header, v147, v148, "Correctable (first) turn mentioned %ld entities, which is unsupported -> correctedNotLearnable", v153, 0xCu);
    }

    else
    {
      sub_10000E5C0(v146, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    }

    v160 = v302;
    v161 = v300;
    v162 = v297;

    v163 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    (*(*(v163 - 8) + 56))(v151, 2, 2, v163);
    sub_100008328(v151, v150, v160, v161);
    sub_10000E5C0(v151, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    (*(v289 + 8))(v287, v288);
    v164 = v295;
    v295(v296, v152);
    v164(v162, v152);
    sub_10000E5C0(v160, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    sub_10000EDEC(v150, &qword_100034E28, &qword_100029570);
    v165 = v274;
    goto LABEL_90;
  }

  v143 = v293;
  sub_10000ED84(v134 + v293[10], v133, &qword_100034EC8, &unk_100029AC0);
  if ((*(v280 + 48))(v133, 1, v136) == 1)
  {
    sub_10000EDEC(v133, &qword_100034EC8, &unk_100029AC0);
    v144 = 0;
  }

  else
  {
    v156 = v129;
    v157 = v132;
    v158 = v278;
    sub_10000E620(v133, v278, type metadata accessor for UniversalSuggestionsPromptState);
    v159 = sub_1000089D8(*(v158 + *(v136 + 20)));
    sub_10000E5C0(v158, type metadata accessor for UniversalSuggestionsPromptState);
    if (v159 == 2)
    {
      v144 = 1;
    }

    else
    {
      v144 = v159 ^ 1;
    }

    v143 = v293;
    v132 = v157;
    v129 = v156;
  }

  v166 = *(*(v134 + v143[6]) + 16);
  if (v166 != 1 && (v144 & (v166 == 0)) == 0)
  {
    v167 = v303;
    v168 = v301;
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v169 = sub_10002858C();
    sub_10000AEF4(v169, qword_100034C78);
    v170 = v277;
    sub_10000E558(v134, v277, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v171 = sub_10002856C();
    v172 = sub_10002875C();
    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      v174 = v170;
      v175 = v173;
      *v173 = 134218240;
      v176 = *(*(v174 + v293[6]) + 16);
      sub_10000E5C0(v174, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      *(v175 + 1) = v176;
      v132 = v274;
      *(v175 + 6) = 1024;
      *(v175 + 14) = v144 & 1;
      _os_log_impl(&_mh_execute_header, v171, v172, "Correction (second) turn mentioned %ld entities and didDetectTouchInteraction=%{BOOL}d, which is unsupported -> correctedNotLearnable", v175, 0x12u);
    }

    else
    {
      sub_10000E5C0(v170, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    }

    v208 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    (*(*(v208 - 8) + 56))(v168, 2, 2, v208);
    v209 = v302;
    sub_100008328(v168, v167, v302, v300);
    sub_10000E5C0(v168, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    (*(v289 + 8))(v287, v288);
    v210 = v295;
    v211 = v298;
    v295(v296, v298);
    v210(v297, v211);
    sub_10000E5C0(v209, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v207 = v167;
    goto LABEL_89;
  }

  v177 = v143[8];
  v178 = v135 + v177;
  v179 = *(v135 + v177);
  if (!v179 || (v180 = (v134 + v177), (v181 = *v180) == 0))
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v196 = sub_10002858C();
    sub_10000AEF4(v196, qword_100034C78);
    v197 = sub_10002856C();
    v198 = sub_10002875C();
    v199 = os_log_type_enabled(v197, v198);
    v200 = v303;
    v201 = v301;
    v202 = v298;
    if (v199)
    {
      v203 = swift_slowAlloc();
      *v203 = 0;
      _os_log_impl(&_mh_execute_header, v197, v198, "Could not read control home intents from turns, skipping pair...", v203, 2u);
    }

    v204 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    (*(*(v204 - 8) + 56))(v201, 2, 2, v204);
    v205 = v302;
    sub_100008328(v201, v200, v302, v300);
    sub_10000E5C0(v201, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    (*(v289 + 8))(v287, v288);
    v206 = v295;
    v295(v296, v202);
    v206(v297, v202);
    sub_10000E5C0(v205, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v207 = v200;
LABEL_89:
    sub_10000EDEC(v207, &qword_100034E28, &qword_100029570);
    v165 = v132;
LABEL_90:
    sub_10000E5C0(v165, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v83 = v134;
    return sub_10000E5C0(v83, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  v182 = *(v178 + 8);
  v183 = v180[1];
  if (v183 >> 62)
  {
    v257 = v179;
    v258 = *(v178 + 8);
    v259 = sub_1000288CC();
    v182 = v258;
    v260 = v259;
    v179 = v257;
    if (v260 == 1)
    {
      goto LABEL_75;
    }

LABEL_116:
    v261 = v303;
    v262 = v301;
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v263 = sub_10002858C();
    sub_10000AEF4(v263, qword_100034C78);

    v264 = sub_10002856C();
    v265 = sub_10002875C();
    if (os_log_type_enabled(v264, v265))
    {
      v266 = swift_slowAlloc();
      *v266 = 134217984;
      if (v183 >> 62)
      {
        v267 = sub_1000288CC();
      }

      else
      {
        v267 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v266 + 4) = v267;

      _os_log_impl(&_mh_execute_header, v264, v265, "Correction (second) turn contains %ld resolved entities, which is unsupported -> correctedNotLearnable", v266, 0xCu);

      v132 = v274;
    }

    else
    {
    }

    v268 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    (*(*(v268 - 8) + 56))(v262, 2, 2, v268);
    v269 = v302;
    sub_100008328(v262, v261, v302, v300);
    sub_10000E5C0(v262, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    (*(v289 + 8))(v287, v288);
    v270 = v295;
    v271 = v298;
    v295(v296, v298);
    v270(v297, v271);
    sub_10000E5C0(v269, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v195 = v261;
LABEL_125:
    sub_10000EDEC(v195, &qword_100034E28, &qword_100029570);
    v256 = v132;
    goto LABEL_126;
  }

  if (*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_116;
  }

LABEL_75:
  if (sub_10000CB3C(v179, v182) & 1) != 0 || (sub_10000CB3C(v181, v183))
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v184 = sub_10002858C();
    sub_10000AEF4(v184, qword_100034C78);
    v185 = sub_10002856C();
    v186 = sub_10002875C();
    v187 = os_log_type_enabled(v185, v186);
    v188 = v303;
    v189 = v301;
    v190 = v298;
    if (v187)
    {
      v191 = swift_slowAlloc();
      *v191 = 0;
      _os_log_impl(&_mh_execute_header, v185, v186, "Turns contain unsupported types of entities, skipping pair...", v191, 2u);
    }

    v192 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    (*(*(v192 - 8) + 56))(v189, 2, 2, v192);
    v193 = v302;
    sub_100008328(v189, v188, v302, v300);
    sub_10000E5C0(v189, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    (*(v289 + 8))(v287, v288);
    v194 = v295;
    v295(v296, v190);
    v194(v297, v190);
    sub_10000E5C0(v193, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v195 = v188;
    goto LABEL_125;
  }

  v212 = sub_10000CE10(v183);
  if (v212)
  {
    *v276 = v212;
    (*(v289 + 104))();

    v213 = sub_10002809C();
    if (v214)
    {
      v215 = v213;
      v216 = v214;
      v299 = v129;
      v294 = sub_10002809C();
      if (v217)
      {
        v218 = v217;
        if (qword_100034AA0 != -1)
        {
          swift_once();
        }

        v219 = sub_10002858C();
        sub_10000AEF4(v219, qword_100034C78);
        sub_10000E558(v273, v275, type metadata accessor for UniversalSuggestionsFeaturisedTurn);

        v220 = sub_10002856C();
        v221 = sub_10002875C();

        LODWORD(v292) = v221;
        if (os_log_type_enabled(v220, v221))
        {
          v222 = swift_slowAlloc();
          v304 = swift_slowAlloc();
          *v222 = 136315650;
          v223 = sub_100027364(v215, v216, &v304);

          *(v222 + 4) = v223;
          *(v222 + 12) = 2080;
          v224 = sub_100027364(v294, v218, &v304);

          *(v222 + 14) = v224;
          *(v222 + 22) = 2080;
          v225 = v275;
          v226 = sub_100027D8C();
          v228 = v227;
          sub_10000E5C0(v225, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          v229 = sub_100027364(v226, v228, &v304);

          *(v222 + 24) = v229;
          _os_log_impl(&_mh_execute_header, v220, v292, "Found a correction response in request %s -> %s, requestId=%s", v222, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          sub_10000E5C0(v275, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        }

        v246 = sub_100001DBC(&qword_100034E08, &unk_100029550);
        v247 = *(v246 + 48);
        v248 = v301;
        v250 = v287;
        v249 = v288;
        v251 = v299;
        (v299)(v301, v287, v288);
        v252 = v276;
        v251(v248 + v247, v276, v249);
        (*(*(v246 - 8) + 56))(v248, 0, 2, v246);
        v237 = v302;
        v236 = v303;
        sub_100008328(v248, v303, v302, v300);

        sub_10000E5C0(v248, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
        v253 = *(v289 + 8);
        v253(v252, v249);
        v253(v250, v249);
        goto LABEL_114;
      }
    }

    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v238 = sub_10002858C();
    sub_10000AEF4(v238, qword_100034C78);
    v239 = sub_10002856C();
    v240 = sub_10002875C();
    if (os_log_type_enabled(v239, v240))
    {
      v241 = swift_slowAlloc();
      *v241 = 0;
      _os_log_impl(&_mh_execute_header, v239, v240, "Skipping generating correction: could not extract names from the entities", v241, 2u);
    }

    v242 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    v243 = v301;
    (*(*(v242 - 8) + 56))(v301, 2, 2, v242);
    v237 = v302;
    v236 = v303;
    sub_100008328(v243, v303, v302, v300);

    sub_10000E5C0(v243, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    v244 = v288;
    v245 = *(v289 + 8);
    v245(v276, v288);
    v245(v287, v244);
  }

  else
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v230 = sub_10002858C();
    sub_10000AEF4(v230, qword_100034C78);
    v231 = sub_10002856C();
    v232 = sub_10002875C();
    if (os_log_type_enabled(v231, v232))
    {
      v233 = swift_slowAlloc();
      *v233 = 0;
      _os_log_impl(&_mh_execute_header, v231, v232, "Skipping generating correction: no entity could be built from control home intent response", v233, 2u);
    }

    v234 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    v235 = v301;
    (*(*(v234 - 8) + 56))(v301, 2, 2, v234);
    v237 = v302;
    v236 = v303;
    sub_100008328(v235, v303, v302, v300);
    sub_10000E5C0(v235, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    (*(v289 + 8))(v287, v288);
  }

LABEL_114:
  v254 = v295;
  v255 = v298;
  v295(v296, v298);
  v254(v297, v255);
  sub_10000E5C0(v237, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  sub_10000EDEC(v236, &qword_100034E28, &qword_100029570);
  v256 = v274;
LABEL_126:
  sub_10000E5C0(v256, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v83 = v286;
  return sub_10000E5C0(v83, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
}

uint64_t sub_100008328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_100001DBC(&qword_100034E08, &unk_100029550);
  (*(*(v17 - 8) + 56))(v13, 1, 2, v17);
  v18 = sub_10001FDA0(a1, v13);
  sub_10000E5C0(v13, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  if ((v18 & 1) == 0)
  {
    sub_10000ED84(a2, v10, &qword_100034E28, &qword_100029570);
    v19 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) != 1)
    {
      v21 = *(v19 + 20);
      v20 = sub_100027DAC();
      v22 = *(v20 - 8);
      (*(v22 + 16))(v16, &v10[v21], v20);
      sub_10000E5C0(v10, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      (*(v22 + 56))(v16, 0, 1, v20);
      goto LABEL_6;
    }

    sub_10000EDEC(v10, &qword_100034E28, &qword_100029570);
  }

  v20 = sub_100027DAC();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
LABEL_6:
  v23 = *(type metadata accessor for UniversalSuggestionsFeaturisedTurn(0) + 20);
  sub_100027DAC();
  (*(*(v20 - 8) + 16))(a4, a3 + v23, v20);
  v24 = type metadata accessor for UniversalSuggestionCorrectionDiscovered(0);
  sub_100010250(v16, a4 + *(v24 + 20), &qword_100034EB8, &qword_1000295F8);
  return sub_10000E558(a1, a4 + *(v24 + 24), type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
}

uint64_t sub_1000086D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000287CC();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_10000AFD0(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_100027DAC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1000087C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_1000102B8(v4, &v7);
      sub_1000102B8(&v7, v9);
      sub_100001DBC(&qword_100035D50, &qword_100029618);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_100001EB8(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_10000EB50(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_10000ED84(v9, &v7, &qword_100034EF0, &qword_100029620);
  if (v8)
  {
    sub_100001DBC(&qword_100035D50, &qword_100029618);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_1000280DC();

      sub_10000EDEC(v9, &qword_100034EF0, &qword_100029620);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_10000EDEC(v9, &qword_100034EF0, &qword_100029620);
    v6 = &v7;
  }

  sub_10000EDEC(v6, &qword_100034EF0, &qword_100029620);
  return 0;
}

uint64_t sub_1000089D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_1000102B8(v2, &v5);
      sub_1000102B8(&v5, v7);
      sub_100001DBC(&qword_100035D50, &qword_100029618);
      sub_100027F8C();
      if (swift_dynamicCast())
      {
        break;
      }

      sub_100001EB8(&v5);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_10000EB50(&v5, v7);
  }

  else
  {
LABEL_5:
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  sub_10000ED84(v7, &v5, &qword_100034EF0, &qword_100029620);
  if (v6)
  {
    sub_100001DBC(&qword_100035D50, &qword_100029618);
    sub_100027F8C();
    if (swift_dynamicCast())
    {

      sub_1000280DC();

      sub_10000EDEC(v7, &qword_100034EF0, &qword_100029620);
      return v5;
    }

    v4 = v7;
  }

  else
  {
    sub_10000EDEC(v7, &qword_100034EF0, &qword_100029620);
    v4 = &v5;
  }

  sub_10000EDEC(v4, &qword_100034EF0, &qword_100029620);
  return 2;
}

unint64_t sub_100008B98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_1000102B8(v2, &v7);
      sub_1000102B8(&v7, v9);
      sub_100001DBC(&qword_100035D50, &qword_100029618);
      sub_10002816C();
      if (swift_dynamicCast())
      {
        break;
      }

      sub_100001EB8(&v7);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_10000EB50(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_10000ED84(v9, &v7, &qword_100034EF0, &qword_100029620);
  if (!v8)
  {
    sub_10000EDEC(v9, &qword_100034EF0, &qword_100029620);
    v5 = &v7;
LABEL_12:
    sub_10000EDEC(v5, &qword_100034EF0, &qword_100029620);
    v4 = 0;
    v3 = 1;
    return v4 | (v3 << 32);
  }

  sub_100001DBC(&qword_100035D50, &qword_100029618);
  sub_10002816C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5 = v9;
    goto LABEL_12;
  }

  sub_1000280DC();

  sub_10000EDEC(v9, &qword_100034EF0, &qword_100029620);
  v3 = 0;
  v4 = v7;
  return v4 | (v3 << 32);
}

uint64_t sub_100008D6C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + 32;
    while (1)
    {
      sub_1000102B8(v8, &v13);
      sub_1000102B8(&v13, v15);
      sub_100001DBC(&qword_100035D50, &qword_100029618);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_100001EB8(&v13);
      v8 += 40;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    sub_10000EB50(&v13, v15);
  }

  else
  {
LABEL_5:
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  sub_10000ED84(v15, &v13, &qword_100034EF0, &qword_100029620);
  if (!v14)
  {
    sub_10000EDEC(v15, &qword_100034EF0, &qword_100029620);
    v10 = &v13;
LABEL_12:
    sub_10000EDEC(v10, &qword_100034EF0, &qword_100029620);
    v9 = 1;
    goto LABEL_13;
  }

  sub_100001DBC(&qword_100035D50, &qword_100029618);
  a2(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = v15;
    goto LABEL_12;
  }

  sub_1000280DC();

  sub_10000EDEC(v15, &qword_100034EF0, &qword_100029620);
  v9 = 0;
LABEL_13:
  v11 = a3(0);
  return (*(*(v11 - 8) + 56))(a4, v9, 1, v11);
}

uint64_t sub_100008F8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_1000102B8(v4, &v7);
      sub_1000102B8(&v7, v9);
      sub_100001DBC(&qword_100035D50, &qword_100029618);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_100001EB8(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_10000EB50(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_10000ED84(v9, &v7, &qword_100034EF0, &qword_100029620);
  if (v8)
  {
    sub_100001DBC(&qword_100035D50, &qword_100029618);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_1000280DC();

      sub_10000EDEC(v9, &qword_100034EF0, &qword_100029620);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_10000EDEC(v9, &qword_100034EF0, &qword_100029620);
    v6 = &v7;
  }

  sub_10000EDEC(v6, &qword_100034EF0, &qword_100029620);
  return 0;
}

uint64_t sub_100009158(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a1;
  v7[4] = a3;
  v8 = a2[1];
  v7[9] = *a2;
  v7[10] = v8;
  return _swift_task_switch(sub_100009188, 0, 0);
}

uint64_t sub_100009188()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = objc_autoreleasePoolPush();
  sub_100009268(v2, v1, v4, v3, (v0 + 16), v5);
  objc_autoreleasePoolPop(v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100009268@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, NSObject *a3@<X4>, uint64_t a4@<X5>, char **a5@<X7>, uint64_t a6@<X8>)
{
  v176 = a5;
  v173 = a4;
  v188 = a3;
  v189 = a2;
  v183 = a6;
  v170 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  __chkstk_darwin(v170);
  v169 = &v162 - v7;
  v8 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
  __chkstk_darwin(v8 - 8);
  v172 = &v162 - v9;
  v10 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v11 = __chkstk_darwin(v10 - 8);
  v171 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  *&v190 = &v162 - v14;
  __chkstk_darwin(v13);
  v16 = (&v162 - v15);
  v17 = sub_100027DAC();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v168 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v174 = &v162 - v22;
  v23 = __chkstk_darwin(v21);
  v184 = &v162 - v24;
  v25 = __chkstk_darwin(v23);
  v179 = &v162 - v26;
  v27 = __chkstk_darwin(v25);
  v175 = &v162 - v28;
  __chkstk_darwin(v27);
  v30 = &v162 - v29;
  sub_1000281FC();
  swift_allocObject();
  sub_1000281EC();
  sub_10002848C();
  v31 = sub_1000281DC();

  sub_100008D6C(v31, &type metadata accessor for SELFRequestID, &type metadata accessor for UUID, v16);

  v185 = *(v18 + 48);
  v186 = v18 + 48;
  if (v185(v16, 1, v17) == 1)
  {
    v32 = v18;
    v33 = v17;
    sub_10000EDEC(v16, &qword_100034EB8, &qword_1000295F8);
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v34 = sub_10002858C();
    sub_10000AEF4(v34, qword_100034C78);

    v35 = sub_10002856C();
    v36 = sub_10002876C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v193 = v38;
      *v37 = 136315138;
      v39 = v179;
      sub_10002849C();
      sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = sub_1000288EC();
      v42 = v41;
      (*(v32 + 8))(v39, v33);
      v43 = sub_100027364(v40, v42, &v193);

      *(v37 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Skipping pair having turn with id %s, cannot extract request id", v37, 0xCu);
      sub_100001EB8(v38);
    }

    v44 = v183;
LABEL_35:
    v88 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
    return (*(*(v88 - 8) + 56))(v44, 1, 1, v88);
  }

  v180 = v18;
  v45 = *(v18 + 32);
  v177 = v30;
  v191 = v17;
  v182 = v18 + 32;
  v181 = v45;
  v45(v30, v16, v17);
  sub_100027FDC();
  sub_10002848C();
  v46 = sub_100027FCC();

  v178 = a1;
  sub_10002848C();
  v47 = sub_100027EDC();

  v195 = _swiftEmptyArrayStorage;
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = v47 + 32;
    v50 = _swiftEmptyArrayStorage;
    do
    {
      sub_1000102B8(v49, &v193);
      sub_10000EB50(&v193, v192);
      sub_100001DBC(&qword_100035D50, &qword_100029618);
      sub_100027ECC();
      if ((swift_dynamicCast() & 1) != 0 && v192[5])
      {
        sub_10002865C();
        if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10002867C();
        }

        sub_10002868C();
        v50 = v195;
      }

      v49 += 40;
      --v48;
    }

    while (v48);
  }

  else
  {

    v50 = _swiftEmptyArrayStorage;
  }

  v51 = v187;
  v52 = v178;
  v53 = sub_10000F0E0(v178);
  v54 = v53;
  v55 = v191;
  v56 = v189;
  if (!(v53 >> 62))
  {
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_29:

    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v67 = sub_10002858C();
    sub_10000AEF4(v67, qword_100034C78);
    v68 = v180;
    v69 = v175;
    v70 = v177;
    (*(v180 + 16))(v175, v177, v55);

    v71 = sub_10002856C();
    v72 = sub_10002875C();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      LODWORD(v189) = v72;
      v74 = v55;
      v75 = v73;
      *&v190 = swift_slowAlloc();
      *&v193 = v190;
      *v75 = 136315394;
      v76 = v179;
      sub_10002849C();
      sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v77 = sub_1000288EC();
      v188 = v71;
      v79 = v78;
      v80 = *(v68 + 8);
      v80(v76, v74);
      v81 = sub_100027364(v77, v79, &v193);

      *(v75 + 4) = v81;
      *(v75 + 12) = 2080;
      v82 = sub_1000288EC();
      v84 = v83;
      v80(v69, v74);
      v85 = sub_100027364(v82, v84, &v193);

      *(v75 + 14) = v85;
      v86 = v188;
      _os_log_impl(&_mh_execute_header, v188, v189, "The turn/request didn't make it to execution - skipping: %s/%s", v75, 0x16u);
      swift_arrayDestroy();

      v80(v177, v74);
    }

    else
    {

      v87 = *(v68 + 8);
      v87(v69, v55);
      v87(v70, v55);
    }

    v44 = v183;
    goto LABEL_35;
  }

  if (!sub_1000288CC())
  {
    goto LABEL_29;
  }

LABEL_19:
  v175 = v46;
  v57 = sub_10000F874(v52, v56, v188);
  v59 = v51;
  if (v51)
  {
    (*(v180 + 8))(v177, v55);

    *v176 = v51;
    return result;
  }

  v165 = v58;
  v166 = v57;
  v167 = v54;
  v176 = v50;
  sub_1000281CC();
  swift_allocObject();
  sub_1000281BC();
  sub_10002848C();
  v61 = sub_1000281AC();

  v62 = sub_100008B98(v61);

  if ((v62 & 0x100000000) != 0)
  {
    v63 = v190;
    if (!v56)
    {
LABEL_27:
      v62 = 0;
      v163 = 1;
      goto LABEL_38;
    }

    v65 = sub_10000F0E0(v64);
    if (v65 >> 62)
    {
      v89 = sub_1000288CC();

      if (v89)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v66)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    swift_allocObject();
    sub_1000281BC();
    sub_10002848C();
    v90 = sub_1000281AC();

    v63 = v190;

    v91 = sub_100008B98(v90);

    v163 = HIDWORD(v91) & 1;
    v62 = v91;
    goto LABEL_38;
  }

  v163 = 0;
  v63 = v190;
LABEL_38:
  v92 = sub_10000EE4C(v52);
  v93 = v92;
  if (v92 >> 62)
  {
    goto LABEL_81;
  }

  v94 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:
  v164 = v62;
  v187 = v59;
  if (v94)
  {
    v95 = 0;
    v188 = (v93 & 0xFFFFFFFFFFFFFF8);
    v189 = v93 & 0xC000000000000001;
    v96 = (v180 + 56);
    v97 = _swiftEmptyArrayStorage;
    v62 = v94;
    while (1)
    {
      if (v189)
      {
        v98 = sub_10002883C();
      }

      else
      {
        if (v95 >= v188[2].isa)
        {
          goto LABEL_80;
        }

        v98 = *(v93 + 8 * v95 + 32);
      }

      v99 = v98;
      v59 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        v94 = sub_1000288CC();
        goto LABEL_40;
      }

      v100 = [v98 eventMetadata];
      if (v100 && (v101 = v100, v102 = [v100 taskId], v101, v63 = v190, v102))
      {
        sub_10002874C();

        if (v185(v63, 1, v191) != 1)
        {
          v181(v184, v63, v191);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_10002703C(0, v97[2] + 1, 1, v97);
          }

          v104 = v97[2];
          v103 = v97[3];
          if (v104 >= v103 >> 1)
          {
            v97 = sub_10002703C((v103 > 1), v104 + 1, 1, v97);
          }

          v97[2] = (v104 + 1);
          v181(v97 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v104, v184, v191);
          v63 = v190;
          goto LABEL_44;
        }
      }

      else
      {

        (*v96)(v63, 1, 1, v191);
      }

      sub_10000EDEC(v63, &qword_100034EB8, &qword_1000295F8);
LABEL_44:
      v95 = (v95 + 1);
      if (v59 == v62)
      {
        goto LABEL_59;
      }
    }
  }

  v97 = _swiftEmptyArrayStorage;
LABEL_59:

  v105 = sub_100020220(v97);

  sub_10002835C();
  swift_allocObject();
  sub_10002834C();
  sub_10002848C();
  v189 = sub_10002833C();

  if (qword_100034AA0 != -1)
  {
    swift_once();
  }

  v188 = v105;
  v106 = sub_10002858C();
  sub_10000AEF4(v106, qword_100034C78);
  v107 = v180;
  v108 = v174;
  v109 = v191;
  (*(v180 + 16))(v174, v177, v191);

  v110 = sub_10002856C();
  v111 = sub_10002875C();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    LODWORD(v184) = v111;
    v113 = v112;
    *&v190 = swift_slowAlloc();
    *&v193 = v190;
    *v113 = 136315650;
    v114 = v179;
    v162 = v110;
    sub_10002849C();
    sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v115 = sub_1000288EC();
    v117 = v116;
    v118 = *(v107 + 8);
    v118(v114, v109);
    v119 = sub_100027364(v115, v117, &v193);

    *(v113 + 4) = v119;
    *(v113 + 12) = 2080;
    v120 = v174;
    v121 = sub_1000288EC();
    v123 = v122;
    v118(v120, v109);
    v124 = sub_100027364(v121, v123, &v193);

    *(v113 + 14) = v124;
    *(v113 + 22) = 2080;
    sub_10002847C();
    v125 = sub_10002861C();
    v127 = sub_100027364(v125, v126, &v193);

    *(v113 + 24) = v127;
    v128 = v162;
    _os_log_impl(&_mh_execute_header, v162, v184, "Turn %s, requestId=%s, date=%s. Features:", v113, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v107 + 8))(v108, v109);
  }

  v130 = *(v189 + 16);
  if (v130)
  {
    v131 = v189 + 32;
    *&v129 = 136315138;
    v190 = v129;
    do
    {
      sub_1000102B8(v131, &v193);
      v132 = sub_10002856C();
      v133 = sub_10002875C();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v192[0] = v135;
        *v134 = v190;
        sub_100001E74(&v193, v194);
        v136 = sub_1000288EC();
        v138 = v137;
        sub_100001EB8(&v193);
        v139 = sub_100027364(v136, v138, v192);

        *(v134 + 4) = v139;
        _os_log_impl(&_mh_execute_header, v132, v133, "    %s", v134, 0xCu);
        sub_100001EB8(v135);
      }

      else
      {

        sub_100001EB8(&v193);
      }

      v131 += 40;
      --v130;
    }

    while (v130);
  }

  v140 = v188;
  if (v188[2].isa != 1)
  {

    v144 = v172;
LABEL_74:
    v145 = type metadata accessor for UniversalSuggestionsPromptState(0);
    (*(*(v145 - 8) + 56))(v144, 1, 1, v145);

    v146 = sub_10002856C();
    v147 = sub_10002876C();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 134217984;
      isa = v140[2].isa;

      *(v148 + 4) = isa;

      _os_log_impl(&_mh_execute_header, v146, v147, "The flow prompt state extraction is performed only for single-task turns, found %ld tasks", v148, 0xCu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_78;
  }

  v141 = v171;
  sub_1000086D4(v188, v171);
  v142 = v191;
  v143 = v185(v141, 1, v191);
  v144 = v172;
  if (v143 == 1)
  {

    sub_10000EDEC(v141, &qword_100034EB8, &qword_1000295F8);
    goto LABEL_74;
  }

  v150 = v168;
  v151 = v181;
  v181(v168, v141, v142);
  v151(v144, v150, v142);
  v152 = type metadata accessor for UniversalSuggestionsPromptState(0);
  *(v144 + *(v152 + 20)) = v189;
  (*(*(v152 - 8) + 56))(v144, 0, 1, v152);
LABEL_78:
  v153 = v177;
  v154 = v175;
  sub_10002848C();
  v155 = sub_1000283BC();

  v156 = sub_100008F8C(v155, &type metadata accessor for UniversalSuggestionSummaries);

  v157 = v183;
  sub_10002847C();
  v158 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v181((v157 + v158[5]), v153, v191);
  *(v157 + v158[6]) = v154;
  *(v157 + v158[7]) = v176;
  v159 = (v157 + v158[8]);
  v160 = v165;
  *v159 = v166;
  v159[1] = v160;
  *(v157 + v158[9]) = v167;
  sub_100010250(v144, v157 + v158[10], &qword_100034EC8, &unk_100029AC0);
  v161 = v157 + v158[11];
  *v161 = v164;
  *(v161 + 4) = v163;
  *(v157 + v158[12]) = v156;
  return (*(*(v158 - 1) + 56))(v157, 0, 1, v158);
}

uint64_t sub_10000A8EC()
{
  sub_100001EB8(v0 + 2);
  sub_100001EB8(v0 + 7);
  sub_100001EB8(v0 + 13);
  sub_100001EB8(v0 + 18);

  return _swift_deallocClassInstance(v0, 192, 7);
}

uint64_t sub_10000A968()
{
  v1 = sub_1000282EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000280AC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  updated = type metadata accessor for ModelUpdateStep(0);
  __chkstk_darwin(updated);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E558(v0, v14, type metadata accessor for ModelUpdateStep);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v16 = *(sub_100001DBC(&qword_100034E08, &unk_100029550) + 48);
      v17 = *(v6 + 32);
      v17(v11, v14, v5);
      v17(v9, &v14[v16], v5);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_10002882C(45);

      v27 = 0xD00000000000001ELL;
      v28 = 0x800000010002A530;
      v18._countAndFlagsBits = sub_10002809C();
      if (v18._object)
      {
        object = v18._object;
      }

      else
      {
        v18._countAndFlagsBits = 7104878;
        object = 0xE300000000000000;
      }

      v18._object = object;
      sub_10002863C(v18);

      v30._countAndFlagsBits = 0x746567726174202CLL;
      v30._object = 0xEA0000000000203ALL;
      sub_10002863C(v30);
      v20._countAndFlagsBits = sub_10002809C();
      if (v20._object)
      {
        v21 = v20._object;
      }

      else
      {
        v20._countAndFlagsBits = 7104878;
        v21 = 0xE300000000000000;
      }

      v20._object = v21;
      sub_10002863C(v20);

      v31._countAndFlagsBits = 41;
      v31._object = 0xE100000000000000;
      sub_10002863C(v31);
      v22 = v27;
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v11, v5);
      return v22;
    }

    (*(v2 + 32))(v4, v14, v1);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_10002882C(41);
    v24 = "mbiguation(suggestion: ";
    v25._countAndFlagsBits = 0xD000000000000026;
LABEL_16:
    v25._object = (v24 | 0x8000000000000000);
    sub_10002863C(v25);
    sub_1000288AC();
    v32._countAndFlagsBits = 41;
    v32._object = 0xE100000000000000;
    sub_10002863C(v32);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v2 + 32))(v4, v14, v1);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_10002882C(42);
    v24 = "markAsSurfaced(suggestion: ";
    v25._countAndFlagsBits = 0xD000000000000027;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 3)
  {
    (*(v2 + 32))(v4, v14, v1);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_10002882C(29);
    v29._object = 0x800000010002A4B0;
    v29._countAndFlagsBits = 0xD00000000000001BLL;
    sub_10002863C(v29);
    sub_1000288AC();
LABEL_17:
    v22 = v27;
    (*(v2 + 8))(v4, v1);
    return v22;
  }

  return 1701736302;
}

uint64_t sub_10000AE2C()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100034C78);
  v1 = sub_10000AEF4(v0, qword_100034C78);
  if (qword_100034AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEF4(v0, qword_100036760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000AEF4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000AF2C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000AFD0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_100027DAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_10000B090(char *a1, char *a2)
{
  v67 = a1;
  v68 = a2;
  v2 = sub_1000282EC();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = __chkstk_darwin(v2);
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v59 = &v59 - v6;
  __chkstk_darwin(v5);
  v64 = &v59 - v7;
  v8 = sub_1000280AC();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v59 - v13;
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  updated = type metadata accessor for ModelUpdateStep(0);
  v18 = __chkstk_darwin(updated);
  v61 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v59 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v59 - v24;
  __chkstk_darwin(v23);
  v27 = &v59 - v26;
  v28 = sub_100001DBC(&qword_100034EC0, &unk_100029600);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v59 - v30;
  v32 = &v59 + *(v29 + 56) - v30;
  sub_10000E558(v67, &v59 - v30, type metadata accessor for ModelUpdateStep);
  sub_10000E558(v68, v32, type metadata accessor for ModelUpdateStep);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v67 = v11;
    v68 = v14;
    v39 = v62;
    v41 = v63;
    v40 = v64;
    if (EnumCaseMultiPayload)
    {
      sub_10000E558(v31, v25, type metadata accessor for ModelUpdateStep);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v49 = v65;
        v48 = v66;
        (*(v65 + 32))(v40, v32, v66);
        v37 = sub_1000282DC();
        v50 = *(v49 + 8);
        v50(v40, v48);
        v50(v25, v48);
        goto LABEL_21;
      }

      (*(v65 + 8))(v25, v66);
    }

    else
    {
      sub_10000E558(v31, v27, type metadata accessor for ModelUpdateStep);
      v42 = *(sub_100001DBC(&qword_100034E08, &unk_100029550) + 48);
      if (!swift_getEnumCaseMultiPayload())
      {
        v51 = *(v39 + 32);
        v52 = v41;
        v51(v16, v32, v41);
        v53 = v68;
        v51(v68, &v27[v42], v52);
        v54 = &v32[v42];
        v55 = v67;
        v51(v67, v54, v52);
        v56 = sub_10002808C();
        v57 = *(v39 + 8);
        v57(v27, v52);
        if (v56)
        {
          v37 = sub_10002808C();
          v57(v55, v52);
          v57(v53, v52);
          v57(v16, v52);
          goto LABEL_21;
        }

        v57(v55, v52);
        v57(v53, v52);
        v57(v16, v52);
        sub_10000E5C0(v31, type metadata accessor for ModelUpdateStep);
        goto LABEL_18;
      }

      v43 = *(v39 + 8);
      v43(&v27[v42], v41);
      v43(v27, v41);
    }

LABEL_17:
    sub_10000EDEC(v31, &qword_100034EC0, &unk_100029600);
LABEL_18:
    v37 = 0;
    return v37 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10000E558(v31, v22, type metadata accessor for ModelUpdateStep);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v45 = v65;
      v44 = v66;
      v46 = v59;
      (*(v65 + 32))(v59, v32, v66);
      v37 = sub_1000282DC();
      v47 = *(v45 + 8);
      v47(v46, v44);
      v47(v22, v44);
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v22 = v61;
    sub_10000E558(v31, v61, type metadata accessor for ModelUpdateStep);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v35 = v65;
      v34 = v66;
      v36 = v60;
      (*(v65 + 32))(v60, v32, v66);
      v37 = sub_1000282DC();
      v38 = *(v35 + 8);
      v38(v36, v34);
      v38(v22, v34);
LABEL_21:
      sub_10000E5C0(v31, type metadata accessor for ModelUpdateStep);
      return v37 & 1;
    }

LABEL_11:
    (*(v65 + 8))(v22, v66);
    goto LABEL_17;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_17;
  }

  sub_10000E5C0(v31, type metadata accessor for ModelUpdateStep);
  v37 = 1;
  return v37 & 1;
}

uint64_t sub_10000B7D8(uint64_t a1)
{
  if (qword_100034AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_10002858C();
  sub_10000AEF4(v1, qword_100034C78);

  v2 = sub_10002856C();
  v3 = sub_10002875C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315138;
    sub_1000280DC();
    v6 = [v20 dictionaryRepresentation];

    if (!v6)
    {
      __break(1u);
      return result;
    }

    sub_1000285AC();

    v8 = sub_1000285BC();
    v10 = v9;

    v11 = sub_100027364(v8, v10, &v21);

    *(v4 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "correctionUndoResponse: %s", v4, 0xCu);
    sub_100001EB8(v5);
  }

  else
  {
  }

  sub_1000280DC();
  v12 = v21;
  v13 = [v21 undoType];

  if (v13 == 1)
  {
    sub_1000280DC();
    v14 = v21;
    v15 = [v21 reason];

    if (v15 == 3)
    {
      return 1;
    }
  }

  sub_1000280DC();
  v16 = v21;
  v17 = [v21 undoType];

  if (v17 == 1)
  {
    return 0;
  }

  sub_1000280DC();
  v18 = v21;
  v19 = [v21 undoType];

  return v19 != 0;
}

uint64_t sub_10000BA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v131 = a3;
  v4 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  __chkstk_darwin(v4);
  v124 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002805C();
  v126 = *(v6 - 8);
  v127 = v6;
  __chkstk_darwin(v6);
  v125 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002807C();
  v128 = *(v8 - 8);
  v129 = v8;
  __chkstk_darwin(v8);
  v10 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v122 - v15;
  v17 = type metadata accessor for UniversalSuggestionsPromptState(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v130 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v122 - v21;
  sub_10000ED84(a2 + *(v4 + 40), v16, &qword_100034EC8, &unk_100029AC0);
  v23 = *(v18 + 48);
  if (v23(v16, 1, v17) == 1)
  {
    v14 = v16;
LABEL_5:
    sub_10000EDEC(v14, &qword_100034EC8, &unk_100029AC0);
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v24 = sub_10002858C();
    sub_10000AEF4(v24, qword_100034C78);
    v25 = sub_10002856C();
    v26 = sub_10002875C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Could not find prompt states for a correction, skipping evaluation", v27, 2u);
    }

    return 0;
  }

  sub_10000E620(v16, v22, type metadata accessor for UniversalSuggestionsPromptState);
  sub_10000ED84(v131 + *(v4 + 40), v14, &qword_100034EC8, &unk_100029AC0);
  if (v23(v14, 1, v17) == 1)
  {
    sub_10000E5C0(v22, type metadata accessor for UniversalSuggestionsPromptState);
    goto LABEL_5;
  }

  v122 = v4;
  v28 = v130;
  sub_10000E620(v14, v130, type metadata accessor for UniversalSuggestionsPromptState);
  v29 = *&v22[*(v17 + 20)];
  v30 = sub_1000087C0(v29, &type metadata accessor for PromptBeginEventType);
  if (!v31)
  {
    goto LABEL_19;
  }

  v32 = v30;
  v33 = v31;
  v123 = v22;
  v35 = v128;
  v34 = v129;
  (*(v128 + 104))(v10, enum case for PromptEventType.Beginning.disambiguation(_:), v129);
  v36 = sub_10002806C();
  v38 = v37;
  (*(v35 + 8))(v10, v34);
  if (v32 != v36 || v33 != v38)
  {
    v39 = sub_10002890C();

    v22 = v123;
    if (v39)
    {
      goto LABEL_15;
    }

LABEL_19:
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v51 = sub_10002858C();
    sub_10000AEF4(v51, qword_100034C78);
    v52 = sub_10002856C();
    v53 = sub_10002875C();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_49;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "Disambiguation did not occur after a correction, skipping evaluation";
    goto LABEL_48;
  }

  v22 = v123;
LABEL_15:
  v40 = *(v28 + *(v17 + 20));
  v41 = sub_1000087C0(v40, &type metadata accessor for PromptEndEventType);
  if (!v42)
  {
    goto LABEL_30;
  }

  v43 = v41;
  v44 = v42;
  v45 = v125;
  v46 = v126;
  v47 = v127;
  (*(v126 + 104))(v125, enum case for PromptEventType.Ending.disambiguation(_:), v127);
  v48 = sub_10002804C();
  v50 = v49;
  (*(v46 + 8))(v45, v47);
  if (v43 == v48 && v44 == v50)
  {

    v22 = v123;
    goto LABEL_24;
  }

  v56 = sub_10002890C();

  v22 = v123;
  if ((v56 & 1) == 0)
  {
LABEL_30:
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v63 = sub_10002858C();
    sub_10000AEF4(v63, qword_100034C78);
    v52 = sub_10002856C();
    v53 = sub_10002875C();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_49;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "Disambiguation response could not be found, skipping evaluation";
    goto LABEL_48;
  }

LABEL_24:
  if ((sub_100027D9C() & 1) == 0)
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v64 = sub_10002858C();
    sub_10000AEF4(v64, qword_100034C78);
    v52 = sub_10002856C();
    v53 = sub_10002875C();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_49;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "Could not match prompt response based on flow task id, skipping evaluation";
    goto LABEL_48;
  }

  v57 = sub_1000087C0(v29, &type metadata accessor for PromptBeginTaskName);
  if (!v58)
  {
    goto LABEL_44;
  }

  v59 = v57;
  v60 = v58;
  v61 = sub_1000087C0(v40, &type metadata accessor for PromptEndTaskName);
  if (!v62)
  {
    goto LABEL_43;
  }

  if (v59 == v61 && v60 == v62)
  {
  }

  else
  {
    v65 = sub_10002890C();

    if ((v65 & 1) == 0)
    {
LABEL_43:

LABEL_44:
      if (qword_100034AA0 != -1)
      {
        swift_once();
      }

      v71 = sub_10002858C();
      sub_10000AEF4(v71, qword_100034C78);
      v52 = sub_10002856C();
      v53 = sub_10002875C();
      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_49;
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "Could not find a control home flow task in the detected prompt, skipping evaluation";
LABEL_48:
      _os_log_impl(&_mh_execute_header, v52, v53, v55, v54, 2u);

LABEL_49:

      v72 = v28;
LABEL_50:
      sub_10000E5C0(v72, type metadata accessor for UniversalSuggestionsPromptState);
      sub_10000E5C0(v22, type metadata accessor for UniversalSuggestionsPromptState);
      return 0;
    }
  }

  sub_10001117C(0, &qword_100034EE8, INControlHomeIntent_ptr);
  v66 = [swift_getObjCClassFromMetadata() typeName];
  if (!v66)
  {
    goto LABEL_43;
  }

  v67 = v66;
  v68 = sub_10002860C();
  v70 = v69;

  if (v59 == v68 && v60 == v70)
  {

    goto LABEL_53;
  }

  v74 = sub_10002890C();

  if ((v74 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_53:
  v75 = *(v131 + *(v122 + 36));
  v76 = v75 >> 62;
  if (v75 >> 62)
  {
LABEL_74:
    v77 = sub_1000288CC();
    if (v77)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v77 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v77)
    {
LABEL_55:
      v78 = 0;
      v79 = v75 & 0xFFFFFFFFFFFFFF8;
      v129 = v75 + 32;
      while (1)
      {
        if ((v75 & 0xC000000000000001) != 0)
        {
          v80 = sub_10002883C();
        }

        else
        {
          if (v78 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v80 = *(v129 + 8 * v78);
        }

        v81 = v80;
        v82 = __OFADD__(v78++, 1);
        if (v82)
        {
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        if (qword_100034AE0 != -1)
        {
          swift_once();
        }

        v83 = qword_1000367C8;
        v84 = [v81 flowStateType];
        if (*(v83 + 16))
        {
          v85 = v84;
          sub_10002894C();
          sub_10002896C(v85);
          v86 = sub_10002897C();
          v87 = -1 << *(v83 + 32);
          v88 = v86 & ~v87;
          if ((*(v83 + 56 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88))
          {
            break;
          }
        }

LABEL_56:

        if (v78 == v77)
        {
          goto LABEL_75;
        }
      }

      v89 = ~v87;
      while (*(*(v83 + 48) + 4 * v88) != v85)
      {
        v88 = (v88 + 1) & v89;
        if (((*(v83 + 56 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      v90 = 1;
      if (!v76)
      {
        goto LABEL_71;
      }

      goto LABEL_76;
    }
  }

LABEL_75:
  v90 = 0;
  v79 = v75 & 0xFFFFFFFFFFFFFF8;
  if (!v76)
  {
LABEL_71:
    v91 = *(v79 + 16);
    goto LABEL_77;
  }

LABEL_76:
  v91 = sub_1000288CC();
LABEL_77:
  v22 = v123;
  if (v91)
  {
    v92 = 0;
    v129 = v75 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v75 & 0xC000000000000001) != 0)
      {
        v93 = sub_10002883C();
      }

      else
      {
        if (v92 >= *(v129 + 16))
        {
          goto LABEL_113;
        }

        v93 = *(v75 + 32 + 8 * v92);
      }

      v94 = v93;
      v82 = __OFADD__(v92++, 1);
      if (v82)
      {
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      if (qword_100034AD0 != -1)
      {
        swift_once();
      }

      v95 = qword_1000367B8;
      v96 = [v94 flowStateType];
      if (*(v95 + 16))
      {
        v97 = v96;
        sub_10002894C();
        sub_10002896C(v97);
        v98 = sub_10002897C();
        v99 = -1 << *(v95 + 32);
        v100 = v98 & ~v99;
        if ((*(v95 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100))
        {
          break;
        }
      }

LABEL_79:

      v22 = v123;
      if (v92 == v91)
      {
        goto LABEL_94;
      }
    }

    v101 = ~v99;
    while (*(*(v95 + 48) + 4 * v100) != v97)
    {
      v100 = (v100 + 1) & v101;
      if (((*(v95 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    LODWORD(v75) = 1;
    v22 = v123;
    goto LABEL_101;
  }

LABEL_94:
  if (!v90)
  {
    LODWORD(v75) = 0;
LABEL_101:
    v91 = v130;
    if (qword_100034AA0 != -1)
    {
LABEL_114:
      swift_once();
    }

    v114 = sub_10002858C();
    sub_10000AEF4(v114, qword_100034C78);
    v115 = sub_10002856C();
    v116 = sub_10002875C();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 67109376;
      *(v117 + 4) = v90;
      *(v117 + 8) = 1024;
      *(v117 + 10) = v75;
      _os_log_impl(&_mh_execute_header, v115, v116, "Could not find a selection in the follow-up turn: didSelect=%{BOOL}d, didCancel=%{BOOL}d, skipping evaluation", v117, 0xEu);
    }

    v72 = v91;
    goto LABEL_50;
  }

  v103 = v130;
  v102 = v131;
  if (!*(v131 + *(v122 + 32)))
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v118 = sub_10002858C();
    sub_10000AEF4(v118, qword_100034C78);
    v119 = sub_10002856C();
    v120 = sub_10002875C();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v119, v120, "Could not find a control home intent in the follow-up turn, skipping evaluation", v121, 2u);
    }

    v72 = v103;
    goto LABEL_50;
  }

  if (qword_100034AA0 != -1)
  {
    swift_once();
  }

  v104 = sub_10002858C();
  sub_10000AEF4(v104, qword_100034C78);
  v105 = v124;
  sub_10000E558(v102, v124, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v106 = sub_10002856C();
  v107 = sub_10002875C();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v132[0] = v109;
    *v108 = 136315138;
    sub_100027DAC();
    sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v110 = sub_1000288EC();
    v112 = v111;
    sub_10000E5C0(v105, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v113 = sub_100027364(v110, v112, v132);

    *(v108 + 4) = v113;
    _os_log_impl(&_mh_execute_header, v106, v107, "Detected a disambiguation selection after a correction, using the intent from turn with requestId=%s", v108, 0xCu);
    sub_100001EB8(v109);
  }

  else
  {

    sub_10000E5C0(v105, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  sub_10000E5C0(v103, type metadata accessor for UniversalSuggestionsPromptState);
  sub_10000E5C0(v22, type metadata accessor for UniversalSuggestionsPromptState);
  return 1;
}

uint64_t sub_10000CB3C(uint64_t a1, unint64_t a2)
{
  sub_1000087C0(a1, &type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentGroupName);
  if (v4)
  {

    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v5 = sub_10002858C();
    sub_10000AEF4(v5, qword_100034C78);
    v6 = sub_10002856C();
    v7 = sub_10002875C();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "A group is mentioned in the turn.";
    goto LABEL_11;
  }

  sub_1000087C0(a1, &type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentZoneName);
  if (v10)
  {

    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v11 = sub_10002858C();
    sub_10000AEF4(v11, qword_100034C78);
    v6 = sub_10002856C();
    v7 = sub_10002875C();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "A zone is mentioned in the turn.";
    goto LABEL_11;
  }

  if (a2 >> 62)
  {
    result = sub_1000288CC();
    if (result)
    {
LABEL_16:
      if ((a2 & 0xC000000000000001) != 0)
      {
        v13 = sub_10002883C();
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_28:
          swift_once();
LABEL_22:
          v16 = sub_10002858C();
          sub_10000AEF4(v16, qword_100034C78);
          v6 = sub_10002856C();
          v7 = sub_10002875C();
          if (!os_log_type_enabled(v6, v7))
          {
            goto LABEL_12;
          }

          v8 = swift_slowAlloc();
          *v8 = 0;
          v9 = "Entity is not of device type.";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);

LABEL_12:

          return 1;
        }

        v13 = *(a2 + 32);
      }

      v14 = v13;
      v15 = [v13 type];

      if (v15 == 7)
      {
        return 0;
      }

      if (qword_100034AA0 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_16;
    }
  }

  return result;
}

id sub_10000CE10(unint64_t a1)
{
  v3 = sub_100027E4C();
  v4 = *(v3 - 1);
  v5 = __chkstk_darwin(v3);
  v53 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  if (a1 >> 62)
  {
LABEL_25:
    result = sub_1000288CC();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = sub_10002883C();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v10 = *(a1 + 32);
  }

  v11 = v10;
  v12 = [v10 entityName];
  if (!v12)
  {

    return 0;
  }

  v13 = v12;
  v14 = [v12 spokenPhrase];

  sub_10002860C();
  v16 = v15;

  v45 = sub_100027DEC();
  swift_allocObject();
  v17 = sub_100027DDC();
  v46 = sub_100027E8C();
  swift_allocObject();

  v18 = sub_100027E7C();

  v43 = v16;
  v19 = v18;
  sub_100027E1C();
  sub_100027DFC();
  v21 = *(v4 + 1);
  v4 += 8;
  v20 = v21;
  v21(v8, v3);
  v44 = "homeAutomationAccessoryName";
  sub_100027E1C();
  sub_100027DFC();
  v21(v8, v3);
  v22 = [v11 entityIdentifier];
  v47 = v17;
  if (v22)
  {
    v23 = v22;
    sub_10002860C();

    sub_100027E1C();
    sub_100027DFC();
    v20(v8, v3);
  }

  v24 = [v11 deviceTypes];
  v54 = v19;
  if (!v24)
  {
    goto LABEL_31;
  }

  v25 = v24;
  sub_10001117C(0, &qword_100034EF8, NSNumber_ptr);
  a1 = sub_10002866C();

  v1 = a1;
  v41 = v8;
  v42 = v11;
  v51 = v20;
  v52 = v4;
  if (!(a1 >> 62))
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v26 = sub_1000288CC();
  if (!v26)
  {
LABEL_30:

    v8 = v41;
    v11 = v42;
    v20 = v51;
    v19 = v54;
LABEL_31:

    v55 = v19;
    sub_100027E5C();
    v32 = [v11 room];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 spokenPhrase];

      sub_10002860C();
      swift_allocObject();

      v35 = sub_100027E7C();
      sub_100027E1C();
      sub_100027DFC();
      v20(v8, v3);
      sub_100027E1C();
      sub_100027DFC();
      v20(v8, v3);
      swift_allocObject();
      sub_100027DDC();
      v55 = v35;
      sub_100027E5C();

      sub_100027DCC();
    }

    v36 = [v11 home];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 spokenPhrase];

      sub_10002860C();
      swift_allocObject();

      v39 = sub_100027E7C();
      sub_100027E1C();
      sub_100027DFC();
      v20(v8, v3);
      sub_100027E1C();
      sub_100027DFC();
      v20(v8, v3);
      swift_allocObject();
      sub_100027DDC();
      v55 = v39;
      sub_100027E5C();

      sub_100027DCC();
    }

    sub_100027E6C();
    sub_100027DBC();
    sub_100027E9C();

    return v55;
  }

LABEL_12:
  v27 = 0;
  v49 = v1 & 0xFFFFFFFFFFFFFF8;
  v50 = v1 & 0xC000000000000001;
  v48 = "homeAutomationRoom";
  v8 = v3;
  while (1)
  {
    if (v50)
    {
      v28 = sub_10002883C();
    }

    else
    {
      if (v27 >= *(v49 + 16))
      {
        goto LABEL_24;
      }

      v28 = *(v1 + 8 * v27 + 32);
    }

    v3 = v28;
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v30 = v1;
    [v28 integerValue];
    result = INHomeDeviceTypeGetName();
    if (!result)
    {
      break;
    }

    v31 = result;
    a1 = sub_10002860C();

    v4 = v53;
    sub_100027E1C();
    sub_100027DFC();

    v3 = v8;
    v51(v4, v8);
    ++v27;
    v1 = v30;
    if (v29 == v26)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

void sub_10000D724(uint64_t a1)
{
  updated = type metadata accessor for RequestLinkedModelUpdateStep(0);
  v2 = *(updated - 8);
  v3 = __chkstk_darwin(updated);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v9 = sub_10002858C();
    v31 = sub_10000AEF4(v9, qword_100034C78);
    v10 = sub_10002856C();
    v11 = sub_10002875C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Learned updates:", v12, 2u);
    }

    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    *&v15 = 136315394;
    v27 = v15;
    v28 = v14;
    do
    {
      sub_10000E558(v13, v7, type metadata accessor for RequestLinkedModelUpdateStep);
      sub_10000E558(v13, v5, type metadata accessor for RequestLinkedModelUpdateStep);
      v25 = sub_10002856C();
      v26 = sub_10002875C();
      if (os_log_type_enabled(v25, v26))
      {
        v16 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v32 = v30;
        *v16 = v27;
        sub_100027DAC();
        sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v17 = sub_1000288EC();
        v19 = v18;
        sub_10000E5C0(v7, type metadata accessor for RequestLinkedModelUpdateStep);
        v20 = sub_100027364(v17, v19, &v32);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        v21 = sub_10000A968();
        v23 = v22;
        sub_10000E5C0(v5, type metadata accessor for RequestLinkedModelUpdateStep);
        v24 = sub_100027364(v21, v23, &v32);

        *(v16 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v25, v26, "Request %s -> %s", v16, 0x16u);
        swift_arrayDestroy();

        v14 = v28;
      }

      else
      {

        sub_10000E5C0(v5, type metadata accessor for RequestLinkedModelUpdateStep);
        sub_10000E5C0(v7, type metadata accessor for RequestLinkedModelUpdateStep);
      }

      v13 += v14;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_10000DB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v5 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  __chkstk_darwin(v5 - 8);
  v74 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState(0);
  __chkstk_darwin(v7 - 8);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
  __chkstk_darwin(v64);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001DBC(&qword_100034E10, &qword_100029AF0);
  __chkstk_darwin(v10 - 8);
  v70 = &v60 - v11;
  v71 = type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState(0);
  v69 = *(v71 - 8);
  v12 = __chkstk_darwin(v71);
  v67 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v60 - v14;
  v72 = type metadata accessor for UniversalSuggestionRequestState(0);
  v16 = __chkstk_darwin(v72);
  v68 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v60 - v19;
  __chkstk_darwin(v18);
  v22 = &v60 - v21;
  v23 = sub_100027DAC();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100034AA0 != -1)
  {
    swift_once();
  }

  v27 = sub_10002858C();
  sub_10000AEF4(v27, qword_100034C78);
  (*(v24 + 16))(v26, a1, v23);
  v73 = a3;
  sub_10000E558(a3, v22, type metadata accessor for UniversalSuggestionRequestState);
  v28 = sub_10002856C();
  v29 = sub_10002875C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v77 = v61;
    *v30 = 136315394;
    sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = sub_1000288EC();
    v62 = v15;
    v33 = v32;
    (*(v24 + 8))(v26, v23);
    v34 = sub_100027364(v31, v33, &v77);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    sub_10000E558(v22, v20, type metadata accessor for UniversalSuggestionRequestState);
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_10002882C(64);
    v78._object = 0x800000010002A480;
    v78._countAndFlagsBits = 0xD00000000000002CLL;
    sub_10002863C(v78);
    type metadata accessor for UniversalSuggestionCorrectionDiscovered(0);
    sub_1000288AC();
    v79._countAndFlagsBits = 0x736575716572202CLL;
    v79._object = 0xEF203A6B73615474;
    sub_10002863C(v79);
    v35 = v72;
    v80._countAndFlagsBits = sub_100016C54();
    sub_10002863C(v80);

    v81._countAndFlagsBits = 41;
    v81._object = 0xE100000000000000;
    sub_10002863C(v81);
    v36 = v75;
    v37 = v76;
    sub_10000E5C0(v20, type metadata accessor for UniversalSuggestionRequestState);
    v15 = v62;
    sub_10000E5C0(v22, type metadata accessor for UniversalSuggestionRequestState);
    v38 = sub_100027364(v36, v37, &v77);

    *(v30 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v28, v29, "Reviewing request state to emit outcome event for %s, requestState=%s", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000E5C0(v22, type metadata accessor for UniversalSuggestionRequestState);
    (*(v24 + 8))(v26, v23);
    v35 = v72;
  }

  v39 = v73;
  v40 = v73 + *(v35 + 20);
  v41 = type metadata accessor for UniversalSuggestionRequestTaskState(0);
  v42 = v70;
  sub_10000ED84(v40 + *(v41 + 20), v70, &qword_100034E10, &qword_100029AF0);
  v43 = v71;
  v44 = (*(v69 + 48))(v42, 1, v71);
  v45 = v74;
  if (v44 == 1)
  {
    return sub_10000EDEC(v42, &qword_100034E10, &qword_100029AF0);
  }

  sub_10000E620(v42, v15, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
  sub_10000E558(v39, v68, type metadata accessor for UniversalSuggestionRequestState);
  sub_10000E558(v15, v67, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
  v47 = &v15[*(v43 + 20)];
  v48 = v66;
  sub_10000E558(v47, v66, type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState);
  v49 = sub_100001DBC(&qword_100034E18, &qword_100029560);
  v50 = (*(*(v49 - 8) + 48))(v48, 3, v49);
  if (v50 > 1)
  {
    if (v50 != 2)
    {
      v55 = type metadata accessor for UniversalSuggestionCorrectionDiscovered(0);
      sub_10000E558(v39 + *(v55 + 24), v45, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
      v56 = sub_100001DBC(&qword_100034E08, &unk_100029550);
      if (!(*(*(v56 - 8) + 48))(v45, 2, v56))
      {
        v57 = *(v56 + 48);
        v58 = sub_1000280AC();
        v59 = *(*(v58 - 8) + 8);
        v59(v45 + v57, v58);
        v59(v45, v58);
      }
    }

    goto LABEL_16;
  }

  if (v50)
  {
LABEL_16:
    type metadata accessor for UniversalSuggestionItem(0);
    v54 = v67;
    v53 = v68;
    goto LABEL_17;
  }

  v51 = v48;
  v52 = v63;
  sub_10000E620(v51, v63, type metadata accessor for UniversalSuggestionDisambiguationOffered);
  sub_10000E5C0(v52, type metadata accessor for UniversalSuggestionDisambiguationOffered);
  type metadata accessor for UniversalSuggestionItem(0);
  v54 = v67;
  v53 = v68;
LABEL_17:
  sub_1000283EC();
  sub_10000E5C0(v54, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
  sub_10000E5C0(v53, type metadata accessor for UniversalSuggestionRequestState);
  return sub_10000E5C0(v15, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
}

uint64_t sub_10000E558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000E5C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000E620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000E6A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E6E0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000E788;

  return sub_10000492C(a1, a2, v2);
}

uint64_t sub_10000E788(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10000E884()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E8BC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000E984;

  return sub_1000049F8(a1, a2, v6);
}

uint64_t sub_10000E984()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000EA78()
{
  v1 = sub_1000283CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100001EB8((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000EB50(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000EB68(uint64_t a1, void *a2)
{
  v6 = *(sub_1000283CC() - 8);
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000E984;

  return sub_100009158(a1, a2, v8, v9, v2 + 32, v2 + v7, v10);
}

uint64_t sub_10000EC9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001C00(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000ED04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000ED3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000ED84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DBC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000EDEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001DBC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id *sub_10000EE4C(uint64_t a1)
{
  v1 = sub_10002848C();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000288CC())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_10002883C();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 anyEventType] == 13)
      {
        sub_10002885C();
        sub_10002887C();
        sub_10002888C();
        sub_10002886C();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
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
    ;
  }

LABEL_14:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v2 = sub_1000288CC();
    if (v2)
    {
LABEL_17:
      v8 = _swiftEmptyArrayStorage & 0xC000000000000001;
      v9 = 0;
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
LABEL_31:
        v10 = sub_10002883C();
        goto LABEL_24;
      }

      while (1)
      {
        while (1)
        {
          if (v9 >= _swiftEmptyArrayStorage[2])
          {
            goto LABEL_35;
          }

          v10 = _swiftEmptyArrayStorage[v9 + 4];
LABEL_24:
          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_34;
          }

          v13 = [v10 unwrap];

          if (v13)
          {
            break;
          }

LABEL_20:
          ++v9;
          if (v12 == v2)
          {
            goto LABEL_38;
          }

          if (v8)
          {
            goto LABEL_31;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          goto LABEL_20;
        }

        sub_10002865C();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10002867C();
        }

        sub_10002868C();
        if (v12 == v2)
        {
          break;
        }

        ++v9;
        if (v8)
        {
          goto LABEL_31;
        }
      }
    }
  }

  else
  {
    v2 = _swiftEmptyArrayStorage[2];
    if (v2)
    {
      goto LABEL_17;
    }
  }

LABEL_38:

  return _swiftEmptyArrayStorage;
}

id *sub_10000F0E0(uint64_t a1)
{
  v1 = sub_10000EE4C(a1);
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_21:
    v4 = sub_1000288CC();
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = 0;
  do
  {
    v6 = v5;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_10002883C();
      }

      else
      {
        if (v6 >= *(v3 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 flowStep];
      if (v9)
      {
        break;
      }

LABEL_6:
      ++v6;
      if (v5 == v4)
      {
        goto LABEL_22;
      }
    }

    v10 = v9;
    v11 = [v9 flowState];

    if (!v11)
    {
      goto LABEL_6;
    }

    sub_10002865C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10002867C();
    }

    sub_10002868C();
  }

  while (v5 != v4);
LABEL_22:

  return _swiftEmptyArrayStorage;
}

id *sub_10000F284(uint64_t (*a1)(char *, char *, uint64_t), unsigned int (*a2)(char *, uint64_t, uint64_t))
{
  v50 = a2;
  v48 = a1;
  v2 = sub_100027F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v52 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001DBC(&qword_100034F00, &qword_100029628);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_100027D7C();
  v51 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = (&v43 - v11);
  sub_100001DBC(&qword_100034F08, &qword_100029630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100029460;
  v14 = sub_10002839C();
  swift_allocObject();
  *(inited + 32) = sub_10002838C();
  *(inited + 56) = v14;
  *(inited + 64) = &protocol witness table for INControlHomeIntentFeatureExtractor;
  v55 = inited;
  inited += 32;
  sub_1000102B8(inited, v54);
  sub_100001E74(v54, v54[3]);
  v15 = sub_10002831C();
  sub_100001EB8(v54);
  v16 = *(v15 + 16);
  result = sub_100026CC4(0, v16, 1, _swiftEmptyArrayStorage);
  v18 = result;
  v19 = *(v15 + 16);
  v47 = inited;
  if (!v19)
  {

    v21 = v12;
    if (!v16)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_23;
  }

  v20 = result[2];
  if (((result[3] >> 1) - v20) < v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  memcpy(&result[v20 + 4], (v15 + 32), 8 * v16);

  v21 = v12;
  if (v16)
  {
    v22 = *(v18 + 16);
    v23 = __OFADD__(v22, v16);
    v24 = v22 + v16;
    if (!v23)
    {
      *(v18 + 16) = v24;
      goto LABEL_7;
    }

LABEL_24:
    __break(1u);
    return result;
  }

LABEL_7:
  v44 = v8;
  v53 = v3;
  v45 = objc_autoreleasePoolPush();
  sub_100001E74(v48, *(v48 + 3));
  sub_100027D1C();
  v25 = v46;
  sub_100027CFC();
  v26 = v49;
  v27 = sub_1000280CC();
  v28 = v21;
  if (v26)
  {

    swift_setDeallocating();
    sub_100001EB8(v47);
    v29 = *(v51 + 8);
    v30 = v44;
    v29(v25, v44);
    v29(v28, v30);
    objc_autoreleasePoolPop(v45);
  }

  else
  {
    v43 = v27;

    v31 = *(v51 + 8);
    v32 = v44;
    v31(v25, v44);
    v31(v28, v32);
    sub_10002889C();
    sub_1000288DC();
    v33 = v53;
    v50 = *(v53 + 48);
    v51 = v53 + 48;
    v28 = _swiftEmptyArrayStorage;
    if (v50(v7, 1, v2) != 1)
    {
      v48 = *(v33 + 32);
      v49 = v2;
      v53 = v33 + 32;
      v34 = (v33 + 8);
      do
      {
        v35 = v52;
        v36 = v48(v52, v7, v2);
        __chkstk_darwin(v36);
        *(&v43 - 2) = v35;
        v37 = sub_100002030(sub_10001031C, (&v43 - 4), v55);
        v38 = sub_100008F8C(v37, &type metadata accessor for ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses);
        if (v38)
        {
          v39 = v38;
        }

        else
        {
          v39 = _swiftEmptyArrayStorage;
        }

        (*v34)(v35, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_100026DC4(0, v28[2] + 1, 1, v28);
        }

        v41 = v28[2];
        v40 = v28[3];
        if (v41 >= v40 >> 1)
        {
          v28 = sub_100026DC4((v40 > 1), v41 + 1, 1, v28);
        }

        v28[2] = (v41 + 1);
        v42 = &v28[2 * v41];
        v42[4] = v37;
        v42[5] = v39;
        sub_1000288DC();
        v2 = v49;
      }

      while (v50(v7, 1, v49) != 1);
    }

    swift_setDeallocating();
    sub_100001EB8(v47);

    objc_autoreleasePoolPop(v45);
  }

  return v28;
}

void (*sub_10000F874(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *, uint64_t)))(char *, uint64_t)
{
  v77 = a3;
  v81 = a2;
  v3 = sub_100027D2C();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v76 = (&v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v73 - v10;
  __chkstk_darwin(v9);
  v13 = &v73 - v12;
  v14 = sub_100027D7C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v80 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v82 = &v73 - v19;
  v20 = __chkstk_darwin(v18);
  v75 = &v73 - v21;
  v22 = __chkstk_darwin(v20);
  v74 = &v73 - v23;
  v24 = __chkstk_darwin(v22);
  v84 = &v73 - v25;
  __chkstk_darwin(v24);
  v27 = &v73 - v26;
  sub_10002847C();
  v86 = *(v15 + 6);
  if (v86(v13, 1, v14) == 1)
  {
    sub_10000EDEC(v13, &qword_100034ED0, &qword_100029610);
    if (qword_100034AA0 == -1)
    {
LABEL_3:
      v28 = sub_10002858C();
      sub_10000AEF4(v28, qword_100034C78);
      v29 = sub_10002856C();
      v30 = sub_10002876C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "The current turn doesn't have a timestamp, cannot retrieve interaction events as there's no clear time window", v31, 2u);
      }

      return 0;
    }

LABEL_30:
    swift_once();
    goto LABEL_3;
  }

  v73 = v8;
  v34 = *(v15 + 4);
  v83 = v27;
  v34(v27, v13, v14);
  if (v81)
  {
    v35 = v15;
    sub_10002847C();
    v36 = v86(v11, 1, v14);
    v37 = v84;
    if (v36 != 1)
    {
      v34(v84, v11, v14);
      v38 = v82;
      v39 = v14;
      goto LABEL_14;
    }
  }

  else
  {
    v35 = v15;
    (*(v15 + 7))(v11, 1, 1, v14);
    v37 = v84;
  }

  sub_100027D3C();
  v40 = v86(v11, 1, v14);
  v38 = v82;
  v39 = v14;
  if (v40 != 1)
  {
    sub_10000EDEC(v11, &qword_100034ED0, &qword_100029610);
  }

LABEL_14:
  sub_10000ED3C(&qword_100034ED8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v41 = v83;
  if (sub_1000285DC())
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v42 = sub_10002858C();
    sub_10000AEF4(v42, qword_100034C78);
    v43 = v35;
    v44 = *(v35 + 2);
    v44(v38, v41, v39);
    v45 = v80;
    v44(v80, v37, v39);
    v46 = sub_10002856C();
    v47 = sub_10002876C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87 = v86;
      *v48 = 136315394;
      sub_10000ED3C(&qword_100034EE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      LODWORD(v82) = v47;
      v49 = sub_1000288EC();
      v51 = v50;
      v52 = *(v43 + 1);
      v52(v38, v39);
      v53 = sub_100027364(v49, v51, &v87);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      v54 = sub_1000288EC();
      v56 = v55;
      v52(v45, v39);
      v57 = sub_100027364(v54, v56, &v87);

      *(v48 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v46, v82, "The current and next turn timestamps are out of order, cannot retrieve interaction events: curr=%s, next=%s", v48, 0x16u);
      swift_arrayDestroy();

      v52(v84, v39);
      v52(v83, v39);
    }

    else
    {

      v65 = *(v43 + 1);
      v65(v45, v39);
      v65(v38, v39);
      v65(v37, v39);
      v65(v41, v39);
    }

    return 0;
  }

  v58 = v37;
  v59 = v41;
  v60 = v35;
  v61 = *(v35 + 2);
  v61(v74, v59, v39);
  v61(v75, v58, v39);
  v62 = v76;
  sub_100027D0C();
  v63 = v85;
  v64 = sub_10000F284(v77, v62);
  v85 = v63;
  if (v63)
  {
    (*(v78 + 8))(v62, v79);
    v32 = *(v35 + 1);
    v32(v58, v39);
    v32(v59, v39);
    return v32;
  }

  v66 = v64;
  v82 = v60;
  (*(v78 + 8))(v62, v79);
  v67 = v73;
  if (v66[2])
  {
    v68 = v66[2];
    v69 = 0;
    v70 = v66 + 5;
    while (v69 < v66[2])
    {
      v32 = *(v70 - 1);

      sub_100008D6C(v32, &type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp, &type metadata accessor for Date, v67);
      if (v86(v67, 1, v39) != 1)
      {

        v72 = *(v82 + 1);
        v72(v84, v39);
        v72(v83, v39);
        sub_10000EDEC(v67, &qword_100034ED0, &qword_100029610);
        return v32;
      }

      ++v69;
      sub_10000EDEC(v67, &qword_100034ED0, &qword_100029610);
      v70 += 2;
      if (v68 == v69)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_27:

  v71 = *(v82 + 1);
  v71(v84, v39);
  v71(v83, v39);
  return 0;
}

uint64_t sub_100010250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DBC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000102B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001031C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100001E74(a1, a1[3]);
  result = sub_10002832C();
  *a2 = result;
  return result;
}

__n128 sub_100010380(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10001038C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000103D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100010434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100027DAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  updated = type metadata accessor for ModelUpdateStep(0);
  v12 = *(updated - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = updated;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for UniversalSuggestionRequestState(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100010588(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100027DAC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  updated = type metadata accessor for ModelUpdateStep(0);
  v14 = *(updated - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = updated;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for UniversalSuggestionRequestState(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1000106D4(uint64_t a1)
{
  result = sub_100027DAC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ModelUpdateStep(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for UniversalSuggestionRequestState(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1000107C4(uint64_t a1)
{
  sub_10001083C(319);
  if (v1 <= 0x3F)
  {
    sub_1000108A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10001083C(uint64_t a1)
{
  if (!qword_100035028)
  {
    sub_1000280AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100035028);
    }
  }
}

void sub_1000108A4()
{
  if (!qword_100035030)
  {
    v0 = sub_1000282EC();
    if (!v1)
    {
      atomic_store(v0, &qword_100035030);
    }
  }
}

uint64_t sub_100010900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100027DAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000109D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100027DAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100010A88(uint64_t a1)
{
  sub_100027DAC();
  if (v1 <= 0x3F)
  {
    sub_100011210(319, &unk_1000350C8, &qword_100035D50, &qword_100029618, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100010B4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100027DAC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100010CEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100027DAC();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_100010E78(uint64_t a1)
{
  sub_1000110B0(319, &qword_100035160, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100027DAC();
    if (v2 <= 0x3F)
    {
      sub_1000110B0(319, &qword_100035168, &type metadata accessor for UniversalEntity, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_1000110B0(319, &qword_100035170, &type metadata accessor for SiriCorrectionsUndoResponse, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_1000111C4(319, &qword_100035178, &type metadata for FeaturisedInteractionEvent);
          if (v5 <= 0x3F)
          {
            sub_100011114(319);
            if (v6 <= 0x3F)
            {
              sub_1000110B0(319, &qword_100035190, type metadata accessor for UniversalSuggestionsPromptState, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_1000111C4(319, &qword_100035198, &type metadata for Int32);
                if (v8 <= 0x3F)
                {
                  sub_100011210(319, &qword_1000351A0, &unk_1000351A8, qword_1000296F8, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1000110B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100011114(uint64_t a1)
{
  if (!qword_100035180)
  {
    sub_10001117C(255, &qword_100035188, FLOWSchemaFLOWState_ptr);
    v1 = sub_10002869C();
    if (!v2)
    {
      atomic_store(v1, &qword_100035180);
    }
  }
}

uint64_t sub_10001117C(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1000111C4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000287BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100011210(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100001C00(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100011278()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100036760);
  sub_10000AEF4(v0, qword_100036760);
  return sub_10002857C();
}

uint64_t sub_1000112F8()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100036778);
  sub_10000AEF4(v0, qword_100036778);
  return sub_10002857C();
}

uint64_t sub_100011378()
{
  v0 = sub_10002858C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002850C();
  sub_10000AF2C(v4, qword_100036790);
  sub_10000AEF4(v4, qword_100036790);
  if (qword_100034AB0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000AEF4(v0, qword_100036778);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1000284EC();
}

uint64_t sub_1000114B4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UniversalEntityRemover.CandidateStoreIdAssistantIdPair(0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10001158C, 0, 0);
}

uint64_t sub_10001158C()
{
  sub_100001E74((*(v0 + 64) + 16), *(*(v0 + 64) + 40));
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100011630;

  return sub_100014F14(v0 + 16);
}

uint64_t sub_100011630()
{

  return _swift_task_switch(sub_10001172C, 0, 0);
}

uint64_t sub_10001172C()
{
  v46 = v0;
  result = sub_100011D64(*(v0 + 56));
  v2 = result;
  v44 = *(result + 16);
  if (v44)
  {
    v3 = 0;
    v39 = *(v0 + 72);
    v43 = *(v0 + 80);
    v41 = *(v0 + 56);
    v42 = result + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v40 = result;
    do
    {
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v4 = *(v0 + 104);
      sub_1000127FC(v42 + *(v43 + 72) * v3, v4);
      v5 = *(*sub_100001E74((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_entityIds);
      if (v5 && *(v5 + 16))
      {
        v6 = (v4 + *(v39 + 20));
        v8 = *v6;
        v7 = v6[1];
        sub_10002894C();

        sub_10002862C();
        v9 = sub_10002897C();
        v10 = -1 << *(v5 + 32);
        v11 = v9 & ~v10;
        if ((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = (*(v5 + 48) + 16 * v11);
            v14 = *v13 == v8 && v13[1] == v7;
            if (v14 || (sub_10002890C() & 1) != 0)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_4;
        }

LABEL_16:
      }

      if (qword_100034AC0 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 96);
      v15 = *(v0 + 104);
      v17 = sub_10002858C();
      sub_10000AEF4(v17, qword_1000351F8);
      sub_1000127FC(v15, v16);
      v18 = sub_10002856C();
      v19 = sub_10002875C();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 96);
      if (v20)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v45[0] = v23;
        *v22 = 136315138;
        sub_100027DAC();
        sub_1000128BC();
        v24 = sub_1000288EC();
        v26 = v25;
        sub_100012860(v21);
        v27 = sub_100027364(v24, v26, v45);

        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v18, v19, "Entity corresponding to candidate %s does not exist, deleting candidate from store", v22, 0xCu);
        sub_100001EB8(v23);
        v2 = v40;
      }

      else
      {

        sub_100012860(v21);
      }

      sub_100001E74(*(v0 + 56), *(v41 + 24));
      if ((sub_10002822C() & 1) == 0)
      {
        sub_1000127FC(*(v0 + 104), *(v0 + 88));
        v28 = sub_10002856C();
        v29 = sub_10002876C();
        v30 = os_log_type_enabled(v28, v29);
        v31 = *(v0 + 88);
        if (v30)
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v45[0] = v33;
          *v32 = 136315138;
          sub_100027DAC();
          sub_1000128BC();
          v34 = sub_1000288EC();
          v36 = v35;
          sub_100012860(v31);
          v37 = sub_100027364(v34, v36, v45);
          v2 = v40;

          *(v32 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v28, v29, "Unable to delete candidate %s from store", v32, 0xCu);
          sub_100001EB8(v33);
        }

        else
        {

          sub_100012860(v31);
        }
      }

LABEL_4:
      ++v3;
      result = sub_100012860(*(v0 + 104));
    }

    while (v3 != v44);
  }

  sub_100001EB8((v0 + 16));

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100011BF4()
{
  sub_100001EB8((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t type metadata accessor for UniversalEntityRemover.CandidateStoreIdAssistantIdPair(uint64_t a1)
{
  result = qword_100035328;
  if (!qword_100035328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100011C9C()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_1000351F8);
  v1 = sub_10000AEF4(v0, qword_1000351F8);
  if (qword_100034AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEF4(v0, qword_100036760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id *sub_100011D64(void *a1)
{
  v77 = sub_100027DAC();
  v95 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1000280AC();
  v3 = *(v96 - 8);
  __chkstk_darwin(v96);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001DBC(&qword_1000352C8, &unk_1000297E0);
  __chkstk_darwin(v6 - 8);
  v98 = &v61 - v7;
  v78 = type metadata accessor for UniversalEntityRemover.CandidateStoreIdAssistantIdPair(0);
  v8 = *(v78 - 8);
  __chkstk_darwin(v78);
  v90 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10002810C();
  v10 = *(v85 - 8);
  v11 = __chkstk_darwin(v85);
  v83 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v61 - v13;
  v69 = sub_10002814C();
  v14 = *(v69 - 8);
  __chkstk_darwin(v69);
  v71 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001E74(a1, a1[3]);
  result = sub_10002820C();
  v67 = result[2];
  if (v67)
  {
    v18 = 0;
    v66 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v65 = v14 + 16;
    v93 = v10 + 16;
    v89 = (v3 + 88);
    v88 = enum case for UniversalEntity.homeAutomationEntity(_:);
    v82 = (v3 + 8);
    v92 = (v10 + 8);
    v74 = (v95 + 1);
    v81 = (v3 + 96);
    v86 = (v8 + 56);
    v87 = (v8 + 48);
    v64 = (v14 + 8);
    *&v17 = 136315138;
    v73 = v17;
    v72 = _swiftEmptyArrayStorage;
    v19 = v78;
    v20 = v85;
    v21 = v69;
    v75 = v5;
    v84 = v8;
    v61 = v10;
    v63 = v14;
    v62 = result;
    while (v18 < result[2])
    {
      v23 = *(v14 + 72);
      v70 = v18;
      (*(v14 + 16))(v71, &v66[v23 * v18], v21);
      v24 = sub_10002813C();
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        v68 = v24;
        v27 = v24 + v26;
        v91 = *(v61 + 72);
        v94 = *(v61 + 16);
        v95 = _swiftEmptyArrayStorage;
        v28 = v83;
        v94(v97, v24 + v26, v20);
        while (1)
        {
          sub_1000280EC();
          v29 = (*v89)(v5, v96);
          if (v29 == v88)
          {
            (*v81)(v5, v96);
            v30 = sub_1000203BC();
            if (v31)
            {
              v32 = v30;
              v33 = v31;
              v34 = v98;
              sub_1000280FC();

              v35 = (v34 + *(v19 + 20));
              *v35 = v32;
              v35[1] = v33;
              (*v86)(v34, 0, 1, v19);
            }

            else
            {
              (*v86)(v98, 1, 1, v19);
            }

            v20 = v85;
            v28 = v83;
          }

          else
          {
            (*v82)(v5, v96);
            if (qword_100034AC0 != -1)
            {
              swift_once();
            }

            v36 = sub_10002858C();
            sub_10000AEF4(v36, qword_1000351F8);
            v94(v28, v97, v20);
            v37 = sub_10002856C();
            v38 = sub_10002876C();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              v99 = v80;
              *v39 = v73;
              v40 = v76;
              v79 = v38;
              sub_1000280FC();
              sub_1000128BC();
              v41 = v77;
              v42 = sub_1000288EC();
              v44 = v43;
              v45 = v40;
              v19 = v78;
              v20 = v85;
              (*v74)(v45, v41);
              (*v92)(v28, v20);
              v46 = sub_100027364(v42, v44, &v99);
              v5 = v75;

              *(v39 + 4) = v46;
              _os_log_impl(&_mh_execute_header, v37, v79, "candidate is not a home automation candidate: %s", v39, 0xCu);
              sub_100001EB8(v80);
            }

            else
            {

              (*v92)(v28, v20);
            }

            (*v86)(v98, 1, 1, v19);
          }

          (*v92)(v97, v20);
          if ((*v87)(v98, 1, v19) == 1)
          {
            sub_100012914(v98);
          }

          else
          {
            sub_10001297C(v98, v90);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v47 = v95;
            }

            else
            {
              v47 = sub_100027064(0, v95[2] + 1, 1, v95);
            }

            v49 = v47[2];
            v48 = v47[3];
            if (v49 >= v48 >> 1)
            {
              v47 = sub_100027064((v48 > 1), v49 + 1, 1, v47);
            }

            v47[2] = (v49 + 1);
            v50 = (*(v84 + 80) + 32) & ~*(v84 + 80);
            v95 = v47;
            sub_10001297C(v90, v47 + v50 + *(v84 + 72) * v49);
          }

          v27 += v91;
          if (!--v25)
          {
            break;
          }

          v94(v97, v27, v20);
        }

        v21 = v69;
        v51 = v95;
      }

      else
      {

        v51 = _swiftEmptyArrayStorage;
      }

      result = (*v64)(v71, v21);
      v52 = v51[2];
      v53 = v72;
      v54 = v72[2];
      v55 = &v52[v54];
      if (__OFADD__(v54, v52))
      {
        goto LABEL_46;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v55 > (v53[3] >> 1))
      {
        if (v54 <= v55)
        {
          v56 = &v52[v54];
        }

        else
        {
          v56 = v54;
        }

        result = sub_100027064(result, v56, 1, v53);
        v53 = result;
      }

      v20 = v85;
      v57 = v51[2];
      v72 = v53;
      if (v57)
      {
        if (((v53[3] >> 1) - v53[2]) < v52)
        {
          goto LABEL_48;
        }

        swift_arrayInitWithCopy();

        v14 = v63;
        result = v62;
        v22 = v70;
        if (v52)
        {
          v58 = v72[2];
          v59 = __OFADD__(v58, v52);
          v60 = &v52[v58];
          if (v59)
          {
            goto LABEL_49;
          }

          v72[2] = v60;
        }
      }

      else
      {

        v14 = v63;
        result = v62;
        v22 = v70;
        if (v52)
        {
          goto LABEL_47;
        }
      }

      v18 = v22 + 1;
      v21 = v69;
      if (v18 == v67)
      {

        return v72;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1000127FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalEntityRemover.CandidateStoreIdAssistantIdPair(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012860(uint64_t a1)
{
  v2 = type metadata accessor for UniversalEntityRemover.CandidateStoreIdAssistantIdPair(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000128BC()
{
  result = qword_100034E20;
  if (!qword_100034E20)
  {
    sub_100027DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E20);
  }

  return result;
}

uint64_t sub_100012914(uint64_t a1)
{
  v2 = sub_100001DBC(&qword_1000352C8, &unk_1000297E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001297C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalEntityRemover.CandidateStoreIdAssistantIdPair(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000129F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100027DAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100012AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100027DAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100012B84(uint64_t a1)
{
  result = sub_100027DAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SiriUserFeedbackLearningUniversalSuggestionsPlugin(uint64_t a1)
{
  result = qword_1000353B0;
  if (!qword_1000353B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100012CAC(uint64_t a1)
{
  sub_100027F5C();
  swift_allocObject();
  v1 = sub_100027F4C();
  v5[3] = &type metadata for HomeStoreFactory;
  v5[4] = &off_1000313C8;
  type metadata accessor for UniversalEntityRemover();
  v2 = swift_allocObject();
  sub_100014554(v5, &type metadata for HomeStoreFactory);
  *(v2 + 40) = &type metadata for HomeStoreFactory;
  *(v2 + 48) = &off_1000313C8;
  sub_100001EB8(v5);
  v3 = sub_10001466C(v1, v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_100012D78(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v4[2] = a1;
  v6 = sub_1000284DC();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();
  v7 = sub_100027F0C();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[9] = v8;
  *v8 = v4;
  v8[1] = sub_100012EE0;

  return sub_100013150(a1, a2);
}

uint64_t sub_100012EE0()
{

  return _swift_task_switch(sub_100012FDC, 0, 0);
}

uint64_t sub_100012FDC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_100027F2C();
  v4 = (*(v2 + 88))(v1, v3);
  v5 = enum case for SiriUserFeedbackLearningTaskResult.Status.failure(_:);
  (*(v2 + 8))(v1, v3);
  if (qword_100034AB8 != -1)
  {
    swift_once();
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  if (v4 == v5)
  {
    v9 = "runUniversalSuggestionsPluginFailure";
  }

  else
  {
    v9 = "runUniversalSuggestionsPluginSuccess";
  }

  v10 = sub_10002850C();
  sub_10000AEF4(v10, qword_100036790);
  sub_1000284FC();
  sub_1000284BC();
  sub_100022708(v9, 36, 2);
  (*(v7 + 8))(v6, v8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100013150(uint64_t a1, uint64_t a2)
{
  v3[79] = v2;
  v3[78] = a2;
  v3[77] = a1;
  v4 = sub_100027F0C();
  v3[80] = v4;
  v3[81] = *(v4 - 8);
  v3[82] = swift_task_alloc();
  v5 = sub_1000284DC();
  v3[83] = v5;
  v3[84] = *(v5 - 8);
  v3[85] = swift_task_alloc();
  v6 = sub_100027F6C();
  v3[86] = v6;
  v3[87] = *(v6 - 8);
  v3[88] = swift_task_alloc();

  return _swift_task_switch(sub_1000132D0, 0, 0);
}

uint64_t sub_1000132D0()
{
  v45 = v0;
  if (qword_100034AC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 624);
  v5 = sub_10002858C();
  *(v0 + 712) = sub_10000AEF4(v5, qword_100035360);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_10002856C();
  v7 = sub_10002875C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = *(v0 + 688);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100027364(0x72656E6E496E7572, 0xEC000000293A5F28, &v44);
    *(v12 + 12) = 2080;
    sub_100014EBC();
    v13 = sub_1000288EC();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_100027364(v13, v15, &v44);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "SiriUserFeedbackLearningUniversalSuggestionsPlugin.%s task:%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = (*(v0 + 632) + qword_100035378);
  sub_100001E74(v17, v17[3]);
  sub_100027FEC();
  sub_100001E74(v17, v17[3]);
  v18 = sub_100027F3C();
  *(v0 + 280) = sub_100027F7C();
  *(v0 + 288) = &protocol witness table for AnyFeature;
  *(v0 + 256) = v18;
  v19 = sub_100027FFC();
  sub_100001EB8((v0 + 256));
  if (v19)
  {
    if (qword_100034AB8 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 680);
    v21 = *(v0 + 672);
    v22 = *(v0 + 664);
    v23 = *(v0 + 632);
    v24 = sub_10002850C();
    sub_10000AEF4(v24, qword_100036790);
    sub_1000284FC();
    sub_1000284BC();
    v25 = sub_1000228E8("runUniversalSuggestionsPlugin", 29, 2, v20);
    *(v0 + 720) = v25;
    (*(v21 + 8))(v20, v22);
    sub_100014A18(v23 + qword_100035380, v0 + 336);
    if (*(v0 + 360))
    {
      v26 = *(v0 + 632);
      sub_100011274((v0 + 336), v0 + 296);
      sub_1000102B8(v0 + 296, v0 + 376);
      sub_100014A88(v26 + qword_100035388, v0 + 208);
      sub_1000102B8(v26 + qword_100035390, v0 + 416);
      sub_1000102B8(v26 + qword_100035398, v0 + 456);
      sub_1000102B8(v26 + qword_1000353A0, v0 + 496);
      type metadata accessor for SiriUserFeedbackLearningUniversalSuggestionsEngine();
      inited = swift_initStackObject();
      *(v0 + 728) = inited;
      sub_1000102B8(v0 + 376, inited + 16);
      sub_100014A88(v0 + 208, inited + 56);
      sub_1000102B8(v0 + 416, inited + 104);
      sub_1000102B8(v0 + 456, inited + 144);
      sub_1000102B8(v0 + 496, v0 + 536);
      sub_10002840C();
      swift_allocObject();
      v28 = sub_1000283FC();
      sub_100001EB8((v0 + 496));
      sub_100001EB8((v0 + 456));
      sub_100001EB8((v0 + 416));
      sub_100001EB8((v0 + 208));
      sub_100001EB8((v0 + 376));
      *(inited + 184) = v28;
      v29 = sub_10002856C();
      v30 = sub_10002875C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "About to start executing Universal Suggestions engine...", v31, 2u);
      }

      v32 = swift_task_alloc();
      *(v0 + 736) = v32;
      *v32 = v0;
      v32[1] = sub_1000139A0;

      return sub_1000021E8();
    }

    v40 = *(v0 + 656);
    v41 = *(v0 + 648);
    v42 = *(v0 + 640);
    sub_100014AEC(v0 + 336);
    *v40 = 0xD000000000000030;
    v40[1] = 0x800000010002A900;
    (*(v41 + 104))(v40, enum case for SiriUserFeedbackLearningTaskResult.Status.failure(_:), v42);
    sub_100027F1C();
    sub_100014144(v25);
  }

  else
  {
    v34 = sub_10002856C();
    v35 = sub_10002875C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Universal User Feedback Offline Learning feature is disabled, skipping", v36, 2u);
    }

    v37 = *(v0 + 656);
    v38 = *(v0 + 648);
    v39 = *(v0 + 640);

    (*(v38 + 104))(v37, enum case for SiriUserFeedbackLearningTaskResult.Status.skipped(_:), v39);
    sub_100027F1C();
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1000139A0()
{
  *(*v1 + 744) = v0;

  if (v0)
  {
    v2 = sub_100013EE0;
  }

  else
  {
    v2 = sub_100013AB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013AB4(uint64_t a1)
{
  v2 = sub_10002856C();
  v3 = sub_10002875C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Universal Suggestions engine finished execution", v4, 2u);
  }

  v5 = sub_10002856C();
  v6 = sub_10002875C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Removing deleted entities...", v7, 2u);
  }

  v8 = *(v1 + 632);

  sub_100001E74((v8 + qword_1000353A8), *(v8 + qword_1000353A8 + 24));
  v9 = swift_task_alloc();
  *(v1 + 752) = v9;
  *v9 = v1;
  v9[1] = sub_100013C4C;

  return sub_1000114B4(v1 + 296);
}

uint64_t sub_100013C4C()
{

  return _swift_task_switch(sub_100013D48, 0, 0);
}

uint64_t sub_100013D48(uint64_t a1)
{
  v2 = sub_10002856C();
  v3 = sub_10002875C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "...Finished removing deleted entities", v4, 2u);
  }

  v5 = v1[91];
  v6 = v1[90];
  v7 = v1[82];
  v8 = v1[81];
  v9 = v1[80];

  (*(v8 + 104))(v7, enum case for SiriUserFeedbackLearningTaskResult.Status.success(_:), v9);
  sub_100027F1C();
  swift_setDeallocating();
  sub_100001EB8(v5 + 2);
  sub_100001EB8(v5 + 7);
  sub_100001EB8(v5 + 13);
  sub_100001EB8(v5 + 18);

  sub_100014B54((v1 + 37));
  sub_100001EB8(v1 + 37);
  sub_100014144(v6);

  v10 = v1[1];

  return v10();
}

uint64_t sub_100013EE0()
{
  v18 = v0;
  swift_errorRetain();
  v1 = sub_10002856C();
  v2 = sub_10002876C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[93];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    v0[76] = v3;
    swift_errorRetain();
    sub_100001DBC(&qword_100034EB0, &qword_1000295F0);
    v6 = sub_10002861C();
    v8 = sub_100027364(v6, v7, &v17);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error thrown: %s", v4, 0xCu);
    sub_100001EB8(v5);
  }

  v9 = v0[91];
  v10 = v0[90];
  v11 = v0[82];
  v12 = v0[81];
  v13 = v0[80];
  swift_getErrorValue();
  *v11 = sub_10002893C();
  v11[1] = v14;
  (*(v12 + 104))(v11, enum case for SiriUserFeedbackLearningTaskResult.Status.failure(_:), v13);
  sub_100027F1C();

  swift_setDeallocating();
  sub_100001EB8(v9 + 2);
  sub_100001EB8(v9 + 7);
  sub_100001EB8(v9 + 13);
  sub_100001EB8(v9 + 18);

  sub_100014B54((v0 + 37));
  sub_100001EB8(v0 + 37);
  sub_100014144(v10);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100014144(uint64_t a1)
{
  v1 = sub_10002851C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000284DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100034AB8 != -1)
  {
    swift_once();
  }

  v9 = sub_10002850C();
  sub_10000AEF4(v9, qword_100036790);
  v10 = sub_1000284FC();
  sub_10002852C();
  v11 = sub_10002877C();
  if (sub_1000287AC())
  {

    sub_10002855C();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1000284CC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "runUniversalSuggestionsPlugin", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100014400()
{
  sub_100001EB8((v0 + qword_100035378));
  sub_100014AEC(v0 + qword_100035380);
  sub_100001EB8((v0 + qword_100035388));
  sub_100001EB8((v0 + qword_100035390));
  sub_100001EB8((v0 + qword_100035398));
  sub_100001EB8((v0 + qword_1000353A0));
  return sub_100001EB8((v0 + qword_1000353A8));
}

id sub_100014484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriUserFeedbackLearningUniversalSuggestionsPlugin(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000144BC(uint64_t a1)
{
  sub_100001EB8((a1 + qword_100035378));
  sub_100014AEC(a1 + qword_100035380);
  sub_100001EB8((a1 + qword_100035388));
  sub_100001EB8((a1 + qword_100035390));
  sub_100001EB8((a1 + qword_100035398));
  sub_100001EB8((a1 + qword_1000353A0));
  return sub_100001EB8((a1 + qword_1000353A8));
}

uint64_t sub_100014554(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000145A4()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100035360);
  v1 = sub_10000AEF4(v0, qword_100035360);
  if (qword_100034AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEF4(v0, qword_100036760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10001466C(uint64_t a1, uint64_t a2)
{
  v37[3] = sub_100027F5C();
  v37[4] = &protocol witness table for FeatureManager;
  v37[0] = a1;
  v4 = type metadata accessor for UniversalEntityRemover();
  v36[3] = v4;
  v36[4] = &off_100031398;
  v36[0] = a2;
  sub_1000102B8(v37, v35);
  v5 = sub_10002846C();
  v6 = sub_10002845C();
  if (v6)
  {
    v7 = &protocol witness table for UniversalSuggestionsStoreCoreData;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v34[1] = 0;
    v34[2] = 0;
  }

  v34[0] = v6;
  v34[3] = v5;
  v34[4] = v7;
  sub_10002803C();
  sub_10002802C();
  sub_10002800C();

  sub_10002802C();
  sub_10002801C();

  v8 = sub_10002829C();
  v9 = sub_10002828C();
  sub_10002818C();
  sub_1000102B8(v36, v30);
  v10 = sub_100014554(v30, v30[3]);
  __chkstk_darwin(v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v29[3] = v8;
  v29[4] = &protocol witness table for FlatFileStreamBookmarkStore;
  v28 = &off_100031398;
  v29[0] = v9;
  v27 = v4;
  v26[0] = v14;
  v15 = type metadata accessor for SiriUserFeedbackLearningUniversalSuggestionsPlugin(0);
  v16 = objc_allocWithZone(v15);
  v17 = sub_100014554(v26, v27);
  __chkstk_darwin(v17);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v25[3] = v4;
  v25[4] = &off_100031398;
  v25[0] = v21;
  sub_1000102B8(v35, v16 + qword_100035378);
  sub_100014A18(v34, v16 + qword_100035380);
  sub_100014A88(v33, v16 + qword_100035388);
  sub_1000102B8(v32, v16 + qword_100035390);
  sub_1000102B8(v29, v16 + qword_100035398);
  sub_1000102B8(v31, v16 + qword_1000353A0);
  sub_1000102B8(v25, v16 + qword_1000353A8);
  v24.receiver = v16;
  v24.super_class = v15;
  v22 = objc_msgSendSuper2(&v24, "init");
  sub_100001EB8(v31);
  sub_100001EB8(v32);
  sub_100001EB8(v33);
  sub_100001EB8(v35);
  sub_100001EB8(v36);
  sub_100001EB8(v37);
  sub_100014AEC(v34);
  sub_100001EB8(v29);
  sub_100001EB8(v25);
  sub_100001EB8(v26);
  sub_100001EB8(v30);
  return v22;
}

uint64_t sub_100014A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DBC(&qword_100035400, &unk_1000298A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014A88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100014AEC(uint64_t a1)
{
  v2 = sub_100001DBC(&qword_100035400, &unk_1000298A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100014B54(uint64_t a1)
{
  v2 = sub_10002843C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_1000102B8(a1, v11);
  sub_100001DBC(&qword_100035410, &unk_1000298B0);
  sub_10002837C();
  if (swift_dynamicCast())
  {
    sub_10002842C();
    sub_10002841C();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_100034AC8 != -1)
    {
      swift_once();
    }

    v6 = sub_10002858C();
    sub_10000AEF4(v6, qword_100035360);
    v7 = sub_10002856C();
    v8 = sub_10002876C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Could not cast store to a Core Data instance", v9, 2u);
    }
  }
}

unint64_t sub_100014EBC()
{
  result = qword_100035408;
  if (!qword_100035408)
  {
    sub_100027F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035408);
  }

  return result;
}

uint64_t sub_100014F34()
{
  v1 = type metadata accessor for HomeKitManager();
  v2 = [objc_allocWithZone(v1) init];
  v0[5] = v1;
  v0[6] = &off_1000315C8;
  v0[2] = v2;
  v0[8] = type metadata accessor for HomeStore(0);
  v3 = swift_allocObject();
  sub_100014554((v0 + 2), v1);
  v4 = *(v1 - 1);
  v5 = swift_task_alloc();
  v0[9] = v5;
  (*(v4 + 16))();
  v6 = *v5;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1000150BC;

  return sub_100015304(v6, v3);
}

uint64_t sub_1000150BC(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 88) = a1;

  sub_100001EB8((v2 + 16));

  return _swift_task_switch(sub_1000151E4, 0, 0);
}

uint64_t sub_1000151E4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v2[3] = *(v0 + 64);
  v2[4] = &off_100031230;
  *v2 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100015210(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100026B48(result, v10, 1, v3);
  v3 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100015304(uint64_t a1, uint64_t a2)
{
  v2[12] = a2;
  v2[5] = type metadata accessor for HomeKitManager();
  v2[6] = &off_1000315C8;
  v2[2] = a1;

  return _swift_task_switch(sub_100015384, 0, 0);
}

uint64_t sub_100015384()
{
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_homeManagerDidUpdateHomesContinuation;
  v3 = sub_100001DBC(&unk_100034B68, qword_1000298D0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_entityIds) = 0;
  sub_1000102B8((v0 + 2), v1 + 16);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v0 + 2;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1000154E8;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1000154E8()
{

  return _swift_task_switch(sub_100015600, 0, 0);
}

id *sub_100015600()
{
  sub_100001E74(v0 + 2, v0[5]);
  v1 = sub_100026594();
  v2 = v1[2];
  if (!v2)
  {

    v4 = _swiftEmptyArrayStorage;
LABEL_20:
    v15 = v0[12];
    v16 = sub_10001FB94(v4);

    *(v15 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_entityIds) = v16;

    sub_100001EB8(v0 + 2);
    v17 = v0[1];
    v18 = v0[12];

    return v17(v18);
  }

  v3 = (v1 + 4);
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_1000102B8(v3, (v0 + 7));
    v6 = sub_100001E74(v0 + 7, v0[10]);
    v7 = sub_100015BA0(*v6);
    result = sub_100001EB8(v0 + 7);
    v8 = v7[2];
    v9 = v4[2];
    v10 = &v8[v9];
    if (__OFADD__(v9, v8))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= (v4[3] >> 1))
    {
      if (v7[2])
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = &v8[v9];
      }

      else
      {
        v11 = v9;
      }

      result = sub_100026B48(result, v11, 1, v4);
      v4 = result;
      if (v7[2])
      {
LABEL_14:
        if (((v4[3] >> 1) - v4[2]) < v8)
        {
          goto LABEL_25;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = v4[2];
          v13 = __OFADD__(v12, v8);
          v14 = &v8[v12];
          if (v13)
          {
            goto LABEL_26;
          }

          v4[2] = v14;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_24;
    }

LABEL_4:
    v3 += 40;
    if (!--v2)
    {

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id *sub_100015800(void *a1)
{
  v1 = [a1 services];
  sub_10001117C(0, &qword_100035428, HMService_ptr);
  v2 = sub_10002866C();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000288CC())
  {
    v4 = 0;
    v29 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v28 = v2 & 0xFFFFFFFFFFFFFF8;
    v6 = v2;
    while (v29)
    {
      v7 = sub_10002883C();
      v2 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v34 = &type metadata for HomeKitService;
      v35 = &off_100031288;
      v33[0] = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100026C54(0, v5[2] + 1, 1, v5);
      }

      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        v5 = sub_100026C54((v8 > 1), v9 + 1, 1, v5);
      }

      v10 = sub_100014554(v33, v34);
      __chkstk_darwin(v10);
      v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = *v12;
      v32 = &off_100031288;
      v31 = &type metadata for HomeKitService;
      *&v30 = v14;
      v5[2] = (v9 + 1);
      sub_10000EB50(&v30, &v5[5 * v9 + 4]);
      sub_100001EB8(v33);
      ++v4;
      v15 = v2 == i;
      v2 = v6;
      if (v15)
      {
        goto LABEL_20;
      }
    }

    if (v4 >= *(v28 + 16))
    {
      goto LABEL_17;
    }

    v7 = *(v2 + 8 * v4 + 32);
    v2 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_20:

  v16 = v5[2];
  if (v16)
  {
    v17 = (v5 + 4);
    v18 = _swiftEmptyArrayStorage;
    do
    {
      sub_1000102B8(v17, v33);
      v19 = [*sub_100001E74(v33 v34)];
      if (v19)
      {
        v20 = v19;
        v21 = sub_10002860C();
        v23 = v22;

        sub_100001EB8(v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100026B48(0, v18[2] + 1, 1, v18);
        }

        v25 = v18[2];
        v24 = v18[3];
        if (v25 >= v24 >> 1)
        {
          v18 = sub_100026B48((v24 > 1), v25 + 1, 1, v18);
        }

        v18[2] = (v25 + 1);
        v26 = &v18[2 * v25];
        v26[4] = v21;
        v26[5] = v23;
      }

      else
      {
        sub_100001EB8(v33);
      }

      v17 += 40;
      --v16;
    }

    while (v16);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v18;
}

id *sub_100015BA0(void *a1)
{
  v42 = a1;
  v1 = [a1 accessories];
  sub_10001117C(0, &qword_100035418, HMAccessory_ptr);
  v2 = sub_10002866C();

  *&v45 = v2;
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000288CC())
  {
    v4 = 0;
    v44 = v45 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v43 = v45 & 0xFFFFFFFFFFFFFF8;
    while (v44)
    {
      v6 = sub_10002883C();
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v50 = &type metadata for HomeKitAccessory;
      v51 = &off_100031560;
      v49[0] = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100026C78(0, v5[2] + 1, 1, v5);
      }

      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        v5 = sub_100026C78((v8 > 1), v9 + 1, 1, v5);
      }

      v10 = sub_100014554(v49, v50);
      __chkstk_darwin(v10);
      v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = *v12;
      v48 = &off_100031560;
      v47 = &type metadata for HomeKitAccessory;
      *&v46 = v14;
      v5[2] = (v9 + 1);
      sub_10000EB50(&v46, &v5[5 * v9 + 4]);
      sub_100001EB8(v49);
      ++v4;
      if (v7 == i)
      {
        goto LABEL_19;
      }
    }

    if (v4 >= *(v43 + 16))
    {
      goto LABEL_16;
    }

    v6 = *(v45 + 8 * v4 + 32);
    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_19:

  v15 = v5[2];
  v16 = &off_100029000;
  if (!v15)
  {

    v17 = _swiftEmptyArrayStorage;
LABEL_40:
    v35 = [v42 assistantIdentifier];
    if (v35)
    {
      v36 = v35;
      v37 = sub_10002860C();
      v39 = v38;

      sub_100001DBC(&qword_100035420, &qword_10002A210);
      v40 = swift_allocObject();
      *(v40 + 1) = *(v16 + 70);
      v40[4] = v37;
      v40[5] = v39;
    }

    else
    {
      v40 = _swiftEmptyArrayStorage;
    }

    v49[0] = v17;
    sub_100015210(v40);
    return v49[0];
  }

  v17 = _swiftEmptyArrayStorage;
  v18 = (v5 + 4);
  v45 = xmmword_100029460;
  while (1)
  {
    sub_1000102B8(v18, v49);
    v20 = sub_100001E74(v49, v50);
    v21 = sub_100015800(*v20);
    v22 = [*sub_100001E74(v49 v50)];
    if (v22)
    {
      v23 = v22;
      v24 = sub_10002860C();
      v26 = v25;

      sub_100001DBC(&qword_100035420, &qword_10002A210);
      inited = swift_initStackObject();
      *(inited + 16) = v45;
      *(inited + 32) = v24;
      *(inited + 40) = v26;
      *&v46 = v21;
      sub_100015210(inited);
      v21 = v46;
    }

    result = sub_100001EB8(v49);
    v28 = *(v21 + 16);
    v29 = v17[2];
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v30 <= (v17[3] >> 1))
    {
      if (*(v21 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v29 <= v30)
      {
        v31 = v29 + v28;
      }

      else
      {
        v31 = v29;
      }

      result = sub_100026B48(result, v31, 1, v17);
      v17 = result;
      if (*(v21 + 16))
      {
LABEL_34:
        if (((v17[3] >> 1) - v17[2]) < v28)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        if (v28)
        {
          v32 = v17[2];
          v33 = __OFADD__(v32, v28);
          v34 = &v32[v28];
          if (v33)
          {
            goto LABEL_47;
          }

          v17[2] = v34;
        }

        goto LABEL_22;
      }
    }

    if (v28)
    {
      goto LABEL_45;
    }

LABEL_22:
    v18 += 40;
    if (!--v15)
    {

      v16 = &off_100029000;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_100016080(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_100016130()
{
  sub_10002882C(98);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x800000010002ACE0;
  sub_10002863C(v4);
  sub_10002863C(*v0);
  v5._countAndFlagsBits = 0x7473656D6974202CLL;
  v5._object = 0xED0000203A706D61;
  sub_10002863C(v5);
  if (*(v0 + 24))
  {
    object = 0xE300000000000000;
    v2._countAndFlagsBits = 7104878;
  }

  else
  {
    v2._countAndFlagsBits = sub_10002872C();
    object = v2._object;
  }

  v2._object = object;
  sub_10002863C(v2);

  v6._object = 0x800000010002AD10;
  v6._countAndFlagsBits = 0xD000000000000010;
  sub_10002863C(v6);
  type metadata accessor for UniversalSuggestionItem(0);
  sub_100027DAC();
  sub_100020F24(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v7._countAndFlagsBits = sub_1000288EC();
  sub_10002863C(v7);

  v8._countAndFlagsBits = 0xD00000000000001BLL;
  v8._object = 0x800000010002AD30;
  sub_10002863C(v8);
  sub_1000282BC();
  sub_1000288AC();
  return 0;
}

Swift::Int sub_1000162FC()
{
  v1 = *v0;
  sub_10002894C();
  sub_10002895C(v1);
  return sub_10002897C();
}

Swift::Int sub_100016370(uint64_t a1)
{
  v2 = *v1;
  sub_10002894C();
  sub_10002895C(v2);
  return sub_10002897C();
}

unint64_t sub_1000163C8()
{
  v1 = 0xD000000000000024;
  v2 = *v0;
  v3 = 0xD000000000000027;
  if (v2 != 3)
  {
    v3 = 0xD000000000000023;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000024;
  }

  else
  {
    v4 = v3;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000026;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100016454()
{
  v1 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  __chkstk_darwin(v1);
  v3 = v14 - v2;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_10002882C(73);
  v15._countAndFlagsBits = 0xD000000000000030;
  v15._object = 0x800000010002AB90;
  sub_10002863C(v15);
  v4 = *(v0 + *(type metadata accessor for UniversalSuggestionDisambiguationOffered(0) + 20));
  v5 = 0xD000000000000026;
  v6 = "feredState.cancelled";
  v7 = "feredState.inconclusive";
  v8 = ", respondRequestId: ";
  v9 = 0xD000000000000027;
  if (v4 != 3)
  {
    v9 = 0xD000000000000023;
    v8 = "nOffered(state: ";
  }

  if (v4 == 2)
  {
    v10 = 0xD000000000000024;
  }

  else
  {
    v10 = v9;
  }

  if (v4 != 2)
  {
    v7 = v8;
  }

  if (v4)
  {
    v5 = 0xD000000000000024;
    v6 = "feredState.abandoned";
  }

  if (v4 <= 1)
  {
    v11._countAndFlagsBits = v5;
  }

  else
  {
    v11._countAndFlagsBits = v10;
  }

  if (v4 <= 1)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  v11._object = (v12 | 0x8000000000000000);
  sub_10002863C(v11);

  v16._countAndFlagsBits = 0xD000000000000014;
  v16._object = 0x800000010002AC00;
  sub_10002863C(v16);
  sub_10000ED84(v0, v3, &qword_100034EB8, &qword_1000295F8);
  v17._countAndFlagsBits = sub_10002861C();
  sub_10002863C(v17);

  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  sub_10002863C(v18);
  return v14[0];
}

unint64_t sub_100016618()
{
  v1 = v0;
  v2 = sub_1000280AC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001FA40(v1, v11, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  v12 = sub_100001DBC(&qword_100034E08, &unk_100029550);
  v13 = (*(*(v12 - 8) + 48))(v11, 2, v12);
  if (v13)
  {
    if (v13 == 1)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return 0xD000000000000025;
    }
  }

  else
  {
    v15 = *(v12 + 48);
    v16 = *(v3 + 32);
    v16(v8, v11, v2);
    v16(v6, &v11[v15], v2);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_10002882C(49);

    v23 = 0xD000000000000022;
    v24 = 0x800000010002AA70;
    v17._countAndFlagsBits = sub_10002809C();
    if (v17._object)
    {
      object = v17._object;
    }

    else
    {
      v17._countAndFlagsBits = 7104878;
      object = 0xE300000000000000;
    }

    v17._object = object;
    sub_10002863C(v17);

    v25._countAndFlagsBits = 0x746567726174202CLL;
    v25._object = 0xEA0000000000203ALL;
    sub_10002863C(v25);
    v19._countAndFlagsBits = sub_10002809C();
    if (v19._object)
    {
      v20 = v19._object;
    }

    else
    {
      v19._countAndFlagsBits = 7104878;
      v20 = 0xE300000000000000;
    }

    v19._object = v20;
    sub_10002863C(v19);

    v26._countAndFlagsBits = 41;
    v26._object = 0xE100000000000000;
    sub_10002863C(v26);
    v21 = v23;
    v22 = *(v3 + 8);
    v22(v6, v2);
    v22(v8, v2);
    return v21;
  }
}

unint64_t sub_100016924()
{
  v1 = v0;
  v2 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
  __chkstk_darwin(v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState(0);
  __chkstk_darwin(v5 - 8);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001FA40(v1, v7, type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState);
  v8 = sub_100001DBC(&qword_100034E18, &qword_100029560);
  v9 = (*(*(v8 - 8) + 48))(v7, 3, v8);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      return 0xD00000000000001FLL;
    }
  }

  else if (v9)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    sub_10001FB2C(v7, v4, type metadata accessor for UniversalSuggestionDisambiguationOffered);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_10002882C(58);
    v13._countAndFlagsBits = 0xD000000000000037;
    v13._object = 0x800000010002AAF0;
    sub_10002863C(v13);
    v14._countAndFlagsBits = sub_100016454();
    sub_10002863C(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    sub_10002863C(v15);
    v10 = v12[0];
    sub_10001FAA8(v4, type metadata accessor for UniversalSuggestionDisambiguationOffered);
    return v10;
  }
}

uint64_t sub_100016B64()
{
  sub_10002882C(54);
  v1._object = 0x800000010002AAC0;
  v1._countAndFlagsBits = 0xD000000000000024;
  sub_10002863C(v1);
  v2._countAndFlagsBits = sub_100016130();
  sub_10002863C(v2);

  v3._countAndFlagsBits = 0x74536B736174202CLL;
  v3._object = 0xED0000203A657461;
  sub_10002863C(v3);
  type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState(0);
  v4._countAndFlagsBits = sub_100016924();
  sub_10002863C(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_10002863C(v5);
  return 0;
}

uint64_t sub_100016C54()
{
  v1 = sub_100001DBC(&qword_100034E10, &qword_100029AF0);
  __chkstk_darwin(v1);
  v3 = v6 - v2;
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_10002882C(71);
  v7._countAndFlagsBits = 0xD00000000000002FLL;
  v7._object = 0x800000010002A9F0;
  sub_10002863C(v7);
  sub_100027DAC();
  sub_100020F24(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v8._countAndFlagsBits = sub_1000288EC();
  sub_10002863C(v8);

  v9._object = 0x800000010002AA20;
  v9._countAndFlagsBits = 0xD000000000000013;
  sub_10002863C(v9);
  v4 = type metadata accessor for UniversalSuggestionRequestTaskState(0);
  sub_10000ED84(v0 + *(v4 + 20), v3, &qword_100034E10, &qword_100029AF0);
  v10._countAndFlagsBits = sub_10002861C();
  sub_10002863C(v10);

  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  sub_10002863C(v11);
  return v6[0];
}

uint64_t sub_100016DFC()
{
  sub_10002882C(64);
  v1._object = 0x800000010002A480;
  v1._countAndFlagsBits = 0xD00000000000002CLL;
  sub_10002863C(v1);
  type metadata accessor for UniversalSuggestionCorrectionDiscovered(0);
  sub_1000288AC();
  v2._countAndFlagsBits = 0x736575716572202CLL;
  v2._object = 0xEF203A6B73615474;
  sub_10002863C(v2);
  type metadata accessor for UniversalSuggestionRequestState(0);
  v3._countAndFlagsBits = sub_100016C54();
  sub_10002863C(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  sub_10002863C(v4);
  return 0;
}

uint64_t sub_100016EF0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v5 = sub_100001DBC(&qword_100035558, &qword_100029AD0);
  __chkstk_darwin(v5 - 8);
  v51 = &v47 - v6;
  v7 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v47 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState(0);
  __chkstk_darwin(v9 - 8);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000282BC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001DBC(&qword_100035560, &unk_100029AD8);
  __chkstk_darwin(v15 - 8);
  v17 = &v47 - v16;
  v18 = type metadata accessor for UniversalSuggestionItem(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017674(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000EDEC(v17, &qword_100035560, &unk_100029AD8);
    v22 = *(type metadata accessor for UniversalSuggestionsFeaturisedTurn(0) + 20);
    v23 = sub_100027DAC();
    (*(*(v23 - 8) + 16))(a3, a1 + v22, v23);
    v24 = *(type metadata accessor for UniversalSuggestionRequestTaskState(0) + 20);
    v25 = type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState(0);
    return (*(*(v25 - 8) + 56))(a3 + v24, 1, 1, v25);
  }

  sub_10001FB2C(v17, v21, type metadata accessor for UniversalSuggestionItem);
  (*(v12 + 104))(v14, enum case for PLUSSuggestionSurfacedState.notSurfaced(_:), v11);
  v27 = sub_1000282AC();
  (*(v12 + 8))(v14, v11);
  if ((v27 & 1) == 0)
  {
    if (sub_1000208D0(a1, v21))
    {
      v36 = *(type metadata accessor for UniversalSuggestionsFeaturisedTurn(0) + 20);
      v37 = sub_100001DBC(&qword_100034E18, &qword_100029560);
      v38 = v52;
      (*(*(v37 - 8) + 56))(v52, 3, 3, v37);
    }

    else
    {
      v39 = v51;
      sub_100018C94(a1, v50, v21, v51);
      if ((*(v48 + 48))(v39, 1, v49) != 1)
      {
        v42 = v47;
        sub_10001FB2C(v39, v47, type metadata accessor for UniversalSuggestionDisambiguationOffered);
        v43 = *(type metadata accessor for UniversalSuggestionsFeaturisedTurn(0) + 20);
        v44 = v42;
        v38 = v52;
        sub_10001FB2C(v44, v52, type metadata accessor for UniversalSuggestionDisambiguationOffered);
        v45 = sub_100001DBC(&qword_100034E18, &qword_100029560);
        (*(*(v45 - 8) + 56))(v38, 0, 3, v45);
        v46 = sub_100027DAC();
        (*(*(v46 - 8) + 16))(a3, a1 + v43, v46);
        goto LABEL_11;
      }

      sub_10000EDEC(v39, &qword_100035558, &qword_100029AD0);
      v36 = *(type metadata accessor for UniversalSuggestionsFeaturisedTurn(0) + 20);
      v40 = sub_100001DBC(&qword_100034E18, &qword_100029560);
      v38 = v52;
      (*(*(v40 - 8) + 56))(v52, 2, 3, v40);
    }

    v41 = sub_100027DAC();
    (*(*(v41 - 8) + 16))(a3, a1 + v36, v41);
LABEL_11:
    v32 = a3 + *(type metadata accessor for UniversalSuggestionRequestTaskState(0) + 20);
    sub_10001FB2C(v21, v32, type metadata accessor for UniversalSuggestionItem);
    v33 = type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState(0);
    v34 = v32 + *(v33 + 20);
    v35 = v38;
    goto LABEL_12;
  }

  v28 = *(type metadata accessor for UniversalSuggestionsFeaturisedTurn(0) + 20);
  v29 = sub_100001DBC(&qword_100034E18, &qword_100029560);
  v30 = v52;
  (*(*(v29 - 8) + 56))(v52, 1, 3, v29);
  v31 = sub_100027DAC();
  (*(*(v31 - 8) + 16))(a3, a1 + v28, v31);
  v32 = a3 + *(type metadata accessor for UniversalSuggestionRequestTaskState(0) + 20);
  sub_10001FB2C(v21, v32, type metadata accessor for UniversalSuggestionItem);
  v33 = type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState(0);
  v34 = v32 + *(v33 + 20);
  v35 = v30;
LABEL_12:
  sub_10001FB2C(v35, v34, type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState);
  return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
}

uint64_t sub_100017674@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100027D7C();
  v150 = *(v4 - 8);
  v151 = v4;
  __chkstk_darwin(v4);
  v146 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  __chkstk_darwin(v6 - 8);
  v160 = (&v140 - v7);
  v8 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  __chkstk_darwin(v8 - 8);
  v10 = &v140 - v9;
  v11 = sub_100027DAC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v153 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v149 = &v140 - v16;
  v17 = __chkstk_darwin(v15);
  v147 = &v140 - v18;
  __chkstk_darwin(v17);
  v156 = &v140 - v19;
  v20 = sub_10002827C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v25 = __chkstk_darwin(v24);
  v26 = __chkstk_darwin(v25);
  v152 = &v140 - v27;
  v28 = __chkstk_darwin(v26);
  v148 = &v140 - v29;
  v30 = __chkstk_darwin(v28);
  v33 = &v140 - v32;
  v155 = v30;
  v34 = *(v30 + 48);
  v157 = a1;
  v35 = *(a1 + v34);
  if (v35)
  {
    v36 = v35[2];
    v143 = v31;
    if (v36 >= 2)
    {
      v144 = v23;
      v154 = v11;
      v145 = v20;
      if (qword_100034AF8 != -1)
      {
        goto LABEL_53;
      }

      goto LABEL_4;
    }

LABEL_11:
    if (v36)
    {
      (*(v21 + 16))(v23, v35 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);
      sub_10002825C();
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        (*(v21 + 8))(v23, v20);
        sub_10000EDEC(v10, &qword_100034EB8, &qword_1000295F8);
      }

      else
      {
        (*(v12 + 32))(v156, v10, v11);
        v51 = *(v157 + *(v155 + 36));
        v142 = a2;
        v141 = v21;
        v145 = v20;
        v140 = v12;
        v154 = v11;
        v144 = v23;
        v158 = v51 & 0xFFFFFFFFFFFFFF8;
        if (v51 >> 62)
        {
          v159 = sub_1000288CC();
        }

        else
        {
          v159 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v33 = 0;
        v10 = 0;
        while (v159 != v33)
        {
          if ((v51 & 0xC000000000000001) != 0)
          {
            v57 = sub_10002883C();
          }

          else
          {
            if (v33 >= *(v158 + 16))
            {
              goto LABEL_52;
            }

            v57 = *(v51 + 8 * v33 + 32);
          }

          a2 = v57;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            swift_once();
LABEL_4:
            v37 = sub_10002858C();
            sub_10000AEF4(v37, qword_100035430);
            sub_10001FA40(v157, v33, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
            swift_bridgeObjectRetain_n();
            v38 = sub_10002856C();
            v39 = sub_10002876C();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v142 = a2;
              v141 = v21;
              v41 = v40;
              v42 = swift_slowAlloc();
              v161[0] = v42;
              *v41 = 136315394;
              sub_100020F24(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v43 = sub_1000288EC();
              v45 = v44;
              sub_10001FAA8(v33, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
              v46 = sub_100027364(v43, v45, v161);

              *(v41 + 4) = v46;
              *(v41 + 12) = 2048;
              v47 = v35[2];

              *(v41 + 14) = v47;

              _os_log_impl(&_mh_execute_header, v38, v39, "Suggestion summaries for requestId: %s has multiple (%ld) entries, using first", v41, 0x16u);
              sub_100001EB8(v42);

              v21 = v141;
              a2 = v142;
            }

            else
            {

              swift_bridgeObjectRelease_n();
              sub_10001FAA8(v33, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
            }

            v23 = v144;
            v36 = v35[2];
            v20 = v145;
            v11 = v154;
            goto LABEL_11;
          }

          v55 = [v57 currentTaskName];
          if (v55)
          {
            v52 = v55;
            v53 = sub_10002860C();
            v12 = v54;
          }

          else
          {
            v53 = 0;
            v12 = 0;
          }

          v35 = &v140;
          v161[0] = v53;
          v161[1] = v12;
          __chkstk_darwin(v55);
          *(&v140 - 2) = v161;
          v21 = sub_100016080(sub_1000226EC, (&v140 - 4), &off_100031000);

          sub_100001DBC(&qword_100035520, &qword_100029A88);
          swift_arrayDestroy();

          ++v33;
          v56 = v160;
          if (v21)
          {
            v77 = v156;
            v78 = sub_10001992C(v157, v156);
            v79 = v140;
            if (v78)
            {
              v80 = sub_1000203BC();
              v82 = v142;
              if (v81)
              {
                v83 = v80;
                v84 = v81;
                sub_10000ED84(v157, v56, &qword_100034ED0, &qword_100029610);
                v85 = v150;
                v86 = v151;
                v87 = (*(v150 + 48))(v56, 1, v151);
                v88 = 0.0;
                if (v87 != 1)
                {
                  v89 = v146;
                  (*(v85 + 32))(v146, v56, v86);
                  sub_100027D4C();
                  v88 = sub_10002815C(v90);
                  (*(v85 + 8))(v89, v86);
                }

                v91 = v87 == 1;
                v92 = type metadata accessor for UniversalSuggestionItem(0);
                v93 = v156;
                v94 = v154;
                (*(v79 + 16))(v82 + *(v92 + 24), v156, v154);
                v95 = v144;
                sub_10002826C();

                (*(v79 + 8))(v93, v94);
                (*(v141 + 8))(v95, v145);
                *v82 = v83;
                v82[1] = v84;
                *(v82 + 2) = v88;
                *(v82 + 24) = v91;
                return (*(*(v92 - 8) + 56))(v82, 0, 1, v92);
              }

              if (qword_100034AF8 != -1)
              {
                swift_once();
              }

              v118 = sub_10002858C();
              sub_10000AEF4(v118, qword_100035430);
              v119 = v147;
              v120 = v154;
              (*(v79 + 16))(v147, v77, v154);
              v121 = v148;
              sub_10001FA40(v157, v148, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
              v122 = sub_10002856C();
              v123 = sub_10002876C();
              if (os_log_type_enabled(v122, v123))
              {
                v124 = swift_slowAlloc();
                v160 = v122;
                v125 = v119;
                v126 = v124;
                v161[0] = swift_slowAlloc();
                *v126 = 136315394;
                sub_100020F24(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                LODWORD(v159) = v123;
                v127 = sub_1000288EC();
                v129 = v128;
                v130 = *(v79 + 8);
                v130(v125, v120);
                v131 = sub_100027364(v127, v129, v161);

                *(v126 + 4) = v131;
                *(v126 + 12) = 2080;
                v132 = v148;
                v133 = sub_1000288EC();
                v135 = v134;
                sub_10001FAA8(v132, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
                v136 = sub_100027364(v133, v135, v161);
                v82 = v142;

                *(v126 + 14) = v136;
                v137 = v160;
                _os_log_impl(&_mh_execute_header, v160, v159, "Failed to parse suggestion entity id with suggestionId: %s; in request %s", v126, 0x16u);
                swift_arrayDestroy();

                v130(v156, v120);
              }

              else
              {

                sub_10001FAA8(v121, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
                v139 = *(v79 + 8);
                v139(v119, v120);
                v139(v77, v120);
              }
            }

            else
            {
              v82 = v142;
              if (qword_100034AF8 != -1)
              {
                swift_once();
              }

              v100 = sub_10002858C();
              sub_10000AEF4(v100, qword_100035430);
              v101 = v149;
              v102 = v154;
              (*(v79 + 16))(v149, v77, v154);
              v103 = v152;
              sub_10001FA40(v157, v152, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
              v104 = sub_10002856C();
              v105 = sub_10002876C();
              if (os_log_type_enabled(v104, v105))
              {
                v106 = swift_slowAlloc();
                v160 = swift_slowAlloc();
                v161[0] = v160;
                *v106 = 136315394;
                sub_100020F24(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                LODWORD(v159) = v105;
                v107 = sub_1000288EC();
                v108 = v82;
                v110 = v109;
                v111 = *(v79 + 8);
                v111(v101, v102);
                v112 = sub_100027364(v107, v110, v161);
                v82 = v108;

                *(v106 + 4) = v112;
                *(v106 + 12) = 2080;
                v113 = v152;
                v114 = sub_1000288EC();
                v116 = v115;
                sub_10001FAA8(v113, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
                v117 = sub_100027364(v114, v116, v161);

                *(v106 + 14) = v117;
                _os_log_impl(&_mh_execute_header, v104, v159, "Failed to extract offered suggested entity with suggestionId: %s; in request: %s", v106, 0x16u);
                swift_arrayDestroy();

                v111(v156, v102);
              }

              else
              {

                sub_10001FAA8(v103, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
                v138 = *(v79 + 8);
                v138(v101, v102);
                v138(v77, v102);
              }
            }

            (*(v141 + 8))(v144, v145);
            v97 = type metadata accessor for UniversalSuggestionItem(0);
            v98 = *(*(v97 - 8) + 56);
            v99 = v82;
            return v98(v99, 1, 1, v97);
          }
        }

        v58 = v153;
        if (qword_100034AF8 != -1)
        {
          swift_once();
        }

        v59 = sub_10002858C();
        sub_10000AEF4(v59, qword_100035430);
        v60 = v140;
        v61 = v156;
        v62 = v154;
        (*(v140 + 16))(v58, v156, v154);
        v63 = v143;
        sub_10001FA40(v157, v143, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        v64 = sub_10002856C();
        v65 = sub_10002876C();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          v161[0] = v160;
          *v66 = 136315394;
          sub_100020F24(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v67 = sub_1000288EC();
          v68 = v58;
          v70 = v69;
          v71 = *(v60 + 8);
          v71(v68, v62);
          v72 = sub_100027364(v67, v70, v161);

          *(v66 + 4) = v72;
          *(v66 + 12) = 2080;
          v73 = sub_1000288EC();
          v75 = v74;
          sub_10001FAA8(v63, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          v76 = sub_100027364(v73, v75, v161);

          *(v66 + 14) = v76;
          _os_log_impl(&_mh_execute_header, v64, v65, "Failed to find Home task for suggestion with suggestionId: %s; in request %s", v66, 0x16u);
          swift_arrayDestroy();

          v71(v156, v62);
        }

        else
        {

          sub_10001FAA8(v63, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          v96 = *(v60 + 8);
          v96(v58, v62);
          v96(v61, v62);
        }

        (*(v141 + 8))(v144, v145);
        a2 = v142;
      }
    }

    v97 = type metadata accessor for UniversalSuggestionItem(0);
    v98 = *(*(v97 - 8) + 56);
    v99 = a2;
    return v98(v99, 1, 1, v97);
  }

  else
  {
    v48 = type metadata accessor for UniversalSuggestionItem(0);
    v49 = *(*(v48 - 8) + 56);

    return v49(a2, 1, 1, v48);
  }
}

Swift::Int sub_1000189B0(Swift::Int result, uint64_t a2)
{
  if (*(result + 16) < *(a2 + 16))
  {
    return 0;
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  for (i = result + 56; v8; v4 = v11)
  {
    v11 = v4;
LABEL_11:
    if (!*(v3 + 16))
    {
      return 0;
    }

    v12 = *(*(a2 + 48) + ((v11 << 8) | (4 * __clz(__rbit64(v8)))));
    sub_10002894C();
    sub_10002896C(v12);
    result = sub_10002897C();
    v13 = -1 << *(v3 + 32);
    v14 = result & ~v13;
    if (((*(i + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }

    v8 &= v8 - 1;
    v15 = ~v13;
    while (*(*(v3 + 48) + 4 * v14) != v12)
    {
      v14 = (v14 + 1) & v15;
      if (((*(i + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      return 1;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100018B24(Swift::Int result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 8) | (4 * __clz(__rbit64(v12)))));
      sub_10002894C();
      sub_10002896C(v14);
      result = sub_10002897C();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + 4 * v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100018C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a3;
  v90 = a2;
  v6 = sub_100001DBC(&qword_100035518, &unk_100029A78);
  v7 = __chkstk_darwin(v6 - 8);
  v85 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v86 = &v85 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v85 - v12;
  __chkstk_darwin(v11);
  v88 = &v85 - v14;
  v15 = type metadata accessor for UniversalSuggestionItem(0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v100 = &v85 - v19;
  v20 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  v21 = __chkstk_darwin(v20 - 8);
  v94 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v99 = &v85 - v23;
  v24 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v25 = v24 - 8;
  v26 = __chkstk_darwin(v24);
  v97 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v98 = &v85 - v28;
  v29 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
  v96 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v87 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v25 + 44);
  v89 = a1;
  v33 = *(a1 + v32);
  v101 = v33 >> 62;
  v102 = a4;
  v95 = v18;
  v93 = v30;
  v92 = v13;
  if (v33 >> 62)
  {
LABEL_47:
    v34 = sub_1000288CC();
    if (!v34)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
      goto LABEL_48;
    }
  }

  v35 = 0;
  v36 = v33 & 0xC000000000000001;
  v103 = v33 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v36)
    {
      v37 = sub_10002883C();
    }

    else
    {
      if (v35 >= *(v103 + 16))
      {
        goto LABEL_46;
      }

      v37 = *(v33 + 32 + 8 * v35);
    }

    v38 = v37;
    if (__OFADD__(v35++, 1))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (qword_100034AD8 != -1)
    {
      swift_once();
    }

    v40 = qword_1000367C0;
    v41 = [v38 flowStateType];
    if (*(v40 + 16))
    {
      v42 = v41;
      sub_10002894C();
      sub_10002896C(v42);
      v43 = sub_10002897C();
      v44 = -1 << *(v40 + 32);
      v45 = v43 & ~v44;
      if ((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        break;
      }
    }

LABEL_4:

    if (v35 == v34)
    {
      goto LABEL_48;
    }
  }

  v46 = ~v44;
  while (*(*(v40 + 48) + 4 * v45) != v42)
  {
    v45 = (v45 + 1) & v46;
    if (((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  if (v101)
  {
    v47 = sub_1000288CC();
  }

  else
  {
    v47 = *(v103 + 16);
  }

  for (i = 0; v47 != i; ++i)
  {
    if (v36)
    {
      v55 = sub_10002883C();
    }

    else
    {
      if (i >= *(v103 + 16))
      {
        goto LABEL_44;
      }

      v55 = *(v33 + 8 * i + 32);
    }

    v56 = v55;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v53 = [v55 currentTaskName];
    if (v53)
    {
      v49 = v53;
      v50 = sub_10002860C();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v104[0] = v50;
    v104[1] = v52;
    __chkstk_darwin(v53);
    *(&v85 - 2) = v104;
    v54 = sub_100016080(sub_10001FA14, (&v85 - 4), &off_1000310E8);

    sub_100001DBC(&qword_100035520, &qword_100029A88);
    swift_arrayDestroy();

    if (v54)
    {
      sub_100001DBC(&qword_100035528, &unk_100029A90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000299E0;
      *(inited + 32) = sub_10001FA34;
      *(inited + 40) = 0;
      *(inited + 48) = sub_10001FA38;
      *(inited + 56) = 0;
      *(inited + 64) = sub_10001FA3C;
      *(inited + 72) = 0;
      v58 = v89;
      sub_10001FA40(v89, v98, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v59 = v90;
      sub_10000ED84(v90, v99, &qword_100034E28, &qword_100029570);
      v60 = v91;
      sub_10001FA40(v91, v100, type metadata accessor for UniversalSuggestionItem);
      v61 = v58;
      v62 = v97;
      sub_10001FA40(v61, v97, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v63 = v94;
      v64 = v62;
      sub_10000ED84(v59, v94, &qword_100034E28, &qword_100029570);
      v65 = v95;
      sub_10001FA40(v60, v95, type metadata accessor for UniversalSuggestionItem);
      v66 = *(inited + 32);
      v67 = v92;
      v66(v62, v63, v65);
      v68 = *(v96 + 48);
      v69 = v93;
      if (v68(v67, 1, v93) == 1 && (sub_10000EDEC(v67, &qword_100035518, &unk_100029A78), v66 = *(inited + 48), v66(v64, v63, v65), v68(v67, 1, v69) == 1) && (sub_10000EDEC(v67, &qword_100035518, &unk_100029A78), v66 = *(inited + 64), v66(v64, v63, v65), v68(v67, 1, v69) == 1))
      {
        sub_10000EDEC(v67, &qword_100035518, &unk_100029A78);
        sub_10001FAA8(v98, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        sub_10000EDEC(v99, &qword_100034E28, &qword_100029570);
        sub_10001FAA8(v100, type metadata accessor for UniversalSuggestionItem);
        v70 = 1;
        v71 = v102;
        v72 = v88;
        v73 = v87;
      }

      else
      {
        v103 = v68;
        sub_10000EDEC(v67, &qword_100035518, &unk_100029A78);

        v74 = v86;
        v75 = v98;
        v76 = v99;
        v77 = v100;
        v66(v98, v99, v100);
        sub_10001FAA8(v75, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        sub_10000EDEC(v76, &qword_100034E28, &qword_100029570);
        sub_10001FAA8(v77, type metadata accessor for UniversalSuggestionItem);

        v78 = v85;
        sub_10000ED84(v74, v85, &qword_100035518, &unk_100029A78);
        v68 = v103;
        if ((v103)(v78, 1, v69) == 1)
        {
          sub_10001FAA8(v97, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          sub_10000EDEC(v94, &qword_100034E28, &qword_100029570);
          result = sub_10001FAA8(v95, type metadata accessor for UniversalSuggestionItem);
          __break(1u);
          return result;
        }

        v72 = v88;
        sub_10001FB2C(v78, v88, type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse);
        sub_10000EDEC(v74, &qword_100035518, &unk_100029A78);
        v70 = 0;
        v71 = v102;
        v73 = v87;
        v63 = v94;
        v65 = v95;
      }

      (*(v96 + 56))(v72, v70, 1, v69);

      sub_10001FAA8(v97, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      sub_10000EDEC(v63, &qword_100034E28, &qword_100029570);
      sub_10001FAA8(v65, type metadata accessor for UniversalSuggestionItem);
      if (v68(v72, 1, v69) == 1)
      {
        v79 = *(v69 + 20);
        v80 = sub_100027DAC();
        (*(*(v80 - 8) + 56))(&v73[v79], 1, 1, v80);
        *v73 = 3;
        if (v68(v72, 1, v69) != 1)
        {
          sub_10000EDEC(v72, &qword_100035518, &unk_100029A78);
        }
      }

      else
      {
        sub_10001FB2C(v72, v73, type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse);
      }

      sub_10000ED84(&v73[*(v69 + 20)], v71, &qword_100034EB8, &qword_1000295F8);
      v81 = *v73;
      sub_10001FAA8(v73, type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse);
      v82 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
      *(v71 + *(v82 + 20)) = v81;
      return (*(*(v82 - 8) + 56))(v71, 0, 1, v82);
    }
  }

LABEL_48:
  v84 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
  return (*(*(v84 - 8) + 56))(v102, 1, 1, v84);
}

uint64_t sub_10001992C(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v62 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v4 = __chkstk_darwin(v62);
  v65 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v59 - v6;
  v7 = sub_100027DAC();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = __chkstk_darwin(v7);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v59 - v10;
  v63 = sub_1000280AC();
  v11 = *(v63 - 8);
  __chkstk_darwin(v63);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001DBC(&qword_100035510, &qword_100029A70);
  __chkstk_darwin(v14 - 8);
  v16 = &v59 - v15;
  v17 = sub_10002810C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001E74((v2 + 16), *(v2 + 40));
  v66 = a2;
  v21 = v17;
  v22 = v18;
  sub_10002821C();
  if ((*(v18 + 48))(v16, 1, v21) == 1)
  {
    sub_10000EDEC(v16, &qword_100035510, &qword_100029A70);
    if (qword_100034AF8 != -1)
    {
      swift_once();
    }

    v23 = sub_10002858C();
    sub_10000AEF4(v23, qword_100035430);
    v25 = v68;
    v24 = v69;
    v26 = v64;
    (*(v68 + 16))(v64, v66, v69);
    v27 = v65;
    sub_10001FA40(v67, v65, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v28 = sub_10002856C();
    v29 = sub_10002876C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v30 = 136315394;
      sub_100020F24(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = sub_1000288EC();
      v33 = v32;
      (*(v25 + 8))(v26, v24);
      v34 = sub_100027364(v31, v33, &v70);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = sub_100027D8C();
      v37 = v36;
      sub_10001FAA8(v27, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v38 = sub_100027364(v35, v37, &v70);

      *(v30 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to find candidate corresponding to offered suggestionId: %s; in request: %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10001FAA8(v27, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      (*(v25 + 8))(v26, v24);
    }
  }

  else
  {
    (*(v18 + 32))(v20, v16, v21);
    sub_1000280EC();
    v39 = v63;
    if ((*(v11 + 88))(v13, v63) == enum case for UniversalEntity.homeAutomationEntity(_:))
    {
      (*(v22 + 8))(v20, v21);
      (*(v11 + 96))(v13, v39);
      return *v13;
    }

    v64 = v21;
    v65 = v20;
    (*(v11 + 8))(v13, v39);
    if (qword_100034AF8 != -1)
    {
      swift_once();
    }

    v41 = sub_10002858C();
    sub_10000AEF4(v41, qword_100035430);
    v43 = v68;
    v42 = v69;
    v44 = v60;
    (*(v68 + 16))(v60, v66, v69);
    v45 = v61;
    sub_10001FA40(v67, v61, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v46 = sub_10002856C();
    v47 = sub_10002876C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v48 = 136315394;
      sub_100020F24(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = sub_1000288EC();
      v50 = v44;
      v51 = v45;
      v53 = v52;
      (*(v43 + 8))(v50, v42);
      v54 = sub_100027364(v49, v53, &v70);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2080;
      v55 = sub_100027D8C();
      v57 = v56;
      sub_10001FAA8(v51, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v58 = sub_100027364(v55, v57, &v70);

      *(v48 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed to unpack entity corresponding to offered suggestionId: %s; in request: %s", v48, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10001FAA8(v45, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      (*(v43 + 8))(v44, v42);
    }

    (*(v22 + 8))(v65, v64);
  }

  return 0;
}

uint64_t sub_10001A1F0()
{
  result = sub_10001FC2C(&off_100030FD8);
  qword_1000367B8 = result;
  return result;
}

uint64_t sub_10001A218()
{
  result = sub_10001FC2C(&off_100031090);
  qword_1000367C0 = result;
  return result;
}

uint64_t sub_10001A240()
{
  result = sub_10001FC2C(&off_100030FB0);
  qword_1000367C8 = result;
  return result;
}

uint64_t sub_10001A268()
{
  result = sub_10001FC2C(&off_100031040);
  qword_1000367D0 = result;
  return result;
}

uint64_t sub_10001A290()
{
  result = sub_10001FC2C(&off_100031068);
  qword_1000367D8 = result;
  return result;
}

uint64_t sub_10001A2B8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_10001CC60(v10, *(*(v1 + 48) + ((v8 << 8) | (4 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10001A398@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v125 = a3;
  v134 = a1;
  v131 = a4;
  v133 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  __chkstk_darwin(v133);
  v130 = &v124 - v5;
  v6 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v124 - v11;
  __chkstk_darwin(v10);
  v14 = &v124 - v13;
  v15 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v127 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v128 = &v124 - v20;
  v21 = __chkstk_darwin(v19);
  v126 = &v124 - v22;
  v23 = __chkstk_darwin(v21);
  v129 = &v124 - v24;
  __chkstk_darwin(v23);
  v26 = &v124 - v25;
  sub_10000ED84(a2, v14, &qword_100034E28, &qword_100029570);
  v27 = *(v16 + 48);
  v132 = v15;
  if (v27(v14, 1, v15) != 1)
  {
    sub_10001FB2C(v14, v26, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    if ((sub_100020BA0(v134, v26) & 1) == 0)
    {
      sub_10001FAA8(v26, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      goto LABEL_22;
    }

    v28 = *(v26 + *(v132 + 36));
    v27 = (v28 >> 62);
    if (v28 >> 62)
    {
LABEL_49:
      v29 = sub_1000288CC();
      v124 = v26;
      if (v29)
      {
LABEL_6:
        v26 = 0;
        v134 = v28 & 0xC000000000000001;
        v130 = (v28 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v134)
          {
            v30 = sub_10002883C();
          }

          else
          {
            if (v26 >= *(v130 + 2))
            {
              goto LABEL_48;
            }

            v30 = *(v28 + 32 + 8 * v26);
          }

          v31 = v30;
          if (__OFADD__(v26++, 1))
          {
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          if (qword_100034AE0 != -1)
          {
            swift_once();
          }

          v9 = qword_1000367C8;
          v33 = [v31 flowStateType];
          if (*(v9 + 16))
          {
            v34 = v33;
            sub_10002894C();
            sub_10002896C(v34);
            v35 = sub_10002897C();
            v36 = -1 << *(v9 + 32);
            v37 = v35 & ~v36;
            if ((*(v9 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
            {
              break;
            }
          }

LABEL_7:

          if (v26 == v29)
          {
            goto LABEL_50;
          }
        }

        v38 = ~v36;
        while (*(*(v9 + 48) + 4 * v37) != v34)
        {
          v37 = (v37 + 1) & v38;
          if (((*(v9 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        if (v27)
        {
          v133 = sub_1000288CC();
        }

        else
        {
          v133 = *(v130 + 2);
        }

        v12 = 0;
        v39 = &off_100031128;
        a2 = v28;
        do
        {
          v61 = v133 != v12;
          if (v133 == v12)
          {
            break;
          }

          if (v134)
          {
            v62 = sub_10002883C();
          }

          else
          {
            if (v12 >= *(v130 + 2))
            {
              goto LABEL_45;
            }

            v62 = *(v28 + 8 * v12 + 32);
          }

          v63 = v62;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v60 = [v62 currentTaskName];
          if (v60)
          {
            v57 = v60;
            v58 = sub_10002860C();
            v27 = v59;
          }

          else
          {
            v58 = 0;
            v27 = 0;
          }

          v135[0] = v58;
          v135[1] = v27;
          __chkstk_darwin(v60);
          *(&v124 - 2) = v135;
          v9 = sub_100016080(sub_1000226EC, (&v124 - 4), &off_100031128);

          sub_100001DBC(&qword_100035520, &qword_100029A88);
          swift_arrayDestroy();

          ++v12;
          v28 = a2;
        }

        while ((v9 & 1) == 0);
LABEL_51:
        if (qword_100034AF8 != -1)
        {
          swift_once();
        }

        v64 = sub_10002858C();
        sub_10000AEF4(v64, qword_100035430);
        v65 = v124;
        v66 = v129;
        sub_10001FA40(v124, v129, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        v67 = sub_10002856C();
        v68 = sub_10002875C();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v135[0] = v70;
          *v69 = 67109378;
          *(v69 + 4) = v61;
          *(v69 + 8) = 2080;
          sub_100027DAC();
          sub_100020F24(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v71 = sub_1000288EC();
          v73 = v72;
          sub_10001FAA8(v66, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          v74 = sub_100027364(v71, v73, v135);

          *(v69 + 10) = v74;
          _os_log_impl(&_mh_execute_header, v67, v68, "Did user select a disambiguation? %{BOOL}d; in request %s", v69, 0x12u);
          sub_100001EB8(v70);

          if (!v61)
          {
LABEL_55:
            v75 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
            (*(*(v75 - 8) + 56))(v131, 1, 1, v75);
            goto LABEL_90;
          }
        }

        else
        {

          sub_10001FAA8(v66, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          if (!v61)
          {
            goto LABEL_55;
          }
        }

        v76 = v132;
        v77 = (v65 + *(v132 + 32));
        if (!*v77)
        {
          v87 = v127;
          sub_10001FA40(v65, v127, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          v88 = sub_10002856C();
          v89 = sub_10002875C();
          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v135[0] = v91;
            *v90 = 136315138;
            v92 = sub_100027D8C();
            v94 = v93;
            sub_10001FAA8(v87, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
            v95 = sub_100027364(v92, v94, v135);

            *(v90 + 4) = v95;
            v96 = "No executed ControlHomeIntent found after disambiguation selection in request: %s";
LABEL_87:
            _os_log_impl(&_mh_execute_header, v88, v89, v96, v90, 0xCu);
            sub_100001EB8(v91);

LABEL_89:
            v122 = v131;
            v123 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
            (*(*(v123 - 8) + 56))(v122, 1, 1, v123);
            goto LABEL_90;
          }

LABEL_88:

          sub_10001FAA8(v87, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          goto LABEL_89;
        }

        v78 = v77[1];
        v79 = v78 >> 62;
        if (v78 >> 62)
        {
          result = sub_1000288CC();
          if (!result)
          {
            goto LABEL_85;
          }
        }

        else
        {
          result = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_85;
          }
        }

        if ((v78 & 0xC000000000000001) != 0)
        {
          v80 = sub_10002883C();
        }

        else
        {
          if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v80 = *(v78 + 32);
        }

        v81 = v80;
        v82 = [v80 entityIdentifier];

        if (v82)
        {
          v83 = sub_10002860C();
          v85 = v84;

          if (v79)
          {
            v86 = sub_1000288CC();
          }

          else
          {
            v86 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v86 != 1)
          {

            v98 = v126;
            sub_10001FA40(v65, v126, type metadata accessor for UniversalSuggestionsFeaturisedTurn);

            v99 = sub_10002856C();
            v100 = sub_10002875C();
            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v135[0] = v102;
              *v101 = 134218242;
              if (v79)
              {
                v103 = sub_1000288CC();
              }

              else
              {
                v103 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(v101 + 4) = v103;

              *(v101 + 12) = 2080;
              v111 = v126;
              v112 = sub_100027D8C();
              v114 = v113;
              sub_10001FAA8(v111, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
              v115 = sub_100027364(v112, v114, v135);

              *(v101 + 14) = v115;
              _os_log_impl(&_mh_execute_header, v99, v100, "Selected disambiguation resolved %ld entities indicating Everywhere was selected, which is unsupported; requestId=%s", v101, 0x16u);
              sub_100001EB8(v102);
            }

            else
            {

              sub_10001FAA8(v98, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
            }

            v116 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
            (*(*(v116 - 8) + 56))(v131, 1, 1, v116);
            v117 = v124;
            return sub_10001FAA8(v117, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          }

          if (v83 == *v125 && v85 == v125[1])
          {

            v97 = 4;
          }

          else
          {
            v104 = sub_10002890C();

            if (v104)
            {
              v97 = 4;
            }

            else
            {
              v97 = 0;
            }
          }

          v105 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
          v106 = *(v105 + 20);
          v107 = *(v76 + 20);
          v108 = sub_100027DAC();
          v109 = *(v108 - 8);
          v110 = v131;
          (*(v109 + 16))(&v131[v106], v65 + v107, v108);
          (*(v109 + 56))(&v110[v106], 0, 1, v108);
          *v110 = v97;
          (*(*(v105 - 8) + 56))(v110, 0, 1, v105);
LABEL_90:
          v117 = v65;
          return sub_10001FAA8(v117, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        }

LABEL_85:
        v87 = v128;
        sub_10001FA40(v65, v128, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        v88 = sub_10002856C();
        v89 = sub_10002875C();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v135[0] = v91;
          *v90 = 136315138;
          v118 = sub_100027D8C();
          v120 = v119;
          sub_10001FAA8(v87, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          v121 = sub_100027364(v118, v120, v135);

          *(v90 + 4) = v121;
          v96 = "No resolved entity found in the ControlHomeIntent after disambiguation selection in request: %s";
          goto LABEL_87;
        }

        goto LABEL_88;
      }
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v124 = v26;
      if (v29)
      {
        goto LABEL_6;
      }
    }

LABEL_50:
    v61 = 0;
    goto LABEL_51;
  }

  sub_10000EDEC(v14, &qword_100034E28, &qword_100029570);
LABEL_22:
  v39 = v132;
  if (qword_100034AF8 != -1)
  {
LABEL_46:
    swift_once();
  }

  v40 = sub_10002858C();
  sub_10000AEF4(v40, qword_100035430);
  sub_10000ED84(a2, v12, &qword_100034E28, &qword_100029570);
  v41 = sub_10002856C();
  v42 = sub_10002875C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v135[0] = v44;
    *v43 = 136315138;
    sub_10000ED84(v12, v9, &qword_100034E28, &qword_100029570);
    if (v27(v9, 1, v39) == 1)
    {
      sub_10000EDEC(v9, &qword_100034E28, &qword_100029570);
      v45 = sub_100027DAC();
      (*(*(v45 - 8) + 56))(v130, 1, 1, v45);
    }

    else
    {
      v46 = *(v39 + 5);
      v47 = sub_100027DAC();
      v48 = *(v47 - 8);
      v49 = v9 + v46;
      v50 = v130;
      (*(v48 + 16))(v130, v49, v47);
      sub_10001FAA8(v9, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      (*(v48 + 56))(v50, 0, 1, v47);
    }

    v51 = sub_10002861C();
    v53 = v52;
    sub_10000EDEC(v12, &qword_100034E28, &qword_100029570);
    v54 = sub_100027364(v51, v53, v135);

    *(v43 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v41, v42, "The next turn is outside the response window for a disambiguation selection; requestId=%s", v43, 0xCu);
    sub_100001EB8(v44);
  }

  else
  {

    sub_10000EDEC(v12, &qword_100034E28, &qword_100029570);
  }

  v55 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
  return (*(*(v55 - 8) + 56))(v131, 1, 1, v55);
}