void sub_1680()
{
  v1 = v0;
  [v0 setEditingButtonHidden:1 animated:0];
  v45 = &_swiftEmptyArrayStorage;
  v2 = sub_2C8C();
  v3 = objc_opt_self();
  static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000014, 0x8000000000023650);
  sub_93C8();
  v6 = sub_1E818(0xD000000000000023, 0x8000000000023620, v4, v5, v3);
  v7 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfGroup;
  v8 = *&v0[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfGroup];
  *&v0[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfGroup] = v6;
  v9 = v6;

  v10 = "MESSAGE_WITHOUT_CONFIRMATION_OFF_FOOTER";
  if (v2)
  {
    v10 = "MESSAGE_WITHOUT_CONFIRMATION_FOOTER";
  }

  if (!v6)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v2)
  {
    v11 = 0xD000000000000023;
  }

  else
  {
    v11 = 0xD000000000000027;
  }

  static MessagesSettingsUtils.getLocalizedString(_:)(v11, ((v10 - 32) | 0x8000000000000000));
  v12 = sub_21EE4();

  sub_21EF4();
  sub_93C8();
  sub_93F0();
  sub_1E79C(v13, v14, v15, v9);

  v16 = *&v1[v7];
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = v16;
  sub_21F64();
  v18 = *(&dword_18 + (v45 & 0xFFFFFFFFFFFFFF8));
  if (*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)) >= v18 >> 1)
  {
    sub_945C(v18);
    sub_21FA4();
  }

  sub_21FD4();
  v19 = static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000023, 0x8000000000023620);
  v24 = sub_95FC(v19, v20, v1, "setMessageWithoutConfEnabled:specifier:", "getMessageWithoutConfEnabledWithSpecifier:", v21, v22, v23, v3);
  v25 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfSpecifier;
  v26 = *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfSpecifier];
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfSpecifier] = v24;
  v27 = v24;

  if (!v24)
  {
    goto LABEL_24;
  }

  isa = sub_21FE4().super.super.isa;
  sub_21EF4();
  sub_93C8();
  sub_93F0();
  sub_1E79C(v29, v30, v31, v27);

  v32 = *&v1[v25];
  if (!v32)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v33 = v32;

  sub_21F64();
  v34 = *(&dword_18 + (v45 & 0xFFFFFFFFFFFFFF8));
  if (*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)) >= v34 >> 1)
  {
    sub_945C(v34);
    sub_21FA4();
  }

  sub_21FD4();
  v44[3] = &type metadata for MultilingualReadingFlag;
  v44[4] = sub_9188();
  v35 = sub_21CD4();
  sub_91DC(v44);
  if (v35)
  {
    sub_2CE4();
    sub_A440(v36);
  }

  v37 = v45;
  sub_2234(v45, v2 & 1, 0);
  if (v38)
  {
    v39 = v38;
    v40 = sub_1EA3C(v38);
    if (v40)
    {
      v41 = sub_1C99C(v40);

      if (v41)
      {

        v37 = v41;
      }
    }

    else
    {
    }
  }

  v43 = sub_1CAA8(v42);
  sub_1E9CC(v43, v1);

  sub_1CAA8(v37);
}

void sub_1A5C(uint64_t a1)
{
  sub_21FF4();
  sub_96A8();
  if (!v1)
  {
    sub_9368(&qword_31548);
  }

  v2 = sub_21E64();
  sub_9444(v2, qword_31EE0);
  oslog = sub_21E54();
  v3 = sub_220A4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = sub_94E0();
    *v4 = 0;
    _os_log_impl(&dword_0, oslog, v3, "#MessagingWithSiriController error setting auto send enable setting", v4, 2u);
    sub_9474(v4);
  }
}

Class sub_1EA0(uint64_t a1)
{
  v1 = sub_2C8C();
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v2 = sub_21E64();
  sub_9444(v2, qword_31EE0);
  v3 = sub_21E54();
  v4 = sub_220B4();
  if (sub_948C(v4))
  {
    v5 = sub_9634();
    *v5 = 67109120;
    v5[1] = v1 & 1;
    sub_9434();
    _os_log_impl(v6, v7, v8, v9, v10, 8u);
    sub_93D4();
  }

  sub_8AF4(0, &qword_31648, NSNumber_ptr);
  return sub_220E4(v1 & 1).super.super.isa;
}

id sub_1FD4(char a1)
{
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages] = 0;

  v4.receiver = v1;
  v4.super_class = type metadata accessor for MessagingWithSiriController();
  return objc_msgSendSuper2(&v4, "viewWillDisappear:", a1 & 1);
}

id sub_2080()
{
  *&v0[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages] = 0;

  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagingWithSiriController();
  return objc_msgSendSuper2(&v2, "applicationWillSuspend");
}

void sub_2110(uint64_t a1)
{
  v2 = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for MessagingWithSiriController();
  objc_msgSendSuper2(&v12, "viewWillAppear:", v2 & 1);
  sub_88D0(v1);

  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v3 = sub_21E64();
  sub_9444(v3, qword_31EE0);
  v4 = sub_21E54();
  v5 = sub_220B4();
  if (sub_970C(v5))
  {
    v6 = sub_94E0();
    sub_95D4(v6);
    sub_9554();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    sub_93AC();
  }
}

void sub_2234(unint64_t a1, char a2, char a3)
{
  v5 = v3;
  sub_1CAA8(a1);
  v9 = objc_allocWithZone(PSSpecifierUpdates);
  v10 = sub_95A4();
  v11 = sub_1E448(v10);
  if (!v11)
  {
    if (qword_31548 != -1)
    {
      sub_9368(&qword_31548);
    }

    v42 = sub_21E64();
    sub_9444(v42, qword_31EE0);
    v43 = sub_21E54();
    v44 = sub_220A4();
    if (sub_948C(v44))
    {
      *sub_94E0() = 0;
      sub_9434();
      _os_log_impl(v45, v46, v47, v48, v49, 2u);
      sub_93D4();
    }

    goto LABEL_41;
  }

  if ((a2 & 1) == 0)
  {
    v50 = *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_destinationSpecifierGroup];
    if (v50)
    {
      v51 = v50;
      sub_1CC14(v51, a1);
      if (v53)
      {
      }

      else
      {
        v58 = v52;
        if (qword_31548 != -1)
        {
          sub_9368(&qword_31548);
        }

        v59 = sub_21E64();
        sub_9444(v59, qword_31EE0);
        v60 = sub_21E54();
        v61 = sub_220B4();
        if (sub_95E0(v61))
        {
          v62 = sub_94E0();
          *v62 = 0;
          _os_log_impl(&dword_0, v60, v4, "#MessagingWithSiriController removing child settings since autosend setting is disabled", v62, 2u);
          sub_9474(v62);
        }

        v63 = [v5 specifierAtIndex:v58];
        v64 = sub_95BC();
        [v64 v65];
      }
    }

    goto LABEL_39;
  }

  v12 = objc_opt_self();
  static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000030, 0x80000000000234D0);
  sub_93C8();
  v15 = sub_1E818(0xD000000000000033, 0x8000000000023490, v13, v14, v12);
  v16 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_destinationSpecifierGroup];
  *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_destinationSpecifierGroup] = v15;
  v17 = v15;

  if (!v15)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_21F64();
  sub_9694();
  if (v19)
  {
    sub_945C(v18);
    sub_21FA4();
  }

  sub_21FD4();
  v20 = static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000027, 0x8000000000023510);
  v25 = sub_95FC(v20, v21, v5, "setMessageWithoutConfHeadphonesEnabled:specifier:", "getMessageWithoutConfHeadphonesEnabledWithSpecifier:", v22, v23, v24, v12);
  v26 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_headPhonesSpecifier];
  *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_headPhonesSpecifier] = v25;
  v27 = v25;

  if (!v25)
  {
    goto LABEL_45;
  }

  sub_21F64();
  sub_9694();
  if (v19)
  {
    sub_945C(v28);
    sub_21FA4();
  }

  sub_21FD4();
  if (sub_9BE4())
  {
LABEL_14:
    if (qword_31548 != -1)
    {
      sub_9368(&qword_31548);
    }

    v38 = sub_21E64();
    sub_9444(v38, qword_31EE0);

    v39 = sub_21E54();
    v40 = sub_220B4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = sub_94C8();
      *v41 = 134217984;
      *(v41 + 4) = sub_1EBC4(&_swiftEmptyArrayStorage);

      _os_log_impl(&dword_0, v39, v40, "#MessagingWithSiriController adding %ld child settings since autosend setting is enabled", v41, 0xCu);
      sub_9474(v41);
    }

    else
    {
    }

    v54 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfSpecifier];
    if (!v54)
    {
      goto LABEL_29;
    }

    v55 = v54;
    sub_1CC14(v55, a1);
    if (v57)
    {

LABEL_29:

      goto LABEL_39;
    }

    v66 = v56;
    v67 = sub_21E54();
    v68 = sub_220B4();
    if (sub_95E0(v68))
    {
      v69 = sub_94C8();
      *v69 = 134217984;
      *(v69 + 4) = v66;
      _os_log_impl(&dword_0, v67, v39, "#MessagingWithSiriController %ld", v69, 0xCu);
      sub_9474(v69);
    }

    v70 = sub_1CAA8(&_swiftEmptyArrayStorage);

    if (__OFADD__(v66, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    sub_1E95C(v70, v66 + 1, v11);

LABEL_39:
    v71 = [v11 context];
    if (v71)
    {
      v43 = v71;
      [v71 setAnimated:a3 & 1];
LABEL_41:

      return;
    }

    goto LABEL_43;
  }

  v29 = static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000024, 0x8000000000023540);
  v34 = sub_95FC(v29, v30, v5, "setMessageWithoutConfCarPlayEnabled:specifier:", "getMessageWithoutConfCarPlayEnabledWithSpecifier:", v31, v32, v33, v12);
  v35 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_carPlaySpecifier];
  *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_carPlaySpecifier] = v34;
  v36 = v34;

  if (v34)
  {
    sub_21F64();
    v37 = *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= v37 >> 1)
    {
      sub_945C(v37);
      sub_21FA4();
    }

    sub_21FD4();
    goto LABEL_14;
  }

LABEL_46:
  __break(1u);
}

void sub_28F4(uint64_t a1, uint64_t a2, const char *a3, SEL *a4, const char *a5, ...)
{
  sub_21FF4();
  sub_96A8();
  if (!v6)
  {
    sub_9368(&qword_31548);
  }

  v7 = sub_21E64();
  sub_9444(v7, qword_31EE0);
  oslog = sub_21E54();
  v8 = sub_220A4();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = sub_94E0();
    *v9 = 0;
    _os_log_impl(&dword_0, oslog, v8, a5, v9, 2u);
    sub_9474(v9);
  }
}

Class sub_2B20(uint64_t a1, SEL *a2, const char *a3, ...)
{
  v5 = [objc_opt_self() sharedPreferences];
  v6 = [v5 *a2];

  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v7 = sub_21E64();
  sub_9444(v7, qword_31EE0);
  v8 = sub_21E54();
  v9 = sub_220B4();
  if (sub_9418(v9))
  {
    v10 = sub_9634();
    *v10 = 67109120;
    *(v10 + 4) = v6;
    sub_958C();
    _os_log_impl(v11, v12, v13, a3, v10, 8u);
    sub_93FC();
  }

  sub_8AF4(0, &qword_31648, NSNumber_ptr);
  return sub_220E4(v6).super.super.isa;
}

id sub_2C8C()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 getMessageWithoutConfirmationEnabled];

  return v1;
}

void sub_2CE4()
{
  v1 = v0;
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v2 = sub_21E64();
  sub_9444(v2, qword_31EE0);
  v3 = sub_21E54();
  v4 = sub_220B4();
  if (sub_948C(v4))
  {
    *sub_94E0() = 0;
    sub_9434();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_93D4();
  }

  v10 = objc_opt_self();
  v11 = sub_96D4("READ_MESSAGES_HEADER");
  v13 = sub_8830(v11, v12, v10);
  v14 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup;
  v15 = *(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup);
  *(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup) = v13;
  v16 = v13;

  if (!v13)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_96D4("ADD_LANGUAGES_FOOTER");
  v17 = sub_21EE4();

  sub_21EF4();
  sub_93C8();
  sub_93F0();
  sub_1E79C(v18, v19, v20, v16);

  v21 = *(v1 + v14);
  if (!v21)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v21;
  sub_21F64();
  v23 = *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= v23 >> 1)
  {
    sub_945C(v23);
    sub_21FA4();
  }

  sub_21FD4();
  if (!*(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages))
  {
    sub_3044();
  }

  type metadata accessor for ListOfLanguagesController();
  v24 = [v10 preferenceSpecifierNamed:0 target:v1 set:0 get:0 detail:swift_getObjCClassFromMetadata() cell:1 edit:0];
  v25 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguageLink;
  v26 = *(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguageLink);
  *(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguageLink) = v24;
  v27 = v24;

  if (!v27)
  {
    goto LABEL_20;
  }

  type metadata accessor for AddLanguagesCell();
  sub_7E80(&qword_31640, &qword_22C60);
  sub_222D4();
  sub_21EF4();
  sub_93C8();
  sub_93F0();
  sub_1E79C(v28, v29, v30, v27);

  swift_unknownObjectRelease();
  v31 = *(v1 + v25);
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v31;
  isa = sub_21FE4().super.super.isa;
  sub_21EF4();
  sub_93C8();
  sub_93F0();
  sub_1E79C(v34, v35, v36, v32);

  v37 = *(v1 + v25);
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_21EF4();
  sub_93C8();
  sub_93F0();
  sub_1E79C(v38, v39, v40, v37);
  v41 = *(v1 + v25);
  if (!v41)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v42 = v41;
  sub_21F64();
  v43 = *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= v43 >> 1)
  {
    sub_945C(v43);
    sub_21FA4();
  }

  sub_21FD4();
}

uint64_t sub_3044()
{
  v1 = v0;
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v2 = sub_21E64();
  sub_9444(v2, qword_31EE0);
  v3 = sub_21E54();
  v4 = sub_220B4();
  if (sub_948C(v4))
  {
    *sub_94E0() = 0;
    sub_9434();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_93D4();
  }

  if (qword_31520 != -1)
  {
    swift_once();
  }

  sub_9598();
  swift_beginAccess();
  v10 = static MessagesSettingsUtils.daemonSession;
  sub_9688();
  *(swift_allocObject() + 16) = v1;
  v11 = v10;
  v12 = v1;
  sub_21CE4();
}

