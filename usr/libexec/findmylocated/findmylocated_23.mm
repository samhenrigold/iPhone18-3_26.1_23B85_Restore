uint64_t sub_10025DC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Fence.Schedule();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Fence.TriggerPosition();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for Fence.Variant();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10025DDC8, 0, 0);
}

uint64_t sub_10025DDC8(uint64_t a1)
{
  v2 = v1[17];
  v3 = v1[12];
  v4 = v1[13];
  Fence.variant.getter();
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == enum case for Fence.Variant.oneTime(_:))
  {
    v7 = v1[16];
    v6 = v1[17];
    v8 = v1 + 16;
    v9 = v1[12];
    v10 = v1[13];
  }

  else
  {
    if (v5 != enum case for Fence.Variant.recurring(_:))
    {
      if (v5 == enum case for Fence.Variant.scheduled(_:))
      {
        v27 = v1[13];
        v26 = v1[14];
        v28 = v1[12];
        v30 = v1[6];
        v29 = v1[7];
        v31 = v1[5];
        (*(v27 + 16))(v26, v1[17], v28);
        (*(v27 + 96))(v26, v28);
        (*(v30 + 32))(v29, v26, v31);
        v32 = swift_task_alloc();
        v1[20] = v32;
        *v32 = v1;
        v32[1] = sub_10025E888;
        v33 = v1[7];
        v34 = v1[3];
        v35 = v1[4];
        v36 = v1[2];

        return sub_10025A84C(v36, v33, v34, v35);
      }

LABEL_24:
      v42 = v1[17];
      v43 = v1[12];
      v44 = v1[13];
      type metadata accessor for FenceServiceClient.Failure(0);
      sub_100260118(&qword_1005A9140, type metadata accessor for FenceServiceClient.Failure, &unk_1004D25C8);
      swift_allocError();
      Fence.variant.getter();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v44 + 8))(v42, v43);
      goto LABEL_25;
    }

    v8 = v1 + 15;
    v7 = v1[15];
    v6 = v1[17];
    v9 = v1[12];
    v10 = v1[13];
  }

  (*(v10 + 16))(v7, v6, v9);
  (*(v10 + 96))(v7, v9);
  v11 = type metadata accessor for Fence.Trigger();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 88))(v7, v11);
  if (v13 == enum case for Fence.Trigger.arriving(_:))
  {
    v15 = v1[9];
    v14 = v1[10];
    v16 = v1[8];
    v17 = v1[3];
    (*(v1[13] + 8))(v1[17], v1[12]);
    (*(v15 + 16))(v14, v17, v16);
    v18 = (*(v15 + 88))(v14, v16);
    if (v18 != enum case for Fence.TriggerPosition.inside(_:) && v18 != enum case for Fence.TriggerPosition.outside(_:))
    {
      if (v18 == enum case for Fence.TriggerPosition.undetermined(_:))
      {
        (*(v1[9] + 8))(v1[10], v1[8]);
        sub_10005CF04();
        swift_allocError();
        v20 = 5;
LABEL_15:
        *v19 = v20;
        swift_willThrow();
LABEL_25:

        v45 = v1[1];

        return v45();
      }

      return _assertionFailure(_:_:file:line:flags:)();
    }

    v38 = v1[10];
    (*(v1[9] + 96))(v38, v1[8]);

    v39 = swift_task_alloc();
    v1[19] = v39;
    *v39 = v1;
    v39[1] = sub_10025E69C;
    v41 = v1[2];
    v40 = v1[3];

    return sub_100259894(v41, v40);
  }

  if (v13 != enum case for Fence.Trigger.leaving(_:))
  {
    (*(v12 + 8))(*v8, v11);
    goto LABEL_24;
  }

  v21 = v1[11];
  v22 = v1[8];
  v23 = v1[9];
  v24 = v1[3];
  (*(v1[13] + 8))(v1[17], v1[12]);
  (*(v23 + 16))(v21, v24, v22);
  v25 = (*(v23 + 88))(v21, v22);
  if (v25 != enum case for Fence.TriggerPosition.inside(_:) && v25 != enum case for Fence.TriggerPosition.outside(_:))
  {
    if (v25 == enum case for Fence.TriggerPosition.undetermined(_:))
    {
      (*(v1[9] + 8))(v1[11], v1[8]);
      sub_10005CF04();
      swift_allocError();
      v20 = 4;
      goto LABEL_15;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v46 = v1[11];
  (*(v1[9] + 96))(v46, v1[8]);

  v47 = swift_task_alloc();
  v1[18] = v47;
  *v47 = v1;
  v47[1] = sub_10025E4B0;
  v49 = v1[2];
  v48 = v1[3];

  return sub_100258BFC(v49, v48);
}

uint64_t sub_10025E4B0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_10025E69C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_10025E888(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v7 = sub_10025EAB8;
  }

  else
  {
    *(v6 + 176) = a2;
    *(v6 + 184) = a1;
    v7 = sub_10025E9BC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10025E9BC()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[22];
  v5 = v0[23];

  v6 = v0[1];

  return v6(v5, v4);
}

uint64_t sub_10025EAB8()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10025EBA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0B00, &qword_1004D26A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10025EC18(uint64_t a1)
{
  v2 = type metadata accessor for MessagingCapability();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10004B564(&qword_1005B0B40, &qword_1004D26C8);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100260118(&qword_1005B0B48, &type metadata accessor for MessagingCapability, &protocol conformance descriptor for MessagingCapability);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100260118(&qword_1005B0B50, &type metadata accessor for MessagingCapability, &protocol conformance descriptor for MessagingCapability);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_10025EF38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B04F0, &qword_1004D1E18);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_10025F0A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0B38, &qword_1004D26C0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10025F1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v120 = a2;
  v4 = type metadata accessor for Fence.DaysOfWeek();
  v109 = *(v4 - 8);
  v110 = v4;
  v5 = __chkstk_darwin(v4);
  v106 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v108 = &v95 - v7;
  v8 = type metadata accessor for Calendar();
  v107 = *(v8 - 8);
  __chkstk_darwin(v8);
  v111 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Fence.TimeOfDay();
  v104 = *(v10 - 8);
  v105 = v10;
  v11 = __chkstk_darwin(v10);
  v102 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v103 = &v95 - v13;
  v113 = type metadata accessor for Fence.Schedule();
  v14 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Fence.Variant();
  v16 = *(v119 - 8);
  v17 = __chkstk_darwin(v119);
  v100 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v101 = &v95 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v95 - v22;
  __chkstk_darwin(v21);
  v118 = &v95 - v24;
  v25 = type metadata accessor for LocalizationUtility.Table();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v30 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v26;
  v117 = v27;
  v115 = v30;
  if (a3)
  {
    v31 = a3;
  }

  else
  {
    v32 = v14;
    v33 = v16;
    v34 = v28;
    (*(v26 + 104))(v30, enum case for LocalizationUtility.Table.default(_:), v28);
    v120 = static LocalizationUtility.localizedString(key:table:)();
    v35 = v26;
    v31 = v36;
    v37 = v34;
    v16 = v33;
    v14 = v32;
    (*(v35 + 8))(v30, v37);
  }

  v114 = sub_100257FA4();
  v39 = v38;
  v40 = v118;
  Fence.variant.getter();
  v41 = v119;
  v42 = (*(v16 + 88))(v40, v119);
  if (v42 == enum case for Fence.Variant.oneTime(_:))
  {
    (*(v16 + 16))(v23, v40, v41);
    (*(v16 + 96))(v23, v41);
    v43 = type metadata accessor for Fence.Trigger();
    v44 = *(v43 - 8);
    v45 = (*(v44 + 88))(v23, v43);
    if (v45 == enum case for Fence.Trigger.arriving(_:) || v45 == enum case for Fence.Trigger.leaving(_:))
    {
LABEL_17:
      sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1004C2310;
      *(v63 + 32) = v120;
      *(v63 + 40) = v31;
      *(v63 + 48) = v114;
      *(v63 + 56) = v39;
LABEL_25:
      (*(v16 + 8))(v40, v41);
      v91 = v115;
      v90 = v116;
      v92 = v117;
      (*(v116 + 104))(v115, enum case for LocalizationUtility.Table.default(_:), v117);
      static LocalizationUtility.localizedString(key:table:)();

      (*(v90 + 8))(v91, v92);
      sub_10025854C(v63);

      v93 = String.init(format:arguments:)();

      return v93;
    }

    goto LABEL_26;
  }

  if (v42 == enum case for Fence.Variant.recurring(_:))
  {
    v23 = v101;
    (*(v16 + 16))(v101, v40, v41);
    (*(v16 + 96))(v23, v41);
    v43 = type metadata accessor for Fence.Trigger();
    v44 = *(v43 - 8);
    v46 = (*(v44 + 88))(v23, v43);
    if (v46 == enum case for Fence.Trigger.arriving(_:) || v46 == enum case for Fence.Trigger.leaving(_:))
    {
      goto LABEL_17;
    }

LABEL_26:
    (*(v44 + 8))(v23, v43);
    goto LABEL_27;
  }

  v101 = v8;
  v99 = v31;
  v97 = v39;
  if (v42 == enum case for Fence.Variant.scheduled(_:))
  {
    v47 = v100;
    (*(v16 + 16))(v100, v40, v41);
    (*(v16 + 96))(v47, v41);
    v98 = v14;
    v48 = v112;
    (*(v14 + 32))(v112, v47, v113);
    v49 = v103;
    Fence.Schedule.start.getter();
    v50 = v111;
    static Calendar.current.getter();
    v96 = sub_100258360(v50);
    v100 = v51;
    v107 = *(v107 + 8);
    (v107)(v50, v101);
    v52 = v105;
    v53 = *(v104 + 8);
    v53(v49, v105);
    Fence.Schedule.start.getter();
    v54 = v102;
    Fence.Schedule.end.getter();
    v55 = v52;
    LOBYTE(v52) = static Fence.TimeOfDay.== infix(_:_:)();
    v53(v54, v55);
    v53(v49, v55);
    if (v52)
    {
      v56 = v108;
      Fence.Schedule.daysOfWeek.getter();
      v57 = v106;
      static Fence.DaysOfWeek.all.getter();
      sub_100260118(&qword_1005B0B30, &type metadata accessor for Fence.DaysOfWeek, &protocol conformance descriptor for Fence.DaysOfWeek);
      v58 = v110;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v59 = v48;
      v60 = *(v109 + 8);
      v60(v57, v58);
      v60(v56, v58);
      if (v122 == v121)
      {
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v61 = swift_allocObject();
        v62 = v59;
        v63 = v61;
        *(v61 + 16) = xmmword_1004C0BD0;
        v64 = v99;
        *(v61 + 32) = v120;
        *(v61 + 40) = v64;
        v65 = v97;
        *(v61 + 48) = v114;
        *(v61 + 56) = v65;
        v66 = v100;
        *(v61 + 64) = v96;
        *(v61 + 72) = v66;
      }

      else
      {
        Fence.Schedule.daysOfWeek.getter();
        v76 = v111;
        static Calendar.current.getter();
        v109 = sub_100057620(v76);
        v78 = v77;
        (v107)(v76, v101);
        v60(v56, v58);
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v79 = swift_allocObject();
        v62 = v59;
        v63 = v79;
        *(v79 + 16) = xmmword_1004C0BB0;
        v80 = v99;
        *(v79 + 32) = v120;
        *(v79 + 40) = v80;
        v81 = v97;
        *(v79 + 48) = v114;
        *(v79 + 56) = v81;
        v82 = v100;
        *(v79 + 64) = v96;
        *(v79 + 72) = v82;
        *(v79 + 80) = v109;
        *(v79 + 88) = v78;
      }

      v40 = v118;
      v41 = v119;
    }

    else
    {
      Fence.Schedule.end.getter();
      static Calendar.current.getter();
      v102 = sub_100258360(v50);
      v104 = v67;
      (v107)(v50, v101);
      v53(v49, v55);
      v68 = v108;
      Fence.Schedule.daysOfWeek.getter();
      v69 = v106;
      static Fence.DaysOfWeek.all.getter();
      sub_100260118(&qword_1005B0B30, &type metadata accessor for Fence.DaysOfWeek, &protocol conformance descriptor for Fence.DaysOfWeek);
      v70 = v110;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v71 = *(v109 + 8);
      v71(v69, v70);
      v71(v68, v70);
      if (v124 == v123)
      {
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_1004C0BB0;
        v72 = v99;
        *(v63 + 32) = v120;
        *(v63 + 40) = v72;
        v73 = v97;
        *(v63 + 48) = v114;
        *(v63 + 56) = v73;
        v74 = v100;
        *(v63 + 64) = v96;
        *(v63 + 72) = v74;
        v75 = v104;
        *(v63 + 80) = v102;
        *(v63 + 88) = v75;
      }

      else
      {
        Fence.Schedule.daysOfWeek.getter();
        static Calendar.current.getter();
        v83 = sub_100057620(v50);
        v85 = v84;
        (v107)(v50, v101);
        v71(v68, v70);
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_1004C0BC0;
        v86 = v99;
        *(v63 + 32) = v120;
        *(v63 + 40) = v86;
        v87 = v97;
        *(v63 + 48) = v114;
        *(v63 + 56) = v87;
        v88 = v100;
        *(v63 + 64) = v96;
        *(v63 + 72) = v88;
        v89 = v104;
        *(v63 + 80) = v102;
        *(v63 + 88) = v89;
        *(v63 + 96) = v83;
        *(v63 + 104) = v85;
      }

      v40 = v118;
      v41 = v119;
      v62 = v112;
    }

    (*(v98 + 8))(v62, v113);
    goto LABEL_25;
  }

LABEL_27:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100260118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100260160(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0608, &qword_1004D1F38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002601D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0B58, &qword_1004D26D0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v26 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
        if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

BOOL sub_100260454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_1000094D0(a4, a5, a6);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_10026055C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1002605F4;

  return sub_10026FAF8(a2);
}

uint64_t sub_1002605F4()
{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {
    v3 = v2[3];

    return _swift_task_switch(sub_100260898, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[6] = v4;
    *v4 = v2;
    v4[1] = sub_100260764;
    v5 = v2[2];

    return sub_10027C184(v5);
  }
}

uint64_t sub_100260764()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[3];

    return _swift_task_switch(sub_100260A8C, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100260898()
{
  v11 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000030, 0x80000001004E6560, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  swift_willThrow();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100260A8C()
{
  v11 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000030, 0x80000001004E6560, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  swift_willThrow();
  v8 = *(v0 + 8);

  return v8();
}

void *sub_100260C80(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v6 = sub_10004B564(&qword_1005B09D0, &unk_1004D2380);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Fence();
  v10 = __chkstk_darwin(v9);
  v32 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v29 = &v25 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(v12 + 72);
  v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = a3 + v26;
  v30 = (v12 + 32);
  v31 = (v12 + 48);
  v17 = _swiftEmptyArrayStorage;
  v27 = v9;
  v28 = a1;
  v25 = v15;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v31)(v8, 1, v9) == 1)
    {
      sub_100002CE0(v8, &qword_1005B09D0, &unk_1004D2380);
    }

    else
    {
      v18 = v29;
      v19 = *v30;
      (*v30)(v29, v8, v9);
      v19(v32, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1001FD464(0, v17[2] + 1, 1, v17);
      }

      v21 = v17[2];
      v20 = v17[3];
      if (v21 >= v20 >> 1)
      {
        v17 = sub_1001FD464((v20 > 1), v21 + 1, 1, v17);
      }

      v17[2] = v21 + 1;
      v22 = v25;
      v23 = v17 + v26 + v21 * v25;
      v9 = v27;
      v19(v23, v32, v27);
      v15 = v22;
      a1 = v28;
    }

    v16 += v15;
    if (!--v14)
    {
      return v17;
    }
  }

  return v17;
}

uint64_t sub_100260F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v6 = type metadata accessor for PersonHandle();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v56 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for Fence();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v63 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v52 = &v44 - v16;
  v51 = *(a1 + 16);
  if (v51)
  {
    v46 = a3;
    v47 = v3;
    v17 = 0;
    v45 = v13;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v18 = v20;
    v70 = (v7 + 8);
    v21 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v22 = (v19 - 8);
    v23 = *(v19 + 56);
    v24 = v52;
    v59 = v7 + 16;
    v60 = v19;
    v54 = v7;
    v55 = v12;
    v62 = v11;
    v68 = v20;
    v58 = (v19 - 8);
    v50 = v21;
    v49 = v23;
    while (1)
    {
      v18(v24, v21 + v23 * v17, v12);
      result = Fence.others.getter();
      v26 = *(result + 16);
      v53 = v22 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v67 = v26;
      if (v26)
      {
        break;
      }

      v42 = *v22;
LABEL_15:
      ++v17;
      v42(v24, v12);
      v21 = v50;
      v18 = v68;
      v23 = v49;
      if (v17 == v51)
      {
        v43 = 1;
        a3 = v46;
        v13 = v45;
        return (*(v13 + 56))(a3, v43, 1, v12);
      }
    }

    v48 = v17;
    v27 = 0;
    v57 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v65 = result + v57;
    v66 = result;
    v28 = v11;
    while (v27 < *(result + 16))
    {
      v29 = v65 + *(v7 + 72) * v27;
      v30 = v7;
      v31 = v12;
      v32 = *(v30 + 16);
      v32(v28, v29, v6);
      v69 = PersonHandle.id.getter();
      v71 = v33;
      v34 = v63;
      v68(v63, v64, v31);
      v35 = Fence.others.getter();
      v61 = *v22;
      v61(v34, v31);
      if (*(v35 + 16))
      {
        v36 = v56;
        v32(v56, v35 + v57, v6);

        v37 = PersonHandle.id.getter();
        v39 = v38;
        v40 = *v70;
        (*v70)(v36, v6);
        if (v69 == v37 && v71 == v39)
        {

          v40(v62, v6);
          v12 = v55;
LABEL_19:

          v13 = v45;
          a3 = v46;
          (*(v45 + 32))(v46, v52, v12);
          v43 = 0;
          return (*(v13 + 56))(a3, v43, 1, v12);
        }

        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v28 = v62;
        v40(v62, v6);
        v7 = v54;
        v12 = v55;
        if (v41)
        {
          goto LABEL_19;
        }
      }

      else
      {

        v28 = v62;
        (*v70)(v62, v6);
        v12 = v31;
        v7 = v30;
      }

      ++v27;
      result = v66;
      v22 = v58;
      if (v67 == v27)
      {
        v11 = v28;

        v24 = v52;
        v17 = v48;
        v42 = v61;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v43 = 1;
    return (*(v13 + 56))(a3, v43, 1, v12);
  }

  return result;
}

uint64_t sub_100261468(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  v3[50] = *v2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v3[51] = swift_task_alloc();
  v4 = type metadata accessor for Fence.AcceptanceStatus();
  v3[52] = v4;
  v3[53] = *(v4 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = sub_10004B564(&qword_1005B0B60, &qword_1004D26E8);
  v3[57] = swift_task_alloc();
  sub_10004B564(&qword_1005A9148, &qword_1004D2370);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  v3[62] = swift_task_alloc();
  v5 = type metadata accessor for PersonHandle();
  v3[63] = v5;
  v3[64] = *(v5 - 8);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[67] = v6;
  v3[68] = *(v6 - 8);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v7 = type metadata accessor for Fence.Participant();
  v3[78] = v7;
  v3[79] = *(v7 - 8);
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v8 = type metadata accessor for Fence();
  v3[82] = v8;
  v9 = *(v8 - 8);
  v3[83] = v9;
  v3[84] = *(v9 + 64);
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v10 = type metadata accessor for Fence.MonitorRegion();
  v3[90] = v10;
  v3[91] = *(v10 - 8);
  v3[92] = swift_task_alloc();
  v11 = type metadata accessor for Fence.ID();
  v3[93] = v11;
  v3[94] = *(v11 - 8);
  v3[95] = swift_task_alloc();
  sub_10004B564(&qword_1005B09D0, &unk_1004D2380);
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v12 = swift_task_alloc();
  v3[102] = v12;
  *v12 = v3;
  v12[1] = sub_100261A08;

  return daemon.getter();
}

uint64_t sub_100261A08(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 824) = a1;

  v3 = swift_task_alloc();
  *(v2 + 832) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000094D0(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100261BE4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100261BE4(uint64_t a1)
{
  v3 = *v2;
  v3[105] = a1;
  v3[106] = v1;

  if (v1)
  {
    v4 = v3[49];
    v5 = sub_100265058;
  }

  else
  {
    v6 = v3[49];

    v5 = sub_100261D10;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100261D10(uint64_t a1)
{
  Fence.id.getter();
  v2 = swift_task_alloc();
  v1[107] = v2;
  *v2 = v1;
  v2[1] = sub_100261DB8;
  v3 = v1[101];
  v4 = v1[95];

  return sub_10020ED50(v3, v4);
}

uint64_t sub_100261DB8()
{
  v1 = *v0;
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 752);
  v4 = *(*v0 + 744);
  v5 = *(*v0 + 392);

  v6 = *(v3 + 8);
  *(v1 + 864) = v6;
  *(v1 + 872) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);

  return _swift_task_switch(sub_100261F3C, v5, 0);
}

uint64_t sub_100261F3C(uint64_t a1)
{
  v145 = v1;
  v2 = *(v1 + 736);
  v3 = *(v1 + 728);
  v4 = *(v1 + 720);
  Fence.region.getter();
  Fence.MonitorRegion.center.getter();
  v5 = *(v3 + 8);
  *(v1 + 880) = v5;
  *(v1 + 888) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  if (static Fence.isAllowed(at:)())
  {
    v6 = *(v1 + 808);
    v7 = *(v1 + 704);
    v8 = *(v1 + 664);
    v9 = *(v1 + 656);
    v10 = *(v1 + 648);
    v11 = *(v1 + 640);
    v12 = *(v1 + 632);
    v13 = *(v1 + 624);
    v14 = *(v1 + 384);
    v15 = *(v8 + 48);
    *(v1 + 896) = v15;
    *(v1 + 904) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v16 = v15(v6, 1, v9);
    *(v1 + 1008) = v16;
    v17 = *(v8 + 16);
    *(v1 + 912) = v17;
    *(v1 + 920) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v7, v14, v9);
    Fence.finder.getter();
    (*(v12 + 104))(v11, enum case for Fence.Participant.me(_:), v13);
    LOBYTE(v7) = static Fence.Participant.== infix(_:_:)();
    v18 = *(v12 + 8);
    v18(v11, v13);
    v18(v10, v13);
    if (v7)
    {
      v19 = *(v1 + 616);
      v20 = *(v1 + 544);
      v21 = *(v1 + 536);
      Fence.muteEndDate.getter();
      v22 = *(v20 + 48);
      *(v1 + 928) = v22;
      *(v1 + 936) = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v23 = v22(v19, 1, v21);
      sub_100002CE0(v19, &unk_1005AE5B0, &qword_1004C32F0);
      if (v23 == 1 && v16 == 1)
      {
        v24 = swift_task_alloc();
        *(v1 + 944) = v24;
        *v24 = v1;
        v24[1] = sub_1002630B8;

        return sub_100006424();
      }
    }

    v41 = Fence.others.getter();
    if (!*(v41 + 16))
    {

LABEL_31:
      v88 = *(v1 + 880);
      v89 = *(v1 + 736);
      v90 = *(v1 + 720);
      Fence.region.getter();
      Fence.MonitorRegion.radius.getter();
      v92 = v91;
      v88(v89, v90);
      static Fence.MonitorRegion.minimumRadius.getter();
      if (v92 < v93)
      {
        if (qword_1005A80E8 != -1)
        {
          swift_once();
        }

        v94 = type metadata accessor for Logger();
        sub_10000A6F0(v94, qword_1005DFF88);
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v95, v96))
        {
          v137 = *(v1 + 880);
          v141 = *(v1 + 864);
          v97 = *(v1 + 760);
          v139 = *(v1 + 744);
          v98 = *(v1 + 736);
          v135 = *(v1 + 720);
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v144[0] = v100;
          *v99 = 134349314;
          swift_beginAccess();
          Fence.region.getter();
          swift_endAccess();
          Fence.MonitorRegion.radius.getter();
          v102 = v101;
          v137(v98, v135);
          *(v99 + 4) = v102;
          *(v99 + 12) = 2082;
          Fence.id.getter();
          sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
          v103 = dispatch thunk of CustomStringConvertible.description.getter();
          v105 = v104;
          v141(v97, v139);
          v106 = sub_10000D01C(v103, v105, v144);

          *(v99 + 14) = v106;
          _os_log_impl(&_mh_execute_header, v95, v96, "    Fence radius %{public}f for %{public}s capped to min", v99, 0x16u);
          sub_100004984(v100);
        }

        static Fence.MonitorRegion.minimumRadius.getter();
        v108 = v107;
        swift_beginAccess();
        v109 = Fence.region.modify();
        Fence.MonitorRegion.updateRadius(_:)(v108);
        v109(v1 + 176, 0);
        swift_endAccess();
      }

      v110 = *(v1 + 880);
      v111 = *(v1 + 736);
      v112 = *(v1 + 720);
      swift_beginAccess();
      Fence.region.getter();
      swift_endAccess();
      Fence.MonitorRegion.radius.getter();
      v114 = v113;
      v110(v111, v112);
      static Fence.MonitorRegion.maximumRadius.getter();
      if (v115 < v114)
      {
        if (qword_1005A80E8 != -1)
        {
          swift_once();
        }

        v116 = type metadata accessor for Logger();
        sub_10000A6F0(v116, qword_1005DFF88);
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v117, v118))
        {
          v138 = *(v1 + 880);
          v142 = *(v1 + 864);
          v119 = *(v1 + 760);
          v140 = *(v1 + 744);
          v120 = *(v1 + 736);
          v136 = *(v1 + 720);
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v144[0] = v122;
          *v121 = 134349314;
          swift_beginAccess();
          Fence.region.getter();
          swift_endAccess();
          Fence.MonitorRegion.radius.getter();
          v124 = v123;
          v138(v120, v136);
          *(v121 + 4) = v124;
          *(v121 + 12) = 2082;
          Fence.id.getter();
          sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
          v125 = dispatch thunk of CustomStringConvertible.description.getter();
          v127 = v126;
          v142(v119, v140);
          v128 = sub_10000D01C(v125, v127, v144);

          *(v121 + 14) = v128;
          _os_log_impl(&_mh_execute_header, v117, v118, "    Fence radius %{public}f for %{public}s capped to max", v121, 0x16u);
          sub_100004984(v122);
        }

        static Fence.MonitorRegion.maximumRadius.getter();
        v130 = v129;
        swift_beginAccess();
        v131 = Fence.region.modify();
        Fence.MonitorRegion.updateRadius(_:)(v130);
        v131(v1 + 144, 0);
        swift_endAccess();
      }

      (*(v1 + 912))(*(v1 + 688), *(v1 + 704), *(v1 + 656));
      v132 = swift_task_alloc();
      *(v1 + 976) = v132;
      *v132 = v1;
      v132[1] = sub_10026467C;
      v133 = *(v1 + 696);
      v134 = *(v1 + 688);

      return sub_100269ECC(v133, v134);
    }

    v42 = *(v1 + 896);
    v43 = *(v1 + 808);
    v44 = *(v1 + 784);
    v45 = *(v1 + 656);
    v46 = *(v1 + 528);
    v47 = *(v1 + 520);
    v48 = *(v1 + 504);
    v49 = *(v1 + 512);
    (*(v49 + 16))(v47, v41 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v48);

    (*(v49 + 32))(v46, v47, v48);
    sub_100005F04(v43, v44, &qword_1005B09D0, &unk_1004D2380);
    v50 = v42(v44, 1, v45);
    v51 = *(v1 + 784);
    if (v50 == 1)
    {
      v52 = *(v1 + 592);
      v53 = *(v1 + 544);
      v54 = *(v1 + 536);
      sub_100002CE0(*(v1 + 784), &qword_1005B09D0, &unk_1004D2380);
      (*(v53 + 56))(v52, 1, 1, v54);
    }

    else
    {
      v55 = *(v1 + 664);
      v56 = *(v1 + 656);
      Fence.muteEndDate.getter();
      (*(v55 + 8))(v51, v56);
    }

    v57 = *(v1 + 592);
    v58 = *(v1 + 584);
    v59 = *(v1 + 544);
    v60 = *(v1 + 536);
    v62 = *(v1 + 488);
    v61 = *(v1 + 496);
    Fence.muteEndDate.getter();
    v63 = *(v62 + 48);
    sub_100005F04(v57, v61, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100005F04(v58, v61 + v63, &unk_1005AE5B0, &qword_1004C32F0);
    v64 = *(v59 + 48);
    v65 = v64(v61, 1, v60);
    v66 = *(v1 + 536);
    if (v65 == 1)
    {
      v67 = *(v1 + 592);
      sub_100002CE0(*(v1 + 584), &unk_1005AE5B0, &qword_1004C32F0);
      sub_100002CE0(v67, &unk_1005AE5B0, &qword_1004C32F0);
      if (v64(v61 + v63, 1, v66) == 1)
      {
        sub_100002CE0(*(v1 + 496), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_30:
        (*(*(v1 + 512) + 8))(*(v1 + 528), *(v1 + 504));
        goto LABEL_31;
      }
    }

    else
    {
      sub_100005F04(*(v1 + 496), *(v1 + 576), &unk_1005AE5B0, &qword_1004C32F0);
      v68 = v64(v61 + v63, 1, v66);
      v69 = *(v1 + 592);
      v70 = *(v1 + 584);
      v71 = *(v1 + 576);
      if (v68 != 1)
      {
        v83 = *(v1 + 552);
        v84 = *(v1 + 544);
        v85 = *(v1 + 536);
        v143 = *(v1 + 496);
        (*(v84 + 32))(v83, v61 + v63, v85);
        sub_1000094D0(&qword_1005AE5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v86 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87 = *(v84 + 8);
        v87(v83, v85);
        sub_100002CE0(v70, &unk_1005AE5B0, &qword_1004C32F0);
        sub_100002CE0(v69, &unk_1005AE5B0, &qword_1004C32F0);
        v87(v71, v85);
        sub_100002CE0(v143, &unk_1005AE5B0, &qword_1004C32F0);
        if (v86)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      v72 = *(v1 + 544);
      v73 = *(v1 + 536);
      sub_100002CE0(*(v1 + 584), &unk_1005AE5B0, &qword_1004C32F0);
      sub_100002CE0(v69, &unk_1005AE5B0, &qword_1004C32F0);
      (*(v72 + 8))(v71, v73);
    }

    sub_100002CE0(*(v1 + 496), &qword_1005AAE00, &qword_1004C4A18);
LABEL_26:
    v74 = *(v1 + 912);
    v75 = *(v1 + 776);
    v76 = *(v1 + 704);
    v77 = *(v1 + 664);
    v78 = *(v1 + 656);
    Fence.muteEndDate.getter();
    v74(v75, v76, v78);
    (*(v77 + 56))(v75, 0, 1, v78);
    v79 = swift_task_alloc();
    *(v1 + 960) = v79;
    *v79 = v1;
    v79[1] = sub_100263EC8;
    v80 = *(v1 + 776);
    v81 = *(v1 + 568);
    v82 = *(v1 + 528);

    return sub_1002695FC(v82, v81, v80);
  }

  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2310;
  *(inited + 32) = 0;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001004E64B0;
  *(inited + 80) = 11;
  *(inited + 112) = &type metadata for Bool;
  *(inited + 120) = &off_10058C3C8;
  *(inited + 88) = 0;
  v27 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v28 = sub_10004C68C(2u, v27);
  v30 = v29;
  v32 = v31;

  sub_10001157C(v28, v30, v32);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000A6F0(v33, qword_1005DFF88);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v144[0] = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_10000D01C(0x6E65662865766173, 0xEC000000293A6563, v144);
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s: Fence's region is not allowed!", v36, 0xCu);
    sub_100004984(v37);
  }

  v38 = *(v1 + 808);
  sub_10005CF04();
  swift_allocError();
  *v39 = 7;
  swift_willThrow();

  sub_100002CE0(v38, &qword_1005B09D0, &unk_1004D2380);

  v40 = *(v1 + 8);

  return v40();
}

uint64_t sub_1002630B8(uint64_t a1)
{
  v2 = *(*v1 + 392);
  *(*v1 + 952) = a1;

  return _swift_task_switch(sub_1002631D0, v2, 0);
}

uint64_t sub_1002631D0()
{
  v129 = v0;
  v1 = *(v0 + 896);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 656);
  sub_100260F54(*(v0 + 952), *(v0 + 704), v2);

  sub_100005F04(v2, v3, &qword_1005B09D0, &unk_1004D2380);
  if (v1(v3, 1, v4) == 1)
  {
    v5 = *(v0 + 792);
    v6 = *(v0 + 608);
    v7 = *(v0 + 544);
    v8 = *(v0 + 536);
    sub_100002CE0(*(v0 + 800), &qword_1005B09D0, &unk_1004D2380);
    sub_100002CE0(v5, &qword_1005B09D0, &unk_1004D2380);
    (*(v7 + 56))(v6, 1, 1, v8);
LABEL_5:
    v17 = *(v0 + 608);
    v18 = &unk_1005AE5B0;
    v19 = &qword_1004C32F0;
    goto LABEL_7;
  }

  v9 = *(v0 + 928);
  v10 = *(v0 + 792);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);
  v13 = *(v0 + 608);
  v14 = *(v0 + 536);
  Fence.muteEndDate.getter();
  (*(v11 + 8))(v10, v12);
  v15 = v9(v13, 1, v14);
  v16 = *(v0 + 800);
  if (v15 == 1)
  {
    sub_100002CE0(*(v0 + 800), &qword_1005B09D0, &unk_1004D2380);
    goto LABEL_5;
  }

  v20 = *(v0 + 600);
  v21 = *(v0 + 560);
  v22 = *(v0 + 544);
  v23 = *(v0 + 536);
  (*(v22 + 32))(v21, *(v0 + 608), v23);
  (*(v22 + 16))(v20, v21, v23);
  (*(v22 + 56))(v20, 0, 1, v23);
  Fence.update(muteEndDate:)();
  sub_100002CE0(v20, &unk_1005AE5B0, &qword_1004C32F0);
  (*(v22 + 8))(v21, v23);
  v18 = &qword_1005B09D0;
  v19 = &unk_1004D2380;
  v17 = v16;
LABEL_7:
  sub_100002CE0(v17, v18, v19);
  v24 = Fence.others.getter();
  if (!*(v24 + 16))
  {

LABEL_23:
    v72 = *(v0 + 880);
    v73 = *(v0 + 736);
    v74 = *(v0 + 720);
    Fence.region.getter();
    Fence.MonitorRegion.radius.getter();
    v76 = v75;
    v72(v73, v74);
    static Fence.MonitorRegion.minimumRadius.getter();
    if (v76 < v77)
    {
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      sub_10000A6F0(v78, qword_1005DFF88);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v121 = *(v0 + 880);
        v125 = *(v0 + 864);
        v81 = *(v0 + 760);
        v123 = *(v0 + 744);
        v82 = *(v0 + 736);
        v119 = *(v0 + 720);
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v128[0] = v84;
        *v83 = 134349314;
        swift_beginAccess();
        Fence.region.getter();
        swift_endAccess();
        Fence.MonitorRegion.radius.getter();
        v86 = v85;
        v121(v82, v119);
        *(v83 + 4) = v86;
        *(v83 + 12) = 2082;
        Fence.id.getter();
        sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
        v87 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = v88;
        v125(v81, v123);
        v90 = sub_10000D01C(v87, v89, v128);

        *(v83 + 14) = v90;
        _os_log_impl(&_mh_execute_header, v79, v80, "    Fence radius %{public}f for %{public}s capped to min", v83, 0x16u);
        sub_100004984(v84);
      }

      static Fence.MonitorRegion.minimumRadius.getter();
      v92 = v91;
      swift_beginAccess();
      v93 = Fence.region.modify();
      Fence.MonitorRegion.updateRadius(_:)(v92);
      v93(v0 + 176, 0);
      swift_endAccess();
    }

    v94 = *(v0 + 880);
    v95 = *(v0 + 736);
    v96 = *(v0 + 720);
    swift_beginAccess();
    Fence.region.getter();
    swift_endAccess();
    Fence.MonitorRegion.radius.getter();
    v98 = v97;
    v94(v95, v96);
    static Fence.MonitorRegion.maximumRadius.getter();
    if (v99 < v98)
    {
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      sub_10000A6F0(v100, qword_1005DFF88);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v122 = *(v0 + 880);
        v126 = *(v0 + 864);
        v103 = *(v0 + 760);
        v124 = *(v0 + 744);
        v104 = *(v0 + 736);
        v120 = *(v0 + 720);
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v128[0] = v106;
        *v105 = 134349314;
        swift_beginAccess();
        Fence.region.getter();
        swift_endAccess();
        Fence.MonitorRegion.radius.getter();
        v108 = v107;
        v122(v104, v120);
        *(v105 + 4) = v108;
        *(v105 + 12) = 2082;
        Fence.id.getter();
        sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
        v109 = dispatch thunk of CustomStringConvertible.description.getter();
        v111 = v110;
        v126(v103, v124);
        v112 = sub_10000D01C(v109, v111, v128);

        *(v105 + 14) = v112;
        _os_log_impl(&_mh_execute_header, v101, v102, "    Fence radius %{public}f for %{public}s capped to max", v105, 0x16u);
        sub_100004984(v106);
      }

      static Fence.MonitorRegion.maximumRadius.getter();
      v114 = v113;
      swift_beginAccess();
      v115 = Fence.region.modify();
      Fence.MonitorRegion.updateRadius(_:)(v114);
      v115(v0 + 144, 0);
      swift_endAccess();
    }

    (*(v0 + 912))(*(v0 + 688), *(v0 + 704), *(v0 + 656));
    v116 = swift_task_alloc();
    *(v0 + 976) = v116;
    *v116 = v0;
    v116[1] = sub_10026467C;
    v117 = *(v0 + 696);
    v118 = *(v0 + 688);

    return sub_100269ECC(v117, v118);
  }

  v25 = *(v0 + 896);
  v26 = *(v0 + 808);
  v27 = *(v0 + 784);
  v28 = *(v0 + 656);
  v29 = *(v0 + 528);
  v30 = *(v0 + 520);
  v31 = *(v0 + 504);
  v32 = *(v0 + 512);
  (*(v32 + 16))(v30, v24 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v31);

  (*(v32 + 32))(v29, v30, v31);
  sub_100005F04(v26, v27, &qword_1005B09D0, &unk_1004D2380);
  v33 = v25(v27, 1, v28);
  v34 = *(v0 + 784);
  if (v33 == 1)
  {
    v35 = *(v0 + 592);
    v36 = *(v0 + 544);
    v37 = *(v0 + 536);
    sub_100002CE0(*(v0 + 784), &qword_1005B09D0, &unk_1004D2380);
    (*(v36 + 56))(v35, 1, 1, v37);
  }

  else
  {
    v38 = *(v0 + 664);
    v39 = *(v0 + 656);
    Fence.muteEndDate.getter();
    (*(v38 + 8))(v34, v39);
  }

  v40 = *(v0 + 592);
  v41 = *(v0 + 584);
  v42 = *(v0 + 544);
  v43 = *(v0 + 536);
  v45 = *(v0 + 488);
  v44 = *(v0 + 496);
  Fence.muteEndDate.getter();
  v46 = *(v45 + 48);
  sub_100005F04(v40, v44, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(v41, v44 + v46, &unk_1005AE5B0, &qword_1004C32F0);
  v47 = *(v42 + 48);
  v48 = v47(v44, 1, v43);
  v49 = *(v0 + 536);
  if (v48 == 1)
  {
    v50 = *(v0 + 592);
    sub_100002CE0(*(v0 + 584), &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v50, &unk_1005AE5B0, &qword_1004C32F0);
    if (v47(v44 + v46, 1, v49) == 1)
    {
      sub_100002CE0(*(v0 + 496), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_22:
      (*(*(v0 + 512) + 8))(*(v0 + 528), *(v0 + 504));
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  sub_100005F04(*(v0 + 496), *(v0 + 576), &unk_1005AE5B0, &qword_1004C32F0);
  v51 = v47(v44 + v46, 1, v49);
  v52 = *(v0 + 592);
  v53 = *(v0 + 584);
  v54 = *(v0 + 576);
  if (v51 == 1)
  {
    v55 = *(v0 + 544);
    v56 = *(v0 + 536);
    sub_100002CE0(*(v0 + 584), &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v52, &unk_1005AE5B0, &qword_1004C32F0);
    (*(v55 + 8))(v54, v56);
LABEL_17:
    sub_100002CE0(*(v0 + 496), &qword_1005AAE00, &qword_1004C4A18);
    goto LABEL_18;
  }

  v67 = *(v0 + 552);
  v68 = *(v0 + 544);
  v69 = *(v0 + 536);
  v127 = *(v0 + 496);
  (*(v68 + 32))(v67, v44 + v46, v69);
  sub_1000094D0(&qword_1005AE5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v70 = dispatch thunk of static Equatable.== infix(_:_:)();
  v71 = *(v68 + 8);
  v71(v67, v69);
  sub_100002CE0(v53, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100002CE0(v52, &unk_1005AE5B0, &qword_1004C32F0);
  v71(v54, v69);
  sub_100002CE0(v127, &unk_1005AE5B0, &qword_1004C32F0);
  if (v70)
  {
    goto LABEL_22;
  }

LABEL_18:
  v57 = *(v0 + 912);
  v58 = *(v0 + 776);
  v59 = *(v0 + 704);
  v60 = *(v0 + 664);
  v61 = *(v0 + 656);
  Fence.muteEndDate.getter();
  v57(v58, v59, v61);
  (*(v60 + 56))(v58, 0, 1, v61);
  v62 = swift_task_alloc();
  *(v0 + 960) = v62;
  *v62 = v0;
  v62[1] = sub_100263EC8;
  v63 = *(v0 + 776);
  v64 = *(v0 + 568);
  v65 = *(v0 + 528);

  return sub_1002695FC(v65, v64, v63);
}

uint64_t sub_100263EC8()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  v3 = v2[97];
  v4 = v2[71];
  v5 = v2[49];
  sub_100002CE0(v3, &qword_1005B09D0, &unk_1004D2380);
  sub_100002CE0(v4, &unk_1005AE5B0, &qword_1004C32F0);
  if (v0)
  {
    v6 = sub_10026529C;
  }

  else
  {
    v6 = sub_10026404C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10026404C()
{
  v58 = v0;
  (*(*(v0 + 512) + 8))(*(v0 + 528), *(v0 + 504));
  v1 = *(v0 + 880);
  v2 = *(v0 + 736);
  v3 = *(v0 + 720);
  Fence.region.getter();
  Fence.MonitorRegion.radius.getter();
  v5 = v4;
  v1(v2, v3);
  static Fence.MonitorRegion.minimumRadius.getter();
  if (v5 < v6)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005DFF88);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v51 = *(v0 + 880);
      v55 = *(v0 + 864);
      v10 = *(v0 + 760);
      v53 = *(v0 + 744);
      v11 = *(v0 + 736);
      v49 = *(v0 + 720);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v57 = v13;
      *v12 = 134349314;
      swift_beginAccess();
      Fence.region.getter();
      swift_endAccess();
      Fence.MonitorRegion.radius.getter();
      v15 = v14;
      v51(v11, v49);
      *(v12 + 4) = v15;
      *(v12 + 12) = 2082;
      Fence.id.getter();
      sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v55(v10, v53);
      v19 = sub_10000D01C(v16, v18, &v57);

      *(v12 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "    Fence radius %{public}f for %{public}s capped to min", v12, 0x16u);
      sub_100004984(v13);
    }

    static Fence.MonitorRegion.minimumRadius.getter();
    v21 = v20;
    swift_beginAccess();
    v22 = Fence.region.modify();
    Fence.MonitorRegion.updateRadius(_:)(v21);
    v22(v0 + 176, 0);
    swift_endAccess();
  }

  v23 = *(v0 + 880);
  v24 = *(v0 + 736);
  v25 = *(v0 + 720);
  swift_beginAccess();
  Fence.region.getter();
  swift_endAccess();
  Fence.MonitorRegion.radius.getter();
  v27 = v26;
  v23(v24, v25);
  static Fence.MonitorRegion.maximumRadius.getter();
  if (v28 < v27)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000A6F0(v29, qword_1005DFF88);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v52 = *(v0 + 880);
      v56 = *(v0 + 864);
      v32 = *(v0 + 760);
      v54 = *(v0 + 744);
      v33 = *(v0 + 736);
      v50 = *(v0 + 720);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v57 = v35;
      *v34 = 134349314;
      swift_beginAccess();
      Fence.region.getter();
      swift_endAccess();
      Fence.MonitorRegion.radius.getter();
      v37 = v36;
      v52(v33, v50);
      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      Fence.id.getter();
      sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v56(v32, v54);
      v41 = sub_10000D01C(v38, v40, &v57);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "    Fence radius %{public}f for %{public}s capped to max", v34, 0x16u);
      sub_100004984(v35);
    }

    static Fence.MonitorRegion.maximumRadius.getter();
    v43 = v42;
    swift_beginAccess();
    v44 = Fence.region.modify();
    Fence.MonitorRegion.updateRadius(_:)(v43);
    v44(v0 + 144, 0);
    swift_endAccess();
  }

  (*(v0 + 912))(*(v0 + 688), *(v0 + 704), *(v0 + 656));
  v45 = swift_task_alloc();
  *(v0 + 976) = v45;
  *v45 = v0;
  v45[1] = sub_10026467C;
  v46 = *(v0 + 696);
  v47 = *(v0 + 688);

  return sub_100269ECC(v46, v47);
}

