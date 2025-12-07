uint64_t sub_1000D4B58()
{
  v22 = v0;
  v1 = SyncFacesRequest.cachedIdentifiers.getter();
  v2 = sub_10006C038(v1);
  v0[30] = v2;

  v3 = SyncFacesRequest.trackedFaces.getter();
  v0[31] = sub_10006C038(v3);

  static Log.photos.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  if (v6)
  {
    v20 = v0[24];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 134218242;
    *(v10 + 4) = *(v2 + 16);

    *(v10 + 12) = 2080;
    sub_1000FAACC(&qword_10012A1F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = Set.description.getter();
    v14 = sub_100102F80(v12, v13, &v21);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Remote device has %ld cached, and is requesting faces: %s", v10, 0x16u);
    sub_10000C304(v11);

    v15 = *(v8 + 8);
    v15(v20, v9);
  }

  else
  {

    v15 = *(v8 + 8);
    v15(v7, v9);
  }

  v0[32] = v15;
  v0[33] = static CommunicationActor.shared.getter();
  v16 = type metadata accessor for AlbumDatabase();
  v17 = sub_1000FAACC(&qword_10012A488, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
  v18 = swift_task_alloc();
  v0[34] = v18;
  *v18 = v0;
  v18[1] = sub_1000D4E28;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v16, v17);
}

uint64_t sub_1000D4E28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = sub_1000D5770;
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = sub_1000D4FA4;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000D4FA4()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_1000D5008, v1, v2);
}

uint64_t sub_1000D5008()
{
  v73 = v0;
  v1 = PhotosFaceType.rawValue.getter();
  v3 = v2;
  if (v1 == PhotosFaceType.rawValue.getter() && v3 == v4)
  {

LABEL_8:

    v12 = v0[35];
LABEL_30:
    v0[37] = v12;
    static Log.session.getter();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[32];
    v42 = v0[23];
    v43 = v0[21];
    if (v40)
    {
      v71 = v0[23];
      v44 = swift_slowAlloc();
      v69 = v41;
      v45 = swift_slowAlloc();
      v72 = v45;
      *v44 = 134218242;
      *(v44 + 4) = v12[2];

      *(v44 + 12) = 2080;
      v67 = v43;
      v46 = PhotosFaceType.description.getter();
      v48 = v47;

      v49 = sub_100102F80(v46, v48, &v72);

      *(v44 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "Sending %ld %s to remote device:", v44, 0x16u);
      sub_10000C304(v45);

      v69(v71, v67);
    }

    else
    {

      v41(v42, v43);
    }

    v50 = v0[30];
    v51 = v0[6];
    v0[2] = v12;
    v52 = swift_task_alloc();
    v0[38] = v52;
    *(v52 + 16) = v51;
    *(v52 + 24) = v50;
    v53 = swift_task_alloc();
    v0[39] = v53;
    v54 = sub_10000560C(&qword_10012B5D8, &qword_10010A930);
    v55 = sub_10000560C(&qword_10012B5E0, &qword_10010A938);
    v0[40] = v55;
    v11 = sub_10000CC24(&qword_10012B5E8, &qword_10012B5D8, &qword_10010A930, &protocol conformance descriptor for [A]);
    *v53 = v0;
    v53[1] = sub_1000D58A0;
    v7 = &unk_10010A928;
    v8 = v52;
    v9 = v54;
    v10 = v55;

    return Sequence.asyncMap<A>(predicate:)(v7, v8, v9, v10, v11);
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    goto LABEL_8;
  }

  v13 = v0[35];
  v63 = *(v13 + 16);
  if (!v63)
  {
    v59 = _swiftEmptyArrayStorage;
LABEL_29:

    v12 = v59;
    goto LABEL_30;
  }

  v14 = 0;
  v15 = v0[18];
  v70 = v0[31];
  v68 = v70 + 56;
  v16 = (v0[14] + 8);
  v57 = v0[14];
  v58 = (v15 + 32);
  v59 = _swiftEmptyArrayStorage;
  v61 = v15;
  v62 = v0[35];
  v60 = (v15 + 8);
  while (v14 < *(v13 + 16))
  {
    v64 = *(v61 + 72);
    v65 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v66 = v14;
    (*(v61 + 16))(v0[20], v0[35] + v65 + v64 * v14, v0[17]);
    static CommunicationActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_1000FAACC(&qword_10012A048, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
    dispatch thunk of PhotosFaceID.id.getter();
    if (*(v70 + 16) && (sub_1000FAACC(&qword_10012A1F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v19 = dispatch thunk of Hashable._rawHashValue(seed:)(), v20 = -1 << *(v70 + 32), v21 = v19 & ~v20, ((*(v68 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
    {
      v22 = ~v20;
      v23 = *(v57 + 72);
      v24 = *(v57 + 16);
      while (1)
      {
        v25 = v0[15];
        v26 = v0[13];
        v24(v25, *(v70 + 48) + v21 * v23, v26);
        sub_1000FAACC(&qword_10012A660, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        v28 = *v16;
        (*v16)(v25, v26);
        if (v27)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v68 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = v0[19];
      v30 = v0[20];
      v31 = v0[17];
      v28(v0[16], v0[13]);

      v32 = *v58;
      (*v58)(v29, v30, v31);
      v33 = v59;
      v72 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005C798(0, v59[2] + 1, 1);
        v33 = v72;
      }

      v35 = *(v33 + 16);
      v34 = *(v33 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_10005C798((v34 > 1), v35 + 1, 1);
        v33 = v72;
      }

      v36 = v0[19];
      v37 = v0[17];
      *(v33 + 16) = v35 + 1;
      v59 = v33;
      v7 = v32(v33 + v65 + v35 * v64, v36, v37);
    }

    else
    {
LABEL_11:
      v17 = v0[20];
      v18 = v0[17];
      (*v16)(v0[16], v0[13]);

      v7 = (*v60)(v17, v18);
    }

    v14 = v66 + 1;
    v13 = v62;
    if (v66 + 1 == v63)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return Sequence.asyncMap<A>(predicate:)(v7, v8, v9, v10, v11);
}

uint64_t sub_1000D5770()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_1000D57D4, v1, v2);
}

uint64_t sub_1000D57D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D58A0(uint64_t a1)
{
  v3 = *v2;
  v3[41] = a1;
  v3[42] = v1;

  if (v1)
  {
    v4 = v3[28];
    v5 = v3[29];
    v6 = sub_1000D5EF4;
  }

  else
  {

    v4 = v3[28];
    v5 = v3[29];
    v6 = sub_1000D59D8;
  }

  return _swift_task_switch(v6, v4, v5);
}

void *sub_1000D59D8()
{
  v1 = v0[41];

  v34 = *(v1 + 16);
  v35 = v1;
  if (!v34)
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_43:
    v28 = v0[8];
    v29 = v0[9];
    v30 = v0[7];

    v0[3] = v5;
    sub_10000CC24(&qword_10012B5F0, &qword_10012B5E0, &qword_10010A938, &protocol conformance descriptor for [A]);
    Sequence.async.getter();

    sub_10000CC24(&qword_10012B5F8, &qword_10012B5D0, &qword_10010A918, &protocol conformance descriptor for AsyncSyncSequence<A>);
    AsyncSequence<>.throwing.getter();
    (*(v28 + 8))(v29, v30);

    v31 = v0[1];

    return v31();
  }

  v3 = 0;
  v4 = v0[11];
  v33 = v0[41] + 32;
  v38 = (v4 + 8);
  v5 = _swiftEmptyArrayStorage;
  v32 = v4;
  while (1)
  {
    if (v3 >= *(v35 + 16))
    {
      goto LABEL_50;
    }

    v6 = *(v33 + 8 * v3);

    static CommunicationActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v7 = v6;
    v8 = *(v6 + 16);
    if (v8)
    {
      break;
    }

    v11 = _swiftEmptyArrayStorage;
LABEL_29:

    v22 = v11[2];
    v23 = v5[2];
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      goto LABEL_51;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v24 <= v5[3] >> 1)
    {
      if (v11[2])
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v23 <= v24)
      {
        v25 = v23 + v22;
      }

      else
      {
        v25 = v23;
      }

      result = sub_1001002F4(result, v25, 1, v5);
      v5 = result;
      if (v11[2])
      {
LABEL_38:
        if ((v5[3] >> 1) - v5[2] < v22)
        {
          goto LABEL_53;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v26 = v5[2];
          v20 = __OFADD__(v26, v22);
          v27 = v26 + v22;
          if (v20)
          {
            goto LABEL_54;
          }

          v5[2] = v27;
        }

        goto LABEL_4;
      }
    }

    if (v22)
    {
      goto LABEL_52;
    }

LABEL_4:
    if (++v3 == v34)
    {
      goto LABEL_43;
    }
  }

  v36 = v3;
  v37 = v5;
  v9 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v10 = *(v4 + 72);
  v39 = *(v4 + 16);
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v39(v0[12], v9, v0[10]);
    static CommunicationActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v12 = v0[12];
    v13 = v0[10];
    v14 = SyncedPhotosFace.streamify()();
    (*v38)(v12, v13);

    v15 = *(v14 + 16);
    v16 = v11[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v17 <= v11[3] >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v18 = v16 + v15;
      }

      else
      {
        v18 = v16;
      }

      result = sub_1001002F4(result, v18, 1, v11);
      v11 = result;
      if (*(v14 + 16))
      {
LABEL_23:
        if ((v11[3] >> 1) - v11[2] < v15)
        {
          goto LABEL_48;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v19 = v11[2];
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_49;
          }

          v11[2] = v21;
        }

        goto LABEL_11;
      }
    }

    if (v15)
    {
      goto LABEL_47;
    }

LABEL_11:
    v9 += v10;
    if (!--v8)
    {

      v3 = v36;
      v5 = v37;
      v4 = v32;
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
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_1000D5EF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D5FE0()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000D62F0();
}

uint64_t sub_1000D60A4()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000D6EF8();
}

uint64_t sub_1000D6168()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000D7B00();
}

uint64_t sub_1000D622C()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000D8708();
}

uint64_t sub_1000D62F0()
{
  v1[3] = v0;
  v2 = sub_10000560C(&qword_10012B488, &qword_10010A258);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v1[14] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v5;
  v1[16] = v4;

  return _swift_task_switch(sub_1000D64AC, v5, v4);
}

uint64_t sub_1000D64AC()
{
  result = static TestProperties.syncRetryAttempts.getter();
  *(v0 + 136) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    *(v0 + 184) = enum case for SyncedPhotosFace.Failure.missingPhotos<A>(_:);
    *(v0 + 144) = 0;
    static Log.session.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Attempt %ld to sync faces after a readyToSync request", v4, 0xCu);
    }

    v5 = *(v0 + 96);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);

    v8 = *(v7 + 8);
    *(v0 + 152) = v8;
    *(v0 + 160) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_1000D6768;

    return sub_100094594();
  }

  else
  {

    static Log.session.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 136);
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to sync faces after %ld attempts", v13, 0xCu);
    }

    v14 = *(v0 + 64);

    (*(v14 + 8))(*(v0 + 104), *(v0 + 56));

    v15 = *(v0 + 8);

    return v15();
  }

  return result;
}

uint64_t sub_1000D6768()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1000D68A4;
  }

  else
  {
    v5 = sub_1000FBE14;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000D68A4()
{
  v52 = v0;
  *(v0 + 16) = *(v0 + 176);
  swift_errorRetain();
  sub_10000560C(&qword_10012A308, &qword_100109000);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_7:

    static Log.session.getter();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 144);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 134218242;
      *(v23 + 4) = v22;
      *(v23 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Attempt %ld to sync faces failed %@", v23, 0x16u);
      sub_10000C460(v24, &qword_100129EF8, &qword_100108C70);
    }

    v26 = *(v0 + 152);
    v27 = *(v0 + 72);
    v28 = *(v0 + 56);

    v26(v27, v28);
    swift_willThrow();

    v29 = *(v0 + 8);
    goto LABEL_10;
  }

  v1 = *(v0 + 184);
  if ((*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32)) != v1)
  {
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);

    (*(v18 + 8))(v17, v19);
    goto LABEL_7;
  }

  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);

  (*(v3 + 96))(v2, v4);
  static Log.session.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  if (v7)
  {
    v9 = *(v0 + 144);
    v49 = *(v0 + 56);
    v50 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = v8;
    v12 = swift_slowAlloc();
    v51 = v12;
    *v10 = 134218242;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2080;
    type metadata accessor for UUID();
    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_100102F80(v13, v15, &v51);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Attempt %ld to sync faces: missing photos in faces %s", v10, 0x16u);
    sub_10000C304(v12);

    v11(v50, v49);
  }

  else
  {
    v31 = *(v0 + 80);
    v32 = *(v0 + 56);

    v8(v31, v32);
  }

  v33 = *(v0 + 136);
  v34 = *(v0 + 144) + 1;

  if (v34 == v33)
  {

    static Log.session.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 136);
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to sync faces after %ld attempts", v38, 0xCu);
    }

    v39 = *(v0 + 64);

    (*(v39 + 8))(*(v0 + 104), *(v0 + 56));

    v29 = *(v0 + 8);
LABEL_10:

    return v29();
  }

  v40 = *(v0 + 144) + 1;
  *(v0 + 144) = v40;
  static Log.session.getter();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v41, v42, "Attempt %ld to sync faces after a readyToSync request", v43, 0xCu);
  }

  v44 = *(v0 + 96);
  v45 = *(v0 + 56);
  v46 = *(v0 + 64);

  v47 = *(v46 + 8);
  *(v0 + 152) = v47;
  *(v0 + 160) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v44, v45);
  v48 = swift_task_alloc();
  *(v0 + 168) = v48;
  *v48 = v0;
  v48[1] = sub_1000D6768;

  return sub_100094594();
}

uint64_t sub_1000D6EF8()
{
  v1[3] = v0;
  v2 = sub_10000560C(&qword_10012B518, &qword_10010A578);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v1[14] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v5;
  v1[16] = v4;

  return _swift_task_switch(sub_1000D70B4, v5, v4);
}

uint64_t sub_1000D70B4()
{
  result = static TestProperties.syncRetryAttempts.getter();
  *(v0 + 136) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    *(v0 + 184) = enum case for SyncedPhotosFace.Failure.missingPhotos<A>(_:);
    *(v0 + 144) = 0;
    static Log.session.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Attempt %ld to sync faces after a readyToSync request", v4, 0xCu);
    }

    v5 = *(v0 + 96);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);

    v8 = *(v7 + 8);
    *(v0 + 152) = v8;
    *(v0 + 160) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_1000D7370;

    return sub_1000A2D30();
  }

  else
  {

    static Log.session.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 136);
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to sync faces after %ld attempts", v13, 0xCu);
    }

    v14 = *(v0 + 64);

    (*(v14 + 8))(*(v0 + 104), *(v0 + 56));

    v15 = *(v0 + 8);

    return v15();
  }

  return result;
}

uint64_t sub_1000D7370()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1000D74AC;
  }

  else
  {
    v5 = sub_1000FBE14;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000D74AC()
{
  v52 = v0;
  *(v0 + 16) = *(v0 + 176);
  swift_errorRetain();
  sub_10000560C(&qword_10012A308, &qword_100109000);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_7:

    static Log.session.getter();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 144);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 134218242;
      *(v23 + 4) = v22;
      *(v23 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Attempt %ld to sync faces failed %@", v23, 0x16u);
      sub_10000C460(v24, &qword_100129EF8, &qword_100108C70);
    }

    v26 = *(v0 + 152);
    v27 = *(v0 + 72);
    v28 = *(v0 + 56);

    v26(v27, v28);
    swift_willThrow();

    v29 = *(v0 + 8);
    goto LABEL_10;
  }

  v1 = *(v0 + 184);
  if ((*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32)) != v1)
  {
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);

    (*(v18 + 8))(v17, v19);
    goto LABEL_7;
  }

  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);

  (*(v3 + 96))(v2, v4);
  static Log.session.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  if (v7)
  {
    v9 = *(v0 + 144);
    v49 = *(v0 + 56);
    v50 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = v8;
    v12 = swift_slowAlloc();
    v51 = v12;
    *v10 = 134218242;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2080;
    type metadata accessor for UUID();
    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_100102F80(v13, v15, &v51);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Attempt %ld to sync faces: missing photos in faces %s", v10, 0x16u);
    sub_10000C304(v12);

    v11(v50, v49);
  }

  else
  {
    v31 = *(v0 + 80);
    v32 = *(v0 + 56);

    v8(v31, v32);
  }

  v33 = *(v0 + 136);
  v34 = *(v0 + 144) + 1;

  if (v34 == v33)
  {

    static Log.session.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 136);
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to sync faces after %ld attempts", v38, 0xCu);
    }

    v39 = *(v0 + 64);

    (*(v39 + 8))(*(v0 + 104), *(v0 + 56));

    v29 = *(v0 + 8);
LABEL_10:

    return v29();
  }

  v40 = *(v0 + 144) + 1;
  *(v0 + 144) = v40;
  static Log.session.getter();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v41, v42, "Attempt %ld to sync faces after a readyToSync request", v43, 0xCu);
  }

  v44 = *(v0 + 96);
  v45 = *(v0 + 56);
  v46 = *(v0 + 64);

  v47 = *(v46 + 8);
  *(v0 + 152) = v47;
  *(v0 + 160) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v44, v45);
  v48 = swift_task_alloc();
  *(v0 + 168) = v48;
  *v48 = v0;
  v48[1] = sub_1000D7370;

  return sub_1000A2D30();
}

uint64_t sub_1000D7B00()
{
  v1[3] = v0;
  v2 = sub_10000560C(&qword_10012B488, &qword_10010A258);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v1[14] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v5;
  v1[16] = v4;

  return _swift_task_switch(sub_1000D7CBC, v5, v4);
}

uint64_t sub_1000D7CBC()
{
  result = static TestProperties.syncRetryAttempts.getter();
  *(v0 + 136) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    *(v0 + 184) = enum case for SyncedPhotosFace.Failure.missingPhotos<A>(_:);
    *(v0 + 144) = 0;
    static Log.session.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Attempt %ld to sync faces after a readyToSync request", v4, 0xCu);
    }

    v5 = *(v0 + 96);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);

    v8 = *(v7 + 8);
    *(v0 + 152) = v8;
    *(v0 + 160) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_1000D7F78;

    return sub_1000B1B4C();
  }

  else
  {

    static Log.session.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 136);
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to sync faces after %ld attempts", v13, 0xCu);
    }

    v14 = *(v0 + 64);

    (*(v14 + 8))(*(v0 + 104), *(v0 + 56));

    v15 = *(v0 + 8);

    return v15();
  }

  return result;
}

uint64_t sub_1000D7F78()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1000D80B4;
  }

  else
  {
    v5 = sub_1000FBE14;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000D80B4()
{
  v52 = v0;
  *(v0 + 16) = *(v0 + 176);
  swift_errorRetain();
  sub_10000560C(&qword_10012A308, &qword_100109000);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_7:

    static Log.session.getter();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 144);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 134218242;
      *(v23 + 4) = v22;
      *(v23 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Attempt %ld to sync faces failed %@", v23, 0x16u);
      sub_10000C460(v24, &qword_100129EF8, &qword_100108C70);
    }

    v26 = *(v0 + 152);
    v27 = *(v0 + 72);
    v28 = *(v0 + 56);

    v26(v27, v28);
    swift_willThrow();

    v29 = *(v0 + 8);
    goto LABEL_10;
  }

  v1 = *(v0 + 184);
  if ((*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32)) != v1)
  {
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);

    (*(v18 + 8))(v17, v19);
    goto LABEL_7;
  }

  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);

  (*(v3 + 96))(v2, v4);
  static Log.session.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  if (v7)
  {
    v9 = *(v0 + 144);
    v49 = *(v0 + 56);
    v50 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = v8;
    v12 = swift_slowAlloc();
    v51 = v12;
    *v10 = 134218242;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2080;
    type metadata accessor for UUID();
    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_100102F80(v13, v15, &v51);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Attempt %ld to sync faces: missing photos in faces %s", v10, 0x16u);
    sub_10000C304(v12);

    v11(v50, v49);
  }

  else
  {
    v31 = *(v0 + 80);
    v32 = *(v0 + 56);

    v8(v31, v32);
  }

  v33 = *(v0 + 136);
  v34 = *(v0 + 144) + 1;

  if (v34 == v33)
  {

    static Log.session.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 136);
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to sync faces after %ld attempts", v38, 0xCu);
    }

    v39 = *(v0 + 64);

    (*(v39 + 8))(*(v0 + 104), *(v0 + 56));

    v29 = *(v0 + 8);
LABEL_10:

    return v29();
  }

  v40 = *(v0 + 144) + 1;
  *(v0 + 144) = v40;
  static Log.session.getter();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v41, v42, "Attempt %ld to sync faces after a readyToSync request", v43, 0xCu);
  }

  v44 = *(v0 + 96);
  v45 = *(v0 + 56);
  v46 = *(v0 + 64);

  v47 = *(v46 + 8);
  *(v0 + 152) = v47;
  *(v0 + 160) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v44, v45);
  v48 = swift_task_alloc();
  *(v0 + 168) = v48;
  *v48 = v0;
  v48[1] = sub_1000D7F78;

  return sub_1000B1B4C();
}

uint64_t sub_1000D8708()
{
  v1[3] = v0;
  v2 = sub_10000560C(&qword_10012B588, &qword_10010A8C0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v1[14] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v5;
  v1[16] = v4;

  return _swift_task_switch(sub_1000D88C4, v5, v4);
}

uint64_t sub_1000D88C4()
{
  result = static TestProperties.syncRetryAttempts.getter();
  *(v0 + 136) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    *(v0 + 184) = enum case for SyncedPhotosFace.Failure.missingPhotos<A>(_:);
    *(v0 + 144) = 0;
    static Log.session.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Attempt %ld to sync faces after a readyToSync request", v4, 0xCu);
    }

    v5 = *(v0 + 96);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);

    v8 = *(v7 + 8);
    *(v0 + 152) = v8;
    *(v0 + 160) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_1000D8B80;

    return sub_1000C0B00();
  }

  else
  {

    static Log.session.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 136);
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to sync faces after %ld attempts", v13, 0xCu);
    }

    v14 = *(v0 + 64);

    (*(v14 + 8))(*(v0 + 104), *(v0 + 56));

    v15 = *(v0 + 8);

    return v15();
  }

  return result;
}