void sub_319C(uint64_t a1, char *a2)
{
  v122 = a2;
  v3 = sub_21E84();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v119 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21EA4();
  v118 = *(v6 - 8);
  __chkstk_darwin(v6);
  v117 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_21C34();
  isa = v131[-1].isa;
  __chkstk_darwin(v131);
  v10 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = &_swiftEmptyArrayStorage;
  v11 = [objc_opt_self() sharedPreferences];
  v12 = sub_892C(v11);
  if (v13)
  {
    v14 = v12;
    v114 = v6;
    v15 = v13;
    v16 = sub_8AF4(0, &qword_315E8, NSLocale_ptr);

    v120 = v15;
    v127 = v16;
    v17 = sub_17804(v14, v15);
    v18 = [v17 languageCode];

    v125 = sub_21EF4();
    v20 = v19;

    v21 = sub_1EBC4(a1);
    v22 = &_swiftEmptyArrayStorage;
    v130 = a1;
    v128 = v20;
    v116 = v3;
    v115 = v4;
    if (!v21)
    {
LABEL_12:
      v37 = sub_414C(v22);
      if (qword_31540 != -1)
      {
        goto LABEL_64;
      }

      while (1)
      {
        v38 = sub_1B854();
        v39 = sub_420C(v38, v37);
        v40 = v39 + 56;
        v41 = 1 << *(v39 + 32);
        v42 = -1;
        if (v41 < 64)
        {
          v42 = ~(-1 << v41);
        }

        v43 = v42 & *(v39 + 56);
        v37 = (v41 + 63) >> 6;
        v113 = PSCellClassKey;
        v126 = v39;

        v44 = 0;
        *&v45 = 136315138;
        v129 = v45;
        v121 = &_swiftEmptyArrayStorage;
        v124 = v40;
        v123 = v37;
        if (v43)
        {
          break;
        }

LABEL_16:
        while (1)
        {
          v46 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v46 >= v37)
          {

            v91 = sub_21EE4();
            v92 = [v122 valueForKey:v91];

            if (v92)
            {
              sub_22124();
              swift_unknownObjectRelease();
            }

            else
            {
              v137 = 0u;
              v138 = 0u;
            }

            v97 = swift_allocObject();
            aBlock = v137;
            v133 = v138;
            if (*(&v138 + 1))
            {
              sub_7E80(&qword_31618, &unk_22C50);
              if (swift_dynamicCast())
              {
                v98 = v136;
                *(v97 + 16) = v136;
                v99 = *&v122[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup];
                if (v99)
                {

                  v100 = v99;

                  sub_1CC14(v100, v98);
                  v102 = v101;
                  v104 = v103;

                  if (v104)
                  {
                  }

                  else
                  {
                    sub_8AF4(0, &qword_31620, OS_dispatch_queue_ptr);
                    v105 = sub_220C4();
                    v106 = swift_allocObject();
                    v107 = v122;
                    v106[2] = v102;
                    v106[3] = v107;
                    v106[4] = v121;
                    v106[5] = v97;
                    v106[6] = v130;
                    v134 = sub_8A20;
                    v135 = v106;
                    *&aBlock = _NSConcreteStackBlock;
                    *(&aBlock + 1) = 1107296256;
                    *&v133 = sub_55D0;
                    *(&v133 + 1) = &unk_2CAF0;
                    v108 = _Block_copy(&aBlock);
                    v109 = v107;

                    v110 = v117;
                    sub_21E94();
                    *&aBlock = &_swiftEmptyArrayStorage;
                    sub_92C0(&qword_31628, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                    sub_7E80(&qword_31630, &qword_23050);
                    sub_8A48();
                    v111 = v119;
                    v112 = v116;
                    sub_22134();
                    sub_220D4();
                    _Block_release(v108);

                    (*(v115 + 8))(v111, v112);
                    (*(v118 + 8))(v110, v114);
                  }
                }

                else
                {
                  __break(1u);
                }

                return;
              }
            }

            else
            {

              sub_8F6C(&aBlock, &qword_31610, &qword_23080);
            }

            swift_deallocUninitializedObject();
            return;
          }

          v43 = *(v40 + 8 * v46);
          ++v44;
          if (v43)
          {
            v44 = v46;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_64:
        swift_once();
      }

      while (1)
      {
LABEL_20:
        v47 = *(v126 + 48) + ((v44 << 10) | (16 * __clz(__rbit64(v43))));
        v49 = *v47;
        v48 = *(v47 + 8);
        v50 = qword_31548;

        if (v50 != -1)
        {
          swift_once();
        }

        v51 = sub_21E64();
        sub_87F8(v51, qword_31EE0);

        v52 = sub_21E54();
        v53 = sub_220B4();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *&aBlock = v55;
          *v54 = v129;
          *(v54 + 4) = sub_E6C0(v49, v48, &aBlock);
          _os_log_impl(&dword_0, v52, v53, "#MessagingWithSiriController Locale.LanguageCode(asset.primaryLanguage) %s", v54, 0xCu);
          sub_91DC(v55);
        }

        v131 = v49;
        v56 = sub_17804(v49, v48);
        v57 = [v56 languageCode];

        v58 = sub_21EF4();
        v60 = v59;

        v61 = sub_21E54();
        v62 = sub_220B4();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *&aBlock = v64;
          *v63 = v129;
          *(v63 + 4) = sub_E6C0(v58, v60, &aBlock);
          _os_log_impl(&dword_0, v61, v62, "#MessagingWithSiriController baseLanguage %s", v63, 0xCu);
          sub_91DC(v64);
          v20 = v128;
        }

        v65 = sub_21E54();
        v66 = sub_220B4();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v69 = v20;
          v70 = v68;
          *&aBlock = v68;
          *v67 = v129;
          *(v67 + 4) = sub_E6C0(v125, v69, &aBlock);
          _os_log_impl(&dword_0, v65, v66, "#MessagingWithSiriController currentLanguageCode %s", v67, 0xCu);
          sub_91DC(v70);
        }

        v43 &= v43 - 1;
        sub_8AF4(0, &qword_315F0, SUICAssistantVoiceSettingsConnection_ptr);
        v71 = sub_C57C(v131, v48);
        if (!v72)
        {
          break;
        }

        v73 = v71;
        v74 = v72;
        v20 = v128;

        v75 = sub_17804(v125, v20);
        v76 = sub_C700(v58, v60);

        if (v76)
        {

LABEL_32:
          v40 = v124;
          goto LABEL_37;
        }

        v77 = sub_21E54();
        v78 = sub_220B4();

        v79 = os_log_type_enabled(v77, v78);
        v40 = v124;
        if (v79)
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          *&aBlock = v81;
          *v80 = v129;
          *(v80 + 4) = sub_E6C0(v73, v74, &aBlock);
          _os_log_impl(&dword_0, v77, v78, "#MessagingWithSiriController readableString %s", v80, 0xCu);
          sub_91DC(v81);
          v20 = v128;
        }

        v82 = objc_opt_self();
        type metadata accessor for ReadingVoiceListController();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v84 = sub_16F0C(v73, v74, v122, 0, 0, ObjCClassFromMetadata, 1, 0, v82);
        if (v84)
        {
          v85 = v84;
          *&aBlock = type metadata accessor for LanguageCell();
          sub_7E80(&qword_31608, &unk_22C40);
          v86 = sub_222D4();
          v87 = sub_21EF4();
          sub_1E79C(v86, v87, v88, v85);
          swift_unknownObjectRelease();
          v89 = v85;
          sub_21F64();
          if (*(&dword_10 + (v139 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v139 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_21FA4();
          }

          sub_21FD4();
          v121 = v139;
          if (qword_31530 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v137 = static MessagesSettingsUtils.readableLanguageToLocaleMap;
          sub_19898(v131, v48, v73, v74, isUniquelyReferenced_nonNull_native);
          static MessagesSettingsUtils.readableLanguageToLocaleMap = v137;

          swift_endAccess();

          goto LABEL_38;
        }

LABEL_37:

LABEL_38:
        v37 = v123;
        if (!v43)
        {
          goto LABEL_16;
        }
      }

      v20 = v128;
      goto LABEL_32;
    }

    v23 = v21;
    v24 = a1;
    *&aBlock = &_swiftEmptyArrayStorage;
    sub_1E578(0, v21 & ~(v21 >> 63), 0);
    if ((v23 & 0x8000000000000000) == 0)
    {
      v25 = 0;
      v22 = aBlock;
      *&v129 = v24 & 0xC000000000000001;
      v26 = (isa + 8);
      v27 = v23;
      do
      {
        if (v129)
        {
          v28 = sub_221D4();
        }

        else
        {
          v28 = *(v24 + 8 * v25 + 32);
        }

        v29 = v28;
        v30 = sub_21DA4();
        sub_EF18();

        sub_21C44();
        v31 = sub_21C14();
        v33 = v32;

        (*v26)(v10, v131);
        *&aBlock = v22;
        v35 = v22[2];
        v34 = v22[3];
        if (v35 >= v34 >> 1)
        {
          sub_1E578((v34 > 1), v35 + 1, 1);
          v22 = aBlock;
        }

        ++v25;
        v22[2] = v35 + 1;
        v36 = &v22[2 * v35];
        *(v36 + 4) = v31;
        *(v36 + 5) = v33;
        v24 = v130;
      }

      while (v27 != v25);
      v20 = v128;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_66;
  }

  if (qword_31548 != -1)
  {
LABEL_66:
    swift_once();
  }

  v93 = sub_21E64();
  sub_87F8(v93, qword_31EE0);
  v131 = sub_21E54();
  v94 = sub_220A4();
  if (os_log_type_enabled(v131, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_0, v131, v94, "#MessagingWithSiriController currentLanguage is nil", v95, 2u);
  }

  v96 = v131;
}

uint64_t sub_414C(uint64_t a1)
{
  result = sub_22064();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1BBF8(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_420C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1BBF8(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_42B4(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v9 = sub_21E64();
  sub_87F8(v9, qword_31EE0);
  v10 = sub_21E54();
  v11 = sub_220B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_0, v10, v11, "#MessagingWithSiriController adding voice group %ld", v12, 0xCu);
  }

  *&a2[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages] = a3;

  swift_beginAccess();

  v14 = sub_1CAA8(v13);

  v15 = objc_allocWithZone(PSSpecifierUpdates);
  v16 = sub_1E448(v14);
  if (v16)
  {
    v17 = v16;
    [v16 removeSpecifiersInGroup:*&a2[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup]];
    v18 = sub_1CAA8(a3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1E95C(v18, a1 + 1, v17);
      v19 = *&a2[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguageLink];
      v20 = sub_1EBC4(a3);
      v21 = v20 + a1;
      if (!__OFADD__(v20, a1))
      {
        if (!__OFADD__(v21, 1))
        {
          [v17 insertSpecifier:v19 atIndex:v21 + 1];
          v22 = [v17 context];
          if (v22)
          {
            v23 = v22;
            [v22 setAnimated:1];

            v24 = sub_1EA3C(v17);
            if (v24)
            {
              v25 = sub_1C99C(v24);

              if (v25)
              {
                swift_beginAccess();
                *(a4 + 16) = v25;
              }
            }

            swift_beginAccess();

            v27 = sub_1CAA8(v26);

            sub_1E9CC(v27, a2);

            v28 = sub_21E54();
            v29 = sub_220B4();

            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              v38 = v31;
              *v30 = 136315138;
              sub_21DB4();
              v32 = sub_21F94();
              v34 = sub_E6C0(v32, v33, &v38);

              *(v30 + 4) = v34;
              _os_log_impl(&dword_0, v28, v29, "#MessagingWithSiriController subscribed voices %s", v30, 0xCu);
              sub_91DC(v31);
            }

            return;
          }

LABEL_22:
          __break(1u);
          return;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v35 = sub_21E54();
  v36 = sub_220A4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_0, v35, v36, "#MessagingWithSiriController handleURL failed to get updates", v37, 2u);
  }
}

void sub_46C4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_tableView);
  *(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_tableView) = a1;
  v3 = a1;

  isa = sub_21CA4().super.isa;
  v5 = sub_95BC();
  v7 = [v5 v6];

  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v8 = sub_21E64();
  sub_9444(v8, qword_31EE0);
  v18 = v7;
  oslog = sub_21E54();
  v9 = sub_220B4();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = sub_94C8();
    v11 = sub_94F8();
    v19 = v11;
    *v10 = 136315138;
    if (v18 && (v12 = sub_1AE44(v18), v13))
    {
      v14 = v13;
    }

    else
    {

      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v16 = sub_E6C0(v12, v14, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_0, oslog, v9, "#MessagingWithSiriController endDisplaying %s", v10, 0xCu);
    sub_91DC(v11);
    sub_93AC();
    sub_9474(v10);

    v15 = v18;
  }

  else
  {

    v15 = oslog;
  }
}

uint64_t sub_4984()
{
  sub_9574();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_21E84();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v4 = sub_21EA4();
  v1[28] = v4;
  v1[29] = *(v4 - 8);
  v1[30] = swift_task_alloc();
  sub_22024();
  v1[31] = sub_22014();
  sub_95A4();
  sub_22004();
  sub_93C8();
  sub_93F0();

  return _swift_task_switch(v5);
}

void sub_4AC4()
{
  v37 = v0;
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v1 = v0[23];
  v2 = sub_21E64();
  sub_9444(v2, qword_31EE0);

  v3 = sub_21E54();
  v4 = sub_220B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = sub_94C8();
    v7 = sub_94F8();
    v36 = v7;
    *v6 = 136315138;
    v0[22] = v5;

    sub_7E80(&qword_31690, &qword_22CF0);
    v8 = sub_21F14();
    v10 = sub_E6C0(v8, v9, &v36);

    *(v6 + 4) = v10;
    sub_96B4(&dword_0, v11, v12, "#MessagingWithSiriController handleURL resourceDictionary = %s");
    sub_91DC(v7);
    sub_9474(v7);
    sub_9474(v6);
  }

  if (v0[23])
  {

    v0[17] = 0x65676175676E616CLL;
    v0[18] = 0xE800000000000000;
    sub_22174();
    sub_1ECEC(v1, v0 + 13, (v0 + 8));
    sub_912C((v0 + 8));
    if (v0[16])
    {
      if (sub_96F4())
      {
        v13 = v0[19];
        v14 = v0[20];

        v15 = sub_21E54();
        v16 = sub_220B4();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = sub_94C8();
          v18 = sub_94F8();
          v36 = v18;
          *v17 = 136315138;
          *(v17 + 4) = sub_E6C0(v13, v14, &v36);
          sub_9468();
          _os_log_impl(v19, v20, v21, v22, v17, 0xCu);
          sub_91DC(v18);
          sub_9474(v18);
          sub_93FC();
        }

        v24 = v0[29];
        v23 = v0[30];
        v25 = v0[27];
        v35 = v0[28];
        v27 = v0[25];
        v26 = v0[26];
        v28 = v0[24];
        v29 = &v28[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguage];
        *v29 = v13;
        v29[1] = v14;

        sub_8AF4(0, &qword_31620, OS_dispatch_queue_ptr);
        v30 = sub_220C4();
        sub_9688();
        v31 = swift_allocObject();
        *(v31 + 16) = v28;
        v0[6] = sub_9180;
        v0[7] = v31;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_55D0;
        v0[5] = &unk_2CC08;
        v32 = _Block_copy(v0 + 2);
        v33 = v28;
        sub_21E94();
        v0[21] = &_swiftEmptyArrayStorage;
        sub_92C0(&qword_31628, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_7E80(&qword_31630, &qword_23050);
        sub_8A48();
        sub_22134();
        sub_220D4();
        _Block_release(v32);

        (*(v26 + 8))(v25, v27);
        (*(v24 + 8))(v23, v35);
      }
    }

    else
    {
      sub_8F6C((v0 + 13), &qword_31610, &qword_23080);
    }

    sub_9510();

    v34();
  }

  else
  {
    __break(1u);
  }
}

void sub_4F44(char *a1)
{
  v2 = sub_21EE4();
  v3 = [a1 valueForKey:v2];

  if (v3)
  {
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49[0] = v47;
  v49[1] = v48;
  if (!*(&v48 + 1))
  {
    sub_8F6C(v49, &qword_31610, &qword_23080);
    return;
  }

  sub_7E80(&qword_31618, &unk_22C50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v4 = *&a1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguage + 8];
  if (!v4)
  {

    return;
  }

  v5 = *&a1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguage];

  v6 = sub_748C(v5, v4);
  v7 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguageSpecifiers;
  swift_beginAccess();
  *&a1[v7] = v6;

  v8 = objc_opt_self();
  v9 = static MessagesSettingsUtils.getLocalizedString(_:)(0xD00000000000001ALL, 0x8000000000023600);
  v11 = sub_8830(v9, v10, v8);
  v12 = *&a1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguagesGroup];
  *&a1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguagesGroup] = v11;
  v13 = v11;

  if (!v11)
  {
    __break(1u);
    goto LABEL_30;
  }

  swift_beginAccess();
  v14 = *&a1[v7];
  if (!v14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_19CD8(0, v14);
  sub_19D30(0);
  swift_endAccess();

  v16 = sub_1CAA8(v15);

  v17 = objc_allocWithZone(PSSpecifierUpdates);
  v18 = sub_1E448(v16);
  if (v18)
  {
    v19 = v18;
    if (qword_31548 != -1)
    {
      swift_once();
    }

    v20 = sub_21E64();
    sub_87F8(v20, qword_31EE0);
    v21 = a1;
    v22 = sub_21E54();
    v23 = sub_220B4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *&v47 = swift_slowAlloc();
      *v24 = 136315394;
      sub_8AF4(0, &qword_31600, PSSpecifier_ptr);

      v25 = sub_21F94();
      v46 = v21;
      v27 = v26;

      v28 = sub_E6C0(v25, v27, &v47);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;

      sub_7E80(&qword_31698, &qword_22CF8);
      v29 = sub_21F14();
      v31 = sub_E6C0(v29, v30, &v47);
      v21 = v46;

      *(v24 + 14) = v31;
      _os_log_impl(&dword_0, v22, v23, "#MessagingWithSiriController updating specifiers %s with %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    isa = *&a1[v7];
    if (isa)
    {

      sub_1CAA8(v33);

      isa = sub_21F74().super.isa;
    }

    v35 = sub_553C(v34);

    [v19 insertContiguousSpecifiers:isa afterSpecifier:v35];

    v36 = [v19 context];
    if (v36)
    {
      v37 = v36;

      [v37 setAnimated:1];

      v38 = sub_1EA3C(v19);
      if (v38)
      {
        v39 = sub_1C99C(v38);

        if (v39)
        {
        }
      }

      v41 = sub_1CAA8(v40);

      sub_1E9CC(v41, v21);

      return;
    }

LABEL_31:
    __break(1u);
    return;
  }

  if (qword_31548 != -1)
  {
    swift_once();
  }

  v42 = sub_21E64();
  sub_87F8(v42, qword_31EE0);
  v43 = sub_21E54();
  v44 = sub_220A4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_0, v43, v44, "#MessagingWithSiriController handleURL failed to get updates", v45, 2u);
  }
}

char *sub_553C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1EBCC();
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return sub_221D4();
  }

  result = sub_22274();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_55D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_22024();
  v3[5] = sub_22014();
  sub_22004();

  return _swift_task_switch(sub_5738);
}

uint64_t sub_5738()
{
  sub_95C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  if (v1)
  {
    v3 = sub_21EB4();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_582C;

  return sub_4984();
}

uint64_t sub_582C()
{
  sub_95C8();
  sub_95B0();
  v2 = v1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 32);
  v5 = *v0;
  sub_939C();
  *v6 = v5;

  if (v3)
  {
    v7 = *(v2 + 48);
    v7[2](v7);
    _Block_release(v7);
  }

  sub_9510();

  return v8();
}