uint64_t sub_10026467C()
{
  v2 = *v1;
  v2[123] = v0;

  v3 = v2[86];
  v4 = v2[83];
  v5 = v2[82];
  v6 = v2[49];
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v8 = v9;
  if (v0)
  {
    v8(v3, v5);
    v10 = sub_1002655E8;
  }

  else
  {
    v2[124] = v8;
    v2[125] = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v3, v5);
    v10 = sub_100264814;
  }

  return _swift_task_switch(v10, v6, 0);
}

uint64_t sub_100264814()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 808);
  v3 = *(v0 + 768);
  v4 = *(v0 + 656);
  v66 = *(*(v0 + 664) + 32);
  v66(*(v0 + 712), *(v0 + 696), v4);
  sub_100005F04(v2, v3, &qword_1005B09D0, &unk_1004D2380);
  if (v1(v3, 1, v4) == 1)
  {
    sub_100002CE0(*(v0 + 768), &qword_1005B09D0, &unk_1004D2380);
    v5 = 1;
  }

  else
  {
    v6 = *(v0 + 992);
    v7 = *(v0 + 768);
    v8 = *(v0 + 656);
    Fence.acceptanceStatus.getter();
    v6(v7, v8);
    v5 = 0;
  }

  v10 = *(v0 + 472);
  v9 = *(v0 + 480);
  v12 = *(v0 + 448);
  v11 = *(v0 + 456);
  v13 = *(v0 + 416);
  v14 = *(v0 + 424);
  v15 = v14[7];
  v15(v9, v5, 1, v13);
  v64 = enum case for Fence.AcceptanceStatus.accepted(_:);
  v63 = v14[13];
  v63(v10);
  v15(v10, 0, 1, v13);
  v16 = *(v12 + 48);
  sub_100005F04(v9, v11, &qword_1005A9148, &qword_1004D2370);
  sub_100005F04(v10, v11 + v16, &qword_1005A9148, &qword_1004D2370);
  v17 = v14[6];
  if (v17(v11, 1, v13) == 1)
  {
    v18 = *(v0 + 480);
    v19 = *(v0 + 416);
    sub_100002CE0(*(v0 + 472), &qword_1005A9148, &qword_1004D2370);
    sub_100002CE0(v18, &qword_1005A9148, &qword_1004D2370);
    if (v17(v11 + v16, 1, v19) == 1)
    {
      sub_100002CE0(*(v0 + 456), &qword_1005A9148, &qword_1004D2370);
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(v0 + 416);
    sub_100005F04(*(v0 + 456), *(v0 + 464), &qword_1005A9148, &qword_1004D2370);
    v21 = v17(v11 + v16, 1, v20);
    v23 = *(v0 + 472);
    v22 = *(v0 + 480);
    v24 = *(v0 + 464);
    if (v21 != 1)
    {
      v62 = *(v0 + 456);
      v45 = *(v0 + 440);
      v47 = *(v0 + 416);
      v46 = *(v0 + 424);
      (*(v46 + 32))(v45, v11 + v16, v47);
      sub_1000094D0(&qword_1005B0B68, &type metadata accessor for Fence.AcceptanceStatus, &protocol conformance descriptor for Fence.AcceptanceStatus);
      v61 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *(v46 + 8);
      v48(v45, v47);
      sub_100002CE0(v23, &qword_1005A9148, &qword_1004D2370);
      sub_100002CE0(v22, &qword_1005A9148, &qword_1004D2370);
      v48(v24, v47);
      sub_100002CE0(v62, &qword_1005A9148, &qword_1004D2370);
      if (v61)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v25 = *(v0 + 416);
    v26 = *(v0 + 424);
    sub_100002CE0(*(v0 + 472), &qword_1005A9148, &qword_1004D2370);
    sub_100002CE0(v22, &qword_1005A9148, &qword_1004D2370);
    (*(v26 + 8))(v24, v25);
  }

  sub_100002CE0(*(v0 + 456), &qword_1005B0B60, &qword_1004D26E8);
LABEL_10:
  v28 = *(v0 + 432);
  v27 = *(v0 + 440);
  v29 = *(v0 + 416);
  v30 = *(v0 + 424);
  Fence.acceptanceStatus.getter();
  (v63)(v28, v64, v29);
  v31 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v32 = *(v30 + 8);
  v32(v28, v29);
  v32(v27, v29);
  if (v31)
  {
    v33 = *(v0 + 912);
    v34 = *(v0 + 712);
    v35 = *(v0 + 680);
    v36 = *(v0 + 672);
    v37 = *(v0 + 664);
    v38 = *(v0 + 656);
    v39 = *(v0 + 408);
    v65 = *(v0 + 400);
    v40 = *(v0 + 392);
    v41 = type metadata accessor for TaskPriority();
    (*(*(v41 - 8) + 56))(v39, 1, 1, v41);
    v33(v35, v34, v38);
    v42 = sub_1000094D0(&qword_1005AF4A8, type metadata accessor for FenceService, &unk_1004D2208);
    v43 = (*(v37 + 80) + 40) & ~*(v37 + 80);
    v44 = swift_allocObject();
    *(v44 + 2) = v40;
    *(v44 + 3) = v42;
    *(v44 + 4) = v40;
    v66(&v44[v43], v35, v38);
    *&v44[(v36 + v43 + 7) & 0xFFFFFFFFFFFFFFF8] = v65;
    swift_retain_n();
    sub_1001D7F30(0, 0, v39, &unk_1004D2708, v44);
  }

LABEL_13:
  v49 = *(v0 + 712);
  if (*(v0 + 1008) == 1)
  {
    v50 = sub_10004CD78(v49, 0, 0);
  }

  else
  {
    v50 = sub_10004DD70(v49, 0, 0);
  }

  v53 = *(v0 + 992);
  v54 = *(v0 + 808);
  v55 = *(v0 + 712);
  v56 = *(v0 + 704);
  v57 = *(v0 + 656);
  v58 = *(v0 + 376);
  sub_10001157C(v50, v51, v52);

  sub_100002CE0(v54, &qword_1005B09D0, &unk_1004D2380);
  v66(v58, v55, v57);
  v53(v56, v57);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_100265058()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026529C()
{
  (*(*(v0 + 512) + 8))(*(v0 + 528), *(v0 + 504));
  v1 = *(v0 + 968);
  v2 = *(v0 + 704);
  if (*(v0 + 1008) == 1)
  {
    swift_beginAccess();
    swift_errorRetain();
    v3 = sub_10004CD78(v2, v1, 1);
  }

  else
  {
    swift_beginAccess();
    swift_errorRetain();
    v3 = sub_10004DD70(v2, v1, 1);
  }

  v6 = v3;
  v7 = v4;
  v8 = v5;
  v9 = *(v0 + 808);
  v10 = *(v0 + 704);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);

  sub_10001157C(v6, v7, v8);

  swift_willThrow();

  sub_100002CE0(v9, &qword_1005B09D0, &unk_1004D2380);
  (*(v11 + 8))(v10, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002655E8()
{
  v1 = *(v0 + 984);
  v2 = *(v0 + 704);
  if (*(v0 + 1008) == 1)
  {
    swift_beginAccess();
    swift_errorRetain();
    v3 = sub_10004CD78(v2, v1, 1);
  }

  else
  {
    swift_beginAccess();
    swift_errorRetain();
    v3 = sub_10004DD70(v2, v1, 1);
  }

  v6 = v3;
  v7 = v4;
  v8 = v5;
  v9 = *(v0 + 808);
  v10 = *(v0 + 704);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);

  sub_10001157C(v6, v7, v8);

  swift_willThrow();

  sub_100002CE0(v9, &qword_1005B09D0, &unk_1004D2380);
  (*(v11 + 8))(v10, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10026591C(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2[27] = swift_task_alloc();
  v3 = type metadata accessor for Fence.Participant();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v4 = type metadata accessor for Fence.ID();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v2[36] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[37] = v5;
  v6 = *(v5 - 8);
  v2[38] = v6;
  v2[39] = *(v6 + 64);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v7 = type metadata accessor for Handle();
  v2[42] = v7;
  v2[43] = *(v7 - 8);
  v2[44] = swift_task_alloc();
  v8 = type metadata accessor for PersonHandle();
  v2[45] = v8;
  v2[46] = *(v8 - 8);
  v2[47] = swift_task_alloc();
  v9 = type metadata accessor for Fence();
  v2[48] = v9;
  v2[49] = *(v9 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  sub_10004B564(&qword_1005B09D0, &unk_1004D2380);
  v2[56] = swift_task_alloc();
  v10 = swift_task_alloc();
  v2[57] = v10;
  *v10 = v2;
  v10[1] = sub_100265D10;

  return daemon.getter();
}

uint64_t sub_100265D10(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[58] = a1;

  v3 = swift_task_alloc();
  v2[59] = v3;
  v4 = type metadata accessor for Daemon();
  v2[60] = v4;
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[61] = v6;
  v7 = sub_1000094D0(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100265EF0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100265EF0(uint64_t a1)
{
  v3 = *v2;
  v3[62] = a1;
  v3[63] = v1;

  if (v1)
  {
    v4 = v3[25];

    return _swift_task_switch(sub_100267E04, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[64] = v5;
    *v5 = v3;
    v5[1] = sub_100266064;

    return daemon.getter();
  }
}

uint64_t sub_100266064(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 520) = a1;

  v5 = swift_task_alloc();
  *(v3 + 528) = v5;
  v6 = type metadata accessor for CommandManager(0);
  v7 = sub_1000094D0(&qword_1005A90C8, type metadata accessor for CommandManager, &unk_1004C23F8);
  *v5 = v4;
  v5[1] = sub_100266218;
  v8 = *(v2 + 488);
  v9 = *(v2 + 480);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100266218(uint64_t a1)
{
  v3 = *v2;
  v3[67] = a1;
  v3[68] = v1;

  if (v1)
  {
    v4 = v3[25];

    return _swift_task_switch(sub_100267F50, v4, 0);
  }

  else
  {

    v3[69] = swift_allocBox();
    v3[70] = v5;
    v6 = swift_task_alloc();
    v3[71] = v6;
    *v6 = v3;
    v6[1] = sub_1002663B0;
    v7 = v3[56];
    v8 = v3[24];

    return sub_10020ED50(v7, v8);
  }
}

uint64_t sub_1002663B0()
{
  v1 = *(*v0 + 200);

  return _swift_task_switch(sub_1002664C0, v1, 0);
}

uint64_t sub_1002664C0()
{
  v1 = v0[56];
  v2 = v0[48];
  v3 = v0[49];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[32];
    v5 = v0[33];
    v6 = v0[24];
    sub_100002CE0(v1, &qword_1005B09D0, &unk_1004D2380);
    swift_deallocBox();
    sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
    inited = swift_initStackObject();
    *(inited + 32) = 6;
    *(inited + 16) = xmmword_1004C2310;
    *(inited + 64) = &type metadata for String;
    *(inited + 72) = &off_10058C398;
    strcpy((inited + 40), "NoFenceFound");
    *(inited + 53) = 0;
    *(inited + 54) = -5120;
    *(inited + 80) = 17;
    *(inited + 112) = &type metadata for Bool;
    *(inited + 120) = &off_10058C3C8;
    *(inited + 88) = 0;
    v8 = sub_1000105C0(inited);
    swift_setDeallocating();
    sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
    swift_arrayDestroy();
    v9 = sub_10004C68C(4u, v8);
    v11 = v10;
    v13 = v12;

    sub_10001157C(v9, v11, v13);

    type metadata accessor for FenceServiceClient.Failure(0);
    sub_1000094D0(&qword_1005A9140, type metadata accessor for FenceServiceClient.Failure, &unk_1004D25C8);
    swift_allocError();
    (*(v5 + 16))(v14, v6, v4);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_3:

    v15 = v0[1];

    return v15();
  }

  v17 = v0[70];
  v18 = v0[55];
  (*(v3 + 32))(v17, v1, v2);
  Fence.shouldDeleteFence.setter();
  v19 = *(v3 + 16);
  v0[72] = v19;
  v0[73] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v18, v17, v2);
  v20 = Fence.others.getter();
  v21 = *(v3 + 8);
  v0[74] = v21;
  v0[75] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v103 = v21;
  v21(v18, v2);
  v22 = *(v20 + 16);
  if (v22)
  {
    v98 = v19;
    v23 = v0[46];
    v24 = v0[43];
    v26 = *(v23 + 16);
    v25 = v23 + 16;
    v27 = v20 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v107 = *(v25 + 56);
    v109 = v26;
    v28 = _swiftEmptyArrayStorage;
    do
    {
      v29 = v0[47];
      v30 = v0[45];
      v109(v29, v27, v30);
      PersonHandle.id.getter();
      Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
      (*(v25 - 8))(v29, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1001FCA0C(0, v28[2] + 1, 1, v28);
      }

      v32 = v28[2];
      v31 = v28[3];
      if (v32 >= v31 >> 1)
      {
        v28 = sub_1001FCA0C((v31 > 1), v32 + 1, 1, v28);
      }

      v33 = v0[44];
      v34 = v0[42];
      v28[2] = v32 + 1;
      (*(v24 + 32))(v28 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v32, v33, v34);
      v27 += v107;
      --v22;
    }

    while (v22);

    v19 = v98;
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
  }

  v35 = v0[54];
  v36 = v0[48];
  v19(v35, v0[70], v36);
  v37 = sub_100249754();
  v103(v35, v36);
  if (v37)
  {
    v38 = v0[53];
    v39 = v0[48];
    v40 = v0[38];
    v110 = v0[37];
    v41 = v0[36];
    v19(v38, v0[70], v39);
    Fence.ckRecordIdentifier.getter();
    v103(v38, v39);
    v42 = (*(v40 + 48))(v41, 1, v110);
    v43 = v0[70];
    v44 = v0[54];
    v45 = v0[48];
    if (v42 == 1)
    {
      v46 = v0[36];

      sub_100002CE0(v46, &qword_1005A96E0, &qword_1004C2A80);
      v19(v44, v43, v45);
      v47 = sub_10004CD88();
      v49 = v48;
      v51 = v50;
      v103(v44, v45);
      sub_10001157C(v47, v49, v51);

      sub_10005CF04();
      v52 = swift_allocError();
      *v53 = 8;
      swift_willThrow();
      v54 = v0[74];
      v55 = v0[72];
      v56 = v0[70];
      v57 = v0[54];
      v58 = v0[48];
      swift_beginAccess();
      v55(v57, v56, v58);
      swift_errorRetain();
      v59 = sub_10004D0B4(v57, v52, 1);
      v61 = v60;
      v63 = v62;

      v54(v57, v58);
      sub_10001157C(v59, v61, v63);

      swift_willThrow();

      goto LABEL_3;
    }

    v64 = v0[35];
    v65 = v0[33];
    v99 = v0[70];
    v101 = v0[32];
    v95 = v0[31];
    v96 = v0[30];
    v66 = v0[29];
    v111 = (v0[38] + 32);
    v105 = v0[28];
    v108 = *v111;
    (*v111)(v0[41], v0[36], v0[37]);
    v19(v44, v99, v45);
    Fence.id.getter();
    v103(v44, v45);
    v94 = Fence.ID.uuidString.getter();
    v97 = v67;
    (*(v65 + 8))(v64, v101);
    v68 = v99;
    v100 = v19;
    v19(v44, v68, v45);
    Fence.createdBy.getter();
    v103(v44, v45);
    (*(v66 + 104))(v96, enum case for Fence.Participant.other(_:), v105);
    LOBYTE(v64) = static Fence.Participant.== infix(_:_:)();
    v69 = *(v66 + 8);
    v69(v96, v105);
    v69(v95, v105);
    v71 = v0[40];
    v70 = v0[41];
    v73 = v0[38];
    v72 = v0[39];
    v74 = v0[37];
    v75 = v0[27];
    v104 = v75;
    v106 = v0[26];
    v102 = v70;
    if (v64)
    {
      v76 = v0[67];
      v77 = type metadata accessor for TaskPriority();
      (*(*(v77 - 8) + 56))(v75, 1, 1, v77);
      (*(v73 + 16))(v71, v70, v74);
      v78 = (*(v73 + 80) + 56) & ~*(v73 + 80);
      v79 = (v72 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = swift_allocObject();
      *(v80 + 2) = 0;
      *(v80 + 3) = 0;
      *(v80 + 4) = v76;
      *(v80 + 5) = v94;
      *(v80 + 6) = v97;
      v108(&v80[v78], v71, v74);
      *&v80[v79] = v28;
      *&v80[(v79 + 15) & 0xFFFFFFFFFFFFFFF8] = v106;

      v81 = &unk_1004D27C0;
    }

    else
    {
      v82 = v0[69];
      v83 = v0[27];
      v84 = v0[25];

      v85 = type metadata accessor for TaskPriority();
      (*(*(v85 - 8) + 56))(v83, 1, 1, v85);
      (*(v73 + 16))(v71, v70, v74);
      v86 = sub_1000094D0(&qword_1005AF4A8, type metadata accessor for FenceService, &unk_1004D2208);
      v87 = (*(v73 + 80) + 48) & ~*(v73 + 80);
      v80 = swift_allocObject();
      *(v80 + 2) = v84;
      *(v80 + 3) = v86;
      *(v80 + 4) = v84;
      *(v80 + 5) = v82;
      v108(&v80[v87], v71, v74);
      *&v80[(v72 + v87 + 7) & 0xFFFFFFFFFFFFFFF8] = v106;
      swift_retain_n();

      v81 = &unk_1004D27B0;
    }

    sub_1001D7F30(0, 0, v104, v81, v80);

    (*(v73 + 8))(v102, v74);
    v19 = v100;
  }

  else
  {
  }

  v88 = v0[70];
  v89 = v0[51];
  v90 = v0[48];
  swift_beginAccess();
  v19(v89, v88, v90);
  v91 = swift_task_alloc();
  v0[76] = v91;
  *v91 = v0;
  v91[1] = sub_1002670F0;
  v93 = v0[51];
  v92 = v0[52];

  return sub_10005A5B8(v92, v93);
}

uint64_t sub_1002670F0()
{
  v2 = *v1;
  v2[77] = v0;

  v3 = v2[74];
  if (v0)
  {
    v4 = v2[25];
    v3(v2[51], v2[48]);
    v5 = sub_1002680A8;
    v6 = v4;
  }

  else
  {
    v7 = v2[51];
    v8 = v2[52];
    v9 = v2[48];
    v10 = v2[25];
    v3(v7, v9);
    v3(v8, v9);
    v5 = sub_100267278;
    v6 = v10;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100267278()
{
  v1 = swift_task_alloc();
  *(v0 + 624) = v1;
  *v1 = v0;
  v1[1] = sub_100267308;

  return daemon.getter();
}

uint64_t sub_100267308(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 632) = a1;

  v5 = swift_task_alloc();
  *(v3 + 640) = v5;
  v6 = type metadata accessor for LocalStorageService();
  v7 = sub_1000094D0(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v5 = v4;
  v5[1] = sub_1002674BC;
  v8 = *(v2 + 488);
  v9 = *(v2 + 480);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1002674BC(uint64_t a1)
{
  v3 = *v2;
  v3[81] = a1;
  v3[82] = v1;

  if (v1)
  {
    v4 = v3[25];
    v5 = sub_1002682AC;
  }

  else
  {
    v6 = v3[25];

    v5 = sub_1002675E8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002675E8()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 592);
  v3 = *(v0 + 400);
  v4 = *(v0 + 384);
  (*(v0 + 576))(v3, *(v0 + 560), v4);
  Fence.id.getter();
  v2(v3, v4);

  return _swift_task_switch(sub_10026769C, v1, 0);
}

uint64_t sub_10026769C()
{
  v1 = v0[81];
  v2 = v0[34];
  v3 = sub_1000094D0(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v4 = swift_task_alloc();
  v0[83] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[84] = v5;
  *v5 = v0;
  v5[1] = sub_1002677D4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v1, v3, 0xD000000000000017, 0x80000001004E65A0, sub_100274A64, v4, &type metadata for () + 1);
}

uint64_t sub_1002677D4()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v3 = *(v2 + 648);
    v4 = sub_100267B64;
  }

  else
  {
    v5 = *(v2 + 648);

    v4 = sub_1002678FC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002678FC()
{
  v1 = v0[25];
  (*(v0[33] + 8))(v0[34], v0[32]);

  return _swift_task_switch(sub_100267978, v1, 0);
}

uint64_t sub_100267978()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[70];
  v4 = v0[54];
  v5 = v0[48];

  v2(v4, v3, v5);
  v6 = sub_10004D0B4(v4, 0, 0);
  v8 = v7;
  v10 = v9;
  v1(v4, v5);
  sub_10001157C(v6, v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100267B64()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[25];

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100267BF8, v4, 0);
}

uint64_t sub_100267BF8()
{

  v1 = v0[85];
  v2 = v0[74];
  v3 = v0[72];
  v4 = v0[70];
  v5 = v0[54];
  v6 = v0[48];
  swift_beginAccess();
  v3(v5, v4, v6);
  swift_errorRetain();
  v7 = sub_10004D0B4(v5, v1, 1);
  v9 = v8;
  v11 = v10;

  v2(v5, v6);
  sub_10001157C(v7, v9, v11);

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100267E04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100267F50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002680A8()
{
  v1 = v0[77];
  v2 = v0[74];
  v3 = v0[72];
  v4 = v0[70];
  v5 = v0[54];
  v6 = v0[48];
  swift_beginAccess();
  v3(v5, v4, v6);
  swift_errorRetain();
  v7 = sub_10004D0B4(v5, v1, 1);
  v9 = v8;
  v11 = v10;

  v2(v5, v6);
  sub_10001157C(v7, v9, v11);

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002682AC()
{

  v1 = v0[82];
  v2 = v0[74];
  v3 = v0[72];
  v4 = v0[70];
  v5 = v0[54];
  v6 = v0[48];
  swift_beginAccess();
  v3(v5, v4, v6);
  swift_errorRetain();
  v7 = sub_10004D0B4(v5, v1, 1);
  v9 = v8;
  v11 = v10;

  v2(v5, v6);
  sub_10001157C(v7, v9, v11);

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002684B8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for Fence.AcceptanceStatus();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  sub_10004B564(&qword_1005B09D0, &unk_1004D2380);
  v3[25] = swift_task_alloc();
  v5 = type metadata accessor for Fence();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[30] = v6;
  *v6 = v3;
  v6[1] = sub_100268658;

  return daemon.getter();
}

uint64_t sub_100268658(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 248) = a1;

  v3 = swift_task_alloc();
  *(v2 + 256) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000094D0(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100268834;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100268834(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v5 = v3[20];

    return _swift_task_switch(sub_10026942C, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[35] = v6;
    *v6 = v4;
    v6[1] = sub_1002689C4;
    v7 = v3[25];
    v8 = v3[19];

    return sub_10020ED50(v7, v8);
  }
}

uint64_t sub_1002689C4()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_100268AD4, v1, 0);
}

uint64_t sub_100268AD4()
{
  v53 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[19];
    sub_100002CE0(v3, &qword_1005B09D0, &unk_1004D2380);
    sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
    inited = swift_initStackObject();
    *(inited + 32) = 26;
    *(inited + 16) = xmmword_1004C2310;
    *(inited + 64) = &type metadata for String;
    *(inited + 72) = &off_10058C398;
    strcpy((inited + 40), "NoFenceFound");
    *(inited + 53) = 0;
    *(inited + 54) = -5120;
    *(inited + 80) = 27;
    *(inited + 112) = &type metadata for Bool;
    *(inited + 120) = &off_10058C3C8;
    *(inited + 88) = 0;
    v6 = sub_1000105C0(inited);
    swift_setDeallocating();
    sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
    swift_arrayDestroy();
    v7 = sub_10004C68C(1u, v6);
    v9 = v8;
    v11 = v10;

    sub_10001157C(v7, v9, v11);

    type metadata accessor for FenceServiceClient.Failure(0);
    sub_1000094D0(&qword_1005A9140, type metadata accessor for FenceServiceClient.Failure, &unk_1004D25C8);
    swift_allocError();
    v13 = v12;
    v14 = type metadata accessor for Fence.ID();
    (*(*(v14 - 8) + 16))(v13, v4, v14);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = v0[1];
LABEL_9:

    return v15();
  }

  v16 = v0[29];
  v18 = v0[23];
  v17 = v0[24];
  v19 = v0[21];
  v20 = v0[22];
  v21 = *(v2 + 32);
  v0[36] = v21;
  v0[37] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v50 = v21;
  v21(v16, v3, v1);
  Fence.acceptanceStatus.getter();
  v22 = enum case for Fence.AcceptanceStatus.accepted(_:);
  v23 = *(v20 + 104);
  v23(v18, enum case for Fence.AcceptanceStatus.accepted(_:), v19);
  v24 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v25 = v18;
  v26 = *(v20 + 8);
  v26(v25, v19);
  v26(v17, v19);
  if (v24)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000A6F0(v27, qword_1005DFF88);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52[0] = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E65C0, v52);
      _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s: Fence is already accepted.", v30, 0xCu);
      sub_100004984(v31);
    }

    v50(v0[18], v0[29], v0[26]);

    v15 = v0[1];
    goto LABEL_9;
  }

  v51 = v22;
  v34 = v0[23];
  v33 = v0[24];
  v35 = v26;
  v36 = v0[21];
  Fence.acceptanceStatus.getter();
  v23(v34, enum case for Fence.AcceptanceStatus.pendingHidden(_:), v36);
  v37 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v35(v34, v36);
  v38 = v36;
  v39 = v35;
  v35(v33, v38);
  if (v37)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000A6F0(v40, qword_1005DFF88);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52[0] = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E65C0, v52);
      _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s: Accepting a hidden fence should not be done from UI", v43, 0xCu);
      sub_100004984(v44);
      v39 = v35;
    }
  }

  v45 = v0[24];
  v46 = v0[21];
  v23(v45, v51, v46);
  Fence.update(acceptanceStatus:)();
  v39(v45, v46);
  v47 = swift_task_alloc();
  v0[38] = v47;
  *v47 = v0;
  v47[1] = sub_1002691FC;
  v48 = v0[28];
  v49 = v0[29];

  return sub_100261468(v48, v49);
}

uint64_t sub_1002691FC()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_1002694D0;
  }

  else
  {
    v4 = sub_100269328;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100269328()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  (*(v0 + 288))(*(v0 + 144), *(v0 + 224), v2);
  v4 = sub_10004CD68(v1, 0, 0);
  sub_10001157C(v4, v5, v6);

  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10026942C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002694D0()
{
  v1 = v0[39];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  swift_errorRetain();
  v5 = sub_10004CD68(v2, v1, 1);
  v7 = v6;
  v9 = v8;

  sub_10001157C(v5, v7, v9);

  swift_willThrow();

  (*(v4 + 8))(v2, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002695FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_1002696BC;

  return daemon.getter();
}

uint64_t sub_1002696BC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 64) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000094D0(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100269898;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100269898(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v5 = v3[5];

    return _swift_task_switch(sub_100253CC8, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[12] = v6;
    *v6 = v4;
    v6[1] = sub_100269A20;

    return sub_100006424();
  }
}

uint64_t sub_100269A20(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100269B38, v2, 0);
}

uint64_t sub_100269B38()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v4;
  v6 = sub_100260C80(sub_10027465C, v5, v1);
  *(v0 + 112) = v6;

  sub_1000094D0(&qword_1005AF4A8, type metadata accessor for FenceService, &unk_1004D2208);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = v3;
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *v8 = v0;
  v8[1] = sub_100269CC0;

  return withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_100269CC0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_100269E54;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_100269DF0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100269DF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100269E54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100269ECC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = sub_10004B564(&qword_1005B0B70, &qword_1004D6B30);
  v3[10] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for Fence.Participant();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for FenceRecord(0);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v7 = type metadata accessor for Fence();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[26] = v8;
  *v8 = v3;
  v8[1] = sub_10026A1D8;

  return daemon.getter();
}

uint64_t sub_10026A1D8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[27] = a1;

  v3 = swift_task_alloc();
  v2[28] = v3;
  v4 = type metadata accessor for Daemon();
  v2[29] = v4;
  v5 = type metadata accessor for CommandManager(0);
  v6 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[30] = v6;
  v7 = sub_1000094D0(&qword_1005A90C8, type metadata accessor for CommandManager, &unk_1004C23F8);
  *v3 = v9;
  v3[1] = sub_10026A3B8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10026A3B8(uint64_t a1)
{
  v3 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_10026B6EC;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_10026A4E0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10026A4E0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  (*(v0[24] + 16))(v0[25], v0[3], v0[23]);
  sub_100249D6C(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v0[18], &qword_1005AE720, &qword_1004CA2F0);
LABEL_8:
    v11 = swift_task_alloc();
    v0[45] = v11;
    *v11 = v0;
    v11[1] = sub_10026B4A4;
    v12 = v0[25];
    v13 = v0[2];

    return sub_10005A5B8(v13, v12);
  }

  v4 = v0[17];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  sub_100274934(v0[18], v0[22], type metadata accessor for FenceRecord);
  Fence.createdBy.getter();
  (*(v6 + 104))(v5, enum case for Fence.Participant.me(_:), v7);
  v8 = static Fence.Participant.== infix(_:_:)();
  v9 = *(v6 + 8);
  v9(v5, v7);
  v9(v4, v7);
  if ((v8 & 1) == 0)
  {
    sub_100274A04(v0[22], type metadata accessor for FenceRecord);
    goto LABEL_8;
  }

  v10 = swift_task_alloc();
  v0[33] = v10;
  *v10 = v0;
  v10[1] = sub_10026A724;

  return daemon.getter();
}

uint64_t sub_10026A724(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 272) = a1;

  v5 = swift_task_alloc();
  *(v3 + 280) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_1000094D0(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v5 = v4;
  v5[1] = sub_10026A8D8;
  v8 = *(v2 + 240);
  v9 = *(v2 + 232);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10026A8D8(uint64_t a1)
{
  v3 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v4 = v3[4];

    return _swift_task_switch(sub_10026B7E8, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[38] = v5;
    *v5 = v3;
    v5[1] = sub_10026AA78;
    v6 = v3[21];
    v7 = v3[22];

    return sub_10026C414(v6, v7);
  }
}

uint64_t sub_10026AA78()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_10026B920;
  }

  else
  {
    v4 = sub_10026ABA4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026ABA4()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
  v6 = v0[7];
  (*(v6 + 16))(v1, v0[21], v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  Fence.ckRecordIdentifier.getter();
  v7 = *(v4 + 48);
  sub_100005F04(v1, v3, &qword_1005A96E0, &qword_1004C2A80);
  sub_100005F04(v2, v3 + v7, &qword_1005A96E0, &qword_1004C2A80);
  v8 = *(v6 + 48);
  if (v8(v3, 1, v5) == 1)
  {
    v9 = v0[13];
    v10 = v0[6];
    sub_100002CE0(v0[12], &qword_1005A96E0, &qword_1004C2A80);
    sub_100002CE0(v9, &qword_1005A96E0, &qword_1004C2A80);
    if (v8(v3 + v7, 1, v10) == 1)
    {
      sub_100002CE0(v0[10], &qword_1005A96E0, &qword_1004C2A80);
LABEL_11:
      sub_100274A04(v0[22], type metadata accessor for FenceRecord);

      sub_100274A04(v0[21], type metadata accessor for FenceRecord);
      v25 = swift_task_alloc();
      v0[45] = v25;
      *v25 = v0;
      v25[1] = sub_10026B4A4;
      v26 = v0[25];
      v27 = v0[2];

      return sub_10005A5B8(v27, v26);
    }

    goto LABEL_6;
  }

  v11 = v0[6];
  sub_100005F04(v0[10], v0[11], &qword_1005A96E0, &qword_1004C2A80);
  v12 = v8(v3 + v7, 1, v11);
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  if (v12 == 1)
  {
    v16 = v0[6];
    v17 = v0[7];
    sub_100002CE0(v0[12], &qword_1005A96E0, &qword_1004C2A80);
    sub_100002CE0(v13, &qword_1005A96E0, &qword_1004C2A80);
    (*(v17 + 8))(v15, v16);
LABEL_6:
    sub_100002CE0(v0[10], &qword_1005B0B70, &qword_1004D6B30);
    goto LABEL_7;
  }

  v28 = v0[10];
  v21 = v0[7];
  v20 = v0[8];
  v22 = v0[6];
  (*(v21 + 32))(v20, v3 + v7, v22);
  sub_1000094D0(&qword_1005A9FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v21 + 8);
  v24(v20, v22);
  sub_100002CE0(v14, &qword_1005A96E0, &qword_1004C2A80);
  sub_100002CE0(v13, &qword_1005A96E0, &qword_1004C2A80);
  v24(v15, v22);
  sub_100002CE0(v28, &qword_1005A96E0, &qword_1004C2A80);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_7:
  v18 = swift_task_alloc();
  v0[40] = v18;
  *v18 = v0;
  v18[1] = sub_10026AFD0;

  return sub_1001BA3B8();
}

uint64_t sub_10026AFD0(uint64_t a1)
{
  v4 = *v2;
  v4[41] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_10026BA64;
  }

  else
  {
    v4[42] = a1;
    v6 = sub_10026B10C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10026B10C()
{
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[21];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  v7 = [v1 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Fence.update(ckRecordIdentifier:owner:)();

  sub_1000094D0(&qword_1005AF4A8, type metadata accessor for FenceService, &unk_1004D2208);
  v8 = swift_task_alloc();
  v0[43] = v8;
  v8[2] = v6;
  v8[3] = v2;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v5;
  v9 = swift_task_alloc();
  v0[44] = v9;
  *v9 = v0;
  v9[1] = sub_10026B2A4;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_10026B2A4()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10026B3D0, v1, 0);
}

uint64_t sub_10026B3D0()
{
  v1 = v0[22];

  sub_100274A04(v1, type metadata accessor for FenceRecord);
  sub_100274A04(v0[21], type metadata accessor for FenceRecord);
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_10026B4A4;
  v3 = v0[25];
  v4 = v0[2];

  return sub_10005A5B8(v4, v3);
}

uint64_t sub_10026B4A4()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_10026BBBC;
  }

  else
  {
    v4 = sub_10026B5D0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026B5D0()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10026B6EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026B7E8()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];

  sub_100274A04(v4, type metadata accessor for FenceRecord);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10026B920()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];

  sub_100274A04(v4, type metadata accessor for FenceRecord);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10026BA64()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];

  sub_100274A04(v4, type metadata accessor for FenceRecord);
  (*(v2 + 8))(v1, v3);
  sub_100274A04(v5, type metadata accessor for FenceRecord);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10026BBBC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10026BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for Fence.ID();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();
  v8 = type metadata accessor for Fence();
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  sub_10004B564(&qword_1005B09C8, &qword_1004D2378);
  v9 = swift_task_alloc();
  v5[10] = v9;
  v10 = swift_task_alloc();
  v5[11] = v10;
  *v10 = v5;
  v10[1] = sub_10026BE78;

  return sub_1002790EC(v9, a5);
}