uint64_t sub_1000D8B80()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1000D8E04;
  }

  else
  {
    v5 = sub_1000D8CBC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000D8CBC()
{

  static Log.session.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 144);
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "Attempt %ld to sync faces: succeeded", v4, 0xCu);
  }

  (*(v0 + 152))(*(v0 + 88), *(v0 + 56));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000D8E04()
{
  v52 = v0;
  *(v0 + 16) = *(v0 + 176);
  swift_errorRetain();
  sub_10000560C(&qword_10012A308, &qword_100109000);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_7:

    static Log.session.getter();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 144);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 134218242;
      *(v23 + 4) = v22;
      *(v23 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Attempt %ld to sync faces failed %@", v23, 0x16u);
      sub_10000C460(v24, &qword_100129EF8, &qword_100108C70);
    }

    v26 = *(v0 + 152);
    v27 = *(v0 + 72);
    v28 = *(v0 + 56);

    v26(v27, v28);
    swift_willThrow();

    v29 = *(v0 + 8);
    goto LABEL_10;
  }

  v1 = *(v0 + 184);
  if ((*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32)) != v1)
  {
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);

    (*(v18 + 8))(v17, v19);
    goto LABEL_7;
  }

  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);

  (*(v3 + 96))(v2, v4);
  static Log.session.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  if (v7)
  {
    v9 = *(v0 + 144);
    v49 = *(v0 + 56);
    v50 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = v8;
    v12 = swift_slowAlloc();
    v51 = v12;
    *v10 = 134218242;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2080;
    type metadata accessor for UUID();
    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_100102F80(v13, v15, &v51);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Attempt %ld to sync faces: missing photos in faces %s", v10, 0x16u);
    sub_10000C304(v12);

    v11(v50, v49);
  }

  else
  {
    v31 = *(v0 + 80);
    v32 = *(v0 + 56);

    v8(v31, v32);
  }

  v33 = *(v0 + 136);
  v34 = *(v0 + 144) + 1;

  if (v34 == v33)
  {

    static Log.session.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 136);
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to sync faces after %ld attempts", v38, 0xCu);
    }

    v39 = *(v0 + 64);

    (*(v39 + 8))(*(v0 + 104), *(v0 + 56));

    v29 = *(v0 + 8);
LABEL_10:

    return v29();
  }

  v40 = *(v0 + 144) + 1;
  *(v0 + 144) = v40;
  static Log.session.getter();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v41, v42, "Attempt %ld to sync faces after a readyToSync request", v43, 0xCu);
  }

  v44 = *(v0 + 96);
  v45 = *(v0 + 56);
  v46 = *(v0 + 64);

  v47 = *(v46 + 8);
  *(v0 + 152) = v47;
  *(v0 + 160) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v44, v45);
  v48 = swift_task_alloc();
  *(v0 + 168) = v48;
  *v48 = v0;
  v48[1] = sub_1000D8B80;

  return sub_1000C0B00();
}

uint64_t sub_1000D9458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for ShuffleID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for CommunicationActor();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D9590, v7, v6);
}

uint64_t sub_1000D9590()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];

  static CommunicationActor.shared.getter();
  (*(v2 + 16))(v1, v3, v4);
  v7 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  (*(v2 + 32))(v8 + v7, v1, v4);
  v6[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v6[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v6);

  generateElements<A>(isolation:_:)();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000D973C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for DailyID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for CommunicationActor();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D9874, v7, v6);
}

uint64_t sub_1000D9874()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];

  static CommunicationActor.shared.getter();
  (*(v2 + 16))(v1, v3, v4);
  v7 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  (*(v2 + 32))(v8 + v7, v1, v4);
  v6[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v6[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v6);

  generateElements<A>(isolation:_:)();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000D9A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for ShuffleID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for CommunicationActor();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D9B58, v7, v6);
}

uint64_t sub_1000D9B58()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];

  static CommunicationActor.shared.getter();
  (*(v2 + 16))(v1, v3, v4);
  v7 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  (*(v2 + 32))(v8 + v7, v1, v4);
  v6[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v6[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v6);

  generateElements<A>(isolation:_:)();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000D9D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for AlbumID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for CommunicationActor();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D9E3C, v7, v6);
}

uint64_t sub_1000D9E3C()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];

  static CommunicationActor.shared.getter();
  (*(v2 + 16))(v1, v3, v4);
  v7 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  (*(v2 + 32))(v8 + v7, v1, v4);
  v6[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v6[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v6);

  generateElements<A>(isolation:_:)();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000D9FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for ShuffleID();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v8 = type metadata accessor for StoredPhoto();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v4[28] = swift_task_alloc();
  v9 = sub_10000560C(&qword_10012AA18, &qword_100109A00);
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v10 = sub_10000560C(&qword_10012AA20, &qword_100109A08);
  v4[32] = v10;
  v4[33] = *(v10 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA340, 0, 0);
}

uint64_t sub_1000DA340()
{
  v1 = *(v0 + 64);
  *(v0 + 288) = *(v1 + 96);
  *(v0 + 460) = *(v1 + 16);
  type metadata accessor for CommunicationActor();
  *(v0 + 296) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DA418, v3, v2);
}

uint64_t sub_1000DA418()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 72);
  v3 = *(v0 + 460);

  sub_100087F38(v3, v2, v1);
  *(v0 + 304) = 0;

  return _swift_task_switch(sub_1000DA4C8, 0, 0);
}

uint64_t sub_1000DA4C8()
{
  (*(v0[33] + 16))(v0[34], v0[35], v0[32]);
  sub_10000CC24(&qword_10012AA28, &qword_10012AA20, &qword_100109A08, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_1000DA614;
  v3 = v0[28];
  v4 = v0[29];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, 0, 0, v0 + 2, v4, v1);
}

uint64_t sub_1000DA614()
{

  if (v0)
  {
    v1 = sub_1000FBEF8;
  }

  else
  {
    v1 = sub_1000DA724;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000DA724()
{
  v56 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 72);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    static Log.photos.getter();
    v8 = *(v6 + 16);
    v8(v4, v7, v5);
    swift_retain_n();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    log = v9;
    if (os_log_type_enabled(v9, v10))
    {
      v51 = *(v0 + 256);
      v52 = *(v0 + 280);
      v49 = *(v0 + 176);
      v50 = *(v0 + 264);
      v11 = *(v0 + 152);
      v47 = *(v0 + 168);
      v48 = *(v0 + 160);
      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      v14 = *(v0 + 128);
      v15 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v15 = 136315394;
      v8(v12, v11, v14);
      v16 = *(v13 + 8);
      v16(v11, v14);
      sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v16(v12, v14);
      v20 = sub_100102F80(v17, v19, &v55);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;

      v21 = PhotosFaceType.description.getter();
      v23 = v22;

      v24 = sub_100102F80(v21, v23, &v55);

      *(v15 + 14) = v24;
      _os_log_impl(&_mh_execute_header, log, v10, "Completed tracking %s for type %s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v47 + 8))(v49, v48);
      (*(v50 + 8))(v52, v51);
    }

    else
    {
      v53 = *(v0 + 280);
      v37 = *(v0 + 256);
      v38 = *(v0 + 264);
      v39 = *(v0 + 168);
      v40 = *(v0 + 176);
      v42 = *(v0 + 152);
      v41 = *(v0 + 160);
      v44 = *(v0 + 128);
      v43 = *(v0 + 136);

      (*(v43 + 8))(v42, v44);

      (*(v39 + 8))(v40, v41);
      (*(v38 + 8))(v53, v37);
    }

    v45 = *(v0 + 8);

    return v45();
  }

  else
  {
    v25 = *(v0 + 216);
    v26 = *(v0 + 64);
    v27 = *(v3 + 32);
    *(v0 + 320) = v27;
    *(v0 + 328) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v27(v25, v1, v2);
    v28 = *(v26 + 104);
    sub_10000560C(&qword_10012A600, &qword_100109468);
    *(v0 + 336) = *(v3 + 72);
    v29 = *(v3 + 80);
    *(v0 + 456) = v29;
    v30 = (v29 + 32) & ~v29;
    v31 = swift_allocObject();
    *(v0 + 344) = v31;
    *(v31 + 16) = xmmword_1001089C0;
    v32 = *(v3 + 16);
    *(v0 + 352) = v32;
    *(v0 + 360) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32(v31 + v30, v25, v2);
    *(v0 + 24) = v31;
    v33 = swift_task_alloc();
    *(v0 + 368) = v33;
    v34 = sub_10000560C(&qword_10012B4D0, &qword_10010A358);
    v35 = sub_10000CC24(&qword_10012B4D8, &qword_10012B4D0, &qword_10010A358, &protocol conformance descriptor for [A]);
    *v33 = v0;
    v33[1] = sub_1000DACF0;
    v36 = *(v0 + 184);

    return Sequence.asyncMap<A>(predicate:)(&unk_10010A478, v28, v34, v36, v35);
  }
}

uint64_t sub_1000DACF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_1000FBEC8;
  }

  else
  {

    v4 = sub_1000DAE0C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000DAE0C()
{
  v1 = *(*(v0 + 64) + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 376);
  *(v0 + 392) = v1;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (*(v0 + 456) + 32) & ~*(v0 + 456);
    *(v0 + 40) = _swiftEmptyArrayStorage;

    sub_10005C508(0, v3, 0);
    v5 = 0;
    v6 = *(v0 + 40);
    v7 = v2 + v4;
    do
    {
      v9 = *(v0 + 192);
      v8 = *(v0 + 200);
      v10 = *(v0 + 184);
      (*(v0 + 352))(v8, v7 + *(v0 + 336) * v5, v10);
      StoredPhoto.localIdentifier.getter();
      (*(v9 + 8))(v8, v10);
      *(v0 + 40) = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_10005C508((v11 > 1), v12 + 1, 1);
        v6 = *(v0 + 40);
      }

      v14 = *(v0 + 104);
      v13 = *(v0 + 112);
      v15 = *(v0 + 96);
      ++v5;
      v6[2] = v12 + 1;
      (*(v14 + 32))(v6 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v13, v15);
    }

    while (v3 != v5);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  *(v0 + 400) = v6;
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  v16 = static TimeUtilities.currentEpoch.getter();
  v17 = type metadata accessor for GalleryDatabase();
  v18 = sub_1000FAACC(&qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
  v19 = swift_task_alloc();
  *(v0 + 408) = v19;
  *v19 = v0;
  v19[1] = sub_1000DB094;
  v20 = *(v0 + 120);

  return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v6, v20, v16, v17, v18);
}

uint64_t sub_1000DB094()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v6 = v2 + 96;
    v4 = *(v2 + 96);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = sub_1000FBEEC;
  }

  else
  {
    v8 = *(v2 + 120);
    v11 = v2 + 96;
    v9 = *(v2 + 96);
    v10 = *(v11 + 8);

    (*(v10 + 8))(v8, v9);

    v7 = sub_1000DB224;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000DB224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 376);
  v8 = *(v7 + 16);
  *(v6 + 424) = v8;
  if (!v8)
  {
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184), a3, a4, a5, a6);

    v20 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
    v21 = swift_task_alloc();
    *(v6 + 312) = v21;
    *v21 = v6;
    v21[1] = sub_1000DA614;
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v20;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v9 = *(v6 + 456);
  *(v6 + 432) = 0;
  if (!*(v7 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v10 = *(v6 + 320);
  v11 = *(v6 + 208);
  v12 = *(v6 + 184);
  v14 = *(v6 + 80);
  v13 = *(v6 + 88);
  v15 = *(v6 + 48);
  (*(v6 + 352))(v11, v7 + ((v9 + 32) & ~v9), v12, a4, a5, a6);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001089C0;
  *(v16 + 32) = static TimeUtilities.currentEpoch.getter();
  *v13 = v16;
  v10(v13 + *(v14 + 48), v11, v12);
  v22 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v6 + 440) = v17;
  *v17 = v6;
  v17[1] = sub_1000DB4BC;
  v18 = *(v6 + 88);

  return v22(v18);
}

uint64_t sub_1000DB4BC()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  sub_10000C460(*(v2 + 88), &qword_10012A428, &unk_1001091B0);
  if (v0)
  {

    v3 = sub_1000FBE28;
  }

  else
  {
    v3 = sub_1000DB60C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DB60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 432) + 1;
  if (v7 == *(v6 + 424))
  {
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184), a3, a4, a5, a6);

    v8 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
    v9 = swift_task_alloc();
    *(v6 + 312) = v9;
    *v9 = v6;
    v9[1] = sub_1000DA614;
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v8;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  *(v6 + 432) = v7;
  v10 = *(v6 + 376);
  if (v7 >= *(v10 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v11 = *(v6 + 320);
  v12 = *(v6 + 208);
  v13 = *(v6 + 184);
  v15 = *(v6 + 80);
  v14 = *(v6 + 88);
  v16 = *(v6 + 48);
  (*(v6 + 352))(v12, v10 + ((*(v6 + 456) + 32) & ~*(v6 + 456)) + *(v6 + 336) * v7, v13, a4, a5, a6);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001089C0;
  *(v17 + 32) = static TimeUtilities.currentEpoch.getter();
  *v14 = v17;
  v11(v14 + *(v15 + 48), v12, v13);
  v21 = (v16 + *v16);
  v18 = swift_task_alloc();
  *(v6 + 440) = v18;
  *v18 = v6;
  v18[1] = sub_1000DB4BC;
  v19 = *(v6 + 88);

  return v21(v19);
}

uint64_t sub_1000DB8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for DailyID();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v8 = type metadata accessor for StoredPhoto();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v4[28] = swift_task_alloc();
  v9 = sub_10000560C(&qword_10012AA18, &qword_100109A00);
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v10 = sub_10000560C(&qword_10012AA20, &qword_100109A08);
  v4[32] = v10;
  v4[33] = *(v10 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DBC10, 0, 0);
}

uint64_t sub_1000DBC10()
{
  v1 = *(v0 + 64);
  *(v0 + 288) = *(v1 + 96);
  *(v0 + 460) = *(v1 + 16);
  type metadata accessor for CommunicationActor();
  *(v0 + 296) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DBCE8, v3, v2);
}

uint64_t sub_1000DBCE8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 72);
  v3 = *(v0 + 460);

  sub_100088450(v3, v2, v1);
  *(v0 + 304) = 0;

  return _swift_task_switch(sub_1000DBD98, 0, 0);
}

uint64_t sub_1000DBD98()
{
  (*(v0[33] + 16))(v0[34], v0[35], v0[32]);
  sub_10000CC24(&qword_10012AA28, &qword_10012AA20, &qword_100109A08, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_1000DBEE4;
  v3 = v0[28];
  v4 = v0[29];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, 0, 0, v0 + 2, v4, v1);
}

uint64_t sub_1000DBEE4()
{

  if (v0)
  {
    v1 = sub_1000FBEF8;
  }

  else
  {
    v1 = sub_1000DBFF4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000DBFF4()
{
  v56 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 72);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    static Log.photos.getter();
    v8 = *(v6 + 16);
    v8(v4, v7, v5);
    swift_retain_n();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    log = v9;
    if (os_log_type_enabled(v9, v10))
    {
      v51 = *(v0 + 256);
      v52 = *(v0 + 280);
      v49 = *(v0 + 176);
      v50 = *(v0 + 264);
      v11 = *(v0 + 152);
      v47 = *(v0 + 168);
      v48 = *(v0 + 160);
      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      v14 = *(v0 + 128);
      v15 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v15 = 136315394;
      v8(v12, v11, v14);
      v16 = *(v13 + 8);
      v16(v11, v14);
      sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v16(v12, v14);
      v20 = sub_100102F80(v17, v19, &v55);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;

      v21 = PhotosFaceType.description.getter();
      v23 = v22;

      v24 = sub_100102F80(v21, v23, &v55);

      *(v15 + 14) = v24;
      _os_log_impl(&_mh_execute_header, log, v10, "Completed tracking %s for type %s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v47 + 8))(v49, v48);
      (*(v50 + 8))(v52, v51);
    }

    else
    {
      v53 = *(v0 + 280);
      v37 = *(v0 + 256);
      v38 = *(v0 + 264);
      v39 = *(v0 + 168);
      v40 = *(v0 + 176);
      v42 = *(v0 + 152);
      v41 = *(v0 + 160);
      v44 = *(v0 + 128);
      v43 = *(v0 + 136);

      (*(v43 + 8))(v42, v44);

      (*(v39 + 8))(v40, v41);
      (*(v38 + 8))(v53, v37);
    }

    v45 = *(v0 + 8);

    return v45();
  }

  else
  {
    v25 = *(v0 + 216);
    v26 = *(v0 + 64);
    v27 = *(v3 + 32);
    *(v0 + 320) = v27;
    *(v0 + 328) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v27(v25, v1, v2);
    v28 = *(v26 + 104);
    sub_10000560C(&qword_10012A600, &qword_100109468);
    *(v0 + 336) = *(v3 + 72);
    v29 = *(v3 + 80);
    *(v0 + 456) = v29;
    v30 = (v29 + 32) & ~v29;
    v31 = swift_allocObject();
    *(v0 + 344) = v31;
    *(v31 + 16) = xmmword_1001089C0;
    v32 = *(v3 + 16);
    *(v0 + 352) = v32;
    *(v0 + 360) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32(v31 + v30, v25, v2);
    *(v0 + 24) = v31;
    v33 = swift_task_alloc();
    *(v0 + 368) = v33;
    v34 = sub_10000560C(&qword_10012B4D0, &qword_10010A358);
    v35 = sub_10000CC24(&qword_10012B4D8, &qword_10012B4D0, &qword_10010A358, &protocol conformance descriptor for [A]);
    *v33 = v0;
    v33[1] = sub_1000DC5C0;
    v36 = *(v0 + 184);

    return Sequence.asyncMap<A>(predicate:)(&unk_10010A650, v28, v34, v36, v35);
  }
}

uint64_t sub_1000DC5C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_1000FBEC8;
  }

  else
  {

    v4 = sub_1000DC6DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000DC6DC()
{
  v1 = *(*(v0 + 64) + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 376);
  *(v0 + 392) = v1;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (*(v0 + 456) + 32) & ~*(v0 + 456);
    *(v0 + 40) = _swiftEmptyArrayStorage;

    sub_10005C508(0, v3, 0);
    v5 = 0;
    v6 = *(v0 + 40);
    v7 = v2 + v4;
    do
    {
      v9 = *(v0 + 192);
      v8 = *(v0 + 200);
      v10 = *(v0 + 184);
      (*(v0 + 352))(v8, v7 + *(v0 + 336) * v5, v10);
      StoredPhoto.localIdentifier.getter();
      (*(v9 + 8))(v8, v10);
      *(v0 + 40) = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_10005C508((v11 > 1), v12 + 1, 1);
        v6 = *(v0 + 40);
      }

      v14 = *(v0 + 104);
      v13 = *(v0 + 112);
      v15 = *(v0 + 96);
      ++v5;
      v6[2] = v12 + 1;
      (*(v14 + 32))(v6 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v13, v15);
    }

    while (v3 != v5);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  *(v0 + 400) = v6;
  sub_1000FAACC(&qword_10012A178, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
  dispatch thunk of PhotosFaceID.id.getter();
  v16 = static TimeUtilities.currentEpoch.getter();
  v17 = type metadata accessor for DailyDatabase();
  v18 = sub_1000FAACC(&qword_10012A470, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
  v19 = swift_task_alloc();
  *(v0 + 408) = v19;
  *v19 = v0;
  v19[1] = sub_1000DC964;
  v20 = *(v0 + 120);

  return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v6, v20, v16, v17, v18);
}

uint64_t sub_1000DC964()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v6 = v2 + 96;
    v4 = *(v2 + 96);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = sub_1000FBEEC;
  }

  else
  {
    v8 = *(v2 + 120);
    v11 = v2 + 96;
    v9 = *(v2 + 96);
    v10 = *(v11 + 8);

    (*(v10 + 8))(v8, v9);

    v7 = sub_1000DCAF4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000DCAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 376);
  v8 = *(v7 + 16);
  *(v6 + 424) = v8;
  if (!v8)
  {
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184), a3, a4, a5, a6);

    v20 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
    v21 = swift_task_alloc();
    *(v6 + 312) = v21;
    *v21 = v6;
    v21[1] = sub_1000DBEE4;
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v20;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v9 = *(v6 + 456);
  *(v6 + 432) = 0;
  if (!*(v7 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v10 = *(v6 + 320);
  v11 = *(v6 + 208);
  v12 = *(v6 + 184);
  v14 = *(v6 + 80);
  v13 = *(v6 + 88);
  v15 = *(v6 + 48);
  (*(v6 + 352))(v11, v7 + ((v9 + 32) & ~v9), v12, a4, a5, a6);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001089C0;
  *(v16 + 32) = static TimeUtilities.currentEpoch.getter();
  *v13 = v16;
  v10(v13 + *(v14 + 48), v11, v12);
  v22 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v6 + 440) = v17;
  *v17 = v6;
  v17[1] = sub_1000DCD8C;
  v18 = *(v6 + 88);

  return v22(v18);
}

uint64_t sub_1000DCD8C()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  sub_10000C460(*(v2 + 88), &qword_10012A428, &unk_1001091B0);
  if (v0)
  {

    v3 = sub_1000FBE28;
  }

  else
  {
    v3 = sub_1000DCEDC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DCEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 432) + 1;
  if (v7 == *(v6 + 424))
  {
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184), a3, a4, a5, a6);

    v8 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
    v9 = swift_task_alloc();
    *(v6 + 312) = v9;
    *v9 = v6;
    v9[1] = sub_1000DBEE4;
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v8;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  *(v6 + 432) = v7;
  v10 = *(v6 + 376);
  if (v7 >= *(v10 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v11 = *(v6 + 320);
  v12 = *(v6 + 208);
  v13 = *(v6 + 184);
  v15 = *(v6 + 80);
  v14 = *(v6 + 88);
  v16 = *(v6 + 48);
  (*(v6 + 352))(v12, v10 + ((*(v6 + 456) + 32) & ~*(v6 + 456)) + *(v6 + 336) * v7, v13, a4, a5, a6);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001089C0;
  *(v17 + 32) = static TimeUtilities.currentEpoch.getter();
  *v14 = v17;
  v11(v14 + *(v15 + 48), v12, v13);
  v21 = (v16 + *v16);
  v18 = swift_task_alloc();
  *(v6 + 440) = v18;
  *v18 = v6;
  v18[1] = sub_1000DCD8C;
  v19 = *(v6 + 88);

  return v21(v19);
}

uint64_t sub_1000DD188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for ShuffleID();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v8 = type metadata accessor for StoredPhoto();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v4[28] = swift_task_alloc();
  v9 = sub_10000560C(&qword_10012AA18, &qword_100109A00);
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v10 = sub_10000560C(&qword_10012AA20, &qword_100109A08);
  v4[32] = v10;
  v4[33] = *(v10 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD4E0, 0, 0);
}

uint64_t sub_1000DD4E0()
{
  v1 = *(v0 + 64);
  *(v0 + 288) = *(v1 + 96);
  *(v0 + 460) = *(v1 + 16);
  type metadata accessor for CommunicationActor();
  *(v0 + 296) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DD5B8, v3, v2);
}

uint64_t sub_1000DD5B8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 72);
  v3 = *(v0 + 460);

  sub_100087F38(v3, v2, v1);
  *(v0 + 304) = 0;

  return _swift_task_switch(sub_1000DD668, 0, 0);
}

uint64_t sub_1000DD668()
{
  (*(v0[33] + 16))(v0[34], v0[35], v0[32]);
  sub_10000CC24(&qword_10012AA28, &qword_10012AA20, &qword_100109A08, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_1000DD7B4;
  v3 = v0[28];
  v4 = v0[29];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, 0, 0, v0 + 2, v4, v1);
}

