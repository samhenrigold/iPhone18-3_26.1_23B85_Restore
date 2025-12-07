uint64_t sub_10008BDF0(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 597) = a1;

  return _swift_task_switch(sub_10008BF08, v2, 0);
}

uint64_t sub_10008BF08()
{
  if (*(v0 + 597))
  {
    v1 = *(v0 + 588);
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 96);
    *v2 = [*(v0 + 400) recordID];
    (*(v3 + 104))(v2, v1, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 392);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_100092358(0, v6[2] + 1, 1, *(v0 + 392), &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_100092358((v7 > 1), v8 + 1, 1, v6, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v9 = *(v0 + 400);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 96);

    v6[2] = v8 + 1;
    (*(v11 + 32))(v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v8, v10, v12);
  }

  else
  {
    v13 = *(v0 + 400);

    v6 = *(v0 + 392);
  }

  v14 = *(v0 + 384);
  v15 = *(v0 + 376) + 1;
  if (v15 != *(v0 + 352))
  {
    while (1)
    {
      *(v0 + 384) = v14;
      *(v0 + 392) = v6;
      *(v0 + 376) = v15;
      v23 = *(v0 + 160);
      v22 = *(v0 + 168);
      v24 = *(v0 + 152);
      (*(v0 + 368))(v22, *(v0 + 344) + ((*(v0 + 584) + 32) & ~*(v0 + 584)) + *(v0 + 360) * v15, v24);
      v25 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      *(v0 + 400) = v25;
      v26 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
      *(v0 + 408) = v26;
      (*(v23 + 8))(v22, v24);
      *(v0 + 32) = v26;
      type metadata accessor for CKError(0);
      sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);
      _BridgedStoredNSError.code.getter();
      v27 = *(v0 + 40);
      if (v27 <= 13)
      {
        break;
      }

      if (v27 <= 22)
      {
        if (v27 != 14)
        {
          if (v27 != 20)
          {
            goto LABEL_67;
          }

LABEL_29:
          if (qword_100129980 != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          sub_100066000(v28, qword_100129988);
          v29 = v26;
          v30 = v25;
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            *v33 = 138412546;
            v35 = [v30 recordID];
            *(v33 + 4) = v35;
            *v34 = v35;
            *(v33 + 12) = 2112;
            v36 = v29;
            v37 = _swift_stdlib_bridgeErrorToNSError();
            *(v33 + 14) = v37;
            v34[1] = v37;
            _os_log_impl(&_mh_execute_header, v31, v32, "Retryable error saving %@: %@", v33, 0x16u);
            sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
            swift_arrayDestroy();
          }

          else
          {
          }

          goto LABEL_15;
        }

        v38 = related decl 'e' for CKErrorCode.serverRecord.getter();
        *(v0 + 416) = v38;
        if (v38)
        {
          v97 = *(**(v0 + 64) + 336);
          v109 = (v97 + *v97);
          v98 = v38;
          v99 = swift_task_alloc();
          *(v0 + 424) = v99;
          *v99 = v0;
          v99[1] = sub_10008AD4C;
          v85 = v25;
          v86 = v98;
          v87 = v109;

          return v87(v85, v86);
        }

        if (qword_100129980 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_100066000(v39, qword_100129988);
        v40 = v26;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          v45 = v40;
          v46 = _swift_stdlib_bridgeErrorToNSError();
          *(v43 + 4) = v46;
          *v44 = v46;
          _os_log_impl(&_mh_execute_header, v41, v42, "No server record for conflict %@", v43, 0xCu);
          sub_100066C80(v44, &qword_1001287F0, &qword_1000E6C40);

          v47 = v25;
        }

        else
        {
          v47 = v41;
          v41 = v25;
        }
      }

      else
      {
        switch(v27)
        {
          case 23:
            goto LABEL_29;
          case 25:

            break;
          case 26:
            v103 = *(v0 + 592);
            v49 = *(v0 + 80);
            v48 = *(v0 + 88);
            v101 = *(v0 + 72);
            v50 = [v25 recordID];
            v51 = [v50 zoneID];

            v52 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v51];
            *v48 = v52;
            (*(v49 + 104))(v48, v103, v101);
            v104 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_100092358(0, v14[2] + 1, 1, v14, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
            }

            v54 = v14[2];
            v53 = v14[3];
            if (v54 >= v53 >> 1)
            {
              v14 = sub_100092358((v53 > 1), v54 + 1, 1, v14, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
            }

            v102 = *(v0 + 588);
            v55 = *(v0 + 120);
            v56 = *(v0 + 104);
            v100 = *(v0 + 96);
            v58 = *(v0 + 80);
            v57 = *(v0 + 88);
            v59 = *(v0 + 72);
            v14[2] = v54 + 1;
            (*(v58 + 32))(v14 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v54, v57, v59);
            *v55 = [v25 recordID];
            (*(v56 + 104))(v55, v102, v100);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_100092358(0, v6[2] + 1, 1, v6, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
            }

            v61 = v6[2];
            v60 = v6[3];
            if (v61 >= v60 >> 1)
            {
              v6 = sub_100092358((v60 > 1), v61 + 1, 1, v6, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
            }

            v62 = *(v0 + 120);
            v63 = *(v0 + 96);
            v64 = *(v0 + 104);

            v6[2] = v61 + 1;
            (*(v64 + 32))(v6 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v61, v62, v63);
            break;
          default:
            goto LABEL_67;
        }
      }

LABEL_15:
      v15 = *(v0 + 376) + 1;
      if (v15 == *(v0 + 352))
      {
        goto LABEL_9;
      }
    }

    if (v27 <= 5)
    {
      if ((v27 - 3) >= 2)
      {
        goto LABEL_67;
      }
    }

    else if (v27 != 6 && v27 != 9)
    {
      if (v27 == 11)
      {
        v92 = *(**(v0 + 64) + 344);
        v108 = (v92 + *v92);
        v93 = swift_task_alloc();
        *(v0 + 432) = v93;
        *v93 = v0;
        v93[1] = sub_10008BDF0;

        return v108(v25);
      }

LABEL_67:
      v94 = [v25 recordID];
      v95 = [v94 zoneID];
      *(v0 + 440) = v95;

      v96 = swift_task_alloc();
      *(v0 + 448) = v96;
      *v96 = v0;
      v96[1] = sub_10008CE84;

      return sub_10007EEB0(v26, v95);
    }

    goto LABEL_29;
  }

LABEL_9:

  *(v0 + 456) = v14;
  *(v0 + 464) = v6;
  v16 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  *(v0 + 472) = v16;
  v17 = *(v16 + 32);
  *(v0 + 599) = v17;
  v18 = -1;
  v19 = -1 << v17;
  if (-(-1 << v17) < 64)
  {
    v18 = ~(-1 << -(-1 << v17));
  }

  v20 = v18 & *(v16 + 64);
  if (v20)
  {
    v21 = 0;
LABEL_53:
    *(v0 + 520) = v21;
    *(v0 + 512) = v20;
    v67 = (v21 << 9) | (8 * __clz(__rbit64(v20)));
    v68 = *(*(v16 + 48) + v67);
    *(v0 + 528) = v68;
    v69 = *(*(v16 + 56) + v67);
    *(v0 + 536) = v69;
    v70 = qword_100129980;
    v71 = v68;
    v72 = v69;
    if (v70 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100066000(v73, qword_100129988);
    v74 = v71;
    v75 = v72;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412546;
      *(v78 + 4) = v74;
      *v79 = v74;
      *(v78 + 12) = 2112;
      v80 = v74;
      v81 = v75;
      v82 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 14) = v82;
      v79[1] = v82;
      _os_log_impl(&_mh_execute_header, v76, v77, "Error deleting recordID %@ error: %@", v78, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();
    }

    v83 = *(v0 + 64);

    v106 = (*(*v83 + 312) + **(*v83 + 312));
    v84 = swift_task_alloc();
    *(v0 + 544) = v84;
    *v84 = v0;
    v84[1] = sub_10008E0C4;
    v85 = v74;
    v86 = v75;
    v87 = v106;

    return v87(v85, v86);
  }

  else
  {
    v65 = 0;
    v66 = ((63 - v19) >> 6) - 1;
    while (v66 != v65)
    {
      v21 = v65 + 1;
      v20 = *(v16 + 8 * v65++ + 72);
      if (v20)
      {
        goto LABEL_53;
      }
    }

    v89 = *(v0 + 64);

    v90 = *(*v89 + 192);
    v105 = *v89 + 192;
    *(v0 + 480) = v90;
    *(v0 + 488) = v105 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
    v107 = (v90 + *v90);
    v91 = swift_task_alloc();
    *(v0 + 496) = v91;
    *v91 = v0;
    v91[1] = sub_10008DF7C;

    return v107();
  }
}

uint64_t sub_10008CE84(char a1)
{
  v2 = *(*v1 + 440);
  v3 = *(*v1 + 64);
  *(*v1 + 598) = a1;

  return _swift_task_switch(sub_10008CFB4, v3, 0);
}

uint64_t sub_10008CFB4()
{
  p_prots = &OBJC_PROTOCOL___CKRecordValue.prots;
  if (*(v0 + 598))
  {
    v2 = *(v0 + 400);
    v3 = *(v0 + 408);
  }

  else
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
    v6 = type metadata accessor for Logger();
    sub_100066000(v6, qword_100129988);
    v7 = v4;
    v8 = v5;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 400);
      v12 = *(v0 + 408);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      v15 = [v11 recordID];
      *(v13 + 4) = v15;
      *v14 = v15;
      *(v13 + 12) = 2112;
      v16 = v12;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      v14[1] = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unknown error saving record %@: %@", v13, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();

      v2 = *(v0 + 400);
    }

    else
    {
      v2 = v9;
      v9 = *(v0 + 400);
    }

    v3 = *(v0 + 408);
  }

  v19 = *(v0 + 384);
  v18 = *(v0 + 392);
  v20 = *(v0 + 376) + 1;
  while (v20 != *(v0 + 352))
  {
    while (1)
    {
      *(v0 + 384) = v19;
      *(v0 + 392) = v18;
      *(v0 + 376) = v20;
      v28 = *(v0 + 160);
      v27 = *(v0 + 168);
      v29 = *(v0 + 152);
      (*(v0 + 368))(v27, *(v0 + 344) + ((*(v0 + 584) + 32) & ~*(v0 + 584)) + *(v0 + 360) * v20, v29);
      v30 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      *(v0 + 400) = v30;
      v31 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
      *(v0 + 408) = v31;
      (*(v28 + 8))(v27, v29);
      *(v0 + 32) = v31;
      type metadata accessor for CKError(0);
      sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);
      _BridgedStoredNSError.code.getter();
      v32 = *(v0 + 40);
      if (v32 <= 13)
      {
        if (v32 <= 5)
        {
          if ((v32 - 3) >= 2)
          {
            goto LABEL_70;
          }
        }

        else if (v32 != 6 && v32 != 9)
        {
          if (v32 == 11)
          {
            v97 = *(**(v0 + 64) + 344);
            v113 = (v97 + *v97);
            v98 = swift_task_alloc();
            *(v0 + 432) = v98;
            *v98 = v0;
            v98[1] = sub_10008BDF0;

            return v113(v30);
          }

LABEL_70:
          v99 = [v30 recordID];
          v100 = [v99 zoneID];
          *(v0 + 440) = v100;

          v101 = swift_task_alloc();
          *(v0 + 448) = v101;
          *v101 = v0;
          v101[1] = sub_10008CE84;

          return sub_10007EEB0(v31, v100);
        }

        goto LABEL_31;
      }

      if (v32 > 22)
      {
        break;
      }

      if (v32 != 14)
      {
        if (v32 != 20)
        {
          goto LABEL_70;
        }

LABEL_31:
        if (p_prots[304] != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_100066000(v33, qword_100129988);
        v34 = v31;
        v35 = v30;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = 138412546;
          v40 = [v35 recordID];
          *(v38 + 4) = v40;
          *v39 = v40;
          *(v38 + 12) = 2112;
          v41 = v34;
          v42 = _swift_stdlib_bridgeErrorToNSError();
          *(v38 + 14) = v42;
          v39[1] = v42;
          _os_log_impl(&_mh_execute_header, v36, v37, "Retryable error saving %@: %@", v38, 0x16u);
          sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
          swift_arrayDestroy();
        }

        else
        {
        }

        p_prots = &OBJC_PROTOCOL___CKRecordValue.prots;
        goto LABEL_17;
      }

      v43 = related decl 'e' for CKErrorCode.serverRecord.getter();
      *(v0 + 416) = v43;
      if (v43)
      {
        v102 = *(**(v0 + 64) + 336);
        v114 = (v102 + *v102);
        v103 = v43;
        v104 = swift_task_alloc();
        *(v0 + 424) = v104;
        *v104 = v0;
        v104[1] = sub_10008AD4C;
        v90 = v30;
        v91 = v103;
        v92 = v114;

        return v92(v90, v91);
      }

      if (p_prots[304] != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100066000(v44, qword_100129988);
      v45 = v31;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        v50 = v45;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 4) = v51;
        *v49 = v51;
        _os_log_impl(&_mh_execute_header, v46, v47, "No server record for conflict %@", v48, 0xCu);
        sub_100066C80(v49, &qword_1001287F0, &qword_1000E6C40);

        p_prots = (&OBJC_PROTOCOL___CKRecordValue + 16);

        v52 = v30;
      }

      else
      {
        v52 = v46;
        v46 = v30;
      }

LABEL_17:
      v20 = *(v0 + 376) + 1;
      if (v20 == *(v0 + 352))
      {
        goto LABEL_10;
      }
    }

    if (v32 == 23)
    {
      goto LABEL_31;
    }

    if (v32 == 25)
    {

      goto LABEL_17;
    }

    if (v32 != 26)
    {
      goto LABEL_70;
    }

    v108 = *(v0 + 592);
    v54 = *(v0 + 80);
    v53 = *(v0 + 88);
    v106 = *(v0 + 72);
    v55 = [v30 recordID];
    v56 = [v55 zoneID];

    v57 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v56];
    *v53 = v57;
    (*(v54 + 104))(v53, v108, v106);
    v109 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100092358(0, v19[2] + 1, 1, v19, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
    }

    v59 = v19[2];
    v58 = v19[3];
    if (v59 >= v58 >> 1)
    {
      v19 = sub_100092358((v58 > 1), v59 + 1, 1, v19, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
    }

    v107 = *(v0 + 588);
    v60 = *(v0 + 120);
    v61 = *(v0 + 104);
    v105 = *(v0 + 96);
    v63 = *(v0 + 80);
    v62 = *(v0 + 88);
    v64 = *(v0 + 72);
    v19[2] = v59 + 1;
    (*(v63 + 32))(v19 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v59, v62, v64);
    *v60 = [v30 recordID];
    (*(v61 + 104))(v60, v107, v105);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_100092358(0, v18[2] + 1, 1, v18, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v66 = v18[2];
    v65 = v18[3];
    if (v66 >= v65 >> 1)
    {
      v18 = sub_100092358((v65 > 1), v66 + 1, 1, v18, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v67 = *(v0 + 120);
    v68 = *(v0 + 96);
    v69 = *(v0 + 104);

    v18[2] = v66 + 1;
    (*(v69 + 32))(v18 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v66, v67, v68);
    v20 = *(v0 + 376) + 1;
    p_prots = (&OBJC_PROTOCOL___CKRecordValue + 16);
  }

LABEL_10:

  *(v0 + 456) = v19;
  *(v0 + 464) = v18;
  v21 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  *(v0 + 472) = v21;
  v22 = *(v21 + 32);
  *(v0 + 599) = v22;
  v23 = -1;
  v24 = -1 << v22;
  if (-(-1 << v22) < 64)
  {
    v23 = ~(-1 << -(-1 << v22));
  }

  v25 = v23 & *(v21 + 64);
  if (v25)
  {
    v26 = 0;
LABEL_56:
    *(v0 + 520) = v26;
    *(v0 + 512) = v25;
    v72 = (v26 << 9) | (8 * __clz(__rbit64(v25)));
    v73 = *(*(v21 + 48) + v72);
    *(v0 + 528) = v73;
    v74 = *(*(v21 + 56) + v72);
    *(v0 + 536) = v74;
    v75 = p_prots[304];
    v76 = v73;
    v77 = v74;
    if (v75 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_100066000(v78, qword_100129988);
    v79 = v76;
    v80 = v77;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138412546;
      *(v83 + 4) = v79;
      *v84 = v79;
      *(v83 + 12) = 2112;
      v85 = v79;
      v86 = v80;
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 14) = v87;
      v84[1] = v87;
      _os_log_impl(&_mh_execute_header, v81, v82, "Error deleting recordID %@ error: %@", v83, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();
    }

    v88 = *(v0 + 64);

    v111 = (*(*v88 + 312) + **(*v88 + 312));
    v89 = swift_task_alloc();
    *(v0 + 544) = v89;
    *v89 = v0;
    v89[1] = sub_10008E0C4;
    v90 = v79;
    v91 = v80;
    v92 = v111;

    return v92(v90, v91);
  }

  else
  {
    v70 = 0;
    v71 = ((63 - v24) >> 6) - 1;
    while (v71 != v70)
    {
      v26 = v70 + 1;
      v25 = *(v21 + 8 * v70++ + 72);
      if (v25)
      {
        goto LABEL_56;
      }
    }

    v94 = *(v0 + 64);

    v95 = *(*v94 + 192);
    v110 = *v94 + 192;
    *(v0 + 480) = v95;
    *(v0 + 488) = v110 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
    v112 = (v95 + *v95);
    v96 = swift_task_alloc();
    *(v0 + 496) = v96;
    *v96 = v0;
    v96[1] = sub_10008DF7C;

    return v112();
  }
}

uint64_t sub_10008DF7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);

    v6 = sub_10008E974;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 64);
    *(v4 + 552) = a1;
    v6 = sub_10008E608;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10008E0C4()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_10008E1D4, v1, 0);
}