uint64_t sub_10026BE78()
{
  v2 = *(*v1 + 16);
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_10026C0A4;
  }

  else
  {
    v3 = sub_10026BFA0;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10026BFA0()
{
  v1 = v0[10];
  v2 = type metadata accessor for Fence.TriggerID();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_100002CE0(v1, &qword_1005B09C8, &qword_1004D2378);
  if (v3 != 1)
  {
    v4 = sub_10004D4C8(v0[3], 0, 0);
    sub_10001157C(v4, v5, v6);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10026C0A4()
{
  v35 = v0;
  v1 = v0[12];
  v2 = v0[3];
  swift_errorRetain();
  v3 = sub_10004D4C8(v2, v1, 1);
  v5 = v4;
  v7 = v6;

  sub_10001157C(v3, v5, v7);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  v11 = v0[3];
  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFF88);
  (*(v9 + 16))(v8, v11, v10);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[8];
  v17 = v0[9];
  v18 = v0[7];
  if (v15)
  {
    v33 = v14;
    v19 = v0[5];
    v20 = v0[6];
    v21 = v0[4];
    v22 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v22 = 136446466;
    v30 = v13;
    Fence.id.getter();
    sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v19 + 8))(v20, v21);
    (*(v16 + 8))(v17, v18);
    v26 = sub_10000D01C(v23, v25, &v34);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2114;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v27;
    *v31 = v27;
    _os_log_impl(&_mh_execute_header, v30, v33, "Error triggering accepted fence id: %{public}s, error: %{public}@", v22, 0x16u);
    sub_100002CE0(v31, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v32);
  }

  else
  {

    (*(v16 + 8))(v17, v18);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_10026C414(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v3[29] = swift_task_alloc();
  v4 = type metadata accessor for FenceRecord(0);
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[34] = v5;
  *v5 = v3;
  v5[1] = sub_10026C54C;

  return daemon.getter();
}

uint64_t sub_10026C54C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 280) = a1;

  v3 = swift_task_alloc();
  *(v2 + 288) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000094D0(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v3 = v9;
  v3[1] = sub_10026C728;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10026C728(uint64_t a1)
{
  v3 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v4 = v3[28];
    v5 = sub_10026D128;
  }

  else
  {

    v5 = sub_10026C84C;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10026C84C()
{
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = sub_10026C8EC;
  v2 = v0[29];
  v3 = v0[27];

  return sub_1001C3C00(v2, v3);
}

uint64_t sub_10026C8EC()
{
  v2 = *v1;

  v3 = *(v2 + 224);
  if (v0)
  {

    v4 = sub_10026CBDC;
  }

  else
  {
    v4 = sub_10026CA24;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026CA24()
{
  v1 = v0[29];
  if ((*(v0[31] + 48))(v1, 1, v0[30]) == 1)
  {
    sub_100002CE0(v1, &qword_1005AE720, &qword_1004CA2F0);
LABEL_7:
    v9 = swift_task_alloc();
    v0[40] = v9;
    *v9 = v0;
    v9[1] = sub_10026CCA8;
    v10 = v0[27];

    return sub_10026FAF8(v10);
  }

  v2 = v0[33];
  v3 = v0[27];
  sub_100274934(v1, v2, type metadata accessor for FenceRecord);
  v4 = sub_1001A4BD0(v2, v3);
  sub_100274A04(v2, type metadata accessor for FenceRecord);
  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = v0[26];
  v6 = v0[27];

  sub_10027499C(v6, v5, type metadata accessor for FenceRecord);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10026CBDC()
{
  (*(v0[31] + 56))(v0[29], 1, 1, v0[30]);
  sub_100002CE0(v0[29], &qword_1005AE720, &qword_1004CA2F0);
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  v1[1] = sub_10026CCA8;
  v2 = v0[27];

  return sub_10026FAF8(v2);
}

uint64_t sub_10026CCA8()
{
  v2 = *(*v1 + 224);
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_10026D1B0;
  }

  else
  {
    v3 = sub_10026CDD0;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10026CDD0(uint64_t a1)
{
  v2 = *(v1 + 256);
  v3 = *(v1 + 240);
  v4 = *(v1 + 216);
  UUID.init()();
  v5 = (v4 + v3[5]);
  v7 = *v5;
  v6 = v5[1];
  v8 = *(v4 + v3[6]);
  v9 = *(v4 + v3[7]);
  sub_100005F04(v4 + v3[8], v2 + v3[8], &qword_1005AE5C0, &unk_1004D06D0);
  sub_100005F04(v4 + v3[9], v2 + v3[9], &unk_1005AE5B0, &qword_1004C32F0);
  v10 = (v4 + v3[10]);
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[5];
  *(v1 + 80) = v10[4];
  *(v1 + 96) = v13;
  *(v1 + 48) = v11;
  *(v1 + 64) = v12;
  v14 = v10[1];
  *(v1 + 16) = *v10;
  *(v1 + 32) = v14;
  v15 = (v2 + v3[5]);
  *v15 = v7;
  v15[1] = v6;
  *(v2 + v3[6]) = v8;
  *(v2 + v3[7]) = v9;
  v16 = (v2 + v3[10]);
  v17 = *(v1 + 32);
  *v16 = *(v1 + 16);
  v16[1] = v17;
  v18 = *(v1 + 48);
  v19 = *(v1 + 64);
  v20 = *(v1 + 96);
  v16[4] = *(v1 + 80);
  v16[5] = v20;
  v16[2] = v18;
  v16[3] = v19;

  v21 = v8;
  sub_1001A6A68(v1 + 16, v1 + 112);
  v22 = swift_task_alloc();
  *(v1 + 336) = v22;
  *v22 = v1;
  v22[1] = sub_10026CF60;
  v23 = *(v1 + 256);
  v24 = *(v1 + 208);

  return sub_100272914(v24, v23);
}

uint64_t sub_10026CF60()
{
  v2 = *(*v1 + 224);
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_10026D4D4;
  }

  else
  {
    v3 = sub_10026D088;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10026D088()
{
  v1 = *(v0 + 256);

  sub_100274A04(v1, type metadata accessor for FenceRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10026D128()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026D1B0()
{
  v33 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E64F0, &v32);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 256);
  v9 = *(v0 + 240);
  v10 = *(v0 + 216);
  UUID.init()();
  v11 = (v10 + v9[5]);
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v10 + v9[6]);
  v15 = *(v10 + v9[7]);
  sub_100005F04(v10 + v9[8], v8 + v9[8], &qword_1005AE5C0, &unk_1004D06D0);
  sub_100005F04(v10 + v9[9], v8 + v9[9], &unk_1005AE5B0, &qword_1004C32F0);
  v16 = (v10 + v9[10]);
  v17 = v16[2];
  v18 = v16[3];
  v19 = v16[5];
  *(v0 + 80) = v16[4];
  *(v0 + 96) = v19;
  *(v0 + 48) = v17;
  *(v0 + 64) = v18;
  v20 = v16[1];
  *(v0 + 16) = *v16;
  *(v0 + 32) = v20;
  v21 = (v8 + v9[5]);
  *v21 = v13;
  v21[1] = v12;
  *(v8 + v9[6]) = v14;
  *(v8 + v9[7]) = v15;
  v22 = (v8 + v9[10]);
  v23 = *(v0 + 32);
  *v22 = *(v0 + 16);
  v22[1] = v23;
  v24 = *(v0 + 48);
  v25 = *(v0 + 64);
  v26 = *(v0 + 96);
  v22[4] = *(v0 + 80);
  v22[5] = v26;
  v22[2] = v24;
  v22[3] = v25;

  v27 = v14;
  sub_1001A6A68(v0 + 16, v0 + 112);
  v28 = swift_task_alloc();
  *(v0 + 336) = v28;
  *v28 = v0;
  v28[1] = sub_10026CF60;
  v29 = *(v0 + 256);
  v30 = *(v0 + 208);

  return sub_100272914(v30, v29);
}

uint64_t sub_10026D4D4()
{
  v1 = *(v0 + 256);

  sub_100274A04(v1, type metadata accessor for FenceRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10026D57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v9 = type metadata accessor for Fence();
  v7[15] = v9;
  v10 = *(v9 - 8);
  v7[16] = v10;
  v7[17] = *(v10 + 64);
  v7[18] = swift_task_alloc();
  v11 = *(type metadata accessor for FenceRecord(0) - 8);
  v7[19] = v11;
  v7[20] = *(v11 + 64);
  v7[21] = swift_task_alloc();
  v12 = type metadata accessor for PersonHandle();
  v7[22] = v12;
  v13 = *(v12 - 8);
  v7[23] = v13;
  v7[24] = *(v13 + 64);
  v7[25] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return _swift_task_switch(sub_10026D758, a6, 0);
}

uint64_t sub_10026D758(uint64_t a1)
{
  v2 = Fence.others.getter();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v1 + 184);
    v43 = *(v1 + 152);
    v41 = **(v1 + 72);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = v2 + v5;
    v39 = (v4 + 16);
    v40 = v5;
    v38 = (*(v1 + 192) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = *(v4 + 72);
    v36 = *(v1 + 160) + 7;
    v34 = (v4 + 32);
    v35 = *(v1 + 136) + 7;
    v42 = *(v1 + 128);
    v7 = type metadata accessor for TaskPriority();
    v8 = *(v7 - 8);
    v32 = *(v8 + 56);
    v31 = (v8 + 48);
    v30 = (v8 + 8);
    v33 = v7;
    do
    {
      v52 = v3;
      v50 = *(v1 + 208);
      v11 = *(v1 + 200);
      v13 = *(v1 + 168);
      v12 = *(v1 + 176);
      v14 = *(v1 + 144);
      v15 = *(v1 + 120);
      v44 = v13;
      v48 = *(v1 + 216);
      v49 = *(v1 + 112);
      v16 = *(v1 + 96);
      v47 = *(v1 + 104);
      v17 = *(v1 + 80);
      v45 = v14;
      v46 = *(v1 + 88);
      v32();
      v51 = v6;
      (*v39)(v11, v6, v12);
      sub_10027499C(v16, v13, type metadata accessor for FenceRecord);
      (*(v42 + 16))(v14, v17, v15);
      v18 = (v38 + 8 + *(v43 + 80)) & ~*(v43 + 80);
      v19 = (v36 + v18) & 0xFFFFFFFFFFFFFFF8;
      v20 = (*(v42 + 80) + v19 + 8) & ~*(v42 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      v22 = (v21 + 16);
      *(v21 + 24) = 0;
      (*v34)(v21 + v40, v11, v12);
      *(v21 + v38) = v46;
      sub_100274934(v44, v21 + v18, type metadata accessor for FenceRecord);
      *(v21 + v19) = v47;
      (*(v42 + 32))(v21 + v20, v45, v15);
      *(v21 + ((v35 + v20) & 0xFFFFFFFFFFFFFFF8)) = v49;
      sub_100005F04(v48, v50, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v18) = (*v31)(v50, 1, v33);

      v23 = *(v1 + 208);
      if (v18 == 1)
      {
        sub_100002CE0(*(v1 + 208), &qword_1005A9690, &qword_1004C2A00);
        if (*v22)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v30)(v23, v33);
        if (*v22)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v24 = dispatch thunk of Actor.unownedExecutor.getter();
          v25 = v26;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v24 = 0;
      v25 = 0;
LABEL_10:
      v27 = swift_allocObject();
      *(v27 + 16) = &unk_1004D2738;
      *(v27 + 24) = v21;

      if (v25 | v24)
      {
        v9 = v1 + 16;
        *(v1 + 16) = 0;
        *(v1 + 24) = 0;
        *(v1 + 32) = v24;
        *(v1 + 40) = v25;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v1 + 216);
      *(v1 + 48) = 1;
      *(v1 + 56) = v9;
      *(v1 + 64) = v41;
      swift_task_create();

      sub_100002CE0(v10, &qword_1005A9690, &qword_1004C2A00);
      v6 = v51 + v37;
      v3 = v52 - 1;
    }

    while (v52 != 1);
  }

  v28 = *(v1 + 8);

  return v28();
}

uint64_t sub_10026DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  v8 = type metadata accessor for URL();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v9 = type metadata accessor for Handle();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_10026DD68, 0, 0);
}

uint64_t sub_10026DD68(uint64_t a1)
{
  PersonHandle.id.getter();
  sub_1002743D4(_swiftEmptyArrayStorage);
  Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
  v2 = swift_task_alloc();
  v1[13] = v2;
  *v2 = v1;
  v2[1] = sub_10026DE64;
  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[4];

  return sub_1001BEE94(v4, v5, v3);
}

uint64_t sub_10026DE64(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[14] = a1;
  v4[15] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10026E200, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[16] = v6;
    *v6 = v5;
    v6[1] = sub_10026DFF0;
    v7 = v4[12];
    v8 = v4[9];
    v9 = v4[4];

    return sub_100256250(a1, v7, v8, v9);
  }
}

uint64_t sub_10026DFF0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_10026E47C;
  }

  else
  {
    v2 = sub_10026E104;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026E104()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = sub_10004D4B8(v0[6], 0, 0);
  sub_10001157C(v8, v9, v10);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10026E200()
{
  v18 = v0;
  v1 = v0[15];
  v2 = v0[6];
  (*(v0[11] + 8))(v0[12], v0[10]);
  swift_errorRetain();
  v3 = sub_10004D4B8(v2, v1, 1);
  v5 = v4;
  v7 = v6;

  sub_10001157C(v3, v5, v7);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFF88);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E64D0, &v17);
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: Failed to share CK record: %{public}@", v11, 0x16u);
    sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v13);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10026E47C()
{
  v21 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 136);
  v5 = *(v0 + 48);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  swift_errorRetain();
  v6 = sub_10004D4B8(v5, v4, 1);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005DFF88);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v14 = 136446466;
    *(v14 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E64D0, &v20);
    *(v14 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: Failed to share CK record: %{public}@", v14, 0x16u);
    sub_100002CE0(v15, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v16);
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10026E720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 224) = v13;
  *v13 = v8;
  v13[1] = sub_10026E7E8;

  return sub_1000790BC(a5, a6, a7, a8);
}

uint64_t sub_10026E7E8()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_10026EA64;
  }

  else
  {
    v2 = sub_10026E8FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026E8FC()
{
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 37;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v2 = sub_10004C9A8(*(v0 + 216));
  v4 = v3;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v2;
  *(inited + 48) = v4;
  v5 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005A8790, &qword_1004C0EB0);
  v6 = sub_10004C68C(4u, v5);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10026EA64()
{
  v1 = *(v0 + 232);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 32) = 37;
  *(inited + 16) = xmmword_1004C1900;
  *(v0 + 176) = v1;
  *(v0 + 184) = 1;
  swift_errorRetain();
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v3 = sub_10004C9A8(*(v0 + 208));
  v5 = v4;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  v6 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005A8790, &qword_1004C0EB0);
  v7 = sub_10004C68C(4u, v6);
  v9 = v8;
  v11 = v10;

  sub_10001157C(v7, v9, v11);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFF88);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "Task got error while sending CK share delete notification: %{public}@", v15, 0xCu);
    sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10026ED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[57] = a4;
  v6[58] = a6;
  v8 = type metadata accessor for Fence.ID();
  v6[59] = v8;
  v6[60] = *(v8 - 8);
  v6[61] = swift_task_alloc();
  v9 = type metadata accessor for Fence();
  v6[62] = v9;
  v6[63] = *(v9 - 8);
  v6[64] = swift_task_alloc();
  v6[65] = swift_projectBox();

  return _swift_task_switch(sub_10026EE50, a4, 0);
}