uint64_t sub_1000DD7B4()
{

  if (v0)
  {
    v1 = sub_1000FBEF8;
  }

  else
  {
    v1 = sub_1000DD8C4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000DD8C4()
{
  v56 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 72);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    static Log.photos.getter();
    v8 = *(v6 + 16);
    v8(v4, v7, v5);
    swift_retain_n();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    log = v9;
    if (os_log_type_enabled(v9, v10))
    {
      v51 = *(v0 + 256);
      v52 = *(v0 + 280);
      v49 = *(v0 + 176);
      v50 = *(v0 + 264);
      v11 = *(v0 + 152);
      v47 = *(v0 + 168);
      v48 = *(v0 + 160);
      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      v14 = *(v0 + 128);
      v15 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v15 = 136315394;
      v8(v12, v11, v14);
      v16 = *(v13 + 8);
      v16(v11, v14);
      sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v16(v12, v14);
      v20 = sub_100102F80(v17, v19, &v55);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;

      v21 = PhotosFaceType.description.getter();
      v23 = v22;

      v24 = sub_100102F80(v21, v23, &v55);

      *(v15 + 14) = v24;
      _os_log_impl(&_mh_execute_header, log, v10, "Completed tracking %s for type %s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v47 + 8))(v49, v48);
      (*(v50 + 8))(v52, v51);
    }

    else
    {
      v53 = *(v0 + 280);
      v37 = *(v0 + 256);
      v38 = *(v0 + 264);
      v39 = *(v0 + 168);
      v40 = *(v0 + 176);
      v42 = *(v0 + 152);
      v41 = *(v0 + 160);
      v44 = *(v0 + 128);
      v43 = *(v0 + 136);

      (*(v43 + 8))(v42, v44);

      (*(v39 + 8))(v40, v41);
      (*(v38 + 8))(v53, v37);
    }

    v45 = *(v0 + 8);

    return v45();
  }

  else
  {
    v25 = *(v0 + 216);
    v26 = *(v0 + 64);
    v27 = *(v3 + 32);
    *(v0 + 320) = v27;
    *(v0 + 328) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v27(v25, v1, v2);
    v28 = *(v26 + 104);
    sub_10000560C(&qword_10012A600, &qword_100109468);
    *(v0 + 336) = *(v3 + 72);
    v29 = *(v3 + 80);
    *(v0 + 456) = v29;
    v30 = (v29 + 32) & ~v29;
    v31 = swift_allocObject();
    *(v0 + 344) = v31;
    *(v31 + 16) = xmmword_1001089C0;
    v32 = *(v3 + 16);
    *(v0 + 352) = v32;
    *(v0 + 360) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32(v31 + v30, v25, v2);
    *(v0 + 24) = v31;
    v33 = swift_task_alloc();
    *(v0 + 368) = v33;
    v34 = sub_10000560C(&qword_10012B4D0, &qword_10010A358);
    v35 = sub_10000CC24(&qword_10012B4D8, &qword_10012B4D0, &qword_10010A358, &protocol conformance descriptor for [A]);
    *v33 = v0;
    v33[1] = sub_1000DDE90;
    v36 = *(v0 + 184);

    return Sequence.asyncMap<A>(predicate:)(&unk_10010A7D0, v28, v34, v36, v35);
  }
}

uint64_t sub_1000DDE90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_1000FBEC8;
  }

  else
  {

    v4 = sub_1000DDFAC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000DDFAC()
{
  v1 = *(*(v0 + 64) + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 376);
  *(v0 + 392) = v1;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (*(v0 + 456) + 32) & ~*(v0 + 456);
    *(v0 + 40) = _swiftEmptyArrayStorage;

    sub_10005C508(0, v3, 0);
    v5 = 0;
    v6 = *(v0 + 40);
    v7 = v2 + v4;
    do
    {
      v9 = *(v0 + 192);
      v8 = *(v0 + 200);
      v10 = *(v0 + 184);
      (*(v0 + 352))(v8, v7 + *(v0 + 336) * v5, v10);
      StoredPhoto.localIdentifier.getter();
      (*(v9 + 8))(v8, v10);
      *(v0 + 40) = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_10005C508((v11 > 1), v12 + 1, 1);
        v6 = *(v0 + 40);
      }

      v14 = *(v0 + 104);
      v13 = *(v0 + 112);
      v15 = *(v0 + 96);
      ++v5;
      v6[2] = v12 + 1;
      (*(v14 + 32))(v6 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v13, v15);
    }

    while (v3 != v5);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  *(v0 + 400) = v6;
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  v16 = static TimeUtilities.currentEpoch.getter();
  v17 = type metadata accessor for ShuffleDatabase();
  v18 = sub_1000FAACC(&qword_10012A480, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
  v19 = swift_task_alloc();
  *(v0 + 408) = v19;
  *v19 = v0;
  v19[1] = sub_1000DE234;
  v20 = *(v0 + 120);

  return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v6, v20, v16, v17, v18);
}

uint64_t sub_1000DE234()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v6 = v2 + 96;
    v4 = *(v2 + 96);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = sub_1000FBEEC;
  }

  else
  {
    v8 = *(v2 + 120);
    v11 = v2 + 96;
    v9 = *(v2 + 96);
    v10 = *(v11 + 8);

    (*(v10 + 8))(v8, v9);

    v7 = sub_1000DE3C4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000DE3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 376);
  v8 = *(v7 + 16);
  *(v6 + 424) = v8;
  if (!v8)
  {
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184), a3, a4, a5, a6);

    v20 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
    v21 = swift_task_alloc();
    *(v6 + 312) = v21;
    *v21 = v6;
    v21[1] = sub_1000DD7B4;
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v20;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v9 = *(v6 + 456);
  *(v6 + 432) = 0;
  if (!*(v7 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v10 = *(v6 + 320);
  v11 = *(v6 + 208);
  v12 = *(v6 + 184);
  v14 = *(v6 + 80);
  v13 = *(v6 + 88);
  v15 = *(v6 + 48);
  (*(v6 + 352))(v11, v7 + ((v9 + 32) & ~v9), v12, a4, a5, a6);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001089C0;
  *(v16 + 32) = static TimeUtilities.currentEpoch.getter();
  *v13 = v16;
  v10(v13 + *(v14 + 48), v11, v12);
  v22 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v6 + 440) = v17;
  *v17 = v6;
  v17[1] = sub_1000DE65C;
  v18 = *(v6 + 88);

  return v22(v18);
}

uint64_t sub_1000DE65C()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  sub_10000C460(*(v2 + 88), &qword_10012A428, &unk_1001091B0);
  if (v0)
  {

    v3 = sub_1000FBE28;
  }

  else
  {
    v3 = sub_1000DE7AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DE7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 432) + 1;
  if (v7 == *(v6 + 424))
  {
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184), a3, a4, a5, a6);

    v8 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
    v9 = swift_task_alloc();
    *(v6 + 312) = v9;
    *v9 = v6;
    v9[1] = sub_1000DD7B4;
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v8;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  *(v6 + 432) = v7;
  v10 = *(v6 + 376);
  if (v7 >= *(v10 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v11 = *(v6 + 320);
  v12 = *(v6 + 208);
  v13 = *(v6 + 184);
  v15 = *(v6 + 80);
  v14 = *(v6 + 88);
  v16 = *(v6 + 48);
  (*(v6 + 352))(v12, v10 + ((*(v6 + 456) + 32) & ~*(v6 + 456)) + *(v6 + 336) * v7, v13, a4, a5, a6);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001089C0;
  *(v17 + 32) = static TimeUtilities.currentEpoch.getter();
  *v14 = v17;
  v11(v14 + *(v15 + 48), v12, v13);
  v21 = (v16 + *v16);
  v18 = swift_task_alloc();
  *(v6 + 440) = v18;
  *v18 = v6;
  v18[1] = sub_1000DE65C;
  v19 = *(v6 + 88);

  return v21(v19);
}

uint64_t sub_1000DEA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for AlbumID();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v8 = type metadata accessor for StoredPhoto();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v4[28] = swift_task_alloc();
  v9 = sub_10000560C(&qword_10012AA18, &qword_100109A00);
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v10 = sub_10000560C(&qword_10012AA20, &qword_100109A08);
  v4[32] = v10;
  v4[33] = *(v10 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DEDB0, 0, 0);
}

uint64_t sub_1000DEDB0()
{
  v1 = *(v0 + 64);
  *(v0 + 288) = *(v1 + 96);
  *(v0 + 460) = *(v1 + 16);
  type metadata accessor for CommunicationActor();
  *(v0 + 296) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DEE88, v3, v2);
}

uint64_t sub_1000DEE88()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 72);
  v3 = *(v0 + 460);

  sub_100088968(v3, v2, v1);
  *(v0 + 304) = 0;

  return _swift_task_switch(sub_1000DEF38, 0, 0);
}

uint64_t sub_1000DEF38()
{
  (*(v0[33] + 16))(v0[34], v0[35], v0[32]);
  sub_10000CC24(&qword_10012AA28, &qword_10012AA20, &qword_100109A08, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_1000DF190;
  v3 = v0[28];
  v4 = v0[29];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, 0, 0, v0 + 2, v4, v1);
}

uint64_t sub_1000DF084()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DF190()
{

  if (v0)
  {
    v1 = sub_1000DF86C;
  }

  else
  {
    v1 = sub_1000DF2A0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000DF2A0()
{
  v56 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 72);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    static Log.photos.getter();
    v8 = *(v6 + 16);
    v8(v4, v7, v5);
    swift_retain_n();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    log = v9;
    if (os_log_type_enabled(v9, v10))
    {
      v51 = *(v0 + 256);
      v52 = *(v0 + 280);
      v49 = *(v0 + 176);
      v50 = *(v0 + 264);
      v11 = *(v0 + 152);
      v47 = *(v0 + 168);
      v48 = *(v0 + 160);
      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      v14 = *(v0 + 128);
      v15 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v15 = 136315394;
      v8(v12, v11, v14);
      v16 = *(v13 + 8);
      v16(v11, v14);
      sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v16(v12, v14);
      v20 = sub_100102F80(v17, v19, &v55);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;

      v21 = PhotosFaceType.description.getter();
      v23 = v22;

      v24 = sub_100102F80(v21, v23, &v55);

      *(v15 + 14) = v24;
      _os_log_impl(&_mh_execute_header, log, v10, "Completed tracking %s for type %s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v47 + 8))(v49, v48);
      (*(v50 + 8))(v52, v51);
    }

    else
    {
      v53 = *(v0 + 280);
      v37 = *(v0 + 256);
      v38 = *(v0 + 264);
      v39 = *(v0 + 168);
      v40 = *(v0 + 176);
      v42 = *(v0 + 152);
      v41 = *(v0 + 160);
      v44 = *(v0 + 128);
      v43 = *(v0 + 136);

      (*(v43 + 8))(v42, v44);

      (*(v39 + 8))(v40, v41);
      (*(v38 + 8))(v53, v37);
    }

    v45 = *(v0 + 8);

    return v45();
  }

  else
  {
    v25 = *(v0 + 216);
    v26 = *(v0 + 64);
    v27 = *(v3 + 32);
    *(v0 + 320) = v27;
    *(v0 + 328) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v27(v25, v1, v2);
    v28 = *(v26 + 104);
    sub_10000560C(&qword_10012A600, &qword_100109468);
    *(v0 + 336) = *(v3 + 72);
    v29 = *(v3 + 80);
    *(v0 + 456) = v29;
    v30 = (v29 + 32) & ~v29;
    v31 = swift_allocObject();
    *(v0 + 344) = v31;
    *(v31 + 16) = xmmword_1001089C0;
    v32 = *(v3 + 16);
    *(v0 + 352) = v32;
    *(v0 + 360) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32(v31 + v30, v25, v2);
    *(v0 + 24) = v31;
    v33 = swift_task_alloc();
    *(v0 + 368) = v33;
    v34 = sub_10000560C(&qword_10012B4D0, &qword_10010A358);
    v35 = sub_10000CC24(&qword_10012B4D8, &qword_10012B4D0, &qword_10010A358, &protocol conformance descriptor for [A]);
    *v33 = v0;
    v33[1] = sub_1000DF9B0;
    v36 = *(v0 + 184);

    return Sequence.asyncMap<A>(predicate:)(&unk_10010A998, v28, v34, v36, v35);
  }
}

uint64_t sub_1000DF86C()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000DF9B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_1000DFD54;
  }

  else
  {

    v4 = sub_1000DFACC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000DFACC()
{
  v1 = *(*(v0 + 64) + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 376);
  *(v0 + 392) = v1;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (*(v0 + 456) + 32) & ~*(v0 + 456);
    *(v0 + 40) = _swiftEmptyArrayStorage;

    sub_10005C508(0, v3, 0);
    v5 = 0;
    v6 = *(v0 + 40);
    v7 = v2 + v4;
    do
    {
      v9 = *(v0 + 192);
      v8 = *(v0 + 200);
      v10 = *(v0 + 184);
      (*(v0 + 352))(v8, v7 + *(v0 + 336) * v5, v10);
      StoredPhoto.localIdentifier.getter();
      (*(v9 + 8))(v8, v10);
      *(v0 + 40) = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_10005C508((v11 > 1), v12 + 1, 1);
        v6 = *(v0 + 40);
      }

      v14 = *(v0 + 104);
      v13 = *(v0 + 112);
      v15 = *(v0 + 96);
      ++v5;
      v6[2] = v12 + 1;
      (*(v14 + 32))(v6 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v13, v15);
    }

    while (v3 != v5);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  *(v0 + 400) = v6;
  sub_1000FAACC(&qword_10012A048, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
  dispatch thunk of PhotosFaceID.id.getter();
  v16 = static TimeUtilities.currentEpoch.getter();
  v17 = type metadata accessor for AlbumDatabase();
  v18 = sub_1000FAACC(&qword_10012A490, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
  v19 = swift_task_alloc();
  *(v0 + 408) = v19;
  *v19 = v0;
  v19[1] = sub_1000DFEC8;
  v20 = *(v0 + 120);

  return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v6, v20, v16, v17, v18);
}

uint64_t sub_1000DFD54()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v7 = v0[27];
  v8 = v0[23];
  v9 = v0[24];

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000DFEC8()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v6 = v2 + 96;
    v4 = *(v2 + 96);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = sub_1000E02F0;
  }

  else
  {
    v8 = *(v2 + 120);
    v11 = v2 + 96;
    v9 = *(v2 + 96);
    v10 = *(v11 + 8);

    (*(v10 + 8))(v8, v9);

    v7 = sub_1000E0058;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000E0058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 376);
  v8 = *(v7 + 16);
  *(v6 + 424) = v8;
  if (!v8)
  {
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184), a3, a4, a5, a6);

    v20 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
    v21 = swift_task_alloc();
    *(v6 + 312) = v21;
    *v21 = v6;
    v21[1] = sub_1000DF190;
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v20;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v9 = *(v6 + 456);
  *(v6 + 432) = 0;
  if (!*(v7 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v10 = *(v6 + 320);
  v11 = *(v6 + 208);
  v12 = *(v6 + 184);
  v14 = *(v6 + 80);
  v13 = *(v6 + 88);
  v15 = *(v6 + 48);
  (*(v6 + 352))(v11, v7 + ((v9 + 32) & ~v9), v12, a4, a5, a6);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001089C0;
  *(v16 + 32) = static TimeUtilities.currentEpoch.getter();
  *v13 = v16;
  v10(v13 + *(v14 + 48), v11, v12);
  v22 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v6 + 440) = v17;
  *v17 = v6;
  v17[1] = sub_1000E0454;
  v18 = *(v6 + 88);

  return v22(v18);
}

