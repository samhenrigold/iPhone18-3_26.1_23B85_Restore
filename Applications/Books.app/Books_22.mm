void sub_1003543E0(void *a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_10079ACE4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    goto LABEL_8;
  }

  v37 = v11;
  v14 = [a1 managedObjectContext];
  if (!v14)
  {
LABEL_7:
    sub_10035A194(a1, 0);
    goto LABEL_8;
  }

  v15 = v14;
  if (([v14 hasChanges] & 1) == 0)
  {

    goto LABEL_7;
  }

  v38[0] = 0;
  if ([v15 save:v38])
  {
    v16 = v38[0];
    sub_10035A194(a1, 0);
  }

  else
  {
    v23 = v38[0];
    v24 = sub_1007967D4();

    swift_willThrow();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v36 = v24;
      v26 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
      v27 = Strong;
      swift_beginAccess();
      v28 = *&v27[v26];
      v29 = v28;

      if (!v28)
      {
LABEL_28:
        __break(1u);
        return;
      }

      EngagementManagerAnalyticsHelper.registerSyncFromCloudKitError(_:)(a4);
    }

    else
    {
    }

    sub_10079AC84();
    swift_errorRetain();
    v30 = sub_10079ACC4();
    v31 = sub_1007A29B4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v32 = 138412290;
      if (a4)
      {
        swift_errorRetain();
        v33 = _swift_stdlib_bridgeErrorToNSError();
        v34 = v33;
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

      *(v32 + 4) = v33;
      v35 = v36;
      *v36 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Error saving versions from cloud %@", v32, 0xCu);
      sub_100007840(v35, &unk_100AD9480, &qword_1008113B0);

      sub_10035A194(a1, 0);
    }

    else
    {
      sub_10035A194(a1, 0);
    }

    (*(v10 + 8))(v13, v37);
  }

LABEL_8:
  if (a5)
  {
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {
      return;
    }

    v18 = v17;
    sub_100347ADC();
    goto LABEL_14;
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    return;
  }

  v20 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  v21 = v19;
  swift_beginAccess();
  v22 = *&v21[v20];
  v18 = v22;

  if (!v22)
  {
    __break(1u);
    goto LABEL_28;
  }

  EngagementManagerAnalyticsHelper.registerSyncFromCloudKitSuccess()();
LABEL_14:
}

double sub_1003547B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = a2;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_10000A7C4(0, &qword_100AD3C58, BCMutableCloudData_ptr);
    sub_10035A1A8();
    v10 = sub_1007A2834();
  }

  if (a3)
  {
    a3 = sub_1007A2834();
  }

  v12 = a4;
  v13 = a5;
  v11(v10, a3, a4, a5, a6);

  return result;
}

double sub_1003548C0()
{
  v1 = *(v0 + OBJC_IVAR___BKEngagementManager_remoteConfigurationContainer);
  v2 = sub_100796584();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  sub_10079E784();
  *&v10 = sub_10079E754();
  *(&v10 + 1) = v4;
  sub_1007A36B4();
  if (!*(v3 + 16) || (v5 = sub_10000E2A4(v9), (v6 & 1) == 0))
  {

    sub_10002899C(v9);
LABEL_9:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_10;
  }

  sub_100007484(*(v3 + 56) + 32 * v5, &v10);
  sub_10002899C(v9);

  if (!*(&v11 + 1))
  {
LABEL_10:
    sub_100007840(&v10, &unk_100AD5B40, &unk_100811300);
    v7 = 0;
    goto LABEL_11;
  }

  sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  if (swift_dynamicCast())
  {
    v7 = v9[0];
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
  sub_10034861C(v1, v7);

  return result;
}

uint64_t sub_100354B00@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v52 = a2;
  v2 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v2 - 8);
  v56 = &v48 - v3;
  v4 = sub_1001F1160(&qword_100AE1A50, &qword_10081CA10);
  __chkstk_darwin(v4 - 8);
  v60 = &v48 - v5;
  v6 = sub_100796674();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v61 = &v48 - v9;
  v10 = sub_1001F1160(&qword_100ADD650, &qword_10081CA18);
  __chkstk_darwin(v10 - 8);
  v58 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v54 = &v48 - v13;
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v17 = sub_100796DE4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100796DA4();
  v62 = *(v21 - 8);
  v63 = v21;
  __chkstk_darwin(v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796D04();
  sub_100796DD4();
  v57 = *(v18 + 48);
  result = v57(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v49 = v18;
  v48 = *(v18 + 32);
  v48(v20, v16, v17);
  sub_100796D74();
  sub_1001F1160(&qword_100ADD658, &qword_10081CA20);
  v25 = sub_100796D84();
  v26 = *(v25 - 8);
  v27 = *(v26 + 72);
  v28 = *(v26 + 80);
  v53 = v17;
  v29 = (v28 + 32) & ~v28;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100812CF0;
  v31 = v30 + v29;
  v32 = *(v26 + 104);
  v32(v31, enum case for Calendar.Component.year(_:), v25);
  v32(v31 + v27, enum case for Calendar.Component.month(_:), v25);
  v32(v31 + 2 * v27, enum case for Calendar.Component.day(_:), v25);
  sub_1001F2338(v30);
  swift_setDeallocating();
  v33 = v53;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v34 = v61;
  sub_100796D34();

  v36 = v62;
  v35 = v63;
  v37 = *(v62 + 16);
  v38 = v60;
  v59 = v23;
  v37(v60, v23, v63);
  (*(v36 + 56))(v38, 0, 1, v35);
  v39 = v58;
  sub_100796DD4();
  result = v57(v39, 1, v33);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v40 = v54;
  v48(v54, v39, v33);
  (*(v49 + 56))(v40, 0, 1, v33);
  sub_100796644();
  sub_100796654();
  sub_100796624();
  v41 = v55;
  sub_100796664();
  v42 = v56;
  sub_100796634();
  v43 = sub_100796BB4();
  v44 = *(v43 - 8);
  result = (*(v44 + 48))(v42, 1, v43);
  if (result != 1)
  {
    v45 = *(v50 + 8);
    v46 = v41;
    v47 = v51;
    v45(v46, v51);
    v45(v34, v47);
    (*(v62 + 8))(v59, v63);
    return (*(v44 + 32))(v52, v42, v43);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100355238()
{
  v1[25] = v0;
  v2 = sub_10079ACE4();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v3 = sub_100796BB4();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return _swift_task_switch(sub_100355384, 0, 0);
}

uint64_t sub_100355384(uint64_t a1)
{
  v19 = v1;
  v2 = v1[25];
  sub_100796BA4();
  v3 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  v1[36] = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  v4 = swift_beginAccess();
  v5 = *(v2 + v3);
  if (!v5)
  {
    __break(1u);
    return Manager.fetchCounts(_:)(v4);
  }

  v6 = v1[25];
  v7 = *(v5 + OBJC_IVAR___BKEngagementManagerAnalyticsHelper_standardProperties);
  v8 = OBJC_IVAR___BKEngagementManager_manager;
  v1[37] = v7;
  v1[38] = v8;
  v9 = *(v6 + v8);
  v1[39] = v9;
  v10 = *(v7 + 16);
  if (v10)
  {
    v11 = sub_1005D6574(*(v7 + 16), 0);
    v17 = sub_1005D6C1C(&v18, v11 + 4, v10, v7);
    v12 = v18;
    swift_bridgeObjectRetain_n();
    v13 = v9;
    sub_10004DC54(v12);
    if (v17 == v10)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v14 = v9;
  v11 = _swiftEmptyArrayStorage;
LABEL_6:
  v1[40] = v11;
  v15 = swift_task_alloc();
  v1[41] = v15;
  *v15 = v1;
  v15[1] = sub_100355524;
  v4 = v11;

  return Manager.fetchCounts(_:)(v4);
}

uint64_t sub_100355524(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v5 = sub_10035668C;
  }

  else
  {
    v6 = *(v4 + 312);

    *(v4 + 344) = a1;
    v5 = sub_100355658;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100355658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 200);
  v5 = *(v4 + *(v3 + 288));
  if (!v5)
  {
    __break(1u);
    return Manager.getProperties(propertyName:assetIDs:)(a1, a2, a3);
  }

  v6 = *(v3 + 344);
  v7 = *(v5 + OBJC_IVAR___BKEngagementManagerAnalyticsHelper_sampleCapableProperties);
  *(v3 + 352) = v7;
  v8 = *(v7 + 32);
  *(v3 + 424) = v8;
  v9 = -1;
  v10 = -1 << v8;
  if (-(-1 << v8) < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 56);
  *(v3 + 360) = v6;
  swift_bridgeObjectRetain_n();
  if (v11)
  {
    v12 = 0;
LABEL_9:
    *(v3 + 368) = v11;
    *(v3 + 376) = v12;
    v14 = *(v3 + 304);
    v15 = (*(v7 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v16 = *v15;
    *(v3 + 384) = *v15;
    v17 = v15[1];
    *(v3 + 392) = v17;
    v18 = *(v4 + v14);
    *(v3 + 400) = v18;

    v18;
    v19 = swift_task_alloc();
    *(v3 + 408) = v19;
    *v19 = v3;
    v19[1] = sub_100355A80;
    a1 = v16;
    a2 = v17;
    a3 = 0;

    return Manager.getProperties(propertyName:assetIDs:)(a1, a2, a3);
  }

  v13 = 0;
  while (((63 - v10) >> 6) - 1 != v13)
  {
    v12 = v13 + 1;
    v11 = *(v7 + 8 * v13++ + 64);
    if (v11)
    {
      goto LABEL_9;
    }
  }

  if (*(v6 + 16))
  {
    v20 = *(v3 + 200);
    v21 = OBJC_IVAR___BKEngagementManager_metadata;
    swift_beginAccess();
    v22 = *(v20 + v21);
    v23 = OBJC_IVAR___BKEngagementManagerMetadata_propertyCounts;
    swift_beginAccess();
    *(v22 + v23) = v6;
  }

  v25 = *(v3 + 272);
  v24 = *(v3 + 280);
  v26 = *(v3 + 248);
  v27 = *(v3 + 256);
  sub_10079AC84();
  (*(v27 + 16))(v25, v24, v26);
  v28 = sub_10079ACC4();
  v29 = sub_1007A2994();
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v3 + 272);
  if (v30)
  {
    v47 = v29;
    v33 = *(v3 + 256);
    v32 = *(v3 + 264);
    v34 = *(v3 + 248);
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    sub_100796BA4();
    sub_100796B44();
    v37 = v36;
    v38 = *(v33 + 8);
    v38(v32, v34);
    sub_100796B44();
    v40 = v39;
    v38(v31, v34);
    *(v35 + 4) = v37 - v40;
    _os_log_impl(&_mh_execute_header, v28, v47, "Time to calculate engagement manager property metadata %fs", v35, 0xCu);
  }

  else
  {
    v41 = *(v3 + 248);
    v42 = *(v3 + 256);

    v38 = *(v42 + 8);
    v38(v31, v41);
  }

  v43 = *(v3 + 280);
  v44 = *(v3 + 248);
  (*(*(v3 + 216) + 8))(*(v3 + 232), *(v3 + 208));
  v38(v43, v44);

  v45 = *(v3 + 8);

  return v45();
}

uint64_t sub_100355A80(uint64_t a1)
{
  v2 = *(*v1 + 400);
  *(*v1 + 416) = a1;

  return _swift_task_switch(sub_100355B9C, 0, 0);
}

uint64_t sub_100355B9C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v113 = v3;
  v4 = v3[36];
  v5 = v3[25];
  if (!*(v5 + v4))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v3[15] = v3[48];
  v6 = v3[45];
  v3[16] = v3[49];

  v115._countAndFlagsBits = 45;
  v115._object = 0xE100000000000000;
  sub_1007A23D4(v115);
  v116._countAndFlagsBits = 0x706D61732D6E6F6ELL;
  v116._object = 0xEA0000000000656CLL;
  sub_1007A23D4(v116);
  v7 = v3[15];
  v8 = v3[16];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v112 = v6;
  sub_1002F5624(0, v7, v8, isUniquelyReferenced_nonNull_native);

  if (!*(v5 + v4))
  {
LABEL_74:
    __break(1u);
    return Manager.getProperties(propertyName:assetIDs:)(a1, a2, a3);
  }

  v10 = v112;
  v11 = v3[52];
  v12 = v3[49];
  v3[17] = v3[48];
  v3[18] = v12;

  v117._countAndFlagsBits = 45;
  v117._object = 0xE100000000000000;
  sub_1007A23D4(v117);
  v118._countAndFlagsBits = 0x656C706D6173;
  v118._object = 0xE600000000000000;
  sub_1007A23D4(v118);
  v13 = v3[17];
  v14 = v3[18];
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v10;
  sub_1002F5624(0, v13, v14, v15);
  v16 = v11;

  v17 = *(v11 + 16);
  a1 = v3[52];
  if (!v17)
  {
LABEL_47:

    v60 = v3[46];
    v59 = v3[47];
    v3[45] = v10;
    v61 = (v60 - 1) & v60;
    if (v61)
    {
      v62 = v3[44];
LABEL_53:
      v3[46] = v61;
      v3[47] = v59;
      v64 = v3[38];
      v65 = v3[25];
      v66 = (*(v62 + 48) + ((v59 << 10) | (16 * __clz(__rbit64(v61)))));
      v67 = *v66;
      v3[48] = *v66;
      v68 = v66[1];
      v3[49] = v68;
      v69 = *(v65 + v64);
      v3[50] = v69;

      v69;
      v70 = swift_task_alloc();
      v3[51] = v70;
      *v70 = v3;
      v70[1] = sub_100355A80;
      a1 = v67;
      a2 = v68;
      a3 = 0;

      return Manager.getProperties(propertyName:assetIDs:)(a1, a2, a3);
    }

    while (1)
    {
      v63 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      v62 = v3[44];
      if (v63 >= (((1 << *(v3 + 424)) + 63) >> 6))
      {
        v71 = v10;

        if (*(v10 + 16))
        {
          v72 = v3[25];
          v73 = OBJC_IVAR___BKEngagementManager_metadata;
          swift_beginAccess();
          v74 = *(v72 + v73);
          v75 = OBJC_IVAR___BKEngagementManagerMetadata_propertyCounts;
          swift_beginAccess();
          *(v74 + v75) = v71;
        }

        v76 = v3[34];
        v77 = v3[35];
        v78 = v3[31];
        v79 = v3[32];
        sub_10079AC84();
        (*(v79 + 16))(v76, v77, v78);
        v80 = sub_10079ACC4();
        v81 = sub_1007A2994();
        v82 = os_log_type_enabled(v80, v81);
        v83 = v3[34];
        if (v82)
        {
          v85 = v3[32];
          v84 = v3[33];
          v86 = v3[31];
          v87 = swift_slowAlloc();
          *v87 = 134217984;
          sub_100796BA4();
          sub_100796B44();
          v89 = v88;
          v90 = *(v85 + 8);
          v90(v84, v86);
          sub_100796B44();
          v92 = v91;
          v90(v83, v86);
          *(v87 + 4) = v89 - v92;
          _os_log_impl(&_mh_execute_header, v80, v81, "Time to calculate engagement manager property metadata %fs", v87, 0xCu);
        }

        else
        {
          v94 = v3[31];
          v93 = v3[32];

          v90 = *(v93 + 8);
          v90(v83, v94);
        }

        v95 = v3[35];
        v96 = v3[31];
        (*(v3[27] + 8))(v3[29], v3[26]);
        v90(v95, v96);

        v97 = v3[1];

        return v97();
      }

      v61 = *(v62 + 8 * v63 + 56);
      ++v59;
      if (v61)
      {
        v59 = v63;
        goto LABEL_53;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v18 = 0;
  v19 = (a1 + 72);
  v110 = v11;
  v111 = *(v11 + 16);
  v105 = v3;
  while (1)
  {
    if (v18 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_68;
    }

    if (*v19 == 2)
    {
      break;
    }

LABEL_7:
    ++v18;
    v19 += 48;
    if (v17 == v18)
    {
      goto LABEL_47;
    }
  }

  v21 = *(v19 - 5);
  v20 = *(v19 - 4);
  v23 = *(v19 - 3);
  v22 = *(v19 - 2);
  v24 = *(v19 - 1);
  sub_10035A334(v21, v20, v23, v22, v24, 2);

  if (!*(v24 + 16) || (v25 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000), v16 = v110, (v26 & 1) == 0))
  {
    sub_10035A3A8(v21, v20, v23, v22, v24, 2);

LABEL_6:
    v17 = v111;
    goto LABEL_7;
  }

  sub_100007484(*(v24 + 56) + 32 * v25, (v3 + 2));
  sub_1001F1160(&qword_100ADD660, &qword_10081CA28);
  sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_10035A3A8(v21, v20, v23, v22, v24, 2);
LABEL_46:
    v16 = v110;
    goto LABEL_6;
  }

  v106 = v10;
  v27 = v3[23];
  sub_10079AC84();

  v28 = v27;
  v29 = sub_10079ACC4();
  v30 = sub_1007A29A4();

  v107 = v28;

  v103 = v30;
  log = v29;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = v105[48];
    v31 = v105[49];
    v100 = v105[27];
    v101 = v105[26];
    v102 = v105[30];
    v33 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v33 = 136315650;
    *(v33 + 4) = sub_1000070F4(v32, v31, &v112);
    *(v33 + 12) = 2080;
    if (v20)
    {
      v34 = v21;
    }

    else
    {
      v34 = 0x3E6C6C756E3CLL;
    }

    if (v20)
    {
      v35 = v20;
    }

    else
    {
      v35 = 0xE600000000000000;
    }

    v36 = sub_1000070F4(v34, v35, &v112);

    *(v33 + 14) = v36;
    *(v33 + 22) = 2112;
    *(v33 + 24) = v107;
    *v99 = v107;
    v37 = v107;
    _os_log_impl(&_mh_execute_header, log, v103, "property %s identifier %s isSample=%@", v33, 0x20u);
    sub_100007840(v99, &unk_100AD9480, &qword_1008113B0);

    swift_arrayDestroy();

    a1 = (*(v100 + 8))(v102, v101);
    v3 = v105;
  }

  else
  {
    v3 = v105;
    v104 = v105[30];
    v38 = v105[26];
    v39 = v105[27];

    a1 = (*(v39 + 8))(v104, v38);
  }

  if (!*(v3[25] + v3[36]))
  {
    goto LABEL_72;
  }

  v40 = v3[49];
  loga = v3[48];
  sub_10035A3A8(v21, v20, v23, v22, v24, 2);

  v41 = [v107 BOOLValue];
  v3[19] = loga;
  v3[20] = v40;

  v119._countAndFlagsBits = 45;
  v119._object = 0xE100000000000000;
  sub_1007A23D4(v119);
  if (v41)
  {
    v42._countAndFlagsBits = 0x656C706D6173;
  }

  else
  {
    v42._countAndFlagsBits = 0x706D61732D6E6F6ELL;
  }

  if (v41)
  {
    v43 = 0xE600000000000000;
  }

  else
  {
    v43 = 0xEA0000000000656CLL;
  }

  v42._object = v43;
  sub_1007A23D4(v42);

  v45 = v3[19];
  v44 = v3[20];
  v46 = v106[2];
  if (v46)
  {
    a1 = sub_10000E53C(v3[19], v3[20]);
    if (a2)
    {
      v46 = *(v106[7] + 8 * a1);
    }

    else
    {
      v46 = 0;
    }
  }

  v47 = v46 + 1;
  if (__OFADD__(v46, 1))
  {
    goto LABEL_69;
  }

  v48 = swift_isUniquelyReferenced_nonNull_native();
  v3[24] = v106;
  a1 = sub_10000E53C(v45, v44);
  v49 = v106[2];
  v50 = (a2 & 1) == 0;
  v51 = __OFADD__(v49, v50);
  v52 = v49 + v50;
  if (v51)
  {
    goto LABEL_70;
  }

  v53 = a2;
  if (v106[3] >= v52)
  {
    if ((v48 & 1) == 0)
    {
      v55 = a1;
      sub_1002F15B4();
      a1 = v55;
      v54 = v3[24];
      if (v53)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    }

LABEL_40:
    v54 = v3[24];
    if (v53)
    {
LABEL_41:
      *(v54[7] + 8 * a1) = v47;

      v10 = v54;
LABEL_45:

      goto LABEL_46;
    }

LABEL_43:
    v54[(a1 >> 6) + 8] |= 1 << a1;
    v56 = (v54[6] + 16 * a1);
    *v56 = v45;
    v56[1] = v44;
    *(v54[7] + 8 * a1) = v47;
    v57 = v54[2];
    v51 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v51)
    {
      goto LABEL_71;
    }

    v10 = v54;
    v54[2] = v58;
    goto LABEL_45;
  }

  sub_1003D4D6C(v52, v48);
  a1 = sub_10000E53C(v45, v44);
  if ((v53 & 1) == (a2 & 1))
  {
    goto LABEL_40;
  }

  return sub_1007A3B24();
}

uint64_t sub_10035668C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);

  *(v0 + 168) = v1;
  sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
  sub_10000A7C4(0, &qword_100ADA6D0, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = *(v0 + 176);
    sub_10079AC84();
    v5 = v4;
    v6 = sub_10079ACC4();
    v7 = sub_1007A29B4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error gathering engagement analytics metadata %@", v8, 0xCu);
      sub_100007840(v9, &unk_100AD9480, &qword_1008113B0);
    }

    else
    {
      v10 = v6;
      v6 = v5;
    }

    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v13 = *(v0 + 208);

    (*(v12 + 8))(v11, v13);

    v17 = *(v0 + 200);
    v18 = *(v17 + *(v0 + 288));
    if (!v18)
    {
      __break(1u);
      return Manager.getProperties(propertyName:assetIDs:)(v14, v15, v16);
    }

    v19 = *(v18 + OBJC_IVAR___BKEngagementManagerAnalyticsHelper_sampleCapableProperties);
    *(v0 + 352) = v19;
    v20 = *(v19 + 32);
    *(v0 + 424) = v20;
    v21 = -1;
    v22 = -1 << v20;
    if (-(-1 << v20) < 64)
    {
      v21 = ~(-1 << -v22);
    }

    v23 = v21 & *(v19 + 56);
    *(v0 + 360) = _swiftEmptyDictionarySingleton;
    swift_bridgeObjectRetain_n();
    if (v23)
    {
      v24 = 0;
LABEL_14:
      *(v0 + 368) = v23;
      *(v0 + 376) = v24;
      v26 = *(v0 + 304);
      v27 = (*(v19 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v23)))));
      v28 = *v27;
      *(v0 + 384) = *v27;
      v29 = v27[1];
      *(v0 + 392) = v29;
      v30 = *(v17 + v26);
      *(v0 + 400) = v30;

      v30;
      v31 = swift_task_alloc();
      *(v0 + 408) = v31;
      *v31 = v0;
      v31[1] = sub_100355A80;
      v14 = v28;
      v15 = v29;
      v16 = 0;

      return Manager.getProperties(propertyName:assetIDs:)(v14, v15, v16);
    }

    v25 = 0;
    while (((63 - v22) >> 6) - 1 != v25)
    {
      v24 = v25 + 1;
      v23 = *(v19 + 8 * v25++ + 64);
      if (v23)
      {
        goto LABEL_14;
      }
    }

    if (_swiftEmptyDictionarySingleton[2])
    {
      v32 = *(v0 + 200);
      v33 = OBJC_IVAR___BKEngagementManager_metadata;
      swift_beginAccess();
      v34 = *(v32 + v33);
      v35 = OBJC_IVAR___BKEngagementManagerMetadata_propertyCounts;
      swift_beginAccess();
      *(v34 + v35) = _swiftEmptyDictionarySingleton;
    }

    v36 = *(v0 + 272);
    v37 = *(v0 + 280);
    v38 = *(v0 + 248);
    v39 = *(v0 + 256);
    sub_10079AC84();
    (*(v39 + 16))(v36, v37, v38);
    v40 = sub_10079ACC4();
    v41 = sub_1007A2994();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 272);
    if (v42)
    {
      v45 = *(v0 + 256);
      v44 = *(v0 + 264);
      v46 = *(v0 + 248);
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      sub_100796BA4();
      sub_100796B44();
      v49 = v48;
      v50 = *(v45 + 8);
      v50(v44, v46);
      sub_100796B44();
      v52 = v51;
      v50(v43, v46);
      *(v47 + 4) = v49 - v52;
      _os_log_impl(&_mh_execute_header, v40, v41, "Time to calculate engagement manager property metadata %fs", v47, 0xCu);
    }

    else
    {
      v53 = *(v0 + 248);
      v54 = *(v0 + 256);

      v50 = *(v54 + 8);
      v50(v43, v53);
    }

    v55 = *(v0 + 280);
    v56 = *(v0 + 248);
    (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
    v50(v55, v56);

    v57 = *(v0 + 8);

    return v57();
  }

  return result;
}