uint64_t sub_597C(uint64_t a1, uint64_t a2)
{
  v4 = sub_7E80(&qword_31688, &qword_22CA8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_22044();
  sub_8B34(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_22CB8;
  v9[5] = v8;
  sub_8350(0, 0, v6, &unk_22CC8, v9);
}

void sub_5A8C(uint64_t a1)
{
  v2 = v1;
  isa = sub_21CA4().super.isa;
  v63.receiver = v1;
  v63.super_class = type metadata accessor for MessagingWithSiriController();
  objc_msgSendSuper2(&v63, "tableView:didSelectRowAtIndexPath:", a1, isa);

  v5 = sub_21CA4().super.isa;
  v6 = sub_95BC();
  v8 = [v6 v7];

  if (!v8)
  {
    return;
  }

  v9 = sub_1AE44(v8);
  if (!v10)
  {

    return;
  }

  v11 = v9;
  v12 = v10;
  v13 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguageSpecifiers;
  sub_9598();
  swift_beginAccess();
  v14 = *&v2[v13];
  if (!v14)
  {

LABEL_34:

    return;
  }

  v15 = qword_31530;

  if (v15 != -1)
  {
    sub_9388();
    swift_once();
  }

  swift_beginAccess();
  v16 = sub_1ED50(v11, v12, static MessagesSettingsUtils.readableLanguageToLocaleMap);
  if (!v17)
  {
    swift_endAccess();

LABEL_33:

    goto LABEL_34;
  }

  v18 = v16;
  v19 = swift_endAccess();
  *&v62[0] = v8;
  __chkstk_darwin(v19);
  v58[2] = v62;
  if ((sub_EF98(sub_8BF8, v58, v14) & 1) == 0)
  {

    goto LABEL_34;
  }

  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v20 = sub_21E64();
  sub_9444(v20, qword_31EE0);
  v21 = v8;
  v58[6] = v62;
  v22 = sub_21E54();
  v23 = sub_220B4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = sub_94C8();
    v25 = sub_9634();
    v58[5] = v18;
    v26 = v21;
    v27 = v25;
    *v24 = 138412290;
    *(v24 + 4) = v26;
    *v25 = v8;
    v28 = v26;
    _os_log_impl(&dword_0, v22, v23, "#MessagingWithSiriController %@", v24, 0xCu);
    sub_8F6C(v27, &qword_31680, &qword_22C90);
    v29 = v27;
    v21 = v26;
    sub_9474(v29);
    sub_93AC();
  }

  if (qword_31518 != -1)
  {
    swift_once();
  }

  sub_9598();
  swift_beginAccess();

  sub_9598();
  sub_A6DC(v30, v31, v32, v33);

  v34 = sub_951C();
  v35 = [v2 valueForKey:v34];

  if (v35)
  {
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  v62[0] = v60;
  v62[1] = v61;
  if (!*(&v61 + 1))
  {

    sub_8F6C(v62, &qword_31610, &qword_23080);
    return;
  }

  sub_7E80(&qword_31618, &unk_22C50);
  if ((sub_96F4() & 1) == 0)
  {

    goto LABEL_33;
  }

  v36 = v59;
  v37 = sub_1CAA8(v59);
  v38 = objc_allocWithZone(PSSpecifierUpdates);
  v39 = sub_1E448(v37);
  if (v39)
  {
    v40 = v39;
    v41 = sub_21E54();
    v42 = sub_220B4();
    if (sub_95E0(v42))
    {
      v43 = sub_94E0();
      sub_95D4(v43);
      _os_log_impl(&dword_0, v41, v21, "#MessagingWithSiriController removing suggested languages group", v34, 2u);
      sub_93AC();
    }

    v44 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguagesGroup;
    [v40 removeSpecifiersInGroup:*&v2[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguagesGroup]];
    [v40 removeSpecifier:*&v2[v44]];
    v45 = [v40 context];
    if (v45)
    {
      v46 = v45;

      [v46 setAnimated:1];

      v47 = sub_1EA3C(v40);
      if (v47)
      {
        v48 = sub_1C99C(v47);

        if (v48)
        {

          v36 = v48;
        }
      }

      v49 = sub_1CAA8(v36);

      sub_1E9CC(v49, v2);
      sub_3044();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v50 = sub_21E54();
    v51 = sub_220A4();
    if (sub_970C(v51))
    {
      v52 = sub_94E0();
      sub_95D4(v52);
      sub_9554();
      _os_log_impl(v53, v54, v55, v56, v57, 2u);
      sub_93AC();
    }
  }
}

void sub_6190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_7E80(&qword_31660, &qword_22C78);
  __chkstk_darwin(v8 - 8);
  v155 = v147 - v9;
  v10 = sub_7E80(&qword_31668, &qword_22C80);
  __chkstk_darwin(v10 - 8);
  v154 = v147 - v11;
  v12 = sub_7E80(&qword_31670, &qword_22C88);
  __chkstk_darwin(v12 - 8);
  v153 = v147 - v13;
  v160 = sub_21C94();
  sub_964C();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_9660();
  v156 = v17;
  __chkstk_darwin(v18);
  v161 = v147 - v19;
  sub_21C34();
  sub_964C();
  v162 = v21;
  v163 = v20;
  __chkstk_darwin(v20);
  sub_9660();
  v152 = v22;
  v24 = __chkstk_darwin(v23);
  v26 = v147 - v25;
  __chkstk_darwin(v24);
  v28 = v147 - v27;
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v29 = sub_21E64();
  v164 = sub_87F8(v29, qword_31EE0);
  v30 = sub_21E54();
  v31 = sub_220B4();
  if (sub_948C(v31))
  {
    v32 = sub_94C8();
    *v32 = 134217984;
    *(v32 + 4) = a2;
    sub_9468();
    _os_log_impl(v33, v34, v35, v36, v32, 0xCu);
    sub_9474(v32);
  }

  if (a2 == 1)
  {
    v150 = 1;
    isa = sub_21CA4().super.isa;
    v38 = [v4 specifierAtIndexPath:isa];

    v39 = v38;
    v40 = sub_21E54();
    v41 = sub_220B4();

    v42 = os_log_type_enabled(v40, v41);
    v149 = a1;
    v148 = v4;
    v147[1] = a3;
    v158 = v15;
    if (v42)
    {
      v43 = sub_94C8();
      v44 = sub_94F8();
      v165[0] = v44;
      *v43 = 136315138;
      v45 = v39;
      if (v39 && (v46 = sub_1AE44(v39), v47))
      {
        v48 = v47;
      }

      else
      {

        v46 = 0;
        v48 = 0xE000000000000000;
      }

      v50 = sub_E6C0(v46, v48, v165);

      *(v43 + 4) = v50;
      sub_9468();
      _os_log_impl(v51, v52, v53, v54, v43, 0xCu);
      sub_91DC(v44);
      sub_9474(v44);
      sub_9474(v43);

      v49 = v163;
    }

    else
    {

      v49 = v163;
      v45 = v39;
    }

    v55 = v162;
    v151 = v45;
    if (!v45 || (sub_1AEA8(v45), !v56))
    {
    }

    sub_21C44();
    v57 = v55 + 16;
    v58 = *(v55 + 16);
    v58(v26, v28, v49);
    v59 = sub_21E54();
    v60 = sub_220B4();
    v61 = os_log_type_enabled(v59, v60);
    v159 = v28;
    if (v61)
    {
      v62 = v55;
      v63 = sub_94C8();
      v64 = sub_94F8();
      v165[0] = v64;
      *v63 = 136315138;
      v65 = sub_21C24();
      v49 = v66;
      v67 = v62;
      v28 = v159;
      v157 = *(v67 + 8);
      v157(v26, v163);
      sub_E6C0(v65, v49, v165);
      sub_9618();
      *(v63 + 4) = v65;
      _os_log_impl(&dword_0, v59, v60, "#MessagingWithSiriController languageCode.debugDescription %s", v63, 0xCu);
      sub_91DC(v64);
      sub_9474(v64);
      sub_9474(v63);
    }

    else
    {

      v157 = *(v55 + 8);
      v157(v26, v49);
    }

    v68 = v158;
    v69 = v152;
    v58(v152, v28, v49);
    v70 = sub_21E54();
    v71 = sub_220B4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v69;
      v73 = sub_94C8();
      v74 = sub_94F8();
      v165[0] = v74;
      *v73 = 136315138;
      v75 = sub_21C14();
      v147[0] = v57;
      v76 = v28;
      v77 = v58;
      v78 = v68;
      v79 = v75;
      v49 = v80;
      v157(v72, v163);
      v81 = v79;
      v68 = v78;
      v58 = v77;
      v28 = v76;
      sub_E6C0(v81, v49, v165);
      sub_9618();
      *(v73 + 4) = v72;
      _os_log_impl(&dword_0, v70, v71, "#MessagingWithSiriController languageCode.identifier %s", v73, 0xCu);
      sub_91DC(v74);
      sub_9474(v74);
      sub_93D4();
    }

    else
    {

      v157(v69, v49);
    }

    v83 = v154;
    v82 = v155;
    v84 = v153;
    v58(v153, v28, v49);
    sub_8B34(v84, 0, 1, v49);
    v85 = sub_21C84();
    sub_8B34(v83, 1, 1, v85);
    v86 = sub_21C74();
    sub_8B34(v82, 1, 1, v86);
    v87 = v161;
    sub_9548();
    sub_21C54();
    v88 = v160;
    (*(v68 + 16))(v156, v87, v160);
    v89 = sub_21E54();
    v90 = sub_220B4();
    if (sub_970C(v90))
    {
      v91 = sub_94C8();
      v92 = sub_94F8();
      v165[0] = v92;
      *v91 = 136315138;
      sub_92C0(&qword_31678, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
      v93 = sub_222A4();
      v49 = v94;
      v95 = sub_9674();
      (v68)(v95);
      sub_E6C0(v93, v49, v165);
      sub_9618();
      *(v91 + 4) = v93;
      _os_log_impl(&dword_0, v89, v90, "#MessagingWithSiriController locale %s", v91, 0xCu);
      sub_91DC(v92);
      v96 = v92;
      v28 = v159;
      sub_9474(v96);
      sub_93AC();
    }

    else
    {

      v97 = sub_9674();
      (v68)(v97);
    }

    a2 = v150;
    v98 = sub_21E54();
    v99 = sub_220B4();
    if (sub_9418(v99))
    {
      v100 = sub_94C8();
      v101 = sub_94F8();
      v165[0] = v101;
      *v100 = 136315138;
      if (qword_31530 != -1)
      {
        sub_9388();
        swift_once();
      }

      sub_9598();
      swift_beginAccess();

      v102 = sub_21EC4();
      v104 = v103;

      v105 = sub_E6C0(v102, v104, v165);

      *(v100 + 4) = v105;
      sub_958C();
      _os_log_impl(v106, v107, v108, v109, v100, 0xCu);
      sub_91DC(v101);
      sub_93AC();
      sub_9474(v100);

      a2 = v150;
      v28 = v159;
      v88 = v160;
      v49 = v163;
    }

    else
    {
    }

    if (qword_31530 != -1)
    {
      sub_9388();
      swift_once();
    }

    v110 = v151;
    if (v151 && (v111 = sub_1AEA8(v151), v112))
    {
      v113 = v111;
      v114 = v112;
    }

    else
    {

      v113 = 0;
      v114 = 0xE000000000000000;
    }

    swift_beginAccess();
    v115 = sub_1ED50(v113, v114, static MessagesSettingsUtils.readableLanguageToLocaleMap);
    v117 = v116;

    if (v117)
    {
      swift_endAccess();

      v118 = sub_21E54();
      v119 = sub_220B4();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = sub_94C8();
        v121 = sub_94F8();
        v165[0] = v121;
        *v120 = 136315138;
        v122 = sub_9580();
        *(v120 + 4) = sub_E6C0(v122, v123, v124);
        sub_9468();
        _os_log_impl(v125, v126, v127, v128, v120, 0xCu);
        sub_91DC(v121);
        sub_9474(v121);
        sub_93FC();
      }

      v129 = sub_9580();
      sub_C890(v129, v130);

      sub_8AF4(0, &qword_315E8, NSLocale_ptr);
      sub_95A4();

      v131 = sub_9580();
      v133 = sub_17804(v131, v132);
      v134 = [v133 languageCode];

      v135 = sub_21EF4();
      v137 = v136;

      v138 = sub_9FC4();
      sub_A1B4(v135, v137, v138);

      if (qword_31540 != -1)
      {
        swift_once();
      }

      v139 = sub_1B854();
      v140 = v139 + 5;
      v141 = v139[2] + 1;
      while (--v141)
      {
        if (*(v140 - 1) != v115 || v117 != *v140)
        {
          v140 += 2;
          if ((sub_222C4() & 1) == 0)
          {
            continue;
          }
        }

        v143 = sub_9580();
        sub_1B718(v143, v144);

        goto LABEL_51;
      }

LABEL_51:

      v28 = v159;
    }

    else
    {
      swift_endAccess();
    }

    (v68)(v161, v88);
    v157(v28, v49);
    a1 = v149;
    v4 = v148;
  }

  v145 = sub_21CA4().super.isa;
  v146 = type metadata accessor for MessagingWithSiriController();
  v166.receiver = v4;
  v166.super_class = v146;
  objc_msgSendSuper2(&v166, "tableView:commitEditingStyle:forRowAtIndexPath:", a1, a2, v145);
}

uint64_t sub_6F6C(uint64_t a1)
{
  isa = sub_21CA4().super.isa;
  v2 = sub_95BC();
  v4 = [v2 v3];

  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v5 = sub_21E64();
  sub_9444(v5, qword_31EE0);
  v6 = v4;
  v7 = sub_21E54();
  v8 = sub_220B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_94C8();
    v10 = sub_94F8();
    *&v38 = v10;
    *v9 = 136315138;
    *&v36 = v4;
    v11 = v6;
    sub_7E80(&qword_31658, &qword_22C70);
    v12 = sub_21F14();
    v14 = sub_E6C0(v12, v13, &v38);

    *(v9 + 4) = v14;
    sub_96B4(&dword_0, v15, v16, "#MessagingWithSiriController canEditRowAt %s");
    sub_91DC(v10);
    sub_9474(v10);
    sub_9474(v9);
  }

  if (!v6)
  {
    v38 = 0u;
    v39 = 0u;
LABEL_18:
    sub_8F6C(&v38, &qword_31610, &qword_23080);
LABEL_19:
    v27 = sub_21E54();
    v28 = sub_220B4();
    if (!sub_9418(v28))
    {
LABEL_21:

      v26 = 0;
      goto LABEL_22;
    }

LABEL_20:
    v29 = sub_94E0();
    sub_95D4(v29);
    sub_958C();
    _os_log_impl(v30, v31, v32, v33, v7, 2u);
    sub_93AC();
    goto LABEL_21;
  }

  v17 = sub_21EF4();
  v19 = sub_16FAC(v17, v18, v6);
  if (v19)
  {
    v7 = v19;
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38 = v36;
  v39 = v37;
  if (!*(&v37 + 1))
  {
    goto LABEL_18;
  }

  sub_7E80(&qword_31650, &qword_22C68);
  if ((sub_96F4() & 1) == 0)
  {
    goto LABEL_19;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = NSStringFromClass(ObjCClassFromMetadata);
  v22 = sub_21EF4();
  v7 = v23;

  if (v22 == 0xD000000000000025 && 0x80000000000235D0 == v7)
  {

LABEL_24:
    v27 = sub_21E54();
    v35 = sub_220B4();
    if (!sub_9418(v35))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v25 = sub_222C4();

  if (v25)
  {
    goto LABEL_24;
  }

  v26 = 1;
LABEL_22:

  return v26;
}

void sub_7374()
{
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v0 = sub_21E64();
  sub_9444(v0, qword_31EE0);
  oslog = sub_21E54();
  v1 = sub_220B4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = sub_94E0();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "#MessagingWithSiriController long press", v2, 2u);
    sub_9474(v2);
  }
}

void *sub_748C(uint64_t a1, uint64_t isUniquelyReferenced_nonNull_native)
{
  if (qword_31548 != -1)
  {
LABEL_36:
    sub_9368(&qword_31548);
  }

  v3 = sub_21E64();
  sub_87F8(v3, qword_31EE0);

  v4 = sub_21E54();
  v5 = sub_220B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_94C8();
    v7 = sub_94F8();
    v78[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_E6C0(a1, isUniquelyReferenced_nonNull_native, v78);
    sub_9554();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_91DC(v7);
    sub_93D4();
    sub_93AC();
  }

  v69 = &_swiftEmptyArrayStorage;
  v79 = &_swiftEmptyArrayStorage;
  sub_21E44();
  v13 = sub_21E24();
  v14 = 0;
  v15 = v13 + 56;
  v76 = v13;
  v16 = 1 << *(v13 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 56);
  v73 = (v16 + 63) >> 6;
  v70 = isUniquelyReferenced_nonNull_native;
  while (v18)
  {
    v19 = isUniquelyReferenced_nonNull_native;
LABEL_13:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v22 = (*(v76 + 48) + ((v14 << 10) | (16 * v21)));
    v24 = *v22;
    v23 = v22[1];
    sub_8AF4(0, &qword_315E8, NSLocale_ptr);
    sub_95A4();
    swift_bridgeObjectRetain_n();
    v25 = sub_17804(v24, v23);
    v26 = [v25 languageCode];

    v27 = sub_21EF4();
    v29 = v28;

    v30 = sub_17804(v27, v29);
    isUniquelyReferenced_nonNull_native = v19;
    LOBYTE(v27) = sub_C700(a1, v19);

    if ((v27 & 1) != 0 && (sub_8AF4(0, &qword_315F0, SUICAssistantVoiceSettingsConnection_ptr), v31 = sub_C57C(v24, v23), v32))
    {
      v33 = v31;
      v34 = v32;
      v72 = v24;
      if (qword_31530 != -1)
      {
        sub_9388();
        swift_once();
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = static MessagesSettingsUtils.readableLanguageToLocaleMap;
      v77 = static MessagesSettingsUtils.readableLanguageToLocaleMap;
      static MessagesSettingsUtils.readableLanguageToLocaleMap = 0x8000000000000000;
      v74 = v33;
      v36 = v33;
      v37 = v34;
      v38 = sub_214F4(v36, v34);
      v40 = *(v35 + 16);
      v41 = (v39 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v43 = v38;
      v44 = v39;
      sub_7E80(&qword_315F8, &qword_22C38);
      if (sub_22254(isUniquelyReferenced_nonNull_native, v42))
      {
        v45 = sub_214F4(v74, v37);
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_38;
        }

        v43 = v45;
      }

      if (v44)
      {
        v47 = (v77[7] + 16 * v43);
        *v47 = v72;
        v47[1] = v23;
      }

      else
      {
        v77[(v43 >> 6) + 8] |= 1 << v43;
        v48 = (v77[6] + 16 * v43);
        *v48 = v74;
        v48[1] = v37;
        v49 = (v77[7] + 16 * v43);
        *v49 = v72;
        v49[1] = v23;
        v50 = v77[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          __break(1u);
LABEL_38:
          result = sub_222F4();
          __break(1u);
          return result;
        }

        v77[2] = v52;
      }

      static MessagesSettingsUtils.readableLanguageToLocaleMap = v77;
      swift_endAccess();
      v53 = objc_opt_self();
      v54 = sub_1E8A8(v74, v37, v71, 0, 0, 0, 3, 0, v53);
      isUniquelyReferenced_nonNull_native = v70;
      if (v54)
      {
        v55 = v54;
        sub_21EF4();
        sub_93C8();
        sub_93F0();
        sub_1E79C(v56, v57, v58, v55);
        v59 = v55;
        sub_21F64();
        v60 = *(&dword_18 + (v79 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8)) >= v60 >> 1)
        {
          sub_945C(v60);
          sub_21FA4();
        }

        sub_9580();
        sub_21FD4();

        v69 = v79;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= v73)
    {
      break;
    }

    v18 = *(v15 + 8 * v20);
    ++v14;
    if (v18)
    {
      v19 = isUniquelyReferenced_nonNull_native;
      v14 = v20;
      goto LABEL_13;
    }
  }

  v61 = sub_21E54();
  v62 = sub_220B4();
  if (sub_970C(v62))
  {
    v63 = sub_94C8();
    v64 = sub_94F8();
    v78[0] = v64;
    *v63 = 136315138;
    sub_8AF4(0, &qword_31600, PSSpecifier_ptr);
    v65 = sub_21F94();
    v67 = sub_E6C0(v65, v66, v78);

    *(v63 + 4) = v67;

    _os_log_impl(&dword_0, v61, v62, "#MessagingWithSiriController returning suggested languages : %s", v63, 0xCu);
    sub_91DC(v64);
    sub_93D4();
    sub_9474(v63);
  }

  else
  {
  }

  return v69;
}

id sub_7A60(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfGroup] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfSpecifier] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_destinationSpecifierGroup] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_headPhonesSpecifier] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_carPlaySpecifier] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguageSpecifiers] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguagesGroup] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguageLink] = 0;
  v5 = &v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguage];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_tableView] = 0;
  if (a2)
  {
    v6 = sub_21EE4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for MessagingWithSiriController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_7BD4(void *a1)
{
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfSpecifier] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_destinationSpecifierGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_headPhonesSpecifier] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_carPlaySpecifier] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguageSpecifiers] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguagesGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguageLink] = 0;
  v3 = &v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguage];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_tableView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MessagingWithSiriController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_7CF0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MessagingWithSiriController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t variable initialization expression of TTSDownloader.localeToPercentageMap()
{
  sub_7E80(&qword_31558, &qword_22BA0);
  swift_allocObject();
  return sub_7F74();
}

uint64_t sub_7E80(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of ThreadSafeDictionary.dictionary()
{
  sub_9548();
  swift_getTupleTypeMetadata2();
  sub_21FB4();
  sub_9548();

  return sub_21ED4();
}

id variable initialization expression of ThreadSafeDictionary.lock()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

uint64_t sub_7F74()
{
  *(v0 + 16) = sub_21ED4();
  *(v0 + 24) = [objc_allocWithZone(NSLock) init];
  return v0;
}

void sub_8000(uint64_t a2@<X8>)
{
  sub_8034();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_80A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_9360;

  return v6();
}

uint64_t sub_8188(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_8270;

  return v7();
}

uint64_t sub_8270()
{
  sub_9574();
  sub_95B0();
  v1 = *v0;
  sub_939C();
  *v2 = v1;

  sub_9510();

  return v3();
}

uint64_t sub_8350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_7E80(&qword_31688, &qword_22CA8);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_8ED4(a3, v22 - v10);
  v12 = sub_22044();
  if (sub_8F44(v11, 1, v12) == 1)
  {
    sub_8F6C(v11, &qword_31688, &qword_22CA8);
  }

  else
  {
    sub_22034();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_22004();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_21F24() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_8F6C(a3, &qword_31688, &qword_22CA8);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_8F6C(a3, &qword_31688, &qword_22CA8);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_861C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_8714;

  return v6(a1);
}

uint64_t sub_8714()
{
  sub_9574();
  sub_95B0();
  v1 = *v0;
  sub_939C();
  *v2 = v1;

  sub_9510();

  return v3();
}

uint64_t sub_87F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_8830(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21EE4();

  v5 = [a3 groupSpecifierWithName:v4];

  return v5;
}

uint64_t sub_8894()
{
  sub_9688();

  return _swift_deallocObject(v1);
}

uint64_t sub_88D0(void *a1)
{
  v1 = [a1 specifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21F84();

  return v3;
}

uint64_t sub_892C(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21EF4();

  return v3;
}

uint64_t sub_899C()
{

  sub_9688();

  return _swift_deallocObject(v0);
}

uint64_t sub_89D0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_8A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_8A48()
{
  result = qword_31638;
  if (!qword_31638)
  {
    sub_8AAC(&qword_31630, &qword_23050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31638);
  }

  return result;
}

uint64_t sub_8AAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_8AF4(uint64_t a1, unint64_t *a2, void *a3)
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

Swift::Int sub_8B84(uint64_t a1, Swift::UInt a2)
{
  sub_22314();
  sub_22324(a2);
  return sub_22334();
}

uint64_t sub_8C18()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0);
}

uint64_t sub_8C60()
{
  sub_95C8();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_8270;
  sub_9548();

  return v2();
}

uint64_t sub_8D10()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_9360;

  return sub_80A0(v2, v3, v4);
}

uint64_t sub_8DD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_8E10(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_9564(v6);
  *v7 = v8;
  v7[1] = sub_9360;

  return sub_8188(a1, v3, v4, v5);
}

uint64_t sub_8ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_7E80(&qword_31688, &qword_22CA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8F6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_7E80(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_8FCC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_9004()
{
  sub_95C8();
  v0 = swift_task_alloc();
  v1 = sub_9564(v0);
  *v1 = v2;
  v3 = sub_94A8(v1);

  return v4(v3);
}

uint64_t sub_9098()
{
  sub_95C8();
  v0 = swift_task_alloc();
  v1 = sub_9564(v0);
  *v1 = v2;
  v3 = sub_94A8(v1);

  return v4(v3);
}

unint64_t sub_9188()
{
  result = qword_316A0;
  if (!qword_316A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316A0);
  }

  return result;
}

uint64_t sub_91DC(void *a1)
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

void type metadata accessor for TTSAssetProperty()
{
  if (!qword_316A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_316A8);
    }
  }
}

uint64_t sub_92C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_9308(Swift::UInt a1)
{
  sub_22314();
  sub_22324(a1);
  return sub_22334();
}

uint64_t sub_9368(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_93AC()
{
}

uint64_t sub_93D4()
{
}

uint64_t sub_93FC()
{
}

BOOL sub_9418(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_9474(uint64_t a1)
{
}

BOOL sub_948C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_94C8()
{

  return swift_slowAlloc();
}

uint64_t sub_94E0()
{

  return swift_slowAlloc();
}

uint64_t sub_94F8()
{

  return swift_slowAlloc();
}

NSString sub_951C()
{

  return sub_21EE4();
}

BOOL sub_95E0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id sub_95FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{

  return sub_1E8A8(a1, a2, a3, a4, a5, 0, 6, 0, a9);
}

uint64_t sub_9618()
{
}

uint64_t sub_9634()
{

  return swift_slowAlloc();
}

void sub_96B4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_96D4@<X0>(uint64_t a1@<X8>)
{

  return static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000014, ((a1 - 32) | 0x8000000000000000));
}

uint64_t sub_96F4()
{

  return swift_dynamicCast();
}

BOOL sub_970C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_9724()
{
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBlueColor];
    [v2 setTextColor:v3];

    v4 = static MessagesSettingsUtils.getLocalizedString(_:)(0x474E414C5F444441, 0xED00005345474155);
    sub_21744(v4, v5, v2);
    v10.receiver = v0;
    v10.super_class = type metadata accessor for AddLanguagesCell();
    objc_msgSendSuper2(&v10, "layoutSubviews");
  }

  else
  {
    if (qword_31548 != -1)
    {
      swift_once();
    }

    v6 = sub_21E64();
    sub_87F8(v6, qword_31EE0);
    oslog = sub_21E54();
    v7 = sub_220B4();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, oslog, v7, "#LanguageCell layoutSubviews textLabel nil", v8, 2u);
    }
  }
}

id sub_9914(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_21EE4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for AddLanguagesCell();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id sub_9A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_21EE4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AddLanguagesCell();
  v6 = objc_msgSendSuper2(&v8, "initWithStyle:reuseIdentifier:", a1, v5);

  return v6;
}

id sub_9AFC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AddLanguagesCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_9B8C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AddLanguagesCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_9BE4()
{
  if (qword_31510 != -1)
  {
    swift_once();
  }

  v0 = sub_21EE4();
  v1 = MGGetSInt32Answer();

  swift_beginAccess();
  v2 = sub_1ECA0(v1, qword_316E0);
  swift_endAccess();
  return v2;
}

Swift::Int sub_9CD8(unsigned __int8 a1)
{
  sub_22314();
  sub_22324(a1);
  return sub_22334();
}

Swift::Int sub_9D3C()
{
  v1 = *v0;
  sub_22314();
  sub_22324(v1);
  return sub_22334();
}

uint64_t sub_9D80()
{
  result = sub_21ED4();
  qword_316E0 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MobileGestalt.DeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt.DeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x9F24);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_9F70()
{
  result = qword_316E8;
  if (!qword_316E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316E8);
  }

  return result;
}

uint64_t sub_9FC4()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  result = sub_A3C8(0xD00000000000001BLL, 0x80000000000236E0);
  if (!result)
  {
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    sub_221B4(79);
    v8._countAndFlagsBits = 0xD00000000000004DLL;
    v8._object = 0x8000000000023700;
    sub_21F44(v8);
    v9._object = 0x80000000000236E0;
    v9._countAndFlagsBits = 0xD00000000000001BLL;
    sub_21F44(v9);
    if (qword_31548 != -1)
    {
      sub_A42C();
      swift_once();
    }

    v2 = sub_21E64();
    sub_87F8(v2, qword_31EE0);

    v3 = sub_21E54();
    v4 = sub_220A4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_E6C0(0, 0xE000000000000000, v7);
      _os_log_impl(&dword_0, v3, v4, "Fatal error: %s", v5, 0xCu);
      sub_91DC(v6);
      sub_9474(v6);
      sub_9474(v5);
    }

    result = sub_22264();
    __break(1u);
  }

  return result;
}

void sub_A1B4(uint64_t a1, void *a2, void *a3)
{
  if (qword_31548 != -1)
  {
    sub_A42C();
    swift_once();
  }

  v6 = sub_21E64();
  sub_87F8(v6, qword_31EE0);

  v7 = sub_21E54();
  v8 = sub_220B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    v14 = 0x6269726373627553;
    *v9 = 136315138;
    v15 = 0xEA00000000002E65;
    v17._countAndFlagsBits = a1;
    v17._object = a2;
    sub_21F44(v17);
    v11 = sub_E6C0(v14, 0xEA00000000002E65, &v13);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_0, v7, v8, "Disabling event '%s'", v9, 0xCu);
    sub_91DC(v10);
    sub_9474(v10);
    sub_9474(v9);
  }

  v14 = 0x6269726373627553;
  v15 = 0xEA00000000002E65;
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  sub_21F44(v18);

  v19._countAndFlagsBits = 0x626173694473492ELL;
  v19._object = 0xEB0000000064656CLL;
  sub_21F44(v19);

  v12 = sub_21EE4();

  [a3 setBool:1 forKey:v12];
}