uint64_t sub_1000E02F0()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  (*(v0[24] + 8))(v0[27], v0[23]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000E0454()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  sub_10000C460(*(v2 + 88), &qword_10012A428, &unk_1001091B0);
  if (v0)
  {

    v3 = sub_1000E0850;
  }

  else
  {
    v3 = sub_1000E05A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E05A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 432) + 1;
  if (v7 == *(v6 + 424))
  {
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184), a3, a4, a5, a6);

    v8 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
    v9 = swift_task_alloc();
    *(v6 + 312) = v9;
    *v9 = v6;
    v9[1] = sub_1000DF190;
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v8;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  *(v6 + 432) = v7;
  v10 = *(v6 + 376);
  if (v7 >= *(v10 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v11 = *(v6 + 320);
  v12 = *(v6 + 208);
  v13 = *(v6 + 184);
  v15 = *(v6 + 80);
  v14 = *(v6 + 88);
  v16 = *(v6 + 48);
  (*(v6 + 352))(v12, v10 + ((*(v6 + 456) + 32) & ~*(v6 + 456)) + *(v6 + 336) * v7, v13, a4, a5, a6);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001089C0;
  *(v17 + 32) = static TimeUtilities.currentEpoch.getter();
  *v14 = v17;
  v11(v14 + *(v15 + 48), v12, v13);
  v21 = (v16 + *v16);
  v18 = swift_task_alloc();
  *(v6 + 440) = v18;
  *v18 = v6;
  v18[1] = sub_1000E0454;
  v19 = *(v6 + 88);

  return v21(v19);
}

uint64_t sub_1000E0850()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  (*(v0[24] + 8))(v0[27], v0[23]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000E09B4@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SyncedPhotosFace();
  result = SyncedPhotosFace.complete.getter();
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000E0A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SyncedPhotosFace();
  return SyncedPhotosFace.id.getter();
}

uint64_t sub_1000E0A88(uint64_t a1)
{
  v2 = sub_10000560C(&qword_100129F60, &qword_100108D78);
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  __chkstk_darwin(v2);
  v33 = v31 - v4;
  type metadata accessor for CommunicationActor();
  v5 = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v31[1] = v5;
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for DailyID();
  sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  v38 = v7;
  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = sub_10000560C(&qword_10012B528, &qword_10010A590);
  v10 = *(a1 + *(v9 + 48));
  __chkstk_darwin(v9);
  v31[-6] = v6;
  v31[-5] = type metadata accessor for DailyProvider();
  v31[-4] = type metadata accessor for DailyDatabase();
  v31[-3] = sub_1000FAACC(&qword_10012A1D0, type metadata accessor for DailyProvider, &unk_100108F04);
  v31[-2] = sub_1000FAACC(&qword_10012A470, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
  KeyPath = swift_getKeyPath();
  v12 = *(v10 + 16);
  if (v12)
  {
    v39 = _swiftEmptyArrayStorage;
    result = sub_10005C5B0(0, v12, 0);
    v14 = 0;
    v15 = v39;
    v32 = v10 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v31[3] = v35 + 8;
    v31[4] = v35 + 16;
    do
    {
      if (v14 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v16 = v10;
      v17 = v34;
      v18 = v35;
      v19 = v33;
      (*(v35 + 16))(v33, v32 + *(v35 + 72) * v14, v34);
      v20 = KeyPath;
      swift_getAtKeyPath();
      v21 = v36;
      result = (*(v18 + 8))(v19, v17);
      v39 = v15;
      v23 = v15[2];
      v22 = v15[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_10005C5B0((v22 > 1), v23 + 1, 1);
        v15 = v39;
      }

      ++v14;
      v15[2] = v23 + 1;
      v15[v23 + 4] = v21;
      v10 = v16;
      KeyPath = v20;
    }

    while (v12 != v14);

    v24 = v15[2];
    if (!v24)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v15 = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyArrayStorage[2];
    if (!v24)
    {
LABEL_15:
      v25 = 0;
LABEL_16:

      v39 = v25;
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v30._countAndFlagsBits = 0x736F746F687020;
      v30._object = 0xE700000000000000;
      String.append(_:)(v30);

      return v37;
    }
  }

  v25 = 0;
  v26 = v15 + 4;
  while (1)
  {
    v27 = *v26++;
    v28 = __OFADD__(v25, v27);
    v25 = (v25 + v27);
    if (v28)
    {
      break;
    }

    if (!--v24)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000E0EF8(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v35 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v42 = *(v35 - 8);
  __chkstk_darwin(v35);
  v41 = &v34 - v9;
  type metadata accessor for CommunicationActor();
  v10 = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v36 = v10;
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = type metadata accessor for ShuffleID();
  sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v45 = v12;
  v13._countAndFlagsBits = 8250;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14 = sub_10000560C(&qword_10012B498, &qword_10010A270);
  v15 = *(a1 + *(v14 + 48));
  __chkstk_darwin(v14);
  *(&v34 - 6) = v11;
  *(&v34 - 5) = type metadata accessor for ShuffleProvider();
  *(&v34 - 4) = a2(0);
  *(&v34 - 3) = sub_1000FAACC(&qword_10012B4C0, type metadata accessor for ShuffleProvider, &unk_100108FA4);
  *(&v34 - 2) = sub_1000FAACC(a3, v38, v39);
  v16 = v15;
  swift_getKeyPath();
  v17 = *(v15 + 16);
  if (v17)
  {
    v34 = v5;
    v46 = _swiftEmptyArrayStorage;
    result = sub_10005C5B0(0, v17, 0);
    v19 = 0;
    v20 = v46;
    v39 = v15 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v40 = v15;
    v37 = v42 + 8;
    v38 = (v42 + 16);
    v21 = v35;
    do
    {
      if (v19 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v23 = v41;
      v22 = v42;
      (*(v42 + 16))(v41, v39 + *(v42 + 72) * v19, v21);
      swift_getAtKeyPath();
      v24 = v43;
      result = (*(v22 + 8))(v23, v21);
      v46 = v20;
      v26 = v20[2];
      v25 = v20[3];
      if (v26 >= v25 >> 1)
      {
        result = sub_10005C5B0((v25 > 1), v26 + 1, 1);
        v21 = v35;
        v20 = v46;
      }

      ++v19;
      v20[2] = v26 + 1;
      v20[v26 + 4] = v24;
      v16 = v40;
    }

    while (v17 != v19);

    v27 = v20[2];
    if (!v27)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
    v27 = _swiftEmptyArrayStorage[2];
    if (!v27)
    {
LABEL_15:
      v28 = 0;
LABEL_16:

      v46 = v28;
      v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v32);

      v33._countAndFlagsBits = 0x736F746F687020;
      v33._object = 0xE700000000000000;
      String.append(_:)(v33);

      return v44;
    }
  }

  v28 = 0;
  v29 = v20 + 4;
  while (1)
  {
    v30 = *v29++;
    v31 = __OFADD__(v28, v30);
    v28 = (v28 + v30);
    if (v31)
    {
      break;
    }

    if (!--v27)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000E1360(uint64_t a1)
{
  v2 = sub_10000560C(&qword_100129F70, &qword_100108D90);
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  __chkstk_darwin(v2);
  v33 = v31 - v4;
  type metadata accessor for CommunicationActor();
  v5 = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v31[1] = v5;
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for AlbumID();
  sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  v38 = v7;
  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = sub_10000560C(&qword_10012B598, &qword_10010A8D8);
  v10 = *(a1 + *(v9 + 48));
  __chkstk_darwin(v9);
  v31[-6] = v6;
  v31[-5] = type metadata accessor for AlbumProvider();
  v31[-4] = type metadata accessor for AlbumDatabase();
  v31[-3] = sub_1000FAACC(&qword_10012B5C0, type metadata accessor for AlbumProvider, &unk_100108E1C);
  v31[-2] = sub_1000FAACC(&qword_10012A490, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
  KeyPath = swift_getKeyPath();
  v12 = *(v10 + 16);
  if (v12)
  {
    v39 = _swiftEmptyArrayStorage;
    result = sub_10005C5B0(0, v12, 0);
    v14 = 0;
    v15 = v39;
    v32 = v10 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v31[3] = v35 + 8;
    v31[4] = v35 + 16;
    do
    {
      if (v14 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v16 = v10;
      v17 = v34;
      v18 = v35;
      v19 = v33;
      (*(v35 + 16))(v33, v32 + *(v35 + 72) * v14, v34);
      v20 = KeyPath;
      swift_getAtKeyPath();
      v21 = v36;
      result = (*(v18 + 8))(v19, v17);
      v39 = v15;
      v23 = v15[2];
      v22 = v15[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_10005C5B0((v22 > 1), v23 + 1, 1);
        v15 = v39;
      }

      ++v14;
      v15[2] = v23 + 1;
      v15[v23 + 4] = v21;
      v10 = v16;
      KeyPath = v20;
    }

    while (v12 != v14);

    v24 = v15[2];
    if (!v24)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v15 = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyArrayStorage[2];
    if (!v24)
    {
LABEL_15:
      v25 = 0;
LABEL_16:

      v39 = v25;
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v30._countAndFlagsBits = 0x736F746F687020;
      v30._object = 0xE700000000000000;
      String.append(_:)(v30);

      return v37;
    }
  }

  v25 = 0;
  v26 = v15 + 4;
  while (1)
  {
    v27 = *v26++;
    v28 = __OFADD__(v25, v27);
    v25 = (v25 + v27);
    if (v28)
    {
      break;
    }

    if (!--v24)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000E17D0@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SyncedPhotosFace();
  result = SyncedPhotosFace.photos.getter();
  *a3 = result;
  return result;
}

uint64_t sub_1000E1838@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SyncedPhotosFace();
  result = SyncedPhotosFace.contentDescription.getter();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1000E18A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for ShuffleID();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1AA8, 0, 0);
}

uint64_t sub_1000E1AA8()
{
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  v1 = type metadata accessor for GalleryDatabase();
  v0[23] = v1;
  v2 = sub_1000FAACC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1000E1BEC;
  v4 = v0[22];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v4, v1, v2);
}

uint64_t sub_1000E1BEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_1000FBF00;
  }

  else
  {
    v7 = sub_1000E1D60;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000E1D60(uint64_t a1)
{
  v39 = v1;
  v2 = *(v1 + 120);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 40);
  static Log.photos.getter();
  v6 = *(v4 + 16);
  *(v1 + 216) = v6;
  *(v1 + 224) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 200);
  v11 = *(v1 + 152);
  v13 = *(v1 + 128);
  v12 = *(v1 + 136);
  v14 = *(v1 + 120);
  if (v9)
  {
    log = v7;
    v36 = *(v1 + 128);
    v15 = *(v1 + 112);
    v37 = *(v1 + 152);
    v17 = *(v1 + 88);
    v16 = *(v1 + 96);
    v34 = v8;
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v18 = 134218242;
    *(v18 + 4) = *(v10 + 16);

    *(v18 + 12) = 2080;
    v6(v15, v14, v17);
    v19 = *(v16 + 8);
    v19(v14, v17);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v19(v15, v17);
    v23 = sub_100102F80(v20, v22, &v38);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, log, v34, "Found %ld days for face %s", v18, 0x16u);
    sub_10000C304(v33);

    v24 = *(v12 + 8);
    v24(v37, v36);
  }

  else
  {
    v19 = *(*(v1 + 96) + 8);
    v19(*(v1 + 120), *(v1 + 88));

    v24 = *(v12 + 8);
    v24(v11, v13);
  }

  *(v1 + 232) = v24;
  *(v1 + 240) = v19;
  v25 = *(v1 + 56);
  *(v1 + 32) = *(v1 + 200);
  v26 = swift_task_alloc();
  *(v1 + 248) = v26;
  v26[1] = vextq_s8(*(v1 + 40), *(v1 + 40), 8uLL);
  v26[2].i64[0] = v25;
  v27 = swift_task_alloc();
  *(v1 + 256) = v27;
  *(v27 + 16) = &unk_10010A420;
  *(v27 + 24) = v26;
  v28 = swift_task_alloc();
  *(v1 + 264) = v28;
  v29 = sub_10000560C(&qword_10012A410, &qword_1001091A0);
  v30 = sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0, &protocol conformance descriptor for [A : B]);
  *v28 = v1;
  v28[1] = sub_1000E2104;
  v31 = *(v1 + 64);

  return Sequence.asyncMap<A>(predicate:)(&unk_10010A430, v27, v29, v31, v30);
}

uint64_t sub_1000E2104(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_1000FBE84;
  }

  else
  {

    v4 = sub_1000E223C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E223C(uint64_t a1)
{
  v65 = v1;
  v2 = v1[27];
  v3 = v1[13];
  v4 = v1[11];
  v5 = v1[5];
  static Log.session.getter();
  v2(v3, v5, v4);
  swift_bridgeObjectRetain_n();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[34];
  v61 = v1[30];
  if (v8)
  {
    v54 = v7;
    log = v6;
    v56 = v1[27];
    v59 = v1[23];
    v11 = v1[13];
    v10 = v1[14];
    v12 = v1[11];
    v13 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v13 = 136315650;
    v14 = PhotosFaceType.description.getter();
    v16 = v15;

    v17 = sub_100102F80(v14, v16, &v63);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v56(v10, v11, v12);
    v61(v11, v12);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v61(v10, v12);
    v21 = sub_100102F80(v18, v20, &v63);

    *(v13 + 14) = v21;
    buf = v13;
    *(v13 + 22) = 2080;
    v22 = swift_task_alloc();
    *v22 = v12;
    v22[1] = type metadata accessor for ShuffleProvider();
    v22[2] = v59;
    v22[3] = sub_1000FAACC(&qword_10012B4C0, type metadata accessor for ShuffleProvider, &unk_100108FA4);
    v22[4] = sub_1000FAACC(&qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
    KeyPath = swift_getKeyPath();

    v24 = *(v9 + 16);
    v25 = v1[34];
    if (v24)
    {
      v62 = v1;
      v26 = v1[9];
      v64 = _swiftEmptyArrayStorage;
      sub_10005C54C(0, v24, 0);
      v27 = v64;
      v28 = *(v26 + 16);
      v26 += 16;
      v29 = v25 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
      v57 = *(v26 + 56);
      v58 = v28;
      v30 = (v26 - 8);
      do
      {
        v31 = v62[10];
        v32 = v62[8];
        v58(v31, v29, v32);
        v33 = KeyPath;
        swift_getAtKeyPath();
        v34 = v62[2];
        v35 = v62[3];
        (*v30)(v31, v32);
        v64 = v27;
        v37 = v27[2];
        v36 = v27[3];
        if (v37 >= v36 >> 1)
        {
          sub_10005C54C((v36 > 1), v37 + 1, 1);
          v27 = v64;
        }

        v27[2] = v37 + 1;
        v38 = &v27[2 * v37];
        v38[4] = v34;
        v38[5] = v35;
        v29 += v57;
        --v24;
        KeyPath = v33;
      }

      while (v24);
      v1 = v62;
    }

    else
    {
    }

    v43 = v1[29];
    v44 = v1[18];
    v45 = v1[16];
    v46 = Array.description.getter();
    v48 = v47;

    v49 = sub_100102F80(v46, v48, &v63);

    *(buf + 3) = v49;
    _os_log_impl(&_mh_execute_header, log, v54, "  %s %s: %s", buf, 0x20u);
    swift_arrayDestroy();

    v43(v44, v45);
  }

  else
  {
    v60 = v1[29];
    v39 = v1[18];
    v40 = v1[16];
    v41 = v1[13];
    v42 = v1[11];

    v61(v41, v42);

    v60(v39, v40);
  }

  v50 = v1[1];
  v51 = v1[34];

  return v50(v51);
}

uint64_t sub_1000E27FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_10000560C(&qword_100129F60, &qword_100108D78);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for DailyID();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000E2A04, 0, 0);
}

uint64_t sub_1000E2A04()
{
  sub_1000FAACC(&qword_10012A178, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
  dispatch thunk of PhotosFaceID.id.getter();
  v1 = type metadata accessor for DailyDatabase();
  v0[23] = v1;
  v2 = sub_1000FAACC(&qword_10012A468, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1000E2B48;
  v4 = v0[22];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v4, v1, v2);
}

uint64_t sub_1000E2B48(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_1000FBF00;
  }

  else
  {
    v7 = sub_1000E2CBC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000E2CBC(uint64_t a1)
{
  v39 = v1;
  v2 = *(v1 + 120);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 40);
  static Log.photos.getter();
  v6 = *(v4 + 16);
  *(v1 + 216) = v6;
  *(v1 + 224) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 200);
  v11 = *(v1 + 152);
  v13 = *(v1 + 128);
  v12 = *(v1 + 136);
  v14 = *(v1 + 120);
  if (v9)
  {
    log = v7;
    v36 = *(v1 + 128);
    v15 = *(v1 + 112);
    v37 = *(v1 + 152);
    v17 = *(v1 + 88);
    v16 = *(v1 + 96);
    v34 = v8;
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v18 = 134218242;
    *(v18 + 4) = *(v10 + 16);

    *(v18 + 12) = 2080;
    v6(v15, v14, v17);
    v19 = *(v16 + 8);
    v19(v14, v17);
    sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v19(v15, v17);
    v23 = sub_100102F80(v20, v22, &v38);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, log, v34, "Found %ld days for face %s", v18, 0x16u);
    sub_10000C304(v33);

    v24 = *(v12 + 8);
    v24(v37, v36);
  }

  else
  {
    v19 = *(*(v1 + 96) + 8);
    v19(*(v1 + 120), *(v1 + 88));

    v24 = *(v12 + 8);
    v24(v11, v13);
  }

  *(v1 + 232) = v24;
  *(v1 + 240) = v19;
  v25 = *(v1 + 56);
  *(v1 + 32) = *(v1 + 200);
  v26 = swift_task_alloc();
  *(v1 + 248) = v26;
  v26[1] = vextq_s8(*(v1 + 40), *(v1 + 40), 8uLL);
  v26[2].i64[0] = v25;
  v27 = swift_task_alloc();
  *(v1 + 256) = v27;
  *(v27 + 16) = &unk_10010A608;
  *(v27 + 24) = v26;
  v28 = swift_task_alloc();
  *(v1 + 264) = v28;
  v29 = sub_10000560C(&qword_10012A410, &qword_1001091A0);
  v30 = sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0, &protocol conformance descriptor for [A : B]);
  *v28 = v1;
  v28[1] = sub_1000E3060;
  v31 = *(v1 + 64);

  return Sequence.asyncMap<A>(predicate:)(&unk_10010A618, v27, v29, v31, v30);
}

uint64_t sub_1000E3060(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_1000FBE84;
  }

  else
  {

    v4 = sub_1000E3198;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E3198(uint64_t a1)
{
  v65 = v1;
  v2 = v1[27];
  v3 = v1[13];
  v4 = v1[11];
  v5 = v1[5];
  static Log.session.getter();
  v2(v3, v5, v4);
  swift_bridgeObjectRetain_n();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[34];
  v61 = v1[30];
  if (v8)
  {
    v54 = v7;
    log = v6;
    v56 = v1[27];
    v59 = v1[23];
    v11 = v1[13];
    v10 = v1[14];
    v12 = v1[11];
    v13 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v13 = 136315650;
    v14 = PhotosFaceType.description.getter();
    v16 = v15;

    v17 = sub_100102F80(v14, v16, &v63);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v56(v10, v11, v12);
    v61(v11, v12);
    sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v61(v10, v12);
    v21 = sub_100102F80(v18, v20, &v63);

    *(v13 + 14) = v21;
    buf = v13;
    *(v13 + 22) = 2080;
    v22 = swift_task_alloc();
    *v22 = v12;
    v22[1] = type metadata accessor for DailyProvider();
    v22[2] = v59;
    v22[3] = sub_1000FAACC(&qword_10012A1D0, type metadata accessor for DailyProvider, &unk_100108F04);
    v22[4] = sub_1000FAACC(&qword_10012A470, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
    KeyPath = swift_getKeyPath();

    v24 = *(v9 + 16);
    v25 = v1[34];
    if (v24)
    {
      v62 = v1;
      v26 = v1[9];
      v64 = _swiftEmptyArrayStorage;
      sub_10005C54C(0, v24, 0);
      v27 = v64;
      v28 = *(v26 + 16);
      v26 += 16;
      v29 = v25 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
      v57 = *(v26 + 56);
      v58 = v28;
      v30 = (v26 - 8);
      do
      {
        v31 = v62[10];
        v32 = v62[8];
        v58(v31, v29, v32);
        v33 = KeyPath;
        swift_getAtKeyPath();
        v34 = v62[2];
        v35 = v62[3];
        (*v30)(v31, v32);
        v64 = v27;
        v37 = v27[2];
        v36 = v27[3];
        if (v37 >= v36 >> 1)
        {
          sub_10005C54C((v36 > 1), v37 + 1, 1);
          v27 = v64;
        }

        v27[2] = v37 + 1;
        v38 = &v27[2 * v37];
        v38[4] = v34;
        v38[5] = v35;
        v29 += v57;
        --v24;
        KeyPath = v33;
      }

      while (v24);
      v1 = v62;
    }

    else
    {
    }

    v43 = v1[29];
    v44 = v1[18];
    v45 = v1[16];
    v46 = Array.description.getter();
    v48 = v47;

    v49 = sub_100102F80(v46, v48, &v63);

    *(buf + 3) = v49;
    _os_log_impl(&_mh_execute_header, log, v54, "  %s %s: %s", buf, 0x20u);
    swift_arrayDestroy();

    v43(v44, v45);
  }

  else
  {
    v60 = v1[29];
    v39 = v1[18];
    v40 = v1[16];
    v41 = v1[13];
    v42 = v1[11];

    v61(v41, v42);

    v60(v39, v40);
  }

  v50 = v1[1];
  v51 = v1[34];

  return v50(v51);
}

uint64_t sub_1000E3758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for ShuffleID();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000E3960, 0, 0);
}

uint64_t sub_1000E3960()
{
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  v1 = type metadata accessor for ShuffleDatabase();
  v0[23] = v1;
  v2 = sub_1000FAACC(&qword_10012A478, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1000E3AA4;
  v4 = v0[22];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v4, v1, v2);
}

uint64_t sub_1000E3AA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_1000FBF00;
  }

  else
  {
    v7 = sub_1000E3C18;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000E3C18(uint64_t a1)
{
  v39 = v1;
  v2 = *(v1 + 120);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 40);
  static Log.photos.getter();
  v6 = *(v4 + 16);
  *(v1 + 216) = v6;
  *(v1 + 224) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 200);
  v11 = *(v1 + 152);
  v13 = *(v1 + 128);
  v12 = *(v1 + 136);
  v14 = *(v1 + 120);
  if (v9)
  {
    log = v7;
    v36 = *(v1 + 128);
    v15 = *(v1 + 112);
    v37 = *(v1 + 152);
    v17 = *(v1 + 88);
    v16 = *(v1 + 96);
    v34 = v8;
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v18 = 134218242;
    *(v18 + 4) = *(v10 + 16);

    *(v18 + 12) = 2080;
    v6(v15, v14, v17);
    v19 = *(v16 + 8);
    v19(v14, v17);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v19(v15, v17);
    v23 = sub_100102F80(v20, v22, &v38);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, log, v34, "Found %ld days for face %s", v18, 0x16u);
    sub_10000C304(v33);

    v24 = *(v12 + 8);
    v24(v37, v36);
  }

  else
  {
    v19 = *(*(v1 + 96) + 8);
    v19(*(v1 + 120), *(v1 + 88));

    v24 = *(v12 + 8);
    v24(v11, v13);
  }

  *(v1 + 232) = v24;
  *(v1 + 240) = v19;
  v25 = *(v1 + 56);
  *(v1 + 32) = *(v1 + 200);
  v26 = swift_task_alloc();
  *(v1 + 248) = v26;
  v26[1] = vextq_s8(*(v1 + 40), *(v1 + 40), 8uLL);
  v26[2].i64[0] = v25;
  v27 = swift_task_alloc();
  *(v1 + 256) = v27;
  *(v27 + 16) = &unk_10010A788;
  *(v27 + 24) = v26;
  v28 = swift_task_alloc();
  *(v1 + 264) = v28;
  v29 = sub_10000560C(&qword_10012A410, &qword_1001091A0);
  v30 = sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0, &protocol conformance descriptor for [A : B]);
  *v28 = v1;
  v28[1] = sub_1000E3FBC;
  v31 = *(v1 + 64);

  return Sequence.asyncMap<A>(predicate:)(&unk_10010A798, v27, v29, v31, v30);
}

uint64_t sub_1000E3FBC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_1000FBE84;
  }

  else
  {

    v4 = sub_1000E40F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E40F4(uint64_t a1)
{
  v65 = v1;
  v2 = v1[27];
  v3 = v1[13];
  v4 = v1[11];
  v5 = v1[5];
  static Log.session.getter();
  v2(v3, v5, v4);
  swift_bridgeObjectRetain_n();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[34];
  v61 = v1[30];
  if (v8)
  {
    v54 = v7;
    log = v6;
    v56 = v1[27];
    v59 = v1[23];
    v11 = v1[13];
    v10 = v1[14];
    v12 = v1[11];
    v13 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v13 = 136315650;
    v14 = PhotosFaceType.description.getter();
    v16 = v15;

    v17 = sub_100102F80(v14, v16, &v63);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v56(v10, v11, v12);
    v61(v11, v12);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v61(v10, v12);
    v21 = sub_100102F80(v18, v20, &v63);

    *(v13 + 14) = v21;
    buf = v13;
    *(v13 + 22) = 2080;
    v22 = swift_task_alloc();
    *v22 = v12;
    v22[1] = type metadata accessor for ShuffleProvider();
    v22[2] = v59;
    v22[3] = sub_1000FAACC(&qword_10012B4C0, type metadata accessor for ShuffleProvider, &unk_100108FA4);
    v22[4] = sub_1000FAACC(&qword_10012A480, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
    KeyPath = swift_getKeyPath();

    v24 = *(v9 + 16);
    v25 = v1[34];
    if (v24)
    {
      v62 = v1;
      v26 = v1[9];
      v64 = _swiftEmptyArrayStorage;
      sub_10005C54C(0, v24, 0);
      v27 = v64;
      v28 = *(v26 + 16);
      v26 += 16;
      v29 = v25 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
      v57 = *(v26 + 56);
      v58 = v28;
      v30 = (v26 - 8);
      do
      {
        v31 = v62[10];
        v32 = v62[8];
        v58(v31, v29, v32);
        v33 = KeyPath;
        swift_getAtKeyPath();
        v34 = v62[2];
        v35 = v62[3];
        (*v30)(v31, v32);
        v64 = v27;
        v37 = v27[2];
        v36 = v27[3];
        if (v37 >= v36 >> 1)
        {
          sub_10005C54C((v36 > 1), v37 + 1, 1);
          v27 = v64;
        }

        v27[2] = v37 + 1;
        v38 = &v27[2 * v37];
        v38[4] = v34;
        v38[5] = v35;
        v29 += v57;
        --v24;
        KeyPath = v33;
      }

      while (v24);
      v1 = v62;
    }

    else
    {
    }

    v43 = v1[29];
    v44 = v1[18];
    v45 = v1[16];
    v46 = Array.description.getter();
    v48 = v47;

    v49 = sub_100102F80(v46, v48, &v63);

    *(buf + 3) = v49;
    _os_log_impl(&_mh_execute_header, log, v54, "  %s %s: %s", buf, 0x20u);
    swift_arrayDestroy();

    v43(v44, v45);
  }

  else
  {
    v60 = v1[29];
    v39 = v1[18];
    v40 = v1[16];
    v41 = v1[13];
    v42 = v1[11];

    v61(v41, v42);

    v60(v39, v40);
  }

  v50 = v1[1];
  v51 = v1[34];

  return v50(v51);
}

uint64_t sub_1000E46B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_10000560C(&qword_100129F70, &qword_100108D90);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for AlbumID();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000E48BC, 0, 0);
}

uint64_t sub_1000E48BC()
{
  sub_1000FAACC(&qword_10012A048, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
  dispatch thunk of PhotosFaceID.id.getter();
  v1 = type metadata accessor for AlbumDatabase();
  v0[23] = v1;
  v2 = sub_1000FAACC(&qword_10012A488, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1000E4A00;
  v4 = v0[22];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v4, v1, v2);
}

uint64_t sub_1000E4A00(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_1000E4F18;
  }

  else
  {
    v7 = sub_1000E4B74;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000E4B74(uint64_t a1)
{
  v39 = v1;
  v2 = *(v1 + 120);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 40);
  static Log.photos.getter();
  v6 = *(v4 + 16);
  *(v1 + 216) = v6;
  *(v1 + 224) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 200);
  v11 = *(v1 + 152);
  v13 = *(v1 + 128);
  v12 = *(v1 + 136);
  v14 = *(v1 + 120);
  if (v9)
  {
    log = v7;
    v36 = *(v1 + 128);
    v15 = *(v1 + 112);
    v37 = *(v1 + 152);
    v17 = *(v1 + 88);
    v16 = *(v1 + 96);
    v34 = v8;
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v18 = 134218242;
    *(v18 + 4) = *(v10 + 16);

    *(v18 + 12) = 2080;
    v6(v15, v14, v17);
    v19 = *(v16 + 8);
    v19(v14, v17);
    sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v19(v15, v17);
    v23 = sub_100102F80(v20, v22, &v38);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, log, v34, "Found %ld days for face %s", v18, 0x16u);
    sub_10000C304(v33);

    v24 = *(v12 + 8);
    v24(v37, v36);
  }

  else
  {
    v19 = *(*(v1 + 96) + 8);
    v19(*(v1 + 120), *(v1 + 88));

    v24 = *(v12 + 8);
    v24(v11, v13);
  }

  *(v1 + 232) = v24;
  *(v1 + 240) = v19;
  v25 = *(v1 + 56);
  *(v1 + 32) = *(v1 + 200);
  v26 = swift_task_alloc();
  *(v1 + 248) = v26;
  v26[1] = vextq_s8(*(v1 + 40), *(v1 + 40), 8uLL);
  v26[2].i64[0] = v25;
  v27 = swift_task_alloc();
  *(v1 + 256) = v27;
  *(v27 + 16) = &unk_10010A950;
  *(v27 + 24) = v26;
  v28 = swift_task_alloc();
  *(v1 + 264) = v28;
  v29 = sub_10000560C(&qword_10012A410, &qword_1001091A0);
  v30 = sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0, &protocol conformance descriptor for [A : B]);
  *v28 = v1;
  v28[1] = sub_1000E4FD4;
  v31 = *(v1 + 64);

  return Sequence.asyncMap<A>(predicate:)(&unk_10010A960, v27, v29, v31, v30);
}