uint64_t sub_10008E1D4()
{
  v2 = *(v1 + 528);

  v3 = *(v1 + 520);
  v4 = (*(v1 + 512) - 1) & *(v1 + 512);
  if (v4)
  {
    v5 = *(v1 + 472);
LABEL_7:
    *(v1 + 520) = v3;
    *(v1 + 512) = v4;
    v7 = (v3 << 9) | (8 * __clz(__rbit64(v4)));
    v8 = *(*(v5 + 48) + v7);
    *(v1 + 528) = v8;
    v9 = *(*(v5 + 56) + v7);
    *(v1 + 536) = v9;
    v10 = qword_100129980;
    v2 = v8;
    v0 = v9;
    if (v10 != -1)
    {
LABEL_17:
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100066000(v11, qword_100129988);
    v12 = v2;
    v13 = v0;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v12;
      *v17 = v12;
      *(v16 + 12) = 2112;
      v18 = v12;
      v19 = v13;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      v17[1] = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error deleting recordID %@ error: %@", v16, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();
    }

    v21 = *(v1 + 64);

    v28 = (*(*v21 + 312) + **(*v21 + 312));
    v22 = swift_task_alloc();
    *(v1 + 544) = v22;
    *v22 = v1;
    v22[1] = sub_10008E0C4;

    return v28(v12, v13);
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(v1 + 472);
      if (v6 >= (((1 << *(v1 + 599)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v24 = *(v1 + 64);

    v25 = *(*v24 + 192);
    v27 = *v24 + 192;
    *(v1 + 480) = v25;
    *(v1 + 488) = v27 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
    v29 = (v25 + *v25);
    v26 = swift_task_alloc();
    *(v1 + 496) = v26;
    *v26 = v1;
    v26[1] = sub_10008DF7C;

    return v29();
  }
}

uint64_t sub_10008E608()
{
  v1 = v0[60];
  v2._rawValue = v0[57];
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingDatabaseChanges:)(v2);

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[70] = v3;
  *v3 = v0;
  v3[1] = sub_10008E734;

  return v5();
}

uint64_t sub_10008E734(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);

    v6 = sub_10008EB80;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 64);
    *(v4 + 576) = a1;
    v6 = sub_10008E874;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10008E874()
{
  v1._rawValue = v0[58];
  v3 = v0[41];
  v2 = v0[42];
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008E974()
{
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_100129988);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[41];
  v6 = v0[42];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error adding pending changes to SyncEngine, error: %@", v7, 0xCu);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10008EB80()
{
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_100129988);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[41];
  v6 = v0[42];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error adding pending changes to SyncEngine, error: %@", v7, 0xCu);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10008ED8C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10008EE64, v1, 0);
}

uint64_t sub_10008EE64()
{
  v79 = v0;
  v2 = v0[2];
  v3 = CKSyncEngine.Event.SentDatabaseChanges.savedZones.getter();
  v4 = v3;
  if (v3 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v6 = 0;
  v7 = v4 & 0xC000000000000001;
  p_prots = (&OBJC_PROTOCOL___CKRecordValue + 16);
  v74 = v4 & 0xC000000000000001;
  do
  {
    if (v7)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v4 + 8 * v6 + 32);
    }

    v19 = v18;
    if (p_prots[304] != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    v0 = sub_100066000(v20, qword_100129988);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v9 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v78 = v75;
      *v9 = 136315138;
      v10 = [v21 zoneID];
      v11 = [v10 zoneName];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v4;
      v14 = v5;
      v16 = v15;

      v17 = sub_100065658(v12, v16, &v78);
      v5 = v14;
      v4 = v13;

      *(v9 + 4) = v17;
      v7 = v74;
      _os_log_impl(&_mh_execute_header, v22, v23, "Zone %s saved", v9, 0xCu);
      v0 = v75;
      sub_10005D588(v75);

      p_prots = &OBJC_PROTOCOL___CKRecordValue.prots;
    }

    else
    {
    }

    ++v6;
  }

  while (v5 != v6);
LABEL_15:
  v1 = v73;

  v24 = CKSyncEngine.Event.SentDatabaseChanges.failedZoneSaves.getter();
  *(v73 + 72) = v24;
  v25 = *(v24 + 16);
  *(v73 + 80) = v25;
  if (v25)
  {
    v26 = *(v73 + 32);
    v27 = *(v73 + 40);
    v28 = *(v27 + 16);
    v27 += 16;
    v29 = *(v27 + 64);
    *(v73 + 248) = v29;
    *(v73 + 88) = *(v27 + 56);
    *(v73 + 96) = v28;
    v30 = *(v73 + 64);
    *(v73 + 104) = 0;
    *(v73 + 112) = v27 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v28(v30, v24 + ((v29 + 32) & ~v29), v26);
    v31 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.error.getter();
    *(v73 + 120) = v31;
    v32 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.zone.getter();
    v33 = [v32 zoneID];
    *(v73 + 128) = v33;

    v34 = swift_task_alloc();
    *(v73 + 136) = v34;
    *v34 = v73;
    v34[1] = sub_10008F734;

    return sub_10007EEB0(v31, v33);
  }

  v2 = *(v73 + 16);
  v36 = CKSyncEngine.Event.SentDatabaseChanges.deletedZoneIDs.getter();
  *(v73 + 144) = v36;
  if (v36 >> 62)
  {
LABEL_29:
    v37 = _CocoaArrayWrapper.endIndex.getter();
    *(v1 + 152) = v37;
    if (v37)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v73 + 152) = v37;
  if (v37)
  {
LABEL_21:
    if (v37 >= 1)
    {
      v38 = **(v1 + 24) + 320;
      v39 = *v38;
      *(v1 + 160) = *v38;
      *(v1 + 168) = v38 & 0xFFFFFFFFFFFFLL | 0xD83C000000000000;
      *(v1 + 176) = 0;
      v40 = *(v1 + 144);
      if ((v40 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v39 = *(v1 + 160);
      }

      else
      {
        v41 = *(v40 + 32);
      }

      *(v1 + 184) = v41;
      v76 = (v39 + *v39);
      v42 = swift_task_alloc();
      *(v1 + 192) = v42;
      *v42 = v1;
      v42[1] = sub_1000901C0;

      return v76(v41);
    }

    __break(1u);
LABEL_47:
    swift_once();
LABEL_38:
    v55 = type metadata accessor for Logger();
    sub_100066000(v55, qword_100129988);
    v56 = v2;
    v57 = v0;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v78 = v62;
      *v60 = 136315394;
      v63 = [v56 zoneName];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67 = sub_100065658(v64, v66, &v78);

      *(v60 + 4) = v67;
      *(v60 + 12) = 2112;
      v68 = v57;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 14) = v69;
      *v61 = v69;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to delete zone %s: error: %@", v60, 0x16u);
      sub_100066C80(v61, &qword_1001287F0, &qword_1000E6C40);

      sub_10005D588(v62);
    }

    v70 = *(**(v73 + 24) + 328);
    v77 = (v70 + *v70);
    v71 = swift_task_alloc();
    *(v73 + 240) = v71;
    *v71 = v73;
    v71[1] = sub_1000907FC;

    return (v77)(v56, v57);
  }

LABEL_30:

  v43 = CKSyncEngine.Event.SentDatabaseChanges.failedZoneDeletes.getter();
  *(v1 + 200) = v43;
  v44 = *(v43 + 32);
  *(v1 + 253) = v44;
  v45 = -1;
  v46 = -1 << v44;
  if (-(-1 << v44) < 64)
  {
    v45 = ~(-1 << -(-1 << v44));
  }

  v47 = v45 & *(v43 + 64);
  if (v47)
  {
    v48 = 0;
LABEL_37:
    *(v1 + 208) = v47;
    *(v1 + 216) = v48;
    v51 = (v48 << 9) | (8 * __clz(__rbit64(v47)));
    v52 = *(*(v43 + 48) + v51);
    *(v1 + 224) = v52;
    v53 = *(*(v43 + 56) + v51);
    *(v1 + 232) = v53;
    v54 = qword_100129980;
    v2 = v52;
    v0 = v53;
    if (v54 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

  v49 = 0;
  v50 = ((63 - v46) >> 6) - 1;
  while (v50 != v49)
  {
    v48 = v49 + 1;
    v47 = *(v43 + 8 * v49++ + 72);
    if (v47)
    {
      goto LABEL_37;
    }
  }

  v72 = *(v1 + 8);

  return v72();
}

uint64_t sub_10008F734(char a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 24);
  *(*v1 + 252) = a1;

  return _swift_task_switch(sub_10008F884, v4, 0);
}

uint64_t sub_10008F884()
{
  v84 = v1;
  if (*(v1 + 252))
  {
    (*(*(v1 + 40) + 8))(*(v1 + 64), *(v1 + 32));
  }

  else
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v2 = *(v1 + 96);
    v3 = *(v1 + 56);
    v4 = *(v1 + 64);
    v5 = *(v1 + 48);
    v6 = *(v1 + 32);
    v7 = type metadata accessor for Logger();
    sub_100066000(v7, qword_100129988);
    v2(v3, v4, v6);
    v2(v5, v4, v6);
    v0 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v0, v8);
    v10 = *(v1 + 56);
    v11 = *(v1 + 64);
    v12 = *(v1 + 40);
    v13 = *(v1 + 48);
    v14 = *(v1 + 32);
    if (v9)
    {
      v79 = *(v1 + 64);
      v15 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v83 = v78;
      *v15 = 136315394;
      v76 = v8;
      v16 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.zone.getter();
      v17 = [v16 zoneID];

      v18 = [v17 zoneName];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = *(v12 + 8);
      v22(v10, v14);
      v23 = sub_100065658(v19, v21, &v83);

      *(v15 + 4) = v23;
      *(v15 + 12) = 2112;
      CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.error.getter();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v22(v13, v14);
      *(v15 + 14) = v24;
      *v77 = v24;
      _os_log_impl(&_mh_execute_header, v0, v76, "Zone %s failed to save, error: %@", v15, 0x16u);
      sub_100066C80(v77, &qword_1001287F0, &qword_1000E6C40);

      sub_10005D588(v78);

      v22(v79, v14);
    }

    else
    {

      v25 = *(v12 + 8);
      v25(v13, v14);
      v25(v10, v14);
      v25(v11, v14);
    }
  }

  v26 = *(v1 + 104) + 1;
  if (v26 == *(v1 + 80))
  {

    v27 = *(v1 + 16);
    v28 = CKSyncEngine.Event.SentDatabaseChanges.deletedZoneIDs.getter();
    *(v1 + 144) = v28;
    if (v28 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
      *(v1 + 152) = v29;
      if (v29)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v1 + 152) = v29;
      if (v29)
      {
LABEL_11:
        if (v29 >= 1)
        {
          v30 = **(v1 + 24) + 320;
          v31 = *v30;
          *(v1 + 160) = *v30;
          *(v1 + 168) = v30 & 0xFFFFFFFFFFFFLL | 0xD83C000000000000;
          *(v1 + 176) = 0;
          v32 = *(v1 + 144);
          if ((v32 & 0xC000000000000001) != 0)
          {
            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v31 = *(v1 + 160);
          }

          else
          {
            v33 = *(v32 + 32);
          }

          *(v1 + 184) = v33;
          v80 = (v31 + *v31);
          v44 = v33;
          v45 = swift_task_alloc();
          *(v1 + 192) = v45;
          *v45 = v1;
          v45[1] = sub_1000901C0;

          return v80(v44);
        }

        __break(1u);
LABEL_39:
        swift_once();
LABEL_30:
        v58 = type metadata accessor for Logger();
        sub_100066000(v58, qword_100129988);
        v59 = v27;
        v60 = v0;
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v83 = v81;
          *v63 = 136315394;
          v65 = [v59 zoneName];
          v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v67 = v59;
          v69 = v68;

          v70 = sub_100065658(v66, v69, &v83);
          v59 = v67;

          *(v63 + 4) = v70;
          *(v63 + 12) = 2112;
          v71 = v60;
          v72 = _swift_stdlib_bridgeErrorToNSError();
          *(v63 + 14) = v72;
          *v64 = v72;
          _os_log_impl(&_mh_execute_header, v61, v62, "Failed to delete zone %s: error: %@", v63, 0x16u);
          sub_100066C80(v64, &qword_1001287F0, &qword_1000E6C40);

          sub_10005D588(v81);
        }

        v73 = *(**(v1 + 24) + 328);
        v82 = (v73 + *v73);
        v74 = swift_task_alloc();
        *(v1 + 240) = v74;
        *v74 = v1;
        v74[1] = sub_1000907FC;

        return v82(v59, v60);
      }
    }

    v46 = CKSyncEngine.Event.SentDatabaseChanges.failedZoneDeletes.getter();
    *(v1 + 200) = v46;
    v47 = *(v46 + 32);
    *(v1 + 253) = v47;
    v48 = -1;
    v49 = -1 << v47;
    if (-(-1 << v47) < 64)
    {
      v48 = ~(-1 << -(-1 << v47));
    }

    v50 = v48 & *(v46 + 64);
    if (v50)
    {
      v51 = 0;
LABEL_29:
      *(v1 + 208) = v50;
      *(v1 + 216) = v51;
      v54 = (v51 << 9) | (8 * __clz(__rbit64(v50)));
      v55 = *(*(v46 + 48) + v54);
      *(v1 + 224) = v55;
      v56 = *(*(v46 + 56) + v54);
      *(v1 + 232) = v56;
      v57 = qword_100129980;
      v27 = v55;
      v0 = v56;
      if (v57 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    }

    v52 = 0;
    v53 = ((63 - v49) >> 6) - 1;
    while (v53 != v52)
    {
      v51 = v52 + 1;
      v50 = *(v46 + 8 * v52++ + 72);
      if (v50)
      {
        goto LABEL_29;
      }
    }

    v75 = *(v1 + 8);

    return v75();
  }

  else
  {
    v34 = *(v1 + 96);
    v35 = *(v1 + 64);
    v36 = *(v1 + 32);
    v37 = *(v1 + 72) + ((*(v1 + 248) + 32) & ~*(v1 + 248)) + *(v1 + 88) * v26;
    v38 = (*(v1 + 40) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v1 + 104) = v26;
    *(v1 + 112) = v38;
    v34(v35, v37, v36);
    v39 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.error.getter();
    *(v1 + 120) = v39;
    v40 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.zone.getter();
    v41 = [v40 zoneID];
    *(v1 + 128) = v41;

    v42 = swift_task_alloc();
    *(v1 + 136) = v42;
    *v42 = v1;
    v42[1] = sub_10008F734;

    return sub_10007EEB0(v39, v41);
  }
}

uint64_t sub_1000901C0()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1000902D0, v1, 0);
}

uint64_t sub_1000902D0()
{
  v45 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);

  if (v1 + 1 == v2)
  {

    v3 = CKSyncEngine.Event.SentDatabaseChanges.failedZoneDeletes.getter();
    *(v0 + 200) = v3;
    v4 = *(v3 + 32);
    *(v0 + 253) = v4;
    v5 = -1;
    v6 = -1 << v4;
    if (-(-1 << v4) < 64)
    {
      v5 = ~(-1 << -(-1 << v4));
    }

    v7 = v5 & *(v3 + 64);
    if (v7)
    {
      v8 = 0;
LABEL_11:
      *(v0 + 208) = v7;
      *(v0 + 216) = v8;
      v14 = (v8 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(v3 + 48) + v14);
      *(v0 + 224) = v15;
      v16 = *(*(v3 + 56) + v14);
      *(v0 + 232) = v16;
      v17 = qword_100129980;
      v18 = v15;
      v19 = v16;
      if (v17 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100066000(v20, qword_100129988);
      v21 = v18;
      v22 = v19;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v44 = v41;
        *v25 = 136315394;
        v27 = [v21 zoneName];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v21;
        v31 = v30;

        v32 = sub_100065658(v28, v31, &v44);
        v21 = v29;

        *(v25 + 4) = v32;
        *(v25 + 12) = 2112;
        v33 = v22;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 14) = v34;
        *v26 = v34;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to delete zone %s: error: %@", v25, 0x16u);
        sub_100066C80(v26, &qword_1001287F0, &qword_1000E6C40);

        sub_10005D588(v41);
      }

      v35 = *(**(v0 + 24) + 328);
      v42 = (v35 + *v35);
      v36 = swift_task_alloc();
      *(v0 + 240) = v36;
      *v36 = v0;
      v36[1] = sub_1000907FC;

      return v42(v21, v22);
    }

    else
    {
      v12 = 0;
      v13 = ((63 - v6) >> 6) - 1;
      while (v13 != v12)
      {
        v8 = v12 + 1;
        v7 = *(v3 + 8 * v12++ + 72);
        if (v7)
        {
          goto LABEL_11;
        }
      }

      v40 = *(v0 + 8);

      return v40();
    }
  }

  else
  {
    v9 = *(v0 + 176) + 1;
    *(v0 + 176) = v9;
    v10 = *(v0 + 144);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v10 + 8 * v9 + 32);
    }

    v38 = v11;
    *(v0 + 184) = v11;
    v43 = (*(v0 + 160) + **(v0 + 160));
    v39 = swift_task_alloc();
    *(v0 + 192) = v39;
    *v39 = v0;
    v39[1] = sub_1000901C0;

    return v43(v38);
  }
}

uint64_t sub_1000907FC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10009090C, v1, 0);
}

uint64_t sub_10009090C()
{
  v33 = v1;
  v2 = *(v1 + 224);

  v3 = *(v1 + 216);
  v4 = (*(v1 + 208) - 1) & *(v1 + 208);
  if (v4)
  {
    v5 = *(v1 + 200);
LABEL_7:
    *(v1 + 208) = v4;
    *(v1 + 216) = v3;
    v7 = (v3 << 9) | (8 * __clz(__rbit64(v4)));
    v8 = *(*(v5 + 48) + v7);
    *(v1 + 224) = v8;
    v9 = *(*(v5 + 56) + v7);
    *(v1 + 232) = v9;
    v10 = qword_100129980;
    v2 = v8;
    v0 = v9;
    if (v10 != -1)
    {
LABEL_17:
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100066000(v11, qword_100129988);
    v12 = v2;
    v13 = v0;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v16 = 136315394;
      v18 = [v12 zoneName];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v12;
      v22 = v21;

      v23 = sub_100065658(v19, v22, &v32);
      v12 = v20;

      *(v16 + 4) = v23;
      *(v16 + 12) = 2112;
      v24 = v13;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v25;
      *v17 = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to delete zone %s: error: %@", v16, 0x16u);
      sub_100066C80(v17, &qword_1001287F0, &qword_1000E6C40);

      sub_10005D588(v30);
    }

    v26 = *(**(v1 + 24) + 328);
    v31 = (v26 + *v26);
    v27 = swift_task_alloc();
    *(v1 + 240) = v27;
    *v27 = v1;
    v27[1] = sub_1000907FC;

    return v31(v12, v13);
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(v1 + 200);
      if (v6 >= (((1 << *(v1 + 253)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v29 = *(v1 + 8);

    return v29();
  }
}

uint64_t sub_100090CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for CKSyncEngine.SendChangesContext();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100090E78, v3, 0);
}

uint64_t sub_100090E78()
{
  v30 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_100066000(v5, qword_100129988);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    sub_100092BD4(&qword_100128540, 255, &type metadata accessor for CKSyncEngine.SendChangesContext, &protocol conformance descriptor for CKSyncEngine.SendChangesContext);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100065658(v14, v16, &v29);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Returning next record change batch for context: %s", v12, 0xCu);
    sub_10005D588(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[11];
  v20 = v0[7];
  v19 = v0[8];
  v21 = v0[6];
  CKSyncEngine.SendChangesContext.options.getter();
  CKSyncEngine.SendChangesOptions.scope.getter();
  (*(v20 + 8))(v19, v21);
  CKSyncEngine.state.getter();
  v22 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  v23 = swift_task_alloc();
  *(v23 + 16) = v18;
  v24 = sub_10009134C(sub_100093230, v23, v22);

  v25 = swift_task_alloc();
  v0[15] = v25;
  *v25 = v0;
  v25[1] = sub_1000911A4;
  v26 = v0[5];
  v27 = v0[2];

  return CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:recordProvider:)(v27, v24, &unk_1000E6558, v26);
}

uint64_t sub_1000911A4()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1000912B4, v1, 0);
}

uint64_t sub_1000912B4()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

void *sub_10009134C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v7 = __chkstk_darwin(v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = _swiftEmptyArrayStorage;
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10009265C(0, v23[2] + 1, 1);
          v23 = v40;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_10009265C((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        v23[2] = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_10009161C(uint64_t a1, uint64_t a2)
{
  v6 = (*(*a2 + 288) + **(*a2 + 288));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007FAFC;

  return v6(a1);
}

uint64_t sub_100091748(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000625FC;

  return sub_10007FBF8(a1, a2);
}

uint64_t sub_1000917EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100067294;

  return sub_100090CFC(a1, a2, a3);
}

uint64_t sub_10009189C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for MACloudSyncedDatabase();
  *v10 = v5;
  v10[1] = sub_100067294;

  return CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)(a1, a2, a3, v11, a5);
}

uint64_t sub_100091968(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100093B24;

  return sub_100093060(a1);
}

uint64_t sub_100091A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for MACloudSyncedDatabase();
  *v10 = v5;
  v10[1] = sub_100093B24;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2, a3, v11, a5);
}

uint64_t sub_100091AE8(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128758, 255, type metadata accessor for CKError, &unk_1000E6908);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100091B58(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128758, 255, type metadata accessor for CKError, &unk_1000E6908);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100091BC8(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_100091C38@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100091C64(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100091CD4(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100091D44(void *a1, uint64_t a2)
{
  v4 = sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100091DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100091E90(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError, &unk_1000E6A5C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100091F00(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError, &unk_1000E6A5C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100091F70(void *a1, uint64_t a2)
{
  v4 = sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError, &unk_1000E6A5C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100092004(uint64_t a1, uint64_t a2)
{
  v4 = sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError, &unk_1000E6A5C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100092084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000920E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100092180(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128790, 255, type metadata accessor for CKUnderlyingError, &unk_1000E67D4);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000921F0(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_100128790, 255, type metadata accessor for CKUnderlyingError, &unk_1000E67D4);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100092260(uint64_t a1)
{
  v2 = sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError, &unk_1000E6A5C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000922D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError, &unk_1000E6A5C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

void *sub_100092358(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10005F5CC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100092534(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void *sub_10009265C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009267C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10009267C(void *result, int64_t a2, char a3, void *a4)
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

  sub_10005F5CC(&qword_1001284E8, &qword_1000E64E8);
  v10 = *(type metadata accessor for CKSyncEngine.PendingRecordZoneChange() - 8);
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
  v15 = *(type metadata accessor for CKSyncEngine.PendingRecordZoneChange() - 8);
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

uint64_t sub_100092854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 112) = a1;
  *(v3 + 128) = a2;
  v6 = objc_allocWithZone(NSUserDefaults);

  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithSuiteName:v7];

  if (v8 && (v9 = v8, v10 = String._bridgeToObjectiveC()(), v11 = [v9 BOOLForKey:v10], v9, v10, v11))
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100066000(v12, qword_100129988);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Using sandbox environment for CKContainer", v15, 2u);
    }

    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = objc_allocWithZone(CKContainerID);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithContainerIdentifier:v18 environment:v16];

  v20 = [objc_allocWithZone(CKContainer) initWithContainerID:v19];
  *(v3 + 120) = v20;
  *(v3 + 136) = 1;
  return v3;
}

unint64_t sub_100092A98()
{
  result = qword_100128810;
  if (!qword_100128810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128810);
  }

  return result;
}

uint64_t sub_100092B40()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000625FC;

  return sub_1000699AC(v3, v4, v5, v2);
}

uint64_t sub_100092BD4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100092C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F5CC(&qword_100128470, &qword_1000E6408);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100092C8C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100092CD4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092D0C()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (([v1 isFinished] & 1) == 0 && (objc_msgSend(v1, "isCancelled") & 1) == 0)
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100066000(v2, qword_100129988);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v3;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "cancel %@ operation because timeout", v6, 0xCu);
      sub_100066C80(v7, &qword_1001287F0, &qword_1000E6C40);
    }

    [v3 cancel];
  }
}

uint64_t sub_100092EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100092F08()
{
  result = qword_1001284D8;
  if (!qword_1001284D8)
  {
    sub_100060420(&qword_1001284D0, &qword_1000E64D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001284D8);
  }

  return result;
}

uint64_t sub_100092F7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100092FE0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100093080()
{
  v1 = CKRecordZoneID.validForPlatform.getter();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  sub_100066000(v3, qword_100129988);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 16);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v1;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Handling shouldFetchChanges %@, return: %{BOOL}d", v8, 0x12u);
    sub_100066C80(v9, &qword_1001287F0, &qword_1000E6C40);
  }

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_100093260(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007FAFC;

  return sub_10009161C(a1, v1);
}

unint64_t sub_1000935BC()
{
  result = qword_100128780;
  if (!qword_100128780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128780);
  }

  return result;
}

void sub_1000937EC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10009391C(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

id sub_100093928(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_100093934(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000939A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10005F5CC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100093A10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100093A48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000625FC;

  return sub_10006535C(a1, v4);
}

uint64_t sub_100093B4C()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_10012A3A8);
  sub_100066000(v0, qword_10012A3A8);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0xD000000000000011, 0x80000001000F13B0);
}