id sub_A3C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_21EE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t sub_A480(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(&dword_10 + v14) + 32, (*(&dword_18 + v14) >> 1) - *(&dword_10 + v14), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t TTSDownloader.localeToPercentageMap.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

double TTSDownloader.onChangeActions.getter()
{
  sub_C45C(v0 + 24);

  return result;
}

uint64_t TTSDownloader.onChangeActions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

void sub_A6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v9 = sub_21E64();
  sub_87F8(v9, qword_31EE0);

  v10 = sub_21E54();
  v11 = sub_220B4();

  v38 = a1;
  if (os_log_type_enabled(v10, v11))
  {
    v37 = v5;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136315394;
    if (a2)
    {
      v14 = a1;
    }

    else
    {
      v14 = 7104878;
    }

    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_E6C0(v14, v15, &aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    if (a4)
    {
      v17 = a3;
    }

    else
    {
      v17 = 7104878;
    }

    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_E6C0(v17, v18, &aBlock);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_0, v10, v11, "#TTSDownloadUtil triggerVoiceDownload locale %s, voiceName %s", v12, 0x16u);
    swift_arrayDestroy();
    sub_9474(v13);
    v20 = v12;
    v5 = v37;
    sub_9474(v20);
  }

  if (!a2)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    v21 = sub_BB54(a3, a4);
    if (!v21)
    {
      goto LABEL_24;
    }

LABEL_23:
    v24 = [v21 primaryLanguage];
    sub_21EF4();

    sub_21DF4();
    v25 = objc_allocWithZone(sub_21D94());
    v26 = sub_21D74();
    v27 = [objc_allocWithZone(sub_21D14()) init];
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    v29 = v26;
    v30 = v27;
    sub_21CE4();

    v31 = swift_allocObject();
    *(v31 + 16) = v21;
    *(v31 + 24) = v5;
    v45 = sub_C324;
    v46 = v31;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_B5A8;
    v44 = &unk_2CE40;
    v32 = _Block_copy(&aBlock);
    v33 = v21;

    v45 = nullsub_1;
    v46 = 0;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_B618;
    v44 = &unk_2CE68;
    v34 = _Block_copy(&aBlock);

    [v33 downloadWithReservation:0 useBattery:1 progress:v32 then:v34];

    _Block_release(v34);
    _Block_release(v32);
    return;
  }

  v21 = sub_B7EC(v38, a2);
  if (v21)
  {
    goto LABEL_23;
  }

  sub_21E44();
  v22 = sub_21E34();
  v21 = sub_B7EC(v22, v23);

  if (v21)
  {
    goto LABEL_23;
  }

LABEL_24:
  osloga = sub_21E54();
  v35 = sub_220A4();
  if (os_log_type_enabled(osloga, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_0, osloga, v35, "#TTSDownloadUtil ttsVoice is nil", v36, 2u);
    sub_9474(v36);
  }
}

uint64_t sub_ABF4(uint64_t a1, id *a2, unint64_t a3)
{
  if (qword_31548 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v6 = sub_21E64();
    v7 = sub_87F8(v6, qword_31EE0);

    v52 = v7;
    v8 = sub_21E54();
    v9 = sub_220B4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v53 = v11;
      *v10 = 136315138;
      sub_21DB4();
      v12 = sub_21F94();
      v14 = sub_E6C0(v12, v13, &v53);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "#TTSDownloadUtil existingSubscriptions %s", v10, 0xCu);
      sub_91DC(v11);
    }

    v15 = sub_1EBC4(a1);
    v16 = &_swiftEmptyArrayStorage;
    v48 = a3;
    if (!v15)
    {
      break;
    }

    v17 = v15;
    v53 = &_swiftEmptyArrayStorage;
    result = sub_22224();
    if (v17 < 0)
    {
      __break(1u);
      return result;
    }

    v47 = a2;
    v20 = 0;
    v51 = a1 & 0xC000000000000001;
    v49 = a1 & 0xFFFFFFFFFFFFFF8;
    *&v19 = 138412290;
    v50 = v19;
    while (1)
    {
      a3 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v51)
      {
        v21 = sub_221D4();
      }

      else
      {
        if (v20 >= *(v49 + 16))
        {
          goto LABEL_24;
        }

        v21 = *(a1 + 8 * v20 + 32);
      }

      a2 = a1;
      v22 = v21;
      v23 = sub_21E54();
      v24 = sub_220B4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = v50;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&dword_0, v23, v24, "#TTSDownloadUtil subscribedVoices %@", v25, 0xCu);
        sub_C388(v26);
      }

      v28 = sub_21DA4();
      sub_21D84();

      v29 = sub_21DA4();
      sub_21D64();

      v30 = objc_allocWithZone(sub_21D94());
      sub_21D74();

      sub_22204();
      sub_22234();
      sub_22244();
      v15 = sub_22214();
      ++v20;
      a1 = a2;
      if (a3 == v17)
      {
        v16 = v53;
        a2 = v47;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

LABEL_16:
  v53 = a2;
  __chkstk_darwin(v15);
  v46[2] = &v53;
  if ((sub_EF98(sub_C368, v46, v16) & 1) == 0)
  {

    v31 = sub_21E54();
    v32 = sub_220B4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53 = v34;
      *v33 = 136315138;
      sub_21D94();
      v35 = sub_21F94();
      v37 = sub_E6C0(v35, v36, &v53);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_0, v31, v32, "#TTSDownloadUtil current subscriptions %s", v33, 0xCu);
      sub_91DC(v34);
    }

    v38 = a2;
    v39 = sub_21E54();
    v40 = sub_220B4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      _os_log_impl(&dword_0, v39, v40, "#TTSDownloadUtil adding subscribe %@", v41, 0xCu);
      sub_C388(v42);
    }

    sub_7E80(&qword_31870, &unk_23020);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22EA0;
    *(inited + 32) = v38;
    v53 = v16;
    v45 = v38;
    sub_A480(inited, sub_1EBC4, sub_1B40C, sub_1B150);
    sub_21D04();
  }
}

void sub_B224(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v8 = sub_21E64();
  sub_87F8(v8, qword_31EE0);
  v9 = sub_21E54();
  v10 = sub_220B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218496;
    *(v11 + 4) = a4;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a1;
    *(v11 + 22) = 2048;
    *(v11 + 24) = a2;
    _os_log_impl(&dword_0, v9, v10, "#TTSDownloadUtil time %f, done %ld, expected %ld", v11, 0x20u);
  }

  v12 = sub_21E54();
  v13 = sub_220B4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = ((a1 / a2) * 100.0);
    _os_log_impl(&dword_0, v12, v13, "#TTSDownloadUtil (done / expected * 100) %f", v14, 0xCu);
  }

  v15 = a3;
  v16 = sub_21E54();
  v17 = sub_220B4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136315138;
    v20 = [v15 primaryLanguage];
    v21 = sub_21EF4();
    v22 = a2;
    v24 = v23;

    v25 = sub_E6C0(v21, v24, &v32);
    a2 = v22;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_0, v16, v17, "#TTSDownloadUtil ttsVoice.primaryLangue %s", v18, 0xCu);
    sub_91DC(v19);
  }

  v26 = (a1 / a2) * 100.0;
  if (COERCE_INT(fabs(v26)) > 2139095039)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v26 <= -9.2234e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v26 >= 9.2234e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = [v15 primaryLanguage];
  v29 = sub_21EF4();
  v31 = v30;

  sub_B684(v29, v31, v27);
}

uint64_t sub_B5A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

void sub_B618(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_B684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_C45C(v4 + 16);

  sub_C074(a1, a2, a3);

  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v8 = sub_21E64();
  sub_87F8(v8, qword_31EE0);
  v9 = sub_21E54();
  v10 = sub_220B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "#TTSDownloadUtil calling on change", v11, 2u);
    sub_9474(v11);
  }

  result = sub_C45C(v4 + 24);
  v13 = *(v4 + 24);
  v14 = *(v13 + 16);
  if (v14)
  {

    v15 = v13 + 40;
    do
    {
      v16 = *(v15 - 8);

      v16(v17);

      v15 += 16;
      --v14;
    }

    while (v14);
  }

  return result;
}

void *sub_B7EC(uint64_t a1, uint64_t a2)
{
  sub_21E14();
  sub_7E80(&qword_31870, &unk_23020);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22EA0;
  sub_C210();
  *(v4 + 32) = sub_22074();
  sub_7E80(&qword_31880, &unk_22F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EB0;
  *(inited + 64) = &type metadata for String;
  *(inited + 32) = 1;
  *(inited + 40) = a1;
  v27 = a1;
  *(inited + 48) = a2;
  type metadata accessor for TTSAssetProperty();
  sub_C254();
  v26 = a2;

  sub_21ED4();
  v6 = sub_21E04();

  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v7 = sub_21E64();
  sub_87F8(v7, qword_31EE0);
  v8 = v6;
  v9 = sub_21E54();
  v10 = sub_220B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_94C8();
    v12 = sub_94F8();
    v28 = v12;
    *v11 = 136315138;
    v13 = v8;
    sub_7E80(&qword_31898, &unk_22F70);
    v14 = sub_21F14();
    v16 = sub_E6C0(v14, v15, &v28);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "#TTSDownloadUtil voice: %s", v11, 0xCu);
    sub_91DC(v12);
    sub_9474(v12);
    sub_9474(v11);
  }

  v17 = v8;
  v18 = sub_21E54();
  v19 = sub_220B4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_94C8();
    v21 = sub_94F8();
    v28 = v21;
    *v20 = 136315138;
    if (v6)
    {
      [v17 locallyAvailable];
    }

    sub_7E80(&qword_31890, &qword_23090);
    v22 = sub_21F14();
    v24 = sub_E6C0(v22, v23, &v28);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_0, v18, v19, "#TTSDownloadUtil is locally available: %s", v20, 0xCu);
    sub_91DC(v21);
    sub_9474(v21);
    sub_9474(v20);
  }

  if (v6 && ([v17 locallyAvailable] & 1) == 0)
  {
    sub_B684(v27, v26, 0);
  }

  return v6;
}

void *sub_BB54(uint64_t a1, uint64_t a2)
{
  sub_21E14();
  sub_7E80(&qword_31870, &unk_23020);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22EA0;
  sub_C210();
  *(v4 + 32) = sub_22074();
  sub_7E80(&qword_31880, &unk_22F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EB0;
  *(inited + 64) = &type metadata for String;
  *(inited + 32) = 0;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  type metadata accessor for TTSAssetProperty();
  sub_C254();

  sub_21ED4();
  v6 = sub_21E04();

  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v7 = sub_21E64();
  sub_87F8(v7, qword_31EE0);
  v8 = v6;
  v9 = sub_21E54();
  v10 = sub_220B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_94C8();
    v12 = sub_94F8();
    v45 = v12;
    *v11 = 136315138;
    v13 = v8;
    sub_7E80(&qword_31898, &unk_22F70);
    v14 = sub_21F14();
    v16 = sub_E6C0(v14, v15, &v45);

    *(v11 + 4) = v16;
    sub_C43C(&dword_0, v17, v18, "#TTSDownloadUtil voice: %s");
    sub_91DC(v12);
    sub_9474(v12);
    sub_9474(v11);
  }

  v19 = v8;
  v20 = sub_21E54();
  v21 = sub_220B4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = sub_94C8();
    v23 = sub_94F8();
    v45 = v23;
    *v22 = 136315138;
    if (v6)
    {
      [v19 locallyAvailable];
    }

    sub_7E80(&qword_31890, &qword_23090);
    v24 = sub_21F14();
    v26 = sub_E6C0(v24, v25, &v45);

    *(v22 + 4) = v26;
    sub_C43C(&dword_0, v27, v28, "#TTSDownloadUtil is locally available: %s");
    sub_91DC(v23);
    sub_9474(v23);
    sub_9474(v22);
  }

  else
  {
  }

  v29 = v19;
  v30 = sub_21E54();
  v31 = sub_220B4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_94C8();
    v33 = sub_94F8();
    v45 = v33;
    *v32 = 136315138;
    if (v6)
    {
      v34 = [v29 primaryLanguage];
      v35 = sub_21EF4();
      v37 = v36;
    }

    else
    {
      v37 = 0xE300000000000000;
      v35 = 7104878;
    }

    v38 = sub_E6C0(v35, v37, &v45);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_0, v30, v31, "#TTSDownloadUtil primaryLanguage: %s", v32, 0xCu);
    sub_91DC(v33);
    sub_9474(v33);
    sub_9474(v32);

    if (!v6)
    {
      return v6;
    }
  }

  else
  {

    if (!v6)
    {
      return v6;
    }
  }

  v39 = [v29 locallyAvailable];
  v40 = [v29 primaryLanguage];
  v41 = sub_21EF4();
  v43 = v42;

  if ((v39 & 1) == 0)
  {
    sub_B684(v41, v43, 0);
  }

  return v6;
}

uint64_t TTSDownloader.deinit()
{

  return v0;
}

uint64_t TTSDownloader.__deallocating_deinit()
{
  TTSDownloader.deinit();
  v0 = sub_C42C();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_C01C()
{
  sub_7E80(&qword_31558, &qword_22BA0);
  swift_allocObject();
  *(v0 + 16) = sub_7F74();
  *(v0 + 24) = &_swiftEmptyArrayStorage;
  return v0;
}

id sub_C074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  [v7 lock];
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 16);
  sub_199D0(a3, a1, a2);
  *(v3 + 16) = v9;
  swift_endAccess();
  return [v7 unlock];
}

uint64_t ThreadSafeDictionary.deinit()
{

  return v0;
}

uint64_t ThreadSafeDictionary.__deallocating_deinit()
{
  ThreadSafeDictionary.deinit();
  v0 = sub_C42C();

  return _swift_deallocClassInstance(v0);
}

unint64_t sub_C210()
{
  result = qword_31878;
  if (!qword_31878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_31878);
  }

  return result;
}

unint64_t sub_C254()
{
  result = qword_31888;
  if (!qword_31888)
  {
    type metadata accessor for TTSAssetProperty();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31888);
  }

  return result;
}

uint64_t sub_C2AC()
{
  v1 = sub_C42C();

  return _swift_deallocObject(v1);
}

uint64_t sub_C2EC()
{

  v1 = sub_C42C();

  return _swift_deallocObject(v1);
}

uint64_t sub_C32C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_C388(uint64_t a1)
{
  v2 = sub_7E80(&qword_31680, &qword_22C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_C43C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_C45C(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t static MessagesSettingsUtils.getLocalizedString(_:)(uint64_t a1, void *a2)
{
  type metadata accessor for MessagingWithSiriController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9._countAndFlagsBits = 0xE000000000000000;
  v11.value._object = 0x8000000000022F60;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11.value._countAndFlagsBits = 0xD000000000000014;
  v6.super.isa = v5;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v7 = sub_21BF4(v10, v11, v6, v12, 0, v9);

  return v7;
}

uint64_t *MessagesSettingsUtils.daemonSession.unsafeMutableAddressor()
{
  if (qword_31520 != -1)
  {
    sub_EDB4(&qword_31520);
  }

  return &static MessagesSettingsUtils.daemonSession;
}

uint64_t sub_C57C(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_EC40(ObjCClassFromMetadata);
  if (!v4)
  {
    if (qword_31548 != -1)
    {
      sub_9368(&qword_31548);
    }

    v7 = sub_21E64();
    sub_87F8(v7, qword_31EE0);
    v8 = sub_21E54();
    v9 = sub_220B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "#SUICAssistantVoiceSettingsConnection assistantLanguageTitlesDictionary nil", v10, 2u);
      sub_9474(v10);
    }

    return 0;
  }

  v5 = v4;

  sub_22174();
  sub_1ECEC(v5, &v12, v11);

  sub_912C(v11);
  if (!v13)
  {
    sub_ECAC(&v12);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id sub_C700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21C94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21C04();
  isa = sub_21C64().super.isa;
  (*(v5 + 8))(v7, v4);
  v9 = [v3 isEquivalentTo:isa];

  return v9;
}

uint64_t *MessagesSettingsUtils.readableLanguageToLocaleMap.unsafeMutableAddressor()
{
  if (qword_31530 != -1)
  {
    sub_EE34(&qword_31530);
  }

  return &static MessagesSettingsUtils.readableLanguageToLocaleMap;
}

uint64_t *MessagesSettingsUtils.ttsDownloader.unsafeMutableAddressor()
{
  if (qword_31518 != -1)
  {
    sub_EDD4(&qword_31518);
  }

  return &static MessagesSettingsUtils.ttsDownloader;
}

void sub_C890(uint64_t a1, unint64_t a2)
{
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v4 = sub_21E64();
  sub_87F8(v4, qword_31EE0);

  v5 = sub_21E54();
  v6 = sub_22084();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    if (a2)
    {
      v9 = a1;
    }

    else
    {
      v9 = 7104878;
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    v11 = sub_E6C0(v9, v10, &v23);

    *(v7 + 4) = v11;
    sub_EEB8(&dword_0, v12, v13, "#MessagingWithSiriController unsubscribing from %s");
    sub_91DC(v8);
    sub_9474(v8);
    sub_9474(v7);
  }

  if (a2)
  {

    sub_D194(a1, a2);
  }

  else
  {
    oslog = sub_21E54();
    v14 = sub_220A4();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      sub_EED8(&dword_0, v16, v17, "#MessagingWithSiriController locale for unsubscribeVoice was nil", v18, v19, v20, v21, oslog);
      sub_9474(v15);
    }
  }
}

uint64_t sub_CAA0()
{
  type metadata accessor for TTSDownloader();
  swift_allocObject();
  result = sub_C01C();
  static MessagesSettingsUtils.ttsDownloader = result;
  return result;
}

uint64_t static MessagesSettingsUtils.ttsDownloader.getter()
{
  if (qword_31518 != -1)
  {
    sub_EDD4(&qword_31518);
  }

  sub_EE74();
}

uint64_t static MessagesSettingsUtils.ttsDownloader.modify()
{
  if (qword_31518 != -1)
  {
    sub_EDD4(&qword_31518);
  }

  sub_EDF4();
  return sub_EE94();
}

id sub_CBD4()
{
  result = [objc_allocWithZone(sub_21D14()) init];
  static MessagesSettingsUtils.daemonSession = result;
  return result;
}

uint64_t static MessagesSettingsUtils.daemonSession.modify()
{
  if (qword_31520 != -1)
  {
    sub_EDB4(&qword_31520);
  }

  sub_EDF4();
  return sub_EE94();
}

id sub_CCB4()
{
  result = [objc_allocWithZone(SUICAssistantVoiceSettingsConnection) init];
  static MessagesSettingsUtils.siriUISettingsConnection = result;
  return result;
}

uint64_t *MessagesSettingsUtils.siriUISettingsConnection.unsafeMutableAddressor()
{
  if (qword_31528 != -1)
  {
    sub_EE14(&qword_31528);
  }

  return &static MessagesSettingsUtils.siriUISettingsConnection;
}

id sub_CD4C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_EE74();
  v4 = *a2;

  return v4;
}

void sub_CDC8(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t static MessagesSettingsUtils.siriUISettingsConnection.modify()
{
  if (qword_31528 != -1)
  {
    sub_EE14(&qword_31528);
  }

  sub_EDF4();
  return sub_EE94();
}

uint64_t sub_CE94()
{
  result = sub_21ED4();
  static MessagesSettingsUtils.readableLanguageToLocaleMap = result;
  return result;
}

uint64_t static MessagesSettingsUtils.readableLanguageToLocaleMap.modify()
{
  if (qword_31530 != -1)
  {
    sub_EE34(&qword_31530);
  }

  sub_EDF4();
  return sub_EE94();
}

uint64_t sub_CF90()
{
  result = sub_21ED4();
  static MessagesSettingsUtils.localeToPercentage = result;
  return result;
}

uint64_t *MessagesSettingsUtils.localeToPercentage.unsafeMutableAddressor()
{
  if (qword_31538 != -1)
  {
    sub_EE54(&qword_31538);
  }

  return &static MessagesSettingsUtils.localeToPercentage;
}

double sub_D034(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_EE74();

  return result;
}

uint64_t sub_D0B8(uint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = *a3;
  *a3 = a1;
  return a4(v8);
}

uint64_t static MessagesSettingsUtils.localeToPercentage.modify()
{
  if (qword_31538 != -1)
  {
    sub_EE54(&qword_31538);
  }

  sub_EDF4();
  return sub_EE94();
}

void sub_D194(uint64_t a1, unint64_t a2)
{
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v4 = sub_21E64();
  sub_87F8(v4, qword_31EE0);

  v5 = sub_21E54();
  v6 = sub_22084();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27[0] = v8;
    *v7 = 136315138;
    if (a2)
    {
      v9 = a1;
    }

    else
    {
      v9 = 7104878;
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    v11 = sub_E6C0(v9, v10, v27);

    *(v7 + 4) = v11;
    sub_EEB8(&dword_0, v12, v13, "#MessagingWithSiriController unsubscribing TTS subscription from %s");
    sub_91DC(v8);
    sub_9474(v8);
    sub_9474(v7);
  }

  if (a2)
  {
    v14 = qword_31520;

    if (v14 != -1)
    {
      sub_EDB4(&qword_31520);
    }

    sub_EEF8();
    v15 = static MessagesSettingsUtils.daemonSession;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    v17 = v15;
    sub_21CE4();
  }

  else
  {
    oslog = sub_21E54();
    v18 = sub_220A4();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      sub_EED8(&dword_0, v20, v21, "#MessagingWithSiriController locale for unsubscribeTTSVoice was nil", v22, v23, v24, v25, oslog);
      sub_9474(v19);
    }
  }
}

