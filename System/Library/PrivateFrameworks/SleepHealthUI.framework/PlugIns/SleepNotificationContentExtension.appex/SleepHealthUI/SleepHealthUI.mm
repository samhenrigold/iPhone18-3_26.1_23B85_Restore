void sub_100001720()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for NotificationViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 heightAnchor];

    v4 = [v3 constraintEqualToConstant:0.0];
    [v4 setActive:1];

    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000018F8(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_100004B84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004B64();
  v8 = sub_100004B74();
  v9 = sub_100004C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v28 = v2;
    v11 = a1;
    v12 = v10;
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136446210;
    v14 = sub_100004CD4();
    v16 = sub_100003C70(v14, v15, &v29);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] Did receive notification", v12, 0xCu);
    sub_100004248(v13);

    a1 = v11;
    v2 = v28;
  }

  (*(v5 + 8))(v7, v4);
  v17 = [a1 request];
  v18 = [v17 content];

  v19 = [v18 categoryIdentifier];
  v20 = sub_100004BA4();
  v22 = v21;

  if (v20 == sub_100004BA4() && v22 == v23)
  {

    sub_1000045B4();
  }

  else
  {
    v24 = sub_100004CC4();

    if (v24)
    {
      sub_1000045B4();
    }

    else
    {
      sub_100001D00(a1);
    }
  }

  v25 = [v2 extensionContext];
  if (v25)
  {
    v26 = v25;
    sub_10000456C(0, &qword_10000C5F0, UNNotificationAction_ptr);
    isa = sub_100004BE4().super.isa;

    [v26 setNotificationActions:isa];
  }

  else
  {
  }
}

void *sub_100001D00(void *a1)
{
  v49[1] = swift_getObjectType();
  v3 = sub_100004B84();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v56 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004AC4();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004AE4();
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004B24();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v49 - v16;
  v59 = 0;
  v18 = *(v1 + OBJC_IVAR___NotificationViewController_sleepStore);
  v19 = [a1 date];
  sub_100004B04();

  isa = sub_100004AF4().super.isa;
  v57 = *(v12 + 8);
  v58 = v11;
  v57(v17, v11);
  v21 = [v18 upcomingResolvedScheduleOccurrenceAfterDate:isa alarmStatus:&v59 error:0];

  if (v21)
  {
    v60 = &_swiftEmptyArrayStorage;
    v22 = [v21 wakeUpEvent];
    v23 = [v22 dueDate];

    sub_100004B04();
    sub_100004AD4();
    sub_100004AB4();
    v24 = sub_100004B14();
    v26 = v25;
    (*(v54 + 8))(v7, v55);
    (*(v52 + 8))(v10, v53);
    if (v59 - 2 >= 2)
    {
      if (v59 > 1)
      {
        result = sub_100004C94();
        __break(1u);
        return result;
      }

      if (qword_10000C520 != -1)
      {
        swift_once();
      }

      v42.super.isa = qword_10000C6F8;
      v48._countAndFlagsBits = 0xE000000000000000;
      v62._countAndFlagsBits = 0xD000000000000019;
      v62._object = 0x80000001000057D0;
      v64.value._countAndFlagsBits = 0;
      v64.value._object = 0;
      v66._countAndFlagsBits = 0;
      v66._object = 0xE000000000000000;
      sub_100004A84(v62, v64, v42, v66, 0, v48);
    }

    else
    {
      if (qword_10000C520 != -1)
      {
        swift_once();
      }

      v27.super.isa = qword_10000C6F8;
      v48._countAndFlagsBits = 0xE000000000000000;
      v61._object = 0x80000001000057B0;
      v61._countAndFlagsBits = 0xD000000000000018;
      v63.value._countAndFlagsBits = 0;
      v63.value._object = 0;
      v65._countAndFlagsBits = 0;
      v65._object = 0xE000000000000000;
      sub_100004A84(v61, v63, v27, v65, 0, v48);
    }

    sub_10000445C(0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100005240;
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = sub_100004518();
    *(v43 + 32) = v24;
    *(v43 + 40) = v26;
    sub_100004BB4();

    sub_100004BA4();
    v44 = sub_100004B94();

    v45 = sub_100004B94();

    v46 = [objc_opt_self() actionWithIdentifier:v44 title:v45 options:4];

    v47 = v46;
    sub_100004BD4();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100004BF4();
    }

    sub_100004C04();

    v57(v15, v58);
    return v60;
  }

  else
  {
    sub_100004B64();
    v28 = a1;
    v29 = sub_100004B74();
    v30 = sub_100004C44();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v31 = 136446466;
      v32 = sub_100004CD4();
      v34 = sub_100003C70(v32, v33, &v60);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2082;
      v35 = [v28 date];
      sub_100004B04();

      sub_100004404();
      v36 = v58;
      v37 = sub_100004CA4();
      v39 = v38;
      v57(v17, v36);
      v40 = sub_100003C70(v37, v39, &v60);

      *(v31 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%{public}s] Did not find an upcoming occurrence after %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    (*(v50 + 8))(v56, v51);
    return &_swiftEmptyArrayStorage;
  }
}

