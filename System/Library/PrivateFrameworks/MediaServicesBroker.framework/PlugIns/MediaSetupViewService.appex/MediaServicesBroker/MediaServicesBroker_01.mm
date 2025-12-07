uint64_t sub_100014D10(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_29:
      v21 = v6 - 8;
      v5 -= 8;
      v22 = v14;
      do
      {
        v23 = *(v22 - 1);
        v22 -= 8;
        v24 = *(v23 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name + 8);
        v25 = (*v21 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
        v26 = *(v23 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name) == *v25 && v24 == v25[1];
        if (!v26 && (sub_100025CAC() & 1) != 0)
        {
          if (v5 + 8 != v6)
          {
            *v5 = *v21;
          }

          if (v14 <= v4 || (v6 -= 8, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_44;
          }

          goto LABEL_29;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v22;
        }

        v5 -= 8;
        v14 = v22;
      }

      while (v22 > v4);
      v14 = v22;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = (*v6 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*v4 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
        v19 = v16 == *v18 && v17 == v18[1];
        if (v19 || (sub_100025CAC() & 1) == 0)
        {
          break;
        }

        v20 = v6;
        v19 = v7 == v6;
        v6 += 8;
        if (!v19)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v20 = v4;
      v19 = v7 == v4;
      v4 += 8;
      if (v19)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = *v20;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
  }

LABEL_44:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_100014F78(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100015004(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_100015018(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_100025C3C();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100013ED0(v3, 0);
  sub_1000150AC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000150AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100025C3C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100025C3C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100015A54();
          for (i = 0; i != v6; ++i)
          {
            sub_100002370(&qword_10003B7D0, &qword_100027200);
            v9 = sub_1000230F8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeItem(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100015240(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___MediaSetupNavigationController_hostBundleID];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_serviceAccount] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_setupSession] = 0;
  v4 = &v1[OBJC_IVAR___MediaSetupNavigationController_stepContext];
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v5 = &v1[OBJC_IVAR___MediaSetupNavigationController_testFlags];
  *v5 = 0;
  v5[8] = 1;
  sub_1000257CC();
  v1[OBJC_IVAR___MediaSetupNavigationController_firstVC] = 1;
  v1[OBJC_IVAR___MediaSetupNavigationController_dismissed] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcAccountMismatch] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcAddToHome] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcMultiHomeCustomize] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcDone] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcLearnMore] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcSoftwareUpdate] = 0;
  v1[OBJC_IVAR___MediaSetupNavigationController_waiting] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MediaSetupNavigationController(0);
  return objc_msgSendSuper2(&v7, "initWithRootViewController:", a1);
}

void sub_10001539C(uint64_t a1)
{
  oslog = sub_1000257BC();
  v1 = sub_1000259EC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10001EB4C(0xD00000000000002DLL, 0x80000001000285C0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000E734(v3);
  }
}

void sub_1000154A8(uint64_t a1)
{
  oslog = sub_1000257BC();
  v1 = sub_1000259EC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10001EB4C(0xD000000000000024, 0x8000000100028590, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000E734(v3);
  }
}

uint64_t sub_1000155B4(uint64_t a1)
{
  v1 = sub_1000257BC();
  v2 = sub_1000259EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10001EB4C(0xD000000000000027, 0x8000000100028560, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000E734(v4);
  }

  return 1;
}

void sub_1000156B4(uint64_t a1)
{
  oslog = sub_1000257BC();
  v1 = sub_1000259EC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10001EB4C(0xD000000000000025, 0x8000000100028530, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000E734(v3);
  }
}

uint64_t sub_1000157C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100015870(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100015920()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001597C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002370(&qword_10003B7C0, &qword_100026FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100015A54()
{
  result = qword_10003B7D8;
  if (!qword_10003B7D8)
  {
    sub_10000EACC(&qword_10003B7D0, &qword_100027200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B7D8);
  }

  return result;
}

uint64_t sub_100015ABC()
{
  v1 = sub_1000256DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100015B80(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000256DC() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100013214(a1, a2, v6, v7);
}

uint64_t sub_100015C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015C34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100015C9C(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v35._object = a2;
  v5 = [a2 serviceName];
  v6 = sub_1000258CC();
  v8 = v7;

  v9 = objc_opt_self();

  v10 = [v9 mainBundle];
  v35._countAndFlagsBits = 0xE000000000000000;
  v41._object = 0x8000000100028680;
  v41._countAndFlagsBits = 0xD000000000000011;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v11.super.isa = v10;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  sub_10002567C(v41, v44, v11, v47, 0, v35);

  sub_100002370(&qword_10003B2F8, "\n%");
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100026BD0;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100004010();
  *(v12 + 32) = v6;
  *(v12 + 40) = v8;
  v13 = sub_1000258DC();
  v15 = v14;

  v16 = [v9 mainBundle];
  v36._countAndFlagsBits = 0xE000000000000000;
  v42._countAndFlagsBits = 0x5445445F454E4F44;
  v42._object = 0xEB000000004C4941;
  v45.value._countAndFlagsBits = 0;
  v45.value._object = 0;
  v17.super.isa = v16;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v18 = sub_10002567C(v42, v45, v17, v48, 0, v36);
  v20 = v19;

  v21 = a1;
  v22 = sub_1000160B8(v21, v13, v15, v18, v20);
  v23 = [v9 mainBundle];
  v37._countAndFlagsBits = 0xE000000000000000;
  v43._countAndFlagsBits = 1162760004;
  v43._object = 0xE400000000000000;
  v46.value._countAndFlagsBits = 0;
  v46.value._object = 0;
  v24.super.isa = v23;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v25 = sub_10002567C(v43, v46, v24, v49, 0, v37);
  v27 = v26;

  v28 = sub_1000235DC(0, v25, v27);

  [v28 addTarget:v22 action:"requestDismiss" forControlEvents:64];

  v29 = [v22 buttonTray];
  [v29 addButton:v28];

  v30 = objc_allocWithZone(type metadata accessor for MainContentView());
  swift_bridgeObjectRetain_n();
  v31 = v38;
  v32 = sub_100023CA0(1, a3, a4, v31);
  v33 = [v22 contentView];

  [v33 addSubview:v32];
  sub_10001FD28();

  swift_bridgeObjectRelease_n();
  return v22;
}

id sub_100016060(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DoneViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000160B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC21MediaSetupViewService23SetupBaseViewController_mainController] = a1;
  v6 = a1;
  v7 = sub_1000258BC();

  v8 = sub_1000258BC();

  v13.receiver = v5;
  v13.super_class = type metadata accessor for SetupBaseViewController();
  v9 = objc_msgSendSuper2(&v13, "initWithTitle:detailText:icon:contentLayout:", v7, v8, 0, 2);

  v10 = v9;
  [v10 setModalPresentationStyle:2];
  v11 = [v10 navigationItem];
  [v11 setHidesBackButton:1];

  return v10;
}

id sub_100016288(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetupBaseViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000162F0(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v4 = [a2 serviceName];
  v5 = sub_1000258CC();
  v7 = v6;

  v8 = objc_opt_self();

  v9 = [v8 mainBundle];
  v43._countAndFlagsBits = 0xE000000000000000;
  v52._countAndFlagsBits = 0xD000000000000017;
  v52._object = 0x80000001000287F0;
  v56.value._countAndFlagsBits = 0;
  v56.value._object = 0;
  v10.super.isa = v9;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  sub_10002567C(v52, v56, v10, v60, 0, v43);

  sub_100002370(&qword_10003B2F8, "\n%");
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100026BD0;
  *(v11 + 56) = &type metadata for String;
  v12 = sub_100004010();
  *(v11 + 64) = v12;
  *(v11 + 32) = v5;
  *(v11 + 40) = v7;
  v13 = sub_1000258DC();
  v15 = v14;

  v16 = [v8 mainBundle];
  v44._countAndFlagsBits = 0xE000000000000000;
  v53._object = 0x8000000100028810;
  v53._countAndFlagsBits = 0xD000000000000011;
  v57.value._countAndFlagsBits = 0;
  v57.value._object = 0;
  v17.super.isa = v16;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  sub_10002567C(v53, v57, v17, v61, 0, v44);

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100026BD0;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v12;
  *(v18 + 32) = v5;
  *(v18 + 40) = v7;
  v19 = sub_1000258DC();
  v21 = v20;

  v48 = a1;
  v22 = sub_1000160B8(v48, v13, v15, v19, v21);
  v23 = [v8 mainBundle];
  v45._countAndFlagsBits = 0xE000000000000000;
  v54._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v54._object = 0xEA00000000004552;
  v58.value._countAndFlagsBits = 0;
  v58.value._object = 0;
  v24.super.isa = v23;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  v25 = sub_10002567C(v54, v58, v24, v62, 0, v45);
  v27 = v26;

  v28 = sub_1000235DC(0, v25, v27);

  [v28 addTarget:v22 action:"selectLearnMore" forControlEvents:64];

  v29 = v22;
  v30 = [v29 buttonTray];
  [v30 addButton:v28];

  v31 = [v8 mainBundle];
  v46._countAndFlagsBits = 0xE000000000000000;
  v55._countAndFlagsBits = 0x574F4E5F544F4ELL;
  v55._object = 0xE700000000000000;
  v59.value._countAndFlagsBits = 0;
  v59.value._object = 0;
  v32.super.isa = v31;
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  v33 = sub_10002567C(v55, v59, v32, v63, 0, v46);
  v35 = v34;

  v36 = sub_1000235DC(1, v33, v35);

  [v36 addTarget:v29 action:"requestDismiss" forControlEvents:64];

  v37 = [v29 buttonTray];
  [v37 addButton:v36];

  v38 = objc_allocWithZone(type metadata accessor for MainContentView());
  swift_bridgeObjectRetain_n();
  v39 = a2;
  v40 = sub_100023CA0(1, a3, a4, v39);
  v41 = [v29 contentView];

  [v41 addSubview:v40];
  sub_10001FD28();

  swift_bridgeObjectRelease_n();
  return v29;
}

id sub_100016834(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LearnMoreViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

BOOL sub_10001688C(void *a1)
{
  v2 = v1;
  v38 = a1;
  v39 = type metadata accessor for SetupEntitlement(0);
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002577C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = sub_1000257BC();
  v14 = sub_1000259EC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36 = v10;
    v37 = v3;
    v16 = v15;
    v17 = v2;
    v18 = swift_slowAlloc();
    v40 = v18;
    *v16 = 136315138;
    *(v16 + 4) = sub_10001EB4C(0xD000000000000014, 0x8000000100028890, &v40);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s", v16, 0xCu);
    sub_10000E734(v18);
    v2 = v17;

    v10 = v36;
    v3 = v37;
  }

  v19 = [v38 serviceID];
  if (v19)
  {
    v20 = v19;
    sub_10002574C();

    v21 = *(v2 + OBJC_IVAR____TtC21MediaSetupViewService16EntitlementProxy_setupEntitlements);
    v22 = *(v21 + 16);
    v23 = _swiftEmptyArrayStorage;
    if (v22)
    {
      v36 = v12;
      v40 = _swiftEmptyArrayStorage;

      sub_10001F1D8(0, v22, 0);
      v23 = v40;
      v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v35 = v21;
      v25 = v21 + v24;
      v26 = *(v3 + 72);
      v37 = v7 + 32;
      v38 = v26;
      do
      {
        sub_1000179B8(v25, v5);
        (*(v7 + 16))(v10, &v5[*(v39 + 20)], v6);
        sub_100017A1C(v5);
        v40 = v23;
        v27 = v6;
        v29 = v23[2];
        v28 = v23[3];
        if (v29 >= v28 >> 1)
        {
          sub_10001F1D8((v28 > 1), v29 + 1, 1);
          v23 = v40;
        }

        v23[2] = v29 + 1;
        (*(v7 + 32))(v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v29, v10, v27);
        v25 += v38;
        --v22;
        v6 = v27;
      }

      while (v22);

      v12 = v36;
    }

    v30 = sub_100006970(v12, v23);

    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v31 = sub_1000257BC();
    v32 = sub_100025A0C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "### Context missing service ID", v33, 2u);
    }

    return 0;
  }

  return v30;
}

uint64_t sub_100016CD4()
{
  result = sub_1000258CC();
  qword_10003B8B0 = result;
  *algn_10003B8B8 = v1;
  return result;
}

uint64_t sub_100016D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a2;
  v9 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_10002577C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v55 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for SetupEntitlement(0);
  v54 = *(v56 - 8);
  v15 = __chkstk_darwin(v56);
  v53 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v18 = &v45 - v17;
  v19 = OBJC_IVAR____TtC21MediaSetupViewService16EntitlementProxy_log;
  sub_1000257CC();
  v20 = OBJC_IVAR____TtC21MediaSetupViewService16EntitlementProxy_setupEntitlements;
  *(v5 + OBJC_IVAR____TtC21MediaSetupViewService16EntitlementProxy_setupEntitlements) = _swiftEmptyArrayStorage;
  result = sub_10001726C(a1, v57, a3, a4);
  v22 = result;
  v57 = *(result + 16);
  if (v57)
  {
    v45 = v19;
    v46 = v20;
    v47 = v5;
    v23 = 0;
    v24 = (v13 + 48);
    v49 = (v13 + 32);
    v25 = (result + 40);
    v26 = _swiftEmptyArrayStorage;
    v51 = result;
    v52 = v11;
    v50 = v24;
    v48 = v18;
    do
    {
      if (v23 >= *(v22 + 16))
      {
        __break(1u);
        return result;
      }

      v28 = *(v25 - 1);
      v27 = *v25;

      sub_10002571C();
      if ((*v24)(v11, 1, v12) == 1)
      {

        result = sub_100017A78(v11);
      }

      else
      {
        v29 = *v49;
        v30 = v55;
        (*v49)(v55, v11, v12);
        v31 = v53;
        *v53 = v28;
        *(v31 + 8) = v27;
        v29((v31 + *(v56 + 20)), v30, v12);
        v32 = v48;
        sub_100017AE0(v31, v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1000139EC(0, v26[2] + 1, 1, v26);
        }

        v34 = v26[2];
        v33 = v26[3];
        v11 = v52;
        v24 = v50;
        if (v34 >= v33 >> 1)
        {
          v26 = sub_1000139EC((v33 > 1), v34 + 1, 1, v26);
        }

        v22 = v51;
        v26[2] = v34 + 1;
        result = sub_100017AE0(v32, v26 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v34);
      }

      ++v23;
      v25 += 2;
    }

    while (v57 != v23);

    v5 = v47;
    *(v47 + v46) = v26;

    v35 = sub_1000257BC();
    v36 = sub_1000259EC();

    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_17;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v58 = v38;
    *v37 = 136380675;

    v39 = sub_10002598C();
    v41 = v40;

    v42 = sub_10001EB4C(v39, v41, &v58);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Found entitlements: %{private}s", v37, 0xCu);
    sub_10000E734(v38);

    goto LABEL_16;
  }

  v35 = sub_1000257BC();
  v43 = sub_100025A0C();
  if (os_log_type_enabled(v35, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v35, v43, "### Unable to fetch entitlements for token", v44, 2u);
LABEL_16:
  }

LABEL_17:

  return v5;
}

