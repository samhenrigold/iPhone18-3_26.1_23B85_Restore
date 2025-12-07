uint64_t sub_100298310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v13;
  *(v8 + 88) = v12;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 - 8);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_1002983F8, 0, 0);
}

uint64_t sub_1002983F8(uint64_t a1)
{
  v23 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[17];
  v6 = v1[14];
  v7 = v1[15];
  if (v4)
  {
    v9 = v1[6];
    v8 = v1[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to notify server of terminal state for proofingSessionID %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[18] = v12;
  v13 = v1[12];
  v14 = v1[7];
  sub_10000BA08((v1[8] + 24), *(v1[8] + 48));
  v15 = swift_task_alloc();
  v1[19] = v15;
  *v15 = v1;
  v15[1] = sub_1002985DC;
  v16 = v1[13];
  v17 = v1[10];
  v18 = v1[11];
  v19 = v1[9];
  v20 = v1[6];

  return sub_10022083C(&off_1007FBA80, v19, v17, v18, v13, v20, v14, v16);
}

uint64_t sub_1002985DC()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100298720, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100298720(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v15 = v1[16];
    v16 = v1[18];
    v4 = v1[14];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Action notification request failure. unable to notify server of terminal state %s", v5, 0xCu);
    sub_10000BB78(v6);

    v16(v15, v4);
  }

  else
  {
    v10 = v1[18];
    v11 = v1[16];
    v12 = v1[14];

    v10(v11, v12);
  }

  v13 = v1[1];

  return v13();
}

void sub_100298908(void *a1@<X8>)
{
  v3 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v3 - 8);
  v5 = v40 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StoredProofingSession();
  v10 = static StoredProofingSession.fetchRequest()();
  v11 = NSManagedObjectContext.fetch<A>(_:)();

  if (v1)
  {
    return;
  }

  v40[1] = 0;
  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_62;
  }

  v48 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v48)
  {
    goto LABEL_66;
  }

  while (2)
  {
    v13 = 0;
    v46 = v12 & 0xFFFFFFFFFFFFFF8;
    v47 = v12 & 0xC000000000000001;
    v45 = v12 + 32;
    v53 = (v7 + 32);
    v54 = (v7 + 48);
    v51 = (v7 + 56);
    v50 = _swiftEmptyArrayStorage;
    v52 = v7;
    v44 = v12;
    v41 = a1;
    while (1)
    {
      if (v47)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v46 + 16))
        {
          goto LABEL_57;
        }

        v12 = *(v45 + 8 * v13);
      }

      v7 = v12;
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_56;
      }

      v16 = [v12 uploadAssets];
      v49 = v15;
      if (v16)
      {
        break;
      }

LABEL_33:
      v21 = _swiftEmptyArrayStorage;
LABEL_41:
      v28 = v21;
      v29 = v21[2];
      v30 = v50;
      v31 = v50[2];
      v7 = (v31 + v29);
      if (__OFADD__(v31, v29))
      {
        goto LABEL_58;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v7 <= v30[3] >> 1)
      {
        v12 = v30;
      }

      else
      {
        if (v31 <= v7)
        {
          v33 = v31 + v29;
        }

        else
        {
          v33 = v31;
        }

        v12 = sub_1003C5F88(isUniquelyReferenced_nonNull_native, v33, 1, v30);
      }

      v34 = v28[2];
      v50 = v12;
      if (v34)
      {
        if ((*(v12 + 24) >> 1) - *(v12 + 16) < v29)
        {
          goto LABEL_60;
        }

        swift_arrayInitWithCopy();

        if (v29)
        {
          v35 = v50[2];
          v14 = __OFADD__(v35, v29);
          v36 = v35 + v29;
          if (v14)
          {
            goto LABEL_61;
          }

          v50[2] = v36;
        }
      }

      else
      {

        if (v29)
        {
          goto LABEL_59;
        }
      }

      v13 = v49;
      v12 = v44;
      if (v49 == v48)
      {
LABEL_65:

        v39 = v50;
        goto LABEL_67;
      }
    }

    v17 = v16;
    v18 = sub_10031F088(v17);

    v19 = sub_10057A09C(v18);

    if (!v19)
    {

      goto LABEL_33;
    }

    a1 = (v19 & 0xFFFFFFFFFFFFFF8);
    v55 = v19;
    if (!(v19 >> 62))
    {
      v58 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v58)
      {
        goto LABEL_15;
      }

LABEL_39:

      v21 = _swiftEmptyArrayStorage;
LABEL_40:
      a1 = v41;
      goto LABEL_41;
    }

    if (_CocoaArrayWrapper.endIndex.getter() <= 0)
    {
      goto LABEL_39;
    }

    v12 = _CocoaArrayWrapper.endIndex.getter();
    v58 = v12;
    if (!v12)
    {
      v42 = v17;
      v43 = v7;
      v21 = _swiftEmptyArrayStorage;
LABEL_38:

      goto LABEL_40;
    }

LABEL_15:
    v42 = v17;
    v43 = v7;
    v20 = 0;
    v7 = v55;
    v57 = v55 & 0xC000000000000001;
    v21 = _swiftEmptyArrayStorage;
    v56 = a1;
    while (2)
    {
      if (v57)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= a1[2])
        {
          goto LABEL_55;
        }

        v12 = *&v7[8 * v20 + 32];
      }

      v22 = v12;
      if (!__OFADD__(v20, 1))
      {
        v59 = v20 + 1;
        v23 = [v12 assetFileURL];
        if (v23)
        {
          v24 = v23;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v7 = v55;
          URL.init(string:)();
          a1 = v56;

          if ((*v54)(v5, 1, v6) != 1)
          {
            v25 = *v53;
            (*v53)(v9, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_1003C5F88(0, v21[2] + 1, 1, v21);
            }

            v27 = v21[2];
            v26 = v21[3];
            if (v27 >= v26 >> 1)
            {
              v21 = sub_1003C5F88((v26 > 1), v27 + 1, 1, v21);
            }

            v21[2] = v27 + 1;
            v12 = (v25)(v21 + ((v52[80] + 32) & ~v52[80]) + *(v52 + 9) * v27, v9, v6);
            a1 = v56;
LABEL_18:
            ++v20;
            if (v59 == v58)
            {
              goto LABEL_38;
            }

            continue;
          }
        }

        else
        {

          (*v51)(v5, 1, 1, v6);
        }

        v12 = sub_10000BE18(v5, &unk_100844540, &unk_1006BFBC0);
        goto LABEL_18;
      }

      break;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    v37 = v12;
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v37;
      v48 = v38;
      if (!v38)
      {
        v50 = _swiftEmptyArrayStorage;
        goto LABEL_65;
      }

      continue;
    }

    break;
  }

LABEL_66:

  v39 = _swiftEmptyArrayStorage;
LABEL_67:
  *a1 = v39;
}

void sub_100298F68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v86 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v74 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v74 - v16;
  __chkstk_darwin(v15);
  v19 = &v74 - v18;
  v20 = v89;
  sub_10057BE48(a2, a3, a4);
  if (v20)
  {
    return;
  }

  v22 = v11;
  v89 = a4;
  v23 = v8;
  v84 = v19;
  v85 = v17;
  v75 = a1;
  v77 = a2;
  v78 = a3;
  v79 = 0;
  if (!v21)
  {
    v48 = v22;
    defaultLogger()();
    v49 = v78;

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v77;
    v54 = v23;
    if (v52)
    {
      v55 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v55 = 136315394;
      *(v55 + 4) = sub_100141FE4(v53, v49, &v90);
      *(v55 + 12) = 2080;
      v56 = IdentityTarget.debugDescription.getter();
      v58 = sub_100141FE4(v56, v57, &v90);

      *(v55 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "proofing session for %s and %s doesn't exist", v55, 0x16u);
      swift_arrayDestroy();
    }

    (*(v86 + 8))(v48, v54);
    return;
  }

  v76 = v21;
  v24 = [v21 uploadAssets];
  v25 = v8;
  if (!v24)
  {
LABEL_26:
    defaultLogger()();
    v61 = v78;

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v64 = 136315394;
      *(v64 + 4) = sub_100141FE4(v77, v61, &v90);
      *(v64 + 12) = 2080;
      v65 = IdentityTarget.debugDescription.getter();
      v67 = sub_100141FE4(v65, v66, &v90);

      *(v64 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v62, v63, "No assets exists for proofing session %s and %s to be deleted.", v64, 0x16u);
      swift_arrayDestroy();
    }

    (*(v86 + 8))(v14, v8);
    return;
  }

  v26 = v24;
  v27 = sub_10031F088(v26);

  v28 = sub_10057A09C(v27);

  if (!v28)
  {

    goto LABEL_26;
  }

  v74 = v26;
  if (v28 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v84;
  v32 = v85;
  if (v30)
  {
    if (v30 < 1)
    {
      __break(1u);
      return;
    }

    v33 = 0;
    v34 = *(v75 + 16);
    v88 = v28 & 0xC000000000000001;
    v89 = v34;
    v87 = (v86 + 8);
    *&v29 = 136315138;
    v80 = v29;
    v82 = v28;
    v83 = v25;
    v81 = v30;
    do
    {
      if (v88)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v35 = *(v28 + 8 * v33 + 32);
      }

      v36 = v35;
      [v89 deleteObject:{v35, v74}];
      defaultLogger()();
      v37 = v36;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v90 = v41;
        *v40 = v80;
        v42 = [v37 assetType];
        if (v42)
        {
          v43 = v42;
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;
        }

        else
        {
          v44 = 0;
          v46 = 0xE000000000000000;
        }

        v30 = v81;
        v47 = sub_100141FE4(v44, v46, &v90);

        *(v40 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v38, v39, "Delete called on StoredUploadAsset with type %s", v40, 0xCu);
        sub_10000BB78(v41);

        v25 = v83;
        v31 = v84;
        (*v87)(v84, v83);
        v32 = v85;
        v28 = v82;
      }

      else
      {

        (*v87)(v31, v25);
      }

      ++v33;
    }

    while (v30 != v33);
  }

  sub_1005801E4(0);
  v59 = IdentityProofingActionStatus.rawValue.getter();
  sub_10057F148(v59, 0);
  v60 = v79;
  sub_10057BA64();
  if (v60)
  {
  }

  else
  {
    defaultLogger()();
    v68 = v78;

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v90 = v72;
      *v71 = 136315138;
      *(v71 + 4) = sub_100141FE4(v77, v68, &v90);
      _os_log_impl(&_mh_execute_header, v69, v70, "Cleanup after uploads complete for proofingSessionID -> %s", v71, 0xCu);
      sub_10000BB78(v72);

      v73 = v76;
    }

    else
    {

      v73 = v74;
    }

    (*(v86 + 8))(v32, v25);
  }
}

uint64_t sub_100299718(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100299808, 0, 0);
}

uint64_t sub_100299808(uint64_t a1)
{
  v2 = ProofingSession.credentialIdentifier.getter();
  v1[15] = v3;
  if (!v3)
  {
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v8, v9);
    v11 = v1[11];
    v12 = v1[8];
    v13 = v1[9];
    if (v16)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "credentialIdentifier doesn't exist, cannot delete the crendential";
      goto LABEL_21;
    }

LABEL_22:

    (*(v13 + 8))(v11, v12);

    v31 = v1[1];

    return v31();
  }

  v4 = v3;
  v5 = v2;
  ProofingSession.target.getter();
  v6 = IdentityTarget.init(rawValue:)();
  if (v7)
  {

    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v1[12];
    v12 = v1[8];
    v13 = v1[9];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "invalid target, cannot delete the session";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v8, v9, v15, v14, 2u);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (v6 == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      defaultLogger()();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();
      v30 = os_log_type_enabled(v8, v9);
      v11 = v1[14];
      v12 = v1[8];
      v13 = v1[9];
      if (v30)
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "No watch connection available, ignoring deleteCredential on Watch";
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    v24 = *(Strong + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
    v1[19] = v24;
    v25 = Strong;
    v26 = v24;

    v32 = sub_1002A472C;
    v27 = swift_task_alloc();
    v1[20] = v27;
    *v27 = v1;
    v27[1] = sub_100299FE0;
    v20 = v5;
    v21 = v4;
    v22 = v26;
  }

  else
  {
    if (v6 != 1)
    {

      defaultLogger()();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      v29 = os_log_type_enabled(v8, v9);
      v11 = v1[13];
      v12 = v1[8];
      v13 = v1[9];
      if (v29)
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Unknown target, cannot delete the session";
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (qword_100832C20 != -1)
    {
      swift_once();
    }

    v17 = *(qword_100882228 + 16);
    v1[16] = v17;
    v32 = sub_1002A4034;
    v18 = v17;
    v19 = swift_task_alloc();
    v1[17] = v19;
    *v19 = v1;
    v19[1] = sub_100299C14;
    v20 = v5;
    v21 = v4;
    v22 = v18;
  }

  return v32(v20, v21, v22);
}

uint64_t sub_100299C14()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100299DDC;
  }

  else
  {
    v2 = sub_100299D44;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100299D44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100299DDC()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 72);
    v15 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "received an error while deleting the credential from proofing session %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 64);

    (*(v11 + 8))(v10, v12);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100299FE0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10029A1A8;
  }

  else
  {
    v2 = sub_10029A110;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10029A110()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029A1A8()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 72);
    v15 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "received an error while deleting the credential from proofing session %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 64);

    (*(v11 + 8))(v10, v12);
  }

  v13 = *(v0 + 8);

  return v13();
}

unint64_t sub_10029A3AC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v34 - v10;
  result = sub_1005770D4(a2);
  if (v2)
  {
    return result;
  }

  v14 = result;
  v34[1] = 0;
  if (result)
  {
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_5:
        v34[0] = a1;
        v39 = result;
        if (result < 1)
        {
          __break(1u);
        }

        else
        {
          v15 = 0;
          v16 = *(v34[0] + 16);
          v40 = v14 & 0xC000000000000001;
          v41 = v16;
          v42 = (v6 + 8);
          *&v13 = 136315138;
          v35 = v13;
          v17 = v39;
          v37 = v11;
          v38 = v5;
          v36 = v14;
          do
          {
            if (v40)
            {
              v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v18 = *(v14 + 8 * v15 + 32);
            }

            v19 = v18;
            [v41 deleteObject:{v18, v34[0]}];
            defaultLogger()();
            v20 = v19;
            v21 = Logger.logObject.getter();
            v22 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              v24 = swift_slowAlloc();
              v43 = v24;
              *v23 = v35;
              v25 = [v20 proofingSessionID];
              if (v25)
              {
                v26 = v25;
                v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v29 = v28;
              }

              else
              {
                v27 = 0;
                v29 = 0xE000000000000000;
              }

              v30 = sub_100141FE4(v27, v29, &v43);

              *(v23 + 4) = v30;
              _os_log_impl(&_mh_execute_header, v21, v22, "Successfully deleted biome metadata for proofingSessionID: %s", v23, 0xCu);
              sub_10000BB78(v24);

              v11 = v37;
              v5 = v38;
              (*v42)(v37, v38);
              v14 = v36;
              v17 = v39;
            }

            else
            {

              (*v42)(v11, v5);
            }

            ++v15;
          }

          while (v17 != v15);

          return sub_100576468();
        }

        return result;
      }
    }

    else
    {
      result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }
    }
  }

  defaultLogger()();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "No biome metadata exists in the database", v33, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10029A780(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  result = sub_1005798F8(a2);
  if (v2)
  {
    return result;
  }

  v14 = result;
  v44 = result;
  if (!(result >> 62))
  {
    result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = 0;
    if (result)
    {
      goto LABEL_4;
    }

LABEL_15:

    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 136315138;
      v36 = IdentityDocumentType.description.getter();
      v38 = v5;
      v39 = sub_100141FE4(v36, v37, &v50);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "No proofing biome data exists in the database for documentType %s", v34, 0xCu);
      sub_10000BB78(v35);

      return (*(v6 + 8))(v9, v38);
    }

    else
    {

      return (*(v6 + 8))(v9, v5);
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = v44;
  v41 = 0;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  v40 = a1;
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v16 = 0;
    v17 = *(v40 + 16);
    v47 = v14 & 0xC000000000000001;
    v48 = v17;
    v18 = (v6 + 8);
    *&v13 = 136315138;
    v42 = v13;
    v43 = result;
    do
    {
      if (v47)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v14 + 8 * v16 + 32);
      }

      v49 = v19;
      [v48 deleteObject:{v19, v40}];
      defaultLogger()();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v50 = v46;
        *v22 = v42;
        v23 = IdentityDocumentType.description.getter();
        v25 = sub_100141FE4(v23, v24, &v50);
        v45 = v20;
        v26 = v18;
        v27 = v11;
        v28 = a2;
        v29 = v5;
        v30 = v25;
        v15 = v43;

        *(v22 + 4) = v30;
        v5 = v29;
        a2 = v28;
        v11 = v27;
        v18 = v26;
        v31 = v45;
        _os_log_impl(&_mh_execute_header, v45, v21, "Successfully deleted proofing biome data for documentType: %s", v22, 0xCu);
        sub_10000BB78(v46);

        v14 = v44;
      }

      else
      {
      }

      (*v18)(v11, v5);
      ++v16;
    }

    while (v15 != v16);

    return sub_1005783D4();
  }

  return result;
}

unint64_t sub_10029AB9C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - v11;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  result = sub_1005798F8(a2);
  if (!v2)
  {
    v46 = result;
    v44 = v12;
    v40 = 0;
    v41 = a1;
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Proofing Biome data exists to be cleaned. Checking if it consists of a proofing decision.", v18, 2u);
    }

    v43 = *(v6 + 8);
    v43(v14, v5);
    v19 = v46;
    v39 = v9;
    if (v46 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v37)
    {
      v21 = v41;
      if (!i)
      {
        break;
      }

      v22 = 0;
      v45 = v19 & 0xC000000000000001;
      v42 = v19 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v45)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *(v42 + 16))
          {
            goto LABEL_25;
          }

          v25 = *(v19 + 8 * v22 + 32);
        }

        v24 = v25;
        v26 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v27 = [v25 proofingDecision];
        if (v27)
        {
          v23 = v27;

          v24 = v23;
        }

        else
        {
          defaultLogger()();
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, v28, v29, "Proofing decision doesn't exist for the proofing biome data. Will clear data.", v30, 2u);
            v21 = v41;
          }

          v43(v44, v5);
          [*(v21 + 16) deleteObject:v24];
        }

        ++v22;
        v19 = v46;
        if (v26 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v36 = v19;
      v37 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v36;
    }

LABEL_19:

    v31 = v40;
    result = sub_1005783D4();
    if (!v31)
    {
      v32 = v39;
      defaultLogger()();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Successfully cleared proofing biome data.", v35, 2u);
      }

      return (v43)(v32, v5);
    }
  }

  return result;
}

uint64_t sub_10029AFAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 616) = v4;
  *(v5 + 608) = a4;
  *(v5 + 864) = a3;
  *(v5 + 600) = a2;
  *(v5 + 592) = a1;
  v6 = type metadata accessor for DIPError();
  *(v5 + 624) = v6;
  *(v5 + 632) = *(v6 - 8);
  *(v5 + 640) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 648) = v7;
  *(v5 + 656) = *(v7 - 8);
  *(v5 + 664) = swift_task_alloc();
  *(v5 + 672) = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  *(v5 + 680) = v8;
  *(v5 + 688) = *(v8 - 8);
  *(v5 + 696) = swift_task_alloc();

  return _swift_task_switch(sub_10029B140, 0, 0);
}

uint64_t sub_10029B140()
{
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 608);
  v2 = *(qword_100882228 + 16);
  *(v0 + 704) = v2;
  if (v1 != 2)
  {
    if (v1 == 1)
    {
      v3 = v2;
      v4 = String._bridgeToObjectiveC()();
      *(v0 + 712) = v4;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 584;
      *(v0 + 24) = sub_10029B8EC;
      v5 = swift_continuation_init();
      *(v0 + 536) = sub_100007224(&unk_10084A450, &unk_1006DC4D0);
      *(v0 + 480) = _NSConcreteStackBlock;
      *(v0 + 488) = 1107296256;
      *(v0 + 496) = sub_1004CF424;
      *(v0 + 504) = &unk_10080BEF0;
      *(v0 + 512) = v5;
      [v3 propertiesOfCredential:v4 completion:v0 + 480];

      return _swift_continuation_await(v0 + 16);
    }

    v13 = v2;
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v14 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v14 + 54);
    sub_100031B5C(&v14[4], v0 + 80);
    os_unfair_lock_unlock(v14 + 54);
    v15 = *(v0 + 616);
    v16 = *(v0 + 608);
    v17 = *(v0 + 864);
    v18 = *(v0 + 600);
    v19 = *(v0 + 592);
    *(v0 + 760) = *(v0 + 136);

    sub_100031918(v0 + 80);
    v20 = swift_allocObject();
    *(v0 + 768) = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17 & 1;
    *(v20 + 48) = _swiftEmptyArrayStorage;
    *(v20 + 56) = v15;
    v21 = swift_allocObject();
    *(v0 + 776) = v21;
    *(v21 + 16) = sub_1002A7034;
    *(v21 + 24) = v20;

    v22 = swift_task_alloc();
    *(v0 + 784) = v22;
    *v22 = v0;
    v22[1] = sub_10029BFAC;
    v23 = sub_10021F3D0;
    v24 = &type metadata for () + 8;
    v25 = v21;
    goto LABEL_18;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(*(v0 + 688) + 104))(*(v0 + 696), enum case for DIPError.Code.remoteSessionServiceUnavailableUnableToFetchProvisioningFailureReasons(_:), *(v0 + 680));
    v26 = v2;
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v27 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    *(v0 + 800) = v27;
    v28 = *(v0 + 696);
    v29 = *(v0 + 688);
    v30 = *(v0 + 680);
    _StringGuts.grow(_:)(53);
    *(v0 + 544) = 0;
    *(v0 + 552) = 0xE000000000000000;
    v31._countAndFlagsBits = 0xD000000000000033;
    v31._object = 0x80000001007092A0;
    String.append(_:)(v31);
    *(v0 + 576) = v27;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    (*(v29 + 104))(v28, enum case for DIPError.Code.internalError(_:), v30);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v32 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v32 + 54);
    sub_100031B5C(&v32[4], v0 + 280);
    os_unfair_lock_unlock(v32 + 54);
    v33 = *(v0 + 600);
    v34 = *(v0 + 592);
    *(v0 + 808) = *(v0 + 336);

    sub_100031918(v0 + 280);
    v35 = swift_allocObject();
    *(v0 + 816) = v35;
    *(v35 + 16) = v34;
    *(v35 + 24) = v33;
    v36 = swift_allocObject();
    *(v0 + 824) = v36;
    *(v36 + 16) = sub_1002A705C;
    *(v36 + 24) = v35;

    v37 = swift_task_alloc();
    *(v0 + 832) = v37;
    v24 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
    *v37 = v0;
    v37[1] = sub_10029C274;
    v23 = sub_100267AC8;
    v22 = (v0 + 560);
    v25 = v36;