void sub_D40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_31548 != -1)
  {
LABEL_30:
    swift_once();
  }

  v6 = sub_21E64();
  sub_87F8(v6, qword_31EE0);

  v7 = sub_21E54();
  v8 = sub_220B4();

  v37 = a1;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40[0] = v10;
    *v9 = 136315138;
    sub_21DB4();
    v11 = sub_21F94();
    v13 = sub_E6C0(v11, v12, v40);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "#MessagesSettingsUtils existingSubscriptions %s", v9, 0xCu);
    sub_91DC(v10);

    a1 = v37;
  }

  v40[0] = &_swiftEmptyArrayStorage;
  v14 = sub_1EBC4(a1);
  v15 = 0;
  v38 = a1 & 0xFFFFFFFFFFFFFF8;
  v39 = a1 & 0xC000000000000001;
  while (v14 != v15)
  {
    if (v39)
    {
      v16 = sub_221D4();
    }

    else
    {
      if (v15 >= *(v38 + 16))
      {
        goto LABEL_29;
      }

      v16 = *(a1 + 8 * v15 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v18 = sub_21DA4();
    sub_EF18();
    v20 = v19;
    v22 = v21;

    if (v20 == a2 && v22 == a3)
    {

      goto LABEL_18;
    }

    v24 = sub_222C4();

    if (v24)
    {

      goto LABEL_18;
    }

    v25 = sub_21DA4();
    sub_21D84();

    v26 = sub_21DA4();
    sub_21D64();

    v27 = objc_allocWithZone(sub_21D94());
    a1 = v37;
    v28 = sub_21D74();

    if (v28)
    {
      sub_21F64();
      if (*(&dword_10 + (v40[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v40[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_21FA4();
      }

      sub_21FD4();
      ++v15;
    }

    else
    {
LABEL_18:
      ++v15;
    }
  }

  v29 = sub_21E54();
  v30 = sub_220B4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40[0] = v32;
    *v31 = 136315138;
    sub_21D94();
    v33 = sub_21F94();
    v35 = sub_E6C0(v33, v34, v40);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_0, v29, v30, "#MessagesSettingsUtils after unsubscribing %s", v31, 0xCu);
    sub_91DC(v32);
  }

  if (qword_31520 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = static MessagesSettingsUtils.daemonSession;
  sub_21D04();
}

uint64_t static MessagesSettingsUtils.chosenTTSAssetFor(language:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v8 = sub_21E64();
  sub_87F8(v8, qword_31EE0);

  v9 = sub_21E54();
  v10 = sub_220B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_E6C0(a1, a2, v17);
    _os_log_impl(&dword_0, v9, v10, "#MessagesSettingsUtils chosenTTSAssetFor: %s)", v11, 0xCu);
    sub_91DC(v12);
    sub_9474(v12);
    sub_9474(v11);
  }

  if (qword_31520 != -1)
  {
    sub_EDB4(&qword_31520);
  }

  sub_EEF8();
  v13 = static MessagesSettingsUtils.daemonSession;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;

  v15 = v13;

  sub_21CE4();
}

void sub_DABC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void *))
{
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v7 = sub_21E64();
  sub_87F8(v7, qword_31EE0);

  v8 = sub_21E54();
  v9 = sub_220B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v50 = v11;
    *v10 = 136315138;
    sub_21DB4();
    v12 = sub_21F94();
    v14 = sub_E6C0(v12, v13, &v50);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "#MessagesSettingsUtils subscribedVoices: %s", v10, 0xCu);
    sub_91DC(v11);
  }

  v15 = sub_E0D0(a1, a2, a3);
  if (v15)
  {
    v16 = v15;
    v17 = sub_21E54();
    v18 = sub_220B4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v50 = v20;
      *v19 = 136315138;
      v21 = v16;
      v22 = [v21 description];
      v23 = sub_21EF4();
      v25 = v24;

      v26 = sub_E6C0(v23, v25, &v50);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_0, v17, v18, "#MessagesSettingsUtils preferredVoice: %s", v19, 0xCu);
      sub_91DC(v20);
    }

    sub_21E14();
    sub_7E80(&qword_31870, &unk_23020);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_22EA0;
    sub_8AF4(0, &qword_31878, TTSAssetType_ptr);
    *(v27 + 32) = sub_22074();
    sub_7E80(&qword_31880, &unk_22F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22EB0;
    *(inited + 32) = 0;
    v29 = sub_21DA4();
    v30 = sub_21D64();
    v32 = v31;

    *(inited + 64) = sub_7E80(&qword_318A8, &unk_22FC8);
    *(inited + 40) = v30;
    *(inited + 48) = v32;
    type metadata accessor for TTSAssetProperty();
    sub_C254();
    sub_21ED4();
    v33 = sub_21E04();

    v34 = v33;
    v35 = sub_21E54();
    v36 = sub_220B4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v37 = 136315394;
      v38 = v34;
      sub_7E80(&qword_31898, &unk_22F70);
      v39 = sub_21F14();
      v41 = sub_E6C0(v39, v40, &v50);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      if (v33)
      {
        [v38 locallyAvailable];
      }

      sub_7E80(&qword_31890, &qword_23090);
      v46 = sub_21F14();
      v48 = sub_E6C0(v46, v47, &v50);

      *(v37 + 14) = v48;
      _os_log_impl(&dword_0, v35, v36, "#MessagesSettingsUtils voice: %s, is locally available: %s", v37, 0x16u);
      swift_arrayDestroy();
    }

    a4(v33);
  }

  else
  {

    v42 = sub_21E54();
    v43 = sub_220B4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_E6C0(a2, a3, &v50);
      _os_log_impl(&dword_0, v42, v43, "#MessagesSettingsUtils no subscribed voice for %s", v44, 0xCu);
      sub_91DC(v45);
    }

    a4(0);
  }
}

void *sub_E0D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v43 = sub_1EBC4(a1);
  if (v43)
  {
    sub_8AF4(0, &qword_315E8, NSLocale_ptr);
    v4 = 0;
    v44 = a3;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_221D4();
      }

      else
      {
        if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v47 = v4 + 1;
      v7 = sub_21DA4();
      v8 = sub_21D84();
      v10 = v9;

      v11 = sub_17804(v8, v10);
      v12 = [v11 languageCode];

      v13 = sub_21EF4();
      v15 = v14;

      v16 = sub_17804(a2, a3);
      v17 = [v16 languageCode];

      v18 = sub_21EF4();
      v20 = v19;

      if (qword_31548 != -1)
      {
        swift_once();
      }

      v21 = sub_21E64();
      sub_87F8(v21, qword_31EE0);

      v22 = sub_21E54();
      v23 = sub_220B4();

      v48 = v6;
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v49 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_E6C0(v13, v15, &v49);
        _os_log_impl(&dword_0, v22, v23, "#MessagesSettingsUtils voiceLanguage: %s", v24, 0xCu);
        sub_91DC(v25);
      }

      v26 = sub_21E54();
      v27 = sub_220B4();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v49 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_E6C0(v18, v20, &v49);
        _os_log_impl(&dword_0, v26, v27, "#MessagesSettingsUtils languageOfText: %s", v28, 0xCu);
        sub_91DC(v29);
      }

      v30 = v48;
      v31 = v13 == v18 && v15 == v20;
      a3 = v44;
      if (v31)
      {
        break;
      }

      v32 = sub_222C4();

      if (v32)
      {
        goto LABEL_25;
      }

      ++v4;
      if (v47 == v43)
      {
        goto LABEL_20;
      }
    }

LABEL_25:

    v38 = sub_21E54();
    v39 = sub_220B4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_E6C0(a2, v44, &v49);
      _os_log_impl(&dword_0, v38, v39, "#MessagesSettingsUtils found subscribed voice for %s", v40, 0xCu);
      sub_91DC(v41);
    }
  }

  else
  {
LABEL_20:
    if (qword_31548 != -1)
    {
LABEL_31:
      swift_once();
    }

    v33 = sub_21E64();
    sub_87F8(v33, qword_31EE0);

    v34 = sub_21E54();
    v35 = sub_220B4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_E6C0(a2, a3, &v49);
      _os_log_impl(&dword_0, v34, v35, "#MessagesSettingsUtils did not find subscribed voice for %s", v36, 0xCu);
      sub_91DC(v37);
    }

    return 0;
  }

  return v30;
}

uint64_t sub_E674()
{

  return _swift_deallocObject(v0);
}