uint64_t sub_1000E4F18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E4FD4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_1000E56CC;
  }

  else
  {

    v4 = sub_1000E510C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E510C(uint64_t a1)
{
  v65 = v1;
  v2 = v1[27];
  v3 = v1[13];
  v4 = v1[11];
  v5 = v1[5];
  static Log.session.getter();
  v2(v3, v5, v4);
  swift_bridgeObjectRetain_n();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[34];
  v61 = v1[30];
  if (v8)
  {
    v54 = v7;
    log = v6;
    v56 = v1[27];
    v59 = v1[23];
    v11 = v1[13];
    v10 = v1[14];
    v12 = v1[11];
    v13 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v13 = 136315650;
    v14 = PhotosFaceType.description.getter();
    v16 = v15;

    v17 = sub_100102F80(v14, v16, &v63);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v56(v10, v11, v12);
    v61(v11, v12);
    sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v61(v10, v12);
    v21 = sub_100102F80(v18, v20, &v63);

    *(v13 + 14) = v21;
    buf = v13;
    *(v13 + 22) = 2080;
    v22 = swift_task_alloc();
    *v22 = v12;
    v22[1] = type metadata accessor for AlbumProvider();
    v22[2] = v59;
    v22[3] = sub_1000FAACC(&qword_10012B5C0, type metadata accessor for AlbumProvider, &unk_100108E1C);
    v22[4] = sub_1000FAACC(&qword_10012A490, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
    KeyPath = swift_getKeyPath();

    v24 = *(v9 + 16);
    v25 = v1[34];
    if (v24)
    {
      v62 = v1;
      v26 = v1[9];
      v64 = _swiftEmptyArrayStorage;
      sub_10005C54C(0, v24, 0);
      v27 = v64;
      v28 = *(v26 + 16);
      v26 += 16;
      v29 = v25 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
      v57 = *(v26 + 56);
      v58 = v28;
      v30 = (v26 - 8);
      do
      {
        v31 = v62[10];
        v32 = v62[8];
        v58(v31, v29, v32);
        v33 = KeyPath;
        swift_getAtKeyPath();
        v34 = v62[2];
        v35 = v62[3];
        (*v30)(v31, v32);
        v64 = v27;
        v37 = v27[2];
        v36 = v27[3];
        if (v37 >= v36 >> 1)
        {
          sub_10005C54C((v36 > 1), v37 + 1, 1);
          v27 = v64;
        }

        v27[2] = v37 + 1;
        v38 = &v27[2 * v37];
        v38[4] = v34;
        v38[5] = v35;
        v29 += v57;
        --v24;
        KeyPath = v33;
      }

      while (v24);
      v1 = v62;
    }

    else
    {
    }

    v43 = v1[29];
    v44 = v1[18];
    v45 = v1[16];
    v46 = Array.description.getter();
    v48 = v47;

    v49 = sub_100102F80(v46, v48, &v63);

    *(buf + 3) = v49;
    _os_log_impl(&_mh_execute_header, log, v54, "  %s %s: %s", buf, 0x20u);
    swift_arrayDestroy();

    v43(v44, v45);
  }

  else
  {
    v60 = v1[29];
    v39 = v1[18];
    v40 = v1[16];
    v41 = v1[13];
    v42 = v1[11];

    v61(v41, v42);

    v60(v39, v40);
  }

  v50 = v1[1];
  v51 = v1[34];

  return v50(v51);
}

uint64_t sub_1000E56CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E57A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for StoredPhoto();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v9 = type metadata accessor for ShuffleID();
  v6[20] = v9;
  v6[21] = *(v9 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[25] = v10;
  v6[26] = *(v10 - 8);
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000E59E0, 0, 0);
}

uint64_t sub_1000E59E0()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[16];
    v4 = v0[9];
    sub_10005C508(0, v2, 0);
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v16 = *(v3 + 56);
    v17 = v5;
    v7 = (v3 - 8);
    do
    {
      v8 = v0[18];
      v9 = v0[15];
      v17(v8, v6, v9);
      StoredPhoto.localIdentifier.getter();
      (*v7)(v8, v9);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10005C508((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[10];
      v13 = v0[8];
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v6 += v16;
      --v2;
    }

    while (v2);
  }

  v0[28] = _swiftEmptyArrayStorage;
  v14 = swift_task_alloc();
  v0[29] = v14;
  *v14 = v0;
  v14[1] = sub_1000E5BC4;

  return sub_100060270(_swiftEmptyArrayStorage);
}

uint64_t sub_1000E5BC4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v5 = sub_1000FBEF4;
  }

  else
  {

    v5 = sub_1000FBF14;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E5CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for StoredPhoto();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v9 = type metadata accessor for DailyID();
  v6[20] = v9;
  v6[21] = *(v9 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[25] = v10;
  v6[26] = *(v10 - 8);
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000E5F20, 0, 0);
}

uint64_t sub_1000E5F20()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[16];
    v4 = v0[9];
    sub_10005C508(0, v2, 0);
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v16 = *(v3 + 56);
    v17 = v5;
    v7 = (v3 - 8);
    do
    {
      v8 = v0[18];
      v9 = v0[15];
      v17(v8, v6, v9);
      StoredPhoto.localIdentifier.getter();
      (*v7)(v8, v9);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10005C508((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[10];
      v13 = v0[8];
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v6 += v16;
      --v2;
    }

    while (v2);
  }

  v0[28] = _swiftEmptyArrayStorage;
  v14 = swift_task_alloc();
  v0[29] = v14;
  *v14 = v0;
  v14[1] = sub_1000E6104;

  return sub_100060270(_swiftEmptyArrayStorage);
}