void *sub_10001726C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v4 = SecTaskCreateWithAuditToken(0, &token);
  if (v4)
  {
    v5 = v4;
    if (qword_10003B250 != -1)
    {
      swift_once();
    }

    v6 = sub_1000258BC();
    v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

    if (v7)
    {
      *token.val = v7;
      swift_unknownObjectRetain();
      sub_100002370(&qword_10003B560, &qword_100027040);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();

        return v17;
      }

      v12 = sub_1000257BC();
      v15 = sub_100025A0C();
      if (os_log_type_enabled(v12, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v12, v15, "### Can't cast as RawEntitlementValue...)", v16, 2u);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v12 = sub_1000257BC();
      v13 = sub_100025A0C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "### No values for entitlement?", v14, 2u);
      }
    }
  }

  else
  {
    v9 = sub_1000257BC();
    v10 = sub_100025A0C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "### Failed to create sec task?", v11, 2u);
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10001750C()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService16EntitlementProxy_log;
  v2 = sub_1000257DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_1000175E0(uint64_t a1)
{
  result = sub_1000257DC();
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

uint64_t sub_100017690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10002577C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100017750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10002577C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100017814(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001784C(uint64_t a1)
{
  result = sub_10002577C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000178C8()
{
  sub_10002577C();
  sub_100017960();
  v1._countAndFlagsBits = sub_100025C9C();
  sub_10002592C(v1);

  v2._countAndFlagsBits = 62;
  v2._object = 0xE100000000000000;
  sub_10002592C(v2);
  return 0x656369767265733CLL;
}

unint64_t sub_100017960()
{
  result = qword_10003B4F8;
  if (!qword_10003B4F8)
  {
    sub_10002577C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B4F8);
  }

  return result;
}

uint64_t sub_1000179B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupEntitlement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017A1C(uint64_t a1)
{
  v2 = type metadata accessor for SetupEntitlement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017A78(uint64_t a1)
{
  v2 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupEntitlement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017B44()
{
  v1 = v0;
  v2 = sub_10002577C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 8);
  if (!v6)
  {
    v10 = 0xE600000000000000;
    v8 = 0x29656E6F6E28;
    v11 = *v1;
    if (*v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0xE100000000000000;
    v13 = 63;
    goto LABEL_6;
  }

  v7 = [v6 serviceName];
  v8 = sub_1000258CC();
  v10 = v9;

  v11 = *v1;
  if (!*v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [v11 uniqueIdentifier];
  sub_10002574C();

  v13 = sub_10002572C();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
LABEL_6:
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_100025BAC(39);

  v17 = 0x3D4449726573753CLL;
  v18 = 0xE800000000000000;
  type metadata accessor for ConfigurationModelItem(0);
  sub_100017960();
  v19._countAndFlagsBits = sub_100025C9C();
  sub_10002592C(v19);

  v20._countAndFlagsBits = 0x4449656D6F68202CLL;
  v20._object = 0xE90000000000003DLL;
  sub_10002592C(v20);
  v21._countAndFlagsBits = v13;
  v21._object = v15;
  sub_10002592C(v21);

  v22._countAndFlagsBits = 0x636976726573202CLL;
  v22._object = 0xEF3D20656D614E65;
  sub_10002592C(v22);
  v23._countAndFlagsBits = v8;
  v23._object = v10;
  sub_10002592C(v23);

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  sub_10002592C(v24);
  return v17;
}

uint64_t type metadata accessor for ConfigurationModelItem(uint64_t a1)
{
  result = qword_10003BA88;
  if (!qword_10003BA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100017DE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10002577C();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_100017EB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_10002577C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100017F54(uint64_t a1)
{
  sub_100018028(319, &qword_10003BA98, &qword_10003B388, HMHome_ptr);
  if (v1 <= 0x3F)
  {
    sub_100018028(319, &unk_10003BAA0, &qword_10003B508, MediaService_ptr);
    if (v2 <= 0x3F)
    {
      sub_10002577C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100018028(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_10000E970(255, a3, a4);
    v5 = sub_100025ADC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_100018080(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100018094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000180DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001812C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for ConfigurationModelItem(0);
  v64 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v63 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002577C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v61 - v15;
  if (!a1)
  {
    if (qword_10003B258 != -1)
    {
      swift_once();
    }

    v18 = sub_1000257DC();
    sub_10000EE0C(v18, qword_10003BAD8);
    v19 = sub_1000257BC();
    v20 = sub_100025A0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "### Home topology with no context?", v21, 2u);
    }

    goto LABEL_9;
  }

  if (a4)
  {
    return sub_10001A9F8(a2, a4);
  }

  v74 = _swiftEmptyArrayStorage;
  v22 = sub_10001A180(a3);
  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v23)
    {
      goto LABEL_14;
    }

LABEL_9:
    if (qword_10003B280 != -1)
    {
      swift_once();
    }

    v17 = qword_10003CE50;

    return v17;
  }

  v60 = sub_100025C3C();

  if (!v60)
  {
    goto LABEL_9;
  }

LABEL_14:
  v69 = sub_10001A180(a3);
  if (!(v69 >> 62))
  {
    result = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_42:

    v17 = _swiftEmptyArrayStorage;
LABEL_43:
    if (sub_10001A180(a3) >> 62)
    {
      sub_100025C3C();
    }

    return v17;
  }

  result = sub_100025C3C();
  if (!result)
  {
    goto LABEL_42;
  }

LABEL_16:
  if (result >= 1)
  {
    v26 = 0;
    v66 = (v11 + 32);
    v67 = v69 & 0xC000000000000001;
    v65 = (v11 + 8);
    p_weak_ivar_lyt = &MultiHomeCustomizeViewController.weak_ivar_lyt;
    *&v24 = 136380675;
    v61 = v24;
    v62 = a3;
    v68 = result;
    while (1)
    {
      v28 = v67 ? sub_100025BBC() : *(v69 + 8 * v26 + 32);
      v72 = v28;
      v29 = [v28 currentUser];
      v30 = [v29 p_weak_ivar_lyt[350]];

      sub_10002574C();
      v31 = a3[2];
      v71 = v26;
      if (v31 && (v32 = sub_100013FCC(v16), (v33 & 1) != 0))
      {
        v34 = v63;
        sub_10001B4A4(a3[7] + *(v64 + 72) * v32, v63);
        v35 = *(v34 + 8);
        v36 = v35;
        sub_10001B508(v34);
      }

      else
      {
        v35 = 0;
      }

      v70 = v35;
      v37 = v72;
      v38 = [v72 p_weak_ivar_lyt[350]];
      sub_10002574C();

      v39 = [v37 name];
      v40 = sub_1000258CC();
      v42 = v41;

      type metadata accessor for HomeItem(0);
      v43 = swift_allocObject();
      v44 = OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_service;
      *(v43 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_userRequestsSetup) = 0;
      *(v43 + v44) = v35;
      (*v66)(v43 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_id, v14, v10);
      v45 = (v43 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
      *v45 = v40;
      v45[1] = v42;
      *(v43 + 16) = 0;
      if ([v37 hasAccessoryTypeHomePod])
      {
        if (![v37 isUpdatedForBolt])
        {
          break;
        }
      }

      if (([v37 hasAccessoryTypeHomePod] & 1) == 0)
      {
        v46 = 1;
LABEL_30:
        *(v43 + 16) = v46;
      }

      if (qword_10003B258 != -1)
      {
        swift_once();
      }

      v47 = sub_1000257DC();
      sub_10000EE0C(v47, qword_10003BAD8);

      v48 = sub_1000257BC();
      v49 = sub_1000259EC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v73 = v51;
        *v50 = v61;

        v52 = sub_100020FBC();
        v53 = v16;
        v54 = v14;
        v55 = v10;
        v57 = v56;

        v58 = sub_10001EB4C(v52, v57, &v73);
        v10 = v55;
        v14 = v54;
        v16 = v53;

        *(v50 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v48, v49, "Home topology adding item %{private}s", v50, 0xCu);
        sub_10000E734(v51);
        a3 = v62;

        v37 = v72;
      }

      sub_10002595C();
      v59 = v71;
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10002599C();
      }

      v26 = v59 + 1;
      sub_1000259BC();

      (*v65)(v16, v10);
      p_weak_ivar_lyt = (&MultiHomeCustomizeViewController + 56);
      if (v68 == v26)
      {
        v17 = v74;

        goto LABEL_43;
      }
    }

    v46 = 2;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000188BC()
{
  v0 = sub_1000257DC();
  sub_10001B684(v0, qword_10003BAD8);
  sub_10000EE0C(v0, qword_10003BAD8);
  return sub_1000257CC();
}

void sub_10001893C(void *a1)
{
  v2 = v1;
  v4 = sub_10002577C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000256DC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v15 = [a1 authorizationScope];
  [v2 setAuthorizationScope:v15];

  v16 = [a1 authorizationTokenURL];
  if (v16)
  {
    v17 = v16;
    sub_1000256BC();

    sub_1000256AC(v18);
    v20 = v19;
    (*(v9 + 8))(v14, v8);
  }

  else
  {
    v20 = 0;
  }

  [v2 setAuthorizationTokenURL:v20];

  v21 = [a1 clientID];
  [v2 setClientID:v21];

  v22 = [a1 clientSecret];
  [v2 setClientSecret:v22];

  v23 = [a1 configurationURL];
  if (v23)
  {
    v24 = v23;
    sub_1000256BC();

    sub_1000256AC(v25);
    v27 = v26;
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v27 = 0;
  }

  [v2 setConfigurationURL:v27];

  v28 = [a1 serviceID];
  if (v28)
  {
    v29 = v28;
    sub_10002574C();

    v30.super.isa = sub_10002573C().super.isa;
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v30.super.isa = 0;
  }

  [v2 setServiceID:v30.super.isa];
}

void *sub_100018C80(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_100025BBC();
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject accessories];
      sub_10001B6E8();
      v7 = sub_10002597C();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_100025C3C();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_100025C3C();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v33 = v9;
      v5 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9);
      v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
      if (v5)
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          goto LABEL_22;
        }

LABEL_21:
        sub_100025C3C();
        goto LABEL_22;
      }

      if (v10)
      {
        goto LABEL_21;
      }

      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = v3;
        goto LABEL_23;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_100025BCC();
      v31 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        v16 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_100025C3C();
        v12 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v14 >> 1) - v13) < v33)
          {
            goto LABEL_43;
          }

          v17 = v12 + 8 * v13 + 32;
          v27 = v12;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_10001B734();
            for (i = 0; i != v15; ++i)
            {
              sub_100002370(&qword_10003BB00, &unk_100027480);
              v19 = sub_100023070(v32, i, v7);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v31;
          if (v33 >= 1)
          {
            v22 = *(v27 + 16);
            v5 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v27 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_27;
        }
      }

      v3 = v31;
      if (v33 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_100025C3C();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100018FE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ConfigurationModelItem(0);
  v45 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v50 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002577C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_100002370(&qword_10003BAF0, &qword_100027478);
  v46 = v4;
  result = sub_100025C5C();
  v13 = result;
  if (*(v11 + 16))
  {
    v49 = v10;
    v40 = v2;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v41 = (v8 + 16);
    v42 = v8;
    v47 = (v8 + 32);
    v20 = result + 64;
    v43 = v11;
    v44 = v7;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v48 = *(v8 + 72);
      v27 = v26 + v48 * v25;
      if (v46)
      {
        (*v47)(v49, v27, v7);
        v28 = *(v11 + 56);
        v29 = *(v45 + 72);
        sub_10001B564(v28 + v29 * v25, v50);
      }

      else
      {
        (*v41)(v49, v27, v7);
        v30 = *(v11 + 56);
        v29 = *(v45 + 72);
        sub_10001B4A4(v30 + v29 * v25, v50);
      }

      sub_10001B62C();
      result = sub_10002588C();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v7 = v44;
      (*v47)((*(v13 + 48) + v48 * v21), v49, v44);
      result = sub_10001B564(v50, *(v13 + 56) + v29 * v21);
      ++*(v13 + 16);
      v8 = v42;
      v11 = v43;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v11 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

uint64_t sub_100019410(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10002577C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100013FCC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000196D4();
      goto LABEL_7;
    }

    sub_100018FE0(v17, a3 & 1);
    v24 = sub_100013FCC(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000195F8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_100025CCC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for ConfigurationModelItem(0) - 8) + 72) * v14;

  return sub_10001B5C8(a1, v22);
}

uint64_t sub_1000195F8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10002577C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ConfigurationModelItem(0);
  result = sub_10001B564(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_1000196D4()
{
  v1 = v0;
  v2 = type metadata accessor for ConfigurationModelItem(0);
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10002577C();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002370(&qword_10003BAF0, &qword_100027478);
  v5 = *v0;
  v6 = sub_100025C4C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_10001B4A4(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_10001B564(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1000199D8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ConfigurationModelItem(0);
  v32 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[7];
      v26 = *(v32 + 72);
      sub_10001B4A4(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_10001B564(v11, v14);
      sub_10001B564(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_100019C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000258BC();

  v10 = 0;
  v6 = [v3 initWithServiceAccount:a1 bundleIdentifier:v5 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10002569C();

    swift_willThrow();
  }

  return v6;
}

void sub_100019CE4(char a1, void *a2)
{
  v4 = type metadata accessor for ConfigurationModelItem(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = sub_10002577C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 2) == 0)
  {
    if ((a1 & 4) != 0)
    {
      v40 = v11;
      v41 = v12;
      v43 = a2;
      v18 = a2;
      v19 = [v18 accountName];
      v20 = sub_1000258CC();
      v22 = v21;

      v44 = 0x726568746FLL;
      v45 = 0xE500000000000000;
      v46._countAndFlagsBits = v20;
      v42 = v22;
      v46._object = v22;
      sub_10002592C(v46);
      v23 = [v18 serviceName];
      if (!v23)
      {
        sub_1000258CC();
        v23 = sub_1000258BC();
      }

      v24 = objc_allocWithZone(MSServiceAccount);
      v25 = sub_1000258BC();
      v26 = [v24 initWithServiceName:v23 accountName:v25];

      sub_10001893C(v18);
      v27 = objc_allocWithZone(MediaService);
      v28 = v26;
      v29 = sub_100019C00(v28, 0, 0xE000000000000000);

      if (!v29)
      {

        return;
      }

      v30 = v29;
      v31 = [v18 serviceID];

      if (!v31)
      {
        __break(1u);
        return;
      }

      sub_10002574C();

      isa = sub_10002573C().super.isa;
      v33 = v40;
      (*(v40 + 8))(v14, v41);
      v34 = v30;
      [v30 setServiceID:isa];

      if (qword_10003B278 != -1)
      {
        swift_once();
      }

      v35 = v41;
      v36 = sub_10000EE0C(v41, qword_10003CE38);
      (*(v33 + 16))(&v9[*(v4 + 24)], v36, v35);
      *v9 = 0;
      *(v9 + 1) = v34;
      v9[*(v4 + 28)] = 0;
      sub_10001B4A4(v9, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = &_swiftEmptyDictionarySingleton;
      sub_100019410(v7, v36, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if ((a1 & 8) == 0)
      {
        return;
      }

      if (qword_10003B278 != -1)
      {
        v38 = v12;
        swift_once();
        v12 = v38;
      }

      v15 = v12;
      v16 = sub_10000EE0C(v12, qword_10003CE38);
      (*(v11 + 16))(&v9[*(v4 + 24)], v16, v15);
      *v9 = 0;
      *(v9 + 1) = 0;
      v9[*(v4 + 28)] = 1;
      sub_10001B4A4(v9, v7);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v44 = &_swiftEmptyDictionarySingleton;
      sub_100019410(v7, v16, v17);
    }

    sub_10001B508(v9);
  }
}

void *sub_10001A180(void *a1)
{
  v2 = type metadata accessor for ConfigurationModelItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = a1[2];
  if (v6)
  {
    v7 = sub_100013DD4(a1[2], 0);
    v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v19 = v7;
    v9 = sub_1000199D8(&v20, &v7[v8], v6, a1);
    v10 = v20;

    result = sub_100004064(v10);
    if (v9 != v6)
    {
      __break(1u);
      return result;
    }

    v12 = v19;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v20 = _swiftEmptyArrayStorage;
  v13 = *(v12 + 2);
  if (v13)
  {
    v14 = &v12[(*(v3 + 80) + 32) & ~*(v3 + 80)];
    v15 = *(v3 + 72);
    v16 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001B4A4(v14, v5);
      v17 = *v5;
      v18 = *v5;
      sub_10001B508(v5);
      if (v17)
      {
        sub_10002595C();
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10002599C();
        }

        sub_1000259BC();
        v16 = v20;
      }

      v14 += v15;
      --v13;
    }

    while (v13);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v16;
}

BOOL sub_10001A394(void *a1, uint64_t a2)
{
  if ((a2 & 2) != 0)
  {
    return 1;
  }

  if (a2)
  {
    return 0;
  }

  v3 = sub_10001A180(a1);
  v4 = sub_100018C80(v3);

  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_7:
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_100025BBC();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v5 = sub_100025C3C();
        if (!v5)
        {
          break;
        }

        goto LABEL_7;
      }

      v10 = [v7 category];
      v11 = [v10 categoryType];

      v12 = sub_1000258CC();
      v14 = v13;

      if (v12 == sub_1000258CC() && v14 == v15)
      {
      }

      else
      {
        v17 = sub_100025CAC();

        if ((v17 & 1) == 0)
        {

          goto LABEL_10;
        }
      }

      sub_100025BEC();
      sub_100025C1C();
      sub_100025C2C();
      sub_100025BFC();
LABEL_10:
      ++v6;
    }

    while (v9 != v5);
  }

  if (qword_10003B258 != -1)
  {
    swift_once();
  }

  v18 = sub_1000257DC();
  sub_10000EE0C(v18, qword_10003BAD8);

  v19 = sub_1000257BC();
  v20 = sub_1000259EC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134283521;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      v22 = sub_100025C3C();
    }

    else
    {
      v22 = _swiftEmptyArrayStorage[2];
    }

    *(v21 + 4) = v22;

    _os_log_impl(&_mh_execute_header, v19, v20, "%{private}ld HomePods", v21, 0xCu);
  }

  else
  {
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v23 = sub_100025C3C();
  }

  else
  {
    v23 = _swiftEmptyArrayStorage[2];
  }

  return v23 == 0;
}

void sub_10001A6D4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ConfigurationModelItem(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  if (*(a3 + 16) && (v15 = sub_100013FCC(a2), (v16 & 1) != 0))
  {
    v17 = *(a3 + 56);
    v46 = *(v9 + 72);
    sub_10001B4A4(v17 + v46 * v15, v14);
    v18 = *(v14 + 1);
    v19 = v18;
    sub_10001B508(v14);
    if (v18)
    {
      v47 = a1;
      v20 = [a1 accountName];
      v21 = sub_1000258CC();
      v23 = v22;

      v24 = [v19 accountName];
      v25 = sub_1000258CC();
      v27 = v26;

      if (v21 == v25 && v23 == v27)
      {

        v30 = 0;
        if (!*(a3 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v29 = sub_100025CAC();

        v30 = v29 ^ 1;
        if (!*(a3 + 16))
        {
          goto LABEL_18;
        }
      }

      v35 = sub_100013FCC(a2);
      if (v36)
      {
        sub_10001B4A4(*(a3 + 56) + v35 * v46, v12);
        v37 = *v12;
        v38 = *v12;
        sub_10001B508(v12);
        if (v37)
        {
          v39 = [v38 name];

          v40 = sub_1000258CC();
LABEL_19:
          v31 = v40;
          v32 = v41;

          v43 = [v47 accountName];
          v33 = sub_1000258CC();
          v34 = v44;

          goto LABEL_12;
        }
      }

LABEL_18:
      v39 = [objc_opt_self() mainBundle];
      v45._countAndFlagsBits = 0xE000000000000000;
      v48._object = 0x80000001000288B0;
      v48._countAndFlagsBits = 0xD00000000000001ALL;
      v49.value._countAndFlagsBits = 0;
      v49.value._object = 0;
      v42.super.isa = v39;
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      v40 = sub_10002567C(v48, v49, v42, v50, 0, v45);
      goto LABEL_19;
    }

    v31 = 0;
    v32 = 0;
    v30 = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v18 = 0;
  }

  v33 = 0;
  v34 = 0;
LABEL_12:
  *a4 = v31;
  *(a4 + 8) = v32;
  *(a4 + 16) = v30 & 1;
  *(a4 + 24) = v18;
  *(a4 + 32) = v33;
  *(a4 + 40) = v34;
}

unint64_t sub_10001A9F8(void *a1, char a2)
{
  if (qword_10003B280 == -1)
  {
    if ((a2 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    swift_once();
    if ((a2 & 2) == 0)
    {
LABEL_3:
      LODWORD(v4) = byte_10003CE58;
      v5 = qword_10003CE50;

      if ((a2 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  LODWORD(v4) = 0;
  v5 = _swiftEmptyArrayStorage;
  if (a2)
  {
LABEL_7:
    v6 = sub_100020CF4(&off_100034ED8);

    LODWORD(v4) = 1;
    v5 = v6;
  }

LABEL_8:
  if ((a2 & 0x10) != 0)
  {
    v7 = sub_100020CF4(&off_100034F00);

    LODWORD(v4) = 2;
    v5 = v7;
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((a2 & 0x40) == 0)
  {
LABEL_28:
    if (qword_10003B258 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_29;
  }

  if (!a1)
  {
    goto LABEL_28;
  }

  v33 = v4;
  if (v5 >> 62)
  {
    v8 = sub_100025C3C();
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = a1;

  if (!v8)
  {
LABEL_27:

    LODWORD(v4) = v33;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = v5 & 0xC000000000000001;
  v11 = v5 & 0xFFFFFFFFFFFFFF8;
  while (v10)
  {
    v13 = sub_100025BBC();
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_22:
    v14 = v5;
    v15 = objc_allocWithZone(MediaService);
    v16 = v34;
    v17 = sub_1000258BC();
    v35 = 0;
    v18 = [v15 initWithServiceAccount:v16 bundleIdentifier:v17 error:&v35];

    v19 = v35;
    if (v18)
    {

      v20 = *(v13 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_service);
      *(v13 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_service) = v18;
    }

    else
    {
      v12 = v19;
      sub_10002569C();

      swift_willThrow();
    }

    v5 = v14;
    ++v9;
    if (v4 == v8)
    {
      goto LABEL_27;
    }
  }

  if (v9 < *(v11 + 16))
  {
    v13 = *(v5 + 8 * v9 + 32);

    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_43:
  swift_once();
LABEL_29:
  v21 = sub_1000257DC();
  sub_10000EE0C(v21, qword_10003BAD8);
  v22 = sub_1000257BC();
  v23 = sub_1000259FC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136380931;
    v26 = 0xE600000000000000;
    v27 = 0x656C676E6973;
    if (v4 != 1)
    {
      v27 = 0x656C7069746C756DLL;
      v26 = 0xE800000000000000;
    }

    if (v4)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0x73656D6F486F6ELL;
    }

    if (v4)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0xE700000000000000;
    }

    v30 = sub_10001EB4C(v28, v29, &v35);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2049;
    if (v5 >> 62)
    {
      v31 = sub_100025C3C();
    }

    else
    {
      v31 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v24 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "Home topology for testing:(%{private}s, %{private}ld home(s))", v24, 0x16u);
    sub_10000E734(v25);
  }

  return v5;
}

uint64_t sub_10001AE28(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v64 = a3;
  v5 = type metadata accessor for ConfigurationModelItem(0);
  v76 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v64 - v10;
  __chkstk_darwin(v9);
  v13 = (&v64 - v12);
  v82 = sub_10002577C();
  v69 = *(v82 - 8);
  v14 = __chkstk_darwin(v82);
  v81 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v64 - v17;
  v77 = a2;
  if (a2 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100025C3C())
  {
    v74 = v11;
    v11 = 0;
    v75 = v77 & 0xC000000000000001;
    v65 = v77 & 0xFFFFFFFFFFFFFF8;
    v80 = (v69 + 16);
    v71 = (v69 + 8);
    v20 = &_swiftEmptyDictionarySingleton;
    *&v16 = 136380675;
    v66 = v16;
    v72 = v18;
    v73 = v13;
    v67 = a1;
    v68 = v5;
    v70 = i;
    while (1)
    {
      if (v75)
      {
        v23 = sub_100025BBC();
      }

      else
      {
        if (v11 >= *(v65 + 16))
        {
          goto LABEL_33;
        }

        v23 = *(v77 + 8 * v11 + 32);
      }

      v24 = v23;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v78 = v11 + 1;
      v25 = [v23 currentUser];
      v26 = [v25 uniqueIdentifier];

      sub_10002574C();
      if (*(a1 + 16) && (v27 = sub_100013FCC(v18), (v28 & 1) != 0))
      {
        v29 = *(*(a1 + 56) + 8 * v27);
        v30 = v29;
      }

      else
      {
        v29 = 0;
      }

      v31 = v13 + *(v5 + 24);
      v79 = *v80;
      v79(v31, v18, v82);
      *v13 = v24;
      v13[1] = v29;
      *(v13 + *(v5 + 28)) = 0;
      if (qword_10003B258 != -1)
      {
        swift_once();
      }

      v32 = sub_1000257DC();
      sub_10000EE0C(v32, qword_10003BAD8);
      v33 = v13;
      v34 = v74;
      sub_10001B4A4(v33, v74);
      v35 = sub_1000257BC();
      v36 = sub_1000259EC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v83 = v38;
        *v37 = v66;
        v39 = sub_100017B44();
        v40 = v8;
        v42 = v41;
        sub_10001B508(v34);
        v43 = sub_10001EB4C(v39, v42, &v83);
        v8 = v40;

        *(v37 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v35, v36, "Adding item: %{private}s", v37, 0xCu);
        sub_10000E734(v38);
        v18 = v72;
        a1 = v67;

        v5 = v68;
      }

      else
      {

        sub_10001B508(v34);
      }

      v44 = v81;
      v79(v81, v18, v82);
      v13 = v73;
      sub_10001B4A4(v73, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v20;
      v46 = sub_100013FCC(v44);
      v48 = v20[2];
      v49 = (v47 & 1) == 0;
      v50 = __OFADD__(v48, v49);
      v51 = v48 + v49;
      if (v50)
      {
        goto LABEL_31;
      }

      v52 = v47;
      if (v20[3] < v51)
      {
        sub_100018FE0(v51, isUniquelyReferenced_nonNull_native);
        v46 = sub_100013FCC(v81);
        if ((v52 & 1) != (v53 & 1))
        {
          result = sub_100025CCC();
          __break(1u);
          return result;
        }

LABEL_25:
        v20 = v83;
        if (v52)
        {
          goto LABEL_4;
        }

        goto LABEL_26;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      v62 = v46;
      sub_1000196D4();
      v46 = v62;
      v20 = v83;
      if (v52)
      {
LABEL_4:
        sub_10001B5C8(v8, v20[7] + *(v76 + 72) * v46);
        v21 = *v71;
        v22 = v82;
        (*v71)(v81, v82);
        sub_10001B508(v13);
        v21(v18, v22);
        goto LABEL_5;
      }

LABEL_26:
      v20[(v46 >> 6) + 8] |= 1 << v46;
      v54 = v69;
      v55 = v46;
      v57 = v81;
      v56 = v82;
      v79((v20[6] + *(v69 + 72) * v46), v81, v82);
      sub_10001B564(v8, v20[7] + *(v76 + 72) * v55);
      v58 = *(v54 + 8);
      v59 = v57;
      v18 = v72;
      v58(v59, v56);
      sub_10001B508(v13);
      v58(v18, v56);
      v60 = v20[2];
      v50 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v50)
      {
        goto LABEL_32;
      }

      v20[2] = v61;
LABEL_5:
      ++v11;
      if (v78 == v70)
      {
        return v64;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  return v64;
}

uint64_t sub_10001B4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigurationModelItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B508(uint64_t a1)
{
  v2 = type metadata accessor for ConfigurationModelItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001B564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigurationModelItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B5C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigurationModelItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001B62C()
{
  result = qword_10003B510;
  if (!qword_10003B510)
  {
    sub_10002577C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B510);
  }

  return result;
}

uint64_t *sub_10001B684(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10001B6E8()
{
  result = qword_10003BAF8;
  if (!qword_10003BAF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003BAF8);
  }

  return result;
}

unint64_t sub_10001B734()
{
  result = qword_10003BB08;
  if (!qword_10003BB08)
  {
    sub_10000EACC(&qword_10003BB00, &unk_100027480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BB08);
  }

  return result;
}

unint64_t SetupState.description.getter(unsigned __int8 a1)
{
  v1 = a1 - 2;
  result = 0x64696C61766E69;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x726F727265;
      break;
    case 2:
      result = 0x6867696C66657270;
      break;
    case 3:
      result = 0x6867696C66657270;
      break;
    case 4:
    case 6:
      result = 0x726F4D6E7261656CLL;
      break;
    case 5:
      result = 0x726F4D6E7261656CLL;
      break;
    case 7:
      result = 0x726F4D6E7261656CLL;
      break;
    case 8:
    case 14:
      result = 0xD000000000000014;
      break;
    case 9:
    case 24:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
    case 13:
      result = 0xD000000000000011;
      break;
    case 15:
    case 19:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x7075746573;
      break;
    case 17:
      result = 0x6961577075746573;
      break;
    case 18:
      result = 0x6D6F4869746C756DLL;
      break;
    case 20:
      result = 0x6D6F4869746C756DLL;
      break;
    case 21:
      result = 0xD000000000000010;
      break;
    case 22:
      result = 0x6F48656C676E6973;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0xD000000000000013;
      break;
    case 26:
      result = 1701736292;
      break;
    case 27:
      result = 0x4474736575716572;
      break;
    default:
      sub_100025BAC(43);

      v3._countAndFlagsBits = 1702195828;
      v3._object = 0xE400000000000000;
      sub_10002592C(v3);

      result = 0xD000000000000029;
      break;
  }

  return result;
}

uint64_t _s21MediaSetupViewService0B5StateO2eeoiySbAC_ACtFZ_0(int a1, int a2)
{
  switch(a1)
  {
    case 2:
      if (a2 != 2)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 3:
      if (a2 != 3)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 4:
      if (a2 != 4)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 5:
      if (a2 != 5)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 6:
      if (a2 != 6)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 7:
      if (a2 != 7)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 8:
      if (a2 != 8)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 9:
      if (a2 != 9)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 10:
      if (a2 != 10)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 11:
      if (a2 != 11)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 12:
      if (a2 != 12)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 13:
      if (a2 != 13)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 14:
      if (a2 != 14)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 15:
      if (a2 != 15)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 16:
      if (a2 != 16)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 17:
      if (a2 != 17)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 18:
      if (a2 != 18)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 19:
      if (a2 != 19)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 20:
      if (a2 != 20)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 21:
      if (a2 != 21)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 22:
      if (a2 != 22)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 23:
      if (a2 != 23)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 24:
      if (a2 != 24)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 25:
      if (a2 != 25)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 26:
      if (a2 != 26)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 27:
      if (a2 != 27)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    case 28:
      if (a2 == 28)
      {
        goto LABEL_59;
      }

      goto LABEL_60;
    case 29:
      if (a2 != 29)
      {
        goto LABEL_60;
      }

LABEL_59:
      result = 1;
      break;
    default:
      if ((a2 - 2) < 0x1Cu)
      {
LABEL_60:
        result = 0;
      }

      else
      {
        result = (a2 ^ a1 ^ 1) & 1;
      }

      break;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetupState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_19;
  }

  v2 = a2 + 29;
  if (a2 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 29;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 29;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 0x1B)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 27;
}

uint64_t storeEnumTagSinglePayload for SetupState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 29;
  if (a3 + 29 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xE3)
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10001BFBC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10001BFD8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

id sub_10001C098(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SoftwareUpdateViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10001C0F0(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v49._countAndFlagsBits = 0xE000000000000000;
  v58._object = 0x8000000100028AE0;
  v58._countAndFlagsBits = 0xD000000000000015;
  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0;
  v8.super.isa = v7;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  v9 = sub_10002567C(v58, v64, v8, v70, 0, v49);
  v11 = v10;

  v12 = [v6 mainBundle];
  v50._countAndFlagsBits = 0xE000000000000000;
  if (a5)
  {
    v59._countAndFlagsBits = 0xD00000000000001DLL;
    v59._object = 0x8000000100028B30;
    v65.value._countAndFlagsBits = 0;
    v65.value._object = 0;
    v13.super.isa = v12;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    v14 = sub_10002567C(v59, v65, v13, v71, 0, v50);
    v16 = v15;

    v17 = sub_1000160B8(a1, v9, v11, v14, v16);
    v18 = [v6 mainBundle];
    v51._countAndFlagsBits = 0xE000000000000000;
    v60._countAndFlagsBits = 0x45554E49544E4F43;
    v60._object = 0xE800000000000000;
    v66.value._countAndFlagsBits = 0;
    v66.value._object = 0;
    v19.super.isa = v18;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    v20 = sub_10002567C(v60, v66, v19, v72, 0, v51);
    v22 = v21;

    v23 = sub_1000235DC(0, v20, v22);

    v24 = v17;
    [v23 addTarget:v24 action:"selectContinue" forControlEvents:64];
    v25 = v24;
    v26 = [v25 buttonTray];
    [v26 addButton:v23];

    v27 = [v6 mainBundle];
    v52._countAndFlagsBits = 0xE000000000000000;
    v61._countAndFlagsBits = 0x574F4E5F544F4ELL;
    v61._object = 0xE700000000000000;
    v67.value._countAndFlagsBits = 0;
    v67.value._object = 0;
    v28.super.isa = v27;
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    v29 = sub_10002567C(v61, v67, v28, v73, 0, v52);
    v31 = v30;

    v32 = sub_1000235DC(1, v29, v31);

    [v32 addTarget:v25 action:"requestDismiss" forControlEvents:64];

    v33 = [v25 buttonTray];
    [v33 addButton:v32];
  }

  else
  {
    v62._countAndFlagsBits = 0xD000000000000020;
    v62._object = 0x8000000100028B00;
    v68.value._countAndFlagsBits = 0;
    v68.value._object = 0;
    v34.super.isa = v12;
    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    v35 = sub_10002567C(v62, v68, v34, v74, 0, v50);
    v37 = v36;

    v38 = sub_1000160B8(a1, v9, v11, v35, v37);
    v39 = [v6 mainBundle];
    v53._countAndFlagsBits = 0xE000000000000000;
    v63._countAndFlagsBits = 0x45554E49544E4F43;
    v63._object = 0xE800000000000000;
    v69.value._countAndFlagsBits = 0;
    v69.value._object = 0;
    v40.super.isa = v39;
    v75._countAndFlagsBits = 0;
    v75._object = 0xE000000000000000;
    v41 = sub_10002567C(v63, v69, v40, v75, 0, v53);
    v43 = v42;

    v32 = sub_1000235DC(0, v41, v43);

    v25 = v38;
    [v32 addTarget:v25 action:"selectContinue" forControlEvents:64];
    v33 = [v25 buttonTray];
    [v33 addButton:v32];
  }

  v44 = objc_allocWithZone(type metadata accessor for MainContentView());
  swift_bridgeObjectRetain_n();
  v45 = a2;
  v46 = sub_100023CA0(2, a3, a4, v45);
  v47 = [v25 contentView];

  [v47 addSubview:v46];
  sub_10001FD28();

  return v25;
}

void *sub_10001C5A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_10001F218(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1000157C0(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10001F218((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10001C6BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10001C768(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = sub_100025BBC();
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
      v13 = sub_100025C3C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_10001C890(void *a1, uint64_t a2, void *a3)
{
  v92 = sub_1000257DC();
  v96 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000257CC();
  *&v3[OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_homeItemViewModels] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_tableViewHeight] = 0;
  *&v3[OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_heightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_mainController] = a1;
  v8 = &v3[OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_viewModel];
  v95 = a2;
  *v8 = a2;
  *(v8 + 1) = a3;
  v89 = a1;

  v91 = a3;
  v9 = [v91 serviceName];
  v10 = sub_1000258CC();
  v12 = v11;

  v13 = objc_opt_self();

  v14 = [v13 mainBundle];
  v77._countAndFlagsBits = 0xE000000000000000;
  v99._countAndFlagsBits = 0xD00000000000001CLL;
  v99._object = 0x8000000100028DC0;
  v104.value._countAndFlagsBits = 0;
  v104.value._object = 0;
  v15.super.isa = v14;
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  sub_10002567C(v99, v104, v15, v109, 0, v77);

  v16 = sub_100002370(&qword_10003B2F8, "\n%");
  v17 = swift_allocObject();
  v94 = xmmword_100026BD0;
  *(v17 + 16) = xmmword_100026BD0;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_100004010();
  *(v17 + 64) = v18;
  *(v17 + 32) = v10;
  *(v17 + 40) = v12;
  v90 = sub_1000258DC();
  v20 = v19;

  v86 = v13;
  v21 = [v13 mainBundle];
  v78._countAndFlagsBits = 0xE000000000000000;
  v100._countAndFlagsBits = 0xD00000000000001DLL;
  v100._object = 0x8000000100028DE0;
  v105.value._countAndFlagsBits = 0;
  v105.value._object = 0;
  v22.super.isa = v21;
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  sub_10002567C(v100, v105, v22, v110, 0, v78);

  v85 = v16;
  v23 = swift_allocObject();
  *(v23 + 16) = v94;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = v18;
  v84 = v18;
  v87 = v12;
  v88 = v10;
  *(v23 + 32) = v10;
  *(v23 + 40) = v12;
  v24 = v92;
  sub_1000258DC();

  v90 = v20;
  v25 = sub_1000258BC();
  v26 = sub_1000258BC();
  v27 = type metadata accessor for MultiHomeCustomizeViewController(0);
  v98.receiver = v3;
  v98.super_class = v27;
  v28 = objc_msgSendSuper2(&v98, "initWithTitle:detailText:icon:", v25, v26, 0);

  v29 = v95;
  v30 = v93;
  (*(v96 + 16))(v93, v28 + OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_log, v24);

  v31 = v91;
  v32 = v28;
  v33 = sub_1000257BC();
  v34 = sub_1000259EC();
  v91 = v31;

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v83 = v32;
    v37 = v36;
    v97 = v36;
    *v35 = 136380675;
    type metadata accessor for HomeItem(0);

    v38 = sub_10002598C();
    v40 = v39;

    v41 = sub_10001EB4C(v38, v40, &v97);

    *(v35 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "Init with home items %{private}s", v35, 0xCu);
    sub_10000E734(v37);
    v32 = v83;
  }

  (*(v96 + 8))(v30, v24);
  v42 = v32;
  v43 = [v42 navigationItem];
  [v43 setHidesBackButton:1];

  [v42 setModalInPresentation:0];
  *&v42[OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_homeItemViewModels] = sub_10001DD94(v29);

  v44 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v42 setTableView:v44];

  v45 = [v42 tableView];
  if (!v45)
  {
    __break(1u);
    goto LABEL_9;
  }

  v46 = v45;
  v47 = [objc_opt_self() clearColor];
  [v46 setBackgroundColor:v47];

  v48 = [v42 tableView];
  if (!v48)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v49 = v48;
  [v48 setDataSource:v42];

  v50 = [v42 tableView];
  if (!v50)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v51 = v50;
  [v50 setDelegate:v42];

  v52 = [v42 tableView];
  if (v52)
  {

    [v52 setTranslatesAutoresizingMaskIntoConstraints:0];

    v53 = v86;
    v54 = [v86 mainBundle];
    v79._countAndFlagsBits = 0xE000000000000000;
    v101._countAndFlagsBits = 0x45554E49544E4F43;
    v101._object = 0xE800000000000000;
    v106.value._countAndFlagsBits = 0;
    v106.value._object = 0;
    v55.super.isa = v54;
    v111._countAndFlagsBits = 0;
    v111._object = 0xE000000000000000;
    v56 = sub_10002567C(v101, v106, v55, v111, 0, v79);
    v58 = v57;

    v59 = sub_1000235DC(0, v56, v58);

    v60 = v42;
    [v59 addTarget:v60 action:"selectContinue" forControlEvents:64];
    v61 = v60;
    v62 = [v61 buttonTray];
    [v62 addButton:v59];

    v63 = [v53 mainBundle];
    v80._countAndFlagsBits = 0xE000000000000000;
    v102._countAndFlagsBits = 0x574F4E5F544F4ELL;
    v102._object = 0xE700000000000000;
    v107.value._countAndFlagsBits = 0;
    v107.value._object = 0;
    v64.super.isa = v63;
    v112._countAndFlagsBits = 0;
    v112._object = 0xE000000000000000;
    v65 = sub_10002567C(v102, v107, v64, v112, 0, v80);
    v67 = v66;

    v68 = sub_1000235DC(1, v65, v67);

    [v68 addTarget:v61 action:"requestDismiss" forControlEvents:64];

    v69 = [v61 buttonTray];
    [v69 addButton:v68];

    v70 = [v61 buttonTray];
    v71 = v87;

    v72 = [v53 mainBundle];
    v81._countAndFlagsBits = 0xE000000000000000;
    v103._countAndFlagsBits = 0xD000000000000024;
    v103._object = 0x8000000100028E00;
    v108.value._countAndFlagsBits = 0;
    v108.value._object = 0;
    v73.super.isa = v72;
    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    sub_10002567C(v103, v108, v73, v113, 0, v81);

    v74 = swift_allocObject();
    *(v74 + 16) = v94;
    v75 = v84;
    *(v74 + 56) = &type metadata for String;
    *(v74 + 64) = v75;
    *(v74 + 32) = v88;
    *(v74 + 40) = v71;
    sub_1000258DC();

    v76 = sub_1000258BC();

    [v70 setCaptionText:v76];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_10001D284()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_tableViewHeight;
  v2 = *&v0[OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_tableViewHeight];
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  [result contentSize];
  v6 = v5;

  if (v2 == v6)
  {
LABEL_14:
    v26.receiver = v0;
    v26.super_class = type metadata accessor for MultiHomeCustomizeViewController(0);
    return objc_msgSendSuper2(&v26, "viewDidLayoutSubviews");
  }

  result = [v0 tableView];
  if (!result)
  {
    goto LABEL_16;
  }

  v7 = result;
  [result contentSize];
  v9 = v8;

  *&v0[v1] = v9;
  result = [v0 tableView];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = result;
  [result reloadData];

  result = [v0 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = result;
  [result layoutIfNeeded];

  v12 = OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_heightConstraint;
  v13 = *&v0[OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_heightConstraint];
  if (v13)
  {
    goto LABEL_12;
  }

  result = [v0 tableView];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = result;
  v15 = [result heightAnchor];

  result = [v0 tableView];
  if (result)
  {
    v16 = result;
    [result contentSize];
    v18 = v17;

    v19 = [v15 constraintEqualToConstant:v18];
    v20 = *&v0[v12];
    *&v0[v12] = v19;
    v21 = v19;

    if (v21)
    {
      [v21 setActive:1];
    }

    v13 = *&v0[v12];
    if (!v13)
    {
      goto LABEL_14;
    }

LABEL_12:
    v22 = v13;
    result = [v0 tableView];
    if (result)
    {
      v23 = result;
      [result contentSize];
      v25 = v24;

      [v22 setConstant:v25];
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_10001D58C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_homeItemViewModels;
  v3 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_homeItemViewModels);
  if (v3 >> 62)
  {
    v4 = sub_100025C3C();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v5 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_100025BBC();
    }

    else
    {
      v6 = *(v3 + 8 * v5 + 32);
    }

    ++v5;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);

    *(v7 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_userRequestsSetup) = v8;
  }

  while (v4 != v5);

LABEL_10:
  v9 = *(v1 + v2);
  if (v9 >> 62)
  {
    v10 = sub_100025C3C();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    *&v21[0] = _swiftEmptyArrayStorage;

    sub_100025C0C();
    if ((v10 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          sub_100025BBC();
        }

        else
        {
        }

        ++v12;

        sub_100025BEC();
        sub_100025C1C();
        sub_100025C2C();
        sub_100025BFC();
      }

      while (v10 != v12);

      v11 = *&v21[0];
      goto LABEL_20;
    }

LABEL_27:
    __break(1u);
    return;
  }

LABEL_20:
  v17 = xmmword_100026E90;
  v18 = 0u;
  v19 = 0u;
  LOBYTE(v20) = 6;
  v13 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_mainController);
  *(&v20 + 1) = v11;
  v14 = *(v13 + OBJC_IVAR___MediaSetupNavigationController_setupSession);
  if (v14)
  {
    v21[0] = v17;
    v21[1] = v18;
    v21[2] = v19;
    v21[3] = v20;
    v15 = v14;
    sub_10000E7DC(&v17, &v16);
    sub_1000056D4(2u, v21);
    sub_10000E838(&v17);
    sub_10000E838(&v17);
  }

  else
  {
    sub_10000E838(&v17);
  }
}

void sub_10001D860(void *a1)
{
  v36 = a1;
  v35 = sub_10002577C();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_homeItemViewModels);
  v31 = v1;
  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_100025C3C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    v33 = v5 & 0xFFFFFFFFFFFFFF8;
    v34 = v5 & 0xC000000000000001;
    v32 = (v2 + 16);
    v8 = (v2 + 8);
    while (1)
    {
      if (v34)
      {
        v9 = sub_100025BBC();
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        if (v7 >= *(v33 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v9 = *(v5 + 8 * v7 + 32);

        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_13;
        }
      }

      v2 = v35;
      (*v32)(v4, *(v9 + 16) + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_id, v35);
      v11 = sub_10002575C();
      (*v8)(v4, v2);
      if (v11 == [v36 tag])
      {
        break;
      }

      ++v7;
      if (v10 == v6)
      {
        goto LABEL_14;
      }
    }

    v16 = v36;

    v17 = sub_1000257BC();
    v18 = sub_1000259FC();

    p_weak_ivar_lyt = &MultiHomeCustomizeViewController.weak_ivar_lyt;
    v20 = v9;
    if (os_log_type_enabled(v17, v18))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 67109379;
      *(v21 + 4) = [v16 isOn];

      *(v21 + 8) = 2081;
      v23 = (*(v9 + 16) + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
      v24 = *v23;
      v25 = v23[1];

      v26 = sub_10001EB4C(v24, v25, &v37);

      *(v21 + 10) = v26;
      p_weak_ivar_lyt = (&MultiHomeCustomizeViewController + 56);
      _os_log_impl(&_mh_execute_header, v17, v18, "UserRequestsSetup=%{BOOL}d home=%{private}s", v21, 0x12u);
      sub_10000E734(v22);
    }

    else
    {
    }

    *(v9 + 24) = [v16 p_weak_ivar_lyt[434]];

    v27 = sub_1000257BC();
    v28 = sub_1000259EC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67174657;
      *(v29 + 4) = *(v20 + 24);

      _os_log_impl(&_mh_execute_header, v27, v28, "request setup now is:%{BOOL,private}d", v29, 8u);
    }

    else
    {
    }
  }

  else
  {
LABEL_14:

    v12 = v36;
    v13 = sub_1000257BC();
    v14 = sub_100025A0C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = [v12 tag];

      _os_log_impl(&_mh_execute_header, v13, v14, "### Unable to find switch for tag %ld", v15, 0xCu);
    }

    else
    {
    }
  }
}

void *sub_10001DD94(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_100025C3C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    result = sub_100025C0C();
    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      v6 = v1 + OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_viewModel;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = sub_100025BBC();
        }

        else
        {
          v8 = *(a1 + 8 * v5 + 32);
        }

        if ((*(v8 + 16) | 2) == 2)
        {
          v9 = (sub_10001F684(*(v6 + 8)) & 1) != 0 || *(v8 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_service) != 0;
          type metadata accessor for HomeItemViewModel();
          v10 = swift_allocObject();
          *(v10 + 16) = v8;
          *(v10 + 24) = v9;
        }

        else
        {
          type metadata accessor for HomeItemViewModel();
          v7 = swift_allocObject();
          *(v7 + 16) = v8;
          *(v7 + 24) = 0;
        }

        ++v5;
        sub_100025BEC();
        sub_100025C1C();
        sub_100025C2C();
        sub_100025BFC();
      }

      while (v3 != v5);
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

id sub_10001DFE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiHomeCustomizeViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MultiHomeCustomizeViewController(uint64_t a1)
{
  result = qword_10003BB98;
  if (!qword_10003BB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E12C(uint64_t a1)
{
  result = sub_1000257DC();
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

uint64_t sub_10001E204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000257AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002578C();
  (*(v5 + 8))(v7, v4);
  return 0;
}

unint64_t sub_10001E2D0(void *a1)
{
  v2 = v1;
  v4 = sub_10002577C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000258BC();
  v9 = [a1 dequeueReusableCellWithIdentifier:v8];

  if (!v9)
  {
    v10 = objc_allocWithZone(UITableViewCell);
    v11 = sub_1000258BC();
    v9 = [v10 initWithStyle:3 reuseIdentifier:v11];
  }

  v12 = sub_10002579C();
  v13 = OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_homeItemViewModels;
  v14 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_homeItemViewModels);
  if (!(v14 >> 62))
  {
    if (v12 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    return v9;
  }

  if (v12 >= sub_100025C3C())
  {
    return v9;
  }

LABEL_5:
  result = sub_10002579C();
  v16 = *(v1 + v13);
  if ((v16 & 0xC000000000000001) != 0)
  {

    v17 = sub_100025BBC();

    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 8 * result + 32);

LABEL_9:
    v18 = *(v17 + 16);

    v19 = [v9 accessoryView];
    if (!v19)
    {
      v20 = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      [v9 setAccessoryView:v20];
      v19 = v20;
    }

    v21 = [v9 accessoryView];
    if (v21)
    {
      v22 = v21;
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = v23;
        v25 = v22;
        [v24 addTarget:v2 action:"switchDidChange:" forControlEvents:4096];
        (*(v5 + 16))(v7, v18 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_id, v4);
        v26 = v25;
        v27 = sub_10002575C();
        (*(v5 + 8))(v7, v4);
        [v24 setTag:v27];

        [v24 setEnabled:(*(v18 + 16) & 0xFD) == 0];
        v28 = *(v17 + 24) == 1 && (*(v18 + 16) & 0xFD) == 0;
        [v24 setOn:v28];
      }

      else
      {
      }
    }

    v29 = [v9 textLabel];
    if (v29)
    {
      v30 = v29;

      v31 = sub_1000258BC();

      [v30 setText:v31];
    }

    v32 = [v9 detailTextLabel];
    if (v32)
    {
      v33 = v32;
      if (*(v18 + 16))
      {
        if (*(v18 + 16) == 1)
        {
          v34 = 18;
        }

        else
        {
          v34 = 17;
        }

        v35 = sub_10002224C(v34);
        v37 = v36;
        v38 = [objc_opt_self() mainBundle];
        v43._countAndFlagsBits = 0xE000000000000000;
        v45._countAndFlagsBits = v35;
        v45._object = v37;
        v46.value._countAndFlagsBits = 0;
        v46.value._object = 0;
        v39.super.isa = v38;
        v47._countAndFlagsBits = 0;
        v47._object = 0xE000000000000000;
        sub_10002567C(v45, v46, v39, v47, 0, v43);
      }

      v40 = sub_1000258BC();

      [v33 setText:v40];
    }

    v41 = [v9 detailTextLabel];
    if (v41)
    {
      v42 = v41;
      [v41 setAdjustsFontSizeToFitWidth:1];
    }

    [v9 setSelectionStyle:0];

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E980()
{

  return _swift_deallocClassInstance(v0, 25, 7);
}

__n128 sub_10001E9DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10001E9E8(uint64_t *a1, int a2)
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

uint64_t sub_10001EA30(uint64_t result, int a2, int a3)
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

uint64_t sub_10001EA7C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10001EAF0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10001EB4C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10001EB4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001EC18(v11, 0, 0, 1, a1, a2);
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
    sub_1000157C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000E734(v11);
  return v7;
}

unint64_t sub_10001EC18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001ED24(a5, a6);
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
    result = sub_100025BDC();
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

void *sub_10001ED24(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001ED70(a1, a2);
  sub_10001EEA0(&off_100034EB0);
  return v3;
}

void *sub_10001ED70(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10001EF8C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100025BDC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10002593C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001EF8C(v10, 0);
        result = sub_100025B9C();
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

uint64_t sub_10001EEA0(uint64_t result)
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

  result = sub_10001F000(result, v11, 1, v3);
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

void *sub_10001EF8C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100002370(&qword_10003BD10, &unk_100027670);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001F000(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002370(&qword_10003BD10, &unk_100027670);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

_BYTE **sub_10001F0F4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_10001F104(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10001F124@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10001F1A8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_10001F1D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F238(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001F1F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F410(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001F218(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F520(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001F238(void *result, int64_t a2, char a3, void *a4)
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

  sub_100002370(&qword_10003BD18, &qword_100027680);
  v10 = *(sub_10002577C() - 8);
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
  v15 = *(sub_10002577C() - 8);
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

char *sub_10001F410(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002370(&unk_10003BD20, &qword_100027688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001F520(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002370(&unk_10003B4E0, &qword_100026FF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10001F62C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100025CAC() & 1;
  }
}

uint64_t sub_10001F684(void *a1)
{
  v2 = sub_10002577C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v28[-v10];
  v12 = [a1 serviceID];
  if (v12)
  {
    v13 = v12;
    sub_10002574C();

    (*(v3 + 56))(v9, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v9, 1, 1, v2);
  }

  sub_10000E88C(v9, v11);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    sub_100017A78(v11);
LABEL_12:
    v26 = 1;
    return v26 & 1;
  }

  (*(v3 + 16))(v5, v11, v2);
  sub_100017A78(v11);
  v14 = sub_10002572C();
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  v17 = objc_allocWithZone(NSUserDefaults);
  v18 = sub_1000258BC();
  v19 = [v17 initWithSuiteName:v18];

  if (!v19)
  {
LABEL_11:

    goto LABEL_12;
  }

  v20 = sub_1000258BC();
  v21 = [v19 arrayForKey:v20];

  if (!v21 || (v22 = sub_10002597C(), v21, v23 = sub_10001C5A8(v22), v24 = , !v23))
  {

    goto LABEL_11;
  }

  v29[0] = v14;
  v29[1] = v16;
  __chkstk_darwin(v24);
  *&v28[-16] = v29;
  v25 = sub_10001C6BC(sub_10001F9E8, &v28[-32], v23);

  v26 = v25 ^ 1;
  return v26 & 1;
}

uint64_t sub_10001F9E8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100025CAC() & 1;
  }
}

unint64_t sub_10001FA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 42)
  {
    return 0;
  }

  if (a3)
  {
    if (a5)
    {
      v10 = sub_10002224C(a1);
      v12 = v11;
      v13 = objc_opt_self();

      v14 = [v13 mainBundle];
      v32._countAndFlagsBits = 0xE000000000000000;
      v33._countAndFlagsBits = v10;
      v33._object = v12;
      v36.value._countAndFlagsBits = 0;
      v36.value._object = 0;
      v15.super.isa = v14;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      sub_10002567C(v33, v36, v15, v39, 0, v32);

      sub_100002370(&qword_10003B2F8, "\n%");
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100027690;
      *(v16 + 56) = &type metadata for String;
      v17 = sub_100004010();
      *(v16 + 32) = a2;
      *(v16 + 40) = a3;
      *(v16 + 96) = &type metadata for String;
      *(v16 + 104) = v17;
      *(v16 + 64) = v17;
      *(v16 + 72) = a4;
      *(v16 + 80) = a5;
    }

    else
    {
      v25 = sub_10002224C(a1);
      v27 = v26;
      v28 = objc_opt_self();

      v29 = [v28 mainBundle];
      v32._countAndFlagsBits = 0xE000000000000000;
      v35._countAndFlagsBits = v25;
      v35._object = v27;
      v38.value._countAndFlagsBits = a4;
      v38.value._object = 0;
      v30.super.isa = v29;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      sub_10002567C(v35, v38, v30, v41, 0, v32);

      sub_100002370(&qword_10003B2F8, "\n%");
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100026BD0;
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_100004010();
      *(v31 + 32) = a2;
      *(v31 + 40) = a3;
    }

    v18 = sub_1000258DC();

    return v18;
  }

  else
  {
    result = sub_10002224C(a1);
    if (!a5)
    {
      v20 = result;
      v21 = v19;
      v22 = [objc_opt_self() mainBundle];
      v32._countAndFlagsBits = 0xE000000000000000;
      v34._countAndFlagsBits = v20;
      v34._object = v21;
      v37.value._countAndFlagsBits = a4;
      v37.value._object = 0;
      v23.super.isa = v22;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v24 = sub_10002567C(v34, v37, v23, v40, 0, v32);

      return v24;
    }
  }

  return result;
}

void sub_10001FD28()
{
  v1 = v0;
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    sub_100002370(&qword_10003B7B0, &unk_1000271F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000276A0;
    v6 = [v1 topAnchor];
    v7 = [v3 topAnchor];
    v8 = [v6 constraintLessThanOrEqualToAnchor:v7 constant:50.0];

    *(v5 + 32) = v8;
    v9 = [v1 centerXAnchor];
    v10 = [v3 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    *(v5 + 40) = v11;
    v12 = [v1 widthAnchor];
    v13 = [v3 widthAnchor];
    v14 = [v12 constraintLessThanOrEqualToAnchor:v13];

    *(v5 + 48) = v14;
    v15 = [v3 bottomAnchor];
    v16 = [v1 bottomAnchor];
    v17 = [v15 constraintGreaterThanOrEqualToAnchor:v16];

    *(v5 + 56) = v17;
    sub_1000231D8();
    isa = sub_10002596C().super.isa;

    [v4 activateConstraints:isa];
  }
}

uint64_t sub_10001FFB8(unsigned __int8 a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = "C_ONLY_SUPPORTED_DETAIL";
  v4 = "C_RADIO_SUPPORTED_DETAIL";
  v5 = 0xD00000000000002BLL;
  if (a1 != 5)
  {
    v4 = "CUSTOMIZE_HOMES_UPDATE_REQUIRED";
  }

  v6 = "C_PODCASTS_SUPPORTED_DETAIL";
  v7 = 0xD00000000000002ALL;
  if (a1 != 3)
  {
    v6 = "O_PODCASTS_SUPPORTED_DETAIL";
    v7 = 0xD000000000000028;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = "O_ONLY_SUPPORTED_DETAIL";
  if (a1 != 1)
  {
    v8 = "ASTS_ONLY_SUPPORTED_DETAIL";
  }

  if (a1)
  {
    v3 = v8;
    v9 = 0xD000000000000027;
  }

  else
  {
    v9 = 0xD000000000000026;
  }

  if (a1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a1 <= 2u)
  {
    v11._countAndFlagsBits = v9;
  }

  else
  {
    v11._countAndFlagsBits = v5;
  }

  v15._countAndFlagsBits = 0xE000000000000000;
  v11._object = (v10 | 0x8000000000000000);
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  v12.super.isa = v2;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v13 = sub_10002567C(v11, v16, v12, v17, 0, v15);

  return v13;
}

id sub_1000200F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_opt_self();

  v7 = [v6 mainBundle];
  v26._countAndFlagsBits = 0xE000000000000000;
  v32._object = 0x8000000100028FC0;
  v32._countAndFlagsBits = 0xD000000000000012;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v8.super.isa = v7;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10002567C(v32, v35, v8, v38, 0, v26);

  sub_100002370(&qword_10003B2F8, "\n%");
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100026BD0;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100004010();
  *(v9 + 64) = v10;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  sub_1000258DC();

  v11 = [v6 mainBundle];
  v27._countAndFlagsBits = 0xE000000000000000;
  v33._countAndFlagsBits = 0xD000000000000013;
  v33._object = 0x8000000100028FE0;
  v36.value._countAndFlagsBits = 0;
  v36.value._object = 0;
  v12.super.isa = v11;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_10002567C(v33, v36, v12, v39, 0, v27);

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100026BD0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = v10;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  sub_1000258DC();

  v14 = [v6 mainBundle];
  v28._countAndFlagsBits = 0xE000000000000000;
  v34._countAndFlagsBits = 19279;
  v34._object = 0xE200000000000000;
  v37.value._countAndFlagsBits = 0;
  v37.value._object = 0;
  v15.super.isa = v14;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  sub_10002567C(v34, v37, v15, v40, 0, v28);

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  sub_10000EDEC(a3, a4);
  v17 = sub_1000258BC();

  aBlock[4] = sub_100023990;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100022C20;
  aBlock[3] = &unk_100035B28;
  v18 = _Block_copy(aBlock);

  v19 = [objc_opt_self() actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = sub_1000258BC();

  v22 = sub_1000258BC();

  v23 = [ObjCClassFromMetadata alertControllerWithTitle:v21 message:v22 preferredStyle:1];

  v24 = v23;
  [v24 addAction:v19];

  sub_10000EDFC(a3, a4);
  return v24;
}

uint64_t sub_1000204CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002370(&qword_10003B7E8, &unk_100027210);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_10002566C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002565C();
  sub_10002564C();
  sub_10002563C();
  sub_100002370(&qword_10003BFE0, &unk_100027A60);
  sub_10002560C();
  *(swift_allocObject() + 16) = xmmword_100027690;
  sub_1000255FC();
  sub_10002572C();
  sub_1000255FC();

  sub_10002561C();
  sub_10002562C();
  v11 = sub_10002577C();
  (*(*(v11 - 8) + 8))(a1, v11);
  (*(v8 + 8))(v10, v7);
  v12 = sub_1000256DC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    sub_10000EBFC(v6, &qword_10003B7E8, &unk_100027210);
    v14 = 1;
  }

  else
  {
    (*(v13 + 32))(a2, v6, v12);
    v14 = 0;
  }

  return (*(v13 + 56))(a2, v14, 1, v12);
}

uint64_t sub_100020834()
{
  v0 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10002577C();
  sub_10001B684(v3, qword_10003CDF0);
  v4 = sub_10000EE0C(v3, qword_10003CDF0);
  sub_10002571C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100020964()
{
  v0 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10002577C();
  sub_10001B684(v3, qword_10003CE08);
  v4 = sub_10000EE0C(v3, qword_10003CE08);
  sub_10002571C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100020A94()
{
  v0 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10002577C();
  sub_10001B684(v3, qword_10003CE20);
  v4 = sub_10000EE0C(v3, qword_10003CE20);
  sub_10002571C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100020BC4()
{
  v0 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10002577C();
  sub_10001B684(v3, qword_10003CE38);
  v4 = sub_10000EE0C(v3, qword_10003CE38);
  sub_10002571C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void *sub_100020CF4(uint64_t a1)
{
  v2 = sub_10002577C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_100025C0C();
    v8 = (a1 + 32);
    v9 = (v3 + 16);
    v10 = (v3 + 32);
    do
    {
      v19 = *v8++;
      v18 = v19;
      if (v19)
      {
        if (v18 == 1)
        {
          if (qword_10003B268 != -1)
          {
            swift_once();
          }

          v11 = qword_10003CE08;
          v12 = 0x4120616E616E6142;
          v13 = 0xED000065756E6576;
        }

        else
        {
          if (qword_10003B270 != -1)
          {
            swift_once();
          }

          v11 = qword_10003CE20;
          v12 = 0x4C20797272656843;
          v13 = 0xEB00000000656E61;
        }
      }

      else
      {
        if (qword_10003B260 != -1)
        {
          swift_once();
        }

        v11 = qword_10003CDF0;
        v12 = 0x745320656C707041;
        v13 = 0xE90000000000002ELL;
      }

      v14 = sub_10000EE0C(v2, v11);
      (*v9)(v5, v14, v2);
      type metadata accessor for HomeItem(0);
      v15 = swift_allocObject();
      v16 = OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_service;
      *(v15 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_userRequestsSetup) = 0;
      *(v15 + v16) = 0;
      (*v10)(v15 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_id, v5, v2);
      v17 = (v15 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
      *v17 = v12;
      v17[1] = v13;
      *(v15 + 17) = 0;
      *(v15 + 16) = v18;
      sub_100025BEC();
      sub_100025C1C();
      sub_100025C2C();
      sub_100025BFC();
      --v6;
    }

    while (v6);
    return v21;
  }

  return result;
}

uint64_t sub_100020FBC()
{
  v1 = sub_10002577C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name + 8);
  v20 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
  v21 = v5;

  v22._countAndFlagsBits = 8250;
  v22._object = 0xE200000000000000;
  sub_10002592C(v22);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_id, v1);
  sub_100017960();
  v23._countAndFlagsBits = sub_100025C9C();
  sub_10002592C(v23);

  (*(v2 + 8))(v4, v1);
  v6 = OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_service;
  v7 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_service);
  if (v7)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v7)
  {
    v10 = 0x80000001000291F0;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v24._countAndFlagsBits = v8;
  v24._object = v10;
  sub_10002592C(v24);

  if (*(v0 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_userRequestsSetup))
  {
    v11 = 0xD000000000000013;
  }

  else
  {
    v11 = 0;
  }

  if (*(v0 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_userRequestsSetup))
  {
    v12 = 0x80000001000291D0;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v25._countAndFlagsBits = v11;
  v25._object = v12;
  sub_10002592C(v25);

  v14 = v20;
  v13 = v21;
  v15 = *(v0 + v6);
  if (v15)
  {
    v16 = [v15 description];
    v17 = sub_1000258CC();
    v9 = v18;
  }

  else
  {
    v17 = 0;
  }

  v20 = v14;
  v21 = v13;

  v26._countAndFlagsBits = v17;
  v26._object = v9;
  sub_10002592C(v26);

  return v20;
}

uint64_t sub_100021228()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_id;
  v2 = sub_10002577C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for HomeItem(uint64_t a1)
{
  result = qword_10003BDB8;
  if (!qword_10003BDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002133C(uint64_t a1)
{
  result = sub_10002577C();
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

uint64_t sub_1000214BC()
{
  v1 = *v0;
  v2 = 0x72756769666E6F63;
  v3 = 0x7075746573;
  v4 = 0x6574617473;
  if (v1 != 4)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D656C7469746E65;
  if (v1 != 1)
  {
    v5 = 0x49676E697373696DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10002158C(unsigned __int8 a1)
{
  v1 = a1 - 2;
  result = 0x64696C61766E69;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 1701736292;
      break;
    case 2:
      result = 0x726F727265;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6D6F4869746C756DLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
    case 7:
      result = 0x726F4D6E7261656CLL;
      break;
    case 8:
      result = 0x73756F6976657270;
      break;
    case 9:
      result = 0x4474736575716572;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x6174537075746573;
      break;
    case 12:
      result = 0x6F48656C676E6973;
      break;
    default:
      sub_100025BAC(36);

      v3._countAndFlagsBits = 1702195828;
      v3._object = 0xE400000000000000;
      sub_10002592C(v3);

      result = 0xD000000000000022;
      break;
  }

  return result;
}

uint64_t sub_10002181C()
{
  v1 = v0;
  *&v19[0] = 0;
  *(&v19[0] + 1) = 0xE000000000000000;
  sub_100025BAC(67);
  v18 = v19[0];
  v20._object = 0x8000000100028E90;
  v20._countAndFlagsBits = 0xD000000000000011;
  sub_10002592C(v20);
  v2 = v0[1];
  v19[0] = *v0;
  v19[1] = v2;
  v4 = *v0;
  v3 = v0[1];
  v19[2] = v0[2];
  v15 = v4;
  v16 = v3;
  v17 = v0[2];
  sub_10000EB94(v19, v14, &qword_10003BFC0, &qword_100027A48);
  sub_100002370(&qword_10003BFC0, &qword_100027A48);
  v21._countAndFlagsBits = sub_1000258EC();
  sub_10002592C(v21);

  v22._countAndFlagsBits = 0x7449656D6F68202CLL;
  v22._object = 0xED0000203A736D65;
  sub_10002592C(v22);
  v5 = *(v0 + 7);
  type metadata accessor for HomeItem(0);
  v23._countAndFlagsBits = sub_10002598C();
  sub_10002592C(v23);

  v24._countAndFlagsBits = 0xD000000000000014;
  v24._object = 0x8000000100028EB0;
  sub_10002592C(v24);
  *&v15 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
LABEL_18:
    v6 = sub_100025C3C();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v13 = v1;
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_100025BBC();
          v1 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v1 = v13;
            break;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v1 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            goto LABEL_15;
          }
        }

        if ((*(v8 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_userRequestsSetup) & 1) != 0 && (*(v8 + 17) & 1) == 0 && (*(v8 + 16) | 2) == 2)
        {
          sub_100025BEC();
          sub_100025C1C();
          sub_100025C2C();
          sub_100025BFC();
        }

        else
        {
        }

        ++v7;
        if (v1 == v6)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v9 = sub_10002598C();
  v11 = v10;

  v25._countAndFlagsBits = v9;
  v25._object = v11;
  sub_10002592C(v25);

  v26._countAndFlagsBits = 0x3A726F727265202CLL;
  v26._object = 0xE900000000000020;
  sub_10002592C(v26);
  LOBYTE(v15) = *(v1 + 48);
  sub_100002370(&qword_10003BFC8, &qword_100027A50);
  v27._countAndFlagsBits = sub_1000258EC();
  sub_10002592C(v27);

  return v18;
}

uint64_t sub_100021B40()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000012;
    if (v1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0x654B7463656C6573;
    if (v1 != 4)
    {
      v6 = 0x654C7463656C6573;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6F437463656C6573;
    if (v1 != 2)
    {
      v2 = 0xD000000000000014;
    }

    v3 = 0xD000000000000011;
    if (*v0)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100021C94()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for MainContentViewConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MainContentViewConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100021E5C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_100021E80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100021E94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100021EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetupProgressEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_19;
  }

  v2 = a2 + 14;
  if (a2 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 14;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 14;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 12;
  if (v8 <= 0xC)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SetupProgressEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 14;
  if (a3 + 14 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF2)
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetupUserEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SetupUserEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000221F8()
{
  result = qword_10003BFA8;
  if (!qword_10003BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BFA8);
  }

  return result;
}

unint64_t sub_10002224C(char a1)
{
  result = 0x545F474E49444441;
  switch(a1)
  {
    case 1:
    case 15:
    case 28:
      result = 0xD00000000000001DLL;
      break;
    case 2:
    case 4:
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 3:
    case 26:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000026;
      break;
    case 6:
    case 7:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD00000000000002ALL;
      break;
    case 9:
    case 11:
      result = 0xD00000000000002BLL;
      break;
    case 10:
      result = 0xD000000000000028;
      break;
    case 13:
      result = 0xD000000000000024;
      break;
    case 14:
      return result;
    case 16:
      result = 0xD00000000000001CLL;
      break;
    case 17:
      result = 0xD00000000000001FLL;
      break;
    case 19:
      result = 0x5445445F454E4F44;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    case 22:
    case 25:
      result = 0xD000000000000012;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0xD000000000000017;
      break;
    case 27:
      result = 0x495249535F594548;
      break;
    case 29:
      result = 0xD000000000000020;
      break;
    case 30:
      result = 0xD000000000000015;
      break;
    case 31:
      result = 0x45554E49544E4F43;
      break;
    case 32:
      result = 0x485F45534F4F4843;
      break;
    case 33:
      result = 1162760004;
      break;
    case 34:
      result = 0xD000000000000011;
      break;
    case 35:
      result = 0x4F4D5F4E5241454CLL;
      break;
    case 36:
      result = 0x574F4E5F544F4ELL;
      break;
    case 37:
      result = 19279;
      break;
    case 38:
    case 40:
      result = 0xD000000000000010;
      break;
    case 39:
      result = 0x495F455441445055;
      break;
    case 41:
      result = 0x485F4E495F455355;
      break;
    default:
      result = 0xD00000000000001ELL;
      break;
  }

  return result;
}

void sub_100022734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(ISIcon);
  v7 = sub_1000258BC();
  v8 = [v6 initWithBundleIdentifier:v7];

  v9 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorHomeScreen];
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v12[4] = sub_1000231B8;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100022954;
  v12[3] = &unk_100035AD8;
  v11 = _Block_copy(v12);

  [v8 getImageForImageDescriptor:v9 completion:v11];
  _Block_release(v11);
}

void sub_1000228A0(void *a1, void (*a2)(void))
{
  if (a1 && (v3 = [a1 CGImage]) != 0)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(UIImage) initWithCGImage:v3];
    a2();
  }

  else
  {
    (a2)(0);
  }
}

void sub_100022954(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1000229C0()
{
  v1 = *v0;
  v2 = 0x6D6F437075746573;
  v3 = 0x7261654C72657375;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1919251317;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_100022A70()
{
  v1 = *v0;
  sub_100025D2C();
  sub_100025D3C(v1);
  return sub_100025D4C();
}

Swift::Int sub_100022AB8(uint64_t a1)
{
  v2 = *v1;
  sub_100025D2C();
  sub_100025D3C(v2);
  return sub_100025D4C();
}

uint64_t sub_100022AFC()
{
  v1 = 0x656C676E6973;
  if (*v0 != 1)
  {
    v1 = 0x656C7069746C756DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656D6F486F6ELL;
  }
}

unint64_t sub_100022B58()
{
  result = qword_10003BFB0;
  if (!qword_10003BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BFB0);
  }

  return result;
}

unint64_t sub_100022BB0()
{
  result = qword_10003BFB8;
  if (!qword_10003BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BFB8);
  }

  return result;
}

void sub_100022C20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100022C88(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 3)
    {
      v4 = 0xD000000000000010;
      if (a1 != 193)
      {
        v4 = 0x6E49657461647075;
      }

      if (a1 == 192)
      {
        return 0x726F4D6E7261656CLL;
      }

      else
      {
        return v4;
      }
    }

    else
    {
      v7 = 0x4D746E756F636361;
      v8 = 1701736292;
      if (a1 != 130)
      {
        v8 = 0x726F727265;
      }

      if (a1 != 128)
      {
        v7 = 0x7A696D6F74737563;
      }

      if (a1 <= 0x81u)
      {
        return v7;
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {
    if (a1 >> 6)
    {
      sub_100025BAC(29);

      v9 = 0xD00000000000001BLL;
      if (a1)
      {
        v2._countAndFlagsBits = 1702195828;
      }

      else
      {
        v2._countAndFlagsBits = 0x65736C6166;
      }

      if (a1)
      {
        v3 = 0xE400000000000000;
      }

      else
      {
        v3 = 0xE500000000000000;
      }
    }

    else
    {
      v9 = 0x6D6F486F54646461;
      v1 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          v2._countAndFlagsBits = 0x656C676E6973;
        }

        else
        {
          v2._countAndFlagsBits = 0x656C7069746C756DLL;
        }

        if (v1 == 1)
        {
          v3 = 0xE600000000000000;
        }

        else
        {
          v3 = 0xE800000000000000;
        }
      }

      else
      {
        v3 = 0xE700000000000000;
        v2._countAndFlagsBits = 0x73656D6F486F6ELL;
      }
    }

    v2._object = v3;
    sub_10002592C(v2);

    return v9;
  }
}

uint64_t sub_100022EB8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_100025D2C();

    sub_1000258FC();
    v16 = sub_100025D4C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_100025CAC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void (*sub_100023070(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100025BBC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000230F0;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000230F8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100025BBC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100023178;
  }

  __break(1u);
  return result;
}

uint64_t sub_100023180()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000231C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000231D8()
{
  result = qword_10003BFD0;
  if (!qword_10003BFD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003BFD0);
  }

  return result;
}

Swift::Int sub_100023224(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002370(&qword_10003B308, &qword_100026E20);
    v3 = sub_100025B8C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_100025D2C();

      sub_1000258FC();
      result = sub_100025D4C();
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
          result = sub_100025CAC();
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

uint64_t sub_10002338C(uint64_t a1)
{
  v2 = sub_100023224(&off_100034D10);
  swift_arrayDestroy();
  v3 = sub_100022EB8(a1, v2);

  if (v3)
  {

    return 0;
  }

  else
  {
    v5 = sub_100023224(&off_100034D60);
    sub_1000238FC(&unk_100034D80);
    v6 = sub_100022EB8(a1, v5);

    if (v6)
    {

      return 1;
    }

    else
    {
      v7 = sub_100023224(&off_100034D90);
      sub_1000238FC(&unk_100034DB0);
      v8 = sub_100022EB8(a1, v7);

      if (v8)
      {

        return 2;
      }

      else
      {
        v9 = sub_100023224(&off_100034DC0);
        sub_1000238FC(&unk_100034DE0);
        v10 = sub_100022EB8(a1, v9);

        if (v10)
        {

          return 3;
        }

        else
        {
          v11 = sub_100023224(&off_100034DF0);
          swift_arrayDestroy();
          v12 = sub_100022EB8(a1, v11);

          if (v12)
          {

            return 4;
          }

          else
          {
            v13 = sub_100023224(&off_100034E30);
            swift_arrayDestroy();
            v14 = sub_100022EB8(a1, v13);

            if (v14)
            {

              return 5;
            }

            else
            {
              v15 = sub_100023224(&off_100034E70);
              swift_arrayDestroy();
              v16 = sub_100022EB8(a1, v15);

              if (v16)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

id sub_1000235DC(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100002370(&qword_10003BFD8, &qword_100027A58);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v22[-v9];
  __chkstk_darwin(v8);
  v12 = &v22[-v11];
  if ((a1 & 1) == 0)
  {
    v13 = [objc_opt_self() boldButton];
    sub_100025ABC();
    v16 = sub_100025AAC();
    if ((*(*(v16 - 8) + 48))(v12, 1, v16))
    {
      sub_10000EB94(v12, v10, &qword_10003BFD8, &qword_100027A58);
      sub_100025ACC();

      v15 = v12;
      goto LABEL_6;
    }

    v18 = [objc_opt_self() orangeColor];
    v19 = sub_100025A8C();
    sub_1000257EC();
    v19(v22, 0);
LABEL_9:
    sub_100025ACC();

    goto LABEL_10;
  }

  v13 = [objc_opt_self() linkButton];
  sub_100025ABC();
  v14 = sub_100025AAC();
  if (!(*(*(v14 - 8) + 48))(v7, 1, v14))
  {
    v17 = [objc_opt_self() orangeColor];
    sub_100025A9C();
    goto LABEL_9;
  }

  sub_10000EB94(v7, v10, &qword_10003BFD8, &qword_100027A58);
  sub_100025ACC();

  v15 = v7;
LABEL_6:
  sub_10000EBFC(v15, &qword_10003BFD8, &qword_100027A58);
LABEL_10:
  v20 = sub_1000258BC();
  [v13 setTitle:v20 forState:0];

  return v13;
}

uint64_t sub_100023950()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023990()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetupError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SetupError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100023B40(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100023B54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100023BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100023C24()
{
  result = qword_10003BFE8;
  if (!qword_10003BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BFE8);
  }

  return result;
}

id sub_100023CA0(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC21MediaSetupViewService15MainContentView____lazy_storage___homeImageView] = 1;
  v9 = OBJC_IVAR____TtC21MediaSetupViewService15MainContentView_settingsImageView;
  v10 = sub_1000258BC();
  v11 = [objc_opt_self() imageNamed:v10];

  v12 = [objc_allocWithZone(UIImageView) initWithImage:v11];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v4[v9] = v12;
  *&v4[OBJC_IVAR____TtC21MediaSetupViewService15MainContentView____lazy_storage___exampleLabel] = 0;
  v13 = &v4[OBJC_IVAR____TtC21MediaSetupViewService15MainContentView_viewModel];
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for MainContentView();

  v14 = a4;
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v15 setTranslatesAutoresizingMaskIntoConstraints:{0, v17.receiver, v17.super_class}];
  sub_100023F5C();

  return v15;
}

uint64_t sub_100023E20(void *a1)
{
  v3 = OBJC_IVAR____TtC21MediaSetupViewService15MainContentView____lazy_storage___homeImageView;
  *(v1 + OBJC_IVAR____TtC21MediaSetupViewService15MainContentView____lazy_storage___homeImageView) = 1;
  v4 = OBJC_IVAR____TtC21MediaSetupViewService15MainContentView_settingsImageView;
  v5 = sub_1000258BC();
  v6 = [objc_opt_self() imageNamed:v5];

  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC21MediaSetupViewService15MainContentView____lazy_storage___exampleLabel;
  *(v1 + OBJC_IVAR____TtC21MediaSetupViewService15MainContentView____lazy_storage___exampleLabel) = 0;
  sub_10000EE44(*(v1 + v3));

  type metadata accessor for MainContentView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_100023F5C()
{
  v1 = v0[OBJC_IVAR____TtC21MediaSetupViewService15MainContentView_viewModel];
  v2 = sub_100024210(v0[OBJC_IVAR____TtC21MediaSetupViewService15MainContentView_viewModel]);
  if (v1 == 1)
  {
    v20 = v2;
    v3 = sub_100024BF4();
    [v0 addSubview:v3];

    v4 = objc_opt_self();
    sub_100002370(&qword_10003B7B0, &unk_1000271F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000276A0;
    v6 = OBJC_IVAR____TtC21MediaSetupViewService15MainContentView____lazy_storage___exampleLabel;
    v7 = [*&v0[OBJC_IVAR____TtC21MediaSetupViewService15MainContentView____lazy_storage___exampleLabel] topAnchor];
    v8 = [v20 bottomAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:50.0];

    *(v5 + 32) = v9;
    v10 = [*&v0[v6] centerXAnchor];
    v11 = [v0 centerXAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v5 + 40) = v12;
    v13 = [*&v0[v6] leadingAnchor];
    v14 = [v0 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:16.0];

    *(v5 + 48) = v15;
    v16 = [*&v0[v6] trailingAnchor];
    v17 = [v0 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:-16.0];

    *(v5 + 56) = v18;
    sub_10000E970(0, &qword_10003BFD0, NSLayoutConstraint_ptr);
    isa = sub_10002596C().super.isa;

    [v4 activateConstraints:isa];

    v2 = v20;
  }
}

id sub_100024210(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    v2 = *&v1[OBJC_IVAR____TtC21MediaSetupViewService15MainContentView_settingsImageView];
  }

  else
  {
    v2 = sub_100024498();
    if (!v2)
    {
      v2 = [objc_allocWithZone(UIImageView) init];
    }
  }

  v3 = v2;
  [v1 addSubview:v3];
  v4 = objc_opt_self();
  sub_100002370(&qword_10003B7B0, &unk_1000271F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000276A0;
  v6 = [v3 widthAnchor];
  v7 = [v6 constraintLessThanOrEqualToConstant:180.0];

  *(v5 + 32) = v7;
  v8 = [v3 heightAnchor];
  v9 = [v3 widthAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v5 + 40) = v10;
  v11 = [v3 centerXAnchor];
  v12 = [v1 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v5 + 48) = v13;
  v14 = [v3 topAnchor];

  v15 = [v1 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v5 + 56) = v16;
  sub_10000E970(0, &qword_10003BFD0, NSLayoutConstraint_ptr);
  isa = sub_10002596C().super.isa;

  [v4 activateConstraints:isa];

  return v3;
}

id sub_100024498()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService15MainContentView____lazy_storage___homeImageView;
  v2 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService15MainContentView____lazy_storage___homeImageView);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100024508(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10000EE44(v4);
  }

  sub_10000EE54(v2);
  return v3;
}

id sub_100024508(uint64_t a1)
{
  v2 = sub_1000258BC();
  v3 = [objc_opt_self() imageNamed:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *(a1 + OBJC_IVAR____TtC21MediaSetupViewService15MainContentView_viewModel + 8);
  v6 = *(a1 + OBJC_IVAR____TtC21MediaSetupViewService15MainContentView_viewModel + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  v8 = v4;
  sub_100022734(v5, v6, sub_10002543C, v7);

  return v8;
}

uint64_t sub_100024624(void *a1, void *a2)
{
  v4 = sub_10002580C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002583C();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E970(0, &qword_10003B3A0, OS_dispatch_queue_ptr);
  v11 = sub_100025A4C();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_100025484;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C280;
  aBlock[3] = &unk_100035D40;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v15 = a2;

  sub_10002582C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000254A4();
  sub_100002370(&qword_10003B540, "V\x1B");
  sub_1000254FC();
  sub_100025B1C();
  sub_100025A5C();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v18);
}

void sub_1000248C0(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(UIImageView) initWithImage:a1];
  v4 = [v3 layer];
  [v4 setShadowRadius:4.0];

  v5 = [v3 layer];
  [v5 setShadowOffset:{0.0, 2.0}];

  v6 = [v3 layer];
  LODWORD(v7) = 1041865114;
  [v6 setShadowOpacity:v7];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [a2 addSubview:v3];
  v8 = objc_opt_self();
  sub_100002370(&qword_10003B7B0, &unk_1000271F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000276A0;
  v10 = [v3 widthAnchor];
  v11 = [v10 constraintLessThanOrEqualToConstant:60.0];

  *(v9 + 32) = v11;
  v12 = [v3 heightAnchor];
  v13 = [v3 widthAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v9 + 40) = v14;
  v15 = [v3 trailingAnchor];
  v16 = [a2 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:0.0];

  *(v9 + 48) = v17;
  v18 = [v3 bottomAnchor];

  v19 = [a2 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:0.0];

  *(v9 + 56) = v20;
  sub_10000E970(0, &qword_10003BFD0, NSLayoutConstraint_ptr);
  isa = sub_10002596C().super.isa;

  [v8 activateConstraints:isa];
}

id sub_100024BF4()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService15MainContentView____lazy_storage___exampleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService15MainContentView____lazy_storage___exampleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService15MainContentView____lazy_storage___exampleLabel);
  }

  else
  {
    v4 = sub_100024C58(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100024C58(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
  [v2 setFont:v3];

  [v2 setNumberOfLines:0];
  sub_100025064(*(a1 + OBJC_IVAR____TtC21MediaSetupViewService15MainContentView_viewModel + 24));
  v4 = sub_1000258BC();

  [v2 setText:v4];

  [v2 setTextAlignment:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v2;
}

id sub_100024DA4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MainContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_100024E74(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100024E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100024EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100024F18(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_10002590C();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_100024FB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter(a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = sub_10002590C();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_100025064(void *a1)
{
  v2 = [a1 intentExamples];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10002597C();

    if (v4[2])
    {
      v5 = v4[4];
      v6 = v4[5];
      swift_bridgeObjectRetain_n();

      sub_100024F18(1, v5, v6, v7);

      v8 = sub_100025AEC();
      v10 = v9;

      sub_100024FB4(1uLL, v5, v6, v11);

      sub_1000253B0();
      sub_10002591C();

      v12 = v8;
      v13 = objc_opt_self();

      v14 = [v13 mainBundle];
      v28._countAndFlagsBits = 0xE000000000000000;
      v29._countAndFlagsBits = 0x495249535F594548;
      v29._object = 0xE800000000000000;
      v31.value._countAndFlagsBits = 0;
      v31.value._object = 0;
      v15.super.isa = v14;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      sub_10002567C(v29, v31, v15, v33, 0, v28);

      sub_100002370(&qword_10003B2F8, "\n%");
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100026BD0;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_100004010();
      *(v16 + 32) = v12;
      *(v16 + 40) = v10;
      v17 = sub_1000258DC();

      return v17;
    }
  }

  v19 = [a1 serviceName];
  v20 = sub_1000258CC();
  v22 = v21;

  v23 = objc_opt_self();

  v24 = [v23 mainBundle];
  v28._countAndFlagsBits = 0xE000000000000000;
  v30._object = 0x8000000100028FA0;
  v30._countAndFlagsBits = 0xD000000000000018;
  v32.value._countAndFlagsBits = 0;
  v32.value._object = 0;
  v25.super.isa = v24;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10002567C(v30, v32, v25, v34, 0, v28);

  sub_100002370(&qword_10003B2F8, "\n%");
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100026BD0;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_100004010();
  *(v26 + 32) = v20;
  *(v26 + 40) = v22;
  v27 = sub_1000258DC();

  return v27;
}

unint64_t sub_1000253B0()
{
  result = qword_10003C038;
  if (!qword_10003C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C038);
  }

  return result;
}

uint64_t sub_100025404()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025444()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002548C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000254A4()
{
  result = qword_10003B538;
  if (!qword_10003B538)
  {
    sub_10002580C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B538);
  }

  return result;
}

unint64_t sub_1000254FC()
{
  result = qword_10003B548;
  if (!qword_10003B548)
  {
    sub_10000EACC(&qword_10003B540, "V\x1B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B548);
  }

  return result;
}

unint64_t sub_100025574()
{
  result = qword_10003C040;
  if (!qword_10003C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C040);
  }

  return result;
}