unint64_t sub_E6C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_E794(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_ED54(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_91DC(v11);
  return v7;
}

unint64_t sub_E794(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_E894(a5, a6);
    *a1 = v9;
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
    result = sub_221F4();
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

char *sub_E894(uint64_t a1, unint64_t a2)
{
  v3 = sub_E8E0(a1, a2);
  sub_E9F8(&off_2CA30);
  return v3;
}

char *sub_E8E0(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_21F54())
  {
    result = sub_EADC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_221A4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_221F4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_E9F8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_EB4C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_EADC(uint64_t a1, uint64_t a2)
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

  sub_7E80(&qword_318A0, &qword_22FC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_EB4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_7E80(&qword_318A0, &qword_22FC0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_EC40(void *a1)
{
  v1 = [a1 assistantLanguageTitlesDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21EB4();

  return v3;
}

uint64_t sub_ECAC(uint64_t a1)
{
  v2 = sub_7E80(&qword_31610, &qword_23080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ED14()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_ED54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_EDB4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_EDD4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_EDF4()
{

  return swift_beginAccess();
}

uint64_t sub_EE14(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_EE34(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_EE54(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_EE74()
{

  return swift_beginAccess();
}

void sub_EEB8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_EED8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 2u);
}

uint64_t sub_EEF8()
{

  return swift_beginAccess();
}

void sub_EF18()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = v0;
  v2 = sub_21D84();
  sub_170B8(v2, v3, v1, &selRef_getBaseLocale_);
  v5 = v4;

  if (!v5)
  {
LABEL_5:
    __break(1u);
  }
}

BOOL sub_EFC8()
{
  sub_176A0();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

void sub_F070(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = sub_221D4();
    }

    else
    {
      if (v7 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

char *sub_F168()
{
  v1 = v0;
  v2 = sub_951C();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49[0] = v47;
  v49[1] = v48;
  if (!*(&v48 + 1))
  {
    sub_8F6C(v49, &qword_31610, &qword_23080);
LABEL_12:
    if (qword_31548 != -1)
    {
      sub_A42C();
      swift_once();
    }

    v10 = sub_21E64();
    sub_9444(v10, qword_31EE0);
    v11 = sub_21E54();
    v12 = sub_220B4();
    if (sub_176F8(v12))
    {
      *sub_94E0() = 0;
      sub_17690();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      sub_93FC();
    }

    v18 = sub_21E54();
    v19 = sub_220B4();
    if (sub_176F8(v19))
    {
      v20 = sub_94C8();
      v21 = sub_94F8();
      *&v49[0] = v21;
      *v20 = 136315138;
      if (qword_31530 != -1)
      {
        sub_EE34(&qword_31530);
      }

      sub_C45C(&static MessagesSettingsUtils.readableLanguageToLocaleMap);

      v22 = sub_21EC4();
      v24 = v23;

      v25 = sub_E6C0(v22, v24, v49);

      *(v20 + 4) = v25;
      sub_17690();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_91DC(v21);
      sub_9474(v21);
      sub_93FC();
    }

    sub_17144(v1, &selRef_title);
    if (v31)
    {
      if (qword_31530 != -1)
      {
        sub_EE34(&qword_31530);
      }

      swift_beginAccess();
      v32 = sub_17684();
      sub_1ED50(v32, v33, v34);
      if (v35)
      {
        swift_endAccess();

        if (!*&v1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale])
        {
          sub_8AF4(0, &qword_315E8, NSLocale_ptr);
          v36 = sub_17610();
          v38 = sub_17804(v36, v37);
          v39 = [v38 languageCode];

          v40 = sub_21EF4();
          v42 = v41;

          sub_1772C();
          v43 = swift_allocObject();
          v43[2] = v1;
          v43[3] = v40;
          v43[4] = v42;
          v44 = v1;

          static MessagesSettingsUtils.chosenTTSAssetFor(language:_:)(v40, v42, sub_17548, v43);

          return &_swiftEmptyArrayStorage;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    return sub_F8A0();
  }

  sub_7E80(&qword_31618, &unk_22C50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_31548 != -1)
  {
    sub_A42C();
    swift_once();
  }

  v4 = sub_21E64();
  sub_9444(v4, qword_31EE0);
  v5 = sub_21E54();
  v6 = sub_220B4();
  if (sub_17714(v6))
  {
    v7 = sub_94E0();
    sub_176B0(v7);
    sub_1777C(&dword_0, v8, v9, "#MessagesAutoConfirmSettingsController returning already initialized specifiers");
    sub_93D4();
  }

  sub_1CAA8(v46);
  sub_95A4();

  return v5;
}

void *sub_F5BC(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result)
  {
    v7 = result;
    sub_8AF4(0, &qword_315E8, NSLocale_ptr);
    v8 = v7;
    v9 = [v8 primaryLanguage];
    v10 = sub_21EF4();
    v12 = v11;

    v13 = sub_17804(v10, v12);
    v14 = *(a2 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale);
    *(a2 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale) = v13;

    if (qword_31548 != -1)
    {
      swift_once();
    }

    v15 = sub_21E64();
    sub_87F8(v15, qword_31EE0);
    v16 = v8;

    v17 = sub_21E54();
    v18 = sub_220B4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_E6C0(a3, a4, &v26);
      *(v19 + 12) = 2080;
      v20 = v16;
      v21 = [v20 description];
      v22 = sub_21EF4();
      v24 = v23;

      v25 = sub_E6C0(v22, v24, &v26);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_0, v17, v18, "#ReadingVoiceListController found asset for %s  %s", v19, 0x16u);
      swift_arrayDestroy();
    }

    sub_F8A0();
  }

  return result;
}

char *sub_F8A0()
{
  v1 = static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000010, 0x80000000000239F0);
  sub_1AF18(v1, v2, v0);
  if (qword_31548 != -1)
  {
    sub_A42C();
    swift_once();
  }

  v3 = sub_21E64();
  v4 = sub_87F8(v3, qword_31EE0);
  v5 = v0;
  v6 = sub_21E54();
  v7 = sub_220B4();

  v8 = &off_31000;
  v124 = v5;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = sub_94C8();
    *&v125[0] = sub_94F8();
    *v9 = 136315138;
    v10 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale];
    if (v10)
    {
      v11 = v10;
      sub_10294();
      sub_17644();

      v5 = v124;
    }

    else
    {
      v8 = 7104878;
    }

    v12 = sub_1765C();
    sub_E6C0(v12, v13, v14);
    sub_176BC();
    *(v9 + 4) = v8;
    _os_log_impl(&dword_0, v6, v7, "ReadingVoiceListController current locale : %s", v9, 0xCu);
    sub_17558();
    sub_9474(v9);
  }

  v127 = &_swiftEmptyArrayStorage;
  v15 = objc_opt_self();
  static MessagesSettingsUtils.getLocalizedString(_:)(0x5F59544549524156, 0xED0000454C544954);
  sub_93C8();
  v18 = sub_1E818(0x4779746569726176, 0xEC00000070756F72, v16, v17, v15);
  v19 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup;
  v20 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup];
  *&v5[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup] = v18;

  static MessagesSettingsUtils.getLocalizedString(_:)(0x49545F4543494F56, 0xEB00000000454C54);
  sub_93C8();
  v23 = sub_1E818(0x6F72476563696F76, 0xEA00000000007075, v21, v22, v15);
  v24 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup;
  v25 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup];
  *&v5[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup] = v23;

  v26 = v5;
  v27 = sub_21E54();
  v28 = sub_220B4();
  v123 = v4;
  if (sub_17714(v28))
  {
    v4 = v26;
    v29 = sub_94C8();
    v126[0] = sub_94F8();
    *v29 = 136315138;
    v30 = *&v5[v19];
    if (!v30)
    {
LABEL_74:

      __break(1u);
      goto LABEL_75;
    }

    v31 = v30;

    v32 = sub_21EF4();
    v34 = sub_16FAC(v32, v33, v31);

    if (v34)
    {
      sub_22124();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v125, 0, sizeof(v125));
    }

    sub_7E80(&qword_31610, &qword_23080);
    v35 = sub_21F14();
    v37 = sub_E6C0(v35, v36, v126);

    *(v29 + 4) = v37;
    _os_log_impl(&dword_0, v27, v28, "#ReadingVoiceListController varietyGroup: %s", v29, 0xCu);
    sub_17558();
    sub_93FC();

    v4 = v123;
    v5 = v124;
  }

  else
  {
  }

  v122 = v19;
  v38 = *&v5[v19];
  if (!v38)
  {
    goto LABEL_70;
  }

  v39 = v38;
  isa = sub_21FE4().super.super.isa;
  v41 = sub_21EF4();
  sub_175A8(v41, v42);

  v43 = *&v5[v24];
  if (!v43)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v44 = v43;
  v45 = sub_21FE4().super.super.isa;
  v46 = sub_21EF4();
  sub_175A8(v46, v47);

  v48 = *&v5[v24];
  if (!v48)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v49 = v48;
  static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000019, 0x8000000000023A10);
  v50 = sub_21EE4();

  v51 = sub_21EF4();
  sub_175A8(v51, v52);

  v53 = *&v5[v24];
  if (!v53)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v54 = v53;
  sub_21F64();
  if (*(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v127 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_21FA4();
  }

  sub_21FD4();
  v55 = v127;
  v56 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeVarietiesWithinLanguage;
  if (!sub_1EBC4(*&v26[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeVarietiesWithinLanguage]))
  {
    sub_10340();
  }

  sub_120EC();
  v57 = v26;
  v58 = sub_21E54();
  v59 = v26;
  v60 = sub_220B4();

  v119 = v59;
  v121 = v24;
  if (os_log_type_enabled(v58, v60))
  {
    v61 = sub_94C8();
    v62 = v55;
    v63 = sub_94F8();
    *&v125[0] = v63;
    *v61 = 136315138;
    sub_8AF4(0, &qword_315E8, NSLocale_ptr);

    v64 = sub_21F94();
    v66 = v65;

    v67 = sub_E6C0(v64, v66, v125);

    *(v61 + 4) = v67;
    _os_log_impl(&dword_0, v58, v60, "#ReadingVoiceListController locales for language %s", v61, 0xCu);
    sub_91DC(v63);
    v68 = v63;
    v55 = v62;
    sub_9474(v68);
    v69 = v61;
    v5 = v124;
    sub_9474(v69);
  }

  v4 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietySpecifiers;
  swift_beginAccess();
  if (sub_1EBC4(*&v57[v4]))
  {
    sub_11538();
  }

  else
  {
    v70 = *&v119[v56];
    v71 = sub_1EBC4(v70);
    if (v71)
    {
      v72 = v71;
      v120 = v55;
      if (v71 < 1)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      for (i = 0; i != v72; ++i)
      {
        if ((v70 & 0xC000000000000001) != 0)
        {
          v74 = sub_221D4();
        }

        else
        {
          v74 = *(v70 + 8 * i + 32);
        }

        v75 = v74;
        sub_108BC(v74);
        if (v76)
        {
          v77 = v76;
          sub_177D4(&v57[v4]);
          v78 = v77;
          sub_21F64();
          sub_17634();
          if (v80)
          {
            sub_17624(v79);
            sub_21FA4();
          }

          sub_21FD4();
          swift_endAccess();

          v75 = v78;
        }
      }

      v5 = v124;
      v55 = v120;
    }
  }

  v81 = *&v57[v4];
  swift_bridgeObjectRetain_n();
  v126[0] = sub_1AF7C(v81);
  sub_16214(v126);

  *&v57[v4] = v126[0];

  if (sub_1EBC4(*&v57[v4]) <= 1)
  {
    goto LABEL_46;
  }

  v82 = *&v5[v122];
  if (!v82)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  sub_19CD8(0, v55);
  if (sub_19DD8(v55) < 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  v83 = sub_1EBC4(v55);
  v84 = v83 + 1;
  if (__OFADD__(v83, 1))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v85 = v82;
  sub_1B40C(v84, 1);
  v86 = sub_17764();
  sub_19DFC(v86, v87, 1, v85);
  v88 = v127;
  v89 = *&v57[v4];
  if (sub_19DD8(v127) < 1)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v90 = sub_1EBC4(v89);
  v91 = sub_1EBC4(v88);
  v92 = v91 + v90;
  if (__OFADD__(v91, v90))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_1B40C(v92, 1);
  sub_19F3C(1, 1, v90, v89);
  v55 = v127;
LABEL_46:
  v93 = *&v57[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale];
  if (!v93)
  {
LABEL_59:
    v117 = sub_1CAA8(v55);
    sub_1E9CC(v117, v57);
    v111 = sub_1CAA8(v55);

    return v111;
  }

  v94 = v93;
  sub_10294();
  sub_17644();
  sub_C45C(&v57[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap]);

  sub_1765C();
  v95 = sub_219D8();

  if (!v95)
  {
LABEL_58:

    goto LABEL_59;
  }

  v96 = sub_1180C(v95);
  v97 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers;
  *&v57[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers] = v96;

  v98 = *&v124[v121];
  if (v98)
  {
    v99 = v98;

    sub_1CC14(v99, v55);
    v101 = v100;
    v4 = v102;

    if (v4)
    {

      v103 = sub_21E54();
      v104 = sub_220B4();
      if (sub_17668(v104))
      {
        v105 = sub_94E0();
        sub_176B0(v105);
        sub_17600();
        _os_log_impl(v106, v107, v108, v109, v110, 2u);
        sub_93D4();
      }

      return 0;
    }

    v112 = __OFADD__(v101, 1);
    v113 = v101 + 1;
    if (!v112)
    {
      if ((v113 & 0x8000000000000000) == 0)
      {
        v4 = *&v57[v97];
        if (sub_19DD8(v55) >= v113)
        {
          v114 = sub_1EBC4(v4);
          v115 = sub_1EBC4(v55);
          v116 = v115 + v114;
          if (!__OFADD__(v115, v114))
          {

            sub_1B40C(v116, 1);
            sub_19F3C(v113, v113, v114, v4);
            v55 = v127;
            goto LABEL_58;
          }

          goto LABEL_69;
        }

LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_76:
  __break(1u);

  __break(1u);
  return result;
}

void sub_10294()
{
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v0 localeIdentifier];
  sub_21EF4();

  v4 = sub_17758();
  sub_170B8(v4, v5, v2, v6);
  v8 = v7;

  if (!v8)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_10340()
{
  if (qword_31548 != -1)
  {
LABEL_33:
    sub_A42C();
    swift_once();
  }

  v0 = sub_21E64();
  v62 = sub_87F8(v0, qword_31EE0);
  v1 = sub_21E54();
  v2 = sub_220B4();
  if (sub_176F8(v2))
  {
    v3 = sub_94C8();
    v4 = sub_94F8();
    v73 = v4;
    *v3 = 136315138;
    v5 = [sub_21E14() assistantVoiceMaps];
    sub_21DE4();

    sub_7E80(&qword_31938, &qword_23038);
    v6 = sub_21EC4();
    v8 = v7;

    v9 = sub_E6C0(v6, v8, &v73);

    *(v3 + 4) = v9;
    sub_17690();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_91DC(v4);
    sub_9474(v4);
    sub_93FC();
  }

  v64 = &_swiftEmptyArrayStorage;
  v73 = &_swiftEmptyArrayStorage;
  v15 = [sub_21E14() assistantVoiceMaps];
  v16 = sub_21DE4();

  v18 = 0;
  v66 = 0;
  v19 = v16 + 64;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v16 + 64);
  v68 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale;
  v23 = (v20 + 63) >> 6;
  *&v17 = 136315138;
  v61 = v17;
  v24 = &MessagingWithSiriController;
  v67 = v23;
  v63 = v16;
LABEL_7:
  v25 = v18;
  while (v22)
  {
    v26 = v24;
    v18 = v25;
LABEL_14:
    v22 &= v22 - 1;
    sub_8AF4(0, &qword_315E8, NSLocale_ptr);
    sub_17738();

    v27 = sub_1765C();
    v29 = sub_17804(v27, v28);
    sub_10294();
    v31 = v30;
    v32 = v16;
    v34 = v33;

    v65 = v31;
    v35 = sub_17804(v31, v34);
    v36 = [v35 v26[28].weak_ivar_lyt];
    v37 = sub_21EF4();
    v39 = v38;

    v40 = *(v71 + v68);
    if (v40)
    {
      v69 = v34;
      v70 = v35;
      v41 = [v40 v26[28].weak_ivar_lyt];
      v42 = sub_21EF4();
      v44 = v43;

      if (v37 == v42 && v39 == v44)
      {

        v24 = &MessagingWithSiriController;
        v23 = v67;
LABEL_23:
        v48 = v70;
        v72 = v70;
        __chkstk_darwin(v47);
        v60[2] = &v72;
        v49 = v66;
        sub_F070(sub_174EC, v60, v64, sub_1EBC4);
        v66 = v49;
        v16 = v63;
        v50 = v69;
        if (v51)
        {
        }

        else
        {

          v52 = sub_21E54();
          v53 = sub_220B4();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = sub_94C8();
            v55 = sub_94F8();
            v72 = v55;
            *v54 = v61;
            v56 = sub_E6C0(v65, v50, &v72);

            *(v54 + 4) = v56;
            v16 = v63;
            sub_177EC(&dword_0, v52, v53, "#ReadingVoiceListController adding variety %s", v61);
            sub_91DC(v55);
            sub_9474(v55);
            sub_9474(v54);
          }

          else
          {
          }

          sub_21F64();
          sub_17634();
          v24 = &MessagingWithSiriController;
          if (v58)
          {
            sub_17624(v57);
            sub_21FA4();
          }

          sub_21FD4();
          v64 = v73;
        }

        goto LABEL_7;
      }

      v46 = sub_222C4();

      v24 = &MessagingWithSiriController;
      v23 = v67;
      if (v46)
      {
        goto LABEL_23;
      }

      v25 = v18;
      v16 = v63;
    }

    else
    {

      v25 = v18;
      v24 = v26;
      v16 = v32;
      v23 = v67;
    }
  }

  while (1)
  {
    v18 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v18 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v18);
    ++v25;
    if (v22)
    {
      v26 = v24;
      goto LABEL_14;
    }
  }

  *(v71 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeVarietiesWithinLanguage) = v64;
}

void sub_108BC(void *a1)
{
  v2 = v1;
  v4 = sub_21C94();
  v154 = *(v4 - 8);
  v155 = v4;
  __chkstk_darwin(v4);
  v153 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14C58();
  v7 = v6;
  if (qword_31548 != -1)
  {
    sub_A42C();
    swift_once();
  }

  v8 = sub_21E64();
  v9 = sub_87F8(v8, qword_31EE0);
  v10 = a1;

  v11 = sub_21E54();
  v12 = sub_220B4();

  v13 = os_log_type_enabled(v11, v12);
  v163 = v1;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = v7;
    v16 = sub_9634();
    v166[0] = sub_94F8();
    *v14 = 138412546;
    *(v14 + 4) = v10;
    *v16 = v10;
    *(v14 + 12) = 2080;
    sub_21E14();
    v17 = v10;
    v18 = sub_21F94();
    v20 = v10;
    v21 = sub_E6C0(v18, v19, v166);
    v2 = v163;

    *(v14 + 14) = v21;
    v10 = v20;
    _os_log_impl(&dword_0, v11, v12, "#ReadingVoiceListController all voices from locale : %@ : %s", v14, 0x16u);
    sub_8F6C(v16, &qword_31680, &qword_22C90);
    v22 = v16;
    v7 = v15;
    sub_9474(v22);
    sub_17558();
    sub_9474(v14);
  }

  sub_10294();
  v24 = v23;
  v26 = v25;
  v27 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap;
  sub_177D4(&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap]);

  swift_isUniquelyReferenced_nonNull_native();
  v165[0] = *&v2[v27];
  sub_19A94(v7, v24, v26);
  *&v2[v27] = v165[0];

  swift_endAccess();
  v28 = sub_17144(v10, &selRef_regionCode);
  if (!v29)
  {

    return;
  }

  v30 = v28;
  v31 = v29;

  v32 = sub_21E54();
  sub_220B4();

  v33 = sub_177BC();
  v156 = v31;
  v157 = v7;
  if (v33)
  {
    v34 = sub_94C8();
    v35 = sub_94F8();
    v166[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_E6C0(v30, v31, v166);
    sub_17650();
    _os_log_impl(v36, v37, v38, v39, v34, 0xCu);
    sub_91DC(v35);
    sub_9474(v35);
    sub_1758C();
  }

  sub_10294();
  sub_17644();

  sub_1765C();
  v40 = sub_219D8();

  v41 = v9;
  v161 = v9;
  if (v40)
  {

    v42 = sub_21E54();
    sub_220B4();

    v43 = sub_177BC();
    v158 = v10;
    if (v43)
    {
      v44 = sub_94C8();
      v166[0] = sub_94F8();
      *v44 = 136315138;
      sub_21E14();
      v45 = sub_21F94();
      v47 = sub_E6C0(v45, v46, v166);

      *(v44 + 4) = v47;
      sub_17600();
      _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
      sub_17558();
      sub_93D4();
    }

    v53 = sub_1EBC4(v40);
    if (v53)
    {
      v55 = v53;
      if (v53 < 1)
      {
        __break(1u);
        goto LABEL_64;
      }

      v56 = 0;
      v57 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale;
      *&v54 = 138412290;
      v160 = v54;
      *&v54 = 67109120;
      v159 = v54;
      v162 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v58 = sub_221D4();
        }

        else
        {
          v58 = *(v40 + 8 * v56 + 32);
        }

        v59 = v58;
        v60 = sub_21E54();
        v61 = sub_220B4();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = sub_94C8();
          v63 = sub_9634();
          *v62 = v160;
          *(v62 + 4) = v59;
          *v63 = v59;
          v64 = v59;
          _os_log_impl(&dword_0, v60, v61, "#ReadingVoiceListController voiceInRegion %@", v62, 0xCu);
          sub_8F6C(v63, &qword_31680, &qword_22C90);
          sub_93FC();
          v41 = v161;
          sub_9474(v62);
        }

        v65 = v59;
        v66 = sub_21E54();
        v67 = sub_220B4();
        if (sub_17714(v67))
        {
          v68 = v41;
          v69 = sub_9634();
          *v69 = v159;
          *(v69 + 4) = [v65 locallyAvailable];

          _os_log_impl(&dword_0, v66, v67, "#ReadingVoiceListController voiceInRegion.locallyAvailable %{BOOL}d", v69, 8u);
          v70 = v69;
          v41 = v68;
          v57 = v162;
          sub_9474(v70);
        }

        else
        {

          v66 = v65;
        }

        if ([v65 locallyAvailable])
        {
          v71 = v163;
          if (!*&v57[v163])
          {
            sub_8AF4(0, &qword_315E8, NSLocale_ptr);
            sub_10294();
            v57 = v162;
            v74 = sub_17804(v72, v73);

            v65 = *&v57[v71];
            *&v57[v71] = v74;
          }
        }

        ++v56;
      }

      while (v55 != v56);
    }

    v10 = v158;
  }

  sub_8AF4(0, &qword_315E8, NSLocale_ptr);
  v75 = [v10 languageCode];
  v76 = sub_21EF4();
  v78 = v77;

  v79 = sub_17804(v76, v78);
  v80 = v153;
  sub_21C04();
  isa = sub_21C64().super.isa;
  (*(v154 + 8))(v80, v155);
  LODWORD(v80) = [v79 isEquivalentTo:isa];

  if (v80)
  {
    sub_8AF4(0, &qword_315F0, SUICAssistantVoiceSettingsConnection_ptr);
    sub_10294();
    v84 = sub_C57C(v82, v83);
    v86 = v85;

    if (v86)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (qword_31528 != -1)
    {
      swift_once();
    }

    sub_C45C(&static MessagesSettingsUtils.siriUISettingsConnection);
    v112 = static MessagesSettingsUtils.siriUISettingsConnection;
    sub_10294();
    v84 = sub_170B8(v113, v114, v112, &selRef_dialectForLanguageIdentifier_);
    v86 = v115;

    if (v86)
    {
LABEL_29:
      v162 = v79;
      sub_10294();
      v88 = v87;
      v90 = v89;
      v91 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyNameToLocale;
      v92 = v163;
      sub_177D4(v163 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyNameToLocale);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v164 = *&v92[v91];
      sub_19898(v88, v90, v84, v86, isUniquelyReferenced_nonNull_native);
      *&v92[v91] = v164;
      swift_endAccess();
      v94 = objc_opt_self();
      v100 = sub_176D4(v84, v86, v92, v95, v96, v97, v98, v99, v94);
      if (!v100)
      {

        return;
      }

      v101 = v10;
      v102 = v92;
      v103 = sub_21E54();
      v104 = sub_220B4();

      v105 = &off_31000;
      if (os_log_type_enabled(v103, v104))
      {
        v106 = swift_slowAlloc();
        v165[0] = swift_slowAlloc();
        *v106 = 136315394;
        v163 = v102;
        v107 = *&v102[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription];
        if (v107)
        {
          v105 = v107;
          sub_EF18();
          v109 = v108;
          v111 = v110;
        }

        else
        {
          v111 = 0x80000000000239D0;
          v109 = 0xD000000000000010;
        }

        sub_E6C0(v109, v111, v165);
        sub_95A4();

        *(v106 + 4) = v105;
        *(v106 + 12) = 2080;
        sub_10294();
        v125 = sub_E6C0(v123, v124, v165);

        *(v106 + 14) = v125;
        _os_log_impl(&dword_0, v103, v104, "#ReadingVoiceListController currentVoiceSubscription?.voice.language == locale.localeIdentifier %s %s", v106, 0x16u);
        swift_arrayDestroy();
        sub_93FC();
        sub_9474(v106);

        v102 = v163;
      }

      else
      {
      }

      v126 = *&v102[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription];
      if (v126)
      {
        v127 = v126;
        sub_EF18();
        v129 = v128;
        v131 = v130;
      }

      else
      {
        v129 = 0;
        v131 = 0;
      }

      sub_10294();
      if (v131)
      {
        if (v129 == v132 && v131 == v133)
        {

LABEL_57:
          v136 = v100;
          v137 = sub_21E54();
          v138 = sub_220B4();
          if (sub_17714(v138))
          {
            v139 = v102;
            v140 = sub_94C8();
            v141 = sub_94F8();
            v165[0] = v141;
            *v140 = 136315138;
            v142 = sub_21884(v136);
            v144 = v143;

            if (!v144)
            {
LABEL_65:
              __break(1u);
              return;
            }

            v145 = sub_E6C0(v142, v144, v165);

            *(v140 + 4) = v145;
            _os_log_impl(&dword_0, v137, v138, "#ReadingVoiceListController setting checked specifier on variety group for %s", v140, 0xCu);
            sub_91DC(v141);
            sub_93FC();
            sub_9474(v140);

            v146 = v162;
            v102 = v139;
          }

          else
          {

            v146 = v162;
          }

          v147 = *&v102[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup];
          if (v147)
          {
            v148 = v147;

            v149 = sub_21EF4();
            v151 = v150;
            v152 = v136;
            sub_1E79C(v100, v149, v151, v148);

            return;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v135 = sub_222C4();

        if (v135)
        {
          goto LABEL_57;
        }
      }

      else
      {
      }

      return;
    }
  }

  v116 = sub_21E54();
  v117 = sub_220B4();
  if (sub_17668(v117))
  {
    v118 = sub_94E0();
    *v118 = 0;
    sub_17650();
    _os_log_impl(v119, v120, v121, v122, v118, 2u);
    sub_9474(v118);
  }
}

uint64_t sub_11538()
{
  v1 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietySpecifiers;
  result = sub_C45C(v0 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietySpecifiers);
  v39 = v0;
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
LABEL_37:
    result = sub_22274();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }
  }

  v5 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyNameToLocale;
  v34 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup;
  v37 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription;
  v38 = v3 & 0xC000000000000001;

  v36 = v5;
  sub_C45C(v39 + v5);
  v6 = 0;
  v33 = v3 & 0xFFFFFFFFFFFFFF8;
  v35 = v4;
  while (1)
  {
    if (v38)
    {
      sub_17770();
      v7 = sub_221D4();
    }

    else
    {
      if (v6 >= *(v33 + 16))
      {
        goto LABEL_36;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v10 = *(v39 + v37);
    if (v10)
    {
      v11 = v10;
      v12 = sub_21D84();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    result = sub_21884(v8);
    if (!v15)
    {
      break;
    }

    v16 = v15;
    v17 = v3;
    v18 = *(v39 + v36);
    if (*(v18 + 16))
    {
      v19 = result;

      v20 = sub_214F4(v19, v16);
      v22 = v21;

      if (v22)
      {
        v23 = (*(v18 + 56) + 16 * v20);
        v25 = *v23;
        v24 = v23[1];
      }

      else
      {
        v25 = 0;
        v24 = 0;
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    if (v14)
    {
      if (v24)
      {
        if (v12 == v25 && v14 == v24)
        {
        }

        else
        {
          v27 = sub_222C4();

          if ((v27 & 1) == 0)
          {
LABEL_31:

            goto LABEL_32;
          }
        }

LABEL_29:
        v28 = *(v39 + v34);
        if (!v28)
        {
          goto LABEL_40;
        }

        v29 = sub_21EF4();
        v31 = v30;
        v32 = v28;
        sub_1E79C(v8, v29, v31, v32);

        goto LABEL_31;
      }
    }

    else if (!v24)
    {
      goto LABEL_29;
    }

LABEL_32:
    ++v6;
    v3 = v17;
    if (v9 == v35)
    {
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void *sub_1180C(unint64_t a1)
{
  v4 = v1;
  v5 = a1;
  v106 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_59:
    v6 = sub_22274();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
LABEL_3:
      type metadata accessor for MessagingWithSiriController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v93 = objc_opt_self();
      v7 = objc_opt_self();
      v8 = 0;
      v100 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription;
      v95 = v5 & 0xC000000000000001;
      v89 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceDisplayStringToVoice;
      v92 = v7;
      v87 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup;
      v88 = v5 & 0xFFFFFFFFFFFFFF8;
      v98 = &_swiftEmptyArrayStorage;
      v9 = 1;
      v101 = v4;
      v90 = v6;
      v91 = v5;
      while (1)
      {
        if (v95)
        {
          v10 = sub_221D4();
        }

        else
        {
          if (v8 >= *(v88 + 16))
          {
            goto LABEL_58;
          }

          v10 = *(v5 + 8 * v8 + 32);
        }

        v11 = v10;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v102 = v8;
        v103 = v8 + 1;
        if (qword_31548 != -1)
        {
          sub_A42C();
          swift_once();
        }

        v12 = sub_21E64();
        sub_87F8(v12, qword_31EE0);
        v13 = v11;
        v14 = sub_21E54();
        v15 = sub_220B4();

        if (os_log_type_enabled(v14, v15))
        {
          v5 = sub_94C8();
          v16 = sub_94F8();
          sub_17744(v16);
          v17 = sub_21DF4();
          sub_E6C0(v17, v18, v105);
          sub_17738();

          *(v5 + 4) = v3;
          sub_177EC(&dword_0, v14, v15, "#ReadingVoiceListController adding variety voice %s", v86._countAndFlagsBits);
          sub_91DC(v2);
          sub_93FC();
          sub_9474(v5);
        }

        v19 = v4;
        v20 = sub_21E54();
        v21 = sub_220B4();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = sub_94C8();
          v105[0] = sub_94F8();
          *v22 = 136315138;
          v23 = *&v4[v100];
          if (!v23 || (v5 = v23, v24 = sub_21D64(), v26 = v25, v5, !v26))
          {

            v26 = 0xE400000000000000;
            v24 = 1818848800;
          }

          sub_E6C0(v24, v26, v105);
          sub_176BC();
          *(v22 + 4) = v5;
          _os_log_impl(&dword_0, v20, v21, "#ReadingVoiceListController current subscription %s", v22, 0xCu);
          sub_17558();
          sub_9474(v22);

          v4 = v101;
        }

        else
        {
        }

        v27 = [v93 bundleForClass:ObjCClassFromMetadata];
        v86._countAndFlagsBits = 0xE000000000000000;
        v107._countAndFlagsBits = 0xD000000000000018;
        v107._object = 0x80000000000239B0;
        v108.value._object = 0x8000000000022FC0;
        v108.value._countAndFlagsBits = 0xD000000000000014;
        v28.super.isa = v27;
        v109._countAndFlagsBits = 0;
        v109._object = 0xE000000000000000;
        sub_21BF4(v107, v108, v28, v109, 0, v86);
        v3 = v29;

        sub_7E80(&qword_31950, &qword_23058);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_22EB0;
        v105[0] = v9;
        sub_17444();
        v31 = sub_22114();
        v2 = v32;
        *(v30 + 56) = &type metadata for String;
        *(v30 + 64) = sub_17498();
        *(v30 + 32) = v31;
        *(v30 + 40) = v2;
        v33 = sub_21F04();
        v5 = v34;
        v99 = sub_176D4(v33, v34, v4, v35, v36, v37, v38, v39, v92);
        if (v99)
        {
          break;
        }

LABEL_54:
        v5 = v91;

        v8 = v102 + 1;
        if (v103 == v90)
        {
          return v98;
        }
      }

      if (__OFADD__(v9++, 1))
      {
        goto LABEL_57;
      }

      v97 = v5;
      v96 = v33;
      v41 = v19;
      v42 = sub_21E54();
      v43 = sub_220B4();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = v13;
        v45 = v9;
        v46 = sub_94C8();
        v47 = sub_94F8();
        v105[0] = v47;
        *v46 = 136315138;
        v48 = *&v101[v100];
        if (!v48 || (v2 = v48, sub_21D64(), sub_17644(), v2, !v2))
        {

          v5 = 7104878;
        }

        v49 = sub_1765C();
        sub_E6C0(v49, v50, v51);
        sub_176BC();
        *(v46 + 4) = v5;
        _os_log_impl(&dword_0, v42, v43, "#ReadingVoiceListController marking as currently subscribed voice %s", v46, 0xCu);
        sub_91DC(v47);
        sub_9474(v47);
        sub_1758C();

        v9 = v45;
        v13 = v44;
      }

      else
      {
      }

      v52 = v41;
      v53 = sub_21E54();
      v54 = sub_220B4();

      if (os_log_type_enabled(v53, v54))
      {
        v2 = v9;
        v55 = sub_94C8();
        v104 = sub_94F8();
        *v55 = 136315138;
        v56 = *&v101[v100];
        if (v56)
        {
          v57 = v56;
          sub_21D64();
          sub_17644();
        }

        else
        {
          v52 = 0;
          v57 = 0;
        }

        v105[0] = v52;
        v105[1] = v57;
        sub_7E80(&qword_318A8, &unk_22FC8);
        v58 = sub_21F14();
        v52 = v59;
        sub_E6C0(v58, v59, &v104);
        sub_95A4();

        *(v55 + 4) = v57;
        _os_log_impl(&dword_0, v53, v54, "#ReadingVoiceListController currentVoiceSubscription name %s ", v55, 0xCu);
        sub_17558();
        sub_9474(v55);

        v4 = v101;
      }

      else
      {

        v4 = v101;
      }

      v60 = v13;
      v61 = sub_21E54();
      v62 = sub_220B4();

      if (os_log_type_enabled(v61, v62))
      {
        v52 = sub_94C8();
        v63 = sub_94F8();
        sub_17744(v63);
        v64 = sub_21DF4();
        v66 = v13;
        v67 = v9;
        v68 = sub_E6C0(v64, v65, v105);

        *(v52 + 4) = v68;
        v9 = v67;
        v13 = v66;
        sub_177EC(&dword_0, v61, v62, "#ReadingVoiceListController voice name %s ", v86._countAndFlagsBits);
        sub_91DC(v2);
        sub_93FC();
        sub_9474(v52);
      }

      v69 = *&v4[v100];
      if (v69)
      {
        v70 = v69;
        v3 = sub_21D64();
        v72 = v71;
      }

      else
      {
        v3 = 0;
        v72 = 0;
      }

      v73 = sub_21DF4();
      if (v72)
      {
        if (v3 == v73 && v72 == v74)
        {

LABEL_49:
          v78 = *&v4[v87];
          if (!v78)
          {
            __break(1u);
            return result;
          }

          v79 = v78;
          sub_176BC();
          sub_21EF4();
          sub_93C8();
          v77 = v99;
          sub_1E79C(v99, v80, v81, v52);

          goto LABEL_51;
        }

        v52 = sub_222C4();

        if (v52)
        {
          goto LABEL_49;
        }
      }

      else
      {
      }

      v77 = v99;
LABEL_51:
      v82 = v77;
      sub_21F64();
      sub_17634();
      if (v84)
      {
        sub_17624(v83);
        sub_21FA4();
      }

      sub_21FD4();
      v98 = v106;
      v2 = v89;
      sub_177D4(&v4[v89]);
      v85 = v60;
      swift_isUniquelyReferenced_nonNull_native();
      v104 = *&v4[v89];
      sub_19B6C(v85, v96, v97);
      *&v4[v89] = v104;

      swift_endAccess();

      goto LABEL_54;
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_120EC()
{
  v1 = v0;
  if (qword_31548 != -1)
  {
    sub_A42C();
    swift_once();
  }

  v2 = sub_21E64();
  sub_9444(v2, qword_31EE0);
  v3 = sub_21E54();
  v4 = sub_220B4();
  if (sub_17714(v4))
  {
    v5 = sub_94E0();
    sub_176B0(v5);
    sub_1777C(&dword_0, v6, v7, "#ReadingVoiceListController setting currentVoiceSubscription");
    sub_93D4();
  }

  if (qword_31520 != -1)
  {
    sub_EDB4(&qword_31520);
  }

  sub_C45C(&static MessagesSettingsUtils.daemonSession);
  v8 = static MessagesSettingsUtils.daemonSession;
  *(swift_allocObject() + 16) = v1;
  v9 = v8;
  v10 = v1;
  sub_21CE4();
}

void sub_12230(uint64_t a1, char *a2)
{
  v76 = sub_21E84();
  v4 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_21EA4();
  v6 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_21C34();
  v8 = *(v82 - 8);
  __chkstk_darwin(v82);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v11 = sub_21E64();
  v12 = sub_87F8(v11, qword_31EE0);

  v87 = v12;
  v13 = sub_21E54();
  v14 = sub_220B4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = sub_1EBC4(a1);

    _os_log_impl(&dword_0, v13, v14, "#ReadingVoiceListController voiceSubscriptions.count %ld", v15, 0xCu);
  }

  else
  {
  }

  v83 = sub_1EBC4(a1);
  if (v83)
  {
    if (v83 >= 1)
    {
      v17 = 0;
      v86 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale;
      v80 = a1 & 0xC000000000000001;
      v77 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription;
      v69 = 0x8000000000023990;
      v78 = (v8 + 8);
      v72 = v89;
      v71 = (v4 + 8);
      v70 = (v6 + 8);
      *&v16 = 136315138;
      v79 = v16;
      v84 = v10;
      v85 = a2;
      v81 = a1;
      while (1)
      {
        if (v80)
        {
          v18 = sub_221D4();
        }

        else
        {
          v18 = *(a1 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = sub_21DA4();
        sub_EF18();

        sub_21C44();
        v21 = v19;
        v22 = sub_21E54();
        v23 = sub_220B4();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          aBlock[0] = v25;
          *v24 = v79;
          v26 = sub_21DA4();
          v27 = sub_21D64();
          v29 = v28;

          if (v29)
          {
            v30 = v27;
          }

          else
          {
            v30 = 7104878;
          }

          if (v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = 0xE300000000000000;
          }

          a1 = v81;
          v32 = sub_E6C0(v30, v31, aBlock);

          *(v24 + 4) = v32;
          a2 = v85;
          _os_log_impl(&dword_0, v22, v23, "#ReadingVoiceListController voiceSubscription.voice.name %s", v24, 0xCu);
          sub_91DC(v25);
        }

        v33 = a2;
        v34 = sub_21E54();
        v35 = sub_220B4();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          aBlock[0] = v37;
          *v36 = v79;
          v38 = *&a2[v86];
          if (v38)
          {
            v39 = [v38 languageCode];
            v40 = sub_21EF4();
            v42 = v41;
          }

          else
          {
            v40 = 0xD00000000000001ALL;
            v42 = v69;
          }

          v43 = sub_E6C0(v40, v42, aBlock);

          *(v36 + 4) = v43;
          _os_log_impl(&dword_0, v34, v35, "#ReadingVoiceListController self.currentlySubscribedLocale?.languageCode %s", v36, 0xCu);
          sub_91DC(v37);

          v10 = v84;
          a2 = v85;
          a1 = v81;
        }

        else
        {
        }

        v44 = *&a2[v86];
        if (v44)
        {
          v45 = v44;
          sub_10294();
          v47 = v46;
          v49 = v48;

          if (v47 == sub_21C14() && v49 == v50)
          {

LABEL_35:
            v53 = *&a2[v77];
            v54 = v53;
            v55 = sub_21DA4();
            v56 = v55;
            if (v53)
            {
              sub_21D94();
              v57 = sub_220F4();

              if (v57)
              {

LABEL_40:
                v10 = v84;
                (*v78)(v84, v82);
                goto LABEL_41;
              }
            }

            else
            {
            }

            v58 = sub_21DA4();
            v59 = *&a2[v77];
            *&a2[v77] = v58;

            sub_8AF4(0, &qword_31620, OS_dispatch_queue_ptr);
            v60 = sub_220C4();
            v61 = swift_allocObject();
            *(v61 + 16) = v33;
            v89[2] = sub_17394;
            v89[3] = v61;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            v89[0] = sub_55D0;
            v89[1] = &unk_2CF60;
            v62 = _Block_copy(aBlock);
            v63 = v33;

            v64 = a1;
            v65 = v73;
            sub_21E94();
            aBlock[0] = &_swiftEmptyArrayStorage;
            sub_173B4(&qword_31628, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_7E80(&qword_31630, &qword_23050);
            sub_173FC(&qword_31638, &qword_31630, &qword_23050, &protocol conformance descriptor for [A]);
            v66 = v75;
            v67 = v76;
            sub_22134();
            sub_220D4();
            _Block_release(v62);

            (*v71)(v66, v67);
            v68 = v65;
            a1 = v64;
            a2 = v85;
            (*v70)(v68, v74);
            goto LABEL_40;
          }

          v52 = sub_222C4();

          if (v52)
          {
            goto LABEL_35;
          }

          v10 = v84;
          (*v78)(v84, v82);
        }

        else
        {

          (*v78)(v10, v82);
        }

LABEL_41:
        if (v83 == ++v17)
        {
          return;
        }
      }
    }

    __break(1u);
  }
}

void sub_12B54(char *a1)
{
  v2 = sub_21EE4();
  v3 = [a1 valueForKey:v2];

  if (v3)
  {
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v103 = 0u;
    v104 = 0u;
  }

  v105[0] = v103;
  v105[1] = v104;
  if (!*(&v104 + 1))
  {
    sub_8F6C(v105, &qword_31610, &qword_23080);
    return;
  }

  sub_7E80(&qword_31618, &unk_22C50);
  if (swift_dynamicCast())
  {
    v91 = v102[1];
    v4 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietySpecifiers;
    swift_beginAccess();
    v5 = *&a1[v4];
    v98 = sub_1EBC4(v5);
    v6 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyNameToLocale;
    v101 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription;

    v95 = v6;
    swift_beginAccess();
    v93 = 0;
    v7 = 0;
    v100 = a1;
    while (1)
    {
      for (i = v7; ; ++i)
      {
        if (v98 == i)
        {

          if (!v93)
          {

            if (qword_31548 != -1)
            {
              goto LABEL_108;
            }

            goto LABEL_83;
          }

          v30 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup;
          v31 = *&a1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup];
          if (v31)
          {
            v32 = sub_21EF4();
            sub_1E79C(v93, v32, v33, v31);
            v34 = *&a1[v101];
            v90 = v30;
            if (v34)
            {
              v35 = v34;
              sub_EF18();

              swift_beginAccess();

              v36 = sub_219D8();

              v37 = *&a1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers];
              v38 = sub_1EBC4(v37);
              v94 = v37 & 0xFFFFFFFFFFFFFF8;
              v96 = v37 & 0xC000000000000001;
              v97 = v37;

              v92 = 0;
              v39 = 0;
              v99 = -v38;
              while (2)
              {
                v40 = v39 + 4;
LABEL_43:
                if (v99 + v40 == 4)
                {

                  goto LABEL_86;
                }

                v41 = v40 - 4;
                if (v96)
                {
                  v42 = sub_221D4();
                }

                else
                {
                  if (v41 >= *(v94 + 16))
                  {
                    goto LABEL_106;
                  }

                  v42 = *(v97 + 8 * v40);
                }

                v43 = v42;
                v39 = v40 - 3;
                if (__OFADD__(v41, 1))
                {
                  goto LABEL_105;
                }

                if (v36)
                {
                  if ((v36 & 0xC000000000000001) != 0)
                  {

                    v44 = sub_221D4();
                  }

                  else
                  {
                    if (v41 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
                    {
                      goto LABEL_107;
                    }

                    v44 = *(v36 + 8 * v40);
                  }

                  v45 = v44;
                  v46 = sub_21DF4();
                  v48 = v47;

                  v49 = *&v100[v101];
                  if (!v49)
                  {
                    v50 = v44;
                    if (!v48)
                    {
                      goto LABEL_72;
                    }

                    goto LABEL_66;
                  }
                }

                else
                {
                  v51 = a1;
                  v44 = 0;
                  v48 = 0;
                  v46 = 0;
                  v50 = 0;
                  v49 = *&v51[v101];
                  if (!v49)
                  {
                    goto LABEL_72;
                  }
                }

                v52 = v49;
                v53 = sub_21D64();
                v55 = v54;

                if (v48)
                {
                  if (!v55)
                  {
                    goto LABEL_66;
                  }

                  if (v46 == v53 && v48 == v55)
                  {

LABEL_71:
                    v50 = v44;
LABEL_72:
                    if (qword_31548 != -1)
                    {
                      swift_once();
                    }

                    v58 = sub_21E64();
                    sub_87F8(v58, qword_31EE0);
                    v59 = v50;
                    v60 = sub_21E54();
                    v61 = sub_220B4();

                    if (os_log_type_enabled(v60, v61))
                    {
                      v62 = swift_slowAlloc();
                      v63 = swift_slowAlloc();
                      v102[0] = v63;
                      *v62 = 136315138;
                      if (v50)
                      {
                        v64 = v63;
                        sub_21DF4();
                      }

                      else
                      {
                        v64 = v63;
                      }

                      sub_7E80(&qword_318A8, &unk_22FC8);
                      v65 = sub_21F14();
                      v67 = sub_E6C0(v65, v66, v102);

                      *(v62 + 4) = v67;
                      _os_log_impl(&dword_0, v60, v61, "#ReadingVoiceListController found match for %s", v62, 0xCu);
                      sub_91DC(v64);
                    }

                    else
                    {
                    }

                    v92 = v43;
                    a1 = v100;
                    continue;
                  }

                  v57 = sub_222C4();

                  if (v57)
                  {
                    goto LABEL_71;
                  }
                }

                else
                {
                  if (!v55)
                  {
                    goto LABEL_71;
                  }

LABEL_66:
                }

                break;
              }

              ++v40;
              a1 = v100;
              goto LABEL_43;
            }

            v92 = 0;
LABEL_86:
            v72 = sub_1361C();
            if (!v72)
            {

              if (qword_31548 != -1)
              {
                swift_once();
              }

              v82 = sub_21E64();
              sub_87F8(v82, qword_31EE0);
              v83 = sub_21E54();
              v84 = sub_220A4();
              if (os_log_type_enabled(v83, v84))
              {
                v85 = swift_slowAlloc();
                *v85 = 0;
                _os_log_impl(&dword_0, v83, v84, "#ReadingVoiceListController unable to find variety specifier", v85, 2u);
              }

LABEL_101:
              return;
            }

            v73 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup;
            v74 = *&a1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup];
            if (v74)
            {
              v75 = v72;
              v76 = sub_21EF4();
              sub_1E79C(v75, v76, v77, v74);
              v78 = sub_1CAA8(v91);

              v79 = objc_allocWithZone(PSSpecifierUpdates);
              v80 = sub_1E448(v78);
              if (v80)
              {
                v69 = v80;
                [a1 reloadSpecifier:v93];
                [a1 reloadSpecifier:*&a1[v90]];
                [a1 reloadSpecifier:v75];
                v81 = *&a1[v73];
                [a1 reloadSpecifier:v81];

                goto LABEL_90;
              }

              if (qword_31548 != -1)
              {
                swift_once();
              }

              v86 = sub_21E64();
              sub_87F8(v86, qword_31EE0);
              v87 = sub_21E54();
              v88 = sub_220A4();
              if (os_log_type_enabled(v87, v88))
              {
                v89 = swift_slowAlloc();
                *v89 = 0;
                _os_log_impl(&dword_0, v87, v88, "#MessagingWithSiriController handleURL failed to get updates", v89, 2u);
              }

              goto LABEL_101;
            }
          }

          else
          {
LABEL_110:
            __break(1u);
          }

          __break(1u);
          return;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = sub_221D4();
        }

        else
        {
          if (i >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_104;
          }

          v9 = *(v5 + 8 * i + 32);
        }

        v10 = v9;
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
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
          swift_once();
LABEL_83:
          v68 = sub_21E64();
          sub_87F8(v68, qword_31EE0);
          v69 = sub_21E54();
          v70 = sub_220A4();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            *v71 = 0;
            _os_log_impl(&dword_0, v69, v70, "#ReadingVoiceListController unable to find variety specifier", v71, 2u);
          }

LABEL_90:

          return;
        }

        v11 = sub_1AE44(v9);
        if (!v12)
        {
          __break(1u);
          goto LABEL_110;
        }

        v13 = v12;
        v14 = *&a1[v95];
        if (*(v14 + 16))
        {
          v15 = v11;

          v16 = sub_214F4(v15, v13);
          v18 = v17;

          if (v18)
          {
            v19 = (*(v14 + 56) + 16 * v16);
            v20 = *v19;
            v21 = v19[1];
          }

          else
          {
            v20 = 0;
            v21 = 0;
          }
        }

        else
        {
          v20 = 0;
          v21 = 0;
        }

        v22 = *&a1[v101];
        if (!v22)
        {
          if (!v21)
          {
            goto LABEL_36;
          }

LABEL_29:

          continue;
        }

        v23 = v22;
        sub_EF18();
        v25 = v24;
        v27 = v26;

        if (!v21)
        {
          a1 = v100;
          if (!v27)
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }

        a1 = v100;
        if (!v27)
        {
          goto LABEL_29;
        }

        if (v20 == v25 && v21 == v27)
        {
          break;
        }

        v29 = sub_222C4();

        if (v29)
        {
          goto LABEL_36;
        }

LABEL_32:
      }

LABEL_36:

      v93 = v10;
    }
  }
}

id sub_1361C()
{
  v37 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription;
  v3 = *(v0 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription);
  if (!v3)
  {
    return 0;
  }

  v4 = v0;
  v5 = v3;
  sub_EF18();

  sub_C45C(v4 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap);

  v6 = sub_219D8();

  v7 = *(v4 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers);
  v8 = sub_1EBC4(v7);
  v34 = v7 & 0xFFFFFFFFFFFFFF8;
  v35 = v7 & 0xC000000000000001;
  v38 = v7;

  v36 = -v8;
  for (i = 4; ; ++i)
  {
    if (v36 + i == 4)
    {

      return 0;
    }

    v10 = i - 4;
    if (v35)
    {
      v11 = sub_221D4();
    }

    else
    {
      if (v10 >= *(v34 + 16))
      {
        goto LABEL_48;
      }

      v11 = *(v38 + 8 * i);
    }

    v2 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v6)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {

        v1 = sub_221D4();
      }

      else
      {
        if (v10 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_49;
        }

        v1 = *(v6 + 8 * i);
      }

      v12 = v1;
      v13 = sub_21DF4();
      v15 = v14;

      v16 = *(v4 + v37);
      if (!v16)
      {
        v17 = v1;
        if (!v15)
        {
          goto LABEL_38;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v1 = 0;
      v15 = 0;
      v13 = 0;
      v17 = 0;
      v16 = *(v4 + v37);
      if (!v16)
      {
        goto LABEL_38;
      }
    }

    v18 = v2;
    v19 = v4;
    v2 = v16;
    v20 = sub_21D64();
    v22 = v21;

    if (!v15)
    {
      break;
    }

    if (v22)
    {
      v23 = v13 == v20 && v15 == v22;
      v2 = v18;
      if (v23)
      {

LABEL_36:

        goto LABEL_39;
      }

      v24 = sub_222C4();

      if (v24)
      {

        goto LABEL_36;
      }

      goto LABEL_26;
    }

    v4 = v19;
    v2 = v18;
LABEL_28:

LABEL_29:
    ;
  }

  if (v22)
  {

LABEL_26:
    v4 = v19;
    goto LABEL_29;
  }

  v17 = v1;
  v2 = v18;
LABEL_38:

  v1 = v17;
LABEL_39:
  if (qword_31548 == -1)
  {
    goto LABEL_40;
  }

LABEL_50:
  sub_A42C();
  swift_once();
LABEL_40:
  v25 = sub_21E64();
  sub_9444(v25, qword_31EE0);
  v26 = v1;
  v27 = sub_21E54();
  v28 = sub_220B4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = sub_94C8();
    v30 = sub_94F8();
    v39 = v30;
    *v29 = 136315138;
    if (v1)
    {
      sub_21DF4();
    }

    else
    {
      sub_17764();
    }

    sub_7E80(&qword_318A8, &unk_22FC8);
    v31 = sub_21F14();
    sub_E6C0(v31, v32, &v39);
    sub_17738();

    *(v29 + 4) = v1;
    _os_log_impl(&dword_0, v27, v28, "#ReadingVoiceListController found match for %s", v29, 0xCu);
    sub_91DC(v30);
    sub_9474(v30);
    sub_1758C();
  }

  else
  {
  }

  return v2;
}

void sub_13A54(uint64_t a1)
{
  v2 = v1;
  isa = sub_21CA4().super.isa;
  v156.receiver = v1;
  v156.super_class = type metadata accessor for ReadingVoiceListController();
  objc_msgSendSuper2(&v156, "tableView:didSelectRowAtIndexPath:", a1, isa);

  v5 = sub_21CA4().super.isa;
  v6 = [v1 specifierAtIndexPath:v5];

  if (!v6)
  {
    goto LABEL_86;
  }

  v7 = v6;
  v8 = sub_1719C(v7);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v8;
  v11 = v9;
  v12 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyNameToLocale;
  sub_C45C(&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyNameToLocale]);
  v149 = v12;
  v13 = *&v2[v12];

  v14 = sub_1ED50(v10, v11, v13);
  v16 = v15;

  v150 = v16;
  if (!v16)
  {

LABEL_7:
    v24 = sub_1719C(v7);
    if (!v25)
    {
      goto LABEL_86;
    }

    v26 = v24;
    v27 = v25;
    v28 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceDisplayStringToVoice;
    sub_C45C(&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceDisplayStringToVoice]);
    v29 = *&v2[v28];

    v30 = sub_1EDFC(v26, v27, v29);

    if (!v30)
    {
      goto LABEL_86;
    }

    v31 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale];
    if (v31)
    {
      v32 = v31;
      sub_10294();
      sub_D194(v33, v34);

      if (qword_31518 != -1)
      {
        sub_EDD4(&qword_31518);
      }

      sub_C45C(&static MessagesSettingsUtils.ttsDownloader);

      sub_21DF4();
      v36 = v35;
      v37 = sub_17764();
      sub_A6DC(v37, v38, v39, v36);

      v40 = [v30 primaryLanguage];
      sub_21EF4();

      sub_21DF4();
      sub_17644();
      v41 = objc_allocWithZone(sub_21D94());
      v42 = sub_21D74();
      v43 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription];
      *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription] = v42;

      v44 = [v30 primaryLanguage];
      v45 = sub_21EF4();
      v47 = v46;

      v48 = sub_21DF4();
      sub_14A64(v45, v47, v48, v49);

      v50 = sub_951C();
      v51 = [v2 valueForKey:v50];

      if (v51)
      {
        sub_22124();
        swift_unknownObjectRelease();
      }

      else
      {
        v152 = 0u;
        v153 = 0u;
      }

      v154 = v152;
      v155 = v153;
      if (!*(&v153 + 1))
      {

        sub_8F6C(&v154, &qword_31610, &qword_23080);
        goto LABEL_86;
      }

      sub_7E80(&qword_31618, &unk_22C50);
      if (swift_dynamicCast())
      {

        sub_10294();
        sub_17644();
        sub_C45C(&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap]);

        sub_1765C();
        sub_219D8();
        sub_176BC();

        if (v51)
        {
          sub_1180C(v51);

          [v2 reloadSpecifiers];
        }
      }
    }