uint64_t sub_1000E6104(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v5 = sub_1000FBEF4;
  }

  else
  {

    v5 = sub_1000E6224;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E6224(uint64_t a1)
{
  v121 = v1;
  v2 = v1[31];
  if (*(v2 + 16))
  {
    v3 = v1[24];
    v4 = v1[20];
    v5 = v1[21];
    v6 = v1[6];
    static Log.photos.getter();
    v7 = *(v5 + 16);
    v7(v3, v6, v4);

    v8 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v8, v117);
    v10 = v1[26];
    v11 = v1[27];
    v12 = v1[24];
    v13 = v1[25];
    if (v9)
    {
      loga = v8;
      v110 = v1[26];
      v113 = v1[27];
      v14 = v1[21];
      v15 = v1[22];
      v16 = v1[20];
      v101 = v1[3];
      v107 = v1[25];
      v17 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v17 = 134218754;
      *(v17 + 4) = *(v2 + 16);

      *(v17 + 12) = 2048;
      *(v17 + 14) = v101;
      *(v17 + 22) = 2080;
      v7(v15, v12, v16);
      v18 = *(v14 + 8);
      v18(v12, v16);
      sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v18(v15, v16);
      v22 = sub_100102F80(v19, v21, &v120);

      *(v17 + 24) = v22;
      *(v17 + 32) = 2080;
      v23 = Array.description.getter();
      v25 = v24;

      v26 = sub_100102F80(v23, v25, &v120);

      *(v17 + 34) = v26;
      _os_log_impl(&_mh_execute_header, loga, v117, "Ignoring %ld uncached photos on %ld for face %s: %s", v17, 0x2Au);
      swift_arrayDestroy();

      result = (*(v110 + 8))(v113, v107);
    }

    else
    {
      (*(v1[21] + 8))(v1[24], v1[20]);
      swift_bridgeObjectRelease_n();

      result = (*(v10 + 8))(v11, v13);
    }
  }

  else
  {
  }

  v28 = v1[30];
  v100 = *(v28 + 16);
  if (v100)
  {
    v29 = 0;
    v30 = v1[16];
    v97 = v1[9];
    v118 = v1[7];
    v114 = v118 + 56;
    v31 = (v97 + 8);
    v96 = (v30 + 8);
    v98 = v30;
    v102 = (v30 + 32);
    v32 = _swiftEmptyArrayStorage;
    v99 = v1[30];
    do
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      log = v29;
      v108 = v32;
      v104 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v103 = *(v98 + 72);
      (*(v98 + 16))(v1[19], v1[30] + v104 + v103 * v29, v1[15]);
      StoredPhoto.localIdentifier.getter();
      if (*(v118 + 16) && (sub_1000FAACC(&qword_10012A1F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v35 = dispatch thunk of Hashable._rawHashValue(seed:)(), v36 = -1 << *(v118 + 32), v37 = v35 & ~v36, ((*(v114 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0))
      {
        v38 = ~v36;
        v39 = *(v97 + 72);
        v40 = *(v97 + 16);
        while (1)
        {
          v41 = v1[11];
          v42 = v1[8];
          v40(v41, *(v118 + 48) + v37 * v39, v42);
          sub_1000FAACC(&qword_10012A660, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v43 = dispatch thunk of static Equatable.== infix(_:_:)();
          v44 = *v31;
          (*v31)(v41, v42);
          if (v43)
          {
            break;
          }

          v37 = (v37 + 1) & v38;
          if (((*(v114 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v33 = v1[19];
        v34 = v1[15];
        v44(v1[14], v1[8]);
        result = (*v96)(v33, v34);
        v32 = v108;
      }

      else
      {
LABEL_16:
        v45 = v1[19];
        v46 = v1[17];
        v47 = v1[15];
        (*v31)(v1[14], v1[8]);
        v48 = *v102;
        (*v102)(v46, v45, v47);
        v32 = v108;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v120 = v108;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10005C5D0(0, v108[2] + 1, 1);
          v32 = v120;
        }

        v51 = v32[2];
        v50 = v32[3];
        if (v51 >= v50 >> 1)
        {
          sub_10005C5D0((v50 > 1), v51 + 1, 1);
          v32 = v120;
        }

        v52 = v1[17];
        v53 = v1[15];
        v32[2] = v51 + 1;
        result = v48(v32 + v104 + v51 * v103, v52, v53);
      }

      v28 = v99;
      v29 = (&log->isa + 1);
    }

    while ((&log->isa + 1) != v100);
    v54 = *(v99 + 16);
    v55 = v1[30];
    if (!v54)
    {
      goto LABEL_28;
    }

    v109 = v32;
    v56 = v1[16];
    v57 = v1[9];
    v120 = _swiftEmptyArrayStorage;
    sub_10005C508(0, v54, 0);
    v58 = v120;
    v59 = *(v56 + 16);
    v56 += 16;
    v60 = v55 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
    v111 = *(v56 + 56);
    v115 = v59;
    v61 = (v56 - 8);
    do
    {
      v62 = v1[18];
      v63 = v1[15];
      v115(v62, v60, v63);
      StoredPhoto.localIdentifier.getter();
      (*v61)(v62, v63);
      v120 = v58;
      v65 = v58[2];
      v64 = v58[3];
      if (v65 >= v64 >> 1)
      {
        sub_10005C508((v64 > 1), v65 + 1, 1);
        v58 = v120;
      }

      v66 = v1[12];
      v67 = v1[8];
      v58[2] = v65 + 1;
      (*(v57 + 32))(v58 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v65, v66, v67);
      v60 += v111;
      --v54;
    }

    while (v54);

    v32 = v109;
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
LABEL_28:

    v58 = _swiftEmptyArrayStorage;
  }

  v68 = v1[7];

  v69 = sub_1000F3E6C(v58, v68);

  v70 = v32[2];
  v71 = _swiftEmptyArrayStorage;
  if (v70)
  {
    v72 = v1[16];
    v73 = v1[9];
    v120 = _swiftEmptyArrayStorage;
    sub_10005C508(0, v70, 0);
    v71 = v120;
    v75 = *(v72 + 16);
    v74 = v72 + 16;
    v76 = v32 + ((*(v74 + 64) + 32) & ~*(v74 + 64));
    v112 = *(v74 + 56);
    v116 = v75;
    do
    {
      v77 = v1[18];
      v78 = v1[15];
      v116(v77, v76, v78);
      StoredPhoto.localIdentifier.getter();
      (*(v74 - 8))(v77, v78);
      v120 = v71;
      v80 = v71[2];
      v79 = v71[3];
      if (v80 >= v79 >> 1)
      {
        sub_10005C508((v79 > 1), v80 + 1, 1);
        v71 = v120;
      }

      v81 = v1[13];
      v82 = v1[8];
      v71[2] = v80 + 1;
      (*(v73 + 32))(v71 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v80, v81, v82);
      v76 += v112;
      --v70;
    }

    while (v70);
  }

  v83 = *(v69 + 16);
  if (v83)
  {
    v84 = v1[9];
    v85 = sub_10006465C(*(v69 + 16), 0);
    v119 = sub_10006BA60(&v120, &v85[(*(v84 + 80) + 32) & ~*(v84 + 80)], v83, v69);
    v86 = v120;

    result = sub_100010E54(v86);
    if (v119 != v83)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    v85 = _swiftEmptyArrayStorage;
  }

  v87 = v1[23];
  v88 = v1[20];
  v89 = v1[21];
  v90 = v1[6];
  v120 = v71;
  sub_1000847B0(v85);
  sub_1000FAACC(&qword_10012A178, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
  static SyncedPhotosFace.faceChecksum(for:)();

  (*(v89 + 16))(v87, v90, v88);
  v91 = *(v69 + 16);
  if (v91)
  {
    v92 = v1[9];
    v93 = sub_10006465C(*(v69 + 16), 0);
    v94 = sub_10006BA60(&v120, &v93[(*(v92 + 80) + 32) & ~*(v92 + 80)], v91, v69);
    result = sub_100010E54(v120);
    if (v94 == v91)
    {
      goto LABEL_42;
    }

LABEL_47:
    __break(1u);
    return result;
  }

LABEL_42:
  default argument 4 of SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)();
  SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)();

  v95 = v1[1];

  return v95();
}

uint64_t sub_1000E6D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for StoredPhoto();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v9 = type metadata accessor for ShuffleID();
  v6[20] = v9;
  v6[21] = *(v9 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[25] = v10;
  v6[26] = *(v10 - 8);
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000E6FC4, 0, 0);
}

uint64_t sub_1000E6FC4()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[16];
    v4 = v0[9];
    sub_10005C508(0, v2, 0);
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v16 = *(v3 + 56);
    v17 = v5;
    v7 = (v3 - 8);
    do
    {
      v8 = v0[18];
      v9 = v0[15];
      v17(v8, v6, v9);
      StoredPhoto.localIdentifier.getter();
      (*v7)(v8, v9);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10005C508((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[10];
      v13 = v0[8];
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v6 += v16;
      --v2;
    }

    while (v2);
  }

  v0[28] = _swiftEmptyArrayStorage;
  v14 = swift_task_alloc();
  v0[29] = v14;
  *v14 = v0;
  v14[1] = sub_1000E71A8;

  return sub_100060270(_swiftEmptyArrayStorage);
}

uint64_t sub_1000E71A8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v5 = sub_1000FBEF4;
  }

  else
  {

    v5 = sub_1000E72C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E72C8(uint64_t a1)
{
  v121 = v1;
  v2 = v1[31];
  if (*(v2 + 16))
  {
    v3 = v1[24];
    v4 = v1[20];
    v5 = v1[21];
    v6 = v1[6];
    static Log.photos.getter();
    v7 = *(v5 + 16);
    v7(v3, v6, v4);

    v8 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v8, v117);
    v10 = v1[26];
    v11 = v1[27];
    v12 = v1[24];
    v13 = v1[25];
    if (v9)
    {
      loga = v8;
      v110 = v1[26];
      v113 = v1[27];
      v14 = v1[21];
      v15 = v1[22];
      v16 = v1[20];
      v101 = v1[3];
      v107 = v1[25];
      v17 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v17 = 134218754;
      *(v17 + 4) = *(v2 + 16);

      *(v17 + 12) = 2048;
      *(v17 + 14) = v101;
      *(v17 + 22) = 2080;
      v7(v15, v12, v16);
      v18 = *(v14 + 8);
      v18(v12, v16);
      sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v18(v15, v16);
      v22 = sub_100102F80(v19, v21, &v120);

      *(v17 + 24) = v22;
      *(v17 + 32) = 2080;
      v23 = Array.description.getter();
      v25 = v24;

      v26 = sub_100102F80(v23, v25, &v120);

      *(v17 + 34) = v26;
      _os_log_impl(&_mh_execute_header, loga, v117, "Ignoring %ld uncached photos on %ld for face %s: %s", v17, 0x2Au);
      swift_arrayDestroy();

      result = (*(v110 + 8))(v113, v107);
    }

    else
    {
      (*(v1[21] + 8))(v1[24], v1[20]);
      swift_bridgeObjectRelease_n();

      result = (*(v10 + 8))(v11, v13);
    }
  }

  else
  {
  }

  v28 = v1[30];
  v100 = *(v28 + 16);
  if (v100)
  {
    v29 = 0;
    v30 = v1[16];
    v97 = v1[9];
    v118 = v1[7];
    v114 = v118 + 56;
    v31 = (v97 + 8);
    v96 = (v30 + 8);
    v98 = v30;
    v102 = (v30 + 32);
    v32 = _swiftEmptyArrayStorage;
    v99 = v1[30];
    do
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      log = v29;
      v108 = v32;
      v104 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v103 = *(v98 + 72);
      (*(v98 + 16))(v1[19], v1[30] + v104 + v103 * v29, v1[15]);
      StoredPhoto.localIdentifier.getter();
      if (*(v118 + 16) && (sub_1000FAACC(&qword_10012A1F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v35 = dispatch thunk of Hashable._rawHashValue(seed:)(), v36 = -1 << *(v118 + 32), v37 = v35 & ~v36, ((*(v114 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0))
      {
        v38 = ~v36;
        v39 = *(v97 + 72);
        v40 = *(v97 + 16);
        while (1)
        {
          v41 = v1[11];
          v42 = v1[8];
          v40(v41, *(v118 + 48) + v37 * v39, v42);
          sub_1000FAACC(&qword_10012A660, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v43 = dispatch thunk of static Equatable.== infix(_:_:)();
          v44 = *v31;
          (*v31)(v41, v42);
          if (v43)
          {
            break;
          }

          v37 = (v37 + 1) & v38;
          if (((*(v114 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v33 = v1[19];
        v34 = v1[15];
        v44(v1[14], v1[8]);
        result = (*v96)(v33, v34);
        v32 = v108;
      }

      else
      {
LABEL_16:
        v45 = v1[19];
        v46 = v1[17];
        v47 = v1[15];
        (*v31)(v1[14], v1[8]);
        v48 = *v102;
        (*v102)(v46, v45, v47);
        v32 = v108;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v120 = v108;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10005C5D0(0, v108[2] + 1, 1);
          v32 = v120;
        }

        v51 = v32[2];
        v50 = v32[3];
        if (v51 >= v50 >> 1)
        {
          sub_10005C5D0((v50 > 1), v51 + 1, 1);
          v32 = v120;
        }

        v52 = v1[17];
        v53 = v1[15];
        v32[2] = v51 + 1;
        result = v48(v32 + v104 + v51 * v103, v52, v53);
      }

      v28 = v99;
      v29 = (&log->isa + 1);
    }

    while ((&log->isa + 1) != v100);
    v54 = *(v99 + 16);
    v55 = v1[30];
    if (!v54)
    {
      goto LABEL_28;
    }

    v109 = v32;
    v56 = v1[16];
    v57 = v1[9];
    v120 = _swiftEmptyArrayStorage;
    sub_10005C508(0, v54, 0);
    v58 = v120;
    v59 = *(v56 + 16);
    v56 += 16;
    v60 = v55 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
    v111 = *(v56 + 56);
    v115 = v59;
    v61 = (v56 - 8);
    do
    {
      v62 = v1[18];
      v63 = v1[15];
      v115(v62, v60, v63);
      StoredPhoto.localIdentifier.getter();
      (*v61)(v62, v63);
      v120 = v58;
      v65 = v58[2];
      v64 = v58[3];
      if (v65 >= v64 >> 1)
      {
        sub_10005C508((v64 > 1), v65 + 1, 1);
        v58 = v120;
      }

      v66 = v1[12];
      v67 = v1[8];
      v58[2] = v65 + 1;
      (*(v57 + 32))(v58 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v65, v66, v67);
      v60 += v111;
      --v54;
    }

    while (v54);

    v32 = v109;
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
LABEL_28:

    v58 = _swiftEmptyArrayStorage;
  }

  v68 = v1[7];

  v69 = sub_1000F3E6C(v58, v68);

  v70 = v32[2];
  v71 = _swiftEmptyArrayStorage;
  if (v70)
  {
    v72 = v1[16];
    v73 = v1[9];
    v120 = _swiftEmptyArrayStorage;
    sub_10005C508(0, v70, 0);
    v71 = v120;
    v75 = *(v72 + 16);
    v74 = v72 + 16;
    v76 = v32 + ((*(v74 + 64) + 32) & ~*(v74 + 64));
    v112 = *(v74 + 56);
    v116 = v75;
    do
    {
      v77 = v1[18];
      v78 = v1[15];
      v116(v77, v76, v78);
      StoredPhoto.localIdentifier.getter();
      (*(v74 - 8))(v77, v78);
      v120 = v71;
      v80 = v71[2];
      v79 = v71[3];
      if (v80 >= v79 >> 1)
      {
        sub_10005C508((v79 > 1), v80 + 1, 1);
        v71 = v120;
      }

      v81 = v1[13];
      v82 = v1[8];
      v71[2] = v80 + 1;
      (*(v73 + 32))(v71 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v80, v81, v82);
      v76 += v112;
      --v70;
    }

    while (v70);
  }

  v83 = *(v69 + 16);
  if (v83)
  {
    v84 = v1[9];
    v85 = sub_10006465C(*(v69 + 16), 0);
    v119 = sub_10006BA60(&v120, &v85[(*(v84 + 80) + 32) & ~*(v84 + 80)], v83, v69);
    v86 = v120;

    result = sub_100010E54(v86);
    if (v119 != v83)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    v85 = _swiftEmptyArrayStorage;
  }

  v87 = v1[23];
  v88 = v1[20];
  v89 = v1[21];
  v90 = v1[6];
  v120 = v71;
  sub_1000847B0(v85);
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  static SyncedPhotosFace.faceChecksum(for:)();

  (*(v89 + 16))(v87, v90, v88);
  v91 = *(v69 + 16);
  if (v91)
  {
    v92 = v1[9];
    v93 = sub_10006465C(*(v69 + 16), 0);
    v94 = sub_10006BA60(&v120, &v93[(*(v92 + 80) + 32) & ~*(v92 + 80)], v91, v69);
    result = sub_100010E54(v120);
    if (v94 == v91)
    {
      goto LABEL_42;
    }

LABEL_47:
    __break(1u);
    return result;
  }

LABEL_42:
  default argument 4 of SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)();
  SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)();

  v95 = v1[1];

  return v95();
}

uint64_t sub_1000E7E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for StoredPhoto();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v9 = type metadata accessor for AlbumID();
  v6[20] = v9;
  v6[21] = *(v9 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[25] = v10;
  v6[26] = *(v10 - 8);
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000E8068, 0, 0);
}

uint64_t sub_1000E8068()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[16];
    v4 = v0[9];
    sub_10005C508(0, v2, 0);
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v16 = *(v3 + 56);
    v17 = v5;
    v7 = (v3 - 8);
    do
    {
      v8 = v0[18];
      v9 = v0[15];
      v17(v8, v6, v9);
      StoredPhoto.localIdentifier.getter();
      (*v7)(v8, v9);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10005C508((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[10];
      v13 = v0[8];
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v6 += v16;
      --v2;
    }

    while (v2);
  }

  v0[28] = _swiftEmptyArrayStorage;
  v14 = swift_task_alloc();
  v0[29] = v14;
  *v14 = v0;
  v14[1] = sub_1000E824C;

  return sub_100060270(_swiftEmptyArrayStorage);
}

uint64_t sub_1000E824C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v5 = sub_1000E8ED0;
  }

  else
  {

    v5 = sub_1000E836C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E836C(uint64_t a1)
{
  v121 = v1;
  v2 = v1[31];
  if (*(v2 + 16))
  {
    v3 = v1[24];
    v4 = v1[20];
    v5 = v1[21];
    v6 = v1[6];
    static Log.photos.getter();
    v7 = *(v5 + 16);
    v7(v3, v6, v4);

    v8 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v8, v117);
    v10 = v1[26];
    v11 = v1[27];
    v12 = v1[24];
    v13 = v1[25];
    if (v9)
    {
      loga = v8;
      v110 = v1[26];
      v113 = v1[27];
      v14 = v1[21];
      v15 = v1[22];
      v16 = v1[20];
      v101 = v1[3];
      v107 = v1[25];
      v17 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v17 = 134218754;
      *(v17 + 4) = *(v2 + 16);

      *(v17 + 12) = 2048;
      *(v17 + 14) = v101;
      *(v17 + 22) = 2080;
      v7(v15, v12, v16);
      v18 = *(v14 + 8);
      v18(v12, v16);
      sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v18(v15, v16);
      v22 = sub_100102F80(v19, v21, &v120);

      *(v17 + 24) = v22;
      *(v17 + 32) = 2080;
      v23 = Array.description.getter();
      v25 = v24;

      v26 = sub_100102F80(v23, v25, &v120);

      *(v17 + 34) = v26;
      _os_log_impl(&_mh_execute_header, loga, v117, "Ignoring %ld uncached photos on %ld for face %s: %s", v17, 0x2Au);
      swift_arrayDestroy();

      result = (*(v110 + 8))(v113, v107);
    }

    else
    {
      (*(v1[21] + 8))(v1[24], v1[20]);
      swift_bridgeObjectRelease_n();

      result = (*(v10 + 8))(v11, v13);
    }
  }

  else
  {
  }

  v28 = v1[30];
  v100 = *(v28 + 16);
  if (v100)
  {
    v29 = 0;
    v30 = v1[16];
    v97 = v1[9];
    v118 = v1[7];
    v114 = v118 + 56;
    v31 = (v97 + 8);
    v96 = (v30 + 8);
    v98 = v30;
    v102 = (v30 + 32);
    v32 = _swiftEmptyArrayStorage;
    v99 = v1[30];
    do
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      log = v29;
      v108 = v32;
      v104 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v103 = *(v98 + 72);
      (*(v98 + 16))(v1[19], v1[30] + v104 + v103 * v29, v1[15]);
      StoredPhoto.localIdentifier.getter();
      if (*(v118 + 16) && (sub_1000FAACC(&qword_10012A1F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v35 = dispatch thunk of Hashable._rawHashValue(seed:)(), v36 = -1 << *(v118 + 32), v37 = v35 & ~v36, ((*(v114 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0))
      {
        v38 = ~v36;
        v39 = *(v97 + 72);
        v40 = *(v97 + 16);
        while (1)
        {
          v41 = v1[11];
          v42 = v1[8];
          v40(v41, *(v118 + 48) + v37 * v39, v42);
          sub_1000FAACC(&qword_10012A660, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v43 = dispatch thunk of static Equatable.== infix(_:_:)();
          v44 = *v31;
          (*v31)(v41, v42);
          if (v43)
          {
            break;
          }

          v37 = (v37 + 1) & v38;
          if (((*(v114 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v33 = v1[19];
        v34 = v1[15];
        v44(v1[14], v1[8]);
        result = (*v96)(v33, v34);
        v32 = v108;
      }

      else
      {
LABEL_16:
        v45 = v1[19];
        v46 = v1[17];
        v47 = v1[15];
        (*v31)(v1[14], v1[8]);
        v48 = *v102;
        (*v102)(v46, v45, v47);
        v32 = v108;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v120 = v108;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10005C5D0(0, v108[2] + 1, 1);
          v32 = v120;
        }

        v51 = v32[2];
        v50 = v32[3];
        if (v51 >= v50 >> 1)
        {
          sub_10005C5D0((v50 > 1), v51 + 1, 1);
          v32 = v120;
        }

        v52 = v1[17];
        v53 = v1[15];
        v32[2] = v51 + 1;
        result = v48(v32 + v104 + v51 * v103, v52, v53);
      }

      v28 = v99;
      v29 = (&log->isa + 1);
    }

    while ((&log->isa + 1) != v100);
    v54 = *(v99 + 16);
    v55 = v1[30];
    if (!v54)
    {
      goto LABEL_28;
    }

    v109 = v32;
    v56 = v1[16];
    v57 = v1[9];
    v120 = _swiftEmptyArrayStorage;
    sub_10005C508(0, v54, 0);
    v58 = v120;
    v59 = *(v56 + 16);
    v56 += 16;
    v60 = v55 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
    v111 = *(v56 + 56);
    v115 = v59;
    v61 = (v56 - 8);
    do
    {
      v62 = v1[18];
      v63 = v1[15];
      v115(v62, v60, v63);
      StoredPhoto.localIdentifier.getter();
      (*v61)(v62, v63);
      v120 = v58;
      v65 = v58[2];
      v64 = v58[3];
      if (v65 >= v64 >> 1)
      {
        sub_10005C508((v64 > 1), v65 + 1, 1);
        v58 = v120;
      }

      v66 = v1[12];
      v67 = v1[8];
      v58[2] = v65 + 1;
      (*(v57 + 32))(v58 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v65, v66, v67);
      v60 += v111;
      --v54;
    }

    while (v54);

    v32 = v109;
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
LABEL_28:

    v58 = _swiftEmptyArrayStorage;
  }

  v68 = v1[7];

  v69 = sub_1000F3E6C(v58, v68);

  v70 = v32[2];
  v71 = _swiftEmptyArrayStorage;
  if (v70)
  {
    v72 = v1[16];
    v73 = v1[9];
    v120 = _swiftEmptyArrayStorage;
    sub_10005C508(0, v70, 0);
    v71 = v120;
    v75 = *(v72 + 16);
    v74 = v72 + 16;
    v76 = v32 + ((*(v74 + 64) + 32) & ~*(v74 + 64));
    v112 = *(v74 + 56);
    v116 = v75;
    do
    {
      v77 = v1[18];
      v78 = v1[15];
      v116(v77, v76, v78);
      StoredPhoto.localIdentifier.getter();
      (*(v74 - 8))(v77, v78);
      v120 = v71;
      v80 = v71[2];
      v79 = v71[3];
      if (v80 >= v79 >> 1)
      {
        sub_10005C508((v79 > 1), v80 + 1, 1);
        v71 = v120;
      }

      v81 = v1[13];
      v82 = v1[8];
      v71[2] = v80 + 1;
      (*(v73 + 32))(v71 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v80, v81, v82);
      v76 += v112;
      --v70;
    }

    while (v70);
  }

  v83 = *(v69 + 16);
  if (v83)
  {
    v84 = v1[9];
    v85 = sub_10006465C(*(v69 + 16), 0);
    v119 = sub_10006BA60(&v120, &v85[(*(v84 + 80) + 32) & ~*(v84 + 80)], v83, v69);
    v86 = v120;

    result = sub_100010E54(v86);
    if (v119 != v83)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    v85 = _swiftEmptyArrayStorage;
  }

  v87 = v1[23];
  v88 = v1[20];
  v89 = v1[21];
  v90 = v1[6];
  v120 = v71;
  sub_1000847B0(v85);
  sub_1000FAACC(&qword_10012A048, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
  static SyncedPhotosFace.faceChecksum(for:)();

  (*(v89 + 16))(v87, v90, v88);
  v91 = *(v69 + 16);
  if (v91)
  {
    v92 = v1[9];
    v93 = sub_10006465C(*(v69 + 16), 0);
    v94 = sub_10006BA60(&v120, &v93[(*(v92 + 80) + 32) & ~*(v92 + 80)], v91, v69);
    result = sub_100010E54(v120);
    if (v94 == v91)
    {
      goto LABEL_42;
    }

LABEL_47:
    __break(1u);
    return result;
  }

LABEL_42:
  default argument 4 of SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)();
  SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)();

  v95 = v1[1];

  return v95();
}

uint64_t sub_1000E8ED0()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1000E8FD8()
{
  *(v0 + 32) = sub_10005D0B4(_swiftEmptyArrayStorage);
  *(v0 + 40) = sub_10005D1C4(_swiftEmptyArrayStorage);
  *(v0 + 48) = 0;
  *(v0 + 56) = *_emptyDequeStorage.unsafeMutableAddressor();
  type metadata accessor for OutgoingConnectionManager(0);
  swift_allocObject();

  *(v0 + 16) = sub_10007346C();
  type metadata accessor for IncomingConnectionManager();
  swift_allocObject();
  *(v0 + 24) = sub_10006FE60();
  sub_10000560C(&qword_10012B600, &qword_10010A9C8);
  type metadata accessor for MessageBody();
  default argument 0 of MessageDemultiplexer.init(timeout:logTag:)();
  *(v0 + 64) = MessageDemultiplexer.__allocating_init(timeout:logTag:)();
  return v0;
}

void sub_1000E90D0()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *(v1 + 32) = &unk_10010A0E8;
  *(v1 + 40) = v2;

  sub_100071B20(v3, v4);

  type metadata accessor for CommunicationActor();
  v5 = static CommunicationActor.sharedQueue.getter();
  NWListener.start(queue:)();
}

uint64_t sub_1000E9190(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  type metadata accessor for CommunicationActor();
  v2[7] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_1000E9258, v4, v3);
}

uint64_t sub_1000E9258()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1000E9350;
    v3 = v0[5];

    return sub_1000E94F4(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000E9350()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1000E9494, v3, v2);
}

uint64_t sub_1000E9494()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E94F4(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v2[27] = swift_task_alloc();
  v3 = sub_10000560C(&qword_10012B448, &qword_10010A0F8);
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v4 = type metadata accessor for Message.Operation();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v5 = type metadata accessor for Message();
  v2[36] = v5;
  v6 = *(v5 - 8);
  v2[37] = v6;
  v2[38] = *(v6 + 64);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[52] = v7;
  v2[53] = *(v7 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v8 = type metadata accessor for ProtocolVersion();
  v2[66] = v8;
  v2[67] = *(v8 - 8);
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v9 = type metadata accessor for MessageBody();
  v2[70] = v9;
  v2[71] = *(v9 - 8);
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = type metadata accessor for CommunicationActor();
  v2[77] = static CommunicationActor.shared.getter();
  v2[78] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[79] = v11;
  v2[80] = v10;

  return _swift_task_switch(sub_1000E9998, v11, v10);
}

uint64_t sub_1000E9998(uint64_t a1)
{
  v403 = v1;
  v2 = v1;
  v3 = v1[75];
  v4 = v1[71];
  v5 = v2[70];
  v6 = v2[69];
  v7 = v2[68];
  v8 = v2[67];
  v9 = v2[66];
  Message.content.getter();
  MessageBody.version.getter();
  v10 = *(v4 + 8);
  v2[81] = v10;
  v2[82] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v388 = v10;
  v10(v3, v5);
  v11 = *(v8 + 104);
  v11(v7, enum case for ProtocolVersion.V0(_:), v9);
  sub_1000FAACC(&qword_10012B450, &type metadata accessor for ProtocolVersion, &protocol conformance descriptor for ProtocolVersion);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = *(v8 + 8);
  v12(v7, v9);
  v12(v6, v9);
  if (*(v2 + 192) == *(v2 + 193) || (v13 = v2[75], v375 = v2[70], v381 = v11, v14 = v2[69], v15 = v2[68], v16 = v2, v17 = v2[66], Message.content.getter(), MessageBody.version.getter(), v388(v13, v375), v381(v15, enum case for ProtocolVersion.V1(_:), v17), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v12(v15, v17), v18 = v17, v2 = v16, v12(v14, v18), *(v16 + 194) == *(v16 + 195)))
  {
    v20 = v2[50];
    v19 = v2[51];
    v22 = v2[36];
    v21 = v2[37];
    v23 = v2[25];
    static Log.network.getter();
    v24 = *(v21 + 16);
    v24(v19, v23, v22);
    v376 = v24;
    v24(v20, v23, v22);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v2[75];
      v350 = v2[70];
      v367 = v2[65];
      v359 = v2[53];
      v363 = v2[52];
      v351 = v26;
      v28 = v2[51];
      v347 = v2[50];
      v30 = v2[36];
      v29 = v2[37];
      v31 = swift_slowAlloc();
      v32 = v2;
      v402[0] = swift_slowAlloc();
      *v31 = 136315394;
      v33 = Message.shortDescription.getter();
      v35 = v34;
      v36 = *(v29 + 8);
      v36(v28, v30);
      v37 = sub_100102F80(v33, v35, v402);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      Message.content.getter();
      MessageBody.version.getter();
      v388(v27, v350);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      v36(v347, v30);
      v41 = sub_100102F80(v38, v40, v402);

      *(v31 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v25, v351, "[NMC] Ignoring %s, as it's %s", v31, 0x16u);
      swift_arrayDestroy();

      v42 = *(v359 + 8);
      v42(v367, v363);
    }

    else
    {
      v43 = v2[65];
      v44 = v2[52];
      v45 = v2[53];
      v47 = v2[50];
      v46 = v2[51];
      v32 = v2;
      v48 = v2[37];
      v49 = v32[36];

      v36 = *(v48 + 8);
      v36(v47, v49);
      v36(v46, v49);
      v42 = *(v45 + 8);
      v42(v43, v44);
    }

    v50 = v32[35];
    v51 = v32[32];
    v52 = v32[33];
    Message.operation.getter();
    v53 = (*(v52 + 88))(v50, v51);
    v2 = v32;
    if (v53 == enum case for Message.Operation.event(_:))
    {
      goto LABEL_7;
    }

    if (v53 != enum case for Message.Operation.request(_:))
    {
      if (v53 == enum case for Message.Operation.response(_:))
      {
LABEL_7:

        goto LABEL_8;
      }

      v91 = enum case for Message.Operation.error(_:);
      v92 = v53;

      if (v92 == v91)
      {
        goto LABEL_8;
      }

      v93 = v32[35];
      goto LABEL_90;
    }

    v354 = v42;
    v357 = v36;
    v360 = enum case for Message.Operation.event(_:);
    v364 = v32[78];
    v56 = v32[49];
    v352 = v32[48];
    v57 = v32[37];
    v59 = v32[35];
    v58 = v2[36];
    v60 = v2[25];
    v348 = v60;
    (*(v2[33] + 96))(v59, v2[32]);
    v368 = v2;
    v61 = *(v59 + 4);
    static CommunicationActor.shared.getter();
    v376(v56, v60, v58);
    v62 = (*(v57 + 80) + 20) & ~*(v57 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v61;
    v2 = v368;
    (*(v57 + 32))(v63 + v62, v56, v58);
    v64 = swift_allocObject();
    *(v64 + 16) = &unk_10010A128;
    *(v64 + 24) = v63;
    generateElements<A>(isolation:_:)();

    static Log.network.getter();
    v376(v352, v348, v58);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v368[64];
    v69 = v368[52];
    v70 = v368[48];
    v71 = v368[36];
    if (v67)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v402[0] = v73;
      *v72 = 136315138;
      v382 = v69;
      v74 = Message.shortDescription.getter();
      v76 = v75;
      v357(v70, v71);
      v77 = sub_100102F80(v74, v76, v402);

      *(v72 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v65, v66, "[MSQ] Enqueue reply stream for: %s", v72, 0xCu);
      sub_10000C304(v73);

      v2 = v368;

      v78 = v382;
      v79 = v68;
    }

    else
    {

      v357(v70, v71);
      v79 = v68;
      v78 = v69;
    }

    v354(v79, v78);
    v81 = v2[36];
    v82 = v2[31];
    v83 = v2[28];
    v84 = v2[29];
    v85 = v2[26];
    v2[10] = v83;
    v2[24] = v81;
    v2[11] = swift_getOpaqueTypeConformance2();
    v86 = sub_10000C1AC(v2 + 7);
    (*(v84 + 16))(v86, v82, v83);
    swift_beginAccess();
    result = *(v85 + 56);
    v87 = *(result + 24);
    v88 = v87 + 1;
    v80 = v360;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
      goto LABEL_101;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = *(v85 + 56);
    if (*(v90 + 16) < v88 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10000ABC8(isUniquelyReferenced_nonNull_native, v88, 0);
      v90 = *(v85 + 56);
    }

    sub_10000B028((v90 + 16), v90 + 40, (v2 + 7));
    v94 = v2[26];
    swift_endAccess();
    sub_10000C304(v2 + 7);
    if ((*(v94 + 48) & 1) == 0)
    {
      v96 = v2[26];
      v95 = v2[27];
      v97 = type metadata accessor for TaskPriority();
      (*(*(v97 - 8) + 56))(v95, 1, 1, v97);

      v98 = static CommunicationActor.shared.getter();
      v99 = swift_allocObject();
      v99[2] = v98;
      v99[3] = v364;
      v99[4] = v96;
      sub_100005654(0, 0, v95, &unk_10010A138, v99);
    }

    (*(v2[29] + 8))(v2[31], v2[28]);
  }

  else
  {
    v80 = enum case for Message.Operation.event(_:);
  }

  v101 = v2[33];
  v100 = v2[34];
  v102 = v2[32];
  Message.operation.getter();
  v103 = (*(v101 + 88))(v100, v102);
  if (v103 == v80)
  {
    v104 = v2[34];
    (*(v2[33] + 96))(v104, v2[32]);
    v105 = *v104;
    *(v2 + 196) = v105;
    v106 = sub_10000C758(v105);
    if (v106 == 4)
    {
      v107 = v2[44];
      v108 = v2[36];
      v109 = v2[37];
      v110 = v2[25];

      static Log.network.getter();
      (*(v109 + 16))(v107, v110, v108);
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();
      v113 = os_log_type_enabled(v111, v112);
      v114 = v2[60];
      v116 = v2[52];
      v115 = v2[53];
      v117 = v2[44];
      v119 = v2[36];
      v118 = v2[37];
      if (v113)
      {
        v369 = v2;
        v120 = swift_slowAlloc();
        v395 = v116;
        v402[0] = swift_slowAlloc();
        v121 = v402[0];
        *v120 = 67109378;
        *(v120 + 4) = v105;
        *(v120 + 8) = 2080;
        v122 = Message.shortDescription.getter();
        v389 = v114;
        v124 = v123;
        (*(v118 + 8))(v117, v119);
        v125 = sub_100102F80(v122, v124, v402);

        *(v120 + 10) = v125;
        _os_log_impl(&_mh_execute_header, v111, v112, "handleMessage: Invalid message type %u. Dropping message %s", v120, 0x12u);
        sub_10000C304(v121);

        v2 = v369;

        (*(v115 + 8))(v389, v395);
      }

      else
      {

        (*(v118 + 8))(v117, v119);
        (*(v115 + 8))(v114, v116);
      }

      goto LABEL_8;
    }

    v152 = v106;
    v153 = v2[45];
    v155 = v2[36];
    v154 = v2[37];
    v156 = v2[25];
    static Log.network.getter();
    (*(v154 + 16))(v153, v156, v155);
    v157 = Logger.logObject.getter();
    v158 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v157, v158))
    {
      v209 = v2[61];
      v210 = v2[52];
      v211 = v2[53];
      v212 = v2[45];
      v214 = v2[36];
      v213 = v2[37];

      (*(v213 + 8))(v212, v214);
      v215 = *(v211 + 8);
      v215(v209, v210);
      goto LABEL_79;
    }

    v397 = v158;
    v159 = 0xEE00796461655263;
    v160 = swift_slowAlloc();
    v402[0] = swift_slowAlloc();
    *v160 = 136315394;
    if (v152 > 1u)
    {
      if (v152 != 2)
      {
        v161 = 0x53796C696164;
        goto LABEL_77;
      }

      v220 = 0xD000000000000010;
      v221 = "shuffleSyncReady";
    }

    else
    {
      if (!v152)
      {
        v161 = 0x536D75626C61;
LABEL_77:
        v220 = v161 & 0xFFFFFFFFFFFFLL | 0x6E79000000000000;
        goto LABEL_78;
      }

      v220 = 0xD000000000000010;
      v221 = "gallerySyncReady";
    }

    v159 = (v221 - 32) | 0x8000000000000000;
LABEL_78:
    v307 = v2[53];
    v380 = v2[52];
    v387 = v2[61];
    v308 = v2[45];
    v310 = v2[36];
    v309 = v2[37];
    v311 = sub_100102F80(v220, v159, v402);

    *(v160 + 4) = v311;
    *(v160 + 12) = 2080;
    sub_1000FAACC(&qword_100129EE8, &type metadata accessor for Message, &protocol conformance descriptor for Message);
    v312 = dispatch thunk of CustomStringConvertible.description.getter();
    v314 = v313;
    (*(v309 + 8))(v308, v310);
    v315 = sub_100102F80(v312, v314, v402);

    *(v160 + 14) = v315;
    _os_log_impl(&_mh_execute_header, v157, v397, "[NMC] Received %s: %s", v160, 0x16u);
    swift_arrayDestroy();

    v215 = *(v307 + 8);
    v215(v387, v380);
LABEL_79:
    v2[85] = v215;
    v316 = v2[26];
    swift_beginAccess();
    v317 = *(v316 + 40);
    if (*(v317 + 16) && (v318 = sub_10005F8DC(), (v319 & 1) != 0))
    {
      v320 = *(*(v317 + 56) + 8 * v318);
    }

    else
    {
      v320 = _swiftEmptyArrayStorage;
    }

    v2[86] = v320;
    v321 = v320[2];
    v2[87] = v321;
    if (!v321)
    {

      goto LABEL_8;
    }

    v2[88] = 0;
    v322 = v320[4];
    v2[89] = v320[5];

    Message.content.getter();
    v401 = (v322 + *v322);
    v323 = swift_task_alloc();
    v2[90] = v323;
    *v323 = v2;
    v323[1] = sub_1000EBD1C;

    return v401();
  }

  if (v103 == enum case for Message.Operation.request(_:))
  {
    v126 = v2[37];
    v128 = v2[33];
    v127 = v2[34];
    v129 = v2[32];

    (*(v128 + 96))(v127, v129);
    v131 = *v127;
    v130 = v127[1];
    v132 = sub_10000C748(*v127);
    v133 = (v126 + 16);
    v134 = v2[36];
    v135 = v2[25];
    if (v132 == 14)
    {
      v136 = v2[42];
      static Log.network.getter();
      (*v133)(v136, v135, v134);
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.error.getter();
      v139 = os_log_type_enabled(v137, v138);
      v140 = v2[57];
      v141 = v2[52];
      v142 = v2[53];
      v143 = v2[42];
      v145 = v2[36];
      v144 = v2[37];
      if (v139)
      {
        v370 = v2;
        v146 = swift_slowAlloc();
        v396 = v141;
        v402[0] = swift_slowAlloc();
        v147 = v402[0];
        *v146 = 67109378;
        *(v146 + 4) = v131;
        *(v146 + 8) = 2080;
        v148 = Message.shortDescription.getter();
        v390 = v140;
        v150 = v149;
        (*(v144 + 8))(v143, v145);
        v151 = sub_100102F80(v148, v150, v402);

        *(v146 + 10) = v151;
        _os_log_impl(&_mh_execute_header, v137, v138, "handleMessage: Invalid request type %u. Dropping message %s", v146, 0x12u);
        sub_10000C304(v147);

        v2 = v370;

        (*(v142 + 8))(v390, v396);
      }

      else
      {

        (*(v144 + 8))(v143, v145);
        (*(v142 + 8))(v140, v141);
      }

LABEL_8:

      v54 = v2[1];

      return v54();
    }

    v391 = v132;
    v362 = v130;
    v186 = v2[43];
    static Log.network.getter();
    v366 = *v133;
    (*v133)(v186, v135, v134);
    v187 = Logger.logObject.getter();
    v188 = static os_log_type_t.default.getter();
    v189 = os_log_type_enabled(v187, v188);
    v190 = v2[58];
    v192 = v2[52];
    v191 = v2[53];
    v193 = v2[43];
    v194 = v2;
    v195 = v2[37];
    v372 = v194;
    v196 = v194[36];
    v378 = v131;
    if (v189)
    {
      v197 = v188;
      v198 = swift_slowAlloc();
      v402[0] = swift_slowAlloc();
      *v198 = 136315394;
      v199 = sub_1000025CC(v391);
      v384 = v192;
      v355 = v190;
      v201 = sub_100102F80(v199, v200, v402);

      *(v198 + 4) = v201;
      *(v198 + 12) = 2080;
      sub_1000FAACC(&qword_100129EE8, &type metadata accessor for Message, &protocol conformance descriptor for Message);
      v202 = dispatch thunk of CustomStringConvertible.description.getter();
      v204 = v203;
      v358 = *(v195 + 8);
      v358(v193, v196);
      v205 = sub_100102F80(v202, v204, v402);

      *(v198 + 14) = v205;
      _os_log_impl(&_mh_execute_header, v187, v197, "[NMC] Received %s: %s", v198, 0x16u);
      swift_arrayDestroy();

      v206 = *(v191 + 8);
      v207 = v355;
      v208 = v384;
    }

    else
    {

      v358 = *(v195 + 8);
      v358(v193, v196);
      v206 = *(v191 + 8);
      v207 = v190;
      v208 = v192;
    }

    v356 = v206;
    v206(v207, v208);
    v2 = v372;
    v386 = v372[78];
    v246 = v372[49];
    v353 = v372[41];
    v248 = v372[37];
    v247 = v372[38];
    v249 = v372[36];
    v251 = v372[25];
    v250 = v372[26];
    v349 = v251;
    static CommunicationActor.shared.getter();
    v366(v246, v251, v249);
    v252 = (*(v248 + 80) + 32) & ~*(v248 + 80);
    v253 = swift_allocObject();
    *(v253 + 16) = v250;
    *(v253 + 24) = v391;
    *(v253 + 28) = v378;
    (*(v248 + 32))(v253 + v252, v246, v249);
    *(v253 + ((v247 + v252 + 3) & 0xFFFFFFFFFFFFFFFCLL)) = v362;
    v254 = swift_allocObject();
    *(v254 + 16) = &unk_10010A108;
    *(v254 + 24) = v253;

    generateElements<A>(isolation:_:)();

    static Log.network.getter();
    v366(v353, v349, v249);
    v255 = Logger.logObject.getter();
    v256 = static os_log_type_t.debug.getter();
    v257 = os_log_type_enabled(v255, v256);
    v258 = v372[56];
    v259 = v372[52];
    v260 = v372[41];
    v261 = v372[36];
    if (v257)
    {
      v262 = swift_slowAlloc();
      v399 = v258;
      v402[0] = swift_slowAlloc();
      v263 = v402[0];
      *v262 = 136315138;
      v264 = Message.shortDescription.getter();
      v393 = v259;
      v266 = v265;
      v358(v260, v261);
      v267 = sub_100102F80(v264, v266, v402);

      *(v262 + 4) = v267;
      _os_log_impl(&_mh_execute_header, v255, v256, "[MSQ] Enqueue reply stream for: %s", v262, 0xCu);
      sub_10000C304(v263);

      v2 = v372;

      v269 = v393;
      v268 = v399;
    }

    else
    {

      v358(v260, v261);
      v268 = v258;
      v269 = v259;
    }

    v356(v268, v269);
    v289 = v2[36];
    v291 = v2[29];
    v290 = v2[30];
    v292 = v2[28];
    v293 = v2[26];
    v2[5] = v292;
    v2[23] = v289;
    v2[6] = swift_getOpaqueTypeConformance2();
    v294 = sub_10000C1AC(v2 + 2);
    (*(v291 + 16))(v294, v290, v292);
    swift_beginAccess();
    result = *(v293 + 56);
    v295 = *(result + 24);
    v296 = v295 + 1;
    if (!__OFADD__(v295, 1))
    {
      v297 = swift_isUniquelyReferenced_nonNull_native();
      v298 = *(v293 + 56);
      if (*(v298 + 16) < v296 || (v297 & 1) == 0)
      {
        sub_10000ABC8(v297, v296, 0);
        v298 = *(v293 + 56);
      }

      sub_10000B028((v298 + 16), v298 + 40, (v2 + 2));
      v299 = v2[26];
      swift_endAccess();
      sub_10000C304(v2 + 2);
      if ((*(v299 + 48) & 1) == 0)
      {
        v301 = v2[26];
        v300 = v2[27];
        v302 = type metadata accessor for TaskPriority();
        (*(*(v302 - 8) + 56))(v300, 1, 1, v302);

        v303 = static CommunicationActor.shared.getter();
        v304 = swift_allocObject();
        v304[2] = v303;
        v304[3] = v386;
        v304[4] = v301;
        sub_100005654(0, 0, v300, &unk_10010A120, v304);
      }

      v305 = v2[29];
      v93 = v2[30];
      v306 = v2[28];
      goto LABEL_91;
    }

LABEL_101:
    __break(1u);
    return result;
  }

  if (v103 != enum case for Message.Operation.response(_:))
  {
    v216 = enum case for Message.Operation.error(_:);
    v217 = v103;

    if (v217 == v216)
    {
      v218 = v2[34];
      (*(v2[33] + 96))(v218, v2[32]);
      v219 = *v218;
      Message.content.getter();
      MessageBody.deserialized<A>()();
      v325 = v2[21];
      v324 = v2[22];
      v326 = v2[39];
      v328 = v2[36];
      v327 = v2[37];
      v329 = v2[25];
      v388(v2[74], v2[70]);
      static Log.network.getter();
      (*(v327 + 16))(v326, v329, v328);

      v330 = Logger.logObject.getter();
      v331 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v330, v331))
      {
        v333 = swift_slowAlloc();
        v334 = swift_slowAlloc();
        v402[0] = v334;
        *v333 = 67109378;
        *(v333 + 4) = v219;
        *(v333 + 8) = 2080;
        if (!v324)
        {
          v325 = Message.description.getter();
          v324 = v335;
        }

        v337 = v2[53];
        v336 = v2[54];
        v338 = v2[52];
        (*(v2[37] + 8))(v2[39], v2[36]);
        v339 = sub_100102F80(v325, v324, v402);

        *(v333 + 10) = v339;
        _os_log_impl(&_mh_execute_header, v330, v331, "[NMC] Error executing request %u: %s", v333, 0x12u);
        sub_10000C304(v334);

        (*(v337 + 8))(v336, v338);
      }

      else
      {
        v341 = v2[53];
        v340 = v2[54];
        v342 = v2[52];
        v343 = v2[39];
        v344 = v2[36];
        v345 = v2[37];

        (*(v345 + 8))(v343, v344);
        (*(v341 + 8))(v340, v342);
      }

      sub_10008559C();
      swift_allocError();
      *v346 = 0;

      dispatch thunk of MessageDemultiplexer.error(_:_:)();

      goto LABEL_7;
    }

    v270 = v2[46];
    v271 = v2[36];
    v272 = v2[37];
    v273 = v2[25];
    static Log.network.getter();
    (*(v272 + 16))(v270, v273, v271);
    v274 = Logger.logObject.getter();
    v275 = static os_log_type_t.error.getter();
    v276 = os_log_type_enabled(v274, v275);
    v277 = v2[62];
    v279 = v2[52];
    v278 = v2[53];
    v280 = v2[46];
    v282 = v2[36];
    v281 = v2[37];
    if (v276)
    {
      v400 = v2[52];
      v283 = swift_slowAlloc();
      v374 = v2;
      v284 = swift_slowAlloc();
      v402[0] = v284;
      *v283 = 136315138;
      sub_1000FAACC(&qword_100129EE8, &type metadata accessor for Message, &protocol conformance descriptor for Message);
      v285 = dispatch thunk of CustomStringConvertible.description.getter();
      v394 = v277;
      v287 = v286;
      (*(v281 + 8))(v280, v282);
      v288 = sub_100102F80(v285, v287, v402);

      *(v283 + 4) = v288;
      _os_log_impl(&_mh_execute_header, v274, v275, "[NMC] Unknown message type for message %s. Ignoring.", v283, 0xCu);
      sub_10000C304(v284);
      v2 = v374;

      (*(v278 + 8))(v394, v400);
    }

    else
    {

      (*(v281 + 8))(v280, v282);
      (*(v278 + 8))(v277, v279);
    }

    v93 = v2[34];
LABEL_90:
    v306 = v2[32];
    v305 = v2[33];
LABEL_91:
    (*(v305 + 8))(v93, v306);
    goto LABEL_8;
  }

  v162 = v2[47];
  v164 = v2[36];
  v163 = v2[37];
  v165 = v2[34];
  v166 = v2[25];
  (*(v2[33] + 96))(v165, v2[32]);
  v167 = *v165;
  *(v2 + 197) = v167;
  static Log.network.getter();
  v168 = *(v163 + 16);
  v2[83] = v168;
  v2[84] = (v163 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v168(v162, v166, v164);
  v169 = Logger.logObject.getter();
  v170 = static os_log_type_t.default.getter();
  v171 = os_log_type_enabled(v169, v170);
  v172 = v2[63];
  v173 = v2[52];
  v174 = v2[53];
  v175 = v2[47];
  v177 = v2[36];
  v176 = v2[37];
  if (v171)
  {
    v371 = v2;
    v178 = swift_slowAlloc();
    v383 = v167;
    v179 = swift_slowAlloc();
    v402[0] = v179;
    *v178 = 136315138;
    sub_1000FAACC(&qword_100129EE8, &type metadata accessor for Message, &protocol conformance descriptor for Message);
    v377 = v172;
    v180 = dispatch thunk of CustomStringConvertible.description.getter();
    v365 = v173;
    v182 = v181;
    v361 = v170;
    v183 = *(v176 + 8);
    v183(v175, v177);
    v184 = sub_100102F80(v180, v182, v402);

    *(v178 + 4) = v184;
    _os_log_impl(&_mh_execute_header, v169, v361, "[NMC] Received response: %s", v178, 0xCu);
    sub_10000C304(v179);
    v167 = v383;

    v2 = v371;

    v185 = *(v174 + 8);
    v185(v377, v365);
  }

  else
  {

    v183 = *(v176 + 8);
    v183(v175, v177);
    v185 = *(v174 + 8);
    v185(v172, v173);
  }

  v2[93] = v183;
  v2[92] = v185;
  v222 = v2[72];
  v223 = v2[70];
  Message.content.getter();
  v224 = MessageBody.isEmpty.getter();
  v388(v222, v223);
  if (v224 & 1) != 0 && (Message.complete.getter())
  {

    if ((Message.complete.getter() & 1) == 0)
    {
      goto LABEL_8;
    }

    v225 = v2[83];
    v226 = v2[40];
    v227 = v2[36];
    v228 = v2[25];
    static Log.network.getter();
    v225(v226, v228, v227);
    v229 = Logger.logObject.getter();
    v230 = static os_log_type_t.default.getter();
    v231 = os_log_type_enabled(v229, v230);
    v232 = v2[93];
    v233 = v2[92];
    v234 = v2[55];
    v235 = v2[52];
    v236 = v2[40];
    v237 = v2[36];
    if (v231)
    {
      v392 = v2[55];
      v238 = swift_slowAlloc();
      v373 = v2;
      v239 = swift_slowAlloc();
      v402[0] = v239;
      *v238 = 136315138;
      sub_1000FAACC(&qword_100129EE8, &type metadata accessor for Message, &protocol conformance descriptor for Message);
      v379 = v235;
      v385 = v233;
      v240 = dispatch thunk of CustomStringConvertible.description.getter();
      v242 = v241;
      v232(v236, v237);
      v243 = sub_100102F80(v240, v242, v402);

      *(v238 + 4) = v243;
      _os_log_impl(&_mh_execute_header, v229, v230, "[NMC] Finished receiving response: %s", v238, 0xCu);
      sub_10000C304(v239);
      v2 = v373;

      v385(v392, v379);
    }

    else
    {

      v232(v236, v237);
      v233(v234, v235);
    }

    dispatch thunk of MessageDemultiplexer.finish(_:)();
    goto LABEL_7;
  }

  v2[94] = *(v2[26] + 64);

  Message.content.getter();
  v398 = (&async function pointer to dispatch thunk of MessageDemultiplexer.send(_:_:) + async function pointer to dispatch thunk of MessageDemultiplexer.send(_:_:));
  v244 = swift_task_alloc();
  v2[95] = v244;
  *v244 = v2;
  v244[1] = sub_1000EC6A4;
  v245 = v2[75];

  return (v398)(v167, v245);
}

uint64_t sub_1000EBD1C()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  v3 = v2[81];
  v4 = v2[73];
  v5 = v2[70];

  v3(v4, v5);
  v6 = v2[80];
  v7 = v2[79];
  if (v0)
  {
    v8 = sub_1000EC228;
  }

  else
  {
    v8 = sub_1000EBEDC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000EBEDC()
{
  v1 = v0[88] + 1;
  if (v1 == v0[87])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[88] = v1;
    v4 = v0[86] + 16 * v1;
    v5 = *(v4 + 32);
    v0[89] = *(v4 + 40);

    Message.content.getter();
    v7 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[90] = v6;
    *v6 = v0;
    v6[1] = sub_1000EBD1C;

    return v7();
  }
}

uint64_t sub_1000EC228(uint64_t a1)
{
  static Log.network.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 784);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 67109378;
    *(v5 + 4) = v4;
    *(v5 + 8) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 10) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "handleMessage: Exception occurred while processing event %u. Error: %@", v5, 0x12u);
    sub_10000C460(v6, &qword_100129EF8, &qword_100108C70);
  }

  else
  {
  }

  (*(v1 + 680))(*(v1 + 472), *(v1 + 416));
  v8 = *(v1 + 704) + 1;
  if (v8 == *(v1 + 696))
  {

    v9 = *(v1 + 8);

    return v9();
  }

  else
  {
    *(v1 + 704) = v8;
    v11 = *(v1 + 688) + 16 * v8;
    v12 = *(v11 + 32);
    *(v1 + 712) = *(v11 + 40);

    Message.content.getter();
    v14 = (v12 + *v12);
    v13 = swift_task_alloc();
    *(v1 + 720) = v13;
    *v13 = v1;
    v13[1] = sub_1000EBD1C;

    return v14();
  }
}

uint64_t sub_1000EC6A4()
{
  v1 = *v0;
  v2 = *(*v0 + 648);
  v3 = *(*v0 + 600);
  v4 = *(*v0 + 560);

  v2(v3, v4);
  v5 = *(v1 + 640);
  v6 = *(v1 + 632);

  return _swift_task_switch(sub_1000EC854, v6, v5);
}

uint64_t sub_1000EC854()
{
  v26 = v0;

  if (Message.complete.getter())
  {
    v1 = v0[83];
    v2 = v0[40];
    v3 = v0[36];
    v4 = v0[25];
    static Log.network.getter();
    v1(v2, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v24 = v0[93];
    v8 = v0[92];
    v9 = v0[55];
    v10 = v0[52];
    v11 = v0[40];
    v12 = v0[36];
    if (v7)
    {
      v23 = v0[55];
      v13 = swift_slowAlloc();
      v22 = v10;
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      sub_1000FAACC(&qword_100129EE8, &type metadata accessor for Message, &protocol conformance descriptor for Message);
      v21 = v8;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v24(v11, v12);
      v18 = sub_100102F80(v15, v17, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v5, v6, "[NMC] Finished receiving response: %s", v13, 0xCu);
      sub_10000C304(v14);

      v21(v23, v22);
    }

    else
    {

      v24(v11, v12);
      v8(v9, v10);
    }

    dispatch thunk of MessageDemultiplexer.finish(_:)();
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000ECC88(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v33 = a1;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.network.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v11;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = a2;
    v19 = v18;
    v35[0] = v18;
    *v17 = 136315138;
    v20 = sub_10004DF54(v33);
    v32 = a3;
    v22 = sub_100102F80(v20, v21, v35);
    v29 = v10;
    v23 = a5;
    v24 = v22;
    a3 = v32;

    *(v17 + 4) = v24;
    a5 = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Registry: Registering request for %s.", v17, 0xCu);
    sub_10000C304(v19);
    a2 = v31;

    (*(v30 + 8))(v13, v29);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v7 + 32);
  *(v7 + 32) = 0x8000000000000000;
  sub_10005BF40(a5, v25, v33, isUniquelyReferenced_nonNull_native);
  *(v7 + 32) = v34;
  return swift_endAccess();
}

uint64_t sub_1000ECF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a6@<X8>)
{
  v10 = type metadata accessor for MessageBody();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  (*(v11 + 16))(v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v11 + 32))(v14 + v13, v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  a6[3] = sub_10000560C(&qword_10012A628, &qword_1001094F0);
  v16[1] = v10;
  a6[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(a6);

  return generateElements<A>(isolation:_:)();
}

uint64_t sub_1000ED0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  type metadata accessor for ProtocolVersion();
  v5[13] = swift_task_alloc();
  v6 = type metadata accessor for MessageBody();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000ED19C, 0, 0);
}

uint64_t sub_1000ED19C()
{
  MessageBody.deserialized<A>()();
  v3 = (*(v0 + 80) + **(v0 + 80));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1000ED30C;

  return v3(v0 + 16, v0 + 32);
}

uint64_t sub_1000ED30C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1000ED5F4;
  }

  else
  {
    v2 = sub_1000ED430;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000ED430()
{
  v0[6] = v0[2];
  v1 = v0[18];
  v2 = v0[3];
  v0[19] = v2;
  v0[7] = v2;

  MessageBody.version.getter();
  MessageBody.init<A>(serializable:version:)();
  if (v1)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v7 = (v0[8] + *v0[8]);
    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v5[1] = sub_1000ED664;
    v6 = v0[16];

    return v7(v6);
  }
}

uint64_t sub_1000ED5F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000ED664()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v3 = sub_1000ED848;
  }

  else
  {
    v3 = sub_1000ED7CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000ED7CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000ED848()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000ED8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  type metadata accessor for ProtocolVersion();
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for MessageBody();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000EDA10, 0, 0);
}

uint64_t sub_1000EDA10()
{
  MessageBody.deserialized<A>()();
  v4 = (v0[8] + *v0[8]);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_1000EDB88;
  v2 = v0[17];

  return v4(v0 + 2, v2);
}

uint64_t sub_1000EDB88()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);
  if (v0)
  {
    v3 = sub_1000EDEAC;
  }

  else
  {
    v3 = sub_1000EDCF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000EDCF0()
{
  v1 = v0[2];
  v0[4] = v1;
  v2 = v0[19];
  v3 = v0[3];
  v0[5] = v3;
  sub_100041E80(v1, v3);
  MessageBody.version.getter();
  MessageBody.init<A>(serializable:version:)();
  if (v2)
  {
    sub_10000C868(v0[2], v0[3]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v8 = (v0[6] + *v0[6]);
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_1000EDF30;
    v7 = v0[14];

    return v8(v7);
  }
}

uint64_t sub_1000EDEAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EDF30()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v3 = sub_1000EE128;
  }

  else
  {
    v3 = sub_1000EE098;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000EE098()
{
  sub_10000C868(v0[2], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000EE128()
{
  sub_10000C868(v0[2], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000EE1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.network.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v40 = a2;
    v41 = a3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v44[0] = v15;
    *v14 = 136315138;
    v42 = a1;
    v16 = 0x6E79536D75626C61;
    v17 = 0xD000000000000010;
    v18 = 0x8000000100106E60;
    if (a1 != 2)
    {
      v17 = 0x6E7953796C696164;
      v18 = 0xEE00796461655263;
    }

    if (a1)
    {
      v16 = 0xD000000000000010;
      v19 = 0x8000000100106E80;
    }

    else
    {
      v19 = 0xEE00796461655263;
    }

    if (a1 <= 1u)
    {
      v20 = v16;
    }

    else
    {
      v20 = v17;
    }

    if (a1 <= 1u)
    {
      v21 = v19;
    }

    else
    {
      v21 = v18;
    }

    v22 = sub_100102F80(v20, v21, v44);

    *(v14 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Registry: Registering event for %s.", v14, 0xCu);
    sub_10000C304(v15);

    (*(v9 + 8))(v11, v8);
    a1 = v42;
    a2 = v40;
    a3 = v41;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v4 + 40);
  v25 = v43;
  *(v4 + 40) = 0x8000000000000000;
  v27 = sub_10005F8DC();
  v28 = v25[2];
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_28;
  }

  v31 = v26;
  if (v25[3] >= v30)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 40) = v25;
      if (v26)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_100058144();
      v25 = v43;
      *(v4 + 40) = v43;
      if (v31)
      {
        goto LABEL_23;
      }
    }

LABEL_22:
    sub_10005F8A8();
    goto LABEL_23;
  }

  sub_10005909C(v30, isUniquelyReferenced_nonNull_native);
  v25 = v43;
  v32 = sub_10005F8DC();
  if ((v31 & 1) != (v33 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v27 = v32;
  *(v4 + 40) = v25;
  if ((v31 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  v4 = v25[7];
  a1 = *(v4 + 8 * v27);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 8 * v27) = a1;
  if ((v34 & 1) == 0)
  {
LABEL_28:
    a1 = sub_1000FFE40(0, *(a1 + 16) + 1, 1, a1);
    *(v4 + 8 * v27) = a1;
  }

  v36 = *(a1 + 16);
  v35 = *(a1 + 24);
  if (v36 >= v35 >> 1)
  {
    a1 = sub_1000FFE40((v35 > 1), v36 + 1, 1, a1);
    *(v4 + 8 * v27) = a1;
  }

  *(a1 + 16) = v36 + 1;
  v37 = a1 + 16 * v36;
  *(v37 + 32) = &unk_10010A248;
  *(v37 + 40) = v23;
  return swift_endAccess();
}

uint64_t sub_1000EE5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[4] = a2;
  type metadata accessor for CommunicationActor();
  v4[7] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1000EE684, v6, v5);
}

uint64_t sub_1000EE684()
{
  MessageBody.deserialized<A>()();
  v3 = (*(v0 + 40) + **(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1000EE7E4;

  return v3(v0 + 16);
}

uint64_t sub_1000EE7E4()
{
  v2 = *v1;
  v2[11] = v0;

  sub_10000C868(v2[2], v2[3]);
  v3 = v2[8];
  v4 = v2[9];
  if (v0)
  {
    v5 = sub_1000EE984;
  }

  else
  {
    v5 = sub_1000EE920;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000EE920()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EE984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EE9E8(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000045BC;

  return v8(a1, a2);
}

uint64_t sub_1000EEAE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, int a7)
{
  *(v7 + 596) = a7;
  *(v7 + 592) = a5;
  *(v7 + 604) = a4;
  *(v7 + 152) = a3;
  *(v7 + 160) = a6;
  *(v7 + 136) = a1;
  *(v7 + 144) = a2;
  v8 = type metadata accessor for ProtocolVersion();
  *(v7 + 168) = v8;
  *(v7 + 176) = *(v8 - 8);
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v9 = type metadata accessor for Message.Operation();
  *(v7 + 200) = v9;
  *(v7 + 208) = *(v9 - 8);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  v10 = type metadata accessor for Message();
  *(v7 + 232) = v10;
  *(v7 + 240) = *(v10 - 8);
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  sub_10000560C(&qword_10012B458, &qword_10010A148);
  *(v7 + 272) = swift_task_alloc();
  v11 = sub_10000560C(&qword_10012B460, &qword_10010A150);
  *(v7 + 280) = v11;
  *(v7 + 288) = *(v11 - 8);
  *(v7 + 296) = swift_task_alloc();
  v12 = type metadata accessor for AsyncBufferSequencePolicy();
  *(v7 + 304) = v12;
  *(v7 + 312) = *(v12 - 8);
  *(v7 + 320) = swift_task_alloc();
  v13 = sub_10000560C(&qword_10012B468, &qword_10010A158);
  *(v7 + 328) = v13;
  *(v7 + 336) = *(v13 - 8);
  *(v7 + 344) = swift_task_alloc();
  v14 = type metadata accessor for MessageBody();
  *(v7 + 352) = v14;
  *(v7 + 360) = *(v14 - 8);
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  v15 = sub_10000560C(&qword_10012B470, &qword_10010A160);
  *(v7 + 408) = v15;
  *(v7 + 416) = *(v15 - 8);
  *(v7 + 424) = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  *(v7 + 432) = v16;
  *(v7 + 440) = *(v16 - 8);
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();

  return _swift_task_switch(sub_1000EEF60, 0, 0);
}

uint64_t sub_1000EEF60()
{
  type metadata accessor for CommunicationActor();
  *(v0 + 464) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000EF024, v2, v1);
}

uint64_t sub_1000EF024()
{
  v1 = *(v0 + 152);

  swift_beginAccess();
  *(v0 + 472) = *(v1 + 32);

  return _swift_task_switch(sub_1000EF0B4, 0, 0);
}

uint64_t sub_1000EF0B4()
{
  if (*(*(v0 + 472) + 16) && (v1 = sub_10005F8DC(), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 472) + 56) + 16 * v1;
    v4 = *v3;
    *(v0 + 480) = *(v3 + 8);

    static Log.network.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 592);
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v5, v6, "handleMessage: Calling handler for: %u", v8, 8u);
    }

    v9 = *(v0 + 456);
    v10 = *(v0 + 432);
    v11 = *(v0 + 440);
    v12 = *(v0 + 400);

    (*(v11 + 8))(v9, v10);
    Message.content.getter();
    v4(v12);
    v22 = *(v0 + 400);
    v23 = *(v0 + 352);
    v24 = *(v0 + 360);
    v25 = *(v0 + 336);
    v26 = *(v0 + 344);
    v28 = *(v0 + 320);
    v27 = *(v0 + 328);
    v30 = *(v0 + 304);
    v29 = *(v0 + 312);
    v31 = *(v24 + 8);
    *(v0 + 488) = v31;
    *(v0 + 496) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v22, v23);
    sub_10000C3CC((v0 + 16), *(v0 + 40));
    AsyncSequence.generic.getter();
    static AsyncBufferSequencePolicy.bounded(_:)();
    sub_10000CC24(&qword_10012B478, &qword_10012B468, &qword_10010A158, &protocol conformance descriptor for WrapperSequence<A, B>);
    AsyncSequence<>.buffer(policy:)();
    (*(v29 + 8))(v28, v30);
    (*(v25 + 8))(v26, v27);
    sub_10000C304((v0 + 16));
    AsyncBufferSequence.makeAsyncIterator()();
    *(v0 + 600) = enum case for Message.Operation.response(_:);
    v32 = sub_10000CC24(&qword_10012B480, &qword_10012B460, &qword_10010A150, &protocol conformance descriptor for AsyncBufferSequence<A>.Iterator);
    v33 = swift_task_alloc();
    *(v0 + 504) = v33;
    *v33 = v0;
    v33[1] = sub_1000EF6A0;
    v34 = *(v0 + 272);
    v35 = *(v0 + 280);

    return dispatch thunk of AsyncIteratorProtocol.next()(v34, v35, v32);
  }

  else
  {

    static Log.network.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 592);
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v13, v14, "handleMessage: No handler registered for request: %u", v16, 8u);
    }

    v18 = *(v0 + 440);
    v17 = *(v0 + 448);
    v19 = *(v0 + 432);

    (*(v18 + 8))(v17, v19);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1000EF6A0()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_1000EFAD4;
  }

  else
  {
    v2 = sub_1000EF7B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000EF7B4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 272);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 600);
  if (v4 == 1)
  {
    v25 = *(v0 + 488);
    v6 = *(v0 + 384);
    v7 = *(v0 + 224);
    v8 = *(v0 + 208);
    v9 = *(v0 + 192);
    v10 = *(v0 + 176);
    v11 = *(v0 + 596);
    v23 = *(v0 + 200);
    v24 = *(v0 + 168);
    v26 = *(v0 + 136);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
    *v7 = v11;
    v12 = *(v8 + 104);
    *(v0 + 544) = v12;
    v12(v7, v5, v23);
    Message.content.getter();
    MessageBody.version.getter();
    v25(v6, v1);
    static MessageBody.empty(version:)();
    (*(v10 + 8))(v9, v24);
    Message.init(operation:content:complete:)();
    v27 = (v26 + *v26);
    v13 = swift_task_alloc();
    *(v0 + 552) = v13;
    *v13 = v0;
    v13[1] = sub_1000F011C;
    v14 = *(v0 + 256);
  }

  else
  {
    v15 = *(v0 + 392);
    v16 = *(v0 + 224);
    v17 = *(v0 + 200);
    v18 = *(v0 + 208);
    v19 = *(v0 + 136);
    *v16 = *(v0 + 596);
    v20 = *(v18 + 104);
    *(v0 + 520) = v20;
    v20(v16, v5, v17);
    (*(v2 + 32))(v15, v3, v1);
    Message.init(operation:content:complete:)();
    v27 = (v19 + *v19);
    v21 = swift_task_alloc();
    *(v0 + 528) = v21;
    *v21 = v0;
    v21[1] = sub_1000EFF04;
    v14 = *(v0 + 264);
  }

  return v27(v14);
}