uint64_t sub_100093BCC()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_100093C10()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100093C40(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_100093C98()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100093CC8(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_100093D20()
{
  if (v0[34])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[33])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v0[32] | v1;
}

uint64_t sub_100093D50(uint64_t result)
{
  v1[32] = result;
  v1[33] = BYTE1(result) & 1;
  v1[34] = BYTE2(result) & 1;
  return result;
}

uint64_t sub_100093D88()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_100093DB8(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_100093E10()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_100093E40(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_100093E98()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_100093EC8(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t sub_100093F20()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_100093F50(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t sub_100093FB4()
{
  v1 = *(v0 + 120);
  sub_100093FE8(v1, *(v0 + 128));
  return v1;
}

void sub_100093FE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_10005F304(a1, a2);
  }
}

uint64_t sub_100093FFC(uint64_t a1, uint64_t a2)
{
  result = sub_10005F69C(*(v2 + 120), *(v2 + 128));
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t sub_100094054()
{
  v1 = *(v0 + 136);
  sub_10005F304(v1, *(v0 + 144));
  return v1;
}

uint64_t sub_100094098()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t sub_1000940C8(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

uint64_t type metadata accessor for MACloudMAAsset(uint64_t a1)
{
  result = qword_10012A5C0;
  if (!qword_10012A5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000941B4(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudMAAsset(0) + 68);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_1000941F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000942F8(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudMAAsset(0) + 72);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_100094384()
{
  v1 = *(v0 + *(type metadata accessor for MACloudMAAsset(0) + 76));

  return v1;
}

uint64_t sub_1000943C4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MACloudMAAsset(0) + 76));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100094454()
{
  v1 = *(v0 + *(type metadata accessor for MACloudMAAsset(0) + 80));

  return v1;
}

uint64_t sub_100094494(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MACloudMAAsset(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100094524()
{
  v1 = *(v0 + *(type metadata accessor for MACloudMAAsset(0) + 84));

  return v1;
}

uint64_t sub_100094564(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MACloudMAAsset(0) + 84));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100094618(uint64_t a1)
{
  result = type metadata accessor for MACloudMAAsset(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t sub_100094690()
{
  v1 = *(v0 + *(type metadata accessor for MACloudMAAsset(0) + 92));

  return v1;
}

uint64_t sub_1000946D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MACloudMAAsset(0) + 92));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100094784()
{
  v1 = v0 + *(type metadata accessor for MACloudMAAsset(0) + 100);
  v2 = *v1;
  sub_100093FE8(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1000947C8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MACloudMAAsset(0) + 100);
  result = sub_10005F69C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_100094858()
{
  v1 = v0 + *(type metadata accessor for MACloudMAAsset(0) + 104);
  v2 = *v1;
  sub_100093FE8(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_10009489C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MACloudMAAsset(0) + 104);
  result = sub_10005F69C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_10009492C()
{
  v1 = *(v0 + *(type metadata accessor for MACloudMAAsset(0) + 108));

  return v1;
}

uint64_t sub_10009496C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MACloudMAAsset(0) + 108));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100094A44(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudMAAsset(0) + 112);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_100094B18(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudMAAsset(0) + 116);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_100094BF0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudMAAsset(0) + 120);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_100094C7C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100094D30(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudMAAsset(0) + 124);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_100094DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *(a9 + 120) = xmmword_1000E6BC0;
  v50 = type metadata accessor for MACloudMAAsset(0);
  v51 = a9 + v50[17];
  v52 = type metadata accessor for Date();
  v53 = *(*(v52 - 8) + 56);
  v68 = v51;
  (v53)(v51, 1, 1, v52);
  v64 = a9 + v50[18];
  v53();
  v54 = a9 + v50[25];
  *v54 = xmmword_1000E6BC0;
  v55 = a9 + v50[26];
  *v55 = xmmword_1000E6BC0;
  v69 = a9 + v50[28];
  v53();
  v67 = a9 + v50[29];
  v53();
  v66 = a9 + v50[30];
  v53();
  v65 = a9 + v50[31];
  v53();
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  if (a4)
  {
    v56 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v56 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      *(a9 + 16) = a3;
      *(a9 + 24) = a4;
    }

    else
    {
    }
  }

  v57 = (a9 + v50[19]);
  v58 = (a9 + v50[20]);
  v59 = v50[22];
  v60 = (a9 + v50[21]);
  v61 = (a9 + v50[23]);
  v62 = (a9 + v50[27]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 32) = a5;
  *(a9 + 33) = BYTE1(a5) & 1;
  *(a9 + 34) = BYTE2(a5) & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a16;
  sub_10005F69C(*(a9 + 120), *(a9 + 128));
  *(a9 + 120) = a17;
  *(a9 + 128) = a18;
  *(a9 + 136) = a19;
  *(a9 + 144) = a20;
  *(a9 + 152) = a21;
  *(a9 + 160) = a22;
  *(a9 + 168) = a23;
  *(a9 + 176) = a24;
  sub_1000941F8(a25, v68);
  sub_1000941F8(a26, v64);
  *v57 = a27;
  v57[1] = a28;
  *v58 = a29;
  v58[1] = a30;
  *v60 = a31;
  v60[1] = a32;
  *(a9 + v50[24]) = a33;
  *v61 = a34;
  v61[1] = a35;
  *(a9 + v59) = a36;
  sub_10005F69C(*v54, *(v54 + 8));
  *v54 = a37;
  *(v54 + 8) = a38;
  sub_10005F69C(*v55, *(v55 + 8));
  *v55 = a39;
  *(v55 + 8) = a40;
  *v62 = a41;
  v62[1] = a42;
  sub_1000941F8(a43, v69);
  sub_1000941F8(a44, v67);
  sub_1000941F8(a45, v66);

  return sub_1000941F8(a46, v65);
}

BOOL sub_1000951B4(void *a1, int a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  __chkstk_darwin(v9 - 8);
  v11 = &v60 - v10;
  v12 = sub_10005F5CC(&qword_1001287D8, &qword_1000E6C38);
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  v15 = *(v2 + 136);
  v16 = *(v2 + 144);
  v63 = v2;
  if (!sub_1000AF4B8(v15, v16, a1[17], a1[18]) || *(v63 + 160) != a1[20])
  {
    return 0;
  }

  v62 = a2;
  v61 = type metadata accessor for MACloudMAAsset(0);
  v17 = v6;
  v18 = *(v61 + 72);
  v19 = *(v12 + 48);
  sub_1000939A8(v63 + v18, v14, &qword_1001287D0, &qword_1000E6C30);
  v60 = a1;
  sub_1000939A8(a1 + v18, &v14[v19], &qword_1001287D0, &qword_1000E6C30);
  v20 = *(v17 + 48);
  if (v20(v14, 1, v5) == 1)
  {
    if (v20(&v14[v19], 1, v5) == 1)
    {
      sub_100066C80(v14, &qword_1001287D0, &qword_1000E6C30);
      goto LABEL_11;
    }

LABEL_8:
    sub_100066C80(v14, &qword_1001287D8, &qword_1000E6C38);
    return 0;
  }

  sub_1000939A8(v14, v11, &qword_1001287D0, &qword_1000E6C30);
  if (v20(&v14[v19], 1, v5) == 1)
  {
    (*(v17 + 8))(v11, v5);
    goto LABEL_8;
  }

  (*(v17 + 32))(v8, &v14[v19], v5);
  sub_1000AF620(&unk_1001287E0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v17 + 8);
  v23(v8, v5);
  v23(v11, v5);
  sub_100066C80(v14, &qword_1001287D0, &qword_1000E6C30);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v24 = v60;
  v25 = v61;
  v26 = *(v61 + 76);
  v27 = (v63 + v26);
  v28 = *(v63 + v26 + 8);
  v29 = (v60 + v26);
  v30 = v29[1];
  if (v28)
  {
    v31 = v62;
    if (!v30 || (*v27 != *v29 || v28 != v30) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v31 = v62;
    if (v30)
    {
      return 0;
    }
  }

  v32 = v25[20];
  v33 = (v63 + v32);
  v34 = *(v63 + v32 + 8);
  v35 = (v24 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = v25[21];
  v38 = (v63 + v37);
  v39 = *(v63 + v37 + 8);
  v40 = (v24 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  if (*(v63 + v25[24]) != *(v24 + v25[24]))
  {
    return 0;
  }

  if ((v31 & 1) == 0)
  {
    if (*(v63 + v25[22]) != *(v24 + v25[22]))
    {
      return 0;
    }

    v42 = v25[25];
    v43 = v63 + v42;
    v45 = *(v63 + v42);
    v44 = *(v63 + v42 + 8);
    v46 = (v24 + v42);
    v48 = *v46;
    v47 = v46[1];
    if (v44 >> 60 == 15)
    {
      if (v47 >> 60 == 15)
      {
        sub_100093FE8(*v43, *(v43 + 8));
        sub_100093FE8(v48, v47);
        sub_10005F69C(v45, v44);
LABEL_42:
        v52 = v25[26];
        v53 = v63 + v52;
        v55 = *(v63 + v52);
        v54 = *(v63 + v52 + 8);
        v56 = (v24 + v52);
        v58 = *v56;
        v57 = v56[1];
        if (v54 >> 60 == 15)
        {
          if (v57 >> 60 == 15)
          {
            sub_100093FE8(*v53, *(v53 + 8));
            sub_100093FE8(v58, v57);
            sub_10005F69C(v55, v54);
            return 1;
          }

          goto LABEL_46;
        }

        if (v57 >> 60 == 15)
        {
LABEL_46:
          sub_100093FE8(*v53, *(v53 + 8));
          sub_100093FE8(v58, v57);
          sub_10005F69C(v55, v54);
          v49 = v58;
          v50 = v57;
          goto LABEL_47;
        }

        sub_100093FE8(*v53, *(v53 + 8));
        sub_100093FE8(v58, v57);
        v59 = sub_1000AF4B8(v55, v54, v58, v57);
        sub_10005F69C(v58, v57);
        sub_10005F69C(v55, v54);
        return v59;
      }
    }

    else if (v47 >> 60 != 15)
    {
      sub_100093FE8(*v43, *(v43 + 8));
      sub_100093FE8(v48, v47);
      v51 = sub_1000AF4B8(v45, v44, v48, v47);
      sub_10005F69C(v48, v47);
      sub_10005F69C(v45, v44);
      if (!v51)
      {
        return 0;
      }

      goto LABEL_42;
    }

    sub_100093FE8(*v43, *(v43 + 8));
    sub_100093FE8(v48, v47);
    sub_10005F69C(v45, v44);
    v49 = v48;
    v50 = v47;
LABEL_47:
    sub_10005F69C(v49, v50);
    return 0;
  }

  return 1;
}

uint64_t sub_100095824()
{
  v1 = v0;
  v2 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v3 = __chkstk_darwin(v2 - 8);
  v84 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v83 = &v81 - v6;
  v7 = __chkstk_darwin(v5);
  v82 = &v81 - v8;
  __chkstk_darwin(v7);
  v10 = &v81 - v9;
  v87 = 0;
  v88 = 0xE000000000000000;
  _StringGuts.grow(_:)(203);
  v11._countAndFlagsBits = 0x614E64726F636572;
  v11._object = 0xEB000000003A656DLL;
  String.append(_:)(v11);
  String.append(_:)(*v0);
  v12._countAndFlagsBits = 0x4164726F63657220;
  v12._object = 0xEF3A746E756F6363;
  String.append(_:)(v12);
  v13 = *(v0 + 24);
  if (v13)
  {
    v14 = *(v0 + 16);
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = *(v0 + 24);
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18 = *(v0 + 33);
  v19 = *(v0 + 34);
  LOBYTE(v86) = *(v0 + 32);
  BYTE1(v86) = v18;
  BYTE2(v86) = v19;
  _print_unlocked<A, B>(_:_:)();
  v20._countAndFlagsBits = 0x6148746573736120;
  v20._object = 0xED00003A656C646ELL;
  String.append(_:)(v20);
  v21 = *(v0 + 48);
  if (v21)
  {
    v22 = *(v0 + 40);
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = *(v0 + 48);
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  v24._countAndFlagsBits = v22;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x614C746573736120;
  v25._object = 0xEC0000003A6C6562;
  String.append(_:)(v25);
  v26 = *(v0 + 176);
  if (v26)
  {
    v27 = *(v0 + 168);
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    v28 = *(v0 + 176);
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v29._countAndFlagsBits = v27;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0xD000000000000013;
  v30._object = 0x80000001000F10A0;
  String.append(_:)(v30);
  v31 = type metadata accessor for MACloudMAAsset(0);
  sub_1000939A8(v0 + *(v31 + 68), v10, &qword_1001287D0, &qword_1000E6C30);
  v32 = type metadata accessor for Date();
  v33 = *(v32 - 8);
  v85 = *(v33 + 48);
  if (v85(v10, 1, v32) == 1)
  {
    v34 = v33;
    sub_100066C80(v10, &qword_1001287D0, &qword_1000E6C30);
    v35 = 0;
    v36 = 0xE000000000000000;
  }

  else
  {
    v35 = Date.description.getter();
    v36 = v37;
    v34 = v33;
    (*(v33 + 8))(v10, v32);
  }

  v38._countAndFlagsBits = v35;
  v38._object = v36;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0xD000000000000016;
  v39._object = 0x80000001000F10C0;
  String.append(_:)(v39);
  v40 = v31;
  v41 = v82;
  sub_1000939A8(v0 + *(v31 + 72), v82, &qword_1001287D0, &qword_1000E6C30);
  if (v85(v41, 1, v32) == 1)
  {
    sub_100066C80(v41, &qword_1001287D0, &qword_1000E6C30);
    v42 = 0;
    v43 = 0xE000000000000000;
    v44 = v34;
  }

  else
  {
    v45 = Date.description.getter();
    v43 = v46;
    v44 = v34;
    (*(v34 + 8))(v41, v32);
    v42 = v45;
  }

  v47 = v43;
  String.append(_:)(*&v42);

  v48._countAndFlagsBits = 0x6150746573736120;
  v48._object = 0xEB000000003A6874;
  String.append(_:)(v48);
  v49 = v1[10];
  if (v49)
  {
    v50 = v1[9];
  }

  else
  {
    v50 = 0;
  }

  if (v49)
  {
    v51 = v1[10];
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  v52._countAndFlagsBits = v50;
  v52._object = v51;
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0x3A687361682020;
  v53._object = 0xE700000000000000;
  String.append(_:)(v53);
  v54._countAndFlagsBits = sub_10005FFFC(v1[17], v1[18]);
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0x3A657A697320;
  v55._object = 0xE600000000000000;
  String.append(_:)(v55);
  v86 = v1[19];
  v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v56);

  v57._countAndFlagsBits = 0x3A6570797420;
  v57._object = 0xE600000000000000;
  String.append(_:)(v57);
  v86 = v1[20];
  type metadata accessor for MASDAssetType(0);
  sub_1000AF620(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
  v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v58);

  v59._countAndFlagsBits = 0x656C69666F727020;
  v59._object = 0xED00003A65707954;
  String.append(_:)(v59);
  v86 = *(v1 + v40[24]);
  type metadata accessor for MASDProfileType(0);
  _print_unlocked<A, B>(_:_:)();
  v60._countAndFlagsBits = 0x3A6761544520;
  v60._object = 0xE600000000000000;
  String.append(_:)(v60);
  v61 = (v1 + v40[27]);
  v62 = v61[1];
  if (v62)
  {
    v63 = *v61;
  }

  else
  {
    v63 = 0;
  }

  if (v62)
  {
    v64 = v61[1];
  }

  else
  {
    v64 = 0xE000000000000000;
  }

  v65._countAndFlagsBits = v63;
  v65._object = v64;
  String.append(_:)(v65);

  v66._countAndFlagsBits = 0x74616572436B6320;
  v66._object = 0xEF3A657461446465;
  String.append(_:)(v66);
  v67 = v83;
  sub_1000939A8(v1 + v40[28], v83, &qword_1001287D0, &qword_1000E6C30);
  if (v85(v67, 1, v32) == 1)
  {
    sub_100066C80(v67, &qword_1001287D0, &qword_1000E6C30);
    v68 = 0;
    v69 = 0xE000000000000000;
  }

  else
  {
    v70 = Date.description.getter();
    v69 = v71;
    (*(v44 + 8))(v67, v32);
    v68 = v70;
  }

  v72 = v69;
  String.append(_:)(*&v68);

  v73._object = 0x80000001000F10E0;
  v73._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v73);
  v74 = v84;
  sub_1000939A8(v1 + v40[29], v84, &qword_1001287D0, &qword_1000E6C30);
  if (v85(v74, 1, v32) == 1)
  {
    sub_100066C80(v74, &qword_1001287D0, &qword_1000E6C30);
    v75 = 0;
    v76 = 0xE000000000000000;
  }

  else
  {
    v77 = Date.description.getter();
    v76 = v78;
    (*(v44 + 8))(v74, v32);
    v75 = v77;
  }

  v79 = v76;
  String.append(_:)(*&v75);

  return v87;
}

uint64_t sub_100096018(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 108));

  return v2;
}

uint64_t sub_100096050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 108));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_100096120@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v148 = a3;
  v5 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v6 = __chkstk_darwin(v5 - 8);
  v144 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v143 = &v107 - v9;
  v10 = __chkstk_darwin(v8);
  v142 = &v107 - v11;
  v12 = __chkstk_darwin(v10);
  v141 = &v107 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = &v107 - v15;
  __chkstk_darwin(v14);
  v139 = &v107 - v16;
  v17 = type metadata accessor for URL();
  v137 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 assetMetadata];
  v21 = [v20 ckrecordIdentifier];

  if (v21)
  {
    v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v146 = v22;
  }

  else
  {
    v138 = 0;
    v146 = 0xE000000000000000;
  }

  *&v149 = [a1 assetMetadata];
  v23 = [a1 assetHandle];
  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  v24 = [a2 assetPath:v23];

  v25 = v24;
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100066000(v28, qword_10012A3A8);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  v31 = os_log_type_enabled(v29, v30);
  v147 = a2;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v151 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_100065658(v145, v27, &v151);
    _os_log_impl(&_mh_execute_header, v29, v30, "assetPath = %s", v32, 0xCu);
    sub_10005D588(v33);
  }

  v34 = [objc_opt_self() defaultManager];
  v151 = 0;
  v35 = [v34 attributesOfItemAtPath:v25 error:&v151];

  v36 = v151;
  if (!v35)
  {
    v49 = v151;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v149;
    if (v52)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      swift_errorRetain();
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v56;
      *v55 = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to get asset file attributes, or calculate asset hash %@", v54, 0xCu);
      sub_100066C80(v55, &qword_1001287F0, &qword_1000E6C40);
    }

    else
    {
    }

LABEL_24:
    v57 = type metadata accessor for MACloudMAAsset(0);
    return (*(*(v57 - 8) + 56))(v148, 1, 1, v57);
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1000AF620(&qword_1001287F8, 255, type metadata accessor for FileAttributeKey, &unk_1000E7310);
  v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v36;

  if (!*(v37 + 16) || (v39 = sub_1000AE2CC(NSFileSize), (v40 & 1) == 0))
  {

LABEL_18:

    v43 = v147;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v149;
    if (v46)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to get asset file size", v48, 2u);
    }

    goto LABEL_24;
  }

  sub_100066130(*(v37 + 56) + 32 * v39, &v151);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_18;
  }

  v41 = v150;
  v42 = sub_10005D098();
  v135 = static MADigest.hash(fileAtPath:hashType:)(v145, v27, v42);
  v136 = v59;
  v134 = v41;
  if (v41 > 0x10000 || (sub_1000C616C([v149 type]) & 1) != 0)
  {
    v133 = 0;
    v132 = 0xF000000000000000;
  }

  else
  {
    URL.init(fileURLWithPath:)();
    v105 = Data.init(contentsOf:options:)();
    v132 = v106;
    v133 = v105;
    (*(v137 + 8))(v19, v17);
  }

  LODWORD(v137) = sub_1000C182C(0, 0, 0);
  v60 = [a1 assetHandle];
  v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v129 = v61;

  v62 = v149;
  v131 = [v149 type];
  v63 = [v62 label];
  if (v63)
  {
    v64 = v63;
    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v65;
  }

  else
  {
    v128 = 0;
    v127 = 0;
  }

  v66 = [v62 creationTime];
  v67 = v139;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = type metadata accessor for Date();
  v69 = *(*(v68 - 8) + 56);
  v69(v67, 0, 1, v68);
  v70 = [v62 lastUpdatedTime];
  v71 = v140;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v69(v71, 0, 1, v68);
  v72 = [v62 lastUpdatedOSVersion];
  v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v125 = v73;

  v74 = [v62 lastUpdatedAlgorithmVersion];
  if (v74)
  {
    v75 = v74;
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v76;
  }

  else
  {
    v124 = 0;
    v123 = 0;
  }

  v77 = [v62 enrollmentIdentifier];
  if (v77)
  {
    v78 = v77;
    v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v79;
  }

  else
  {
    v122 = 0;
    v121 = 0;
  }

  v80 = [a1 assetOwner];
  v120 = [v80 profileType];

  v81 = [a1 assetProcess];
  v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = v82;

  v117 = sub_1000BF344([v62 syncOption]);
  v69(v141, 1, 1, v68);
  v69(v142, 1, 1, v68);
  v69(v143, 1, 1, v68);
  v69(v144, 1, 1, v68);
  v83 = v148;
  *(v148 + 16) = 0;
  *(v83 + 24) = 0;
  v149 = xmmword_1000E6BC0;
  *(v83 + 120) = xmmword_1000E6BC0;
  v84 = type metadata accessor for MACloudMAAsset(0);
  v113 = v84[17];
  v69(v83 + v113, 1, 1, v68);
  v110 = v84[18];
  v69(v83 + v110, 1, 1, v68);
  v85 = (v83 + v84[19]);
  v109 = (v83 + v84[20]);
  v86 = v84[21];
  v112 = v84[22];
  v87 = (v83 + v86);
  v108 = (v83 + v84[23]);
  v88 = v83 + v84[25];
  v89 = v149;
  *v88 = v149;
  v90 = v83 + v84[26];
  *v90 = v89;
  v91 = v84[27];
  v147 = v84[28];
  v115 = (v83 + v91);
  v69(v147 + v83, 1, 1, v68);
  v116 = v84[29];
  v69(v83 + v116, 1, 1, v68);
  v114 = v84[30];
  v69(v83 + v114, 1, 1, v68);
  v111 = v84[31];
  v69(v83 + v111, 1, 1, v68);
  v92 = v129;
  *(v83 + 40) = v130;
  *(v83 + 48) = v92;
  v93 = v146;
  *v83 = v138;
  *(v83 + 8) = v93;
  LODWORD(v93) = v137;
  *(v83 + 32) = v137;
  *(v83 + 33) = BYTE1(v93) & 1;
  *(v83 + 34) = BYTE2(v93) & 1;
  *(v83 + 56) = 0;
  *(v83 + 64) = 0;
  *(v83 + 72) = v145;
  *(v83 + 80) = v27;
  *(v83 + 88) = 0u;
  *(v83 + 104) = 0u;
  sub_10005F69C(*(v83 + 120), *(v83 + 128));
  v94 = v132;
  *(v83 + 120) = v133;
  *(v83 + 128) = v94;
  v95 = v136;
  *(v83 + 136) = v135;
  *(v83 + 144) = v95;
  v96 = v131;
  *(v83 + 152) = v134;
  *(v83 + 160) = v96;
  v97 = v127;
  *(v83 + 168) = v128;
  *(v83 + 176) = v97;
  sub_1000941F8(v139, v83 + v113);
  sub_1000941F8(v140, v83 + v110);
  v98 = v125;
  *v85 = v126;
  v85[1] = v98;
  v99 = v109;
  v100 = v123;
  *v109 = v124;
  v99[1] = v100;
  v101 = v121;
  *v87 = v122;
  v87[1] = v101;
  *(v83 + v84[24]) = v120;
  v102 = v108;
  v103 = v118;
  *v108 = v119;
  v102[1] = v103;
  *(v83 + v112) = v117;
  sub_10005F69C(*v88, *(v88 + 8));
  *v88 = v149;
  sub_10005F69C(*v90, *(v90 + 8));
  *v90 = v149;
  v104 = v115;
  *v115 = 0;
  v104[1] = 0;
  sub_1000941F8(v141, v147 + v83);
  sub_1000941F8(v142, v83 + v116);
  sub_1000941F8(v143, v83 + v114);
  sub_1000941F8(v144, v83 + v111);
  return (*(*(v84 - 1) + 56))(v83, 0, 1, v84);
}

double sub_10009705C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100065A98(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100066130(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

id sub_1000970C0()
{
  v1 = v0;
  v77 = type metadata accessor for MACloudMAAsset(0);
  __chkstk_darwin(v77);
  v78 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v75 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v76 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v75 - v13;
  v15 = sub_1000AF6B8(_swiftEmptyArrayStorage);
  *&v81 = 0x657079745FLL;
  *(&v81 + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  v16 = v1[20];
  v82 = &type metadata for UInt;
  *&v81 = v16;
  sub_1000AF7F4(&v81, v80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = v15;
  sub_1000AED34(v80, v83, isUniquelyReferenced_nonNull_native);
  sub_1000AF804(v83);
  v18 = v79;
  v19 = v1[22];
  if (v19)
  {
    v20 = v1[21];
    *&v81 = 0x6C6562616C5FLL;
    *(&v81 + 1) = 0xE600000000000000;

    AnyHashable.init<A>(_:)();
    v82 = &type metadata for String;
    *&v81 = v20;
    *(&v81 + 1) = v19;
    sub_1000AF7F4(&v81, v80);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v18;
    sub_1000AED34(v80, v83, v21);
    sub_1000AF804(v83);
    v18 = v79;
  }

  v22 = v77;
  sub_1000939A8(v1 + *(v77 + 68), v8, &qword_1001287D0, &qword_1000E6C30);
  v23 = *(v10 + 48);
  if (v23(v8, 1, v9) == 1)
  {
    sub_100066C80(v8, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    strcpy(&v81, "_creationTime");
    HIWORD(v81) = -4864;
    AnyHashable.init<A>(_:)();
    v82 = v9;
    v24 = sub_10005D4D0(&v81);
    (*(v10 + 16))(v24, v14, v9);
    sub_1000AF7F4(&v81, v80);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v18;
    sub_1000AED34(v80, v83, v25);
    sub_1000AF804(v83);
    (*(v10 + 8))(v14, v9);
    v18 = v79;
  }

  sub_1000939A8(v1 + v22[18], v6, &qword_1001287D0, &qword_1000E6C30);
  v26 = v23(v6, 1, v9);
  v27 = v78;
  if (v26 == 1)
  {
    sub_100066C80(v6, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v28 = v76;
    (*(v10 + 32))(v76, v6, v9);
    *&v81 = 0xD000000000000010;
    *(&v81 + 1) = 0x80000001000F1180;
    AnyHashable.init<A>(_:)();
    v82 = v9;
    v29 = sub_10005D4D0(&v81);
    (*(v10 + 16))(v29, v28, v9);
    sub_1000AF7F4(&v81, v80);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v18;
    sub_1000AED34(v80, v83, v30);
    sub_1000AF804(v83);
    (*(v10 + 8))(v28, v9);
    v18 = v79;
  }

  v31 = (v1 + v22[19]);
  v32 = v31[1];
  if (v32)
  {
    v33 = *v31;
    *&v81 = 0xD000000000000015;
    *(&v81 + 1) = 0x80000001000F1160;

    AnyHashable.init<A>(_:)();
    v82 = &type metadata for String;
    *&v81 = v33;
    *(&v81 + 1) = v32;
    sub_1000AF7F4(&v81, v80);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v18;
    sub_1000AED34(v80, v83, v34);
    sub_1000AF804(v83);
    v18 = v79;
  }

  v35 = (v1 + v22[20]);
  v36 = v35[1];
  if (v36)
  {
    v37 = *v35;
    *&v81 = 0xD00000000000001CLL;
    *(&v81 + 1) = 0x80000001000F1140;

    AnyHashable.init<A>(_:)();
    v82 = &type metadata for String;
    *&v81 = v37;
    *(&v81 + 1) = v36;
    sub_1000AF7F4(&v81, v80);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v18;
    sub_1000AED34(v80, v83, v38);
    sub_1000AF804(v83);
    v18 = v79;
  }

  *&v81 = 0xD000000000000013;
  *(&v81 + 1) = 0x80000001000F1100;
  AnyHashable.init<A>(_:)();
  v39 = *v1;
  v40 = v1[1];
  v82 = &type metadata for String;
  *&v81 = v39;
  *(&v81 + 1) = v40;
  sub_1000AF7F4(&v81, v80);

  v41 = swift_isUniquelyReferenced_nonNull_native();
  v79 = v18;
  sub_1000AED34(v80, v83, v41);
  sub_1000AF804(v83);
  v42 = v79;
  strcpy(&v81, "_syncOption");
  HIDWORD(v81) = -352321536;
  AnyHashable.init<A>(_:)();
  v43 = *(v1 + v22[22]);
  v44 = sub_1000BF33C();
  v82 = &type metadata for UInt;
  *&v81 = v44 & v43;
  sub_1000AF7F4(&v81, v80);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v79 = v42;
  sub_1000AED34(v80, v83, v45);
  sub_1000AF804(v83);
  v46 = v79;
  strcpy(&v81, "_assetState");
  HIDWORD(v81) = -352321536;
  AnyHashable.init<A>(_:)();
  v82 = &type metadata for UInt;
  *&v81 = 32;
  sub_1000AF7F4(&v81, v80);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v79 = v46;
  sub_1000AED34(v80, v83, v47);
  sub_1000AF804(v83);
  v48 = v79;
  v49 = (v1 + v22[21]);
  v50 = v49[1];
  if (v50)
  {
    v51 = *v49;
    *&v81 = 0xD000000000000015;
    *(&v81 + 1) = 0x80000001000F1120;

    AnyHashable.init<A>(_:)();
    v82 = &type metadata for String;
    *&v81 = v51;
    *(&v81 + 1) = v50;
    sub_1000AF7F4(&v81, v80);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v48;
    sub_1000AED34(v80, v83, v52);
    sub_1000AF804(v83);
  }

  v53 = objc_allocWithZone(MASDAssetMetadata);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v55 = [v53 initAssetMetadataWithInfoDictionary:isa];

  v56 = [objc_allocWithZone(MASDAsset) init];
  [v56 setAssetMetadata:v55];
  if (*(v1 + v22[24]) == -1)
  {
  }

  else
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100066000(v57, qword_10012A3A8);
    sub_1000AF858(v1, v27);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      v61 = *(v27 + v22[24]);
      sub_1000AF8BC(v27);
      *(v60 + 4) = v61;

      _os_log_impl(&_mh_execute_header, v58, v59, "expect only default profile, not type %lu", v60, 0xCu);
    }

    else
    {
      sub_1000AF8BC(v27);
    }
  }

  v62 = [objc_allocWithZone(MASDUserProfile) initNewProfileWith:0 name:kMASDDefaultLocalUser type:-1];
  [v56 setAssetOwner:v62];

  v63 = (v1 + v22[23]);
  if (v63[1])
  {
    v64 = *v63;
    v65 = v63[1];
  }

  else
  {
    v64 = 0;
    v65 = 0xE000000000000000;
  }

  swift_bridgeObjectRetain_n();
  v66._countAndFlagsBits = 0x756F6C436D6F7266;
  v66._object = 0xEA00000000003A64;
  v67 = String.hasPrefix(_:)(v66);

  if (!v67)
  {
    v83[0] = 0x756F6C436D6F7266;
    v83[1] = 0xEA00000000003A64;
    v68._countAndFlagsBits = v64;
    v68._object = v65;
    String.append(_:)(v68);
  }

  v69 = String._bridgeToObjectiveC()();

  [v56 setAssetProcess:v69];

  if (v1[6])
  {
    v70 = String._bridgeToObjectiveC()();
    [v56 setAssetHandle:v70];
  }

  v71 = v1[16];
  if (v71 >> 60 == 15)
  {
  }

  else
  {
    v72 = v1[15];
    sub_10005F304(v72, v71);
    v73 = Data._bridgeToObjectiveC()().super.isa;
    [v56 setAssetData:v73];

    sub_10005F69C(v72, v71);
  }

  return v56;
}

void sub_100097C44()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = [objc_opt_self() defaultManager];
    v4 = String._bridgeToObjectiveC()();
    v26 = 0;
    v5 = [v3 removeItemAtPath:v4 error:&v26];

    if (v5)
    {
      v6 = qword_10012A3A0;
      v7 = v26;
      if (v6 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100066000(v8, qword_10012A3A8);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v26 = v12;
        *v11 = 136315138;
        v13 = sub_100065658(v2, v1, &v26);

        *(v11 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Removed sync down tmp asset file: %s", v11, 0xCu);
        sub_10005D588(v12);
      }

      else
      {
      }

      goto LABEL_19;
    }

    v17 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100066000(v18, qword_10012A3A8);

    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v20 = 136315394;
      v23 = sub_100065658(v2, v1, &v26);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2112;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v24;
      *v21 = v24;
      _os_log_impl(&_mh_execute_header, v9, v19, "Failed to remove sync down assetPath %s, error: %@", v20, 0x16u);
      sub_100066C80(v21, &qword_1001287F0, &qword_1000E6C40);

      sub_10005D588(v22);

LABEL_19:

      return;
    }
  }

  else
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100066000(v14, qword_10012A3A8);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v15, "No tmp asset file to drop", v16, 2u);
    }
  }
}