void sub_100002500(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v122 = a2;
  v123 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_100004B54();
  v118 = *(v7 - 8);
  v119 = v7;
  __chkstk_darwin(v7);
  v116 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_100004AA4();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004B84();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v113 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v112 = &v108 - v15;
  v16 = __chkstk_darwin(v14);
  v120 = &v108 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v108 - v19;
  __chkstk_darwin(v18);
  v22 = &v108 - v21;
  sub_100004B64();
  v23 = a1;
  v24 = sub_100004B74();
  v25 = sub_100004C54();

  v26 = os_log_type_enabled(v24, v25);
  v124 = v10;
  v121 = ObjectType;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    aBlock = v110;
    *v27 = 136446466;
    v28 = sub_100004CD4();
    v30 = sub_100003C70(v28, v29, &aBlock);
    v111 = v4;
    v31 = v30;

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    v32 = v23;
    v33 = [v32 description];
    v34 = sub_100004BA4();
    v109 = v11;
    v35 = v34;
    v36 = v20;
    v37 = v23;
    v39 = v38;

    v4 = v111;
    v40 = sub_100003C70(v35, v39, &aBlock);
    v23 = v37;
    v20 = v36;

    *(v27 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s] Did receive notification response: %{public}s", v27, 0x16u);
    swift_arrayDestroy();

    v41 = *(v109 + 8);
    v41(v22, v124);
  }

  else
  {

    v41 = *(v11 + 8);
    v41(v22, v10);
  }

  v42 = [v23 actionIdentifier];
  v43 = sub_100004BA4();
  v45 = v44;

  if (sub_100004BA4() == v43 && v46 == v45)
  {

    goto LABEL_8;
  }

  v47 = sub_100004CC4();

  if (v47)
  {
LABEL_8:

    sub_100004B64();
    v48 = sub_100004B74();
    v49 = sub_100004C54();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock = v51;
      *v50 = 136446210;
      v52 = sub_100004CD4();
      v54 = sub_100003C70(v52, v53, &aBlock);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "[%{public}s] Forwarding action to change next alarm", v50, 0xCu);
      sub_100004248(v51);
    }

LABEL_10:

    v41(v20, v124);
    v55 = [objc_allocWithZone(HKSPAnalyticsSleepNotificationEvent) initWithType:0 action:1];
    v56 = [*(v4 + OBJC_IVAR___NotificationViewController_sleepStore) analyticsManager];
    [v56 trackEvent:v55];

    v57 = 2;