uint64_t sub_1000EFAD4()
{
  *(v0 + 120) = *(v0 + 512);
  sub_10000560C(&qword_10012A308, &qword_100109000);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1000EFB68, 0, 0);
}

uint64_t sub_1000EFB68()
{
  v1 = *(v0 + 208);
  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  v2 = *(v1 + 104);
  *(v0 + 568) = *(v0 + 512);
  v3 = *(v0 + 488);
  v4 = *(v0 + 368);
  v5 = *(v0 + 352);
  **(v0 + 216) = *(v0 + 596);
  v2();
  v6._countAndFlagsBits = 0x203A726F727245;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  Message.content.getter();
  MessageBody.version.getter();
  v3(v4, v5);
  MessageBody.init<A>(serializable:version:)();
  v7 = *(v0 + 136);
  Message.init(operation:content:complete:)();
  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 576) = v8;
  *v8 = v0;
  v8[1] = sub_1000F061C;
  v9 = *(v0 + 248);

  return v11(v9);
}

uint64_t sub_1000EFF04()
{
  v2 = *v1;
  v3 = *v1;
  v2[67] = v0;

  v4 = v2[33];
  v5 = v2[29];
  v6 = (v2[30] + 8);
  if (v0)
  {
    (*v6)(v4, v5);

    return _swift_task_switch(sub_1000F0284, 0, 0);
  }

  else
  {
    (*v6)(v4, v5);
    v7 = sub_10000CC24(&qword_10012B480, &qword_10012B460, &qword_10010A150, &protocol conformance descriptor for AsyncBufferSequence<A>.Iterator);
    v8 = swift_task_alloc();
    v2[63] = v8;
    *v8 = v3;
    v8[1] = sub_1000EF6A0;
    v9 = v2[34];
    v10 = v2[35];

    return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v7);
  }
}