uint64_t sub_1000980EC@<X0>(uint64_t a1@<X8>)
{
  if (v1[12])
  {
    v3 = v1[11];
    v4 = v1[12];
  }

  else
  {
    v4 = v1[10];
    if (!v4)
    {
      if (qword_10012A3A0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100066000(v19, qword_10012A3A8);
      v14 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v14, v20))
      {
        goto LABEL_17;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v14, v20, "No assetPath to create CKAsset", v21, 2u);
      goto LABEL_16;
    }

    v3 = v1[9];
  }

  v5 = objc_opt_self();

  v6 = [v5 defaultManager];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = objc_opt_self();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v9 fileURLWithPath:v10];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = 0;
    goto LABEL_18;
  }

  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100066000(v13, qword_10012A3A8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    v18 = sub_100065658(v3, v4, &v25);

    *(v16 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "assetPath %s to create CKAsset does not exist", v16, 0xCu);
    sub_10005D588(v17);

LABEL_16:

    goto LABEL_17;
  }

LABEL_17:

  v12 = 1;
LABEL_18:
  v22 = type metadata accessor for URL();
  v23 = *(*(v22 - 8) + 56);

  return v23(a1, v12, 1, v22);
}

uint64_t sub_100098440(void *a1)
{
  v2 = v1;
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v5 = __chkstk_darwin(v4 - 8);
  v116 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v108 - v7;
  v9 = type metadata accessor for Date();
  v118 = *(v9 - 8);
  v119 = v9;
  v10 = __chkstk_darwin(v9);
  v111 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v110 = &v108 - v12;
  v13 = sub_10005F5CC(&qword_100128800, &qword_1000E6C48);
  __chkstk_darwin(v13 - 8);
  v15 = &v108 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v109 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for MACloudMAAsset(0);
  v19 = __chkstk_darwin(v120);
  p_type = (&v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = &v108 - v22;
  v117 = v2[20];
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v113 = v17;
  v114 = v16;
  v115 = v8;
  v24 = type metadata accessor for Logger();
  v25 = sub_100066000(v24, qword_10012A3A8);
  sub_1000AF858(v2, v23);
  sub_1000AF858(v2, p_type);
  v112 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v26, v27))
  {
    sub_1000AF8BC(p_type);

    sub_1000AF8BC(v23);
    goto LABEL_8;
  }

  v108 = a1;
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  *v28 = 136315650;
  v121 = *(v23 + 20);
  v122 = v29;
  type metadata accessor for MASDAssetType(0);
  sub_1000AF620(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  sub_1000AF8BC(v23);
  v33 = sub_100065658(v30, v32, &v122);

  *(v28 + 4) = v33;
  *(v28 + 6) = 2048;
  *(v28 + 14) = v117;
  *(v28 + 11) = 2048;
  v35 = p_type[16];
  if (v35 >> 60 == 15)
  {
    v36 = 0;
    a1 = v108;
  }

  else
  {
    v41 = p_type[15];
    v42 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      a1 = v108;
      if (v42 == 2)
      {
        v49 = (v41 + 16);
        v40 = *(v41 + 16);
        v48 = *(v49 + 1);
        v36 = v48 - v40;
        if (__OFSUB__(v48, v40))
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      a1 = v108;
      if (v42)
      {
        goto LABEL_27;
      }

      v36 = BYTE6(v35);
    }
  }

  while (1)
  {
    sub_1000AF8BC(p_type);
    *(v28 + 3) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "Populate CKRecord, asset type: %s - %lu, assetData size = %ld", v28, 0x20u);
    sub_10005D588(v29);

LABEL_8:
    v26 = v2[16];
    p_type = &stru_100124FF0.type;
    v28 = &type metadata for Data;
    v29 = &protocol witness table for Data;
    if (v26 >> 60 == 15)
    {
      sub_1000980EC(v15);
      v38 = v113;
      v37 = v114;
      if ((*(v113 + 48))(v15, 1, v114) == 1)
      {
        sub_100066C80(v15, &qword_100128800, &qword_1000E6C48);
        return 0;
      }

      v43 = v109;
      (*(v38 + 32))(v109, v15, v37);
      v44 = objc_allocWithZone(CKAsset);
      URL._bridgeToObjectiveC()(v45);
      v47 = v46;
      [v44 initWithFileURL:v46];

      CKRecord.subscript.setter();
      (*(v38 + 8))(v43, v37);
      v15 = v116;
      goto LABEL_35;
    }

    v27 = v2[15];
    sub_10005F304(v27, v2[16]);
    v36 = Logger.logObject.getter();
    LOBYTE(v23) = static os_log_type_t.info.getter();
    v39 = os_log_type_enabled(v36, v23);
    v15 = v116;
    if (!v39)
    {
      goto LABEL_34;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v40 = v26 >> 62;
    if ((v26 >> 62) <= 1)
    {
      break;
    }

LABEL_23:
    if (v40 != 2)
    {
      v41 = 0;
      goto LABEL_33;
    }

    v51 = *(v27 + 16);
    v50 = *(v27 + 24);
    v52 = __OFSUB__(v50, v51);
    v41 = v50 - v51;
    if (!v52)
    {
      goto LABEL_33;
    }

    __break(1u);
LABEL_27:
    v52 = __OFSUB__(HIDWORD(v41), v41);
    v53 = HIDWORD(v41) - v41;
    if (v52)
    {
      __break(1u);
      goto LABEL_59;
    }

    v36 = v53;
  }

  if (v40)
  {
    LODWORD(v41) = HIDWORD(v27) - v27;
    if (__OFSUB__(HIDWORD(v27), v27))
    {
LABEL_59:
      __break(1u);
      return result;
    }

    v41 = v41;
  }

  else
  {
    v41 = BYTE6(v26);
  }

LABEL_33:
  *(result + 4) = v41;
  _os_log_impl(&_mh_execute_header, v36, v23, "populateCKRecord with small size asset, data size: %ld", result, 0xCu);

LABEL_34:

  v54 = [a1 p_type[251]];
  swift_getObjectType();
  v124 = v28;
  v125 = v29;
  v122 = v27;
  v123 = v26;
  sub_10005F304(v27, v26);
  CKRecordKeyValueSetting.subscript.setter();
  sub_10005F69C(v27, v26);
  swift_unknownObjectRelease();
LABEL_35:
  v55 = [a1 p_type[251]];
  swift_getObjectType();
  v124 = &type metadata for UInt;
  v125 = &protocol witness table for UInt;
  v122 = v117;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v56 = v2[22];
  if (v56)
  {
    v57 = v2[21];

    v58 = [a1 p_type[251]];
    swift_getObjectType();
    v124 = &type metadata for String;
    v125 = &protocol witness table for String;
    v122 = v57;
    v123 = v56;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
  }

  v59 = a1;
  v60 = v115;
  sub_1000939A8(v2 + v120[17], v115, &qword_1001287D0, &qword_1000E6C30);
  v62 = v118;
  v61 = v119;
  v63 = *(v118 + 48);
  if (v63(v60, 1, v119) == 1)
  {
    sub_100066C80(v60, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v64 = v110;
    (*(v62 + 32))(v110, v60, v61);
    v65 = [v59 p_type[251]];
    swift_getObjectType();
    v124 = v119;
    v125 = &protocol witness table for Date;
    v66 = sub_10005D4D0(&v122);
    (*(v118 + 16))(v66, v64, v119);
    v61 = v119;
    CKRecordKeyValueSetting.subscript.setter();
    v62 = v118;
    swift_unknownObjectRelease();
    (*(v62 + 8))(v64, v61);
  }

  sub_1000939A8(v2 + v120[18], v15, &qword_1001287D0, &qword_1000E6C30);
  if (v63(v15, 1, v61) == 1)
  {
    sub_100066C80(v15, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v67 = v15;
    v68 = v111;
    (*(v62 + 32))(v111, v67, v61);
    v69 = [v59 p_type[251]];
    swift_getObjectType();
    v124 = v61;
    v125 = &protocol witness table for Date;
    v70 = sub_10005D4D0(&v122);
    (*(v62 + 16))(v70, v68, v61);
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v68, v61);
  }

  v71 = (v2 + v120[19]);
  v72 = v71[1];
  if (v72)
  {
    v73 = *v71;

    v74 = [v59 p_type[251]];
    swift_getObjectType();
    v124 = &type metadata for String;
    v125 = &protocol witness table for String;
    v122 = v73;
    v123 = v72;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
  }

  v75 = (v2 + v120[20]);
  v76 = v75[1];
  if (v76)
  {
    v77 = *v75;

    v78 = [v59 p_type[251]];
    swift_getObjectType();
    v124 = &type metadata for String;
    v125 = &protocol witness table for String;
    v122 = v77;
    v123 = v76;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
  }

  v79 = (v2 + v120[21]);
  v80 = v79[1];
  v81 = v59;
  if (v80)
  {
    v82 = *v79;

    v83 = [v59 p_type[251]];
    swift_getObjectType();
    v124 = &type metadata for String;
    v125 = &protocol witness table for String;
    v122 = v82;
    v123 = v80;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
  }

  v84 = [v59 p_type[251]];
  swift_getObjectType();
  v85 = v120;
  v86 = sub_1000BF320(*(v2 + v120[24]));
  v124 = &type metadata for UInt;
  v125 = &protocol witness table for UInt;
  v122 = v86;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v87 = (v2 + v85[23]);
  v88 = v87[1];
  if (v88)
  {
    v89 = *v87;

    v90 = [v81 p_type[251]];
    swift_getObjectType();
    v124 = &type metadata for String;
    v125 = &protocol witness table for String;
    v122 = v89;
    v123 = v88;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
  }

  v91 = [v81 p_type[251]];
  swift_getObjectType();
  v92 = v120;
  v93 = *(v2 + v120[22]);
  v124 = &type metadata for UInt;
  v125 = &protocol witness table for UInt;
  v122 = v93;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v94 = [v81 p_type[251]];
  swift_getObjectType();
  v95 = v2[17];
  v96 = v2[18];
  v124 = &type metadata for Data;
  v125 = &protocol witness table for Data;
  v122 = v95;
  v123 = v96;
  sub_10005F304(v95, v96);
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v97 = [v81 p_type[251]];
  swift_getObjectType();
  v98 = v2[19];
  v124 = &type metadata for UInt64;
  v125 = &protocol witness table for UInt64;
  v122 = v98;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v99 = v2 + v92[25];
  v100 = *(v99 + 1);
  if (v100 >> 60 != 15)
  {
    v101 = *v99;
    sub_10005F304(*v99, *(v99 + 1));
    v102 = [v81 p_type[251]];
    swift_getObjectType();
    v124 = &type metadata for Data;
    v125 = &protocol witness table for Data;
    v122 = v101;
    v123 = v100;
    sub_10005F304(v101, v100);
    CKRecordKeyValueSetting.subscript.setter();
    sub_10005F69C(v101, v100);
    swift_unknownObjectRelease();
  }

  v103 = v2 + v120[26];
  v104 = *(v103 + 1);
  if (v104 >> 60 != 15)
  {
    v105 = *v103;
    sub_10005F304(*v103, *(v103 + 1));
    v106 = [v81 p_type[251]];
    swift_getObjectType();
    v124 = &type metadata for Data;
    v125 = &protocol witness table for Data;
    v122 = v105;
    v123 = v104;
    sub_10005F304(v105, v104);
    CKRecordKeyValueSetting.subscript.setter();
    sub_10005F69C(v105, v104);
    swift_unknownObjectRelease();
  }

  if (*(v2 + v120[27] + 8))
  {
    v107 = String._bridgeToObjectiveC()();
    [v81 setEtag:v107];
  }

  return 1;
}

uint64_t sub_1000993E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v287 = a4;
  *&v288 = a5;
  v285 = a3;
  v272 = a2;
  v276 = a6;
  v7 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v8 = __chkstk_darwin(v7 - 8);
  v283 = &v240 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v282 = &v240 - v11;
  v12 = __chkstk_darwin(v10);
  v281 = &v240 - v13;
  v14 = __chkstk_darwin(v12);
  v280 = &v240 - v15;
  v16 = __chkstk_darwin(v14);
  v279 = &v240 - v17;
  __chkstk_darwin(v16);
  v278 = &v240 - v18;
  v19 = sub_10005F5CC(&qword_100128808, &unk_1000E6C50);
  __chkstk_darwin(v19 - 8);
  v274 = &v240 - v20;
  v21 = sub_10005F5CC(&qword_100128800, &qword_1000E6C48);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v240 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v240 - v25;
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v240 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v273 = &v240 - v32;
  v33 = [a1 recordID];
  v34 = [v33 recordName];

  v275 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v284 = v35;

  v36 = [a1 encryptedValues];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 objectForKeyedSubscript:v37];
  swift_unknownObjectRelease();

  if (v38)
  {
    v289 = v38;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    if (swift_dynamicCast())
    {
      v39 = v290;
      v40 = v291;
      sub_10005F304(v290, v291);
      v41 = sub_10005D098();
      v42 = static MADigest.hash(data:hashType:)(v39, v40, v41);
      v44 = v43;
      v273 = v39;
      v266 = v40;
      sub_10005F358(v39, v40);
      v270 = 0;
      v277 = 0;
      v271 = 0;
      v45 = 0;
      v46 = v286;
      v47 = v287;
      p_type = &stru_100124FF0.type;
      goto LABEL_4;
    }
  }

  v67 = [objc_opt_self() randomDataInHex:32];
  if (!v67)
  {

    nullsub_1();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    sub_100092A98();
    swift_allocError();
    *v83 = v78;
    *(v83 + 8) = v80;
    *(v83 + 16) = v82;
    swift_willThrow();

    return sub_100066C80(v287, &qword_100128808, &unk_1000E6C50);
  }

  v68 = v67;
  v270 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v277 = v69;
  v70 = [v288 tempAssetPath:v68];

  v71 = v70;
  if (!v70)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = String._bridgeToObjectiveC()();
  }

  v271 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;
  if (!CKRecord.subscript.getter())
  {

LABEL_21:

    (*(v28 + 56))(v26, 1, 1, v27);
LABEL_25:
    v86 = v287;
    sub_100066C80(v26, &qword_100128800, &qword_1000E6C48);
    v290 = 0;
    v291 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v290 = 0xD00000000000001ELL;
    v291 = 0x80000001000F1230;
    v87 = [a1 description];
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    v91._countAndFlagsBits = v88;
    v91._object = v90;
    String.append(_:)(v91);

    nullsub_1();
    LOBYTE(v87) = v92;
    v94 = v93;
    v96 = v95;
    sub_100092A98();
    swift_allocError();
    *v97 = v87;
    *(v97 + 8) = v94;
    *(v97 + 16) = v96;
    swift_willThrow();

    return sub_100066C80(v86, &qword_100128808, &unk_1000E6C50);
  }

  objc_opt_self();
  v74 = swift_dynamicCastObjCClass();
  if (!v74)
  {

    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v269 = v73;
  v75 = [v74 fileURL];
  swift_unknownObjectRelease();
  if (v75)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = 0;
  }

  else
  {
    v76 = 1;
  }

  v85 = v273;
  (*(v28 + 56))(v24, v76, 1, v27);
  sub_1000AF918(v24, v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {

    goto LABEL_25;
  }

  (*(v28 + 32))(v85, v26, v27);
  v98 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v99);
  v101 = v100;
  v102 = [objc_opt_self() fileURLWithPath:v71];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL._bridgeToObjectiveC()(v103);
  v105 = v104;
  v108 = *(v28 + 8);
  v107 = v28 + 8;
  v106 = v108;
  v108(v31, v27);
  v290 = 0;
  v109 = [v98 moveItemAtURL:v101 toURL:v105 error:&v290];

  if (!v109)
  {
    v115 = v290;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100066C80(v287, &qword_100128808, &unk_1000E6C50);
    return v106(v273, v27);
  }

  v266 = v107;
  v110 = v290;
  v111 = sub_10005D098();
  v112 = v286;
  v113 = static MADigest.hash(fileAtPath:hashType:)(v271, v269, v111);
  v46 = v112;
  v47 = v287;
  if (v112)
  {

    sub_100066C80(v47, &qword_100128808, &unk_1000E6C50);
    return v106(v273, v27);
  }

  v267 = v114;
  v268 = v113;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v233 = type metadata accessor for Logger();
  sub_100066000(v233, qword_10012A3A8);
  v234 = v269;

  v235 = Logger.logObject.getter();
  v236 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v235, v236))
  {
    v237 = swift_slowAlloc();
    v238 = swift_slowAlloc();
    v286 = 0;
    v239 = v238;
    v290 = v238;
    *v237 = 136315138;
    *(v237 + 4) = sub_100065658(v271, v234, &v290);
    _os_log_impl(&_mh_execute_header, v235, v236, "Asset from Cloud stored at %s", v237, 0xCu);
    sub_10005D588(v239);
    v46 = v286;
  }

  v106(v273, v27);
  p_type = (&stru_100124FF0 + 16);
  v273 = 0;
  v266 = 0xF000000000000000;
  v45 = v269;
  v42 = v268;
  v44 = v267;