LABEL_86:
    if (qword_31548 != -1)
    {
      sub_A42C();
      swift_once();
    }

    v115 = sub_21E64();
    sub_9444(v115, qword_31EE0);
    v60 = v6;
    v7 = sub_21E54();
    v116 = sub_220B4();

    if (os_log_type_enabled(v7, v116))
    {
      v117 = sub_94C8();
      v118 = sub_9634();
      *v117 = 138412290;
      *(v117 + 4) = v60;
      *v118 = v6;
      v119 = v60;
      sub_177EC(&dword_0, v7, v116, "#ListOfLanguagesController selected %@");
      sub_8F6C(v118, &qword_31680, &qword_22C90);
      sub_93D4();
      sub_9474(v117);
      v60 = v7;
      v7 = v119;
    }

    goto LABEL_90;
  }

  v17 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale;
  v18 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale];
  v144 = v6;
  if (v18)
  {
    v19 = v18;
    sub_10294();
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_D194(v21, v23);

  v52 = sub_8AF4(0, &qword_315E8, NSLocale_ptr);

  v53 = sub_17804(v14, v150);
  v54 = *&v2[v17];
  *&v2[v17] = v53;

  v55 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap;
  sub_C45C(&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap]);

  sub_219D8();
  sub_95A4();

  if (v52)
  {
    if (sub_1EBC4(v52))
    {
      sub_1EBCC();
      if ((v52 & 0xC000000000000001) != 0)
      {
        sub_221D4();
      }

      else
      {
        v56 = *(v52 + 32);
      }

      sub_176BC();
      sub_21DF4();
    }

    else
    {
    }
  }

  v57 = objc_allocWithZone(sub_21D94());

  v58 = sub_21D74();
  v59 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription];
  v148 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription;
  *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription] = v58;
  v60 = v58;

  if (!v60)
  {
LABEL_28:

    if (qword_31548 != -1)
    {
      goto LABEL_110;
    }

    goto LABEL_29;
  }

  v61 = sub_21D64();
  if (!v62)
  {

    goto LABEL_28;
  }

  v63 = v61;
  v64 = v62;
  if (qword_31518 != -1)
  {
    sub_EDD4(&qword_31518);
  }

  sub_C45C(&static MessagesSettingsUtils.ttsDownloader);

  v65 = sub_17764();
  sub_A6DC(v65, v66, v63, v64);

  v143 = v64;
  sub_14A64(v14, v150, v63, v64);
  v67 = sub_951C();
  v68 = [v2 valueForKey:v67];

  if (v68)
  {
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v152 = 0u;
    v153 = 0u;
  }

  v154 = v152;
  v155 = v153;
  if (!*(&v153 + 1))
  {

    sub_8F6C(&v154, &qword_31610, &qword_23080);
LABEL_85:
    v6 = v144;
    goto LABEL_86;
  }

  sub_7E80(&qword_31618, &unk_22C50);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_84:

    goto LABEL_85;
  }

  v72 = *&v2[v17];
  if (!v72)
  {

    goto LABEL_84;
  }

  v73 = v72;
  sub_10294();
  sub_17644();
  v74 = *&v2[v55];

  sub_1765C();
  sub_219D8();
  sub_176BC();

  v141 = v73;
  v75 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietySpecifiers;
  sub_C45C(&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietySpecifiers]);
  v146 = *&v2[v75];
  v147 = sub_1EBC4(v146);

  v142 = 0;
  v76 = 0;
  v145 = v60;
  while (1)
  {
    if (v147 == v76)
    {

      if (!v142)
      {

        if (qword_31548 != -1)
        {
          sub_A42C();
          swift_once();
        }

        v120 = sub_21E64();
        sub_9444(v120, qword_31EE0);
        v121 = sub_21E54();
        v122 = sub_220A4();
        if (sub_17668(v122))
        {
          v123 = sub_94E0();
          sub_176B0(v123);
          sub_17600();
          _os_log_impl(v124, v125, v126, v127, v128, 2u);
          sub_93D4();
        }

        goto LABEL_101;
      }

      v95 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup];
      if (!v95)
      {
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      sub_21EF4();
      sub_93C8();
      sub_1E79C(v142, v96, v97, v95);
      sub_1CAA8(v151);
      v98 = objc_allocWithZone(PSSpecifierUpdates);
      v99 = sub_95A4();
      v100 = sub_1E448(v99);
      v6 = v144;
      if (v100)
      {

        v101 = sub_1180C(v143);
        sub_1CAA8(v151);
        v102 = objc_allocWithZone(PSSpecifierUpdates);
        v103 = sub_95A4();
        v104 = sub_1E448(v103);
        if (v104)
        {
          v105 = v104;
          v106 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers;

          v108 = sub_1CAA8(v107);

          sub_1720C(v108, v105);
          *&v2[v106] = v101;

          v109 = sub_1CAA8(v101);
          sub_17274(v109, *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup], v105);
          v110 = [v105 context];
          if (!v110)
          {
LABEL_114:
            __break(1u);
            return;
          }

          v111 = v110;

          [v111 setAnimated:1];

          v112 = sub_1EA3C(v105);
          if (v112 && (v113 = sub_1C99C(v112), , v113))
          {

            v114 = v141;
          }

          else
          {
            v114 = v141;
            v113 = v151;
          }

          v138 = sub_1CAA8(v113);

          sub_1E9CC(v138, v2);
          [v2 reloadSpecifiers];

          goto LABEL_86;
        }

        v60 = v145;
        if (qword_31548 != -1)
        {
          sub_A42C();
          swift_once();
        }

        v139 = sub_21E64();
        sub_9444(v139, qword_31EE0);
        v130 = sub_21E54();
        v140 = sub_220A4();
        if (!sub_17668(v140))
        {
          goto LABEL_100;
        }
      }

      else
      {

        if (qword_31548 != -1)
        {
          sub_A42C();
          swift_once();
        }

        v129 = sub_21E64();
        sub_9444(v129, qword_31EE0);
        v130 = sub_21E54();
        v131 = sub_220A4();
        v60 = v145;
        if (!sub_17668(v131))
        {
          goto LABEL_100;
        }
      }

      v132 = sub_94E0();
      sub_176B0(v132);
      sub_17600();
      _os_log_impl(v133, v134, v135, v136, v137, 2u);
      sub_93D4();
LABEL_100:

LABEL_101:
      goto LABEL_90;
    }

    if ((v146 & 0xC000000000000001) != 0)
    {
      v77 = sub_221D4();
    }

    else
    {
      if (v76 >= *(&dword_10 + (v146 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_109;
      }

      v77 = *(v146 + 8 * v76 + 32);
    }

    v78 = v77;
    if (__OFADD__(v76, 1))
    {
      break;
    }

    sub_1AE44(v77);
    if (!v79)
    {
      __break(1u);
      goto LABEL_113;
    }

    v80 = v79;
    v81 = *&v2[v149];
    if (*(v81 + 16))
    {
      sub_17738();

      v82 = sub_214F4(v74, v80);
      v84 = v83;

      if (v84)
      {
        v85 = (*(v81 + 56) + 16 * v82);
        v74 = *v85;
        v86 = v85[1];
      }

      else
      {
        v74 = 0;
        v86 = 0;
      }
    }

    else
    {
      v74 = 0;
      v86 = 0;
    }

    v87 = *&v2[v148];
    if (!v87)
    {
      if (!v86)
      {
        goto LABEL_63;
      }

LABEL_57:

      goto LABEL_61;
    }

    v88 = v87;
    sub_EF18();
    v90 = v89;
    v92 = v91;

    if (!v86)
    {
      if (!v92)
      {
        goto LABEL_63;
      }

      goto LABEL_60;
    }

    if (!v92)
    {
      goto LABEL_57;
    }

    if (v74 == v90 && v86 == v92)
    {

      goto LABEL_63;
    }

    v94 = sub_222C4();

    if (v94)
    {
LABEL_63:

      v142 = v78;
      ++v76;
      v60 = v145;
    }

    else
    {
LABEL_60:

LABEL_61:
      ++v76;
      v60 = v145;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  sub_A42C();
  swift_once();
LABEL_29:
  v69 = sub_21E64();
  sub_9444(v69, qword_31EE0);
  v60 = sub_21E54();
  v70 = sub_220A4();
  if (os_log_type_enabled(v60, v70))
  {
    v71 = sub_94E0();
    *v71 = 0;
    _os_log_impl(&dword_0, v60, v70, "#ListOfLanguagesController could not get a name from the current voice subscription", v71, 2u);
    sub_9474(v71);
  }

LABEL_90:
}

void sub_14A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_allocWithZone(sub_21D94());

  sub_17684();
  v4 = sub_21D74();
  v5 = objc_allocWithZone(sub_21D54());
  v6 = v4;
  v7 = sub_21D44();
  if (qword_31520 != -1)
  {
    sub_EDB4(&qword_31520);
  }

  sub_C45C(&static MessagesSettingsUtils.daemonSession);
  v8 = static MessagesSettingsUtils.daemonSession;
  sub_21CF4();
}

void sub_14B70()
{
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v0 = sub_21E64();
  sub_87F8(v0, qword_31EE0);
  oslog = sub_21E54();
  v1 = sub_220B4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "#ListOfLanguagesController preview voice finished", v2, 2u);
  }
}