LABEL_11:
    v122(v57);

    return;
  }

  if (sub_100004BA4() == v43 && v58 == v45)
  {

    goto LABEL_16;
  }

  v59 = sub_100004CC4();

  if (v59)
  {
LABEL_16:

    v20 = v120;
    sub_100004B64();
    v48 = sub_100004B74();
    v60 = sub_100004C54();
    if (os_log_type_enabled(v48, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock = v62;
      *v61 = 136446210;
      v63 = sub_100004CD4();
      v65 = sub_100003C70(v63, v64, &aBlock);

      *(v61 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v48, v60, "[%{public}s] Forwarding action to turn on next alarm", v61, 0xCu);
      sub_100004248(v62);
    }

    goto LABEL_10;
  }

  if (sub_100004BA4() == v43 && v66 == v45)
  {

LABEL_23:

    v68 = *(v4 + OBJC_IVAR___NotificationViewController_sleepStore);
    v69 = swift_allocObject();
    *(v69 + 16) = v121;
    v129 = sub_1000049F0;
    v130 = v69;
    aBlock = _NSConcreteStackBlock;
    v126 = 1107296256;
    v127 = sub_100003358;
    v128 = &unk_100008570;
    v70 = _Block_copy(&aBlock);

    [v68 configureSleepFocusWithState:3 completion:v70];
    _Block_release(v70);
    v71 = [objc_allocWithZone(HKSPAnalyticsSleepNotificationEvent) initWithType:1 action:2];
    v72 = [v68 analyticsManager];
LABEL_24:
    v73 = v72;
    [v73 trackEvent:v71];

    v122(1);
    return;
  }

  v67 = sub_100004CC4();

  if (v67)
  {
    goto LABEL_23;
  }

  if (sub_100004BA4() == v43 && v74 == v45)
  {

LABEL_29:

    v76 = *(v4 + OBJC_IVAR___NotificationViewController_sleepStore);
    v77 = swift_allocObject();
    *(v77 + 16) = v121;
    v129 = sub_1000042AC;
    v130 = v77;
    aBlock = _NSConcreteStackBlock;
    v126 = 1107296256;
    v127 = sub_100003358;
    v128 = &unk_100008520;
    v78 = _Block_copy(&aBlock);

    [v76 configureSleepFocusWithState:2 completion:v78];
    _Block_release(v78);
    v71 = [objc_allocWithZone(HKSPAnalyticsSleepNotificationEvent) initWithType:1 action:3];
    v72 = [v76 analyticsManager];
    goto LABEL_24;
  }

  v75 = sub_100004CC4();

  if (v75)
  {
    goto LABEL_29;
  }

  if (sub_100004BA4() == v43 && v79 == v45)
  {

LABEL_34:
    v81 = HKSPSleepFocusConfigurationURL();
    if (v81)
    {
      v82 = v114;
      v83 = v81;
      sub_100004A94();

      v84 = v116;
      sub_100004B44();
      *(swift_allocObject() + 16) = v121;
      sub_100004B34();

      (*(v118 + 8))(v84, v119);
      (*(v115 + 8))(v82, v117);
    }

    else
    {
      v85 = v112;
      sub_100004B64();
      v86 = sub_100004B74();
      v87 = sub_100004C44();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        aBlock = v89;
        *v88 = 136446210;
        v90 = sub_100004CD4();
        v92 = sub_100003C70(v90, v91, &aBlock);

        *(v88 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v86, v87, "[%{public}s] failed to create sleep focus configuration url", v88, 0xCu);
        sub_100004248(v89);
      }

      v41(v85, v124);
    }

    v55 = [objc_allocWithZone(HKSPAnalyticsSleepNotificationEvent) initWithType:1 action:4];
    v93 = [*(v4 + OBJC_IVAR___NotificationViewController_sleepStore) analyticsManager];
    [v93 trackEvent:v55];

    v57 = 1;
    goto LABEL_11;
  }

  v80 = sub_100004CC4();

  if (v80)
  {
    goto LABEL_34;
  }

  v94 = v113;
  sub_100004B64();
  v95 = v23;
  v96 = sub_100004B74();
  v97 = sub_100004C54();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v98 = 136446466;
    v99 = sub_100004CD4();
    v101 = sub_100003C70(v99, v100, &aBlock);

    *(v98 + 4) = v101;
    *(v98 + 12) = 2082;
    v102 = [v95 actionIdentifier];
    v103 = sub_100004BA4();
    v105 = v104;

    v106 = sub_100003C70(v103, v105, &aBlock);

    *(v98 + 14) = v106;
    _os_log_impl(&_mh_execute_header, v96, v97, "[%{public}s] Forwarding unrecognized action %{public}s", v98, 0x16u);
    swift_arrayDestroy();

    v107 = v113;
  }

  else
  {

    v107 = v94;
  }

  v41(v107, v124);
  v122(2);
}