LABEL_4:
  v269 = v45;
  v49 = [a1 p_type[251]];
  v50 = String._bridgeToObjectiveC()();
  v51 = [v49 objectForKeyedSubscript:v50];
  swift_unknownObjectRelease();

  v268 = v42;
  v286 = v46;
  v267 = v44;
  if (v51)
  {
    v289 = v51;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    if (swift_dynamicCast())
    {
      v53 = v290;
      v52 = v291;
      sub_10005F304(v42, v44);
      v54 = sub_1000AF4B8(v42, v44, v53, v52);
      sub_10005F358(v42, v44);
      if (!v54)
      {
        if (qword_10012A3A0 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_100066000(v55, qword_10012A3A8);
        sub_10005F304(v42, v44);
        sub_10005F304(v53, v52);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        sub_10005F358(v53, v52);
        v58 = v44;
        v59 = v56;
        sub_10005F358(v42, v58);
        if (os_log_type_enabled(v56, v57))
        {
          v60 = swift_slowAlloc();
          v265 = swift_slowAlloc();
          v290 = v265;
          *v60 = 136315394;
          v61 = sub_10005FFFC(v53, v52);
          v63 = sub_100065658(v61, v62, &v290);

          *(v60 + 4) = v63;
          *(v60 + 12) = 2080;
          v64 = sub_10005FFFC(v268, v267);
          v66 = sub_100065658(v64, v65, &v290);

          *(v60 + 14) = v66;
          v47 = v287;
          _os_log_impl(&_mh_execute_header, v59, v57, "assetHash in Cloud %s is different than calculated %s", v60, 0x16u);
          swift_arrayDestroy();

          sub_10005F358(v53, v52);

          goto LABEL_32;
        }
      }

      sub_10005F358(v53, v52);
    }
  }

LABEL_32:
  LODWORD(v265) = sub_1000C182C(3u, 1, 0);
  v116 = v274;
  sub_1000939A8(v47, v274, &qword_100128808, &unk_1000E6C50);
  v117 = type metadata accessor for MACloudMAAsset(0);
  if ((*(*(v117 - 1) + 48))(v116, 1) == 1)
  {
    sub_100066C80(v116, &qword_100128808, &unk_1000E6C50);
    v264 = 0;
    v263 = 0;
  }

  else
  {
    v118 = *(v116 + 48);
    v264 = *(v116 + 40);
    v263 = v118;

    sub_1000AF8BC(v116);
  }

  v119 = &selRef_getBaseStoreName_baseGroup_baseProfile_error_;
  v120 = [a1 p_type[251]];
  v121 = String._bridgeToObjectiveC()();
  v122 = [v120 objectForKeyedSubscript:v121];
  swift_unknownObjectRelease();

  if (v122 && (v290 = v122, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), swift_dynamicCast()))
  {
    v274 = v289;
  }

  else
  {
    v274 = 0;
  }

  v123 = [a1 p_type[251]];
  v124 = String._bridgeToObjectiveC()();
  v125 = [v123 objectForKeyedSubscript:v124];
  swift_unknownObjectRelease();

  if (v125 && (v290 = v125, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), swift_dynamicCast()))
  {
    v262 = v289;
  }

  else
  {
    v262 = 0;
  }

  v126 = [a1 p_type[251]];
  v127 = String._bridgeToObjectiveC()();
  v128 = [v126 objectForKeyedSubscript:v127];
  swift_unknownObjectRelease();

  if (v128)
  {
    v289 = v128;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v129 = swift_dynamicCast();
    v130 = v290;
    if (!v129)
    {
      v130 = 0;
    }

    v261 = v130;
    if (v129)
    {
      v131 = v291;
    }

    else
    {
      v131 = 0;
    }

    v260 = v131;
  }

  else
  {
    v261 = 0;
    v260 = 0;
  }

  v132 = [a1 p_type[251]];
  v133 = String._bridgeToObjectiveC()();
  v134 = [v132 objectForKeyedSubscript:v133];
  swift_unknownObjectRelease();

  if (v134)
  {
    v290 = v134;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v135 = type metadata accessor for Date();
    v136 = v278;
    v137 = swift_dynamicCast() ^ 1;
    v138 = v136;
    v119 = &selRef_getBaseStoreName_baseGroup_baseProfile_error_;
    (*(*(v135 - 8) + 56))(v138, v137, 1, v135);
  }

  else
  {
    v139 = type metadata accessor for Date();
    (*(*(v139 - 8) + 56))(v278, 1, 1, v139);
  }

  v140 = [a1 p_type[251]];
  v141 = String._bridgeToObjectiveC()();
  v142 = [v140 v119[134]];
  swift_unknownObjectRelease();

  if (v142)
  {
    v290 = v142;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v143 = type metadata accessor for Date();
    v144 = v279;
    v145 = swift_dynamicCast();
    (*(*(v143 - 8) + 56))(v144, v145 ^ 1u, 1, v143);
  }

  else
  {
    v146 = type metadata accessor for Date();
    (*(*(v146 - 8) + 56))(v279, 1, 1, v146);
  }

  v147 = [a1 p_type[251]];
  v148 = String._bridgeToObjectiveC()();
  v149 = [v147 objectForKeyedSubscript:v148];
  swift_unknownObjectRelease();

  if (v149)
  {
    v289 = v149;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v150 = swift_dynamicCast();
    v151 = v290;
    if (!v150)
    {
      v151 = 0;
    }

    v259 = v151;
    if (v150)
    {
      v152 = v291;
    }

    else
    {
      v152 = 0;
    }

    v258 = v152;
  }

  else
  {
    v259 = 0;
    v258 = 0;
  }

  v153 = [a1 p_type[251]];
  v154 = String._bridgeToObjectiveC()();
  v155 = [v153 objectForKeyedSubscript:v154];
  swift_unknownObjectRelease();

  if (v155)
  {
    v289 = v155;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v156 = swift_dynamicCast();
    v157 = v290;
    if (!v156)
    {
      v157 = 0;
    }

    v257 = v157;
    if (v156)
    {
      v158 = v291;
    }

    else
    {
      v158 = 0;
    }

    v256 = v158;
  }

  else
  {
    v257 = 0;
    v256 = 0;
  }

  v159 = [a1 p_type[251]];
  v160 = String._bridgeToObjectiveC()();
  v161 = [v159 objectForKeyedSubscript:v160];
  swift_unknownObjectRelease();

  if (v161)
  {
    v289 = v161;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v162 = swift_dynamicCast();
    v163 = v290;
    if (!v162)
    {
      v163 = 0;
    }

    v255 = v163;
    if (v162)
    {
      v164 = v291;
    }

    else
    {
      v164 = 0;
    }

    v254 = v164;
  }

  else
  {
    v255 = 0;
    v254 = 0;
  }

  v165 = [a1 p_type[251]];
  v166 = String._bridgeToObjectiveC()();
  v167 = [v165 objectForKeyedSubscript:v166];
  swift_unknownObjectRelease();

  if (v167 && (v290 = v167, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), swift_dynamicCast()))
  {
    v168 = v289;
  }

  else
  {
    v168 = sub_1000BF320(-2);
  }

  v253 = sub_1000BF304(v168);
  v169 = [a1 p_type[251]];
  v170 = String._bridgeToObjectiveC()();
  v171 = [v169 objectForKeyedSubscript:v170];
  swift_unknownObjectRelease();

  if (v171)
  {
    v289 = v171;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v172 = swift_dynamicCast();
    v173 = v290;
    if (!v172)
    {
      v173 = 0;
    }

    v252 = v173;
    if (v172)
    {
      v174 = v291;
    }

    else
    {
      v174 = 0;
    }

    v251 = v174;
  }

  else
  {
    v252 = 0;
    v251 = 0;
  }

  v175 = [a1 p_type[251]];
  v176 = String._bridgeToObjectiveC()();
  v177 = [v175 objectForKeyedSubscript:v176];
  swift_unknownObjectRelease();

  if (v177)
  {
    v290 = v177;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v178 = swift_dynamicCast();
    v179 = v280;
    if (v178)
    {
      v250 = v289;
    }

    else
    {
      v250 = 0;
    }
  }

  else
  {
    v250 = 0;
    v179 = v280;
  }

  v180 = [a1 p_type[251]];
  v181 = String._bridgeToObjectiveC()();
  v182 = [v180 objectForKeyedSubscript:v181];
  swift_unknownObjectRelease();

  v183 = 0xF000000000000000;
  if (v182)
  {
    v289 = v182;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v184 = swift_dynamicCast();
    v185 = v290;
    if (!v184)
    {
      v185 = 0;
    }

    v248 = v185;
    if (v184)
    {
      v183 = v291;
    }

    v249 = v183;
  }

  else
  {
    v249 = 0xF000000000000000;
    v248 = 0;
  }

  v186 = [a1 p_type[251]];
  v187 = String._bridgeToObjectiveC()();
  v188 = [v186 objectForKeyedSubscript:v187];
  swift_unknownObjectRelease();

  v189 = 0xF000000000000000;
  if (v188)
  {
    v289 = v188;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v190 = swift_dynamicCast();
    v191 = v290;
    if (!v190)
    {
      v191 = 0;
    }

    v246 = v191;
    if (v190)
    {
      v189 = v291;
    }
  }

  else
  {
    v246 = 0;
  }

  v192 = [a1 etag];
  if (v192)
  {
    v193 = v192;
    v245 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v244 = v194;
  }

  else
  {
    v245 = 0;
    v244 = 0;
  }

  v195 = [a1 creationDate];
  v247 = v189;
  if (v195)
  {
    v196 = v195;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v197 = 0;
  }

  else
  {
    v197 = 1;
  }

  v198 = type metadata accessor for Date();
  v199 = *(*(v198 - 8) + 56);
  v200 = 1;
  (v199)(v179, v197, 1, v198);
  v201 = [a1 modificationDate];
  v202 = v281;
  if (v201)
  {
    v203 = v201;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v200 = 0;
  }

  (v199)(v202, v200, 1, v198);
  v204 = v282;
  Date.init()();

  sub_100066C80(v287, &qword_100128808, &unk_1000E6C50);
  (v199)(v204, 0, 1, v198);
  (v199)(v283, 1, 1, v198);
  v205 = v276;
  *(v276 + 16) = 0;
  *(v205 + 24) = 0;
  v288 = xmmword_1000E6BC0;
  *(v205 + 120) = xmmword_1000E6BC0;
  v242 = v205 + v117[17];
  v199();
  v240 = v205 + v117[18];
  v199();
  v206 = v205 + v117[25];
  v207 = v288;
  *v206 = v288;
  v208 = v205 + v117[26];
  *v208 = v207;
  *&v288 = v205 + v117[28];
  v199();
  v287 = v205 + v117[29];
  v199();
  v243 = v205 + v117[30];
  v199();
  v241 = v205 + v117[31];
  v199();
  v209 = v263;
  *(v205 + 40) = v264;
  *(v205 + 48) = v209;
  v210 = v285;
  if (v285)
  {
    v211 = HIBYTE(v285) & 0xF;
    if ((v285 & 0x2000000000000000) == 0)
    {
      v211 = v272 & 0xFFFFFFFFFFFFLL;
    }

    if (v211)
    {
      *(v205 + 16) = v272;
      *(v205 + 24) = v210;
    }

    else
    {
    }
  }

  v212 = (v205 + v117[19]);
  v213 = (v205 + v117[20]);
  v214 = v117[21];
  v285 = v117[22];
  v215 = (v205 + v214);
  v216 = (v205 + v117[23]);
  v217 = (v205 + v117[27]);
  v218 = v284;
  *v205 = v275;
  *(v205 + 8) = v218;
  v219 = v265;
  *(v205 + 32) = v265;
  *(v205 + 33) = BYTE1(v219) & 1;
  *(v205 + 34) = BYTE2(v219) & 1;
  v220 = v277;
  *(v205 + 56) = v270;
  *(v205 + 64) = v220;
  *(v205 + 72) = 0u;
  *(v205 + 88) = 0u;
  v221 = v269;
  *(v205 + 104) = v271;
  *(v205 + 112) = v221;
  sub_10005F69C(*(v205 + 120), *(v205 + 128));
  v222 = v266;
  *(v205 + 120) = v273;
  *(v205 + 128) = v222;
  v223 = v267;
  *(v205 + 136) = v268;
  *(v205 + 144) = v223;
  v224 = v262;
  *(v205 + 152) = v274;
  *(v205 + 160) = v224;
  v225 = v260;
  *(v205 + 168) = v261;
  *(v205 + 176) = v225;
  sub_1000941F8(v278, v242);
  sub_1000941F8(v279, v240);
  v226 = v258;
  *v212 = v259;
  v212[1] = v226;
  v227 = v256;
  *v213 = v257;
  v213[1] = v227;
  v228 = v254;
  *v215 = v255;
  v215[1] = v228;
  *(v205 + v117[24]) = v253;
  v229 = v251;
  *v216 = v252;
  v216[1] = v229;
  *(v205 + v285) = v250;
  sub_10005F69C(*v206, *(v206 + 8));
  v230 = v249;
  *v206 = v248;
  *(v206 + 8) = v230;
  sub_10005F69C(*v208, *(v208 + 8));
  v231 = v247;
  *v208 = v246;
  *(v208 + 8) = v231;
  v232 = v244;
  *v217 = v245;
  v217[1] = v232;
  sub_1000941F8(v280, v288);
  sub_1000941F8(v281, v287);
  sub_1000941F8(v282, v243);
  return sub_1000941F8(v283, v241);
}

uint64_t sub_10009B378()
{
  v0 = *sub_1000C549C();

  return v0;
}

uint64_t sub_10009B3AC()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t sub_10009B414(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
}

uint64_t sub_10009B4AC()
{
  swift_beginAccess();
  v1 = *(v0 + 160);

  return v1;
}

uint64_t sub_10009B4F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

uint64_t sub_10009B5D0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 176) = a1;
  return result;
}