uint64_t sub_1000F011C()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  (*(v2[30] + 8))(v2[32], v2[29]);
  if (v0)
  {
    v3 = sub_1000F0C08;
  }

  else
  {
    v3 = sub_1000F0A94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000F0284()
{
  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  v1 = *(v0 + 520);
  *(v0 + 568) = *(v0 + 536);
  v2 = *(v0 + 488);
  v3 = *(v0 + 368);
  v4 = *(v0 + 352);
  **(v0 + 216) = *(v0 + 596);
  v1();
  v5._countAndFlagsBits = 0x203A726F727245;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  Message.content.getter();
  MessageBody.version.getter();
  v2(v3, v4);
  MessageBody.init<A>(serializable:version:)();
  v6 = *(v0 + 136);
  Message.init(operation:content:complete:)();
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 576) = v7;
  *v7 = v0;
  v7[1] = sub_1000F061C;
  v8 = *(v0 + 248);

  return v10(v8);
}

uint64_t sub_1000F061C()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  (*(v2[30] + 8))(v2[31], v2[29]);
  if (v0)
  {
    v3 = sub_1000F0904;
  }

  else
  {
    v3 = sub_1000F0784;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000F0784()
{

  (*(v0[52] + 8))(v0[53], v0[51]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000F0904()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000F0A94()
{

  (*(v0[52] + 8))(v0[53], v0[51]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000F0C08()
{
  v1 = *(v0 + 544);
  *(v0 + 568) = *(v0 + 560);
  v2 = *(v0 + 488);
  v3 = *(v0 + 368);
  v4 = *(v0 + 352);
  **(v0 + 216) = *(v0 + 596);
  v1();
  v5._countAndFlagsBits = 0x203A726F727245;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  Message.content.getter();
  MessageBody.version.getter();
  v2(v3, v4);
  MessageBody.init<A>(serializable:version:)();
  v6 = *(v0 + 136);
  Message.init(operation:content:complete:)();
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 576) = v7;
  *v7 = v0;
  v7[1] = sub_1000F061C;
  v8 = *(v0 + 248);

  return v10(v8);
}

void *sub_1000F0F88()
{
  v1 = v0;
  v2 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  __chkstk_darwin(v2 - 8);
  v76 = v75 - v3;
  v4 = type metadata accessor for DatabaseConnection.Location();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Daemon Init", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  type metadata accessor for PhotosFaceNetworkMessageCenter();
  v12 = swift_allocObject();
  sub_10000560C(&qword_10012B410, &qword_10010A060);
  swift_allocObject();
  *(v12 + 16) = sub_1000E8FD8();
  v1[3] = v12;
  type metadata accessor for PhotosXPCServer();
  sub_10000560C(&qword_10012B418, &qword_10010A068);
  static XPCConstants.serviceName.getter();
  XPCMessageCenter.Server.__allocating_init(serviceName:)();
  v1[2] = PhotosXPCServer.__allocating_init(messageCenter:)();
  type metadata accessor for PhotosFaceDatabase();
  default argument 0 of PhotosFaceDatabase.init(location:)();
  v1[10] = PhotosFaceDatabase.__allocating_init(location:)();
  type metadata accessor for BackgroundTaskManager(0);
  swift_allocObject();
  v13 = sub_1000FC1D8();
  v1[16] = v13;
  v14 = v1[10];
  type metadata accessor for PhotoCache(0);
  v15 = swift_allocObject();

  static SystemDirectory.photosFace.getter();
  *(v15 + OBJC_IVAR____TtC11photosfaced10PhotoCache_database) = v14;
  *(v15 + OBJC_IVAR____TtC11photosfaced10PhotoCache_background) = v13;
  v1[4] = v15;
  type metadata accessor for XPCEventStream();
  v1[17] = XPCEventStream.__allocating_init()();
  type metadata accessor for NetworkMonitor();
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = [objc_allocWithZone(type metadata accessor for DeviceMonitor()) init];
  v1[18] = v16;
  v17 = static Platform.current.getter();
  v18 = v1[3];
  v19 = v1[4];
  v20 = v1[2];
  if (v17)
  {
    v21 = type metadata accessor for WatchPhotoProcessor();
    v22 = swift_allocObject();
    v23 = &off_100126B50;
  }

  else
  {
    v21 = type metadata accessor for PhonePhotoProcessor();
    v22 = swift_allocObject();
    v22[5] = 0;
    v23 = &off_1001265F0;
  }

  v22[2] = v19;
  v22[3] = v18;
  v22[4] = v20;

  v1[8] = v21;
  v1[9] = v23;
  v1[5] = v22;
  v77 = v1 + 5;
  v24 = type metadata accessor for AlbumDatabase();

  v25 = AlbumDatabase.__allocating_init(database:)();
  v26 = v1[2];
  v79 = v24;
  v80 = sub_1000FAACC(&qword_10012A488, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
  *&v78 = v25;
  type metadata accessor for AlbumProvider();
  v27 = swift_allocObject();

  *(v27 + 16) = static TestProperties.watchFacePerDaySize.getter();
  sub_10000C350(&v78, v27 + 24);
  sub_10000C368((v1 + 5), &v78);
  v28 = v1[16];
  v29 = v1[3];
  v30 = v1[4];
  v31 = v1[18];
  sub_10000560C(&qword_10012B420, &qword_10010A070);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = v26;
  *(v32 + 32) = v27;
  sub_10000C368(&v78, v32 + 40);
  v75[2] = v25;
  *(v32 + 80) = v25;
  *(v32 + 88) = v28;
  *(v32 + 96) = v29;
  *(v32 + 104) = v30;

  v33 = sub_10005D3C8(_swiftEmptyArrayStorage);
  sub_10000C304(&v78);
  *(v32 + 112) = v33;
  *(v32 + 120) = v31;
  v1[11] = v32;
  v34 = type metadata accessor for ShuffleDatabase();

  v35 = ShuffleDatabase.__allocating_init(database:)();
  v36 = v1[2];

  v37 = static TestProperties.watchFacePerDaySize.getter();
  v79 = v34;
  v80 = sub_1000FAACC(&qword_10012A478, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
  *&v78 = v35;
  type metadata accessor for ShuffleProvider();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  sub_10000C350(&v78, v38 + 24);
  sub_10000C368(v77, &v78);
  v39 = v1[16];
  v41 = v1[3];
  v40 = v1[4];
  v42 = v1[18];
  sub_10000560C(&qword_10012B428, &qword_10010A078);
  v43 = swift_allocObject();
  *(v43 + 16) = 1;
  *(v43 + 24) = v36;
  *(v43 + 32) = v38;
  sub_10000C368(&v78, v43 + 40);
  v75[1] = v35;
  *(v43 + 80) = v35;
  *(v43 + 88) = v39;
  *(v43 + 96) = v41;
  *(v43 + 104) = v40;
  swift_retain_n();

  v44 = sub_10005D3C8(_swiftEmptyArrayStorage);
  sub_10000C304(&v78);
  *(v43 + 112) = v44;
  *(v43 + 120) = v42;
  v1[12] = v43;
  v45 = type metadata accessor for GalleryDatabase();

  v46 = GalleryDatabase.__allocating_init(database:)();
  v47 = v1[2];

  v48 = static TestProperties.gallerySize.getter();
  v79 = v45;
  v80 = sub_1000FAACC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
  *&v78 = v46;
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  sub_10000C350(&v78, v49 + 24);
  v50 = v77;
  sub_10000C368(v77, &v78);
  v51 = v1[16];
  v52 = v1[3];
  v53 = v1[4];
  v54 = v1[18];
  sub_10000560C(&qword_10012B430, &qword_10010A080);
  v55 = swift_allocObject();
  *(v55 + 16) = 2;
  *(v55 + 24) = v47;
  *(v55 + 32) = v49;
  sub_10000C368(&v78, v55 + 40);
  *(v55 + 80) = v46;
  *(v55 + 88) = v51;
  *(v55 + 96) = v52;
  *(v55 + 104) = v53;
  swift_retain_n();

  v56 = sub_10005D3C8(_swiftEmptyArrayStorage);
  sub_10000C304(&v78);
  *(v55 + 112) = v56;
  *(v55 + 120) = v54;
  v1[13] = v55;
  v57 = v1[16];
  type metadata accessor for GalleryGeneratorSystem();
  v58 = swift_allocObject();
  v58[2] = v57;
  v58[3] = v55;
  v58[4] = v46;
  v1[15] = v58;
  v59 = type metadata accessor for DailyDatabase();

  v60 = DailyDatabase.__allocating_init(database:)();
  v61 = v1[2];
  type metadata accessor for DailyProvider();
  v62 = swift_allocObject();
  v79 = v59;
  v80 = sub_1000FAACC(&qword_10012A468, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
  *&v78 = v60;
  sub_10000C368(&v78, v62 + 16);

  v63 = sub_10005D5B0(_swiftEmptyArrayStorage);
  sub_10000560C(&qword_10012B438, &qword_10010A088);
  v64 = swift_allocObject();
  *(v64 + 28) = 0;

  sub_10000C304(&v78);
  *(v64 + 16) = v63;
  *(v64 + 24) = 0;

  *(v62 + 56) = v64;
  sub_10000C368(v50, &v78);
  v65 = v1[16];
  v66 = v1[3];
  v67 = v1[4];
  v68 = v1[18];
  sub_10000560C(&qword_10012B440, &qword_10010A090);
  v69 = swift_allocObject();
  *(v69 + 16) = 3;
  *(v69 + 24) = v61;
  *(v69 + 32) = v62;
  sub_10000C368(&v78, v69 + 40);
  *(v69 + 80) = v60;
  *(v69 + 88) = v65;
  *(v69 + 96) = v66;
  *(v69 + 104) = v67;

  v70 = sub_10005D3C8(_swiftEmptyArrayStorage);
  sub_10000C304(&v78);
  *(v69 + 112) = v70;
  *(v69 + 120) = v68;
  v1[14] = v69;
  v71 = type metadata accessor for TaskPriority();
  v72 = v76;
  (*(*(v71 - 8) + 56))(v76, 1, 1, v71);
  v73 = swift_allocObject();
  v73[2] = 0;
  v73[3] = 0;
  v73[4] = v1;

  sub_100005654(0, 0, v72, &unk_10010A0A0, v73);

  return v1;
}

uint64_t sub_1000F19D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000045BC;

  return sub_1000F1A60();
}

uint64_t sub_1000F1A60()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000F1B20, 0, 0);
}

uint64_t sub_1000F1B20(uint64_t a1)
{
  static Log.default.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Daemon Activate", v4, 2u);
  }

  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[2];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v1[6] = *(v8 + 80);
  type metadata accessor for PhotosFaceDatabase();
  sub_1000FAACC(&qword_10012A898, &type metadata accessor for PhotosFaceDatabase, &protocol conformance descriptor for PhotosFaceDatabase);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F1C84, v10, v9);
}

uint64_t sub_1000F1C84()
{
  dispatch thunk of PhotosFaceDatabase.activate()();

  return _swift_task_switch(sub_1000F1CEC, 0, 0);
}

uint64_t sub_1000F1CEC()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1000F1D80;

  return sub_100060BF4();
}

uint64_t sub_1000F1D80()
{

  return _swift_task_switch(sub_1000F1E7C, 0, 0);
}

uint64_t sub_1000F1E7C()
{
  v1 = *(v0 + 16);
  v2 = v1[8];
  v3 = v1[9];
  sub_10000C3CC(v1 + 5, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1000F1FA4;

  return v6(v2, v3);
}

uint64_t sub_1000F1FA4()
{

  return _swift_task_switch(sub_1000F20A0, 0, 0);
}

uint64_t sub_1000F20A0()
{
  v0[9] = *(v0[2] + 16);
  v0[10] = type metadata accessor for CommunicationActor();

  v0[11] = static CommunicationActor.shared.getter();
  v0[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F2180, v2, v1);
}

uint64_t sub_1000F2180()
{

  PhotosXPCServer.registerSendMessage(callback:)();

  return _swift_task_switch(sub_1000F2214, 0, 0);
}

uint64_t sub_1000F2214(uint64_t a1)
{
  v1[13] = *(v1[2] + 24);
  v1[14] = static CommunicationActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F22B4, v3, v2);
}

uint64_t sub_1000F22B4()
{

  sub_1000ECC88(0, &unk_100108DA0, 0, &unk_1001277A8, sub_1000FBC20);

  return _swift_task_switch(sub_1000F235C, 0, 0);
}

uint64_t sub_1000F235C()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1000F2404;

  return sub_10008A444();
}

uint64_t sub_1000F2404()
{

  return _swift_task_switch(sub_1000F2500, 0, 0);
}

uint64_t sub_1000F2500()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1000F25A8;

  return sub_10008AC0C();
}

uint64_t sub_1000F25A8()
{

  return _swift_task_switch(sub_1000F26A4, 0, 0);
}

uint64_t sub_1000F26A4()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1000F274C;

  return sub_10008B3D4();
}

uint64_t sub_1000F274C()
{

  return _swift_task_switch(sub_1000F2848, 0, 0);
}

uint64_t sub_1000F2848()
{
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1000F28F0;

  return sub_10008BB9C();
}

uint64_t sub_1000F28F0()
{

  return _swift_task_switch(sub_1000F29EC, 0, 0);
}

uint64_t sub_1000F29EC()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_1000F2A80;

  return sub_10001339C();
}

uint64_t sub_1000F2A80()
{

  return _swift_task_switch(sub_1000F2B7C, 0, 0);
}

uint64_t sub_1000F2B7C()
{
  v1 = *(*(v0 + 16) + 128);
  *(v0 + 160) = v1;
  return _swift_task_switch(sub_1000F2BA0, v1, 0);
}

uint64_t sub_1000F2BA0()
{
  sub_1000FC444();

  return _swift_task_switch(sub_1000F2C08, 0, 0);
}

uint64_t sub_1000F2C08(uint64_t a1)
{
  *(v1 + 168) = static CommunicationActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F2C9C, v3, v2);
}

uint64_t sub_1000F2C9C()
{

  sub_1000E90D0();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1000F2D44;

  return PhotosXPCServer.activate()();
}

uint64_t sub_1000F2D44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000F2E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000F2E78, 0, 0);
}

uint64_t sub_1000F2E78()
{
  v0[5] = *(v0[4] + 24);
  type metadata accessor for CommunicationActor();
  v0[6] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[7] = v2;
  v0[8] = v1;

  return _swift_task_switch(sub_1000F2F48, v2, v1);
}

uint64_t sub_1000F2F48()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1000F2FFC;
  v2 = v0[2];
  v3 = v0[3];

  return sub_100002980(0, v2, v3, 1);
}

uint64_t sub_1000F2FFC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v7 = v6[7];
    v8 = v6[8];
    v9 = sub_100004E58;
  }

  else
  {
    v6[11] = a2;
    v6[12] = a1;
    v7 = v6[7];
    v8 = v6[8];
    v9 = sub_1000F3130;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000F3130()
{

  v1 = v0[1];
  v3 = v0[11];
  v2 = v0[12];

  return v1(v2, v3);
}

uint64_t sub_1000F3198(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000F3258, 0, 0);
}

uint64_t sub_1000F3258(uint64_t a1)
{
  v19 = v1;
  static Log.default.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[4];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100102F80(v9, v8, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "Hello: %s", v10, 0xCu);
    sub_10000C304(v11);
  }

  (*(v6 + 8))(v5, v7);
  v12 = *(v1 + 1);
  v17 = 0x203A6F6C6C6548;
  v18 = 0xE700000000000000;
  String.append(_:)(v12);
  v13 = v17;
  v14 = v18;

  v15 = v1[1];

  return v15(v13, v14);
}

void *sub_1000F3408()
{

  sub_10000C304((v0 + 40));

  return v0;
}

uint64_t sub_1000F3488()
{
  sub_1000F3408();

  return _swift_deallocClassInstance(v0, 152, 7);
}

Swift::Int sub_1000F34E0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000F459C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1000F3614(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}