double sub_100356C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[OBJC_IVAR___BKEngagementManager_updateMetadataGeneration];

    if (v9 != a2)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (!a2)
  {
LABEL_3:
    v10 = sub_1007A2744();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_1007A26F4();

    v11 = sub_1007A26E4();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = a1;
    sub_100345AA0(0, 0, v6, &unk_10081CA58, v12);
  }

  return result;
}

uint64_t sub_100356DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1007A26F4();
  v4[7] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_100356E54, v6, v5);
}

uint64_t sub_100356E54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_100356F58;

    return sub_100355238();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100356F58()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100357098, v4, v3);
}

uint64_t sub_100357098()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100357268(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a1[5];
  v5 = a1[6];
  sub_10000E3E8(a1 + 2, v4);

  v6 = a3(v4, v5);

  return v6;
}

uint64_t sub_1003572D8()
{
  sub_1000074E0((v0 + 16));

  return swift_deallocClassInstance();
}

id sub_100357310()
{
  result = [*(*v0 + 16) dataType];
  if (result)
  {
    v2 = result;
    v3 = sub_1007A2254();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100357374()
{
  v1 = [*(*v0 + 16) historyToken];

  return v1;
}

void *sub_100357400(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_100357EC8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_100357490(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10078598C(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1003574FC(v4);
  *a1 = v2;
}

void sub_1003574FC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1007A3A64(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1007A2634();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1003576C4(v7, v8, a1, v4);
      v6[2] = 0;

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
    sub_1003575F4(0, v2, 1, a1);
  }
}

uint64_t sub_1003575F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1007A3AB4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1003576C4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_100784A7C(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100357CA0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_1007A3AB4();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_1007A3AB4()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10066B274(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_10066B274((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_100357CA0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100784A7C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_1007849F0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_1007A3AB4() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_100357CA0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1007A3AB4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1007A3AB4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_100357EC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v25 = a3;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = (a4)(v24);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        sub_10062642C(a1, a2, v22, v19);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_10035803C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100358130;

  return v5(v2 + 32);
}

uint64_t sub_100358130()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10035824C(uint64_t a1)
{
  v3 = *(sub_100796AD4() - 8);
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
  v11[1] = sub_100009A34;

  return sub_10034B03C(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

void sub_1003583B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() defaultBag];
  v6 = [objc_allocWithZone(AMSEngagement) initWithBag:v5];

  v7 = objc_allocWithZone(AMSEngagementMessageEvent);
  v8 = sub_1007A2214();
  isa = sub_1007A2824().super.isa;
  v10 = [v7 initWithServiceType:v8 placements:isa];

  v11 = [v6 enqueueMessageEvent:v10];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v14[4] = sub_100359B58;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1002332B0;
  v14[3] = &unk_100A16BA0;
  v13 = _Block_copy(v14);

  [v11 addFinishBlock:v13];
  _Block_release(v13);
}

double _s5Books17EngagementManagerC19fetchDialogRequests3for10completionyShySSG_ySDySSSo16AMSDialogRequestCG_s5Error_pSgtcSgtF_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return result;
  }

  v4 = a2;
  v6 = objc_opt_self();

  v7 = [v6 standardUserDefaults];
  v8 = sub_1007A2214();
  v9 = [v7 BOOLForKey:v8];

  if (v9)
  {
    if (qword_100AD1B10 == -1)
    {
LABEL_4:
      v10 = swift_allocObject();
      *(v10 + 16) = v4;
      *(v10 + 24) = a3;

      _s5Books23BKMessagesDebugProviderC19fetchDialogRequests3for10completionyShySSG_ySDySSSo16AMSDialogRequestCG_s5Error_pSgtcSgtF_0(a1, sub_100359B30, v10);
      sub_100007020(v4, a3);

      return result;
    }

LABEL_43:
    swift_once();
    goto LABEL_4;
  }

  v60 = v4;
  v61 = a3;
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;

  if (v13 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    v62 = v59;
    v63 = v14;
    __chkstk_darwin(isStackAllocationSafe);
    v17 = v59 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v17, v15);
    v64 = 0;
    v18 = 0;
    v4 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    a3 = v20 & *(a1 + 56);
    v21 = (v19 + 63) >> 6;
    while (a3)
    {
      v22 = __clz(__rbit64(a3));
      a3 &= a3 - 1;
LABEL_18:
      v25 = v22 | (v18 << 6);
      v26 = (*(a1 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];

      v29._rawValue = &off_100A0CAD8;
      v66._countAndFlagsBits = v27;
      v66._object = v28;
      v30 = sub_1007A3964(v29, v66);

      if (v30 <= 2)
      {
        *&v17[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v25;
        v31 = __OFADD__(v64++, 1);
        if (v31)
        {
          __break(1u);
LABEL_22:
          v32 = sub_10062642C(v17, v63, v64, a1);
          goto LABEL_23;
        }
      }
    }

    v23 = v18;
    while (1)
    {
      v18 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v18 >= v21)
      {
        goto LABEL_22;
      }

      v24 = *(v4 + 8 * v18);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        a3 = (v24 - 1) & v24;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v57 = swift_slowAlloc();
  v32 = sub_100357400(v57, v14, a1, sub_100662634);

LABEL_23:
  v33 = *(a1 + 32);
  a3 = v33 & 0x3F;
  v34 = ((1 << v33) + 63) >> 6;
  v35 = 8 * v34;

  if (a3 <= 0xD || (v36 = swift_stdlib_isStackAllocationSafe(), (v36 & 1) != 0))
  {
    v62 = v34;
    v63 = v32;
    v59[1] = 0;
    v59[2] = v59;
    __chkstk_darwin(v36);
    v37 = v59 - ((v35 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v35);
    v64 = 0;
    v38 = 0;
    v4 = a1 + 56;
    v39 = 1 << *(a1 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(a1 + 56);
    v42 = (v39 + 63) >> 6;
    while (v41)
    {
      v43 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
LABEL_34:
      a3 = v43 | (v38 << 6);
      v46 = (*(a1 + 48) + 16 * a3);
      v48 = *v46;
      v47 = v46[1];

      v49._rawValue = &off_100A0CB40;
      v67._countAndFlagsBits = v48;
      v67._object = v47;
      v50 = sub_1007A3964(v49, v67);

      if (v50 >= 3)
      {
        *&v37[(a3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a3;
        v31 = __OFADD__(v64++, 1);
        if (v31)
        {
          __break(1u);
LABEL_38:
          v51 = sub_10062642C(v37, v62, v64, a1);
          v32 = v63;
          goto LABEL_39;
        }
      }
    }

    v44 = v38;
    while (1)
    {
      v38 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v38 >= v42)
      {
        goto LABEL_38;
      }

      v45 = *(v4 + 8 * v38);
      ++v44;
      if (v45)
      {
        v43 = __clz(__rbit64(v45));
        v41 = (v45 - 1) & v45;
        goto LABEL_34;
      }
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v58 = swift_slowAlloc();
  v51 = sub_100357400(v58, v34, a1, sub_100662694);

LABEL_39:
  sub_1006626FC(v32);
  v53 = v52;
  v54 = swift_allocObject();
  v56 = v60;
  v55 = v61;
  v54[2] = v53;
  v54[3] = v56;
  v54[4] = v55;
  sub_1000260E8(v56, v55);
  sub_1003583B0(v51, sub_100359B24, v54);
  sub_100007020(v56, v55);

  return result;
}

void sub_100358B8C(void *a1)
{
  v3 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v3 - 8);
  v5 = &v60 - v4;
  v6 = sub_100796AD4();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100796BB4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v66 = v7;
    v62 = v5;
    v67 = a1;
    v14 = [v67 storeID];
    if (v14)
    {
      v15 = v14;
      v16 = [v67 purchaseResponseItems];
      v61 = v1;
      v64 = v11;
      v65 = v10;
      if (v16)
      {
        v17 = v16;
        sub_10000A7C4(0, &qword_100ADD580, BLPurchaseResponseItem_ptr);
        v18 = sub_1007A25E4();

        if (v18 >> 62)
        {
          if (sub_1007A38D4())
          {
            goto LABEL_6;
          }
        }

        else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_6:
          if ((v18 & 0xC000000000000001) != 0)
          {
            v19 = sub_1007A3784();
          }

          else
          {
            if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_57;
            }

            v19 = *(v18 + 32);
          }

          v20 = v19;

          LODWORD(v63) = [v20 isPurchaseRedownload];

LABEL_16:
          v22 = 0x6F6F626F69647561;
          v23 = [v67 metadata];
          if (v23)
          {
            v24 = v23;
            v25 = sub_1007A2044();

            *&v72 = 0x7473696C79616C70;
            *(&v72 + 1) = 0xEA00000000006449;
            sub_1007A36B4();
            if (*(v25 + 16))
            {
              v26 = sub_10000E2A4(v68);
              if (v27)
              {
                sub_100007484(*(v25 + 56) + 32 * v26, &v74);
                sub_10002899C(v68);

                if (*(&v75 + 1))
                {
                  sub_100007840(&v74, &unk_100AD5B40, &unk_100811300);
                  v28 = 0xE90000000000006BLL;
                  v29 = v67;
                  goto LABEL_26;
                }

LABEL_23:
                sub_100007840(&v74, &unk_100AD5B40, &unk_100811300);
                v30 = objc_opt_self();
                v31 = [v67 purchaseParameters];
                LODWORD(v30) = [v30 isAudioBookFromBuyParameters:v31];

                v29 = v67;
                if (v30)
                {
                  v28 = 0xE90000000000006BLL;
                }

                else
                {
                  v22 = 1802465122;
                  v28 = 0xE400000000000000;
                }

LABEL_26:
                v32 = [v29 metadata];
                if (v32)
                {
                  v33 = v32;
                  v34 = sub_1007A2044();

                  *&v74 = 0x6449747369747261;
                  *(&v74 + 1) = 0xE800000000000000;
                  sub_1007A36B4();
                  if (*(v34 + 16))
                  {
                    v35 = sub_10000E2A4(v68);
                    if (v36)
                    {
                      sub_100007484(*(v34 + 56) + 32 * v35, &v74);
                      sub_10002899C(v68);

                      goto LABEL_32;
                    }
                  }

                  sub_10002899C(v68);
                }

                v74 = 0u;
                v75 = 0u;
LABEL_32:
                v37 = [v67 metadata];
                if (v37)
                {
                  v38 = v37;
                  v39 = sub_1007A2044();

                  strcpy(&v72, "seriesAdamId");
                  BYTE13(v72) = 0;
                  HIWORD(v72) = -5120;
                  sub_1007A36B4();
                  if (*(v39 + 16))
                  {
                    v40 = sub_10000E2A4(v68);
                    v41 = v63;
                    if (v42)
                    {
                      sub_100007484(*(v39 + 56) + 32 * v40, &v72);
                      sub_10002899C(v68);
                    }

                    else
                    {

                      sub_10002899C(v68);
                      v72 = 0u;
                      v73 = 0u;
                    }

LABEL_39:
                    v43 = objc_opt_self();
                    v44 = [v67 purchaseParameters];
                    v45 = [v43 isPreOrderFromBuyParameters:v44];

                    sub_100796BA4();
                    if (v41)
                    {

LABEL_53:

                      (*(v64 + 8))(v13, v65);
                      sub_100007840(&v72, &unk_100AD5B40, &unk_100811300);
                      sub_100007840(&v74, &unk_100AD5B40, &unk_100811300);
                      return;
                    }

                    sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_100815060;
                    *(inited + 32) = 0x49746375646F7270;
                    *(inited + 40) = 0xE900000000000064;
                    v47 = sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
                    *(inited + 48) = v15;
                    *(inited + 72) = v47;
                    *(inited + 80) = 1702125924;
                    *(inited + 88) = 0xE400000000000000;
                    v63 = v15;
                    sub_1007963F4();
                    *(inited + 120) = &type metadata for String;
                    sub_1000228AC(&qword_100ADD570, 255, &type metadata accessor for Date.ISO8601FormatStyle, &protocol conformance descriptor for Date.ISO8601FormatStyle);
                    sub_100796B94();
                    (*(v66 + 8))(v9, v6);
                    *(inited + 128) = 0x54746375646F7270;
                    *(inited + 136) = 0xEB00000000657079;
                    *(inited + 144) = v60;
                    *(inited + 152) = v28;
                    *(inited + 168) = &type metadata for String;
                    *(inited + 176) = 0x64726F6572507369;
                    *(inited + 184) = 0xEA00000000007265;
                    *(inited + 216) = &type metadata for Bool;
                    *(inited + 192) = v45;
                    v17 = sub_100019158(inited);
                    swift_setDeallocating();
                    sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
                    swift_arrayDestroy();
                    sub_1000077D8(&v74, &v70, &unk_100AD5B40, &unk_100811300);
                    if (v71)
                    {
                      sub_1000076D4(&v70, v68);
                      sub_100007484(v68, &v70);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v69 = v17;
                      sub_1002F4B78(&v70, 0x6449747369747261, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
                      sub_1000074E0(v68);
                      v17 = v69;
                    }

                    else
                    {
                      sub_100007840(&v70, &unk_100AD5B40, &unk_100811300);
                    }

                    v11 = v61;
                    sub_1000077D8(&v72, &v70, &unk_100AD5B40, &unk_100811300);
                    if (v71)
                    {
                      sub_1000076D4(&v70, v68);
                      sub_100007484(v68, &v70);
                      v49 = swift_isUniquelyReferenced_nonNull_native();
                      v69 = v17;
                      sub_1002F4B78(&v70, 0x6449736569726573, 0xE800000000000000, v49);
                      sub_1000074E0(v68);
                      v17 = v69;
                    }

                    else
                    {
                      sub_100007840(&v70, &unk_100AD5B40, &unk_100811300);
                    }

                    v50 = *(v11 + OBJC_IVAR___BKEngagementManager_manager);
                    v51 = sub_1007999E4();

                    v52 = v63;
                    if (!v51)
                    {
LABEL_52:
                      v59 = *(v11 + OBJC_IVAR___BKEngagementManager_eventController);
                      sub_10079E994();

                      goto LABEL_53;
                    }

                    type metadata accessor for SessionDonor(0);
                    v53 = swift_dynamicCastClass();
                    if (!v53)
                    {
LABEL_51:
                      swift_unknownObjectRelease();
                      goto LABEL_52;
                    }

                    v6 = v53;
                    v54 = sub_1007A2744();
                    v15 = v62;
                    (*(*(v54 - 8) + 56))(v62, 1, 1, v54);
                    v55 = qword_100AD1478;
                    swift_unknownObjectRetain();

                    if (v55 == -1)
                    {
LABEL_50:
                      v56 = qword_100ADE1B0;
                      v57 = sub_1000228AC(&qword_100ADD578, 255, type metadata accessor for PropertyValueActor.ActorType, &unk_10081E254);
                      v58 = swift_allocObject();
                      v58[2] = v56;
                      v58[3] = v57;
                      v58[4] = v6;
                      v58[5] = v17;

                      sub_1003457A0(0, 0, v15, &unk_10081C980, v58);

                      [v6 propertyDidChange:v6 propertyConfiguration:*(v6 + OBJC_IVAR___BKSessionDonor_sessionConfiguration)];
                      v52 = v63;
                      goto LABEL_51;
                    }

LABEL_57:
                    swift_once();
                    goto LABEL_50;
                  }

                  sub_10002899C(v68);
                }

                v72 = 0u;
                v73 = 0u;
                v41 = v63;
                goto LABEL_39;
              }
            }

            sub_10002899C(v68);
          }

          v74 = 0u;
          v75 = 0u;
          goto LABEL_23;
        }
      }

      LODWORD(v63) = 0;
      goto LABEL_16;
    }

    v21 = v67;
  }
}

void sub_100359720(uint64_t a1)
{
  sub_10001399C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100359830(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009A34;

  return sub_10035803C(a1, v4);
}

uint64_t sub_1003598E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009A34;

  return sub_10035803C(a1, v4);
}

uint64_t sub_1003599BC()
{

  return swift_deallocObject();
}

uint64_t sub_100359A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002812C;

  return sub_100375C74(a1, v4, v5, v7, v6);
}

uint64_t sub_100359C10(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100009A34;

  return sub_10034BF14(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_100359CEC(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100359CF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100796544() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_100796AD4() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = *(v1 + v10);
  v15 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100009A34;

  return sub_10034CAA4(a1, v11, v12, v1 + v6, v13, v1 + v9, v14, v15);
}

id sub_100359EBC(void *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(sub_100796AD4() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 16);
  v11 = *(v3 + v9);
  v12 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10034DB0C(a1, a2, a3, v10, v3 + v8, v11, v12);
}

void sub_100359F80()
{
  v1 = *(sub_100796544() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1001F1160(&qword_100ADD5B8, &unk_10081C9E0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v3);
  v10 = *(v0 + v4);
  v11 = *(v0 + v7);
  v12 = *(v0 + v8);
  v13 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10034F3A8(v0 + v2, v9, v10, v0 + v6, v11, v12, v13);
}

uint64_t sub_10035A0B8(int a1, char a2, uint64_t a3)
{
  v7 = *(sub_1001F1160(&qword_100ADD5B8, &unk_10081C9E0) - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v12 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100350818(a1, a2, a3, v9, v10, v11, v3 + v8, v12);
}

void sub_10035A194(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_10035A1A8()
{
  result = qword_100ADD680;
  if (!qword_100ADD680)
  {
    sub_10000A7C4(255, &qword_100AD3C58, BCMutableCloudData_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD680);
  }

  return result;
}

uint64_t sub_10035A238(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_10035A280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_100356DBC(a1, v4, v5, v6);
}

double sub_10035A334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6 != 2)
    {
      return result;
    }
  }

  return result;
}

double sub_10035A3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6 != 2)
    {
      return result;
    }
  }

  return result;
}

double sub_10035A44C@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a1);

  return result;
}

uint64_t sub_10035A4C4()
{
  v1 = OBJC_IVAR____TtC5Books16HistoryViewModel__history;
  v2 = sub_1001F1160(&qword_100AF2830, &qword_10081CB08);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HistoryViewModel(uint64_t a1)
{
  result = qword_100ADD7A0;
  if (!qword_100ADD7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10035A5C0(uint64_t a1)
{
  sub_10035A650(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10035A650(uint64_t a1)
{
  if (!qword_100ADD7B0)
  {
    type metadata accessor for HistoryModel(255);
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_100ADD7B0);
    }
  }
}

uint64_t sub_10035A6A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HistoryViewModel(0);
  result = sub_10079B8B4();
  *a2 = result;
  return result;
}

double sub_10035A6E8@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a2);

  return result;
}

uint64_t sub_10035A764(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for HistoryModel(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_10035A860(a1, &v10 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10035A860(v8, v5);

  sub_10079B9B4();
  return sub_10035A8C4(v8);
}

uint64_t sub_10035A860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035A8C4(uint64_t a1)
{
  v2 = type metadata accessor for HistoryModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10035A94C()
{

  swift_unknownObjectRelease();
  sub_10002B130(v0 + 80);

  return swift_deallocClassInstance();
}

__n128 sub_10035A9E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10035A9F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10035AA3C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *sub_10035AA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = 0;
  swift_unknownObjectWeakInit();
  v8 = sub_10079ECA4();
  v10 = v9;
  v11 = sub_10079EC64();
  v13 = v12;
  v14 = sub_10079EC74();
  v5[2] = v8;
  v5[3] = v10;
  v5[4] = v11;
  v5[5] = v13;
  v5[6] = v14;
  v5[7] = v15;
  v5[8] = a2;
  v5[9] = a3;
  return v5;
}

void *sub_10035AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SampleHeaderDataManager();
  swift_allocObject();
  return sub_10035AA98(a1, a2, a3, a4, a5);
}

uint64_t type metadata accessor for ThemePreviewWebView(uint64_t a1)
{
  result = qword_100ADD9E8;
  if (!qword_100ADD9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10035AC28(uint64_t a1)
{
  type metadata accessor for BE_WKPaginationMode(319);
  if (v1 <= 0x3F)
  {
    sub_100308DA8();
    if (v2 <= 0x3F)
    {
      sub_10035AD20(319);
      if (v3 <= 0x3F)
      {
        sub_10079EF54();
        if (v4 <= 0x3F)
        {
          sub_10035AD78();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10035AD20(uint64_t a1)
{
  if (!qword_100ADDA00)
  {
    sub_1007A07E4();
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100ADDA00);
    }
  }
}

unint64_t sub_10035AD78()
{
  result = qword_100ADDA08;
  if (!qword_100ADDA08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADDA08);
  }

  return result;
}

id sub_10035ADC4(void *a1)
{
  v2 = v1;
  v4 = sub_1007A07D4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 scrollView];
  [v9 be_configureForBooks];

  sub_10035B028();
  v10 = sub_1007A2214();

  [a1 setBe_textZoomFactor:*(v2 + 24)];
  v11 = *(v2 + 48);
  if (*(v2 + 56))
  {
    [*(v2 + *(type metadata accessor for ThemePreviewWebView(0) + 48)) useNewTextStyling];
    sub_1007A07C4();
    v12 = sub_1007A0784();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_opt_self();
  type metadata accessor for ThemePreviewWebView(0);
  sub_10079ED34();
  v14 = sub_1007A2214();

  [v13 updateThemePreviewWebView:a1 styleManager:v11 stylesheetSet:v12 fontFamily:v14];

  sub_1007A3424();
  [a1 setBe_paginationMode:*(v2 + 40)];
  return [a1 setBe_gapBetweenPages:10.0];
}

uint64_t sub_10035B028()
{
  sub_1007A3744(381);
  v29._countAndFlagsBits = 0xD0000000000000F1;
  v29._object = 0x80000001008CC970;
  sub_1007A23D4(v29);
  if (*(v0 + 16))
  {
    v1._countAndFlagsBits = 0x6C61636974726576;
  }

  else
  {
    v1._countAndFlagsBits = 0x746E6F7A69726F68;
  }

  if (*(v0 + 16))
  {
    v2 = 0xEB000000006C722DLL;
  }

  else
  {
    v2 = 0xED000062742D6C61;
  }

  v1._object = v2;
  sub_1007A23D4(v1);

  v30._countAndFlagsBits = 0xD000000000000041;
  v30._object = 0x80000001008CCA70;
  sub_1007A23D4(v30);
  v3 = *(v0 + *(type metadata accessor for ThemePreviewWebView(0) + 48));
  v4 = [v3 overrideFontFamily];
  v5 = v4 == 0;
  if (v4)
  {
    v6._countAndFlagsBits = 0xD00000000000001DLL;
  }

  else
  {
    v6._countAndFlagsBits = 0;
  }

  if (v5)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x80000001008CCB90;
  }

  v6._object = v7;
  sub_1007A23D4(v6);

  v31._countAndFlagsBits = 0x202020200ALL;
  v31._object = 0xE500000000000000;
  sub_1007A23D4(v31);
  v8 = [v3 overrideFontWeight];
  v9 = v8 == 0;
  if (v8)
  {
    v10._countAndFlagsBits = 0xD00000000000001DLL;
  }

  else
  {
    v10._countAndFlagsBits = 0;
  }

  if (v9)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0x80000001008CCB70;
  }

  v10._object = v11;
  sub_1007A23D4(v10);

  v32._countAndFlagsBits = 0x202020200ALL;
  v32._object = 0xE500000000000000;
  sub_1007A23D4(v32);
  v12 = [v3 overrideLineHeight];
  v13 = v12 == 0;
  if (v12)
  {
    v14._countAndFlagsBits = 0xD00000000000001DLL;
  }

  else
  {
    v14._countAndFlagsBits = 0;
  }

  if (v13)
  {
    v15 = 0xE000000000000000;
  }

  else
  {
    v15 = 0x80000001008CCB50;
  }

  v14._object = v15;
  sub_1007A23D4(v14);

  v33._countAndFlagsBits = 0x202020200ALL;
  v33._object = 0xE500000000000000;
  sub_1007A23D4(v33);
  v16 = [v3 overrideLetterSpacing];
  v17 = v16 == 0;
  if (v16)
  {
    v18._countAndFlagsBits = 0xD000000000000020;
  }

  else
  {
    v18._countAndFlagsBits = 0;
  }

  if (v17)
  {
    v19 = 0xE000000000000000;
  }

  else
  {
    v19 = 0x80000001008CCB20;
  }

  v18._object = v19;
  sub_1007A23D4(v18);

  v34._countAndFlagsBits = 0x202020200ALL;
  v34._object = 0xE500000000000000;
  sub_1007A23D4(v34);
  v20 = [v3 overrideWordSpacing];
  v21 = v20 == 0;
  if (v20)
  {
    v22._countAndFlagsBits = 0xD00000000000001ELL;
  }

  else
  {
    v22._countAndFlagsBits = 0;
  }

  if (v21)
  {
    v23 = 0xE000000000000000;
  }

  else
  {
    v23 = 0x80000001008CCB00;
  }

  v22._object = v23;
  sub_1007A23D4(v22);

  v35._countAndFlagsBits = 0x202020200ALL;
  v35._object = 0xE500000000000000;
  sub_1007A23D4(v35);
  v24 = [v3 overrideTextAlign];
  v25 = v24 == 0;
  if (v24)
  {
    v26._countAndFlagsBits = 0xD00000000000001CLL;
  }

  else
  {
    v26._countAndFlagsBits = 0;
  }

  if (v25)
  {
    v27 = 0xE000000000000000;
  }

  else
  {
    v27 = 0x80000001008CCAE0;
  }

  v26._object = v27;
  sub_1007A23D4(v26);

  v36._countAndFlagsBits = 0x200A3E202020200ALL;
  v36._object = 0xEE003E703C202020;
  sub_1007A23D4(v36);
  sub_1007A23D4(*v0);
  v37._countAndFlagsBits = 0xD000000000000014;
  v37._object = 0x80000001008CCAC0;
  sub_1007A23D4(v37);
  return 0;
}

id sub_10035B36C()
{
  v0 = [objc_opt_self() viewConfiguredForThemePreview];

  return v0;
}

uint64_t sub_10035B3BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, id a5)
{
  if ((a2 & 1) == 0)
  {
    [a5 setBe_pageLength:{a3, a4, ceil((*&a1 + (*(v5 + 32) + -1.0) * -10.0) / *(v5 + 32))}];
  }

  return 0;
}

uint64_t sub_10035B42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10035B5A4(&unk_100ADDA60, &unk_10081CC60);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10035B4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10035B5A4(&unk_100ADDA60, &unk_10081CC60);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10035B52C(uint64_t a1)
{
  sub_10035B5A4(&unk_100ADDA60, &unk_10081CC60);
  sub_10079CC64();
  __break(1u);
}

uint64_t sub_10035B5A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ThemePreviewWebView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10035B5E8(unint64_t a1, double a2)
{
  v3 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v4 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v3))
  {
    v5 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = sub_1007A3D34();
    v8 = sub_1000070F4(v6, v7, v18);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1000070F4(0xD00000000000001DLL, 0x80000001008CD1D0, v18);
    _os_log_impl(&_mh_execute_header, v4, v3, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (a1 >> 62)
  {
    if (sub_1007A38D4())
    {
      goto LABEL_7;
    }

    return _swiftEmptyArrayStorage;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_7:
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100811390;
  if (a1 >> 62)
  {

    sub_1001F1160(&qword_100ADDB58, &unk_10082D760);
    v13 = sub_1007A38C4();

    a1 = v13;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1007A3AD4();
    sub_1001F1160(&qword_100ADDB58, &unk_10082D760);
    if (!swift_dynamicCastMetatype())
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        v12 = v10 + 32;
        while (1)
        {
          v18[1] = &OBJC_PROTOCOL___CPListTemplateItem;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v12 += 8;
          if (!--v11)
          {
            goto LABEL_15;
          }
        }

        a1 = v10 | 1;
      }
    }
  }

LABEL_15:
  v14 = objc_allocWithZone(CPListSection);
  sub_100502464(a1);

  isa = sub_1007A25D4().super.isa;

  v16 = [v14 initWithItems:isa];

  *(v9 + 32) = v16;
  return v9;
}

id sub_10035B8E0(uint64_t a1, double a2)
{
  LOBYTE(v3) = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v4 = qword_100AE15E0;
    if (os_log_type_enabled(qword_100AE15E0, v3))
    {
      v5 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v5 = 136315394;
      swift_getObjectType();
      v6 = sub_1007A3D34();
      v8 = sub_1000070F4(v6, v7, aBlock);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_1000070F4(0xD000000000000022, 0x80000001008CD1A0, aBlock);
      _os_log_impl(&_mh_execute_header, v4, v3, "%s %s", v5, 0x16u);
      swift_arrayDestroy();
    }

    v57 = _swiftEmptyArrayStorage;
    v9 = OBJC_IVAR____TtC5Books20CarPlayAudiobookData_chapters;
    aBlock[0] = *(a1 + OBJC_IVAR____TtC5Books20CarPlayAudiobookData_chapters);
    sub_1001F1160(&qword_100ADDB60, &qword_10081CD98);
    sub_1003631CC();
    if ((sub_1007A28A4() & 1) == 0)
    {
      v42 = sub_1007A29B4();
      sub_10079AB44(v42, &_mh_execute_header, v4, "toc has no chapters!", 20, 2, _swiftEmptyArrayStorage);
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        v43 = _swiftEmptyArrayStorage;
        sub_1007A3944();
        goto LABEL_41;
      }

LABEL_47:
      sub_1001F1160(&qword_100ADDB58, &unk_10082D760);
      v43 = sub_1007A38C4();
      goto LABEL_41;
    }

    v10 = *(a1 + v9);
    if (!(v10 >> 62))
    {
      v3 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }

    v49 = sub_1007A38D4();
    if (v49 < 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    v3 = v49;
LABEL_7:
    v11 = OBJC_IVAR____TtC5Books20CarPlayAudiobookData_firstChapterIndex;
    v12 = *(a1 + OBJC_IVAR____TtC5Books20CarPlayAudiobookData_firstChapterIndex);
    v13 = [objc_opt_self() maximumItemCount];
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v14 = (v12 + v13);
    if (__CFADD__(v12, v13))
    {
      goto LABEL_49;
    }

    if (v14 >= v3)
    {
      v14 = v3;
    }

    v15 = v14 - 1;
    if (!v14)
    {
      goto LABEL_50;
    }

    v16 = *(a1 + v11);
    if (v15 < v16)
    {
      goto LABEL_51;
    }

    v55 = objc_opt_self();
    if ((v16 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  v50 = OBJC_IVAR____TtC5Books20CarPlayAudiobookData_sessionStartIndex;
  v51 = OBJC_IVAR____TtC5Books20CarPlayAudiobookData_currentIndex;
  v17 = v16 == *(a1 + OBJC_IVAR____TtC5Books20CarPlayAudiobookData_sessionStartIndex);
  v18 = v16 == *(a1 + OBJC_IVAR____TtC5Books20CarPlayAudiobookData_currentIndex);
  v53 = OBJC_IVAR____TtC5Books20CarPlayAudiobookData_playbackRate;
  v52 = v9;
  v54 = a1;
  while (1)
  {
    v3 = *(a1 + v9);
    if ((v3 & 0xC000000000000001) != 0)
    {

      v19 = sub_1007A3784();

      if (v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v16 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v19 = *(v3 + 8 * v16 + 32);
      swift_unknownObjectRetain();
      if (v17)
      {
LABEL_18:
        v21 = sub_10035E848(v20);
        goto LABEL_21;
      }
    }

    v21 = 0;
LABEL_21:
    [v19 duration];
    v23 = v22;
    v24 = *(a1 + v53);
    v25 = [v19 title];
    if (v25)
    {
      v26 = v25;
      sub_1007A2254();
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = [v55 stringWithDuration:v23 / v24];
    if (v29)
    {
      v30 = v29;
      sub_1007A2254();
      v32 = v31;

      if (v28)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v32 = 0;
      if (v28)
      {
LABEL_26:
        v33 = v21;
        v34 = sub_1007A2214();

        if (v32)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    v36 = v21;
    v34 = 0;
    if (v32)
    {
LABEL_27:
      v35 = sub_1007A2214();

      goto LABEL_31;
    }

LABEL_30:
    v35 = 0;
LABEL_31:
    v37 = [objc_allocWithZone(CPListItem) initWithText:v34 detailText:v35 image:0 accessoryImage:v21 accessoryType:0];

    [v37 setPlaying:v18];
    [v37 setPlayingIndicatorLocation:1];
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v16;
    aBlock[4] = sub_100363230;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10035C154;
    aBlock[3] = &unk_100A173D0;
    v40 = _Block_copy(aBlock);

    [v37 setHandler:v40];
    _Block_release(v40);
    v41 = v37;
    sub_1007A25C4();
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    v3 = &v57;
    sub_1007A2644();

    swift_unknownObjectRelease();
    a1 = v54;
    if (v15 == v16)
    {
      break;
    }

    ++v16;
    v9 = v52;
    v18 = v16 == *(v54 + v51);
    v17 = v16 == *(v54 + v50);
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }
  }

  v44 = v57;
  if (!(v57 >> 62))
  {

    sub_1007A3AD4();
    v43 = v44;
    goto LABEL_40;
  }

LABEL_52:

  sub_1001F1160(&qword_100ADDB58, &unk_10082D760);
  v43 = sub_1007A38C4();

LABEL_40:

LABEL_41:
  v45 = objc_allocWithZone(CPListSection);
  sub_100502464(v43);

  isa = sub_1007A25D4().super.isa;

  v47 = [v45 initWithItems:isa];

  return v47;
}

void sub_10035C01C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [*(*(*(Strong + OBJC_IVAR____TtC5Books16CarPlayPresenter_interactor) + OBJC_IVAR____TtC5Books17CarPlayInteractor_dataManager) + OBJC_IVAR____TtC5Books18CarPlayDataManager_player) playChapterAtIndex:a5];
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
      *(swift_allocObject() + 16) = v10;
      swift_unknownObjectRetain();
      sub_1007A2CD4();
      swift_unknownObjectRelease();
    }

    a2(v9);
  }
}

uint64_t sub_10035C154(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v6 = swift_unknownObjectRetain();
  v3(v6, sub_1002427EC, v5);

  return swift_unknownObjectRelease();
}

id sub_10035C204(unint64_t a1, float a2)
{
  *&v70 = sub_100796CF4();
  v4 = *(v70 - 8);
  __chkstk_darwin(v70);
  v6 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v66[-v8];
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v66[-v15];
  v17 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v18 = qword_100AE15E0;
  v19 = os_log_type_enabled(qword_100AE15E0, v17);
  v71 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v69 = v10;
    v21 = v20;
    v68 = swift_slowAlloc();
    aBlock = v68;
    *v21 = 136315394;
    swift_getObjectType();
    v22 = sub_1007A3D34();
    v24 = sub_1000070F4(v22, v23, &aBlock);
    v67 = v17;
    v25 = v16;
    v26 = v13;
    v27 = v11;
    v28 = v9;
    v29 = v4;
    v30 = v6;
    v31 = v24;

    *(v21 + 4) = v31;
    v6 = v30;
    v4 = v29;
    v9 = v28;
    v11 = v27;
    v13 = v26;
    v16 = v25;
    a1 = v71;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1000070F4(0xD000000000000019, 0x80000001008CD160, &aBlock);
    _os_log_impl(&_mh_execute_header, v18, v67, "%s %s", v21, 0x16u);
    swift_arrayDestroy();

    v10 = v69;
  }

  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v34 = v70;
  (*(v4 + 16))(v6, v9, v70);
  v35 = sub_1007A22D4(v13, 0, 0, v33, v6, "Narration Speeds title", 22, 2);
  v37 = v36;
  (*(v4 + 8))(v9, v34);
  result = (*(v11 + 8))(v16, v10);
  v78 = _swiftEmptyArrayStorage;
  v39 = a1;
  if (!(a1 >> 62))
  {
    v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_7;
    }

LABEL_21:
    v60 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_18:

      sub_1007A3AD4();
      v61 = v60;
LABEL_19:

      v62 = objc_allocWithZone(CPListSection);
      sub_100502464(v61);

      isa = sub_1007A25D4().super.isa;

      v64 = sub_1007A2214();

      v65 = [v62 initWithItems:isa header:v64 sectionIndexTitle:0];

      return v65;
    }

LABEL_22:

    sub_1001F1160(&qword_100ADDB58, &unk_10082D760);
    v61 = sub_1007A38C4();

    goto LABEL_19;
  }

  result = sub_1007A38D4();
  v39 = a1;
  v40 = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_7:
  if (v40 >= 1)
  {
    v68 = v35;
    v69 = v37;
    v41 = 0;
    v42 = v39 & 0xC000000000000001;
    v43 = a2;
    v70 = xmmword_10080B690;
    do
    {
      if (v42)
      {
        v44 = sub_1007A3784();
      }

      else
      {
        v44 = *(v39 + 8 * v41 + 32);
      }

      v45 = v44;
      sub_1001F1160(&unk_100AD5090, &unk_100815670);
      v46 = swift_allocObject();
      *(v46 + 16) = v70;
      [v45 floatValue];
      *(v46 + 56) = &type metadata for Float;
      *(v46 + 64) = &protocol witness table for Float;
      *(v46 + 32) = v47;
      aBlock = sub_1007A2284();
      v73 = v48;
      v79._countAndFlagsBits = 38851;
      v79._object = 0xA200000000000000;
      sub_1007A23D4(v79);
      v49 = objc_allocWithZone(CPListItem);
      v50 = sub_1007A2214();

      v51 = [v49 initWithText:v50 detailText:0];

      [v45 floatValue];
      if (vabdd_f64(v52, v43) < 0.00999999978)
      {
        v53 = sub_1007A2214();
        v54 = [objc_opt_self() systemImageNamed:v53];

        [v51 setAccessoryImage:v54];
      }

      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v45;
      v76 = sub_1003631BC;
      v77 = v56;
      aBlock = _NSConcreteStackBlock;
      v73 = 1107296256;
      v74 = sub_10035C154;
      v75 = &unk_100A17358;
      v57 = _Block_copy(&aBlock);
      v58 = v45;

      [v51 setHandler:v57];
      _Block_release(v57);
      v59 = v51;
      sub_1007A25C4();
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      ++v41;
      sub_1007A2644();

      v39 = v71;
    }

    while (v40 != v41);
    v60 = v78;
    if (!(v78 >> 62))
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void sub_10035CA34(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC5Books16CarPlayPresenter_interactor);
    v9 = Strong;
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = a5;
    swift_unknownObjectRetain_n();
    v11 = a5;
    sub_1007A2CD4();
    swift_unknownObjectRelease();

    a2(v12);
  }
}

id sub_10035CB38(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  LOBYTE(v5) = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v6 = qword_100AE15E0;
    v40 = a3;
    if (os_log_type_enabled(qword_100AE15E0, v5))
    {
      v7 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v7 = 136315394;
      swift_getObjectType();
      v8 = sub_1007A3D34();
      v10 = sub_1000070F4(v8, v9, &aBlock);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_1000070F4(0xD00000000000001ALL, 0x80000001008CD0D0, &aBlock);
      _os_log_impl(&_mh_execute_header, v6, v5, "%s %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    v47 = _swiftEmptyArrayStorage;
    if (!(a3 >> 62))
    {
      v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        break;
      }

      goto LABEL_6;
    }

    v11 = sub_1007A38D4();
    if (!v11)
    {
      break;
    }

LABEL_6:
    v12 = objc_opt_self();
    v13 = 0;
    v14 = a3 & 0xC000000000000001;
    v39 = a3 & 0xFFFFFFFFFFFFFF8;
    v15 = _swiftEmptyArrayStorage;
    while (v14)
    {
      v16 = sub_1007A3784();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_26;
      }

LABEL_13:
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = sub_100502150(v18);
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 1.0;
      }

      [v12 maximumImageSize];
      v21 = v19 * v20;
      [v12 maximumImageSize];
      v23 = sub_10035E39C(v16, v21, v19 * v22);
      if (v23)
      {
        v24 = v23;
        sub_1007A25C4();
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1007A2614();
        }

        sub_1007A2644();

        v15 = v47;
        a3 = v40;
      }

      if (v15 >> 62)
      {
        v5 = sub_1007A38D4();
      }

      else
      {
        v5 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_unknownObjectRelease();
      if (v5 != 8)
      {
        ++v13;
        if (v17 != v11)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    if (v13 >= *(v39 + 16))
    {
      goto LABEL_27;
    }

    v16 = *(a3 + 8 * v13 + 32);
    swift_unknownObjectRetain();
    v17 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_13;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

LABEL_30:
  v25 = objc_allocWithZone(CPListImageRowItem);
  v26 = a3;
  v27 = sub_1007A2214();
  sub_10000A7C4(0, &qword_100ADDB48, UIImage_ptr);
  isa = sub_1007A25D4().super.isa;

  v29 = [v25 initWithText:v27 images:isa];

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = v26;
  v31[4] = a1;
  v31[5] = a2;
  v45 = sub_100363150;
  v46 = v31;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_10035C154;
  v44 = &unk_100A17240;
  v32 = _Block_copy(&aBlock);

  [v29 setHandler:v32];
  _Block_release(v32);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v26;
  v45 = sub_1003631AC;
  v46 = v34;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_10035D270;
  v44 = &unk_100A17290;
  v35 = _Block_copy(&aBlock);

  [v29 setListImageRowHandler:v35];
  _Block_release(v35);
  return v29;
}

uint64_t sub_10035D0BC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1003629A8(a5, v8);
  }

  return a2();
}

void sub_10035D138(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if ((a6 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v12 = *(a6 + 8 * a2 + 32);
        swift_unknownObjectRetain();
LABEL_6:
        v13 = swift_allocObject();
        v13[2] = v11;
        v13[3] = a3;
        v13[4] = a4;
        swift_unknownObjectRetain();
        v14 = v11;

        sub_100307594(v12, sub_10036340C, v13, v15);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        return;
      }

      __break(1u);
      return;
    }

    v12 = sub_1007A3784();
    goto LABEL_6;
  }
}

void sub_10035D270(uint64_t a1, void *a2, int a3, void *aBlock)
{
  v5 = *(a1 + 32);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

id sub_10035D334(void *a1, char a2, void *a3, double a4)
{
  v7 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v8 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v7))
  {
    v9 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v9 = 136315394;
    swift_getObjectType();
    v10 = sub_1007A3D34();
    v12 = sub_1000070F4(v10, v11, v42);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1000070F4(0xD00000000000002DLL, 0x80000001008CCF70, v42);
    _os_log_impl(&_mh_execute_header, v8, v7, "%s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = sub_100502150(v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 1.0;
  }

  v15 = objc_opt_self();
  [v15 maximumImageSize];
  v17 = v14 * v16;
  [v15 maximumImageSize];
  v19 = sub_10035E39C(a1, v17, v14 * v18);
  sub_100361E90(a1, a2 & 1, a3, v20);
  if ([a1 isLocal])
  {
    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  v22 = [a1 title];
  v23 = objc_allocWithZone(CPListItem);
  v24 = v19;
  v25 = sub_1007A2214();

  v26 = [v23 initWithText:v22 detailText:v25 image:v24 accessoryImage:0 accessoryType:v21];

  [v26 setUserInfo:a1];
  v27 = [a1 readingProgress];
  if (v27)
  {
    v28 = v27;
    [v27 floatValue];
    v30 = v29;

    v31 = v30;
  }

  else
  {
    v31 = 0.0;
  }

  if (fabs(v31) >= 0.00999999978)
  {
    v32 = [a1 isFinished];
    v33 = 1.0;
    if ((v32 & 1) == 0)
    {
      [a3 floatValue];
      v33 = v34;
    }

    [v26 setPlaybackProgress:v33];
  }

  v35 = [a1 isExplicit];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 BOOLValue];
  }

  else
  {
    v37 = 0;
  }

  [v26 setExplicitContent:v37];
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = a1;
  v42[4] = sub_100363114;
  v42[5] = v39;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 1107296256;
  v42[2] = sub_10035C154;
  v42[3] = &unk_100A17178;
  v40 = _Block_copy(v42);
  swift_unknownObjectRetain();

  [v26 setHandler:v40];
  _Block_release(v40);

  return v26;
}

double sub_10035D7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a2;
    v11[4] = a3;
    swift_unknownObjectRetain();
    v12 = v10;

    sub_100307594(a5, sub_10036311C, v11, v13);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_10035D89C(uint64_t a1, void (*a2)(double), uint64_t a3)
{
  v6 = sub_100796CF4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v69 - v11;
  v13 = sub_1007A21D4();
  v14 = a1;
  v15 = *(v13 - 8);
  __chkstk_darwin(v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v69 - v20;
  if (v22)
  {
    v73 = a2;
    v74 = a3;
    v23 = sub_1007967C4();
    sub_1007A2154();
    sub_100796C94();
    v81 = *(v15 + 16);
    v82 = v15 + 16;
    v81(v17, v21, v13);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v79 = objc_opt_self();
    v80 = ObjCClassFromMetadata;
    v25 = [v79 bundleForClass:ObjCClassFromMetadata];
    v26 = v15;
    v27 = v25;
    v77 = *(v7 + 16);
    v78 = v7 + 16;
    v77(v9, v12, v6);
    v28 = sub_1007A22D4(v17, 0, 0, v27, v9, "Couldn't play audiobook alert title", 35, 2);
    v85 = v29;
    v30 = *(v7 + 8);
    v75 = v28;
    v76 = v30;
    v72 = v7 + 8;
    v30(v12, v6);
    v31 = *(v26 + 8);
    v71 = v26 + 8;
    v31(v21, v13);
    v84 = v23;
    v32 = [v23 domain];
    v33 = sub_1007A2254();
    v35 = v34;

    if (v33 == 0xD00000000000001ELL && 0x80000001008CA890 == v35)
    {
    }

    else
    {
      v36 = sub_1007A3AB4();

      if ((v36 & 1) == 0)
      {
        v42 = v9;
        goto LABEL_21;
      }
    }

    v37 = [v84 code];
    v70 = v31;
    if (v37 == 2)
    {

      sub_1007A2154();
      sub_100796C94();
      v81(v17, v21, v13);
      v41 = [v79 bundleForClass:v80];
      v77(v9, v12, v6);
      v42 = v9;
      v75 = sub_1007A22D4(v17, 0, 0, v41, v9, "Message for unauthorized audiobook", 34, 2);
      v85 = v43;
    }

    else
    {
      if (v37 != 1)
      {
        v42 = v9;
        v31 = v70;
        goto LABEL_21;
      }

      v38 = [objc_opt_self() deviceClass];
      if (v38 == 3)
      {
        sub_1007A2154();
        sub_100796C94();
        v81(v17, v21, v13);
        v44 = [v79 bundleForClass:v80];
        v77(v9, v12, v6);
        v42 = v9;
        v45 = sub_1007A22D4(v17, 0, 0, v44, v9, "Check internet connection on iPad alert message", 47, 2);
      }

      else
      {
        if (v38 == 1)
        {
          sub_1007A2154();
          sub_100796C94();
          v81(v17, v21, v13);
          v39 = [v79 bundleForClass:v80];
          v77(v9, v12, v6);
          v40 = "Check internet connection on iPhone alert message";
        }

        else
        {
          sub_1007A2154();
          sub_100796C94();
          v81(v17, v21, v13);
          v39 = [v79 bundleForClass:v80];
          v77(v9, v12, v6);
          v40 = "Check internet connection on device alert message";
        }

        v42 = v9;
        v45 = sub_1007A22D4(v17, 0, 0, v39, v9, v40, 49, 2);
      }

      v75 = v45;
      v85 = v46;
    }

    v76(v12, v6);
    v31 = v70;
    v70(v21, v13);
LABEL_21:
    sub_1007A2154();
    sub_100796C94();
    v81(v17, v21, v13);
    v47 = [v79 bundleForClass:v80];
    v77(v42, v12, v6);
    sub_1007A22D4(v17, 0, 0, v47, v42, "Couldn't play audiobook alert OK button", 39, 2);
    v76(v12, v6);
    v31(v21, v13);
    v48 = swift_allocObject();
    v49 = v83;
    v51 = v73;
    v50 = v74;
    v48[2] = v83;
    v48[3] = v51;
    v48[4] = v50;
    v52 = objc_allocWithZone(CPAlertAction);
    v53 = v49;
    sub_1000260E8(v51, v50);
    v54 = sub_1007A2214();

    aBlock[4] = sub_1003630F8;
    aBlock[5] = v48;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10036343C;
    aBlock[3] = &unk_100A170B0;
    v55 = _Block_copy(aBlock);
    v56 = [v52 initWithTitle:v54 style:0 handler:v55];

    _Block_release(v55);

    sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_10080B690;
    v58 = v85;
    *(v57 + 32) = v75;
    *(v57 + 40) = v58;
    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100811390;
    *(v59 + 32) = v56;
    v60 = objc_allocWithZone(CPAlertTemplate);
    v61 = v56;
    isa = sub_1007A25D4().super.isa;

    sub_10000A7C4(0, &qword_100ADDB30, CPAlertAction_ptr);
    v63 = sub_1007A25D4().super.isa;

    v64 = [v60 initWithTitleVariants:isa actions:v63];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v66 = Strong;
      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
      v67 = swift_allocObject();
      *(v67 + 16) = v66;
      *(v67 + 24) = v64;
      swift_unknownObjectRetain();
      v68 = v64;
      sub_1007A2CD4();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  if (a2)
  {
    a2(v19);
  }
}

void sub_10035E2D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    *(swift_allocObject() + 16) = v5;
    swift_unknownObjectRetain();
    sub_1007A2CD4();
    swift_unknownObjectRelease();
  }

  if (a3)
  {
    a3(Strong);
  }
}

id sub_10035E39C(void *a1, double a2, double a3)
{
  v7 = sub_1007A1CC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = v33 - v13;
  result = [a1 assetID];
  if (result)
  {
    v16 = result;
    v17 = dispatch_semaphore_create(0);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v34 = (v18 + 16);
    v19 = [objc_opt_self() describedImageWithIdentifier:v16 size:0 processingOptions:{a2, a3}];

    [v19 setPriority:6];
    [v19 setRequestOptions:2];
    v33[1] = v3;
    v20 = *(v3 + OBJC_IVAR____TtC5Books16CarPlayPresenter_coverCache);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = v17;
    aBlock[4] = sub_1003630E8;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100569BDC;
    aBlock[3] = &unk_100A17060;
    v22 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v35 = v18;

    v23 = v17;

    [v20 fetchCGImageFor:v19 forRequest:v19 timeOut:1 waitForNonGeneric:v22 completion:4.0];
    _Block_release(v22);
    swift_unknownObjectRelease();
    sub_1007A1CB4();
    sub_1007A1D24();
    v24 = *(v8 + 8);
    v24(v10, v7);
    sub_1007A2EC4();
    v24(v14, v7);
    if (sub_1007A1C34())
    {
      v25 = sub_1007A29B4();
      if (qword_100AD1530 != -1)
      {
        v32 = v25;
        swift_once();
        v25 = v32;
      }

      sub_10079AB44(v25, &_mh_execute_header, qword_100AE15E0, "times out waiting for image", 27, 2, _swiftEmptyArrayStorage);
    }

    v26 = v34;
    swift_beginAccess();
    if (*v26)
    {
      v27 = *v26;
      v28 = [v27 CGImage];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = sub_100502150(v29);
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 1.0;
      }

      v31 = [objc_allocWithZone(UIImage) initWithCGImage:v28 scale:0 orientation:v30];

      swift_unknownObjectRelease();

      return v31;
    }

    else
    {

      swift_unknownObjectRelease();

      return 0;
    }
  }

  return result;
}