uint64_t sub_10009B660()
{
  sub_10005F5CC(&qword_100128820, &qword_1000E6C68);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000E6BD0;
  sub_10005F5CC(&qword_100128828, &unk_1000E6C70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000E6BE0;
  *(v1 + 32) = 0x614E64726F636572;
  *(v1 + 40) = 0xEA0000000000656DLL;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = 3;
  *(v1 + 120) = &type metadata for UInt;
  *(v1 + 88) = &type metadata for UInt;
  *(v1 + 96) = 1;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000E6BE0;
  strcpy((v2 + 32), "recordAccount");
  *(v2 + 46) = -4864;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = 3;
  *(v2 + 120) = &type metadata for Int;
  *(v2 + 88) = &type metadata for UInt;
  *(v2 + 96) = 0;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000E6BE0;
  *(v3 + 32) = 0x6E61487465737361;
  *(v3 + 40) = 0xEB00000000656C64;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = 3;
  *(v3 + 120) = &type metadata for Int;
  *(v3 + 88) = &type metadata for UInt;
  *(v3 + 96) = 0;
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000E6BE0;
  *(v4 + 32) = 0x74617453636E7973;
  *(v4 + 40) = 0xE900000000000065;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = 1;
  *(v4 + 120) = &type metadata for Int;
  *(v4 + 88) = &type metadata for UInt;
  *(v4 + 96) = 0;
  *(v0 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000E6BE0;
  *(v5 + 32) = 0x756F6C436D6F7266;
  *(v5 + 40) = 0xE900000000000064;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = 1;
  *(v5 + 120) = &type metadata for Int;
  *(v5 + 88) = &type metadata for UInt;
  *(v5 + 96) = 0;
  *(v0 + 64) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000E6BE0;
  *(v6 + 32) = 0x6B63416C61636F6CLL;
  *(v6 + 40) = 0xEA00000000006465;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = 1;
  *(v6 + 120) = &type metadata for Int;
  *(v6 + 88) = &type metadata for UInt;
  *(v6 + 96) = 0;
  *(v0 + 72) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000E6BE0;
  strcpy((v7 + 32), "sessionToken");
  *(v7 + 45) = 0;
  *(v7 + 46) = -5120;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = 3;
  *(v7 + 120) = &type metadata for Int;
  *(v7 + 88) = &type metadata for UInt;
  *(v7 + 96) = 0;
  *(v0 + 80) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000E6BE0;
  *(v8 + 32) = 0x7461507465737361;
  *(v8 + 40) = 0xE900000000000068;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = 3;
  *(v8 + 120) = &type metadata for Int;
  *(v8 + 88) = &type metadata for UInt;
  *(v8 + 96) = 0;
  *(v0 + 88) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000E6BE0;
  *(v9 + 32) = 0xD000000000000012;
  *(v9 + 40) = 0x80000001000F1250;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = 3;
  *(v9 + 120) = &type metadata for Int;
  *(v9 + 88) = &type metadata for UInt;
  *(v9 + 96) = 0;
  *(v0 + 96) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000E6BE0;
  *(v10 + 32) = 0xD000000000000014;
  *(v10 + 40) = 0x80000001000F1270;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = 3;
  *(v10 + 120) = &type metadata for Int;
  *(v10 + 88) = &type metadata for UInt;
  *(v10 + 96) = 0;
  *(v0 + 104) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000E6BE0;
  *(v11 + 32) = 0x7461447465737361;
  *(v11 + 40) = 0xE900000000000061;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = 4;
  *(v11 + 120) = &type metadata for Int;
  *(v11 + 88) = &type metadata for UInt;
  *(v11 + 96) = 0;
  *(v0 + 112) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000E6BE0;
  *(v12 + 32) = 0x7361487465737361;
  *(v12 + 40) = 0xE900000000000068;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = 4;
  *(v12 + 120) = &type metadata for Int;
  *(v12 + 88) = &type metadata for UInt;
  *(v12 + 96) = 0;
  *(v0 + 120) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000E6BE0;
  *(v13 + 32) = 0x7A69537465737361;
  *(v13 + 40) = 0xE900000000000065;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = 1;
  *(v13 + 120) = &type metadata for Int;
  *(v13 + 88) = &type metadata for UInt;
  *(v13 + 96) = 0;
  *(v0 + 128) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000E6BE0;
  *(v14 + 32) = 0x7079547465737361;
  *(v14 + 40) = 0xE900000000000065;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = 1;
  *(v14 + 120) = &type metadata for Int;
  *(v14 + 88) = &type metadata for UInt;
  *(v14 + 96) = 0;
  *(v0 + 136) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000E6BE0;
  *(v15 + 32) = 0x62614C7465737361;
  *(v15 + 40) = 0xEA00000000006C65;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = 3;
  *(v15 + 120) = &type metadata for Int;
  *(v15 + 88) = &type metadata for UInt;
  *(v15 + 96) = 0;
  *(v0 + 144) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000E6BE0;
  strcpy((v16 + 32), "creationTime");
  *(v16 + 45) = 0;
  *(v16 + 46) = -5120;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = 2;
  *(v16 + 120) = &type metadata for Int;
  *(v16 + 88) = &type metadata for UInt;
  *(v16 + 96) = 0;
  *(v0 + 152) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000E6BE0;
  *(v17 + 32) = 0x616470557473616CLL;
  *(v17 + 40) = 0xEF656D6954646574;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = 2;
  *(v17 + 120) = &type metadata for Int;
  *(v17 + 88) = &type metadata for UInt;
  *(v17 + 96) = 0;
  *(v0 + 160) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000E6BE0;
  *(v18 + 32) = 0xD00000000000001BLL;
  *(v18 + 40) = 0x80000001000F11C0;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = 3;
  *(v18 + 120) = &type metadata for Int;
  *(v18 + 88) = &type metadata for UInt;
  *(v18 + 96) = 0;
  *(v0 + 168) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000E6BE0;
  *(v19 + 32) = 0xD000000000000014;
  *(v19 + 40) = 0x80000001000F11E0;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = 3;
  *(v19 + 120) = &type metadata for Int;
  *(v19 + 88) = &type metadata for UInt;
  *(v19 + 96) = 0;
  *(v0 + 176) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000E6BE0;
  *(v20 + 32) = 0xD000000000000014;
  *(v20 + 40) = 0x80000001000F11A0;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = 3;
  *(v20 + 120) = &type metadata for Int;
  *(v20 + 88) = &type metadata for UInt;
  *(v20 + 96) = 0;
  *(v0 + 184) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000E6BE0;
  *(v21 + 32) = 0x54656C69666F7270;
  *(v21 + 40) = 0xEB00000000657079;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = 1;
  *(v21 + 120) = &type metadata for Int;
  *(v21 + 88) = &type metadata for UInt;
  *(v21 + 96) = 0;
  *(v0 + 192) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000E6BE0;
  strcpy((v22 + 32), "assetProcess");
  *(v22 + 45) = 0;
  *(v22 + 46) = -5120;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = 3;
  *(v22 + 120) = &type metadata for Int;
  *(v22 + 88) = &type metadata for UInt;
  *(v22 + 96) = 0;
  *(v0 + 200) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000E6BE0;
  *(v23 + 32) = 0x6974704F636E7973;
  *(v23 + 40) = 0xEA00000000006E6FLL;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = 1;
  *(v23 + 120) = &type metadata for Int;
  *(v23 + 88) = &type metadata for UInt;
  *(v23 + 96) = 0;
  *(v0 + 208) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000E6BE0;
  strcpy((v24 + 32), "creatorAttest");
  *(v24 + 46) = -4864;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = 4;
  *(v24 + 120) = &type metadata for Int;
  *(v24 + 88) = &type metadata for UInt;
  *(v24 + 96) = 0;
  *(v0 + 216) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000E6BE0;
  strcpy((v25 + 32), "serverAttest");
  *(v25 + 45) = 0;
  *(v25 + 46) = -5120;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = 4;
  *(v25 + 120) = &type metadata for Int;
  *(v25 + 88) = &type metadata for UInt;
  *(v25 + 96) = 0;
  *(v0 + 224) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000E6BE0;
  *(v26 + 32) = 0x676154456B63;
  *(v26 + 40) = 0xE600000000000000;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = 3;
  *(v26 + 120) = &type metadata for Int;
  *(v26 + 88) = &type metadata for UInt;
  *(v26 + 96) = 0;
  *(v0 + 232) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000E6BE0;
  strcpy((v27 + 32), "ckCreatedDate");
  *(v27 + 46) = -4864;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = 2;
  *(v27 + 120) = &type metadata for Int;
  *(v27 + 88) = &type metadata for UInt;
  *(v27 + 96) = 0;
  *(v0 + 240) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000E6BE0;
  strcpy((v28 + 32), "ckModifiedDate");
  *(v28 + 47) = -18;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = 2;
  *(v28 + 120) = &type metadata for Int;
  *(v28 + 88) = &type metadata for UInt;
  *(v28 + 96) = 0;
  *(v0 + 248) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1000E6BE0;
  *(v29 + 32) = 0x6144636E79536B63;
  *(v29 + 40) = 0xEA00000000006574;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = 2;
  *(v29 + 120) = &type metadata for Int;
  *(v29 + 88) = &type metadata for UInt;
  *(v29 + 96) = 0;
  *(v0 + 256) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000E6BE0;
  *(v30 + 32) = 0xD000000000000010;
  *(v30 + 40) = 0x80000001000F1290;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = 2;
  *(v30 + 120) = &type metadata for Int;
  *(v30 + 88) = &type metadata for UInt;
  *(v30 + 96) = 0;
  *(v0 + 264) = v30;
  return v0;
}

uint64_t sub_10009BF48(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_10009BF98(a1, a2);
  return v4;
}

uint64_t sub_10009BF98(void *a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v3 = sub_1000C549C();
  v4 = *(v3 + 1);
  *(v2 + 136) = *v3;
  *(v2 + 144) = v4;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 152) = 0;
  *(v2 + 176) = 0;
  sub_10005F5CC(&qword_100128820, &qword_1000E6C68);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000E6BD0;
  sub_10005F5CC(&qword_100128828, &unk_1000E6C70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000E6BE0;
  *(v6 + 32) = 0x614E64726F636572;
  *(v6 + 40) = 0xEA0000000000656DLL;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = 3;
  *(v6 + 120) = &type metadata for UInt;
  *(v6 + 88) = &type metadata for UInt;
  *(v6 + 96) = 1;
  *(v5 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000E6BE0;
  strcpy((v7 + 32), "recordAccount");
  *(v7 + 46) = -4864;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = 3;
  *(v7 + 120) = &type metadata for Int;
  *(v7 + 88) = &type metadata for UInt;
  *(v7 + 96) = 0;
  *(v5 + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000E6BE0;
  *(v8 + 32) = 0x6E61487465737361;
  *(v8 + 40) = 0xEB00000000656C64;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = 3;
  *(v8 + 120) = &type metadata for Int;
  *(v8 + 88) = &type metadata for UInt;
  *(v8 + 96) = 0;
  *(v5 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000E6BE0;
  *(v9 + 32) = 0x74617453636E7973;
  *(v9 + 40) = 0xE900000000000065;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = 1;
  *(v9 + 120) = &type metadata for Int;
  *(v9 + 88) = &type metadata for UInt;
  *(v9 + 96) = 0;
  *(v5 + 56) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000E6BE0;
  *(v10 + 32) = 0x756F6C436D6F7266;
  *(v10 + 40) = 0xE900000000000064;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = 1;
  *(v10 + 120) = &type metadata for Int;
  *(v10 + 88) = &type metadata for UInt;
  *(v10 + 96) = 0;
  *(v5 + 64) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000E6BE0;
  *(v11 + 32) = 0x6B63416C61636F6CLL;
  *(v11 + 40) = 0xEA00000000006465;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = 1;
  *(v11 + 120) = &type metadata for Int;
  *(v11 + 88) = &type metadata for UInt;
  *(v11 + 96) = 0;
  *(v5 + 72) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000E6BE0;
  strcpy((v12 + 32), "sessionToken");
  *(v12 + 45) = 0;
  *(v12 + 46) = -5120;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = 3;
  *(v12 + 120) = &type metadata for Int;
  *(v12 + 88) = &type metadata for UInt;
  *(v12 + 96) = 0;
  *(v5 + 80) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000E6BE0;
  *(v13 + 32) = 0x7461507465737361;
  *(v13 + 40) = 0xE900000000000068;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = 3;
  *(v13 + 120) = &type metadata for Int;
  *(v13 + 88) = &type metadata for UInt;
  *(v13 + 96) = 0;
  *(v5 + 88) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000E6BE0;
  *(v14 + 32) = 0xD000000000000012;
  *(v14 + 40) = 0x80000001000F1250;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = 3;
  *(v14 + 120) = &type metadata for Int;
  *(v14 + 88) = &type metadata for UInt;
  *(v14 + 96) = 0;
  *(v5 + 96) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000E6BE0;
  *(v15 + 32) = 0xD000000000000014;
  *(v15 + 40) = 0x80000001000F1270;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = 3;
  *(v15 + 120) = &type metadata for Int;
  *(v15 + 88) = &type metadata for UInt;
  *(v15 + 96) = 0;
  *(v5 + 104) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000E6BE0;
  *(v16 + 32) = 0x7461447465737361;
  *(v16 + 40) = 0xE900000000000061;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = 4;
  *(v16 + 120) = &type metadata for Int;
  *(v16 + 88) = &type metadata for UInt;
  *(v16 + 96) = 0;
  *(v5 + 112) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000E6BE0;
  *(v17 + 32) = 0x7361487465737361;
  *(v17 + 40) = 0xE900000000000068;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = 4;
  *(v17 + 120) = &type metadata for Int;
  *(v17 + 88) = &type metadata for UInt;
  *(v17 + 96) = 0;
  *(v5 + 120) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000E6BE0;
  *(v18 + 32) = 0x7A69537465737361;
  *(v18 + 40) = 0xE900000000000065;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = 1;
  *(v18 + 120) = &type metadata for Int;
  *(v18 + 88) = &type metadata for UInt;
  *(v18 + 96) = 0;
  *(v5 + 128) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000E6BE0;
  *(v19 + 32) = 0x7079547465737361;
  *(v19 + 40) = 0xE900000000000065;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = 1;
  *(v19 + 120) = &type metadata for Int;
  *(v19 + 88) = &type metadata for UInt;
  *(v19 + 96) = 0;
  *(v5 + 136) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000E6BE0;
  *(v20 + 32) = 0x62614C7465737361;
  *(v20 + 40) = 0xEA00000000006C65;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = 3;
  *(v20 + 120) = &type metadata for Int;
  *(v20 + 88) = &type metadata for UInt;
  *(v20 + 96) = 0;
  *(v5 + 144) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000E6BE0;
  strcpy((v21 + 32), "creationTime");
  *(v21 + 45) = 0;
  *(v21 + 46) = -5120;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = 2;
  *(v21 + 120) = &type metadata for Int;
  *(v21 + 88) = &type metadata for UInt;
  *(v21 + 96) = 0;
  *(v5 + 152) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000E6BE0;
  *(v22 + 32) = 0x616470557473616CLL;
  *(v22 + 40) = 0xEF656D6954646574;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = 2;
  *(v22 + 120) = &type metadata for Int;
  *(v22 + 88) = &type metadata for UInt;
  *(v22 + 96) = 0;
  *(v5 + 160) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000E6BE0;
  *(v23 + 32) = 0xD00000000000001BLL;
  *(v23 + 40) = 0x80000001000F11C0;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = 3;
  *(v23 + 120) = &type metadata for Int;
  *(v23 + 88) = &type metadata for UInt;
  *(v23 + 96) = 0;
  *(v5 + 168) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000E6BE0;
  *(v24 + 32) = 0xD000000000000014;
  *(v24 + 40) = 0x80000001000F11E0;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = 3;
  *(v24 + 120) = &type metadata for Int;
  *(v24 + 88) = &type metadata for UInt;
  *(v24 + 96) = 0;
  *(v5 + 176) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000E6BE0;
  *(v25 + 32) = 0xD000000000000014;
  *(v25 + 40) = 0x80000001000F11A0;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = 3;
  *(v25 + 120) = &type metadata for Int;
  *(v25 + 88) = &type metadata for UInt;
  *(v25 + 96) = 0;
  *(v5 + 184) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000E6BE0;
  *(v26 + 32) = 0x54656C69666F7270;
  *(v26 + 40) = 0xEB00000000657079;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = 1;
  *(v26 + 120) = &type metadata for Int;
  *(v26 + 88) = &type metadata for UInt;
  *(v26 + 96) = 0;
  *(v5 + 192) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000E6BE0;
  strcpy((v27 + 32), "assetProcess");
  *(v27 + 45) = 0;
  *(v27 + 46) = -5120;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = 3;
  *(v27 + 120) = &type metadata for Int;
  *(v27 + 88) = &type metadata for UInt;
  *(v27 + 96) = 0;
  *(v5 + 200) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000E6BE0;
  *(v28 + 32) = 0x6974704F636E7973;
  *(v28 + 40) = 0xEA00000000006E6FLL;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = 1;
  *(v28 + 120) = &type metadata for Int;
  *(v28 + 88) = &type metadata for UInt;
  *(v28 + 96) = 0;
  *(v5 + 208) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1000E6BE0;
  strcpy((v29 + 32), "creatorAttest");
  *(v29 + 46) = -4864;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = 4;
  *(v29 + 120) = &type metadata for Int;
  *(v29 + 88) = &type metadata for UInt;
  *(v29 + 96) = 0;
  *(v5 + 216) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000E6BE0;
  strcpy((v30 + 32), "serverAttest");
  *(v30 + 45) = 0;
  *(v30 + 46) = -5120;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = 4;
  *(v30 + 120) = &type metadata for Int;
  *(v30 + 88) = &type metadata for UInt;
  *(v30 + 96) = 0;
  *(v5 + 224) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1000E6BE0;
  *(v31 + 32) = 0x676154456B63;
  *(v31 + 40) = 0xE600000000000000;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = 3;
  *(v31 + 120) = &type metadata for Int;
  *(v31 + 88) = &type metadata for UInt;
  *(v31 + 96) = 0;
  *(v5 + 232) = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1000E6BE0;
  strcpy((v32 + 32), "ckCreatedDate");
  *(v32 + 46) = -4864;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = 2;
  *(v32 + 120) = &type metadata for Int;
  *(v32 + 88) = &type metadata for UInt;
  *(v32 + 96) = 0;
  *(v5 + 240) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000E6BE0;
  strcpy((v33 + 32), "ckModifiedDate");
  *(v33 + 47) = -18;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = 2;
  *(v33 + 120) = &type metadata for Int;
  *(v33 + 88) = &type metadata for UInt;
  *(v33 + 96) = 0;
  *(v5 + 248) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000E6BE0;
  *(v34 + 32) = 0x6144636E79536B63;
  *(v34 + 40) = 0xEA00000000006574;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = 2;
  *(v34 + 120) = &type metadata for Int;
  *(v34 + 88) = &type metadata for UInt;
  *(v34 + 96) = 0;
  *(v5 + 256) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000E6BE0;
  *(v35 + 32) = 0xD000000000000010;
  *(v35 + 40) = 0x80000001000F1290;
  *(v35 + 56) = &type metadata for String;
  *(v35 + 64) = 2;
  *(v35 + 120) = &type metadata for Int;
  *(v35 + 88) = &type metadata for UInt;
  *(v35 + 96) = 0;
  *(v5 + 264) = v35;
  *(v2 + 184) = v5;
  type metadata accessor for MAKVStoreBase();

  v36 = a1;
  v37 = sub_100061BEC();
  v38 = sub_1000C450C(0xD000000000000011, 0x80000001000F1080, v5, v36, 0x6144636E79536B63, 0xEA00000000006574, 0, 0, 1, v37 & 1);
  *(v2 + 112) = v36;
  *(v2 + 120) = a2;
  *(v2 + 128) = v38;
  return v2;
}

unint64_t sub_10009C938(uint64_t *a1)
{
  v2 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v3 = __chkstk_darwin(v2 - 8);
  v166 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v165 = &v159 - v6;
  v7 = __chkstk_darwin(v5);
  v164 = &v159 - v8;
  __chkstk_darwin(v7);
  v163 = &v159 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v162 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v161 = &v159 - v15;
  v16 = __chkstk_darwin(v14);
  v160 = &v159 - v17;
  __chkstk_darwin(v16);
  v159 = &v159 - v18;
  v169 = type metadata accessor for MACloudMAAsset(0);
  __chkstk_darwin(v169);
  v20 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000AF988(_swiftEmptyArrayStorage);
  v22 = *a1;
  v23 = a1[1];
  v173 = &type metadata for String;
  *&v172 = v22;
  *(&v172 + 1) = v23;
  sub_1000AF7F4(&v172, v171);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v170 = v21;
  sub_1000AEE80(v171, 0x614E64726F636572, 0xEA0000000000656DLL, isUniquelyReferenced_nonNull_native);
  v25 = v170;
  v174 = v170;
  v26 = a1[3];
  v168 = v10;
  if (v26)
  {
    v27 = a1[2];
    v173 = &type metadata for String;
    *&v172 = v27;
    *(&v172 + 1) = v26;
    sub_1000AF7F4(&v172, v171);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v25;
    sub_1000AEE80(v171, 0x634164726F636572, 0xED0000746E756F63, v28);
    v25 = v170;
    v174 = v170;
  }

  v29 = a1[6];
  if (v29)
  {
    v30 = a1[5];
    v173 = &type metadata for String;
    *&v172 = v30;
    *(&v172 + 1) = v29;
    sub_1000AF7F4(&v172, v171);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v25;
    sub_1000AEE80(v171, 0x6E61487465737361, 0xEB00000000656C64, v31);
    v32 = v170;
  }

  else
  {
    sub_1000AE570(0x6E61487465737361, 0xEB00000000656C64, &v172);
    sub_100066C80(&v172, &unk_100128830, &qword_1000E7D40);
    v32 = v174;
  }

  v167 = v11;
  v33 = sub_1000C1778(*(a1 + 32));
  v173 = &type metadata for Int;
  *&v172 = v33;
  sub_1000AF7F4(&v172, v171);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v170 = v32;
  sub_1000AEE80(v171, 0x74617453636E7973, 0xE900000000000065, v34);
  v35 = v170;
  v173 = &type metadata for Int;
  v174 = v170;
  *&v172 = *(a1 + 33);
  sub_1000AF7F4(&v172, v171);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v170 = v35;
  sub_1000AEE80(v171, 0x756F6C436D6F7266, 0xE900000000000064, v36);
  v37 = v170;
  v38 = *(a1 + 34);
  v173 = &type metadata for Int;
  *&v172 = v38;
  sub_1000AF7F4(&v172, v171);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v170 = v37;
  sub_1000AEE80(v171, 0x6B63416C61636F6CLL, 0xEA00000000006465, v39);
  v174 = v170;
  v40 = a1[20];
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100066000(v41, qword_10012A3A8);
  sub_1000AF858(a1, v20);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v172 = v45;
    *v44 = 136315394;
    *&v171[0] = *(v20 + 20);
    type metadata accessor for MASDAssetType(0);
    sub_1000AF620(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    sub_1000AF8BC(v20);
    v49 = sub_100065658(v46, v48, &v172);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2048;
    *(v44 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v42, v43, "Asset type %s - %lu to store in local db", v44, 0x16u);
    sub_10005D588(v45);
  }

  else
  {

    sub_1000AF8BC(v20);
  }

  v173 = &type metadata for UInt;
  *&v172 = v40;
  sub_1000AF7F4(&v172, v171);
  v50 = v174;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v170 = v50;
  sub_1000AEE80(v171, 0x7079547465737361, 0xE900000000000065, v51);
  v53 = v169;
  v52 = v170;
  v174 = v170;
  v54 = a1[22];
  if (v54)
  {
    v55 = a1[21];
    v173 = &type metadata for String;
    *&v172 = v55;
    *(&v172 + 1) = v54;
    sub_1000AF7F4(&v172, v171);

    v56 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v52;
    sub_1000AEE80(v171, 0x62614C7465737361, 0xEA00000000006C65, v56);
    v174 = v170;
  }

  type metadata accessor for MAKVStoreBase();
  v57 = sub_1000C4C10(a1 + v53[17]);
  if ((v58 & 1) == 0)
  {
    v173 = &type metadata for Double;
    *&v172 = v57;
    sub_1000AF7F4(&v172, v171);
    v59 = v174;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v59;
    sub_1000AEE80(v171, 0x6E6F697461657263, 0xEC000000656D6954, v60);
    v174 = v170;
  }

  v61 = sub_1000C4C10(a1 + v53[18]);
  if ((v62 & 1) == 0)
  {
    v173 = &type metadata for Double;
    *&v172 = v61;
    sub_1000AF7F4(&v172, v171);
    v63 = v174;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v63;
    sub_1000AEE80(v171, 0x616470557473616CLL, 0xEF656D6954646574, v64);
    v174 = v170;
  }

  v65 = (a1 + v53[19]);
  v66 = v65[1];
  if (v66)
  {
    v67 = *v65;
    v173 = &type metadata for String;
    *&v172 = v67;
    *(&v172 + 1) = v66;
    sub_1000AF7F4(&v172, v171);

    v68 = v174;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v68;
    sub_1000AEE80(v171, 0xD000000000000014, 0x80000001000F11E0, v69);
    v174 = v170;
  }

  v70 = (a1 + v53[20]);
  v71 = v70[1];
  if (v71)
  {
    v72 = *v70;
    v173 = &type metadata for String;
    *&v172 = v72;
    *(&v172 + 1) = v71;
    sub_1000AF7F4(&v172, v171);

    v73 = v174;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v73;
    sub_1000AEE80(v171, 0xD00000000000001BLL, 0x80000001000F11C0, v74);
    v174 = v170;
  }

  v75 = (a1 + v53[21]);
  v76 = v75[1];
  if (v76)
  {
    v77 = *v75;
    v173 = &type metadata for String;
    *&v172 = v77;
    *(&v172 + 1) = v76;
    sub_1000AF7F4(&v172, v171);

    v78 = v174;
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v78;
    sub_1000AEE80(v171, 0xD000000000000014, 0x80000001000F11A0, v79);
    v80 = v170;
    v174 = v170;
  }

  else
  {
    v80 = v174;
  }

  v81 = sub_1000BF320(*(a1 + v53[24]));
  v173 = &type metadata for UInt;
  *&v172 = v81;
  sub_1000AF7F4(&v172, v171);
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v170 = v80;
  sub_1000AEE80(v171, 0x54656C69666F7270, 0xEB00000000657079, v82);
  v83 = v170;
  v84 = (a1 + v53[23]);
  v85 = v84[1];
  if (v85)
  {
    v86 = *v84;
    v173 = &type metadata for String;
    *&v172 = v86;
    *(&v172 + 1) = v85;
    sub_1000AF7F4(&v172, v171);

    v87 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v83;
    sub_1000AEE80(v171, 0x6F72507465737361, 0xEC00000073736563, v87);
    v83 = v170;
  }

  v88 = *(a1 + v53[22]);
  v173 = &type metadata for UInt;
  *&v172 = v88;
  sub_1000AF7F4(&v172, v171);
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v170 = v83;
  sub_1000AEE80(v171, 0x6974704F636E7973, 0xEA00000000006E6FLL, v89);
  v90 = v170;
  v174 = v170;
  v91 = a1[8];
  if (v91)
  {
    v92 = a1[7];
    v173 = &type metadata for String;
    *&v172 = v92;
    *(&v172 + 1) = v91;
    sub_1000AF7F4(&v172, v171);

    v93 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v90;
    sub_1000AEE80(v171, 0x546E6F6973736573, 0xEC0000006E656B6FLL, v93);
    v90 = v170;
    v174 = v170;
  }

  v94 = a1[12];
  if (v94)
  {
    v95 = a1[11];
    v173 = &type metadata for String;
    *&v172 = v95;
    *(&v172 + 1) = v94;
    sub_1000AF7F4(&v172, v171);

    v96 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v90;
    sub_1000AEE80(v171, 0xD000000000000012, 0x80000001000F1250, v96);
    v90 = v170;
    v174 = v170;
  }

  v97 = a1[14];
  if (v97)
  {
    v98 = a1[13];
    v173 = &type metadata for String;
    *&v172 = v98;
    *(&v172 + 1) = v97;
    sub_1000AF7F4(&v172, v171);

    v99 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v90;
    sub_1000AEE80(v171, 0xD000000000000014, 0x80000001000F1270, v99);
    v90 = v170;
    v174 = v170;
  }

  v100 = a1[17];
  v101 = a1[18];
  v173 = &type metadata for Data;
  *&v172 = v100;
  *(&v172 + 1) = v101;
  sub_1000AF7F4(&v172, v171);
  sub_10005F304(v100, v101);
  v102 = swift_isUniquelyReferenced_nonNull_native();
  v170 = v90;
  sub_1000AEE80(v171, 0x7361487465737361, 0xE900000000000068, v102);
  v103 = v170;
  v104 = a1[19];
  v173 = &type metadata for UInt64;
  *&v172 = v104;
  sub_1000AF7F4(&v172, v171);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v170 = v103;
  sub_1000AEE80(v171, 0x7A69537465737361, 0xE900000000000065, v105);
  v106 = v170;
  v107 = [objc_allocWithZone(NSNull) init];
  v108 = sub_100092C8C(0, &qword_1001290A0, NSNull_ptr);
  v173 = v108;
  *&v172 = v107;
  sub_1000AF7F4(&v172, v171);
  v109 = swift_isUniquelyReferenced_nonNull_native();
  v170 = v106;
  sub_1000AEE80(v171, 0x7461447465737361, 0xE900000000000061, v109);
  v110 = v170;
  v111 = [objc_allocWithZone(NSNull) init];
  v173 = v108;
  *&v172 = v111;
  sub_1000AF7F4(&v172, v171);
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v170 = v110;
  sub_1000AEE80(v171, 0x7461507465737361, 0xE900000000000068, v112);
  v113 = v170;
  v174 = v170;
  v114 = a1[16];
  if (v114 >> 60 == 15)
  {
    v115 = a1[10];
    v116 = v163;
    if (v115)
    {
      v117 = a1[9];
      v173 = &type metadata for String;
      *&v172 = v117;
      *(&v172 + 1) = v115;
      sub_1000AF7F4(&v172, v171);

      v118 = swift_isUniquelyReferenced_nonNull_native();
      v170 = v113;
      sub_1000AEE80(v171, 0x7461507465737361, 0xE900000000000068, v118);
      v113 = v170;
      v174 = v170;
    }

    v119 = v168;
  }

  else
  {
    v120 = a1[15];
    v173 = &type metadata for Data;
    *&v172 = v120;
    *(&v172 + 1) = v114;
    sub_1000AF7F4(&v172, v171);
    sub_100093FE8(v120, v114);
    sub_10005F304(v120, v114);
    v121 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v113;
    sub_1000AEE80(v171, 0x7461447465737361, 0xE900000000000061, v121);
    sub_10005F69C(v120, v114);
    v113 = v170;
    v174 = v170;
    v119 = v168;
    v116 = v163;
  }

  v122 = v169;
  v123 = (a1 + v169[25]);
  v124 = v123[1];
  v125 = v167;
  if (v124 >> 60 != 15)
  {
    v126 = *v123;
    v173 = &type metadata for Data;
    *&v172 = v126;
    *(&v172 + 1) = v124;
    sub_1000AF7F4(&v172, v171);
    sub_100093FE8(v126, v124);
    sub_10005F304(v126, v124);
    v127 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v113;
    sub_1000AEE80(v171, 0x41726F7461657263, 0xED00007473657474, v127);
    sub_10005F69C(v126, v124);
    v113 = v170;
    v174 = v170;
  }

  v128 = (a1 + v122[26]);
  v129 = v128[1];
  if (v129 >> 60 != 15)
  {
    v130 = *v128;
    v173 = &type metadata for Data;
    *&v172 = v130;
    *(&v172 + 1) = v129;
    sub_1000AF7F4(&v172, v171);
    sub_100093FE8(v130, v129);
    sub_10005F304(v130, v129);
    v131 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v113;
    sub_1000AEE80(v171, 0x7441726576726573, 0xEC00000074736574, v131);
    sub_10005F69C(v130, v129);
    v113 = v170;
    v174 = v170;
  }

  v132 = v164;
  v133 = (a1 + v122[27]);
  v134 = v133[1];
  if (v134)
  {
    v135 = *v133;
    v173 = &type metadata for String;
    *&v172 = v135;
    *(&v172 + 1) = v134;
    sub_1000AF7F4(&v172, v171);

    v136 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v113;
    sub_1000AEE80(v171, 0x676154456B63, 0xE600000000000000, v136);
    v113 = v170;
    v174 = v170;
  }

  sub_1000939A8(a1 + v122[28], v116, &qword_1001287D0, &qword_1000E6C30);
  v137 = *(v125 + 48);
  if (v137(v116, 1, v119) == 1)
  {
    sub_100066C80(v116, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v138 = v159;
    (*(v125 + 32))(v159, v116, v119);
    Date.timeIntervalSinceReferenceDate.getter();
    v173 = &type metadata for Double;
    *&v172 = v139;
    sub_1000AF7F4(&v172, v171);
    v140 = v174;
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v140;
    sub_1000AEE80(v171, 0x6574616572436B63, 0xED00006574614464, v141);
    v142 = v138;
    v122 = v169;
    (*(v125 + 8))(v142, v119);
    v113 = v170;
    v174 = v170;
  }

  sub_1000939A8(a1 + v122[29], v132, &qword_1001287D0, &qword_1000E6C30);
  if (v137(v132, 1, v119) == 1)
  {
    sub_100066C80(v132, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v143 = v160;
    (*(v125 + 32))(v160, v132, v119);
    Date.timeIntervalSinceReferenceDate.getter();
    v173 = &type metadata for Double;
    *&v172 = v144;
    sub_1000AF7F4(&v172, v171);
    v145 = v174;
    v146 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v145;
    sub_1000AEE80(v171, 0x696669646F4D6B63, 0xEE00657461446465, v146);
    (*(v125 + 8))(v143, v119);
    v113 = v170;
    v174 = v170;
  }

  v148 = v165;
  v147 = v166;
  sub_1000939A8(a1 + v169[30], v165, &qword_1001287D0, &qword_1000E6C30);
  if (v137(v148, 1, v119) == 1)
  {
    sub_100066C80(v148, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v149 = v148;
    v150 = v161;
    (*(v125 + 32))(v161, v149, v119);
    Date.timeIntervalSinceReferenceDate.getter();
    v173 = &type metadata for Double;
    *&v172 = v151;
    sub_1000AF7F4(&v172, v171);
    v152 = v174;
    v153 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v152;
    sub_1000AEE80(v171, 0x6144636E79536B63, 0xEA00000000006574, v153);
    (*(v125 + 8))(v150, v119);
    v113 = v170;
    v174 = v170;
  }

  sub_1000939A8(a1 + v169[31], v147, &qword_1001287D0, &qword_1000E6C30);
  if (v137(v147, 1, v119) == 1)
  {
    sub_100066C80(v147, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v154 = v162;
    (*(v125 + 32))(v162, v147, v119);
    Date.timeIntervalSinceReferenceDate.getter();
    v173 = &type metadata for Double;
    *&v172 = v155;
    sub_1000AF7F4(&v172, v171);
    v156 = v174;
    v157 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v156;
    sub_1000AEE80(v171, 0xD000000000000010, 0x80000001000F1290, v157);
    (*(v125 + 8))(v154, v119);
    return v170;
  }

  return v113;
}

uint64_t sub_10009DD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v244 = a2;
  v3 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v4 = __chkstk_darwin(v3 - 8);
  v257 = &v195 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v250 = &v195 - v7;
  v8 = __chkstk_darwin(v6);
  v249 = &v195 - v9;
  v10 = __chkstk_darwin(v8);
  v248 = &v195 - v11;
  v12 = __chkstk_darwin(v10);
  v247 = &v195 - v13;
  __chkstk_darwin(v12);
  v246 = &v195 - v14;
  v245 = type metadata accessor for MACloudMAAsset(0);
  v15 = __chkstk_darwin(v245);
  v17 = &v195 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v195 - v19;
  __chkstk_darwin(v18);
  v22 = &v195 - v21;
  if (*(a1 + 16) && (v23 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL), (v24 & 1) != 0) && (sub_100066130(*(a1 + 56) + 32 * v23, &v255), (swift_dynamicCast() & 1) != 0))
  {
    v25 = v254;
    v241 = v253;
  }

  else
  {
    v241 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = *(a1 + 16);
  v242 = v17;
  v243 = v22;
  if (!v26)
  {
    v29 = 0;
    goto LABEL_17;
  }

  v27 = sub_100065A98(0x74617453636E7973, 0xE900000000000065);
  if ((v28 & 1) == 0 || (sub_100066130(*(a1 + 56) + 32 * v27, &v255), !swift_dynamicCast()))
  {
    v29 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_12;
    }

LABEL_17:
    v32 = 0;
LABEL_18:
    v33 = 0;
    goto LABEL_19;
  }

  v29 = v253;
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

LABEL_12:
  v30 = sub_100065A98(0x756F6C436D6F7266, 0xE900000000000064);
  if ((v31 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v30, &v255), swift_dynamicCast()))
  {
    v32 = v253 == 1;
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v32 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  v42 = sub_100065A98(0x6B63416C61636F6CLL, 0xEA00000000006465);
  if ((v43 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100066130(*(a1 + 56) + 32 * v42, &v255);
  if (!swift_dynamicCast())
  {
    goto LABEL_18;
  }

  v33 = v253 == 1;
LABEL_19:
  v34 = sub_1000C1780(v29);
  if (v34 == 11)
  {

    *&v255 = 0;
    *(&v255 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    *&v255 = 0xD000000000000020;
    *(&v255 + 1) = 0x80000001000F12B0;
    v35._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v35);

LABEL_33:
    nullsub_1();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_100092A98();
    swift_allocError();
    *v51 = v46;
    *(v51 + 8) = v48;
    *(v51 + 16) = v50;
    return swift_willThrow();
  }

  if (!*(a1 + 16) || (v36 = v34, v240 = v25, v37 = sub_100065A98(0x7361487465737361, 0xE900000000000068), (v38 & 1) == 0) || (sub_100066130(*(a1 + 56) + 32 * v37, &v255), (swift_dynamicCast() & 1) == 0))
  {

    *&v255 = 0;
    *(&v255 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *&v255 = 0xD000000000000021;
    *(&v255 + 1) = 0x80000001000F12E0;
    v44._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v44);

    goto LABEL_33;
  }

  v239 = v253;
  v238 = v254;
  if (!*(a1 + 16))
  {
    goto LABEL_42;
  }

  v39 = sub_100065A98(0x7461447465737361, 0xE900000000000061);
  if ((v40 & 1) == 0 || (sub_100066130(*(a1 + 56) + 32 * v39, &v255), (swift_dynamicCast() & 1) == 0))
  {
    if (*(a1 + 16))
    {
      v53 = sub_100065A98(0x7461507465737361, 0xE900000000000068);
      if (v54)
      {
        sub_100066130(*(a1 + 56) + 32 * v53, &v255);
        v55 = swift_dynamicCast();
        v56 = v253;
        if (!v55)
        {
          v56 = 0;
        }

        v234 = v56;
        if (v55)
        {
          v57 = v254;
        }

        else
        {
          v57 = 0;
        }

        v233 = v57;
        goto LABEL_43;
      }
    }

LABEL_42:
    v234 = 0;
    v233 = 0;
LABEL_43:
    v237 = 0;
    v41 = 0xF000000000000000;
    goto LABEL_44;
  }

  v234 = 0;
  v233 = 0;
  v41 = v254;
  v237 = v253;
LABEL_44:
  v236 = v41;
  v232 = sub_1000C182C(v36, v32, v33);
  if (*(a1 + 16) && (v58 = sub_100065A98(0x634164726F636572, 0xED0000746E756F63), (v59 & 1) != 0))
  {
    sub_100066130(*(a1 + 56) + 32 * v58, &v255);
    if (swift_dynamicCast())
    {
      v60 = v254;
      if (!v254)
      {
        goto LABEL_51;
      }

      v61 = HIBYTE(v254) & 0xF;
      if ((v254 & 0x2000000000000000) == 0)
      {
        v61 = v253 & 0xFFFFFFFFFFFFLL;
      }

      if (!v61)
      {
        v253 = 0;
        v254 = 0;

        v60 = v254;
        v196 = v253;
      }

      else
      {
LABEL_51:
        v196 = v253;
      }
    }

    else
    {
      v196 = 0;
      v60 = 0;
      v253 = 0;
      v254 = 0;
    }
  }

  else
  {
    v196 = 0;
    v253 = 0;
    v254 = 0;
    v60 = 0;
  }

  v62 = *(a1 + 16);

  if (!v62)
  {
    v228 = 0;
    v229 = 0;
LABEL_71:
    v231 = 0;
    v230 = 0;
    goto LABEL_72;
  }

  v63 = sub_100065A98(0x6E61487465737361, 0xEB00000000656C64);
  if (v64)
  {
    sub_100066130(*(a1 + 56) + 32 * v63, &v255);
    v65 = swift_dynamicCast();
    v66 = v251;
    if (!v65)
    {
      v66 = 0;
    }

    v229 = v66;
    if (v65)
    {
      v67 = v252;
    }

    else
    {
      v67 = 0;
    }

    v228 = v67;
  }

  else
  {
    v229 = 0;
    v228 = 0;
  }

  if (!*(a1 + 16))
  {
    v230 = 0;
    v231 = 0;
LABEL_81:
    v227 = 0;
    v226 = 0;
    goto LABEL_82;
  }

  v68 = sub_100065A98(0x546E6F6973736573, 0xEC0000006E656B6FLL);
  if ((v69 & 1) == 0)
  {
    goto LABEL_71;
  }

  sub_100066130(*(a1 + 56) + 32 * v68, &v255);
  v70 = swift_dynamicCast();
  v71 = v251;
  if (!v70)
  {
    v71 = 0;
  }

  v231 = v71;
  if (v70)
  {
    v72 = v252;
  }

  else
  {
    v72 = 0;
  }

  v230 = v72;
LABEL_72:
  if (!*(a1 + 16))
  {
    goto LABEL_81;
  }

  v73 = sub_100065A98(0xD000000000000012, 0x80000001000F1250);
  if ((v74 & 1) == 0)
  {
    goto LABEL_81;
  }

  sub_100066130(*(a1 + 56) + 32 * v73, &v255);
  v75 = swift_dynamicCast();
  v76 = v251;
  if (!v75)
  {
    v76 = 0;
  }

  v227 = v76;
  if (v75)
  {
    v77 = v252;
  }

  else
  {
    v77 = 0;
  }

  v226 = v77;
LABEL_82:
  if (!*(a1 + 16))
  {
    v224 = 0;
    v225 = 0;
LABEL_96:
    v223 = 0;
    goto LABEL_97;
  }

  v78 = sub_100065A98(0xD000000000000014, 0x80000001000F1270);
  if (v79)
  {
    sub_100066130(*(a1 + 56) + 32 * v78, &v255);
    v80 = swift_dynamicCast();
    v81 = v251;
    if (!v80)
    {
      v81 = 0;
    }

    v225 = v81;
    if (v80)
    {
      v82 = v252;
    }

    else
    {
      v82 = 0;
    }

    v224 = v82;
  }

  else
  {
    v225 = 0;
    v224 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_96;
  }

  v83 = sub_100065A98(0x7A69537465737361, 0xE900000000000065);
  if ((v84 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v83, &v255), swift_dynamicCast()))
  {
    v223 = v251;
  }

  else
  {
    v223 = 0;
  }

  if (!*(a1 + 16))
  {
    v222 = 0;
    goto LABEL_113;
  }

  v90 = sub_100065A98(0x7079547465737361, 0xE900000000000065);
  if (v91)
  {
    sub_100066130(*(a1 + 56) + 32 * v90, &v255);
    if (swift_dynamicCast())
    {
      v222 = v251;
      if (!*(a1 + 16))
      {
        goto LABEL_113;
      }

      goto LABEL_98;
    }
  }

LABEL_97:
  v222 = 0;
  if (!*(a1 + 16))
  {
LABEL_113:
    v221 = 0;
    v220 = 0;
    goto LABEL_114;
  }

LABEL_98:
  v85 = sub_100065A98(0x62614C7465737361, 0xEA00000000006C65);
  if ((v86 & 1) == 0)
  {
    goto LABEL_113;
  }

  sub_100066130(*(a1 + 56) + 32 * v85, &v255);
  v87 = swift_dynamicCast();
  v88 = v251;
  if (!v87)
  {
    v88 = 0;
  }

  v221 = v88;
  if (v87)
  {
    v89 = v252;
  }

  else
  {
    v89 = 0;
  }

  v220 = v89;
LABEL_114:
  if (*(a1 + 16) && (v92 = sub_100065A98(0x6E6F697461657263, 0xEC000000656D6954), (v93 & 1) != 0))
  {
    sub_100066130(*(a1 + 56) + 32 * v92, &v255);
    v94 = swift_dynamicCast() ^ 1;
  }

  else
  {
    v94 = 1;
  }

  type metadata accessor for MAKVStoreBase();
  sub_1000C4EA0(v94, v246);
  if (*(a1 + 16))
  {
    v95 = sub_100065A98(0x616470557473616CLL, 0xEF656D6954646574);
    v96 = v237;
    if (v97)
    {
      sub_100066130(*(a1 + 56) + 32 * v95, &v255);
      v98 = swift_dynamicCast() ^ 1;
    }

    else
    {
      v98 = 1;
    }
  }

  else
  {
    v98 = 1;
    v96 = v237;
  }

  sub_1000C4EA0(v98, v247);
  if (!*(a1 + 16))
  {
    v218 = 0;
    v219 = 0;
LABEL_141:
    v216 = 0;
    v217 = 0;
    goto LABEL_142;
  }

  v99 = sub_100065A98(0xD000000000000014, 0x80000001000F11E0);
  if (v100)
  {
    sub_100066130(*(a1 + 56) + 32 * v99, &v255);
    v101 = swift_dynamicCast();
    v102 = v251;
    if (!v101)
    {
      v102 = 0;
    }

    v219 = v102;
    if (v101)
    {
      v103 = v252;
    }

    else
    {
      v103 = 0;
    }

    v218 = v103;
  }

  else
  {
    v219 = 0;
    v218 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_141;
  }

  v104 = sub_100065A98(0xD00000000000001BLL, 0x80000001000F11C0);
  if (v105)
  {
    sub_100066130(*(a1 + 56) + 32 * v104, &v255);
    v106 = swift_dynamicCast();
    v107 = v251;
    if (!v106)
    {
      v107 = 0;
    }

    v217 = v107;
    if (v106)
    {
      v108 = v252;
    }

    else
    {
      v108 = 0;
    }

    v216 = v108;
  }

  else
  {
    v217 = 0;
    v216 = 0;
  }

  if (!*(a1 + 16) || (v112 = sub_100065A98(0xD000000000000014, 0x80000001000F11A0), (v113 & 1) == 0))
  {
LABEL_142:
    v215 = 0;
    v214 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_155;
    }

    goto LABEL_143;
  }

  sub_100066130(*(a1 + 56) + 32 * v112, &v255);
  v114 = swift_dynamicCast();
  v115 = v251;
  if (!v114)
  {
    v115 = 0;
  }

  v215 = v115;
  if (v114)
  {
    v116 = v252;
  }

  else
  {
    v116 = 0;
  }

  v214 = v116;
  if (!*(a1 + 16))
  {
    goto LABEL_155;
  }

LABEL_143:
  v109 = sub_100065A98(0x54656C69666F7270, 0xEB00000000657079);
  if (v110)
  {
    sub_100066130(*(a1 + 56) + 32 * v109, &v255);
    if (swift_dynamicCast())
    {
      v111 = v251;
      goto LABEL_156;
    }
  }

LABEL_155:
  v111 = sub_1000BF320(-2);
LABEL_156:
  v213 = sub_1000BF304(v111);
  if (!*(a1 + 16))
  {
    v211 = 0;
    v212 = 0;
LABEL_170:
    v210 = 0;
LABEL_171:
    v208 = 0;
    v124 = 0xF000000000000000;
    goto LABEL_172;
  }

  v117 = sub_100065A98(0x6F72507465737361, 0xEC00000073736563);
  if (v118)
  {
    sub_100066130(*(a1 + 56) + 32 * v117, &v255);
    v119 = swift_dynamicCast();
    v120 = v251;
    if (!v119)
    {
      v120 = 0;
    }

    v212 = v120;
    if (v119)
    {
      v121 = v252;
    }

    else
    {
      v121 = 0;
    }

    v211 = v121;
  }

  else
  {
    v212 = 0;
    v211 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_170;
  }

  v122 = sub_100065A98(0x6974704F636E7973, 0xEA00000000006E6FLL);
  if ((v123 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v122, &v255), swift_dynamicCast()))
  {
    v210 = v251;
  }

  else
  {
    v210 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_171;
  }

  v152 = sub_100065A98(0x41726F7461657263, 0xED00007473657474);
  v124 = 0xF000000000000000;
  if (v153)
  {
    sub_100066130(*(a1 + 56) + 32 * v152, &v255);
    v154 = swift_dynamicCast();
    v155 = v251;
    if (!v154)
    {
      v155 = 0;
    }

    v208 = v155;
    if (v154)
    {
      v124 = v252;
    }
  }

  else
  {
    v208 = 0;
  }

LABEL_172:
  if (!*(a1 + 16))
  {
    v206 = 0;
    v126 = 0xF000000000000000;
LABEL_189:
    v207 = v126;
    v204 = 0;
    v205 = 0;
    goto LABEL_190;
  }

  v125 = sub_100065A98(0x7441726576726573, 0xEC00000074736574);
  v126 = 0xF000000000000000;
  if (v127)
  {
    sub_100066130(*(a1 + 56) + 32 * v125, &v255);
    v128 = swift_dynamicCast();
    v129 = v251;
    if (!v128)
    {
      v129 = 0;
    }

    v206 = v129;
    if (v128)
    {
      v126 = v252;
    }
  }

  else
  {
    v206 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_189;
  }

  v207 = v126;
  v130 = sub_100065A98(0x676154456B63, 0xE600000000000000);
  if (v131)
  {
    sub_100066130(*(a1 + 56) + 32 * v130, &v255);
    v132 = swift_dynamicCast();
    v133 = v251;
    if (!v132)
    {
      v133 = 0;
    }

    v205 = v133;
    if (v132)
    {
      v134 = v252;
    }

    else
    {
      v134 = 0;
    }

    v204 = v134;
  }

  else
  {
    v205 = 0;
    v204 = 0;
  }

  if (*(a1 + 16))
  {
    v193 = sub_100065A98(0x6574616572436B63, 0xED00006574614464);
    if (v194)
    {
      sub_100066130(*(a1 + 56) + 32 * v193, &v255);
      v135 = swift_dynamicCast() ^ 1;
      goto LABEL_191;
    }
  }

LABEL_190:
  v135 = 1;
LABEL_191:
  sub_1000C4EA0(v135, v248);
  if (*(a1 + 16) && (v136 = sub_100065A98(0x696669646F4D6B63, 0xEE00657461446465), (v137 & 1) != 0))
  {
    sub_100066130(*(a1 + 56) + 32 * v136, &v255);
    v138 = swift_dynamicCast() ^ 1;
  }

  else
  {
    v138 = 1;
  }

  sub_1000C4EA0(v138, v249);
  sub_10009705C(0x6144636E79536B63, 0xEA00000000006574, a1, &v255);
  if (v256)
  {
    v139 = swift_dynamicCast() ^ 1;
  }

  else
  {
    sub_100066C80(&v255, &unk_100128830, &qword_1000E7D40);
    v139 = 1;
  }

  sub_1000C4EA0(v139, v250);
  sub_10009705C(0xD000000000000010, 0x80000001000F1290, a1, &v255);
  if (v256)
  {
    v140 = swift_dynamicCast() ^ 1;
  }

  else
  {
    sub_100066C80(&v255, &unk_100128830, &qword_1000E7D40);
    v140 = 1;
  }

  sub_1000C4EA0(v140, v257);
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v235 = xmmword_1000E6BC0;
  *(v20 + 120) = xmmword_1000E6BC0;
  v141 = v245;
  v142 = &v20[v245[17]];
  v143 = type metadata accessor for Date();
  v144 = *(*(v143 - 8) + 56);
  v202 = v142;
  (v144)(v142, 1, 1, v143);
  v197 = &v20[v141[18]];
  v144();
  v200 = &v20[v141[25]];
  v145 = v235;
  *v200 = v235;
  v203 = &v20[v141[26]];
  *v203 = v145;
  *&v235 = &v20[v141[28]];
  v144();
  v201 = &v20[v141[29]];
  v144();
  v199 = &v20[v141[30]];
  v144();
  v198 = &v20[v141[31]];
  v144();
  v146 = v228;
  *(v20 + 5) = v229;
  *(v20 + 6) = v146;
  v209 = v124;
  if (v60)
  {
    v147 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v147 = v196 & 0xFFFFFFFFFFFFLL;
    }

    v148 = v239;
    v149 = v236;
    if (!v147)
    {
      v150 = v238;
      sub_10005F304(v239, v238);
      sub_100093FE8(v96, v149);

      goto LABEL_217;
    }

    *(v20 + 2) = v196;
    *(v20 + 3) = v60;
    v150 = v238;
    sub_10005F304(v148, v238);
    v151 = v96;
  }

  else
  {
    v150 = v238;
    sub_10005F304(v239, v238);
    v151 = v96;
    v149 = v236;
  }

  sub_100093FE8(v151, v149);
LABEL_217:
  v156 = v96;
  v157 = v245;
  v158 = &v20[v245[19]];
  v159 = &v20[v245[20]];
  v160 = v245[21];
  v228 = v245[22];
  v161 = v20;
  v162 = &v20[v160];
  v163 = (v161 + v245[23]);
  v229 = (v161 + v245[27]);
  v164 = v240;
  *v161 = v241;
  *(v161 + 8) = v164;
  v165 = v232;
  *(v161 + 32) = v232;
  *(v161 + 33) = BYTE1(v165) & 1;
  *(v161 + 34) = BYTE2(v165) & 1;
  v166 = v230;
  *(v161 + 56) = v231;
  *(v161 + 64) = v166;
  v167 = v233;
  *(v161 + 72) = v234;
  *(v161 + 80) = v167;
  v168 = v226;
  *(v161 + 88) = v227;
  *(v161 + 96) = v168;
  v169 = v224;
  *(v161 + 104) = v225;
  *(v161 + 112) = v169;
  sub_10005F69C(*(v161 + 120), *(v161 + 128));
  *(v161 + 120) = v156;
  *(v161 + 128) = v149;
  *(v161 + 136) = v239;
  *(v161 + 144) = v150;
  v170 = v222;
  *(v161 + 152) = v223;
  *(v161 + 160) = v170;
  v171 = v220;
  *(v161 + 168) = v221;
  *(v161 + 176) = v171;
  sub_1000941F8(v246, v202);
  sub_1000941F8(v247, v197);
  v172 = v218;
  *v158 = v219;
  *(v158 + 1) = v172;
  v173 = v216;
  *v159 = v217;
  *(v159 + 1) = v173;
  v174 = v214;
  *v162 = v215;
  *(v162 + 1) = v174;
  *(v161 + v157[24]) = v213;
  v175 = v211;
  *v163 = v212;
  v163[1] = v175;
  *(v161 + v228) = v210;
  v176 = v200;
  sub_10005F69C(*v200, *(v200 + 1));
  v177 = v209;
  *v176 = v208;
  *(v176 + 1) = v177;
  v178 = v203;
  sub_10005F69C(*v203, *(v203 + 1));
  v179 = v207;
  *v178 = v206;
  *(v178 + 1) = v179;
  v180 = v229;
  v181 = v204;
  *v229 = v205;
  v180[1] = v181;
  sub_1000941F8(v248, v235);
  sub_1000941F8(v249, v201);
  sub_1000941F8(v250, v199);
  sub_1000941F8(v257, v198);
  v182 = v243;
  sub_1000AFAB8(v161, v243);
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v183 = type metadata accessor for Logger();
  sub_100066000(v183, qword_10012A3A8);
  v184 = v242;
  sub_1000AF858(v182, v242);
  v185 = Logger.logObject.getter();
  v186 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v185, v186))
  {
    v187 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    *&v255 = v188;
    *v187 = 136315138;
    v189 = sub_100095824();
    v191 = v190;
    sub_1000AF8BC(v184);
    v192 = sub_100065658(v189, v191, &v255);

    *(v187 + 4) = v192;
    _os_log_impl(&_mh_execute_header, v185, v186, "read from localDB: %s", v187, 0xCu);
    sub_10005D588(v188);

    sub_10005F69C(v237, v236);
    sub_10005F358(v239, v238);
  }

  else
  {
    sub_10005F358(v239, v238);
    sub_10005F69C(v237, v236);

    sub_1000AF8BC(v184);
  }

  sub_1000AFAB8(v182, v244);
}

uint64_t sub_10009F7FC(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  sub_10005F5CC(&qword_100128808, &unk_1000E6C50);
  v3[44] = swift_task_alloc();
  v4 = type metadata accessor for MACloudMAAsset(0);
  v3[45] = v4;
  v3[46] = *(v4 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();

  return _swift_task_switch(sub_10009F938, v2, 0);
}

uint64_t sub_10009F938()
{
  v73 = v0;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 384);
  v2 = *(v0 + 328);
  v3 = type metadata accessor for Logger();
  sub_100066000(v3, qword_10012A3A8);
  sub_1000AF858(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 384);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v72 = v9;
    *v8 = 136315138;
    v10 = sub_100095824();
    v12 = v11;
    sub_1000AF8BC(v7);
    v13 = sub_100065658(v10, v12, &v72);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "saveAssetFromCloud: %s", v8, 0xCu);
    sub_10005D588(v9);
  }

  else
  {

    sub_1000AF8BC(v7);
  }

  v14 = *(v0 + 360);
  v15 = *(v0 + 368);
  v16 = *(v0 + 352);
  sub_1000939A8(*(v0 + 336), v16, &qword_100128808, &unk_1000E6C50);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    sub_100066C80(*(v0 + 352), &qword_100128808, &unk_1000E6C50);
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0;
  }

  else
  {
    v17 = *(v0 + 352);
    *(v0 + 296) = *(v0 + 360);
    *(v0 + 304) = sub_1000AF620(&unk_100128840, 255, type metadata accessor for MACloudMAAsset, &unk_1000E6D70);
    v18 = sub_10005D4D0((v0 + 272));
    sub_1000AFAB8(v17, v18);
  }

  v19 = *(v0 + 360);
  v20 = sub_1000AF620(&unk_100128840, 255, type metadata accessor for MACloudMAAsset, &unk_1000E6D70);
  v21 = sub_1000C1850(v0 + 272, v19, v20);
  v22 = sub_100066C80(v0 + 272, &unk_100129080, &qword_1000E7D60);
  if (v21)
  {
    v23 = (**(v0 + 344) + 352);
    v24 = *v23;
    v25 = (*v23)(v22);
    (*(**(v0 + 344) + 264))(*(v0 + 328));
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 312) = 0;
    v27 = [v25 putDictionay:isa attributes:0 error:v0 + 312];

    v28 = *(v0 + 312);
    if (v27)
    {
      v29 = *(v0 + 328);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(*(v0 + 344) + 120);

      v33 = v28;
      v34 = sub_1000970C0();
      if (v29[8])
      {
        v35 = String._bridgeToObjectiveC()();
      }

      else
      {
        v35 = 0;
      }

      v37 = [v32 didReceiveAsset:v34 sessionToken:v35];

      if (v37)
      {
        v38 = v31;
        v39 = *(v0 + 344);
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
        v42 = [*(v39 + 112) assetPath:v37];

        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v57 = v24();
        sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000E61E0;
        v59 = v41;
        *(inited + 32) = 0x614E64726F636572;
        v60 = inited + 32;
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = 0xEA0000000000656DLL;
        *(inited + 48) = v38;
        *(inited + 56) = v30;
        sub_1000AF988(inited);
        swift_setDeallocating();
        sub_100066C80(v60, &qword_100129070, &qword_1000E7440);
        v61 = Dictionary._bridgeToObjectiveC()().super.isa;

        v62 = swift_initStackObject();
        *(v62 + 16) = xmmword_1000E6BE0;
        *(v62 + 32) = 0x6B63416C61636F6CLL;
        *(v62 + 40) = 0xEA00000000006465;
        *(v62 + 48) = 1;
        *(v62 + 72) = &type metadata for Int;
        *(v62 + 80) = 0x6E61487465737361;
        *(v62 + 88) = 0xEB00000000656C64;
        *(v62 + 96) = v71;
        *(v62 + 104) = v59;
        *(v62 + 120) = &type metadata for String;
        *(v62 + 128) = 0x7461507465737361;
        *(v62 + 168) = &type metadata for String;
        *(v62 + 136) = 0xE900000000000068;
        *(v62 + 144) = v70;
        *(v62 + 152) = v44;
        sub_1000AF988(v62);
        swift_setDeallocating();
        sub_10005F5CC(&qword_100129070, &qword_1000E7440);
        swift_arrayDestroy();
        v63 = Dictionary._bridgeToObjectiveC()().super.isa;

        *(v0 + 320) = 0;
        v64 = [v57 updateFor:v61 value:v63 attributes:0 error:v0 + 320];

        v65 = *(v0 + 320);
        if (v64)
        {
          v66 = v65;
        }

        else
        {
          v67 = v65;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      else
      {
        v45 = *(v0 + 376);
        v46 = *(v0 + 328);

        sub_1000AF858(v46, v45);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        v49 = os_log_type_enabled(v47, v48);
        v50 = *(v0 + 376);
        if (v49)
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v72 = v52;
          *v51 = 136315138;
          v53 = sub_100095824();
          v55 = v54;
          sub_1000AF8BC(v50);
          v56 = sub_100065658(v53, v55, &v72);

          *(v51 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v47, v48, "Delegate failed to process didReceive for %s", v51, 0xCu);
          sub_10005D588(v52);
        }

        else
        {

          sub_1000AF8BC(v50);
        }
      }
    }

    else
    {
      v36 = v28;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    sub_100097C44();
  }

  v68 = *(v0 + 8);

  return v68();
}

void *sub_1000A01F8(uint64_t a1, uint64_t a2)
{
  result = (*(*v2 + 352))();
  if (!v3)
  {
    v7 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x6E61487465737361;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEB00000000656C64;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1000E61E0;
    *(v10 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v10 + 40) = v11;
    *(v10 + 72) = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
    *(v10 + 48) = &off_100117770;
    sub_1000AF988(v10);
    swift_setDeallocating();
    sub_100066C80(v10 + 32, &qword_100129070, &qword_1000E7440);
    v12 = Dictionary._bridgeToObjectiveC()().super.isa;

    v21[0] = 0;
    v13 = [v7 queryDictionaryFor:isa attributes:v12 error:v21];

    v14 = v21[0];
    if (v13)
    {
      v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v14;

      if (*(v15 + 16) && (v17 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL), (v18 & 1) != 0))
      {
        sub_100066130(*(v15 + 56) + 32 * v17, v21);

        if (swift_dynamicCast())
        {
          return v20;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return 0;
      }
    }

    else
    {
      v19 = v21[0];
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000A0534(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    while (1)
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v27 = v3;
      v6 = *(*v25 + 352);

      v8 = v6(v7);
      if (v1)
      {

        return v22 & 1;
      }

      v9 = v8;
      v26 = v2;
      sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000E61E0;
      *(inited + 32) = 0x6E61487465737361;
      v11 = inited + 32;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xEB00000000656C64;
      *(inited + 48) = v4;
      *(inited + 56) = v5;
      sub_1000AF988(inited);
      swift_setDeallocating();
      sub_100066C80(v11, &qword_100129070, &qword_1000E7440);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_1000E61E0;
      *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v13 + 40) = v14;
      *(v13 + 72) = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
      *(v13 + 48) = &off_1001177A0;
      sub_1000AF988(v13);
      swift_setDeallocating();
      sub_100066C80(v13 + 32, &qword_100129070, &qword_1000E7440);
      v15 = Dictionary._bridgeToObjectiveC()().super.isa;

      *&v28[0] = 0;
      v16 = [v9 queryDictionaryFor:isa attributes:v15 error:v28];

      v17 = *&v28[0];
      if (!v16)
      {
        break;
      }

      v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v17;

      if (*(v18 + 16))
      {
        v20 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL);
        if (v21)
        {
          sub_100066130(*(v18 + 56) + 32 * v20, v28);

          sub_100066C80(v28, &unk_100128830, &qword_1000E7D40);
          v22 = 1;
          return v22 & 1;
        }
      }

      memset(v28, 0, sizeof(v28));
      sub_100066C80(v28, &unk_100128830, &qword_1000E7D40);
      v1 = 0;
      v3 = v27 + 2;
      --v2;
      if (v26 == 1)
      {
        goto LABEL_9;
      }
    }

    v23 = *&v28[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
LABEL_9:
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_1000A08C8(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = type metadata accessor for UUID();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  sub_10005F5CC(&qword_100128808, &unk_1000E6C50);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v5 = type metadata accessor for MACloudMAAsset(0);
  v3[41] = v5;
  v3[42] = *(v5 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return _swift_task_switch(sub_1000A0A9C, v2, 0);
}

uint64_t sub_1000A0A9C()
{
  v175 = v0;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 240);
  v3 = type metadata accessor for Logger();
  *(v0 + 368) = sub_100066000(v3, qword_10012A3A8);
  sub_1000AF858(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 360);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v174 = v9;
    *v8 = 136315138;
    v10 = sub_100095824();
    v12 = v11;
    sub_1000AF8BC(v7);
    v13 = sub_100065658(v10, v12, &v174);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Saving asset to cloud %s", v8, 0xCu);
    sub_10005D588(v9);
  }

  else
  {

    v14 = sub_1000AF8BC(v7);
  }

  v15 = *(v0 + 256);
  v16 = *(*v15 + 208);
  v17 = (*v15 + 208) & 0xFFFFFFFFFFFFLL | 0x77F3000000000000;
  *(v0 + 376) = v16;
  *(v0 + 384) = v17;
  v16(v14);
  if (v18)
  {
  }

  else
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "accountIdentifier is not set, will to get from syncedDatabase (to fetch it)", v37, 2u);
    }

    v38 = *(v0 + 256);

    v39 = (*(*v38 + 184))();
    *(v0 + 392) = v39;
    if (v39)
    {
      v172 = (*(*v39 + 216) + **(*v39 + 216));
      v40 = swift_task_alloc();
      *(v0 + 400) = v40;
      *v40 = v0;
      v40[1] = sub_1000A2090;
      v41 = v172;

      return v41();
    }

    (*(**(v0 + 256) + 216))(0, 0);
  }

  v19 = *(v0 + 240);
  v20 = *(*(v0 + 336) + 56);
  v20(*(v0 + 320), 1, 1, *(v0 + 328));
  if (!v19[10])
  {
    v43 = *(v0 + 320);
LABEL_23:
    sub_1000B9568();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    sub_100092A98();
    swift_allocError();
    *v50 = v45;
    *(v50 + 8) = v47;
    *(v50 + 16) = v49;
LABEL_24:
    swift_willThrow();
LABEL_25:
    sub_100066C80(v43, &qword_100128808, &unk_1000E6C50);

    v41 = *(v0 + 8);
    goto LABEL_26;
  }

  v21 = v19[20];
  v22 = v19[17];
  v23 = v19[18];
  v171 = v20;
  sub_10005F304(v22, v23);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  sub_10005F358(v22, v23);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v174 = v27;
    *v26 = 136315138;
    v28 = sub_10005FFFC(v22, v23);
    v30 = sub_100065658(v28, v29, &v174);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "assetHash %s", v26, 0xCu);
    sub_10005D588(v27);
  }

  v31 = *(v0 + 240);
  v33 = *v31;
  v32 = v31[1];
  v34 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v34 = *v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {

    goto LABEL_15;
  }

  v51 = v31[6];
  if (!v51)
  {
    v43 = *(v0 + 320);
    goto LABEL_23;
  }

  v52 = sub_1000A01F8(v31[5], v51);
  v32 = v53;
  v167 = v21;
  if (!v53)
  {
    goto LABEL_61;
  }

  v97 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v97 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v97)
  {

LABEL_61:
    v112 = *(v0 + 272);
    v111 = *(v0 + 280);
    v113 = *(v0 + 264);
    UUID.init()();
    v170 = UUID.uuidString.getter();
    v32 = v114;
    (*(v112 + 8))(v111, v113);
    goto LABEL_62;
  }

  v170 = v52;