LABEL_18:

    return AsyncCoreDataContainer.performRead<A>(_:)(v22, v23, v25, v24);
  }

  v7 = *(Strong + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  *(v0 + 728) = v7;
  v8 = Strong;
  v9 = v2;
  v7;

  v10 = swift_task_alloc();
  *(v0 + 736) = v10;
  *v10 = v0;
  v10[1] = sub_10029BC40;
  v11 = *(v0 + 600);
  v12 = *(v0 + 592);

  return sub_10067DED4(v12, v11);
}

uint64_t sub_10029B8EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 720) = v1;
  if (v1)
  {
    v2 = sub_10029C904;
  }

  else
  {
    v2 = sub_10029B9FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10029B9FC()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 584);
  v3 = [v2 provisioningFailureReasons];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v5 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v5 + 54);
  sub_100031B5C(&v5[4], v0 + 80);
  os_unfair_lock_unlock(v5 + 54);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v8 = *(v0 + 864);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  *(v0 + 760) = *(v0 + 136);

  sub_100031918(v0 + 80);
  v11 = swift_allocObject();
  *(v0 + 768) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8 & 1;
  *(v11 + 48) = v4;
  *(v11 + 56) = v6;
  v12 = swift_allocObject();
  *(v0 + 776) = v12;
  *(v12 + 16) = sub_1002A7034;
  *(v12 + 24) = v11;

  v13 = swift_task_alloc();
  *(v0 + 784) = v13;
  *v13 = v0;
  v13[1] = sub_10029BFAC;

  return AsyncCoreDataContainer.performRead<A>(_:)(v13, sub_10021F3D0, v12, &type metadata for () + 8);
}

uint64_t sub_10029BC40(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 744) = v1;

  if (v1)
  {
    v5 = sub_10029CC28;
  }

  else
  {
    *(v4 + 752) = a1;
    v5 = sub_10029BD68;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10029BD68()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 728);
  v3 = [v1 provisioningFailureReasons];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(v0 + 744);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v6 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v6 + 54);
  sub_100031B5C(&v6[4], v0 + 80);
  os_unfair_lock_unlock(v6 + 54);
  if (!v5)
  {
    v7 = *(v0 + 616);
    v8 = *(v0 + 608);
    v9 = *(v0 + 864);
    v10 = *(v0 + 600);
    v11 = *(v0 + 592);
    *(v0 + 760) = *(v0 + 136);

    sub_100031918(v0 + 80);
    v12 = swift_allocObject();
    *(v0 + 768) = v12;
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9 & 1;
    *(v12 + 48) = v4;
    *(v12 + 56) = v7;
    v13 = swift_allocObject();
    *(v0 + 776) = v13;
    *(v13 + 16) = sub_1002A7034;
    *(v13 + 24) = v12;

    v14 = swift_task_alloc();
    *(v0 + 784) = v14;
    *v14 = v0;
    v14[1] = sub_10029BFAC;

    AsyncCoreDataContainer.performRead<A>(_:)(v14, sub_10021F3D0, v13, &type metadata for () + 8);
  }
}

uint64_t sub_10029BFAC()
{
  *(*v1 + 792) = v0;

  if (v0)
  {
    v2 = sub_10029C174;
  }

  else
  {

    v2 = sub_10029C0E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10029C0E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029C174()
{
  v1 = v0[88];

  v2 = v0[84];
  v3 = v0[82];
  v4 = v0[81];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10029C274()
{
  v2 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {
    v3 = sub_10029C7D8;
  }

  else
  {

    *(v2 + 848) = *(v2 + 560);
    v3 = sub_10029C3C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10029C3C0()
{
  if (*(v0 + 856) && (IdentityDocumentType.init(documentTypeString:)(), v1 = IdentityDocumentType.rawValue.getter(), v1 != IdentityDocumentType.rawValue.getter()))
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 664);
    v13 = *(v0 + 656);
    v14 = *(v0 + 648);
    v15 = *(v0 + 640);
    v16 = *(v0 + 632);
    v17 = *(v0 + 624);
    if (v11)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "No provisioning failure reason fetched", v18, 2u);
    }

    (*(v13 + 8))(v12, v14);
    (*(v16 + 8))(v15, v17);
  }

  else
  {
    v2 = *(v0 + 672);
    v3 = *(v0 + 656);
    v4 = *(v0 + 648);
    v5 = *(v0 + 640);
    v6 = *(v0 + 632);
    v7 = *(v0 + 624);
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v6 + 16))(v8, v5, v7);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v3 + 8))(v2, v4);
    (*(v6 + 8))(v5, v7);
  }

  v19 = *(v0 + 840);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v20 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v20 + 54);
  sub_100031B5C(&v20[4], v0 + 80);
  os_unfair_lock_unlock(v20 + 54);
  if (!v19)
  {
    v21 = *(v0 + 616);
    v22 = *(v0 + 608);
    v23 = *(v0 + 864);
    v24 = *(v0 + 600);
    v25 = *(v0 + 592);
    *(v0 + 760) = *(v0 + 136);

    sub_100031918(v0 + 80);
    v26 = swift_allocObject();
    *(v0 + 768) = v26;
    *(v26 + 16) = v25;
    *(v26 + 24) = v24;
    *(v26 + 32) = v22;
    *(v26 + 40) = v23 & 1;
    *(v26 + 48) = _swiftEmptyArrayStorage;
    *(v26 + 56) = v21;
    v27 = swift_allocObject();
    *(v0 + 776) = v27;
    *(v27 + 16) = sub_1002A7034;
    *(v27 + 24) = v26;

    v28 = swift_task_alloc();
    *(v0 + 784) = v28;
    *v28 = v0;
    v28[1] = sub_10029BFAC;

    AsyncCoreDataContainer.performRead<A>(_:)(v28, sub_10021F3D0, v27, &type metadata for () + 8);
  }
}

uint64_t sub_10029C7D8()
{
  v1 = v0[88];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];

  (*(v3 + 8))(v2, v4);
  v5 = v0[84];
  v6 = v0[82];
  v7 = v0[81];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10029C904(uint64_t a1)
{
  v2 = v1[89];
  swift_willThrow();

  v3 = v1[90];
  v1[100] = v3;
  v4 = v1[87];
  v5 = v1[86];
  v6 = v1[85];
  _StringGuts.grow(_:)(53);
  v1[68] = 0;
  v1[69] = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000033;
  v7._object = 0x80000001007092A0;
  String.append(_:)(v7);
  v1[72] = v3;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v8 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v8 + 54);
  sub_100031B5C(&v8[4], (v1 + 35));
  os_unfair_lock_unlock(v8 + 54);
  v9 = v1[75];
  v10 = v1[74];
  v1[101] = v1[42];

  sub_100031918((v1 + 35));
  v11 = swift_allocObject();
  v1[102] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  v1[103] = v12;
  *(v12 + 16) = sub_1002A705C;
  *(v12 + 24) = v11;

  v13 = swift_task_alloc();
  v1[104] = v13;
  v14 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v13 = v1;
  v13[1] = sub_10029C274;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 70, sub_100267AC8, v12, v14);
}

uint64_t sub_10029CC28()
{
  v1 = *(v0 + 744);
  *(v0 + 800) = v1;
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);
  _StringGuts.grow(_:)(53);
  *(v0 + 544) = 0;
  *(v0 + 552) = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000033;
  v5._object = 0x80000001007092A0;
  String.append(_:)(v5);
  *(v0 + 576) = v1;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v4);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v6 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v6 + 54);
  sub_100031B5C(&v6[4], v0 + 280);
  os_unfair_lock_unlock(v6 + 54);
  v7 = *(v0 + 600);
  v8 = *(v0 + 592);
  *(v0 + 808) = *(v0 + 336);

  sub_100031918(v0 + 280);
  v9 = swift_allocObject();
  *(v0 + 816) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v0 + 824) = v10;
  *(v10 + 16) = sub_1002A705C;
  *(v10 + 24) = v9;

  v11 = swift_task_alloc();
  *(v0 + 832) = v11;
  v12 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v11 = v0;
  v11[1] = sub_10029C274;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 560, sub_100267AC8, v10, v12);
}

void sub_10029CF44(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100579D9C(a1, a2);
  if (!v3)
  {
    v24[1] = 0;
    if (v11)
    {
      v12 = v11;
      v13 = [v11 documentType];
      if (v13)
      {
        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {

        v15 = 0;
        v17 = 0;
      }

      *a3 = v15;
      a3[1] = v17;
    }

    else
    {
      defaultLogger()();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v24[0] = v18;
        v22 = v21;
        v25 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_100141FE4(a1, a2, &v25);
        v23 = v24[0];
        _os_log_impl(&_mh_execute_header, v24[0], v19, "Unable to find proofing session with credentialIdentifier %s. Cannot notify server of provisioning completion", v20, 0xCu);
        sub_10000BB78(v22);
      }

      else
      {
      }

      (*(v8 + 8))(v10, v7);
      *a3 = 0;
      a3[1] = 0;
    }
  }
}

void *sub_10029D17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v106 = a7;
  v105 = a6;
  v108 = a5;
  v107 = a4;
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v99 - v10;
  v12 = type metadata accessor for Logger();
  v104 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v99 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v99 - v20;
  __chkstk_darwin(v19);
  v23 = &v99 - v22;
  v24 = v120;
  result = sub_100579D9C(a2, a3);
  if (v24)
  {
    return result;
  }

  v120 = v23;
  v101 = a2;
  v26 = a3;
  v99 = v18;
  v100 = v11;
  v27 = v106;
  v28 = v104;
  v102 = v12;
  v103 = 0;
  if (!result)
  {
    v47 = v15;
    defaultLogger()();
    v48 = v26;

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    v51 = os_log_type_enabled(v49, v50);
    v30 = v28;
    v52 = v101;
    if (v51)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v110 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_100141FE4(v52, v48, &v110);
      _os_log_impl(&_mh_execute_header, v49, v50, "Unable to find proofing session with credentialIdentifier %s. Cannot notify server of provisioning completion", v53, 0xCu);
      sub_10000BB78(v54);
    }

    return (*(v30 + 8))(v47, v102);
  }

  v29 = result;
  v30 = v104;
  v31 = v105;
  v32 = v26;
  v33 = v21;
  if ([result didAttemptComboProofing])
  {
    v34 = IdentityTarget.rawValue.getter();
    if (v34 == IdentityTarget.rawValue.getter())
    {
      if (v108)
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
      }

      v47 = v120;
      defaultLogger()();
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v96, v97, "This is combo proofing session, don't notify the server", v98, 2u);
      }

      return (*(v30 + 8))(v47, v102);
    }
  }

LABEL_7:
  v120 = v29;
  defaultLogger()();

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v110 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_100141FE4(v101, v32, &v110);
    _os_log_impl(&_mh_execute_header, v36, v37, "notifyProvisionComplete called for credential identifier: %s", v38, 0xCu);
    sub_10000BB78(v39);
  }

  v40 = *(v30 + 8);
  v41 = v33;
  v42 = v102;
  v40(v41, v102);
  v43 = v27;
  if (v108)
  {
    v44 = 0x44454C494146;
  }

  else
  {
    v44 = 0x53534543435553;
  }

  v45 = v120;
  if (v108)
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v46 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v55 = [v45 provisioningCredentialID];
  if (!v55)
  {
LABEL_22:
    v57 = 0;
    v59 = 0;
    goto LABEL_23;
  }

  v56 = v55;
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v45 = v120;
LABEL_23:
  v60 = IdentityTarget.rawValue.getter();
  *&v110 = 0x4F495349564F5250;
  *(&v110 + 1) = 0xEF4D49414C435F4ELL;
  v61 = 0xE700000000000000;
  if (v108)
  {
    v61 = 0xE600000000000000;
  }

  *&v111 = v44;
  *(&v111 + 1) = v61;
  *&v112 = 0;
  *(&v112 + 1) = v57;
  *&v113 = v59;
  *(&v113 + 1) = v60;
  *&v114 = 0;
  *(&v114 + 1) = v31;
  v117 = v112;
  v118 = v113;
  v119 = v114;
  v115 = v110;
  v116 = v111;

  v62 = [v45 documentType];
  if (v62)
  {
    v63 = v62;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = IdentityDocumentType.init(documentTypeString:)();
    v65 = [v45 country];
    if (v65)
    {
      v66 = v65;
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;
    }

    else
    {
      v67 = 0;
      v69 = 0xE000000000000000;
    }

    v74 = [v120 workflowID];
    if (v74)
    {
      v75 = v74;
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;
    }

    else
    {
      v76 = 0;
      v78 = 0;
    }

    v79 = [v120 proofingSessionID];
    if (v79)
    {
      v80 = v79;
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;
    }

    else
    {
      v81 = 0;
      v83 = 0;
    }

    v84 = type metadata accessor for TaskPriority();
    v85 = v100;
    (*(*(v84 - 8) + 56))(v100, 1, 1, v84);
    v86 = swift_allocObject();
    v87 = v115;
    *(v86 + 56) = v116;
    v88 = v118;
    *(v86 + 72) = v117;
    *(v86 + 88) = v88;
    *(v86 + 104) = v119;
    *(v86 + 16) = 0;
    *(v86 + 24) = 0;
    *(v86 + 32) = v43;
    *(v86 + 40) = v87;
    *(v86 + 120) = v67;
    *(v86 + 128) = v69;
    *(v86 + 136) = v76;
    *(v86 + 144) = v78;
    *(v86 + 152) = v81;
    *(v86 + 160) = v83;
    *(v86 + 168) = v64;

    sub_1003E653C(0, 0, v85, &unk_1006DC4E8, v86);

    v109._countAndFlagsBits = 0;
    v109._object = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v89 = v120;
    [v120 target];
    v109._countAndFlagsBits = IdentityTarget.init(rawValue:)();
    LOBYTE(v109._object) = v90 & 1;
    sub_100007224(&qword_10083EF70, &unk_1006DC4F0);
    v91 = String.init<A>(describing:)();
    v93 = v92;

    v109._countAndFlagsBits = v91;
    v109._object = v93;
    v94._object = 0x80000001007093A0;
    v94._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v94);
    v95._countAndFlagsBits = 0x3837306634353632;
    v95._object = 0xE800000000000000;
    logMilestone(tag:description:)(v95, v109);
  }

  else
  {
    sub_1000B134C(&v110);
    v70 = v99;
    defaultLogger()();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "notifyProvisionComplete - documentTypeString doesn't exist to derive the documentType", v73, 2u);
      v45 = v120;
    }

    return (v40)(v70, v42);
  }
}

uint64_t sub_10029DB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v15;
  *(v8 + 160) = v16;
  *(v8 + 136) = v14;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  v11 = type metadata accessor for DIPError();
  *(v8 + 216) = v11;
  *(v8 + 224) = *(v11 - 8);
  *(v8 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_10029DCB8, 0, 0);
}

uint64_t sub_10029DCB8()
{
  v1 = v0[13];
  sub_10000BA08((v0[12] + 24), *(v0[12] + 48));
  sub_100007224(&qword_10083E588, &unk_1006DDA70);
  v2 = swift_allocObject();
  v0[30] = v2;
  v2[1] = xmmword_1006BF520;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[4];
  v2[5] = v1[3];
  v2[6] = v5;
  v2[3] = v3;
  v2[4] = v4;
  v2[2] = *v1;
  sub_1000B1314(v1, (v0 + 2));
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_10029DDD0;
  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[14];

  return sub_10022083C(v2, v13, v11, v12, v9, v10, v7, v8);
}

uint64_t sub_10029DDD0()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10029DF4C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10029DF4C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v9 = v0[21];
  (*(v0[25] + 104))(v0[26], enum case for DIPError.Code.failedToMakeActionNotification(_:), v0[24]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v2 + 16))(v6, v1, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v5 + 8))(v4, v9);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10029E160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 200) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = type metadata accessor for Logger();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10029E244, 0, 0);
}

uint64_t sub_10029E244(uint64_t a1)
{
  if (*(v1 + 200))
  {
    goto LABEL_2;
  }

  if (*(v1 + 24))
  {
    v16 = swift_task_alloc();
    *(v1 + 104) = v16;
    *v16 = v1;
    v16[1] = sub_10029E5B4;
    v17 = *(v1 + 24);
    v18 = *(v1 + 16);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    if (!*(v1 + 40))
    {
LABEL_2:
      defaultLogger()();
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to notify provisioning complete to the server", v4, 2u);
      }

      v5 = *(v1 + 96);
      v6 = *(v1 + 64);
      v7 = *(v1 + 72);
      v8 = *(v1 + 200);
      v9 = *(v1 + 24);

      v10 = *(v7 + 8);
      *(v1 + 120) = v10;
      v10(v5, v6);
      if (v9)
      {
        v11 = *(v1 + 24);
        v12 = swift_task_alloc();
        *(v1 + 128) = v12;
        *v12 = v1;
        v12[1] = sub_10029ECF4;
        v13 = *(v1 + 48);
        v14 = *(v1 + 16);

        return sub_10029AFAC(v14, v11, v8 ^ 1u, v13);
      }

      else if (*(v1 + 40))
      {
        v21 = swift_task_alloc();
        *(v1 + 136) = v21;
        *v21 = v1;
        v21[1] = sub_10029EE84;
        v23 = *(v1 + 32);
        v22 = *(v1 + 40);

        return sub_1002A187C(v23, v22, 0, 129);
      }

      else
      {
        sub_1002A3AF8(*(v1 + 16), *(v1 + 24), *(v1 + 32), 0, *(v1 + 48), 0);

        v25 = *(v1 + 8);

        return v25();
      }
    }

    v24 = swift_task_alloc();
    *(v1 + 112) = v24;
    *v24 = v1;
    v24[1] = sub_10029E9A8;
    v17 = *(v1 + 40);
    v19 = *(v1 + 48);
    v18 = *(v1 + 32);
    v20 = 128;
  }

  return sub_1002A2920(v18, v17, v19, v20);
}

uint64_t sub_10029E5B4()
{

  return _swift_task_switch(sub_10029E6B0, 0, 0);
}

uint64_t sub_10029E6B0(uint64_t a1)
{
  if (*(v1 + 40))
  {
    v2 = swift_task_alloc();
    *(v1 + 112) = v2;
    *v2 = v1;
    v2[1] = sub_10029E9A8;
    v3 = *(v1 + 40);
    v4 = *(v1 + 48);
    v5 = *(v1 + 32);

    return sub_1002A2920(v5, v3, v4, 128);
  }

  else
  {
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to notify provisioning complete to the server", v9, 2u);
    }

    v10 = *(v1 + 96);
    v11 = *(v1 + 64);
    v12 = *(v1 + 72);
    v13 = *(v1 + 200);
    v14 = *(v1 + 24);

    v15 = *(v12 + 8);
    *(v1 + 120) = v15;
    v15(v10, v11);
    if (v14)
    {
      v16 = *(v1 + 24);
      v17 = swift_task_alloc();
      *(v1 + 128) = v17;
      *v17 = v1;
      v17[1] = sub_10029ECF4;
      v18 = *(v1 + 48);
      v19 = *(v1 + 16);

      return sub_10029AFAC(v19, v16, v13 ^ 1u, v18);
    }

    else if (*(v1 + 40))
    {
      v20 = swift_task_alloc();
      *(v1 + 136) = v20;
      *v20 = v1;
      v20[1] = sub_10029EE84;
      v22 = *(v1 + 32);
      v21 = *(v1 + 40);

      return sub_1002A187C(v22, v21, 0, 129);
    }

    else
    {
      sub_1002A3AF8(*(v1 + 16), *(v1 + 24), *(v1 + 32), 0, *(v1 + 48), 0);

      v23 = *(v1 + 8);

      return v23();
    }
  }
}

uint64_t sub_10029E9A8()
{

  return _swift_task_switch(sub_10029EAA4, 0, 0);
}

uint64_t sub_10029EAA4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to notify provisioning complete to the server", v4, 2u);
  }

  v5 = *(v1 + 96);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 200);
  v9 = *(v1 + 24);

  v10 = *(v7 + 8);
  *(v1 + 120) = v10;
  v10(v5, v6);
  if (v9)
  {
    v11 = *(v1 + 24);
    v12 = swift_task_alloc();
    *(v1 + 128) = v12;
    *v12 = v1;
    v12[1] = sub_10029ECF4;
    v13 = *(v1 + 48);
    v14 = *(v1 + 16);

    return sub_10029AFAC(v14, v11, v8 ^ 1u, v13);
  }

  else if (*(v1 + 40))
  {
    v16 = swift_task_alloc();
    *(v1 + 136) = v16;
    *v16 = v1;
    v16[1] = sub_10029EE84;
    v18 = *(v1 + 32);
    v17 = *(v1 + 40);

    return sub_1002A187C(v18, v17, 0, 129);
  }

  else
  {
    sub_1002A3AF8(*(v1 + 16), *(v1 + 24), *(v1 + 32), 0, *(v1 + 48), 0);

    v19 = *(v1 + 8);

    return v19();
  }
}

uint64_t sub_10029ECF4()
{

  return _swift_task_switch(sub_10029EDF0, 0, 0);
}

uint64_t sub_10029EDF0()
{
  sub_1002A3AF8(v0[2], v0[3], v0[4], v0[5], v0[6], 0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10029EE84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_10029F310;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_10029EFAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

unint64_t sub_10029EFAC(__n128 a1)
{
  v32 = v1;
  if (*(v1 + 152))
  {
    result = *(v1 + 152);
  }

  else
  {
    result = _swiftEmptyArrayStorage;
  }

  if (!(result >> 62))
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 160) = v3;
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_22:

    sub_1002A3AF8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), 0);

    v27 = *(v1 + 8);

    return v27();
  }

  v28 = result;
  v3 = _CocoaArrayWrapper.endIndex.getter();
  result = v28;
  *(v1 + 160) = v3;
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = &selRef_setSupportedEncoding_;
    a1.n128_u64[0] = 136315138;
    v29 = a1;
    while (1)
    {
      *(v1 + 168) = v4;
      v6 = *(v1 + 152) ? *(v1 + 152) : _swiftEmptyArrayStorage;
      v7 = (v6 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v6 + 8 * v4 + 32);
      v8 = v7;
      *(v1 + 176) = v7;
      v9 = [v7 v5[78]];
      if (v9)
      {
        break;
      }

      defaultLogger()();

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v1 + 120);
      v14 = *(v1 + 80);
      v15 = *(v1 + 64);
      if (v12)
      {
        v30 = *(v1 + 120);
        v17 = *(v1 + 32);
        v16 = *(v1 + 40);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v31 = v19;
        *v18 = v29.n128_u32[0];
        *(v18 + 4) = sub_100141FE4(v17, v16, &v31);
        _os_log_impl(&_mh_execute_header, v10, v11, "No credentialID for proofing session with proofingSessionID: %s", v18, 0xCu);
        sub_10000BB78(v19);
        v5 = &selRef_setSupportedEncoding_;

        v30(v14, v15);
      }

      else
      {

        v13(v14, v15);
      }

      v4 = *(v1 + 168) + 1;
      if (v4 == *(v1 + 160))
      {
        goto LABEL_22;
      }
    }

    v20 = *(v1 + 200);
    v21 = v9;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v1 + 184) = v24;
    v25 = swift_task_alloc();
    *(v1 + 192) = v25;
    *v25 = v1;
    v25[1] = sub_10029F4C8;
    v26 = *(v1 + 48);

    return sub_10029AFAC(v22, v24, (v20 & 1) == 0, v26);
  }

  return result;
}