void sub_14C58()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    sub_10294();
    v4 = sub_17010(v2, v3, v1);

    if (v4)
    {
      sub_10294();
      v5 = sub_219D8();

      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      v120 = v6[2];
      if (!v120)
      {

        v10 = &_swiftEmptyArrayStorage;
        v9 = &_swiftEmptyArrayStorage;
LABEL_73:
        if (qword_31548 != -1)
        {
          goto LABEL_118;
        }

        while (1)
        {
          v66 = sub_21E64();
          sub_9444(v66, qword_31EE0);

          v67 = sub_21E54();
          sub_22094();

          v68 = &loc_22000;
          v136 = v9;
          if (sub_177BC())
          {
            v69 = sub_94C8();
            v70 = sub_94F8();
            v137[0] = v70;
            *v69 = 136315138;
            sub_21D34();
            v71 = sub_21F94();
            v73 = sub_E6C0(v71, v72, v137);

            *(v69 + 4) = v73;
            sub_17650();
            _os_log_impl(v74, v75, v76, v77, v69, 0xCu);
            sub_91DC(v70);
            sub_93D4();
            sub_9474(v69);
          }

          v78 = sub_21E54();
          sub_22094();

          if (sub_177BC())
          {
            v79 = sub_94C8();
            v80 = sub_94F8();
            v137[0] = v80;
            *v79 = 136315138;
            sub_21E14();
            v81 = sub_21F94();
            v83 = sub_E6C0(v81, v82, v137);

            *(v79 + 4) = v83;
            sub_17650();
            _os_log_impl(v84, v85, v86, v87, v79, 0xCu);
            sub_91DC(v80);
            sub_93D4();
            sub_9474(v79);
          }

          v88 = sub_1EBC4(v10);
          v133 = v10;
          if (v88)
          {
            v89 = v88;
            v137[0] = &_swiftEmptyArrayStorage;
            sub_1E578(0, v88 & ~(v88 >> 63), 0);
            if (v89 < 0)
            {
              __break(1u);
              goto LABEL_120;
            }

            v90 = 0;
            v9 = v137[0];
            v91 = v10 & 0xC000000000000001;
            do
            {
              if (v91)
              {
                v92 = sub_221D4();
              }

              else
              {
                v92 = *(v10 + 8 * v90 + 32);
              }

              v93 = v92;
              v94 = sub_21D24();
              v96 = v95;

              v137[0] = v9;
              v98 = *(v9 + 16);
              v97 = *(v9 + 24);
              if (v98 >= v97 >> 1)
              {
                sub_1E578((v97 > 1), v98 + 1, 1);
                v9 = v137[0];
              }

              ++v90;
              *(v9 + 16) = v98 + 1;
              v99 = v9 + 16 * v98;
              *(v99 + 32) = v94;
              *(v99 + 40) = v96;
              v10 = v133;
            }

            while (v89 != v90);
            v68 = &loc_22000;
          }

          else
          {
            v9 = &_swiftEmptyArrayStorage;
          }

          v137[5] = &_swiftEmptyArrayStorage;
          v100 = sub_1EBC4(v136);
          v10 = 0;
          v124 = v68[368];
          while (1)
          {
            if (v100 == v10)
            {

              return;
            }

            if ((v136 & 0xC000000000000001) != 0)
            {
              v101 = sub_221D4();
            }

            else
            {
              if (v10 >= *(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_105;
              }

              v101 = *(v136 + 8 * v10 + 32);
            }

            v102 = v101;
            v103 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            v137[0] = sub_21DF4();
            v137[1] = v104;
            __chkstk_darwin(v137[0]);
            v105 = sub_EFC8();

            if (v105)
            {
              v106 = v102;
              v107 = sub_21E54();
              v108 = sub_22094();

              if (os_log_type_enabled(v107, v108))
              {
                v121 = sub_94C8();
                v122 = sub_94F8();
                v137[0] = v122;
                *v121 = v124;
                v109 = v106;
                v119 = v108;
                v110 = [v109 description];
                v111 = sub_21EF4();
                v113 = v112;

                v114 = sub_E6C0(v111, v113, v137);

                *(v121 + 4) = v114;
                _os_log_impl(&dword_0, v107, v119, "#ReadingVoiceListController supported voice %s", v121, 0xCu);
                sub_91DC(v122);
                sub_9474(v122);
                sub_9474(v121);
              }

              sub_21F64();
              sub_17634();
              if (v116)
              {
                sub_17624(v115);
                sub_21FA4();
              }

              sub_21FD4();
              v10 = v103;
            }

            else
            {

              ++v10;
            }
          }

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
          sub_A42C();
          swift_once();
        }
      }

      v7 = sub_21E14();
      v8 = 0;
      v118 = (v6 + 4);
      v9 = &_swiftEmptyArrayStorage;
      v10 = &_swiftEmptyArrayStorage;
      v117 = v7;
      while (1)
      {
        v11 = &v118[16 * v8];
        v13 = *v11;
        v12 = v11[1];

        v14 = [v7 assistantVoiceMaps];
        v15 = sub_21DE4();

        if (*(v15 + 16) && (v16 = sub_17684(), v18 = sub_214F4(v16, v17), (v19 & 1) != 0))
        {
          v20 = *(*(v15 + 56) + 8 * v18);
        }

        else
        {
          v20 = &_swiftEmptyArrayStorage;
        }

        v127 = v13;
        if (v20 >> 62)
        {
          v21 = sub_22274();
        }

        else
        {
          v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
        }

        v22 = v10 >> 62;
        v129 = v12;
        if (v10 >> 62)
        {
          v65 = v21;
          v23 = sub_22274();
          v21 = v65;
        }

        else
        {
          v23 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
        }

        v24 = v23 + v21;
        if (__OFADD__(v23, v21))
        {
          goto LABEL_106;
        }

        v125 = v21;
        v134 = v9;
        v123 = v8;
        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v22)
        {
          goto LABEL_22;
        }

LABEL_23:
        v10 = sub_221E4();
        v9 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
        v25 = *(v9 + 16);
        v26 = (*(v9 + 24) >> 1) - v25;
        v27 = v9 + 8 * v25;
        if (v20 >> 62)
        {
          v29 = sub_22274();
          if (!v29)
          {
LABEL_38:

            v37 = v127;
            v38 = v129;
            if (v125 > 0)
            {
              goto LABEL_107;
            }

            goto LABEL_39;
          }

          v30 = v29;
          v31 = sub_22274();
          if (v26 < v31)
          {
            goto LABEL_113;
          }

          if (v30 < 1)
          {
            goto LABEL_114;
          }

          v28 = v31;
          v131 = v10;
          sub_175E8();
          sub_173FC(&qword_31940, &qword_31938, &qword_23038, v32);
          for (i = 0; i != v30; ++i)
          {
            sub_7E80(&qword_31938, &qword_23038);
            v34 = sub_1EB64(v137, i, v20);
            v36 = *v35;
            v34(v137, 0);
            *(v27 + 32 + 8 * i) = v36;
          }

          v10 = v131;
          v7 = v117;
        }

        else
        {
          v28 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
          if (!v28)
          {
            goto LABEL_38;
          }

          if (v26 < v28)
          {
            goto LABEL_112;
          }

          sub_21D34();
          swift_arrayInitWithCopy();
        }

        v37 = v127;
        v38 = v129;
        if (v28 < v125)
        {
          goto LABEL_107;
        }

        if (v28 > 0)
        {
          v39 = *(v9 + 16);
          v40 = __OFADD__(v39, v28);
          v41 = v39 + v28;
          if (v40)
          {
            goto LABEL_110;
          }

          *(v9 + 16) = v41;
        }

LABEL_39:
        sub_1579C(v37, v38);
        v43 = v42;

        if (v43 >> 62)
        {
          v44 = sub_22274();
        }

        else
        {
          v44 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
        }

        v9 = v134;
        v45 = v134 >> 62;
        if (v134 >> 62)
        {
          v46 = sub_22274();
        }

        else
        {
          v46 = *(&dword_10 + (v134 & 0xFFFFFFFFFFFFFF8));
        }

        v47 = v46 + v44;
        if (__OFADD__(v46, v44))
        {
          goto LABEL_108;
        }

        v130 = v44;
        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v45)
          {
            v48 = v134 & 0xFFFFFFFFFFFFFF8;
            if (v47 <= *(&dword_18 + (v134 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }

LABEL_49:
          sub_22274();
          goto LABEL_50;
        }

        if (v45)
        {
          goto LABEL_49;
        }

LABEL_50:
        v9 = sub_221E4();
        v48 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_51:
        v49 = *(v48 + 16);
        v50 = (*(v48 + 24) >> 1) - v49;
        v51 = v48 + 8 * v49;
        v128 = v48;
        if (v43 >> 62)
        {
          v53 = sub_22274();
          if (v53)
          {
            v54 = v53;
            v55 = sub_22274();
            if (v50 < v55)
            {
              goto LABEL_115;
            }

            if (v54 < 1)
            {
              goto LABEL_117;
            }

            v126 = v55;
            v132 = v10;
            v135 = v9;
            v56 = v51 + 32;
            sub_175E8();
            sub_173FC(&qword_31930, &qword_31928, &qword_23030, v57);
            for (j = 0; j != v54; ++j)
            {
              sub_7E80(&qword_31928, &qword_23030);
              v59 = sub_1EAFC(v137, j, v43);
              v61 = *v60;
              v59(v137, 0);
              *(v56 + 8 * j) = v61;
            }

            v10 = v132;
            v9 = v135;
            v7 = v117;
            v52 = v126;
            goto LABEL_61;
          }
        }

        else
        {
          v52 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
          if (v52)
          {
            if (v50 < v52)
            {
              goto LABEL_116;
            }

            swift_arrayInitWithCopy();
LABEL_61:

            v62 = v123;
            if (v52 < v130)
            {
              goto LABEL_109;
            }

            if (v52 > 0)
            {
              v63 = *(v128 + 16);
              v40 = __OFADD__(v63, v52);
              v64 = v63 + v52;
              if (v40)
              {
                goto LABEL_111;
              }

              *(v128 + 16) = v64;
            }

            goto LABEL_66;
          }
        }

        v62 = v123;
        if (v130 > 0)
        {
          goto LABEL_109;
        }

LABEL_66:
        v8 = v62 + 1;
        if (v8 == v120)
        {

          goto LABEL_73;
        }
      }

      if (!v22)
      {
        v9 = v10 & 0xFFFFFFFFFFFFFF8;
        if (v24 <= *(&dword_18 + (v10 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_22:
      sub_22274();
      goto LABEL_23;
    }
  }

  else
  {
LABEL_120:
    __break(1u);
  }

  __break(1u);
}