uint64_t sub_10026EE50()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];
  swift_beginAccess();
  (*(v3 + 16))(v2, v1, v4);
  Fence.id.getter();
  (*(v3 + 8))(v2, v4);
  v5 = swift_task_alloc();
  v0[66] = v5;
  *v5 = v0;
  v5[1] = sub_10026EF5C;
  v6 = v0[61];

  return sub_10027C184(v6);
}

uint64_t sub_10026EF5C()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *(*v1 + 480);
  v5 = *(*v1 + 472);
  *(*v1 + 536) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_10026F530;
  }

  else
  {
    v7 = sub_10026F0E4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10026F0E4()
{
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 35;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v2 = sub_10004C9A8(*(v0 + 448));
  v4 = v3;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v2;
  *(inited + 48) = v4;
  v5 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005A8790, &qword_1004C0EB0);
  v6 = sub_10004C68C(4u, v5);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  v11 = swift_task_alloc();
  *(v0 + 544) = v11;
  *v11 = v0;
  v11[1] = sub_10026F288;
  v12 = *(v0 + 464);

  return sub_10026FAF8(v12);
}

uint64_t sub_10026F288()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 456);
  if (v0)
  {
    v4 = sub_10026F828;
  }

  else
  {
    v4 = sub_10026F3B4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026F3B4()
{
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 36;
  *(v0 + 392) = 0;
  *(v0 + 400) = 0;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v2 = sub_10004C9A8(*(v0 + 440));
  v4 = v3;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v2;
  *(inited + 48) = v4;
  v5 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005A8790, &qword_1004C0EB0);
  v6 = sub_10004C68C(4u, v5);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10026F530()
{
  v1 = *(v0 + 536);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 35;
  *(v0 + 360) = v1;
  *(v0 + 368) = 1;
  swift_errorRetain();
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v3 = sub_10004C9A8(*(v0 + 424));
  v5 = v4;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  v6 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005A8790, &qword_1004C0EB0);
  v7 = sub_10004C68C(4u, v6);
  v9 = v8;
  v11 = v10;

  sub_10001157C(v7, v9, v11);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFF88);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "Got an error while deleting fence trigger: %{public}@", v15, 0xCu);
    sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v18 = swift_task_alloc();
  *(v0 + 544) = v18;
  *v18 = v0;
  v18[1] = sub_10026F288;
  v19 = *(v0 + 464);

  return sub_10026FAF8(v19);
}