uint64_t sub_10029F310(uint64_t a1)
{
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to notify server provisioningComplete: %@", v4, 0xCu);
    sub_10000BE18(v5, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v1 + 120))(*(v1 + 88), *(v1 + 64));
  sub_1002A3AF8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), 0);

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_10029F4C8()
{

  return _swift_task_switch(sub_10029F5E0, 0, 0);
}

uint64_t sub_10029F5E0()
{
  v30 = v0;

  v2 = *(v0 + 168) + 1;
  if (v2 == *(v0 + 160))
  {
LABEL_2:

    sub_1002A3AF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), 0);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = &selRef_setSupportedEncoding_;
    *&v1 = 136315138;
    v27 = v1;
    while (1)
    {
      *(v0 + 168) = v2;
      v10 = *(v0 + 152) ? *(v0 + 152) : _swiftEmptyArrayStorage;
      v11 = (v10 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v10 + 8 * v2 + 32);
      v12 = v11;
      *(v0 + 176) = v11;
      v13 = [v11 v5[78]];
      if (v13)
      {
        break;
      }

      defaultLogger()();

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 120);
      v18 = *(v0 + 80);
      v19 = *(v0 + 64);
      if (v16)
      {
        v28 = *(v0 + 120);
        v7 = *(v0 + 32);
        v6 = *(v0 + 40);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v29 = v9;
        *v8 = v27;
        *(v8 + 4) = sub_100141FE4(v7, v6, &v29);
        _os_log_impl(&_mh_execute_header, v14, v15, "No credentialID for proofing session with proofingSessionID: %s", v8, 0xCu);
        sub_10000BB78(v9);
        v5 = &selRef_setSupportedEncoding_;

        v28(v18, v19);
      }

      else
      {

        v17(v18, v19);
      }

      v2 = *(v0 + 168) + 1;
      if (v2 == *(v0 + 160))
      {
        goto LABEL_2;
      }
    }

    v20 = *(v0 + 200);
    v21 = v13;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v0 + 184) = v24;
    v25 = swift_task_alloc();
    *(v0 + 192) = v25;
    *v25 = v0;
    v25[1] = sub_10029F4C8;
    v26 = *(v0 + 48);

    return sub_10029AFAC(v22, v24, (v20 & 1) == 0, v26);
  }
}

uint64_t sub_10029F8FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_100579D9C(a1, a2);
  if (!v3)
  {
    if (result)
    {
      v6 = result;
      sub_100007224(&unk_100845FD0, &qword_1006DB190);
      result = swift_allocObject();
      *(result + 16) = xmmword_1006DAE90;
      *(result + 32) = v6;
    }

    *a3 = result;
  }

  return result;
}

uint64_t sub_10029F980@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_1005792EC(a1, a2, a3);
  if (!v4)
  {
    if (result)
    {
      v7 = result;
      sub_100007224(&unk_100845FD0, &qword_1006DB190);
      result = swift_allocObject();
      *(result + 16) = xmmword_1006DAE90;
      *(result + 32) = v7;
    }

    *a4 = result;
  }

  return result;
}

uint64_t sub_10029FA08()
{
  swift_unknownObjectWeakDestroy();
  sub_10000BB78((v0 + 24));

  return swift_deallocClassInstance();
}

void *sub_10029FACC@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, void *a3@<X8>)
{
  result = a2(&v6, *a1);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_10029FB08()
{
  v1 = type metadata accessor for Logger();
  v0[32] = v1;
  v0[33] = *(v1 - 8);
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();

  return _swift_task_switch(sub_10029FBDC, 0, 0);
}

uint64_t sub_10029FBDC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchAssetFilesFromDatabase called", v4, 2u);
  }

  v5 = v1[36];
  v6 = v1[32];
  v7 = v1[33];

  v8 = *(v7 + 8);
  v1[37] = v8;
  v8(v5, v6);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v9 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v9 + 54);
  sub_100031B5C(&v9[4], (v1 + 2));
  os_unfair_lock_unlock(v9 + 54);
  v1[38] = v1[9];

  sub_100031918((v1 + 2));
  v10 = swift_task_alloc();
  v1[39] = v10;
  v11 = sub_100007224(&qword_10083EF88, &qword_1006DC560);
  *v10 = v1;
  v10[1] = sub_10029FDE4;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 30, sub_10029FA74, 0, v11);
}

uint64_t sub_10029FDE4()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_1002A00E8;
  }

  else
  {

    *(v2 + 328) = *(v2 + 240);
    v3 = sub_10029FF08;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10029FF08(uint64_t a1)
{
  v20 = v1;
  v2 = v1[41];
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[37];
  v7 = v1[34];
  v8 = v1[32];
  if (v5)
  {
    v18 = v1[37];
    v9 = swift_slowAlloc();
    v17 = v7;
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    type metadata accessor for URL();

    v11 = Array.description.getter();
    v13 = v12;

    v14 = sub_100141FE4(v11, v13, &v19);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Asset URLs from database are %s", v9, 0xCu);
    sub_10000BB78(v10);

    v18(v17, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v15 = v1[1];

  return v15(v2);
}

uint64_t sub_1002A00E8()
{
  v31 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v26 = v0[35];
    v28 = v0[37];
    v25 = v0[32];
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v30 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_100141FE4(v5, v6, &v30);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occurred in fetching proofing sessions from the database %s", v3, 0xCu);
    sub_10000BB78(v4);

    v28(v26, v25);
  }

  else
  {
    v8 = v0[37];
    v9 = v0[35];
    v10 = v0[32];

    v8(v9, v10);
  }

  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[37];
  v15 = v0[34];
  v16 = v0[32];
  if (v13)
  {
    v29 = v0[37];
    v17 = swift_slowAlloc();
    v27 = v15;
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    type metadata accessor for URL();

    v19 = Array.description.getter();
    v21 = v20;

    v22 = sub_100141FE4(v19, v21, &v30);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "Asset URLs from database are %s", v17, 0xCu);
    sub_10000BB78(v18);

    v29(v27, v16);
  }

  else
  {

    v14(v15, v16);
  }

  v23 = v0[1];

  return v23(_swiftEmptyArrayStorage);
}

uint64_t sub_1002A0440()
{
  v1 = type metadata accessor for URL();
  v0[33] = v1;
  v0[34] = *(v1 - 8);
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v0[42] = v2;
  v0[43] = *(v2 - 8);
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();

  return _swift_task_switch(sub_1002A0614, 0, 0);
}

uint64_t sub_1002A0614(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deleteStaleFiles called", v4, 2u);
  }

  v5 = v1[50];
  v6 = v1[42];
  v7 = v1[43];

  v8 = *(v7 + 8);
  v1[51] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[52] = v9;
  *v9 = v1;
  v9[1] = sub_1002A0784;

  return sub_10029FB08();
}

uint64_t sub_1002A0784(uint64_t a1)
{
  *(*v1 + 424) = a1;

  return _swift_task_switch(sub_1002A08B0, 0, 0);
}

uint64_t sub_1002A08B0()
{
  v161 = v0;
  if (qword_100832B68 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    sub_10003170C(v0[33], qword_100881E80);
    URL.appendingPathComponent(_:isDirectory:)();
    v139 = objc_opt_self();
    v1 = [v139 defaultManager];
    URL._bridgeToObjectiveC()(v2);
    v4 = v3;
    v0[30] = 0;
    v5 = [v1 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:4 error:v0 + 30];

    v6 = v0[30];
    if (!v5)
    {
      break;
    }

    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v6;

    defaultLogger()();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[51];
    v13 = v0[49];
    v14 = v0[42];
    if (v11)
    {
      v155 = v0[49];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v160[0] = v16;
      *v15 = 136315138;
      v17 = Array.description.getter();
      v19 = sub_100141FE4(v17, v18, v160);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Asset URLs from coreidvd/uploads are: %s", v15, 0xCu);
      sub_10000BB78(v16);

      v12(v155, v14);
    }

    else
    {

      v12(v13, v14);
    }

    v24 = *(v7 + 16);
    if (v24)
    {
      v25 = v0[34];
      v160[0] = _swiftEmptyArrayStorage;
      sub_100172C3C(0, v24, 0);
      v26 = v160[0];
      v27 = *(v25 + 16);
      v25 += 16;
      v156 = v27;
      v150 = (*(v25 + 64) + 32) & ~*(v25 + 64);
      v28 = v7 + v150;
      v29 = *(v25 + 56);
      v30 = (v25 - 8);
      v31 = (v25 + 16);
      do
      {
        v32 = v0[39];
        v33 = v0[33];
        v156(v32, v28, v33);
        URL.resolvingSymlinksInPath()();
        (*v30)(v32, v33);
        v160[0] = v26;
        v35 = *(v26 + 16);
        v34 = *(v26 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_100172C3C((v34 > 1), v35 + 1, 1);
          v26 = v160[0];
        }

        v36 = v0[40];
        v37 = v0[33];
        *(v26 + 16) = v35 + 1;
        (*v31)(v26 + v150 + v35 * v29, v36, v37);
        v28 += v29;
        --v24;
      }

      while (v24);
      v157 = v26;
    }

    else
    {
      v157 = _swiftEmptyArrayStorage;
    }

    defaultLogger()();
    v38 = v157;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v0[51];
    v43 = v0[48];
    v44 = v0[42];
    if (v41)
    {
      v151 = v0[51];
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v160[0] = v46;
      *v45 = 136315138;
      v47 = Array.description.getter();
      v49 = sub_100141FE4(v47, v48, v160);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v39, v40, "Asset SymLinks resolved URLs from coreidvd/uploads are: %s", v45, 0xCu);
      sub_10000BB78(v46);

      v151(v43, v44);
    }

    else
    {

      v42(v43, v44);
    }

    v152 = v157[2];
    if (v152)
    {
      v50 = 0;
      v51 = v0[34];
      v140 = (v51 + 8);
      v143 = v51;
      v145 = v0[53];
      v147 = (v51 + 32);
      v158 = _swiftEmptyArrayStorage;
      while (v50 < v38[2])
      {
        v56 = v0[53];
        v57 = (*(v143 + 80) + 32) & ~*(v143 + 80);
        v58 = *(v143 + 72);
        (*(v143 + 16))(v0[38], v38 + v57 + v58 * v50++, v0[33]);
        v59 = v56 + v57;
        v60 = *(v145 + 16) + 1;
        while (--v60)
        {
          sub_1002A7708(&qword_10083EF80, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v59 += v58;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            (*v140)(v0[38], v0[33]);
            goto LABEL_22;
          }
        }

        v61 = *v147;
        (*v147)(v0[37], v0[38], v0[33]);
        v63 = v158;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v160[0] = v158;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100172C3C(0, *(v158 + 2) + 1, 1);
          v63 = v160[0];
        }

        v53 = *(v63 + 16);
        v52 = *(v63 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_100172C3C((v52 > 1), v53 + 1, 1);
          v63 = v160[0];
        }

        v54 = v0[37];
        v55 = v0[33];
        *(v63 + 16) = v53 + 1;
        v158 = v63;
        v61(v63 + v57 + v53 * v58, v54, v55);
LABEL_22:
        v38 = v157;
        if (v50 == v152)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
    }

    else
    {
      v158 = _swiftEmptyArrayStorage;
LABEL_31:
      defaultLogger()();
      v64 = v158;

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();

      v67 = os_log_type_enabled(v65, v66);
      v68 = v0[51];
      v69 = v0[47];
      v70 = v0[42];
      if (v67)
      {
        v153 = v0[47];
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v160[0] = v72;
        *v71 = 136315138;
        v73 = Array.description.getter();
        v148 = v68;
        v75 = sub_100141FE4(v73, v74, v160);

        *(v71 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v65, v66, "Unknown asset URLs are: %s", v71, 0xCu);
        sub_10000BB78(v72);

        v148(v153, v70);
      }

      else
      {

        v68(v69, v70);
      }

      v141 = *(v158 + 2);
      if (!v141)
      {
        v78 = *(v0[34] + 8);
LABEL_46:
        v78(v0[41], v0[33]);

        goto LABEL_54;
      }

      v76 = 0;
      v142 = v0[34];
      v77 = (v142 + 8);
      while (v76 < *(v64 + 2))
      {
        v79 = *(v142 + 16);
        v79(v0[36], &v64[((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v76], v0[33]);
        if (qword_100832B60 != -1)
        {
          swift_once();
        }

        v80 = *(qword_100881E78 + 16);
        os_unfair_lock_lock(v80 + 54);
        sub_100031B5C(&v80[4], (v0 + 2));
        os_unfair_lock_unlock(v80 + 54);
        v81 = v0[12];

        sub_100031918((v0 + 2));
        v82 = *(v81 + 16);
        os_unfair_lock_lock((v82 + 24));
        v83 = *(v82 + 16);
        os_unfair_lock_unlock((v82 + 24));

        if (v83 > 0)
        {
          v154 = (v142 + 8);

          defaultLogger()();
          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.debug.getter();
          v109 = os_log_type_enabled(v107, v108);
          v110 = v0[51];
          v111 = v0[46];
          v112 = v0[41];
          v113 = v0[42];
          v114 = v0[36];
          v115 = v0[33];
          if (v109)
          {
            v116 = swift_slowAlloc();
            *v116 = 0;
            _os_log_impl(&_mh_execute_header, v107, v108, "Breaking out of gc as number of assets persisted on disk counter is non-zero", v116, 2u);
          }

          v110(v111, v113);
          v117 = *v154;
          (*v154)(v114, v115);
          v117(v112, v115);
          goto LABEL_54;
        }

        v84 = [v139 defaultManager];
        URL._bridgeToObjectiveC()(v85);
        v87 = v86;
        v0[32] = 0;
        v88 = [v84 removeItemAtURL:v86 error:v0 + 32];

        v89 = v0[32];
        if (!v88)
        {
          v118 = v0[41];
          v119 = v0[36];
          v120 = v0[33];
          v121 = v89;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v122 = *v77;
          (*v77)(v119, v120);
          v122(v118, v120);
          goto LABEL_51;
        }

        v149 = v76;
        v91 = v0[35];
        v90 = v0[36];
        v92 = v0[33];
        v93 = v89;
        defaultLogger()();
        v79(v91, v90, v92);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.debug.getter();
        v96 = os_log_type_enabled(v94, v95);
        v97 = v0[51];
        v144 = v0[42];
        v146 = v0[45];
        v98 = v0[35];
        v99 = v0[36];
        v100 = v0[33];
        if (v96)
        {
          v138 = v0[51];
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v160[0] = v102;
          *v101 = 136315138;
          v136 = URL.absoluteString.getter();
          v137 = v99;
          v104 = v103;
          v105 = *v77;
          (*v77)(v98, v100);
          v106 = sub_100141FE4(v136, v104, v160);
          v64 = v158;

          *(v101 + 4) = v106;
          _os_log_impl(&_mh_execute_header, v94, v95, "Successfully removed stale asset file with url :%s", v101, 0xCu);
          sub_10000BB78(v102);
          v78 = v105;

          v138(v146, v144);
          v105(v137, v100);
        }

        else
        {

          v78 = *v77;
          (*v77)(v98, v100);
          v97(v146, v144);
          v78(v99, v100);
        }

        v76 = v149 + 1;
        if (v141 == v149 + 1)
        {
          goto LABEL_46;
        }
      }
    }

    __break(1u);
LABEL_59:
    swift_once();
  }

  v20 = v0[41];
  v21 = v0[33];
  v22 = v0[34];
  v23 = v6;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v22 + 8))(v20, v21);
LABEL_51:
  defaultLogger()();
  swift_errorRetain();
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.debug.getter();

  v125 = os_log_type_enabled(v123, v124);
  v126 = v0[51];
  v127 = v0[44];
  v128 = v0[42];
  if (v125)
  {
    v159 = v0[44];
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v160[0] = v130;
    *v129 = 136315138;
    swift_getErrorValue();
    v131 = Error.localizedDescription.getter();
    v133 = sub_100141FE4(v131, v132, v160);

    *(v129 + 4) = v133;
    _os_log_impl(&_mh_execute_header, v123, v124, "Error occurred in removing stale file: %s", v129, 0xCu);
    sub_10000BB78(v130);

    v126(v159, v128);
  }

  else
  {

    v126(v127, v128);
  }

LABEL_54:

  v134 = v0[1];

  return v134();
}

uint64_t sub_1002A187C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 784) = a4;
  *(v4 + 656) = a3;
  *(v4 + 648) = a2;
  *(v4 + 640) = a1;
  return _swift_task_switch(sub_1002A18A8, 0, 0);
}

uint64_t sub_1002A18A8()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 648);
  if (v1 < 0)
  {

    if ((v1 & 1) != 0 || (v12 = IdentityTarget.rawValue.getter(), v12 == IdentityTarget.rawValue.getter()))
    {
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v13 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v13 + 54);
      sub_100031B5C(&v13[4], v0 + 16);
      os_unfair_lock_unlock(v13 + 54);
      v14 = *(v0 + 640);
      *(v0 + 744) = *(v0 + 72);

      sub_100031918(v0 + 16);
      v15 = swift_allocObject();
      *(v0 + 752) = v15;
      *(v15 + 16) = v14;
      *(v15 + 24) = v2;
      v7 = swift_allocObject();
      *(v0 + 760) = v7;
      *(v7 + 16) = sub_1002A6F28;
      *(v7 + 24) = v15;

      v16 = swift_task_alloc();
      *(v0 + 768) = v16;
      v9 = sub_100007224(&qword_10083EF60, &qword_1006DC4B8);
      *v16 = v0;
      v16[1] = sub_1002A2130;
      v10 = sub_10017F748;
      v11 = v0 + 616;
    }

    else
    {
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v17 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v17 + 54);
      sub_100031B5C(&v17[4], v0 + 216);
      os_unfair_lock_unlock(v17 + 54);
      v18 = *(v0 + 656);
      v19 = *(v0 + 640);
      *(v0 + 704) = *(v0 + 272);

      sub_100031918(v0 + 216);
      v20 = swift_allocObject();
      *(v0 + 712) = v20;
      v20[2] = v19;
      v20[3] = v2;
      v20[4] = v18;
      v7 = swift_allocObject();
      *(v0 + 720) = v7;
      *(v7 + 16) = sub_1002A6F98;
      *(v7 + 24) = v20;

      v21 = swift_task_alloc();
      *(v0 + 728) = v21;
      v9 = sub_100007224(&qword_10083EF68, &unk_1006DC4C0);
      *v21 = v0;
      v21[1] = sub_1002A1F4C;
      v10 = sub_1002A6FB8;
      v11 = v0 + 624;
    }
  }

  else
  {
    v3 = qword_100832B60;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v4 + 54);
    sub_100031B5C(&v4[4], v0 + 416);
    os_unfair_lock_unlock(v4 + 54);
    v5 = *(v0 + 640);
    *(v0 + 664) = *(v0 + 472);

    sub_100031918(v0 + 416);
    v6 = swift_allocObject();
    *(v0 + 672) = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;
    v7 = swift_allocObject();
    *(v0 + 680) = v7;
    *(v7 + 16) = sub_1002A6FD0;
    *(v7 + 24) = v6;

    v8 = swift_task_alloc();
    *(v0 + 688) = v8;
    v9 = sub_100007224(&qword_10083EF68, &unk_1006DC4C0);
    *v8 = v0;
    v8[1] = sub_1002A1D68;
    v10 = sub_1002A7770;
    v11 = v0 + 632;
  }

  return AsyncCoreDataContainer.performRead<A>(_:)(v11, v10, v7, v9);
}

uint64_t sub_1002A1D68()
{
  v2 = *v1;
  v2[87] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A1ED0, 0, 0);
  }

  else
  {

    v3 = v2[79];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1002A1ED0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A1F4C()
{
  v2 = *v1;
  v2[92] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A20B4, 0, 0);
  }

  else
  {

    v3 = v2[78];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1002A20B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A2130()
{
  v2 = *v1;
  v2[97] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A2298, 0, 0);
  }

  else
  {

    v3 = v2[77];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1002A2298()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A2314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = type metadata accessor for Logger();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_1002A23E4, 0, 0);
}

uint64_t sub_1002A23E4()
{
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100882228 + 16);
  v0[26] = v1;
  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v0[27] = v3;
  v4 = String._bridgeToObjectiveC()();
  v0[28] = v4;
  v0[2] = v0;
  v0[3] = sub_1002A2580;
  v5 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080BCE8;
  v0[14] = v5;
  [v2 deletePIITokenFromSyncableKeyStoreForIdentifier:v3 credentialIdentifier:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002A2580()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1002A2838;
  }

  else
  {
    v2 = sub_1002A2690;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A2690()
{
  v17 = v0;
  v1 = *(v0 + 216);

  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  if (v4)
  {
    v15 = *(v0 + 200);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingCleanupProvider cleaned up PII token for identifier: %s", v11, 0xCu);
    sub_10000BB78(v12);

    (*(v8 + 8))(v15, v7);
  }

  else
  {

    (*(v8 + 8))(v6, v7);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002A2838(uint64_t a1)
{
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  v6 = v1[23];
  v5 = v1[24];
  v7 = v1[22];
  swift_willThrow();

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1002A2920(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = type metadata accessor for Logger();
  v4[2] = v9;
  v4[3] = *(v9 - 8);
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v4[6] = v10;
  v4[7] = *(v10 - 8);
  v4[8] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[9] = v11;
  *v11 = v4;
  v11[1] = sub_1002A2AA0;

  return sub_1002A187C(a1, a2, a3, a4);
}

uint64_t sub_1002A2AA0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_1002A32DC;
  }

  else
  {
    v4 = sub_1002A2BB4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002A2BB4()
{
  v1 = v0[10];
  if (!v1)
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.failedToDeletePIITokenProofingSessionUnavailable(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_23:
    v34 = v0[3];
    v33 = v0[4];
    v35 = v0[2];
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v34 + 8))(v33, v35);
    goto LABEL_24;
  }

  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[12] = result;
  v3 = v0[10];
  if (result)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v4 = *(v3 + 32);
    }

    v5 = v4;
    v0[13] = v4;
    v0[14] = 1;
    v6 = [v4 documentType];
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      IdentityDocumentType.init(documentTypeString:)();
      v8 = IdentityDocumentType.rawValue.getter();
      if (v8 != IdentityDocumentType.rawValue.getter())
      {

        defaultLogger()();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        v25 = os_log_type_enabled(v23, v24);
        v26 = v0[5];
        v27 = v0[2];
        v28 = v0[3];
        if (v25)
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "Skipping PII token cleanup, not a passport", v29, 2u);
        }

        (*(v28 + 8))(v26, v27);
        goto LABEL_24;
      }

      v9 = [v5 credentialIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v0[15] = v13;
        v14 = [v5 piiTokenIdentifier];
        if (v14)
        {
          v15 = v14;
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          v0[16] = v18;
          v19 = swift_task_alloc();
          v0[17] = v19;
          *v19 = v0;
          v19[1] = sub_1002A33A0;

          return sub_1002A2314(v16, v18, v11, v13);
        }

        v38 = v0[7];
        v37 = v0[8];
        v39 = v0[6];

        (*(v38 + 104))(v37, enum case for DIPError.Code.failedToDeletePIITokenIdentifierUnavailable(_:), v39);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
      }

      else
      {
        v31 = v0[7];
        v30 = v0[8];
        v32 = v0[6];

        (*(v31 + 104))(v30, enum case for DIPError.Code.failedToDeletePIITokenCredentialIDUnavailable(_:), v32);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
      }
    }

    else
    {
      v21 = v0[7];
      v20 = v0[8];
      v22 = v0[6];

      (*(v21 + 104))(v20, enum case for DIPError.Code.skippingPIITokenCleanupInvalidDocTypeString(_:), v22);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_23;
  }