LABEL_62:
  v115 = *(v0 + 328);
  v116 = *(v0 + 336);
  v117 = *(v0 + 312);
  sub_1000939A8(*(v0 + 320), v117, &qword_100128808, &unk_1000E6C50);
  v118 = *(v116 + 48);
  LODWORD(v115) = v118(v117, 1, v115);
  sub_100066C80(v117, &qword_100128808, &unk_1000E6C50);
  if (v115 == 1)
  {
    v120 = *(v0 + 320);
    v119 = *(v0 + 328);
    v121 = *(v0 + 240);
    sub_100066C80(v120, &qword_100128808, &unk_1000E6C50);
    sub_1000AF858(v121, v120);
    v171(v120, 0, 1, v119);
  }

  v122 = *(v0 + 320);
  v33 = v170;
  if (!v118(v122, 1, *(v0 + 328)))
  {
    *v122 = v170;
    v122[1] = v32;
  }

  v21 = v167;
LABEL_15:
  *(v0 + 432) = v32;
  (*(**(v0 + 256) + 328))(v33, v32);
  v54 = *(v0 + 304);
  v55 = *(*(v0 + 336) + 48);
  v56 = v55(v54, 1, *(v0 + 328));
  v57 = v56;
  v168 = v55;
  v169 = v33;
  if (v56 == 1)
  {
    sub_100066C80(v54, &qword_100128808, &unk_1000E6C50);
  }

  else
  {
    v58 = v56;
    v59 = v21;
    v60 = *(v0 + 352);
    v61 = *(v0 + 248);
    sub_1000AFAB8(v54, v60);
    if ((*(v60 + 32) & 0xFE) == 2 && v61 != 1 && sub_1000951B4(*(v0 + 352), 0))
    {

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 352);
      if (v64)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v174 = v67;
        *v66 = 136315138;
        v68 = sub_100065658(v33, v32, &v174);

        *(v66 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v62, v63, "Skip asset sync up as it's not changed yet and already in cloud. recordName: %s", v66, 0xCu);
        sub_10005D588(v67);
      }

      else
      {
      }

      sub_1000AF8BC(v65);
      goto LABEL_94;
    }

    sub_1000AF8BC(*(v0 + 352));
    v21 = v59;
    v57 = v58;
    v55 = v168;
  }

  v166 = v21;
  if (sub_1000C616C(v21))
  {
    v164 = v57;
    v69 = *(*(v0 + 256) + 112);
    v70 = String._bridgeToObjectiveC()();
    v71 = [v69 tempSyncUpAssetPath:v70];

    v72 = v71;
    v73 = v71;
    if (!v71)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = String._bridgeToObjectiveC()();
    }

    v165 = v72;
    v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;
    v76 = objc_opt_self();
    v77 = v71;
    v78 = [v76 defaultManager];
    v79 = String._bridgeToObjectiveC()();
    *(v0 + 224) = 0;
    v80 = [v78 copyItemAtPath:v79 toPath:v73 error:v0 + 224];

    v81 = *(v0 + 224);
    if (v80)
    {
      v173 = v75;
      sub_10005F5CC(&qword_100128868, &qword_1000E6CA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000E61E0;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v83 = v81;
      v84 = NSFileProtectionKey;
      v85 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v86 = sub_1000AFB1C(inited);
      swift_setDeallocating();
      sub_100066C80(inited + 32, &unk_100128870, &qword_1000E6CA8);
      sub_1000A39A8(v86);

      type metadata accessor for FileAttributeKey(0);
      sub_1000AF620(&qword_1001287F8, 255, type metadata accessor for FileAttributeKey, &unk_1000E7310);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v0 + 232) = 0;
      LODWORD(inited) = [v78 setAttributes:isa ofItemAtPath:v165 error:v0 + 232];

      v88 = *(v0 + 232);
      if (inited)
      {
        v90 = *(v0 + 320);
        v89 = *(v0 + 328);
        v91 = *(v0 + 296);
        v92 = v88;

        sub_1000939A8(v90, v91, &qword_100128808, &unk_1000E6C50);
        LODWORD(v89) = v168(v91, 1, v89);
        sub_100066C80(v91, &qword_100128808, &unk_1000E6C50);
        if (v89 == 1)
        {
          v94 = *(v0 + 320);
          v93 = *(v0 + 328);
          v95 = *(v0 + 240);
          sub_100066C80(v94, &qword_100128808, &unk_1000E6C50);
          sub_1000AF858(v95, v94);
          v171(v94, 0, 1, v93);
        }

        v96 = *(v0 + 320);
        v55 = v168;
        v33 = v169;
        v57 = v164;
        if (!v168(v96, 1, *(v0 + 328)))
        {
          *(v96 + 88) = v163;
          *(v96 + 96) = v173;
        }

        goto LABEL_71;
      }

      v98 = v88;
    }

    else
    {
      v98 = v81;
    }

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v101 = 138412290;
      swift_errorRetain();
      v103 = _swift_stdlib_bridgeErrorToNSError();
      *(v101 + 4) = v103;
      *v102 = v103;
      _os_log_impl(&_mh_execute_header, v99, v100, "Error copying asset file: %@", v101, 0xCu);
      sub_100066C80(v102, &qword_1001287F0, &qword_1000E6C40);
    }

    v43 = *(v0 + 320);

    sub_1000B9568();
    v105 = v104;
    v107 = v106;
    v109 = v108;
    sub_100092A98();
    swift_allocError();
    *v110 = v105;
    *(v110 + 8) = v107;
    *(v110 + 16) = v109;
    swift_willThrow();

    goto LABEL_25;
  }