uint64_t sub_10026F828()
{
  v1 = *(v0 + 552);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 36;
  *(v0 + 376) = v1;
  *(v0 + 384) = 1;
  swift_errorRetain();
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v3 = sub_10004C9A8(*(v0 + 432));
  v5 = v4;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  v6 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005A8790, &qword_1004C0EB0);
  v7 = sub_10004C68C(4u, v6);
  v9 = v8;
  v11 = v10;

  sub_10001157C(v7, v9, v11);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFF88);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "Got an error while deleting CK share: %{public}@", v15, 0xCu);
    sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10026FAF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for CloudKitCoordinator.Database();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_10004B564(&qword_1005AF228, &unk_1004D0440);
  v2[10] = swift_task_alloc();
  sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for FenceRecord(0);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[15] = v6;
  *v6 = v2;
  v6[1] = sub_10026FD10;

  return daemon.getter();
}

uint64_t sub_10026FD10(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 128) = a1;

  v3 = swift_task_alloc();
  *(v2 + 136) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000094D0(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v3 = v9;
  v3[1] = sub_10026FEEC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10026FEEC(uint64_t a1)
{
  v3 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_1002712FC;
  }

  else
  {

    v5 = sub_100270010;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100270010()
{
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_1002700B0;
  v2 = v0[11];
  v3 = v0[2];

  return sub_1001C3C00(v2, v3);
}

uint64_t sub_1002700B0()
{
  v2 = *(*v1 + 24);
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_10027051C;
  }

  else
  {
    v3 = sub_1002701D8;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1002701D8()
{
  v24 = v0;
  v1 = v0[11];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    sub_100002CE0(v1, &qword_1005AE720, &qword_1004CA2F0);
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v3 = v0[5];
    v2 = v0[6];
    v4 = v0[4];
    v5 = v0[2];
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005DFF88);
    (*(v3 + 16))(v2, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v13 = 136446466;
      *(v13 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E6530, &v23);
      *(v13 + 12) = 2082;
      v14 = UUID.uuidString.getter();
      v16 = v15;
      (*(v11 + 8))(v10, v12);
      v17 = sub_10000D01C(v14, v16, &v23);

      *(v13 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: No fence with ckRecordIdentifier: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v21 = v0[1];

    return v21();
  }

  else
  {
    v18 = v0[18];
    v19 = v0[14];
    sub_100274934(v1, v19, type metadata accessor for FenceRecord);
    v20 = swift_task_alloc();
    v0[22] = v20;
    *(v20 + 16) = v19;

    return _swift_task_switch(sub_1002705C4, v18, 0);
  }
}

uint64_t sub_10027051C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002705C4()
{
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_10027068C;
  v2 = v0[22];
  v3 = v0[10];

  return v5(v3, &unk_1004D2768, v2);
}

uint64_t sub_10027068C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_100270A24;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1002707B4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002707B4()
{
  v1 = v0[18];
  (*(v0[8] + 104))(v0[9], enum case for CloudKitCoordinator.Database.private(_:), v0[7]);

  return _swift_task_switch(sub_10027083C, v1, 0);
}

uint64_t sub_10027083C()
{
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_1002708EC;
  v2 = v0[9];
  v3 = v0[10];

  return v5(v3, v2);
}

uint64_t sub_1002708EC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = v2[18];
    v4 = sub_10027119C;
  }

  else
  {
    v5 = v2[3];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v4 = sub_100270B58;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100270A24()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_100270A90, v1, 0);
}

uint64_t sub_100270A90()
{
  v1 = *(v0 + 112);

  sub_100274A04(v1, type metadata accessor for FenceRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100270B58()
{
  v1 = v0[18];
  sub_1002744D8();
  v2._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._countAndFlagsBits = 0x2D65636E6546;
  v5._object = 0xE600000000000000;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7 = [(objc_class *)isa zoneName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v0[27] = v8;
  v0[28] = v10;

  return _swift_task_switch(sub_100270C6C, v1, 0);
}

uint64_t sub_100270C6C()
{
  v14 = v0;
  if (qword_1005A8070 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFE80);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[27];
    v4 = v0[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10000D01C(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting CloudKit zone: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  v12 = (&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:));
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_100270E48;
  v10 = v0[27];
  v9 = v0[28];

  return v12(v10, v9);
}

uint64_t sub_100270E48()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_10027104C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100270F70;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100270F70()
{
  v1 = v0[14];
  v2 = v0[10];

  sub_100002CE0(v2, &qword_1005AF228, &unk_1004D0440);
  sub_100274A04(v1, type metadata accessor for FenceRecord);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10027104C()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_1002710B8, v1, 0);
}

uint64_t sub_1002710B8()
{
  v1 = v0[14];
  v2 = v0[10];

  sub_100002CE0(v2, &qword_1005AF228, &unk_1004D0440);
  sub_100274A04(v1, type metadata accessor for FenceRecord);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10027119C()
{
  v1 = v0[3];
  (*(v0[8] + 8))(v0[9], v0[7]);

  return _swift_task_switch(sub_100271218, v1, 0);
}

uint64_t sub_100271218()
{
  v1 = v0[14];
  v2 = v0[10];

  sub_100002CE0(v2, &qword_1005AF228, &unk_1004D0440);
  sub_100274A04(v1, type metadata accessor for FenceRecord);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002712FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002713A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v75 = a3;
  v77 = a5;
  v72 = type metadata accessor for Fence.ID();
  v76 = *(v72 - 8);
  __chkstk_darwin(v72);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10004B564(&qword_1005B0B78, &qword_1004D2790);
  __chkstk_darwin(v69);
  v71 = &v64 - v8;
  v9 = sub_10004B564(&qword_1005B09D0, &unk_1004D2380);
  __chkstk_darwin(v9 - 8);
  v67 = &v64 - v10;
  v11 = sub_10004B564(&qword_1005A9150, &qword_1004C2608);
  v12 = __chkstk_darwin(v11 - 8);
  v66 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v73 = &v64 - v15;
  __chkstk_darwin(v14);
  v70 = &v64 - v16;
  v17 = type metadata accessor for Date();
  v74 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  __chkstk_darwin(v20);
  v22 = &v64 - v21;
  v23 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v64 - v27;
  if ((sub_10024AAD4() & 1) == 0)
  {
    goto LABEL_23;
  }

  v29 = Fence.others.getter();
  v30 = sub_100260454(a2, v29, &type metadata accessor for PersonHandle, &qword_1005B04E0, &type metadata accessor for PersonHandle, &protocol conformance descriptor for PersonHandle);

  if (!v30)
  {
    goto LABEL_23;
  }

  v64 = a1;
  Fence.muteEndDate.getter();
  v31 = *(v20 + 48);
  sub_100005F04(v28, v22, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(v75, &v22[v31], &unk_1005AE5B0, &qword_1004C32F0);
  v32 = v74;
  v33 = *(v74 + 48);
  if (v33(v22, 1, v17) != 1)
  {
    sub_100005F04(v22, v26, &unk_1005AE5B0, &qword_1004C32F0);
    if (v33(&v22[v31], 1, v17) != 1)
    {
      (*(v32 + 32))(v19, &v22[v31], v17);
      sub_1000094D0(&qword_1005AE5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v55 = v32;
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = *(v55 + 8);
      v57(v19, v17);
      sub_100002CE0(v28, &unk_1005AE5B0, &qword_1004C32F0);
      v57(v26, v17);
      sub_100002CE0(v22, &unk_1005AE5B0, &qword_1004C32F0);
      if (v56)
      {
        goto LABEL_23;
      }

LABEL_9:
      v37 = v70;
      Fence.id.getter();
      v38 = *(v76 + 56);
      v39 = v72;
      v38(v37, 0, 1, v72);
      v40 = v67;
      sub_100005F04(v68, v67, &qword_1005B09D0, &unk_1004D2380);
      v41 = type metadata accessor for Fence();
      v42 = *(v41 - 8);
      v43 = (*(v42 + 48))(v40, 1, v41);
      v74 = v41;
      v68 = v42;
      if (v43 == 1)
      {
        sub_100002CE0(v40, &qword_1005B09D0, &unk_1004D2380);
        v44 = 1;
        v45 = v71;
        v46 = v73;
      }

      else
      {
        v46 = v73;
        Fence.id.getter();
        (*(v42 + 8))(v40, v41);
        v44 = 0;
        v45 = v71;
      }

      v38(v46, v44, 1, v39);
      v47 = *(v69 + 48);
      sub_100005F04(v37, v45, &qword_1005A9150, &qword_1004C2608);
      sub_100005F04(v46, v45 + v47, &qword_1005A9150, &qword_1004C2608);
      v48 = *(v76 + 48);
      if (v48(v45, 1, v39) == 1)
      {
        sub_100002CE0(v46, &qword_1005A9150, &qword_1004C2608);
        sub_100002CE0(v37, &qword_1005A9150, &qword_1004C2608);
        if (v48(v45 + v47, 1, v39) == 1)
        {
          v34 = &qword_1005A9150;
          v35 = &qword_1004C2608;
          v36 = v45;
          goto LABEL_15;
        }
      }

      else
      {
        v49 = v66;
        sub_100005F04(v45, v66, &qword_1005A9150, &qword_1004C2608);
        if (v48(v45 + v47, 1, v39) != 1)
        {
          v58 = v76;
          v59 = v45 + v47;
          v60 = v65;
          (*(v76 + 32))(v65, v59, v39);
          sub_1000094D0(&qword_1005B0B80, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
          v61 = dispatch thunk of static Equatable.== infix(_:_:)();
          v62 = *(v58 + 8);
          v62(v60, v39);
          sub_100002CE0(v73, &qword_1005A9150, &qword_1004C2608);
          sub_100002CE0(v37, &qword_1005A9150, &qword_1004C2608);
          v62(v49, v39);
          sub_100002CE0(v45, &qword_1005A9150, &qword_1004C2608);
          v50 = v64;
          if (v61)
          {
            goto LABEL_23;
          }

LABEL_19:
          v51 = v68;
          v52 = v77;
          v53 = v74;
          (*(v68 + 16))(v77, v50, v74);
          Fence.update(muteEndDate:)();
          return (*(v51 + 56))(v52, 0, 1, v53);
        }

        sub_100002CE0(v73, &qword_1005A9150, &qword_1004C2608);
        sub_100002CE0(v37, &qword_1005A9150, &qword_1004C2608);
        (*(v76 + 8))(v49, v39);
      }

      sub_100002CE0(v45, &qword_1005B0B78, &qword_1004D2790);
      v50 = v64;
      goto LABEL_19;
    }

    sub_100002CE0(v28, &unk_1005AE5B0, &qword_1004C32F0);
    (*(v32 + 8))(v26, v17);
LABEL_8:
    sub_100002CE0(v22, &qword_1005AAE00, &qword_1004C4A18);
    goto LABEL_9;
  }

  sub_100002CE0(v28, &unk_1005AE5B0, &qword_1004C32F0);
  if (v33(&v22[v31], 1, v17) != 1)
  {
    goto LABEL_8;
  }

  v34 = &unk_1005AE5B0;
  v35 = &qword_1004C32F0;
  v36 = v22;
LABEL_15:
  sub_100002CE0(v36, v34, v35);
LABEL_23:
  v63 = type metadata accessor for Fence();
  return (*(*(v63 - 8) + 56))(v77, 1, 1, v63);
}

uint64_t sub_100271DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v7 = type metadata accessor for Fence();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v5[15] = *(v8 + 64);
  v5[16] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_100271ECC, a4, 0);
}

uint64_t sub_100271ECC()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v30 = **(v0 + 72);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v28 = (v3 + 16);
    v29 = *(v3 + 72);
    v27 = (v4 + 40) & ~v4;
    v25 = (v3 + 32);
    v26 = (*(v0 + 120) + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v24 = *(v7 + 56);
    v23 = (v7 + 48);
    v22 = (v7 + 8);
    do
    {
      v32 = v2;
      v11 = *(v0 + 136);
      v10 = *(v0 + 144);
      v12 = *(v0 + 128);
      v13 = *(v0 + 104);
      v31 = *(v0 + 96);
      v14 = *(v0 + 88);
      v24(v10, 1, 1, v6);
      (*v28)(v12, v5, v13);
      v15 = swift_allocObject();
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 4) = v14;
      (*v25)(&v15[v27], v12, v13);
      *&v15[v26] = v31;
      sub_100005F04(v10, v11, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v11) = (*v23)(v11, 1, v6);

      v16 = *(v0 + 136);
      if (v11 == 1)
      {
        sub_100002CE0(*(v0 + 136), &qword_1005A9690, &qword_1004C2A00);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v22)(v16, v6);
      }

      if (*(v15 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      if (v19 | v17)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v30;
      swift_task_create();

      sub_100002CE0(v9, &qword_1005A9690, &qword_1004C2A00);
      v5 += v29;
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10027224C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for Fence.ID();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();
  v7 = type metadata accessor for Fence();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[9] = v8;
  v9 = swift_task_alloc();
  v4[10] = v9;
  *v9 = v4;
  v9[1] = sub_1002723C0;

  return sub_100269ECC(v8, a4);
}

uint64_t sub_1002723C0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1002725A4;
  }

  else
  {
    (*(v2[7] + 8))(v2[9], v2[6]);
    v3 = sub_1002724EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002724EC()
{
  v1 = sub_10004D0C4(*(v0 + 16), 0, 0);
  sub_10001157C(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002725A4()
{
  v36 = v0;
  v1 = v0[11];
  v2 = v0[2];
  swift_errorRetain();
  v3 = sub_10004D0C4(v2, v1, 1);
  v5 = v4;
  v7 = v6;

  sub_10001157C(v3, v5, v7);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  v11 = v0[2];
  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFF88);
  (*(v9 + 16))(v8, v11, v10);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v32 = v14;
    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[5];
    v31 = v0[6];
    v18 = v0[3];
    v19 = v0[4];
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v20 = 136446466;
    Fence.id.getter();
    sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v19 + 8))(v17, v18);
    (*(v16 + 8))(v15, v31);
    v24 = sub_10000D01C(v21, v23, &v35);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v25;
    *v33 = v25;
    _os_log_impl(&_mh_execute_header, v13, v32, "Failed to mute fence with ID: %{public}s error: %{public}@", v20, 0x16u);
    sub_100002CE0(v33, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v34);
  }

  else
  {
    v27 = v0[7];
    v26 = v0[8];
    v28 = v0[6];

    (*(v27 + 8))(v26, v28);
  }

  swift_willThrow();

  v29 = v0[1];

  return v29();
}

uint64_t sub_100272914(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for FenceRecord(0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for CloudKitCoordinator.Database();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_10004B564(&qword_1005AF228, &unk_1004D0440);
  v3[9] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[10] = v5;
  *v5 = v3;
  v5[1] = sub_100272A6C;

  return daemon.getter();
}

uint64_t sub_100272A6C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000094D0(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v3 = v9;
  v3[1] = sub_100272C48;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100272C48(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_100273BF8;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_100272D70;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100272D70()
{
  v1 = v0[13];
  sub_1002744D8();
  v2._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._countAndFlagsBits = 0x2D65636E6546;
  v5._object = 0xE600000000000000;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7 = [(objc_class *)isa zoneName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v0[15] = v8;
  v0[16] = v10;

  return _swift_task_switch(sub_100272E84, v1, 0);
}

uint64_t sub_100272E84()
{
  v14 = v0;
  if (qword_1005A8070 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[17] = v1;
  sub_10000A6F0(v1, qword_1005DFE80);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10000D01C(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "Creating CloudKit zone: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  v12 = (&async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:));
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_100273064;
  v10 = v0[15];
  v9 = v0[16];

  return v12(v10, v9);
}

uint64_t sub_100273064()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1002733F4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_10027318C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10027318C()
{
  v1 = v0[13];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[20] = v3;
  *(v3 + 16) = v2;

  return _swift_task_switch(sub_100273204, v1, 0);
}

uint64_t sub_100273204()
{
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1002732CC;
  v2 = v0[20];
  v3 = v0[9];

  return v5(v3, &unk_1004D2758, v2);
}

uint64_t sub_1002732CC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_1002736F8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100273488;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002733F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100273488()
{
  v1 = v0[13];
  (*(v0[7] + 104))(v0[8], enum case for CloudKitCoordinator.Database.private(_:), v0[6]);

  return _swift_task_switch(sub_100273510, v1, 0);
}

uint64_t sub_100273510()
{
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_1002735C0;
  v2 = v0[8];
  v3 = v0[9];

  return v5(v3, v2);
}

uint64_t sub_1002735C0()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = v2[13];
    v4 = sub_100273AD8;
  }

  else
  {
    v5 = v2[4];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v4 = sub_1002737EC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002736F8()
{
  v1 = *(v0 + 32);

  return _swift_task_switch(sub_100273764, v1, 0);
}

uint64_t sub_100273764()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002737EC()
{
  v16 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  sub_10000A6F0(v0[17], qword_1005DFF88);
  sub_10027499C(v2, v1, type metadata accessor for FenceRecord);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  v7 = v0[5];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000012, 0x80000001004E6510, &v15);
    *(v8 + 12) = 2082;
    type metadata accessor for UUID();
    sub_1000094D0(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_100274A04(v7, type metadata accessor for FenceRecord);
    v12 = sub_10000D01C(v9, v11, &v15);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s succeed with record: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100274A04(v7, type metadata accessor for FenceRecord);
  }

  sub_100002CE0(v6, &qword_1005AF228, &unk_1004D0440);
  sub_10027499C(v0[3], v0[2], type metadata accessor for FenceRecord);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100273AD8()
{
  v1 = v0[4];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return _swift_task_switch(sub_100273B54, v1, 0);
}

uint64_t sub_100273B54()
{
  v1 = *(v0 + 72);

  sub_100002CE0(v1, &qword_1005AF228, &unk_1004D0440);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100273BF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100273C80(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FenceRecord(0);
  v6 = sub_1000094D0(&qword_1005AF238, type metadata accessor for FenceRecord, &unk_1004CEFC8);
  *v4 = v2;
  v4[1] = sub_10000368C;

  return CloudKitChangeSet.Adaptor.create<A>(record:)(a2, v5, v6);
}

uint64_t sub_100273D74(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FenceRecord(0);
  v6 = sub_1000094D0(&qword_1005AF238, type metadata accessor for FenceRecord, &unk_1004CEFC8);
  *v4 = v2;
  v4[1] = sub_100003690;

  return CloudKitChangeSet.Adaptor.delete<A>(record:)(a2, v5, v6);
}

unint64_t sub_100273E68(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10001145C(a1, a2, v4);
}

uint64_t sub_100273EE0(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100003788;

  return v4();
}

uint64_t sub_100273FC8(uint64_t a1)
{
  v4 = *(type metadata accessor for Fence() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_10026BCD8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002740F8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100003690;

  return sub_10026D57C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1002741D0()
{
  v2 = *(type metadata accessor for PersonHandle() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for FenceRecord(0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Fence() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + v4);
  v13 = *(v0 + v7);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_10000368C;

  return sub_10026DC44(v10, v11, v0 + v3, v12, v0 + v6, v13, v0 + v9);
}

unint64_t sub_1002743D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B00C8, &qword_1004D1658);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100273E68(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002744D8()
{
  result = qword_1005AE728;
  if (!qword_1005AE728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005AE728);
  }

  return result;
}

uint64_t sub_100274524(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100273C80(a1, v4);
}

uint64_t sub_1002745C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_100273D74(a1, v4);
}

uint64_t sub_10027467C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_100271DB8(a1, a2, v6, v7, v8);
}

uint64_t sub_100274740()
{
  v1 = type metadata accessor for Fence();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100274818()
{
  v2 = *(type metadata accessor for Fence() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_10027224C(v4, v5, v6, v0 + v3);
}

uint64_t sub_100274934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10027499C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100274A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100274A6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000368C;

  return sub_10026ED20(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_100274BA4(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000368C;

  return sub_10026E720(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_100274D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_10004B564(&qword_1005B0B98, &qword_1004D27F0);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for Fence.TriggerPosition();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for Fence.Schedule.Matcher();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  sub_10004B564(&qword_1005B0BB0, &qword_1004D2830);
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for DateInterval();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v9 = type metadata accessor for Fence.Variant();
  v4[24] = v9;
  v4[25] = *(v9 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v10 = type metadata accessor for Fence.Schedule();
  v4[28] = v10;
  v4[29] = *(v10 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  sub_10004B564(&qword_1005B0B00, &qword_1004D26A0);
  v4[32] = swift_task_alloc();
  v11 = type metadata accessor for Fence.TriggerID();
  v4[33] = v11;
  v4[34] = *(v11 - 8);
  v4[35] = swift_task_alloc();
  v12 = type metadata accessor for Fence.ID();
  v4[36] = v12;
  v4[37] = *(v12 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  sub_10004B564(&qword_1005B09D0, &unk_1004D2380);
  v4[43] = swift_task_alloc();
  v13 = type metadata accessor for Fence();
  v4[44] = v13;
  v4[45] = *(v13 - 8);
  v4[46] = swift_task_alloc();
  v14 = swift_task_alloc();
  v4[47] = v14;
  *v14 = v4;
  v14[1] = sub_10027522C;

  return daemon.getter();
}

uint64_t sub_10027522C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[48] = a1;

  v3 = swift_task_alloc();
  v2[49] = v3;
  v4 = type metadata accessor for Daemon();
  v2[50] = v4;
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[51] = v6;
  v7 = sub_100009518(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10027540C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10027540C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[52] = a1;
  v3[53] = v1;

  if (v1)
  {
    v5 = v3[5];

    return _swift_task_switch(sub_100277D38, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[54] = v6;
    *v6 = v4;
    v6[1] = sub_10027559C;
    v7 = v3[43];
    v8 = v3[2];

    return sub_10020ED50(v7, v8);
  }
}

uint64_t sub_10027559C()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1002756AC, v1, 0);
}

uint64_t sub_1002756AC()
{
  v60 = v0;
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005B09D0, &unk_1004D2380);
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v5 = v0[37];
    v4 = v0[38];
    v6 = v0[36];
    v7 = v0[2];
    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFF88);
    (*(v5 + 16))(v4, v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[37];
    v12 = v0[38];
    v14 = v0[36];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E6740, &v59);
      *(v15 + 12) = 2082;
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      v19 = sub_10000D01C(v16, v18, &v59);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Fence %{public}s trigger was received, but no fence is found!", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v50 = sub_10004D308(v0[4]);
    sub_10001157C(v50, v51, v52);

    v53 = v0[1];

    return v53();
  }

  else
  {
    (*(v2 + 32))(v0[46], v3, v1);
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v20 = v0[42];
    v21 = v0[36];
    v22 = v0[37];
    v24 = v0[34];
    v23 = v0[35];
    v25 = v0[33];
    v27 = v0[2];
    v26 = v0[3];
    v28 = type metadata accessor for Logger();
    v0[55] = sub_10000A6F0(v28, qword_1005DFF88);
    v29 = *(v22 + 16);
    v0[56] = v29;
    v0[57] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v20, v27, v21);
    (*(v24 + 16))(v23, v26, v25);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[42];
    v35 = v0[36];
    v34 = v0[37];
    v36 = v0[34];
    v37 = v0[35];
    v38 = v0[33];
    if (v32)
    {
      v58 = v31;
      v39 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v39 = 136446722;
      *(v39 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E6740, &v59);
      *(v39 + 12) = 2082;
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v38;
      log = v30;
      v41 = v37;
      v43 = v42;
      v44 = *(v34 + 8);
      v44(v33, v35);
      v45 = sub_10000D01C(v40, v43, &v59);

      *(v39 + 14) = v45;
      *(v39 + 22) = 2082;
      sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v36 + 8))(v41, v56);
      v49 = sub_10000D01C(v46, v48, &v59);

      *(v39 + 24) = v49;
      _os_log_impl(&_mh_execute_header, log, v58, "%{public}s Fence %{public}s trigger was received (%{public}s)", v39, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v36 + 8))(v37, v38);
      v44 = *(v34 + 8);
      v44(v33, v35);
    }

    v0[58] = v44;
    v55 = swift_task_alloc();
    v0[59] = v55;
    *v55 = v0;
    v55[1] = sub_100275E2C;

    return daemon.getter();
  }
}

uint64_t sub_100275E2C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 480) = a1;

  v5 = swift_task_alloc();
  *(v3 + 488) = v5;
  v6 = type metadata accessor for LocalStorageService();
  v7 = sub_100009518(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v5 = v4;
  v5[1] = sub_100275FE0;
  v8 = *(v2 + 408);
  v9 = *(v2 + 400);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100275FE0(uint64_t a1)
{
  v3 = *v2;
  v3[62] = a1;
  v3[63] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = sub_100277ED0;
  }

  else
  {
    v6 = v3[5];

    v5 = sub_100276108;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100276108(uint64_t a1)
{
  v70 = v1;
  v2 = *(v1 + 216);
  v3 = *(v1 + 192);
  v4 = *(v1 + 200);
  Fence.variant.getter();
  v5 = *(v4 + 88);
  *(v1 + 512) = v5;
  *(v1 + 520) = (v4 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v6 = v5(v2, v3);
  v7 = enum case for Fence.Variant.oneTime(_:);
  *(v1 + 608) = enum case for Fence.Variant.oneTime(_:);
  v8 = enum case for Fence.Variant.recurring(_:);
  *(v1 + 612) = enum case for Fence.Variant.recurring(_:);
  if (v6 == v7 || v6 == v8)
  {
    (*(*(v1 + 200) + 8))(*(v1 + 216), *(v1 + 192));
LABEL_7:
    v10 = *(v1 + 448);
    v11 = *(v1 + 312);
    v12 = *(v1 + 288);
    v14 = *(v1 + 64);
    v13 = *(v1 + 72);
    v15 = *(v1 + 56);
    v16 = *(v1 + 32);
    v17 = *(v1 + 16);
    (*(v14 + 56))(*(v1 + 256), 1, 1, v15);
    v10(v11, v17, v12);
    (*(v14 + 16))(v13, v16, v15);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v1 + 464);
    v22 = *(v1 + 312);
    v23 = *(v1 + 288);
    if (v20)
    {
      v67 = v19;
      v24 = *(v1 + 128);
      v59 = *(v1 + 120);
      v60 = *(v1 + 112);
      v58 = *(v1 + 72);
      v62 = *(v1 + 64);
      v64 = *(v1 + 56);
      v25 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v25 = 136446722;
      *(v25 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E6740, &v69);
      *(v25 + 12) = 2082;
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v21(v22, v23);
      v29 = sub_10000D01C(v26, v28, &v69);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2082;
      sub_1002787C8(v24);
      v30 = Date.localISO8601.getter();
      v32 = v31;
      (*(v59 + 8))(v24, v60);
      (*(v62 + 8))(v58, v64);
      v33 = sub_10000D01C(v30, v32, &v69);

      *(v25 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v18, v67, "%{public}s Scheduled fence %{public}s is triggered for the first time in current schedule interval at: %{public}s", v25, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v46 = *(v1 + 64);
      v45 = *(v1 + 72);
      v47 = *(v1 + 56);

      (*(v46 + 8))(v45, v47);
      v21(v22, v23);
    }

    v48 = swift_task_alloc();
    *(v1 + 568) = v48;
    *v48 = v1;
    v48[1] = sub_100277230;
    v49 = *(v1 + 368);
    v50 = *(v1 + 256);
    v51 = *(v1 + 32);
    v52 = *(v1 + 24);

    return sub_10028C668(v49, v52, v51, v50);
  }

  if (v6 != enum case for Fence.Variant.scheduled(_:))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v35 = *(v1 + 240);
  v34 = *(v1 + 248);
  v37 = *(v1 + 224);
  v36 = *(v1 + 232);
  v38 = *(v1 + 216);
  v66 = *(v1 + 176);
  v68 = *(v1 + 168);
  v39 = *(v1 + 152);
  v40 = *(v1 + 144);
  v65 = *(v1 + 136);
  v41 = *(v1 + 120);
  v42 = *(v1 + 128);
  v61 = *(v1 + 160);
  v63 = *(v1 + 112);
  (*(*(v1 + 200) + 96))(v38, *(v1 + 192));
  (*(v36 + 32))(v34, v38, v37);
  (*(v36 + 16))(v35, v34, v37);
  Fence.Schedule.Matcher.init(schedule:)();
  sub_1002787C8(v42);
  Fence.Schedule.Matcher.interval(containingDate:)();
  v43 = *(v41 + 8);
  *(v1 + 528) = v43;
  *(v1 + 536) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v42, v63);
  (*(v40 + 8))(v39, v65);
  if ((*(v66 + 48))(v61, 1, v68) == 1)
  {
    v44 = *(v1 + 160);
    (*(*(v1 + 232) + 8))(*(v1 + 248), *(v1 + 224));
    sub_100002CE0(v44, &qword_1005B0BB0, &qword_1004D2830);
    goto LABEL_7;
  }

  (*(*(v1 + 176) + 32))(*(v1 + 184), *(v1 + 160), *(v1 + 168));
  Fence.id.getter();
  v54 = swift_task_alloc();
  *(v1 + 544) = v54;
  *v54 = v1;
  v54[1] = sub_10027678C;
  v55 = *(v1 + 328);
  v56 = *(v1 + 184);
  v57 = *(v1 + 48);

  return sub_100306C9C(v57, v55, v56);
}

uint64_t sub_10027678C()
{
  v2 = *v1;
  v2[69] = v0;

  v3 = v2[58];
  v4 = v2[41];
  v5 = v2[36];
  v6 = v2[5];
  if (v0)
  {
    v3(v4, v5);
    v7 = sub_1002780E8;
  }

  else
  {
    v2[70] = (v2[37] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v3(v4, v5);
    v7 = sub_100276934;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100276934()
{
  v108 = v0;
  v1 = v0[6];
  v2 = type metadata accessor for FenceTriggerRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[31];
    v4 = v0[28];
    v5 = v0[29];
    (*(v0[22] + 8))(v0[23], v0[21]);
    (*(v5 + 8))(v3, v4);
    sub_100002CE0(v1, &qword_1005B0B98, &qword_1004D27F0);
    v6 = v0[56];
    v7 = v0[39];
    v8 = v0[36];
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[7];
    v12 = v0[4];
    v13 = v0[2];
    (*(v10 + 56))(v0[32], 1, 1, v11);
    v6(v7, v13, v8);
    (*(v10 + 16))(v9, v12, v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[58];
    v18 = v0[39];
    v19 = v0[36];
    if (v16)
    {
      v106 = v15;
      v20 = v0[16];
      v88 = v0[15];
      v92 = v0[14];
      v84 = v0[9];
      v96 = v0[8];
      v100 = v0[7];
      v21 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v21 = 136446722;
      *(v21 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E6740, &v107);
      *(v21 + 12) = 2082;
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v17(v18, v19);
      v25 = sub_10000D01C(v22, v24, &v107);

      *(v21 + 14) = v25;
      *(v21 + 22) = 2082;
      sub_1002787C8(v20);
      v26 = Date.localISO8601.getter();
      v28 = v27;
      (*(v88 + 8))(v20, v92);
      (*(v96 + 8))(v84, v100);
      v29 = sub_10000D01C(v26, v28, &v107);

      *(v21 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v14, v106, "%{public}s Scheduled fence %{public}s is triggered for the first time in current schedule interval at: %{public}s", v21, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v59 = v0[8];
      v58 = v0[9];
      v60 = v0[7];

      (*(v59 + 8))(v58, v60);
      v17(v18, v19);
    }
  }

  else
  {
    v97 = v0[56];
    v93 = v0[36];
    v30 = v0[32];
    v32 = v0[12];
    v31 = v0[13];
    v85 = v0[40];
    v89 = v0[11];
    v101 = v0[10];
    v34 = v0[7];
    v33 = v0[8];
    v82 = v0[4];
    v35 = v0[2];
    v36 = *(v33 + 16);
    v36(v32, v1 + *(v2 + 24), v34);
    sub_100293A10(v1, type metadata accessor for FenceTriggerRecord);
    (*(v33 + 32))(v31, v32, v34);
    v36(v30, v31, v34);
    (*(v33 + 56))(v30, 0, 1, v34);
    v97(v85, v35, v93);
    v36(v89, v82, v34);
    v36(v101, v31, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v79 = v0[66];
      v76 = v0[58];
      log = v37;
      v39 = v0[40];
      v40 = v0[36];
      v104 = v0[31];
      v98 = v0[29];
      v102 = v0[28];
      v90 = v0[21];
      v94 = v0[23];
      v41 = v0[16];
      v83 = v0[13];
      v86 = v0[22];
      v42 = v0[11];
      v80 = v0[10];
      v43 = v0[8];
      v77 = v0[14];
      v78 = v0[7];
      v44 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v44 = 136446978;
      *(v44 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E6740, &v107);
      *(v44 + 12) = 2082;
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v76(v39, v40);
      v48 = sub_10000D01C(v45, v47, &v107);

      *(v44 + 14) = v48;
      *(v44 + 22) = 2082;
      sub_1002787C8(v41);
      v49 = Date.localISO8601.getter();
      v51 = v50;
      v79(v41, v77);
      v52 = *(v43 + 8);
      v52(v42, v78);
      v53 = sub_10000D01C(v49, v51, &v107);

      *(v44 + 24) = v53;
      *(v44 + 32) = 2082;
      sub_100009518(&qword_1005AE810, &type metadata accessor for Fence.TriggerPosition, &protocol conformance descriptor for Fence.TriggerPosition);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v52(v80, v78);
      v57 = sub_10000D01C(v54, v56, &v107);

      *(v44 + 34) = v57;
      _os_log_impl(&_mh_execute_header, log, v38, "%{public}s Scheduled fence %{public}s was triggered earlier in the current schedule interval at: %{public}s previousPosition: %{public}s", v44, 0x2Au);
      swift_arrayDestroy();

      v52(v83, v78);
      (*(v86 + 8))(v94, v90);
      (*(v98 + 8))(v104, v102);
    }

    else
    {
      v87 = v0[40];
      v91 = v0[58];
      v61 = v0[36];
      v105 = v0[31];
      v62 = v0[29];
      v63 = v0[22];
      v99 = v0[23];
      v103 = v0[28];
      v95 = v0[21];
      v64 = v0[13];
      v65 = v0[10];
      v66 = v0[11];
      v67 = v0[7];
      v68 = v0[8];

      v69 = *(v68 + 8);
      v69(v65, v67);
      v69(v66, v67);
      v91(v87, v61);
      v69(v64, v67);
      (*(v63 + 8))(v99, v95);
      (*(v62 + 8))(v105, v103);
    }
  }

  v70 = swift_task_alloc();
  v0[71] = v70;
  *v70 = v0;
  v70[1] = sub_100277230;
  v71 = v0[46];
  v72 = v0[32];
  v73 = v0[4];
  v74 = v0[3];

  return sub_10028C668(v71, v74, v73, v72);
}

uint64_t sub_100277230()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100278340;
  }

  else
  {
    v4 = sub_10027735C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10027735C(uint64_t a1)
{
  v2 = *(v1 + 608);
  v3 = *(v1 + 512);
  v4 = *(v1 + 208);
  v5 = *(v1 + 192);
  Fence.variant.getter();
  v6 = v3(v4, v5);
  if (v6 == v2)
  {
    v7 = swift_task_alloc();
    *(v1 + 584) = v7;
    *v7 = v1;
    v7[1] = sub_1002776D4;
    v8 = *(v1 + 16);

    return sub_100288628(v8);
  }

  else
  {
    v10 = v6;
    v11 = *(v1 + 612);
    (*(*(v1 + 200) + 8))(*(v1 + 208), *(v1 + 192));
    if (v10 == v11 || v10 == enum case for Fence.Variant.scheduled(_:))
    {
      v20 = swift_task_alloc();
      *(v1 + 600) = v20;
      *v20 = v1;
      v20[1] = sub_100277A20;
      v21 = *(v1 + 32);
      v23 = *(v1 + 16);
      v22 = *(v1 + 24);

      return sub_100289330(v23, v21, v22);
    }

    else
    {
      v13 = *(v1 + 360);
      v12 = *(v1 + 368);
      v14 = *(v1 + 352);
      v15 = *(v1 + 256);
      v16 = sub_10004D318(*(v1 + 32), 0, 0);
      sub_10001157C(v16, v17, v18);

      sub_100002CE0(v15, &qword_1005B0B00, &qword_1004D26A0);
      (*(v13 + 8))(v12, v14);

      v19 = *(v1 + 8);

      return v19();
    }
  }
}

uint64_t sub_1002776D4()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100278574;
  }

  else
  {
    v4 = sub_100277800;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100277800()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[32];
  v5 = sub_10004D318(v0[4], 0, 0);
  sub_10001157C(v5, v6, v7);

  sub_100002CE0(v4, &qword_1005B0B00, &qword_1004D26A0);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100277A20()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100277B30, v1, 0);
}

uint64_t sub_100277B30()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[32];
  v5 = sub_10004D318(v0[4], 0, 0);
  sub_10001157C(v5, v6, v7);

  sub_100002CE0(v4, &qword_1005B0B00, &qword_1004D26A0);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100277D38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100277ED0()
{

  v1 = v0[63];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];
  v5 = v0[4];
  swift_errorRetain();
  v6 = sub_10004D318(v5, v1, 1);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002780E8()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = v0[69];
  v9 = v0[45];
  v8 = v0[46];
  v10 = v0[44];
  v11 = v0[4];
  swift_errorRetain();
  v12 = sub_10004D318(v11, v7, 1);
  v14 = v13;
  v16 = v15;

  sub_10001157C(v12, v14, v16);

  swift_willThrow();

  (*(v9 + 8))(v8, v10);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100278340()
{
  v1 = v0[32];

  sub_100002CE0(v1, &qword_1005B0B00, &qword_1004D26A0);
  v2 = v0[72];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  v6 = v0[4];
  swift_errorRetain();
  v7 = sub_10004D318(v6, v2, 1);
  v9 = v8;
  v11 = v10;

  sub_10001157C(v7, v9, v11);

  swift_willThrow();

  (*(v4 + 8))(v3, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100278574()
{
  v1 = v0[32];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];

  sub_100002CE0(v1, &qword_1005B0B00, &qword_1004D26A0);
  (*(v3 + 8))(v2, v4);
  v5 = v0[74];
  v7 = v0[45];
  v6 = v0[46];
  v8 = v0[44];
  v9 = v0[4];
  swift_errorRetain();
  v10 = sub_10004D318(v9, v5, 1);
  v12 = v11;
  v14 = v13;

  sub_10001157C(v10, v12, v14);

  swift_willThrow();

  (*(v7 + 8))(v6, v8);

  v15 = v0[1];

  return v15();
}

void sub_1002787C8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Fence.TriggerPosition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for Fence.TriggerPosition.inside(_:) || v8 == enum case for Fence.TriggerPosition.outside(_:))
  {
    (*(v5 + 96))(v7, v4);
    v10 = *v7;
    v11 = [v10 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else if (v8 == enum case for Fence.TriggerPosition.undetermined(_:))
  {
    (*(v5 + 96))(v7, v4);
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 32))(a1, v7, v12);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1002789EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  v6 = *(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8);
  v5[8] = v6;
  v5[9] = *(v6 + 64);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for Fence.TriggerPosition();
  v5[11] = v7;
  v8 = *(v7 - 8);
  v5[12] = v8;
  v5[13] = *(v8 + 64);
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for Fence.ID();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v5[17] = *(v10 + 64);
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_100278BB4, v4, 0);
}

uint64_t sub_100278BB4()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v20 = v1;
  v23 = v0[17];
  v24 = v0[13];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v22 = v0[8];
  v25 = v0[9];
  v26 = v0[7];
  v18 = v0[5];
  v19 = v6;
  v8 = v0[3];
  v17 = v0[4];
  v21 = swift_allocObject();
  swift_weakInit();
  (*(v2 + 16))(v1, v8, v3);
  (*(v5 + 16))(v4, v17, v6);
  sub_100005F04(v18, v7, &qword_1005A9148, &qword_1004D2370);
  v9 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v10 = (v23 + *(v5 + 80) + v9) & ~*(v5 + 80);
  v11 = (v24 + *(v22 + 80) + v10) & ~*(v22 + 80);
  v12 = swift_allocObject();
  v0[19] = v12;
  *(v12 + 16) = v21;
  (*(v2 + 32))(v12 + v9, v20, v3);
  (*(v5 + 32))(v12 + v10, v4, v19);
  sub_1000176A8(v7, v12 + v11, &qword_1005A9148, &qword_1004D2370);
  *(v12 + ((v25 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v27 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));
  v13 = swift_task_alloc();
  v0[20] = v13;
  v14 = sub_10004B564(&qword_1005B09C8, &qword_1004D2378);
  *v13 = v0;
  v13[1] = sub_100278E4C;
  v15 = v0[2];

  return v27(v15, &unk_1004D2888, v12, v14);
}

uint64_t sub_100278E4C()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {
    v3 = v2[6];

    return _swift_task_switch(sub_100278FB8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100278FB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100279044(uint64_t a1)
{
  PersonHandle.id.getter();
  sub_1000246F4();
  v1 = StringProtocol.components<A>(separatedBy:)();

  v2 = *(v1 + 16);

  PersonHandle.id.getter();
  if (v2 == 2)
  {
    return Destination.init(email:)();
  }

  else
  {
    return Destination.init(phoneNumber:)();
  }
}

uint64_t sub_1002790EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = *(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8);
  v3[6] = v4;
  v3[7] = *(v4 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = sub_10004B564(&qword_1005B09C8, &qword_1004D2378);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for Fence.TriggerPosition();
  v3[16] = v6;
  v7 = *(v6 - 8);
  v3[17] = v7;
  v3[18] = *(v7 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = sub_10004B564(&qword_1005B0B98, &qword_1004D27F0);
  v3[22] = swift_task_alloc();
  v8 = type metadata accessor for FenceTriggerRecord(0);
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v9 = type metadata accessor for Fence.AcceptanceStatus();
  v3[26] = v9;
  v3[27] = *(v9 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v10 = type metadata accessor for Fence.ID();
  v3[30] = v10;
  v11 = *(v10 - 8);
  v3[31] = v11;
  v3[32] = *(v11 + 64);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v12 = type metadata accessor for Fence();
  v3[37] = v12;
  v3[38] = *(v12 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v13 = type metadata accessor for Fence.Participant();
  v3[44] = v13;
  v3[45] = *(v13 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v14 = type metadata accessor for Fence.Variant();
  v3[48] = v14;
  v3[49] = *(v14 - 8);
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_1002795E0, v2, 0);
}

uint64_t sub_1002795E0(uint64_t a1)
{
  v88 = v1;
  v3 = v1[49];
  v2 = v1[50];
  v4 = v1[48];
  Fence.variant.getter();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == enum case for Fence.Variant.oneTime(_:))
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v6 = v1[43];
    v7 = v1[37];
    v8 = v1[38];
    v9 = v1[3];
    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFF88);
    (*(v8 + 16))(v6, v9, v7);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v1[43];
    v15 = v1[37];
    v16 = v1[38];
    if (v13)
    {
      v17 = v1[36];
      v85 = v12;
      v18 = v1[30];
      v19 = v1[31];
      v20 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v20 = 136446466;
      *(v20 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E6710, &v87);
      *(v20 + 12) = 2082;
      v82 = v15;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v19 + 8))(v17, v18);
      (*(v16 + 8))(v14, v82);
      v24 = sub_10000D01C(v21, v23, &v87);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v11, v85, "%{public}s Trying to trigger fence %{public}s which is not recurring", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v40 = v1[49];
    v39 = v1[50];
    v41 = v1[48];
    v42 = v1[2];
    v43 = type metadata accessor for Fence.TriggerID();
    (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    (*(v40 + 8))(v39, v41);
    goto LABEL_29;
  }

  if (v5 != enum case for Fence.Variant.recurring(_:) && v5 != enum case for Fence.Variant.scheduled(_:))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v26 = v1[47];
  v28 = v1[45];
  v27 = v1[46];
  v29 = v1[44];
  (*(v1[49] + 8))(v1[50], v1[48]);
  Fence.findee.getter();
  (*(v28 + 104))(v27, enum case for Fence.Participant.me(_:), v29);
  v30 = static Fence.Participant.== infix(_:_:)();
  v31 = *(v28 + 8);
  v31(v27, v29);
  v31(v26, v29);
  if ((v30 & 1) == 0)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v46 = v1[38];
    v45 = v1[39];
    v47 = v1[37];
    v48 = v1[3];
    v49 = type metadata accessor for Logger();
    sub_10000A6F0(v49, qword_1005DFF88);
    (*(v46 + 16))(v45, v48, v47);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    v54 = v1[38];
    v53 = v1[39];
    v55 = v1[37];
    if (v52)
    {
      v56 = v1[36];
      v86 = v51;
      v57 = v1[30];
      v58 = v1[31];
      v59 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v59 = 136446466;
      *(v59 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E6710, &v87);
      *(v59 + 12) = 2082;
      v83 = v55;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v58 + 8))(v56, v57);
      (*(v54 + 8))(v53, v83);
      v63 = sub_10000D01C(v60, v62, &v87);

      *(v59 + 14) = v63;
      v64 = "%{public}s Trying to trigger fence %{public}s which we are not the findee for";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v50, v86, v64, v59, 0x16u);
      swift_arrayDestroy();

LABEL_28:
      v79 = v1[2];
      v80 = type metadata accessor for Fence.TriggerID();
      (*(*(v80 - 8) + 56))(v79, 1, 1, v80);
LABEL_29:

      v81 = v1[1];

      return v81();
    }

LABEL_27:

    (*(v54 + 8))(v53, v55);
    goto LABEL_28;
  }

  v33 = v1[28];
  v32 = v1[29];
  v34 = v1[26];
  v35 = v1[27];
  Fence.acceptanceStatus.getter();
  (*(v35 + 104))(v33, enum case for Fence.AcceptanceStatus.accepted(_:), v34);
  v36 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v37 = *(v35 + 8);
  v37(v33, v34);
  v37(v32, v34);
  if ((v36 & 1) == 0)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v65 = v1[40];
    v66 = v1[37];
    v67 = v1[38];
    v68 = v1[3];
    v69 = type metadata accessor for Logger();
    sub_10000A6F0(v69, qword_1005DFF88);
    (*(v67 + 16))(v65, v68, v66);
    v50 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    v71 = os_log_type_enabled(v50, v70);
    v53 = v1[40];
    v55 = v1[37];
    v54 = v1[38];
    if (v71)
    {
      v72 = v1[36];
      v86 = v70;
      v73 = v1[30];
      v74 = v1[31];
      v59 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v59 = 136446466;
      *(v59 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E6710, &v87);
      *(v59 + 12) = 2082;
      v84 = v55;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      (*(v74 + 8))(v72, v73);
      (*(v54 + 8))(v53, v84);
      v78 = sub_10000D01C(v75, v77, &v87);

      *(v59 + 14) = v78;
      v64 = "%{public}s Trying to trigger fence %{public}s which we are not accepted";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v38 = swift_task_alloc();
  v1[51] = v38;
  *v38 = v1;
  v38[1] = sub_10027A094;

  return daemon.getter();
}

uint64_t sub_10027A094(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 416) = a1;

  v3 = swift_task_alloc();
  *(v2 + 424) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009518(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_10027A270;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10027A270(uint64_t a1)
{
  v3 = *v2;
  v3[54] = a1;
  v3[55] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_10027BFF0;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_10027A398;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10027A398(uint64_t a1)
{
  v2 = *(v1 + 432);
  Fence.id.getter();

  return _swift_task_switch(sub_10027A408, v2, 0);
}

uint64_t sub_10027A408()
{
  v1 = v0[54];
  v2 = v0[35];
  v3 = sub_100009518(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v0[56] = v3;
  v4 = swift_task_alloc();
  v0[57] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[58] = v5;
  *v5 = v0;
  v5[1] = sub_10027A540;
  v7 = v0[21];
  v6 = v0[22];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, v3, 0xD000000000000011, 0x80000001004E6620, sub_100293A80, v4, v7);
}

uint64_t sub_10027A540()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = v2[54];
    v4 = sub_10027ABB4;
  }

  else
  {
    v5 = v2[35];
    v6 = v2[30];
    v7 = v2[31];
    v8 = v2[4];

    v9 = *(v7 + 8);
    v2[60] = v9;
    v2[61] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v6);
    v4 = sub_10027A6A4;
    v3 = v8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10027A6A4()
{
  v36 = v0;
  v1 = v0[23];
  v2 = v0[22];
  if ((*(v0[24] + 48))(v2, 1, v1) == 1)
  {
    sub_100002CE0(v2, &qword_1005B0B98, &qword_1004D27F0);
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v3 = v0[41];
    v4 = v0[37];
    v5 = v0[38];
    v6 = v0[3];
    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005DFF88);
    (*(v5 + 16))(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v33 = v0[60];
      v10 = v0[41];
      v11 = v0[38];
      v34 = v0[37];
      v12 = v0[36];
      v13 = v0[30];
      v14 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E6710, &v35);
      *(v14 + 12) = 2082;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v33(v12, v13);
      (*(v11 + 8))(v10, v34);
      v18 = sub_10000D01C(v15, v17, &v35);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s Trying to trigger fence %{public}s but with no fenceTrigger info", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v26 = v0[41];
      v27 = v0[37];
      v28 = v0[38];

      (*(v28 + 8))(v26, v27);
    }

    v29 = v0[2];
    v30 = type metadata accessor for Fence.TriggerID();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);

    v31 = v0[1];

    return v31();
  }

  else
  {
    v19 = v0[54];
    v20 = v0[25];
    v21 = v0[20];
    v22 = v0[16];
    v23 = v0[17];
    sub_10029350C(v2, v20, type metadata accessor for FenceTriggerRecord);
    v24 = *(v1 + 24);
    v25 = *(v23 + 16);
    v0[62] = v25;
    v0[63] = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v21, v20 + v24, v22);
    Fence.id.getter();

    return _swift_task_switch(sub_10027ADDC, v19, 0);
  }
}

uint64_t sub_10027ABB4()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[4];

  (*(v3 + 8))(v1, v2);

  return _swift_task_switch(sub_10027AC48, v4, 0);
}

uint64_t sub_10027AC48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10027ADDC()
{
  v1 = v0[56];
  v2 = v0[54];
  v3 = v0[34];
  v4 = swift_task_alloc();
  v0[64] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[65] = v5;
  *v5 = v0;
  v5[1] = sub_10027AEE0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v2, v1, 0xD000000000000017, 0x80000001004E65A0, sub_100274A64, v4, &type metadata for () + 1);
}

uint64_t sub_10027AEE0()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = *(v2 + 432);
    v4 = sub_10027B814;
  }

  else
  {
    v5 = *(v2 + 432);

    v4 = sub_10027B008;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10027B008()
{
  v1 = *(v0 + 32);
  (*(v0 + 480))(*(v0 + 272), *(v0 + 240));

  return _swift_task_switch(sub_10027B07C, v1, 0);
}

uint64_t sub_10027B07C(uint64_t a1)
{
  v72 = v1;
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[12];
  v5 = v1[13];
  static Date.now.getter();
  sub_1001A6DD8(v3);
  Date.timeIntervalSince(_:)();
  v7 = v6;
  v8 = *(v5 + 8);
  v8(v3, v4);
  v8(v2, v4);
  if (v7 <= 3600.0)
  {
    v56 = v1[62];
    v26 = v1[36];
    v27 = v1[31];
    v51 = v1[33];
    v52 = v1[30];
    v29 = v1[26];
    v28 = v1[27];
    v30 = v1[19];
    v54 = v30;
    v55 = v1[20];
    v63 = v1[18];
    v65 = v1[32];
    v58 = v1[17];
    v31 = v1[16];
    v32 = v1[9];
    v69 = v1[8];
    v59 = v1[6];
    v61 = v1[7];
    v67 = v1[5];
    Fence.id.getter();
    (*(v28 + 56))(v32, 1, 1, v29);
    v53 = swift_allocObject();
    swift_weakInit();
    (*(v27 + 16))(v26, v51, v52);
    v56(v30, v55, v31);
    sub_100005F04(v32, v69, &qword_1005A9148, &qword_1004D2370);
    v33 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v34 = (v65 + *(v58 + 80) + v33) & ~*(v58 + 80);
    v35 = (v63 + *(v59 + 80) + v34) & ~*(v59 + 80);
    v36 = swift_allocObject();
    v1[67] = v36;
    *(v36 + 16) = v53;
    (*(v27 + 32))(v36 + v33, v26, v52);
    (*(v58 + 32))(v36 + v34, v54, v31);
    sub_1000176A8(v69, v36 + v35, &qword_1005A9148, &qword_1004D2370);
    *(v36 + ((v61 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v67;
    v70 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));
    v37 = swift_task_alloc();
    v1[68] = v37;
    *v37 = v1;
    v37[1] = sub_10027BA7C;
    v39 = v1[10];
    v38 = v1[11];

    return v70(v38, &unk_1004D2878, v36, v39);
  }

  else
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v9 = v1[42];
    v10 = v1[37];
    v11 = v1[38];
    v12 = v1[3];
    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005DFF88);
    (*(v11 + 16))(v9, v12, v10);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v57 = v1[60];
      v16 = v1[42];
      v17 = v1[38];
      v60 = v1[37];
      v18 = v1[36];
      v19 = v1[30];
      v68 = v1[25];
      v62 = v1[17];
      v64 = v1[16];
      v66 = v1[20];
      v20 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v20 = 136446466;
      *(v20 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E6710, &v71);
      *(v20 + 12) = 2082;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v57(v18, v19);
      (*(v17 + 8))(v16, v60);
      v24 = sub_10000D01C(v21, v23, &v71);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s Fence %{public}s should not trigger since it was accepted >1h after invitation.", v20, 0x16u);
      swift_arrayDestroy();

      (*(v62 + 8))(v66, v64);
      v25 = v68;
    }

    else
    {
      v41 = v1[42];
      v42 = v1[37];
      v43 = v1[38];
      v44 = v1[25];
      v45 = v1[20];
      v46 = v1[16];
      v47 = v1[17];

      (*(v43 + 8))(v41, v42);
      (*(v47 + 8))(v45, v46);
      v25 = v44;
    }

    sub_100293A10(v25, type metadata accessor for FenceTriggerRecord);
    v48 = v1[2];
    v49 = type metadata accessor for Fence.TriggerID();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);

    v50 = v1[1];

    return v50();
  }
}

uint64_t sub_10027B814()
{
  v1 = v0[60];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[4];

  v1(v2, v3);

  return _swift_task_switch(sub_10027B8A8, v4, 0);
}

uint64_t sub_10027B8A8()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[17];

  (*(v4 + 8))(v2, v3);
  sub_100293A10(v1, type metadata accessor for FenceTriggerRecord);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10027BA7C()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = v2[4];
    v4 = sub_10027BDE8;
  }

  else
  {
    v5 = v2[60];
    v6 = v2[33];
    v7 = v2[30];
    v8 = v2[9];
    v9 = v2[4];
    sub_100002CE0(v8, &qword_1005A9148, &qword_1004D2370);
    v5(v6, v7);
    v4 = sub_10027BBF8;
    v3 = v9;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10027BBF8()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[11];
  v6 = v0[2];

  (*(v4 + 8))(v2, v3);
  sub_100293A10(v1, type metadata accessor for FenceTriggerRecord);
  sub_1000176A8(v5, v6, &qword_1005B09C8, &qword_1004D2378);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10027BDE8()
{
  v1 = v0[60];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[25];
  v5 = v0[20];
  v6 = v0[16];
  v7 = v0[17];
  sub_100002CE0(v0[9], &qword_1005A9148, &qword_1004D2370);
  v1(v2, v3);

  (*(v7 + 8))(v5, v6);
  sub_100293A10(v4, type metadata accessor for FenceTriggerRecord);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10027BFF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10027C184(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10027C218;

  return daemon.getter();
}

uint64_t sub_10027C218(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009518(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_10027C3F4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10027C3F4(uint64_t a1)
{
  v4 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v5 = v4[3];
    v6 = sub_1000E9F80;
  }

  else
  {

    v6 = sub_10027C52C;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10027C52C()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = sub_100009518(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_10027C664;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v1, v3, 0xD000000000000017, 0x80000001004E65A0, sub_100293A84, v4, &type metadata for () + 1);
}

uint64_t sub_10027C664()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_10027C7A8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_10027C78C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10027C7A8()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_10027C814, v1, 0);
}

uint64_t sub_10027C814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10027C878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  sub_10004B564(&qword_1005B09C8, &qword_1004D2378);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  sub_10004B564(&qword_1005A9148, &qword_1004D2370);
  v5[14] = swift_task_alloc();
  v6 = type metadata accessor for Fence.AcceptanceStatus();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = type metadata accessor for Fence.ID();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v5[26] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  sub_10004B564(&qword_1005B09D0, &unk_1004D2380);
  v5[31] = swift_task_alloc();
  v9 = type metadata accessor for Fence();
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_10027CBAC, 0, 0);
}

uint64_t sub_10027CBAC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[37] = v2;
    *v2 = v0;
    v2[1] = sub_10027CDCC;

    return daemon.getter();
  }

  else
  {
    v3 = v0[5];
    v4 = type metadata accessor for Fence.TriggerID();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10027CDCC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 304) = a1;

  v3 = swift_task_alloc();
  *(v2 + 312) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009518(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10027CFA8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10027CFA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10027EA00, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[42] = v5;
    *v5 = v4;
    v5[1] = sub_10027D138;
    v6 = v3[31];
    v7 = v3[7];

    return sub_10020ED50(v6, v7);
  }
}

uint64_t sub_10027D138()
{

  return _swift_task_switch(sub_10027D234, 0, 0);
}

uint64_t sub_10027D234()
{
  v133 = v0;
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005B09D0, &unk_1004D2380);
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v5 = v0[22];
    v4 = v0[23];
    v6 = v0[21];
    v7 = v0[7];
    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFF88);
    (*(v5 + 16))(v4, v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[21];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_10000D01C(0xD000000000000033, 0x80000001004E65E0, &v132);
      *(v15 + 12) = 2082;
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      v19 = sub_10000D01C(v16, v18, &v132);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s cannot trigger a fence with ID %{public}s as no fence is found!", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v23 = v0[5];
    v24 = sub_10004D7C0(v0[8]);
    sub_10001157C(v24, v25, v26);

LABEL_10:
    v27 = type metadata accessor for Fence.TriggerID();
    (*(*(v27 - 8) + 56))(v23, 1, 1, v27);

    v28 = v0[1];

    return v28();
  }

  v20 = v0[27];
  v21 = v0[28];
  v22 = v0[26];
  (*(v2 + 32))(v0[35], v3, v1);
  Fence.muteEndDate.getter();
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
    sub_100002CE0(v0[26], &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    v30 = v0[29];
    v31 = v0[27];
    v32 = v0[28];
    (*(v32 + 32))(v0[30], v0[26], v31);
    static Date.now.getter();
    v33 = static Date.< infix(_:_:)();
    v34 = *(v32 + 8);
    v34(v30, v31);
    if (v33)
    {
      v129 = v34;
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v35 = v0[25];
      v36 = v0[21];
      v37 = v0[22];
      v38 = v0[7];
      v39 = type metadata accessor for Logger();
      sub_10000A6F0(v39, qword_1005DFF88);
      (*(v37 + 16))(v35, v38, v36);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v0[25];
      v44 = v0[21];
      v45 = v0[22];
      if (v42)
      {
        v46 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v132 = v127;
        *v46 = 136446210;
        sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        (*(v45 + 8))(v43, v44);
        v50 = sub_10000D01C(v47, v49, &v132);

        *(v46 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v40, v41, "Fence %{public}s being triggered is muted", v46, 0xCu);
        sub_100004984(v127);
      }

      else
      {

        (*(v45 + 8))(v43, v44);
      }

      v107 = v0[35];
      v108 = v0[33];
      v128 = v0[32];
      v109 = v0[30];
      v110 = v0[27];
      v23 = v0[5];
      v111 = sub_10004D4D8();
      sub_10001157C(v111, v112, v113);

      v129(v109, v110);
      (*(v108 + 8))(v107, v128);
      goto LABEL_10;
    }

    v34(v0[30], v0[27]);
  }

  v51 = v0[15];
  v52 = v0[16];
  v53 = v0[14];
  sub_100005F04(v0[9], v53, &qword_1005A9148, &qword_1004D2370);
  if ((*(v52 + 48))(v53, 1, v51) == 1)
  {
    sub_100002CE0(v0[14], &qword_1005A9148, &qword_1004D2370);
  }

  else
  {
    v54 = v0[19];
    v55 = v0[15];
    v56 = v0[16];
    (*(v56 + 32))(v0[20], v0[14], v55);
    Fence.acceptanceStatus.getter();
    sub_100009518(&qword_1005B0B68, &type metadata accessor for Fence.AcceptanceStatus, &protocol conformance descriptor for Fence.AcceptanceStatus);
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    v58 = *(v56 + 8);
    v58(v54, v55);
    if ((v57 & 1) == 0)
    {
      v126 = v58;
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v71 = v0[34];
      v124 = v0[35];
      v72 = v0[32];
      v73 = v0[33];
      v74 = v0[24];
      v75 = v0[21];
      v76 = v0[22];
      v130 = v0[20];
      v77 = v0[16];
      v121 = v0[15];
      v122 = v0[18];
      v78 = v0[7];
      v79 = type metadata accessor for Logger();
      sub_10000A6F0(v79, qword_1005DFF88);
      (*(v76 + 16))(v74, v78, v75);
      (*(v73 + 16))(v71, v124, v72);
      (*(v77 + 16))(v122, v130, v121);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      v82 = os_log_type_enabled(v80, v81);
      v125 = v0[35];
      v83 = v0[33];
      v84 = v0[34];
      v131 = v0[32];
      v85 = v0[24];
      v86 = v0[21];
      v87 = v0[22];
      v123 = v0[20];
      if (v82)
      {
        log = v80;
        v88 = v0[19];
        v117 = v0[15];
        v118 = v0[18];
        v119 = v81;
        v89 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *v89 = 136446722;
        sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        (*(v87 + 8))(v85, v86);
        v93 = sub_10000D01C(v90, v92, &v132);

        *(v89 + 4) = v93;
        *(v89 + 12) = 2082;
        Fence.acceptanceStatus.getter();
        sub_100009518(&qword_1005B0B90, &type metadata accessor for Fence.AcceptanceStatus, &protocol conformance descriptor for Fence.AcceptanceStatus);
        v94 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v95;
        v126(v88, v117);
        v97 = *(v83 + 8);
        v97(v84, v131);
        v98 = sub_10000D01C(v94, v96, &v132);

        *(v89 + 14) = v98;
        *(v89 + 22) = 2082;
        v99 = dispatch thunk of CustomStringConvertible.description.getter();
        v101 = v100;
        v126(v118, v117);
        v102 = sub_10000D01C(v99, v101, &v132);

        *(v89 + 24) = v102;
        _os_log_impl(&_mh_execute_header, log, v119, "Fence %{public}s will not be triggered as its current acceptance status (%{public}s) does not match the required status (%{public}s)", v89, 0x20u);
        swift_arrayDestroy();

        v126(v123, v117);
        v97(v125, v131);
      }

      else
      {
        v114 = v0[18];
        v115 = v0[15];

        v126(v114, v115);
        v116 = *(v83 + 8);
        v116(v84, v131);
        (*(v87 + 8))(v85, v86);
        v126(v123, v115);
        v116(v125, v131);
      }

      v23 = v0[5];
      goto LABEL_10;
    }

    v58(v0[20], v0[15]);
  }

  v60 = v0[16];
  v59 = v0[17];
  v61 = v0[15];
  Fence.acceptanceStatus.getter();
  v62 = (*(v60 + 88))(v59, v61);
  if (v62 == enum case for Fence.AcceptanceStatus.pendingHidden(_:))
  {
    v63 = swift_task_alloc();
    v0[47] = v63;
    *v63 = v0;
    v63[1] = sub_10027E704;
    v64 = v0[35];
    v65 = v0[10];
    v66 = v0[8];

    return sub_100282084(v65, v64, v66);
  }

  else if (v62 == enum case for Fence.AcceptanceStatus.pending(_:))
  {
    v67 = swift_task_alloc();
    v0[45] = v67;
    *v67 = v0;
    v67[1] = sub_10027E408;
    v68 = v0[35];
    v69 = v0[11];
    v70 = v0[8];

    return sub_100281988(v69, v68, v70);
  }

  else if (v62 == enum case for Fence.AcceptanceStatus.accepted(_:))
  {
    v103 = swift_task_alloc();
    v0[43] = v103;
    *v103 = v0;
    v103[1] = sub_10027E110;
    v104 = v0[35];
    v105 = v0[12];
    v106 = v0[8];

    return sub_10027F0D8(v105, v104, v106);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_10027E110()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_10027EB5C;
  }

  else
  {
    v2 = sub_10027E224;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027E224()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[13];
  v5 = v0[8];
  v6 = v0[5];
  sub_1000176A8(v0[12], v4, &qword_1005B09C8, &qword_1004D2378);
  v7 = sub_10004D920(v1, v5, 0, 0);
  sub_10001157C(v7, v8, v9);

  (*(v3 + 8))(v1, v2);
  sub_1000176A8(v4, v6, &qword_1005B09C8, &qword_1004D2378);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10027E408()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_10027ED30;
  }

  else
  {
    v2 = sub_10027E51C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027E51C()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[13];
  v5 = v0[8];
  v6 = v0[5];
  sub_1000176A8(v0[11], v4, &qword_1005B09C8, &qword_1004D2378);
  v7 = sub_10004D920(v1, v5, 0, 0);
  sub_10001157C(v7, v8, v9);

  (*(v3 + 8))(v1, v2);
  sub_1000176A8(v4, v6, &qword_1005B09C8, &qword_1004D2378);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10027E704()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_10027EF04;
  }

  else
  {
    v2 = sub_10027E818;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027E818()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[13];
  v5 = v0[8];
  v6 = v0[5];
  sub_1000176A8(v0[10], v4, &qword_1005B09C8, &qword_1004D2378);
  v7 = sub_10004D920(v1, v5, 0, 0);
  sub_10001157C(v7, v8, v9);

  (*(v3 + 8))(v1, v2);
  sub_1000176A8(v4, v6, &qword_1005B09C8, &qword_1004D2378);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10027EA00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10027EB5C()
{
  v1 = v0[44];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[8];
  swift_errorRetain();
  v6 = sub_10004D920(v2, v5, v1, 1);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  swift_willThrow();

  (*(v4 + 8))(v2, v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10027ED30()
{
  v1 = v0[46];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[8];
  swift_errorRetain();
  v6 = sub_10004D920(v2, v5, v1, 1);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  swift_willThrow();

  (*(v4 + 8))(v2, v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10027EF04()
{
  v1 = v0[48];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[8];
  swift_errorRetain();
  v6 = sub_10004D920(v2, v5, v1, 1);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  swift_willThrow();

  (*(v4 + 8))(v2, v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10027F0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Fence.Variant();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_10004B564(&qword_1005B0B98, &qword_1004D27F0);
  v4[10] = swift_task_alloc();
  sub_10004B564(&qword_1005B0B00, &qword_1004D26A0);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for Fence.ID();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for Fence();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for Fence.TriggerID();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10027F354, v3, 0);
}

uint64_t sub_10027F354()
{
  Fence.TriggerID.init()();
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_10027F3F8;
  v2 = v0[24];
  v3 = v0[4];
  v4 = v0[3];

  return sub_100283AEC(v2, v4, v3);
}

uint64_t sub_10027F3F8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100281188;
  }

  else
  {
    v4 = sub_10027F524;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10027F524()
{
  v27 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[27] = sub_10000A6F0(v5, qword_1005DFF88);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[18];
  if (v9)
  {
    v13 = v0[16];
    v25 = v8;
    v14 = v0[12];
    v15 = v0[13];
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E6640, &v26);
    *(v16 + 12) = 2082;
    v24 = v11;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    v20 = *(v12 + 8);
    v20(v10, v24);
    v21 = sub_10000D01C(v17, v19, &v26);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v25, "%{public}s: About to trigger fence %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[30] = v20;
  v22 = swift_task_alloc();
  v0[31] = v22;
  *v22 = v0;
  v22[1] = sub_10027F81C;

  return daemon.getter();
}

uint64_t sub_10027F81C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 256) = a1;

  v3 = swift_task_alloc();
  *(v2 + 264) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009518(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_10027F9F8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10027F9F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v5 = *(v3 + 40);
  if (v1)
  {
    v6 = sub_100281614;
  }

  else
  {
    v6 = sub_10027FB48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10027FB48(uint64_t a1)
{
  v2 = *(v1 + 272);
  Fence.id.getter();

  return _swift_task_switch(sub_10027FBB8, v2, 0);
}

uint64_t sub_10027FBB8()
{
  v1 = v0[34];
  v2 = v0[15];
  v3 = sub_100009518(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v4 = swift_task_alloc();
  v0[36] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_10027FCEC;
  v7 = v0[9];
  v6 = v0[10];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, v3, 0xD000000000000011, 0x80000001004E6620, sub_100293188, v4, v7);
}

uint64_t sub_10027FCEC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = v2[34];
    v4 = sub_100280054;
  }

  else
  {
    v5 = v2[15];
    v6 = v2[12];
    v7 = v2[13];
    v8 = v2[5];

    v9 = *(v7 + 8);
    v2[39] = v9;
    v2[40] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v6);
    v4 = sub_10027FE50;
    v3 = v8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10027FE50()
{
  v1 = v0[10];
  v2 = type metadata accessor for FenceTriggerRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[11];
  if (v3 == 1)
  {
    sub_100002CE0(v1, &qword_1005B0B98, &qword_1004D27F0);
    v5 = type metadata accessor for Fence.TriggerPosition();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = type metadata accessor for Fence.TriggerPosition();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v4, v1 + v6, v7);
    sub_100293A10(v1, type metadata accessor for FenceTriggerRecord);
    (*(v8 + 56))(v4, 0, 1, v7);
  }

  v9 = swift_task_alloc();
  v0[41] = v9;
  *v9 = v0;
  v9[1] = sub_1002801F4;
  v10 = v0[11];
  v11 = v0[4];
  v12 = v0[3];

  return sub_100286200(v12, v11, v10);
}

uint64_t sub_100280054()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[5];

  (*(v3 + 8))(v1, v2);

  return _swift_task_switch(sub_1002800E8, v4, 0);
}

uint64_t sub_1002800E8()
{

  (*(v0[22] + 8))(v0[24], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002801F4(char a1)
{
  v4 = *v2;
  *(v4 + 336) = v1;

  v5 = *(v4 + 40);
  if (v1)
  {
    v6 = sub_100281718;
  }

  else
  {
    *(v4 + 376) = a1 & 1;
    v6 = sub_100280334;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100280334()
{
  v34 = v0;
  if (*(v0 + 376) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 344) = v1;
    *v1 = v0;
    v1[1] = sub_100280808;
    v2 = *(v0 + 192);
    v3 = *(v0 + 88);
    v4 = *(v0 + 32);
    v5 = *(v0 + 24);

    return sub_100286B20(v5, v2, v4, v3);
  }

  else
  {
    (*(v0 + 224))(*(v0 + 152), *(v0 + 24), *(v0 + 136));
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v32 = *(v0 + 240);
      v9 = *(v0 + 152);
      v30 = *(v0 + 312);
      v10 = *(v0 + 128);
      v31 = *(v0 + 136);
      v11 = *(v0 + 96);
      v12 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v12 = 136446466;
      *(v12 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E6640, &v33);
      *(v12 + 12) = 2082;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v30(v10, v11);
      v32(v9, v31);
      v16 = sub_10000D01C(v13, v15, &v33);

      *(v12 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: NOT showing TransparencyNotification for fence %{public}s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v17 = *(v0 + 240);
      v18 = *(v0 + 152);
      v19 = *(v0 + 136);

      v17(v18, v19);
    }

    v21 = *(v0 + 56);
    v20 = *(v0 + 64);
    v22 = *(v0 + 48);
    Fence.variant.getter();
    v23 = (*(v21 + 88))(v20, v22);
    if (v23 == enum case for Fence.Variant.oneTime(_:))
    {
      Fence.id.getter();
      v24 = swift_task_alloc();
      *(v0 + 352) = v24;
      *v24 = v0;
      v24[1] = sub_100280B48;
      v25 = *(v0 + 112);

      return sub_100288628(v25);
    }

    else if (v23 == enum case for Fence.Variant.recurring(_:) || v23 == enum case for Fence.Variant.scheduled(_:))
    {
      (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
      Fence.id.getter();
      Fence.TriggerID.init()();
      v26 = swift_task_alloc();
      *(v0 + 368) = v26;
      *v26 = v0;
      v26[1] = sub_100280E58;
      v27 = *(v0 + 184);
      v28 = *(v0 + 128);
      v29 = *(v0 + 32);

      return sub_100289330(v28, v29, v27);
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }
}

uint64_t sub_100280808()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100280918, v1, 0);
}

uint64_t sub_100280918(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[6];
  Fence.variant.getter();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == enum case for Fence.Variant.oneTime(_:))
  {
    Fence.id.getter();
    v6 = swift_task_alloc();
    v1[44] = v6;
    *v6 = v1;
    v6[1] = sub_100280B48;
    v7 = v1[14];

    return sub_100288628(v7);
  }

  else if (v5 == enum case for Fence.Variant.recurring(_:) || v5 == enum case for Fence.Variant.scheduled(_:))
  {
    (*(v1[7] + 8))(v1[8], v1[6]);
    Fence.id.getter();
    Fence.TriggerID.init()();
    v10 = swift_task_alloc();
    v1[46] = v10;
    *v10 = v1;
    v10[1] = sub_100280E58;
    v11 = v1[23];
    v12 = v1[16];
    v13 = v1[4];

    return sub_100289330(v12, v13, v11);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_100280B48()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 96);
  *(*v1 + 360) = v0;

  v3(v4, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_100281840;
  }

  else
  {
    v7 = sub_100280CE0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100280CE0()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  sub_100002CE0(v1, &qword_1005B0B00, &qword_1004D26A0);
  (*(v3 + 8))(v2, v4);
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[2];
  (*(v6 + 32))(v7, v0[24], v5);
  (*(v6 + 56))(v7, 0, 1, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100280E58()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);
  v5 = *(*v0 + 128);
  v6 = *(*v0 + 96);
  v7 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v1(v5, v6);

  return _swift_task_switch(sub_100281030, v7, 0);
}

uint64_t sub_100281030()
{
  v1 = v0[11];

  sub_100002CE0(v1, &qword_1005B0B00, &qword_1004D26A0);
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[2];
  (*(v3 + 32))(v4, v0[24], v2);
  (*(v3 + 56))(v4, 0, 1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100281188()
{
  v34 = v0;
  v1 = &qword_1005A8000;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E6640, &v33);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Failed to send IDS message: %{public}@", v5, 0x16u);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v7);
    v1 = &qword_1005A8000;
  }

  else
  {
  }

  if (v1[29] != -1)
  {
    swift_once();
  }

  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[18];
  v12 = v0[3];
  v0[27] = sub_10000A6F0(v2, qword_1005DFF88);
  v13 = *(v11 + 16);
  v0[28] = v13;
  v0[29] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v9, v12, v10);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[18];
  if (v16)
  {
    v20 = v0[16];
    v32 = v15;
    v21 = v0[12];
    v22 = v0[13];
    v23 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v23 = 136446466;
    *(v23 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E6640, &v33);
    *(v23 + 12) = 2082;
    v31 = v18;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v22 + 8))(v20, v21);
    v27 = *(v19 + 8);
    v27(v17, v31);
    v28 = sub_10000D01C(v24, v26, &v33);

    *(v23 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v14, v32, "%{public}s: About to trigger fence %{public}s", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v27 = *(v19 + 8);
    v27(v17, v18);
  }

  v0[30] = v27;
  v29 = swift_task_alloc();
  v0[31] = v29;
  *v29 = v0;
  v29[1] = sub_10027F81C;

  return daemon.getter();
}