Swift::Int sub_10035E7D4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [a1 image];
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = v3;
  }

  return sub_1007A2ED4();
}

UIImage *sub_10035E848(double a1)
{
  v1 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v2 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v1))
  {
    v3 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v3 = 136315394;
    swift_getObjectType();
    v4 = sub_1007A3D34();
    v6 = sub_1000070F4(v4, v5, &v29);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_1000070F4(0x6B72616D6B6F6F62, 0xEF29286567616D49, &v29);
    _os_log_impl(&_mh_execute_header, v2, v1, "%s %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  v30.width = 9.0;
  v30.height = 9.0;
  UIGraphicsBeginImageContextWithOptions(v30, 0, 0.0);
  [v8 set];
  v9 = [objc_allocWithZone(UIBezierPath) init];
  [v9 addArcWithCenter:1 radius:4.5 startAngle:4.5 endAngle:3.0 clockwise:{0.0, 6.28318531}];
  [v9 closePath];
  [v9 fill];
  v28 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  v10 = [v7 whiteColor];
  v31.width = 9.0;
  v31.height = 9.0;
  UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
  [v10 set];
  v11 = [objc_allocWithZone(UIBezierPath) init];
  [v11 addArcWithCenter:1 radius:4.5 startAngle:4.5 endAngle:3.0 clockwise:{0.0, 6.28318531}];
  [v11 closePath];
  [v11 fill];
  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v14 = *(Strong + OBJC_IVAR___BKCarPlayController_interfaceController);
  if (!v14)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v15 = v14;
  v16 = [v15 carTraitCollection];

  swift_unknownObjectRelease();
  if (!v16)
  {
LABEL_14:
    v23 = [v7 grayColor];
    v32.width = 9.0;
    v32.height = 9.0;
    UIGraphicsBeginImageContextWithOptions(v32, 0, 0.0);
    [v23 set];
    v24 = [objc_allocWithZone(UIBezierPath) init];
    [v24 addArcWithCenter:1 radius:4.5 startAngle:4.5 endAngle:3.0 clockwise:{0.0, 6.28318531}];
    [v24 closePath];
    [v24 fill];
    v25 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    v22 = v25;
    v26 = sub_1007A29B4();
    sub_10079AB44(v26, &_mh_execute_header, v2, "Cannot generate a correct _bookmarkImage because of a missing .carTraitCollection", 81, 2, _swiftEmptyArrayStorage);
    v20 = v12;
    v12 = v28;
    v21 = v22;
    goto LABEL_15;
  }

  v17 = sub_1007A2DF4();
  v18 = sub_1007A2DF4();
  v19 = [objc_allocWithZone(UIImageAsset) init];
  v20 = v19;
  v21 = v28;
  if (v28)
  {
    [(UIImage *)v19 registerImage:v28 withTraitCollection:v17];
  }

  if (v12)
  {
    [(UIImage *)v20 registerImage:v12 withTraitCollection:v18];
  }

  v22 = [(UIImage *)v20 imageWithTraitCollection:v16];

LABEL_15:
  return v22;
}

id sub_10035EDF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10035EEC4(void *a1, unint64_t a2)
{
  v3 = [a1 sections];
  sub_10000A7C4(0, &qword_100ADDB28, CPListSection_ptr);
  v4 = sub_1007A25E4();

  if (v4 >> 62)
  {
LABEL_45:
    if (!sub_1007A38D4())
    {
      goto LABEL_50;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_1007A3784();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v8 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v7))
  {
    v9 = swift_slowAlloc();
    *&v55[0] = swift_slowAlloc();
    *v9 = 136315394;
    swift_getObjectType();
    v10 = sub_1007A3D34();
    v12 = sub_1000070F4(v10, v11, v55);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1000070F4(0xD000000000000022, 0x80000001008CD2D0, v55);
    _os_log_impl(&_mh_execute_header, v8, v7, "%s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v4 = [v6 items];
  sub_1001F1160(&qword_100ADDB58, &unk_10082D760);
  v13 = sub_1007A25E4();

  if (v13 >> 62)
  {
    v14 = sub_1007A38D4();
    if (v14)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_49:

LABEL_50:

    return;
  }

LABEL_12:
  oslog = v8;
  v49 = v6;
  v15 = a2;
  a2 = 0;
  v47 = v15;
  v16 = v13 & 0xFFFFFFFFFFFFFF8;
  v50 = (v15 + OBJC_IVAR____TtC5Books20CarPlayListenNowData_assetID);
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      sub_1007A3784();
      v17 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (a2 >= *(v16 + 16))
      {
        goto LABEL_44;
      }

      swift_unknownObjectRetain();
      v17 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_14:
    ++a2;
    if (v17 == v14)
    {

      return;
    }
  }

  v19 = v18;
  swift_unknownObjectRetain();
  v20 = [v19 userInfo];
  if (v20)
  {
    v4 = v20;
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  v55[0] = v53;
  v55[1] = v54;
  if (!*(&v54 + 1))
  {
    swift_unknownObjectRelease_n();
    sub_1000230BC(v55);
    goto LABEL_14;
  }

  sub_1001F1160(&qword_100ADDB80, &unk_100835DC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_14;
  }

  v21 = [v52 assetID];
  if (!v21 || (v4 = v21, v22 = sub_1007A2254(), v24 = v23, v4, !v24))
  {
LABEL_32:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    v16 = v13 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_14;
  }

  if (v22 != *v50 || v24 != v50[1])
  {
    v4 = sub_1007A3AB4();

    if (v4)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

LABEL_37:

  v25 = *(v47 + OBJC_IVAR____TtC5Books20CarPlayListenNowData_updatedReadingProgress);
  sub_100361E90(v52, 1, v25, v26);
  v28 = v27;
  v30 = v29;

  v31 = sub_1007A29D4();
  v32 = v49;
  if (os_log_type_enabled(oslog, v31))
  {
    v51 = v28;
    v33 = swift_slowAlloc();
    *&v55[0] = swift_slowAlloc();
    *v33 = 136316162;
    swift_getObjectType();
    v34 = sub_1007A3D34();
    v36 = sub_1000070F4(v34, v35, v55);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_1000070F4(0xD000000000000022, 0x80000001008CD2D0, v55);
    *(v33 + 22) = 2080;
    v37 = [v19 detailText];
    if (v37)
    {
      v38 = v37;
      v39 = sub_1007A2254();
      v41 = v40;
    }

    else
    {
      v41 = 0xE500000000000000;
      v39 = 0x3E6C696E3CLL;
    }

    v42 = sub_1000070F4(v39, v41, v55);

    *(v33 + 24) = v42;
    *(v33 + 32) = 2080;
    *(v33 + 34) = sub_1000070F4(v51, v30, v55);
    *(v33 + 42) = 2080;
    v43 = *v50;
    v44 = v50[1];

    v45 = sub_1000070F4(v43, v44, v55);

    *(v33 + 44) = v45;
    _os_log_impl(&_mh_execute_header, oslog, v31, "%s %s: received update -- changing text from %s to %s for asset %s", v33, 0x34u);
    swift_arrayDestroy();

    v32 = v49;
  }

  v46 = sub_1007A2214();

  [v19 setDetailText:v46];
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
}

void sub_10035F60C(void *a1, uint64_t a2, double a3)
{
  LOBYTE(v4) = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v5 = qword_100AE15E0;
    if (os_log_type_enabled(qword_100AE15E0, v4))
    {
      v6 = swift_slowAlloc();
      *&v34[0] = swift_slowAlloc();
      *v6 = 136315394;
      swift_getObjectType();
      v7 = sub_1007A3D34();
      v9 = sub_1000070F4(v7, v8, v34);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_1000070F4(0xD000000000000020, 0x80000001008CD300, v34);
      _os_log_impl(&_mh_execute_header, v5, v4, "%s %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = [a1 sections];
    sub_10000A7C4(0, &qword_100ADDB28, CPListSection_ptr);
    v11 = sub_1007A25E4();

    if (v11 >> 62)
    {
      if (!sub_1007A38D4())
      {
        goto LABEL_45;
      }
    }

    else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = sub_1007A3784();
    }

    else
    {
      if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v12 = *(v11 + 32);
    }

    v13 = v12;

    v14 = [v13 items];
    sub_1001F1160(&qword_100ADDB58, &unk_10082D760);
    v4 = sub_1007A25E4();

    if (!(v4 >> 62))
    {
      v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        break;
      }

      goto LABEL_11;
    }

    v15 = sub_1007A38D4();
    if (!v15)
    {
      break;
    }

LABEL_11:
    v28 = v13;
    v16 = 0;
    v29 = (a2 + OBJC_IVAR____TtC5Books20CarPlayListenNowData_assetID);
    v17 = v4 & 0xC000000000000001;
    v18 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17)
      {
        sub_1007A3784();
        a1 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          break;
        }

        goto LABEL_20;
      }

      if (v16 >= *(v18 + 16))
      {
        goto LABEL_38;
      }

      swift_unknownObjectRetain();
      a1 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

LABEL_20:
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = v19;
        swift_unknownObjectRetain();
        if ([v20 userInfo])
        {
          sub_1007A3504();
          swift_unknownObjectRelease();
        }

        else
        {
          v32 = 0u;
          v33 = 0u;
        }

        v34[0] = v32;
        v34[1] = v33;
        if (*(&v33 + 1))
        {
          sub_1001F1160(&qword_100ADDB80, &unk_100835DC0);
          if (swift_dynamicCast())
          {
            v21 = [v31 assetID];
            if (v21)
            {
              v22 = v21;
              v23 = sub_1007A2254();
              v25 = v24;

              if (v25)
              {
                if (v23 == *v29 && v25 == v29[1])
                {

LABEL_36:

                  [*(a2 + OBJC_IVAR____TtC5Books20CarPlayListenNowData_updatedReadingProgress) floatValue];
                  [v20 setPlaybackProgress:v27];
                  swift_unknownObjectRelease_n();
                  swift_unknownObjectRelease();

                  return;
                }

                v26 = sub_1007A3AB4();

                if (v26)
                {
                  goto LABEL_36;
                }
              }
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease_n();
            v18 = v4 & 0xFFFFFFFFFFFFFF8;
            v17 = v4 & 0xC000000000000001;
          }

          else
          {
            swift_unknownObjectRelease_n();
          }
        }

        else
        {
          swift_unknownObjectRelease_n();
          sub_1000230BC(v34);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v16;
      if (a1 == v15)
      {

        return;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_45:
}

void sub_10035FB54(double a1)
{
  v2 = v1;
  v3 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v4 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v3))
  {
    v5 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = sub_1007A3D34();
    v8 = sub_1000070F4(v6, v7, &aBlock);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1000070F4(0xD00000000000001DLL, 0x80000001008CD350, &aBlock);
    _os_log_impl(&_mh_execute_header, v4, v3, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = [objc_opt_self() sharedTemplate];
  v10 = sub_1007A2214();
  v11 = objc_opt_self();
  v12 = [v11 systemImageNamed:v10];

  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = sub_1007A2214();
  v14 = [v11 systemImageNamed:v13];

  if (!v14)
  {

LABEL_11:
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = objc_allocWithZone(CPNowPlayingPlaybackRateButton);
    v56 = sub_1003632F4;
    v57 = v44;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_10036343C;
    v55 = &unk_100A17498;
    v46 = _Block_copy(&aBlock);

    v47 = [v45 initWithHandler:v46];
    _Block_release(v46);

    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_100811390;
    *(v48 + 32) = v47;
    sub_10000A7C4(0, &qword_100ADDB88, CPNowPlayingButton_ptr);
    v41 = v47;
    v43.super.isa = sub_1007A25D4().super.isa;

    [v9 updateNowPlayingButtons:v43.super.isa];
    goto LABEL_12;
  }

  height = CPNowPlayingButtonMaximumImageSize.height;
  v51 = v12;
  v16 = v14;
  sub_1003602E8(CPNowPlayingButtonMaximumImageSize.width, height);
  v18 = v17;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = objc_allocWithZone(CPNowPlayingImageButton);
  v56 = sub_10036332C;
  v57 = v19;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_10036343C;
  v55 = &unk_100A174C0;
  v21 = _Block_copy(&aBlock);

  v22 = [v20 initWithImage:v18 handler:v21];
  _Block_release(v21);

  v23 = OBJC_IVAR____TtC5Books16CarPlayPresenter_decrementButton;
  v24 = *(v2 + OBJC_IVAR____TtC5Books16CarPlayPresenter_decrementButton);
  *(v2 + OBJC_IVAR____TtC5Books16CarPlayPresenter_decrementButton) = v22;

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = objc_allocWithZone(CPNowPlayingPlaybackRateButton);
  v56 = sub_100363364;
  v57 = v25;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_10036343C;
  v55 = &unk_100A174E8;
  v27 = _Block_copy(&aBlock);

  v28 = [v26 initWithHandler:v27];
  _Block_release(v27);

  v50 = v16;
  sub_1003602E8(CPNowPlayingButtonMaximumImageSize.width, height);
  v30 = v29;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = objc_allocWithZone(CPNowPlayingImageButton);
  v56 = sub_10036336C;
  v57 = v31;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_10036343C;
  v55 = &unk_100A17510;
  v33 = _Block_copy(&aBlock);

  v34 = [v32 initWithImage:v30 handler:v33];
  _Block_release(v33);

  v35 = OBJC_IVAR____TtC5Books16CarPlayPresenter_incrementButton;
  v36 = *(v2 + OBJC_IVAR____TtC5Books16CarPlayPresenter_incrementButton);
  *(v2 + OBJC_IVAR____TtC5Books16CarPlayPresenter_incrementButton) = v34;

  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100811370;
  v38 = *(v2 + v23);
  if (v38)
  {
    *(v37 + 32) = v38;
    *(v37 + 40) = v28;
    v39 = *(v2 + v35);
    if (v39)
    {
      *(v37 + 48) = v39;
      sub_10000A7C4(0, &qword_100ADDB88, CPNowPlayingButton_ptr);
      v40 = v38;
      v41 = v28;
      v42 = v39;
      v43.super.isa = sub_1007A25D4().super.isa;

      [v9 updateNowPlayingButtons:v43.super.isa];

LABEL_12:
      [v9 setUpNextButtonEnabled:1];
      v49 = sub_1007A2214();
      [v9 setUpNextTitle:v49];

      [v9 setAlbumArtistButtonEnabled:0];
      [v9 addObserver:v2];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1003602E8(double a1, double a2)
{
  [v2 size];
  sub_1007A3074();
  v4 = v3;
  v6 = v5;
  v7 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v3, v5}];
  v8 = swift_allocObject();
  *(v8 + 2) = v2;
  v8[3] = v4;
  v8[4] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1003633BC;
  *(v9 + 24) = v8;
  v12[4] = sub_1002C70B8;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1004091A8;
  v12[3] = &unk_100A17600;
  v10 = _Block_copy(v12);
  v11 = v2;

  [v7 imageWithActions:v10];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

void sub_1003604B8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(CPListTemplate);
  sub_10000A7C4(0, &qword_100ADDB28, CPListSection_ptr);
  isa = sub_1007A25D4().super.isa;
  v4 = [v2 initWithTitle:0 sections:isa];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = Strong, v7 = swift_unknownObjectWeakLoadStrong(), v6, v7))
  {
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v4;
    swift_unknownObjectRetain();
    v9 = v4;
    sub_1007A2CD4();

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

double sub_100360604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC5Books16CarPlayPresenter_interactor);
    v7 = Strong;
    swift_unknownObjectRetain();

    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    *(swift_allocObject() + 16) = v6;
    swift_unknownObjectRetain();
    sub_1007A2CD4();
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003606DC(void *a1, unint64_t a2, float a3)
{
  v4 = sub_10035C204(a2, a3);
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100811390;
  *(v5 + 32) = v4;
  sub_10000A7C4(0, &qword_100ADDB28, CPListSection_ptr);
  v6 = v4;
  isa = sub_1007A25D4().super.isa;

  [a1 updateSections:isa];
}

double sub_100360814(double a1)
{
  v1 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v2 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v1))
  {
    v3 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v3 = 136315394;
    swift_getObjectType();
    v4 = sub_1007A3D34();
    v6 = sub_1000070F4(v4, v5, &v13);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_1000070F4(0xD000000000000013, 0x80000001008CCFA0, &v13);
    _os_log_impl(&_mh_execute_header, v2, v1, "%s %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [objc_opt_self() sharedTemplate];
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    swift_unknownObjectRetain();
    v12 = v10;
    sub_1007A2CD4();

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_100360A64(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100796CF4();
  v107 = *(v6 - 8);
  v108 = v6;
  __chkstk_darwin(v6);
  v104 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = &v95 - v9;
  v106 = sub_1007A21D4();
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v101 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v102 = &v95 - v12;
  LODWORD(v13) = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
LABEL_45:
    swift_once();
  }

  v14 = qword_100AE15E0;
  v15 = os_log_type_enabled(qword_100AE15E0, v13);
  v17 = a1;
  v18 = a1 >> 62;
  v109 = a2 >> 62;
  v110 = v14;
  v111 = a2;
  v112 = v17;
  if (v15)
  {
    v98 = v13;
    v19 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v114[0] = v97;
    *v19 = 136315906;
    swift_getObjectType();
    v20 = sub_1007A3D34();
    v22 = sub_1000070F4(v20, v21, v114);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1000070F4(0xD00000000000002FLL, 0x80000001008CD250, v114);
    v99 = v18;
    v100 = v19;
    *(v19 + 22) = 2080;
    v23 = v112;
    v24 = v112 & 0xFFFFFFFFFFFFFF8;
    if (v18)
    {
      v25 = sub_1007A38D4();
    }

    else
    {
      v25 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v3;
    a1 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    if (v25)
    {
      a2 = 0;
      v27 = v23 & 0xC000000000000001;
      v3 = _swiftEmptyArrayStorage;
      while (2)
      {
        v13 = a2;
        while (1)
        {
          if (v27)
          {
            v28 = sub_1007A3784();
            a2 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v13 >= *(v24 + 16))
            {
              goto LABEL_42;
            }

            v28 = *(v23 + 8 * v13 + 32);
            swift_unknownObjectRetain();
            a2 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }
          }

          v29 = [v28 assetID];
          if (v29)
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v13;
          if (a2 == v25)
          {
            goto LABEL_22;
          }
        }

        v30 = v29;
        v31 = sub_1007A2254();
        v96 = v32;

        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_10000B3D8(0, *(v3 + 2) + 1, 1, v3);
        }

        v34 = *(v3 + 2);
        v33 = *(v3 + 3);
        if (v34 >= v33 >> 1)
        {
          v3 = sub_10000B3D8((v33 > 1), v34 + 1, 1, v3);
        }

        *(v3 + 2) = v34 + 1;
        v35 = &v3[16 * v34];
        v36 = v96;
        *(v35 + 4) = v31;
        *(v35 + 5) = v36;
        v23 = v112;
        if (a2 != v25)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
    v37 = sub_1007A25F4();
    v39 = v38;

    v40 = sub_1000070F4(v37, v39, v114);

    v41 = v100;
    *(v100 + 24) = v40;
    *(v41 + 32) = 2080;
    if (v109)
    {
      v42 = v111 & 0xFFFFFFFFFFFFFF8;
      v43 = sub_1007A38D4();
      if (v43)
      {
LABEL_24:
        a2 = 0;
        v44 = v111 & 0xC000000000000001;
        v3 = _swiftEmptyArrayStorage;
        do
        {
          v13 = a2;
          while (1)
          {
            if (v44)
            {
              v45 = sub_1007A3784();
              a2 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                goto LABEL_43;
              }
            }

            else
            {
              if (v13 >= *(v42 + 16))
              {
                goto LABEL_44;
              }

              v45 = *(v111 + 8 * v13 + 32);
              swift_unknownObjectRetain();
              a2 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                goto LABEL_43;
              }
            }

            v46 = [v45 assetID];
            if (v46)
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v13;
            if (a2 == v43)
            {
              goto LABEL_48;
            }
          }

          v47 = v46;
          v48 = sub_1007A2254();
          v96 = v49;

          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_10000B3D8(0, *(v3 + 2) + 1, 1, v3);
          }

          v51 = *(v3 + 2);
          v50 = *(v3 + 3);
          if (v51 >= v50 >> 1)
          {
            v3 = sub_10000B3D8((v50 > 1), v51 + 1, 1, v3);
          }

          *(v3 + 2) = v51 + 1;
          v52 = &v3[16 * v51];
          v53 = v96;
          *(v52 + 4) = v48;
          *(v52 + 5) = v53;
        }

        while (a2 != v43);
      }
    }

    else
    {
      v42 = v111 & 0xFFFFFFFFFFFFFF8;
      v43 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
        goto LABEL_24;
      }
    }

LABEL_48:
    v54 = sub_1007A25F4();
    v56 = v55;

    v57 = sub_1000070F4(v54, v56, v114);

    v58 = v100;
    *(v100 + 34) = v57;
    v14 = v110;
    _os_log_impl(&_mh_execute_header, v110, v98, "%s %s topLevel: %s, library: %s", v58, 0x2Au);
    swift_arrayDestroy();

    v3 = v26;
    a2 = v111;
    v17 = v112;
    v18 = v99;
  }

  v114[0] = _swiftEmptyArrayStorage;
  if (v18)
  {
    v93 = v17;
    v94 = sub_1007A38D4();
    v17 = v93;
    v59 = v94;
    if (v94)
    {
LABEL_51:
      if (v59 < 1)
      {
        __break(1u);
        goto LABEL_75;
      }

      v60 = v3;
      v61 = 0;
      v62 = v17 & 0xC000000000000001;
      do
      {
        if (v62)
        {
          v63 = sub_1007A3784();
        }

        else
        {
          v63 = *(v17 + 8 * v61 + 32);
          swift_unknownObjectRetain();
        }

        isa = [v63 readingProgress];
        if (!isa)
        {
          sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
          isa = sub_1007A3154(0).super.super.isa;
        }

        v66 = sub_10035D334(v63, 1, isa, v65);

        v67 = v66;
        sub_1007A25C4();
        if (*((v114[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1007A2614();
        }

        ++v61;
        sub_1007A2644();

        swift_unknownObjectRelease();
        v17 = v112;
      }

      while (v59 != v61);
      v68 = v114[0];
      v3 = v60;
      v14 = v110;
      a2 = v111;
      if (!v109)
      {
        goto LABEL_62;
      }

      goto LABEL_72;
    }
  }

  else
  {
    v59 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
      goto LABEL_51;
    }
  }

  v68 = _swiftEmptyArrayStorage;
  if (!v109)
  {
LABEL_62:
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_65;
    }

LABEL_63:
    v112 = v3;
    v69 = v102;
    sub_1007A2154();
    v70 = v105;
    sub_100796C94();
    v71 = v103;
    v72 = v101;
    v73 = v106;
    (*(v103 + 16))(v101, v69, v106);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v75 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v77 = v107;
    v76 = v108;
    v78 = v104;
    (*(v107 + 16))(v104, v70, v108);
    v79 = sub_1007A22D4(v72, 0, 0, v75, v78, "CarPlay library swoosh name", 27, 2);
    v81 = v80;
    (*(v77 + 8))(v70, v76);
    v82 = (*(v71 + 8))(v69, v73);
    sub_10035CB38(v79, v81, a2, v82);

    swift_unknownObjectRetain();
    sub_1007A25C4();
    if (*((v114[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v114[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_64:
      sub_1007A2644();
      swift_unknownObjectRelease();
      v68 = v114[0];
      v14 = v110;
      goto LABEL_65;
    }

LABEL_75:
    sub_1007A2614();
    goto LABEL_64;
  }

LABEL_72:
  if (sub_1007A38D4())
  {
    goto LABEL_63;
  }

LABEL_65:
  v83 = sub_10035B5E8(v68, v16);

  v84 = sub_1007A29D4();
  if (os_log_type_enabled(v14, v84))
  {
    v85 = swift_slowAlloc();
    v113[0] = swift_slowAlloc();
    *v85 = 136315394;
    swift_getObjectType();
    v86 = sub_1007A3D34();
    v88 = sub_1000070F4(v86, v87, v113);

    *(v85 + 4) = v88;
    *(v85 + 12) = 2080;
    *(v85 + 14) = sub_1000070F4(0xD00000000000002FLL, 0x80000001008CD250, v113);
    _os_log_impl(&_mh_execute_header, v14, v84, "%s %s about to update listen now sections on delegate", v85, 0x16u);
    swift_arrayDestroy();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v90 = Strong;
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v91 = swift_allocObject();
    *(v91 + 16) = v90;
    *(v91 + 24) = v83;
    swift_unknownObjectRetain();
    sub_1007A2CD4();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

void sub_100361594(uint64_t a1, double a2)
{
  v3 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v4 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v3))
  {
    v6 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v6 = 136315394;
    swift_getObjectType();
    v7 = sub_1007A3D34();
    v9 = sub_1000070F4(v7, v8, &v21);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1000070F4(0xD00000000000002ALL, 0x80000001008CCC40, &v21);
    _os_log_impl(&_mh_execute_header, v4, v3, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = sub_10035B8E0(a1, v5);
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100811390;
  *(v11 + 32) = v10;
  v12 = objc_allocWithZone(CPListTemplate);

  v20 = v10;
  v13 = sub_1007A2214();

  sub_10000A7C4(0, &qword_100ADDB28, CPListSection_ptr);
  isa = sub_1007A25D4().super.isa;

  v15 = [v12 initWithTitle:v13 sections:isa];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v15;
    swift_unknownObjectRetain();
    v19 = v15;
    sub_1007A2CD4();

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1003618C0(void *a1, double a2)
{
  v3 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v4 = qword_100AE15E0;
  sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10080B690;
  *(v5 + 56) = type metadata accessor for CarPlayAudiobookData();
  *(v5 + 64) = sub_100363290();
  *(v5 + 32) = a1;
  v6 = a1;
  sub_10079AB44(v3, &_mh_execute_header, v4, "update table of contents for %@", 31, 2, v5);

  v15 = sub_10035B8E0(v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v11 = *&v6[OBJC_IVAR____TtC5Books20CarPlayAudiobookData_title];
    v10 = *&v6[OBJC_IVAR____TtC5Books20CarPlayAudiobookData_title + 8];
    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100811390;
    *(v12 + 32) = v15;
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v11;
    v13[4] = v10;
    v13[5] = v12;

    v14 = v15;
    swift_unknownObjectRetain();
    sub_1007A2CD4();
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100361AEC(unint64_t a1, double a2)
{
  v3 = v2;
  v4 = *&a2;
  v6 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v7 = qword_100AE15E0;
  sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10080B690;
  *(v8 + 56) = &type metadata for Float;
  *(v8 + 64) = &protocol witness table for Float;
  *(v8 + 32) = v4;
  sub_10079AB44(v6, &_mh_execute_header, v7, "update selected playback rate for %g", v36);

  v37 = sub_10035C204(a1, v4);
  v9 = *(v3 + OBJC_IVAR____TtC5Books16CarPlayPresenter_incrementButton);
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = *(v3 + OBJC_IVAR____TtC5Books16CarPlayPresenter_decrementButton);
  if (!v10)
  {
    goto LABEL_20;
  }

  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_18:
    v24 = v9;
    v25 = v10;
    v23 = 0.0;
    v18 = 0.0;
    goto LABEL_19;
  }

  v11 = sub_1007A38D4();
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_7:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v34 = v9;
    v35 = v10;
    v15 = sub_1007A3784();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    v15 = v12;
  }

  v16 = v15;
  sub_1007A3164();
  v18 = v17;

  v19 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      if (v19 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v20 = *(a1 + 8 * v19 + 32);
        goto LABEL_16;
      }

LABEL_31:
      __break(1u);
      return;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v20 = sub_1007A3784();
LABEL_16:
  v21 = v20;
  sub_1007A3164();
  v23 = v22;

LABEL_19:
  v26 = v4;
  v27 = v10;
  [v27 setEnabled:{vabdd_f64(v18, v26) >= 0.00999999978}];

  v28 = v9;
  [v28 setEnabled:{vabdd_f64(v23, v26) >= 0.00999999978}];

LABEL_20:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100811390;
    *(v31 + 32) = v37;
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    v33 = v37;
    swift_unknownObjectRetain();
    sub_1007A2CD4();
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100361E90(void *a1, char a2, void *a3, double a4)
{
  v7 = sub_100796DA4();
  v91 = *(v7 - 8);
  v92 = v7;
  __chkstk_darwin(v7);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100796CF4();
  v94 = *(v10 - 8);
  v95 = v10;
  __chkstk_darwin(v10);
  v93 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v87 - v13;
  v15 = sub_1007A21D4();
  v96 = *(v15 - 1);
  v97 = v15;
  __chkstk_darwin(v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v87 - v20;
  v22 = [a1 author];
  if (v22)
  {
    v23 = v22;
    sub_1007A2254();
  }

  [a3 doubleValue];
  if (a2)
  {
    v25 = v24;
    if (([a1 isFinished] & 1) != 0 || fabs(v25 + -1.0) < 0.01)
    {

      sub_1007A2154();
      sub_100796C94();
      v27 = v96;
      v26 = v97;
      (*(v96 + 16))(v17, v21, v97);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v29 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v31 = v93;
      v30 = v94;
      v32 = v95;
      (*(v94 + 16))(v93, v14, v95);
      sub_1007A22D4(v17, 0, 0, v29, v31, "CarPlay detail text for when you've finished an audiobook that is at the top level.", 83, 2);
      (*(v30 + 8))(v14, v32);
      (*(v27 + 8))(v21, v26);
      return;
    }

    v33 = [a1 assetID];
    if (v33)
    {
      v34 = v33;
      sub_1007A2254();
      v36 = v35;
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    v37 = [a1 title];
    if (v37)
    {
      v90 = v36;
      v38 = v37;
      sub_1007A2254();
    }

    v39 = sub_1007A2214();

    v40 = sub_1007A2214();

    v41 = [objc_opt_self() identifierFromAssetID:v39 albumTitle:v40];

    v90 = v41;
    v42 = [v41 audiobookQuery];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 collections];
      v45 = v97;
      if (v44)
      {
        v46 = v44;
        sub_10000A7C4(0, &qword_100ADDB38, MPMediaItemCollection_ptr);
        v47 = sub_1007A25E4();

        if (v47 >> 62)
        {
          if (sub_1007A38D4())
          {
LABEL_17:
            if ((v47 & 0xC000000000000001) != 0)
            {
              v48 = sub_1007A3784();
            }

            else
            {
              if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_60;
              }

              v48 = *(v47 + 32);
            }

            v49 = v48;

            v50 = [v49 bk_cloudRepresentativeItem];
            v88 = v49;
            if (v50)
            {
              v51 = v50;
              [v50 playbackDuration];
              v53 = v52;

              v47 = v96;
LABEL_37:

              v54 = 1.0;
              v68 = 0.0;
              if (1.0 - v25 > 0.0)
              {
                v68 = 1.0 - v25;
              }

              if (1.0 - v25 <= 1.0)
              {
                v54 = v68;
              }

              goto LABEL_49;
            }

            v56 = [v49 bk_localItems];
            sub_10000A7C4(0, &qword_100ADDB40, MPMediaItem_ptr);
            v57 = sub_1007A25E4();

            v58 = v57;
            v59 = v57 >> 62;
            v47 = v96;
            v89 = v58;
            if (!v59)
            {
              v60 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v61 = v88;
              if (v60)
              {
LABEL_30:
                v87 = v43;
                if (v60 < 1)
                {
                  __break(1u);
                  return;
                }

                v62 = 0;
                v63 = v58 & 0xC000000000000001;
                v53 = 0.0;
                do
                {
                  if (v63)
                  {
                    v64 = sub_1007A3784();
                  }

                  else
                  {
                    v64 = *(v58 + 8 * v62 + 32);
                  }

                  v65 = v64;
                  ++v62;
                  [v64 playbackDuration];
                  v67 = v66;

                  v53 = v53 + v67;
                  v58 = v89;
                }

                while (v60 != v62);

                v47 = v96;
                v45 = v97;
                v51 = v87;
                goto LABEL_37;
              }

LABEL_61:

              v54 = 1.0;
              v53 = 0.0;
              v86 = 0.0;
              if (1.0 - v25 > 0.0)
              {
                v86 = 1.0 - v25;
              }

              if (1.0 - v25 <= 1.0)
              {
                v54 = v86;
              }

              v45 = v97;
              goto LABEL_49;
            }

LABEL_60:
            v85 = sub_1007A38D4();
            v58 = v89;
            v60 = v85;
            v61 = v88;
            if (v85)
            {
              goto LABEL_30;
            }

            goto LABEL_61;
          }
        }

        else if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      v54 = 1.0;
      v53 = 0.0;
      v69 = 0.0;
      if (1.0 - v25 > 0.0)
      {
        v69 = 1.0 - v25;
      }

      if (1.0 - v25 <= 1.0)
      {
        v54 = v69;
      }
    }

    else
    {
      v54 = 1.0;
      v53 = 0.0;
      v55 = 0.0;
      if (1.0 - v25 > 0.0)
      {
        v55 = 1.0 - v25;
      }

      if (1.0 - v25 <= 1.0)
      {
        v54 = v55;
      }

      v45 = v97;
    }

    v47 = v96;
LABEL_49:
    v70 = v54 * v53;
    v71 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    sub_100796D64();
    isa = sub_100796D44().super.isa;
    (*(v91 + 8))(v9, v92);
    [v71 setCalendar:isa];

    [v71 setUnitsStyle:2];
    if (v70 <= 60.0)
    {
      v73 = 128;
    }

    else
    {
      v73 = 96;
    }

    [v71 setAllowedUnits:v73];
    [v71 setMaximumUnitCount:2];
    [v71 setFormattingContext:5];
    v74 = [v71 stringFromTimeInterval:v70];
    if (v74)
    {
      v75 = v74;
      v97 = v71;

      v96 = sub_1007A2254();
      v77 = v76;

      sub_1007A2154();
      sub_100796C94();
      (*(v47 + 16))(v17, v21, v45);
      type metadata accessor for BundleFinder();
      v78 = swift_getObjCClassFromMetadata();
      v79 = [objc_opt_self() bundleForClass:v78];
      v80 = v93;
      v81 = v94;
      v82 = v45;
      v83 = v95;
      (*(v94 + 16))(v93, v14, v95);
      if (fabs(v25) >= 0.01)
      {
        sub_1007A22D4(v17, 0, 0, v79, v80, "CarPlay time remaining in book.", 31, 2);
      }

      else
      {
        sub_1007A22D4(v17, 0, 0, v79, v80, "CarPlay start listening to an audiobook with duration.", 54, 2);
      }

      (*(v81 + 8))(v14, v83);
      (*(v47 + 8))(v21, v82);
      sub_1001F1160(&unk_100AD5090, &unk_100815670);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_10080B690;
      *(v84 + 56) = &type metadata for String;
      *(v84 + 64) = sub_10000E4C4();
      *(v84 + 32) = v96;
      *(v84 + 40) = v77;
      sub_1007A2284();
    }

    else
    {
    }
  }
}

void sub_1003629A8(unint64_t a1, double a2)
{
  LOBYTE(v3) = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v4 = qword_100AE15E0;
    if (os_log_type_enabled(qword_100AE15E0, v3))
    {
      v5 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v5 = 136315394;
      swift_getObjectType();
      v6 = sub_1007A3D34();
      v8 = sub_1000070F4(v6, v7, &v31);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_1000070F4(0xD000000000000020, 0x80000001008CD0F0, &v31);
      _os_log_impl(&_mh_execute_header, v4, v3, "%s %s", v5, 0x16u);
      swift_arrayDestroy();
    }

    v31 = _swiftEmptyArrayStorage;
    if (!(a1 >> 62))
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        break;
      }

      goto LABEL_6;
    }

    v9 = sub_1007A38D4();
    if (!v9)
    {
      break;
    }

LABEL_6:
    v10 = 0;
    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v11 = sub_1007A3784();
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      isa = [v11 readingProgress];
      if (!isa)
      {
        sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
        isa = sub_1007A3154(0).super.super.isa;
      }

      v15 = sub_10035D334(v11, 0, isa, v14);

      v16 = v15;
      sub_1007A25C4();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
      v17 = v31;
      if (v31 >> 62)
      {
        v3 = sub_1007A38D4();
      }

      else
      {
        v3 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_unknownObjectRelease();

      if (v3 <= 49)
      {
        ++v10;
        if (v12 != v9)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    if (v10 >= *(v30 + 16))
    {
      goto LABEL_24;
    }

    v11 = *(a1 + 8 * v10 + 32);
    swift_unknownObjectRetain();
    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_13;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_28:
  if (v17 >> 62)
  {

    sub_1001F1160(&qword_100ADDB58, &unk_10082D760);
    v29 = sub_1007A38C4();
    swift_bridgeObjectRelease_n();
    v17 = v29;
  }

  else
  {
    v18 = v17 & 0xFFFFFFFFFFFFFF8;

    sub_1007A3AD4();
    sub_1001F1160(&qword_100ADDB58, &unk_10082D760);
    if (swift_dynamicCastMetatype() || (v27 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_30:
    }

    else
    {
      v28 = v18 + 32;
      while (swift_dynamicCastObjCProtocolConditional())
      {
        v28 += 8;
        if (!--v27)
        {
          goto LABEL_30;
        }
      }

      v17 = v18 | 1;
    }
  }

  v19 = objc_allocWithZone(CPListSection);
  sub_100502464(v17);

  v20 = sub_1007A25D4().super.isa;

  v21 = [v19 initWithItems:v20];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100811390;
    *(v24 + 32) = v21;
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    v26 = v21;
    swift_unknownObjectRetain();
    sub_1007A2CD4();
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_100362EE4(double a1)
{
  v1 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v2 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v1))
  {
    v3 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v3 = 136315394;
    swift_getObjectType();
    v4 = sub_1007A3D34();
    v6 = sub_1000070F4(v4, v5, &v10);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_1000070F4(0xD000000000000028, 0x80000001008CCC10, &v10);
    _os_log_impl(&_mh_execute_header, v2, v1, "%s %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = sub_100607A38();
  swift_unknownObjectRelease();
  if (v7)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100361594(v7, v8);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10036315C(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return swift_deallocObject();
}

unint64_t sub_1003631CC()
{
  result = qword_100ADDB68;
  if (!qword_100ADDB68)
  {
    sub_1001F1234(&qword_100ADDB60, &qword_10081CD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDB68);
  }

  return result;
}

uint64_t sub_100363248()
{

  return swift_deallocObject();
}

unint64_t sub_100363290()
{
  result = qword_100ADDB70;
  if (!qword_100ADDB70)
  {
    type metadata accessor for CarPlayAudiobookData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDB70);
  }

  return result;
}

double sub_100363440(char *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v4;
    sub_10079B9B4();
  }

  return result;
}

double sub_1003634EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (!swift_unknownObjectWeakLoadStrong() || (v6 = *(v5 + 40), ObjectType = swift_getObjectType(), (*(v6 + 40))(ObjectType, v6), swift_unknownObjectRelease(), swift_getKeyPath(), swift_getKeyPath(), sub_10079B9A4(&v8), , , , v8))
    {
      sub_100363910();
    }

    sub_100363D04(v2);
  }

  return result;
}

double sub_1003635F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = v5;
    v9 = v8;
    sub_10079B9B4();
    ObjectType = swift_getObjectType();
    (*(a4 + 40))(ObjectType, a4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v11);

    sub_100363D04(v11);
  }

  return result;
}

uint64_t OrientationLockHintController.deinit()
{
  v2[3] = type metadata accessor for OrientationLockHintController();
  v2[0] = v0;

  sub_1007A2B34();
  sub_1000074E0(v2);

  sub_10002B130(v0 + 32);

  return v0;
}

uint64_t OrientationLockHintController.__deallocating_deinit()
{
  OrientationLockHintController.deinit();

  return swift_deallocClassInstance();
}

void sub_1003637F4()
{
  v1 = *(v0 + 16);
  v2 = sub_1007A2B24();
  swift_getKeyPath();
  swift_getKeyPath();
  BYTE1(v4) = v2 & 1;
  v3 = v1;
  sub_10079B9B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v4);

  if (v4 == 1)
  {
    sub_100363910();
  }
}

void sub_100363910()
{
  v1 = v0;
  v17[0] = sub_1007A1CC4();
  v2 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v17 - v6;
  v8 = sub_1007A1C54();
  __chkstk_darwin(v8);
  if (*(v0 + 56))
  {

    sub_1007A1CE4();
  }

  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100364164;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A17688;
  _Block_copy(aBlock);
  v17[1] = _swiftEmptyArrayStorage;
  sub_100265BDC();

  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  sub_1007A3594();
  sub_1007A1CF4();
  swift_allocObject();
  v10 = sub_1007A1CD4();

  *(v1 + 56) = v10;

  v11 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 1;
  v12 = v11;
  sub_10079B9B4();
  sub_1007A1CB4();
  sub_1007A1D24();
  v13 = *(v2 + 8);
  v14 = v4;
  v15 = v17[0];
  v13(v14, v17[0]);
  if (*(v1 + 56))
  {

    if (sub_1007A2B24())
    {
      v13(v7, v15);

      return;
    }

    sub_100017E74();
    v16 = sub_1007A2D74();
    sub_1007A2D14();
  }

  v13(v7, v15);
}

uint64_t sub_100363C70(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10079B9B4();
  }

  return result;
}

void sub_100363D04(uint64_t a1)
{
  v2 = v1;
  v4 = v1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v17);

  if ((v17 & 1) == 0)
  {
    if (a1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = v1[5];
        ObjectType = swift_getObjectType();
        (*(v5 + 40))(ObjectType, v5);
        swift_unknownObjectRelease();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4(&v17);

        if (*&v17 != 0.0)
        {
          if (!swift_unknownObjectWeakLoadStrong() || (v7 = sub_100025674(a1), v8 = v1[5], v9 = swift_getObjectType(), (*(v8 + 40))(v9, v8), swift_unknownObjectRelease(), swift_getKeyPath(), swift_getKeyPath(), sub_10079B9A4(&v17), , , , sub_100025674(v17) != v7))
          {
            v10 = *(v1[3] + OBJC_IVAR___BKEngagementManager_eventController);
            sub_10079E994();
          }
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v17);

  v11 = 0.0;
  if (v17 == 1)
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v12 = v2[5];
    v13 = swift_getObjectType();
    (*(v12 + 40))(v13, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v17);

    swift_unknownObjectRelease();

    v14 = 0.0;
    v15 = 0.0;
    if ((v17 - 2) <= 2)
    {
      v15 = dbl_10081D048[v17 - 2];
    }

    if ((a1 - 2) <= 2)
    {
      v14 = dbl_10081D048[a1 - 2];
    }

    v11 = v15 - v14;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v17);

  if (*&v17 != v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *&v17 = v11;
    v16 = v4;
    sub_10079B9B4();
  }
}

uint64_t sub_1003640BC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for OrientationLockHintController();
  result = sub_10079B8B4();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall OrientationLockHintController.toggleOrientationLock()()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(*(v1 + 8) + 8))(ObjectType);

    swift_unknownObjectRelease();
  }
}

double sub_10036417C(_OWORD *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

double sub_1003641BC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1003641C8(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

void sub_100364208(uint64_t *a2@<X8>)
{
  v3 = sub_10079DDC4();
  sub_10079BEB4();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t sub_100364248@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10079CE04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079DDC4();
  sub_10079CF84();
  sub_10079BEC4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  return result;
}

void sub_100364380(uint64_t a1)
{
  sub_100364AD0(319, &qword_100ADDD30, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_100364AD0(319, &qword_100AD6F18, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100364458(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_10079CAE4() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v13 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v6 + 64);
  }

  if (v12 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v12;
  }

  if (v8)
  {
    v18 = v13;
  }

  else
  {
    v18 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v18 + v14;
  v20 = *(v7 + 80) & 0xF8 | 7;
  if (a2 > v17)
  {
    v21 = v16 + ((v15 + v20 + (v19 & ~v14)) & ~v20) + 1;
    v22 = 8 * v21;
    if (v21 > 3)
    {
      goto LABEL_19;
    }

    v24 = ((a2 - v17 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 >= 2)
    {
LABEL_19:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_39;
      }

LABEL_26:
      v25 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v25 = 0;
      }

      if (v16 + ((v15 + v20 + (v19 & ~v14)) & ~v20) == -1)
      {
        v27 = 0;
      }

      else
      {
        if (v21 <= 3)
        {
          v26 = v16 + ((v15 + v20 + (v19 & ~v14)) & ~v20) + 1;
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      return v17 + (v27 | v25) + 1;
    }
  }

LABEL_39:
  if (v9 == v17)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v31 = (*(v7 + 48))(a1);
    if (v31 >= 2)
    {
      return v31 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v29 = (a1 + v19) & ~v14;
    if (v11 == v17)
    {
      v30 = *(*(*(a3 + 16) - 8) + 48);

      return v30(v29, v11);
    }

    else
    {
      v32 = *(((v29 + v15 + v20) & ~v20) + v16);
      if (v32 >= 2)
      {
        return (v32 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_100364700(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_10079CAE4() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 64);
  v16 = *(v13 + 80);
  v17 = *(v13 + 64);
  if (v14 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = 8;
  if (v15 > 8)
  {
    v19 = v15;
  }

  if (v18 <= 0xFE)
  {
    v18 = 254;
  }

  if (!v11)
  {
    ++v15;
  }

  v20 = v15 + v16;
  v21 = (v15 + v16) & ~v16;
  v22 = *(v10 + 80) & 0xF8 | 7;
  v23 = v19 + 1;
  v24 = ((v17 + v22 + v21) & ~v22) + v19 + 1;
  if (a3 <= v18)
  {
    goto LABEL_24;
  }

  if (v24 <= 3)
  {
    v25 = ((a3 - v18 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v25))
    {
      v8 = 4;
      if (v18 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v8 = v26;
    }

    else
    {
      v8 = 0;
    }

LABEL_24:
    if (v18 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (v18 >= a2)
  {
LABEL_34:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v24] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v24] = 0;
    }

    else if (v8)
    {
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

LABEL_41:
      if (v12 == v18)
      {
        v30 = *(v10 + 56);

        v30(a1, (a2 + 1));
      }

      else
      {
        v31 = &a1[v20] & ~v16;
        if (v14 == v18)
        {
          v32 = *(v13 + 56);

          v32(v31, a2, v14);
        }

        else
        {
          v33 = (v31 + v17 + v22) & ~v22;
          if (a2 > 0xFE)
          {
            if (v23 <= 3)
            {
              v34 = ~(-1 << (8 * v23));
            }

            else
            {
              v34 = -1;
            }

            if (v19 != -1)
            {
              v35 = v34 & (a2 - 255);
              if (v23 <= 3)
              {
                v36 = v19 + 1;
              }

              else
              {
                v36 = 4;
              }

              bzero(((v31 + v17 + v22) & ~v22), v23);
              if (v36 > 2)
              {
                if (v36 == 3)
                {
                  *v33 = v35;
                  *(v33 + 2) = BYTE2(v35);
                }

                else
                {
                  *v33 = v35;
                }
              }

              else if (v36 == 1)
              {
                *v33 = v35;
              }

              else
              {
                *v33 = v35;
              }
            }
          }

          else
          {
            *(v33 + v19) = -a2;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

LABEL_25:
  v27 = ~v18 + a2;
  if (v24 >= 4)
  {
    bzero(a1, v24);
    *a1 = v27;
    v28 = 1;
    if (v8 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v28 = (v27 >> (8 * v24)) + 1;
  if (!v24)
  {
LABEL_54:
    if (v8 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v29 = v27 & ~(-1 << (8 * v24));
  bzero(a1, v24);
  if (v24 == 3)
  {
    *a1 = v29;
    a1[2] = BYTE2(v29);
    goto LABEL_54;
  }

  if (v24 == 2)
  {
    *a1 = v29;
    if (v8 > 1)
    {
LABEL_58:
      if (v8 == 2)
      {
        *&a1[v24] = v28;
      }

      else
      {
        *&a1[v24] = v28;
      }

      return;
    }
  }

  else
  {
    *a1 = v27;
    if (v8 > 1)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v8)
  {
    a1[v24] = v28;
  }
}

void sub_100364AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10079CAE4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100364B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10079C824();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&unk_100ADB4E0, &qword_100815F30);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  sub_1000077D8(v2 + *(a1 + 40), &v16 - v10, &unk_100ADB4E0, &qword_100815F30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10079CAE4();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    v14 = sub_1007A29C4();
    v15 = sub_10079D244();
    sub_10079AB44(v14, &_mh_execute_header, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100364D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F1160(&qword_100ADBC20, &qword_100811CB8);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_10079CAE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  sub_1000077D8(v2, v7, &qword_100ADBC20, &qword_100811CB8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v29 = a2;
    v28 = *(v9 + 32);
    v28(v14, v7, v8);
    v27 = a1;
    sub_100364B74(a1, v11);
    v15 = sub_10079CAD4();
    v16 = sub_100259D78(v11, v15);
    v18 = v17;

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16;
    }

    v20 = sub_10079CAD4();
    v21 = sub_100259D78(v14, v20);
    v23 = v22;

    v24 = *(v9 + 8);
    v24(v11, v8);
    if (v23)
    {
      if (v19 > 0)
      {
        return (v28)(v29, v14, v8);
      }
    }

    else if (v21 < v19)
    {
      return (v28)(v29, v14, v8);
    }

    v24(v14, v8);
    a2 = v29;
    a1 = v27;
    return sub_100364B74(a1, a2);
  }

  sub_10022448C(v7);
  return sub_100364B74(a1, a2);
}

uint64_t sub_100364FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v18 = sub_10079CAE4();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(a1 + 16);
  sub_1001F1234(&qword_100ADBC68, &qword_10081A530);
  v6 = sub_10079C2A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  swift_getKeyPath();
  sub_100364D78(a1, v5);
  v13 = *(a1 + 24);
  sub_10079D6D4();

  (*(v3 + 8))(v5, v18);
  v14 = sub_100365254();
  v20 = v13;
  v21 = v14;
  swift_getWitnessTable();
  sub_10039232C();
  v15 = *(v7 + 8);
  v15(v9, v6);
  sub_10039232C();
  return (v15)(v12, v6);
}

unint64_t sub_100365254()
{
  result = qword_100ADBCA8;
  if (!qword_100ADBCA8)
  {
    sub_1001F1234(&qword_100ADBC68, &qword_10081A530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBCA8);
  }

  return result;
}

id sub_1003652C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_1007A2214();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10036545C()
{
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100811390;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v21 = sub_10036579C;
  v22 = v2;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1003652C0;
  v20 = &unk_100A17770;
  v3 = _Block_copy(&v17);
  v4 = objc_opt_self();
  v5 = v0;
  v6 = [v4 modelWithDetailLineBreakMode:0 detailTextBlock:v3];
  _Block_release(v3);

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = v5;
  v9 = sub_1007A2214();
  v21 = sub_1003657AC;
  v22 = v7;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10065CD28;
  v20 = &unk_100A177C0;
  v10 = _Block_copy(&v17);

  v11 = [objc_opt_self() entryWithTitle:v9 model:v6 action:v10];
  _Block_release(v10);

  *(v1 + 32) = v11;
  v12 = objc_allocWithZone(BKDebugViewSection);
  v13 = sub_1007A2214();
  sub_1003657D0();
  isa = sub_1007A25D4().super.isa;

  v15 = [v12 initWithHeaderTitle:v13 entries:isa footerTitle:0];

  return v15;
}

uint64_t sub_1003656FC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1007A2A24();

  v2 = sub_1007A3A74();
  v3._countAndFlagsBits = 0x2973286D65746920;
  v3._object = 0xE800000000000000;
  sub_1007A23D4(v3);
  return v2;
}

unint64_t sub_1003657D0()
{
  result = qword_100AD8B50;
  if (!qword_100AD8B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD8B50);
  }

  return result;
}

void sub_10036581C()
{
  v1 = v0;
  v2 = _s23MultilineTextEditorViewVMa(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_1007A2A24();

  *&v19 = v7;
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
  v8 = sub_1007A20B4();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v12 = objc_allocWithZone(_s29MultilineTextEditorControllerCMa(0));
  *&v5[*(v3 + 40)] = swift_getKeyPath();
  sub_1001F1160(&qword_100AD8B60, &qword_100843AD0);
  swift_storeEnumTagMultiPayload();
  v18[1] = v8;
  v18[2] = v10;
  v13 = v1;

  sub_10079DFE4();
  v14 = v20;
  *v5 = v19;
  *(v5 + 2) = v14;
  *(v5 + 3) = 0;
  *(v5 + 4) = 0xE000000000000000;
  *(v5 + 5) = sub_100365A5C;
  *(v5 + 6) = 0;
  *(v5 + 7) = sub_100365F3C;
  *(v5 + 8) = v11;
  v15 = sub_10079CBC4();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong present:v15 :1];
  }
}

void sub_100365A5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADDD68, &qword_10081D290);
  __chkstk_darwin(v4 - 8);
  v45 = &v35 - v5;
  v44 = sub_1001F1160(&qword_100AD5318, &qword_10080FEF8);
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = sub_1003665B8(a1, a2);
  v16 = v15[2];
  v17 = v8;
  v37 = "Watched Key Paths";
  v38 = (v6 + 8);
  v18 = v15 + 5;
  v40 = -v16;
  v41 = v15;
  v19 = -1;
  v36 = v14;
  while (1)
  {
    v39 = v40 + v19;
    if (v40 + v19 == -1)
    {
      goto LABEL_8;
    }

    v20 = v19 + 1;
    if (v20 >= v41[2])
    {
      break;
    }

    v42 = v20;

    v21 = sub_1007996B4();
    v43 = 0;
    __chkstk_darwin(v21);
    *(&v35 - 2) = v14;
    sub_100005920(&qword_100AD5328, &qword_100AD5318, &qword_10080FEF8, &protocol conformance descriptor for Regex<A>);
    sub_1007996C4();
    v22 = v17;
    sub_100799694();
    sub_1007A24B4();
    v23 = v43;
    sub_1007996E4();
    if (v23)
    {

      v31 = *v38;
      v32 = v44;
      (*v38)(v22, v44);
      v31(v11, v32);
      v33 = sub_1001F1160(&qword_100ADDD70, &qword_10081D298);
      v34 = v45;
      (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
      sub_100007840(v34, &qword_100ADDD68, &qword_10081D290);
      v31(v36, v32);

LABEL_8:

      return;
    }

    v18 += 2;

    v24 = *v38;
    v25 = v44;
    (*v38)(v22, v44);
    v24(v11, v25);
    v26 = sub_1001F1160(&qword_100ADDD70, &qword_10081D298);
    v27 = v45;
    v28 = (*(*(v26 - 8) + 48))(v45, 1, v26);
    sub_100007840(v27, &qword_100ADDD68, &qword_10081D290);
    v29 = v22;
    v30 = v36;
    v24(v36, v25);

    v14 = v30;
    v17 = v29;
    v19 = v42;
    if (v28 == 1)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_100365F64(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADDD68, &qword_10081D290);
  __chkstk_darwin(v4 - 8);
  v49 = &v37 - v5;
  v6 = sub_1001F1160(&qword_100AD5318, &qword_10080FEF8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v48 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v37 - v10;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = sub_1003665B8(a1, a2);
  v15 = v14;
  v16 = v14[2];
  if (v16)
  {
    v17 = 0;
    v43 = (v7 + 8);
    v44 = "Watched Key Paths";
    v18 = v14 + 5;
    v38 = v16 - 1;
    v40 = _swiftEmptyArrayStorage;
    v41 = v16;
    v45 = v14;
    v39 = v14 + 5;
    v42 = v13;
    do
    {
      v19 = &v18[2 * v17];
      v20 = v17;
      while (1)
      {
        if (v20 >= v15[2])
        {
          __break(1u);
          return;
        }

        v46 = v20;
        v22 = *(v19 - 1);
        v21 = *v19;

        v23 = sub_1007996B4();
        __chkstk_darwin(v23);
        *(&v37 - 2) = v13;
        sub_100005920(&qword_100AD5328, &qword_100AD5318, &qword_10080FEF8, &protocol conformance descriptor for Regex<A>);
        sub_1007996C4();
        v24 = v50;
        sub_100799694();
        v47 = v21;
        sub_1007A24B4();
        sub_1007996E4();

        v25 = *v43;
        (*v43)(v48, v6);
        (v25)(v24, v6);
        v26 = sub_1001F1160(&qword_100ADDD70, &qword_10081D298);
        v27 = v49;
        v28 = (*(*(v26 - 8) + 48))(v49, 1, v26);
        sub_100007840(v27, &qword_100ADDD68, &qword_10081D290);
        v29 = v42;
        v25();
        if (v28 != 1)
        {
          break;
        }

        v15 = v45;
        v13 = v29;
        v20 = v46 + 1;

        v19 += 2;
        if (v41 == v20)
        {
          goto LABEL_15;
        }
      }

      v30 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003BD0CC(0, v30[2] + 1, 1);
        v30 = v51;
      }

      v32 = v46;
      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        sub_1003BD0CC((v33 > 1), v34 + 1, 1);
        v30 = v51;
      }

      v17 = v32 + 1;
      v30[2] = v34 + 1;
      v40 = v30;
      v35 = &v30[2 * v34];
      v36 = v47;
      v35[4] = v22;
      v35[5] = v36;
      v18 = v39;
      v15 = v45;
      v13 = v29;
    }

    while (v38 != v32);
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
  }

LABEL_15:
}

void sub_1003664D8(uint64_t a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  sub_1007A2A34();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong tableView];

    if (v4)
    {
      [v4 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_1003665B8(uint64_t a1, unint64_t a2)
{

  sub_1003666F4(0x7FFFFFFFFFFFFFFFLL, 1, a1, a2, v4);
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    sub_1003BD0CC(0, v7, 0);
    v8 = v6 + 56;
    do
    {

      v9 = sub_1007A2334();
      v11 = v10;

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_1003BD0CC((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v9;
      v14[5] = v11;
      v8 += 32;
      --v7;
    }

    while (v7);
  }

  return _swiftEmptyArrayStorage;
}

void sub_1003666F4(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_45:
    a1 = sub_10066B39C((a5 > 1), v7, 1, a1);
LABEL_37:
    *(a1 + 2) = v7;
    v33 = &a1[32 * v6];
    *(v33 + 4) = v8;
    *(v33 + 5) = v9;
    *(v33 + 6) = v10;
    *(v33 + 7) = v11;
    return;
  }

  v12 = a3;
  v13 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a4) & 0xF) : (v14 = a3 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v13 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {
LABEL_32:

      return;
    }

    v8 = sub_1007A24B4();
    v9 = v30;
    v10 = v31;
    v11 = v32;

    a1 = sub_10066B39C(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = *(a1 + 2);
    a5 = *(a1 + 3);
    v7 = v6 + 1;
    if (v6 < a5 >> 1)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

  v15 = 4 * v14;
  v45 = _swiftEmptyArrayStorage;
  v16 = 15;
  v17 = 0xE100000000000000;
  v44 = a1;
  do
  {
    v18 = v16 >> 14;
    if (v16 >> 14 == v15)
    {
      break;
    }

    while (1)
    {
      v11 = v16;
      while (1)
      {
        v10 = sub_1007A2494();
        v20 = v19;
        if ((sub_1007A2094() & 1) != 0 || v10 == 44 && v20 == 0xE100000000000000)
        {
          break;
        }

        v10 = sub_1007A3AB4();

        if (v10)
        {
          goto LABEL_17;
        }

        v11 = sub_1007A23B4();
        v18 = v11 >> 14;
        if (v11 >> 14 == v15)
        {
          goto LABEL_33;
        }
      }

LABEL_17:
      if (v16 >> 14 != v18 || (a2 & 1) == 0)
      {
        break;
      }

      v16 = sub_1007A23B4();
      v18 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        goto LABEL_33;
      }
    }

    if (v18 < v16 >> 14)
    {
      __break(1u);
      return;
    }

    v21 = sub_1007A24B4();
    v42 = v22;
    v43 = v21;
    v24 = v23;
    v41 = v25;
    v26 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_10066B39C(0, *(v45 + 2) + 1, 1, v45);
    }

    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    v45 = v26;
    if (v28 >= v27 >> 1)
    {
      v45 = sub_10066B39C((v27 > 1), v28 + 1, 1, v26);
    }

    v10 = v45;
    *(v45 + 2) = v28 + 1;
    v29 = &v45[32 * v28];
    *(v29 + 4) = v43;
    *(v29 + 5) = v24;
    *(v29 + 6) = v42;
    *(v29 + 7) = v41;
    v16 = sub_1007A23B4();
  }

  while (*(v45 + 2) != v44);
LABEL_33:
  if (v16 >> 14 == v15 && (a2 & 1) != 0)
  {
    goto LABEL_32;
  }

  if (v15 < v16 >> 14)
  {
    __break(1u);
    goto LABEL_47;
  }

  v12 = sub_1007A24B4();
  v17 = v34;
  v10 = v35;
  v11 = v36;

  v15 = v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_47:
    v37 = sub_10066B39C(0, *(v15 + 16) + 1, 1, v15);
    goto LABEL_41;
  }

  v37 = v45;
LABEL_41:
  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_10066B39C((v38 > 1), v39 + 1, 1, v37);
  }

  *(v37 + 2) = v39 + 1;
  v40 = &v37[32 * v39];
  *(v40 + 4) = v12;
  *(v40 + 5) = v17;
  *(v40 + 6) = v10;
  *(v40 + 7) = v11;
}

uint64_t sub_100366AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v42 = sub_100799684();
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100ADDD78, &qword_10081D2A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v38 = sub_1001F1160(&qword_100ADDD80, &qword_10081D2A8);
  v43 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v31 - v10;
  v11 = sub_1001F1160(&qword_100AD5318, &qword_10080FEF8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v37 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  __chkstk_darwin(v20);
  v41 = &v31 - v21;
  sub_100005920(&qword_100AD5328, &qword_100AD5318, &qword_10080FEF8, &protocol conformance descriptor for Regex<A>);
  sub_100797BF4();
  v22 = sub_1007996A4();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  sub_100797C24();
  sub_10036703C(a1, v16);
  sub_100799664();
  v23 = *(v12 + 8);
  v34 = v12 + 8;
  v23(v16, v11);
  v24 = *(v44 + 8);
  v44 += 8;
  v35 = v24;
  v24(v4, v42);
  sub_100007840(v7, &qword_100ADDD78, &qword_10081D2A0);
  v25 = v36;
  sub_100797C14();
  sub_100005920(qword_100ADDD88, &qword_100ADDD80, &qword_10081D2A8, &protocol conformance descriptor for ZeroOrMore<A>);
  v26 = v38;
  sub_100797BF4();
  v27 = *(v43 + 8);
  v43 += 8;
  v33 = v27;
  v27(v25, v26);
  v32 = v19;
  sub_100797C04();
  sub_100797C24();
  sub_100799674();
  v28 = v37;
  v29 = v40;
  sub_100799674();
  sub_100799654();
  v23(v28, v11);
  v23(v16, v11);
  v35(v4, v42);
  v23(v32, v11);
  v33(v29, v26);
  return (v23)(v41, v11);
}

uint64_t sub_10036703C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a1;
  v20[1] = a2;
  v2 = sub_100799684();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AD5318, &qword_10080FEF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  __chkstk_darwin(v15);
  v17 = v20 - v16;
  v23 = 46;
  v24 = 0xE100000000000000;
  sub_100367368();
  sub_100797BF4();
  sub_100005920(&qword_100AD5328, &qword_100AD5318, &qword_10080FEF8, &protocol conformance descriptor for Regex<A>);
  sub_100797BF4();
  v23 = v25;
  v24 = v26;
  sub_100797C04();

  sub_100797C24();
  sub_100799674();
  sub_100799674();
  sub_100799654();
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  (*(v21 + 8))(v4, v22);
  v18(v14, v5);
  return (v18)(v17, v5);
}

unint64_t sub_100367368()
{
  result = qword_100ADFAE0;
  if (!qword_100ADFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFAE0);
  }

  return result;
}

void sub_100367410()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
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

void sub_1003674B4(void *a1)
{
  v1 = a1;
  sub_100367410();
}

uint64_t sub_1003674FC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1003677A4(a1);
  (*(*(*(v2 + qword_100B23080) - 8) + 8))(a1);
  return v5;
}

void *sub_1003675C0(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100B23080);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  (*(v5 + 16))(&v12 - v7, v6);
  v8 = sub_10079CBA4();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_1003676F8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1003677A4(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_10079CBC4();
}

uint64_t sub_10036788C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_1003678AC, 0, 0);
}

uint64_t sub_1003678AC()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[4] = *(v1 + 32);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_100798C84();

  sub_1001F1160(&qword_100ADDEF0, &qword_10081D490);
  sub_100798DC4();

  v4 = v0[3];
  v0[7] = v4;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_1007A1EE4();
  v7 = sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
  *v5 = v0;
  v5[1] = sub_100367A18;

  return Task.value.getter(v0 + 2, v4, v6, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_100367A18()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100367B94;
  }

  else
  {
    v2 = sub_100367B2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100367B2C()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100367B94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100367BF8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_100367C18, 0, 0);
}

uint64_t sub_100367C18()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[4] = *(v1 + 32);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_100798C84();

  sub_1001F1160(&qword_100ADDEF8, &qword_10081D4D0);
  sub_100798DC4();

  v4 = v0[3];
  v0[7] = v4;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_10036D570();
  v7 = sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
  *v5 = v0;
  v5[1] = sub_100367D84;

  return Task.value.getter(v0 + 2, v4, v6, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_100367D84()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10036D9B4;
  }

  else
  {
    v2 = sub_10036D9B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100367E98(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_100367EB8, 0, 0);
}

uint64_t sub_100367EB8()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[4] = *(v1 + 32);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_100798C84();

  sub_1001F1160(&qword_100ADDF00, &qword_10081D4F8);
  sub_100798DC4();

  v4 = v0[3];
  v0[7] = v4;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_1001F1160(&qword_100ADDF08, &qword_10081D500);
  v7 = sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
  *v5 = v0;
  v5[1] = sub_100367D84;

  return Task.value.getter(v0 + 2, v4, v6, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_100368064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  v9 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  if (*(a1 + 40))
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v13 = sub_1007A2744();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v11, a2, v13);
    (*(v14 + 56))(v11, 0, 1, v13);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;

    v12 = a5(0, 0, v11, a4, v15);
    *(a1 + 40) = v12;
  }

  return v12;
}

uint64_t sub_1003681F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100368218, 0, 0);
}

uint64_t sub_100368218()
{
  v4 = (*(v0[3] + 16) + **(v0[3] + 16));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10036830C;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_10036830C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100368400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1007A3C44();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1007A3AB4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1003684F8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1007A3BF4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1003685A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10079A144();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10036D89C(&qword_100AD36C8, &type metadata accessor for ClusteringOptions.MediaType, &protocol conformance descriptor for ClusteringOptions.MediaType), v7 = sub_1007A2074(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10036D89C(&qword_100AD36D0, &type metadata accessor for ClusteringOptions.MediaType, &protocol conformance descriptor for ClusteringOptions.MediaType);
      v15 = sub_1007A2124();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1003687B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10079A9B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10036D89C(&qword_100ADDF10, &type metadata accessor for EventType, &protocol conformance descriptor for EventType), v7 = sub_1007A2074(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10036D89C(&qword_100ADDF18, &type metadata accessor for EventType, &protocol conformance descriptor for EventType);
      v15 = sub_1007A2124();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1003689D0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B23090);
  sub_100008B98(v0, qword_100B23090);
  return sub_10079ACD4();
}

void sub_100368A54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v89 = a2;
  v5 = sub_1001F1160(&qword_100AD6738, &qword_100812D90);
  __chkstk_darwin(v5 - 8);
  v7 = &v71 - v6;
  v8 = sub_1001F1160(&qword_100AD6730, &qword_100812D88);
  __chkstk_darwin(v8 - 8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v71 - v12);
  v14 = sub_10079A734();
  v82 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  if (!*(a1 + 16))
  {
    goto LABEL_25;
  }

  v20 = sub_10000E53C(25705, 0xE200000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_1000077D8(*(a1 + 56) + 32 * v20, &v85, &unk_100AD5B40, &unk_100811300);
  v87 = v85;
  v88 = v86;
  if (!*(&v86 + 1))
  {

    sub_100007840(&v87, &unk_100AD5B40, &unk_100811300);
    goto LABEL_26;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:

LABEL_26:
    sub_10036D348();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
    return;
  }

  v23 = v83;
  v22 = v84;
  v24 = HIBYTE(v84) & 0xF;
  v25 = v83 & 0xFFFFFFFFFFFFLL;
  if ((v84 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v84) & 0xF;
  }

  else
  {
    v26 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
LABEL_72:

    goto LABEL_25;
  }

  v81 = v84;
  if ((v84 & 0x1000000000000000) != 0)
  {

    v78 = v23;
    sub_10063E4AC(v23, v22, 10);
    v79 = v43;
    v45 = v44;

    v23 = v78;
    v29 = v79;
    if (v45)
    {
      goto LABEL_72;
    }

    goto LABEL_75;
  }

  if ((v84 & 0x2000000000000000) != 0)
  {
    *&v87 = v83;
    *(&v87 + 1) = v84 & 0xFFFFFFFFFFFFFFLL;
    if (v83 == 43)
    {
      if (v24)
      {
        if (--v24)
        {
          v29 = 0;
          v38 = &v87 + 1;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            if (!is_mul_ok(v29, 0xAuLL))
            {
              break;
            }

            v32 = __CFADD__(10 * v29, v39);
            v29 = 10 * v29 + v39;
            if (v32)
            {
              break;
            }

            ++v38;
            if (!--v24)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_111:
      __break(1u);
      return;
    }

    if (v83 != 45)
    {
      if (v24)
      {
        v29 = 0;
        v41 = &v87;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            break;
          }

          if (!is_mul_ok(v29, 0xAuLL))
          {
            break;
          }

          v32 = __CFADD__(10 * v29, v42);
          v29 = 10 * v29 + v42;
          if (v32)
          {
            break;
          }

          ++v41;
          if (!--v24)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v24)
    {
      if (--v24)
      {
        v29 = 0;
        v34 = &v87 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          if (!is_mul_ok(v29, 0xAuLL))
          {
            break;
          }

          v32 = 10 * v29 >= v35;
          v29 = 10 * v29 - v35;
          if (!v32)
          {
            break;
          }

          ++v34;
          if (!--v24)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_109;
  }

  if ((v83 & 0x1000000000000000) != 0)
  {
    v27 = ((v84 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v78 = v83;
    v27 = sub_1007A37B4();
    v23 = v78;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v29 = 0;
        if (v27)
        {
          v36 = v27 + 1;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              goto LABEL_70;
            }

            if (!is_mul_ok(v29, 0xAuLL))
            {
              goto LABEL_70;
            }

            v32 = __CFADD__(10 * v29, v37);
            v29 = 10 * v29 + v37;
            if (v32)
            {
              goto LABEL_70;
            }

            ++v36;
            if (!--v24)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_62;
      }

      goto LABEL_70;
    }

    goto LABEL_110;
  }

  if (v28 == 45)
  {
    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v29 = 0;
        if (v27)
        {
          v30 = v27 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_70;
            }

            if (!is_mul_ok(v29, 0xAuLL))
            {
              goto LABEL_70;
            }

            v32 = 10 * v29 >= v31;
            v29 = 10 * v29 - v31;
            if (!v32)
            {
              goto LABEL_70;
            }

            ++v30;
            if (!--v24)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_62:
        LOBYTE(v24) = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (v25)
  {
    v29 = 0;
    if (v27)
    {
      while (1)
      {
        v40 = *v27 - 48;
        if (v40 > 9)
        {
          goto LABEL_70;
        }

        if (!is_mul_ok(v29, 0xAuLL))
        {
          goto LABEL_70;
        }

        v32 = __CFADD__(10 * v29, v40);
        v29 = 10 * v29 + v40;
        if (v32)
        {
          goto LABEL_70;
        }

        ++v27;
        if (!--v25)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_70:
  v29 = 0;
  LOBYTE(v24) = 1;
LABEL_71:
  LOBYTE(v85) = v24;
  if (v24)
  {
    goto LABEL_72;
  }

LABEL_75:
  v78 = v23;
  v79 = v29;
  if (*(a1 + 16))
  {
    v46 = sub_10000E53C(1701869940, 0xE400000000000000);
    if (v47)
    {
      sub_1000077D8(*(a1 + 56) + 32 * v46, &v85, &unk_100AD5B40, &unk_100811300);
      v87 = v85;
      v88 = v86;
      if (*(&v86 + 1))
      {
        v48 = swift_dynamicCast();
        v49 = v48 == 0;
        if (v48)
        {
          v50 = v83;
        }

        else
        {
          v50 = 0;
        }

        if (v49)
        {
          v51 = 0;
        }

        else
        {
          v51 = v84;
        }

        goto LABEL_86;
      }

      sub_100007840(&v87, &unk_100AD5B40, &unk_100811300);
    }
  }

  v50 = 0;
  v51 = 0;
LABEL_86:
  sub_10036C038(v50, v51, v19);
  if (v3)
  {

    return;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_100;
  }

  v52 = sub_10000E53C(0x7475626972747461, 0xEA00000000007365);
  if ((v53 & 1) == 0)
  {
    goto LABEL_100;
  }

  sub_1000077D8(*(a1 + 56) + 32 * v52, &v85, &unk_100AD5B40, &unk_100811300);
  v87 = v85;
  v88 = v86;
  if (!*(&v86 + 1))
  {
    goto LABEL_98;
  }

  sub_1001F1160(&qword_100ADDEC0, &qword_10081D470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_100;
  }

  v54 = v83;
  if (!v83)
  {
    goto LABEL_100;
  }

  if (!*(v83 + 16) || (v55 = sub_10000E53C(1701667182, 0xE400000000000000), (v56 & 1) == 0))
  {

    goto LABEL_100;
  }

  sub_1000077D8(*(v54 + 56) + 32 * v55, &v85, &unk_100AD5B40, &unk_100811300);

  v87 = v85;
  v88 = v86;
  if (!*(&v86 + 1))
  {
LABEL_98:
    sub_100007840(&v87, &unk_100AD5B40, &unk_100811300);
    goto LABEL_100;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_100:
    v80 = 0xE700000000000000;
    v74 = 0x6E776F6E6B6E75;
    goto LABEL_101;
  }

  v74 = v83;
  v80 = v84;
LABEL_101:
  v75 = v10;
  v76 = v7;
  if (qword_100AD1448 != -1)
  {
    swift_once();
  }

  v57 = sub_10079ACE4();
  sub_100008B98(v57, qword_100B23090);

  v58 = v80;

  v77 = sub_10079ACC4();
  v59 = sub_1007A2994();
  v80 = v58;

  v73 = v59;
  v60 = v77;
  if (os_log_type_enabled(v77, v59))
  {
    v61 = swift_slowAlloc();
    v63 = v80;
    v62 = v81;
    v64 = v61;
    v72 = swift_slowAlloc();
    *&v87 = v72;
    *v64 = 136315394;
    v78 = sub_1000070F4(v78, v62, &v87);

    *(v64 + 4) = v78;
    *(v64 + 12) = 2080;
    v65 = sub_1000070F4(v74, v63, &v87);

    *(v64 + 14) = v65;
    v66 = v77;
    _os_log_impl(&_mh_execute_header, v77, v73, "    storeID: %s title: %s", v64, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v68 = v75;
  v67 = v76;
  sub_10036C174(a1, v19, v13);

  v69 = v82;
  (*(v82 + 16))(v16, v19, v14);
  v70 = sub_10079A774();
  (*(*(v70 - 8) + 56))(v67, 1, 1, v70);
  sub_1000077D8(v13, v68, &qword_100AD6730, &qword_100812D88);
  sub_10079A5E4();
  sub_100007840(v13, &qword_100AD6730, &qword_100812D88);
  (*(v69 + 8))(v19, v14);
}