LABEL_71:
  v123 = *(v0 + 328);
  v124 = *(v0 + 288);
  sub_1000939A8(*(v0 + 320), v124, &qword_100128808, &unk_1000E6C50);
  v125 = v55(v124, 1, v123);
  v126 = *(v0 + 344);
  if (v125 == 1)
  {
    v127 = *(v0 + 328);
    v128 = *(v0 + 288);
    sub_1000AF858(*(v0 + 240), v126);
    if (v55(v128, 1, v127) != 1)
    {
      sub_100066C80(*(v0 + 288), &qword_100128808, &unk_1000E6C50);
    }
  }

  else
  {
    sub_1000AFAB8(*(v0 + 288), v126);
  }

  v129 = *(v0 + 344);
  v130 = (*(**(v0 + 256) + 264))(v129);
  v131 = sub_1000AF8BC(v129);
  if (v57 == 1)
  {
    v132 = (*(v0 + 376))(v131);
    if (v133)
    {
      *(v0 + 168) = &type metadata for String;
      *(v0 + 144) = v132;
      *(v0 + 152) = v133;
      sub_1000AF7F4((v0 + 144), (v0 + 176));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = v130;
      sub_1000AEE80((v0 + 176), 0x634164726F636572, 0xED0000746E756F63, isUniquelyReferenced_nonNull_native);
    }

    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v174 = v138;
      *v137 = 136315138;
      *(v137 + 4) = sub_100065658(v33, v32, &v174);
      _os_log_impl(&_mh_execute_header, v135, v136, "Adding new asset to be uploaded to local cache. recordName: %s", v137, 0xCu);
      sub_10005D588(v138);
    }

    v139 = (*(**(v0 + 256) + 352))();
    v140 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 208) = 0;
    v141 = [v139 putDictionay:v140 attributes:0 error:v0 + 208];

    v142 = *(v0 + 208);
    if (!v141)
    {
LABEL_81:
      v43 = *(v0 + 320);
      v143 = v142;

      _convertNSErrorToError(_:)();

      goto LABEL_24;
    }
  }

  else
  {

    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v174 = v147;
      *v146 = 136315138;
      *(v146 + 4) = sub_100065658(v33, v32, &v174);
      _os_log_impl(&_mh_execute_header, v144, v145, "Updating existing asset to be uploaded in local cache. recordName: %s", v146, 0xCu);
      sub_10005D588(v147);
    }

    v148 = (*(**(v0 + 256) + 352))();
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    v149 = swift_initStackObject();
    *(v149 + 16) = xmmword_1000E61E0;
    *(v149 + 32) = 0x614E64726F636572;
    *(v149 + 72) = &type metadata for String;
    *(v149 + 40) = 0xEA0000000000656DLL;
    *(v149 + 48) = v33;
    *(v149 + 56) = v32;

    sub_1000AF988(v149);
    swift_setDeallocating();
    sub_100066C80(v149 + 32, &qword_100129070, &qword_1000E7440);
    v150 = Dictionary._bridgeToObjectiveC()().super.isa;

    v151 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 216) = 0;
    v152 = [v148 updateFor:v150 value:v151 attributes:0 error:v0 + 216];

    v142 = *(v0 + 216);
    if ((v152 & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  (*(v0 + 376))(v142);
  if (!v153)
  {

    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v174 = v161;
      *v160 = 136315138;
      v162 = sub_100065658(v33, v32, &v174);

      *(v160 + 4) = v162;
      _os_log_impl(&_mh_execute_header, v158, v159, "Account is not available, will schedule upload when it becomes ready. recordName: %s", v160, 0xCu);
      sub_10005D588(v161);

LABEL_94:
      sub_100066C80(*(v0 + 320), &qword_100128808, &unk_1000E6C50);

      v41 = *(v0 + 8);
LABEL_26:

      return v41();
    }

LABEL_93:

    goto LABEL_94;
  }

  v154 = *(v0 + 256);

  v156 = (*(*v154 + 184))(v155);
  *(v0 + 440) = v156;
  if (!v156)
  {
    goto LABEL_93;
  }

  v157 = swift_task_alloc();
  *(v0 + 448) = v157;
  *v157 = v0;
  v157[1] = sub_1000A34DC;

  return sub_10007CCC4(v33, v32, v166);
}

uint64_t sub_1000A2090(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 408) = v2;

  if (v2)
  {
    v7 = v6[32];
    v8 = sub_1000A3774;
  }

  else
  {
    v9 = v6[32];

    v6[52] = a2;
    v6[53] = a1;
    v8 = sub_1000A2218;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000A2218()
{
  v149 = v0;
  v1 = *(v0 + 408);
  (*(**(v0 + 256) + 216))(*(v0 + 424), *(v0 + 416));
  v2 = *(v0 + 240);
  v3 = *(*(v0 + 336) + 56);
  v3(*(v0 + 320), 1, 1, *(v0 + 328));
  if (!v2[10])
  {
    v17 = *(v0 + 320);
LABEL_11:
    sub_1000B9568();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_100092A98();
    swift_allocError();
    *v24 = v19;
    *(v24 + 8) = v21;
    *(v24 + 16) = v23;
LABEL_12:
    swift_willThrow();
    goto LABEL_13;
  }

  v147 = v2[20];
  v4 = v2[17];
  v5 = v2[18];
  v145 = v3;
  sub_10005F304(v4, v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  sub_10005F358(v4, v5);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v148 = v9;
    *v8 = 136315138;
    v10 = sub_10005FFFC(v4, v5);
    v12 = sub_100065658(v10, v11, &v148);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "assetHash %s", v8, 0xCu);
    sub_10005D588(v9);
  }

  v13 = *(v0 + 240);
  v15 = *v13;
  v14 = v13[1];
  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = *v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {

    goto LABEL_8;
  }

  v27 = v13[6];
  if (!v27)
  {
    v17 = *(v0 + 320);
    goto LABEL_11;
  }

  v28 = sub_1000A01F8(v13[5], v27);
  if (v1)
  {
    v17 = *(v0 + 320);
    goto LABEL_13;
  }

  v14 = v29;
  if (!v29)
  {
    goto LABEL_49;
  }

  v73 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v73 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v73)
  {

LABEL_49:
    v88 = *(v0 + 272);
    v87 = *(v0 + 280);
    v89 = *(v0 + 264);
    UUID.init()();
    v144 = UUID.uuidString.getter();
    v14 = v90;
    (*(v88 + 8))(v87, v89);
    goto LABEL_50;
  }

  v144 = v28;
LABEL_50:
  v91 = *(v0 + 328);
  v92 = *(v0 + 336);
  v93 = *(v0 + 312);
  sub_1000939A8(*(v0 + 320), v93, &qword_100128808, &unk_1000E6C50);
  v94 = *(v92 + 48);
  LODWORD(v91) = v94(v93, 1, v91);
  sub_100066C80(v93, &qword_100128808, &unk_1000E6C50);
  if (v91 == 1)
  {
    v96 = *(v0 + 320);
    v95 = *(v0 + 328);
    v97 = *(v0 + 240);
    sub_100066C80(v96, &qword_100128808, &unk_1000E6C50);
    sub_1000AF858(v97, v96);
    v145(v96, 0, 1, v95);
  }

  v98 = *(v0 + 320);
  if (v94(v98, 1, *(v0 + 328)))
  {
    v1 = 0;
    v15 = v144;
  }

  else
  {
    v15 = v144;
    *v98 = v144;
    v98[1] = v14;

    v1 = 0;
  }

LABEL_8:
  *(v0 + 432) = v14;
  (*(**(v0 + 256) + 328))(v15, v14);
  if (v1)
  {
    v17 = *(v0 + 320);

LABEL_13:
    sub_100066C80(v17, &qword_100128808, &unk_1000E6C50);

    v25 = *(v0 + 8);
LABEL_14:

    return v25();
  }

  v30 = *(v0 + 304);
  v31 = *(*(v0 + 336) + 48);
  v32 = v31(v30, 1, *(v0 + 328));
  v33 = v32;
  v143 = v15;
  if (v32 == 1)
  {
    sub_100066C80(v30, &qword_100128808, &unk_1000E6C50);
  }

  else
  {
    v34 = v31;
    v35 = v32;
    v36 = *(v0 + 352);
    v37 = *(v0 + 248);
    sub_1000AFAB8(v30, v36);
    if ((*(v36 + 32) & 0xFE) == 2 && v37 != 1 && sub_1000951B4(*(v0 + 352), 0))
    {

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v0 + 352);
      if (v40)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v148 = v43;
        *v42 = 136315138;
        v44 = sub_100065658(v15, v14, &v148);

        *(v42 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "Skip asset sync up as it's not changed yet and already in cloud. recordName: %s", v42, 0xCu);
        sub_10005D588(v43);
      }

      else
      {
      }

      sub_1000AF8BC(v41);
      goto LABEL_82;
    }

    sub_1000AF8BC(*(v0 + 352));
    v33 = v35;
    v31 = v34;
  }

  if (sub_1000C616C(v147))
  {
    v140 = v31;
    v141 = v33;
    v45 = *(*(v0 + 256) + 112);
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 tempSyncUpAssetPath:v46];

    v48 = v47;
    v49 = v47;
    if (!v47)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = String._bridgeToObjectiveC()();
    }

    v142 = v48;
    v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;
    v52 = objc_opt_self();
    v53 = v47;
    v54 = [v52 defaultManager];
    v55 = String._bridgeToObjectiveC()();
    *(v0 + 224) = 0;
    v56 = [v54 copyItemAtPath:v55 toPath:v49 error:v0 + 224];

    v57 = *(v0 + 224);
    if (v56)
    {
      v146 = v51;
      sub_10005F5CC(&qword_100128868, &qword_1000E6CA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000E61E0;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v59 = v57;
      v60 = NSFileProtectionKey;
      v61 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v62 = sub_1000AFB1C(inited);
      swift_setDeallocating();
      sub_100066C80(inited + 32, &unk_100128870, &qword_1000E6CA8);
      sub_1000A39A8(v62);

      type metadata accessor for FileAttributeKey(0);
      sub_1000AF620(&qword_1001287F8, 255, type metadata accessor for FileAttributeKey, &unk_1000E7310);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v0 + 232) = 0;
      LODWORD(inited) = [v54 setAttributes:isa ofItemAtPath:v142 error:v0 + 232];

      v64 = *(v0 + 232);
      if (inited)
      {
        v66 = *(v0 + 320);
        v65 = *(v0 + 328);
        v67 = *(v0 + 296);
        v68 = v64;

        sub_1000939A8(v66, v67, &qword_100128808, &unk_1000E6C50);
        v31 = v140;
        LODWORD(v65) = v140(v67, 1, v65);
        sub_100066C80(v67, &qword_100128808, &unk_1000E6C50);
        if (v65 == 1)
        {
          v70 = *(v0 + 320);
          v69 = *(v0 + 328);
          v71 = *(v0 + 240);
          sub_100066C80(v70, &qword_100128808, &unk_1000E6C50);
          sub_1000AF858(v71, v70);
          v145(v70, 0, 1, v69);
        }

        v72 = *(v0 + 320);
        v15 = v143;
        v33 = v141;
        if (!v140(v72, 1, *(v0 + 328)))
        {
          *(v72 + 88) = v139;
          *(v72 + 96) = v146;
        }

        goto LABEL_59;
      }

      v74 = v64;
    }

    else
    {
      v74 = v57;
    }

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      swift_errorRetain();
      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 4) = v79;
      *v78 = v79;
      _os_log_impl(&_mh_execute_header, v75, v76, "Error copying asset file: %@", v77, 0xCu);
      sub_100066C80(v78, &qword_1001287F0, &qword_1000E6C40);
    }

    v17 = *(v0 + 320);

    sub_1000B9568();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    sub_100092A98();
    swift_allocError();
    *v86 = v81;
    *(v86 + 8) = v83;
    *(v86 + 16) = v85;
    swift_willThrow();

    goto LABEL_13;
  }

LABEL_59:
  v99 = *(v0 + 328);
  v100 = *(v0 + 288);
  sub_1000939A8(*(v0 + 320), v100, &qword_100128808, &unk_1000E6C50);
  v101 = v31(v100, 1, v99);
  v102 = *(v0 + 344);
  if (v101 == 1)
  {
    v103 = *(v0 + 328);
    v104 = *(v0 + 288);
    sub_1000AF858(*(v0 + 240), v102);
    if (v31(v104, 1, v103) != 1)
    {
      sub_100066C80(*(v0 + 288), &qword_100128808, &unk_1000E6C50);
    }
  }

  else
  {
    sub_1000AFAB8(*(v0 + 288), v102);
  }

  v105 = *(v0 + 344);
  v106 = (*(**(v0 + 256) + 264))(v105);
  v107 = sub_1000AF8BC(v105);
  if (v33 == 1)
  {
    v108 = (*(v0 + 376))(v107);
    if (v109)
    {
      *(v0 + 168) = &type metadata for String;
      *(v0 + 144) = v108;
      *(v0 + 152) = v109;
      sub_1000AF7F4((v0 + 144), (v0 + 176));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148 = v106;
      sub_1000AEE80((v0 + 176), 0x634164726F636572, 0xED0000746E756F63, isUniquelyReferenced_nonNull_native);
    }

    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v148 = v114;
      *v113 = 136315138;
      *(v113 + 4) = sub_100065658(v15, v14, &v148);
      _os_log_impl(&_mh_execute_header, v111, v112, "Adding new asset to be uploaded to local cache. recordName: %s", v113, 0xCu);
      sub_10005D588(v114);
    }

    v115 = (*(**(v0 + 256) + 352))();
    v116 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 208) = 0;
    v117 = [v115 putDictionay:v116 attributes:0 error:v0 + 208];

    v118 = *(v0 + 208);
    if (!v117)
    {
LABEL_69:
      v17 = *(v0 + 320);
      v119 = v118;

      _convertNSErrorToError(_:)();

      goto LABEL_12;
    }
  }

  else
  {

    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v148 = v123;
      *v122 = 136315138;
      *(v122 + 4) = sub_100065658(v15, v14, &v148);
      _os_log_impl(&_mh_execute_header, v120, v121, "Updating existing asset to be uploaded in local cache. recordName: %s", v122, 0xCu);
      sub_10005D588(v123);
    }

    v124 = (*(**(v0 + 256) + 352))();
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    v125 = swift_initStackObject();
    *(v125 + 16) = xmmword_1000E61E0;
    *(v125 + 32) = 0x614E64726F636572;
    *(v125 + 72) = &type metadata for String;
    *(v125 + 40) = 0xEA0000000000656DLL;
    *(v125 + 48) = v15;
    *(v125 + 56) = v14;

    sub_1000AF988(v125);
    swift_setDeallocating();
    sub_100066C80(v125 + 32, &qword_100129070, &qword_1000E7440);
    v126 = Dictionary._bridgeToObjectiveC()().super.isa;

    v127 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 216) = 0;
    v128 = [v124 updateFor:v126 value:v127 attributes:0 error:v0 + 216];

    v118 = *(v0 + 216);
    if ((v128 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  (*(v0 + 376))(v118);
  if (!v129)
  {

    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v148 = v137;
      *v136 = 136315138;
      v138 = sub_100065658(v15, v14, &v148);

      *(v136 + 4) = v138;
      _os_log_impl(&_mh_execute_header, v134, v135, "Account is not available, will schedule upload when it becomes ready. recordName: %s", v136, 0xCu);
      sub_10005D588(v137);

LABEL_82:
      sub_100066C80(*(v0 + 320), &qword_100128808, &unk_1000E6C50);

      v25 = *(v0 + 8);
      goto LABEL_14;
    }

LABEL_81:

    goto LABEL_82;
  }

  v130 = *(v0 + 256);

  v132 = (*(*v130 + 184))(v131);
  *(v0 + 440) = v132;
  if (!v132)
  {
    goto LABEL_81;
  }

  v133 = swift_task_alloc();
  *(v0 + 448) = v133;
  *v133 = v0;
  v133[1] = sub_1000A34DC;

  return sub_10007CCC4(v15, v14, v147);
}

uint64_t sub_1000A34DC()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = sub_1000A387C;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_1000A3658;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}