void sub_100003358(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000033D0(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100004B84();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_100004B64();
    swift_errorRetain();
    v10 = sub_100004B74();
    v11 = sub_100004C44();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v12 = 136446466;
      v14 = sub_100004CD4();
      v16 = sub_100003C70(v14, v15, &v20);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2114;
      if (a2)
      {
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v12 + 14) = v17;
      *v13 = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] failed to configure sleep focus with error: %{public}@", v12, 0x16u);
      sub_1000042E0(v13);

      sub_100004248(v19);
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_1000035F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004B84();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_100004B64();
    swift_errorRetain();
    v8 = sub_100004B74();
    v9 = sub_100004C44();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18 = v3;
      v11 = v10;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v11 = 136446466;
      v14 = sub_100004CD4();
      v16 = sub_100003C70(v14, v15, &v19);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2114;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v17;
      *v12 = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] failed to launch configuration with error: %{public}@", v11, 0x16u);
      sub_1000042E0(v12);

      sub_100004248(v13);

      return (*(v4 + 8))(v7, v18);
    }

    else
    {

      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

id sub_1000038C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___NotificationViewController_sleepStore;
  v7 = objc_allocWithZone(HKSPSleepStore);
  v8 = sub_100004B94();
  v9 = [v7 initWithIdentifier:v8];

  *&v3[v6] = v9;
  if (a2)
  {
    v10 = sub_100004B94();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for NotificationViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_100003A94(void *a1)
{
  v3 = OBJC_IVAR___NotificationViewController_sleepStore;
  v4 = objc_allocWithZone(HKSPSleepStore);
  v5 = sub_100004B94();
  v6 = [v4 initWithIdentifier:v5];

  *&v1[v3] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for NotificationViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_100003C08(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NotificationViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100003C70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003D3C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000043A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004248(v11);
  return v7;
}

unint64_t sub_100003D3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100003E48(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100004C84();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100003E48(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003E94(a1, a2);
  sub_100003FC4(&off_1000084A8);
  return v3;
}

char *sub_100003E94(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000040B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100004C84();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100004BC4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000040B0(v10, 0);
        result = sub_100004C74();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100003FC4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000413C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000040B0(uint64_t a1, uint64_t a2)
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

  sub_100004994(0, &qword_10000C5C8, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000413C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004994(0, &qword_10000C5C8, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100004248(void *a1)
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

uint64_t sub_1000042C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042E0(uint64_t a1)
{
  sub_10000433C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000433C(uint64_t a1)
{
  if (!qword_10000C5B8)
  {
    sub_10000456C(255, &qword_10000C5C0, NSObject_ptr);
    v1 = sub_100004C64();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C5B8);
    }
  }
}

uint64_t sub_1000043A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100004404()
{
  result = qword_10000C5D0;
  if (!qword_10000C5D0)
  {
    sub_100004B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5D0);
  }

  return result;
}

void sub_10000445C(uint64_t a1)
{
  if (!qword_10000C5D8)
  {
    sub_1000044B4();
    v1 = sub_100004CB4();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C5D8);
    }
  }
}

unint64_t sub_1000044B4()
{
  result = qword_10000C5E0;
  if (!qword_10000C5E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10000C5E0);
  }

  return result;
}

unint64_t sub_100004518()
{
  result = qword_10000C5E8;
  if (!qword_10000C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5E8);
  }

  return result;
}

uint64_t sub_10000456C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000045B4()
{
  v18._object = &_swiftEmptyArrayStorage;
  if (qword_10000C520 != -1)
  {
    swift_once();
  }

  v0 = qword_10000C6F8;
  v18._countAndFlagsBits = 0xE000000000000000;
  v22._countAndFlagsBits = 0x45434E454C4953;
  v22._object = 0xE700000000000000;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v1.super.isa = qword_10000C6F8;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_100004A84(v22, v25, v1, v28, 0, v18);
  v2 = HKSPBedtimeReminderSilenceAllNotificationsAction;
  v3 = sub_100004B94();

  v4 = objc_opt_self();
  v5 = [v4 actionWithIdentifier:v2 title:v3 options:0];

  v6 = v5;
  sub_100004BD4();
  if (*((v19._object & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19._object & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100004BF4();
  }

  sub_100004C04();
  v19._countAndFlagsBits = 0xE000000000000000;
  v23._countAndFlagsBits = 0x574F4C4C41;
  v23._object = 0xE500000000000000;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v7.super.isa = v0;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100004A84(v23, v26, v7, v29, 0, v19);
  v8 = HKSPBedtimeReminderAllowAllNotificationsAction;
  v9 = sub_100004B94();

  v10 = [v4 actionWithIdentifier:v8 title:v9 options:0];

  v11 = v10;
  sub_100004BD4();
  if (*((v20._object & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20._object & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100004BF4();
  }

  sub_100004C04();
  v20._countAndFlagsBits = 0xE000000000000000;
  v24._countAndFlagsBits = 0x52554749464E4F43;
  v24._object = 0xE900000000000045;
  v27.value._countAndFlagsBits = 0;
  v27.value._object = 0;
  v12.super.isa = v0;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100004A84(v24, v27, v12, v30, 0, v20);
  v13 = HKSPBedtimeReminderConfigureNotificationsAction;
  v14 = sub_100004B94();

  v15 = [v4 actionWithIdentifier:v13 title:v14 options:0];

  v16 = v15;
  sub_100004BD4();
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100004BF4();
  }

  sub_100004C04();

  return v21;
}

uint64_t sub_100004920()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100004994(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_100004A2C()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10000C6F8 = result;
  return result;
}