LABEL_24:

  v36 = v0[1];

  return v36();
}

uint64_t sub_1002A32DC(uint64_t a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1002A33A0()
{

  return _swift_task_switch(sub_1002A34D4, 0, 0);
}

void sub_1002A34D4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  if (v1 == v2)
  {

LABEL_20:

    v37 = *(v0 + 8);

    v37();
    return;
  }

  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      __break(1u);
      return;
    }

    v5 = *(v4 + 8 * v3 + 32);
  }

  v6 = v5;
  *(v0 + 104) = v5;
  *(v0 + 112) = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v7 = [v5 documentType];
  if (!v7)
  {
    v22 = *(v0 + 56);
    v21 = *(v0 + 64);
    v23 = *(v0 + 48);

    (*(v22 + 104))(v21, enum case for DIPError.Code.skippingPIITokenCleanupInvalidDocTypeString(_:), v23);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_19:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v35 = *(v0 + 24);
    v34 = *(v0 + 32);
    v36 = *(v0 + 16);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v35 + 8))(v34, v36);
    goto LABEL_20;
  }

  v8 = v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  IdentityDocumentType.init(documentTypeString:)();
  v9 = IdentityDocumentType.rawValue.getter();
  if (v9 != IdentityDocumentType.rawValue.getter())
  {

    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 40);
    v28 = *(v0 + 16);
    v29 = *(v0 + 24);
    if (v26)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Skipping PII token cleanup, not a passport", v30, 2u);
    }

    (*(v29 + 8))(v27, v28);
    goto LABEL_20;
  }

  v10 = [v6 credentialIdentifier];
  if (!v10)
  {
    v32 = *(v0 + 56);
    v31 = *(v0 + 64);
    v33 = *(v0 + 48);

    (*(v32 + 104))(v31, enum case for DIPError.Code.failedToDeletePIITokenCredentialIDUnavailable(_:), v33);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_19;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v0 + 120) = v14;
  v15 = [v6 piiTokenIdentifier];
  if (!v15)
  {
    v39 = *(v0 + 56);
    v38 = *(v0 + 64);
    v40 = *(v0 + 48);

    (*(v39 + 104))(v38, enum case for DIPError.Code.failedToDeletePIITokenIdentifierUnavailable(_:), v40);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_19;
  }

  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v0 + 128) = v19;
  v20 = swift_task_alloc();
  *(v0 + 136) = v20;
  *v20 = v0;
  v20[1] = sub_1002A33A0;

  sub_1002A2314(v17, v19, v12, v14);
}

uint64_t sub_1002A3AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v25 = a3;
  v26 = a5;
  v24 = a1;
  v9 = type metadata accessor for Logger();
  v10 = __chkstk_darwin(v9);
  v31 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v28 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v28);
  v12 = type metadata accessor for DIPError();
  v29 = *(v12 - 8);
  v30 = v12;
  __chkstk_darwin(v12);
  v27 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v15 = v14;
  v16 = swift_allocObject();
  v17 = a6;
  v18 = a2;
  v19 = v16;
  v20 = v25;
  *(v16 + 16) = v24;
  *(v16 + 24) = v18;
  *(v16 + 32) = v15;
  *(v16 + 40) = v20;
  v21 = v26;
  *(v16 + 48) = a4;
  *(v16 + 56) = v21;
  *(v16 + 64) = v17 & 1;

  sub_10057C18C(sub_1002A6F00, v19);
}

uint64_t sub_1002A4034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_1002A4154, 0, 0);
}

uint64_t sub_1002A4154(uint64_t a1)
{
  v14 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[25];
  v5 = v1[26];
  v7 = v1[24];
  if (v4)
  {
    v9 = v1[18];
    v8 = v1[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting credential %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_1002A42CC, 0, 0);
}

uint64_t sub_1002A42CC()
{
  v1 = v0[20];
  v2 = String._bridgeToObjectiveC()();
  v0[27] = v2;
  v0[2] = v0;
  v0[3] = sub_1002A43FC;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080BF40;
  v0[14] = v3;
  [v1 deleteCredential:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002A43FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 224) = v4;
  v5 = *(v2 + 216);
  if (v4)
  {
    swift_willThrow();

    return _swift_task_switch(sub_1002A4584, 0, 0);
  }

  else
  {

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_1002A4584()
{
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002A472C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002A484C, 0, 0);
}

uint64_t sub_1002A484C(uint64_t a1)
{
  v17 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[8];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting credential %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v6 + 8))(v5, v7);
  v12 = swift_task_alloc();
  v1[11] = v12;
  *v12 = v1;
  v12[1] = sub_1002A49FC;
  v13 = v1[3];
  v14 = v1[2];

  return sub_10067BB00(v14, v13);
}

uint64_t sub_1002A49FC()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A4B48, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1002A4B48()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002A4CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting upload assets meta data cleanup...", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v15 = v14;
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;

  sub_10057C18C(sub_1002A6618, v16);
}

uint64_t sub_1002A5038(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DIPError.Code();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v8;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "clearBiomeMetadata called", v15, 2u);
    v2 = v1;
    v8 = v24;
  }

  (*(v10 + 8))(v12, v9);
  type metadata accessor for IdentityBiomeDataContext();
  swift_allocObject();
  sub_100576340();
  if (v2)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v19._countAndFlagsBits = 0xD000000000000036;
    v19._object = 0x8000000100708F50;
    String.append(_:)(v19);
    swift_getErrorValue();
    v20._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v20);

    (*(v26 + 104))(v25, enum case for DIPError.Code.failedToDeleteBiomeMetadata(_:), v27);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v21 = v28;
    (*(v28 + 16))(v22, v8, v6);
    swift_willThrow();

    return (*(v21 + 8))(v8, v6);
  }

  else
  {
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a1;

    sub_100576834(sub_1002A5DF4, v18);
  }
}

uint64_t sub_1002A54D0(uint64_t a1)
{
  v1[31] = a1;
  v2 = type metadata accessor for Logger();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return _swift_task_switch(sub_1002A559C, 0, 0);
}

uint64_t sub_1002A559C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if proofing biome data exists to cleaned up after proofing cancellation.", v4, 2u);
  }

  v5 = v1[35];
  v6 = v1[32];
  v7 = v1[33];

  v8 = *(v7 + 8);
  v1[36] = v8;
  v8(v5, v6);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v9 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v9 + 54);
  sub_100031B5C(&v9[4], (v1 + 2));
  os_unfair_lock_unlock(v9 + 54);
  v10 = v1[31];
  v1[37] = v1[9];

  sub_100031918((v1 + 2));
  v11 = swift_allocObject();
  v1[38] = v11;
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  v1[39] = v12;
  *(v12 + 16) = sub_1002A76EC;
  *(v12 + 24) = v11;

  v13 = swift_task_alloc();
  v1[40] = v13;
  *v13 = v1;
  v13[1] = sub_1002A57F0;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v13, sub_10021F3D0, v12, &type metadata for () + 8);
}

uint64_t sub_1002A57F0()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1002A5988;
  }

  else
  {

    v2 = sub_1002A5920;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A5920()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A5988()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v14 = v0[34];
    v15 = v0[36];
    v3 = v0[32];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100141FE4(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to delete proofing biome data. Error: %s", v4, 0xCu);
    sub_10000BB78(v5);

    v15(v14, v3);
  }

  else
  {
    v9 = v0[36];
    v10 = v0[34];
    v11 = v0[32];

    v9(v10, v11);
  }

  v12 = v0[1];

  return v12();
}

void *sub_1002A5B90(uint64_t a1)
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v1);
  v7 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v4, v1);
  v16[3] = v5;
  v16[4] = &off_10080ADD0;
  v16[0] = v6;
  type metadata accessor for IdentityProofingCleanupProvider();
  v8 = swift_allocObject();
  v9 = sub_10001F370(v16, v5);
  __chkstk_darwin(v9);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v8[6] = v5;
  v8[7] = &off_10080ADD0;
  v8[3] = v13;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v8[8] = v7;
  sub_10000BB78(v16);
  return v8;
}

uint64_t sub_1002A5DBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002A5E10(uint64_t a1)
{
  v1[31] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[35] = v3;
  v1[36] = *(v3 - 8);
  v1[37] = swift_task_alloc();

  return _swift_task_switch(sub_1002A5F2C, 0, 0);
}

uint64_t sub_1002A5F2C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "clearProofingBiomeData called", v4, 2u);
  }

  v6 = v1[36];
  v5 = v1[37];
  v7 = v1[35];

  (*(v6 + 8))(v5, v7);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v8 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v8 + 54);
  sub_1000318FC(&v8[4], (v1 + 2));
  os_unfair_lock_unlock(v8 + 54);
  v9 = v1[31];
  v1[38] = v1[9];

  sub_100031918((v1 + 2));
  v10 = swift_allocObject();
  v1[39] = v10;
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  v1[40] = v11;
  *(v11 + 16) = sub_1002A6534;
  *(v11 + 24) = v10;

  v12 = swift_task_alloc();
  v1[41] = v12;
  *v12 = v1;
  v12[1] = sub_1002A617C;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v12, sub_10017F710, v11, &type metadata for () + 8);
}

uint64_t sub_1002A617C()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1002A631C;
  }

  else
  {

    v2 = sub_1002A62AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A62AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A631C()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  _StringGuts.grow(_:)(61);
  v4._countAndFlagsBits = 0xD00000000000003BLL;
  v4._object = 0x8000000100708FF0;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v5);

  (*(v2 + 104))(v1, enum case for DIPError.Code.failedToDeleteProofingBiomeData(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002A657C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002A65D8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002A6638(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002A67BC, 0, 0);
}

uint64_t sub_1002A67BC()
{
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100882228 + 16);
  v0[33] = v1;
  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v0[34] = v3;
  v0[2] = v0;
  v0[3] = sub_1002A6938;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080BD10;
  v0[14] = v4;
  [v2 deletePIIHashFromSyncableKeyStoreForIdentifier:v3 keystoreType:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002A6938()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1002A6C04;
  }

  else
  {
    v2 = sub_1002A6A48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A6A48()
{
  v16 = v0;

  defaultLogger()();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  if (v3)
  {
    v14 = *(v0 + 256);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v15);
    _os_log_impl(&_mh_execute_header, v1, v2, "IdentityProofingCleanupProvider cleaned up PII hash for credential identifier: %s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v7 + 8))(v14, v6);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002A6C04(uint64_t a1)
{
  v2 = v1[34];
  v3 = v1[35];
  v4 = v1[31];
  v15 = v1[33];
  v16 = v1[30];
  v17 = v1[29];
  v5 = v1[27];
  v13 = v1[28];
  v14 = v1[26];
  v6 = v1[24];
  v7 = v1[25];
  v8 = v1[23];
  swift_willThrow();

  _StringGuts.grow(_:)(29);
  v1[18] = 0;
  v1[19] = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v9._object = 0x80000001007090D0;
  String.append(_:)(v9);
  v1[20] = v3;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  (*(v6 + 104))(v7, enum case for DIPError.Code.failedToDeletePIIToken(_:), v8);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v5 + 16))(v10, v13, v14);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v16 + 8))(v4, v17);
  (*(v5 + 8))(v13, v14);

  v11 = v1[1];

  return v11();
}

uint64_t sub_1002A6EB8()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1002A6F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005791C8(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1002A6F60()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002A6FEC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1002A7078()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72) != 1)
  {
  }

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_1002A7100(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[4];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_10029DB24(a1, v11, v4, v5, (v1 + 5), v6, v7, v8);
}

uint64_t sub_1002A7204()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002A7260()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002A72B8(uint64_t a1)
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
  v11[1] = sub_100041F04;

  return sub_100298310(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1002A73B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002A740C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083DC18, &unk_1006DB720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A74A4()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1002A751C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1002A75A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002A75FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1002A7654()
{
  v1 = type metadata accessor for ProofingSession();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002A7708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002A77FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[80] = a3;
  v3[79] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v3[81] = v6;
  v3[82] = *(v6 - 8);
  v3[83] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[84] = v7;
  v3[85] = *(v7 - 8);
  v3[86] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[87] = v8;
  *v8 = v3;
  v8[1] = sub_1002A7978;

  return sub_1002A8D74((v3 + 2), a2, a3);
}

uint64_t sub_1002A7978()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1002A7AD4, 0, 0);
  }
}

uint64_t sub_1002A7AD4()
{
  v1 = v0[60];
  v0[89] = v1;
  v0[75] = v1;
  if (v1 && (v2 = v0[61], v0[90] = v2, (v0[76] = v2) != 0))
  {
    sub_10000BBC4((v0 + 75), (v0 + 77), &qword_100836F98, &qword_1006DC5A0);
    sub_10000BBC4((v0 + 76), (v0 + 78), &qword_100836F98, &qword_1006DC5A0);
    sub_1000F2758((v0 + 2));
    v3 = swift_task_alloc();
    v0[91] = v3;
    *v3 = v0;
    v3[1] = sub_1002A7D30;
    v4 = v0[80];

    return sub_1002A9488(v4);
  }

  else
  {
    v6 = v0[83];
    v7 = v0[82];
    v8 = v0[81];
    sub_1000F2758((v0 + 2));
    (*(v7 + 104))(v6, enum case for DIPError.Code.attributeConfigUnavailable(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1002A7D30(uint64_t a1)
{
  *(*v1 + 736) = a1;

  return _swift_task_switch(sub_1002A7E30, 0, 0);
}

uint64_t sub_1002A7E30()
{
  v82 = v0;
  if (v0[92])
  {
    v1 = v0[89];
    v2 = objc_opt_self();
    v3 = [v2 standardUserDefaults];
    v4._countAndFlagsBits = static DaemonInternalDefaultsKeys.injectLivenessOptinConsentSheetContent.getter();
    v5 = NSUserDefaults.internalBool(forKey:)(v4);

    if (v5)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000022, 0x80000001007099D0, 0xD00000000000003ALL, 0x80000001007049D0, isUniquelyReferenced_nonNull_native);
      v7 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000093, 0x8000000100709A00, 0xD000000000000033, 0x80000001006FA280, v7);
      v8 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000014, 0x8000000100709AA0, 0xD00000000000002DLL, 0x80000001006FA2C0, v8);
      v9 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0x65532074276E6F44, 0xEA0000000000646ELL, 0xD000000000000032, 0x80000001006FA2F0, v9);
      v10 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000012, 0x8000000100709AC0, 0xD000000000000041, 0x8000000100704950, v10);
      v11 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0x6F746F6850, 0xE500000000000000, 0xD00000000000002ELL, 0x80000001007049A0, v11);
      v12 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD0000000000000A6, 0x8000000100709AE0, 0xD000000000000035, 0x80000001006FA1D0, v12);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v1;
      sub_10016CAB8(0xD000000000000023, 0x8000000100709B90, 0xD00000000000003ALL, 0x80000001006FA210, v13);
    }

    v14 = [v2 standardUserDefaults];
    v15._countAndFlagsBits = static DaemonInternalDefaultsKeys.injectLivenessFaceGuidanceStrings.getter();
    v16 = NSUserDefaults.internalBool(forKey:)(v15);

    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000010, 0x8000000100709790, 0xD000000000000038, 0x8000000100709750, v17);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000011, 0x80000001007097F0, 0xD000000000000039, 0x80000001007097B0, v18);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000011, 0x8000000100709850, 0xD000000000000039, 0x8000000100709810, v19);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000011, 0x80000001007098B0, 0xD000000000000039, 0x8000000100709870, v20);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000010, 0x8000000100709790, 0xD000000000000036, 0x80000001007098D0, v21);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000011, 0x80000001007097F0, 0xD000000000000037, 0x8000000100709910, v22);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000011, 0x8000000100709850, 0xD000000000000037, 0x8000000100709950, v23);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v1;
      sub_10016CAB8(0xD000000000000011, 0x80000001007098B0, 0xD000000000000037, 0x8000000100709990, v24);
    }

    v25 = [v2 standardUserDefaults];
    v26._countAndFlagsBits = static DaemonInternalDefaultsKeys.injectAttributeConfigStrings.getter();
    v27 = NSUserDefaults.internalDictionary(forKey:)(v26);

    if (v27)
    {
      v77 = v1;
      defaultLogger()();

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v0[86];
      v32 = v0[85];
      v33 = v0[84];
      if (v30)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v80 = v35;
        *v34 = 134218242;
        *(v34 + 4) = *(v27 + 16);

        *(v34 + 12) = 2080;
        sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
        v36 = Dictionary.description.getter();
        v78 = v33;
        v38 = v31;
        v39 = sub_100141FE4(v36, v37, &v80);

        *(v34 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v28, v29, "IdentityProofingConfigProvider Injecting %ld attribute message ids: %s", v34, 0x16u);
        sub_10000BB78(v35);

        (*(v32 + 8))(v38, v78);
      }

      else
      {

        (*(v32 + 8))(v31, v33);
      }

      v44 = sub_1002A89C0(v27);

      v45 = v44 + 8;
      v46 = -1;
      v47 = -1 << *(v44 + 32);
      if (-v47 < 64)
      {
        v46 = ~(-1 << -v47);
      }

      v48 = v46 & v44[8];
      v49 = (63 - v47) >> 6;

      v51 = 0;
      v73 = v44;
      v74 = v0;
      while (1)
      {
        if (!v48)
        {
          while (1)
          {
            v52 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              break;
            }

            if (v52 >= v49)
            {

              goto LABEL_36;
            }

            v48 = v45[v52];
            ++v51;
            if (v48)
            {
              v51 = v52;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          return result;
        }

LABEL_21:
        v53 = __clz(__rbit64(v48)) | (v51 << 6);
        v54 = (v44[6] + 16 * v53);
        v55 = *v54;
        v56 = v54[1];
        sub_10000BBC4(v44[7] + 32 * v53, (v0 + 65), &unk_100845ED0, &qword_1006DA1D0);
        v79 = v55;
        v0[63] = v55;
        v0[64] = v56;
        sub_10000BBC4((v0 + 65), (v0 + 69), &unk_100845ED0, &qword_1006DA1D0);
        if (!v0[72])
        {

          sub_10000BE18((v0 + 69), &unk_100845ED0, &qword_1006DA1D0);
          goto LABEL_15;
        }

        if (swift_dynamicCast())
        {
          break;
        }

LABEL_15:
        v48 &= v48 - 1;
        result = sub_10000BE18((v0 + 63), &qword_10083F048, &qword_1006DC5B8);
      }

      v57 = v0[74];
      v80 = v0[73];
      v81 = v57;

      v58._countAndFlagsBits = 42;
      v58._object = 0xE100000000000000;
      String.append(_:)(v58);

      v75 = v80;
      v76 = v81;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v77;
      v61 = sub_10003ADCC(v55, v56);
      v62 = *(v77 + 16);
      v63 = (v60 & 1) == 0;
      result = v62 + v63;
      if (__OFADD__(v62, v63))
      {
        goto LABEL_44;
      }

      v64 = v60;
      if (*(v77 + 24) < result)
      {
        sub_100165FC0(result, v59);
        v65 = v80;
        result = sub_10003ADCC(v79, v56);
        if ((v64 & 1) != (v66 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v61 = result;
        v77 = v65;
        if ((v64 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_30:
        v67 = (v65[7] + 16 * v61);
        *v67 = v75;
        v67[1] = v76;

LABEL_34:
        v44 = v73;
        v0 = v74;
        goto LABEL_15;
      }

      if (v59)
      {
        v65 = v77;
        if (v60)
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = sub_10016F53C();
        v65 = v80;
        v77 = v80;
        if (v64)
        {
          goto LABEL_30;
        }
      }

LABEL_32:
      v65[(v61 >> 6) + 8] |= 1 << v61;
      v68 = (v65[6] + 16 * v61);
      *v68 = v79;
      v68[1] = v56;
      v69 = (v65[7] + 16 * v61);
      *v69 = v75;
      v69[1] = v76;
      v70 = v65[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_45;
      }

      v65[2] = v72;
      goto LABEL_34;
    }

LABEL_36:
    IdentityProofingAttributeConfiguration.init(attributeMessages:messageReplacements:unorderedUI:)();

    v43 = v0[1];
  }

  else
  {
    v40 = v0[83];
    v41 = v0[82];
    v42 = v0[81];
    sub_10000BE18((v0 + 75), &qword_100836F98, &qword_1006DC5A0);
    sub_10000BE18((v0 + 76), &qword_100836F98, &qword_1006DC5A0);
    (*(v41 + 104))(v40, enum case for DIPError.Code.invalidStaticWorkflow(_:), v42);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v43 = v0[1];
  }

  return v43();
}

unint64_t *sub_1002A89C0(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1002A8B20(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1002A8CFC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1002A8B20(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v21 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = v12;
    sub_10000BBC4(*(a3 + 56) + 32 * v12, v25, &unk_100845ED0, &qword_1006DA1D0);
    v23[0] = v14;
    v23[1] = v15;
    sub_10000BBC4(v25, &v24, &unk_100845ED0, &qword_1006DA1D0);
    swift_bridgeObjectRetain_n();
    v17._countAndFlagsBits = static DaemonInternalDefaultsKeys.tableEntryDisabledPrefix.getter();
    LOBYTE(v14) = String.hasPrefix(_:)(v17);

    sub_10000BE18(v23, &qword_10083F048, &qword_1006DC5B8);
    sub_10000BE18(v25, &unk_100845ED0, &qword_1006DA1D0);

    v7 = v26;
    if ((v14 & 1) == 0)
    {
      *(v20 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_1003D37D8(v20, a2, v21, a3);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_1003D37D8(v20, a2, v21, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1002A8CFC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1002A8B20(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1002A8D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[126] = a3;
  v3[125] = a2;
  v3[124] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[127] = v4;
  v3[128] = *(v4 - 8);
  v3[129] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[130] = v5;
  v3[131] = *(v5 - 8);
  v3[132] = swift_task_alloc();

  return _swift_task_switch(sub_1002A8E98, 0, 0);
}

uint64_t sub_1002A8E98(uint64_t a1)
{
  v26 = v1;
  v2 = v1[125];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[132];
  v7 = v1[131];
  v8 = v1[130];
  if (v5)
  {
    v24 = v1[132];
    v23 = v1[130];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;

    v11 = Array.description.getter();
    v13 = v12;

    v14 = sub_100141FE4(v11, v13, &v25);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetch active config called for supported languages %s", v9, 0xCu);
    sub_10000BB78(v10);

    (*(v7 + 8))(v24, v23);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v15 = v2;
  if (!v1[125])
  {
    v15 = off_10083A450;
  }

  v1[133] = v15;
  v16 = v1[126];

  v17 = sub_10058C864(v16);
  v1[134] = v18;
  v19 = v17;
  v20 = v18;
  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v21 = swift_task_alloc();
  v1[135] = v21;
  *v21 = v1;
  v21[1] = sub_1002A9198;

  return sub_1005B0A4C((v1 + 63), v19, v20, v15, 1, 1);
}

uint64_t sub_1002A9198()
{

  return _swift_task_switch(sub_1002A92CC, 0, 0);
}

uint64_t sub_1002A92CC()
{
  memcpy((v0 + 16), (v0 + 504), 0x1E8uLL);
  if (sub_1000A257C(v0 + 16) == 1)
  {
    (*(*(v0 + 1024) + 104))(*(v0 + 1032), enum case for DIPError.Code.missingActiveConfig(_:), *(v0 + 1016));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    memcpy(*(v0 + 992), (v0 + 16), 0x1E8uLL);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A9488(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1002A9630, 0, 0);
}

uint64_t sub_1002A9630(uint64_t a1)
{
  v2 = v1[2];
  v1[14] = sub_1006146AC();
  v3 = sub_10058CB08(v2);
  v5 = v4;
  v1[15] = v7;
  v1[16] = v6;
  v8 = v6;
  v9 = v7;
  v10 = swift_task_alloc();
  v1[17] = v10;
  *v10 = v1;
  v10[1] = sub_1002A98EC;
  v11 = v1[13];

  return sub_100612ED4(v11, v3, v8, v5, v9);
}

uint64_t sub_1002A98EC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1002A9AF4;
  }

  else
  {
    v2 = sub_1002A9A40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A9A40()
{
  v1 = v0[13];
  v2 = v0[12];

  v3 = *(v1 + *(v2 + 48));

  sub_1001A1FAC(v1);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1002A9AF4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  v9 = v0[3];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.invalidStaticWorkflow(_:), v0[6]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  (*(v2 + 16))(v6, v1, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v5 + 8))(v4, v9);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_1002A9CF0()
{
  _StringGuts.grow(_:)(54);
  v0._object = 0x8000000100709E70;
  v0._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v0);
  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  return 0;
}

uint64_t sub_1002A9D84()
{
  _StringGuts.grow(_:)(61);
  v0._object = 0x8000000100709E30;
  v0._countAndFlagsBits = 0xD00000000000003BLL;
  String.append(_:)(v0);
  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  return 0;
}

uint64_t sub_1002A9E18()
{
  _StringGuts.grow(_:)(55);
  v0._object = 0x8000000100709DF0;
  v0._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v0);
  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  return 0;
}

uint64_t sub_1002A9EAC()
{
  v1[12] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002A9F6C, 0, 0);
}

uint64_t sub_1002A9F6C()
{
  sub_1002AA960(*(v0 + 96) + 24, v0 + 56);
  if (*(v0 + 80))
  {
    sub_10012D290((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_10000BA08((v0 + 16), v1);
    v9 = (*(v2 + 16) + **(v2 + 16));
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_1002AA224;

    return v9(v1, v2);
  }

  else
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);
    sub_10000BE18(v0 + 56, &qword_10083F158, &qword_1006DC608);
    (*(v6 + 104))(v5, enum case for DIPError.Code.biometricStoreUninitialized(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1002AA224(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_1002AA3CC;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_1002AA358;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002AA358()
{
  sub_10000BB78(v0 + 2);

  v1 = v0[1];
  v3 = v0[18];
  v2 = v0[19];

  return v1(v2, v3);
}

uint64_t sub_1002AA3CC()
{
  sub_10000BB78((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AA438()
{
  v1[12] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002AA4F8, 0, 0);
}

uint64_t sub_1002AA4F8()
{
  sub_1002AA960(*(v0 + 96) + 24, v0 + 56);
  if (*(v0 + 80))
  {
    sub_10012D290((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_10000BA08((v0 + 16), v1);
    v9 = (*(v2 + 24) + **(v2 + 24));
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_1002AA7B8;

    return v9(v1, v2);
  }

  else
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);
    sub_10000BE18(v0 + 56, &qword_10083F158, &qword_1006DC608);
    (*(v6 + 104))(v5, enum case for DIPError.Code.biometricStoreUninitialized(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1002AA7B8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_1002AD918;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_1002AD910;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002AA8EC()
{

  sub_10000BE18(v0 + 24, &qword_10083F158, &qword_1006DC608);

  return swift_deallocClassInstance();
}

uint64_t sub_1002AA960(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083F158, &qword_1006DC608);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1002AA9D0(char *a1, void *a2)
{
  v97 = a2;
  v102 = a1;
  v88 = type metadata accessor for DIPError.Code();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v89 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100007224(&qword_10083F168, &unk_1006DEC40);
  __chkstk_darwin(v87);
  v90 = &v76 - v3;
  v4 = type metadata accessor for SHA256();
  v93 = *(v4 - 8);
  v94 = v4;
  __chkstk_darwin(v4);
  v91 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA256Digest();
  v95 = *(v6 - 8);
  v96 = v6;
  __chkstk_darwin(v6);
  v92 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RFC8152SigStructure();
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v101 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v76 - v15;
  v17 = sub_100007224(&qword_10083F170, &qword_1006DC630);
  v100 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v76 - v18;
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  v20 = CBOREncoder.init()();
  type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  sub_1002ACECC(&qword_10083F178, &type metadata accessor for KeyAuthorizationCOSE_Sign1Payload, &protocol conformance descriptor for KeyAuthorizationCOSE_Sign1Payload);
  v21 = v104;
  v22 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (v21)
  {
  }

  else
  {
    v83 = v17;
    v85 = v16;
    v82 = v14;
    v84 = v11;
    v104 = v20;
    v102 = v10;
    v103[0] = v22;
    v103[1] = v23;
    v24 = v23;
    v25 = v22;
    swift_allocObject();
    sub_10000B8B8(v25, v24);
    CBOREncoder.init()();
    sub_10000B960();
    sub_10000B9B4();
    CBOREncodedCBOR.init(value:tag:encoder:)();
    v80 = v25;
    v81 = v24;
    v26 = v83;
    v27 = CBOREncodedCBOR.dataValue.getter();
    v29 = v28;
    (*(v100 + 8))(v19, v26);
    v30 = v85;
    v31 = defaultLogger()();
    __chkstk_darwin(v31);
    Logger.cryptoParam(_:)();
    v32 = v101 + 8;
    v33 = *(v101 + 8);
    v34 = v84;
    v33(v30, v84);
    sub_10000B8B8(v27, v29);

    RFC8152SigStructure.init(algorithm:payload:encoder:)();
    v79 = v27;
    sub_1002ACECC(&qword_10083F180, &type metadata accessor for RFC8152SigStructure, &protocol conformance descriptor for RFC8152SigStructure);
    v35 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v38 = v37;
    v83 = v29;
    v39 = v85;
    v40 = v35;
    v41 = defaultLogger()();
    __chkstk_darwin(v41);
    v100 = 0;
    Logger.cryptoParam(_:)();
    v33(v39, v34);
    sub_1002ACECC(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v78 = v33;
    v42 = v91;
    v43 = v94;
    dispatch thunk of HashFunction.init()();
    sub_10000B8B8(v40, v38);
    v44 = v100;
    sub_10037939C(v40, v38, v42);
    v100 = v44;
    v101 = v32;
    v76 = v40;
    v77 = v38;
    sub_10000B90C(v40, v38);
    v45 = v92;
    dispatch thunk of HashFunction.finalize()();
    v46 = v78;
    (v93[1].isa)(v42, v43);
    sub_1002ACECC(&qword_1008336E8, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v47 = v96;
    v48 = Digest.data.getter();
    v50 = v49;
    (*(v95 + 8))(v45, v47);
    v51 = v85;
    v52 = defaultLogger()();
    __chkstk_darwin(v52);
    Logger.cryptoParam(_:)();
    v46(v51, v34);
    v53 = v97;
    v10 = v97[4];
    sub_10000BA08(v97, v97[3]);
    v54 = v100;
    v55 = dispatch thunk of IdentityKey.sign(_:)();
    if (v54)
    {
      (*(v98 + 8))(v102, v99);
      sub_10000B90C(v80, v81);
      sub_10000B90C(v79, v83);

      sub_10000B90C(v48, v50);
      sub_10000B90C(v76, v77);
    }

    else
    {
      v94 = v48;
      v95 = v55;
      v96 = v56;
      sub_10000BA08(v53, v53[3]);
      v57 = dispatch thunk of IdentityKey.getIdentityPrivateKey()();
      v10 = v83;
      v58 = v57;
      v59 = SecKeyRef.publicKeyIdentifier.getter();
      v61 = v60;

      if (v61 >> 60 == 15)
      {
        (*(v86 + 104))(v89, enum case for DIPError.Code.failedToGenerateKeyIdentifier(_:), v88);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        sub_10000B90C(v94, v50);
        sub_10000B90C(v76, v77);
        sub_10000B90C(v95, v96);

        sub_10000B90C(v79, v10);
        sub_10000B90C(v80, v81);
        (*(v98 + 8))(v102, v99);
      }

      else
      {
        v97 = v50;
        sub_10000B8B8(v79, v10);
        sub_1000363B4(v59, v61);
        sub_10000B8B8(v95, v96);
        COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)();
        sub_1002ACE18();
        v62 = v61;
        v10 = dispatch thunk of CBOREncoder.encode<A>(_:)();
        v64 = v63;
        v91 = v59;
        v92 = v62;
        v100 = 0;
        v65 = v82;
        defaultLogger()();
        sub_10000B8B8(v10, v64);
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.debug.getter();
        sub_10000B90C(v10, v64);
        v93 = v66;
        v68 = os_log_type_enabled(v66, v67);
        v69 = v94;
        if (v68)
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v103[0] = v71;
          *v70 = 136315138;
          v72 = Data.base16EncodedString()();
          v73 = sub_100141FE4(v72._countAndFlagsBits, v72._object, v103);

          *(v70 + 4) = v73;
          v74 = v93;
          _os_log_impl(&_mh_execute_header, v93, v67, "Created key authorization for phone's key signing key %s", v70, 0xCu);
          sub_10000BB78(v71);

          sub_10000B90C(v69, v97);

          sub_10000B90C(v76, v77);
          sub_10000B90C(v95, v96);
          sub_10000BD94(v91, v92);

          sub_10000B90C(v79, v83);
          sub_10000B90C(v80, v81);
          v75 = v82;
        }

        else
        {
          sub_10000B90C(v94, v97);

          sub_10000B90C(v76, v77);
          sub_10000B90C(v95, v96);
          sub_10000BD94(v91, v92);

          sub_10000B90C(v79, v83);
          sub_10000B90C(v80, v81);
          v75 = v65;
        }

        v78(v75, v84);
        sub_10000BE18(v90, &qword_10083F168, &unk_1006DEC40);
        (*(v98 + 8))(v102, v99);
      }
    }
  }

  return v10;
}

unint64_t sub_1002AB8D4(void *a1, void *a2)
{
  v33 = a2;
  v46 = a1;
  v45 = type metadata accessor for DIPError.Code();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_10083F160, &unk_1006DC620);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v48 = type metadata accessor for COSEKey();
  v47 = *(v48 - 8);
  v12 = __chkstk_darwin(v48);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v35 = &v32 - v15;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = v4;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "authorizeLocalKeySigningKey called", v22, 2u);
    v4 = v32;
  }

  (*(v17 + 8))(v19, v16);
  v23 = [v46 publicKeyCOSEKey];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  COSEKey.init(data:)();
  v24 = v47;
  v25 = v48;
  if ((*(v47 + 48))(v11, 1, v48) == 1)
  {
    sub_10000BE18(v11, &qword_10083F160, &unk_1006DC620);
    (*(v43 + 104))(v3, enum case for DIPError.Code.failedToSerializeCOSEPublicKey(_:), v45);
    v26 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v27 = v35;
    (*(v24 + 32))(v35, v11, v25);
    (*(v24 + 16))(v14, v27, v25);
    (*(v36 + 104))(v37, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.keySigningKey(_:), v38);
    v26 = v42;
    (*(v44 + 104))(v42, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.identityKey(_:), v4);
    v28 = v39;
    KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
    v29 = v34;
    v30 = sub_1002AA9D0(v28, v33);
    if (!v29)
    {
      v26 = v30;
    }

    (*(v40 + 8))(v28, v41);
    (*(v24 + 8))(v27, v25);
  }

  return v26;
}

unint64_t sub_1002ABFE0(void *a1, void *a2)
{
  v33 = a2;
  v46 = a1;
  v45 = type metadata accessor for DIPError.Code();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_10083F160, &unk_1006DC620);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v48 = type metadata accessor for COSEKey();
  v47 = *(v48 - 8);
  v12 = __chkstk_darwin(v48);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v35 = &v32 - v15;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = v4;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "authorize AccountKeySigningKey called", v22, 2u);
    v4 = v32;
  }

  (*(v17 + 8))(v19, v16);
  v23 = [v46 publicKeyCOSEKey];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  COSEKey.init(data:)();
  v24 = v47;
  v25 = v48;
  if ((*(v47 + 48))(v11, 1, v48) == 1)
  {
    sub_10000BE18(v11, &qword_10083F160, &unk_1006DC620);
    (*(v43 + 104))(v3, enum case for DIPError.Code.failedToSerializeCOSEPublicKey(_:), v45);
    v26 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v27 = v35;
    (*(v24 + 32))(v35, v11, v25);
    (*(v24 + 16))(v14, v27, v25);
    (*(v36 + 104))(v37, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.accountKeySigningKey(_:), v38);
    v26 = v42;
    (*(v44 + 104))(v42, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.identityKey(_:), v4);
    v28 = v39;
    KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
    v29 = v34;
    v30 = sub_1002AA9D0(v28, v33);
    if (!v29)
    {
      v26 = v30;
    }

    (*(v40 + 8))(v28, v41);
    (*(v24 + 8))(v27, v25);
  }

  return v26;
}

uint64_t sub_1002AC6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_1002AC814, 0, 0);
}

uint64_t sub_1002AC814(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[29];
  v5 = v1[30];
  v7 = v1[28];
  if (v4)
  {
    v9 = v1[20];
    v8 = v1[21];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "authorizeDeviceKeySigningKey called for credential identifier : %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v6 + 8))(v5, v7);
  v12 = v1[24];
  v13 = String._bridgeToObjectiveC()();
  v1[31] = v13;
  v14 = String._bridgeToObjectiveC()();
  v1[32] = v14;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1002ACA6C;
  v15 = swift_continuation_init();
  v1[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1004B1218;
  v1[13] = &unk_10080C300;
  v1[14] = v15;
  [v12 authorizeDeviceKeySigningKeyOfCredential:v13 accountKeyIdentifier:v14 completion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1002ACA6C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1002ACC18;
  }

  else
  {
    v2 = sub_1002ACB7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002ACB7C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_1002ACC18(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[31];
  v5 = v1[26];
  v4 = v1[27];
  v6 = v1[25];
  swift_willThrow();

  (*(v5 + 104))(v4, enum case for DIPError.Code.unableToAuthorizeWatchKeySigningKey(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

unint64_t sub_1002ACE18()
{
  result = qword_10083F188;
  if (!qword_10083F188)
  {
    sub_10000B870(&qword_10083F168, &unk_1006DEC40);
    sub_1002ACECC(&qword_10083F190, &type metadata accessor for COSE_Sign1, &protocol conformance descriptor for COSE_Sign1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083F188);
  }

  return result;
}

uint64_t sub_1002ACECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002ACF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_1002AD038, 0, 0);
}

uint64_t sub_1002AD038(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[29];
  v5 = v1[30];
  v7 = v1[28];
  if (v4)
  {
    v9 = v1[20];
    v8 = v1[21];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "authorizeRemoteKeySigningKey called for credential identifier : %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v6 + 8))(v5, v7);
  v12 = v1[24];
  v13 = String._bridgeToObjectiveC()();
  v1[31] = v13;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1[32] = isa;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1002AD290;
  v15 = swift_continuation_init();
  v1[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1004B1218;
  v1[13] = &unk_10080C350;
  v1[14] = v15;
  [v12 authorizeRemoteKeySigningKeyWithCredential:v13 remoteKey:isa completion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1002AD290()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1002AD3A0;
  }

  else
  {
    v2 = sub_1002AD914;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002AD3A0(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[31];
  v5 = v1[26];
  v4 = v1[27];
  v6 = v1[25];
  swift_willThrow();

  (*(v5 + 104))(v4, enum case for DIPError.Code.unableToAuthorizeWatchKeySigningKey(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_1002AD55C(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_1002AD57C, 0, 0);
}

uint64_t sub_1002AD57C()
{
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100882228 + 16);
  v0[22] = v1;
  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v0[23] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1002AD6FC;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672A4C;
  v0[13] = &unk_10080C328;
  v0[14] = v4;
  [v2 retrievePIITokenFromSyncableKeyStoreForIdentifier:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002AD6FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1002AD888;
  }

  else
  {
    v2 = sub_1002AD80C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002AD80C()
{
  v1 = *(v0 + 184);

  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_1002AD888(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[22];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1002AD91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_100007224(&qword_10083E3E8, &unk_1006DBD00);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  sub_100007224(&unk_100840960, &qword_1006DBCB0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_1002ADA6C, 0, 0);
}

uint64_t sub_1002ADA6C()
{
  v1 = v0[12];
  v2 = v0[6];
  v0[15] = *(v0[7] + 64);
  sub_10000BBC4(v2, v1, &qword_10083E3E8, &unk_1006DBD00);
  v3 = type metadata accessor for ActionRequest(0);
  v4 = *(*(v3 - 8) + 48);
  if (v4(v1, 1, v3) == 1)
  {
    v5 = v0[12];

    v6 = &qword_10083E3E8;
    v7 = &unk_1006DBD00;
    v8 = v5;
LABEL_5:
    sub_10000BE18(v8, v6, v7);
    v14 = 0;
    v15 = 0;
    goto LABEL_7;
  }

  v9 = v0[14];
  v10 = v0[12];
  sub_10000BBC4(v10 + *(v3 + 20), v9, &unk_100840960, &qword_1006DBCB0);

  sub_1002AE35C(v10, type metadata accessor for ActionRequest);
  v11 = type metadata accessor for PendingActionContext(0);
  v12 = (*(*(v11 - 8) + 48))(v9, 1, v11);
  v13 = v0[14];
  if (v12 == 1)
  {
    v6 = &unk_100840960;
    v7 = &qword_1006DBCB0;
    v8 = v0[14];
    goto LABEL_5;
  }

  v14 = *(v13 + 240);
  v15 = *(v13 + 248);

  sub_1002AE35C(v13, type metadata accessor for PendingActionContext);
LABEL_7:
  v0[16] = v15;
  v16 = v0[11];
  sub_10000BBC4(v0[6], v16, &qword_10083E3E8, &unk_1006DBD00);
  if (v4(v16, 1, v3) == 1)
  {
    v17 = v0[11];
    v18 = &qword_10083E3E8;
    v19 = &unk_1006DBD00;
LABEL_11:
    sub_10000BE18(v17, v18, v19);
    v25 = 0;
    v26 = 0;
    goto LABEL_13;
  }

  v20 = v0[13];
  v21 = v0[11];
  sub_10000BBC4(v21 + *(v3 + 20), v20, &unk_100840960, &qword_1006DBCB0);
  sub_1002AE35C(v21, type metadata accessor for ActionRequest);
  v22 = type metadata accessor for PendingActionContext(0);
  v23 = (*(*(v22 - 8) + 48))(v20, 1, v22);
  v24 = v0[13];
  if (v23 == 1)
  {
    v18 = &unk_100840960;
    v19 = &qword_1006DBCB0;
    v17 = v0[13];
    goto LABEL_11;
  }

  v25 = *(v24 + 256);
  v26 = *(v24 + 264);

  sub_1002AE35C(v24, type metadata accessor for PendingActionContext);
LABEL_13:
  v0[17] = v26;
  v27 = swift_task_alloc();
  v0[18] = v27;
  *v27 = v0;
  v27[1] = sub_1002ADDD4;
  v28 = v0[3];
  v29 = v0[4];

  return sub_1002CD7D4(v14, v15, v25, v26, v28, v29, 1);
}

uint64_t sub_1002ADDD4()
{

  return _swift_task_switch(sub_1002ADF2C, 0, 0);
}

uint64_t sub_1002ADF2C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to start clearing the proofing session and the created credential", v4, 2u);
  }

  v6 = v1[9];
  v5 = v1[10];
  v8 = v1[7];
  v7 = v1[8];

  (*(v6 + 8))(v5, v7);
  v1[19] = *(v8 + 56);

  v9 = swift_task_alloc();
  v1[20] = v9;
  *v9 = v1;
  v9[1] = sub_1002AE084;
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[3];

  return sub_100295F44(v12, v10, v11, 0);
}

uint64_t sub_1002AE084()
{

  return _swift_task_switch(sub_1002AE19C, 0, 0);
}

uint64_t sub_1002AE19C()
{
  v1 = type metadata accessor for IdentityManagementSessionDelegate();
  v2 = [objc_opt_self() defaultCenter];
  v3 = String._bridgeToObjectiveC()();
  *(v0 + 16) = v1;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v2 postNotificationName:v3 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002AE2F0()
{
  sub_10000BB78((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1002AE35C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1002AE404@<X0>(uint64_t a1@<X8>)
{
  v2 = dispatch thunk of ImageQualityMetrics.originalVertices.getter();
  if (!v2)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v3 = v2;
  if (v2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_15:

    v7 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_100172FA0(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_66;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    dispatch thunk of IQPoint.x.getter();
    v163 = v10;
    dispatch thunk of IQPoint.y.getter();
    v157 = v11;

    v229 = _swiftEmptyArrayStorage;
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      sub_100172FA0((v12 > 1), v13 + 1, 1);
    }

    ++v6;
    _swiftEmptyArrayStorage[2] = v13 + 1;
    *&_swiftEmptyArrayStorage[2 * v13 + 4] = vcvtq_f64_f32(__PAIR64__(v157, v163));
  }

  while (v4 != v6);

LABEL_16:
  v14 = dispatch thunk of ImageQualityMetrics.targetVertices.getter();
  if (!v14)
  {
    v18 = 0;
    goto LABEL_31;
  }

  v15 = v14;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_19;
    }

LABEL_30:

    v18 = _swiftEmptyArrayStorage;
    goto LABEL_31;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_19:
  result = sub_100172FA0(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = v19;
    dispatch thunk of IQPoint.x.getter();
    v164 = v21;
    dispatch thunk of IQPoint.y.getter();
    v158 = v22;

    v229 = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    if (v24 >= v23 >> 1)
    {
      sub_100172FA0((v23 > 1), v24 + 1, 1);
    }

    ++v17;
    _swiftEmptyArrayStorage[2] = v24 + 1;
    *&_swiftEmptyArrayStorage[2 * v24 + 4] = vcvtq_f64_f32(__PAIR64__(v158, v164));
  }

  while (v16 != v17);

LABEL_31:
  v25 = dispatch thunk of ImageQualityMetrics.rectangleCorners.getter();
  v154 = v18;
  v155 = v7;
  if (!v25)
  {
    v29 = 0;
    goto LABEL_46;
  }

  v26 = v25;
  if (!(v25 >> 62))
  {
    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_34;
    }

LABEL_45:

    v29 = _swiftEmptyArrayStorage;
    goto LABEL_46;
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
  if (!v27)
  {
    goto LABEL_45;
  }

LABEL_34:
  result = sub_100172FA0(0, v27 & ~(v27 >> 63), 0);
  if (v27 < 0)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  do
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v30 = *(v26 + 8 * v28 + 32);
    }

    v31 = v30;
    dispatch thunk of IQPoint.x.getter();
    v165 = v32;
    dispatch thunk of IQPoint.y.getter();
    v159 = v33;

    v229 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage[2];
    v34 = _swiftEmptyArrayStorage[3];
    if (v35 >= v34 >> 1)
    {
      sub_100172FA0((v34 > 1), v35 + 1, 1);
    }

    ++v28;
    _swiftEmptyArrayStorage[2] = v35 + 1;
    *&_swiftEmptyArrayStorage[2 * v35 + 4] = vcvtq_f64_f32(__PAIR64__(v159, v165));
  }

  while (v27 != v28);

LABEL_46:
  v36 = dispatch thunk of ImageQualityMetrics.documentCorners.getter();
  if (v36)
  {
    v37 = v36;
    if (v36 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
      if (v38)
      {
LABEL_49:
        result = sub_100172FA0(0, v38 & ~(v38 >> 63), 0);
        if ((v38 & 0x8000000000000000) == 0)
        {
          v39 = 0;
          v40 = _swiftEmptyArrayStorage;
          do
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v41 = *(v37 + 8 * v39 + 32);
            }

            v42 = v41;
            dispatch thunk of IQPoint.x.getter();
            v166 = v43;
            dispatch thunk of IQPoint.y.getter();
            v160 = v44;

            v229 = _swiftEmptyArrayStorage;
            v46 = _swiftEmptyArrayStorage[2];
            v45 = _swiftEmptyArrayStorage[3];
            if (v46 >= v45 >> 1)
            {
              sub_100172FA0((v45 > 1), v46 + 1, 1);
            }

            ++v39;
            _swiftEmptyArrayStorage[2] = v46 + 1;
            *&_swiftEmptyArrayStorage[2 * v46 + 4] = vcvtq_f64_f32(__PAIR64__(v160, v166));
          }

          while (v38 != v39);

          goto LABEL_61;
        }

LABEL_68:
        __break(1u);
        return result;
      }
    }

    else
    {
      v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
        goto LABEL_49;
      }
    }

    v40 = _swiftEmptyArrayStorage;
  }

  else
  {
    v40 = 0;
  }

LABEL_61:
  matched = dispatch thunk of ImageQualityMetrics.fuzzyMatchAssessment.getter();
  if (matched)
  {
    v48 = matched;
    v96 = FuzzyMatchAssessment.firstName.getter();
    v167 = v49;
    v95 = FuzzyMatchAssessment.lastName.getter();
    v161 = v50;
    v94 = FuzzyMatchAssessment.state.getter();
    v152 = v51;
    v93 = FuzzyMatchAssessment.houseNumber.getter();
    v53 = v52;
    v92 = FuzzyMatchAssessment.street.getter();
    v55 = v54;
    v91 = FuzzyMatchAssessment.dob.getter();
    v57 = v56;
    v90 = FuzzyMatchAssessment.postalCode.getter();
    v59 = v58;

    v89 = v167 & 1;
    v178[0] = v167 & 1;
    LOBYTE(v88) = 0;
    BYTE4(v88) = v161 & 1;
    v175[0] = v161 & 1;
    v87 = v152 & 1;
    v174[0] = v152 & 1;
    BYTE4(v86) = v53 & 1;
    v173[0] = v53 & 1;
    LOBYTE(v86) = v55 & 1;
    v172[0] = v55 & 1;
    BYTE4(v85) = v57 & 1;
    v171[0] = v57 & 1;
    LOBYTE(v85) = v59 & 1;
    v170[0] = v59 & 1;
    LOBYTE(v229) = 0;
  }

  else
  {
    v95 = 0;
    v96 = 0;
    v89 = 0;
    v90 = 0;
    v93 = 0;
    v94 = 0;
    v85 = 0;
    v86 = 0;
    v91 = 0;
    v92 = 0;
    v87 = 0;
    v88 = 1;
  }

  v132 = dispatch thunk of ImageQualityMetrics.blurriness.getter();
  v133 = dispatch thunk of ImageQualityMetrics.laplaceBlur.getter();
  v134 = dispatch thunk of ImageQualityMetrics.exposure.getter();
  v135 = dispatch thunk of ImageQualityMetrics.cardDistortion.getter();
  v136 = dispatch thunk of ImageQualityMetrics.faceToImageRatio.getter();
  v137 = dispatch thunk of ImageQualityMetrics.faceCenteredRatio.getter();
  v138 = dispatch thunk of ImageQualityMetrics.headPitch.getter();
  v139 = dispatch thunk of ImageQualityMetrics.headRoll.getter();
  v140 = dispatch thunk of ImageQualityMetrics.headYaw.getter();
  v141 = dispatch thunk of ImageQualityMetrics.blinkingConfidence.getter();
  v142 = dispatch thunk of ImageQualityMetrics.glassesConfidence.getter();
  v143 = dispatch thunk of ImageQualityMetrics.sunglassesConfidence.getter();
  v144 = dispatch thunk of ImageQualityMetrics.facemaskConfidence.getter();
  v145 = dispatch thunk of ImageQualityMetrics.headgearConfidence.getter();
  v146 = dispatch thunk of ImageQualityMetrics.lensSmudgeConfidence.getter();
  v147 = dispatch thunk of ImageQualityMetrics.captureTime.getter();
  v148 = dispatch thunk of ImageQualityMetrics.faceCaptureQuality.getter();
  v149 = dispatch thunk of ImageQualityMetrics.documentSize.getter();
  v150 = dispatch thunk of ImageQualityMetrics.documentRotation.getter();
  v151 = dispatch thunk of ImageQualityMetrics.documentSkew.getter();
  v153 = dispatch thunk of ImageQualityMetrics.leftDrift.getter();
  v156 = dispatch thunk of ImageQualityMetrics.rightDrift.getter();
  v162 = dispatch thunk of ImageQualityMetrics.upDrift.getter();
  v168 = dispatch thunk of ImageQualityMetrics.downDrift.getter();
  v123 = dispatch thunk of ImageQualityMetrics.faceConfidences.getter();
  v122 = dispatch thunk of ImageQualityMetrics.headgearConfidences.getter();
  v121 = dispatch thunk of ImageQualityMetrics.numFaces.getter();
  v131 = v60;
  v120 = dispatch thunk of ImageQualityMetrics.luxLevel.getter();
  v130 = v61;
  v119 = dispatch thunk of ImageQualityMetrics.pdf417Detected.getter();
  v118 = dispatch thunk of ImageQualityMetrics.isAAMVACompliant.getter();
  v117 = dispatch thunk of ImageQualityMetrics.isAutoCaptured.getter();
  v116 = dispatch thunk of ImageQualityMetrics.isFlashEnabled.getter();
  v62 = dispatch thunk of ImageQualityMetrics.issuerNumber.getter();
  v114 = v63;
  v115 = v62;
  v64 = dispatch thunk of ImageQualityMetrics.documentType.getter();
  v111 = v65;
  v112 = v64;
  v108 = dispatch thunk of ImageQualityMetrics.glareDetected.getter();
  v105 = dispatch thunk of ImageQualityMetrics.glareClusterSize.getter();
  v103 = dispatch thunk of ImageQualityMetrics.glareAvgIntensity.getter();
  v113 = dispatch thunk of ImageQualityMetrics.ocrMatchData.getter();
  v66 = dispatch thunk of ImageQualityMetrics.modelDecision.getter();
  v109 = v67;
  v110 = v66;
  v68 = dispatch thunk of ImageQualityMetrics.modelVersion.getter();
  v106 = v69;
  v107 = v68;
  v104 = dispatch thunk of ImageQualityMetrics.exploration.getter();
  v102 = dispatch thunk of ImageQualityMetrics.rescanCount.getter();
  v129 = v70;
  v71 = dispatch thunk of ImageQualityMetrics.livenessChute.getter();
  v100 = v72;
  v101 = v71;
  v99 = dispatch thunk of ImageQualityMetrics.errorCode.getter();
  v128 = v73;
  v98 = dispatch thunk of ImageQualityMetrics.dobRepeatCount.getter();
  v127 = v74;
  v97 = dispatch thunk of ImageQualityMetrics.doeRepeatCount.getter();
  v126 = v75;
  v76 = dispatch thunk of ImageQualityMetrics.docNumberRepeatCount.getter();
  v125 = v77;
  v78 = dispatch thunk of ImageQualityMetrics.issuerNumberRepeatCount.getter();
  v124 = v79;
  v80 = dispatch thunk of ImageQualityMetrics.mrzScanResult.getter();
  v82 = v81;
  v83 = dispatch thunk of ImageQualityMetrics.ageOfDocument.getter();
  *(a1 + 192) = v123;
  *(a1 + 200) = v122;
  *(a1 + 208) = v121;
  *(a1 + 224) = v120;
  *(a1 + 233) = v119;
  *(a1 + 234) = v118;
  *(a1 + 235) = v117;
  *(a1 + 236) = v116;
  *(a1 + 240) = v115;
  *(a1 + 248) = v114;
  *(a1 + 256) = v112;
  *(a1 + 264) = v111;
  *(a1 + 272) = v108;
  *(a1 + 280) = v105;
  *(a1 + 288) = v103;
  *(a1 + 296) = v155;
  *(a1 + 304) = v154;
  *(a1 + 312) = v29;
  *(a1 + 320) = v40;
  *(a1 + 328) = v96;
  *(a1 + 336) = v89;
  *(a1 + 344) = v95;
  *(a1 + 352) = BYTE4(v88);
  *(a1 + 360) = v94;
  *(a1 + 368) = v87;
  *(a1 + 376) = v93;
  *(a1 + 384) = BYTE4(v86);
  *(a1 + 392) = v92;
  *(a1 + 400) = v86;
  *(a1 + 408) = v91;
  *(a1 + 416) = BYTE4(v85);
  *(a1 + 424) = v90;
  *(a1 + 432) = v85;
  *(a1 + 433) = v88;
  *(a1 + 440) = v113;
  *(a1 + 448) = v110;
  *(a1 + 456) = v109;
  *(a1 + 464) = v107;
  *(a1 + 472) = v106;
  *(a1 + 480) = v104;
  *(a1 + 488) = v102;
  *(a1 + 504) = v101;
  *(a1 + 512) = v100;
  *(a1 + 520) = v99;
  *(a1 + 536) = v98;
  *(a1 + 552) = v97;
  *(a1 + 568) = v76;
  *(a1 + 584) = v78;
  *(a1 + 600) = v80;
  *(a1 + 608) = v82;
  *(a1 + 616) = v83;
  result = v147;
  *a1 = v132;
  *(a1 + 4) = BYTE4(v132) & 1;
  *(a1 + 5) = v227;
  *(a1 + 7) = v228;
  *(a1 + 8) = v133;
  *(a1 + 12) = BYTE4(v133) & 1;
  *(a1 + 13) = v225;
  *(a1 + 15) = v226;
  *(a1 + 16) = v134;
  *(a1 + 20) = BYTE4(v134) & 1;
  *(a1 + 23) = v224;
  *(a1 + 21) = v223;
  *(a1 + 24) = v135;
  *(a1 + 28) = BYTE4(v135) & 1;
  *(a1 + 31) = v222;
  *(a1 + 29) = v221;
  *(a1 + 32) = v136;
  *(a1 + 36) = BYTE4(v136) & 1;
  *(a1 + 39) = v220;
  *(a1 + 37) = v219;
  *(a1 + 40) = v137;
  *(a1 + 44) = BYTE4(v137) & 1;
  *(a1 + 47) = v218;
  *(a1 + 45) = v217;
  *(a1 + 48) = v138;
  *(a1 + 52) = BYTE4(v138) & 1;
  *(a1 + 55) = v216;
  *(a1 + 53) = v215;
  *(a1 + 56) = v139;
  *(a1 + 60) = BYTE4(v139) & 1;
  *(a1 + 63) = v214;
  *(a1 + 61) = v213;
  *(a1 + 64) = v140;
  *(a1 + 68) = BYTE4(v140) & 1;
  *(a1 + 71) = v212;
  *(a1 + 69) = v211;
  *(a1 + 72) = v141;
  *(a1 + 76) = BYTE4(v141) & 1;
  *(a1 + 79) = v210;
  *(a1 + 77) = v209;
  *(a1 + 80) = v142;
  *(a1 + 84) = BYTE4(v142) & 1;
  *(a1 + 87) = v208;
  *(a1 + 85) = v207;
  *(a1 + 88) = v143;
  *(a1 + 92) = BYTE4(v143) & 1;
  *(a1 + 95) = v206;
  *(a1 + 93) = v205;
  *(a1 + 96) = v144;
  *(a1 + 100) = BYTE4(v144) & 1;
  *(a1 + 103) = v204;
  *(a1 + 101) = v203;
  *(a1 + 104) = v145;
  *(a1 + 108) = BYTE4(v145) & 1;
  *(a1 + 111) = v202;
  *(a1 + 109) = v201;
  *(a1 + 112) = v146;
  *(a1 + 116) = BYTE4(v146) & 1;
  *(a1 + 119) = v200;
  *(a1 + 117) = v199;
  *(a1 + 120) = v147;
  *(a1 + 124) = BYTE4(v147) & 1;
  *(a1 + 127) = v198;
  *(a1 + 125) = v197;
  *(a1 + 128) = v148;
  *(a1 + 132) = BYTE4(v148) & 1;
  *(a1 + 135) = v196;
  *(a1 + 133) = v195;
  *(a1 + 136) = v149;
  *(a1 + 140) = BYTE4(v149) & 1;
  *(a1 + 143) = v194;
  *(a1 + 141) = v193;
  *(a1 + 144) = v150;
  *(a1 + 148) = BYTE4(v150) & 1;
  *(a1 + 151) = v192;
  *(a1 + 149) = v191;
  *(a1 + 152) = v151;
  *(a1 + 156) = BYTE4(v151) & 1;
  *(a1 + 159) = v190;
  *(a1 + 157) = v189;
  *(a1 + 160) = v153;
  *(a1 + 164) = BYTE4(v153) & 1;
  *(a1 + 167) = v188;
  *(a1 + 165) = v187;
  *(a1 + 168) = v156;
  *(a1 + 172) = BYTE4(v156) & 1;
  *(a1 + 175) = v186;
  *(a1 + 173) = v185;
  *(a1 + 176) = v162;
  *(a1 + 180) = BYTE4(v162) & 1;
  *(a1 + 183) = v184;
  *(a1 + 181) = v183;
  *(a1 + 184) = v168;
  *(a1 + 188) = BYTE4(v168) & 1;
  *(a1 + 191) = v182;
  *(a1 + 189) = v181;
  *(a1 + 216) = v131 & 1;
  *(a1 + 220) = *(&v229 + 3);
  *(a1 + 217) = v229;
  *(a1 + 232) = v130 & 1;
  *(a1 + 239) = v180;
  *(a1 + 237) = v179;
  *(a1 + 276) = *&v178[3];
  *(a1 + 273) = *v178;
  *(a1 + 343) = 0;
  *(a1 + 341) = 0;
  *(a1 + 337) = 0;
  *(a1 + 359) = 0;
  *(a1 + 357) = 0;
  *(a1 + 353) = 0;
  *(a1 + 375) = 0;
  *(a1 + 373) = 0;
  *(a1 + 369) = 0;
  *(a1 + 391) = 0;
  *(a1 + 389) = 0;
  *(a1 + 385) = 0;
  *(a1 + 407) = 0;
  *(a1 + 405) = 0;
  *(a1 + 401) = 0;
  *(a1 + 423) = 0;
  *(a1 + 421) = 0;
  *(a1 + 417) = 0;
  *(a1 + 438) = v177;
  *(a1 + 434) = v176;
  *(a1 + 484) = *&v175[3];
  *(a1 + 481) = *v175;
  *(a1 + 496) = v129 & 1;
  *(a1 + 500) = *&v174[3];
  *(a1 + 497) = *v174;
  *(a1 + 528) = v128 & 1;
  *(a1 + 532) = *&v173[3];
  *(a1 + 529) = *v173;
  *(a1 + 544) = v127 & 1;
  *(a1 + 548) = *&v172[3];
  *(a1 + 545) = *v172;
  *(a1 + 560) = v126 & 1;
  *(a1 + 564) = *&v171[3];
  *(a1 + 561) = *v171;
  *(a1 + 576) = v125 & 1;
  *(a1 + 580) = *&v170[3];
  *(a1 + 577) = *v170;
  *(a1 + 592) = v124 & 1;
  *(a1 + 596) = *&v169[3];
  *(a1 + 593) = *v169;
  *(a1 + 624) = v84 & 1;
  return result;
}

char *sub_1002AF24C(void (**a1)(void, void), uint64_t a2)
{
  v4 = type metadata accessor for IQImageType();
  v104 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v102 - v9;
  __chkstk_darwin(v8);
  v129 = &v102 - v11;
  v127 = type metadata accessor for Logger();
  v103 = *(v127 - 8);
  v12 = __chkstk_darwin(v127);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v102 - v16;
  __chkstk_darwin(v15);
  v19 = &v102 - v18;
  v109 = a1;
  v20 = IdentityImageQualityMetrics.inlineMetrics.getter();
  if (v20 >> 62)
  {
    goto LABEL_41;
  }

  v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v115 = v14;
    v14 = &unk_1006BF000;
    v117 = a2;
    v118 = v4;
    v125 = v17;
    v126 = v7;
    v111 = v10;
    if (v22)
    {
      v121 = v19;
      v23 = 0;
      v123 = v20 & 0xFFFFFFFFFFFFFF8;
      v124 = v20 & 0xC000000000000001;
      v119 = (v104 + 16);
      v116 = (v104 + 8);
      *&v114 = v103 + 8;
      v113 = _swiftEmptyArrayStorage;
      *&v21 = 136315650;
      v110 = v21;
      v120 = v22;
      v122 = v20;
      while (1)
      {
        if (v124)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *(v123 + 16))
          {
            goto LABEL_38;
          }

          v20 = *(v20 + 8 * v23 + 32);
        }

        v24 = v20;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v128 = v23 + 1;
        v19 = v121;
        defaultLogger()();
        (*v119)(v129, a2, v4);
        v10 = v24;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v133[0] = v112;
          *v27 = v110;
          v28 = IQImageType.rawValue.getter();
          v30 = v29;
          (*v116)(v129, v118);
          v31 = sub_100141FE4(v28, v30, v133);

          *(v27 + 4) = v31;
          *(v27 + 12) = 2048;
          *(v27 + 14) = v23;
          *(v27 + 22) = 2080;
          v32 = [v10 debugDescription];
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          v36 = v33;
          v4 = v118;
          v37 = sub_100141FE4(v36, v35, v133);
          v7 = v126;

          *(v27 + 24) = v37;
          _os_log_impl(&_mh_execute_header, v25, v26, "%s inline %ld:\n%s", v27, 0x20u);
          swift_arrayDestroy();

          a2 = v117;
        }

        else
        {

          (*v116)(v129, v4);
        }

        (*v114)(v19, v127);
        sub_1002AE404(v131);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v125;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v113 = sub_1003C5BE4(0, *(v113 + 2) + 1, 1, v113);
        }

        v40 = *(v113 + 2);
        v39 = *(v113 + 3);
        if (v40 >= v39 >> 1)
        {
          v113 = sub_1003C5BE4((v39 > 1), v40 + 1, 1, v113);
        }

        v41 = v113;
        *(v113 + 2) = v40 + 1;
        memcpy(&v41[632 * v40 + 32], v131, 0x271uLL);
        ++v23;
        v14 = 0x1006BF000;
        v20 = v122;
        if (v128 == v120)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v113 = _swiftEmptyArrayStorage;
LABEL_20:

    v42 = IdentityImageQualityMetrics.captureMetrics.getter();
    v10 = v42;
    if (!(v42 >> 62))
    {
      v20 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        break;
      }

      goto LABEL_22;
    }

    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (!v20)
    {
      break;
    }

LABEL_22:
    v44 = 0;
    v128 = v10 & 0xC000000000000001;
    v124 = v10 & 0xFFFFFFFFFFFFFF8;
    v120 = (v104 + 8);
    v121 = (v104 + 16);
    v119 = (v103 + 8);
    v19 = _swiftEmptyArrayStorage;
    *&v43 = *(v14 + 2648);
    v114 = v43;
    v122 = v20;
    v123 = v10;
    while (1)
    {
      if (v128)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v44 >= *(v124 + 16))
        {
          goto LABEL_40;
        }

        v20 = *(v10 + 8 * v44 + 32);
      }

      v45 = v20;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v129 = (v44 + 1);
      v112 = v19;
      defaultLogger()();
      v46 = v111;
      (*v121)(v111, a2, v4);
      v47 = v45;
      v48 = v17;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = v46;
        v116 = swift_slowAlloc();
        v133[0] = v116;
        *v51 = v114;
        v53 = IQImageType.rawValue.getter();
        v55 = v54;
        (*v120)(v52, v4);
        v56 = sub_100141FE4(v53, v55, v133);

        *(v51 + 4) = v56;
        *(v51 + 12) = 2048;
        *(v51 + 14) = v44;
        *(v51 + 22) = 2080;
        v57 = [v47 debugDescription];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        v61 = v58;
        v7 = v126;
        v62 = sub_100141FE4(v61, v60, v133);
        v4 = v118;

        *(v51 + 24) = v62;
        _os_log_impl(&_mh_execute_header, v49, v50, "%s captured %ld:\n%s", v51, 0x20u);
        swift_arrayDestroy();

        a2 = v117;

        v17 = v125;
        (*v119)(v125, v127);
      }

      else
      {

        (*v120)(v46, v4);
        (*v119)(v48, v127);
        v17 = v48;
      }

      sub_1002AE404(v132);
      v19 = v112;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1003C5BE4(0, *(v19 + 2) + 1, 1, v19);
      }

      v14 = *(v19 + 2);
      v63 = *(v19 + 3);
      if (v14 >= v63 >> 1)
      {
        v19 = sub_1003C5BE4((v63 > 1), v14 + 1, 1, v19);
      }

      *(v19 + 2) = v14 + 1;
      v20 = memcpy(&v19[632 * v14 + 32], v132, 0x271uLL);
      ++v44;
      v10 = v123;
      if (v129 == v122)
      {
        goto LABEL_44;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v64 = v20;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v20 = v64;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_44:
  v112 = v19;

  v65 = IdentityImageQualityMetrics.videoMetrics.getter();
  v102 = v65;
  if (v65 >> 62)
  {
    goto LABEL_82;
  }

  v67 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v68 = v115;
  if (v67)
  {
LABEL_46:
    v69 = 0;
    v107 = v102 & 0xFFFFFFFFFFFFFF8;
    v108 = v102 & 0xC000000000000001;
    v106 = v102 + 32;
    v120 = (v104 + 8);
    v121 = (v104 + 16);
    v119 = (v103 + 8);
    v70 = _swiftEmptyArrayStorage;
    *&v66 = 136315906;
    v114 = v66;
    v105 = v67;
    do
    {
      if (v108)
      {
        v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v72 = (v69 + 1);
        if (__OFADD__(v69, 1))
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v69 >= *(v107 + 16))
        {
          goto LABEL_81;
        }

        v71 = *(v106 + 8 * v69);
        v72 = (v69 + 1);
        if (__OFADD__(v69, 1))
        {
          goto LABEL_80;
        }
      }

      v109 = v72;
      *&v110 = v71;
      v116 = v69;
      v73 = MetricsSequence.sequence.getter();
      if (v73 >> 62)
      {
        v97 = v73;
        v74 = _CocoaArrayWrapper.endIndex.getter();
        v73 = v97;
        v111 = v70;
        if (v74)
        {
LABEL_52:
          v75 = 0;
          v124 = v73 & 0xFFFFFFFFFFFFFF8;
          v125 = v73 & 0xC000000000000001;
          v76 = _swiftEmptyArrayStorage;
          v122 = v74;
          v123 = v73;
          while (1)
          {
            if (v125)
            {
              v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v75 >= *(v124 + 16))
              {
                goto LABEL_79;
              }

              v77 = *(v73 + 8 * v75 + 32);
            }

            v78 = v77;
            if (__OFADD__(v75, 1))
            {
              break;
            }

            v129 = v76;
            defaultLogger()();
            (*v121)(v7, a2, v4);
            v79 = v78;
            v80 = v68;
            v81 = Logger.logObject.getter();
            v82 = static os_log_type_t.debug.getter();

            v83 = os_log_type_enabled(v81, v82);
            v128 = v75 + 1;
            if (v83)
            {
              v84 = swift_slowAlloc();
              v130 = swift_slowAlloc();
              *v84 = v114;
              v85 = IQImageType.rawValue.getter();
              v87 = v86;
              (*v120)(v126, v4);
              v88 = sub_100141FE4(v85, v87, &v130);

              *(v84 + 4) = v88;
              *(v84 + 12) = 2048;
              *(v84 + 14) = v116;
              *(v84 + 22) = 2048;
              *(v84 + 24) = v75;
              *(v84 + 32) = 2080;
              v89 = [v79 debugDescription];
              v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v92 = v91;

              v93 = v90;
              v7 = v126;
              v94 = sub_100141FE4(v93, v92, &v130);
              v4 = v118;

              *(v84 + 34) = v94;
              _os_log_impl(&_mh_execute_header, v81, v82, "%s video, sequence: %ld, metric: %ld:\n%s", v84, 0x2Au);
              swift_arrayDestroy();

              a2 = v117;

              v68 = v115;
              (*v119)(v115, v127);
            }

            else
            {

              (*v120)(v7, v4);
              (*v119)(v80, v127);
              v68 = v80;
            }

            sub_1002AE404(v133);
            v76 = v129;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v76 = sub_1003C5BE4(0, *(v76 + 2) + 1, 1, v76);
            }

            v96 = *(v76 + 2);
            v95 = *(v76 + 3);
            if (v96 >= v95 >> 1)
            {
              v76 = sub_1003C5BE4((v95 > 1), v96 + 1, 1, v76);
            }

            *(v76 + 2) = v96 + 1;
            memcpy(&v76[632 * v96 + 32], v133, 0x271uLL);
            ++v75;
            v73 = v123;
            if (v128 == v122)
            {
              goto LABEL_72;
            }
          }

          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          v67 = _CocoaArrayWrapper.endIndex.getter();
          v68 = v115;
          if (!v67)
          {
            break;
          }

          goto LABEL_46;
        }
      }

      else
      {
        v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v111 = v70;
        if (v74)
        {
          goto LABEL_52;
        }
      }

      v76 = _swiftEmptyArrayStorage;
LABEL_72:

      v70 = v111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_1003C5A8C(0, v70[2] + 1, 1, v70);
      }

      v98 = v105;
      v100 = v70[2];
      v99 = v70[3];
      if (v100 >= v99 >> 1)
      {
        v70 = sub_1003C5A8C((v99 > 1), v100 + 1, 1, v70);
      }

      v70[2] = v100 + 1;
      v70[v100 + 4] = v76;
      v69 = v109;
    }

    while (v109 != v98);
  }

  return v113;
}

unint64_t sub_1002B0020(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v137 = a7;
  v138 = a8;
  v135 = a5;
  v136 = a6;
  v133 = a3;
  v134 = a4;
  v10 = type metadata accessor for IQImageType();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v129 - v15;
  v17 = sub_10003F378(_swiftEmptyArrayStorage);
  v139 = v11;
  if (a1)
  {
    v132 = a2;
    v18 = enum case for IQImageType.frontScan(_:);
    v19 = *(v11 + 104);
    v19(v16, enum case for IQImageType.frontScan(_:), v10);
    v20 = a1;
    v21 = IQImageType.rawValue.getter();
    v130 = v22;
    v131 = v21;
    v23 = *(v11 + 8);
    v23(v16, v10);
    v19(v14, v18, v10);
    v24 = sub_1002AF24C(v20, v14);
    v26 = v25;
    v28 = v27;
    v23(v14, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v17;
    v30 = v24;
    a2 = v132;
    sub_10016DCA0(v30, v26, v28, v131, v130, isUniquelyReferenced_nonNull_native);

    v17 = v140;
  }

  if (a2)
  {
    v31 = enum case for IQImageType.backScan(_:);
    v32 = v139;
    v33 = *(v139 + 104);
    v33(v16, enum case for IQImageType.backScan(_:), v10);
    v34 = a2;
    v35 = IQImageType.rawValue.getter();
    v131 = v36;
    v132 = v35;
    v37 = *(v32 + 8);
    v37(v16, v10);
    v33(v14, v31, v10);
    v38 = sub_1002AF24C(v34, v14);
    v40 = v39;
    v42 = v41;
    v37(v14, v10);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v17;
    sub_10016DCA0(v38, v40, v42, v132, v131, v43);

    v17 = v140;
  }

  v44 = v133;
  if (v133)
  {
    v45 = enum case for IQImageType.idFront(_:);
    v46 = v139;
    v47 = *(v139 + 104);
    v47(v16, enum case for IQImageType.idFront(_:), v10);
    v48 = v44;
    v49 = IQImageType.rawValue.getter();
    v132 = v50;
    v133 = v49;
    v51 = *(v46 + 8);
    v51(v16, v10);
    v47(v14, v45, v10);
    v52 = sub_1002AF24C(v48, v14);
    v54 = v53;
    v56 = v55;
    v51(v14, v10);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v17;
    sub_10016DCA0(v52, v54, v56, v133, v132, v57);

    v17 = v140;
  }

  v58 = v134;
  if (v134)
  {
    v59 = enum case for IQImageType.idBack(_:);
    v60 = v139;
    v61 = *(v139 + 104);
    v61(v16, enum case for IQImageType.idBack(_:), v10);
    v62 = v58;
    v63 = IQImageType.rawValue.getter();
    v133 = v64;
    v134 = v63;
    v65 = *(v60 + 8);
    v65(v16, v10);
    v61(v14, v59, v10);
    v66 = sub_1002AF24C(v62, v14);
    v68 = v67;
    v70 = v69;
    v65(v14, v10);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v17;
    sub_10016DCA0(v66, v68, v70, v134, v133, v71);

    v17 = v140;
  }

  v72 = v135;
  if (v135)
  {
    v73 = enum case for IQImageType.selfie(_:);
    v74 = v139;
    v75 = *(v139 + 104);
    v75(v16, enum case for IQImageType.selfie(_:), v10);
    v76 = v72;
    v77 = IQImageType.rawValue.getter();
    v134 = v78;
    v135 = v77;
    v79 = *(v74 + 8);
    v79(v16, v10);
    v75(v14, v73, v10);
    v80 = sub_1002AF24C(v76, v14);
    v82 = v81;
    v84 = v83;
    v79(v14, v10);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v17;
    sub_10016DCA0(v80, v82, v84, v135, v134, v85);

    v17 = v140;
  }

  v86 = v136;
  if (v136)
  {
    v87 = enum case for IQImageType.liveness(_:);
    v88 = v139;
    v89 = *(v139 + 104);
    v89(v16, enum case for IQImageType.liveness(_:), v10);
    v90 = v86;
    v91 = IQImageType.rawValue.getter();
    v135 = v92;
    v136 = v91;
    v93 = *(v88 + 8);
    v93(v16, v10);
    v89(v14, v87, v10);
    v94 = sub_1002AF24C(v90, v14);
    v96 = v95;
    v98 = v97;
    v93(v14, v10);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v17;
    sub_10016DCA0(v94, v96, v98, v136, v135, v99);

    v17 = v140;
  }

  v100 = v137;
  if (v137)
  {
    v101 = enum case for IQImageType.passive(_:);
    v102 = v139;
    v103 = *(v139 + 104);
    v103(v16, enum case for IQImageType.passive(_:), v10);
    v104 = v100;
    v105 = IQImageType.rawValue.getter();
    v136 = v106;
    v137 = v105;
    v107 = *(v102 + 8);
    v107(v16, v10);
    v103(v14, v101, v10);
    v108 = sub_1002AF24C(v104, v14);
    v110 = v109;
    v112 = v111;
    v107(v14, v10);
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v17;
    sub_10016DCA0(v108, v110, v112, v137, v136, v113);

    v17 = v140;
  }

  v114 = v138;
  if (v138)
  {
    v115 = enum case for IQImageType.passport(_:);
    v116 = v139;
    v117 = *(v139 + 104);
    v117(v16, enum case for IQImageType.passport(_:), v10);
    v118 = v114;
    v119 = IQImageType.rawValue.getter();
    v137 = v120;
    v138 = v119;
    v121 = *(v116 + 8);
    v121(v16, v10);
    v117(v14, v115, v10);
    v122 = sub_1002AF24C(v118, v14);
    v124 = v123;
    v126 = v125;
    v121(v14, v10);
    v127 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v17;
    sub_10016DCA0(v122, v124, v126, v138, v137, v127);

    return v140;
  }

  return v17;
}

uint64_t sub_1002B0860(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for IQCType();
  v29 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v35 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (!v7)
  {
    return result;
  }

  v32 = (v29 + 104);
  v28[2] = v29 + 16;
  v31 = enum case for IQCType.ocrMatch(_:);
  v30 = (v29 + 8);
  for (i = (a1 + 88); ; i += 9)
  {
    if (*(i - 2))
    {
      goto LABEL_5;
    }

    v9 = *i;
    if (!*i)
    {
      goto LABEL_5;
    }

    v10 = *(i - 6);
    v34 = *(i - 3);
    v11 = v35;
    *v35 = *(i - 1);
    v11[1] = v9;
    v12 = v4;
    (*v32)(v11, v31, v4);
    v33 = v10;

    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *a2;
    v14 = v36;
    v15 = a2;
    *a2 = 0x8000000000000000;
    v17 = sub_10003B21C(v11);
    v18 = v14[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v14[3] >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10016F9DC();
      }
    }

    else
    {
      sub_10016679C(v20, isUniquelyReferenced_nonNull_native);
      v22 = sub_10003B21C(v35);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_20;
      }

      v17 = v22;
    }

    v4 = v12;
    v24 = v36;
    if (v21)
    {
      *(v36[7] + 8 * v17) = v34;
    }

    else
    {
      v36[(v17 >> 6) + 8] |= 1 << v17;
      (*(v29 + 16))(v24[6] + *(v29 + 72) * v17, v35, v12);
      *(v24[7] + 8 * v17) = v34;
      v25 = v24[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_19;
      }

      v24[2] = v27;
    }

    (*v30)(v35, v12);
    a2 = v15;
    *v15 = v24;

LABEL_5:
    if (!--v7)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002B0B40(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for IQCType();
  v28 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v7 = (v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    v32 = *(v28 + 104);
    v33 = v28 + 104;
    v27[1] = v28 + 16;
    v31 = enum case for IQCType.complex(_:);
    v29 = (v28 + 8);
    v30 = a2;
    for (i = a1 + 56; ; i += 32)
    {
      v10 = *(i - 8);
      v34 = v8;
      v35 = v10;
      v11 = *(i - 16);
      *v7 = *(i - 24);
      v7[1] = v11;
      v12 = v4;
      v32(v7, v31, v4);
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *a2;
      v14 = v36;
      *a2 = 0x8000000000000000;
      v16 = sub_10003B21C(v7);
      v17 = v14[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        break;
      }

      v20 = v15;
      if (v14[3] >= v19)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10016F9DC();
        }
      }

      else
      {
        sub_10016679C(v19, isUniquelyReferenced_nonNull_native);
        v21 = sub_10003B21C(v7);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_17;
        }

        v16 = v21;
      }

      v4 = v12;
      v23 = v36;
      if (v20)
      {
        *(v36[7] + 8 * v16) = v35;
      }

      else
      {
        v36[(v16 >> 6) + 8] |= 1 << v16;
        (*(v28 + 16))(v23[6] + *(v28 + 72) * v16, v7, v12);
        *(v23[7] + 8 * v16) = v35;
        v24 = v23[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_16;
        }

        v23[2] = v26;
      }

      (*v29)(v7, v12);
      a2 = v30;
      *v30 = v23;

      v8 = v34 - 1;
      if (v34 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B0DFC(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_100007224(&qword_10083F538, &unk_1006DC7A0);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for MetricsFlags();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_1002BC3E8(&qword_10083F520, &type metadata accessor for MetricsFlags, &protocol conformance descriptor for MetricsFlags);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_1002BC3E8(&qword_10083F540, &type metadata accessor for MetricsFlags, &protocol conformance descriptor for MetricsFlags);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_1000B1FC8(v7, v27, &qword_10083F538, &unk_1006DC7A0);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

double sub_1002B1100@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x656E697272756C62 && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = &enum case for IQCType.blurriness(_:);
  }

  else if (a1 == 0x426563616C70616CLL && a2 == 0xEB0000000072756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = &enum case for IQCType.laplaceBlur(_:);
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = &enum case for IQCType.exposure(_:);
  }

  else if (a1 == 0x7473694464726163 && a2 == 0xEE006E6F6974726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = &enum case for IQCType.cardDistortion(_:);
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDE70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = &enum case for IQCType.faceToImageRatio(_:);
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDE90 == a2 || (v22 = 0xD000000000000011, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v13 = &enum case for IQCType.faceCenteredRatio(_:);
  }

  else if (a1 == 0x6374695064616568 && a2 == 0xE900000000000068 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = &enum case for IQCType.headPitch(_:);
  }

  else if (a1 == 0x6C6C6F5264616568 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = &enum case for IQCType.headRoll(_:);
  }

  else if (a1 == 0x77615964616568 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = &enum case for IQCType.headYaw(_:);
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDEB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = &enum case for IQCType.blinkingConfidence(_:);
  }

  else if (a1 == v22 && 0x80000001006FDED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = &enum case for IQCType.glassesConfidence(_:);
  }

  else
  {
    v22 = 0xD000000000000014;
    if (a1 == 0xD000000000000014 && 0x80000001006FDEF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.sunglassesConfidence(_:);
    }

    else if (a1 == 0xD000000000000012 && 0x80000001006FDF10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.facemaskConfidence(_:);
    }

    else if (a1 == 0xD000000000000012 && 0x80000001006FDF30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.headgearConfidence(_:);
    }

    else if (a1 == v22 && 0x80000001006FDF50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.lensSmudgeConfidence(_:);
    }

    else if (a1 == 0xD000000000000012 && 0x80000001006FDF70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.faceCaptureQuality(_:);
    }

    else if (a1 == 0x746E656D75636F64 && a2 == 0xEC000000657A6953 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.documentSize(_:);
    }

    else if (a1 == 0xD000000000000010 && 0x80000001006FDF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.documentRotation(_:);
    }

    else if (a1 == 0x746E656D75636F64 && a2 == 0xEC00000077656B53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.documentSkew(_:);
    }

    else if (a1 == 0x666972447466656CLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.leftDrift(_:);
    }

    else if (a1 == 0x6972447468676972 && a2 == 0xEA00000000007466 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.rightDrift(_:);
    }

    else if (a1 == 0x74666972447075 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.upDrift(_:);
    }

    else if (a1 == 0x666972446E776F64 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.downDrift(_:);
    }

    else if (a1 == 0x73656361466D756ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.numFaces(_:);
    }

    else if (a1 == 0x6C6576654C78756CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.luxLevel(_:);
    }

    else if (a1 == 0x6544373134666470 && a2 == 0xEE00646574636574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.pdf417Detected(_:);
    }

    else if (a1 == 0xD000000000000010 && 0x80000001006FDFD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = &enum case for IQCType.isAAMVACompliant(_:);
    }

    else
    {
      if ((a1 != 0x754E726575737369 || a2 != 0xEC0000007265626DLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v24 = 0;
        v25 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);

        v24 = 0xD000000000000026;
        v25 = 0x800000010070A580;
        v18._countAndFlagsBits = a1;
        v18._object = a2;
        String.append(_:)(v18);
        v21[1] = v25;
        v22 = v24;
        (*(v10 + 104))(v12, enum case for DIPError.Code.invalidIQCType(_:), v9);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1002BC3E8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        defaultLogger()();
        DIPRecordError(_:message:log:)();
        (*(v23 + 8))(v8, v6);

        *a3 = a1;
        a3[1] = a2;
        v19 = enum case for IQCType.unknown(_:);
        v20 = type metadata accessor for IQCType();
        (*(*(v20 - 8) + 104))(a3, v19, v20);

        return result;
      }

      v13 = &enum case for IQCType.issuerNumber(_:);
    }
  }

  v14 = *v13;
  v15 = type metadata accessor for IQCType();
  v16 = *(*(v15 - 8) + 104);

  v16(a3, v14, v15);
  return result;
}

uint64_t sub_1002B1CF0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x6C61757165 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v14 = &enum case for IQComparator.equal(_:);
  }

  else if (a1 == 0x6C61757145746F6ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v14 = &enum case for IQComparator.notEqual(_:);
  }

  else if (a1 == 1936942444 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v14 = &enum case for IQComparator.less(_:);
  }

  else if (a1 == 0x72657461657267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v14 = &enum case for IQComparator.greater(_:);
  }

  else if (a1 == 0x617571457373656CLL && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v14 = &enum case for IQComparator.lessEqual(_:);
  }

  else
  {
    if ((a1 != 0x4572657461657267 || a2 != 0xEC0000006C617571) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v23[0] = 0;
      v23[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v19._object = 0x800000010070A540;
      v19._countAndFlagsBits = 0xD000000000000031;
      String.append(_:)(v19);
      v20._countAndFlagsBits = a1;
      v20._object = a2;
      String.append(_:)(v20);
      (*(v11 + 104))(v13, enum case for DIPError.Code.invalidIQComparatorType(_:), v10);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1002BC3E8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v7 + 8))(v9, v6);

      v21 = enum case for IQComparator.unknown(_:);
      v22 = type metadata accessor for IQComparator();
      return (*(*(v22 - 8) + 104))(a3, v21, v22);
    }

    v14 = &enum case for IQComparator.greaterEqual(_:);
  }

  v15 = *v14;
  v16 = type metadata accessor for IQComparator();
  v17 = *(*(v16 - 8) + 104);

  return v17(a3, v15, v16);
}

void sub_1002B2220(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v44 = v1;
  v39[32] = v3;
  v39[30] = v4;
  v6 = v5;
  v7 = v2;
  v39[38] = v2 + 4096;
  v43 = type metadata accessor for ImageQualitySettings();
  v47 = *(v43 - 8);
  __chkstk_darwin(v43);
  v39[42] = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for MetricsFlags();
  v45 = *(v40 - 8);
  v9 = __chkstk_darwin(v40);
  v39[37] = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v39[34] = v39 - v12;
  v13 = __chkstk_darwin(v11);
  v39[28] = v39 - v14;
  v15 = __chkstk_darwin(v13);
  v39[26] = v39 - v16;
  v17 = __chkstk_darwin(v15);
  v39[23] = v39 - v18;
  v19 = __chkstk_darwin(v17);
  v39[20] = v39 - v20;
  v21 = __chkstk_darwin(v19);
  v42 = v39 - v22;
  __chkstk_darwin(v21);
  v23 = type metadata accessor for ImageQualityCriteria();
  v46 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v39[35] = v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v39[29] = v39 - v27;
  v28 = __chkstk_darwin(v26);
  v39[27] = v39 - v29;
  v30 = __chkstk_darwin(v28);
  v39[24] = v39 - v31;
  v32 = __chkstk_darwin(v30);
  v39[22] = v39 - v33;
  v34 = __chkstk_darwin(v32);
  v39[19] = v39 - v35;
  v36 = __chkstk_darwin(v34);
  __chkstk_darwin(v36);
  v38 = v39 - v37;
  v39[36] = sub_1002BA54C(v6, 0xD00000000000001ALL, 0x80000001006FAE90);
  v39[33] = sub_1002BA54C(v6, 0xD000000000000019, 0x80000001006FAE70);
  v39[31] = sub_1002BA54C(v6, 0x6569666C6573, 0xE600000000000000);
  memcpy(v48, (v7 + 4240), sizeof(v48));
  v41 = v7;
  v39[21] = v38;
  sub_1002B476C(v7 + 4240, v38);
}

void sub_1002B34A4(uint64_t a1)
{
  v29 = v1;
  v2 = __chkstk_darwin(a1);
  v26[29] = v2 + 7420;
  v30 = type metadata accessor for ImageQualitySettings();
  v34 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MetricsFlags();
  v33 = *(v27 - 8);
  v4 = __chkstk_darwin(v27);
  v26[28] = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v26[25] = v26 - v7;
  v8 = __chkstk_darwin(v6);
  v26[23] = v26 - v9;
  v10 = __chkstk_darwin(v8);
  v26[21] = v26 - v11;
  v12 = __chkstk_darwin(v10);
  __chkstk_darwin(v12);
  v13 = type metadata accessor for ImageQualityCriteria();
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  v15 = __chkstk_darwin(v13);
  v26[26] = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v26[24] = v26 - v18;
  v19 = __chkstk_darwin(v17);
  v26[22] = v26 - v20;
  v21 = __chkstk_darwin(v19);
  v26[20] = v26 - v22;
  v23 = __chkstk_darwin(v21);
  __chkstk_darwin(v23);
  v25 = v26 - v24;
  memcpy(v35, (v2 + 4240), sizeof(v35));
  v26[27] = v2;
  sub_1002B476C(v2 + 4240, v25);
}

void sub_1002B42E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a4;
  v19 = a2;
  v6 = type metadata accessor for ImageQualitySettings();
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6);
  v18 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IQCType();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for MetricsFlags();
  v16 = *(v9 - 8);
  v17 = v9;
  v10 = __chkstk_darwin(v9);
  v14[4] = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v15 = type metadata accessor for ImageQualityCriteria();
  v14[3] = *(v15 - 8);
  v12 = __chkstk_darwin(v15);
  __chkstk_darwin(v12);
  sub_1002B476C(a1, v14 - v13);
}

void sub_1002B476C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v27 = a2;
  v14 = type metadata accessor for Logger();
  v18 = *(v14 - 8);
  __chkstk_darwin(v14);
  v13 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError.Code();
  v17 = *(v12 - 8);
  __chkstk_darwin(v12);
  v11[97] = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for IQComparator();
  v16 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IQCType();
  __chkstk_darwin(v5 - 8);
  v53 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for IQSignal();
  v52 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for IQACode();
  v15 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for IQComplexSignal();
  v38 = *(v35 - 8);
  __chkstk_darwin(v35);
  v30 = v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IQOCRMatchSignal();
  v21 = *(v19 - 8);
  __chkstk_darwin(v19);
  v20 = v11 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ImageQualityCriteria();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v46 = 0x100000000;
  v45 = 0x100000000;
  v44 = 0x100000000;
  v43 = 0x100000000;
  v42 = 0x100000000;
  v41 = 0x100000000;
  v40 = 0x100000000;
  v39 = 0x100000000;
  v34 = 0x100000000;
  v33 = 0x100000000;
  v32 = 0x100000000;
  v31 = 0x100000000;
  v29 = 0x100000000;
  v28 = 0x100000000;
  v24 = 0x100000000;
  v23 = 0x100000000;
  v22 = 0x100000000;
  v54 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

uint64_t sub_1002B6378@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MetricsFlags();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v80 - v10;
  __chkstk_darwin(v9);
  v13 = &v80 - v12;
  v147[0] = _swiftEmptyArrayStorage;
  sub_1002BC3E8(&qword_10083F520, &type metadata accessor for MetricsFlags, &protocol conformance descriptor for MetricsFlags);
  sub_100007224(&qword_10083F528, &qword_1006DC798);
  sub_1002BA4C4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  memcpy(v147, a1, 0x41BuLL);
  result = sub_1002BA528(v147);
  if (result == 1)
  {
    return (*(v5 + 32))(a2, v13, v4);
  }

  v117 = a2;
  v15 = v147[4];
  v16 = v147[5];
  v17 = v147[8];
  v18 = v147[9];
  v19 = v147[12];
  v20 = LOBYTE(v147[13]);
  v21 = v147[16];
  v90 = LOBYTE(v147[17]);
  v118 = v147[20];
  v91 = LOBYTE(v147[21]);
  v119 = v147[24];
  v92 = LOBYTE(v147[25]);
  v120 = v147[28];
  v93 = LOBYTE(v147[29]);
  v121 = v147[32];
  v94 = LOBYTE(v147[33]);
  v134 = v147[36];
  v107 = LOBYTE(v147[37]);
  v135 = v147[40];
  v108 = LOBYTE(v147[41]);
  v122 = v147[44];
  v95 = LOBYTE(v147[45]);
  v123 = v147[48];
  v96 = LOBYTE(v147[49]);
  v124 = v147[52];
  v97 = LOBYTE(v147[53]);
  v125 = v147[56];
  v98 = LOBYTE(v147[57]);
  v126 = v147[60];
  v99 = LOBYTE(v147[61]);
  v127 = v147[64];
  v100 = LOBYTE(v147[65]);
  v128 = v147[68];
  v101 = LOBYTE(v147[69]);
  v129 = v147[72];
  v102 = LOBYTE(v147[73]);
  v130 = v147[76];
  v103 = LOBYTE(v147[77]);
  v131 = v147[80];
  v104 = LOBYTE(v147[81]);
  v132 = v147[84];
  v105 = LOBYTE(v147[85]);
  v133 = v147[88];
  v106 = LOBYTE(v147[89]);
  v110 = v147[92];
  v87 = LOBYTE(v147[93]);
  v109 = v147[96];
  v86 = LOBYTE(v147[97]);
  v88 = v147[100];
  v85 = LOBYTE(v147[101]);
  v136 = v147[104];
  v137 = v147[107];
  v145 = v147[118];
  v138 = BYTE1(v147[120]);
  v139 = BYTE2(v147[120]);
  v140 = BYTE3(v147[120]);
  v141 = BYTE4(v147[120]);
  v142 = BYTE5(v147[120]);
  v143 = BYTE6(v147[120]);
  LODWORD(v144) = HIBYTE(v147[120]);
  v146 = v147[122];
  v111 = LOBYTE(v147[125]);
  v112 = LOBYTE(v147[127]);
  v113 = LOBYTE(v147[129]);
  v114 = LOBYTE(v147[131]);
  v115 = BYTE1(v147[131]);
  v116 = BYTE2(v147[131]);
  if (v147[0] != 1 && (v147[1] & 1) != 0)
  {
    v89 = v147[16];
    v84 = LOBYTE(v147[13]);
    v81 = LOBYTE(v147[5]);
    v82 = LOBYTE(v147[9]);
    v83 = v147[8];
    static MetricsFlags.blurriness.getter();
    sub_1002B0DFC(v11, v8);
    v22 = v13;
    v23 = v5;
    v24 = *(v5 + 8);
    v24(v8, v4);
    result = (v24)(v11, v4);
    v16 = v81;
    v18 = v82;
    v17 = v83;
    v20 = v84;
    v21 = v89;
    v5 = v23;
    v13 = v22;
  }

  if (v15 != 1 && (v16 & 1) != 0)
  {
    v89 = v21;
    v84 = v20;
    v25 = v18;
    v83 = v17;
    static MetricsFlags.laplaceBlur.getter();
    sub_1002B0DFC(v11, v8);
    v26 = v5;
    v27 = *(v5 + 8);
    v27(v8, v4);
    result = (v27)(v11, v4);
    v17 = v83;
    v18 = v25;
    LOBYTE(v20) = v84;
    v21 = v89;
    v5 = v26;
  }

  if (v17 != 1 && (v18 & 1) != 0)
  {
    v89 = v21;
    v28 = v20;
    static MetricsFlags.exposure.getter();
    sub_1002B0DFC(v11, v8);
    v29 = v19;
    v30 = *(v5 + 8);
    v30(v8, v4);
    result = (v30)(v11, v4);
    v19 = v29;
    LOBYTE(v20) = v28;
    v21 = v89;
  }

  if (v19 != 1 && (v20 & 1) != 0)
  {
    v31 = v21;
    static MetricsFlags.cardDistortion.getter();
    sub_1002B0DFC(v11, v8);
    v32 = *(v5 + 8);
    v32(v8, v4);
    result = (v32)(v11, v4);
    v21 = v31;
  }

  if (v21 != 1 && (v90 & 1) != 0)
  {
    static MetricsFlags.faceToImageRatio.getter();
    sub_1002B0DFC(v11, v8);
    v33 = *(v5 + 8);
    v33(v8, v4);
    result = (v33)(v11, v4);
  }

  if (v118 != 1 && (v91 & 1) != 0)
  {
    static MetricsFlags.faceCenteredRatio.getter();
    sub_1002B0DFC(v11, v8);
    v34 = *(v5 + 8);
    v34(v8, v4);
    result = (v34)(v11, v4);
  }

  if (v119 != 1 && (v92 & 1) != 0)
  {
    static MetricsFlags.headPitch.getter();
    sub_1002B0DFC(v11, v8);
    v35 = *(v5 + 8);
    v35(v8, v4);
    result = (v35)(v11, v4);
  }

  if (v120 != 1 && (v93 & 1) != 0)
  {
    static MetricsFlags.headRoll.getter();
    sub_1002B0DFC(v11, v8);
    v36 = *(v5 + 8);
    v36(v8, v4);
    result = (v36)(v11, v4);
  }

  if (v121 != 1 && (v94 & 1) != 0)
  {
    static MetricsFlags.headYaw.getter();
    sub_1002B0DFC(v11, v8);
    v37 = *(v5 + 8);
    v37(v8, v4);
    result = (v37)(v11, v4);
  }

  if (v122 != 1 && (v95 & 1) != 0)
  {
    static MetricsFlags.blinkingConfidence.getter();
    sub_1002B0DFC(v11, v8);
    v38 = *(v5 + 8);
    v38(v8, v4);
    result = (v38)(v11, v4);
  }

  if (v123 != 1 && (v96 & 1) != 0)
  {
    static MetricsFlags.glassesConfidence.getter();
    sub_1002B0DFC(v11, v8);
    v39 = *(v5 + 8);
    v39(v8, v4);
    result = (v39)(v11, v4);
  }

  if (v124 != 1 && (v97 & 1) != 0)
  {
    static MetricsFlags.sunglassesConfidence.getter();
    sub_1002B0DFC(v11, v8);
    v40 = *(v5 + 8);
    v40(v8, v4);
    result = (v40)(v11, v4);
  }

  if (v125 != 1 && (v98 & 1) != 0)
  {
    static MetricsFlags.facemaskConfidence.getter();
    sub_1002B0DFC(v11, v8);
    v41 = *(v5 + 8);
    v41(v8, v4);
    result = (v41)(v11, v4);
  }

  if (v126 != 1 && (v99 & 1) != 0)
  {
    static MetricsFlags.headgearConfidence.getter();
    sub_1002B0DFC(v11, v8);
    v42 = *(v5 + 8);
    v42(v8, v4);
    result = (v42)(v11, v4);
  }

  if (v127 != 1 && (v100 & 1) != 0)
  {
    static MetricsFlags.lensSmudgeConfidence.getter();
    sub_1002B0DFC(v11, v8);
    v43 = *(v5 + 8);
    v43(v8, v4);
    result = (v43)(v11, v4);
  }

  if (v128 != 1 && (v101 & 1) != 0)
  {
    static MetricsFlags.faceConfidence.getter();
    sub_1002B0DFC(v11, v8);
    v44 = *(v5 + 8);
    v44(v8, v4);
    result = (v44)(v11, v4);
  }

  if (v129 != 1 && (v102 & 1) != 0)
  {
    static MetricsFlags.faceCaptureQuality.getter();
    sub_1002B0DFC(v11, v8);
    v45 = *(v5 + 8);
    v45(v8, v4);
    result = (v45)(v11, v4);
  }

  if (v130 != 1 && (v103 & 1) != 0)
  {
    static MetricsFlags.documentSize.getter();
    sub_1002B0DFC(v11, v8);
    v46 = *(v5 + 8);
    v46(v8, v4);
    result = (v46)(v11, v4);
  }

  if (v131 != 1 && (v104 & 1) != 0)
  {
    static MetricsFlags.documentRotation.getter();
    sub_1002B0DFC(v11, v8);
    v47 = *(v5 + 8);
    v47(v8, v4);
    result = (v47)(v11, v4);
  }

  if (v132 != 1 && (v105 & 1) != 0)
  {
    static MetricsFlags.documentSkew.getter();
    sub_1002B0DFC(v11, v8);
    v48 = *(v5 + 8);
    v48(v8, v4);
    result = (v48)(v11, v4);
  }

  if (v133 != 1 && (v106 & 1) != 0 || v110 != 1 && (v87 & 1) != 0 || v109 != 1 && (v86 & 1) != 0 || v88 != 1 && (v85 & 1) != 0)
  {
    static MetricsFlags.targetDrift.getter();
    sub_1002B0DFC(v11, v8);
    v49 = *(v5 + 8);
    v49(v8, v4);
    result = (v49)(v11, v4);
  }

  if (v134 != 1 && (v107 & 1) != 0)
  {
    static MetricsFlags.numFaces.getter();
    sub_1002B0DFC(v11, v8);
    v50 = *(v5 + 8);
    v50(v8, v4);
    result = (v50)(v11, v4);
  }

  if (v135 != 1 && (v108 & 1) != 0)
  {
    static MetricsFlags.luxLevel.getter();
    sub_1002B0DFC(v11, v8);
    v51 = *(v5 + 8);
    v51(v8, v4);
    result = (v51)(v11, v4);
  }

  if ((v136 & 0x100) != 0)
  {
    static MetricsFlags.pdf417Detected.getter();
    sub_1002B0DFC(v11, v8);
    v52 = *(v5 + 8);
    v52(v8, v4);
    result = (v52)(v11, v4);
  }

  if ((v137 & 0x100) != 0)
  {
    static MetricsFlags.isAAMVACompliant.getter();
    sub_1002B0DFC(v11, v8);
    v53 = *(v5 + 8);
    v53(v8, v4);
    result = (v53)(v11, v4);
  }

  if (v138 != 2 && (v138 & 1) != 0)
  {
    static MetricsFlags.isAutoCaptured.getter();
    sub_1002B0DFC(v11, v8);
    v54 = *(v5 + 8);
    v54(v8, v4);
    result = (v54)(v11, v4);
  }

  if (v139 != 2 && (v139 & 1) != 0)
  {
    static MetricsFlags.captureTime.getter();
    sub_1002B0DFC(v11, v8);
    v55 = *(v5 + 8);
    v55(v8, v4);
    result = (v55)(v11, v4);
  }

  if (v140 != 2 && (v140 & 1) != 0)
  {
    static MetricsFlags.originalVertices.getter();
    sub_1002B0DFC(v11, v8);
    v56 = *(v5 + 8);
    v56(v8, v4);
    result = (v56)(v11, v4);
  }

  if (v141 != 2 && (v141 & 1) != 0)
  {
    static MetricsFlags.targetVertices.getter();
    sub_1002B0DFC(v11, v8);
    v57 = *(v5 + 8);
    v57(v8, v4);
    result = (v57)(v11, v4);
  }

  if (v142 != 2 && (v142 & 1) != 0)
  {
    static MetricsFlags.fuzzyMatch.getter();
    sub_1002B0DFC(v11, v8);
    v58 = *(v5 + 8);
    v58(v8, v4);
    result = (v58)(v11, v4);
  }

  if (v143 != 2 && (v143 & 1) != 0)
  {
    static MetricsFlags.livenessChute.getter();
    sub_1002B0DFC(v11, v8);
    v59 = *(v5 + 8);
    v59(v8, v4);
    result = (v59)(v11, v4);
  }

  if (v144 != 2 && (v144 & 1) != 0)
  {
    static MetricsFlags.isFlashEnabled.getter();
    sub_1002B0DFC(v11, v8);
    v60 = *(v5 + 8);
    v60(v8, v4);
    result = (v60)(v11, v4);
  }

  if ((v145 & 0x100) != 0)
  {
    static MetricsFlags.glare.getter();
    sub_1002B0DFC(v11, v8);
    v61 = *(v5 + 8);
    v61(v8, v4);
    result = (v61)(v11, v4);
  }

  if (v146)
  {
    v144 = v13;
    v145 = v5;
    v62 = 0;
    v63 = *(v146 + 16);
    v64 = v146 + 96;
    v65 = _swiftEmptyArrayStorage;
LABEL_107:
    v66 = (v64 + 72 * v62);
    while (v63 != v62)
    {
      if (v62 >= v63)
      {
        __break(1u);
LABEL_139:
        __break(1u);
        return result;
      }

      v67 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_139;
      }

      v69 = *v66;
      v66 += 72;
      v68 = v69;
      ++v62;
      if (v69 != 2)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v146 = v64;
        if ((result & 1) == 0)
        {
          result = sub_1003C5294(0, *(v65 + 2) + 1, 1, v65);
          v65 = result;
        }

        v71 = *(v65 + 2);
        v70 = *(v65 + 3);
        if (v71 >= v70 >> 1)
        {
          result = sub_1003C5294((v70 > 1), v71 + 1, 1, v65);
          v65 = result;
        }

        *(v65 + 2) = v71 + 1;
        v65[v71 + 32] = v68 & 1;
        v62 = v67;
        v64 = v146;
        goto LABEL_107;
      }
    }

    v72 = *(v65 + 2);

    v13 = v144;
    v5 = v145;
    if (v72)
    {
      static MetricsFlags.ocrMatchData.getter();
      sub_1002B0DFC(v11, v8);
      v73 = *(v5 + 8);
      v73(v8, v4);
      v73(v11, v4);
    }
  }

  if (v111 != 2 && (v111 & 1) != 0)
  {
    static MetricsFlags.dobRepeatCount.getter();
    sub_1002B0DFC(v11, v8);
    v74 = *(v5 + 8);
    v74(v8, v4);
    v74(v11, v4);
  }

  if (v112 != 2 && (v112 & 1) != 0)
  {
    static MetricsFlags.doeRepeatCount.getter();
    sub_1002B0DFC(v11, v8);
    v75 = *(v5 + 8);
    v75(v8, v4);
    v75(v11, v4);
  }

  if (v113 != 2 && (v113 & 1) != 0)
  {
    static MetricsFlags.docNumberRepeatCount.getter();
    sub_1002B0DFC(v11, v8);
    v76 = *(v5 + 8);
    v76(v8, v4);
    v76(v11, v4);
  }

  if (v114 != 2 && (v114 & 1) != 0)
  {
    static MetricsFlags.issuerNumberRepeatCount.getter();
    sub_1002B0DFC(v11, v8);
    v77 = *(v5 + 8);
    v77(v8, v4);
    v77(v11, v4);
  }

  if (v115 != 2 && (v115 & 1) != 0)
  {
    static MetricsFlags.mrzScanResult.getter();
    sub_1002B0DFC(v11, v8);
    v78 = *(v5 + 8);
    v78(v8, v4);
    v78(v11, v4);
  }

  if (v116 != 2 && (v116 & 1) != 0)
  {
    static MetricsFlags.ageOfDocument.getter();
    sub_1002B0DFC(v11, v8);
    v79 = *(v5 + 8);
    v79(v8, v4);
    v79(v11, v4);
  }

  return (*(v5 + 32))(v117, v13, v4);
}

uint64_t sub_1002B76C0(uint64_t a1)
{
  v3 = type metadata accessor for IQACode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v7 = *(a1 + 16);
    v8 = _swiftEmptyArrayStorage;
    if (v7)
    {
      v14 = v1;
      v15 = _swiftEmptyArrayStorage;
      sub_100172D08(0, v7, 0);
      v8 = v15;
      v9 = (a1 + 40);
      do
      {
        sub_1002B7864(*(v9 - 1), *v9, v6);
        v15 = v8;
        v11 = v8[2];
        v10 = v8[3];
        if (v11 >= v10 >> 1)
        {
          sub_100172D08((v10 > 1), v11 + 1, 1);
          v8 = v15;
        }

        v8[2] = v11 + 1;
        (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v6, v3);
        v9 += 2;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v12 = sub_1002B8B4C(v8);

  return v12;
}

double sub_1002B7864@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1 == 1936941424 && a2 == 0xE400000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.pass(_:);
LABEL_7:
    v8 = *v7;
    v9 = type metadata accessor for IQACode();
    v10 = *(*(v9 - 8) + 104);

    v10(a3, v8, v9);
    return result;
  }

  if (a1 == 0x656E697272756C62 && a2 == 0xED0000776F4C7373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.blurrinessLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x656E697272756C62 && a2 == 0xEE00686769487373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.blurrinessHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x426563616C70616CLL && a2 == 0xEE00776F4C72756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.laplaceBlurLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x426563616C70616CLL && a2 == 0xEF6867694872756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.laplaceBlurHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x657275736F707865 && a2 == 0xEB00000000776F4CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.exposureLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x657275736F707865 && a2 == 0xEC00000068676948 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.exposureHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000011 && 0x800000010070A150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.cardDistortionLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000012 && 0x800000010070A170 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.cardDistortionHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000013 && 0x800000010070A190 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.faceToImageRatioLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000014 && 0x800000010070A1B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.faceToImageRatioHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000014 && 0x800000010070A1D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.faceCenteredRatioLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000015 && 0x800000010070A1F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.faceCenteredRatioHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6374695064616568 && a2 == 0xEC000000776F4C68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headPitchLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6374695064616568 && a2 == 0xED00006867694868 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headPitchHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6C6C6F5264616568 && a2 == 0xEB00000000776F4CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headRollLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6C6C6F5264616568 && a2 == 0xEC00000068676948 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headRollHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x4C77615964616568 && a2 == 0xEA0000000000776FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headYawLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x4877615964616568 && a2 == 0xEB00000000686769 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headYawHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000015 && 0x800000010070A210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.blinkingConfidenceLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000016 && 0x800000010070A230 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.blinkingConfidenceHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000014 && 0x800000010070A250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.glassesConfidenceLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000015 && 0x800000010070A270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.glassesConfidenceHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000017 && 0x800000010070A290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.sunglassesConfidenceLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000018 && 0x800000010070A2B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.sunglassesConfidenceHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000015 && 0x800000010070A2D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.facemaskConfidenceLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000016 && 0x800000010070A2F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.facemaskConfidenceHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000015 && 0x800000010070A310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headgearConfidenceLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000016 && 0x800000010070A330 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headgearConfidenceHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000018 && 0x800000010070A350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.lensSmudgeConfidenceHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000017 && 0x800000010070A370 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.lensSmudgeConfidenceLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000015 && 0x800000010070A390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.faceCaptureQualityLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000016 && 0x800000010070A3B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.faceCaptureQualityHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x746E656D75636F64 && a2 == 0xEF776F4C657A6953 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.documentSizeLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x800000010070A3D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.documentSizeHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000013 && 0x800000010070A3F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.documentRotatedLeft(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000014 && 0x800000010070A410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.documentRotatedRight(_:);
    goto LABEL_7;
  }

  if (a1 == 0x746E656D75636F64 && a2 == 0xEE00646577656B53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.documentSkewed(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x800000010070A430 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.targetTooFarLeft(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000011 && 0x800000010070A450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.targetTooFarRight(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6F54746567726174 && a2 == 0xEE0070557261466FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.targetTooFarUp(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x800000010070A470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.targetTooFarDown(_:);
    goto LABEL_7;
  }

  if (a1 == 0x73656361466D756ELL && a2 == 0xEB00000000776F4CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.numFacesLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x73656361466D756ELL && a2 == 0xEC00000068676948 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.numFacesHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6C6576654C78756CLL && a2 == 0xEB00000000776F4CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.luxLevelLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6C6576654C78756CLL && a2 == 0xEC00000068676948 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.luxLevelHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6F4E373134666470 && a2 == 0xEE00646E756F4674 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.pdf417NotFound(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6F46373134666470 && a2 == 0xEB00000000646E75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.pdf417Found(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000011 && 0x800000010070A490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.notAAMVACompliant(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x80000001006FDFD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.isAAMVACompliant(_:);
    goto LABEL_7;
  }

  if (a1 == 0x73694D6574617473 && a2 == 0xED0000686374616DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.stateMismatch(_:);
    goto LABEL_7;
  }

  if (a1 == 0x756C636E6F636E69 && a2 == 0xEC00000065766973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.inconclusive(_:);
    goto LABEL_7;
  }

  *a3 = a1;
  a3[1] = a2;
  v12 = enum case for IQACode.complex(_:);
  v13 = type metadata accessor for IQACode();
  (*(*(v13 - 8) + 104))(a3, v12, v13);

  return result;
}